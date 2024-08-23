//Arithmetic Instructions 

//ADD r1, r2, r3

module add_instruction(
input [18:0] r2, // source register 2
input [18:0] r3, // source register 3
output reg [18:0] r1 // Destination register 1
);

always @(*) begin
    r1 = r2 + r3;
end
endmodule
