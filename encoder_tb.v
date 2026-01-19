`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 15:17:31
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
    reg [11:0] in;
    wire [3:0] out;
    priority_encoder uut1(.in(in), .out(out));
    
    initial begin
        in = 12'b0000_0000_0001; #50;
        in = 12'b0000_0000_0010; #50;
        in = 12'b0000_0000_0111; #50;
        in = 12'b0000_0000_1110; #50;
        in = 12'b0000_0001_1101; #50;
        in = 12'b0000_0011_1100; #50;
        in = 12'b0000_0111_1011; #50;
        in = 12'b0000_1111_1010; #50;
        in = 12'b0001_1111_0001; #50;
        in = 12'b0011_1111_0100; #50;
        in = 12'b0110_1110_0111; #50;
        in = 12'b1011_1110_0110; #50;
    end
endmodule
