//Control Flow Instructions    

// BRQ addr     is meanns branch equal

module brq_instruction (
input [18:0] r2,
input [18:0] r3,
input [18:0] branch_addr,
input [18:0] pc_next, // no branch
output reg [18:0] pc
);

always @(*) begin
    if (r2==r3)
        pc = branch_addr;   // iF statement right then execute the line....
    else
        pc = pc_next;     //  iF statement is not right then executr the line......
    
end
    
endmodule // let's go to testbench......