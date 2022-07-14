`timescale 1ps / 1ps

module dram_mover (
  input save, 
  input restore
);
  parameter START_ADDRESS = 32'h0;
  parameter PAGE_COUNT = 128; // A page is 2KB

  // Dumping DRAM state
  int wfd;
  int a;
  bit failure;
  logic[16*8-1:0] data; // 16 bytes
  logic[16*8-1:0] data_array[0:127]; // 2KB array of 128*16 bytes

  initial begin

    #200
    // Disables warnings of reading unwritten address
    dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[0].ddr4_model.set_memory_warnings(0,0);
    dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[1].ddr4_model.set_memory_warnings(0,0);
    dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[2].ddr4_model.set_memory_warnings(0,0);
    dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[3].ddr4_model.set_memory_warnings(0,0);

    //#1000000000;
    //#3730000
    forever begin
      @(posedge save);

      wfd = $fopen("dram_sim_state.dump");

      $display("%t: %m: Dumping DRAM state", $time);

      for (int p = 0; p < PAGE_COUNT; p++) begin
        
        // Read 2 KBytes of data into data_array[128], each memory_read() returns 16 bytes
        for (int j = 0; j < 128; j++) begin
          a = p * 128 + j + START_ADDRESS;
          if (a[1:0] == 0)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[0].ddr4_model.memory_read(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(data_array[j]));
          else if (a[1:0] == 1)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[1].ddr4_model.memory_read(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(data_array[j]));
          else if (a[1:0] == 2)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[2].ddr4_model.memory_read(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(data_array[j]));
          else if (a[1:0] == 3)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[3].ddr4_model.memory_read(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(data_array[j]));
        end

        // Write data_array[128] to dram_sim_state.dump file
        for (int j = 127; j >= 0; j--) begin
          data = data_array[j];
          $fwrite(wfd,"%h", {data[127:120], data[111:104], data[95:88], data[79:72], data[63:56], data[47:40], data[31:24], data[15:8],
                                 data[119:112], data[103:96], data[87:80], data[71:64], data[55:48], data[39:32], data[23:16], data[7:0]});
        end
          $fwrite(wfd,"\n");

      end

      $fclose(wfd);
    end
    
  end

  // Loading DRAM state
  int rfd;
  logic[16*8-1:0] rdata; // 16 bytes
  logic[16*8-1:0] rdata_ooo; // 16 bytes
  logic[16*8*128-1:0] rdata_farray; // Flattened 2KB array of 128*16 bytes

  initial begin

    //#3720000
    forever begin
      @(posedge restore);
      rfd = $fopen("dram_hw_state.dump","r");

      $display("%t: %m: Loading DRAM state", $time);

      for (int p = 0; p < PAGE_COUNT; p++) begin
        if ($feof(rfd))
          break;

        // Read one line (2 KBytes of data) from dram_hw_state.dump file into data_farray
        $fscanf(rfd, "%h\n", rdata_farray);

        // Write data_farray into DRAM, each memory_write() writes 16 bytes
        for (int j = 0; j < 128; j++) begin
          
          rdata_ooo = rdata_farray[j*128 +: 128];
          rdata = {rdata_ooo[127:120], rdata_ooo[63:56], rdata_ooo[119:112], rdata_ooo[55:48], rdata_ooo[111:104], rdata_ooo[47:40], rdata_ooo[103:96], rdata_ooo[39:32],
                                 rdata_ooo[95:88], rdata_ooo[31:24], rdata_ooo[87:80], rdata_ooo[23:16], rdata_ooo[79:72], rdata_ooo[15:8], rdata_ooo[71:64], rdata_ooo[7:0]};

          a = p * 128 + j + START_ADDRESS;
          if (a[1:0] == 0)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[0].ddr4_model.memory_write(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(rdata));
          else if (a[1:0] == 1)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[1].ddr4_model.memory_write(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(rdata));
          else if (a[1:0] == 2)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[2].ddr4_model.memory_write(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(rdata));
          else if (a[1:0] == 3)
            failure = dram_model_tb.mem_model_x16.mem.memModels_Ri2[0].memModel2[3].ddr4_model.memory_write(.bg(a[2]), .ba(a[4:3]), .row(a[30:12]), .col(a[11:2]), .data(rdata));

        end

      end

      $fclose(rfd);
    end

  end

  endmodule