module sub_instruction_tb;
reg [18:0] r2;
reg [18:0] r3;
wire [18:0] r1;

sub_instruction uut(.r2(r2), .r3(r3), .r1(r1));
initial begin
    r2 = 19'b111;
    r3 = 19'b101;
    #10;
    $display($time,"r2=%b,r3=%b,r1=%b",r2,r3,r1);
end 
endmodule