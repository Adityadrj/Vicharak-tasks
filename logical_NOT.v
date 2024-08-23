//Logical Instructions 

// NOT r1, r2

module not_instruction (
input [18:0] r2,
output reg [18:0] r1
);

always @(*) begin
    r1 = ~r2;
end
    
endmodule