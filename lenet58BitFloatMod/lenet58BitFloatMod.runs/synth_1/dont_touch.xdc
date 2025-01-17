# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/constraints.xdc

# IP: ip/lenetSynthMatlab_0_2/lenetSynthMatlab_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==lenetSynthMatlab_0 || ORIG_REF_NAME==lenetSynthMatlab_0} -quiet] -quiet

# IP: ip/image_ram/image_ram.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==image_ram || ORIG_REF_NAME==image_ram} -quiet] -quiet

# IP: ip/score_ram/score_ram.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==score_ram || ORIG_REF_NAME==score_ram} -quiet] -quiet

# IP: ip/clk_wiz_0/clk_wiz_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0} -quiet] -quiet

# XDC: ip/lenetSynthMatlab_0_2/constraints/lenetSynthMatlab_ooc.xdc

# XDC: ip/image_ram/image_ram_ooc.xdc

# XDC: ip/score_ram/score_ram_ooc.xdc

# XDC: ip/clk_wiz_0/clk_wiz_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: ip/clk_wiz_0/clk_wiz_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==clk_wiz_0 || ORIG_REF_NAME==clk_wiz_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: ip/clk_wiz_0/clk_wiz_0_ooc.xdc
