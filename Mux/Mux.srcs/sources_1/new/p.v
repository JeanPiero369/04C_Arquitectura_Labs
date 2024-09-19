`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 13:36:04
// Design Name: 
// Module Name: p
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


module p(input [3:0] d0, d1, d2, d3, input [1:0] s, output reg [3:0] y);
    always @(*) begin
        case (s)
            2'b00: y = d0;  // Selecciona d0 si s es 00
            2'b01: y = d1;  // Selecciona d1 si s es 01
            2'b10: y = d2;  // Selecciona d2 si s es 10
            2'b11: y = d3;  // Selecciona d3 si s es 11
            default: y = 4'b0000;  // Valor por defecto
        endcase
    end
endmodule
