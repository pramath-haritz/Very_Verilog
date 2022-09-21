// Test bench
module b();
logic a,b,c,d,e;

a dut(a,b,c,d,e);
initial begin
$dumpfile("dump.vcd");
$dumpvars;

a=0; b=0; c=0;
#10
a=0; b=0; c=1;
#10
a=0; b=1; c=0;
#10
a=0; b=1; c=1;
#10
a=1; b=0; c=0;
#10
a=1; b=0; c=1;
#10
a=1; b=1; c=0;
#10
a=1; b=1; c=1;
end
endmodule
