.gba
.if ROM_IN == ROM_OUT
	.open ROM_IN,0x8000000
.else
	.open ROM_IN,ROM_OUT,0x8000000
.endif

GAME_CODE equ readascii(ROM_IN, 0xAC, 4)
.if GAME_CODE == "A6BE"
	.include "offsets_white-us.asm"
.endif
.if GAME_CODE == "A3XE"
	.include "offsets_blue-us.asm"
.endif


.include "asm/jack_in.asm"
.include "asm/navicust_compress.asm"
.include "asm/navicust_intro.asm"
.include "asm/net_color.asm"
.include "asm/gameover.asm"


.org FREE_SPACE


.include "asm/jack_in.ext.asm"
.include "asm/navicust_intro.ext.asm"
.include "asm/net_color.ext.asm"
.include "asm/gameover.ext.asm"


.close
