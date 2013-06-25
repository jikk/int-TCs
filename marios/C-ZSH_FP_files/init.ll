; ModuleID = '../../src/Src/init.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.hookdef = type { %struct.hookdef*, i8*, i32 (%struct.hookdef*, i8*)*, i32, %union.linkroot* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.mnumber = type { %union.anon.0, i32 }
%union.anon.0 = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.conddef = type { %struct.conddef*, i8*, i32, i32 (i8**, i32)*, i32, i32, i32, i8* }
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.module = type { %struct.hashnode, %union.anon, %union.linkroot*, %union.linkroot*, i32 }
%union.anon = type { i8* }
%struct.rlimit = type { i64, i64 }
%struct.__sigset_t = type { [32 x i32] }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i64, i64, i32 }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.feature_enables = type { i8*, %struct.patprog* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }

@noexitct = global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"before_trap\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"after_trap\00", align 1
@zshhooks = global [3 x %struct.hookdef] [%struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }, %struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }, %struct.hookdef { %struct.hookdef* null, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 (%struct.hookdef*, i8*)* null, i32 1, %union.linkroot* null }], align 4
@stophist = external global i32
@opts = external global [169 x i8]
@errflag = external global i32
@use_exit_printed = common global i32 0, align 4
@tok = external global i32
@exit_pending = external global i32
@stopmsg = external global i32
@lastval = external global i64
@.str3 = private unnamed_addr constant [8 x i8] c"preexec\00", align 1
@paramtab = external global %struct.hashtable*
@.str4 = private unnamed_addr constant [18 x i8] c"preexec_functions\00", align 1
@hist_ring = external global %struct.histent*
@curline = external global %struct.histent
@curhist = external global i64
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@stderr = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@subsh = external global i32
@sourcelevel = common global i32 0, align 4
@retflag = external global i32
@sigtrapped = external global [34 x i32]
@.str9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str11 = private unnamed_addr constant [19 x i8] c"zsh %s (%s-%s-%s)\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"i686\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"linux-gnu\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@scriptfilename = external global i8*
@scriptname = external global i8*
@.str18 = private unnamed_addr constant [25 x i8] c"string expected after -o\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"no such option: %s\00", align 1
@restricted = internal unnamed_addr global i32 0, align 4
@.str20 = private unnamed_addr constant [24 x i8] c"can't change option: %s\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"bad option string: '%s'\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"bad option: -%c\00", align 1
@.str23 = private unnamed_addr constant [25 x i8] c"can't change option: -%c\00", align 1
@.str24 = private unnamed_addr constant [26 x i8] c"string expected after -%s\00", align 1
@init_io.outbuf = internal global [8192 x i8] zeroinitializer, align 1
@init_io.errbuf = internal global [8192 x i8] zeroinitializer, align 1
@stdout = external global %struct._IO_FILE*
@shout = common global %struct._IO_FILE* null, align 4
@SHTTY = common global i32 0, align 4
@xtrerr = external global %struct._IO_FILE*
@ttystrname = external global i8*
@.str25 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@mypid = external global i64
@origpgrp = external global i32
@init_shout.shoutbuf = internal global [8192 x i8] zeroinitializer, align 1
@.str26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@shttyinfo = external global %struct.ttyinfo
@tccapnams = internal unnamed_addr constant [34 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str171, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str172, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str174, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str175, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str179, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str180, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str182, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str183, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str185, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str189, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str190, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str191, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str193, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str194, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str195, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str196, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str197, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str198, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str199, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str200, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str201, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str202, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str203, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str204, i32 0, i32 0)], align 4
@term = external global i8*
@termflags = external global i32
@.str27 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str28 = private unnamed_addr constant [38 x i8] c"can't find terminal definition for %s\00", align 1
@tcstr = common global [34 x i8*] zeroinitializer, align 4
@tclen = common global [34 x i32] zeroinitializer, align 4
@.str29 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@hasam = common global i32 0, align 4
@.str30 = private unnamed_addr constant [3 x i8] c"xn\00", align 1
@hasxn = common global i32 0, align 4
@.str31 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@tclines = common global i32 0, align 4
@.str32 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@tccolumns = common global i32 0, align 4
@.str33 = private unnamed_addr constant [3 x i8] c"Co\00", align 1
@tccolours = common global i32 0, align 4
@.str34 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str35 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@zero_mnumber = external global %struct.mnumber
@noeval = external global i32
@histsiz = external global i64
@cmdstack = external global i8*
@cmdsp = external global i32
@bangchar = external global i8
@hashchar = external global i8
@hatchar = external global i8
@coprocout = external global i32
@coprocin = external global i32
@prevjob = external global i32
@curjob = external global i32
@shtimer = external global %struct.timeval
@0 = internal unnamed_addr constant [5 x i8] c"long\00"
@path = external global i8**
@.str36 = private unnamed_addr constant [5 x i8] c"/bin\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"/usr/bin\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"/usr/ucb\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@cdpath = external global i8**
@manpath = external global i8**
@fignore = external global i8**
@fpath = external global i8**
@.str40 = private unnamed_addr constant [61 x i8] c"/opt/stonesoup/TH-workspace/install/share/zsh/site-functions\00", align 1
@.str41 = private unnamed_addr constant [62 x i8] c"/opt/stonesoup/TH-workspace/install/share/zsh/5.0.0/functions\00", align 1
@mailpath = external global i8**
@watch = external global i8**
@psvar = external global i8**
@.str42 = private unnamed_addr constant [50 x i8] c"/opt/stonesoup/TH-workspace/install/lib/zsh/5.0.0\00", align 1
@module_path = external global i8**
@.str43 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@modulestab = external global %struct.hashtable*
@linkedmodules = external global %union.linkroot*
@prompt = external global i8*
@prompt2 = external global i8*
@emulation = external global i32
@.str44 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"$ \00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"%m%# \00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"%_> \00", align 1
@.str49 = private unnamed_addr constant [4 x i8] c"?# \00", align 1
@prompt3 = external global i8*
@.str50 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str51 = private unnamed_addr constant [9 x i8] c"+%N:%i> \00", align 1
@prompt4 = external global i8*
@.str52 = private unnamed_addr constant [35 x i8] c"zsh: correct '%R' to '%r' [nyae]? \00", align 1
@sprompt = external global i8*
@.str53 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@ifs = external global i8*
@.str55 = private unnamed_addr constant [24 x i8] c"*?_-.[]~=/&;!#$%^(){}<>\00", align 1
@wordchars = external global i8*
@postedit = external global i8*
@underscorelen = common global i32 0, align 4
@zunderscore = common global i8* null, align 4
@underscoreused = common global i32 0, align 4
@zoptarg = external global i8*
@zoptind = external global i64
@ppid = external global i64
@.str56 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@nullcmd = external global i8*
@.str57 = private unnamed_addr constant [5 x i8] c"more\00", align 1
@readnullcmd = external global i8*
@cached_uid = external global i32
@home = external global i8*
@cached_username = external global i8*
@.str58 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@pwd = external global i8*
@.str60 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@oldpwd = external global i8*
@condtab = external global %struct.conddef*
@wrappers = external global %struct.funcwrap*
@1 = internal unnamed_addr constant [20 x i8] c"__rlimit_resource_t\00"
@2 = internal unnamed_addr constant [23 x i8] c"enum __rlimit_resource\00"
@current_limits = external global [15 x %struct.rlimit]
@limits = external global [15 x %struct.rlimit]
@loops = external global i32
@breaks = external global i32
@lastmailcheck = external global i32
@locallevel = external global i32
@sfcontext = external global i32
@trap_return = external global i32
@trap_state = external global i32
@noerrexit = external global i32
@nohistsave = external global i32
@dirstack = external global %union.linkroot*
@bufstack = external global %union.linkroot*
@hsubr = external global i8*
@hsubl = external global i8*
@lastpid = external global i64
@lastpid_status = external global i32
@sigchld_mask = common global %struct.__sigset_t zeroinitializer, align 4
@.str61 = private unnamed_addr constant [13 x i8] c"/etc/profile\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c".profile\00", align 1
@noerrs = external global i32
@.str64 = private unnamed_addr constant [18 x i8] c"/etc/suid_profile\00", align 1
@.str65 = private unnamed_addr constant [12 x i8] c"/etc/zshenv\00", align 1
@.str66 = private unnamed_addr constant [12 x i8] c"zsh/newuser\00", align 1
@.str67 = private unnamed_addr constant [8 x i8] c".zshenv\00", align 1
@.str68 = private unnamed_addr constant [14 x i8] c"/etc/zprofile\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c".zprofile\00", align 1
@.str70 = private unnamed_addr constant [11 x i8] c"/etc/zshrc\00", align 1
@.str71 = private unnamed_addr constant [7 x i8] c".zshrc\00", align 1
@.str72 = private unnamed_addr constant [12 x i8] c"/etc/zlogin\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c".zlogin\00", align 1
@zsh_name = external global i8*
@cmd = internal unnamed_addr global i8* null, align 4
@SHIN = external global i32
@bshin = external global %struct._IO_FILE*
@.str74 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str75 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str76 = private unnamed_addr constant [7 x i8] c"cmdarg\00", align 1
@thisjob = external global i32
@lineno = external global i64
@.str77 = private unnamed_addr constant [15 x i8] c"<sourcetrace>\0A\00", align 1
@funcstack = external global %struct.funcstack*
@.str78 = private unnamed_addr constant [9 x i8] c"filecode\00", align 1
@fdtable = external global i8*
@queueing_enabled = external global i32
@.str79 = private unnamed_addr constant [8 x i8] c"ZDOTDIR\00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@3 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@.str81 = private unnamed_addr constant [8 x i8] c"b:limit\00", align 1
@.str82 = private unnamed_addr constant [9 x i8] c"b:ulimit\00", align 1
@.str83 = private unnamed_addr constant [10 x i8] c"b:unlimit\00", align 1
@init_bltinmods.zsh_features = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str83, i32 0, i32 0), i8* null], align 4
@init_bltinmods.emu_features = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str82, i32 0, i32 0), i8* null], align 8
@.str84 = private unnamed_addr constant [12 x i8] c"zsh/rlimits\00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"b:sched\00", align 1
@.str86 = private unnamed_addr constant [23 x i8] c"p:zsh_scheduled_events\00", align 1
@init_bltinmods.features = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str86, i32 0, i32 0), i8* null], align 4
@.str87 = private unnamed_addr constant [10 x i8] c"zsh/sched\00", align 1
@.str88 = private unnamed_addr constant [13 x i8] c"p:parameters\00", align 1
@.str89 = private unnamed_addr constant [11 x i8] c"p:commands\00", align 1
@.str90 = private unnamed_addr constant [12 x i8] c"p:functions\00", align 1
@.str91 = private unnamed_addr constant [16 x i8] c"p:dis_functions\00", align 1
@.str92 = private unnamed_addr constant [16 x i8] c"p:funcfiletrace\00", align 1
@.str93 = private unnamed_addr constant [18 x i8] c"p:funcsourcetrace\00", align 1
@.str94 = private unnamed_addr constant [12 x i8] c"p:funcstack\00", align 1
@.str95 = private unnamed_addr constant [12 x i8] c"p:functrace\00", align 1
@.str96 = private unnamed_addr constant [11 x i8] c"p:builtins\00", align 1
@.str97 = private unnamed_addr constant [15 x i8] c"p:dis_builtins\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c"p:reswords\00", align 1
@.str99 = private unnamed_addr constant [15 x i8] c"p:dis_reswords\00", align 1
@.str100 = private unnamed_addr constant [10 x i8] c"p:options\00", align 1
@.str101 = private unnamed_addr constant [10 x i8] c"p:modules\00", align 1
@.str102 = private unnamed_addr constant [11 x i8] c"p:dirstack\00", align 1
@.str103 = private unnamed_addr constant [10 x i8] c"p:history\00", align 1
@.str104 = private unnamed_addr constant [15 x i8] c"p:historywords\00", align 1
@.str105 = private unnamed_addr constant [11 x i8] c"p:jobtexts\00", align 1
@.str106 = private unnamed_addr constant [10 x i8] c"p:jobdirs\00", align 1
@.str107 = private unnamed_addr constant [12 x i8] c"p:jobstates\00", align 1
@.str108 = private unnamed_addr constant [12 x i8] c"p:nameddirs\00", align 1
@.str109 = private unnamed_addr constant [11 x i8] c"p:userdirs\00", align 1
@.str110 = private unnamed_addr constant [10 x i8] c"p:aliases\00", align 1
@.str111 = private unnamed_addr constant [14 x i8] c"p:dis_aliases\00", align 1
@.str112 = private unnamed_addr constant [11 x i8] c"p:galiases\00", align 1
@.str113 = private unnamed_addr constant [15 x i8] c"p:dis_galiases\00", align 1
@.str114 = private unnamed_addr constant [11 x i8] c"p:saliases\00", align 1
@.str115 = private unnamed_addr constant [15 x i8] c"p:dis_saliases\00", align 1
@init_bltinmods.features116 = private unnamed_addr constant [29 x i8*] [i8* getelementptr inbounds ([13 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str105, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str109, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str110, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str111, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str115, i32 0, i32 0), i8* null], align 4
@.str117 = private unnamed_addr constant [14 x i8] c"zsh/parameter\00", align 1
@.str118 = private unnamed_addr constant [9 x i8] c"b:echotc\00", align 1
@.str119 = private unnamed_addr constant [10 x i8] c"p:termcap\00", align 1
@init_bltinmods.features120 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str119, i32 0, i32 0), i8* null], align 4
@.str121 = private unnamed_addr constant [12 x i8] c"zsh/termcap\00", align 1
@.str122 = private unnamed_addr constant [9 x i8] c"b:echoti\00", align 1
@.str123 = private unnamed_addr constant [11 x i8] c"p:terminfo\00", align 1
@init_bltinmods.features124 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str123, i32 0, i32 0), i8* null], align 4
@.str125 = private unnamed_addr constant [13 x i8] c"zsh/terminfo\00", align 1
@.str126 = private unnamed_addr constant [10 x i8] c"b:zformat\00", align 1
@.str127 = private unnamed_addr constant [9 x i8] c"b:zstyle\00", align 1
@.str128 = private unnamed_addr constant [14 x i8] c"b:zregexparse\00", align 1
@.str129 = private unnamed_addr constant [13 x i8] c"b:zparseopts\00", align 1
@init_bltinmods.features130 = private unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str126, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str129, i32 0, i32 0), i8* null], align 4
@.str131 = private unnamed_addr constant [10 x i8] c"zsh/zutil\00", align 1
@.str132 = private unnamed_addr constant [13 x i8] c"zsh/complete\00", align 1
@.str133 = private unnamed_addr constant [10 x i8] c"b:compctl\00", align 1
@.str134 = private unnamed_addr constant [11 x i8] c"b:compcall\00", align 1
@init_bltinmods.features135 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str134, i32 0, i32 0), i8* null], align 4
@.str136 = private unnamed_addr constant [12 x i8] c"zsh/compctl\00", align 1
@.str137 = private unnamed_addr constant [8 x i8] c"zsh/zle\00", align 1
@.str138 = private unnamed_addr constant [10 x i8] c"b:compadd\00", align 1
@.str139 = private unnamed_addr constant [10 x i8] c"b:compset\00", align 1
@.str140 = private unnamed_addr constant [9 x i8] c"c:prefix\00", align 1
@.str141 = private unnamed_addr constant [9 x i8] c"c:suffix\00", align 1
@.str142 = private unnamed_addr constant [10 x i8] c"c:between\00", align 1
@.str143 = private unnamed_addr constant [8 x i8] c"c:after\00", align 1
@init_bltinmods.features144 = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str142, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str143, i32 0, i32 0), i8* null], align 4
@.str145 = private unnamed_addr constant [13 x i8] c"zsh/complist\00", align 1
@.str146 = private unnamed_addr constant [15 x i8] c"b:compdescribe\00", align 1
@.str147 = private unnamed_addr constant [16 x i8] c"b:comparguments\00", align 1
@.str148 = private unnamed_addr constant [13 x i8] c"b:compvalues\00", align 1
@.str149 = private unnamed_addr constant [12 x i8] c"b:compquote\00", align 1
@.str150 = private unnamed_addr constant [11 x i8] c"b:comptags\00", align 1
@.str151 = private unnamed_addr constant [10 x i8] c"b:comptry\00", align 1
@.str152 = private unnamed_addr constant [12 x i8] c"b:compfiles\00", align 1
@.str153 = private unnamed_addr constant [13 x i8] c"b:compgroups\00", align 1
@init_bltinmods.features154 = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([15 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str149, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str151, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str153, i32 0, i32 0), i8* null], align 4
@.str155 = private unnamed_addr constant [13 x i8] c"zsh/computil\00", align 1
@.str156 = private unnamed_addr constant [10 x i8] c"b:bindkey\00", align 1
@.str157 = private unnamed_addr constant [8 x i8] c"b:vared\00", align 1
@.str158 = private unnamed_addr constant [6 x i8] c"b:zle\00", align 1
@init_bltinmods.features159 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str156, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str158, i32 0, i32 0), i8* null], align 4
@.str160 = private unnamed_addr constant [10 x i8] c"p:widgets\00", align 1
@.str161 = private unnamed_addr constant [10 x i8] c"p:keymaps\00", align 1
@init_bltinmods.features162 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str161, i32 0, i32 0), i8* null], align 4
@.str163 = private unnamed_addr constant [17 x i8] c"zsh/zleparameter\00", align 1
@.str164 = private unnamed_addr constant [9 x i8] c"zsh/main\00", align 1
@zle_load_state = common global i32 0, align 4
@zle_entry_ptr = common global i8* (i32, i8*)* null, align 4
@4 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@compctlreadptr = global i32 (i8*, i8**, %struct.options*, i8*)* @fallback_compctlread, align 4
@.str165 = private unnamed_addr constant [54 x i8] c"option valid only in functions called from completion\00", align 1
@environ = external global i8**
@typtab = external global [256 x i16]
@5 = internal unnamed_addr constant [5 x i8] c"char\00"
@6 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@.str166 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@7 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str167 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@fdtable_size = external global i32
@8 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@9 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@10 = internal unnamed_addr constant [10 x i8] c"long long\00"
@.str168 = private unnamed_addr constant [20 x i8] c"use 'exit' to exit.\00", align 1
@.str169 = private unnamed_addr constant [24 x i8] c"use 'logout' to logout.\00", align 1
@.str170 = private unnamed_addr constant [26 x i8] c"can't open input file: %s\00", align 1
@argzero = external global i8*
@stdin = external global %struct._IO_FILE*
@11 = internal unnamed_addr constant [2 x i8] c"+\00"
@12 = internal unnamed_addr constant [4 x i8] c"int\00"
@13 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@14 = internal unnamed_addr constant [2 x i8] c"*\00"
@15 = internal unnamed_addr constant [21 x i8] c"../../src/Src/init.c\00"
@pparams = external global i8**
@.str171 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str172 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str173 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str174 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str175 = private unnamed_addr constant [3 x i8] c"RI\00", align 1
@.str176 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str177 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str178 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str179 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str180 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str181 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str182 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str183 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str184 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str185 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str186 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str187 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str188 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str189 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str190 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str191 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str192 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str193 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str194 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str195 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str196 = private unnamed_addr constant [3 x i8] c"ku\00", align 1
@.str197 = private unnamed_addr constant [3 x i8] c"kd\00", align 1
@.str198 = private unnamed_addr constant [3 x i8] c"kl\00", align 1
@.str199 = private unnamed_addr constant [3 x i8] c"kr\00", align 1
@.str200 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str201 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str202 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str203 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str204 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str205 = private unnamed_addr constant [40 x i8] c"Usage: %s [<options>] [<argument> ...]\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"\0ASpecial options:\00"
@str217 = private unnamed_addr constant [42 x i8] c"  --help     show this message, then exit\00"
@str218 = private unnamed_addr constant [48 x i8] c"  --version  show zsh version number, then exit\00"
@str219 = private unnamed_addr constant [44 x i8] c"  -b         end option processing, like --\00"
@str220 = private unnamed_addr constant [57 x i8] c"  -c         take first argument as a command to execute\00"
@str221 = private unnamed_addr constant [47 x i8] c"  -o OPTION  set an option by name (see below)\00"
@str222 = private unnamed_addr constant [58 x i8] c"\0ANormal options are named.  An option may be turned on by\00"
@str223 = private unnamed_addr constant [62 x i8] c"`-o OPTION', `--OPTION', `+o no_OPTION' or `+-no-OPTION'.  An\00"
@str224 = private unnamed_addr constant [59 x i8] c"option may be turned off by `-o no_OPTION', `--no-OPTION',\00"
@str225 = private unnamed_addr constant [61 x i8] c"`+o OPTION' or `+-OPTION'.  Options are listed below only in\00"
@str226 = private unnamed_addr constant [34 x i8] c"`--OPTION' or `--no-OPTION' form.\00"

