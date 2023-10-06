`timescale 1ns/1ns
module test_fa;

reg a,b,cin;
wire sum,co;

integer i;
fa dut(a,b,cin,sum,co);

initial
begin
$monitor($time,"a %b b %b cin %b sum %b co %b",a,b,cin,sum,co);
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#5;
end
#5;
$stop;
end

initial begin
$dumpvars(1);
$dumpfile("wave.vcd");
end

endmodule