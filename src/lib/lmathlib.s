	.file	"lmathlib.c"
	.text
.Ltext0:
	.type	math_abs, @function
math_abs:
.LFB0:
	.file 1 "lmathlib.c"
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 36 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC0(%rip), %xmm0
	andpd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 37 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	math_abs, .-math_abs
	.type	math_sin, @function
math_sin:
.LFB1:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 40 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	sin
	call	lua_pushnumber
	.loc 1 41 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	math_sin, .-math_sin
	.type	math_cos, @function
math_cos:
.LFB2:
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 44 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	cos
	call	lua_pushnumber
	.loc 1 45 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	math_cos, .-math_cos
	.type	math_tan, @function
math_tan:
.LFB3:
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 48 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	tan
	call	lua_pushnumber
	.loc 1 49 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	math_tan, .-math_tan
	.type	math_asin, @function
math_asin:
.LFB4:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 52 0
	movl	$1, %edi
	call	luaL_check_number
	call	asin
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 53 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	math_asin, .-math_asin
	.type	math_acos, @function
math_acos:
.LFB5:
	.loc 1 55 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 56 0
	movl	$1, %edi
	call	luaL_check_number
	call	acos
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 57 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	math_acos, .-math_acos
	.type	math_atan, @function
math_atan:
.LFB6:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 60 0
	movl	$1, %edi
	call	luaL_check_number
	call	atan
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 61 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	math_atan, .-math_atan
	.type	math_atan2, @function
math_atan2:
.LFB7:
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 64 0
	movl	$2, %edi
	call	luaL_check_number
	movsd	%xmm0, -8(%rbp)
	movl	$1, %edi
	call	luaL_check_number
	movsd	-8(%rbp), %xmm1
	call	atan2
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 65 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	math_atan2, .-math_atan2
	.type	math_ceil, @function
math_ceil:
.LFB8:
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 68 0
	movl	$1, %edi
	call	luaL_check_number
	call	ceil
	call	lua_pushnumber
	.loc 1 69 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	math_ceil, .-math_ceil
	.type	math_floor, @function
math_floor:
.LFB9:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 72 0
	movl	$1, %edi
	call	luaL_check_number
	call	floor
	call	lua_pushnumber
	.loc 1 73 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	math_floor, .-math_floor
	.type	math_mod, @function
math_mod:
.LFB10:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 76 0
	movl	$2, %edi
	call	luaL_check_number
	movsd	%xmm0, -8(%rbp)
	movl	$1, %edi
	call	luaL_check_number
	movsd	-8(%rbp), %xmm1
	call	fmod
	call	lua_pushnumber
	.loc 1 77 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	math_mod, .-math_mod
	.type	math_sqrt, @function
math_sqrt:
.LFB11:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 80 0
	movl	$1, %edi
	call	luaL_check_number
	call	sqrt
	call	lua_pushnumber
	.loc 1 81 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	math_sqrt, .-math_sqrt
	.type	math_pow, @function
math_pow:
.LFB12:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 84 0
	movl	$2, %edi
	call	luaL_check_number
	movsd	%xmm0, -8(%rbp)
	movl	$1, %edi
	call	luaL_check_number
	movsd	-8(%rbp), %xmm1
	call	pow
	call	lua_pushnumber
	.loc 1 85 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	math_pow, .-math_pow
	.type	math_log, @function
math_log:
.LFB13:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 88 0
	movl	$1, %edi
	call	luaL_check_number
	call	log
	call	lua_pushnumber
	.loc 1 89 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	math_log, .-math_log
	.type	math_log10, @function
math_log10:
.LFB14:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 92 0
	movl	$1, %edi
	call	luaL_check_number
	call	log10
	call	lua_pushnumber
	.loc 1 93 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	math_log10, .-math_log10
	.type	math_exp, @function
math_exp:
.LFB15:
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 96 0
	movl	$1, %edi
	call	luaL_check_number
	call	exp
	call	lua_pushnumber
	.loc 1 97 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	math_exp, .-math_exp
	.type	math_deg, @function
math_deg:
.LFB16:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 100 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 101 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	math_deg, .-math_deg
	.type	math_rad, @function
math_rad:
.LFB17:
	.loc 1 103 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 104 0
	movl	$1, %edi
	call	luaL_check_number
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 105 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	math_rad, .-math_rad
	.type	math_frexp, @function
