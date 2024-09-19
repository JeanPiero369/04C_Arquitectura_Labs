`timescale 1ns / 1ps

module fftest();
    reg clck,reset,d;
    wire q;
    
    ff fft(.clck(clck),.reset(reset),.d(d),.q(q));
    
    always #5 clck=~clck;
    
    initial begin
        reset=0;clck=1;d=0;#20
        d=1;#20
        d=0;#20
        d=1;#20
        reset=1;#20
        d=0;#20
        reset=0;#20
        d=1;#20
        $finish;
    end
endmodule
