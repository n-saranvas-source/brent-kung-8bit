`timescale 1ns / 1ps


module buff(po,go,p,g);
input p,g;
output po,go;

assign po=p;
assign go=g;


endmodule