define i32 @loop(i32 %toplevel, i32 %justonce) nounwind {
entry:
  tail call void @pushheap() nounwind
  %tobool = icmp ne i32 %toplevel, 0
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @lexsave() nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %tobool30 = icmp eq i32 %justonce, 0
  %tobool.not = xor i1 %tobool, true
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0)
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.end122
  %non_empty.0.ph = phi i32 [ %non_empty.1, %if.end122 ], [ 0, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %if.then40, %if.end35, %for.cond.outer
  tail call void @freeheap() nounwind
  %0 = load i32* @stophist, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %for.cond
  %call = tail call i32 @hend(%struct.eprog* null) nounwind
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %for.cond
  tail call void @hbegin(i32 1) nounwind
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool3 = icmp eq i8 %1, 0
  br i1 %tobool3, label %if.end14, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = tail call i32 @setblock_stdin() nounwind
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool6 = icmp eq i8 %2, 0
  %brmerge = or i1 %tobool6, %tobool.not
  br i1 %brmerge, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.then4
  %3 = load i32* @stophist, align 4, !tbaa !0
  store i32 3, i32* @stophist, align 4, !tbaa !0
  tail call void @preprompt() nounwind
  %4 = load i32* @stophist, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %4, 3
  br i1 %cmp9, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then8
  tail call void @hbegin(i32 1) nounwind
  br label %if.end12

if.else:                                          ; preds = %if.then8
  store i32 %3, i32* @stophist, align 4, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  store i32 0, i32* @errflag, align 4, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.end2, %if.end12
  store i32 0, i32* @use_exit_printed, align 4, !tbaa !0
  tail call void @intr() nounwind
  tail call void @lexinit() nounwind
  %call15 = tail call %struct.eprog* @parse_event() nounwind
  %tobool16 = icmp eq %struct.eprog* %call15, null
  br i1 %tobool16, label %if.then17, label %if.end42

if.then17:                                        ; preds = %if.end14
  %call18 = tail call i32 @hend(%struct.eprog* null) nounwind
  %5 = load i32* @tok, align 4, !tbaa !0
  %cmp19 = icmp ne i32 %5, 37
  %6 = load i32* @errflag, align 4, !tbaa !0
  %tobool22 = icmp ne i32 %6, 0
  %or.cond = or i1 %cmp19, %tobool22
  br i1 %or.cond, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %if.then17
  %cmp23 = icmp eq i32 %5, 38
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false29

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %7 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool26.not = icmp ne i8 %7, 0
  %brmerge168.not = and i1 %tobool, %tobool26.not
  %or.cond169 = and i1 %brmerge168.not, %tobool30
  br i1 %or.cond169, label %if.end32, label %for.end

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  br i1 %tobool30, label %if.end32, label %for.end

if.end32:                                         ; preds = %land.lhs.true25, %lor.lhs.false29
  %8 = load i32* @exit_pending, align 4, !tbaa !0
  %tobool33 = icmp eq i32 %8, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end32
  store i32 1, i32* @stopmsg, align 4, !tbaa !0
  %shr = ashr i32 %8, 1
  tail call void @zexit(i32 %shr, i32 0) nounwind
  %.pre = load i32* @tok, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.then34
  %9 = phi i32 [ %5, %if.end32 ], [ %.pre, %if.then34 ]
  %cmp36 = icmp ne i32 %9, 38
  %10 = load i64* @lastval, align 8, !tbaa !3
  %tobool39 = icmp ne i64 %10, 0
  %or.cond141 = or i1 %cmp36, %tobool39
  br i1 %or.cond141, label %for.cond, label %if.then40

if.then40:                                        ; preds = %if.end35
  store i64 1, i64* @lastval, align 8, !tbaa !3
  br label %for.cond

if.end42:                                         ; preds = %if.end14
  %call43 = tail call i32 @hend(%struct.eprog* %call15) nounwind
  %tobool44 = icmp eq i32 %call43, 0
  br i1 %tobool44, label %if.end89, label %if.then45

if.then45:                                        ; preds = %if.end42
  %11 = load i32* @tok, align 4, !tbaa !0
  br i1 %tobool, label %land.lhs.true47, label %if.end79

land.lhs.true47:                                  ; preds = %if.then45
  %call48 = tail call %struct.shfunc* @getshfunc(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) nounwind
  %tobool49 = icmp eq %struct.shfunc* %call48, null
  br i1 %tobool49, label %lor.lhs.false50, label %if.then53

lor.lhs.false50:                                  ; preds = %land.lhs.true47
  %12 = load %struct.hashtable** @paramtab, align 4, !tbaa !4
  %getnode = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 9
  %13 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !4
  %call51 = tail call %struct.hashnode* %13(%struct.hashtable* %12, i8* getelementptr inbounds ([18 x i8]* @.str4, i32 0, i32 0)) nounwind
  %tobool52 = icmp eq %struct.hashnode* %call51, null
  br i1 %tobool52, label %if.end79, label %if.then53

if.then53:                                        ; preds = %lor.lhs.false50, %land.lhs.true47
  %call54 = tail call %union.linkroot* @newlinklist() nounwind
  %last = getelementptr inbounds %union.linkroot* %call54, i32 0, i32 0, i32 1
  %14 = load %struct.linknode** %last, align 4, !tbaa !4
  %call55 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call54, %struct.linknode* %14, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)) nounwind
  %15 = load %struct.histent** @hist_ring, align 4, !tbaa !4
  %tobool56 = icmp eq %struct.histent* %15, null
  br i1 %tobool56, label %if.else64, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.then53
  %16 = load i64* getelementptr inbounds (%struct.histent* @curline, i32 0, i32 8), align 4, !tbaa !3
  %17 = load i64* @curhist, align 8, !tbaa !3
  %cmp58 = icmp eq i64 %16, %17
  br i1 %cmp58, label %if.then60, label %if.else64

if.then60:                                        ; preds = %land.lhs.true57
  %18 = load %struct.linknode** %last, align 4, !tbaa !4
  %nam = getelementptr inbounds %struct.histent* %15, i32 0, i32 0, i32 1
  %19 = load i8** %nam, align 4, !tbaa !4
  %call63 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call54, %struct.linknode* %18, i8* %19) nounwind
  br label %if.end68

if.else64:                                        ; preds = %if.then53, %land.lhs.true57
  %20 = load %struct.linknode** %last, align 4, !tbaa !4
  %call67 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call54, %struct.linknode* %20, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then60
  %21 = load %struct.linknode** %last, align 4, !tbaa !4
  %call71 = tail call i8* @getjobtext(%struct.eprog* %call15, i32* null) nounwind
  %call72 = tail call i8* @dupstring(i8* %call71) nounwind
  %call73 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call54, %struct.linknode* %21, i8* %call72) nounwind
  %22 = load %struct.linknode** %last, align 4, !tbaa !4
  %call76 = tail call i8* @getpermtext(%struct.eprog* %call15, i32* null, i32 0) nounwind
  %call77 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call54, %struct.linknode* %22, i8* %call76) nounwind
  %call78 = tail call i32 @callhookfunc(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), %union.linkroot* %call54, i32 1, i32* null) nounwind
  tail call void @zsfree(i8* %call76) nounwind
  store i32 0, i32* @errflag, align 4, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %lor.lhs.false50, %if.end68, %if.then45
  %23 = load i32* @stopmsg, align 4, !tbaa !0
  %tobool80 = icmp eq i32 %23, 0
  br i1 %tobool80, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end79
  %24 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 -1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb82, label %cont83

ioc_bb82:                                         ; preds = %if.then81
  %27 = sext i32 %23 to i64
  tail call void @__ioc_report_add_overflow(i32 154, i32 16, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %27, i64 -1, i8 13) nounwind
  br label %cont83

cont83:                                           ; preds = %if.then81, %ioc_bb82
  store i32 %25, i32* @stopmsg, align 4, !tbaa !0
  br label %if.end84

if.end84:                                         ; preds = %if.end79, %cont83
  tail call void @execode(%struct.eprog* %call15, i32 0, i32 0, i8* %cond) nounwind
  store i32 %11, i32* @tok, align 4, !tbaa !0
  br i1 %tobool, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end84
  store i32 0, i32* @noexitct, align 4, !tbaa !0
  br label %if.end89

if.end89:                                         ; preds = %if.end42, %if.end84, %if.then87
  %non_empty.1 = phi i32 [ 1, %if.then87 ], [ 1, %if.end84 ], [ %non_empty.0.ph, %if.end42 ]
  %28 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  %call90 = tail call i32 @ferror(%struct._IO_FILE* %28) nounwind
  %tobool91 = icmp eq i32 %call90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end89
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind
  %29 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  tail call void @clearerr(%struct._IO_FILE* %29) nounwind
  br label %if.end93

if.end93:                                         ; preds = %if.end89, %if.then92
  %30 = load i32* @subsh, align 4, !tbaa !0
  %tobool94 = icmp eq i32 %30, 0
  br i1 %tobool94, label %if.end99, label %if.then95

if.then95:                                        ; preds = %if.end93
  %31 = load i64* @lastval, align 8, !tbaa !3
  %.off166 = add i64 %31, 2147483648
  %32 = icmp ult i64 %.off166, 4294967296
  br i1 %32, label %cont97, label %ioc_bb96

ioc_bb96:                                         ; preds = %if.then95
  tail call void @__ioc_report_conversion(i32 166, i32 12, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %31, i8 1) nounwind
  br label %cont97

cont97:                                           ; preds = %ioc_bb96, %if.then95
  %conv98 = trunc i64 %31 to i32
  tail call void @exit(i32 %conv98) noreturn nounwind
  unreachable

if.end99:                                         ; preds = %if.end93
  %33 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool100 = icmp eq i8 %33, 0
  %34 = load i32* @sourcelevel, align 4, !tbaa !0
  %tobool102 = icmp ne i32 %34, 0
  %or.cond142 = or i1 %tobool100, %tobool102
  %35 = load i32* @errflag, align 4, !tbaa !0
  %tobool104 = icmp ne i32 %35, 0
  %or.cond143 = and i1 %or.cond142, %tobool104
  %36 = load i32* @retflag, align 4, !tbaa !0
  %tobool106 = icmp ne i32 %36, 0
  %or.cond144 = or i1 %or.cond143, %tobool106
  br i1 %or.cond144, label %for.end, label %if.end108

if.end108:                                        ; preds = %if.end99
  %37 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 155), align 1, !tbaa !1
  %tobool110 = icmp eq i8 %37, 0
  %brmerge171 = or i1 %tobool110, %tobool.not
  br i1 %brmerge171, label %if.end122, label %if.then113

if.then113:                                       ; preds = %if.end108
  %38 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 0), align 4, !tbaa !0
  %tobool114 = icmp eq i32 %38, 0
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.then113
  tail call void @dotrap(i32 0) nounwind
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.then115
  %39 = load i64* @lastval, align 8, !tbaa !3
  %.off = add i64 %39, 2147483648
  %40 = icmp ult i64 %.off, 4294967296
  br i1 %40, label %cont120, label %ioc_bb119

ioc_bb119:                                        ; preds = %if.end116
  tail call void @__ioc_report_conversion(i32 172, i32 12, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont120

cont120:                                          ; preds = %ioc_bb119, %if.end116
  %conv121 = trunc i64 %39 to i32
  tail call void @exit(i32 %conv121) noreturn nounwind
  unreachable

if.end122:                                        ; preds = %if.end108
  br i1 %tobool30, label %for.cond.outer, label %for.end

for.end:                                          ; preds = %if.then17, %land.lhs.true25, %lor.lhs.false29, %if.end122, %if.end99
  %41 = phi i32 [ %6, %land.lhs.true25 ], [ %6, %lor.lhs.false29 ], [ %35, %if.end122 ], [ %35, %if.end99 ], [ 0, %if.then17 ]
  %non_empty.2 = phi i32 [ %non_empty.0.ph, %land.lhs.true25 ], [ %non_empty.0.ph, %lor.lhs.false29 ], [ %non_empty.1, %if.end122 ], [ %non_empty.1, %if.end99 ], [ %non_empty.0.ph, %if.then17 ]
  br i1 %tobool, label %if.end128, label %if.then127

if.then127:                                       ; preds = %for.end
  tail call void @lexrestore() nounwind
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %for.end
  tail call void @popheap() nounwind
  %tobool129 = icmp eq i32 %41, 0
  br i1 %tobool129, label %if.end133, label %return

if.end133:                                        ; preds = %if.end128
  %tobool134 = icmp eq i32 %non_empty.2, 0
  %. = zext i1 %tobool134 to i32
  ret i32 %.

return:                                           ; preds = %if.end128
  ret i32 2
}

declare void @pushheap()

declare void @lexsave()

declare void @freeheap()

declare i32 @hend(%struct.eprog*)

declare void @hbegin(i32)

declare i32 @setblock_stdin()

declare void @preprompt()

declare void @intr()

declare void @lexinit()

declare %struct.eprog* @parse_event()

declare void @zexit(i32, i32)

declare %struct.shfunc* @getshfunc(i8*)

declare %union.linkroot* @newlinklist()

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i8* @dupstring(i8*)

declare i8* @getjobtext(%struct.eprog*, i32*)

declare i8* @getpermtext(%struct.eprog*, i32*, i32)

declare i32 @callhookfunc(i8*, %union.linkroot*, i32, i32*)

declare void @zsfree(i8*)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @execode(%struct.eprog*, i32, i32, i8*)

declare i32 @ferror(%struct._IO_FILE* nocapture) nounwind readonly

declare void @zerr(i8*, ...)

declare void @clearerr(%struct._IO_FILE* nocapture) nounwind

declare void @exit(i32) noreturn nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @dotrap(i32)

declare void @lexrestore()

declare void @popheap()

define i8* @parseopts(i8* %nam, i8*** nocapture %argvp) nounwind {
entry:
  %0 = load i8*** %argvp, align 4, !tbaa !4
  %tobool364 = icmp ne i8* %nam, null
  %1 = zext i1 %tobool364 to i32
  %lnot.ext366 = xor i32 %1, 1
  %tobool364.not = xor i1 %tobool364, true
  %tobool348 = icmp eq i8* %nam, null
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 1) to i32), i32 ptrtoint ([8 x i8]* @.str10 to i32))
  %3 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str16 to i32))
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %entry, %while.end386
  %cmd.0599 = phi i8* [ null, %entry ], [ %cmd.1.ph, %while.end386 ]
  %argv.0598 = phi i8** [ %0, %entry ], [ %incdec.ptr387, %while.end386 ]
  %4 = load i8** %argv.0598, align 4, !tbaa !4
  %tobool1 = icmp eq i8* %4, null
  br i1 %tobool1, label %doneoptions, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8* %4, align 1, !tbaa !1
  switch i8 %5, label %doneoptions [
    i8 45, label %while.body
    i8 43, label %while.body
  ]

while.body:                                       ; preds = %land.rhs, %land.rhs
  %cmp7 = icmp eq i8 %5, 45
  %conv8 = zext i1 %cmp7 to i32
  %arrayidx9 = getelementptr inbounds i8* %4, i32 1
  %6 = load i8* %arrayidx9, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %6, 0
  br i1 %tobool10, label %if.then, label %while.cond11.outer

if.then:                                          ; preds = %while.body
  store i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8** %argv.0598, align 4, !tbaa !4
  br label %while.cond11.outer

while.cond11.outer:                               ; preds = %while.body, %if.then, %if.then195
  %cmd.1.ph = phi i8* [ %incdec.ptr, %if.then195 ], [ %cmd.0599, %if.then ], [ %cmd.0599, %while.body ]
  %optionbreak.1.ph = phi i32 [ %optionbreak.1.ph541, %if.then195 ], [ 0, %if.then ], [ 0, %while.body ]
  br label %while.cond11.outer540

while.cond11.outer540:                            ; preds = %if.end184, %while.cond11.outer
  %optionbreak.1.ph541 = phi i32 [ %optionbreak.1.ph, %while.cond11.outer ], [ 1, %if.end184 ]
  br label %while.cond11

while.cond11:                                     ; preds = %if.else363, %if.then358, %if.then373, %if.else375, %if.then349, %while.cond11.outer540
  %7 = load i8** %argv.0598, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8* %7, i32 1
  store i8* %incdec.ptr, i8** %argv.0598, align 4, !tbaa !4
  %8 = load i8* %incdec.ptr, align 1, !tbaa !1
  switch i8 %8, label %if.end184 [
    i8 0, label %while.end386
    i8 45, label %if.then17
  ]

if.then17:                                        ; preds = %while.cond11
  %arrayidx19 = getelementptr inbounds i8* %7, i32 2
  %9 = load i8* %arrayidx19, align 1, !tbaa !1
  %tobool20 = icmp eq i8 %9, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then17
  %incdec.ptr22 = getelementptr inbounds i8** %argv.0598, i32 1
  br label %doneoptions

if.end23:                                         ; preds = %if.then17
  %cmp24 = icmp eq i8* %7, %4
  br i1 %cmp24, label %if.end30, label %badoptionstring

if.end30:                                         ; preds = %if.end23
  store i8* %arrayidx19, i8** %argv.0598, align 4, !tbaa !4
  %10 = extractvalue { i32, i1 } %2, 1
  br i1 %10, label %ioc_bb, label %cont33

ioc_bb:                                           ; preds = %if.end30
  tail call void @__ioc_report_sub_overflow(i32 275, i32 14, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([8 x i8]* @.str10 to i32) to i64), i8 5) nounwind
  %.pre647 = load i8** %argv.0598, align 4, !tbaa !4
  br label %cont33

cont33:                                           ; preds = %ioc_bb, %if.end30
  %11 = phi i8* [ %.pre647, %ioc_bb ], [ %arrayidx19, %if.end30 ]
  %call = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0)) nounwind
  %tobool88 = icmp eq i32 %call, 0
  br i1 %tobool88, label %if.then89, label %if.end97

if.then89:                                        ; preds = %cont33
  %call90 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0)) nounwind
  br i1 %tobool348, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.then89
  %12 = load i8** %argv.0598, align 4, !tbaa !4
  %tobool93 = icmp eq i8* %12, null
  %incdec.ptr95 = getelementptr inbounds i8** %argv.0598, i32 1
  %argv.0.incdec.ptr95 = select i1 %tobool93, i8** %argv.0598, i8** %incdec.ptr95
  br label %doneargv

if.else:                                          ; preds = %if.then89
  tail call void @exit(i32 0) noreturn nounwind
  unreachable

if.end97:                                         ; preds = %cont33
  %13 = extractvalue { i32, i1 } %3, 1
  br i1 %13, label %ioc_bb100, label %cont103

ioc_bb100:                                        ; preds = %if.end97
  tail call void @__ioc_report_sub_overflow(i32 285, i32 14, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str16 to i32) to i64), i8 5) nounwind
  %.pre648 = load i8** %argv.0598, align 4, !tbaa !4
  br label %cont103

cont103:                                          ; preds = %ioc_bb100, %if.end97
  %14 = phi i8* [ %.pre648, %ioc_bb100 ], [ %11, %if.end97 ]
  %call162 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)) nounwind
  %tobool165 = icmp eq i32 %call162, 0
  br i1 %tobool165, label %if.then166, label %for.cond

if.then166:                                       ; preds = %cont103
  %15 = load i8** @argzero, align 4, !tbaa !4
  %call.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str205, i32 0, i32 0), i8* %15) nounwind
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str, i32 0, i32 0)) nounwind
  %puts12.i = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8]* @str217, i32 0, i32 0)) nounwind
  %puts13.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str218, i32 0, i32 0)) nounwind
  %16 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 152), align 1, !tbaa !1
  %tobool.i = icmp eq i8 %16, 0
  br i1 %tobool.i, label %if.then.i, label %printhelp.exit

if.then.i:                                        ; preds = %if.then166
  %puts14.i = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str219, i32 0, i32 0)) nounwind
  br label %printhelp.exit

printhelp.exit:                                   ; preds = %if.then166, %if.then.i
  %puts15.i = tail call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str220, i32 0, i32 0)) nounwind
  %puts16.i = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str221, i32 0, i32 0)) nounwind
  %puts17.i = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str222, i32 0, i32 0)) nounwind
  %puts18.i = tail call i32 @puts(i8* getelementptr inbounds ([62 x i8]* @str223, i32 0, i32 0)) nounwind
  %puts19.i = tail call i32 @puts(i8* getelementptr inbounds ([59 x i8]* @str224, i32 0, i32 0)) nounwind
  %puts20.i = tail call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @str225, i32 0, i32 0)) nounwind
  %puts21.i = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str226, i32 0, i32 0)) nounwind
  tail call void @printoptionlist() nounwind
  br i1 %tobool348, label %if.else173, label %if.then168

if.then168:                                       ; preds = %printhelp.exit
  %17 = load i8** %argv.0598, align 4, !tbaa !4
  %tobool169 = icmp eq i8* %17, null
  %incdec.ptr171 = getelementptr inbounds i8** %argv.0598, i32 1
  %argv.0.incdec.ptr171 = select i1 %tobool169, i8** %argv.0598, i8** %incdec.ptr171
  br label %doneargv

if.else173:                                       ; preds = %printhelp.exit
  tail call void @exit(i32 0) noreturn nounwind
  unreachable

for.cond:                                         ; preds = %cont103, %for.inc
  %args.0 = phi i8* [ %incdec.ptr183, %for.inc ], [ %14, %cont103 ]
  %18 = load i8* %args.0, align 1, !tbaa !1
  switch i8 %18, label %for.inc [
    i8 0, label %longoptions.loopexit
    i8 45, label %cont181
  ]

cont181:                                          ; preds = %for.cond
  store i8 95, i8* %args.0, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %cont181
  %incdec.ptr183 = getelementptr inbounds i8* %args.0, i32 1
  br label %for.cond

if.end184:                                        ; preds = %while.cond11
  %19 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 152), align 1, !tbaa !1
  %tobool185 = icmp eq i8 %19, 0
  %cmp188 = icmp eq i8 %8, 98
  %or.cond538 = and i1 %tobool185, %cmp188
  br i1 %or.cond538, label %while.cond11.outer540, label %if.else191

if.else191:                                       ; preds = %if.end184
  switch i8 %8, label %if.else271 [
    i8 99, label %if.then195
    i8 111, label %if.then203
  ]

if.then195:                                       ; preds = %if.else191
  %20 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %and = and i8 %20, 1
  store i8 %and, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %call198 = tail call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0)) nounwind
  store i8* %call198, i8** @scriptfilename, align 4, !tbaa !4
  store i8* %call198, i8** @scriptname, align 4, !tbaa !4
  br label %while.cond11.outer

