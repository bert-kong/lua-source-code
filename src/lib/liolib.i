# 1 "liolib.c"
# 1 "/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "liolib.c"







# 1 "/usr/include/errno.h" 1 3 4
# 28 "/usr/include/errno.h" 3 4
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
# 29 "/usr/include/errno.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/errno.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/errno.h" 2 3 4
# 1 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/errno.h" 2 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4

# 50 "/usr/include/x86_64-linux-gnu/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 58 "/usr/include/errno.h" 3 4

# 9 "liolib.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


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
# 36 "/usr/include/stdio.h" 2 3 4
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

# 10 "liolib.c" 2
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

# 11 "liolib.c" 2
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

# 12 "liolib.c" 2
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;

# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;

# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;





  long int __tm_gmtoff;
  const char *__tm_zone;

};

# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 236 "/usr/include/time.h" 3 4



extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));

# 258 "/usr/include/time.h" 3 4



extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));

# 282 "/usr/include/time.h" 3 4
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
# 430 "/usr/include/time.h" 3 4

# 13 "liolib.c" 2

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
# 15 "liolib.c" 2
# 1 "../../include/lua.h" 1
# 16 "liolib.c" 2
# 1 "../../include/luadebug.h" 1
# 14 "../../include/luadebug.h"
typedef lua_Object lua_Function;

typedef void (*lua_LHFunction) (int line);
typedef void (*lua_CHFunction) (lua_Function func, char *file, int line);

lua_Function lua_stackedfunction (int level);
void lua_funcinfo (lua_Object func, char **source, int *linedefined);
int lua_currentline (lua_Function func);
char *lua_getobjname (lua_Object o, char **name);

lua_Object lua_getlocal (lua_Function func, int local_number, char **name);
int lua_setlocal (lua_Function func, int local_number);

int lua_nups (lua_Function func);

lua_LHFunction lua_setlinehook (lua_LHFunction func);
lua_CHFunction lua_setcallhook (lua_CHFunction func);
int lua_setdebug (int debug);
# 17 "liolib.c" 2
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
# 18 "liolib.c" 2



# 1 "/usr/include/locale.h" 1 3 4
# 28 "/usr/include/locale.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 29 "/usr/include/locale.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/locale.h" 1 3 4
# 30 "/usr/include/locale.h" 2 3 4


# 50 "/usr/include/locale.h" 3 4




# 53 "/usr/include/locale.h" 3 4
struct lconv
{


  char *decimal_point;
  char *thousands_sep;





  char *grouping;





  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;

  char p_cs_precedes;

  char p_sep_by_space;

  char n_cs_precedes;

  char n_sep_by_space;






  char p_sign_posn;
  char n_sign_posn;
# 113 "/usr/include/locale.h" 3 4
  char __int_p_cs_precedes;
  char __int_p_sep_by_space;
  char __int_n_cs_precedes;
  char __int_n_sep_by_space;
  char __int_p_sign_posn;
  char __int_n_sign_posn;

};



extern char *setlocale (int __category, const char *__locale) __attribute__ ((__nothrow__ , __leaf__));


extern struct lconv *localeconv (void) __attribute__ ((__nothrow__ , __leaf__));


# 205 "/usr/include/locale.h" 3 4

# 22 "liolib.c" 2
# 58 "liolib.c"

# 58 "liolib.c"
static void pushresult (int i) {
  if (i)
    lua_pushusertag(
# 60 "liolib.c" 3 4
   ((void *)0)
# 60 "liolib.c"
   , 0);
  else {
    lua_pushnil();
    lua_pushstring(strerror(
# 63 "liolib.c" 3 4
                           (*__errno_location ())
# 63 "liolib.c"
                                ));
    lua_pushnumber(
# 64 "liolib.c" 3 4
                  (*__errno_location ())
# 64 "liolib.c"
                       );
  }
}
# 75 "liolib.c"
static int gettag (void) {
  return (int)lua_getnumber(lua_lua2C(1));
}


static int ishandle (lua_Object f) {
  if (lua_isuserdata(f)) {
    int tag = gettag();
    if (lua_tag(f) == ((tag)-1))
      lua_error("cannot access a closed file");
    return lua_tag(f) == tag;
  }
  else return 0;
}


static FILE *getfilebyname (char *name) {
  lua_Object f = lua_getglobal(name);
  if (!ishandle(f))
      luaL_verror("global variable `%.50s' is not a file handle", name);
  return lua_getuserdata(f);
}


