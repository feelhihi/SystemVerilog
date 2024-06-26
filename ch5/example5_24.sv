// Code your design here

/* 在函數裡修改 handle : ref 或 return */

module my_class;
  
  //ex5.22 : 可以讓Statistics比Transaction晚定義
  typedef class Statistics; //先聲明class , 不聲明則要考慮順序
  
  class Statistics;
    time startT, stopT;
    static int ntrans = 0;
    static time total_elapsed_time = 0;
    
    function time how_long;
      how_long = stopT - startT;
      ntrans++;
      total_elapsed_time += how_long;
    endfunction
    
    function void start;
      startT = $time;
      $display("set startT");
    endfunction
    
  endclass
  
  class Transaction;
    bit [31:0] addr,crc,data[8];
    Statistics stats;
    
    function new();
      stats = new(); //實例化
    endfunction
    
    task create_packet();
      stats.start();
    endtask
    
  endclass
  
  function void create (ref Transaction t); //ref: handle
    t = new();  //這裡才成為 object
    t.addr = 42;
  endfunction
    
  task transmit (Transaction t); //handle
    // CBbus.rx_data <= t.data;
    t.stats.startT = $time;
    $display("addr=%0d",t.addr);
  endtask
    
  Transaction tr;
  initial begin
    create(tr);
    transmit(tr); //代入 object -> addr=42
  end
  
endmodule
