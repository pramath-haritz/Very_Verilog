//Mux4
module m(input logic[3:0]d0,d1,d2,d3,
         input logic s0,s1,
         output logic[3:0]y);
  assign y = s0?(s1?d3:d2):(s1?d1:d0);
endmodule