static FILE *getfile (int arg) {
  lua_Object f = lua_lua2C(arg);
  return (ishandle(f)) ? lua_getuserdata(f) : 
# 101 "liolib.c" 3 4
                                             ((void *)0)
# 101 "liolib.c"
                                                 ;
}


static FILE *getnonullfile (int arg) {
  FILE *f = getfile(arg);
  if (!(f)) luaL_argerror(arg,"invalid file handle");
  return f;
}


static FILE *getfileparam (char *name, int *arg) {
  FILE *f = getfile(*arg);
  if (f) {
    (*arg)++;
    return f;
  }
  else
    return getfilebyname(name);
}


static void closefile (FILE *f) {
  if (f != 
# 124 "liolib.c" 3 4
          stdin 
# 124 "liolib.c"
                && f != 
# 124 "liolib.c" 3 4
                        stdout
# 124 "liolib.c"
                              ) {
    int tag = gettag();
    {fclose(f);};
    lua_pushusertag(f, tag);
    lua_settag(((tag)-1));
  }
}


static void io_close (void) {
  closefile(getnonullfile(2));
}


static void gc_close (void) {
  FILE *f = getnonullfile(2);
  if (f != 
# 140 "liolib.c" 3 4
          stdin 
# 140 "liolib.c"
                && f != 
# 140 "liolib.c" 3 4
                        stdout 
# 140 "liolib.c"
                               && f != 
# 140 "liolib.c" 3 4
                                       stderr
# 140 "liolib.c"
                                             ) {
    {fclose(f);};
  }
}


static void io_open (void) {
  FILE *f = fopen((luaL_check_lstr((2), 
# 147 "liolib.c" 3 4
                 ((void *)0)
# 147 "liolib.c"
                 )), (luaL_check_lstr((2 +1), 
# 147 "liolib.c" 3 4
                                              ((void *)0)
# 147 "liolib.c"
                                              )));
  if (f) lua_pushusertag(f, gettag());
  else pushresult(0);
}


static void setfile (FILE *f, char *name, int tag) {
  lua_pushusertag(f, tag);
  lua_setglobal(name);
}


static void setreturn (FILE *f, char *name) {
  if (f == 
# 160 "liolib.c" 3 4
          ((void *)0)
# 160 "liolib.c"
              )
    pushresult(0);
  else {
    int tag = gettag();
    setfile(f, name, tag);
    lua_pushusertag(f, tag);
  }
}


static void io_readfrom (void) {
  FILE *current;
  lua_Object f = lua_lua2C(2);
  if (f == 0) {
    closefile(getfilebyname("_INPUT"));
    current = 
# 175 "liolib.c" 3 4
             stdin
# 175 "liolib.c"
                  ;
  }
  else if (lua_tag(f) == gettag())
    current = lua_getuserdata(f);
  else {
    char *s = (luaL_check_lstr((2), 
# 180 "liolib.c" 3 4
             ((void *)0)
# 180 "liolib.c"
             ));
    current = (*s == '|') ? 
# 181 "liolib.c" 3 4
                           ((void *)0) 
# 181 "liolib.c"
                                           : fopen(s, "r");
  }
  setreturn(current, "_INPUT");
}


static void io_writeto (void) {
  FILE *current;
  lua_Object f = lua_lua2C(2);
  if (f == 0) {
    closefile(getfilebyname("_OUTPUT"));
    current = 
# 192 "liolib.c" 3 4
             stdout
# 192 "liolib.c"
                   ;
  }
  else if (lua_tag(f) == gettag())
    current = lua_getuserdata(f);
  else {
    char *s = (luaL_check_lstr((2), 
# 197 "liolib.c" 3 4
             ((void *)0)
# 197 "liolib.c"
             ));
    current = (*s == '|') ? 
# 198 "liolib.c" 3 4
                           ((void *)0) 
# 198 "liolib.c"
                                          : fopen(s, "w");
  }
  setreturn(current, "_OUTPUT");
}


