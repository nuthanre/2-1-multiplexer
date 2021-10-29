module mux_buftb();  //test bench for 2:1 MUX realization

reg in1, in2, s;
wire out;

mux_buf dut_b(.out(out), .in1(in1), .in2(in2), .s(s));

initial
 begin
	   s = 0; in1 = 1; in2 = 0;
	#1 s = 1; in1 = 1; in2 = 0;
	#1 s = 1; in1 = 0; in2 = 1;
	#1 s = 0; in1 = 0; in2 = 1;


	#1 $finish;
 end

initial
	$monitor($time , " ns s = %b, in1 = %b, in2 = %b, out = %b", s, in1, in2, out); // to print the output

initial
 begin
	$dumpfile("mux_buftb.vcd");
	$dumpvars;
 end

endmodule

