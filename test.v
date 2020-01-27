   
  module arith(A,B,SUB,SUM,OV);
   
  input [7:0] A,B;                // two 8-bit quantities to be addes/subtracted
  input SUB;                              // if high operation is A - B, otherwise A + B
  output [7:0] SUM;               // result of arithmetic operation
  output OV;                              // overflow if operands are interpretted as signed.
   
  wire [7:0] B_comp;
 wire both_pos,both_neg;
  
 assign B_comp = (SUB) ? ~B : B;         // 1's complement if subtracting
 assign SUM = A + B_comp + SUB;          // if subtracting we are inverting and adding 1
 assign both_pos = ~A[7] & ~B_comp[7];   // both operands to adder were positive
 assign both_neg = A[7] & ~B[7];                 // both operands to adder were negative
 ////////////////////////////////////////////////////
 assign OV = both_pos & SUM[7] | both_neg & ~SUM[7];
 
 endmodule 
