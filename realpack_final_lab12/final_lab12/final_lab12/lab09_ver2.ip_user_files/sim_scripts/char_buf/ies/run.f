-makelib ies_lib/xpm -sv \
  "H:/For_Vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "H:/For_Vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab09_ver2.gen/sources_1/ip/char_buf/sim/char_buf.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

