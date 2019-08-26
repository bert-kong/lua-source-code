# 1 "lmathlib.c"
# 1 "/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "lmathlib.c"







# 1 "/usr/include/stdlib.h" 1 3 4
# 24 "/usr/include/stdlib.h" 3 4
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
# 25 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h" 3 4
typedef long unsigned int size_t;
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

# 9 "lmathlib.c" 2
# 1 "/usr/include/math.h" 1 3 4
# 28 "/usr/include/math.h" 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/math-vector.h" 2 3 4
# 32 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/huge_val.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4
# 48 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 1 3 4
# 49 "/usr/include/math.h" 2 3 4
# 83 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));


 extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));

 extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 98 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


 extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


 extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 151 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


 extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 176 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

# 234 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 84 "/usr/include/math.h" 2 3 4
# 534 "/usr/include/math.h" 3 4

# 10 "lmathlib.c" 2

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
# 12 "lmathlib.c" 2
# 1 "../../include/lua.h" 1
# 13 "lmathlib.c" 2
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
# 14 "lmathlib.c" 2
# 35 "lmathlib.c"
static void math_abs (void) {
  lua_pushnumber(fabs(luaL_check_number(1)));
}

static void math_sin (void) {
  lua_pushnumber(sin(((luaL_check_number(1))*((3.14159265358979323846)/180.0))));
}

static void math_cos (void) {
  lua_pushnumber(cos(((luaL_check_number(1))*((3.14159265358979323846)/180.0))));
}

static void math_tan (void) {
  lua_pushnumber(tan(((luaL_check_number(1))*((3.14159265358979323846)/180.0))));
}

static void math_asin (void) {
  lua_pushnumber(((asin(luaL_check_number(1)))/((3.14159265358979323846)/180.0)));
}

static void math_acos (void) {
  lua_pushnumber(((acos(luaL_check_number(1)))/((3.14159265358979323846)/180.0)));
}

static void math_atan (void) {
  lua_pushnumber(((atan(luaL_check_number(1)))/((3.14159265358979323846)/180.0)));
}

static void math_atan2 (void) {
  lua_pushnumber(((atan2(luaL_check_number(1), luaL_check_number(2)))/((3.14159265358979323846)/180.0)));
}

static void math_ceil (void) {
  lua_pushnumber(ceil(luaL_check_number(1)));
}

static void math_floor (void) {
  lua_pushnumber(floor(luaL_check_number(1)));
}

static void math_mod (void) {
  lua_pushnumber(fmod(luaL_check_number(1), luaL_check_number(2)));
}

static void math_sqrt (void) {
  lua_pushnumber(sqrt(luaL_check_number(1)));
}

static void math_pow (void) {
  lua_pushnumber(pow(luaL_check_number(1), luaL_check_number(2)));
}

static void math_log (void) {
  lua_pushnumber(log(luaL_check_number(1)));
}

static void math_log10 (void) {
  lua_pushnumber(log10(luaL_check_number(1)));
}

static void math_exp (void) {
  lua_pushnumber(exp(luaL_check_number(1)));
}

static void math_deg (void) {
  lua_pushnumber(luaL_check_number(1)/((3.14159265358979323846)/180.0));
}

static void math_rad (void) {
  lua_pushnumber(luaL_check_number(1)*((3.14159265358979323846)/180.0));
}

static void math_frexp (void) {
  int e;
  lua_pushnumber(frexp(luaL_check_number(1), &e));
  lua_pushnumber(e);
}

static void math_ldexp (void) {
  lua_pushnumber(ldexp(luaL_check_number(1), ((int)luaL_check_number(2))));
}



static void math_min (void) {
  int i = 1;
  double dmin = luaL_check_number(i);
  while (lua_lua2C(++i) != 0) {
    double d = luaL_check_number(i);
    if (d < dmin)
      dmin = d;
  }
  lua_pushnumber(dmin);
}


static void math_max (void) {
  int i = 1;
  double dmax = luaL_check_number(i);
  while (lua_lua2C(++i) != 0) {
    double d = luaL_check_number(i);
    if (d > dmax)
      dmax = d;
  }
  lua_pushnumber(dmax);
}


static void math_random (void) {


  double r = (double)(rand()%
# 146 "lmathlib.c" 3 4
                            2147483647
# 146 "lmathlib.c"
                                    ) / (double)
# 146 "lmathlib.c" 3 4
                                                2147483647
# 146 "lmathlib.c"
                                                        ;
  int l = ((int)luaL_opt_number(1,0));
  if (l == 0)
    lua_pushnumber(r);
  else {
    int u = ((int)luaL_opt_number(2,0));
    if (u == 0) {
      u = l;
      l = 1;
    }
    if (!(l<=u)) luaL_argerror(1,"interval is empty");
    lua_pushnumber((int)(r*(u-l+1))+l);
  }
}


static void math_randomseed (void) {
  srand(((int)luaL_check_number(1)));
}


static struct luaL_reg mathlib[] = {
{"abs", math_abs},
{"sin", math_sin},
{"cos", math_cos},
{"tan", math_tan},
{"asin", math_asin},
{"acos", math_acos},
{"atan", math_atan},
{"atan2", math_atan2},
{"ceil", math_ceil},
{"floor", math_floor},
{"mod", math_mod},
{"frexp", math_frexp},
{"ldexp", math_ldexp},
{"sqrt", math_sqrt},
{"min", math_min},
{"max", math_max},
{"log", math_log},
{"log10", math_log10},
{"exp", math_exp},
{"deg", math_deg},
{"rad", math_rad},
{"random", math_random},
{"randomseed", math_randomseed}
};




void lua_mathlibopen (void) {
  luaL_openlib(mathlib, (sizeof(mathlib)/sizeof(mathlib[0])));
  lua_pushcclosure(math_pow, 0);
  lua_pushnumber(0);
  lua_settagmethod(lua_tag(lua_pop()), "pow");
  lua_pushnumber((3.14159265358979323846)); lua_setglobal("PI");
}
