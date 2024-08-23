module jmp_instruction_tb;
reg [18:0] jmp_addr;  //input
wire [18:0] pc;   //output

jmp_instruction uut(.jmp_addr(jmp_addr), .pc(pc)); //explicit association

initial begin
    jmp_addr = 19'd450;
    #10;  //delay
    $display($time,"jmp_addr=%d,pc=%d",jmp_addr,pc);
end
    
endmodule  //let's go to terminal and check the output... output(pc) = jmp_addr

//let's go to next operation