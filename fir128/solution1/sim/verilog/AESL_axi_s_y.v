// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_y_TDATA "../tv/rtldatafile/rtl.fir.autotvout_y_V_data_V.dat"
`define EGRESS_STATUS_y_TDATA "../tv/stream_size/stream_egress_status_y_V_data_V.dat"
`define TV_OUT_y_TKEEP "../tv/rtldatafile/rtl.fir.autotvout_y_V_keep_V.dat"
`define EGRESS_STATUS_y_TKEEP "../tv/stream_size/stream_egress_status_y_V_keep_V.dat"
`define TV_OUT_y_TSTRB "../tv/rtldatafile/rtl.fir.autotvout_y_V_strb_V.dat"
`define EGRESS_STATUS_y_TSTRB "../tv/stream_size/stream_egress_status_y_V_strb_V.dat"
`define TV_OUT_y_TLAST "../tv/rtldatafile/rtl.fir.autotvout_y_V_last_V.dat"
`define EGRESS_STATUS_y_TLAST "../tv/stream_size/stream_egress_status_y_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 300

module AESL_axi_s_y (
    input clk,
    input reset,
    input [64 - 1:0] TRAN_y_TDATA,
    input [8 - 1:0] TRAN_y_TKEEP,
    input [8 - 1:0] TRAN_y_TSTRB,
    input TRAN_y_TLAST,
    input TRAN_y_TVALID,
    output TRAN_y_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_y_TVALID_temp;
    wire y_TDATA_full;
    wire y_TDATA_empty;
    reg y_TDATA_write_en;
    reg [64 - 1:0] y_TDATA_write_data;
    reg y_TDATA_read_en;
    wire [64 - 1:0] y_TDATA_read_data;
    
    fifo #(2, 64) fifo_y_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(y_TDATA_write_en),
        .write_data(y_TDATA_write_data),
        .read_clock(clk),
        .read_en(y_TDATA_read_en),
        .read_data(y_TDATA_read_data),
        .full(y_TDATA_full),
        .empty(y_TDATA_empty));
    
    always @ (*) begin
        y_TDATA_write_en <= TRAN_y_TVALID;
        y_TDATA_write_data <= TRAN_y_TDATA;
        y_TDATA_read_en <= 0;
    end
    wire y_TKEEP_full;
    wire y_TKEEP_empty;
    reg y_TKEEP_write_en;
    reg [8 - 1:0] y_TKEEP_write_data;
    reg y_TKEEP_read_en;
    wire [8 - 1:0] y_TKEEP_read_data;
    
    fifo #(2, 8) fifo_y_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(y_TKEEP_write_en),
        .write_data(y_TKEEP_write_data),
        .read_clock(clk),
        .read_en(y_TKEEP_read_en),
        .read_data(y_TKEEP_read_data),
        .full(y_TKEEP_full),
        .empty(y_TKEEP_empty));
    
    always @ (*) begin
        y_TKEEP_write_en <= TRAN_y_TVALID;
        y_TKEEP_write_data <= TRAN_y_TKEEP;
        y_TKEEP_read_en <= 0;
    end
    wire y_TSTRB_full;
    wire y_TSTRB_empty;
    reg y_TSTRB_write_en;
    reg [8 - 1:0] y_TSTRB_write_data;
    reg y_TSTRB_read_en;
    wire [8 - 1:0] y_TSTRB_read_data;
    
    fifo #(2, 8) fifo_y_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(y_TSTRB_write_en),
        .write_data(y_TSTRB_write_data),
        .read_clock(clk),
        .read_en(y_TSTRB_read_en),
        .read_data(y_TSTRB_read_data),
        .full(y_TSTRB_full),
        .empty(y_TSTRB_empty));
    
    always @ (*) begin
        y_TSTRB_write_en <= TRAN_y_TVALID;
        y_TSTRB_write_data <= TRAN_y_TSTRB;
        y_TSTRB_read_en <= 0;
    end
    wire y_TLAST_full;
    wire y_TLAST_empty;
    reg y_TLAST_write_en;
    reg [1 - 1:0] y_TLAST_write_data;
    reg y_TLAST_read_en;
    wire [1 - 1:0] y_TLAST_read_data;
    
    fifo #(2, 1) fifo_y_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(y_TLAST_write_en),
        .write_data(y_TLAST_write_data),
        .read_clock(clk),
        .read_en(y_TLAST_read_en),
        .read_data(y_TLAST_read_data),
        .full(y_TLAST_full),
        .empty(y_TLAST_empty));
    
    always @ (*) begin
        y_TLAST_write_en <= TRAN_y_TVALID;
        y_TLAST_write_data <= TRAN_y_TLAST;
        y_TLAST_read_en <= 0;
    end
    assign TRAN_y_TVALID = TRAN_y_TVALID_temp;

    
    assign TRAN_y_TREADY = ~(y_TDATA_full || y_TKEEP_full || y_TSTRB_full || y_TLAST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [191:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [191:0] rm_0x(input [191:0] token);
        reg [191:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_y_TDATA;
    
    assign transaction = transaction_save_y_TDATA;
    
    initial begin : AXI_stream_receiver_y_TDATA
        integer fp;
        reg [64 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_y_TDATA = 0;
        fifo_y_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_y_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_y_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_y_TDATA);
                while (~fifo_y_TDATA.empty) begin
                    fifo_y_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_y_TDATA = transaction_save_y_TDATA + 1;
                fifo_y_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_y_TKEEP;
    
    initial begin : AXI_stream_receiver_y_TKEEP
        integer fp;
        reg [8 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_y_TKEEP = 0;
        fifo_y_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_y_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_y_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_y_TKEEP);
                while (~fifo_y_TKEEP.empty) begin
                    fifo_y_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_y_TKEEP = transaction_save_y_TKEEP + 1;
                fifo_y_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_y_TSTRB;
    
    initial begin : AXI_stream_receiver_y_TSTRB
        integer fp;
        reg [8 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_y_TSTRB = 0;
        fifo_y_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_y_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_y_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_y_TSTRB);
                while (~fifo_y_TSTRB.empty) begin
                    fifo_y_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_y_TSTRB = transaction_save_y_TSTRB + 1;
                fifo_y_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_y_TLAST;
    
    initial begin : AXI_stream_receiver_y_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_y_TLAST = 0;
        fifo_y_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_y_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_y_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_y_TLAST);
                while (~fifo_y_TLAST.empty) begin
                    fifo_y_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_y_TLAST = transaction_save_y_TLAST + 1;
                fifo_y_TLAST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