if.then203:                                       ; preds = %if.else191
  %incdec.ptr204 = getelementptr inbounds i8* %7, i32 2
  store i8* %incdec.ptr204, i8** %argv.0598, align 4, !tbaa !4
  %21 = load i8* %incdec.ptr204, align 1, !tbaa !1
  %tobool205 = icmp eq i8 %21, 0
  %incdec.ptr207 = getelementptr inbounds i8** %argv.0598, i32 1
  %incdec.ptr207.argv.0 = select i1 %tobool205, i8** %incdec.ptr207, i8** %argv.0598
  %22 = load i8** %incdec.ptr207.argv.0, align 4, !tbaa !4
  %tobool209 = icmp eq i8* %22, null
  br i1 %tobool209, label %if.then210, label %longoptions

if.then210:                                       ; preds = %if.then203
  br i1 %tobool348, label %if.else221, label %if.then216

if.then216:                                       ; preds = %if.then210
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i8* null) nounwind
  %23 = load i8** %incdec.ptr207.argv.0, align 4, !tbaa !4
  %tobool217 = icmp eq i8* %23, null
  %incdec.ptr219 = getelementptr inbounds i8** %incdec.ptr207.argv.0, i32 1
  %incdec.ptr207.argv.0.incdec.ptr219 = select i1 %tobool217, i8** %incdec.ptr207.argv.0, i8** %incdec.ptr219
  br label %doneargv

if.else221:                                       ; preds = %if.then210
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([25 x i8]* @.str18, i32 0, i32 0), i8* null) nounwind
  tail call void @exit(i32 1) noreturn nounwind
  unreachable

longoptions.loopexit:                             ; preds = %for.cond
  %.pre = load i8** %argv.0598, align 4, !tbaa !4
  br label %longoptions

longoptions:                                      ; preds = %longoptions.loopexit, %if.then203
  %24 = phi i8* [ %22, %if.then203 ], [ %.pre, %longoptions.loopexit ]
  %argv.2 = phi i8** [ %incdec.ptr207.argv.0, %if.then203 ], [ %argv.0598, %longoptions.loopexit ]
  %call223 = tail call i32 @optlookup(i8* %24) nounwind
  switch i32 %call223, label %if.else256 [
    i32 0, label %if.then225
    i32 144, label %land.lhs.true240
    i32 164, label %land.lhs.true249
    i32 45, label %land.lhs.true249
  ]

if.then225:                                       ; preds = %longoptions
  %25 = load i8** %argv.2, align 4, !tbaa !4
  br i1 %tobool348, label %if.else236, label %if.then231

if.then231:                                       ; preds = %if.then225
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([19 x i8]* @.str19, i32 0, i32 0), i8* %25) nounwind
  %26 = load i8** %argv.2, align 4, !tbaa !4
  %tobool232 = icmp eq i8* %26, null
  %incdec.ptr234 = getelementptr inbounds i8** %argv.2, i32 1
  %argv.2.incdec.ptr234 = select i1 %tobool232, i8** %argv.2, i8** %incdec.ptr234
  br label %doneargv

if.else236:                                       ; preds = %if.then225
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([19 x i8]* @.str19, i32 0, i32 0), i8* %25) nounwind
  tail call void @exit(i32 1) noreturn nounwind
  unreachable

land.lhs.true240:                                 ; preds = %longoptions
  br i1 %tobool348, label %if.then242, label %if.else256

if.then242:                                       ; preds = %land.lhs.true240
  store i32 %conv8, i32* @restricted, align 4, !tbaa !0
  br label %while.end386

land.lhs.true249:                                 ; preds = %longoptions, %longoptions
  br i1 %tobool348, label %if.else256, label %if.then251

if.then251:                                       ; preds = %land.lhs.true249
  %27 = load i8** %argv.2, align 4, !tbaa !4
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str20, i32 0, i32 0), i8* %27) nounwind
  br label %while.end386

if.else256:                                       ; preds = %land.lhs.true249, %land.lhs.true240, %longoptions
  %call258 = tail call i32 @dosetopt(i32 %call223, i32 %conv8, i32 %lnot.ext366) nounwind
  %tobool259 = icmp eq i32 %call258, 0
  %brmerge = or i1 %tobool259, %tobool364.not
  br i1 %brmerge, label %while.end386, label %if.then262

if.then262:                                       ; preds = %if.else256
  %28 = load i8** %argv.2, align 4, !tbaa !4
  br i1 %tobool364, label %if.then264, label %if.else265

if.then264:                                       ; preds = %if.then262
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str20, i32 0, i32 0), i8* %28) nounwind
  br label %while.end386

if.else265:                                       ; preds = %if.then262
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([24 x i8]* @.str20, i32 0, i32 0), i8* %28) nounwind
  br label %while.end386

if.else271:                                       ; preds = %if.else191
  %29 = icmp sgt i8 %8, -1
  br i1 %29, label %cont273, label %ioc_bb272

ioc_bb272:                                        ; preds = %if.else271
  %30 = sext i8 %8 to i64
  tail call void @__ioc_report_conversion(i32 358, i32 59, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %30, i8 1) nounwind
  br label %cont273

cont273:                                          ; preds = %ioc_bb272, %if.else271
  %conv274 = zext i8 %8 to i32
  %call275 = tail call i16** @__ctype_b_loc() nounwind readnone
  %31 = load i16** %call275, align 4, !tbaa !4
  %arrayidx276 = getelementptr inbounds i16* %31, i32 %conv274
  %32 = load i16* %arrayidx276, align 2, !tbaa !5
  %and288 = and i16 %32, 8192
  %tobool289 = icmp eq i16 %and288, 0
  br i1 %tobool289, label %if.else327, label %while.cond291

while.cond291:                                    ; preds = %cont297, %cont273
  %33 = load i8** %argv.0598, align 4, !tbaa !4
  %incdec.ptr292 = getelementptr inbounds i8* %33, i32 1
  store i8* %incdec.ptr292, i8** %argv.0598, align 4, !tbaa !4
  %34 = load i8* %incdec.ptr292, align 1, !tbaa !1
  %tobool293 = icmp eq i8 %34, 0
  br i1 %tobool293, label %while.end386, label %while.body294

while.body294:                                    ; preds = %while.cond291
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %cont297, label %ioc_bb296

ioc_bb296:                                        ; preds = %while.body294
  %36 = sext i8 %34 to i64
  tail call void @__ioc_report_conversion(i32 361, i32 60, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %36, i8 1) nounwind
  br label %cont297

cont297:                                          ; preds = %ioc_bb296, %while.body294
  %conv298 = zext i8 %34 to i32
  %37 = load i16** %call275, align 4, !tbaa !4
  %arrayidx300 = getelementptr inbounds i16* %37, i32 %conv298
  %38 = load i16* %arrayidx300, align 2, !tbaa !5
  %and312 = and i16 %38, 8192
  %tobool313 = icmp eq i16 %and312, 0
  br i1 %tobool313, label %badoptionstring, label %while.cond291

badoptionstring:                                  ; preds = %if.end23, %cont297
  br i1 %tobool348, label %if.else325, label %if.then320

if.then320:                                       ; preds = %badoptionstring
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str21, i32 0, i32 0), i8* %4) nounwind
  %39 = load i8** %argv.0598, align 4, !tbaa !4
  %tobool321 = icmp eq i8* %39, null
  %incdec.ptr323 = getelementptr inbounds i8** %argv.0598, i32 1
  %argv.0.incdec.ptr323 = select i1 %tobool321, i8** %argv.0598, i8** %incdec.ptr323
  br label %doneargv

if.else325:                                       ; preds = %badoptionstring
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([24 x i8]* @.str21, i32 0, i32 0), i8* %4) nounwind
  tail call void @exit(i32 1) noreturn nounwind
  unreachable

if.else327:                                       ; preds = %cont273
  %40 = load i8** %argv.0598, align 4, !tbaa !4
  %41 = load i8* %40, align 1, !tbaa !1
  %call328 = tail call i32 @optlookupc(i8 signext %41) nounwind
  switch i32 %call328, label %if.else363 [
    i32 0, label %if.then330
    i32 144, label %land.lhs.true347
    i32 164, label %land.lhs.true356
    i32 45, label %land.lhs.true356
  ]

if.then330:                                       ; preds = %if.else327
  %42 = load i8** %argv.0598, align 4, !tbaa !4
  %43 = load i8* %42, align 1, !tbaa !1
  %conv333 = sext i8 %43 to i32
  br i1 %tobool348, label %if.else343, label %if.then338

if.then338:                                       ; preds = %if.then330
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([16 x i8]* @.str22, i32 0, i32 0), i32 %conv333) nounwind
  %44 = load i8** %argv.0598, align 4, !tbaa !4
  %tobool339 = icmp eq i8* %44, null
  %incdec.ptr341 = getelementptr inbounds i8** %argv.0598, i32 1
  %argv.0.incdec.ptr341 = select i1 %tobool339, i8** %argv.0598, i8** %incdec.ptr341
  br label %doneargv

if.else343:                                       ; preds = %if.then330
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str22, i32 0, i32 0), i32 %conv333) nounwind
  tail call void @exit(i32 1) noreturn nounwind
  unreachable

land.lhs.true347:                                 ; preds = %if.else327
  br i1 %tobool348, label %if.then349, label %if.else363

if.then349:                                       ; preds = %land.lhs.true347
  store i32 %conv8, i32* @restricted, align 4, !tbaa !0
  br label %while.cond11

land.lhs.true356:                                 ; preds = %if.else327, %if.else327
  br i1 %tobool348, label %if.else363, label %if.then358

if.then358:                                       ; preds = %land.lhs.true356
  %45 = load i8** %argv.0598, align 4, !tbaa !4
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str20, i32 0, i32 0), i8* %45) nounwind
  br label %while.cond11

if.else363:                                       ; preds = %land.lhs.true356, %land.lhs.true347, %if.else327
  %call367 = tail call i32 @dosetopt(i32 %call328, i32 %conv8, i32 %lnot.ext366) nounwind
  %tobool368 = icmp eq i32 %call367, 0
  %brmerge539 = or i1 %tobool368, %tobool364.not
  br i1 %brmerge539, label %while.cond11, label %if.then371

if.then371:                                       ; preds = %if.else363
  %46 = load i8** %argv.0598, align 4, !tbaa !4
  %47 = load i8* %46, align 1, !tbaa !1
  %conv374 = sext i8 %47 to i32
  br i1 %tobool364, label %if.then373, label %if.else375

if.then373:                                       ; preds = %if.then371
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %conv374) nounwind
  br label %while.cond11

if.else375:                                       ; preds = %if.then371
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([25 x i8]* @.str23, i32 0, i32 0), i32 %conv374) nounwind
  br label %while.cond11

while.end386:                                     ; preds = %while.cond291, %while.cond11, %if.else256, %if.then251, %if.then264, %if.else265, %if.then242
  %argv.3 = phi i8** [ %argv.2, %if.then251 ], [ %argv.2, %if.then264 ], [ %argv.2, %if.else265 ], [ %argv.2, %if.else256 ], [ %argv.2, %if.then242 ], [ %argv.0598, %while.cond11 ], [ %argv.0598, %while.cond291 ]
  %incdec.ptr387 = getelementptr inbounds i8** %argv.3, i32 1
  %tobool = icmp eq i32 %optionbreak.1.ph541, 0
  br i1 %tobool, label %land.lhs.true, label %doneoptions

doneoptions:                                      ; preds = %land.rhs, %land.lhs.true, %while.end386, %if.then21
  %argv.4 = phi i8** [ %incdec.ptr22, %if.then21 ], [ %incdec.ptr387, %while.end386 ], [ %argv.0598, %land.lhs.true ], [ %argv.0598, %land.rhs ]
  %cmd.2 = phi i8* [ %cmd.1.ph, %if.then21 ], [ %cmd.1.ph, %while.end386 ], [ %cmd.0599, %land.lhs.true ], [ %cmd.0599, %land.rhs ]
  %tobool389 = icmp eq i8* %cmd.2, null
  br i1 %tobool389, label %doneargv, label %if.then390

if.then390:                                       ; preds = %doneoptions
  %48 = load i8** %argv.4, align 4, !tbaa !4
  %tobool391 = icmp eq i8* %48, null
  br i1 %tobool391, label %if.then392, label %if.end404

if.then392:                                       ; preds = %if.then390
  br i1 %tobool348, label %if.else403, label %if.then398

if.then398:                                       ; preds = %if.then392
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([26 x i8]* @.str24, i32 0, i32 0), i8* %cmd.2) nounwind
  %49 = load i8** %argv.4, align 4, !tbaa !4
  %tobool399 = icmp eq i8* %49, null
  %incdec.ptr401 = getelementptr inbounds i8** %argv.4, i32 1
  %argv.4.incdec.ptr401 = select i1 %tobool399, i8** %argv.4, i8** %incdec.ptr401
  br label %doneargv

if.else403:                                       ; preds = %if.then392
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([26 x i8]* @.str24, i32 0, i32 0), i8* %cmd.2) nounwind
  tail call void @exit(i32 1) noreturn nounwind
  unreachable

if.end404:                                        ; preds = %if.then390
  %incdec.ptr405 = getelementptr inbounds i8** %argv.4, i32 1
  br label %doneargv

doneargv:                                         ; preds = %if.then398, %if.then338, %if.then320, %if.then231, %if.then216, %if.then168, %if.then92, %doneoptions, %if.end404
  %argv.5 = phi i8** [ %incdec.ptr405, %if.end404 ], [ %argv.4, %doneoptions ], [ %argv.0.incdec.ptr95, %if.then92 ], [ %argv.0.incdec.ptr171, %if.then168 ], [ %incdec.ptr207.argv.0.incdec.ptr219, %if.then216 ], [ %argv.2.incdec.ptr234, %if.then231 ], [ %argv.0.incdec.ptr323, %if.then320 ], [ %argv.0.incdec.ptr341, %if.then338 ], [ %argv.4.incdec.ptr401, %if.then398 ]
  %cmd.3 = phi i8* [ %48, %if.end404 ], [ null, %doneoptions ], [ %cmd.1.ph, %if.then92 ], [ %cmd.1.ph, %if.then168 ], [ %cmd.1.ph, %if.then216 ], [ %cmd.1.ph, %if.then231 ], [ %cmd.1.ph, %if.then320 ], [ %cmd.1.ph, %if.then338 ], [ %cmd.2, %if.then398 ]
  store i8** %argv.5, i8*** %argvp, align 4, !tbaa !4
  ret i8* %cmd.3
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @printf(i8* nocapture, ...) nounwind

declare i8* @ztrdup(i8*)

declare void @zwarnnam(i8*, i8*, ...)

declare i32 @optlookup(i8*)

declare i32 @dosetopt(i32, i32, i32)

declare i16** @__ctype_b_loc() nounwind readnone

declare i32 @optlookupc(i8 signext)

define void @init_io() nounwind {
entry:
  %0 = load %struct._IO_FILE** @stdout, align 4, !tbaa !4
  %call = tail call i32 @setvbuf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8192 x i8]* @init_io.outbuf, i32 0, i32 0), i32 0, i32 8192) nounwind
  %1 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  %call3 = tail call i32 @setvbuf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([8192 x i8]* @init_io.errbuf, i32 0, i32 0), i32 0, i32 8192) nounwind
  %2 = load %struct._IO_FILE** @shout, align 4, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  %cmp = icmp eq %struct._IO_FILE* %2, %3
  br i1 %cmp, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @fclose(%struct._IO_FILE* %2) nounwind
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then4
  store %struct._IO_FILE* null, %struct._IO_FILE** @shout, align 4, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  %4 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %4, -1
  br i1 %cmp9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 @zclose(i32 %4) nounwind
  store i32 -1, i32* @SHTTY, align 4, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end6, %if.then10
  %5 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  store %struct._IO_FILE* %5, %struct._IO_FILE** @xtrerr, align 4, !tbaa !4
  %call15 = tail call i32 @isatty(i32 0) nounwind
  %tobool16 = icmp eq i32 %call15, 0
  br i1 %tobool16, label %if.end45thread-pre-split, label %if.then17

if.then17:                                        ; preds = %if.end14
  %6 = load i8** @ttystrname, align 4, !tbaa !4
  tail call void @zsfree(i8* %6) nounwind
  %call18 = tail call i8* @ttyname(i32 0) nounwind
  %call19 = tail call i8* @ztrdup(i8* %call18) nounwind
  store i8* %call19, i8** @ttystrname, align 4, !tbaa !4
  %tobool20 = icmp eq i8* %call19, null
  br i1 %tobool20, label %if.end34, label %if.then21

if.then21:                                        ; preds = %if.then17
  %call22 = tail call i32 (i8*, i32, ...)* @open64(i8* %call19, i32 258) nounwind
  %call23 = tail call i32 @movefd(i32 %call22) nounwind
  store i32 %call23, i32* @SHTTY, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %call23, -1
  br i1 %cmp26, label %land.lhs.true, label %if.end45thread-pre-split

land.lhs.true:                                    ; preds = %if.then21
  %call27 = tail call i32* @__errno_location() nounwind readnone
  %7 = load i32* %call27, align 4, !tbaa !0
  %cmp28 = icmp eq i32 %7, 16
  br i1 %cmp28, label %cont31, label %if.end34

cont31:                                           ; preds = %land.lhs.true
  %call32 = tail call i32 (i32, i32, ...)* @ioctl(i32 0, i32 21517, i32 0) nounwind
  br label %if.end34

if.end34:                                         ; preds = %if.then17, %land.lhs.true, %cont31
  %.pr = load i32* @SHTTY, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %.pr, -1
  br i1 %cmp37, label %land.lhs.true38, label %if.else

land.lhs.true38:                                  ; preds = %if.end34
  %call39 = tail call i32 (i32, i32, ...)* @fcntl(i32 0, i32 3, i32 0) nounwind
  %and = and i32 %call39, 2
  %cmp40 = icmp eq i32 %and, 0
  br i1 %cmp40, label %if.end45thread-pre-split, label %if.then41

if.then41:                                        ; preds = %land.lhs.true38
  %call42 = tail call i32 @dup(i32 0) nounwind
  %call43 = tail call i32 @movefd(i32 %call42) nounwind
  store i32 %call43, i32* @SHTTY, align 4, !tbaa !0
  br label %if.end45

if.end45thread-pre-split:                         ; preds = %land.lhs.true38, %if.end14, %if.then21
  %.pr126 = load i32* @SHTTY, align 4, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %if.end45thread-pre-split, %if.then41
  %8 = phi i32 [ %.pr126, %if.end45thread-pre-split ], [ %call43, %if.then41 ]
  %cmp48 = icmp eq i32 %8, -1
  br i1 %cmp48, label %land.lhs.true49, label %if.end65

land.lhs.true49:                                  ; preds = %if.end45
  %call50 = tail call i32 @isatty(i32 1) nounwind
  %tobool51 = icmp eq i32 %call50, 0
  br i1 %tobool51, label %if.end65, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %call53 = tail call i32 (i32, i32, ...)* @fcntl(i32 1, i32 3, i32 0) nounwind
  %and54 = and i32 %call53, 2
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.end65, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %call57 = tail call i32 @dup(i32 1) nounwind
  %call58 = tail call i32 @movefd(i32 %call57) nounwind
  store i32 %call58, i32* @SHTTY, align 4, !tbaa !0
  %cmp61 = icmp eq i32 %call58, -1
  br i1 %cmp61, label %land.lhs.true69, label %if.then62

if.then62:                                        ; preds = %land.lhs.true56
  %9 = load i8** @ttystrname, align 4, !tbaa !4
  tail call void @zsfree(i8* %9) nounwind
  %call63 = tail call i8* @ttyname(i32 1) nounwind
  %call64 = tail call i8* @ztrdup(i8* %call63) nounwind
  store i8* %call64, i8** @ttystrname, align 4, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true52, %land.lhs.true49, %if.then62, %if.end45
  %.pr128.pr = load i32* @SHTTY, align 4, !tbaa !0
  %cmp68 = icmp eq i32 %.pr128.pr, -1
  br i1 %cmp68, label %land.lhs.true69, label %if.else

land.lhs.true69:                                  ; preds = %land.lhs.true56, %if.end65
  %call70 = tail call i32 (i8*, i32, ...)* @open64(i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0), i32 258) nounwind
  %call71 = tail call i32 @movefd(i32 %call70) nounwind
  store i32 %call71, i32* @SHTTY, align 4, !tbaa !0
  %cmp74 = icmp eq i32 %call71, -1
  %.pre137 = load i8** @ttystrname, align 4, !tbaa !4
  br i1 %cmp74, label %if.then82, label %if.end78

if.end78:                                         ; preds = %land.lhs.true69
  tail call void @zsfree(i8* %.pre137) nounwind
  %10 = load i32* @SHTTY, align 4, !tbaa !0
  %call76 = tail call i8* @ttyname(i32 %10) nounwind
  %call77 = tail call i8* @ztrdup(i8* %call76) nounwind
  store i8* %call77, i8** @ttystrname, align 4, !tbaa !4
  %.pr130 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp81 = icmp eq i32 %.pr130, -1
  br i1 %cmp81, label %if.then82, label %if.else

if.then82:                                        ; preds = %land.lhs.true69, %if.end78
  %11 = phi i8* [ %call77, %if.end78 ], [ %.pre137, %land.lhs.true69 ]
  tail call void @zsfree(i8* %11) nounwind
  %call83 = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call83, i8** @ttystrname, align 4, !tbaa !4
  br label %if.end95

if.else:                                          ; preds = %if.end34, %if.end65, %if.end78
  %12 = phi i32 [ %.pr130, %if.end78 ], [ %.pr128.pr, %if.end65 ], [ %.pr, %if.end34 ]
  %call84 = tail call i32 (i32, i32, ...)* @fcntl(i32 %12, i32 1, i32 0) nounwind
  %cmp87 = icmp eq i32 %call84, -1
  br i1 %cmp87, label %if.end90, label %if.then88

