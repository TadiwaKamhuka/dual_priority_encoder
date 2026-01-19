`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 15:04:21
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg [3:0] in;
    wire [11:0] out;
    decoder uut1(.in(in), .out(out));

    initial begin
        in = 4'b0000; #50;
        in = 4'b0001; #50;
        in = 4'b0010; #50;
        in = 4'b0011; #50;
        in = 4'b0100; #50;
        in = 4'b0101; #50;
        in = 4'b0110; #50;
        in = 4'b0111; #50;
        in = 4'b1000; #50;
        in = 4'b1001; #50;
        in = 4'b1010; #50;
        in = 4'b1011; #50;
        in = 4'b1100; #50;
        in = 4'b1101; #50;
        in = 4'b1110; #50;
        in = 4'b1111; #50;
    end
endmodule
