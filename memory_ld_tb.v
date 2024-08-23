module ld_instruction_tb;
reg [18:0] memory_addr;  //input
reg [18:0] memory_data;  //input
wire [18:0] r1;      // output

ld_instruction uut(.memory_addr(memory_addr), .memory_data(memory_data), .r1(r1));    //  explicit association

initial begin
    memory_addr = 19'd240;
    memory_data = 19'd255;
    #10;    // delay

    $display($time,"memory_addr=%d,memory_data=%d,r1=%d",memory_addr,memory_data,r1);
    
end
    
endmodule    // let's go to next operation....