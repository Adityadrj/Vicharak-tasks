module xor_instruction_tb;
reg [18:0] r2;
reg [18:0] r3;
wire [18:0] r1;

xor_instruction uut(.r2(r2), .r3(r3), .r1(r1));

initial begin
    r2 = 19'b01;
    r3 = 19'b10;
    #15;
    $display("r2=%b,r3=%b,r1=%b",r2,r3,r1);
end
    
endmodule