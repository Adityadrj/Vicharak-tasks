//Control Flow Instructions    

// JMP addr

module jmp_instruction (
input [18:0] jmp_addr,
output reg [18:0] pc //program counter
);

always @(*) begin
    pc = jmp_addr;
end
    
endmodule  //let's go to testbench....