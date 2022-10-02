`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    10:47:34 01/06/2022 
// Design Name: 
// Module Name:    ControlledIncrementor 
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
module ControlledIncrementor(
    input A,
    input [7:0] Z,
    output [7:0] Out
    );
	 
wire [7:0]w;
wire [7:0]Cin;

assign w =(A==1'b1)?1:0;

HalfAdder H(Z[0],w[0],Out[0],Cin[0]);

genvar j;
generate 
 begin : generate_block_identifier
  for(j=1;j<8;j=j+1)
   begin : generate_block_identifier
   FullAdder F1(Z[j],w[j],Cin[j-1],Out[j],Cin[j]);
   end
 end
endgenerate

endmodule  
