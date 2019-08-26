	.file	"liolib.c"
	.text
.Ltext0:
	.type	pushresult, @function
pushresult:
.LFB0:
	.file 1 "liolib.c"
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 1 59 0
	cmpl	$0, -4(%rbp)
	je	.L2
	.loc 1 60 0
	movl	$0, %esi
	movl	$0, %edi
	call	lua_pushusertag
	.loc 1 66 0
	jmp	.L4
.L2:
	.loc 1 62 0
	call	lua_pushnil
	.loc 1 63 0
	call	__errno_location
	.loc 1 63 0
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 64 0
	call	__errno_location
	movl	(%rax), %eax
	.loc 1 64 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	call	lua_pushnumber
.L4:
	.loc 1 66 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	pushresult, .-pushresult
	.type	gettag, @function
gettag:
.LFB1:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 76 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, %edi
	call	lua_getnumber
	cvttsd2si	%xmm0, %eax
	.loc 1 77 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	gettag, .-gettag
	.section	.rodata
.LC0:
	.string	"cannot access a closed file"
	.text
	.type	ishandle, @function
ishandle:
.LFB2:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 81 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_isuserdata
	testl	%eax, %eax
	je	.L8
.LBB2:
	.loc 1 82 0
	call	gettag
	movl	%eax, -4(%rbp)
	.loc 1 83 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_tag
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jne	.L9
	.loc 1 84 0
	movl	$.LC0, %edi
	call	lua_error
