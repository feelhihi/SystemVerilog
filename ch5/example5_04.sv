// Code your design here

module my_class;

  class Transaction;
    bit [31:0] addr,crc,data[8];

    function new(logic [31:0] a=3,d=5); //default引數
		addr = a;
      foreach(data[i])
        data[i] = d;
    endfunction

    function void display;
      $display("Transaction:%h",addr);
      $display("data[0]:%h",data[0]);
    endfunction:display

    function void calc_crc;
      crc = addr^data.xor;
    endfunction:calc_crc

  endclass:Transaction


  // class內調用其他class
  class Driver;
	Transaction tr;
    function new();
      tr = new();
    endfunction
  endclass:Driver

  

  initial begin
    Transaction tr;
    Driver driver;
    
    tr = new(10);   //addr=10, data=5(default)
    tr.display();   //Transaction:0000000a
    
    driver = new(); //Transaction:00000003
    
    driver.tr.display();   //Transaction:00000003
  end
  
endmodule
