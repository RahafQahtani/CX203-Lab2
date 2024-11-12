`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 03:46:32 PM
// Design Name: 
// Module Name: halfadder
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


module halfadder(

input logic [1:0] SW,
output logic [1:0] LD
);
logic a,b,s,c;

assign a=SW[0];
assign b=SW[1];
assign s=LD[0];
assign c=LD[1];

and carry(c,a,b );
xor sum (s,a,b);

endmodule