math_frexp:
.LFB18:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 107 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 109 0
	movl	$1, %edi
	call	luaL_check_number
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	frexp
	call	lua_pushnumber
	.loc 1 110 0
	movl	-12(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	call	lua_pushnumber
	.loc 1 111 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	math_frexp, .-math_frexp
	.type	math_ldexp, @function
math_ldexp:
.LFB19:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 114 0
	movl	$2, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %ebx
	movl	$1, %edi
	call	luaL_check_number
	movl	%ebx, %edi
	call	ldexp
	call	lua_pushnumber
	.loc 1 115 0
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	math_ldexp, .-math_ldexp
	.type	math_min, @function
math_min:
.LFB20:
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 120 0
	movl	$1, -20(%rbp)
	.loc 1 121 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	.loc 1 122 0
	jmp	.L23
.L25:
.LBB2:
	.loc 1 123 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	.loc 1 124 0
	movsd	-16(%rbp), %xmm0
	ucomisd	-8(%rbp), %xmm0
	ja	.L26
	jmp	.L23
.L26:
	.loc 1 125 0
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L23:
.LBE2:
	.loc 1 122 0
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_lua2C
	testl	%eax, %eax
	jne	.L25
	.loc 1 127 0
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 128 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	math_min, .-math_min
	.type	math_max, @function
math_max:
.LFB21:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 132 0
	movl	$1, -20(%rbp)
	.loc 1 133 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	.loc 1 134 0
	jmp	.L28
.L30:
.LBB3:
	.loc 1 135 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	.loc 1 136 0
	movsd	-8(%rbp), %xmm0
	ucomisd	-16(%rbp), %xmm0
	ja	.L31
	jmp	.L28
.L31:
	.loc 1 137 0
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L28:
.LBE3:
	.loc 1 134 0
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_lua2C
	testl	%eax, %eax
	jne	.L30
	.loc 1 139 0
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 140 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	math_max, .-math_max
	.section	.rodata
.LC4:
	.string	"interval is empty"
	.text
	.type	math_random, @function
math_random:
.LFB22:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 146 0
	call	rand
	movl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	salq	$30, %rax
	addq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$29, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$31, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 147 0
	pxor	%xmm0, %xmm0
	movl	$1, %edi
	call	luaL_opt_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	.loc 1 148 0
	cmpl	$0, -16(%rbp)
	jne	.L33
	.loc 1 149 0
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 159 0
	jmp	.L37
.L33:
.LBB4:
	.loc 1 151 0
	pxor	%xmm0, %xmm0
	movl	$2, %edi
	call	luaL_opt_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	.loc 1 152 0
	cmpl	$0, -12(%rbp)
	jne	.L35
	.loc 1 153 0
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 154 0
	movl	$1, -16(%rbp)
.L35:
	.loc 1 156 0
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L36
	.loc 1 156 0 is_stmt 0 discriminator 1
	movl	$.LC4, %esi
	movl	$1, %edi
	call	luaL_argerror
.L36:
	.loc 1 157 0 is_stmt 1
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	-8(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	call	lua_pushnumber
.L37:
.LBE4:
	.loc 1 159 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	math_random, .-math_random
	.type	math_randomseed, @function
math_randomseed:
.LFB23:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 163 0
	movl	$1, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	srand
	.loc 1 164 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	math_randomseed, .-math_randomseed
	.section	.rodata
.LC5:
	.string	"abs"
.LC6:
	.string	"sin"
.LC7:
	.string	"cos"
.LC8:
	.string	"tan"
.LC9:
	.string	"asin"
.LC10:
	.string	"acos"
.LC11:
	.string	"atan"
.LC12:
	.string	"atan2"
.LC13:
	.string	"ceil"
.LC14:
	.string	"floor"
.LC15:
	.string	"mod"
.LC16:
	.string	"frexp"
.LC17:
	.string	"ldexp"
.LC18:
	.string	"sqrt"
.LC19:
	.string	"min"
.LC20:
	.string	"max"
.LC21:
	.string	"log"
.LC22:
	.string	"log10"
.LC23:
	.string	"exp"
.LC24:
	.string	"deg"
.LC25:
	.string	"rad"
.LC26:
	.string	"random"
.LC27:
	.string	"randomseed"
	.data
	.align 32
	.type	mathlib, @object
	.size	mathlib, 368
mathlib:
	.quad	.LC5
	.quad	math_abs
	.quad	.LC6
	.quad	math_sin
	.quad	.LC7
	.quad	math_cos
	.quad	.LC8
	.quad	math_tan
	.quad	.LC9
	.quad	math_asin
	.quad	.LC10
	.quad	math_acos
	.quad	.LC11
	.quad	math_atan
	.quad	.LC12
	.quad	math_atan2
	.quad	.LC13
	.quad	math_ceil
	.quad	.LC14
	.quad	math_floor
	.quad	.LC15
	.quad	math_mod
	.quad	.LC16
	.quad	math_frexp
	.quad	.LC17
	.quad	math_ldexp
	.quad	.LC18
	.quad	math_sqrt
	.quad	.LC19
	.quad	math_min
	.quad	.LC20
	.quad	math_max
	.quad	.LC21
	.quad	math_log
	.quad	.LC22
	.quad	math_log10
	.quad	.LC23
	.quad	math_exp
	.quad	.LC24
	.quad	math_deg
	.quad	.LC25
	.quad	math_rad
	.quad	.LC26
	.quad	math_random
	.quad	.LC27
	.quad	math_randomseed
	.section	.rodata
.LC28:
	.string	"pow"
.LC30:
	.string	"PI"
	.text
	.globl	lua_mathlibopen
	.type	lua_mathlibopen, @function
lua_mathlibopen:
.LFB24:
	.loc 1 196 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 197 0
	movl	$23, %esi
	movl	$mathlib, %edi
	call	luaL_openlib
	.loc 1 198 0
	movl	$0, %esi
	movl	$math_pow, %edi
	call	lua_pushcclosure
	.loc 1 199 0
	pxor	%xmm0, %xmm0
	call	lua_pushnumber
	.loc 1 200 0
	call	lua_pop
	movl	%eax, %edi
	call	lua_tag
	movl	$.LC28, %esi
	movl	%eax, %edi
	call	lua_settagmethod
	.loc 1 201 0
	movabsq	$4614256656552045848, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	call	lua_pushnumber
	movl	$.LC30, %edi
	call	lua_setglobal
	.loc 1 202 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	lua_mathlibopen, .-lua_mathlibopen
	.section	.rodata
	.align 16
.LC0:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
	.long	2723323193
	.long	1066524486
	.align 8
.LC2:
	.long	4290772992
	.long	1105199103
	.text
.Letext0:
	.file 2 "../../include/lauxlib.h"
	.file 3 "../../include/lua.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3f4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF35
	.byte	0x1
	.long	.LASF36
	.long	.LASF37
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF38
	.byte	0x3
	.byte	0x1a
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.long	0x53
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x7
	.long	.LASF39
	.byte	0x10
	.byte	0x2
	.byte	0xf
	.long	0x80
	.uleb128 0x8
	.long	.LASF3
	.byte	0x2
	.byte	0x10
	.long	0x80
	.byte	0
	.uleb128 0x8
	.long	.LASF4
	.byte	0x2
	.byte	0x11
	.long	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x9
	.long	.LASF6
	.byte	0x1
	.byte	0x23
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF7
	.byte	0x1
	.byte	0x27
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF8
	.byte	0x1
	.byte	0x2b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF9
	.byte	0x1
	.byte	0x2f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0x33
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF11
	.byte	0x1
	.byte	0x37
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF12
	.byte	0x1
	.byte	0x3b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x3f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x43
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x47
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x4b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x4f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x53
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x5b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x5f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x63
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x67
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x6b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x279
	.uleb128 0xb
	.string	"e"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x71
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x77
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e8
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x79
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xb
	.string	"d"
	.byte	0x1
	.byte	0x7b
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF28
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x83
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x345
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x84
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x85
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xb
	.string	"d"
	.byte	0x1
	.byte	0x87
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0x8f
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x399
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x92
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"l"
	.byte	0x1
	.byte	0x93
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xb
	.string	"u"
	.byte	0x1
	.byte	0x97
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0xa2
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.byte	0xc4
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.long	0x5b
	.long	0x3db
	.uleb128 0x10
	.long	0x3db
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF33
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0xa7
	.long	0x3cb
	.uleb128 0x9
	.byte	0x3
	.quad	mathlib
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
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
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"math_log10"
.LASF9:
	.string	"math_tan"
.LASF19:
	.string	"math_log"
.LASF36:
	.string	"lmathlib.c"
.LASF23:
	.string	"math_rad"
.LASF14:
	.string	"math_ceil"
.LASF28:
	.string	"double"
.LASF11:
	.string	"math_acos"
.LASF35:
	.string	"GNU C89 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O0 -ansi -fstack-protector-strong"
.LASF32:
	.string	"math_randomseed"
.LASF7:
	.string	"math_sin"
.LASF0:
	.string	"long unsigned int"
.LASF39:
	.string	"luaL_reg"
.LASF22:
	.string	"math_deg"
.LASF8:
	.string	"math_cos"
.LASF4:
	.string	"func"
.LASF25:
	.string	"math_frexp"
.LASF34:
	.string	"mathlib"
.LASF37:
	.string	"/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib"
.LASF17:
	.string	"math_sqrt"
.LASF13:
	.string	"math_atan2"
.LASF2:
	.string	"unsigned int"
.LASF29:
	.string	"math_max"
.LASF30:
	.string	"dmax"
.LASF5:
	.string	"char"
.LASF10:
	.string	"math_asin"
.LASF21:
	.string	"math_exp"
.LASF33:
	.string	"sizetype"
.LASF26:
	.string	"math_min"
.LASF12:
	.string	"math_atan"
.LASF3:
	.string	"name"
.LASF16:
	.string	"math_mod"
.LASF27:
	.string	"dmin"
.LASF1:
	.string	"long int"
.LASF40:
	.string	"lua_mathlibopen"
.LASF6:
	.string	"math_abs"
.LASF38:
	.string	"lua_CFunction"
.LASF15:
	.string	"math_floor"
.LASF31:
	.string	"math_random"
.LASF24:
	.string	"math_ldexp"
.LASF18:
	.string	"math_pow"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
