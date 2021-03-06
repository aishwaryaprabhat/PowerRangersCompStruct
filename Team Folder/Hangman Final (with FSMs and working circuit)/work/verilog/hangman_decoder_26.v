/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module hangdecoder_26 (
    input [2:0] in,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    
    case (in)
      1'h0: begin
        out = 8'h01;
      end
      1'h1: begin
        out = 8'h02;
      end
      2'h2: begin
        out = 8'h04;
      end
      2'h3: begin
        out = 8'h08;
      end
      3'h4: begin
        out = 8'h10;
      end
      3'h5: begin
        out = 8'h20;
      end
      3'h6: begin
        out = 8'h40;
      end
      3'h7: begin
        out = 8'h80;
      end
      default: begin
        out = 8'bxxxxxxxx;
      end
    endcase
  end
endmodule
