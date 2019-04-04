#include "hls_stream.h"
#include "ap_int.h"

struct ap_axis{
    ap_uint<64> data;
    ap_uint<1> last;
    ap_uint<8> keep;
};

#define MODE_STREAM 0
#define MODE_NOT 1
#define MODE_WRITE_0 2
#define MODE_WRITE_1 3

void shell_test(
    long long* mem_0, // global memory pointer
    long long* mem_1,
    hls::stream<ap_axis>* stream_in,                
    hls::stream<ap_axis>* stream_out,
    volatile int mode,
    volatile int address
){

    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE axis port=stream_out
    #pragma HLS INTERFACE m_axi port=mem_0 depth=8
    #pragma HLS INTERFACE m_axi port=mem_1 depth=8
    #pragma HLS INTERFACE s_axilite port=mode bundle=ctrl_bus
    #pragma HLS INTERFACE s_axilite port=address bundle=ctrl_bus
    #pragma HLS INTERFACE ap_ctrl_none port=return

    ap_axis stream_packet;
    int mem_addr;
    int offset;

    switch(mode){
        case MODE_STREAM:{            
            stream_out->write(stream_in->read());
            break;
        }
        case MODE_NOT:{
        	stream_packet = stream_in->read();
        	stream_packet.data = ~stream_packet.data;
            stream_out->write(stream_packet);
            break;
        }
        case MODE_WRITE_0:{
            stream_packet = stream_in->read();
            mem_addr = stream_packet.data;
            offset = 0;
            while(!stream_packet.last){
                stream_packet = stream_in->read();
                mem_0[mem_addr + offset] = (long long) stream_packet.data;
                offset++;
            }
            break;
        }
        case MODE_WRITE_1:{
            stream_packet = stream_in->read();
            mem_addr = address;
            offset = 0;
            while(!stream_packet.last){
                stream_packet = stream_in->read();
                mem_1[mem_addr + offset] = (long long) stream_packet.data;
                offset++;
            }
            break;
        }
        default:{
            stream_out->write(stream_in->read());
            break;
        }
    }
}
