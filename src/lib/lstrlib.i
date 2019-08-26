# 1 "lstrlib.c"
# 1 "/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "lstrlib.c"







# 1 "/usr/include/ctype.h" 1 3 4
# 25 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 367 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 410 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 411 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 368 "/usr/include/features.h" 2 3 4
# 391 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 392 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/ctype.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4



# 30 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 27 "/usr/include/ctype.h" 2 3 4


# 39 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 40 "/usr/include/ctype.h" 2 3 4






enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 104 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));


# 347 "/usr/include/ctype.h" 3 4

# 9 "lstrlib.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;

# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;





typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 173 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 241 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 289 "/usr/include/libio.h" 3 4
  __off64_t _offset;







  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;

  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 333 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 385 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 429 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 459 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4
# 108 "/usr/include/stdio.h" 3 4


typedef _G_fpos_t fpos_t;




# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));














extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;

# 232 "/usr/include/stdio.h" 3 4





extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 266 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4

# 329 "/usr/include/stdio.h" 3 4



extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

# 351 "/usr/include/stdio.h" 3 4





extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));

# 420 "/usr/include/stdio.h" 3 4





extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 463 "/usr/include/stdio.h" 3 4

# 526 "/usr/include/stdio.h" 3 4





extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 565 "/usr/include/stdio.h" 3 4








extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 617 "/usr/include/stdio.h" 3 4





extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


# 684 "/usr/include/stdio.h" 3 4





extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 744 "/usr/include/stdio.h" 3 4





extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4

# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

# 841 "/usr/include/stdio.h" 3 4





extern void perror (const char *__s);






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 854 "/usr/include/stdio.h" 2 3 4
# 942 "/usr/include/stdio.h" 3 4

# 10 "lstrlib.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 328 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4


# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;



# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

# 162 "/usr/include/stdlib.h" 3 4


extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 181 "/usr/include/stdlib.h" 3 4


extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 372 "/usr/include/stdlib.h" 3 4


extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));

# 464 "/usr/include/stdlib.h" 3 4


extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));

# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4

# 539 "/usr/include/stdlib.h" 3 4




extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));








# 562 "/usr/include/stdlib.h" 3 4


extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 711 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 741 "/usr/include/stdlib.h" 3 4
typedef int (*__compar_fn_t) (const void *, const void *);
# 751 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 774 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;












extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 859 "/usr/include/stdlib.h" 3 4



extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));

# 954 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 955 "/usr/include/stdlib.h" 2 3 4
# 967 "/usr/include/stdlib.h" 3 4

# 11 "lstrlib.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4









extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

# 60 "/usr/include/string.h" 3 4


extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 123 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 206 "/usr/include/string.h" 3 4

# 231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 277 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 392 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));

# 406 "/usr/include/string.h" 3 4


extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 446 "/usr/include/string.h" 3 4
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 658 "/usr/include/string.h" 3 4

# 12 "lstrlib.c" 2

# 1 "../../include/lauxlib.h" 1
# 12 "../../include/lauxlib.h"
# 1 "../../include/lua.h" 1
# 23 "../../include/lua.h"

# 23 "../../include/lua.h"
typedef struct lua_State lua_State;
extern lua_State *lua_state;

typedef void (*lua_CFunction) (void);
typedef unsigned int lua_Object;

void lua_open (void);
void lua_close (void);
lua_State *lua_setstate (lua_State *st);

lua_Object lua_settagmethod (int tag, char *event);
lua_Object lua_gettagmethod (int tag, char *event);

int lua_newtag (void);
int lua_copytagmethods (int tagto, int tagfrom);
void lua_settag (int tag);

void lua_error (char *s);
int lua_dofile (char *filename);
int lua_dostring (char *string);
int lua_dobuffer (char *buff, int size, char *name);

int lua_callfunction (lua_Object f);


void lua_beginblock (void);
void lua_endblock (void);

lua_Object lua_lua2C (int number);



int lua_isnil (lua_Object object);
int lua_istable (lua_Object object);
int lua_isuserdata (lua_Object object);
int lua_iscfunction (lua_Object object);
int lua_isnumber (lua_Object object);
int lua_isstring (lua_Object object);
int lua_isfunction (lua_Object object);

double lua_getnumber (lua_Object object);
char *lua_getstring (lua_Object object);
long lua_strlen (lua_Object object);
lua_CFunction lua_getcfunction (lua_Object object);
void *lua_getuserdata (lua_Object object);


