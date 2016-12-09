/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module keypad_reader_4 (
    input clk,
    input rst,
    input [3:0] in,
    output reg [3:0] out,
    output reg [7:0] key
  );
  
  
  
  wire [2-1:0] M_keycount_value;
  counter_20 keycount (
    .clk(clk),
    .rst(rst),
    .value(M_keycount_value)
  );
  
  wire [4-1:0] M_dec_out;
  reg [2-1:0] M_dec_in;
  decoder_16 dec (
    .in(M_dec_in),
    .out(M_dec_out)
  );
  
  always @* begin
    M_dec_in = M_keycount_value;
    out = M_dec_out;
    if (!(in == 4'h0)) begin
      key = {in, M_dec_out};
    end else begin
      key = 8'h00;
    end
  end
endmodule
