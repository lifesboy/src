#objdump: -dr --prefix-addresses
#name: MIPS la-xgot
#as: -mips1 -KPIC -xgot
#source: la.s

# Test the la macro with -KPIC -xgot.

.*: +file format .*mips.*

Disassembly of section .text:
0+0000 <[^>]*> li	\$a0,0
0+0004 <[^>]*> li	\$a0,1
0+0008 <[^>]*> li	\$a0,0x8000
0+000c <[^>]*> li	\$a0,-32768
0+0010 <[^>]*> lui	\$a0,0x1
0+0014 <[^>]*> lui	\$a0,0x1
0+0018 <[^>]*> ori	\$a0,\$a0,0xa5a5
0+001c <[^>]*> li	\$a0,0
0+0020 <[^>]*> addu	\$a0,\$a0,\$a1
0+0024 <[^>]*> li	\$a0,1
0+0028 <[^>]*> addu	\$a0,\$a0,\$a1
0+002c <[^>]*> li	\$a0,0x8000
0+0030 <[^>]*> addu	\$a0,\$a0,\$a1
0+0034 <[^>]*> li	\$a0,-32768
0+0038 <[^>]*> addu	\$a0,\$a0,\$a1
0+003c <[^>]*> lui	\$a0,0x1
0+0040 <[^>]*> addu	\$a0,\$a0,\$a1
0+0044 <[^>]*> lui	\$a0,0x1
0+0048 <[^>]*> ori	\$a0,\$a0,0xa5a5
0+004c <[^>]*> addu	\$a0,\$a0,\$a1
0+0050 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*50: R_MIPS_GOT16	.data
0+0054 <[^>]*> nop
0+0058 <[^>]*> addiu	\$a0,\$a0,0
[ 	]*58: R_MIPS_LO16	.data
0+005c <[^>]*> lui	\$a0,0x0
[ 	]*5c: R_MIPS_GOT_HI16	big_external_data_label
0+0060 <[^>]*> addu	\$a0,\$a0,\$gp
0+0064 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*64: R_MIPS_GOT_LO16	big_external_data_label
0+0068 <[^>]*> lui	\$a0,0x0
[ 	]*68: R_MIPS_GOT_HI16	small_external_data_label
0+006c <[^>]*> addu	\$a0,\$a0,\$gp
0+0070 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*70: R_MIPS_GOT_LO16	small_external_data_label
0+0074 <[^>]*> lui	\$a0,0x0
[ 	]*74: R_MIPS_GOT_HI16	big_external_common
0+0078 <[^>]*> addu	\$a0,\$a0,\$gp
0+007c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*7c: R_MIPS_GOT_LO16	big_external_common
0+0080 <[^>]*> lui	\$a0,0x0
[ 	]*80: R_MIPS_GOT_HI16	small_external_common
0+0084 <[^>]*> addu	\$a0,\$a0,\$gp
0+0088 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*88: R_MIPS_GOT_LO16	small_external_common
0+008c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*8c: R_MIPS_GOT16	.bss
0+0090 <[^>]*> nop
0+0094 <[^>]*> addiu	\$a0,\$a0,0
[ 	]*94: R_MIPS_LO16	.bss
0+0098 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*98: R_MIPS_GOT16	.bss
0+009c <[^>]*> nop
0+00a0 <[^>]*> addiu	\$a0,\$a0,1000
[ 	]*a0: R_MIPS_LO16	.bss
0+00a4 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*a4: R_MIPS_GOT16	.data
0+00a8 <[^>]*> nop
0+00ac <[^>]*> addiu	\$a0,\$a0,1
[ 	]*ac: R_MIPS_LO16	.data
0+00b0 <[^>]*> lui	\$a0,0x0
[ 	]*b0: R_MIPS_GOT_HI16	big_external_data_label
0+00b4 <[^>]*> addu	\$a0,\$a0,\$gp
0+00b8 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*b8: R_MIPS_GOT_LO16	big_external_data_label
0+00bc <[^>]*> nop
0+00c0 <[^>]*> addiu	\$a0,\$a0,1
0+00c4 <[^>]*> lui	\$a0,0x0
[ 	]*c4: R_MIPS_GOT_HI16	small_external_data_label
0+00c8 <[^>]*> addu	\$a0,\$a0,\$gp
0+00cc <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*cc: R_MIPS_GOT_LO16	small_external_data_label
0+00d0 <[^>]*> nop
0+00d4 <[^>]*> addiu	\$a0,\$a0,1
0+00d8 <[^>]*> lui	\$a0,0x0
[ 	]*d8: R_MIPS_GOT_HI16	big_external_common
0+00dc <[^>]*> addu	\$a0,\$a0,\$gp
0+00e0 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*e0: R_MIPS_GOT_LO16	big_external_common
0+00e4 <[^>]*> nop
0+00e8 <[^>]*> addiu	\$a0,\$a0,1
0+00ec <[^>]*> lui	\$a0,0x0
[ 	]*ec: R_MIPS_GOT_HI16	small_external_common
0+00f0 <[^>]*> addu	\$a0,\$a0,\$gp
0+00f4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*f4: R_MIPS_GOT_LO16	small_external_common
0+00f8 <[^>]*> nop
0+00fc <[^>]*> addiu	\$a0,\$a0,1
0+0100 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*100: R_MIPS_GOT16	.bss
0+0104 <[^>]*> nop
0+0108 <[^>]*> addiu	\$a0,\$a0,1
[ 	]*108: R_MIPS_LO16	.bss
0+010c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*10c: R_MIPS_GOT16	.bss
0+0110 <[^>]*> nop
0+0114 <[^>]*> addiu	\$a0,\$a0,1001
[ 	]*114: R_MIPS_LO16	.bss
0+0118 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*118: R_MIPS_GOT16	.data
0+011c <[^>]*> lui	\$at,0x1
0+0120 <[^>]*> addiu	\$at,\$at,-32768
[ 	]*120: R_MIPS_LO16	.data
0+0124 <[^>]*> addu	\$a0,\$a0,\$at
0+0128 <[^>]*> lui	\$a0,0x0
[ 	]*128: R_MIPS_GOT_HI16	big_external_data_label
0+012c <[^>]*> addu	\$a0,\$a0,\$gp
0+0130 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*130: R_MIPS_GOT_LO16	big_external_data_label
0+0134 <[^>]*> lui	\$at,0x1
0+0138 <[^>]*> addiu	\$at,\$at,-32768
0+013c <[^>]*> addu	\$a0,\$a0,\$at
0+0140 <[^>]*> lui	\$a0,0x0
[ 	]*140: R_MIPS_GOT_HI16	small_external_data_label
0+0144 <[^>]*> addu	\$a0,\$a0,\$gp
0+0148 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*148: R_MIPS_GOT_LO16	small_external_data_label
0+014c <[^>]*> lui	\$at,0x1
0+0150 <[^>]*> addiu	\$at,\$at,-32768
0+0154 <[^>]*> addu	\$a0,\$a0,\$at
0+0158 <[^>]*> lui	\$a0,0x0
[ 	]*158: R_MIPS_GOT_HI16	big_external_common
0+015c <[^>]*> addu	\$a0,\$a0,\$gp
0+0160 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*160: R_MIPS_GOT_LO16	big_external_common
0+0164 <[^>]*> lui	\$at,0x1
0+0168 <[^>]*> addiu	\$at,\$at,-32768
0+016c <[^>]*> addu	\$a0,\$a0,\$at
0+0170 <[^>]*> lui	\$a0,0x0
[ 	]*170: R_MIPS_GOT_HI16	small_external_common
0+0174 <[^>]*> addu	\$a0,\$a0,\$gp
0+0178 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*178: R_MIPS_GOT_LO16	small_external_common
0+017c <[^>]*> lui	\$at,0x1
0+0180 <[^>]*> addiu	\$at,\$at,-32768
0+0184 <[^>]*> addu	\$a0,\$a0,\$at
0+0188 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*188: R_MIPS_GOT16	.bss
0+018c <[^>]*> lui	\$at,0x1
0+0190 <[^>]*> addiu	\$at,\$at,-32768
[ 	]*190: R_MIPS_LO16	.bss
0+0194 <[^>]*> addu	\$a0,\$a0,\$at
0+0198 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*198: R_MIPS_GOT16	.bss
0+019c <[^>]*> lui	\$at,0x1
0+01a0 <[^>]*> addiu	\$at,\$at,-31768
[ 	]*1a0: R_MIPS_LO16	.bss
0+01a4 <[^>]*> addu	\$a0,\$a0,\$at
0+01a8 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*1a8: R_MIPS_GOT16	.data
0+01ac <[^>]*> nop
0+01b0 <[^>]*> addiu	\$a0,\$a0,-32768
[ 	]*1b0: R_MIPS_LO16	.data
0+01b4 <[^>]*> lui	\$a0,0x0
[ 	]*1b4: R_MIPS_GOT_HI16	big_external_data_label
0+01b8 <[^>]*> addu	\$a0,\$a0,\$gp
0+01bc <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*1bc: R_MIPS_GOT_LO16	big_external_data_label
0+01c0 <[^>]*> nop
0+01c4 <[^>]*> addiu	\$a0,\$a0,-32768
0+01c8 <[^>]*> lui	\$a0,0x0
[ 	]*1c8: R_MIPS_GOT_HI16	small_external_data_label
0+01cc <[^>]*> addu	\$a0,\$a0,\$gp
0+01d0 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*1d0: R_MIPS_GOT_LO16	small_external_data_label
0+01d4 <[^>]*> nop
0+01d8 <[^>]*> addiu	\$a0,\$a0,-32768
0+01dc <[^>]*> lui	\$a0,0x0
[ 	]*1dc: R_MIPS_GOT_HI16	big_external_common
0+01e0 <[^>]*> addu	\$a0,\$a0,\$gp
0+01e4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*1e4: R_MIPS_GOT_LO16	big_external_common
0+01e8 <[^>]*> nop
0+01ec <[^>]*> addiu	\$a0,\$a0,-32768
0+01f0 <[^>]*> lui	\$a0,0x0
[ 	]*1f0: R_MIPS_GOT_HI16	small_external_common
0+01f4 <[^>]*> addu	\$a0,\$a0,\$gp
0+01f8 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*1f8: R_MIPS_GOT_LO16	small_external_common
0+01fc <[^>]*> nop
0+0200 <[^>]*> addiu	\$a0,\$a0,-32768
0+0204 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*204: R_MIPS_GOT16	.bss
0+0208 <[^>]*> nop
0+020c <[^>]*> addiu	\$a0,\$a0,-32768
[ 	]*20c: R_MIPS_LO16	.bss
0+0210 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*210: R_MIPS_GOT16	.bss
0+0214 <[^>]*> nop
0+0218 <[^>]*> addiu	\$a0,\$a0,-31768
[ 	]*218: R_MIPS_LO16	.bss
0+021c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*21c: R_MIPS_GOT16	.data
0+0220 <[^>]*> lui	\$at,0x1
0+0224 <[^>]*> addiu	\$at,\$at,0
[ 	]*224: R_MIPS_LO16	.data
0+0228 <[^>]*> addu	\$a0,\$a0,\$at
0+022c <[^>]*> lui	\$a0,0x0
[ 	]*22c: R_MIPS_GOT_HI16	big_external_data_label
0+0230 <[^>]*> addu	\$a0,\$a0,\$gp
0+0234 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*234: R_MIPS_GOT_LO16	big_external_data_label
0+0238 <[^>]*> lui	\$at,0x1
0+023c <[^>]*> addiu	\$at,\$at,0
0+0240 <[^>]*> addu	\$a0,\$a0,\$at
0+0244 <[^>]*> lui	\$a0,0x0
[ 	]*244: R_MIPS_GOT_HI16	small_external_data_label
0+0248 <[^>]*> addu	\$a0,\$a0,\$gp
0+024c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*24c: R_MIPS_GOT_LO16	small_external_data_label
0+0250 <[^>]*> lui	\$at,0x1
0+0254 <[^>]*> addiu	\$at,\$at,0
0+0258 <[^>]*> addu	\$a0,\$a0,\$at
0+025c <[^>]*> lui	\$a0,0x0
[ 	]*25c: R_MIPS_GOT_HI16	big_external_common
0+0260 <[^>]*> addu	\$a0,\$a0,\$gp
0+0264 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*264: R_MIPS_GOT_LO16	big_external_common
0+0268 <[^>]*> lui	\$at,0x1
0+026c <[^>]*> addiu	\$at,\$at,0
0+0270 <[^>]*> addu	\$a0,\$a0,\$at
0+0274 <[^>]*> lui	\$a0,0x0
[ 	]*274: R_MIPS_GOT_HI16	small_external_common
0+0278 <[^>]*> addu	\$a0,\$a0,\$gp
0+027c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*27c: R_MIPS_GOT_LO16	small_external_common
0+0280 <[^>]*> lui	\$at,0x1
0+0284 <[^>]*> addiu	\$at,\$at,0
0+0288 <[^>]*> addu	\$a0,\$a0,\$at
0+028c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*28c: R_MIPS_GOT16	.bss
0+0290 <[^>]*> lui	\$at,0x1
0+0294 <[^>]*> addiu	\$at,\$at,0
[ 	]*294: R_MIPS_LO16	.bss
0+0298 <[^>]*> addu	\$a0,\$a0,\$at
0+029c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*29c: R_MIPS_GOT16	.bss
0+02a0 <[^>]*> lui	\$at,0x1
0+02a4 <[^>]*> addiu	\$at,\$at,1000
[ 	]*2a4: R_MIPS_LO16	.bss
0+02a8 <[^>]*> addu	\$a0,\$a0,\$at
0+02ac <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*2ac: R_MIPS_GOT16	.data
0+02b0 <[^>]*> lui	\$at,0x2
0+02b4 <[^>]*> addiu	\$at,\$at,-23131
[ 	]*2b4: R_MIPS_LO16	.data
0+02b8 <[^>]*> addu	\$a0,\$a0,\$at
0+02bc <[^>]*> lui	\$a0,0x0
[ 	]*2bc: R_MIPS_GOT_HI16	big_external_data_label
0+02c0 <[^>]*> addu	\$a0,\$a0,\$gp
0+02c4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*2c4: R_MIPS_GOT_LO16	big_external_data_label
0+02c8 <[^>]*> lui	\$at,0x2
0+02cc <[^>]*> addiu	\$at,\$at,-23131
0+02d0 <[^>]*> addu	\$a0,\$a0,\$at
0+02d4 <[^>]*> lui	\$a0,0x0
[ 	]*2d4: R_MIPS_GOT_HI16	small_external_data_label
0+02d8 <[^>]*> addu	\$a0,\$a0,\$gp
0+02dc <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*2dc: R_MIPS_GOT_LO16	small_external_data_label
0+02e0 <[^>]*> lui	\$at,0x2
0+02e4 <[^>]*> addiu	\$at,\$at,-23131
0+02e8 <[^>]*> addu	\$a0,\$a0,\$at
0+02ec <[^>]*> lui	\$a0,0x0
[ 	]*2ec: R_MIPS_GOT_HI16	big_external_common
0+02f0 <[^>]*> addu	\$a0,\$a0,\$gp
0+02f4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*2f4: R_MIPS_GOT_LO16	big_external_common
0+02f8 <[^>]*> lui	\$at,0x2
0+02fc <[^>]*> addiu	\$at,\$at,-23131
0+0300 <[^>]*> addu	\$a0,\$a0,\$at
0+0304 <[^>]*> lui	\$a0,0x0
[ 	]*304: R_MIPS_GOT_HI16	small_external_common
0+0308 <[^>]*> addu	\$a0,\$a0,\$gp
0+030c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*30c: R_MIPS_GOT_LO16	small_external_common
0+0310 <[^>]*> lui	\$at,0x2
0+0314 <[^>]*> addiu	\$at,\$at,-23131
0+0318 <[^>]*> addu	\$a0,\$a0,\$at
0+031c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*31c: R_MIPS_GOT16	.bss
0+0320 <[^>]*> lui	\$at,0x2
0+0324 <[^>]*> addiu	\$at,\$at,-23131
[ 	]*324: R_MIPS_LO16	.bss
0+0328 <[^>]*> addu	\$a0,\$a0,\$at
0+032c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*32c: R_MIPS_GOT16	.bss
0+0330 <[^>]*> lui	\$at,0x2
0+0334 <[^>]*> addiu	\$at,\$at,-22131
[ 	]*334: R_MIPS_LO16	.bss
0+0338 <[^>]*> addu	\$a0,\$a0,\$at
0+033c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*33c: R_MIPS_GOT16	.data
0+0340 <[^>]*> nop
0+0344 <[^>]*> addiu	\$a0,\$a0,0
[ 	]*344: R_MIPS_LO16	.data
0+0348 <[^>]*> addu	\$a0,\$a0,\$a1
0+034c <[^>]*> lui	\$a0,0x0
[ 	]*34c: R_MIPS_GOT_HI16	big_external_data_label
0+0350 <[^>]*> addu	\$a0,\$a0,\$gp
0+0354 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*354: R_MIPS_GOT_LO16	big_external_data_label
0+0358 <[^>]*> nop
0+035c <[^>]*> addu	\$a0,\$a0,\$a1
0+0360 <[^>]*> lui	\$a0,0x0
[ 	]*360: R_MIPS_GOT_HI16	small_external_data_label
0+0364 <[^>]*> addu	\$a0,\$a0,\$gp
0+0368 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*368: R_MIPS_GOT_LO16	small_external_data_label
0+036c <[^>]*> nop
0+0370 <[^>]*> addu	\$a0,\$a0,\$a1
0+0374 <[^>]*> lui	\$a0,0x0
[ 	]*374: R_MIPS_GOT_HI16	big_external_common
0+0378 <[^>]*> addu	\$a0,\$a0,\$gp
0+037c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*37c: R_MIPS_GOT_LO16	big_external_common
0+0380 <[^>]*> nop
0+0384 <[^>]*> addu	\$a0,\$a0,\$a1
0+0388 <[^>]*> lui	\$a0,0x0
[ 	]*388: R_MIPS_GOT_HI16	small_external_common
0+038c <[^>]*> addu	\$a0,\$a0,\$gp
0+0390 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*390: R_MIPS_GOT_LO16	small_external_common
0+0394 <[^>]*> nop
0+0398 <[^>]*> addu	\$a0,\$a0,\$a1
0+039c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*39c: R_MIPS_GOT16	.bss
0+03a0 <[^>]*> nop
0+03a4 <[^>]*> addiu	\$a0,\$a0,0
[ 	]*3a4: R_MIPS_LO16	.bss
0+03a8 <[^>]*> addu	\$a0,\$a0,\$a1
0+03ac <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*3ac: R_MIPS_GOT16	.bss
0+03b0 <[^>]*> nop
0+03b4 <[^>]*> addiu	\$a0,\$a0,1000
[ 	]*3b4: R_MIPS_LO16	.bss
0+03b8 <[^>]*> addu	\$a0,\$a0,\$a1
0+03bc <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*3bc: R_MIPS_GOT16	.data
0+03c0 <[^>]*> nop
0+03c4 <[^>]*> addiu	\$a0,\$a0,1
[ 	]*3c4: R_MIPS_LO16	.data
0+03c8 <[^>]*> addu	\$a0,\$a0,\$a1
0+03cc <[^>]*> lui	\$a0,0x0
[ 	]*3cc: R_MIPS_GOT_HI16	big_external_data_label
0+03d0 <[^>]*> addu	\$a0,\$a0,\$gp
0+03d4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*3d4: R_MIPS_GOT_LO16	big_external_data_label
0+03d8 <[^>]*> nop
0+03dc <[^>]*> addiu	\$a0,\$a0,1
0+03e0 <[^>]*> addu	\$a0,\$a0,\$a1
0+03e4 <[^>]*> lui	\$a0,0x0
[ 	]*3e4: R_MIPS_GOT_HI16	small_external_data_label
0+03e8 <[^>]*> addu	\$a0,\$a0,\$gp
0+03ec <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*3ec: R_MIPS_GOT_LO16	small_external_data_label
0+03f0 <[^>]*> nop
0+03f4 <[^>]*> addiu	\$a0,\$a0,1
0+03f8 <[^>]*> addu	\$a0,\$a0,\$a1
0+03fc <[^>]*> lui	\$a0,0x0
[ 	]*3fc: R_MIPS_GOT_HI16	big_external_common
0+0400 <[^>]*> addu	\$a0,\$a0,\$gp
0+0404 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*404: R_MIPS_GOT_LO16	big_external_common
0+0408 <[^>]*> nop
0+040c <[^>]*> addiu	\$a0,\$a0,1
0+0410 <[^>]*> addu	\$a0,\$a0,\$a1
0+0414 <[^>]*> lui	\$a0,0x0
[ 	]*414: R_MIPS_GOT_HI16	small_external_common
0+0418 <[^>]*> addu	\$a0,\$a0,\$gp
0+041c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*41c: R_MIPS_GOT_LO16	small_external_common
0+0420 <[^>]*> nop
0+0424 <[^>]*> addiu	\$a0,\$a0,1
0+0428 <[^>]*> addu	\$a0,\$a0,\$a1
0+042c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*42c: R_MIPS_GOT16	.bss
0+0430 <[^>]*> nop
0+0434 <[^>]*> addiu	\$a0,\$a0,1
[ 	]*434: R_MIPS_LO16	.bss
0+0438 <[^>]*> addu	\$a0,\$a0,\$a1
0+043c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*43c: R_MIPS_GOT16	.bss
0+0440 <[^>]*> nop
0+0444 <[^>]*> addiu	\$a0,\$a0,1001
[ 	]*444: R_MIPS_LO16	.bss
0+0448 <[^>]*> addu	\$a0,\$a0,\$a1
0+044c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*44c: R_MIPS_GOT16	.data
0+0450 <[^>]*> lui	\$at,0x1
0+0454 <[^>]*> addiu	\$at,\$at,-32768
[ 	]*454: R_MIPS_LO16	.data
0+0458 <[^>]*> addu	\$a0,\$a0,\$at
0+045c <[^>]*> addu	\$a0,\$a0,\$a1
0+0460 <[^>]*> lui	\$a0,0x0
[ 	]*460: R_MIPS_GOT_HI16	big_external_data_label
0+0464 <[^>]*> addu	\$a0,\$a0,\$gp
0+0468 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*468: R_MIPS_GOT_LO16	big_external_data_label
0+046c <[^>]*> lui	\$at,0x1
0+0470 <[^>]*> addiu	\$at,\$at,-32768
0+0474 <[^>]*> addu	\$a0,\$a0,\$at
0+0478 <[^>]*> addu	\$a0,\$a0,\$a1
0+047c <[^>]*> lui	\$a0,0x0
[ 	]*47c: R_MIPS_GOT_HI16	small_external_data_label
0+0480 <[^>]*> addu	\$a0,\$a0,\$gp
0+0484 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*484: R_MIPS_GOT_LO16	small_external_data_label
0+0488 <[^>]*> lui	\$at,0x1
0+048c <[^>]*> addiu	\$at,\$at,-32768
0+0490 <[^>]*> addu	\$a0,\$a0,\$at
0+0494 <[^>]*> addu	\$a0,\$a0,\$a1
0+0498 <[^>]*> lui	\$a0,0x0
[ 	]*498: R_MIPS_GOT_HI16	big_external_common
0+049c <[^>]*> addu	\$a0,\$a0,\$gp
0+04a0 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*4a0: R_MIPS_GOT_LO16	big_external_common
0+04a4 <[^>]*> lui	\$at,0x1
0+04a8 <[^>]*> addiu	\$at,\$at,-32768
0+04ac <[^>]*> addu	\$a0,\$a0,\$at
0+04b0 <[^>]*> addu	\$a0,\$a0,\$a1
0+04b4 <[^>]*> lui	\$a0,0x0
[ 	]*4b4: R_MIPS_GOT_HI16	small_external_common
0+04b8 <[^>]*> addu	\$a0,\$a0,\$gp
0+04bc <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*4bc: R_MIPS_GOT_LO16	small_external_common
0+04c0 <[^>]*> lui	\$at,0x1
0+04c4 <[^>]*> addiu	\$at,\$at,-32768
0+04c8 <[^>]*> addu	\$a0,\$a0,\$at
0+04cc <[^>]*> addu	\$a0,\$a0,\$a1
0+04d0 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*4d0: R_MIPS_GOT16	.bss
0+04d4 <[^>]*> lui	\$at,0x1
0+04d8 <[^>]*> addiu	\$at,\$at,-32768
[ 	]*4d8: R_MIPS_LO16	.bss
0+04dc <[^>]*> addu	\$a0,\$a0,\$at
0+04e0 <[^>]*> addu	\$a0,\$a0,\$a1
0+04e4 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*4e4: R_MIPS_GOT16	.bss
0+04e8 <[^>]*> lui	\$at,0x1
0+04ec <[^>]*> addiu	\$at,\$at,-31768
[ 	]*4ec: R_MIPS_LO16	.bss
0+04f0 <[^>]*> addu	\$a0,\$a0,\$at
0+04f4 <[^>]*> addu	\$a0,\$a0,\$a1
0+04f8 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*4f8: R_MIPS_GOT16	.data
0+04fc <[^>]*> nop
0+0500 <[^>]*> addiu	\$a0,\$a0,-32768
[ 	]*500: R_MIPS_LO16	.data
0+0504 <[^>]*> addu	\$a0,\$a0,\$a1
0+0508 <[^>]*> lui	\$a0,0x0
[ 	]*508: R_MIPS_GOT_HI16	big_external_data_label
0+050c <[^>]*> addu	\$a0,\$a0,\$gp
0+0510 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*510: R_MIPS_GOT_LO16	big_external_data_label
0+0514 <[^>]*> nop
0+0518 <[^>]*> addiu	\$a0,\$a0,-32768
0+051c <[^>]*> addu	\$a0,\$a0,\$a1
0+0520 <[^>]*> lui	\$a0,0x0
[ 	]*520: R_MIPS_GOT_HI16	small_external_data_label
0+0524 <[^>]*> addu	\$a0,\$a0,\$gp
0+0528 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*528: R_MIPS_GOT_LO16	small_external_data_label
0+052c <[^>]*> nop
0+0530 <[^>]*> addiu	\$a0,\$a0,-32768
0+0534 <[^>]*> addu	\$a0,\$a0,\$a1
0+0538 <[^>]*> lui	\$a0,0x0
[ 	]*538: R_MIPS_GOT_HI16	big_external_common
0+053c <[^>]*> addu	\$a0,\$a0,\$gp
0+0540 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*540: R_MIPS_GOT_LO16	big_external_common
0+0544 <[^>]*> nop
0+0548 <[^>]*> addiu	\$a0,\$a0,-32768
0+054c <[^>]*> addu	\$a0,\$a0,\$a1
0+0550 <[^>]*> lui	\$a0,0x0
[ 	]*550: R_MIPS_GOT_HI16	small_external_common
0+0554 <[^>]*> addu	\$a0,\$a0,\$gp
0+0558 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*558: R_MIPS_GOT_LO16	small_external_common
0+055c <[^>]*> nop
0+0560 <[^>]*> addiu	\$a0,\$a0,-32768
0+0564 <[^>]*> addu	\$a0,\$a0,\$a1
0+0568 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*568: R_MIPS_GOT16	.bss
0+056c <[^>]*> nop
0+0570 <[^>]*> addiu	\$a0,\$a0,-32768
[ 	]*570: R_MIPS_LO16	.bss
0+0574 <[^>]*> addu	\$a0,\$a0,\$a1
0+0578 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*578: R_MIPS_GOT16	.bss
0+057c <[^>]*> nop
0+0580 <[^>]*> addiu	\$a0,\$a0,-31768
[ 	]*580: R_MIPS_LO16	.bss
0+0584 <[^>]*> addu	\$a0,\$a0,\$a1
0+0588 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*588: R_MIPS_GOT16	.data
0+058c <[^>]*> lui	\$at,0x1
0+0590 <[^>]*> addiu	\$at,\$at,0
[ 	]*590: R_MIPS_LO16	.data
0+0594 <[^>]*> addu	\$a0,\$a0,\$at
0+0598 <[^>]*> addu	\$a0,\$a0,\$a1
0+059c <[^>]*> lui	\$a0,0x0
[ 	]*59c: R_MIPS_GOT_HI16	big_external_data_label
0+05a0 <[^>]*> addu	\$a0,\$a0,\$gp
0+05a4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*5a4: R_MIPS_GOT_LO16	big_external_data_label
0+05a8 <[^>]*> lui	\$at,0x1
0+05ac <[^>]*> addiu	\$at,\$at,0
0+05b0 <[^>]*> addu	\$a0,\$a0,\$at
0+05b4 <[^>]*> addu	\$a0,\$a0,\$a1
0+05b8 <[^>]*> lui	\$a0,0x0
[ 	]*5b8: R_MIPS_GOT_HI16	small_external_data_label
0+05bc <[^>]*> addu	\$a0,\$a0,\$gp
0+05c0 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*5c0: R_MIPS_GOT_LO16	small_external_data_label
0+05c4 <[^>]*> lui	\$at,0x1
0+05c8 <[^>]*> addiu	\$at,\$at,0
0+05cc <[^>]*> addu	\$a0,\$a0,\$at
0+05d0 <[^>]*> addu	\$a0,\$a0,\$a1
0+05d4 <[^>]*> lui	\$a0,0x0
[ 	]*5d4: R_MIPS_GOT_HI16	big_external_common
0+05d8 <[^>]*> addu	\$a0,\$a0,\$gp
0+05dc <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*5dc: R_MIPS_GOT_LO16	big_external_common
0+05e0 <[^>]*> lui	\$at,0x1
0+05e4 <[^>]*> addiu	\$at,\$at,0
0+05e8 <[^>]*> addu	\$a0,\$a0,\$at
0+05ec <[^>]*> addu	\$a0,\$a0,\$a1
0+05f0 <[^>]*> lui	\$a0,0x0
[ 	]*5f0: R_MIPS_GOT_HI16	small_external_common
0+05f4 <[^>]*> addu	\$a0,\$a0,\$gp
0+05f8 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*5f8: R_MIPS_GOT_LO16	small_external_common
0+05fc <[^>]*> lui	\$at,0x1
0+0600 <[^>]*> addiu	\$at,\$at,0
0+0604 <[^>]*> addu	\$a0,\$a0,\$at
0+0608 <[^>]*> addu	\$a0,\$a0,\$a1
0+060c <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*60c: R_MIPS_GOT16	.bss
0+0610 <[^>]*> lui	\$at,0x1
0+0614 <[^>]*> addiu	\$at,\$at,0
[ 	]*614: R_MIPS_LO16	.bss
0+0618 <[^>]*> addu	\$a0,\$a0,\$at
0+061c <[^>]*> addu	\$a0,\$a0,\$a1
0+0620 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*620: R_MIPS_GOT16	.bss
0+0624 <[^>]*> lui	\$at,0x1
0+0628 <[^>]*> addiu	\$at,\$at,1000
[ 	]*628: R_MIPS_LO16	.bss
0+062c <[^>]*> addu	\$a0,\$a0,\$at
0+0630 <[^>]*> addu	\$a0,\$a0,\$a1
0+0634 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*634: R_MIPS_GOT16	.data
0+0638 <[^>]*> lui	\$at,0x2
0+063c <[^>]*> addiu	\$at,\$at,-23131
[ 	]*63c: R_MIPS_LO16	.data
0+0640 <[^>]*> addu	\$a0,\$a0,\$at
0+0644 <[^>]*> addu	\$a0,\$a0,\$a1
0+0648 <[^>]*> lui	\$a0,0x0
[ 	]*648: R_MIPS_GOT_HI16	big_external_data_label
0+064c <[^>]*> addu	\$a0,\$a0,\$gp
0+0650 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*650: R_MIPS_GOT_LO16	big_external_data_label
0+0654 <[^>]*> lui	\$at,0x2
0+0658 <[^>]*> addiu	\$at,\$at,-23131
0+065c <[^>]*> addu	\$a0,\$a0,\$at
0+0660 <[^>]*> addu	\$a0,\$a0,\$a1
0+0664 <[^>]*> lui	\$a0,0x0
[ 	]*664: R_MIPS_GOT_HI16	small_external_data_label
0+0668 <[^>]*> addu	\$a0,\$a0,\$gp
0+066c <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*66c: R_MIPS_GOT_LO16	small_external_data_label
0+0670 <[^>]*> lui	\$at,0x2
0+0674 <[^>]*> addiu	\$at,\$at,-23131
0+0678 <[^>]*> addu	\$a0,\$a0,\$at
0+067c <[^>]*> addu	\$a0,\$a0,\$a1
0+0680 <[^>]*> lui	\$a0,0x0
[ 	]*680: R_MIPS_GOT_HI16	big_external_common
0+0684 <[^>]*> addu	\$a0,\$a0,\$gp
0+0688 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*688: R_MIPS_GOT_LO16	big_external_common
0+068c <[^>]*> lui	\$at,0x2
0+0690 <[^>]*> addiu	\$at,\$at,-23131
0+0694 <[^>]*> addu	\$a0,\$a0,\$at
0+0698 <[^>]*> addu	\$a0,\$a0,\$a1
0+069c <[^>]*> lui	\$a0,0x0
[ 	]*69c: R_MIPS_GOT_HI16	small_external_common
0+06a0 <[^>]*> addu	\$a0,\$a0,\$gp
0+06a4 <[^>]*> lw	\$a0,0\(\$a0\)
[ 	]*6a4: R_MIPS_GOT_LO16	small_external_common
0+06a8 <[^>]*> lui	\$at,0x2
0+06ac <[^>]*> addiu	\$at,\$at,-23131
0+06b0 <[^>]*> addu	\$a0,\$a0,\$at
0+06b4 <[^>]*> addu	\$a0,\$a0,\$a1
0+06b8 <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*6b8: R_MIPS_GOT16	.bss
0+06bc <[^>]*> lui	\$at,0x2
0+06c0 <[^>]*> addiu	\$at,\$at,-23131
[ 	]*6c0: R_MIPS_LO16	.bss
0+06c4 <[^>]*> addu	\$a0,\$a0,\$at
0+06c8 <[^>]*> addu	\$a0,\$a0,\$a1
0+06cc <[^>]*> lw	\$a0,0\(\$gp\)
[ 	]*6cc: R_MIPS_GOT16	.bss
0+06d0 <[^>]*> lui	\$at,0x2
0+06d4 <[^>]*> addiu	\$at,\$at,-22131
[ 	]*6d4: R_MIPS_LO16	.bss
0+06d8 <[^>]*> addu	\$a0,\$a0,\$at
0+06dc <[^>]*> addu	\$a0,\$a0,\$a1
