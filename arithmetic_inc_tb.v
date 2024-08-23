module inc_instruction_tb;
reg [18:0] r2;
wire [18:0] r1;

inc_instruction uut(.r2(r2), .r1(r1));

initial begin
    r2 = 19'b1000;
    #25;
    $display($time,"r2=%b,r1=%b",r2,r1);
end
    
endmodule