/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module greeter_3 (
    input clk,
    input rst,
    input new_rx,
    input [7:0] rx_data,
    output reg new_tx,
    output reg [7:0] tx_data,
    input tx_busy
  );
  
  
  
  localparam NUM_LETTERS = 4'he;
  
  localparam IDLE_state = 1'd0;
  localparam GREET_state = 1'd1;
  
  reg M_state_d, M_state_q = IDLE_state;
  reg [3:0] M_count_d, M_count_q = 1'h0;
  
  wire [8-1:0] M_rom_letter;
  reg [4-1:0] M_rom_address;
  helloworld_ROM_8 rom (
    .address(M_rom_address),
    .letter(M_rom_letter)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_count_d = M_count_q;
    
    M_rom_address = M_count_q;
    tx_data = M_rom_letter;
    new_tx = 1'h0;
    
    case (M_state_q)
      IDLE_state: begin
        M_count_d = 1'h0;
        if (new_rx && rx_data == 7'h68) begin
          M_state_d = GREET_state;
        end
      end
      GREET_state: begin
        if (!tx_busy) begin
          M_count_d = M_count_q + 1'h1;
          new_tx = 1'h1;
          if (M_count_q == 5'h0d) begin
            M_state_d = IDLE_state;
          end
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
    
    M_count_q <= M_count_d;
  end
  
endmodule