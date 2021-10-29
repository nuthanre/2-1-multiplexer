module mux_buf(out, in1, in2, s); // realization of 2:1 MUX using bufif1 and bufif0

output out;                   // port declarations
input in1, in2, s;


bufif1 (out, in1, s);    
bufif0 (out, in2, s);

endmodule
