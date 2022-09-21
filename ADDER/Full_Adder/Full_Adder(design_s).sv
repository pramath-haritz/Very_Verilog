//design
module a(input logic a,b,c,
			output logic sum,carry);
  logic w1,w2,w3;
			
  xor x1(sum,a,b,c);
  and A1(w1,a,b);
  and A2(w2,b,c);
  and A3(w3,c,a);
  or O1(carry,w1,w2,w3);	
endmodule
