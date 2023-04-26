module mux_tb;

wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;
reg e;
reg f;
reg g;
reg h;
reg s2, s3;
reg x;


mux name(.a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1), .e(e), .f(f), .g(g), .h(h), .s2(s2), .s3(s3), . out(out), .x(x));
 initial
 begin

 a=1'b0; b=1'b0; c=1'b0; d=1'b0;
 s0=1'b0; s1=1'b0;
 e=1'b0; f=1'b0; g=1'b0; h=1'b0;
 s2=1'b0; s3=1'b0;
 x=1'b0;
 #500 $finish;

end

always #40 a=~a;
always #20 b=~b;
always #10 c=~c;
always #5 d=~d;
always #100 s0=~s0;
always #170 s1=~s1;

always #80 e=~e;
always #40 f=~f;
always #25 g=~g;
always #55 h=~h;
always #130 s2=~s2;
always #200 s3=~s3;
always #100 x=~x; 

always@(a or b or c or d or s0 or s1 or e or f or g or h or s2 or s3 or x or out) 
$monitor("At time = %t, Output = %d", $time, out);

endmodule;