static void io_appendto (void) {
  FILE *current = fopen((luaL_check_lstr((2), 
# 205 "liolib.c" 3 4
                       ((void *)0)
# 205 "liolib.c"
                       )), "a");
  setreturn(current, "_OUTPUT");
}
# 225 "liolib.c"
static int read_pattern (FILE *f, char *p) {
  int inskip = 0;
  int c = (
# 227 "liolib.c" 3 4
         (-1)
# 227 "liolib.c"
         -1);
  while (*p != '\0') {
    switch (*p) {
      case '{':
        inskip++;
        p++;
        continue;
      case '}':
        if (!inskip) lua_error("unbalanced braces in read pattern");
        inskip--;
        p++;
        continue;
      default: {
        char *ep = luaI_classend(p);
        int m;
        if (c == (
# 242 "liolib.c" 3 4
                (-1)
# 242 "liolib.c"
                -1)) c = 
# 242 "liolib.c" 3 4
                                _IO_getc (
# 242 "liolib.c"
                                f
# 242 "liolib.c" 3 4
                                )
# 242 "liolib.c"
                                       ;
        m = (c==
# 243 "liolib.c" 3 4
               (-1)
# 243 "liolib.c"
                  ) ? 0 : luaI_singlematch(c, p, ep);
        if (m) {
          if (!inskip) luaL_addchar(c);
          c = (
# 246 "liolib.c" 3 4
             (-1)
# 246 "liolib.c"
             -1);
        }
        switch (*ep) {
          case '+':
            if (!m) goto break_while;

          case '*':
            while (m) {
              c = 
# 254 "liolib.c" 3 4
                 _IO_getc (
# 254 "liolib.c"
                 f
# 254 "liolib.c" 3 4
                 )
# 254 "liolib.c"
                        ;
              m = (c==
# 255 "liolib.c" 3 4
                     (-1)
# 255 "liolib.c"
                        ) ? 0 : luaI_singlematch(c, p, ep);
              if (m && !inskip) luaL_addchar(c);
            }

          case '?':
            p = ep+1;
            continue;
          default:
            if (!m) goto break_while;
            p = ep;
        }
      }
    }
  } break_while:
  if (c != (
# 269 "liolib.c" 3 4
          (-1)
# 269 "liolib.c"
          -1)) ungetc(c, f);
  return (*p == '\0');
}


static int read_number (FILE *f) {
  double d;
  if (fscanf(f, "%lf", &d) == 1) {
    lua_pushnumber(d);
    return 1;
  }
  else return 0;
}





static int read_line (FILE *f) {

  int n;
  char *b;
  do {
    b = luaL_openspace(1024);
    if (!fgets(b, 1024, f)) return 0;
    n = strlen(b);
    luaL_addsize(n);
  } while (b[n-1] != '\n');
  luaL_addsize(-1);
  return 1;
}


static void read_file (FILE *f) {

  int n;
  do {
    char *b = luaL_openspace(
# 306 "liolib.c" 3 4
                            8192
# 306 "liolib.c"
                                     );
    n = fread(b, sizeof(char), 
# 307 "liolib.c" 3 4
                              8192
# 307 "liolib.c"
                                       , f);
    luaL_addsize(n);
  } while (n==
# 309 "liolib.c" 3 4
             8192
# 309 "liolib.c"
                      );
}


static void io_read (void) {
  static char *options[] = {"*n", "*l", "*a", ".*", "*w", 
# 314 "liolib.c" 3 4
                                                         ((void *)0)
# 314 "liolib.c"
                                                             };
  int arg = 2;
  FILE *f = getfileparam("_INPUT", &arg);
  char *p = (luaL_opt_lstr((arg++), ("*l"), 
# 317 "liolib.c" 3 4
           ((void *)0)
# 317 "liolib.c"
           ));
  do {
    long l;
    int success;
    luaL_resetbuffer();
    switch (luaL_findstring(p, options)) {
      case 0:
        if (!read_number(f)) return;
        continue;
      case 1:
        success = read_line(f);
        break;
      case 2: case 3:
        read_file(f);
        success = 1;
        break;
      case 4:
        success = read_pattern(f, "{%s*}%S+");
        break;
      default:
        success = read_pattern(f, p);
    }
    l = luaL_getsize();
    if (!success && l==0) return;
    lua_pushlstring(luaL_buffer(), l);
  } while ((p = (luaL_opt_lstr((arg++), (
# 342 "liolib.c" 3 4
               ((void *)0)
# 342 "liolib.c"
               ), 
# 342 "liolib.c" 3 4
               ((void *)0)
# 342 "liolib.c"
               ))) != 
# 342 "liolib.c" 3 4
                                                ((void *)0)
# 342 "liolib.c"
                                                    );
}




static void io_write (void) {
  int arg = 2;
  FILE *f = getfileparam("_OUTPUT", &arg);
  int status = 1;
  char *s;
  long l;
  while ((s = luaL_opt_lstr(arg++, 
# 354 "liolib.c" 3 4
                                  ((void *)0)
# 354 "liolib.c"
                                      , &l)) != 
# 354 "liolib.c" 3 4
                                                ((void *)0)
# 354 "liolib.c"
                                                    )
    status = status && ((long)fwrite(s, 1, l, f) == l);
  pushresult(status);
}


