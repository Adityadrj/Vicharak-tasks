//Logical Instructions 

// AND r1, r2, r3

module and_instruction (
input [18:0] r2,
input [18:0] r3,
output reg [18:0] r1
);

always @(*) begin
    r1 = r2&r3;
end
    
endmodule