if.then88:                                        ; preds = %if.else
  %or = or i32 %call84, 1
  %13 = load i32* @SHTTY, align 4, !tbaa !0
  %call89 = tail call i32 (i32, i32, ...)* @fcntl(i32 %13, i32 2, i32 %or) nounwind
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then88
  %14 = load i8** @ttystrname, align 4, !tbaa !4
  %tobool91 = icmp eq i8* %14, null
  br i1 %tobool91, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end90
  %call93 = tail call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0)) nounwind
  store i8* %call93, i8** @ttystrname, align 4, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %if.end90, %if.then92, %if.then82
  %15 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool96 = icmp eq i8 %15, 0
  br i1 %tobool96, label %cont106, label %if.then97

if.then97:                                        ; preds = %if.end95
  %16 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %16, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then97
  %17 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  store %struct._IO_FILE* %17, %struct._IO_FILE** @shout, align 4, !tbaa !4
  br label %init_shout.exit

if.end.i:                                         ; preds = %if.then97
  %call.i = tail call %struct._IO_FILE* @fdopen(i32 %16, i8* getelementptr inbounds ([2 x i8]* @.str26, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %call.i, %struct._IO_FILE** @shout, align 4, !tbaa !4
  %call3.i = tail call i32 @setvbuf(%struct._IO_FILE* %call.i, i8* getelementptr inbounds ([8192 x i8]* @init_shout.shoutbuf, i32 0, i32 0), i32 0, i32 8192) nounwind
  tail call void @gettyinfo(%struct.ttyinfo* @shttyinfo) nounwind
  %.pre = load i32* @SHTTY, align 4, !tbaa !0
  %.pre136 = load %struct._IO_FILE** @shout, align 4, !tbaa !4
  %phitmp = icmp ne i32 %.pre, 0
  br label %init_shout.exit

init_shout.exit:                                  ; preds = %if.then.i, %if.end.i
  %18 = phi %struct._IO_FILE* [ %17, %if.then.i ], [ %.pre136, %if.end.i ]
  %19 = phi i1 [ true, %if.then.i ], [ %phitmp, %if.end.i ]
  %tobool99 = icmp ne %struct._IO_FILE* %18, null
  %or.cond = and i1 %19, %tobool99
  br i1 %or.cond, label %if.end107, label %cont102

cont102:                                          ; preds = %init_shout.exit
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167), align 1, !tbaa !1
  br label %if.end107

cont106:                                          ; preds = %if.end95
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167), align 1, !tbaa !1
  br label %if.end107

if.end107:                                        ; preds = %cont102, %init_shout.exit, %cont106
  %call108 = tail call i32 @getpid() nounwind
  %conv = sext i32 %call108 to i64
  store i64 %conv, i64* @mypid, align 8, !tbaa !3
  %20 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool110 = icmp eq i8 %20, 0
  %21 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp114 = icmp eq i32 %21, -1
  %or.cond124 = or i1 %tobool110, %cmp114
  br i1 %or.cond124, label %cont120, label %if.then116

if.then116:                                       ; preds = %if.end107
  %call117 = tail call i32 @getpgrp() nounwind
  store i32 %call117, i32* @origpgrp, align 4, !tbaa !0
  tail call void @acquire_pgrp() nounwind
  br label %if.end121

cont120:                                          ; preds = %if.end107
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  br label %if.end121

if.end121:                                        ; preds = %cont120, %if.then116
  ret void
}

declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i32) nounwind

declare i32 @fclose(%struct._IO_FILE* nocapture) nounwind

declare i32 @zclose(i32)

declare i32 @isatty(i32) nounwind

declare i8* @ttyname(i32) nounwind

declare i32 @movefd(i32)

declare i32 @open64(i8*, i32, ...)

declare i32* @__errno_location() nounwind readnone

declare i32 @ioctl(i32, i32, ...) nounwind

declare i32 @fcntl(i32, i32, ...)

declare i32 @dup(i32) nounwind

define void @init_shout() nounwind {
entry:
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  store %struct._IO_FILE* %1, %struct._IO_FILE** @shout, align 4, !tbaa !4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @fdopen(i32 %0, i8* getelementptr inbounds ([2 x i8]* @.str26, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %call, %struct._IO_FILE** @shout, align 4, !tbaa !4
  %call3 = tail call i32 @setvbuf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([8192 x i8]* @init_shout.shoutbuf, i32 0, i32 0), i32 0, i32 8192) nounwind
  tail call void @gettyinfo(%struct.ttyinfo* @shttyinfo) nounwind
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @getpid() nounwind

declare i32 @getpgrp() nounwind

declare void @acquire_pgrp()

declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture) nounwind

declare void @gettyinfo(%struct.ttyinfo*)

define i8* @tccap_get_name(i32 %cap) nounwind readnone {
entry:
  %cmp = icmp sgt i32 %cap, 33
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [34 x i8*]* @tccapnams, i32 0, i32 %cap
  %0 = load i8** %arrayidx, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0), %entry ]
  ret i8* %retval.0
}

define i32 @init_term() nounwind {
entry:
  %tbuf = alloca [1024 x i8], align 1
  %pp = alloca i8*, align 4
  %0 = load i8** @term, align 4, !tbaa !4
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32* @termflags, align 4, !tbaa !0
  %or = or i32 %2, 2
  store i32 %or, i32* @termflags, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 1) to i32), i32 ptrtoint ([6 x i8]* @.str27 to i32))
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %ioc_bb, label %cont2

ioc_bb:                                           ; preds = %if.end
  call void @__ioc_report_sub_overflow(i32 621, i32 8, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([6 x i8]* @.str27 to i32) to i64), i8 5) nounwind
  %.pre = load i8** @term, align 4, !tbaa !4
  br label %cont2

cont2:                                            ; preds = %ioc_bb, %if.end
  %5 = phi i8* [ %.pre, %ioc_bb ], [ %0, %if.end ]
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0)) nounwind
  %tobool51 = icmp eq i32 %call, 0
  br i1 %tobool51, label %cont54, label %if.end55

cont54:                                           ; preds = %cont2
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167), align 1, !tbaa !1
  br label %if.end55

if.end55:                                         ; preds = %cont2, %cont54
  %call56 = call i32 @tgetent(i8* null, i8* %5) nounwind
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end55
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool60 = icmp eq i8 %6, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then59
  %7 = load i8** @term, align 4, !tbaa !4
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([38 x i8]* @.str28, i32 0, i32 0), i8* %7) nounwind
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then61
  store i32 0, i32* @errflag, align 4, !tbaa !0
  %8 = load i32* @termflags, align 4, !tbaa !0
  %or63 = or i32 %8, 1
  store i32 %or63, i32* @termflags, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.end55
  %9 = load i32* @termflags, align 4, !tbaa !0
  %and64 = and i32 %9, -4
  store i32 %and64, i32* @termflags, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [1024 x i8]* %tbuf, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %if.else, %for.cond.backedge
  %t0.0152 = phi i32 [ 0, %if.else ], [ %29, %for.cond.backedge ]
  store i8* %arraydecay, i8** %pp, align 4, !tbaa !4
  %arrayidx67 = getelementptr inbounds [34 x i8*]* @tcstr, i32 0, i32 %t0.0152
  %10 = load i8** %arrayidx67, align 4, !tbaa !4
  call void @zsfree(i8* %10) nounwind
  %arrayidx68 = getelementptr inbounds [34 x i8*]* @tccapnams, i32 0, i32 %t0.0152
  %11 = load i8** %arrayidx68, align 4, !tbaa !4
  %call69 = call i8* @tgetstr(i8* %11, i8** %pp) nounwind
  store i8* %call69, i8** %pp, align 4, !tbaa !4
  %tobool70 = icmp eq i8* %call69, null
  br i1 %tobool70, label %if.then71, label %if.else74

if.then71:                                        ; preds = %for.body
  store i8* null, i8** %arrayidx67, align 4, !tbaa !4
  %arrayidx73 = getelementptr inbounds [34 x i32]* @tclen, i32 0, i32 %t0.0152
  store i32 0, i32* %arrayidx73, align 4, !tbaa !0
  br label %for.inc

if.else74:                                        ; preds = %for.body
  %call75 = call i32 @strlen(i8* %call69) nounwind readonly
  %12 = icmp sgt i32 %call75, -1
  br i1 %12, label %cont77, label %ioc_bb76

ioc_bb76:                                         ; preds = %if.else74
  %13 = zext i32 %call75 to i64
  call void @__ioc_report_conversion(i32 648, i32 21, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %13, i8 0) nounwind
  br label %cont77

cont77:                                           ; preds = %ioc_bb76, %if.else74
  %arrayidx78 = getelementptr inbounds [34 x i32]* @tclen, i32 0, i32 %t0.0152
  store i32 %call75, i32* %arrayidx78, align 4, !tbaa !0
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call75, i32 1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb80, label %cont81

ioc_bb80:                                         ; preds = %cont77
  %17 = sext i32 %call75 to i64
  call void @__ioc_report_add_overflow(i32 649, i32 49, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 13) nounwind
  br label %cont81

cont81:                                           ; preds = %cont77, %ioc_bb80
  %18 = icmp sgt i32 %15, -1
  br i1 %18, label %cont83, label %ioc_bb82

ioc_bb82:                                         ; preds = %cont81
  %19 = sext i32 %15 to i64
  call void @__ioc_report_conversion(i32 649, i32 38, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont83

cont83:                                           ; preds = %ioc_bb82, %cont81
  %call84 = call i8* @zalloc(i32 %15) nounwind
  store i8* %call84, i8** %arrayidx67, align 4, !tbaa !4
  %20 = load i8** %pp, align 4, !tbaa !4
  %21 = load i32* %arrayidx78, align 4, !tbaa !0
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb88, label %cont89

ioc_bb88:                                         ; preds = %cont83
  %25 = sext i32 %21 to i64
  call void @__ioc_report_add_overflow(i32 650, i32 40, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %cont83, %ioc_bb88
  %26 = icmp sgt i32 %23, -1
  br i1 %26, label %cont92, label %ioc_bb91

ioc_bb91:                                         ; preds = %cont89
  %27 = sext i32 %23 to i64
  call void @__ioc_report_conversion(i32 650, i32 29, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont92

cont92:                                           ; preds = %ioc_bb91, %cont89
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call84, i8* %20, i32 %23, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.then71, %cont92
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0152, i32 1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb94, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb94
  %cmp65 = icmp eq i32 %29, 34
  br i1 %cmp65, label %for.end, label %for.body

ioc_bb94:                                         ; preds = %for.inc
  %31 = sext i32 %t0.0152 to i64
  call void @__ioc_report_add_overflow(i32 641, i32 30, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  %call96 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0)) nounwind
  store i32 %call96, i32* @hasam, align 4, !tbaa !0
  %call97 = call i32 @tgetflag(i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0)) nounwind
  store i32 %call97, i32* @hasxn, align 4, !tbaa !0
  %call98 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)) nounwind
  store i32 %call98, i32* @tclines, align 4, !tbaa !0
  %call99 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)) nounwind
  store i32 %call99, i32* @tccolumns, align 4, !tbaa !0
  %call100 = call i32 @tgetnum(i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0)) nounwind
  store i32 %call100, i32* @tccolours, align 4, !tbaa !0
  %32 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 5), align 4, !tbaa !0
  %tobool101 = icmp eq i32 %32, 0
  br i1 %tobool101, label %if.else104, label %if.then102

if.then102:                                       ; preds = %for.end
  %33 = load i32* @termflags, align 4, !tbaa !0
  %and103 = and i32 %33, -5
  br label %if.end106

if.else104:                                       ; preds = %for.end
  %34 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 5), align 4, !tbaa !4
  call void @zsfree(i8* %34) nounwind
  store i8* null, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 5), align 4, !tbaa !4
  %35 = load i32* @termflags, align 4, !tbaa !0
  %or105 = or i32 %35, 4
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  %storemerge = phi i32 [ %or105, %if.else104 ], [ %and103, %if.then102 ]
  store i32 %storemerge, i32* @termflags, align 4
  %36 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 31), align 4, !tbaa !0
  %tobool107 = icmp eq i32 %36, 0
  br i1 %tobool107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end106
  %37 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 31), align 4, !tbaa !4
  call void @zsfree(i8* %37) nounwind
  %call109 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0)) nounwind
  store i8* %call109, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 31), align 4, !tbaa !4
  store i32 1, i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 31), align 4, !tbaa !0
  br label %if.end110

if.end110:                                        ; preds = %if.end106, %if.then108
  %38 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 1), align 4, !tbaa !0
  %tobool111 = icmp eq i32 %38, 0
  br i1 %tobool111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end110
  %39 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 1), align 4, !tbaa !4
  call void @zsfree(i8* %39) nounwind
  %40 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 31), align 4, !tbaa !4
  %call113 = call i8* @ztrdup(i8* %40) nounwind
  store i8* %call113, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 1), align 4, !tbaa !4
  %41 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 31), align 4, !tbaa !0
  store i32 %41, i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 1), align 4, !tbaa !0
  br label %if.end114

if.end114:                                        ; preds = %if.end110, %if.then112
  %42 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 29), align 4, !tbaa !0
  %tobool115 = icmp eq i32 %42, 0
  %43 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 30), align 4, !tbaa !0
  %tobool117 = icmp ne i32 %43, 0
  %or.cond = or i1 %tobool115, %tobool117
  br i1 %or.cond, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end114
  store i32 0, i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 29), align 4, !tbaa !0
  %44 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 29), align 4, !tbaa !4
  call void @zsfree(i8* %44) nounwind
  store i8* null, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 29), align 4, !tbaa !4
  br label %if.end119

if.end119:                                        ; preds = %if.end114, %if.then118
  %45 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 7), align 4, !tbaa !0
  %tobool120 = icmp eq i32 %45, 0
  br i1 %tobool120, label %if.end127, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %if.end119
  %46 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 7), align 4, !tbaa !4
  %47 = load i8* %46, align 1, !tbaa !1
  %cmp124 = icmp eq i8 %47, 10
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %land.lhs.true121
  store i32 0, i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 7), align 4, !tbaa !0
  call void @zsfree(i8* %46) nounwind
  store i8* null, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 7), align 4, !tbaa !4
  br label %if.end127

if.end127:                                        ; preds = %if.end119, %if.then126, %land.lhs.true121
  %48 = load i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 0), align 4, !tbaa !0
  %tobool128 = icmp eq i32 %48, 0
  br i1 %tobool128, label %if.then129, label %return

if.then129:                                       ; preds = %if.end127
  %49 = load i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 0), align 4, !tbaa !4
  call void @zsfree(i8* %49) nounwind
  %call130 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)) nounwind
  store i8* %call130, i8** getelementptr inbounds ([34 x i8*]* @tcstr, i32 0, i32 0), align 4, !tbaa !4
  store i32 1, i32* getelementptr inbounds ([34 x i32]* @tclen, i32 0, i32 0), align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then129, %if.end127, %if.end62, %if.then
  %retval.0 = phi i32 [ 0, %if.end62 ], [ 0, %if.then ], [ 1, %if.end127 ], [ 1, %if.then129 ]
  ret i32 %retval.0
}

declare i32 @tgetent(i8*, i8*)

declare i8* @tgetstr(i8*, i8**)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i8* @zalloc(i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @tgetflag(i8*)

declare i32 @tgetnum(i8*)

define void @setupvals() nounwind {
entry:
  %dummy_tz = alloca %struct.timezone, align 4
  %close_fds = alloca [10 x i32], align 4
  %tmppipe = alloca [2 x i32], align 4
  %0 = bitcast [10 x i32]* %close_fds to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 40, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [2 x i32]* %tmppipe, i32 0, i32 0
  %call = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.cond.preheader, label %cont45

while.cond.preheader:                             ; preds = %entry
  %arrayidx9 = getelementptr inbounds [2 x i32]* %tmppipe, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end26, %while.cond.preheader
  %i.0300 = phi i32 [ -1, %while.cond.preheader ], [ %j.0.i.0, %if.end26 ]
  %1 = load i32* %arraydecay, align 4, !tbaa !0
  %cmp6 = icmp slt i32 %i.0300, %1
  br i1 %cmp6, label %if.end20, label %if.else

if.else:                                          ; preds = %while.body
  %2 = load i32* %arrayidx9, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %i.0300, %2
  br i1 %cmp10, label %if.end20, label %if.else13

if.else13:                                        ; preds = %if.else
  %call14 = call i32 @dup(i32 0) nounwind
  %cmp17 = icmp eq i32 %call14, -1
  br i1 %cmp17, label %while.end, label %if.end20

if.end20:                                         ; preds = %if.else, %while.body, %if.else13
  %j.0 = phi i32 [ %call14, %if.else13 ], [ %1, %while.body ], [ %2, %if.else ]
  %cmp21 = icmp slt i32 %j.0, 10
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end20
  %arrayidx23 = getelementptr inbounds [10 x i32]* %close_fds, i32 0, i32 %j.0
  store i32 1, i32* %arrayidx23, align 4, !tbaa !0
  br label %if.end26

if.else24:                                        ; preds = %if.end20
  %call25 = call i32 @close(i32 %j.0) nounwind
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  %cmp27 = icmp slt i32 %i.0300, %j.0
  %j.0.i.0 = select i1 %cmp27, i32 %j.0, i32 %i.0300
  %cmp5 = icmp slt i32 %j.0.i.0, 9
  br i1 %cmp5, label %while.body, label %while.end

while.end:                                        ; preds = %if.end26, %if.else13
  %i.0.lcssa = phi i32 [ %i.0300, %if.else13 ], [ %j.0.i.0, %if.end26 ]
  %3 = load i32* %arraydecay, align 4, !tbaa !0
  %cmp31 = icmp slt i32 %i.0.lcssa, %3
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %while.end
  %call34 = call i32 @close(i32 %3) nounwind
  br label %if.end35

if.end35:                                         ; preds = %while.end, %if.then32
  %4 = load i32* %arrayidx9, align 4, !tbaa !0
  %cmp37 = icmp slt i32 %i.0.lcssa, %4
  br i1 %cmp37, label %if.then38, label %cont45

if.then38:                                        ; preds = %if.end35
  %call40 = call i32 @close(i32 %4) nounwind
  br label %cont45

cont45:                                           ; preds = %if.end35, %if.then38, %entry
  %call46 = call i32 @addhookdefs(%struct.module* null, %struct.hookdef* getelementptr inbounds ([3 x %struct.hookdef]* @zshhooks, i32 0, i32 0), i32 3) nounwind
  call void @init_eprog() nounwind
  store i32 1, i32* getelementptr inbounds (%struct.mnumber* @zero_mnumber, i32 0, i32 1), align 4, !tbaa !0
  store i64 0, i64* getelementptr inbounds (%struct.mnumber* @zero_mnumber, i32 0, i32 0, i32 0), align 4, !tbaa !3
  store i32 0, i32* @noeval, align 4, !tbaa !0
  store i64 0, i64* @curhist, align 8, !tbaa !3
  store i64 30, i64* @histsiz, align 8, !tbaa !3
  call void @inithist() nounwind
  %call49 = call i8* @zalloc(i32 256) nounwind
  store i8* %call49, i8** @cmdstack, align 4, !tbaa !4
  store i32 0, i32* @cmdsp, align 4, !tbaa !0
  store i8 33, i8* @bangchar, align 1, !tbaa !1
  store i8 35, i8* @hashchar, align 1, !tbaa !1
  store i8 94, i8* @hatchar, align 1, !tbaa !1
  store i32 2, i32* @termflags, align 4, !tbaa !0
  store i32 -1, i32* @coprocout, align 4, !tbaa !0
  store i32 -1, i32* @coprocin, align 4, !tbaa !0
  store i32 -1, i32* @prevjob, align 4, !tbaa !0
  store i32 -1, i32* @curjob, align 4, !tbaa !0
  %call58 = call i32 @gettimeofday(%struct.timeval* @shtimer, %struct.timezone* %dummy_tz) nounwind
  %5 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 0), align 4, !tbaa !6
  %6 = load i32* getelementptr inbounds (%struct.timeval* @shtimer, i32 0, i32 1), align 4, !tbaa !6
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 %6)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb59, label %cont60

ioc_bb59:                                         ; preds = %cont45
  %10 = sext i32 %6 to i64
  %11 = sext i32 %5 to i64
  call void @__ioc_report_add_overflow(i32 785, i32 41, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %11, i64 %10, i8 13) nounwind
  br label %cont60

cont60:                                           ; preds = %cont45, %ioc_bb59
  %12 = icmp sgt i32 %8, -1
  br i1 %12, label %cont62, label %ioc_bb61

