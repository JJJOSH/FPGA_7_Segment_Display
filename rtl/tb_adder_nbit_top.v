
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
module tb_adder_nbit_top();
	
	// Testbench variables
	localparam N = 3;
    reg  [N-1:0] i_a;
    reg  [N-1:0] i_b;
    wire [N:0] o_sum;
	wire [6:0] o_HEX;
	
    integer i, j; 
	
	// Instantiate the Design Under Test (DUT)
    adder_nbit_top #(.N(3))
		ADD_TOP0
    (.i_a  (i_a  ),
     .i_b  (i_b  ),
     .o_sum(o_sum),
	 .o_HEX(o_HEX)
	);
  
    // Create stimulus
    initial begin
        $monitor($time, " i_a = %d, i_b = %d, o_sum = %d", i_a, i_b, o_sum);
        #1; i_a = 0; i_b = 0;
        for (i = 0; i<2**N; i=i+1) begin
		    for (j = 0; j<2**N; j=j+1) begin
				#1; i_a = i; i_b = j;
			end
        end
		
		#1; $stop;
    end
  
endmodule