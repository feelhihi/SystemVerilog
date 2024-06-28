// Code your design here

/* 運算加速 2進位 bit operation */

module my_random;
  class BusOp;
    rand bit[31:0] addr; //0~2^32-1, 4096=2^12, 大於2^12 = 除法,小於2^12 = 取餘數
    constraint near_page_boundary { //取餘數
      // addr %4096 inside {[0:20],[4075:4095]}; //slow
      addr[11:0] inside {[0:20],[4075:4095]}; //fast
    }
  endclass:BusOp

  BusOp busop;
  initial begin
    busop = new();
    repeat(5) begin  
      assert(busop.randomize());
      $display(busop.addr[11:0]); //餘數為0~20 or 4075~4095
    end
  end
endmodule;
