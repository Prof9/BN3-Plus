.align 2
NaviCustIntro_Prepare1:
	push	r4-r7,r14

	ldr		r0,=off0x08001CB1
	mov		r14,r15
	bx		r0
	ldr		r0,=off0x08001D09
	mov		r14,r15
	bx		r0

	ldr		r0,=@petTiles
	ldr		r1,=off0x02010800
	swi		0x11

	ldr		r0,=off0x02010800
	ldr		r1,=off0x06008040
	ldr		r2,=@petTiles
	ldr		r2,[r2]
	lsr		r2,r2,0xA
	mov		r3,0x3
	ldr		r4,=0x84000000
	ldr		r5,=off0x080009C9
	mov		r14,r15
	bx		r5

	mov		r0,0x8
	ldr		r1,=off0x080009F5

	ldr		r0,=@bgTiles
	ldr		r1,=off0x02010800
	swi		0x11

	ldr		r0,=off0x02010800
	ldr		r1,=off0x06000020
	ldr		r2,=@bgTiles
	ldr		r2,[r2]
	lsr		r2,r2,0xA
	mov		r3,0x3
	ldr		r4,=0x84000000
	ldr		r5,=off0x080009C9
	mov		r14,r15
	bx		r5

	mov		r0,0x8
	ldr		r1,=off0x080009F5

	ldr		r0,=@letterTiles
	ldr		r1,=off0x02010800
	swi		0x11

	ldr		r0,=@palettes
	ldr		r1,=off0x02009810
	mov		r2,0x80
	ldr		r3,=off0x08000B7D
	mov		r14,r15
	bx		r3

	mov		r0,r10
	ldr		r0,[r0,0x5C]
	mov		r1,0x2
	lsl		r1,r1,0xB
	add		r1,r1,r0
	ldr		r0,=@animData2
	mov		r2,0x80
	lsl		r2,r2,0x1
	ldr		r3,=off0x08000B7D
	mov		r14,r15
	bx		r3

	mov		r0,0x0
	mov		r1,0x0
	mov		r2,0x1
	ldr		r3,=@bgMap
	mov		r4,0x1E
	mov		r5,0x14
	ldr		r6,=off0x08001DB1
	mov		r14,r15
	bx		r6

	pop		r4-r7,r15
	.pool

.align 2
NaviCustIntro_Prepare2:
	strh	r1,[r0,0x10]
	strh	r1,[r0,0x12]
	strh	r1,[r0,0x14]
	strh	r1,[r0,0x16]
	strh	r1,[r0,0x18]
	strh	r1,[r0,0x1A]
	ldr		r0,[r7,0x38]
	mov		r1,0x3F
	strb	r1,[r0,0x8]
	mov		r1,0x11
	strb	r1,[r0,0xA]
	mov		r1,0x0
	strb	r1,[r0,0x1]
	mov		r1,0x0
	strb	r1,[r0,0x5]
	mov		r1,0xF0
	strb	r1,[r0]
	mov		r1,0xA0
	strb	r1,[r0,0x4]
	mov		r15,r14

.align 2
NaviCustIntro_Prepare3:
	mov		r0,0x25
	ldr		r1,=off0x080005D9
	mov		r14,r15
	bx		r1
	ldr		r0,=off0x0802BCE9
	mov		r14,r15
	bx		r0
	ldr		r0,=off0x08047818
	ldr		r1,=off0x0802BC59
	mov		r14,r15
	bx		r1
	mov		r0,0x4
	ldr		r1,=off0x080478D9
	bx		r1
	.pool

.align 2
NaviCustIntro_Animation:
	push	r14

	ldr		r0,=@states
	ldrb	r1,[r5,0x1]
	ldr		r0,[r0,r1]
	mov		r14,r15
	bx		r0

	bl		@animation2
	pop		r15
	.pool

.align 4
@states:
	dw		@state00|1b
	dw		@state01|1b
	dw		@state02|1b
	dw		@state03|1b
	dw		@state04|1b
	dw		@state05|1b
	dw		@state06|1b
	dw		@state07|1b
	dw		@state08|1b
	dw		@state09|1b
	dw		@state0A|1b
	dw		0
	dw		0
	dw		0
	dw		0
	dw		0
	dw		@state10|1b

.align 2
@state00:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x10
	blt		@@end

	mov		r0,0x3
	mov		r1,0x8
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]
@@end:
	bl		NaviCustSubEnd
	pop		r15
	.pool

.align 2
@state01:
	push	r14
	ldr		r0,=off0x080052C9
	mov		r14,r15
	bx		r0
	beq		@@end

	mov		r0,0x0
	strh	r0,[r5,0x4]

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]
@@end:
	bl		NaviCustSubEnd
	pop		r15
	.pool

