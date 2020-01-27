  module arith_tb();
   
   
  reg [7:0] A,B;
  reg SUB;                                // system clock
  
  wire [7:0] SUM;
  wire OV;
                           // signal output from DUT
  
  /////// Instantiate DUT /////////
  arith iDUT(.A(A),.B(B),.SUB(SUB),.SUM(SUM),.OV(OV));
  
  initial begin
  
  A=8'hFF;
  B=8'hF0;
  SUB=1'h0;
  
  #10;
  A=8'hFE;
  B=8'hF1;
  SUB=1'h0;
  
  
  #2000
 
  $display("MODELSIM SETUP SUCCESSFUL");
  
  $stop;
  
  end
  
  endmodule
