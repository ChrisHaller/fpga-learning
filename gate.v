// Chapter 1, first circuit: one gate between two buttons and an LED.
module top (
    input wire btn1,
    input wire btn2,
    output wire led1,
    output wire led2,
    output wire led3
);
// On this board an LED lights up when its pin is LOW,
// so we invert the result of the gate before sending it out.
assign led1 = ~btn1;
assign led2 = ~btn2;
assign led3 = ~(btn1 & btn2);

endmodule
