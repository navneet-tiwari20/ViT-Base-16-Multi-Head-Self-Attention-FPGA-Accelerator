# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten mhsa_top/load_kv
set_directive_array_partition mhsa_top/EXP_LUT -dim=1 -type=complete EXP_LUT
set_directive_array_partition mhsa_top/RES_LUT -dim=1 -type=complete RES_LUT
