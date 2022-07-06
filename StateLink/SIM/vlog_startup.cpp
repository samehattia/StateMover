
#ifdef CSR_SIM
extern void csr_sim_register();
#endif

extern void axi_sniffer_register(), axis_sniffer_register();

/**
 * Required structure for initializing VPI routines.
 */
void (*vlog_startup_routines[])() = {
#ifdef CSR_SIM
	csr_sim_register,
#endif
	axi_sniffer_register,
	axis_sniffer_register,
	0
};