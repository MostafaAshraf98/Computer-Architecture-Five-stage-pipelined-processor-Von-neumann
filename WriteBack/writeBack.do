vsim -gui work.write_back
# vsim -gui work.write_back 
# Start time: 12:05:17 on May 25,2022
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.write_back(arch_wb)
# Loading work.mux2(arch1)
add wave -position insertpoint  \
sim:/write_back/alu \
sim:/write_back/memory \
sim:/write_back/rst \
sim:/write_back/hw_int \
sim:/write_back/mem_alu_to_reg \
sim:/write_back/write_value \
sim:/write_back/sel_value
force -freeze sim:/write_back/alu 16#00000001 0
force -freeze sim:/write_back/memory 16#00000010 0
force -freeze sim:/write_back/rst 0 0
force -freeze sim:/write_back/hw_int 0 0
force -freeze sim:/write_back/mem_alu_to_reg 0 0
run
force -freeze sim:/write_back/hw_int 1 0
run
run

