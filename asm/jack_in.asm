// Restore Jack In animation
.org off0x08029900
	ldr		r0,=JackIn_FadeIn|1
	bx		r0
	.pool

.org off0x08029924
	ldr		r4,=JackIn_Animation|1
	mov		r14,r15
	bx		r4
	b		off0x08029930
	.pool

.org off0x08029934
	ldr		r1,=JackIn_FadeOut|1
	bx		r1
	.pool

.org off0x0802999C
	dw		0x340,0x540

.org off0x080299AC
	dw		JackIn_Frames
