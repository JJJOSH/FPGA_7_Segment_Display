
/*
	Project name: 
		Binary Adder to 7Segment Display
		
	Description:
		This is a parametrizable Nbit adder designed using the Verilog behavioural style.
		
		sum[N:0] = a[N-1:0] + b[N-1:0];
		
*/

module adder_nbit 
    // Parameters section
    #( parameter N = 3)
    // Ports section
    (input [N-1:0] a,
     input [N-1:0] b,
     output reg [N:0] sum);
    
    // Wildcard operator is best for the procedure's
    // sensitivity list (control list)
    always @(*) begin
       sum[N:0] = a[N-1:0] + b[N-1:0];
       //sum = a + b;
    end  
  
endmodule


