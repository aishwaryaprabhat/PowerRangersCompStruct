/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     CLK_FREQ = 50000000
     BAUD = 500000
*/
module avr_interface_2 (
    input clk,
    input rst,
    input cclk,
    output reg spi_miso,
    input spi_mosi,
    input spi_sck,
    input spi_ss,
    output reg [3:0] spi_channel,
    output reg tx,
    input rx,
    input [3:0] channel,
    output reg new_sample,
    output reg [9:0] sample,
    output reg [3:0] sample_channel,
    input [7:0] tx_data,
    input new_tx_data,
    output reg tx_busy,
    input tx_block,
    output reg [7:0] rx_data,
    output reg new_rx_data
  );
  
  localparam CLK_FREQ = 26'h2faf080;
  localparam BAUD = 19'h7a120;
  
  
  reg n_rdy;
  
  wire [1-1:0] M_cclk_detector_ready;
  reg [1-1:0] M_cclk_detector_cclk;
  cclk_detector_3 cclk_detector (
    .clk(clk),
    .rst(rst),
    .cclk(M_cclk_detector_cclk),
    .ready(M_cclk_detector_ready)
  );
  wire [1-1:0] M_spi_slave_miso;
  wire [1-1:0] M_spi_slave_done;
  wire [8-1:0] M_spi_slave_data_out;
  reg [1-1:0] M_spi_slave_ss;
  reg [1-1:0] M_spi_slave_mosi;
  reg [1-1:0] M_spi_slave_sck;
  reg [8-1:0] M_spi_slave_data_in;
  spi_slave_4 spi_slave (
    .clk(clk),
    .rst(n_rdy),
    .ss(M_spi_slave_ss),
    .mosi(M_spi_slave_mosi),
    .sck(M_spi_slave_sck),
    .data_in(M_spi_slave_data_in),
    .miso(M_spi_slave_miso),
    .done(M_spi_slave_done),
    .data_out(M_spi_slave_data_out)
  );
  wire [8-1:0] M_uart_rx_data;
  wire [1-1:0] M_uart_rx_new_data;
  reg [1-1:0] M_uart_rx_rx;
  uart_rx_5 uart_rx (
    .clk(clk),
    .rst(n_rdy),
    .rx(M_uart_rx_rx),
    .data(M_uart_rx_data),
    .new_data(M_uart_rx_new_data)
  );
  wire [1-1:0] M_uart_tx_tx;
  wire [1-1:0] M_uart_tx_busy;
  reg [1-1:0] M_uart_tx_block;
  reg [8-1:0] M_uart_tx_data;
  reg [1-1:0] M_uart_tx_new_data;
  uart_tx_6 uart_tx (
    .clk(clk),
    .rst(n_rdy),
    .block(M_uart_tx_block),
    .data(M_uart_tx_data),
    .new_data(M_uart_tx_new_data),
    .tx(M_uart_tx_tx),
    .busy(M_uart_tx_busy)
  );
  reg M_newSampleReg_d, M_newSampleReg_q = 1'h0;
  reg [9:0] M_sampleReg_d, M_sampleReg_q = 1'h0;
  reg [3:0] M_sampleChannelReg_d, M_sampleChannelReg_q = 1'h0;
  reg [1:0] M_byteCt_d, M_byteCt_q = 1'h0;
  reg [3:0] M_block_d, M_block_q = 1'h0;
  reg M_busy_d, M_busy_q = 1'h0;
  
  always @* begin
    M_newSampleReg_d = M_newSampleReg_q;
    M_sampleChannelReg_d = M_sampleChannelReg_q;
    M_byteCt_d = M_byteCt_q;
    M_busy_d = M_busy_q;
    M_block_d = M_block_q;
    M_sampleReg_d = M_sampleReg_q;
    
    n_rdy = ~M_cclk_detector_ready;
    M_cclk_detector_cclk = cclk;
    M_spi_slave_sck = spi_sck;
    M_spi_slave_mosi = spi_mosi;
    M_spi_slave_data_in = 8'hff;
    M_spi_slave_ss = spi_ss;
    M_uart_rx_rx = rx;
    M_uart_tx_data = tx_data;
    M_uart_tx_new_data = new_tx_data;
    M_uart_tx_block = M_busy_q;
    M_block_d = {M_block_q[0+2-:3], tx_block};
    new_sample = M_newSampleReg_q;
    sample = M_sampleReg_q;
    sample_channel = M_sampleChannelReg_q;
    tx_busy = M_uart_tx_busy;
    rx_data = M_uart_rx_data;
    new_rx_data = M_uart_rx_new_data;
    spi_channel = M_cclk_detector_ready ? channel : 4'bzzzz;
    spi_miso = M_cclk_detector_ready && !spi_ss ? M_spi_slave_miso : 1'bz;
    tx = M_cclk_detector_ready ? M_uart_tx_tx : 1'bz;
    M_newSampleReg_d = 1'h0;
    if (M_block_q[3+0-:1] ^ M_block_q[2+0-:1]) begin
      M_busy_d = 1'h0;
    end
    if (!M_uart_tx_busy && new_tx_data) begin
      M_busy_d = 1'h1;
    end
    if (spi_ss) begin
      M_byteCt_d = 1'h0;
    end
    if (M_spi_slave_done) begin
      if (M_byteCt_q == 1'h0) begin
        M_sampleReg_d[0+7-:8] = M_spi_slave_data_out;
        M_byteCt_d = 1'h1;
      end else begin
        if (M_byteCt_q == 1'h1) begin
          M_sampleReg_d[8+1-:2] = M_spi_slave_data_out[0+1-:2];
          M_sampleChannelReg_d = M_spi_slave_data_out[4+3-:4];
          M_byteCt_d = 2'h2;
          M_newSampleReg_d = 1'h1;
        end
      end
    end
  end
  
  always @(posedge clk) begin
    M_block_q <= M_block_d;
    M_busy_q <= M_busy_d;
    
    if (n_rdy == 1'b1) begin
      M_newSampleReg_q <= 1'h0;
      M_sampleReg_q <= 1'h0;
      M_sampleChannelReg_q <= 1'h0;
      M_byteCt_q <= 1'h0;
    end else begin
      M_newSampleReg_q <= M_newSampleReg_d;
      M_sampleReg_q <= M_sampleReg_d;
      M_sampleChannelReg_q <= M_sampleChannelReg_d;
      M_byteCt_q <= M_byteCt_d;
    end
  end
  
endmodule