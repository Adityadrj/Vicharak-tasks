module call_instruction_tb;
reg [18:0] pc;
reg [7:0] sp;
reg [18:0] addr;
wire [18:0] new_pc;
wire [7:0] new_sp;
wire [18:0] stack_data;

call_instruction uut(.pc(pc), .sp(sp), .addr(addr), .new_pc(new_pc), .new_sp(new_sp), .stack_data(stack_data));

initial begin
    addr =19'd150;
    pc = 19'd50;
    sp =8'd255;
    #20;

    $display($time,"pc=%d,sp=%d",pc,sp);  // starting value
    #25;
    $display($time,"new_pc=%d,stack_data=%d,new_sp=%d",new_pc,stack_data,new_sp);  // after call....
end
endmodule    // let's go to next operation