ioc_bb61:                                         ; preds = %cont60
  %13 = sext i32 %8 to i64
  call void @__ioc_report_conversion(i32 785, i32 25, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont62

cont62:                                           ; preds = %ioc_bb61, %cont60
  call void @srand(i32 %8) nounwind
  %call67 = call i8* @zalloc(i32 20) nounwind
  %14 = bitcast i8* %call67 to i8**
  store i8** %14, i8*** @path, align 4, !tbaa !4
  %call68 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0)) nounwind
  %15 = load i8*** @path, align 4, !tbaa !4
  store i8* %call68, i8** %15, align 4, !tbaa !4
  %call70 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)) nounwind
  %16 = load i8*** @path, align 4, !tbaa !4
  %arrayidx71 = getelementptr inbounds i8** %16, i32 1
  store i8* %call70, i8** %arrayidx71, align 4, !tbaa !4
  %call72 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8]* @.str38, i32 0, i32 0)) nounwind
  %17 = load i8*** @path, align 4, !tbaa !4
  %arrayidx73 = getelementptr inbounds i8** %17, i32 2
  store i8* %call72, i8** %arrayidx73, align 4, !tbaa !4
  %call74 = call i8* @ztrdup(i8* getelementptr inbounds ([15 x i8]* @.str39, i32 0, i32 0)) nounwind
  %18 = load i8*** @path, align 4, !tbaa !4
  %arrayidx75 = getelementptr inbounds i8** %18, i32 3
  store i8* %call74, i8** %arrayidx75, align 4, !tbaa !4
  %19 = load i8*** @path, align 4, !tbaa !4
  %arrayidx76 = getelementptr inbounds i8** %19, i32 4
  store i8* null, i8** %arrayidx76, align 4, !tbaa !4
  %call77 = call i8** @mkarray(i8* null) nounwind
  store i8** %call77, i8*** @cdpath, align 4, !tbaa !4
  %call78 = call i8** @mkarray(i8* null) nounwind
  store i8** %call78, i8*** @manpath, align 4, !tbaa !4
  %call79 = call i8** @mkarray(i8* null) nounwind
  store i8** %call79, i8*** @fignore, align 4, !tbaa !4
  %call89 = call i8* @zalloc(i32 12) nounwind
  %20 = bitcast i8* %call89 to i8**
  store i8** %20, i8*** @fpath, align 4, !tbaa !4
  %call90 = call i8* @ztrdup(i8* getelementptr inbounds ([61 x i8]* @.str40, i32 0, i32 0)) nounwind
  %incdec.ptr = getelementptr inbounds i8* %call89, i32 4
  %21 = bitcast i8* %incdec.ptr to i8**
  store i8* %call90, i8** %20, align 4, !tbaa !4
  %call93 = call i8* @ztrdup(i8* getelementptr inbounds ([62 x i8]* @.str41, i32 0, i32 0)) nounwind
  %incdec.ptr94 = getelementptr inbounds i8* %call89, i32 8
  %22 = bitcast i8* %incdec.ptr94 to i8**
  store i8* %call93, i8** %21, align 4, !tbaa !4
  store i8* null, i8** %22, align 4, !tbaa !4
  %call95 = call i8** @mkarray(i8* null) nounwind
  store i8** %call95, i8*** @mailpath, align 4, !tbaa !4
  %call96 = call i8** @mkarray(i8* null) nounwind
  store i8** %call96, i8*** @watch, align 4, !tbaa !4
  %call97 = call i8** @mkarray(i8* null) nounwind
  store i8** %call97, i8*** @psvar, align 4, !tbaa !4
  %call98 = call i8* @ztrdup(i8* getelementptr inbounds ([50 x i8]* @.str42, i32 0, i32 0)) nounwind
  %call99 = call i8** @mkarray(i8* %call98) nounwind
  store i8** %call99, i8*** @module_path, align 4, !tbaa !4
  %call100 = call %struct.hashtable* @newmoduletable(i32 17, i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0)) nounwind
  store %struct.hashtable* %call100, %struct.hashtable** @modulestab, align 4, !tbaa !4
  %call101 = call %union.linkroot* @znewlinklist() nounwind
  store %union.linkroot* %call101, %union.linkroot** @linkedmodules, align 4, !tbaa !4
  %23 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool = icmp eq i8 %23, 0
  br i1 %tobool, label %if.then102, label %if.else105

if.then102:                                       ; preds = %cont62
  %call103 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call103, i8** @prompt, align 4, !tbaa !4
  %call104 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call104, i8** @prompt2, align 4, !tbaa !4
  br label %if.end124

if.else105:                                       ; preds = %cont62
  %24 = load i32* @emulation, align 4, !tbaa !0
  %and = and i32 %24, 12
  %tobool114 = icmp eq i32 %and, 0
  br i1 %tobool114, label %if.else120, label %if.then115

if.then115:                                       ; preds = %if.else105
  %call116 = call i32 @privasserted() nounwind
  %tobool117 = icmp ne i32 %call116, 0
  %cond = select i1 %tobool117, i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0)
  %call118 = call i8* @ztrdup(i8* %cond) nounwind
  store i8* %call118, i8** @prompt, align 4, !tbaa !4
  %call119 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0)) nounwind
  store i8* %call119, i8** @prompt2, align 4, !tbaa !4
  br label %if.end124

if.else120:                                       ; preds = %if.else105
  %call121 = call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8]* @.str47, i32 0, i32 0)) nounwind
  store i8* %call121, i8** @prompt, align 4, !tbaa !4
  %call122 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0)) nounwind
  store i8* %call122, i8** @prompt2, align 4, !tbaa !4
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.else120, %if.then102
  %call125 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str49, i32 0, i32 0)) nounwind
  store i8* %call125, i8** @prompt3, align 4, !tbaa !4
  %25 = load i32* @emulation, align 4, !tbaa !0
  %and134 = and i32 %25, 12
  %tobool135 = icmp eq i32 %and134, 0
  br i1 %tobool135, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end124
  %call136 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0)) nounwind
  br label %cond.end

cond.false:                                       ; preds = %if.end124
  %call137 = call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8]* @.str51, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond138 = phi i8* [ %call136, %cond.true ], [ %call137, %cond.false ]
  store i8* %cond138, i8** @prompt4, align 4, !tbaa !4
  %call139 = call i8* @ztrdup(i8* getelementptr inbounds ([35 x i8]* @.str52, i32 0, i32 0)) nounwind
  store i8* %call139, i8** @sprompt, align 4, !tbaa !4
  %26 = load i32* @emulation, align 4, !tbaa !0
  %and148 = and i32 %26, 12
  %tobool149 = icmp eq i32 %and148, 0
  br i1 %tobool149, label %cond.false152, label %cond.true150

cond.true150:                                     ; preds = %cond.end
  %call151 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str53, i32 0, i32 0)) nounwind
  br label %cond.end154

cond.false152:                                    ; preds = %cond.end
  %call153 = call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0)) nounwind
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false152, %cond.true150
  %cond155 = phi i8* [ %call151, %cond.true150 ], [ %call153, %cond.false152 ]
  store i8* %cond155, i8** @ifs, align 4, !tbaa !4
  %call156 = call i8* @ztrdup(i8* getelementptr inbounds ([24 x i8]* @.str55, i32 0, i32 0)) nounwind
  store i8* %call156, i8** @wordchars, align 4, !tbaa !4
  %call157 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call157, i8** @postedit, align 4, !tbaa !4
  store i32 32, i32* @underscorelen, align 4, !tbaa !0
  %call160 = call i8* @zalloc(i32 32) nounwind
  store i8* %call160, i8** @zunderscore, align 4, !tbaa !4
  store i32 1, i32* @underscoreused, align 4, !tbaa !0
  store i8 0, i8* %call160, align 1, !tbaa !1
  %call163 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call163, i8** @zoptarg, align 4, !tbaa !4
  store i64 1, i64* @zoptind, align 8, !tbaa !3
  %call164 = call i32 @getppid() nounwind
  %conv = sext i32 %call164 to i64
  store i64 %conv, i64* @ppid, align 8, !tbaa !3
  %call165 = call i32 @getpid() nounwind
  %conv166 = sext i32 %call165 to i64
  store i64 %conv166, i64* @mypid, align 8, !tbaa !3
  %call167 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  store i8* %call167, i8** @term, align 4, !tbaa !4
  %call168 = call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str56, i32 0, i32 0)) nounwind
  store i8* %call168, i8** @nullcmd, align 4, !tbaa !4
  %call169 = call i8* @ztrdup(i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0)) nounwind
  store i8* %call169, i8** @readnullcmd, align 4, !tbaa !4
  %call170 = call i32 @getuid() nounwind
  store i32 %call170, i32* @cached_uid, align 4, !tbaa !0
  %call171 = call %struct.passwd* @getpwuid(i32 %call170) nounwind
  %tobool172 = icmp eq %struct.passwd* %call171, null
  %27 = load i32* @emulation, align 4, !tbaa !0
  %and191 = and i32 %27, 16
  %tobool192 = icmp eq i32 %and191, 0
  br i1 %tobool172, label %cont190, label %cont177

cont177:                                          ; preds = %cond.end154
  br i1 %tobool192, label %if.end184, label %if.then180

if.then180:                                       ; preds = %cont177
  %pw_dir = getelementptr inbounds %struct.passwd* %call171, i32 0, i32 5
  %28 = load i8** %pw_dir, align 4, !tbaa !4
  %call183 = call i8* @metafy(i8* %28, i32 -1, i32 3) nounwind
  store i8* %call183, i8** @home, align 4, !tbaa !4
  br label %if.end184

if.end184:                                        ; preds = %cont177, %if.then180
  %pw_name = getelementptr inbounds %struct.passwd* %call171, i32 0, i32 0
  %29 = load i8** %pw_name, align 4, !tbaa !4
  %call185 = call i8* @ztrdup(i8* %29) nounwind
  br label %if.end197

cont190:                                          ; preds = %cond.end154
  br i1 %tobool192, label %if.end195, label %if.then193

if.then193:                                       ; preds = %cont190
  %call194 = call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str58, i32 0, i32 0)) nounwind
  store i8* %call194, i8** @home, align 4, !tbaa !4
  br label %if.end195

if.end195:                                        ; preds = %cont190, %if.then193
  %call196 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  br label %if.end197

if.end197:                                        ; preds = %if.end195, %if.end184
  %storemerge = phi i8* [ %call196, %if.end195 ], [ %call185, %if.end184 ]
  store i8* %storemerge, i8** @cached_username, align 4
  %30 = load i32* @emulation, align 4, !tbaa !0
  %and202 = and i32 %30, 16
  %tobool203 = icmp eq i32 %and202, 0
  br i1 %tobool203, label %if.else205, label %if.then204

if.then204:                                       ; preds = %if.end197
  %31 = load i8** @home, align 4, !tbaa !4
  br label %if.end207

if.else205:                                       ; preds = %if.end197
  %call206 = call i8* @zgetenv(i8* getelementptr inbounds ([5 x i8]* @.str59, i32 0, i32 0)) nounwind
  br label %if.end207

if.end207:                                        ; preds = %if.else205, %if.then204
  %ptr.0 = phi i8* [ %31, %if.then204 ], [ %call206, %if.else205 ]
  %tobool208 = icmp eq i8* %ptr.0, null
  br i1 %tobool208, label %if.else213, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end207
  %call209 = call i32 @ispwd(i8* %ptr.0) nounwind
  %tobool210 = icmp eq i32 %call209, 0
  br i1 %tobool210, label %if.else213, label %if.then211

if.then211:                                       ; preds = %land.lhs.true
  %call212 = call i8* @ztrdup(i8* %ptr.0) nounwind
  store i8* %call212, i8** @pwd, align 4, !tbaa !4
  br label %if.end236

if.else213:                                       ; preds = %land.lhs.true, %if.end207
  %call214 = call i8* @zgetenv(i8* getelementptr inbounds ([4 x i8]* @.str60, i32 0, i32 0)) nounwind
  %tobool215 = icmp eq i8* %call214, null
  br i1 %tobool215, label %if.else230, label %cont219

cont219:                                          ; preds = %if.else213
  %call217 = call i32 @strlen(i8* %call214) nounwind readonly
  %cmp220 = icmp ult i32 %call217, 4096
  br i1 %cmp220, label %cont224, label %if.else230

cont224:                                          ; preds = %cont219
  %call225 = call i8* @metafy(i8* %call214, i32 -1, i32 2) nounwind
  %call226 = call i32 @ispwd(i8* %call225) nounwind
  %tobool227 = icmp eq i32 %call226, 0
  br i1 %tobool227, label %if.else230, label %if.then228

if.then228:                                       ; preds = %cont224
  %call229 = call i8* @ztrdup(i8* %call225) nounwind
  store i8* %call229, i8** @pwd, align 4, !tbaa !4
  br label %if.end236

if.else230:                                       ; preds = %cont224, %if.else213, %cont219
  store i8* null, i8** @pwd, align 4, !tbaa !4
  %call231 = call i8* @zgetcwd() nounwind
  %call234 = call i8* @metafy(i8* %call231, i32 -1, i32 3) nounwind
  store i8* %call234, i8** @pwd, align 4, !tbaa !4
  br label %if.end236

if.end236:                                        ; preds = %if.then228, %if.else230, %if.then211
  %32 = phi i8* [ %call229, %if.then228 ], [ %call234, %if.else230 ], [ %call212, %if.then211 ]
  %call237 = call i8* @ztrdup(i8* %32) nounwind
  store i8* %call237, i8** @oldpwd, align 4, !tbaa !4
  call void @inittyptab() nounwind
  call void @initlextabs() nounwind
  call void @createreswdtable() nounwind
  call void @createaliastables() nounwind
  call void @createcmdnamtable() nounwind
  call void @createshfunctable() nounwind
  call void @createbuiltintable() nounwind
  call void @createnameddirtable() nounwind
  call void @createparamtable() nounwind
  store %struct.conddef* null, %struct.conddef** @condtab, align 4, !tbaa !4
  store %struct.funcwrap* null, %struct.funcwrap** @wrappers, align 4, !tbaa !4
  call void @adjustwinsize(i32 0) nounwind
  br label %for.body

for.body:                                         ; preds = %if.end236, %for.cond.backedge
  %i.1299 = phi i32 [ 0, %if.end236 ], [ %38, %for.cond.backedge ]
  %33 = sext i32 %i.1299 to i64
  %34 = icmp sgt i32 %i.1299, -1
  br i1 %34, label %cont242, label %ioc_bb241

ioc_bb241:                                        ; preds = %for.body
  call void @__ioc_report_conversion(i32 924, i32 15, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @2, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont242

cont242:                                          ; preds = %ioc_bb241, %for.body
  %add.ptr = getelementptr inbounds [15 x %struct.rlimit]* @current_limits, i32 0, i32 %i.1299
  %call243 = call i32 @getrlimit64(i32 %i.1299, %struct.rlimit* %add.ptr) nounwind
  %arrayidx244 = getelementptr inbounds [15 x %struct.rlimit]* @limits, i32 0, i32 %i.1299
  %35 = bitcast %struct.rlimit* %arrayidx244 to i8*
  %36 = bitcast %struct.rlimit* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 16, i32 4, i1 false), !tbaa.struct !7
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1299, i32 1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb246, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont242, %ioc_bb246
  %cmp238 = icmp eq i32 %38, 15
  br i1 %cmp238, label %for.end, label %for.body

ioc_bb246:                                        ; preds = %cont242
  call void @__ioc_report_add_overflow(i32 923, i32 25, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  store i32 0, i32* @loops, align 4, !tbaa !0
  store i32 0, i32* @breaks, align 4, !tbaa !0
  %call248 = call i32 @time(i32* null) nounwind
  store i32 %call248, i32* @lastmailcheck, align 4, !tbaa !6
  store i32 0, i32* @sourcelevel, align 4, !tbaa !0
  store i32 0, i32* @locallevel, align 4, !tbaa !0
  store i32 0, i32* @sfcontext, align 4, !tbaa !0
  store i32 0, i32* @trap_return, align 4, !tbaa !0
  store i32 0, i32* @trap_state, align 4, !tbaa !0
  store i32 -1, i32* @noerrexit, align 4, !tbaa !0
  store i32 1, i32* @nohistsave, align 4, !tbaa !0
  %call251 = call %union.linkroot* @znewlinklist() nounwind
  store %union.linkroot* %call251, %union.linkroot** @dirstack, align 4, !tbaa !4
  %call252 = call %union.linkroot* @znewlinklist() nounwind
  store %union.linkroot* %call252, %union.linkroot** @bufstack, align 4, !tbaa !4
  store i8* null, i8** @hsubr, align 4, !tbaa !4
  store i8* null, i8** @hsubl, align 4, !tbaa !4
  store i64 0, i64* @lastpid, align 8, !tbaa !3
  store i32 -1, i32* @lastpid_status, align 4, !tbaa !6
  call void @get_usage() nounwind
  br label %for.body258

for.body258:                                      ; preds = %for.end, %for.cond255.backedge
  %i.2298 = phi i32 [ 0, %for.end ], [ %42, %for.cond255.backedge ]
  %arrayidx259 = getelementptr inbounds [10 x i32]* %close_fds, i32 0, i32 %i.2298
  %40 = load i32* %arrayidx259, align 4, !tbaa !0
  %tobool260 = icmp eq i32 %40, 0
  br i1 %tobool260, label %for.inc264, label %if.then261

if.then261:                                       ; preds = %for.body258
  %call262 = call i32 @close(i32 %i.2298) nounwind
  br label %for.inc264

for.inc264:                                       ; preds = %for.body258, %if.then261
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2298, i32 1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb265, label %for.cond255.backedge

for.cond255.backedge:                             ; preds = %for.inc264, %ioc_bb265
  %cmp256 = icmp slt i32 %42, 10
  br i1 %cmp256, label %for.body258, label %for.end267

ioc_bb265:                                        ; preds = %for.inc264
  %44 = sext i32 %i.2298 to i64
  call void @__ioc_report_add_overflow(i32 943, i32 24, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %44, i64 1, i8 13) nounwind
  br label %for.cond255.backedge

for.end267:                                       ; preds = %for.cond255.backedge
  call void @set_default_colour_sequences() nounwind
  ret void
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @pipe(i32*) nounwind

declare i32 @close(i32)

declare i32 @addhookdefs(%struct.module*, %struct.hookdef*, i32)

declare void @init_eprog()

declare void @inithist()

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare void @srand(i32) nounwind

declare i8** @mkarray(i8*)

declare %struct.hashtable* @newmoduletable(i32, i8*)

declare %union.linkroot* @znewlinklist()

declare i32 @privasserted()

declare i32 @getppid() nounwind

declare i32 @getuid() nounwind

declare %struct.passwd* @getpwuid(i32)

declare i8* @metafy(i8*, i32, i32)

declare i8* @zgetenv(i8*)

declare i32 @ispwd(i8*)

declare i8* @zgetcwd()

declare void @inittyptab()

declare void @initlextabs()

declare void @createreswdtable()

declare void @createaliastables()

declare void @createcmdnamtable()

declare void @createshfunctable()

declare void @createbuiltintable()

declare void @createnameddirtable()

declare void @createparamtable()

declare void @adjustwinsize(i32)

declare i32 @getrlimit64(i32, %struct.rlimit*) nounwind

declare i32 @time(i32*) nounwind

declare void @get_usage()

declare void @set_default_colour_sequences()

define void @init_signals() nounwind {
entry:
  %agg.tmp = alloca %struct.__sigset_t, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp1 = alloca %struct.__sigset_t, align 4
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @signal_mask(%struct.__sigset_t* sret %agg.tmp, i32 0) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 %agg.tmp) nounwind
  br label %for.body

for.body:                                         ; preds = %if.then, %for.cond.backedge
  %i.021 = phi i32 [ 0, %if.then ], [ %2, %for.cond.backedge ]
  %call = call void (i32)* (i32, void (i32)*)* @signal(i32 %i.021, void (i32)* null) nounwind
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.021, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb
  %cmp = icmp slt i32 %2, 65
  br i1 %cmp, label %for.body, label %if.end

ioc_bb:                                           ; preds = %for.body
  %4 = sext i32 %i.021 to i64
  call void @__ioc_report_add_overflow(i32 1007, i32 25, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.end:                                           ; preds = %for.cond.backedge, %entry
  call void @signal_mask(%struct.__sigset_t* sret %tmp1, i32 17) nounwind
  %5 = bitcast %struct.__sigset_t* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.__sigset_t* @sigchld_mask to i8*), i8* %5, i32 128, i32 4, i1 false), !tbaa.struct !8
  call void @intr() nounwind
  %call2 = call void (i32)* (i32, void (i32)*)* @signal(i32 3, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  %call3 = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  %cmp4 = icmp eq void (i32)* %call3, inttoptr (i32 1 to void (i32)*)
  br i1 %cmp4, label %cont7, label %if.else

cont7:                                            ; preds = %if.end
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 82), align 1, !tbaa !1
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @install_handler(i32 1) nounwind
  br label %if.end8

if.end8:                                          ; preds = %if.else, %cont7
  call void @install_handler(i32 17) nounwind
  call void @install_handler(i32 28) nounwind
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool9 = icmp eq i8 %6, 0
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @install_handler(i32 14) nounwind
  %call11 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then10
  %7 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool13 = icmp eq i8 %7, 0
  br i1 %tobool13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  %call16 = call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  %call17 = call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* inttoptr (i32 1 to void (i32)*)) nounwind
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.then14
  ret void
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @signal_mask(%struct.__sigset_t* sret, i32)

declare void (i32)* @signal(i32, void (i32)*) nounwind

declare void @install_handler(i32)

