// Restore Navi Customizer intro animation
.org off0x08047918
	ldr		r0,=NaviCustIntro_Prepare1|1
	bx		r0
	.pool

.org off0x080478AC
	ldr		r0,=NaviCustIntro_Prepare2|1
	mov		r14,r15
	bx		r0
	b		off0x080478B8
	.pool

.org off0x080478D0
	ldr		r0,=NaviCustIntro_Prepare3|1
	bx		r0
	.pool

.org off0x080478DC
	dw		0x3B41

.org off0x08047894
	dw		NaviCustIntro_Animation|1