void lua_pushnil (void);
void lua_pushnumber (double n);
void lua_pushlstring (char *s, long len);
void lua_pushstring (char *s);
void lua_pushcclosure (lua_CFunction fn, int n);
void lua_pushusertag (void *u, int tag);
void lua_pushobject (lua_Object object);

lua_Object lua_pop (void);

lua_Object lua_getglobal (char *name);
lua_Object lua_rawgetglobal (char *name);
void lua_setglobal (char *name);
void lua_rawsetglobal (char *name);

void lua_settable (void);
void lua_rawsettable (void);
lua_Object lua_gettable (void);
lua_Object lua_rawgettable (void);

int lua_tag (lua_Object object);

char *lua_nextvar (char *varname);
int lua_next (lua_Object o, int i);


int lua_ref (int lock);
lua_Object lua_getref (int ref);
void lua_unref (int ref);

lua_Object lua_createtable (void);

long lua_collectgarbage (long limit);
# 122 "../../include/lua.h"
lua_Object lua_seterrormethod (void);
# 13 "../../include/lauxlib.h" 2


struct luaL_reg {
  char *name;
  lua_CFunction func;
};





void luaL_openlib (struct luaL_reg *l, int n);
void luaL_argerror (int numarg, char *extramsg);

char *luaL_check_lstr (int numArg, long *len);

char *luaL_opt_lstr (int numArg, char *def, long *len);
double luaL_check_number (int numArg);


double luaL_opt_number (int numArg, double def);


lua_Object luaL_functionarg (int arg);
lua_Object luaL_tablearg (int arg);
lua_Object luaL_nonnullarg (int numArg);
void luaL_verror (char *fmt, ...);
char *luaL_openspace (int size);
void luaL_resetbuffer (void);
void luaL_addchar (int c);
int luaL_getsize (void);
void luaL_addsize (int n);
int luaL_newbuffer (int size);
void luaL_oldbuffer (int old);
char *luaL_buffer (void);
int luaL_findstring (char *name, char *list[]);
void luaL_chunkid (char *out, char *source, int len);
void luaL_filesource (char *out, char *filename, int len);
# 14 "lstrlib.c" 2
# 1 "../../include/lua.h" 1
# 15 "lstrlib.c" 2
# 1 "../../include/lualib.h" 1
# 13 "../../include/lualib.h"
void lua_iolibopen (void);
void lua_strlibopen (void);
void lua_mathlibopen (void);
void lua_dblibopen (void);


void lua_userinit (void);
# 32 "../../include/lualib.h"
char *luaI_classend (char *p);
int luaI_singlematch (int c, char *p, char *ep);
# 16 "lstrlib.c" 2



static void addnchar (char *s, int n)
{
  char *b = luaL_openspace(n);
  memcpy(b, s, n);
  luaL_addsize(n);
}


static void str_len (void)
{
  long l;
  luaL_check_lstr(1, &l);
  lua_pushnumber(l);
}


static void closeandpush (void) {
  lua_pushlstring(luaL_buffer(), luaL_getsize());
}


static long posrelat (long pos, long len) {

  return (pos>=0) ? pos : len+pos+1;
}


static void str_sub (void) {
  long l;
  char *s = luaL_check_lstr(1, &l);
  long start = posrelat(((long)luaL_check_number(2)), l);
  long end = posrelat(((long)luaL_opt_number(3,-1)), l);
  if (start < 1) start = 1;
  if (end > l) end = l;
  if (start <= end)
    lua_pushlstring(s+start-1, end-start+1);
  else lua_pushstring("");
}


static void str_lower (void) {
  long l;
  int i;
  char *s = luaL_check_lstr(1, &l);
  luaL_resetbuffer();
  for (i=0; i<l; i++)
    luaL_addchar(tolower((unsigned char)(s[i])));
  closeandpush();
}


static void str_upper (void) {
  long l;
  int i;
  char *s = luaL_check_lstr(1, &l);
  luaL_resetbuffer();
  for (i=0; i<l; i++)
    luaL_addchar(toupper((unsigned char)(s[i])));
  closeandpush();
}

static void str_rep (void)
{
  long l;
  char *s = luaL_check_lstr(1, &l);
  int n = ((int)luaL_check_number(2));
  luaL_resetbuffer();
  while (n-- > 0)
    addnchar(s, l);
  closeandpush();
}


