// Code your design here
module my_vector;
  int i,j;
  
  int md[3][4] = '{'{1,2,3,4},'{5,6,7,8},'{9,10,11,12}};

initial begin
  $display("Initial Value:");
  foreach(md[i,j])//所有(i,j) ,先掃j再掃i
    $display("md[%0d][%0d]=%0d",i,j,md[i][j]);

  $display("New Value:");
  md = '{'{4{32'd1}}, '{4{32'd2}}, '{4{32'd3}}}; //二維常數vector
  foreach (md[i,j])
    $display("md[%0d][%0d]=%0d", i, j, md[i][j]);
end

endmodule
