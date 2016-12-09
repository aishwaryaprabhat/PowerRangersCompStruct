/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    input eIGHT,
    input sEVEN,
    input sIX,
    input fIVE,
    input fOUR,
    input tHREE,
    input tWO,
    input oNE,
    input eight2,
    input seven2,
    input six2,
    input five2,
    input four2,
    input three2,
    input two2,
    input one2,
    output reg [6:0] displayp1,
    output reg [3:0] displayselp1
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  reg [4:0] M_counter_d, M_counter_q = 1'h0;
  wire [1-1:0] M_avr_spi_miso;
  wire [4-1:0] M_avr_spi_channel;
  wire [1-1:0] M_avr_tx;
  wire [1-1:0] M_avr_new_sample;
  wire [10-1:0] M_avr_sample;
  wire [4-1:0] M_avr_sample_channel;
  wire [1-1:0] M_avr_tx_busy;
  wire [8-1:0] M_avr_rx_data;
  wire [1-1:0] M_avr_new_rx_data;
  reg [1-1:0] M_avr_cclk;
  reg [1-1:0] M_avr_spi_mosi;
  reg [1-1:0] M_avr_spi_sck;
  reg [1-1:0] M_avr_spi_ss;
  reg [1-1:0] M_avr_rx;
  reg [4-1:0] M_avr_channel;
  reg [8-1:0] M_avr_tx_data;
  reg [1-1:0] M_avr_new_tx_data;
  reg [1-1:0] M_avr_tx_block;
  avr_interface_2 avr (
    .clk(clk),
    .rst(rst),
    .cclk(M_avr_cclk),
    .spi_mosi(M_avr_spi_mosi),
    .spi_sck(M_avr_spi_sck),
    .spi_ss(M_avr_spi_ss),
    .rx(M_avr_rx),
    .channel(M_avr_channel),
    .tx_data(M_avr_tx_data),
    .new_tx_data(M_avr_new_tx_data),
    .tx_block(M_avr_tx_block),
    .spi_miso(M_avr_spi_miso),
    .spi_channel(M_avr_spi_channel),
    .tx(M_avr_tx),
    .new_sample(M_avr_new_sample),
    .sample(M_avr_sample),
    .sample_channel(M_avr_sample_channel),
    .tx_busy(M_avr_tx_busy),
    .rx_data(M_avr_rx_data),
    .new_rx_data(M_avr_new_rx_data)
  );
  wire [8-1:0] M_reg1_out;
  reg [1-1:0] M_reg1_en;
  reg [8-1:0] M_reg1_data;
  register_3 reg1 (
    .clk(clk),
    .rst(rst),
    .en(M_reg1_en),
    .data(M_reg1_data),
    .out(M_reg1_out)
  );
  wire [8-1:0] M_reg2_out;
  reg [1-1:0] M_reg2_en;
  reg [8-1:0] M_reg2_data;
  register_3 reg2 (
    .clk(clk),
    .rst(rst),
    .en(M_reg2_en),
    .data(M_reg2_data),
    .out(M_reg2_out)
  );
  wire [8-1:0] M_reg3_out;
  reg [1-1:0] M_reg3_en;
  reg [8-1:0] M_reg3_data;
  register_3 reg3 (
    .clk(clk),
    .rst(rst),
    .en(M_reg3_en),
    .data(M_reg3_data),
    .out(M_reg3_out)
  );
  wire [8-1:0] M_reg4_out;
  reg [1-1:0] M_reg4_en;
  reg [8-1:0] M_reg4_data;
  register_3 reg4 (
    .clk(clk),
    .rst(rst),
    .en(M_reg4_en),
    .data(M_reg4_data),
    .out(M_reg4_out)
  );
  wire [8-1:0] M_reg5_out;
  reg [1-1:0] M_reg5_en;
  reg [8-1:0] M_reg5_data;
  register_3 reg5 (
    .clk(clk),
    .rst(rst),
    .en(M_reg5_en),
    .data(M_reg5_data),
    .out(M_reg5_out)
  );
  wire [8-1:0] M_reg6_out;
  reg [1-1:0] M_reg6_en;
  reg [8-1:0] M_reg6_data;
  register_3 reg6 (
    .clk(clk),
    .rst(rst),
    .en(M_reg6_en),
    .data(M_reg6_data),
    .out(M_reg6_out)
  );
  wire [8-1:0] M_reg7_out;
  reg [1-1:0] M_reg7_en;
  reg [8-1:0] M_reg7_data;
  register_3 reg7 (
    .clk(clk),
    .rst(rst),
    .en(M_reg7_en),
    .data(M_reg7_data),
    .out(M_reg7_out)
  );
  wire [8-1:0] M_reg8_out;
  reg [1-1:0] M_reg8_en;
  reg [8-1:0] M_reg8_data;
  register_3 reg8 (
    .clk(clk),
    .rst(rst),
    .en(M_reg8_en),
    .data(M_reg8_data),
    .out(M_reg8_out)
  );
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [32-1:0] M_seg_values;
  multi_seven_seg_11 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  
  always @* begin
    M_counter_d = M_counter_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    M_seg_values = 32'h8884825f;
    displayp1 = ~M_seg_seg;
    displayselp1 = M_seg_sel;
    M_avr_cclk = cclk;
    M_avr_spi_ss = spi_ss;
    M_avr_spi_mosi = spi_mosi;
    M_avr_spi_sck = spi_sck;
    M_avr_rx = avr_tx;
    M_avr_channel = 4'hf;
    M_avr_tx_block = avr_rx_busy;
    M_avr_tx_data = 1'bz;
    M_avr_new_tx_data = 1'bz;
    spi_miso = M_avr_spi_miso;
    spi_channel = M_avr_spi_channel;
    avr_rx = M_avr_tx;
    M_reg1_en = 1'h0;
    M_reg1_data = 8'h01;
    M_reg2_en = 1'h0;
    M_reg2_data = 8'h01;
    M_reg3_en = 1'h0;
    M_reg3_data = 8'h01;
    M_reg4_en = 1'h0;
    M_reg4_data = 8'h01;
    M_reg5_en = 1'h0;
    M_reg5_data = 8'h01;
    M_reg6_en = 1'h0;
    M_reg6_data = 8'h01;
    M_reg7_en = 1'h0;
    M_reg7_data = 8'h01;
    M_reg8_en = 1'h0;
    M_reg8_data = 8'h01;
    if (eIGHT == 1'h0 && fOUR == 1'h0) begin
      M_seg_values = 32'h88888888;
      displayp1 = ~M_seg_seg;
      displayselp1 = M_seg_sel;
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h10;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h20;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h30;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h40;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h50;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h60;
        end
      endcase
    end
    if (eIGHT == 1'h1 && tHREE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      M_seg_values = 32'h89898989;
      displayp1 = ~M_seg_seg;
      displayselp1 = M_seg_sel;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h11;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h21;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h31;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h41;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h51;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h61;
        end
      endcase
    end
    if (eIGHT == 1'h1 && tWO == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h12;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h22;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h32;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h42;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h52;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h62;
        end
      endcase
    end
    if (eIGHT == 1'h1 && oNE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h13;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h23;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h33;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h43;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h53;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h63;
        end
      endcase
    end
    if (sEVEN == 1'h1 && fOUR == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h14;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h24;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h34;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h44;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h54;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h64;
        end
      endcase
    end
    if (sEVEN == 1'h1 && tHREE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h15;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h25;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h35;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h45;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h55;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h65;
        end
      endcase
    end
    if (sEVEN == 1'h1 && tWO == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h16;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h26;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h36;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h46;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h56;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h66;
        end
      endcase
    end
    if (sEVEN == 1'h1 && oNE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h17;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h27;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h37;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h47;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h57;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h67;
        end
      endcase
    end
    if (sIX == 1'h1 && fOUR == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h18;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h28;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h38;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h48;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h58;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h68;
        end
      endcase
    end
    if (sIX == 1'h1 && tHREE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h19;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h29;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h39;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h49;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h59;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h69;
        end
      endcase
    end
    if (sIX == 1'h1 && tWO == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1a;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2a;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3a;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4a;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5a;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6a;
        end
      endcase
    end
    if (sIX == 1'h1 && oNE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1b;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2b;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3b;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4b;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5b;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6b;
        end
      endcase
    end
    if (fIVE == 1'h1 && fOUR == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1c;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2c;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3c;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4c;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5c;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6c;
        end
      endcase
    end
    if (fIVE == 1'h1 && tHREE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1d;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2d;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3d;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4d;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5d;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6d;
        end
      endcase
    end
    if (fIVE == 1'h1 && tWO == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1e;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2e;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3e;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4e;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5e;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6e;
        end
      endcase
    end
    if (fIVE == 1'h1 && oNE == 1'h1) begin
      M_counter_d = M_counter_q + 1'h1;
      
      case (M_counter_q)
        1'h0: begin
          M_reg1_en = 1'h1;
          M_reg1_data = 8'h1f;
        end
        1'h1: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h2f;
        end
        2'h2: begin
          M_reg2_en = 1'h1;
          M_reg2_data = 8'h3f;
        end
        2'h3: begin
          M_reg4_en = 1'h1;
          M_reg4_data = 8'h4f;
        end
        3'h4: begin
          M_reg5_en = 1'h1;
          M_reg5_data = 8'h5f;
        end
        3'h5: begin
          M_reg6_en = 1'h1;
          M_reg6_data = 8'h6f;
        end
      endcase
    end
    if (eight2 == 1'h1 && four2 == 1'h1) begin
      M_seg_values = 32'h8a8a888a;
      displayp1 = ~M_seg_seg;
      displayselp1 = M_seg_sel;
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h00;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (eight2 == 1'h1 && three2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h01;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (eight2 == 1'h1 && two2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h02;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (eight2 == 1'h1 && one2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h03;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (seven2 == 1'h1 && four2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h04;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (seven2 == 1'h1 && three2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h05;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (seven2 == 1'h1 && two2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h06;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (seven2 == 1'h1 && one2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h07;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (six2 == 1'h1 && four2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h08;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (six2 == 1'h1 && three2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h09;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (six2 == 1'h1 && two2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0a;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (six2 == 1'h1 && one2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0b;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (five2 == 1'h1 && four2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0c;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (five2 == 1'h1 && three2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0d;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (five2 == 1'h1 && two2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0e;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
    if (five2 == 1'h1 && one2 == 1'h1) begin
      M_reg7_en = 1'h1;
      M_reg7_data = 8'h0f;
      M_reg7_en = 1'h0;
      if (M_reg7_out[0+3-:4] == M_reg1_out[0+3-:4]) begin
        
      end else begin
        if (M_reg7_out[0+3-:4] == M_reg2_out[0+3-:4]) begin
          
        end else begin
          if (M_reg7_out[0+3-:4] == M_reg3_out[0+3-:4]) begin
            
          end else begin
            
          end
        end
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
