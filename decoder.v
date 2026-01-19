`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 14:54:41
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [3:0] in,
    output reg [11:0] out
    );
    
    always @*
        case (in)
            4'b0000: out[11:0] = 12'b0000_0000_0001;
            4'b0001: out[11:0] = 12'b0000_0000_0010;
            4'b0010: out[11:0] = 12'b0000_0000_0100;
            4'b0011: out[11:0] = 12'b0000_0000_1000;
            4'b0100: out[11:0] = 12'b0000_0001_0000;
            4'b0101: out[11:0] = 12'b0000_0010_0000;
            4'b0110: out[11:0] = 12'b0000_0100_0000;
            4'b0111: out[11:0] = 12'b0000_1000_0000;
            4'b1000: out[11:0] = 12'b0001_0000_0000;
            4'b1001: out[11:0] = 12'b0010_0000_0000;
            4'b1010: out[11:0] = 12'b0100_0000_0000;
            4'b1011: out[11:0] = 12'b1000_0000_0000;
            default: out[11:0] = 12'b0000_0000_0000;
        endcase
endmodule
