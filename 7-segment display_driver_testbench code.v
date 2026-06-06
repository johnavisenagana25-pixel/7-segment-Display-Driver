// Testbench for 7-Segment Display
module testbench;

// Input
reg [3:0] num;

// Output
wire [6:0] seg;

// Instantiate module
seven_segment uut(

    .num(num),

    .seg(seg)

);

initial begin

    // Generate waveform
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    // Monitor outputs
    $monitor(
    "Number=%b Segment=%b",
    num,seg
    );

    // Display 0
    num = 4'b0000;
    #10;

    // Display 1
    num = 4'b0001;
    #10;

    // Display 2
    num = 4'b0010;
    #10;

    // Display 3
    num = 4'b0011;
    #10;

    // Display 4
    num = 4'b0100;
    #10;

    // Display 5
    num = 4'b0101;
    #10;

    // Display 6
    num = 4'b0110;
    #10;

    // Display 7
    num = 4'b0111;
    #10;

    // Display 8
    num = 4'b1000;
    #10;

    // Display 9
    num = 4'b1001;
    #10;

    // End simulation
    $finish;

end

endmodule
