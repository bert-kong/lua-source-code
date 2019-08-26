	.file	"ldblib.c"
	.text
.Ltext0:
	.type	settabss, @function
settabss:
.LFB0:
	.file 1 "ldblib.c"
	.loc 1 18 0
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
	.loc 1 19 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 20 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 21 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 22 0
	call	lua_settable
	.loc 1 23 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	settabss, .-settabss
	.type	settabsi, @function
settabsi:
.LFB1:
	.loc 1 26 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	.loc 1 27 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 28 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 29 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	-8(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 30 0
	call	lua_settable
	.loc 1 31 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	settabsi, .-settabsi
	.section	.rodata
.LC0:
	.string	"C"
.LC1:
	.string	"kind"
.LC2:
	.string	"chunk"
.LC3:
	.string	"source"
.LC4:
	.string	"Lua"
.LC5:
	.string	"def_line"
.LC6:
	.string	"name"
.LC7:
	.string	"where"
	.text
	.type	getfuncinfo, @function
getfuncinfo:
.LFB2:
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 1 34 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 35 0
	call	lua_createtable
	movl	%eax, -28(%rbp)
	.loc 1 38 0
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lua_funcinfo
	.loc 1 39 0
	movl	-32(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L4
	.loc 1 40 0
	movl	-28(%rbp), %eax
	movl	$.LC0, %edx
	movl	$.LC1, %esi
	movl	%eax, %edi
	call	settabss
	jmp	.L5
.L4:
	.loc 1 41 0
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 42 0
	movl	-28(%rbp), %eax
	movl	$.LC2, %edx
	movl	$.LC1, %esi
	movl	%eax, %edi
	call	settabss
	.loc 1 43 0
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC3, %esi
	movl	%eax, %edi
	call	settabss
	jmp	.L5
.L6:
	.loc 1 46 0
	movl	-28(%rbp), %eax
	movl	$.LC4, %edx
	movl	$.LC1, %esi
	movl	%eax, %edi
	call	settabss
	.loc 1 47 0
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	$.LC5, %esi
	movl	%eax, %edi
	call	settabsi
	.loc 1 48 0
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC3, %esi
	movl	%eax, %edi
	call	settabss
.L5:
	.loc 1 50 0
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L7
.LBB2:
	.loc 1 51 0
	leaq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	lua_getobjname
	movq	%rax, -16(%rbp)
	.loc 1 52 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
	.loc 1 53 0
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC6, %esi
	movl	%eax, %edi
	call	settabss
	.loc 1 54 0
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC7, %esi
	movl	%eax, %edi
	call	settabss
.L7:
.LBE2:
	.loc 1 57 0
	movl	-28(%rbp), %eax
	.loc 1 58 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	getfuncinfo, .-getfuncinfo
	.section	.rodata
.LC8:
	.string	"current"
.LC9:
	.string	"func"
	.text
	.type	getstack, @function
getstack:
.LFB3:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 62 0
	movl	$1, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	lua_stackedfunction
	movl	%eax, -12(%rbp)
	.loc 1 63 0
	cmpl	$0, -12(%rbp)
	je	.L14
.LBB3:
	.loc 1 66 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	getfuncinfo
	movl	%eax, -8(%rbp)
	.loc 1 67 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	lua_currentline
	movl	%eax, -4(%rbp)
	.loc 1 68 0
	cmpl	$0, -4(%rbp)
	jle	.L13
	.loc 1 69 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	$.LC8, %esi
	movl	%eax, %edi
	call	settabsi
.L13:
	.loc 1 70 0
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 71 0
	movl	$.LC9, %edi
	call	lua_pushstring
	.loc 1 72 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 73 0
	call	lua_settable
	.loc 1 74 0
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	jmp	.L10
.L14:
.LBE3:
	.loc 1 64 0
	nop
.L10:
	.loc 1 76 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getstack, .-getstack
	.type	funcinfo, @function
funcinfo:
.LFB4:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 80 0
	movl	$1, %edi
	call	luaL_functionarg
	movl	%eax, %edi
	call	getfuncinfo
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 81 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	funcinfo, .-funcinfo
	.section	.rodata
	.align 8
.LC10:
	.string	"no local variable `%.50s' at given level"
	.text
	.type	findlocal, @function
findlocal:
.LFB5:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	.loc 1 84 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 85 0
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	lua_lua2C
	movl	%eax, -28(%rbp)
	.loc 1 86 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lua_isnumber
	testl	%eax, %eax
	je	.L17
	.loc 1 87 0
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	lua_getnumber
	cvttsd2si	%xmm0, %eax
	jmp	.L18
.L17:
.LBB4:
	.loc 1 89 0
	movl	-56(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	luaL_check_lstr
	movq	%rax, -16(%rbp)
	.loc 1 90 0
	movl	$0, -36(%rbp)
	.loc 1 91 0
	movl	$-1, -32(%rbp)
	.loc 1 93 0
	jmp	.L19
.L20:
	.loc 1 94 0
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L19
	.loc 1 95 0
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
.L19:
	.loc 1 93 0
	addl	$1, -36(%rbp)
	leaq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	lua_getlocal
	testl	%eax, %eax
	jne	.L20
	.loc 1 97 0
	cmpl	$-1, -32(%rbp)
	jne	.L21
	.loc 1 98 0
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	luaL_verror
.L21:
	.loc 1 99 0
	movl	-32(%rbp), %eax
.L18:
.LBE4:
	.loc 1 101 0 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L22
	.loc 1 101 0 is_stmt 0
	call	__stack_chk_fail
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	findlocal, .-findlocal
	.type	getlocal, @function
getlocal:
.LFB6:
	.loc 1 104 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 104 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 105 0
	movl	$1, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	lua_stackedfunction
	movl	%eax, -28(%rbp)
	.loc 1 108 0
	cmpl	$0, -28(%rbp)
	je	.L34
	.loc 1 110 0
	movl	$2, %edi
	call	lua_lua2C
	testl	%eax, %eax
	je	.L26
	.loc 1 111 0
	movl	-28(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	findlocal
	movl	%eax, %ecx
	leaq	-16(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	lua_getlocal
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L23
	.loc 1 112 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 113 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	jmp	.L23
.L26:
.LBB5:
	.loc 1 118 0
	call	lua_createtable
	movl	%eax, -20(%rbp)
	.loc 1 120 0
	movl	$1, -32(%rbp)
.L31:
	.loc 1 121 0
	leaq	-16(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	lua_getlocal
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L35
	.loc 1 123 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 124 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 125 0
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 126 0
	call	lua_settable
	.loc 1 120 0
	addl	$1, -32(%rbp)
	.loc 1 127 0
	jmp	.L31
.L35:
	.loc 1 122 0
	nop
	.loc 1 128 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	jmp	.L23
.L34:
.LBE5:
	.loc 1 109 0
	nop
.L23:
	.loc 1 130 0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getlocal, .-getlocal
	.section	.rodata
.LC11:
	.string	"level out of range"
.LC12:
	.string	"no such local variable"
	.text
	.type	setlocal, @function
setlocal:
.LFB7:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 134 0
	movl	$1, %edi
	call	luaL_check_number
	cvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	lua_stackedfunction
	movl	%eax, -8(%rbp)
	.loc 1 136 0
	cmpl	$0, -8(%rbp)
	jne	.L37
	.loc 1 136 0 is_stmt 0 discriminator 1
	movl	$.LC11, %esi
	movl	$1, %edi
	call	luaL_argerror
.L37:
	.loc 1 137 0 is_stmt 1
	movl	-8(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	findlocal
	movl	%eax, -4(%rbp)
	.loc 1 138 0
	movl	$3, %edi
	call	luaL_nonnullarg
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 139 0
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	lua_setlocal
	testl	%eax, %eax
	jne	.L39
	.loc 1 140 0
	movl	$.LC12, %edi
	call	lua_error
.L39:
	.loc 1 141 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	setlocal, .-setlocal
	.data
	.align 4
	.type	linehook, @object
	.size	linehook, 4
linehook:
	.long	-1
	.align 4
	.type	callhook, @object
	.size	callhook, 4
callhook:
	.long	-1
	.text
	.type	dohook, @function
dohook:
.LFB8:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 150 0
	movl	$0, %edi
	call	lua_setlinehook
	movq	%rax, -16(%rbp)
	.loc 1 151 0
	movl	$0, %edi
	call	lua_setcallhook
	movq	%rax, -8(%rbp)
	.loc 1 152 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_getref
	movl	%eax, %edi
	call	lua_callfunction
	.loc 1 153 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_setlinehook
	.loc 1 154 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	lua_setcallhook
	.loc 1 155 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dohook, .-dohook
	.type	linef, @function
linef:
.LFB9:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 159 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 160 0
	movl	linehook(%rip), %eax
	movl	%eax, %edi
	call	dohook
	.loc 1 161 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	linef, .-linef
	.type	callf, @function
callf:
.LFB10:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	.loc 1 165 0
	cmpl	$0, -4(%rbp)
	je	.L43
	.loc 1 166 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 167 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 168 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	-8(%rbp), %xmm0
	call	lua_pushnumber
.L43:
	.loc 1 170 0
	movl	callhook(%rip), %eax
	movl	%eax, %edi
	call	dohook
	.loc 1 171 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	callf, .-callf
	.type	setcallhook, @function
setcallhook:
.LFB11:
	.loc 1 174 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 175 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, -4(%rbp)
	.loc 1 176 0
	movl	callhook(%rip), %eax
	movl	%eax, %edi
	call	lua_unref
	.loc 1 177 0
	cmpl	$0, -4(%rbp)
	jne	.L45
	.loc 1 178 0
	movl	$-1, callhook(%rip)
	.loc 1 179 0
	movl	$0, %edi
	call	lua_setcallhook
	.loc 1 186 0
	jmp	.L47
.L45:
	.loc 1 182 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 183 0
	movl	$1, %edi
	call	lua_ref
	movl	%eax, callhook(%rip)
	.loc 1 184 0
	movl	$callf, %edi
	call	lua_setcallhook
.L47:
	.loc 1 186 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	setcallhook, .-setcallhook
	.type	setlinehook, @function
setlinehook:
.LFB12:
	.loc 1 189 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 190 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, -4(%rbp)
	.loc 1 191 0
	movl	linehook(%rip), %eax
	movl	%eax, %edi
	call	lua_unref
	.loc 1 192 0
	cmpl	$0, -4(%rbp)
	jne	.L49
	.loc 1 193 0
	movl	$-1, linehook(%rip)
	.loc 1 194 0
	movl	$0, %edi
	call	lua_setlinehook
	.loc 1 201 0
	jmp	.L51
.L49:
	.loc 1 197 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_pushobject
	.loc 1 198 0
	movl	$1, %edi
	call	lua_ref
	movl	%eax, linehook(%rip)
	.loc 1 199 0
	movl	$linef, %edi
	call	lua_setlinehook
.L51:
	.loc 1 201 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	setlinehook, .-setlinehook
	.section	.rodata
.LC13:
	.string	"funcinfo"
.LC14:
	.string	"getlocal"
.LC15:
	.string	"getstack"
.LC16:
	.string	"setcallhook"
.LC17:
	.string	"setlinehook"
.LC18:
	.string	"setlocal"
	.data
	.align 32
	.type	dblib, @object
	.size	dblib, 96
dblib:
	.quad	.LC13
	.quad	funcinfo
	.quad	.LC14
	.quad	getlocal
	.quad	.LC15
	.quad	getstack
	.quad	.LC16
	.quad	setcallhook
	.quad	.LC17
	.quad	setlinehook
	.quad	.LC18
	.quad	setlocal
	.text
	.globl	lua_dblibopen
	.type	lua_dblibopen, @function
lua_dblibopen:
.LFB13:
	.loc 1 214 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 215 0
	movl	$6, %esi
	movl	$dblib, %edi
	call	luaL_openlib
	.loc 1 216 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	lua_dblibopen, .-lua_dblibopen
.Letext0:
	.file 2 "../../include/lua.h"
	.file 3 "../../include/lauxlib.h"
	.file 4 "../../include/luadebug.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x514
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF36
	.byte	0x1
	.long	.LASF37
	.long	.LASF38
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
	.long	.LASF2
	.byte	0x2
	.byte	0x1a
	.long	0x4d
	.uleb128 0x5
	.byte	0x8
	.long	0x53
	.uleb128 0x6
	.uleb128 0x4
	.long	.LASF3
	.byte	0x2
	.byte	0x1b
	.long	0x5f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.long	.LASF39
	.byte	0x10
	.byte	0x3
	.byte	0xf
	.long	0x8b
	.uleb128 0x8
	.long	.LASF5
	.byte	0x3
	.byte	0x10
	.long	0x8b
	.byte	0
	.uleb128 0x8
	.long	.LASF6
	.byte	0x3
	.byte	0x11
	.long	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x4
	.byte	0xe
	.long	0x54
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.byte	0x10
	.long	0xae
	.uleb128 0x5
	.byte	0x8
	.long	0xb4
	.uleb128 0x9
	.long	0xbf
	.uleb128 0xa
	.long	0x34
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x11
	.long	0xca
	.uleb128 0x5
	.byte	0x8
	.long	0xd0
	.uleb128 0x9
	.long	0xe5
	.uleb128 0xa
	.long	0x98
	.uleb128 0xa
	.long	0x8b
	.uleb128 0xa
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF11
	.byte	0x1
	.byte	0x12
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x127
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x12
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x12
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x12
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.long	.LASF12
	.byte	0x1
	.byte	0x1a
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x169
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x1a
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x1a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x22
	.long	0x54
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e3
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0x22
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.byte	0x23
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"str"
	.byte	0x1
	.byte	0x24
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF14
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xf
	.long	.LASF15
	.byte	0x1
	.byte	0x33
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x3d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x23d
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0x3e
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.byte	0x42
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.byte	0x43
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x4f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x54
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ea
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0x54
	.long	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"arg"
	.byte	0x1
	.byte	0x54
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x55
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xf
	.long	.LASF5
	.byte	0x1
	.byte	0x59
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.byte	0x5b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x5c
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x68
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0x69
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0x6a
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF5
	.byte	0x1
	.byte	0x6b
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.byte	0x76
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x77
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x85
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x398
	.uleb128 0xf
	.long	.LASF6
	.byte	0x1
	.byte	0x86
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x95
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e0
	.uleb128 0xc
	.string	"ref"
	.byte	0x1
	.byte	0x95
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x96
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x97
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x9e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x9e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0xa4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x454
	.uleb128 0xe
	.long	.LASF6
	.byte	0x1
	.byte	0xa4
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0xa4
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xa4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0xae
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x47e
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0xaf
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0xbd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a8
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0xbe
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF41
	.byte	0x1
	.byte	0xd6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.byte	0x91
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	linehook
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x92
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	callhook
	.uleb128 0x14
	.long	0x66
	.long	0x4fb
	.uleb128 0x15
	.long	0x4fb
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF34
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0xcc
	.long	0x4eb
	.uleb128 0x9
	.byte	0x3
	.quad	dblib
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LASF30:
	.string	"setcallhook"
.LASF12:
	.string	"settabsi"
.LASF25:
	.string	"oldlinehook"
.LASF26:
	.string	"oldcallhook"
.LASF17:
	.string	"currline"
.LASF32:
	.string	"linehook"
.LASF35:
	.string	"dblib"
.LASF40:
	.string	"funcinfo"
.LASF36:
	.string	"GNU C89 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O0 -ansi -fstack-protector-strong"
.LASF0:
	.string	"long unsigned int"
.LASF15:
	.string	"kind"
.LASF3:
	.string	"lua_Object"
.LASF29:
	.string	"file"
.LASF39:
	.string	"luaL_reg"
.LASF6:
	.string	"func"
.LASF23:
	.string	"numvar"
.LASF18:
	.string	"getfuncinfo"
.LASF38:
	.string	"/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib"
.LASF4:
	.string	"unsigned int"
.LASF7:
	.string	"char"
.LASF22:
	.string	"setlocal"
.LASF14:
	.string	"line"
.LASF13:
	.string	"result"
.LASF37:
	.string	"ldblib.c"
.LASF34:
	.string	"sizetype"
.LASF9:
	.string	"lua_LHFunction"
.LASF5:
	.string	"name"
.LASF27:
	.string	"linef"
.LASF11:
	.string	"settabss"
.LASF8:
	.string	"lua_Function"
.LASF24:
	.string	"dohook"
.LASF20:
	.string	"vname"
.LASF33:
	.string	"callhook"
.LASF28:
	.string	"callf"
.LASF19:
	.string	"findlocal"
.LASF1:
	.string	"long int"
.LASF41:
	.string	"lua_dblibopen"
.LASF2:
	.string	"lua_CFunction"
.LASF10:
	.string	"lua_CHFunction"
.LASF16:
	.string	"getstack"
.LASF31:
	.string	"setlinehook"
.LASF21:
	.string	"getlocal"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
