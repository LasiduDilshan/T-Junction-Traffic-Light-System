//`timescale 1ns / 1ps

module traffic_controller(
    output reg [2:0] w_to_e, // West to East light
    output reg [2:0] w_to_n, // West to North light
    output reg [2:0] e_to_w, // East to West light
    output reg [2:0] e_to_n, // East to North light
    output reg [2:0] n_to_e, // North to East light
    output reg [2:0] n_to_w, // North to West light
    input wire clk,
    input wire rst
);

    // Define states
    parameter [2:0] PHASE1 = 3'b000;
    parameter [2:0] PHASE2 = 3'b001;
    parameter [2:0] PHASE3 = 3'b010;
    
    parameter [2:0] RED = 3'b100;
    parameter [2:0] YELLOW = 3'b010;
    parameter [2:0] GREEN = 3'b001;
    parameter [2:0] RED_YELLOW = 3'b110;

    // Sub-state transitions within each phase
    parameter [1:0] RY = 2'b00; // Red-Yellow
    parameter [1:0] G = 2'b01;  // Green
    parameter [1:0] Y = 2'b10;  // Yellow
    parameter [1:0] R = 2'b11;  // Red

    reg [2:0] state;
    reg [1:0] sub_state;
    reg [26:0] count; // Counter to keep track of time in each phase (27 bits to cover the range)

    // Count threshold for 2 seconds at 50MHz clock
    parameter [26:0] COUNT_THRESHOLD = 27'd100_000_000;

    // State transition logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= PHASE1;
            sub_state <= RY;
            count <= 27'b0;
        end else begin
            if (count >= COUNT_THRESHOLD - 1) begin
                count <= 27'b0;
                if (sub_state == R) begin
                    sub_state <= RY;
                    if (state != PHASE3)  state <= state + 1;
                    else state <= PHASE1; // Loop back to Phase 1 after Phase 3
                end else begin
                    sub_state <= sub_state + 1;
                end
            end else begin
                count <= count + 1;
            end
        end
    end
    
    // Output logic based on state and sub-state
    always @(state or sub_state) begin
        // Default all lights to RED
        w_to_e = RED;
        w_to_n = RED;
        e_to_w = RED;
        e_to_n = RED;
        n_to_e = RED;
        n_to_w = RED;

        case (state)
            PHASE1: begin
                case (sub_state)
                    RY: begin
                        w_to_e = RED_YELLOW;
                        e_to_w = RED_YELLOW;
                        e_to_n = RED_YELLOW;
                    end
                    G: begin
                        w_to_e = GREEN;
                        e_to_w = GREEN;
                        e_to_n = GREEN;
                    end
                    Y: begin
                        w_to_e = YELLOW;
                        e_to_w = YELLOW;
                        e_to_n = YELLOW;
                    end
                    R: begin
                        w_to_e = RED;
                        e_to_w = RED;
                        e_to_n = RED;
                    end
                endcase
            end
            PHASE2: begin
                case (sub_state)
                    RY: begin
                        w_to_e = RED_YELLOW;
                        w_to_n = RED_YELLOW;
                        n_to_w = RED_YELLOW;
                    end
                    G: begin
                        w_to_e = GREEN;
                        w_to_n = GREEN;
                        n_to_w = GREEN;
                    end
                    Y: begin
                        w_to_e = YELLOW;
                        w_to_n = YELLOW;
                        n_to_w = YELLOW;
                    end
                    R: begin
                        w_to_e = RED;
                        w_to_n = RED;
                        n_to_w = RED;
                    end
                endcase
            end
            PHASE3: begin
                case (sub_state)
                    RY: begin
                        n_to_e = RED_YELLOW;
                        n_to_w = RED_YELLOW;
                        e_to_n = RED_YELLOW;
                    end
                    G: begin
                        n_to_e = GREEN;
                        n_to_w = GREEN;
                        e_to_n = GREEN;
                    end
                    Y: begin
                        n_to_e = YELLOW;
                        n_to_w = YELLOW;
                        e_to_n = YELLOW;
                    end
                    R: begin
                        n_to_e = RED;
                        n_to_w = RED;
                        e_to_n = RED;
                    end
                endcase
            end
        endcase
    end

endmodule
