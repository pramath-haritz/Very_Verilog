//testbench
module b();
logic[3:0]d0,d1,d2,d3;
logic s0,s1;
logic[3:0]y;
m dut(d0,d1,d2,d3,s0,s1,y);
initial begin
$dumpfile("dump.vcd");
$dumpvars;
d0=4'd6;d1=4'd7;d2=4'd9;d3=4'd3;

  s0=0;s1=0;
#10
  s0=0;s1=1;
#10  
  s0=1;s1=0;
#10
  s0=1;s1=1;
end
endmodule
