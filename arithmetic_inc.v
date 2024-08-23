//Arithmetic Instructions 

//INC r1

module inc_instruction (
input [18:0] r2,
output reg [18:0] r1
);

always @(*) begin
    r1 = r2+19'b01;
end
    
endmodule