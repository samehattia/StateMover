Interruption_logic:
V1: For designs with no TI_Wrappers and don't use StateReveal
	2 VIO Ports: Breakpoint(32) - clk_en
	il_vio_2: 127 LUTs and 329 FFs

V2: For designs with TI_Wrappers and don't use StateReveal
	4 VIO Ports: Breakpoint(32) - clk_en - ti_req - pr_done
	il_vio_4: 128 LUTs and 338 FFs

V3: For designs with no TI_Wrappers but use StateReveal (output capture approach)
	3 VIO Ports: Breakpoint(32) - clk_en - clk_step
	il_vio_4: 128 LUTs and 338 FFs

V4: For designs with no TI_Wrappers but use StateReveal (output and input capture approach)
	4 VIO Ports: Breakpoint(32) - clk_en - clk_step - clk_step_1
	il_vio_4: 128 LUTs and 338 FFs

V5: For designs with TI_Wrappers and use StateReveal
	6 VIO Ports: Breakpoint(32) - clk_en - ti_req - pr_done - clk_step - clk_step_1
	il_vio_6: 142 LUTs and 345 FFs

V6: For designs with TI_Wrappers and use StateReveal and have multiple clocks
	6 VIO Ports: Breakpoint(32) - clk_en - ti_req - pr_done - clk_step - clk_step_1
	il_vio_6: 142 LUTs and 345 FFs
