module mux ( a, b, c, d, s0, s1, e, f, g, h, s2, s3, out, x);

input wire a, b, c, d, e, f, g, h;
input wire s0, s1, s2, s3, x;
reg out1, out2;
output reg out;

always @ (a or b or c or d or s0, s1)
begin

case ({s0, s1})
2'b00 : out1 = a;
2'b01 : out1 = b;
2'b10 : out1 = c;
2'b11 : out1 = d;
endcase
end
always @ (e or f or g or h or s2, s3)
begin

case ({s2, s3})
2'b00 : out2 = e;
2'b01 : out2 = f;
2'b10 : out2 = g;
2'b11 : out2 = h;
endcase
end

always @ (out1 or out2 or x)
begin

case (x)
1'b0 : out = out1;
1'b1 : out = out2;
endcase
end
endmodule
