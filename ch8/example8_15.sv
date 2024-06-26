// Code your design here

/*
  多型: 使用當前類別的func :
  (1)父類要有 virtual 才能去覆寫!!!
     若把virtual拔掉,最後一個是Transaction::calc_crc,因為沒有覆寫到
  (2)覆寫的名稱跟引數必須相同 -> 8.3.3 Signatures
• 方法重載(Overload)：
我們在方法那一節討論到，方法重載(Overload)，即在一個類別當中，有同樣的方法名稱，但參數資料不同。
• 方法覆寫(Override))：
子類別繼承父類別，覆寫父類別方法，方法名稱與參數都一樣。子類別可以根據自己需求重新定義改寫方法。
*/

class Transaction;
  rand bit [31:0] src, dst, data[8];
  bit [31:0] crc;
  
  virtual function void calc_crc; //若無virtual,最後一個是Transaction::calc_crc
    crc = src ^ dst ^ data.xor;
    $display("Tr"); //顯示
  endfunction
  
  virtual function void display(input string prefix="");
    $display("%s Tr: src=%h, dst=%h, crc=%h", prefix,src,dst,crc);
  endfunction
endclass:Transaction

class BadTr extends Transaction;
  rand bit bad_crc;
  
  virtual function void calc_crc;
    super.calc_crc();        // Compute good CRC
    if (bad_crc) crc = ~crc; // Corrupt the CRC bits
    $display("->Bad"); //顯示
  endfunction
  
  virtual function void display(input string prefix="");
    $write("%s BadTr: bad_crc:%b, " ,prefix,bad_crc);
    super.display();
  endfunction
endclass:BadTr

program automatic test;
  Transaction tr;
  BadTr bad;
  
  initial begin
    //ex8.16
    tr = new();
    tr.calc_crc();  // Transaction::calc_crc
    
    bad = new();
    bad.calc_crc(); // BadTr::calc_crc
    
    tr = bad;       // Base handle points to ext obj
    tr.calc_crc();  // BadTr::calc_crc
  end
endprogram

/*
  Tr
  Tr
  ->Bad
  Tr
  ->Bad
*/
