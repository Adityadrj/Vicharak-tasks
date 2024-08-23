// Store the value in register r1 to the specified memory address.


module st_instruction (
input [18:0] memory_addr,
input [18:0] r1,
output reg [18:0] memory_data
);

always @(*) begin
    memory_data = r1;    // output = input
end
    
endmodule    // let's go to testbench....