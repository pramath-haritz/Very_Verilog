//design code
module mux2_1(input logic[3:0] a0,a1,
             input logic s,
             output logic[3:0] g);
             assign g = s?a1:a0;
endmodule
module mux4_1(input logic [3:0]a0,a1,a2,a3,
            input logic s1,s0,
            output logic [3:0]y);
            logic [3:0]w1,w2;
            mux2_1 m1(a0,a1,s1,w1);
             mux2_1 m2(a2,a3,s1,w2);
             mux2_1 m3(w1,w2,s0,y);
endmodule
module mux8_1(
    input logic [3:0]a0,a1,a2,a3,a4,a5,a6,a7,
    input logic s2,s1,s0,
    output logic [3:0]y);
    logic [3:0]w1,w2;
    mux4_1 m1(a0,a1,a2,a3,s1,s2,w1);
     mux4_1 m2(a4,a5,a6,a7,s1,s2,w2);
    mux2_1 m3(w1,w2,s0,y);
endmodule
