module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [3:0] internet_line;

mux sender_mux(
        .A(sw[3:0]),       // CEO
        .B(sw[7:4]),       // You
        .C(sw[11:8]),      // Fred
        .D(sw[15:12]),     // Jill
        .Sel({btnU, btnL}),
        .Enable(btnC),
        .Y(internet_line)
);

demux receiver_demux(
        .In(internet_line),
        .Sel({btnR, btnD}),
        .Enable(btnC),
        .A(led[3:0]),       // Local library
        .B(led[7:4]),       // Fire department
        .C(led[11:8]),      // School
        .D(led[15:12])      // Rib shack
);

endmodule