module fanout (a, b, c, d, se1,ce1,se2,ce2,se3,ce3,se4,ce4,se5,ce5,se6,ce6,se7,ce7,se8,ce8,se9,ce9,se10,ce10, sf1,cf1,sf2,cf2,sf3,cf3,sf4,cf4,sf5,cf5,sf6,cf6,sf7,cf7,sf8,cf8,sf9,cf9,sf10,cf10);

input a, b, c, d; 

output se1,ce1,se2,ce2,se3,ce3,se4,ce4,se5,ce5,se6,ce6,se7,ce7,se8,ce8,se9,ce9,se10,ce10;
  
output sf1,cf1,sf2,cf2,sf3,cf3,sf4,cf4,sf5,cf5,sf6,cf6,sf7,cf7,sf8,cf8,sf9,cf9,sf10,cf10;

wire  e;

wire  f;

assign e = a & b;
assign f = c & d;
  
  HA e1 (se1,ce1,e,1'b1);
  HA e2 (se2,ce2,e,1'b1);
  HA e3 (se3,ce3,e,1'b1);
  HA e4 (se4,ce4,e,1'b1);
  HA e5 (se5,ce5,e,1'b1);
  HA e6 (se6,ce6,e,1'b1);
  HA e7 (se7,ce7,e,1'b1);
  HA e8 (se8,ce8,e,1'b1);
  HA e9 (se9,ce9,e,1'b1);
  HA e10 (se10,ce10,e,1'b1);  
  
  HA f1 (sf1,cf1,f,1'b1);
  HA f2 (sf2,cf2,f,1'b1);
  HA f3 (sf3,cf3,f,1'b1);
  HA f4 (sf4,cf4,f,1'b1);
  HA f5 (sf5,cf5,f,1'b1);
  HA f6 (sf6,cf6,f,1'b1);
  HA f7 (sf7,cf7,f,1'b1);
  HA f8 (sf8,cf8,f,1'b1);
  HA f9 (sf9,cf9,f,1'b1);
  HA f10 (sf10,cf10,f,1'b1); 
  
endmodule

module HA(s,c,x,y);
input x,y;
output s,c;
xor (s,x,y);
and (c,x,y);
endmodule


