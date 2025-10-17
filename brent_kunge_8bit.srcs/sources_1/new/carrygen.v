`timescale 1ns / 1ps

module carrygen(po,go,p,g,g1,p1);

input p,g,p1,g1;
output po,go;
wire gi;
and(po,p,p1);
and(gi,p,g1);
or(go,gi,g);

endmodule