static void io_seek (void) {
  static int mode[] = {
# 361 "liolib.c" 3 4
                      0
# 361 "liolib.c"
                              , 
# 361 "liolib.c" 3 4
                                1
# 361 "liolib.c"
                                        , 
# 361 "liolib.c" 3 4
                                          2
# 361 "liolib.c"
                                                  };
  static char *modenames[] = {"set", "cur", "end", 
# 362 "liolib.c" 3 4
                                                  ((void *)0)
# 362 "liolib.c"
                                                      };
  FILE *f = getnonullfile(2);
  int op = luaL_findstring((luaL_opt_lstr((2 +1), ("cur"), 
# 364 "liolib.c" 3 4
                          ((void *)0)
# 364 "liolib.c"
                          )), modenames);
  long offset = ((long)luaL_opt_number(2 +2,0));
  if (!(op != -1)) luaL_argerror(2 +1,"invalid mode");
  op = fseek(f, offset, mode[op]);
  if (op)
    pushresult(0);
  else
    lua_pushnumber(ftell(f));
}


static void io_flush (void) {
  FILE *f = getfile(2);
  if (!(f || lua_lua2C(2) == 0)) luaL_argerror(2,"invalid file handle")
                                       ;
  pushresult(fflush(f) == 0);
}
# 391 "liolib.c"
static void io_execute (void) {
  lua_pushnumber(system((luaL_check_lstr((1), 
# 392 "liolib.c" 3 4
                       ((void *)0)
# 392 "liolib.c"
                       ))));
}


static void io_remove (void) {
  pushresult(remove((luaL_check_lstr((1), 
# 397 "liolib.c" 3 4
                   ((void *)0)
# 397 "liolib.c"
                   ))) == 0);
}


static void io_rename (void) {
  pushresult(rename((luaL_check_lstr((1), 
# 402 "liolib.c" 3 4
                   ((void *)0)
# 402 "liolib.c"
                   )),
                    (luaL_check_lstr((2), 
# 403 "liolib.c" 3 4
                   ((void *)0)
# 403 "liolib.c"
                   ))) == 0);
}


static void io_tmpname (void) {
  lua_pushstring(tmpnam(
# 408 "liolib.c" 3 4
                       ((void *)0)
# 408 "liolib.c"
                           ));
}



static void io_getenv (void) {
  lua_pushstring(getenv((luaL_check_lstr((1), 
# 414 "liolib.c" 3 4
                       ((void *)0)
# 414 "liolib.c"
                       ))));
}


static void io_clock (void) {
  lua_pushnumber(((double)clock())/
# 419 "liolib.c" 3 4
                                  ((clock_t) 1000000)
# 419 "liolib.c"
                                                );
}


static void io_date (void) {
  char b[256];
  char *s = (luaL_opt_lstr((1), ("%c"), 
# 425 "liolib.c" 3 4
           ((void *)0)
# 425 "liolib.c"
           ));
  struct tm *tm;
  time_t t;
  time(&t); tm = localtime(&t);
  if (strftime(b,sizeof(b),s,tm))
    lua_pushstring(b);
  else
    lua_error("invalid `date' format");
}


static void setloc (void) {
  static int cat[] = {
# 437 "liolib.c" 3 4
                     6
# 437 "liolib.c"
                           , 
# 437 "liolib.c" 3 4
                             3
# 437 "liolib.c"
                                       , 
# 437 "liolib.c" 3 4
                                         0
# 437 "liolib.c"
                                                 , 
# 437 "liolib.c" 3 4
                                                   4
# 437 "liolib.c"
                                                              , 
# 437 "liolib.c" 3 4
                                                                1
# 437 "liolib.c"
                                                                          ,
                      
# 438 "liolib.c" 3 4
                     2
# 438 "liolib.c"
                            };
  static char *catnames[] = {"all", "collate", "ctype", "monetary",
     "numeric", "time", 
# 440 "liolib.c" 3 4
                       ((void *)0)
# 440 "liolib.c"
                           };
  int op = luaL_findstring((luaL_opt_lstr((2), ("all"), 
# 441 "liolib.c" 3 4
                          ((void *)0)
# 441 "liolib.c"
                          )), catnames);
  if (!(op != -1)) luaL_argerror(2,"invalid option");
  lua_pushstring(setlocale(cat[op], (luaL_check_lstr((1), 
# 443 "liolib.c" 3 4
                                   ((void *)0)
# 443 "liolib.c"
                                   ))));
}


static void io_exit (void) {
  lua_Object o = lua_lua2C(1);
  exit(lua_isnumber(o) ? (int)lua_getnumber(o) : 1);
}





