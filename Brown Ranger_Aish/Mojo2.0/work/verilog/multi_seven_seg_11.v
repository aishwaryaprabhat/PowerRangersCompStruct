/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DIGITS = 4
     DIV = 16
*/
module multi_seven_seg_11 (
    input clk,
    input rst,
    input [31:0] values,
    output reg [6:0] seg,
    output reg [3:0] sel
  );
  
  localparam DIGITS = 3'h4;
  localparam DIV = 5'h10;
  
  
  localparam DIGIT_BITS = 2'h2;
  
  wire [2-1:0] M_ctr_value;
  counter_16 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  
  wire [7-1:0] M_seg_dec_segs;
  reg [8-1:0] M_seg_dec_letter;
  seven_seg_17 seg_dec (
    .letter(M_seg_dec_letter),
    .segs(M_seg_dec_segs)
  );
  
  wire [4-1:0] M_dec_out;
  reg [2-1:0] M_dec_in;
  decoder_18 dec (
    .in(M_dec_in),
    .out(M_dec_out)
  );
  
  always @* begin
    M_seg_dec_letter = values[(M_ctr_value)*8+7-:8];
    seg = M_seg_dec_segs;
    M_dec_in = M_ctr_value;
    sel = M_dec_out;
  end
endmodule
