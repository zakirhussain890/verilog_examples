`include "ha.v"
module fa(a,b,cin,sum,co);
input a,b,cin;
output sum,co;
ha ins1(a,b,sum1,co1);
ha ins2(cin,sum1,sum,co2);
or(co,co1,co2);
endmodule