static void io_debug (void) {
  for (;;) {
    char buffer[250];
    fprintf(
# 459 "liolib.c" 3 4
           stderr
# 459 "liolib.c"
                 , "lua_debug> ");
    if (fgets(buffer, sizeof(buffer), 
# 460 "liolib.c" 3 4
                                     stdin
# 460 "liolib.c"
                                          ) == 0 ||
        strcmp(buffer, "cont\n") == 0)
      return;
    lua_dostring(buffer);
  }
}
# 476 "liolib.c"
static void errorfb (void) {
  char buff[(150*10)];
  int level = 1;
  lua_Object func;
  sprintf(buff, "lua error: %.200s\n", lua_getstring(lua_lua2C(1)));
  while ((func = lua_stackedfunction(level++)) != 0) {
    char *name;
    int currentline;
    char *chunkname;
    char buffchunk[60];
    int linedefined;
    lua_funcinfo(func, &chunkname, &linedefined);
    luaL_chunkid(buffchunk, chunkname, sizeof(buffchunk));
    if (level == 2) strcat(buff, "Active Stack:\n");
    strcat(buff, "  ");
    if (strlen(buff) > (150*10)-150) {
      strcat(buff, "...\n");
      break;
    }
    switch (*lua_getobjname(func, &name)) {
      case 'g':
        sprintf(buff+strlen(buff), "function `%.50s'", name);
        break;
      case 't':
        sprintf(buff+strlen(buff), "`%.50s' tag method", name);
        break;
      default: {
        if (linedefined == 0)
          sprintf(buff+strlen(buff), "main of %.70s", buffchunk);
        else if (linedefined < 0)
          sprintf(buff+strlen(buff), "%.70s", buffchunk);
        else
          sprintf(buff+strlen(buff), "function <%d:%.70s>",
                  linedefined, buffchunk);
        chunkname = 
# 510 "liolib.c" 3 4
                   ((void *)0)
# 510 "liolib.c"
                       ;
      }
    }
    if ((currentline = lua_currentline(func)) > 0)
      sprintf(buff+strlen(buff), " at line %d", currentline);
    if (chunkname)
      sprintf(buff+strlen(buff), " [%.70s]", buffchunk);
    strcat(buff, "\n");
  }
  func = lua_rawgetglobal("_ALERT");
  if (lua_isfunction(func)) {
    lua_pushstring(buff);
    lua_callfunction(func);
  }
}



static struct luaL_reg iolib[] = {
  {"_ERRORMESSAGE", errorfb},
  {"clock", io_clock},
  {"date", io_date},
  {"debug", io_debug},
  {"execute", io_execute},
  {"exit", io_exit},
  {"getenv", io_getenv},
  {"remove", io_remove},
  {"rename", io_rename},
  {"setlocale", setloc},
  {"tmpname", io_tmpname}
};


static struct luaL_reg iolibtag[] = {
  {"appendto", io_appendto},
  {"closefile", io_close},
  {"flush", io_flush},
  {"openfile", io_open},
  {"read", io_read},
  {"readfrom", io_readfrom},
  {"seek", io_seek},
  {"write", io_write},
  {"writeto", io_writeto}
};


static void openwithtags (void) {
  int i;
  int iotag = lua_newtag();
  lua_newtag();
  for (i=0; i<sizeof(iolibtag)/sizeof(iolibtag[0]); i++) {

    lua_pushnumber(iotag);
    lua_pushcclosure(iolibtag[i].func, 1);
    lua_setglobal(iolibtag[i].name);
  }

  setfile(
# 567 "liolib.c" 3 4
         stdin
# 567 "liolib.c"
              , "_INPUT", iotag);
  setfile(
# 568 "liolib.c" 3 4
         stdout
# 568 "liolib.c"
               , "_OUTPUT", iotag);
  setfile(
# 569 "liolib.c" 3 4
         stdin
# 569 "liolib.c"
              , "_STDIN", iotag);
  setfile(
# 570 "liolib.c" 3 4
         stdout
# 570 "liolib.c"
               , "_STDOUT", iotag);
  setfile(
# 571 "liolib.c" 3 4
         stderr
# 571 "liolib.c"
               , "_STDERR", iotag);

  lua_pushnumber(iotag);
  lua_pushcclosure(gc_close, 1);
  lua_settagmethod(iotag, "gc");
}

void lua_iolibopen (void) {

  luaL_openlib(iolib, (sizeof(iolib)/sizeof(iolib[0])));
  openwithtags();
}
