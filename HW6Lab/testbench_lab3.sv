`timescale 1ns/10ps

module testbench_lab3 ();

    	logic [1:0] a2, b2, s2;
    	logic [7:0] a8, b8, s8;
	logic co2, co8;

    //Instantiation cla_adder of 2 bits
    cla_adder #(.N(2)) UUT2 (
    .a(a2),
    .b(b2),
    .c_in(1'b0), 
    .s(s2),
    .c_out(co2)

    );
    //Instantiation of cla_adder of 8 bits
    cla_adder #(.N(8)) UUT8 (
    .a(a8),
    .b(b8),
    .c_in(1'b0), 
    .s(s8), 
    .c_out(co8)
);

// COMPLETE BY WRITING AN INITIAL BLOCK FOR b. 
// Set initial value for b equal to 0 and increment b every 20 time units


    initial begin 

		a2 = 0;
		forever
			#10 a2++;
	end


	initial begin 

		a8 = 0;
		forever
			#10 a8+=3;
	end


	initial begin 

		b2 = 0;
		forever
			#40 b2++;
	end


	initial begin 

		b8 = 0;
		forever
			#10 b8+=5;
	end

	initial 
		# 160 $finish();

endmodule
