`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 16:41:14
// Design Name: 
// Module Name: top_tb
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


module top_tb;
    reg [11:0] req;
    wire [3:0] first, second;
    
    top uut(.req(req), .first(first), .second(second));
    
    initial begin
        req = 12'b0000_0000_0000;
        #100 req = 12'b0010_0000_1000;
        #100 req = 12'b0100_0001_0000;
        #100 req = 12'b0000_0000_0001;
        #100 req = 12'b0000_0000_0101;
        #100 req = 12'b0000_0000_1010;
        #100 req = 12'b0000_0000_0110;
        #100 req = 12'b0000_0000_1001;
        #100 req = 12'b0110_0001_1111;
        #100 req = 12'b1111_1111_1111;
    end    
endmodule
