`timescale 1ns / 1ps

module lab_5(
    input [3:0] A,
    output led1,
    output led2
    );
    
    assign led1 = ((~A[3] & ~A[2] & A[1] & A[0]) | (~A[3] & A[2] & A[1] & ~A[0]) | (A[3] & A[2] & A[1] & A[0]) | (A[3] & ~A[2] & ~A[1] & A[0]) | (A[3] & A[2] & ~A[1] & ~A[0]));
    assign led2 = ((A[1] & ~A[0]) | (A[2] & ~A[0]) | (A[3] & ~A[0]));
    
    
endmodule