define void @run_init_scripts() nounwind {
entry:
  %s = alloca i8*, align 4
  store i32 -1, i32* @noerrexit, align 4, !tbaa !0
  %0 = load i32* @emulation, align 4, !tbaa !0
  %and = and i32 %0, 12
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %tobool9 = icmp eq i8 %1, 0
  br i1 %tobool9, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then
  %call = call i32 @source(i8* getelementptr inbounds ([13 x i8]* @.str61, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  %tobool11 = icmp eq i8 %2, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %call13 = call i8* @getsparam(i8* getelementptr inbounds ([4 x i8]* @.str62, i32 0, i32 0)) nounwind
  store i8* %call13, i8** %s, align 4, !tbaa !4
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %tobool14 = icmp eq i8 %3, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @sourcehome(i8* getelementptr inbounds ([9 x i8]* @.str63, i32 0, i32 0))
  %.pr = load i8** %s, align 4, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then15
  %4 = phi i8* [ %call13, %if.then12 ], [ %.pr, %if.then15 ]
  store i32 2, i32* @noerrs, align 4, !tbaa !0
  %tobool17 = icmp eq i8* %4, null
  br i1 %tobool17, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %call18 = call i32 @parsestr(i8* %4) nounwind
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @singsub(i8** %s) nounwind
  store i32 0, i32* @noerrs, align 4, !tbaa !0
  %5 = load i8** %s, align 4, !tbaa !4
  %call21 = call i32 @source(i8* %5)
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end16, %if.then20
  store i32 0, i32* @noerrs, align 4, !tbaa !0
  br label %if.end91

if.else:                                          ; preds = %if.end
  %call23 = call i32 @source(i8* getelementptr inbounds ([18 x i8]* @.str64, i32 0, i32 0))
  br label %if.end91

if.else25:                                        ; preds = %entry
  %call26 = call i32 @source(i8* getelementptr inbounds ([12 x i8]* @.str65, i32 0, i32 0))
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool27 = icmp eq i8 %6, 0
  %7 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  %tobool29 = icmp ne i8 %7, 0
  %or.cond = or i1 %tobool27, %tobool29
  br i1 %or.cond, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.else25
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool31 = icmp eq i8 %8, 0
  br i1 %tobool31, label %if.end38, label %if.then32

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 @load_module(i8* getelementptr inbounds ([12 x i8]* @.str66, i32 0, i32 0), %struct.feature_enables* null, i32 1) nounwind
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then32
  %call36 = call i32 @unload_named_module(i8* getelementptr inbounds ([12 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i32 1) nounwind
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then30, %if.then35
  call void @sourcehome(i8* getelementptr inbounds ([8 x i8]* @.str67, i32 0, i32 0))
  br label %if.end39

if.end39:                                         ; preds = %if.else25, %if.end38
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %tobool40 = icmp eq i8 %9, 0
  br i1 %tobool40, label %if.end56, label %if.then41

if.then41:                                        ; preds = %if.end39
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool43 = icmp eq i8 %10, 0
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 57), align 1, !tbaa !1
  %tobool46 = icmp eq i8 %11, 0
  %or.cond95 = or i1 %tobool43, %tobool46
  br i1 %or.cond95, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.then41
  %call48 = call i32 @source(i8* getelementptr inbounds ([14 x i8]* @.str68, i32 0, i32 0))
  %.pre99 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  br label %if.end49

if.end49:                                         ; preds = %if.then41, %if.then47
  %12 = phi i8 [ %.pre99, %if.then47 ], [ %10, %if.then41 ]
  %tobool51 = icmp eq i8 %12, 0
  %13 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  %tobool53 = icmp ne i8 %13, 0
  %or.cond92 = or i1 %tobool51, %tobool53
  br i1 %or.cond92, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @sourcehome(i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0))
  br label %if.end56

if.end56:                                         ; preds = %if.end39, %if.then54, %if.end49
  %14 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool57 = icmp eq i8 %14, 0
  br i1 %tobool57, label %if.end73, label %if.then58

if.then58:                                        ; preds = %if.end56
  %15 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool60 = icmp eq i8 %15, 0
  %16 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 57), align 1, !tbaa !1
  %tobool63 = icmp eq i8 %16, 0
  %or.cond96 = or i1 %tobool60, %tobool63
  br i1 %or.cond96, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.then58
  %call65 = call i32 @source(i8* getelementptr inbounds ([11 x i8]* @.str70, i32 0, i32 0))
  %.pre98 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %if.then64
  %17 = phi i8 [ %.pre98, %if.then64 ], [ %15, %if.then58 ]
  %tobool68 = icmp eq i8 %17, 0
  %18 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  %tobool70 = icmp ne i8 %18, 0
  %or.cond93 = or i1 %tobool68, %tobool70
  br i1 %or.cond93, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end66
  call void @sourcehome(i8* getelementptr inbounds ([7 x i8]* @.str71, i32 0, i32 0))
  br label %if.end73

if.end73:                                         ; preds = %if.end66, %if.end56, %if.then71
  %19 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %tobool74 = icmp eq i8 %19, 0
  br i1 %tobool74, label %if.end91, label %if.then75

if.then75:                                        ; preds = %if.end73
  %20 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool77 = icmp eq i8 %20, 0
  %21 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 57), align 1, !tbaa !1
  %tobool80 = icmp eq i8 %21, 0
  %or.cond97 = or i1 %tobool77, %tobool80
  br i1 %or.cond97, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.then75
  %call82 = call i32 @source(i8* getelementptr inbounds ([12 x i8]* @.str72, i32 0, i32 0))
  %.pre = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %if.then81
  %22 = phi i8 [ %.pre, %if.then81 ], [ %20, %if.then75 ]
  %tobool85 = icmp eq i8 %22, 0
  %23 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  %tobool87 = icmp ne i8 %23, 0
  %or.cond94 = or i1 %tobool85, %tobool87
  br i1 %or.cond94, label %if.end91, label %if.then88

if.then88:                                        ; preds = %if.end83
  call void @sourcehome(i8* getelementptr inbounds ([8 x i8]* @.str73, i32 0, i32 0))
  br label %if.end91

if.end91:                                         ; preds = %if.end73, %if.end83, %if.then88, %if.end22, %if.else
  store i32 0, i32* @noerrexit, align 4, !tbaa !0
  store i32 0, i32* @nohistsave, align 4, !tbaa !0
  ret void
}

define i32 @source(i8* %s) nounwind {
entry:
  %fstack = alloca %struct.funcstack, align 4
  %0 = load i8** @scriptname, align 4, !tbaa !4
  %1 = load i8** @scriptfilename, align 4, !tbaa !4
  %2 = load i32* @trap_return, align 4, !tbaa !0
  %3 = load i32* @trap_state, align 4, !tbaa !0
  %tobool = icmp eq i8* %s, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i8* @unmeta(i8* %s) nounwind
  %call3 = call %struct.eprog* @try_source_file(i8* %call) nounwind
  %tobool4 = icmp ne %struct.eprog* %call3, null
  br i1 %tobool4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = call i32 (i8*, i32, ...)* @open64(i8* %call, i32 256) nounwind
  %call6 = call i32 @movefd(i32 %call5) nounwind
  %cmp = icmp eq i32 %call6, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %tempfd.0 = phi i32 [ -1, %lor.lhs.false ], [ %call6, %land.lhs.true ]
  %4 = load i32* @SHIN, align 4, !tbaa !0
  %5 = load %struct._IO_FILE** @bshin, align 4, !tbaa !4
  %6 = load i32* @subsh, align 4, !tbaa !0
  %7 = load i32* @thisjob, align 4, !tbaa !0
  %8 = load i64* @lineno, align 8, !tbaa !3
  %9 = load i32* @loops, align 4, !tbaa !0
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %conv = sext i8 %10 to i32
  %11 = load i8** @cmdstack, align 4, !tbaa !4
  %12 = load i32* @cmdsp, align 4, !tbaa !0
  %call13 = call i8* @zalloc(i32 256) nounwind
  store i8* %call13, i8** @cmdstack, align 4, !tbaa !4
  store i32 0, i32* @cmdsp, align 4, !tbaa !0
  br i1 %tobool4, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  store i32 %tempfd.0, i32* @SHIN, align 4, !tbaa !0
  %call16 = call %struct._IO_FILE* @fdopen(i32 %tempfd.0, i8* getelementptr inbounds ([2 x i8]* @.str75, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %call16, %struct._IO_FILE** @bshin, align 4, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  store i32 0, i32* @subsh, align 4, !tbaa !0
  store i64 1, i64* @lineno, align 8, !tbaa !3
  store i32 0, i32* @loops, align 4, !tbaa !0
  %call18 = call i32 @dosetopt(i32 150, i32 0, i32 1) nounwind
  store i8* %s, i8** @scriptname, align 4, !tbaa !4
  store i8* %s, i8** @scriptfilename, align 4, !tbaa !4
  %13 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 157), align 1, !tbaa !1
  %tobool19 = icmp eq i8 %13, 0
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @printprompt4() nounwind
  %14 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !4
  %tobool21 = icmp ne %struct._IO_FILE* %14, null
  %15 = load %struct._IO_FILE** @stderr, align 4, !tbaa !4
  %cond = select i1 %tobool21, %struct._IO_FILE* %14, %struct._IO_FILE* %15
  %16 = call i32 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str77, i32 0, i32 0), i32 14, i32 1, %struct._IO_FILE* %cond)
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.then20
  store i32 0, i32* @trap_state, align 4, !tbaa !0
  %17 = load i32* @sourcelevel, align 4, !tbaa !0
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb24, label %cont25

ioc_bb24:                                         ; preds = %if.end23
  %21 = sext i32 %17 to i64
  call void @__ioc_report_add_overflow(i32 1194, i32 14, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont25

cont25:                                           ; preds = %if.end23, %ioc_bb24
  store i32 %19, i32* @sourcelevel, align 4, !tbaa !0
  %22 = load i8** @scriptfilename, align 4, !tbaa !4
  %name = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 1
  store i8* %22, i8** %name, align 4, !tbaa !4
  %23 = load %struct.funcstack** @funcstack, align 4, !tbaa !4
  %tobool26 = icmp eq %struct.funcstack* %23, null
  br i1 %tobool26, label %cond.false29, label %cond.true27

cond.true27:                                      ; preds = %cont25
  %name28 = getelementptr inbounds %struct.funcstack* %23, i32 0, i32 1
  %24 = load i8** %name28, align 4, !tbaa !4
  br label %cond.end36

cond.false29:                                     ; preds = %cont25
  %tobool30 = icmp ne i8* %1, null
  %cond34 = select i1 %tobool30, i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0)
  %call35 = call i8* @dupstring(i8* %cond34) nounwind
  %.pre = load i8** @scriptfilename, align 4, !tbaa !4
  %.pre74 = load %struct.funcstack** @funcstack, align 4, !tbaa !4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false29, %cond.true27
  %25 = phi %struct.funcstack* [ %23, %cond.true27 ], [ %.pre74, %cond.false29 ]
  %26 = phi i8* [ %22, %cond.true27 ], [ %.pre, %cond.false29 ]
  %cond37 = phi i8* [ %24, %cond.true27 ], [ %call35, %cond.false29 ]
  %caller = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 3
  store i8* %cond37, i8** %caller, align 4, !tbaa !4
  %flineno = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 4
  store i64 0, i64* %flineno, align 4, !tbaa !3
  %lineno = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 5
  store i64 %8, i64* %lineno, align 4, !tbaa !3
  %filename = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 2
  store i8* %26, i8** %filename, align 4, !tbaa !4
  %prev = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 0
  store %struct.funcstack* %25, %struct.funcstack** %prev, align 4, !tbaa !4
  %tp = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 6
  store i32 0, i32* %tp, align 4, !tbaa !0
  store %struct.funcstack* %fstack, %struct.funcstack** @funcstack, align 4, !tbaa !4
  br i1 %tobool4, label %if.then39, label %if.else

if.then39:                                        ; preds = %cond.end36
  call void @pushheap() nounwind
  store i32 0, i32* @errflag, align 4, !tbaa !0
  call void @execode(%struct.eprog* %call3, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str78, i32 0, i32 0)) nounwind
  call void @popheap() nounwind
  %27 = load i32* @errflag, align 4, !tbaa !0
  %tobool40 = icmp eq i32 %27, 0
  %. = select i1 %tobool40, i32 0, i32 2
  br label %if.end49

if.else:                                          ; preds = %cond.end36
  %call45 = call i32 @loop(i32 0, i32 0)
  switch i32 %call45, label %if.end49 [
    i32 2, label %cont48
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else
  store i64 0, i64* @lastval, align 8, !tbaa !3
  br label %if.end49

cont48:                                           ; preds = %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %sw.bb, %cont48, %if.else
  %ret.0 = phi i32 [ 0, %if.else ], [ 0, %sw.bb ], [ 2, %cont48 ], [ %., %if.then39 ]
  %28 = load %struct.funcstack** @funcstack, align 4, !tbaa !4
  %prev50 = getelementptr inbounds %struct.funcstack* %28, i32 0, i32 0
  %29 = load %struct.funcstack** %prev50, align 4, !tbaa !4
  store %struct.funcstack* %29, %struct.funcstack** @funcstack, align 4, !tbaa !4
  %30 = load i32* @sourcelevel, align 4, !tbaa !0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 -1)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb51, label %cont52

ioc_bb51:                                         ; preds = %if.end49
  %34 = sext i32 %30 to i64
  call void @__ioc_report_add_overflow(i32 1231, i32 14, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %34, i64 -1, i8 13) nounwind
  br label %cont52

cont52:                                           ; preds = %if.end49, %ioc_bb51
  store i32 %32, i32* @sourcelevel, align 4, !tbaa !0
  store i32 %3, i32* @trap_state, align 4, !tbaa !0
  store i32 %2, i32* @trap_return, align 4, !tbaa !0
  br i1 %tobool4, label %if.then54, label %if.else55

if.then54:                                        ; preds = %cont52
  call void @freeeprog(%struct.eprog* %call3) nounwind
  br label %if.end59

if.else55:                                        ; preds = %cont52
  %35 = load %struct._IO_FILE** @bshin, align 4, !tbaa !4
  %call56 = call i32 @fclose(%struct._IO_FILE* %35) nounwind
  %36 = load i32* @SHIN, align 4, !tbaa !0
  %37 = load i8** @fdtable, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %37, i32 %36
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  store i32 %4, i32* @SHIN, align 4, !tbaa !0
  store %struct._IO_FILE* %5, %struct._IO_FILE** @bshin, align 4, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.then54
  store i32 %6, i32* @subsh, align 4, !tbaa !0
  store i32 %7, i32* @thisjob, align 4, !tbaa !0
  store i64 %8, i64* @lineno, align 8, !tbaa !3
  store i32 %9, i32* @loops, align 4, !tbaa !0
  %call60 = call i32 @dosetopt(i32 150, i32 %conv, i32 1) nounwind
  store i32 0, i32* @errflag, align 4, !tbaa !0
  %38 = load i32* @exit_pending, align 4, !tbaa !0
  %tobool61 = icmp eq i32 %38, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  store i32 0, i32* @retflag, align 4, !tbaa !0
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.then62
  store i8* %0, i8** @scriptname, align 4, !tbaa !4
  store i8* %1, i8** @scriptfilename, align 4, !tbaa !4
  %39 = load i8** @cmdstack, align 4, !tbaa !4
  call void @free(i8* %39) nounwind
  store i8* %11, i8** @cmdstack, align 4, !tbaa !4
  store i32 %12, i32* @cmdsp, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.end63
  %retval.0 = phi i32 [ %ret.0, %if.end63 ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i8* @getsparam(i8*)

define void @sourcehome(i8* %s) nounwind {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %tmp33 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @queueing_enabled, align 4, !tbaa !0
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 1271, i32 19, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !0
  %5 = load i32* @emulation, align 4, !tbaa !0
  %and = and i32 %5, 12
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cont
  %call = call i8* @getsparam(i8* getelementptr inbounds ([8 x i8]* @.str79, i32 0, i32 0)) nounwind
  %tobool9 = icmp eq i8* %call, null
  br i1 %tobool9, label %if.then, label %if.end12

if.then:                                          ; preds = %lor.lhs.false, %cont
  %6 = load i8** @home, align 4, !tbaa !4
  %tobool10 = icmp eq i8* %6, null
  br i1 %tobool10, label %return, label %if.end12

if.end12:                                         ; preds = %if.then, %lor.lhs.false
  %h.0 = phi i8* [ %6, %if.then ], [ %call, %lor.lhs.false ]
  %call13 = call i32 @strlen(i8* %h.0) nounwind readonly
  %call14 = call i32 @strlen(i8* %s) nounwind readonly
  %7 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call13, i32 %call14)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb15, label %cont18

ioc_bb15:                                         ; preds = %if.end12
  %10 = zext i32 %call14 to i64
  %11 = zext i32 %call13 to i64
  call void @__ioc_report_add_overflow(i32 1279, i32 24, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %11, i64 %10, i8 5) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb15, %if.end12
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %8, i32 2)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %cont18
  %15 = zext i32 %8 to i64
  call void @__ioc_report_add_overflow(i32 1279, i32 36, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %15, i64 2, i8 5) nounwind
  br label %cont20

cont20:                                           ; preds = %cont18, %ioc_bb19
  %16 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %13, align 1
  %call21 = call i32 (i8*, i8*, ...)* @sprintf(i8* %vla, i8* getelementptr inbounds ([6 x i8]* @.str80, i32 0, i32 0), i8* %h.0, i8* %s) nounwind
  %17 = load i32* @queueing_enabled, align 4, !tbaa !0
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 -1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %cont20
  %21 = sext i32 %17 to i64
  call void @__ioc_report_add_overflow(i32 1283, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %21, i64 -1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %cont20, %ioc_bb22
  store i32 %19, i32* @queueing_enabled, align 4, !tbaa !0
  %tobool24 = icmp eq i32 %19, 0
  br i1 %tobool24, label %while.cond.preheader, label %do.end36

while.cond.preheader:                             ; preds = %cont23
  %22 = load i32* @queue_front, align 4, !tbaa !0
  %23 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp41 = icmp eq i32 %22, %23
  br i1 %cmp41, label %do.end36, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont31
  %24 = phi i32 [ %31, %cont31 ], [ %22, %while.cond.preheader ]
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb27, label %cont31

ioc_bb27:                                         ; preds = %while.body
  %28 = sext i32 %24 to i64
  call void @__ioc_report_add_overflow(i32 1287, i32 40, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb27, %while.body
  %rem = srem i32 %26, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %29 = load i32* @queue_front, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %29
  %30 = load i32* %arrayidx32, align 4, !tbaa !0
  call void @zhandler(i32 %30) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp33, %struct.__sigset_t* byval align 4 %oset) nounwind
  %31 = load i32* @queue_front, align 4, !tbaa !0
  %32 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp = icmp eq i32 %31, %32
  br i1 %cmp, label %do.end36, label %while.body

do.end36:                                         ; preds = %while.cond.preheader, %cont31, %cont23
  %call37 = call i32 @source(i8* %vla)
  call void @llvm.stackrestore(i8* %16)
  br label %return

return:                                           ; preds = %if.then, %do.end36
  ret void
}

declare i32 @parsestr(i8*)

declare void @singsub(i8**)

declare i32 @load_module(i8*, %struct.feature_enables*, i32)

declare i32 @unload_named_module(i8*, i8*, i32)

define void @init_misc() nounwind {
entry:
  %0 = load i8** @zsh_name, align 4, !tbaa !4
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 114
  %2 = load i32* @restricted, align 4, !tbaa !0
  %tobool = icmp ne i32 %2, 0
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @dosetopt(i32 144, i32 1, i32 0) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = load i8** @cmd, align 4, !tbaa !4
  %tobool2 = icmp eq i8* %3, null
  br i1 %tobool2, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = load i32* @SHIN, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %4, 9
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  %5 = load %struct._IO_FILE** @bshin, align 4, !tbaa !4
  %call7 = tail call i32 @fclose(%struct._IO_FILE* %5) nounwind
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3
  %call9 = tail call i32 (i8*, i32, ...)* @open64(i8* getelementptr inbounds ([10 x i8]* @.str74, i32 0, i32 0), i32 256) nounwind
  %call10 = tail call i32 @movefd(i32 %call9) nounwind
  store i32 %call10, i32* @SHIN, align 4, !tbaa !0
  %call11 = tail call %struct._IO_FILE* @fdopen(i32 %call10, i8* getelementptr inbounds ([2 x i8]* @.str75, i32 0, i32 0)) nounwind
  store %struct._IO_FILE* %call11, %struct._IO_FILE** @bshin, align 4, !tbaa !4
  %6 = load i8** @cmd, align 4, !tbaa !4
  tail call void @execstring(i8* %6, i32 0, i32 1, i8* getelementptr inbounds ([7 x i8]* @.str76, i32 0, i32 0)) nounwind
  store i32 1, i32* @stopmsg, align 4, !tbaa !0
  %7 = load i64* @lastval, align 8, !tbaa !3
  %.off = add i64 %7, 2147483648
  %8 = icmp ult i64 %.off, 4294967296
  br i1 %8, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.end8
  tail call void @__ioc_report_conversion(i32 1121, i32 11, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.end8
  %conv12 = trunc i64 %7 to i32
  tail call void @zexit(i32 %conv12, i32 0) nounwind
  br label %if.end13

if.end13:                                         ; preds = %if.end, %cont
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool15 = icmp eq i8 %9, 0
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %10, 0
  %or.cond20 = or i1 %tobool15, %tobool17
  br i1 %or.cond20, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  tail call void @readhistfile(i8* null, i32 0, i32 32768) nounwind
  br label %if.end19

if.end19:                                         ; preds = %if.end13, %if.then18
  ret void
}

declare void @execstring(i8*, i32, i32, i8*)

declare void @readhistfile(i8*, i32, i32)

declare %struct.eprog* @try_source_file(i8*)

declare i8* @unmeta(i8*)

declare void @printprompt4()

declare void @freeeprog(%struct.eprog*)

declare void @free(i8* nocapture) nounwind

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @llvm.stacksave() nounwind

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare void @zhandler(i32)

declare void @llvm.stackrestore(i8*) nounwind

define void @init_bltinmods() nounwind {
entry:
  %zsh_features = alloca [4 x i8*], align 4
  %emu_features = alloca [2 x i8*], align 8
  %features = alloca [3 x i8*], align 4
  %features19 = alloca [29 x i8*], align 4
  %features30 = alloca [3 x i8*], align 4
  %features41 = alloca [3 x i8*], align 4
  %features52 = alloca [5 x i8*], align 4
  %features63 = alloca [3 x i8*], align 4
  %features74 = alloca [7 x i8*], align 4
  %features85 = alloca [9 x i8*], align 4
  %features96 = alloca [4 x i8*], align 4
  %features107 = alloca [3 x i8*], align 4
  %0 = bitcast [4 x i8*]* %zsh_features to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([4 x i8*]* @init_bltinmods.zsh_features to i8*), i32 16, i32 4, i1 false)
  %1 = bitcast [2 x i8*]* %emu_features to i64*
  %2 = load i64* bitcast ([2 x i8*]* @init_bltinmods.emu_features to i64*), align 8
  store i64 %2, i64* %1, align 8
  %3 = load i32* @emulation, align 4, !tbaa !0
  %and = and i32 %3, 16
  %tobool = icmp ne i32 %and, 0
  %arraydecay = getelementptr inbounds [4 x i8*]* %zsh_features, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [2 x i8*]* %emu_features, i32 0, i32 0
  %cond = select i1 %tobool, i8** %arraydecay, i8** %arraydecay3
  %call = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str84, i32 0, i32 0), i8** %cond, i32 0, i32 1) nounwind
  %4 = load i32* @emulation, align 4, !tbaa !0
  %and8 = and i32 %4, 16
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast [3 x i8*]* %features to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([3 x i8*]* @init_bltinmods.features to i8*), i32 12, i32 4, i1 false)
  %arraydecay10 = getelementptr inbounds [3 x i8*]* %features, i32 0, i32 0
  %call11 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str87, i32 0, i32 0), i8** %arraydecay10, i32 0, i32 1) nounwind
  %.pre = load i32* @emulation, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %6 = phi i32 [ %4, %entry ], [ %.pre, %if.then ]
  %and16 = and i32 %6, 16
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end
  %7 = bitcast [29 x i8*]* %features19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* bitcast ([29 x i8*]* @init_bltinmods.features116 to i8*), i32 116, i32 4, i1 false)
  %arraydecay20 = getelementptr inbounds [29 x i8*]* %features19, i32 0, i32 0
  %call21 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str117, i32 0, i32 0), i8** %arraydecay20, i32 0, i32 1) nounwind
  %.pre112 = load i32* @emulation, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then18
  %8 = phi i32 [ %6, %if.end ], [ %.pre112, %if.then18 ]
  %and27 = and i32 %8, 16
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end22
  %9 = bitcast [3 x i8*]* %features30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* bitcast ([3 x i8*]* @init_bltinmods.features120 to i8*), i32 12, i32 4, i1 false)
  %arraydecay31 = getelementptr inbounds [3 x i8*]* %features30, i32 0, i32 0
  %call32 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str121, i32 0, i32 0), i8** %arraydecay31, i32 0, i32 1) nounwind
  %.pre113 = load i32* @emulation, align 4, !tbaa !0
  br label %if.end33

