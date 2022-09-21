//tb
module rippletb();
logic [3:0]a,b;
logic cin;
logic [3:0]s;
logic cout;
ripple_adder dut(a[3:0],b[3:0],cin,s[3:0],cout);
initial begin
cin=0;
a=4'b0101;
b=4'b0011;
end
endmodule