static void str_byte (void) {
  long l;
  char *s = luaL_check_lstr(1, &l);
  long pos = posrelat(((long)luaL_opt_number(2,1)), l);
  if (!(0<pos && pos<=l)) luaL_argerror(2,"out of range");
  lua_pushnumber((unsigned char)s[pos-1]);
}


static void str_char (void) {
  int i = 0;
  luaL_resetbuffer();
  while (lua_lua2C(++i) != 0) {
    double c = luaL_check_number(i);
    if (!((unsigned char)c == c)) luaL_argerror(i,"invalid value");
    luaL_addchar((unsigned char)c);
  }
  closeandpush();
}
# 125 "lstrlib.c"
struct Capture {
  char *src_end;
  int level;
  struct {
    char *init;
    int len;
  } capture[32];
};






static void push_captures (struct Capture *cap) {
  int i;
  for (i=0; i<cap->level; i++) {
    int l = cap->capture[i].len;
    if (l == -1) lua_error("unfinished capture");
    lua_pushlstring(cap->capture[i].init, l);
  }
}


static int check_cap (int l, struct Capture *cap) {
  l -= '1';
  if (!(0 <= l && l < cap->level && cap->capture[l].len != -1))
    lua_error("invalid capture index");
  return l;
}


static int capture_to_close (struct Capture *cap) {
  int level = cap->level;
  for (level--; level>=0; level--)
    if (cap->capture[level].len == -1) return level;
  lua_error("invalid pattern capture");
  return 0;
}


char *luaI_classend (char *p) {
  switch (*p++) {
    case '%':
      if (*p == '\0')
        luaL_verror("incorrect pattern (ends with `%c')", '%');
      return p+1;
    case '[':
      if (*p == '^') p++;
      if (*p == ']') p++;
      p = strchr(p, ']');
      if (!p) lua_error("incorrect pattern (missing `]')");
      return p+1;
    default:
      return p;
  }
}


static int matchclass (int c, int cl) {
  int res;
  switch (tolower(cl)) {
    case 'a' : res = 
# 187 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 187 "lstrlib.c"
                    c
# 187 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISalpha)
# 187 "lstrlib.c"
                              ; break;
    case 'c' : res = 
# 188 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 188 "lstrlib.c"
                    c
# 188 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _IScntrl)
# 188 "lstrlib.c"
                              ; break;
    case 'd' : res = 
# 189 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 189 "lstrlib.c"
                    c
# 189 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISdigit)
# 189 "lstrlib.c"
                              ; break;
    case 'l' : res = 
# 190 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 190 "lstrlib.c"
                    c
# 190 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISlower)
# 190 "lstrlib.c"
                              ; break;
    case 'p' : res = 
# 191 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 191 "lstrlib.c"
                    c
# 191 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISpunct)
# 191 "lstrlib.c"
                              ; break;
    case 's' : res = 
# 192 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 192 "lstrlib.c"
                    c
# 192 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISspace)
# 192 "lstrlib.c"
                              ; break;
    case 'u' : res = 
# 193 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 193 "lstrlib.c"
                    c
# 193 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISupper)
# 193 "lstrlib.c"
                              ; break;
    case 'w' : res = 
# 194 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 194 "lstrlib.c"
                    c
# 194 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISalnum)
# 194 "lstrlib.c"
                              ; break;
    case 'x' : res = 
# 195 "lstrlib.c" 3 4
                    ((*__ctype_b_loc ())[(int) ((
# 195 "lstrlib.c"
                    c
# 195 "lstrlib.c" 3 4
                    ))] & (unsigned short int) _ISxdigit)
# 195 "lstrlib.c"
                               ; break;
    case 'z' : res = (c == '\0'); break;
    default: return (cl == c);
  }
  return (
# 199 "lstrlib.c" 3 4
         ((*__ctype_b_loc ())[(int) ((
# 199 "lstrlib.c"
         cl
# 199 "lstrlib.c" 3 4
         ))] & (unsigned short int) _ISlower) 
# 199 "lstrlib.c"
                     ? res : !res);
}



static int matchbracketclass (int c, char *p, char *end) {
  int sig = 1;
  if (*(p+1) == '^') {
    sig = 0;
    p++;
  }
  while (++p < end) {
    if (*p == '%') {
      p++;
      if ((p < end) && matchclass(c, (unsigned char)*p))
        return sig;
    }
    else if ((*(p+1) == '-') && (p+2 < end)) {
      p+=2;
      if ((int)(unsigned char)*(p-2) <= c && c <= (int)(unsigned char)*p)
        return sig;
    }
    else if ((unsigned char)*p == c) return sig;
  }
  return !sig;
}



