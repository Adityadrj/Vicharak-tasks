module and_instruction_tb;
reg [18:0] r2;
reg [18:0] r3;
wire [18:0] r1;

and_instruction uut(.r2(r2), .r3(r3), .r1(r1));

initial begin
    r2 = 19'b10;
    r3 = 19'b11;
    #05;

    $display("r2=%b,r3=%b,r1=%b",r2,r3,r1);
    
end
    
endmodule