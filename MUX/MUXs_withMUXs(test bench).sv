//test bench
module mux_tb();
logic [3:0]d0,d1,d2,d3,d4,d5,d6,d7;
logic s1,s2,s0;
logic [3:0]y ;

mux8_1 dut(d0,d1,d2,d3,d4,d5,d6,d7,s2,s1,s0,y);
initial begin
d0=1;d1=2;d2=3;d3=4;d4=5;d5=6;d6=7;d7=8;
s0=0;s1=0;s2=0;
#10 s0=0;s1=0;s2=1;
#10 s0=0;s1=1;s2=0;
#10 s0=0;s1=1;s2=1;
#10 s0=1;s1=0;s2=0;
#10 s0=1;s1=0;s2=1;
#10 s0=1;s1=1;s2=0;
#10 s0=1;s1=1;s2=1;
end 
endmodule
