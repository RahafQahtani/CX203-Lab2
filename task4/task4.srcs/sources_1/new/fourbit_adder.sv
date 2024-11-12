//TASK5
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:15:35 PM
// Design Name: 
// Module Name: fourbit_adder
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


module fourbit_adder(
input logic [3:0] A ,
input logic [3:0] B ,
input logic M ,
output logic [3:0] S,
output logic Cout
);

//vribles 
logic [3:0]b;
logic [3:1] C;

xor b_0(b[0],B[0],M);
xor b_1(b[1],B[1],M);
xor b_2(b[2],B[2],M);
xor b_3(b[3],B[3],M);

//
fulladder1 fa1(.a(A[0]),.b(b[0]),.cin(M),.s(S[0]),.c(C[1]));
fulladder1 fa2(.a(A[1]),.b(b[1]),.cin(C[1]),.s(S[1]),.c(C[2]));
fulladder1 fa3(.a(A[2]),.b(b[2]),.cin(C[2]),.s(S[2]),.c(C[3]));
fulladder1 fa4(.a(A[3]),.b(b[3]),.cin(C[3]),.s(S[3]),.c(Cout));

endmodule





//TASK4

//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 11/12/2024 02:15:35 PM
//// Design Name: 
//// Module Name: fourbit_adder
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module fourbit_adder(
//input logic [8:0]SW ,
//output logic [4:0] LED
//);

////vribles 
//logic [3:0] A,B,S;
//logic Cin, Cout; 
//logic [2:0] C;

////assign 
//assign A [3:0]= SW [7:4];
//assign B [3:0]= SW [3:0];
//assign Cin = SW [8];
//assign LED[3:0] = S[3:0];
//assign  LED[4]=Cout;

////
//fulladder1 fa1(.a(A[0]),.b(B[0]),.cin(Cin),.s(S[0]),.c(C[0]));
//fulladder1 fa2(.a(A[1]),.b(B[1]),.cin(C[0]),.s(S[1]),.c(C[1]));
//fulladder1 fa3(.a(A[2]),.b(B[2]),.cin(C[1]),.s(S[2]),.c(C[2]));
//fulladder1 fa4(.a(A[3]),.b(B[3]),.cin(C[2]),.s(S[3]),.c(Cout));

//endmodule

