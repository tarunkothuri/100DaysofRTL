module tb_clock_divider;
  reg clk,rst;
  wire clk_2,clk_4,clk_8,clk_16;
  
  //instantiation
  clock_divider dut (clk,rst,clk_2,clk_4,clk_8,clk_16);
  
  //clock generation
  always #5 clk = ~clk;
  
  //inputs to tb
  initial begin
    clk=0;rst=1;
    #10 rst=0;
    #300 $finish;
  end
  
  initial begin
    $dumpfile("tb_clock_divider");
    $dumpvars(0,tb_clock_divider);
  end
endmodule
