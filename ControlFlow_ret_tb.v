module ret_instruction_tb;
reg [7:0] sp;
reg [18:0] stack_data;
reg [18:0] stack [255:0];
wire [18:0] new_pc;
wire [7:0] new_sp;

ret_instruction uut(.sp(sp), .stack_data(stack_data), .new_pc(new_pc), .new_sp(new_sp));

initial begin
    sp = 8'd254;
    stack [255] = 19'd52;
    stack_data = stack[sp + 1];  // Simulate stack read operation
    #25;
    $display($time,"sp=%d,new_sp=%d",sp,new_sp);  // starting value
    #35;
    $display($time,"new_pc=%d,stack_data=%d",new_pc,stack_data); // after ret
end
endmodule       //thank you.....