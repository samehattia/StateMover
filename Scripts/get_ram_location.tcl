set lutrams [get_cells -quiet -hierarchical -filter { PRIMITIVE_TYPE =~ CLB.LUTRAM.* && PRIMITIVE_LEVEL != "INTERNAL"}]
set srls [get_cells -quiet -hierarchical -filter { PRIMITIVE_TYPE =~ CLB.SRL.* }]
set brams [get_cells -quiet -hierarchical -filter { PRIMITIVE_TYPE =~ BLOCKRAM.BRAM.* }]

foreach lutram $lutrams {
	puts -nonewline $lutram
	puts -nonewline " "
	puts -nonewline [get_property REF_NAME [get_cell $lutram]]
	puts -nonewline " "
	puts -nonewline [get_property LOC [get_cell $lutram]]
	puts -nonewline " "
	puts [get_property BEL [get_cell $lutram]]
}

foreach srl $srls {
	puts -nonewline $srl
	puts -nonewline " "
	puts -nonewline [get_property REF_NAME [get_cell $srl]]
	puts -nonewline " "
	puts -nonewline [get_property LOC [get_cell $srl]]
	puts -nonewline " "
	puts [get_property BEL [get_cell $srl]]
}

foreach bram $brams {
	puts -nonewline $bram
	puts -nonewline " "
	puts -nonewline [get_property REF_NAME [get_cell $bram]]
	puts -nonewline " "
	puts -nonewline [get_property LOC [get_cell $bram]]
	puts -nonewline " "
	puts [get_property BEL [get_cell $bram]]
}