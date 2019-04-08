/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif
#include "netif/etharp.h"
#include "netif/xemacpsif.h"

#include "axis_dma_controller.h"
#include "platform.h"

int transfer_data() {
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
	xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

void
etharp_custom_input(struct netif *netif, struct eth_addr *ethaddr, struct pbuf *p)
{
  struct etharp_hdr *hdr;
  struct eth_hdr *ethhdr;
  /* these are aligned properly, whereas the ARP header fields might not be */
  ip_addr_t sipaddr, dipaddr;
  u8_t for_us;

  LWIP_ERROR("netif != NULL", (netif != NULL), return;);

  ethhdr = (struct eth_hdr *)p->payload;
  hdr = (struct etharp_hdr *)((u8_t*)ethhdr + SIZEOF_ETH_HDR);

  /* Copy struct ip_addr2 to aligned ip_addr, to support compilers without
   * structure packing (not using structure copy which breaks strict-aliasing rules). */
  IPADDR2_COPY(&sipaddr, &hdr->sipaddr);
  IPADDR2_COPY(&dipaddr, &hdr->dipaddr);

  for_us = 1;
  my_netif_list[0] = netif;

  /* this interface is not configured? */
//  if (ip_addr_isany(&netif->ip_addr)) {
//    for_us = 0;
//  } else {
//    /* ARP packet directed to us? */
//    for_us = (u8_t)ip_addr_cmp(&dipaddr, &(netif->ip_addr));
//  }

  /* now act on the message itself */
  switch (hdr->opcode) {
  case PP_HTONS(ARP_REPLY):
    /* ARP reply. We already updated the ARP cache earlier. */
    LWIP_DEBUGF(ETHARP_DEBUG | LWIP_DBG_TRACE, ("etharp_arp_input: incoming ARP reply\n"));
    break;
  default:
	  /* ARP request. If it asked for our address, we send out a
	   * reply. In any case, we time-stamp any existing ARP entry,
	   * and possiby send out an IP packet that was queued on it. */

	  LWIP_DEBUGF (ETHARP_DEBUG | LWIP_DBG_TRACE, ("etharp_arp_input: incoming ARP request\n"));
	  /* ARP request for our address? */
	  if (for_us) {

		LWIP_DEBUGF(ETHARP_DEBUG | LWIP_DBG_TRACE, ("etharp_arp_input: replying to ARP request for our IP address\n"));
		/* Re-use pbuf to send ARP reply.
		   Since we are re-using an existing pbuf, we can't call etharp_raw since
		   that would allocate a new pbuf. */
		hdr->opcode = htons(0x80cb);

//		IPADDR2_COPY(&hdr->dipaddr, &hdr->sipaddr);
//		IPADDR2_COPY(&hdr->sipaddr, &netif->ip_addr);

//		ETHADDR16_COPY(&hdr->dhwaddr, &hdr->shwaddr);
//  #if LWIP_AUTOIP
//		ETHADDR16_COPY(&ethhdr->dest, ethdst_hwaddr);
//  #else  /* LWIP_AUTOIP */
//		ETHADDR16_COPY(&ethhdr->dest, &hdr->shwaddr);
//  #endif /* LWIP_AUTOIP */
//		ETHADDR16_COPY(&hdr->shwaddr, ethaddr);
//		ETHADDR16_COPY(&ethhdr->src, ethaddr);

		/* hwtype, hwaddr_len, proto, protolen and the type in the ethernet header
		   are already correct, we tested that before */

		/* return ARP reply */
		axisDmaCtrl_sendPackets(p->payload, p->len);
//		netif->linkoutput(netif, p);
	  /* we are not configured? */
	  } else if (ip_addr_isany(&netif->ip_addr)) {
		/* { for_us == 0 and netif->ip_addr.addr == 0 } */
		LWIP_DEBUGF(ETHARP_DEBUG | LWIP_DBG_TRACE, ("etharp_arp_input: we are unconfigured, ARP request ignored.\n"));
	  /* request was not directed to us */
	  } else {
		/* { for_us == 0 and netif->ip_addr.addr != 0 } */
		LWIP_DEBUGF(ETHARP_DEBUG | LWIP_DBG_TRACE, ("etharp_arp_input: ARP request was not for us.\n"));
	  }
	  break;
  }
  /* free ARP packet */
  pbuf_free(p);
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{
	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

	axisDmaCtrl_sendPackets(p->payload, p->len);

	/* echo back the payload */
	/* in this case, we assume that the payload is < TCP_SND_BUF */
	if (tcp_sndbuf(tpcb) > p->len) {
//		while(rx_pkt_count <= prevReceived){};
//		err = tcp_write(tpcb, recv_data, p->len, 1);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");

	/* free the received pbuf */
	pbuf_free(p);

	return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	static int connection = 1;

	/* set the receive callback for this connection */
	tcp_recv(newpcb, recv_callback);

	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, (void*)(UINTPTR)connection);

	/* increment for subsequent accepted connections */
	connection++;

	return ERR_OK;
}

int start_application()
{
	struct tcp_pcb *pcb;
	err_t err;
	unsigned port = 7;

	/* create new TCP PCB structure */
	pcb_list[CURR_PCB_INDEX] = tcp_new();
	pcb = pcb_list[CURR_PCB_INDEX++];
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = tcp_bind(pcb, IP_ADDR_ANY, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);

	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* specify callback to use for incoming connections */
	tcp_accept(pcb, accept_callback);

	xil_printf("TCP echo server started @ port %d\n\r", port);

	return 0;
}
