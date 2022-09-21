module XOR_4(input logic [3:0]a,
			 output logic y);
	// structural
	logic w1,w2;
	xor x1(w1,a[3],a[2]);
	xor x2(w2,a[1],a[0]);
	xor x3(y,w1,w2);
endmodule

module XOR_4(input logic [3:0]a,
			 output logic y);
	// behavioural
  assign y= a[3]^a[2]^a[1]^a[0];
endmodule
