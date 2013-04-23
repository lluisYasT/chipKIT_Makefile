	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text.utoa,"ax",@progbits
	.align	2
.LFB0 = .
	.file 1 "/opt/mpide/hardware/pic32/compiler/pic32-tools/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdlib.h"
	.loc 1 233 0
	.set	nomips16
	.set	nomicromips
	.ent	utoa
	.type	utoa, @function
utoa:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI0:
	sw	$fp,12($sp)
.LCFI1:
	move	$fp,$sp
.LCFI2:
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
.LBB2 = .
	.loc 1 237 0
	lw	$2,16($fp)
	sw	$2,0($fp)
.L2:
	.loc 1 239 0
	lw	$2,24($fp)
	lw	$3,0($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	sw	$2,0($fp)
	.loc 1 240 0
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 238 0
	lw	$2,0($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L2
	nop

	.loc 1 242 0
	lw	$2,20($fp)
	sb	$0,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
.L4:
	.loc 1 244 0
	lw	$2,24($fp)
	lw	$3,16($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sb	$2,4($fp)
	.loc 1 245 0
	lw	$2,24($fp)
	lw	$3,16($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	sw	$2,16($fp)
	.loc 1 246 0
	lb	$2,4($fp)
	slt	$2,$2,10
	bne	$2,$0,.L3
	nop

	.loc 1 247 0
	lbu	$2,4($fp)
	addiu	$2,$2,7
	andi	$2,$2,0x00ff
	sb	$2,4($fp)
.L3:
	.loc 1 248 0
	lbu	$2,4($fp)
	addiu	$2,$2,48
	andi	$2,$2,0x00ff
	sb	$2,4($fp)
	.loc 1 249 0
	lw	$2,20($fp)
	lbu	$3,4($fp)
	sb	$3,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
	.loc 1 243 0
	lw	$2,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L4
	nop

	.loc 1 251 0
	lw	$2,20($fp)
.LBE2 = .
	.loc 1 252 0
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	utoa
.LFE0:
	.size	utoa, .-utoa
	.section	.text.itoa,"ax",@progbits
	.align	2
.LFB1 = .
	.loc 1 256 0
	.set	nomips16
	.set	nomicromips
	.ent	itoa
	.type	itoa, @function
itoa:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI3:
	sw	$31,28($sp)
.LCFI4:
	sw	$fp,24($sp)
.LCFI5:
	move	$fp,$sp
.LCFI6:
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
.LBB3 = .
	.loc 1 257 0
	lw	$2,36($fp)
	sw	$2,16($fp)
	.loc 1 259 0
	lw	$2,32($fp)
	bgez	$2,.L6
	nop

	.loc 1 260 0
	lw	$2,36($fp)
	li	$3,45			# 0x2d
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	.loc 1 261 0
	lw	$2,32($fp)
	subu	$2,$0,$2
	sw	$2,32($fp)
.L6:
	.loc 1 263 0
	lw	$2,32($fp)
	move	$4,$2
	lw	$5,36($fp)
	lw	$6,40($fp)
	jal	utoa
	nop

	.loc 1 264 0
	lw	$2,16($fp)
.LBE3 = .
	.loc 1 265 0
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	itoa
.LFE1:
	.size	itoa, .-itoa
	.section	.text.ultoa,"ax",@progbits
	.align	2
.LFB2 = .
	.loc 1 270 0
	.set	nomips16
	.set	nomicromips
	.ent	ultoa
	.type	ultoa, @function
ultoa:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI7:
	sw	$fp,12($sp)
.LCFI8:
	move	$fp,$sp
.LCFI9:
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
.LBB4 = .
	.loc 1 274 0
	lw	$2,16($fp)
	sw	$2,0($fp)
.L8:
	.loc 1 276 0
	lw	$2,24($fp)
	lw	$3,0($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	sw	$2,0($fp)
	.loc 1 277 0
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 275 0
	lw	$2,0($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L8
	nop

	.loc 1 279 0
	lw	$2,20($fp)
	sb	$0,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
.L10:
	.loc 1 281 0
	lw	$2,24($fp)
	lw	$3,16($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	sb	$2,4($fp)
	.loc 1 282 0
	lw	$2,24($fp)
	lw	$3,16($fp)
	divu	$0,$3,$2
	teq	$2,$0,7
	mfhi	$3
	mflo	$2
	sw	$2,16($fp)
	.loc 1 283 0
	lb	$2,4($fp)
	slt	$2,$2,10
	bne	$2,$0,.L9
	nop

	.loc 1 284 0
	lbu	$2,4($fp)
	addiu	$2,$2,7
	andi	$2,$2,0x00ff
	sb	$2,4($fp)
.L9:
	.loc 1 285 0
	lbu	$2,4($fp)
	addiu	$2,$2,48
	andi	$2,$2,0x00ff
	sb	$2,4($fp)
	.loc 1 286 0
	lw	$2,20($fp)
	lbu	$3,4($fp)
	sb	$3,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
	.loc 1 280 0
	lw	$2,16($fp)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	bne	$2,$0,.L10
	nop

	.loc 1 288 0
	lw	$2,20($fp)
.LBE4 = .
	.loc 1 289 0
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ultoa
.LFE2:
	.size	ultoa, .-ultoa
	.section	.text.ltoa,"ax",@progbits
	.align	2
.LFB3 = .
	.loc 1 298 0
	.set	nomips16
	.set	nomicromips
	.ent	ltoa
	.type	ltoa, @function
ltoa:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI10:
	sw	$31,28($sp)
.LCFI11:
	sw	$fp,24($sp)
.LCFI12:
	move	$fp,$sp
.LCFI13:
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
.LBB5 = .
	.loc 1 299 0
	lw	$2,36($fp)
	sw	$2,16($fp)
	.loc 1 301 0
	lw	$2,32($fp)
	bgez	$2,.L12
	nop

	.loc 1 302 0
	lw	$2,36($fp)
	li	$3,45			# 0x2d
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	.loc 1 303 0
	lw	$2,32($fp)
	subu	$2,$0,$2
	sw	$2,32($fp)
.L12:
	.loc 1 305 0
	lw	$2,32($fp)
	move	$4,$2
	lw	$5,36($fp)
	lw	$6,40($fp)
	jal	ultoa
	nop

	.loc 1 306 0
	lw	$2,16($fp)
.LBE5 = .
	.loc 1 307 0
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ltoa
.LFE3:
	.size	ltoa, .-ltoa
	.section	.text.setup,"ax",@progbits
	.align	2
	.globl	setup
.LFB26 = .
	.file 2 "Blink.cpp"
	.loc 2 9 0
	.set	nomips16
	.set	nomicromips
	.ent	setup
	.type	setup, @function
setup:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI14:
	sw	$31,20($sp)
.LCFI15:
	sw	$fp,16($sp)
.LCFI16:
	move	$fp,$sp
.LCFI17:
	.loc 2 12 0
	li	$4,13			# 0xd
	li	$5,1			# 0x1
	jal	pinMode
	nop

	.loc 2 13 0
	move	$sp,$fp
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setup
.LFE26:
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
	.align	2
	.globl	loop
.LFB27 = .
	.loc 2 15 0
	.set	nomips16
	.set	nomicromips
	.ent	loop
	.type	loop, @function
loop:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI18:
	sw	$31,20($sp)
.LCFI19:
	sw	$fp,16($sp)
.LCFI20:
	move	$fp,$sp
.LCFI21:
	.loc 2 16 0
	li	$4,13			# 0xd
	li	$5,1			# 0x1
	jal	digitalWrite
	nop

	.loc 2 17 0
	li	$4,1000			# 0x3e8
	jal	delay
	nop

	.loc 2 18 0
	li	$4,13			# 0xd
	move	$5,$0
	jal	digitalWrite
	nop

	.loc 2 19 0
	li	$4,1000			# 0x3e8
	jal	delay
	nop

	.loc 2 20 0
	move	$sp,$fp
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	loop
.LFE27:
	.size	loop, .-loop
	.section	.rodata._ZL2SS,"a",@progbits
	.type	_ZL2SS, @object
	.size	_ZL2SS, 1
_ZL2SS:
	.byte	53
	.section	.rodata._ZL4MOSI,"a",@progbits
	.type	_ZL4MOSI, @object
	.size	_ZL4MOSI, 1
_ZL4MOSI:
	.byte	51
	.section	.rodata._ZL4MISO,"a",@progbits
	.type	_ZL4MISO, @object
	.size	_ZL4MISO, 1
_ZL4MISO:
	.byte	50
	.section	.rodata._ZL3SCK,"a",@progbits
	.type	_ZL3SCK, @object
	.size	_ZL3SCK, 1
_ZL3SCK:
	.byte	52
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI5-.LCFI3
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI7-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI10-.LFB3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI12-.LCFI10
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI16-.LCFI14
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI18-.LFB27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI20-.LCFI18
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB1
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI6
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB2
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LCFI9
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI13
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB26
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI17
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB27
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI18
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI21
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
	.file 3 "/opt/mpide/hardware/pic32/variants/Max32/Board_Defs.h"
	.file 4 "/opt/mpide/hardware/pic32/compiler/pic32-tools/bin/../lib/gcc/pic32mx/4.5.1/../../../../pic32mx/include/stdint.h"
	.section	.debug_info
	.4byte	0x29f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.4byte	0x75
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x6
	.4byte	0x91
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0xe8
	.4byte	0x6f
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x109
	.uleb128 0x8
	.ascii	"val\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii	"buf\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0xe8
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xb
	.ascii	"v\000"
	.byte	0x1
	.byte	0xea
	.4byte	0x53
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.ascii	"c\000"
	.byte	0x1
	.byte	0xeb
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0xff
	.4byte	0x6f
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x167
	.uleb128 0x8
	.ascii	"val\000"
	.byte	0x1
	.byte	0xff
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii	"buf\000"
	.byte	0x1
	.byte	0xff
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0xff
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0xc
	.ascii	"cp\000"
	.byte	0x1
	.2byte	0x101
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x10d
	.4byte	0x6f
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.4byte	0x1d5
	.uleb128 0xe
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x29
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x10d
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0xc
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x29
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x110
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x129
	.4byte	0x6f
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x237
	.uleb128 0xe
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x129
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0xc
	.ascii	"cp\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0x9
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST4
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0xf
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST5
	.uleb128 0xb
	.ascii	"SS\000"
	.byte	0x3
	.byte	0x96
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL2SS
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x3
	.byte	0x97
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL4MOSI
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x3
	.byte	0x98
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL4MISO
	.uleb128 0xb
	.ascii	"SCK\000"
	.byte	0x3
	.byte	0x99
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL3SCK
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x21
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2a3
	.4byte	0x237
	.ascii	"setup\000"
	.4byte	0x24b
	.ascii	"loop\000"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0x1a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2a3
	.4byte	0x91
	.ascii	"uint8_t\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.ascii	"setup\000"
.LASF23:
	.ascii	"Blink.cpp\000"
.LASF19:
	.ascii	"loop\000"
.LASF11:
	.ascii	"float\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"itoa\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF10:
	.ascii	"double\000"
.LASF21:
	.ascii	"MISO\000"
.LASF20:
	.ascii	"MOSI\000"
.LASF5:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"char\000"
.LASF25:
	.ascii	"uint8_t\000"
.LASF24:
	.ascii	"/home/lluis/dev/chipKIT_Makefile/examples/Blink\000"
.LASF14:
	.ascii	"utoa\000"
.LASF6:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"base\000"
.LASF16:
	.ascii	"ultoa\000"
.LASF3:
	.ascii	"short int\000"
.LASF8:
	.ascii	"long int\000"
.LASF12:
	.ascii	"long double\000"
.LASF1:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"ltoa\000"
.LASF22:
	.ascii	"GNU C++ 4.5.1 chipKIT Compiler for PIC32 MCUs v1.31-2012"
	.ascii	"0614\000"
	.text
	.ident	"GCC: (chipKIT) 4.5.1 chipKIT Compiler for PIC32 MCUs v1.31-20120614"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# MCHP configuration words
