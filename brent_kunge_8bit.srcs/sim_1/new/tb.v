`timescale 1ns / 1ps

module eightbit_tb;

    
    reg [7:0] a, b;
    reg cin;
    wire [7:0] s;
    wire cout;

    
    eightbit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    
    initial begin
        
        $monitor("Time=%0d | a=%b | b=%b | cin=%b | sum=%b | cout=%b", $time, a, b, cin, s, cout);
       
       
        a = 8'b11111111; b = 8'b00000000; cin = 1; #10;   // Test case 1: Both inputs zero
        a = 8'b10000001; b = 8'b10000001; cin = 1; #10;   // Test case 2: Basic addition without carry
        a = 8'b11111110; b = 8'b00000001; cin = 1; #10;   // Test case 3: Basic addition with carry-in
        a = 8'b00001111; b = 8'b00000001; cin = 1; #10;   // Test case 4: Overflow case
        a = 8'b10000011; b = 8'b11000011; cin = 0; #10;   // Test case 5: All bits set, no carry-in
        a = 8'b10101010; b = 8'b01010101; cin = 0; #10;   // Test case 6: Alternating bits
         a = 8'b11111111; b = 8'b11111111; cin = 1; #10;
        a = 8'b11001100; b = 8'b00110011; cin = 1; #10;   // Test case 7: Alternating groups of 2 bits

        $stop; 
    end

endmodule