int luaI_singlematch (int c, char *p, char *ep) {
  switch (*p) {
    case '.':
      return 1;
    case '%':
      return matchclass(c, (unsigned char)*(p+1));
    case '[':
      return matchbracketclass(c, p, ep-1);
    default:
      return ((unsigned char)*p == c);
  }
}


static char *match (char *s, char *p, struct Capture *cap);


static char *matchbalance (char *s, char *p, struct Capture *cap) {
  if (*p == 0 || *(p+1) == 0)
    lua_error("unbalanced pattern");
  if (*s != *p) return 
# 248 "lstrlib.c" 3 4
                      ((void *)0)
# 248 "lstrlib.c"
                          ;
  else {
    int b = *p;
    int e = *(p+1);
    int cont = 1;
    while (++s < cap->src_end) {
      if (*s == e) {
        if (--cont == 0) return s+1;
      }
      else if (*s == b) cont++;
    }
  }
  return 
# 260 "lstrlib.c" 3 4
        ((void *)0)
# 260 "lstrlib.c"
            ;
}


static char *max_expand (char *s, char *p, char *ep, struct Capture *cap) {
  int i = 0;
  while ((s+i)<cap->src_end && luaI_singlematch((unsigned char)*(s+i), p, ep))
    i++;

  while (i>=0) {
    char *res = match((s+i), ep+1, cap);
    if (res) return res;
    i--;
  }
  return 
# 274 "lstrlib.c" 3 4
        ((void *)0)
# 274 "lstrlib.c"
            ;
}


static char *min_expand (char *s, char *p, char *ep, struct Capture *cap) {
  for (;;) {
    char *res = match(s, ep+1, cap);
    if (res != 
# 281 "lstrlib.c" 3 4
              ((void *)0)
# 281 "lstrlib.c"
                  )
      return res;
    else if (s<cap->src_end && luaI_singlematch((unsigned char)*s, p, ep))
      s++;
    else return 
# 285 "lstrlib.c" 3 4
               ((void *)0)
# 285 "lstrlib.c"
                   ;
  }
}


static char *start_capt (char *s, char *p, struct Capture *cap) {
  char *res;
  int level = cap->level;
  if (level >= 32) lua_error("too many captures");
  cap->capture[level].init = s;
  cap->capture[level].len = -1;
  cap->level = level+1;
  if ((res=match(s, p+1, cap)) == 
# 297 "lstrlib.c" 3 4
                                 ((void *)0)
# 297 "lstrlib.c"
                                     )
    cap->level--;
  return res;
}


static char *end_capt (char *s, char *p, struct Capture *cap) {
  int l = capture_to_close(cap);
  char *res;
  cap->capture[l].len = s - cap->capture[l].init;
  if ((res = match(s, p+1, cap)) == 
# 307 "lstrlib.c" 3 4
                                   ((void *)0)
# 307 "lstrlib.c"
                                       )
    cap->capture[l].len = -1;
  return res;
}


static char *match_capture (char *s, int level, struct Capture *cap) {
  int l = check_cap(level, cap);
  int len = cap->capture[l].len;
  if (cap->src_end-s >= len &&
      memcmp(cap->capture[l].init, s, len) == 0)
    return s+len;
  else return 
# 319 "lstrlib.c" 3 4
             ((void *)0)
# 319 "lstrlib.c"
                 ;
}


