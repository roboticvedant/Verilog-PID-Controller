`timescale 1ns / 1ps

module pid_tb( );
    reg  clk = 0;
    reg  rst_n = 0;
    reg  [15:0] setpoint = 0;
    reg  [15:0] feedback = 0;
    reg  [15:0] Kp = 0;
    reg  [15:0] Ki = 0;
    reg  [15:0] Kd = 0;
    reg  [15:0] clk_prescaler = 0;
    wire [15:0] control_signal;

    pid_controller DUT(.clk(clk),.rst_n(rst_n),.setpoint(setpoint),.feedback(feedback),.Kp(Kp),.Ki(Ki),.Kd(Kd),.clk_prescaler(clk_prescaler),.control_signal(control_signal));

    initial begin
        rst_n <= 0; // Assert reset
        clk_prescaler <= 5; 
        setpoint <= 20;
        Kp <= 5;
        Ki <= 2;
        Kd <= 1;
        #20 rst_n <= 1; // Deassert reset
    end

    always #1 clk = ~clk;

    always begin
    $monitor("Control signal is %d",control_signal);
        #20 feedback <= 1;
        #15 feedback <= 5;
        #15 feedback <= 8;
        #15 feedback <= 10; 
        #15 feedback <= 13;     
        #15 feedback <= 15;     
        #15 feedback <= 16;  
        #15 feedback <=25;   
        #25 $finish;
    end

endmodule
