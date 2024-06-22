// Code your design here
module my_scalar;
  
  /* 單驅動用logic ; 多驅動用wire, 例如inout */
  
  // unsigned 01
  bit b;           //1-bit
  bit [31:0] b32;  //32-bit
  int unsigned ui; //32-bit
  
  // signed 01
  byte b8;         //8-bit
  int i;           //32-bit
  shortint s;      //16-bit
  longint l;       //32bit
  real r;          //double
  
  // 01XZ
  integer i4;      //32-bit signed
  time t;          //64-bit unsigned
  
  initial begin
    b = 7;
    b32 = 17;
    $display("unsigned : %0d, %0d", b, b32); //1, 17
    
    b8 = -7;
    r = -1.7;
    $display("signed : %0d, %.1f", b8, r); //-7, -1.7
    
    i4 = 'bz;
    $display("XZ : %0d", i4); //x
    if ($isunknown(i4)==1) //X或Z會輸出1
      $display("i4 is unknown");
    else
      $display("i4 is not unknown");
  end
  
endmodule