static char *match (char *s, char *p, struct Capture *cap) {
  init:
  switch (*p) {
    case '(':
      return start_capt(s, p, cap);
    case ')':
      return end_capt(s, p, cap);
    case '%':
      if (
# 331 "lstrlib.c" 3 4
         ((*__ctype_b_loc ())[(int) ((
# 331 "lstrlib.c"
         (unsigned char)(*(p+1))
# 331 "lstrlib.c" 3 4
         ))] & (unsigned short int) _ISdigit)
# 331 "lstrlib.c"
                                         ) {
        s = match_capture(s, *(p+1), cap);
        if (s == 
# 333 "lstrlib.c" 3 4
                ((void *)0)
# 333 "lstrlib.c"
                    ) return 
# 333 "lstrlib.c" 3 4
                             ((void *)0)
# 333 "lstrlib.c"
                                 ;
        p+=2; goto init;
      }
      else if (*(p+1) == 'b') {
        s = matchbalance(s, p+2, cap);
        if (s == 
# 338 "lstrlib.c" 3 4
                ((void *)0)
# 338 "lstrlib.c"
                    ) return 
# 338 "lstrlib.c" 3 4
                             ((void *)0)
# 338 "lstrlib.c"
                                 ;
        p+=4; goto init;
      }
      else goto dflt;
    case '\0':
      return s;
    case '$':
      if (*(p+1) == '\0')
        return (s == cap->src_end) ? s : 
# 346 "lstrlib.c" 3 4
                                        ((void *)0)
# 346 "lstrlib.c"
                                            ;
      else goto dflt;
    default: dflt: {
      char *ep = luaI_classend(p);
      int m = s<cap->src_end && luaI_singlematch((unsigned char)*s, p, ep);
      switch (*ep) {
        case '?': {
          char *res;
          if (m && ((res=match(s+1, ep+1, cap)) != 
# 354 "lstrlib.c" 3 4
                                                  ((void *)0)
# 354 "lstrlib.c"
                                                      ))
            return res;
          p=ep+1; goto init;
        }
        case '*':
          return max_expand(s, p, ep, cap);
        case '+':
          return (m ? max_expand(s+1, p, ep, cap) : 
# 361 "lstrlib.c" 3 4
                                                   ((void *)0)
# 361 "lstrlib.c"
                                                       );
        case '-':
          return min_expand(s, p, ep, cap);
        default:
          if (!m) return 
# 365 "lstrlib.c" 3 4
                        ((void *)0)
# 365 "lstrlib.c"
                            ;
          s++; p=ep; goto init;
      }
    }
  }
}


static void str_find (void) {
  long l;
  char *s = luaL_check_lstr(1, &l);
  char *p = (luaL_check_lstr((2), 
# 376 "lstrlib.c" 3 4
           ((void *)0)
# 376 "lstrlib.c"
           ));
  long init = posrelat(((long)luaL_opt_number(3,1)), l) - 1;
  struct Capture cap;
  if (!(0 <= init && init <= l)) luaL_argerror(3,"out of range");
  if (lua_lua2C(4) != 0 ||
      strpbrk(p, "^$*+?.([%-") == 
# 381 "lstrlib.c" 3 4
                             ((void *)0)
# 381 "lstrlib.c"
                                 ) {
    char *s2 = strstr(s+init, p);
    if (s2) {
      lua_pushnumber(s2-s+1);
      lua_pushnumber(s2-s+strlen(p));
      return;
    }
  }
  else {
    int anchor = (*p == '^') ? (p++, 1) : 0;
    char *s1=s+init;
    cap.src_end = s+l;
    do {
      char *res;
      cap.level = 0;
      if ((res=match(s1, p, &cap)) != 
# 396 "lstrlib.c" 3 4
                                     ((void *)0)
# 396 "lstrlib.c"
                                         ) {
        lua_pushnumber(s1-s+1);
        lua_pushnumber(res-s);
        push_captures(&cap);
        return;
      }
    } while (s1++<cap.src_end && !anchor);
  }
  lua_pushnil();
}


static void add_s (lua_Object newp, struct Capture *cap) {
  if (lua_isstring(newp)) {
    char *news = lua_getstring(newp);
    int l = lua_strlen(newp);
    int i;
    for (i=0; i<l; i++) {
      if (news[i] != '%')
        luaL_addchar(news[i]);
      else {
        i++;
        if (!
# 418 "lstrlib.c" 3 4
            ((*__ctype_b_loc ())[(int) ((
# 418 "lstrlib.c"
            (unsigned char)news[i]
# 418 "lstrlib.c" 3 4
            ))] & (unsigned short int) _ISdigit)
# 418 "lstrlib.c"
                                           )
          luaL_addchar(news[i]);
        else {
          int level = check_cap(news[i], cap);
          addnchar(cap->capture[level].init, cap->capture[level].len);
        }
      }
    }
  }
  else {
    lua_Object res;
    int status;
    int oldbuff;
    lua_beginblock();
    push_captures(cap);

    oldbuff = luaL_newbuffer(0);
    status = lua_callfunction(newp);

    luaL_oldbuffer(oldbuff);
    if (status != 0) {
      lua_endblock();
      lua_error(
# 440 "lstrlib.c" 3 4
               ((void *)0)
# 440 "lstrlib.c"
                   );
    }
    res = lua_lua2C(1);
    if (lua_isstring(res))
      addnchar(lua_getstring(res), lua_strlen(res));
    lua_endblock();
  }
}


