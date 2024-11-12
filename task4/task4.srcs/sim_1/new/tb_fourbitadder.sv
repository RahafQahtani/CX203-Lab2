`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:36:49 PM
// Design Name: 
// Module Name: tb_fourbitadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fourbitadder;
logic [8:0] SW;
logic [4:0] LED;
// Instantiate the andgate module

//fourbit_adder dut(
//.SW(SW),
//.LED(LED)
//);
//
logic [3:0] A,B,S;
logic Cin,Cout; 

fourbit_adder dut(.A(A),.B(B),.M(Cin),.S(S),.Cout(Cout));

//assign 
/*assign SW [7:4]= A [3:0];
assign SW [3:0]= B [3:0];
assign SW[8] = Cin;

assign S[3:0]=LED[3:0];
assign Cout =LED[4];
*/
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t f");
$display("------------------------");
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 0; A[1]= 0; A[0]= 0;B[3]= 0;B[2]= 0;B[1]= 0;B[0]= 0;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 0; A[1]= 0; A[0]= 1;B[3]= 0;B[2]= 0;B[1]= 0;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 0; A[1]= 1; A[0]= 0;B[3]= 0;B[2]= 0;B[1]= 1;B[0]= 0;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 0; A[1]= 1; A[0]= 1;B[3]= 0;B[2]= 0;B[1]= 1;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 1; A[1]= 0; A[0]= 0;B[3]= 0;B[2]= 1;B[1]= 0;B[0]= 0;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 0; A[2]= 1; A[1]= 0; A[0]= 1;B[3]= 0;B[2]= 1;B[1]= 0;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 1; A[2]= 0; A[1]= 0; A[0]= 1;B[3]= 1;B[2]= 0;B[1]= 0;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 1; A[2]= 1; A[1]= 0; A[0]= 0;B[3]= 1;B[2]= 1;B[1]= 0;B[0]= 0;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=0; A[3]= 1; A[2]= 1; A[1]= 1; A[0]= 0;B[3]= 1;B[2]= 1;B[1]= 1;B[0]= 0;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
// Apply test vectors with $display statements
Cin=1; A[3]= 1; A[2]= 1; A[1]= 1; A[0]= 1;B[3]= 1;B[2]= 1;B[1]= 1;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);
//Apply test vectors with $display statements
Cin=1; A[3]= 1; A[2]= 0; A[1]= 0; A[0]= 1;B[3]= 1;B[2]= 0;B[1]= 0;B[0]= 1;  #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b%\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, Cin, A[3], A[2], A[1], A[0],B[3],B[2],B[1],B[0], S[3],S[2],S[1],S[0],Cout);


// End simulation
$finish;
end
endmodule
