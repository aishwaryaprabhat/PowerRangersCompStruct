/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boole8_3 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] boole
  );
  
  
  
  integer i;
  
  integer ab;
  
  always @* begin
    boole = 1'h0;
    for (i = 1'h0; i < 8; i = i + 1) begin
      ab = {a[(i)*1+0-:1], b[(i)*1+0-:1]};
      
      case (ab)
        2'h1: begin
          boole[(i)*1+0-:1] = alufn[0+0-:1];
        end
        2'h2: begin
          boole[(i)*1+0-:1] = alufn[1+0-:1];
        end
        2'h2: begin
          boole[(i)*1+0-:1] = alufn[2+0-:1];
        end
        2'h3: begin
          boole[(i)*1+0-:1] = alufn[3+0-:1];
        end
      endcase
    end
  end
endmodule
