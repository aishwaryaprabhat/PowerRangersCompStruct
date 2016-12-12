/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module seven_seg_16 (
    input [7:0] letter,
    output reg [6:0] segs
  );
  
  
  
  always @* begin
    
    case (letter)
      8'h88: begin
        segs = 7'h77;
      end
      8'h84: begin
        segs = 7'h79;
      end
      8'h82: begin
        segs = 7'h30;
      end
      8'h81: begin
        segs = 7'h3f;
      end
      8'h48: begin
        segs = 7'h3e;
      end
      8'h44: begin
        segs = 7'h7c;
      end
      8'h42: begin
        segs = 7'h39;
      end
      8'h41: begin
        segs = 7'h5e;
      end
      8'h28: begin
        segs = 7'h38;
      end
      8'h24: begin
        segs = 7'h3d;
      end
      8'h22: begin
        segs = 7'h74;
      end
      8'h21: begin
        segs = 7'h15;
      end
      8'h18: begin
        segs = 7'h37;
      end
      8'h14: begin
        segs = 7'h33;
      end
      8'h12: begin
        segs = 7'h6d;
      end
      8'h11: begin
        segs = 7'h78;
      end
      default: begin
        segs = 7'h08;
      end
    endcase
  end
endmodule
