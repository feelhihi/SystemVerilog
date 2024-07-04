// Code your design here

/* 
  event -> covergroup 要加 @
*/

interface busifc (input bit clk);
  logic[31:0] data;
  logic[ 2:0] port;

  clocking cb @(posedge clk);
    output data, port;
  endclocking
  
  modport TB(clocking cb);
endinterface

program automatic test(busifc.TB ifc);
  class Transaction;
    rand bit [31:0] data;
    rand bit [ 2:0] port; // 8 ports
  endclass
  Transaction tr;
  
  event trans_ready;
  covergroup CovPort @(trans_ready); //事件觸發
    coverpoint ifc.cb.port; // Measure coverage
  endgroup
  CovPort ck;

  initial begin
    tr = new();
    ck = new(); //實例化
    repeat (32) begin
      assert(tr.randomize);
      ifc.cb.port <= tr.port;
      ifc.cb.data <= tr.data;
      //ck.sample(); // Gather coverage
      @ifc.cb;
      -> trans_ready; //trigger
    end
    $display ("Coverage = %.2f%%", ck.get_coverage());
    $stop; //不能用$finish, 否則report出不來
  end
endprogram

module top;
  bit clk;
  always #5 clk = !clk;
  
  busifc ifc(clk);
  test t1(ifc);
endmodule:top
