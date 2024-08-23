module st_instruction_tb;
reg [18:0] memory_addr;
reg [18:0] r1;
wire [18:0] memory_data;

st_instruction uut(.memory_addr(memory_addr), .r1(r1), .memory_data(memory_data));

initial begin
    memory_addr = 19'd111;
    r1 = 19'd500;
    #20;    // delay
    $display($time,"memory_addr=%d,r1=%d,memory_data=%d",memory_addr,r1,memory_data);
end
    
endmodule      // Thank you....