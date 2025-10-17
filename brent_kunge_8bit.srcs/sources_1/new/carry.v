`timescale 1ns / 1ps


module carry(c,g,p,ci);

input g,p,ci;
output c;
wire pi;
and(pi,p,ci);
or(c,g,pi);
endmodule

