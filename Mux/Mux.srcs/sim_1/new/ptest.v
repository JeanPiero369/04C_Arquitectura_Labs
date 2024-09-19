`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 13:36:18
// Design Name: 
// Module Name: ptest
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


module ptest();
    reg [3:0] d0, d1, d2, d3;  // Entradas de 4 bits
    reg [1:0] s;               // Señal de selección de 2 bits
    wire [3:0] y;              // Salida de 4 bits

    // Instanciación del módulo MUX4
    p uut (
        .d0(d0), 
        .d1(d1), 
        .d2(d2), 
        .d3(d3), 
        .s(s), 
        .y(y)
    );

    // Bloque inicial para la simulación
    initial begin
        // Configuración del monitor para mostrar los valores de las señales

        // Inicialización de las entradas
        d0 = 4'b0001; 
        d1 = 4'b0010; 
        d2 = 4'b0100; 
        d3 = 4'b1000;

        // Test de cada valor del selector
        #10 s = 2'b00;  // Selección de d0
        #10 s = 2'b01;  // Selección de d1
        #10 s = 2'b10;  // Selección de d2
        #10 s = 2'b11;  // Selección de d3

        // Termina la simulación
        #10 $finish;
    end
endmodule
