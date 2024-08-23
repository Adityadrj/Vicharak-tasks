module not_instruction_tb;
reg [18:0] r2;
wire [18:0] r1;

not_instruction uut(.r2(r2), .r1(r1));

initial begin
    r2 = 19'b11;
    #20;
    $display("r2=%b,r1=%b",r2,r1);
end
    
endmodule