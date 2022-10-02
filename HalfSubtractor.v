`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    08:50:01 01/06/2022
// Design Name: 
// Module Name:    HalfSubtractor 
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
module HalfSubtractor(
    input A,
    input B,
    output D,
    output Bout
    );
	 
xor(D,A,B);
and(Bout,~A,B);

endmodule
