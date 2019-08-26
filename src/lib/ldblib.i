# 1 "ldblib.c"
# 1 "/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "ldblib.c"







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

# 9 "ldblib.c" 2
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

# 10 "ldblib.c" 2

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
# 12 "ldblib.c" 2
# 1 "../../include/lua.h" 1
# 13 "ldblib.c" 2
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
# 14 "ldblib.c" 2
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
# 15 "ldblib.c" 2



static void settabss (lua_Object t, char *i, char *v) {
  lua_pushobject(t);
  lua_pushstring(i);
  lua_pushstring(v);
  lua_settable();
}


static void settabsi (lua_Object t, char *i, int v) {
  lua_pushobject(t);
  lua_pushstring(i);
  lua_pushnumber(v);
  lua_settable();
}


static lua_Object getfuncinfo (lua_Object func) {
  lua_Object result = lua_createtable();
  char *str;
  int line;
  lua_funcinfo(func, &str, &line);
  if (line == -1)
    settabss(result, "kind", "C");
  else if (line == 0) {
      settabss(result, "kind", "chunk");
      settabss(result, "source", str);
    }
  else {
    settabss(result, "kind", "Lua");
    settabsi(result, "def_line", line);
    settabss(result, "source", str);
  }
  if (line != 0) {
    char *kind = lua_getobjname(func, &str);
    if (*kind) {
      settabss(result, "name", str);
      settabss(result, "where", kind);
    }
  }
  return result;
}


static void getstack (void) {
  lua_Object func = lua_stackedfunction(((int)luaL_check_number(1)));
  if (func == 0)
    return;
  else {
    lua_Object result = getfuncinfo(func);
    int currline = lua_currentline(func);
    if (currline > 0)
      settabsi(result, "current", currline);
    lua_pushobject(result);
    lua_pushstring("func");
    lua_pushobject(func);
    lua_settable();
    lua_pushobject(result);
  }
}


static void funcinfo (void) {
  lua_pushobject(getfuncinfo(luaL_functionarg(1)));
}


static int findlocal (lua_Object func, int arg) {
  lua_Object v = lua_lua2C(arg);
  if (lua_isnumber(v))
    return (int)lua_getnumber(v);
  else {
    char *name = (luaL_check_lstr((arg), 
# 89 "ldblib.c" 3 4
                ((void *)0)
# 89 "ldblib.c"
                ));
    int i = 0;
    int result = -1;
    char *vname;
    while (lua_getlocal(func, ++i, &vname) != 0) {
      if (strcmp(name, vname) == 0)
        result = i;
    }
    if (result == -1)
      luaL_verror("no local variable `%.50s' at given level", name);
    return result;
  }
}


static void getlocal (void) {
  lua_Object func = lua_stackedfunction(((int)luaL_check_number(1)));
  lua_Object val;
  char *name;
  if (func == 0)
    return;
  else if (lua_lua2C(2) != 0) {
    if ((val = lua_getlocal(func, findlocal(func, 2), &name)) != 0) {
      lua_pushobject(val);
      lua_pushstring(name);
    }

  }
  else {
    lua_Object result = lua_createtable();
    int i;
    for (i=1; ;i++) {
      if ((val = lua_getlocal(func, i, &name)) == 0)
        break;
      lua_pushobject(result);
      lua_pushstring(name);
      lua_pushobject(val);
      lua_settable();
    }
    lua_pushobject(result);
  }
}


static void setlocal (void) {
  lua_Object func = lua_stackedfunction(((int)luaL_check_number(1)));
  int numvar;
  if (!(func != 0)) luaL_argerror(1,"level out of range");
  numvar = findlocal(func, 2);
  lua_pushobject(luaL_nonnullarg(3));
  if (!lua_setlocal(func, numvar))
    lua_error("no such local variable");
}



static int linehook = -1;
static int callhook = -1;


static void dohook (int ref) {
  lua_LHFunction oldlinehook = lua_setlinehook(
# 150 "ldblib.c" 3 4
                                              ((void *)0)
# 150 "ldblib.c"
                                                  );
  lua_CHFunction oldcallhook = lua_setcallhook(
# 151 "ldblib.c" 3 4
                                              ((void *)0)
# 151 "ldblib.c"
                                                  );
  lua_callfunction(lua_getref(ref));
  lua_setlinehook(oldlinehook);
  lua_setcallhook(oldcallhook);
}


static void linef (int line) {
  lua_pushnumber(line);
  dohook(linehook);
}


static void callf (lua_Function func, char *file, int line) {
  if (func != 0) {
    lua_pushobject(func);
    lua_pushstring(file);
    lua_pushnumber(line);
  }
  dohook(callhook);
}


static void setcallhook (void) {
  lua_Object f = lua_lua2C(1);
  lua_unref(callhook);
  if (f == 0) {
    callhook = -1;
    lua_setcallhook(
# 179 "ldblib.c" 3 4
                   ((void *)0)
# 179 "ldblib.c"
                       );
  }
  else {
    lua_pushobject(f);
    callhook = lua_ref(1);
    lua_setcallhook(callf);
  }
}


static void setlinehook (void) {
  lua_Object f = lua_lua2C(1);
  lua_unref(linehook);
  if (f == 0) {
    linehook = -1;
    lua_setlinehook(
# 194 "ldblib.c" 3 4
                   ((void *)0)
# 194 "ldblib.c"
                       );
  }
  else {
    lua_pushobject(f);
    linehook = lua_ref(1);
    lua_setlinehook(linef);
  }
}


static struct luaL_reg dblib[] = {
  {"funcinfo", funcinfo},
  {"getlocal", getlocal},
  {"getstack", getstack},
  {"setcallhook", setcallhook},
  {"setlinehook", setlinehook},
  {"setlocal", setlocal}
};


void lua_dblibopen (void) {
  luaL_openlib(dblib, (sizeof(dblib)/sizeof(dblib[0])));
}
