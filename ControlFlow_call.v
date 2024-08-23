//Control Flow Instructions    

// CALL addr

module call_instruction (
input [18:0] addr,
input [18:0] pc,
input [7:0] sp,   //stack pointer..(8-bits)
output reg [7:0] new_sp,  // output oF stack pointer
output reg [18:0] new_pc,  // output of program counter...
output reg [18:0] stack_data
);

reg [18:0] stack [255:0];

always @(*) begin
    stack[sp] = pc + 19'd1;  // increament
    stack_data = stack[sp];
    new_sp = sp - 8'b01; // decrement
    new_pc = addr;
end
endmodule   // let's go to testbench....