// Make Net colored again after beating game
.org off0x0802A8B4
	ldr		r0,=NetColor_CheckGameClear|1
	bx		r0
	.pool
