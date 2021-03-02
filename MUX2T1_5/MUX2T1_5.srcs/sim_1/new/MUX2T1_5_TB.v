`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/01 19:31:04
// Design Name: 
// Module Name: MUX2T1_5_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX2T1_5_TB(
    );
    reg s;
    reg [4:0] I0, I1;
    wire [4:0] O;
    MUX2T1_5 m1 (.I0(I0), .I1(I1), .s(s), .O(O));
    
    initial begin
        #100
        I0 = 4'b1111;
        I1 = 4'b0000;
        
        s = 1'b1;
        
        #100
        
        s = 1'b0;
    end
    
endmodule