if.end33:                                         ; preds = %if.end22, %if.then29
  %10 = phi i32 [ %8, %if.end22 ], [ %.pre113, %if.then29 ]
  %and38 = and i32 %10, 16
  %tobool39 = icmp eq i32 %and38, 0
  br i1 %tobool39, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.end33
  %11 = bitcast [3 x i8*]* %features41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* bitcast ([3 x i8*]* @init_bltinmods.features124 to i8*), i32 12, i32 4, i1 false)
  %arraydecay42 = getelementptr inbounds [3 x i8*]* %features41, i32 0, i32 0
  %call43 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str125, i32 0, i32 0), i8** %arraydecay42, i32 0, i32 1) nounwind
  %.pre114 = load i32* @emulation, align 4, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.end33, %if.then40
  %12 = phi i32 [ %10, %if.end33 ], [ %.pre114, %if.then40 ]
  %and49 = and i32 %12, 16
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.end44
  %13 = bitcast [5 x i8*]* %features52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* bitcast ([5 x i8*]* @init_bltinmods.features130 to i8*), i32 20, i32 4, i1 false)
  %arraydecay53 = getelementptr inbounds [5 x i8*]* %features52, i32 0, i32 0
  %call54 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str131, i32 0, i32 0), i8** %arraydecay53, i32 0, i32 1) nounwind
  br label %if.end55

if.end55:                                         ; preds = %if.end44, %if.then51
  call void @add_dep(i8* getelementptr inbounds ([10 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0)) nounwind
  %14 = load i32* @emulation, align 4, !tbaa !0
  %and60 = and i32 %14, 16
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end55
  %15 = bitcast [3 x i8*]* %features63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* bitcast ([3 x i8*]* @init_bltinmods.features135 to i8*), i32 12, i32 4, i1 false)
  %arraydecay64 = getelementptr inbounds [3 x i8*]* %features63, i32 0, i32 0
  %call65 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str136, i32 0, i32 0), i8** %arraydecay64, i32 0, i32 1) nounwind
  br label %if.end66

if.end66:                                         ; preds = %if.end55, %if.then62
  call void @add_dep(i8* getelementptr inbounds ([12 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0)) nounwind
  call void @add_dep(i8* getelementptr inbounds ([12 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0)) nounwind
  %16 = load i32* @emulation, align 4, !tbaa !0
  %and71 = and i32 %16, 16
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %if.end77, label %if.then73

if.then73:                                        ; preds = %if.end66
  %17 = bitcast [7 x i8*]* %features74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* bitcast ([7 x i8*]* @init_bltinmods.features144 to i8*), i32 28, i32 4, i1 false)
  %arraydecay75 = getelementptr inbounds [7 x i8*]* %features74, i32 0, i32 0
  %call76 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0), i8** %arraydecay75, i32 0, i32 1) nounwind
  br label %if.end77

if.end77:                                         ; preds = %if.end66, %if.then73
  call void @add_dep(i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0)) nounwind
  call void @add_dep(i8* getelementptr inbounds ([13 x i8]* @.str145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0)) nounwind
  call void @add_dep(i8* getelementptr inbounds ([13 x i8]* @.str145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0)) nounwind
  %18 = load i32* @emulation, align 4, !tbaa !0
  %and82 = and i32 %18, 16
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.end88, label %if.then84

if.then84:                                        ; preds = %if.end77
  %19 = bitcast [9 x i8*]* %features85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* bitcast ([9 x i8*]* @init_bltinmods.features154 to i8*), i32 36, i32 4, i1 false)
  %arraydecay86 = getelementptr inbounds [9 x i8*]* %features85, i32 0, i32 0
  %call87 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str155, i32 0, i32 0), i8** %arraydecay86, i32 0, i32 1) nounwind
  br label %if.end88

if.end88:                                         ; preds = %if.end77, %if.then84
  call void @add_dep(i8* getelementptr inbounds ([13 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str132, i32 0, i32 0)) nounwind
  call void @add_dep(i8* getelementptr inbounds ([13 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0)) nounwind
  %20 = load i32* @emulation, align 4, !tbaa !0
  %and93 = and i32 %20, 16
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %if.end99, label %if.then95

if.then95:                                        ; preds = %if.end88
  %21 = bitcast [4 x i8*]* %features96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* bitcast ([4 x i8*]* @init_bltinmods.features159 to i8*), i32 16, i32 4, i1 false)
  %arraydecay97 = getelementptr inbounds [4 x i8*]* %features96, i32 0, i32 0
  %call98 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0), i8** %arraydecay97, i32 0, i32 1) nounwind
  %.pre115 = load i32* @emulation, align 4, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.end88, %if.then95
  %22 = phi i32 [ %20, %if.end88 ], [ %.pre115, %if.then95 ]
  %and104 = and i32 %22, 16
  %tobool105 = icmp eq i32 %and104, 0
  br i1 %tobool105, label %if.end110, label %if.then106

if.then106:                                       ; preds = %if.end99
  %23 = bitcast [3 x i8*]* %features107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* bitcast ([3 x i8*]* @init_bltinmods.features162 to i8*), i32 12, i32 4, i1 false)
  %arraydecay108 = getelementptr inbounds [3 x i8*]* %features107, i32 0, i32 0
  %call109 = call i32 @autofeatures(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str163, i32 0, i32 0), i8** %arraydecay108, i32 0, i32 1) nounwind
  br label %if.end110

if.end110:                                        ; preds = %if.end99, %if.then106
  call void @add_dep(i8* getelementptr inbounds ([17 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0)) nounwind
  call void @register_module(i8* getelementptr inbounds ([9 x i8]* @.str164, i32 0, i32 0), i32 (%struct.module*)* @setup_zshQsmain, i32 (%struct.module*, i8***)* @features_zshQsmain, i32 (%struct.module*, i32**)* @enables_zshQsmain, i32 (%struct.module*)* @boot_zshQsmain, i32 (%struct.module*)* @cleanup_zshQsmain, i32 (%struct.module*)* @finish_zshQsmain) nounwind
  %call111 = call i32 @load_module(i8* getelementptr inbounds ([9 x i8]* @.str164, i32 0, i32 0), %struct.feature_enables* null, i32 0) nounwind
  ret void
}

declare i32 @autofeatures(i8*, i8*, i8**, i32, i32)

declare void @add_dep(i8*, i8*)

declare void @register_module(i8*, i32 (%struct.module*)*, i32 (%struct.module*, i8***)*, i32 (%struct.module*, i32**)*, i32 (%struct.module*)*, i32 (%struct.module*)*, i32 (%struct.module*)*)

declare i32 @setup_zshQsmain(%struct.module*)

declare i32 @features_zshQsmain(%struct.module*, i8***)

declare i32 @enables_zshQsmain(%struct.module*, i32**)

declare i32 @boot_zshQsmain(%struct.module*)

declare i32 @cleanup_zshQsmain(%struct.module*)

declare i32 @finish_zshQsmain(%struct.module*)

define void @noop_function() nounwind readnone {
entry:
  ret void
}

define void @noop_function_int(i32 %nothing) nounwind readnone {
entry:
  ret void
}

define i8* @zleentry(i32 %cmd, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  %pptlen = alloca i32, align 4
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load i32* @zle_load_state, align 4, !tbaa !0
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %cmd.off = add i32 %cmd, -3
  %1 = icmp ugt i32 %cmd.off, 1
  %cmp4 = icmp ne i32 %cmd, 5
  %or.cond29 = and i1 %1, %cmp4
  br i1 %or.cond29, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %call = call i32 @load_module(i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0), %struct.feature_enables* null, i32 0) nounwind
  %cmp5 = icmp eq i32 %call, 1
  br i1 %cmp5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @load_module(i8* getelementptr inbounds ([12 x i8]* @.str136, i32 0, i32 0), %struct.feature_enables* null, i32 0) nounwind
  %2 = load i8* (i32, i8*)** @zle_entry_ptr, align 4, !tbaa !4
  %3 = load i8** %ap, align 4, !tbaa !4
  %call8 = call i8* %2(i32 %cmd, i8* %3) nounwind
  br label %sw.epilog27

if.else:                                          ; preds = %if.then
  store i32 2, i32* @zle_load_state, align 4, !tbaa !0
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %4 = load i8* (i32, i8*)** @zle_entry_ptr, align 4, !tbaa !4
  %5 = load i8** %ap, align 4, !tbaa !4
  %call11 = call i8* %4(i32 %cmd, i8* %5) nounwind
  br label %sw.epilog27

sw.epilog:                                        ; preds = %sw.bb, %if.else, %entry
  switch i32 %cmd, label %sw.epilog27 [
    i32 1, label %sw.bb14
    i32 0, label %sw.bb21
  ]

sw.bb14:                                          ; preds = %sw.epilog
  %ap.cur = load i8** %ap, align 4
  %6 = bitcast i8* %ap.cur to i8***
  %ap.next = getelementptr i8* %ap.cur, i32 4
  store i8* %ap.next, i8** %ap, align 4
  %7 = load i8*** %6, align 4
  %tobool = icmp eq i8** %7, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %sw.bb14
  %8 = load i8** %7, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %sw.bb14, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ null, %sw.bb14 ]
  %call15 = call i8* @promptexpand(i8* %cond, i32 0, i8* null, i8* null, i32* null) nounwind
  %call16 = call i8* @unmetafy(i8* %call15, i32* %pptlen) nounwind
  %9 = load i32* %pptlen, align 4, !tbaa !0
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %cond.end
  %11 = sext i32 %9 to i64
  call void @__ioc_report_conversion(i32 1389, i32 27, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %cond.end
  %call19 = call i32 @write_loop(i32 2, i8* %call16, i32 %9) nounwind
  call void @free(i8* %call16) nounwind
  %call20 = call i8* @shingetline() nounwind
  br label %sw.epilog27

sw.bb21:                                          ; preds = %sw.epilog
  %ap.cur22 = load i8** %ap, align 4
  %12 = bitcast i8* %ap.cur22 to i32**
  %ap.next23 = getelementptr i8* %ap.cur22, i32 4
  store i8* %ap.next23, i8** %ap, align 4
  %13 = load i32** %12, align 4
  %14 = bitcast i8* %ap.next23 to i32**
  %ap.next25 = getelementptr i8* %ap.cur22, i32 8
  store i8* %ap.next25, i8** %ap, align 4
  %15 = load i32** %14, align 4
  store i32 0, i32* %15, align 4, !tbaa !0
  store i32 0, i32* %13, align 4, !tbaa !0
  %call26 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %if.then6, %sw.bb10, %sw.epilog, %sw.bb21, %cont18
  %ret.1 = phi i8* [ null, %sw.epilog ], [ %call26, %sw.bb21 ], [ %call20, %cont18 ], [ %call11, %sw.bb10 ], [ %call8, %if.then6 ]
  call void @llvm.va_end(i8* %ap1)
  ret i8* %ret.1
}

declare void @llvm.va_start(i8*) nounwind

declare i8* @unmetafy(i8*, i32*)

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*)

declare i32 @write_loop(i32, i8*, i32)

declare i8* @shingetline()

declare void @llvm.va_end(i8*) nounwind

define i32 @fallback_compctlread(i8* %name, i8** nocapture %args, %struct.options* nocapture %ops, i8* nocapture %reply) nounwind {
entry:
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %name, i8* getelementptr inbounds ([54 x i8]* @.str165, i32 0, i32 0)) nounwind
  ret i32 1
}

define i32 @zsh_main(i32 %argc, i8** %argv) noreturn nounwind {
entry:
  %sfname.i = alloca i8*, align 4
  %st.i = alloca %struct.stat, align 4
  %argv.addr.i = alloca i8**, align 4
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0)) nounwind
  %0 = load i8*** @environ, align 4, !tbaa !4
  call void @init_jobs(i8** %argv, i8** %0) nounwind
  %1 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 0), align 2, !tbaa !5
  %or = or i16 %1, 4096
  store i16 %or, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 0), align 2, !tbaa !5
  call void @__ioc_report_conversion(i32 1445, i32 34, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1445, i32 26, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 -125, i8 1) nounwind
  %2 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 131), align 2, !tbaa !5
  %or13 = or i16 %2, 4096
  store i16 %or13, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 131), align 2, !tbaa !5
  call void @__ioc_report_conversion(i32 1446, i32 34, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i64 160, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1446, i32 26, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 -96, i8 1) nounwind
  %3 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 160), align 2, !tbaa !5
  %or24 = or i16 %3, 4096
  store i16 %or24, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 160), align 2, !tbaa !5
  call void @__ioc_report_conversion(i32 1447, i32 45, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i64 132, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1447, i32 37, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 -124, i8 1) nounwind
  br label %ioc_bb30

ioc_bb30:                                         ; preds = %ioc_bb46, %cont42, %entry
  %t0.0 = phi i32 [ 132, %entry ], [ %7, %cont42 ], [ %7, %ioc_bb46 ]
  call void @__ioc_report_conversion(i32 1447, i32 92, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i64 157, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1447, i32 84, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 -99, i8 1) nounwind
  %cmp = icmp slt i32 %t0.0, 158
  br i1 %cmp, label %cont42, label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %ioc_bb30
  %4 = load i8** %argv, align 4, !tbaa !4
  %tobool267 = icmp eq i8* %4, null
  br i1 %tobool267, label %for.end54, label %cont52

cont42:                                           ; preds = %ioc_bb30
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.0
  %5 = load i16* %arrayidx, align 2, !tbaa !5
  %or44 = or i16 %5, 4112
  store i16 %or44, i16* %arrayidx, align 2, !tbaa !5
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb46, label %ioc_bb30

ioc_bb46:                                         ; preds = %cont42
  %9 = sext i32 %t0.0 to i64
  call void @__ioc_report_add_overflow(i32 1447, i32 103, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %ioc_bb30

cont52:                                           ; preds = %for.cond48.preheader, %cont52
  %10 = phi i8* [ %11, %cont52 ], [ %4, %for.cond48.preheader ]
  %t.0268 = phi i8** [ %incdec.ptr, %cont52 ], [ %argv, %for.cond48.preheader ]
  %call53 = call i8* @metafy(i8* %10, i32 -1, i32 4) nounwind
  store i8* %call53, i8** %t.0268, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8** %t.0268, i32 1
  %11 = load i8** %incdec.ptr, align 4, !tbaa !4
  %tobool = icmp eq i8* %11, null
  br i1 %tobool, label %for.cond48.for.end54_crit_edge, label %cont52

for.cond48.for.end54_crit_edge:                   ; preds = %cont52
  %.pre = load i8** %argv, align 4, !tbaa !4
  br label %for.end54

for.end54:                                        ; preds = %for.cond48.for.end54_crit_edge, %for.cond48.preheader
  %12 = phi i8* [ %.pre, %for.cond48.for.end54_crit_edge ], [ null, %for.cond48.preheader ]
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str166, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str166 to i32))
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %cmp69 = icmp eq i32 %15, 1
  br label %do.body

do.body:                                          ; preds = %land.lhs.true128, %for.end54
  %storemerge266 = phi i8* [ %12, %for.end54 ], [ %call126, %land.lhs.true128 ]
  store i8* %storemerge266, i8** @zsh_name, align 4
  %call56 = call i8* @strrchr(i8* %storemerge266, i32 47) nounwind readonly
  %tobool57 = icmp eq i8* %call56, null
  %incdec.ptr58 = getelementptr inbounds i8* %call56, i32 1
  %storemerge = select i1 %tobool57, i8* %storemerge266, i8* %incdec.ptr58
  store i8* %storemerge, i8** @zsh_name, align 4
  %16 = load i8* %storemerge, align 1, !tbaa !1
  %cmp60 = icmp eq i8 %16, 45
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.body
  %incdec.ptr63 = getelementptr inbounds i8* %storemerge, i32 1
  store i8* %incdec.ptr63, i8** @zsh_name, align 4, !tbaa !4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.body
  %17 = phi i8* [ %incdec.ptr63, %if.then62 ], [ %storemerge, %do.body ]
  br i1 %14, label %ioc_bb65, label %cont68

ioc_bb65:                                         ; preds = %if.end64
  call void @__ioc_report_sub_overflow(i32 1460, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str166, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str166 to i32) to i64), i8 5) nounwind
  %.pre269 = load i8** @zsh_name, align 4, !tbaa !4
  br label %cont68

cont68:                                           ; preds = %ioc_bb65, %if.end64
  %18 = phi i8* [ %.pre269, %ioc_bb65 ], [ %17, %if.end64 ]
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont68
  %19 = load i8* %18, align 1, !tbaa !1
  %conv76 = zext i8 %19 to i32
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv76, i32 115)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb78, label %land.lhs.true84

ioc_bb78:                                         ; preds = %cond.true
  %23 = zext i8 %19 to i64
  call void @__ioc_report_sub_overflow(i32 1460, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %23, i64 115, i8 13) nounwind
  br label %land.lhs.true84

land.lhs.true84:                                  ; preds = %cond.true, %ioc_bb78
  %cmp85 = icmp eq i32 %21, 0
  br i1 %cmp85, label %if.then87, label %do.end

if.then87:                                        ; preds = %land.lhs.true84
  %arrayidx88 = getelementptr inbounds i8* %18, i32 1
  %24 = load i8* %arrayidx88, align 1, !tbaa !1
  %conv89 = zext i8 %24 to i32
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv89, i32 117)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb91, label %land.lhs.true97

ioc_bb91:                                         ; preds = %if.then87
  %28 = zext i8 %24 to i64
  call void @__ioc_report_sub_overflow(i32 1460, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %28, i64 117, i8 13) nounwind
  br label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.then87, %ioc_bb91
  %cmp98 = icmp eq i32 %26, 0
  br i1 %cmp98, label %if.then100, label %do.end

if.then100:                                       ; preds = %land.lhs.true97
  %arrayidx101 = getelementptr inbounds i8* %18, i32 2
  %29 = load i8* %arrayidx101, align 1, !tbaa !1
  %conv102 = zext i8 %29 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont68
  %call122 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str166, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then100, %cond.false
  %cond = phi i32 [ %call122, %cond.false ], [ %conv102, %if.then100 ]
  %cmp123 = icmp eq i32 %cond, 0
  br i1 %cmp123, label %if.then125, label %do.end

if.then125:                                       ; preds = %cond.end
  %call126 = call i8* @zgetenv(i8* getelementptr inbounds ([6 x i8]* @.str167, i32 0, i32 0)) nounwind
  %tobool127 = icmp eq i8* %call126, null
  br i1 %tobool127, label %do.end, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %if.then125
  %30 = load i8* %call126, align 1, !tbaa !1
  %tobool130 = icmp eq i8 %30, 0
  %cmp132 = icmp eq i8* %storemerge266, %call126
  %or.cond = or i1 %tobool130, %cmp132
  br i1 %or.cond, label %do.end, label %do.body

do.end:                                           ; preds = %if.then125, %land.lhs.true84, %land.lhs.true97, %land.lhs.true128, %cond.end
  %call140 = call i32 @zopenmax() nounwind
  store i32 %call140, i32* @fdtable_size, align 4, !tbaa !0
  %31 = icmp sgt i32 %call140, -1
  br i1 %31, label %cont144, label %ioc_bb141

