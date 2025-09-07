.align 2
NetColor_CheckGameClear:
	push	r14
	ldr		r0,=off0x0200A30A
	ldrb	r0,[r0]
	cmp		r0,0x80
	bge		@@end
	mov		r0,0xA
	mov		r1,0x6
	mov		r2,r15
	add		r2,0x7
	mov		r14,r2
	ldr		r2,=off0x08021D41
	bx		r2
	ldr		r0,=off0x0802A8BF
	bx		r0

@@end:
	pop		r15
	.pool
