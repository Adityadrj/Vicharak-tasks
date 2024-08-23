module brq_instruction_tb;
reg [18:0] r2;
reg [18:0] r3;
reg [18:0] branch_addr;
reg [18:0] pc_next;
wire [18:0] pc;

brq_instruction uut(.r2(r2), .r3(r3), .branch_addr(branch_addr), .pc_next(pc_next), .pc(pc));

initial begin
    r2 = 19'b10;
    r3 = 19'b10;
    branch_addr = 19'd150;
    pc_next = 19'd200;
    #05;

    $display($time,"r2=%b,r3=%b,branch_addr=%d,pc_next=%d,pc=%d",r2,r3,branch_addr,pc_next,pc);
end
    
endmodule