//Control Flow Instructions    

// BNE addr    means branch not eqaul...

module bne_instruction (
input [18:0] r2,
input [18:0] r3,
input [18:0] branch_addr,
input [18:0] pc_next,
output reg [18:0] pc
);

always @(*) begin
    if (r2!=r3)     //r2 is not eqaul to r3....
       pc = branch_addr;
    else
       pc = pc_next;
end
    
endmodule  // let's go to testbench....