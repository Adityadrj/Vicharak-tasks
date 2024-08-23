module ret_instruction (
input [7:0] sp,
input [18:0] stack_data,
output reg [18:0] new_pc,
output reg [7:0] new_sp
);


always @(*) begin
    new_sp = sp + 8'b01;   //incrament....
    new_pc = stack_data;
end
endmodule   // let's go to testbench