//design
module fa(input logic a,b,c,
                output logic sum,carry);
                assign sum=a^b^c;
                assign carry=a&b|b&c|c&a;
endmodule
module ripple_adder(input logic [3:0] a,b,
                    input logic cin,
                    output logic [3:0]s,
                    output logic cout );
                    logic c1,c2,c3;
fa f1(a[0],b[0],cin,s[0],c1);
fa f2(a[1],b[1],c1,s[1],c2);
fa f3(a[2],b[2],c2,s[2],c3);
fa f4(a[3],b[3],c3,s[3],cout);
endmodule
