// Code your design here

/* deep copy: 複製並指向另一個獨立的handle */

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
    
    function Statistics copy; //deep copy
      copy = new();
      copy.startT = startT;
      copy.stopT = stopT;
    endfunction
    
  endclass
  
  class Transaction;
    bit [31:0] addr,crc,data[8];
    static int count = 0;
    int id;
    Statistics stats;
    
    function new();
      stats = new(); //實例化
      id = count++;
    endfunction
    
    function Transaction copy; //deep copy
      copy = new();
      copy.addr = addr;
      copy.crc = crc;
      copy.data = data;
      copy.stats = stats.copy(); //Statistics也要新增
      id = count++;
    endfunction
    
  endclass

    
    
  Transaction src,dst;
  initial begin
    src = new();
    src.stats.startT = 42;
    dst = src.copy(); //deep copy func
    dst.stats.startT = 96;
    
    $display("src=%0d, dst=%0d", src.stats.startT, dst.stats.startT); //42,96
  end
  
endmodule