static void str_gsub (void) {
  long srcl;
  char *src = luaL_check_lstr(1, &srcl);
  char *p = (luaL_check_lstr((2), 
# 453 "lstrlib.c" 3 4
           ((void *)0)
# 453 "lstrlib.c"
           ));
  lua_Object newp = lua_lua2C(3);
  int max_s = ((int)luaL_opt_number(4,srcl+1));
  int anchor = (*p == '^') ? (p++, 1) : 0;
  int n = 0;
  struct Capture cap;
  if (!(lua_isstring(newp) || lua_isfunction(newp))) luaL_argerror(3,"string or function expected")
                                               ;
  luaL_resetbuffer();
  cap.src_end = src+srcl;
  while (n < max_s) {
    char *e;
    cap.level = 0;
    e = match(src, p, &cap);
    if (e) {
      n++;
      add_s(newp, &cap);
    }
    if (e && e>src)
      src = e;
    else if (src < cap.src_end)
      luaL_addchar(*src++);
    else break;
    if (anchor) break;
  }
  addnchar(src, cap.src_end-src);
  closeandpush();
  lua_pushnumber(n);
}




static void luaI_addquoted (int arg) {
  long l;
  char *s = luaL_check_lstr(arg, &l);
  luaL_addchar('"');
  while (l--) {
    switch (*s) {
      case '"': case '\\': case '\n':
        luaL_addchar('\\');
        luaL_addchar(*s);
        break;
      case '\0': addnchar("\\000", 4); break;
      default: luaL_addchar(*s);
    }
    s++;
  }
  luaL_addchar('"');
}




static void str_format (void) {
  int arg = 1;
  char *strfrmt = (luaL_check_lstr((arg), 
# 509 "lstrlib.c" 3 4
                 ((void *)0)
# 509 "lstrlib.c"
                 ));
  luaL_resetbuffer();
  while (*strfrmt) {
    if (*strfrmt != '%')
      luaL_addchar(*strfrmt++);
    else if (*++strfrmt == '%')
      luaL_addchar(*strfrmt++);
    else {
      struct Capture cap;
      char form[20];
      char *buff;
      char *initf = strfrmt;
      form[0] = '%';
      if (
# 522 "lstrlib.c" 3 4
         ((*__ctype_b_loc ())[(int) ((
# 522 "lstrlib.c"
         (unsigned char)*initf
# 522 "lstrlib.c" 3 4
         ))] & (unsigned short int) _ISdigit) 
# 522 "lstrlib.c"
                                        && *(initf+1) == '$') {
        arg = *initf - '0';
        initf += 2;
      }
      arg++;
      cap.src_end = strfrmt+strlen(strfrmt)+1;
      cap.level = 0;
      strfrmt = match(initf, "[-+ #0]*(%d*)%.?(%d*)", &cap);
      if (cap.capture[0].len > 2 || cap.capture[1].len > 2 ||
          strfrmt-initf > 20 -2)
        lua_error("invalid format (width or precision too long)");
      strncpy(form+1, initf, strfrmt-initf+1);
      form[strfrmt-initf+2] = 0;
      buff = luaL_openspace(512);
      switch (*strfrmt++) {
        case 'c': case 'd': case 'i':
          sprintf(buff, form, ((int)luaL_check_number(arg)));
          break;
        case 'o': case 'u': case 'x': case 'X':
          sprintf(buff, form, (unsigned int)luaL_check_number(arg));
          break;
        case 'e': case 'E': case 'f': case 'g': case 'G':
          sprintf(buff, form, luaL_check_number(arg));
          break;
        case 'q':
          luaI_addquoted(arg);
          continue;
        case 's': {
          long l;
          char *s = luaL_check_lstr(arg, &l);
          if (cap.capture[1].len == 0 && l >= 100) {


            addnchar(s, l);
            continue;
          }
          else {
            sprintf(buff, form, s);
            break;
          }
        }
        default:
          lua_error("invalid option in `format'");
      }
      luaL_addsize(strlen(buff));
    }
  }
  closeandpush();
}


static struct luaL_reg strlib[] = {
{"strlen", str_len},
{"strsub", str_sub},
{"strlower", str_lower},
{"strupper", str_upper},
{"strchar", str_char},
{"strrep", str_rep},
{"ascii", str_byte},
{"strbyte", str_byte},
{"format", str_format},
{"strfind", str_find},
{"gsub", str_gsub}
};





void lua_strlibopen (void)
{
  luaL_openlib(strlib, (sizeof(strlib)/sizeof(strlib[0])));
}
