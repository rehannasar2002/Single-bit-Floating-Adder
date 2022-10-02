`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    08:32:39 01/06/2022
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
	 
wire w1,w2,w3;
xor(w1,A,B);
xor(S,w1,Cin);
and(w2,w1,Cin);
and(w3,A,B);
or(Cout,w3,w2);

endmodule