.align 2
@state02:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x30
	blt		@@end

	mov		r0,0x0
	strh	r0,[r5,0x4]

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]
@@end:
	bl		NaviCustSubEnd
	pop		r15
	.pool

.align 2
@state03:
	push	r14

	mov		r7,r10
	ldr		r0,[r7,0x10]
	ldr		r1,=0x3F41
	strh	r1,[r0]
	mov		r0,0x40
	lsl		r0,r0,0x8
	str		r0,[r5,0x8]
	str		r0,[r5,0xC]
	mov		r0,0x50
	neg		r0,r0
	strh	r0,[r5,0x10]
	mov		r0,0x4A
	strh	r0,[r5,0x12]
	mov		r0,0x1
	lsl		r0,r0,0x8
	strh	r0,[r5,0x14]
	strh	r0,[r5,0x16]
	mov		r0,0x0
	lsl		r0,r0,0x8
	strh	r0,[r5,0x18]
	ldr		r0,=0x11D
	ldr		r1,=off0x080005B9
	mov		r14,r15
	bx		r1
	mov		r0,0x0
	strh	r0,[r5,0x4]

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]
@@end:
	bl		NaviCustSubEnd
	pop		r15
	.pool

.align 2
@state04:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x10
	blt		@@end

	mov		r0,0x0
	strh	r0,[r5,0x4]

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]

@@end:
	mov		r1,0xA
	mul		r4,r1
	mov		r0,0x50
	neg		r0,r0
	add		r0,r0,r4
	strh	r0,[r5,0x10]
	bl		NaviCustSubEnd2
	pop		r15
	.pool

.align 2
@state05:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x84
	bne		@@skip
	ldr		r0,=off0x0802BCE9
	mov		r14,r15
	bx		r0

@@skip:
	cmp		r4,0xA0
	blt		@@end
	ldr		r0,=0x142
	ldr		r1,=off0x080005B9
	mov		r14,r15
	bx		r1
	mov		r0,0x0
	strh	r0,[r5,0x4]

	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]
@@end:
	bl		NaviCustSubEnd2
	pop		r15
	.pool

.align 2
@state06:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x2
	strh	r4,[r5,0x4]
	cmp		r4,0x20
	blt		@@end

	mov		r0,0x0
	strh	r0,[r5,0x4]
	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]

@@end:
	ldrh	r0,[r5,0x18]
	lsl		r1,r4,0x7
	add		r0,r0,r1
	strh	r0,[r5,0x18]
	ldrh	r0,[r5,0x14]
	lsl		r1,r4,0x0
	sub		r0,r0,r1
	strh	r0,[r5,0x14]
	strh	r0,[r5,0x16]
	bl		NaviCustSubEnd2
	pop		r15
	.pool

.align 2
@state07:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x10
	blt		@@end

	mov		r0,0x4
	mov		r1,0x20
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r7,r10
	ldr		r0,[r7,0x38]
	mov		r1,0x3F
	strb	r1,[r0,0x8]
	mov		r1,0x1
	strb	r1,[r0,0xA]
	mov		r0,0x0
	strh	r0,[r5,0x4]
	ldrb	r0,[r5,0x1]
	add		r0,0xC
	strb	r0,[r5,0x1]

@@end:
	bl		NaviCustSubEnd2
	pop		r15
	.pool

.align 2
@state08:
	push	r14
	ldrh	r4,[r5,0x4]
	add		r4,0x18
	strh	r4,[r5,0x4]
	cmp		r4,0x50
	blt		@@end
	mov		r4,0x4F
	mov		r0,0x0
	strh	r0,[r5,0x4]
	ldrb	r0,[r5,0x1]
	add		r0,0x4
	strb	r0,[r5,0x1]

@@end:
	mov		r0,r10
	ldr		r0,[r0,0x38]
	mov		r1,0x0
	add		r1,r1,r4
	strb	r1,[r0,0x5]
	mov		r1,0x9F
	sub		r1,r1,r4
	strb	r1,[r0,0x4]
	bl		NaviCustSubEnd2
	pop		r15
	.pool

.align 2
@state09:
	push	r14
	ldr		r0,=off0x080052C9
	mov		r14,r15
	bx		r0
	beq		@@end
	mov		r0,0x4
	mov		r1,0xFF
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,0x8
	strb	r0,[r5]

@@end:
	pop		r15
	.pool

.align 2
@state0A:
	push	r14
	ldr		r0,=off0x080052C9
	mov		r14,r15
	bx		r0
	beq		@@end
	mov		r0,0x4
	mov		r1,0xFF
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,0x8
	strb	r0,[r5]

@@end:
	pop		r15
	.pool

