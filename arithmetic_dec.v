//Arithmetic Instructions 

//DEC r1

module dec_instruction (
input [18:0] r2,
output reg [18:0] r1
);

always @(*) begin
    r1 = r2-19'b01;
end
    
endmodule