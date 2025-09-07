.align 2
JackIn_FadeIn:
	mov		r0,0x1
	mov		r1,0x10
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,0x4
	strb	r0,[r5,0x1]
	pop		r15

.align 2
JackIn_Animation:
	push	r14
	mov		r7,r10
	ldr		r4,[r7,0x10]
	strh	r1,[r4]

	ldr		r1,=off0x08029984
	ldr		r1,[r1,r0]

	push	r0,r1,r3,r5
	mov		r0,r2
	ldr		r1,=off0x02010800
	swi		0x11
	pop		r0,r1,r3,r5

	push	r0,r3,r5
	ldr		r0,=off0x02010800
	mov		r2,0x4B
	lsl		r2,r2,0x8
	ldr		r3,=off0x08000B7D
	mov		r14,r15
	bx		r3
	pop		r0,r3,r5

	ldr		r1,=off0x08029990
	ldr		r1,[r1,r0]
	mov		r0,r3
	mov		r2,0x20
	ldr		r3,=off0x08000B7D
	mov		r14,r15
	bx		r3

	ldrb	r0,[r5,0x2]
	add		r0,0x1
	strb	r0,[r5,0x2]
	pop		r15

.align 2
JackIn_FadeOut:
	strb	r0,[r5,0x1]
	mov		r0,0x0
	strb	r0,[r5,0x2]
	mov		r0,0x2
	mov		r1,0x40
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	ldr		r0,=off0x08029941
	mov		r14,r15
	bx		r0
	pop		r15
	.pool

.align 4
JackIn_Frames:
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		@frame4,@pal4
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		@frame4,@pal4
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		@frame4,@pal4
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		@frame4,@pal4
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		@frame4,@pal4
	dw		@frame0,@pal0
	dw		@frame1,@pal1
	dw		@frame2,@pal2
	dw		@frame3,@pal3
	dw		0xFFFFFFFF

.align 4
@pal0:
	.import	JACKIN_PAL0_PATH
.align 4
@pal1:
	.import	JACKIN_PAL1_PATH
.align 4
@pal2:
	.import	JACKIN_PAL2_PATH
.align 4
@pal3:
	.import	JACKIN_PAL3_PATH
.align 4
@pal4:
	.import	JACKIN_PAL4_PATH

.align 4
@frame0:
	.import	JACKIN_FRAME0_PATH
.align 4
@frame1:
	.import	JACKIN_FRAME1_PATH
.align 4
@frame2:
	.import	JACKIN_FRAME2_PATH
.align 4
@frame3:
	.import	JACKIN_FRAME3_PATH
.align 4
@frame4:
	.import	JACKIN_FRAME4_PATH
