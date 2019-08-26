	.file	"lstrlib.c"
	.text
.Ltext0:
	.type	addnchar, @function
addnchar:
.LFB0:
	.file 1 "lstrlib.c"
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 21 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	luaL_openspace
	movq	%rax, -8(%rbp)
	.loc 1 22 0
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	.loc 1 23 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	luaL_addsize
	.loc 1 24 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	addnchar, .-addnchar
	.type	str_len, @function
str_len:
.LFB1:
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 28 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 30 0
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	.loc 1 31 0
	movq	-16(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	call	lua_pushnumber
	.loc 1 32 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	str_len, .-str_len
	.type	closeandpush, @function
closeandpush:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 36 0
	call	luaL_getsize
	movslq	%eax, %rbx
	call	luaL_buffer
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	lua_pushlstring
	.loc 1 37 0
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	closeandpush, .-closeandpush
	.type	posrelat, @function
posrelat:
.LFB3:
	.loc 1 40 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 42 0
	cmpq	$0, -8(%rbp)
	jns	.L6
	.loc 1 42 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	jmp	.L8
.L6:
	.loc 1 42 0 discriminator 2
	movq	-8(%rbp), %rax
.L8:
	.loc 1 43 0 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	posrelat, .-posrelat
	.section	.rodata
.LC1:
	.string	""
	.text
	.type	str_sub, @function
str_sub:
.LFB4:
	.loc 1 46 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	.loc 1 46 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 48 0
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -32(%rbp)
	.loc 1 49 0
	movq	-56(%rbp), %rbx
	movl	$2, %edi
	call	luaL_check_number
	cvttsd2siq	%xmm0, %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	posrelat
	movq	%rax, -48(%rbp)
	.loc 1 50 0
	movq	-56(%rbp), %rbx
	movsd	.LC0(%rip), %xmm0
	movl	$3, %edi
	call	luaL_opt_number
	cvttsd2siq	%xmm0, %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	posrelat
	movq	%rax, -40(%rbp)
	.loc 1 51 0
	cmpq	$0, -48(%rbp)
	jg	.L10
	.loc 1 51 0 is_stmt 0 discriminator 1
	movq	$1, -48(%rbp)
.L10:
	.loc 1 52 0 is_stmt 1
	movq	-56(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jle	.L11
	.loc 1 52 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.L11:
	.loc 1 53 0 is_stmt 1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jg	.L12
	.loc 1 54 0
	movq	-40(%rbp), %rax
	subq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_pushlstring
	.loc 1 56 0
	jmp	.L15
.L12:
	.loc 1 55 0
	movl	$.LC1, %edi
	call	lua_pushstring
.L15:
	.loc 1 56 0
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail
.L14:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	str_sub, .-str_sub
	.type	str_lower, @function
str_lower:
.LFB5:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 59 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 62 0
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -16(%rbp)
	.loc 1 63 0
	call	luaL_resetbuffer
	.loc 1 64 0
	movl	$0, -28(%rbp)
	jmp	.L17
.L18:
	.loc 1 65 0 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edi
	call	luaL_addchar
	.loc 1 64 0 discriminator 3
	addl	$1, -28(%rbp)
.L17:
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L18
	.loc 1 66 0 is_stmt 1
	call	closeandpush
	.loc 1 67 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	str_lower, .-str_lower
	.type	str_upper, @function
str_upper:
.LFB6:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 70 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 73 0
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -16(%rbp)
	.loc 1 74 0
	call	luaL_resetbuffer
	.loc 1 75 0
	movl	$0, -28(%rbp)
	jmp	.L21
.L22:
	.loc 1 76 0 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movl	%eax, %edi
	call	luaL_addchar
	.loc 1 75 0 discriminator 3
	addl	$1, -28(%rbp)
.L21:
	.loc 1 75 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L22
	.loc 1 77 0 is_stmt 1
	call	closeandpush
	.loc 1 78 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	str_upper, .-str_upper
	.type	str_rep, @function
str_rep:
.LFB7:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 81 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 83 0
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -16(%rbp)
	.loc 1 84 0
	movl	$2, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	.loc 1 85 0
	call	luaL_resetbuffer
	.loc 1 86 0
	jmp	.L25
.L26:
	.loc 1 87 0
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addnchar
.L25:
	.loc 1 86 0
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	testl	%eax, %eax
	jg	.L26
	.loc 1 88 0
	call	closeandpush
	.loc 1 89 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	str_rep, .-str_rep
	.section	.rodata
.LC3:
	.string	"out of range"
	.text
	.type	str_byte, @function
str_byte:
.LFB8:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	.loc 1 92 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 94 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -40(%rbp)
	.loc 1 95 0
	movq	-48(%rbp), %rbx
	movsd	.LC2(%rip), %xmm0
	movl	$2, %edi
	call	luaL_opt_number
	cvttsd2siq	%xmm0, %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	posrelat
	movq	%rax, -32(%rbp)
	.loc 1 96 0
	cmpq	$0, -32(%rbp)
	jle	.L29
	.loc 1 96 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jle	.L30
.L29:
	.loc 1 96 0 discriminator 3
	movl	$.LC3, %esi
	movl	$2, %edi
	call	luaL_argerror
.L30:
	.loc 1 97 0 is_stmt 1
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	call	lua_pushnumber
	.loc 1 98 0
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail
.L31:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	str_byte, .-str_byte
	.section	.rodata
.LC4:
	.string	"invalid value"
	.text
	.type	str_char, @function
str_char:
.LFB9:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 102 0
	movl	$0, -12(%rbp)
	.loc 1 103 0
	call	luaL_resetbuffer
	.loc 1 104 0
	jmp	.L33
.L36:
.LBB2:
	.loc 1 105 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	.loc 1 106 0
	cvttsd2si	-8(%rbp), %eax
	movzbl	%al, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L37
	ucomisd	-8(%rbp), %xmm0
	je	.L34
.L37:
	.loc 1 106 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	movl	$.LC4, %esi
	movl	%eax, %edi
	call	luaL_argerror
.L34:
	.loc 1 107 0 is_stmt 1
	cvttsd2si	-8(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
.L33:
.LBE2:
	.loc 1 104 0
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	lua_lua2C
	testl	%eax, %eax
	jne	.L36
	.loc 1 109 0
	call	closeandpush
	.loc 1 110 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	str_char, .-str_char
	.section	.rodata
.LC5:
	.string	"unfinished capture"
	.text
	.type	push_captures, @function
push_captures:
.LFB10:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 141 0
	movl	$0, -8(%rbp)
	jmp	.L39
.L41:
.LBB3:
	.loc 1 142 0
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 143 0
	cmpl	$-1, -4(%rbp)
	jne	.L40
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edi
	call	lua_error
.L40:
	.loc 1 144 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lua_pushlstring
.LBE3:
	.loc 1 141 0 discriminator 2
	addl	$1, -8(%rbp)
.L39:
	.loc 1 141 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-8(%rbp), %eax
	jg	.L41
	.loc 1 146 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	push_captures, .-push_captures
	.section	.rodata
.LC6:
	.string	"invalid capture index"
	.text
	.type	check_cap, @function
check_cap:
.LFB11:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 150 0
	subl	$49, -4(%rbp)
	.loc 1 151 0
	cmpl	$0, -4(%rbp)
	js	.L43
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.L43
	.loc 1 151 0 discriminator 2
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L44
.L43:
	.loc 1 152 0 is_stmt 1
	movl	$.LC6, %edi
	call	lua_error
.L44:
	.loc 1 153 0
	movl	-4(%rbp), %eax
	.loc 1 154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	check_cap, .-check_cap
	.section	.rodata
.LC7:
	.string	"invalid pattern capture"
	.text
	.type	capture_to_close, @function
capture_to_close:
.LFB12:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 158 0
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 159 0
	subl	$1, -4(%rbp)
	jmp	.L47
.L50:
	.loc 1 160 0
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L48
	.loc 1 160 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	jmp	.L49
.L48:
	.loc 1 159 0 is_stmt 1 discriminator 2
	subl	$1, -4(%rbp)
.L47:
	.loc 1 159 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	jns	.L50
	.loc 1 161 0 is_stmt 1
	movl	$.LC7, %edi
	call	lua_error
	.loc 1 162 0
	movl	$0, %eax
.L49:
	.loc 1 163 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	capture_to_close, .-capture_to_close
	.section	.rodata
	.align 8
.LC8:
	.string	"incorrect pattern (ends with `%c')"
	.align 8
.LC9:
	.string	"incorrect pattern (missing `]')"
	.text
	.globl	luaI_classend
	.type	luaI_classend, @function
luaI_classend:
.LFB13:
	.loc 1 166 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 167 0
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$37, %eax
	je	.L53
	cmpl	$91, %eax
	je	.L54
	jmp	.L60
.L53:
	.loc 1 169 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	.loc 1 170 0
	movl	$37, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	luaL_verror
.L55:
	.loc 1 171 0
	movq	-8(%rbp), %rax
	addq	$1, %rax
	jmp	.L56
.L54:
	.loc 1 173 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L57
	.loc 1 173 0 is_stmt 0 discriminator 1
	addq	$1, -8(%rbp)
.L57:
	.loc 1 174 0 is_stmt 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L58
	.loc 1 174 0 is_stmt 0 discriminator 1
	addq	$1, -8(%rbp)
.L58:
	.loc 1 175 0 is_stmt 1
	movq	-8(%rbp), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	.loc 1 176 0
	cmpq	$0, -8(%rbp)
	jne	.L59
	.loc 1 176 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi
	call	lua_error
.L59:
	.loc 1 177 0 is_stmt 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	jmp	.L56
.L60:
	.loc 1 179 0
	movq	-8(%rbp), %rax
.L56:
	.loc 1 181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	luaI_classend, .-luaI_classend
	.type	matchclass, @function
matchclass:
.LFB14:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 1 186 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	tolower
	subl	$97, %eax
	cmpl	$25, %eax
	ja	.L62
	movl	%eax, %eax
	movq	.L64(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L64:
	.quad	.L63
	.quad	.L62
	.quad	.L65
	.quad	.L66
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L67
	.quad	.L62
	.quad	.L62
	.quad	.L62
	.quad	.L68
	.quad	.L62
	.quad	.L62
	.quad	.L69
	.quad	.L62
	.quad	.L70
	.quad	.L62
	.quad	.L71
	.quad	.L72
	.quad	.L62
	.quad	.L73
	.text
.L63:
	.loc 1 187 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 187 0
	movzwl	%ax, %eax
	.loc 1 187 0
	andl	$1024, %eax
	movl	%eax, -4(%rbp)
	.loc 1 187 0
	jmp	.L74
.L65:
	.loc 1 188 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 188 0
	movzwl	%ax, %eax
	.loc 1 188 0
	andl	$2, %eax
	movl	%eax, -4(%rbp)
	.loc 1 188 0
	jmp	.L74
.L66:
	.loc 1 189 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 189 0
	movzwl	%ax, %eax
	.loc 1 189 0
	andl	$2048, %eax
	movl	%eax, -4(%rbp)
	.loc 1 189 0
	jmp	.L74
.L67:
	.loc 1 190 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 190 0
	movzwl	%ax, %eax
	.loc 1 190 0
	andl	$512, %eax
	movl	%eax, -4(%rbp)
	.loc 1 190 0
	jmp	.L74
.L68:
	.loc 1 191 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 191 0
	movzwl	%ax, %eax
	.loc 1 191 0
	andl	$4, %eax
	movl	%eax, -4(%rbp)
	.loc 1 191 0
	jmp	.L74
.L69:
	.loc 1 192 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 192 0
	movzwl	%ax, %eax
	.loc 1 192 0
	andl	$8192, %eax
	movl	%eax, -4(%rbp)
	.loc 1 192 0
	jmp	.L74
.L70:
	.loc 1 193 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 193 0
	movzwl	%ax, %eax
	.loc 1 193 0
	andl	$256, %eax
	movl	%eax, -4(%rbp)
	.loc 1 193 0
	jmp	.L74
.L71:
	.loc 1 194 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 194 0
	movzwl	%ax, %eax
	.loc 1 194 0
	andl	$8, %eax
	movl	%eax, -4(%rbp)
	.loc 1 194 0
	jmp	.L74
.L72:
	.loc 1 195 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 195 0
	movzwl	%ax, %eax
	.loc 1 195 0
	andl	$4096, %eax
	movl	%eax, -4(%rbp)
	.loc 1 195 0
	jmp	.L74
.L73:
	.loc 1 196 0
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L74
.L62:
	.loc 1 197 0
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L75
.L74:
	.loc 1 199 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 199 0
	movzwl	%ax, %eax
	andl	$512, %eax
	.loc 1 199 0
	testl	%eax, %eax
	jne	.L76
	.loc 1 199 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 1 199 0 is_stmt 1 discriminator 1
	jmp	.L78
.L76:
	.loc 1 199 0 discriminator 2
	movl	-4(%rbp), %eax
.L78:
	.loc 1 199 0
	nop
.L75:
	.loc 1 200 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	matchclass, .-matchclass
	.type	matchbracketclass, @function
matchbracketclass:
.LFB15:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 205 0
	movl	$1, -4(%rbp)
	.loc 1 206 0
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L81
	.loc 1 207 0
	movl	$0, -4(%rbp)
	.loc 1 208 0
	addq	$1, -32(%rbp)
	.loc 1 210 0
	jmp	.L81
.L86:
	.loc 1 211 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L82
	.loc 1 212 0
	addq	$1, -32(%rbp)
	.loc 1 213 0
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L81
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	matchclass
	testl	%eax, %eax
	je	.L81
	.loc 1 214 0 is_stmt 1
	movl	-4(%rbp), %eax
	jmp	.L83
.L82:
	.loc 1 216 0
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L84
	.loc 1 216 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	cmpq	-40(%rbp), %rax
	jnb	.L84
	.loc 1 217 0 is_stmt 1
	addq	$2, -32(%rbp)
	.loc 1 218 0
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jg	.L81
	.loc 1 218 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jl	.L81
	.loc 1 219 0 is_stmt 1
	movl	-4(%rbp), %eax
	jmp	.L83
.L84:
	.loc 1 221 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jne	.L81
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	jmp	.L83
.L81:
	.loc 1 210 0 is_stmt 1
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L86
	.loc 1 223 0
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
.L83:
	.loc 1 224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	matchbracketclass, .-matchbracketclass
	.globl	luaI_singlematch
	.type	luaI_singlematch, @function
luaI_singlematch:
.LFB16:
	.loc 1 228 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 229 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$46, %eax
	je	.L89
	cmpl	$91, %eax
	je	.L90
	cmpl	$37, %eax
	je	.L91
	jmp	.L93
.L89:
	.loc 1 231 0
	movl	$1, %eax
	jmp	.L92
.L91:
	.loc 1 233 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	matchclass
	jmp	.L92
.L90:
	.loc 1 235 0
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	matchbracketclass
	jmp	.L92
.L93:
	.loc 1 237 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
.L92:
	.loc 1 239 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	luaI_singlematch, .-luaI_singlematch
	.section	.rodata
.LC10:
	.string	"unbalanced pattern"
	.text
	.type	matchbalance, @function
matchbalance:
.LFB17:
	.loc 1 245 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 246 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L95
	.loc 1 246 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L96
.L95:
	.loc 1 247 0 is_stmt 1
	movl	$.LC10, %edi
	call	lua_error
.L96:
	.loc 1 248 0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L97
	.loc 1 248 0 discriminator 1
	movl	$0, %eax
	jmp	.L98
.L97:
.LBB4:
	.loc 1 250 0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	.loc 1 251 0
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	.loc 1 252 0
	movl	$1, -12(%rbp)
	.loc 1 253 0
	jmp	.L99
.L101:
	.loc 1 254 0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jne	.L100
	.loc 1 255 0
	subl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L99
	.loc 1 255 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	jmp	.L98
.L100:
	.loc 1 257 0 is_stmt 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-8(%rbp), %eax
	jne	.L99
	.loc 1 257 0 is_stmt 0 discriminator 1
	addl	$1, -12(%rbp)
.L99:
	.loc 1 253 0 is_stmt 1
	addq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L101
.LBE4:
	.loc 1 260 0
	movl	$0, %eax
.L98:
	.loc 1 261 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	matchbalance, .-matchbalance
	.type	max_expand, @function
max_expand:
.LFB18:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 1 265 0
	movl	$0, -12(%rbp)
	.loc 1 266 0
	jmp	.L103
.L105:
	.loc 1 267 0
	addl	$1, -12(%rbp)
.L103:
	.loc 1 266 0
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L106
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	luaI_singlematch
	testl	%eax, %eax
	jne	.L105
	.loc 1 269 0 is_stmt 1
	jmp	.L106
.L109:
.LBB5:
	.loc 1 270 0
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	match
	movq	%rax, -8(%rbp)
	.loc 1 271 0
	cmpq	$0, -8(%rbp)
	je	.L107
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L108
.L107:
	.loc 1 272 0 is_stmt 1
	subl	$1, -12(%rbp)
.L106:
.LBE5:
	.loc 1 269 0
	cmpl	$0, -12(%rbp)
	jns	.L109
	.loc 1 274 0
	movl	$0, %eax
.L108:
	.loc 1 275 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	max_expand, .-max_expand
	.type	min_expand, @function
min_expand:
.LFB19:
	.loc 1 278 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
.L114:
.LBB6:
	.loc 1 280 0
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	movq	%rax, -8(%rbp)
	.loc 1 281 0
	cmpq	$0, -8(%rbp)
	je	.L111
	.loc 1 282 0
	movq	-8(%rbp), %rax
	jmp	.L112
.L111:
	.loc 1 283 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L113
	.loc 1 283 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	luaI_singlematch
	testl	%eax, %eax
	je	.L113
	.loc 1 284 0 is_stmt 1
	addq	$1, -24(%rbp)
.LBE6:
	.loc 1 286 0
	jmp	.L114
.L113:
.LBB7:
	.loc 1 285 0
	movl	$0, %eax
.L112:
.LBE7:
	.loc 1 287 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	min_expand, .-min_expand
	.section	.rodata
.LC11:
	.string	"too many captures"
	.text
	.type	start_capt, @function
start_capt:
.LFB20:
	.loc 1 290 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 292 0
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 1 293 0
	cmpl	$31, -12(%rbp)
	jle	.L116
	.loc 1 293 0 is_stmt 0 discriminator 1
	movl	$.LC11, %edi
	call	lua_error
.L116:
	.loc 1 294 0 is_stmt 1
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 295 0
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$-1, (%rax)
	.loc 1 296 0
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 1 297 0
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L117
	.loc 1 298 0
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
.L117:
	.loc 1 299 0
	movq	-8(%rbp), %rax
	.loc 1 300 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	start_capt, .-start_capt
	.type	end_capt, @function
end_capt:
.LFB21:
	.loc 1 303 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 304 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	capture_to_close
	movl	%eax, -12(%rbp)
	.loc 1 306 0
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	%ecx, (%rax)
	.loc 1 307 0
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	.loc 1 308 0
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$-1, (%rax)
.L120:
	.loc 1 309 0
	movq	-8(%rbp), %rax
	.loc 1 310 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	end_capt, .-end_capt
	.type	match_capture, @function
match_capture:
.LFB22:
	.loc 1 313 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 314 0
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	check_cap
	movl	%eax, -8(%rbp)
	.loc 1 315 0
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 1 316 0
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jl	.L123
	.loc 1 317 0 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	.loc 1 316 0 discriminator 1
	testl	%eax, %eax
	jne	.L123
	.loc 1 318 0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L124
.L123:
	.loc 1 319 0
	movl	$0, %eax
.L124:
	.loc 1 320 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	match_capture, .-match_capture
	.type	match, @function
match:
.LFB23:
	.loc 1 323 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
.L126:
	.loc 1 325 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$41, %eax
	ja	.L127
	movl	%eax, %eax
	movq	.L129(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L129:
	.quad	.L128
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L127
	.quad	.L130
	.quad	.L131
	.quad	.L127
	.quad	.L127
	.quad	.L132
	.quad	.L133
	.text
.L132:
	.loc 1 327 0
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	start_capt
	jmp	.L134
.L133:
	.loc 1 329 0
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	end_capt
	jmp	.L134
.L131:
	.loc 1 331 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	.loc 1 331 0
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	.loc 1 331 0
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 331 0
	movzwl	%ax, %eax
	andl	$2048, %eax
	.loc 1 331 0
	testl	%eax, %eax
	je	.L135
	.loc 1 332 0
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	match_capture
	movq	%rax, -40(%rbp)
	.loc 1 333 0
	cmpq	$0, -40(%rbp)
	jne	.L136
	.loc 1 333 0 discriminator 1
	movl	$0, %eax
	jmp	.L134
.L136:
	.loc 1 334 0
	addq	$2, -48(%rbp)
	jmp	.L126
.L135:
	.loc 1 336 0
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	.L154
	.loc 1 337 0
	movq	-48(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matchbalance
	movq	%rax, -40(%rbp)
	.loc 1 338 0
	cmpq	$0, -40(%rbp)
	jne	.L138
	.loc 1 338 0 discriminator 1
	movl	$0, %eax
	jmp	.L134
.L138:
	.loc 1 339 0
	addq	$4, -48(%rbp)
	jmp	.L126
.L128:
	.loc 1 343 0
	movq	-40(%rbp), %rax
	jmp	.L134
.L130:
	.loc 1 345 0
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L155
	.loc 1 346 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.L140
	.loc 1 346 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	jmp	.L134
.L140:
	.loc 1 346 0 discriminator 2
	movl	$0, %eax
	jmp	.L134
.L154:
	.loc 1 341 0 is_stmt 1
	nop
	jmp	.L127
.L155:
	.loc 1 347 0
	nop
.L127:
.LBB8:
	.loc 1 349 0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	luaI_classend
	movq	%rax, -16(%rbp)
	.loc 1 350 0
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L142
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	luaI_singlematch
	testl	%eax, %eax
	je	.L142
	.loc 1 350 0 discriminator 3
	movl	$1, %eax
	jmp	.L143
.L142:
	.loc 1 350 0 discriminator 4
	movl	$0, %eax
.L143:
	.loc 1 350 0 discriminator 6
	movl	%eax, -20(%rbp)
	.loc 1 351 0 is_stmt 1 discriminator 6
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L145
	cmpl	$43, %eax
	jg	.L146
	cmpl	$42, %eax
	je	.L147
	.loc 1 351 0 is_stmt 0
	jmp	.L144
.L146:
	.loc 1 351 0 discriminator 6
	cmpl	$45, %eax
	je	.L148
	cmpl	$63, %eax
	jne	.L144
.LBB9:
	.loc 1 354 0 is_stmt 1
	cmpl	$0, -20(%rbp)
	je	.L150
	.loc 1 354 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	match
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L150
	.loc 1 355 0 is_stmt 1
	movq	-8(%rbp), %rax
	jmp	.L134
.L150:
	.loc 1 356 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L126
.L147:
.LBE9:
	.loc 1 359 0
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	max_expand
	jmp	.L134
.L145:
	.loc 1 361 0
	cmpl	$0, -20(%rbp)
	je	.L151
	.loc 1 361 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	max_expand
	jmp	.L134
.L151:
	.loc 1 361 0 discriminator 2
	movl	$0, %eax
	jmp	.L134
.L148:
	.loc 1 363 0 is_stmt 1
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	min_expand
	jmp	.L134
.L144:
	.loc 1 365 0
	cmpl	$0, -20(%rbp)
	jne	.L153
	.loc 1 365 0 discriminator 1
	movl	$0, %eax
	jmp	.L134
.L153:
	.loc 1 366 0
	addq	$1, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L126
.L134:
.LBE8:
	.loc 1 370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	match, .-match
	.section	.rodata
.LC12:
	.string	"^$*+?.([%-"
	.text
	.type	str_find, @function
str_find:
.LFB24:
	.loc 1 373 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$616, %rsp
	.cfi_offset 3, -24
	.loc 1 373 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 375 0
	leaq	-616(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -592(%rbp)
	.loc 1 376 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rax, -608(%rbp)
	.loc 1 377 0
	movq	-616(%rbp), %rbx
	movsd	.LC2(%rip), %xmm0
	movl	$3, %edi
	call	luaL_opt_number
	cvttsd2siq	%xmm0, %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	posrelat
	subq	$1, %rax
	movq	%rax, -584(%rbp)
	.loc 1 379 0
	cmpq	$0, -584(%rbp)
	js	.L157
	.loc 1 379 0 is_stmt 0 discriminator 2
	movq	-616(%rbp), %rax
	cmpq	%rax, -584(%rbp)
	jle	.L158
.L157:
	.loc 1 379 0 discriminator 3
	movl	$.LC3, %esi
	movl	$3, %edi
	call	luaL_argerror
.L158:
	.loc 1 380 0 is_stmt 1
	movl	$4, %edi
	call	lua_lua2C
	testl	%eax, %eax
	jne	.L159
	.loc 1 381 0 discriminator 1
	movq	-608(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	strpbrk
	.loc 1 380 0 discriminator 1
	testq	%rax, %rax
	jne	.L160
.L159:
.LBB10:
	.loc 1 382 0
	movq	-584(%rbp), %rdx
	movq	-592(%rbp), %rax
	addq	%rax, %rdx
	movq	-608(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strstr
	movq	%rax, -568(%rbp)
	.loc 1 383 0
	cmpq	$0, -568(%rbp)
	je	.L172
	.loc 1 384 0
	movq	-568(%rbp), %rdx
	movq	-592(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	call	lua_pushnumber
	.loc 1 385 0
	movq	-568(%rbp), %rdx
	movq	-592(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	movq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	testq	%rax, %rax
	js	.L162
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L163
.L162:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L163:
	call	lua_pushnumber
	.loc 1 386 0
	jmp	.L156
.L160:
.LBE10:
.LBB11:
	.loc 1 390 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L166
	.loc 1 390 0 is_stmt 0 discriminator 1
	addq	$1, -608(%rbp)
	movl	$1, %eax
	jmp	.L167
.L166:
	.loc 1 390 0 discriminator 2
	movl	$0, %eax
.L167:
	.loc 1 390 0 discriminator 4
	movl	%eax, -620(%rbp)
	.loc 1 391 0 is_stmt 1 discriminator 4
	movq	-584(%rbp), %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -600(%rbp)
	.loc 1 392 0 discriminator 4
	movq	-616(%rbp), %rax
	movq	%rax, %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -560(%rbp)
.L169:
.LBB12:
	.loc 1 395 0
	movl	$0, -552(%rbp)
	.loc 1 396 0
	leaq	-560(%rbp), %rdx
	movq	-608(%rbp), %rcx
	movq	-600(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	je	.L168
	.loc 1 397 0
	movq	-600(%rbp), %rdx
	movq	-592(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	call	lua_pushnumber
	.loc 1 398 0
	movq	-576(%rbp), %rdx
	movq	-592(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	call	lua_pushnumber
	.loc 1 399 0
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	push_captures
	.loc 1 400 0
	jmp	.L156
.L168:
.LBE12:
	.loc 1 402 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movq	-560(%rbp), %rdx
	cmpq	%rdx, %rax
	jnb	.L165
	.loc 1 402 0 is_stmt 0 discriminator 1
	cmpl	$0, -620(%rbp)
	je	.L169
	jmp	.L165
.L172:
.LBE11:
	.loc 1 381 0 is_stmt 1
	nop
.L165:
	.loc 1 404 0 discriminator 1
	call	lua_pushnil
.L156:
	.loc 1 405 0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L171
	call	__stack_chk_fail
.L171:
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	str_find, .-str_find
	.type	add_s, @function
add_s:
.LFB25:
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 1 409 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	lua_isstring
	testl	%eax, %eax
	je	.L174
.LBB13:
	.loc 1 410 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	lua_getstring
	movq	%rax, -24(%rbp)
	.loc 1 411 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	lua_strlen
	movl	%eax, -44(%rbp)
	.loc 1 413 0
	movl	$0, -48(%rbp)
	jmp	.L175
.L179:
	.loc 1 414 0
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L176
	.loc 1 415 0
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
	jmp	.L177
.L176:
	.loc 1 417 0
	addl	$1, -48(%rbp)
	.loc 1 418 0
	call	__ctype_b_loc
	movq	(%rax), %rax
	.loc 1 418 0
	movl	-48(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	.loc 1 418 0
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 418 0
	movzwl	%ax, %eax
	andl	$2048, %eax
	.loc 1 418 0
	testl	%eax, %eax
	jne	.L178
	.loc 1 419 0
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
	jmp	.L177
.L178:
.LBB14:
	.loc 1 421 0
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	check_cap
	movl	%eax, -40(%rbp)
	.loc 1 422 0
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addnchar
.L177:
.LBE14:
	.loc 1 413 0 discriminator 2
	addl	$1, -48(%rbp)
.L175:
	.loc 1 413 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L179
.LBE13:
	.loc 1 447 0 is_stmt 1
	jmp	.L183
.L174:
.LBB15:
	.loc 1 431 0
	call	lua_beginblock
	.loc 1 432 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	push_captures
	.loc 1 434 0
	movl	$0, %edi
	call	luaL_newbuffer
	movl	%eax, -36(%rbp)
	.loc 1 435 0
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	lua_callfunction
	movl	%eax, -32(%rbp)
	.loc 1 437 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	luaL_oldbuffer
	.loc 1 438 0
	cmpl	$0, -32(%rbp)
	je	.L181
	.loc 1 439 0
	call	lua_endblock
	.loc 1 440 0
	movl	$0, %edi
	call	lua_error
.L181:
	.loc 1 442 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, -28(%rbp)
	.loc 1 443 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lua_isstring
	testl	%eax, %eax
	je	.L182
	.loc 1 444 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lua_strlen
	movl	%eax, %ebx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lua_getstring
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	addnchar
.L182:
	.loc 1 445 0
	call	lua_endblock
.L183:
.LBE15:
	.loc 1 447 0
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	add_s, .-add_s
	.section	.rodata
.LC13:
	.string	"string or function expected"
	.text
	.type	str_gsub, @function
str_gsub:
.LFB26:
	.loc 1 450 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	.loc 1 450 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 452 0
	leaq	-576(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, -568(%rbp)
	.loc 1 453 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rax, -560(%rbp)
	.loc 1 454 0
	movl	$3, %edi
	call	lua_lua2C
	movl	%eax, -588(%rbp)
	.loc 1 455 0
	movq	-576(%rbp), %rax
	addq	$1, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movl	$4, %edi
	call	luaL_opt_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, -584(%rbp)
	.loc 1 456 0
	movq	-560(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L185
	.loc 1 456 0 is_stmt 0 discriminator 1
	addq	$1, -560(%rbp)
	movl	$1, %eax
	jmp	.L186
.L185:
	.loc 1 456 0 discriminator 2
	movl	$0, %eax
.L186:
	.loc 1 456 0 discriminator 4
	movl	%eax, -580(%rbp)
	.loc 1 457 0 is_stmt 1 discriminator 4
	movl	$0, -592(%rbp)
	.loc 1 459 0 discriminator 4
	movl	-588(%rbp), %eax
	movl	%eax, %edi
	call	lua_isstring
	testl	%eax, %eax
	jne	.L187
	.loc 1 459 0 is_stmt 0 discriminator 1
	movl	-588(%rbp), %eax
	movl	%eax, %edi
	call	lua_isfunction
	testl	%eax, %eax
	jne	.L187
	.loc 1 459 0 discriminator 2
	movl	$.LC13, %esi
	movl	$3, %edi
	call	luaL_argerror
.L187:
	.loc 1 461 0 is_stmt 1
	call	luaL_resetbuffer
	.loc 1 462 0
	movq	-576(%rbp), %rax
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -544(%rbp)
	.loc 1 463 0
	jmp	.L188
.L194:
.LBB16:
	.loc 1 465 0
	movl	$0, -536(%rbp)
	.loc 1 466 0
	leaq	-544(%rbp), %rdx
	movq	-560(%rbp), %rcx
	movq	-568(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	movq	%rax, -552(%rbp)
	.loc 1 467 0
	cmpq	$0, -552(%rbp)
	je	.L189
	.loc 1 468 0
	addl	$1, -592(%rbp)
	.loc 1 469 0
	leaq	-544(%rbp), %rdx
	movl	-588(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	add_s
.L189:
	.loc 1 471 0
	cmpq	$0, -552(%rbp)
	je	.L190
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jbe	.L190
	.loc 1 472 0 is_stmt 1
	movq	-552(%rbp), %rax
	movq	%rax, -568(%rbp)
	jmp	.L191
.L190:
	.loc 1 473 0
	movq	-544(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jbe	.L196
	.loc 1 474 0
	movq	-568(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -568(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
.L191:
	.loc 1 476 0
	cmpl	$0, -580(%rbp)
	jne	.L197
.L188:
.LBE16:
	.loc 1 463 0
	movl	-592(%rbp), %eax
	cmpl	-584(%rbp), %eax
	jl	.L194
	jmp	.L193
.L196:
.LBB17:
	.loc 1 475 0
	nop
	jmp	.L193
.L197:
	.loc 1 476 0
	nop
.L193:
.LBE17:
	.loc 1 478 0
	movq	-544(%rbp), %rax
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addnchar
	.loc 1 479 0
	call	closeandpush
	.loc 1 480 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	-592(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 481 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L195
	call	__stack_chk_fail
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	str_gsub, .-str_gsub
	.section	.rodata
.LC14:
	.string	"\\000"
	.text
	.type	luaI_addquoted, @function
luaI_addquoted:
.LFB27:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 1 486 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 488 0
	leaq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	luaL_check_lstr
	movq	%rax, -16(%rbp)
	.loc 1 489 0
	movl	$34, %edi
	call	luaL_addchar
	.loc 1 490 0
	jmp	.L199
.L205:
	.loc 1 491 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	je	.L201
	cmpl	$10, %eax
	jg	.L202
	testl	%eax, %eax
	je	.L203
	jmp	.L200
.L202:
	cmpl	$34, %eax
	je	.L201
	cmpl	$92, %eax
	jne	.L200
.L201:
	.loc 1 493 0
	movl	$92, %edi
	call	luaL_addchar
	.loc 1 494 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
	.loc 1 495 0
	jmp	.L204
.L203:
	.loc 1 496 0
	movl	$4, %esi
	movl	$.LC14, %edi
	call	addnchar
	jmp	.L204
.L200:
	.loc 1 497 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
.L204:
	.loc 1 499 0
	addq	$1, -16(%rbp)
.L199:
	.loc 1 490 0
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	.L205
	.loc 1 501 0
	movl	$34, %edi
	call	luaL_addchar
	.loc 1 502 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L206
	call	__stack_chk_fail
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	luaI_addquoted, .-luaI_addquoted
	.section	.rodata
.LC15:
	.string	"[-+ #0]*(%d*)%.?(%d*)"
	.align 8
.LC16:
	.string	"invalid format (width or precision too long)"
.LC17:
	.string	"invalid option in `format'"
	.text
	.type	str_format, @function
str_format:
.LFB28:
	.loc 1 507 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	.loc 1 507 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 508 0
	movl	$1, -604(%rbp)
	.loc 1 509 0
	movl	-604(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	luaL_check_lstr
	movq	%rax, -592(%rbp)
	.loc 1 510 0
	call	luaL_resetbuffer
	.loc 1 511 0
	jmp	.L208
.L224:
	.loc 1 512 0
	movq	-592(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L209
	.loc 1 513 0
	movq	-592(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -592(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
	jmp	.L208
.L209:
	.loc 1 514 0
	addq	$1, -592(%rbp)
	movq	-592(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L210
	.loc 1 515 0
	movq	-592(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -592(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	luaL_addchar
	jmp	.L208
.L210:
.LBB18:
	.loc 1 520 0
	movq	-592(%rbp), %rax
	movq	%rax, -584(%rbp)
	.loc 1 521 0
	movb	$37, -32(%rbp)
	.loc 1 522 0
	call	__ctype_b_loc
	movq	(%rax), %rdx
	.loc 1 522 0
	movq	-584(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 522 0
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	.loc 1 522 0
	movzwl	%ax, %eax
	andl	$2048, %eax
	.loc 1 522 0
	testl	%eax, %eax
	je	.L211
	.loc 1 522 0 discriminator 1
	movq	-584(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L211
	.loc 1 523 0
	movq	-584(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -604(%rbp)
	.loc 1 524 0
	addq	$2, -584(%rbp)
.L211:
	.loc 1 526 0
	addl	$1, -604(%rbp)
	.loc 1 527 0
	movq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -560(%rbp)
	.loc 1 528 0
	movl	$0, -552(%rbp)
	.loc 1 529 0
	leaq	-560(%rbp), %rdx
	movq	-584(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	match
	movq	%rax, -592(%rbp)
	.loc 1 530 0
	movl	-536(%rbp), %eax
	cmpl	$2, %eax
	jg	.L212
	.loc 1 530 0 is_stmt 0 discriminator 1
	movl	-520(%rbp), %eax
	cmpl	$2, %eax
	jg	.L212
	.loc 1 531 0 is_stmt 1 discriminator 2
	movq	-592(%rbp), %rdx
	movq	-584(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 1 530 0 discriminator 2
	cmpq	$18, %rax
	jle	.L213
.L212:
	.loc 1 532 0
	movl	$.LC16, %edi
	call	lua_error
.L213:
	.loc 1 533 0
	movq	-592(%rbp), %rdx
	movq	-584(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-584(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	.loc 1 534 0
	movq	-592(%rbp), %rdx
	movq	-584(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$2, %rax
	movb	$0, -32(%rbp,%rax)
	.loc 1 535 0
	movl	$512, %edi
	call	luaL_openspace
	movq	%rax, -576(%rbp)
	.loc 1 536 0
	movq	-592(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -592(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$69, %eax
	cmpl	$51, %eax
	ja	.L214
	movl	%eax, %eax
	movq	.L216(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L216:
	.quad	.L215
	.quad	.L214
	.quad	.L215
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L217
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L218
	.quad	.L218
	.quad	.L215
	.quad	.L215
	.quad	.L215
	.quad	.L214
	.quad	.L218
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L214
	.quad	.L217
	.quad	.L214
	.quad	.L219
	.quad	.L214
	.quad	.L220
	.quad	.L214
	.quad	.L217
	.quad	.L214
	.quad	.L214
	.quad	.L217
	.text
.L218:
	.loc 1 538 0
	movl	-604(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %edx
	leaq	-32(%rbp), %rcx
	movq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	.loc 1 539 0
	jmp	.L221
.L217:
	.loc 1 541 0
	movl	-604(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	.loc 1 542 0
	jmp	.L221
.L215:
	.loc 1 544 0
	movl	-604(%rbp), %eax
	movl	%eax, %edi
	call	luaL_check_number
	leaq	-32(%rbp), %rdx
	movq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	sprintf
	.loc 1 545 0
	jmp	.L221
.L219:
	.loc 1 547 0
	movl	-604(%rbp), %eax
	movl	%eax, %edi
	call	luaI_addquoted
	.loc 1 548 0
	jmp	.L208
.L220:
.LBB19:
	.loc 1 551 0
	leaq	-600(%rbp), %rdx
	movl	-604(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	luaL_check_lstr
	movq	%rax, -568(%rbp)
	.loc 1 552 0
	movl	-520(%rbp), %eax
	testl	%eax, %eax
	jne	.L223
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-600(%rbp), %rax
	cmpq	$99, %rax
	jle	.L223
	.loc 1 555 0 is_stmt 1
	movq	-600(%rbp), %rax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addnchar
	jmp	.L208
.L223:
	.loc 1 559 0
	movq	-568(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	jmp	.L221
.L214:
.LBE19:
	.loc 1 564 0
	movl	$.LC17, %edi
	call	lua_error
.L221:
	.loc 1 566 0
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edi
	call	luaL_addsize
.L208:
.LBE18:
	.loc 1 511 0
	movq	-592(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L224
	.loc 1 569 0
	call	closeandpush
	.loc 1 570 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L225
	call	__stack_chk_fail
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	str_format, .-str_format
	.section	.rodata
.LC18:
	.string	"strlen"
.LC19:
	.string	"strsub"
.LC20:
	.string	"strlower"
.LC21:
	.string	"strupper"
.LC22:
	.string	"strchar"
.LC23:
	.string	"strrep"
.LC24:
	.string	"ascii"
.LC25:
	.string	"strbyte"
.LC26:
	.string	"format"
.LC27:
	.string	"strfind"
.LC28:
	.string	"gsub"
	.data
	.align 32
	.type	strlib, @object
	.size	strlib, 176
strlib:
	.quad	.LC18
	.quad	str_len
	.quad	.LC19
	.quad	str_sub
	.quad	.LC20
	.quad	str_lower
	.quad	.LC21
	.quad	str_upper
	.quad	.LC22
	.quad	str_char
	.quad	.LC23
	.quad	str_rep
	.quad	.LC24
	.quad	str_byte
	.quad	.LC25
	.quad	str_byte
	.quad	.LC26
	.quad	str_format
	.quad	.LC27
	.quad	str_find
	.quad	.LC28
	.quad	str_gsub
	.text
	.globl	lua_strlibopen
	.type	lua_strlibopen, @function
lua_strlibopen:
.LFB29:
	.loc 1 592 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 593 0
	movl	$11, %esi
	movl	$strlib, %edi
	call	luaL_openlib
	.loc 1 594 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	lua_strlibopen, .-lua_strlibopen
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1074790400
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "../../include/lua.h"
	.file 3 "../../include/lauxlib.h"
	.file 4 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd03
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF75
	.byte	0x1
	.long	.LASF76
	.long	.LASF77
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.byte	0x2f
	.long	0xd6
	.uleb128 0x6
	.long	.LASF9
	.value	0x100
	.uleb128 0x6
	.long	.LASF10
	.value	0x200
	.uleb128 0x6
	.long	.LASF11
	.value	0x400
	.uleb128 0x6
	.long	.LASF12
	.value	0x800
	.uleb128 0x6
	.long	.LASF13
	.value	0x1000
	.uleb128 0x6
	.long	.LASF14
	.value	0x2000
	.uleb128 0x6
	.long	.LASF15
	.value	0x4000
	.uleb128 0x6
	.long	.LASF16
	.value	0x8000
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.uleb128 0x7
	.long	.LASF20
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x72
	.long	0xe6
	.uleb128 0x9
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.byte	0x1a
	.long	0xf1
	.uleb128 0x4
	.byte	0x8
	.long	0xf7
	.uleb128 0xb
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.byte	0x1b
	.long	0x3b
	.uleb128 0xc
	.long	.LASF26
	.byte	0x10
	.byte	0x3
	.byte	0xf
	.long	0x128
	.uleb128 0xd
	.long	.LASF23
	.byte	0x3
	.byte	0x10
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF24
	.byte	0x3
	.byte	0x11
	.long	0xe6
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0x1
	.byte	0x80
	.long	0x149
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x81
	.long	0x6c
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x82
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF27
	.value	0x210
	.byte	0x1
	.byte	0x7d
	.long	0x17b
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x7e
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.byte	0x7f
	.long	0x57
	.byte	0x8
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x83
	.long	0x17b
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x128
	.long	0x18b
	.uleb128 0x9
	.long	0x65
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0x13
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x13
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0x1b
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x23
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF42
	.byte	0x1
	.byte	0x28
	.long	0x5e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0x28
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x28
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x2e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x2f
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x30
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.byte	0x31
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"end"
	.byte	0x1
	.byte	0x32
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x3b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e3
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x3c
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x3e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x46
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x325
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x49
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.byte	0x50
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x367
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x52
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x53
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0x54
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.byte	0x5c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ab
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x5d
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"pos"
	.byte	0x1
	.byte	0x5f
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.byte	0x65
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f3
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x66
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0x69
	.long	0x3f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF40
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x8b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x450
	.uleb128 0x12
	.string	"cap"
	.byte	0x1
	.byte	0x8b
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x149
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.byte	0x95
	.long	0x57
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x492
	.uleb128 0x12
	.string	"l"
	.byte	0x1
	.byte	0x95
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"cap"
	.byte	0x1
	.byte	0x95
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.long	.LASF44
	.byte	0x1
	.byte	0x9d
	.long	0x57
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d0
	.uleb128 0x12
	.string	"cap"
	.byte	0x1
	.byte	0x9d
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.byte	0x9e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF47
	.byte	0x1
	.byte	0xa6
	.long	0x6c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fe
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF45
	.byte	0x1
	.byte	0xb8
	.long	0x57
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x547
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xb8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"cl"
	.byte	0x1
	.byte	0xb8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0xb9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.byte	0xcc
	.long	0x57
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xcc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xcc
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0xcc
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"sig"
	.byte	0x1
	.byte	0xcd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF48
	.byte	0x1
	.byte	0xe4
	.long	0x57
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e4
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0xe4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xe4
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"ep"
	.byte	0x1
	.byte	0xe4
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.byte	0xf5
	.long	0x6c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x664
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0xf5
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0xf5
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"cap"
	.byte	0x1
	.byte	0xf5
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x13
	.string	"b"
	.byte	0x1
	.byte	0xfa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"e"
	.byte	0x1
	.byte	0xfb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.byte	0xfc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x1
	.value	0x108
	.long	0x6c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ec
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x108
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x108
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"ep"
	.byte	0x1
	.value	0x108
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x108
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x109
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x10e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x1
	.value	0x116
	.long	0x6c
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x75b
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x116
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x116
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"ep"
	.byte	0x1
	.value	0x116
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x116
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x118
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x1
	.value	0x122
	.long	0x6c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c5
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x122
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x122
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x122
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x123
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.value	0x124
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.value	0x12f
	.long	0x6c
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x82d
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x12f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x12f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x12f
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x130
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x131
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.value	0x139
	.long	0x6c
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x897
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x1
	.value	0x139
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x139
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x13a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0x13b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.value	0x143
	.long	0x6c
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x952
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x143
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.value	0x143
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x143
	.long	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF25
	.byte	0x1
	.value	0x144
	.quad	.L126
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.value	0x15c
	.quad	.L127
	.uleb128 0x17
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1c
	.string	"ep"
	.byte	0x1
	.value	0x15d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"m"
	.byte	0x1
	.value	0x15e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x161
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF58
	.byte	0x1
	.value	0x175
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xa33
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x176
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x177
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x178
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x1e
	.long	.LASF25
	.byte	0x1
	.value	0x179
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x1c
	.string	"cap"
	.byte	0x1
	.value	0x17a
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x9df
	.uleb128 0x1c
	.string	"s2"
	.byte	0x1
	.value	0x17e
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.uleb128 0x17
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.value	0x186
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -636
	.uleb128 0x1c
	.string	"s1"
	.byte	0x1
	.value	0x187
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x17
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x18a
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF60
	.byte	0x1
	.value	0x198
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xb11
	.uleb128 0x1f
	.long	.LASF61
	.byte	0x1
	.value	0x198
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.string	"cap"
	.byte	0x1
	.value	0x198
	.long	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xad1
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.value	0x19a
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x19b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x19c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.value	0x1a5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x1ac
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF63
	.byte	0x1
	.value	0x1ad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF64
	.byte	0x1
	.value	0x1ae
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF65
	.byte	0x1
	.value	0x1c2
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc0
	.uleb128 0x1e
	.long	.LASF66
	.byte	0x1
	.value	0x1c3
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.value	0x1c4
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.value	0x1c5
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x1
	.value	0x1c6
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x1e
	.long	.LASF67
	.byte	0x1
	.value	0x1c7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.value	0x1c8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.value	0x1c9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x1c
	.string	"cap"
	.byte	0x1
	.value	0x1ca
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.value	0x1d0
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.value	0x1e6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xc08
	.uleb128 0x1b
	.string	"arg"
	.byte	0x1
	.value	0x1e6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x1e7
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x1e8
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.value	0x1fb
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc6
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.value	0x1fc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.value	0x1fd
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x17
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x1c
	.string	"cap"
	.byte	0x1
	.value	0x205
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.value	0x206
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF72
	.byte	0x1
	.value	0x207
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x1e
	.long	.LASF73
	.byte	0x1
	.value	0x208
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x17
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.value	0x226
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.value	0x227
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF79
	.byte	0x1
	.value	0x24f
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	0x103
	.long	0xcf0
	.uleb128 0x9
	.long	0x65
	.byte	0xa
	.byte	0
	.uleb128 0x1e
	.long	.LASF74
	.byte	0x1
	.value	0x23d
	.long	0xce0
	.uleb128 0x9
	.byte	0x3
	.quad	strlib
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"matchbalance"
.LASF16:
	.string	"_ISgraph"
.LASF64:
	.string	"oldbuff"
.LASF41:
	.string	"push_captures"
.LASF60:
	.string	"add_s"
.LASF14:
	.string	"_ISspace"
.LASF67:
	.string	"max_s"
.LASF25:
	.string	"init"
.LASF10:
	.string	"_ISlower"
.LASF47:
	.string	"luaI_classend"
.LASF45:
	.string	"matchclass"
.LASF11:
	.string	"_ISalpha"
.LASF36:
	.string	"str_upper"
.LASF12:
	.string	"_ISdigit"
.LASF4:
	.string	"signed char"
.LASF72:
	.string	"buff"
.LASF66:
	.string	"srcl"
.LASF6:
	.string	"long int"
.LASF50:
	.string	"cont"
.LASF20:
	.string	"_ISalnum"
.LASF48:
	.string	"luaI_singlematch"
.LASF21:
	.string	"lua_CFunction"
.LASF59:
	.string	"anchor"
.LASF43:
	.string	"check_cap"
.LASF17:
	.string	"_ISblank"
.LASF69:
	.string	"str_format"
.LASF19:
	.string	"_ISpunct"
.LASF75:
	.string	"GNU C89 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O0 -ansi -fstack-protector-strong"
.LASF35:
	.string	"str_lower"
.LASF38:
	.string	"str_byte"
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF23:
	.string	"name"
.LASF27:
	.string	"Capture"
.LASF29:
	.string	"level"
.LASF1:
	.string	"short unsigned int"
.LASF71:
	.string	"form"
.LASF77:
	.string	"/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib"
.LASF46:
	.string	"matchbracketclass"
.LASF52:
	.string	"min_expand"
.LASF33:
	.string	"str_sub"
.LASF22:
	.string	"lua_Object"
.LASF30:
	.string	"capture"
.LASF57:
	.string	"dflt"
.LASF65:
	.string	"str_gsub"
.LASF7:
	.string	"sizetype"
.LASF51:
	.string	"max_expand"
.LASF56:
	.string	"match"
.LASF37:
	.string	"str_rep"
.LASF53:
	.string	"start_capt"
.LASF44:
	.string	"capture_to_close"
.LASF31:
	.string	"addnchar"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF54:
	.string	"end_capt"
.LASF42:
	.string	"posrelat"
.LASF40:
	.string	"double"
.LASF55:
	.string	"match_capture"
.LASF26:
	.string	"luaL_reg"
.LASF8:
	.string	"char"
.LASF24:
	.string	"func"
.LASF18:
	.string	"_IScntrl"
.LASF13:
	.string	"_ISxdigit"
.LASF39:
	.string	"str_char"
.LASF73:
	.string	"initf"
.LASF78:
	.string	"closeandpush"
.LASF70:
	.string	"strfrmt"
.LASF74:
	.string	"strlib"
.LASF63:
	.string	"status"
.LASF9:
	.string	"_ISupper"
.LASF76:
	.string	"lstrlib.c"
.LASF79:
	.string	"lua_strlibopen"
.LASF32:
	.string	"str_len"
.LASF68:
	.string	"luaI_addquoted"
.LASF34:
	.string	"start"
.LASF58:
	.string	"str_find"
.LASF15:
	.string	"_ISprint"
.LASF61:
	.string	"newp"
.LASF62:
	.string	"news"
.LASF28:
	.string	"src_end"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