.L9:
	.loc 1 85 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_tag
	cmpl	-4(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L10
.L8:
.LBE2:
	.loc 1 87 0
	movl	$0, %eax
.L10:
	.loc 1 88 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ishandle, .-ishandle
	.section	.rodata
	.align 8
.LC1:
	.string	"global variable `%.50s' is not a file handle"
	.text
	.type	getfilebyname, @function
getfilebyname:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 92 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	lua_getglobal
	movl	%eax, -4(%rbp)
	.loc 1 93 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ishandle
	testl	%eax, %eax
	jne	.L12
	.loc 1 94 0
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	luaL_verror
.L12:
	.loc 1 95 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_getuserdata
	.loc 1 96 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getfilebyname, .-getfilebyname
	.type	getfile, @function
getfile:
.LFB4:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 100 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	lua_lua2C
	movl	%eax, -4(%rbp)
	.loc 1 101 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ishandle
	testl	%eax, %eax
	je	.L15
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_getuserdata
	jmp	.L17
.L15:
	.loc 1 101 0 discriminator 2
	movl	$0, %eax
.L17:
	.loc 1 102 0 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getfile, .-getfile
	.section	.rodata
.LC2:
	.string	"invalid file handle"
	.text
	.type	getnonullfile, @function
getnonullfile:
.LFB5:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 106 0
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getfile
	movq	%rax, -8(%rbp)
	.loc 1 107 0
	cmpq	$0, -8(%rbp)
	jne	.L19
	.loc 1 107 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	movl	$.LC2, %esi
	movl	%eax, %edi
	call	luaL_argerror
.L19:
	.loc 1 108 0 is_stmt 1
	movq	-8(%rbp), %rax
	.loc 1 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	getnonullfile, .-getnonullfile
	.type	getfileparam, @function
getfileparam:
.LFB6:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 113 0
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getfile
	movq	%rax, -8(%rbp)
	.loc 1 114 0
	cmpq	$0, -8(%rbp)
	je	.L22
	.loc 1 115 0
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 116 0
	movq	-8(%rbp), %rax
	jmp	.L23
.L22:
	.loc 1 119 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getfilebyname
.L23:
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getfileparam, .-getfileparam
	.type	closefile, @function
closefile:
.LFB7:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 124 0
	movq	stdin(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L26
	.loc 1 124 0 discriminator 1
	movq	stdout(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L26
.LBB3:
	.loc 1 125 0
	call	gettag
	movl	%eax, -4(%rbp)
	.loc 1 126 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	.loc 1 127 0
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_pushusertag
	.loc 1 128 0
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	lua_settag
.L26:
.LBE3:
	.loc 1 130 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	closefile, .-closefile
	.type	io_close, @function
io_close:
.LFB8:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 134 0
	movl	$2, %edi
	call	getnonullfile
	movq	%rax, %rdi
	call	closefile
	.loc 1 135 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	io_close, .-io_close
	.type	gc_close, @function
gc_close:
.LFB9:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 139 0
	movl	$2, %edi
	call	getnonullfile
	movq	%rax, -8(%rbp)
	.loc 1 140 0
	movq	stdin(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L30
	.loc 1 140 0 discriminator 1
	movq	stdout(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L30
	.loc 1 140 0 discriminator 2
	movq	stderr(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L30
	.loc 1 141 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.L30:
	.loc 1 143 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	gc_close, .-gc_close
	.type	io_open, @function
io_open:
.LFB10:
	.loc 1 146 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	.loc 1 147 0
	movl	$0, %esi
	movl	$3, %edi
	call	luaL_check_lstr
	movq	%rax, %rbx
	.loc 1 147 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	.loc 1 148 0
	cmpq	$0, -24(%rbp)
	je	.L32
	.loc 1 148 0 is_stmt 0 discriminator 1
	call	gettag
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_pushusertag
	.loc 1 150 0 is_stmt 1 discriminator 1
	jmp	.L34
.L32:
	.loc 1 149 0
	movl	$0, %edi
	call	pushresult
.L34:
	.loc 1 150 0
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	io_open, .-io_open
	.type	setfile, @function
setfile:
.LFB11:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 1 154 0
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_pushusertag
	.loc 1 155 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	lua_setglobal
	.loc 1 156 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	setfile, .-setfile
	.type	setreturn, @function
setreturn:
.LFB12:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 160 0
	cmpq	$0, -24(%rbp)
	jne	.L37
	.loc 1 161 0
	movl	$0, %edi
	call	pushresult
	.loc 1 167 0
	jmp	.L39
.L37:
.LBB4:
	.loc 1 163 0
	call	gettag
	movl	%eax, -4(%rbp)
	.loc 1 164 0
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setfile
	.loc 1 165 0
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lua_pushusertag
.L39:
.LBE4:
	.loc 1 167 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	setreturn, .-setreturn
	.section	.rodata
.LC3:
	.string	"_INPUT"
.LC4:
	.string	"r"
	.text
	.type	io_readfrom, @function
io_readfrom:
.LFB13:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	.loc 1 172 0
	movl	$2, %edi
	call	lua_lua2C
	movl	%eax, -36(%rbp)
	.loc 1 173 0
	cmpl	$0, -36(%rbp)
	jne	.L41
	.loc 1 174 0
	movl	$.LC3, %edi
	call	getfilebyname
	movq	%rax, %rdi
	call	closefile
	.loc 1 175 0
	movq	stdin(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L42
.L41:
	.loc 1 177 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	lua_tag
	movl	%eax, %ebx
	call	gettag
	cmpl	%eax, %ebx
	jne	.L43
	.loc 1 178 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	lua_getuserdata
	movq	%rax, -32(%rbp)
	jmp	.L42
.L43:
.LBB5:
	.loc 1 180 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rax, -24(%rbp)
	.loc 1 181 0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 181 0
	cmpb	$124, %al
	je	.L44
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	fopen
	jmp	.L45
.L44:
	.loc 1 181 0 discriminator 2
	movl	$0, %eax
.L45:
	.loc 1 181 0 is_stmt 1 discriminator 4
	movq	%rax, -32(%rbp)
.L42:
.LBE5:
	.loc 1 183 0
	movq	-32(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	setreturn
	.loc 1 184 0
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	io_readfrom, .-io_readfrom
	.section	.rodata
.LC5:
	.string	"_OUTPUT"
.LC6:
	.string	"w"
	.text
	.type	io_writeto, @function
io_writeto:
.LFB14:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	.loc 1 189 0
	movl	$2, %edi
	call	lua_lua2C
	movl	%eax, -36(%rbp)
	.loc 1 190 0
	cmpl	$0, -36(%rbp)
	jne	.L47
	.loc 1 191 0
	movl	$.LC5, %edi
	call	getfilebyname
	movq	%rax, %rdi
	call	closefile
	.loc 1 192 0
	movq	stdout(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L48
.L47:
	.loc 1 194 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	lua_tag
	movl	%eax, %ebx
	call	gettag
	cmpl	%eax, %ebx
	jne	.L49
	.loc 1 195 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	lua_getuserdata
	movq	%rax, -32(%rbp)
	jmp	.L48
.L49:
.LBB6:
	.loc 1 197 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rax, -24(%rbp)
	.loc 1 198 0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 198 0
	cmpb	$124, %al
	je	.L50
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	fopen
	jmp	.L51
.L50:
	.loc 1 198 0 discriminator 2
	movl	$0, %eax
.L51:
	.loc 1 198 0 is_stmt 1 discriminator 4
	movq	%rax, -32(%rbp)
.L48:
.LBE6:
	.loc 1 200 0
	movq	-32(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	setreturn
	.loc 1 201 0
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	io_writeto, .-io_writeto
	.section	.rodata
.LC7:
	.string	"a"
	.text
	.type	io_appendto, @function
io_appendto:
.LFB15:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 205 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
	.loc 1 206 0
	movq	-8(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	setreturn
	.loc 1 207 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	io_appendto, .-io_appendto
	.section	.rodata
	.align 8
.LC8:
	.string	"unbalanced braces in read pattern"
	.text
	.type	read_pattern, @function
read_pattern:
.LFB16:
	.loc 1 225 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 226 0
	movl	$0, -20(%rbp)
	.loc 1 227 0
	movl	$-2, -16(%rbp)
	.loc 1 228 0
	jmp	.L54
.L74:
	.loc 1 229 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$123, %eax
	je	.L56
	cmpl	$125, %eax
	je	.L57
	jmp	.L77
.L56:
	.loc 1 231 0
	addl	$1, -20(%rbp)
	.loc 1 232 0
	addq	$1, -48(%rbp)
	.loc 1 233 0
	jmp	.L54
.L57:
	.loc 1 235 0
	cmpl	$0, -20(%rbp)
	jne	.L58
	.loc 1 235 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi
	call	lua_error
.L58:
	.loc 1 236 0 is_stmt 1
	subl	$1, -20(%rbp)
	.loc 1 237 0
	addq	$1, -48(%rbp)
	.loc 1 238 0
	jmp	.L54
.L77:
.LBB7:
	.loc 1 240 0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	luaI_classend
	movq	%rax, -8(%rbp)
	.loc 1 242 0
	cmpl	$-2, -16(%rbp)
	jne	.L59
	.loc 1 242 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movl	%eax, -16(%rbp)
.L59:
	.loc 1 243 0
	cmpl	$-1, -16(%rbp)
	je	.L60
	.loc 1 243 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-16(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	luaI_singlematch
	jmp	.L61
.L60:
	.loc 1 243 0 discriminator 2
	movl	$0, %eax
.L61:
	.loc 1 243 0 is_stmt 1 discriminator 4
	movl	%eax, -12(%rbp)
	.loc 1 244 0 discriminator 4
	cmpl	$0, -12(%rbp)
	je	.L62
	.loc 1 245 0
	cmpl	$0, -20(%rbp)
	jne	.L63
	.loc 1 245 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	luaL_addchar
.L63:
	.loc 1 246 0 is_stmt 1
	movl	$-2, -16(%rbp)
.L62:
	.loc 1 248 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L65
	cmpl	$63, %eax
	je	.L66
	cmpl	$42, %eax
	je	.L69
	jmp	.L78
.L65:
	.loc 1 250 0
	cmpl	$0, -12(%rbp)
	je	.L79
	.loc 1 253 0
	jmp	.L69
.L72:
	.loc 1 254 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movl	%eax, -16(%rbp)
	.loc 1 255 0
	cmpl	$-1, -16(%rbp)
	je	.L70
	.loc 1 255 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-16(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	luaI_singlematch
	jmp	.L71
.L70:
	.loc 1 255 0 discriminator 2
	movl	$0, %eax
.L71:
	.loc 1 255 0 is_stmt 1 discriminator 4
	movl	%eax, -12(%rbp)
	.loc 1 256 0 discriminator 4
	cmpl	$0, -12(%rbp)
	je	.L69
	.loc 1 256 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)
	jne	.L69
	.loc 1 256 0 discriminator 2
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	luaL_addchar
.L69:
	.loc 1 253 0 is_stmt 1
	cmpl	$0, -12(%rbp)
	jne	.L72
.L66:
	.loc 1 260 0
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 1 261 0
	jmp	.L54
.L78:
	.loc 1 263 0
	cmpl	$0, -12(%rbp)
	je	.L80
	.loc 1 264 0
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.L54:
.LBE7:
	.loc 1 228 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L74
	jmp	.L68
.L79:
.LBB8:
	.loc 1 250 0
	nop
	jmp	.L68
.L80:
	.loc 1 263 0
	nop
.L68:
.LBE8:
	.loc 1 269 0
	cmpl	$-2, -16(%rbp)
	je	.L75
	.loc 1 269 0 discriminator 1
	movq	-40(%rbp), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc
.L75:
	.loc 1 270 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	.loc 1 271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	read_pattern, .-read_pattern
	.section	.rodata
.LC9:
	.string	"%lf"
	.text
	.type	read_number, @function
read_number:
.LFB17:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 274 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 276 0
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fscanf
	cmpl	$1, %eax
	jne	.L82
	.loc 1 277 0
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 278 0
	movl	$1, %eax
	jmp	.L84
.L82:
	.loc 1 280 0
	movl	$0, %eax
.L84:
	.loc 1 281 0 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L85
	.loc 1 281 0 is_stmt 0
	call	__stack_chk_fail
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	read_number, .-read_number
	.type	read_line, @function
read_line:
.LFB18:
	.loc 1 287 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L89:
	.loc 1 292 0
	movl	$1024, %edi
	call	luaL_openspace
	movq	%rax, -8(%rbp)
	.loc 1 293 0
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L87
	.loc 1 293 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L88
.L87:
	.loc 1 294 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -12(%rbp)
	.loc 1 295 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	luaL_addsize
	.loc 1 296 0
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L89
	.loc 1 297 0
	movl	$-1, %edi
	call	luaL_addsize
	.loc 1 298 0
	movl	$1, %eax
.L88:
	.loc 1 299 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	read_line, .-read_line
	.type	read_file, @function
read_file:
.LFB19:
	.loc 1 302 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L91:
.LBB9:
	.loc 1 306 0 discriminator 1
	movl	$8192, %edi
	call	luaL_openspace
	movq	%rax, -8(%rbp)
	.loc 1 307 0 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8192, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	movl	%eax, -12(%rbp)
	.loc 1 308 0 discriminator 1
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	luaL_addsize
.LBE9:
	.loc 1 309 0 discriminator 1
	cmpl	$8192, -12(%rbp)
	je	.L91
	.loc 1 310 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	read_file, .-read_file
	.section	.rodata
.LC10:
	.string	"*l"
.LC11:
	.string	"{%s*}%S+"
	.text
	.type	io_read, @function
io_read:
.LFB20:
	.loc 1 313 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 313 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 315 0
	movl	$2, -40(%rbp)
	.loc 1 316 0
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	call	getfileparam
	movq	%rax, -24(%rbp)
	.loc 1 317 0
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	movl	$0, %edx
	movl	$.LC10, %esi
	movl	%eax, %edi
	call	luaL_opt_lstr
	movq	%rax, -32(%rbp)
.L104:
.LBB10:
	.loc 1 321 0
	call	luaL_resetbuffer
	.loc 1 322 0
	movq	-32(%rbp), %rax
	movl	$options.2347, %esi
	movq	%rax, %rdi
	call	luaL_findstring
	cmpl	$4, %eax
	ja	.L93
	movl	%eax, %eax
	movq	.L95(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L95:
	.quad	.L94
	.quad	.L96
	.quad	.L97
	.quad	.L97
	.quad	.L98
	.text
.L94:
	.loc 1 324 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	read_number
	testl	%eax, %eax
	jne	.L107
	jmp	.L92
.L96:
	.loc 1 327 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	read_line
	movl	%eax, -36(%rbp)
	.loc 1 328 0
	jmp	.L102
.L97:
	.loc 1 330 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	read_file
	.loc 1 331 0
	movl	$1, -36(%rbp)
	.loc 1 332 0
	jmp	.L102
.L98:
	.loc 1 334 0
	movq	-24(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	read_pattern
	movl	%eax, -36(%rbp)
	.loc 1 335 0
	jmp	.L102
.L93:
	.loc 1 337 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_pattern
	movl	%eax, -36(%rbp)
.L102:
	.loc 1 339 0
	call	luaL_getsize
	cltq
	movq	%rax, -16(%rbp)
	.loc 1 340 0
	cmpl	$0, -36(%rbp)
	jne	.L103
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L108
.L103:
	.loc 1 341 0 is_stmt 1
	call	luaL_buffer
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lua_pushlstring
	jmp	.L101
.L107:
	.loc 1 325 0
	nop
.L101:
.LBE10:
	.loc 1 342 0
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	.loc 1 342 0
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	luaL_opt_lstr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L104
	jmp	.L92
.L108:
.LBB11:
	.loc 1 340 0
	nop
.L92:
.LBE11:
	.loc 1 343 0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L106
	call	__stack_chk_fail
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	io_read, .-io_read
	.type	io_write, @function
io_write:
.LFB21:
	.loc 1 348 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 348 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 349 0
	movl	$2, -40(%rbp)
	.loc 1 350 0
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	call	getfileparam
	movq	%rax, -24(%rbp)
	.loc 1 351 0
	movl	$1, -36(%rbp)
	.loc 1 354 0
	jmp	.L110
.L113:
	.loc 1 355 0
	cmpl	$0, -36(%rbp)
	je	.L111
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L111
	.loc 1 355 0 discriminator 3
	movl	$1, %eax
	jmp	.L112
.L111:
	.loc 1 355 0 discriminator 4
	movl	$0, %eax
.L112:
	.loc 1 355 0 discriminator 6
	movl	%eax, -36(%rbp)
.L110:
	.loc 1 354 0 is_stmt 1
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	leaq	-32(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	luaL_opt_lstr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L113
	.loc 1 356 0
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	pushresult
	.loc 1 357 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L114
	call	__stack_chk_fail
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	io_write, .-io_write
	.section	.rodata
.LC12:
	.string	"cur"
.LC14:
	.string	"invalid mode"
	.text
	.type	io_seek, @function
io_seek:
.LFB22:
	.loc 1 360 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 363 0
	movl	$2, %edi
	call	getnonullfile
	movq	%rax, -16(%rbp)
	.loc 1 364 0
	movl	$0, %edx
	movl	$.LC12, %esi
	movl	$3, %edi
	call	luaL_opt_lstr
	movl	$modenames.2378, %esi
	movq	%rax, %rdi
	call	luaL_findstring
	movl	%eax, -20(%rbp)
	.loc 1 365 0
	pxor	%xmm0, %xmm0
	movl	$4, %edi
	call	luaL_opt_number
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	.loc 1 366 0
	cmpl	$-1, -20(%rbp)
	jne	.L116
	.loc 1 366 0 is_stmt 0 discriminator 1
	movl	$.LC14, %esi
	movl	$3, %edi
	call	luaL_argerror
.L116:
	.loc 1 367 0 is_stmt 1
	movl	-20(%rbp), %eax
	cltq
	movl	mode.2377(,%rax,4), %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek
	movl	%eax, -20(%rbp)
	.loc 1 368 0
	cmpl	$0, -20(%rbp)
	je	.L117
	.loc 1 369 0
	movl	$0, %edi
	call	pushresult
	.loc 1 372 0
	jmp	.L119
.L117:
	.loc 1 371 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ftell
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	call	lua_pushnumber
.L119:
	.loc 1 372 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	io_seek, .-io_seek
	.type	io_flush, @function
io_flush:
.LFB23:
	.loc 1 375 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 376 0
	movl	$2, %edi
	call	getfile
	movq	%rax, -8(%rbp)
	.loc 1 377 0
	cmpq	$0, -8(%rbp)
	jne	.L121
	.loc 1 377 0 is_stmt 0 discriminator 1
	movl	$2, %edi
	call	lua_lua2C
	testl	%eax, %eax
	je	.L121
	.loc 1 377 0 discriminator 2
	movl	$.LC2, %esi
	movl	$2, %edi
	call	luaL_argerror
.L121:
	.loc 1 379 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fflush
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	pushresult
	.loc 1 380 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	io_flush, .-io_flush
	.type	io_execute, @function
io_execute:
.LFB24:
	.loc 1 391 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 392 0
	movl	$0, %esi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, %rdi
	call	system
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	call	lua_pushnumber
	.loc 1 393 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	io_execute, .-io_execute
	.type	io_remove, @function
io_remove:
.LFB25:
	.loc 1 396 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 397 0
	movl	$0, %esi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, %rdi
	call	remove
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	pushresult
	.loc 1 398 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	io_remove, .-io_remove
	.type	io_rename, @function
io_rename:
.LFB26:
	.loc 1 401 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 403 0
	movl	$0, %esi
	movl	$2, %edi
	call	luaL_check_lstr
	movq	%rax, %rbx
	.loc 1 402 0
	movl	$0, %esi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rename
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	pushresult
	.loc 1 404 0
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	io_rename, .-io_rename
	.type	io_tmpname, @function
io_tmpname:
.LFB27:
	.loc 1 407 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 408 0
	movl	$0, %edi
	call	tmpnam
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 409 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	io_tmpname, .-io_tmpname
	.type	io_getenv, @function
io_getenv:
.LFB28:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 414 0
	movl	$0, %esi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, %rdi
	call	getenv
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 415 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	io_getenv, .-io_getenv
	.type	io_clock, @function
io_clock:
.LFB29:
	.loc 1 418 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 419 0
	call	clock
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC15(%rip), %xmm1
	divsd	%xmm1, %xmm0
	call	lua_pushnumber
	.loc 1 420 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	io_clock, .-io_clock
	.section	.rodata
.LC16:
	.string	"%c"
.LC17:
	.string	"invalid `date' format"
	.text
	.type	io_date, @function
io_date:
.LFB30:
	.loc 1 423 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	.loc 1 423 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 425 0
	movl	$0, %edx
	movl	$.LC16, %esi
	movl	$1, %edi
	call	luaL_opt_lstr
	movq	%rax, -288(%rbp)
	.loc 1 428 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	time
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	localtime
	movq	%rax, -280(%rbp)
	.loc 1 429 0
	movq	-280(%rbp), %rcx
	movq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	strftime
	testq	%rax, %rax
	je	.L129
	.loc 1 430 0
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 433 0
	jmp	.L132
.L129:
	.loc 1 432 0
	movl	$.LC17, %edi
	call	lua_error
.L132:
	.loc 1 433 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L131
	call	__stack_chk_fail
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	io_date, .-io_date
	.section	.rodata
.LC18:
	.string	"all"
.LC19:
	.string	"invalid option"
	.text
	.type	setloc, @function
setloc:
.LFB31:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 441 0
	movl	$0, %edx
	movl	$.LC18, %esi
	movl	$2, %edi
	call	luaL_opt_lstr
	movl	$catnames.2415, %esi
	movq	%rax, %rdi
	call	luaL_findstring
	movl	%eax, -4(%rbp)
	.loc 1 442 0
	cmpl	$-1, -4(%rbp)
	jne	.L134
	.loc 1 442 0 is_stmt 0 discriminator 1
	movl	$.LC19, %esi
	movl	$2, %edi
	call	luaL_argerror
.L134:
	.loc 1 443 0 is_stmt 1
	movl	$0, %esi
	movl	$1, %edi
	call	luaL_check_lstr
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	cat.2414(,%rax,4), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	setlocale
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 444 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	setloc, .-setloc
	.type	io_exit, @function
io_exit:
.LFB32:
	.loc 1 447 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 448 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, -4(%rbp)
	.loc 1 449 0
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_isnumber
	testl	%eax, %eax
	je	.L136
	.loc 1 449 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	lua_getnumber
	cvttsd2si	%xmm0, %eax
	jmp	.L137
.L136:
	.loc 1 449 0 discriminator 2
	movl	$1, %eax
.L137:
	.loc 1 449 0 discriminator 4
	movl	%eax, %edi
	call	exit
	.cfi_endproc
.LFE32:
	.size	io_exit, .-io_exit
	.section	.rodata
.LC20:
	.string	"lua_debug> "
.LC21:
	.string	"cont\n"
	.text
	.type	io_debug, @function
io_debug:
.LFB33:
	.loc 1 456 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	.loc 1 456 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L142:
.LBB12:
	.loc 1 459 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$11, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	.loc 1 460 0
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	je	.L144
	.loc 1 461 0 discriminator 1
	leaq	-272(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	strcmp
	.loc 1 460 0 discriminator 1
	testl	%eax, %eax
	je	.L144
	.loc 1 463 0
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	lua_dostring
.LBE12:
	.loc 1 464 0
	jmp	.L142
.L144:
.LBB13:
	.loc 1 462 0
	nop
.LBE13:
	.loc 1 465 0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L143
	call	__stack_chk_fail
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	io_debug, .-io_debug
	.section	.rodata
.LC22:
	.string	"lua error: %.200s\n"
.LC23:
	.string	"function `%.50s'"
.LC24:
	.string	"`%.50s' tag method"
.LC25:
	.string	"main of %.70s"
.LC26:
	.string	"%.70s"
.LC27:
	.string	"function <%d:%.70s>"
.LC28:
	.string	" at line %d"
.LC29:
	.string	" [%.70s]"
.LC30:
	.string	"_ALERT"
	.text
	.type	errorfb, @function
errorfb:
.LFB34:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1624, %rsp
	.cfi_offset 3, -24
	.loc 1 476 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 478 0
	movl	$1, -1628(%rbp)
	.loc 1 480 0
	movl	$1, %edi
	call	lua_lua2C
	movl	%eax, %edi
	call	lua_getstring
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	.loc 1 481 0
	jmp	.L146
.L159:
.LBB14:
	.loc 1 487 0
	leaq	-1632(%rbp), %rdx
	leaq	-1608(%rbp), %rcx
	movl	-1624(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lua_funcinfo
	.loc 1 488 0
	movq	-1608(%rbp), %rcx
	leaq	-1600(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	luaL_chunkid
	.loc 1 489 0
	cmpl	$2, -1628(%rbp)
	jne	.L147
	.loc 1 489 0 is_stmt 0 discriminator 1
	leaq	-1536(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$5989899063652541249, %rbx
	movq	%rbx, (%rax)
	movl	$1801675124, 8(%rax)
	movw	$2618, 12(%rax)
	movb	$0, 14(%rax)
.L147:
	.loc 1 490 0 is_stmt 1
	leaq	-1536(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movw	$8224, (%rax)
	movb	$0, 2(%rax)
	.loc 1 491 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$1350, %rax
	jbe	.L148
	.loc 1 492 0
	leaq	-1536(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movl	$170798638, (%rax)
	movb	$0, 4(%rax)
	jmp	.L149
.L148:
	.loc 1 495 0
	leaq	-1616(%rbp), %rdx
	movl	-1624(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	lua_getobjname
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$103, %eax
	je	.L151
	cmpl	$116, %eax
	je	.L152
	jmp	.L162
.L151:
	.loc 1 497 0
	movq	-1616(%rbp), %rbx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movq	%rbx, %rdx
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	.loc 1 498 0
	jmp	.L153
.L152:
	.loc 1 500 0
	movq	-1616(%rbp), %rbx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movq	%rbx, %rdx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	.loc 1 501 0
	jmp	.L153
.L162:
	.loc 1 503 0
	movl	-1632(%rbp), %eax
	testl	%eax, %eax
	jne	.L154
	.loc 1 504 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	leaq	-1600(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC25, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf
	jmp	.L155
.L154:
	.loc 1 505 0
	movl	-1632(%rbp), %eax
	testl	%eax, %eax
	jns	.L156
	.loc 1 506 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	leaq	-1600(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC26, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf
	jmp	.L155
.L156:
	.loc 1 508 0
	movl	-1632(%rbp), %ebx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	(%rax,%rdx), %rdi
	leaq	-1600(%rbp), %rax
	movq	%rax, %rcx
	movl	%ebx, %edx
	movl	$.LC27, %esi
	movl	$0, %eax
	call	sprintf
.L155:
	.loc 1 510 0
	movq	$0, -1608(%rbp)
.L153:
	.loc 1 513 0
	movl	-1624(%rbp), %eax
	movl	%eax, %edi
	call	lua_currentline
	movl	%eax, -1620(%rbp)
	cmpl	$0, -1620(%rbp)
	jle	.L157
	.loc 1 514 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	movl	-1620(%rbp), %eax
	movl	%eax, %edx
	movl	$.LC28, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf
.L157:
	.loc 1 515 0
	movq	-1608(%rbp), %rax
	testq	%rax, %rax
	je	.L158
	.loc 1 516 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-1536(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	leaq	-1600(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC29, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf
.L158:
	.loc 1 517 0
	leaq	-1536(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
.L146:
.LBE14:
	.loc 1 481 0
	movl	-1628(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1628(%rbp)
	movl	%eax, %edi
	call	lua_stackedfunction
	movl	%eax, -1624(%rbp)
	cmpl	$0, -1624(%rbp)
	jne	.L159
.L149:
	.loc 1 519 0
	movl	$.LC30, %edi
	call	lua_rawgetglobal
	movl	%eax, -1624(%rbp)
	.loc 1 520 0
	movl	-1624(%rbp), %eax
	movl	%eax, %edi
	call	lua_isfunction
	testl	%eax, %eax
	je	.L163
	.loc 1 521 0
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	lua_pushstring
	.loc 1 522 0
	movl	-1624(%rbp), %eax
	movl	%eax, %edi
	call	lua_callfunction
.L163:
	.loc 1 524 0
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L161
	call	__stack_chk_fail
.L161:
	addq	$1624, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	errorfb, .-errorfb
	.section	.rodata
.LC31:
	.string	"_ERRORMESSAGE"
.LC32:
	.string	"clock"
.LC33:
	.string	"date"
.LC34:
	.string	"debug"
.LC35:
	.string	"execute"
.LC36:
	.string	"exit"
.LC37:
	.string	"getenv"
.LC38:
	.string	"remove"
.LC39:
	.string	"rename"
.LC40:
	.string	"setlocale"
.LC41:
	.string	"tmpname"
	.data
	.align 32
	.type	iolib, @object
	.size	iolib, 176
iolib:
	.quad	.LC31
	.quad	errorfb
	.quad	.LC32
	.quad	io_clock
	.quad	.LC33
	.quad	io_date
	.quad	.LC34
	.quad	io_debug
	.quad	.LC35
	.quad	io_execute
	.quad	.LC36
	.quad	io_exit
	.quad	.LC37
	.quad	io_getenv
	.quad	.LC38
	.quad	io_remove
	.quad	.LC39
	.quad	io_rename
	.quad	.LC40
	.quad	setloc
	.quad	.LC41
	.quad	io_tmpname
	.section	.rodata
.LC42:
	.string	"appendto"
.LC43:
	.string	"closefile"
.LC44:
	.string	"flush"
.LC45:
	.string	"openfile"
.LC46:
	.string	"read"
.LC47:
	.string	"readfrom"
.LC48:
	.string	"seek"
.LC49:
	.string	"write"
.LC50:
	.string	"writeto"
	.data
	.align 32
	.type	iolibtag, @object
	.size	iolibtag, 144
iolibtag:
	.quad	.LC42
	.quad	io_appendto
	.quad	.LC43
	.quad	io_close
	.quad	.LC44
	.quad	io_flush
	.quad	.LC45
	.quad	io_open
	.quad	.LC46
	.quad	io_read
	.quad	.LC47
	.quad	io_readfrom
	.quad	.LC48
	.quad	io_seek
	.quad	.LC49
	.quad	io_write
	.quad	.LC50
	.quad	io_writeto
	.section	.rodata
.LC51:
	.string	"_STDIN"
.LC52:
	.string	"_STDOUT"
.LC53:
	.string	"_STDERR"
.LC54:
	.string	"gc"
	.text
	.type	openwithtags, @function
openwithtags:
.LFB35:
	.loc 1 556 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 558 0
	call	lua_newtag
	movl	%eax, -4(%rbp)
	.loc 1 559 0
	call	lua_newtag
	.loc 1 560 0
	movl	$0, -8(%rbp)
	jmp	.L165
.L166:
	.loc 1 562 0 discriminator 3
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 563 0 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$iolibtag+8, %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	lua_pushcclosure
	.loc 1 564 0 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$iolibtag, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lua_setglobal
	.loc 1 560 0 discriminator 3
	addl	$1, -8(%rbp)
.L165:
	.loc 1 560 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L166
	.loc 1 567 0 is_stmt 1
	movq	stdin(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	setfile
	.loc 1 568 0
	movq	stdout(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	setfile
	.loc 1 569 0
	movq	stdin(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC51, %esi
	movq	%rax, %rdi
	call	setfile
	.loc 1 570 0
	movq	stdout(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	call	setfile
	.loc 1 571 0
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC53, %esi
	movq	%rax, %rdi
	call	setfile
	.loc 1 573 0
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	call	lua_pushnumber
	.loc 1 574 0
	movl	$1, %esi
	movl	$gc_close, %edi
	call	lua_pushcclosure
	.loc 1 575 0
	movl	-4(%rbp), %eax
	movl	$.LC54, %esi
	movl	%eax, %edi
	call	lua_settagmethod
	.loc 1 576 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	openwithtags, .-openwithtags
	.globl	lua_iolibopen
	.type	lua_iolibopen, @function
lua_iolibopen:
.LFB36:
	.loc 1 578 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 580 0
	movl	$11, %esi
	movl	$iolib, %edi
	call	luaL_openlib
	.loc 1 581 0
	call	openwithtags
	.loc 1 582 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	lua_iolibopen, .-lua_iolibopen
	.section	.rodata
.LC55:
	.string	"*n"
.LC56:
	.string	"*a"
.LC57:
	.string	".*"
.LC58:
	.string	"*w"
	.data
	.align 32
	.type	options.2347, @object
	.size	options.2347, 48
options.2347:
	.quad	.LC55
	.quad	.LC10
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	0
	.section	.rodata
.LC59:
	.string	"set"
.LC60:
	.string	"end"
	.data
	.align 32
	.type	modenames.2378, @object
	.size	modenames.2378, 32
modenames.2378:
	.quad	.LC59
	.quad	.LC12
	.quad	.LC60
	.quad	0
	.align 8
	.type	mode.2377, @object
	.size	mode.2377, 12
mode.2377:
	.long	0
	.long	1
	.long	2
	.section	.rodata
.LC61:
	.string	"collate"
.LC62:
	.string	"ctype"
.LC63:
	.string	"monetary"
.LC64:
	.string	"numeric"
.LC65:
	.string	"time"
	.data
	.align 32
	.type	catnames.2415, @object
	.size	catnames.2415, 56
catnames.2415:
	.quad	.LC18
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	0
	.align 16
	.type	cat.2414, @object
	.size	cat.2414, 24
cat.2414:
	.long	6
	.long	3
	.long	0
	.long	4
	.long	1
	.long	2
	.section	.rodata
	.align 8
.LC15:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "../../include/lua.h"
	.file 8 "../../include/lauxlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe06
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF125
	.byte	0x1
	.long	.LASF126
	.long	.LASF127
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x87
	.long	0x69
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8b
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xbd
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x23a
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf2
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf7
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xf8
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xf9
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xfa
	.long	0xa5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfb
	.long	0xa5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xfc
	.long	0xa5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xfd
	.long	0xa5
	.byte	0x38
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xfe
	.long	0xa5
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x100
	.long	0xa5
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x101
	.long	0xa5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x102
	.long	0xa5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x104
	.long	0x272
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x106
	.long	0x278
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x108
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x10c
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x112
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x113
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x114
	.long	0x27e
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x118
	.long	0x28e
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x129
	.long	0xa3
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x12a
	.long	0xa3
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12b
	.long	0xa3
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x12c
	.long	0xa3
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x12f
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x131
	.long	0x294
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x272
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0x9d
	.long	0x272
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x9e
	.long	0x278
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x241
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xb
	.long	0xab
	.long	0x28e
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0xb
	.long	0xab
	.long	0x2a4
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2aa
	.uleb128 0xd
	.long	0xab
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x3b
	.long	0x8d
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x4b
	.long	0x98
	.uleb128 0xe
	.string	"tm"
	.byte	0x38
	.byte	0x6
	.byte	0x85
	.long	0x355
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x87
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x88
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x89
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x8a
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x8b
	.long	0x62
	.byte	0x10
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x8c
	.long	0x62
	.byte	0x14
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x8d
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x8e
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x8f
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x95
	.long	0x69
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x96
	.long	0x2a4
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.byte	0x1a
	.long	0x360
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0xf
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x1b
	.long	0x4d
	.uleb128 0x7
	.long	.LASF64
	.byte	0x10
	.byte	0x8
	.byte	0xf
	.long	0x397
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x10
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x11
	.long	0x355
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x3a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c1
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF129
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x50
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x42c
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x50
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x52
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x5b
	.long	0x468
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x468
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x5b
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x5c
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x63
	.long	0x468
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aa
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x63
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x64
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x69
	.long	0x468
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e6
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x69
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x6a
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x70
	.long	0x468
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x530
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x70
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x70
	.long	0x530
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x71
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x7b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x580
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x7b
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0x7d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.byte	0x85
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x8a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c3
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x8b
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x92
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ed
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0x93
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.byte	0x99
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x633
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x99
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x99
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"tag"
	.byte	0x1
	.byte	0x99
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.byte	0x9f
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x68b
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x9f
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x9f
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x15
	.string	"tag"
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.byte	0xaa
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e1
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0xab
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0xac
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xb4
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.byte	0xbb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x737
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0xbc
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.byte	0xbd
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xc5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.byte	0xcc
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x763
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0xcd
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0xe1
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e6
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0xe1
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xe1
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0xe2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0xe3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF130
	.byte	0x1
	.value	0x10c
	.quad	.L68
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.uleb128 0x15
	.string	"ep"
	.byte	0x1
	.byte	0xf0
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.byte	0xf1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x1
	.value	0x112
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x823
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x112
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.value	0x113
	.long	0x823
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF85
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x11f
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x874
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x11f
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x121
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.value	0x122
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x12e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cc
	.uleb128 0x1c
	.string	"f"
	.byte	0x1
	.value	0x12e
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x130
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.value	0x132
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x1
	.value	0x139
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x94c
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x13a
	.long	0x94c
	.uleb128 0x9
	.byte	0x3
	.quad	options.2347
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.value	0x13b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.value	0x13c
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.value	0x13d
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.string	"l"
	.byte	0x1
	.value	0x13f
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x140
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xa5
	.long	0x95c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x15c
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c0
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.value	0x15d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.value	0x15e
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.value	0x15f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x160
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"l"
	.byte	0x1
	.value	0x161
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x1
	.value	0x168
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xa35
	.uleb128 0x1f
	.long	.LASF94
	.byte	0x1
	.value	0x169
	.long	0xa35
	.uleb128 0x9
	.byte	0x3
	.quad	mode.2377
	.uleb128 0x1f
	.long	.LASF95
	.byte	0x1
	.value	0x16a
	.long	0xa45
	.uleb128 0x9
	.byte	0x3
	.quad	modenames.2378
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.value	0x16b
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"op"
	.byte	0x1
	.value	0x16c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF96
	.byte	0x1
	.value	0x16d
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0xa45
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	0xa5
	.long	0xa55
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.value	0x177
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xa81
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.value	0x178
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF99
	.byte	0x1
	.value	0x187
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF100
	.byte	0x1
	.value	0x18c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF101
	.byte	0x1
	.value	0x191
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF102
	.byte	0x1
	.value	0x197
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF103
	.byte	0x1
	.value	0x19d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x1a2
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x1a7
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xb75
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.value	0x1a8
	.long	0xb75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1a9
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1d
	.string	"tm"
	.byte	0x1
	.value	0x1aa
	.long	0xb85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x1ab
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0xb
	.long	0xab
	.long	0xb85
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c5
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.value	0x1b4
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe4
	.uleb128 0x1d
	.string	"cat"
	.byte	0x1
	.value	0x1b5
	.long	0xbe4
	.uleb128 0x9
	.byte	0x3
	.quad	cat.2414
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.value	0x1b7
	.long	0xbf4
	.uleb128 0x9
	.byte	0x3
	.quad	catnames.2415
	.uleb128 0x1d
	.string	"op"
	.byte	0x1
	.value	0x1b9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0xbf4
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0xa5
	.long	0xc04
	.uleb128 0xc
	.long	0x86
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.value	0x1bf
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xc30
	.uleb128 0x1d
	.string	"o"
	.byte	0x1
	.value	0x1c0
	.long	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x1c8
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xc65
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.value	0x1ca
	.long	0xc65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xab
	.long	0xc75
	.uleb128 0xc
	.long	0x86
	.byte	0xf9
	.byte	0
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.value	0x1dc
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xd26
	.uleb128 0x1f
	.long	.LASF112
	.byte	0x1
	.value	0x1dd
	.long	0xd26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1552
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x1
	.value	0x1de
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1644
	.uleb128 0x1f
	.long	.LASF66
	.byte	0x1
	.value	0x1df
	.long	0x367
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1640
	.uleb128 0x14
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1f
	.long	.LASF65
	.byte	0x1
	.value	0x1e2
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1632
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.value	0x1e3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1636
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x1
	.value	0x1e4
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1624
	.uleb128 0x1f
	.long	.LASF116
	.byte	0x1
	.value	0x1e5
	.long	0xd37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1616
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x1
	.value	0x1e6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1648
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xab
	.long	0xd37
	.uleb128 0x21
	.long	0x86
	.value	0x5db
	.byte	0
	.uleb128 0xb
	.long	0xab
	.long	0xd47
	.uleb128 0xc
	.long	0x86
	.byte	0x3b
	.byte	0
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x22c
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xd82
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x22d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.value	0x22e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.value	0x242
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	0x372
	.long	0xdac
	.uleb128 0xc
	.long	0x86
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x1
	.value	0x210
	.long	0xd9c
	.uleb128 0x9
	.byte	0x3
	.quad	iolib
	.uleb128 0xb
	.long	0x372
	.long	0xdd2
	.uleb128 0xc
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.value	0x21f
	.long	0xdc2
	.uleb128 0x9
	.byte	0x3
	.quad	iolibtag
	.uleb128 0x23
	.long	.LASF122
	.byte	0x4
	.byte	0xa8
	.long	0x278
	.uleb128 0x23
	.long	.LASF123
	.byte	0x4
	.byte	0xa9
	.long	0x278
	.uleb128 0x23
	.long	.LASF124
	.byte	0x4
	.byte	0xaa
	.long	0x278
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
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
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF53:
	.string	"tm_hour"
.LASF7:
	.string	"size_t"
.LASF83:
	.string	"inskip"
.LASF34:
	.string	"_shortbuf"
.LASF88:
	.string	"io_read"
.LASF93:
	.string	"io_seek"
.LASF22:
	.string	"_IO_buf_base"
.LASF67:
	.string	"ishandle"
.LASF86:
	.string	"read_line"
.LASF99:
	.string	"io_execute"
.LASF4:
	.string	"signed char"
.LASF126:
	.string	"liolib.c"
.LASF78:
	.string	"io_readfrom"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF112:
	.string	"buff"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_flags"
.LASF131:
	.string	"lua_iolibopen"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF119:
	.string	"iotag"
.LASF80:
	.string	"io_writeto"
.LASF62:
	.string	"lua_CFunction"
.LASF97:
	.string	"io_flush"
.LASF61:
	.string	"__tm_zone"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF49:
	.string	"clock_t"
.LASF89:
	.string	"options"
.LASF55:
	.string	"tm_mon"
.LASF95:
	.string	"modenames"
.LASF125:
	.string	"GNU C89 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O0 -ansi -fstack-protector-strong"
.LASF102:
	.string	"io_tmpname"
.LASF114:
	.string	"currentline"
.LASF45:
	.string	"_IO_marker"
.LASF122:
	.string	"stdin"
.LASF56:
	.string	"tm_year"
.LASF103:
	.string	"io_getenv"
.LASF3:
	.string	"unsigned int"
.LASF104:
	.string	"io_clock"
.LASF72:
	.string	"pushresult"
.LASF0:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF60:
	.string	"__tm_gmtoff"
.LASF65:
	.string	"name"
.LASF47:
	.string	"_sbuf"
.LASF113:
	.string	"level"
.LASF2:
	.string	"short unsigned int"
.LASF63:
	.string	"lua_Object"
.LASF59:
	.string	"tm_isdst"
.LASF116:
	.string	"buffchunk"
.LASF127:
	.string	"/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib"
.LASF24:
	.string	"_IO_save_base"
.LASF98:
	.string	"io_close"
.LASF11:
	.string	"__clock_t"
.LASF35:
	.string	"_lock"
.LASF71:
	.string	"getfileparam"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF123:
	.string	"stdout"
.LASF52:
	.string	"tm_min"
.LASF87:
	.string	"read_file"
.LASF10:
	.string	"sizetype"
.LASF58:
	.string	"tm_yday"
.LASF76:
	.string	"setfile"
.LASF75:
	.string	"io_open"
.LASF21:
	.string	"_IO_write_end"
.LASF129:
	.string	"gettag"
.LASF117:
	.string	"linedefined"
.LASF100:
	.string	"io_remove"
.LASF74:
	.string	"gc_close"
.LASF128:
	.string	"_IO_lock_t"
.LASF91:
	.string	"io_write"
.LASF44:
	.string	"_IO_FILE"
.LASF79:
	.string	"current"
.LASF50:
	.string	"time_t"
.LASF124:
	.string	"stderr"
.LASF48:
	.string	"_pos"
.LASF77:
	.string	"setreturn"
.LASF27:
	.string	"_markers"
.LASF115:
	.string	"chunkname"
.LASF105:
	.string	"io_date"
.LASF84:
	.string	"read_number"
.LASF68:
	.string	"getfilebyname"
.LASF1:
	.string	"unsigned char"
.LASF130:
	.string	"break_while"
.LASF5:
	.string	"short int"
.LASF33:
	.string	"_vtable_offset"
.LASF14:
	.string	"FILE"
.LASF120:
	.string	"iolib"
.LASF108:
	.string	"io_exit"
.LASF57:
	.string	"tm_wday"
.LASF69:
	.string	"getfile"
.LASF64:
	.string	"luaL_reg"
.LASF70:
	.string	"getnonullfile"
.LASF13:
	.string	"char"
.LASF66:
	.string	"func"
.LASF73:
	.string	"closefile"
.LASF106:
	.string	"setloc"
.LASF107:
	.string	"catnames"
.LASF101:
	.string	"io_rename"
.LASF82:
	.string	"read_pattern"
.LASF110:
	.string	"buffer"
.LASF46:
	.string	"_next"
.LASF109:
	.string	"io_debug"
.LASF9:
	.string	"__off64_t"
.LASF96:
	.string	"offset"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF121:
	.string	"iolibtag"
.LASF111:
	.string	"errorfb"
.LASF54:
	.string	"tm_mday"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF43:
	.string	"_unused2"
.LASF51:
	.string	"tm_sec"
.LASF94:
	.string	"mode"
.LASF92:
	.string	"status"
.LASF25:
	.string	"_IO_backup_base"
.LASF81:
	.string	"io_appendto"
.LASF118:
	.string	"openwithtags"
.LASF19:
	.string	"_IO_write_base"
.LASF85:
	.string	"double"
.LASF90:
	.string	"success"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
