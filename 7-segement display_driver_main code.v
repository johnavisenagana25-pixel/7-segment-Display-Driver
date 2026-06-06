// 7-Segment Display Driver
module seven_segment(

    input [3:0] num,

    output reg [6:0] seg

);

// Segment control
always @(*)

begin

    case(num)

        // Display 0
        4'b0000:
        seg = 7'b1111110;

        // Display 1
        4'b0001:
        seg = 7'b0110000;

        // Display 2
        4'b0010:
        seg = 7'b1101101;

        // Display 3
        4'b0011:
        seg = 7'b1111001;

        // Display 4
        4'b0100:
        seg = 7'b0110011;

        // Display 5
        4'b0101:
        seg = 7'b1011011;

        // Display 6
        4'b0110:
        seg = 7'b1011111;

        // Display 7
        4'b0111:
        seg = 7'b1110000;

        // Display 8
        4'b1000:
        seg = 7'b1111111;

        // Display 9
        4'b1001:
        seg = 7'b1111011;

        // Default case
        default:
        seg = 7'b0000000;

    endcase

end

endmodule
