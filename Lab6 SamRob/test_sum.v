module test_sum;
  wire [4:0] Ain, Bin;
  reg  [4:0] Ain_r, Bin_r;
  wire [4:0] res_my, res_ref;
  wire cm, cr;
  wire Ci;
  reg  Ci_r;

  my_sum  my_block (Ain, Bin, Ci, res_my, cm);
  ref_sum ref_block(Ain, Bin, Ci, res_ref, cr);

  assign Ain = Ain_r;
  assign Bin = Bin_r;
  assign Ci  = Ci_r;

  initial begin
    $display("\t\t   Time   Ain   Bin   Ci  res_my    cm   res_ref   cr");
    $monitor($time,,,,,Ain,,,,,Bin,,,,,Ci,,,,,res_my,,,,,,,,cm,,,,,,,res_ref,,,,,,,cr);
    #400 $finish;
  end

  initial begin
    Ain_r = 5'b00001;
    #50  Ain_r = 5'b00101;
    #50  Ain_r = 5'b00011;
    #50  Ain_r = 5'b11111;
    #50  Ain_r = 5'b01010;
    #50  Ain_r = 5'b10101;
    #50  Ain_r = 5'b10000;
    #50  Ain_r = 5'b11100;
  end

  initial begin
    Bin_r = 5'b00010;
    #100 Bin_r = 5'b01010;
    #100 Bin_r = 5'b11111;
    #100 Bin_r = 5'b00000;
  end

  initial begin
    Ci_r = 1'b0;
    #200 Ci_r = 1'b1;
  end
endmodule
