module ref_sum (Ain, Bin, Ci, Sout, Co);
  input [4:0] Ain, Bin;
  input Ci;
  output [4:0] Sout;
  output Co;

  wire [4:0] Ain, Bin;
  reg [5:0] S;
  wire Ci;

  always @(Ain, Bin, Ci)
    S = Ain + Bin + Ci;

  assign Sout = S[4:0];
  assign Co = S[5];
endmodule
