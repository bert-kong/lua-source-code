# 1 "linit.c"
# 1 "/usr2/c_akong/workspace/projects/lua-source/lua-3.2.2/src/lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "linit.c"






# 1 "../../include/lua.h" 1
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
# 8 "linit.c" 2
# 1 "../../include/lualib.h" 1
# 11 "../../include/lualib.h"
# 1 "../../include/lua.h" 1
# 12 "../../include/lualib.h" 2

void lua_iolibopen (void);
void lua_strlibopen (void);
void lua_mathlibopen (void);
void lua_dblibopen (void);


void lua_userinit (void);
# 32 "../../include/lualib.h"
char *luaI_classend (char *p);
int luaI_singlematch (int c, char *p, char *ep);
# 9 "linit.c" 2


void lua_userinit (void) {
  lua_iolibopen();
  lua_strlibopen();
  lua_mathlibopen();
  lua_dblibopen();
}
