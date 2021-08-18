
extern void csr_sim_register();

/**
 * Required structure for initializing VPI routines.
 */
void (*vlog_startup_routines[])() = {
	csr_sim_register,
	0
};