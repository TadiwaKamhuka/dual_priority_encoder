`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 14:54:41
// Design Name: 
// Module Name: top
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


module top(
    input [11:0] req,
    output [3:0] first, second
    );
    
    wire [11:0] dec_out, enc2_in;
    
    priority_encoder first_enc(.in(req), .out(first));
    decoder dec3to16(.in(first), .out(dec_out));
    
    assign enc2_in = req ^ dec_out;
    priority_encoder second_enc(.in(enc2_in), .out(second));
endmodule
