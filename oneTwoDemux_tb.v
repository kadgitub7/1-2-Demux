`timescale 1ns / 1ps

module oneTwoDemux_tb();
    reg I,S0,E;
    wire Y0,Y1;
    
    oneTwoDemux uut(I,S0,E,Y0,Y1);
    initial begin
        I = 0; S0 = 0; E = 0;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 0; S0 = 1; E = 0;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 0; S0 = 0; E = 1;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 0; S0 = 1; E = 1;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 1; S0 = 0; E = 0;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 1; S0 = 1; E = 0;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 1; S0 = 0; E = 1;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
        
        I = 1; S0 = 1; E = 1;
        #10 $display("I = %b, S0 = %b, E = %b, Y0 = %b, Y1 = %b", I,S0,E,Y0,Y1);
    end
endmodule
