`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Create Date:    09:53:00 01/06/2022
// Design Name: 
// Module Name:    Mux24 
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
module Mux24(

    input [22:0] A,
    input [22:0] B,
    input S,
	 output [23:0] Out
    );
	 
genvar i;

generate
  for(i=0;i<23;i = i + 1)
    begin : generate_block_identifier
	 Mux M(A[i],B[i],S,Out[i]);
  end
endgenerate

assign Out[23]=1'b1;

endmodule
