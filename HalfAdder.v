`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    08:31:06 01/06/2022
// Design Name: 
// Module Name:    HalfAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module HalfAdder(
    input A,
    input B,
    output S,
    output C
    );
	 
xor(S,A,B);
and(C,A,B);

endmodule

