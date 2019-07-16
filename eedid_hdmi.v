`default_nettype none
`include "setup.v"

module eedid_hdmi (
	// CLOCK
	input  wire       CLK_50MHZ,        // 100MHz system clock signal
	// SWITCH
	input  wire       BTN_RESET_N,
	// EDID I2C
	input  wire       RX0_SCL,
	inout  wire       RX0_SDA
);

i2c_edid i2c_edid_inst_0 (
	.clk(CLK_50MHZ),
	.rst(~BTN_RESET_N),
	.scl(RX0_SCL),
	.sda(RX0_SDA)
);

endmodule // top
`default_nettype wire
