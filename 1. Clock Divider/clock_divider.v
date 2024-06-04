module clock_divider(
  input wire clk,rst,
  output reg clk_2,clk_4,clk_8,clk_16
);
  reg [3:0] count;
  always@ (posedge clk) begin
    if(rst)
      count = 0;
    else begin
      //count = count+1;
      clk_2 <= count[0];
      clk_4 <= count[1];
      clk_8 <= count[2];
      clk_16 <= count[3];
      count <= count+1;
    end
  end
endmodule
