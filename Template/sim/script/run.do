vlib work
vlog ../../rtl/#{DESIGN_NAME}.sv
vlog ../../tb/#{DESIGN_NAME}_tb.sv
vsim -t 1ps -voptargs="+acc" work.#{DESIGN_NAME}_tb -wlf #{DESIGN_NAME}.wlf 
log -r *
run -all