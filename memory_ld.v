//Load the value from the specified memory address into register r1.


module ld_instruction (
input [18:0] memory_addr,
input [18:0] memory_data,
output reg [18:0] r1
);

always @(*) begin
    r1 = memory_data;   // output = input
end
    
endmodule   // let's go to testbench...