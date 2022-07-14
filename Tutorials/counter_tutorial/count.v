// Reconfigurable Module: module_count
// Binary count up visable on 8 LEDs

module count (
   clk,
   clk_en,
   rst,
   count_out
);

   input rst;                // Active high reset
   input clk;                // 300MHz input clock
   input clk_en;
   output reg [7:0] count_out;   // Output to LEDs

   reg [26:0] count;
   reg [7:0]  count_int;
   
   reg [9:0] addra;
   reg [9:0] addrb;
   
   always @(posedge clk)
      if (rst) begin
         addra <= 10'h00;
         addrb <= 10'h3F0;
      end  
      else if (clk_en) begin
         if (count == 28'h3FF_FFFF) begin
            addra <= addra + 1;
            addrb <= addrb + 1;
         end
      end
   
   //Counter to reduce speed of output
   always @(posedge clk)
      if (rst) begin
         count <= 0;
      end
      else if (clk_en) begin 
         count <= count + 1;
      end

    always @(posedge clk)
      if (rst)
         count_out <= 8'h00;
      else if (clk_en) begin
         if (count == 27'h773_5940) begin
            count_out <= count_out + 1;
         end
      end
      
endmodule