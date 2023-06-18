
/*
	Project name: 
		Binary Adder to 7Segment Display
		
	Description:
		Testbench for Switches to 7Segment Display
		
	Author: 
		Ovidiu Plugariu / www.ovisign.com
		
    Disclaimer: 
		Please note that all the source codes are provided "as-is" with no warranty for further usage.
		For further support or modification, please send an email to ovidiu@ovisign.com
*/

`timescale 1us/1ns
module tb_hex_7seg_decoder();
	
	// Testbench variables
    reg  [3:0]in;
    wire a, b, c, d, e, f, g;
    integer i; 
	
    // Instantiate the DUT 
	hex_7seg_decoder DEC_7SEG(
		.in(in),
		.o_a(a),
		.o_b(b),
		.o_c(c),
		.o_d(d),
		.o_e(e),
		.o_f(f),
		.o_g(g)
		//.dot(dot)
		);
  
    // Create stimulus
    initial begin
        $monitor($time, " in = %d, seven_seg_code = %7b ", 
                 in, {a, b, c, d, e, f, g});
        #1; in = 0;
        for (i = 0; i<16; i=i+1) begin
            #1; in = i;
        end
		
		#1; $stop;
    end
  
endmodule