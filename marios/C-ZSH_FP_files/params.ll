; ModuleID = '../../src/Src/params.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { {}*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.gsu_integer = type { i64 (%struct.param*)*, void (%struct.param*, i64)*, void (%struct.param*, i32)* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.__sigset_t = type { [32 x i32] }
%struct.timeval = type { i32, i32 }
%struct.paramtypes = type { i32, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.mnumber = type { %union.anon.1, i32 }
%union.anon.1 = type { i64 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.timezone = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }

@keyboardhackchar = global i8 0, align 1
@stdscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @strsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@varscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strvargetfn, void (%struct.param*, i8*)* @strvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsetscalar_gsu = constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* null }, align 4
@stdinteger_gsu = constant %struct.gsu_integer { i64 (%struct.param*)* @intgetfn, void (%struct.param*, i64)* @intsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@varinteger_gsu = constant %struct.gsu_integer { i64 (%struct.param*)* @intvargetfn, void (%struct.param*, i64)* @intvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsetinteger_gsu = constant %struct.gsu_integer { i64 (%struct.param*)* @intgetfn, void (%struct.param*, i64)* null, void (%struct.param*, i32)* null }, align 4
@stdfloat_gsu = constant %struct.gsu_float { double (%struct.param*)* @floatgetfn, void (%struct.param*, double)* @floatsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@stdarray_gsu = constant %struct.gsu_array { i8** (%struct.param*)* @arrgetfn, void (%struct.param*, i8**)* @arrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@vararray_gsu = constant %struct.gsu_array { i8** (%struct.param*)* @arrvargetfn, void (%struct.param*, i8**)* @arrvarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@stdhash_gsu = constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @hashsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@nullsethash_gsu = constant %struct.gsu_hash { %struct.hashtable* (%struct.param*)* @hashgetfn, void (%struct.param*, %struct.hashtable*)* @nullsethashfn, void (%struct.param*, i32)* @nullunsetfn }, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pparams = common global i8** null, align 4
@argvparam_pm = global { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, align 4
@outtable = internal unnamed_addr global %struct.hashtable* null, align 4
@delunset.b = internal unnamed_addr global i1 false
@numparamvals = internal unnamed_addr global i32 0, align 4
@paramvals = internal unnamed_addr global i8** null, align 4
@opts = external global [169 x i8]
@.str1 = private unnamed_addr constant [9 x i8] c"paramtab\00", align 1
@realparamtab = common global %struct.hashtable* null, align 4
@paramtab = common global %struct.hashtable* null, align 4
@emulation = external global i32
@argvparam = internal unnamed_addr global %struct.param* null, align 4
@noerrs = external global i32
@.str2 = private unnamed_addr constant [10 x i8] c"MAILCHECK\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"LOGCHECK\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"KEYTIMEOUT\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"LISTMAX\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"TMPPREFIX\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"/tmp/zsh\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"TIMEFMT\00", align 1
@.str9 = private unnamed_addr constant [39 x i8] c"%J  %U user %S system %P cpu %*E total\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"WATCHFMT\00", align 1
@default_watchfmt = external constant i8*
@.str11 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@cached_username = external global i8*
@environ = external global i8**
@typtab = external global [256 x i16]
@.str13 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@home = common global i8* null, align 4
@.str14 = private unnamed_addr constant [6 x i8] c"SHLVL\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@shlvl = common global i64 0, align 8
@.str16 = private unnamed_addr constant [8 x i8] c"CPUTYPE\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"MACHTYPE\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"i686\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"OSTYPE\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"linux-gnu\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"TTY\00", align 1
@ttystrname = common global i8* null, align 4
@.str23 = private unnamed_addr constant [7 x i8] c"VENDOR\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"ZSH_NAME\00", align 1
@zsh_name = common global i8* null, align 4
@.str26 = private unnamed_addr constant [12 x i8] c"ZSH_VERSION\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"ZSH_PATCHLEVEL\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"1.5681\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@sigs = external global [35 x i8*]
@nulstring = external global [0 x i8]
@locallevel = common global i32 0, align 4
@.str31 = private unnamed_addr constant [15 x i8] c"%s: restricted\00", align 1
@ztokens = external global [0 x i8]
@.str32 = private unnamed_addr constant [18 x i8] c"invalid subscript\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@0 = internal unnamed_addr constant [3 x i8] c"<<\00"
@.str34 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@nular = internal global [2 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* null], align 4
@.str35 = private unnamed_addr constant [23 x i8] c"read-only variable: %s\00", align 1
@.str36 = private unnamed_addr constant [46 x i8] c"%s: attempt to set slice of associative array\00", align 1
@.str37 = private unnamed_addr constant [42 x i8] c"%s: assignment to invalid subscript range\00", align 1
@lastbase = external global i32
@foundparam = internal unnamed_addr global %struct.param* null, align 4
@.str38 = private unnamed_addr constant [47 x i8] c"%s: attempt to set associative array to scalar\00", align 1
@outputradix = external global i32
@.str39 = private unnamed_addr constant [47 x i8] c"%s: attempt to assign array value to non-array\00", align 1
@.str40 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@errflag = external global i32
@queueing_enabled = external global i32
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@.str41 = private unnamed_addr constant [49 x i8] c"scalar parameter %s created globally in function\00", align 1
@.str42 = private unnamed_addr constant [46 x i8] c"attempt to add to slice of a numeric variable\00", align 1
@.str43 = private unnamed_addr constant [48 x i8] c"array parameter %s created globally in function\00", align 1
@.str44 = private unnamed_addr constant [44 x i8] c"nested associative arrays not yet supported\00", align 1
@nullarray = internal global i8* null, align 4
@.str45 = private unnamed_addr constant [49 x i8] c"bad set of key/value pairs for associative array\00", align 1
@zterm_lines = common global i64 0, align 8
@zterm_columns = common global i64 0, align 8
@.str46 = private unnamed_addr constant [10 x i8] c"arrayuniq\00", align 1
@shtimer = common global %struct.timeval zeroinitializer, align 4
@.str47 = private unnamed_addr constant [32 x i8] c"SECONDS truncated on assignment\00", align 1
@1 = internal unnamed_addr constant [9 x i8] c"__time_t\00"
@2 = internal unnamed_addr constant [14 x i8] c"__suseconds_t\00"
@3 = internal unnamed_addr constant [5 x i8] c"long\00"
@floatseconds_gsu = internal constant %struct.gsu_float { double (%struct.param*)* @floatsecondsgetfn, void (%struct.param*, double)* @floatsecondssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@intseconds_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @intsecondsgetfn, void (%struct.param*, i64)* @intsecondssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@cached_uid = external global i32
@.str48 = private unnamed_addr constant [30 x i8] c"failed to change group ID: %e\00", align 1
@.str49 = private unnamed_addr constant [29 x i8] c"failed to change user ID: %e\00", align 1
@4 = internal unnamed_addr constant [6 x i8] c"uid_t\00"
@.str50 = private unnamed_addr constant [39 x i8] c"failed to change effective user ID: %e\00", align 1
@5 = internal unnamed_addr constant [6 x i8] c"gid_t\00"
@.str51 = private unnamed_addr constant [40 x i8] c"failed to change effective group ID: %e\00", align 1
@SHTTY = external global i32
@ifs = common global i8* null, align 4
@.str52 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@histsiz = external global i64
@savehistsiz = external global i64
@.str54 = private unnamed_addr constant [30 x i8] c"errno truncated on assignment\00", align 1
@keyboardhackgetfn.buf = internal global [2 x i8] zeroinitializer, align 1
@.str55 = private unnamed_addr constant [48 x i8] c"Only one KEYBOARD_HACK character can be defined\00", align 1
@.str56 = private unnamed_addr constant [48 x i8] c"KEYBOARD_HACK can only contain ASCII characters\00", align 1
@histcharsgetfn.buf = internal global [4 x i8] zeroinitializer, align 1
@bangchar = common global i8 0, align 1
@hatchar = common global i8 0, align 1
@hashchar = common global i8 0, align 1
@.str57 = private unnamed_addr constant [44 x i8] c"HISTCHARS can only contain ASCII characters\00", align 1
@wordchars = common global i8* null, align 4
@zunderscore = external global i8*
@term = common global i8* null, align 4
@zsh_terminfo = common global i8* null, align 4
@path = common global i8** null, align 4
@cmdnamtab = external global %struct.hashtable*
@.str58 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str59 = private unnamed_addr constant [4 x i8] c"%d#\00", align 1
@6 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@7 = internal unnamed_addr constant [10 x i8] c"long long\00"
@8 = internal unnamed_addr constant [7 x i8] c"zulong\00"
@9 = internal unnamed_addr constant [19 x i8] c"unsigned long long\00"
@convfloat.fmt = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str62 = private unnamed_addr constant [9 x i8] c"typeset \00", align 1
@pmtypes = internal unnamed_addr constant [15 x %struct.paramtypes] [%struct.paramtypes { i32 134217728, i8* getelementptr inbounds ([10 x i8]* @.str66, i32 0, i32 0), i32 0, i32 0 }, %struct.paramtypes { i32 2, i8* getelementptr inbounds ([8 x i8]* @.str67, i32 0, i32 0), i32 105, i32 1 }, %struct.paramtypes { i32 4, i8* getelementptr inbounds ([6 x i8]* @.str68, i32 0, i32 0), i32 69, i32 0 }, %struct.paramtypes { i32 8, i8* getelementptr inbounds ([6 x i8]* @.str68, i32 0, i32 0), i32 70, i32 0 }, %struct.paramtypes { i32 1, i8* getelementptr inbounds ([6 x i8]* @.str69, i32 0, i32 0), i32 97, i32 0 }, %struct.paramtypes { i32 16, i8* getelementptr inbounds ([12 x i8]* @.str70, i32 0, i32 0), i32 65, i32 0 }, %struct.paramtypes { i32 0, i8* getelementptr inbounds ([6 x i8]* @.str71, i32 0, i32 0), i32 0, i32 4 }, %struct.paramtypes { i32 32, i8* getelementptr inbounds ([15 x i8]* @.str72, i32 0, i32 0), i32 76, i32 2 }, %struct.paramtypes { i32 64, i8* getelementptr inbounds ([16 x i8]* @.str73, i32 0, i32 0), i32 82, i32 2 }, %struct.paramtypes { i32 128, i8* getelementptr inbounds ([12 x i8]* @.str74, i32 0, i32 0), i32 90, i32 2 }, %struct.paramtypes { i32 256, i8* getelementptr inbounds ([10 x i8]* @.str75, i32 0, i32 0), i32 108, i32 0 }, %struct.paramtypes { i32 512, i8* getelementptr inbounds ([10 x i8]* @.str76, i32 0, i32 0), i32 117, i32 0 }, %struct.paramtypes { i32 1024, i8* getelementptr inbounds ([9 x i8]* @.str77, i32 0, i32 0), i32 114, i32 0 }, %struct.paramtypes { i32 2048, i8* getelementptr inbounds ([7 x i8]* @.str78, i32 0, i32 0), i32 116, i32 0 }, %struct.paramtypes { i32 4096, i8* getelementptr inbounds ([9 x i8]* @.str79, i32 0, i32 0), i32 120, i32 0 }], align 4
@.str63 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stdout = external global %struct._IO_FILE*
@.str65 = private unnamed_addr constant [5 x i8] c"\0A%s=\00", align 1
@cdpath = common global i8** null, align 4
@fpath = common global i8** null, align 4
@mailpath = common global i8** null, align 4
@manpath = common global i8** null, align 4
@psvar = common global i8** null, align 4
@watch = common global i8** null, align 4
@zsh_eval_context = common global i8** null, align 4
@fignore = common global i8** null, align 4
@argzero = common global i8* null, align 4
@nullcmd = common global i8* null, align 4
@oldpwd = common global i8* null, align 4
@zoptarg = common global i8* null, align 4
@prompt = common global i8* null, align 4
@prompt2 = common global i8* null, align 4
@prompt3 = common global i8* null, align 4
@prompt4 = common global i8* null, align 4
@readnullcmd = common global i8* null, align 4
@rprompt = common global i8* null, align 4
@rprompt2 = common global i8* null, align 4
@sprompt = common global i8* null, align 4
@postedit = common global i8* null, align 4
@pwd = common global i8* null, align 4
@lastval = common global i64 0, align 8
@mypid = common global i64 0, align 8
@lastpid = common global i64 0, align 8
@ppid = common global i64 0, align 8
@zsh_subshell = common global i64 0, align 8
@lineno = common global i64 0, align 8
@zoptind = common global i64 0, align 8
@termflags = common global i32 0, align 4
@.str66 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str67 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str68 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str70 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str71 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str72 = private unnamed_addr constant [15 x i8] c"left justified\00", align 1
@.str73 = private unnamed_addr constant [16 x i8] c"right justified\00", align 1
@.str74 = private unnamed_addr constant [12 x i8] c"zero filled\00", align 1
@.str75 = private unnamed_addr constant [10 x i8] c"lowercase\00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"uppercase\00", align 1
@.str77 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str78 = private unnamed_addr constant [7 x i8] c"tagged\00", align 1
@.str79 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str80 = private unnamed_addr constant [8 x i8] c"SECONDS\00", align 1
@.str81 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str82 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str83 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str84 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@.str86 = private unnamed_addr constant [27 x i8] c"out of memory in arrayuniq\00", align 1
@.str87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@10 = internal unnamed_addr constant [5 x i8] c"char\00"
@11 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@12 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@scanprog = internal unnamed_addr global %struct.patprog* null, align 4
@scanstr = internal unnamed_addr global i8* null, align 4
@13 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@14 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str89 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@pound_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @poundgetfn, void (%struct.param*, i64)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str90 = private unnamed_addr constant [6 x i8] c"ERRNO\00", align 1
@errno_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @errnogetfn, void (%struct.param*, i64)* @errnosetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str91 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@gid_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @gidgetfn, void (%struct.param*, i64)* @gidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str92 = private unnamed_addr constant [5 x i8] c"EGID\00", align 1
@egid_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @egidgetfn, void (%struct.param*, i64)* @egidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str93 = private unnamed_addr constant [9 x i8] c"HISTSIZE\00", align 1
@histsize_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @histsizegetfn, void (%struct.param*, i64)* @histsizesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str94 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@random_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @randomgetfn, void (%struct.param*, i64)* @randomsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str95 = private unnamed_addr constant [9 x i8] c"SAVEHIST\00", align 1
@savehist_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @savehistsizegetfn, void (%struct.param*, i64)* @savehistsizesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str96 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@uid_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @uidgetfn, void (%struct.param*, i64)* @uidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str97 = private unnamed_addr constant [5 x i8] c"EUID\00", align 1
@euid_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @euidgetfn, void (%struct.param*, i64)* @euidsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str98 = private unnamed_addr constant [8 x i8] c"TTYIDLE\00", align 1
@ttyidle_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @ttyidlegetfn, void (%struct.param*, i64)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str99 = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str100 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str101 = private unnamed_addr constant [10 x i8] c"histchars\00", align 1
@.str102 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str103 = private unnamed_addr constant [9 x i8] c"TERMINFO\00", align 1
@.str104 = private unnamed_addr constant [10 x i8] c"WORDCHARS\00", align 1
@.str105 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str106 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str107 = private unnamed_addr constant [14 x i8] c"KEYBOARD_HACK\00", align 1
@.str108 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@varint_readonly_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @intvargetfn, void (%struct.param*, i64)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str109 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str110 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str111 = private unnamed_addr constant [8 x i8] c"HISTCMD\00", align 1
@curhist = external global i64
@.str112 = private unnamed_addr constant [7 x i8] c"LINENO\00", align 1
@.str113 = private unnamed_addr constant [5 x i8] c"PPID\00", align 1
@.str114 = private unnamed_addr constant [13 x i8] c"ZSH_SUBSHELL\00", align 1
@.str115 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@zlevar_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @intvargetfn, void (%struct.param*, i64)* @zlevarsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str116 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str117 = private unnamed_addr constant [7 x i8] c"OPTIND\00", align 1
@.str118 = private unnamed_addr constant [16 x i8] c"TRY_BLOCK_ERROR\00", align 1
@try_errflag = external global i64
@.str119 = private unnamed_addr constant [7 x i8] c"OPTARG\00", align 1
@.str120 = private unnamed_addr constant [8 x i8] c"NULLCMD\00", align 1
@.str121 = private unnamed_addr constant [9 x i8] c"POSTEDIT\00", align 1
@.str122 = private unnamed_addr constant [12 x i8] c"READNULLCMD\00", align 1
@.str123 = private unnamed_addr constant [4 x i8] c"PS1\00", align 1
@.str124 = private unnamed_addr constant [5 x i8] c"RPS1\00", align 1
@.str125 = private unnamed_addr constant [8 x i8] c"RPROMPT\00", align 1
@.str126 = private unnamed_addr constant [4 x i8] c"PS2\00", align 1
@.str127 = private unnamed_addr constant [5 x i8] c"RPS2\00", align 1
@.str128 = private unnamed_addr constant [9 x i8] c"RPROMPT2\00", align 1
@.str129 = private unnamed_addr constant [4 x i8] c"PS3\00", align 1
@.str130 = private unnamed_addr constant [4 x i8] c"PS4\00", align 1
@.str131 = private unnamed_addr constant [8 x i8] c"SPROMPT\00", align 1
@.str132 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str133 = private unnamed_addr constant [7 x i8] c"cdpath\00", align 1
@.str134 = private unnamed_addr constant [8 x i8] c"FIGNORE\00", align 1
@.str135 = private unnamed_addr constant [8 x i8] c"fignore\00", align 1
@.str136 = private unnamed_addr constant [6 x i8] c"FPATH\00", align 1
@.str137 = private unnamed_addr constant [6 x i8] c"fpath\00", align 1
@.str138 = private unnamed_addr constant [9 x i8] c"MAILPATH\00", align 1
@.str139 = private unnamed_addr constant [9 x i8] c"mailpath\00", align 1
@.str140 = private unnamed_addr constant [6 x i8] c"WATCH\00", align 1
@.str141 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str142 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str143 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str144 = private unnamed_addr constant [6 x i8] c"PSVAR\00", align 1
@.str145 = private unnamed_addr constant [6 x i8] c"psvar\00", align 1
@.str146 = private unnamed_addr constant [17 x i8] c"ZSH_EVAL_CONTEXT\00", align 1
@.str147 = private unnamed_addr constant [17 x i8] c"zsh_eval_context\00", align 1
@.str148 = private unnamed_addr constant [12 x i8] c"MODULE_PATH\00", align 1
@module_path = external global i8**
@.str149 = private unnamed_addr constant [12 x i8] c"module_path\00", align 1
@.str150 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str151 = private unnamed_addr constant [5 x i8] c"ARGC\00", align 1
@argc_gsu = internal constant %struct.gsu_integer { i64 (%struct.param*)* @poundgetfn, void (%struct.param*, i64)* @nullintsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@.str152 = private unnamed_addr constant [10 x i8] c"HISTCHARS\00", align 1
@.str153 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str154 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str155 = private unnamed_addr constant [7 x i8] c"PROMPT\00", align 1
@.str156 = private unnamed_addr constant [8 x i8] c"PROMPT2\00", align 1
@.str157 = private unnamed_addr constant [8 x i8] c"PROMPT3\00", align 1
@.str158 = private unnamed_addr constant [8 x i8] c"PROMPT4\00", align 1
@.str159 = private unnamed_addr constant [8 x i8] c"MANPATH\00", align 1
@.str160 = private unnamed_addr constant [8 x i8] c"manpath\00", align 1
@.str161 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str162 = private unnamed_addr constant [11 x i8] c"pipestatus\00", align 1
@pipestatus_gsu = internal constant %struct.gsu_array { i8** (%struct.param*)* @pipestatgetfn, void (%struct.param*, i8**)* @pipestatsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@special_params = internal global <{ { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } }> <{ { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str89, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @pound_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str90, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @errno_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str91, i32 0, i32 0), i32 29360130 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @gid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str92, i32 0, i32 0), i32 29360130 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @egid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str93, i32 0, i32 0), i32 20971522 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @histsize_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str94, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @random_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str95, i32 0, i32 0), i32 20971522 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @savehist_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @intseconds_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str96, i32 0, i32 0), i32 29360130 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @uid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str97, i32 0, i32 0), i32 29360130 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @euid_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str98, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @ttyidle_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str99, i32 0, i32 0), i32 29360128 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @username_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i32 4195328 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @dash_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8]* @.str101, i32 0, i32 0), i32 12582912 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @histchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @home_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str102, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @term_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str103, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @terminfo_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8]* @.str104, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @wordchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str105, i32 0, i32 0), i32 12582912 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @ifs_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str106, i32 0, i32 0), i32 4195328 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @underscore_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([14 x i8]* @.str107, i32 0, i32 0), i32 12582912 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @keyboard_hack_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lang_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str53, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_all_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8]* @.str81, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str82, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8]* @.str83, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8]* @.str84, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str85, i32 0, i32 0), i32 37748736 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @lc_blah_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str108, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @lastpid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str109, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @mypid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str110, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @lastval to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str111, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @curhist to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str112, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @lineno to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str113, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @ppid to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([13 x i8]* @.str114, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @zsh_subshell to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str115, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* bitcast (i64* @zterm_columns to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @zlevar_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str116, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* bitcast (i64* @zterm_lines to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @zlevar_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str117, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* bitcast (i64* @zoptind to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* bitcast (i64* @shlvl to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([16 x i8]* @.str118, i32 0, i32 0), i32 4194306 }, { i8*, [4 x i8] } { i8* bitcast (i64* @try_errflag to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varinteger_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str119, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @zoptarg to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str120, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @nullcmd to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str121, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @postedit to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8]* @.str122, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @readnullcmd to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str123, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str124, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str125, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str126, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str127, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str128, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @rprompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str129, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt3 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str130, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt4 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str131, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @sprompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str33, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @argzero to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str132, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @cdpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str133, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str134, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @fignore to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8]* @.str135, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str136, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @fpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str137, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str138, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @mailpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([9 x i8]* @.str139, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str140, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @watch to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str141, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str142, i32 0, i32 0), i32 20971520 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([5 x i8]* @.str143, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str144, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @psvar to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8]* @.str146, i32 0, i32 0), i32 4195328 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @zsh_eval_context to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8]* @.str147, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8]* @.str148, i32 0, i32 0), i32 29360128 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @module_path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([12 x i8]* @.str149, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i32 12583937 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str150, i32 0, i32 0), i32 12583937 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode zeroinitializer, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 zeroinitializer, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str151, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @argc_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8]* @.str152, i32 0, i32 0), i32 12582912 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @histchars_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str153, i32 0, i32 0), i32 4195330 }, { i8*, [4 x i8] } { i8* bitcast (i64* @lastval to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_integer* @varint_readonly_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str154, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str155, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str156, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt2 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str157, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt3 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str158, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8** @prompt4 to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @varscalar_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str159, i32 0, i32 0), i32 4194304 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @manpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @colonarr_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8]* @.str160, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str161, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @pparams to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str135, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @fignore to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8]* @.str134, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str133, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @cdpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str132, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str137, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @fpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str136, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str139, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @mailpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([9 x i8]* @.str138, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str160, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @manpath to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([8 x i8]* @.str159, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str145, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @psvar to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str144, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str141, i32 0, i32 0), i32 12582913 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @watch to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([6 x i8]* @.str140, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([17 x i8]* @.str147, i32 0, i32 0), i32 12583937 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @zsh_eval_context to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8]* @.str146, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([12 x i8]* @.str149, i32 0, i32 0), i32 29360129 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @module_path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([12 x i8]* @.str148, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str143, i32 0, i32 0), i32 29360129 }, { i8*, [4 x i8] } { i8* bitcast (i8*** @path to i8*), [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @vararray_gsu to %struct.gsu_scalar*) }, i32 0, i32 0, i8* null, i8* getelementptr inbounds ([5 x i8]* @.str142, i32 0, i32 0), %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([11 x i8]* @.str162, i32 0, i32 0), i32 4194305 }, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 { %struct.gsu_scalar* bitcast (%struct.gsu_array* @pipestatus_gsu to %struct.gsu_scalar*) }, i32 10, i32 0, i8* null, i8* null, %struct.param* null, i32 0 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } { %struct.hashnode zeroinitializer, { i8*, [4 x i8] } { i8* null, [4 x i8] undef }, %union.anon.0 zeroinitializer, i32 0, i32 0, i8* null, i8* null, %struct.param* null, i32 0 } }>, align 4
@pipestats = external global [256 x i32]
@numpipestats = external global i32
@15 = internal unnamed_addr constant [2 x i8] c"+\00"
@16 = internal unnamed_addr constant [4 x i8] c"int\00"
@17 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@18 = internal unnamed_addr constant [2 x i8] c"*\00", align 1
@colonarr_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @colonarrgetfn, void (%struct.param*, i8*)* @colonarrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@lc_blah_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @lcsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@lc_all_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @lc_allsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@lang_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @strgetfn, void (%struct.param*, i8*)* @langsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@keyboard_hack_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @keyboardhackgetfn, void (%struct.param*, i8*)* @keyboardhacksetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@underscore_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @underscoregetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@ifs_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @ifsgetfn, void (%struct.param*, i8*)* @ifssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@wordchars_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @wordcharsgetfn, void (%struct.param*, i8*)* @wordcharssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@terminfo_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @terminfogetfn, void (%struct.param*, i8*)* @terminfosetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@term_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @termgetfn, void (%struct.param*, i8*)* @termsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@home_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @homegetfn, void (%struct.param*, i8*)* @homesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@histchars_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @histcharsgetfn, void (%struct.param*, i8*)* @histcharssetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@dash_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @dashgetfn, void (%struct.param*, i8*)* @nullstrsetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@username_gsu = internal constant { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* } { i8* (%struct.param*)* @usernamegetfn, void (%struct.param*, i8*)* @usernamesetfn, void (%struct.param*, i32)* @stdunsetfn }, align 4
@19 = internal unnamed_addr constant [3 x i8] c"+=\00"
@20 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@21 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@22 = internal unnamed_addr constant [23 x i8] c"../../src/Src/params.c\00"
@.str163 = private unnamed_addr constant [3 x i8] c"p:\00", align 1
@.str164 = private unnamed_addr constant [53 x i8] c"autoloading module %s failed to define parameter: %s\00", align 1

define i8* @strgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %0 = load i8** %str, align 4, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %cont, label %cond.end

cont:                                             ; preds = %entry
  %call = tail call i8* @hcalloc(i32 1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cont
  %cond = phi i8* [ %call, %cont ], [ %0, %entry ]
  ret i8* %cond
}

define void @strsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %0 = load i8** %str, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** %str, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 536870912
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and11 = and i32 %1, 1073741824
  %tobool12 = icmp eq i32 %and11, 0
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 10), align 1, !tbaa !1
  %tobool13 = icmp eq i8 %2, 0
  %or.cond = and i1 %tobool12, %tobool13
  br i1 %or.cond, label %if.end, label %cont17

cont17:                                           ; preds = %land.lhs.true
  %or = or i32 %1, 1073741824
  store i32 %or, i32* %flags, align 4, !tbaa !3
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  tail call void @adduserdir(i8* %3, i8* %x, i32 0, i32 0) nounwind
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %cont17
  ret void
}

define void @stdunsetfn(%struct.param* %pm, i32 %exp) nounwind {
entry:
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 31
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 16, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  %s = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  %1 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_scalar* %1, i32 0, i32 1
  %2 = load void (%struct.param*, i8*)** %setfn, align 4, !tbaa !0
  %tobool = icmp eq void (%struct.param*, i8*)* %2, null
  br i1 %tobool, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.bb
  tail call void %2(%struct.param* %pm, i8* null) nounwind
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %gsu23 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu23 to %struct.gsu_array**
  %3 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %setfn24 = getelementptr inbounds %struct.gsu_array* %3, i32 0, i32 1
  %4 = load void (%struct.param*, i8**)** %setfn24, align 4, !tbaa !0
  %tobool25 = icmp eq void (%struct.param*, i8**)* %4, null
  br i1 %tobool25, label %sw.epilog, label %if.then26

if.then26:                                        ; preds = %sw.bb22
  tail call void %4(%struct.param* %pm, i8** null) nounwind
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %gsu32 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu32 to %struct.gsu_hash**
  %5 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %setfn33 = getelementptr inbounds %struct.gsu_hash* %5, i32 0, i32 1
  %6 = load void (%struct.param*, %struct.hashtable*)** %setfn33, align 4, !tbaa !0
  %tobool34 = icmp eq void (%struct.param*, %struct.hashtable*)* %6, null
  br i1 %tobool34, label %sw.epilog, label %if.then35

if.then35:                                        ; preds = %sw.bb31
  tail call void %6(%struct.param* %pm, %struct.hashtable* null) nounwind
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %and46 = and i32 %0, 4194304
  %tobool47 = icmp eq i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %sw.epilog

if.then48:                                        ; preds = %sw.default
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  store i8* null, i8** %str, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %sw.bb22, %sw.bb31, %if.then48, %if.then35, %if.then26, %if.then
  %7 = load i32* %flags, align 4, !tbaa !3
  %and60 = and i32 %7, 4259840
  %cmp = icmp eq i32 %and60, 65536
  br i1 %cmp, label %if.then65, label %cont82

if.then65:                                        ; preds = %sw.epilog
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %8 = load i8** %ename, align 4, !tbaa !0
  %tobool66 = icmp eq i8* %8, null
  br i1 %tobool66, label %cont74, label %if.then67

if.then67:                                        ; preds = %if.then65
  tail call void @zsfree(i8* %8) nounwind
  store i8* null, i8** %ename, align 4, !tbaa !0
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %cont74

cont74:                                           ; preds = %if.then65, %if.then67
  %9 = phi i32 [ %7, %if.then65 ], [ %.pre, %if.then67 ]
  %and77 = and i32 %9, -65537
  store i32 %and77, i32* %flags, align 4, !tbaa !3
  br label %cont82

cont82:                                           ; preds = %cont74, %sw.epilog
  %10 = phi i32 [ %and77, %cont74 ], [ %7, %sw.epilog ]
  %or = or i32 %10, 33554432
  store i32 %or, i32* %flags, align 4, !tbaa !3
  ret void
}

define i8* @strvargetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8**
  %2 = load i8** %1, align 4, !tbaa !0
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %cont, label %return

cont:                                             ; preds = %entry
  %call = tail call i8* @hcalloc(i32 1) nounwind
  br label %return

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ %2, %entry ]
  ret i8* %retval.0
}

define void @strvarsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8**
  %2 = load i8** %1, align 4, !tbaa !0
  tail call void @zsfree(i8* %2) nounwind
  store i8* %x, i8** %1, align 4, !tbaa !0
  ret void
}

define void @nullstrsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  tail call void @zsfree(i8* %x) nounwind
  ret void
}

define i64 @intgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %val = getelementptr inbounds %struct.param* %pm, i32 0, i32 1, i32 0
  %0 = load i64* %val, align 4, !tbaa !4
  ret i64 %0
}

define internal void @intsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %val = getelementptr inbounds %struct.param* %pm, i32 0, i32 1, i32 0
  store i64 %x, i64* %val, align 4, !tbaa !4
  ret void
}

define i64 @intvargetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i64**
  %0 = load i64** %valptr, align 4, !tbaa !0
  %1 = load i64* %0, align 4, !tbaa !4
  ret i64 %1
}

define void @intvarsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i64**
  %0 = load i64** %valptr, align 4, !tbaa !0
  store i64 %x, i64* %0, align 4, !tbaa !4
  ret void
}

define internal double @floatgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %dval = bitcast %union.anon* %u to double*
  %0 = load double* %dval, align 4, !tbaa !5
  ret double %0
}

define internal void @floatsetfn(%struct.param* nocapture %pm, double %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %dval = bitcast %union.anon* %u to double*
  store double %x, double* %dval, align 4, !tbaa !5
  ret void
}

define i8** @arrgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  %0 = load i8*** %arr, align 4, !tbaa !0
  %tobool = icmp eq i8** %0, null
  %nullarray. = select i1 %tobool, i8** @nullarray, i8** %0
  ret i8** %nullarray.
}

define void @arrsetfn(%struct.param* nocapture %pm, i8** %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  %0 = load i8*** %arr, align 4, !tbaa !0
  %tobool = icmp eq i8** %0, null
  %cmp = icmp eq i8** %0, %x
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @freearray(i8** %0) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 8192
  %tobool7 = icmp eq i32 %and, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %tobool.i = icmp eq i8** %x, null
  br i1 %tobool.i, label %if.end9.thread, label %lor.lhs.false.i

if.end9.thread:                                   ; preds = %if.then8
  store i8** null, i8*** %arr, align 4, !tbaa !0
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %if.then8
  %2 = load i8** %x, align 4, !tbaa !0
  %tobool1.i = icmp eq i8* %2, null
  br i1 %tobool1.i, label %if.end9, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call i8* @zheapptr(i8* %2) nounwind
  %lnot.i = icmp eq i8* %call.i, null
  %lnot.ext.i = zext i1 %lnot.i to i32
  tail call fastcc void @arrayuniq(i8** %x, i32 %lnot.ext.i) nounwind
  br label %if.end9

if.end9:                                          ; preds = %if.end.i, %lor.lhs.false.i, %if.end
  store i8** %x, i8*** %arr, align 4, !tbaa !0
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %3 = load i8** %ename, align 4, !tbaa !0
  %tobool12 = icmp eq i8* %3, null
  %tobool14 = icmp eq i8** %x, null
  %or.cond28 = or i1 %tobool12, %tobool14
  br i1 %or.cond28, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end9
  tail call void @arrfixenv(i8* %3, i8** %x)
  br label %if.end17

if.end17:                                         ; preds = %if.end9.thread, %if.end9, %if.then15
  ret void
}

define i8** @arrvargetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8***
  %2 = load i8*** %1, align 4, !tbaa !0
  %tobool = icmp ne i8** %2, null
  %cond = select i1 %tobool, i8** %2, i8** @nullarray
  ret i8** %cond
}

define void @arrvarsetfn(%struct.param* nocapture %pm, i8** %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8***
  %2 = load i8*** %1, align 4, !tbaa !0
  %cmp = icmp eq i8** %2, %x
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @freearray(i8** %2) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %3, 8192
  %tobool = icmp eq i32 %and, 0
  %tobool.i = icmp eq i8** %x, null
  %or.cond40 = or i1 %tobool, %tobool.i
  br i1 %or.cond40, label %if.end4, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = load i8** %x, align 4, !tbaa !0
  %tobool1.i = icmp eq i8* %4, null
  br i1 %tobool1.i, label %if.end15, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call i8* @zheapptr(i8* %4) nounwind
  %lnot.i = icmp eq i8* %call.i, null
  %lnot.ext.i = zext i1 %lnot.i to i32
  tail call fastcc void @arrayuniq(i8** %x, i32 %lnot.ext.i) nounwind
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.end
  %5 = phi i32 [ %.pre, %if.end.i ], [ %3, %if.end ]
  %and11 = and i32 %5, 4194304
  %tobool12 = icmp ne i32 %and11, 0
  %or.cond = and i1 %tobool12, %tobool.i
  br i1 %or.cond, label %if.end15.thread, label %if.end15

if.end15.thread:                                  ; preds = %if.end4
  %call = tail call i8** @mkarray(i8* null) nounwind
  store i8** %call, i8*** %1, align 4
  br label %if.end21

if.end15:                                         ; preds = %lor.lhs.false.i, %if.end4
  %tobool1339 = phi i1 [ %tobool.i, %if.end4 ], [ false, %lor.lhs.false.i ]
  store i8** %x, i8*** %1, align 4
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %6 = load i8** %ename, align 4, !tbaa !0
  %tobool16 = icmp eq i8* %6, null
  %or.cond34 = or i1 %tobool16, %tobool1339
  br i1 %or.cond34, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end15
  tail call void @arrfixenv(i8* %6, i8** %x)
  br label %if.end21

if.end21:                                         ; preds = %if.end15.thread, %if.end15, %if.then19
  ret void
}

define %struct.hashtable* @hashgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  %0 = load %struct.hashtable** %hash, align 4, !tbaa !0
  ret %struct.hashtable* %0
}

define void @hashsetfn(%struct.param* nocapture %pm, %struct.hashtable* %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  %0 = load %struct.hashtable** %hash, align 4, !tbaa !0
  %tobool = icmp eq %struct.hashtable* %0, null
  %cmp = icmp eq %struct.hashtable* %0, %x
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %.b.i = load i1* @delunset.b, align 1
  store i1 true, i1* @delunset.b, align 1
  tail call void @deletehashtable(%struct.hashtable* %0) nounwind
  store i1 %.b.i, i1* @delunset.b, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store %struct.hashtable* %x, %struct.hashtable** %hash, align 4, !tbaa !0
  ret void
}

define void @nullsethashfn(%struct.param* nocapture %pm, %struct.hashtable* %x) nounwind {
entry:
  %.b.i = load i1* @delunset.b, align 1
  store i1 true, i1* @delunset.b, align 1
  tail call void @deletehashtable(%struct.hashtable* %x) nounwind
  store i1 %.b.i, i1* @delunset.b, align 1
  ret void
}

define void @nullunsetfn(%struct.param* nocapture %pm, i32 %exp) nounwind readnone {
entry:
  ret void
}

define %struct.hashtable* @newparamtable(i32 %size, i8* %name) nounwind {
entry:
  %tobool = icmp eq i32 %size, 0
  %.size = select i1 %tobool, i32 17, i32 %size
  %call = tail call %struct.hashtable* @newhashtable(i32 %.size, i8* %name, void (%struct.hashtable*)* null) nounwind
  %hash = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4, !tbaa !0
  %emptytable = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !0
  %filltable = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !0
  %cmpnodes = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !0
  %addnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %getnode2 = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !0
  %removenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !0
  %disablenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !0
  %enablenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !0
  %freenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !0
  %printnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !0
  ret %struct.hashtable* %call
}

declare %struct.hashtable* @newhashtable(i32, i8*, void (%struct.hashtable*)*)

declare i32 @hasher(i8*)

declare void @emptyhashtable(%struct.hashtable*)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @addhashnode(%struct.hashtable*, i8*, i8*)

define internal %struct.hashnode* @getparamnode(%struct.hashtable* %ht, i8* %nam) nounwind {
entry:
  %call = tail call %struct.hashnode* @gethashnode2(%struct.hashtable* %ht, i8* %nam) nounwind
  %tobool = icmp eq %struct.hashnode* %call, null
  br i1 %tobool, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %u = getelementptr inbounds %struct.hashnode* %call, i32 1
  %str = bitcast %struct.hashnode* %u to i8**
  %0 = load i8** %str, align 4, !tbaa !0
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %if.end21, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.hashnode* %call, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 134217728
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call8 = tail call i8* @dupstring(i8* %0) nounwind
  %2 = load i32* %flags, align 4, !tbaa !3
  %and15 = and i32 %2, 268435456
  %tobool16 = icmp ne i32 %and15, 0
  %cond = select i1 %tobool16, i8* null, i8* %nam
  %call17 = tail call i32 @ensurefeature(i8* %call8, i8* getelementptr inbounds ([3 x i8]* @.str163, i32 0, i32 0), i8* %cond) nounwind
  %call18 = tail call %struct.hashnode* @gethashnode2(%struct.hashtable* %ht, i8* %nam) nounwind
  %tobool19 = icmp eq %struct.hashnode* %call18, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([53 x i8]* @.str164, i32 0, i32 0), i8* %call8, i8* %nam) nounwind
  br label %if.end21

if.end21:                                         ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry, %if.then20
  %hn.0 = phi %struct.hashnode* [ %call18, %if.then ], [ null, %if.then20 ], [ %call, %land.lhs.true2 ], [ %call, %land.lhs.true ], [ null, %entry ]
  ret %struct.hashnode* %hn.0
}

declare %struct.hashnode* @removehashnode(%struct.hashtable*, i8*)

define void @freeparamnode(%struct.hashnode* %hn) nounwind {
entry:
  %.b = load i1* @delunset.b, align 1
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.hashnode* %hn to %struct.param*
  %gsu = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %s = bitcast i32* %gsu to %struct.gsu_scalar**
  %1 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %unsetfn = getelementptr inbounds %struct.gsu_scalar* %1, i32 0, i32 2
  %2 = load void (%struct.param*, i32)** %unsetfn, align 4, !tbaa !0
  tail call void %2(%struct.param* %0, i32 1) nounwind
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  tail call void @zsfree(i8* %3) nounwind
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %4 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %4, 65536
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %cont8, label %if.then5

if.then5:                                         ; preds = %if.end
  %ename = getelementptr inbounds %struct.hashnode* %hn, i32 3
  %5 = bitcast %struct.hashnode* %ename to i8**
  %6 = load i8** %5, align 4, !tbaa !0
  tail call void @zsfree(i8* %6) nounwind
  br label %cont8

cont8:                                            ; preds = %if.then5, %if.end
  %7 = bitcast %struct.hashnode* %hn to i8*
  tail call void @zfree(i8* %7, i32 48) nounwind
  ret void
}

define void @printparamnode(%struct.hashnode* %hn, i32 %printflags) nounwind {
entry:
  %0 = bitcast %struct.hashnode* %hn to %struct.param*
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 33554432
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont6, label %if.end344

cont6:                                            ; preds = %entry
  %and7 = and i32 %printflags, 32
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %cont18

if.then9:                                         ; preds = %cont6
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str62, i32 0, i32 0)) nounwind
  br label %cont18

cont18:                                           ; preds = %if.then9, %cont6
  %and19 = and i32 %printflags, 34
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cont100, label %cont24.preheader

cont24.preheader:                                 ; preds = %cont18
  %width = getelementptr inbounds %struct.hashnode* %hn, i32 2, i32 1
  %2 = bitcast i8** %width to i32*
  %base = getelementptr inbounds %struct.hashnode* %hn, i32 2
  %3 = bitcast %struct.hashnode* %base to i32*
  %4 = getelementptr inbounds %struct.hashnode* %hn, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %cont24.preheader, %cont91
  %pmptr.0415 = phi %struct.paramtypes* [ getelementptr inbounds ([15 x %struct.paramtypes]* @pmtypes, i32 0, i32 0), %cont24.preheader ], [ %incdec.ptr, %cont91 ]
  %i.0414 = phi i32 [ 0, %cont24.preheader ], [ %19, %cont91 ]
  %doneminus.0413 = phi i32 [ 0, %cont24.preheader ], [ %doneminus.4, %cont91 ]
  %flags25 = getelementptr inbounds %struct.paramtypes* %pmptr.0415, i32 0, i32 3
  %5 = load i32* %flags25, align 4, !tbaa !3
  %and30 = and i32 %5, 4
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %for.body
  %6 = load i32* %4, align 4, !tbaa !3
  br label %if.end42

if.else:                                          ; preds = %for.body
  %7 = load i32* %flags, align 4, !tbaa !3
  %binflag = getelementptr inbounds %struct.paramtypes* %pmptr.0415, i32 0, i32 0
  %8 = load i32* %binflag, align 4, !tbaa !3
  %and38 = and i32 %8, %7
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then32
  %and38.sink = phi i32 [ %and38, %if.else ], [ %6, %if.then32 ]
  %not.tobool39 = icmp eq i32 %and38.sink, 0
  br i1 %not.tobool39, label %for.inc, label %cont48

cont48:                                           ; preds = %if.end42
  br i1 %tobool8, label %if.then51, label %if.else61

if.then51:                                        ; preds = %cont48
  %typeflag = getelementptr inbounds %struct.paramtypes* %pmptr.0415, i32 0, i32 2
  %9 = load i32* %typeflag, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %9, 0
  br i1 %tobool52, label %if.end63, label %if.then53

if.then53:                                        ; preds = %if.then51
  %tobool54 = icmp eq i32 %doneminus.0413, 0
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.then53
  %10 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i = tail call i32 @_IO_putc(i32 45, %struct._IO_FILE* %10) nounwind
  %.pre = load i32* %typeflag, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.then55
  %11 = phi i32 [ %9, %if.then53 ], [ %.pre, %if.then55 ]
  %doneminus.1 = phi i32 [ %doneminus.0413, %if.then53 ], [ 1, %if.then55 ]
  %12 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i397 = tail call i32 @_IO_putc(i32 %11, %struct._IO_FILE* %12) nounwind
  br label %if.end63

if.else61:                                        ; preds = %cont48
  %string = getelementptr inbounds %struct.paramtypes* %pmptr.0415, i32 0, i32 1
  %13 = load i8** %string, align 4, !tbaa !0
  %call62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str63, i32 0, i32 0), i8* %13) nounwind
  br label %if.end63

if.end63:                                         ; preds = %if.then51, %if.end57, %if.else61
  %doneminus.2 = phi i32 [ %doneminus.1, %if.end57 ], [ %doneminus.0413, %if.then51 ], [ %doneminus.0413, %if.else61 ]
  %14 = load i32* %flags25, align 4, !tbaa !3
  %and69 = and i32 %14, 1
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %if.end75, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end63
  %15 = load i32* %3, align 4, !tbaa !3
  %tobool71 = icmp eq i32 %15, 0
  br i1 %tobool71, label %if.end75, label %if.then72

if.then72:                                        ; preds = %land.lhs.true
  %call74 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str64, i32 0, i32 0), i32 %15) nounwind
  %.pre416 = load i32* %flags25, align 4, !tbaa !3
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true, %if.end63, %if.then72
  %16 = phi i32 [ %.pre416, %if.then72 ], [ %14, %land.lhs.true ], [ %14, %if.end63 ]
  %doneminus.3 = phi i32 [ 0, %if.then72 ], [ %doneminus.2, %land.lhs.true ], [ %doneminus.2, %if.end63 ]
  %and81 = and i32 %16, 2
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %for.inc, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %if.end75
  %17 = load i32* %2, align 4, !tbaa !3
  %tobool84 = icmp eq i32 %17, 0
  br i1 %tobool84, label %for.inc, label %if.then85

if.then85:                                        ; preds = %land.lhs.true83
  %call87 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str64, i32 0, i32 0), i32 %17) nounwind
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %land.lhs.true83, %if.end75, %if.then85
  %doneminus.4 = phi i32 [ 0, %if.then85 ], [ %doneminus.3, %land.lhs.true83 ], [ %doneminus.3, %if.end75 ], [ %doneminus.0413, %if.end42 ]
  %18 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0414, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb90, label %cont91

ioc_bb90:                                         ; preds = %for.inc
  %21 = sext i32 %i.0414 to i64
  tail call void @__ioc_report_add_overflow(i32 4542, i32 99, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont91

cont91:                                           ; preds = %for.inc, %ioc_bb90
  %incdec.ptr = getelementptr inbounds %struct.paramtypes* %pmptr.0415, i32 1
  %cmp = icmp slt i32 %19, 15
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cont91
  %tobool92 = icmp eq i32 %doneminus.4, 0
  br i1 %tobool92, label %cont100, label %if.then93

if.then93:                                        ; preds = %for.end
  %22 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i398 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %22) nounwind
  br label %cont100

cont100:                                          ; preds = %for.end, %cont18, %if.then93
  %and101 = and i32 %printflags, 1
  %tobool102 = icmp eq i32 %and101, 0
  br i1 %tobool102, label %lor.lhs.false, label %if.then118

lor.lhs.false:                                    ; preds = %cont100
  %23 = load i32* %flags, align 4, !tbaa !3
  %and109 = and i32 %23, 32768
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %if.end122, label %cont115

cont115:                                          ; preds = %lor.lhs.false
  %and116 = and i32 %printflags, 16
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.end122

if.then118:                                       ; preds = %cont115, %cont100
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %24 = load i8** %nam, align 4, !tbaa !0
  %25 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call120 = tail call i32 @zputs(i8* %24, %struct._IO_FILE* %25) nounwind
  %26 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i399 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %26) nounwind
  br label %if.end344

if.end122:                                        ; preds = %cont115, %lor.lhs.false
  %nam124 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %27 = load i8** %nam124, align 4, !tbaa !0
  %28 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call125 = tail call i32 @quotedzputs(i8* %27, %struct._IO_FILE* %28) nounwind
  %29 = load i32* %flags, align 4, !tbaa !3
  %and132 = and i32 %29, 134217728
  %tobool133 = icmp eq i32 %and132, 0
  br i1 %tobool133, label %cont140, label %if.then134

if.then134:                                       ; preds = %if.end122
  %30 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i400 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %30) nounwind
  br label %if.end344

cont140:                                          ; preds = %if.end122
  %and141 = and i32 %printflags, 8
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then143, label %cont149

if.then143:                                       ; preds = %cont140
  %31 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i401 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %31) nounwind
  br label %if.end217

cont149:                                          ; preds = %cont140
  br i1 %tobool8, label %land.lhs.true152, label %if.else214

land.lhs.true152:                                 ; preds = %cont149
  %and175 = and i32 %29, 31
  switch i32 %and175, label %if.else214 [
    i32 1, label %if.then210
    i32 16, label %if.then210
  ]

if.then210:                                       ; preds = %land.lhs.true152, %land.lhs.true152
  %32 = load i8** %nam124, align 4, !tbaa !0
  %call213 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str65, i32 0, i32 0), i8* %32) nounwind
  br label %if.end217

if.else214:                                       ; preds = %land.lhs.true152, %cont149
  %33 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i402 = tail call i32 @_IO_putc(i32 61, %struct._IO_FILE* %33) nounwind
  br label %if.end217

if.end217:                                        ; preds = %if.then210, %if.else214, %if.then143
  %34 = load i32* %flags, align 4, !tbaa !3
  %and240 = and i32 %34, 31
  switch i32 %and240, label %cont337 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb253
    i32 4, label %sw.bb261
    i32 8, label %sw.bb261
    i32 1, label %cont273
    i32 16, label %cont304
  ]

sw.bb:                                            ; preds = %if.end217
  %gsu = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %s = bitcast i32* %gsu to %struct.gsu_scalar**
  %35 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %getfn241 = bitcast %struct.gsu_scalar* %35 to i8* (%struct.param*)**
  %36 = load i8* (%struct.param*)** %getfn241, align 4, !tbaa !0
  %tobool242 = icmp eq i8* (%struct.param*)* %36, null
  br i1 %tobool242, label %cont337, label %land.lhs.true243

land.lhs.true243:                                 ; preds = %sw.bb
  %call248 = tail call i8* %36(%struct.param* %0) nounwind
  %tobool249 = icmp eq i8* %call248, null
  br i1 %tobool249, label %cont337, label %if.then250

if.then250:                                       ; preds = %land.lhs.true243
  %37 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call251 = tail call i32 @quotedzputs(i8* %call248, %struct._IO_FILE* %37) nounwind
  br label %cont337

sw.bb253:                                         ; preds = %if.end217
  %gsu254 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %i255 = bitcast i32* %gsu254 to %struct.gsu_integer**
  %38 = load %struct.gsu_integer** %i255, align 4, !tbaa !0
  %getfn256 = getelementptr inbounds %struct.gsu_integer* %38, i32 0, i32 0
  %39 = load i64 (%struct.param*)** %getfn256, align 4, !tbaa !0
  %call257 = tail call i64 %39(%struct.param* %0) nounwind
  %call258 = tail call i8* @output64(i64 %call257) nounwind
  %40 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call259 = tail call i32 @fputs(i8* %call258, %struct._IO_FILE* %40) nounwind
  br label %cont337

sw.bb261:                                         ; preds = %if.end217, %if.end217
  %gsu262 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %f = bitcast i32* %gsu262 to %struct.gsu_float**
  %41 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn263 = getelementptr inbounds %struct.gsu_float* %41, i32 0, i32 0
  %42 = load double (%struct.param*)** %getfn263, align 4, !tbaa !0
  %call264 = tail call double %42(%struct.param* %0) nounwind
  %base265 = getelementptr inbounds %struct.hashnode* %hn, i32 2
  %43 = bitcast %struct.hashnode* %base265 to i32*
  %44 = load i32* %43, align 4, !tbaa !3
  %45 = load i32* %flags, align 4, !tbaa !3
  %46 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call268 = tail call i8* @convfloat(double %call264, i32 %44, i32 %45, %struct._IO_FILE* %46)
  br label %cont337

cont273:                                          ; preds = %if.end217
  br i1 %tobool142, label %if.end278, label %if.then276

if.then276:                                       ; preds = %cont273
  %47 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i403 = tail call i32 @_IO_putc(i32 40, %struct._IO_FILE* %47) nounwind
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %cont273
  %gsu279 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %a = bitcast i32* %gsu279 to %struct.gsu_array**
  %48 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn280 = getelementptr inbounds %struct.gsu_array* %48, i32 0, i32 0
  %49 = load i8** (%struct.param*)** %getfn280, align 4, !tbaa !0
  %call281 = tail call i8** %49(%struct.param* %0) nounwind
  %50 = load i8** %call281, align 4, !tbaa !0
  %tobool282 = icmp eq i8* %50, null
  br i1 %tobool282, label %cont294, label %if.then283

if.then283:                                       ; preds = %if.end278
  %51 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call285 = tail call i32 @quotedzputs(i8* %50, %struct._IO_FILE* %51) nounwind
  %u.0410 = getelementptr inbounds i8** %call281, i32 1
  %52 = load i8** %u.0410, align 4, !tbaa !0
  %tobool286411 = icmp eq i8* %52, null
  br i1 %tobool286411, label %cont294, label %while.body

while.body:                                       ; preds = %if.then283, %while.body
  %u.0412 = phi i8** [ %u.0, %while.body ], [ %u.0410, %if.then283 ]
  %53 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i404 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %53) nounwind
  %54 = load i8** %u.0412, align 4, !tbaa !0
  %55 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call289 = tail call i32 @quotedzputs(i8* %54, %struct._IO_FILE* %55) nounwind
  %u.0 = getelementptr inbounds i8** %u.0412, i32 1
  %56 = load i8** %u.0, align 4, !tbaa !0
  %tobool286 = icmp eq i8* %56, null
  br i1 %tobool286, label %cont294, label %while.body

cont294:                                          ; preds = %if.then283, %while.body, %if.end278
  br i1 %tobool142, label %if.then340, label %if.then297

if.then297:                                       ; preds = %cont294
  %57 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i405 = tail call i32 @_IO_putc(i32 41, %struct._IO_FILE* %57) nounwind
  br label %if.else342

cont304:                                          ; preds = %if.end217
  br i1 %tobool142, label %if.end309, label %if.then307

if.then307:                                       ; preds = %cont304
  %58 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i406 = tail call i32 @_IO_putc(i32 40, %struct._IO_FILE* %58) nounwind
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %cont304
  %gsu310 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %h = bitcast i32* %gsu310 to %struct.gsu_hash**
  %59 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn311 = getelementptr inbounds %struct.gsu_hash* %59, i32 0, i32 0
  %60 = load %struct.hashtable* (%struct.param*)** %getfn311, align 4, !tbaa !0
  %call312 = tail call %struct.hashtable* %60(%struct.param* %0) nounwind
  %tobool313 = icmp eq %struct.hashtable* %call312, null
  br i1 %tobool313, label %cont328, label %cont318

cont318:                                          ; preds = %if.end309
  %printnode = getelementptr inbounds %struct.hashtable* %call312, i32 0, i32 15
  %61 = load void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !0
  %call323 = tail call i32 @scanhashtable(%struct.hashtable* %call312, i32 1, i32 0, i32 33554432, void (%struct.hashnode*, i32)* %61, i32 8) nounwind
  br label %cont328

cont328:                                          ; preds = %if.end309, %cont318
  br i1 %tobool142, label %if.then340, label %if.then331

if.then331:                                       ; preds = %cont328
  %62 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i407 = tail call i32 @_IO_putc(i32 41, %struct._IO_FILE* %62) nounwind
  br label %if.else342

cont337:                                          ; preds = %land.lhs.true243, %sw.bb, %if.then250, %if.end217, %sw.bb261, %sw.bb253
  br i1 %tobool142, label %if.then340, label %if.else342

if.then340:                                       ; preds = %cont294, %cont328, %cont337
  %63 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i408 = tail call i32 @_IO_putc(i32 32, %struct._IO_FILE* %63) nounwind
  br label %if.end344

if.else342:                                       ; preds = %if.then297, %if.then331, %cont337
  %64 = load %struct._IO_FILE** @stdout, align 4, !tbaa !0
  %call.i409 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %64) nounwind
  br label %if.end344

if.end344:                                        ; preds = %entry, %if.then118, %if.then134, %if.else342, %if.then340
  ret void
}

define %struct.hashtable* @copyparamtable(%struct.hashtable* %ht, i8* %name) nounwind {
entry:
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %0 = load i32* %hsize, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %0, 0
  %.size.i = select i1 %tobool.i, i32 17, i32 %0
  %call.i = tail call %struct.hashtable* @newhashtable(i32 %.size.i, i8* %name, void (%struct.hashtable*)* null) nounwind
  %hash.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i, align 4, !tbaa !0
  %emptytable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i, align 4, !tbaa !0
  %filltable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i, align 4, !tbaa !0
  %cmpnodes.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i, align 4, !tbaa !0
  %addnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %getnode2.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i, align 4, !tbaa !0
  %removenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i, align 4, !tbaa !0
  %disablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode.i, align 4, !tbaa !0
  %enablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode.i, align 4, !tbaa !0
  %freenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !0
  %printnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode.i, align 4, !tbaa !0
  store %struct.hashtable* %call.i, %struct.hashtable** @outtable, align 4, !tbaa !0
  %call1 = tail call i32 @scanhashtable(%struct.hashtable* %ht, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scancopyparams, i32 0) nounwind
  store %struct.hashtable* null, %struct.hashtable** @outtable, align 4, !tbaa !0
  ret %struct.hashtable* %call.i
}

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32)

define internal void @scancopyparams(%struct.hashnode* %hn, i32 %flags) nounwind {
entry:
  %0 = bitcast %struct.hashnode* %hn to %struct.param*
  %call = tail call i8* @zshcalloc(i32 48) nounwind
  %1 = bitcast i8* %call to %struct.param*
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %2 = load i8** %nam, align 4, !tbaa !0
  %call1 = tail call i8* @ztrdup(i8* %2) nounwind
  %nam3 = getelementptr inbounds i8* %call, i32 4
  %3 = bitcast i8* %nam3 to i8**
  store i8* %call1, i8** %3, align 4, !tbaa !0
  tail call void @copyparam(%struct.param* %1, %struct.param* %0, i32 0)
  %4 = load %struct.hashtable** @outtable, align 4, !tbaa !0
  %5 = load i8** %3, align 4, !tbaa !0
  tail call void @addhashnode(%struct.hashtable* %4, i8* %5, i8* %call) nounwind
  ret void
}

define void @deleteparamtable(%struct.hashtable* %t) nounwind {
entry:
  %.b = load i1* @delunset.b, align 1
  store i1 true, i1* @delunset.b, align 1
  tail call void @deletehashtable(%struct.hashtable* %t) nounwind
  store i1 %.b, i1* @delunset.b, align 1
  ret void
}

declare void @deletehashtable(%struct.hashtable*)

define void @scancountparams(%struct.hashnode* nocapture %hn, i32 %flags) nounwind {
entry:
  %0 = load i32* @numparamvals, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = zext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 409, i32 3, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @numparamvals, align 4, !tbaa !3
  %5 = and i32 %flags, 3
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %cont
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %if.then
  %10 = zext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 411, i32 5, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind
  br label %cont12

cont12:                                           ; preds = %if.then, %ioc_bb11
  store i32 %8, i32* @numparamvals, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont, %cont12
  ret void
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define i8** @paramvalarr(%struct.hashtable* %ht, i32 %flags) nounwind {
entry:
  store i32 0, i32* @numparamvals, align 4, !tbaa !3
  %tobool = icmp ne %struct.hashtable* %ht, null
  br i1 %tobool, label %cont4, label %if.end

cont4:                                            ; preds = %entry
  %call = tail call i32 @scanhashtable(%struct.hashtable* %ht, i32 0, i32 0, i32 33554432, void (%struct.hashnode*, i32)* @scancountparams, i32 %flags) nounwind
  %.pre = load i32* @numparamvals, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont4, %entry
  %0 = phi i32 [ %.pre, %cont4 ], [ 0, %entry ]
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %if.end
  %4 = zext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 467, i32 48, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind
  br label %cont8

cont8:                                            ; preds = %if.end, %ioc_bb7
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  %8 = zext i32 %2 to i64
  tail call void @__ioc_report_mul_overflow(i32 467, i32 53, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %8, i64 4, i8 5) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %call11 = tail call i8* @zhalloc(i32 %6) nounwind
  %9 = bitcast i8* %call11 to i8**
  store i8** %9, i8*** @paramvals, align 4, !tbaa !0
  br i1 %tobool, label %cont15, label %if.end21

cont15:                                           ; preds = %cont10
  store i32 0, i32* @numparamvals, align 4, !tbaa !3
  %call20 = tail call i32 @scanhashtable(%struct.hashtable* %ht, i32 0, i32 0, i32 33554432, void (%struct.hashnode*, i32)* @scanparamvals, i32 %flags) nounwind
  %.pre26 = load i8*** @paramvals, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %cont15, %cont10
  %10 = phi i8** [ %.pre26, %cont15 ], [ %9, %cont10 ]
  %11 = load i32* @numparamvals, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %10, i32 %11
  store i8* null, i8** %arrayidx, align 4, !tbaa !0
  %12 = load i8*** @paramvals, align 4, !tbaa !0
  ret i8** %12
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i8* @zhalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal void @scanparamvals(%struct.hashnode* %hn, i32 %flags) nounwind {
entry:
  %v = alloca %struct.value, align 4
  %0 = load i32* @numparamvals, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %cont2

cont2:                                            ; preds = %entry
  %and = and i32 %flags, 32
  %tobool3 = icmp ne i32 %and, 0
  %and17 = and i32 %flags, 152
  %tobool18 = icmp eq i32 %and17, 0
  %or.cond = or i1 %tobool3, %tobool18
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %cont2, %entry
  %1 = bitcast %struct.hashnode* %hn to %struct.param*
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  store %struct.param* %1, %struct.param** %pm, align 4, !tbaa !0
  %and23 = and i32 %flags, 128
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %cont36, label %if.then25

if.then25:                                        ; preds = %if.end
  %2 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %3 = load i8** %2, align 4, !tbaa !0
  %call = call i8* @dupstring(i8* %3) nounwind
  call void @tokenize(i8* %call) nounwind
  call void @remnulargs(i8* %call) nounwind
  %call27 = call %struct.patprog* @patcompile(i8* %call, i32 0, i8** null) nounwind
  %tobool28 = icmp eq %struct.patprog* %call27, null
  br i1 %tobool28, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25
  %4 = load i8** @scanstr, align 4, !tbaa !0
  %call29 = call i32 @pattry(%struct.patprog* %call27, i8* %4) nounwind
  %tobool30 = icmp eq i32 %call29, 0
  br i1 %tobool30, label %return, label %if.end47

cont36:                                           ; preds = %if.end
  %and37 = and i32 %flags, 8
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.end47, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %cont36
  %5 = load %struct.patprog** @scanprog, align 4, !tbaa !0
  %6 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %7 = load i8** %6, align 4, !tbaa !0
  %call43 = call i32 @pattry(%struct.patprog* %5, i8* %7) nounwind
  %tobool44 = icmp eq i32 %call43, 0
  br i1 %tobool44, label %return, label %if.end47

if.end47:                                         ; preds = %land.lhs.true39, %lor.lhs.false, %cont36
  %8 = load %struct.param** %pm, align 4, !tbaa !0
  store %struct.param* %8, %struct.param** @foundparam, align 4, !tbaa !0
  %and53 = and i32 %flags, 2
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.end73

if.then55:                                        ; preds = %if.end47
  %nam58 = getelementptr inbounds %struct.param* %8, i32 0, i32 0, i32 1
  %9 = load i8** %nam58, align 4, !tbaa !0
  %10 = load i32* @numparamvals, align 4, !tbaa !3
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %10, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb59, label %cont60

ioc_bb59:                                         ; preds = %if.then55
  %14 = zext i32 %10 to i64
  call void @__ioc_report_add_overflow(i32 438, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %14, i64 1, i8 5) nounwind
  br label %cont60

cont60:                                           ; preds = %if.then55, %ioc_bb59
  store i32 %12, i32* @numparamvals, align 4, !tbaa !3
  %15 = load i8*** @paramvals, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %15, i32 %10
  store i8* %9, i8** %arrayidx, align 4, !tbaa !0
  %and69 = and i32 %flags, 17
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %return, label %cont60.if.end73_crit_edge

cont60.if.end73_crit_edge:                        ; preds = %cont60
  %.pre = load %struct.param** %pm, align 4, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %cont60.if.end73_crit_edge, %if.end47
  %16 = phi %struct.param* [ %.pre, %cont60.if.end73_crit_edge ], [ %8, %if.end47 ]
  %flags76 = getelementptr inbounds %struct.param* %16, i32 0, i32 0, i32 2
  %17 = load i32* %flags76, align 4, !tbaa !3
  %and106 = and i32 %17, 17
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  store i32 %and106, i32* %isarr, align 4, !tbaa !3
  %flags107 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  store i32 0, i32* %flags107, align 4, !tbaa !3
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4, !tbaa !3
  %call110 = call i8* @getstrvalue(%struct.value* %v)
  %18 = load i32* @numparamvals, align 4, !tbaa !3
  %19 = load i8*** @paramvals, align 4, !tbaa !0
  %arrayidx111 = getelementptr inbounds i8** %19, i32 %18
  store i8* %call110, i8** %arrayidx111, align 4, !tbaa !0
  %and116 = and i32 %flags, 16
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %if.else151, label %if.then118

if.then118:                                       ; preds = %if.end73
  %20 = load %struct.patprog** @scanprog, align 4, !tbaa !0
  %21 = load i8*** @paramvals, align 4, !tbaa !0
  %arrayidx119 = getelementptr inbounds i8** %21, i32 %18
  %22 = load i8** %arrayidx119, align 4, !tbaa !0
  %call120 = call i32 @pattry(%struct.patprog* %20, i8* %22) nounwind
  %tobool121 = icmp eq i32 %call120, 0
  br i1 %tobool121, label %cont143, label %cont126

cont126:                                          ; preds = %if.then118
  %and127 = and i32 %flags, 1
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %cont132, label %cont136

cont132:                                          ; preds = %cont126
  %and53.lobit = lshr exact i32 %and53, 1
  %lnot.ext = xor i32 %and53.lobit, 1
  br label %cont136

cont136:                                          ; preds = %cont132, %cont126
  %cond = phi i32 [ %lnot.ext, %cont132 ], [ 1, %cont126 ]
  %23 = load i32* @numparamvals, align 4, !tbaa !3
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %23, i32 %cond)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb137, label %cont138

ioc_bb137:                                        ; preds = %cont136
  %27 = zext i32 %cond to i64
  %28 = zext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 449, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %28, i64 %27, i8 5) nounwind
  br label %cont138

cont138:                                          ; preds = %cont136, %ioc_bb137
  store i32 %25, i32* @numparamvals, align 4, !tbaa !3
  br label %if.end154

cont143:                                          ; preds = %if.then118
  br i1 %tobool54, label %if.then146, label %if.end154

if.then146:                                       ; preds = %cont143
  %29 = load i32* @numparamvals, align 4, !tbaa !3
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb147, label %cont148

ioc_bb147:                                        ; preds = %if.then146
  %33 = zext i32 %29 to i64
  call void @__ioc_report_sub_overflow(i32 453, i32 7, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind
  br label %cont148

cont148:                                          ; preds = %if.then146, %ioc_bb147
  store i32 %31, i32* @numparamvals, align 4, !tbaa !3
  br label %if.end154

if.else151:                                       ; preds = %if.end73
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %18, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb152, label %cont153

ioc_bb152:                                        ; preds = %if.else151
  %37 = zext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 456, i32 5, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind
  br label %cont153

cont153:                                          ; preds = %if.else151, %ioc_bb152
  store i32 %35, i32* @numparamvals, align 4, !tbaa !3
  br label %if.end154

if.end154:                                        ; preds = %cont138, %cont148, %cont143, %cont153
  store %struct.param* null, %struct.param** @foundparam, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cont2, %lor.lhs.false, %if.then25, %land.lhs.true39, %cont60, %if.end154
  ret void
}

define void @createparamtable() nounwind {
entry:
  %s.addr.i = alloca i8*, align 4
  %vbuf.i = alloca %struct.value, align 4
  %mnval.i260 = alloca %struct.mnumber, align 8
  %mnval.i256 = alloca %struct.mnumber, align 8
  %mnval.i252 = alloca %struct.mnumber, align 8
  %mnval.i = alloca %struct.mnumber, align 8
  %buf = alloca [50 x i8], align 1
  %unamebuf = alloca %struct.utsname, align 1
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %call.i = call %struct.hashtable* @newhashtable(i32 151, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), void (%struct.hashtable*)* null) nounwind
  %hash.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i, align 4, !tbaa !0
  %emptytable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i, align 4, !tbaa !0
  %filltable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i, align 4, !tbaa !0
  %cmpnodes.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i, align 4, !tbaa !0
  %addnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %getnode2.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i, align 4, !tbaa !0
  %removenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i, align 4, !tbaa !0
  %disablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode.i, align 4, !tbaa !0
  %enablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode.i, align 4, !tbaa !0
  %freenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !0
  %printnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode.i, align 4, !tbaa !0
  store %struct.hashtable* %call.i, %struct.hashtable** @realparamtab, align 4, !tbaa !0
  store %struct.hashtable* %call.i, %struct.hashtable** @paramtab, align 4, !tbaa !0
  %1 = load i8** getelementptr inbounds (<{ { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } }>* @special_params, i32 0, i32 0, i32 0, i32 1), align 4, !tbaa !0
  %tobool286 = icmp eq i8* %1, null
  br i1 %tobool286, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi %struct.hashtable* [ %.pre, %for.body.for.body_crit_edge ], [ %call.i, %entry ]
  %3 = phi i8* [ %6, %for.body.for.body_crit_edge ], [ %1, %entry ]
  %ip.0287 = phi %struct.param* [ %incdec.ptr, %for.body.for.body_crit_edge ], [ bitcast (<{ { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } }>* @special_params to %struct.param*), %entry ]
  %addnode = getelementptr inbounds %struct.hashtable* %2, i32 0, i32 8
  %4 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %call3 = call i8* @ztrdup(i8* %3) nounwind
  %5 = bitcast %struct.param* %ip.0287 to i8*
  call void %4(%struct.hashtable* %2, i8* %call3, i8* %5) nounwind
  %incdec.ptr = getelementptr inbounds %struct.param* %ip.0287, i32 1
  %nam = getelementptr inbounds %struct.param* %ip.0287, i32 1, i32 0, i32 1
  %6 = load i8** %nam, align 4, !tbaa !0
  %tobool = icmp eq i8* %6, null
  br i1 %tobool, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  %ip.0.lcssa = phi %struct.param* [ bitcast (<{ { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }, { %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 } }>* @special_params to %struct.param*), %entry ], [ %incdec.ptr, %for.body ]
  %7 = load i32* @emulation, align 4, !tbaa !3
  %and = and i32 %7, 12
  %tobool10 = icmp eq i32 %and, 0
  br i1 %tobool10, label %while.cond.preheader, label %if.end

while.cond.preheader:                             ; preds = %for.end
  %nam13283 = getelementptr inbounds %struct.param* %ip.0.lcssa, i32 1, i32 0, i32 1
  %8 = load i8** %nam13283, align 4, !tbaa !0
  %tobool14284 = icmp eq i8* %8, null
  br i1 %tobool14284, label %if.end, label %while.body

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %9 = phi i8* [ %8, %while.cond.preheader ], [ %13, %while.body ]
  %ip.0.lcssa.pn = phi %struct.param* [ %ip.0.lcssa, %while.cond.preheader ], [ %incdec.ptr11285, %while.body ]
  %incdec.ptr11285 = getelementptr inbounds %struct.param* %ip.0.lcssa.pn, i32 1
  %10 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %addnode15 = getelementptr inbounds %struct.hashtable* %10, i32 0, i32 8
  %11 = load void (%struct.hashtable*, i8*, i8*)** %addnode15, align 4, !tbaa !0
  %call18 = call i8* @ztrdup(i8* %9) nounwind
  %12 = bitcast %struct.param* %incdec.ptr11285 to i8*
  call void %11(%struct.hashtable* %10, i8* %call18, i8* %12) nounwind
  %nam13 = getelementptr inbounds %struct.param* %ip.0.lcssa.pn, i32 2, i32 0, i32 1
  %13 = load i8** %nam13, align 4, !tbaa !0
  %tobool14 = icmp eq i8* %13, null
  br i1 %tobool14, label %if.end, label %while.body

if.end:                                           ; preds = %while.cond.preheader, %while.body, %for.end
  store %struct.param* bitcast ({ %struct.hashnode, { i8*, [4 x i8] }, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }* @argvparam_pm to %struct.param*), %struct.param** @argvparam, align 4, !tbaa !0
  store i32 2, i32* @noerrs, align 4, !tbaa !3
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %14 = bitcast %struct.mnumber* %mnval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) nounwind
  %type.i = getelementptr inbounds %struct.mnumber* %mnval.i, i32 0, i32 1
  store i32 1, i32* %type.i, align 8, !tbaa !3
  %l.i = getelementptr inbounds %struct.mnumber* %mnval.i, i32 0, i32 0, i32 0
  store i64 60, i64* %l.i, align 8, !tbaa !4
  %call.i251 = call %struct.param* @setnparam(i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), %struct.mnumber* byval align 4 %mnval.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %14) nounwind
  %15 = bitcast %struct.mnumber* %mnval.i252 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) nounwind
  %type.i253 = getelementptr inbounds %struct.mnumber* %mnval.i252, i32 0, i32 1
  store i32 1, i32* %type.i253, align 8, !tbaa !3
  %l.i254 = getelementptr inbounds %struct.mnumber* %mnval.i252, i32 0, i32 0, i32 0
  store i64 60, i64* %l.i254, align 8, !tbaa !4
  %call.i255 = call %struct.param* @setnparam(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), %struct.mnumber* byval align 4 %mnval.i252) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %15) nounwind
  %16 = bitcast %struct.mnumber* %mnval.i256 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) nounwind
  %type.i257 = getelementptr inbounds %struct.mnumber* %mnval.i256, i32 0, i32 1
  store i32 1, i32* %type.i257, align 8, !tbaa !3
  %l.i258 = getelementptr inbounds %struct.mnumber* %mnval.i256, i32 0, i32 0, i32 0
  store i64 40, i64* %l.i258, align 8, !tbaa !4
  %call.i259 = call %struct.param* @setnparam(i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), %struct.mnumber* byval align 4 %mnval.i256) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %16) nounwind
  %17 = bitcast %struct.mnumber* %mnval.i260 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) nounwind
  %type.i261 = getelementptr inbounds %struct.mnumber* %mnval.i260, i32 0, i32 1
  store i32 1, i32* %type.i261, align 8, !tbaa !3
  %l.i262 = getelementptr inbounds %struct.mnumber* %mnval.i260, i32 0, i32 0, i32 0
  store i64 100, i64* %l.i262, align 8, !tbaa !4
  %call.i263 = call %struct.param* @setnparam(i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), %struct.mnumber* byval align 4 %mnval.i260) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %17) nounwind
  %call25 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call26 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0), i8* %call25, i32 0)
  %call27 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([39 x i8]* @.str9, i32 0, i32 0)) nounwind
  %call28 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0), i8* %call27, i32 0)
  %18 = load i8** @default_watchfmt, align 4, !tbaa !0
  %call29 = call i8* @ztrdup_metafy(i8* %18) nounwind
  %call30 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0), i8* %call29, i32 0)
  %call33 = call i8* @zalloc(i32 256) nounwind
  %call36 = call i32 @gethostname(i8* %call33, i32 256) nounwind
  %call37 = call i8* @ztrdup_metafy(i8* %call33) nounwind
  %call38 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i8* %call37, i32 0)
  call void @zfree(i8* %call33, i32 256) nounwind
  %call39 = call i8* @getlogin() nounwind
  %tobool40 = icmp eq i8* %call39, null
  br i1 %tobool40, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %19 = load i8* %call39, align 1, !tbaa !1
  %tobool42 = icmp eq i8 %19, 0
  br i1 %tobool42, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %20 = load i8** @cached_username, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ %20, %cond.false ], [ %call39, %land.lhs.true ]
  %call43 = call i8* @ztrdup_metafy(i8* %cond) nounwind
  %call44 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i8* %call43, i32 0)
  call void @pushheap() nounwind
  %21 = load i8*** @environ, align 4, !tbaa !0
  %22 = load i8** %21, align 4, !tbaa !0
  %tobool46279 = icmp eq i8* %22, null
  br i1 %tobool46279, label %for.end127, label %if.end.i.lr.ph

if.end.i.lr.ph:                                   ; preds = %cond.end
  %23 = bitcast i8** %s.addr.i to i8*
  %24 = bitcast %struct.value* %vbuf.i to i8*
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.lr.ph, %for.inc125
  %25 = phi i8* [ %22, %if.end.i.lr.ph ], [ %44, %for.inc125 ]
  %envp2.0280 = phi i8** [ %21, %if.end.i.lr.ph ], [ %incdec.ptr126, %for.inc125 ]
  %call.i264 = call i32 @strlen(i8* %25) nounwind readonly
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call.i264, i32 1) nounwind
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb4.i, label %cont5.i

ioc_bb4.i:                                        ; preds = %if.end.i
  %29 = zext i32 %call.i264 to i64
  call void @__ioc_report_add_overflow(i32 507, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind
  br label %cont5.i

cont5.i:                                          ; preds = %ioc_bb4.i, %if.end.i
  %call6.i = call i8* @zhalloc(i32 %27) nounwind
  %call7.i = call i8* @strcpy(i8* %call6.i, i8* %25) nounwind
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %cont5.i
  %str.0.i = phi i8* [ %call7.i, %cont5.i ], [ %incdec.ptr.i, %for.inc.i ]
  %30 = load i8* %str.0.i, align 1, !tbaa !1
  switch i8 %30, label %for.inc.i [
    i8 0, label %for.end.i
    i8 61, label %for.end.i
  ]

for.inc.i:                                        ; preds = %for.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %str.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i, %for.cond.i
  %cmp11.i = icmp ne i8* %str.0.i, %call7.i
  %cmp14.i = icmp eq i8 %30, 61
  %or.cond32.i = and i1 %cmp11.i, %cmp14.i
  br i1 %or.cond32.i, label %if.then50, label %for.inc125

if.then50:                                        ; preds = %for.end.i
  store i8 0, i8* %str.0.i, align 1, !tbaa !1
  %add.ptr.i = getelementptr inbounds i8* %str.0.i, i32 1
  %31 = load i8* %call7.i, align 1, !tbaa !1
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %cont52, label %ioc_bb51

ioc_bb51:                                         ; preds = %if.then50
  %33 = sext i8 %31 to i64
  call void @__ioc_report_conversion(i32 595, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont52

cont52:                                           ; preds = %ioc_bb51, %if.then50
  %idxprom = zext i8 %31 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %34 = load i16* %arrayidx, align 2, !tbaa !6
  %and58 = and i16 %34, 1
  %tobool59 = icmp eq i16 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %for.inc125

land.lhs.true60:                                  ; preds = %cont52
  %call61 = call i32 @isident(i8* %call7.i)
  %tobool62 = icmp eq i32 %call61, 0
  br i1 %tobool62, label %for.inc125, label %cond.false67

cond.false67:                                     ; preds = %land.lhs.true60
  %call68 = call i8* @strchr(i8* %call7.i, i32 91) nounwind
  %tobool69 = icmp eq i8* %call68, null
  br i1 %tobool69, label %if.then70, label %for.inc125

if.then70:                                        ; preds = %cond.false67
  %35 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %35, i32 0, i32 9
  %36 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call71 = call %struct.hashnode* %36(%struct.hashtable* %35, i8* %call7.i) nounwind
  %tobool72 = icmp eq %struct.hashnode* %call71, null
  br i1 %tobool72, label %land.lhs.true89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then70
  %flags = getelementptr inbounds %struct.hashnode* %call71, i32 0, i32 2
  %37 = load i32* %flags, align 4, !tbaa !3
  %38 = and i32 %37, 8392704
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %land.lhs.true89, label %for.inc125

land.lhs.true89:                                  ; preds = %lor.lhs.false, %if.then70
  %call92 = call i8* @metafy(i8* %add.ptr.i, i32 -1, i32 3) nounwind
  %call93 = call %struct.param* @assignsparam(i8* %call7.i, i8* %call92, i32 0)
  %tobool94 = icmp eq %struct.param* %call93, null
  br i1 %tobool94, label %for.inc125, label %cont99

cont99:                                           ; preds = %land.lhs.true89
  %flags101 = getelementptr inbounds %struct.param* %call93, i32 0, i32 0, i32 2
  %40 = load i32* %flags101, align 4, !tbaa !3
  %or = or i32 %40, 4096
  store i32 %or, i32* %flags101, align 4, !tbaa !3
  %and108 = and i32 %40, 4194304
  %tobool109 = icmp eq i32 %and108, 0
  br i1 %tobool109, label %if.else, label %if.then110

if.then110:                                       ; preds = %cont99
  %nam112 = getelementptr inbounds %struct.param* %call93, i32 0, i32 0, i32 1
  %41 = load i8** %nam112, align 4, !tbaa !0
  call void @llvm.lifetime.start(i64 -1, i8* %23) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %24) nounwind
  store i8* %41, i8** %s.addr.i, align 4, !tbaa !0
  %call.i.i = call %struct.value* @fetchvalue(%struct.value* %vbuf.i, i8** %s.addr.i, i32 0, i32 0) nounwind
  %tobool.i265 = icmp eq %struct.value* %call.i.i, null
  br i1 %tobool.i265, label %getsparam.exit, label %if.end.i266

if.end.i266:                                      ; preds = %if.then110
  %call1.i = call i8* @getstrvalue(%struct.value* %call.i.i) nounwind
  br label %getsparam.exit

getsparam.exit:                                   ; preds = %if.then110, %if.end.i266
  %retval.0.i267 = phi i8* [ %call1.i, %if.end.i266 ], [ null, %if.then110 ]
  call void @llvm.lifetime.end(i64 -1, i8* %23) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %24) nounwind
  %42 = load i32* %flags101, align 4, !tbaa !3
  %call118 = call fastcc i8* @mkenvstr(i8* %41, i8* %retval.0.i267, i32 %42)
  %env = getelementptr inbounds %struct.param* %call93, i32 0, i32 5
  store i8* %call118, i8** %env, align 4, !tbaa !0
  br label %for.inc125

if.else:                                          ; preds = %cont99
  %43 = load i8** %envp2.0280, align 4, !tbaa !0
  %call119 = call i8* @ztrdup(i8* %43) nounwind
  %env120 = getelementptr inbounds %struct.param* %call93, i32 0, i32 5
  store i8* %call119, i8** %env120, align 4, !tbaa !0
  br label %for.inc125

for.inc125:                                       ; preds = %for.end.i, %lor.lhs.false, %land.lhs.true89, %cond.false67, %land.lhs.true60, %cont52, %if.else, %getsparam.exit
  %incdec.ptr126 = getelementptr inbounds i8** %envp2.0280, i32 1
  %44 = load i8** %incdec.ptr126, align 4, !tbaa !0
  %tobool46 = icmp eq i8* %44, null
  br i1 %tobool46, label %for.end127, label %if.end.i

for.end127:                                       ; preds = %for.inc125, %cond.end
  call void @popheap() nounwind
  store i8 %0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %45 = load i32* @emulation, align 4, !tbaa !3
  %and136 = and i32 %45, 16
  %tobool137 = icmp eq i32 %and136, 0
  br i1 %tobool137, label %if.end158, label %if.then138

if.then138:                                       ; preds = %for.end127
  %46 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode139 = getelementptr inbounds %struct.hashtable* %46, i32 0, i32 9
  %47 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode139, align 4, !tbaa !0
  %call140 = call %struct.hashnode* %47(%struct.hashtable* %46, i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0)) nounwind
  %flags146 = getelementptr inbounds %struct.hashnode* %call140, i32 0, i32 2
  %48 = load i32* %flags146, align 4, !tbaa !3
  %and147 = and i32 %48, -33554433
  store i32 %and147, i32* %flags146, align 4, !tbaa !3
  %and154 = and i32 %48, 4096
  %tobool155 = icmp eq i32 %and154, 0
  br i1 %tobool155, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.then138
  %49 = bitcast %struct.hashnode* %call140 to %struct.param*
  %50 = load i8** @home, align 4, !tbaa !0
  call void @addenv(%struct.param* %49, i8* %50)
  br label %if.end158

if.end158:                                        ; preds = %if.then138, %for.end127, %if.then156
  %51 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode159 = getelementptr inbounds %struct.hashtable* %51, i32 0, i32 9
  %52 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode159, align 4, !tbaa !0
  %call160 = call %struct.hashnode* %52(%struct.hashtable* %51, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0)) nounwind
  %flags162 = getelementptr inbounds %struct.hashnode* %call160, i32 0, i32 2
  %53 = load i32* %flags162, align 4, !tbaa !3
  %and167 = and i32 %53, 4096
  %tobool168 = icmp eq i32 %and167, 0
  br i1 %tobool168, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.end158
  %54 = bitcast %struct.hashnode* %call160 to %struct.param*
  %u = getelementptr inbounds %struct.hashnode* %call160, i32 1
  %str170 = bitcast %struct.hashnode* %u to i8**
  %55 = load i8** %str170, align 4, !tbaa !0
  call void @addenv(%struct.param* %54, i8* %55)
  br label %if.end171

if.end171:                                        ; preds = %if.end158, %if.then169
  %56 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode172 = getelementptr inbounds %struct.hashtable* %56, i32 0, i32 9
  %57 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode172, align 4, !tbaa !0
  %call173 = call %struct.hashnode* %57(%struct.hashtable* %56, i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0)) nounwind
  %58 = bitcast %struct.hashnode* %call173 to %struct.param*
  %arraydecay = getelementptr inbounds [50 x i8]* %buf, i32 0, i32 0
  %59 = load i64* @shlvl, align 8, !tbaa !4
  %60 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %59, i64 1)
  %61 = extractvalue { i64, i1 } %60, 0
  %62 = extractvalue { i64, i1 } %60, 1
  br i1 %62, label %ioc_bb174, label %cont175

ioc_bb174:                                        ; preds = %if.end171
  call void @__ioc_report_add_overflow(i32 626, i32 28, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %59, i64 1, i8 14) nounwind
  br label %cont175

cont175:                                          ; preds = %if.end171, %ioc_bb174
  store i64 %61, i64* @shlvl, align 8, !tbaa !4
  %.off = add i64 %61, 2147483648
  %63 = icmp ult i64 %.off, 4294967296
  br i1 %63, label %cont179, label %ioc_bb178

ioc_bb178:                                        ; preds = %cont175
  call void @__ioc_report_conversion(i32 626, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %61, i8 1) nounwind
  br label %cont179

cont179:                                          ; preds = %ioc_bb178, %cont175
  %conv180 = trunc i64 %61 to i32
  %call181 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 %conv180) nounwind
  call void @addenv(%struct.param* %58, i8* %arraydecay)
  call void @set_pwd_env() nounwind
  %call183 = call i32 @uname(%struct.utsname* %unamebuf) nounwind
  %tobool184 = icmp eq i32 %call183, 0
  br i1 %tobool184, label %if.else188, label %if.then185

if.then185:                                       ; preds = %cont179
  %call186 = call i8* @ztrdup(i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0)) nounwind
  %call187 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([8 x i8]* @.str16, i32 0, i32 0), i8* %call186, i32 0)
  br label %if.end192

if.else188:                                       ; preds = %cont179
  %arraydecay189 = getelementptr inbounds %struct.utsname* %unamebuf, i32 0, i32 4, i32 0
  %call190 = call i8* @ztrdup_metafy(i8* %arraydecay189) nounwind
  %call191 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([8 x i8]* @.str16, i32 0, i32 0), i8* %call190, i32 0)
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then185
  %call193 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0)) nounwind
  %call194 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([9 x i8]* @.str18, i32 0, i32 0), i8* %call193, i32 0)
  %call195 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0)) nounwind
  %call196 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), i8* %call195, i32 0)
  %64 = load i8** @ttystrname, align 4, !tbaa !0
  %call197 = call i8* @ztrdup_metafy(i8* %64) nounwind
  %call198 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* %call197, i32 0)
  %call199 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0)) nounwind
  %call200 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i8* %call199, i32 0)
  %65 = load i8** @zsh_name, align 4, !tbaa !0
  %call201 = call i8* @ztrdup_metafy(i8* %65) nounwind
  %call202 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0), i8* %call201, i32 0)
  %call203 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0)) nounwind
  %call204 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([12 x i8]* @.str26, i32 0, i32 0), i8* %call203, i32 0)
  %call205 = call i8* @ztrdup_metafy(i8* getelementptr inbounds ([7 x i8]* @.str29, i32 0, i32 0)) nounwind
  %call206 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0), i8* %call205, i32 0)
  %call214 = call i8* @zalloc(i32 140) nounwind
  %66 = bitcast i8* %call214 to i8**
  %call215 = call %struct.param* @assignaparam(i8* getelementptr inbounds ([8 x i8]* @.str30, i32 0, i32 0), i8** %66, i32 0)
  br label %for.cond216

for.cond216:                                      ; preds = %for.cond216, %if.end192
  %t.0 = phi i8** [ getelementptr inbounds ([35 x i8*]* @sigs, i32 0, i32 0), %if.end192 ], [ %incdec.ptr217, %for.cond216 ]
  %sigptr.0 = phi i8** [ %66, %if.end192 ], [ %incdec.ptr219, %for.cond216 ]
  %incdec.ptr217 = getelementptr inbounds i8** %t.0, i32 1
  %67 = load i8** %t.0, align 4, !tbaa !0
  %call218 = call i8* @ztrdup_metafy(i8* %67) nounwind
  %incdec.ptr219 = getelementptr inbounds i8** %sigptr.0, i32 1
  store i8* %call218, i8** %sigptr.0, align 4, !tbaa !0
  %tobool220 = icmp eq i8* %call218, null
  br i1 %tobool220, label %for.end222, label %for.cond216

for.end222:                                       ; preds = %for.cond216
  store i32 0, i32* @noerrs, align 4, !tbaa !3
  ret void
}

declare i8* @ztrdup(i8*)

define %struct.param* @setiparam(i8* %s, i64 %val) nounwind {
entry:
  %mnval = alloca %struct.mnumber, align 8
  %type = getelementptr inbounds %struct.mnumber* %mnval, i32 0, i32 1
  store i32 1, i32* %type, align 8, !tbaa !3
  %l = getelementptr inbounds %struct.mnumber* %mnval, i32 0, i32 0, i32 0
  store i64 %val, i64* %l, align 8, !tbaa !4
  %call = call %struct.param* @setnparam(i8* %s, %struct.mnumber* byval align 4 %mnval)
  ret %struct.param* %call
}

define %struct.param* @assignsparam(i8* %s, i8* %val, i32 %flags) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %t = alloca i8*, align 4
  %lhs = alloca %struct.mnumber, align 8
  %oset = alloca %struct.__sigset_t, align 4
  %tmp107 = alloca %struct.__sigset_t, align 4
  %tmp166 = alloca %struct.mnumber, align 8
  %oset221 = alloca %struct.__sigset_t, align 4
  %tmp232 = alloca %struct.__sigset_t, align 4
  %oset322 = alloca %struct.__sigset_t, align 4
  %tmp333 = alloca %struct.__sigset_t, align 4
  %oset374 = alloca %struct.__sigset_t, align 4
  %tmp385 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  store i8* %s, i8** %t, align 4, !tbaa !0
  %call = call i32 @isident(i8* %s)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str40, i32 0, i32 0), i8* %s) nounwind
  call void @zsfree(i8* %val) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 2498, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  %call1 = call i8* @strchr(i8* %s, i32 91) nounwind
  %tobool2 = icmp eq i8* %call1, null
  br i1 %tobool2, label %if.else34, label %cont5

cont5:                                            ; preds = %cont
  store i8 0, i8* %call1, align 1, !tbaa !1
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool7 = icmp eq %struct.value* %call.i, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %cont5
  %call13 = call %struct.param* @createparam(i8* %s, i32 1)
  br label %cont33

if.else:                                          ; preds = %cont5
  %pm = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %5 = load %struct.param** %pm, align 4, !tbaa !0
  %flags14 = getelementptr inbounds %struct.param* %5, i32 0, i32 0, i32 2
  %6 = load i32* %flags14, align 4, !tbaa !3
  %and = and i32 %6, 1024
  %tobool19 = icmp eq i32 %and, 0
  br i1 %tobool19, label %cont29, label %if.then20

if.then20:                                        ; preds = %if.else
  %nam = getelementptr inbounds %struct.param* %5, i32 0, i32 0, i32 1
  %7 = load i8** %nam, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str35, i32 0, i32 0), i8* %7) nounwind
  store i8 91, i8* %call1, align 1, !tbaa !1
  call void @zsfree(i8* %val) nounwind
  br label %return

cont29:                                           ; preds = %if.else
  %and30 = and i32 %flags, -3
  br label %cont33

cont33:                                           ; preds = %if.then8, %cont29
  %flags.addr.0 = phi i32 [ %and30, %cont29 ], [ %flags, %if.then8 ]
  store i8 91, i8* %call1, align 1, !tbaa !1
  br label %land.lhs.true92

if.else34:                                        ; preds = %cont
  %call.i449 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool36 = icmp eq %struct.value* %call.i449, null
  br i1 %tobool36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else34
  %call38 = call %struct.param* @createparam(i8* %s, i32 0)
  br label %land.lhs.true92

if.else39:                                        ; preds = %if.else34
  %pm40 = getelementptr inbounds %struct.value* %call.i449, i32 0, i32 1
  %8 = load %struct.param** %pm40, align 4, !tbaa !0
  %flags42 = getelementptr inbounds %struct.param* %8, i32 0, i32 0, i32 2
  %9 = load i32* %flags42, align 4, !tbaa !3
  %and47 = and i32 %9, 1
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %lor.lhs.false, label %cont52

cont52:                                           ; preds = %if.else39
  %and53 = and i32 %flags, 1
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %land.lhs.true64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont52, %if.else39
  %and62 = and i32 %9, 16
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %if.end90, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %cont52, %lor.lhs.false
  %and76 = and i32 %9, 4259840
  %tobool77 = icmp ne i32 %and76, 0
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool79 = icmp ne i8 %10, 0
  %or.cond = or i1 %tobool77, %tobool79
  br i1 %or.cond, label %if.end90, label %if.then80

if.then80:                                        ; preds = %land.lhs.true64
  call void @unsetparam(i8* %s)
  %call81 = call %struct.param* @createparam(i8* %s, i32 0)
  br label %land.lhs.true92

if.end90:                                         ; preds = %land.lhs.true64, %lor.lhs.false
  %and87 = and i32 %flags, -3
  br label %cont114

land.lhs.true92:                                  ; preds = %if.then37, %if.then80, %cont33
  %flags.addr.1453 = phi i32 [ %flags.addr.0, %cont33 ], [ %flags, %if.then80 ], [ %flags, %if.then37 ]
  %call.i450 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 0) nounwind
  %tobool94 = icmp eq %struct.value* %call.i450, null
  br i1 %tobool94, label %do.body, label %cont114

do.body:                                          ; preds = %land.lhs.true92
  %11 = load i32* @queueing_enabled, align 4, !tbaa !3
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb96, label %cont97

ioc_bb96:                                         ; preds = %do.body
  %15 = sext i32 %11 to i64
  call void @__ioc_report_add_overflow(i32 2529, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont97

cont97:                                           ; preds = %do.body, %ioc_bb96
  store i32 %13, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool98 = icmp eq i32 %13, 0
  br i1 %tobool98, label %while.cond.preheader, label %do.end109

while.cond.preheader:                             ; preds = %cont97
  %16 = load i32* @queue_front, align 4, !tbaa !3
  %17 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp454 = icmp eq i32 %16, %17
  br i1 %cmp454, label %do.end109, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont105
  %18 = phi i32 [ %25, %cont105 ], [ %16, %while.cond.preheader ]
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb101, label %cont105

ioc_bb101:                                        ; preds = %while.body
  %22 = sext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 2533, i32 40, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %22, i64 1, i8 13) nounwind
  br label %cont105

cont105:                                          ; preds = %ioc_bb101, %while.body
  %rem = srem i32 %20, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %23 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx106 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %23
  %24 = load i32* %arrayidx106, align 4, !tbaa !3
  call void @zhandler(i32 %24) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp107, %struct.__sigset_t* byval align 4 %oset) nounwind
  %25 = load i32* @queue_front, align 4, !tbaa !3
  %26 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %25, %26
  br i1 %cmp, label %do.end109, label %while.body

do.end109:                                        ; preds = %while.cond.preheader, %cont105, %cont97
  call void @zsfree(i8* %val) nounwind
  br label %return

cont114:                                          ; preds = %if.end90, %land.lhs.true92
  %flags.addr.1452 = phi i32 [ %and87, %if.end90 ], [ %flags.addr.1453, %land.lhs.true92 ]
  %v.1 = phi %struct.value* [ %call.i449, %if.end90 ], [ %call.i450, %land.lhs.true92 ]
  %and115 = and i32 %flags.addr.1452, 2
  %tobool116 = icmp eq i32 %and115, 0
  br i1 %tobool116, label %cont128, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %cont114
  %pm118 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %27 = load %struct.param** %pm118, align 4, !tbaa !0
  %level = getelementptr inbounds %struct.param* %27, i32 0, i32 8
  %28 = load i32* %level, align 4, !tbaa !3
  %cmp119 = icmp eq i32 %28, 0
  br i1 %cmp119, label %if.then120, label %cont128

if.then120:                                       ; preds = %land.lhs.true117
  %nam123 = getelementptr inbounds %struct.param* %27, i32 0, i32 0, i32 1
  %29 = load i8** %nam123, align 4, !tbaa !0
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([49 x i8]* @.str41, i32 0, i32 0), i8* %29) nounwind
  br label %cont128

cont128:                                          ; preds = %cont114, %if.then120, %land.lhs.true117
  %and129 = and i32 %flags.addr.1452, 1
  %tobool130 = icmp eq i32 %and129, 0
  br i1 %tobool130, label %if.end362, label %if.then131

if.then131:                                       ; preds = %cont128
  %start = getelementptr inbounds %struct.value* %v.1, i32 0, i32 3
  %30 = load i32* %start, align 4, !tbaa !3
  %cmp132 = icmp eq i32 %30, 0
  br i1 %cmp132, label %land.lhs.true133, label %if.else253

land.lhs.true133:                                 ; preds = %if.then131
  %end = getelementptr inbounds %struct.value* %v.1, i32 0, i32 4
  %31 = load i32* %end, align 4, !tbaa !3
  %cmp136 = icmp eq i32 %31, -1
  br i1 %cmp136, label %if.then137, label %if.else253

if.then137:                                       ; preds = %land.lhs.true133
  %pm138 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %32 = load %struct.param** %pm138, align 4, !tbaa !0
  %flags140 = getelementptr inbounds %struct.param* %32, i32 0, i32 0, i32 2
  %33 = load i32* %flags140, align 4, !tbaa !3
  %and161 = and i32 %33, 31
  switch i32 %and161, label %if.end362 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb165
    i32 4, label %sw.bb165
    i32 8, label %sw.bb165
    i32 1, label %sw.bb238
  ]

sw.bb:                                            ; preds = %if.then137
  store i32 2147483647, i32* %start, align 4, !tbaa !3
  br label %if.end362

sw.bb165:                                         ; preds = %if.then137, %if.then137, %if.then137
  call void @matheval(%struct.mnumber* sret %tmp166, i8* %val) nounwind
  %rhs.sroa.0.0..idx = getelementptr inbounds %struct.mnumber* %tmp166, i32 0, i32 0, i32 0
  %rhs.sroa.0.0.copyload = load i64* %rhs.sroa.0.0..idx, align 8
  %rhs.sroa.1.8..idx394 = getelementptr inbounds %struct.mnumber* %tmp166, i32 0, i32 1
  %rhs.sroa.1.8.copyload = load i32* %rhs.sroa.1.8..idx394, align 8
  call void @getnumvalue(%struct.mnumber* sret %lhs, %struct.value* %v.1)
  %type = getelementptr inbounds %struct.mnumber* %lhs, i32 0, i32 1
  %34 = load i32* %type, align 8, !tbaa !3
  %cmp168 = icmp eq i32 %34, 2
  br i1 %cmp168, label %if.then169, label %if.else185

if.then169:                                       ; preds = %sw.bb165
  %cmp171 = icmp eq i32 %rhs.sroa.1.8.copyload, 2
  %d = bitcast %struct.mnumber* %lhs to double*
  %35 = load double* %d, align 8, !tbaa !5
  br i1 %cmp171, label %if.then172, label %if.else177

if.then172:                                       ; preds = %if.then169
  %36 = bitcast i64 %rhs.sroa.0.0.copyload to double
  %add = fadd double %36, %35
  store double %add, double* %d, align 8, !tbaa !5
  br label %if.end209

if.else177:                                       ; preds = %if.then169
  %conv = sitofp i64 %rhs.sroa.0.0.copyload to double
  %add181 = fadd double %conv, %35
  store double %add181, double* %d, align 8, !tbaa !5
  br label %if.end209

if.else185:                                       ; preds = %sw.bb165
  %cmp187 = icmp eq i32 %rhs.sroa.1.8.copyload, 1
  %l191 = getelementptr inbounds %struct.mnumber* %lhs, i32 0, i32 0, i32 0
  %37 = load i64* %l191, align 8, !tbaa !4
  br i1 %cmp187, label %if.then189, label %if.else198

if.then189:                                       ; preds = %if.else185
  %38 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %rhs.sroa.0.0.copyload)
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %ioc_bb194, label %cont195

ioc_bb194:                                        ; preds = %if.then189
  call void @__ioc_report_add_overflow(i32 2572, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %37, i64 %rhs.sroa.0.0.copyload, i8 14) nounwind
  br label %cont195

cont195:                                          ; preds = %if.then189, %ioc_bb194
  store i64 %39, i64* %l191, align 8, !tbaa !4
  br label %if.end209

if.else198:                                       ; preds = %if.else185
  %41 = bitcast i64 %rhs.sroa.0.0.copyload to double
  %conv203 = fptosi double %41 to i64
  %42 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %37, i64 %conv203)
  %43 = extractvalue { i64, i1 } %42, 0
  %44 = extractvalue { i64, i1 } %42, 1
  br i1 %44, label %ioc_bb204, label %cont205

ioc_bb204:                                        ; preds = %if.else198
  call void @__ioc_report_add_overflow(i32 2574, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %37, i64 %conv203, i8 14) nounwind
  br label %cont205

cont205:                                          ; preds = %if.else198, %ioc_bb204
  store i64 %43, i64* %l191, align 8, !tbaa !4
  br label %if.end209

if.end209:                                        ; preds = %cont195, %cont205, %if.then172, %if.else177
  call void @setnumvalue(%struct.value* %v.1, %struct.mnumber* byval align 4 %lhs)
  %45 = load i32* @queueing_enabled, align 4, !tbaa !3
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb211, label %cont212

ioc_bb211:                                        ; preds = %if.end209
  %49 = sext i32 %45 to i64
  call void @__ioc_report_add_overflow(i32 2579, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %49, i64 -1, i8 13) nounwind
  br label %cont212

cont212:                                          ; preds = %if.end209, %ioc_bb211
  store i32 %47, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool213 = icmp eq i32 %47, 0
  br i1 %tobool213, label %while.cond216.preheader, label %do.end236

while.cond216.preheader:                          ; preds = %cont212
  %50 = load i32* @queue_front, align 4, !tbaa !3
  %51 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp217456 = icmp eq i32 %50, %51
  br i1 %cmp217456, label %do.end236, label %while.body219

while.body219:                                    ; preds = %while.cond216.preheader, %cont227
  %52 = phi i32 [ %59, %cont227 ], [ %50, %while.cond216.preheader ]
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %52, i32 1)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb222, label %cont227

ioc_bb222:                                        ; preds = %while.body219
  %56 = sext i32 %52 to i64
  call void @__ioc_report_add_overflow(i32 2583, i32 46, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %56, i64 1, i8 13) nounwind
  br label %cont227

cont227:                                          ; preds = %ioc_bb222, %while.body219
  %rem228 = srem i32 %54, 128
  store i32 %rem228, i32* @queue_front, align 4, !tbaa !3
  %arrayidx229 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem228
  call void @signal_setmask(%struct.__sigset_t* sret %oset221, %struct.__sigset_t* byval align 4 %arrayidx229) nounwind
  %57 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx231 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %57
  %58 = load i32* %arrayidx231, align 4, !tbaa !3
  call void @zhandler(i32 %58) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp232, %struct.__sigset_t* byval align 4 %oset221) nounwind
  %59 = load i32* @queue_front, align 4, !tbaa !3
  %60 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp217 = icmp eq i32 %59, %60
  br i1 %cmp217, label %do.end236, label %while.body219

do.end236:                                        ; preds = %while.cond216.preheader, %cont227, %cont212
  call void @zsfree(i8* %val) nounwind
  %61 = load %struct.param** %pm138, align 4, !tbaa !0
  br label %return

sw.bb238:                                         ; preds = %if.then137
  %62 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool239 = icmp eq i8 %62, 0
  br i1 %tobool239, label %if.then240, label %kshappend.thread

if.then240:                                       ; preds = %sw.bb238
  %gsu = getelementptr inbounds %struct.param* %32, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %63 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_array* %63, i32 0, i32 0
  %64 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !0
  %call243 = call i8** %64(%struct.param* %32) nounwind
  %call244 = call i32 @arrlen(i8** %call243) nounwind
  store i32 %call244, i32* %start, align 4, !tbaa !3
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call244, i32 1)
  %66 = extractvalue { i32, i1 } %65, 0
  %67 = extractvalue { i32, i1 } %65, 1
  br i1 %67, label %ioc_bb247, label %cont248

ioc_bb247:                                        ; preds = %if.then240
  %68 = sext i32 %call244 to i64
  call void @__ioc_report_add_overflow(i32 2598, i32 35, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %68, i64 1, i8 13) nounwind
  br label %cont248

cont248:                                          ; preds = %if.then240, %ioc_bb247
  store i32 %66, i32* %end, align 4, !tbaa !3
  br label %if.end362

kshappend.thread:                                 ; preds = %sw.bb238
  store i32 1, i32* %end, align 4, !tbaa !3
  br label %cond.true

if.else253:                                       ; preds = %land.lhs.true133, %if.then131
  %pm254 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %69 = load %struct.param** %pm254, align 4, !tbaa !0
  %flags256 = getelementptr inbounds %struct.param* %69, i32 0, i32 0, i32 2
  %70 = load i32* %flags256, align 4, !tbaa !3
  %and277 = and i32 %70, 31
  switch i32 %and277, label %if.end362 [
    i32 0, label %sw.bb278
    i32 2, label %do.body311
    i32 4, label %do.body311
    i32 8, label %do.body311
    i32 1, label %kshappend
  ]

sw.bb278:                                         ; preds = %if.else253
  %end279 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 4
  %71 = load i32* %end279, align 4, !tbaa !3
  %cmp280 = icmp sgt i32 %71, 0
  br i1 %cmp280, label %if.then282, label %if.else285

if.then282:                                       ; preds = %sw.bb278
  store i32 %71, i32* %start, align 4, !tbaa !3
  br label %if.end362

if.else285:                                       ; preds = %sw.bb278
  %s288 = getelementptr inbounds %struct.param* %69, i32 0, i32 2, i32 0
  %72 = load %struct.gsu_scalar** %s288, align 4, !tbaa !0
  %getfn290 = bitcast %struct.gsu_scalar* %72 to i8* (%struct.param*)**
  %73 = load i8* (%struct.param*)** %getfn290, align 4, !tbaa !0
  %call292 = call i8* %73(%struct.param* %69) nounwind
  %call293 = call i32 @strlen(i8* %call292) nounwind readonly
  %74 = load i32* %end279, align 4, !tbaa !3
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %cont296, label %ioc_bb295

ioc_bb295:                                        ; preds = %if.else285
  %76 = sext i32 %74 to i64
  call void @__ioc_report_conversion(i32 2616, i32 87, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %76, i8 1) nounwind
  br label %cont296

cont296:                                          ; preds = %ioc_bb295, %if.else285
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call293, i32 %74)
  %78 = extractvalue { i32, i1 } %77, 0
  %79 = extractvalue { i32, i1 } %77, 1
  br i1 %79, label %ioc_bb297, label %cont300

ioc_bb297:                                        ; preds = %cont296
  %80 = zext i32 %74 to i64
  %81 = zext i32 %call293 to i64
  call void @__ioc_report_add_overflow(i32 2616, i32 85, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %81, i64 %80, i8 5) nounwind
  br label %cont300

cont300:                                          ; preds = %ioc_bb297, %cont296
  %82 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %78, i32 1)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb301, label %cont302

ioc_bb301:                                        ; preds = %cont300
  %85 = zext i32 %78 to i64
  call void @__ioc_report_add_overflow(i32 2616, i32 98, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %85, i64 1, i8 5) nounwind
  br label %cont302

cont302:                                          ; preds = %cont300, %ioc_bb301
  %86 = icmp sgt i32 %83, -1
  br i1 %86, label %cont304, label %ioc_bb303

ioc_bb303:                                        ; preds = %cont302
  %87 = zext i32 %83 to i64
  call void @__ioc_report_conversion(i32 2616, i32 37, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %87, i8 0) nounwind
  br label %cont304

cont304:                                          ; preds = %ioc_bb303, %cont302
  store i32 %83, i32* %end279, align 4, !tbaa !3
  store i32 %83, i32* %start, align 4, !tbaa !3
  br label %if.end362

do.body311:                                       ; preds = %if.else253, %if.else253, %if.else253
  %88 = load i32* @queueing_enabled, align 4, !tbaa !3
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %88, i32 -1)
  %90 = extractvalue { i32, i1 } %89, 0
  %91 = extractvalue { i32, i1 } %89, 1
  br i1 %91, label %ioc_bb312, label %cont313

ioc_bb312:                                        ; preds = %do.body311
  %92 = sext i32 %88 to i64
  call void @__ioc_report_add_overflow(i32 2629, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %92, i64 -1, i8 13) nounwind
  br label %cont313

cont313:                                          ; preds = %do.body311, %ioc_bb312
  store i32 %90, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool314 = icmp eq i32 %90, 0
  br i1 %tobool314, label %while.cond317.preheader, label %do.end337

while.cond317.preheader:                          ; preds = %cont313
  %93 = load i32* @queue_front, align 4, !tbaa !3
  %94 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp318457 = icmp eq i32 %93, %94
  br i1 %cmp318457, label %do.end337, label %while.body320

while.body320:                                    ; preds = %while.cond317.preheader, %cont328
  %95 = phi i32 [ %102, %cont328 ], [ %93, %while.cond317.preheader ]
  %96 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %95, i32 1)
  %97 = extractvalue { i32, i1 } %96, 0
  %98 = extractvalue { i32, i1 } %96, 1
  br i1 %98, label %ioc_bb323, label %cont328

ioc_bb323:                                        ; preds = %while.body320
  %99 = sext i32 %95 to i64
  call void @__ioc_report_add_overflow(i32 2633, i32 46, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %99, i64 1, i8 13) nounwind
  br label %cont328

cont328:                                          ; preds = %ioc_bb323, %while.body320
  %rem329 = srem i32 %97, 128
  store i32 %rem329, i32* @queue_front, align 4, !tbaa !3
  %arrayidx330 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem329
  call void @signal_setmask(%struct.__sigset_t* sret %oset322, %struct.__sigset_t* byval align 4 %arrayidx330) nounwind
  %100 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx332 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %100
  %101 = load i32* %arrayidx332, align 4, !tbaa !3
  call void @zhandler(i32 %101) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp333, %struct.__sigset_t* byval align 4 %oset322) nounwind
  %102 = load i32* @queue_front, align 4, !tbaa !3
  %103 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp318 = icmp eq i32 %102, %103
  br i1 %cmp318, label %do.end337, label %while.body320

do.end337:                                        ; preds = %while.cond317.preheader, %cont328, %cont313
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([46 x i8]* @.str42, i32 0, i32 0)) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

kshappend:                                        ; preds = %if.else253
  %end339.phi.trans.insert = getelementptr inbounds %struct.value* %v.1, i32 0, i32 4
  %.pre = load i32* %end339.phi.trans.insert, align 4, !tbaa !3
  %cmp340 = icmp sgt i32 %.pre, 0
  br i1 %cmp340, label %cond.true, label %cond.end

cond.true:                                        ; preds = %kshappend.thread, %kshappend
  %104 = phi i32 [ 1, %kshappend.thread ], [ %.pre, %kshappend ]
  %105 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %104, i32 1)
  %106 = extractvalue { i32, i1 } %105, 0
  %107 = extractvalue { i32, i1 } %105, 1
  br i1 %107, label %ioc_bb343, label %cond.end

ioc_bb343:                                        ; preds = %cond.true
  %108 = sext i32 %104 to i64
  call void @__ioc_report_sub_overflow(i32 2647, i32 56, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %108, i64 1, i8 13) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %kshappend, %ioc_bb343
  %cond = phi i32 [ %106, %ioc_bb343 ], [ %106, %cond.true ], [ %.pre, %kshappend ]
  store i32 %cond, i32* %start, align 4, !tbaa !3
  %isarr = getelementptr inbounds %struct.value* %v.1, i32 0, i32 0
  store i32 0, i32* %isarr, align 4, !tbaa !3
  %call347 = call i8* @getstrvalue(%struct.value* %v.1)
  store i32 %cond, i32* %start, align 4, !tbaa !3
  %call349 = call i32 @strlen(i8* %call347) nounwind readonly
  %call350 = call i32 @strlen(i8* %val) nounwind readonly
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call349, i32 %call350)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  br i1 %111, label %ioc_bb351, label %cont354

ioc_bb351:                                        ; preds = %cond.end
  %112 = zext i32 %call350 to i64
  %113 = zext i32 %call349 to i64
  call void @__ioc_report_add_overflow(i32 2654, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %113, i64 %112, i8 5) nounwind
  br label %cont354

cont354:                                          ; preds = %ioc_bb351, %cond.end
  %114 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 1)
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb355, label %cont356

ioc_bb355:                                        ; preds = %cont354
  %117 = zext i32 %110 to i64
  call void @__ioc_report_add_overflow(i32 2654, i32 53, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %117, i64 1, i8 5) nounwind
  br label %cont356

cont356:                                          ; preds = %cont354, %ioc_bb355
  %call357 = call i8* @zalloc(i32 %115) nounwind
  %call358 = call i8* @strcpy(i8* %call357, i8* %call347) nounwind
  %add.ptr = getelementptr inbounds i8* %call357, i32 %call349
  %call359 = call i8* @strcpy(i8* %add.ptr, i8* %val) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %if.end362

if.end362:                                        ; preds = %cont128, %if.then137, %cont248, %sw.bb, %if.then282, %cont304, %if.else253, %cont356
  %val.addr.0 = phi i8* [ %val, %if.then137 ], [ %call357, %cont356 ], [ %val, %cont248 ], [ %val, %sw.bb ], [ %val, %if.else253 ], [ %val, %if.then282 ], [ %val, %cont304 ], [ %val, %cont128 ]
  call void @setstrvalue(%struct.value* %v.1, i8* %val.addr.0)
  %118 = load i32* @queueing_enabled, align 4, !tbaa !3
  %119 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 -1)
  %120 = extractvalue { i32, i1 } %119, 0
  %121 = extractvalue { i32, i1 } %119, 1
  br i1 %121, label %ioc_bb364, label %cont365

ioc_bb364:                                        ; preds = %if.end362
  %122 = sext i32 %118 to i64
  call void @__ioc_report_add_overflow(i32 2666, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %122, i64 -1, i8 13) nounwind
  br label %cont365

cont365:                                          ; preds = %if.end362, %ioc_bb364
  store i32 %120, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool366 = icmp eq i32 %120, 0
  br i1 %tobool366, label %while.cond369.preheader, label %do.end389

while.cond369.preheader:                          ; preds = %cont365
  %123 = load i32* @queue_front, align 4, !tbaa !3
  %124 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp370455 = icmp eq i32 %123, %124
  br i1 %cmp370455, label %do.end389, label %while.body372

while.body372:                                    ; preds = %while.cond369.preheader, %cont380
  %125 = phi i32 [ %132, %cont380 ], [ %123, %while.cond369.preheader ]
  %126 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %125, i32 1)
  %127 = extractvalue { i32, i1 } %126, 0
  %128 = extractvalue { i32, i1 } %126, 1
  br i1 %128, label %ioc_bb375, label %cont380

ioc_bb375:                                        ; preds = %while.body372
  %129 = sext i32 %125 to i64
  call void @__ioc_report_add_overflow(i32 2670, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %129, i64 1, i8 13) nounwind
  br label %cont380

cont380:                                          ; preds = %ioc_bb375, %while.body372
  %rem381 = srem i32 %127, 128
  store i32 %rem381, i32* @queue_front, align 4, !tbaa !3
  %arrayidx382 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem381
  call void @signal_setmask(%struct.__sigset_t* sret %oset374, %struct.__sigset_t* byval align 4 %arrayidx382) nounwind
  %130 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx384 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %130
  %131 = load i32* %arrayidx384, align 4, !tbaa !3
  call void @zhandler(i32 %131) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp385, %struct.__sigset_t* byval align 4 %oset374) nounwind
  %132 = load i32* @queue_front, align 4, !tbaa !3
  %133 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp370 = icmp eq i32 %132, %133
  br i1 %cmp370, label %do.end389, label %while.body372

do.end389:                                        ; preds = %while.cond369.preheader, %cont380, %cont365
  %pm390 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %134 = load %struct.param** %pm390, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %do.end389, %do.end337, %do.end236, %do.end109, %if.then20, %if.then
  %retval.0 = phi %struct.param* [ null, %if.then20 ], [ %134, %do.end389 ], [ %61, %do.end236 ], [ null, %do.end337 ], [ null, %do.end109 ], [ null, %if.then ]
  ret %struct.param* %retval.0
}

declare i8* @ztrdup_metafy(i8*)

declare i8* @zalloc(i32)

declare i32 @gethostname(i8*, i32) nounwind

declare void @zfree(i8*, i32)

declare i8* @getlogin()

declare void @pushheap()

define i32 @isident(i8* %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.end
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 859, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.end
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %3, 1
  %tobool5 = icmp eq i16 %and, 0
  br i1 %tobool5, label %cont26, label %if.then6

if.then6:                                         ; preds = %cont
  %incdec.ptr = getelementptr inbounds i8* %s, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cont10, %if.then6
  %ss.0 = phi i8* [ %incdec.ptr, %if.then6 ], [ %incdec.ptr22, %cont10 ]
  %4 = load i8* %ss.0, align 1, !tbaa !1
  %tobool7 = icmp eq i8 %4, 0
  br i1 %tobool7, label %if.end27, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %for.body
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 862, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %ioc_bb9, %for.body
  %idxprom11 = zext i8 %4 to i32
  %arrayidx12 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom11
  %7 = load i16* %arrayidx12, align 2, !tbaa !6
  %and18 = and i16 %7, 1
  %tobool19 = icmp eq i16 %and18, 0
  %incdec.ptr22 = getelementptr inbounds i8* %ss.0, i32 1
  br i1 %tobool19, label %if.end27, label %for.cond

cont26:                                           ; preds = %cont
  %call = tail call i8* @itype_end(i8* %s, i32 128, i32 0) nounwind
  br label %if.end27

if.end27:                                         ; preds = %cont10, %for.cond, %cont26
  %s.addr.0 = phi i8* [ %s, %cont26 ], [ %incdec.ptr, %for.cond ], [ %incdec.ptr, %cont10 ]
  %ss.1 = phi i8* [ %call, %cont26 ], [ %ss.0, %for.cond ], [ %ss.0, %cont10 ]
  %8 = load i8* %ss.1, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %8, 0
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end27
  %cmp = icmp ne i8* %s.addr.0, %ss.1
  %cmp35 = icmp eq i8 %8, 91
  %or.cond = and i1 %cmp, %cmp35
  br i1 %or.cond, label %if.end38, label %return

if.end38:                                         ; preds = %if.end30
  %incdec.ptr39 = getelementptr inbounds i8* %ss.1, i32 1
  %call40 = tail call i8* @parse_subscript(i8* %incdec.ptr39, i32 1, i32 93) nounwind
  %tobool41 = icmp eq i8* %call40, null
  br i1 %tobool41, label %return, label %if.end43

if.end43:                                         ; preds = %if.end38
  tail call void @untokenize(i8* %s.addr.0) nounwind
  %arrayidx44 = getelementptr inbounds i8* %call40, i32 1
  %9 = load i8* %arrayidx44, align 1, !tbaa !1
  %lnot = icmp eq i8 %9, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %return

return:                                           ; preds = %if.end30, %if.end38, %if.end27, %entry, %if.end43
  %retval.0 = phi i32 [ %lnot.ext, %if.end43 ], [ 0, %entry ], [ 1, %if.end27 ], [ 0, %if.end30 ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

declare i8* @strchr(i8*, i32) nounwind readonly

declare i8* @metafy(i8*, i32, i32)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal fastcc i8* @mkenvstr(i8* nocapture %name, i8* nocapture %value, i32 %flags) nounwind {
entry:
  %call = tail call i32 @strlen(i8* %name) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %for.cond.preheader, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 4265, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ioc_bb, %entry
  %2 = load i8* %value, align 1, !tbaa !1
  %tobool31 = icmp eq i8 %2, 0
  br i1 %tobool31, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %3 = phi i8 [ %8, %for.cond.backedge ], [ %2, %for.cond.preheader ]
  %len_value.033 = phi i32 [ %6, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %s.032 = phi i8* [ %s.1, %for.cond.backedge ], [ %value, %for.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %s.032, i32 1
  tail call void @__ioc_report_conversion(i32 4266, i32 66, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %3, -125
  br i1 %cmp, label %lor.rhs, label %for.inc

lor.rhs:                                          ; preds = %land.rhs
  %incdec.ptr5 = getelementptr inbounds i8* %s.032, i32 2
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %4, 32
  br i1 %cmp7, label %for.end, label %for.inc

for.inc:                                          ; preds = %lor.rhs, %land.rhs
  %s.1 = phi i8* [ %incdec.ptr, %land.rhs ], [ %incdec.ptr5, %lor.rhs ]
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len_value.033, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb9, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb9
  %8 = load i8* %s.1, align 1, !tbaa !1
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %for.end, label %land.rhs

ioc_bb9:                                          ; preds = %for.inc
  %9 = sext i32 %len_value.033 to i64
  tail call void @__ioc_report_add_overflow(i32 4266, i32 102, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %lor.rhs, %for.cond.preheader
  %len_value.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %len_value.033, %lor.rhs ], [ %6, %for.cond.backedge ]
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 %len_value.0.lcssa)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %for.end
  %13 = sext i32 %len_value.0.lcssa to i64
  %14 = sext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 4268, i32 40, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %14, i64 %13, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %for.end, %ioc_bb11
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 2)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %cont12
  %18 = sext i32 %11 to i64
  tail call void @__ioc_report_add_overflow(i32 4268, i32 52, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %18, i64 2, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %cont12, %ioc_bb13
  %19 = icmp sgt i32 %16, -1
  br i1 %19, label %while.body.lr.ph.i, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont14
  %20 = sext i32 %16 to i64
  tail call void @__ioc_report_conversion(i32 4268, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %cont14, %ioc_bb15
  %call17 = tail call i8* @zalloc(i32 %16) nounwind
  %call18 = tail call i8* @strcpy(i8* %call17, i8* %name) nounwind
  %add.ptr = getelementptr inbounds i8* %call17, i32 %call
  store i8 61, i8* %add.ptr, align 1, !tbaa !1
  %and.i = and i32 %flags, 256
  %tobool12.i = icmp eq i32 %and.i, 0
  %and24.i = and i32 %flags, 512
  %tobool25.i = icmp eq i32 %and24.i, 0
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %s.pn.i = phi i8* [ %add.ptr, %while.body.lr.ph.i ], [ %incdec.ptr47.i, %while.cond.backedge.i ]
  %value.addr.046.i = phi i8* [ %value, %while.body.lr.ph.i ], [ %value.addr.1.i, %while.cond.backedge.i ]
  %incdec.ptr47.i = getelementptr inbounds i8* %s.pn.i, i32 1
  %incdec.ptr1.i = getelementptr inbounds i8* %value.addr.046.i, i32 1
  %21 = load i8* %value.addr.046.i, align 1, !tbaa !1
  store i8 %21, i8* %incdec.ptr47.i, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 4207, i32 40, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp.i = icmp eq i8 %21, -125
  br i1 %cmp.i, label %if.then.i, label %while.body.i.cont11.i_crit_edge

while.body.i.cont11.i_crit_edge:                  ; preds = %while.body.i
  %.pre.i.pre = load i8* %incdec.ptr47.i, align 1, !tbaa !1
  br label %cont11.i

if.then.i:                                        ; preds = %while.body.i
  %incdec.ptr3.i = getelementptr inbounds i8* %value.addr.046.i, i32 2
  %22 = load i8* %incdec.ptr1.i, align 1, !tbaa !1
  %conv4.i = sext i8 %22 to i32
  %xor.i = xor i32 %conv4.i, 32
  %xor.off.i = add i32 %xor.i, 128
  %23 = icmp ult i32 %xor.off.i, 256
  br i1 %23, label %cont6.i, label %ioc_bb5.i

ioc_bb5.i:                                        ; preds = %if.then.i
  %24 = sext i32 %xor.i to i64
  tail call void @__ioc_report_conversion(i32 4208, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont6.i

cont6.i:                                          ; preds = %ioc_bb5.i, %if.then.i
  %conv7.i = trunc i32 %xor.i to i8
  store i8 %conv7.i, i8* %incdec.ptr47.i, align 1, !tbaa !1
  br label %cont11.i

cont11.i:                                         ; preds = %while.body.i.cont11.i_crit_edge, %cont6.i
  %.pre.i = phi i8 [ %conv7.i, %cont6.i ], [ %.pre.i.pre, %while.body.i.cont11.i_crit_edge ]
  %value.addr.1.i = phi i8* [ %incdec.ptr3.i, %cont6.i ], [ %incdec.ptr1.i, %while.body.i.cont11.i_crit_edge ]
  br i1 %tobool12.i, label %cont23.i, label %if.then13.i

if.then13.i:                                      ; preds = %cont11.i
  %conv14.i = sext i8 %.pre.i to i32
  %call.i = tail call i32 @tulower(i32 %conv14.i) nounwind
  %call.off.i = add i32 %call.i, 128
  %25 = icmp ult i32 %call.off.i, 256
  br i1 %25, label %cont18.i, label %ioc_bb17.i

ioc_bb17.i:                                       ; preds = %if.then13.i
  %26 = sext i32 %call.i to i64
  tail call void @__ioc_report_conversion(i32 4210, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %cont18.i

cont18.i:                                         ; preds = %ioc_bb17.i, %if.then13.i
  %conv19.i = trunc i32 %call.i to i8
  store i8 %conv19.i, i8* %incdec.ptr47.i, align 1, !tbaa !1
  br label %while.cond.backedge.i

cont23.i:                                         ; preds = %cont11.i
  br i1 %tobool25.i, label %while.cond.backedge.i, label %if.then26.i

if.then26.i:                                      ; preds = %cont23.i
  %conv27.i = sext i8 %.pre.i to i32
  %call28.i = tail call i32 @tuupper(i32 %conv27.i) nounwind
  %call28.off.i = add i32 %call28.i, 128
  %27 = icmp ult i32 %call28.off.i, 256
  br i1 %27, label %cont32.i, label %ioc_bb31.i

ioc_bb31.i:                                       ; preds = %if.then26.i
  %28 = sext i32 %call28.i to i64
  tail call void @__ioc_report_conversion(i32 4212, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont32.i

cont32.i:                                         ; preds = %ioc_bb31.i, %if.then26.i
  %conv33.i = trunc i32 %call28.i to i8
  store i8 %conv33.i, i8* %incdec.ptr47.i, align 1, !tbaa !1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %cont32.i, %cont23.i, %cont18.i
  %29 = phi i8 [ %conv33.i, %cont32.i ], [ %conv19.i, %cont18.i ], [ %.pre.i, %cont23.i ]
  %tobool.i = icmp eq i8 %29, 0
  br i1 %tobool.i, label %copyenvstr.exit, label %while.body.i

copyenvstr.exit:                                  ; preds = %while.cond.backedge.i
  ret i8* %call17
}

define i8* @getsparam(i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 0, i32 0) nounwind
  %tobool = icmp eq %struct.value* %call.i, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @getstrvalue(%struct.value* %call.i)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

declare void @popheap()

define void @addenv(%struct.param* nocapture %pm, i8* nocapture %value) nounwind {
entry:
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %call = tail call fastcc i8* @mkenvstr(i8* %0, i8* %value, i32 %1)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %ptr.0.i = phi i8* [ %call, %entry ], [ %incdec.ptr.i, %for.inc.i ]
  %2 = load i8* %ptr.0.i, align 1, !tbaa !1
  switch i8 %2, label %for.inc.i [
    i8 0, label %if.else.i
    i8 61, label %cont.i
  ]

for.inc.i:                                        ; preds = %for.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %ptr.0.i, i32 1
  br label %for.cond.i

cont.i:                                           ; preds = %for.cond.i
  store i8 0, i8* %ptr.0.i, align 1, !tbaa !1
  %add.ptr.i = getelementptr inbounds i8* %ptr.0.i, i32 1
  %call.i = tail call i32 @setenv(i8* %call, i8* %add.ptr.i, i32 1) nounwind
  store i8 61, i8* %ptr.0.i, align 1, !tbaa !1
  br label %zputenv.exit

if.else.i:                                        ; preds = %for.cond.i
  %call6.i = tail call i32 @setenv(i8* %call, i8* %ptr.0.i, i32 1) nounwind
  br label %zputenv.exit

zputenv.exit:                                     ; preds = %cont.i, %if.else.i
  %ret.0.i = phi i32 [ %call.i, %cont.i ], [ %call6.i, %if.else.i ]
  %tobool = icmp eq i32 %ret.0.i, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %zputenv.exit
  tail call void @zsfree(i8* %call) nounwind
  %env = getelementptr inbounds %struct.param* %pm, i32 0, i32 5
  store i8* null, i8** %env, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %zputenv.exit
  %env3 = getelementptr inbounds %struct.param* %pm, i32 0, i32 5
  %3 = load i8** %env3, align 4, !tbaa !0
  %tobool4 = icmp eq i8* %3, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @zsfree(i8* %3) nounwind
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  store i8* %call, i8** %env3, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare void @set_pwd_env()

declare i32 @uname(%struct.utsname* nocapture) nounwind

define %struct.param* @assignaparam(i8* %s, i8** %val, i32 %flags) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %t = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp61 = alloca %struct.__sigset_t, align 4
  %oset200 = alloca %struct.__sigset_t, align 4
  %tmp211 = alloca %struct.__sigset_t, align 4
  %oset392 = alloca %struct.__sigset_t, align 4
  %tmp403 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  store i8* %s, i8** %t, align 4, !tbaa !0
  %call = call i32 @isident(i8* %s)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str40, i32 0, i32 0), i8* %s) nounwind
  call void @freearray(i8** %val) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 2693, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  %call1 = call i8* @strchr(i8* %s, i32 91) nounwind
  %tobool2 = icmp eq i8* %call1, null
  br i1 %tobool2, label %cont71, label %cont5

cont5:                                            ; preds = %cont
  store i8 0, i8* %call1, align 1, !tbaa !1
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool7 = icmp eq %struct.value* %call.i, null
  br i1 %tobool7, label %cont20, label %land.lhs.true

cont20:                                           ; preds = %cont5
  %call13 = call %struct.param* @createparam(i8* %s, i32 1)
  store i8 91, i8* %call1, align 1, !tbaa !1
  br label %cont186

land.lhs.true:                                    ; preds = %cont5
  %and = and i32 %flags, -3
  store i8 91, i8* %call1, align 1, !tbaa !1
  %pm = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %5 = load %struct.param** %pm, align 4, !tbaa !0
  %flags22 = getelementptr inbounds %struct.param* %5, i32 0, i32 0, i32 2
  %6 = load i32* %flags22, align 4, !tbaa !3
  %and43 = and i32 %6, 31
  %cmp = icmp eq i32 %and43, 16
  br i1 %cmp, label %do.body, label %cont186

do.body:                                          ; preds = %land.lhs.true
  %7 = load i32* @queueing_enabled, align 4, !tbaa !3
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 -1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %do.body
  %11 = sext i32 %7 to i64
  call void @__ioc_report_add_overflow(i32 2704, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %do.body, %ioc_bb49
  store i32 %9, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool51 = icmp eq i32 %9, 0
  br i1 %tobool51, label %while.cond.preheader, label %do.end63

while.cond.preheader:                             ; preds = %cont50
  %12 = load i32* @queue_front, align 4, !tbaa !3
  %13 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp54461 = icmp eq i32 %12, %13
  br i1 %cmp54461, label %do.end63, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont59
  %14 = phi i32 [ %21, %cont59 ], [ %12, %while.cond.preheader ]
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb55, label %cont59

ioc_bb55:                                         ; preds = %while.body
  %18 = sext i32 %14 to i64
  call void @__ioc_report_add_overflow(i32 2708, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %cont59

cont59:                                           ; preds = %ioc_bb55, %while.body
  %rem = srem i32 %16, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %19 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx60 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %19
  %20 = load i32* %arrayidx60, align 4, !tbaa !3
  call void @zhandler(i32 %20) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp61, %struct.__sigset_t* byval align 4 %oset) nounwind
  %21 = load i32* @queue_front, align 4, !tbaa !3
  %22 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %21, %22
  br i1 %cmp54, label %do.end63, label %while.body

do.end63:                                         ; preds = %while.cond.preheader, %cont59, %cont50
  %23 = load %struct.param** %pm, align 4, !tbaa !0
  %nam = getelementptr inbounds %struct.param* %23, i32 0, i32 0, i32 1
  %24 = load i8** %nam, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([46 x i8]* @.str36, i32 0, i32 0), i8* %24) nounwind
  call void @freearray(i8** %val) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

cont71:                                           ; preds = %cont
  %call72 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 64)
  %tobool73 = icmp eq %struct.value* %call72, null
  br i1 %tobool73, label %if.then74, label %if.else80

if.then74:                                        ; preds = %cont71
  %call79 = call %struct.param* @createparam(i8* %s, i32 1)
  br label %cont186

if.else80:                                        ; preds = %cont71
  %pm81 = getelementptr inbounds %struct.value* %call72, i32 0, i32 1
  %25 = load %struct.param** %pm81, align 4, !tbaa !0
  %flags83 = getelementptr inbounds %struct.param* %25, i32 0, i32 0, i32 2
  %26 = load i32* %flags83, align 4, !tbaa !3
  %27 = and i32 %26, 4259857
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %if.then129, label %if.end180

if.then129:                                       ; preds = %if.else80
  %and138 = and i32 %26, 8192
  %and143 = and i32 %flags, 1
  %tobool144 = icmp eq i32 %and143, 0
  br i1 %tobool144, label %if.end165, label %if.then145

if.then145:                                       ; preds = %if.then129
  %call148 = call i32 @arrlen(i8** %val) nounwind
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call148, i32 2)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  %32 = sext i32 %call148 to i64
  br i1 %31, label %ioc_bb149, label %cont150

ioc_bb149:                                        ; preds = %if.then145
  call void @__ioc_report_add_overflow(i32 2731, i32 54, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %32, i64 2, i8 13) nounwind
  br label %cont150

cont150:                                          ; preds = %if.then145, %ioc_bb149
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %cont152, label %ioc_bb151

ioc_bb151:                                        ; preds = %cont150
  %34 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 2731, i32 50, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont152

cont152:                                          ; preds = %ioc_bb151, %cont150
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb153, label %cont154

ioc_bb153:                                        ; preds = %cont152
  %38 = zext i32 %30 to i64
  call void @__ioc_report_mul_overflow(i32 2731, i32 48, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %38, i8 5) nounwind
  br label %cont154

cont154:                                          ; preds = %cont152, %ioc_bb153
  %call155 = call i8* @zalloc(i32 %36) nounwind
  %39 = bitcast i8* %call155 to i8**
  %call156 = call i8* @getstrvalue(%struct.value* %call72)
  %call157 = call i8* @ztrdup(i8* %call156) nounwind
  store i8* %call157, i8** %39, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call155, i32 4
  %40 = bitcast i8** %val to i8*
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call148, i32 1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb158, label %cont159

ioc_bb158:                                        ; preds = %cont154
  call void @__ioc_report_add_overflow(i32 2733, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %cont159

cont159:                                          ; preds = %cont154, %ioc_bb158
  %44 = icmp sgt i32 %42, -1
  br i1 %44, label %cont162, label %ioc_bb161

ioc_bb161:                                        ; preds = %cont159
  %45 = sext i32 %42 to i64
  call void @__ioc_report_conversion(i32 2733, i32 47, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %45, i8 1) nounwind
  br label %cont162

cont162:                                          ; preds = %ioc_bb161, %cont159
  %46 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb163, label %cont164

ioc_bb163:                                        ; preds = %cont162
  %49 = zext i32 %42 to i64
  call void @__ioc_report_mul_overflow(i32 2733, i32 45, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %49, i8 5) nounwind
  br label %cont164

cont164:                                          ; preds = %cont162, %ioc_bb163
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %40, i32 %47, i32 4, i1 false)
  call void @free(i8* %40) nounwind
  br label %if.end165

if.end165:                                        ; preds = %if.then129, %cont164
  %val.addr.0 = phi i8** [ %39, %cont164 ], [ %val, %if.then129 ]
  call void @unsetparam(i8* %s)
  %or170 = or i32 %and138, 1
  %call171 = call %struct.param* @createparam(i8* %s, i32 %or170)
  br label %cont186

if.end180:                                        ; preds = %if.else80
  %and177 = and i32 %flags, -3
  br label %cont221

cont186:                                          ; preds = %if.end165, %if.then74, %land.lhs.true, %cont20
  %flags.addr.1.ph = phi i32 [ %flags, %if.end165 ], [ %flags, %if.then74 ], [ %and, %land.lhs.true ], [ %flags, %cont20 ]
  %val.addr.1.ph = phi i8** [ %val.addr.0, %if.end165 ], [ %val, %if.then74 ], [ %val, %land.lhs.true ], [ %val, %cont20 ]
  %call187 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 64)
  %tobool188 = icmp eq %struct.value* %call187, null
  br i1 %tobool188, label %do.body190, label %cont221

do.body190:                                       ; preds = %cont186
  %50 = load i32* @queueing_enabled, align 4, !tbaa !3
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 -1)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb191, label %cont192

ioc_bb191:                                        ; preds = %do.body190
  %54 = sext i32 %50 to i64
  call void @__ioc_report_add_overflow(i32 2748, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %54, i64 -1, i8 13) nounwind
  br label %cont192

cont192:                                          ; preds = %do.body190, %ioc_bb191
  store i32 %52, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool193 = icmp eq i32 %52, 0
  br i1 %tobool193, label %while.cond196.preheader, label %do.end215

while.cond196.preheader:                          ; preds = %cont192
  %55 = load i32* @queue_front, align 4, !tbaa !3
  %56 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp197459 = icmp eq i32 %55, %56
  br i1 %cmp197459, label %do.end215, label %while.body198

while.body198:                                    ; preds = %while.cond196.preheader, %cont206
  %57 = phi i32 [ %64, %cont206 ], [ %55, %while.cond196.preheader ]
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb201, label %cont206

ioc_bb201:                                        ; preds = %while.body198
  %61 = sext i32 %57 to i64
  call void @__ioc_report_add_overflow(i32 2752, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %61, i64 1, i8 13) nounwind
  br label %cont206

cont206:                                          ; preds = %ioc_bb201, %while.body198
  %rem207 = srem i32 %59, 128
  store i32 %rem207, i32* @queue_front, align 4, !tbaa !3
  %arrayidx208 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem207
  call void @signal_setmask(%struct.__sigset_t* sret %oset200, %struct.__sigset_t* byval align 4 %arrayidx208) nounwind
  %62 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx210 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %62
  %63 = load i32* %arrayidx210, align 4, !tbaa !3
  call void @zhandler(i32 %63) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp211, %struct.__sigset_t* byval align 4 %oset200) nounwind
  %64 = load i32* @queue_front, align 4, !tbaa !3
  %65 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp197 = icmp eq i32 %64, %65
  br i1 %cmp197, label %do.end215, label %while.body198

do.end215:                                        ; preds = %while.cond196.preheader, %cont206, %cont192
  call void @freearray(i8** %val.addr.1.ph) nounwind
  br label %return

cont221:                                          ; preds = %if.end180, %cont186
  %val.addr.1457 = phi i8** [ %val, %if.end180 ], [ %val.addr.1.ph, %cont186 ]
  %flags.addr.1455 = phi i32 [ %and177, %if.end180 ], [ %flags.addr.1.ph, %cont186 ]
  %v.1 = phi %struct.value* [ %call72, %if.end180 ], [ %call187, %cont186 ]
  %and222 = and i32 %flags.addr.1455, 2
  %tobool223 = icmp eq i32 %and222, 0
  br i1 %tobool223, label %cont235, label %land.lhs.true224

land.lhs.true224:                                 ; preds = %cont221
  %pm225 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %66 = load %struct.param** %pm225, align 4, !tbaa !0
  %level = getelementptr inbounds %struct.param* %66, i32 0, i32 8
  %67 = load i32* %level, align 4, !tbaa !3
  %cmp226 = icmp eq i32 %67, 0
  br i1 %cmp226, label %if.then227, label %cont235

if.then227:                                       ; preds = %land.lhs.true224
  %nam230 = getelementptr inbounds %struct.param* %66, i32 0, i32 0, i32 1
  %68 = load i8** %nam230, align 4, !tbaa !0
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([48 x i8]* @.str43, i32 0, i32 0), i8* %68) nounwind
  br label %cont235

cont235:                                          ; preds = %cont221, %if.then227, %land.lhs.true224
  %and236 = and i32 %flags.addr.1455, 1
  %tobool237 = icmp eq i32 %and236, 0
  br i1 %tobool237, label %if.end381, label %if.then238

if.then238:                                       ; preds = %cont235
  %start = getelementptr inbounds %struct.value* %v.1, i32 0, i32 3
  %69 = load i32* %start, align 4, !tbaa !3
  %cmp239 = icmp eq i32 %69, 0
  %end = getelementptr inbounds %struct.value* %v.1, i32 0, i32 4
  %70 = load i32* %end, align 4, !tbaa !3
  %cmp243 = icmp eq i32 %70, -1
  %or.cond = and i1 %cmp239, %cmp243
  br i1 %or.cond, label %if.then244, label %if.else323

if.then244:                                       ; preds = %if.then238
  %pm245 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %71 = load %struct.param** %pm245, align 4, !tbaa !0
  %flags247 = getelementptr inbounds %struct.param* %71, i32 0, i32 0, i32 2
  %72 = load i32* %flags247, align 4, !tbaa !3
  %and273 = and i32 %72, 1
  %tobool274 = icmp eq i32 %and273, 0
  br i1 %tobool274, label %if.else285, label %if.then275

if.then275:                                       ; preds = %if.then244
  %gsu = getelementptr inbounds %struct.param* %71, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %73 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_array* %73, i32 0, i32 0
  %74 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !0
  %call278 = call i8** %74(%struct.param* %71) nounwind
  %call279 = call i32 @arrlen(i8** %call278) nounwind
  store i32 %call279, i32* %start, align 4, !tbaa !3
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call279, i32 1)
  %76 = extractvalue { i32, i1 } %75, 0
  %77 = extractvalue { i32, i1 } %75, 1
  br i1 %77, label %ioc_bb282, label %cont283

ioc_bb282:                                        ; preds = %if.then275
  %78 = sext i32 %call279 to i64
  call void @__ioc_report_add_overflow(i32 2768, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %78, i64 1, i8 13) nounwind
  br label %cont283

cont283:                                          ; preds = %if.then275, %ioc_bb282
  store i32 %76, i32* %end, align 4, !tbaa !3
  br label %if.end381

if.else285:                                       ; preds = %if.then244
  %and314 = and i32 %72, 16
  %tobool315 = icmp eq i32 %and314, 0
  br i1 %tobool315, label %if.end381, label %cont318

cont318:                                          ; preds = %if.else285
  store i32 -1, i32* %start, align 4, !tbaa !3
  store i32 0, i32* %end, align 4, !tbaa !3
  br label %if.end381

if.else323:                                       ; preds = %if.then238
  %end324 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 4
  %cmp325 = icmp sgt i32 %70, 0
  br i1 %cmp325, label %if.then326, label %if.else331

if.then326:                                       ; preds = %if.else323
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %70, i32 -1)
  %80 = extractvalue { i32, i1 } %79, 0
  %81 = extractvalue { i32, i1 } %79, 1
  br i1 %81, label %ioc_bb328, label %cont329

ioc_bb328:                                        ; preds = %if.then326
  %82 = sext i32 %70 to i64
  call void @__ioc_report_add_overflow(i32 2775, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %82, i64 -1, i8 13) nounwind
  br label %cont329

cont329:                                          ; preds = %if.then326, %ioc_bb328
  store i32 %80, i32* %end324, align 4, !tbaa !3
  store i32 %70, i32* %start, align 4, !tbaa !3
  br label %if.end381

if.else331:                                       ; preds = %if.else323
  %pm332 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %83 = load %struct.param** %pm332, align 4, !tbaa !0
  %flags334 = getelementptr inbounds %struct.param* %83, i32 0, i32 0, i32 2
  %84 = load i32* %flags334, align 4, !tbaa !3
  %and360 = and i32 %84, 1
  %tobool361 = icmp eq i32 %and360, 0
  br i1 %tobool361, label %if.end381, label %if.then362

if.then362:                                       ; preds = %if.else331
  %gsu364 = getelementptr inbounds %struct.param* %83, i32 0, i32 2
  %a365 = bitcast %union.anon.0* %gsu364 to %struct.gsu_array**
  %85 = load %struct.gsu_array** %a365, align 4, !tbaa !0
  %getfn366 = getelementptr inbounds %struct.gsu_array* %85, i32 0, i32 0
  %86 = load i8** (%struct.param*)** %getfn366, align 4, !tbaa !0
  %call368 = call i8** %86(%struct.param* %83) nounwind
  %call369 = call i32 @arrlen(i8** %call368) nounwind
  %87 = load i32* %end324, align 4, !tbaa !3
  %88 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call369, i32 %87)
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %ioc_bb371, label %cont372

ioc_bb371:                                        ; preds = %if.then362
  %91 = sext i32 %87 to i64
  %92 = sext i32 %call369 to i64
  call void @__ioc_report_add_overflow(i32 2777, i32 67, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %92, i64 %91, i8 13) nounwind
  br label %cont372

cont372:                                          ; preds = %if.then362, %ioc_bb371
  store i32 %89, i32* %end324, align 4, !tbaa !3
  %93 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %89, i32 1)
  %94 = extractvalue { i32, i1 } %93, 0
  %95 = extractvalue { i32, i1 } %93, 1
  br i1 %95, label %ioc_bb375, label %cont376

ioc_bb375:                                        ; preds = %cont372
  %96 = sext i32 %89 to i64
  call void @__ioc_report_add_overflow(i32 2778, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %96, i64 1, i8 13) nounwind
  br label %cont376

cont376:                                          ; preds = %cont372, %ioc_bb375
  store i32 %94, i32* %start, align 4, !tbaa !3
  br label %if.end381

if.end381:                                        ; preds = %if.else285, %if.else331, %cont235, %cont318, %cont283, %cont376, %cont329
  call void @setarrvalue(%struct.value* %v.1, i8** %val.addr.1457)
  %97 = load i32* @queueing_enabled, align 4, !tbaa !3
  %98 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %97, i32 -1)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb383, label %cont384

ioc_bb383:                                        ; preds = %if.end381
  %101 = sext i32 %97 to i64
  call void @__ioc_report_add_overflow(i32 2785, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %101, i64 -1, i8 13) nounwind
  br label %cont384

cont384:                                          ; preds = %if.end381, %ioc_bb383
  store i32 %99, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool385 = icmp eq i32 %99, 0
  br i1 %tobool385, label %while.cond388.preheader, label %do.end407

while.cond388.preheader:                          ; preds = %cont384
  %102 = load i32* @queue_front, align 4, !tbaa !3
  %103 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp389460 = icmp eq i32 %102, %103
  br i1 %cmp389460, label %do.end407, label %while.body390

while.body390:                                    ; preds = %while.cond388.preheader, %cont398
  %104 = phi i32 [ %111, %cont398 ], [ %102, %while.cond388.preheader ]
  %105 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 1)
  %106 = extractvalue { i32, i1 } %105, 0
  %107 = extractvalue { i32, i1 } %105, 1
  br i1 %107, label %ioc_bb393, label %cont398

ioc_bb393:                                        ; preds = %while.body390
  %108 = sext i32 %104 to i64
  call void @__ioc_report_add_overflow(i32 2789, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %108, i64 1, i8 13) nounwind
  br label %cont398

cont398:                                          ; preds = %ioc_bb393, %while.body390
  %rem399 = srem i32 %106, 128
  store i32 %rem399, i32* @queue_front, align 4, !tbaa !3
  %arrayidx400 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem399
  call void @signal_setmask(%struct.__sigset_t* sret %oset392, %struct.__sigset_t* byval align 4 %arrayidx400) nounwind
  %109 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx402 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %109
  %110 = load i32* %arrayidx402, align 4, !tbaa !3
  call void @zhandler(i32 %110) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp403, %struct.__sigset_t* byval align 4 %oset392) nounwind
  %111 = load i32* @queue_front, align 4, !tbaa !3
  %112 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp389 = icmp eq i32 %111, %112
  br i1 %cmp389, label %do.end407, label %while.body390

do.end407:                                        ; preds = %while.cond388.preheader, %cont398, %cont384
  %pm408 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %113 = load %struct.param** %pm408, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %do.end407, %do.end215, %do.end63, %if.then
  %retval.0 = phi %struct.param* [ null, %do.end63 ], [ %113, %do.end407 ], [ null, %do.end215 ], [ null, %if.then ]
  ret %struct.param* %retval.0
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

define void @assigngetset(%struct.param* nocapture %pm) nounwind {
entry:
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 31
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb19
    i32 4, label %sw.bb22
    i32 8, label %sw.bb22
    i32 1, label %sw.bb24
    i32 16, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %s = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %s, align 4, !tbaa !0
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_integer* @stdinteger_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %1, align 4, !tbaa !0
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry, %entry
  %2 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_float* @stdfloat_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %2, align 4, !tbaa !0
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_array* @stdarray_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %3, align 4, !tbaa !0
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_hash* @stdhash_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %4, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb19, %sw.bb
  ret void
}

define %struct.param* @createparam(i8* %name, i32 %flags) nounwind {
entry:
  %0 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %1 = load %struct.hashtable** @realparamtab, align 4, !tbaa !0
  %cmp = icmp eq %struct.hashtable* %0, %1
  br i1 %cmp, label %if.end, label %cont2

cont2:                                            ; preds = %entry
  %and = and i32 %flags, -536875009
  %or = or i32 %and, 536870912
  br label %if.end

if.end:                                           ; preds = %entry, %cont2
  %flags.addr.0 = phi i32 [ %or, %cont2 ], [ %flags, %entry ]
  %cmp7 = icmp eq i8* %name, getelementptr inbounds ([0 x i8]* @nulstring, i32 0, i32 0)
  br i1 %cmp7, label %if.else108, label %if.then8

if.then8:                                         ; preds = %if.end
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  %call = tail call %struct.hashnode* @gethashnode2(%struct.hashtable* %0, i8* %name) nounwind
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %getnode = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %2 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call10 = tail call %struct.hashnode* %2(%struct.hashtable* %0, i8* %name) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hashnode* [ %call, %cond.true ], [ %call10, %cond.false ]
  %3 = bitcast %struct.hashnode* %cond to %struct.param*
  %tobool = icmp eq %struct.hashnode* %cond, null
  br i1 %tobool, label %if.else.thread, label %land.lhs.true

if.else.thread:                                   ; preds = %cond.end
  %call81160 = tail call i8* @zshcalloc(i32 48) nounwind
  %old82161 = getelementptr inbounds i8* %call81160, i32 40
  %4 = bitcast i8* %old82161 to %struct.param**
  store %struct.param* %3, %struct.param** %4, align 4, !tbaa !0
  br label %if.end89

land.lhs.true:                                    ; preds = %cond.end
  %5 = getelementptr inbounds %struct.hashnode* %cond, i32 3, i32 2
  %6 = load i32* %5, align 4, !tbaa !3
  %7 = load i32* @locallevel, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %6, %7
  br i1 %cmp11, label %if.then18, label %cont15

cont15:                                           ; preds = %land.lhs.true
  %and16 = and i32 %flags.addr.0, 2097152
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.then84

if.then18:                                        ; preds = %cont15, %land.lhs.true
  %flags19 = getelementptr inbounds %struct.hashnode* %cond, i32 0, i32 2
  %8 = load i32* %flags19, align 4, !tbaa !3
  %9 = and i32 %8, 37748736
  %10 = icmp eq i32 %9, 33554432
  br i1 %10, label %if.end68, label %cont39

cont39:                                           ; preds = %if.then18
  %and42 = and i32 %8, -33554433
  store i32 %and42, i32* %flags19, align 4, !tbaa !3
  %and49 = and i32 %8, 4194304
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %return, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %cont39
  %ename = getelementptr inbounds %struct.hashnode* %cond, i32 3
  %11 = bitcast %struct.hashnode* %ename to i8**
  %12 = load i8** %11, align 4, !tbaa !0
  %tobool52 = icmp eq i8* %12, null
  br i1 %tobool52, label %return, label %if.then53

if.then53:                                        ; preds = %land.lhs.true51
  %13 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode54 = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 9
  %14 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode54, align 4, !tbaa !0
  %call56 = tail call %struct.hashnode* %14(%struct.hashtable* %13, i8* %12) nounwind
  %tobool57 = icmp eq %struct.hashnode* %call56, null
  br i1 %tobool57, label %return, label %cont62

cont62:                                           ; preds = %if.then53
  %flags64 = getelementptr inbounds %struct.hashnode* %call56, i32 0, i32 2
  %15 = load i32* %flags64, align 4, !tbaa !3
  %and65 = and i32 %15, -33554433
  store i32 %and65, i32* %flags64, align 4, !tbaa !3
  br label %return

if.end68:                                         ; preds = %if.then18
  %and75 = and i32 %8, 16777216
  %tobool76 = icmp eq i32 %and75, 0
  %16 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool78 = icmp eq i8 %16, 0
  %or.cond = or i1 %tobool76, %tobool78
  br i1 %or.cond, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end68
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i8* %name) nounwind
  br label %return

if.end80:                                         ; preds = %if.end68
  %width = getelementptr inbounds %struct.hashnode* %cond, i32 2, i32 1
  store i8* null, i8** %width, align 4, !tbaa !3
  %17 = getelementptr inbounds %struct.hashnode* %cond, i32 2, i32 0
  store %struct.hashnode* null, %struct.hashnode** %17, align 4, !tbaa !3
  br label %if.end91

if.then84:                                        ; preds = %cont15
  %call81 = tail call i8* @zshcalloc(i32 48) nounwind
  %old82 = getelementptr inbounds i8* %call81, i32 40
  %18 = bitcast i8* %old82 to %struct.param**
  store %struct.param* %3, %struct.param** %18, align 4, !tbaa !0
  %env = getelementptr inbounds %struct.hashnode* %cond, i32 2, i32 2
  %19 = bitcast i32* %env to i8**
  %20 = load i8** %19, align 4, !tbaa !0
  %tobool85 = icmp eq i8* %20, null
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then84
  %21 = getelementptr inbounds %struct.hashnode* %cond, i32 0, i32 1
  %22 = load i8** %21, align 4, !tbaa !0
  %call.i = tail call i32 @unsetenv(i8* %22) nounwind
  %23 = load i8** %19, align 4, !tbaa !0
  tail call void @zsfree(i8* %23) nounwind
  store i32 0, i32* %env, align 4, !tbaa !0
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.then86
  %24 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %removenode = getelementptr inbounds %struct.hashtable* %24, i32 0, i32 11
  %25 = load %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !0
  %call88 = tail call %struct.hashnode* %25(%struct.hashtable* %24, i8* %name) nounwind
  br label %if.end89

if.end89:                                         ; preds = %if.else.thread, %if.end87
  %.in = phi i8* [ %call81160, %if.else.thread ], [ %call81, %if.end87 ]
  %call81162 = phi i8* [ %call81160, %if.else.thread ], [ %call81, %if.end87 ]
  %26 = bitcast i8* %.in to %struct.param*
  %27 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %addnode = getelementptr inbounds %struct.hashtable* %27, i32 0, i32 8
  %28 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %call90 = tail call i8* @ztrdup(i8* %name) nounwind
  tail call void %28(%struct.hashtable* %27, i8* %call90, i8* %call81162) nounwind
  br label %if.end91

if.end91:                                         ; preds = %if.end89, %if.end80
  %pm.0 = phi %struct.param* [ %3, %if.end80 ], [ %26, %if.end89 ]
  %29 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %tobool93 = icmp eq i8 %29, 0
  br i1 %tobool93, label %cont115, label %cont98

cont98:                                           ; preds = %if.end91
  %and99 = and i32 %flags.addr.0, 536870912
  %tobool100 = icmp eq i32 %and99, 0
  %or106 = or i32 %flags.addr.0, 4096
  %or106.flags.addr.0 = select i1 %tobool100, i32 %or106, i32 %flags.addr.0
  br label %cont115

if.else108:                                       ; preds = %if.end
  %call109 = tail call i8* @hcalloc(i32 48) nounwind
  %30 = bitcast i8* %call109 to %struct.param*
  %nam = getelementptr inbounds i8* %call109, i32 4
  %31 = bitcast i8* %nam to i8**
  store i8* getelementptr inbounds ([0 x i8]* @nulstring, i32 0, i32 0), i8** %31, align 4, !tbaa !0
  br label %cont115

cont115:                                          ; preds = %cont98, %if.end91, %if.else108
  %flags.addr.1 = phi i32 [ %flags.addr.0, %if.end91 ], [ %flags.addr.0, %if.else108 ], [ %or106.flags.addr.0, %cont98 ]
  %pm.1 = phi %struct.param* [ %pm.0, %if.end91 ], [ %30, %if.else108 ], [ %pm.0, %cont98 ]
  %and116 = and i32 %flags.addr.1, -2097153
  %flags118 = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 0, i32 2
  store i32 %and116, i32* %flags118, align 4, !tbaa !3
  %and125 = and i32 %flags.addr.1, 4194304
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %if.then127, label %return

if.then127:                                       ; preds = %cont115
  %and.i = and i32 %flags.addr.1, 31
  switch i32 %and.i, label %return [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb19.i
    i32 4, label %sw.bb22.i
    i32 8, label %sw.bb22.i
    i32 1, label %sw.bb24.i
    i32 16, label %sw.bb26.i
  ]

sw.bb.i:                                          ; preds = %if.then127
  %s.i = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %s.i, align 4, !tbaa !0
  br label %return

sw.bb19.i:                                        ; preds = %if.then127
  %32 = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_integer* @stdinteger_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %32, align 4, !tbaa !0
  br label %return

sw.bb22.i:                                        ; preds = %if.then127, %if.then127
  %33 = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_float* @stdfloat_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %33, align 4, !tbaa !0
  br label %return

sw.bb24.i:                                        ; preds = %if.then127
  %34 = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_array* @stdarray_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %34, align 4, !tbaa !0
  br label %return

sw.bb26.i:                                        ; preds = %if.then127
  %35 = getelementptr inbounds %struct.param* %pm.1, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_hash* @stdhash_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %35, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb19.i, %sw.bb.i, %if.then127, %cont115, %cont62, %cont39, %land.lhs.true51, %if.then53, %if.then79
  %retval.0 = phi %struct.param* [ null, %if.then79 ], [ null, %if.then53 ], [ null, %land.lhs.true51 ], [ null, %cont39 ], [ null, %cont62 ], [ %pm.1, %cont115 ], [ %pm.1, %if.then127 ], [ %pm.1, %sw.bb.i ], [ %pm.1, %sw.bb19.i ], [ %pm.1, %sw.bb22.i ], [ %pm.1, %sw.bb24.i ], [ %pm.1, %sw.bb26.i ]
  ret %struct.param* %retval.0
}

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*)

declare void @zerr(i8*, ...)

declare i8* @zshcalloc(i32)

define void @delenv(%struct.param* nocapture %pm) nounwind {
entry:
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !0
  %call = tail call i32 @unsetenv(i8* %0) nounwind
  %env = getelementptr inbounds %struct.param* %pm, i32 0, i32 5
  %1 = load i8** %env, align 4, !tbaa !0
  tail call void @zsfree(i8* %1) nounwind
  store i8* null, i8** %env, align 4, !tbaa !0
  ret void
}

declare i8* @hcalloc(i32)

define %struct.param* @createspecialhash(i8* %name, %struct.hashnode* (%struct.hashtable*, i8*)* %get, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %scan, i32 %flags) nounwind {
entry:
  %or = or i32 %flags, 4194320
  %call = tail call %struct.param* @createparam(i8* %name, i32 %or)
  %tobool = icmp eq %struct.param* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %old = getelementptr inbounds %struct.param* %call, i32 0, i32 7
  %0 = load %struct.param** %old, align 4, !tbaa !0
  %tobool7 = icmp ne %struct.param* %0, null
  %1 = load i32* @locallevel, align 4, !tbaa !3
  %cond = select i1 %tobool7, i32 %1, i32 0
  %level = getelementptr inbounds %struct.param* %call, i32 0, i32 8
  store i32 %cond, i32* %level, align 4, !tbaa !3
  %and = and i32 %flags, 1024
  %tobool12 = icmp ne i32 %and, 0
  %2 = getelementptr inbounds %struct.param* %call, i32 0, i32 2, i32 0
  %cond13.c = select i1 %tobool12, %struct.gsu_scalar* bitcast (%struct.gsu_hash* @stdhash_gsu to %struct.gsu_scalar*), %struct.gsu_scalar* bitcast (%struct.gsu_hash* @nullsethash_gsu to %struct.gsu_scalar*)
  store %struct.gsu_scalar* %cond13.c, %struct.gsu_scalar** %2, align 4, !tbaa !0
  %call14 = tail call %struct.hashtable* @newhashtable(i32 0, i8* %name, void (%struct.hashtable*)* null) nounwind
  %u = getelementptr inbounds %struct.param* %call, i32 0, i32 1
  %hash = bitcast %union.anon* %u to %struct.hashtable**
  store %struct.hashtable* %call14, %struct.hashtable** %hash, align 4, !tbaa !0
  %hash15 = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash15, align 4, !tbaa !0
  %emptytable = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 5
  store void (%struct.hashtable*)* bitcast (void ()* @shempty to void (%struct.hashtable*)*), void (%struct.hashtable*)** %emptytable, align 4, !tbaa !0
  %filltable = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !0
  %addnode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* bitcast (void ()* @shempty to void (%struct.hashtable*, i8*, i8*)*), void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %getnode2 = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* %get, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* %get, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %removenode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* bitcast (void ()* @shempty to %struct.hashnode* (%struct.hashtable*, i8*)*), %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !0
  %disablenode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !0
  %enablenode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !0
  %freenode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 14
  store void (%struct.hashnode*)* bitcast (void ()* @shempty to void (%struct.hashnode*)*), void (%struct.hashnode*)** %freenode, align 4, !tbaa !0
  %printnode = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !0
  %scantab = getelementptr inbounds %struct.hashtable* %call14, i32 0, i32 16
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %scan, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.param* [ %call, %if.end ], [ null, %entry ]
  ret %struct.param* %retval.0
}

define internal void @shempty() nounwind readnone {
entry:
  ret void
}

define void @copyparam(%struct.param* nocapture %tpm, %struct.param* %pm, i32 %fakecopy) nounwind {
entry:
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %flags2 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 0, i32 2
  store i32 %0, i32* %flags2, align 4, !tbaa !3
  %base = getelementptr inbounds %struct.param* %pm, i32 0, i32 3
  %1 = load i32* %base, align 4, !tbaa !3
  %base3 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 3
  store i32 %1, i32* %base3, align 4, !tbaa !3
  %width = getelementptr inbounds %struct.param* %pm, i32 0, i32 4
  %2 = load i32* %width, align 4, !tbaa !3
  %width4 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 4
  store i32 %2, i32* %width4, align 4, !tbaa !3
  %level = getelementptr inbounds %struct.param* %pm, i32 0, i32 8
  %3 = load i32* %level, align 4, !tbaa !3
  %level5 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 8
  store i32 %3, i32* %level5, align 4, !tbaa !3
  %tobool = icmp ne i32 %fakecopy, 0
  br i1 %tobool, label %if.end, label %cont7

cont7:                                            ; preds = %entry
  %and = and i32 %0, -4194305
  store i32 %and, i32* %flags2, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont7, %entry
  %4 = load i32* %flags, align 4, !tbaa !3
  %and32 = and i32 %4, 31
  switch i32 %and32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb35
    i32 4, label %sw.bb41
    i32 8, label %sw.bb41
    i32 1, label %sw.bb46
    i32 16, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end
  %s = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  %5 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %getfn33 = bitcast %struct.gsu_scalar* %5 to i8* (%struct.param*)**
  %6 = load i8* (%struct.param*)** %getfn33, align 4, !tbaa !0
  %call = tail call i8* %6(%struct.param* %pm) nounwind
  %call34 = tail call i8* @ztrdup(i8* %call) nounwind
  %u = getelementptr inbounds %struct.param* %tpm, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  store i8* %call34, i8** %str, align 4, !tbaa !0
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %gsu36 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu36 to %struct.gsu_integer**
  %7 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %getfn37 = getelementptr inbounds %struct.gsu_integer* %7, i32 0, i32 0
  %8 = load i64 (%struct.param*)** %getfn37, align 4, !tbaa !0
  %call38 = tail call i64 %8(%struct.param* %pm) nounwind
  %val = getelementptr inbounds %struct.param* %tpm, i32 0, i32 1, i32 0
  store i64 %call38, i64* %val, align 4, !tbaa !4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end, %if.end
  %gsu42 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu42 to %struct.gsu_float**
  %9 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn43 = getelementptr inbounds %struct.gsu_float* %9, i32 0, i32 0
  %10 = load double (%struct.param*)** %getfn43, align 4, !tbaa !0
  %call44 = tail call double %10(%struct.param* %pm) nounwind
  %u45 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 1
  %dval = bitcast %union.anon* %u45 to double*
  store double %call44, double* %dval, align 4, !tbaa !5
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  %gsu47 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu47 to %struct.gsu_array**
  %11 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn48 = getelementptr inbounds %struct.gsu_array* %11, i32 0, i32 0
  %12 = load i8** (%struct.param*)** %getfn48, align 4, !tbaa !0
  %call49 = tail call i8** %12(%struct.param* %pm) nounwind
  %call50 = tail call i8** @zarrdup(i8** %call49) nounwind
  %u51 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 1
  %arr = bitcast %union.anon* %u51 to i8***
  store i8** %call50, i8*** %arr, align 4, !tbaa !0
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end
  %gsu53 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu53 to %struct.gsu_hash**
  %13 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn54 = getelementptr inbounds %struct.gsu_hash* %13, i32 0, i32 0
  %14 = load %struct.hashtable* (%struct.param*)** %getfn54, align 4, !tbaa !0
  %call55 = tail call %struct.hashtable* %14(%struct.param* %pm) nounwind
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %15 = load i8** %nam, align 4, !tbaa !0
  %hsize.i = getelementptr inbounds %struct.hashtable* %call55, i32 0, i32 0
  %16 = load i32* %hsize.i, align 4, !tbaa !3
  %tobool.i.i = icmp eq i32 %16, 0
  %.size.i.i = select i1 %tobool.i.i, i32 17, i32 %16
  %call.i.i = tail call %struct.hashtable* @newhashtable(i32 %.size.i.i, i8* %15, void (%struct.hashtable*)* null) nounwind
  %hash.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i.i, align 4, !tbaa !0
  %emptytable.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i.i, align 4, !tbaa !0
  %filltable.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i.i, align 4, !tbaa !0
  %cmpnodes.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i.i, align 4, !tbaa !0
  %addnode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i.i, align 4, !tbaa !0
  %getnode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i.i, align 4, !tbaa !0
  %getnode2.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i.i, align 4, !tbaa !0
  %removenode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i.i, align 4, !tbaa !0
  %disablenode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode.i.i, align 4, !tbaa !0
  %enablenode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode.i.i, align 4, !tbaa !0
  %freenode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode.i.i, align 4, !tbaa !0
  %printnode.i.i = getelementptr inbounds %struct.hashtable* %call.i.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode.i.i, align 4, !tbaa !0
  store %struct.hashtable* %call.i.i, %struct.hashtable** @outtable, align 4, !tbaa !0
  %call1.i = tail call i32 @scanhashtable(%struct.hashtable* %call55, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scancopyparams, i32 0) nounwind
  store %struct.hashtable* null, %struct.hashtable** @outtable, align 4, !tbaa !0
  %u58 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 1
  %hash = bitcast %union.anon* %u58 to %struct.hashtable**
  store %struct.hashtable* %call.i.i, %struct.hashtable** %hash, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb52, %sw.bb46, %sw.bb41, %sw.bb35, %sw.bb
  br i1 %tobool, label %if.end61, label %if.then60

if.then60:                                        ; preds = %sw.epilog
  %17 = load i32* %flags2, align 4, !tbaa !3
  %and.i = and i32 %17, 31
  switch i32 %and.i, label %if.end61 [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb19.i
    i32 4, label %sw.bb22.i
    i32 8, label %sw.bb22.i
    i32 1, label %sw.bb24.i
    i32 16, label %sw.bb26.i
  ]

sw.bb.i:                                          ; preds = %if.then60
  %s.i = getelementptr inbounds %struct.param* %tpm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %s.i, align 4, !tbaa !0
  br label %if.end61

sw.bb19.i:                                        ; preds = %if.then60
  %18 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_integer* @stdinteger_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %18, align 4, !tbaa !0
  br label %if.end61

sw.bb22.i:                                        ; preds = %if.then60, %if.then60
  %19 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_float* @stdfloat_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %19, align 4, !tbaa !0
  br label %if.end61

sw.bb24.i:                                        ; preds = %if.then60
  %20 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_array* @stdarray_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %20, align 4, !tbaa !0
  br label %if.end61

sw.bb26.i:                                        ; preds = %if.then60
  %21 = getelementptr inbounds %struct.param* %tpm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_hash* @stdhash_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %21, align 4, !tbaa !0
  br label %if.end61

if.end61:                                         ; preds = %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb19.i, %sw.bb.i, %if.then60, %sw.epilog
  ret void
}

declare i8** @zarrdup(i8**)

declare i8* @itype_end(i8*, i32, i32)

declare i8* @parse_subscript(i8*, i32, i32)

declare void @untokenize(i8*)

define i32 @getindex(i8** nocapture %pptr, %struct.value* %v, i32 %flags) nounwind {
entry:
  %inv = alloca i32, align 4
  %s = alloca i8*, align 4
  %we = alloca i64, align 8
  %dummy = alloca i64, align 8
  %startprevlen = alloca i32, align 4
  %startnextlen = alloca i32, align 4
  store i32 0, i32* %inv, align 4, !tbaa !3
  %0 = load i8** %pptr, align 4, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1
  store i8 91, i8* %0, align 1, !tbaa !1
  %and = and i32 %flags, 256
  %call = call i8* @parse_subscript(i8* %incdec.ptr, i32 %and, i32 93) nounwind
  store i8* %call, i8** %s, align 4, !tbaa !0
  %1 = load i8** %pptr, align 4, !tbaa !0
  %tbrack.0407 = getelementptr inbounds i8* %1, i32 1
  %2 = load i8* %tbrack.0407, align 1, !tbaa !1
  %tobool408 = icmp eq i8 %2, 0
  br i1 %tobool408, label %if.else, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.cond.backedge.land.rhs_crit_edge
  %3 = phi i8* [ %.pre, %for.cond.backedge.land.rhs_crit_edge ], [ %call, %entry ]
  %4 = phi i8 [ %13, %for.cond.backedge.land.rhs_crit_edge ], [ %2, %entry ]
  %tbrack.0410 = phi i8* [ %tbrack.0, %for.cond.backedge.land.rhs_crit_edge ], [ %tbrack.0407, %entry ]
  %.pn409 = phi i8* [ %tbrack.1, %for.cond.backedge.land.rhs_crit_edge ], [ %1, %entry ]
  %cmp = icmp eq i8* %tbrack.0410, %3
  br i1 %cmp, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %for.body
  %6 = sext i8 %4 to i64
  call void @__ioc_report_conversion(i32 1547, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %for.body
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16* %arrayidx, align 2, !tbaa !6
  %and13 = and i16 %7, 16384
  %tobool14 = icmp eq i16 %and13, 0
  br i1 %tobool14, label %cont7.if.end_crit_edge, label %land.lhs.true

cont7.if.end_crit_edge:                           ; preds = %cont7
  %.pre414 = load i8* %tbrack.0410, align 1, !tbaa !1
  br label %if.end

land.lhs.true:                                    ; preds = %cont7
  %incdec.ptr15 = getelementptr inbounds i8* %.pn409, i32 2
  %8 = load i8* %incdec.ptr15, align 1, !tbaa !1
  %tobool16 = icmp eq i8 %8, 0
  br i1 %tobool16, label %if.else, label %if.end

if.end:                                           ; preds = %cont7.if.end_crit_edge, %land.lhs.true
  %9 = phi i8 [ %8, %land.lhs.true ], [ %.pre414, %cont7.if.end_crit_edge ]
  %tbrack.1 = phi i8* [ %incdec.ptr15, %land.lhs.true ], [ %tbrack.0410, %cont7.if.end_crit_edge ]
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %if.end
  %11 = sext i8 %9 to i64
  call void @__ioc_report_conversion(i32 1550, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %if.end
  %idxprom20 = zext i8 %9 to i32
  %arrayidx21 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom20
  %12 = load i16* %arrayidx21, align 2, !tbaa !6
  %and27 = and i16 %12, 16
  %tobool28 = icmp eq i16 %and27, 0
  br i1 %tobool28, label %for.cond.backedge, label %if.then29

for.cond.backedge:                                ; preds = %cont19, %cont34
  %tbrack.0 = getelementptr inbounds i8* %tbrack.1, i32 1
  %13 = load i8* %tbrack.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %13, 0
  br i1 %tobool, label %if.else, label %for.cond.backedge.land.rhs_crit_edge

for.cond.backedge.land.rhs_crit_edge:             ; preds = %for.cond.backedge
  %.pre = load i8** %s, align 4, !tbaa !0
  br label %land.rhs

if.then29:                                        ; preds = %cont19
  %14 = load i8* %tbrack.1, align 1, !tbaa !1
  %conv30 = sext i8 %14 to i32
  call void @__ioc_report_conversion(i32 1551, i32 47, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv30, i32 -124)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb33, label %cont34

ioc_bb33:                                         ; preds = %if.then29
  %18 = sext i8 %14 to i64
  call void @__ioc_report_sub_overflow(i32 1551, i32 37, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %18, i64 -124, i8 13) nounwind
  br label %cont34

cont34:                                           ; preds = %if.then29, %ioc_bb33
  %arrayidx35 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %16
  %19 = load i8* %arrayidx35, align 1, !tbaa !1
  store i8 %19, i8* %tbrack.1, align 1, !tbaa !1
  br label %for.cond.backedge

for.end:                                          ; preds = %land.rhs
  %tobool38 = icmp eq i8 %4, 0
  br i1 %tobool38, label %if.else, label %ioc_bb40

ioc_bb40:                                         ; preds = %for.end
  call void @__ioc_report_conversion(i32 1555, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  store i8 -112, i8* %3, align 1, !tbaa !1
  %20 = load i8** %pptr, align 4, !tbaa !0
  %add.ptr43 = getelementptr inbounds i8* %20, i32 1
  store i8* %add.ptr43, i8** %s, align 4, !tbaa !0
  %21 = load i8* %add.ptr43, align 1, !tbaa !1
  switch i8 %21, label %if.else99 [
    i8 42, label %land.lhs.true52
    i8 64, label %land.lhs.true52
  ]

if.else:                                          ; preds = %for.cond.backedge, %land.lhs.true, %entry, %for.end
  %tbrack.2418 = phi i8* [ %3, %for.end ], [ %tbrack.0407, %entry ], [ %incdec.ptr15, %land.lhs.true ], [ %tbrack.0, %for.cond.backedge ]
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([18 x i8]* @.str32, i32 0, i32 0)) nounwind
  store i8* %tbrack.2418, i8** %pptr, align 4, !tbaa !0
  br label %return

land.lhs.true52:                                  ; preds = %ioc_bb40, %ioc_bb40
  %add.ptr53 = getelementptr inbounds i8* %20, i32 2
  %cmp54 = icmp eq i8* %add.ptr53, %3
  br i1 %cmp54, label %if.then56, label %if.else99

if.then56:                                        ; preds = %land.lhs.true52
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %22 = load i32* %isarr, align 4, !tbaa !3
  %tobool57 = icmp eq i32 %22, 0
  br i1 %tobool57, label %lor.lhs.false58, label %land.lhs.true80

lor.lhs.false58:                                  ; preds = %if.then56
  %tobool59 = icmp eq %struct.value* %v, null
  br i1 %tobool59, label %if.end93, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %lor.lhs.false58
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %23 = load %struct.param** %pm, align 4, !tbaa !0
  %tobool61 = icmp eq %struct.param* %23, null
  br i1 %tobool61, label %land.lhs.true80, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true60
  %flags64 = getelementptr inbounds %struct.param* %23, i32 0, i32 0, i32 2
  %24 = load i32* %flags64, align 4, !tbaa !3
  %and69 = and i32 %24, 33554432
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %lor.lhs.false71, label %land.lhs.true80

lor.lhs.false71:                                  ; preds = %lor.lhs.false62
  %nam = getelementptr inbounds %struct.param* %23, i32 0, i32 0, i32 1
  %25 = load i8** %nam, align 4, !tbaa !0
  %tobool74 = icmp eq i8* %25, null
  br i1 %tobool74, label %land.lhs.true80, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %26 = load i8* %25, align 1, !tbaa !1
  %tobool79 = icmp eq i8 %26, 0
  %cmp83 = icmp eq i8 %21, 64
  %or.cond419 = and i1 %tobool79, %cmp83
  br i1 %or.cond419, label %ioc_bb90, label %if.end93

land.lhs.true80:                                  ; preds = %lor.lhs.false71, %lor.lhs.false62, %land.lhs.true60, %if.then56
  %cmp83.old = icmp eq i8 %21, 64
  br i1 %cmp83.old, label %ioc_bb90, label %if.end93

ioc_bb90:                                         ; preds = %lor.lhs.false75, %land.lhs.true80
  call void @__ioc_report_shl_strict(i32 1564, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 -1, i64 15, i8 13) nounwind
  %27 = load i32* %isarr, align 4, !tbaa !3
  %or = or i32 %27, -32768
  store i32 %or, i32* %isarr, align 4, !tbaa !3
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false75, %lor.lhs.false58, %ioc_bb90, %land.lhs.true80
  %start94 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start94, align 4, !tbaa !3
  %end97 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end97, align 4, !tbaa !3
  %add.ptr98 = getelementptr inbounds i8* %20, i32 3
  store i8* %add.ptr98, i8** %s, align 4, !tbaa !0
  br label %cont308

if.else99:                                        ; preds = %ioc_bb40, %land.lhs.true52
  store i64 0, i64* %we, align 8, !tbaa !4
  %call100 = call fastcc i64 @getarg(i8** %s, i32* %inv, %struct.value* %v, i32 0, i64* %we, i32* %startprevlen, i32* %startnextlen)
  %call100.off = add i64 %call100, 2147483648
  %28 = icmp ult i64 %call100.off, 4294967296
  br i1 %28, label %cont103, label %ioc_bb102

ioc_bb102:                                        ; preds = %if.else99
  call void @__ioc_report_conversion(i32 1574, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call100, i8 1) nounwind
  br label %cont103

cont103:                                          ; preds = %ioc_bb102, %if.else99
  %conv104 = trunc i64 %call100 to i32
  %29 = load i32* %inv, align 4, !tbaa !3
  %tobool105 = icmp eq i32 %29, 0
  br i1 %tobool105, label %if.else219, label %if.then106

if.then106:                                       ; preds = %cont103
  %isarr107 = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %30 = load i32* %isarr107, align 4, !tbaa !3
  %tobool108 = icmp ne i32 %30, 0
  %cmp110 = icmp eq i32 %conv104, 0
  %or.cond = or i1 %tobool108, %cmp110
  br i1 %or.cond, label %if.end170, label %if.then112

if.then112:                                       ; preds = %if.then106
  %call113 = call i8* @getstrvalue(%struct.value* %v)
  %cmp114 = icmp sgt i32 %conv104, 0
  br i1 %cmp114, label %if.then116, label %if.else140

if.then116:                                       ; preds = %if.then112
  %31 = load i32* %startprevlen, align 4, !tbaa !3
  %add.ptr117.sum = sub i32 %conv104, %31
  %add.ptr118 = getelementptr inbounds i8* %call113, i32 %add.ptr117.sum
  call void @mb_metacharinit() nounwind
  %32 = load i8* %call113, align 1, !tbaa !1
  %tobool119400 = icmp eq i8 %32, 0
  br i1 %tobool119400, label %while.end, label %while.body

while.body:                                       ; preds = %if.then116, %while.cond.backedge
  %nstart.0402 = phi i32 [ %34, %while.cond.backedge ], [ 0, %if.then116 ]
  %p.0401 = phi i8* [ %add.ptr121, %while.cond.backedge ], [ %call113, %if.then116 ]
  %call120 = call i32 @mb_metacharlenconv(i8* %p.0401, i32* null) nounwind
  %add.ptr121 = getelementptr inbounds i8* %p.0401, i32 %call120
  %cmp122 = icmp ult i8* %add.ptr121, %add.ptr118
  br i1 %cmp122, label %if.then124, label %if.else127

if.then124:                                       ; preds = %while.body
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nstart.0402, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb125, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then124, %ioc_bb125
  %36 = load i8* %add.ptr121, align 1, !tbaa !1
  %tobool119 = icmp eq i8 %36, 0
  br i1 %tobool119, label %while.end, label %while.body

ioc_bb125:                                        ; preds = %if.then124
  %37 = sext i32 %nstart.0402 to i64
  call void @__ioc_report_add_overflow(i32 1598, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %while.cond.backedge

if.else127:                                       ; preds = %while.body
  %cmp128 = icmp eq i8* %add.ptr121, %add.ptr118
  br i1 %cmp128, label %if.then130, label %while.end

if.then130:                                       ; preds = %if.else127
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nstart.0402, i32 1)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb131, label %while.end

ioc_bb131:                                        ; preds = %if.then130
  %41 = sext i32 %nstart.0402 to i64
  call void @__ioc_report_add_overflow(i32 1601, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %41, i64 1, i8 13) nounwind
  br label %while.end

while.end:                                        ; preds = %if.then116, %while.cond.backedge, %if.else127, %ioc_bb131, %if.then130
  %p.1 = phi i8* [ %add.ptr118, %if.then130 ], [ %add.ptr118, %ioc_bb131 ], [ %add.ptr118, %if.else127 ], [ %call113, %if.then116 ], [ %add.ptr121, %while.cond.backedge ]
  %nstart.1 = phi i32 [ %39, %if.then130 ], [ %39, %ioc_bb131 ], [ %nstart.0402, %if.else127 ], [ 0, %if.then116 ], [ %34, %while.cond.backedge ]
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr118 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %p.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nstart.1, i32 %sub.ptr.sub)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb136, label %cont137

ioc_bb136:                                        ; preds = %while.end
  %45 = sext i32 %sub.ptr.sub to i64
  %46 = sext i32 %nstart.1 to i64
  call void @__ioc_report_add_overflow(i32 1609, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %46, i64 %45, i8 13) nounwind
  br label %cont137

cont137:                                          ; preds = %while.end, %ioc_bb136
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 1)
  %48 = extractvalue { i32, i1 } %47, 0
  %49 = extractvalue { i32, i1 } %47, 1
  br i1 %49, label %ioc_bb138, label %if.end170

ioc_bb138:                                        ; preds = %cont137
  %50 = sext i32 %43 to i64
  call void @__ioc_report_add_overflow(i32 1609, i32 41, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %50, i64 1, i8 13) nounwind
  br label %if.end170

if.else140:                                       ; preds = %if.then112
  %51 = icmp sgt i32 %conv104, -1
  br i1 %51, label %cont143, label %ioc_bb142

ioc_bb142:                                        ; preds = %if.else140
  %52 = sext i32 %conv104 to i64
  call void @__ioc_report_conversion(i32 1612, i32 29, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %52, i8 1) nounwind
  br label %cont143

cont143:                                          ; preds = %ioc_bb142, %if.else140
  %call144 = call i32 @strlen(i8* %call113) nounwind readonly
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv104, i32 %call144)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb145, label %if.else156

ioc_bb145:                                        ; preds = %cont143
  %56 = zext i32 %call144 to i64
  %57 = and i64 %call100, 4294967295
  call void @__ioc_report_add_overflow(i32 1612, i32 35, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %57, i64 %56, i8 5) nounwind
  br label %if.else156

if.else156:                                       ; preds = %ioc_bb145, %cont143
  call void @mb_metacharinit() nounwind
  %add.ptr158 = getelementptr inbounds i8* %call113, i32 %54
  %cmp159404 = icmp sgt i32 %54, 0
  br i1 %cmp159404, label %for.body161, label %for.end164

for.body161:                                      ; preds = %if.else156, %for.body161
  %p.2405 = phi i8* [ %add.ptr163, %for.body161 ], [ %call113, %if.else156 ]
  %call162 = call i32 @mb_metacharlenconv(i8* %p.2405, i32* null) nounwind
  %add.ptr163 = getelementptr inbounds i8* %p.2405, i32 %call162
  %cmp159 = icmp ult i8* %add.ptr163, %add.ptr158
  br i1 %cmp159, label %for.body161, label %for.end164

for.end164:                                       ; preds = %for.body161, %if.else156
  %p.2.lcssa = phi i8* [ %call113, %if.else156 ], [ %add.ptr163, %for.body161 ]
  %call165 = call i32 @mb_metastrlen(i8* %p.2.lcssa, i32 0) nounwind
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %call165)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb166, label %if.end170

ioc_bb166:                                        ; preds = %for.end164
  %61 = sext i32 %call165 to i64
  call void @__ioc_report_sub_overflow(i32 1624, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i64 0, i64 %61, i8 13) nounwind
  br label %if.end170

if.end170:                                        ; preds = %ioc_bb166, %for.end164, %ioc_bb138, %cont137, %if.then106
  %start.0 = phi i32 [ %conv104, %if.then106 ], [ %48, %cont137 ], [ %48, %ioc_bb138 ], [ %59, %for.end164 ], [ %59, %ioc_bb166 ]
  %cmp171 = icmp sgt i32 %start.0, 0
  br i1 %cmp171, label %land.lhs.true173, label %if.end189

land.lhs.true173:                                 ; preds = %if.end170
  %62 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool175 = icmp eq i8 %62, 0
  br i1 %tobool175, label %lor.lhs.false176, label %if.then186

lor.lhs.false176:                                 ; preds = %land.lhs.true173
  %pm177 = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %63 = load %struct.param** %pm177, align 4, !tbaa !0
  %flags179 = getelementptr inbounds %struct.param* %63, i32 0, i32 0, i32 2
  %64 = load i32* %flags179, align 4, !tbaa !3
  %and184 = and i32 %64, 16
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.end189, label %if.then186

if.then186:                                       ; preds = %lor.lhs.false176, %land.lhs.true173
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %start.0, i32 -1)
  %66 = extractvalue { i32, i1 } %65, 0
  %67 = extractvalue { i32, i1 } %65, 1
  br i1 %67, label %ioc_bb187, label %if.end189

ioc_bb187:                                        ; preds = %if.then186
  %68 = sext i32 %start.0 to i64
  call void @__ioc_report_add_overflow(i32 1629, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %68, i64 -1, i8 13) nounwind
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %lor.lhs.false176, %if.end170, %ioc_bb187
  %start.1 = phi i32 [ %66, %ioc_bb187 ], [ %start.0, %if.end170 ], [ %start.0, %lor.lhs.false176 ], [ %66, %if.then186 ]
  %69 = load i32* %isarr107, align 4, !tbaa !3
  %cmp195 = icmp eq i32 %69, 4
  br i1 %cmp195, label %if.end205, label %if.then197

if.then197:                                       ; preds = %if.end189
  %flags198 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %70 = load i32* %flags198, align 4, !tbaa !3
  %or199 = or i32 %70, 1
  store i32 %or199, i32* %flags198, align 4, !tbaa !3
  store i32 0, i32* %isarr107, align 4, !tbaa !3
  %start201 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 %start.1, i32* %start201, align 4, !tbaa !3
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %start.1, i32 1)
  %72 = extractvalue { i32, i1 } %71, 0
  %73 = extractvalue { i32, i1 } %71, 1
  br i1 %73, label %ioc_bb202, label %cont203

ioc_bb202:                                        ; preds = %if.then197
  %74 = sext i32 %start.1 to i64
  call void @__ioc_report_add_overflow(i32 1634, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %74, i64 1, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %if.then197, %ioc_bb202
  %end204 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 %72, i32* %end204, align 4, !tbaa !3
  br label %if.end205

if.end205:                                        ; preds = %if.end189, %cont203
  %75 = load i8** %s, align 4, !tbaa !0
  %76 = load i8* %75, align 1, !tbaa !1
  %cmp207 = icmp eq i8 %76, 44
  br i1 %cmp207, label %if.then209, label %if.end213

if.then209:                                       ; preds = %if.end205
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([18 x i8]* @.str32, i32 0, i32 0)) nounwind
  store i8 93, i8* %3, align 1, !tbaa !1
  %add.ptr212 = getelementptr inbounds i8* %3, i32 1
  store i8* %add.ptr212, i8** %pptr, align 4, !tbaa !0
  br label %return

if.end213:                                        ; preds = %if.end205
  %cmp214 = icmp eq i8* %75, %3
  br i1 %cmp214, label %if.then216, label %cont308

if.then216:                                       ; preds = %if.end213
  %incdec.ptr217 = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr217, i8** %s, align 4, !tbaa !0
  br label %cont308

if.else219:                                       ; preds = %cont103
  %77 = load i8** %s, align 4, !tbaa !0
  %78 = load i8* %77, align 1, !tbaa !1
  %cmp221 = icmp eq i8 %78, 44
  %conv222 = zext i1 %cmp221 to i32
  br i1 %cmp221, label %if.then223, label %if.else231

if.then223:                                       ; preds = %if.else219
  %incdec.ptr224 = getelementptr inbounds i8* %77, i32 1
  store i8* %incdec.ptr224, i8** %s, align 4, !tbaa !0
  %call225 = call fastcc i64 @getarg(i8** %s, i32* %inv, %struct.value* %v, i32 1, i64* %dummy, i32* null, i32* null)
  %call225.off = add i64 %call225, 2147483648
  %79 = icmp ult i64 %call225.off, 4294967296
  %extract.t397 = trunc i64 %call225 to i32
  br i1 %79, label %if.end239, label %ioc_bb228

ioc_bb228:                                        ; preds = %if.then223
  call void @__ioc_report_conversion(i32 1649, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call225, i8 1) nounwind
  br label %if.end239

if.else231:                                       ; preds = %if.else219
  %80 = load i64* %we, align 8, !tbaa !4
  %tobool232 = icmp eq i64 %80, 0
  %conv233 = sext i32 %conv104 to i64
  %cond = select i1 %tobool232, i64 %conv233, i64 %80
  %cond.off = add i64 %cond, 2147483648
  %81 = icmp ult i64 %cond.off, 4294967296
  %extract.t395 = trunc i64 %cond to i32
  br i1 %81, label %if.end239, label %ioc_bb236

ioc_bb236:                                        ; preds = %if.else231
  call void @__ioc_report_conversion(i32 1652, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %cond, i8 1) nounwind
  br label %if.end239

if.end239:                                        ; preds = %if.then223, %ioc_bb228, %if.else231, %ioc_bb236
  %call225.sink.off0 = phi i32 [ %extract.t395, %ioc_bb236 ], [ %extract.t395, %if.else231 ], [ %extract.t397, %ioc_bb228 ], [ %extract.t397, %if.then223 ]
  %cmp240 = icmp eq i32 %conv104, %call225.sink.off0
  %conv222. = select i1 %cmp240, i32 %conv222, i32 1
  %cmp244 = icmp sgt i32 %conv104, 0
  br i1 %cmp244, label %if.then246, label %if.else249

if.then246:                                       ; preds = %if.end239
  %82 = load i32* %startprevlen, align 4, !tbaa !3
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv104, i32 %82)
  %84 = extractvalue { i32, i1 } %83, 0
  %85 = extractvalue { i32, i1 } %83, 1
  br i1 %85, label %ioc_bb247, label %if.end265

ioc_bb247:                                        ; preds = %if.then246
  %86 = sext i32 %82 to i64
  %87 = sext i32 %conv104 to i64
  call void @__ioc_report_sub_overflow(i32 1662, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %87, i64 %86, i8 13) nounwind
  br label %if.end265

if.else249:                                       ; preds = %if.end239
  %88 = or i32 %call225.sink.off0, %conv104
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %if.then255, label %if.end265

if.then255:                                       ; preds = %if.else249
  %90 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 94), align 1, !tbaa !1
  %tobool256 = icmp eq i8 %90, 0
  br i1 %tobool256, label %if.else258, label %if.then257

if.then257:                                       ; preds = %if.then255
  %91 = load i32* %startnextlen, align 4, !tbaa !3
  br label %if.end265

if.else258:                                       ; preds = %if.then255
  %flags259 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %92 = load i32* %flags259, align 4, !tbaa !3
  %or260 = or i32 %92, 2
  store i32 %or260, i32* %flags259, align 4, !tbaa !3
  br label %if.end265

if.end265:                                        ; preds = %if.else249, %if.then246, %ioc_bb247, %if.else258, %if.then257
  %end.1 = phi i32 [ %91, %if.then257 ], [ %call225.sink.off0, %if.else258 ], [ %call225.sink.off0, %ioc_bb247 ], [ %call225.sink.off0, %if.then246 ], [ %call225.sink.off0, %if.else249 ]
  %start.2 = phi i32 [ %conv104, %if.then257 ], [ -1, %if.else258 ], [ %84, %ioc_bb247 ], [ %84, %if.then246 ], [ %conv104, %if.else249 ]
  %com.1 = phi i32 [ %conv222., %if.then257 ], [ 1, %if.else258 ], [ %conv222., %ioc_bb247 ], [ %conv222., %if.then246 ], [ %conv222., %if.else249 ]
  %93 = load i8** %s, align 4, !tbaa !0
  %cmp266 = icmp eq i8* %93, %3
  br i1 %cmp266, label %if.then268, label %if.else303

if.then268:                                       ; preds = %if.end265
  %incdec.ptr269 = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr269, i8** %s, align 4, !tbaa !0
  %isarr270 = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %94 = load i32* %isarr270, align 4, !tbaa !3
  %tobool271 = icmp ne i32 %94, 0
  %tobool273 = icmp eq i32 %com.1, 0
  %or.cond393 = and i1 %tobool271, %tobool273
  br i1 %or.cond393, label %cont279, label %if.end300

cont279:                                          ; preds = %if.then268
  %and280 = and i32 %94, 32
  %tobool281 = icmp eq i32 %and280, 0
  %and296 = and i32 %94, 152
  %tobool297 = icmp eq i32 %and296, 0
  %or.cond394 = or i1 %tobool281, %tobool297
  br i1 %or.cond394, label %if.then298, label %if.end300

if.then298:                                       ; preds = %cont279
  store i32 0, i32* %isarr270, align 4, !tbaa !3
  br label %if.end300

if.end300:                                        ; preds = %cont279, %if.then268, %if.then298
  %start301 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 %start.2, i32* %start301, align 4, !tbaa !3
  %end302 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 %end.1, i32* %end302, align 4, !tbaa !3
  br label %cont308

if.else303:                                       ; preds = %if.end265
  %95 = load i8** %pptr, align 4, !tbaa !0
  store i8* %95, i8** %s, align 4, !tbaa !0
  br label %cont308

cont308:                                          ; preds = %if.end93, %if.end300, %if.else303, %if.end213, %if.then216
  store i8 93, i8* %3, align 1, !tbaa !1
  %96 = load i8** %s, align 4, !tbaa !0
  store i8* %96, i8** %pptr, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cont308, %if.then209, %if.else
  %retval.0 = phi i32 [ 0, %cont308 ], [ 1, %if.then209 ], [ 1, %if.else ]
  ret i32 %retval.0
}

define internal fastcc i64 @getarg(i8** nocapture %str, i32* nocapture %inv, %struct.value* %v, i32 %a2, i64* nocapture %w, i32* %prevcharlen, i32* %nextcharlen) nounwind {
entry:
  %arglen = alloca i32, align 4
  %s = alloca i8*, align 4
  %d = alloca i8*, align 4
  %waste = alloca i32, align 4
  %0 = load i8** %str, align 4, !tbaa !0
  store i8* %0, i8** %s, align 4, !tbaa !0
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %2 = load %struct.param** %pm, align 4, !tbaa !0
  %tobool1 = icmp eq %struct.param* %2, null
  br i1 %tobool1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.param* %2, i32 0, i32 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %3, 31
  %cmp = icmp eq i32 %and, 16
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %4 = phi i1 [ false, %if.end ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %tobool25 = icmp ne i32* %prevcharlen, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.end
  store i32 1, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.end
  %tobool28 = icmp ne i32* %nextcharlen, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 1, i32* %nextcharlen, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  br i1 %tobool1, label %if.end132, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %5 = load i8* %0, align 1, !tbaa !1
  %cmp33 = icmp eq i8 %5, 40
  br i1 %cmp33, label %for.cond.preheader, label %ioc_bb36

ioc_bb36:                                         ; preds = %land.lhs.true
  call void @__ioc_report_conversion(i32 950, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp38 = icmp eq i8 %5, -120
  br i1 %cmp38, label %ioc_bb36.for.cond.preheader_crit_edge, label %if.end132

ioc_bb36.for.cond.preheader_crit_edge:            ; preds = %ioc_bb36
  %.pn1813.pre = load i8** %s, align 4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ioc_bb36.for.cond.preheader_crit_edge, %land.lhs.true
  %.pn1813 = phi i8* [ %.pn1813.pre, %ioc_bb36.for.cond.preheader_crit_edge ], [ %0, %land.lhs.true ]
  %storemerge1814 = getelementptr inbounds i8* %.pn1813, i32 1
  store i8* %storemerge1814, i8** %s, align 4
  %6 = load i8* %storemerge1814, align 1, !tbaa !1
  %cmp421815 = icmp eq i8 %6, 41
  br i1 %cmp421815, label %for.end, label %ioc_bb46

ioc_bb46:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %7 = phi i8 [ %10, %for.cond.backedge ], [ %6, %for.cond.preheader ]
  %hasbeg.01826 = phi i32 [ %hasbeg.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %word.01825 = phi i32 [ %word.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %escapes.01824 = phi i32 [ %escapes.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %quote_arg.01823 = phi i64 [ %quote_arg.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %beg.01822 = phi i64 [ %beg.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %num.01821 = phi i64 [ %num.0.be, %for.cond.backedge ], [ 1, %for.cond.preheader ]
  %rev.01820 = phi i32 [ %rev.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %sep.01819 = phi i8* [ %sep.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %keymatch.01818 = phi i32 [ %keymatch.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %ind.01817 = phi i32 [ %ind.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %down.01816 = phi i32 [ %down.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  call void @__ioc_report_conversion(i32 953, i32 48, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp48 = icmp eq i8 %7, -119
  %.pre1890 = load i8** %s, align 4, !tbaa !0
  br i1 %cmp48, label %for.end, label %land.end53

land.end53:                                       ; preds = %ioc_bb46
  %8 = load i8** %str, align 4, !tbaa !0
  %cmp51 = icmp eq i8* %.pre1890, %8
  br i1 %cmp51, label %if.end125, label %for.body

for.body:                                         ; preds = %land.end53
  %9 = load i8* %.pre1890, align 1, !tbaa !1
  %conv55 = sext i8 %9 to i32
  switch i32 %conv55, label %flagerr [
    i32 114, label %for.cond.backedge
    i32 82, label %sw.bb56
    i32 107, label %sw.bb57
    i32 75, label %sw.bb58
    i32 105, label %sw.bb59
    i32 73, label %sw.bb60
    i32 119, label %sw.bb61
    i32 102, label %sw.bb62
    i32 101, label %sw.bb63
    i32 110, label %sw.bb64
    i32 98, label %sw.bb77
    i32 112, label %sw.bb95
    i32 115, label %sw.bb96
  ]

for.cond.backedge:                                ; preds = %for.body, %sw.bb56, %sw.bb57, %sw.bb58, %sw.bb59, %sw.bb60, %sw.bb61, %sw.bb62, %sw.bb63, %cont70, %if.end92, %sw.bb95, %cond.end, %flagerr
  %.pn = phi i8* [ %add.ptr118, %flagerr ], [ %add.ptr117, %cond.end ], [ %.pre1890, %sw.bb95 ], [ %add.ptr94, %if.end92 ], [ %add.ptr76, %cont70 ], [ %.pre1890, %sw.bb63 ], [ %.pre1890, %sw.bb62 ], [ %.pre1890, %sw.bb61 ], [ %.pre1890, %sw.bb60 ], [ %.pre1890, %sw.bb59 ], [ %.pre1890, %sw.bb58 ], [ %.pre1890, %sw.bb57 ], [ %.pre1890, %sw.bb56 ], [ %.pre1890, %for.body ]
  %down.0.be = phi i32 [ 0, %flagerr ], [ %down.01816, %cond.end ], [ %down.01816, %sw.bb95 ], [ %down.01816, %if.end92 ], [ %down.01816, %cont70 ], [ %down.01816, %sw.bb63 ], [ %down.01816, %sw.bb62 ], [ %down.01816, %sw.bb61 ], [ 1, %sw.bb60 ], [ 0, %sw.bb59 ], [ 1, %sw.bb58 ], [ 0, %sw.bb57 ], [ 1, %sw.bb56 ], [ 0, %for.body ]
  %ind.0.be = phi i32 [ 0, %flagerr ], [ %ind.01817, %cond.end ], [ %ind.01817, %sw.bb95 ], [ %ind.01817, %if.end92 ], [ %ind.01817, %cont70 ], [ %ind.01817, %sw.bb63 ], [ %ind.01817, %sw.bb62 ], [ %ind.01817, %sw.bb61 ], [ 1, %sw.bb60 ], [ 1, %sw.bb59 ], [ 0, %sw.bb58 ], [ 0, %sw.bb57 ], [ 0, %sw.bb56 ], [ 0, %for.body ]
  %keymatch.0.be = phi i32 [ 0, %flagerr ], [ %keymatch.01818, %cond.end ], [ %keymatch.01818, %sw.bb95 ], [ %keymatch.01818, %if.end92 ], [ %keymatch.01818, %cont70 ], [ %keymatch.01818, %sw.bb63 ], [ %keymatch.01818, %sw.bb62 ], [ %keymatch.01818, %sw.bb61 ], [ 0, %sw.bb60 ], [ 0, %sw.bb59 ], [ %land.ext, %sw.bb58 ], [ %land.ext, %sw.bb57 ], [ 0, %sw.bb56 ], [ 0, %for.body ]
  %sep.0.be = phi i8* [ null, %flagerr ], [ %cond, %cond.end ], [ %sep.01819, %sw.bb95 ], [ %sep.01819, %if.end92 ], [ %sep.01819, %cont70 ], [ %sep.01819, %sw.bb63 ], [ getelementptr inbounds ([2 x i8]* @.str87, i32 0, i32 0), %sw.bb62 ], [ %sep.01819, %sw.bb61 ], [ %sep.01819, %sw.bb60 ], [ %sep.01819, %sw.bb59 ], [ %sep.01819, %sw.bb58 ], [ %sep.01819, %sw.bb57 ], [ %sep.01819, %sw.bb56 ], [ %sep.01819, %for.body ]
  %rev.0.be = phi i32 [ 0, %flagerr ], [ %rev.01820, %cond.end ], [ %rev.01820, %sw.bb95 ], [ %rev.01820, %if.end92 ], [ %rev.01820, %cont70 ], [ %rev.01820, %sw.bb63 ], [ %rev.01820, %sw.bb62 ], [ %rev.01820, %sw.bb61 ], [ 1, %sw.bb60 ], [ 1, %sw.bb59 ], [ 1, %sw.bb58 ], [ 1, %sw.bb57 ], [ 1, %sw.bb56 ], [ 1, %for.body ]
  %num.0.be = phi i64 [ 1, %flagerr ], [ %num.01821, %cond.end ], [ %num.01821, %sw.bb95 ], [ %num.01821, %if.end92 ], [ %.call71, %cont70 ], [ %num.01821, %sw.bb63 ], [ %num.01821, %sw.bb62 ], [ %num.01821, %sw.bb61 ], [ %num.01821, %sw.bb60 ], [ %num.01821, %sw.bb59 ], [ %num.01821, %sw.bb58 ], [ %num.01821, %sw.bb57 ], [ %num.01821, %sw.bb56 ], [ %num.01821, %for.body ]
  %beg.0.be = phi i64 [ %beg.01822, %flagerr ], [ %beg.01822, %cond.end ], [ %beg.01822, %sw.bb95 ], [ %beg.1, %if.end92 ], [ %beg.01822, %cont70 ], [ %beg.01822, %sw.bb63 ], [ %beg.01822, %sw.bb62 ], [ %beg.01822, %sw.bb61 ], [ %beg.01822, %sw.bb60 ], [ %beg.01822, %sw.bb59 ], [ %beg.01822, %sw.bb58 ], [ %beg.01822, %sw.bb57 ], [ %beg.01822, %sw.bb56 ], [ %beg.01822, %for.body ]
  %quote_arg.0.be = phi i64 [ %quote_arg.01823, %flagerr ], [ %quote_arg.01823, %cond.end ], [ %quote_arg.01823, %sw.bb95 ], [ %quote_arg.01823, %if.end92 ], [ %quote_arg.01823, %cont70 ], [ 1, %sw.bb63 ], [ %quote_arg.01823, %sw.bb62 ], [ %quote_arg.01823, %sw.bb61 ], [ %quote_arg.01823, %sw.bb60 ], [ %quote_arg.01823, %sw.bb59 ], [ %quote_arg.01823, %sw.bb58 ], [ %quote_arg.01823, %sw.bb57 ], [ %quote_arg.01823, %sw.bb56 ], [ %quote_arg.01823, %for.body ]
  %escapes.0.be = phi i32 [ %escapes.01824, %flagerr ], [ %escapes.01824, %cond.end ], [ 1, %sw.bb95 ], [ %escapes.01824, %if.end92 ], [ %escapes.01824, %cont70 ], [ %escapes.01824, %sw.bb63 ], [ %escapes.01824, %sw.bb62 ], [ %escapes.01824, %sw.bb61 ], [ %escapes.01824, %sw.bb60 ], [ %escapes.01824, %sw.bb59 ], [ %escapes.01824, %sw.bb58 ], [ %escapes.01824, %sw.bb57 ], [ %escapes.01824, %sw.bb56 ], [ %escapes.01824, %for.body ]
  %word.0.be = phi i32 [ 0, %flagerr ], [ %word.01825, %cond.end ], [ %word.01825, %sw.bb95 ], [ %word.01825, %if.end92 ], [ %word.01825, %cont70 ], [ %word.01825, %sw.bb63 ], [ 1, %sw.bb62 ], [ 1, %sw.bb61 ], [ %word.01825, %sw.bb60 ], [ %word.01825, %sw.bb59 ], [ %word.01825, %sw.bb58 ], [ %word.01825, %sw.bb57 ], [ %word.01825, %sw.bb56 ], [ %word.01825, %for.body ]
  %hasbeg.0.be = phi i32 [ %hasbeg.1, %flagerr ], [ %hasbeg.01826, %cond.end ], [ %hasbeg.01826, %sw.bb95 ], [ 1, %if.end92 ], [ %hasbeg.01826, %cont70 ], [ %hasbeg.01826, %sw.bb63 ], [ %hasbeg.01826, %sw.bb62 ], [ %hasbeg.01826, %sw.bb61 ], [ %hasbeg.01826, %sw.bb60 ], [ %hasbeg.01826, %sw.bb59 ], [ %hasbeg.01826, %sw.bb58 ], [ %hasbeg.01826, %sw.bb57 ], [ %hasbeg.01826, %sw.bb56 ], [ %hasbeg.01826, %for.body ]
  %storemerge = getelementptr inbounds i8* %.pn, i32 1
  store i8* %storemerge, i8** %s, align 4
  %10 = load i8* %storemerge, align 1, !tbaa !1
  %cmp42 = icmp eq i8 %10, 41
  br i1 %cmp42, label %for.end, label %ioc_bb46

sw.bb56:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb57:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb58:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb59:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb60:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb61:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb62:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb63:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb64:                                          ; preds = %for.body
  %incdec.ptr65 = getelementptr inbounds i8* %.pre1890, i32 1
  store i8* %incdec.ptr65, i8** %s, align 4, !tbaa !0
  %call = call i8* @get_strarg(i8* %incdec.ptr65, i32* %arglen) nounwind
  %11 = load i8* %call, align 1, !tbaa !1
  %tobool66 = icmp eq i8 %11, 0
  br i1 %tobool66, label %flagerr, label %cont70

cont70:                                           ; preds = %sw.bb64
  store i8 0, i8* %call, align 1, !tbaa !1
  %12 = load i8** %s, align 4, !tbaa !0
  %13 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %12, i32 %13
  %call71 = call i64 @mathevalarg(i8* %add.ptr, i8** %d) nounwind
  %tobool72 = icmp eq i64 %call71, 0
  %.call71 = select i1 %tobool72, i64 1, i64 %call71
  store i8 %11, i8* %call, align 1, !tbaa !1
  %14 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr75.sum = add i32 %14, -1
  %add.ptr76 = getelementptr inbounds i8* %call, i32 %add.ptr75.sum
  store i8* %add.ptr76, i8** %s, align 4, !tbaa !0
  br label %for.cond.backedge

sw.bb77:                                          ; preds = %for.body
  %incdec.ptr78 = getelementptr inbounds i8* %.pre1890, i32 1
  store i8* %incdec.ptr78, i8** %s, align 4, !tbaa !0
  %call79 = call i8* @get_strarg(i8* %incdec.ptr78, i32* %arglen) nounwind
  %15 = load i8* %call79, align 1, !tbaa !1
  %tobool80 = icmp eq i8 %15, 0
  br i1 %tobool80, label %flagerr, label %cont84

cont84:                                           ; preds = %sw.bb77
  store i8 0, i8* %call79, align 1, !tbaa !1
  %16 = load i8** %s, align 4, !tbaa !0
  %17 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr85 = getelementptr inbounds i8* %16, i32 %17
  %call86 = call i64 @mathevalarg(i8* %add.ptr85, i8** %d) nounwind
  %cmp87 = icmp sgt i64 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end92

if.then89:                                        ; preds = %cont84
  %18 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %call86, i64 -1)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %ioc_bb90, label %if.end92

ioc_bb90:                                         ; preds = %if.then89
  call void @__ioc_report_add_overflow(i32 1034, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %call86, i64 -1, i8 14) nounwind
  br label %if.end92

if.end92:                                         ; preds = %ioc_bb90, %if.then89, %cont84
  %beg.1 = phi i64 [ %call86, %cont84 ], [ %19, %if.then89 ], [ %19, %ioc_bb90 ]
  store i8 %15, i8* %call79, align 1, !tbaa !1
  %21 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr93.sum = add i32 %21, -1
  %add.ptr94 = getelementptr inbounds i8* %call79, i32 %add.ptr93.sum
  store i8* %add.ptr94, i8** %s, align 4, !tbaa !0
  br label %for.cond.backedge

sw.bb95:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb96:                                          ; preds = %for.body
  %incdec.ptr97 = getelementptr inbounds i8* %.pre1890, i32 1
  store i8* %incdec.ptr97, i8** %s, align 4, !tbaa !0
  %call98 = call i8* @get_strarg(i8* %incdec.ptr97, i32* %arglen) nounwind
  %22 = load i8* %call98, align 1, !tbaa !1
  %tobool99 = icmp eq i8 %22, 0
  br i1 %tobool99, label %flagerr, label %cont103

cont103:                                          ; preds = %sw.bb96
  store i8 0, i8* %call98, align 1, !tbaa !1
  %23 = load i32* %arglen, align 4, !tbaa !3
  %24 = load i8** %s, align 4, !tbaa !0
  %add.ptr104 = getelementptr inbounds i8* %24, i32 %23
  store i8* %add.ptr104, i8** %s, align 4, !tbaa !0
  %tobool105 = icmp eq i32 %escapes.01824, 0
  br i1 %tobool105, label %cond.false, label %cont113

cont113:                                          ; preds = %cont103
  %call114 = call i8* @getkeystring(i8* %add.ptr104, i32* %waste, i32 3, i32* null) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont103
  %call115 = call i8* @dupstring(i8* %add.ptr104) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cont113
  %cond = phi i8* [ %call114, %cont113 ], [ %call115, %cond.false ]
  store i8 %22, i8* %call98, align 1, !tbaa !1
  %25 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr116.sum = add i32 %25, -1
  %add.ptr117 = getelementptr inbounds i8* %call98, i32 %add.ptr116.sum
  store i8* %add.ptr117, i8** %s, align 4, !tbaa !0
  br label %for.cond.backedge

flagerr:                                          ; preds = %sw.bb96, %sw.bb77, %sw.bb64, %for.body
  %hasbeg.1 = phi i32 [ %hasbeg.01826, %for.body ], [ %hasbeg.01826, %sw.bb64 ], [ 1, %sw.bb77 ], [ %hasbeg.01826, %sw.bb96 ]
  %26 = load i8** %str, align 4, !tbaa !0
  %add.ptr118 = getelementptr inbounds i8* %26, i32 -1
  store i8* %add.ptr118, i8** %s, align 4, !tbaa !0
  br label %for.cond.backedge

for.end:                                          ; preds = %ioc_bb46, %for.cond.preheader, %for.cond.backedge
  %27 = phi i8* [ %storemerge1814, %for.cond.preheader ], [ %storemerge, %for.cond.backedge ], [ %.pre1890, %ioc_bb46 ]
  %hasbeg.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %hasbeg.0.be, %for.cond.backedge ], [ %hasbeg.01826, %ioc_bb46 ]
  %word.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %word.0.be, %for.cond.backedge ], [ %word.01825, %ioc_bb46 ]
  %quote_arg.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %quote_arg.0.be, %for.cond.backedge ], [ %quote_arg.01823, %ioc_bb46 ]
  %beg.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %beg.0.be, %for.cond.backedge ], [ %beg.01822, %ioc_bb46 ]
  %num.0.lcssa = phi i64 [ 1, %for.cond.preheader ], [ %num.0.be, %for.cond.backedge ], [ %num.01821, %ioc_bb46 ]
  %rev.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %rev.0.be, %for.cond.backedge ], [ %rev.01820, %ioc_bb46 ]
  %sep.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %sep.0.be, %for.cond.backedge ], [ %sep.01819, %ioc_bb46 ]
  %keymatch.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %keymatch.0.be, %for.cond.backedge ], [ %keymatch.01818, %ioc_bb46 ]
  %ind.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %ind.0.be, %for.cond.backedge ], [ %ind.01817, %ioc_bb46 ]
  %down.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %down.0.be, %for.cond.backedge ], [ %down.01816, %ioc_bb46 ]
  %.pre1891 = load i8** %str, align 4, !tbaa !0
  %cmp120 = icmp eq i8* %27, %.pre1891
  br i1 %cmp120, label %if.end125, label %if.then122

if.then122:                                       ; preds = %for.end
  %incdec.ptr123 = getelementptr inbounds i8* %27, i32 1
  store i8* %incdec.ptr123, i8** %s, align 4, !tbaa !0
  br label %if.end125

if.end125:                                        ; preds = %land.end53, %for.end, %if.then122
  %down.017931904 = phi i32 [ %down.0.lcssa, %for.end ], [ %down.0.lcssa, %if.then122 ], [ %down.01816, %land.end53 ]
  %ind.017951903 = phi i32 [ %ind.0.lcssa, %for.end ], [ %ind.0.lcssa, %if.then122 ], [ %ind.01817, %land.end53 ]
  %keymatch.017971902 = phi i32 [ %keymatch.0.lcssa, %for.end ], [ %keymatch.0.lcssa, %if.then122 ], [ %keymatch.01818, %land.end53 ]
  %sep.017991901 = phi i8* [ %sep.0.lcssa, %for.end ], [ %sep.0.lcssa, %if.then122 ], [ %sep.01819, %land.end53 ]
  %rev.018011900 = phi i32 [ %rev.0.lcssa, %for.end ], [ %rev.0.lcssa, %if.then122 ], [ %rev.01820, %land.end53 ]
  %num.018031899 = phi i64 [ %num.0.lcssa, %for.end ], [ %num.0.lcssa, %if.then122 ], [ %num.01821, %land.end53 ]
  %beg.018051898 = phi i64 [ %beg.0.lcssa, %for.end ], [ %beg.0.lcssa, %if.then122 ], [ %beg.01822, %land.end53 ]
  %quote_arg.018071897 = phi i64 [ %quote_arg.0.lcssa, %for.end ], [ %quote_arg.0.lcssa, %if.then122 ], [ %quote_arg.01823, %land.end53 ]
  %word.018091896 = phi i32 [ %word.0.lcssa, %for.end ], [ %word.0.lcssa, %if.then122 ], [ %word.01825, %land.end53 ]
  %hasbeg.018111895 = phi i32 [ %hasbeg.0.lcssa, %for.end ], [ %hasbeg.0.lcssa, %if.then122 ], [ %hasbeg.01826, %land.end53 ]
  %cmp126 = icmp slt i64 %num.018031899, 0
  br i1 %cmp126, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.end125
  %28 = xor i32 %down.017931904, 1
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %num.018031899)
  %30 = extractvalue { i64, i1 } %29, 0
  %31 = extractvalue { i64, i1 } %29, 1
  br i1 %31, label %ioc_bb130, label %if.end132

ioc_bb130:                                        ; preds = %if.then128
  call void @__ioc_report_sub_overflow(i32 1074, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i64 0, i64 %num.018031899, i8 14) nounwind
  br label %if.end132

if.end132:                                        ; preds = %if.end30, %ioc_bb36, %ioc_bb130, %if.then128, %if.end125
  %hasbeg.31682 = phi i32 [ %hasbeg.018111895, %if.end125 ], [ %hasbeg.018111895, %if.then128 ], [ %hasbeg.018111895, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %word.21681 = phi i32 [ %word.018091896, %if.end125 ], [ %word.018091896, %if.then128 ], [ %word.018091896, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %quote_arg.21680 = phi i64 [ %quote_arg.018071897, %if.end125 ], [ %quote_arg.018071897, %if.then128 ], [ %quote_arg.018071897, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %beg.31679 = phi i64 [ %beg.018051898, %if.end125 ], [ %beg.018051898, %if.then128 ], [ %beg.018051898, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %rev.21678 = phi i32 [ %rev.018011900, %if.end125 ], [ %rev.018011900, %if.then128 ], [ %rev.018011900, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %sep.21676 = phi i8* [ %sep.017991901, %if.end125 ], [ %sep.017991901, %if.then128 ], [ %sep.017991901, %ioc_bb130 ], [ null, %ioc_bb36 ], [ null, %if.end30 ]
  %keymatch.21675 = phi i32 [ %keymatch.017971902, %if.end125 ], [ %keymatch.017971902, %if.then128 ], [ %keymatch.017971902, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %ind.21674 = phi i32 [ %ind.017951903, %if.end125 ], [ %ind.017951903, %if.then128 ], [ %ind.017951903, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %down.3 = phi i32 [ %down.017931904, %if.end125 ], [ %28, %if.then128 ], [ %28, %ioc_bb130 ], [ 0, %ioc_bb36 ], [ 0, %if.end30 ]
  %num.4 = phi i64 [ %num.018031899, %if.end125 ], [ %30, %if.then128 ], [ %30, %ioc_bb130 ], [ 1, %ioc_bb36 ], [ 1, %if.end30 ]
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %32 = load i32* %isarr, align 4, !tbaa !3
  %and137 = and i32 %32, 2
  %tobool138 = icmp eq i32 %and137, 0
  br i1 %tobool138, label %if.else, label %if.then139

if.then139:                                       ; preds = %if.end132
  %tobool140 = icmp eq i32 %ind.21674, 0
  br i1 %tobool140, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then139
  %and146 = and i32 %32, 1
  %lnot148 = icmp eq i32 %and146, 0
  br label %lor.end

lor.end:                                          ; preds = %if.then139, %lor.rhs
  %33 = phi i1 [ true, %if.then139 ], [ %lnot148, %lor.rhs ]
  %lor.ext = zext i1 %33 to i32
  store i32 %lor.ext, i32* %inv, align 4, !tbaa !3
  br label %if.end201

if.else:                                          ; preds = %if.end132
  %and155 = and i32 %32, 1
  %tobool156 = icmp eq i32 %and155, 0
  br i1 %tobool156, label %if.else158, label %if.then157

if.then157:                                       ; preds = %if.else
  store i32 0, i32* %inv, align 4, !tbaa !3
  br label %if.end201

if.else158:                                       ; preds = %if.else
  %tobool160 = icmp eq i32 %32, 0
  br i1 %tobool160, label %if.end199, label %if.then161

if.then161:                                       ; preds = %if.else158
  %tobool162 = icmp eq i32 %ind.21674, 0
  br i1 %tobool162, label %if.else175, label %cont167

cont167:                                          ; preds = %if.then161
  %or = and i32 %32, -4
  %and174 = or i32 %or, 2
  store i32 %and174, i32* %isarr, align 4, !tbaa !3
  br label %if.end185

if.else175:                                       ; preds = %if.then161
  %tobool176 = icmp eq i32 %rev.21678, 0
  br i1 %tobool176, label %if.end185, label %cont181

cont181:                                          ; preds = %if.else175
  %or183 = or i32 %32, 1
  store i32 %or183, i32* %isarr, align 4, !tbaa !3
  br label %if.end185

if.end185:                                        ; preds = %if.else175, %cont181, %cont167
  %34 = phi i32 [ %32, %if.else175 ], [ %or183, %cont181 ], [ %and174, %cont167 ]
  %tobool186 = icmp ne i32 %down.3, 0
  %tobool188 = icmp eq i32 %keymatch.21675, 0
  %or.cond = or i1 %tobool186, %tobool188
  %.not = xor i1 %4, true
  %brmerge = or i1 %or.cond, %.not
  br i1 %brmerge, label %if.end199, label %cont195

cont195:                                          ; preds = %if.end185
  %and197 = and i32 %34, -33
  store i32 %and197, i32* %isarr, align 4, !tbaa !3
  br label %if.end199

if.end199:                                        ; preds = %if.end185, %if.else158, %cont195
  store i32 %ind.21674, i32* %inv, align 4, !tbaa !3
  br label %if.end201

if.end201:                                        ; preds = %if.then157, %if.end199, %lor.end
  %35 = load i8** %s, align 4, !tbaa !0
  %36 = load i8* %35, align 1, !tbaa !1
  %cond16691788 = icmp eq i8 %36, 0
  br i1 %cond16691788, label %return, label %ioc_bb207.lr.ph

ioc_bb207.lr.ph:                                  ; preds = %if.end201
  %.not1659 = xor i1 %4, true
  br label %ioc_bb207

ioc_bb207:                                        ; preds = %ioc_bb207.lr.ph, %for.inc326
  %37 = phi i8 [ %36, %ioc_bb207.lr.ph ], [ %66, %for.inc326 ]
  %t.01791 = phi i8* [ %35, %ioc_bb207.lr.ph ], [ %incdec.ptr327, %for.inc326 ]
  %needtok.01790 = phi i32 [ 0, %ioc_bb207.lr.ph ], [ %needtok.1, %for.inc326 ]
  %i.01789 = phi i32 [ 0, %ioc_bb207.lr.ph ], [ %i.2, %for.inc326 ]
  call void @__ioc_report_conversion(i32 1097, i32 52, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp209 = icmp eq i8 %37, -112
  br i1 %cmp209, label %lor.rhs217, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %ioc_bb207
  %cmp215.not = icmp ne i8 %37, 44
  %or.cond1658.not = or i1 %4, %cmp215.not
  %tobool218 = icmp ne i32 %i.01789, 0
  %or.cond1672 = or i1 %or.cond1658.not, %tobool218
  br i1 %or.cond1672, label %for.body223, label %if.end331

lor.rhs217:                                       ; preds = %ioc_bb207
  %tobool218.old = icmp eq i32 %i.01789, 0
  br i1 %tobool218.old, label %if.end331, label %ioc_bb224

for.body223:                                      ; preds = %land.lhs.true211
  %38 = sext i8 %37 to i64
  %39 = icmp sgt i8 %37, -1
  br i1 %39, label %cont225, label %ioc_bb224

ioc_bb224:                                        ; preds = %lor.rhs217, %for.body223
  %40 = phi i64 [ %38, %for.body223 ], [ -112, %lor.rhs217 ]
  call void @__ioc_report_conversion(i32 1099, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %40, i8 1) nounwind
  br label %cont225

cont225:                                          ; preds = %ioc_bb224, %for.body223
  %41 = phi i1 [ false, %ioc_bb224 ], [ true, %for.body223 ]
  %42 = phi i64 [ %40, %ioc_bb224 ], [ %38, %for.body223 ]
  %idxprom = zext i8 %37 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %43 = load i16* %arrayidx, align 2, !tbaa !6
  %and231 = and i16 %43, 16384
  %tobool232 = icmp eq i16 %and231, 0
  br i1 %tobool232, label %if.end284, label %if.then233

if.then233:                                       ; preds = %cont225
  %arrayidx234 = getelementptr inbounds i8* %t.01791, i32 1
  %44 = load i8* %arrayidx234, align 1, !tbaa !1
  switch i8 %44, label %if.then275 [
    i8 91, label %if.then258
    i8 93, label %if.then258
    i8 40, label %if.then258
    i8 41, label %if.then258
    i8 123, label %if.then258
    i8 125, label %if.then258
    i8 34, label %for.inc326
  ]

if.then258:                                       ; preds = %if.then233, %if.then233, %if.then233, %if.then233, %if.then233, %if.then233
  %tobool261 = icmp eq i32 %i.01789, 0
  %or.cond1660 = or i1 %tobool261, %.not1659
  br i1 %or.cond1660, label %for.inc326, label %if.then262

if.then262:                                       ; preds = %if.then258
  %45 = load i8* %t.01791, align 1, !tbaa !1
  %conv263 = sext i8 %45 to i32
  call void @__ioc_report_conversion(i32 1104, i32 41, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv263, i32 -124)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb266, label %cont267

ioc_bb266:                                        ; preds = %if.then262
  %49 = sext i8 %45 to i64
  call void @__ioc_report_sub_overflow(i32 1104, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %49, i64 -124, i8 13) nounwind
  br label %cont267

cont267:                                          ; preds = %if.then262, %ioc_bb266
  %arrayidx268 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %47
  %50 = load i8* %arrayidx268, align 1, !tbaa !1
  store i8 %50, i8* %t.01791, align 1, !tbaa !1
  br label %for.inc326

if.then275:                                       ; preds = %if.then233
  %51 = load i8* %t.01791, align 1, !tbaa !1
  %conv276 = sext i8 %51 to i32
  call void @__ioc_report_conversion(i32 1109, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv276, i32 -124)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb279, label %cont280

ioc_bb279:                                        ; preds = %if.then275
  %55 = sext i8 %51 to i64
  call void @__ioc_report_sub_overflow(i32 1109, i32 29, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %55, i64 -124, i8 13) nounwind
  br label %cont280

cont280:                                          ; preds = %if.then275, %ioc_bb279
  %arrayidx281 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %53
  %56 = load i8* %arrayidx281, align 1, !tbaa !1
  store i8 %56, i8* %t.01791, align 1, !tbaa !1
  br label %for.inc326

if.end284:                                        ; preds = %cont225
  %cmp286 = icmp eq i8 %37, 91
  br i1 %cmp286, label %if.then294, label %ioc_bb290

ioc_bb290:                                        ; preds = %if.end284
  call void @__ioc_report_conversion(i32 1113, i32 34, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  switch i8 %37, label %ioc_bb303 [
    i8 -113, label %if.then294
    i8 93, label %if.then307
  ]

if.then294:                                       ; preds = %ioc_bb290, %if.end284
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.01789, i32 1)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb295, label %if.end311

ioc_bb295:                                        ; preds = %if.then294
  %60 = sext i32 %i.01789 to i64
  call void @__ioc_report_add_overflow(i32 1114, i32 8, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %60, i64 1, i8 13) nounwind
  br label %if.end311

ioc_bb303:                                        ; preds = %ioc_bb290
  call void @__ioc_report_conversion(i32 1115, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  br i1 %cmp209, label %if.then307, label %if.end311

if.then307:                                       ; preds = %ioc_bb290, %ioc_bb303
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.01789, i32 -1)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb308, label %if.end311

ioc_bb308:                                        ; preds = %if.then307
  %64 = sext i32 %i.01789 to i64
  call void @__ioc_report_add_overflow(i32 1116, i32 8, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %64, i64 -1, i8 13) nounwind
  br label %if.end311

if.end311:                                        ; preds = %ioc_bb308, %if.then307, %ioc_bb295, %if.then294, %ioc_bb303
  %i.1 = phi i32 [ %i.01789, %ioc_bb303 ], [ %58, %if.then294 ], [ %58, %ioc_bb295 ], [ %62, %if.then307 ], [ %62, %ioc_bb308 ]
  br i1 %41, label %cont314, label %ioc_bb313

ioc_bb313:                                        ; preds = %if.end311
  call void @__ioc_report_conversion(i32 1117, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %42, i8 1) nounwind
  br label %cont314

cont314:                                          ; preds = %if.end311, %ioc_bb313
  %65 = load i16* %arrayidx, align 2, !tbaa !6
  %and322 = and i16 %65, 2048
  %tobool323 = icmp eq i16 %and322, 0
  %needtok.0. = select i1 %tobool323, i32 %needtok.01790, i32 1
  br label %for.inc326

for.inc326:                                       ; preds = %if.then258, %cont314, %if.then233, %cont267, %cont280
  %i.2 = phi i32 [ %i.01789, %cont280 ], [ %i.01789, %cont267 ], [ %i.01789, %if.then233 ], [ %i.1, %cont314 ], [ %i.01789, %if.then258 ]
  %needtok.1 = phi i32 [ %needtok.01790, %cont280 ], [ 1, %cont267 ], [ %needtok.01790, %if.then233 ], [ %needtok.0., %cont314 ], [ 1, %if.then258 ]
  %t.1 = phi i8* [ %t.01791, %cont280 ], [ %arrayidx234, %cont267 ], [ %t.01791, %if.then233 ], [ %t.01791, %cont314 ], [ %arrayidx234, %if.then258 ]
  %incdec.ptr327 = getelementptr inbounds i8* %t.1, i32 1
  %66 = load i8* %incdec.ptr327, align 1, !tbaa !1
  %cond1669 = icmp eq i8 %66, 0
  br i1 %cond1669, label %return, label %ioc_bb207

if.end331:                                        ; preds = %lor.rhs217, %land.lhs.true211
  %67 = load i8** %s, align 4, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %t.01791 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call332 = call i8* @dupstrpfx(i8* %67, i32 %sub.ptr.sub) nounwind
  store i8* %call332, i8** %s, align 4, !tbaa !0
  store i8* %t.01791, i8** %str, align 4, !tbaa !0
  br i1 %4, label %land.lhs.true334, label %if.end339

land.lhs.true334:                                 ; preds = %if.end331
  %tobool335 = icmp ne i32 %keymatch.21675, 0
  %tobool337 = icmp eq i32 %rev.21678, 0
  %or.cond1661 = or i1 %tobool335, %tobool337
  br i1 %or.cond1661, label %if.then338, label %if.end339

if.then338:                                       ; preds = %land.lhs.true334
  call void @remnulargs(i8* %call332) nounwind
  br label %if.end339

if.end339:                                        ; preds = %land.lhs.true334, %if.then338, %if.end331
  %tobool340 = icmp eq i32 %needtok.01790, 0
  br i1 %tobool340, label %if.else346, label %if.then341

if.then341:                                       ; preds = %if.end339
  %68 = load i8** %s, align 4, !tbaa !0
  %call342 = call i32 @parsestr(i8* %68) nounwind
  %tobool343 = icmp eq i32 %call342, 0
  br i1 %tobool343, label %if.end345, label %return

if.end345:                                        ; preds = %if.then341
  call void @singsub(i8** %s) nounwind
  br label %if.end350

if.else346:                                       ; preds = %if.end339
  %cond1670 = icmp eq i32 %rev.21678, 0
  br i1 %cond1670, label %if.then352, label %if.then348

if.then348:                                       ; preds = %if.else346
  %69 = load i8** %s, align 4, !tbaa !0
  call void @remnulargs(i8* %69) nounwind
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %if.end345
  %tobool351 = icmp eq i32 %rev.21678, 0
  br i1 %tobool351, label %if.then352, label %if.else571

if.then352:                                       ; preds = %if.else346, %if.end350
  br i1 %4, label %if.then354, label %if.else393

if.then354:                                       ; preds = %if.then352
  %70 = load %struct.param** %pm, align 4, !tbaa !0
  %gsu = getelementptr inbounds %struct.param* %70, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %71 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_hash* %71, i32 0, i32 0
  %72 = load %struct.hashtable* (%struct.param*)** %getfn, align 4, !tbaa !0
  %call357 = call %struct.hashtable* %72(%struct.param* %70) nounwind
  %tobool358 = icmp eq %struct.hashtable* %call357, null
  br i1 %tobool358, label %if.then359, label %if.end367

if.then359:                                       ; preds = %if.then354
  %73 = load %struct.param** %pm, align 4, !tbaa !0
  %nam = getelementptr inbounds %struct.param* %73, i32 0, i32 0, i32 1
  %74 = load i8** %nam, align 4, !tbaa !0
  %call.i = call %struct.hashtable* @newhashtable(i32 17, i8* %74, void (%struct.hashtable*)* null) nounwind
  %hash.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i, align 4, !tbaa !0
  %emptytable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i, align 4, !tbaa !0
  %filltable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i, align 4, !tbaa !0
  %cmpnodes.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i, align 4, !tbaa !0
  %addnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %getnode2.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i, align 4, !tbaa !0
  %removenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i, align 4, !tbaa !0
  %disablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode.i, align 4, !tbaa !0
  %enablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode.i, align 4, !tbaa !0
  %freenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !0
  %printnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode.i, align 4, !tbaa !0
  %75 = load %struct.param** %pm, align 4, !tbaa !0
  %gsu364 = getelementptr inbounds %struct.param* %75, i32 0, i32 2
  %h365 = bitcast %union.anon.0* %gsu364 to %struct.gsu_hash**
  %76 = load %struct.gsu_hash** %h365, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_hash* %76, i32 0, i32 1
  %77 = load void (%struct.param*, %struct.hashtable*)** %setfn, align 4, !tbaa !0
  call void %77(%struct.param* %75, %struct.hashtable* %call.i) nounwind
  br label %if.end367

if.end367:                                        ; preds = %if.then354, %if.then359
  %ht.0 = phi %struct.hashtable* [ %call357, %if.then354 ], [ %call.i, %if.then359 ]
  %78 = load i8** %s, align 4, !tbaa !0
  call void @untokenize(i8* %78) nounwind
  %getnode = getelementptr inbounds %struct.hashtable* %ht.0, i32 0, i32 9
  %79 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %80 = load i8** %s, align 4, !tbaa !0
  %call368 = call %struct.hashnode* %79(%struct.hashtable* %ht.0, i8* %80) nounwind
  %81 = bitcast %struct.hashnode* %call368 to %struct.param*
  store %struct.param* %81, %struct.param** %pm, align 4, !tbaa !0
  %tobool370 = icmp eq %struct.hashnode* %call368, null
  br i1 %tobool370, label %if.then371, label %if.end378

if.then371:                                       ; preds = %if.end367
  %82 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  store %struct.hashtable* %ht.0, %struct.hashtable** @paramtab, align 4, !tbaa !0
  %83 = load i8** %s, align 4, !tbaa !0
  %call376 = call %struct.param* @createparam(i8* %83, i32 33554432)
  store %struct.param* %call376, %struct.param** %pm, align 4, !tbaa !0
  store %struct.hashtable* %82, %struct.hashtable** @paramtab, align 4, !tbaa !0
  br label %if.end378

if.end378:                                        ; preds = %if.end367, %if.then371
  %84 = load i32* %inv, align 4, !tbaa !3
  %tobool379 = icmp ne i32 %84, 0
  %cond384 = select i1 %tobool379, i32 4, i32 0
  store i32 %cond384, i32* %isarr, align 4, !tbaa !3
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4, !tbaa !3
  store i32 0, i32* %inv, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 -1, i32* %end, align 4, !tbaa !3
  store i64 -1, i64* %w, align 4, !tbaa !4
  %85 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool390 = icmp ne i8 %85, 0
  %conv392 = zext i1 %tobool390 to i64
  br label %if.end404

if.else393:                                       ; preds = %if.then352
  %86 = load i8** %s, align 4, !tbaa !0
  %call394 = call i64 @mathevalarg(i8* %86, i8** %s) nounwind
  %87 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool396 = icmp ne i8 %87, 0
  %cmp398 = icmp sgt i64 %call394, -1
  %or.cond1662 = and i1 %tobool396, %cmp398
  br i1 %or.cond1662, label %if.then400, label %if.end404

if.then400:                                       ; preds = %if.else393
  %88 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %call394, i64 1)
  %89 = extractvalue { i64, i1 } %88, 0
  %90 = extractvalue { i64, i1 } %88, 1
  br i1 %90, label %ioc_bb401, label %if.end404

ioc_bb401:                                        ; preds = %if.then400
  call void @__ioc_report_add_overflow(i32 1162, i32 10, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %call394, i64 1, i8 14) nounwind
  br label %if.end404

if.end404:                                        ; preds = %ioc_bb401, %if.then400, %if.else393, %if.end378
  %r.0 = phi i64 [ %conv392, %if.end378 ], [ %call394, %if.else393 ], [ %89, %if.then400 ], [ %89, %ioc_bb401 ]
  %tobool405 = icmp eq i32 %word.21681, 0
  %91 = load i32* %isarr, align 4, !tbaa !3
  %tobool408 = icmp eq i32 %91, 0
  br i1 %tobool405, label %if.else468, label %land.lhs.true406

land.lhs.true406:                                 ; preds = %if.end404
  br i1 %tobool408, label %if.then409, label %return

if.then409:                                       ; preds = %land.lhs.true406
  %call410 = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call410, i8** %s, align 4, !tbaa !0
  %call411 = call i32 @wordcount(i8* %call410, i8* %sep.21676, i32 0) nounwind
  %cmp412 = icmp slt i64 %r.0, 0
  br i1 %cmp412, label %if.then414, label %if.end420

if.then414:                                       ; preds = %if.then409
  %92 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call411, i32 1)
  %93 = extractvalue { i32, i1 } %92, 0
  %94 = extractvalue { i32, i1 } %92, 1
  br i1 %94, label %ioc_bb415, label %cont416

ioc_bb415:                                        ; preds = %if.then414
  %95 = sext i32 %call411 to i64
  call void @__ioc_report_add_overflow(i32 1168, i32 17, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %95, i64 1, i8 13) nounwind
  br label %cont416

cont416:                                          ; preds = %if.then414, %ioc_bb415
  %conv417 = sext i32 %93 to i64
  %96 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.0, i64 %conv417)
  %97 = extractvalue { i64, i1 } %96, 0
  %98 = extractvalue { i64, i1 } %96, 1
  br i1 %98, label %ioc_bb418, label %if.end420

ioc_bb418:                                        ; preds = %cont416
  call void @__ioc_report_add_overflow(i32 1168, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %r.0, i64 %conv417, i8 14) nounwind
  br label %if.end420

if.end420:                                        ; preds = %ioc_bb418, %cont416, %if.then409
  %r.1 = phi i64 [ %r.0, %if.then409 ], [ %97, %cont416 ], [ %97, %ioc_bb418 ]
  %cmp421 = icmp slt i64 %r.1, 1
  %.r.1 = select i1 %cmp421, i64 1, i64 %r.1
  %conv425 = sext i32 %call411 to i64
  %99 = load i8** %s, align 4, !tbaa !0
  %tobool431 = icmp eq i8* %99, null
  br i1 %tobool431, label %return, label %lor.lhs.false432

lor.lhs.false432:                                 ; preds = %if.end420
  %100 = load i8* %99, align 1, !tbaa !1
  %tobool433 = icmp eq i8 %100, 0
  br i1 %tobool433, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false432
  %cmp426 = icmp sgt i64 %.r.1, %conv425
  %r.3 = select i1 %cmp426, i64 %conv425, i64 %.r.1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %cont440
  %r.4 = phi i64 [ %102, %cont440 ], [ %r.3, %while.cond.preheader ]
  %call436 = call i8* @findword(i8** %s, i8* %sep.21676) nounwind
  store i8* %call436, i8** %d, align 4, !tbaa !0
  %tobool437 = icmp eq i8* %call436, null
  br i1 %tobool437, label %return, label %land.rhs438

land.rhs438:                                      ; preds = %while.cond
  %101 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.4, i64 -1)
  %102 = extractvalue { i64, i1 } %101, 0
  %103 = extractvalue { i64, i1 } %101, 1
  br i1 %103, label %ioc_bb439, label %cont440

ioc_bb439:                                        ; preds = %land.rhs438
  call void @__ioc_report_add_overflow(i32 1175, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %r.4, i64 -1, i8 14) nounwind
  br label %cont440

cont440:                                          ; preds = %land.rhs438, %ioc_bb439
  %tobool441 = icmp eq i64 %102, 0
  br i1 %tobool441, label %while.end, label %while.cond

while.end:                                        ; preds = %cont440
  %.pr = load i8** %d, align 4, !tbaa !0
  %tobool444 = icmp eq i8* %.pr, null
  br i1 %tobool444, label %return, label %if.end446

if.end446:                                        ; preds = %while.end
  %tobool447 = icmp eq i32 %a2, 0
  br i1 %tobool447, label %land.lhs.true448, label %cond.true459

land.lhs.true448:                                 ; preds = %if.end446
  %104 = load i8* %t.01791, align 1, !tbaa !1
  %cmp450 = icmp eq i8 %104, 44
  br i1 %cmp450, label %cond.false460, label %if.then452

if.then452:                                       ; preds = %land.lhs.true448
  %105 = load i8** %s, align 4, !tbaa !0
  %sub.ptr.lhs.cast453 = ptrtoint i8* %105 to i32
  %sub.ptr.rhs.cast454 = ptrtoint i8* %call410 to i32
  %sub.ptr.sub455 = sub i32 %sub.ptr.lhs.cast453, %sub.ptr.rhs.cast454
  %conv456 = sext i32 %sub.ptr.sub455 to i64
  store i64 %conv456, i64* %w, align 4, !tbaa !4
  br label %cond.false460

cond.true459:                                     ; preds = %if.end446
  %106 = load i8** %s, align 4, !tbaa !0
  br label %cond.end462

cond.false460:                                    ; preds = %if.then452, %land.lhs.true448
  %add.ptr461 = getelementptr inbounds i8* %.pr, i32 1
  br label %cond.end462

cond.end462:                                      ; preds = %cond.false460, %cond.true459
  %cond463 = phi i8* [ %106, %cond.true459 ], [ %add.ptr461, %cond.false460 ]
  %sub.ptr.lhs.cast464 = ptrtoint i8* %cond463 to i32
  %sub.ptr.rhs.cast465 = ptrtoint i8* %call410 to i32
  %sub.ptr.sub466 = sub i32 %sub.ptr.lhs.cast464, %sub.ptr.rhs.cast465
  %conv467 = sext i32 %sub.ptr.sub466 to i64
  br label %return

if.else468:                                       ; preds = %if.end404
  br i1 %tobool408, label %if.then473, label %return

if.then473:                                       ; preds = %if.else468
  %call474 = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call474, i8** %s, align 4, !tbaa !0
  %cmp475 = icmp sgt i64 %r.0, 0
  br i1 %cmp475, label %land.rhs480.lr.ph, label %if.else510

land.rhs480.lr.ph:                                ; preds = %if.then473
  call void @mb_metacharinit() nounwind
  %107 = load i8** %s, align 4, !tbaa !0
  br label %land.rhs480

land.rhs480:                                      ; preds = %for.cond478.backedge, %land.rhs480.lr.ph
  %nchars.01696 = phi i64 [ %r.0, %land.rhs480.lr.ph ], [ %110, %for.cond478.backedge ]
  %lastcharlen.01695 = phi i32 [ 1, %land.rhs480.lr.ph ], [ %call486, %for.cond478.backedge ]
  %t.21694 = phi i8* [ %107, %land.rhs480.lr.ph ], [ %add.ptr487, %for.cond478.backedge ]
  %108 = load i8* %t.21694, align 1, !tbaa !1
  %tobool482 = icmp eq i8 %108, 0
  br i1 %tobool482, label %for.end491, label %for.body485

for.body485:                                      ; preds = %land.rhs480
  %call486 = call i32 @mb_metacharlenconv(i8* %t.21694, i32* null) nounwind
  %add.ptr487 = getelementptr inbounds i8* %t.21694, i32 %call486
  %109 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %nchars.01696, i64 -1)
  %110 = extractvalue { i64, i1 } %109, 0
  %111 = extractvalue { i64, i1 } %109, 1
  br i1 %111, label %ioc_bb489, label %for.cond478.backedge

for.cond478.backedge:                             ; preds = %for.body485, %ioc_bb489
  %tobool479 = icmp eq i64 %110, 0
  br i1 %tobool479, label %for.end491, label %land.rhs480

ioc_bb489:                                        ; preds = %for.body485
  call void @__ioc_report_add_overflow(i32 1196, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %nchars.01696, i64 -1, i8 14) nounwind
  br label %for.cond478.backedge

for.end491:                                       ; preds = %for.cond478.backedge, %land.rhs480
  %tobool479.lcssa = phi i1 [ true, %land.rhs480 ], [ false, %for.cond478.backedge ]
  %nchars.0.lcssa = phi i64 [ %nchars.01696, %land.rhs480 ], [ 0, %for.cond478.backedge ]
  %lastcharlen.0.lcssa = phi i32 [ %lastcharlen.01695, %land.rhs480 ], [ %call486, %for.cond478.backedge ]
  %t.2.lcssa = phi i8* [ %t.21694, %land.rhs480 ], [ %add.ptr487, %for.cond478.backedge ]
  %112 = load i8** %s, align 4, !tbaa !0
  %sub.ptr.lhs.cast492 = ptrtoint i8* %t.2.lcssa to i32
  %sub.ptr.rhs.cast493 = ptrtoint i8* %112 to i32
  %sub.ptr.sub494 = sub i32 %sub.ptr.lhs.cast492, %sub.ptr.rhs.cast493
  %conv495 = sext i32 %sub.ptr.sub494 to i64
  %113 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv495, i64 %nchars.0.lcssa)
  %114 = extractvalue { i64, i1 } %113, 0
  %115 = extractvalue { i64, i1 } %113, 1
  br i1 %115, label %ioc_bb496, label %cont497

ioc_bb496:                                        ; preds = %for.end491
  call void @__ioc_report_add_overflow(i32 1199, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv495, i64 %nchars.0.lcssa, i8 14) nounwind
  br label %cont497

cont497:                                          ; preds = %for.end491, %ioc_bb496
  %tobool25.not = xor i1 %tobool25, true
  %brmerge1664 = or i1 %tobool479.lcssa, %tobool25.not
  br i1 %brmerge1664, label %if.end502, label %if.then501

if.then501:                                       ; preds = %cont497
  store i32 %lastcharlen.0.lcssa, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end502

if.end502:                                        ; preds = %cont497, %if.then501
  br i1 %tobool28, label %land.lhs.true504, label %return

land.lhs.true504:                                 ; preds = %if.end502
  %116 = load i8* %t.2.lcssa, align 1, !tbaa !1
  %tobool506 = icmp eq i8 %116, 0
  br i1 %tobool506, label %return, label %if.then507

if.then507:                                       ; preds = %land.lhs.true504
  %call508 = call i32 @mb_metacharlenconv(i8* %t.2.lcssa, i32* null) nounwind
  store i32 %call508, i32* %nextcharlen, align 4, !tbaa !3
  br label %return

if.else510:                                       ; preds = %if.then473
  %cmp511 = icmp eq i64 %r.0, 0
  br i1 %cmp511, label %if.then513, label %if.else524

if.then513:                                       ; preds = %if.else510
  br i1 %tobool25, label %if.then515, label %if.end516

if.then515:                                       ; preds = %if.then513
  store i32 0, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end516

if.end516:                                        ; preds = %if.then515, %if.then513
  br i1 %tobool28, label %land.lhs.true518, label %return

land.lhs.true518:                                 ; preds = %if.end516
  %117 = load i8* %call474, align 1, !tbaa !1
  %tobool520 = icmp eq i8 %117, 0
  br i1 %tobool520, label %return, label %if.then521

if.then521:                                       ; preds = %land.lhs.true518
  call void @mb_metacharinit() nounwind
  %118 = load i8** %s, align 4, !tbaa !0
  %call522 = call i32 @mb_metacharlenconv(i8* %118, i32* null) nounwind
  store i32 %call522, i32* %nextcharlen, align 4, !tbaa !3
  br label %return

if.else524:                                       ; preds = %if.else510
  %call526 = call i32 @mb_metastrlen(i8* %call474, i32 0) nounwind
  %conv527 = sext i32 %call526 to i64
  %119 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv527, i64 %r.0)
  %120 = extractvalue { i64, i1 } %119, 0
  %121 = extractvalue { i64, i1 } %119, 1
  br i1 %121, label %ioc_bb528, label %cont529

ioc_bb528:                                        ; preds = %if.else524
  call void @__ioc_report_add_overflow(i32 1215, i32 55, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv527, i64 %r.0, i8 14) nounwind
  br label %cont529

cont529:                                          ; preds = %if.else524, %ioc_bb528
  %cmp530 = icmp slt i64 %120, 0
  br i1 %cmp530, label %if.then532, label %if.else537

if.then532:                                       ; preds = %cont529
  %122 = load i8** %s, align 4, !tbaa !0
  %call533 = call i32 @strlen(i8* %122) nounwind readonly
  %conv534 = zext i32 %call533 to i64
  %123 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %r.0, i64 %conv534)
  %124 = extractvalue { i64, i1 } %123, 0
  %125 = extractvalue { i64, i1 } %123, 1
  br i1 %125, label %ioc_bb535, label %return

ioc_bb535:                                        ; preds = %if.then532
  call void @__ioc_report_sub_overflow(i32 1218, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %r.0, i64 %conv534, i8 14) nounwind
  br label %return

if.else537:                                       ; preds = %cont529
  call void @mb_metacharinit() nounwind
  %126 = load i8** %s, align 4, !tbaa !0
  %tobool5391701 = icmp eq i64 %120, 0
  br i1 %tobool5391701, label %for.end551, label %land.rhs540

land.rhs540:                                      ; preds = %if.else537, %for.cond538.backedge
  %nchars525.01704 = phi i64 [ %129, %for.cond538.backedge ], [ %120, %if.else537 ]
  %lastcharlen.11703 = phi i32 [ %call546, %for.cond538.backedge ], [ 1, %if.else537 ]
  %t.31702 = phi i8* [ %add.ptr547, %for.cond538.backedge ], [ %126, %if.else537 ]
  %127 = load i8* %t.31702, align 1, !tbaa !1
  %tobool542 = icmp eq i8 %127, 0
  br i1 %tobool542, label %for.end551, label %for.body545

for.body545:                                      ; preds = %land.rhs540
  %call546 = call i32 @mb_metacharlenconv(i8* %t.31702, i32* null) nounwind
  %add.ptr547 = getelementptr inbounds i8* %t.31702, i32 %call546
  %128 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %nchars525.01704, i64 -1)
  %129 = extractvalue { i64, i1 } %128, 0
  %130 = extractvalue { i64, i1 } %128, 1
  br i1 %130, label %ioc_bb549, label %for.cond538.backedge

for.cond538.backedge:                             ; preds = %for.body545, %ioc_bb549
  %tobool539 = icmp eq i64 %129, 0
  br i1 %tobool539, label %for.end551, label %land.rhs540

ioc_bb549:                                        ; preds = %for.body545
  call void @__ioc_report_add_overflow(i32 1222, i32 44, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %nchars525.01704, i64 -1, i8 14) nounwind
  br label %for.cond538.backedge

for.end551:                                       ; preds = %for.cond538.backedge, %land.rhs540, %if.else537
  %lastcharlen.1.lcssa = phi i32 [ 1, %if.else537 ], [ %lastcharlen.11703, %land.rhs540 ], [ %call546, %for.cond538.backedge ]
  %t.3.lcssa = phi i8* [ %126, %if.else537 ], [ %t.31702, %land.rhs540 ], [ %add.ptr547, %for.cond538.backedge ]
  %call552 = call i32 @strlen(i8* %t.3.lcssa) nounwind readonly
  %conv553 = zext i32 %call552 to i64
  %131 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %conv553)
  %132 = extractvalue { i64, i1 } %131, 0
  %133 = extractvalue { i64, i1 } %131, 1
  br i1 %133, label %ioc_bb554, label %cont555

ioc_bb554:                                        ; preds = %for.end551
  call void @__ioc_report_sub_overflow(i32 1225, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i64 0, i64 %conv553, i8 14) nounwind
  br label %cont555

cont555:                                          ; preds = %for.end551, %ioc_bb554
  br i1 %tobool25, label %if.then557, label %if.end558

if.then557:                                       ; preds = %cont555
  store i32 %lastcharlen.1.lcssa, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end558

if.end558:                                        ; preds = %if.then557, %cont555
  br i1 %tobool28, label %land.lhs.true560, label %return

land.lhs.true560:                                 ; preds = %if.end558
  %134 = load i8* %t.3.lcssa, align 1, !tbaa !1
  %tobool562 = icmp eq i8 %134, 0
  br i1 %tobool562, label %return, label %if.then563

if.then563:                                       ; preds = %land.lhs.true560
  %call564 = call i32 @mb_metacharlenconv(i8* %t.3.lcssa, i32* null) nounwind
  store i32 %call564, i32* %nextcharlen, align 4, !tbaa !3
  br label %return

if.else571:                                       ; preds = %if.end350
  %135 = load i32* %isarr, align 4, !tbaa !3
  %tobool575 = icmp eq i32 %word.21681, 0
  %136 = or i32 %135, %word.21681
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %if.then576, label %if.end629

if.then576:                                       ; preds = %if.else571
  %138 = load i8** %s, align 4, !tbaa !0
  %call577 = call i32 @strlen(i8* %138) nounwind readonly
  %139 = icmp sgt i32 %call577, -1
  br i1 %139, label %cont579, label %ioc_bb578

ioc_bb578:                                        ; preds = %if.then576
  %140 = zext i32 %call577 to i64
  call void @__ioc_report_conversion(i32 1236, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %140, i8 0) nounwind
  br label %cont579

cont579:                                          ; preds = %ioc_bb578, %if.then576
  %tobool580 = icmp eq i32 %a2, 0
  %tobool582 = icmp ne i32 %call577, 0
  br i1 %tobool580, label %if.else599, label %if.then581

if.then581:                                       ; preds = %cont579
  br i1 %tobool582, label %lor.lhs.false583, label %if.then587

lor.lhs.false583:                                 ; preds = %if.then581
  %141 = load i8** %s, align 4, !tbaa !0
  %142 = load i8* %141, align 1, !tbaa !1
  %cmp585 = icmp eq i8 %142, 42
  br i1 %cmp585, label %if.end629, label %if.then587

if.then587:                                       ; preds = %lor.lhs.false583, %if.then581
  %143 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call577, i32 2)
  %144 = extractvalue { i32, i1 } %143, 0
  %145 = extractvalue { i32, i1 } %143, 1
  br i1 %145, label %ioc_bb588, label %cont589

ioc_bb588:                                        ; preds = %if.then587
  %146 = sext i32 %call577 to i64
  call void @__ioc_report_add_overflow(i32 1239, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %146, i64 2, i8 13) nounwind
  br label %cont589

cont589:                                          ; preds = %if.then587, %ioc_bb588
  %147 = icmp sgt i32 %144, -1
  br i1 %147, label %cont592, label %ioc_bb591

ioc_bb591:                                        ; preds = %cont589
  %148 = sext i32 %144 to i64
  call void @__ioc_report_conversion(i32 1239, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %148, i8 1) nounwind
  br label %cont592

cont592:                                          ; preds = %ioc_bb591, %cont589
  %call593 = call i8* @hcalloc(i32 %144) nounwind
  store i8* %call593, i8** %d, align 4, !tbaa !0
  store i8 42, i8* %call593, align 1, !tbaa !1
  %149 = load i8** %d, align 4, !tbaa !0
  %add.ptr596 = getelementptr inbounds i8* %149, i32 1
  %150 = load i8** %s, align 4, !tbaa !0
  %call597 = call i8* @strcpy(i8* %add.ptr596, i8* %150) nounwind
  %151 = load i8** %d, align 4, !tbaa !0
  store i8* %151, i8** %s, align 4, !tbaa !0
  br label %if.end629

if.else599:                                       ; preds = %cont579
  br i1 %tobool582, label %lor.lhs.false601, label %if.then618

lor.lhs.false601:                                 ; preds = %if.else599
  %152 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call577, i32 1)
  %153 = extractvalue { i32, i1 } %152, 0
  %154 = extractvalue { i32, i1 } %152, 1
  %155 = sext i32 %call577 to i64
  br i1 %154, label %ioc_bb602, label %cont603

ioc_bb602:                                        ; preds = %lor.lhs.false601
  call void @__ioc_report_sub_overflow(i32 1246, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %155, i64 1, i8 13) nounwind
  br label %cont603

cont603:                                          ; preds = %lor.lhs.false601, %ioc_bb602
  %156 = load i8** %s, align 4, !tbaa !0
  %arrayidx604 = getelementptr inbounds i8* %156, i32 %153
  %157 = load i8* %arrayidx604, align 1, !tbaa !1
  %cmp606 = icmp eq i8 %157, 42
  br i1 %cmp606, label %lor.lhs.false608, label %if.then618

lor.lhs.false608:                                 ; preds = %cont603
  %cmp609 = icmp sgt i32 %call577, 1
  br i1 %cmp609, label %land.lhs.true611, label %if.end629

land.lhs.true611:                                 ; preds = %lor.lhs.false608
  %158 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call577, i32 2)
  %159 = extractvalue { i32, i1 } %158, 0
  %160 = extractvalue { i32, i1 } %158, 1
  br i1 %160, label %ioc_bb612, label %cont613

ioc_bb612:                                        ; preds = %land.lhs.true611
  call void @__ioc_report_sub_overflow(i32 1246, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %155, i64 2, i8 13) nounwind
  %.pre = load i8** %s, align 4, !tbaa !0
  br label %cont613

cont613:                                          ; preds = %land.lhs.true611, %ioc_bb612
  %161 = phi i8* [ %156, %land.lhs.true611 ], [ %.pre, %ioc_bb612 ]
  %arrayidx614 = getelementptr inbounds i8* %161, i32 %159
  %162 = load i8* %arrayidx614, align 1, !tbaa !1
  %cmp616 = icmp eq i8 %162, 92
  br i1 %cmp616, label %if.then618, label %if.end629

if.then618:                                       ; preds = %cont603, %cont613, %if.else599
  %163 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call577, i32 2)
  %164 = extractvalue { i32, i1 } %163, 0
  %165 = extractvalue { i32, i1 } %163, 1
  br i1 %165, label %ioc_bb619, label %cont620

ioc_bb619:                                        ; preds = %if.then618
  %166 = sext i32 %call577 to i64
  call void @__ioc_report_add_overflow(i32 1247, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %166, i64 2, i8 13) nounwind
  br label %cont620

cont620:                                          ; preds = %if.then618, %ioc_bb619
  %167 = icmp sgt i32 %164, -1
  br i1 %167, label %cont623, label %ioc_bb622

ioc_bb622:                                        ; preds = %cont620
  %168 = sext i32 %164 to i64
  call void @__ioc_report_conversion(i32 1247, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %168, i8 1) nounwind
  br label %cont623

cont623:                                          ; preds = %ioc_bb622, %cont620
  %call624 = call i8* @hcalloc(i32 %164) nounwind
  store i8* %call624, i8** %d, align 4, !tbaa !0
  %169 = load i8** %s, align 4, !tbaa !0
  %call625 = call i8* @strcpy(i8* %call624, i8* %169) nounwind
  %170 = load i8** %d, align 4, !tbaa !0
  %strlen = call i32 @strlen(i8* %170)
  %endptr = getelementptr i8* %170, i32 %strlen
  %171 = bitcast i8* %endptr to i16*
  store i16 42, i16* %171, align 1
  %172 = load i8** %d, align 4, !tbaa !0
  store i8* %172, i8** %s, align 4, !tbaa !0
  br label %if.end629

if.end629:                                        ; preds = %lor.lhs.false583, %if.else571, %cont592, %cont623, %cont613, %lor.lhs.false608
  %tobool630 = icmp ne i32 %keymatch.21675, 0
  br i1 %tobool630, label %if.end638, label %if.then631

if.then631:                                       ; preds = %if.end629
  %tobool632 = icmp eq i64 %quote_arg.21680, 0
  %173 = load i8** %s, align 4, !tbaa !0
  br i1 %tobool632, label %if.else634, label %if.then633

if.then633:                                       ; preds = %if.then631
  call void @untokenize(i8* %173) nounwind
  br label %if.end635

if.else634:                                       ; preds = %if.then631
  call void @tokenize(i8* %173) nounwind
  br label %if.end635

if.end635:                                        ; preds = %if.else634, %if.then633
  %174 = load i8** %s, align 4, !tbaa !0
  call void @remnulargs(i8* %174) nounwind
  %175 = load i8** %s, align 4, !tbaa !0
  %call636 = call %struct.patprog* @patcompile(i8* %175, i32 0, i8** null) nounwind
  br label %if.end638

if.end638:                                        ; preds = %if.end629, %if.end635
  %pprog.0 = phi %struct.patprog* [ %call636, %if.end635 ], [ null, %if.end629 ]
  %176 = load i32* %isarr, align 4, !tbaa !3
  %tobool640 = icmp eq i32 %176, 0
  br i1 %tobool640, label %if.else816, label %if.then641

if.then641:                                       ; preds = %if.end638
  br i1 %4, label %if.then643, label %if.else718

if.then643:                                       ; preds = %if.then641
  store %struct.patprog* %pprog.0, %struct.patprog** @scanprog, align 4, !tbaa !0
  %177 = load i8** %s, align 4, !tbaa !0
  store i8* %177, i8** @scanstr, align 4, !tbaa !0
  br i1 %tobool630, label %cont649, label %if.else652

cont649:                                          ; preds = %if.then643
  %or651 = or i32 %176, 128
  store i32 %or651, i32* %isarr, align 4, !tbaa !3
  br label %if.end672

if.else652:                                       ; preds = %if.then643
  %tobool653 = icmp eq %struct.patprog* %pprog.0, null
  br i1 %tobool653, label %return, label %if.end655

if.end655:                                        ; preds = %if.else652
  %tobool656 = icmp eq i32 %ind.21674, 0
  br i1 %tobool656, label %cont668, label %cont661

cont661:                                          ; preds = %if.end655
  %or663 = or i32 %176, 8
  store i32 %or663, i32* %isarr, align 4, !tbaa !3
  br label %if.end672

cont668:                                          ; preds = %if.end655
  %or670 = or i32 %176, 16
  store i32 %or670, i32* %isarr, align 4, !tbaa !3
  br label %if.end672

if.end672:                                        ; preds = %cont661, %cont668, %cont649
  %178 = phi i32 [ %or663, %cont661 ], [ %or670, %cont668 ], [ %or651, %cont649 ]
  %tobool673 = icmp eq i32 %down.3, 0
  br i1 %tobool673, label %if.end681, label %cont678

cont678:                                          ; preds = %if.end672
  %or680 = or i32 %178, 32
  store i32 %or680, i32* %isarr, align 4, !tbaa !3
  br label %if.end681

if.end681:                                        ; preds = %if.end672, %cont678
  %call682 = call fastcc i8** @getvaluearr(%struct.value* %v)
  %tobool683 = icmp eq i8** %call682, null
  br i1 %tobool683, label %if.end717, label %land.lhs.true684

land.lhs.true684:                                 ; preds = %if.end681
  %179 = load i8** %call682, align 4, !tbaa !0
  %tobool685 = icmp eq i8* %179, null
  br i1 %tobool685, label %lor.lhs.false686, label %if.then710

lor.lhs.false686:                                 ; preds = %land.lhs.true684
  %180 = load i32* %isarr, align 4, !tbaa !3
  %and692 = and i32 %180, 32
  %tobool693 = icmp eq i32 %and692, 0
  %and708 = and i32 %180, 152
  %tobool709 = icmp eq i32 %and708, 0
  %or.cond1692 = or i1 %tobool693, %tobool709
  br i1 %or.cond1692, label %if.end717, label %if.then710

if.then710:                                       ; preds = %lor.lhs.false686, %land.lhs.true684
  %flags711 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %181 = load i32* %flags711, align 4, !tbaa !3
  %and712 = and i32 %181, 1
  store i32 %and712, i32* %inv, align 4, !tbaa !3
  %end715 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %182 = load i32* %end715, align 4, !tbaa !3
  %conv716 = sext i32 %182 to i64
  store i64 %conv716, i64* %w, align 4, !tbaa !4
  store %struct.patprog* null, %struct.patprog** @scanprog, align 4, !tbaa !0
  br label %return

if.end717:                                        ; preds = %lor.lhs.false686, %if.end681
  store %struct.patprog* null, %struct.patprog** @scanprog, align 4, !tbaa !0
  br label %if.end720

if.else718:                                       ; preds = %if.then641
  %call719 = call i8** @getarrvalue(%struct.value* %v)
  br label %if.end720

if.end720:                                        ; preds = %if.else718, %if.end717
  %ta.0 = phi i8** [ %call682, %if.end717 ], [ %call719, %if.else718 ]
  %tobool721 = icmp eq i8** %ta.0, null
  br i1 %tobool721, label %if.then724, label %lor.lhs.false722

lor.lhs.false722:                                 ; preds = %if.end720
  %183 = load i8** %ta.0, align 4, !tbaa !0
  %tobool723 = icmp eq i8* %183, null
  br i1 %tobool723, label %if.then724, label %if.end729

if.then724:                                       ; preds = %lor.lhs.false722, %if.end720
  %lnot726 = icmp eq i32 %down.3, 0
  %conv728 = zext i1 %lnot726 to i64
  br label %return

if.end729:                                        ; preds = %lor.lhs.false722
  %call730 = call i32 @arrlen(i8** %ta.0) nounwind
  %cmp731 = icmp slt i64 %beg.31679, 0
  br i1 %cmp731, label %if.then733, label %if.end737

if.then733:                                       ; preds = %if.end729
  %conv734 = sext i32 %call730 to i64
  %184 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.31679, i64 %conv734)
  %185 = extractvalue { i64, i1 } %184, 0
  %186 = extractvalue { i64, i1 } %184, 1
  br i1 %186, label %ioc_bb735, label %if.end737

ioc_bb735:                                        ; preds = %if.then733
  call void @__ioc_report_add_overflow(i32 1294, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %beg.31679, i64 %conv734, i8 14) nounwind
  br label %if.end737

if.end737:                                        ; preds = %ioc_bb735, %if.then733, %if.end729
  %beg.4 = phi i64 [ %beg.31679, %if.end729 ], [ %185, %if.then733 ], [ %185, %ioc_bb735 ]
  %tobool738 = icmp ne i32 %down.3, 0
  br i1 %tobool738, label %if.then739, label %if.else744

if.then739:                                       ; preds = %if.end737
  %187 = icmp sgt i64 %beg.4, -1
  br i1 %187, label %if.then739.land.lhs.true756_crit_edge, label %return

if.then739.land.lhs.true756_crit_edge:            ; preds = %if.then739
  %conv757.pre = sext i32 %call730 to i64
  br label %land.lhs.true756

if.else744:                                       ; preds = %if.end737
  %conv745 = sext i32 %call730 to i64
  %cmp746 = icmp slt i64 %beg.4, %conv745
  br i1 %cmp746, label %if.end753, label %if.then748

if.then748:                                       ; preds = %if.else744
  %188 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call730, i32 1)
  %189 = extractvalue { i32, i1 } %188, 0
  %190 = extractvalue { i32, i1 } %188, 1
  br i1 %190, label %ioc_bb749, label %cont750

ioc_bb749:                                        ; preds = %if.then748
  call void @__ioc_report_add_overflow(i32 1300, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv745, i64 1, i8 13) nounwind
  br label %cont750

cont750:                                          ; preds = %if.then748, %ioc_bb749
  %conv751 = sext i32 %189 to i64
  br label %return

if.end753:                                        ; preds = %if.else744
  %cmp754.old = icmp sgt i64 %beg.4, -1
  br i1 %cmp754.old, label %land.lhs.true756, label %return

land.lhs.true756:                                 ; preds = %if.then739.land.lhs.true756_crit_edge, %if.end753
  %conv757.pre-phi = phi i64 [ %conv757.pre, %if.then739.land.lhs.true756_crit_edge ], [ %conv745, %if.end753 ]
  %cmp758 = icmp slt i64 %beg.4, %conv757.pre-phi
  br i1 %cmp758, label %if.then760, label %return

if.then760:                                       ; preds = %land.lhs.true756
  br i1 %tobool738, label %if.then762, label %if.else791

if.then762:                                       ; preds = %if.then760
  %tobool763 = icmp eq i32 %hasbeg.31682, 0
  br i1 %tobool763, label %if.then764, label %if.end768

if.then764:                                       ; preds = %if.then762
  %191 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call730, i32 1)
  %192 = extractvalue { i32, i1 } %191, 0
  %193 = extractvalue { i32, i1 } %191, 1
  br i1 %193, label %ioc_bb765, label %cont766

ioc_bb765:                                        ; preds = %if.then764
  call void @__ioc_report_sub_overflow(i32 1304, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %conv757.pre-phi, i64 1, i8 13) nounwind
  br label %cont766

cont766:                                          ; preds = %if.then764, %ioc_bb765
  %conv767 = sext i32 %192 to i64
  br label %if.end768

if.end768:                                        ; preds = %if.then762, %cont766
  %beg.5 = phi i64 [ %beg.4, %if.then762 ], [ %conv767, %cont766 ]
  %194 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.5, i64 1)
  %195 = extractvalue { i64, i1 } %194, 0
  %196 = extractvalue { i64, i1 } %194, 1
  br i1 %196, label %ioc_bb769, label %cont770

ioc_bb769:                                        ; preds = %if.end768
  call void @__ioc_report_add_overflow(i32 1305, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 1, i64 %beg.5, i8 14) nounwind
  br label %cont770

cont770:                                          ; preds = %if.end768, %ioc_bb769
  %idx.ext = trunc i64 %beg.5 to i32
  %cmp7731772 = icmp slt i32 %idx.ext, 0
  br i1 %cmp7731772, label %return, label %for.body775.lr.ph

for.body775.lr.ph:                                ; preds = %cont770
  %add.ptr771 = getelementptr inbounds i8** %ta.0, i32 %idx.ext
  %tobool776 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body775

for.body775:                                      ; preds = %for.body775.lr.ph, %cont788
  %r.51775 = phi i64 [ %195, %for.body775.lr.ph ], [ %202, %cont788 ]
  %num.51774 = phi i64 [ %num.4, %for.body775.lr.ph ], [ %num.6, %cont788 ]
  %p.01773 = phi i8** [ %add.ptr771, %for.body775.lr.ph ], [ %incdec.ptr789, %cont788 ]
  br i1 %tobool776, label %for.inc786, label %land.lhs.true777

land.lhs.true777:                                 ; preds = %for.body775
  %197 = load i8** %p.01773, align 4, !tbaa !0
  %call778 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %197) nounwind
  %tobool779 = icmp eq i32 %call778, 0
  br i1 %tobool779, label %for.inc786, label %land.lhs.true780

land.lhs.true780:                                 ; preds = %land.lhs.true777
  %198 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.51774, i64 -1)
  %199 = extractvalue { i64, i1 } %198, 0
  %200 = extractvalue { i64, i1 } %198, 1
  br i1 %200, label %ioc_bb781, label %cont782

ioc_bb781:                                        ; preds = %land.lhs.true780
  call void @__ioc_report_add_overflow(i32 1306, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.51774, i64 -1, i8 14) nounwind
  br label %cont782

cont782:                                          ; preds = %land.lhs.true780, %ioc_bb781
  %tobool783 = icmp eq i64 %199, 0
  br i1 %tobool783, label %return, label %for.inc786

for.inc786:                                       ; preds = %cont782, %land.lhs.true777, %for.body775
  %num.6 = phi i64 [ %199, %cont782 ], [ %num.51774, %land.lhs.true777 ], [ %num.51774, %for.body775 ]
  %201 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.51775, i64 -1)
  %202 = extractvalue { i64, i1 } %201, 0
  %203 = extractvalue { i64, i1 } %201, 1
  br i1 %203, label %ioc_bb787, label %cont788

ioc_bb787:                                        ; preds = %for.inc786
  call void @__ioc_report_add_overflow(i32 1305, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %r.51775, i64 -1, i8 14) nounwind
  br label %cont788

cont788:                                          ; preds = %for.inc786, %ioc_bb787
  %incdec.ptr789 = getelementptr inbounds i8** %p.01773, i32 -1
  %cmp773 = icmp ult i8** %incdec.ptr789, %ta.0
  br i1 %cmp773, label %return, label %for.body775

if.else791:                                       ; preds = %if.then760
  %204 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.4, i64 1)
  %205 = extractvalue { i64, i1 } %204, 0
  %206 = extractvalue { i64, i1 } %204, 1
  br i1 %206, label %ioc_bb792, label %cont793

ioc_bb792:                                        ; preds = %if.else791
  call void @__ioc_report_add_overflow(i32 1311, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 1, i64 %beg.4, i8 14) nounwind
  br label %cont793

cont793:                                          ; preds = %if.else791, %ioc_bb792
  %idx.ext794 = trunc i64 %beg.4 to i32
  %add.ptr795 = getelementptr inbounds i8** %ta.0, i32 %idx.ext794
  %207 = load i8** %add.ptr795, align 4, !tbaa !0
  %tobool7971779 = icmp eq i8* %207, null
  br i1 %tobool7971779, label %return, label %for.body798.lr.ph

for.body798.lr.ph:                                ; preds = %cont793
  %tobool799 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body798

for.body798:                                      ; preds = %for.body798.lr.ph, %cont811
  %208 = phi i8* [ %207, %for.body798.lr.ph ], [ %215, %cont811 ]
  %r.61782 = phi i64 [ %205, %for.body798.lr.ph ], [ %213, %cont811 ]
  %num.71781 = phi i64 [ %num.4, %for.body798.lr.ph ], [ %num.8, %cont811 ]
  %p.11780 = phi i8** [ %add.ptr795, %for.body798.lr.ph ], [ %incdec.ptr812, %cont811 ]
  br i1 %tobool799, label %for.inc809, label %land.lhs.true800

land.lhs.true800:                                 ; preds = %for.body798
  %call801 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %208) nounwind
  %tobool802 = icmp eq i32 %call801, 0
  br i1 %tobool802, label %for.inc809, label %land.lhs.true803

land.lhs.true803:                                 ; preds = %land.lhs.true800
  %209 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.71781, i64 -1)
  %210 = extractvalue { i64, i1 } %209, 0
  %211 = extractvalue { i64, i1 } %209, 1
  br i1 %211, label %ioc_bb804, label %cont805

ioc_bb804:                                        ; preds = %land.lhs.true803
  call void @__ioc_report_add_overflow(i32 1312, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.71781, i64 -1, i8 14) nounwind
  br label %cont805

cont805:                                          ; preds = %land.lhs.true803, %ioc_bb804
  %tobool806 = icmp eq i64 %210, 0
  br i1 %tobool806, label %return, label %for.inc809

for.inc809:                                       ; preds = %cont805, %land.lhs.true800, %for.body798
  %num.8 = phi i64 [ %210, %cont805 ], [ %num.71781, %land.lhs.true800 ], [ %num.71781, %for.body798 ]
  %212 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.61782, i64 1)
  %213 = extractvalue { i64, i1 } %212, 0
  %214 = extractvalue { i64, i1 } %212, 1
  br i1 %214, label %ioc_bb810, label %cont811

ioc_bb810:                                        ; preds = %for.inc809
  call void @__ioc_report_add_overflow(i32 1311, i32 53, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.61782, i64 1, i8 14) nounwind
  br label %cont811

cont811:                                          ; preds = %for.inc809, %ioc_bb810
  %incdec.ptr812 = getelementptr inbounds i8** %p.11780, i32 1
  %215 = load i8** %incdec.ptr812, align 4, !tbaa !0
  %tobool797 = icmp eq i8* %215, null
  br i1 %tobool797, label %return, label %for.body798

if.else816:                                       ; preds = %if.end638
  %call819 = call i8* @getstrvalue(%struct.value* %v)
  br i1 %tobool575, label %if.else967, label %if.then818

if.then818:                                       ; preds = %if.else816
  store i8* %call819, i8** %s, align 4, !tbaa !0
  store i8* %call819, i8** %d, align 4, !tbaa !0
  %call820 = call i8** @sepsplit(i8* %call819, i8* %sep.21676, i32 1, i32 1) nounwind
  %call821 = call i32 @arrlen(i8** %call820) nounwind
  %cmp822 = icmp slt i64 %beg.31679, 0
  br i1 %cmp822, label %if.then824, label %if.end828

if.then824:                                       ; preds = %if.then818
  %conv825 = sext i32 %call821 to i64
  %216 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.31679, i64 %conv825)
  %217 = extractvalue { i64, i1 } %216, 0
  %218 = extractvalue { i64, i1 } %216, 1
  br i1 %218, label %ioc_bb826, label %if.end828

ioc_bb826:                                        ; preds = %if.then824
  call void @__ioc_report_add_overflow(i32 1320, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %beg.31679, i64 %conv825, i8 14) nounwind
  br label %if.end828

if.end828:                                        ; preds = %ioc_bb826, %if.then824, %if.then818
  %beg.6 = phi i64 [ %beg.31679, %if.then818 ], [ %217, %if.then824 ], [ %217, %ioc_bb826 ]
  %tobool829 = icmp ne i32 %down.3, 0
  br i1 %tobool829, label %if.then830, label %if.else835

if.then830:                                       ; preds = %if.end828
  %cmp831 = icmp slt i64 %beg.6, 0
  br i1 %cmp831, label %return, label %if.then830.land.lhs.true847_crit_edge

if.then830.land.lhs.true847_crit_edge:            ; preds = %if.then830
  %conv848.pre = sext i32 %call821 to i64
  br label %land.lhs.true847

if.else835:                                       ; preds = %if.end828
  %conv836 = sext i32 %call821 to i64
  %cmp837 = icmp slt i64 %beg.6, %conv836
  br i1 %cmp837, label %if.end844, label %if.then839

if.then839:                                       ; preds = %if.else835
  %219 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call821, i32 1)
  %220 = extractvalue { i32, i1 } %219, 0
  %221 = extractvalue { i32, i1 } %219, 1
  br i1 %221, label %ioc_bb840, label %cont841

ioc_bb840:                                        ; preds = %if.then839
  call void @__ioc_report_add_overflow(i32 1326, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv836, i64 1, i8 13) nounwind
  br label %cont841

cont841:                                          ; preds = %if.then839, %ioc_bb840
  %conv842 = sext i32 %220 to i64
  br label %return

if.end844:                                        ; preds = %if.else835
  %cmp845 = icmp sgt i64 %beg.6, -1
  br i1 %cmp845, label %land.lhs.true847, label %if.end914

land.lhs.true847:                                 ; preds = %if.then830.land.lhs.true847_crit_edge, %if.end844
  %conv848.pre-phi = phi i64 [ %conv848.pre, %if.then830.land.lhs.true847_crit_edge ], [ %conv836, %if.end844 ]
  %cmp849 = icmp slt i64 %beg.6, %conv848.pre-phi
  br i1 %cmp849, label %if.then851, label %if.end914

if.then851:                                       ; preds = %land.lhs.true847
  br i1 %tobool829, label %if.then853, label %if.else887

if.then853:                                       ; preds = %if.then851
  %tobool854 = icmp eq i32 %hasbeg.31682, 0
  br i1 %tobool854, label %if.then855, label %if.end859

if.then855:                                       ; preds = %if.then853
  %222 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call821, i32 1)
  %223 = extractvalue { i32, i1 } %222, 0
  %224 = extractvalue { i32, i1 } %222, 1
  br i1 %224, label %ioc_bb856, label %cont857

ioc_bb856:                                        ; preds = %if.then855
  call void @__ioc_report_sub_overflow(i32 1330, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %conv848.pre-phi, i64 1, i8 13) nounwind
  br label %cont857

cont857:                                          ; preds = %if.then855, %ioc_bb856
  %conv858 = sext i32 %223 to i64
  br label %if.end859

if.end859:                                        ; preds = %if.then853, %cont857
  %beg.7 = phi i64 [ %beg.6, %if.then853 ], [ %conv858, %cont857 ]
  %225 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.7, i64 1)
  %226 = extractvalue { i64, i1 } %225, 0
  %227 = extractvalue { i64, i1 } %225, 1
  br i1 %227, label %ioc_bb860, label %cont861

ioc_bb860:                                        ; preds = %if.end859
  call void @__ioc_report_add_overflow(i32 1331, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 1, i64 %beg.7, i8 14) nounwind
  br label %cont861

cont861:                                          ; preds = %if.end859, %ioc_bb860
  %idx.ext862 = trunc i64 %beg.7 to i32
  %cmp8651756 = icmp slt i32 %idx.ext862, 0
  br i1 %cmp8651756, label %return, label %for.body867.lr.ph

for.body867.lr.ph:                                ; preds = %cont861
  %add.ptr863 = getelementptr inbounds i8** %call820, i32 %idx.ext862
  %tobool868 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body867

for.body867:                                      ; preds = %for.body867.lr.ph, %for.cond864.backedge
  %r.71759 = phi i64 [ %226, %for.body867.lr.ph ], [ %233, %for.cond864.backedge ]
  %num.91758 = phi i64 [ %num.4, %for.body867.lr.ph ], [ %num.10, %for.cond864.backedge ]
  %p.21757 = phi i8** [ %add.ptr863, %for.body867.lr.ph ], [ %incdec.ptr879, %for.cond864.backedge ]
  br i1 %tobool868, label %for.inc878, label %land.lhs.true869

land.lhs.true869:                                 ; preds = %for.body867
  %228 = load i8** %p.21757, align 4, !tbaa !0
  %call870 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %228) nounwind
  %tobool871 = icmp eq i32 %call870, 0
  br i1 %tobool871, label %for.inc878, label %land.lhs.true872

land.lhs.true872:                                 ; preds = %land.lhs.true869
  %229 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.91758, i64 -1)
  %230 = extractvalue { i64, i1 } %229, 0
  %231 = extractvalue { i64, i1 } %229, 1
  br i1 %231, label %ioc_bb873, label %cont874

ioc_bb873:                                        ; preds = %land.lhs.true872
  call void @__ioc_report_add_overflow(i32 1332, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.91758, i64 -1, i8 14) nounwind
  br label %cont874

cont874:                                          ; preds = %land.lhs.true872, %ioc_bb873
  %tobool875 = icmp eq i64 %230, 0
  br i1 %tobool875, label %if.end914, label %for.inc878

for.inc878:                                       ; preds = %cont874, %land.lhs.true869, %for.body867
  %num.10 = phi i64 [ %230, %cont874 ], [ %num.91758, %land.lhs.true869 ], [ %num.91758, %for.body867 ]
  %incdec.ptr879 = getelementptr inbounds i8** %p.21757, i32 -1
  %232 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.71759, i64 -1)
  %233 = extractvalue { i64, i1 } %232, 0
  %234 = extractvalue { i64, i1 } %232, 1
  br i1 %234, label %ioc_bb880, label %for.cond864.backedge

for.cond864.backedge:                             ; preds = %for.inc878, %ioc_bb880
  %cmp865 = icmp ult i8** %incdec.ptr879, %call820
  br i1 %cmp865, label %return, label %for.body867

ioc_bb880:                                        ; preds = %for.inc878
  call void @__ioc_report_add_overflow(i32 1331, i32 63, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %r.71759, i64 -1, i8 14) nounwind
  br label %for.cond864.backedge

if.else887:                                       ; preds = %if.then851
  %235 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.6, i64 1)
  %236 = extractvalue { i64, i1 } %235, 0
  %237 = extractvalue { i64, i1 } %235, 1
  br i1 %237, label %ioc_bb888, label %cont889

ioc_bb888:                                        ; preds = %if.else887
  call void @__ioc_report_add_overflow(i32 1338, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 1, i64 %beg.6, i8 14) nounwind
  br label %cont889

cont889:                                          ; preds = %if.else887, %ioc_bb888
  %idx.ext890 = trunc i64 %beg.6 to i32
  %add.ptr891 = getelementptr inbounds i8** %call820, i32 %idx.ext890
  %238 = load i8** %add.ptr891, align 4, !tbaa !0
  %tobool8931765 = icmp eq i8* %238, null
  br i1 %tobool8931765, label %return, label %for.body894.lr.ph

for.body894.lr.ph:                                ; preds = %cont889
  %tobool895 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body894

for.body894:                                      ; preds = %for.body894.lr.ph, %cont907
  %239 = phi i8* [ %238, %for.body894.lr.ph ], [ %246, %cont907 ]
  %r.81769 = phi i64 [ %236, %for.body894.lr.ph ], [ %244, %cont907 ]
  %num.111768 = phi i64 [ %num.4, %for.body894.lr.ph ], [ %num.12, %cont907 ]
  %p.31766 = phi i8** [ %add.ptr891, %for.body894.lr.ph ], [ %incdec.ptr908, %cont907 ]
  br i1 %tobool895, label %for.inc905, label %land.lhs.true896

land.lhs.true896:                                 ; preds = %for.body894
  %call897 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %239) nounwind
  %tobool898 = icmp eq i32 %call897, 0
  br i1 %tobool898, label %for.inc905, label %land.lhs.true899

land.lhs.true899:                                 ; preds = %land.lhs.true896
  %240 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.111768, i64 -1)
  %241 = extractvalue { i64, i1 } %240, 0
  %242 = extractvalue { i64, i1 } %240, 1
  br i1 %242, label %ioc_bb900, label %cont901

ioc_bb900:                                        ; preds = %land.lhs.true899
  call void @__ioc_report_add_overflow(i32 1339, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.111768, i64 -1, i8 14) nounwind
  br label %cont901

cont901:                                          ; preds = %land.lhs.true899, %ioc_bb900
  %tobool902 = icmp eq i64 %241, 0
  br i1 %tobool902, label %for.end909, label %for.inc905

for.inc905:                                       ; preds = %cont901, %land.lhs.true896, %for.body894
  %num.12 = phi i64 [ %241, %cont901 ], [ %num.111768, %land.lhs.true896 ], [ %num.111768, %for.body894 ]
  %243 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.81769, i64 1)
  %244 = extractvalue { i64, i1 } %243, 0
  %245 = extractvalue { i64, i1 } %243, 1
  br i1 %245, label %ioc_bb906, label %cont907

ioc_bb906:                                        ; preds = %for.inc905
  call void @__ioc_report_add_overflow(i32 1338, i32 53, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.81769, i64 1, i8 14) nounwind
  br label %cont907

cont907:                                          ; preds = %for.inc905, %ioc_bb906
  %incdec.ptr908 = getelementptr inbounds i8** %p.31766, i32 1
  %246 = load i8** %incdec.ptr908, align 4, !tbaa !0
  %tobool893 = icmp eq i8* %246, null
  br i1 %tobool893, label %return, label %for.body894

for.end909:                                       ; preds = %cont901
  %.pr1688 = load i8** %p.31766, align 4, !tbaa !0
  %tobool910 = icmp eq i8* %.pr1688, null
  br i1 %tobool910, label %return, label %if.end914

if.end914:                                        ; preds = %cont874, %for.end909, %land.lhs.true847, %if.end844
  %r.9 = phi i64 [ %r.81769, %for.end909 ], [ 0, %land.lhs.true847 ], [ 0, %if.end844 ], [ %r.71759, %cont874 ]
  %tobool915 = icmp ne i32 %a2, 0
  br i1 %tobool915, label %if.then916, label %for.cond920.preheader

if.then916:                                       ; preds = %if.end914
  %247 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.9, i64 1)
  %248 = extractvalue { i64, i1 } %247, 0
  %249 = extractvalue { i64, i1 } %247, 1
  br i1 %249, label %ioc_bb917, label %for.cond920.preheader

ioc_bb917:                                        ; preds = %if.then916
  call void @__ioc_report_add_overflow(i32 1346, i32 10, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.9, i64 1, i8 14) nounwind
  br label %for.cond920.preheader

for.cond920.preheader:                            ; preds = %ioc_bb917, %if.then916, %if.end914
  %r.11.ph = phi i64 [ %r.9, %if.end914 ], [ %248, %if.then916 ], [ %248, %ioc_bb917 ]
  %call9211748 = call i8* @findword(i8** %d, i8* %sep.21676) nounwind
  %tobool9221749 = icmp eq i8* %call9211748, null
  br i1 %tobool9221749, label %cont964, label %land.rhs923

land.rhs923:                                      ; preds = %for.cond920.preheader, %for.cond920.backedge
  %call9211752 = phi i8* [ %call921, %for.cond920.backedge ], [ %call9211748, %for.cond920.preheader ]
  %r.111751 = phi i64 [ %252, %for.cond920.backedge ], [ %r.11.ph, %for.cond920.preheader ]
  %i.31750 = phi i32 [ %269, %for.cond920.backedge ], [ 0, %for.cond920.preheader ]
  %250 = load i8* %call9211752, align 1, !tbaa !1
  %tobool925 = icmp eq i8 %250, 0
  br i1 %tobool925, label %cont964, label %for.body928

for.body928:                                      ; preds = %land.rhs923
  %251 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.111751, i64 -1)
  %252 = extractvalue { i64, i1 } %251, 0
  %253 = extractvalue { i64, i1 } %251, 1
  br i1 %253, label %ioc_bb929, label %cont930

ioc_bb929:                                        ; preds = %for.body928
  call void @__ioc_report_add_overflow(i32 1348, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %r.111751, i64 -1, i8 14) nounwind
  br label %cont930

cont930:                                          ; preds = %for.body928, %ioc_bb929
  %tobool931 = icmp eq i64 %252, 0
  br i1 %tobool931, label %if.then932, label %for.inc958

if.then932:                                       ; preds = %cont930
  %254 = load i8** %s, align 4, !tbaa !0
  %sub.ptr.lhs.cast933 = ptrtoint i8* %call9211752 to i32
  %sub.ptr.rhs.cast934 = ptrtoint i8* %254 to i32
  %sub.ptr.sub935 = sub i32 %sub.ptr.lhs.cast933, %sub.ptr.rhs.cast934
  %cond939 = select i1 %tobool915, i32 -1, i32 1
  %255 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub935, i32 %cond939)
  %256 = extractvalue { i32, i1 } %255, 0
  %257 = extractvalue { i32, i1 } %255, 1
  br i1 %257, label %ioc_bb940, label %cont941

ioc_bb940:                                        ; preds = %if.then932
  %258 = sext i32 %cond939 to i64
  %259 = sext i32 %sub.ptr.sub935 to i64
  call void @__ioc_report_add_overflow(i32 1349, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %259, i64 %258, i8 13) nounwind
  br label %cont941

cont941:                                          ; preds = %if.then932, %ioc_bb940
  %conv942 = sext i32 %256 to i64
  br i1 %tobool915, label %return, label %land.lhs.true944

land.lhs.true944:                                 ; preds = %cont941
  %260 = load i8* %t.01791, align 1, !tbaa !1
  %cmp946 = icmp eq i8 %260, 44
  br i1 %cmp946, label %return, label %if.then948

if.then948:                                       ; preds = %land.lhs.true944
  %arrayidx949 = getelementptr inbounds i8** %call820, i32 %i.31750
  %261 = load i8** %arrayidx949, align 4, !tbaa !0
  %call950 = call i32 @strlen(i8* %261) nounwind readonly
  %conv951 = zext i32 %call950 to i64
  %262 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv942, i64 %conv951)
  %263 = extractvalue { i64, i1 } %262, 0
  %264 = extractvalue { i64, i1 } %262, 1
  br i1 %264, label %ioc_bb952, label %cont953

ioc_bb952:                                        ; preds = %if.then948
  call void @__ioc_report_add_overflow(i32 1351, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv942, i64 %conv951, i8 14) nounwind
  br label %cont953

cont953:                                          ; preds = %if.then948, %ioc_bb952
  %265 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %263, i64 1)
  %266 = extractvalue { i64, i1 } %265, 0
  %267 = extractvalue { i64, i1 } %265, 1
  br i1 %267, label %ioc_bb954, label %cont955

ioc_bb954:                                        ; preds = %cont953
  call void @__ioc_report_sub_overflow(i32 1351, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %263, i64 1, i8 14) nounwind
  br label %cont955

cont955:                                          ; preds = %cont953, %ioc_bb954
  store i64 %266, i64* %w, align 4, !tbaa !4
  br label %return

for.inc958:                                       ; preds = %cont930
  %268 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.31750, i32 1)
  %269 = extractvalue { i32, i1 } %268, 0
  %270 = extractvalue { i32, i1 } %268, 1
  br i1 %270, label %ioc_bb959, label %for.cond920.backedge

for.cond920.backedge:                             ; preds = %for.inc958, %ioc_bb959
  %call921 = call i8* @findword(i8** %d, i8* %sep.21676) nounwind
  %tobool922 = icmp eq i8* %call921, null
  br i1 %tobool922, label %cont964, label %land.rhs923

ioc_bb959:                                        ; preds = %for.inc958
  %271 = sext i32 %i.31750 to i64
  call void @__ioc_report_add_overflow(i32 1347, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %271, i64 1, i8 13) nounwind
  br label %for.cond920.backedge

cont964:                                          ; preds = %for.cond920.backedge, %land.rhs923, %for.cond920.preheader
  %conv966 = sext i1 %tobool915 to i64
  br label %return

if.else967:                                       ; preds = %if.else816
  store i8* %call819, i8** %d, align 4, !tbaa !0
  %tobool969 = icmp eq i8* %call819, null
  br i1 %tobool969, label %return, label %lor.lhs.false970

lor.lhs.false970:                                 ; preds = %if.else967
  %272 = load i8* %call819, align 1, !tbaa !1
  %tobool971 = icmp eq i8 %272, 0
  br i1 %tobool971, label %return, label %if.end973

if.end973:                                        ; preds = %lor.lhs.false970
  %call974 = call i32 @mb_metastrlen(i8* %call819, i32 0) nounwind
  %273 = load i8** %d, align 4, !tbaa !0
  %call975 = call i32 @strlen(i8* %273) nounwind readonly
  %274 = icmp sgt i32 %call975, -1
  br i1 %274, label %cont978, label %ioc_bb977

ioc_bb977:                                        ; preds = %if.end973
  %275 = zext i32 %call975 to i64
  call void @__ioc_report_conversion(i32 1367, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %275, i8 0) nounwind
  br label %cont978

cont978:                                          ; preds = %ioc_bb977, %if.end973
  %cmp979 = icmp slt i64 %beg.31679, 0
  br i1 %cmp979, label %if.then981, label %if.end985.thread

if.end985.thread:                                 ; preds = %cont978
  call void @mb_metacharinit() nounwind
  %conv989.pre = sext i32 %call974 to i64
  br label %land.lhs.true988

if.then981:                                       ; preds = %cont978
  %conv982 = sext i32 %call974 to i64
  %276 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.31679, i64 %conv982)
  %277 = extractvalue { i64, i1 } %276, 0
  %278 = extractvalue { i64, i1 } %276, 1
  br i1 %278, label %ioc_bb983, label %if.end985

ioc_bb983:                                        ; preds = %if.then981
  call void @__ioc_report_add_overflow(i32 1369, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %beg.31679, i64 %conv982, i8 14) nounwind
  br label %if.end985

if.end985:                                        ; preds = %ioc_bb983, %if.then981
  call void @mb_metacharinit() nounwind
  %cmp986 = icmp sgt i64 %277, -1
  br i1 %cmp986, label %land.lhs.true988, label %if.end1250

land.lhs.true988:                                 ; preds = %if.end985.thread, %if.end985
  %conv989.pre-phi = phi i64 [ %conv989.pre, %if.end985.thread ], [ %conv982, %if.end985 ]
  %beg.81691 = phi i64 [ %beg.31679, %if.end985.thread ], [ %277, %if.end985 ]
  %cmp990 = icmp slt i64 %beg.81691, %conv989.pre-phi
  br i1 %cmp990, label %if.then992, label %if.end1250

if.then992:                                       ; preds = %land.lhs.true988
  %279 = load i8** %d, align 4, !tbaa !0
  %add.ptr993 = getelementptr inbounds i8* %279, i32 %call975
  %tobool994 = icmp eq i32 %a2, 0
  %tobool996 = icmp ne i32 %down.3, 0
  br i1 %tobool994, label %if.else1103, label %if.then995

if.then995:                                       ; preds = %if.then992
  br i1 %tobool996, label %if.then997, label %for.cond1064.preheader

for.cond1064.preheader:                           ; preds = %if.then995
  %tobool10651740 = icmp eq i64 %beg.81691, 0
  %cmp10671741 = icmp slt i32 %call975, 0
  %or.cond16661742 = or i1 %tobool10651740, %cmp10671741
  br i1 %or.cond16661742, label %for.cond1078.preheader, label %for.body1071

if.then997:                                       ; preds = %if.then995
  %tobool998 = icmp eq i32 %hasbeg.31682, 0
  %conv989.beg.8 = select i1 %tobool998, i64 %conv989.pre-phi, i64 %beg.81691
  %cmp10031729 = icmp slt i64 %conv989.beg.8, 0
  br i1 %cmp10031729, label %for.end1025, label %for.body1005.lr.ph

for.body1005.lr.ph:                               ; preds = %if.then997
  %tobool1008 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body1005

for.body1005:                                     ; preds = %for.body1005.lr.ph, %for.cond1002.backedge
  %lastpos.01733 = phi i8* [ null, %for.body1005.lr.ph ], [ %lastpos.1, %for.cond1002.backedge ]
  %nmatches.01732 = phi i32 [ 0, %for.body1005.lr.ph ], [ %nmatches.1, %for.cond1002.backedge ]
  %r.121731 = phi i64 [ 0, %for.body1005.lr.ph ], [ %287, %for.cond1002.backedge ]
  %t.41730 = phi i8* [ %279, %for.body1005.lr.ph ], [ %add.ptr1021, %for.cond1002.backedge ]
  %280 = load i8* %t.41730, align 1, !tbaa !1
  store i8 0, i8* %t.41730, align 1, !tbaa !1
  br i1 %tobool1008, label %if.end1015, label %land.lhs.true1009

land.lhs.true1009:                                ; preds = %for.body1005
  %281 = load i8** %d, align 4, !tbaa !0
  %call1010 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %281) nounwind
  %tobool1011 = icmp eq i32 %call1010, 0
  br i1 %tobool1011, label %if.end1015, label %if.then1012

if.then1012:                                      ; preds = %land.lhs.true1009
  %282 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmatches.01732, i32 1)
  %283 = extractvalue { i32, i1 } %282, 0
  %284 = extractvalue { i32, i1 } %282, 1
  br i1 %284, label %ioc_bb1013, label %if.end1015

ioc_bb1013:                                       ; preds = %if.then1012
  %285 = sext i32 %nmatches.01732 to i64
  call void @__ioc_report_add_overflow(i32 1392, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %285, i64 1, i8 13) nounwind
  br label %if.end1015

if.end1015:                                       ; preds = %ioc_bb1013, %if.then1012, %land.lhs.true1009, %for.body1005
  %nmatches.1 = phi i32 [ %nmatches.01732, %land.lhs.true1009 ], [ %nmatches.01732, %for.body1005 ], [ %283, %if.then1012 ], [ %283, %ioc_bb1013 ]
  %lastpos.1 = phi i8* [ %lastpos.01733, %land.lhs.true1009 ], [ %lastpos.01733, %for.body1005 ], [ %t.41730, %if.then1012 ], [ %t.41730, %ioc_bb1013 ]
  store i8 %280, i8* %t.41730, align 1, !tbaa !1
  %cmp1016 = icmp eq i8* %t.41730, %add.ptr993
  br i1 %cmp1016, label %for.end1025, label %if.end1019

if.end1019:                                       ; preds = %if.end1015
  %call1020 = call i32 @mb_metacharlenconv(i8* %t.41730, i32* null) nounwind
  %add.ptr1021 = getelementptr inbounds i8* %t.41730, i32 %call1020
  %286 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.121731, i64 1)
  %287 = extractvalue { i64, i1 } %286, 0
  %288 = extractvalue { i64, i1 } %286, 1
  br i1 %288, label %ioc_bb1023, label %for.cond1002.backedge

for.cond1002.backedge:                            ; preds = %if.end1019, %ioc_bb1023
  %cmp1003 = icmp sgt i64 %287, %conv989.beg.8
  br i1 %cmp1003, label %for.end1025, label %for.body1005

ioc_bb1023:                                       ; preds = %if.end1019
  call void @__ioc_report_add_overflow(i32 1388, i32 46, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.121731, i64 1, i8 14) nounwind
  br label %for.cond1002.backedge

for.end1025:                                      ; preds = %for.cond1002.backedge, %if.end1015, %if.then997
  %nmatches.2 = phi i32 [ 0, %if.then997 ], [ %nmatches.1, %if.end1015 ], [ %nmatches.1, %for.cond1002.backedge ]
  %lastpos.2 = phi i8* [ null, %if.then997 ], [ %lastpos.1, %if.end1015 ], [ %lastpos.1, %for.cond1002.backedge ]
  %conv1026 = sext i32 %nmatches.2 to i64
  %cmp1027 = icmp slt i64 %conv1026, %num.4
  br i1 %cmp1027, label %if.end1250, label %if.then1029

if.then1029:                                      ; preds = %for.end1025
  %cmp1030 = icmp sgt i64 %num.4, 1
  br i1 %cmp1030, label %if.then1032, label %if.end1057

if.then1032:                                      ; preds = %if.then1029
  %289 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv1026, i64 %num.4)
  %290 = extractvalue { i64, i1 } %289, 0
  %291 = extractvalue { i64, i1 } %289, 1
  br i1 %291, label %ioc_bb1034, label %cont1035

ioc_bb1034:                                       ; preds = %if.then1032
  call void @__ioc_report_sub_overflow(i32 1402, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %conv1026, i64 %num.4, i8 14) nounwind
  br label %cont1035

cont1035:                                         ; preds = %if.then1032, %ioc_bb1034
  %conv1036 = trunc i64 %290 to i32
  call void @mb_metacharinit() nounwind
  %292 = load i8** %d, align 4, !tbaa !0
  %tobool1040 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.cond1037

for.cond1037:                                     ; preds = %ioc_bb1054, %if.end1050, %cont1035
  %t.5 = phi i8* [ %292, %cont1035 ], [ %add.ptr1052, %if.end1050 ], [ %add.ptr1052, %ioc_bb1054 ]
  %r.13 = phi i64 [ 0, %cont1035 ], [ %300, %if.end1050 ], [ %300, %ioc_bb1054 ]
  %nmatches.3 = phi i32 [ %conv1036, %cont1035 ], [ %nmatches.4, %if.end1050 ], [ %nmatches.4, %ioc_bb1054 ]
  %293 = load i8* %t.5, align 1, !tbaa !1
  store i8 0, i8* %t.5, align 1, !tbaa !1
  br i1 %tobool1040, label %if.end1050, label %land.lhs.true1041

land.lhs.true1041:                                ; preds = %for.cond1037
  %294 = load i8** %d, align 4, !tbaa !0
  %call1042 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %294) nounwind
  %tobool1043 = icmp eq i32 %call1042, 0
  br i1 %tobool1043, label %if.end1050, label %land.lhs.true1044

land.lhs.true1044:                                ; preds = %land.lhs.true1041
  %295 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmatches.3, i32 -1)
  %296 = extractvalue { i32, i1 } %295, 0
  %297 = extractvalue { i32, i1 } %295, 1
  br i1 %297, label %ioc_bb1045, label %cont1046

ioc_bb1045:                                       ; preds = %land.lhs.true1044
  %298 = sext i32 %nmatches.3 to i64
  call void @__ioc_report_add_overflow(i32 1407, i32 59, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %298, i64 -1, i8 13) nounwind
  br label %cont1046

cont1046:                                         ; preds = %land.lhs.true1044, %ioc_bb1045
  %cmp1047 = icmp eq i32 %nmatches.3, 0
  br i1 %cmp1047, label %if.then1049, label %if.end1050

if.then1049:                                      ; preds = %cont1046
  store i8 %293, i8* %t.5, align 1, !tbaa !1
  br label %if.end1057

if.end1050:                                       ; preds = %land.lhs.true1041, %for.cond1037, %cont1046
  %nmatches.4 = phi i32 [ %296, %cont1046 ], [ %nmatches.3, %land.lhs.true1041 ], [ %nmatches.3, %for.cond1037 ]
  store i8 %293, i8* %t.5, align 1, !tbaa !1
  %call1051 = call i32 @mb_metacharlenconv(i8* %t.5, i32* null) nounwind
  %add.ptr1052 = getelementptr inbounds i8* %t.5, i32 %call1051
  %299 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.13, i64 1)
  %300 = extractvalue { i64, i1 } %299, 0
  %301 = extractvalue { i64, i1 } %299, 1
  br i1 %301, label %ioc_bb1054, label %for.cond1037

ioc_bb1054:                                       ; preds = %if.end1050
  call void @__ioc_report_add_overflow(i32 1404, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.13, i64 1, i8 14) nounwind
  br label %for.cond1037

if.end1057:                                       ; preds = %if.then1029, %if.then1049
  %lastpos.3 = phi i8* [ %t.5, %if.then1049 ], [ %lastpos.2, %if.then1029 ]
  %302 = load i8** %d, align 4, !tbaa !0
  %sub.ptr.lhs.cast1058 = ptrtoint i8* %lastpos.3 to i32
  %sub.ptr.rhs.cast1059 = ptrtoint i8* %302 to i32
  %sub.ptr.sub1060 = sub i32 %sub.ptr.lhs.cast1058, %sub.ptr.rhs.cast1059
  %conv1061 = sext i32 %sub.ptr.sub1060 to i64
  br label %return

for.cond1078.preheader:                           ; preds = %for.cond1064.backedge, %for.cond1064.preheader
  %t.6.lcssa = phi i8* [ %279, %for.cond1064.preheader ], [ %add.ptr1073, %for.cond1064.backedge ]
  %tobool1081 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.cond1078

for.body1071:                                     ; preds = %for.cond1064.preheader, %for.cond1064.backedge
  %beg.101744 = phi i64 [ %304, %for.cond1064.backedge ], [ %beg.81691, %for.cond1064.preheader ]
  %t.61743 = phi i8* [ %add.ptr1073, %for.cond1064.backedge ], [ %279, %for.cond1064.preheader ]
  %call1072 = call i32 @mb_metacharlenconv(i8* %t.61743, i32* null) nounwind
  %add.ptr1073 = getelementptr inbounds i8* %t.61743, i32 %call1072
  %303 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.101744, i64 -1)
  %304 = extractvalue { i64, i1 } %303, 0
  %305 = extractvalue { i64, i1 } %303, 1
  br i1 %305, label %ioc_bb1075, label %for.cond1064.backedge

for.cond1064.backedge:                            ; preds = %for.body1071, %ioc_bb1075
  %tobool1065 = icmp eq i64 %304, 0
  %cmp1067 = icmp ugt i8* %add.ptr1073, %add.ptr993
  %or.cond1666 = or i1 %tobool1065, %cmp1067
  br i1 %or.cond1666, label %for.cond1078.preheader, label %for.body1071

ioc_bb1075:                                       ; preds = %for.body1071
  call void @__ioc_report_add_overflow(i32 1426, i32 44, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %beg.101744, i64 -1, i8 14) nounwind
  br label %for.cond1064.backedge

for.cond1078:                                     ; preds = %for.cond1078.preheader, %if.end1098
  %t.7 = phi i8* [ %add.ptr1100, %if.end1098 ], [ %t.6.lcssa, %for.cond1078.preheader ]
  %num.13 = phi i64 [ %num.14, %if.end1098 ], [ %num.4, %for.cond1078.preheader ]
  %306 = load i8* %t.7, align 1, !tbaa !1
  store i8 0, i8* %t.7, align 1, !tbaa !1
  br i1 %tobool1081, label %if.end1094, label %land.lhs.true1082

land.lhs.true1082:                                ; preds = %for.cond1078
  %307 = load i8** %d, align 4, !tbaa !0
  %call1083 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %307) nounwind
  %tobool1084 = icmp eq i32 %call1083, 0
  br i1 %tobool1084, label %if.end1094, label %land.lhs.true1085

land.lhs.true1085:                                ; preds = %land.lhs.true1082
  %308 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.13, i64 -1)
  %309 = extractvalue { i64, i1 } %308, 0
  %310 = extractvalue { i64, i1 } %308, 1
  br i1 %310, label %ioc_bb1086, label %cont1087

ioc_bb1086:                                       ; preds = %land.lhs.true1085
  call void @__ioc_report_add_overflow(i32 1431, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.13, i64 -1, i8 14) nounwind
  br label %cont1087

cont1087:                                         ; preds = %land.lhs.true1085, %ioc_bb1086
  %tobool1088 = icmp eq i64 %309, 0
  br i1 %tobool1088, label %if.then1089, label %if.end1094

if.then1089:                                      ; preds = %cont1087
  store i8 %306, i8* %t.7, align 1, !tbaa !1
  %311 = load i8** %d, align 4, !tbaa !0
  %sub.ptr.lhs.cast1090 = ptrtoint i8* %t.7 to i32
  %sub.ptr.rhs.cast1091 = ptrtoint i8* %311 to i32
  %sub.ptr.sub1092 = sub i32 %sub.ptr.lhs.cast1090, %sub.ptr.rhs.cast1091
  %conv1093 = sext i32 %sub.ptr.sub1092 to i64
  br label %return

if.end1094:                                       ; preds = %cont1087, %land.lhs.true1082, %for.cond1078
  %num.14 = phi i64 [ %309, %cont1087 ], [ %num.13, %land.lhs.true1082 ], [ %num.13, %for.cond1078 ]
  store i8 %306, i8* %t.7, align 1, !tbaa !1
  %cmp1095 = icmp eq i8* %t.7, %add.ptr993
  br i1 %cmp1095, label %if.end1250, label %if.end1098

if.end1098:                                       ; preds = %if.end1094
  %call1099 = call i32 @mb_metacharlenconv(i8* %t.7, i32* null) nounwind
  %add.ptr1100 = getelementptr inbounds i8* %t.7, i32 %call1099
  br label %for.cond1078

if.else1103:                                      ; preds = %if.then992
  br i1 %tobool996, label %if.then1106, label %for.cond1203.preheader

for.cond1203.preheader:                           ; preds = %if.else1103
  %tobool12041723 = icmp eq i64 %beg.81691, 0
  %cmp12061724 = icmp slt i32 %call975, 0
  %or.cond16681725 = or i1 %tobool12041723, %cmp12061724
  br i1 %or.cond16681725, label %for.cond1217.preheader, label %for.body1210

if.then1106:                                      ; preds = %if.else1103
  %tobool1109 = icmp eq i32 %hasbeg.31682, 0
  %conv989.beg.81667 = select i1 %tobool1109, i64 %conv989.pre-phi, i64 %beg.81691
  %cmp11141714 = icmp slt i64 %conv989.beg.81667, 0
  br i1 %cmp11141714, label %for.end1134, label %for.body1116.lr.ph

for.body1116.lr.ph:                               ; preds = %if.then1106
  %tobool1117 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body1116

for.body1116:                                     ; preds = %for.body1116.lr.ph, %for.cond1113.backedge
  %lastpos1108.01718 = phi i8* [ null, %for.body1116.lr.ph ], [ %lastpos1108.1, %for.cond1113.backedge ]
  %nmatches1107.01717 = phi i32 [ 0, %for.body1116.lr.ph ], [ %nmatches1107.1, %for.cond1113.backedge ]
  %r.141716 = phi i64 [ 0, %for.body1116.lr.ph ], [ %317, %for.cond1113.backedge ]
  %t.81715 = phi i8* [ %279, %for.body1116.lr.ph ], [ %add.ptr1130, %for.cond1113.backedge ]
  br i1 %tobool1117, label %if.end1124, label %land.lhs.true1118

land.lhs.true1118:                                ; preds = %for.body1116
  %call1119 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %t.81715) nounwind
  %tobool1120 = icmp eq i32 %call1119, 0
  br i1 %tobool1120, label %if.end1124, label %if.then1121

if.then1121:                                      ; preds = %land.lhs.true1118
  %312 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmatches1107.01717, i32 1)
  %313 = extractvalue { i32, i1 } %312, 0
  %314 = extractvalue { i32, i1 } %312, 1
  br i1 %314, label %ioc_bb1122, label %if.end1124

ioc_bb1122:                                       ; preds = %if.then1121
  %315 = sext i32 %nmatches1107.01717 to i64
  call void @__ioc_report_add_overflow(i32 1469, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %315, i64 1, i8 13) nounwind
  br label %if.end1124

if.end1124:                                       ; preds = %ioc_bb1122, %if.then1121, %land.lhs.true1118, %for.body1116
  %nmatches1107.1 = phi i32 [ %nmatches1107.01717, %land.lhs.true1118 ], [ %nmatches1107.01717, %for.body1116 ], [ %313, %if.then1121 ], [ %313, %ioc_bb1122 ]
  %lastpos1108.1 = phi i8* [ %lastpos1108.01718, %land.lhs.true1118 ], [ %lastpos1108.01718, %for.body1116 ], [ %t.81715, %if.then1121 ], [ %t.81715, %ioc_bb1122 ]
  %cmp1125 = icmp eq i8* %t.81715, %add.ptr993
  br i1 %cmp1125, label %for.end1134, label %if.end1128

if.end1128:                                       ; preds = %if.end1124
  %call1129 = call i32 @mb_metacharlenconv(i8* %t.81715, i32* null) nounwind
  %add.ptr1130 = getelementptr inbounds i8* %t.81715, i32 %call1129
  %316 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.141716, i64 1)
  %317 = extractvalue { i64, i1 } %316, 0
  %318 = extractvalue { i64, i1 } %316, 1
  br i1 %318, label %ioc_bb1132, label %for.cond1113.backedge

for.cond1113.backedge:                            ; preds = %if.end1128, %ioc_bb1132
  %cmp1114 = icmp sgt i64 %317, %conv989.beg.81667
  br i1 %cmp1114, label %for.end1134, label %for.body1116

ioc_bb1132:                                       ; preds = %if.end1128
  call void @__ioc_report_add_overflow(i32 1467, i32 46, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.141716, i64 1, i8 14) nounwind
  br label %for.cond1113.backedge

for.end1134:                                      ; preds = %for.cond1113.backedge, %if.end1124, %if.then1106
  %nmatches1107.2 = phi i32 [ 0, %if.then1106 ], [ %nmatches1107.1, %if.end1124 ], [ %nmatches1107.1, %for.cond1113.backedge ]
  %lastpos1108.2 = phi i8* [ null, %if.then1106 ], [ %lastpos1108.1, %if.end1124 ], [ %lastpos1108.1, %for.cond1113.backedge ]
  %conv1135 = sext i32 %nmatches1107.2 to i64
  %cmp1136 = icmp slt i64 %conv1135, %num.4
  br i1 %cmp1136, label %if.end1178, label %if.then1138

if.then1138:                                      ; preds = %for.end1134
  %cmp1139 = icmp sgt i64 %num.4, 1
  br i1 %cmp1139, label %if.then1141, label %if.end1164

if.then1141:                                      ; preds = %if.then1138
  %319 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv1135, i64 %num.4)
  %320 = extractvalue { i64, i1 } %319, 0
  %321 = extractvalue { i64, i1 } %319, 1
  br i1 %321, label %ioc_bb1143, label %cont1144

ioc_bb1143:                                       ; preds = %if.then1141
  call void @__ioc_report_sub_overflow(i32 1482, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %conv1135, i64 %num.4, i8 14) nounwind
  br label %cont1144

cont1144:                                         ; preds = %if.then1141, %ioc_bb1143
  %conv1145 = trunc i64 %320 to i32
  call void @mb_metacharinit() nounwind
  %322 = load i8** %d, align 4, !tbaa !0
  %tobool1147 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.cond1146

for.cond1146:                                     ; preds = %ioc_bb1161, %if.end1157, %cont1144
  %t.9 = phi i8* [ %322, %cont1144 ], [ %add.ptr1159, %if.end1157 ], [ %add.ptr1159, %ioc_bb1161 ]
  %r.15 = phi i64 [ 0, %cont1144 ], [ %328, %if.end1157 ], [ %328, %ioc_bb1161 ]
  %nmatches1107.3 = phi i32 [ %conv1145, %cont1144 ], [ %nmatches1107.4, %if.end1157 ], [ %nmatches1107.4, %ioc_bb1161 ]
  br i1 %tobool1147, label %if.end1157, label %land.lhs.true1148

land.lhs.true1148:                                ; preds = %for.cond1146
  %call1149 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %t.9) nounwind
  %tobool1150 = icmp eq i32 %call1149, 0
  br i1 %tobool1150, label %if.end1157, label %land.lhs.true1151

land.lhs.true1151:                                ; preds = %land.lhs.true1148
  %323 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmatches1107.3, i32 -1)
  %324 = extractvalue { i32, i1 } %323, 0
  %325 = extractvalue { i32, i1 } %323, 1
  br i1 %325, label %ioc_bb1152, label %cont1153

ioc_bb1152:                                       ; preds = %land.lhs.true1151
  %326 = sext i32 %nmatches1107.3 to i64
  call void @__ioc_report_add_overflow(i32 1485, i32 59, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %326, i64 -1, i8 13) nounwind
  br label %cont1153

cont1153:                                         ; preds = %land.lhs.true1151, %ioc_bb1152
  %cmp1154 = icmp eq i32 %nmatches1107.3, 0
  br i1 %cmp1154, label %if.end1164, label %if.end1157

if.end1157:                                       ; preds = %land.lhs.true1148, %for.cond1146, %cont1153
  %nmatches1107.4 = phi i32 [ %324, %cont1153 ], [ %nmatches1107.3, %land.lhs.true1148 ], [ %nmatches1107.3, %for.cond1146 ]
  %call1158 = call i32 @mb_metacharlenconv(i8* %t.9, i32* null) nounwind
  %add.ptr1159 = getelementptr inbounds i8* %t.9, i32 %call1158
  %327 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.15, i64 1)
  %328 = extractvalue { i64, i1 } %327, 0
  %329 = extractvalue { i64, i1 } %327, 1
  br i1 %329, label %ioc_bb1161, label %for.cond1146

ioc_bb1161:                                       ; preds = %if.end1157
  call void @__ioc_report_add_overflow(i32 1484, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %r.15, i64 1, i8 14) nounwind
  br label %for.cond1146

if.end1164:                                       ; preds = %cont1153, %if.then1138
  %lastpos1108.3 = phi i8* [ %lastpos1108.2, %if.then1138 ], [ %t.9, %cont1153 ]
  %call1165 = call i32 @mb_metacharlenconv(i8* %lastpos1108.3, i32* null) nounwind
  %add.ptr1166 = getelementptr inbounds i8* %lastpos1108.3, i32 %call1165
  br i1 %tobool25, label %if.then1168, label %if.end1169

if.then1168:                                      ; preds = %if.end1164
  store i32 %call1165, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end1169

if.end1169:                                       ; preds = %if.then1168, %if.end1164
  br i1 %tobool28, label %if.then1171, label %if.end1173

if.then1171:                                      ; preds = %if.end1169
  %call1172 = call i32 @mb_metacharlenconv(i8* %add.ptr1166, i32* null) nounwind
  store i32 %call1172, i32* %nextcharlen, align 4, !tbaa !3
  br label %if.end1173

if.end1173:                                       ; preds = %if.then1171, %if.end1169
  %330 = load i8** %d, align 4, !tbaa !0
  %sub.ptr.lhs.cast1174 = ptrtoint i8* %add.ptr1166 to i32
  %sub.ptr.rhs.cast1175 = ptrtoint i8* %330 to i32
  %sub.ptr.sub1176 = sub i32 %sub.ptr.lhs.cast1174, %sub.ptr.rhs.cast1175
  %conv1177 = sext i32 %sub.ptr.sub1176 to i64
  br label %return

if.end1178:                                       ; preds = %for.end1134
  %331 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv989.beg.81667, i64 1)
  %332 = extractvalue { i64, i1 } %331, 0
  %333 = extractvalue { i64, i1 } %331, 1
  br i1 %333, label %ioc_bb1179, label %cont1180

ioc_bb1179:                                       ; preds = %if.end1178
  call void @__ioc_report_add_overflow(i32 1501, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv989.beg.81667, i64 1, i8 14) nounwind
  br label %cont1180

cont1180:                                         ; preds = %if.end1178, %ioc_bb1179
  %idx.ext1181 = trunc i64 %conv989.beg.81667 to i32
  %cmp11841709 = icmp slt i32 %idx.ext1181, 0
  br i1 %cmp11841709, label %if.end1250, label %for.body1186.lr.ph

for.body1186.lr.ph:                               ; preds = %cont1180
  %334 = load i8** %d, align 4, !tbaa !0
  %add.ptr1182 = getelementptr inbounds i8* %334, i32 %idx.ext1181
  %tobool1187 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.body1186

for.body1186:                                     ; preds = %for.body1186.lr.ph, %cont1199
  %r.161712 = phi i64 [ %332, %for.body1186.lr.ph ], [ %339, %cont1199 ]
  %num.151711 = phi i64 [ %num.4, %for.body1186.lr.ph ], [ %num.16, %cont1199 ]
  %t.101710 = phi i8* [ %add.ptr1182, %for.body1186.lr.ph ], [ %incdec.ptr1200, %cont1199 ]
  br i1 %tobool1187, label %for.inc1197, label %land.lhs.true1188

land.lhs.true1188:                                ; preds = %for.body1186
  %call1189 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %t.101710) nounwind
  %tobool1190 = icmp eq i32 %call1189, 0
  br i1 %tobool1190, label %for.inc1197, label %land.lhs.true1191

land.lhs.true1191:                                ; preds = %land.lhs.true1188
  %335 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.151711, i64 -1)
  %336 = extractvalue { i64, i1 } %335, 0
  %337 = extractvalue { i64, i1 } %335, 1
  br i1 %337, label %ioc_bb1192, label %cont1193

ioc_bb1192:                                       ; preds = %land.lhs.true1191
  call void @__ioc_report_add_overflow(i32 1502, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.151711, i64 -1, i8 14) nounwind
  br label %cont1193

cont1193:                                         ; preds = %land.lhs.true1191, %ioc_bb1192
  %tobool1194 = icmp eq i64 %336, 0
  br i1 %tobool1194, label %return, label %for.inc1197

for.inc1197:                                      ; preds = %cont1193, %land.lhs.true1188, %for.body1186
  %num.16 = phi i64 [ %336, %cont1193 ], [ %num.151711, %land.lhs.true1188 ], [ %num.151711, %for.body1186 ]
  %338 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %r.161712, i64 -1)
  %339 = extractvalue { i64, i1 } %338, 0
  %340 = extractvalue { i64, i1 } %338, 1
  br i1 %340, label %ioc_bb1198, label %cont1199

ioc_bb1198:                                       ; preds = %for.inc1197
  call void @__ioc_report_add_overflow(i32 1501, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %r.161712, i64 -1, i8 14) nounwind
  br label %cont1199

cont1199:                                         ; preds = %for.inc1197, %ioc_bb1198
  %incdec.ptr1200 = getelementptr inbounds i8* %t.101710, i32 -1
  %341 = load i8** %d, align 4, !tbaa !0
  %cmp1184 = icmp ult i8* %incdec.ptr1200, %341
  br i1 %cmp1184, label %if.end1250, label %for.body1186

for.cond1217.preheader:                           ; preds = %for.cond1203.backedge, %for.cond1203.preheader
  %t.11.lcssa = phi i8* [ %279, %for.cond1203.preheader ], [ %add.ptr1212, %for.cond1203.backedge ]
  %tobool1218 = icmp eq %struct.patprog* %pprog.0, null
  br label %for.cond1217

for.body1210:                                     ; preds = %for.cond1203.preheader, %for.cond1203.backedge
  %beg.121727 = phi i64 [ %343, %for.cond1203.backedge ], [ %beg.81691, %for.cond1203.preheader ]
  %t.111726 = phi i8* [ %add.ptr1212, %for.cond1203.backedge ], [ %279, %for.cond1203.preheader ]
  %call1211 = call i32 @mb_metacharlenconv(i8* %t.111726, i32* null) nounwind
  %add.ptr1212 = getelementptr inbounds i8* %t.111726, i32 %call1211
  %342 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %beg.121727, i64 -1)
  %343 = extractvalue { i64, i1 } %342, 0
  %344 = extractvalue { i64, i1 } %342, 1
  br i1 %344, label %ioc_bb1214, label %for.cond1203.backedge

for.cond1203.backedge:                            ; preds = %for.body1210, %ioc_bb1214
  %tobool1204 = icmp eq i64 %343, 0
  %cmp1206 = icmp ugt i8* %add.ptr1212, %add.ptr993
  %or.cond1668 = or i1 %tobool1204, %cmp1206
  br i1 %or.cond1668, label %for.cond1217.preheader, label %for.body1210

ioc_bb1214:                                       ; preds = %for.body1210
  call void @__ioc_report_add_overflow(i32 1507, i32 44, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %beg.121727, i64 -1, i8 14) nounwind
  br label %for.cond1203.backedge

for.cond1217:                                     ; preds = %for.cond1217.preheader, %if.end1244
  %t.12 = phi i8* [ %add.ptr1246, %if.end1244 ], [ %t.11.lcssa, %for.cond1217.preheader ]
  %num.17 = phi i64 [ %num.18, %if.end1244 ], [ %num.4, %for.cond1217.preheader ]
  br i1 %tobool1218, label %if.end1240, label %land.lhs.true1219

land.lhs.true1219:                                ; preds = %for.cond1217
  %call1220 = call i32 @pattry(%struct.patprog* %pprog.0, i8* %t.12) nounwind
  %tobool1221 = icmp eq i32 %call1220, 0
  br i1 %tobool1221, label %if.end1240, label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %land.lhs.true1219
  %345 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %num.17, i64 -1)
  %346 = extractvalue { i64, i1 } %345, 0
  %347 = extractvalue { i64, i1 } %345, 1
  br i1 %347, label %ioc_bb1223, label %cont1224

ioc_bb1223:                                       ; preds = %land.lhs.true1222
  call void @__ioc_report_add_overflow(i32 1510, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %num.17, i64 -1, i8 14) nounwind
  br label %cont1224

cont1224:                                         ; preds = %land.lhs.true1222, %ioc_bb1223
  %tobool1225 = icmp eq i64 %346, 0
  br i1 %tobool1225, label %if.then1226, label %if.end1240

if.then1226:                                      ; preds = %cont1224
  %call1227 = call i32 @mb_metacharlenconv(i8* %t.12, i32* null) nounwind
  %add.ptr1228 = getelementptr inbounds i8* %t.12, i32 %call1227
  br i1 %tobool25, label %if.then1230, label %if.end1231

if.then1230:                                      ; preds = %if.then1226
  store i32 %call1227, i32* %prevcharlen, align 4, !tbaa !3
  br label %if.end1231

if.end1231:                                       ; preds = %if.then1230, %if.then1226
  br i1 %tobool28, label %if.then1233, label %if.end1235

if.then1233:                                      ; preds = %if.end1231
  %call1234 = call i32 @mb_metacharlenconv(i8* %add.ptr1228, i32* null) nounwind
  store i32 %call1234, i32* %nextcharlen, align 4, !tbaa !3
  br label %if.end1235

if.end1235:                                       ; preds = %if.then1233, %if.end1231
  %348 = load i8** %d, align 4, !tbaa !0
  %sub.ptr.lhs.cast1236 = ptrtoint i8* %add.ptr1228 to i32
  %sub.ptr.rhs.cast1237 = ptrtoint i8* %348 to i32
  %sub.ptr.sub1238 = sub i32 %sub.ptr.lhs.cast1236, %sub.ptr.rhs.cast1237
  %conv1239 = sext i32 %sub.ptr.sub1238 to i64
  br label %return

if.end1240:                                       ; preds = %cont1224, %land.lhs.true1219, %for.cond1217
  %num.18 = phi i64 [ %346, %cont1224 ], [ %num.17, %land.lhs.true1219 ], [ %num.17, %for.cond1217 ]
  %cmp1241 = icmp eq i8* %t.12, %add.ptr993
  br i1 %cmp1241, label %if.end1250, label %if.end1244

if.end1244:                                       ; preds = %if.end1240
  %call1245 = call i32 @mb_metacharlenconv(i8* %t.12, i32* null) nounwind
  %add.ptr1246 = getelementptr inbounds i8* %t.12, i32 %call1245
  br label %for.cond1217

if.end1250:                                       ; preds = %if.end1094, %if.end1240, %cont1180, %cont1199, %for.end1025, %land.lhs.true988, %if.end985
  %tobool1251 = icmp eq i32 %down.3, 0
  br i1 %tobool1251, label %cond.false1253, label %cond.end1256

cond.false1253:                                   ; preds = %if.end1250
  %349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call975, i32 1)
  %350 = extractvalue { i32, i1 } %349, 0
  %351 = extractvalue { i32, i1 } %349, 1
  br i1 %351, label %ioc_bb1254, label %cond.end1256

ioc_bb1254:                                       ; preds = %cond.false1253
  %352 = sext i32 %call975 to i64
  call void @__ioc_report_add_overflow(i32 1526, i32 29, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %352, i64 1, i8 13) nounwind
  br label %cond.end1256

cond.end1256:                                     ; preds = %cond.false1253, %if.end1250, %ioc_bb1254
  %cond1257 = phi i32 [ 0, %if.end1250 ], [ %350, %ioc_bb1254 ], [ %350, %cond.false1253 ]
  %conv1258 = sext i32 %cond1257 to i64
  br label %return

return:                                           ; preds = %if.end201, %for.inc326, %cont793, %cont805, %cont811, %cont770, %cont782, %cont788, %cont889, %cont907, %cont861, %for.cond864.backedge, %cont1193, %while.cond, %if.else468, %land.lhs.true406, %if.then739, %if.then521, %if.end516, %if.end558, %if.then563, %if.end502, %if.then507, %if.end753, %land.lhs.true756, %land.lhs.true560, %land.lhs.true518, %land.lhs.true504, %if.then532, %ioc_bb535, %if.else967, %lor.lhs.false970, %cont941, %cont955, %land.lhs.true944, %for.end909, %if.then830, %if.else652, %while.end, %if.end420, %lor.lhs.false432, %if.then341, %entry, %cond.end1256, %if.end1235, %if.end1173, %if.then1089, %if.end1057, %cont964, %cont841, %cont750, %if.then724, %if.then710, %cond.end462
  %retval.0 = phi i64 [ 1, %if.then710 ], [ %conv751, %cont750 ], [ %conv728, %if.then724 ], [ %conv966, %cont964 ], [ %conv842, %cont841 ], [ %conv1061, %if.end1057 ], [ %conv1258, %cond.end1256 ], [ %conv1093, %if.then1089 ], [ %conv1177, %if.end1173 ], [ %conv1239, %if.end1235 ], [ %conv467, %cond.end462 ], [ 0, %entry ], [ 0, %if.then341 ], [ 0, %lor.lhs.false432 ], [ 0, %if.end420 ], [ 0, %while.end ], [ 1, %if.else652 ], [ 0, %if.then739 ], [ 0, %if.then830 ], [ 0, %for.end909 ], [ %conv942, %land.lhs.true944 ], [ %conv942, %cont955 ], [ %conv942, %cont941 ], [ 0, %lor.lhs.false970 ], [ 0, %if.else967 ], [ 0, %land.lhs.true756 ], [ 0, %if.end753 ], [ %r.0, %if.else468 ], [ %114, %if.then507 ], [ %114, %land.lhs.true504 ], [ %114, %if.end502 ], [ 0, %if.then521 ], [ 0, %land.lhs.true518 ], [ 0, %if.end516 ], [ %132, %if.then563 ], [ %132, %land.lhs.true560 ], [ %132, %if.end558 ], [ %124, %if.then532 ], [ %124, %ioc_bb535 ], [ %r.0, %land.lhs.true406 ], [ 0, %while.cond ], [ %r.161712, %cont1193 ], [ 0, %for.cond864.backedge ], [ 0, %cont861 ], [ 0, %cont907 ], [ 0, %cont889 ], [ %195, %cont770 ], [ %r.51775, %cont782 ], [ %202, %cont788 ], [ %205, %cont793 ], [ %r.61782, %cont805 ], [ %213, %cont811 ], [ 0, %for.inc326 ], [ 0, %if.end201 ]
  ret i64 %retval.0
}

define i8* @getstrvalue(%struct.value* %v) nounwind {
entry:
  %s = alloca i8*, align 4
  %buf = alloca [68 x i8], align 1
  %tobool = icmp eq %struct.value* %v, null
  br i1 %tobool, label %cont, label %if.end

cont:                                             ; preds = %entry
  %call = call i8* @hcalloc(i32 1) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool1 = icmp eq i32 %and, 0
  %pm14.phi.trans.insert = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %.pre642 = load %struct.param** %pm14.phi.trans.insert, align 4, !tbaa !0
  %flags16.phi.trans.insert = getelementptr inbounds %struct.param* %.pre642, i32 0, i32 0, i32 2
  %.pre643 = load i32* %flags16.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool1, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %and7 = and i32 %.pre643, 16
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [68 x i8]* %buf, i32 0, i32 0
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %1 = load i32* %start, align 4, !tbaa !3
  %call10 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 %1) nounwind
  %call12 = call i8* @dupstring(i8* %arraydecay) nounwind
  store i8* %call12, i8** %s, align 4, !tbaa !0
  br label %return

if.end13:                                         ; preds = %if.end, %land.lhs.true
  %pm14 = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %and37 = and i32 %.pre643, 31
  switch i32 %and37, label %sw.default [
    i32 16, label %sw.bb
    i32 1, label %if.end13.sw.bb53_crit_edge
    i32 2, label %sw.bb77
    i32 4, label %sw.bb86
    i32 8, label %sw.bb86
    i32 0, label %sw.bb98
  ]

if.end13.sw.bb53_crit_edge:                       ; preds = %if.end13
  %isarr55.pre = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  br label %sw.bb53

sw.bb:                                            ; preds = %if.end13
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %2 = load i32* %isarr, align 4, !tbaa !3
  %tobool38 = icmp eq i32 %2, 0
  br i1 %tobool38, label %land.lhs.true39, label %sw.bb53

land.lhs.true39:                                  ; preds = %sw.bb
  %3 = load i32* @emulation, align 4, !tbaa !3
  %and44 = and i32 %3, 4
  %tobool45 = icmp eq i32 %and44, 0
  br i1 %tobool45, label %sw.bb53, label %if.then46

if.then46:                                        ; preds = %land.lhs.true39
  %call47 = call i8* @dupstring(i8* getelementptr inbounds ([4 x i8]* @.str34, i32 0, i32 0)) nounwind
  store i8* %call47, i8** %s, align 4, !tbaa !0
  %call48 = call i32 @getindex(i8** %s, %struct.value* %v, i32 0)
  %cmp = icmp eq i32 %call48, 0
  br i1 %cmp, label %if.then49, label %if.then46.if.end51_crit_edge

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  %.pre644 = load i8** %s, align 4, !tbaa !0
  br label %return

if.then49:                                        ; preds = %if.then46
  %call50 = call i8* @getstrvalue(%struct.value* %v)
  store i8* %call50, i8** %s, align 4, !tbaa !0
  br label %return

sw.bb53:                                          ; preds = %if.end13.sw.bb53_crit_edge, %land.lhs.true39, %sw.bb
  %isarr55.pre-phi = phi i32* [ %isarr55.pre, %if.end13.sw.bb53_crit_edge ], [ %isarr, %land.lhs.true39 ], [ %isarr, %sw.bb ]
  %call54 = call fastcc i8** @getvaluearr(%struct.value* %v)
  %4 = load i32* %isarr55.pre-phi, align 4, !tbaa !3
  %tobool56 = icmp eq i32 %4, 0
  br i1 %tobool56, label %if.else, label %if.then57

if.then57:                                        ; preds = %sw.bb53
  %call58 = call i8* @sepjoin(i8** %call54, i8* null, i32 1) nounwind
  br label %if.end76

if.else:                                          ; preds = %sw.bb53
  %start59 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %5 = load i32* %start59, align 4, !tbaa !3
  %cmp60 = icmp slt i32 %5, 0
  br i1 %cmp60, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.else
  %call62 = call i32 @arrlen(i8** %call54) nounwind
  %6 = load i32* %start59, align 4, !tbaa !3
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 %call62)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb64, label %cont65

ioc_bb64:                                         ; preds = %if.then61
  %10 = sext i32 %call62 to i64
  %11 = sext i32 %6 to i64
  call void @__ioc_report_add_overflow(i32 1843, i32 22, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %11, i64 %10, i8 13) nounwind
  br label %cont65

cont65:                                           ; preds = %if.then61, %ioc_bb64
  store i32 %8, i32* %start59, align 4, !tbaa !3
  br label %if.end66

if.end66:                                         ; preds = %cont65, %if.else
  %12 = phi i32 [ %8, %cont65 ], [ %5, %if.else ]
  %call68 = call i32 @arrlen(i8** %call54) nounwind
  %cmp69 = icmp slt i32 %12, %call68
  br i1 %cmp69, label %lor.lhs.false, label %cont73

lor.lhs.false:                                    ; preds = %if.end66
  %13 = load i32* %start59, align 4, !tbaa !3
  %cmp71 = icmp slt i32 %13, 0
  br i1 %cmp71, label %cont73, label %cond.false

cont73:                                           ; preds = %lor.lhs.false, %if.end66
  %call74 = call i8* @hcalloc(i32 1) nounwind
  br label %if.end76

cond.false:                                       ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds i8** %call54, i32 %13
  %14 = load i8** %arrayidx, align 4, !tbaa !0
  br label %if.end76

if.end76:                                         ; preds = %cont73, %cond.false, %if.then57
  %storemerge = phi i8* [ %call58, %if.then57 ], [ %call74, %cont73 ], [ %14, %cond.false ]
  store i8* %storemerge, i8** %s, align 4
  br label %return

sw.bb77:                                          ; preds = %if.end13
  %arraydecay78 = getelementptr inbounds [68 x i8]* %buf, i32 0, i32 0
  %gsu = getelementptr inbounds %struct.param* %.pre642, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %15 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_integer* %15, i32 0, i32 0
  %16 = load i64 (%struct.param*)** %getfn, align 4, !tbaa !0
  %call81 = call i64 %16(%struct.param* %.pre642) nounwind
  %17 = load %struct.param** %pm14, align 4, !tbaa !0
  %base = getelementptr inbounds %struct.param* %17, i32 0, i32 3
  %18 = load i32* %base, align 4, !tbaa !3
  call void @convbase(i8* %arraydecay78, i64 %call81, i32 %18)
  %call84 = call i8* @dupstring(i8* %arraydecay78) nounwind
  store i8* %call84, i8** %s, align 4, !tbaa !0
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end13, %if.end13
  %gsu88 = getelementptr inbounds %struct.param* %.pre642, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu88 to %struct.gsu_float**
  %19 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn89 = getelementptr inbounds %struct.gsu_float* %19, i32 0, i32 0
  %20 = load double (%struct.param*)** %getfn89, align 4, !tbaa !0
  %call91 = call double %20(%struct.param* %.pre642) nounwind
  %21 = load %struct.param** %pm14, align 4, !tbaa !0
  %base93 = getelementptr inbounds %struct.param* %21, i32 0, i32 3
  %22 = load i32* %base93, align 4, !tbaa !3
  %flags96 = getelementptr inbounds %struct.param* %21, i32 0, i32 0, i32 2
  %23 = load i32* %flags96, align 4, !tbaa !3
  %call97 = call i8* @convfloat(double %call91, i32 %22, i32 %23, %struct._IO_FILE* null)
  store i8* %call97, i8** %s, align 4, !tbaa !0
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end13
  %s101 = getelementptr inbounds %struct.param* %.pre642, i32 0, i32 2, i32 0
  %24 = load %struct.gsu_scalar** %s101, align 4, !tbaa !0
  %getfn103 = bitcast %struct.gsu_scalar* %24 to i8* (%struct.param*)**
  %25 = load i8* (%struct.param*)** %getfn103, align 4, !tbaa !0
  %call105 = call i8* %25(%struct.param* %.pre642) nounwind
  store i8* %call105, i8** %s, align 4, !tbaa !0
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %s, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb98, %sw.bb86, %sw.bb77
  %26 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %sw.default ], [ %call105, %sw.bb98 ], [ %call97, %sw.bb86 ], [ %call84, %sw.bb77 ]
  %27 = load i32* %flags, align 4, !tbaa !3
  %and107 = and i32 %27, 4
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %if.end423, label %if.then109

if.then109:                                       ; preds = %sw.epilog
  %28 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags112 = getelementptr inbounds %struct.param* %28, i32 0, i32 0, i32 2
  %29 = load i32* %flags112, align 4, !tbaa !3
  %and125 = and i32 %29, 224
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %if.end405, label %if.then127

if.then127:                                       ; preds = %if.then109
  %width = getelementptr inbounds %struct.param* %28, i32 0, i32 4
  %30 = load i32* %width, align 4, !tbaa !3
  %tobool129 = icmp eq i32 %30, 0
  br i1 %tobool129, label %cond.false133, label %cond.end135

cond.false133:                                    ; preds = %if.then127
  %call134 = call i32 @mb_metastrlen(i8* %26, i32 0) nounwind
  br label %cond.end135

cond.end135:                                      ; preds = %if.then127, %cond.false133
  %cond136 = phi i32 [ %call134, %cond.false133 ], [ %30, %if.then127 ]
  %31 = icmp sgt i32 %cond136, -1
  br i1 %31, label %cont138, label %ioc_bb137

ioc_bb137:                                        ; preds = %cond.end135
  %32 = sext i32 %cond136 to i64
  call void @__ioc_report_conversion(i32 1876, i32 29, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont138

cont138:                                          ; preds = %cond.end135, %ioc_bb137
  %33 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags141 = getelementptr inbounds %struct.param* %33, i32 0, i32 0, i32 2
  %34 = load i32* %flags141, align 4, !tbaa !3
  %and154 = and i32 %34, 224
  switch i32 %and154, label %if.end405 [
    i32 32, label %sw.bb156
    i32 160, label %sw.bb156
    i32 64, label %sw.bb218
    i32 128, label %sw.bb218
    i32 192, label %sw.bb218
  ]

sw.bb156:                                         ; preds = %cont138, %cont138
  %35 = load i8** %s, align 4, !tbaa !0
  %and164 = and i32 %34, 128
  %tobool165 = icmp eq i32 %and164, 0
  br i1 %tobool165, label %while.cond170, label %while.cond

while.cond:                                       ; preds = %sw.bb156, %while.cond
  %t.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %35, %sw.bb156 ]
  %36 = load i8* %t.0, align 1, !tbaa !1
  %cmp167 = icmp eq i8 %36, 48
  %incdec.ptr = getelementptr inbounds i8* %t.0, i32 1
  br i1 %cmp167, label %while.cond, label %if.end185

while.cond170:                                    ; preds = %sw.bb156, %cont173
  %t.1 = phi i8* [ %incdec.ptr183, %cont173 ], [ %35, %sw.bb156 ]
  %37 = load i8* %t.1, align 1, !tbaa !1
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %cont173, label %ioc_bb172

ioc_bb172:                                        ; preds = %while.cond170
  %39 = sext i8 %37 to i64
  call void @__ioc_report_conversion(i32 1891, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont173

cont173:                                          ; preds = %ioc_bb172, %while.cond170
  %idxprom = zext i8 %37 to i32
  %arrayidx174 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %40 = load i16* %arrayidx174, align 2, !tbaa !6
  %and180 = and i16 %40, 4
  %tobool181 = icmp eq i16 %and180, 0
  %incdec.ptr183 = getelementptr inbounds i8* %t.1, i32 1
  br i1 %tobool181, label %if.end185, label %while.cond170

if.end185:                                        ; preds = %while.cond, %cont173
  %t.2 = phi i8* [ %t.1, %cont173 ], [ %t.0, %while.cond ]
  call void @mb_metacharinit() nounwind
  %cmp188633 = icmp eq i32 %cond136, 0
  br i1 %cmp188633, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %if.end185, %for.cond.backedge
  %t0.0635 = phi i32 [ %43, %for.cond.backedge ], [ 0, %if.end185 ]
  %tend.0634 = phi i8* [ %add.ptr, %for.cond.backedge ], [ %t.2, %if.end185 ]
  %41 = load i8* %tend.0634, align 1, !tbaa !1
  %tobool191 = icmp eq i8 %41, 0
  br i1 %tobool191, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %call192 = call i32 @mb_metacharlenconv(i8* %tend.0634, i32* null) nounwind
  %add.ptr = getelementptr inbounds i8* %tend.0634, i32 %call192
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %t0.0635, i32 1)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb193, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb193
  %cmp188 = icmp ult i32 %43, %cond136
  br i1 %cmp188, label %land.rhs, label %for.end

ioc_bb193:                                        ; preds = %for.body
  %45 = zext i32 %t0.0635 to i64
  call void @__ioc_report_add_overflow(i32 1894, i32 62, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %45, i64 1, i8 5) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %land.rhs, %if.end185
  %t0.0.lcssa = phi i32 [ 0, %if.end185 ], [ %t0.0635, %land.rhs ], [ %43, %for.cond.backedge ]
  %tend.0.lcssa = phi i8* [ %t.2, %if.end185 ], [ %tend.0634, %land.rhs ], [ %add.ptr, %for.cond.backedge ]
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %cond136, i32 %t0.0.lcssa)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb195, label %cont196

ioc_bb195:                                        ; preds = %for.end
  %49 = zext i32 %t0.0.lcssa to i64
  %50 = zext i32 %cond136 to i64
  call void @__ioc_report_sub_overflow(i32 1907, i32 18, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %50, i64 %49, i8 5) nounwind
  br label %cont196

cont196:                                          ; preds = %for.end, %ioc_bb195
  %sub.ptr.lhs.cast = ptrtoint i8* %tend.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %t.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %51 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %51, label %cont199, label %ioc_bb198

ioc_bb198:                                        ; preds = %cont196
  %52 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 1909, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %52, i8 1) nounwind
  br label %cont199

cont199:                                          ; preds = %ioc_bb198, %cont196
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %47)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  %56 = zext i32 %sub.ptr.sub to i64
  %57 = zext i32 %47 to i64
  br i1 %55, label %ioc_bb200, label %cont203

ioc_bb200:                                        ; preds = %cont199
  call void @__ioc_report_add_overflow(i32 1910, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %56, i64 %57, i8 5) nounwind
  br label %cont203

cont203:                                          ; preds = %ioc_bb200, %cont199
  %58 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 1)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb204, label %cont205

ioc_bb204:                                        ; preds = %cont203
  %61 = zext i32 %54 to i64
  call void @__ioc_report_add_overflow(i32 1910, i32 45, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %61, i64 1, i8 5) nounwind
  br label %cont205

cont205:                                          ; preds = %cont203, %ioc_bb204
  %call206 = call i8* @hcalloc(i32 %59) nounwind
  store i8* %call206, i8** %s, align 4, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call206, i8* %t.2, i32 %sub.ptr.sub, i32 1, i1 false)
  %tobool207 = icmp eq i32 %47, 0
  br i1 %tobool207, label %cont212, label %if.then208

if.then208:                                       ; preds = %cont205
  %62 = load i8** %s, align 4, !tbaa !0
  %add.ptr209 = getelementptr inbounds i8* %62, i32 %sub.ptr.sub
  call void @llvm.memset.p0i8.i32(i8* %add.ptr209, i8 32, i32 %47, i32 1, i1 false)
  br label %cont212

cont212:                                          ; preds = %if.then208, %cont205
  br i1 %55, label %ioc_bb213, label %cont214

ioc_bb213:                                        ; preds = %cont212
  call void @__ioc_report_add_overflow(i32 1914, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %56, i64 %57, i8 5) nounwind
  br label %cont214

cont214:                                          ; preds = %cont212, %ioc_bb213
  %63 = load i8** %s, align 4, !tbaa !0
  %arrayidx215 = getelementptr inbounds i8* %63, i32 %54
  store i8 0, i8* %arrayidx215, align 1, !tbaa !1
  br label %if.end405

sw.bb218:                                         ; preds = %cont138, %cont138, %cont138
  %64 = load i8** %s, align 4, !tbaa !0
  %call219 = call i32 @mb_metastrlen(i8* %64, i32 0) nounwind
  %65 = icmp sgt i32 %call219, -1
  br i1 %65, label %cont222, label %ioc_bb221

ioc_bb221:                                        ; preds = %sw.bb218
  %66 = sext i32 %call219 to i64
  call void @__ioc_report_conversion(i32 1928, i32 36, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %66, i8 1) nounwind
  br label %cont222

cont222:                                          ; preds = %ioc_bb221, %sw.bb218
  %cmp223 = icmp ult i32 %call219, %cond136
  br i1 %cmp223, label %if.then225, label %if.else391

if.then225:                                       ; preds = %cont222
  %67 = load i8** %s, align 4, !tbaa !0
  %68 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags228 = getelementptr inbounds %struct.param* %68, i32 0, i32 0, i32 2
  %69 = load i32* %flags228, align 4, !tbaa !3
  %and233 = and i32 %69, 128
  %tobool234 = icmp eq i32 %and233, 0
  br i1 %tobool234, label %if.end347, label %for.cond236

for.cond236:                                      ; preds = %if.then225, %cont239
  %t.3 = phi i8* [ %incdec.ptr251, %cont239 ], [ %67, %if.then225 ]
  %70 = load i8* %t.3, align 1, !tbaa !1
  %71 = icmp sgt i8 %70, -1
  br i1 %71, label %cont239, label %ioc_bb238

ioc_bb238:                                        ; preds = %for.cond236
  %72 = sext i8 %70 to i64
  call void @__ioc_report_conversion(i32 1941, i32 52, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %72, i8 1) nounwind
  br label %cont239

cont239:                                          ; preds = %ioc_bb238, %for.cond236
  %idxprom240 = zext i8 %70 to i32
  %arrayidx241 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom240
  %73 = load i16* %arrayidx241, align 2, !tbaa !6
  %and247 = and i16 %73, 4
  %tobool248 = icmp eq i16 %and247, 0
  %incdec.ptr251 = getelementptr inbounds i8* %t.3, i32 1
  br i1 %tobool248, label %for.end252, label %for.cond236

for.end252:                                       ; preds = %cont239
  %74 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags255 = getelementptr inbounds %struct.param* %74, i32 0, i32 0, i32 2
  %75 = load i32* %flags255, align 4, !tbaa !3
  %and268 = and i32 %75, 14
  %tobool269 = icmp eq i32 %and268, 0
  br i1 %tobool269, label %if.end276, label %land.lhs.true270

land.lhs.true270:                                 ; preds = %for.end252
  %76 = load i8* %t.3, align 1, !tbaa !1
  %cmp272 = icmp eq i8 %76, 45
  %incdec.ptr275.t.3 = select i1 %cmp272, i8* %incdec.ptr251, i8* %t.3
  br label %if.end276

if.end276:                                        ; preds = %land.lhs.true270, %for.end252
  %t.4 = phi i8* [ %t.3, %for.end252 ], [ %incdec.ptr275.t.3, %land.lhs.true270 ]
  %and284 = and i32 %75, 2
  %tobool285 = icmp eq i32 %and284, 0
  br i1 %tobool285, label %if.end308, label %if.then286

if.then286:                                       ; preds = %if.end276
  %77 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 27), align 1, !tbaa !1
  %tobool288 = icmp eq i8 %77, 0
  br i1 %tobool288, label %if.else301, label %land.lhs.true289

land.lhs.true289:                                 ; preds = %if.then286
  %78 = load i8* %t.4, align 1, !tbaa !1
  %cmp292 = icmp eq i8 %78, 48
  br i1 %cmp292, label %land.lhs.true294, label %if.else301

land.lhs.true294:                                 ; preds = %land.lhs.true289
  %arrayidx295 = getelementptr inbounds i8* %t.4, i32 1
  %79 = load i8* %arrayidx295, align 1, !tbaa !1
  %cmp297 = icmp eq i8 %79, 120
  br i1 %cmp297, label %if.then299, label %if.else301

if.then299:                                       ; preds = %land.lhs.true294
  %add.ptr300 = getelementptr inbounds i8* %t.4, i32 2
  br label %if.end308

if.else301:                                       ; preds = %if.then286, %land.lhs.true294, %land.lhs.true289
  %call302 = call i8* @strchr(i8* %t.4, i32 35) nounwind
  %tobool303 = icmp eq i8* %call302, null
  %add.ptr305 = getelementptr inbounds i8* %call302, i32 1
  %t.4.add.ptr305 = select i1 %tobool303, i8* %t.4, i8* %add.ptr305
  br label %if.end308

if.end308:                                        ; preds = %if.end276, %if.else301, %if.then299
  %t.5 = phi i8* [ %add.ptr300, %if.then299 ], [ %t.4.add.ptr305, %if.else301 ], [ %t.4, %if.end276 ]
  %80 = load i8* %t.5, align 1, !tbaa !1
  %tobool309 = icmp eq i8 %80, 0
  %tobool269.not = xor i1 %tobool269, true
  %brmerge = or i1 %tobool309, %tobool269.not
  %81 = zext i1 %tobool309 to i32
  %.mux = xor i32 %81, 1
  br i1 %brmerge, label %if.end347, label %if.else330

if.else330:                                       ; preds = %if.end308
  %82 = icmp sgt i8 %80, -1
  br i1 %82, label %cont333, label %ioc_bb332

ioc_bb332:                                        ; preds = %if.else330
  %83 = sext i8 %80 to i64
  call void @__ioc_report_conversion(i32 1965, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %83, i8 1) nounwind
  br label %cont333

cont333:                                          ; preds = %ioc_bb332, %if.else330
  %idxprom334 = zext i8 %80 to i32
  %arrayidx335 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom334
  %84 = load i16* %arrayidx335, align 2, !tbaa !6
  %and341 = and i16 %84, 1
  %. = zext i16 %and341 to i32
  br label %if.end347

if.end347:                                        ; preds = %if.end308, %cont333, %if.then225
  %zero.0 = phi i32 [ 1, %if.then225 ], [ %.mux, %if.end308 ], [ %., %cont333 ]
  %valprefend.0 = phi i8* [ %67, %if.then225 ], [ %t.5, %if.end308 ], [ %t.5, %cont333 ]
  %85 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %cond136, i32 %call219)
  %86 = extractvalue { i32, i1 } %85, 0
  %87 = extractvalue { i32, i1 } %85, 1
  br i1 %87, label %ioc_bb348, label %cont349

ioc_bb348:                                        ; preds = %if.end347
  %88 = zext i32 %call219 to i64
  %89 = zext i32 %cond136 to i64
  call void @__ioc_report_sub_overflow(i32 1969, i32 22, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @14, i32 0, i32 0), i64 %89, i64 %88, i8 5) nounwind
  br label %cont349

cont349:                                          ; preds = %if.end347, %ioc_bb348
  %90 = load i8** %s, align 4, !tbaa !0
  %call350 = call i32 @strlen(i8* %90) nounwind readonly
  %91 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %86, i32 %call350)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  %94 = zext i32 %86 to i64
  %95 = zext i32 %call350 to i64
  br i1 %93, label %ioc_bb351, label %cont354

ioc_bb351:                                        ; preds = %cont349
  call void @__ioc_report_add_overflow(i32 1972, i32 44, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %94, i64 %95, i8 5) nounwind
  br label %cont354

cont354:                                          ; preds = %ioc_bb351, %cont349
  %96 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %92, i32 1)
  %97 = extractvalue { i32, i1 } %96, 0
  %98 = extractvalue { i32, i1 } %96, 1
  br i1 %98, label %ioc_bb355, label %cont356

ioc_bb355:                                        ; preds = %cont354
  %99 = zext i32 %92 to i64
  call void @__ioc_report_add_overflow(i32 1972, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %99, i64 1, i8 5) nounwind
  br label %cont356

cont356:                                          ; preds = %cont354, %ioc_bb355
  %call357 = call i8* @hcalloc(i32 %97) nounwind
  %100 = load i8** %s, align 4, !tbaa !0
  %sub.ptr.lhs.cast358 = ptrtoint i8* %valprefend.0 to i32
  %sub.ptr.rhs.cast359 = ptrtoint i8* %100 to i32
  %sub.ptr.sub360 = sub i32 %sub.ptr.lhs.cast358, %sub.ptr.rhs.cast359
  %add.ptr361 = getelementptr inbounds i8* %call357, i32 %sub.ptr.sub360
  %101 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags364 = getelementptr inbounds %struct.param* %101, i32 0, i32 0, i32 2
  %102 = load i32* %flags364, align 4, !tbaa !3
  %and369 = and i32 %102, 64
  %tobool370 = icmp eq i32 %and369, 0
  br i1 %tobool370, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cont356
  %lnot = icmp eq i32 %zero.0, 0
  %phitmp629 = select i1 %lnot, i8 32, i8 48
  br label %lor.end

lor.end:                                          ; preds = %cont356, %lor.rhs
  %103 = phi i8 [ 32, %cont356 ], [ %phitmp629, %lor.rhs ]
  call void @llvm.memset.p0i8.i32(i8* %add.ptr361, i8 %103, i32 %86, i32 1, i1 false)
  %tobool373 = icmp eq i8* %valprefend.0, %100
  br i1 %tobool373, label %if.end378, label %if.then374

if.then374:                                       ; preds = %lor.end
  %104 = load i8** %s, align 4, !tbaa !0
  %105 = icmp sgt i32 %sub.ptr.sub360, -1
  br i1 %105, label %cont377, label %ioc_bb376

ioc_bb376:                                        ; preds = %if.then374
  %106 = sext i32 %sub.ptr.sub360 to i64
  call void @__ioc_report_conversion(i32 1981, i32 28, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %106, i8 1) nounwind
  br label %cont377

cont377:                                          ; preds = %ioc_bb376, %if.then374
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call357, i8* %104, i32 %sub.ptr.sub360, i32 1, i1 false)
  br label %if.end378

if.end378:                                        ; preds = %lor.end, %cont377
  %add.ptr361.sum = add i32 %sub.ptr.sub360, %86
  %add.ptr380 = getelementptr inbounds i8* %call357, i32 %add.ptr361.sum
  %107 = icmp sgt i32 %sub.ptr.sub360, -1
  br i1 %107, label %cont383, label %ioc_bb382

ioc_bb382:                                        ; preds = %if.end378
  %108 = sext i32 %sub.ptr.sub360 to i64
  call void @__ioc_report_conversion(i32 1982, i32 61, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %108, i8 1) nounwind
  br label %cont383

cont383:                                          ; preds = %ioc_bb382, %if.end378
  %109 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call350, i32 %sub.ptr.sub360)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  br i1 %111, label %ioc_bb384, label %cont385

ioc_bb384:                                        ; preds = %cont383
  %112 = zext i32 %sub.ptr.sub360 to i64
  call void @__ioc_report_sub_overflow(i32 1982, i32 59, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %95, i64 %112, i8 5) nounwind
  br label %cont385

cont385:                                          ; preds = %cont383, %ioc_bb384
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr380, i8* %valprefend.0, i32 %110, i32 1, i1 false)
  br i1 %93, label %ioc_bb388, label %cont389

ioc_bb388:                                        ; preds = %cont385
  call void @__ioc_report_add_overflow(i32 1983, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %94, i64 %95, i8 5) nounwind
  br label %cont389

cont389:                                          ; preds = %cont385, %ioc_bb388
  %arrayidx390 = getelementptr inbounds i8* %call357, i32 %92
  store i8 0, i8* %arrayidx390, align 1, !tbaa !1
  store i8* %call357, i8** %s, align 4, !tbaa !0
  br label %if.end405

if.else391:                                       ; preds = %cont222
  %113 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call219, i32 %cond136)
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb392, label %for.cond394.preheader

ioc_bb392:                                        ; preds = %if.else391
  %116 = zext i32 %cond136 to i64
  %117 = zext i32 %call219 to i64
  call void @__ioc_report_sub_overflow(i32 1988, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %117, i64 %116, i8 5) nounwind
  br label %for.cond394.preheader

for.cond394.preheader:                            ; preds = %if.else391, %ioc_bb392
  %tobool395638 = icmp eq i32 %114, 0
  br i1 %tobool395638, label %if.end405, label %for.body396

for.body396:                                      ; preds = %for.cond394.backedge, %for.cond394.preheader
  %t0.1639 = phi i32 [ %114, %for.cond394.preheader ], [ %121, %for.cond394.backedge ]
  %118 = load i8** %s, align 4, !tbaa !0
  %call397 = call i32 @mb_metacharlenconv(i8* %118, i32* null) nounwind
  %119 = load i8** %s, align 4, !tbaa !0
  %add.ptr398 = getelementptr inbounds i8* %119, i32 %call397
  store i8* %add.ptr398, i8** %s, align 4, !tbaa !0
  %120 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %t0.1639, i32 1)
  %121 = extractvalue { i32, i1 } %120, 0
  %122 = extractvalue { i32, i1 } %120, 1
  br i1 %122, label %ioc_bb400, label %for.cond394.backedge

for.cond394.backedge:                             ; preds = %for.body396, %ioc_bb400
  %tobool395 = icmp eq i32 %121, 0
  br i1 %tobool395, label %if.end405, label %for.body396

ioc_bb400:                                        ; preds = %for.body396
  %123 = zext i32 %t0.1639 to i64
  call void @__ioc_report_sub_overflow(i32 1988, i32 49, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %123, i64 1, i8 5) nounwind
  br label %for.cond394.backedge

if.end405:                                        ; preds = %for.cond394.preheader, %for.cond394.backedge, %if.then109, %cont214, %cont138, %cont389
  %124 = load %struct.param** %pm14, align 4, !tbaa !0
  %flags408 = getelementptr inbounds %struct.param* %124, i32 0, i32 0, i32 2
  %125 = load i32* %flags408, align 4, !tbaa !3
  %and417 = and i32 %125, 768
  switch i32 %and417, label %if.end423 [
    i32 256, label %sw.bb418
    i32 512, label %sw.bb420
  ]

sw.bb418:                                         ; preds = %if.end405
  %126 = load i8** %s, align 4, !tbaa !0
  %call419 = call i8* @casemodify(i8* %126, i32 2) nounwind
  store i8* %call419, i8** %s, align 4, !tbaa !0
  br label %if.end423

sw.bb420:                                         ; preds = %if.end405
  %127 = load i8** %s, align 4, !tbaa !0
  %call421 = call i8* @casemodify(i8* %127, i32 1) nounwind
  store i8* %call421, i8** %s, align 4, !tbaa !0
  br label %if.end423

if.end423:                                        ; preds = %sw.epilog, %sw.bb418, %sw.bb420, %if.end405
  %start424 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %128 = load i32* %start424, align 4, !tbaa !3
  %cmp425 = icmp eq i32 %128, 0
  br i1 %cmp425, label %land.lhs.true427, label %if.end433

land.lhs.true427:                                 ; preds = %if.end423
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %129 = load i32* %end, align 4, !tbaa !3
  %cmp430 = icmp eq i32 %129, -1
  br i1 %cmp430, label %if.then432, label %if.end448

if.then432:                                       ; preds = %land.lhs.true427
  %130 = load i8** %s, align 4, !tbaa !0
  br label %return

if.end433:                                        ; preds = %if.end423
  %cmp435 = icmp slt i32 %128, 0
  br i1 %cmp435, label %if.then437, label %if.end448

if.then437:                                       ; preds = %if.end433
  %131 = load i8** %s, align 4, !tbaa !0
  %call438 = call i32 @strlen(i8* %131) nounwind readonly
  %132 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %128, i32 %call438)
  %133 = extractvalue { i32, i1 } %132, 0
  %134 = extractvalue { i32, i1 } %132, 1
  br i1 %134, label %ioc_bb440, label %cont441

ioc_bb440:                                        ; preds = %if.then437
  %135 = sext i32 %call438 to i64
  %136 = sext i32 %128 to i64
  call void @__ioc_report_add_overflow(i32 2012, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %136, i64 %135, i8 13) nounwind
  br label %cont441

cont441:                                          ; preds = %if.then437, %ioc_bb440
  store i32 %133, i32* %start424, align 4, !tbaa !3
  %cmp443 = icmp slt i32 %133, 0
  br i1 %cmp443, label %if.then445, label %if.end448

if.then445:                                       ; preds = %cont441
  store i32 0, i32* %start424, align 4, !tbaa !3
  br label %if.end448

if.end448:                                        ; preds = %land.lhs.true427, %cont441, %if.end433, %if.then445
  %end449 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %137 = load i32* %end449, align 4, !tbaa !3
  %cmp450 = icmp slt i32 %137, 0
  br i1 %cmp450, label %if.then452, label %if.end471

if.then452:                                       ; preds = %if.end448
  %138 = load i8** %s, align 4, !tbaa !0
  %call453 = call i32 @strlen(i8* %138) nounwind readonly
  %139 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 %call453)
  %140 = extractvalue { i32, i1 } %139, 0
  %141 = extractvalue { i32, i1 } %139, 1
  br i1 %141, label %ioc_bb455, label %cont456

ioc_bb455:                                        ; preds = %if.then452
  %142 = sext i32 %call453 to i64
  %143 = sext i32 %137 to i64
  call void @__ioc_report_add_overflow(i32 2017, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %143, i64 %142, i8 13) nounwind
  br label %cont456

cont456:                                          ; preds = %if.then452, %ioc_bb455
  store i32 %140, i32* %end449, align 4, !tbaa !3
  %cmp458 = icmp sgt i32 %140, -1
  br i1 %cmp458, label %if.then460, label %if.end471

if.then460:                                       ; preds = %cont456
  %144 = load i8** %s, align 4, !tbaa !0
  %add.ptr462 = getelementptr inbounds i8* %144, i32 %140
  %145 = load i8* %add.ptr462, align 1, !tbaa !1
  %tobool463 = icmp eq i8 %145, 0
  br i1 %tobool463, label %if.end471, label %if.then464

if.then464:                                       ; preds = %if.then460
  %call465 = call i32 @mb_metacharlenconv(i8* %add.ptr462, i32* null) nounwind
  %146 = load i32* %end449, align 4, !tbaa !3
  %147 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %146, i32 %call465)
  %148 = extractvalue { i32, i1 } %147, 0
  %149 = extractvalue { i32, i1 } %147, 1
  br i1 %149, label %ioc_bb467, label %cont468

ioc_bb467:                                        ; preds = %if.then464
  %150 = sext i32 %call465 to i64
  %151 = sext i32 %146 to i64
  call void @__ioc_report_add_overflow(i32 2021, i32 18, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %151, i64 %150, i8 13) nounwind
  br label %cont468

cont468:                                          ; preds = %if.then464, %ioc_bb467
  store i32 %148, i32* %end449, align 4, !tbaa !3
  br label %if.end471

if.end471:                                        ; preds = %if.then460, %cont456, %if.end448, %cont468
  %152 = load i32* %start424, align 4, !tbaa !3
  %153 = load i8** %s, align 4, !tbaa !0
  %call473 = call i32 @strlen(i8* %153) nounwind readonly
  %154 = icmp sgt i32 %call473, -1
  br i1 %154, label %cont475, label %ioc_bb474

ioc_bb474:                                        ; preds = %if.end471
  %155 = zext i32 %call473 to i64
  call void @__ioc_report_conversion(i32 2024, i32 28, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %155, i8 0) nounwind
  br label %cont475

cont475:                                          ; preds = %ioc_bb474, %if.end471
  %cmp476 = icmp sgt i32 %152, %call473
  br i1 %cmp476, label %cond.true478, label %cond.false480

cond.true478:                                     ; preds = %cont475
  %call479 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %cond.end484

cond.false480:                                    ; preds = %cont475
  %156 = load i8** %s, align 4, !tbaa !0
  %157 = load i32* %start424, align 4, !tbaa !3
  %add.ptr482 = getelementptr inbounds i8* %156, i32 %157
  %call483 = call i8* @dupstring(i8* %add.ptr482) nounwind
  br label %cond.end484

cond.end484:                                      ; preds = %cond.false480, %cond.true478
  %cond485 = phi i8* [ %call479, %cond.true478 ], [ %call483, %cond.false480 ]
  store i8* %cond485, i8** %s, align 4, !tbaa !0
  %158 = load i32* %end449, align 4, !tbaa !3
  %159 = load i32* %start424, align 4, !tbaa !3
  %cmp488 = icmp sgt i32 %158, %159
  br i1 %cmp488, label %if.else494, label %cont492

cont492:                                          ; preds = %cond.end484
  store i8 0, i8* %cond485, align 1, !tbaa !1
  br label %if.end514

if.else494:                                       ; preds = %cond.end484
  %160 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %158, i32 %159)
  %161 = extractvalue { i32, i1 } %160, 0
  %162 = extractvalue { i32, i1 } %160, 1
  br i1 %162, label %ioc_bb497, label %cont498

ioc_bb497:                                        ; preds = %if.else494
  %163 = sext i32 %159 to i64
  %164 = sext i32 %158 to i64
  call void @__ioc_report_sub_overflow(i32 2027, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %164, i64 %163, i8 13) nounwind
  %.pre = load i8** %s, align 4, !tbaa !0
  br label %cont498

cont498:                                          ; preds = %if.else494, %ioc_bb497
  %165 = phi i8* [ %cond485, %if.else494 ], [ %.pre, %ioc_bb497 ]
  %call499 = call i32 @strlen(i8* %165) nounwind readonly
  %166 = icmp sgt i32 %call499, -1
  br i1 %166, label %cont502, label %ioc_bb501

ioc_bb501:                                        ; preds = %cont498
  %167 = zext i32 %call499 to i64
  call void @__ioc_report_conversion(i32 2027, i32 44, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %167, i8 0) nounwind
  br label %cont502

cont502:                                          ; preds = %ioc_bb501, %cont498
  %cmp503 = icmp sgt i32 %161, %call499
  br i1 %cmp503, label %if.end514, label %cont507

cont507:                                          ; preds = %cont502
  %168 = load i32* %end449, align 4, !tbaa !3
  %169 = load i32* %start424, align 4, !tbaa !3
  %170 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %168, i32 %169)
  %171 = extractvalue { i32, i1 } %170, 0
  %172 = extractvalue { i32, i1 } %170, 1
  br i1 %172, label %ioc_bb510, label %cont511

ioc_bb510:                                        ; preds = %cont507
  %173 = sext i32 %169 to i64
  %174 = sext i32 %168 to i64
  call void @__ioc_report_sub_overflow(i32 2028, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %174, i64 %173, i8 13) nounwind
  br label %cont511

cont511:                                          ; preds = %cont507, %ioc_bb510
  %175 = load i8** %s, align 4, !tbaa !0
  %arrayidx512 = getelementptr inbounds i8* %175, i32 %171
  store i8 0, i8* %arrayidx512, align 1, !tbaa !1
  br label %if.end514

if.end514:                                        ; preds = %cont502, %cont511, %cont492
  %176 = load i8** %s, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then49, %if.then46.if.end51_crit_edge, %if.end514, %if.then432, %if.end76, %if.then9, %cont
  %retval.0 = phi i8* [ %130, %if.then432 ], [ %176, %if.end514 ], [ %storemerge, %if.end76 ], [ %call12, %if.then9 ], [ %call, %cont ], [ %.pre644, %if.then46.if.end51_crit_edge ], [ %call50, %if.then49 ]
  ret i8* %retval.0
}

declare void @mb_metacharinit()

declare i32 @mb_metacharlenconv(i8*, i32*)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @mb_metastrlen(i8*, i32)

define %struct.value* @getvalue(%struct.value* %v, i8** nocapture %pptr, i32 %bracks) nounwind {
entry:
  %call = tail call %struct.value* @fetchvalue(%struct.value* %v, i8** %pptr, i32 %bracks, i32 0)
  ret %struct.value* %call
}

define %struct.value* @fetchvalue(%struct.value* %v, i8** nocapture %pptr, i32 %bracks, i32 %flags) nounwind {
entry:
  %s = alloca i8*, align 4
  %0 = load i8** %pptr, align 4, !tbaa !0
  store i8* %0, i8** %s, align 4, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %3 = sext i8 %1 to i64
  call void @__ioc_report_conversion(i32 1722, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %4, 1
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.else14, label %if.then

if.then:                                          ; preds = %cont
  %cmp = icmp sgt i32 %bracks, -1
  %5 = load i8** %s, align 4, !tbaa !0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %call = call i64 @zstrtol(i8* %5, i8** %s, i32 10) nounwind
  %call.off = add i64 %call, 2147483648
  %6 = icmp ult i64 %call.off, 4294967296
  br i1 %6, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %if.then6
  call void @__ioc_report_conversion(i32 1724, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %if.then6
  %conv10 = trunc i64 %call to i32
  br label %if.end110

if.else:                                          ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 4, !tbaa !0
  %7 = load i8* %5, align 1, !tbaa !1
  %conv11 = sext i8 %7 to i32
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv11, i32 48)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb12, label %if.end110

ioc_bb12:                                         ; preds = %if.else
  %11 = sext i8 %7 to i64
  call void @__ioc_report_sub_overflow(i32 1726, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %11, i64 48, i8 13) nounwind
  br label %if.end110

if.else14:                                        ; preds = %cont
  %12 = load i8** %s, align 4, !tbaa !0
  %call19 = call i8* @itype_end(i8* %12, i32 128, i32 0) nounwind
  %13 = load i8** %s, align 4, !tbaa !0
  %cmp20 = icmp eq i8* %call19, %13
  br i1 %cmp20, label %ioc_bb25, label %if.then22

if.then22:                                        ; preds = %if.else14
  store i8* %call19, i8** %s, align 4, !tbaa !0
  br label %if.end110

ioc_bb25:                                         ; preds = %if.else14
  call void @__ioc_report_conversion(i32 1730, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 149, i8 1) nounwind
  %cmp27 = icmp eq i8 %1, -107
  br i1 %cmp27, label %cont31, label %ioc_bb35

cont31:                                           ; preds = %ioc_bb25
  %14 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr32 = getelementptr inbounds i8* %14, i32 1
  store i8* %incdec.ptr32, i8** %s, align 4, !tbaa !0
  store i8 63, i8* %14, align 1, !tbaa !1
  br label %if.end110

ioc_bb35:                                         ; preds = %ioc_bb25
  call void @__ioc_report_conversion(i32 1732, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp37 = icmp eq i8 %1, -124
  br i1 %cmp37, label %cont41, label %ioc_bb45

cont41:                                           ; preds = %ioc_bb35
  %15 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr42 = getelementptr inbounds i8* %15, i32 1
  store i8* %incdec.ptr42, i8** %s, align 4, !tbaa !0
  store i8 35, i8* %15, align 1, !tbaa !1
  br label %if.end110

ioc_bb45:                                         ; preds = %ioc_bb35
  call void @__ioc_report_conversion(i32 1734, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp47 = icmp eq i8 %1, -123
  br i1 %cmp47, label %cont51, label %ioc_bb55

cont51:                                           ; preds = %ioc_bb45
  %16 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr52 = getelementptr inbounds i8* %16, i32 1
  store i8* %incdec.ptr52, i8** %s, align 4, !tbaa !0
  store i8 36, i8* %16, align 1, !tbaa !1
  br label %if.end110

ioc_bb55:                                         ; preds = %ioc_bb45
  call void @__ioc_report_conversion(i32 1736, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp57 = icmp eq i8 %1, -118
  br i1 %cmp57, label %cont61, label %ioc_bb65

cont61:                                           ; preds = %ioc_bb55
  %17 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr62 = getelementptr inbounds i8* %17, i32 1
  store i8* %incdec.ptr62, i8** %s, align 4, !tbaa !0
  store i8 36, i8* %17, align 1, !tbaa !1
  br label %if.end110

ioc_bb65:                                         ; preds = %ioc_bb55
  call void @__ioc_report_conversion(i32 1738, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 135, i8 1) nounwind
  switch i8 %1, label %return [
    i8 -121, label %cont71
    i8 35, label %if.then100
    i8 45, label %if.then100
    i8 63, label %if.then100
    i8 36, label %if.then100
    i8 33, label %if.then100
    i8 64, label %if.then100
    i8 42, label %if.then100
  ]

cont71:                                           ; preds = %ioc_bb65
  %18 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr72 = getelementptr inbounds i8* %18, i32 1
  store i8* %incdec.ptr72, i8** %s, align 4, !tbaa !0
  store i8 42, i8* %18, align 1, !tbaa !1
  br label %if.end110

if.then100:                                       ; preds = %ioc_bb65, %ioc_bb65, %ioc_bb65, %ioc_bb65, %ioc_bb65, %ioc_bb65, %ioc_bb65
  %19 = load i8** %s, align 4, !tbaa !0
  %incdec.ptr101 = getelementptr inbounds i8* %19, i32 1
  store i8* %incdec.ptr101, i8** %s, align 4, !tbaa !0
  br label %if.end110

if.end110:                                        ; preds = %ioc_bb12, %if.else, %if.then22, %cont41, %cont61, %if.then100, %cont71, %cont51, %cont31, %cont9
  %ppar.0 = phi i32 [ %conv10, %cont9 ], [ 0, %if.then22 ], [ 0, %cont31 ], [ 0, %cont41 ], [ 0, %cont51 ], [ 0, %cont61 ], [ 0, %cont71 ], [ 0, %if.then100 ], [ %9, %if.else ], [ %9, %ioc_bb12 ]
  %20 = load i8** %s, align 4, !tbaa !0
  %21 = load i8* %20, align 1, !tbaa !1
  %tobool111 = icmp ne i8 %21, 0
  br i1 %tobool111, label %cont114, label %if.end115

cont114:                                          ; preds = %if.end110
  store i8 0, i8* %20, align 1, !tbaa !1
  br label %if.end115

if.end115:                                        ; preds = %cont114, %if.end110
  %tobool116 = icmp eq i32 %ppar.0, 0
  br i1 %tobool116, label %if.else129, label %if.then117

if.then117:                                       ; preds = %if.end115
  %tobool118 = icmp eq %struct.value* %v, null
  br i1 %tobool118, label %if.else120, label %if.then119

if.then119:                                       ; preds = %if.then117
  %22 = bitcast %struct.value* %v to i8*
  call void @llvm.memset.p0i8.i32(i8* %22, i8 0, i32 24, i32 4, i1 false)
  br label %if.end122

if.else120:                                       ; preds = %if.then117
  %call121 = call i8* @hcalloc(i32 24) nounwind
  %23 = bitcast i8* %call121 to %struct.value*
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then119
  %v.addr.0 = phi %struct.value* [ %v, %if.then119 ], [ %23, %if.else120 ]
  %24 = load %struct.param** @argvparam, align 4, !tbaa !0
  %pm = getelementptr inbounds %struct.value* %v.addr.0, i32 0, i32 1
  store %struct.param* %24, %struct.param** %pm, align 4, !tbaa !0
  %flags123 = getelementptr inbounds %struct.value* %v.addr.0, i32 0, i32 2
  store i32 0, i32* %flags123, align 4, !tbaa !3
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ppar.0, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb124, label %cont125

ioc_bb124:                                        ; preds = %if.end122
  %28 = sext i32 %ppar.0 to i64
  call void @__ioc_report_sub_overflow(i32 1753, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont125

cont125:                                          ; preds = %if.end122, %ioc_bb124
  %start = getelementptr inbounds %struct.value* %v.addr.0, i32 0, i32 3
  store i32 %26, i32* %start, align 4, !tbaa !3
  %end = getelementptr inbounds %struct.value* %v.addr.0, i32 0, i32 4
  store i32 %ppar.0, i32* %end, align 4, !tbaa !3
  br i1 %tobool111, label %if.then127, label %if.end260

if.then127:                                       ; preds = %cont125
  %29 = load i8** %s, align 4, !tbaa !0
  store i8 %21, i8* %29, align 1, !tbaa !1
  br label %if.end260

if.else129:                                       ; preds = %if.end115
  %30 = load i8* %0, align 1, !tbaa !1
  %cmp133 = icmp eq i8 %30, 64
  br i1 %cmp133, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else129
  %arrayidx135 = getelementptr inbounds i8* %0, i32 1
  %31 = load i8* %arrayidx135, align 1, !tbaa !1
  %tobool136 = icmp ne i8 %31, 0
  %phitmp = select i1 %tobool136, i32 0, i32 -32768
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else129
  %32 = phi i32 [ 0, %if.else129 ], [ %phitmp, %land.rhs ]
  %33 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %33, i32 0, i32 9
  %34 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %cmp138 = icmp eq i8 %30, 48
  %cond = select i1 %cmp138, i8* getelementptr inbounds ([2 x i8]* @.str33, i32 0, i32 0), i8* %0
  %call140 = call %struct.hashnode* %34(%struct.hashtable* %33, i8* %cond) nounwind
  %35 = bitcast %struct.hashnode* %call140 to %struct.param*
  br i1 %tobool111, label %if.then142, label %if.end143

if.then142:                                       ; preds = %land.end
  %36 = load i8** %s, align 4, !tbaa !0
  store i8 %21, i8* %36, align 1, !tbaa !1
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %land.end
  %37 = load i8** %s, align 4, !tbaa !0
  store i8* %37, i8** %pptr, align 4, !tbaa !0
  %tobool144 = icmp eq %struct.hashnode* %call140, null
  br i1 %tobool144, label %return, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %if.end143
  %flags146 = getelementptr inbounds %struct.hashnode* %call140, i32 0, i32 2
  %38 = load i32* %flags146, align 4, !tbaa !3
  %and151 = and i32 %38, 33554432
  %tobool152 = icmp eq i32 %and151, 0
  br i1 %tobool152, label %if.end154, label %return

if.end154:                                        ; preds = %lor.lhs.false145
  %tobool155 = icmp eq %struct.value* %v, null
  br i1 %tobool155, label %if.else157, label %if.then156

if.then156:                                       ; preds = %if.end154
  %39 = bitcast %struct.value* %v to i8*
  call void @llvm.memset.p0i8.i32(i8* %39, i8 0, i32 24, i32 4, i1 false)
  br label %if.end159

if.else157:                                       ; preds = %if.end154
  %call158 = call i8* @hcalloc(i32 24) nounwind
  %40 = bitcast i8* %call158 to %struct.value*
  br label %if.end159

if.end159:                                        ; preds = %if.else157, %if.then156
  %v.addr.1 = phi %struct.value* [ %v, %if.then156 ], [ %40, %if.else157 ]
  %41 = load i32* %flags146, align 4, !tbaa !3
  %and191 = and i32 %41, 17
  %tobool192 = icmp eq i32 %and191, 0
  br i1 %tobool192, label %if.end211, label %ioc_bb199

ioc_bb199:                                        ; preds = %if.end159
  call void @__ioc_report_shl_strict(i32 1774, i32 41, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 -1, i64 15, i8 13) nounwind
  %or = or i32 %32, %flags
  %isarr = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 0
  store i32 %or, i32* %isarr, align 4, !tbaa !3
  %tobool203 = icmp eq i32 %or, 0
  br i1 %tobool203, label %cont208, label %if.end211

cont208:                                          ; preds = %ioc_bb199
  store i32 512, i32* %isarr, align 4, !tbaa !3
  br label %if.end211

if.end211:                                        ; preds = %ioc_bb199, %if.end159, %cont208
  %pm212 = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 1
  store %struct.param* %35, %struct.param** %pm212, align 4, !tbaa !0
  %flags213 = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 2
  store i32 0, i32* %flags213, align 4, !tbaa !3
  %start214 = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 3
  store i32 0, i32* %start214, align 4, !tbaa !3
  %end217 = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 4
  store i32 -1, i32* %end217, align 4, !tbaa !3
  %cmp218 = icmp sgt i32 %bracks, 0
  br i1 %cmp218, label %land.lhs.true, label %cont238

land.lhs.true:                                    ; preds = %if.end211
  %42 = load i8** %s, align 4, !tbaa !0
  %43 = load i8* %42, align 1, !tbaa !1
  %cmp221 = icmp eq i8 %43, 91
  br i1 %cmp221, label %if.then229, label %ioc_bb225

ioc_bb225:                                        ; preds = %land.lhs.true
  call void @__ioc_report_conversion(i32 1785, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp227 = icmp eq i8 %43, -113
  br i1 %cmp227, label %if.then229, label %cont238

if.then229:                                       ; preds = %ioc_bb225, %land.lhs.true
  %call230 = call i32 @getindex(i8** %s, %struct.value* %v.addr.1, i32 %flags)
  %tobool231 = icmp eq i32 %call230, 0
  br i1 %tobool231, label %if.end260, label %if.then232

if.then232:                                       ; preds = %if.then229
  %44 = load i8** %s, align 4, !tbaa !0
  store i8* %44, i8** %pptr, align 4, !tbaa !0
  br label %return

cont238:                                          ; preds = %ioc_bb225, %if.end211
  %and239 = and i32 %flags, 64
  %tobool240 = icmp eq i32 %and239, 0
  br i1 %tobool240, label %land.lhs.true241, label %if.end260

land.lhs.true241:                                 ; preds = %cont238
  %isarr242 = getelementptr inbounds %struct.value* %v.addr.1, i32 0, i32 0
  %45 = load i32* %isarr242, align 4, !tbaa !3
  %tobool243 = icmp eq i32 %45, 0
  br i1 %tobool243, label %if.end260, label %cont248

cont248:                                          ; preds = %land.lhs.true241
  %call249 = call i8* @itype_end(i8* %0, i32 128, i32 1) nounwind
  %cmp250 = icmp eq i8* %call249, %0
  %46 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool254 = icmp eq i8 %46, 0
  %or.cond = or i1 %cmp250, %tobool254
  br i1 %or.cond, label %if.end260, label %if.then255

if.then255:                                       ; preds = %cont248
  store i32 1, i32* %end217, align 4, !tbaa !3
  store i32 0, i32* %isarr242, align 4, !tbaa !3
  br label %if.end260

if.end260:                                        ; preds = %if.then229, %cont248, %land.lhs.true241, %cont238, %if.then255, %cont125, %if.then127
  %v.addr.2 = phi %struct.value* [ %v.addr.0, %if.then127 ], [ %v.addr.0, %cont125 ], [ %v.addr.1, %if.then229 ], [ %v.addr.1, %cont238 ], [ %v.addr.1, %if.then255 ], [ %v.addr.1, %cont248 ], [ %v.addr.1, %land.lhs.true241 ]
  %tobool261 = icmp eq i32 %bracks, 0
  %47 = load i8** %s, align 4, !tbaa !0
  br i1 %tobool261, label %land.lhs.true262, label %if.end266

land.lhs.true262:                                 ; preds = %if.end260
  %48 = load i8* %47, align 1, !tbaa !1
  %tobool264 = icmp eq i8 %48, 0
  br i1 %tobool264, label %if.end266, label %return

if.end266:                                        ; preds = %if.end260, %land.lhs.true262
  store i8* %47, i8** %pptr, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %land.lhs.true262, %if.end143, %lor.lhs.false145, %ioc_bb65, %if.end266, %if.then232
  %retval.0 = phi %struct.value* [ %v.addr.2, %if.end266 ], [ %v.addr.1, %if.then232 ], [ null, %ioc_bb65 ], [ null, %lor.lhs.false145 ], [ null, %if.end143 ], [ null, %land.lhs.true262 ]
  ret %struct.value* %retval.0
}

declare i64 @zstrtol(i8*, i8**, i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i8* @dupstring(i8*)

define internal fastcc i8** @getvaluearr(%struct.value* nocapture %v) nounwind {
entry:
  %arr = getelementptr inbounds %struct.value* %v, i32 0, i32 5
  %0 = load i8*** %arr, align 4, !tbaa !0
  %tobool = icmp eq i8** %0, null
  br i1 %tobool, label %if.else, label %return

if.else:                                          ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %1 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 31
  switch i32 %and, label %return [
    i32 1, label %if.then24
    i32 16, label %if.then58
  ]

if.then24:                                        ; preds = %if.else
  %gsu = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %3 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_array* %3, i32 0, i32 0
  %4 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !0
  %call = tail call i8** %4(%struct.param* %1) nounwind
  store i8** %call, i8*** %arr, align 4, !tbaa !0
  br label %return

if.then58:                                        ; preds = %if.else
  %gsu60 = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu60 to %struct.gsu_hash**
  %5 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn61 = getelementptr inbounds %struct.gsu_hash* %5, i32 0, i32 0
  %6 = load %struct.hashtable* (%struct.param*)** %getfn61, align 4, !tbaa !0
  %call63 = tail call %struct.hashtable* %6(%struct.param* %1) nounwind
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %7 = load i32* %isarr, align 4, !tbaa !3
  %call64 = tail call i8** @paramvalarr(%struct.hashtable* %call63, i32 %7)
  store i8** %call64, i8*** %arr, align 4, !tbaa !0
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  store i32 0, i32* %start, align 4, !tbaa !3
  %8 = load i32* @numparamvals, align 4, !tbaa !3
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %8, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb68, label %cont69

ioc_bb68:                                         ; preds = %if.then58
  %12 = zext i32 %8 to i64
  tail call void @__ioc_report_add_overflow(i32 489, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind
  br label %cont69

cont69:                                           ; preds = %if.then58, %ioc_bb68
  %13 = icmp sgt i32 %10, -1
  br i1 %13, label %cont71, label %ioc_bb70

ioc_bb70:                                         ; preds = %cont69
  %14 = zext i32 %10 to i64
  tail call void @__ioc_report_conversion(i32 489, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %14, i8 0) nounwind
  br label %cont71

cont71:                                           ; preds = %cont69, %ioc_bb70
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  store i32 %10, i32* %end, align 4, !tbaa !3
  %15 = load i8*** %arr, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %entry, %cont71, %if.then24
  %retval.0 = phi i8** [ %call, %if.then24 ], [ %15, %cont71 ], [ %0, %entry ], [ null, %if.else ]
  ret i8** %retval.0
}

declare i8* @sepjoin(i8**, i8*, i32)

declare i32 @arrlen(i8**)

define void @convbase(i8* nocapture %s, i64 %v, i32 %base) nounwind {
entry:
  %cmp = icmp slt i64 %v, 0
  br i1 %cmp, label %cont, label %cont4

cont:                                             ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8* %s, i32 1
  store i8 45, i8* %s, align 1, !tbaa !1
  %0 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %v)
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  br i1 %2, label %ioc_bb1, label %cont4

ioc_bb1:                                          ; preds = %cont
  tail call void @__ioc_report_sub_overflow(i32 4307, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i64 0, i64 %v, i8 14) nounwind
  br label %cont4

cont4:                                            ; preds = %entry, %cont, %ioc_bb1
  %v.addr.0 = phi i64 [ %v, %entry ], [ %1, %cont ], [ %1, %ioc_bb1 ]
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %cont ], [ %incdec.ptr, %ioc_bb1 ]
  %base.off = add i32 %base, 1
  %3 = icmp ult i32 %base.off, 3
  %base.addr.0 = select i1 %3, i32 -10, i32 %base
  %cmp11 = icmp sgt i32 %base.addr.0, 0
  br i1 %cmp11, label %if.then12, label %if.else39

if.then12:                                        ; preds = %cont4
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 27), align 1, !tbaa !1
  %tobool = icmp ne i8 %4, 0
  %cmp14 = icmp eq i32 %base.addr.0, 16
  %or.cond = and i1 %tobool, %cmp14
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %s.addr.0, i8* getelementptr inbounds ([3 x i8]* @.str58, i32 0, i32 0), i32 3, i32 1, i1 false)
  br label %if.end37

if.else:                                          ; preds = %if.then12
  %cmp20 = icmp eq i32 %base.addr.0, 8
  %or.cond123 = and i1 %tobool, %cmp20
  %or.cond123.not = xor i1 %or.cond123, true
  %5 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 116), align 1, !tbaa !1
  %tobool24 = icmp eq i8 %5, 0
  %or.cond124 = or i1 %tobool24, %or.cond123.not
  br i1 %or.cond124, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else
  %6 = bitcast i8* %s.addr.0 to i16*
  store i16 48, i16* %6, align 1
  br label %if.end37

if.else27:                                        ; preds = %if.else
  %cmp28 = icmp eq i32 %base.addr.0, 10
  br i1 %cmp28, label %cont34, label %if.then30

if.then30:                                        ; preds = %if.else27
  %call31 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %s.addr.0, i8* getelementptr inbounds ([4 x i8]* @.str59, i32 0, i32 0), i32 %base.addr.0) nounwind
  br label %if.end37

cont34:                                           ; preds = %if.else27
  store i8 0, i8* %s.addr.0, align 1, !tbaa !1
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %cont34, %if.then30, %if.then16
  %call38 = tail call i32 @strlen(i8* %s.addr.0) nounwind readonly
  %add.ptr = getelementptr inbounds i8* %s.addr.0, i32 %call38
  br label %if.end42

if.else39:                                        ; preds = %cont4
  %7 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %base.addr.0)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb40, label %if.end42

ioc_bb40:                                         ; preds = %if.else39
  %10 = sext i32 %base.addr.0 to i64
  tail call void @__ioc_report_sub_overflow(i32 4322, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i64 0, i64 %10, i8 13) nounwind
  br label %if.end42

if.end42:                                         ; preds = %ioc_bb40, %if.else39, %if.end37
  %base.addr.1 = phi i32 [ %base.addr.0, %if.end37 ], [ %8, %if.else39 ], [ %8, %ioc_bb40 ]
  %s.addr.1 = phi i8* [ %add.ptr, %if.end37 ], [ %s.addr.0, %if.else39 ], [ %s.addr.0, %ioc_bb40 ]
  %11 = icmp sgt i64 %v.addr.0, -1
  br i1 %11, label %for.cond.preheader, label %ioc_bb43

ioc_bb43:                                         ; preds = %if.end42
  tail call void @__ioc_report_conversion(i32 4323, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i64 %v.addr.0, i8 1) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ioc_bb43, %if.end42
  %tobool45130 = icmp eq i64 %v.addr.0, 0
  br i1 %tobool45130, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = sext i32 %base.addr.1 to i64
  %13 = icmp sgt i32 %base.addr.1, -1
  %14 = icmp eq i32 %base.addr.1, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %x.0132 = phi i64 [ %v.addr.0, %for.body.lr.ph ], [ %div, %for.cond.backedge ]
  %digs.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %16, %for.cond.backedge ]
  br i1 %13, label %cont48, label %cont48.thread

cont48.thread:                                    ; preds = %for.body
  tail call void @__ioc_report_conversion(i32 4324, i32 10, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont50

cont48:                                           ; preds = %for.body
  br i1 %14, label %trap, label %cont50

trap:                                             ; preds = %cont48, %cont67
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont50:                                           ; preds = %cont48.thread, %cont48
  %div = udiv i64 %x.0132, %12
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %digs.0131, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb51, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont50, %ioc_bb51
  %tobool45 = icmp eq i64 %div, 0
  br i1 %tobool45, label %for.end, label %for.body

ioc_bb51:                                         ; preds = %cont50
  %18 = sext i32 %digs.0131 to i64
  tail call void @__ioc_report_add_overflow(i32 4323, i32 22, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %digs.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %16, %for.cond.backedge ]
  %tobool53 = icmp eq i32 %digs.0.lcssa, 0
  %.digs.0 = select i1 %tobool53, i32 1, i32 %digs.0.lcssa
  %19 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.digs.0, i32 -1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb58, label %cont59

ioc_bb58:                                         ; preds = %for.end
  %22 = sext i32 %.digs.0 to i64
  tail call void @__ioc_report_add_overflow(i32 4327, i32 9, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %22, i64 -1, i8 13) nounwind
  br label %cont59

cont59:                                           ; preds = %for.end, %ioc_bb58
  %arrayidx = getelementptr inbounds i8* %s.addr.1, i32 %.digs.0
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br i1 %11, label %while.cond.preheader, label %ioc_bb61

ioc_bb61:                                         ; preds = %cont59
  tail call void @__ioc_report_conversion(i32 4328, i32 7, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i64 %v.addr.0, i8 1) nounwind
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %ioc_bb61, %cont59
  %cmp63125 = icmp sgt i32 %20, -1
  br i1 %cmp63125, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %23 = sext i32 %base.addr.1 to i64
  %24 = icmp sgt i32 %base.addr.1, -1
  %25 = icmp eq i32 %base.addr.1, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cont92
  %x.1127 = phi i64 [ %v.addr.0, %while.body.lr.ph ], [ %div93, %cont92 ]
  %digs.2126 = phi i32 [ %20, %while.body.lr.ph ], [ %42, %cont92 ]
  br i1 %24, label %cont67, label %cont67.thread

cont67.thread:                                    ; preds = %while.body
  tail call void @__ioc_report_conversion(i32 4330, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont69

cont67:                                           ; preds = %while.body
  br i1 %25, label %trap, label %cont69

cont69:                                           ; preds = %cont67, %cont67.thread
  %rem = urem i64 %x.1127, %23
  %26 = icmp ult i64 %rem, 2147483648
  br i1 %26, label %cont71, label %ioc_bb70

ioc_bb70:                                         ; preds = %cont69
  tail call void @__ioc_report_conversion(i32 4330, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %rem, i8 0) nounwind
  br label %cont71

cont71:                                           ; preds = %ioc_bb70, %cont69
  %conv72 = trunc i64 %rem to i32
  %cmp73 = icmp slt i32 %conv72, 10
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont71
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv72, i32 48)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb75, label %cond.end

ioc_bb75:                                         ; preds = %cond.true
  %30 = sext i32 %conv72 to i64
  tail call void @__ioc_report_add_overflow(i32 4331, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 48, i64 %30, i8 13) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont71
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv72, i32 10)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb77, label %cont78

ioc_bb77:                                         ; preds = %cond.false
  %34 = sext i32 %conv72 to i64
  tail call void @__ioc_report_sub_overflow(i32 4331, i32 43, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %34, i64 10, i8 13) nounwind
  br label %cont78

cont78:                                           ; preds = %cond.false, %ioc_bb77
  %35 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 65)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb79, label %cond.end

ioc_bb79:                                         ; preds = %cont78
  %38 = sext i32 %32 to i64
  tail call void @__ioc_report_add_overflow(i32 4331, i32 48, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %38, i64 65, i8 13) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cont78, %ioc_bb79, %ioc_bb75
  %cond = phi i32 [ %28, %ioc_bb75 ], [ %28, %cond.true ], [ %36, %ioc_bb79 ], [ %36, %cont78 ]
  %cond.off = add i32 %cond, 128
  %39 = icmp ult i32 %cond.off, 256
  br i1 %39, label %cont83, label %ioc_bb82

ioc_bb82:                                         ; preds = %cond.end
  %40 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 4331, i32 17, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %40, i8 1) nounwind
  br label %cont83

cont83:                                           ; preds = %ioc_bb82, %cond.end
  %conv84 = trunc i32 %cond to i8
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %digs.2126, i32 -1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb85, label %cont86

ioc_bb85:                                         ; preds = %cont83
  %44 = sext i32 %digs.2126 to i64
  tail call void @__ioc_report_add_overflow(i32 4331, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %44, i64 -1, i8 13) nounwind
  br label %cont86

cont86:                                           ; preds = %cont83, %ioc_bb85
  %arrayidx87 = getelementptr inbounds i8* %s.addr.1, i32 %digs.2126
  store i8 %conv84, i8* %arrayidx87, align 1, !tbaa !1
  br i1 %24, label %cont92, label %ioc_bb89

ioc_bb89:                                         ; preds = %cont86
  tail call void @__ioc_report_conversion(i32 4332, i32 10, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @9, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont92

cont92:                                           ; preds = %cont86, %ioc_bb89
  %div93 = udiv i64 %x.1127, %23
  %cmp63 = icmp sgt i32 %42, -1
  br i1 %cmp63, label %while.body, label %while.end

while.end:                                        ; preds = %cont92, %while.cond.preheader
  ret void
}

define i8* @convfloat(double %dval, i32 %digits, i32 %flags, %struct._IO_FILE* %fout) nounwind {
entry:
  %fmt = alloca [5 x i8], align 1
  %0 = getelementptr inbounds [5 x i8]* %fmt, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* getelementptr inbounds ([5 x i8]* @convfloat.fmt, i32 0, i32 0), i32 5, i32 1, i1 false)
  %and = and i32 %flags, 12
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont8, label %cont14

cont8:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds [5 x i8]* %fmt, i32 0, i32 3
  store i8 103, i8* %arrayidx, align 1, !tbaa !1
  %tobool9 = icmp eq i32 %digits, 0
  %.digits = select i1 %tobool9, i32 17, i32 %digits
  br label %if.end34

cont14:                                           ; preds = %entry
  %and15 = and i32 %flags, 8
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end21, label %cont19

cont19:                                           ; preds = %cont14
  %arrayidx20 = getelementptr inbounds [5 x i8]* %fmt, i32 0, i32 3
  store i8 102, i8* %arrayidx20, align 1, !tbaa !1
  br label %if.end21

if.end21:                                         ; preds = %cont14, %cont19
  %cmp = icmp slt i32 %digits, 1
  %.digits74 = select i1 %cmp, i32 10, i32 %digits
  %and28 = and i32 %flags, 4
  %tobool29 = icmp eq i32 %and28, 0
  br i1 %tobool29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end21
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.digits74, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb31, label %if.end34

ioc_bb31:                                         ; preds = %if.then30
  %4 = sext i32 %.digits74 to i64
  call void @__ioc_report_add_overflow(i32 4378, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %if.end34

if.end34:                                         ; preds = %cont8, %ioc_bb31, %if.then30, %if.end21
  %digits.addr.1 = phi i32 [ %.digits74, %if.end21 ], [ %.digits, %cont8 ], [ %2, %if.then30 ], [ %2, %ioc_bb31 ]
  %call = call i8* @setlocale(i32 1, i8* null) nounwind
  %call35 = call i8* @dupstring(i8* %call) nounwind
  %call36 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0)) nounwind
  %tobool37 = icmp eq %struct._IO_FILE* %fout, null
  br i1 %tobool37, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.end34
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fout, i8* %0, i32 %digits.addr.1, double %dval) nounwind
  br label %if.end59

if.else40:                                        ; preds = %if.end34
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %digits.addr.1, i32 512)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.else40
  %8 = sext i32 %digits.addr.1 to i64
  call void @__ioc_report_add_overflow(i32 4390, i32 18, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 512, i64 %8, i8 13) nounwind
  br label %cont42

cont42:                                           ; preds = %if.else40, %ioc_bb41
  %9 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %6, align 1
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %vla, i8* %0, i32 %digits.addr.1, double %dval) nounwind
  %call47 = call i8* @strchr(i8* %vla, i32 101) nounwind
  %tobool48 = icmp eq i8* %call47, null
  br i1 %tobool48, label %cond.false52, label %if.end57

cond.false52:                                     ; preds = %cont42
  %call53 = call i8* @strchr(i8* %vla, i32 46) nounwind
  %tobool54 = icmp eq i8* %call53, null
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %cond.false52
  %strlen = call i32 @strlen(i8* %vla)
  %endptr = getelementptr i8* %vla, i32 %strlen
  %10 = bitcast i8* %endptr to i16*
  store i16 46, i16* %10, align 1
  br label %if.end57

if.end57:                                         ; preds = %cond.false52, %cont42, %if.then55
  %call58 = call i8* @dupstring(i8* %vla) nounwind
  call void @llvm.stackrestore(i8* %9)
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %if.then38
  %ret.0 = phi i8* [ null, %if.then38 ], [ %call58, %if.end57 ]
  %tobool60 = icmp eq i8* %call35, null
  br i1 %tobool60, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end59
  %call62 = call i8* @setlocale(i32 1, i8* %call35) nounwind
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.then61
  ret i8* %ret.0
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @casemodify(i8*, i32)

define i8** @getarrvalue(%struct.value* %v) nounwind {
entry:
  %buf = alloca [21 x i8], align 1
  %tobool = icmp eq %struct.value* %v, null
  br i1 %tobool, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  %call = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*]* @nular, i32 0, i32 0)) nounwind
  br label %return

land.lhs.true:                                    ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %0 = load %struct.param** %pm, align 4, !tbaa !0
  %tobool2 = icmp eq %struct.param* %0, null
  br i1 %tobool2, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.param* %0, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 33554432
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %lor.lhs.false7, label %if.then16

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %nam = getelementptr inbounds %struct.param* %0, i32 0, i32 0, i32 1
  %2 = load i8** %nam, align 4, !tbaa !0
  %tobool10 = icmp eq i8* %2, null
  br i1 %tobool10, label %if.then16, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %3 = load i8* %2, align 1, !tbaa !1
  %tobool15 = icmp eq i8 %3, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %land.lhs.true
  %call17 = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*]* @nular, i32 0, i32 1)) nounwind
  br label %return

if.end18:                                         ; preds = %lor.lhs.false11
  %flags19 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %4 = load i32* %flags19, align 4, !tbaa !3
  %and20 = and i32 %4, 1
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end18
  %call23 = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*]* @nular, i32 0, i32 0)) nounwind
  %arraydecay = getelementptr inbounds [21 x i8]* %buf, i32 0, i32 0
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %5 = load i32* %start, align 4, !tbaa !3
  %call24 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 %5) nounwind
  %call26 = call i8* @dupstring(i8* %arraydecay) nounwind
  store i8* %call26, i8** %call23, align 4, !tbaa !0
  br label %return

if.end27:                                         ; preds = %if.end18
  %call28 = call fastcc i8** @getvaluearr(%struct.value* %v)
  %start29 = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %6 = load i32* %start29, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.end27
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %7 = load i32* %end, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %7, -1
  br i1 %cmp33, label %return, label %if.end43

if.end35:                                         ; preds = %if.end27
  %cmp37 = icmp slt i32 %6, 0
  br i1 %cmp37, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end35
  %call39 = call i32 @arrlen(i8** %call28) nounwind
  %8 = load i32* %start29, align 4, !tbaa !3
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %call39)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.then38
  %12 = sext i32 %call39 to i64
  %13 = sext i32 %8 to i64
  call void @__ioc_report_add_overflow(i32 2052, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont42

cont42:                                           ; preds = %if.then38, %ioc_bb41
  store i32 %10, i32* %start29, align 4, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true30, %if.end35, %cont42
  %14 = phi i32 [ %10, %cont42 ], [ %6, %if.end35 ], [ 0, %land.lhs.true30 ]
  %end44 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %15 = load i32* %end44, align 4, !tbaa !3
  %cmp45 = icmp slt i32 %15, 0
  br i1 %cmp45, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.end43
  %call47 = call i32 @arrlen(i8** %call28) nounwind
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call47, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb48, label %cont49

ioc_bb48:                                         ; preds = %if.then46
  %19 = sext i32 %call47 to i64
  call void @__ioc_report_add_overflow(i32 2054, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %cont49

cont49:                                           ; preds = %if.then46, %ioc_bb48
  %20 = load i32* %end44, align 4, !tbaa !3
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 %17)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb51, label %cont52

ioc_bb51:                                         ; preds = %cont49
  %24 = sext i32 %17 to i64
  %25 = sext i32 %20 to i64
  call void @__ioc_report_add_overflow(i32 2054, i32 14, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %25, i64 %24, i8 13) nounwind
  br label %cont52

cont52:                                           ; preds = %cont49, %ioc_bb51
  store i32 %22, i32* %end44, align 4, !tbaa !3
  %.pre = load i32* %start29, align 4, !tbaa !3
  br label %if.end53

if.end53:                                         ; preds = %cont52, %if.end43
  %26 = phi i32 [ %.pre, %cont52 ], [ %14, %if.end43 ]
  %call55 = call i32 @arrlen(i8** %call28) nounwind
  %cmp56 = icmp sgt i32 %26, %call55
  br i1 %cmp56, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end53
  %27 = load i32* %start29, align 4, !tbaa !3
  %cmp59 = icmp slt i32 %27, 0
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %lor.lhs.false57, %if.end53
  %call61 = call i8** @arrdup(i8** getelementptr inbounds ([2 x i8*]* @nular, i32 0, i32 0)) nounwind
  br label %if.end65

if.else62:                                        ; preds = %lor.lhs.false57
  %add.ptr = getelementptr inbounds i8** %call28, i32 %27
  %call64 = call i8** @arrdup(i8** %add.ptr) nounwind
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then60
  %s.0 = phi i8** [ %call61, %if.then60 ], [ %call64, %if.else62 ]
  %28 = load i32* %end44, align 4, !tbaa !3
  %29 = load i32* %start29, align 4, !tbaa !3
  %cmp68 = icmp sgt i32 %28, %29
  br i1 %cmp68, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.end65
  store i8* null, i8** %s.0, align 4, !tbaa !0
  br label %return

if.else71:                                        ; preds = %if.end65
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %28, i32 %29)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %if.else71
  %33 = sext i32 %29 to i64
  %34 = sext i32 %28 to i64
  call void @__ioc_report_sub_overflow(i32 2061, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %34, i64 %33, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %if.else71, %ioc_bb74
  %call76 = call i32 @arrlen(i8** %s.0) nounwind
  %cmp77 = icmp sgt i32 %31, %call76
  br i1 %cmp77, label %return, label %if.then78

if.then78:                                        ; preds = %cont75
  %35 = load i32* %end44, align 4, !tbaa !3
  %36 = load i32* %start29, align 4, !tbaa !3
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %35, i32 %36)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %if.then78
  %40 = sext i32 %36 to i64
  %41 = sext i32 %35 to i64
  call void @__ioc_report_sub_overflow(i32 2062, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %41, i64 %40, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %if.then78, %ioc_bb81
  %arrayidx83 = getelementptr inbounds i8** %s.0, i32 %38
  store i8* null, i8** %arrayidx83, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then69, %cont82, %cont75, %land.lhs.true30, %if.then22, %if.then16, %if.then
  %retval.0 = phi i8** [ %call17, %if.then16 ], [ %call23, %if.then22 ], [ %call, %if.then ], [ %call28, %land.lhs.true30 ], [ %s.0, %cont75 ], [ %s.0, %cont82 ], [ %s.0, %if.then69 ]
  ret i8** %retval.0
}

declare i8** @arrdup(i8**)

define i64 @getintvalue(%struct.value* %v) nounwind {
entry:
  %tobool = icmp eq %struct.value* %v, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %1 = load i32* %start, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  br label %return

if.end3:                                          ; preds = %if.end
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %2 = load i32* %isarr, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %2, 0
  br i1 %tobool4, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call = tail call i8** @getarrvalue(%struct.value* %v)
  %tobool6 = icmp eq i8** %call, null
  br i1 %tobool6, label %return, label %if.then7

if.then7:                                         ; preds = %if.then5
  %call8 = tail call i8* @sepjoin(i8** %call, i8* null, i32 1) nounwind
  %call9 = tail call i64 @mathevali(i8* %call8) nounwind
  br label %return

if.end10:                                         ; preds = %if.end3
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %3 = load %struct.param** %pm, align 4, !tbaa !0
  %flags11 = getelementptr inbounds %struct.param* %3, i32 0, i32 0, i32 2
  %4 = load i32* %flags11, align 4, !tbaa !3
  %and30 = and i32 %4, 31
  %cmp = icmp eq i32 %and30, 2
  br i1 %cmp, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end10
  %gsu = getelementptr inbounds %struct.param* %3, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %5 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_integer* %5, i32 0, i32 0
  %6 = load i64 (%struct.param*)** %getfn, align 4, !tbaa !0
  %call39 = tail call i64 %6(%struct.param* %3) nounwind
  br label %return

if.end40:                                         ; preds = %if.end10
  %and52 = and i32 %4, 12
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end61, label %if.then54

if.then54:                                        ; preds = %if.end40
  %gsu56 = getelementptr inbounds %struct.param* %3, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu56 to %struct.gsu_float**
  %7 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn57 = getelementptr inbounds %struct.gsu_float* %7, i32 0, i32 0
  %8 = load double (%struct.param*)** %getfn57, align 4, !tbaa !0
  %call59 = tail call double %8(%struct.param* %3) nounwind
  %conv60 = fptosi double %call59 to i64
  br label %return

if.end61:                                         ; preds = %if.end40
  %call62 = tail call i8* @getstrvalue(%struct.value* %v)
  %call63 = tail call i64 @mathevali(i8* %call62) nounwind
  br label %return

return:                                           ; preds = %if.then5, %entry, %if.end61, %if.then54, %if.then36, %if.then7, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %call9, %if.then7 ], [ %call39, %if.then36 ], [ %conv60, %if.then54 ], [ %call63, %if.end61 ], [ 0, %entry ], [ 0, %if.then5 ]
  ret i64 %retval.0
}

declare i64 @mathevali(i8*)

define void @getnumvalue(%struct.mnumber* noalias sret %agg.result, %struct.value* %v) nounwind {
entry:
  %tobool = icmp eq %struct.value* %v, null
  br i1 %tobool, label %if.end74, label %if.else

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.else5, label %if.then2

if.then2:                                         ; preds = %if.else
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %1 = load i32* %start, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  br label %if.end74

if.else5:                                         ; preds = %if.else
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %2 = load i32* %isarr, align 4, !tbaa !3
  %tobool6 = icmp eq i32 %2, 0
  br i1 %tobool6, label %if.else14, label %if.then7

if.then7:                                         ; preds = %if.else5
  %call = tail call i8** @getarrvalue(%struct.value* %v)
  %tobool8 = icmp eq i8** %call, null
  br i1 %tobool8, label %if.end74, label %if.then9

if.then9:                                         ; preds = %if.then7
  %call10 = tail call i8* @sepjoin(i8** %call, i8* null, i32 1) nounwind
  tail call void @matheval(%struct.mnumber* sret %agg.result, i8* %call10) nounwind
  br label %return

if.else14:                                        ; preds = %if.else5
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %3 = load %struct.param** %pm, align 4, !tbaa !0
  %flags15 = getelementptr inbounds %struct.param* %3, i32 0, i32 0, i32 2
  %4 = load i32* %flags15, align 4, !tbaa !3
  %and34 = and i32 %4, 31
  %cmp = icmp eq i32 %and34, 2
  br i1 %cmp, label %if.then40, label %if.else46

if.then40:                                        ; preds = %if.else14
  %gsu = getelementptr inbounds %struct.param* %3, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %5 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_integer* %5, i32 0, i32 0
  %6 = load i64 (%struct.param*)** %getfn, align 4, !tbaa !0
  %call43 = tail call i64 %6(%struct.param* %3) nounwind
  br label %if.end74

if.else46:                                        ; preds = %if.else14
  %and58 = and i32 %4, 12
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %if.else68, label %if.then60

if.then60:                                        ; preds = %if.else46
  %gsu63 = getelementptr inbounds %struct.param* %3, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu63 to %struct.gsu_float**
  %7 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn64 = getelementptr inbounds %struct.gsu_float* %7, i32 0, i32 0
  %8 = load double (%struct.param*)** %getfn64, align 4, !tbaa !0
  %call66 = tail call double %8(%struct.param* %3) nounwind
  %9 = bitcast double %call66 to i64
  br label %if.end74

if.else68:                                        ; preds = %if.else46
  %call69 = tail call i8* @getstrvalue(%struct.value* %v)
  tail call void @matheval(%struct.mnumber* sret %agg.result, i8* %call69) nounwind
  br label %return

if.end74:                                         ; preds = %if.then7, %entry, %if.then2, %if.then40, %if.then60
  %mn.sroa.0.0 = phi i64 [ %conv, %if.then2 ], [ %call43, %if.then40 ], [ %9, %if.then60 ], [ 0, %entry ], [ 0, %if.then7 ]
  %mn.sroa.1.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then40 ], [ 2, %if.then60 ], [ 1, %entry ], [ 1, %if.then7 ]
  %mn.sroa.0.0..idx = getelementptr inbounds %struct.mnumber* %agg.result, i32 0, i32 0, i32 0
  store i64 %mn.sroa.0.0, i64* %mn.sroa.0.0..idx, align 4
  %mn.sroa.1.8..idx76 = getelementptr inbounds %struct.mnumber* %agg.result, i32 0, i32 1
  store i32 %mn.sroa.1.0, i32* %mn.sroa.1.8..idx76, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.else68, %if.then9
  ret void
}

declare void @matheval(%struct.mnumber* sret, i8*)

define void @export_param(%struct.param* %pm) nounwind {
entry:
  %buf = alloca [68 x i8], align 1
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and27 = and i32 %0, 17
  %tobool = icmp eq i32 %and27, 0
  br i1 %tobool, label %if.else, label %return

if.else:                                          ; preds = %entry
  %and50 = and i32 %0, 31
  %cmp = icmp eq i32 %and50, 2
  br i1 %cmp, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %arraydecay = getelementptr inbounds [68 x i8]* %buf, i32 0, i32 0
  %gsu = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %1 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_integer* %1, i32 0, i32 0
  %2 = load i64 (%struct.param*)** %getfn, align 4, !tbaa !0
  %call = call i64 %2(%struct.param* %pm) nounwind
  %base = getelementptr inbounds %struct.param* %pm, i32 0, i32 3
  %3 = load i32* %base, align 4, !tbaa !3
  call void @convbase(i8* %arraydecay, i64 %call, i32 %3)
  br label %if.end83

if.else56:                                        ; preds = %if.else
  %and67 = and i32 %0, 12
  %tobool68 = icmp eq i32 %and67, 0
  %gsu70 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  br i1 %tobool68, label %if.else77, label %if.then69

if.then69:                                        ; preds = %if.else56
  %f = bitcast %union.anon.0* %gsu70 to %struct.gsu_float**
  %4 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %getfn71 = getelementptr inbounds %struct.gsu_float* %4, i32 0, i32 0
  %5 = load double (%struct.param*)** %getfn71, align 4, !tbaa !0
  %call72 = call double %5(%struct.param* %pm) nounwind
  %base73 = getelementptr inbounds %struct.param* %pm, i32 0, i32 3
  %6 = load i32* %base73, align 4, !tbaa !3
  %7 = load i32* %flags, align 4, !tbaa !3
  %call76 = call i8* @convfloat(double %call72, i32 %6, i32 %7, %struct._IO_FILE* null)
  br label %if.end83

if.else77:                                        ; preds = %if.else56
  %s = getelementptr inbounds %union.anon.0* %gsu70, i32 0, i32 0
  %8 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %getfn80 = bitcast %struct.gsu_scalar* %8 to i8* (%struct.param*)**
  %9 = load i8* (%struct.param*)** %getfn80, align 4, !tbaa !0
  %call81 = call i8* %9(%struct.param* %pm) nounwind
  br label %if.end83

if.end83:                                         ; preds = %if.then55, %if.else77, %if.then69
  %val.0 = phi i8* [ %arraydecay, %if.then55 ], [ %call76, %if.then69 ], [ %call81, %if.else77 ]
  call void @addenv(%struct.param* %pm, i8* %val.0)
  br label %return

return:                                           ; preds = %entry, %if.end83
  ret void
}

define void @setstrvalue(%struct.value* nocapture %v, i8* %val) nounwind {
entry:
  %mn = alloca %struct.mnumber, align 8
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %1 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 1024
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %nam = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str35, i32 0, i32 0), i8* %3) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

if.end7:                                          ; preds = %if.end
  %and15 = and i32 %2, 16777216
  %tobool16 = icmp eq i32 %and15, 0
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %4, 0
  %or.cond499 = or i1 %tobool16, %tobool17
  br i1 %or.cond499, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end7
  %nam21 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %5 = load i8** %nam21, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i8* %5) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

if.end22:                                         ; preds = %if.end7
  %and30 = and i32 %2, 16
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.end47, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end22
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %6 = load i32* %isarr, align 4, !tbaa !3
  %and41 = and i32 %6, 544
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.end47, label %if.then43

if.then43:                                        ; preds = %land.lhs.true32
  %nam46 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %7 = load i8** %nam46, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([46 x i8]* @.str36, i32 0, i32 0), i8* %7) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

if.end47:                                         ; preds = %land.lhs.true32, %if.end22
  %flags48 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %8 = load i32* %flags48, align 4, !tbaa !3
  %and49 = and i32 %8, 2
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %cont59, label %if.then51

if.then51:                                        ; preds = %if.end47
  %nam54 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %9 = load i8** %nam54, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([42 x i8]* @.str37, i32 0, i32 0), i8* %9) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

cont59:                                           ; preds = %if.end47
  %and63 = and i32 %2, -33554433
  store i32 %and63, i32* %flags, align 4, !tbaa !3
  %and87 = and i32 %2, 31
  switch i32 %and87, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb249
    i32 4, label %sw.bb299
    i32 8, label %sw.bb299
    i32 1, label %cont344
    i32 16, label %sw.bb347
  ]

sw.bb:                                            ; preds = %cont59
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %10 = load i32* %start, align 4, !tbaa !3
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true89, label %if.else

land.lhs.true89:                                  ; preds = %sw.bb
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %11 = load i32* %end, align 4, !tbaa !3
  %cmp92 = icmp eq i32 %11, -1
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %land.lhs.true89
  %s = getelementptr inbounds %struct.param* %1, i32 0, i32 2, i32 0
  %12 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_scalar* %12, i32 0, i32 1
  %13 = load void (%struct.param*, i8*)** %setfn, align 4, !tbaa !0
  call void %13(%struct.param* %1, i8* %val) nounwind
  %14 = load %struct.param** %pm, align 4, !tbaa !0
  %flags99 = getelementptr inbounds %struct.param* %14, i32 0, i32 0, i32 2
  %15 = load i32* %flags99, align 4, !tbaa !3
  %and112 = and i32 %15, 224
  %tobool113 = icmp eq i32 %and112, 0
  br i1 %tobool113, label %sw.epilog, label %land.lhs.true114

land.lhs.true114:                                 ; preds = %if.then94
  %width = getelementptr inbounds %struct.param* %14, i32 0, i32 4
  %16 = load i32* %width, align 4, !tbaa !3
  %tobool116 = icmp eq i32 %16, 0
  br i1 %tobool116, label %if.then117, label %sw.epilog

if.then117:                                       ; preds = %land.lhs.true114
  %call = call i32 @strlen(i8* %val) nounwind readonly
  %17 = icmp sgt i32 %call, -1
  br i1 %17, label %cont119, label %ioc_bb118

ioc_bb118:                                        ; preds = %if.then117
  %18 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 2173, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %18, i8 0) nounwind
  %.pre = load %struct.param** %pm, align 4, !tbaa !0
  br label %cont119

cont119:                                          ; preds = %ioc_bb118, %if.then117
  %19 = phi %struct.param* [ %.pre, %ioc_bb118 ], [ %14, %if.then117 ]
  %width121 = getelementptr inbounds %struct.param* %19, i32 0, i32 4
  store i32 %call, i32* %width121, align 4, !tbaa !3
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true89, %sw.bb
  %s125 = getelementptr inbounds %struct.param* %1, i32 0, i32 2, i32 0
  %20 = load %struct.gsu_scalar** %s125, align 4, !tbaa !0
  %getfn126 = bitcast %struct.gsu_scalar* %20 to i8* (%struct.param*)**
  %21 = load i8* (%struct.param*)** %getfn126, align 4, !tbaa !0
  %call128 = call i8* %21(%struct.param* %1) nounwind
  %call129 = call i8* @dupstring(i8* %call128) nounwind
  %call130 = call i32 @strlen(i8* %call129) nounwind readonly
  %22 = zext i32 %call130 to i64
  %23 = icmp sgt i32 %call130, -1
  br i1 %23, label %cont133, label %ioc_bb132

ioc_bb132:                                        ; preds = %if.else
  call void @__ioc_report_conversion(i32 2180, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %22, i8 0) nounwind
  br label %cont133

cont133:                                          ; preds = %ioc_bb132, %if.else
  %24 = load i32* %flags48, align 4, !tbaa !3
  %and135 = and i32 %24, 1
  %tobool136 = icmp eq i32 %and135, 0
  %25 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool138 = icmp ne i8 %25, 0
  %or.cond = or i1 %tobool136, %tobool138
  br i1 %or.cond, label %if.end146, label %if.then139

if.then139:                                       ; preds = %cont133
  %26 = load i32* %start, align 4, !tbaa !3
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb141, label %cont142

ioc_bb141:                                        ; preds = %if.then139
  %30 = sext i32 %26 to i64
  call void @__ioc_report_add_overflow(i32 2182, i32 22, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %30, i64 -1, i8 13) nounwind
  br label %cont142

cont142:                                          ; preds = %if.then139, %ioc_bb141
  store i32 %28, i32* %start, align 4, !tbaa !3
  %end143 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %31 = load i32* %end143, align 4, !tbaa !3
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %31, i32 -1)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb144, label %cont145

ioc_bb144:                                        ; preds = %cont142
  %35 = sext i32 %31 to i64
  call void @__ioc_report_add_overflow(i32 2182, i32 35, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %35, i64 -1, i8 13) nounwind
  br label %cont145

cont145:                                          ; preds = %cont142, %ioc_bb144
  store i32 %33, i32* %end143, align 4, !tbaa !3
  br label %if.end146

if.end146:                                        ; preds = %cont133, %cont145
  %36 = load i32* %start, align 4, !tbaa !3
  %cmp148 = icmp slt i32 %36, 0
  br i1 %cmp148, label %if.then150, label %if.end160

if.then150:                                       ; preds = %if.end146
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 %call130)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb152, label %cont153

ioc_bb152:                                        ; preds = %if.then150
  %40 = sext i32 %call130 to i64
  %41 = sext i32 %36 to i64
  call void @__ioc_report_add_overflow(i32 2184, i32 22, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %41, i64 %40, i8 13) nounwind
  br label %cont153

cont153:                                          ; preds = %if.then150, %ioc_bb152
  store i32 %38, i32* %start, align 4, !tbaa !3
  %cmp155 = icmp slt i32 %38, 0
  br i1 %cmp155, label %if.then157, label %if.end160

if.then157:                                       ; preds = %cont153
  store i32 0, i32* %start, align 4, !tbaa !3
  br label %if.end160

if.end160:                                        ; preds = %cont153, %if.then157, %if.end146
  %42 = phi i32 [ %38, %cont153 ], [ 0, %if.then157 ], [ %36, %if.end146 ]
  %cmp162 = icmp sgt i32 %42, %call130
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end160
  store i32 %call130, i32* %start, align 4, !tbaa !3
  br label %if.end166

if.end166:                                        ; preds = %if.end160, %if.then164
  %end167 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %43 = load i32* %end167, align 4, !tbaa !3
  %cmp168 = icmp slt i32 %43, 0
  br i1 %cmp168, label %if.then170, label %if.else200

if.then170:                                       ; preds = %if.end166
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 %call130)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb172, label %cont173

ioc_bb172:                                        ; preds = %if.then170
  %47 = sext i32 %call130 to i64
  %48 = sext i32 %43 to i64
  call void @__ioc_report_add_overflow(i32 2191, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %48, i64 %47, i8 13) nounwind
  br label %cont173

cont173:                                          ; preds = %if.then170, %ioc_bb172
  store i32 %45, i32* %end167, align 4, !tbaa !3
  %cmp175 = icmp slt i32 %45, 0
  br i1 %cmp175, label %if.then177, label %if.else179

if.then177:                                       ; preds = %cont173
  store i32 0, i32* %end167, align 4, !tbaa !3
  br label %if.end207

if.else179:                                       ; preds = %cont173
  %cmp181 = icmp slt i32 %45, %call130
  br i1 %cmp181, label %if.else185, label %if.then183

if.then183:                                       ; preds = %if.else179
  store i32 %call130, i32* %end167, align 4, !tbaa !3
  br label %if.end207

if.else185:                                       ; preds = %if.else179
  %49 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool186 = icmp eq i8 %49, 0
  br i1 %tobool186, label %if.else193, label %if.then187

if.then187:                                       ; preds = %if.else185
  %add.ptr = getelementptr inbounds i8* %call129, i32 %45
  %call189 = call i32 @mb_metacharlenconv(i8* %add.ptr, i32* null) nounwind
  %50 = load i32* %end167, align 4, !tbaa !3
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 %call189)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb191, label %cont192

ioc_bb191:                                        ; preds = %if.then187
  %54 = sext i32 %call189 to i64
  %55 = sext i32 %50 to i64
  call void @__ioc_report_add_overflow(i32 2201, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %55, i64 %54, i8 13) nounwind
  br label %cont192

cont192:                                          ; preds = %if.then187, %ioc_bb191
  store i32 %52, i32* %end167, align 4, !tbaa !3
  br label %if.end207

if.else193:                                       ; preds = %if.else185
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 1)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb195, label %cont196

ioc_bb195:                                        ; preds = %if.else193
  %59 = sext i32 %45 to i64
  call void @__ioc_report_add_overflow(i32 2204, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %59, i64 1, i8 13) nounwind
  br label %cont196

cont196:                                          ; preds = %if.else193, %ioc_bb195
  store i32 %57, i32* %end167, align 4, !tbaa !3
  br label %if.end207

if.else200:                                       ; preds = %if.end166
  %cmp202 = icmp sgt i32 %43, %call130
  br i1 %cmp202, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.else200
  store i32 %call130, i32* %end167, align 4, !tbaa !3
  br label %if.end207

if.end207:                                        ; preds = %if.else200, %if.then204, %if.then177, %cont192, %cont196, %if.then183
  %60 = load i32* %start, align 4, !tbaa !3
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %cont210, label %ioc_bb209

ioc_bb209:                                        ; preds = %if.end207
  %62 = sext i32 %60 to i64
  call void @__ioc_report_conversion(i32 2212, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %62, i8 1) nounwind
  br label %cont210

cont210:                                          ; preds = %ioc_bb209, %if.end207
  %call211 = call i32 @strlen(i8* %val) nounwind readonly
  %63 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %60, i32 %call211)
  %64 = extractvalue { i32, i1 } %63, 0
  %65 = extractvalue { i32, i1 } %63, 1
  br i1 %65, label %ioc_bb212, label %cont213

ioc_bb212:                                        ; preds = %cont210
  %66 = zext i32 %call211 to i64
  %67 = zext i32 %60 to i64
  call void @__ioc_report_add_overflow(i32 2212, i32 43, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %67, i64 %66, i8 5) nounwind
  br label %cont213

cont213:                                          ; preds = %cont210, %ioc_bb212
  br i1 %23, label %cont216, label %ioc_bb215

ioc_bb215:                                        ; preds = %cont213
  %68 = sext i32 %call130 to i64
  call void @__ioc_report_conversion(i32 2212, i32 59, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %68, i8 1) nounwind
  br label %cont216

cont216:                                          ; preds = %ioc_bb215, %cont213
  %69 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %64, i32 %call130)
  %70 = extractvalue { i32, i1 } %69, 0
  %71 = extractvalue { i32, i1 } %69, 1
  br i1 %71, label %ioc_bb217, label %cont218

ioc_bb217:                                        ; preds = %cont216
  %72 = zext i32 %64 to i64
  call void @__ioc_report_add_overflow(i32 2212, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %72, i64 %22, i8 5) nounwind
  br label %cont218

cont218:                                          ; preds = %cont216, %ioc_bb217
  %73 = load i32* %end167, align 4, !tbaa !3
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %cont222, label %ioc_bb221

ioc_bb221:                                        ; preds = %cont218
  %75 = sext i32 %73 to i64
  call void @__ioc_report_conversion(i32 2212, i32 66, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %75, i8 1) nounwind
  br label %cont222

cont222:                                          ; preds = %ioc_bb221, %cont218
  %76 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %70, i32 %73)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb223, label %cont226

ioc_bb223:                                        ; preds = %cont222
  %79 = zext i32 %73 to i64
  %80 = zext i32 %70 to i64
  call void @__ioc_report_sub_overflow(i32 2212, i32 64, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %80, i64 %79, i8 5) nounwind
  br label %cont226

cont226:                                          ; preds = %ioc_bb223, %cont222
  %81 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %77, i32 1)
  %82 = extractvalue { i32, i1 } %81, 0
  %83 = extractvalue { i32, i1 } %81, 1
  br i1 %83, label %ioc_bb227, label %cont228

ioc_bb227:                                        ; preds = %cont226
  %84 = zext i32 %77 to i64
  call void @__ioc_report_add_overflow(i32 2212, i32 77, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %84, i64 1, i8 5) nounwind
  br label %cont228

cont228:                                          ; preds = %cont226, %ioc_bb227
  %call229 = call i8* @zalloc(i32 %82) nounwind
  %85 = load i32* %start, align 4, !tbaa !3
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %cont233, label %ioc_bb232

ioc_bb232:                                        ; preds = %cont228
  %87 = sext i32 %85 to i64
  call void @__ioc_report_conversion(i32 2213, i32 9, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %87, i8 1) nounwind
  br label %cont233

cont233:                                          ; preds = %ioc_bb232, %cont228
  %call234 = call i8* @strncpy(i8* %call229, i8* %call129, i32 %85) nounwind
  %88 = load i32* %start, align 4, !tbaa !3
  %add.ptr236 = getelementptr inbounds i8* %call229, i32 %88
  %call237 = call i8* @strcpy(i8* %add.ptr236, i8* %val) nounwind
  %89 = load i32* %start, align 4, !tbaa !3
  %add.ptr239 = getelementptr inbounds i8* %call229, i32 %89
  %90 = load i32* %end167, align 4, !tbaa !3
  %add.ptr241 = getelementptr inbounds i8* %call129, i32 %90
  %call242 = call i8* @strcat(i8* %add.ptr239, i8* %add.ptr241) nounwind
  %91 = load %struct.param** %pm, align 4, !tbaa !0
  %s245 = getelementptr inbounds %struct.param* %91, i32 0, i32 2, i32 0
  %92 = load %struct.gsu_scalar** %s245, align 4, !tbaa !0
  %setfn246 = getelementptr inbounds %struct.gsu_scalar* %92, i32 0, i32 1
  %93 = load void (%struct.param*, i8*)** %setfn246, align 4, !tbaa !0
  call void %93(%struct.param* %91, i8* %call229) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %sw.epilog

sw.bb249:                                         ; preds = %cont59
  %tobool250 = icmp eq i8* %val, null
  br i1 %tobool250, label %if.end286, label %if.then251

if.then251:                                       ; preds = %sw.bb249
  %gsu253 = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu253 to %struct.gsu_integer**
  %94 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %setfn254 = getelementptr inbounds %struct.gsu_integer* %94, i32 0, i32 1
  %95 = load void (%struct.param*, i64)** %setfn254, align 4, !tbaa !0
  %call256 = call i64 @mathevali(i8* %val) nounwind
  call void %95(%struct.param* %1, i64 %call256) nounwind
  %96 = load %struct.param** %pm, align 4, !tbaa !0
  %flags259 = getelementptr inbounds %struct.param* %96, i32 0, i32 0, i32 2
  %97 = load i32* %flags259, align 4, !tbaa !3
  %and272 = and i32 %97, 224
  %tobool273 = icmp eq i32 %and272, 0
  br i1 %tobool273, label %if.end285, label %land.lhs.true274

land.lhs.true274:                                 ; preds = %if.then251
  %width276 = getelementptr inbounds %struct.param* %96, i32 0, i32 4
  %98 = load i32* %width276, align 4, !tbaa !3
  %tobool277 = icmp eq i32 %98, 0
  br i1 %tobool277, label %if.then278, label %if.end285

if.then278:                                       ; preds = %land.lhs.true274
  %call279 = call i32 @strlen(i8* %val) nounwind readonly
  %99 = icmp sgt i32 %call279, -1
  br i1 %99, label %cont282, label %ioc_bb281

ioc_bb281:                                        ; preds = %if.then278
  %100 = zext i32 %call279 to i64
  call void @__ioc_report_conversion(i32 2226, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %100, i8 0) nounwind
  %.pre502 = load %struct.param** %pm, align 4, !tbaa !0
  br label %cont282

cont282:                                          ; preds = %ioc_bb281, %if.then278
  %101 = phi %struct.param* [ %.pre502, %ioc_bb281 ], [ %96, %if.then278 ]
  %width284 = getelementptr inbounds %struct.param* %101, i32 0, i32 4
  store i32 %call279, i32* %width284, align 4, !tbaa !3
  br label %if.end285

if.end285:                                        ; preds = %land.lhs.true274, %if.then251, %cont282
  call void @zsfree(i8* %val) nounwind
  %.pre501 = load %struct.param** %pm, align 4, !tbaa !0
  br label %if.end286

if.end286:                                        ; preds = %sw.bb249, %if.end285
  %102 = phi %struct.param* [ %1, %sw.bb249 ], [ %.pre501, %if.end285 ]
  %base = getelementptr inbounds %struct.param* %102, i32 0, i32 3
  %103 = load i32* %base, align 4, !tbaa !3
  %tobool288 = icmp ne i32 %103, 0
  %104 = load i32* @lastbase, align 4, !tbaa !3
  %cmp292 = icmp eq i32 %104, -1
  %or.cond500 = or i1 %tobool288, %cmp292
  br i1 %or.cond500, label %sw.epilog, label %if.then294

if.then294:                                       ; preds = %if.end286
  store i32 %104, i32* %base, align 4, !tbaa !3
  br label %sw.epilog

sw.bb299:                                         ; preds = %cont59, %cont59
  %tobool300 = icmp eq i8* %val, null
  br i1 %tobool300, label %sw.epilog, label %if.then301

if.then301:                                       ; preds = %sw.bb299
  call void @matheval(%struct.mnumber* sret %mn, i8* %val) nounwind
  %105 = load %struct.param** %pm, align 4, !tbaa !0
  %gsu303 = getelementptr inbounds %struct.param* %105, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu303 to %struct.gsu_float**
  %106 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %setfn304 = getelementptr inbounds %struct.gsu_float* %106, i32 0, i32 1
  %107 = load void (%struct.param*, double)** %setfn304, align 4, !tbaa !0
  %type = getelementptr inbounds %struct.mnumber* %mn, i32 0, i32 1
  %108 = load i32* %type, align 8, !tbaa !3
  %and306 = and i32 %108, 2
  %tobool307 = icmp eq i32 %and306, 0
  br i1 %tobool307, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then301
  %d = bitcast %struct.mnumber* %mn to double*
  %109 = load double* %d, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then301
  %l = getelementptr inbounds %struct.mnumber* %mn, i32 0, i32 0, i32 0
  %110 = load i64* %l, align 8, !tbaa !4
  %conv309 = sitofp i64 %110 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %109, %cond.true ], [ %conv309, %cond.false ]
  call void %107(%struct.param* %105, double %cond) nounwind
  %111 = load %struct.param** %pm, align 4, !tbaa !0
  %flags312 = getelementptr inbounds %struct.param* %111, i32 0, i32 0, i32 2
  %112 = load i32* %flags312, align 4, !tbaa !3
  %and325 = and i32 %112, 224
  %tobool326 = icmp eq i32 %and325, 0
  br i1 %tobool326, label %if.end338, label %land.lhs.true327

land.lhs.true327:                                 ; preds = %cond.end
  %width329 = getelementptr inbounds %struct.param* %111, i32 0, i32 4
  %113 = load i32* %width329, align 4, !tbaa !3
  %tobool330 = icmp eq i32 %113, 0
  br i1 %tobool330, label %if.then331, label %if.end338

if.then331:                                       ; preds = %land.lhs.true327
  %call332 = call i32 @strlen(i8* %val) nounwind readonly
  %114 = icmp sgt i32 %call332, -1
  br i1 %114, label %cont335, label %ioc_bb334

ioc_bb334:                                        ; preds = %if.then331
  %115 = zext i32 %call332 to i64
  call void @__ioc_report_conversion(i32 2242, i32 30, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %115, i8 0) nounwind
  %.pre503 = load %struct.param** %pm, align 4, !tbaa !0
  br label %cont335

cont335:                                          ; preds = %ioc_bb334, %if.then331
  %116 = phi %struct.param* [ %.pre503, %ioc_bb334 ], [ %111, %if.then331 ]
  %width337 = getelementptr inbounds %struct.param* %116, i32 0, i32 4
  store i32 %call332, i32* %width337, align 4, !tbaa !3
  br label %if.end338

if.end338:                                        ; preds = %land.lhs.true327, %cond.end, %cont335
  call void @zsfree(i8* %val) nounwind
  br label %sw.epilog

cont344:                                          ; preds = %cont59
  %call345 = call i8* @zalloc(i32 8) nounwind
  %117 = bitcast i8* %call345 to i8**
  store i8* %val, i8** %117, align 4, !tbaa !0
  %arrayidx346 = getelementptr inbounds i8* %call345, i32 4
  %118 = bitcast i8* %arrayidx346 to i8**
  store i8* null, i8** %118, align 4, !tbaa !0
  call void @setarrvalue(%struct.value* %v, i8** %117)
  br label %sw.epilog

sw.bb347:                                         ; preds = %cont59
  %119 = load %struct.param** @foundparam, align 4, !tbaa !0
  %cmp348 = icmp eq %struct.param* %119, null
  br i1 %cmp348, label %if.then350, label %if.else354

if.then350:                                       ; preds = %sw.bb347
  %nam353 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %120 = load i8** %nam353, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([47 x i8]* @.str38, i32 0, i32 0), i8* %120) nounwind
  call void @zsfree(i8* %val) nounwind
  br label %return

if.else354:                                       ; preds = %sw.bb347
  %s356 = getelementptr inbounds %struct.param* %119, i32 0, i32 2, i32 0
  %121 = load %struct.gsu_scalar** %s356, align 4, !tbaa !0
  %setfn357 = getelementptr inbounds %struct.gsu_scalar* %121, i32 0, i32 1
  %122 = load void (%struct.param*, i8*)** %setfn357, align 4, !tbaa !0
  call void %122(%struct.param* %119, i8* %val) nounwind
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end286, %land.lhs.true114, %if.then94, %sw.bb299, %if.end338, %if.then294, %cont233, %cont119, %cont59, %if.else354, %cont344
  %123 = load %struct.param** %pm, align 4, !tbaa !0
  %env = getelementptr inbounds %struct.param* %123, i32 0, i32 5
  %124 = load i8** %env, align 4, !tbaa !0
  %tobool360 = icmp eq i8* %124, null
  %flags364 = getelementptr inbounds %struct.param* %123, i32 0, i32 0, i32 2
  %125 = load i32* %flags364, align 4, !tbaa !3
  br i1 %tobool360, label %land.lhs.true361, label %lor.lhs.false

land.lhs.true361:                                 ; preds = %sw.epilog
  %and369 = and i32 %125, 4096
  %tobool370 = icmp eq i32 %and369, 0
  br i1 %tobool370, label %land.lhs.true371, label %lor.lhs.false

land.lhs.true371:                                 ; preds = %land.lhs.true361
  %126 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %tobool373 = icmp eq i8 %126, 0
  br i1 %tobool373, label %return, label %land.lhs.true374

land.lhs.true374:                                 ; preds = %land.lhs.true371
  %and382 = and i32 %125, 536870912
  %tobool383 = icmp eq i32 %and382, 0
  br i1 %tobool383, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %sw.epilog, %land.lhs.true374, %land.lhs.true361
  %and391 = and i32 %125, 1
  %tobool392 = icmp eq i32 %and391, 0
  br i1 %tobool392, label %lor.lhs.false393, label %return

lor.lhs.false393:                                 ; preds = %lor.lhs.false
  %ename = getelementptr inbounds %struct.param* %123, i32 0, i32 6
  %127 = load i8** %ename, align 4, !tbaa !0
  %tobool395 = icmp eq i8* %127, null
  br i1 %tobool395, label %if.end397, label %return

if.end397:                                        ; preds = %lor.lhs.false393
  call void @export_param(%struct.param* %123)
  br label %return

return:                                           ; preds = %lor.lhs.false393, %lor.lhs.false, %land.lhs.true374, %land.lhs.true371, %entry, %if.end397, %if.then350, %if.then51, %if.then43, %if.then18, %if.then4
  ret void
}

declare void @zsfree(i8*)

declare i8* @strncpy(i8*, i8* nocapture, i32) nounwind

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare i8* @strcat(i8*, i8* nocapture) nounwind

define void @setarrvalue(%struct.value* nocapture %v, i8** %val) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end311, label %if.end

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %1 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 1024
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %nam = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str35, i32 0, i32 0), i8* %3) nounwind
  tail call void @freearray(i8** %val) nounwind
  br label %if.end311

if.end7:                                          ; preds = %if.end
  %and15 = and i32 %2, 16777216
  %tobool16 = icmp eq i32 %and15, 0
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %4, 0
  %or.cond379 = or i1 %tobool16, %tobool17
  br i1 %or.cond379, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end7
  %nam21 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %5 = load i8** %nam21, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i8* %5) nounwind
  tail call void @freearray(i8** %val) nounwind
  br label %if.end311

if.end22:                                         ; preds = %if.end7
  %and55 = and i32 %2, 17
  %tobool56 = icmp eq i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end22
  tail call void @freearray(i8** %val) nounwind
  %6 = load %struct.param** %pm, align 4, !tbaa !0
  %nam60 = getelementptr inbounds %struct.param* %6, i32 0, i32 0, i32 1
  %7 = load i8** %nam60, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([47 x i8]* @.str39, i32 0, i32 0), i8* %7) nounwind
  br label %if.end311

if.end61:                                         ; preds = %if.end22
  %flags62 = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %8 = load i32* %flags62, align 4, !tbaa !3
  %and63 = and i32 %8, 2
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %if.end69, label %if.then65

if.then65:                                        ; preds = %if.end61
  %nam68 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %9 = load i8** %nam68, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([42 x i8]* @.str37, i32 0, i32 0), i8* %9) nounwind
  tail call void @freearray(i8** %val) nounwind
  br label %if.end311

if.end69:                                         ; preds = %if.end61
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  %10 = load i32* %start, align 4, !tbaa !3
  switch i32 %10, label %if.else155 [
    i32 0, label %land.lhs.true71
    i32 -1, label %land.lhs.true118
  ]

land.lhs.true71:                                  ; preds = %if.end69
  %end = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %11 = load i32* %end, align 4, !tbaa !3
  %cmp74 = icmp eq i32 %11, -1
  br i1 %cmp74, label %if.then76, label %if.else155

if.then76:                                        ; preds = %land.lhs.true71
  %and100 = and i32 %2, 31
  %cmp105 = icmp eq i32 %and100, 16
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %if.then76
  tail call void @arrhashsetfn(%struct.param* %1, i8** %val, i32 0)
  br label %if.end311

if.else:                                          ; preds = %if.then76
  %gsu = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %12 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_array* %12, i32 0, i32 1
  %13 = load void (%struct.param*, i8**)** %setfn, align 4, !tbaa !0
  tail call void %13(%struct.param* %1, i8** %val) nounwind
  br label %if.end311

land.lhs.true118:                                 ; preds = %if.end69
  %end119 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %14 = load i32* %end119, align 4, !tbaa !3
  %cmp120 = icmp eq i32 %14, 0
  br i1 %cmp120, label %land.lhs.true122, label %if.else155

land.lhs.true122:                                 ; preds = %land.lhs.true118
  %and146 = and i32 %2, 31
  %cmp151 = icmp eq i32 %and146, 16
  br i1 %cmp151, label %if.then153, label %if.else155

if.then153:                                       ; preds = %land.lhs.true122
  tail call void @arrhashsetfn(%struct.param* %1, i8** %val, i32 1)
  br label %if.end311

if.else155:                                       ; preds = %if.end69, %land.lhs.true71, %land.lhs.true122, %land.lhs.true118
  %and179 = and i32 %2, 31
  %cmp184 = icmp eq i32 %and179, 16
  br i1 %cmp184, label %if.then186, label %if.end190

if.then186:                                       ; preds = %if.else155
  tail call void @freearray(i8** %val) nounwind
  %15 = load %struct.param** %pm, align 4, !tbaa !0
  %nam189 = getelementptr inbounds %struct.param* %15, i32 0, i32 0, i32 1
  %16 = load i8** %nam189, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([46 x i8]* @.str36, i32 0, i32 0), i8* %16) nounwind
  br label %if.end311

if.end190:                                        ; preds = %if.else155
  %and192 = and i32 %8, 1
  %tobool193 = icmp eq i32 %and192, 0
  %17 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %tobool195 = icmp ne i8 %17, 0
  %or.cond = or i1 %tobool193, %tobool195
  br i1 %or.cond, label %if.end208, label %if.then196

if.then196:                                       ; preds = %if.end190
  %cmp198 = icmp sgt i32 %10, 0
  br i1 %cmp198, label %if.then200, label %if.end204

if.then200:                                       ; preds = %if.then196
  %18 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 -1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb202, label %cont203

ioc_bb202:                                        ; preds = %if.then200
  %21 = sext i32 %10 to i64
  tail call void @__ioc_report_add_overflow(i32 2375, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %21, i64 -1, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %if.then200, %ioc_bb202
  store i32 %19, i32* %start, align 4, !tbaa !3
  br label %if.end204

if.end204:                                        ; preds = %if.then196, %cont203
  %end205 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %22 = load i32* %end205, align 4, !tbaa !3
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 -1)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb206, label %cont207

ioc_bb206:                                        ; preds = %if.end204
  %26 = sext i32 %22 to i64
  tail call void @__ioc_report_add_overflow(i32 2376, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %26, i64 -1, i8 13) nounwind
  br label %cont207

cont207:                                          ; preds = %if.end204, %ioc_bb206
  store i32 %24, i32* %end205, align 4, !tbaa !3
  %.pre = load %struct.param** %pm, align 4, !tbaa !0
  br label %if.end208

if.end208:                                        ; preds = %if.end190, %cont207
  %27 = phi %struct.param* [ %1, %if.end190 ], [ %.pre, %cont207 ]
  %gsu210 = getelementptr inbounds %struct.param* %27, i32 0, i32 2
  %a211 = bitcast %union.anon.0* %gsu210 to %struct.gsu_array**
  %28 = load %struct.gsu_array** %a211, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_array* %28, i32 0, i32 0
  %29 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !0
  %call = tail call i8** %29(%struct.param* %27) nounwind
  %call213 = tail call i32 @arrlen(i8** %call) nounwind
  %30 = load i32* %start, align 4, !tbaa !3
  %cmp215 = icmp slt i32 %30, 0
  br i1 %cmp215, label %if.then217, label %if.end227

if.then217:                                       ; preds = %if.end208
  %31 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 %call213)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb219, label %cont220

ioc_bb219:                                        ; preds = %if.then217
  %34 = sext i32 %call213 to i64
  %35 = sext i32 %30 to i64
  tail call void @__ioc_report_add_overflow(i32 2381, i32 18, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %35, i64 %34, i8 13) nounwind
  br label %cont220

cont220:                                          ; preds = %if.then217, %ioc_bb219
  store i32 %32, i32* %start, align 4, !tbaa !3
  %cmp222 = icmp slt i32 %32, 0
  br i1 %cmp222, label %if.then224, label %if.end227

if.then224:                                       ; preds = %cont220
  store i32 0, i32* %start, align 4, !tbaa !3
  br label %if.end227

if.end227:                                        ; preds = %cont220, %if.then224, %if.end208
  %end228 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %36 = load i32* %end228, align 4, !tbaa !3
  %cmp229 = icmp slt i32 %36, 0
  br i1 %cmp229, label %if.then231, label %if.end243

if.then231:                                       ; preds = %if.end227
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call213, i32 1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb232, label %cont233

ioc_bb232:                                        ; preds = %if.then231
  %40 = sext i32 %call213 to i64
  tail call void @__ioc_report_add_overflow(i32 2386, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %40, i64 1, i8 13) nounwind
  %.pre392 = load i32* %end228, align 4, !tbaa !3
  br label %cont233

cont233:                                          ; preds = %if.then231, %ioc_bb232
  %41 = phi i32 [ %36, %if.then231 ], [ %.pre392, %ioc_bb232 ]
  %42 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 %38)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb235, label %cont236

ioc_bb235:                                        ; preds = %cont233
  %45 = sext i32 %38 to i64
  %46 = sext i32 %41 to i64
  tail call void @__ioc_report_add_overflow(i32 2386, i32 16, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %46, i64 %45, i8 13) nounwind
  br label %cont236

cont236:                                          ; preds = %cont233, %ioc_bb235
  store i32 %43, i32* %end228, align 4, !tbaa !3
  %cmp238 = icmp slt i32 %43, 0
  br i1 %cmp238, label %if.then240, label %if.end243

if.then240:                                       ; preds = %cont236
  store i32 0, i32* %end228, align 4, !tbaa !3
  br label %if.end243

if.end243:                                        ; preds = %cont236, %if.then240, %if.end227
  %47 = phi i32 [ 0, %if.then240 ], [ %36, %if.end227 ], [ %43, %cont236 ]
  %48 = load i32* %start, align 4, !tbaa !3
  %cmp246 = icmp slt i32 %47, %48
  br i1 %cmp246, label %if.then248, label %if.end251

if.then248:                                       ; preds = %if.end243
  store i32 %48, i32* %end228, align 4, !tbaa !3
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end243
  %call253 = tail call i32 @arrlen(i8** %val) nounwind
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 %call253)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb254, label %cont255

ioc_bb254:                                        ; preds = %if.end251
  %52 = sext i32 %call253 to i64
  %53 = sext i32 %48 to i64
  tail call void @__ioc_report_add_overflow(i32 2392, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %53, i64 %52, i8 13) nounwind
  br label %cont255

cont255:                                          ; preds = %if.end251, %ioc_bb254
  %54 = load i32* %end228, align 4, !tbaa !3
  %cmp257 = icmp sgt i32 %54, %call213
  br i1 %cmp257, label %if.end267, label %if.then259

if.then259:                                       ; preds = %cont255
  %55 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call213, i32 %54)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb261, label %cont262

ioc_bb261:                                        ; preds = %if.then259
  %58 = sext i32 %54 to i64
  %59 = sext i32 %call213 to i64
  tail call void @__ioc_report_sub_overflow(i32 2394, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %59, i64 %58, i8 13) nounwind
  br label %cont262

cont262:                                          ; preds = %if.then259, %ioc_bb261
  %60 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %56, i32 1)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb263, label %cont264

ioc_bb263:                                        ; preds = %cont262
  %63 = sext i32 %56 to i64
  tail call void @__ioc_report_add_overflow(i32 2394, i32 26, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %63, i64 1, i8 13) nounwind
  br label %cont264

cont264:                                          ; preds = %cont262, %ioc_bb263
  %64 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 %61)
  %65 = extractvalue { i32, i1 } %64, 0
  %66 = extractvalue { i32, i1 } %64, 1
  br i1 %66, label %ioc_bb265, label %if.end267

ioc_bb265:                                        ; preds = %cont264
  %67 = sext i32 %61 to i64
  %68 = sext i32 %50 to i64
  tail call void @__ioc_report_add_overflow(i32 2394, i32 10, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @19, i32 0, i32 0), i64 %68, i64 %67, i8 13) nounwind
  br label %if.end267

if.end267:                                        ; preds = %ioc_bb265, %cont264, %cont255
  %ll.0 = phi i32 [ %50, %cont255 ], [ %65, %cont264 ], [ %65, %ioc_bb265 ]
  %69 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.0, i32 1)
  %70 = extractvalue { i32, i1 } %69, 0
  %71 = extractvalue { i32, i1 } %69, 1
  br i1 %71, label %ioc_bb268, label %cont269

ioc_bb268:                                        ; preds = %if.end267
  %72 = sext i32 %ll.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2395, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %72, i64 1, i8 13) nounwind
  br label %cont269

cont269:                                          ; preds = %if.end267, %ioc_bb268
  %73 = icmp sgt i32 %70, -1
  br i1 %73, label %cont271, label %ioc_bb270

ioc_bb270:                                        ; preds = %cont269
  %74 = sext i32 %70 to i64
  tail call void @__ioc_report_conversion(i32 2395, i32 53, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %74, i8 1) nounwind
  br label %cont271

cont271:                                          ; preds = %ioc_bb270, %cont269
  %75 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4)
  %76 = extractvalue { i32, i1 } %75, 0
  %77 = extractvalue { i32, i1 } %75, 1
  br i1 %77, label %ioc_bb272, label %cont273

ioc_bb272:                                        ; preds = %cont271
  %78 = zext i32 %70 to i64
  tail call void @__ioc_report_mul_overflow(i32 2395, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %78, i8 5) nounwind
  br label %cont273

cont273:                                          ; preds = %cont271, %ioc_bb272
  %call274 = tail call i8* @zshcalloc(i32 %76) nounwind
  %79 = bitcast i8* %call274 to i8**
  %80 = load i32* %start, align 4, !tbaa !3
  %cmp276387 = icmp sgt i32 %80, 0
  br i1 %cmp276387, label %for.body, label %for.cond285.preheader

for.cond285.preheader:                            ; preds = %for.cond.backedge, %cont273
  %p.0.lcssa = phi i8** [ %79, %cont273 ], [ %incdec.ptr282, %for.cond.backedge ]
  %81 = load i8** %val, align 4, !tbaa !0
  %tobool286383 = icmp eq i8* %81, null
  br i1 %tobool286383, label %for.end291, label %for.body287

for.body:                                         ; preds = %cont273, %for.cond.backedge
  %i.0390 = phi i32 [ %84, %for.cond.backedge ], [ 0, %cont273 ]
  %p.0389 = phi i8** [ %incdec.ptr282, %for.cond.backedge ], [ %79, %cont273 ]
  %q.0388 = phi i8** [ %q.1, %for.cond.backedge ], [ %call, %cont273 ]
  %cmp278 = icmp slt i32 %i.0390, %call213
  br i1 %cmp278, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8** %q.0388, i32 1
  %82 = load i8** %q.0388, align 4, !tbaa !0
  %call280 = tail call i8* @ztrdup(i8* %82) nounwind
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %call281 = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %q.1 = phi i8** [ %incdec.ptr, %cond.true ], [ %q.0388, %cond.false ]
  %cond = phi i8* [ %call280, %cond.true ], [ %call281, %cond.false ]
  %incdec.ptr282 = getelementptr inbounds i8** %p.0389, i32 1
  store i8* %cond, i8** %p.0389, align 4, !tbaa !0
  %83 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0390, i32 1)
  %84 = extractvalue { i32, i1 } %83, 0
  %85 = extractvalue { i32, i1 } %83, 1
  br i1 %85, label %ioc_bb283, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cond.end, %ioc_bb283
  %86 = load i32* %start, align 4, !tbaa !3
  %cmp276 = icmp slt i32 %84, %86
  br i1 %cmp276, label %for.body, label %for.cond285.preheader

ioc_bb283:                                        ; preds = %cond.end
  %87 = sext i32 %i.0390 to i64
  tail call void @__ioc_report_add_overflow(i32 2396, i32 34, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %87, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.body287:                                      ; preds = %for.cond285.preheader, %for.body287
  %88 = phi i8* [ %89, %for.body287 ], [ %81, %for.cond285.preheader ]
  %p.1385 = phi i8** [ %incdec.ptr290, %for.body287 ], [ %p.0.lcssa, %for.cond285.preheader ]
  %r.0384 = phi i8** [ %incdec.ptr288, %for.body287 ], [ %val, %for.cond285.preheader ]
  %incdec.ptr288 = getelementptr inbounds i8** %r.0384, i32 1
  %call289 = tail call i8* @ztrdup(i8* %88) nounwind
  %incdec.ptr290 = getelementptr inbounds i8** %p.1385, i32 1
  store i8* %call289, i8** %p.1385, align 4, !tbaa !0
  %89 = load i8** %incdec.ptr288, align 4, !tbaa !0
  %tobool286 = icmp eq i8* %89, null
  br i1 %tobool286, label %for.end291, label %for.body287

for.end291:                                       ; preds = %for.body287, %for.cond285.preheader
  %p.1.lcssa = phi i8** [ %p.0.lcssa, %for.cond285.preheader ], [ %incdec.ptr290, %for.body287 ]
  %90 = load i32* %end228, align 4, !tbaa !3
  %cmp293 = icmp slt i32 %90, %call213
  br i1 %cmp293, label %if.then295, label %if.end304

if.then295:                                       ; preds = %for.end291
  %add.ptr = getelementptr inbounds i8** %call, i32 %90
  %91 = load i8** %add.ptr, align 4, !tbaa !0
  %tobool298380 = icmp eq i8* %91, null
  br i1 %tobool298380, label %if.end304, label %for.body299

for.body299:                                      ; preds = %if.then295, %for.body299
  %92 = phi i8* [ %93, %for.body299 ], [ %91, %if.then295 ]
  %p.2382 = phi i8** [ %incdec.ptr302, %for.body299 ], [ %p.1.lcssa, %if.then295 ]
  %q.2381 = phi i8** [ %incdec.ptr300, %for.body299 ], [ %add.ptr, %if.then295 ]
  %incdec.ptr300 = getelementptr inbounds i8** %q.2381, i32 1
  %call301 = tail call i8* @ztrdup(i8* %92) nounwind
  %incdec.ptr302 = getelementptr inbounds i8** %p.2382, i32 1
  store i8* %call301, i8** %p.2382, align 4, !tbaa !0
  %93 = load i8** %incdec.ptr300, align 4, !tbaa !0
  %tobool298 = icmp eq i8* %93, null
  br i1 %tobool298, label %if.end304, label %for.body299

if.end304:                                        ; preds = %if.then295, %for.body299, %for.end291
  %p.3 = phi i8** [ %p.1.lcssa, %for.end291 ], [ %p.1.lcssa, %if.then295 ], [ %incdec.ptr302, %for.body299 ]
  store i8* null, i8** %p.3, align 4, !tbaa !0
  %94 = load %struct.param** %pm, align 4, !tbaa !0
  %gsu306 = getelementptr inbounds %struct.param* %94, i32 0, i32 2
  %a307 = bitcast %union.anon.0* %gsu306 to %struct.gsu_array**
  %95 = load %struct.gsu_array** %a307, align 4, !tbaa !0
  %setfn308 = getelementptr inbounds %struct.gsu_array* %95, i32 0, i32 1
  %96 = load void (%struct.param*, i8**)** %setfn308, align 4, !tbaa !0
  tail call void %96(%struct.param* %94, i8** %79) nounwind
  tail call void @freearray(i8** %val) nounwind
  br label %if.end311

if.end311:                                        ; preds = %entry, %if.then153, %if.end304, %if.then107, %if.else, %if.then4, %if.then18, %if.then57, %if.then65, %if.then186
  ret void
}

define void @setnumvalue(%struct.value* nocapture %v, %struct.mnumber* nocapture byval align 4 %val) nounwind {
entry:
  %buf = alloca [68 x i8], align 1
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %sw.epilog, label %if.end

if.end:                                           ; preds = %entry
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %1 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 1024
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %nam = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str35, i32 0, i32 0), i8* %3) nounwind
  br label %sw.epilog

if.end7:                                          ; preds = %if.end
  %and15 = and i32 %2, 16777216
  %tobool16 = icmp eq i32 %and15, 0
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool16, %tobool17
  br i1 %or.cond, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end7
  %nam21 = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 1
  %5 = load i8** %nam21, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i8* %5) nounwind
  br label %sw.epilog

if.end22:                                         ; preds = %if.end7
  %and46 = and i32 %2, 31
  switch i32 %and46, label %sw.epilog [
    i32 0, label %sw.bb47
    i32 1, label %sw.bb47
    i32 2, label %sw.bb65
    i32 4, label %sw.bb77
    i32 8, label %sw.bb77
  ]

sw.bb47:                                          ; preds = %if.end22, %if.end22
  %type = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 1
  %6 = load i32* %type, align 4, !tbaa !3
  %and48 = and i32 %6, 1
  %7 = load i32* @outputradix, align 4, !tbaa !3
  %8 = or i32 %and48, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.else, label %if.then51

if.then51:                                        ; preds = %sw.bb47
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %if.then55, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  %l60.phi.trans.insert = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 0, i32 0
  %.pre = load i64* %l60.phi.trans.insert, align 4, !tbaa !4
  br label %if.end58

if.then55:                                        ; preds = %if.then51
  %d = bitcast %struct.mnumber* %val to double*
  %10 = load double* %d, align 4, !tbaa !5
  %conv56 = fptosi double %10 to i64
  %l = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 0, i32 0
  store i64 %conv56, i64* %l, align 4, !tbaa !4
  br label %if.end58

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %if.then55
  %11 = phi i64 [ %.pre, %if.then51.if.end58_crit_edge ], [ %conv56, %if.then55 ]
  %arraydecay = getelementptr inbounds [68 x i8]* %buf, i32 0, i32 0
  call void @convbase(i8* %arraydecay, i64 %11, i32 %7)
  br label %if.end63

if.else:                                          ; preds = %sw.bb47
  %d62 = bitcast %struct.mnumber* %val to double*
  %12 = load double* %d62, align 4, !tbaa !5
  %call = call i8* @convfloat(double %12, i32 0, i32 0, %struct._IO_FILE* null)
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.end58
  %p.0 = phi i8* [ %arraydecay, %if.end58 ], [ %call, %if.else ]
  %call64 = call i8* @ztrdup(i8* %p.0) nounwind
  call void @setstrvalue(%struct.value* %v, i8* %call64)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end22
  %gsu = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %i = bitcast %union.anon.0* %gsu to %struct.gsu_integer**
  %13 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_integer* %13, i32 0, i32 1
  %14 = load void (%struct.param*, i64)** %setfn, align 4, !tbaa !0
  %type68 = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 1
  %15 = load i32* %type68, align 4, !tbaa !3
  %and69 = and i32 %15, 1
  %tobool70 = icmp eq i32 %and69, 0
  br i1 %tobool70, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb65
  %l72 = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 0, i32 0
  %16 = load i64* %l72, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb65
  %d74 = bitcast %struct.mnumber* %val to double*
  %17 = load double* %d74, align 4, !tbaa !5
  %conv75 = fptosi double %17 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %conv75, %cond.false ]
  call void %14(%struct.param* %1, i64 %cond) nounwind
  call void @setstrvalue(%struct.value* %v, i8* null)
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end22, %if.end22
  %gsu79 = getelementptr inbounds %struct.param* %1, i32 0, i32 2
  %f = bitcast %union.anon.0* %gsu79 to %struct.gsu_float**
  %18 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %setfn80 = getelementptr inbounds %struct.gsu_float* %18, i32 0, i32 1
  %19 = load void (%struct.param*, double)** %setfn80, align 4, !tbaa !0
  %type82 = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 1
  %20 = load i32* %type82, align 4, !tbaa !3
  %and83 = and i32 %20, 1
  %tobool84 = icmp eq i32 %and83, 0
  br i1 %tobool84, label %cond.false89, label %cond.true85

cond.true85:                                      ; preds = %sw.bb77
  %l87 = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 0, i32 0
  %21 = load i64* %l87, align 4, !tbaa !4
  %conv88 = sitofp i64 %21 to double
  br label %cond.end92

cond.false89:                                     ; preds = %sw.bb77
  %d91 = bitcast %struct.mnumber* %val to double*
  %22 = load double* %d91, align 4, !tbaa !5
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false89, %cond.true85
  %cond93 = phi double [ %conv88, %cond.true85 ], [ %22, %cond.false89 ]
  call void %19(%struct.param* %1, double %cond93) nounwind
  call void @setstrvalue(%struct.value* %v, i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.then4, %if.then18, %if.end22, %cond.end92, %cond.end, %if.end63
  ret void
}

declare void @freearray(i8**)

define void @arrhashsetfn(%struct.param* %pm, i8** %val, i32 %augment) nounwind {
entry:
  %call = tail call i32 @arrlen(i8** %val) nounwind
  %0 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %call1 = tail call i8* @hcalloc(i32 24) nounwind
  %1 = bitcast i8* %call1 to %struct.value*
  %end = getelementptr inbounds i8* %call1, i32 16
  %2 = bitcast i8* %end to i32*
  store i32 -1, i32* %2, align 4, !tbaa !3
  %rem45 = and i32 %call, 1
  %tobool = icmp eq i32 %rem45, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @freearray(i8** %val) nounwind
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([49 x i8]* @.str45, i32 0, i32 0)) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %tobool4 = icmp eq i32 %call, 0
  br i1 %tobool4, label %while.cond.preheader, label %if.then5

if.then5:                                         ; preds = %if.end
  %tobool6 = icmp eq i32 %augment, 0
  br i1 %tobool6, label %if.then9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then5
  %gsu = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %3 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_hash* %3, i32 0, i32 0
  %4 = load %struct.hashtable* (%struct.param*)** %getfn, align 4, !tbaa !0
  %call7 = tail call %struct.hashtable* %4(%struct.param* %pm) nounwind
  store %struct.hashtable* %call7, %struct.hashtable** @paramtab, align 4, !tbaa !0
  %tobool8 = icmp eq %struct.hashtable* %call7, null
  br i1 %tobool8, label %if.then9, label %while.cond.preheader

if.then9:                                         ; preds = %land.lhs.true, %if.then5
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %5 = load i8** %nam, align 4, !tbaa !0
  %call.i = tail call %struct.hashtable* @newhashtable(i32 17, i8* %5, void (%struct.hashtable*)* null) nounwind
  %hash.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i, align 4, !tbaa !0
  %emptytable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i, align 4, !tbaa !0
  %filltable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i, align 4, !tbaa !0
  %cmpnodes.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i, align 4, !tbaa !0
  %addnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %getnode2.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @getparamnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i, align 4, !tbaa !0
  %removenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i, align 4, !tbaa !0
  %disablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode.i, align 4, !tbaa !0
  %enablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode.i, align 4, !tbaa !0
  %freenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 14
  store void (%struct.hashnode*)* @freeparamnode, void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !0
  %printnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printparamnode, void (%struct.hashnode*, i32)** %printnode.i, align 4, !tbaa !0
  store %struct.hashtable* %call.i, %struct.hashtable** @paramtab, align 4, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then9, %if.end, %land.lhs.true
  %ht.0.ph = phi %struct.hashtable* [ %call7, %land.lhs.true ], [ null, %if.end ], [ %call.i, %if.then9 ]
  %6 = load i8** %val, align 4, !tbaa !0
  %tobool1346 = icmp eq i8* %6, null
  br i1 %tobool1346, label %while.end, label %cont17.lr.ph

cont17.lr.ph:                                     ; preds = %while.cond.preheader
  %pm19 = getelementptr inbounds i8* %call1, i32 4
  %7 = bitcast i8* %pm19 to %struct.param**
  br label %cont17

cont17:                                           ; preds = %cont17.lr.ph, %if.end25
  %8 = phi i8* [ %6, %cont17.lr.ph ], [ %15, %if.end25 ]
  %aptr.047 = phi i8** [ %val, %cont17.lr.ph ], [ %incdec.ptr26, %if.end25 ]
  %call18 = tail call %struct.param* @createparam(i8* %8, i32 33554432)
  store %struct.param* %call18, %struct.param** %7, align 4, !tbaa !0
  %tobool21 = icmp eq %struct.param* %call18, null
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %cont17
  %9 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 9
  %10 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %11 = load i8** %aptr.047, align 4, !tbaa !0
  %call23 = tail call %struct.hashnode* %10(%struct.hashtable* %9, i8* %11) nounwind
  %12 = bitcast %struct.hashnode* %call23 to %struct.param*
  store %struct.param* %12, %struct.param** %7, align 4, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %cont17, %if.then22
  %incdec.ptr = getelementptr inbounds i8** %aptr.047, i32 1
  %13 = load i8** %aptr.047, align 4, !tbaa !0
  tail call void @zsfree(i8* %13) nounwind
  %incdec.ptr26 = getelementptr inbounds i8** %aptr.047, i32 2
  %14 = load i8** %incdec.ptr, align 4, !tbaa !0
  tail call void @setstrvalue(%struct.value* %1, i8* %14)
  %15 = load i8** %incdec.ptr26, align 4, !tbaa !0
  %tobool13 = icmp eq i8* %15, null
  br i1 %tobool13, label %while.end, label %cont17

while.end:                                        ; preds = %if.end25, %while.cond.preheader
  store %struct.hashtable* %0, %struct.hashtable** @paramtab, align 4, !tbaa !0
  %gsu27 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2
  %h28 = bitcast %union.anon.0* %gsu27 to %struct.gsu_hash**
  %16 = load %struct.gsu_hash** %h28, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_hash* %16, i32 0, i32 1
  %17 = load void (%struct.param*, %struct.hashtable*)** %setfn, align 4, !tbaa !0
  tail call void %17(%struct.param* %pm, %struct.hashtable* %ht.0.ph) nounwind
  %18 = bitcast i8** %val to i8*
  tail call void @free(i8* %18) nounwind
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

define i64 @getiparam(i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool = icmp eq %struct.value* %call.i, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i64 @getintvalue(%struct.value* %call.i)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

define void @getnparam(%struct.mnumber* noalias sret %agg.result, i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool = icmp eq %struct.value* %call.i, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mn.sroa.0.0..idx = getelementptr inbounds %struct.mnumber* %agg.result, i32 0, i32 0, i32 0
  store i64 0, i64* %mn.sroa.0.0..idx, align 4
  %mn.sroa.1.8..idx1 = getelementptr inbounds %struct.mnumber* %agg.result, i32 0, i32 1
  store i32 1, i32* %mn.sroa.1.8..idx1, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @getnumvalue(%struct.mnumber* sret %agg.result, %struct.value* %call.i)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

define i8** @getaparam(i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = sext i8 %0 to i64
  call void @__ioc_report_conversion(i32 2452, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %3, 1
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %cont
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 0, i32 0) nounwind
  %tobool5 = icmp eq %struct.value* %call.i, null
  br i1 %tobool5, label %return, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %pm = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %4 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %4, i32 0, i32 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !3
  %and27 = and i32 %5, 31
  %cmp = icmp eq i32 %and27, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true6
  %gsu = getelementptr inbounds %struct.param* %4, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %6 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_array* %6, i32 0, i32 0
  %7 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !0
  %call35 = call i8** %7(%struct.param* %4) nounwind
  br label %return

return:                                           ; preds = %land.lhs.true6, %cont, %land.lhs.true, %if.then
  %retval.0 = phi i8** [ %call35, %if.then ], [ null, %land.lhs.true ], [ null, %cont ], [ null, %land.lhs.true6 ]
  ret i8** %retval.0
}

define i8** @gethparam(i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = sext i8 %0 to i64
  call void @__ioc_report_conversion(i32 2463, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %3, 1
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %cont
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 0, i32 0) nounwind
  %tobool5 = icmp eq %struct.value* %call.i, null
  br i1 %tobool5, label %return, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %pm = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %4 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %4, i32 0, i32 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !3
  %and27 = and i32 %5, 31
  %cmp = icmp eq i32 %and27, 16
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true6
  %gsu = getelementptr inbounds %struct.param* %4, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %6 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_hash* %6, i32 0, i32 0
  %7 = load %struct.hashtable* (%struct.param*)** %getfn, align 4, !tbaa !0
  %call35 = call %struct.hashtable* %7(%struct.param* %4) nounwind
  %call40 = call i8** @paramvalarr(%struct.hashtable* %call35, i32 1)
  br label %return

return:                                           ; preds = %land.lhs.true6, %cont, %land.lhs.true, %if.then
  %retval.0 = phi i8** [ %call40, %if.then ], [ null, %land.lhs.true ], [ null, %cont ], [ null, %land.lhs.true6 ]
  ret i8** %retval.0
}

define i8** @gethkparam(i8* %s) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = sext i8 %0 to i64
  call void @__ioc_report_conversion(i32 2474, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %3, 1
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %cont
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 0, i32 0) nounwind
  %tobool5 = icmp eq %struct.value* %call.i, null
  br i1 %tobool5, label %return, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %pm = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %4 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %4, i32 0, i32 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !3
  %and27 = and i32 %5, 31
  %cmp = icmp eq i32 %and27, 16
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true6
  %gsu = getelementptr inbounds %struct.param* %4, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu to %struct.gsu_hash**
  %6 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %getfn = getelementptr inbounds %struct.gsu_hash* %6, i32 0, i32 0
  %7 = load %struct.hashtable* (%struct.param*)** %getfn, align 4, !tbaa !0
  %call35 = call %struct.hashtable* %7(%struct.param* %4) nounwind
  %call40 = call i8** @paramvalarr(%struct.hashtable* %call35, i32 2)
  br label %return

return:                                           ; preds = %land.lhs.true6, %cont, %land.lhs.true, %if.then
  %retval.0 = phi i8** [ %call40, %if.then ], [ null, %land.lhs.true ], [ null, %cont ], [ null, %land.lhs.true6 ]
  ret i8** %retval.0
}

define void @unsetparam(i8* %s) nounwind {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %tmp14 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 2942, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  %5 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %6 = load %struct.hashtable** @realparamtab, align 4, !tbaa !0
  %cmp = icmp eq %struct.hashtable* %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont
  %call = call %struct.hashnode* @gethashnode2(%struct.hashtable* %5, i8* %s) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont
  %getnode = getelementptr inbounds %struct.hashtable* %5, i32 0, i32 9
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call1 = call %struct.hashnode* %7(%struct.hashtable* %5, i8* %s) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.hashnode* [ %call, %cond.true ], [ %call1, %cond.false ]
  %tobool = icmp eq %struct.hashnode* %cond, null
  br i1 %tobool, label %do.body, label %if.then

if.then:                                          ; preds = %cond.end
  %8 = bitcast %struct.hashnode* %cond to %struct.param*
  %call2 = call i32 @unsetparam_pm(%struct.param* %8, i32 0, i32 1)
  br label %do.body

do.body:                                          ; preds = %cond.end, %if.then
  %9 = load i32* @queueing_enabled, align 4, !tbaa !3
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 -1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %do.body
  %13 = sext i32 %9 to i64
  call void @__ioc_report_add_overflow(i32 2947, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %13, i64 -1, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %do.body, %ioc_bb3
  store i32 %11, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %11, 0
  br i1 %tobool5, label %while.cond.preheader, label %do.end16

while.cond.preheader:                             ; preds = %cont4
  %14 = load i32* @queue_front, align 4, !tbaa !3
  %15 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp818 = icmp eq i32 %14, %15
  br i1 %cmp818, label %do.end16, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont12
  %16 = phi i32 [ %23, %cont12 ], [ %14, %while.cond.preheader ]
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb9, label %cont12

ioc_bb9:                                          ; preds = %while.body
  %20 = sext i32 %16 to i64
  call void @__ioc_report_add_overflow(i32 2951, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %20, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb9, %while.body
  %rem = srem i32 %18, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %21 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %21
  %22 = load i32* %arrayidx13, align 4, !tbaa !3
  call void @zhandler(i32 %22) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp14, %struct.__sigset_t* byval align 4 %oset) nounwind
  %23 = load i32* @queue_front, align 4, !tbaa !3
  %24 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %23, %24
  br i1 %cmp8, label %do.end16, label %while.body

do.end16:                                         ; preds = %while.cond.preheader, %cont12, %cont4
  ret void
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @zhandler(i32)

declare void @zwarn(i8*, ...)

declare void @free(i8* nocapture) nounwind

define %struct.param* @sethparam(i8* %s, i8** %val) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %t = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp85 = alloca %struct.__sigset_t, align 4
  %oset100 = alloca %struct.__sigset_t, align 4
  %tmp111 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  store i8* %s, i8** %t, align 4, !tbaa !0
  %call = call i32 @isident(i8* %s)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %cond.false

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str40, i32 0, i32 0), i8* %s) nounwind
  call void @freearray(i8** %val) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

cond.false:                                       ; preds = %entry
  %call3 = call i8* @strchr(i8* %s, i32 91) nounwind
  %tobool4 = icmp eq i8* %call3, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %cond.false
  call void @freearray(i8** %val) nounwind
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([44 x i8]* @.str44, i32 0, i32 0)) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end6:                                          ; preds = %cond.false
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool7 = icmp eq i8 %0, 0
  br i1 %tobool7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end6
  %1 = load i32* @queueing_enabled, align 4, !tbaa !3
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end9
  %5 = sext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 2819, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end9, %ioc_bb
  store i32 %3, i32* @queueing_enabled, align 4, !tbaa !3
  %call14 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 64)
  %tobool15 = icmp eq %struct.value* %call14, null
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %cont
  %call21 = call %struct.param* @createparam(i8* %s, i32 16)
  br label %cont70

if.else:                                          ; preds = %cont
  %pm = getelementptr inbounds %struct.value* %call14, i32 0, i32 1
  %6 = load %struct.param** %pm, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %6, i32 0, i32 0, i32 2
  %7 = load i32* %flags, align 4, !tbaa !3
  %8 = and i32 %7, 4194320
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then57, label %if.end89

if.then57:                                        ; preds = %if.else
  call void @unsetparam(i8* %s)
  %call62 = call %struct.param* @createparam(i8* %s, i32 16)
  br label %cont70

cont70:                                           ; preds = %if.then57, %if.then16
  %call71 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 64)
  %tobool72 = icmp eq %struct.value* %call71, null
  br i1 %tobool72, label %do.body, label %if.end89

do.body:                                          ; preds = %cont70
  %10 = load i32* @queueing_enabled, align 4, !tbaa !3
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %do.body
  %14 = sext i32 %10 to i64
  call void @__ioc_report_add_overflow(i32 2831, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %14, i64 -1, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %do.body, %ioc_bb74
  store i32 %12, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool76 = icmp eq i32 %12, 0
  br i1 %tobool76, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %cont75
  %15 = load i32* @queue_front, align 4, !tbaa !3
  %16 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp127 = icmp eq i32 %15, %16
  br i1 %cmp127, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont83
  %17 = phi i32 [ %24, %cont83 ], [ %15, %while.cond.preheader ]
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb79, label %cont83

ioc_bb79:                                         ; preds = %while.body
  %21 = sext i32 %17 to i64
  call void @__ioc_report_add_overflow(i32 2835, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont83

cont83:                                           ; preds = %ioc_bb79, %while.body
  %rem = srem i32 %19, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %22 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %22
  %23 = load i32* %arrayidx84, align 4, !tbaa !3
  call void @zhandler(i32 %23) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp85, %struct.__sigset_t* byval align 4 %oset) nounwind
  %24 = load i32* @queue_front, align 4, !tbaa !3
  %25 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %24, %25
  br i1 %cmp, label %return, label %while.body

if.end89:                                         ; preds = %if.else, %cont70
  %v.1 = phi %struct.value* [ %call71, %cont70 ], [ %call14, %if.else ]
  call void @setarrvalue(%struct.value* %v.1, i8** %val)
  %26 = load i32* @queueing_enabled, align 4, !tbaa !3
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %if.end89
  %30 = sext i32 %26 to i64
  call void @__ioc_report_add_overflow(i32 2847, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %30, i64 -1, i8 13) nounwind
  br label %cont92

cont92:                                           ; preds = %if.end89, %ioc_bb91
  store i32 %28, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool93 = icmp eq i32 %28, 0
  br i1 %tobool93, label %while.cond96.preheader, label %do.end115

while.cond96.preheader:                           ; preds = %cont92
  %31 = load i32* @queue_front, align 4, !tbaa !3
  %32 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp97128 = icmp eq i32 %31, %32
  br i1 %cmp97128, label %do.end115, label %while.body98

while.body98:                                     ; preds = %while.cond96.preheader, %cont106
  %33 = phi i32 [ %40, %cont106 ], [ %31, %while.cond96.preheader ]
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb101, label %cont106

ioc_bb101:                                        ; preds = %while.body98
  %37 = sext i32 %33 to i64
  call void @__ioc_report_add_overflow(i32 2851, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %cont106

cont106:                                          ; preds = %ioc_bb101, %while.body98
  %rem107 = srem i32 %35, 128
  store i32 %rem107, i32* @queue_front, align 4, !tbaa !3
  %arrayidx108 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem107
  call void @signal_setmask(%struct.__sigset_t* sret %oset100, %struct.__sigset_t* byval align 4 %arrayidx108) nounwind
  %38 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx110 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %38
  %39 = load i32* %arrayidx110, align 4, !tbaa !3
  call void @zhandler(i32 %39) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp111, %struct.__sigset_t* byval align 4 %oset100) nounwind
  %40 = load i32* @queue_front, align 4, !tbaa !3
  %41 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp97 = icmp eq i32 %40, %41
  br i1 %cmp97, label %do.end115, label %while.body98

do.end115:                                        ; preds = %while.cond96.preheader, %cont106, %cont92
  %pm116 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %42 = load %struct.param** %pm116, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %while.cond.preheader, %cont83, %cont75, %if.end6, %do.end115, %if.then5, %if.then
  %retval.0 = phi %struct.param* [ null, %if.then5 ], [ %42, %do.end115 ], [ null, %if.then ], [ null, %if.end6 ], [ null, %cont75 ], [ null, %cont83 ], [ null, %while.cond.preheader ]
  ret %struct.param* %retval.0
}

define %struct.param* @setnparam(i8* %s, %struct.mnumber* nocapture byval align 4 %val) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %t = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp91 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  store i8* %s, i8** %t, align 4, !tbaa !0
  %call = call i32 @isident(i8* %s)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str40, i32 0, i32 0), i8* %s) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load i32* @queueing_enabled, align 4, !tbaa !3
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end3
  %5 = sext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 2879, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end3, %ioc_bb
  store i32 %3, i32* @queueing_enabled, align 4, !tbaa !3
  %call4 = call i8* @strchr(i8* %s, i32 91) nounwind
  %call.i = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s.addr, i32 1, i32 0) nounwind
  %tobool6 = icmp eq %struct.value* %call.i, null
  br i1 %tobool6, label %if.then40, label %land.lhs.true

land.lhs.true:                                    ; preds = %cont
  %pm7 = getelementptr inbounds %struct.value* %call.i, i32 0, i32 1
  %6 = load %struct.param** %pm7, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %6, i32 0, i32 0, i32 2
  %7 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %7, 17
  %tobool16 = icmp eq i32 %and, 0
  br i1 %tobool16, label %if.end79, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %and29 = and i32 %7, 4259840
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !1
  %notlhs = icmp eq i32 %and29, 0
  %notrhs = icmp eq i8 %8, 0
  %or.cond.not = and i1 %notrhs, %notlhs
  %tobool34 = icmp eq i8* %call4, null
  %or.cond107 = and i1 %or.cond.not, %tobool34
  br i1 %or.cond107, label %if.then35, label %if.end79

if.then35:                                        ; preds = %land.lhs.true17
  %call37 = call i32 @unsetparam_pm(%struct.param* %6, i32 0, i32 1)
  store i8* %s, i8** %s.addr, align 4, !tbaa !0
  br label %if.then40

if.then40:                                        ; preds = %cont, %if.then35
  %9 = load i8** %s.addr, align 4, !tbaa !0
  %call41 = call i8* @strchr(i8* %9, i32 91) nounwind
  %tobool42 = icmp ne i8* %call41, null
  br i1 %tobool42, label %if.end46.thread, label %cond.false

if.end46.thread:                                  ; preds = %if.then40
  store i8 0, i8* %call41, align 1, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then40
  %type = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 1
  %10 = load i32* %type, align 4, !tbaa !3
  %and52 = and i32 %10, 1
  %tobool53 = icmp ne i32 %and52, 0
  %cond = select i1 %tobool53, i32 2, i32 8
  br label %cond.end

cond.end:                                         ; preds = %if.end46.thread, %cond.false
  %cond62 = phi i32 [ %cond, %cond.false ], [ 1, %if.end46.thread ]
  %call63 = call %struct.param* @createparam(i8* %s, i32 %cond62)
  %tobool64 = icmp eq %struct.param* %call63, null
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %cond.end
  %11 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %11, i32 0, i32 9
  %12 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call66 = call %struct.hashnode* %12(%struct.hashtable* %11, i8* %s) nounwind
  %13 = bitcast %struct.hashnode* %call66 to %struct.param*
  br label %if.end67

if.end67:                                         ; preds = %cond.end, %if.then65
  %pm.0 = phi %struct.param* [ %call63, %cond.end ], [ %13, %if.then65 ]
  br i1 %tobool42, label %cont71, label %if.else

cont71:                                           ; preds = %if.end67
  store i8 91, i8* %call41, align 1, !tbaa !1
  br label %if.end77

if.else:                                          ; preds = %if.end67
  %type72 = getelementptr inbounds %struct.mnumber* %val, i32 0, i32 1
  %14 = load i32* %type72, align 4, !tbaa !3
  %and73 = and i32 %14, 1
  %tobool74 = icmp eq i32 %and73, 0
  br i1 %tobool74, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.else
  %15 = load i32* @outputradix, align 4, !tbaa !3
  %base = getelementptr inbounds %struct.param* %pm.0, i32 0, i32 3
  store i32 %15, i32* %base, align 4, !tbaa !3
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then75, %cont71
  %call.i108 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %t, i32 1, i32 0) nounwind
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true17, %land.lhs.true, %if.end77
  %v.1 = phi %struct.value* [ %call.i108, %if.end77 ], [ %call.i, %land.lhs.true ], [ %call.i, %land.lhs.true17 ]
  call void @setnumvalue(%struct.value* %v.1, %struct.mnumber* byval align 4 %val)
  %16 = load i32* @queueing_enabled, align 4, !tbaa !3
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 -1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb80, label %cont81

ioc_bb80:                                         ; preds = %if.end79
  %20 = sext i32 %16 to i64
  call void @__ioc_report_add_overflow(i32 2913, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %20, i64 -1, i8 13) nounwind
  br label %cont81

cont81:                                           ; preds = %if.end79, %ioc_bb80
  store i32 %18, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool82 = icmp eq i32 %18, 0
  br i1 %tobool82, label %while.cond.preheader, label %do.end93

while.cond.preheader:                             ; preds = %cont81
  %21 = load i32* @queue_front, align 4, !tbaa !3
  %22 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp112 = icmp eq i32 %21, %22
  br i1 %cmp112, label %do.end93, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont89
  %23 = phi i32 [ %30, %cont89 ], [ %21, %while.cond.preheader ]
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb85, label %cont89

ioc_bb85:                                         ; preds = %while.body
  %27 = sext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 2917, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %27, i64 1, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %ioc_bb85, %while.body
  %rem = srem i32 %25, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %28 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx90 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %28
  %29 = load i32* %arrayidx90, align 4, !tbaa !3
  call void @zhandler(i32 %29) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp91, %struct.__sigset_t* byval align 4 %oset) nounwind
  %30 = load i32* @queue_front, align 4, !tbaa !3
  %31 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %30, %31
  br i1 %cmp, label %do.end93, label %while.body

do.end93:                                         ; preds = %while.cond.preheader, %cont89, %cont81
  %pm94 = getelementptr inbounds %struct.value* %v.1, i32 0, i32 1
  %32 = load %struct.param** %pm94, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %do.end93, %if.then
  %retval.0 = phi %struct.param* [ %32, %do.end93 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct.param* %retval.0
}

define i32 @unsetparam_pm(%struct.param* %pm, i32 %altflag, i32 %exp) nounwind {
entry:
  %node = getelementptr inbounds %struct.param* %pm, i32 0, i32 0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 1024
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %level = getelementptr inbounds %struct.param* %pm, i32 0, i32 8
  %1 = load i32* %level, align 4, !tbaa !3
  %2 = load i32* @locallevel, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %3 = load i8** %nam, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str35, i32 0, i32 0), i8* %3) nounwind
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %and10 = and i32 %0, 16777216
  %tobool11 = icmp eq i32 %and10, 0
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool13 = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool11, %tobool13
  br i1 %or.cond, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %nam16 = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %5 = load i8** %nam16, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str31, i32 0, i32 0), i8* %5) nounwind
  br label %return

if.end17:                                         ; preds = %if.end
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %6 = load i8** %ename, align 4, !tbaa !0
  %tobool18 = icmp ne i8* %6, null
  %tobool20 = icmp eq i32 %altflag, 0
  %or.cond195 = and i1 %tobool18, %tobool20
  br i1 %or.cond195, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %call = tail call i8* @ztrdup(i8* %6) nounwind
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.then21
  %7 = phi i32 [ %.pre, %if.then21 ], [ %0, %if.end17 ]
  %altremove.0 = phi i8* [ %call, %if.then21 ], [ null, %if.end17 ]
  %and30 = and i32 %7, 33554432
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end23
  %s = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  %8 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %unsetfn = getelementptr inbounds %struct.gsu_scalar* %8, i32 0, i32 2
  %9 = load void (%struct.param*, i32)** %unsetfn, align 4, !tbaa !0
  tail call void %9(%struct.param* %pm, i32 %exp) nounwind
  br label %if.end33

if.end33:                                         ; preds = %if.end23, %if.then32
  %env = getelementptr inbounds %struct.param* %pm, i32 0, i32 5
  %10 = load i8** %env, align 4, !tbaa !0
  %tobool34 = icmp eq i8* %10, null
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end33
  %nam.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %11 = load i8** %nam.i, align 4, !tbaa !0
  %call.i = tail call i32 @unsetenv(i8* %11) nounwind
  %12 = load i8** %env, align 4, !tbaa !0
  tail call void @zsfree(i8* %12) nounwind
  store i8* null, i8** %env, align 4, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.then35
  %tobool37 = icmp eq i8* %altremove.0, null
  br i1 %tobool37, label %if.end57, label %if.then38

if.then38:                                        ; preds = %if.end36
  %13 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 9
  %14 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call39 = tail call %struct.hashnode* %14(%struct.hashtable* %13, i8* %altremove.0) nounwind
  %tobool40200 = icmp eq %struct.hashnode* %call39, null
  br i1 %tobool40200, label %if.end56, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.then38
  %15 = bitcast %struct.hashnode* %call39 to %struct.param*
  %level42 = getelementptr inbounds %struct.param* %pm, i32 0, i32 8
  %16 = load i32* %level42, align 4, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %altpm.0202 = phi %struct.param* [ %15, %land.rhs.lr.ph ], [ %18, %while.body ]
  %oldpm.0201 = phi %struct.param* [ null, %land.rhs.lr.ph ], [ %altpm.0202, %while.body ]
  %level41 = getelementptr inbounds %struct.param* %altpm.0202, i32 0, i32 8
  %17 = load i32* %level41, align 4, !tbaa !3
  %cmp43 = icmp sgt i32 %17, %16
  br i1 %cmp43, label %while.body, label %if.then46

while.body:                                       ; preds = %land.rhs
  %old = getelementptr inbounds %struct.param* %altpm.0202, i32 0, i32 7
  %18 = load %struct.param** %old, align 4, !tbaa !0
  %tobool40 = icmp eq %struct.param* %18, null
  br i1 %tobool40, label %if.end56, label %land.rhs

if.then46:                                        ; preds = %land.rhs
  %tobool47 = icmp ne %struct.param* %oldpm.0201, null
  %tobool50 = icmp eq i32 %17, 0
  %or.cond197 = and i1 %tobool47, %tobool50
  br i1 %or.cond197, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then46
  %old52 = getelementptr inbounds %struct.param* %oldpm.0201, i32 0, i32 7
  store %struct.param* null, %struct.param** %old52, align 4, !tbaa !0
  store i32 1, i32* %level41, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.then51
  %call55 = tail call i32 @unsetparam_pm(%struct.param* %altpm.0202, i32 1, i32 %exp)
  br label %if.end56

if.end56:                                         ; preds = %if.then38, %while.body, %if.end54
  tail call void @zsfree(i8* %altremove.0) nounwind
  br label %if.end57

if.end57:                                         ; preds = %if.end36, %if.end56
  %level58 = getelementptr inbounds %struct.param* %pm, i32 0, i32 8
  %19 = load i32* %level58, align 4, !tbaa !3
  %tobool59 = icmp eq i32 %19, 0
  %20 = load i32* @locallevel, align 4, !tbaa !3
  %cmp62 = icmp slt i32 %20, %19
  %or.cond196 = or i1 %tobool59, %cmp62
  br i1 %or.cond196, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end57
  %21 = load i32* %flags, align 4, !tbaa !3
  %and74 = and i32 %21, 71303168
  %cmp79 = icmp eq i32 %and74, 4194304
  br i1 %cmp79, label %return, label %if.end82

if.end82:                                         ; preds = %lor.lhs.false
  %22 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %removenode = getelementptr inbounds %struct.hashtable* %22, i32 0, i32 11
  %23 = load %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !0
  %nam84 = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %24 = load i8** %nam84, align 4, !tbaa !0
  %call85 = tail call %struct.hashnode* %23(%struct.hashtable* %22, i8* %24) nounwind
  %old86 = getelementptr inbounds %struct.param* %pm, i32 0, i32 7
  %25 = load %struct.param** %old86, align 4, !tbaa !0
  %tobool87 = icmp eq %struct.param* %25, null
  br i1 %tobool87, label %if.end154, label %if.then88

if.then88:                                        ; preds = %if.end82
  %26 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %addnode = getelementptr inbounds %struct.hashtable* %26, i32 0, i32 8
  %27 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %nam91 = getelementptr inbounds %struct.param* %25, i32 0, i32 0, i32 1
  %28 = load i8** %nam91, align 4, !tbaa !0
  %29 = bitcast %struct.param* %25 to i8*
  tail call void %27(%struct.hashtable* %26, i8* %28, i8* %29) nounwind
  %flags93 = getelementptr inbounds %struct.param* %25, i32 0, i32 0, i32 2
  %30 = load i32* %flags93, align 4, !tbaa !3
  %and114 = and i32 %30, 31
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %land.lhs.true117, label %if.end143

land.lhs.true117:                                 ; preds = %if.then88
  %31 = load i32* %flags, align 4, !tbaa !3
  %and124 = and i32 %31, 536870912
  %tobool125 = icmp eq i32 %and124, 0
  br i1 %tobool125, label %land.lhs.true126, label %if.end143

land.lhs.true126:                                 ; preds = %land.lhs.true117
  %and133 = and i32 %30, 1073741824
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.end143, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %land.lhs.true126
  %s137 = getelementptr inbounds %struct.param* %25, i32 0, i32 2, i32 0
  %32 = load %struct.gsu_scalar** %s137, align 4, !tbaa !0
  %cmp138 = icmp eq %struct.gsu_scalar* %32, bitcast ({ i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }* @stdscalar_gsu to %struct.gsu_scalar*)
  br i1 %cmp138, label %if.then140, label %if.end143

if.then140:                                       ; preds = %land.lhs.true135
  %33 = load i8** %nam91, align 4, !tbaa !0
  %u = getelementptr inbounds %struct.param* %25, i32 0, i32 1
  %str = bitcast %union.anon* %u to i8**
  %34 = load i8** %str, align 4, !tbaa !0
  tail call void @adduserdir(i8* %33, i8* %34, i32 0, i32 0) nounwind
  %.pre207 = load i32* %flags93, align 4, !tbaa !3
  br label %if.end143

if.end143:                                        ; preds = %land.lhs.true126, %land.lhs.true117, %if.then140, %land.lhs.true135, %if.then88
  %35 = phi i32 [ %30, %land.lhs.true126 ], [ %30, %land.lhs.true117 ], [ %.pre207, %if.then140 ], [ %30, %land.lhs.true135 ], [ %30, %if.then88 ]
  %and150 = and i32 %35, 4096
  %tobool151 = icmp eq i32 %and150, 0
  br i1 %tobool151, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.end143
  tail call void @export_param(%struct.param* %25)
  br label %if.end154

if.end154:                                        ; preds = %if.end143, %if.end82, %if.then152
  %36 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %freenode = getelementptr inbounds %struct.hashtable* %36, i32 0, i32 14
  %37 = load void (%struct.hashnode*)** %freenode, align 4, !tbaa !0
  tail call void %37(%struct.hashnode* %node) nounwind
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end57, %if.end154, %if.then14, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then14 ], [ 0, %if.end154 ], [ 0, %if.end57 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.0
}

declare void @adduserdir(i8*, i8*, i32, i32)

define void @uniqarray(i8** %x) nounwind {
entry:
  %tobool = icmp eq i8** %x, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8** %x, align 4, !tbaa !0
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* @zheapptr(i8* %0) nounwind
  %lnot = icmp eq i8* %call, null
  %lnot.ext = zext i1 %lnot to i32
  tail call fastcc void @arrayuniq(i8** %x, i32 %lnot.ext)
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.end
  ret void
}

define void @arrfixenv(i8* %s, i8** %t) nounwind {
entry:
  %0 = load i8*** @path, align 4, !tbaa !0
  %cmp = icmp eq i8** %0, %t
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !0
  %emptytable = getelementptr inbounds %struct.hashtable* %1, i32 0, i32 5
  %2 = load void (%struct.hashtable*)** %emptytable, align 4, !tbaa !0
  tail call void %2(%struct.hashtable* %1) nounwind
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %3, i32 0, i32 9
  %4 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %call = tail call %struct.hashnode* %4(%struct.hashtable* %3, i8* %s) nounwind
  %5 = bitcast %struct.hashnode* %call to %struct.param*
  %flags = getelementptr inbounds %struct.hashnode* %call, i32 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %6, 536870912
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %7 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %tobool5 = icmp eq i8 %7, 0
  br i1 %tobool5, label %if.end13, label %cont10

cont10:                                           ; preds = %if.end4
  %or = or i32 %6, 4096
  store i32 %or, i32* %flags, align 4, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.end4, %cont10
  %8 = phi i32 [ %6, %if.end4 ], [ %or, %cont10 ]
  %and20 = and i32 %8, 4096
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %return, label %if.end23

if.end23:                                         ; preds = %if.end13
  %and30 = and i32 %8, 65536
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end23
  %u = getelementptr inbounds %struct.hashnode* %call, i32 1
  %data = bitcast %struct.hashnode* %u to i8**
  %9 = load i8** %data, align 4, !tbaa !0
  %joinchar33 = getelementptr inbounds i8* %9, i32 4
  %10 = bitcast i8* %joinchar33 to i32*
  %11 = load i32* %10, align 4, !tbaa !3
  %12 = icmp ult i32 %11, 256
  br i1 %12, label %cont35, label %ioc_bb34

ioc_bb34:                                         ; preds = %if.then32
  %13 = sext i32 %11 to i64
  tail call void @__ioc_report_conversion(i32 4143, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont35

cont35:                                           ; preds = %ioc_bb34, %if.then32
  %conv36 = and i32 %11, 255
  br label %if.end37

if.end37:                                         ; preds = %if.end23, %cont35
  %joinchar.0 = phi i32 [ %conv36, %cont35 ], [ 58, %if.end23 ]
  %tobool38 = icmp eq i8** %t, null
  br i1 %tobool38, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end37
  %call39 = tail call i8* @zjoin(i8** %t, i32 %joinchar.0, i32 1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.end37, %cond.true
  %cond = phi i8* [ %call39, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %if.end37 ]
  tail call void @addenv(%struct.param* %5, i8* %cond)
  br label %return

return:                                           ; preds = %if.end13, %if.end, %cond.end
  ret void
}

define void @nullintsetfn(%struct.param* nocapture %pm, i64 %x) nounwind readnone {
entry:
  ret void
}

define void @zlevarsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %valptr = bitcast %union.anon* %u to i64**
  %0 = load i64** %valptr, align 4, !tbaa !0
  store i64 %x, i64* %0, align 4, !tbaa !4
  %cmp = icmp eq i64* %0, @zterm_lines
  %cmp1 = icmp eq i64* %0, @zterm_columns
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i1 %cmp1 to i32
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv, i32 2)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  %4 = zext i1 %cmp1 to i64
  tail call void @__ioc_report_add_overflow(i32 3264, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 2, i64 %4, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  tail call void @adjustwinsize(i32 %2) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %cont
  ret void
}

declare void @adjustwinsize(i32)

declare i8** @mkarray(i8*)

define i8* @colonarrgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8***
  %2 = load i8*** %1, align 4, !tbaa !0
  %tobool = icmp eq i8** %2, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @zjoin(i8** %2, i32 58, i32 1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %entry ]
  ret i8* %cond
}

declare i8* @zjoin(i8**, i32, i32)

define void @colonarrsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %1 = bitcast i8* %0 to i8***
  %2 = load i8*** %1, align 4, !tbaa !0
  %tobool = icmp eq i8** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @freearray(i8** %2) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq i8* %x, null
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %3, 8192
  %call = tail call i8** @colonsplit(i8* %x, i32 %and) nounwind
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = tail call i8** @mkarray(i8* null) nounwind
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i8** [ %call5, %if.else ], [ %call, %if.then2 ]
  store i8** %storemerge, i8*** %1, align 4
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %4 = load i8** %ename, align 4, !tbaa !0
  %tobool7 = icmp eq i8* %4, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %5 = load i8** %nam, align 4, !tbaa !0
  tail call void @arrfixenv(i8* %5, i8** %storemerge)
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.then8
  tail call void @zsfree(i8* %x) nounwind
  ret void
}

declare i8** @colonsplit(i8*, i32)

define i8* @tiedarrgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %arrptr = bitcast i8* %0 to i8****
  %1 = load i8**** %arrptr, align 4, !tbaa !0
  %2 = load i8*** %1, align 4, !tbaa !0
  %tobool = icmp eq i8** %2, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %joinchar = getelementptr inbounds i8* %0, i32 4
  %3 = bitcast i8* %joinchar to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  %5 = icmp ult i32 %4, 256
  br i1 %5, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %cond.true
  %6 = sext i32 %4 to i64
  tail call void @__ioc_report_conversion(i32 3357, i32 67, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %cond.true
  %conv2 = and i32 %4, 255
  %call = tail call i8* @zjoin(i8** %2, i32 %conv2, i32 1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cont
  %cond = phi i8* [ %call, %cont ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %entry ]
  ret i8* %cond
}

define void @tiedarrsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %sepbuf = alloca [3 x i8], align 1
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %0 = load i8** %data, align 4, !tbaa !0
  %arrptr = bitcast i8* %0 to i8****
  %1 = load i8**** %arrptr, align 4, !tbaa !0
  %2 = load i8*** %1, align 4, !tbaa !0
  %tobool = icmp eq i8** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @freearray(i8** %2) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool2 = icmp eq i8* %x, null
  br i1 %tobool2, label %if.else45, label %if.then3

if.then3:                                         ; preds = %if.end
  %joinchar = getelementptr inbounds i8* %0, i32 4
  %3 = bitcast i8* %joinchar to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  %5 = icmp ult i32 %4, 256
  br i1 %5, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then3
  %6 = sext i32 %4 to i64
  call void @__ioc_report_conversion(i32 3368, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then3
  %idxprom = and i32 %4, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16* %arrayidx, align 2, !tbaa !6
  %and = and i16 %7, 4096
  %tobool9 = icmp eq i16 %and, 0
  br i1 %tobool9, label %if.else, label %ioc_bb11

ioc_bb11:                                         ; preds = %cont
  call void @__ioc_report_conversion(i32 3369, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %arrayidx13 = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 0
  store i8 -125, i8* %arrayidx13, align 1, !tbaa !1
  %8 = load i32* %3, align 4, !tbaa !3
  %xor = xor i32 %8, 32
  %xor.off = add i32 %xor, 128
  %9 = icmp ult i32 %xor.off, 256
  br i1 %9, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %ioc_bb11
  %10 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 3370, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %ioc_bb11
  %conv19 = trunc i32 %xor to i8
  %arrayidx20 = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 1
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !1
  %arrayidx23 = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 2
  store i8 0, i8* %arrayidx23, align 1, !tbaa !1
  br label %if.end34

if.else:                                          ; preds = %cont
  %11 = load i32* %3, align 4, !tbaa !3
  %.off = add i32 %11, 128
  %12 = icmp ult i32 %.off, 256
  br i1 %12, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %if.else
  %13 = sext i32 %11 to i64
  call void @__ioc_report_conversion(i32 3374, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont28

cont28:                                           ; preds = %ioc_bb27, %if.else
  %conv29 = trunc i32 %11 to i8
  %arrayidx30 = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 0
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !1
  %arrayidx33 = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 1
  store i8 0, i8* %arrayidx33, align 1, !tbaa !1
  br label %if.end34

if.end34:                                         ; preds = %cont28, %cont18
  %arraydecay = getelementptr inbounds [3 x i8]* %sepbuf, i32 0, i32 0
  %call = call i8** @sepsplit(i8* %x, i8* %arraydecay, i32 0, i32 0) nounwind
  %14 = load i8**** %arrptr, align 4, !tbaa !0
  store i8** %call, i8*** %14, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %15 = load i32* %flags, align 4, !tbaa !3
  %and40 = and i32 %15, 8192
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end34
  %16 = load i8**** %arrptr, align 4, !tbaa !0
  %17 = load i8*** %16, align 4, !tbaa !0
  %tobool.i = icmp eq i8** %17, null
  br i1 %tobool.i, label %if.end44, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then42
  %18 = load i8** %17, align 4, !tbaa !0
  %tobool1.i = icmp eq i8* %18, null
  br i1 %tobool1.i, label %if.end44, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i8* @zheapptr(i8* %18) nounwind
  %lnot.i = icmp eq i8* %call.i, null
  %lnot.ext.i = zext i1 %lnot.i to i32
  call fastcc void @arrayuniq(i8** %17, i32 %lnot.ext.i) nounwind
  br label %if.end44

if.end44:                                         ; preds = %if.end.i, %lor.lhs.false.i, %if.then42, %if.end34
  call void @zsfree(i8* %x) nounwind
  br label %if.end47

if.else45:                                        ; preds = %if.end
  %19 = load i8**** %arrptr, align 4, !tbaa !0
  store i8** null, i8*** %19, align 4, !tbaa !0
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.end44
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %20 = load i8** %ename, align 4, !tbaa !0
  %tobool48 = icmp eq i8* %20, null
  br i1 %tobool48, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end47
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %21 = load i8** %nam, align 4, !tbaa !0
  %22 = load i8**** %arrptr, align 4, !tbaa !0
  %23 = load i8*** %22, align 4, !tbaa !0
  call void @arrfixenv(i8* %21, i8** %23)
  br label %if.end52

if.end52:                                         ; preds = %if.end47, %if.then49
  ret void
}

declare i8** @sepsplit(i8*, i8*, i32, i32)

define void @tiedarrunsetfn(%struct.param* %pm, i32 %exp) nounwind {
entry:
  %s = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  %0 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_scalar* %0, i32 0, i32 1
  %1 = load void (%struct.param*, i8*)** %setfn, align 4, !tbaa !0
  tail call void %1(%struct.param* %pm, i8* null) nounwind
  %u = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %data = bitcast %union.anon* %u to i8**
  %2 = load i8** %data, align 4, !tbaa !0
  tail call void @zfree(i8* %2, i32 8) nounwind
  store i8* null, i8** %data, align 4, !tbaa !0
  %ename = getelementptr inbounds %struct.param* %pm, i32 0, i32 6
  %3 = load i8** %ename, align 4, !tbaa !0
  tail call void @zsfree(i8* %3) nounwind
  store i8* null, i8** %ename, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %4 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %4, -33619969
  %or = or i32 %and, 33554432
  store i32 %or, i32* %flags, align 4, !tbaa !3
  ret void
}

define %struct.hashtable* @newuniqtable(i64 %size) nounwind {
entry:
  %size.off = add i64 %size, 2147483648
  %0 = icmp ult i64 %size.off, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3446, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %size, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %size to i32
  %call = tail call %struct.hashtable* @newhashtable(i32 %conv, i8* getelementptr inbounds ([10 x i8]* @.str46, i32 0, i32 0), void (%struct.hashtable*)* null) nounwind
  %hash = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4, !tbaa !0
  %emptytable = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !0
  %filltable = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !0
  %cmpnodes = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !0
  %addnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %getnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !0
  %getnode2 = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !0
  %removenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !0
  %disablenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !0
  %enablenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !0
  %freenode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 14
  store void (%struct.hashnode*)* @arrayuniq_freenode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !0
  %printnode = getelementptr inbounds %struct.hashtable* %call, i32 0, i32 15
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !0
  ret %struct.hashtable* %call
}

declare void @disablehashnode(%struct.hashnode*, i32)

declare void @enablehashnode(%struct.hashnode*, i32)

define internal void @arrayuniq_freenode(%struct.hashnode* nocapture %hn) nounwind readnone {
entry:
  ret void
}

define internal fastcc void @arrayuniq(i8** %x, i32 %freeok) nounwind {
entry:
  %call = tail call i32 @arrlen(i8** %x) nounwind
  %conv = sext i32 %call to i64
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %call, 10
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %0 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv, i64 1)
  %1 = extractvalue { i64, i1 } %0, 0
  %2 = extractvalue { i64, i1 } %0, 1
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %lor.lhs.false
  tail call void @__ioc_report_add_overflow(i32 3472, i32 57, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv, i64 1, i8 14) nounwind
  br label %cont

cont:                                             ; preds = %lor.lhs.false, %ioc_bb
  %size.off.i = add i64 %1, 2147483648
  %3 = icmp ult i64 %size.off.i, 4294967296
  br i1 %3, label %newuniqtable.exit, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %cont
  tail call void @__ioc_report_conversion(i32 3446, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %newuniqtable.exit

newuniqtable.exit:                                ; preds = %cont, %ioc_bb.i
  %conv.i = trunc i64 %1 to i32
  %call.i = tail call %struct.hashtable* @newhashtable(i32 %conv.i, i8* getelementptr inbounds ([10 x i8]* @.str46, i32 0, i32 0), void (%struct.hashtable*)* null) nounwind
  %hash.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash.i, align 4, !tbaa !0
  %emptytable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhashtable, void (%struct.hashtable*)** %emptytable.i, align 4, !tbaa !0
  %filltable.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable.i, align 4, !tbaa !0
  %cmpnodes.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes.i, align 4, !tbaa !0
  %addnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode.i, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %getnode2.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2.i, align 4, !tbaa !0
  %removenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode.i, align 4, !tbaa !0
  %disablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode.i, align 4, !tbaa !0
  %enablenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode.i, align 4, !tbaa !0
  %freenode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 14
  store void (%struct.hashnode*)* @arrayuniq_freenode, void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !0
  %printnode.i = getelementptr inbounds %struct.hashtable* %call.i, i32 0, i32 15
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %printnode.i, align 4, !tbaa !0
  %tobool = icmp eq %struct.hashtable* %call.i, null
  br i1 %tobool, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %newuniqtable.exit
  %4 = load i8** %x, align 4, !tbaa !0
  %tobool745 = icmp eq i8* %4, null
  br i1 %tobool745, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool20 = icmp eq i32 %freeok, 0
  br label %for.body

if.then5:                                         ; preds = %newuniqtable.exit, %if.end
  %incdec.ptr69.i = getelementptr inbounds i8** %x, i32 1
  %5 = load i8** %incdec.ptr69.i, align 4, !tbaa !0
  %tobool70.i = icmp eq i8* %5, null
  br i1 %tobool70.i, label %for.cond7.preheader.i, label %for.cond.preheader.lr.ph.i

for.cond.preheader.lr.ph.i:                       ; preds = %if.then5
  %tobool3.i = icmp eq i32 %freeok, 0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.cond.backedge.i, %for.cond.preheader.lr.ph.i
  %6 = phi i8* [ %5, %for.cond.preheader.lr.ph.i ], [ %9, %while.cond.backedge.i ]
  %incdec.ptr71.i = phi i8** [ %incdec.ptr69.i, %for.cond.preheader.lr.ph.i ], [ %incdec.ptr.i, %while.cond.backedge.i ]
  %cmp67.i = icmp ugt i8** %incdec.ptr71.i, %x
  br i1 %cmp67.i, label %for.body.i, label %while.cond.backedge.i

for.cond7.preheader.i:                            ; preds = %while.cond.backedge.i, %if.then5
  %7 = load i8** %x, align 4, !tbaa !0
  %cmp862.i = icmp eq i8* %7, null
  br i1 %cmp862.i, label %while.cond29.preheader.i, label %for.body9.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %t.068.i = phi i8** [ %incdec.ptr6.i, %for.inc.i ], [ %x, %for.cond.preheader.i ]
  %8 = load i8** %t.068.i, align 4, !tbaa !0
  %cmp1.i = icmp eq i8* %8, getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  br i1 %cmp1.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i44 = tail call i32 @strcmp(i8* %6, i8* %8) nounwind
  %tobool2.i = icmp eq i32 %call.i44, 0
  br i1 %tobool2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %tobool3.i, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  tail call void @zsfree(i8* %6) nounwind
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %incdec.ptr71.i, align 4, !tbaa !0
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %for.inc.i, %if.end.i, %for.cond.preheader.i
  %incdec.ptr.i = getelementptr inbounds i8** %incdec.ptr71.i, i32 1
  %9 = load i8** %incdec.ptr.i, align 4, !tbaa !0
  %tobool.i = icmp eq i8* %9, null
  br i1 %tobool.i, label %for.cond7.preheader.i, label %for.cond.preheader.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %incdec.ptr6.i = getelementptr inbounds i8** %t.068.i, i32 1
  %cmp.i = icmp ult i8** %incdec.ptr6.i, %incdec.ptr71.i
  br i1 %cmp.i, label %for.body.i, label %while.cond.backedge.i

while.cond29.preheader.i:                         ; preds = %for.inc26.i, %for.cond7.preheader.i
  %t.1.lcssa.i = phi i8** [ %x, %for.cond7.preheader.i ], [ %incdec.ptr27.i, %for.inc26.i ]
  %p.1.lcssa.i = phi i8** [ %x, %for.cond7.preheader.i ], [ %p.3.i, %for.inc26.i ]
  %incdec.ptr3059.i = getelementptr inbounds i8** %t.1.lcssa.i, i32 1
  %cmp3160.i = icmp ult i8** %incdec.ptr3059.i, %p.1.lcssa.i
  br i1 %cmp3160.i, label %while.body32.i, label %return

for.body9.i:                                      ; preds = %for.cond7.preheader.i, %for.inc26.i
  %10 = phi i8* [ %12, %for.inc26.i ], [ %7, %for.cond7.preheader.i ]
  %t.164.i = phi i8** [ %incdec.ptr27.i, %for.inc26.i ], [ %x, %for.cond7.preheader.i ]
  %p.163.i = phi i8** [ %p.3.i, %for.inc26.i ], [ %x, %for.cond7.preheader.i ]
  %cmp10.i = icmp eq i8* %10, getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  br i1 %cmp10.i, label %while.cond12.i, label %if.else.i

while.cond12.i:                                   ; preds = %while.cond12.i, %for.body9.i
  %p.2.i = phi i8** [ %p.163.i, %for.body9.i ], [ %incdec.ptr15.i, %while.cond12.i ]
  %11 = load i8** %p.2.i, align 4, !tbaa !0
  %cmp13.i = icmp eq i8* %11, getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %incdec.ptr15.i = getelementptr inbounds i8** %p.2.i, i32 1
  br i1 %cmp13.i, label %while.cond12.i, label %while.end16.i

while.end16.i:                                    ; preds = %while.cond12.i
  store i8* %11, i8** %t.164.i, align 4, !tbaa !0
  %cmp17.i = icmp eq i8* %11, null
  br i1 %cmp17.i, label %for.inc26.i, label %if.then18.i

if.then18.i:                                      ; preds = %while.end16.i
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %p.2.i, align 4, !tbaa !0
  br label %for.inc26.i

if.else.i:                                        ; preds = %for.body9.i
  %cmp21.i = icmp eq i8** %p.163.i, %t.164.i
  %incdec.ptr23.i = getelementptr inbounds i8** %p.163.i, i32 1
  %incdec.ptr23.p.1.i = select i1 %cmp21.i, i8** %incdec.ptr23.i, i8** %p.163.i
  br label %for.inc26.i

for.inc26.i:                                      ; preds = %while.end16.i, %if.else.i, %if.then18.i
  %p.3.i = phi i8** [ %incdec.ptr15.i, %if.then18.i ], [ %incdec.ptr23.p.1.i, %if.else.i ], [ %p.2.i, %while.end16.i ]
  %incdec.ptr27.i = getelementptr inbounds i8** %t.164.i, i32 1
  %12 = load i8** %incdec.ptr27.i, align 4, !tbaa !0
  %cmp8.i = icmp eq i8* %12, null
  br i1 %cmp8.i, label %while.cond29.preheader.i, label %for.body9.i

while.body32.i:                                   ; preds = %while.cond29.preheader.i, %while.body32.i
  %incdec.ptr3061.i = phi i8** [ %incdec.ptr30.i, %while.body32.i ], [ %incdec.ptr3059.i, %while.cond29.preheader.i ]
  store i8* null, i8** %incdec.ptr3061.i, align 4, !tbaa !0
  %incdec.ptr30.i = getelementptr inbounds i8** %incdec.ptr3061.i, i32 1
  %cmp31.i = icmp ult i8** %incdec.ptr30.i, %p.1.lcssa.i
  br i1 %cmp31.i, label %while.body32.i, label %return

for.body:                                         ; preds = %for.body.lr.ph, %if.end23
  %13 = phi i8* [ %4, %for.body.lr.ph ], [ %17, %if.end23 ]
  %it.047 = phi i8** [ %x, %for.body.lr.ph ], [ %incdec.ptr24, %if.end23 ]
  %write_it.046 = phi i8** [ %x, %for.body.lr.ph ], [ %write_it.1, %if.end23 ]
  %call8 = tail call %struct.hashnode* @gethashnode2(%struct.hashtable* %call.i, i8* %13) nounwind
  %tobool9 = icmp eq %struct.hashnode* %call8, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %call11 = tail call i8* @zhalloc(i32 12) nounwind
  %tobool12 = icmp eq i8* %call11, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str86, i32 0, i32 0)) nounwind
  br label %for.end

if.end14:                                         ; preds = %if.then10
  %14 = load i8** %it.047, align 4, !tbaa !0
  %call15 = tail call %struct.hashnode* @addhashnode2(%struct.hashtable* %call.i, i8* %14, i8* %call11) nounwind
  %15 = load i8** %it.047, align 4, !tbaa !0
  store i8* %15, i8** %write_it.046, align 4, !tbaa !0
  %cmp16 = icmp eq i8** %it.047, %write_it.046
  br i1 %cmp16, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  store i8* null, i8** %it.047, align 4, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then18
  %incdec.ptr = getelementptr inbounds i8** %write_it.046, i32 1
  br label %if.end23

if.else:                                          ; preds = %for.body
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.else
  %16 = load i8** %it.047, align 4, !tbaa !0
  tail call void @zsfree(i8* %16) nounwind
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  store i8* null, i8** %it.047, align 4, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end19
  %write_it.1 = phi i8** [ %write_it.046, %if.end22 ], [ %incdec.ptr, %if.end19 ]
  %incdec.ptr24 = getelementptr inbounds i8** %it.047, i32 1
  %17 = load i8** %incdec.ptr24, align 4, !tbaa !0
  %tobool7 = icmp eq i8* %17, null
  br i1 %tobool7, label %for.end, label %for.body

for.end:                                          ; preds = %for.cond.preheader, %if.end23, %if.then13
  tail call void @deletehashtable(%struct.hashtable* %call.i) nounwind
  br label %return

return:                                           ; preds = %while.body32.i, %while.cond29.preheader.i, %entry, %for.end
  ret void
}

declare i8* @zheapptr(i8*)

define void @zhuniqarray(i8** %x) nounwind {
entry:
  %tobool = icmp eq i8** %x, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8** %x, align 4, !tbaa !0
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @arrayuniq(i8** %x, i32 0)
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.end
  ret void
}

define i64 @poundgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %0 = load i8*** @pparams, align 4, !tbaa !0
  %call = tail call i32 @arrlen(i8** %0) nounwind
  %conv = sext i32 %call to i64
  ret i64 %conv
}

define i64 @randomgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i32 @rand() nounwind
  %and = and i32 %call, 32767
  %conv1 = zext i32 %and to i64
  ret i64 %conv1
}

declare i32 @rand() nounwind

define void @randomsetfn(%struct.param* nocapture %pm, i64 %v) nounwind {
entry:
  %0 = icmp ult i64 %v, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3535, i32 25, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %v, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %v to i32
  tail call void @srand(i32 %conv) nounwind
  ret void
}

declare void @srand(i32) nounwind

define i64 @intsecondsgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* %dummy_tz) nounwind
  %tv_sec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 0
  %0 = load i32* %tv_sec, align 4, !tbaa !7
  %1 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %1 to i64
  %6 = sext i32 %0 to i64
  call void @__ioc_report_sub_overflow(i32 3545, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %conv = sext i32 %3 to i64
  %tv_usec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 1
  %7 = load i32* %tv_usec, align 4, !tbaa !7
  %8 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 %8)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb1, label %cont5

ioc_bb1:                                          ; preds = %cont
  %12 = sext i32 %8 to i64
  %13 = sext i32 %7 to i64
  call void @__ioc_report_sub_overflow(i32 3545, i32 74, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb1, %cont
  %conv3 = sext i32 %10 to i64
  %div = sdiv i64 %conv3, 1000000
  %14 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv, i64 %div)
  %15 = extractvalue { i64, i1 } %14, 0
  %16 = extractvalue { i64, i1 } %14, 1
  br i1 %16, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  call void @__ioc_report_add_overflow(i32 3545, i32 50, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %conv, i64 %div, i8 14) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  ret i64 %15
}

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

define void @intsecondssetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* %dummy_tz) nounwind
  %tv_sec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 0
  %0 = load i32* %tv_sec, align 4, !tbaa !7
  %conv = sext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv, i64 %x)
  %2 = extractvalue { i64, i1 } %1, 0
  %3 = extractvalue { i64, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_sub_overflow(i32 3556, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %conv, i64 %x, i8 14) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %.off = add i64 %2, 2147483648
  %4 = icmp ult i64 %.off, 4294967296
  br i1 %4, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  call void @__ioc_report_conversion(i32 3557, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %conv3 = trunc i64 %2 to i32
  store i32 %conv3, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %conv4 = sext i32 %conv3 to i64
  %cmp = icmp eq i64 %conv4, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %cont2
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([32 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %if.end

if.end:                                           ; preds = %cont2, %if.then
  store i32 0, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  ret void
}

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

define double @floatsecondsgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* %dummy_tz) nounwind
  %tv_sec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 0
  %0 = load i32* %tv_sec, align 4, !tbaa !7
  %1 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %1 to i64
  %6 = sext i32 %0 to i64
  call void @__ioc_report_sub_overflow(i32 3569, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %conv = sitofp i32 %3 to double
  %tv_usec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 1
  %7 = load i32* %tv_usec, align 4, !tbaa !7
  %8 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 %8)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %12 = sext i32 %8 to i64
  %13 = sext i32 %7 to i64
  call void @__ioc_report_sub_overflow(i32 3569, i32 76, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %conv3 = sitofp i32 %10 to double
  %div = fdiv double %conv3, 1.000000e+06
  %add = fadd double %conv, %div
  ret double %add
}

declare void @llvm.trap() noreturn nounwind

define void @floatsecondssetfn(%struct.param* nocapture %pm, double %x) nounwind {
entry:
  %now = alloca %struct.timeval, align 4
  %dummy_tz = alloca %struct.timezone, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* %dummy_tz) nounwind
  %tv_sec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 0
  %0 = load i32* %tv_sec, align 4, !tbaa !7
  %conv = sext i32 %0 to i64
  %conv1 = fptosi double %x to i64
  %1 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv, i64 %conv1)
  %2 = extractvalue { i64, i1 } %1, 0
  %3 = extractvalue { i64, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_sub_overflow(i32 3578, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %conv, i64 %conv1, i8 14) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %.off = add i64 %2, 2147483648
  %4 = icmp ult i64 %.off, 4294967296
  br i1 %4, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %cont
  call void @__ioc_report_conversion(i32 3578, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %cont
  %conv4 = trunc i64 %2 to i32
  store i32 %conv4, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %tv_usec = getelementptr inbounds %struct.timeval* %now, i32 0, i32 1
  %5 = load i32* %tv_usec, align 4, !tbaa !7
  %conv5 = sext i32 %5 to i64
  %conv7 = sitofp i64 %conv1 to double
  %sub = fsub double %x, %conv7
  %mul = fmul double %sub, 1.000000e+06
  %conv8 = fptosi double %mul to i64
  %6 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv5, i64 %conv8)
  %7 = extractvalue { i64, i1 } %6, 0
  %8 = extractvalue { i64, i1 } %6, 1
  br i1 %8, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont3
  call void @__ioc_report_sub_overflow(i32 3579, i32 34, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %conv5, i64 %conv8, i8 14) nounwind
  br label %cont10

cont10:                                           ; preds = %cont3, %ioc_bb9
  %.off18 = add i64 %7, 2147483648
  %9 = icmp ult i64 %.off18, 4294967296
  br i1 %9, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont10
  call void @__ioc_report_conversion(i32 3579, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %cont10
  %conv15 = trunc i64 %7 to i32
  store i32 %conv15, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  ret void
}

define double @getrawseconds() nounwind readonly {
entry:
  %0 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %conv = sitofp i32 %0 to double
  %1 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv1, 1.000000e+06
  %add = fadd double %conv, %div
  ret double %add
}

define void @setrawseconds(double %x) nounwind {
entry:
  %conv = fptosi double %x to i64
  %conv.off = add i64 %conv, 2147483648
  %0 = icmp ult i64 %conv.off, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3591, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %conv, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv1 = trunc i64 %conv to i32
  store i32 %conv1, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %conv3 = sitofp i64 %conv to double
  %sub = fsub double %x, %conv3
  %mul = fmul double %sub, 1.000000e+06
  %conv4 = fptosi double %mul to i64
  %conv4.off = add i64 %conv4, 2147483648
  %1 = icmp ult i64 %conv4.off, 4294967296
  br i1 %1, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cont
  tail call void @__ioc_report_conversion(i32 3592, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %conv4, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %cont
  %conv9 = trunc i64 %conv4 to i32
  store i32 %conv9, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  ret void
}

define i32 @setsecondstype(%struct.param* nocapture %pm, i32 %on, i32 %off) nounwind {
entry:
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %or = or i32 %0, %on
  %neg = xor i32 %off, -1
  %and = and i32 %or, %neg
  %and19 = and i32 %and, 31
  switch i32 %and19, label %return [
    i32 4, label %if.then
    i32 8, label %if.then
    i32 2, label %if.then34
  ]

if.then:                                          ; preds = %entry, %entry
  %1 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_float* @floatseconds_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %1, align 4, !tbaa !0
  br label %if.end37

if.then34:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.param* %pm, i32 0, i32 2, i32 0
  store %struct.gsu_scalar* bitcast (%struct.gsu_integer* @intseconds_gsu to %struct.gsu_scalar*), %struct.gsu_scalar** %2, align 4, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then
  store i32 %and, i32* %flags, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ 1, %entry ]
  ret i32 %retval.0
}

define i8* @usernamegetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i8* @get_username() nounwind
  ret i8* %call
}

declare i8* @get_username()

define void @usernamesetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %tobool = icmp eq i8* %x, null
  br i1 %tobool, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.passwd* @getpwnam(i8* %x) nounwind
  %tobool1 = icmp eq %struct.passwd* %call, null
  br i1 %tobool1, label %if.end18, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %pw_uid = getelementptr inbounds %struct.passwd* %call, i32 0, i32 2
  %0 = load i32* %pw_uid, align 4, !tbaa !3
  %1 = load i32* @cached_uid, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.end18, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %pw_gid = getelementptr inbounds %struct.passwd* %call, i32 0, i32 3
  %2 = load i32* %pw_gid, align 4, !tbaa !3
  %call3 = tail call i32 @initgroups(i8* %x, i32 %2) nounwind
  %3 = load i32* %pw_gid, align 4, !tbaa !3
  %call5 = tail call i32 @setgid(i32 %3) nounwind
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %call8 = tail call i32* @__errno_location() nounwind readnone
  %4 = load i32* %call8, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([30 x i8]* @.str48, i32 0, i32 0), i32 %4) nounwind
  br label %if.end18

if.else:                                          ; preds = %if.then
  %5 = load i32* %pw_uid, align 4, !tbaa !3
  %call10 = tail call i32 @setuid(i32 %5) nounwind
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else
  %call13 = tail call i32* @__errno_location() nounwind readnone
  %6 = load i32* %call13, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([29 x i8]* @.str49, i32 0, i32 0), i32 %6) nounwind
  br label %if.end18

if.else14:                                        ; preds = %if.else
  %7 = load i8** @cached_username, align 4, !tbaa !0
  tail call void @zsfree(i8* %7) nounwind
  %pw_name = getelementptr inbounds %struct.passwd* %call, i32 0, i32 0
  %8 = load i8** %pw_name, align 4, !tbaa !0
  %call15 = tail call i8* @ztrdup(i8* %8) nounwind
  store i8* %call15, i8** @cached_username, align 4, !tbaa !0
  %9 = load i32* %pw_uid, align 4, !tbaa !3
  store i32 %9, i32* @cached_uid, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true2, %land.lhs.true, %entry, %if.then7, %if.else14, %if.then12
  tail call void @zsfree(i8* %x) nounwind
  ret void
}

declare %struct.passwd* @getpwnam(i8* nocapture) nounwind

declare i32 @initgroups(i8*, i32)

declare i32 @setgid(i32) nounwind

declare i32* @__errno_location() nounwind readnone

declare i32 @setuid(i32) nounwind

define i64 @uidgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i32 @getuid() nounwind
  %conv = zext i32 %call to i64
  ret i64 %conv
}

declare i32 @getuid() nounwind

define void @uidsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %0 = icmp ult i64 %x, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3656, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %x, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %x to i32
  %call = tail call i32 @setuid(i32 %conv) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cont
  %call1 = tail call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call1, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([29 x i8]* @.str49, i32 0, i32 0), i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %cont, %if.then
  ret void
}

define i64 @euidgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i32 @geteuid() nounwind
  %conv = zext i32 %call to i64
  ret i64 %conv
}

declare i32 @geteuid() nounwind

define void @euidsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %0 = icmp ult i64 %x, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3673, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %x, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %x to i32
  %call = tail call i32 @seteuid(i32 %conv) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cont
  %call1 = tail call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call1, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([39 x i8]* @.str50, i32 0, i32 0), i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %cont, %if.then
  ret void
}

declare i32 @seteuid(i32) nounwind

define i64 @gidgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i32 @getgid() nounwind
  %conv = zext i32 %call to i64
  ret i64 %conv
}

declare i32 @getgid() nounwind

define void @gidsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %0 = icmp ult i64 %x, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3690, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %x, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %x to i32
  %call = tail call i32 @setgid(i32 %conv) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cont
  %call1 = tail call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call1, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([30 x i8]* @.str48, i32 0, i32 0), i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %cont, %if.then
  ret void
}

define i64 @egidgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %call = tail call i32 @getegid() nounwind
  %conv = zext i32 %call to i64
  ret i64 %conv
}

declare i32 @getegid() nounwind

define void @egidsetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %0 = icmp ult i64 %x, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3707, i32 24, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %x, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %x to i32
  %call = tail call i32 @setegid(i32 %conv) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cont
  %call1 = tail call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call1, align 4, !tbaa !3
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([40 x i8]* @.str51, i32 0, i32 0), i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %cont, %if.then
  ret void
}

declare i32 @setegid(i32) nounwind

define i64 @ttyidlegetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %ttystat = alloca %struct.stat, align 4
  %0 = load i32* @SHTTY, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.stat* %ttystat to %struct.stat64*
  %call.i = call i32 @__fxstat64(i32 3, i32 %0, %struct.stat64* %1) nounwind
  %tobool = icmp eq i32 %call.i, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @time(i32* null) nounwind
  %tv_sec = getelementptr inbounds %struct.stat* %ttystat, i32 0, i32 12, i32 0
  %2 = load i32* %tv_sec, align 4, !tbaa !7
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call3, i32 %2)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.end
  %6 = sext i32 %2 to i64
  %7 = sext i32 %call3 to i64
  call void @__ioc_report_sub_overflow(i32 3718, i32 29, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 %7, i64 %6, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %if.end, %ioc_bb4
  %conv6 = sext i32 %4 to i64
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %cont5
  %retval.0 = phi i64 [ %conv6, %cont5 ], [ -1, %entry ], [ -1, %lor.lhs.false ]
  ret i64 %retval.0
}

declare i32 @time(i32*) nounwind

define i8* @ifsgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i8** @ifs, align 4, !tbaa !0
  ret i8* %0
}

define void @ifssetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %0 = load i8** @ifs, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** @ifs, align 4, !tbaa !0
  tail call void @inittyptab() nounwind
  ret void
}

declare void @inittyptab()

define void @lc_allsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %s.addr.i = alloca i8*, align 4
  %vbuf.i = alloca %struct.value, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp16 = alloca %struct.__sigset_t, align 4
  %u.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str.i = bitcast %union.anon* %u.i to i8**
  %0 = load i8** %str.i, align 4, !tbaa !0
  call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** %str.i, align 4, !tbaa !0
  %flags.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags.i, align 4, !tbaa !3
  %and.i = and i32 %1, 536870912
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %land.lhs.true.i, label %strsetfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %and11.i = and i32 %1, 1073741824
  %tobool12.i = icmp eq i32 %and11.i, 0
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 10), align 1, !tbaa !1
  %tobool13.i = icmp eq i8 %2, 0
  %or.cond.i = and i1 %tobool12.i, %tobool13.i
  br i1 %or.cond.i, label %strsetfn.exit, label %cont17.i

cont17.i:                                         ; preds = %land.lhs.true.i
  %or.i = or i32 %1, 1073741824
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !3
  %nam.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %3 = load i8** %nam.i, align 4, !tbaa !0
  call void @adduserdir(i8* %3, i8* %x, i32 0, i32 0) nounwind
  br label %strsetfn.exit

strsetfn.exit:                                    ; preds = %entry, %land.lhs.true.i, %cont17.i
  %tobool = icmp eq i8* %x, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %strsetfn.exit
  %4 = load i8* %x, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %4, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %strsetfn.exit
  %5 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %5) nounwind
  %6 = bitcast %struct.value* %vbuf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) nounwind
  store i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i8** %s.addr.i, align 4, !tbaa !0
  %call.i.i = call %struct.value* @fetchvalue(%struct.value* %vbuf.i, i8** %s.addr.i, i32 0, i32 0) nounwind
  %tobool.i27 = icmp eq %struct.value* %call.i.i, null
  br i1 %tobool.i27, label %if.end20, label %getsparam.exit

getsparam.exit:                                   ; preds = %if.then
  %call1.i = call i8* @getstrvalue(%struct.value* %call.i.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %5) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %6) nounwind
  %tobool2 = icmp eq i8* %call1.i, null
  br i1 %tobool2, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %getsparam.exit
  %7 = load i8* %call1.i, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %7, 0
  br i1 %tobool3, label %if.end20, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i32* @queueing_enabled, align 4, !tbaa !3
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then4
  %12 = sext i32 %8 to i64
  call void @__ioc_report_add_overflow(i32 3808, i32 23, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %12, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then4, %ioc_bb
  store i32 %10, i32* @queueing_enabled, align 4, !tbaa !3
  call fastcc void @setlang(i8* %call1.i)
  %13 = load i32* @queueing_enabled, align 4, !tbaa !3
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 -1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont
  %17 = sext i32 %13 to i64
  call void @__ioc_report_add_overflow(i32 3812, i32 15, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %17, i64 -1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %cont, %ioc_bb5
  store i32 %15, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %15, 0
  br i1 %tobool7, label %while.cond.preheader, label %if.end20

while.cond.preheader:                             ; preds = %cont6
  %18 = load i32* @queue_front, align 4, !tbaa !3
  %19 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %18, %19
  br i1 %cmp29, label %if.end20, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont14
  %20 = phi i32 [ %27, %cont14 ], [ %18, %while.cond.preheader ]
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb11, label %cont14

ioc_bb11:                                         ; preds = %while.body
  %24 = sext i32 %20 to i64
  call void @__ioc_report_add_overflow(i32 3816, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb11, %while.body
  %rem = srem i32 %22, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %25 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %25
  %26 = load i32* %arrayidx15, align 4, !tbaa !3
  call void @zhandler(i32 %26) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp16, %struct.__sigset_t* byval align 4 %oset) nounwind
  %27 = load i32* @queue_front, align 4, !tbaa !3
  %28 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %27, %28
  br i1 %cmp, label %if.end20, label %while.body

if.else:                                          ; preds = %lor.lhs.false
  %call19 = call i8* @setlocale(i32 6, i8* %x) nounwind
  br label %if.end20

if.end20:                                         ; preds = %while.cond.preheader, %cont14, %if.then, %cont6, %land.lhs.true, %getsparam.exit, %if.else
  ret void
}

define internal fastcc void @setlang(i8* %x) nounwind {
entry:
  %s.addr.i34 = alloca i8*, align 4
  %vbuf.i35 = alloca %struct.value, align 4
  %s.addr.i = alloca i8*, align 4
  %vbuf.i = alloca %struct.value, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp25 = alloca %struct.__sigset_t, align 4
  %0 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %1 = bitcast %struct.value* %vbuf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1) nounwind
  store i8* getelementptr inbounds ([7 x i8]* @.str53, i32 0, i32 0), i8** %s.addr.i, align 4, !tbaa !0
  %call.i.i = call %struct.value* @fetchvalue(%struct.value* %vbuf.i, i8** %s.addr.i, i32 0, i32 0) nounwind
  %tobool.i = icmp eq %struct.value* %call.i.i, null
  br i1 %tobool.i, label %if.end, label %getsparam.exit

getsparam.exit:                                   ; preds = %entry
  %call1.i = call i8* @getstrvalue(%struct.value* %call.i.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %1) nounwind
  %tobool = icmp eq i8* %call1.i, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %getsparam.exit
  %2 = load i8* %call1.i, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %2, 0
  br i1 %tobool1, label %if.end, label %do.end27

if.end:                                           ; preds = %entry, %land.lhs.true, %getsparam.exit
  %tobool2 = icmp ne i8* %x, null
  %cond = select i1 %tobool2, i8* %x, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %call3 = call i8* @setlocale(i32 6, i8* %cond) nounwind
  %3 = load i32* @queueing_enabled, align 4, !tbaa !3
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %7 = sext i32 %3 to i64
  call void @__ioc_report_add_overflow(i32 3777, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  store i32 %5, i32* @queueing_enabled, align 4, !tbaa !3
  %8 = bitcast i8** %s.addr.i34 to i8*
  %9 = bitcast %struct.value* %vbuf.i35 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  store i8* getelementptr inbounds ([11 x i8]* @.str81, i32 0, i32 0), i8** %s.addr.i34, align 4, !tbaa !0
  %call.i.i36 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i35, i8** %s.addr.i34, i32 0, i32 0) nounwind
  %tobool.i37 = icmp eq %struct.value* %call.i.i36, null
  br i1 %tobool.i37, label %for.inc, label %getsparam.exit41

getsparam.exit41:                                 ; preds = %cont
  %call1.i38 = call i8* @getstrvalue(%struct.value* %call.i.i36) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  %tobool7 = icmp eq i8* %call1.i38, null
  br i1 %tobool7, label %for.inc, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %getsparam.exit41
  %10 = load i8* %call1.i38, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %10, 0
  br i1 %tobool10, label %for.inc, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %call12 = call i8* @setlocale(i32 3, i8* %call1.i38) nounwind
  br label %for.inc

for.inc:                                          ; preds = %cont, %land.lhs.true8, %getsparam.exit41, %if.then11
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  store i8* getelementptr inbounds ([9 x i8]* @.str82, i32 0, i32 0), i8** %s.addr.i34, align 4, !tbaa !0
  %call.i.i36.1 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i35, i8** %s.addr.i34, i32 0, i32 0) nounwind
  %tobool.i37.1 = icmp eq %struct.value* %call.i.i36.1, null
  br i1 %tobool.i37.1, label %for.inc.1, label %getsparam.exit41.1

ioc_bb14:                                         ; preds = %for.inc.4
  %11 = sext i32 %27 to i64
  call void @__ioc_report_add_overflow(i32 3783, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %for.inc.4, %ioc_bb14
  store i32 %29, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool16 = icmp eq i32 %29, 0
  br i1 %tobool16, label %while.cond.preheader, label %do.end27

while.cond.preheader:                             ; preds = %cont15
  %12 = load i32* @queue_front, align 4, !tbaa !3
  %13 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %12, %13
  br i1 %cmp44, label %do.end27, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont23
  %14 = phi i32 [ %21, %cont23 ], [ %12, %while.cond.preheader ]
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %14, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb20, label %cont23

ioc_bb20:                                         ; preds = %while.body
  %18 = sext i32 %14 to i64
  call void @__ioc_report_add_overflow(i32 3787, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb20, %while.body
  %rem = srem i32 %16, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %19 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %19
  %20 = load i32* %arrayidx24, align 4, !tbaa !3
  call void @zhandler(i32 %20) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp25, %struct.__sigset_t* byval align 4 %oset) nounwind
  %21 = load i32* @queue_front, align 4, !tbaa !3
  %22 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %21, %22
  br i1 %cmp, label %do.end27, label %while.body

do.end27:                                         ; preds = %while.cond.preheader, %cont23, %land.lhs.true, %cont15
  ret void

getsparam.exit41.1:                               ; preds = %for.inc
  %call1.i38.1 = call i8* @getstrvalue(%struct.value* %call.i.i36.1) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  %tobool7.1 = icmp eq i8* %call1.i38.1, null
  br i1 %tobool7.1, label %for.inc.1, label %land.lhs.true8.1

land.lhs.true8.1:                                 ; preds = %getsparam.exit41.1
  %23 = load i8* %call1.i38.1, align 1, !tbaa !1
  %tobool10.1 = icmp eq i8 %23, 0
  br i1 %tobool10.1, label %for.inc.1, label %if.then11.1

if.then11.1:                                      ; preds = %land.lhs.true8.1
  %call12.1 = call i8* @setlocale(i32 0, i8* %call1.i38.1) nounwind
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then11.1, %land.lhs.true8.1, %getsparam.exit41.1, %for.inc
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  store i8* getelementptr inbounds ([12 x i8]* @.str83, i32 0, i32 0), i8** %s.addr.i34, align 4, !tbaa !0
  %call.i.i36.2 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i35, i8** %s.addr.i34, i32 0, i32 0) nounwind
  %tobool.i37.2 = icmp eq %struct.value* %call.i.i36.2, null
  br i1 %tobool.i37.2, label %for.inc.2, label %getsparam.exit41.2

getsparam.exit41.2:                               ; preds = %for.inc.1
  %call1.i38.2 = call i8* @getstrvalue(%struct.value* %call.i.i36.2) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  %tobool7.2 = icmp eq i8* %call1.i38.2, null
  br i1 %tobool7.2, label %for.inc.2, label %land.lhs.true8.2

land.lhs.true8.2:                                 ; preds = %getsparam.exit41.2
  %24 = load i8* %call1.i38.2, align 1, !tbaa !1
  %tobool10.2 = icmp eq i8 %24, 0
  br i1 %tobool10.2, label %for.inc.2, label %if.then11.2

if.then11.2:                                      ; preds = %land.lhs.true8.2
  %call12.2 = call i8* @setlocale(i32 5, i8* %call1.i38.2) nounwind
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then11.2, %land.lhs.true8.2, %getsparam.exit41.2, %for.inc.1
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  store i8* getelementptr inbounds ([11 x i8]* @.str84, i32 0, i32 0), i8** %s.addr.i34, align 4, !tbaa !0
  %call.i.i36.3 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i35, i8** %s.addr.i34, i32 0, i32 0) nounwind
  %tobool.i37.3 = icmp eq %struct.value* %call.i.i36.3, null
  br i1 %tobool.i37.3, label %for.inc.3, label %getsparam.exit41.3

getsparam.exit41.3:                               ; preds = %for.inc.2
  %call1.i38.3 = call i8* @getstrvalue(%struct.value* %call.i.i36.3) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  %tobool7.3 = icmp eq i8* %call1.i38.3, null
  br i1 %tobool7.3, label %for.inc.3, label %land.lhs.true8.3

land.lhs.true8.3:                                 ; preds = %getsparam.exit41.3
  %25 = load i8* %call1.i38.3, align 1, !tbaa !1
  %tobool10.3 = icmp eq i8 %25, 0
  br i1 %tobool10.3, label %for.inc.3, label %if.then11.3

if.then11.3:                                      ; preds = %land.lhs.true8.3
  %call12.3 = call i8* @setlocale(i32 1, i8* %call1.i38.3) nounwind
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then11.3, %land.lhs.true8.3, %getsparam.exit41.3, %for.inc.2
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  store i8* getelementptr inbounds ([8 x i8]* @.str85, i32 0, i32 0), i8** %s.addr.i34, align 4, !tbaa !0
  %call.i.i36.4 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i35, i8** %s.addr.i34, i32 0, i32 0) nounwind
  %tobool.i37.4 = icmp eq %struct.value* %call.i.i36.4, null
  br i1 %tobool.i37.4, label %for.inc.4, label %getsparam.exit41.4

getsparam.exit41.4:                               ; preds = %for.inc.3
  %call1.i38.4 = call i8* @getstrvalue(%struct.value* %call.i.i36.4) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  %tobool7.4 = icmp eq i8* %call1.i38.4, null
  br i1 %tobool7.4, label %for.inc.4, label %land.lhs.true8.4

land.lhs.true8.4:                                 ; preds = %getsparam.exit41.4
  %26 = load i8* %call1.i38.4, align 1, !tbaa !1
  %tobool10.4 = icmp eq i8 %26, 0
  br i1 %tobool10.4, label %for.inc.4, label %if.then11.4

if.then11.4:                                      ; preds = %land.lhs.true8.4
  %call12.4 = call i8* @setlocale(i32 2, i8* %call1.i38.4) nounwind
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then11.4, %land.lhs.true8.4, %getsparam.exit41.4, %for.inc.3
  %27 = load i32* @queueing_enabled, align 4, !tbaa !3
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %27, i32 -1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb14, label %cont15
}

declare i8* @setlocale(i32, i8*) nounwind

define void @langsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %u.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str.i = bitcast %union.anon* %u.i to i8**
  %0 = load i8** %str.i, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** %str.i, align 4, !tbaa !0
  %flags.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags.i, align 4, !tbaa !3
  %and.i = and i32 %1, 536870912
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %land.lhs.true.i, label %strsetfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %and11.i = and i32 %1, 1073741824
  %tobool12.i = icmp eq i32 %and11.i, 0
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 10), align 1, !tbaa !1
  %tobool13.i = icmp eq i8 %2, 0
  %or.cond.i = and i1 %tobool12.i, %tobool13.i
  br i1 %or.cond.i, label %strsetfn.exit, label %cont17.i

cont17.i:                                         ; preds = %land.lhs.true.i
  %or.i = or i32 %1, 1073741824
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !3
  %nam.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %3 = load i8** %nam.i, align 4, !tbaa !0
  tail call void @adduserdir(i8* %3, i8* %x, i32 0, i32 0) nounwind
  br label %strsetfn.exit

strsetfn.exit:                                    ; preds = %entry, %land.lhs.true.i, %cont17.i
  tail call fastcc void @setlang(i8* %x)
  ret void
}

define void @lcsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %s.addr.i44 = alloca i8*, align 4
  %vbuf.i45 = alloca %struct.value, align 4
  %s.addr.i = alloca i8*, align 4
  %vbuf.i = alloca %struct.value, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp31 = alloca %struct.__sigset_t, align 4
  %u.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 1
  %str.i = bitcast %union.anon* %u.i to i8**
  %0 = load i8** %str.i, align 4, !tbaa !0
  call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** %str.i, align 4, !tbaa !0
  %flags.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags.i, align 4, !tbaa !3
  %and.i = and i32 %1, 536870912
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %land.lhs.true.i, label %strsetfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %and11.i = and i32 %1, 1073741824
  %tobool12.i = icmp eq i32 %and11.i, 0
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 10), align 1, !tbaa !1
  %tobool13.i = icmp eq i8 %2, 0
  %or.cond.i = and i1 %tobool12.i, %tobool13.i
  br i1 %or.cond.i, label %strsetfn.exit, label %cont17.i

cont17.i:                                         ; preds = %land.lhs.true.i
  %or.i = or i32 %1, 1073741824
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !3
  %nam.i = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %3 = load i8** %nam.i, align 4, !tbaa !0
  call void @adduserdir(i8* %3, i8* %x, i32 0, i32 0) nounwind
  br label %strsetfn.exit

strsetfn.exit:                                    ; preds = %entry, %land.lhs.true.i, %cont17.i
  %4 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %4) nounwind
  %5 = bitcast %struct.value* %vbuf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %5) nounwind
  store i8* getelementptr inbounds ([7 x i8]* @.str53, i32 0, i32 0), i8** %s.addr.i, align 4, !tbaa !0
  %call.i.i = call %struct.value* @fetchvalue(%struct.value* %vbuf.i, i8** %s.addr.i, i32 0, i32 0) nounwind
  %tobool.i43 = icmp eq %struct.value* %call.i.i, null
  br i1 %tobool.i43, label %if.end, label %getsparam.exit

getsparam.exit:                                   ; preds = %strsetfn.exit
  %call1.i = call i8* @getstrvalue(%struct.value* %call.i.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %4) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %5) nounwind
  %tobool = icmp eq i8* %call1.i, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %getsparam.exit
  %6 = load i8* %call1.i, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %6, 0
  br i1 %tobool1, label %if.end, label %do.end33

if.end:                                           ; preds = %strsetfn.exit, %land.lhs.true, %getsparam.exit
  %7 = load i32* @queueing_enabled, align 4, !tbaa !3
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %11 = sext i32 %7 to i64
  call void @__ioc_report_add_overflow(i32 3844, i32 19, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  store i32 %9, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool2 = icmp eq i8* %x, null
  br i1 %tobool2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont
  %12 = load i8* %x, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %12, 0
  br i1 %tobool3, label %if.then4, label %for.cond.preheader

if.then4:                                         ; preds = %lor.lhs.false, %cont
  %13 = bitcast i8** %s.addr.i44 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) nounwind
  %14 = bitcast %struct.value* %vbuf.i45 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) nounwind
  store i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0), i8** %s.addr.i44, align 4, !tbaa !0
  %call.i.i46 = call %struct.value* @fetchvalue(%struct.value* %vbuf.i45, i8** %s.addr.i44, i32 0, i32 0) nounwind
  %tobool.i47 = icmp eq %struct.value* %call.i.i46, null
  br i1 %tobool.i47, label %do.body, label %if.end6

if.end6:                                          ; preds = %if.then4
  %call1.i48 = call i8* @getstrvalue(%struct.value* %call.i.i46) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %13) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %14) nounwind
  %tobool7 = icmp eq i8* %call1.i48, null
  br i1 %tobool7, label %do.body, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end6
  %.pre62 = load i8* %call1.i48, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %.pre62, 0
  br i1 %tobool10, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false, %land.lhs.true8
  %x.addr.05464 = phi i8* [ %call1.i48, %land.lhs.true8 ], [ %x, %lor.lhs.false ]
  %nam = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 1
  %15 = load i8** %nam, align 4, !tbaa !0
  %call14 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8]* @.str81, i32 0, i32 0), i8* %15) nounwind
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.cond.preheader
  %call17 = call i8* @setlocale(i32 3, i8* %x.addr.05464) nounwind
  %.pre = load i8** %nam, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.cond.preheader, %if.then16
  %16 = phi i8* [ %15, %for.cond.preheader ], [ %.pre, %if.then16 ]
  %call14.1 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8]* @.str82, i32 0, i32 0), i8* %16) nounwind
  %tobool15.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.1, label %if.then16.1, label %for.inc.1

do.body:                                          ; preds = %for.inc.3, %if.then16.4, %land.lhs.true8, %if.end6, %if.then4
  %17 = load i32* @queueing_enabled, align 4, !tbaa !3
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 -1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %do.body
  %21 = sext i32 %17 to i64
  call void @__ioc_report_add_overflow(i32 3860, i32 11, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %21, i64 -1, i8 13) nounwind
  br label %cont21

cont21:                                           ; preds = %do.body, %ioc_bb20
  store i32 %19, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %19, 0
  br i1 %tobool22, label %while.cond.preheader, label %do.end33

while.cond.preheader:                             ; preds = %cont21
  %22 = load i32* @queue_front, align 4, !tbaa !3
  %23 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %22, %23
  br i1 %cmp57, label %do.end33, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont29
  %24 = phi i32 [ %31, %cont29 ], [ %22, %while.cond.preheader ]
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb26, label %cont29

ioc_bb26:                                         ; preds = %while.body
  %28 = sext i32 %24 to i64
  call void @__ioc_report_add_overflow(i32 3864, i32 38, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb26, %while.body
  %rem = srem i32 %26, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %29 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %29
  %30 = load i32* %arrayidx30, align 4, !tbaa !3
  call void @zhandler(i32 %30) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp31, %struct.__sigset_t* byval align 4 %oset) nounwind
  %31 = load i32* @queue_front, align 4, !tbaa !3
  %32 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %31, %32
  br i1 %cmp, label %do.end33, label %while.body

do.end33:                                         ; preds = %while.cond.preheader, %cont29, %land.lhs.true, %cont21
  ret void

if.then16.1:                                      ; preds = %for.inc
  %call17.1 = call i8* @setlocale(i32 0, i8* %x.addr.05464) nounwind
  %.pre59 = load i8** %nam, align 4, !tbaa !0
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %for.inc
  %33 = phi i8* [ %.pre59, %if.then16.1 ], [ %16, %for.inc ]
  %call14.2 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @.str83, i32 0, i32 0), i8* %33) nounwind
  %tobool15.2 = icmp eq i32 %call14.2, 0
  br i1 %tobool15.2, label %if.then16.2, label %for.inc.2

if.then16.2:                                      ; preds = %for.inc.1
  %call17.2 = call i8* @setlocale(i32 5, i8* %x.addr.05464) nounwind
  %.pre60 = load i8** %nam, align 4, !tbaa !0
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %for.inc.1
  %34 = phi i8* [ %.pre60, %if.then16.2 ], [ %33, %for.inc.1 ]
  %call14.3 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8]* @.str84, i32 0, i32 0), i8* %34) nounwind
  %tobool15.3 = icmp eq i32 %call14.3, 0
  br i1 %tobool15.3, label %if.then16.3, label %for.inc.3

if.then16.3:                                      ; preds = %for.inc.2
  %call17.3 = call i8* @setlocale(i32 1, i8* %x.addr.05464) nounwind
  %.pre61 = load i8** %nam, align 4, !tbaa !0
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then16.3, %for.inc.2
  %35 = phi i8* [ %.pre61, %if.then16.3 ], [ %34, %for.inc.2 ]
  %call14.4 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8]* @.str85, i32 0, i32 0), i8* %35) nounwind
  %tobool15.4 = icmp eq i32 %call14.4, 0
  br i1 %tobool15.4, label %if.then16.4, label %do.body

if.then16.4:                                      ; preds = %for.inc.3
  %call17.4 = call i8* @setlocale(i32 2, i8* %x.addr.05464) nounwind
  br label %do.body
}

define i64 @histsizegetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i64* @histsiz, align 8, !tbaa !4
  ret i64 %0
}

define void @histsizesetfn(%struct.param* nocapture %pm, i64 %v) nounwind {
entry:
  %cmp = icmp slt i64 %v, 1
  %.v = select i1 %cmp, i64 1, i64 %v
  store i64 %.v, i64* @histsiz, align 8
  tail call void @resizehistents() nounwind
  ret void
}

declare void @resizehistents()

define i64 @savehistsizegetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i64* @savehistsiz, align 8, !tbaa !4
  ret i64 %0
}

define void @savehistsizesetfn(%struct.param* nocapture %pm, i64 %v) nounwind {
entry:
  %cmp = icmp slt i64 %v, 0
  %.v = select i1 %cmp, i64 0, i64 %v
  store i64 %.v, i64* @savehistsiz, align 8
  ret void
}

define void @errnosetfn(%struct.param* nocapture %pm, i64 %x) nounwind {
entry:
  %x.off = add i64 %x, 2147483648
  %0 = icmp ult i64 %x.off, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3909, i32 33, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %x, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %x to i32
  %call = tail call i32* @__errno_location() nounwind readnone
  store i32 %conv, i32* %call, align 4, !tbaa !3
  %conv2 = sext i32 %conv to i64
  %cmp = icmp eq i64 %conv2, %x
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %cont
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([30 x i8]* @.str54, i32 0, i32 0)) nounwind
  br label %if.end

if.end:                                           ; preds = %cont, %if.then
  ret void
}

define i64 @errnogetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %call = tail call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

define i8* @keyboardhackgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %0 = load i8* @keyboardhackchar, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = zext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 3926, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  store i8 %0, i8* getelementptr inbounds ([2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 0), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 1), align 1, !tbaa !1
  ret i8* getelementptr inbounds ([2 x i8]* @keyboardhackgetfn.buf, i32 0, i32 0)
}

define void @keyboardhacksetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %len = alloca i32, align 4
  %tobool = icmp eq i8* %x, null
  br i1 %tobool, label %cont20, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @unmetafy(i8* %x, i32* %len) nounwind
  %0 = load i32* %len, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then1, label %for.cond

if.then1:                                         ; preds = %if.then
  store i32 1, i32* %len, align 4, !tbaa !3
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([48 x i8]* @.str55, i32 0, i32 0)) nounwind
  br label %for.condthread-pre-split

for.condthread-pre-split:                         ; preds = %if.then1, %for.inc, %ioc_bb7
  %i.0.ph = phi i32 [ %6, %ioc_bb7 ], [ %6, %for.inc ], [ 0, %if.then1 ]
  %.pr = load i32* %len, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.condthread-pre-split, %if.then
  %1 = phi i32 [ %.pr, %for.condthread-pre-split ], [ %0, %if.then ]
  %i.0 = phi i32 [ %i.0.ph, %for.condthread-pre-split ], [ 0, %if.then ]
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8* %x, i32 %i.0
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %4 = sext i8 %2 to i64
  call void @__ioc_report_conversion(i32 3945, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %4, i8 1) nounwind
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([48 x i8]* @.str56, i32 0, i32 0)) nounwind
  br label %if.end21

for.inc:                                          ; preds = %for.body
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb7, label %for.condthread-pre-split

ioc_bb7:                                          ; preds = %for.inc
  %8 = sext i32 %i.0 to i64
  call void @__ioc_report_add_overflow(i32 3944, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %for.condthread-pre-split

for.end:                                          ; preds = %for.cond
  %tobool9 = icmp eq i32 %1, 0
  br i1 %tobool9, label %cont17, label %cond.true

cond.true:                                        ; preds = %for.end
  %9 = load i8* %x, align 1, !tbaa !1
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont17, label %ioc_bb12

ioc_bb12:                                         ; preds = %cond.true
  %11 = sext i8 %9 to i64
  call void @__ioc_report_conversion(i32 3950, i32 47, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont17

cont17:                                           ; preds = %for.end, %ioc_bb12, %cond.true
  %cond = phi i8 [ 0, %for.end ], [ %9, %ioc_bb12 ], [ %9, %cond.true ]
  store i8 %cond, i8* @keyboardhackchar, align 1, !tbaa !1
  call void @free(i8* %x) nounwind
  br label %if.end21

cont20:                                           ; preds = %entry
  store i8 0, i8* @keyboardhackchar, align 1, !tbaa !1
  br label %if.end21

if.end21:                                         ; preds = %if.then5, %cont20, %cont17
  ret void
}

declare i8* @unmetafy(i8*, i32*)

define i8* @histcharsgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %0 = load i8* @bangchar, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = zext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 3962, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  store i8 %0, i8* getelementptr inbounds ([4 x i8]* @histcharsgetfn.buf, i32 0, i32 0), align 1, !tbaa !1
  %3 = load i8* @hatchar, align 1, !tbaa !1
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %cont
  %5 = zext i8 %3 to i64
  tail call void @__ioc_report_conversion(i32 3963, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %cont
  store i8 %3, i8* getelementptr inbounds ([4 x i8]* @histcharsgetfn.buf, i32 0, i32 1), align 1, !tbaa !1
  %6 = load i8* @hashchar, align 1, !tbaa !1
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cont3
  %8 = zext i8 %6 to i64
  tail call void @__ioc_report_conversion(i32 3964, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %8, i8 0) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cont3
  store i8 %6, i8* getelementptr inbounds ([4 x i8]* @histcharsgetfn.buf, i32 0, i32 2), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([4 x i8]* @histcharsgetfn.buf, i32 0, i32 3), align 1, !tbaa !1
  ret i8* getelementptr inbounds ([4 x i8]* @histcharsgetfn.buf, i32 0, i32 0)
}

define void @histcharssetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %len = alloca i32, align 4
  %tobool = icmp eq i8* %x, null
  br i1 %tobool, label %cont52, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @unmetafy(i8* %x, i32* %len) nounwind
  %0 = load i32* %len, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %for.cond.preheader.thread, label %for.cond.preheader

for.cond.preheader.thread:                        ; preds = %if.then
  store i32 3, i32* %len, align 4, !tbaa !3
  br label %for.body

for.cond.preheader:                               ; preds = %if.then
  %cmp270 = icmp sgt i32 %0, 0
  br i1 %cmp270, label %for.body, label %for.end

for.condthread-pre-split:                         ; preds = %for.inc, %ioc_bb7
  %.pr = phi i32 [ %.pr75, %for.inc ], [ %.pr.pre, %ioc_bb7 ]
  %cmp2 = icmp slt i32 %5, %.pr
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.preheader.thread, %for.condthread-pre-split
  %.pr75 = phi i32 [ %.pr, %for.condthread-pre-split ], [ 3, %for.cond.preheader.thread ], [ %0, %for.cond.preheader ]
  %i.071 = phi i32 [ %5, %for.condthread-pre-split ], [ 0, %for.cond.preheader.thread ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8* %x, i32 %i.071
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %3 = sext i8 %1 to i64
  call void @__ioc_report_conversion(i32 3980, i32 31, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %3, i8 1) nounwind
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([44 x i8]* @.str57, i32 0, i32 0)) nounwind
  br label %return

for.inc:                                          ; preds = %for.body
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.071, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb7, label %for.condthread-pre-split

ioc_bb7:                                          ; preds = %for.inc
  %7 = sext i32 %i.071 to i64
  call void @__ioc_report_add_overflow(i32 3979, i32 27, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  %.pr.pre = load i32* %len, align 4, !tbaa !3
  br label %for.condthread-pre-split

for.end:                                          ; preds = %for.condthread-pre-split, %for.cond.preheader
  %8 = phi i32 [ %0, %for.cond.preheader ], [ %.pr, %for.condthread-pre-split ]
  %tobool9 = icmp eq i32 %8, 0
  br i1 %tobool9, label %cont17, label %cond.true

cond.true:                                        ; preds = %for.end
  %9 = load i8* %x, align 1, !tbaa !1
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont17, label %ioc_bb12

ioc_bb12:                                         ; preds = %cond.true
  %11 = sext i8 %9 to i64
  call void @__ioc_report_conversion(i32 3985, i32 39, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %11, i8 1) nounwind
  %.pre = load i32* %len, align 4, !tbaa !3
  br label %cont17

cont17:                                           ; preds = %for.end, %ioc_bb12, %cond.true
  %12 = phi i32 [ %8, %for.end ], [ %.pre, %ioc_bb12 ], [ %8, %cond.true ]
  %cond = phi i8 [ 0, %for.end ], [ %9, %ioc_bb12 ], [ %9, %cond.true ]
  store i8 %cond, i8* @bangchar, align 1, !tbaa !1
  %cmp19 = icmp sgt i32 %12, 1
  br i1 %cmp19, label %cond.true21, label %cont33.thread

cont33.thread:                                    ; preds = %cont17
  store i8 0, i8* @hatchar, align 1, !tbaa !1
  br label %cont49

cond.true21:                                      ; preds = %cont17
  %arrayidx22 = getelementptr inbounds i8* %x, i32 1
  %13 = load i8* %arrayidx22, align 1, !tbaa !1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %cont33, label %ioc_bb24

ioc_bb24:                                         ; preds = %cond.true21
  %15 = sext i8 %13 to i64
  call void @__ioc_report_conversion(i32 3986, i32 42, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %15, i8 1) nounwind
  %.pr66.pre = load i32* %len, align 4, !tbaa !3
  br label %cont33

cont33:                                           ; preds = %ioc_bb24, %cond.true21
  %.pr66 = phi i32 [ %.pr66.pre, %ioc_bb24 ], [ %12, %cond.true21 ]
  store i8 %13, i8* @hatchar, align 1, !tbaa !1
  %cmp35 = icmp sgt i32 %.pr66, 2
  br i1 %cmp35, label %cond.true37, label %cont49

cond.true37:                                      ; preds = %cont33
  %arrayidx38 = getelementptr inbounds i8* %x, i32 2
  %16 = load i8* %arrayidx38, align 1, !tbaa !1
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %cont49, label %ioc_bb40

ioc_bb40:                                         ; preds = %cond.true37
  %18 = sext i8 %16 to i64
  call void @__ioc_report_conversion(i32 3987, i32 43, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont49

cont49:                                           ; preds = %cont33.thread, %cont33, %ioc_bb40, %cond.true37
  %cond45 = phi i8 [ 0, %cont33 ], [ %16, %ioc_bb40 ], [ %16, %cond.true37 ], [ 0, %cont33.thread ]
  store i8 %cond45, i8* @hashchar, align 1, !tbaa !1
  call void @free(i8* %x) nounwind
  br label %if.end57

cont52:                                           ; preds = %entry
  store i8 33, i8* @bangchar, align 1, !tbaa !1
  store i8 35, i8* @hashchar, align 1, !tbaa !1
  store i8 94, i8* @hatchar, align 1, !tbaa !1
  br label %if.end57

if.end57:                                         ; preds = %cont52, %cont49
  call void @inittyptab() nounwind
  br label %return

return:                                           ; preds = %if.end57, %if.then5
  ret void
}

define i8* @homegetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i8** @home, align 4, !tbaa !0
  ret i8* %0
}

define void @homesetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %0 = load i8** @home, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  %tobool = icmp ne i8* %x, null
  %tobool.not = xor i1 %tobool, true
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 30), align 1, !tbaa !1
  %tobool1 = icmp eq i8 %1, 0
  %or.cond = or i1 %tobool1, %tobool.not
  br i1 %or.cond, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i8* @xsymlink(i8* %x) nounwind
  store i8* %call, i8** @home, align 4, !tbaa !0
  %tobool3 = icmp eq i8* %call, null
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  tail call void @zsfree(i8* %x) nounwind
  br label %if.end

if.else:                                          ; preds = %entry, %land.lhs.true2
  br i1 %tobool, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.else
  %call5 = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.else, %cond.false
  %cond = phi i8* [ %call5, %cond.false ], [ %x, %if.else ]
  store i8* %cond, i8** @home, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %call6 = tail call %struct.nameddir* @finddir(i8* null) nounwind
  ret void
}

declare i8* @xsymlink(i8*)

declare %struct.nameddir* @finddir(i8*)

define i8* @wordcharsgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i8** @wordchars, align 4, !tbaa !0
  ret i8* %0
}

define void @wordcharssetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %0 = load i8** @wordchars, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** @wordchars, align 4, !tbaa !0
  tail call void @inittyptab() nounwind
  ret void
}

define i8* @underscoregetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %0 = load i8** @zunderscore, align 4, !tbaa !0
  %call = tail call i8* @dupstring(i8* %0) nounwind
  tail call void @untokenize(i8* %call) nounwind
  ret i8* %call
}

define i8* @termgetfn(%struct.param* nocapture %pm) nounwind readonly {
entry:
  %0 = load i8** @term, align 4, !tbaa !0
  ret i8* %0
}

define void @termsetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %0 = load i8** @term, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  %tobool = icmp eq i8* %x, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %x, %entry ]
  store i8* %cond, i8** @term, align 4, !tbaa !0
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.end
  %2 = load i8* %cond, align 1, !tbaa !1
  %tobool1.i = icmp eq i8 %2, 0
  br i1 %tobool1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %cond.end
  %3 = load i32* @termflags, align 4, !tbaa !3
  %or.i = or i32 %3, 2
  store i32 %or.i, i32* @termflags, align 4, !tbaa !3
  br label %term_reinit_from_pm.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @init_term() nounwind
  br label %term_reinit_from_pm.exit

term_reinit_from_pm.exit:                         ; preds = %if.then.i, %if.else.i
  ret void
}

define i8* @terminfogetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %0 = load i8** @zsh_terminfo, align 4, !tbaa !0
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %0, %entry ]
  ret i8* %cond
}

define void @terminfosetfn(%struct.param* nocapture %pm, i8* %x) nounwind {
entry:
  %0 = load i8** @zsh_terminfo, align 4, !tbaa !0
  tail call void @zsfree(i8* %0) nounwind
  store i8* %x, i8** @zsh_terminfo, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.param* %pm, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 4096
  %tobool = icmp eq i32 %and, 0
  %tobool3 = icmp eq i8* %x, null
  %or.cond = or i1 %tobool, %tobool3
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @addenv(%struct.param* %pm, i8* %x)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool.i = icmp eq i8 %2, 0
  br i1 %tobool.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %3 = load i8** @term, align 4, !tbaa !0
  %4 = load i8* %3, align 1, !tbaa !1
  %tobool1.i = icmp eq i8 %4, 0
  br i1 %tobool1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end
  %5 = load i32* @termflags, align 4, !tbaa !3
  %or.i = or i32 %5, 2
  store i32 %or.i, i32* @termflags, align 4, !tbaa !3
  br label %term_reinit_from_pm.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @init_term() nounwind
  br label %term_reinit_from_pm.exit

term_reinit_from_pm.exit:                         ; preds = %if.then.i, %if.else.i
  ret void
}

define i32 @zputenv(i8* %str) nounwind {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %ptr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %ptr.0, align 1, !tbaa !1
  switch i8 %0, label %for.inc [
    i8 0, label %if.else
    i8 61, label %cont
  ]

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %ptr.0, i32 1
  br label %for.cond

cont:                                             ; preds = %for.cond
  store i8 0, i8* %ptr.0, align 1, !tbaa !1
  %add.ptr = getelementptr inbounds i8* %ptr.0, i32 1
  %call = tail call i32 @setenv(i8* %str, i8* %add.ptr, i32 1) nounwind
  store i8 61, i8* %ptr.0, align 1, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.cond
  %call6 = tail call i32 @setenv(i8* %str, i8* %ptr.0, i32 1) nounwind
  br label %if.end

if.end:                                           ; preds = %if.else, %cont
  %ret.0 = phi i32 [ %call, %cont ], [ %call6, %if.else ]
  ret i32 %ret.0
}

declare i32 @setenv(i8*, i8*, i32) nounwind

define i8* @zgetenv(i8* nocapture %name) nounwind readonly {
entry:
  %call = tail call i8* @getenv(i8* %name) nounwind
  ret i8* %call
}

declare i8* @getenv(i8* nocapture) nounwind readonly

declare i32 @unsetenv(i8* nocapture) nounwind

declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) nounwind

declare i8* @llvm.stacksave() nounwind

declare void @llvm.stackrestore(i8*) nounwind

define void @startparamscope() nounwind {
entry:
  %0 = load i32* @locallevel, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 4407, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @locallevel, align 4, !tbaa !3
  ret void
}

define void @endparamscope() nounwind {
entry:
  %0 = load i32* @locallevel, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 4414, i32 13, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @locallevel, align 4, !tbaa !3
  %call = tail call i32 @saveandpophiststack(i32 0, i32 32768) nounwind
  %5 = load %struct.hashtable** @paramtab, align 4, !tbaa !0
  %call1 = tail call i32 @scanhashtable(%struct.hashtable* %5, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @scanendscope, i32 0) nounwind
  ret void
}

declare i32 @saveandpophiststack(i32, i32)

define internal void @scanendscope(%struct.hashnode* %hn, i32 %flags) nounwind {
entry:
  %0 = bitcast %struct.hashnode* %hn to %struct.param*
  %1 = getelementptr inbounds %struct.hashnode* %hn, i32 3, i32 2
  %2 = load i32* %1, align 4, !tbaa !3
  %3 = load i32* @locallevel, align 4, !tbaa !3
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end212

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %4 = load i32* %flags1, align 4, !tbaa !3
  %and = and i32 %4, 71303168
  %cmp12 = icmp eq i32 %and, 4194304
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %old = getelementptr inbounds %struct.hashnode* %hn, i32 3, i32 1
  %5 = load i8** %old, align 4
  %6 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 1) to i32), i32 ptrtoint ([8 x i8]* @.str80 to i32))
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %ioc_bb14, label %cont17

ioc_bb14:                                         ; preds = %if.then13
  tail call void @__ioc_report_sub_overflow(i32 4435, i32 12, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str100, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([8 x i8]* @.str80 to i32) to i64), i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %ioc_bb14, %if.then13
  %nam68 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %8 = load i8** %nam68, align 4, !tbaa !0
  %call = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 0)) nounwind
  %tobool = icmp eq i32 %call, 0
  %flags71 = getelementptr inbounds i8* %5, i32 8
  %9 = bitcast i8* %flags71 to i32*
  %10 = load i32* %9, align 4, !tbaa !3
  br i1 %tobool, label %if.then69, label %if.end123

if.then69:                                        ; preds = %cont17
  %and92 = and i32 %10, 31
  %11 = load i32* %flags1, align 4, !tbaa !3
  %or.i = or i32 %11, %and92
  %.not = or i32 %11, -32
  %neg.i = xor i32 %.not, 31
  %and.i = and i32 %neg.i, %or.i
  %and19.i = and i32 %and.i, 31
  switch i32 %and19.i, label %setsecondstype.exit [
    i32 4, label %if.then.i
    i32 8, label %if.then.i
    i32 2, label %if.then34.i
  ]

if.then.i:                                        ; preds = %if.then69, %if.then69
  %12 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  store i32 ptrtoint (%struct.gsu_float* @floatseconds_gsu to i32), i32* %12, align 4, !tbaa !0
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.then69
  %13 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  store i32 ptrtoint (%struct.gsu_integer* @intseconds_gsu to i32), i32* %13, align 4, !tbaa !0
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.then.i
  store i32 %and.i, i32* %flags1, align 4, !tbaa !3
  br label %setsecondstype.exit

setsecondstype.exit:                              ; preds = %if.then69, %if.end37.i
  %u = getelementptr inbounds i8* %5, i32 12
  %dval = bitcast i8* %u to double*
  %14 = load double* %dval, align 4, !tbaa !5
  %conv.i = fptosi double %14 to i64
  %conv.off.i = add i64 %conv.i, 2147483648
  %15 = icmp ult i64 %conv.off.i, 4294967296
  br i1 %15, label %cont.i, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %setsecondstype.exit
  tail call void @__ioc_report_conversion(i32 3591, i32 20, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %conv.i, i8 1) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %setsecondstype.exit
  %conv1.i = trunc i64 %conv.i to i32
  store i32 %conv1.i, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !7
  %conv3.i = sitofp i64 %conv.i to double
  %sub.i = fsub double %14, %conv3.i
  %mul.i = fmul double %sub.i, 1.000000e+06
  %conv4.i = fptosi double %mul.i to i64
  %conv4.off.i = add i64 %conv4.i, 2147483648
  %16 = icmp ult i64 %conv4.off.i, 4294967296
  br i1 %16, label %setrawseconds.exit, label %ioc_bb7.i

ioc_bb7.i:                                        ; preds = %cont.i
  tail call void @__ioc_report_conversion(i32 3592, i32 21, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %conv4.i, i8 1) nounwind
  br label %setrawseconds.exit

setrawseconds.exit:                               ; preds = %cont.i, %ioc_bb7.i
  %conv9.i = trunc i64 %conv4.i to i32
  store i32 %conv9.i, i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !7
  %17 = load i32* %9, align 4, !tbaa !3
  %or = or i32 %17, 268435456
  store i32 %or, i32* %9, align 4, !tbaa !3
  br label %if.end123

if.end123:                                        ; preds = %cont17, %setrawseconds.exit
  %18 = phi i32 [ %or, %setrawseconds.exit ], [ %10, %cont17 ]
  %old124 = getelementptr inbounds i8* %5, i32 40
  %19 = bitcast i8* %old124 to %struct.param**
  %20 = load %struct.param** %19, align 4, !tbaa !0
  %.c = bitcast %struct.param* %20 to i8*
  store i8* %.c, i8** %old, align 4, !tbaa !0
  %flags127 = getelementptr inbounds i8* %5, i32 8
  %21 = bitcast i8* %flags127 to i32*
  %and132 = and i32 %18, -268435457
  store i32 %and132, i32* %flags1, align 4, !tbaa !3
  %level135 = getelementptr inbounds i8* %5, i32 44
  %22 = bitcast i8* %level135 to i32*
  %23 = load i32* %22, align 4, !tbaa !3
  store i32 %23, i32* %1, align 4, !tbaa !3
  %base = getelementptr inbounds i8* %5, i32 24
  %24 = bitcast i8* %base to i32*
  %25 = load i32* %24, align 4, !tbaa !3
  %26 = getelementptr inbounds %struct.hashnode* %hn, i32 2, i32 0
  %.c262 = inttoptr i32 %25 to %struct.hashnode*
  store %struct.hashnode* %.c262, %struct.hashnode** %26, align 4, !tbaa !3
  %width = getelementptr inbounds i8* %5, i32 28
  %27 = bitcast i8* %width to i32*
  %28 = load i32* %27, align 4, !tbaa !3
  %width138 = getelementptr inbounds %struct.hashnode* %hn, i32 2, i32 1
  %.c263 = inttoptr i32 %28 to i8*
  store i8* %.c263, i8** %width138, align 4, !tbaa !3
  %env = getelementptr inbounds %struct.hashnode* %hn, i32 2, i32 2
  %29 = bitcast i32* %env to i8**
  %30 = load i8** %29, align 4, !tbaa !0
  %tobool139 = icmp eq i8* %30, null
  br i1 %tobool139, label %if.end141, label %if.then140

if.then140:                                       ; preds = %if.end123
  %31 = load i8** %nam68, align 4, !tbaa !0
  %call.i = tail call i32 @unsetenv(i8* %31) nounwind
  %32 = load i8** %29, align 4, !tbaa !0
  tail call void @zsfree(i8* %32) nounwind
  store i32 0, i32* %env, align 4, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %if.end123, %if.then140
  %33 = load i32* %21, align 4, !tbaa !3
  %and152 = and i32 %33, 268436480
  %tobool153 = icmp eq i32 %and152, 0
  br i1 %tobool153, label %if.then154, label %cont199

if.then154:                                       ; preds = %if.end141
  %34 = load i32* %flags1, align 4, !tbaa !3
  %and177 = and i32 %34, 31
  switch i32 %and177, label %cont199 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb179
    i32 4, label %sw.bb184
    i32 8, label %sw.bb184
    i32 1, label %sw.bb189
    i32 16, label %sw.bb193
  ]

sw.bb:                                            ; preds = %if.then154
  %gsu = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %s = bitcast i32* %gsu to %struct.gsu_scalar**
  %35 = load %struct.gsu_scalar** %s, align 4, !tbaa !0
  %setfn = getelementptr inbounds %struct.gsu_scalar* %35, i32 0, i32 1
  %36 = load void (%struct.param*, i8*)** %setfn, align 4, !tbaa !0
  %u178 = getelementptr inbounds i8* %5, i32 12
  %str = bitcast i8* %u178 to i8**
  %37 = load i8** %str, align 4, !tbaa !0
  tail call void %36(%struct.param* %0, i8* %37) nounwind
  br label %cont199

sw.bb179:                                         ; preds = %if.then154
  %gsu180 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %i = bitcast i32* %gsu180 to %struct.gsu_integer**
  %38 = load %struct.gsu_integer** %i, align 4, !tbaa !0
  %setfn181 = getelementptr inbounds %struct.gsu_integer* %38, i32 0, i32 1
  %39 = load void (%struct.param*, i64)** %setfn181, align 4, !tbaa !0
  %u182 = getelementptr inbounds i8* %5, i32 12
  %val = bitcast i8* %u182 to i64*
  %40 = load i64* %val, align 4, !tbaa !4
  tail call void %39(%struct.param* %0, i64 %40) nounwind
  br label %cont199

sw.bb184:                                         ; preds = %if.then154, %if.then154
  %gsu185 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %f = bitcast i32* %gsu185 to %struct.gsu_float**
  %41 = load %struct.gsu_float** %f, align 4, !tbaa !0
  %setfn186 = getelementptr inbounds %struct.gsu_float* %41, i32 0, i32 1
  %42 = load void (%struct.param*, double)** %setfn186, align 4, !tbaa !0
  %u187 = getelementptr inbounds i8* %5, i32 12
  %dval188 = bitcast i8* %u187 to double*
  %43 = load double* %dval188, align 4, !tbaa !5
  tail call void %42(%struct.param* %0, double %43) nounwind
  br label %cont199

sw.bb189:                                         ; preds = %if.then154
  %gsu190 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %a = bitcast i32* %gsu190 to %struct.gsu_array**
  %44 = load %struct.gsu_array** %a, align 4, !tbaa !0
  %setfn191 = getelementptr inbounds %struct.gsu_array* %44, i32 0, i32 1
  %45 = load void (%struct.param*, i8**)** %setfn191, align 4, !tbaa !0
  %u192 = getelementptr inbounds i8* %5, i32 12
  %arr = bitcast i8* %u192 to i8***
  %46 = load i8*** %arr, align 4, !tbaa !0
  tail call void %45(%struct.param* %0, i8** %46) nounwind
  br label %cont199

sw.bb193:                                         ; preds = %if.then154
  %gsu194 = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 2
  %h = bitcast i32* %gsu194 to %struct.gsu_hash**
  %47 = load %struct.gsu_hash** %h, align 4, !tbaa !0
  %setfn195 = getelementptr inbounds %struct.gsu_hash* %47, i32 0, i32 1
  %48 = load void (%struct.param*, %struct.hashtable*)** %setfn195, align 4, !tbaa !0
  %u196 = getelementptr inbounds i8* %5, i32 12
  %hash = bitcast i8* %u196 to %struct.hashtable**
  %49 = load %struct.hashtable** %hash, align 4, !tbaa !0
  tail call void %48(%struct.param* %0, %struct.hashtable* %49) nounwind
  br label %cont199

cont199:                                          ; preds = %if.then154, %sw.bb193, %sw.bb189, %sw.bb184, %sw.bb179, %sw.bb, %if.end141
  tail call void @zfree(i8* %5, i32 48) nounwind
  %50 = load i32* %flags1, align 4, !tbaa !3
  %and206 = and i32 %50, 4096
  %tobool207 = icmp eq i32 %and206, 0
  br i1 %tobool207, label %if.end212, label %if.then208

if.then208:                                       ; preds = %cont199
  tail call void @export_param(%struct.param* %0)
  br label %if.end212

if.else:                                          ; preds = %if.then
  %call210 = tail call i32 @unsetparam_pm(%struct.param* %0, i32 0, i32 0)
  br label %if.end212

if.end212:                                        ; preds = %cont199, %if.else, %if.then208, %entry
  ret void
}

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32 @zputs(i8*, %struct._IO_FILE*)

declare i32 @quotedzputs(i8*, %struct._IO_FILE*)

declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) nounwind

declare i8* @output64(i64)

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

declare i32 @tulower(i32)

declare i32 @tuupper(i32)

declare i32 @init_term()

declare i32 @__fxstat64(i32, i32, %struct.stat64*) nounwind

declare %struct.hashnode* @addhashnode2(%struct.hashtable*, i8*, i8*)

declare i8* @get_strarg(i8*, i32*)

declare i64 @mathevalarg(i8*, i8**)

declare i8* @getkeystring(i8*, i32*, i32, i32*)

declare i8* @dupstrpfx(i8*, i32)

declare void @remnulargs(i8*)

declare i32 @parsestr(i8*)

declare void @singsub(i8**)

declare i32 @wordcount(i8*, i8*, i32)

declare i8* @findword(i8**, i8*)

declare void @tokenize(i8*)

declare %struct.patprog* @patcompile(i8*, i32, i8**)

declare i32 @pattry(%struct.patprog*, i8*)

define internal i8** @pipestatgetfn(%struct.param* nocapture %pm) nounwind {
entry:
  %buf = alloca [20 x i8], align 1
  %0 = load i32* @numpipestats, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 4094, i32 46, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %6 = sext i32 %2 to i64
  call void @__ioc_report_conversion(i32 4094, i32 32, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %10 = zext i32 %2 to i64
  call void @__ioc_report_mul_overflow(i32 4094, i32 51, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %10, i64 4, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call = call i8* @zhalloc(i32 %8) nounwind
  %11 = bitcast i8* %call to i8**
  %12 = load i32* @numpipestats, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [20 x i8]* %buf, i32 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cont4
  %p.0 = phi i8** [ %11, %cont4 ], [ %incdec.ptr, %for.body ]
  %q.0 = phi i32* [ getelementptr inbounds ([256 x i32]* @pipestats, i32 0, i32 0), %cont4 ], [ %incdec.ptr10, %for.body ]
  %i.0 = phi i32 [ %12, %cont4 ], [ %14, %for.body ]
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %for.cond
  %16 = sext i32 %i.0 to i64
  call void @__ioc_report_add_overflow(i32 4099, i32 55, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %16, i64 -1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %for.cond, %ioc_bb5
  %tobool = icmp eq i32 %i.0, 0
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %cont6
  %17 = load i32* %q.0, align 4, !tbaa !3
  %call7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i32 %17) nounwind
  %call9 = call i8* @dupstring(i8* %arraydecay) nounwind
  store i8* %call9, i8** %p.0, align 4, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8** %p.0, i32 1
  %incdec.ptr10 = getelementptr inbounds i32* %q.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %cont6
  store i8* null, i8** %p.0, align 4, !tbaa !0
  ret i8** %11
}

define internal void @pipestatsetfn(%struct.param* nocapture %pm, i8** %x) nounwind {
entry:
  %tobool = icmp eq i8** %x, null
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i8** %x, align 4, !tbaa !0
  %tobool18 = icmp eq i8* %0, null
  br i1 %tobool18, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %cont
  %1 = phi i8* [ %6, %cont ], [ %0, %for.cond.preheader ]
  %i.010 = phi i32 [ %3, %cont ], [ 0, %for.cond.preheader ]
  %x.addr.09 = phi i8** [ %incdec.ptr, %cont ], [ %x, %for.cond.preheader ]
  %call.i = tail call i32 @strtol(i8* nocapture %1, i8** null, i32 10) nounwind
  %arrayidx = getelementptr inbounds [256 x i32]* @pipestats, i32 0, i32 %i.010
  store i32 %call.i, i32* %arrayidx, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.010, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %for.body
  %5 = sext i32 %i.010 to i64
  tail call void @__ioc_report_add_overflow(i32 4113, i32 35, i8* getelementptr inbounds ([23 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %for.body, %ioc_bb
  %incdec.ptr = getelementptr inbounds i8** %x.addr.09, i32 1
  %6 = load i8** %incdec.ptr, align 4, !tbaa !0
  %tobool1 = icmp ne i8* %6, null
  %cmp = icmp slt i32 %3, 256
  %or.cond = and i1 %tobool1, %cmp
  br i1 %or.cond, label %for.body, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %cont, %entry
  %storemerge = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %3, %cont ]
  store i32 %storemerge, i32* @numpipestats, align 4
  ret void
}

declare i32 @strtol(i8*, i8** nocapture, i32) nounwind

declare i8* @dashgetfn(%struct.param*)

declare i32 @ensurefeature(i8*, i8*, i8*)

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
