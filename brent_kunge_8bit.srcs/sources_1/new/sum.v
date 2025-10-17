`timescale 1ns / 1ps

module sum(s,p,c);

input p,c;
output s;

xor(s,p,c);


endmodule