.align 2
@state10:
	push	r14
	ldr		r0,=0x80052C9
	mov		r14,r15
	bx		r0
	beq		@@end
	ldrh	r4,[r5,0x4]
	add		r4,0x1
	strh	r4,[r5,0x4]
	cmp		r4,0x14
	blt		@@end

	mov		r0,0x4
	mov		r1,0x10
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,0x8
	strb	r0,[r5]

@@end:
	pop		r15
	.pool

.align 2
NaviCustSubEnd:
	push	r4-r7,r14
	mov		r7,r10
	ldr		r7,[r7,0x4]
	ldrh	r0,[r7,0x2]
	mov		r1,0x3
	tst		r1,r0
	beq		@@end

	mov		r0,0x0
	strh	r0,[r5,0x4]
	mov		r0,0x4
	strb	r0,[r5]
	mov		r0,0x40
	strb	r0,[r5,0x1]
	mov		r0,0x3
	mov		r1,0xFF
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,r10
	ldr		r0,[r0,0x10]
	ldr		r1,=0x3F41
	strh	r1,[r0]
	mov		r0,0x40
	lsl		r0,r0,0x8
	str		r0,[r5,0x8]
	str		r0,[r5,0xC]
	mov		r0,0x50
	strh	r0,[r5,0x10]
	mov		r0,0x4A
	strh	r0,[r5,0x12]
	mov		r0,0x10
	lsl		r0,r0,0x4
	strh	r0,[r5,0x14]
	strh	r0,[r5,0x16]
	mov		r0,0x0
	lsl		r0,r0,0x8
	strh	r0,[r5,0x18]
	mov		r0,r10
	ldr		r0,[r0,0x38]
	mov		r1,0x0
	strb	r1,[r0,0x1]
	mov		r1,0xF0
	strb	r1,[r0]
	mov		r1,0x0
	strb	r1,[r0,0x5]
	mov		r1,0xA0
	strb	r1,[r0,0x4]
	mov		r0,0x1
	strb	r0,[r5,0x3]

@@end:
	pop		r4-r7,r15
	.pool

.align 2
NaviCustSubEnd2:
	push	r4-r7,r14
	mov		r7,r10
	ldr		r7,[r7,0x4]
	ldrh	r0,[r7,0x2]
	mov		r1,0x3
	tst		r1,r0
	beq		@@end

	mov		r0,0x8
	strb	r0,[r5]
	mov		r0,0x4
	mov		r1,0x10
	ldr		r2,=off0x08005289
	mov		r14,r15
	bx		r2
	mov		r0,0x1
	strb	r0,[r5,0x3]

@@end:
	pop		r4-r7,r15
	.pool

.align 2
@animation2:
	push	r14
	ldr		r0,=off0x0802BC75
	mov		r14,r15
	bx		r0
	ldr		r0,=off0x0802BCA1
	mov		r14,r15
	bx		r0

	mov		r0,r5
	add		r0,0x8
	mov		r1,r10
	ldr		r1,[r1,0x10]
	add		r1,0x1C
	mov		r2,0x1
	swi		0xE
	bl		@animation3
	pop		r15
	.pool

.align 2
@animation3:
	push	r4-r7,r14
	ldrh	r0,[r5,0x6]
	add		r4,r0,0x1
	ldr		r1,=@animData1
	ldrb	r2,[r1,r0]
	cmp		r2,0xFF
	bne		@@continue
	mov		r4,0x1
	ldrb	r2,[r1]

@@continue:
	lsl		r2,r2,0x5
	ldr		r0,=@palettes
	add		r0,r0,r2
	add		r0,0x60
	ldr		r1,=off0x02009870
	mov		r2,0x20
	ldr		r6,=off0x08000B7D
	mov		r14,r15
	bx		r6
	strh	r4,[r5,0x6]
	pop		r4-r7,r15
	.pool

.align 1
@animData1:
	db		0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
	db		0x02,0x02,0x02,0x02,0x03,0x03,0x03,0x03,0x04,0x04,0x04,0x04,0x05,0x05,0x05,0x05
	db		0x06,0x06,0x06,0x06,0x07,0x07,0x07,0x07,0x08,0x08,0x08,0x08,0x09,0x09,0x09,0x09
	db		0x0A,0x0A,0x0A,0x0A,0x0B,0x0B,0x0B,0x0B,0xFF

.align 4
@petTiles:
	.import	"imports/navicust/petset.bin"
.align 4
@bgTiles:
	.import	"imports/navicust/bgset.bin"
.align 4
@letterTiles:
	.import	"imports/navicust/letterset.bin"
.align 4
@palettes:
	.import	"imports/navicust/palettes.bin"
.align 4
@animData2:
	.import	"imports/navicust/animdata.bin"
.align 4
@bgMap:
	.import	"imports/navicust/bgmap.bin"
