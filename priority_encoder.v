`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 14:54:41
// Design Name: 
// Module Name: priority_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder(
    input [11:0] in,
    output reg [3:0] out
    );
    
    always @*
        casez (in)
            12'b0000_0000_0001: out[3:0] = 4'b0000;
            12'b0000_0000_001?: out[3:0] = 4'b0001;
            12'b0000_0000_01??: out[3:0] = 4'b0010;
            12'b0000_0000_1???: out[3:0] = 4'b0011;
            12'b0000_0001_????: out[3:0] = 4'b0100;
            12'b0000_001?_????: out[3:0] = 4'b0101;
            12'b0000_01??_????: out[3:0] = 4'b0110;
            12'b0000_1???_????: out[3:0] = 4'b0111;
            12'b0001_????_????: out[3:0] = 4'b1000;
            12'b001?_????_????: out[3:0] = 4'b1001;
            12'b01??_????_????: out[3:0] = 4'b1010;
            12'b1???_????_????: out[3:0] = 4'b1011;
            default: out[3:0] = 4'b1111;
        endcase
endmodule
