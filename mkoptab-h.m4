divert(-1)

changequote({,})

define(type,dnl t, i, c, s
{ifelse({$1}, i, {$2}, {$1}, c, {$3}, {$4})})

define(option,dnl name, short, variable, function, type, default, help, doku
{divert(0)dnl
extern type({$5}, {int }, {int }, char *){$3};
divert(-1)})


divert(0)dnl
{#define OPT_INT 0
#define OPT_CHR 1
#define OPT_STR 2

union optvar {
    int *i;
    char **s;
};

struct option {
    char *name, *shrt;
    char *help;
    int type;
    union optvar var;
    void (*func)();
};

extern struct option option[];}

divert(-1)

define(endall,)

