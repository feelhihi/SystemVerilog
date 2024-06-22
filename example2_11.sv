// Code your design here
module my_vector;
  
initial begin
  
  byte twoD[4][6];
  // create 2D vector
  foreach(twoD[i,j])
    twoD[i][j] = i*20+2*j;

  // show vector
  foreach (twoD[i]) begin//只掃i
    $write("%d:",i);//給display
    foreach(twoD[j])//只掃j
      $write("%d",twoD[i][j]);
    $display;
  end
  
end

endmodule
