# Combinational design: virtual clock only used to measure in->out delay.
# Period is a budget, not a frequency. Delay = period - worst slack.
create_clock -name vclk -period 40.0
set_input_delay  0.0 -clock vclk [all_inputs]
set_output_delay 0.0 -clock vclk [all_outputs]
set_load 0.02 [all_outputs]