ioc_bb141:                                        ; preds = %do.end
  %32 = sext i32 %call140 to i64
  call void @__ioc_report_conversion(i32 1471, i32 24, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont144

cont144:                                          ; preds = %do.end, %ioc_bb141
  %call145 = call i8* @zshcalloc(i32 %call140) nounwind
  store i8* %call145, i8** @fdtable, align 4, !tbaa !4
  call void @createoptiontable() nounwind
  %33 = load i8** @zsh_name, align 4, !tbaa !4
  call void @emulate(i8* %33, i32 1) nounwind
  %34 = load i8** %argv, align 4, !tbaa !4
  %35 = load i8* %34, align 1, !tbaa !1
  %cmp147 = icmp eq i8 %35, 45
  %conv152 = zext i1 %cmp147 to i8
  store i8 %conv152, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %call153 = call i32 @getuid() nounwind
  %call154 = call i32 @geteuid() nounwind
  %cmp155 = icmp eq i32 %call153, %call154
  br i1 %cmp155, label %lor.rhs, label %cont164

lor.rhs:                                          ; preds = %cont144
  %call157 = call i32 @getgid() nounwind
  %call158 = call i32 @getegid() nounwind
  %cmp159 = icmp ne i32 %call157, %call158
  br label %cont164

cont164:                                          ; preds = %lor.rhs, %cont144
  %36 = phi i1 [ true, %cont144 ], [ %cmp159, %lor.rhs ]
  %conv165 = zext i1 %36 to i8
  store i8 %conv165, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1, !tbaa !1
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167), align 1, !tbaa !1
  %37 = bitcast i8*** %argv.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %37) nounwind
  %incdec.ptr.i = getelementptr inbounds i8** %argv, i32 1
  store i8** %incdec.ptr.i, i8*** %argv.addr.i, align 4, !tbaa !4
  %38 = load i8** %argv, align 4, !tbaa !4
  store i8* %38, i8** @argzero, align 4, !tbaa !4
  store i32 0, i32* @SHIN, align 4, !tbaa !0
  %call.i = call i32 @isatty(i32 0) nounwind
  %tobool.i = icmp ne i32 %call.i, 0
  %conv.i = select i1 %tobool.i, i8 2, i8 0
  store i8 %conv.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  store i8 2, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  store i8 2, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 63), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 155), align 1, !tbaa !1
  %call9.i = call i8* @parseopts(i8* null, i8*** %argv.addr.i) nounwind
  store i8* %call9.i, i8** @cmd, align 4, !tbaa !4
  %call10.i = call %union.linkroot* @znewlinklist() nounwind
  %39 = load i8*** %argv.addr.i, align 4, !tbaa !4
  %40 = load i8** %39, align 4, !tbaa !4
  %tobool11.i = icmp eq i8* %40, null
  br i1 %tobool11.i, label %if.else24.i, label %if.then.i

if.then.i:                                        ; preds = %cont164
  %41 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool12.i = icmp eq i8 %41, 0
  br i1 %tobool12.i, label %if.then13.i, label %while.body.lr.ph.i

if.then13.i:                                      ; preds = %if.then.i
  %42 = load i8** @cmd, align 4, !tbaa !4
  %tobool14.i = icmp eq i8* %42, null
  br i1 %tobool14.i, label %while.cond.preheader.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then13.i
  store i8* %40, i8** @argzero, align 4, !tbaa !4
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then13.i, %if.then15.i
  %43 = phi i8* [ null, %if.then15.i ], [ %40, %if.then13.i ]
  %44 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %and.i = and i8 %44, 1
  store i8 %and.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %incdec.ptr18.i = getelementptr inbounds i8** %39, i32 1
  store i8** %incdec.ptr18.i, i8*** %argv.addr.i, align 4, !tbaa !4
  %.pre.i = load i8** %incdec.ptr18.i, align 4, !tbaa !4
  %tobool2075.i = icmp eq i8* %.pre.i, null
  br i1 %tobool2075.i, label %if.end30.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i, %if.then.i
  %45 = phi i8* [ %43, %while.cond.preheader.i ], [ null, %if.then.i ]
  %46 = phi i8** [ %incdec.ptr18.i, %while.cond.preheader.i ], [ %39, %if.then.i ]
  %47 = phi i8* [ %.pre.i, %while.cond.preheader.i ], [ %40, %if.then.i ]
  %last.i = getelementptr inbounds %union.linkroot* %call10.i, i32 0, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %48 = phi i8* [ %47, %while.body.lr.ph.i ], [ %51, %while.body.i ]
  %49 = phi i8** [ %46, %while.body.lr.ph.i ], [ %incdec.ptr21.i, %while.body.i ]
  %50 = load %struct.linknode** %last.i, align 4, !tbaa !4
  %incdec.ptr21.i = getelementptr inbounds i8** %49, i32 1
  %call22.i = call i8* @ztrdup(i8* %48) nounwind
  %call23.i = call %struct.linknode* @zinsertlinknode(%union.linkroot* %call10.i, %struct.linknode* %50, i8* %call22.i) nounwind
  %51 = load i8** %incdec.ptr21.i, align 4, !tbaa !4
  %tobool20.i = icmp eq i8* %51, null
  br i1 %tobool20.i, label %while.cond.if.end30.loopexit_crit_edge.i, label %while.body.i

if.else24.i:                                      ; preds = %cont164
  %52 = load i8** @cmd, align 4, !tbaa !4
  %tobool25.i = icmp eq i8* %52, null
  br i1 %tobool25.i, label %cont28.i, label %if.end30.i

cont28.i:                                         ; preds = %if.else24.i
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  br label %if.end30.i

while.cond.if.end30.loopexit_crit_edge.i:         ; preds = %while.body.i
  store i8** %incdec.ptr21.i, i8*** %argv.addr.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else24.i, %while.cond.if.end30.loopexit_crit_edge.i, %cont28.i, %while.cond.preheader.i
  %53 = phi i8* [ %45, %while.cond.if.end30.loopexit_crit_edge.i ], [ null, %cont28.i ], [ %43, %while.cond.preheader.i ], [ null, %if.else24.i ]
  %54 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 155), align 1, !tbaa !1
  %tobool31.i = icmp eq i8 %54, 0
  %.pre76.i = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  br i1 %tobool31.i, label %cont42.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %and34.i = and i8 %.pre76.i, 1
  store i8 %and34.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  br label %cont42.i

cont42.i:                                         ; preds = %if.then32.i, %if.end30.i
  %55 = phi i8 [ %and34.i, %if.then32.i ], [ %.pre76.i, %if.end30.i ]
  %tobool37.i = icmp ne i8 %55, 0
  %conv43.i = zext i1 %tobool37.i to i8
  store i8 %conv43.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %56 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %cmp.i = icmp eq i8 %56, 2
  br i1 %cmp.i, label %if.then46.i, label %if.end47.i

if.then46.i:                                      ; preds = %cont42.i
  store i8 %conv43.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %cont42.i
  %57 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 63), align 1, !tbaa !1
  %cmp49.i = icmp eq i8 %57, 2
  br i1 %cmp49.i, label %if.then51.i, label %if.end52.i

if.then51.i:                                      ; preds = %if.end47.i
  store i8 %conv43.i, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 63), align 1, !tbaa !1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.end47.i
  %call53.i = call i32 @countlinknodes(%union.linkroot* %call10.i) nounwind
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call53.i, i32 1) nounwind
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb54.i, label %cont55.i

ioc_bb54.i:                                       ; preds = %if.end52.i
  %61 = sext i32 %call53.i to i64
  call void @__ioc_report_add_overflow(i32 239, i32 65, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %61, i64 1, i8 13) nounwind
  br label %cont55.i

cont55.i:                                         ; preds = %ioc_bb54.i, %if.end52.i
  %62 = icmp sgt i32 %59, -1
  br i1 %62, label %cont58.i, label %ioc_bb57.i

ioc_bb57.i:                                       ; preds = %cont55.i
  %63 = sext i32 %59 to i64
  call void @__ioc_report_conversion(i32 239, i32 38, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %63, i8 1) nounwind
  br label %cont58.i

cont58.i:                                         ; preds = %ioc_bb57.i, %cont55.i
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 4) nounwind
  %65 = extractvalue { i32, i1 } %64, 0
  %66 = extractvalue { i32, i1 } %64, 1
  br i1 %66, label %ioc_bb59.i, label %cont60.i

ioc_bb59.i:                                       ; preds = %cont58.i
  %67 = zext i32 %59 to i64
  call void @__ioc_report_mul_overflow(i32 239, i32 70, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %67, i64 4, i8 5) nounwind
  br label %cont60.i

cont60.i:                                         ; preds = %ioc_bb59.i, %cont58.i
  %call61.i = call i8* @zshcalloc(i32 %65) nounwind
  %68 = bitcast i8* %call61.i to i8**
  store i8** %68, i8*** @pparams, align 4, !tbaa !4
  br label %while.cond62.i

while.cond62.i:                                   ; preds = %while.cond62.i, %cont60.i
  %x.0.i = phi i8** [ %68, %cont60.i ], [ %incdec.ptr64.i, %while.cond62.i ]
  %call63.i = call i8* @getlinknode(%union.linkroot* %call10.i) nounwind
  %incdec.ptr64.i = getelementptr inbounds i8** %x.0.i, i32 1
  store i8* %call63.i, i8** %x.0.i, align 4, !tbaa !4
  %tobool65.i = icmp eq i8* %call63.i, null
  br i1 %tobool65.i, label %parseargs.exit, label %while.cond62.i

parseargs.exit:                                   ; preds = %while.cond62.i
  %69 = bitcast %union.linkroot* %call10.i to i8*
  call void @free(i8* %69) nounwind
  %70 = load i8** @argzero, align 4, !tbaa !4
  %call68.i = call i8* @ztrdup(i8* %70) nounwind
  store i8* %call68.i, i8** @argzero, align 4, !tbaa !4
  call void @llvm.lifetime.end(i64 -1, i8* %37) nounwind
  store i32 -1, i32* @SHTTY, align 4, !tbaa !0
  call void @init_io()
  call void @setupvals()
  call void @init_signals()
  call void @init_bltinmods()
  call void @init_builtins() nounwind
  call void @run_init_scripts()
  %71 = bitcast i8** %sfname.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %71) nounwind
  %72 = bitcast %struct.stat* %st.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %72) nounwind
  %tobool.i254 = icmp eq i8* %53, null
  br i1 %tobool.i254, label %if.end27.i, label %if.then.i257

if.then.i257:                                     ; preds = %parseargs.exit
  store i8* null, i8** %sfname.i, align 4, !tbaa !4
  %call.i255 = call i8* @unmeta(i8* %53) nounwind
  %call1.i = call i32 @access(i8* %call.i255, i32 0) nounwind
  %cmp.i256 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i256, label %land.lhs.true.i, label %if.else.i259

land.lhs.true.i:                                  ; preds = %if.then.i257
  %73 = bitcast %struct.stat* %st.i to %struct.stat64*
  %call.i.i = call i32 @__xstat64(i32 3, i8* %call.i255, %struct.stat64* %73) nounwind
  %cmp3.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp3.i, label %cont6.i, label %if.else.i259

cont6.i:                                          ; preds = %land.lhs.true.i
  %st_mode.i = getelementptr inbounds %struct.stat* %st.i, i32 0, i32 3
  %74 = load i32* %st_mode.i, align 4, !tbaa !0
  %and.i258 = and i32 %74, 61440
  %cmp7.i = icmp eq i32 %and.i258, 16384
  br i1 %cmp7.i, label %if.else.i259, label %if.then8.i

if.then8.i:                                       ; preds = %cont6.i
  store i8* %53, i8** %sfname.i, align 4, !tbaa !4
  br label %if.end17.i

if.else.i259:                                     ; preds = %cont6.i, %land.lhs.true.i, %if.then.i257
  %75 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 119), align 1, !tbaa !1
  %tobool9.i = icmp eq i8 %75, 0
  br i1 %tobool9.i, label %if.end17thread-pre-split.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.else.i259
  %call13.i = call i8* @strchr(i8* %53, i32 47) nounwind
  %tobool14.i260 = icmp eq i8* %call13.i, null
  br i1 %tobool14.i260, label %if.then15.i261, label %if.end17thread-pre-split.i

if.then15.i261:                                   ; preds = %cond.false.i
  %call16.i = call i8* @pathprog(i8* %53, i8** %sfname.i) nounwind
  br label %if.end17thread-pre-split.i

if.end17thread-pre-split.i:                       ; preds = %if.then15.i261, %cond.false.i, %if.else.i259
  %funmeta.0.ph.i = phi i8* [ %call.i255, %cond.false.i ], [ %call.i255, %if.else.i259 ], [ %call16.i, %if.then15.i261 ]
  %.pr.i = load i8** %sfname.i, align 4, !tbaa !4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17thread-pre-split.i, %if.then8.i
  %76 = phi i8* [ %.pr.i, %if.end17thread-pre-split.i ], [ %53, %if.then8.i ]
  %funmeta.0.i = phi i8* [ %funmeta.0.ph.i, %if.end17thread-pre-split.i ], [ %call.i255, %if.then8.i ]
  %tobool18.i = icmp eq i8* %76, null
  br i1 %tobool18.i, label %if.then25.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %call19.i = call i32 (i8*, i32, ...)* @open64(i8* %funmeta.0.i, i32 256) nounwind
  %call20.i = call i32 @movefd(i32 %call19.i) nounwind
  store i32 %call20.i, i32* @SHIN, align 4, !tbaa !0
  %cmp23.i = icmp eq i32 %call20.i, -1
  br i1 %cmp23.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %lor.lhs.false.i, %if.end17.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([26 x i8]* @.str170, i32 0, i32 0), i8* %53) nounwind
  call void @exit(i32 127) noreturn nounwind
  unreachable

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %77 = load i8** %sfname.i, align 4, !tbaa !4
  store i8* %77, i8** @scriptfilename, align 4, !tbaa !4
  %78 = load i8** @argzero, align 4, !tbaa !4
  call void @zsfree(i8* %78) nounwind
  store i8* %53, i8** @argzero, align 4, !tbaa !4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end26.i, %parseargs.exit
  store i64 1, i64* @lineno, align 8, !tbaa !3
  %79 = load i32* @SHIN, align 4, !tbaa !0
  %tobool28.i = icmp eq i32 %79, 0
  br i1 %tobool28.i, label %cond.false31.i, label %cond.true29.i

cond.true29.i:                                    ; preds = %if.end27.i
  %call30.i = call %struct._IO_FILE* @fdopen(i32 %79, i8* getelementptr inbounds ([2 x i8]* @.str75, i32 0, i32 0)) nounwind
  %.pre.i262 = load i32* @SHIN, align 4, !tbaa !0
  %phitmp.i = icmp ne i32 %.pre.i262, 0
  br label %cond.end.i

cond.false31.i:                                   ; preds = %if.end27.i
  %80 = load %struct._IO_FILE** @stdin, align 4, !tbaa !4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false31.i, %cond.true29.i
  %81 = phi i1 [ %phitmp.i, %cond.true29.i ], [ false, %cond.false31.i ]
  %cond.i = phi %struct._IO_FILE* [ %call30.i, %cond.true29.i ], [ %80, %cond.false31.i ]
  store %struct._IO_FILE* %cond.i, %struct._IO_FILE** @bshin, align 4, !tbaa !4
  %82 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool33.i = icmp eq i8 %82, 0
  %or.cond.i = or i1 %tobool33.i, %81
  %83 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool37.i263 = icmp ne i8 %83, 0
  %or.cond43.i = or i1 %or.cond.i, %tobool37.i263
  br i1 %or.cond43.i, label %setupshin.exit, label %cont40.i

cont40.i:                                         ; preds = %cond.end.i
  %84 = load %struct._IO_FILE** @stdin, align 4, !tbaa !4
  %call41.i = call i32 @setvbuf(%struct._IO_FILE* %84, i8* null, i32 2, i32 0) nounwind
  br label %setupshin.exit

setupshin.exit:                                   ; preds = %cond.end.i, %cont40.i
  call void @llvm.lifetime.end(i64 -1, i8* %71) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %72) nounwind
  call void @init_misc()
  br label %for.cond170

for.cond170:                                      ; preds = %if.end218, %if.then220, %cont205, %setupshin.exit
  call void @maybeshrinkjobtab() nounwind
  br label %do.body171

do.body171:                                       ; preds = %do.body171, %lor.rhs178, %for.cond170
  store i32 0, i32* @retflag, align 4, !tbaa !0
  %call172 = call i32 @loop(i32 1, i32 0)
  %85 = load i32* @tok, align 4, !tbaa !0
  switch i32 %85, label %do.body171 [
    i32 37, label %if.end195
    i32 38, label %lor.rhs178
  ]

lor.rhs178:                                       ; preds = %do.body171
  %86 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool180 = icmp eq i8 %86, 0
  br i1 %tobool180, label %if.then186, label %do.body171

if.then186:                                       ; preds = %lor.rhs178
  %87 = load i64* @lastval, align 8, !tbaa !3
  %tobool187 = icmp eq i64 %87, 0
  br i1 %tobool187, label %if.end189.thread, label %if.end189

if.end189.thread:                                 ; preds = %if.then186
  store i64 1, i64* @lastval, align 8, !tbaa !3
  store i32 1, i32* @stopmsg, align 4, !tbaa !0
  br label %cont193

if.end189:                                        ; preds = %if.then186
  store i32 1, i32* @stopmsg, align 4, !tbaa !0
  %.off251 = add i64 %87, 2147483648
  %88 = icmp ult i64 %.off251, 4294967296
  %extract.t271 = trunc i64 %87 to i32
  br i1 %88, label %cont193, label %ioc_bb192

ioc_bb192:                                        ; preds = %if.end189
  call void @__ioc_report_conversion(i32 1507, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %87, i8 1) nounwind
  %extract.t = trunc i64 %87 to i32
  br label %cont193

cont193:                                          ; preds = %if.end189.thread, %ioc_bb192, %if.end189
  %.off0 = phi i32 [ 1, %if.end189.thread ], [ %extract.t, %ioc_bb192 ], [ %extract.t271, %if.end189 ]
  call void @zexit(i32 %.off0, i32 0) nounwind
  br label %if.end195

if.end195:                                        ; preds = %do.body171, %cont193
  %89 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 85), align 1, !tbaa !1
  %tobool197 = icmp eq i8 %89, 0
  %90 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool200 = icmp eq i8 %90, 0
  %or.cond253 = or i1 %tobool197, %tobool200
  br i1 %or.cond253, label %if.then201, label %if.end207

if.then201:                                       ; preds = %if.end195
  %91 = load i64* @lastval, align 8, !tbaa !3
  %.off = add i64 %91, 2147483648
  %92 = icmp ult i64 %.off, 4294967296
  br i1 %92, label %cont205, label %ioc_bb204

ioc_bb204:                                        ; preds = %if.then201
  call void @__ioc_report_conversion(i32 1512, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %91, i8 1) nounwind
  br label %cont205

cont205:                                          ; preds = %ioc_bb204, %if.then201
  %conv206 = trunc i64 %91 to i32
  call void @zexit(i32 %conv206, i32 0) nounwind
  br label %for.cond170

if.end207:                                        ; preds = %if.end195
  %93 = load i32* @noexitct, align 4, !tbaa !0
  %94 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %93, i32 1)
  %95 = extractvalue { i32, i1 } %94, 0
  %96 = extractvalue { i32, i1 } %94, 1
  br i1 %96, label %ioc_bb208, label %cont209

ioc_bb208:                                        ; preds = %if.end207
  %97 = sext i32 %93 to i64
  call void @__ioc_report_add_overflow(i32 1515, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %97, i64 1, i8 13) nounwind
  br label %cont209

cont209:                                          ; preds = %if.end207, %ioc_bb208
  store i32 %95, i32* @noexitct, align 4, !tbaa !0
  %cmp210 = icmp sgt i32 %95, 9
  br i1 %cmp210, label %if.then212, label %if.end218

if.then212:                                       ; preds = %cont209
  store i32 1, i32* @stopmsg, align 4, !tbaa !0
  %98 = load i64* @lastval, align 8, !tbaa !3
  %.off250 = add i64 %98, 2147483648
  %99 = icmp ult i64 %.off250, 4294967296
  br i1 %99, label %cont216, label %ioc_bb215

ioc_bb215:                                        ; preds = %if.then212
  call void @__ioc_report_conversion(i32 1518, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %98, i8 1) nounwind
  br label %cont216

cont216:                                          ; preds = %ioc_bb215, %if.then212
  %conv217 = trunc i64 %98 to i32
  call void @zexit(i32 %conv217, i32 0) nounwind
  br label %if.end218

if.end218:                                        ; preds = %cont216, %cont209
  %100 = load i32* @use_exit_printed, align 4, !tbaa !0
  %tobool219 = icmp eq i32 %100, 0
  br i1 %tobool219, label %if.then220, label %for.cond170

if.then220:                                       ; preds = %if.end218
  %101 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 102), align 1, !tbaa !1
  %lnot = icmp eq i8 %101, 0
  %cond222 = select i1 %lnot, i8* getelementptr inbounds ([20 x i8]* @.str168, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str169, i32 0, i32 0)
  call void (i8*, i8*, ...)* @zerrnam(i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* %cond222) nounwind
  br label %for.cond170
}

declare i8* @setlocale(i32, i8*) nounwind

declare void @init_jobs(i8**, i8**)

declare i8* @strrchr(i8*, i32) nounwind readonly

declare i32 @zopenmax()

declare i8* @zshcalloc(i32)

declare void @createoptiontable()

declare void @emulate(i8*, i32)

declare i32 @geteuid() nounwind

declare i32 @getgid() nounwind

declare i32 @getegid() nounwind

declare void @init_builtins()

declare void @maybeshrinkjobtab()

declare void @zerrnam(i8*, i8*, ...)

declare i32 @access(i8* nocapture, i32) nounwind

declare i8* @strchr(i8*, i32) nounwind readonly

declare i8* @pathprog(i8*, i8**)

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i32 @countlinknodes(%union.linkroot*)

declare i8* @getlinknode(%union.linkroot*)

declare void @printoptionlist()

declare i32 @puts(i8* nocapture) nounwind

declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long long", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
!7 = metadata !{i64 0, i64 8, metadata !3, i64 8, i64 8, metadata !3}
!8 = metadata !{i64 0, i64 128, metadata !1}
