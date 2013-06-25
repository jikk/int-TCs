; ModuleID = '../../src/Src/exec.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.__sigset_t = type { [32 x i32] }
%struct.job = type { i32, i32, i32, i8*, %struct.process*, %struct.process*, %union.linkroot*, i32, %struct.ttyinfo* }
%struct.process = type { %struct.process*, i32, [80 x i8], i32, %struct.rusage, %struct.timeval, %struct.timeval }
%struct.rusage = type { %struct.timeval, %struct.timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.funcstack = type { %struct.funcstack*, i8*, i8*, i8*, i64, i64, i32 }
%struct.funcwrap = type { %struct.funcwrap*, i32, i32 (%struct.eprog*, %struct.funcwrap*, i8*)*, %struct.module* }
%struct.module = type { %struct.hashnode, %union.anon.2, %union.linkroot*, %union.linkroot*, i32 }
%union.anon.2 = type { i8* }
%struct.execstack = type { %struct.execstack*, i32, i32, i32, i32, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.builtin = type { %struct.hashnode, i32 (i8*, i8**, %struct.options*, i32)*, i32, i32, i32, i8*, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%struct.alias = type { %struct.hashnode, i8*, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.cmdnam = type { %struct.hashnode, %union.anon }
%union.anon = type { i8** }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.timezone = type { i32, i32 }
%struct.multio = type { i32, i32, i32, [8 x i32] }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.redir = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.gsu_integer = type { i64 (%struct.param*)*, void (%struct.param*, i64)*, void (%struct.param*, i32)* }
%struct.gsu_float = type { double (%struct.param*)*, void (%struct.param*, double)*, void (%struct.param*, i32)* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.mnumber = type { %union.anon.4, i32 }
%union.anon.4 = type { i64 }

@lineno = external global i64
@tok = external global i32
@lastval = external global i64
@limits = common global [15 x %struct.rlimit] zeroinitializer, align 4
@current_limits = common global [15 x %struct.rlimit] zeroinitializer, align 4
@0 = internal unnamed_addr constant [20 x i8] c"__rlimit_resource_t\00"
@1 = internal unnamed_addr constant [23 x i8] c"enum __rlimit_resource\00"
@.str = private unnamed_addr constant [21 x i8] c"setrlimit failed: %e\00", align 1
@list_pipe = global i32 0, align 4
@simple_pline = global i32 0, align 4
@cmdnamtab = external global %struct.hashtable*
@opts = external global [169 x i8]
@path = external global i8**
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@pathchecked = external global i8**
@execode.zsh_eval_context_len = internal unnamed_addr global i32 0, align 4
@zsh_eval_context = external global i8**
@execlist.donetrap.b = internal unnamed_addr global i1 false
@noerrexit = common global i32 0, align 4
@thisjob = external global i32
@pline_level = internal unnamed_addr global i32 0, align 4
@sourcelevel = external global i32
@breaks = external global i32
@retflag = common global i32 0, align 4
@errflag = common global i32 0, align 4
@cmdsp = external global i32
@intrap = external global i32
@trapisfunc = external global i32
@traplocallevel = external global i32
@locallevel = external global i32
@ineval = external global i32
@sigtrapped = external global [34 x i32]
@.str3 = private unnamed_addr constant [14 x i8] c"ZSH_DEBUG_CMD\00", align 1
@mypid = external global i64
@loops = external global i32
@typtab = external global [256 x i16]
@ztokens = external global [0 x i8]
@underscorelen = external global i32
@zunderscore = external global i8*
@underscoreused = external global i32
@esprefork = internal unnamed_addr global i32 0, align 4
@esglob = internal unnamed_addr global i32 1, align 4
@max_zsh_fd = common global i32 0, align 4
@fdtable = common global i8* null, align 4
@hgetc = external global i32 ()*
@lexstop = external global i32
@.str4 = private unnamed_addr constant [7 x i8] c"%e: %s\00", align 1
@cmdoutpid = common global i32 0, align 4
@sigchld_mask = external global %struct.__sigset_t
@cmdoutval = common global i32 0, align 4
@.str5 = private unnamed_addr constant [9 x i8] c"cmdsubst\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@2 = internal unnamed_addr constant [3 x i8] c"*=\00"
@jobtab = external global %struct.job*
@.str7 = private unnamed_addr constant [11 x i8] c"equalsubst\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"outsubst\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"insubst\00", align 1
@noaliases = external global i32
@dummy_eprog = external global %struct.eprog
@.str12 = private unnamed_addr constant [39 x i8] c"%s: function definition file not found\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"evalautofunc\00", align 1
@shfunctab = external global %struct.hashtable*
@.str14 = private unnamed_addr constant [33 x i8] c"%s: function not defined by file\00", align 1
@scriptname = external global i8*
@doshfunc.funcdepth = internal unnamed_addr global i32 0, align 4
@trap_state = common global i32 0, align 4
@trap_return = common global i32 0, align 4
@numpipestats = external global i32
@pipestats = external global [256 x i32]
@pparams = external global i8**
@zoptind = external global i64
@optcind = external global i32
@emulation = external global i32
@sticky_emulation = external global i32
@argzero = external global i8*
@.str15 = private unnamed_addr constant [38 x i8] c"maximum nested function level reached\00", align 1
@funcstack = common global %struct.funcstack* null, align 4
@wrappers = external global %struct.funcwrap*
@exit_pending = external global i32
@forklevel = common global i32 0, align 4
@stopmsg = external global i32
@.str16 = private unnamed_addr constant [7 x i8] c"shfunc\00", align 1
@fpath = external global i8**
@.str17 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@3 = internal unnamed_addr constant [6 x i8] c"off_t\00"
@list_pipe_pid = internal unnamed_addr global i32 0, align 4
@nowait = internal unnamed_addr global i32 0, align 4
@list_pipe_child = internal unnamed_addr global i32 0, align 4
@list_pipe_job = internal unnamed_addr global i32 0, align 4
@list_pipe_text = internal global [80 x i8] zeroinitializer, align 1
@noeval = external global i32
@badcshglob = external global i32
@use_cmdoutval = common global i32 0, align 4
@noerrs = common global i32 0, align 4
@subsh_close = internal unnamed_addr global i32 -1, align 4
@exstack = common global %struct.execstack* null, align 4
@nohistsave = common global i32 0, align 4
@subsh = common global i32 0, align 4
@lastval2 = common global i32 0, align 4
@fdtable_size = common global i32 0, align 4
@coprocin = common global i32 0, align 4
@coprocout = common global i32 0, align 4
@fdtable_flocks = common global i32 0, align 4
@zleactive = common global i32 0, align 4
@sfcontext = common global i32 0, align 4
@.str18 = private unnamed_addr constant [16 x i8] c"pipe failed: %e\00", align 1
@.str19 = private unnamed_addr constant [22 x i8] c"unterminated `%s...)'\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"parse error in process substitution\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str22 = private unnamed_addr constant [25 x i8] c"can't open /dev/null: %e\00", align 1
@mypgrp = external global i32
@zsh_subshell = external global i64
@shout = external global %struct._IO_FILE*
@jobtabsize = external global i32
@.str23 = private unnamed_addr constant [15 x i8] c"job table full\00", align 1
@queueing_enabled = external global i32
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@.str24 = private unnamed_addr constant [16 x i8] c"fork failed: %e\00", align 1
@execpline.lastwj = internal unnamed_addr global i32 0, align 4
@execpline.lpforked = internal unnamed_addr global i32 0, align 4
@curjob = external global i32
@list_pipe_start = internal global %struct.timeval zeroinitializer, align 8
@errbrk_saved = external global i32
@stderr = external global %struct._IO_FILE*
@.str25 = private unnamed_addr constant [29 x i8] c"zsh: job can't be suspended\0A\00", align 1
@prev_errflag = external global i32
@prev_breaks = external global i32
@xtrerr = external global %struct._IO_FILE*
@doneps4.b = internal unnamed_addr global i1 false
@.str26 = private unnamed_addr constant [7 x i8] c"disown\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"fg\00", align 1
@builtintab = external global %struct.hashtable*
@.str29 = private unnamed_addr constant [4 x i8] c"pvV\00", align 1
@commandbn = internal global %struct.builtin { %struct.hashnode zeroinitializer, i32 (i8*, i8**, %struct.options*, i32)* @bin_whence, i32 0, i32 -1, i32 27, i8* getelementptr inbounds ([3 x i8]* @.str88, i32 0, i32 0), i8* null }, align 4
@.str30 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str31 = private unnamed_addr constant [35 x i8] c"exec requires a command to execute\00", align 1
@.str32 = private unnamed_addr constant [34 x i8] c"exec flag -a requires a parameter\00", align 1
@.str33 = private unnamed_addr constant [22 x i8] c"unknown exec flag -%c\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"ARGV0=\00", align 1
@nullcmd = external global i8*
@.str35 = private unnamed_addr constant [28 x i8] c"redirection with no command\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c":\00", align 1
@readnullcmd = external global i8*
@.str37 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str38 = private unnamed_addr constant [15 x i8] c"%s: restricted\00", align 1
@.str39 = private unnamed_addr constant [20 x i8] c"no such builtin: %s\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@pwd = external global i8*
@.str41 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@nsigtrapped = external global i32
@lastpid = external global i64
@lastpid_status = external global i32
@.str43 = private unnamed_addr constant [5 x i8] c"STTY\00", align 1
@.str44 = private unnamed_addr constant [19 x i8] c"nice(5) failed: %e\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str46 = private unnamed_addr constant [51 x i8] c"writing redirection not allowed in restricted mode\00", align 1
@.str47 = private unnamed_addr constant [45 x i8] c"can't create temp file for here document: %e\00", align 1
@.str48 = private unnamed_addr constant [48 x i8] c"parameter %s does not contain a file descriptor\00", align 1
@.str49 = private unnamed_addr constant [55 x i8] c"can't close file descriptor from readonly parameter %s\00", align 1
@.str50 = private unnamed_addr constant [45 x i8] c"file descriptor %d used by shell, not closed\00", align 1
@execcmd.bad_msg = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([48 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str50, i32 0, i32 0)], align 4
@.str51 = private unnamed_addr constant [39 x i8] c"failed to close file descriptor %d: %e\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"%s: %e\00", align 1
@.str54 = private unnamed_addr constant [10 x i8] c"coprocess\00", align 1
@execfuncs = internal unnamed_addr constant [13 x i32 (%struct.estate*, i32)*] [i32 (%struct.estate*, i32)* @execcursh, i32 (%struct.estate*, i32)* @exectime, i32 (%struct.estate*, i32)* @execfuncdef, i32 (%struct.estate*, i32)* @execfor, i32 (%struct.estate*, i32)* @execselect, i32 (%struct.estate*, i32)* @execwhile, i32 (%struct.estate*, i32)* @execrepeat, i32 (%struct.estate*, i32)* @execcase, i32 (%struct.estate*, i32)* @execif, i32 (%struct.estate*, i32)* @execcond, i32 (%struct.estate*, i32)* @execarith, i32 (%struct.estate*, i32)* @execautofn, i32 (%struct.estate*, i32)* @exectry], align 4
@stdout = external global %struct._IO_FILE*
@.str55 = private unnamed_addr constant [16 x i8] c"write error: %e\00", align 1
@.str56 = private unnamed_addr constant [16 x i8] c"zsh: exit %lld\0A\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"SHLVL\00", align 1
@shlvl = external global i64
@STTYval = internal unnamed_addr global i8* null, align 4
@.str58 = private unnamed_addr constant [5 x i8] c"stty\00", align 1
@.str59 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"ARGV0\00", align 1
@.str61 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@blank_env = internal global [1 x i8*] zeroinitializer, align 4
@.str62 = private unnamed_addr constant [21 x i8] c"command too long: %s\00", align 1
@.str63 = private unnamed_addr constant [14 x i8] c"/bin:/usr/bin\00", align 1
@.str64 = private unnamed_addr constant [22 x i8] c"command not found: %s\00", align 1
@.str65 = private unnamed_addr constant [26 x i8] c"command_not_found_handler\00", align 1
@zexecve.buf = internal global [8192 x i8] zeroinitializer, align 1
@environ = external global i8**
@4 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@.str66 = private unnamed_addr constant [28 x i8] c"%s: bad interpreter: %s: %e\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str68 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@cmdstack = external global i8*
@paramtab = external global %struct.hashtable*
@scriptfilename = external global i8*
@.str69 = private unnamed_addr constant [13 x i8] c"loadautofunc\00", align 1
@.str70 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str71 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c" ))\0A\00", align 1
@.str73 = private unnamed_addr constant [3 x i8] c"[[\00", align 1
@tracingcond = external global i32
@.str74 = private unnamed_addr constant [5 x i8] c" ]]\0A\00", align 1
@5 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@6 = internal unnamed_addr constant [9 x i8] c"wordcode\00"
@.str75 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str76 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@.str77 = private unnamed_addr constant [56 x i8] c"can't allocate file descriptor to readonly parameter %s\00", align 1
@.str78 = private unnamed_addr constant [57 x i8] c"can't clobber parameter %s containing file descriptor %d\00", align 1
@7 = internal unnamed_addr constant [5 x i8] c"char\00"
@.str79 = private unnamed_addr constant [55 x i8] c"invalid syntax for process substitution in redirection\00", align 1
@8 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@9 = internal unnamed_addr constant [10 x i8] c"long long\00"
@.str80 = private unnamed_addr constant [23 x i8] c"cannot moved fd %d: %e\00", align 1
@.str81 = private unnamed_addr constant [27 x i8] c"cannot duplicate fd %d: %e\00", align 1
@.str82 = private unnamed_addr constant [28 x i8] c"file mode mismatch on fd %d\00", align 1
@.str83 = private unnamed_addr constant [28 x i8] c"multio failed for fd %d: %e\00", align 1
@10 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@cdpath = external global i8**
@doprintdir = external global i32
@.str84 = private unnamed_addr constant [5 x i8] c"%s+=\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@12 = internal unnamed_addr constant [2 x i8] c"+\00"
@13 = internal unnamed_addr constant [4 x i8] c"int\00"
@14 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@15 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str86 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str87 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str88 = private unnamed_addr constant [3 x i8] c"vV\00", align 1
@.str89 = private unnamed_addr constant [3 x i8] c"b:\00", align 1
@.str90 = private unnamed_addr constant [51 x i8] c"autoloading module %s failed to define builtin: %s\00", align 1
@16 = internal unnamed_addr constant [2 x i8] c"-\00"
@17 = internal unnamed_addr constant [21 x i8] c"../../src/Src/exec.c\00"

define %struct.eprog* @parse_string(i8* %s, i32 %reset_lineno) nounwind {
entry:
  tail call void @lexsave() nounwind
  tail call void @inpush(i8* %s, i32 32, %struct.alias* null) nounwind
  tail call void @strinbeg(i32 0) nounwind
  %0 = load i64* @lineno, align 8, !tbaa !0
  %tobool = icmp eq i32 %reset_lineno, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 1, i64* @lineno, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call %struct.eprog* @parse_list() nounwind
  store i64 %0, i64* @lineno, align 8, !tbaa !0
  %1 = load i32* @tok, align 4, !tbaa !3
  %cmp = icmp ne i32 %1, 38
  %2 = load i64* @lastval, align 8, !tbaa !0
  %tobool3 = icmp ne i64 %2, 0
  %or.cond = or i1 %cmp, %tobool3
  br i1 %or.cond, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  tail call void @strinend() nounwind
  tail call void @inpop() nounwind
  tail call void @lexrestore() nounwind
  ret %struct.eprog* %call
}

declare void @lexsave()

declare void @inpush(i8*, i32, %struct.alias*)

declare void @strinbeg(i32)

declare %struct.eprog* @parse_list()

declare void @strinend()

declare void @inpop()

declare void @lexrestore()

define i32 @zsetlimit(i32 %limnum, i8* %nam) nounwind {
entry:
  %arrayidx = getelementptr inbounds [15 x %struct.rlimit]* @limits, i32 0, i32 %limnum
  %rlim_max = getelementptr inbounds [15 x %struct.rlimit]* @limits, i32 0, i32 %limnum, i32 1
  %0 = load i64* %rlim_max, align 4, !tbaa !0
  %arrayidx1 = getelementptr inbounds [15 x %struct.rlimit]* @current_limits, i32 0, i32 %limnum
  %rlim_max2 = getelementptr inbounds [15 x %struct.rlimit]* @current_limits, i32 0, i32 %limnum, i32 1
  %1 = load i64* %rlim_max2, align 4, !tbaa !0
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rlim_cur = getelementptr inbounds %struct.rlimit* %arrayidx, i32 0, i32 0
  %2 = load i64* %rlim_cur, align 4, !tbaa !0
  %rlim_cur5 = getelementptr inbounds %struct.rlimit* %arrayidx1, i32 0, i32 0
  %3 = load i64* %rlim_cur5, align 4, !tbaa !0
  %cmp6 = icmp eq i64 %2, %3
  br i1 %cmp6, label %return, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = icmp sgt i32 %limnum, -1
  br i1 %4, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then
  %5 = sext i32 %limnum to i64
  tail call void @__ioc_report_conversion(i32 184, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @1, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then
  %call = tail call i32 @setrlimit64(i32 %limnum, %struct.rlimit* %arrayidx) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end13, label %if.then7

if.then7:                                         ; preds = %cont
  %tobool8 = icmp eq i8* %nam, null
  br i1 %tobool8, label %return, label %if.then9

if.then9:                                         ; preds = %if.then7
  %call10 = tail call i32* @__errno_location() nounwind readnone
  %6 = load i32* %call10, align 4, !tbaa !3
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0), i32 %6) nounwind
  br label %return

if.end13:                                         ; preds = %cont
  %7 = bitcast %struct.rlimit* %arrayidx1 to i8*
  %8 = bitcast %struct.rlimit* %arrayidx to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 16, i32 4, i1 false), !tbaa.struct !4
  br label %return

return:                                           ; preds = %if.end13, %lor.lhs.false, %if.then7, %if.then9
  %retval.0 = phi i32 [ -1, %if.then9 ], [ -1, %if.then7 ], [ 0, %lor.lhs.false ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

declare i32 @setrlimit64(i32, %struct.rlimit*) nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @zwarnnam(i8*, i8*, ...)

declare i32* @__errno_location() nounwind readnone

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define i32 @setlimits(i8* %nam) nounwind {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.cond.backedge
  %ret.07 = phi i32 [ 0, %entry ], [ %ret.1, %for.cond.backedge ]
  %limnum.06 = phi i32 [ 0, %entry ], [ %5, %for.cond.backedge ]
  %call = tail call i32 @zsetlimit(i32 %limnum.06, i8* %nam)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %0 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ret.07, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb, label %for.inc

ioc_bb:                                           ; preds = %if.then
  %3 = sext i32 %ret.07 to i64
  tail call void @__ioc_report_add_overflow(i32 201, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb, %if.then, %for.body
  %ret.1 = phi i32 [ %ret.07, %for.body ], [ %1, %if.then ], [ %1, %ioc_bb ]
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %limnum.06, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb1, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb1
  %cmp = icmp slt i32 %5, 15
  br i1 %cmp, label %for.body, label %for.end

ioc_bb1:                                          ; preds = %for.inc
  %7 = sext i32 %limnum.06 to i64
  tail call void @__ioc_report_add_overflow(i32 199, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  ret i32 %ret.1
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i8* @findcmd(i8* %arg0, i32 %docopy) nounwind {
entry:
  %statbuf.i181 = alloca %struct.stat, align 4
  %statbuf.i168 = alloca %struct.stat, align 4
  %statbuf.i155 = alloca %struct.stat, align 4
  %statbuf.i = alloca %struct.stat, align 4
  %z = alloca i8*, align 4
  %buf = alloca [16384 x i8], align 1
  %nn = alloca [4096 x i8], align 1
  %0 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %getnode = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !5
  %call = call %struct.hashnode* %1(%struct.hashtable* %0, i8* %arg0) nounwind
  %2 = bitcast %struct.hashnode* %call to %struct.cmdnam*
  %tobool = icmp ne %struct.hashnode* %call, null
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 62), align 1, !tbaa !1
  %tobool1 = icmp eq i8 %3, 0
  %or.cond154 = or i1 %tobool, %tobool1
  br i1 %or.cond154, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*** @path, align 4, !tbaa !5
  %call2 = call %struct.cmdnam* @hashcmd(i8* %arg0, i8** %4)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cn.0 = phi %struct.cmdnam* [ %2, %entry ], [ %call2, %if.then ]
  %call3 = call i32 @strlen(i8* %arg0) nounwind readonly
  %5 = icmp sgt i32 %call3, -1
  br i1 %5, label %cont, label %cont.thread

cont.thread:                                      ; preds = %if.end
  %6 = zext i32 %call3 to i64
  call void @__ioc_report_conversion(i32 674, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %6, i8 0) nounwind
  br label %for.cond

cont:                                             ; preds = %if.end
  %cmp = icmp sgt i32 %call3, 4096
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %cont.thread, %cont, %for.inc
  %s.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %arg0, %cont ], [ %arg0, %cont.thread ]
  %7 = load i8* %s.0, align 1, !tbaa !1
  switch i8 %7, label %for.inc [
    i8 0, label %for.end
    i8 47, label %if.then11
  ]

if.then11:                                        ; preds = %for.cond
  %8 = bitcast %struct.stat* %statbuf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  %call.i = call i8* @unmeta(i8* %arg0) nounwind
  %call1.i = call i32 @access(i8* %call.i, i32 1) nounwind
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end17

land.lhs.true.i:                                  ; preds = %if.then11
  %9 = bitcast %struct.stat* %statbuf.i to %struct.stat64*
  %call.i.i = call i32 @__xstat64(i32 3, i8* %call.i, %struct.stat64* %9) nounwind
  %cmp3.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp3.i, label %cont5.i, label %if.end17

cont5.i:                                          ; preds = %land.lhs.true.i
  %st_mode.i = getelementptr inbounds %struct.stat* %statbuf.i, i32 0, i32 3
  %10 = load i32* %st_mode.i, align 4, !tbaa !3
  %and.i = and i32 %10, 61440
  %cmp6.i = icmp eq i32 %and.i, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  br i1 %cmp6.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %cont5.i
  %tobool15 = icmp eq i32 %docopy, 0
  br i1 %tobool15, label %return, label %cond.true

cond.true:                                        ; preds = %if.then14
  %call16 = call i8* @dupstring(i8* %arg0) nounwind
  br label %return

if.end17:                                         ; preds = %if.then11, %land.lhs.true.i, %cont5.i
  %cmp18 = icmp ne i8* %s.0, %arg0
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 118), align 1, !tbaa !1
  %tobool20 = icmp ne i8 %11, 0
  %or.cond = and i1 %cmp18, %tobool20
  br i1 %or.cond, label %for.end, label %return

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %s.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %if.end17
  %tobool24 = icmp eq %struct.cmdnam* %cn.0, null
  br i1 %tobool24, label %if.end95, label %if.then25

if.then25:                                        ; preds = %for.end
  %flags = getelementptr inbounds %struct.cmdnam* %cn.0, i32 0, i32 0, i32 2
  %12 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %12, 2
  %tobool30 = icmp eq i32 %and, 0
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then25
  %arraydecay = getelementptr inbounds [4096 x i8]* %nn, i32 0, i32 0
  %u = getelementptr inbounds %struct.cmdnam* %cn.0, i32 0, i32 1
  %cmd = bitcast %union.anon* %u to i8**
  %13 = load i8** %cmd, align 4, !tbaa !5
  %call32 = call i8* @strcpy(i8* %arraydecay, i8* %13) nounwind
  br label %if.end82

if.else:                                          ; preds = %if.then25
  %14 = load i8*** @path, align 4, !tbaa !5
  %name = getelementptr inbounds %struct.cmdnam* %cn.0, i32 0, i32 1, i32 0
  %15 = load i8*** %name, align 4, !tbaa !5
  %cmp35202 = icmp ult i8** %14, %15
  br i1 %cmp35202, label %for.body37.lr.ph, label %for.end65

for.body37.lr.ph:                                 ; preds = %if.else
  %arraydecay42 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %16 = bitcast %struct.stat* %statbuf.i155 to i8*
  %17 = bitcast %struct.stat* %statbuf.i155 to %struct.stat64*
  %st_mode.i162 = getelementptr inbounds %struct.stat* %statbuf.i155, i32 0, i32 3
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.inc63
  %pp.0203 = phi i8** [ %14, %for.body37.lr.ph ], [ %incdec.ptr64, %for.inc63 ]
  %18 = load i8** %pp.0203, align 4, !tbaa !5
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp39 = icmp eq i8 %19, 47
  br i1 %cmp39, label %for.inc63, label %if.then41

if.then41:                                        ; preds = %for.body37
  store i8* %arraydecay42, i8** %z, align 4, !tbaa !5
  %20 = load i8** %pp.0203, align 4, !tbaa !5
  %21 = load i8* %20, align 1, !tbaa !1
  %tobool43 = icmp eq i8 %21, 0
  br i1 %tobool43, label %if.end48, label %if.then44

if.then44:                                        ; preds = %if.then41
  call void @strucpy(i8** %z, i8* %20) nounwind
  %22 = load i8** %z, align 4, !tbaa !5
  %incdec.ptr47 = getelementptr inbounds i8* %22, i32 1
  store i8* %incdec.ptr47, i8** %z, align 4, !tbaa !5
  store i8 47, i8* %22, align 1, !tbaa !1
  %.pre207 = load i8** %z, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.then44
  %23 = phi i8* [ %arraydecay42, %if.then41 ], [ %.pre207, %if.then44 ]
  %call49 = call i8* @strcpy(i8* %23, i8* %arg0) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %16) nounwind
  %call.i156 = call i8* @unmeta(i8* %arraydecay42) nounwind
  %call1.i157 = call i32 @access(i8* %call.i156, i32 1) nounwind
  %cmp.i158 = icmp eq i32 %call1.i157, 0
  br i1 %cmp.i158, label %land.lhs.true.i161, label %for.inc63

land.lhs.true.i161:                               ; preds = %if.end48
  %call.i.i159 = call i32 @__xstat64(i32 3, i8* %call.i156, %struct.stat64* %17) nounwind
  %cmp3.i160 = icmp sgt i32 %call.i.i159, -1
  br i1 %cmp3.i160, label %cont5.i165, label %for.inc63

cont5.i165:                                       ; preds = %land.lhs.true.i161
  %24 = load i32* %st_mode.i162, align 4, !tbaa !3
  %and.i163 = and i32 %24, 61440
  %cmp6.i164 = icmp eq i32 %and.i163, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %16) nounwind
  br i1 %cmp6.i164, label %if.then53, label %for.inc63

if.then53:                                        ; preds = %cont5.i165
  %tobool54 = icmp eq i32 %docopy, 0
  br i1 %tobool54, label %return, label %cond.true55

cond.true55:                                      ; preds = %if.then53
  %call57 = call i8* @dupstring(i8* %arraydecay42) nounwind
  br label %return

for.inc63:                                        ; preds = %cont5.i165, %land.lhs.true.i161, %if.end48, %for.body37
  %incdec.ptr64 = getelementptr inbounds i8** %pp.0203, i32 1
  %25 = load i8*** %name, align 4, !tbaa !5
  %cmp35 = icmp ult i8** %incdec.ptr64, %25
  br i1 %cmp35, label %for.body37, label %for.end65

for.end65:                                        ; preds = %for.inc63, %if.else
  %.lcssa = phi i8** [ %15, %if.else ], [ %25, %for.inc63 ]
  %arraydecay66 = getelementptr inbounds [4096 x i8]* %nn, i32 0, i32 0
  %tobool69 = icmp eq i8** %.lcssa, null
  br i1 %tobool69, label %cond.end74, label %cond.true70

cond.true70:                                      ; preds = %for.end65
  %26 = load i8** %.lcssa, align 4, !tbaa !5
  br label %cond.end74

cond.end74:                                       ; preds = %for.end65, %cond.true70
  %cond75 = phi i8* [ %26, %cond.true70 ], [ getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), %for.end65 ]
  %call76 = call i8* @strcpy(i8* %arraydecay66, i8* %cond75) nounwind
  %strlen = call i32 @strlen(i8* %arraydecay66)
  %endptr = getelementptr [4096 x i8]* %nn, i32 0, i32 %strlen
  %27 = bitcast i8* %endptr to i16*
  store i16 47, i16* %27, align 1
  %nam = getelementptr inbounds %struct.cmdnam* %cn.0, i32 0, i32 0, i32 1
  %28 = load i8** %nam, align 4, !tbaa !5
  %call81 = call i8* @strcat(i8* %arraydecay66, i8* %28) nounwind
  br label %if.end82

if.end82:                                         ; preds = %cond.end74, %if.then31
  %arraydecay83 = getelementptr inbounds [4096 x i8]* %nn, i32 0, i32 0
  %29 = bitcast %struct.stat* %statbuf.i168 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %29) nounwind
  %call.i169 = call i8* @unmeta(i8* %arraydecay83) nounwind
  %call1.i170 = call i32 @access(i8* %call.i169, i32 1) nounwind
  %cmp.i171 = icmp eq i32 %call1.i170, 0
  br i1 %cmp.i171, label %land.lhs.true.i174, label %if.end95

land.lhs.true.i174:                               ; preds = %if.end82
  %30 = bitcast %struct.stat* %statbuf.i168 to %struct.stat64*
  %call.i.i172 = call i32 @__xstat64(i32 3, i8* %call.i169, %struct.stat64* %30) nounwind
  %cmp3.i173 = icmp sgt i32 %call.i.i172, -1
  br i1 %cmp3.i173, label %cont5.i178, label %if.end95

cont5.i178:                                       ; preds = %land.lhs.true.i174
  %st_mode.i175 = getelementptr inbounds %struct.stat* %statbuf.i168, i32 0, i32 3
  %31 = load i32* %st_mode.i175, align 4, !tbaa !3
  %and.i176 = and i32 %31, 61440
  %cmp6.i177 = icmp eq i32 %and.i176, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %29) nounwind
  br i1 %cmp6.i177, label %if.then86, label %if.end95

if.then86:                                        ; preds = %cont5.i178
  %tobool87 = icmp eq i32 %docopy, 0
  br i1 %tobool87, label %return, label %cond.true88

cond.true88:                                      ; preds = %if.then86
  %call90 = call i8* @dupstring(i8* %arraydecay83) nounwind
  br label %return

if.end95:                                         ; preds = %if.end82, %land.lhs.true.i174, %cont5.i178, %for.end
  %32 = load i8*** @path, align 4, !tbaa !5
  %33 = load i8** %32, align 4, !tbaa !5
  %tobool97199 = icmp eq i8* %33, null
  br i1 %tobool97199, label %return, label %for.body98.lr.ph

for.body98.lr.ph:                                 ; preds = %if.end95
  %arraydecay99 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %34 = bitcast %struct.stat* %statbuf.i181 to i8*
  %35 = bitcast %struct.stat* %statbuf.i181 to %struct.stat64*
  %st_mode.i188 = getelementptr inbounds %struct.stat* %statbuf.i181, i32 0, i32 3
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %for.inc119
  %pp.1200 = phi i8** [ %32, %for.body98.lr.ph ], [ %incdec.ptr120, %for.inc119 ]
  store i8* %arraydecay99, i8** %z, align 4, !tbaa !5
  %36 = load i8** %pp.1200, align 4, !tbaa !5
  %37 = load i8* %36, align 1, !tbaa !1
  %tobool100 = icmp eq i8 %37, 0
  br i1 %tobool100, label %if.end105, label %if.then101

if.then101:                                       ; preds = %for.body98
  call void @strucpy(i8** %z, i8* %36) nounwind
  %38 = load i8** %z, align 4, !tbaa !5
  %incdec.ptr104 = getelementptr inbounds i8* %38, i32 1
  store i8* %incdec.ptr104, i8** %z, align 4, !tbaa !5
  store i8 47, i8* %38, align 1, !tbaa !1
  %.pre = load i8** %z, align 4, !tbaa !5
  br label %if.end105

if.end105:                                        ; preds = %for.body98, %if.then101
  %39 = phi i8* [ %arraydecay99, %for.body98 ], [ %.pre, %if.then101 ]
  %call106 = call i8* @strcpy(i8* %39, i8* %arg0) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %34) nounwind
  %call.i182 = call i8* @unmeta(i8* %arraydecay99) nounwind
  %call1.i183 = call i32 @access(i8* %call.i182, i32 1) nounwind
  %cmp.i184 = icmp eq i32 %call1.i183, 0
  br i1 %cmp.i184, label %land.lhs.true.i187, label %for.inc119

land.lhs.true.i187:                               ; preds = %if.end105
  %call.i.i185 = call i32 @__xstat64(i32 3, i8* %call.i182, %struct.stat64* %35) nounwind
  %cmp3.i186 = icmp sgt i32 %call.i.i185, -1
  br i1 %cmp3.i186, label %cont5.i191, label %for.inc119

cont5.i191:                                       ; preds = %land.lhs.true.i187
  %40 = load i32* %st_mode.i188, align 4, !tbaa !3
  %and.i189 = and i32 %40, 61440
  %cmp6.i190 = icmp eq i32 %and.i189, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %34) nounwind
  br i1 %cmp6.i190, label %if.then110, label %for.inc119

if.then110:                                       ; preds = %cont5.i191
  %tobool111 = icmp eq i32 %docopy, 0
  br i1 %tobool111, label %return, label %cond.true112

cond.true112:                                     ; preds = %if.then110
  %call114 = call i8* @dupstring(i8* %arraydecay99) nounwind
  br label %return

for.inc119:                                       ; preds = %if.end105, %land.lhs.true.i187, %cont5.i191
  %incdec.ptr120 = getelementptr inbounds i8** %pp.1200, i32 1
  %41 = load i8** %incdec.ptr120, align 4, !tbaa !5
  %tobool97 = icmp eq i8* %41, null
  br i1 %tobool97, label %return, label %for.body98

return:                                           ; preds = %if.end95, %for.inc119, %cond.true112, %if.then110, %cond.true88, %if.then86, %cond.true55, %if.then53, %if.end17, %cond.true, %if.then14, %cont
  %retval.0 = phi i8* [ null, %cont ], [ %call16, %cond.true ], [ %arg0, %if.then14 ], [ null, %if.end17 ], [ %call57, %cond.true55 ], [ %arg0, %if.then53 ], [ %call90, %cond.true88 ], [ %arg0, %if.then86 ], [ %call114, %cond.true112 ], [ %arg0, %if.then110 ], [ null, %for.inc119 ], [ null, %if.end95 ]
  ret i8* %retval.0
}

define %struct.cmdnam* @hashcmd(i8* %arg0, i8** %pp) nounwind {
entry:
  %statbuf.i = alloca %struct.stat, align 4
  %s = alloca i8*, align 4
  %buf = alloca [4096 x i8], align 1
  %0 = load i8** %pp, align 4, !tbaa !5
  %tobool54 = icmp eq i8* %0, null
  br i1 %tobool54, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %sub.ptr.rhs.cast = ptrtoint [4096 x i8]* %buf to i32
  %1 = bitcast %struct.stat* %statbuf.i to i8*
  %2 = bitcast %struct.stat* %statbuf.i to %struct.stat64*
  %st_mode.i = getelementptr inbounds %struct.stat* %statbuf.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i8* [ %0, %for.body.lr.ph ], [ %17, %for.inc ]
  %pp.addr.055 = phi i8** [ %pp, %for.body.lr.ph ], [ %incdec.ptr19, %for.inc ]
  %4 = load i8* %3, align 1, !tbaa !1
  %cmp = icmp eq i8 %4, 47
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i8* %arraydecay, i8** %s, align 4, !tbaa !5
  %5 = load i8** %pp.addr.055, align 4, !tbaa !5
  call void @strucpy(i8** %s, i8* %5) nounwind
  %6 = load i8** %s, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s, align 4, !tbaa !5
  store i8 47, i8* %6, align 1, !tbaa !1
  %7 = load i8** %s, align 4, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %8, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.then
  %9 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 779, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.then
  %call = call i32 @strlen(i8* %arg0) nounwind readonly
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %call)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb5, label %cont8

ioc_bb5:                                          ; preds = %cont4
  %13 = zext i32 %call to i64
  %14 = zext i32 %sub.ptr.sub to i64
  call void @__ioc_report_add_overflow(i32 779, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %14, i64 %13, i8 5) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb5, %cont4
  %cmp9 = icmp ugt i32 %11, 4095
  br i1 %cmp9, label %for.inc, label %if.end

if.end:                                           ; preds = %cont8
  %15 = load i8** %s, align 4, !tbaa !5
  %call12 = call i8* @strcpy(i8* %15, i8* %arg0) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %1) nounwind
  %call.i = call i8* @unmeta(i8* %arraydecay) nounwind
  %call1.i = call i32 @access(i8* %call.i, i32 1) nounwind
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.end
  %call.i.i = call i32 @__xstat64(i32 3, i8* %call.i, %struct.stat64* %2) nounwind
  %cmp3.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp3.i, label %cont5.i, label %for.inc

cont5.i:                                          ; preds = %land.lhs.true.i
  %16 = load i32* %st_mode.i, align 4, !tbaa !3
  %and.i = and i32 %16, 61440
  %cmp6.i = icmp eq i32 %and.i, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %1) nounwind
  br i1 %cmp6.i, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.i, %cont5.i, %for.body, %cont8
  %incdec.ptr19 = getelementptr inbounds i8** %pp.addr.055, i32 1
  %17 = load i8** %incdec.ptr19, align 4, !tbaa !5
  %tobool = icmp eq i8* %17, null
  br i1 %tobool, label %return, label %for.body

for.end:                                          ; preds = %cont5.i
  %.pr = load i8** %pp.addr.055, align 4, !tbaa !5
  %tobool20 = icmp eq i8* %.pr, null
  br i1 %tobool20, label %return, label %if.end22

if.end22:                                         ; preds = %for.end
  %call23 = call i8* @zshcalloc(i32 16) nounwind
  %18 = bitcast i8* %call23 to %struct.cmdnam*
  %flags = getelementptr inbounds i8* %call23, i32 8
  %19 = bitcast i8* %flags to i32*
  store i32 0, i32* %19, align 4, !tbaa !3
  %u = getelementptr inbounds i8* %call23, i32 12
  %name = bitcast i8* %u to i8***
  store i8** %pp.addr.055, i8*** %name, align 4, !tbaa !5
  %20 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %addnode = getelementptr inbounds %struct.hashtable* %20, i32 0, i32 8
  %21 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !5
  %call24 = call i8* @ztrdup(i8* %arg0) nounwind
  call void %21(%struct.hashtable* %20, i8* %call24, i8* %call23) nounwind
  %22 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 63), align 1, !tbaa !1
  %tobool25 = icmp eq i8 %22, 0
  br i1 %tobool25, label %return, label %if.then26

if.then26:                                        ; preds = %if.end22
  %23 = load i8*** @pathchecked, align 4, !tbaa !5
  %cmp2851 = icmp ugt i8** %23, %pp.addr.055
  br i1 %cmp2851, label %for.end33, label %for.body30

for.body30:                                       ; preds = %if.then26, %for.body30
  %pq.052 = phi i8** [ %incdec.ptr32, %for.body30 ], [ %23, %if.then26 ]
  call void @hashdir(i8** %pq.052) nounwind
  %incdec.ptr32 = getelementptr inbounds i8** %pq.052, i32 1
  %cmp28 = icmp ugt i8** %incdec.ptr32, %pp.addr.055
  br i1 %cmp28, label %for.end33, label %for.body30

for.end33:                                        ; preds = %for.body30, %if.then26
  %add.ptr = getelementptr inbounds i8** %pp.addr.055, i32 1
  store i8** %add.ptr, i8*** @pathchecked, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %entry, %for.inc, %for.end33, %if.end22, %for.end
  %retval.0 = phi %struct.cmdnam* [ null, %for.end ], [ %18, %if.end22 ], [ %18, %for.end33 ], [ null, %for.inc ], [ null, %entry ]
  ret %struct.cmdnam* %retval.0
}

declare i32 @strlen(i8* nocapture) nounwind readonly

define i32 @iscom(i8* %s) nounwind {
entry:
  %statbuf = alloca %struct.stat, align 4
  %call = call i8* @unmeta(i8* %s) nounwind
  %call1 = call i32 @access(i8* %call, i32 1) nounwind
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast %struct.stat* %statbuf to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* %call, %struct.stat64* %0) nounwind
  %cmp3 = icmp sgt i32 %call.i, -1
  br i1 %cmp3, label %cont5, label %land.end

cont5:                                            ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds %struct.stat* %statbuf, i32 0, i32 3
  %1 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %1, 61440
  %cmp6 = icmp eq i32 %and, 32768
  br label %land.end

land.end:                                         ; preds = %cont5, %land.lhs.true, %entry
  %2 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %cont5 ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i8* @dupstring(i8*)

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare void @strucpy(i8**, i8*)

declare i8* @strcat(i8*, i8* nocapture) nounwind

declare i8* @unmeta(i8*)

declare i32 @access(i8* nocapture, i32) nounwind

define i32 @isreallycom(%struct.cmdnam* nocapture %cn) nounwind {
entry:
  %statbuf.i = alloca %struct.stat, align 4
  %fullnam = alloca [16384 x i8], align 1
  %flags = getelementptr inbounds %struct.cmdnam* %cn, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16384 x i8]* %fullnam, i32 0, i32 0
  %u = getelementptr inbounds %struct.cmdnam* %cn, i32 0, i32 1
  %cmd = bitcast %union.anon* %u to i8**
  %1 = load i8** %cmd, align 4, !tbaa !5
  %call = call i8* @strcpy(i8* %arraydecay, i8* %1) nounwind
  br label %if.end16

if.else:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cmdnam* %cn, i32 0, i32 1, i32 0
  %2 = load i8*** %name, align 4, !tbaa !5
  %tobool4 = icmp eq i8** %2, null
  br i1 %tobool4, label %return, label %if.else6

if.else6:                                         ; preds = %if.else
  %arraydecay7 = getelementptr inbounds [16384 x i8]* %fullnam, i32 0, i32 0
  %3 = load i8** %2, align 4, !tbaa !5
  %call10 = call i8* @strcpy(i8* %arraydecay7, i8* %3) nounwind
  %strlen = call i32 @strlen(i8* %arraydecay7)
  %endptr = getelementptr [16384 x i8]* %fullnam, i32 0, i32 %strlen
  %4 = bitcast i8* %endptr to i16*
  store i16 47, i16* %4, align 1
  %nam = getelementptr inbounds %struct.cmdnam* %cn, i32 0, i32 0, i32 1
  %5 = load i8** %nam, align 4, !tbaa !5
  %call15 = call i8* @strcat(i8* %arraydecay7, i8* %5) nounwind
  br label %if.end16

if.end16:                                         ; preds = %if.else6, %if.then
  %arraydecay17 = getelementptr inbounds [16384 x i8]* %fullnam, i32 0, i32 0
  %6 = bitcast %struct.stat* %statbuf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) nounwind
  %call.i = call i8* @unmeta(i8* %arraydecay17) nounwind
  %call1.i = call i32 @access(i8* %call.i, i32 1) nounwind
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %iscom.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %7 = bitcast %struct.stat* %statbuf.i to %struct.stat64*
  %call.i.i = call i32 @__xstat64(i32 3, i8* %call.i, %struct.stat64* %7) nounwind
  %cmp3.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp3.i, label %cont5.i, label %iscom.exit

cont5.i:                                          ; preds = %land.lhs.true.i
  %st_mode.i = getelementptr inbounds %struct.stat* %statbuf.i, i32 0, i32 3
  %8 = load i32* %st_mode.i, align 4, !tbaa !3
  %and.i = and i32 %8, 61440
  %cmp6.i = icmp eq i32 %and.i, 32768
  br label %iscom.exit

iscom.exit:                                       ; preds = %if.end16, %land.lhs.true.i, %cont5.i
  %9 = phi i1 [ false, %land.lhs.true.i ], [ false, %if.end16 ], [ %cmp6.i, %cont5.i ]
  %land.ext.i = zext i1 %9 to i32
  call void @llvm.lifetime.end(i64 -1, i8* %6) nounwind
  br label %return

return:                                           ; preds = %if.else, %iscom.exit
  %retval.0 = phi i32 [ %land.ext.i, %iscom.exit ], [ 0, %if.else ]
  ret i32 %retval.0
}

define i32 @isrelative(i8* nocapture %s) nounwind readonly {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %for.cond, label %return

for.cond:                                         ; preds = %entry, %for.inc
  %1 = phi i8 [ %.pre, %for.inc ], [ 47, %entry ]
  %s.addr.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %entry ]
  switch i8 %1, label %for.inc [
    i8 0, label %return
    i8 46, label %cont
  ]

cont:                                             ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8* %s.addr.0, i32 -1
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %2, 47
  br i1 %cmp6, label %land.lhs.true8, label %for.inc

land.lhs.true8:                                   ; preds = %cont
  %arrayidx9 = getelementptr inbounds i8* %s.addr.0, i32 1
  %3 = load i8* %arrayidx9, align 1, !tbaa !1
  switch i8 %3, label %for.inc [
    i8 47, label %return
    i8 0, label %return
    i8 46, label %land.lhs.true22
  ]

land.lhs.true22:                                  ; preds = %land.lhs.true8
  %arrayidx23 = getelementptr inbounds i8* %s.addr.0, i32 2
  %4 = load i8* %arrayidx23, align 1, !tbaa !1
  switch i8 %4, label %for.inc [
    i8 47, label %return
    i8 0, label %return
  ]

for.inc:                                          ; preds = %cont, %for.cond, %land.lhs.true22, %land.lhs.true8
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %for.cond

return:                                           ; preds = %for.cond, %land.lhs.true8, %land.lhs.true8, %land.lhs.true22, %land.lhs.true22, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.cond ], [ 1, %land.lhs.true8 ], [ 1, %land.lhs.true8 ], [ 1, %land.lhs.true22 ], [ 1, %land.lhs.true22 ]
  ret i32 %retval.0
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @zshcalloc(i32)

declare i8* @ztrdup(i8*)

declare void @hashdir(i8**)

define void @execstring(i8* %s, i32 %dont_change_job, i32 %exiting, i8* %context) nounwind {
entry:
  tail call void @pushheap() nounwind
  %call = tail call %struct.eprog* @parse_string(i8* %s, i32 0)
  %tobool = icmp eq %struct.eprog* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @execode(%struct.eprog* %call, i32 %dont_change_job, i32 %exiting, i8* %context)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @popheap() nounwind
  ret void
}

declare void @pushheap()

define void @execode(%struct.eprog* %p, i32 %dont_change_job, i32 %exiting, i8* %context) nounwind {
entry:
  %s = alloca %struct.estate, align 4
  %0 = load i32* @execode.zsh_eval_context_len, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 16, i32* @execode.zsh_eval_context_len, align 4, !tbaa !3
  %call = call i8* @zalloc(i32 64) nounwind
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** @zsh_eval_context, align 4, !tbaa !5
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = load i8*** @zsh_eval_context, align 4, !tbaa !5
  %call3 = call i32 @arrlen(i8** %2) nounwind
  %3 = load i32* @execode.zsh_eval_context_len, align 4, !tbaa !3
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call3, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.else
  %7 = sext i32 %call3 to i64
  call void @__ioc_report_add_overflow(i32 939, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %if.else, %ioc_bb4
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then6, label %cont5.if.end15_crit_edge

cont5.if.end15_crit_edge:                         ; preds = %cont5
  %.pre = load i8*** @zsh_eval_context, align 4, !tbaa !5
  br label %if.end15

if.then6:                                         ; preds = %cont5
  %8 = load i32* @execode.zsh_eval_context_len, align 4, !tbaa !3
  %9 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %8, i32 2)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %if.then6
  %12 = sext i32 %8 to i64
  call void @__ioc_report_mul_overflow(i32 940, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %12, i64 2, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %if.then6, %ioc_bb7
  store i32 %10, i32* @execode.zsh_eval_context_len, align 4, !tbaa !3
  %13 = load i8*** @zsh_eval_context, align 4, !tbaa !5
  %14 = bitcast i8** %13 to i8*
  %15 = icmp sgt i32 %10, -1
  br i1 %15, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %cont8
  %16 = sext i32 %10 to i64
  call void @__ioc_report_conversion(i32 941, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %cont8
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont11
  %20 = zext i32 %10 to i64
  call void @__ioc_report_mul_overflow(i32 941, i32 74, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %20, i64 4, i8 5) nounwind
  br label %cont13

cont13:                                           ; preds = %cont11, %ioc_bb12
  %call14 = call i8* @zrealloc(i8* %14, i32 %18) nounwind
  %21 = bitcast i8* %call14 to i8**
  store i8** %21, i8*** @zsh_eval_context, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %cont5.if.end15_crit_edge, %cont13, %if.then
  %22 = phi i8** [ %21, %cont13 ], [ %.pre, %cont5.if.end15_crit_edge ], [ %1, %if.then ]
  %alen.0 = phi i32 [ %call3, %cont13 ], [ %call3, %cont5.if.end15_crit_edge ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i8** %22, i32 %alen.0
  store i8* %context, i8** %arrayidx, align 4, !tbaa !5
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %alen.0, i32 1)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %if.end15
  %26 = sext i32 %alen.0 to i64
  call void @__ioc_report_add_overflow(i32 945, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %26, i64 1, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %if.end15, %ioc_bb16
  %27 = load i8*** @zsh_eval_context, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8** %27, i32 %24
  store i8* null, i8** %arrayidx18, align 4, !tbaa !5
  %prog = getelementptr inbounds %struct.estate* %s, i32 0, i32 0
  store %struct.eprog* %p, %struct.eprog** %prog, align 4, !tbaa !5
  %prog19 = getelementptr inbounds %struct.eprog* %p, i32 0, i32 5
  %28 = load i32** %prog19, align 4, !tbaa !5
  %pc = getelementptr inbounds %struct.estate* %s, i32 0, i32 1
  store i32* %28, i32** %pc, align 4, !tbaa !5
  %strs = getelementptr inbounds %struct.eprog* %p, i32 0, i32 6
  %29 = load i8** %strs, align 4, !tbaa !5
  %strs20 = getelementptr inbounds %struct.estate* %s, i32 0, i32 2
  store i8* %29, i8** %strs20, align 4, !tbaa !5
  call void @useeprog(%struct.eprog* %p) nounwind
  call void @execlist(%struct.estate* %s, i32 %dont_change_job, i32 %exiting)
  call void @freeeprog(%struct.eprog* %p) nounwind
  %30 = load i8*** @zsh_eval_context, align 4, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8** %30, i32 %alen.0
  store i8* null, i8** %arrayidx21, align 4, !tbaa !5
  ret void
}

declare void @popheap()

declare i8* @zalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @arrlen(i8**)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @zrealloc(i8*, i32)

declare void @useeprog(%struct.eprog*)

define void @execlist(%struct.estate* %state, i32 %dont_change_job, i32 %exiting) nounwind {
entry:
  %0 = load i32* @noerrexit, align 4, !tbaa !3
  %1 = load i32* @thisjob, align 4, !tbaa !3
  %2 = load i32* @pline_level, align 4, !tbaa !3
  %3 = load i32* @list_pipe, align 4, !tbaa !3
  %4 = load i64* @lineno, align 8, !tbaa !0
  %5 = load i32* @sourcelevel, align 4, !tbaa !3
  %tobool = icmp eq i32 %5, 0
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool1 = icmp ne i8 %6, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @list_pipe, align 4, !tbaa !3
  store i32 0, i32* @pline_level, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %7 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32* %7, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %8 = load i32* %7, align 4, !tbaa !3
  %and = and i32 %8, 31
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %cont23.preheader, label %if.then10

if.then10:                                        ; preds = %if.end
  store i64 0, i64* @lastval, align 8, !tbaa !0
  br label %cont23.preheader

cont23.preheader:                                 ; preds = %if.end, %if.then10
  %cmp24766 = icmp ne i32 %and, 1
  %9 = load i32* @breaks, align 4, !tbaa !3
  %tobool26767 = icmp ne i32 %9, 0
  %or.cond607768 = or i1 %cmp24766, %tobool26767
  %10 = load i32* @retflag, align 4, !tbaa !3
  %tobool28769 = icmp ne i32 %10, 0
  %or.cond608770 = or i1 %or.cond607768, %tobool28769
  %or.cond608.not771 = xor i1 %or.cond608770, true
  %11 = load i32* @errflag, align 4, !tbaa !3
  %lnot772 = icmp eq i32 %11, 0
  %or.cond720773 = and i1 %lnot772, %or.cond608.not771
  br i1 %or.cond720773, label %cont31.lr.ph, label %while.end598

cont31.lr.ph:                                     ; preds = %cont23.preheader
  %tobool236 = icmp eq i32 %0, 0
  %prog = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  br label %cont31

cont31:                                           ; preds = %if.end595, %cont31.lr.ph
  %12 = phi i32* [ %incdec.ptr, %cont31.lr.ph ], [ %incdec.ptr597, %if.end595 ]
  %exiting.addr.0775 = phi i32 [ %exiting, %cont31.lr.ph ], [ %exiting.addr.2, %if.end595 ]
  %code.0774 = phi i32 [ %8, %cont31.lr.ph ], [ %77, %if.end595 ]
  %shr = lshr i32 %code.0774, 5
  %13 = load i32* @cmdsp, align 4, !tbaa !3
  %14 = load i32* @intrap, align 4, !tbaa !3
  %tobool34 = icmp eq i32 %14, 0
  %15 = load i32* @trapisfunc, align 4, !tbaa !3
  %tobool36 = icmp ne i32 %15, 0
  %or.cond609 = or i1 %tobool34, %tobool36
  br i1 %or.cond609, label %land.lhs.true39, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %cont31
  %16 = load i32* @traplocallevel, align 4, !tbaa !3
  %17 = load i32* @locallevel, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %16, %17
  %18 = load i32* @ineval, align 4, !tbaa !3
  %tobool40 = icmp ne i32 %18, 0
  %or.cond610 = or i1 %cmp38, %tobool40
  br i1 %or.cond610, label %cont98, label %if.then41

land.lhs.true39:                                  ; preds = %cont31
  %.old = load i32* @ineval, align 4, !tbaa !3
  %tobool40.old = icmp eq i32 %.old, 0
  br i1 %tobool40.old, label %if.then41, label %cont98

if.then41:                                        ; preds = %land.lhs.true39, %land.lhs.true37
  %19 = load i32* %12, align 4, !tbaa !3
  %and49 = and i32 %shr, 32
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %cont63, label %if.end88

cont63:                                           ; preds = %if.then41
  %and61 = and i32 %19, 31
  %cmp64 = icmp eq i32 %and61, 2
  br i1 %cmp64, label %cont73, label %cont98

cont73:                                           ; preds = %cont63
  %and71 = and i32 %19, 896
  %cmp74 = icmp eq i32 %and71, 512
  %arrayidx = getelementptr inbounds i32* %12, i32 1
  %20 = load i32* %arrayidx, align 4, !tbaa !3
  br i1 %cmp74, label %if.end88, label %cont84

cont84:                                           ; preds = %cont73
  %shr82 = lshr i32 %20, 6
  br label %if.end88

if.end88:                                         ; preds = %cont73, %if.then41, %cont84
  %lnp1.0 = phi i32 [ %shr82, %cont84 ], [ %19, %if.then41 ], [ %20, %cont73 ]
  %tobool89 = icmp eq i32 %lnp1.0, 0
  br i1 %tobool89, label %cont98, label %cont92

cont92:                                           ; preds = %if.end88
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %lnp1.0, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb93, label %cont94

ioc_bb93:                                         ; preds = %cont92
  %24 = zext i32 %lnp1.0 to i64
  tail call void @__ioc_report_sub_overflow(i32 1056, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind
  br label %cont94

cont94:                                           ; preds = %cont92, %ioc_bb93
  %conv = zext i32 %22 to i64
  store i64 %conv, i64* @lineno, align 8, !tbaa !0
  br label %cont98

cont98:                                           ; preds = %if.end88, %cont63, %land.lhs.true39, %land.lhs.true37, %cont94
  %25 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 33), align 4, !tbaa !3
  %tobool100 = icmp eq i32 %25, 0
  br i1 %tobool100, label %cont98.if.else142_crit_edge, label %land.lhs.true101

cont98.if.else142_crit_edge:                      ; preds = %cont98
  %.pre = load i32* @intrap, align 4, !tbaa !3
  br label %if.else142

land.lhs.true101:                                 ; preds = %cont98
  %26 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 44), align 1, !tbaa !1
  %tobool103 = icmp eq i8 %26, 0
  %27 = load i32* @intrap, align 4, !tbaa !3
  %tobool105 = icmp ne i32 %27, 0
  %or.cond612 = or i1 %tobool103, %tobool105
  br i1 %or.cond612, label %if.else142, label %if.then106

if.then106:                                       ; preds = %land.lhs.true101
  %28 = load i32** %pc, align 4, !tbaa !5
  %29 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  store i32 1, i32* @noerrexit, align 4, !tbaa !3
  %and115 = and i32 %shr, 32
  %tobool116 = icmp eq i32 %and115, 0
  %incdec.ptr118 = getelementptr inbounds i32* %28, i32 1
  %pc2.0 = select i1 %tobool116, i32* %28, i32* %incdec.ptr118
  %30 = load %struct.eprog** %prog, align 4, !tbaa !5
  %call = tail call i8* @getpermtext(%struct.eprog* %30, i32* %pc2.0, i32 0) nounwind
  %call120 = tail call %struct.param* @assignsparam(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0), i8* %call, i32 0) nounwind
  %.b713 = load i1* @execlist.donetrap.b, align 1
  %31 = zext i1 %.b713 to i32
  %32 = load i64* @lastval, align 8, !tbaa !0
  %.off717 = add i64 %32, 2147483648
  %33 = icmp ult i64 %.off717, 4294967296
  br i1 %33, label %cont126, label %ioc_bb122

ioc_bb122:                                        ; preds = %if.then106
  tail call void @__ioc_report_conversion(i32 1069, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont126

cont126:                                          ; preds = %if.then106, %ioc_bb122
  tail call void @dotrap(i32 33) nounwind
  %34 = load i32* @retflag, align 4, !tbaa !3
  %tobool127 = icmp eq i32 %34, 0
  br i1 %tobool127, label %if.then128, label %if.end130

if.then128:                                       ; preds = %cont126
  %sext718 = shl i64 %32, 32
  %conv129 = ashr exact i64 %sext718, 32
  store i64 %conv129, i64* @lastval, align 8, !tbaa !0
  br label %if.end130

if.end130:                                        ; preds = %cont126, %if.then128
  store i1 %.b713, i1* @execlist.donetrap.b, align 1
  store i32 %0, i32* @noerrexit, align 4, !tbaa !3
  %35 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  %tobool132 = icmp ne i8 %35, 0
  %cond = select i1 %tobool132, i32 2, i32 1
  store i8 %29, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  %tobool138 = icmp eq %struct.param* %call120, null
  br i1 %tobool138, label %cont149, label %if.then139

if.then139:                                       ; preds = %if.end130
  %call140 = tail call i32 @unsetparam_pm(%struct.param* %call120, i32 0, i32 1) nounwind
  br label %cont149

if.else142:                                       ; preds = %cont98.if.else142_crit_edge, %land.lhs.true101
  %36 = phi i32 [ %.pre, %cont98.if.else142_crit_edge ], [ %27, %land.lhs.true101 ]
  %tobool143 = icmp ne i32 %36, 0
  %cond144 = zext i1 %tobool143 to i32
  %and150.pre = and i32 %shr, 32
  br label %cont149

cont149:                                          ; preds = %if.end130, %if.then139, %if.else142
  %and150.pre-phi = phi i32 [ %and115, %if.end130 ], [ %and115, %if.then139 ], [ %and150.pre, %if.else142 ]
  %donedebug.0 = phi i32 [ %cond, %if.end130 ], [ %cond, %if.then139 ], [ %cond144, %if.else142 ]
  %exiting.addr.1 = phi i32 [ %31, %if.end130 ], [ %31, %if.then139 ], [ %exiting.addr.0775, %if.else142 ]
  %tobool151 = icmp eq i32 %and150.pre-phi, 0
  br i1 %tobool151, label %if.end166, label %if.then152

if.then152:                                       ; preds = %cont149
  %37 = load i32** %pc, align 4, !tbaa !5
  %shr159 = lshr i32 %code.0774, 11
  %add.ptr = getelementptr inbounds i32* %37, i32 %shr159
  %cmp160 = icmp eq i32 %donedebug.0, 2
  br i1 %cmp160, label %if.end164, label %if.then162

if.then162:                                       ; preds = %if.then152
  %call163 = tail call fastcc i32 @execsimple(%struct.estate* %state)
  br label %if.end164

if.end164:                                        ; preds = %if.then152, %if.then162
  store i32* %add.ptr, i32** %pc, align 4, !tbaa !5
  br label %sublist_done

if.end166:                                        ; preds = %cont149
  store i1 false, i1* @execlist.donetrap.b, align 1
  %38 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr168 = getelementptr inbounds i32* %38, i32 1
  store i32* %incdec.ptr168, i32** %pc, align 4, !tbaa !5
  %39 = load i32* %38, align 4, !tbaa !3
  %cmp169 = icmp eq i32 %donedebug.0, 2
  %and182760 = and i32 %39, 31
  %cmp185761 = icmp eq i32 %and182760, 2
  br i1 %cmp169, label %cont184.preheader, label %cont224.preheader

cont184.preheader:                                ; preds = %if.end166
  br i1 %cmp185761, label %while.body187, label %while.end

cont224.preheader:                                ; preds = %if.end166
  br i1 %cmp185761, label %cont230, label %while.end492

while.body187:                                    ; preds = %cont184.preheader, %if.end208
  %incdec.ptr210763 = phi i32* [ %incdec.ptr210, %if.end208 ], [ %incdec.ptr168, %cont184.preheader ]
  %code.1762 = phi i32 [ %40, %if.end208 ], [ %39, %cont184.preheader ]
  %shr194 = lshr i32 %code.1762, 10
  %add.ptr195 = getelementptr inbounds i32* %incdec.ptr210763, i32 %shr194
  %and202 = and i32 %code.1762, 96
  %cmp205 = icmp eq i32 %and202, 0
  br i1 %cmp205, label %while.endsplit, label %if.end208

if.end208:                                        ; preds = %while.body187
  %add.ptr195.sum = add i32 %shr194, 1
  %incdec.ptr210 = getelementptr inbounds i32* %incdec.ptr210763, i32 %add.ptr195.sum
  %40 = load i32* %add.ptr195, align 4, !tbaa !3
  %and182 = and i32 %40, 31
  %cmp185 = icmp eq i32 %and182, 2
  br i1 %cmp185, label %while.body187, label %cont184.while.end_crit_edge

while.endsplit:                                   ; preds = %while.body187
  store i32* %add.ptr195, i32** %pc, align 4
  br label %while.end

cont184.while.end_crit_edge:                      ; preds = %if.end208
  store i32* %incdec.ptr210, i32** %pc, align 4
  br label %while.end

while.end:                                        ; preds = %while.endsplit, %cont184.while.end_crit_edge, %cont184.preheader
  store i1 true, i1* @execlist.donetrap.b, align 1
  br label %sublist_done

cont230:                                          ; preds = %cont224.preheader, %sw.epilog
  %41 = phi i32* [ %incdec.ptr491, %sw.epilog ], [ %incdec.ptr168, %cont224.preheader ]
  %code.2758 = phi i32 [ %54, %sw.epilog ], [ %39, %cont224.preheader ]
  %shr231 = lshr i32 %code.2758, 5
  %shr234 = lshr i32 %code.2758, 10
  %add.ptr235 = getelementptr inbounds i32* %41, i32 %shr234
  %and243 = and i32 %shr231, 3
  br i1 %tobool236, label %cont245, label %cont253

cont245:                                          ; preds = %cont230
  %cmp246 = icmp ne i32 %and243, 0
  %conv247 = zext i1 %cmp246 to i32
  store i32 %conv247, i32* @noerrexit, align 4, !tbaa !3
  br label %cont253

cont253:                                          ; preds = %cont230, %cont245
  switch i32 %and243, label %sw.epilog [
    i32 0, label %cont262
    i32 1, label %cont288
    i32 2, label %cont391
  ]

cont262:                                          ; preds = %cont253
  %and263 = and i32 %shr231, 16
  %tobool264 = icmp eq i32 %and263, 0
  br i1 %tobool264, label %cont271, label %if.then265

if.then265:                                       ; preds = %cont262
  %call266 = tail call fastcc i32 @execsimple(%struct.estate* %state)
  br label %if.end278

cont271:                                          ; preds = %cont262
  %and272 = and i32 %shr, 16
  %tobool275 = icmp ne i32 %exiting.addr.1, 0
  %not.tobool273 = icmp ne i32 %and272, 0
  %.tobool275 = and i1 %tobool275, %not.tobool273
  %land.ext = zext i1 %.tobool275 to i32
  %call277 = tail call fastcc i32 @execpline(%struct.estate* %state, i32 %code.2758, i32 %shr, i32 %land.ext)
  br label %if.end278

if.end278:                                        ; preds = %cont271, %if.then265
  store i32* %add.ptr235, i32** %pc, align 4, !tbaa !5
  br label %sublist_done

cont288:                                          ; preds = %cont253
  %and289 = and i32 %shr231, 16
  %tobool290 = icmp eq i32 %and289, 0
  br i1 %tobool290, label %cont295, label %cond.true

cond.true:                                        ; preds = %cont288
  %call291 = tail call fastcc i32 @execsimple(%struct.estate* %state)
  br label %cond.end

cont295:                                          ; preds = %cont288
  %call296 = tail call fastcc i32 @execpline(%struct.estate* %state, i32 %code.2758, i32 2, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cont295, %cond.true
  %cond297 = phi i32 [ %call291, %cond.true ], [ %call296, %cont295 ]
  %tobool298 = icmp eq i32 %cond297, 0
  br i1 %tobool298, label %if.end382, label %if.then299

if.then299:                                       ; preds = %cond.end
  %add.ptr235.sum716 = add i32 %shr234, 1
  %incdec.ptr302 = getelementptr inbounds i32* %41, i32 %add.ptr235.sum716
  store i32* %incdec.ptr302, i32** %pc, align 4, !tbaa !5
  %42 = load i32* %add.ptr235, align 4, !tbaa !3
  %shr306 = lshr i32 %42, 10
  %incdec.ptr302.sum = add i32 %shr306, %add.ptr235.sum716
  %add.ptr310 = getelementptr inbounds i32* %41, i32 %incdec.ptr302.sum
  %43 = and i32 %42, 127
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %while.body339, label %cont363

while.body339:                                    ; preds = %if.then299, %while.body339
  %next.0732 = phi i32* [ %add.ptr350, %while.body339 ], [ %add.ptr310, %if.then299 ]
  %45 = load i32* %next.0732, align 4, !tbaa !3
  %shr346 = lshr i32 %45, 10
  %incdec.ptr342.sum = add i32 %shr346, 1
  %add.ptr350 = getelementptr inbounds i32* %next.0732, i32 %incdec.ptr342.sum
  %46 = and i32 %45, 127
  %47 = icmp eq i32 %46, 34
  br i1 %47, label %while.body339, label %cont320.cont363_crit_edge

cont320.cont363_crit_edge:                        ; preds = %while.body339
  %incdec.ptr342 = getelementptr inbounds i32* %next.0732, i32 1
  store i32* %incdec.ptr342, i32** %pc, align 4
  br label %cont363

cont363:                                          ; preds = %cont320.cont363_crit_edge, %if.then299
  %and332.lcssa.in = phi i32 [ %45, %cont320.cont363_crit_edge ], [ %42, %if.then299 ]
  %next.0.lcssa = phi i32* [ %add.ptr350, %cont320.cont363_crit_edge ], [ %add.ptr310, %if.then299 ]
  %and321 = and i32 %and332.lcssa.in, 31
  %cmp324 = icmp eq i32 %and321, 2
  br i1 %cmp324, label %cont375, label %if.then366

if.then366:                                       ; preds = %cont363
  store i1 true, i1* @execlist.donetrap.b, align 1
  br label %sublist_done

cont375:                                          ; preds = %cont363
  %and332.lcssa = and i32 %and332.lcssa.in, 96
  %cmp376 = icmp eq i32 %and332.lcssa, 0
  br i1 %cmp376, label %if.then378, label %if.end382

if.then378:                                       ; preds = %cont375
  store i1 true, i1* @execlist.donetrap.b, align 1
  store i32* %next.0.lcssa, i32** %pc, align 4, !tbaa !5
  br label %sublist_done

if.end382:                                        ; preds = %cond.end, %cont375
  %next.1 = phi i32* [ %next.0.lcssa, %cont375 ], [ %add.ptr235, %cond.end ]
  tail call void @cmdpush(i32 12) nounwind
  br label %sw.epilog

cont391:                                          ; preds = %cont253
  %and392 = and i32 %shr231, 16
  %tobool393 = icmp eq i32 %and392, 0
  br i1 %tobool393, label %cont400, label %cond.true394

cond.true394:                                     ; preds = %cont391
  %call395 = tail call fastcc i32 @execsimple(%struct.estate* %state)
  br label %cond.end402

cont400:                                          ; preds = %cont391
  %call401 = tail call fastcc i32 @execpline(%struct.estate* %state, i32 %code.2758, i32 2, i32 0)
  br label %cond.end402

cond.end402:                                      ; preds = %cont400, %cond.true394
  %cond403 = phi i32 [ %call395, %cond.true394 ], [ %call401, %cont400 ]
  %tobool404 = icmp eq i32 %cond403, 0
  br i1 %tobool404, label %if.then405, label %if.end488

if.then405:                                       ; preds = %cond.end402
  %add.ptr235.sum = add i32 %shr234, 1
  %incdec.ptr408 = getelementptr inbounds i32* %41, i32 %add.ptr235.sum
  store i32* %incdec.ptr408, i32** %pc, align 4, !tbaa !5
  %48 = load i32* %add.ptr235, align 4, !tbaa !3
  %shr412 = lshr i32 %48, 10
  %incdec.ptr408.sum = add i32 %shr412, %add.ptr235.sum
  %add.ptr416 = getelementptr inbounds i32* %41, i32 %incdec.ptr408.sum
  %49 = and i32 %48, 127
  %50 = icmp eq i32 %49, 66
  br i1 %50, label %while.body445, label %cont469

while.body445:                                    ; preds = %if.then405, %while.body445
  %next.2728 = phi i32* [ %add.ptr456, %while.body445 ], [ %add.ptr416, %if.then405 ]
  %51 = load i32* %next.2728, align 4, !tbaa !3
  %shr452 = lshr i32 %51, 10
  %incdec.ptr448.sum = add i32 %shr452, 1
  %add.ptr456 = getelementptr inbounds i32* %next.2728, i32 %incdec.ptr448.sum
  %52 = and i32 %51, 127
  %53 = icmp eq i32 %52, 66
  br i1 %53, label %while.body445, label %cont426.cont469_crit_edge

cont426.cont469_crit_edge:                        ; preds = %while.body445
  %incdec.ptr448 = getelementptr inbounds i32* %next.2728, i32 1
  store i32* %incdec.ptr448, i32** %pc, align 4
  br label %cont469

cont469:                                          ; preds = %cont426.cont469_crit_edge, %if.then405
  %and438.lcssa.in = phi i32 [ %51, %cont426.cont469_crit_edge ], [ %48, %if.then405 ]
  %next.2.lcssa = phi i32* [ %add.ptr456, %cont426.cont469_crit_edge ], [ %add.ptr416, %if.then405 ]
  %and427 = and i32 %and438.lcssa.in, 31
  %cmp430 = icmp eq i32 %and427, 2
  br i1 %cmp430, label %cont481, label %if.then472

if.then472:                                       ; preds = %cont469
  store i1 true, i1* @execlist.donetrap.b, align 1
  br label %sublist_done

cont481:                                          ; preds = %cont469
  %and438.lcssa = and i32 %and438.lcssa.in, 96
  %cmp482 = icmp eq i32 %and438.lcssa, 0
  br i1 %cmp482, label %if.then484, label %if.end488

if.then484:                                       ; preds = %cont481
  store i1 true, i1* @execlist.donetrap.b, align 1
  store i32* %next.2.lcssa, i32** %pc, align 4, !tbaa !5
  br label %sublist_done

if.end488:                                        ; preds = %cond.end402, %cont481
  %next.3 = phi i32* [ %add.ptr235, %cond.end402 ], [ %next.2.lcssa, %cont481 ]
  tail call void @cmdpush(i32 11) nounwind
  br label %sw.epilog

sw.epilog:                                        ; preds = %cont253, %if.end488, %if.end382
  %next.4 = phi i32* [ %add.ptr235, %cont253 ], [ %next.3, %if.end488 ], [ %next.1, %if.end382 ]
  %incdec.ptr491 = getelementptr inbounds i32* %next.4, i32 1
  store i32* %incdec.ptr491, i32** %pc, align 4, !tbaa !5
  %54 = load i32* %next.4, align 4, !tbaa !3
  %and222 = and i32 %54, 31
  %cmp225 = icmp eq i32 %and222, 2
  br i1 %cmp225, label %cont230, label %while.end492

while.end492:                                     ; preds = %sw.epilog, %cont224.preheader
  %.lcssa = phi i32* [ %incdec.ptr168, %cont224.preheader ], [ %incdec.ptr491, %sw.epilog ]
  %incdec.ptr494 = getelementptr inbounds i32* %.lcssa, i32 -1
  store i32* %incdec.ptr494, i32** %pc, align 4, !tbaa !5
  br label %sublist_done

sublist_done:                                     ; preds = %while.end492, %if.then484, %if.then472, %if.then378, %if.then366, %if.end278, %while.end, %if.end164
  store i32 %0, i32* @noerrexit, align 4, !tbaa !3
  %55 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 33), align 4, !tbaa !3
  %56 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 44), align 1, !tbaa !1
  %notlhs = icmp ne i32 %55, 0
  %notrhs = icmp eq i8 %56, 0
  %or.cond614.not = and i1 %notrhs, %notlhs
  %tobool502 = icmp eq i32 %donedebug.0, 0
  %or.cond725 = and i1 %or.cond614.not, %tobool502
  br i1 %or.cond725, label %if.then503, label %sublist_done.if.end524_crit_edge

sublist_done.if.end524_crit_edge:                 ; preds = %sublist_done
  %.b.pre = load i1* @execlist.donetrap.b, align 1
  br label %if.end524

if.then503:                                       ; preds = %sublist_done
  %57 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  store i32 1, i32* @noerrexit, align 4, !tbaa !3
  %.b711 = load i1* @execlist.donetrap.b, align 1
  %58 = zext i1 %.b711 to i32
  %59 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %59, 2147483648
  %60 = icmp ult i64 %.off, 4294967296
  br i1 %60, label %cont514, label %ioc_bb510

ioc_bb510:                                        ; preds = %if.then503
  tail call void @__ioc_report_conversion(i32 1208, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %59, i8 1) nounwind
  br label %cont514

cont514:                                          ; preds = %if.then503, %ioc_bb510
  tail call void @dotrap(i32 33) nounwind
  %61 = load i32* @retflag, align 4, !tbaa !3
  %tobool515 = icmp eq i32 %61, 0
  br i1 %tobool515, label %if.then516, label %if.end518

if.then516:                                       ; preds = %cont514
  %sext = shl i64 %59, 32
  %conv517 = ashr exact i64 %sext, 32
  store i64 %conv517, i64* @lastval, align 8, !tbaa !0
  br label %if.end518

if.end518:                                        ; preds = %cont514, %if.then516
  store i1 %.b711, i1* @execlist.donetrap.b, align 1
  store i32 %0, i32* @noerrexit, align 4, !tbaa !3
  store i8 %57, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  br label %if.end524

if.end524:                                        ; preds = %sublist_done.if.end524_crit_edge, %if.end518
  %.b = phi i1 [ %.b.pre, %sublist_done.if.end524_crit_edge ], [ %.b711, %if.end518 ]
  %exiting.addr.2 = phi i32 [ %exiting.addr.1, %sublist_done.if.end524_crit_edge ], [ %58, %if.end518 ]
  store i32 %13, i32* @cmdsp, align 4, !tbaa !3
  %tobool525 = icmp ne i32 %0, 0
  %or.cond616 = or i1 %tobool525, %.b
  br i1 %or.cond616, label %cont591, label %cont530

cont530:                                          ; preds = %if.end524
  %62 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 32), align 4, !tbaa !3
  %tobool532 = icmp ne i32 %62, 0
  %63 = load i64* @lastval, align 8, !tbaa !0
  %tobool534 = icmp ne i64 %63, 0
  %or.cond618 = and i1 %tobool532, %tobool534
  br i1 %or.cond618, label %cont537, label %if.end538

cont537:                                          ; preds = %cont530
  tail call void @dotrap(i32 32) nounwind
  store i1 true, i1* @execlist.donetrap.b, align 1
  %.pr = load i64* @lastval, align 8, !tbaa !0
  br label %if.end538

if.end538:                                        ; preds = %cont537, %cont530
  %64 = phi i64 [ %.pr, %cont537 ], [ %63, %cont530 ]
  %tobool539 = icmp eq i64 %64, 0
  br i1 %tobool539, label %cont591, label %if.then540

if.then540:                                       ; preds = %if.end538
  %65 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 48), align 1, !tbaa !1
  %tobool542 = icmp eq i8 %65, 0
  br i1 %tobool542, label %land.end548, label %land.rhs543

land.rhs543:                                      ; preds = %if.then540
  %66 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool545 = icmp ne i8 %66, 0
  %67 = load i32* @locallevel, align 4, !tbaa !3
  %tobool546 = icmp ne i32 %67, 0
  %or.cond620 = or i1 %tobool545, %tobool546
  br i1 %or.cond620, label %land.end548, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs543
  %68 = load i32* @sourcelevel, align 4, !tbaa !3
  %tobool547 = icmp ne i32 %68, 0
  br label %land.end548

land.end548:                                      ; preds = %land.rhs543, %if.then540, %lor.rhs
  %69 = phi i1 [ %tobool547, %lor.rhs ], [ false, %if.then540 ], [ true, %land.rhs543 ]
  %70 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 47), align 1, !tbaa !1
  %tobool551 = icmp eq i8 %70, 0
  br i1 %tobool551, label %lor.rhs552, label %if.then562

lor.rhs552:                                       ; preds = %land.end548
  %lnot557 = xor i1 %69, true
  %not.tobool554 = icmp ne i8 %65, 0
  %.lnot557 = and i1 %not.tobool554, %lnot557
  br i1 %.lnot557, label %if.then562, label %if.end582

if.then562:                                       ; preds = %land.end548, %lor.rhs552
  %71 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 0), align 4, !tbaa !3
  %tobool563 = icmp eq i32 %71, 0
  br i1 %tobool563, label %if.end565, label %if.then564

if.then564:                                       ; preds = %if.then562
  tail call void @dotrap(i32 0) nounwind
  br label %if.end565

if.end565:                                        ; preds = %if.then562, %if.then564
  %72 = load i64* @mypid, align 8, !tbaa !0
  %call566 = tail call i32 @getpid() nounwind
  %conv567 = sext i32 %call566 to i64
  %cmp568 = icmp eq i64 %72, %conv567
  %73 = load i64* @lastval, align 8, !tbaa !0
  %.off715 = add i64 %73, 2147483648
  %74 = icmp ult i64 %.off715, 4294967296
  br i1 %cmp568, label %if.else576, label %if.then570

if.then570:                                       ; preds = %if.end565
  br i1 %74, label %cont574, label %ioc_bb573

ioc_bb573:                                        ; preds = %if.then570
  tail call void @__ioc_report_conversion(i32 1232, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %73, i8 1) nounwind
  br label %cont574

cont574:                                          ; preds = %ioc_bb573, %if.then570
  %conv575 = trunc i64 %73 to i32
  tail call void @_exit(i32 %conv575) noreturn nounwind
  unreachable

if.else576:                                       ; preds = %if.end565
  br i1 %74, label %cont580, label %ioc_bb579

ioc_bb579:                                        ; preds = %if.else576
  tail call void @__ioc_report_conversion(i32 1234, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %73, i8 1) nounwind
  br label %cont580

cont580:                                          ; preds = %ioc_bb579, %if.else576
  %conv581 = trunc i64 %73 to i32
  tail call void @exit(i32 %conv581) noreturn nounwind
  unreachable

if.end582:                                        ; preds = %lor.rhs552
  br i1 %69, label %if.then584, label %cont591

if.then584:                                       ; preds = %if.end582
  store i32 1, i32* @retflag, align 4, !tbaa !3
  %75 = load i32* @loops, align 4, !tbaa !3
  store i32 %75, i32* @breaks, align 4, !tbaa !3
  br label %cont591

cont591:                                          ; preds = %if.end538, %if.then584, %if.end582, %if.end524
  %and592 = and i32 %shr, 16
  %tobool593 = icmp eq i32 %and592, 0
  br i1 %tobool593, label %if.end595, label %while.end598

if.end595:                                        ; preds = %cont591
  %76 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr597 = getelementptr inbounds i32* %76, i32 1
  store i32* %incdec.ptr597, i32** %pc, align 4, !tbaa !5
  %77 = load i32* %76, align 4, !tbaa !3
  %and21 = and i32 %77, 31
  %cmp24 = icmp ne i32 %and21, 1
  %78 = load i32* @breaks, align 4, !tbaa !3
  %tobool26 = icmp ne i32 %78, 0
  %or.cond607 = or i1 %cmp24, %tobool26
  %79 = load i32* @retflag, align 4, !tbaa !3
  %tobool28 = icmp ne i32 %79, 0
  %or.cond608 = or i1 %or.cond607, %tobool28
  %or.cond608.not = xor i1 %or.cond608, true
  %80 = load i32* @errflag, align 4, !tbaa !3
  %lnot = icmp eq i32 %80, 0
  %or.cond720 = and i1 %lnot, %or.cond608.not
  br i1 %or.cond720, label %cont31, label %while.end598

while.end598:                                     ; preds = %if.end595, %cont591, %cont23.preheader
  %exiting.addr.3 = phi i32 [ %exiting, %cont23.preheader ], [ %exiting.addr.2, %cont591 ], [ %exiting.addr.2, %if.end595 ]
  store i32 %2, i32* @pline_level, align 4, !tbaa !3
  store i32 %3, i32* @list_pipe, align 4, !tbaa !3
  store i64 %4, i64* @lineno, align 8, !tbaa !0
  %tobool599 = icmp eq i32 %dont_change_job, 0
  br i1 %tobool599, label %if.end601, label %if.then600

if.then600:                                       ; preds = %while.end598
  store i32 %1, i32* @thisjob, align 4, !tbaa !3
  br label %if.end601

if.end601:                                        ; preds = %while.end598, %if.then600
  %tobool602 = icmp ne i32 %exiting.addr.3, 0
  %81 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 0), align 4, !tbaa !3
  %tobool604 = icmp ne i32 %81, 0
  %or.cond622 = and i1 %tobool602, %tobool604
  br i1 %or.cond622, label %if.then605, label %if.end606

if.then605:                                       ; preds = %if.end601
  tail call void @dotrap(i32 0) nounwind
  store i32 0, i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 0), align 4, !tbaa !3
  br label %if.end606

if.end606:                                        ; preds = %if.then605, %if.end601
  ret void
}

declare void @freeeprog(%struct.eprog*)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare %struct.param* @assignsparam(i8*, i8*, i32)

declare i8* @getpermtext(%struct.eprog*, i32*, i32)

declare void @dotrap(i32)

declare i32 @unsetparam_pm(%struct.param*, i32, i32)

define internal fastcc i32 @execsimple(%struct.estate* %state) nounwind {
entry:
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %1 = load i32* %0, align 4, !tbaa !3
  %2 = load i32* @errflag, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %3 = load i32* @intrap, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %3, 0
  %4 = load i32* @trapisfunc, align 4, !tbaa !3
  %tobool2 = icmp ne i32 %4, 0
  %or.cond = or i1 %tobool1, %tobool2
  br i1 %or.cond, label %land.lhs.true4, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %5 = load i32* @traplocallevel, align 4, !tbaa !3
  %6 = load i32* @locallevel, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, %6
  %7 = load i32* @ineval, align 4, !tbaa !3
  %tobool5 = icmp ne i32 %7, 0
  %or.cond46 = or i1 %cmp, %tobool5
  %tobool7.old = icmp eq i32 %1, 0
  %or.cond55 = or i1 %or.cond46, %tobool7.old
  br i1 %or.cond55, label %if.end13, label %cont10

land.lhs.true4:                                   ; preds = %if.end
  %.old = load i32* @ineval, align 4, !tbaa !3
  %tobool5.old = icmp ne i32 %.old, 0
  %tobool7 = icmp eq i32 %1, 0
  %or.cond54 = or i1 %tobool5.old, %tobool7
  br i1 %or.cond54, label %if.end13, label %cont10

cont10:                                           ; preds = %land.lhs.true4, %land.lhs.true3
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %cont10
  %11 = zext i32 %1 to i64
  tail call void @__ioc_report_sub_overflow(i32 973, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %11, i64 1, i8 5) nounwind
  %.pre.pre = load i32** %pc, align 4, !tbaa !5
  br label %cont12

cont12:                                           ; preds = %cont10, %ioc_bb11
  %.pre = phi i32* [ %incdec.ptr, %cont10 ], [ %.pre.pre, %ioc_bb11 ]
  %conv = zext i32 %9 to i64
  store i64 %conv, i64* @lineno, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true4, %cont12, %land.lhs.true3
  %12 = phi i32* [ %incdec.ptr, %land.lhs.true4 ], [ %.pre, %cont12 ], [ %incdec.ptr, %land.lhs.true3 ]
  %incdec.ptr15 = getelementptr inbounds i32* %12, i32 1
  store i32* %incdec.ptr15, i32** %pc, align 4, !tbaa !5
  %13 = load i32* %12, align 4, !tbaa !3
  %and = and i32 %13, 31
  %cmp26 = icmp eq i32 %and, 5
  br i1 %cmp26, label %if.then28, label %cont36

if.then28:                                        ; preds = %if.end13
  store i32 0, i32* @cmdoutval, align 4, !tbaa !3
  tail call fastcc void @addvars(%struct.estate* %state, i32* %12, i32 0)
  %14 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool30 = icmp eq i8 %14, 0
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then28
  %15 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %15) nounwind
  %16 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call32 = tail call i32 @fflush(%struct._IO_FILE* %16) nounwind
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.then31
  %17 = load i32* @errflag, align 4, !tbaa !3
  %tobool34 = icmp ne i32 %17, 0
  %18 = load i32* @cmdoutval, align 4, !tbaa !3
  %cond = select i1 %tobool34, i32 %17, i32 %18
  br label %if.end40

cont36:                                           ; preds = %if.end13
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %and, i32 8)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb37, label %cont38

ioc_bb37:                                         ; preds = %cont36
  %22 = zext i32 %and to i64
  tail call void @__ioc_report_sub_overflow(i32 985, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %22, i64 8, i8 5) nounwind
  br label %cont38

cont38:                                           ; preds = %cont36, %ioc_bb37
  %arrayidx = getelementptr inbounds [13 x i32 (%struct.estate*, i32)*]* @execfuncs, i32 0, i32 %20
  %23 = load i32 (%struct.estate*, i32)** %arrayidx, align 4, !tbaa !5
  %call39 = tail call i32 %23(%struct.estate* %state, i32 0) nounwind
  br label %if.end40

if.end40:                                         ; preds = %cont38, %if.end33
  %lv.0 = phi i32 [ %cond, %if.end33 ], [ %call39, %cont38 ]
  %conv41 = sext i32 %lv.0 to i64
  br label %return

return:                                           ; preds = %entry, %if.end40
  %storemerge = phi i64 [ %conv41, %if.end40 ], [ 1, %entry ]
  %retval.0 = phi i32 [ %lv.0, %if.end40 ], [ 1, %entry ]
  store i64 %storemerge, i64* @lastval, align 8
  ret i32 %retval.0
}

define internal fastcc i32 @execpline(%struct.estate* %state, i32 %slcode, i32 %how, i32 %last1) nounwind {
entry:
  %ipipe = alloca [2 x i32], align 4
  %opipe = alloca [2 x i32], align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp34 = alloca %struct.__sigset_t, align 4
  %tmp140 = alloca %struct.__sigset_t, align 4
  %tmp237 = alloca %struct.__sigset_t, align 4
  %tmp252 = alloca %struct.__sigset_t, align 4
  %tmp253 = alloca %struct.__sigset_t, align 4
  %synch = alloca [2 x i32], align 4
  %bgtime = alloca %struct.timeval, align 8
  %dummy = alloca i8, align 1
  %tmp409 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @simple_pline, align 4, !tbaa !3
  %shr = lshr i32 %slcode, 5
  %and = and i32 %shr, 28
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %1 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32* %1, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %2 = load i32* %1, align 4, !tbaa !3
  %and13 = and i32 %2, 31
  %cmp = icmp eq i32 %and13, 3
  %and16 = and i32 %shr, 8
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and16.lobit = lshr exact i32 %and16, 3
  %conv18542 = zext i32 %and16.lobit to i64
  store i64 %conv18542, i64* @lastval, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %cmp17 = icmp eq i32 %and16, 0
  %last1. = select i1 %cmp17, i32 %last1, i32 0
  %3 = load i32* @thisjob, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [2 x i32]* %opipe, i32 0, i32 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds [2 x i32]* %opipe, i32 0, i32 0
  store i32 0, i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds [2 x i32]* %ipipe, i32 0, i32 1
  store i32 0, i32* %arrayidx27, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds [2 x i32]* %ipipe, i32 0, i32 0
  store i32 0, i32* %arrayidx28, align 4, !tbaa !3
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %call = call i32 @initjob() nounwind
  store i32 %call, i32* @thisjob, align 4, !tbaa !3
  %cmp31 = icmp eq i32 %call, -1
  br i1 %cmp31, label %if.then33, label %cont39

if.then33:                                        ; preds = %if.else
  call void @signal_unblock(%struct.__sigset_t* sret %tmp34, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %return

cont39:                                           ; preds = %if.else
  %and40 = and i32 %how, 1
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %cont39
  %4 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat = getelementptr inbounds %struct.job* %4, i32 %call, i32 2
  %5 = load i32* %stat, align 4, !tbaa !3
  %or = or i32 %5, 4
  store i32 %or, i32* %stat, align 4, !tbaa !3
  br label %if.end44

if.end44:                                         ; preds = %cont39, %if.then42
  %and45 = and i32 %shr, 4
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.end87, label %cont51

cont51:                                           ; preds = %if.end44
  %6 = load i32* @coprocin, align 4, !tbaa !3
  %cmp52 = icmp sgt i32 %6, -1
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %cont51
  %call55 = call i32 @zclose(i32 %6) nounwind
  %7 = load i32* @coprocout, align 4, !tbaa !3
  %call56 = call i32 @zclose(i32 %7) nounwind
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %cont51
  %call.i547 = call i32 @pipe(i32* %arrayidx28) nounwind
  %cmp.i548 = icmp slt i32 %call.i547, 0
  br i1 %cmp.i548, label %cont63, label %if.else65

cont63:                                           ; preds = %if.end57
  %call1.i549 = call i32* @__errno_location() nounwind readnone
  %8 = load i32* %call1.i549, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %8) nounwind
  store i32 -1, i32* @coprocout, align 4, !tbaa !3
  store i32 -1, i32* @coprocin, align 4, !tbaa !3
  %and64 = and i32 %shr, 24
  br label %if.end87

if.else65:                                        ; preds = %if.end57
  %9 = load i32* %arrayidx28, align 4, !tbaa !3
  %call2.i551 = call i32 @movefd(i32 %9) nounwind
  store i32 %call2.i551, i32* %arrayidx28, align 4, !tbaa !3
  %10 = load i32* %arrayidx27, align 4, !tbaa !3
  %call5.i553 = call i32 @movefd(i32 %10) nounwind
  store i32 %call5.i553, i32* %arrayidx27, align 4, !tbaa !3
  %call.i = call i32 @pipe(i32* %arrayidx26) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then70, label %if.else78

if.then70:                                        ; preds = %if.else65
  %call1.i = call i32* @__errno_location() nounwind readnone
  %11 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %11) nounwind
  %12 = load i32* %arrayidx28, align 4, !tbaa !3
  %call72 = call i32 @close(i32 %12) nounwind
  %13 = load i32* %arrayidx27, align 4, !tbaa !3
  %call74 = call i32 @close(i32 %13) nounwind
  store i32 -1, i32* @coprocout, align 4, !tbaa !3
  store i32 -1, i32* @coprocin, align 4, !tbaa !3
  %and77 = and i32 %shr, 24
  br label %if.end87

if.else78:                                        ; preds = %if.else65
  %14 = load i32* %arrayidx26, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %14) nounwind
  store i32 %call2.i, i32* %arrayidx26, align 4, !tbaa !3
  %15 = load i32* %arrayidx, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %15) nounwind
  store i32 %call5.i, i32* %arrayidx, align 4, !tbaa !3
  %16 = load i32* %arrayidx28, align 4, !tbaa !3
  store i32 %16, i32* @coprocin, align 4, !tbaa !3
  store i32 %call5.i, i32* @coprocout, align 4, !tbaa !3
  %17 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx83 = getelementptr inbounds i8* %17, i32 %call5.i
  store i8 0, i8* %arrayidx83, align 1, !tbaa !1
  %18 = load i32* @coprocin, align 4, !tbaa !3
  %19 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds i8* %19, i32 %18
  store i8 0, i8* %arrayidx84, align 1, !tbaa !1
  br label %if.end87

if.end87:                                         ; preds = %if.end44, %cont63, %if.else78, %if.then70
  %slflags.0 = phi i32 [ %and64, %cont63 ], [ %and77, %if.then70 ], [ %and, %if.else78 ], [ %and, %if.end44 ]
  %how.addr.0 = phi i32 [ 4, %cont63 ], [ 4, %if.then70 ], [ 4, %if.else78 ], [ %how, %if.end44 ]
  %20 = load i32* @pline_level, align 4, !tbaa !3
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %20, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb88, label %cont89

ioc_bb88:                                         ; preds = %if.end87
  %24 = sext i32 %20 to i64
  call void @__ioc_report_add_overflow(i32 1324, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %if.end87, %ioc_bb88
  store i32 %22, i32* @pline_level, align 4, !tbaa !3
  %tobool90 = icmp eq i32 %20, 0
  br i1 %tobool90, label %if.then91, label %if.end102

if.then91:                                        ; preds = %cont89
  store i32 0, i32* @list_pipe_pid, align 4, !tbaa !3
  store i32 0, i32* @nowait, align 4, !tbaa !3
  %and97 = lshr i32 %2, 5
  %and97.lobit = and i32 %and97, 1
  %25 = xor i32 %and97.lobit, 1
  store i32 %25, i32* @simple_pline, align 4, !tbaa !3
  store i32 %call, i32* @list_pipe_job, align 4, !tbaa !3
  br label %if.end102

if.end102:                                        ; preds = %cont89, %if.then91
  store i32 0, i32* @execpline.lpforked, align 4, !tbaa !3
  store i32 0, i32* @execpline.lastwj, align 4, !tbaa !3
  %26 = load i32* %arrayidx26, align 4, !tbaa !3
  %27 = load i32* %arrayidx27, align 4, !tbaa !3
  call fastcc void @execpline2(%struct.estate* %state, i32 %2, i32 %how.addr.0, i32 %26, i32 %27, i32 %last1.)
  %28 = load i32* @pline_level, align 4, !tbaa !3
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 -1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb105, label %cont106

ioc_bb105:                                        ; preds = %if.end102
  %32 = sext i32 %28 to i64
  call void @__ioc_report_add_overflow(i32 1332, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %32, i64 -1, i8 13) nounwind
  br label %cont106

cont106:                                          ; preds = %if.end102, %ioc_bb105
  store i32 %30, i32* @pline_level, align 4, !tbaa !3
  %and111 = and i32 %how.addr.0, 4
  %tobool112 = icmp eq i32 %and111, 0
  br i1 %tobool112, label %if.else143, label %if.then113

if.then113:                                       ; preds = %cont106
  store i32 %call, i32* @execpline.lastwj, align 4, !tbaa !3
  %33 = load i32* @thisjob, align 4, !tbaa !3
  %34 = load i32* @list_pipe_job, align 4, !tbaa !3
  %cmp114 = icmp eq i32 %33, %34
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then113
  store i32 0, i32* @list_pipe_job, align 4, !tbaa !3
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.then113
  %35 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat119 = getelementptr inbounds %struct.job* %35, i32 %33, i32 2
  %36 = load i32* %stat119, align 4, !tbaa !3
  %or120 = or i32 %36, 2048
  store i32 %or120, i32* %stat119, align 4, !tbaa !3
  %and121 = and i32 %slflags.0, 4
  %tobool122 = icmp eq i32 %and121, 0
  br i1 %tobool122, label %cont132, label %if.then123

if.then123:                                       ; preds = %if.end117
  %37 = load i32* %arrayidx27, align 4, !tbaa !3
  %call125 = call i32 @zclose(i32 %37) nounwind
  %38 = load i32* %arrayidx26, align 4, !tbaa !3
  %call127 = call i32 @zclose(i32 %38) nounwind
  br label %cont132

cont132:                                          ; preds = %if.end117, %if.then123
  %and133 = and i32 %how.addr.0, 8
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.else138, label %if.then135

if.then135:                                       ; preds = %cont132
  %39 = load %struct.job** @jobtab, align 4, !tbaa !5
  %40 = load i32* @thisjob, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.job* %39, i32 %40
  call void @deletejob(%struct.job* %add.ptr, i32 1) nounwind
  store i32 -1, i32* @thisjob, align 4, !tbaa !3
  br label %if.end139

if.else138:                                       ; preds = %cont132
  call void @spawnjob() nounwind
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then135
  call void @signal_unblock(%struct.__sigset_t* sret %tmp140, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  store i64 0, i64* @lastval, align 8, !tbaa !0
  br label %return

if.else143:                                       ; preds = %cont106
  %41 = load i32* @execpline.lastwj, align 4, !tbaa !3
  %cmp144 = icmp eq i32 %call, %41
  br i1 %cmp144, label %if.end454, label %if.then146

if.then146:                                       ; preds = %if.else143
  %42 = load %struct.job** @jobtab, align 4, !tbaa !5
  %add.ptr148 = getelementptr inbounds %struct.job* %42, i32 %call
  %43 = load i32* @list_pipe_job, align 4, !tbaa !3
  %cmp150 = icmp eq i32 %call, %43
  %44 = load i32* @list_pipe_child, align 4, !tbaa !3
  %tobool152 = icmp ne i32 %44, 0
  %or.cond = and i1 %cmp150, %tobool152
  br i1 %or.cond, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then146
  call void @_exit(i32 0) noreturn nounwind
  unreachable

if.end154:                                        ; preds = %if.then146
  store i32 %call, i32* @thisjob, align 4, !tbaa !3
  store i32 %call, i32* @execpline.lastwj, align 4, !tbaa !3
  %45 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool155 = icmp eq i32 %45, 0
  br i1 %tobool155, label %lor.lhs.false, label %if.then164

lor.lhs.false:                                    ; preds = %if.end154
  %tobool156 = icmp eq i32 %30, 0
  br i1 %tobool156, label %if.end167, label %cont161

cont161:                                          ; preds = %lor.lhs.false
  %and162 = and i32 %how.addr.0, 1
  %tobool163 = icmp eq i32 %and162, 0
  br i1 %tobool163, label %if.then164, label %if.end167

if.then164:                                       ; preds = %cont161, %if.end154
  %stat165 = getelementptr inbounds %struct.job* %42, i32 %call, i32 2
  %46 = load i32* %stat165, align 4, !tbaa !3
  %or166 = or i32 %46, 32
  store i32 %or166, i32* %stat165, align 4, !tbaa !3
  br label %if.end167

if.end167:                                        ; preds = %cont161, %lor.lhs.false, %if.then164
  %47 = load i32* @nowait, align 4, !tbaa !3
  %tobool168 = icmp eq i32 %47, 0
  br i1 %tobool168, label %if.end221.thread, label %if.then169

if.end221.thread:                                 ; preds = %if.end167
  store i32 0, i32* @errbrk_saved, align 4, !tbaa !3
  br label %for.body226.lr.ph

if.then169:                                       ; preds = %if.end167
  %48 = load i32* @pline_level, align 4, !tbaa !3
  %tobool170 = icmp eq i32 %48, 0
  br i1 %tobool170, label %if.then171, label %if.else212

if.then171:                                       ; preds = %if.then169
  store i32 %call, i32* @curjob, align 4, !tbaa !3
  %49 = load i32* @list_pipe_pid, align 4, !tbaa !3
  call void @addproc(i32 %49, i8* getelementptr inbounds ([80 x i8]* @list_pipe_text, i32 0, i32 0), i32 0, %struct.timeval* @list_pipe_start) nounwind
  %procs = getelementptr inbounds %struct.job* %42, i32 %call, i32 4
  %50 = load %struct.process** %procs, align 4, !tbaa !5
  %next = getelementptr inbounds %struct.process* %50, i32 0, i32 0
  %51 = load %struct.process** %next, align 4, !tbaa !5
  %tobool174 = icmp eq %struct.process* %51, null
  %52 = load i32* @execpline.lpforked, align 4, !tbaa !3
  %cmp176 = icmp eq i32 %52, 2
  %or.cond474 = or i1 %tobool174, %cmp176
  br i1 %or.cond474, label %if.then178, label %if.end181

if.then178:                                       ; preds = %if.then171
  %53 = load i32* @list_pipe_pid, align 4, !tbaa !3
  %gleader = getelementptr inbounds %struct.job* %add.ptr148, i32 0, i32 0
  store i32 %53, i32* %gleader, align 4, !tbaa !3
  %stat179 = getelementptr inbounds %struct.job* %42, i32 %call, i32 2
  %54 = load i32* %stat179, align 4, !tbaa !3
  %or180 = or i32 %54, 8192
  store i32 %or180, i32* %stat179, align 4, !tbaa !3
  br label %if.end181

if.end181:                                        ; preds = %if.then171, %if.then178
  %other = getelementptr inbounds %struct.job* %42, i32 %call, i32 1
  %55 = load i32* %other, align 4, !tbaa !3
  %56 = load %struct.job** @jobtab, align 4, !tbaa !5
  %procs183 = getelementptr inbounds %struct.job* %56, i32 %55, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end181
  %pn.0.in = phi %struct.process** [ %procs183, %if.end181 ], [ %next191, %for.body ]
  %pn.0 = load %struct.process** %pn.0.in, align 4
  %tobool184 = icmp eq %struct.process* %pn.0, null
  br i1 %tobool184, label %if.end204, label %for.body

for.body:                                         ; preds = %for.cond
  %status = getelementptr inbounds %struct.process* %pn.0, i32 0, i32 3
  %57 = load i32* %status, align 4, !tbaa !3
  %and186 = and i32 %57, 255
  %cmp187 = icmp eq i32 %and186, 127
  %next191 = getelementptr inbounds %struct.process* %pn.0, i32 0, i32 0
  br i1 %cmp187, label %for.cond195, label %for.cond

for.cond195:                                      ; preds = %for.body, %for.cond195.for.cond195_crit_edge
  %58 = phi %struct.process* [ %.pre567, %for.cond195.for.cond195_crit_edge ], [ %51, %for.body ]
  %qn.0 = phi %struct.process* [ %58, %for.cond195.for.cond195_crit_edge ], [ %50, %for.body ]
  %tobool197 = icmp eq %struct.process* %58, null
  br i1 %tobool197, label %for.end201, label %for.cond195.for.cond195_crit_edge

for.cond195.for.cond195_crit_edge:                ; preds = %for.cond195
  %next196.phi.trans.insert = getelementptr inbounds %struct.process* %58, i32 0, i32 0
  %.pre567 = load %struct.process** %next196.phi.trans.insert, align 4, !tbaa !5
  br label %for.cond195

for.end201:                                       ; preds = %for.cond195
  %status203 = getelementptr inbounds %struct.process* %qn.0, i32 0, i32 3
  store i32 %57, i32* %status203, align 4, !tbaa !3
  br label %if.end204

if.end204:                                        ; preds = %for.cond, %for.end201
  %stat205 = getelementptr inbounds %struct.job* %42, i32 %call, i32 2
  %59 = load i32* %stat205, align 4, !tbaa !3
  %and206 = and i32 %59, -60
  %or208 = or i32 %and206, 19
  store i32 %or208, i32* %stat205, align 4, !tbaa !3
  %60 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 103), align 1, !tbaa !1
  %tobool209 = icmp ne i8 %60, 0
  %lnot.ext = zext i1 %tobool209 to i32
  %call211 = call i32 @printjob(%struct.job* %add.ptr148, i32 %lnot.ext, i32 1) nounwind
  br label %if.end221

if.else212:                                       ; preds = %if.then169
  %61 = load i32* @list_pipe_job, align 4, !tbaa !3
  %cmp213 = icmp eq i32 %call, %61
  br i1 %cmp213, label %cont218, label %if.then215

if.then215:                                       ; preds = %if.else212
  call void @deletejob(%struct.job* %add.ptr148, i32 0) nounwind
  br label %if.end221

cont218:                                          ; preds = %if.else212
  store i32 -1, i32* @execpline.lastwj, align 4, !tbaa !3
  br label %if.end221

if.end221:                                        ; preds = %if.end204, %cont218, %if.then215
  %.pr = load i32* @nowait, align 4, !tbaa !3
  store i32 0, i32* @errbrk_saved, align 4, !tbaa !3
  %lnot224565 = icmp eq i32 %.pr, 0
  br i1 %lnot224565, label %for.body226.lr.ph, label %for.end408

for.body226.lr.ph:                                ; preds = %if.end221.thread, %if.end221
  %stat232 = getelementptr inbounds %struct.job* %42, i32 %call, i32 2
  %arraydecay298 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  br label %for.body226

for.body226:                                      ; preds = %for.cond222.backedge, %for.body226.lr.ph
  %62 = load i32* @list_pipe_child, align 4, !tbaa !3
  %tobool227 = icmp eq i32 %62, 0
  br i1 %tobool227, label %if.end231, label %if.then228

if.then228:                                       ; preds = %for.body226
  %63 = load i32* %stat232, align 4, !tbaa !3
  %or230 = or i32 %63, 32
  store i32 %or230, i32* %stat232, align 4, !tbaa !3
  call void @makerunning(%struct.job* %add.ptr148) nounwind
  br label %if.end231

if.end231:                                        ; preds = %for.body226, %if.then228
  %64 = load i32* %stat232, align 4, !tbaa !3
  %and233 = and i32 %64, 16
  %tobool234 = icmp eq i32 %and233, 0
  br i1 %tobool234, label %if.then235, label %if.end239

if.then235:                                       ; preds = %if.end231
  %65 = load i32* @thisjob, align 4, !tbaa !3
  %call236 = call i32 @hasprocs(i32 %65) nounwind
  call void @waitjobs() nounwind
  call void @signal_block(%struct.__sigset_t* sret %tmp237, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %phitmp = icmp eq i32 %call236, 0
  br label %if.end239

if.end239:                                        ; preds = %if.end231, %if.then235
  %updated.0 = phi i1 [ %phitmp, %if.then235 ], [ true, %if.end231 ]
  %66 = load i32* @list_pipe_job, align 4, !tbaa !3
  %tobool242 = icmp ne i32 %66, 0
  %or.cond475 = and i1 %updated.0, %tobool242
  br i1 %or.cond475, label %land.lhs.true243, label %if.end254

land.lhs.true243:                                 ; preds = %if.end239
  %call244 = call i32 @hasprocs(i32 %66) nounwind
  %tobool245 = icmp eq i32 %call244, 0
  br i1 %tobool245, label %if.end254, label %land.lhs.true246

land.lhs.true246:                                 ; preds = %land.lhs.true243
  %67 = load i32* @list_pipe_job, align 4, !tbaa !3
  %68 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat248 = getelementptr inbounds %struct.job* %68, i32 %67, i32 2
  %69 = load i32* %stat248, align 4, !tbaa !3
  %and249 = and i32 %69, 2
  %tobool250 = icmp eq i32 %and249, 0
  br i1 %tobool250, label %if.then251, label %if.end254

if.then251:                                       ; preds = %land.lhs.true246
  call void @signal_unblock(%struct.__sigset_t* sret %tmp252, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  call void @signal_block(%struct.__sigset_t* sret %tmp253, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %if.end254

if.end254:                                        ; preds = %land.lhs.true246, %land.lhs.true243, %if.end239, %if.then251
  %70 = load i32* @list_pipe_child, align 4, !tbaa !3
  %tobool255 = icmp eq i32 %70, 0
  br i1 %tobool255, label %if.end266, label %land.lhs.true256

land.lhs.true256:                                 ; preds = %if.end254
  %71 = load i32* %stat232, align 4, !tbaa !3
  %and258 = and i32 %71, 8
  %tobool259 = icmp eq i32 %and258, 0
  br i1 %tobool259, label %if.end266, label %land.lhs.true260

land.lhs.true260:                                 ; preds = %land.lhs.true256
  %72 = load i32* @lastval2, align 4, !tbaa !6
  %and261 = and i32 %72, 128
  %tobool262 = icmp eq i32 %and261, 0
  br i1 %tobool262, label %if.end266, label %if.then263

if.then263:                                       ; preds = %land.lhs.true260
  %73 = load i32* @mypgrp, align 4, !tbaa !3
  %and264 = and i32 %72, -129
  %call265 = call i32 @killpg(i32 %73, i32 %and264) nounwind
  %.pre = load i32* @list_pipe_child, align 4, !tbaa !3
  br label %if.end266

if.end266:                                        ; preds = %land.lhs.true260, %land.lhs.true256, %if.end254, %if.then263
  %74 = phi i32 [ %.pre, %if.then263 ], [ 0, %if.end254 ], [ %70, %land.lhs.true256 ], [ %70, %land.lhs.true260 ]
  %75 = load i32* @execpline.lpforked, align 4, !tbaa !3
  %76 = or i32 %75, %74
  %77 = load i32* @subsh, align 4, !tbaa !3
  %78 = or i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool274 = icmp eq i8 %80, 0
  %or.cond543 = or i1 %79, %tobool274
  br i1 %or.cond543, label %if.else398, label %land.lhs.true275

land.lhs.true275:                                 ; preds = %if.end266
  %81 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool276 = icmp eq i32 %81, 0
  br i1 %tobool276, label %lor.lhs.false277, label %land.lhs.true281

lor.lhs.false277:                                 ; preds = %land.lhs.true275
  %82 = load i32* @pline_level, align 4, !tbaa !3
  %83 = or i32 %82, %last1.
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %if.else398, label %land.lhs.true281

land.lhs.true281:                                 ; preds = %lor.lhs.false277, %land.lhs.true275
  %85 = load i32* %stat232, align 4, !tbaa !3
  %and283 = and i32 %85, 2
  %tobool284 = icmp eq i32 %and283, 0
  br i1 %tobool284, label %lor.lhs.false285, label %if.then294

lor.lhs.false285:                                 ; preds = %land.lhs.true281
  %86 = load i32* @list_pipe_job, align 4, !tbaa !3
  %tobool286 = icmp ne i32 %86, 0
  %87 = load i32* @pline_level, align 4, !tbaa !3
  %tobool288 = icmp ne i32 %87, 0
  %or.cond479 = and i1 %tobool286, %tobool288
  br i1 %or.cond479, label %land.lhs.true289, label %if.else398

land.lhs.true289:                                 ; preds = %lor.lhs.false285
  %88 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat291 = getelementptr inbounds %struct.job* %88, i32 %86, i32 2
  %89 = load i32* %stat291, align 4, !tbaa !3
  %and292 = and i32 %89, 2
  %tobool293 = icmp eq i32 %and292, 0
  br i1 %tobool293, label %if.else398, label %if.then294

if.then294:                                       ; preds = %land.lhs.true289, %land.lhs.true281
  %call299 = call i32 @pipe(i32* %arraydecay298) nounwind
  %cmp300 = icmp slt i32 %call299, 0
  br i1 %cmp300, label %if.else316, label %lor.lhs.false302

lor.lhs.false302:                                 ; preds = %if.then294
  %call303 = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  switch i32 %call303, label %if.then325 [
    i32 -1, label %if.then311
    i32 0, label %if.else366
  ]

if.then311:                                       ; preds = %lor.lhs.false302
  %90 = load i32* %arraydecay298, align 4, !tbaa !3
  %call313 = call i32 @close(i32 %90) nounwind
  %91 = load i32* %arrayidx314, align 4, !tbaa !3
  %call315 = call i32 @close(i32 %91) nounwind
  br label %if.end318

if.else316:                                       ; preds = %if.then294
  %call317 = call i32* @__errno_location() nounwind readnone
  %92 = load i32* %call317, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %92) nounwind
  br label %if.end318

if.end318:                                        ; preds = %if.else316, %if.then311
  %call319 = call i8* (i32, ...)* @zleentry(i32 3) nounwind
  %93 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  %94 = call i32 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str25, i32 0, i32 0), i32 28, i32 1, %struct._IO_FILE* %93)
  %95 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  %call321 = call i32 @fflush(%struct._IO_FILE* %95) nounwind
  call void @makerunning(%struct.job* %add.ptr148) nounwind
  %call322 = call i32 @killjb(%struct.job* %add.ptr148, i32 18) nounwind
  br label %for.cond222.backedge

if.then325:                                       ; preds = %lor.lhs.false302
  %96 = load i32* @list_pipe_job, align 4, !tbaa !3
  %97 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader328 = getelementptr inbounds %struct.job* %97, i32 %96, i32 0
  %98 = load i32* %gleader328, align 4, !tbaa !3
  %call329 = call i32 @killpg(i32 %98, i32 0) nounwind
  %cmp332 = icmp eq i32 %call329, -1
  %cond = select i1 %cmp332, i32 2, i32 1
  store i32 %cond, i32* @execpline.lpforked, align 4, !tbaa !3
  store i32 %call303, i32* @list_pipe_pid, align 4, !tbaa !3
  %99 = bitcast %struct.timeval* %bgtime to i64*
  %100 = load i64* %99, align 8
  store i64 %100, i64* bitcast (%struct.timeval* @list_pipe_start to i64*), align 8
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i32 1, i32* @nowait, align 4, !tbaa !3
  %101 = load i32* @loops, align 4, !tbaa !3
  store i32 %101, i32* @breaks, align 4, !tbaa !3
  %102 = load i32* %arrayidx314, align 4, !tbaa !3
  %call335 = call i32 @close(i32 %102) nounwind
  %103 = load i32* %arraydecay298, align 4, !tbaa !3
  %call339 = call i32 @read_loop(i32 %103, i8* %dummy, i32 1) nounwind
  %104 = load i32* %arraydecay298, align 4, !tbaa !3
  %call341 = call i32 @close(i32 %104) nounwind
  %105 = load i32* %stat232, align 4, !tbaa !3
  %and343 = and i32 %105, 8
  %tobool344 = icmp eq i32 %and343, 0
  br i1 %tobool344, label %if.then345, label %if.end354

if.then345:                                       ; preds = %if.then325
  %106 = load i32* @list_pipe_job, align 4, !tbaa !3
  %107 = load %struct.job** @jobtab, align 4, !tbaa !5
  %other347 = getelementptr inbounds %struct.job* %107, i32 %106, i32 1
  store i32 %call, i32* %other347, align 4, !tbaa !3
  %108 = load i32* @list_pipe_job, align 4, !tbaa !3
  %stat349 = getelementptr inbounds %struct.job* %107, i32 %108, i32 2
  %109 = load i32* %stat349, align 4, !tbaa !3
  %or350 = or i32 %109, 128
  store i32 %or350, i32* %stat349, align 4, !tbaa !3
  %110 = load i32* %stat232, align 4, !tbaa !3
  %or352 = or i32 %110, 288
  store i32 %or352, i32* %stat232, align 4, !tbaa !3
  %other353 = getelementptr inbounds %struct.job* %42, i32 %call, i32 1
  store i32 %call303, i32* %other353, align 4, !tbaa !3
  br label %if.end354

if.end354:                                        ; preds = %if.then325, %if.then345
  %111 = load i32* @list_pipe, align 4, !tbaa !3
  %112 = or i32 %111, %last1.
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %for.end408, label %land.lhs.true358

land.lhs.true358:                                 ; preds = %if.end354
  %114 = load i32* @list_pipe_job, align 4, !tbaa !3
  %call359 = call i32 @hasprocs(i32 %114) nounwind
  %tobool360 = icmp eq i32 %call359, 0
  br i1 %tobool360, label %for.end408, label %if.then361

if.then361:                                       ; preds = %land.lhs.true358
  %115 = load i32* @list_pipe_job, align 4, !tbaa !3
  %116 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader363 = getelementptr inbounds %struct.job* %116, i32 %115, i32 0
  %117 = load i32* %gleader363, align 4, !tbaa !3
  %call364 = call i32 @killpg(i32 %117, i32 19) nounwind
  br label %for.end408

if.else366:                                       ; preds = %lor.lhs.false302
  %118 = load i32* %arraydecay298, align 4, !tbaa !3
  %call368 = call i32 @close(i32 %118) nounwind
  call fastcc void @entersubsh(i32 1)
  %119 = load i32* @list_pipe_job, align 4, !tbaa !3
  %120 = load %struct.job** @jobtab, align 4, !tbaa !5
  %procs370 = getelementptr inbounds %struct.job* %120, i32 %119, i32 4
  %121 = load %struct.process** %procs370, align 4, !tbaa !5
  %tobool371 = icmp eq %struct.process* %121, null
  br i1 %tobool371, label %if.else384, label %if.then372

if.then372:                                       ; preds = %if.else366
  %gleader374 = getelementptr inbounds %struct.job* %120, i32 %119, i32 0
  %122 = load i32* %gleader374, align 4, !tbaa !3
  store i32 %122, i32* @mypgrp, align 4, !tbaa !3
  %call375 = call i32 @setpgid(i32 0, i32 %122) nounwind
  %cmp378 = icmp eq i32 %call375, -1
  br i1 %cmp378, label %if.then380, label %if.end387

if.then380:                                       ; preds = %if.then372
  %call381 = call i32 @getpid() nounwind
  store i32 %call381, i32* @mypgrp, align 4, !tbaa !3
  %call382 = call i32 @setpgid(i32 0, i32 %call381) nounwind
  br label %if.end387

if.else384:                                       ; preds = %if.else366
  %call385 = call i32 @getpid() nounwind
  store i32 %call385, i32* @mypgrp, align 4, !tbaa !3
  %call386 = call i32 @setpgid(i32 0, i32 %call385) nounwind
  br label %if.end387

if.end387:                                        ; preds = %if.then372, %if.then380, %if.else384
  %123 = load i32* %arrayidx314, align 4, !tbaa !3
  %call389 = call i32 @close(i32 %123) nounwind
  %call390 = call i32 @getpid() nounwind
  %call391 = call i32 @kill(i32 %call390, i32 19) nounwind
  store i32 0, i32* @list_pipe, align 4, !tbaa !3
  store i32 1, i32* @list_pipe_child, align 4, !tbaa !3
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %124 = load i32* @errbrk_saved, align 4, !tbaa !3
  %tobool394 = icmp eq i32 %124, 0
  br i1 %tobool394, label %for.end408, label %if.then395

if.then395:                                       ; preds = %if.end387
  %125 = load i32* @prev_errflag, align 4, !tbaa !3
  store i32 %125, i32* @errflag, align 4, !tbaa !3
  %126 = load i32* @prev_breaks, align 4, !tbaa !3
  store i32 %126, i32* @breaks, align 4, !tbaa !3
  br label %for.end408

if.else398:                                       ; preds = %if.end266, %land.lhs.true289, %lor.lhs.false277, %lor.lhs.false285
  %tobool399 = icmp eq i32 %77, 0
  br i1 %tobool399, label %for.end408, label %land.lhs.true400

land.lhs.true400:                                 ; preds = %if.else398
  %127 = load i32* %stat232, align 4, !tbaa !3
  %and402 = and i32 %127, 2
  %tobool403 = icmp eq i32 %and402, 0
  br i1 %tobool403, label %for.end408, label %for.cond222.backedge

for.cond222.backedge:                             ; preds = %land.lhs.true400, %if.end318
  store i32 %call, i32* @thisjob, align 4
  %128 = load i32* @nowait, align 4, !tbaa !3
  %lnot224 = icmp eq i32 %128, 0
  br i1 %lnot224, label %for.body226, label %for.end408

for.end408:                                       ; preds = %if.end221, %land.lhs.true400, %if.else398, %for.cond222.backedge, %if.end354, %land.lhs.true358, %if.end387, %if.then395, %if.then361
  call void @signal_unblock(%struct.__sigset_t* sret %tmp409, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %129 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool410 = icmp eq i32 %129, 0
  br i1 %tobool410, label %if.end438, label %land.lhs.true411

land.lhs.true411:                                 ; preds = %for.end408
  %130 = load i64* @lastval, align 8, !tbaa !0
  %and412 = and i64 %130, 128
  %tobool413 = icmp ne i64 %and412, 0
  %cmp415 = icmp sgt i32 %3, -1
  %or.cond545 = and i1 %tobool413, %cmp415
  br i1 %or.cond545, label %land.lhs.true417, label %if.end438

land.lhs.true417:                                 ; preds = %land.lhs.true411
  %stat418 = getelementptr inbounds %struct.job* %42, i32 %call, i32 2
  %131 = load i32* %stat418, align 4, !tbaa !3
  %132 = and i32 %131, 72
  %133 = icmp eq i32 %132, 64
  br i1 %133, label %if.end438, label %if.then425

if.then425:                                       ; preds = %land.lhs.true417
  call void @deletejob(%struct.job* %add.ptr148, i32 0) nounwind
  %134 = load %struct.job** @jobtab, align 4, !tbaa !5
  %add.ptr426 = getelementptr inbounds %struct.job* %134, i32 %3
  %gleader427 = getelementptr inbounds %struct.job* %add.ptr426, i32 0, i32 0
  %135 = load i32* %gleader427, align 4, !tbaa !3
  %tobool428 = icmp eq i32 %135, 0
  br i1 %tobool428, label %if.end438, label %if.then429

if.then429:                                       ; preds = %if.then425
  %136 = load i64* @lastval, align 8, !tbaa !0
  %and430 = and i64 %136, -129
  %and430.off = add i64 %and430, 2147483648
  %137 = icmp ult i64 %and430.off, 4294967296
  br i1 %137, label %cont434, label %ioc_bb433

ioc_bb433:                                        ; preds = %if.then429
  call void @__ioc_report_conversion(i32 1488, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %and430, i8 1) nounwind
  br label %cont434

cont434:                                          ; preds = %ioc_bb433, %if.then429
  %conv435 = trunc i64 %and430 to i32
  %call436 = call i32 @killjb(%struct.job* %add.ptr426, i32 %conv435) nounwind
  br label %if.end438

if.end438:                                        ; preds = %land.lhs.true417, %land.lhs.true411, %if.then425, %for.end408, %cont434
  %jn.0 = phi %struct.job* [ %add.ptr426, %cont434 ], [ %add.ptr426, %if.then425 ], [ %add.ptr148, %land.lhs.true411 ], [ %add.ptr148, %for.end408 ], [ %add.ptr148, %land.lhs.true417 ]
  %138 = load i32* @list_pipe_child, align 4, !tbaa !3
  %tobool439 = icmp eq i32 %138, 0
  br i1 %tobool439, label %lor.lhs.false440, label %if.then452

lor.lhs.false440:                                 ; preds = %if.end438
  %stat441 = getelementptr inbounds %struct.job* %jn.0, i32 0, i32 2
  %139 = load i32* %stat441, align 4, !tbaa !3
  %and442 = and i32 %139, 8
  %tobool443 = icmp eq i32 %and442, 0
  br i1 %tobool443, label %if.end453, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %lor.lhs.false440
  %140 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool445 = icmp eq i32 %140, 0
  br i1 %tobool445, label %lor.lhs.false446, label %if.then452

lor.lhs.false446:                                 ; preds = %land.lhs.true444
  %141 = load i32* @pline_level, align 4, !tbaa !3
  %tobool447 = icmp eq i32 %141, 0
  br i1 %tobool447, label %if.end453, label %land.lhs.true448

land.lhs.true448:                                 ; preds = %lor.lhs.false446
  %and450 = and i32 %139, 256
  %tobool451 = icmp eq i32 %and450, 0
  br i1 %tobool451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %land.lhs.true448, %land.lhs.true444, %if.end438
  call void @deletejob(%struct.job* %jn.0, i32 0) nounwind
  br label %if.end453

if.end453:                                        ; preds = %land.lhs.true448, %lor.lhs.false446, %lor.lhs.false440, %if.then452
  store i32 %3, i32* @thisjob, align 4, !tbaa !3
  br label %if.end454

if.end454:                                        ; preds = %if.else143, %if.end453
  %and455 = and i32 %slflags.0, 8
  %tobool456 = icmp eq i32 %and455, 0
  %142 = load i32* @errflag, align 4, !tbaa !3
  %tobool458 = icmp ne i32 %142, 0
  %or.cond480 = or i1 %tobool456, %tobool458
  br i1 %or.cond480, label %if.end465, label %if.then459

if.then459:                                       ; preds = %if.end454
  %143 = load i64* @lastval, align 8, !tbaa !0
  %lnot461 = icmp eq i64 %143, 0
  %conv463 = zext i1 %lnot461 to i64
  store i64 %conv463, i64* @lastval, align 8, !tbaa !0
  br label %if.end465

if.end465:                                        ; preds = %if.end454, %if.then459
  %144 = load i32* @pline_level, align 4, !tbaa !3
  %tobool466 = icmp eq i32 %144, 0
  br i1 %tobool466, label %if.then467, label %if.end468

if.then467:                                       ; preds = %if.end465
  store i32 %0, i32* @simple_pline, align 4, !tbaa !3
  br label %if.end468

if.end468:                                        ; preds = %if.end465, %if.then467
  %145 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %145, 2147483648
  %146 = icmp ult i64 %.off, 4294967296
  br i1 %146, label %cont472, label %ioc_bb471

ioc_bb471:                                        ; preds = %if.end468
  call void @__ioc_report_conversion(i32 1499, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %145, i8 1) nounwind
  br label %cont472

cont472:                                          ; preds = %ioc_bb471, %if.end468
  %conv473 = trunc i64 %145 to i32
  br label %return

return:                                           ; preds = %cont472, %if.end139, %if.then33, %if.then
  %retval.0 = phi i32 [ %and16.lobit, %if.then ], [ 1, %if.then33 ], [ 0, %if.end139 ], [ %conv473, %cont472 ]
  ret i32 %retval.0
}

declare void @cmdpush(i32)

declare i32 @getpid() nounwind

declare void @_exit(i32) noreturn

declare void @exit(i32) noreturn nounwind

define void @untokenize(i8* nocapture %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end63, label %while.cond

while.cond:                                       ; preds = %entry, %cont.while.cond_crit_edge
  %1 = phi i8 [ %.pre, %cont.while.cond_crit_edge ], [ %0, %entry ]
  %s.addr.0 = phi i8* [ %incdec.ptr, %cont.while.cond_crit_edge ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %conv = sext i8 %1 to i32
  %tobool1 = icmp eq i8 %1, 0
  br i1 %tobool1, label %if.end63, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = sext i8 %1 to i64
  %3 = icmp sgt i8 %1, -1
  br i1 %3, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.body
  tail call void @__ioc_report_conversion(i32 1622, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.body
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !7
  %and = and i16 %4, 16
  %tobool8 = icmp eq i16 %and, 0
  br i1 %tobool8, label %cont.while.cond_crit_edge, label %ioc_bb10

cont.while.cond_crit_edge:                        ; preds = %cont
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %while.cond

ioc_bb10:                                         ; preds = %cont
  tail call void @__ioc_report_conversion(i32 1624, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp = icmp eq i8 %1, -99
  br i1 %cmp, label %while.cond20.outer, label %ioc_bb14

ioc_bb14:                                         ; preds = %ioc_bb10
  tail call void @__ioc_report_conversion(i32 1625, i32 41, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 132, i8 1) nounwind
  %5 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 -124)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %ioc_bb14
  tail call void @__ioc_report_sub_overflow(i32 1625, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %2, i64 -124, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %ioc_bb14, %ioc_bb16
  %arrayidx18 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %6
  %8 = load i8* %arrayidx18, align 1, !tbaa !1
  store i8 %8, i8* %s.addr.0, align 1, !tbaa !1
  br label %while.cond20.outer

while.cond20.outer:                               ; preds = %ioc_bb10, %cont17, %while.cond20.outer.backedge
  %s.addr.1.ph = phi i8* [ %incdec.ptr21, %while.cond20.outer.backedge ], [ %incdec.ptr, %cont17 ], [ %incdec.ptr, %ioc_bb10 ]
  %p.0.ph77 = phi i8* [ %p.0.ph77.be, %while.cond20.outer.backedge ], [ %incdec.ptr, %cont17 ], [ %s.addr.0, %ioc_bb10 ]
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.outer, %ioc_bb40
  %s.addr.1 = phi i8* [ %incdec.ptr21, %ioc_bb40 ], [ %s.addr.1.ph, %while.cond20.outer ]
  %incdec.ptr21 = getelementptr inbounds i8* %s.addr.1, i32 1
  %9 = load i8* %s.addr.1, align 1, !tbaa !1
  %conv22 = sext i8 %9 to i32
  %tobool23 = icmp eq i8 %9, 0
  br i1 %tobool23, label %cont60, label %while.body24

while.body24:                                     ; preds = %while.cond20
  %10 = sext i8 %9 to i64
  %11 = icmp sgt i8 %9, -1
  br i1 %11, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %while.body24
  tail call void @__ioc_report_conversion(i32 1627, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont28

cont28:                                           ; preds = %ioc_bb27, %while.body24
  %idxprom30 = zext i8 %9 to i32
  %arrayidx31 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom30
  %12 = load i16* %arrayidx31, align 2, !tbaa !7
  %and37 = and i16 %12, 16
  %tobool38 = icmp eq i16 %and37, 0
  br i1 %tobool38, label %while.cond20.outer.backedge, label %ioc_bb40

ioc_bb40:                                         ; preds = %cont28
  tail call void @__ioc_report_conversion(i32 1628, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp42 = icmp eq i8 %9, -99
  br i1 %cmp42, label %while.cond20, label %ioc_bb45

ioc_bb45:                                         ; preds = %ioc_bb40
  tail call void @__ioc_report_conversion(i32 1629, i32 45, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 132, i8 1) nounwind
  %13 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv22, i32 -124)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb47, label %cont48

ioc_bb47:                                         ; preds = %ioc_bb45
  tail call void @__ioc_report_sub_overflow(i32 1629, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %10, i64 -124, i8 13) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb45, %ioc_bb47
  %arrayidx49 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %14
  %16 = load i8* %arrayidx49, align 1, !tbaa !1
  br label %while.cond20.outer.backedge

while.cond20.outer.backedge:                      ; preds = %cont28, %cont48
  %storemerge = phi i8 [ %16, %cont48 ], [ %9, %cont28 ]
  %p.0.ph77.be = getelementptr inbounds i8* %p.0.ph77, i32 1
  store i8 %storemerge, i8* %p.0.ph77, align 1
  br label %while.cond20.outer

cont60:                                           ; preds = %while.cond20
  store i8 0, i8* %p.0.ph77, align 1, !tbaa !1
  br label %if.end63

if.end63:                                         ; preds = %while.cond, %entry, %cont60
  ret void
}

define void @quote_tokenized_output(i8* %str, %struct._IO_FILE* nocapture %file) nounwind {
entry:
  %0 = load i8* %str, align 1, !tbaa !1
  %tobool53 = icmp eq i8 %0, 0
  br i1 %tobool53, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8 [ %13, %for.inc ], [ %0, %entry ]
  %s.054 = phi i8* [ %incdec.ptr39, %for.inc ], [ %str, %entry ]
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 -125, label %sw.bb
    i32 -99, label %for.inc
    i32 92, label %sw.bb16
    i32 60, label %sw.bb16
    i32 62, label %sw.bb16
    i32 40, label %sw.bb16
    i32 124, label %sw.bb16
    i32 41, label %sw.bb16
    i32 94, label %sw.bb16
    i32 35, label %sw.bb16
    i32 126, label %sw.bb16
    i32 91, label %sw.bb16
    i32 93, label %sw.bb16
    i32 42, label %sw.bb16
    i32 63, label %sw.bb16
    i32 36, label %sw.bb16
    i32 61, label %sw.bb18
  ]

sw.bb:                                            ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8* %s.054, i32 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv1 = sext i8 %2 to i32
  %xor = xor i32 %conv1, 32
  %call = tail call i32 @_IO_putc(i32 %xor, %struct._IO_FILE* %file) nounwind
  br label %for.inc

sw.bb16:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %call17 = tail call i32 @_IO_putc(i32 92, %struct._IO_FILE* %file) nounwind
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body
  %cmp = icmp eq i8* %s.054, %str
  br i1 %cmp, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb18
  %call20 = tail call i32 @_IO_putc(i32 92, %struct._IO_FILE* %file) nounwind
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %3 = icmp sgt i8 %1, -1
  br i1 %3, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %sw.default
  %4 = sext i8 %1 to i64
  tail call void @__ioc_report_conversion(i32 1714, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %sw.default
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %5 = load i16* %arrayidx, align 2, !tbaa !7
  %and = and i16 %5, 16
  %tobool26 = icmp eq i16 %and, 0
  br i1 %tobool26, label %sw.epilog, label %if.then27

if.then27:                                        ; preds = %cont
  %6 = load i8* %s.054, align 1, !tbaa !1
  %conv28 = sext i8 %6 to i32
  tail call void @__ioc_report_conversion(i32 1715, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 132, i8 1) nounwind
  %7 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv28, i32 -124)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb31, label %cont32

ioc_bb31:                                         ; preds = %if.then27
  %10 = sext i8 %6 to i64
  tail call void @__ioc_report_sub_overflow(i32 1715, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %10, i64 -124, i8 13) nounwind
  br label %cont32

cont32:                                           ; preds = %if.then27, %ioc_bb31
  %arrayidx33 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %8
  %11 = load i8* %arrayidx33, align 1, !tbaa !1
  %conv34 = sext i8 %11 to i32
  %call35 = tail call i32 @_IO_putc(i32 %conv34, %struct._IO_FILE* %file) nounwind
  br label %for.inc

sw.epilog:                                        ; preds = %cont, %sw.bb18, %if.then, %sw.bb16
  %12 = load i8* %s.054, align 1, !tbaa !1
  %conv37 = sext i8 %12 to i32
  %call38 = tail call i32 @_IO_putc(i32 %conv37, %struct._IO_FILE* %file) nounwind
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.epilog, %cont32, %sw.bb
  %s.1 = phi i8* [ %s.054, %cont32 ], [ %s.054, %sw.epilog ], [ %s.054, %for.body ], [ %incdec.ptr, %sw.bb ]
  %incdec.ptr39 = getelementptr inbounds i8* %s.1, i32 1
  %13 = load i8* %incdec.ptr39, align 1, !tbaa !1
  %tobool = icmp eq i8 %13, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

define void @setunderscore(i8* %str) nounwind {
entry:
  %tobool = icmp eq i8* %str, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i8* %str, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @strlen(i8* %str) nounwind readonly
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %if.then
  %4 = zext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 2127, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind
  br label %cont3

cont3:                                            ; preds = %if.then, %ioc_bb2
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont3
  %6 = zext i32 %2 to i64
  tail call void @__ioc_report_conversion(i32 2127, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %6, i8 0) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont3
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 31)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  %10 = sext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 2128, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %10, i64 31, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  %and = and i32 %8, -32
  %11 = load i32* @underscorelen, align 4, !tbaa !3
  %cmp = icmp sgt i32 %and, %11
  br i1 %cmp, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont7
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %11, i32 %and)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %lor.lhs.false
  %15 = sext i32 %and to i64
  %16 = sext i32 %11 to i64
  tail call void @__ioc_report_sub_overflow(i32 2129, i32 45, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %lor.lhs.false, %ioc_bb9
  %cmp11 = icmp sgt i32 %13, 64
  br i1 %cmp11, label %cont10.if.then13_crit_edge, label %cont10.if.end_crit_edge

cont10.if.then13_crit_edge:                       ; preds = %cont10
  %.pre34 = load i32* @underscorelen, align 4, !tbaa !3
  br label %if.then13

cont10.if.end_crit_edge:                          ; preds = %cont10
  %.pre35 = load i8** @zunderscore, align 4, !tbaa !5
  br label %if.end

if.then13:                                        ; preds = %cont10.if.then13_crit_edge, %cont7
  %17 = phi i32 [ %.pre34, %cont10.if.then13_crit_edge ], [ %11, %cont7 ]
  %18 = load i8** @zunderscore, align 4, !tbaa !5
  tail call void @zfree(i8* %18, i32 %17) nounwind
  store i32 %and, i32* @underscorelen, align 4, !tbaa !3
  %19 = icmp sgt i32 %and, -1
  br i1 %19, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %if.then13
  %20 = sext i32 %and to i64
  tail call void @__ioc_report_conversion(i32 2131, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %if.then13
  %call16 = tail call i8* @zalloc(i32 %and) nounwind
  store i8* %call16, i8** @zunderscore, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cont10.if.end_crit_edge, %cont15
  %21 = phi i8* [ %.pre35, %cont10.if.end_crit_edge ], [ %call16, %cont15 ]
  %call17 = tail call i8* @strcpy(i8* %21, i8* %str) nounwind
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load i32* @underscorelen, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %22, 128
  %23 = load i8** @zunderscore, align 4, !tbaa !5
  br i1 %cmp18, label %if.then20, label %cont26

if.then20:                                        ; preds = %if.else
  tail call void @zfree(i8* %23, i32 %22) nounwind
  store i32 32, i32* @underscorelen, align 4, !tbaa !3
  %call23 = tail call i8* @zalloc(i32 32) nounwind
  store i8* %call23, i8** @zunderscore, align 4, !tbaa !5
  br label %cont26

cont26:                                           ; preds = %if.else, %if.then20
  %24 = phi i8* [ %call23, %if.then20 ], [ %23, %if.else ]
  store i8 0, i8* %24, align 1, !tbaa !1
  br label %if.end27

if.end27:                                         ; preds = %cont26, %if.end
  %storemerge = phi i32 [ 1, %cont26 ], [ %2, %if.end ]
  store i32 %storemerge, i32* @underscoreused, align 4
  ret void
}

declare void @zfree(i8*, i32)

define void @execsubst(%union.linkroot* %strs) nounwind {
entry:
  %tobool = icmp eq %union.linkroot* %strs, null
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @esprefork, align 4, !tbaa !3
  tail call void @prefork(%union.linkroot* %strs, i32 %0) nounwind
  %1 = load i32* @esglob, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @globlist(%union.linkroot* %strs, i32 0) nounwind
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry, %if.then2
  ret void
}

declare void @prefork(%union.linkroot*, i32)

declare void @globlist(%union.linkroot*, i32)

define void @closem(i32 %how) nounwind {
entry:
  %0 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14 = icmp slt i32 %0, 10
  br i1 %cmp14, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp3 = icmp eq i32 %how, 0
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %i.015 = phi i32 [ 10, %for.body.lr.ph ], [ %4, %for.cond.backedge ]
  %1 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i8* %1, i32 %i.015
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %2, 0
  br i1 %cmp1, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %conv = zext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv, %how
  %or.cond = or i1 %cmp3, %cmp7
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @zclose(i32 %i.015) nounwind
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb
  %6 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %for.end, label %for.body

ioc_bb:                                           ; preds = %for.inc
  %7 = sext i32 %i.015 to i64
  tail call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  ret void
}

declare i32 @zclose(i32)

define i8* @gethere(i8** nocapture %strp, i32 %typ) nounwind {
entry:
  %0 = load i8** %strp, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cont, %entry
  %s.0 = phi i8* [ %0, %entry ], [ %incdec.ptr, %cont ]
  %1 = load i8* %s.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %for.body
  %3 = sext i8 %1 to i64
  tail call void @__ioc_report_conversion(i32 3440, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %for.body
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !7
  %and = and i16 %4, 16384
  %tobool5 = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.0, i32 1
  br i1 %tobool5, label %for.cond, label %for.end

for.end:                                          ; preds = %cont, %for.cond
  %qt.0 = phi i32 [ 0, %for.cond ], [ 1, %cont ]
  %call = tail call i8* @quotesubst(i8* %0) nounwind
  tail call void @untokenize(i8* %call)
  %cmp = icmp eq i32 %typ, 11
  br i1 %cmp, label %while.cond, label %if.end12

while.cond:                                       ; preds = %for.end, %while.cond
  %str.0 = phi i8* [ %incdec.ptr11, %while.cond ], [ %call, %for.end ]
  %5 = load i8* %str.0, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %5, 9
  %incdec.ptr11 = getelementptr inbounds i8* %str.0, i32 1
  br i1 %cmp9, label %while.cond, label %if.end12

if.end12:                                         ; preds = %while.cond, %for.end
  %strip.0 = phi i1 [ true, %for.end ], [ false, %while.cond ]
  %str.1 = phi i8* [ %call, %for.end ], [ %str.0, %while.cond ]
  store i8* %str.1, i8** %strp, align 4, !tbaa !5
  %call15 = tail call i8* @zalloc(i32 256) nounwind
  br label %for.cond16

for.cond16:                                       ; preds = %cont72, %if.end12
  %bsiz.0 = phi i32 [ 256, %if.end12 ], [ %bsiz.2, %cont72 ]
  %bptr.0 = phi i8* [ %call15, %if.end12 ], [ %incdec.ptr73, %cont72 ]
  %buf.0 = phi i8* [ %call15, %if.end12 ], [ %buf.2, %cont72 ]
  br label %while.cond17

while.cond17:                                     ; preds = %cont21, %for.cond16
  %6 = load i32 ()** @hgetc, align 4, !tbaa !5
  %call18 = tail call i32 %6() nounwind
  %call18.off = add i32 %call18, 128
  %7 = icmp ult i32 %call18.off, 256
  br i1 %7, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %while.cond17
  %8 = sext i32 %call18 to i64
  tail call void @__ioc_report_conversion(i32 3455, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %while.cond17
  %sext.mask = and i32 %call18, 255
  %cmp24 = icmp ne i32 %sext.mask, 9
  %or.cond = or i1 %cmp24, %strip.0
  br i1 %or.cond, label %for.cond29, label %while.cond17

for.cond29:                                       ; preds = %if.end53, %ioc_bb58, %cont21
  %bsiz.1 = phi i32 [ %bsiz.0, %cont21 ], [ %bsiz.2, %ioc_bb58 ], [ %bsiz.2, %if.end53 ]
  %t.0 = phi i8* [ %bptr.0, %cont21 ], [ %t.1, %ioc_bb58 ], [ %t.1, %if.end53 ]
  %bptr.1 = phi i8* [ %bptr.0, %cont21 ], [ %incdec.ptr54, %ioc_bb58 ], [ %incdec.ptr54, %if.end53 ]
  %c.0.in = phi i32 [ %call18, %cont21 ], [ %call55, %ioc_bb58 ], [ %call55, %if.end53 ]
  %buf.1 = phi i8* [ %buf.0, %cont21 ], [ %buf.2, %ioc_bb58 ], [ %buf.2, %if.end53 ]
  %c.0 = trunc i32 %c.0.in to i8
  %add.ptr = getelementptr inbounds i8* %buf.1, i32 %bsiz.1
  %cmp30 = icmp eq i8* %bptr.1, %add.ptr
  br i1 %cmp30, label %if.then32, label %if.end47

if.then32:                                        ; preds = %for.cond29
  %9 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %bsiz.1, i32 2)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  %12 = sext i32 %bsiz.1 to i64
  br i1 %11, label %ioc_bb33, label %cont34

ioc_bb33:                                         ; preds = %if.then32
  tail call void @__ioc_report_mul_overflow(i32 3459, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 2, i64 %12, i8 13) nounwind
  br label %cont34

cont34:                                           ; preds = %if.then32, %ioc_bb33
  %13 = icmp sgt i32 %10, -1
  br i1 %13, label %cont37, label %ioc_bb36

ioc_bb36:                                         ; preds = %cont34
  %14 = sext i32 %10 to i64
  tail call void @__ioc_report_conversion(i32 3459, i32 37, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont37

cont37:                                           ; preds = %ioc_bb36, %cont34
  %call38 = tail call i8* @realloc(i8* %buf.1, i32 %10) nounwind
  %tobool39 = icmp eq i8* %call38, null
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %cont37
  tail call void @zfree(i8* %buf.1, i32 %bsiz.1) nounwind
  br label %return

if.end41:                                         ; preds = %cont37
  %add.ptr42 = getelementptr inbounds i8* %call38, i32 %bsiz.1
  %sub.ptr.lhs.cast = ptrtoint i8* %bptr.1 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %t.0 to i32
  %sub.ptr.sub118 = add i32 %sub.ptr.rhs.cast, %bsiz.1
  %add.ptr42.sum = sub i32 %sub.ptr.sub118, %sub.ptr.lhs.cast
  %add.ptr43 = getelementptr inbounds i8* %call38, i32 %add.ptr42.sum
  br i1 %11, label %ioc_bb45, label %if.end47

ioc_bb45:                                         ; preds = %if.end41
  tail call void @__ioc_report_mul_overflow(i32 3468, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %12, i64 2, i8 13) nounwind
  br label %if.end47

if.end47:                                         ; preds = %ioc_bb45, %if.end41, %for.cond29
  %bsiz.2 = phi i32 [ %bsiz.1, %for.cond29 ], [ %10, %if.end41 ], [ %10, %ioc_bb45 ]
  %t.1 = phi i8* [ %t.0, %for.cond29 ], [ %add.ptr43, %if.end41 ], [ %add.ptr43, %ioc_bb45 ]
  %bptr.2 = phi i8* [ %bptr.1, %for.cond29 ], [ %add.ptr42, %if.end41 ], [ %add.ptr42, %ioc_bb45 ]
  %buf.2 = phi i8* [ %buf.1, %for.cond29 ], [ %call38, %if.end41 ], [ %call38, %ioc_bb45 ]
  %15 = load i32* @lexstop, align 4, !tbaa !3
  %tobool48 = icmp ne i32 %15, 0
  %cmp50 = icmp eq i8 %c.0, 10
  %or.cond120 = or i1 %tobool48, %cmp50
  br i1 %or.cond120, label %cont63, label %if.end53

if.end53:                                         ; preds = %if.end47
  %incdec.ptr54 = getelementptr inbounds i8* %bptr.2, i32 1
  store i8 %c.0, i8* %bptr.2, align 1, !tbaa !1
  %16 = load i32 ()** @hgetc, align 4, !tbaa !5
  %call55 = tail call i32 %16() nounwind
  %call55.off = add i32 %call55, 128
  %17 = icmp ult i32 %call55.off, 256
  br i1 %17, label %for.cond29, label %ioc_bb58

ioc_bb58:                                         ; preds = %if.end53
  %18 = sext i32 %call55 to i64
  tail call void @__ioc_report_conversion(i32 3473, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %for.cond29

cont63:                                           ; preds = %if.end47
  store i8 0, i8* %bptr.2, align 1, !tbaa !1
  %call64 = tail call i32 @strcmp(i8* %t.1, i8* %str.1) nounwind
  %tobool65 = icmp eq i32 %call64, 0
  br i1 %tobool65, label %cont76, label %if.end67

if.end67:                                         ; preds = %cont63
  %19 = load i32* @lexstop, align 4, !tbaa !3
  %tobool68 = icmp eq i32 %19, 0
  br i1 %tobool68, label %cont72, label %cont76

cont72:                                           ; preds = %if.end67
  %incdec.ptr73 = getelementptr inbounds i8* %bptr.2, i32 1
  store i8 10, i8* %bptr.2, align 1, !tbaa !1
  br label %for.cond16

cont76:                                           ; preds = %cont63, %if.end67
  %t.2 = phi i8* [ %t.1, %cont63 ], [ %bptr.2, %if.end67 ]
  store i8 0, i8* %t.2, align 1, !tbaa !1
  %tobool77 = icmp eq i32 %qt.0, 0
  br i1 %tobool77, label %if.then78, label %if.end83

if.then78:                                        ; preds = %cont76
  %20 = load i32* @errflag, align 4, !tbaa !3
  %call79 = tail call i32 @parsestr(i8* %buf.2) nounwind
  %21 = load i32* @errflag, align 4, !tbaa !3
  %tobool80 = icmp eq i32 %21, 0
  br i1 %tobool80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.then78
  store i32 %20, i32* @errflag, align 4, !tbaa !3
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %cont76, %if.then81
  %call84 = tail call i8* @dupstring(i8* %buf.2) nounwind
  tail call void @zfree(i8* %buf.2, i32 %bsiz.2) nounwind
  br label %return

return:                                           ; preds = %if.end83, %if.then40
  %retval.0 = phi i8* [ %call84, %if.end83 ], [ null, %if.then40 ]
  ret i8* %retval.0
}

declare i8* @quotesubst(i8*)

declare noalias i8* @realloc(i8* nocapture, i32) nounwind

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @parsestr(i8*)

define %union.linkroot* @getoutput(i8* %cmd, i32 %qt) nounwind {
entry:
  %pipes = alloca [2 x i32], align 4
  %s = alloca i8*, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp26 = alloca %struct.__sigset_t, align 4
  %tmp42 = alloca %struct.__sigset_t, align 4
  %call = call %struct.eprog* @parse_string(i8* %cmd, i32 0)
  %tobool = icmp eq %struct.eprog* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @simple_redir_name(%struct.eprog* %call, i32 9)
  store i8* %call1, i8** %s, align 4, !tbaa !5
  %tobool2 = icmp eq i8* %call1, null
  br i1 %tobool2, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @singsub(i8** %s) nounwind
  %0 = load i32* @errflag, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %0, 0
  br i1 %tobool4, label %if.end6, label %return

if.end6:                                          ; preds = %if.then3
  %1 = load i8** %s, align 4, !tbaa !5
  call void @untokenize(i8* %1)
  %2 = load i8** %s, align 4, !tbaa !5
  %call7 = call i8* @unmeta(i8* %2) nounwind
  %call8 = call i32 (i8*, i32, ...)* @open64(i8* %call7, i32 256) nounwind
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32* @__errno_location() nounwind readnone
  %3 = load i32* %call10, align 4, !tbaa !3
  %4 = load i8** %s, align 4, !tbaa !5
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %3, i8* %4) nounwind
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call %union.linkroot* @readoutput(i32 %call8, i32 %qt)
  br label %return

if.end13:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 0
  %call.i = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %call1.i = call i32* @__errno_location() nounwind readnone
  %5 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %5) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i32 0, i32* @cmdoutpid, align 4, !tbaa !3
  br label %return

if.end17:                                         ; preds = %if.end13
  %6 = load i32* %arraydecay, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %6) nounwind
  store i32 %call2.i, i32* %arraydecay, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %7 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %7) nounwind
  store i32 %call5.i, i32* %arrayidx4.i, align 4, !tbaa !3
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  store i32 0, i32* @cmdoutval, align 4, !tbaa !3
  %call18 = call fastcc i32 @zfork(%struct.timeval* null)
  store i32 %call18, i32* @cmdoutpid, align 4, !tbaa !3
  switch i32 %call18, label %if.then28 [
    i32 -1, label %if.then22
    i32 0, label %if.end41
  ]

if.then22:                                        ; preds = %if.end17
  %8 = load i32* %arraydecay, align 4, !tbaa !3
  %call23 = call i32 @zclose(i32 %8) nounwind
  %9 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call25 = call i32 @zclose(i32 %9) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i32 0, i32* @cmdoutpid, align 4, !tbaa !3
  call void @signal_unblock(%struct.__sigset_t* sret %tmp26, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %return

if.then28:                                        ; preds = %if.end17
  %10 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call32 = call i32 @zclose(i32 %10) nounwind
  %11 = load i32* %arraydecay, align 4, !tbaa !3
  %call34 = call %union.linkroot* @readoutput(i32 %11, i32 %qt)
  %12 = load i32* %arraydecay, align 4, !tbaa !3
  %13 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8* %13, i32 %12
  store i8 0, i8* %arrayidx38, align 1, !tbaa !1
  %call39 = call i32 @waitforpid(i32 %call18, i32 0) nounwind
  %14 = load i32* @cmdoutval, align 4, !tbaa !3
  %conv = sext i32 %14 to i64
  store i64 %conv, i64* @lastval, align 8, !tbaa !0
  br label %return

if.end41:                                         ; preds = %if.end17
  call void @signal_unblock(%struct.__sigset_t* sret %tmp42, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %15 = load i32* %arraydecay, align 4, !tbaa !3
  %call44 = call i32 @zclose(i32 %15) nounwind
  %16 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call46 = call i32 @redup(i32 %16, i32 1) nounwind
  call fastcc void @entersubsh(i32 34)
  call void @cmdpush(i32 24) nounwind
  call void @execode(%struct.eprog* %call, i32 0, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0))
  call void @cmdpop() nounwind
  %call47 = call i32 @close(i32 1) nounwind
  %17 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %17, 2147483648
  %18 = icmp ult i64 %.off, 4294967296
  br i1 %18, label %cont49, label %ioc_bb48

ioc_bb48:                                         ; preds = %if.end41
  call void @__ioc_report_conversion(i32 3599, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont49

cont49:                                           ; preds = %ioc_bb48, %if.end41
  %conv50 = trunc i64 %17 to i32
  call void @_exit(i32 %conv50) noreturn nounwind
  unreachable

return:                                           ; preds = %if.then3, %entry, %if.then28, %if.then22, %if.then16, %if.end11, %if.then9
  %retval.0 = phi %union.linkroot* [ null, %if.then9 ], [ %call12, %if.end11 ], [ null, %if.then16 ], [ null, %if.then22 ], [ %call34, %if.then28 ], [ null, %entry ], [ null, %if.then3 ]
  ret %union.linkroot* %retval.0
}

define internal fastcc i8* @simple_redir_name(%struct.eprog* %prog, i32 %redir_type) nounwind {
entry:
  %prog1 = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 5
  %0 = load i32** %prog1, align 4, !tbaa !5
  %cmp = icmp eq %struct.eprog* %prog, @dummy_eprog
  br i1 %cmp, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32* %0, align 4, !tbaa !3
  %2 = and i32 %1, 543
  %3 = icmp eq i32 %2, 513
  br i1 %3, label %land.lhs.true22, label %return

land.lhs.true22:                                  ; preds = %land.lhs.true
  %arrayidx23 = getelementptr inbounds i32* %0, i32 1
  %4 = load i32* %arrayidx23, align 4, !tbaa !3
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %land.lhs.true57, label %return

land.lhs.true57:                                  ; preds = %land.lhs.true22
  %arrayidx58 = getelementptr inbounds i32* %0, i32 2
  %7 = load i32* %arrayidx58, align 4, !tbaa !3
  %8 = and i32 %7, 63
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %land.lhs.true83, label %return

land.lhs.true83:                                  ; preds = %land.lhs.true57
  %arrayidx84 = getelementptr inbounds i32* %0, i32 3
  %10 = load i32* %arrayidx84, align 4, !tbaa !3
  %and94 = and i32 %10, 31
  %cmp97 = icmp eq i32 %and94, 4
  br i1 %cmp97, label %cont107, label %return

cont107:                                          ; preds = %land.lhs.true83
  %shr102 = lshr i32 %10, 5
  %and105 = and i32 %shr102, 31
  %cmp108 = icmp eq i32 %and105, %redir_type
  %and116 = and i32 %10, 1024
  %tobool120 = icmp eq i32 %and116, 0
  %or.cond164 = and i1 %cmp108, %tobool120
  br i1 %or.cond164, label %land.lhs.true121, label %return

land.lhs.true121:                                 ; preds = %cont107
  %arrayidx122 = getelementptr inbounds i32* %0, i32 4
  %11 = load i32* %arrayidx122, align 4, !tbaa !3
  %tobool123 = icmp eq i32 %11, 0
  br i1 %tobool123, label %land.lhs.true124, label %return

land.lhs.true124:                                 ; preds = %land.lhs.true121
  %arrayidx125 = getelementptr inbounds i32* %0, i32 6
  %12 = load i32* %arrayidx125, align 4, !tbaa !3
  %and135 = and i32 %12, 31
  %cmp138 = icmp ne i32 %and135, 6
  %tobool144 = icmp ugt i32 %12, 31
  %or.cond165 = or i1 %cmp138, %tobool144
  br i1 %or.cond165, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true124
  %add.ptr = getelementptr inbounds i32* %0, i32 5
  %call = tail call i8* @ecrawstr(%struct.eprog* %prog, i32* %add.ptr, i32* null) nounwind
  %call145 = tail call i8* @dupstring(i8* %call) nounwind
  br label %return

return:                                           ; preds = %land.lhs.true, %land.lhs.true124, %land.lhs.true22, %land.lhs.true57, %land.lhs.true83, %cont107, %entry, %land.lhs.true121, %if.then
  %retval.0 = phi i8* [ %call145, %if.then ], [ null, %land.lhs.true121 ], [ null, %entry ], [ null, %land.lhs.true124 ], [ null, %cont107 ], [ null, %land.lhs.true83 ], [ null, %land.lhs.true57 ], [ null, %land.lhs.true22 ], [ null, %land.lhs.true ]
  ret i8* %retval.0
}

declare void @singsub(i8**)

declare i32 @open64(i8*, i32, ...)

declare void @zerr(i8*, ...)

define %union.linkroot* @readoutput(i32 %in, i32 %qt) nounwind {
entry:
  %call = tail call %struct._IO_FILE* @fdopen(i32 %in, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)) nounwind
  %call1 = tail call %union.linkroot* @newlinklist() nounwind
  %call2 = tail call i8* @hcalloc(i32 64) nounwind
  %call6 = tail call i32* @__errno_location() nounwind readnone
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %cont46, %entry
  %bsiz.0.ph = phi i32 [ 64, %entry ], [ %bsiz.1, %cont46 ]
  %cnt.0.ph = phi i32 [ 0, %entry ], [ %9, %cont46 ]
  %ptr.0.ph = phi i8* [ %call2, %entry ], [ %incdec.ptr48, %cont46 ]
  %buf.0.ph = phi i8* [ %call2, %entry ], [ %buf.1, %cont46 ]
  %call3125 = tail call i32 @fgetc(%struct._IO_FILE* %call) nounwind
  %cond126 = icmp eq i32 %call3125, -1
  br i1 %cond126, label %lor.rhs, label %if.end

lor.rhs:                                          ; preds = %while.cond.outer, %if.then
  %0 = load i32* %call6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %0, 4
  br i1 %cmp7, label %if.then, label %while.end

if.then:                                          ; preds = %lor.rhs
  store i32 0, i32* %call6, align 4, !tbaa !3
  tail call void @clearerr(%struct._IO_FILE* %call) nounwind
  %call3 = tail call i32 @fgetc(%struct._IO_FILE* %call) nounwind
  %cond = icmp eq i32 %call3, -1
  br i1 %cond, label %lor.rhs, label %if.end

if.end:                                           ; preds = %if.then, %while.cond.outer
  %call3.lcssa = phi i32 [ %call3125, %while.cond.outer ], [ %call3, %if.then ]
  %1 = icmp ult i32 %call3.lcssa, 256
  br i1 %1, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %if.end
  %2 = sext i32 %call3.lcssa to i64
  tail call void @__ioc_report_conversion(i32 3625, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %if.end
  %idxprom = and i32 %call3.lcssa, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !7
  %and = and i16 %3, 4096
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.end24, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont13
  tail call void @__ioc_report_conversion(i32 3626, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr = getelementptr inbounds i8* %ptr.0.ph, i32 1
  store i8 -125, i8* %ptr.0.ph, align 1, !tbaa !1
  %xor = xor i32 %call3.lcssa, 32
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cnt.0.ph, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb22, label %if.end24

ioc_bb22:                                         ; preds = %ioc_bb20
  %7 = sext i32 %cnt.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 3628, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %if.end24

if.end24:                                         ; preds = %ioc_bb22, %ioc_bb20, %cont13
  %c.0 = phi i32 [ %call3.lcssa, %cont13 ], [ %xor, %ioc_bb20 ], [ %xor, %ioc_bb22 ]
  %cnt.1 = phi i32 [ %cnt.0.ph, %cont13 ], [ %5, %ioc_bb20 ], [ %5, %ioc_bb22 ]
  %ptr.1 = phi i8* [ %ptr.0.ph, %cont13 ], [ %incdec.ptr, %ioc_bb20 ], [ %incdec.ptr, %ioc_bb22 ]
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cnt.1, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %if.end24
  %11 = sext i32 %cnt.1 to i64
  tail call void @__ioc_report_add_overflow(i32 3630, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  br label %cont26

cont26:                                           ; preds = %if.end24, %ioc_bb25
  %cmp27 = icmp slt i32 %9, %bsiz.0.ph
  br i1 %cmp27, label %if.end42, label %if.then29

if.then29:                                        ; preds = %cont26
  %12 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %bsiz.0.ph, i32 2)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb30, label %cont31

ioc_bb30:                                         ; preds = %if.then29
  %15 = sext i32 %bsiz.0.ph to i64
  tail call void @__ioc_report_mul_overflow(i32 3631, i32 41, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %15, i64 2, i8 13) nounwind
  br label %cont31

cont31:                                           ; preds = %if.then29, %ioc_bb30
  %16 = icmp sgt i32 %13, -1
  br i1 %16, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %cont31
  %17 = sext i32 %13 to i64
  tail call void @__ioc_report_conversion(i32 3631, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %cont31
  %call35 = tail call i8* @hcalloc(i32 %13) nounwind
  %18 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %9, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %cont34
  %21 = sext i32 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 3632, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %cont34, %ioc_bb36
  %22 = icmp sgt i32 %19, -1
  br i1 %22, label %cont40, label %ioc_bb39

ioc_bb39:                                         ; preds = %cont37
  %23 = sext i32 %19 to i64
  tail call void @__ioc_report_conversion(i32 3632, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont40

cont40:                                           ; preds = %ioc_bb39, %cont37
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call35, i8* %buf.0.ph, i32 %19, i32 1, i1 false)
  %add.ptr.sum = add i32 %9, -1
  %add.ptr41 = getelementptr inbounds i8* %call35, i32 %add.ptr.sum
  br label %if.end42

if.end42:                                         ; preds = %cont26, %cont40
  %bsiz.1 = phi i32 [ %13, %cont40 ], [ %bsiz.0.ph, %cont26 ]
  %ptr.2 = phi i8* [ %add.ptr41, %cont40 ], [ %ptr.1, %cont26 ]
  %buf.1 = phi i8* [ %call35, %cont40 ], [ %buf.0.ph, %cont26 ]
  %c.0.off = add i32 %c.0, 128
  %24 = icmp ult i32 %c.0.off, 256
  br i1 %24, label %cont46, label %ioc_bb45

ioc_bb45:                                         ; preds = %if.end42
  %25 = sext i32 %c.0 to i64
  tail call void @__ioc_report_conversion(i32 3635, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont46

cont46:                                           ; preds = %ioc_bb45, %if.end42
  %conv47 = trunc i32 %c.0 to i8
  %incdec.ptr48 = getelementptr inbounds i8* %ptr.2, i32 1
  store i8 %conv47, i8* %ptr.2, align 1, !tbaa !1
  br label %while.cond.outer

while.end:                                        ; preds = %lor.rhs
  %call49 = tail call i32 @fclose(%struct._IO_FILE* %call) nounwind
  %tobool51119 = icmp eq i32 %cnt.0.ph, 0
  br i1 %tobool51119, label %cont64, label %cont53

cont53:                                           ; preds = %while.end, %while.cond50.backedge
  %ptr.3121 = phi i8* [ %arrayidx54, %while.cond50.backedge ], [ %ptr.0.ph, %while.end ]
  %cnt.2120 = phi i32 [ %28, %while.cond50.backedge ], [ %cnt.0.ph, %while.end ]
  %arrayidx54 = getelementptr inbounds i8* %ptr.3121, i32 -1
  %26 = load i8* %arrayidx54, align 1, !tbaa !1
  %cmp56 = icmp eq i8 %26, 10
  br i1 %cmp56, label %while.body58, label %cont64

while.body58:                                     ; preds = %cont53
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cnt.2120, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb60, label %while.cond50.backedge

while.cond50.backedge:                            ; preds = %while.body58, %ioc_bb60
  %tobool51 = icmp eq i32 %28, 0
  br i1 %tobool51, label %cont64, label %cont53

ioc_bb60:                                         ; preds = %while.body58
  %30 = sext i32 %cnt.2120 to i64
  tail call void @__ioc_report_add_overflow(i32 3639, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %30, i64 -1, i8 13) nounwind
  br label %while.cond50.backedge

cont64:                                           ; preds = %while.cond50.backedge, %cont53, %while.end
  %tobool51.lcssa = phi i1 [ false, %while.end ], [ true, %cont53 ], [ false, %while.cond50.backedge ]
  %ptr.3.lcssa = phi i8* [ %ptr.0.ph, %while.end ], [ %ptr.3121, %cont53 ], [ %arrayidx54, %while.cond50.backedge ]
  store i8 0, i8* %ptr.3.lcssa, align 1, !tbaa !1
  %tobool65 = icmp eq i32 %qt, 0
  br i1 %tobool65, label %if.else, label %if.then66

if.then66:                                        ; preds = %cont64
  br i1 %tobool51.lcssa, label %if.end74, label %ioc_bb69

ioc_bb69:                                         ; preds = %if.then66
  tail call void @__ioc_report_conversion(i32 3643, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 157, i8 1) nounwind
  store i8 -99, i8* %ptr.3.lcssa, align 1, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8* %ptr.3.lcssa, i32 1
  store i8 0, i8* %incdec.ptr71, align 1, !tbaa !1
  br label %if.end74

if.end74:                                         ; preds = %ioc_bb69, %if.then66
  %last = getelementptr inbounds %union.linkroot* %call1, i32 0, i32 0, i32 1
  %31 = load %struct.linknode** %last, align 4, !tbaa !5
  %call75 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call1, %struct.linknode* %31, i8* %buf.0.ph) nounwind
  br label %if.end88

if.else:                                          ; preds = %cont64
  %call76 = tail call i8** @spacesplit(i8* %buf.0.ph, i32 0, i32 1, i32 0) nounwind
  %32 = load i8** %call76, align 4, !tbaa !5
  %tobool78117 = icmp eq i8* %32, null
  br i1 %tobool78117, label %if.end88, label %while.body79.lr.ph

while.body79.lr.ph:                               ; preds = %if.else
  %last84 = getelementptr inbounds %union.linkroot* %call1, i32 0, i32 0, i32 1
  br label %while.body79

while.body79:                                     ; preds = %while.body79.lr.ph, %if.end82
  %33 = phi i8* [ %32, %while.body79.lr.ph ], [ %37, %if.end82 ]
  %words.0118 = phi i8** [ %call76, %while.body79.lr.ph ], [ %incdec.ptr85, %if.end82 ]
  %34 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 61), align 1, !tbaa !1
  %tobool80 = icmp eq i8 %34, 0
  br i1 %tobool80, label %if.end82, label %if.then81

if.then81:                                        ; preds = %while.body79
  tail call void @shtokenize(i8* %33) nounwind
  %.pre = load i8** %words.0118, align 4, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %while.body79, %if.then81
  %35 = phi i8* [ %33, %while.body79 ], [ %.pre, %if.then81 ]
  %36 = load %struct.linknode** %last84, align 4, !tbaa !5
  %incdec.ptr85 = getelementptr inbounds i8** %words.0118, i32 1
  %call86 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call1, %struct.linknode* %36, i8* %35) nounwind
  %37 = load i8** %incdec.ptr85, align 4, !tbaa !5
  %tobool78 = icmp eq i8* %37, null
  br i1 %tobool78, label %if.end88, label %while.body79

if.end88:                                         ; preds = %if.else, %if.end82, %if.end74
  ret %union.linkroot* %call1
}

declare void @signal_block(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

define internal fastcc i32 @zfork(%struct.timeval* %tv) nounwind {
entry:
  %dummy_tz = alloca %struct.timezone, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp25 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @thisjob, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32* @jobtabsize, align 4, !tbaa !3
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %land.lhs.true
  %5 = sext i32 %1 to i64
  call void @__ioc_report_sub_overflow(i32 216, i32 46, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %land.lhs.true, %ioc_bb1
  %cmp3 = icmp slt i32 %0, %3
  br i1 %cmp3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %cont2
  %call = call i32 @expandjobtab() nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0)) nounwind
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %cont2, %entry
  %tobool7 = icmp eq %struct.timeval* %tv, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* %dummy_tz) nounwind
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8
  %6 = load i32* @queueing_enabled, align 4, !tbaa !3
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %if.end10
  %10 = sext i32 %6 to i64
  call void @__ioc_report_add_overflow(i32 228, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %if.end10, %ioc_bb11
  store i32 %8, i32* @queueing_enabled, align 4, !tbaa !3
  %call13 = call i32 @fork() nounwind
  %11 = load i32* @queueing_enabled, align 4, !tbaa !3
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont12
  %15 = sext i32 %11 to i64
  call void @__ioc_report_add_overflow(i32 232, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %cont12, %ioc_bb14
  store i32 %13, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool16 = icmp eq i32 %13, 0
  br i1 %tobool16, label %while.cond.preheader, label %cont29

while.cond.preheader:                             ; preds = %cont15
  %16 = load i32* @queue_front, align 4, !tbaa !3
  %17 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp1943 = icmp eq i32 %16, %17
  br i1 %cmp1943, label %cont29, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont23
  %18 = phi i32 [ %25, %cont23 ], [ %16, %while.cond.preheader ]
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb20, label %cont23

ioc_bb20:                                         ; preds = %while.body
  %22 = sext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 236, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %22, i64 1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb20, %while.body
  %rem = srem i32 %20, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %23 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %23
  %24 = load i32* %arrayidx24, align 4, !tbaa !3
  call void @zhandler(i32 %24) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp25, %struct.__sigset_t* byval align 4 %oset) nounwind
  %25 = load i32* @queue_front, align 4, !tbaa !3
  %26 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %25, %26
  br i1 %cmp19, label %cont29, label %while.body

cont29:                                           ; preds = %while.cond.preheader, %cont23, %cont15
  switch i32 %call13, label %return [
    i32 -1, label %if.then31
    i32 0, label %if.then37
  ]

if.then31:                                        ; preds = %cont29
  %call32 = call i32* @__errno_location() nounwind readnone
  %27 = load i32* %call32, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str24, i32 0, i32 0), i32 %27) nounwind
  br label %return

if.then37:                                        ; preds = %cont29
  %call38 = call i32 @setlimits(i8* null)
  br label %return

return:                                           ; preds = %if.then37, %cont29, %if.then31, %if.then
  %retval.0 = phi i32 [ -1, %if.then31 ], [ -1, %if.then ], [ %call13, %cont29 ], [ 0, %if.then37 ]
  ret i32 %retval.0
}

declare void @signal_unblock(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare i32 @waitforpid(i32, i32)

declare i32 @redup(i32, i32)

define internal fastcc void @entersubsh(i32 %flags) nounwind {
entry:
  %and = and i32 %flags, 4
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %for.body, label %if.end17

for.body:                                         ; preds = %entry, %cont.backedge
  %sig.0205 = phi i32 [ %2, %cont.backedge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [34 x i32]* @sigtrapped, i32 0, i32 %sig.0205
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %and5 = and i32 %0, 4
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %switch.early.test, label %for.inc

switch.early.test:                                ; preds = %for.body
  %sig.0.off = add i32 %sig.0205, -32
  %switch = icmp ult i32 %sig.0.off, 2
  br i1 %switch, label %for.inc, label %if.then14

if.then14:                                        ; preds = %switch.early.test
  tail call void @unsettrap(i32 %sig.0205) nounwind
  br label %for.inc

for.inc:                                          ; preds = %for.body, %switch.early.test, %if.then14
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sig.0205, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb15, label %cont.backedge

cont.backedge:                                    ; preds = %for.inc, %ioc_bb15
  %cmp = icmp slt i32 %2, 34
  br i1 %cmp, label %for.body, label %if.end17

ioc_bb15:                                         ; preds = %for.inc
  %4 = sext i32 %sig.0205 to i64
  tail call void @__ioc_report_add_overflow(i32 827, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont.backedge

if.end17:                                         ; preds = %cont.backedge, %entry
  %5 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %conv = sext i8 %5 to i32
  %tobool18 = icmp eq i8 %5, 0
  br i1 %tobool18, label %land.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17
  %and20 = and i32 %flags, 64
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true19
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 124), align 1, !tbaa !1
  %tobool23 = icmp ne i8 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.lhs.true19, %if.end17, %land.rhs
  %7 = phi i1 [ false, %land.lhs.true19 ], [ false, %if.end17 ], [ %tobool23, %land.rhs ]
  %and24 = and i32 %flags, 32
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.end29, label %if.end29.thread

if.end29.thread:                                  ; preds = %land.end
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  br label %if.then31

if.end29:                                         ; preds = %land.end
  br i1 %tobool18, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29.thread, %if.end29
  %and32 = and i32 %flags, 1
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %if.end133, label %if.then34

if.then34:                                        ; preds = %if.then31
  %call = tail call i32 @settrap(i32 2, %struct.eprog* null, i32 0) nounwind
  %call35 = tail call i32 @settrap(i32 3, %struct.eprog* null, i32 0) nounwind
  %call36 = tail call i32 @isatty(i32 0) nounwind
  %tobool37 = icmp eq i32 %call36, 0
  br i1 %tobool37, label %if.end133, label %if.then38

if.then38:                                        ; preds = %if.then34
  %call39 = tail call i32 @close(i32 0) nounwind
  %call40 = tail call i32 (i8*, i32, ...)* @open64(i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0), i32 258) nounwind
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %if.end133, label %if.then42

if.then42:                                        ; preds = %if.then38
  %call43 = tail call i32* @__errno_location() nounwind readnone
  %8 = load i32* %call43, align 4, !tbaa !3
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([25 x i8]* @.str22, i32 0, i32 0), i32 %8) nounwind
  tail call void @_exit(i32 1) noreturn nounwind
  unreachable

if.else:                                          ; preds = %if.end29
  %9 = load i32* @thisjob, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %9, -1
  br i1 %cmp49, label %if.end133, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.else
  %and52 = and i32 %flags, 2
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end133, label %if.then54

if.then54:                                        ; preds = %land.lhs.true51
  %10 = load i32* @list_pipe_job, align 4, !tbaa !3
  %11 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader = getelementptr inbounds %struct.job* %11, i32 %10, i32 0
  %12 = load i32* %gleader, align 4, !tbaa !3
  %tobool56 = icmp eq i32 %12, 0
  br i1 %tobool56, label %if.else93, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.then54
  %13 = load i32* @list_pipe, align 4, !tbaa !3
  %14 = load i32* @list_pipe_child, align 4, !tbaa !3
  %15 = or i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.else93, label %if.then60

if.then60:                                        ; preds = %land.lhs.true57
  %call63 = tail call i32 @setpgid(i32 0, i32 %12) nounwind
  %cmp66 = icmp eq i32 %call63, -1
  br i1 %cmp66, label %if.then76, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.then60
  %17 = load i32* @list_pipe_job, align 4, !tbaa !3
  %18 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader70 = getelementptr inbounds %struct.job* %18, i32 %17, i32 0
  %19 = load i32* %gleader70, align 4, !tbaa !3
  %call71 = tail call i32 @killpg(i32 %19, i32 0) nounwind
  %cmp74 = icmp eq i32 %call71, -1
  br i1 %cmp74, label %if.then76, label %if.end133

if.then76:                                        ; preds = %lor.lhs.false68, %if.then60
  %20 = load i32* @list_pipe_child, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %20, 0
  br i1 %tobool77, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then76
  %21 = load i32* @mypgrp, align 4, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then76
  %call78 = tail call i32 @getpid() nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %call78, %cond.false ]
  %22 = load i32* @thisjob, align 4, !tbaa !3
  %23 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader80 = getelementptr inbounds %struct.job* %23, i32 %22, i32 0
  store i32 %cond, i32* %gleader80, align 4, !tbaa !3
  %24 = load i32* @list_pipe_job, align 4, !tbaa !3
  %gleader82 = getelementptr inbounds %struct.job* %23, i32 %24, i32 0
  store i32 %cond, i32* %gleader82, align 4, !tbaa !3
  %25 = load i32* @list_pipe_job, align 4, !tbaa !3
  %gleader84 = getelementptr inbounds %struct.job* %23, i32 %25, i32 0
  %26 = load i32* %gleader84, align 4, !tbaa !3
  %call85 = tail call i32 @setpgid(i32 0, i32 %26) nounwind
  %and86 = and i32 %flags, 1
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end133

if.then88:                                        ; preds = %cond.end
  %27 = load i32* @thisjob, align 4, !tbaa !3
  %28 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader90 = getelementptr inbounds %struct.job* %28, i32 %27, i32 0
  %29 = load i32* %gleader90, align 4, !tbaa !3
  tail call void @attachtty(i32 %29) nounwind
  br label %if.end133

if.else93:                                        ; preds = %land.lhs.true57, %if.then54
  %gleader95 = getelementptr inbounds %struct.job* %11, i32 %9, i32 0
  %30 = load i32* %gleader95, align 4, !tbaa !3
  %tobool96 = icmp eq i32 %30, 0
  br i1 %tobool96, label %if.then105, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.else93
  %call100 = tail call i32 @setpgid(i32 0, i32 %30) nounwind
  %cmp103 = icmp eq i32 %call100, -1
  br i1 %cmp103, label %if.then105, label %if.end133

if.then105:                                       ; preds = %if.else93, %lor.lhs.false97
  %call106 = tail call i32 @getpid() nounwind
  %31 = load i32* @thisjob, align 4, !tbaa !3
  %32 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader108 = getelementptr inbounds %struct.job* %32, i32 %31, i32 0
  store i32 %call106, i32* %gleader108, align 4, !tbaa !3
  %33 = load i32* @list_pipe_job, align 4, !tbaa !3
  %34 = load i32* @thisjob, align 4, !tbaa !3
  %cmp109 = icmp eq i32 %33, %34
  br i1 %cmp109, label %if.end120, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.then105
  %gleader113 = getelementptr inbounds %struct.job* %32, i32 %33, i32 0
  %35 = load i32* %gleader113, align 4, !tbaa !3
  %tobool114 = icmp eq i32 %35, 0
  br i1 %tobool114, label %if.then115, label %if.end120

if.then115:                                       ; preds = %land.lhs.true111
  %gleader117 = getelementptr inbounds %struct.job* %32, i32 %34, i32 0
  %36 = load i32* %gleader117, align 4, !tbaa !3
  store i32 %36, i32* %gleader113, align 4, !tbaa !3
  %.pre = load i32* @thisjob, align 4, !tbaa !3
  br label %if.end120

if.end120:                                        ; preds = %land.lhs.true111, %if.then105, %if.then115
  %37 = phi i32 [ %34, %land.lhs.true111 ], [ %33, %if.then105 ], [ %.pre, %if.then115 ]
  %gleader122 = getelementptr inbounds %struct.job* %32, i32 %37, i32 0
  %38 = load i32* %gleader122, align 4, !tbaa !3
  %call123 = tail call i32 @setpgid(i32 0, i32 %38) nounwind
  %and124 = and i32 %flags, 1
  %tobool125 = icmp eq i32 %and124, 0
  br i1 %tobool125, label %if.then126, label %if.end133

if.then126:                                       ; preds = %if.end120
  %39 = load i32* @thisjob, align 4, !tbaa !3
  %40 = load %struct.job** @jobtab, align 4, !tbaa !5
  %gleader128 = getelementptr inbounds %struct.job* %40, i32 %39, i32 0
  %41 = load i32* %gleader128, align 4, !tbaa !3
  tail call void @attachtty(i32 %41) nounwind
  br label %if.end133

if.end133:                                        ; preds = %cond.end, %if.end120, %land.lhs.true51, %if.else, %if.then38, %if.then34, %if.then31, %lor.lhs.false97, %if.then126, %lor.lhs.false68, %if.then88
  %and134 = and i32 %flags, 8
  %tobool135 = icmp eq i32 %and134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  store i32 1, i32* @subsh, align 4, !tbaa !3
  br label %if.end137

if.end137:                                        ; preds = %if.end133, %if.then136
  %42 = load i64* @zsh_subshell, align 8, !tbaa !0
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %42, i64 1)
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = extractvalue { i64, i1 } %43, 1
  br i1 %45, label %ioc_bb138, label %cont139

ioc_bb138:                                        ; preds = %if.end137
  tail call void @__ioc_report_add_overflow(i32 883, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %42, i64 1, i8 14) nounwind
  br label %cont139

cont139:                                          ; preds = %if.end137, %ioc_bb138
  store i64 %44, i64* @zsh_subshell, align 8, !tbaa !0
  %and140 = and i32 %flags, 16
  %tobool141 = icmp eq i32 %and140, 0
  br i1 %tobool141, label %if.end147, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %cont139
  %call143 = tail call i32 @getpid() nounwind
  %46 = load i32* @mypgrp, align 4, !tbaa !3
  %cmp144 = icmp eq i32 %call143, %46
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %land.lhs.true142
  tail call void @release_pgrp() nounwind
  br label %if.end147

if.end147:                                        ; preds = %cont139, %if.then146, %land.lhs.true142
  store %struct._IO_FILE* null, %struct._IO_FILE** @shout, align 4, !tbaa !5
  br i1 %7, label %if.end153, label %if.then149

if.then149:                                       ; preds = %if.end147
  %call150 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* null) nounwind
  %call151 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* null) nounwind
  %call152 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* null) nounwind
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %if.end147
  %47 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool154 = icmp eq i8 %47, 0
  br i1 %tobool154, label %if.end166, label %if.then155

if.then155:                                       ; preds = %if.end153
  %call156 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* null) nounwind
  %48 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 2), align 4, !tbaa !3
  %and161 = and i32 %48, 2
  %tobool162 = icmp eq i32 %and161, 0
  br i1 %tobool162, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.then155
  %call164 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* null) nounwind
  br label %if.end166

if.end166:                                        ; preds = %if.then155, %if.end153, %if.then163
  %49 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 3), align 4, !tbaa !3
  %and171 = and i32 %49, 2
  %tobool172 = icmp eq i32 %and171, 0
  br i1 %tobool172, label %if.then173, label %if.end175

if.then173:                                       ; preds = %if.end166
  %call174 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 3, void (i32)* null) nounwind
  br label %if.end175

if.end175:                                        ; preds = %if.end166, %if.then173
  br i1 %7, label %cont182, label %cont179

cont179:                                          ; preds = %if.end175
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  br label %cont182

cont182:                                          ; preds = %if.end175, %cont179
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167), align 1, !tbaa !1
  store i32 0, i32* @zleactive, align 4, !tbaa !3
  %and183 = and i32 %flags, 2
  %tobool184 = icmp eq i32 %and183, 0
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %cont182
  tail call void @clearjobtab(i32 %conv) nounwind
  br label %if.end186

if.end186:                                        ; preds = %cont182, %if.then185
  tail call void @get_usage() nounwind
  %50 = load i32* @locallevel, align 4, !tbaa !3
  store i32 %50, i32* @forklevel, align 4, !tbaa !3
  ret void
}

declare void @cmdpop()

declare i32 @close(i32)

declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture) nounwind

declare %union.linkroot* @newlinklist()

declare i8* @hcalloc(i32)

declare i32 @fgetc(%struct._IO_FILE* nocapture) nounwind

declare void @clearerr(%struct._IO_FILE* nocapture) nounwind

declare i32 @fclose(%struct._IO_FILE* nocapture) nounwind

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i8** @spacesplit(i8*, i32, i32, i32)

declare void @shtokenize(i8*)

define i8* @getoutputfile(i8* %cmd, i8** %eptr) nounwind {
entry:
  %s = alloca i8*, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %len = alloca i32, align 4
  %tmp44 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @thisjob, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.eprog* @parsecmd(i8* %cmd, i8** %eptr)
  %tobool = icmp eq %struct.eprog* %call, null
  br i1 %tobool, label %return, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @gettempname(i8* null, i32 0) nounwind
  %tobool4 = icmp eq i8* %call3, null
  br i1 %tobool4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = call fastcc i8* @simple_redir_name(%struct.eprog* %call, i32 12)
  store i8* %call7, i8** %s, align 4, !tbaa !5
  %tobool8 = icmp eq i8* %call7, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @singsub(i8** %s) nounwind
  %1 = load i32* @errflag, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %1, 0
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  store i8* null, i8** %s, align 4, !tbaa !5
  br label %if.end13

if.else:                                          ; preds = %if.then9
  %2 = load i8** %s, align 4, !tbaa !5
  call void @untokenize(i8* %2)
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then11, %if.else
  %3 = load i32* @thisjob, align 4, !tbaa !3
  %4 = load %struct.job** @jobtab, align 4, !tbaa !5
  %filelist = getelementptr inbounds %struct.job* %4, i32 %3, i32 6
  %5 = load %union.linkroot** %filelist, align 4, !tbaa !5
  %tobool14 = icmp eq %union.linkroot* %5, null
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %call16 = call %union.linkroot* @znewlinklist() nounwind
  %6 = load i32* @thisjob, align 4, !tbaa !3
  %7 = load %struct.job** @jobtab, align 4, !tbaa !5
  %filelist18 = getelementptr inbounds %struct.job* %7, i32 %6, i32 6
  store %union.linkroot* %call16, %union.linkroot** %filelist18, align 4, !tbaa !5
  %.pre = load %struct.job** @jobtab, align 4, !tbaa !5
  %filelist21.phi.trans.insert = getelementptr inbounds %struct.job* %.pre, i32 %6, i32 6
  %.pre70 = load %union.linkroot** %filelist21.phi.trans.insert, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.end13, %if.then15
  %8 = phi %union.linkroot* [ %5, %if.end13 ], [ %.pre70, %if.then15 ]
  %last = getelementptr inbounds %union.linkroot* %8, i32 0, i32 0, i32 1
  %9 = load %struct.linknode** %last, align 4, !tbaa !5
  %call24 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %8, %struct.linknode* %9, i8* %call3) nounwind
  %10 = load i8** %s, align 4, !tbaa !5
  %tobool25 = icmp eq i8* %10, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %if.end27

if.end27:                                         ; preds = %if.end19, %if.then26
  %call28 = call i32 (i8*, i32, ...)* @open64(i8* %call3, i32 449, i32 384) nounwind
  %11 = load i8** %s, align 4, !tbaa !5
  %tobool29 = icmp eq i8* %11, null
  br i1 %tobool29, label %if.end37, label %if.then30

if.then30:                                        ; preds = %if.end27
  %call32 = call i8* @unmetafy(i8* %11, i32* %len) nounwind
  %12 = load i8** %s, align 4, !tbaa !5
  %13 = load i32* %len, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %if.then30
  %15 = sext i32 %13 to i64
  call void @__ioc_report_conversion(i32 3725, i32 21, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %if.then30
  %call35 = call i32 @write_loop(i32 %call28, i8* %12, i32 %13) nounwind
  %call36 = call i32 @close(i32 %call28) nounwind
  br label %return

if.end37:                                         ; preds = %if.end27
  %cmp38 = icmp slt i32 %call28, 0
  br i1 %cmp38, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %call39 = call fastcc i32 @zfork(%struct.timeval* null)
  store i32 %call39, i32* @cmdoutpid, align 4, !tbaa !3
  switch i32 %call39, label %if.then47 [
    i32 -1, label %if.then43
    i32 0, label %if.end55
  ]

if.then43:                                        ; preds = %lor.lhs.false, %if.end37
  call void @signal_unblock(%struct.__sigset_t* sret %tmp44, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %return

if.then47:                                        ; preds = %lor.lhs.false
  %call49 = call i32 @close(i32 %call28) nounwind
  %16 = load i32* @thisjob, align 4, !tbaa !3
  %17 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat = getelementptr inbounds %struct.job* %17, i32 %16, i32 2
  %18 = load i32* %stat, align 4, !tbaa !3
  %call51 = call i32 @waitforpid(i32 %call39, i32 0) nounwind
  store i32 0, i32* @cmdoutval, align 4, !tbaa !3
  %19 = load i32* @thisjob, align 4, !tbaa !3
  %20 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat53 = getelementptr inbounds %struct.job* %20, i32 %19, i32 2
  store i32 %18, i32* %stat53, align 4, !tbaa !3
  br label %return

if.end55:                                         ; preds = %lor.lhs.false
  %call56 = call i32 @redup(i32 %call28, i32 1) nounwind
  call fastcc void @entersubsh(i32 34)
  call void @cmdpush(i32 24) nounwind
  call void @execode(%struct.eprog* %call, i32 0, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0))
  call void @cmdpop() nounwind
  %call57 = call i32 @close(i32 1) nounwind
  %21 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %21, 2147483648
  %22 = icmp ult i64 %.off, 4294967296
  br i1 %22, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %if.end55
  call void @__ioc_report_conversion(i32 3750, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %if.end55
  %conv = trunc i64 %21 to i32
  call void @_exit(i32 %conv) noreturn nounwind
  unreachable

return:                                           ; preds = %if.end2, %if.end, %entry, %if.then47, %if.then43, %cont34
  %retval.0 = phi i8* [ %call3, %cont34 ], [ %call3, %if.then43 ], [ %call3, %if.then47 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end2 ]
  ret i8* %retval.0
}

define internal fastcc %struct.eprog* @parsecmd(i8* %cmd, i8** %eptr) nounwind {
entry:
  %add.ptr = getelementptr inbounds i8* %cmd, i32 2
  br label %for.cond

for.cond:                                         ; preds = %ioc_bb, %entry
  %str.0 = phi i8* [ %add.ptr, %entry ], [ %incdec.ptr, %ioc_bb ]
  %0 = load i8* %str.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %ioc_bb

ioc_bb:                                           ; preds = %for.cond
  tail call void @__ioc_report_conversion(i32 3664, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp = icmp eq i8 %0, -119
  %incdec.ptr = getelementptr inbounds i8* %str.0, i32 1
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %ioc_bb
  %.pr = load i8* %str.0, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %.pr, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx = getelementptr inbounds i8* %cmd, i32 1
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 3666, i32 37, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp7 = icmp eq i8 %1, -120
  br i1 %cmp7, label %cont10, label %if.then

if.then:                                          ; preds = %for.cond, %lor.lhs.false, %for.end
  %call = tail call i8* @dupstrpfx(i8* %cmd, i32 2) nounwind
  tail call void @untokenize(i8* %call)
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str19, i32 0, i32 0), i8* %call) nounwind
  br label %return

cont10:                                           ; preds = %lor.lhs.false
  store i8 0, i8* %str.0, align 1, !tbaa !1
  %tobool11 = icmp eq i8** %eptr, null
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %cont10
  store i8* %incdec.ptr, i8** %eptr, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %cont10, %if.then12
  %call16 = tail call %struct.eprog* @parse_string(i8* %add.ptr, i32 0)
  %tobool17 = icmp eq %struct.eprog* %call16, null
  br i1 %tobool17, label %if.then18, label %return

if.then18:                                        ; preds = %if.end14
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([36 x i8]* @.str20, i32 0, i32 0)) nounwind
  br label %return

return:                                           ; preds = %if.end14, %if.then18, %if.then
  %retval.0 = phi %struct.eprog* [ null, %if.then ], [ null, %if.then18 ], [ %call16, %if.end14 ]
  ret %struct.eprog* %retval.0
}

declare i8* @gettempname(i8*, i32)

declare %union.linkroot* @znewlinklist()

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i8* @unmetafy(i8*, i32*)

declare i32 @write_loop(i32, i8*, i32)

define i8* @getproc(i8* %cmd, i8** %eptr) nounwind {
entry:
  %bgtime = alloca %struct.timeval, align 4
  %pipes = alloca [2 x i32], align 4
  %0 = load i8* %cmd, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 3769, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp = icmp eq i8 %0, -110
  %conv1 = zext i1 %cmp to i32
  %1 = load i32* @thisjob, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, -1
  br i1 %cmp4, label %return, label %cont9

cont9:                                            ; preds = %entry
  %call = call i8* @hcalloc(i32 19) nounwind
  %call10 = call fastcc %struct.eprog* @parsecmd(i8* %cmd, i8** %eptr)
  %tobool = icmp eq %struct.eprog* %call10, null
  br i1 %tobool, label %return, label %if.end12

if.end12:                                         ; preds = %cont9
  %arraydecay = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 0
  %call.i = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mpipe.exit.thread, label %if.end17

mpipe.exit.thread:                                ; preds = %if.end12
  %call1.i = call i32* @__errno_location() nounwind readnone
  %2 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %2) nounwind
  br label %return

if.end17:                                         ; preds = %if.end12
  %3 = load i32* %arraydecay, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %3) nounwind
  store i32 %call2.i, i32* %arraydecay, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %4 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %4) nounwind
  store i32 %call5.i, i32* %arrayidx4.i, align 4, !tbaa !3
  %call18 = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %if.end46, label %if.then20

if.then20:                                        ; preds = %if.end17
  %lnot.ext = xor i32 %conv1, 1
  %arrayidx = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %lnot.ext
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %call22 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0), i32 %5) nounwind
  %arrayidx23 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %conv1
  %6 = load i32* %arrayidx23, align 4, !tbaa !3
  %call24 = call i32 @zclose(i32 %6) nounwind
  %cmp27 = icmp eq i32 %call18, -1
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  br i1 %cmp27, label %if.then29, label %cont37

if.then29:                                        ; preds = %if.then20
  %call34 = call i32 @zclose(i32 %7) nounwind
  br label %return

cont37:                                           ; preds = %if.then20
  %8 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8* %8, i32 %7
  store i8 6, i8* %arrayidx42, align 1, !tbaa !1
  br i1 %cmp, label %return, label %if.then44

if.then44:                                        ; preds = %cont37
  call void @addproc(i32 %call18, i8* null, i32 1, %struct.timeval* %bgtime) nounwind
  br label %return

if.end46:                                         ; preds = %if.end17
  call fastcc void @entersubsh(i32 3)
  %arrayidx47 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %conv1
  %9 = load i32* %arrayidx47, align 4, !tbaa !3
  %call48 = call i32 @redup(i32 %9, i32 %conv1) nounwind
  %10 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i = icmp slt i32 %10, 10
  br i1 %cmp14.i, label %closem.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %if.end46
  %i.015.i = phi i32 [ 10, %if.end46 ], [ %14, %for.cond.backedge.i ]
  %11 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i = getelementptr inbounds i8* %11, i32 %i.015.i
  %12 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %12, 0
  br i1 %cmp1.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i65 = call i32 @zclose(i32 %i.015.i) nounwind
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i, i32 1) nounwind
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %for.inc.i, %ioc_bb.i
  %16 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i67 = icmp sgt i32 %14, %16
  br i1 %cmp.i67, label %closem.exit, label %for.body.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %17 = sext i32 %i.015.i to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

closem.exit:                                      ; preds = %for.cond.backedge.i, %if.end46
  call void @cmdpush(i32 24) nounwind
  %cond = select i1 %cmp, i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0)
  call void @execode(%struct.eprog* %call10, i32 0, i32 1, i8* %cond)
  call void @cmdpop() nounwind
  %call50 = call i32 @zclose(i32 %conv1) nounwind
  %18 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %18, 2147483648
  %19 = icmp ult i64 %.off, 4294967296
  br i1 %19, label %cont52, label %ioc_bb51

ioc_bb51:                                         ; preds = %closem.exit
  call void @__ioc_report_conversion(i32 3805, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont52

cont52:                                           ; preds = %ioc_bb51, %closem.exit
  %conv53 = trunc i64 %18 to i32
  call void @_exit(i32 %conv53) noreturn nounwind
  unreachable

return:                                           ; preds = %mpipe.exit.thread, %cont37, %if.then44, %cont9, %entry, %if.then29
  %retval.0 = phi i8* [ null, %if.then29 ], [ null, %entry ], [ null, %cont9 ], [ %call, %if.then44 ], [ %call, %cont37 ], [ null, %mpipe.exit.thread ]
  ret i8* %retval.0
}

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare void @addproc(i32, i8*, i32, %struct.timeval*)

define %struct.shfunc* @loadautofn(%struct.shfunc* %shf, i32 %fksh, i32 %autol) nounwind {
entry:
  %ksh = alloca i32, align 4
  %fname = alloca i8*, align 4
  %0 = load i32* @noaliases, align 4, !tbaa !3
  store i32 1, i32* %ksh, align 4, !tbaa !3
  call void @pushheap() nounwind
  %flags = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 8192
  store i32 %and, i32* @noaliases, align 4, !tbaa !3
  %nam = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 1
  %2 = load i8** %nam, align 4, !tbaa !5
  %call = call %struct.eprog* @getfpfunc(i8* %2, i32* %ksh, i8** %fname)
  store i32 %0, i32* @noaliases, align 4, !tbaa !3
  %3 = load i32* %ksh, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  store i32 %fksh, i32* %ksh, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %fksh, 1
  br i1 %cmp4, label %if.then5, label %if.end22

if.then5:                                         ; preds = %if.then
  %4 = load i32* %flags, align 4, !tbaa !3
  %and12 = and i32 %4, 131072
  %tobool = icmp eq i32 %and12, 0
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then5
  %and19 = lshr i32 %4, 18
  %and19.lobit = and i32 %and19, 1
  %5 = xor i32 %and19.lobit, 1
  br label %cond.end

cond.end:                                         ; preds = %if.then5, %cond.false
  %cond21 = phi i32 [ %5, %cond.false ], [ 2, %if.then5 ]
  store i32 %cond21, i32* %ksh, align 4, !tbaa !3
  br label %if.end22

if.end22:                                         ; preds = %if.then, %cond.end, %entry
  %6 = phi i32 [ %fksh, %if.then ], [ %cond21, %cond.end ], [ %3, %entry ]
  %cmp23 = icmp eq %struct.eprog* %call, @dummy_eprog
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end22
  %7 = load i32* @locallevel, align 4, !tbaa !3
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 -1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %if.then24
  %11 = sext i32 %7 to i64
  call void @__ioc_report_add_overflow(i32 4182, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %cont26

cont26:                                           ; preds = %if.then24, %ioc_bb25
  store i32 %9, i32* @locallevel, align 4, !tbaa !3
  %12 = load i8** %nam, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([39 x i8]* @.str12, i32 0, i32 0), i8* %12) nounwind
  %13 = load i32* @locallevel, align 4, !tbaa !3
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb29, label %cont30

ioc_bb29:                                         ; preds = %cont26
  %17 = sext i32 %13 to i64
  call void @__ioc_report_add_overflow(i32 4184, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 13) nounwind
  br label %cont30

cont30:                                           ; preds = %cont26, %ioc_bb29
  store i32 %15, i32* @locallevel, align 4, !tbaa !3
  call void @popheap() nounwind
  br label %return

if.end31:                                         ; preds = %if.end22
  %tobool32 = icmp eq %struct.eprog* %call, null
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %18 = load i8** %fname, align 4, !tbaa !5
  call void @zsfree(i8* %18) nounwind
  call void @popheap() nounwind
  br label %return

if.end34:                                         ; preds = %if.end31
  switch i32 %6, label %if.else86 [
    i32 2, label %if.then38
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.end34
  %19 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 90), align 1, !tbaa !1
  %tobool37 = icmp eq i8 %19, 0
  br i1 %tobool37, label %if.else86, label %if.then38

if.then38:                                        ; preds = %if.end34, %land.lhs.true
  %tobool39 = icmp eq i32 %autol, 0
  br i1 %tobool39, label %if.else57, label %if.then40

if.then40:                                        ; preds = %if.then38
  %flags41 = getelementptr inbounds %struct.eprog* %call, i32 0, i32 0
  %20 = load i32* %flags41, align 4, !tbaa !3
  %or = or i32 %20, 8
  store i32 %or, i32* %flags41, align 4, !tbaa !3
  %funcdef = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 3
  %21 = load %struct.eprog** %funcdef, align 4, !tbaa !5
  call void @freeeprog(%struct.eprog* %21) nounwind
  %22 = load i32* %flags41, align 4, !tbaa !3
  %and43 = and i32 %22, 4
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %if.else, label %if.end49

if.else:                                          ; preds = %if.then40
  %call47 = call %struct.eprog* @dupeprog(%struct.eprog* %call, i32 0) nounwind
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %if.else
  %storemerge140 = phi %struct.eprog* [ %call47, %if.else ], [ %call, %if.then40 ]
  store %struct.eprog* %storemerge140, %struct.eprog** %funcdef, align 4
  %23 = load i32* %flags, align 4, !tbaa !3
  %and56 = and i32 %23, -513
  store i32 %and56, i32* %flags, align 4, !tbaa !3
  %24 = load i8** %fname, align 4, !tbaa !5
  %filename = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 1
  store i8* %24, i8** %filename, align 4, !tbaa !5
  br label %if.end111

if.else57:                                        ; preds = %if.then38
  %25 = load i8** %nam, align 4, !tbaa !5
  %call60 = call i32 @strlen(i8* %25) nounwind readonly
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call60, i32 1)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %if.else57
  %29 = zext i32 %call60 to i64
  call void @__ioc_report_add_overflow(i32 4205, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind
  br label %cont64

cont64:                                           ; preds = %if.else57, %ioc_bb63
  %30 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %27, align 1
  %31 = load i8** %nam, align 4, !tbaa !5
  %call67 = call i8* @strcpy(i8* %vla, i8* %31) nounwind
  call void @execode(%struct.eprog* %call, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0))
  %32 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode = getelementptr inbounds %struct.hashtable* %32, i32 0, i32 9
  %33 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !5
  %call68 = call %struct.hashnode* %33(%struct.hashtable* %32, i8* %vla) nounwind
  %34 = bitcast %struct.hashnode* %call68 to %struct.shfunc*
  %tobool69 = icmp eq %struct.hashnode* %call68, null
  br i1 %tobool69, label %if.then79, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %cont64
  %flags72 = getelementptr inbounds %struct.hashnode* %call68, i32 0, i32 2
  %35 = load i32* %flags72, align 4, !tbaa !3
  %and77 = and i32 %35, 512
  %tobool78 = icmp eq i32 %and77, 0
  br i1 %tobool78, label %cleanup, label %if.then79

if.then79:                                        ; preds = %lor.lhs.false70, %cont64
  %36 = load i32* @locallevel, align 4, !tbaa !3
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb80, label %cont81

ioc_bb80:                                         ; preds = %if.then79
  %40 = sext i32 %36 to i64
  call void @__ioc_report_add_overflow(i32 4211, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %40, i64 -1, i8 13) nounwind
  br label %cont81

cont81:                                           ; preds = %if.then79, %ioc_bb80
  store i32 %38, i32* @locallevel, align 4, !tbaa !3
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([33 x i8]* @.str14, i32 0, i32 0), i8* %vla) nounwind
  %41 = load i32* @locallevel, align 4, !tbaa !3
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 1)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb82, label %cont83

ioc_bb82:                                         ; preds = %cont81
  %45 = sext i32 %41 to i64
  call void @__ioc_report_add_overflow(i32 4213, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %45, i64 1, i8 13) nounwind
  br label %cont83

cont83:                                           ; preds = %cont81, %ioc_bb82
  store i32 %43, i32* @locallevel, align 4, !tbaa !3
  call void @popheap() nounwind
  %46 = load i8** %fname, align 4, !tbaa !5
  call void @zsfree(i8* %46) nounwind
  call void @llvm.stackrestore(i8* %30)
  br label %return

cleanup:                                          ; preds = %lor.lhs.false70
  call void @llvm.stackrestore(i8* %30)
  br label %if.end111

if.else86:                                        ; preds = %if.end34, %land.lhs.true
  %funcdef87 = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 3
  %47 = load %struct.eprog** %funcdef87, align 4, !tbaa !5
  call void @freeeprog(%struct.eprog* %47) nounwind
  %flags88 = getelementptr inbounds %struct.eprog* %call, i32 0, i32 0
  %48 = load i32* %flags88, align 4, !tbaa !3
  %and89 = and i32 %48, 4
  %tobool90 = icmp eq i32 %and89, 0
  %49 = load i8** %nam, align 4, !tbaa !5
  %call94 = call %struct.eprog* @stripkshdef(%struct.eprog* %call, i8* %49)
  br i1 %tobool90, label %if.else96, label %if.end102

if.else96:                                        ; preds = %if.else86
  %call100 = call %struct.eprog* @dupeprog(%struct.eprog* %call94, i32 0) nounwind
  br label %if.end102

if.end102:                                        ; preds = %if.else86, %if.else96
  %storemerge = phi %struct.eprog* [ %call100, %if.else96 ], [ %call94, %if.else86 ]
  store %struct.eprog* %storemerge, %struct.eprog** %funcdef87, align 4
  %50 = load i32* %flags, align 4, !tbaa !3
  %and109 = and i32 %50, -513
  store i32 %and109, i32* %flags, align 4, !tbaa !3
  %51 = load i8** %fname, align 4, !tbaa !5
  %filename110 = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 1
  store i8* %51, i8** %filename110, align 4, !tbaa !5
  br label %if.end111

if.end111:                                        ; preds = %cleanup, %if.end49, %if.end102
  %shf.addr.0 = phi %struct.shfunc* [ %shf, %if.end49 ], [ %34, %cleanup ], [ %shf, %if.end102 ]
  call void @popheap() nounwind
  br label %return

return:                                           ; preds = %cont83, %if.end111, %if.then33, %cont30
  %retval.1 = phi %struct.shfunc* [ null, %cont30 ], [ %shf.addr.0, %if.end111 ], [ null, %if.then33 ], [ null, %cont83 ]
  ret %struct.shfunc* %retval.1
}

define %struct.eprog* @getfpfunc(i8* %s, i32* %ksh, i8** %fname) nounwind {
entry:
  %buf = alloca [4096 x i8], align 1
  %0 = load i8*** @fpath, align 4, !tbaa !5
  %1 = load i8** %0, align 4, !tbaa !5
  %tobool126 = icmp eq i8* %1, null
  br i1 %tobool126, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8* [ %1, %for.body.lr.ph ], [ %23, %for.inc ]
  %pp.0127 = phi i8** [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call = call i32 @strlen(i8* %2) nounwind readonly
  %call1 = call i32 @strlen(i8* %s) nounwind readonly
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 %call1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb, label %cont3

ioc_bb:                                           ; preds = %for.body
  %6 = zext i32 %call1 to i64
  %7 = zext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 4503, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %7, i64 %6, i8 5) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb, %for.body
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb4, label %cont7

ioc_bb4:                                          ; preds = %cont3
  %11 = zext i32 %4 to i64
  call void @__ioc_report_add_overflow(i32 4503, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %11, i64 1, i8 5) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb4, %cont3
  %cmp = icmp ugt i32 %9, 4095
  br i1 %cmp, label %for.inc, label %if.end

if.end:                                           ; preds = %cont7
  %12 = load i8** %pp.0127, align 4, !tbaa !5
  %13 = load i8* %12, align 1, !tbaa !1
  %tobool8 = icmp eq i8 %13, 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* %12, i8* %s) nounwind
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call12 = call i8* @strcpy(i8* %arraydecay, i8* %s) nounwind
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %14 = load i8** %pp.0127, align 4, !tbaa !5
  %call15 = call %struct.eprog* @try_dump_file(i8* %14, i8* %s, i8* %arraydecay, i32* %ksh) nounwind
  %tobool16 = icmp eq %struct.eprog* %call15, null
  br i1 %tobool16, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end13
  %tobool18 = icmp eq i8** %fname, null
  br i1 %tobool18, label %return, label %if.then19

if.then19:                                        ; preds = %if.then17
  %call21 = call i8* @ztrdup(i8* %arraydecay) nounwind
  store i8* %call21, i8** %fname, align 4, !tbaa !5
  br label %return

if.end23:                                         ; preds = %if.end13
  %call25 = call i8* @unmetafy(i8* %arraydecay, i32* null) nounwind
  %call27 = call i32 @access(i8* %arraydecay, i32 4) nounwind
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end23
  %call30 = call i32 (i8*, i32, ...)* @open64(i8* %arraydecay, i32 256) nounwind
  %cmp33 = icmp eq i32 %call30, -1
  br i1 %cmp33, label %for.inc, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  %call35 = call i64 @lseek64(i32 %call30, i64 0, i32 2) nounwind
  %cmp38 = icmp eq i64 %call35, -1
  br i1 %cmp38, label %if.else91, label %if.then40

if.then40:                                        ; preds = %if.then34
  %15 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %call35, i64 1)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  br i1 %17, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.then40
  call void @__ioc_report_add_overflow(i32 4517, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %call35, i64 1, i8 14) nounwind
  br label %cont42

cont42:                                           ; preds = %if.then40, %ioc_bb41
  %18 = icmp ult i64 %16, 4294967296
  br i1 %18, label %cont44, label %ioc_bb43

ioc_bb43:                                         ; preds = %cont42
  call void @__ioc_report_conversion(i32 4517, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont44

cont44:                                           ; preds = %ioc_bb43, %cont42
  %conv45 = trunc i64 %16 to i32
  %call46 = call i8* @zalloc(i32 %conv45) nounwind
  %call47 = call i64 @lseek64(i32 %call30, i64 0, i32 0) nounwind
  %19 = icmp ult i64 %call35, 4294967296
  br i1 %19, label %cont51, label %ioc_bb50

ioc_bb50:                                         ; preds = %cont44
  call void @__ioc_report_conversion(i32 4519, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %call35, i8 1) nounwind
  br label %cont51

cont51:                                           ; preds = %ioc_bb50, %cont44
  %conv52 = trunc i64 %call35 to i32
  %call53 = call i32 @read(i32 %call30, i8* %call46, i32 %conv52) nounwind
  %cmp55 = icmp sgt i32 %call53, -1
  br i1 %cmp55, label %if.then57, label %if.else81

if.then57:                                        ; preds = %cont51
  %20 = load i8** @scriptname, align 4, !tbaa !5
  %call58 = call i32 @close(i32 %call30) nounwind
  %arrayidx = getelementptr inbounds i8* %call46, i32 %call53
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %call66 = call i8* @metafy(i8* %call46, i32 %call53, i32 0) nounwind
  %call67 = call i8* @dupstring(i8* %s) nounwind
  store i8* %call67, i8** @scriptname, align 4, !tbaa !5
  %call68 = call %struct.eprog* @parse_string(i8* %call66, i32 1)
  store i8* %20, i8** @scriptname, align 4, !tbaa !5
  %tobool69 = icmp eq i8** %fname, null
  br i1 %tobool69, label %if.end73, label %if.then70

if.then70:                                        ; preds = %if.then57
  %call72 = call i8* @ztrdup(i8* %arraydecay) nounwind
  store i8* %call72, i8** %fname, align 4, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.then57, %if.then70
  br i1 %17, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %if.end73
  call void @__ioc_report_add_overflow(i32 4529, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %call35, i64 1, i8 14) nounwind
  br label %cont75

cont75:                                           ; preds = %if.end73, %ioc_bb74
  %.off122 = add i64 %16, 2147483648
  %21 = icmp ult i64 %.off122, 4294967296
  br i1 %21, label %cont79, label %ioc_bb78

ioc_bb78:                                         ; preds = %cont75
  call void @__ioc_report_conversion(i32 4529, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont79

cont79:                                           ; preds = %ioc_bb78, %cont75
  call void @zfree(i8* %call66, i32 %conv45) nounwind
  br label %return

if.else81:                                        ; preds = %cont51
  %call82 = call i32 @close(i32 %call30) nounwind
  br i1 %17, label %ioc_bb84, label %cont85

ioc_bb84:                                         ; preds = %if.else81
  call void @__ioc_report_add_overflow(i32 4534, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %call35, i64 1, i8 14) nounwind
  br label %cont85

cont85:                                           ; preds = %if.else81, %ioc_bb84
  %.off = add i64 %16, 2147483648
  %22 = icmp ult i64 %.off, 4294967296
  br i1 %22, label %cont89, label %ioc_bb88

ioc_bb88:                                         ; preds = %cont85
  call void @__ioc_report_conversion(i32 4534, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont89

cont89:                                           ; preds = %ioc_bb88, %cont85
  call void @zfree(i8* %call46, i32 %conv45) nounwind
  br label %for.inc

if.else91:                                        ; preds = %if.then34
  %call92 = call i32 @close(i32 %call30) nounwind
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end23, %if.else91, %cont89, %cont7
  %incdec.ptr = getelementptr inbounds i8** %pp.0127, i32 1
  %23 = load i8** %incdec.ptr, align 4, !tbaa !5
  %tobool = icmp eq i8* %23, null
  br i1 %tobool, label %return, label %for.body

return:                                           ; preds = %entry, %for.inc, %if.then19, %if.then17, %cont79
  %retval.0 = phi %struct.eprog* [ %call68, %cont79 ], [ %call15, %if.then17 ], [ %call15, %if.then19 ], [ @dummy_eprog, %for.inc ], [ @dummy_eprog, %entry ]
  ret %struct.eprog* %retval.0
}

declare void @zwarn(i8*, ...)

declare void @zsfree(i8*)

declare %struct.eprog* @dupeprog(%struct.eprog*, i32)

declare i8* @llvm.stacksave() nounwind

declare void @llvm.stackrestore(i8*) nounwind

define %struct.eprog* @stripkshdef(%struct.eprog* %prog, i8* nocapture %name) nounwind {
entry:
  %tobool = icmp eq %struct.eprog* %prog, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %prog1 = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 5
  %0 = load i32** %prog1, align 4, !tbaa !5
  %1 = load i32* %0, align 4, !tbaa !3
  %2 = and i32 %1, 1631
  %3 = icmp eq i32 %2, 1601
  br i1 %3, label %if.end43, label %return

if.end43:                                         ; preds = %if.end
  %incdec.ptr44 = getelementptr inbounds i32* %0, i32 2
  %4 = load i32* %incdec.ptr44, align 4, !tbaa !3
  %and55 = and i32 %4, 31
  %cmp58 = icmp eq i32 %and55, 10
  br i1 %cmp58, label %cont61, label %return

cont61:                                           ; preds = %if.end43
  %incdec.ptr45 = getelementptr inbounds i32* %0, i32 3
  %5 = load i32* %incdec.ptr45, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %5, 1
  br i1 %cmp62, label %lor.lhs.false63, label %return

lor.lhs.false63:                                  ; preds = %cont61
  %add.ptr = getelementptr inbounds i32* %0, i32 4
  %call = tail call i8* @ecrawstr(%struct.eprog* %prog, i32* %add.ptr, i32* null) nounwind
  %call64 = tail call i32 @strcmp(i8* %name, i8* %call) nounwind
  %tobool65 = icmp eq i32 %call64, 0
  br i1 %tobool65, label %cont69, label %return

cont69:                                           ; preds = %lor.lhs.false63
  %shr70 = lshr i32 %4, 5
  %arrayidx = getelementptr inbounds i32* %0, i32 5
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %cont73, label %ioc_bb72

ioc_bb72:                                         ; preds = %cont69
  %8 = zext i32 %6 to i64
  tail call void @__ioc_report_conversion(i32 4566, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %8, i8 0) nounwind
  br label %cont73

cont73:                                           ; preds = %ioc_bb72, %cont69
  %arrayidx74 = getelementptr inbounds i32* %0, i32 6
  %9 = load i32* %arrayidx74, align 4, !tbaa !3
  %10 = zext i32 %9 to i64
  %11 = icmp sgt i32 %9, -1
  br i1 %11, label %cont77, label %ioc_bb76

ioc_bb76:                                         ; preds = %cont73
  tail call void @__ioc_report_conversion(i32 4567, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %10, i8 0) nounwind
  br label %cont77

cont77:                                           ; preds = %ioc_bb76, %cont73
  %arrayidx78 = getelementptr inbounds i32* %0, i32 7
  %12 = load i32* %arrayidx78, align 4, !tbaa !3
  %13 = zext i32 %12 to i64
  %14 = icmp sgt i32 %12, -1
  br i1 %14, label %cont81, label %ioc_bb80

ioc_bb80:                                         ; preds = %cont77
  tail call void @__ioc_report_conversion(i32 4569, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %13, i8 0) nounwind
  br label %cont81

cont81:                                           ; preds = %ioc_bb80, %cont77
  %add.ptr82 = getelementptr inbounds i32* %0, i32 8
  %incdec.ptr45.sum = shl nuw nsw i32 %shr70, 2
  %15 = add i32 %incdec.ptr45.sum, -20
  %sub.ptr.div = ashr exact i32 %15, 2
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %cont85, label %ioc_bb84

ioc_bb84:                                         ; preds = %cont81
  %17 = sext i32 %sub.ptr.div to i64
  tail call void @__ioc_report_conversion(i32 4576, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont85

cont85:                                           ; preds = %ioc_bb84, %cont81
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.ptr.div, i32 4)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb86, label %cont87

ioc_bb86:                                         ; preds = %cont85
  %21 = zext i32 %sub.ptr.div to i64
  tail call void @__ioc_report_mul_overflow(i32 4576, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %21, i64 4, i8 5) nounwind
  br label %cont87

cont87:                                           ; preds = %cont85, %ioc_bb86
  %22 = zext i32 %19 to i64
  %23 = icmp sgt i32 %19, -1
  br i1 %23, label %cont90.thread, label %ioc_bb92

cont90.thread:                                    ; preds = %cont87
  %24 = sext i32 %19 to i64
  br label %cont93

ioc_bb92:                                         ; preds = %cont87
  tail call void @__ioc_report_conversion(i32 4576, i32 12, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %22, i8 0) nounwind
  %25 = sext i32 %19 to i64
  tail call void @__ioc_report_conversion(i32 4577, i32 12, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont93

cont93:                                           ; preds = %cont90.thread, %ioc_bb92
  %26 = phi i64 [ %24, %cont90.thread ], [ %25, %ioc_bb92 ]
  %27 = sext i32 %12 to i64
  br i1 %14, label %cont96, label %ioc_bb95

ioc_bb95:                                         ; preds = %cont93
  tail call void @__ioc_report_conversion(i32 4577, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont96

cont96:                                           ; preds = %ioc_bb95, %cont93
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb97, label %cont98

ioc_bb97:                                         ; preds = %cont96
  tail call void @__ioc_report_mul_overflow(i32 4577, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %13, i64 4, i8 5) nounwind
  br label %cont98

cont98:                                           ; preds = %cont96, %ioc_bb97
  %31 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %19, i32 %29)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb99, label %cont100

ioc_bb99:                                         ; preds = %cont98
  %34 = zext i32 %29 to i64
  tail call void @__ioc_report_add_overflow(i32 4577, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %22, i64 %34, i8 5) nounwind
  br label %cont100

cont100:                                          ; preds = %cont98, %ioc_bb99
  %35 = sext i32 %9 to i64
  br i1 %11, label %cont103, label %ioc_bb102

ioc_bb102:                                        ; preds = %cont100
  tail call void @__ioc_report_conversion(i32 4577, i32 46, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %35, i8 1) nounwind
  br label %cont103

cont103:                                          ; preds = %ioc_bb102, %cont100
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 %9)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb104, label %cont105

ioc_bb104:                                        ; preds = %cont103
  %39 = zext i32 %32 to i64
  tail call void @__ioc_report_add_overflow(i32 4577, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %39, i64 %10, i8 5) nounwind
  br label %cont105

cont105:                                          ; preds = %cont103, %ioc_bb104
  %40 = icmp sgt i32 %37, -1
  br i1 %40, label %cont108, label %ioc_bb107

ioc_bb107:                                        ; preds = %cont105
  %41 = zext i32 %37 to i64
  tail call void @__ioc_report_conversion(i32 4577, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %41, i8 0) nounwind
  br label %cont108

cont108:                                          ; preds = %ioc_bb107, %cont105
  %flags = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 0
  %42 = load i32* %flags, align 4, !tbaa !3
  %and109 = and i32 %42, 4
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %if.else, label %if.then111

if.then111:                                       ; preds = %cont108
  %pats = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 4
  %43 = load %struct.patprog*** %pats, align 4, !tbaa !5
  %44 = bitcast %struct.patprog** %43 to i8*
  tail call void @free(i8* %44) nounwind
  br i1 %14, label %cont114, label %ioc_bb113

ioc_bb113:                                        ; preds = %if.then111
  tail call void @__ioc_report_conversion(i32 4581, i32 46, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont114

cont114:                                          ; preds = %ioc_bb113, %if.then111
  br i1 %30, label %ioc_bb115, label %cont116

ioc_bb115:                                        ; preds = %cont114
  tail call void @__ioc_report_mul_overflow(i32 4581, i32 52, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %13, i64 4, i8 5) nounwind
  br label %cont116

cont116:                                          ; preds = %cont114, %ioc_bb115
  %call117 = tail call i8* @zalloc(i32 %29) nounwind
  %45 = bitcast i8* %call117 to %struct.patprog**
  store %struct.patprog** %45, %struct.patprog*** %pats, align 4, !tbaa !5
  store i32* %add.ptr82, i32** %prog1, align 4, !tbaa !5
  %strs = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 6
  %46 = load i8** %strs, align 4, !tbaa !5
  %add.ptr120 = getelementptr inbounds i8* %46, i32 %6
  store i8* %add.ptr120, i8** %strs, align 4, !tbaa !5
  br label %if.end145

if.else:                                          ; preds = %cont108
  %call122 = tail call i8* @zhalloc(i32 36) nounwind
  %47 = bitcast i8* %call122 to %struct.eprog*
  %flags123 = bitcast i8* %call122 to i32*
  store i32 2, i32* %flags123, align 4, !tbaa !3
  br i1 %40, label %cont126, label %ioc_bb125

ioc_bb125:                                        ; preds = %if.else
  %48 = sext i32 %37 to i64
  tail call void @__ioc_report_conversion(i32 4588, i32 47, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont126

cont126:                                          ; preds = %ioc_bb125, %if.else
  %call127 = tail call i8* @zhalloc(i32 %37) nounwind
  %49 = bitcast i8* %call127 to %struct.patprog**
  %pats128 = getelementptr inbounds i8* %call122, i32 16
  %50 = bitcast i8* %pats128 to %struct.patprog***
  store %struct.patprog** %49, %struct.patprog*** %50, align 4, !tbaa !5
  %add.ptr130 = getelementptr inbounds %struct.patprog** %49, i32 %12
  %51 = bitcast %struct.patprog** %add.ptr130 to i32*
  %prog131 = getelementptr inbounds i8* %call122, i32 20
  %52 = bitcast i8* %prog131 to i32**
  store i32* %51, i32** %52, align 4, !tbaa !5
  %add.ptr130.sum = add i32 %12, %sub.ptr.div
  %add.ptr133201 = getelementptr inbounds %struct.patprog** %49, i32 %add.ptr130.sum
  %53 = bitcast %struct.patprog** %add.ptr133201 to i8*
  %strs134 = getelementptr inbounds i8* %call122, i32 24
  %54 = bitcast i8* %strs134 to i8**
  store i8* %53, i8** %54, align 4, !tbaa !5
  %55 = bitcast %struct.patprog** %add.ptr130 to i8*
  %56 = bitcast i32* %add.ptr82 to i8*
  br i1 %23, label %cont138, label %ioc_bb137

ioc_bb137:                                        ; preds = %cont126
  tail call void @__ioc_report_conversion(i32 4591, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %cont138

cont138:                                          ; preds = %ioc_bb137, %cont126
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 %19, i32 4, i1 false)
  %57 = load i8** %54, align 4, !tbaa !5
  %strs140 = getelementptr inbounds %struct.eprog* %prog, i32 0, i32 6
  %58 = load i8** %strs140, align 4, !tbaa !5
  %add.ptr141 = getelementptr inbounds i8* %58, i32 %6
  br i1 %11, label %cont144, label %ioc_bb143

ioc_bb143:                                        ; preds = %cont138
  tail call void @__ioc_report_conversion(i32 4592, i32 50, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %35, i8 1) nounwind
  br label %cont144

cont144:                                          ; preds = %ioc_bb143, %cont138
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %57, i8* %add.ptr141, i32 %9, i32 1, i1 false)
  %dump = getelementptr inbounds i8* %call122, i32 32
  %59 = bitcast i8* %dump to %struct.funcdump**
  store %struct.funcdump* null, %struct.funcdump** %59, align 4, !tbaa !5
  br label %if.end145

if.end145:                                        ; preds = %cont144, %cont116
  %ret.0 = phi %struct.eprog* [ %prog, %cont116 ], [ %47, %cont144 ]
  %pp.0 = phi %struct.patprog** [ %45, %cont116 ], [ %49, %cont144 ]
  %len146 = getelementptr inbounds %struct.eprog* %ret.0, i32 0, i32 1
  store i32 %37, i32* %len146, align 4, !tbaa !3
  %npats147 = getelementptr inbounds %struct.eprog* %ret.0, i32 0, i32 2
  store i32 %12, i32* %npats147, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end145
  %i.0 = phi i32 [ %12, %if.end145 ], [ %61, %for.body ]
  %pp.1 = phi %struct.patprog** [ %pp.0, %if.end145 ], [ %incdec.ptr151, %for.body ]
  %60 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb148, label %cont149

ioc_bb148:                                        ; preds = %for.cond
  %63 = sext i32 %i.0 to i64
  tail call void @__ioc_report_add_overflow(i32 4597, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %63, i64 -1, i8 13) nounwind
  br label %cont149

cont149:                                          ; preds = %for.cond, %ioc_bb148
  %tobool150 = icmp eq i32 %i.0, 0
  br i1 %tobool150, label %for.end, label %for.body

for.body:                                         ; preds = %cont149
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %pp.1, align 4, !tbaa !5
  %incdec.ptr151 = getelementptr inbounds %struct.patprog** %pp.1, i32 1
  br label %for.cond

for.end:                                          ; preds = %cont149
  %shf = getelementptr inbounds %struct.eprog* %ret.0, i32 0, i32 7
  store %struct.shfunc* null, %struct.shfunc** %shf, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %if.end43, %cont61, %lor.lhs.false63, %if.end, %entry, %for.end
  %retval.0 = phi %struct.eprog* [ %ret.0, %for.end ], [ null, %entry ], [ %prog, %if.end ], [ %prog, %lor.lhs.false63 ], [ %prog, %cont61 ], [ %prog, %if.end43 ]
  ret %struct.eprog* %retval.0
}

define i32 @doshfunc(%struct.shfunc* nocapture %shfunc, %union.linkroot* %doshargs, i32 %noreturnval) nounwind {
entry:
  %saveopts.sroa.0 = alloca [100 x i8], align 1
  %saveopts.sroa.2 = alloca [27 x i8], align 1
  %saveopts.sroa.5 = alloca [14 x i8], align 1
  %saveopts.sroa.7 = alloca [21 x i8], align 1
  %fstack = alloca %struct.funcstack, align 4
  %0 = load i8** @scriptname, align 4, !tbaa !5
  %nam = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 0, i32 1
  %1 = load i8** %nam, align 4, !tbaa !5
  %flags2 = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 0, i32 2
  %2 = load i32* %flags2, align 4, !tbaa !3
  %call = call i8* @dupstring(i8* %1) nounwind
  call void @pushheap() nounwind
  %3 = load i32* @breaks, align 4, !tbaa !3
  %4 = load i32* @trap_state, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* @trap_return, align 4, !tbaa !3
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 -1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  %9 = sext i32 %5 to i64
  call void @__ioc_report_add_overflow(i32 4281, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %9, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  store i32 %7, i32* @trap_return, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont, %entry
  %10 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %10, 2147483648
  %11 = icmp ult i64 %.off, 4294967296
  br i1 %11, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.end
  call void @__ioc_report_conversion(i32 4282, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.end
  %12 = load i32* @numpipestats, align 4, !tbaa !3
  %tobool = icmp ne i32 %noreturnval, 0
  br i1 %tobool, label %if.then5, label %if.end12

if.then5:                                         ; preds = %cont4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %if.then5
  %14 = sext i32 %12 to i64
  call void @__ioc_report_conversion(i32 4289, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %if.then5
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  %18 = zext i32 %12 to i64
  call void @__ioc_report_mul_overflow(i32 4289, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %18, i8 5) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %call11 = call i8* @zhalloc(i32 %16) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call11, i8* bitcast ([256 x i32]* @pipestats to i8*), i32 %16, i32 4, i1 false)
  br label %if.end12

if.end12:                                         ; preds = %cont10, %cont4
  %oldpipestats.0 = phi i8* [ %call11, %cont10 ], [ null, %cont4 ]
  call void @starttrapscope() nounwind
  %19 = load i8*** @pparams, align 4, !tbaa !5
  %and = and i32 %2, 512
  %tobool17 = icmp eq i32 %and, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  %call19 = call i8* @dupstring(i8* %1) nounwind
  store i8* %call19, i8** @scriptname, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.end12, %if.then18
  %20 = load i64* @zoptind, align 8, !tbaa !0
  %.off210 = add i64 %20, 2147483648
  %21 = icmp ult i64 %.off210, 4294967296
  br i1 %21, label %cont24, label %ioc_bb23

ioc_bb23:                                         ; preds = %if.end20
  call void @__ioc_report_conversion(i32 4297, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont24

cont24:                                           ; preds = %ioc_bb23, %if.end20
  store i64 1, i64* @zoptind, align 8, !tbaa !0
  %22 = load i32* @optcind, align 4, !tbaa !3
  store i32 0, i32* @optcind, align 4, !tbaa !3
  %saveopts.sroa.0.0.idx175 = getelementptr inbounds [100 x i8]* %saveopts.sroa.0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %saveopts.sroa.0.0.idx175, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 0), i32 100, i32 1, i1 false)
  %saveopts.sroa.1.100.copyload177 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 100), align 1
  %saveopts.sroa.2.101.idx179 = getelementptr inbounds [27 x i8]* %saveopts.sroa.2, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %saveopts.sroa.2.101.idx179, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 101), i32 27, i32 1, i1 false)
  %saveopts.sroa.3.128.copyload181 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1
  %saveopts.sroa.4.129.copyload183 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1
  %saveopts.sroa.5.130.idx185 = getelementptr inbounds [14 x i8]* %saveopts.sroa.5, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %saveopts.sroa.5.130.idx185, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), i32 14, i32 1, i1 false)
  %saveopts.sroa.6.144.copyload187 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1
  %saveopts.sroa.7.145.idx189 = getelementptr inbounds [21 x i8]* %saveopts.sroa.7, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %saveopts.sroa.7.145.idx189, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 145), i32 21, i32 1, i1 false)
  %saveopts.sroa.8.166.copyload191 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1
  %saveopts.sroa.9.167.copyload193 = load i16* bitcast (i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167) to i16*), align 1
  %23 = load i32* @emulation, align 4, !tbaa !3
  %24 = load i32* @sticky_emulation, align 4, !tbaa !3
  %emulation = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 4
  %25 = load i32* %emulation, align 4, !tbaa !3
  %tobool26 = icmp eq i32 %25, 0
  %cmp28 = icmp eq i32 %24, %25
  %or.cond = or i1 %tobool26, %cmp28
  br i1 %or.cond, label %cont36, label %if.then30

if.then30:                                        ; preds = %cont24
  store i32 %25, i32* @sticky_emulation, align 4, !tbaa !3
  store i32 %25, i32* @emulation, align 4, !tbaa !3
  call void @installemulation() nounwind
  br label %cont36

cont36:                                           ; preds = %cont24, %if.then30
  %restore_sticky.0 = phi i32 [ 1, %if.then30 ], [ 0, %cont24 ]
  %and37 = and i32 %2, 2048
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %cont44, label %cont41

cont41:                                           ; preds = %cont36
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  br label %cont44

cont44:                                           ; preds = %cont41, %cont36
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1, !tbaa !1
  %tobool45 = icmp eq %union.linkroot* %doshargs, null
  br i1 %tobool45, label %if.else65, label %if.then46

if.then46:                                        ; preds = %cont44
  %first = getelementptr inbounds %union.linkroot* %doshargs, i32 0, i32 0, i32 0
  %26 = load %struct.linknode** %first, align 4, !tbaa !5
  %call48 = call i32 @countlinknodes(%union.linkroot* %doshargs) nounwind
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call48, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %if.then46
  %30 = sext i32 %call48 to i64
  call void @__ioc_report_add_overflow(i32 4332, i32 59, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 1, i64 %30, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %if.then46, %ioc_bb49
  %31 = icmp sgt i32 %28, -1
  br i1 %31, label %cont53, label %ioc_bb52

ioc_bb52:                                         ; preds = %cont50
  %32 = sext i32 %28 to i64
  call void @__ioc_report_conversion(i32 4332, i32 56, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont53

cont53:                                           ; preds = %ioc_bb52, %cont50
  %33 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb54, label %cont55

ioc_bb54:                                         ; preds = %cont53
  %36 = zext i32 %28 to i64
  call void @__ioc_report_mul_overflow(i32 4332, i32 54, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %36, i8 5) nounwind
  br label %cont55

cont55:                                           ; preds = %cont53, %ioc_bb54
  %call56 = call i8* @zshcalloc(i32 %34) nounwind
  %37 = bitcast i8* %call56 to i8**
  store i8** %37, i8*** @pparams, align 4, !tbaa !5
  %38 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 54), align 1, !tbaa !1
  %tobool57 = icmp eq i8 %38, 0
  br i1 %tobool57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %cont55
  %39 = load i8** @argzero, align 4, !tbaa !5
  %dat = getelementptr inbounds %struct.linknode* %26, i32 0, i32 2
  %40 = load i8** %dat, align 4, !tbaa !5
  %call59 = call i8* @ztrdup(i8* %40) nounwind
  store i8* %call59, i8** @argzero, align 4, !tbaa !5
  br label %if.end60

if.end60:                                         ; preds = %cont55, %if.then58
  %oargv0.0 = phi i8* [ %39, %if.then58 ], [ null, %cont55 ]
  %node47.0.in213 = getelementptr inbounds %struct.linknode* %26, i32 0, i32 0
  %node47.0214 = load %struct.linknode** %node47.0.in213, align 4
  %tobool61215 = icmp eq %struct.linknode* %node47.0214, null
  br i1 %tobool61215, label %if.end71, label %for.body

for.body:                                         ; preds = %if.end60, %for.body
  %node47.0217 = phi %struct.linknode* [ %node47.0, %for.body ], [ %node47.0214, %if.end60 ]
  %x.0216 = phi i8** [ %incdec.ptr, %for.body ], [ %37, %if.end60 ]
  %dat62 = getelementptr inbounds %struct.linknode* %node47.0217, i32 0, i32 2
  %41 = load i8** %dat62, align 4, !tbaa !5
  %call63 = call i8* @ztrdup(i8* %41) nounwind
  store i8* %call63, i8** %x.0216, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8** %x.0216, i32 1
  %node47.0.in = getelementptr inbounds %struct.linknode* %node47.0217, i32 0, i32 0
  %node47.0 = load %struct.linknode** %node47.0.in, align 4
  %tobool61 = icmp eq %struct.linknode* %node47.0, null
  br i1 %tobool61, label %if.end71, label %for.body

if.else65:                                        ; preds = %cont44
  %call66 = call i8* @zshcalloc(i32 4) nounwind
  %42 = bitcast i8* %call66 to i8**
  store i8** %42, i8*** @pparams, align 4, !tbaa !5
  %43 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 54), align 1, !tbaa !1
  %tobool67 = icmp eq i8 %43, 0
  br i1 %tobool67, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.else65
  %44 = load i8** @argzero, align 4, !tbaa !5
  %call69 = call i8* @ztrdup(i8* %44) nounwind
  store i8* %call69, i8** @argzero, align 4, !tbaa !5
  br label %if.end71

if.end71:                                         ; preds = %if.end60, %for.body, %if.else65, %if.then68
  %oargv0.1 = phi i8* [ %44, %if.then68 ], [ null, %if.else65 ], [ %oargv0.0, %for.body ], [ %oargv0.0, %if.end60 ]
  %45 = load i32* @doshfunc.funcdepth, align 4, !tbaa !3
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 1)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb72, label %cont73

ioc_bb72:                                         ; preds = %if.end71
  %49 = sext i32 %45 to i64
  call void @__ioc_report_add_overflow(i32 4350, i32 7, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %49, i64 1, i8 13) nounwind
  br label %cont73

cont73:                                           ; preds = %if.end71, %ioc_bb72
  store i32 %47, i32* @doshfunc.funcdepth, align 4, !tbaa !3
  %cmp74 = icmp sgt i32 %47, 1000
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %cont73
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([38 x i8]* @.str15, i32 0, i32 0)) nounwind
  br label %undoshfunc

if.end77:                                         ; preds = %cont73
  %call78 = call i8* @dupstring(i8* %1) nounwind
  %name79 = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 1
  store i8* %call78, i8** %name79, align 4, !tbaa !5
  %50 = load %struct.funcstack** @funcstack, align 4, !tbaa !5
  %tobool80 = icmp eq %struct.funcstack* %50, null
  br i1 %tobool80, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end77
  %name81 = getelementptr inbounds %struct.funcstack* %50, i32 0, i32 1
  %51 = load i8** %name81, align 4, !tbaa !5
  br label %cond.end86

cond.false:                                       ; preds = %if.end77
  %tobool82 = icmp ne i8* %oargv0.1, null
  %52 = load i8** @argzero, align 4, !tbaa !5
  %cond = select i1 %tobool82, i8* %oargv0.1, i8* %52
  %call85 = call i8* @dupstring(i8* %cond) nounwind
  %.pre = load %struct.funcstack** @funcstack, align 4, !tbaa !5
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false, %cond.true
  %53 = phi %struct.funcstack* [ %50, %cond.true ], [ %.pre, %cond.false ]
  %cond87 = phi i8* [ %51, %cond.true ], [ %call85, %cond.false ]
  %caller = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 3
  store i8* %cond87, i8** %caller, align 4, !tbaa !5
  %54 = load i64* @lineno, align 8, !tbaa !0
  %lineno = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 5
  store i64 %54, i64* %lineno, align 4, !tbaa !0
  %prev = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 0
  store %struct.funcstack* %53, %struct.funcstack** %prev, align 4, !tbaa !5
  %tp = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 6
  store i32 1, i32* %tp, align 4, !tbaa !3
  store %struct.funcstack* %fstack, %struct.funcstack** @funcstack, align 4, !tbaa !5
  %lineno88 = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 2
  %55 = load i64* %lineno88, align 4, !tbaa !0
  %flineno = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 4
  store i64 %55, i64* %flineno, align 4, !tbaa !0
  %filename = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 1
  %56 = load i8** %filename, align 4, !tbaa !5
  %call89 = call i8* @dupstring(i8* %56) nounwind
  %filename90 = getelementptr inbounds %struct.funcstack* %fstack, i32 0, i32 2
  store i8* %call89, i8** %filename90, align 4, !tbaa !5
  %funcdef = getelementptr inbounds %struct.shfunc* %shfunc, i32 0, i32 3
  %57 = load %struct.eprog** %funcdef, align 4, !tbaa !5
  %flags91 = getelementptr inbounds %struct.eprog* %57, i32 0, i32 0
  %58 = load i32* %flags91, align 4, !tbaa !3
  %and92 = and i32 %58, 8
  %tobool93 = icmp eq i32 %and92, 0
  br i1 %tobool93, label %if.end107, label %if.then94

if.then94:                                        ; preds = %cond.end86
  %and96 = and i32 %58, -9
  store i32 %and96, i32* %flags91, align 4, !tbaa !3
  %59 = load i8** %name79, align 4, !tbaa !5
  call void @runshfunc(%struct.eprog* %57, %struct.funcwrap* null, i8* %59)
  %60 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode = getelementptr inbounds %struct.hashtable* %60, i32 0, i32 9
  %61 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !5
  %call98 = call %struct.hashnode* %61(%struct.hashtable* %60, i8* %call) nounwind
  %tobool99 = icmp eq %struct.hashnode* %call98, null
  br i1 %tobool99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.then94
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([33 x i8]* @.str14, i32 0, i32 0), i8* %call) nounwind
  br i1 %tobool, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.then100
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %doneshfunc

if.else103:                                       ; preds = %if.then100
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %doneshfunc

if.end105:                                        ; preds = %if.then94
  %funcdef106 = getelementptr inbounds %struct.hashnode* %call98, i32 2
  %62 = bitcast %struct.hashnode* %funcdef106 to %struct.eprog**
  %63 = load %struct.eprog** %62, align 4, !tbaa !5
  br label %if.end107

if.end107:                                        ; preds = %cond.end86, %if.end105
  %prog.0 = phi %struct.eprog* [ %63, %if.end105 ], [ %57, %cond.end86 ]
  %64 = load %struct.funcwrap** @wrappers, align 4, !tbaa !5
  %65 = load i8** %name79, align 4, !tbaa !5
  call void @runshfunc(%struct.eprog* %prog.0, %struct.funcwrap* %64, i8* %65)
  br label %doneshfunc

doneshfunc:                                       ; preds = %if.then102, %if.else103, %if.end107
  %66 = load %struct.funcstack** %prev, align 4, !tbaa !5
  store %struct.funcstack* %66, %struct.funcstack** @funcstack, align 4, !tbaa !5
  br label %undoshfunc

undoshfunc:                                       ; preds = %doneshfunc, %if.then76
  %67 = load i32* @doshfunc.funcdepth, align 4, !tbaa !3
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %67, i32 -1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb110, label %cont111

ioc_bb110:                                        ; preds = %undoshfunc
  %71 = sext i32 %67 to i64
  call void @__ioc_report_add_overflow(i32 4388, i32 3, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %71, i64 -1, i8 13) nounwind
  br label %cont111

cont111:                                          ; preds = %undoshfunc, %ioc_bb110
  store i32 %69, i32* @doshfunc.funcdepth, align 4, !tbaa !3
  %72 = load i32* @retflag, align 4, !tbaa !3
  %tobool112 = icmp eq i32 %72, 0
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %cont111
  store i32 0, i32* @retflag, align 4, !tbaa !3
  store i32 %3, i32* @breaks, align 4, !tbaa !3
  br label %if.end114

if.end114:                                        ; preds = %cont111, %if.then113
  %73 = load i8*** @pparams, align 4, !tbaa !5
  call void @freearray(i8** %73) nounwind
  %tobool115 = icmp eq i8* %oargv0.1, null
  br i1 %tobool115, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.end114
  %74 = load i8** @argzero, align 4, !tbaa !5
  call void @zsfree(i8* %74) nounwind
  store i8* %oargv0.1, i8** @argzero, align 4, !tbaa !5
  br label %if.end117

if.end117:                                        ; preds = %if.end114, %if.then116
  store i8** %19, i8*** @pparams, align 4, !tbaa !5
  store i32 %22, i32* @optcind, align 4, !tbaa !3
  %sext = shl i64 %20, 32
  %conv118 = ashr exact i64 %sext, 32
  store i64 %conv118, i64* @zoptind, align 8, !tbaa !0
  store i8* %0, i8** @scriptname, align 4, !tbaa !5
  %tobool119 = icmp eq i32 %restore_sticky.0, 0
  br i1 %tobool119, label %if.else121, label %if.then120

if.then120:                                       ; preds = %if.end117
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 0), i8* %saveopts.sroa.0.0.idx175, i32 100, i32 1, i1 false)
  store i8 %saveopts.sroa.1.100.copyload177, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 100), align 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 101), i8* %saveopts.sroa.2.101.idx179, i32 27, i32 1, i1 false)
  store i8 %saveopts.sroa.3.128.copyload181, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1
  store i8 %saveopts.sroa.4.129.copyload183, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 129), align 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), i8* %saveopts.sroa.5.130.idx185, i32 14, i32 1, i1 false)
  store i8 %saveopts.sroa.6.144.copyload187, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 145), i8* %saveopts.sroa.7.145.idx189, i32 21, i32 1, i1 false)
  store i8 %saveopts.sroa.8.166.copyload191, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1
  store i16 %saveopts.sroa.9.167.copyload193, i16* bitcast (i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167) to i16*), align 1
  store i32 %23, i32* @emulation, align 4, !tbaa !3
  store i32 %24, i32* @sticky_emulation, align 4, !tbaa !3
  br label %if.end130

if.else121:                                       ; preds = %if.end117
  %75 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 100), align 1, !tbaa !1
  %tobool122 = icmp eq i8 %75, 0
  br i1 %tobool122, label %if.else125, label %if.then123

if.then123:                                       ; preds = %if.else121
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 0), i8* %saveopts.sroa.0.0.idx175, i32 100, i32 1, i1 false)
  store i8 %saveopts.sroa.1.100.copyload177, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 100), align 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 101), i8* %saveopts.sroa.2.101.idx179, i32 27, i32 1, i1 false)
  store i8 %saveopts.sroa.3.128.copyload181, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), i8* %saveopts.sroa.5.130.idx185, i32 14, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 145), i8* %saveopts.sroa.7.145.idx189, i32 21, i32 1, i1 false)
  store i8 %saveopts.sroa.8.166.copyload191, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1
  store i16 %saveopts.sroa.9.167.copyload193, i16* bitcast (i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 167) to i16*), align 1
  store i32 %23, i32* @emulation, align 4, !tbaa !3
  br label %if.end130

if.else125:                                       ; preds = %if.else121
  store i8 %saveopts.sroa.8.166.copyload191, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  store i8 %saveopts.sroa.3.128.copyload181, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1, !tbaa !1
  store i8 %saveopts.sroa.1.100.copyload177, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 100), align 1, !tbaa !1
  br label %if.end130

if.end130:                                        ; preds = %if.then123, %if.else125, %if.then120
  call void @endtrapscope() nounwind
  %76 = load i32* @trap_state, align 4, !tbaa !3
  %cmp131 = icmp eq i32 %76, 1
  br i1 %cmp131, label %if.then133, label %if.end136

if.then133:                                       ; preds = %if.end130
  %77 = load i32* @trap_return, align 4, !tbaa !3
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %77, i32 1)
  %79 = extractvalue { i32, i1 } %78, 0
  %80 = extractvalue { i32, i1 } %78, 1
  br i1 %80, label %ioc_bb134, label %cont135

ioc_bb134:                                        ; preds = %if.then133
  %81 = sext i32 %77 to i64
  call void @__ioc_report_add_overflow(i32 4428, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %81, i64 1, i8 13) nounwind
  br label %cont135

cont135:                                          ; preds = %if.then133, %ioc_bb134
  store i32 %79, i32* @trap_return, align 4, !tbaa !3
  br label %if.end136

if.end136:                                        ; preds = %cont135, %if.end130
  %82 = load i64* @lastval, align 8, !tbaa !0
  %.off211 = add i64 %82, 2147483648
  %83 = icmp ult i64 %.off211, 4294967296
  br i1 %83, label %cont140, label %ioc_bb139

ioc_bb139:                                        ; preds = %if.end136
  call void @__ioc_report_conversion(i32 4429, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %82, i8 1) nounwind
  br label %cont140

cont140:                                          ; preds = %ioc_bb139, %if.end136
  %conv141 = trunc i64 %82 to i32
  br i1 %tobool, label %if.then143, label %if.end150

if.then143:                                       ; preds = %cont140
  %sext212 = shl i64 %10, 32
  %conv144 = ashr exact i64 %sext212, 32
  store i64 %conv144, i64* @lastval, align 8, !tbaa !0
  store i32 %12, i32* @numpipestats, align 4, !tbaa !3
  %84 = icmp sgt i32 %12, -1
  br i1 %84, label %cont147, label %ioc_bb146

ioc_bb146:                                        ; preds = %if.then143
  %85 = sext i32 %12 to i64
  call void @__ioc_report_conversion(i32 4433, i32 50, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %85, i8 1) nounwind
  br label %cont147

cont147:                                          ; preds = %ioc_bb146, %if.then143
  %86 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  br i1 %88, label %ioc_bb148, label %cont149

ioc_bb148:                                        ; preds = %cont147
  %89 = zext i32 %12 to i64
  call void @__ioc_report_mul_overflow(i32 4433, i32 48, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %89, i8 5) nounwind
  br label %cont149

cont149:                                          ; preds = %cont147, %ioc_bb148
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast ([256 x i32]* @pipestats to i8*), i8* %oldpipestats.0, i32 %87, i32 4, i1 false)
  br label %if.end150

if.end150:                                        ; preds = %cont149, %cont140
  call void @popheap() nounwind
  %90 = load i32* @exit_pending, align 4, !tbaa !3
  %tobool151 = icmp eq i32 %90, 0
  br i1 %tobool151, label %if.end160, label %if.then152

if.then152:                                       ; preds = %if.end150
  %91 = load i32* @locallevel, align 4, !tbaa !3
  %92 = load i32* @forklevel, align 4, !tbaa !3
  %cmp153 = icmp sgt i32 %91, %92
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.then152
  store i32 1, i32* @retflag, align 4, !tbaa !3
  %93 = load i32* @loops, align 4, !tbaa !3
  store i32 %93, i32* @breaks, align 4, !tbaa !3
  br label %if.end160

if.else156:                                       ; preds = %if.then152
  store i32 1, i32* @stopmsg, align 4, !tbaa !3
  %shr = ashr i32 %90, 1
  call void @zexit(i32 %shr, i32 0) nounwind
  br label %if.end160

if.end160:                                        ; preds = %if.end150, %if.then155, %if.else156
  ret i32 %conv141
}

declare i8* @zhalloc(i32)

declare void @starttrapscope()

declare void @installemulation()

declare i32 @countlinknodes(%union.linkroot*)

define void @runshfunc(%struct.eprog* %prog, %struct.funcwrap* %wrap, i8* %name) nounwind {
entry:
  %0 = load i32* @underscoreused, align 4, !tbaa !3
  %1 = icmp sgt i32 %0, -1
  br i1 %1, label %cont1, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %0 to i64
  tail call void @__ioc_report_conversion(i32 4464, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont1

cont1:                                            ; preds = %ioc_bb, %entry
  %call = tail call i8* @zalloc(i32 %0) nounwind
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %while.cond.preheader

if.then:                                          ; preds = %cont1
  %3 = load i8** @zunderscore, align 4, !tbaa !5
  %4 = load i32* @underscoreused, align 4, !tbaa !3
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.then
  %6 = sext i32 %4 to i64
  tail call void @__ioc_report_conversion(i32 4466, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.then
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call, i8* %3, i32 %4, i32 1, i1 false)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cont4, %cont1
  %tobool552 = icmp eq %struct.funcwrap* %wrap, null
  br i1 %tobool552, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end31
  %wrap.addr.053 = phi %struct.funcwrap* [ %24, %if.end31 ], [ %wrap, %while.cond.preheader ]
  %module = getelementptr inbounds %struct.funcwrap* %wrap.addr.053, i32 0, i32 3
  %7 = load %struct.module** %module, align 4, !tbaa !5
  %wrapper = getelementptr inbounds %struct.module* %7, i32 0, i32 4
  %8 = load i32* %wrapper, align 4, !tbaa !3
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %while.body
  %12 = sext i32 %8 to i64
  tail call void @__ioc_report_add_overflow(i32 4468, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %12, i64 1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %while.body, %ioc_bb6
  store i32 %10, i32* %wrapper, align 4, !tbaa !3
  %handler = getelementptr inbounds %struct.funcwrap* %wrap.addr.053, i32 0, i32 2
  %13 = load i32 (%struct.eprog*, %struct.funcwrap*, i8*)** %handler, align 4, !tbaa !5
  %next = getelementptr inbounds %struct.funcwrap* %wrap.addr.053, i32 0, i32 0
  %14 = load %struct.funcwrap** %next, align 4, !tbaa !5
  %call8 = tail call i32 %13(%struct.eprog* %prog, %struct.funcwrap* %14, i8* %name) nounwind
  %15 = load %struct.module** %module, align 4, !tbaa !5
  %wrapper10 = getelementptr inbounds %struct.module* %15, i32 0, i32 4
  %16 = load i32* %wrapper10, align 4, !tbaa !3
  %17 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 -1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %cont7
  %20 = sext i32 %16 to i64
  tail call void @__ioc_report_add_overflow(i32 4470, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %20, i64 -1, i8 13) nounwind
  %.pre = load %struct.module** %module, align 4, !tbaa !5
  br label %cont12

cont12:                                           ; preds = %cont7, %ioc_bb11
  %21 = phi %struct.module* [ %15, %cont7 ], [ %.pre, %ioc_bb11 ]
  store i32 %18, i32* %wrapper10, align 4, !tbaa !3
  %wrapper14 = getelementptr inbounds %struct.module* %21, i32 0, i32 4
  %22 = load i32* %wrapper14, align 4, !tbaa !3
  %tobool15 = icmp eq i32 %22, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %cont12
  %flags = getelementptr inbounds %struct.module* %21, i32 0, i32 0, i32 2
  %23 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %23, 2
  %tobool21 = icmp eq i32 %and, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  %call24 = tail call i32 @unload_module(%struct.module* %21) nounwind
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %cont12, %if.then22
  %tobool26 = icmp eq i32 %call8, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end25
  br i1 %tobool, label %if.then29, label %return

if.then29:                                        ; preds = %if.then27
  tail call void @zfree(i8* %call, i32 %0) nounwind
  br label %return

if.end31:                                         ; preds = %if.end25
  %24 = load %struct.funcwrap** %next, align 4, !tbaa !5
  %tobool5 = icmp eq %struct.funcwrap* %24, null
  br i1 %tobool5, label %while.end, label %while.body

while.end:                                        ; preds = %if.end31, %while.cond.preheader
  tail call void @startparamscope() nounwind
  tail call void @execode(%struct.eprog* %prog, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0))
  br i1 %tobool, label %if.then34, label %if.end35

if.then34:                                        ; preds = %while.end
  tail call void @setunderscore(i8* %call)
  tail call void @zfree(i8* %call, i32 %0) nounwind
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %while.end
  tail call void @endparamscope() nounwind
  br label %return

return:                                           ; preds = %if.then27, %if.then29, %if.end35
  ret void
}

declare void @freearray(i8**)

declare void @endtrapscope()

declare void @zexit(i32, i32)

declare i32 @unload_module(%struct.module*)

declare void @startparamscope()

declare void @endparamscope()

declare %struct.eprog* @try_dump_file(i8*, i8*, i8*, i32*)

declare i64 @lseek64(i32, i64, i32) nounwind

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i32 @read(i32, i8* nocapture, i32)

declare i8* @metafy(i8*, i32, i32)

declare i8* @ecrawstr(%struct.eprog*, i32*, i32*)

declare void @free(i8* nocapture) nounwind

define void @execsave() nounwind {
entry:
  %call = tail call noalias i8* @malloc(i32 156) nounwind
  %0 = bitcast i8* %call to %struct.execstack*
  %1 = load i32* @list_pipe_pid, align 4, !tbaa !3
  %list_pipe_pid = getelementptr inbounds i8* %call, i32 4
  %2 = bitcast i8* %list_pipe_pid to i32*
  store i32 %1, i32* %2, align 4, !tbaa !3
  %3 = load i32* @nowait, align 4, !tbaa !3
  %nowait = getelementptr inbounds i8* %call, i32 8
  %4 = bitcast i8* %nowait to i32*
  store i32 %3, i32* %4, align 4, !tbaa !3
  %5 = load i32* @pline_level, align 4, !tbaa !3
  %pline_level = getelementptr inbounds i8* %call, i32 12
  %6 = bitcast i8* %pline_level to i32*
  store i32 %5, i32* %6, align 4, !tbaa !3
  %7 = load i32* @list_pipe_child, align 4, !tbaa !3
  %list_pipe_child = getelementptr inbounds i8* %call, i32 16
  %8 = bitcast i8* %list_pipe_child to i32*
  store i32 %7, i32* %8, align 4, !tbaa !3
  %9 = load i32* @list_pipe_job, align 4, !tbaa !3
  %list_pipe_job = getelementptr inbounds i8* %call, i32 20
  %10 = bitcast i8* %list_pipe_job to i32*
  store i32 %9, i32* %10, align 4, !tbaa !3
  %list_pipe_text = getelementptr inbounds i8* %call, i32 24
  %call1 = tail call i8* @strcpy(i8* %list_pipe_text, i8* getelementptr inbounds ([80 x i8]* @list_pipe_text, i32 0, i32 0)) nounwind
  %11 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %11, 2147483648
  %12 = icmp ult i64 %.off, 4294967296
  br i1 %12, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 4679, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %11 to i32
  %lastval = getelementptr inbounds i8* %call, i32 104
  %13 = bitcast i8* %lastval to i32*
  store i32 %conv, i32* %13, align 4, !tbaa !3
  %14 = load i32* @noeval, align 4, !tbaa !3
  %noeval = getelementptr inbounds i8* %call, i32 108
  %15 = bitcast i8* %noeval to i32*
  store i32 %14, i32* %15, align 4, !tbaa !3
  %16 = load i32* @badcshglob, align 4, !tbaa !3
  %badcshglob = getelementptr inbounds i8* %call, i32 112
  %17 = bitcast i8* %badcshglob to i32*
  store i32 %16, i32* %17, align 4, !tbaa !3
  %18 = load i32* @cmdoutpid, align 4, !tbaa !3
  %cmdoutpid = getelementptr inbounds i8* %call, i32 116
  %19 = bitcast i8* %cmdoutpid to i32*
  store i32 %18, i32* %19, align 4, !tbaa !3
  %20 = load i32* @cmdoutval, align 4, !tbaa !3
  %cmdoutval = getelementptr inbounds i8* %call, i32 120
  %21 = bitcast i8* %cmdoutval to i32*
  store i32 %20, i32* %21, align 4, !tbaa !3
  %22 = load i32* @use_cmdoutval, align 4, !tbaa !3
  %use_cmdoutval = getelementptr inbounds i8* %call, i32 124
  %23 = bitcast i8* %use_cmdoutval to i32*
  store i32 %22, i32* %23, align 4, !tbaa !3
  %24 = load i32* @trap_return, align 4, !tbaa !3
  %trap_return = getelementptr inbounds i8* %call, i32 128
  %25 = bitcast i8* %trap_return to i32*
  store i32 %24, i32* %25, align 4, !tbaa !3
  %26 = load i32* @trap_state, align 4, !tbaa !3
  %trap_state = getelementptr inbounds i8* %call, i32 132
  %27 = bitcast i8* %trap_state to i32*
  store i32 %26, i32* %27, align 4, !tbaa !3
  %28 = load i32* @trapisfunc, align 4, !tbaa !3
  %trapisfunc = getelementptr inbounds i8* %call, i32 136
  %29 = bitcast i8* %trapisfunc to i32*
  store i32 %28, i32* %29, align 4, !tbaa !3
  %30 = load i32* @traplocallevel, align 4, !tbaa !3
  %traplocallevel = getelementptr inbounds i8* %call, i32 140
  %31 = bitcast i8* %traplocallevel to i32*
  store i32 %30, i32* %31, align 4, !tbaa !3
  %32 = load i32* @noerrs, align 4, !tbaa !3
  %noerrs = getelementptr inbounds i8* %call, i32 144
  %33 = bitcast i8* %noerrs to i32*
  store i32 %32, i32* %33, align 4, !tbaa !3
  %34 = load i32* @subsh_close, align 4, !tbaa !3
  %subsh_close = getelementptr inbounds i8* %call, i32 148
  %35 = bitcast i8* %subsh_close to i32*
  store i32 %34, i32* %35, align 4, !tbaa !3
  %36 = load i8** @zunderscore, align 4, !tbaa !5
  %call2 = tail call i8* @ztrdup(i8* %36) nounwind
  %underscore = getelementptr inbounds i8* %call, i32 152
  %37 = bitcast i8* %underscore to i8**
  store i8* %call2, i8** %37, align 4, !tbaa !5
  %38 = load %struct.execstack** @exstack, align 4, !tbaa !5
  %next = bitcast i8* %call to %struct.execstack**
  store %struct.execstack* %38, %struct.execstack** %next, align 4, !tbaa !5
  store %struct.execstack* %0, %struct.execstack** @exstack, align 4, !tbaa !5
  store i32 0, i32* @cmdoutpid, align 4, !tbaa !3
  store i32 0, i32* @noerrs, align 4, !tbaa !3
  ret void
}

declare noalias i8* @malloc(i32) nounwind

define void @execrestore() nounwind {
entry:
  %0 = load %struct.execstack** @exstack, align 4, !tbaa !5
  %list_pipe_pid = getelementptr inbounds %struct.execstack* %0, i32 0, i32 1
  %1 = load i32* %list_pipe_pid, align 4, !tbaa !3
  store i32 %1, i32* @list_pipe_pid, align 4, !tbaa !3
  %nowait = getelementptr inbounds %struct.execstack* %0, i32 0, i32 2
  %2 = load i32* %nowait, align 4, !tbaa !3
  store i32 %2, i32* @nowait, align 4, !tbaa !3
  %pline_level = getelementptr inbounds %struct.execstack* %0, i32 0, i32 3
  %3 = load i32* %pline_level, align 4, !tbaa !3
  store i32 %3, i32* @pline_level, align 4, !tbaa !3
  %list_pipe_child = getelementptr inbounds %struct.execstack* %0, i32 0, i32 4
  %4 = load i32* %list_pipe_child, align 4, !tbaa !3
  store i32 %4, i32* @list_pipe_child, align 4, !tbaa !3
  %list_pipe_job = getelementptr inbounds %struct.execstack* %0, i32 0, i32 5
  %5 = load i32* %list_pipe_job, align 4, !tbaa !3
  store i32 %5, i32* @list_pipe_job, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.execstack* %0, i32 0, i32 6, i32 0
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([80 x i8]* @list_pipe_text, i32 0, i32 0), i8* %arraydecay) nounwind
  %6 = load %struct.execstack** @exstack, align 4, !tbaa !5
  %lastval = getelementptr inbounds %struct.execstack* %6, i32 0, i32 7
  %7 = load i32* %lastval, align 4, !tbaa !3
  %conv = sext i32 %7 to i64
  store i64 %conv, i64* @lastval, align 8, !tbaa !0
  %noeval = getelementptr inbounds %struct.execstack* %6, i32 0, i32 8
  %8 = load i32* %noeval, align 4, !tbaa !3
  store i32 %8, i32* @noeval, align 4, !tbaa !3
  %badcshglob = getelementptr inbounds %struct.execstack* %6, i32 0, i32 9
  %9 = load i32* %badcshglob, align 4, !tbaa !3
  store i32 %9, i32* @badcshglob, align 4, !tbaa !3
  %cmdoutpid = getelementptr inbounds %struct.execstack* %6, i32 0, i32 10
  %10 = load i32* %cmdoutpid, align 4, !tbaa !3
  store i32 %10, i32* @cmdoutpid, align 4, !tbaa !3
  %cmdoutval = getelementptr inbounds %struct.execstack* %6, i32 0, i32 11
  %11 = load i32* %cmdoutval, align 4, !tbaa !3
  store i32 %11, i32* @cmdoutval, align 4, !tbaa !3
  %use_cmdoutval = getelementptr inbounds %struct.execstack* %6, i32 0, i32 12
  %12 = load i32* %use_cmdoutval, align 4, !tbaa !3
  store i32 %12, i32* @use_cmdoutval, align 4, !tbaa !3
  %trap_return = getelementptr inbounds %struct.execstack* %6, i32 0, i32 13
  %13 = load i32* %trap_return, align 4, !tbaa !3
  store i32 %13, i32* @trap_return, align 4, !tbaa !3
  %trap_state = getelementptr inbounds %struct.execstack* %6, i32 0, i32 14
  %14 = load i32* %trap_state, align 4, !tbaa !3
  store i32 %14, i32* @trap_state, align 4, !tbaa !3
  %trapisfunc = getelementptr inbounds %struct.execstack* %6, i32 0, i32 15
  %15 = load i32* %trapisfunc, align 4, !tbaa !3
  store i32 %15, i32* @trapisfunc, align 4, !tbaa !3
  %traplocallevel = getelementptr inbounds %struct.execstack* %6, i32 0, i32 16
  %16 = load i32* %traplocallevel, align 4, !tbaa !3
  store i32 %16, i32* @traplocallevel, align 4, !tbaa !3
  %noerrs = getelementptr inbounds %struct.execstack* %6, i32 0, i32 17
  %17 = load i32* %noerrs, align 4, !tbaa !3
  store i32 %17, i32* @noerrs, align 4, !tbaa !3
  %subsh_close = getelementptr inbounds %struct.execstack* %6, i32 0, i32 18
  %18 = load i32* %subsh_close, align 4, !tbaa !3
  store i32 %18, i32* @subsh_close, align 4, !tbaa !3
  %underscore = getelementptr inbounds %struct.execstack* %6, i32 0, i32 19
  %19 = load i8** %underscore, align 4, !tbaa !5
  tail call void @setunderscore(i8* %19)
  %20 = load %struct.execstack** @exstack, align 4, !tbaa !5
  %underscore1 = getelementptr inbounds %struct.execstack* %20, i32 0, i32 19
  %21 = load i8** %underscore1, align 4, !tbaa !5
  tail call void @zsfree(i8* %21) nounwind
  %22 = load %struct.execstack** @exstack, align 4, !tbaa !5
  %next = getelementptr inbounds %struct.execstack* %22, i32 0, i32 0
  %23 = load %struct.execstack** %next, align 4, !tbaa !5
  %24 = bitcast %struct.execstack* %22 to i8*
  tail call void @free(i8* %24) nounwind
  store %struct.execstack* %23, %struct.execstack** @exstack, align 4, !tbaa !5
  ret void
}

declare i32 @pipe(i32*) nounwind

declare i32 @movefd(i32)

declare i8* @dupstrpfx(i8*, i32)

declare void @unsettrap(i32)

declare i32 @settrap(i32, %struct.eprog*, i32)

declare i32 @isatty(i32) nounwind

declare i32 @setpgid(i32, i32) nounwind

declare i32 @killpg(i32, i32) nounwind

declare void @attachtty(i32)

declare void @release_pgrp()

declare void (i32)* @signal(i32, void (i32)*) nounwind

declare void @clearjobtab(i32)

declare void @get_usage()

declare i32 @expandjobtab()

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare i32 @fork() nounwind

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @zhandler(i32)

declare i32 @initjob()

define internal fastcc void @execpline2(%struct.estate* %state, i32 %pcode, i32 %how, i32 %input, i32 %output, i32 %last1) nounwind {
entry:
  %pipes = alloca [2 x i32], align 4
  %synch = alloca [2 x i32], align 4
  %bgtime = alloca %struct.timeval, align 4
  %dummy = alloca i8, align 1
  %0 = load i32* @breaks, align 4, !tbaa !3
  %1 = load i32* @retflag, align 4, !tbaa !3
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %if.end203

if.end:                                           ; preds = %entry
  %4 = load i32* @intrap, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %4, 0
  %5 = load i32* @trapisfunc, align 4, !tbaa !3
  %tobool3 = icmp ne i32 %5, 0
  %or.cond204 = or i1 %tobool2, %tobool3
  br i1 %or.cond204, label %land.lhs.true5, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %6 = load i32* @traplocallevel, align 4, !tbaa !3
  %7 = load i32* @locallevel, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, %7
  %8 = load i32* @ineval, align 4, !tbaa !3
  %tobool6 = icmp ne i32 %8, 0
  %or.cond205 = or i1 %cmp, %tobool6
  br i1 %or.cond205, label %if.end23, label %cont9

land.lhs.true5:                                   ; preds = %if.end
  %.old = load i32* @ineval, align 4, !tbaa !3
  %tobool6.old = icmp eq i32 %.old, 0
  br i1 %tobool6.old, label %cont9, label %if.end23

cont9:                                            ; preds = %land.lhs.true5, %land.lhs.true4
  %shr = lshr i32 %pcode, 6
  %tobool11 = icmp eq i32 %shr, 0
  br i1 %tobool11, label %if.end23, label %cont20

cont20:                                           ; preds = %cont9
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %shr, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb21, label %cont22

ioc_bb21:                                         ; preds = %cont20
  %12 = zext i32 %shr to i64
  call void @__ioc_report_sub_overflow(i32 1513, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind
  br label %cont22

cont22:                                           ; preds = %cont20, %ioc_bb21
  %conv = zext i32 %10 to i64
  store i64 %conv, i64* @lineno, align 8, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true5, %cont9, %cont22, %land.lhs.true4
  %13 = load i32* @pline_level, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %13, 1
  br i1 %cmp24, label %cont30, label %cont59

cont30:                                           ; preds = %if.end23
  %and = and i32 %how, 4
  %tobool31 = icmp eq i32 %and, 0
  br i1 %tobool31, label %lor.lhs.false32, label %if.then36

lor.lhs.false32:                                  ; preds = %cont30
  %14 = load i32* @sfcontext, align 4, !tbaa !3
  %15 = load i32* @sourcelevel, align 4, !tbaa !3
  %16 = or i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.then36, label %cont49

if.then36:                                        ; preds = %lor.lhs.false32, %cont30
  %prog = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %18 = load %struct.eprog** %prog, align 4, !tbaa !5
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %19 = load i32** %pc, align 4, !tbaa !5
  %and42 = lshr i32 %pcode, 5
  %and42.lobit = and i32 %and42, 1
  %add.ptr = getelementptr inbounds i32* %19, i32 %and42.lobit
  %call = call i8* @getjobtext(%struct.eprog* %18, i32* %add.ptr) nounwind
  %call47 = call i8* @strcpy(i8* getelementptr inbounds ([80 x i8]* @list_pipe_text, i32 0, i32 0), i8* %call) nounwind
  br label %cont59

cont49:                                           ; preds = %lor.lhs.false32
  store i8 0, i8* getelementptr inbounds ([80 x i8]* @list_pipe_text, i32 0, i32 0), align 1, !tbaa !1
  br label %cont59

cont59:                                           ; preds = %if.end23, %cont49, %if.then36
  %and57 = and i32 %pcode, 32
  %cmp60 = icmp eq i32 %and57, 0
  br i1 %cmp60, label %if.then62, label %if.else65

if.then62:                                        ; preds = %cont59
  %tobool63 = icmp ne i32 %last1, 0
  %cond64 = select i1 %tobool63, i32 1, i32 2
  call fastcc void @execcmd(%struct.estate* %state, i32 %input, i32 %output, i32 %how, i32 %cond64)
  br label %if.end203

if.else65:                                        ; preds = %cont59
  %20 = load i32* @list_pipe, align 4, !tbaa !3
  %pc66 = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %21 = load i32** %pc66, align 4, !tbaa !5
  %22 = load i32* %21, align 4, !tbaa !3
  %add.ptr68 = getelementptr inbounds i32* %21, i32 %22
  %incdec.ptr = getelementptr inbounds i32* %21, i32 1
  store i32* %incdec.ptr, i32** %pc66, align 4, !tbaa !5
  %23 = load i32* %incdec.ptr, align 4, !tbaa !3
  %and80238 = and i32 %23, 31
  %cmp83239 = icmp eq i32 %and80238, 4
  br i1 %cmp83239, label %cont92, label %for.end

cont92:                                           ; preds = %if.else65, %cont107
  %24 = phi i32 [ %33, %cont107 ], [ %23, %if.else65 ]
  %pc69.0240 = phi i32* [ %add.ptr108, %cont107 ], [ %incdec.ptr, %if.else65 ]
  %and90 = lshr i32 %24, 10
  %25 = and i32 %and90, 1
  %26 = add i32 %25, 3
  %27 = and i32 %and90, 2
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 %27)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb106, label %cont107

ioc_bb106:                                        ; preds = %cont92
  %31 = zext i32 %27 to i64
  %32 = sext i32 %26 to i64
  call void @__ioc_report_add_overflow(i32 1528, i32 125, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %32, i64 %31, i8 13) nounwind
  br label %cont107

cont107:                                          ; preds = %cont92, %ioc_bb106
  %add.ptr108 = getelementptr inbounds i32* %pc69.0240, i32 %29
  %33 = load i32* %add.ptr108, align 4, !tbaa !3
  %and80 = and i32 %33, 31
  %cmp83 = icmp eq i32 %and80, 4
  br i1 %cmp83, label %cont92, label %for.end

for.end:                                          ; preds = %cont107, %if.else65
  %and80.lcssa = phi i32 [ %and80238, %if.else65 ], [ %and80, %cont107 ]
  %arraydecay = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 0
  %call.i = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.end
  %call1.i = call i32* @__errno_location() nounwind readnone
  %34 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %34) nounwind
  br label %mpipe.exit

if.end.i:                                         ; preds = %for.end
  %35 = load i32* %arraydecay, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %35) nounwind
  store i32 %call2.i, i32* %arraydecay, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %36 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %36) nounwind
  store i32 %call5.i, i32* %arrayidx4.i, align 4, !tbaa !3
  br label %mpipe.exit

mpipe.exit:                                       ; preds = %if.then.i, %if.end.i
  %cmp126 = icmp ugt i32 %and80.lcssa, 7
  br i1 %cmp126, label %cont132, label %if.else189

cont132:                                          ; preds = %mpipe.exit
  %and133 = and i32 %how, 2
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.else189, label %if.then135

if.then135:                                       ; preds = %cont132
  %arraydecay136 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 0
  %call137 = call i32 @pipe(i32* %arraydecay136) nounwind
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.else142

if.then140:                                       ; preds = %if.then135
  %call141 = call i32* @__errno_location() nounwind readnone
  %37 = load i32* %call141, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %37) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %if.end203

if.else142:                                       ; preds = %if.then135
  %call143 = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  switch i32 %call143, label %if.then154 [
    i32 -1, label %if.then148
    i32 0, label %if.else166
  ]

if.then148:                                       ; preds = %if.else142
  %38 = load i32* %arraydecay136, align 4, !tbaa !3
  %call149 = call i32 @close(i32 %38) nounwind
  %arrayidx150 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %39 = load i32* %arrayidx150, align 4, !tbaa !3
  %call151 = call i32 @close(i32 %39) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %if.end203

if.then154:                                       ; preds = %if.else142
  %prog155 = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %40 = load %struct.eprog** %prog155, align 4, !tbaa !5
  %41 = load i32** %pc66, align 4, !tbaa !5
  %call157 = call i8* @getjobtext(%struct.eprog* %40, i32* %41) nounwind
  call void @addproc(i32 %call143, i8* %call157, i32 0, %struct.timeval* %bgtime) nounwind
  %arrayidx158 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %42 = load i32* %arrayidx158, align 4, !tbaa !3
  %call159 = call i32 @close(i32 %42) nounwind
  %43 = load i32* %arraydecay136, align 4, !tbaa !3
  %call163 = call i32 @read_loop(i32 %43, i8* %dummy, i32 1) nounwind
  %44 = load i32* %arraydecay136, align 4, !tbaa !3
  %call165 = call i32 @close(i32 %44) nounwind
  %arrayidx193.pre = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  br label %if.end192

if.else166:                                       ; preds = %if.else142
  %45 = load i32* %arraydecay, align 4, !tbaa !3
  %call168 = call i32 @zclose(i32 %45) nounwind
  %46 = load i32* %arraydecay136, align 4, !tbaa !3
  %call170 = call i32 @close(i32 %46) nounwind
  %and175 = lshr i32 %how, 2
  %and175.lobit = and i32 %and175, 1
  %or178 = or i32 %and175.lobit, 6
  call fastcc void @entersubsh(i32 %or178)
  %arrayidx179 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %47 = load i32* %arrayidx179, align 4, !tbaa !3
  %call180 = call i32 @close(i32 %47) nounwind
  %arrayidx181 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %48 = load i32* %arrayidx181, align 4, !tbaa !3
  call fastcc void @execcmd(%struct.estate* %state, i32 %input, i32 %48, i32 %how, i32 1)
  %49 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %49, 2147483648
  %50 = icmp ult i64 %.off, 4294967296
  br i1 %50, label %cont184, label %ioc_bb183

ioc_bb183:                                        ; preds = %if.else166
  call void @__ioc_report_conversion(i32 1565, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %49, i8 1) nounwind
  br label %cont184

cont184:                                          ; preds = %ioc_bb183, %if.else166
  %conv185 = trunc i64 %49 to i32
  call void @_exit(i32 %conv185) noreturn nounwind
  unreachable

if.else189:                                       ; preds = %cont132, %mpipe.exit
  %51 = load i32* %arraydecay, align 4, !tbaa !3
  store i32 %51, i32* @subsh_close, align 4, !tbaa !3
  %arrayidx191 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %52 = load i32* %arrayidx191, align 4, !tbaa !3
  call fastcc void @execcmd(%struct.estate* %state, i32 %input, i32 %52, i32 %how, i32 0)
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then154
  %arrayidx193.pre-phi = phi i32* [ %arrayidx191, %if.else189 ], [ %arrayidx193.pre, %if.then154 ]
  %53 = load i32* %arrayidx193.pre-phi, align 4, !tbaa !3
  %call194 = call i32 @zclose(i32 %53) nounwind
  store i32* %add.ptr68, i32** %pc66, align 4, !tbaa !5
  call void @cmdpush(i32 13) nounwind
  store i32 1, i32* @list_pipe, align 4, !tbaa !3
  %54 = load i32** %pc66, align 4, !tbaa !5
  %incdec.ptr197 = getelementptr inbounds i32* %54, i32 1
  store i32* %incdec.ptr197, i32** %pc66, align 4, !tbaa !5
  %55 = load i32* %54, align 4, !tbaa !3
  %56 = load i32* %arraydecay, align 4, !tbaa !3
  call fastcc void @execpline2(%struct.estate* %state, i32 %55, i32 %how, i32 %56, i32 %output, i32 %last1)
  store i32 %20, i32* @list_pipe, align 4, !tbaa !3
  call void @cmdpop() nounwind
  %57 = load i32* %arraydecay, align 4, !tbaa !3
  %call200 = call i32 @zclose(i32 %57) nounwind
  store i32 -1, i32* @subsh_close, align 4, !tbaa !3
  br label %if.end203

if.end203:                                        ; preds = %entry, %if.then140, %if.then148, %if.end192, %if.then62
  ret void
}

declare void @deletejob(%struct.job*, i32)

declare void @spawnjob()

declare i32 @printjob(%struct.job*, i32, i32)

declare void @makerunning(%struct.job*)

declare i32 @hasprocs(i32)

declare void @waitjobs()

declare i8* @zleentry(i32, ...)

declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) nounwind

declare i32 @fflush(%struct._IO_FILE* nocapture) nounwind

declare i32 @killjb(%struct.job*, i32)

declare i32 @read_loop(i32, i8*, i32)

declare i32 @kill(i32, i32) nounwind

declare i8* @getjobtext(%struct.eprog*, i32*)

define internal fastcc void @execcmd(%struct.estate* %state, i32 %input, i32 %output, i32 %how, i32 %last1) nounwind {
entry:
  %statbuf.i.i = alloca %struct.stat, align 4
  %buf.i3577 = alloca [16384 x i8], align 1
  %buf2.i = alloca [16384 x i8], align 1
  %z.i = alloca i8*, align 4
  %tmp.i = alloca %struct.__sigset_t, align 4
  %s95.i = alloca i8*, align 4
  %nn.i = alloca [4096 x i8], align 1
  %buf.i = alloca %struct.stat, align 4
  %s.i = alloca i8*, align 4
  %t.i = alloca i8*, align 4
  %len.i = alloca i32, align 4
  %sbuf.i = alloca [4096 x i8], align 1
  %mfds = alloca [10 x %struct.multio*], align 4
  %save = alloca [10 x i32], align 4
  %htok = alloca i32, align 4
  %synch = alloca [2 x i32], align 4
  %dummy = alloca i8, align 1
  %bgtime = alloca %struct.timeval, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %s1943 = alloca i8*, align 4
  %vbuf = alloca %struct.value, align 4
  %fdstr = alloca [4 x i8], align 1
  store i32 0, i32* %htok, align 4, !tbaa !3
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %1 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  store i1 false, i1* @doneps4.b, align 1
  %2 = load i32* %0, align 4, !tbaa !3
  %and = and i32 %2, 31
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call = call %union.linkroot* @ecgetredirs(%struct.estate* %state) nounwind
  %.pre = load i32** %pc, align 4, !tbaa !5
  %.pre4030 = load i32* %.pre, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i32 [ %.pre4030, %cond.true ], [ %2, %entry ]
  %4 = phi i32* [ %.pre, %cond.true ], [ %0, %entry ]
  %cond = phi %union.linkroot* [ %call, %cond.true ], [ null, %entry ]
  %and22 = and i32 %3, 31
  %cmp25 = icmp eq i32 %and22, 5
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* @cmdoutval, align 4, !tbaa !3
  %5 = load i32* %4, align 4, !tbaa !3
  %and373917 = and i32 %5, 31
  %cmp403918 = icmp eq i32 %and373917, 5
  br i1 %cmp403918, label %cont47.lr.ph, label %if.end

cont47.lr.ph:                                     ; preds = %if.then
  %pc.promoted = load i32** %pc, align 4
  br label %cont47

cont47:                                           ; preds = %cont47.lr.ph, %cond.end63
  %6 = phi i32* [ %pc.promoted, %cont47.lr.ph ], [ %add.ptr, %cond.end63 ]
  %7 = phi i32 [ %5, %cont47.lr.ph ], [ %9, %cond.end63 ]
  %and45 = and i32 %7, 32
  %cmp48 = icmp eq i32 %and45, 0
  br i1 %cmp48, label %cond.end63, label %cont60

cont60:                                           ; preds = %cont47
  %shr58 = lshr i32 %7, 7
  %8 = add nuw i32 %shr58, 2
  br label %cond.end63

cond.end63:                                       ; preds = %cont47, %cont60
  %cond64 = phi i32 [ %8, %cont60 ], [ 3, %cont47 ]
  %add.ptr = getelementptr inbounds i32* %6, i32 %cond64
  %9 = load i32* %add.ptr, align 4, !tbaa !3
  %and37 = and i32 %9, 31
  %cmp40 = icmp eq i32 %and37, 5
  br i1 %cmp40, label %cont47, label %while.cond.if.end.loopexit_crit_edge

while.cond.if.end.loopexit_crit_edge:             ; preds = %cond.end63
  store i32* %add.ptr, i32** %pc, align 4
  %.pre4032.pre = load i32* %add.ptr, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end.loopexit_crit_edge, %cond.end
  %10 = phi i32 [ %3, %cond.end ], [ %.pre4032.pre, %while.cond.if.end.loopexit_crit_edge ], [ %5, %if.then ]
  %11 = phi i32* [ %4, %cond.end ], [ %add.ptr, %while.cond.if.end.loopexit_crit_edge ], [ %4, %if.then ]
  %varspc.0 = phi i32* [ null, %cond.end ], [ %4, %while.cond.if.end.loopexit_crit_edge ], [ %4, %if.then ]
  %incdec.ptr = getelementptr inbounds i32* %11, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %and76 = and i32 %10, 31
  %cmp79 = icmp eq i32 %and76, 6
  br i1 %cmp79, label %cont86, label %cond.end89

cont86:                                           ; preds = %if.end
  %shr83 = lshr i32 %10, 5
  %call87 = call %union.linkroot* @ecgetlist(%struct.estate* %state, i32 %shr83, i32 1, i32* %htok) nounwind
  br label %cond.end89

cond.end89:                                       ; preds = %if.end, %cont86
  %cond90 = phi %union.linkroot* [ %call87, %cont86 ], [ null, %if.end ]
  %tobool = icmp ne %union.linkroot* %cond90, null
  %tobool91 = icmp eq i32* %varspc.0, null
  %or.cond3271 = or i1 %tobool, %tobool91
  br i1 %or.cond3271, label %if.end98, label %if.then92

if.then92:                                        ; preds = %cond.end89
  %12 = load i32* @errflag, align 4, !tbaa !3
  %tobool93 = icmp ne i32 %12, 0
  %13 = load i32* @cmdoutval, align 4, !tbaa !3
  %cond97 = select i1 %tobool93, i32 %12, i32 %13
  %conv = sext i32 %cond97 to i64
  store i64 %conv, i64* @lastval, align 8, !tbaa !0
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %cond.end89
  %14 = zext i1 %tobool to i32
  %lnot.ext = xor i32 %14, 1
  store i32 %lnot.ext, i32* @use_cmdoutval, align 4, !tbaa !3
  br label %cont103

cont103:                                          ; preds = %if.end98, %for.cond.backedge
  %i.03916 = phi i32 [ 0, %if.end98 ], [ %16, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.03916
  store i32 -2, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx104 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 %i.03916
  store %struct.multio* null, %struct.multio** %arrayidx104, align 4, !tbaa !5
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.03916, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb105, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont103, %ioc_bb105
  %cmp100 = icmp slt i32 %16, 10
  br i1 %cmp100, label %cont103, label %for.end

ioc_bb105:                                        ; preds = %cont103
  %18 = sext i32 %i.03916 to i64
  call void @__ioc_report_add_overflow(i32 2256, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  %cmp79.not = xor i1 %cmp79, true
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %cmp79.not, %tobool.not
  br i1 %brmerge, label %if.end156, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %for.end
  %first = getelementptr inbounds %union.linkroot* %cond90, i32 0, i32 0, i32 0
  %19 = load %struct.linknode** %first, align 4, !tbaa !5
  %cmp112 = icmp eq %struct.linknode* %19, null
  br i1 %cmp112, label %if.end156, label %land.lhs.true114

land.lhs.true114:                                 ; preds = %land.lhs.true111
  %dat = getelementptr inbounds %struct.linknode* %19, i32 0, i32 2
  %20 = load i8** %dat, align 4, !tbaa !5
  %21 = load i8* %20, align 1, !tbaa !1
  %cmp118 = icmp eq i8 %21, 37
  br i1 %cmp118, label %cont124, label %if.end156

cont124:                                          ; preds = %land.lhs.true114
  %and125 = and i32 %how, 8
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %cont144, label %if.end131.thread

if.end131.thread:                                 ; preds = %cont124
  %22 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  %conv128 = sext i8 %22 to i32
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %cond.end148

cont144:                                          ; preds = %cont124
  %and145 = and i32 %how, 4
  %tobool146 = icmp ne i32 %and145, 0
  %cond147 = select i1 %tobool146, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0)
  br label %cond.end148

cond.end148:                                      ; preds = %if.end131.thread, %cont144
  %oautocont.03646 = phi i32 [ -1, %cont144 ], [ %conv128, %if.end131.thread ]
  %cond149 = phi i8* [ %cond147, %cont144 ], [ getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0), %if.end131.thread ]
  %node1323647 = bitcast %union.linkroot* %cond90 to %struct.linknode*
  %call150 = call i8* @dupstring(i8* %cond149) nounwind
  %call151 = call %struct.linknode* @insertlinknode(%union.linkroot* %cond90, %struct.linknode* %node1323647, i8* %call150) nounwind
  br label %if.end156

if.end156:                                        ; preds = %for.end, %land.lhs.true111, %cond.end148, %land.lhs.true114
  %oautocont.1 = phi i32 [ %oautocont.03646, %cond.end148 ], [ -1, %land.lhs.true114 ], [ -1, %land.lhs.true111 ], [ -1, %for.end ]
  %how.addr.0 = phi i32 [ 2, %cond.end148 ], [ %how, %land.lhs.true114 ], [ %how, %land.lhs.true111 ], [ %how, %for.end ]
  %23 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 15), align 1, !tbaa !1
  %tobool158 = icmp eq i8 %23, 0
  %brmerge3273 = or i1 %tobool158, %cmp79.not
  br i1 %brmerge3273, label %if.end205, label %cont166

cont166:                                          ; preds = %if.end156
  %and167 = and i32 %how.addr.0, 2
  %tobool168 = icmp eq i32 %and167, 0
  %brmerge3275 = or i1 %tobool168, %tobool.not
  br i1 %brmerge3275, label %if.end205, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %cont166
  %first173 = getelementptr inbounds %union.linkroot* %cond90, i32 0, i32 0, i32 0
  %24 = load %struct.linknode** %first173, align 4, !tbaa !5
  %cmp174 = icmp eq %struct.linknode* %24, null
  br i1 %cmp174, label %if.end205, label %land.lhs.true176

land.lhs.true176:                                 ; preds = %land.lhs.true171
  %tobool177 = icmp eq %union.linkroot* %cond, null
  br i1 %tobool177, label %land.lhs.true182, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true176
  %first179 = getelementptr inbounds %union.linkroot* %cond, i32 0, i32 0, i32 0
  %25 = load %struct.linknode** %first179, align 4, !tbaa !5
  %cmp180 = icmp eq %struct.linknode* %25, null
  %tobool183 = icmp eq i32 %input, 0
  %or.cond3276 = and i1 %cmp180, %tobool183
  br i1 %or.cond3276, label %land.lhs.true184, label %if.end205

land.lhs.true182:                                 ; preds = %land.lhs.true176
  %tobool183.old = icmp eq i32 %input, 0
  br i1 %tobool183.old, label %land.lhs.true184, label %if.end205

land.lhs.true184:                                 ; preds = %lor.lhs.false, %land.lhs.true182
  %next = getelementptr inbounds %struct.linknode* %24, i32 0, i32 0
  %26 = load %struct.linknode** %next, align 4, !tbaa !5
  %tobool187 = icmp eq %struct.linknode* %26, null
  br i1 %tobool187, label %if.then188, label %if.end205

if.then188:                                       ; preds = %land.lhs.true184
  %27 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 113), align 1, !tbaa !1
  %tobool189 = icmp eq i8 %27, 0
  br i1 %tobool189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.then188
  call void @scanjobs() nounwind
  %.pre4040 = load %struct.linknode** %first173, align 4, !tbaa !5
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.then190
  %28 = phi %struct.linknode* [ %24, %if.then188 ], [ %.pre4040, %if.then190 ]
  %dat194 = getelementptr inbounds %struct.linknode* %28, i32 0, i32 2
  %29 = load i8** %dat194, align 4, !tbaa !5
  %call195 = call i32 @findjobnam(i8* %29) nounwind
  %cmp198 = icmp eq i32 %call195, -1
  br i1 %cmp198, label %if.end205, label %if.then200

if.then200:                                       ; preds = %if.end191
  %node201 = bitcast %union.linkroot* %cond90 to %struct.linknode*
  %call202 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0)) nounwind
  %call203 = call %struct.linknode* @insertlinknode(%union.linkroot* %cond90, %struct.linknode* %node201, i8* %call202) nounwind
  br label %if.end205

if.end205:                                        ; preds = %cont166, %if.end156, %if.end191, %land.lhs.true184, %land.lhs.true182, %land.lhs.true171, %if.then200, %lor.lhs.false
  br i1 %cmp79, label %while.cond209.preheader, label %lor.rhs

while.cond209.preheader:                          ; preds = %if.end205
  %first212 = getelementptr inbounds %union.linkroot* %cond90, i32 0, i32 0, i32 0
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str30 to i32))
  br label %while.cond209

while.cond209:                                    ; preds = %while.cond209.preheader, %if.end608
  %orig_cflags.0 = phi i32 [ %or, %if.end608 ], [ 0, %while.cond209.preheader ]
  %cflags.0 = phi i32 [ %cflags.4, %if.end608 ], [ 0, %while.cond209.preheader ]
  %use_defpath.0 = phi i32 [ %use_defpath.2, %if.end608 ], [ 0, %while.cond209.preheader ]
  br i1 %tobool, label %land.rhs, label %lor.rhs

land.rhs:                                         ; preds = %while.cond209
  %31 = load %struct.linknode** %first212, align 4, !tbaa !5
  %cmp213 = icmp eq %struct.linknode* %31, null
  br i1 %cmp213, label %lor.rhs, label %while.body215

while.body215:                                    ; preds = %land.rhs
  %dat218 = getelementptr inbounds %struct.linknode* %31, i32 0, i32 2
  %32 = load i8** %dat218, align 4, !tbaa !5
  %call219 = call i32 @has_token(i8* %32) nounwind
  %lnot221 = icmp eq i32 %call219, 0
  %lnot.ext222 = zext i1 %lnot221 to i32
  br i1 %lnot221, label %cont233, label %lor.rhs

cont233:                                          ; preds = %while.body215
  %and234 = and i32 %cflags.0, 384
  %tobool235 = icmp eq i32 %and234, 0
  br i1 %tobool235, label %land.lhs.true236, label %if.end240

land.lhs.true236:                                 ; preds = %cont233
  %33 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode = getelementptr inbounds %struct.hashtable* %33, i32 0, i32 9
  %34 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !5
  %call237 = call %struct.hashnode* %34(%struct.hashtable* %33, i8* %32) nounwind
  %tobool238 = icmp eq %struct.hashnode* %call237, null
  br i1 %tobool238, label %if.end240, label %lor.rhs

if.end240:                                        ; preds = %land.lhs.true236, %cont233
  %35 = load %struct.hashtable** @builtintab, align 4, !tbaa !5
  %getnode241 = getelementptr inbounds %struct.hashtable* %35, i32 0, i32 9
  %36 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode241, align 4, !tbaa !5
  %call242 = call %struct.hashnode* %36(%struct.hashtable* %35, i8* %32) nounwind
  %tobool243 = icmp eq %struct.hashnode* %call242, null
  br i1 %tobool243, label %cont248, label %if.end253

cont248:                                          ; preds = %if.end240
  %and249 = lshr i32 %cflags.0, 7
  %and249.lobit = and i32 %and249, 1
  %37 = xor i32 %and249.lobit, 1
  br label %lor.rhs

if.end253:                                        ; preds = %if.end240
  %or = or i32 %cflags.0, %orig_cflags.0
  %and262 = and i32 %cflags.0, -385
  %flags = getelementptr inbounds %struct.hashnode* %call242, i32 0, i32 2
  %38 = load i32* %flags, align 4, !tbaa !3
  %or263 = or i32 %38, %and262
  %and269 = and i32 %38, 32
  %tobool270 = icmp eq i32 %and269, 0
  br i1 %tobool270, label %if.then271, label %cont286

if.then271:                                       ; preds = %if.end253
  %handlerfunc.i = getelementptr inbounds %struct.hashnode* %call242, i32 1
  %39 = bitcast %struct.hashnode* %handlerfunc.i to i32 (i8*, i8**, %struct.options*, i32)**
  %40 = load i32 (i8*, i8**, %struct.options*, i32)** %39, align 4, !tbaa !5
  %tobool.i = icmp eq i32 (i8*, i8**, %struct.options*, i32)* %40, null
  br i1 %tobool.i, label %if.then.i, label %if.end623

if.then.i:                                        ; preds = %if.then271
  %41 = getelementptr inbounds %struct.hashnode* %call242, i32 2, i32 1
  %42 = load i8** %41, align 4, !tbaa !5
  %call.i = call i8* @dupstring(i8* %42) nounwind
  %43 = load i32* %flags, align 4, !tbaa !3
  %and.i = and i32 %43, 131072
  %tobool3.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.i, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  %nam.i = getelementptr inbounds %struct.hashnode* %call242, i32 0, i32 1
  %44 = load i8** %nam.i, align 4, !tbaa !5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i
  %cond.i = phi i8* [ %44, %cond.false.i ], [ null, %if.then.i ]
  %call4.i = call i32 @ensurefeature(i8* %call.i, i8* getelementptr inbounds ([3 x i8]* @.str89, i32 0, i32 0), i8* %cond.i) nounwind
  %45 = load %struct.hashtable** @builtintab, align 4, !tbaa !5
  %getnode.i = getelementptr inbounds %struct.hashtable* %45, i32 0, i32 9
  %46 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !5
  %call5.i = call %struct.hashnode* %46(%struct.hashtable* %45, i8* %32) nounwind
  %tobool6.i = icmp eq %struct.hashnode* %call5.i, null
  br i1 %tobool6.i, label %resolvebuiltin.exit.thread, label %cond.end.i.if.end623_crit_edge

cond.end.i.if.end623_crit_edge:                   ; preds = %cond.end.i
  %flags276.phi.trans.insert = getelementptr inbounds %struct.hashnode* %call5.i, i32 0, i32 2
  %.pre4048 = load i32* %flags276.phi.trans.insert, align 4, !tbaa !3
  br label %if.end623

resolvebuiltin.exit.thread:                       ; preds = %cond.end.i
  store i64 1, i64* @lastval, align 8, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([51 x i8]* @.str90, i32 0, i32 0), i8* %call.i, i8* %32) nounwind
  br label %if.end2742

cont286:                                          ; preds = %if.end253
  %and287 = and i32 %38, 256
  %tobool288 = icmp eq i32 %and287, 0
  br i1 %tobool288, label %cont410, label %land.lhs.true289

land.lhs.true289:                                 ; preds = %cont286
  %47 = load %struct.linknode** %first212, align 4, !tbaa !5
  %next292 = getelementptr inbounds %struct.linknode* %47, i32 0, i32 0
  %48 = load %struct.linknode** %next292, align 4, !tbaa !5
  %tobool293 = icmp eq %struct.linknode* %48, null
  br i1 %tobool293, label %cont410, label %if.then294

if.then294:                                       ; preds = %land.lhs.true289
  %dat299 = getelementptr inbounds %struct.linknode* %48, i32 0, i32 2
  %49 = load i8** %dat299, align 4, !tbaa !5
  %tobool300 = icmp eq i8* %49, null
  br i1 %tobool300, label %if.end336, label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.then294
  %50 = load i8* %49, align 1, !tbaa !1
  %cmp303 = icmp eq i8 %50, 45
  br i1 %cmp303, label %cont308, label %if.end336

cont308:                                          ; preds = %land.lhs.true301
  %call306 = call i32 @strlen(i8* %49) nounwind readonly
  %cmp309 = icmp eq i32 %call306, 2
  br i1 %cmp309, label %land.lhs.true311, label %if.end336

land.lhs.true311:                                 ; preds = %cont308
  %arrayidx312 = getelementptr inbounds i8* %49, i32 1
  %51 = load i8* %arrayidx312, align 1, !tbaa !1
  %conv313 = sext i8 %51 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i32 %conv313, i32 4)
  %tobool315 = icmp eq i8* %memchr, null
  br i1 %tobool315, label %if.end336, label %if.then316

if.then316:                                       ; preds = %land.lhs.true311
  %52 = load i8* %memchr, align 1, !tbaa !1
  %cmp318 = icmp eq i8 %52, 112
  br i1 %cmp318, label %if.then320, label %lor.rhs

if.then320:                                       ; preds = %if.then316
  %call323 = call i8* @uremnode(%union.linkroot* %cond90, %struct.linknode* %47) nounwind
  %53 = load %struct.linknode** %first212, align 4, !tbaa !5
  %next326 = getelementptr inbounds %struct.linknode* %53, i32 0, i32 0
  %54 = load %struct.linknode** %next326, align 4, !tbaa !5
  %tobool327 = icmp eq %struct.linknode* %54, null
  br i1 %tobool327, label %if.end336, label %if.then328

if.then328:                                       ; preds = %if.then320
  %dat332 = getelementptr inbounds %struct.linknode* %54, i32 0, i32 2
  %55 = load i8** %dat332, align 4, !tbaa !5
  br label %if.end336

if.end336:                                        ; preds = %if.then320, %land.lhs.true311, %if.then294, %if.then328, %cont308, %land.lhs.true301
  %next295.0 = phi i8* [ %55, %if.then328 ], [ %49, %if.then320 ], [ %49, %land.lhs.true311 ], [ %49, %cont308 ], [ %49, %land.lhs.true301 ], [ null, %if.then294 ]
  %use_defpath.1 = phi i32 [ 1, %if.then328 ], [ 1, %if.then320 ], [ %use_defpath.0, %land.lhs.true311 ], [ %use_defpath.0, %cont308 ], [ %use_defpath.0, %land.lhs.true301 ], [ %use_defpath.0, %if.then294 ]
  %56 = extractvalue { i32, i1 } %30, 0
  %57 = extractvalue { i32, i1 } %30, 1
  br i1 %57, label %ioc_bb337, label %cont340

ioc_bb337:                                        ; preds = %if.end336
  call void @__ioc_report_sub_overflow(i32 2328, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str30 to i32) to i64), i8 5) nounwind
  br label %cont340

cont340:                                          ; preds = %ioc_bb337, %if.end336
  %cmp341 = icmp eq i32 %56, 1
  br i1 %cmp341, label %cond.true348, label %cond.false396

cond.true348:                                     ; preds = %cont340
  %58 = load i8* %next295.0, align 1, !tbaa !1
  %conv350 = zext i8 %58 to i32
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv350, i32 45)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br i1 %61, label %ioc_bb352, label %land.lhs.true358

ioc_bb352:                                        ; preds = %cond.true348
  %62 = zext i8 %58 to i64
  call void @__ioc_report_sub_overflow(i32 2328, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %62, i64 45, i8 13) nounwind
  br label %land.lhs.true358

land.lhs.true358:                                 ; preds = %cond.true348, %ioc_bb352
  %cmp359 = icmp eq i32 %60, 0
  br i1 %cmp359, label %if.then361, label %cont410

if.then361:                                       ; preds = %land.lhs.true358
  %arrayidx362 = getelementptr inbounds i8* %next295.0, i32 1
  %63 = load i8* %arrayidx362, align 1, !tbaa !1
  %conv363 = zext i8 %63 to i32
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv363, i32 45)
  %65 = extractvalue { i32, i1 } %64, 0
  %66 = extractvalue { i32, i1 } %64, 1
  br i1 %66, label %ioc_bb365, label %land.lhs.true371

ioc_bb365:                                        ; preds = %if.then361
  %67 = zext i8 %63 to i64
  call void @__ioc_report_sub_overflow(i32 2328, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %67, i64 45, i8 13) nounwind
  br label %land.lhs.true371

land.lhs.true371:                                 ; preds = %if.then361, %ioc_bb365
  %cmp372 = icmp eq i32 %65, 0
  br i1 %cmp372, label %if.then374, label %cont410

if.then374:                                       ; preds = %land.lhs.true371
  %arrayidx375 = getelementptr inbounds i8* %next295.0, i32 2
  %68 = load i8* %arrayidx375, align 1, !tbaa !1
  %conv376 = zext i8 %68 to i32
  br label %cond.end398

cond.false396:                                    ; preds = %cont340
  %call397 = call i32 @strcmp(i8* %next295.0, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0)) nounwind
  br label %cond.end398

cond.end398:                                      ; preds = %if.then374, %cond.false396
  %cond399 = phi i32 [ %call397, %cond.false396 ], [ %conv376, %if.then374 ]
  %tobool400 = icmp eq i32 %cond399, 0
  br i1 %tobool400, label %if.then401, label %cont410

if.then401:                                       ; preds = %cond.end398
  %69 = load %struct.linknode** %first212, align 4, !tbaa !5
  %call404 = call i8* @uremnode(%union.linkroot* %cond90, %struct.linknode* %69) nounwind
  br label %cont410

cont410:                                          ; preds = %land.lhs.true358, %land.lhs.true371, %cond.end398, %land.lhs.true289, %cont286, %if.then401
  %use_defpath.2 = phi i32 [ %use_defpath.1, %cond.end398 ], [ %use_defpath.1, %if.then401 ], [ %use_defpath.0, %land.lhs.true289 ], [ %use_defpath.0, %cont286 ], [ %use_defpath.1, %land.lhs.true371 ], [ %use_defpath.1, %land.lhs.true358 ]
  %and411 = and i32 %or263, 512
  %tobool412 = icmp eq i32 %and411, 0
  br i1 %tobool412, label %if.end608, label %land.lhs.true413

land.lhs.true413:                                 ; preds = %cont410
  %70 = load %struct.linknode** %first212, align 4, !tbaa !5
  %next416 = getelementptr inbounds %struct.linknode* %70, i32 0, i32 0
  %71 = load %struct.linknode** %next416, align 4, !tbaa !5
  %tobool417 = icmp eq %struct.linknode* %71, null
  br i1 %tobool417, label %if.end608, label %if.then418

if.then418:                                       ; preds = %land.lhs.true413
  %dat423 = getelementptr inbounds %struct.linknode* %71, i32 0, i32 2
  %72 = load i8** %dat423, align 4, !tbaa !5
  %tobool4263863 = icmp eq i8* %72, null
  br i1 %tobool4263863, label %if.end608, label %land.lhs.true427.lr.ph

land.lhs.true427.lr.ph:                           ; preds = %if.then418, %if.then581
  %73 = phi %struct.linknode* [ %98, %if.then581 ], [ %70, %if.then418 ]
  %cflags.1.ph3866 = phi i32 [ %cflags.2.lcssa, %if.then581 ], [ %or263, %if.then418 ]
  %exec_argv0.0.ph3865 = phi i8* [ %exec_argv0.1.ph3820, %if.then581 ], [ null, %if.then418 ]
  %next419.0.ph3864 = phi i8* [ %100, %if.then581 ], [ %72, %if.then418 ]
  %arrayidx478 = getelementptr inbounds i8* %next419.0.ph3864, i32 1
  %arrayidx491 = getelementptr inbounds i8* %next419.0.ph3864, i32 2
  br label %land.lhs.true427

land.lhs.true427:                                 ; preds = %for.end572, %land.lhs.true576, %land.lhs.true427.lr.ph
  %74 = phi %struct.linknode* [ %73, %land.lhs.true427.lr.ph ], [ %98, %land.lhs.true576 ], [ null, %for.end572 ]
  %cflags.13847 = phi i32 [ %cflags.1.ph3866, %land.lhs.true427.lr.ph ], [ %cflags.2.lcssa, %land.lhs.true576 ], [ %cflags.2.lcssa, %for.end572 ]
  %exec_argv0.03845 = phi i8* [ %exec_argv0.0.ph3865, %land.lhs.true427.lr.ph ], [ %exec_argv0.1.ph3820, %land.lhs.true576 ], [ %exec_argv0.1.ph3820, %for.end572 ]
  %75 = load i8* %next419.0.ph3864, align 1, !tbaa !1
  %cmp429 = icmp eq i8 %75, 45
  br i1 %cmp429, label %cont434, label %while.end587

cont434:                                          ; preds = %land.lhs.true427
  %call432 = call i32 @strlen(i8* %next419.0.ph3864) nounwind readonly
  %cmp435 = icmp ugt i32 %call432, 1
  br i1 %cmp435, label %while.body438, label %while.end587

while.body438:                                    ; preds = %cont434
  %tobool441 = icmp eq %struct.linknode* %74, null
  br i1 %tobool441, label %if.then442, label %if.end445

if.then442:                                       ; preds = %while.body438
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([35 x i8]* @.str31, i32 0, i32 0)) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %done

if.end445:                                        ; preds = %while.body438
  %call448 = call i8* @uremnode(%union.linkroot* %cond90, %struct.linknode* %74) nounwind
  %76 = extractvalue { i32, i1 } %30, 0
  %77 = extractvalue { i32, i1 } %30, 1
  br i1 %77, label %ioc_bb451, label %cont454

ioc_bb451:                                        ; preds = %if.end445
  call void @__ioc_report_sub_overflow(i32 2356, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str30 to i32) to i64), i8 5) nounwind
  br label %cont454

cont454:                                          ; preds = %ioc_bb451, %if.end445
  %cmp455 = icmp eq i32 %76, 1
  br i1 %cmp455, label %cond.true462, label %cond.false512

cond.true462:                                     ; preds = %cont454
  %78 = load i8* %next419.0.ph3864, align 1, !tbaa !1
  %conv466 = zext i8 %78 to i32
  %79 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv466, i32 45)
  %80 = extractvalue { i32, i1 } %79, 0
  %81 = extractvalue { i32, i1 } %79, 1
  br i1 %81, label %ioc_bb468, label %land.lhs.true474

ioc_bb468:                                        ; preds = %cond.true462
  %82 = zext i8 %78 to i64
  call void @__ioc_report_sub_overflow(i32 2356, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %82, i64 45, i8 13) nounwind
  br label %land.lhs.true474

land.lhs.true474:                                 ; preds = %cond.true462, %ioc_bb468
  %cmp475 = icmp eq i32 %80, 0
  br i1 %cmp475, label %if.then477, label %for.cond520.preheader

if.then477:                                       ; preds = %land.lhs.true474
  %83 = load i8* %arrayidx478, align 1, !tbaa !1
  %conv479 = zext i8 %83 to i32
  %84 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv479, i32 45)
  %85 = extractvalue { i32, i1 } %84, 0
  %86 = extractvalue { i32, i1 } %84, 1
  br i1 %86, label %ioc_bb481, label %land.lhs.true487

ioc_bb481:                                        ; preds = %if.then477
  %87 = zext i8 %83 to i64
  call void @__ioc_report_sub_overflow(i32 2356, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %87, i64 45, i8 13) nounwind
  br label %land.lhs.true487

land.lhs.true487:                                 ; preds = %if.then477, %ioc_bb481
  %cmp488 = icmp eq i32 %85, 0
  br i1 %cmp488, label %if.then490, label %for.cond520.preheader

if.then490:                                       ; preds = %land.lhs.true487
  %88 = load i8* %arrayidx491, align 1, !tbaa !1
  %conv492 = zext i8 %88 to i32
  br label %cond.end514

cond.false512:                                    ; preds = %cont454
  %call513 = call i32 @strcmp(i8* %next419.0.ph3864, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0)) nounwind
  br label %cond.end514

cond.end514:                                      ; preds = %if.then490, %cond.false512
  %cond515 = phi i32 [ %call513, %cond.false512 ], [ %conv492, %if.then490 ]
  %tobool516 = icmp eq i32 %cond515, 0
  br i1 %tobool516, label %while.end587, label %for.cond520.preheader

for.cond520.preheader:                            ; preds = %cond.end514, %land.lhs.true487, %land.lhs.true474
  %89 = load i8* %arrayidx478, align 1, !tbaa !1
  %tobool52138113827 = icmp eq i8 %89, 0
  br i1 %tobool52138113827, label %for.end572, label %for.body522.lr.ph

for.body522.lr.ph:                                ; preds = %for.cond520.preheader, %for.cond520.outer.backedge
  %90 = phi i8 [ %93, %for.cond520.outer.backedge ], [ %89, %for.cond520.preheader ]
  %cmdopt424.038103831 = phi i8* [ %cmdopt424.03810, %for.cond520.outer.backedge ], [ %arrayidx478, %for.cond520.preheader ]
  %cflags.2.ph3830 = phi i32 [ %cflags.23813, %for.cond520.outer.backedge ], [ %cflags.13847, %for.cond520.preheader ]
  %exec_argv0.1.ph3829 = phi i8* [ %exec_argv0.1.ph.be, %for.cond520.outer.backedge ], [ %exec_argv0.03845, %for.cond520.preheader ]
  %next419.0.pn.ph3828 = phi i8* [ %next419.0.pn.ph.be, %for.cond520.outer.backedge ], [ %next419.0.ph3864, %for.cond520.preheader ]
  br label %for.body522

for.body522:                                      ; preds = %for.body522.lr.ph, %for.cond520.backedge
  %91 = phi i8 [ %90, %for.body522.lr.ph ], [ %97, %for.cond520.backedge ]
  %cmdopt424.03814 = phi i8* [ %cmdopt424.038103831, %for.body522.lr.ph ], [ %cmdopt424.0, %for.cond520.backedge ]
  %cflags.23813 = phi i32 [ %cflags.2.ph3830, %for.body522.lr.ph ], [ %cflags.2.be, %for.cond520.backedge ]
  %next419.0.pn3812 = phi i8* [ %next419.0.pn.ph3828, %for.body522.lr.ph ], [ %cmdopt424.03814, %for.cond520.backedge ]
  %conv523 = sext i8 %91 to i32
  switch i32 %conv523, label %sw.default [
    i32 97, label %sw.bb
    i32 99, label %cont559
    i32 108, label %cont565
  ]

sw.bb:                                            ; preds = %for.body522
  %arrayidx524 = getelementptr inbounds i8* %next419.0.pn3812, i32 2
  %92 = load i8* %arrayidx524, align 1, !tbaa !1
  %tobool525 = icmp eq i8 %92, 0
  br i1 %tobool525, label %if.else531, label %if.then526

if.then526:                                       ; preds = %sw.bb
  %call529 = call i32 @strlen(i8* %arrayidx524) nounwind readonly
  %cmdopt424.0.sum = add i32 %call529, 1
  %add.ptr530 = getelementptr inbounds i8* %next419.0.pn3812, i32 %cmdopt424.0.sum
  br label %for.cond520.outer.backedge

for.cond520.outer.backedge:                       ; preds = %if.then526, %if.end546
  %next419.0.pn.ph.be = phi i8* [ %add.ptr530, %if.then526 ], [ %cmdopt424.03814, %if.end546 ]
  %exec_argv0.1.ph.be = phi i8* [ %arrayidx524, %if.then526 ], [ %96, %if.end546 ]
  %cmdopt424.03810 = getelementptr inbounds i8* %next419.0.pn.ph.be, i32 1
  %93 = load i8* %cmdopt424.03810, align 1, !tbaa !1
  %tobool5213811 = icmp eq i8 %93, 0
  br i1 %tobool5213811, label %for.end572, label %for.body522.lr.ph

if.else531:                                       ; preds = %sw.bb
  %94 = load %struct.linknode** %first212, align 4, !tbaa !5
  %tobool534 = icmp eq %struct.linknode* %94, null
  br i1 %tobool534, label %if.then535, label %if.end538

if.then535:                                       ; preds = %if.else531
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([35 x i8]* @.str31, i32 0, i32 0)) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %done

if.end538:                                        ; preds = %if.else531
  %next541 = getelementptr inbounds %struct.linknode* %94, i32 0, i32 0
  %95 = load %struct.linknode** %next541, align 4, !tbaa !5
  %tobool542 = icmp eq %struct.linknode* %95, null
  br i1 %tobool542, label %if.then543, label %if.end546

if.then543:                                       ; preds = %if.end538
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([34 x i8]* @.str32, i32 0, i32 0)) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %done

if.end546:                                        ; preds = %if.end538
  %dat550 = getelementptr inbounds %struct.linknode* %95, i32 0, i32 2
  %96 = load i8** %dat550, align 4, !tbaa !5
  %call553 = call i8* @uremnode(%union.linkroot* %cond90, %struct.linknode* %94) nounwind
  br label %for.cond520.outer.backedge

cont559:                                          ; preds = %for.body522
  %or560 = or i32 %cflags.23813, 65536
  br label %for.cond520.backedge

for.cond520.backedge:                             ; preds = %cont559, %cont565
  %cflags.2.be = phi i32 [ %or566, %cont565 ], [ %or560, %cont559 ]
  %cmdopt424.0 = getelementptr inbounds i8* %cmdopt424.03814, i32 1
  %97 = load i8* %cmdopt424.0, align 1, !tbaa !1
  %tobool521 = icmp eq i8 %97, 0
  br i1 %tobool521, label %for.end572, label %for.body522

cont565:                                          ; preds = %for.body522
  %or566 = or i32 %cflags.23813, 64
  br label %for.cond520.backedge

sw.default:                                       ; preds = %for.body522
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str33, i32 0, i32 0), i32 %conv523) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end2742

for.end572:                                       ; preds = %for.cond520.preheader, %for.cond520.outer.backedge, %for.cond520.backedge
  %exec_argv0.1.ph3820 = phi i8* [ %exec_argv0.1.ph3829, %for.cond520.backedge ], [ %exec_argv0.03845, %for.cond520.preheader ], [ %exec_argv0.1.ph.be, %for.cond520.outer.backedge ]
  %cflags.2.lcssa = phi i32 [ %cflags.2.be, %for.cond520.backedge ], [ %cflags.13847, %for.cond520.preheader ], [ %cflags.23813, %for.cond520.outer.backedge ]
  %98 = load %struct.linknode** %first212, align 4, !tbaa !5
  %tobool575 = icmp eq %struct.linknode* %98, null
  br i1 %tobool575, label %land.lhs.true427, label %land.lhs.true576

land.lhs.true576:                                 ; preds = %for.end572
  %next579 = getelementptr inbounds %struct.linknode* %98, i32 0, i32 0
  %99 = load %struct.linknode** %next579, align 4, !tbaa !5
  %tobool580 = icmp eq %struct.linknode* %99, null
  br i1 %tobool580, label %land.lhs.true427, label %if.then581

if.then581:                                       ; preds = %land.lhs.true576
  %dat585 = getelementptr inbounds %struct.linknode* %99, i32 0, i32 2
  %100 = load i8** %dat585, align 4, !tbaa !5
  %tobool426 = icmp eq i8* %100, null
  br i1 %tobool426, label %while.end587, label %land.lhs.true427.lr.ph

while.end587:                                     ; preds = %if.then581, %cond.end514, %land.lhs.true427, %cont434
  %cflags.1.lcssa = phi i32 [ %cflags.13847, %cont434 ], [ %cflags.13847, %land.lhs.true427 ], [ %cflags.13847, %cond.end514 ], [ %cflags.2.lcssa, %if.then581 ]
  %exec_argv0.0.lcssa = phi i8* [ %exec_argv0.03845, %cont434 ], [ %exec_argv0.03845, %land.lhs.true427 ], [ %exec_argv0.03845, %cond.end514 ], [ %exec_argv0.1.ph3820, %if.then581 ]
  %tobool588 = icmp eq i8* %exec_argv0.0.lcssa, null
  br i1 %tobool588, label %if.end608, label %if.then589

if.then589:                                       ; preds = %while.end587
  %call590 = call i32 @strlen(i8* %exec_argv0.0.lcssa) nounwind readonly
  %101 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call590, i32 6)
  %102 = extractvalue { i32, i1 } %101, 0
  %103 = extractvalue { i32, i1 } %101, 1
  br i1 %103, label %ioc_bb596, label %cont599

ioc_bb596:                                        ; preds = %if.then589
  %104 = zext i32 %call590 to i64
  call void @__ioc_report_add_overflow(i32 2409, i32 37, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 6, i64 %104, i8 5) nounwind
  br label %cont599

cont599:                                          ; preds = %ioc_bb596, %if.then589
  %105 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %102, i32 1)
  %106 = extractvalue { i32, i1 } %105, 0
  %107 = extractvalue { i32, i1 } %105, 1
  br i1 %107, label %ioc_bb600, label %cont601

ioc_bb600:                                        ; preds = %cont599
  %108 = zext i32 %102 to i64
  call void @__ioc_report_add_overflow(i32 2409, i32 42, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %108, i64 1, i8 5) nounwind
  br label %cont601

cont601:                                          ; preds = %cont599, %ioc_bb600
  %call602 = call i8* @zalloc(i32 %106) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call602, i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i32 7, i32 1, i1 false)
  %add.ptr604 = getelementptr inbounds i8* %call602, i32 6
  %call605 = call i8* @strcpy(i8* %add.ptr604, i8* %exec_argv0.0.lcssa) nounwind
  %call606 = call i32 @zputenv(i8* %call602) nounwind
  br label %if.end608

if.end608:                                        ; preds = %if.then418, %while.end587, %cont410, %land.lhs.true413, %cont601
  %cflags.4 = phi i32 [ %cflags.1.lcssa, %cont601 ], [ %or263, %land.lhs.true413 ], [ %or263, %cont410 ], [ %cflags.1.lcssa, %while.end587 ], [ %or263, %if.then418 ]
  %109 = load %struct.linknode** %first212, align 4, !tbaa !5
  %call611 = call i8* @uremnode(%union.linkroot* %cond90, %struct.linknode* %109) nounwind
  %and616 = and i32 %cflags.4, 256
  %tobool617 = icmp eq i32 %and616, 0
  %110 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 121), align 1, !tbaa !1
  %tobool619 = icmp ne i8 %110, 0
  %or.cond = or i1 %tobool617, %tobool619
  br i1 %or.cond, label %while.cond209, label %lor.rhs

if.end623:                                        ; preds = %if.then271, %cond.end.i.if.end623_crit_edge
  %111 = phi i32 [ %.pre4048, %cond.end.i.if.end623_crit_edge ], [ %38, %if.then271 ]
  %retval.0.i3651 = phi %struct.hashnode* [ %call5.i, %cond.end.i.if.end623_crit_edge ], [ %call242, %if.then271 ]
  %and281 = and i32 %111, 16
  %phitmp = icmp eq i32 %and281, 0
  br i1 %phitmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then316, %land.lhs.true236, %while.cond209, %land.rhs, %while.body215, %if.end608, %if.end623, %if.end205, %cont248
  %hn.13669 = phi %struct.hashnode* [ %retval.0.i3651, %if.end623 ], [ null, %cont248 ], [ null, %if.end205 ], [ getelementptr inbounds (%struct.builtin* @commandbn, i32 0, i32 0), %if.then316 ], [ %call237, %land.lhs.true236 ], [ null, %while.cond209 ], [ null, %land.rhs ], [ null, %while.body215 ], [ null, %if.end608 ]
  %is_shfunc.03665 = phi i32 [ 0, %if.end623 ], [ 0, %cont248 ], [ 0, %if.end205 ], [ 0, %if.then316 ], [ 1, %land.lhs.true236 ], [ 0, %while.cond209 ], [ 0, %land.rhs ], [ 0, %while.body215 ], [ 0, %if.end608 ]
  %is_builtin.03663 = phi i32 [ 1, %if.end623 ], [ 0, %cont248 ], [ 0, %if.end205 ], [ 1, %if.then316 ], [ 0, %land.lhs.true236 ], [ 0, %while.cond209 ], [ 0, %land.rhs ], [ 0, %while.body215 ], [ 0, %if.end608 ]
  %use_defpath.33661 = phi i32 [ %use_defpath.0, %if.end623 ], [ %use_defpath.0, %cont248 ], [ 0, %if.end205 ], [ %use_defpath.0, %if.then316 ], [ %use_defpath.0, %land.lhs.true236 ], [ %use_defpath.0, %while.cond209 ], [ %use_defpath.0, %land.rhs ], [ %use_defpath.0, %while.body215 ], [ %use_defpath.2, %if.end608 ]
  %cflags.53659 = phi i32 [ %or263, %if.end623 ], [ %cflags.0, %cont248 ], [ 0, %if.end205 ], [ %or263, %if.then316 ], [ %cflags.0, %land.lhs.true236 ], [ %cflags.0, %while.cond209 ], [ %cflags.0, %land.rhs ], [ %cflags.0, %while.body215 ], [ %cflags.4, %if.end608 ]
  %orig_cflags.13656 = phi i32 [ %or, %if.end623 ], [ %orig_cflags.0, %cont248 ], [ 0, %if.end205 ], [ %or, %if.then316 ], [ %orig_cflags.0, %land.lhs.true236 ], [ %orig_cflags.0, %while.cond209 ], [ %orig_cflags.0, %land.rhs ], [ %orig_cflags.0, %while.body215 ], [ %or, %if.end608 ]
  %checked.13654 = phi i32 [ %lnot.ext222, %if.end623 ], [ %37, %cont248 ], [ 0, %if.end205 ], [ 0, %if.then316 ], [ %lnot.ext222, %land.lhs.true236 ], [ 0, %while.cond209 ], [ 0, %land.rhs ], [ %lnot.ext222, %while.body215 ], [ 0, %if.end608 ]
  %112 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 104), align 1, !tbaa !1
  %tobool626 = icmp ne i8 %112, 0
  br label %lor.end

lor.end:                                          ; preds = %if.end623, %lor.rhs
  %hn.13670 = phi %struct.hashnode* [ %hn.13669, %lor.rhs ], [ %retval.0.i3651, %if.end623 ]
  %assign.03668 = phi i1 [ false, %lor.rhs ], [ true, %if.end623 ]
  %is_shfunc.03666 = phi i32 [ %is_shfunc.03665, %lor.rhs ], [ 0, %if.end623 ]
  %is_builtin.03664 = phi i32 [ %is_builtin.03663, %lor.rhs ], [ 1, %if.end623 ]
  %use_defpath.33662 = phi i32 [ %use_defpath.33661, %lor.rhs ], [ %use_defpath.0, %if.end623 ]
  %cflags.53660 = phi i32 [ %cflags.53659, %lor.rhs ], [ %or263, %if.end623 ]
  %orig_cflags.13658 = phi i32 [ %orig_cflags.13656, %lor.rhs ], [ %or, %if.end623 ]
  %checked.13655 = phi i32 [ %checked.13654, %lor.rhs ], [ %lnot.ext222, %if.end623 ]
  %113 = phi i1 [ %tobool626, %lor.rhs ], [ true, %if.end623 ]
  %cond627 = zext i1 %113 to i32
  store i32 %cond627, i32* @esprefork, align 4, !tbaa !3
  %114 = load i32* %htok, align 4, !tbaa !3
  %tobool630 = icmp eq i32 %114, 0
  %or.cond3278 = or i1 %tobool630, %tobool.not
  br i1 %or.cond3278, label %if.end632, label %if.then631

if.then631:                                       ; preds = %lor.end
  call void @prefork(%union.linkroot* %cond90, i32 %cond627) nounwind
  br label %if.end632

if.end632:                                        ; preds = %lor.end, %if.then631
  br i1 %cmp79, label %cont641.preheader, label %if.end925

cont641.preheader:                                ; preds = %if.end632
  %tobool688 = icmp eq i32 %last1, 0
  %tobool698 = icmp eq %union.linkroot* %cond, null
  %first701 = getelementptr inbounds %union.linkroot* %cond, i32 0, i32 0, i32 0
  %115 = or i32 %checked.13655, %is_builtin.03664
  br label %cont641

cont641:                                          ; preds = %cont641.preheader, %cont917
  %cflags.6 = phi i32 [ %or920, %cont917 ], [ %cflags.53660, %cont641.preheader ]
  %unglobbed.0 = phi i32 [ %unglobbed.14056, %cont917 ], [ 0, %cont641.preheader ]
  %do_exec.0 = phi i32 [ %do_exec.14060, %cont917 ], [ 0, %cont641.preheader ]
  %args.0 = phi %union.linkroot* [ %args.4, %cont917 ], [ %cond90, %cont641.preheader ]
  %hn.2 = phi %struct.hashnode* [ null, %cont917 ], [ %hn.13670, %cont641.preheader ]
  %and642 = and i32 %cflags.6, 1024
  %tobool643 = icmp eq i32 %and642, 0
  br i1 %tobool643, label %while.cond645.preheader, label %if.else667

while.cond645.preheader:                          ; preds = %cont641
  %first653 = getelementptr inbounds %union.linkroot* %args.0, i32 0, i32 0, i32 0
  %116 = load i32* @errflag, align 4, !tbaa !3
  %117 = or i32 %116, %checked.13655
  %118 = icmp ne i32 %117, 0
  %tobool650 = icmp eq %union.linkroot* %args.0, null
  %or.cond32793787 = or i1 %118, %tobool650
  br i1 %or.cond32793787, label %cont684, label %land.lhs.true651

land.lhs.true651:                                 ; preds = %while.cond645.preheader, %while.body663
  %119 = load %struct.linknode** %first653, align 4, !tbaa !5
  %cmp654 = icmp eq %struct.linknode* %119, null
  br i1 %cmp654, label %cont684.thread, label %land.rhs656

land.rhs656:                                      ; preds = %land.lhs.true651
  %dat659 = getelementptr inbounds %struct.linknode* %119, i32 0, i32 2
  %120 = load i8** %dat659, align 4, !tbaa !5
  %call660 = call i32 @has_token(i8* %120) nounwind
  %tobool661 = icmp eq i32 %call660, 0
  br i1 %tobool661, label %cont684, label %while.body663

while.body663:                                    ; preds = %land.rhs656
  %121 = load %struct.linknode** %first653, align 4, !tbaa !5
  call void @zglob(%union.linkroot* %args.0, %struct.linknode* %121, i32 0) nounwind
  %122 = load i32* @errflag, align 4, !tbaa !3
  %123 = or i32 %122, %checked.13655
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %land.lhs.true651, label %cont684.thread

if.else667:                                       ; preds = %cont641
  %tobool668 = icmp eq i32 %unglobbed.0, 0
  br i1 %tobool668, label %if.then669, label %cont684

if.then669:                                       ; preds = %if.else667
  %first671 = getelementptr inbounds %union.linkroot* %args.0, i32 0, i32 0, i32 0
  %node.03783 = load %struct.linknode** %first671, align 4
  %tobool6733784 = icmp eq %struct.linknode* %node.03783, null
  br i1 %tobool6733784, label %cont684, label %for.body674

for.body674:                                      ; preds = %if.then669, %for.body674
  %node.03785 = phi %struct.linknode* [ %node.0, %for.body674 ], [ %node.03783, %if.then669 ]
  %dat675 = getelementptr inbounds %struct.linknode* %node.03785, i32 0, i32 2
  %125 = load i8** %dat675, align 4, !tbaa !5
  call void @untokenize(i8* %125)
  %next677 = getelementptr inbounds %struct.linknode* %node.03785, i32 0, i32 0
  %node.0 = load %struct.linknode** %next677, align 4
  %tobool673 = icmp eq %struct.linknode* %node.0, null
  br i1 %tobool673, label %cont684, label %for.body674

cont684.thread:                                   ; preds = %land.lhs.true651, %while.body663
  %and6854051 = and i32 %cflags.6, 512
  %tobool686.not4052 = icmp eq i32 %and6854051, 0
  %or.cond32804053 = or i1 %tobool686.not4052, %tobool688
  %do_exec.14054 = select i1 %or.cond32804053, i32 %do_exec.0, i32 1
  br label %lor.lhs.false692

cont684:                                          ; preds = %while.cond645.preheader, %land.rhs656, %if.then669, %for.body674, %if.else667
  %unglobbed.1 = phi i32 [ %unglobbed.0, %if.else667 ], [ 1, %for.body674 ], [ 1, %if.then669 ], [ %unglobbed.0, %land.rhs656 ], [ %unglobbed.0, %while.cond645.preheader ]
  %and685 = and i32 %cflags.6, 512
  %tobool686.not = icmp eq i32 %and685, 0
  %or.cond3280 = or i1 %tobool686.not, %tobool688
  %do_exec.1 = select i1 %or.cond3280, i32 %do_exec.0, i32 1
  %tobool691 = icmp eq %union.linkroot* %args.0, null
  br i1 %tobool691, label %if.then697, label %lor.lhs.false692

lor.lhs.false692:                                 ; preds = %cont684, %cont684.thread
  %do_exec.14062 = phi i32 [ %do_exec.14054, %cont684.thread ], [ %do_exec.1, %cont684 ]
  %tobool686.not4059 = phi i1 [ %tobool686.not4052, %cont684.thread ], [ %tobool686.not, %cont684 ]
  %unglobbed.14058 = phi i32 [ %unglobbed.0, %cont684.thread ], [ %unglobbed.1, %cont684 ]
  %first694 = getelementptr inbounds %union.linkroot* %args.0, i32 0, i32 0, i32 0
  %126 = load %struct.linknode** %first694, align 4, !tbaa !5
  %cmp695 = icmp eq %struct.linknode* %126, null
  br i1 %cmp695, label %if.then697, label %if.else822

if.then697:                                       ; preds = %cont684, %lor.lhs.false692
  %tobool6914063 = phi i1 [ true, %lor.lhs.false692 ], [ false, %cont684 ]
  %do_exec.14061 = phi i32 [ %do_exec.14062, %lor.lhs.false692 ], [ %do_exec.1, %cont684 ]
  %unglobbed.14057 = phi i32 [ %unglobbed.14058, %lor.lhs.false692 ], [ %unglobbed.1, %cont684 ]
  br i1 %tobool698, label %cont786, label %land.lhs.true699

land.lhs.true699:                                 ; preds = %if.then697
  %127 = load %struct.linknode** %first701, align 4, !tbaa !5
  %cmp702 = icmp eq %struct.linknode* %127, null
  br i1 %cmp702, label %cont786, label %if.then704

if.then704:                                       ; preds = %land.lhs.true699
  %tobool705 = icmp eq i32 %do_exec.14061, 0
  br i1 %tobool705, label %if.else707, label %if.end925

if.else707:                                       ; preds = %if.then704
  br i1 %tobool91, label %if.else710, label %if.end925

if.else710:                                       ; preds = %if.else707
  %128 = load i8** @nullcmd, align 4, !tbaa !5
  %tobool711 = icmp eq i8* %128, null
  br i1 %tobool711, label %if.then724, label %lor.lhs.false712

lor.lhs.false712:                                 ; preds = %if.else710
  %129 = load i8* %128, align 1, !tbaa !1
  %tobool713 = icmp ne i8 %129, 0
  %130 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 42), align 1, !tbaa !1
  %tobool716 = icmp eq i8 %130, 0
  %or.cond3281 = and i1 %tobool713, %tobool716
  br i1 %or.cond3281, label %cont721, label %if.then724

cont721:                                          ; preds = %lor.lhs.false712
  %and722 = and i32 %cflags.6, 32
  %tobool723 = icmp eq i32 %and722, 0
  br i1 %tobool723, label %lor.lhs.false729, label %if.then724

if.then724:                                       ; preds = %lor.lhs.false712, %cont721, %if.else710
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str35, i32 0, i32 0)) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end2742

lor.lhs.false729:                                 ; preds = %cont721
  %131 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 151), align 1, !tbaa !1
  %tobool733 = icmp eq i8 %131, 0
  br i1 %tobool733, label %if.else742, label %if.then734

if.then734:                                       ; preds = %lor.lhs.false729
  br i1 %tobool6914063, label %if.end738, label %if.then736

if.then736:                                       ; preds = %if.then734
  %call737 = call %union.linkroot* @newlinklist() nounwind
  br label %if.end738

if.end738:                                        ; preds = %if.then736, %if.then734
  %args.1 = phi %union.linkroot* [ %args.0, %if.then734 ], [ %call737, %if.then736 ]
  %last = getelementptr inbounds %union.linkroot* %args.1, i32 0, i32 0, i32 1
  %132 = load %struct.linknode** %last, align 4, !tbaa !5
  %call740 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @.str36, i32 0, i32 0)) nounwind
  %call741 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.1, %struct.linknode* %132, i8* %call740) nounwind
  br label %if.end839

if.else742:                                       ; preds = %lor.lhs.false729
  %133 = load i8** @readnullcmd, align 4, !tbaa !5
  %tobool743 = icmp eq i8* %133, null
  br i1 %tobool743, label %if.else768, label %land.lhs.true744

land.lhs.true744:                                 ; preds = %if.else742
  %134 = load i8* %133, align 1, !tbaa !1
  %tobool746 = icmp eq i8 %134, 0
  br i1 %tobool746, label %if.else768, label %land.lhs.true747

land.lhs.true747:                                 ; preds = %land.lhs.true744
  %dat750 = getelementptr inbounds %struct.linknode* %127, i32 0, i32 2
  %135 = load i8** %dat750, align 4, !tbaa !5
  %type751 = bitcast i8* %135 to i32*
  %136 = load i32* %type751, align 4, !tbaa !3
  %cmp752 = icmp eq i32 %136, 9
  br i1 %cmp752, label %land.lhs.true754, label %if.else768

land.lhs.true754:                                 ; preds = %land.lhs.true747
  %next757 = getelementptr inbounds %struct.linknode* %127, i32 0, i32 0
  %137 = load %struct.linknode** %next757, align 4, !tbaa !5
  %tobool758 = icmp eq %struct.linknode* %137, null
  br i1 %tobool758, label %if.then759, label %if.else768

if.then759:                                       ; preds = %land.lhs.true754
  br i1 %tobool6914063, label %if.end763, label %if.then761

if.then761:                                       ; preds = %if.then759
  %call762 = call %union.linkroot* @newlinklist() nounwind
  %.pre4039 = load i8** @readnullcmd, align 4, !tbaa !5
  br label %if.end763

if.end763:                                        ; preds = %if.then761, %if.then759
  %138 = phi i8* [ %133, %if.then759 ], [ %.pre4039, %if.then761 ]
  %args.2 = phi %union.linkroot* [ %args.0, %if.then759 ], [ %call762, %if.then761 ]
  %last765 = getelementptr inbounds %union.linkroot* %args.2, i32 0, i32 0, i32 1
  %139 = load %struct.linknode** %last765, align 4, !tbaa !5
  %call766 = call i8* @dupstring(i8* %138) nounwind
  %call767 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.2, %struct.linknode* %139, i8* %call766) nounwind
  br label %if.end839

if.else768:                                       ; preds = %land.lhs.true754, %land.lhs.true744, %if.else742, %land.lhs.true747
  br i1 %tobool6914063, label %if.end772, label %if.then770

if.then770:                                       ; preds = %if.else768
  %call771 = call %union.linkroot* @newlinklist() nounwind
  %.pre4038 = load i8** @nullcmd, align 4, !tbaa !5
  br label %if.end772

if.end772:                                        ; preds = %if.then770, %if.else768
  %140 = phi i8* [ %128, %if.else768 ], [ %.pre4038, %if.then770 ]
  %args.3 = phi %union.linkroot* [ %args.0, %if.else768 ], [ %call771, %if.then770 ]
  %last774 = getelementptr inbounds %union.linkroot* %args.3, i32 0, i32 0, i32 1
  %141 = load %struct.linknode** %last774, align 4, !tbaa !5
  %call775 = call i8* @dupstring(i8* %140) nounwind
  %call776 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.3, %struct.linknode* %141, i8* %call775) nounwind
  br label %if.end839

cont786:                                          ; preds = %land.lhs.true699, %if.then697
  %142 = and i32 %cflags.6, 288
  %143 = icmp eq i32 %142, 288
  br i1 %143, label %if.then796, label %if.else797

if.then796:                                       ; preds = %cont786
  store i64 0, i64* @lastval, align 8, !tbaa !0
  br label %if.end2742

if.else797:                                       ; preds = %cont786
  %144 = load i32* @use_cmdoutval, align 4, !tbaa !3
  %tobool798 = icmp ne i32 %144, 0
  %145 = load i64* @lastval, align 8, !tbaa !0
  %cond802 = select i1 %tobool798, i64 %145, i64 0
  %cond802.off = add i64 %cond802, 2147483648
  %146 = icmp ult i64 %cond802.off, 4294967296
  br i1 %146, label %cont805, label %ioc_bb804

ioc_bb804:                                        ; preds = %if.else797
  call void @__ioc_report_conversion(i32 2485, i32 23, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %cond802, i8 1) nounwind
  br label %cont805

cont805:                                          ; preds = %ioc_bb804, %if.else797
  %conv806 = trunc i64 %cond802 to i32
  store i32 %conv806, i32* @cmdoutval, align 4, !tbaa !3
  br i1 %tobool91, label %if.end809, label %if.then808

if.then808:                                       ; preds = %cont805
  call fastcc void @addvars(%struct.estate* %state, i32* %varspc.0, i32 0)
  %.pre4037 = load i32* @cmdoutval, align 4, !tbaa !3
  br label %if.end809

if.end809:                                        ; preds = %cont805, %if.then808
  %147 = phi i32 [ %.pre4037, %if.then808 ], [ %conv806, %cont805 ]
  %148 = load i32* @errflag, align 4, !tbaa !3
  %tobool810 = icmp eq i32 %148, 0
  %storemerge.in = select i1 %tobool810, i32 %147, i32 %148
  %storemerge = sext i32 %storemerge.in to i64
  store i64 %storemerge, i64* @lastval, align 8
  %149 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool816 = icmp eq i8 %149, 0
  br i1 %tobool816, label %if.end2742, label %if.then817

if.then817:                                       ; preds = %if.end809
  %150 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call818 = call i32 @fputc(i32 10, %struct._IO_FILE* %150) nounwind
  %151 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call819 = call i32 @fflush(%struct._IO_FILE* %151) nounwind
  br label %if.end2742

if.else822:                                       ; preds = %lor.lhs.false692
  %152 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool824 = icmp eq i8 %152, 0
  %brmerge3285 = or i1 %tobool824, %tobool686.not4059
  %tobool833 = icmp eq i32 %do_exec.14062, 0
  %or.cond3286 = or i1 %brmerge3285, %tobool833
  br i1 %or.cond3286, label %if.end839, label %if.then834

if.then834:                                       ; preds = %if.else822
  %dat837 = getelementptr inbounds %struct.linknode* %126, i32 0, i32 2
  %153 = load i8** %dat837, align 4, !tbaa !5
  call void (i8*, i8*, ...)* @zerrnam(i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str38, i32 0, i32 0), i8* %153) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %if.end2742

if.end839:                                        ; preds = %if.else822, %if.end738, %if.end772, %if.end763
  %do_exec.14060 = phi i32 [ %do_exec.14061, %if.end738 ], [ %do_exec.14061, %if.end772 ], [ %do_exec.14061, %if.end763 ], [ %do_exec.14062, %if.else822 ]
  %unglobbed.14056 = phi i32 [ %unglobbed.14057, %if.end738 ], [ %unglobbed.14057, %if.end772 ], [ %unglobbed.14057, %if.end763 ], [ %unglobbed.14058, %if.else822 ]
  %args.4 = phi %union.linkroot* [ %args.1, %if.end738 ], [ %args.3, %if.end772 ], [ %args.2, %if.end763 ], [ %args.0, %if.else822 ]
  %154 = load i32* @errflag, align 4, !tbaa !3
  %155 = or i32 %115, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %lor.lhs.false845, label %if.end925

lor.lhs.false845:                                 ; preds = %if.end839
  %157 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 121), align 1, !tbaa !1
  %tobool846 = icmp eq i8 %157, 0
  br i1 %tobool846, label %cont851, label %if.end855

cont851:                                          ; preds = %lor.lhs.false845
  %and852 = and i32 %cflags.6, 256
  %tobool853 = icmp eq i32 %and852, 0
  br i1 %tobool853, label %if.end855, label %if.end925

if.end855:                                        ; preds = %cont851, %lor.lhs.false845
  %first857 = getelementptr inbounds %union.linkroot* %args.4, i32 0, i32 0, i32 0
  %158 = load %struct.linknode** %first857, align 4, !tbaa !5
  %dat858 = getelementptr inbounds %struct.linknode* %158, i32 0, i32 2
  %159 = load i8** %dat858, align 4, !tbaa !5
  %and867 = and i32 %cflags.6, 384
  %tobool868 = icmp eq i32 %and867, 0
  br i1 %tobool868, label %land.lhs.true869, label %if.end874

land.lhs.true869:                                 ; preds = %if.end855
  %160 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode870 = getelementptr inbounds %struct.hashtable* %160, i32 0, i32 9
  %161 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode870, align 4, !tbaa !5
  %call871 = call %struct.hashnode* %161(%struct.hashtable* %160, i8* %159) nounwind
  %tobool872 = icmp eq %struct.hashnode* %call871, null
  br i1 %tobool872, label %if.end874, label %if.end925

if.end874:                                        ; preds = %land.lhs.true869, %if.end855
  %162 = load %struct.hashtable** @builtintab, align 4, !tbaa !5
  %getnode875 = getelementptr inbounds %struct.hashtable* %162, i32 0, i32 9
  %163 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode875, align 4, !tbaa !5
  %call876 = call %struct.hashnode* %163(%struct.hashtable* %162, i8* %159) nounwind
  %tobool877 = icmp eq %struct.hashnode* %call876, null
  br i1 %tobool877, label %cont882, label %if.end896

cont882:                                          ; preds = %if.end874
  %and883 = and i32 %cflags.6, 128
  %tobool884 = icmp eq i32 %and883, 0
  br i1 %tobool884, label %if.end925, label %if.then885

if.then885:                                       ; preds = %cont882
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([20 x i8]* @.str39, i32 0, i32 0), i8* %159) nounwind
  store i64 1, i64* @lastval, align 8, !tbaa !0
  %cmp886 = icmp sgt i32 %oautocont.1, -1
  br i1 %cmp886, label %cont892, label %if.end2742

cont892:                                          ; preds = %if.then885
  %conv893 = trunc i32 %oautocont.1 to i8
  store i8 %conv893, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %if.end2742

if.end896:                                        ; preds = %if.end874
  %flags897 = getelementptr inbounds %struct.hashnode* %call876, i32 0, i32 2
  %164 = load i32* %flags897, align 4, !tbaa !3
  %and902 = and i32 %164, 32
  %tobool903 = icmp eq i32 %and902, 0
  br i1 %tobool903, label %if.then904, label %cont917

if.then904:                                       ; preds = %if.end896
  %handlerfunc.i3328 = getelementptr inbounds %struct.hashnode* %call876, i32 1
  %165 = bitcast %struct.hashnode* %handlerfunc.i3328 to i32 (i8*, i8**, %struct.options*, i32)**
  %166 = load i32 (i8*, i8**, %struct.options*, i32)** %165, align 4, !tbaa !5
  %tobool.i3329 = icmp eq i32 (i8*, i8**, %struct.options*, i32)* %166, null
  br i1 %tobool.i3329, label %if.then.i3334, label %if.end925

if.then.i3334:                                    ; preds = %if.then904
  %167 = getelementptr inbounds %struct.hashnode* %call876, i32 2, i32 1
  %168 = load i8** %167, align 4, !tbaa !5
  %call.i3330 = call i8* @dupstring(i8* %168) nounwind
  %169 = load i32* %flags897, align 4, !tbaa !3
  %and.i3332 = and i32 %169, 131072
  %tobool3.i3333 = icmp eq i32 %and.i3332, 0
  br i1 %tobool3.i3333, label %cond.false.i3336, label %cond.end.i3342

cond.false.i3336:                                 ; preds = %if.then.i3334
  %nam.i3335 = getelementptr inbounds %struct.hashnode* %call876, i32 0, i32 1
  %170 = load i8** %nam.i3335, align 4, !tbaa !5
  br label %cond.end.i3342

cond.end.i3342:                                   ; preds = %cond.false.i3336, %if.then.i3334
  %cond.i3337 = phi i8* [ %170, %cond.false.i3336 ], [ null, %if.then.i3334 ]
  %call4.i3338 = call i32 @ensurefeature(i8* %call.i3330, i8* getelementptr inbounds ([3 x i8]* @.str89, i32 0, i32 0), i8* %cond.i3337) nounwind
  %171 = load %struct.hashtable** @builtintab, align 4, !tbaa !5
  %getnode.i3339 = getelementptr inbounds %struct.hashtable* %171, i32 0, i32 9
  %172 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i3339, align 4, !tbaa !5
  %call5.i3340 = call %struct.hashnode* %172(%struct.hashtable* %171, i8* %159) nounwind
  %tobool6.i3341 = icmp eq %struct.hashnode* %call5.i3340, null
  br i1 %tobool6.i3341, label %resolvebuiltin.exit3345.thread, label %if.end925

resolvebuiltin.exit3345.thread:                   ; preds = %cond.end.i3342
  store i64 1, i64* @lastval, align 8, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([51 x i8]* @.str90, i32 0, i32 0), i8* %call.i3330, i8* %159) nounwind
  br label %if.end2742

cont917:                                          ; preds = %if.end896
  %and918 = and i32 %cflags.6, -385
  %or920 = or i32 %164, %and918
  %173 = load %struct.linknode** %first857, align 4, !tbaa !5
  %call923 = call i8* @uremnode(%union.linkroot* %args.4, %struct.linknode* %173) nounwind
  br label %cont641

if.end925:                                        ; preds = %land.lhs.true869, %if.else707, %if.then704, %cont851, %if.end839, %if.then904, %cond.end.i3342, %cont882, %if.end632
  %cflags.7 = phi i32 [ %cflags.53660, %if.end632 ], [ %cflags.6, %cont882 ], [ %cflags.6, %cond.end.i3342 ], [ %cflags.6, %if.then904 ], [ %cflags.6, %if.end839 ], [ %cflags.6, %cont851 ], [ %cflags.6, %if.then704 ], [ %cflags.6, %if.else707 ], [ %cflags.6, %land.lhs.true869 ]
  %is_builtin.1 = phi i32 [ %is_builtin.03664, %if.end632 ], [ %is_builtin.03664, %cont882 ], [ 1, %cond.end.i3342 ], [ 1, %if.then904 ], [ %is_builtin.03664, %if.end839 ], [ %is_builtin.03664, %cont851 ], [ %is_builtin.03664, %if.then704 ], [ %is_builtin.03664, %if.else707 ], [ %is_builtin.03664, %land.lhs.true869 ]
  %is_shfunc.1 = phi i32 [ %is_shfunc.03666, %if.end632 ], [ %is_shfunc.03666, %cont882 ], [ %is_shfunc.03666, %cond.end.i3342 ], [ %is_shfunc.03666, %if.then904 ], [ %is_shfunc.03666, %if.end839 ], [ %is_shfunc.03666, %cont851 ], [ %is_shfunc.03666, %if.then704 ], [ %is_shfunc.03666, %if.else707 ], [ 1, %land.lhs.true869 ]
  %nullexec.0 = phi i32 [ 0, %if.end632 ], [ 0, %cont882 ], [ 0, %cond.end.i3342 ], [ 0, %if.then904 ], [ 0, %if.end839 ], [ 0, %cont851 ], [ 1, %if.then704 ], [ 2, %if.else707 ], [ 0, %land.lhs.true869 ]
  %do_exec.2 = phi i32 [ 0, %if.end632 ], [ %do_exec.14060, %cont882 ], [ %do_exec.14060, %cond.end.i3342 ], [ %do_exec.14060, %if.then904 ], [ %do_exec.14060, %if.end839 ], [ %do_exec.14060, %cont851 ], [ %do_exec.14061, %if.then704 ], [ 0, %if.else707 ], [ %do_exec.14060, %land.lhs.true869 ]
  %args.5 = phi %union.linkroot* [ %cond90, %if.end632 ], [ %args.4, %cont882 ], [ %args.4, %cond.end.i3342 ], [ %args.4, %if.then904 ], [ %args.4, %if.end839 ], [ %args.4, %cont851 ], [ %args.0, %if.then704 ], [ %args.0, %if.else707 ], [ %args.4, %land.lhs.true869 ]
  %hn.3 = phi %struct.hashnode* [ %hn.13670, %if.end632 ], [ null, %cont882 ], [ %call5.i3340, %cond.end.i3342 ], [ %call876, %if.then904 ], [ %hn.2, %if.end839 ], [ %hn.2, %cont851 ], [ %hn.2, %if.then704 ], [ %hn.2, %if.else707 ], [ %call871, %land.lhs.true869 ]
  %174 = load i32* @errflag, align 4, !tbaa !3
  %tobool926 = icmp eq i32 %174, 0
  br i1 %tobool926, label %cont941, label %if.then927

if.then927:                                       ; preds = %if.end925
  store i64 1, i64* @lastval, align 8, !tbaa !0
  %cmp928 = icmp sgt i32 %oautocont.1, -1
  br i1 %cmp928, label %cont934, label %if.end2742

cont934:                                          ; preds = %if.then927
  %conv935 = trunc i32 %oautocont.1 to i8
  store i8 %conv935, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %if.end2742

cont941:                                          ; preds = %if.end925
  %and942 = and i32 %how.addr.0, 4
  %tobool943 = icmp ne i32 %and942, 0
  br i1 %tobool943, label %if.then958, label %lor.lhs.false944

lor.lhs.false944:                                 ; preds = %cont941
  %175 = load i32* @sfcontext, align 4, !tbaa !3
  %176 = load i32* @sourcelevel, align 4, !tbaa !3
  %177 = or i32 %176, %175
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %land.lhs.true948, label %if.end961

land.lhs.true948:                                 ; preds = %lor.lhs.false944
  %179 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool950 = icmp eq i8 %179, 0
  br i1 %tobool950, label %cont955, label %if.then958

cont955:                                          ; preds = %land.lhs.true948
  %and956 = and i32 %how.addr.0, 1
  %tobool957 = icmp eq i32 %and956, 0
  br i1 %tobool957, label %if.end961, label %if.then958

if.then958:                                       ; preds = %cont955, %land.lhs.true948, %cont941
  %prog = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %180 = load %struct.eprog** %prog, align 4, !tbaa !5
  %call959 = call i8* @getjobtext(%struct.eprog* %180, i32* %0) nounwind
  br label %if.end961

if.end961:                                        ; preds = %lor.lhs.false944, %cont955, %if.then958
  %text.0 = phi i8* [ %call959, %if.then958 ], [ null, %cont955 ], [ null, %lor.lhs.false944 ]
  %tobool962 = icmp ne %union.linkroot* %args.5, null
  br i1 %tobool962, label %land.lhs.true963, label %cond.end973

land.lhs.true963:                                 ; preds = %if.end961
  %first965 = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 0
  %181 = load %struct.linknode** %first965, align 4, !tbaa !5
  %cmp966 = icmp eq %struct.linknode* %181, null
  br i1 %cmp966, label %cond.end973, label %cond.true968

cond.true968:                                     ; preds = %land.lhs.true963
  %last970 = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 1
  %182 = load %struct.linknode** %last970, align 4, !tbaa !5
  %dat971 = getelementptr inbounds %struct.linknode* %182, i32 0, i32 2
  %183 = load i8** %dat971, align 4, !tbaa !5
  br label %cond.end973

cond.end973:                                      ; preds = %land.lhs.true963, %if.end961, %cond.true968
  %cond974 = phi i8* [ %183, %cond.true968 ], [ getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), %land.lhs.true963 ], [ getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), %if.end961 ]
  call void @setunderscore(i8* %cond974)
  br i1 %cmp79, label %land.lhs.true977, label %if.end1154

land.lhs.true977:                                 ; preds = %cond.end973
  %184 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool979 = icmp eq i8 %184, 0
  %185 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 145), align 1, !tbaa !1
  %tobool981 = icmp ne i8 %185, 0
  %or.cond2748 = or i1 %tobool979, %tobool981
  %186 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool984 = icmp eq i8 %186, 0
  %or.cond3289 = or i1 %or.cond2748, %tobool984
  %tobool962.not = xor i1 %tobool962, true
  %brmerge3290 = or i1 %or.cond3289, %tobool962.not
  br i1 %brmerge3290, label %if.end1154, label %land.lhs.true987

land.lhs.true987:                                 ; preds = %land.lhs.true977
  %first989 = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 0
  %187 = load %struct.linknode** %first989, align 4, !tbaa !5
  %cmp990 = icmp eq %struct.linknode* %187, null
  br i1 %cmp990, label %if.end1154, label %land.lhs.true992

land.lhs.true992:                                 ; preds = %land.lhs.true987
  %next995 = getelementptr inbounds %struct.linknode* %187, i32 0, i32 0
  %188 = load %struct.linknode** %next995, align 4, !tbaa !5
  %tobool996 = icmp eq %struct.linknode* %188, null
  br i1 %tobool996, label %if.end1154, label %land.lhs.true997

land.lhs.true997:                                 ; preds = %land.lhs.true992
  %189 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str40 to i32))
  %190 = extractvalue { i32, i1 } %189, 0
  %191 = extractvalue { i32, i1 } %189, 1
  br i1 %191, label %ioc_bb1000, label %cont1003

ioc_bb1000:                                       ; preds = %land.lhs.true997
  call void @__ioc_report_sub_overflow(i32 2559, i32 135, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str40 to i32) to i64), i8 5) nounwind
  %.pre4033 = load %struct.linknode** %first989, align 4, !tbaa !5
  br label %cont1003

cont1003:                                         ; preds = %ioc_bb1000, %land.lhs.true997
  %192 = phi %struct.linknode* [ %.pre4033, %ioc_bb1000 ], [ %187, %land.lhs.true997 ]
  %cmp1004 = icmp eq i32 %190, 1
  %dat1015 = getelementptr inbounds %struct.linknode* %192, i32 0, i32 2
  %193 = load i8** %dat1015, align 4, !tbaa !5
  br i1 %cmp1004, label %cond.true1011, label %cond.false1064

cond.true1011:                                    ; preds = %cont1003
  %194 = load i8* %193, align 1, !tbaa !1
  %conv1018 = zext i8 %194 to i32
  %195 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv1018, i32 114)
  %196 = extractvalue { i32, i1 } %195, 0
  %197 = extractvalue { i32, i1 } %195, 1
  br i1 %197, label %ioc_bb1020, label %land.lhs.true1026

ioc_bb1020:                                       ; preds = %cond.true1011
  %198 = zext i8 %194 to i64
  call void @__ioc_report_sub_overflow(i32 2559, i32 135, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %198, i64 114, i8 13) nounwind
  br label %land.lhs.true1026

land.lhs.true1026:                                ; preds = %cond.true1011, %ioc_bb1020
  %cmp1027 = icmp eq i32 %196, 0
  br i1 %cmp1027, label %if.then1029, label %if.end1154

if.then1029:                                      ; preds = %land.lhs.true1026
  %arrayidx1030 = getelementptr inbounds i8* %193, i32 1
  %199 = load i8* %arrayidx1030, align 1, !tbaa !1
  %conv1031 = zext i8 %199 to i32
  %200 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv1031, i32 109)
  %201 = extractvalue { i32, i1 } %200, 0
  %202 = extractvalue { i32, i1 } %200, 1
  br i1 %202, label %ioc_bb1033, label %land.lhs.true1039

ioc_bb1033:                                       ; preds = %if.then1029
  %203 = zext i8 %199 to i64
  call void @__ioc_report_sub_overflow(i32 2559, i32 135, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %203, i64 109, i8 13) nounwind
  br label %land.lhs.true1039

land.lhs.true1039:                                ; preds = %if.then1029, %ioc_bb1033
  %cmp1040 = icmp eq i32 %201, 0
  br i1 %cmp1040, label %if.then1042, label %if.end1154

if.then1042:                                      ; preds = %land.lhs.true1039
  %arrayidx1043 = getelementptr inbounds i8* %193, i32 2
  %204 = load i8* %arrayidx1043, align 1, !tbaa !1
  %conv1044 = zext i8 %204 to i32
  br label %cond.end1069

cond.false1064:                                   ; preds = %cont1003
  %call1068 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0)) nounwind
  br label %cond.end1069

cond.end1069:                                     ; preds = %if.then1042, %cond.false1064
  %cond1070 = phi i32 [ %call1068, %cond.false1064 ], [ %conv1044, %if.then1042 ]
  %tobool1071 = icmp eq i32 %cond1070, 0
  br i1 %tobool1071, label %if.then1072, label %if.end1154

if.then1072:                                      ; preds = %cond.end1069
  %205 = load %struct.linknode** %first989, align 4, !tbaa !5
  %next1077 = getelementptr inbounds %struct.linknode* %205, i32 0, i32 0
  %206 = load %struct.linknode** %next1077, align 4, !tbaa !5
  %tobool10793779 = icmp ne %struct.linknode* %206, null
  %207 = load i32* @errflag, align 4, !tbaa !3
  %lnot10823780 = icmp eq i32 %207, 0
  %or.cond32913781 = and i1 %tobool10793779, %lnot10823780
  br i1 %or.cond32913781, label %for.body1085, label %for.end1147

for.body1085:                                     ; preds = %if.then1072, %for.cond1078.backedge
  %node1073.03782 = phi %struct.linknode* [ %211, %for.cond1078.backedge ], [ %206, %if.then1072 ]
  %dat1087 = getelementptr inbounds %struct.linknode* %node1073.03782, i32 0, i32 2
  %208 = load i8** %dat1087, align 4, !tbaa !5
  %call1088 = call i32 @strlen(i8* %208) nounwind readonly
  %209 = icmp sgt i32 %call1088, -1
  br i1 %209, label %cont1091, label %ioc_bb1090

ioc_bb1090:                                       ; preds = %for.body1085
  %210 = zext i32 %call1088 to i64
  call void @__ioc_report_conversion(i32 2564, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %210, i8 0) nounwind
  br label %cont1091

cont1091:                                         ; preds = %ioc_bb1090, %for.body1085
  %next1092 = getelementptr inbounds %struct.linknode* %node1073.03782, i32 0, i32 0
  %211 = load %struct.linknode** %next1092, align 4, !tbaa !5
  %212 = load i8* %208, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2566, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp1097 = icmp eq i8 %212, -121
  br i1 %cmp1097, label %land.lhs.true1099, label %if.else1108

land.lhs.true1099:                                ; preds = %cont1091
  %arrayidx1100 = getelementptr inbounds i8* %208, i32 1
  %213 = load i8* %arrayidx1100, align 1, !tbaa !1
  %tobool1101 = icmp eq i8 %213, 0
  br i1 %tobool1101, label %if.then1102, label %if.else1108

if.then1102:                                      ; preds = %land.lhs.true1099
  %214 = load i8** @pwd, align 4, !tbaa !5
  %call1103 = call i32 @checkrmall(i8* %214) nounwind
  %tobool1104 = icmp eq i32 %call1103, 0
  br i1 %tobool1104, label %if.then1105, label %for.cond1078.backedge

for.cond1078.backedge:                            ; preds = %if.then1102, %if.then1105, %cont1142, %cont1120, %cont1113, %if.else1108
  %tobool1079 = icmp ne %struct.linknode* %211, null
  %215 = load i32* @errflag, align 4, !tbaa !3
  %lnot1082 = icmp eq i32 %215, 0
  %or.cond3291 = and i1 %tobool1079, %lnot1082
  br i1 %or.cond3291, label %for.body1085, label %for.cond1078.for.end1147_crit_edge

if.then1105:                                      ; preds = %if.then1102
  %call1106 = call i8* @uremnode(%union.linkroot* %args.5, %struct.linknode* %node1073.03782) nounwind
  br label %for.cond1078.backedge

if.else1108:                                      ; preds = %land.lhs.true1099, %cont1091
  %cmp1109 = icmp sgt i32 %call1088, 2
  br i1 %cmp1109, label %land.lhs.true1111, label %for.cond1078.backedge

land.lhs.true1111:                                ; preds = %if.else1108
  %216 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call1088, i32 2)
  %217 = extractvalue { i32, i1 } %216, 0
  %218 = extractvalue { i32, i1 } %216, 1
  %219 = sext i32 %call1088 to i64
  br i1 %218, label %ioc_bb1112, label %cont1113

ioc_bb1112:                                       ; preds = %land.lhs.true1111
  call void @__ioc_report_sub_overflow(i32 2570, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %219, i64 2, i8 13) nounwind
  br label %cont1113

cont1113:                                         ; preds = %land.lhs.true1111, %ioc_bb1112
  %arrayidx1114 = getelementptr inbounds i8* %208, i32 %217
  %220 = load i8* %arrayidx1114, align 1, !tbaa !1
  %cmp1116 = icmp eq i8 %220, 47
  br i1 %cmp1116, label %land.lhs.true1118, label %for.cond1078.backedge

land.lhs.true1118:                                ; preds = %cont1113
  %221 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call1088, i32 1)
  %222 = extractvalue { i32, i1 } %221, 0
  %223 = extractvalue { i32, i1 } %221, 1
  br i1 %223, label %ioc_bb1119, label %cont1120

ioc_bb1119:                                       ; preds = %land.lhs.true1118
  call void @__ioc_report_sub_overflow(i32 2570, i32 48, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %219, i64 1, i8 13) nounwind
  br label %cont1120

cont1120:                                         ; preds = %land.lhs.true1118, %ioc_bb1119
  %arrayidx1121 = getelementptr inbounds i8* %208, i32 %222
  %224 = load i8* %arrayidx1121, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2570, i32 64, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp1125 = icmp eq i8 %224, -121
  br i1 %cmp1125, label %if.then1127, label %for.cond1078.backedge

if.then1127:                                      ; preds = %cont1120
  br i1 %218, label %ioc_bb1133, label %cont1129.thread3675

cont1129.thread3675:                              ; preds = %if.then1127
  %225 = load i8* %arrayidx1114, align 1, !tbaa !1
  br label %cont1134

ioc_bb1133:                                       ; preds = %if.then1127
  call void @__ioc_report_sub_overflow(i32 2571, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %219, i64 2, i8 13) nounwind
  %226 = load i8* %arrayidx1114, align 1, !tbaa !1
  call void @__ioc_report_sub_overflow(i32 2572, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %219, i64 2, i8 13) nounwind
  br label %cont1134

cont1134:                                         ; preds = %cont1129.thread3675, %ioc_bb1133
  %227 = phi i8 [ %226, %ioc_bb1133 ], [ %225, %cont1129.thread3675 ]
  store i8 0, i8* %arrayidx1114, align 1, !tbaa !1
  %call1136 = call i32 @checkrmall(i8* %208) nounwind
  %tobool1137 = icmp eq i32 %call1136, 0
  br i1 %tobool1137, label %if.then1138, label %if.end1140

if.then1138:                                      ; preds = %cont1134
  %call1139 = call i8* @uremnode(%union.linkroot* %args.5, %struct.linknode* %node1073.03782) nounwind
  br label %if.end1140

if.end1140:                                       ; preds = %cont1134, %if.then1138
  br i1 %218, label %ioc_bb1141, label %cont1142

ioc_bb1141:                                       ; preds = %if.end1140
  call void @__ioc_report_sub_overflow(i32 2575, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %219, i64 2, i8 13) nounwind
  br label %cont1142

cont1142:                                         ; preds = %if.end1140, %ioc_bb1141
  store i8 %227, i8* %arrayidx1114, align 1, !tbaa !1
  br label %for.cond1078.backedge

for.cond1078.for.end1147_crit_edge:               ; preds = %for.cond1078.backedge
  %.pre4034 = load %struct.linknode** %first989, align 4, !tbaa !5
  %next1150.phi.trans.insert = getelementptr inbounds %struct.linknode* %.pre4034, i32 0, i32 0
  %.pre4035 = load %struct.linknode** %next1150.phi.trans.insert, align 4, !tbaa !5
  br label %for.end1147

for.end1147:                                      ; preds = %for.cond1078.for.end1147_crit_edge, %if.then1072
  %228 = phi %struct.linknode* [ %.pre4035, %for.cond1078.for.end1147_crit_edge ], [ %206, %if.then1072 ]
  %tobool1151 = icmp eq %struct.linknode* %228, null
  br i1 %tobool1151, label %if.end1154.thread, label %if.end1154

if.end1154.thread:                                ; preds = %for.end1147
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.then1156

if.end1154:                                       ; preds = %cond.end1069, %land.lhs.true1039, %land.lhs.true1026, %land.lhs.true992, %land.lhs.true987, %land.lhs.true977, %cond.end973, %for.end1147
  %.pr = load i32* @errflag, align 4, !tbaa !3
  %tobool1155 = icmp eq i32 %.pr, 0
  br i1 %tobool1155, label %if.end1166, label %if.then1156

if.then1156:                                      ; preds = %if.end1154.thread, %if.end1154
  store i64 1, i64* @lastval, align 8, !tbaa !0
  %cmp1157 = icmp sgt i32 %oautocont.1, -1
  br i1 %cmp1157, label %cont1163, label %if.end2742

cont1163:                                         ; preds = %if.then1156
  %conv1164 = trunc i32 %oautocont.1 to i8
  store i8 %conv1164, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %if.end2742

if.end1166:                                       ; preds = %if.end1154
  %tobool1170 = icmp eq i32 %nullexec.0, 0
  %or.cond3292 = and i1 %cmp79, %tobool1170
  br i1 %or.cond3292, label %if.then1171, label %if.end1353

if.then1171:                                      ; preds = %if.end1166
  %229 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 6), align 1, !tbaa !1
  %tobool1174 = icmp eq i8 %229, 0
  %230 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool1177 = icmp eq i8 %230, 0
  %or.cond3293 = or i1 %tobool1174, %tobool1177
  br i1 %or.cond3293, label %cont1207, label %land.lhs.true1178

land.lhs.true1178:                                ; preds = %if.then1171
  %tobool1179 = icmp eq %union.linkroot* %cond, null
  br i1 %tobool1179, label %land.lhs.true1185, label %lor.lhs.false1180

lor.lhs.false1180:                                ; preds = %land.lhs.true1178
  %first1182 = getelementptr inbounds %union.linkroot* %cond, i32 0, i32 0, i32 0
  %231 = load %struct.linknode** %first1182, align 4, !tbaa !5
  %cmp1183.not = icmp ne %struct.linknode* %231, null
  %tobool962.not3294 = xor i1 %tobool962, true
  %brmerge3295 = or i1 %cmp1183.not, %tobool962.not3294
  br i1 %brmerge3295, label %cont1207, label %land.lhs.true1187

land.lhs.true1185:                                ; preds = %land.lhs.true1178
  br i1 %tobool962, label %land.lhs.true1187, label %cont1207

land.lhs.true1187:                                ; preds = %land.lhs.true1185, %lor.lhs.false1180
  %first1189 = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 0
  %232 = load %struct.linknode** %first1189, align 4, !tbaa !5
  %cmp1190 = icmp eq %struct.linknode* %232, null
  br i1 %cmp1190, label %cont1207, label %land.lhs.true1192

land.lhs.true1192:                                ; preds = %land.lhs.true1187
  %next1195 = getelementptr inbounds %struct.linknode* %232, i32 0, i32 0
  %233 = load %struct.linknode** %next1195, align 4, !tbaa !5
  %tobool1196 = icmp eq %struct.linknode* %233, null
  br i1 %tobool1196, label %land.rhs1197, label %cont1207

land.rhs1197:                                     ; preds = %land.lhs.true1192
  %dat1200 = getelementptr inbounds %struct.linknode* %232, i32 0, i32 2
  %234 = load i8** %dat1200, align 4, !tbaa !5
  %235 = load i8* %234, align 1, !tbaa !1
  %phitmp3727 = icmp eq i8 %235, 0
  br label %cont1207

cont1207:                                         ; preds = %land.lhs.true1185, %land.lhs.true1187, %land.rhs1197, %if.then1171, %land.lhs.true1192, %lor.lhs.false1180
  %236 = phi i1 [ true, %land.lhs.true1192 ], [ true, %land.lhs.true1187 ], [ true, %land.lhs.true1185 ], [ true, %lor.lhs.false1180 ], [ true, %if.then1171 ], [ %phitmp3727, %land.rhs1197 ]
  %tobool1209 = icmp eq %struct.hashnode* %hn.3, null
  br i1 %tobool1209, label %if.then1210, label %if.end1353

if.then1210:                                      ; preds = %cont1207
  %first1213 = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 0
  %237 = load %struct.linknode** %first1213, align 4, !tbaa !5
  %dat1214 = getelementptr inbounds %struct.linknode* %237, i32 0, i32 2
  %238 = load i8** %dat1214, align 4, !tbaa !5
  %239 = load i8*** @pathchecked, align 4, !tbaa !5
  %240 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 62), align 1, !tbaa !1
  %conv1215 = sext i8 %240 to i32
  %241 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %getnode1216 = getelementptr inbounds %struct.hashtable* %241, i32 0, i32 9
  %242 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode1216, align 4, !tbaa !5
  %call1217 = call %struct.hashnode* %242(%struct.hashtable* %241, i8* %238) nounwind
  %tobool1218 = icmp eq %struct.hashnode* %call1217, null
  %brmerge3296 = or i1 %tobool1218, %236
  br i1 %brmerge3296, label %if.end1237, label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %if.then1210
  %243 = bitcast %struct.hashnode* %call1217 to %struct.cmdnam*
  %call1223 = call i32 @isreallycom(%struct.cmdnam* %243)
  %tobool1224 = icmp eq i32 %call1223, 0
  br i1 %tobool1224, label %if.then1225, label %if.end1237

if.then1225:                                      ; preds = %land.lhs.true1222
  %flags1227 = getelementptr inbounds %struct.hashnode* %call1217, i32 0, i32 2
  %244 = load i32* %flags1227, align 4, !tbaa !3
  %and1232 = and i32 %244, 2
  %tobool1233 = icmp eq i32 %and1232, 0
  %245 = load i8*** @path, align 4, !tbaa !5
  %checkpath.0 = select i1 %tobool1233, i8** %245, i8** %239
  %dohashcmd.0 = select i1 %tobool1233, i32 1, i32 %conv1215
  %246 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %removenode = getelementptr inbounds %struct.hashtable* %246, i32 0, i32 11
  %247 = load %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !5
  %call1236 = call %struct.hashnode* %247(%struct.hashtable* %246, i8* %238) nounwind
  %248 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %freenode = getelementptr inbounds %struct.hashtable* %248, i32 0, i32 14
  %249 = load void (%struct.hashnode*)** %freenode, align 4, !tbaa !5
  call void %249(%struct.hashnode* %call1217) nounwind
  br label %if.end1237

if.end1237:                                       ; preds = %if.then1210, %land.lhs.true1222, %if.then1225
  %checkpath.1 = phi i8** [ %239, %land.lhs.true1222 ], [ %checkpath.0, %if.then1225 ], [ %239, %if.then1210 ]
  %dohashcmd.1 = phi i32 [ %conv1215, %land.lhs.true1222 ], [ %dohashcmd.0, %if.then1225 ], [ %conv1215, %if.then1210 ]
  %hn.4 = phi %struct.hashnode* [ %call1217, %land.lhs.true1222 ], [ null, %if.then1225 ], [ %call1217, %if.then1210 ]
  %tobool1238 = icmp ne %struct.hashnode* %hn.4, null
  %tobool1240 = icmp eq i32 %dohashcmd.1, 0
  %or.cond3297 = or i1 %tobool1238, %tobool1240
  br i1 %or.cond3297, label %if.end1329, label %land.lhs.true1241

land.lhs.true1241:                                ; preds = %if.end1237
  %250 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str41 to i32))
  %251 = extractvalue { i32, i1 } %250, 0
  %252 = extractvalue { i32, i1 } %250, 1
  br i1 %252, label %ioc_bb1244, label %cont1247

ioc_bb1244:                                       ; preds = %land.lhs.true1241
  call void @__ioc_report_sub_overflow(i32 2606, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str41 to i32) to i64), i8 5) nounwind
  br label %cont1247

cont1247:                                         ; preds = %ioc_bb1244, %land.lhs.true1241
  %cmp1248 = icmp eq i32 %251, 1
  br i1 %cmp1248, label %cond.true1255, label %cond.false1305

cond.true1255:                                    ; preds = %cont1247
  %253 = load i8* %238, align 1, !tbaa !1
  %conv1259 = zext i8 %253 to i32
  %254 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv1259, i32 46)
  %255 = extractvalue { i32, i1 } %254, 0
  %256 = extractvalue { i32, i1 } %254, 1
  br i1 %256, label %ioc_bb1261, label %land.lhs.true1267

ioc_bb1261:                                       ; preds = %cond.true1255
  %257 = zext i8 %253 to i64
  call void @__ioc_report_sub_overflow(i32 2606, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %257, i64 46, i8 13) nounwind
  br label %land.lhs.true1267

land.lhs.true1267:                                ; preds = %cond.true1255, %ioc_bb1261
  %cmp1268 = icmp eq i32 %255, 0
  br i1 %cmp1268, label %if.then1270, label %for.cond1311

if.then1270:                                      ; preds = %land.lhs.true1267
  %arrayidx1271 = getelementptr inbounds i8* %238, i32 1
  %258 = load i8* %arrayidx1271, align 1, !tbaa !1
  %conv1272 = zext i8 %258 to i32
  %259 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv1272, i32 46)
  %260 = extractvalue { i32, i1 } %259, 0
  %261 = extractvalue { i32, i1 } %259, 1
  br i1 %261, label %ioc_bb1274, label %land.lhs.true1280

ioc_bb1274:                                       ; preds = %if.then1270
  %262 = zext i8 %258 to i64
  call void @__ioc_report_sub_overflow(i32 2606, i32 31, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %262, i64 46, i8 13) nounwind
  br label %land.lhs.true1280

land.lhs.true1280:                                ; preds = %if.then1270, %ioc_bb1274
  %cmp1281 = icmp eq i32 %260, 0
  br i1 %cmp1281, label %if.then1283, label %for.cond1311

if.then1283:                                      ; preds = %land.lhs.true1280
  %arrayidx1284 = getelementptr inbounds i8* %238, i32 2
  %263 = load i8* %arrayidx1284, align 1, !tbaa !1
  %conv1285 = zext i8 %263 to i32
  br label %cond.end1307

cond.false1305:                                   ; preds = %cont1247
  %call1306 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0)) nounwind
  br label %cond.end1307

cond.end1307:                                     ; preds = %if.then1283, %cond.false1305
  %cond1308 = phi i32 [ %call1306, %cond.false1305 ], [ %conv1285, %if.then1283 ]
  %tobool1309 = icmp eq i32 %cond1308, 0
  br i1 %tobool1309, label %if.end1329, label %for.cond1311

for.cond1311:                                     ; preds = %land.lhs.true1267, %land.lhs.true1280, %cond.end1307, %for.inc1321
  %s1172.0 = phi i8* [ %incdec.ptr1322, %for.inc1321 ], [ %238, %cond.end1307 ], [ %238, %land.lhs.true1280 ], [ %238, %land.lhs.true1267 ]
  %264 = load i8* %s1172.0, align 1, !tbaa !1
  switch i8 %264, label %for.inc1321 [
    i8 0, label %if.then1325
    i8 47, label %if.end1329
  ]

for.inc1321:                                      ; preds = %for.cond1311
  %incdec.ptr1322 = getelementptr inbounds i8* %s1172.0, i32 1
  br label %for.cond1311

if.then1325:                                      ; preds = %for.cond1311
  %call1326 = call %struct.cmdnam* @hashcmd(i8* %238, i8** %checkpath.1)
  %265 = getelementptr inbounds %struct.cmdnam* %call1326, i32 0, i32 0
  br label %if.end1329

if.end1329:                                       ; preds = %for.cond1311, %if.end1237, %cond.end1307, %if.then1325
  %hn.5 = phi %struct.hashnode* [ %hn.4, %if.end1237 ], [ %265, %if.then1325 ], [ null, %cond.end1307 ], [ null, %for.cond1311 ]
  %tobool1330.not = icmp ne %struct.hashnode* %hn.5, null
  %brmerge3299 = or i1 %tobool1330.not, %236
  br i1 %brmerge3299, label %if.end1353, label %land.lhs.true1334

land.lhs.true1334:                                ; preds = %if.end1329
  %266 = load %struct.linknode** %first1213, align 4, !tbaa !5
  %dat1337 = getelementptr inbounds %struct.linknode* %266, i32 0, i32 2
  %267 = load i8** %dat1337, align 4, !tbaa !5
  %268 = getelementptr inbounds [4096 x i8]* %sbuf.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %268) nounwind
  %269 = load i8* %267, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %269, 46
  br i1 %cmp.i, label %land.rhs.i, label %land.end20.i

land.rhs.i:                                       ; preds = %land.lhs.true1334
  %arrayidx2.i = getelementptr inbounds i8* %267, i32 1
  %270 = load i8* %arrayidx2.i, align 1, !tbaa !1
  switch i8 %270, label %land.end20.i.thread4065 [
    i8 47, label %land.end20.thread.i
    i8 0, label %land.end20.i.thread
    i8 46, label %land.rhs11.i
  ]

land.end20.i.thread:                              ; preds = %land.rhs.i
  %call.i33463683 = call fastcc i32 @cancd2(i8* %267) nounwind
  %tobool24.i3684 = icmp eq i32 %call.i33463683, 0
  br i1 %tobool24.i3684, label %if.end.i, label %if.then1340

land.end20.thread.i:                              ; preds = %land.rhs.i
  %call96.i = call fastcc i32 @cancd2(i8* %267) nounwind
  %tobool2497.i = icmp eq i32 %call96.i, 0
  br i1 %tobool2497.i, label %if.end.i, label %if.then1340

land.rhs11.i:                                     ; preds = %land.rhs.i
  %arrayidx12.i = getelementptr inbounds i8* %267, i32 2
  %271 = load i8* %arrayidx12.i, align 1, !tbaa !1
  %cmp14.i = icmp eq i8 %271, 47
  br label %land.end20.i.thread4065

land.end20.i.thread4065:                          ; preds = %land.rhs.i, %land.rhs11.i
  %.ph = phi i1 [ false, %land.rhs.i ], [ %cmp14.i, %land.rhs11.i ]
  %call.i33464067 = call fastcc i32 @cancd2(i8* %267) nounwind
  %tobool24.i4068 = icmp eq i32 %call.i33464067, 0
  br i1 %tobool24.i4068, label %if.end.i, label %cancd.exit

land.end20.i:                                     ; preds = %land.lhs.true1334
  %cmp22.i = icmp eq i8 %269, 47
  %call.i3346 = call fastcc i32 @cancd2(i8* %267) nounwind
  %tobool24.i = icmp ne i32 %call.i3346, 0
  br i1 %cmp22.i, label %if.end73.i, label %if.then.i3347

if.then.i3347:                                    ; preds = %land.end20.i
  br i1 %tobool24.i, label %cancd.exit, label %if.end.i

if.end.i:                                         ; preds = %land.end20.i.thread4065, %land.end20.i.thread, %if.then.i3347, %land.end20.thread.i
  %272 = phi i1 [ true, %land.end20.thread.i ], [ false, %if.then.i3347 ], [ true, %land.end20.i.thread ], [ %.ph, %land.end20.i.thread4065 ]
  %call26.i = call i8* @unmeta(i8* %267) nounwind
  %call27.i = call i32 @access(i8* %call26.i, i32 1) nounwind
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end1353, label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i
  br i1 %272, label %if.end62.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  %273 = load i8*** @cdpath, align 4, !tbaa !5
  %274 = load i8** %273, align 4, !tbaa !5
  %tobool3493.i = icmp eq i8* %274, null
  br i1 %tobool3493.i, label %if.end62.i, label %for.body.i

for.body.i:                                       ; preds = %if.then33.i, %for.inc.i
  %275 = phi i8* [ %287, %for.inc.i ], [ %274, %if.then33.i ]
  %cp.094.i = phi i8** [ %incdec.ptr.i, %for.inc.i ], [ %273, %if.then33.i ]
  %call35.i = call i32 @strlen(i8* %275) nounwind readonly
  %call36.i = call i32 @strlen(i8* %267) nounwind readonly
  %276 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call35.i, i32 %call36.i) nounwind
  %277 = extractvalue { i32, i1 } %276, 0
  %278 = extractvalue { i32, i1 } %276, 1
  br i1 %278, label %ioc_bb.i, label %cont38.i

ioc_bb.i:                                         ; preds = %for.body.i
  %279 = zext i32 %call36.i to i64
  %280 = zext i32 %call35.i to i64
  call void @__ioc_report_add_overflow(i32 4619, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %280, i64 %279, i8 5) nounwind
  br label %cont38.i

cont38.i:                                         ; preds = %ioc_bb.i, %for.body.i
  %281 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 1) nounwind
  %282 = extractvalue { i32, i1 } %281, 0
  %283 = extractvalue { i32, i1 } %281, 1
  br i1 %283, label %ioc_bb39.i, label %cont42.i

ioc_bb39.i:                                       ; preds = %cont38.i
  %284 = zext i32 %277 to i64
  call void @__ioc_report_add_overflow(i32 4619, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %284, i64 1, i8 5) nounwind
  br label %cont42.i

cont42.i:                                         ; preds = %ioc_bb39.i, %cont38.i
  %cmp43.i = icmp ugt i32 %282, 4095
  br i1 %cmp43.i, label %for.inc.i, label %if.end46.i

if.end46.i:                                       ; preds = %cont42.i
  %285 = load i8** %cp.094.i, align 4, !tbaa !5
  %286 = load i8* %285, align 1, !tbaa !1
  %tobool47.i = icmp eq i8 %286, 0
  br i1 %tobool47.i, label %if.else.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end46.i
  %call49.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %268, i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* %285, i8* %267) nounwind
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end46.i
  %call51.i = call i8* @strcpy(i8* %268, i8* %267) nounwind
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i, %if.then48.i
  %call54.i = call fastcc i32 @cancd2(i8* %268) nounwind
  %tobool55.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.i, label %for.inc.i, label %cont58.i

cont58.i:                                         ; preds = %if.end52.i
  store i32 -1, i32* @doprintdir, align 4, !tbaa !3
  %call60.i = call i8* @dupstring(i8* %268) nounwind
  br label %cancd.exit

for.inc.i:                                        ; preds = %if.end52.i, %cont42.i
  %incdec.ptr.i = getelementptr inbounds i8** %cp.094.i, i32 1
  %287 = load i8** %incdec.ptr.i, align 4, !tbaa !5
  %tobool34.i = icmp eq i8* %287, null
  br i1 %tobool34.i, label %if.end62.i, label %for.body.i

if.end62.i:                                       ; preds = %for.inc.i, %if.then33.i, %if.end31.i
  %call63.i = call i8* @cd_able_vars(i8* %267) nounwind
  %tobool64.i = icmp eq i8* %call63.i, null
  br i1 %tobool64.i, label %if.end1353, label %if.then65.i

if.then65.i:                                      ; preds = %if.end62.i
  %call66.i = call fastcc i32 @cancd2(i8* %call63.i) nounwind
  %tobool67.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.i, label %if.end1353, label %cont70.i

cont70.i:                                         ; preds = %if.then65.i
  store i32 -1, i32* @doprintdir, align 4, !tbaa !3
  br label %cancd.exit

if.end73.i:                                       ; preds = %land.end20.i
  %cond.i3348 = select i1 %tobool24.i, i8* %267, i8* null
  br label %cancd.exit

cancd.exit:                                       ; preds = %land.end20.i.thread4065, %if.then.i3347, %cont58.i, %cont70.i, %if.end73.i
  %retval.0.i3349 = phi i8* [ %call63.i, %cont70.i ], [ %call60.i, %cont58.i ], [ %cond.i3348, %if.end73.i ], [ %267, %if.then.i3347 ], [ %267, %land.end20.i.thread4065 ]
  call void @llvm.lifetime.end(i64 -1, i8* %268) nounwind
  %tobool1339 = icmp eq i8* %retval.0.i3349, null
  br i1 %tobool1339, label %if.end1353, label %if.then1340

if.then1340:                                      ; preds = %land.end20.i.thread, %land.end20.thread.i, %cancd.exit
  %retval.0.i33493690 = phi i8* [ %retval.0.i3349, %cancd.exit ], [ %267, %land.end20.thread.i ], [ %267, %land.end20.i.thread ]
  %288 = load %struct.linknode** %first1213, align 4, !tbaa !5
  %dat1343 = getelementptr inbounds %struct.linknode* %288, i32 0, i32 2
  store i8* %retval.0.i33493690, i8** %dat1343, align 4, !tbaa !5
  %node1344 = bitcast %union.linkroot* %args.5 to %struct.linknode*
  %call1345 = call i8* @dupstring(i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) nounwind
  %call1346 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.5, %struct.linknode* %node1344, i8* %call1345) nounwind
  %289 = load %struct.hashtable** @builtintab, align 4, !tbaa !5
  %getnode1347 = getelementptr inbounds %struct.hashtable* %289, i32 0, i32 9
  %290 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode1347, align 4, !tbaa !5
  %call1348 = call %struct.hashnode* %290(%struct.hashtable* %289, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) nounwind
  %tobool1349 = icmp eq %struct.hashnode* %call1348, null
  %is_builtin.1. = select i1 %tobool1349, i32 %is_builtin.1, i32 1
  br label %if.end1353

if.end1353:                                       ; preds = %if.end62.i, %if.then65.i, %if.end.i, %cont1207, %if.then1340, %if.end1329, %cancd.exit, %if.end1166
  %is_builtin.2 = phi i32 [ %is_builtin.1, %if.end1329 ], [ %is_builtin.1, %cancd.exit ], [ %is_builtin.1, %if.end1166 ], [ %is_builtin.1., %if.then1340 ], [ %is_builtin.1, %cont1207 ], [ %is_builtin.1, %if.end.i ], [ %is_builtin.1, %if.then65.i ], [ %is_builtin.1, %if.end62.i ]
  %hn.6 = phi %struct.hashnode* [ %hn.5, %if.end1329 ], [ null, %cancd.exit ], [ %hn.3, %if.end1166 ], [ %call1348, %if.then1340 ], [ %hn.3, %cont1207 ], [ null, %if.end.i ], [ null, %if.then65.i ], [ null, %if.end62.i ]
  %tobool1354 = icmp ne i32 %is_builtin.2, 0
  %tobool1354.not = xor i1 %tobool1354, true
  %tobool1356 = icmp eq i32 %is_shfunc.1, 0
  %or.cond3300 = and i1 %tobool1356, %tobool1354.not
  %or.cond3301 = and i1 %or.cond3300, %tobool1170
  %cmp1360 = icmp ugt i32 %and76, 7
  %not.or.cond3301 = xor i1 %or.cond3301, true
  %cmp1360. = or i1 %cmp1360, %not.or.cond3301
  br i1 %tobool943, label %if.then1389, label %lor.lhs.false1369

lor.lhs.false1369:                                ; preds = %if.end1353
  %tobool1370 = icmp eq i32 %do_exec.2, 0
  br i1 %tobool1370, label %land.lhs.true1371, label %if.else1636

land.lhs.true1371:                                ; preds = %lor.lhs.false1369
  %tobool1376 = icmp eq i32 %output, 0
  %or.cond3304 = or i1 %or.cond3300, %tobool1376
  br i1 %or.cond3304, label %lor.lhs.false1377, label %if.then1389

lor.lhs.false1377:                                ; preds = %land.lhs.true1371
  br i1 %cmp1360., label %if.then1638, label %land.lhs.true1379

land.lhs.true1379:                                ; preds = %lor.lhs.false1377
  %cmp1380 = icmp ne i32 %last1, 1
  %291 = load i32* @nsigtrapped, align 4, !tbaa !3
  %tobool1383 = icmp ne i32 %291, 0
  %or.cond2749 = or i1 %cmp1380, %tobool1383
  br i1 %or.cond2749, label %if.then1389, label %lor.lhs.false1384

lor.lhs.false1384:                                ; preds = %land.lhs.true1379
  %call1385 = call i32 @havefiles() nounwind
  %292 = load i32* @fdtable_flocks, align 4, !tbaa !3
  %293 = or i32 %292, %call1385
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %if.else1636, label %if.then1389

if.then1389:                                      ; preds = %land.lhs.true1371, %lor.lhs.false1384, %land.lhs.true1379, %if.end1353
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %arraydecay = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 0
  %call1391 = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp1392 = icmp slt i32 %call1391, 0
  br i1 %cmp1392, label %if.then1394, label %if.else1396

if.then1394:                                      ; preds = %if.then1389
  %call1395 = call i32* @__errno_location() nounwind readnone
  %295 = load i32* %call1395, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %295) nounwind
  br label %fatal

if.else1396:                                      ; preds = %if.then1389
  %call1397 = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  switch i32 %call1397, label %if.then1410 [
    i32 -1, label %if.then1402
    i32 0, label %if.end1574
  ]

if.then1402:                                      ; preds = %if.else1396
  %296 = load i32* %arraydecay, align 4, !tbaa !3
  %call1404 = call i32 @close(i32 %296) nounwind
  %arrayidx1405 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %297 = load i32* %arrayidx1405, align 4, !tbaa !3
  %call1406 = call i32 @close(i32 %297) nounwind
  store i32 1, i32* @errflag, align 4, !tbaa !3
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %fatal

if.then1410:                                      ; preds = %if.else1396
  %arrayidx1411 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %298 = load i32* %arrayidx1411, align 4, !tbaa !3
  %call1412 = call i32 @close(i32 %298) nounwind
  %299 = load i32* %arraydecay, align 4, !tbaa !3
  %call1416 = call i32 @read_loop(i32 %299, i8* %dummy, i32 1) nounwind
  %300 = load i32* %arraydecay, align 4, !tbaa !3
  %call1418 = call i32 @close(i32 %300) nounwind
  %301 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i3350 = icmp slt i32 %301, 10
  br i1 %cmp14.i3350, label %closem.exit, label %for.body.i3352

for.body.i3352:                                   ; preds = %for.cond.backedge.i, %if.then1410
  %i.015.i = phi i32 [ 10, %if.then1410 ], [ %305, %for.cond.backedge.i ]
  %302 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i = getelementptr inbounds i8* %302, i32 %i.015.i
  %303 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp7.i = icmp eq i8 %303, 6
  br i1 %cmp7.i, label %if.then.i3354, label %for.inc.i3355

if.then.i3354:                                    ; preds = %for.body.i3352
  %call.i3353 = call i32 @zclose(i32 %i.015.i) nounwind
  br label %for.inc.i3355

for.inc.i3355:                                    ; preds = %for.body.i3352, %if.then.i3354
  %304 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i, i32 1) nounwind
  %305 = extractvalue { i32, i1 } %304, 0
  %306 = extractvalue { i32, i1 } %304, 1
  br i1 %306, label %ioc_bb.i3357, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %for.inc.i3355, %ioc_bb.i3357
  %307 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i3356 = icmp sgt i32 %305, %307
  br i1 %cmp.i3356, label %closem.exit, label %for.body.i3352

ioc_bb.i3357:                                     ; preds = %for.inc.i3355
  %308 = sext i32 %i.015.i to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %308, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

closem.exit:                                      ; preds = %for.cond.backedge.i, %if.then1410
  br i1 %tobool943, label %if.then1425, label %if.else1429

if.then1425:                                      ; preds = %closem.exit
  %conv1426 = sext i32 %call1397 to i64
  store i64 %conv1426, i64* @lastpid, align 8, !tbaa !0
  store i32 -2, i32* @lastpid_status, align 4, !tbaa !6
  br label %if.end1564

if.else1429:                                      ; preds = %closem.exit
  %309 = load i32* @thisjob, align 4, !tbaa !3
  %310 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stty_in_env = getelementptr inbounds %struct.job* %310, i32 %309, i32 7
  %311 = load i32* %stty_in_env, align 4, !tbaa !3
  %tobool1431 = icmp ne i32 %311, 0
  %or.cond3305 = or i1 %tobool1431, %tobool91
  br i1 %or.cond3305, label %if.end1564, label %while.cond1437.preheader

while.cond1437.preheader:                         ; preds = %if.else1429
  %312 = load i32* %varspc.0, align 4, !tbaa !3
  %and14473735 = and i32 %312, 31
  %cmp14503736 = icmp eq i32 %and14473735, 5
  br i1 %cmp14503736, label %while.body1452.lr.ph, label %if.end1564

while.body1452.lr.ph:                             ; preds = %while.cond1437.preheader
  %313 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str43 to i32))
  %prog1524 = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %314 = extractvalue { i32, i1 } %313, 1
  br label %while.body1452

while.body1452:                                   ; preds = %while.body1452.lr.ph, %cond.end1559
  %315 = phi i32 [ %312, %while.body1452.lr.ph ], [ %320, %cond.end1559 ]
  %p.03737 = phi i32* [ %varspc.0, %while.body1452.lr.ph ], [ %add.ptr1561, %cond.end1559 ]
  br i1 %314, label %ioc_bb1457, label %cont1460

ioc_bb1457:                                       ; preds = %while.body1452
  call void @__ioc_report_sub_overflow(i32 2678, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str43 to i32) to i64), i8 5) nounwind
  br label %cont1460

cont1460:                                         ; preds = %ioc_bb1457, %while.body1452
  %316 = load %struct.eprog** %prog1524, align 4, !tbaa !5
  %add.ptr1525 = getelementptr inbounds i32* %p.03737, i32 1
  %call1526 = call i8* @ecrawstr(%struct.eprog* %316, i32* %add.ptr1525, i32* null) nounwind
  %call1527 = call i32 @strcmp(i8* %call1526, i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 0)) nounwind
  %tobool1530 = icmp eq i32 %call1527, 0
  br i1 %tobool1530, label %if.then1531, label %cont1542

if.then1531:                                      ; preds = %cont1460
  %317 = load i32* @thisjob, align 4, !tbaa !3
  %318 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stty_in_env1533 = getelementptr inbounds %struct.job* %318, i32 %317, i32 7
  store i32 1, i32* %stty_in_env1533, align 4, !tbaa !3
  br label %if.end1564

cont1542:                                         ; preds = %cont1460
  %and1540 = and i32 %315, 32
  %cmp1543 = icmp eq i32 %and1540, 0
  br i1 %cmp1543, label %cond.end1559, label %cont1556

cont1556:                                         ; preds = %cont1542
  %shr1554 = lshr i32 %315, 7
  %319 = add nuw i32 %shr1554, 2
  br label %cond.end1559

cond.end1559:                                     ; preds = %cont1542, %cont1556
  %cond1560 = phi i32 [ %319, %cont1556 ], [ 3, %cont1542 ]
  %add.ptr1561 = getelementptr inbounds i32* %p.03737, i32 %cond1560
  %320 = load i32* %add.ptr1561, align 4, !tbaa !3
  %and1447 = and i32 %320, 31
  %cmp1450 = icmp eq i32 %and1447, 5
  br i1 %cmp1450, label %while.body1452, label %if.end1564

if.end1564:                                       ; preds = %while.cond1437.preheader, %cond.end1559, %if.else1429, %if.then1531, %if.then1425
  call void @addproc(i32 %call1397, i8* %text.0, i32 0, %struct.timeval* %bgtime) nounwind
  %cmp1565 = icmp sgt i32 %oautocont.1, -1
  br i1 %cmp1565, label %cont1571, label %if.end2742

cont1571:                                         ; preds = %if.end1564
  %conv1572 = trunc i32 %oautocont.1 to i8
  store i8 %conv1572, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %if.end2742

if.end1574:                                       ; preds = %if.else1396
  %321 = load i32* %arraydecay, align 4, !tbaa !3
  %call1576 = call i32 @close(i32 %321) nounwind
  %and942.lobit3270 = lshr exact i32 %and942, 2
  %cmp1585 = icmp eq i32 %and76, 7
  %or1595.sink.v = select i1 %cmp1585, i32 66, i32 6
  %or1584.or1595.v = select i1 %tobool943, i32 2, i32 %or1595.sink.v
  %or1584.or1595 = or i32 %or1584.or1595.v, %and942.lobit3270
  call fastcc void @entersubsh(i32 %or1584.or1595)
  %arrayidx1609 = getelementptr inbounds [2 x i32]* %synch, i32 0, i32 1
  %322 = load i32* %arrayidx1609, align 4, !tbaa !3
  %call1610 = call i32 @close(i32 %322) nounwind
  %323 = load i32* getelementptr inbounds ([34 x i32]* @sigtrapped, i32 0, i32 2), align 4, !tbaa !3
  %and1615 = and i32 %323, 2
  %tobool1616 = icmp eq i32 %and1615, 0
  br i1 %tobool1616, label %cont1622, label %if.then1617

if.then1617:                                      ; preds = %if.end1574
  call void @holdintr() nounwind
  br label %cont1622

cont1622:                                         ; preds = %if.end1574, %if.then1617
  %tobool943.not = xor i1 %tobool943, true
  %324 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 22), align 1, !tbaa !1
  %tobool1627 = icmp eq i8 %324, 0
  %or.cond3306 = or i1 %tobool1627, %tobool943.not
  br i1 %or.cond3306, label %cont1660, label %if.then1628

if.then1628:                                      ; preds = %cont1622
  %call1629 = call i32 @nice(i32 5) nounwind
  %cmp1630 = icmp slt i32 %call1629, 0
  br i1 %cmp1630, label %if.then1632, label %cont1660

if.then1632:                                      ; preds = %if.then1628
  %call1633 = call i32* @__errno_location() nounwind readnone
  %325 = load i32* %call1633, align 4, !tbaa !3
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([19 x i8]* @.str44, i32 0, i32 0), i32 %325) nounwind
  br label %cont1660

if.else1636:                                      ; preds = %lor.lhs.false1384, %lor.lhs.false1369
  br i1 %cmp1360., label %if.then1638, label %cont1660

if.then1638:                                      ; preds = %lor.lhs.false1377, %if.else1636
  %326 = load i32* @thisjob, align 4, !tbaa !3
  %327 = load %struct.job** @jobtab, align 4, !tbaa !5
  %stat = getelementptr inbounds %struct.job* %327, i32 %326, i32 2
  %328 = load i32* %stat, align 4, !tbaa !3
  %or1640 = or i32 %328, 1024
  store i32 %or1640, i32* %stat, align 4, !tbaa !3
  %329 = load i32* @thisjob, align 4, !tbaa !3
  %procs = getelementptr inbounds %struct.job* %327, i32 %329, i32 4
  %330 = load %struct.process** %procs, align 4, !tbaa !5
  %tobool1642 = icmp eq %struct.process* %330, null
  br i1 %tobool1642, label %if.then1643, label %if.end1647

if.then1643:                                      ; preds = %if.then1638
  %stat1645 = getelementptr inbounds %struct.job* %327, i32 %329, i32 2
  %331 = load i32* %stat1645, align 4, !tbaa !3
  %or1646 = or i32 %331, 32
  store i32 %or1646, i32* %stat1645, align 4, !tbaa !3
  br label %if.end1647

if.end1647:                                       ; preds = %if.then1638, %if.then1643
  br i1 %tobool1354, label %if.then1649, label %cont1660

if.then1649:                                      ; preds = %if.end1647
  %332 = load i32* @thisjob, align 4, !tbaa !3
  %stat1651 = getelementptr inbounds %struct.job* %327, i32 %332, i32 2
  %333 = load i32* %stat1651, align 4, !tbaa !3
  %or1652 = or i32 %333, 16384
  store i32 %or1652, i32* %stat1651, align 4, !tbaa !3
  br label %cont1660

cont1660:                                         ; preds = %if.else1636, %cont1622, %if.then1649, %if.end1647, %if.then1632, %if.then1628
  %is_exec.0 = phi i32 [ 0, %if.then1632 ], [ 0, %if.then1628 ], [ 0, %cont1622 ], [ 0, %if.then1649 ], [ 0, %if.end1647 ], [ 1, %if.else1636 ]
  %forked.0 = phi i32 [ 1, %if.then1632 ], [ 1, %if.then1628 ], [ 1, %cont1622 ], [ 0, %if.then1649 ], [ 0, %if.end1647 ], [ 0, %if.else1636 ]
  %and1661 = and i32 %cflags.7, 1024
  %and1661.lobit = lshr exact i32 %and1661, 10
  %334 = xor i32 %and1661.lobit, 1
  store i32 %334, i32* @esglob, align 4, !tbaa !3
  %lnot1663.not = icmp ne i32 %and1661, 0
  %tobool962.not3307 = xor i1 %tobool962, true
  %brmerge3308 = or i1 %lnot1663.not, %tobool962.not3307
  br i1 %brmerge3308, label %if.end1671, label %land.lhs.true1667

land.lhs.true1667:                                ; preds = %cont1660
  %335 = load i32* %htok, align 4, !tbaa !3
  %tobool1668 = icmp eq i32 %335, 0
  br i1 %tobool1668, label %if.end1671, label %if.then1669

if.then1669:                                      ; preds = %land.lhs.true1667
  call void @globlist(%union.linkroot* %args.5, i32 0) nounwind
  br label %if.end1671

if.end1671:                                       ; preds = %land.lhs.true1667, %cont1660, %if.then1669
  %336 = load i32* @errflag, align 4, !tbaa !3
  %tobool1672 = icmp eq i32 %336, 0
  br i1 %tobool1672, label %if.end1674, label %if.then1673

if.then1673:                                      ; preds = %if.end1671
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %err

if.end1674:                                       ; preds = %if.end1671
  %337 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call1675 = call i32 @fflush(%struct._IO_FILE* %337) nounwind
  %338 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool1677 = icmp eq i8 %338, 0
  br i1 %tobool1677, label %if.end1699, label %land.lhs.true1678

land.lhs.true1678:                                ; preds = %if.end1674
  %339 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %340 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  %cmp1679 = icmp eq %struct._IO_FILE* %339, %340
  br i1 %cmp1679, label %land.lhs.true1681, label %if.end1699

land.lhs.true1681:                                ; preds = %land.lhs.true1678
  switch i32 %and76, label %if.end1699 [
    i32 9, label %if.then1687
    i32 6, label %if.then1687
    i32 5, label %if.then1687
    i32 4, label %if.then1687
    i32 3, label %if.then1687
    i32 2, label %if.then1687
    i32 1, label %if.then1687
    i32 0, label %if.then1687
  ]

if.then1687:                                      ; preds = %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681, %land.lhs.true1681
  %call1688 = call i32 @fileno(%struct._IO_FILE* %339) nounwind
  %call1689 = call i32 @dup(i32 %call1688) nounwind
  %call1690 = call i32 @movefd(i32 %call1689) nounwind
  %call1691 = call %struct._IO_FILE* @fdopen(i32 %call1690, i8* getelementptr inbounds ([2 x i8]* @.str45, i32 0, i32 0)) nounwind
  %tobool1692 = icmp eq %struct._IO_FILE* %call1691, null
  br i1 %tobool1692, label %if.end1699, label %if.then1693

if.then1693:                                      ; preds = %if.then1687
  store %struct._IO_FILE* %call1691, %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call1696 = call i32 @fileno(%struct._IO_FILE* %call1691) nounwind
  %341 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx1697 = getelementptr inbounds i8* %341, i32 %call1696
  store i8 3, i8* %arrayidx1697, align 1, !tbaa !1
  br label %if.end1699

if.end1699:                                       ; preds = %land.lhs.true1681, %if.then1687, %if.end1674, %if.then1693, %land.lhs.true1678
  %newxtrerr.0 = phi %struct._IO_FILE* [ %call1691, %if.then1693 ], [ null, %if.then1687 ], [ null, %land.lhs.true1681 ], [ null, %land.lhs.true1678 ], [ null, %if.end1674 ]
  %tobool1700 = icmp eq i32 %input, 0
  br i1 %tobool1700, label %if.end1704, label %if.then1701

if.then1701:                                      ; preds = %if.end1699
  %arraydecay1702 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 0
  %arraydecay1703 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 0
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay1702, %struct.multio** %arraydecay1703, i32 0, i32 %input, i32 0, i8* null)
  br label %if.end1704

if.end1704:                                       ; preds = %if.end1699, %if.then1701
  %tobool1705 = icmp eq i32 %output, 0
  br i1 %tobool1705, label %if.end1709, label %if.then1706

if.then1706:                                      ; preds = %if.end1704
  %arraydecay1707 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 0
  %arraydecay1708 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 0
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay1707, %struct.multio** %arraydecay1708, i32 1, i32 %output, i32 1, i8* null)
  br label %if.end1709

if.end1709:                                       ; preds = %if.end1704, %if.then1706
  %tobool1710 = icmp eq %union.linkroot* %cond, null
  br i1 %tobool1710, label %for.cond2300.preheader, label %if.then1711

if.then1711:                                      ; preds = %if.end1709
  %first.i3604 = getelementptr inbounds %union.linkroot* %cond, i32 0, i32 0, i32 0
  %n.0.i3776 = load %struct.linknode** %first.i3604, align 4
  %tobool.i36053777 = icmp eq %struct.linknode* %n.0.i3776, null
  br i1 %tobool.i36053777, label %land.rhs1715.lr.ph, label %for.body.i3609

land.rhs1715.lr.ph:                               ; preds = %if.then1711, %for.inc.i3617
  %342 = bitcast %struct.stat* %buf.i to i8*
  %343 = bitcast %struct.stat* %buf.i to %struct.stat64*
  %st_mode.i = getelementptr inbounds %struct.stat* %buf.i, i32 0, i32 3
  %arraydecay2269 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 0
  %arraydecay2270 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 0
  %344 = bitcast i8** %s.i to i8*
  %345 = bitcast i8** %t.i to i8*
  %346 = bitcast i32* %len.i to i8*
  %cmp1922 = icmp eq i32 %nullexec.0, 1
  %tobool2016 = icmp eq i32 %forked.0, 0
  br label %land.rhs1715

for.body.i3609:                                   ; preds = %if.then1711, %for.inc.i3617
  %n.0.i3778 = phi %struct.linknode* [ %n.0.i, %for.inc.i3617 ], [ %n.0.i3776, %if.then1711 ]
  %dat.i3607 = getelementptr inbounds %struct.linknode* %n.0.i3778, i32 0, i32 2
  %347 = load i8** %dat.i3607, align 4, !tbaa !5
  %type.i3608 = bitcast i8* %347 to i32*
  %348 = load i32* %type.i3608, align 4, !tbaa !3
  %.off.i = add i32 %348, -16
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i3612, label %for.inc.i3617

if.then.i3612:                                    ; preds = %for.body.i3609
  %name.i3610 = getelementptr inbounds i8* %347, i32 16
  %349 = bitcast i8* %name.i3610 to i8**
  %350 = load i8** %349, align 4, !tbaa !5
  br i1 %tobool1170, label %lor.rhs.i3614, label %lor.end.i3616

lor.rhs.i3614:                                    ; preds = %if.then.i3612
  %varid.i = getelementptr inbounds i8* %347, i32 20
  %351 = bitcast i8* %varid.i to i8**
  %352 = load i8** %351, align 4, !tbaa !5
  %tobool4.i3613 = icmp ne i8* %352, null
  br label %lor.end.i3616

lor.end.i3616:                                    ; preds = %lor.rhs.i3614, %if.then.i3612
  %353 = phi i1 [ true, %if.then.i3612 ], [ %tobool4.i3613, %lor.rhs.i3614 ]
  %lor.ext.i = zext i1 %353 to i32
  %call.i3615 = call fastcc i32 @getpipe(i8* %350, i32 %lor.ext.i) nounwind
  %fd2.i = getelementptr inbounds i8* %347, i32 12
  %354 = bitcast i8* %fd2.i to i32*
  store i32 %call.i3615, i32* %354, align 4, !tbaa !3
  br label %for.inc.i3617

for.inc.i3617:                                    ; preds = %lor.end.i3616, %for.body.i3609
  %next.i = getelementptr inbounds %struct.linknode* %n.0.i3778, i32 0, i32 0
  %n.0.i = load %struct.linknode** %next.i, align 4
  %tobool.i3605 = icmp eq %struct.linknode* %n.0.i, null
  br i1 %tobool.i3605, label %land.rhs1715.lr.ph, label %for.body.i3609

for.cond2300.preheader:                           ; preds = %land.rhs1715, %if.end1709
  %arraydecay2311 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 0
  br label %for.body2303

land.rhs1715:                                     ; preds = %if.end1788, %if.end1752, %if.end1834, %sw.epilog2284, %land.lhs.true1799, %land.rhs1715.lr.ph
  %355 = load %struct.linknode** %first.i3604, align 4, !tbaa !5
  %cmp1718 = icmp eq %struct.linknode* %355, null
  br i1 %cmp1718, label %for.cond2300.preheader, label %while.body1722

while.body1722:                                   ; preds = %land.rhs1715
  %call1723 = call i8* @ugetnode(%union.linkroot* %cond) nounwind
  %356 = bitcast i8* %call1723 to %struct.redir*
  %type1724 = bitcast i8* %call1723 to i32*
  %357 = load i32* %type1724, align 4, !tbaa !3
  switch i32 %357, label %land.lhs.true1799 [
    i32 16, label %if.then1727
    i32 17, label %if.then1760
    i32 12, label %if.end1803
  ]

if.then1727:                                      ; preds = %while.body1722
  %call1728 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool1729 = icmp eq i32 %call1728, 0
  %fd21736.phi.trans.insert = getelementptr inbounds i8* %call1723, i32 12
  %.phi.trans.insert4044 = bitcast i8* %fd21736.phi.trans.insert to i32*
  %.pre4045 = load i32* %.phi.trans.insert4044, align 4, !tbaa !3
  %cmp1739 = icmp eq i32 %.pre4045, -1
  br i1 %tobool1729, label %if.then1735, label %lor.lhs.false1730

lor.lhs.false1730:                                ; preds = %if.then1727
  br i1 %cmp1739, label %if.end1744, label %if.end1752

if.then1735:                                      ; preds = %if.then1727
  br i1 %cmp1739, label %if.end1744, label %if.then1741

if.then1741:                                      ; preds = %if.then1735
  %call1743 = call i32 @zclose(i32 %.pre4045) nounwind
  br label %if.end1744

if.end1744:                                       ; preds = %lor.lhs.false1730, %if.then1735, %if.then1741
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3358 = call i32* @__errno_location() nounwind readnone
  %358 = load i32* %call.i3358, align 4, !tbaa !3
  br label %for.body.i3361

for.body.i3361:                                   ; preds = %for.cond.backedge.i3365, %if.end1744
  %i.012.i = phi i32 [ 0, %if.end1744 ], [ %361, %for.cond.backedge.i3365 ]
  %arrayidx.i3359 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i
  %359 = load i32* %arrayidx.i3359, align 4, !tbaa !3
  %cmp1.i3360 = icmp eq i32 %359, -2
  br i1 %cmp1.i3360, label %for.inc.i3363, label %if.then.i3362

if.then.i3362:                                    ; preds = %for.body.i3361
  %call3.i = call i32 @redup(i32 %359, i32 %i.012.i) nounwind
  br label %for.inc.i3363

for.inc.i3363:                                    ; preds = %if.then.i3362, %for.body.i3361
  %360 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i, i32 1) nounwind
  %361 = extractvalue { i32, i1 } %360, 0
  %362 = extractvalue { i32, i1 } %360, 1
  br i1 %362, label %ioc_bb4.i, label %for.cond.backedge.i3365

for.cond.backedge.i3365:                          ; preds = %ioc_bb4.i, %for.inc.i3363
  %cmp.i3364 = icmp eq i32 %361, 10
  br i1 %cmp.i3364, label %fixfds.exit, label %for.body.i3361

ioc_bb4.i:                                        ; preds = %for.inc.i3363
  %363 = sext i32 %i.012.i to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %363, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3365

fixfds.exit:                                      ; preds = %for.cond.backedge.i3365
  store i32 %358, i32* %call.i3358, align 4, !tbaa !3
  br i1 %tobool2016, label %if.then1748, label %if.else1751

if.then1748:                                      ; preds = %fixfds.exit
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1751:                                      ; preds = %fixfds.exit
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1752:                                       ; preds = %lor.lhs.false1730
  %fd1 = getelementptr inbounds i8* %call1723, i32 8
  %364 = bitcast i8* %fd1 to i32*
  %365 = load i32* %364, align 4, !tbaa !3
  %varid = getelementptr inbounds i8* %call1723, i32 20
  %366 = bitcast i8* %varid to i8**
  %367 = load i8** %366, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %365, i32 %.pre4045, i32 0, i8* %367)
  br label %land.rhs1715

if.then1760:                                      ; preds = %while.body1722
  %call1761 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool1762 = icmp eq i32 %call1761, 0
  %fd21770.phi.trans.insert = getelementptr inbounds i8* %call1723, i32 12
  %.phi.trans.insert4046 = bitcast i8* %fd21770.phi.trans.insert to i32*
  %.pre4047 = load i32* %.phi.trans.insert4046, align 4, !tbaa !3
  %cmp1773 = icmp eq i32 %.pre4047, -1
  br i1 %tobool1762, label %if.then1769, label %lor.lhs.false1763

lor.lhs.false1763:                                ; preds = %if.then1760
  br i1 %cmp1773, label %if.end1778, label %if.end1788

if.then1769:                                      ; preds = %if.then1760
  br i1 %cmp1773, label %if.end1778, label %if.then1775

if.then1775:                                      ; preds = %if.then1769
  %call1777 = call i32 @zclose(i32 %.pre4047) nounwind
  br label %if.end1778

if.end1778:                                       ; preds = %lor.lhs.false1763, %if.then1769, %if.then1775
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3366 = call i32* @__errno_location() nounwind readnone
  %368 = load i32* %call.i3366, align 4, !tbaa !3
  br label %for.body.i3370

for.body.i3370:                                   ; preds = %for.cond.backedge.i3375, %if.end1778
  %i.012.i3367 = phi i32 [ 0, %if.end1778 ], [ %371, %for.cond.backedge.i3375 ]
  %arrayidx.i3368 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3367
  %369 = load i32* %arrayidx.i3368, align 4, !tbaa !3
  %cmp1.i3369 = icmp eq i32 %369, -2
  br i1 %cmp1.i3369, label %for.inc.i3373, label %if.then.i3372

if.then.i3372:                                    ; preds = %for.body.i3370
  %call3.i3371 = call i32 @redup(i32 %369, i32 %i.012.i3367) nounwind
  br label %for.inc.i3373

for.inc.i3373:                                    ; preds = %if.then.i3372, %for.body.i3370
  %370 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3367, i32 1) nounwind
  %371 = extractvalue { i32, i1 } %370, 0
  %372 = extractvalue { i32, i1 } %370, 1
  br i1 %372, label %ioc_bb4.i3376, label %for.cond.backedge.i3375

for.cond.backedge.i3375:                          ; preds = %ioc_bb4.i3376, %for.inc.i3373
  %cmp.i3374 = icmp eq i32 %371, 10
  br i1 %cmp.i3374, label %fixfds.exit3377, label %for.body.i3370

ioc_bb4.i3376:                                    ; preds = %for.inc.i3373
  %373 = sext i32 %i.012.i3367 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %373, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3375

fixfds.exit3377:                                  ; preds = %for.cond.backedge.i3375
  store i32 %368, i32* %call.i3366, align 4, !tbaa !3
  br i1 %tobool2016, label %if.then1783, label %if.else1786

if.then1783:                                      ; preds = %fixfds.exit3377
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1786:                                      ; preds = %fixfds.exit3377
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1788:                                       ; preds = %lor.lhs.false1763
  %fd11791 = getelementptr inbounds i8* %call1723, i32 8
  %374 = bitcast i8* %fd11791 to i32*
  %375 = load i32* %374, align 4, !tbaa !3
  %varid1793 = getelementptr inbounds i8* %call1723, i32 20
  %376 = bitcast i8* %varid1793 to i8**
  %377 = load i8** %376, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %375, i32 %.pre4047, i32 1, i8* %377)
  br label %land.rhs1715

land.lhs.true1799:                                ; preds = %while.body1722
  %call1800 = call i32 @xpandredir(%struct.redir* %356, %union.linkroot* %cond) nounwind
  %tobool1801 = icmp eq i32 %call1800, 0
  br i1 %tobool1801, label %if.end1803, label %land.rhs1715

if.end1803:                                       ; preds = %while.body1722, %land.lhs.true1799
  %378 = load i32* @errflag, align 4, !tbaa !3
  %tobool1804 = icmp eq i32 %378, 0
  br i1 %tobool1804, label %if.end1815, label %if.then1805

if.then1805:                                      ; preds = %if.end1803
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3378 = call i32* @__errno_location() nounwind readnone
  %379 = load i32* %call.i3378, align 4, !tbaa !3
  br label %for.body.i3382

for.body.i3382:                                   ; preds = %for.cond.backedge.i3387, %if.then1805
  %i.012.i3379 = phi i32 [ 0, %if.then1805 ], [ %382, %for.cond.backedge.i3387 ]
  %arrayidx.i3380 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3379
  %380 = load i32* %arrayidx.i3380, align 4, !tbaa !3
  %cmp1.i3381 = icmp eq i32 %380, -2
  br i1 %cmp1.i3381, label %for.inc.i3385, label %if.then.i3384

if.then.i3384:                                    ; preds = %for.body.i3382
  %call3.i3383 = call i32 @redup(i32 %380, i32 %i.012.i3379) nounwind
  br label %for.inc.i3385

for.inc.i3385:                                    ; preds = %if.then.i3384, %for.body.i3382
  %381 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3379, i32 1) nounwind
  %382 = extractvalue { i32, i1 } %381, 0
  %383 = extractvalue { i32, i1 } %381, 1
  br i1 %383, label %ioc_bb4.i3388, label %for.cond.backedge.i3387

for.cond.backedge.i3387:                          ; preds = %ioc_bb4.i3388, %for.inc.i3385
  %cmp.i3386 = icmp eq i32 %382, 10
  br i1 %cmp.i3386, label %fixfds.exit3389, label %for.body.i3382

ioc_bb4.i3388:                                    ; preds = %for.inc.i3385
  %384 = sext i32 %i.012.i3379 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %384, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3387

fixfds.exit3389:                                  ; preds = %for.cond.backedge.i3387
  store i32 %379, i32* %call.i3378, align 4, !tbaa !3
  br i1 %tobool2016, label %if.then1810, label %if.else1813

if.then1810:                                      ; preds = %fixfds.exit3389
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1813:                                      ; preds = %fixfds.exit3389
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1815:                                       ; preds = %if.end1803
  %385 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool1817 = icmp eq i8 %385, 0
  br i1 %tobool1817, label %if.end1834, label %land.lhs.true1818

land.lhs.true1818:                                ; preds = %if.end1815
  %386 = load i32* %type1724, align 4, !tbaa !3
  %387 = icmp ult i32 %386, 9
  br i1 %387, label %if.then1826, label %if.end1834

if.then1826:                                      ; preds = %land.lhs.true1818
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([51 x i8]* @.str46, i32 0, i32 0)) nounwind
  br i1 %tobool2016, label %if.then1829, label %if.else1832

if.then1829:                                      ; preds = %if.then1826
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1832:                                      ; preds = %if.then1826
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1834:                                       ; preds = %if.end1815, %land.lhs.true1818
  %388 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool1835 = icmp eq i8 %388, 0
  br i1 %tobool1835, label %land.rhs1715, label %if.end1837

if.end1837:                                       ; preds = %if.end1834
  %389 = load i32* %type1724, align 4, !tbaa !3
  switch i32 %389, label %sw.default2170 [
    i32 12, label %sw.bb1839
    i32 9, label %sw.bb1877
    i32 8, label %sw.bb1877
    i32 15, label %sw.bb1938
    i32 13, label %sw.bb2058
    i32 14, label %sw.bb2058
  ]

sw.bb1839:                                        ; preds = %if.end1837
  %call1840 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool1841 = icmp eq i32 %call1840, 0
  br i1 %tobool1841, label %if.then1852, label %if.else1845

if.else1845:                                      ; preds = %sw.bb1839
  call void @llvm.lifetime.start(i64 -1, i8* %344) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %345) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %346) nounwind
  %name.i = getelementptr inbounds i8* %call1723, i32 16
  %390 = bitcast i8* %name.i to i8**
  %391 = load i8** %390, align 4, !tbaa !5
  store i8* %391, i8** %t.i, align 4, !tbaa !5
  call void @singsub(i8** %t.i) nounwind
  %392 = load i8** %t.i, align 4, !tbaa !5
  call void @untokenize(i8* %392) nounwind
  %393 = load i8** %t.i, align 4, !tbaa !5
  %call.i3390 = call i8* @unmetafy(i8* %393, i32* %len.i) nounwind
  %flags.i3391 = getelementptr inbounds i8* %call1723, i32 4
  %394 = bitcast i8* %flags.i3391 to i32*
  %395 = load i32* %394, align 4, !tbaa !3
  %and.i3392 = and i32 %395, 1
  %tobool.i3393 = icmp eq i32 %and.i3392, 0
  br i1 %tobool.i3393, label %cont.i, label %if.end.i3397

cont.i:                                           ; preds = %if.else1845
  %396 = load i32* %len.i, align 4, !tbaa !3
  %397 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %396, i32 1) nounwind
  %398 = extractvalue { i32, i1 } %397, 0
  %399 = extractvalue { i32, i1 } %397, 1
  br i1 %399, label %ioc_bb1.i, label %cont2.i

ioc_bb1.i:                                        ; preds = %cont.i
  %400 = sext i32 %396 to i64
  call void @__ioc_report_add_overflow(i32 3516, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %400, i64 1, i8 13) nounwind
  br label %cont2.i

cont2.i:                                          ; preds = %ioc_bb1.i, %cont.i
  store i32 %398, i32* %len.i, align 4, !tbaa !3
  %401 = load i8** %t.i, align 4, !tbaa !5
  %arrayidx.i3394 = getelementptr inbounds i8* %401, i32 %396
  store i8 10, i8* %arrayidx.i3394, align 1, !tbaa !1
  br label %if.end.i3397

if.end.i3397:                                     ; preds = %cont2.i, %if.else1845
  %call3.i3395 = call i32 @gettempfile(i8* null, i32 1, i8** %s.i) nounwind
  %cmp.i3396 = icmp slt i32 %call3.i3395, 0
  br i1 %cmp.i3396, label %cont1849, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i3397
  %402 = load i8** %t.i, align 4, !tbaa !5
  %403 = load i32* %len.i, align 4, !tbaa !3
  %404 = icmp sgt i32 %403, -1
  br i1 %404, label %cont9.i, label %ioc_bb8.i

ioc_bb8.i:                                        ; preds = %if.end7.i
  %405 = sext i32 %403 to i64
  call void @__ioc_report_conversion(i32 3519, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %405, i8 1) nounwind
  br label %cont9.i

cont9.i:                                          ; preds = %ioc_bb8.i, %if.end7.i
  %call10.i = call i32 @write_loop(i32 %call3.i3395, i8* %402, i32 %403) nounwind
  %call11.i = call i32 @close(i32 %call3.i3395) nounwind
  %406 = load i8** %s.i, align 4, !tbaa !5
  %call12.i = call i32 (i8*, i32, ...)* @open64(i8* %406, i32 256) nounwind
  %407 = load i8** %s.i, align 4, !tbaa !5
  %call13.i = call i32 @unlink(i8* %407) nounwind
  br label %cont1849

cont1849:                                         ; preds = %cont9.i, %if.end.i3397
  %retval.0.i3398 = phi i32 [ %call12.i, %cont9.i ], [ -1, %if.end.i3397 ]
  call void @llvm.lifetime.end(i64 -1, i8* %344) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %345) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %346) nounwind
  %cmp1850 = icmp eq i32 %retval.0.i3398, -1
  br i1 %cmp1850, label %if.then1852, label %if.end1871

if.then1852:                                      ; preds = %sw.bb1839, %cont1849
  %call1853 = call i32* @__errno_location() nounwind readnone
  %408 = load i32* %call1853, align 4, !tbaa !3
  switch i32 %408, label %if.then1859 [
    i32 0, label %if.end1861
    i32 4, label %if.end1861
  ]

if.then1859:                                      ; preds = %if.then1852
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([45 x i8]* @.str47, i32 0, i32 0), i32 %408) nounwind
  br label %if.end1861

if.end1861:                                       ; preds = %if.then1852, %if.then1852, %if.then1859
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %409 = load i32* %call1853, align 4, !tbaa !3
  br label %for.body.i3403

for.body.i3403:                                   ; preds = %for.cond.backedge.i3408, %if.end1861
  %i.012.i3400 = phi i32 [ 0, %if.end1861 ], [ %412, %for.cond.backedge.i3408 ]
  %arrayidx.i3401 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3400
  %410 = load i32* %arrayidx.i3401, align 4, !tbaa !3
  %cmp1.i3402 = icmp eq i32 %410, -2
  br i1 %cmp1.i3402, label %for.inc.i3406, label %if.then.i3405

if.then.i3405:                                    ; preds = %for.body.i3403
  %call3.i3404 = call i32 @redup(i32 %410, i32 %i.012.i3400) nounwind
  br label %for.inc.i3406

for.inc.i3406:                                    ; preds = %if.then.i3405, %for.body.i3403
  %411 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3400, i32 1) nounwind
  %412 = extractvalue { i32, i1 } %411, 0
  %413 = extractvalue { i32, i1 } %411, 1
  br i1 %413, label %ioc_bb4.i3409, label %for.cond.backedge.i3408

for.cond.backedge.i3408:                          ; preds = %ioc_bb4.i3409, %for.inc.i3406
  %cmp.i3407 = icmp eq i32 %412, 10
  br i1 %cmp.i3407, label %fixfds.exit3410, label %for.body.i3403

ioc_bb4.i3409:                                    ; preds = %for.inc.i3406
  %414 = sext i32 %i.012.i3400 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %414, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3408

fixfds.exit3410:                                  ; preds = %for.cond.backedge.i3408
  store i32 %409, i32* %call1853, align 4, !tbaa !3
  br i1 %tobool2016, label %if.then1866, label %if.else1869

if.then1866:                                      ; preds = %fixfds.exit3410
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1869:                                      ; preds = %fixfds.exit3410
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1871:                                       ; preds = %cont1849
  %fd11874 = getelementptr inbounds i8* %call1723, i32 8
  %415 = bitcast i8* %fd11874 to i32*
  %416 = load i32* %415, align 4, !tbaa !3
  %varid1875 = getelementptr inbounds i8* %call1723, i32 20
  %417 = bitcast i8* %varid1875 to i8**
  %418 = load i8** %417, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %416, i32 %retval.0.i3398, i32 0, i8* %418)
  br label %sw.epilog2284

sw.bb1877:                                        ; preds = %if.end1837, %if.end1837
  %call1878 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool1879 = icmp eq i32 %call1878, 0
  br i1 %tobool1879, label %if.then1900, label %if.else1883

if.else1883:                                      ; preds = %sw.bb1877
  %419 = load i32* %type1724, align 4, !tbaa !3
  %cmp1885 = icmp eq i32 %419, 9
  %name = getelementptr inbounds i8* %call1723, i32 16
  %420 = bitcast i8* %name to i8**
  %421 = load i8** %420, align 4, !tbaa !5
  %call1888 = call i8* @unmeta(i8* %421) nounwind
  br i1 %cmp1885, label %if.then1887, label %if.else1890

if.then1887:                                      ; preds = %if.else1883
  %call1889 = call i32 (i8*, i32, ...)* @open64(i8* %call1888, i32 256) nounwind
  br label %cont1897

if.else1890:                                      ; preds = %if.else1883
  %call1893 = call i32 (i8*, i32, ...)* @open64(i8* %call1888, i32 322, i32 438) nounwind
  br label %cont1897

cont1897:                                         ; preds = %if.else1890, %if.then1887
  %fil.1 = phi i32 [ %call1889, %if.then1887 ], [ %call1893, %if.else1890 ]
  %cmp1898 = icmp eq i32 %fil.1, -1
  br i1 %cmp1898, label %if.then1900, label %if.end1917

if.then1900:                                      ; preds = %sw.bb1877, %cont1897
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3411 = call i32* @__errno_location() nounwind readnone
  %422 = load i32* %call.i3411, align 4, !tbaa !3
  br label %for.body.i3415

for.body.i3415:                                   ; preds = %for.cond.backedge.i3420, %if.then1900
  %i.012.i3412 = phi i32 [ 0, %if.then1900 ], [ %425, %for.cond.backedge.i3420 ]
  %arrayidx.i3413 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3412
  %423 = load i32* %arrayidx.i3413, align 4, !tbaa !3
  %cmp1.i3414 = icmp eq i32 %423, -2
  br i1 %cmp1.i3414, label %for.inc.i3418, label %if.then.i3417

if.then.i3417:                                    ; preds = %for.body.i3415
  %call3.i3416 = call i32 @redup(i32 %423, i32 %i.012.i3412) nounwind
  br label %for.inc.i3418

for.inc.i3418:                                    ; preds = %if.then.i3417, %for.body.i3415
  %424 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3412, i32 1) nounwind
  %425 = extractvalue { i32, i1 } %424, 0
  %426 = extractvalue { i32, i1 } %424, 1
  br i1 %426, label %ioc_bb4.i3421, label %for.cond.backedge.i3420

for.cond.backedge.i3420:                          ; preds = %ioc_bb4.i3421, %for.inc.i3418
  %cmp.i3419 = icmp eq i32 %425, 10
  br i1 %cmp.i3419, label %fixfds.exit3422, label %for.body.i3415

ioc_bb4.i3421:                                    ; preds = %for.inc.i3418
  %427 = sext i32 %i.012.i3412 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %427, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3420

fixfds.exit3422:                                  ; preds = %for.cond.backedge.i3420
  store i32 %422, i32* %call.i3411, align 4, !tbaa !3
  %cmp1904 = icmp eq i32 %422, 4
  br i1 %cmp1904, label %do.body1910, label %if.then1906

if.then1906:                                      ; preds = %fixfds.exit3422
  %name1908 = getelementptr inbounds i8* %call1723, i32 16
  %428 = bitcast i8* %name1908 to i8**
  %429 = load i8** %428, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %422, i8* %429) nounwind
  br label %do.body1910

do.body1910:                                      ; preds = %fixfds.exit3422, %if.then1906
  br i1 %tobool2016, label %if.then1912, label %if.else1915

if.then1912:                                      ; preds = %do.body1910
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else1915:                                      ; preds = %do.body1910
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end1917:                                       ; preds = %cont1897
  %fd11920 = getelementptr inbounds i8* %call1723, i32 8
  %430 = bitcast i8* %fd11920 to i32*
  %431 = load i32* %430, align 4, !tbaa !3
  %varid1921 = getelementptr inbounds i8* %call1723, i32 20
  %432 = bitcast i8* %varid1921 to i8**
  %433 = load i8** %432, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %431, i32 %fil.1, i32 0, i8* %433)
  br i1 %cmp1922, label %land.lhs.true1924, label %sw.epilog2284

land.lhs.true1924:                                ; preds = %if.end1917
  %434 = load i32* %430, align 4, !tbaa !3
  %cmp1926 = icmp ne i32 %434, 0
  %435 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool1930 = icmp eq i8 %435, 0
  %or.cond3310 = or i1 %cmp1926, %tobool1930
  br i1 %or.cond3310, label %sw.epilog2284, label %land.lhs.true1931

land.lhs.true1931:                                ; preds = %land.lhs.true1924
  %436 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool1933 = icmp eq i8 %436, 0
  %437 = load i32* @zleactive, align 4, !tbaa !3
  %tobool1935 = icmp ne i32 %437, 0
  %or.cond2752 = or i1 %tobool1933, %tobool1935
  br i1 %or.cond2752, label %sw.epilog2284, label %if.then1936

if.then1936:                                      ; preds = %land.lhs.true1931
  call void @init_io() nounwind
  br label %sw.epilog2284

sw.bb1938:                                        ; preds = %if.end1837
  %varid1939 = getelementptr inbounds i8* %call1723, i32 20
  %438 = bitcast i8* %varid1939 to i8**
  %439 = load i8** %438, align 4, !tbaa !5
  %tobool1940 = icmp eq i8* %439, null
  br i1 %tobool1940, label %if.end2015, label %if.then1941

if.then1941:                                      ; preds = %sw.bb1938
  store i8* %439, i8** %s1943, align 4, !tbaa !5
  %call1948 = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s1943, i32 0) nounwind
  %tobool1949 = icmp eq %struct.value* %call1948, null
  br i1 %tobool1949, label %if.then1992.thread, label %if.else1951

if.else1951:                                      ; preds = %if.then1941
  %pm = getelementptr inbounds %struct.value* %call1948, i32 0, i32 1
  %440 = load %struct.param** %pm, align 4, !tbaa !5
  %flags1953 = getelementptr inbounds %struct.param* %440, i32 0, i32 0, i32 2
  %441 = load i32* %flags1953, align 4, !tbaa !3
  %and1958 = and i32 %441, 1024
  %tobool1959 = icmp eq i32 %and1958, 0
  br i1 %tobool1959, label %if.else1961, label %if.then1992.thread

if.else1961:                                      ; preds = %if.else1951
  %call1962 = call i64 @getintvalue(%struct.value* %call1948) nounwind
  %call1962.off = add i64 %call1962, 2147483648
  %442 = icmp ult i64 %call1962.off, 4294967296
  br i1 %442, label %cont1966, label %ioc_bb1965

ioc_bb1965:                                       ; preds = %if.else1961
  call void @__ioc_report_conversion(i32 2893, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %call1962, i8 1) nounwind
  br label %cont1966

cont1966:                                         ; preds = %ioc_bb1965, %if.else1961
  %conv1967 = trunc i64 %call1962 to i32
  %fd11968 = getelementptr inbounds i8* %call1723, i32 8
  %443 = bitcast i8* %fd11968 to i32*
  store i32 %conv1967, i32* %443, align 4, !tbaa !3
  %444 = load i32* @errflag, align 4, !tbaa !3
  %tobool1969 = icmp eq i32 %444, 0
  br i1 %tobool1969, label %if.else1971, label %if.then1992.thread

if.else1971:                                      ; preds = %cont1966
  %445 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp1973 = icmp sle i32 %conv1967, %445
  %cmp1977 = icmp sgt i32 %conv1967, 9
  %or.cond3311 = and i1 %cmp1973, %cmp1977
  br i1 %or.cond3311, label %if.end1990, label %if.end2015

if.then1992.thread:                               ; preds = %cont1966, %if.else1951, %if.then1941
  %bad.0.ph = phi i32 [ 1, %if.then1941 ], [ 2, %if.else1951 ], [ 1, %cont1966 ]
  %446 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %bad.0.ph, i32 1)
  %447 = extractvalue { i32, i1 } %446, 0
  %448 = extractvalue { i32, i1 } %446, 1
  br i1 %448, label %ioc_bb2002, label %cont2003

if.end1990:                                       ; preds = %if.else1971
  %449 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx1981 = getelementptr inbounds i8* %449, i32 %conv1967
  %450 = load i8* %arrayidx1981, align 1, !tbaa !1
  %cmp1983 = icmp eq i8 %450, 1
  %. = select i1 %cmp1983, i32 3, i32 0
  br i1 %cmp1983, label %if.then1992, label %if.end2015

if.then1992:                                      ; preds = %if.end1990
  %451 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %., i32 1)
  %452 = extractvalue { i32, i1 } %451, 0
  %453 = extractvalue { i32, i1 } %451, 1
  br i1 %453, label %ioc_bb1997, label %cont1998

ioc_bb1997:                                       ; preds = %if.then1992
  %454 = zext i32 %. to i64
  call void @__ioc_report_sub_overflow(i32 2904, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %454, i64 1, i8 13) nounwind
  %.pre4036 = load i32* %443, align 4, !tbaa !3
  br label %cont1998

cont1998:                                         ; preds = %if.then1992, %ioc_bb1997
  %455 = phi i32 [ %conv1967, %if.then1992 ], [ %.pre4036, %ioc_bb1997 ]
  %arrayidx1999 = getelementptr inbounds [3 x i8*]* @execcmd.bad_msg, i32 0, i32 %452
  %456 = load i8** %arrayidx1999, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* %456, i32 %455) nounwind
  br label %do.body2007

ioc_bb2002:                                       ; preds = %if.then1992.thread
  %457 = zext i32 %bad.0.ph to i64
  call void @__ioc_report_sub_overflow(i32 2906, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %457, i64 1, i8 13) nounwind
  br label %cont2003

cont2003:                                         ; preds = %if.then1992.thread, %ioc_bb2002
  %arrayidx2004 = getelementptr inbounds [3 x i8*]* @execcmd.bad_msg, i32 0, i32 %447
  %458 = load i8** %arrayidx2004, align 4, !tbaa !5
  %459 = load i8** %438, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* %458, i8* %459) nounwind
  br label %do.body2007

do.body2007:                                      ; preds = %cont1998, %cont2003
  br i1 %tobool2016, label %if.then2009, label %if.else2012

if.then2009:                                      ; preds = %do.body2007
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else2012:                                      ; preds = %do.body2007
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end2015:                                       ; preds = %if.end1990, %if.else1971, %sw.bb1938
  %fd12018 = getelementptr inbounds i8* %call1723, i32 8
  %460 = bitcast i8* %fd12018 to i32*
  %461 = load i32* %460, align 4, !tbaa !3
  br i1 %tobool2016, label %land.lhs.true2017, label %if.end2039

land.lhs.true2017:                                ; preds = %if.end2015
  %cmp2019 = icmp slt i32 %461, 10
  br i1 %cmp2019, label %land.lhs.true2021, label %if.end2046.thread

if.end2046.thread:                                ; preds = %land.lhs.true2017
  %fd120404077 = getelementptr inbounds i8* %call1723, i32 8
  %462 = bitcast i8* %fd120404077 to i32*
  br label %land.lhs.true2048

land.lhs.true2021:                                ; preds = %land.lhs.true2017
  %arrayidx2023 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %461
  %463 = load i32* %arrayidx2023, align 4, !tbaa !3
  %cmp2026 = icmp eq i32 %463, -2
  br i1 %cmp2026, label %if.then2028, label %if.end2039.thread

if.end2039.thread:                                ; preds = %land.lhs.true2021
  %fd120404072 = getelementptr inbounds i8* %call1723, i32 8
  %464 = bitcast i8* %fd120404072 to i32*
  br label %if.then2043

if.then2028:                                      ; preds = %land.lhs.true2021
  %call2030 = call i32 @movefd(i32 %461) nounwind
  %465 = load i32* %460, align 4, !tbaa !3
  %arrayidx2032 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %465
  store i32 %call2030, i32* %arrayidx2032, align 4, !tbaa !3
  %.lobit = lshr i32 %call2030, 31
  %.lobit.not = xor i32 %.lobit, 1
  br label %if.end2039

if.end2039:                                       ; preds = %if.end2015, %if.then2028
  %466 = phi i32 [ %465, %if.then2028 ], [ %461, %if.end2015 ]
  %closed.0 = phi i32 [ %.lobit.not, %if.then2028 ], [ 0, %if.end2015 ]
  %fd12040 = getelementptr inbounds i8* %call1723, i32 8
  %467 = bitcast i8* %fd12040 to i32*
  %cmp2041 = icmp slt i32 %466, 10
  br i1 %cmp2041, label %if.then2043, label %if.end2046

if.then2043:                                      ; preds = %if.end2039.thread, %if.end2039
  %468 = phi i32* [ %464, %if.end2039.thread ], [ %467, %if.end2039 ]
  %closed.04075 = phi i32 [ 0, %if.end2039.thread ], [ %closed.0, %if.end2039 ]
  %469 = phi i32 [ %461, %if.end2039.thread ], [ %466, %if.end2039 ]
  call fastcc void @closemn(%struct.multio** %arraydecay2270, i32 %469)
  br label %if.end2046

if.end2046:                                       ; preds = %if.then2043, %if.end2039
  %470 = phi i32* [ %468, %if.then2043 ], [ %467, %if.end2039 ]
  %closed.04074 = phi i32 [ %closed.04075, %if.then2043 ], [ %closed.0, %if.end2039 ]
  %tobool2047 = icmp eq i32 %closed.04074, 0
  br i1 %tobool2047, label %land.lhs.true2048, label %sw.epilog2284

land.lhs.true2048:                                ; preds = %if.end2046.thread, %if.end2046
  %471 = phi i32* [ %462, %if.end2046.thread ], [ %470, %if.end2046 ]
  %472 = load i32* %471, align 4, !tbaa !3
  %call2050 = call i32 @zclose(i32 %472) nounwind
  %cmp2051 = icmp slt i32 %call2050, 0
  br i1 %cmp2051, label %if.then2053, label %sw.epilog2284

if.then2053:                                      ; preds = %land.lhs.true2048
  %473 = load i32* %471, align 4, !tbaa !3
  %call2055 = call i32* @__errno_location() nounwind readnone
  %474 = load i32* %call2055, align 4, !tbaa !3
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([39 x i8]* @.str51, i32 0, i32 0), i32 %473, i32 %474) nounwind
  br label %sw.epilog2284

sw.bb2058:                                        ; preds = %if.end1837, %if.end1837
  %fd22059 = getelementptr inbounds i8* %call1723, i32 12
  %475 = bitcast i8* %fd22059 to i32*
  %476 = load i32* %475, align 4, !tbaa !3
  %cmp2060 = icmp slt i32 %476, 10
  br i1 %cmp2060, label %if.then2062, label %if.end2065

if.then2062:                                      ; preds = %sw.bb2058
  call fastcc void @closemn(%struct.multio** %arraydecay2270, i32 %476)
  br label %if.end2065

if.end2065:                                       ; preds = %if.then2062, %sw.bb2058
  %call2066 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool2067 = icmp eq i32 %call2066, 0
  br i1 %tobool2067, label %if.then2126.loopexit, label %if.else2071

if.else2071:                                      ; preds = %if.end2065
  %477 = load i32* %475, align 4, !tbaa !3
  %cmp2073 = icmp slt i32 %477, 10
  %478 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp2077 = icmp sgt i32 %477, %478
  %or.cond3313 = or i1 %cmp2073, %cmp2077
  br i1 %or.cond3313, label %if.else2103, label %land.lhs.true2079

land.lhs.true2079:                                ; preds = %if.else2071
  %479 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx2081 = getelementptr inbounds i8* %479, i32 %477
  %480 = load i8* %arrayidx2081, align 1, !tbaa !1
  switch i8 %480, label %cont2101 [
    i8 0, label %lor.lhs.false2091
    i8 2, label %lor.lhs.false2091
  ]

lor.lhs.false2091:                                ; preds = %land.lhs.true2079, %land.lhs.true2079
  %481 = load i32* @coprocin, align 4, !tbaa !3
  %cmp2093 = icmp eq i32 %477, %481
  %482 = load i32* @coprocout, align 4, !tbaa !3
  %cmp2097 = icmp eq i32 %477, %482
  %or.cond3314 = or i1 %cmp2093, %cmp2097
  br i1 %or.cond3314, label %cont2101, label %if.else2103

cont2101:                                         ; preds = %lor.lhs.false2091, %land.lhs.true2079
  %call2102 = call i32* @__errno_location() nounwind readnone
  store i32 9, i32* %call2102, align 4, !tbaa !3
  br label %if.then2126

if.else2103:                                      ; preds = %lor.lhs.false2091, %if.else2071
  %cmp2108 = icmp eq i32 %477, -2
  br i1 %cmp2108, label %if.then2110, label %cont2123

if.then2110:                                      ; preds = %if.else2103
  %483 = load i32* %type1724, align 4, !tbaa !3
  %cmp2112 = icmp eq i32 %483, 14
  %484 = load i32* @coprocout, align 4, !tbaa !3
  %485 = load i32* @coprocin, align 4, !tbaa !3
  %cond2117 = select i1 %cmp2112, i32 %484, i32 %485
  br label %cont2123

cont2123:                                         ; preds = %if.else2103, %if.then2110
  %fd.0 = phi i32 [ %cond2117, %if.then2110 ], [ %477, %if.else2103 ]
  %call2119 = call i32 @dup(i32 %fd.0) nounwind
  %cmp2124 = icmp eq i32 %call2119, -1
  br i1 %cmp2124, label %if.then2126.loopexit, label %if.end2162

if.then2126.loopexit:                             ; preds = %cont2123, %if.end2065
  %call.i3423.pre = call i32* @__errno_location() nounwind readnone
  br label %if.then2126

if.then2126:                                      ; preds = %if.then2126.loopexit, %cont2101
  %call.i3423.pre-phi = phi i32* [ %call.i3423.pre, %if.then2126.loopexit ], [ %call2102, %cont2101 ]
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %486 = load i32* %call.i3423.pre-phi, align 4, !tbaa !3
  br label %for.body.i3427

for.body.i3427:                                   ; preds = %for.cond.backedge.i3432, %if.then2126
  %i.012.i3424 = phi i32 [ 0, %if.then2126 ], [ %489, %for.cond.backedge.i3432 ]
  %arrayidx.i3425 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3424
  %487 = load i32* %arrayidx.i3425, align 4, !tbaa !3
  %cmp1.i3426 = icmp eq i32 %487, -2
  br i1 %cmp1.i3426, label %for.inc.i3430, label %if.then.i3429

if.then.i3429:                                    ; preds = %for.body.i3427
  %call3.i3428 = call i32 @redup(i32 %487, i32 %i.012.i3424) nounwind
  br label %for.inc.i3430

for.inc.i3430:                                    ; preds = %if.then.i3429, %for.body.i3427
  %488 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3424, i32 1) nounwind
  %489 = extractvalue { i32, i1 } %488, 0
  %490 = extractvalue { i32, i1 } %488, 1
  br i1 %490, label %ioc_bb4.i3433, label %for.cond.backedge.i3432

for.cond.backedge.i3432:                          ; preds = %ioc_bb4.i3433, %for.inc.i3430
  %cmp.i3431 = icmp eq i32 %489, 10
  br i1 %cmp.i3431, label %fixfds.exit3434, label %for.body.i3427

ioc_bb4.i3433:                                    ; preds = %for.inc.i3430
  %491 = sext i32 %i.012.i3424 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %491, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3432

fixfds.exit3434:                                  ; preds = %for.cond.backedge.i3432
  store i32 %486, i32* %call.i3423.pre-phi, align 4, !tbaa !3
  %492 = load i32* %475, align 4, !tbaa !3
  %cmp2133 = icmp eq i32 %492, -2
  br i1 %cmp2133, label %if.end2139, label %if.then2135

if.then2135:                                      ; preds = %fixfds.exit3434
  %arraydecay2136 = getelementptr inbounds [4 x i8]* %fdstr, i32 0, i32 0
  %call2138 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay2136, i8* getelementptr inbounds ([3 x i8]* @.str52, i32 0, i32 0), i32 %492) nounwind
  %.pr3701 = load i32* %call.i3423.pre-phi, align 4, !tbaa !3
  br label %if.end2139

if.end2139:                                       ; preds = %fixfds.exit3434, %if.then2135
  %493 = phi i32 [ %486, %fixfds.exit3434 ], [ %.pr3701, %if.then2135 ]
  %tobool2141 = icmp eq i32 %493, 0
  br i1 %tobool2141, label %do.body2155, label %if.then2142

if.then2142:                                      ; preds = %if.end2139
  %494 = load i32* %475, align 4, !tbaa !3
  %cmp2146 = icmp eq i32 %494, -2
  %arraydecay2150 = getelementptr inbounds [4 x i8]* %fdstr, i32 0, i32 0
  %cond2152 = select i1 %cmp2146, i8* getelementptr inbounds ([10 x i8]* @.str54, i32 0, i32 0), i8* %arraydecay2150
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([7 x i8]* @.str53, i32 0, i32 0), i8* %cond2152, i32 %493) nounwind
  br label %do.body2155

do.body2155:                                      ; preds = %if.end2139, %if.then2142
  br i1 %tobool2016, label %if.then2157, label %if.else2160

if.then2157:                                      ; preds = %do.body2155
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else2160:                                      ; preds = %do.body2155
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end2162:                                       ; preds = %cont2123
  %fd12165 = getelementptr inbounds i8* %call1723, i32 8
  %495 = bitcast i8* %fd12165 to i32*
  %496 = load i32* %495, align 4, !tbaa !3
  %497 = load i32* %type1724, align 4, !tbaa !3
  %cmp2167 = icmp eq i32 %497, 14
  %conv2168 = zext i1 %cmp2167 to i32
  %varid2169 = getelementptr inbounds i8* %call1723, i32 20
  %498 = bitcast i8* %varid2169 to i8**
  %499 = load i8** %498, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %496, i32 %call2119, i32 %conv2168, i8* %499)
  br label %sw.epilog2284

sw.default2170:                                   ; preds = %if.end1837
  %call2171 = call fastcc i32 @checkclobberparam(%struct.redir* %356)
  %tobool2172 = icmp eq i32 %call2171, 0
  br i1 %tobool2172, label %if.end2248, label %if.else2176

if.else2176:                                      ; preds = %sw.default2170
  %500 = load i32* %type1724, align 4, !tbaa !3
  %or.cond3315.not = icmp ugt i32 %500, 8
  %and2186 = and i32 %500, 2
  %tobool2187 = icmp eq i32 %and2186, 0
  %or.cond3316 = or i1 %or.cond3315.not, %tobool2187
  br i1 %or.cond3316, label %if.else2212, label %if.then2188

if.then2188:                                      ; preds = %if.else2176
  %name2189 = getelementptr inbounds i8* %call1723, i32 16
  %501 = bitcast i8* %name2189 to i8**
  %502 = load i8** %501, align 4, !tbaa !5
  %call2190 = call i8* @unmeta(i8* %502) nounwind
  %503 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 32), align 1, !tbaa !1
  %tobool2191 = icmp eq i8 %503, 0
  br i1 %tobool2191, label %land.rhs2192, label %land.end2208

land.rhs2192:                                     ; preds = %if.then2188
  %504 = load i32* %type1724, align 4, !tbaa !3
  %505 = icmp ult i32 %504, 9
  br i1 %505, label %land.rhs2200, label %land.end2208

land.rhs2200:                                     ; preds = %land.rhs2192
  %and2202 = shl i32 %504, 6
  %506 = and i32 %and2202, 64
  %507 = or i32 %506, 1281
  br label %land.end2208

land.end2208:                                     ; preds = %land.rhs2192, %land.rhs2200, %if.then2188
  %508 = phi i32 [ 1345, %if.then2188 ], [ 1281, %land.rhs2192 ], [ %507, %land.rhs2200 ]
  %call2211 = call i32 (i8*, i32, ...)* @open64(i8* %call2190, i32 %508, i32 438) nounwind
  br label %cont2217

if.else2212:                                      ; preds = %if.else2176
  call void @llvm.lifetime.start(i64 -1, i8* %342) nounwind
  %509 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 32), align 1, !tbaa !1
  %tobool.i3435 = icmp eq i8 %509, 0
  br i1 %tobool.i3435, label %lor.lhs.false.i, label %if.then.i3439

lor.lhs.false.i:                                  ; preds = %if.else2212
  %and.i3436 = and i32 %500, 1
  %tobool7.i = icmp eq i32 %and.i3436, 0
  %or.cond48.i = or i1 %or.cond3315.not, %tobool7.i
  br i1 %or.cond48.i, label %if.end.i3442, label %if.then.i3439

if.then.i3439:                                    ; preds = %lor.lhs.false.i, %if.else2212
  %name.i3437 = getelementptr inbounds i8* %call1723, i32 16
  %510 = bitcast i8* %name.i3437 to i8**
  %511 = load i8** %510, align 4, !tbaa !5
  %call.i3438 = call i8* @unmeta(i8* %511) nounwind
  %call8.i = call i32 (i8*, i32, ...)* @open64(i8* %call.i3438, i32 833, i32 438) nounwind
  br label %cont2217

if.end.i3442:                                     ; preds = %lor.lhs.false.i
  %name9.i = getelementptr inbounds i8* %call1723, i32 16
  %512 = bitcast i8* %name9.i to i8**
  %513 = load i8** %512, align 4, !tbaa !5
  %call10.i3440 = call i8* @unmeta(i8* %513) nounwind
  %call11.i3441 = call i32 (i8*, i32, ...)* @open64(i8* %call10.i3440, i32 449, i32 438) nounwind
  %cmp12.i = icmp sgt i32 %call11.i3441, -1
  br i1 %cmp12.i, label %land.lhs.true2220, label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i3442
  %call16.i = call i32* @__errno_location() nounwind readnone
  %514 = load i32* %call16.i, align 4, !tbaa !3
  %515 = load i8** %512, align 4, !tbaa !5
  %call18.i = call i8* @unmeta(i8* %515) nounwind
  %call19.i = call i32 (i8*, i32, ...)* @open64(i8* %call18.i, i32 257) nounwind
  %cmp20.i = icmp eq i32 %call19.i, -1
  br i1 %cmp20.i, label %cont2217.thread, label %if.then22.i

if.then22.i:                                      ; preds = %if.end15.i
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call19.i, %struct.stat64* %343) nounwind
  %tobool24.i3443 = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.i3443, label %cont30.i, label %if.end34.i

cont30.i:                                         ; preds = %if.then22.i
  %516 = load i32* %st_mode.i, align 4, !tbaa !3
  %and28.i = and i32 %516, 61440
  %cmp31.i = icmp eq i32 %and28.i, 32768
  br i1 %cmp31.i, label %if.end34.i, label %cont2217

if.end34.i:                                       ; preds = %cont30.i, %if.then22.i
  %call35.i3444 = call i32 @close(i32 %call19.i) nounwind
  br label %cont2217.thread

cont2217.thread:                                  ; preds = %if.end15.i, %if.end34.i
  store i32 %514, i32* %call16.i, align 4, !tbaa !3
  br label %if.end2248

cont2217:                                         ; preds = %cont30.i, %if.then.i3439, %land.end2208
  %fil.3 = phi i32 [ %call2211, %land.end2208 ], [ %call8.i, %if.then.i3439 ], [ %call19.i, %cont30.i ]
  %cmp2218 = icmp eq i32 %fil.3, -1
  br i1 %cmp2218, label %if.end2248, label %land.lhs.true2220

land.lhs.true2220:                                ; preds = %if.end.i3442, %cont2217
  %fil.34083 = phi i32 [ %fil.3, %cont2217 ], [ %call11.i3441, %if.end.i3442 ]
  %517 = load i32* %type1724, align 4, !tbaa !3
  %.off3724 = add i32 %517, -4
  %518 = icmp ult i32 %.off3724, 4
  br i1 %518, label %cont2233, label %if.end2268

cont2233:                                         ; preds = %land.lhs.true2220
  %call2229 = call i32 @dup(i32 %fil.34083) nounwind
  %cmp2239 = icmp eq i32 %call2229, -1
  br i1 %cmp2239, label %if.then2246, label %if.end2268

if.then2246:                                      ; preds = %cont2233
  %call2247 = call i32 @close(i32 %fil.34083) nounwind
  br label %if.end2248

if.end2248:                                       ; preds = %cont2217, %sw.default2170, %cont2217.thread, %if.then2246
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3446 = call i32* @__errno_location() nounwind readnone
  %519 = load i32* %call.i3446, align 4, !tbaa !3
  br label %for.body.i3450

for.body.i3450:                                   ; preds = %for.cond.backedge.i3455, %if.end2248
  %i.012.i3447 = phi i32 [ 0, %if.end2248 ], [ %522, %for.cond.backedge.i3455 ]
  %arrayidx.i3448 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3447
  %520 = load i32* %arrayidx.i3448, align 4, !tbaa !3
  %cmp1.i3449 = icmp eq i32 %520, -2
  br i1 %cmp1.i3449, label %for.inc.i3453, label %if.then.i3452

if.then.i3452:                                    ; preds = %for.body.i3450
  %call3.i3451 = call i32 @redup(i32 %520, i32 %i.012.i3447) nounwind
  br label %for.inc.i3453

for.inc.i3453:                                    ; preds = %if.then.i3452, %for.body.i3450
  %521 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3447, i32 1) nounwind
  %522 = extractvalue { i32, i1 } %521, 0
  %523 = extractvalue { i32, i1 } %521, 1
  br i1 %523, label %ioc_bb4.i3456, label %for.cond.backedge.i3455

for.cond.backedge.i3455:                          ; preds = %ioc_bb4.i3456, %for.inc.i3453
  %cmp.i3454 = icmp eq i32 %522, 10
  br i1 %cmp.i3454, label %fixfds.exit3457, label %for.body.i3450

ioc_bb4.i3456:                                    ; preds = %for.inc.i3453
  %524 = sext i32 %i.012.i3447 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %524, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3455

fixfds.exit3457:                                  ; preds = %for.cond.backedge.i3455
  store i32 %519, i32* %call.i3446, align 4, !tbaa !3
  switch i32 %519, label %if.then2257 [
    i32 0, label %do.body2261
    i32 4, label %do.body2261
  ]

if.then2257:                                      ; preds = %fixfds.exit3457
  %name2259 = getelementptr inbounds i8* %call1723, i32 16
  %525 = bitcast i8* %name2259 to i8**
  %526 = load i8** %525, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %519, i8* %526) nounwind
  br label %do.body2261

do.body2261:                                      ; preds = %fixfds.exit3457, %fixfds.exit3457, %if.then2257
  br i1 %tobool2016, label %if.then2263, label %if.else2266

if.then2263:                                      ; preds = %do.body2261
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else2266:                                      ; preds = %do.body2261
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end2268:                                       ; preds = %land.lhs.true2220, %cont2233
  %dfil.04085 = phi i32 [ %call2229, %cont2233 ], [ 0, %land.lhs.true2220 ]
  %fd12271 = getelementptr inbounds i8* %call1723, i32 8
  %527 = bitcast i8* %fd12271 to i32*
  %528 = load i32* %527, align 4, !tbaa !3
  %varid2272 = getelementptr inbounds i8* %call1723, i32 20
  %529 = bitcast i8* %varid2272 to i8**
  %530 = load i8** %529, align 4, !tbaa !5
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 %528, i32 %fil.34083, i32 1, i8* %530)
  %531 = load i32* %type1724, align 4, !tbaa !3
  %.off3725 = add i32 %531, -4
  %532 = icmp ult i32 %.off3725, 4
  br i1 %532, label %if.then2280, label %sw.epilog2284

if.then2280:                                      ; preds = %if.end2268
  call fastcc void @addfd(i32 %forked.0, i32* %arraydecay2269, %struct.multio** %arraydecay2270, i32 2, i32 %dfil.04085, i32 1, i8* null)
  br label %sw.epilog2284

sw.epilog2284:                                    ; preds = %if.end2268, %land.lhs.true2048, %if.end2046, %land.lhs.true1931, %land.lhs.true1924, %if.end1917, %if.then2280, %if.then2053, %if.then1936, %if.end2162, %if.end1871
  %533 = load i32* @errflag, align 4, !tbaa !3
  %tobool2285 = icmp eq i32 %533, 0
  br i1 %tobool2285, label %land.rhs1715, label %if.then2286

if.then2286:                                      ; preds = %sw.epilog2284
  call fastcc void @closemnodes(%struct.multio** %arraydecay2270)
  %call.i3458 = call i32* @__errno_location() nounwind readnone
  %534 = load i32* %call.i3458, align 4, !tbaa !3
  br label %for.body.i3462

for.body.i3462:                                   ; preds = %for.cond.backedge.i3467, %if.then2286
  %i.012.i3459 = phi i32 [ 0, %if.then2286 ], [ %537, %for.cond.backedge.i3467 ]
  %arrayidx.i3460 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3459
  %535 = load i32* %arrayidx.i3460, align 4, !tbaa !3
  %cmp1.i3461 = icmp eq i32 %535, -2
  br i1 %cmp1.i3461, label %for.inc.i3465, label %if.then.i3464

if.then.i3464:                                    ; preds = %for.body.i3462
  %call3.i3463 = call i32 @redup(i32 %535, i32 %i.012.i3459) nounwind
  br label %for.inc.i3465

for.inc.i3465:                                    ; preds = %if.then.i3464, %for.body.i3462
  %536 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3459, i32 1) nounwind
  %537 = extractvalue { i32, i1 } %536, 0
  %538 = extractvalue { i32, i1 } %536, 1
  br i1 %538, label %ioc_bb4.i3468, label %for.cond.backedge.i3467

for.cond.backedge.i3467:                          ; preds = %ioc_bb4.i3468, %for.inc.i3465
  %cmp.i3466 = icmp eq i32 %537, 10
  br i1 %cmp.i3466, label %fixfds.exit3469, label %for.body.i3462

ioc_bb4.i3468:                                    ; preds = %for.inc.i3465
  %539 = sext i32 %i.012.i3459 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %539, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3467

fixfds.exit3469:                                  ; preds = %for.cond.backedge.i3467
  store i32 %534, i32* %call.i3458, align 4, !tbaa !3
  br i1 %tobool2016, label %if.then2291, label %if.else2294

if.then2291:                                      ; preds = %fixfds.exit3469
  store i64 1, i64* @lastval, align 8, !tbaa !0
  br label %done

if.else2294:                                      ; preds = %fixfds.exit3469
  call void @_exit(i32 1) noreturn nounwind
  unreachable

for.body2303:                                     ; preds = %for.cond2300.preheader, %for.cond2300.backedge
  %i.13758 = phi i32 [ 0, %for.cond2300.preheader ], [ %543, %for.cond2300.backedge ]
  %arrayidx2304 = getelementptr inbounds [10 x %struct.multio*]* %mfds, i32 0, i32 %i.13758
  %540 = load %struct.multio** %arrayidx2304, align 4, !tbaa !5
  %tobool2305 = icmp eq %struct.multio* %540, null
  br i1 %tobool2305, label %for.inc2313, label %land.lhs.true2306

land.lhs.true2306:                                ; preds = %for.body2303
  %ct = getelementptr inbounds %struct.multio* %540, i32 0, i32 0
  %541 = load i32* %ct, align 4, !tbaa !3
  %cmp2308 = icmp sgt i32 %541, 1
  br i1 %cmp2308, label %if.then2310, label %for.inc2313

if.then2310:                                      ; preds = %land.lhs.true2306
  call fastcc void @closemn(%struct.multio** %arraydecay2311, i32 %i.13758)
  br label %for.inc2313

for.inc2313:                                      ; preds = %for.body2303, %land.lhs.true2306, %if.then2310
  %542 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.13758, i32 1)
  %543 = extractvalue { i32, i1 } %542, 0
  %544 = extractvalue { i32, i1 } %542, 1
  br i1 %544, label %ioc_bb2314, label %for.cond2300.backedge

for.cond2300.backedge:                            ; preds = %for.inc2313, %ioc_bb2314
  %cmp2301 = icmp slt i32 %543, 10
  br i1 %cmp2301, label %for.body2303, label %for.end2316

ioc_bb2314:                                       ; preds = %for.inc2313
  %545 = sext i32 %i.13758 to i64
  call void @__ioc_report_add_overflow(i32 3040, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %545, i64 1, i8 13) nounwind
  br label %for.cond2300.backedge

for.end2316:                                      ; preds = %for.cond2300.backedge
  switch i32 %nullexec.0, label %if.end2339 [
    i32 0, label %if.else2354
    i32 1, label %for.body2325
  ]

for.body2325:                                     ; preds = %for.end2316, %for.cond2322.backedge
  %i.23757 = phi i32 [ %548, %for.cond2322.backedge ], [ 0, %for.end2316 ]
  %arrayidx2326 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.23757
  %546 = load i32* %arrayidx2326, align 4, !tbaa !3
  %cmp2329 = icmp eq i32 %546, -2
  br i1 %cmp2329, label %for.inc2335, label %if.then2331

if.then2331:                                      ; preds = %for.body2325
  %call2333 = call i32 @zclose(i32 %546) nounwind
  br label %for.inc2335

for.inc2335:                                      ; preds = %for.body2325, %if.then2331
  %547 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.23757, i32 1)
  %548 = extractvalue { i32, i1 } %547, 0
  %549 = extractvalue { i32, i1 } %547, 1
  br i1 %549, label %ioc_bb2336, label %for.cond2322.backedge

for.cond2322.backedge:                            ; preds = %for.inc2335, %ioc_bb2336
  %cmp2323 = icmp slt i32 %548, 10
  br i1 %cmp2323, label %for.body2325, label %done

ioc_bb2336:                                       ; preds = %for.inc2335
  %550 = sext i32 %i.23757 to i64
  call void @__ioc_report_add_overflow(i32 3049, i32 28, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %550, i64 1, i8 13) nounwind
  br label %for.cond2322.backedge

if.end2339:                                       ; preds = %for.end2316
  br i1 %tobool91, label %if.end2342, label %if.then2341

if.then2341:                                      ; preds = %if.end2339
  call fastcc void @addvars(%struct.estate* %state, i32* %varspc.0, i32 0)
  br label %if.end2342

if.end2342:                                       ; preds = %if.end2339, %if.then2341
  %551 = load i32* @errflag, align 4, !tbaa !3
  %tobool2343 = icmp ne i32 %551, 0
  %552 = load i32* @cmdoutval, align 4, !tbaa !3
  %cond2347 = select i1 %tobool2343, i32 %551, i32 %552
  %conv2348 = sext i32 %cond2347 to i64
  store i64 %conv2348, i64* @lastval, align 8, !tbaa !0
  %553 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool2349 = icmp eq i8 %553, 0
  br i1 %tobool2349, label %err, label %if.then2350

if.then2350:                                      ; preds = %if.end2342
  %554 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call2351 = call i32 @fputc(i32 10, %struct._IO_FILE* %554) nounwind
  %555 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call2352 = call i32 @fflush(%struct._IO_FILE* %555) nounwind
  br label %err

if.else2354:                                      ; preds = %for.end2316
  %556 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !1
  %tobool2356 = icmp eq i8 %556, 0
  %557 = load i32* @errflag, align 4, !tbaa !3
  %tobool2358 = icmp ne i32 %557, 0
  %or.cond2753 = or i1 %tobool2356, %tobool2358
  br i1 %or.cond2753, label %err, label %if.then2359

if.then2359:                                      ; preds = %if.else2354
  %tobool2360 = icmp eq i32 %is_exec.0, 0
  br i1 %tobool2360, label %if.end2390, label %cont2367

cont2367:                                         ; preds = %if.then2359
  %and942.lobit = lshr exact i32 %and942, 2
  %cmp2373 = icmp eq i32 %and76, 7
  %or2372.or2376.v = select i1 %cmp2373, i32 10, i32 14
  %or2372.or2376 = or i32 %and942.lobit, %or2372.or2376.v
  %tobool2378 = icmp eq i32 %do_exec.2, 0
  br i1 %tobool2378, label %lor.lhs.false2379, label %land.lhs.true2385

lor.lhs.false2379:                                ; preds = %cont2367
  %cmp2383 = icmp eq i32 %last1, 1
  %or.cond3321 = and i1 %cmp1360, %cmp2383
  %tobool2386 = icmp eq i32 %forked.0, 0
  %or.cond3322 = and i1 %or.cond3321, %tobool2386
  br i1 %or.cond3322, label %if.then2387, label %if.end2389

land.lhs.true2385:                                ; preds = %cont2367
  %tobool2386.old = icmp eq i32 %forked.0, 0
  br i1 %tobool2386.old, label %if.then2387, label %if.end2389

if.then2387:                                      ; preds = %lor.lhs.false2379, %land.lhs.true2385
  %or2388 = or i32 %or2372.or2376, 16
  br label %if.end2389

if.end2389:                                       ; preds = %land.lhs.true2385, %if.then2387, %lor.lhs.false2379
  %flags2363.1 = phi i32 [ %or2372.or2376, %land.lhs.true2385 ], [ %or2388, %if.then2387 ], [ %or2372.or2376, %lor.lhs.false2379 ]
  call fastcc void @entersubsh(i32 %flags2363.1)
  br label %if.end2390

if.end2390:                                       ; preds = %if.then2359, %if.end2389
  br i1 %cmp1360, label %if.then2393, label %if.else2403

if.then2393:                                      ; preds = %if.end2390
  %cmp2394 = icmp eq i32 %last1, 1
  %.do_exec.2 = select i1 %cmp2394, i32 1, i32 %do_exec.2
  %558 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %and76, i32 8)
  %559 = extractvalue { i32, i1 } %558, 0
  %560 = extractvalue { i32, i1 } %558, 1
  br i1 %560, label %ioc_bb2398, label %cont2399

ioc_bb2398:                                       ; preds = %if.then2393
  %561 = zext i32 %and76 to i64
  call void @__ioc_report_sub_overflow(i32 3083, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %561, i64 8, i8 13) nounwind
  br label %cont2399

cont2399:                                         ; preds = %if.then2393, %ioc_bb2398
  %arrayidx2400 = getelementptr inbounds [13 x i32 (%struct.estate*, i32)*]* @execfuncs, i32 0, i32 %559
  %562 = load i32 (%struct.estate*, i32)** %arrayidx2400, align 4, !tbaa !5
  %call2401 = call i32 %562(%struct.estate* %state, i32 %.do_exec.2) nounwind
  %conv2402 = sext i32 %call2401 to i64
  store i64 %conv2402, i64* @lastval, align 8, !tbaa !0
  br label %err

if.else2403:                                      ; preds = %if.end2390
  %tobool2583 = icmp ne i32 %forked.0, 0
  br i1 %or.cond3300, label %if.else2582, label %if.then2407

if.then2407:                                      ; preds = %if.else2403
  br i1 %tobool2583, label %if.end2440, label %cont2415

cont2415:                                         ; preds = %if.then2407
  %and2416 = and i32 %cflags.7, 256
  %tobool2417 = icmp eq i32 %and2416, 0
  br i1 %tobool2417, label %lor.lhs.false2418, label %if.then2435

lor.lhs.false2418:                                ; preds = %cont2415
  %563 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 121), align 1, !tbaa !1
  %tobool2419.not = icmp ne i8 %563, 0
  %brmerge3325 = or i1 %tobool2419.not, %assign.03668
  br i1 %brmerge3325, label %lor.lhs.false2422, label %if.then2435

lor.lhs.false2422:                                ; preds = %lor.lhs.false2418
  %or.cond3326 = and i1 %tobool2419.not, %tobool1356
  br i1 %or.cond3326, label %land.lhs.true2427, label %if.end2440

land.lhs.true2427:                                ; preds = %lor.lhs.false2422
  %flags2428 = getelementptr inbounds %struct.hashnode* %hn.6, i32 0, i32 2
  %564 = load i32* %flags2428, align 4, !tbaa !3
  %and2433 = and i32 %564, 2048
  %tobool2434 = icmp eq i32 %and2433, 0
  br i1 %tobool2434, label %if.then2435, label %if.end2440

if.then2435:                                      ; preds = %lor.lhs.false2418, %land.lhs.true2427, %cont2415
  br i1 %tobool91, label %if.end2468, label %if.then2437

if.then2437:                                      ; preds = %if.then2435
  %call.i3470 = call %union.linkroot* @newlinklist() nounwind
  %call1.i = call %union.linkroot* @newlinklist() nounwind
  %565 = load i32* %varspc.0, align 4, !tbaa !3
  %and108.i = and i32 %565, 31
  %cmp109.i = icmp eq i32 %and108.i, 5
  br i1 %cmp109.i, label %while.body.lr.ph.i, label %if.then2442

while.body.lr.ph.i:                               ; preds = %if.then2437
  %prog.i = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %last58.i = getelementptr inbounds %union.linkroot* %call1.i, i32 0, i32 0, i32 1
  %last54.i = getelementptr inbounds %union.linkroot* %call.i3470, i32 0, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cond.end.i3488, %while.body.lr.ph.i
  %566 = phi i32 [ %565, %while.body.lr.ph.i ], [ %586, %cond.end.i3488 ]
  %pc.addr.0110.i = phi i32* [ %varspc.0, %while.body.lr.ph.i ], [ %add.ptr82.i, %cond.end.i3488 ]
  %567 = load %struct.eprog** %prog.i, align 4, !tbaa !5
  %add.ptr.i = getelementptr inbounds i32* %pc.addr.0110.i, i32 1
  %call10.i3471 = call i8* @ecrawstr(%struct.eprog* %567, i32* %add.ptr.i, i32* null) nounwind
  %568 = load %struct.hashtable** @paramtab, align 4, !tbaa !5
  %getnode.i3472 = getelementptr inbounds %struct.hashtable* %568, i32 0, i32 9
  %569 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i3472, align 4, !tbaa !5
  %call11.i3473 = call %struct.hashnode* %569(%struct.hashtable* %568, i8* %call10.i3471) nounwind
  %570 = bitcast %struct.hashnode* %call11.i3473 to %struct.param*
  %tobool.i3474 = icmp eq %struct.hashnode* %call11.i3473, null
  br i1 %tobool.i3474, label %if.else56.i, label %if.then.i3475

if.then.i3475:                                    ; preds = %while.body.i
  %env.i = getelementptr inbounds %struct.hashnode* %call11.i3473, i32 2, i32 2
  %571 = bitcast i32* %env.i to i8**
  %572 = load i8** %571, align 4, !tbaa !5
  %tobool12.i = icmp eq i8* %572, null
  br i1 %tobool12.i, label %if.end.i3477, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i3475
  call void @delenv(%struct.param* %570) nounwind
  br label %if.end.i3477

if.end.i3477:                                     ; preds = %if.then13.i, %if.then.i3475
  %flags.i3476 = getelementptr inbounds %struct.hashnode* %call11.i3473, i32 0, i32 2
  %573 = load i32* %flags.i3476, align 4, !tbaa !3
  %and18.i = and i32 %573, 4194304
  %tobool19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.i, label %if.then20.i, label %if.else.i3479

if.then20.i:                                      ; preds = %if.end.i3477
  %call21.i = call i8* @zshcalloc(i32 48) nounwind
  %574 = bitcast i8* %call21.i to %struct.param*
  %nam.i3478 = getelementptr inbounds %struct.hashnode* %call11.i3473, i32 0, i32 1
  %575 = load i8** %nam.i3478, align 4, !tbaa !5
  %call23.i = call i8* @ztrdup(i8* %575) nounwind
  %nam25.i = getelementptr inbounds i8* %call21.i, i32 4
  %576 = bitcast i8* %nam25.i to i8**
  store i8* %call23.i, i8** %576, align 4, !tbaa !5
  call void @copyparam(%struct.param* %574, %struct.param* %570, i32 0) nounwind
  br label %if.end50.i

if.else.i3479:                                    ; preds = %if.end.i3477
  %and32.i = and i32 %573, 1024
  %tobool33.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.i, label %land.lhs.true.i3481, label %if.end50.i

land.lhs.true.i3481:                              ; preds = %if.else.i3479
  %577 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool34.i3480 = icmp eq i8 %577, 0
  br i1 %tobool34.i3480, label %if.then43.i, label %lor.lhs.false.i3482

lor.lhs.false.i3482:                              ; preds = %land.lhs.true.i3481
  %and41.i = and i32 %573, 16777216
  %tobool42.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.i, label %if.then43.i, label %if.end50.i

if.then43.i:                                      ; preds = %lor.lhs.false.i3482, %land.lhs.true.i3481
  %call44.i = call i8* @hcalloc(i32 48) nounwind
  %578 = bitcast i8* %call44.i to %struct.param*
  %nam46.i = getelementptr inbounds %struct.hashnode* %call11.i3473, i32 0, i32 1
  %579 = load i8** %nam46.i, align 4, !tbaa !5
  %nam48.i = getelementptr inbounds i8* %call44.i, i32 4
  %580 = bitcast i8* %nam48.i to i8**
  store i8* %579, i8** %580, align 4, !tbaa !5
  call void @copyparam(%struct.param* %578, %struct.param* %570, i32 1) nounwind
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then43.i, %lor.lhs.false.i3482, %if.else.i3479, %if.then20.i
  %pm.0.i = phi %struct.param* [ %570, %if.else.i3479 ], [ %570, %lor.lhs.false.i3482 ], [ %578, %if.then43.i ], [ %574, %if.then20.i ]
  %581 = load %struct.linknode** %last58.i, align 4, !tbaa !5
  %call51.i3483 = call i8* @dupstring(i8* %call10.i3471) nounwind
  %call52.i = call %struct.linknode* @insertlinknode(%union.linkroot* %call1.i, %struct.linknode* %581, i8* %call51.i3483) nounwind
  %582 = load %struct.linknode** %last54.i, align 4, !tbaa !5
  %583 = bitcast %struct.param* %pm.0.i to i8*
  %call55.i = call %struct.linknode* @insertlinknode(%union.linkroot* %call.i3470, %struct.linknode* %582, i8* %583) nounwind
  br label %cont68.i

if.else56.i:                                      ; preds = %while.body.i
  %584 = load %struct.linknode** %last58.i, align 4, !tbaa !5
  %call59.i = call i8* @dupstring(i8* %call10.i3471) nounwind
  %call60.i3484 = call %struct.linknode* @insertlinknode(%union.linkroot* %call1.i, %struct.linknode* %584, i8* %call59.i) nounwind
  br label %cont68.i

cont68.i:                                         ; preds = %if.else56.i, %if.end50.i
  %and66.i = and i32 %566, 32
  %cmp69.i = icmp eq i32 %and66.i, 0
  br i1 %cmp69.i, label %cond.end.i3488, label %cont79.i

cont79.i:                                         ; preds = %cont68.i
  %shr77.i = lshr i32 %566, 7
  %585 = add nuw i32 %shr77.i, 2
  br label %cond.end.i3488

cond.end.i3488:                                   ; preds = %cont79.i, %cont68.i
  %cond.i3485 = phi i32 [ %585, %cont79.i ], [ 3, %cont68.i ]
  %add.ptr82.i = getelementptr inbounds i32* %pc.addr.0110.i, i32 %cond.i3485
  %586 = load i32* %add.ptr82.i, align 4, !tbaa !3
  %and.i3486 = and i32 %586, 31
  %cmp.i3487 = icmp eq i32 %and.i3486, 5
  br i1 %cmp.i3487, label %while.body.i, label %if.end2440

if.end2440:                                       ; preds = %cond.end.i3488, %lor.lhs.false2422, %land.lhs.true2427, %if.then2407
  %587 = phi %union.linkroot* [ null, %lor.lhs.false2422 ], [ null, %land.lhs.true2427 ], [ null, %if.then2407 ], [ %call.i3470, %cond.end.i3488 ]
  %588 = phi %union.linkroot* [ null, %lor.lhs.false2422 ], [ null, %land.lhs.true2427 ], [ null, %if.then2407 ], [ %call1.i, %cond.end.i3488 ]
  br i1 %tobool91, label %if.end2468, label %if.then2442

if.then2442:                                      ; preds = %if.then2437, %if.end2440
  %589 = phi %union.linkroot* [ %588, %if.end2440 ], [ %call1.i, %if.then2437 ]
  %590 = phi %union.linkroot* [ %587, %if.end2440 ], [ %call.i3470, %if.then2437 ]
  %591 = zext i1 %tobool1356 to i32
  %flags2444.0 = xor i32 %591, 1
  %tobool2453 = icmp eq %union.linkroot* %590, null
  %or2459 = or i32 %flags2444.0, 4
  %flags2444.1 = select i1 %tobool2453, i32 %flags2444.0, i32 %or2459
  call fastcc void @addvars(%struct.estate* %state, i32* %varspc.0, i32 %flags2444.1)
  %592 = load i32* @errflag, align 4, !tbaa !3
  %tobool2461 = icmp eq i32 %592, 0
  br i1 %tobool2461, label %if.end2468, label %if.then2462

if.then2462:                                      ; preds = %if.then2442
  br i1 %tobool2453, label %if.end2465, label %if.then2464

if.then2464:                                      ; preds = %if.then2462
  call fastcc void @restore_params(%union.linkroot* %590, %union.linkroot* %589)
  br label %if.end2465

if.end2465:                                       ; preds = %if.then2462, %if.then2464
  store i64 1, i64* @lastval, align 8, !tbaa !0
  %call.i3489 = call i32* @__errno_location() nounwind readnone
  %593 = load i32* %call.i3489, align 4, !tbaa !3
  br label %for.body.i3493

for.body.i3493:                                   ; preds = %for.cond.backedge.i3498, %if.end2465
  %i.012.i3490 = phi i32 [ 0, %if.end2465 ], [ %596, %for.cond.backedge.i3498 ]
  %arrayidx.i3491 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3490
  %594 = load i32* %arrayidx.i3491, align 4, !tbaa !3
  %cmp1.i3492 = icmp eq i32 %594, -2
  br i1 %cmp1.i3492, label %for.inc.i3496, label %if.then.i3495

if.then.i3495:                                    ; preds = %for.body.i3493
  %call3.i3494 = call i32 @redup(i32 %594, i32 %i.012.i3490) nounwind
  br label %for.inc.i3496

for.inc.i3496:                                    ; preds = %if.then.i3495, %for.body.i3493
  %595 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3490, i32 1) nounwind
  %596 = extractvalue { i32, i1 } %595, 0
  %597 = extractvalue { i32, i1 } %595, 1
  br i1 %597, label %ioc_bb4.i3499, label %for.cond.backedge.i3498

for.cond.backedge.i3498:                          ; preds = %ioc_bb4.i3499, %for.inc.i3496
  %cmp.i3497 = icmp eq i32 %596, 10
  br i1 %cmp.i3497, label %fixfds.exit3500, label %for.body.i3493

ioc_bb4.i3499:                                    ; preds = %for.inc.i3496
  %598 = sext i32 %i.012.i3490 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %598, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3498

fixfds.exit3500:                                  ; preds = %for.cond.backedge.i3498
  store i32 %593, i32* %call.i3489, align 4, !tbaa !3
  br label %done

if.end2468:                                       ; preds = %if.then2435, %if.then2442, %if.end2440
  %599 = phi %union.linkroot* [ %589, %if.then2442 ], [ %588, %if.end2440 ], [ null, %if.then2435 ]
  %600 = phi %union.linkroot* [ %590, %if.then2442 ], [ %587, %if.end2440 ], [ null, %if.then2435 ]
  br i1 %tobool1356, label %if.else2520, label %for.cond2473.preheader

for.cond2473.preheader:                           ; preds = %if.end2468
  %601 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp24743755 = icmp slt i32 %601, 10
  br i1 %cmp24743755, label %for.end2489, label %for.body2476

for.body2476:                                     ; preds = %for.cond2473.backedge, %for.cond2473.preheader
  %i2472.03756 = phi i32 [ 10, %for.cond2473.preheader ], [ %609, %for.cond2473.backedge ]
  %602 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx2477 = getelementptr inbounds i8* %602, i32 %i2472.03756
  %603 = load i8* %arrayidx2477, align 1, !tbaa !1
  %cmp2479 = icmp ugt i8 %603, 5
  br i1 %cmp2479, label %if.then2481, label %for.inc2486

if.then2481:                                      ; preds = %for.body2476
  %604 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 %603, i8 1)
  %605 = extractvalue { i8, i1 } %604, 0
  %606 = extractvalue { i8, i1 } %604, 1
  br i1 %606, label %ioc_bb2483, label %cont2484

ioc_bb2483:                                       ; preds = %if.then2481
  %607 = zext i8 %603 to i64
  call void @__ioc_report_add_overflow(i32 3119, i32 23, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %607, i64 1, i8 3) nounwind
  br label %cont2484

cont2484:                                         ; preds = %if.then2481, %ioc_bb2483
  store i8 %605, i8* %arrayidx2477, align 1, !tbaa !1
  br label %for.inc2486

for.inc2486:                                      ; preds = %for.body2476, %cont2484
  %608 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i2472.03756, i32 1)
  %609 = extractvalue { i32, i1 } %608, 0
  %610 = extractvalue { i32, i1 } %608, 1
  br i1 %610, label %ioc_bb2487, label %for.cond2473.backedge

for.cond2473.backedge:                            ; preds = %for.inc2486, %ioc_bb2487
  %611 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp2474 = icmp sgt i32 %609, %611
  br i1 %cmp2474, label %for.end2489, label %for.body2476

ioc_bb2487:                                       ; preds = %for.inc2486
  %612 = sext i32 %i2472.03756 to i64
  call void @__ioc_report_add_overflow(i32 3117, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %612, i64 1, i8 13) nounwind
  br label %for.cond2473.backedge

for.end2489:                                      ; preds = %for.cond2473.backedge, %for.cond2473.preheader
  %613 = load i32* @subsh_close, align 4, !tbaa !3
  %cmp2490 = icmp sgt i32 %613, -1
  br i1 %cmp2490, label %if.then2492, label %cont2496

if.then2492:                                      ; preds = %for.end2489
  %call2493 = call i32 @zclose(i32 %613) nounwind
  br label %cont2496

cont2496:                                         ; preds = %for.end2489, %if.then2492
  store i32 -1, i32* @subsh_close, align 4, !tbaa !3
  %614 = bitcast %struct.hashnode* %hn.6 to %struct.shfunc*
  call fastcc void @execshfunc(%struct.shfunc* %614, %union.linkroot* %args.5)
  %615 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp24983753 = icmp slt i32 %615, 10
  br i1 %cmp24983753, label %if.end2540, label %for.body2500

for.body2500:                                     ; preds = %for.cond2497.backedge, %cont2496
  %i2472.13754 = phi i32 [ 10, %cont2496 ], [ %623, %for.cond2497.backedge ]
  %616 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx2501 = getelementptr inbounds i8* %616, i32 %i2472.13754
  %617 = load i8* %arrayidx2501, align 1, !tbaa !1
  %cmp2503 = icmp ugt i8 %617, 5
  br i1 %cmp2503, label %if.then2505, label %for.inc2516

if.then2505:                                      ; preds = %for.body2500
  %618 = call { i8, i1 } @llvm.usub.with.overflow.i8(i8 %617, i8 1)
  %619 = extractvalue { i8, i1 } %618, 0
  %620 = extractvalue { i8, i1 } %618, 1
  br i1 %620, label %ioc_bb2507, label %cont2508

ioc_bb2507:                                       ; preds = %if.then2505
  %621 = zext i8 %617 to i64
  call void @__ioc_report_sub_overflow(i32 3128, i32 18, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %621, i64 1, i8 3) nounwind
  br label %cont2508

cont2508:                                         ; preds = %if.then2505, %ioc_bb2507
  store i8 %619, i8* %arrayidx2501, align 1, !tbaa !1
  %cmp2510 = icmp ult i8 %619, 7
  br i1 %cmp2510, label %if.then2512, label %for.inc2516

if.then2512:                                      ; preds = %cont2508
  %call2513 = call i32 @zclose(i32 %i2472.13754) nounwind
  br label %for.inc2516

for.inc2516:                                      ; preds = %for.body2500, %if.then2512, %cont2508
  %622 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i2472.13754, i32 1)
  %623 = extractvalue { i32, i1 } %622, 0
  %624 = extractvalue { i32, i1 } %622, 1
  br i1 %624, label %ioc_bb2517, label %for.cond2497.backedge

for.cond2497.backedge:                            ; preds = %for.inc2516, %ioc_bb2517
  %625 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp2498 = icmp sgt i32 %623, %625
  br i1 %cmp2498, label %if.end2540, label %for.body2500

ioc_bb2517:                                       ; preds = %for.inc2516
  %626 = sext i32 %i2472.13754 to i64
  call void @__ioc_report_add_overflow(i32 3126, i32 40, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %626, i64 1, i8 13) nounwind
  br label %for.cond2497.backedge

if.else2520:                                      ; preds = %if.end2468
  %tobool2583.not = xor i1 %tobool2583, true
  %627 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i3501 = icmp slt i32 %627, 10
  %or.cond3716 = or i1 %cmp14.i3501, %tobool2583.not
  br i1 %or.cond3716, label %if.end2523, label %for.body.i3506

for.body.i3506:                                   ; preds = %for.cond.backedge.i3514, %if.else2520
  %i.015.i3503 = phi i32 [ 10, %if.else2520 ], [ %631, %for.cond.backedge.i3514 ]
  %628 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i3504 = getelementptr inbounds i8* %628, i32 %i.015.i3503
  %629 = load i8* %arrayidx.i3504, align 1, !tbaa !1
  %cmp7.i3508 = icmp eq i8 %629, 1
  br i1 %cmp7.i3508, label %if.then.i3511, label %for.inc.i3512

if.then.i3511:                                    ; preds = %for.body.i3506
  %call.i3510 = call i32 @zclose(i32 %i.015.i3503) nounwind
  br label %for.inc.i3512

for.inc.i3512:                                    ; preds = %for.body.i3506, %if.then.i3511
  %630 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i3503, i32 1) nounwind
  %631 = extractvalue { i32, i1 } %630, 0
  %632 = extractvalue { i32, i1 } %630, 1
  br i1 %632, label %ioc_bb.i3515, label %for.cond.backedge.i3514

for.cond.backedge.i3514:                          ; preds = %for.inc.i3512, %ioc_bb.i3515
  %633 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i3513 = icmp sgt i32 %631, %633
  br i1 %cmp.i3513, label %if.end2523, label %for.body.i3506

ioc_bb.i3515:                                     ; preds = %for.inc.i3512
  %634 = sext i32 %i.015.i3503 to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %634, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3514

if.end2523:                                       ; preds = %for.cond.backedge.i3514, %if.else2520
  %635 = bitcast %struct.hashnode* %hn.6 to %struct.builtin*
  %call2524 = call i32 @execbuiltin(%union.linkroot* %args.5, %struct.builtin* %635) nounwind
  %conv2525 = sext i32 %call2524 to i64
  store i64 %conv2525, i64* @lastval, align 8, !tbaa !0
  %636 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i3517 = icmp slt i32 %636, 10
  br i1 %cmp14.i3517, label %closem.exit3532, label %for.body.i3522

for.body.i3522:                                   ; preds = %for.cond.backedge.i3530, %if.end2523
  %i.015.i3519 = phi i32 [ 10, %if.end2523 ], [ %640, %for.cond.backedge.i3530 ]
  %637 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i3520 = getelementptr inbounds i8* %637, i32 %i.015.i3519
  %638 = load i8* %arrayidx.i3520, align 1, !tbaa !1
  %cmp7.i3524 = icmp eq i8 %638, 6
  br i1 %cmp7.i3524, label %if.then.i3527, label %for.inc.i3528

if.then.i3527:                                    ; preds = %for.body.i3522
  %call.i3526 = call i32 @zclose(i32 %i.015.i3519) nounwind
  br label %for.inc.i3528

for.inc.i3528:                                    ; preds = %for.body.i3522, %if.then.i3527
  %639 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i3519, i32 1) nounwind
  %640 = extractvalue { i32, i1 } %639, 0
  %641 = extractvalue { i32, i1 } %639, 1
  br i1 %641, label %ioc_bb.i3531, label %for.cond.backedge.i3530

for.cond.backedge.i3530:                          ; preds = %for.inc.i3528, %ioc_bb.i3531
  %642 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i3529 = icmp sgt i32 %640, %642
  br i1 %cmp.i3529, label %closem.exit3532, label %for.body.i3522

ioc_bb.i3531:                                     ; preds = %for.inc.i3528
  %643 = sext i32 %i.015.i3519 to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %643, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3530

closem.exit3532:                                  ; preds = %for.cond.backedge.i3530, %if.end2523
  %644 = load %struct._IO_FILE** @stdout, align 4, !tbaa !5
  %call2526 = call i32 @fflush(%struct._IO_FILE* %644) nounwind
  %arrayidx2527 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 1
  %645 = load i32* %arrayidx2527, align 4, !tbaa !3
  %cmp2530 = icmp eq i32 %645, -2
  %646 = load %struct._IO_FILE** @stdout, align 4, !tbaa !5
  br i1 %cmp2530, label %if.then2532, label %if.else2538

if.then2532:                                      ; preds = %closem.exit3532
  %call2533 = call i32 @ferror(%struct._IO_FILE* %646) nounwind
  %tobool2534 = icmp eq i32 %call2533, 0
  br i1 %tobool2534, label %if.end2540, label %if.then2535

if.then2535:                                      ; preds = %if.then2532
  %call2536 = call i32* @__errno_location() nounwind readnone
  %647 = load i32* %call2536, align 4, !tbaa !3
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([16 x i8]* @.str55, i32 0, i32 0), i32 %647) nounwind
  %648 = load %struct._IO_FILE** @stdout, align 4, !tbaa !5
  call void @clearerr(%struct._IO_FILE* %648) nounwind
  br label %if.end2540

if.else2538:                                      ; preds = %closem.exit3532
  call void @clearerr(%struct._IO_FILE* %646) nounwind
  br label %if.end2540

if.end2540:                                       ; preds = %cont2496, %for.cond2497.backedge, %if.then2532, %if.else2538, %if.then2535
  %649 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 128), align 1, !tbaa !1
  %tobool2542 = icmp eq i8 %649, 0
  br i1 %tobool2542, label %if.end2553, label %land.lhs.true2543

land.lhs.true2543:                                ; preds = %if.end2540
  %650 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %651 = load i64* @lastval, align 8, !tbaa !0
  %notlhs = icmp eq i8 %650, 0
  %notrhs = icmp eq i64 %651, 0
  %or.cond2754.not = or i1 %notrhs, %notlhs
  %652 = load i32* @subsh, align 4, !tbaa !3
  %tobool2549 = icmp ne i32 %652, 0
  %or.cond2755 = or i1 %or.cond2754.not, %tobool2549
  br i1 %or.cond2755, label %if.end2553, label %if.then2550

if.then2550:                                      ; preds = %land.lhs.true2543
  %653 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  %call2551 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %653, i8* getelementptr inbounds ([16 x i8]* @.str56, i32 0, i32 0), i64 %651) nounwind
  %654 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  %call2552 = call i32 @fflush(%struct._IO_FILE* %654) nounwind
  br label %if.end2553

if.end2553:                                       ; preds = %if.end2540, %land.lhs.true2543, %if.then2550
  %tobool2554 = icmp eq i32 %do_exec.2, 0
  br i1 %tobool2554, label %if.end2578, label %if.then2555

if.then2555:                                      ; preds = %if.end2553
  %655 = load i32* @subsh, align 4, !tbaa !3
  %tobool2556 = icmp eq i32 %655, 0
  br i1 %tobool2556, label %if.end2563, label %if.then2557

if.then2557:                                      ; preds = %if.then2555
  %656 = load i64* @lastval, align 8, !tbaa !0
  %.off3268 = add i64 %656, 2147483648
  %657 = icmp ult i64 %.off3268, 4294967296
  br i1 %657, label %cont2561, label %ioc_bb2560

ioc_bb2560:                                       ; preds = %if.then2557
  call void @__ioc_report_conversion(i32 3159, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %656, i8 1) nounwind
  br label %cont2561

cont2561:                                         ; preds = %ioc_bb2560, %if.then2557
  %conv2562 = trunc i64 %656 to i32
  call void @_exit(i32 %conv2562) noreturn nounwind
  unreachable

if.end2563:                                       ; preds = %if.then2555
  %658 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool2565 = icmp eq i8 %658, 0
  br i1 %tobool2565, label %if.end2572, label %land.lhs.true2566

land.lhs.true2566:                                ; preds = %if.end2563
  %659 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool2568 = icmp eq i8 %659, 0
  %660 = load i32* @nohistsave, align 4, !tbaa !3
  %tobool2570 = icmp ne i32 %660, 0
  %or.cond2756 = or i1 %tobool2568, %tobool2570
  br i1 %or.cond2756, label %if.end2572, label %if.then2571

if.then2571:                                      ; preds = %land.lhs.true2566
  call void @savehistfile(i8* null, i32 1, i32 32768) nounwind
  br label %if.end2572

if.end2572:                                       ; preds = %land.lhs.true2566, %if.end2563, %if.then2571
  %661 = load i64* @lastval, align 8, !tbaa !0
  %.off3267 = add i64 %661, 2147483648
  %662 = icmp ult i64 %.off3267, 4294967296
  br i1 %662, label %cont2576, label %ioc_bb2575

ioc_bb2575:                                       ; preds = %if.end2572
  call void @__ioc_report_conversion(i32 3164, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %661, i8 1) nounwind
  br label %cont2576

cont2576:                                         ; preds = %ioc_bb2575, %if.end2572
  %conv2577 = trunc i64 %661 to i32
  call void @exit(i32 %conv2577) noreturn nounwind
  unreachable

if.end2578:                                       ; preds = %if.end2553
  %tobool2579 = icmp eq %union.linkroot* %600, null
  br i1 %tobool2579, label %err, label %if.then2580

if.then2580:                                      ; preds = %if.end2578
  call fastcc void @restore_params(%union.linkroot* %600, %union.linkroot* %599)
  br label %err

if.else2582:                                      ; preds = %if.else2403
  br i1 %tobool2583, label %if.end2588, label %if.then2584

if.then2584:                                      ; preds = %if.else2582
  %663 = load i64* @shlvl, align 8, !tbaa !0
  %664 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %663, i64 -1)
  %665 = extractvalue { i64, i1 } %664, 0
  %666 = extractvalue { i64, i1 } %664, 1
  br i1 %666, label %ioc_bb2585, label %cont2586

ioc_bb2585:                                       ; preds = %if.then2584
  call void @__ioc_report_add_overflow(i32 3171, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %663, i64 -1, i8 14) nounwind
  br label %cont2586

cont2586:                                         ; preds = %if.then2584, %ioc_bb2585
  store i64 %665, i64* @shlvl, align 8, !tbaa !0
  %call2587 = call %struct.param* @setiparam(i8* getelementptr inbounds ([6 x i8]* @.str57, i32 0, i32 0), i64 %665) nounwind
  br label %if.end2588

if.end2588:                                       ; preds = %cont2586, %if.else2582
  %tobool2589 = icmp eq i32 %do_exec.2, 0
  %667 = load i32* @subsh, align 4, !tbaa !3
  %tobool2591 = icmp ne i32 %667, 0
  %or.cond2759 = or i1 %tobool2589, %tobool2591
  %668 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 141), align 1, !tbaa !1
  %tobool2594 = icmp eq i8 %668, 0
  %or.cond3327 = or i1 %or.cond2759, %tobool2594
  br i1 %or.cond3327, label %if.end2602, label %land.lhs.true2595

land.lhs.true2595:                                ; preds = %if.end2588
  %669 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool2597 = icmp eq i8 %669, 0
  %670 = load i32* @nohistsave, align 4, !tbaa !3
  %tobool2599 = icmp ne i32 %670, 0
  %or.cond2757 = or i1 %tobool2597, %tobool2599
  br i1 %or.cond2757, label %if.end2602, label %if.then2600

if.then2600:                                      ; preds = %land.lhs.true2595
  call void @savehistfile(i8* null, i32 1, i32 32768) nounwind
  br label %if.end2602

if.end2602:                                       ; preds = %if.end2588, %if.then2600, %land.lhs.true2595
  br i1 %cmp79, label %if.then2605, label %if.else2650

if.then2605:                                      ; preds = %if.end2602
  br i1 %tobool91, label %if.end2619, label %cont2615

cont2615:                                         ; preds = %if.then2605
  call fastcc void @addvars(%struct.estate* %state, i32* %varspc.0, i32 3)
  %671 = load i32* @errflag, align 4, !tbaa !3
  %tobool2616 = icmp eq i32 %671, 0
  br i1 %tobool2616, label %if.end2619, label %if.then2617

if.then2617:                                      ; preds = %cont2615
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end2619:                                       ; preds = %cont2615, %if.then2605
  %672 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i3533 = icmp slt i32 %672, 10
  br i1 %cmp14.i3533, label %closem.exit3548, label %for.body.i3538

for.body.i3538:                                   ; preds = %for.cond.backedge.i3546, %if.end2619
  %i.015.i3535 = phi i32 [ 10, %if.end2619 ], [ %676, %for.cond.backedge.i3546 ]
  %673 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i3536 = getelementptr inbounds i8* %673, i32 %i.015.i3535
  %674 = load i8* %arrayidx.i3536, align 1, !tbaa !1
  %cmp7.i3540 = icmp eq i8 %674, 1
  br i1 %cmp7.i3540, label %if.then.i3543, label %for.inc.i3544

if.then.i3543:                                    ; preds = %for.body.i3538
  %call.i3542 = call i32 @zclose(i32 %i.015.i3535) nounwind
  br label %for.inc.i3544

for.inc.i3544:                                    ; preds = %for.body.i3538, %if.then.i3543
  %675 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i3535, i32 1) nounwind
  %676 = extractvalue { i32, i1 } %675, 0
  %677 = extractvalue { i32, i1 } %675, 1
  br i1 %677, label %ioc_bb.i3547, label %for.cond.backedge.i3546

for.cond.backedge.i3546:                          ; preds = %for.inc.i3544, %ioc_bb.i3547
  %678 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i3545 = icmp sgt i32 %676, %678
  br i1 %cmp.i3545, label %closem.exit3548, label %for.body.i3538

ioc_bb.i3547:                                     ; preds = %for.inc.i3544
  %679 = sext i32 %i.015.i3535 to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %679, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3546

closem.exit3548:                                  ; preds = %for.cond.backedge.i3546, %if.end2619
  %680 = load i32* @coprocin, align 4, !tbaa !3
  %cmp2622 = icmp eq i32 %680, -1
  br i1 %cmp2622, label %if.end2628, label %if.then2624

if.then2624:                                      ; preds = %closem.exit3548
  %call2625 = call i32 @zclose(i32 %680) nounwind
  store i32 -1, i32* @coprocin, align 4, !tbaa !3
  br label %if.end2628

if.end2628:                                       ; preds = %closem.exit3548, %if.then2624
  %681 = load i32* @coprocout, align 4, !tbaa !3
  %cmp2631 = icmp eq i32 %681, -1
  br i1 %cmp2631, label %if.end2637, label %if.then2633

if.then2633:                                      ; preds = %if.end2628
  %call2634 = call i32 @zclose(i32 %681) nounwind
  store i32 -1, i32* @coprocout, align 4, !tbaa !3
  br label %if.end2637

if.end2637:                                       ; preds = %if.end2628, %if.then2633
  br i1 %tobool2583, label %cont2645, label %if.then2639

if.then2639:                                      ; preds = %if.end2637
  %call2640 = call i32 @setlimits(i8* null)
  br label %cont2645

cont2645:                                         ; preds = %if.then2639, %if.end2637
  br i1 %tobool943, label %if.then2648, label %if.end2649

if.then2648:                                      ; preds = %cont2645
  %682 = load i8** @STTYval, align 4, !tbaa !5
  call void @zsfree(i8* %682) nounwind
  store i8* null, i8** @STTYval, align 4, !tbaa !5
  br label %if.end2649

if.end2649:                                       ; preds = %cont2645, %if.then2648
  %683 = getelementptr inbounds [16384 x i8]* %buf.i3577, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %683) nounwind
  %684 = getelementptr inbounds [16384 x i8]* %buf2.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %684) nounwind
  %685 = bitcast i8** %z.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %685) nounwind
  %686 = bitcast %struct.__sigset_t* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %686) nounwind
  %687 = bitcast i8** %s95.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %687) nounwind
  %688 = getelementptr inbounds [4096 x i8]* %sbuf.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %688) nounwind
  %689 = getelementptr inbounds [4096 x i8]* %nn.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %689) nounwind
  %first.i = getelementptr inbounds %union.linkroot* %args.5, i32 0, i32 0, i32 0
  %690 = load %struct.linknode** %first.i, align 4, !tbaa !5
  %dat.i = getelementptr inbounds %struct.linknode* %690, i32 0, i32 2
  %691 = load i8** %dat.i, align 4, !tbaa !5
  %692 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool.i3578 = icmp eq i8 %692, 0
  br i1 %tobool.i3578, label %if.end.i3582, label %cond.false.i3580

cond.false.i3580:                                 ; preds = %if.end2649
  %call2.i = call i8* @strchr(i8* %691, i32 47) nounwind
  %tobool3.i3579 = icmp eq i8* %call2.i, null
  %tobool4.i = icmp eq i32 %use_defpath.33662, 0
  %or.cond423.i = and i1 %tobool3.i3579, %tobool4.i
  br i1 %or.cond423.i, label %if.end.i3582, label %if.then.i3581

if.then.i3581:                                    ; preds = %cond.false.i3580
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str38, i32 0, i32 0), i8* %691) nounwind
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.end.i3582:                                     ; preds = %cond.false.i3580, %if.end2649
  %693 = load i8** @STTYval, align 4, !tbaa !5
  %tobool5.i = icmp eq i8* %693, null
  br i1 %tobool5.i, label %if.end18.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %if.end.i3582
  %call7.i = call i32 @isatty(i32 0) nounwind
  %tobool8.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i, label %if.then16.i, label %land.lhs.true9.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  %call10.i3583 = call i32 @getpgrp() nounwind
  %call11.i3584 = call i32 @getpid() nounwind
  %cmp.i3585 = icmp eq i32 %call10.i3583, %call11.i3584
  br i1 %cmp.i3585, label %if.then13.i3586, label %if.then16.i

if.then13.i3586:                                  ; preds = %land.lhs.true9.i
  %call14.i = call i8* @tricat(i8* getelementptr inbounds ([5 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str59, i32 0, i32 0), i8* %693) nounwind
  store i8* null, i8** @STTYval, align 4, !tbaa !5
  call void @zsfree(i8* %693) nounwind
  call void @pushheap() nounwind
  %call.i3619 = call %struct.eprog* @parse_string(i8* %call14.i, i32 0) nounwind
  %tobool.i3620 = icmp eq %struct.eprog* %call.i3619, null
  br i1 %tobool.i3620, label %execstring.exit, label %if.then.i3621

if.then.i3621:                                    ; preds = %if.then13.i3586
  call void @execode(%struct.eprog* %call.i3619, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str58, i32 0, i32 0)) nounwind
  br label %execstring.exit

execstring.exit:                                  ; preds = %if.then13.i3586, %if.then.i3621
  call void @popheap() nounwind
  call void @zsfree(i8* %call14.i) nounwind
  br label %if.end18.i

if.then16.i:                                      ; preds = %land.lhs.true9.i, %land.lhs.true6.i
  store i8* null, i8** @STTYval, align 4, !tbaa !5
  call void @zsfree(i8* %693) nounwind
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i3582, %if.then16.i, %execstring.exit
  %694 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool19.i3588 = icmp eq i8 %694, 0
  br i1 %tobool19.i3588, label %land.lhs.true20.i, label %cont31.i

land.lhs.true20.i:                                ; preds = %if.end18.i
  %call21.i3589 = call i8* @zgetenv(i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0)) nounwind
  store i8* %call21.i3589, i8** %z.i, align 4, !tbaa !5
  %tobool22.i = icmp eq i8* %call21.i3589, null
  br i1 %tobool22.i, label %cont31.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true20.i
  %call24.i = call i8* @ztrdup(i8* %call21.i3589) nounwind
  %695 = load %struct.linknode** %first.i, align 4, !tbaa !5
  %dat27.i = getelementptr inbounds %struct.linknode* %695, i32 0, i32 2
  store i8* %call24.i, i8** %dat27.i, align 4, !tbaa !5
  %call28.i = call i32 @unsetenv(i8* getelementptr inbounds ([6 x i8]* @.str60, i32 0, i32 0)) nounwind
  br label %if.end41.i

cont31.i:                                         ; preds = %land.lhs.true20.i, %if.end18.i
  %and.i3590 = and i32 %cflags.7, 64
  %tobool32.i = icmp eq i32 %and.i3590, 0
  br i1 %tobool32.i, label %if.end41.i, label %if.then33.i3593

if.then33.i3593:                                  ; preds = %cont31.i
  %call34.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %684, i8* getelementptr inbounds ([4 x i8]* @.str61, i32 0, i32 0), i8* %691) nounwind
  %call36.i3592 = call i8* @ztrdup(i8* %684) nounwind
  %696 = load %struct.linknode** %first.i, align 4, !tbaa !5
  %dat39.i = getelementptr inbounds %struct.linknode* %696, i32 0, i32 2
  store i8* %call36.i3592, i8** %dat39.i, align 4, !tbaa !5
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then33.i3593, %cont31.i, %if.then23.i
  %call.i.i3594 = call i32 @countlinknodes(%union.linkroot* %args.5) nounwind
  %697 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call.i.i3594, i32 4) nounwind
  %698 = extractvalue { i32, i1 } %697, 0
  %699 = extractvalue { i32, i1 } %697, 1
  br i1 %699, label %ioc_bb.i.i, label %cont.i.i

ioc_bb.i.i:                                       ; preds = %if.end41.i
  %700 = sext i32 %call.i.i3594 to i64
  call void @__ioc_report_add_overflow(i32 1595, i32 61, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %700, i64 4, i8 13) nounwind
  br label %cont.i.i

cont.i.i:                                         ; preds = %ioc_bb.i.i, %if.end41.i
  %701 = icmp sgt i32 %698, -1
  br i1 %701, label %cont2.i.i, label %ioc_bb1.i.i

ioc_bb1.i.i:                                      ; preds = %cont.i.i
  %702 = sext i32 %698 to i64
  call void @__ioc_report_conversion(i32 1595, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %702, i8 1) nounwind
  br label %cont2.i.i

cont2.i.i:                                        ; preds = %ioc_bb1.i.i, %cont.i.i
  %703 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %698, i32 4) nounwind
  %704 = extractvalue { i32, i1 } %703, 0
  %705 = extractvalue { i32, i1 } %703, 1
  br i1 %705, label %ioc_bb3.i.i, label %cont4.i.i

ioc_bb3.i.i:                                      ; preds = %cont2.i.i
  %706 = zext i32 %698 to i64
  call void @__ioc_report_mul_overflow(i32 1595, i32 66, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %706, i64 4, i8 5) nounwind
  br label %cont4.i.i

cont4.i.i:                                        ; preds = %ioc_bb3.i.i, %cont2.i.i
  %call5.i.i = call i8* @hcalloc(i32 %704) nounwind
  %add.ptr.i.i = getelementptr inbounds i8* %call5.i.i, i32 8
  %707 = bitcast i8* %add.ptr.i.i to i8**
  %708 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool.i.i = icmp eq i8 %708, 0
  br i1 %tobool.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cont4.i.i
  %.b.i.i = load i1* @doneps4.b, align 1
  br i1 %.b.i.i, label %if.end.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @printprompt4() nounwind
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then7.i.i, %if.then.i.i
  %node.045.i.i = load %struct.linknode** %first.i, align 4
  %tobool946.i.i = icmp eq %struct.linknode* %node.045.i.i, null
  br i1 %tobool946.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i, %for.cond.backedge.i.i
  %node.048.i.i = phi %struct.linknode* [ %node.0.pre.i.i, %for.cond.backedge.i.i ], [ %node.045.i.i, %if.end.i.i ]
  %ptr.047.i.i = phi i8** [ %incdec.ptr.i.i, %for.cond.backedge.i.i ], [ %707, %if.end.i.i ]
  %dat.i.i = getelementptr inbounds %struct.linknode* %node.048.i.i, i32 0, i32 2
  %709 = load i8** %dat.i.i, align 4, !tbaa !5
  %incdec.ptr.i.i = getelementptr inbounds i8** %ptr.047.i.i, i32 1
  store i8* %709, i8** %ptr.047.i.i, align 4, !tbaa !5
  %710 = load i8** %dat.i.i, align 4, !tbaa !5
  %711 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call11.i.i = call i32 @quotedzputs(i8* %710, %struct._IO_FILE* %711) nounwind
  %next.i.i = getelementptr inbounds %struct.linknode* %node.048.i.i, i32 0, i32 0
  %712 = load %struct.linknode** %next.i.i, align 4, !tbaa !5
  %tobool12.i.i = icmp eq %struct.linknode* %712, null
  br i1 %tobool12.i.i, label %for.end.i.i, label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %for.body.i.i
  %713 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call14.i.i = call i32 @fputc(i32 32, %struct._IO_FILE* %713) nounwind
  %node.0.pre.i.i = load %struct.linknode** %next.i.i, align 4
  %tobool9.i.i = icmp eq %struct.linknode* %node.0.pre.i.i, null
  br i1 %tobool9.i.i, label %for.end.i.i, label %for.body.i.i

for.end.i.i:                                      ; preds = %for.cond.backedge.i.i, %for.body.i.i, %if.end.i.i
  %ptr.0.lcssa.i.i = phi i8** [ %707, %if.end.i.i ], [ %incdec.ptr.i.i, %for.body.i.i ], [ %incdec.ptr.i.i, %for.cond.backedge.i.i ]
  %714 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call17.i.i = call i32 @fputc(i32 10, %struct._IO_FILE* %714) nounwind
  %715 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call18.i.i = call i32 @fflush(%struct._IO_FILE* %715) nounwind
  br label %makecline.exit.i

if.else.i.i:                                      ; preds = %cont4.i.i
  %node.141.i.i = load %struct.linknode** %first.i, align 4
  %tobool2242.i.i = icmp eq %struct.linknode* %node.141.i.i, null
  br i1 %tobool2242.i.i, label %makecline.exit.i, label %for.body23.i.i

for.body23.i.i:                                   ; preds = %if.else.i.i, %for.body23.i.i
  %node.144.i.i = phi %struct.linknode* [ %node.1.i.i, %for.body23.i.i ], [ %node.141.i.i, %if.else.i.i ]
  %ptr.143.i.i = phi i8** [ %incdec.ptr25.i.i, %for.body23.i.i ], [ %707, %if.else.i.i ]
  %dat24.i.i = getelementptr inbounds %struct.linknode* %node.144.i.i, i32 0, i32 2
  %716 = load i8** %dat24.i.i, align 4, !tbaa !5
  %incdec.ptr25.i.i = getelementptr inbounds i8** %ptr.143.i.i, i32 1
  store i8* %716, i8** %ptr.143.i.i, align 4, !tbaa !5
  %next27.i.i = getelementptr inbounds %struct.linknode* %node.144.i.i, i32 0, i32 0
  %node.1.i.i = load %struct.linknode** %next27.i.i, align 4
  %tobool22.i.i = icmp eq %struct.linknode* %node.1.i.i, null
  br i1 %tobool22.i.i, label %makecline.exit.i, label %for.body23.i.i

makecline.exit.i:                                 ; preds = %for.body23.i.i, %if.else.i.i, %for.end.i.i
  %ptr.2.i.i = phi i8** [ %ptr.0.lcssa.i.i, %for.end.i.i ], [ %707, %if.else.i.i ], [ %incdec.ptr25.i.i, %for.body23.i.i ]
  store i8* null, i8** %ptr.2.i.i, align 4, !tbaa !5
  %and47.i = and i32 %cflags.7, 65536
  %tobool48.i = icmp eq i32 %and47.i, 0
  %newenvp.0.i = select i1 %tobool48.i, i8** null, i8** getelementptr inbounds ([1 x i8*]* @blank_env, i32 0, i32 0)
  %717 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i.i = icmp slt i32 %717, 10
  br i1 %cmp14.i.i, label %closem.exit.i, label %for.body.i425.i

for.body.i425.i:                                  ; preds = %for.cond.backedge.i428.i, %makecline.exit.i
  %i.015.i.i = phi i32 [ 10, %makecline.exit.i ], [ %721, %for.cond.backedge.i428.i ]
  %718 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i.i = getelementptr inbounds i8* %718, i32 %i.015.i.i
  %719 = load i8* %arrayidx.i.i, align 1, !tbaa !1
  %cmp7.i.i = icmp eq i8 %719, 3
  br i1 %cmp7.i.i, label %if.then.i427.i, label %for.inc.i.i

if.then.i427.i:                                   ; preds = %for.body.i425.i
  %call.i426.i = call i32 @zclose(i32 %i.015.i.i) nounwind
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i425.i, %if.then.i427.i
  %720 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i.i, i32 1) nounwind
  %721 = extractvalue { i32, i1 } %720, 0
  %722 = extractvalue { i32, i1 } %720, 1
  br i1 %722, label %ioc_bb.i429.i, label %for.cond.backedge.i428.i

for.cond.backedge.i428.i:                         ; preds = %for.inc.i.i, %ioc_bb.i429.i
  %723 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i.i = icmp sgt i32 %721, %723
  br i1 %cmp.i.i, label %closem.exit.i, label %for.body.i425.i

ioc_bb.i429.i:                                    ; preds = %for.inc.i.i
  %724 = sext i32 %i.015.i.i to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %724, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i428.i

closem.exit.i:                                    ; preds = %for.cond.backedge.i428.i, %makecline.exit.i
  call void @signal_unblock(%struct.__sigset_t* sret %tmp.i, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %call51.i3595 = call i32 @strlen(i8* %691) nounwind readonly
  %725 = icmp sgt i32 %call51.i3595, -1
  br i1 %725, label %cont53.i, label %cont53.i.thread

cont53.i.thread:                                  ; preds = %closem.exit.i
  %726 = zext i32 %call51.i3595 to i64
  call void @__ioc_report_conversion(i32 552, i32 14, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %726, i8 0) nounwind
  br label %for.cond.i

cont53.i:                                         ; preds = %closem.exit.i
  %cmp54.i = icmp sgt i32 %call51.i3595, 4095
  br i1 %cmp54.i, label %if.then56.i, label %for.cond.i

if.then56.i:                                      ; preds = %cont53.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([21 x i8]* @.str62, i32 0, i32 0), i8* %691) nounwind
  call void @_exit(i32 1) noreturn nounwind
  unreachable

for.cond.i:                                       ; preds = %cont53.i.thread, %cont53.i, %for.inc.i3600
  %s.0.i = phi i8* [ %incdec.ptr.i3599, %for.inc.i3600 ], [ %691, %cont53.i ], [ %691, %cont53.i.thread ]
  %727 = load i8* %s.0.i, align 1, !tbaa !1
  switch i8 %727, label %for.inc.i3600 [
    i8 0, label %for.end.i
    i8 47, label %if.then62.i
  ]

if.then62.i:                                      ; preds = %for.cond.i
  %call64.i = call fastcc i32 @zexecve(i8* %691, i8** %707, i8** %newenvp.0.i) nounwind
  %cmp65.i = icmp ne i8* %691, %s.0.i
  %728 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 118), align 1, !tbaa !1
  %tobool68.i = icmp ne i8 %728, 0
  %or.cond.i = and i1 %cmp65.i, %tobool68.i
  br i1 %or.cond.i, label %lor.lhs.false69.i, label %if.then85.i

lor.lhs.false69.i:                                ; preds = %if.then62.i
  %729 = load i8* %691, align 1, !tbaa !1
  %cmp71.i = icmp eq i8 %729, 46
  br i1 %cmp71.i, label %land.lhs.true73.i, label %for.end.i

land.lhs.true73.i:                                ; preds = %lor.lhs.false69.i
  %add.ptr.i3596 = getelementptr inbounds i8* %691, i32 1
  %cmp74.i = icmp eq i8* %add.ptr.i3596, %s.0.i
  br i1 %cmp74.i, label %if.then85.i, label %lor.lhs.false76.i

lor.lhs.false76.i:                                ; preds = %land.lhs.true73.i
  %730 = load i8* %add.ptr.i3596, align 1, !tbaa !1
  %cmp79.i = icmp eq i8 %730, 46
  %add.ptr82.i3597 = getelementptr inbounds i8* %691, i32 2
  %cmp83.i = icmp eq i8* %add.ptr82.i3597, %s.0.i
  %or.cond424.i = and i1 %cmp79.i, %cmp83.i
  br i1 %or.cond424.i, label %if.then85.i, label %for.end.i

if.then85.i:                                      ; preds = %lor.lhs.false76.i, %land.lhs.true73.i, %if.then62.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %call64.i, i8* %691) nounwind
  %cmp86.i = icmp eq i32 %call64.i, 13
  br i1 %cmp86.i, label %lor.end.i, label %lor.rhs.i3598

lor.rhs.i3598:                                    ; preds = %if.then85.i
  %cmp88.i = icmp eq i32 %call64.i, 8
  %phitmp422.i = select i1 %cmp88.i, i32 126, i32 127
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i3598, %if.then85.i
  %731 = phi i32 [ 126, %if.then85.i ], [ %phitmp422.i, %lor.rhs.i3598 ]
  call void @_exit(i32 %731) noreturn nounwind
  unreachable

for.inc.i3600:                                    ; preds = %for.cond.i
  %incdec.ptr.i3599 = getelementptr inbounds i8* %s.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i, %lor.lhs.false76.i, %lor.lhs.false69.i
  %tobool92.i = icmp eq i32 %use_defpath.33662, 0
  br i1 %tobool92.i, label %if.else173.i, label %for.cond100.i.preheader

for.cond100.i.preheader:                          ; preds = %for.end.i
  %sub.ptr.rhs.cast118.i = ptrtoint [4096 x i8]* %sbuf.i to i32
  %732 = bitcast %struct.stat* %statbuf.i.i to i8*
  %733 = bitcast %struct.stat* %statbuf.i.i to %struct.stat64*
  %st_mode.i.i = getelementptr inbounds %struct.stat* %statbuf.i.i, i32 0, i32 3
  br label %for.body102.i

for.body102.i:                                    ; preds = %for.inc137.i, %for.cond100.i.preheader
  %ps.0.i3750 = phi i8* [ getelementptr inbounds ([14 x i8]* @.str63, i32 0, i32 0), %for.cond100.i.preheader ], [ %.add.ptr140.i, %for.inc137.i ]
  %call103.i = call i8* @strchr(i8* %ps.0.i3750, i32 58) nounwind
  %734 = load i8* %ps.0.i3750, align 1, !tbaa !1
  %cmp105.i = icmp eq i8 %734, 47
  br i1 %cmp105.i, label %if.then107.i, label %for.inc137.i

if.then107.i:                                     ; preds = %for.body102.i
  store i8* %688, i8** %s95.i, align 4, !tbaa !5
  %tobool109.i = icmp eq i8* %call103.i, null
  br i1 %tobool109.i, label %if.else111.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.then107.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call103.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %ps.0.i3750 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @struncpy(i8** %s95.i, i8* %ps.0.i3750, i32 %sub.ptr.sub.i) nounwind
  br label %cont114.i

if.else111.i:                                     ; preds = %if.then107.i
  call void @strucpy(i8** %s95.i, i8* %ps.0.i3750) nounwind
  br label %cont114.i

cont114.i:                                        ; preds = %if.else111.i, %if.then110.i
  %735 = load i8** %s95.i, align 4, !tbaa !5
  %incdec.ptr115.i = getelementptr inbounds i8* %735, i32 1
  store i8* %incdec.ptr115.i, i8** %s95.i, align 4, !tbaa !5
  store i8 47, i8* %735, align 1, !tbaa !1
  %736 = load i8** %s95.i, align 4, !tbaa !5
  %sub.ptr.lhs.cast117.i = ptrtoint i8* %736 to i32
  %sub.ptr.sub119.i = sub i32 %sub.ptr.lhs.cast117.i, %sub.ptr.rhs.cast118.i
  %737 = icmp sgt i32 %sub.ptr.sub119.i, -1
  br i1 %737, label %cont121.i, label %ioc_bb120.i

ioc_bb120.i:                                      ; preds = %cont114.i
  %738 = sext i32 %sub.ptr.sub119.i to i64
  call void @__ioc_report_conversion(i32 581, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %738, i8 1) nounwind
  br label %cont121.i

cont121.i:                                        ; preds = %ioc_bb120.i, %cont114.i
  %call122.i = call i32 @strlen(i8* %691) nounwind readonly
  %739 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub119.i, i32 %call122.i) nounwind
  %740 = extractvalue { i32, i1 } %739, 0
  %741 = extractvalue { i32, i1 } %739, 1
  br i1 %741, label %ioc_bb123.i, label %cont126.i

ioc_bb123.i:                                      ; preds = %cont121.i
  %742 = zext i32 %call122.i to i64
  %743 = zext i32 %sub.ptr.sub119.i to i64
  call void @__ioc_report_add_overflow(i32 581, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %743, i64 %742, i8 5) nounwind
  br label %cont126.i

cont126.i:                                        ; preds = %ioc_bb123.i, %cont121.i
  %cmp127.i = icmp ugt i32 %740, 4095
  br i1 %cmp127.i, label %for.inc137.i, label %if.end130.i

if.end130.i:                                      ; preds = %cont126.i
  call void @strucpy(i8** %s95.i, i8* %691) nounwind
  call void @llvm.lifetime.start(i64 -1, i8* %732) nounwind
  %call.i431.i = call i8* @unmeta(i8* %688) nounwind
  %call1.i.i = call i32 @access(i8* %call.i431.i, i32 1) nounwind
  %cmp.i432.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i432.i, label %land.lhs.true.i433.i, label %for.inc137.i

land.lhs.true.i433.i:                             ; preds = %if.end130.i
  %call.i.i.i = call i32 @__xstat64(i32 3, i8* %call.i431.i, %struct.stat64* %733) nounwind
  %cmp3.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp3.i.i, label %cont5.i.i, label %for.inc137.i

cont5.i.i:                                        ; preds = %land.lhs.true.i433.i
  %744 = load i32* %st_mode.i.i, align 4, !tbaa !3
  %and.i.i = and i32 %744, 61440
  %cmp6.i.i = icmp eq i32 %and.i.i, 32768
  call void @llvm.lifetime.end(i64 -1, i8* %732) nounwind
  br i1 %cmp6.i.i, label %if.end151.i, label %for.inc137.i

for.inc137.i:                                     ; preds = %if.end130.i, %land.lhs.true.i433.i, %cont5.i.i, %cont126.i, %for.body102.i
  %tobool138.i = icmp eq i8* %call103.i, null
  %add.ptr140.i = getelementptr inbounds i8* %call103.i, i32 1
  %.add.ptr140.i = select i1 %tobool138.i, i8* null, i8* %add.ptr140.i
  %tobool101.i = icmp eq i8* %.add.ptr140.i, null
  br i1 %tobool101.i, label %if.then145.i, label %for.body102.i

if.then145.i:                                     ; preds = %for.inc137.i
  %745 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode.i3623 = getelementptr inbounds %struct.hashtable* %745, i32 0, i32 9
  %746 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i3623, align 4, !tbaa !5
  %call.i3624 = call %struct.hashnode* %746(%struct.hashtable* %745, i8* getelementptr inbounds ([26 x i8]* @.str65, i32 0, i32 0)) nounwind
  %tobool.i3625 = icmp eq %struct.hashnode* %call.i3624, null
  br i1 %tobool.i3625, label %if.end150.i, label %commandnotfound.exit

commandnotfound.exit:                             ; preds = %if.then145.i
  %747 = bitcast %struct.hashnode* %call.i3624 to %struct.shfunc*
  %node.i = bitcast %union.linkroot* %args.5 to %struct.linknode*
  %call1.i3626 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.5, %struct.linknode* %node.i, i8* %691) nounwind
  %call2.i3627 = call i32 @doshfunc(%struct.shfunc* %747, %union.linkroot* %args.5, i32 1) nounwind
  %cmp147.i = icmp eq i32 %call2.i3627, 0
  br i1 %cmp147.i, label %if.then149.i, label %if.end150.i

if.then149.i:                                     ; preds = %commandnotfound.exit
  call void @_exit(i32 0) noreturn nounwind
  unreachable

if.end150.i:                                      ; preds = %if.then145.i, %commandnotfound.exit
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str64, i32 0, i32 0), i8* %691) nounwind
  call void @_exit(i32 127) noreturn nounwind
  unreachable

if.end151.i:                                      ; preds = %cont5.i.i
  %call153.i = call fastcc i32 @zexecve(i8* %688, i8** %707, i8** %newenvp.0.i) nounwind
  %call155.i = call i8* @strrchr(i8* %688, i32 47) nounwind readonly
  %tobool156.i = icmp eq i8* %call155.i, null
  br i1 %tobool156.i, label %if.end160.i, label %cont159.i

cont159.i:                                        ; preds = %if.end151.i
  store i8 0, i8* %call155.i, align 1, !tbaa !1
  br label %if.end160.i

if.end160.i:                                      ; preds = %cont159.i, %if.end151.i
  switch i32 %call153.i, label %land.rhs.i.i [
    i32 13, label %lor.lhs.false.i.i
    i32 2, label %if.else310.i
  ]

lor.lhs.false.i.i:                                ; preds = %if.end160.i
  %748 = load i8* %688, align 1, !tbaa !1
  %tobool163.i = icmp ne i8 %748, 0
  %cond168.i = select i1 %tobool163.i, i8* %688, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)
  %call.i434.i = call i32 @access(i8* %cond168.i, i32 1) nounwind
  %tobool.i435.i = icmp eq i32 %call.i434.i, 0
  br i1 %tobool.i435.i, label %land.rhs.i.i, label %if.else310.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i, %if.end160.i
  %cmp2.i.i = icmp ne i32 %call153.i, 20
  %phitmp3728 = select i1 %cmp2.i.i, i32 %call153.i, i32 0
  br label %if.end307.i

if.else173.i:                                     ; preds = %for.end.i
  %749 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !5
  %getnode.i3601 = getelementptr inbounds %struct.hashtable* %749, i32 0, i32 9
  %750 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i3601, align 4, !tbaa !5
  %call174.i = call %struct.hashnode* %750(%struct.hashtable* %749, i8* %691) nounwind
  %tobool175.i = icmp eq %struct.hashnode* %call174.i, null
  br i1 %tobool175.i, label %if.end271.i, label %if.then176.i

if.then176.i:                                     ; preds = %if.else173.i
  %flags180.i = getelementptr inbounds %struct.hashnode* %call174.i, i32 0, i32 2
  %751 = load i32* %flags180.i, align 4, !tbaa !3
  %and185.i = and i32 %751, 2
  %tobool186.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.i, label %if.else190.i, label %if.then187.i

if.then187.i:                                     ; preds = %if.then176.i
  %u.i = getelementptr inbounds %struct.hashnode* %call174.i, i32 1
  %cmd.i = bitcast %struct.hashnode* %u.i to i8**
  %752 = load i8** %cmd.i, align 4, !tbaa !5
  %call189.i = call i8* @strcpy(i8* %689, i8* %752) nounwind
  br label %if.end249.i

if.else190.i:                                     ; preds = %if.then176.i
  %753 = load i8*** @path, align 4, !tbaa !5
  %u192.i = getelementptr inbounds %struct.hashnode* %call174.i, i32 1
  %name.i3602 = bitcast %struct.hashnode* %u192.i to i8***
  %754 = load i8*** %name.i3602, align 4, !tbaa !5
  %cmp193.i3743 = icmp ult i8** %753, %754
  br i1 %cmp193.i3743, label %for.body195.i, label %for.end232.i

for.body195.i:                                    ; preds = %if.else190.i, %for.inc230.i
  %pp.0.i3745 = phi i8** [ %incdec.ptr231.i, %for.inc230.i ], [ %753, %if.else190.i ]
  %eno.0.i3744 = phi i32 [ %eno.1.i, %for.inc230.i ], [ 0, %if.else190.i ]
  %755 = load i8** %pp.0.i3745, align 4, !tbaa !5
  %756 = load i8* %755, align 1, !tbaa !1
  switch i8 %756, label %if.then216.i [
    i8 0, label %if.then206.i
    i8 46, label %land.lhs.true201.i
    i8 47, label %for.inc230.i
  ]

land.lhs.true201.i:                               ; preds = %for.body195.i
  %arrayidx202.i = getelementptr inbounds i8* %755, i32 1
  %757 = load i8* %arrayidx202.i, align 1, !tbaa !1
  %cmp204.i = icmp eq i8 %757, 0
  br i1 %cmp204.i, label %if.then206.i, label %if.then216.i

if.then206.i:                                     ; preds = %for.body195.i, %land.lhs.true201.i
  %call207.i = call fastcc i32 @zexecve(i8* %691, i8** %707, i8** %newenvp.0.i) nounwind
  switch i32 %call207.i, label %land.rhs.i441.i [
    i32 13, label %lor.lhs.false.i439.i
    i32 2, label %for.inc230.i
  ]

lor.lhs.false.i439.i:                             ; preds = %if.then206.i
  %758 = load i8** %pp.0.i3745, align 4, !tbaa !5
  %call.i437.i = call i32 @access(i8* %758, i32 1) nounwind
  %tobool.i438.i = icmp eq i32 %call.i437.i, 0
  br i1 %tobool.i438.i, label %land.rhs.i441.i, label %for.inc230.i

land.rhs.i441.i:                                  ; preds = %lor.lhs.false.i439.i, %if.then206.i
  %cmp2.i440.i = icmp ne i32 %call207.i, 20
  %phitmp3733 = select i1 %cmp2.i440.i, i32 %call207.i, i32 %eno.0.i3744
  br label %for.inc230.i

if.then216.i:                                     ; preds = %for.body195.i, %land.lhs.true201.i
  store i8* %683, i8** %z.i, align 4, !tbaa !5
  %759 = load i8** %pp.0.i3745, align 4, !tbaa !5
  call void @strucpy(i8** %z.i, i8* %759) nounwind
  %760 = load i8** %z.i, align 4, !tbaa !5
  %incdec.ptr220.i = getelementptr inbounds i8* %760, i32 1
  store i8* %incdec.ptr220.i, i8** %z.i, align 4, !tbaa !5
  store i8 47, i8* %760, align 1, !tbaa !1
  %761 = load i8** %z.i, align 4, !tbaa !5
  %call221.i = call i8* @strcpy(i8* %761, i8* %691) nounwind
  %call223.i = call fastcc i32 @zexecve(i8* %683, i8** %707, i8** %newenvp.0.i) nounwind
  switch i32 %call223.i, label %land.rhs.i448.i [
    i32 13, label %lor.lhs.false.i446.i
    i32 2, label %for.inc230.i
  ]

lor.lhs.false.i446.i:                             ; preds = %if.then216.i
  %762 = load i8** %pp.0.i3745, align 4, !tbaa !5
  %call.i444.i = call i32 @access(i8* %762, i32 1) nounwind
  %tobool.i445.i = icmp eq i32 %call.i444.i, 0
  br i1 %tobool.i445.i, label %land.rhs.i448.i, label %for.inc230.i

land.rhs.i448.i:                                  ; preds = %lor.lhs.false.i446.i, %if.then216.i
  %cmp2.i447.i = icmp ne i32 %call223.i, 20
  %phitmp3732 = select i1 %cmp2.i447.i, i32 %call223.i, i32 %eno.0.i3744
  br label %for.inc230.i

for.inc230.i:                                     ; preds = %for.body195.i, %lor.lhs.false.i446.i, %if.then216.i, %lor.lhs.false.i439.i, %if.then206.i, %land.rhs.i448.i, %land.rhs.i441.i
  %eno.1.i = phi i32 [ %phitmp3733, %land.rhs.i441.i ], [ %phitmp3732, %land.rhs.i448.i ], [ %eno.0.i3744, %if.then206.i ], [ %eno.0.i3744, %lor.lhs.false.i439.i ], [ %eno.0.i3744, %if.then216.i ], [ %eno.0.i3744, %lor.lhs.false.i446.i ], [ %eno.0.i3744, %for.body195.i ]
  %incdec.ptr231.i = getelementptr inbounds i8** %pp.0.i3745, i32 1
  %763 = load i8*** %name.i3602, align 4, !tbaa !5
  %cmp193.i = icmp ult i8** %incdec.ptr231.i, %763
  br i1 %cmp193.i, label %for.body195.i, label %for.end232.i

for.end232.i:                                     ; preds = %for.inc230.i, %if.else190.i
  %.lcssa = phi i8** [ %754, %if.else190.i ], [ %763, %for.inc230.i ]
  %eno.0.i.lcssa = phi i32 [ 0, %if.else190.i ], [ %eno.1.i, %for.inc230.i ]
  %tobool236.i = icmp eq i8** %.lcssa, null
  br i1 %tobool236.i, label %cond.end241.i, label %cond.true237.i

cond.true237.i:                                   ; preds = %for.end232.i
  %764 = load i8** %.lcssa, align 4, !tbaa !5
  br label %cond.end241.i

cond.end241.i:                                    ; preds = %cond.true237.i, %for.end232.i
  %cond242.i = phi i8* [ %764, %cond.true237.i ], [ getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), %for.end232.i ]
  %call243.i = call i8* @strcpy(i8* %689, i8* %cond242.i) nounwind
  %strlen.i = call i32 @strlen(i8* %689) nounwind
  %endptr.i = getelementptr [4096 x i8]* %nn.i, i32 0, i32 %strlen.i
  %765 = bitcast i8* %endptr.i to i16*
  store i16 47, i16* %765, align 1
  %nam.i3603 = getelementptr inbounds %struct.hashnode* %call174.i, i32 0, i32 1
  %766 = load i8** %nam.i3603, align 4, !tbaa !5
  %call248.i = call i8* @strcat(i8* %689, i8* %766) nounwind
  br label %if.end249.i

if.end249.i:                                      ; preds = %cond.end241.i, %if.then187.i
  %eno.2.i = phi i32 [ 0, %if.then187.i ], [ %eno.0.i.lcssa, %cond.end241.i ]
  %call251.i = call fastcc i32 @zexecve(i8* %689, i8** %707, i8** %newenvp.0.i) nounwind
  %call253.i = call i8* @strrchr(i8* %689, i32 47) nounwind readonly
  %tobool254.i = icmp eq i8* %call253.i, null
  br i1 %tobool254.i, label %if.end258.i, label %cont257.i

cont257.i:                                        ; preds = %if.end249.i
  store i8 0, i8* %call253.i, align 1, !tbaa !1
  br label %if.end258.i

if.end258.i:                                      ; preds = %cont257.i, %if.end249.i
  switch i32 %call251.i, label %land.rhs.i455.i [
    i32 13, label %lor.lhs.false.i453.i
    i32 2, label %if.end271.i
  ]

lor.lhs.false.i453.i:                             ; preds = %if.end258.i
  %767 = load i8* %689, align 1, !tbaa !1
  %tobool261.i = icmp ne i8 %767, 0
  %cond266.i = select i1 %tobool261.i, i8* %689, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)
  %call.i451.i = call i32 @access(i8* %cond266.i, i32 1) nounwind
  %tobool.i452.i = icmp eq i32 %call.i451.i, 0
  br i1 %tobool.i452.i, label %land.rhs.i455.i, label %if.end271.i

land.rhs.i455.i:                                  ; preds = %lor.lhs.false.i453.i, %if.end258.i
  %cmp2.i454.i = icmp ne i32 %call251.i, 20
  %phitmp3729 = select i1 %cmp2.i454.i, i32 %call251.i, i32 %eno.2.i
  br label %if.end271.i

if.end271.i:                                      ; preds = %if.end258.i, %lor.lhs.false.i453.i, %land.rhs.i455.i, %if.else173.i
  %eno.3.i = phi i32 [ 0, %if.else173.i ], [ %eno.2.i, %lor.lhs.false.i453.i ], [ %phitmp3729, %land.rhs.i455.i ], [ %eno.2.i, %if.end258.i ]
  %768 = load i8*** @path, align 4, !tbaa !5
  %769 = load i8** %768, align 4, !tbaa !5
  %tobool273.i3739 = icmp eq i8* %769, null
  br i1 %tobool273.i3739, label %if.end307.i, label %for.body274.i

for.body274.i:                                    ; preds = %if.end271.i, %for.inc304.i
  %770 = phi i8* [ %778, %for.inc304.i ], [ %769, %if.end271.i ]
  %pp.1.i3741 = phi i8** [ %incdec.ptr305.i, %for.inc304.i ], [ %768, %if.end271.i ]
  %eno.4.i3740 = phi i32 [ %eno.5.i, %for.inc304.i ], [ %eno.3.i, %if.end271.i ]
  %771 = load i8* %770, align 1, !tbaa !1
  switch i8 %771, label %if.else291.i [
    i8 0, label %if.then285.i
    i8 46, label %land.lhs.true282.i
  ]

land.lhs.true282.i:                               ; preds = %for.body274.i
  %arrayidx283.i = getelementptr inbounds i8* %770, i32 1
  %772 = load i8* %arrayidx283.i, align 1, !tbaa !1
  %tobool284.i = icmp eq i8 %772, 0
  br i1 %tobool284.i, label %if.then285.i, label %if.else291.i

if.then285.i:                                     ; preds = %land.lhs.true282.i, %for.body274.i
  %call286.i = call fastcc i32 @zexecve(i8* %691, i8** %707, i8** %newenvp.0.i) nounwind
  switch i32 %call286.i, label %land.rhs.i462.i [
    i32 13, label %lor.lhs.false.i460.i
    i32 2, label %for.inc304.i
  ]

lor.lhs.false.i460.i:                             ; preds = %if.then285.i
  %773 = load i8** %pp.1.i3741, align 4, !tbaa !5
  %call.i458.i = call i32 @access(i8* %773, i32 1) nounwind
  %tobool.i459.i = icmp eq i32 %call.i458.i, 0
  br i1 %tobool.i459.i, label %land.rhs.i462.i, label %for.inc304.i

land.rhs.i462.i:                                  ; preds = %lor.lhs.false.i460.i, %if.then285.i
  %cmp2.i461.i = icmp ne i32 %call286.i, 20
  %phitmp3731 = select i1 %cmp2.i461.i, i32 %call286.i, i32 %eno.4.i3740
  br label %for.inc304.i

if.else291.i:                                     ; preds = %land.lhs.true282.i, %for.body274.i
  store i8* %683, i8** %z.i, align 4, !tbaa !5
  %774 = load i8** %pp.1.i3741, align 4, !tbaa !5
  call void @strucpy(i8** %z.i, i8* %774) nounwind
  %775 = load i8** %z.i, align 4, !tbaa !5
  %incdec.ptr295.i = getelementptr inbounds i8* %775, i32 1
  store i8* %incdec.ptr295.i, i8** %z.i, align 4, !tbaa !5
  store i8 47, i8* %775, align 1, !tbaa !1
  %776 = load i8** %z.i, align 4, !tbaa !5
  %call296.i = call i8* @strcpy(i8* %776, i8* %691) nounwind
  %call298.i = call fastcc i32 @zexecve(i8* %683, i8** %707, i8** %newenvp.0.i) nounwind
  switch i32 %call298.i, label %land.rhs.i469.i [
    i32 13, label %lor.lhs.false.i467.i
    i32 2, label %for.inc304.i
  ]

lor.lhs.false.i467.i:                             ; preds = %if.else291.i
  %777 = load i8** %pp.1.i3741, align 4, !tbaa !5
  %call.i465.i = call i32 @access(i8* %777, i32 1) nounwind
  %tobool.i466.i = icmp eq i32 %call.i465.i, 0
  br i1 %tobool.i466.i, label %land.rhs.i469.i, label %for.inc304.i

land.rhs.i469.i:                                  ; preds = %lor.lhs.false.i467.i, %if.else291.i
  %cmp2.i468.i = icmp ne i32 %call298.i, 20
  %phitmp3730 = select i1 %cmp2.i468.i, i32 %call298.i, i32 %eno.4.i3740
  br label %for.inc304.i

for.inc304.i:                                     ; preds = %if.else291.i, %lor.lhs.false.i467.i, %land.rhs.i469.i, %if.then285.i, %lor.lhs.false.i460.i, %land.rhs.i462.i
  %eno.5.i = phi i32 [ %eno.4.i3740, %lor.lhs.false.i460.i ], [ %phitmp3731, %land.rhs.i462.i ], [ %eno.4.i3740, %if.then285.i ], [ %eno.4.i3740, %lor.lhs.false.i467.i ], [ %phitmp3730, %land.rhs.i469.i ], [ %eno.4.i3740, %if.else291.i ]
  %incdec.ptr305.i = getelementptr inbounds i8** %pp.1.i3741, i32 1
  %778 = load i8** %incdec.ptr305.i, align 4, !tbaa !5
  %tobool273.i = icmp eq i8* %778, null
  br i1 %tobool273.i, label %if.end307.i, label %for.body274.i

if.end307.i:                                      ; preds = %if.end271.i, %for.inc304.i, %land.rhs.i.i
  %eno.6.i = phi i32 [ %phitmp3728, %land.rhs.i.i ], [ %eno.3.i, %if.end271.i ], [ %eno.5.i, %for.inc304.i ]
  %tobool308.i = icmp eq i32 %eno.6.i, 0
  br i1 %tobool308.i, label %if.else310.i, label %if.then309.i

if.then309.i:                                     ; preds = %if.end307.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %eno.6.i, i8* %691) nounwind
  br label %if.end317.i

if.else310.i:                                     ; preds = %if.end160.i, %lor.lhs.false.i.i, %if.end307.i
  %779 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %getnode.i3630 = getelementptr inbounds %struct.hashtable* %779, i32 0, i32 9
  %780 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i3630, align 4, !tbaa !5
  %call.i3631 = call %struct.hashnode* %780(%struct.hashtable* %779, i8* getelementptr inbounds ([26 x i8]* @.str65, i32 0, i32 0)) nounwind
  %tobool.i3632 = icmp eq %struct.hashnode* %call.i3631, null
  br i1 %tobool.i3632, label %if.else315.i, label %commandnotfound.exit3638

commandnotfound.exit3638:                         ; preds = %if.else310.i
  %781 = bitcast %struct.hashnode* %call.i3631 to %struct.shfunc*
  %node.i3633 = bitcast %union.linkroot* %args.5 to %struct.linknode*
  %call1.i3634 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.5, %struct.linknode* %node.i3633, i8* %691) nounwind
  %call2.i3635 = call i32 @doshfunc(%struct.shfunc* %781, %union.linkroot* %args.5, i32 1) nounwind
  %cmp312.i = icmp eq i32 %call2.i3635, 0
  br i1 %cmp312.i, label %if.then314.i, label %if.else315.i

if.then314.i:                                     ; preds = %commandnotfound.exit3638
  call void @_exit(i32 0) noreturn nounwind
  unreachable

if.else315.i:                                     ; preds = %if.else310.i, %commandnotfound.exit3638
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str64, i32 0, i32 0), i8* %691) nounwind
  br label %if.end317.i

if.end317.i:                                      ; preds = %if.else315.i, %if.then309.i
  %eno.6.i4088 = phi i32 [ 0, %if.else315.i ], [ %eno.6.i, %if.then309.i ]
  %cmp318.i = icmp eq i32 %eno.6.i4088, 13
  br i1 %cmp318.i, label %lor.end323.i, label %lor.rhs320.i

lor.rhs320.i:                                     ; preds = %if.end317.i
  %cmp321.i = icmp eq i32 %eno.6.i4088, 8
  %phitmp.i = select i1 %cmp321.i, i32 126, i32 127
  br label %lor.end323.i

lor.end323.i:                                     ; preds = %lor.rhs320.i, %if.end317.i
  %782 = phi i32 [ 126, %if.end317.i ], [ %phitmp.i, %lor.rhs320.i ]
  call void @_exit(i32 %782) noreturn nounwind
  unreachable

if.else2650:                                      ; preds = %if.end2602
  store i32 0, i32* @list_pipe, align 4, !tbaa !3
  %783 = load i32* @subsh_close, align 4, !tbaa !3
  %cmp2651 = icmp sgt i32 %783, -1
  br i1 %cmp2651, label %if.then2653, label %cont2657

if.then2653:                                      ; preds = %if.else2650
  %call2654 = call i32 @zclose(i32 %783) nounwind
  br label %cont2657

cont2657:                                         ; preds = %if.else2650, %if.then2653
  store i32 -1, i32* @subsh_close, align 4, !tbaa !3
  %784 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr2659 = getelementptr inbounds i32* %784, i32 1
  store i32* %incdec.ptr2659, i32** %pc, align 4, !tbaa !5
  call void @execlist(%struct.estate* %state, i32 0, i32 1)
  br label %err

err:                                              ; preds = %if.end2342, %if.end2578, %if.then2350, %cont2399, %cont2657, %if.then2580, %if.else2354, %if.then1673
  %newxtrerr.1 = phi %struct._IO_FILE* [ null, %if.then1673 ], [ %newxtrerr.0, %if.then2350 ], [ %newxtrerr.0, %if.end2342 ], [ %newxtrerr.0, %if.else2354 ], [ %newxtrerr.0, %cont2399 ], [ %newxtrerr.0, %if.then2580 ], [ %newxtrerr.0, %if.end2578 ], [ %newxtrerr.0, %cont2657 ]
  %tobool2665 = icmp eq i32 %forked.0, 0
  br i1 %tobool2665, label %if.end2693, label %for.body2670

for.body2670:                                     ; preds = %for.cond2667.backedge, %err
  %i.33738 = phi i32 [ 0, %err ], [ %788, %for.cond2667.backedge ]
  %785 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx2671 = getelementptr inbounds i8* %785, i32 %i.33738
  %786 = load i8* %arrayidx2671, align 1, !tbaa !1
  %cmp2673 = icmp eq i8 %786, 0
  br i1 %cmp2673, label %for.inc2678, label %if.then2675

if.then2675:                                      ; preds = %for.body2670
  %call2676 = call i32 @close(i32 %i.33738) nounwind
  br label %for.inc2678

for.inc2678:                                      ; preds = %for.body2670, %if.then2675
  %787 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.33738, i32 1)
  %788 = extractvalue { i32, i1 } %787, 0
  %789 = extractvalue { i32, i1 } %787, 1
  br i1 %789, label %ioc_bb2679, label %for.cond2667.backedge

for.cond2667.backedge:                            ; preds = %for.inc2678, %ioc_bb2679
  %cmp2668 = icmp slt i32 %788, 10
  br i1 %cmp2668, label %for.body2670, label %for.end2681

ioc_bb2679:                                       ; preds = %for.inc2678
  %790 = sext i32 %i.33738 to i64
  call void @__ioc_report_add_overflow(i32 3221, i32 26, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %790, i64 1, i8 13) nounwind
  br label %for.cond2667.backedge

for.end2681:                                      ; preds = %for.cond2667.backedge
  %791 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i3561 = icmp slt i32 %791, 10
  br i1 %cmp14.i3561, label %closem.exit3576, label %for.body.i3566

for.body.i3566:                                   ; preds = %for.cond.backedge.i3574, %for.end2681
  %i.015.i3563 = phi i32 [ 10, %for.end2681 ], [ %795, %for.cond.backedge.i3574 ]
  %792 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i3564 = getelementptr inbounds i8* %792, i32 %i.015.i3563
  %793 = load i8* %arrayidx.i3564, align 1, !tbaa !1
  %cmp1.i3565 = icmp eq i8 %793, 0
  br i1 %cmp1.i3565, label %for.inc.i3572, label %land.lhs.true.i3569

land.lhs.true.i3569:                              ; preds = %for.body.i3566
  %call.i3570 = call i32 @zclose(i32 %i.015.i3563) nounwind
  br label %for.inc.i3572

for.inc.i3572:                                    ; preds = %land.lhs.true.i3569, %for.body.i3566
  %794 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i3563, i32 1) nounwind
  %795 = extractvalue { i32, i1 } %794, 0
  %796 = extractvalue { i32, i1 } %794, 1
  br i1 %796, label %ioc_bb.i3575, label %for.cond.backedge.i3574

for.cond.backedge.i3574:                          ; preds = %for.inc.i3572, %ioc_bb.i3575
  %797 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i3573 = icmp sgt i32 %795, %797
  br i1 %cmp.i3573, label %closem.exit3576, label %for.body.i3566

ioc_bb.i3575:                                     ; preds = %for.inc.i3572
  %798 = sext i32 %i.015.i3563 to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %798, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3574

closem.exit3576:                                  ; preds = %for.cond.backedge.i3574, %for.end2681
  %799 = load i32* @thisjob, align 4, !tbaa !3
  %cmp2684 = icmp eq i32 %799, -1
  br i1 %cmp2684, label %if.end2687, label %if.then2686

if.then2686:                                      ; preds = %closem.exit3576
  call void @waitjobs() nounwind
  br label %if.end2687

if.end2687:                                       ; preds = %closem.exit3576, %if.then2686
  %800 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %800, 2147483648
  %801 = icmp ult i64 %.off, 4294967296
  br i1 %801, label %cont2691, label %ioc_bb2690

ioc_bb2690:                                       ; preds = %if.end2687
  call void @__ioc_report_conversion(i32 3227, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %800, i8 1) nounwind
  br label %cont2691

cont2691:                                         ; preds = %ioc_bb2690, %if.end2687
  %conv2692 = trunc i64 %800 to i32
  call void @_exit(i32 %conv2692) noreturn nounwind
  unreachable

if.end2693:                                       ; preds = %err
  %call.i3549 = call i32* @__errno_location() nounwind readnone
  %802 = load i32* %call.i3549, align 4, !tbaa !3
  br label %for.body.i3553

for.body.i3553:                                   ; preds = %for.cond.backedge.i3558, %if.end2693
  %i.012.i3550 = phi i32 [ 0, %if.end2693 ], [ %805, %for.cond.backedge.i3558 ]
  %arrayidx.i3551 = getelementptr inbounds [10 x i32]* %save, i32 0, i32 %i.012.i3550
  %803 = load i32* %arrayidx.i3551, align 4, !tbaa !3
  %cmp1.i3552 = icmp eq i32 %803, -2
  br i1 %cmp1.i3552, label %for.inc.i3556, label %if.then.i3555

if.then.i3555:                                    ; preds = %for.body.i3553
  %call3.i3554 = call i32 @redup(i32 %803, i32 %i.012.i3550) nounwind
  br label %for.inc.i3556

for.inc.i3556:                                    ; preds = %if.then.i3555, %for.body.i3553
  %804 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.012.i3550, i32 1) nounwind
  %805 = extractvalue { i32, i1 } %804, 0
  %806 = extractvalue { i32, i1 } %804, 1
  br i1 %806, label %ioc_bb4.i3559, label %for.cond.backedge.i3558

for.cond.backedge.i3558:                          ; preds = %ioc_bb4.i3559, %for.inc.i3556
  %cmp.i3557 = icmp eq i32 %805, 10
  br i1 %cmp.i3557, label %fixfds.exit3560, label %for.body.i3553

ioc_bb4.i3559:                                    ; preds = %for.inc.i3556
  %807 = sext i32 %i.012.i3550 to i64
  call void @__ioc_report_add_overflow(i32 3405, i32 25, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %807, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i3558

fixfds.exit3560:                                  ; preds = %for.cond.backedge.i3558
  store i32 %802, i32* %call.i3549, align 4, !tbaa !3
  br label %done

done:                                             ; preds = %for.cond2322.backedge, %fixfds.exit3560, %fixfds.exit3500, %if.then2291, %if.then2263, %if.then2157, %if.then2009, %if.then1912, %if.then1866, %if.then1829, %if.then1810, %if.then1783, %if.then1748, %if.then543, %if.then535, %if.then442
  %newxtrerr.2 = phi %struct._IO_FILE* [ null, %if.then543 ], [ null, %if.then535 ], [ %newxtrerr.1, %fixfds.exit3560 ], [ %newxtrerr.0, %if.then1748 ], [ %newxtrerr.0, %if.then1783 ], [ %newxtrerr.0, %if.then1810 ], [ %newxtrerr.0, %if.then1829 ], [ %newxtrerr.0, %if.then2263 ], [ %newxtrerr.0, %if.then2291 ], [ %newxtrerr.0, %if.then2157 ], [ %newxtrerr.0, %if.then2009 ], [ %newxtrerr.0, %if.then1912 ], [ %newxtrerr.0, %if.then1866 ], [ %newxtrerr.0, %fixfds.exit3500 ], [ null, %if.then442 ], [ %newxtrerr.0, %for.cond2322.backedge ]
  %orig_cflags.2 = phi i32 [ %or, %if.then543 ], [ %or, %if.then535 ], [ %orig_cflags.13658, %fixfds.exit3560 ], [ %orig_cflags.13658, %if.then1748 ], [ %orig_cflags.13658, %if.then1783 ], [ %orig_cflags.13658, %if.then1810 ], [ %orig_cflags.13658, %if.then1829 ], [ %orig_cflags.13658, %if.then2263 ], [ %orig_cflags.13658, %if.then2291 ], [ %orig_cflags.13658, %if.then2157 ], [ %orig_cflags.13658, %if.then2009 ], [ %orig_cflags.13658, %if.then1912 ], [ %orig_cflags.13658, %if.then1866 ], [ %orig_cflags.13658, %fixfds.exit3500 ], [ %or, %if.then442 ], [ %orig_cflags.13658, %for.cond2322.backedge ]
  %cflags.8 = phi i32 [ %cflags.23813, %if.then543 ], [ %cflags.23813, %if.then535 ], [ %cflags.7, %fixfds.exit3560 ], [ %cflags.7, %if.then1748 ], [ %cflags.7, %if.then1783 ], [ %cflags.7, %if.then1810 ], [ %cflags.7, %if.then1829 ], [ %cflags.7, %if.then2263 ], [ %cflags.7, %if.then2291 ], [ %cflags.7, %if.then2157 ], [ %cflags.7, %if.then2009 ], [ %cflags.7, %if.then1912 ], [ %cflags.7, %if.then1866 ], [ %cflags.7, %fixfds.exit3500 ], [ %cflags.13847, %if.then442 ], [ %cflags.7, %for.cond2322.backedge ]
  %forked.1 = phi i32 [ 0, %if.then543 ], [ 0, %if.then535 ], [ 0, %fixfds.exit3560 ], [ 0, %if.then1748 ], [ 0, %if.then1783 ], [ 0, %if.then1810 ], [ 0, %if.then1829 ], [ 0, %if.then2263 ], [ 0, %if.then2291 ], [ 0, %if.then2157 ], [ 0, %if.then2009 ], [ 0, %if.then1912 ], [ 0, %if.then1866 ], [ %forked.0, %fixfds.exit3500 ], [ 0, %if.then442 ], [ %forked.0, %for.cond2322.backedge ]
  %redir_err.0 = phi i32 [ 0, %if.then543 ], [ 0, %if.then535 ], [ 0, %fixfds.exit3560 ], [ 1, %if.then1748 ], [ 1, %if.then1783 ], [ 1, %if.then1810 ], [ 1, %if.then1829 ], [ 1, %if.then2263 ], [ 1, %if.then2291 ], [ 1, %if.then2157 ], [ 1, %if.then2009 ], [ 1, %if.then1912 ], [ 1, %if.then1866 ], [ 0, %fixfds.exit3500 ], [ 0, %if.then442 ], [ 0, %for.cond2322.backedge ]
  %808 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 121), align 1, !tbaa !1
  %tobool2696 = icmp eq i8 %808, 0
  br i1 %tobool2696, label %if.end2727, label %cont2705

cont2705:                                         ; preds = %done
  %and2706 = and i32 %cflags.8, 2560
  %tobool2707 = icmp eq i32 %and2706, 0
  br i1 %tobool2707, label %if.end2727, label %cont2712

cont2712:                                         ; preds = %cont2705
  %and2713 = and i32 %orig_cflags.2, 256
  %tobool2714 = icmp eq i32 %and2713, 0
  br i1 %tobool2714, label %fatal, label %if.end2727

fatal:                                            ; preds = %cont2712, %if.then1402, %if.then1394
  %newxtrerr.3 = phi %struct._IO_FILE* [ null, %if.then1394 ], [ null, %if.then1402 ], [ %newxtrerr.2, %cont2712 ]
  %forked.2 = phi i32 [ 0, %if.then1394 ], [ 0, %if.then1402 ], [ %forked.1, %cont2712 ]
  %redir_err.1 = phi i32 [ 0, %if.then1394 ], [ 0, %if.then1402 ], [ %redir_err.0, %cont2712 ]
  %809 = load i32* @errflag, align 4, !tbaa !3
  %810 = or i32 %809, %redir_err.1
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %if.end2727, label %if.then2719

if.then2719:                                      ; preds = %fatal
  %812 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool2720 = icmp eq i8 %812, 0
  br i1 %tobool2720, label %if.then2721, label %if.end2725

if.then2721:                                      ; preds = %if.then2719
  %tobool2722 = icmp eq i32 %forked.2, 0
  br i1 %tobool2722, label %if.else2724, label %if.then2723

if.then2723:                                      ; preds = %if.then2721
  call void @_exit(i32 1) noreturn nounwind
  unreachable

if.else2724:                                      ; preds = %if.then2721
  call void @exit(i32 1) noreturn nounwind
  unreachable

if.end2725:                                       ; preds = %if.then2719
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end2727

if.end2727:                                       ; preds = %fatal, %cont2712, %cont2705, %done, %if.end2725
  %newxtrerr.4 = phi %struct._IO_FILE* [ %newxtrerr.2, %cont2712 ], [ %newxtrerr.3, %if.end2725 ], [ %newxtrerr.3, %fatal ], [ %newxtrerr.2, %cont2705 ], [ %newxtrerr.2, %done ]
  %tobool2728 = icmp eq %struct._IO_FILE* %newxtrerr.4, null
  br i1 %tobool2728, label %if.end2733, label %if.then2729

if.then2729:                                      ; preds = %if.end2727
  %call2730 = call i32 @fileno(%struct._IO_FILE* %newxtrerr.4) nounwind
  %call2731 = call i32 @fclose(%struct._IO_FILE* %newxtrerr.4) nounwind
  store %struct._IO_FILE* %1, %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call2732 = call i32 @zclose(i32 %call2730) nounwind
  br label %if.end2733

if.end2733:                                       ; preds = %if.end2727, %if.then2729
  %813 = load i8** @STTYval, align 4, !tbaa !5
  call void @zsfree(i8* %813) nounwind
  store i8* null, i8** @STTYval, align 4, !tbaa !5
  %cmp2734 = icmp sgt i32 %oautocont.1, -1
  br i1 %cmp2734, label %cont2740, label %if.end2742

cont2740:                                         ; preds = %if.end2733
  %conv2741 = trunc i32 %oautocont.1 to i8
  store i8 %conv2741, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 7), align 1, !tbaa !1
  br label %if.end2742

if.end2742:                                       ; preds = %resolvebuiltin.exit3345.thread, %resolvebuiltin.exit.thread, %if.end809, %if.end1564, %cont1571, %if.then1156, %cont1163, %if.then927, %cont934, %if.then885, %cont892, %if.then817, %sw.default, %if.then724, %if.then796, %if.then834, %cont2740, %if.end2733
  ret void
}

declare %union.linkroot* @ecgetredirs(%struct.estate*)

declare %union.linkroot* @ecgetlist(%struct.estate*, i32, i32, i32*)

declare void @scanjobs()

declare i32 @findjobnam(i8*)

declare i32 @has_token(i8*)

declare i8* @strchr(i8*, i32) nounwind readonly

declare i8* @uremnode(%union.linkroot*, %struct.linknode*)

declare i32 @zputenv(i8*)

declare void @zglob(%union.linkroot*, %struct.linknode*, i32)

define internal fastcc void @addvars(%struct.estate* %state, i32* %pc, i32 %addflags) nounwind {
entry:
  %htok = alloca i32, align 4
  %svl = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  store i32 0, i32* %htok, align 4, !tbaa !3
  %pc1 = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc1, align 4, !tbaa !5
  %and = and i32 %addflags, 4
  %tobool = icmp eq i32 %and, 0
  %1 = load i32* @locallevel, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %land.rhs, label %cont8

land.rhs:                                         ; preds = %entry
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 165), align 1, !tbaa !1
  %tobool4 = icmp ne i8 %2, 0
  %phitmp = select i1 %tobool4, i32 2, i32 0
  br label %cont8

cont8:                                            ; preds = %entry, %land.rhs
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool10 = icmp ne i8 %4, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %cont8
  call void @printprompt4() nounwind
  store i1 true, i1* @doneps4.b, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cont8
  %incdec.ptr374 = getelementptr inbounds i32* %pc, i32 1
  store i32* %incdec.ptr374, i32** %pc1, align 4, !tbaa !5
  %5 = load i32* %pc, align 4, !tbaa !3
  %and21375 = and i32 %5, 31
  %cmp24376 = icmp eq i32 %and21375, 5
  br i1 %cmp24376, label %while.body.lr.ph, label %while.end296

while.body.lr.ph:                                 ; preds = %if.end
  %first = getelementptr inbounds %union.linkroot* %svl, i32 0, i32 0, i32 0
  %last = getelementptr inbounds %union.linkroot* %svl, i32 0, i32 0, i32 1
  %flags78 = getelementptr inbounds %union.linkroot* %svl, i32 0, i32 0, i32 2
  %next = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 0
  %node = bitcast %union.linkroot* %svl to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 1
  %dat = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 2
  %and144 = and i32 %addflags, 1
  %tobool145 = icmp eq i32 %and144, 0
  %and156 = and i32 %addflags, 2
  %tobool157 = icmp eq i32 %and156, 0
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str43 to i32))
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %7 = phi i32 [ %5, %while.body.lr.ph ], [ %55, %while.cond.backedge ]
  %call = call i8* @ecgetstr(%struct.estate* %state, i32 2, i32* %htok) nounwind
  %8 = load i32* %htok, align 4, !tbaa !3
  %tobool26 = icmp eq i32 %8, 0
  br i1 %tobool26, label %cont30, label %if.then27

if.then27:                                        ; preds = %while.body
  call void @untokenize(i8* %call)
  br label %cont30

cont30:                                           ; preds = %if.then27, %while.body
  %shr = lshr i32 %7, 5
  %shr36 = and i32 %7, 64
  %shr36.lobit = lshr exact i32 %shr36, 6
  %myflags.0 = or i32 %shr36.lobit, %3
  br i1 %tobool10, label %if.then48, label %cont72

if.then48:                                        ; preds = %cont30
  %cmp39 = icmp ne i32 %shr36, 0
  %9 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %cond62 = select i1 %cmp39, i8* getelementptr inbounds ([5 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i32 0, i32 0)
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* %cond62, i8* %call) nounwind
  br label %cont72

cont72:                                           ; preds = %cont30, %if.then48
  %and70 = and i32 %shr, 1
  %cmp73 = icmp eq i32 %and70, 0
  br i1 %cmp73, label %do.body, label %cont87

do.body:                                          ; preds = %cont72
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4, !tbaa !5
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4, !tbaa !5
  store i32 0, i32* %flags78, align 4, !tbaa !3
  store %struct.linknode* null, %struct.linknode** %next, align 4, !tbaa !5
  store %struct.linknode* %node, %struct.linknode** %prev, align 4, !tbaa !5
  %call79 = call i8* @ecgetstr(%struct.estate* %state, i32 2, i32* %htok) nounwind
  store i8* %call79, i8** %dat, align 4, !tbaa !5
  br label %if.end89

cont87:                                           ; preds = %cont72
  %shr85 = lshr i32 %7, 7
  %call88 = call %union.linkroot* @ecgetlist(%struct.estate* %state, i32 %shr85, i32 2, i32* %htok) nounwind
  br label %if.end89

if.end89:                                         ; preds = %cont87, %do.body
  %vl.0 = phi %union.linkroot* [ %svl, %do.body ], [ %call88, %cont87 ]
  %tobool90 = icmp ne %union.linkroot* %vl.0, null
  %tobool90.not = xor i1 %tobool90, true
  %10 = load i32* %htok, align 4, !tbaa !3
  %tobool92 = icmp eq i32 %10, 0
  %or.cond365 = or i1 %tobool92, %tobool90.not
  br i1 %or.cond365, label %if.end109, label %if.then93

if.then93:                                        ; preds = %if.end89
  %11 = shl nuw nsw i32 %and70, 2
  %12 = xor i32 %11, 6
  call void @prefork(%union.linkroot* %vl.0, i32 %12) nounwind
  %13 = load i32* @errflag, align 4, !tbaa !3
  %tobool96 = icmp eq i32 %13, 0
  br i1 %tobool96, label %if.end99, label %if.then97

if.then97:                                        ; preds = %if.then93
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

if.end99:                                         ; preds = %if.then93
  %14 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 58), align 1, !tbaa !1
  %tobool101.not = icmp ne i8 %14, 0
  %cmp73.not = xor i1 %cmp73, true
  %brmerge = or i1 %tobool101.not, %cmp73.not
  br i1 %brmerge, label %if.end104, label %if.end109

if.end104:                                        ; preds = %if.end99
  call void @globlist(%union.linkroot* %vl.0, i32 0) nounwind
  %.pre = load i32* @errflag, align 4, !tbaa !3
  %phitmp379 = icmp eq i32 %.pre, 0
  br i1 %phitmp379, label %if.end109, label %if.then106

if.then106:                                       ; preds = %if.end104
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

if.end109:                                        ; preds = %if.end99, %if.end89, %if.end104
  br i1 %cmp73, label %land.lhs.true111, label %if.end258

land.lhs.true111:                                 ; preds = %if.end109
  %first113 = getelementptr inbounds %union.linkroot* %vl.0, i32 0, i32 0, i32 0
  %15 = load %struct.linknode** %first113, align 4, !tbaa !5
  %cmp114 = icmp eq %struct.linknode* %15, null
  br i1 %cmp114, label %if.then126, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %land.lhs.true111
  %next119 = getelementptr inbounds %struct.linknode* %15, i32 0, i32 0
  %16 = load %struct.linknode** %next119, align 4, !tbaa !5
  %tobool120 = icmp eq %struct.linknode* %16, null
  br i1 %tobool120, label %if.else128, label %if.end258

if.then126:                                       ; preds = %land.lhs.true111
  %call127 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind
  br label %if.end134

if.else128:                                       ; preds = %lor.lhs.false116
  %dat131 = getelementptr inbounds %struct.linknode* %15, i32 0, i32 2
  %17 = load i8** %dat131, align 4, !tbaa !5
  call void @untokenize(i8* %17)
  %call132 = call i8* @ugetnode(%union.linkroot* %vl.0) nounwind
  %call133 = call i8* @ztrdup(i8* %call132) nounwind
  br label %if.end134

if.end134:                                        ; preds = %if.else128, %if.then126
  %val.0 = phi i8* [ %call127, %if.then126 ], [ %call133, %if.else128 ]
  br i1 %tobool10, label %if.then136, label %cont143

if.then136:                                       ; preds = %if.end134
  %18 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call137 = call i32 @quotedzputs(i8* %val.0, %struct._IO_FILE* %18) nounwind
  %19 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call138 = call i32 @fputc(i32 32, %struct._IO_FILE* %19) nounwind
  br label %cont143

cont143:                                          ; preds = %if.then136, %if.end134
  br i1 %tobool145, label %if.else251, label %cond.false

cond.false:                                       ; preds = %cont143
  %call149 = call i8* @strchr(i8* %call, i32 91) nounwind
  %tobool150 = icmp eq i8* %call149, null
  br i1 %tobool150, label %cont155, label %if.else251

cont155:                                          ; preds = %cond.false
  %20 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 144), align 1, !tbaa !1
  %tobool160 = icmp eq i8 %20, 0
  %or.cond366 = or i1 %tobool157, %tobool160
  br i1 %or.cond366, label %if.end176, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %cont155
  %21 = load %struct.hashtable** @paramtab, align 4, !tbaa !5
  %removenode = getelementptr inbounds %struct.hashtable* %21, i32 0, i32 11
  %22 = load %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !5
  %call162 = call %struct.hashnode* %22(%struct.hashtable* %21, i8* %call) nounwind
  %tobool163 = icmp eq %struct.hashnode* %call162, null
  br i1 %tobool163, label %if.end176, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %flags166 = getelementptr inbounds %struct.hashnode* %call162, i32 0, i32 2
  %23 = load i32* %flags166, align 4, !tbaa !3
  %and171 = and i32 %23, 16777216
  %tobool172 = icmp eq i32 %and171, 0
  br i1 %tobool172, label %if.end176, label %if.then173

if.then173:                                       ; preds = %land.lhs.true164
  %nam = getelementptr inbounds %struct.hashnode* %call162, i32 0, i32 1
  %24 = load i8** %nam, align 4, !tbaa !5
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str38, i32 0, i32 0), i8* %24) nounwind
  call void @zsfree(i8* %val.0) nounwind
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

if.end176:                                        ; preds = %land.lhs.true164, %land.lhs.true161, %cont155
  %25 = extractvalue { i32, i1 } %6, 1
  br i1 %25, label %ioc_bb177, label %cont180

ioc_bb177:                                        ; preds = %if.end176
  call void @__ioc_report_sub_overflow(i32 2081, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str43 to i32) to i64), i8 5) nounwind
  br label %cont180

cont180:                                          ; preds = %ioc_bb177, %if.end176
  %call236 = call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 0)) nounwind
  %cmp238 = icmp eq i32 %call236, 0
  br i1 %cmp238, label %if.then240, label %if.end242

if.then240:                                       ; preds = %cont180
  %26 = load i8** @STTYval, align 4, !tbaa !5
  call void @zsfree(i8* %26) nounwind
  %call241 = call i8* @ztrdup(i8* %val.0) nounwind
  store i8* %call241, i8** @STTYval, align 4, !tbaa !5
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %cont180
  %27 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  %call246 = call %struct.param* @assignsparam(i8* %call, i8* %val.0, i32 %myflags.0) nounwind
  store i8 %27, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 2), align 1, !tbaa !1
  br label %if.end253

if.else251:                                       ; preds = %cond.false, %cont143
  %call252 = call %struct.param* @assignsparam(i8* %call, i8* %val.0, i32 %myflags.0) nounwind
  br label %if.end253

if.end253:                                        ; preds = %if.else251, %if.end242
  %28 = load i32* @errflag, align 4, !tbaa !3
  %tobool254 = icmp eq i32 %28, 0
  br i1 %tobool254, label %while.cond.backedge, label %if.then255

if.then255:                                       ; preds = %if.end253
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

if.end258:                                        ; preds = %lor.lhs.false116, %if.end109
  br i1 %tobool90, label %if.then260, label %if.else279

if.then260:                                       ; preds = %if.end258
  %call261 = call i32 @countlinknodes(%union.linkroot* %vl.0) nounwind
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call261, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb262, label %cont263

ioc_bb262:                                        ; preds = %if.then260
  %32 = sext i32 %call261 to i64
  call void @__ioc_report_add_overflow(i32 2099, i32 75, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %cont263

cont263:                                          ; preds = %if.then260, %ioc_bb262
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %cont266, label %ioc_bb265

ioc_bb265:                                        ; preds = %cont263
  %34 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 2099, i32 55, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont266

cont266:                                          ; preds = %ioc_bb265, %cont263
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb267, label %cont268

ioc_bb267:                                        ; preds = %cont266
  %38 = zext i32 %30 to i64
  call void @__ioc_report_mul_overflow(i32 2099, i32 53, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %38, i8 5) nounwind
  br label %cont268

cont268:                                          ; preds = %cont266, %ioc_bb267
  %call269 = call i8* @zalloc(i32 %36) nounwind
  %39 = bitcast i8* %call269 to i8**
  %first272 = getelementptr inbounds %union.linkroot* %vl.0, i32 0, i32 0, i32 0
  %40 = load %struct.linknode** %first272, align 4, !tbaa !5
  %cmp273368 = icmp eq %struct.linknode* %40, null
  br i1 %cmp273368, label %if.end281, label %while.body275

while.body275:                                    ; preds = %cont268, %while.body275
  %ptr.0369 = phi i8** [ %incdec.ptr278, %while.body275 ], [ %39, %cont268 ]
  %call276 = call i8* @ugetnode(%union.linkroot* %vl.0) nounwind
  %call277 = call i8* @ztrdup(i8* %call276) nounwind
  %incdec.ptr278 = getelementptr inbounds i8** %ptr.0369, i32 1
  store i8* %call277, i8** %ptr.0369, align 4, !tbaa !5
  %41 = load %struct.linknode** %first272, align 4, !tbaa !5
  %cmp273 = icmp eq %struct.linknode* %41, null
  br i1 %cmp273, label %if.end281, label %while.body275

if.else279:                                       ; preds = %if.end258
  %call280 = call i8* @zalloc(i32 4) nounwind
  %42 = bitcast i8* %call280 to i8**
  br label %if.end281

if.end281:                                        ; preds = %cont268, %while.body275, %if.else279
  %ptr.1 = phi i8** [ %42, %if.else279 ], [ %39, %cont268 ], [ %incdec.ptr278, %while.body275 ]
  %arr.0 = phi i8** [ %42, %if.else279 ], [ %39, %cont268 ], [ %39, %while.body275 ]
  store i8* null, i8** %ptr.1, align 4, !tbaa !5
  br i1 %tobool10, label %if.then283, label %if.end290

if.then283:                                       ; preds = %if.end281
  %43 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %44 = call i32 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str86, i32 0, i32 0), i32 2, i32 1, %struct._IO_FILE* %43)
  %45 = load i8** %arr.0, align 4, !tbaa !5
  %tobool285370 = icmp eq i8* %45, null
  %46 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  br i1 %tobool285370, label %for.end, label %for.body

for.body:                                         ; preds = %if.then283, %for.body
  %47 = phi %struct._IO_FILE* [ %51, %for.body ], [ %46, %if.then283 ]
  %48 = phi i8* [ %50, %for.body ], [ %45, %if.then283 ]
  %ptr.2371 = phi i8** [ %incdec.ptr288, %for.body ], [ %arr.0, %if.then283 ]
  %call286 = call i32 @quotedzputs(i8* %48, %struct._IO_FILE* %47) nounwind
  %49 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call287 = call i32 @fputc(i32 32, %struct._IO_FILE* %49) nounwind
  %incdec.ptr288 = getelementptr inbounds i8** %ptr.2371, i32 1
  %50 = load i8** %incdec.ptr288, align 4, !tbaa !5
  %tobool285 = icmp eq i8* %50, null
  %51 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  br i1 %tobool285, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then283
  %.lcssa = phi %struct._IO_FILE* [ %46, %if.then283 ], [ %51, %for.body ]
  %52 = call i32 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str87, i32 0, i32 0), i32 2, i32 1, %struct._IO_FILE* %.lcssa)
  br label %if.end290

if.end290:                                        ; preds = %for.end, %if.end281
  %call291 = call %struct.param* @assignaparam(i8* %call, i8** %arr.0, i32 %myflags.0) nounwind
  %53 = load i32* @errflag, align 4, !tbaa !3
  %tobool292 = icmp eq i32 %53, 0
  br i1 %tobool292, label %while.cond.backedge, label %if.then293

while.cond.backedge:                              ; preds = %if.end290, %if.end253
  %54 = load i32** %pc1, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32* %54, i32 1
  store i32* %incdec.ptr, i32** %pc1, align 4, !tbaa !5
  %55 = load i32* %54, align 4, !tbaa !3
  %and21 = and i32 %55, 31
  %cmp24 = icmp eq i32 %and21, 5
  br i1 %cmp24, label %while.body, label %while.end296

if.then293:                                       ; preds = %if.end290
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

while.end296:                                     ; preds = %while.cond.backedge, %if.end
  store i32* %0, i32** %pc1, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %while.end296, %if.then293, %if.then255, %if.then173, %if.then106, %if.then97
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @zerrnam(i8*, i8*, ...)

declare i32 @checkrmall(i8*)

declare i32 @havefiles()

declare void @holdintr()

declare i32 @nice(i32) nounwind

declare i32 @dup(i32) nounwind

declare i32 @fileno(%struct._IO_FILE* nocapture) nounwind

define internal fastcc void @addfd(i32 %forked, i32* nocapture %save, %struct.multio** nocapture %mfds, i32 %fd1, i32 %fd2, i32 %rflag, i8* %varid) nounwind {
entry:
  %pipes = alloca [2 x i32], align 4
  %tobool = icmp eq i8* %varid, null
  br i1 %tobool, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @movefd(i32 %fd2) nounwind
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then1, label %cont4

if.then1:                                         ; preds = %if.then
  %call2 = call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call2, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str80, i32 0, i32 0), i32 %fd2, i32 %0) nounwind
  br label %if.end169

cont4:                                            ; preds = %if.then
  %1 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i8* %1, i32 %call
  store i8 2, i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i32 %call to i64
  %call5 = call %struct.param* @setiparam(i8* %varid, i64 %conv) nounwind
  %2 = load i32* @errflag, align 4, !tbaa !3
  %tobool6 = icmp eq i32 %2, 0
  br i1 %tobool6, label %if.end158, label %if.then7

if.then7:                                         ; preds = %cont4
  %call8 = call i32 @zclose(i32 %call) nounwind
  br label %if.end158

if.else10:                                        ; preds = %entry
  %arrayidx11 = getelementptr inbounds %struct.multio** %mfds, i32 %fd1
  %3 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %tobool12 = icmp ne %struct.multio* %3, null
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 111), align 1, !tbaa !1
  %tobool13 = icmp ne i8 %4, 0
  %or.cond = and i1 %tobool12, %tobool13
  br i1 %or.cond, label %if.else58, label %if.then14

if.then14:                                        ; preds = %if.else10
  br i1 %tobool12, label %if.end52, label %if.then17

if.then17:                                        ; preds = %if.then14
  %call18 = call i8* @zhalloc(i32 44) nounwind
  %5 = bitcast i8* %call18 to %struct.multio*
  store %struct.multio* %5, %struct.multio** %arrayidx11, align 4, !tbaa !5
  %tobool20 = icmp eq i32 %forked, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.then17
  %arrayidx21 = getelementptr inbounds i32* %save, i32 %fd1
  %6 = load i32* %arrayidx21, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %6, -2
  br i1 %cmp24, label %if.then26, label %if.end52

if.then26:                                        ; preds = %land.lhs.true
  %cmp27 = icmp eq i32 %fd1, %fd2
  br i1 %cmp27, label %cont31, label %if.else33

cont31:                                           ; preds = %if.then26
  store i32 -1, i32* %arrayidx21, align 4, !tbaa !3
  br label %if.end52

if.else33:                                        ; preds = %if.then26
  %call34 = call i32 @movefd(i32 %fd1) nounwind
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end44

land.lhs.true37:                                  ; preds = %if.else33
  %call38 = call i32* @__errno_location() nounwind readnone
  %7 = load i32* %call38, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %7, 9
  br i1 %cmp39, label %if.end44, label %if.then41

if.then41:                                        ; preds = %land.lhs.true37
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str81, i32 0, i32 0), i32 %fd1, i32 %7) nounwind
  store %struct.multio* null, %struct.multio** %arrayidx11, align 4, !tbaa !5
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end44:                                         ; preds = %land.lhs.true37, %if.else33
  store i32 %call34, i32* %arrayidx21, align 4, !tbaa !3
  br label %if.end52

if.end52:                                         ; preds = %if.then17, %land.lhs.true, %if.end44, %cont31, %if.then14
  %call51 = call i32 @redup(i32 %fd2, i32 %fd1) nounwind
  %8 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %ct = getelementptr inbounds %struct.multio* %8, i32 0, i32 0
  store i32 1, i32* %ct, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds %struct.multio* %8, i32 0, i32 3, i32 0
  store i32 %fd1, i32* %arrayidx55, align 4, !tbaa !3
  %rflag57 = getelementptr inbounds %struct.multio* %8, i32 0, i32 1
  store i32 %rflag, i32* %rflag57, align 4, !tbaa !3
  br label %if.end158

if.else58:                                        ; preds = %if.else10
  %rflag60 = getelementptr inbounds %struct.multio* %3, i32 0, i32 1
  %9 = load i32* %rflag60, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %9, %rflag
  br i1 %cmp61, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.else58
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str82, i32 0, i32 0), i32 %fd1) nounwind
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end64:                                         ; preds = %if.else58
  %ct66 = getelementptr inbounds %struct.multio* %3, i32 0, i32 0
  %10 = load i32* %ct66, align 4, !tbaa !3
  %cmp67 = icmp eq i32 %10, 1
  br i1 %cmp67, label %if.then69, label %cont108

if.then69:                                        ; preds = %if.end64
  %call71 = call i32 @movefd(i32 %fd1) nounwind
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then69
  %call75 = call i32* @__errno_location() nounwind readnone
  %11 = load i32* %call75, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str83, i32 0, i32 0), i32 %fd1, i32 %11) nounwind
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end76:                                         ; preds = %if.then69
  %12 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %arrayidx79 = getelementptr inbounds %struct.multio* %12, i32 0, i32 3, i32 0
  store i32 %call71, i32* %arrayidx79, align 4, !tbaa !3
  %call80 = call i32 @movefd(i32 %fd2) nounwind
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end76
  %call84 = call i32* @__errno_location() nounwind readnone
  %13 = load i32* %call84, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str83, i32 0, i32 0), i32 %fd2, i32 %13) nounwind
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end85:                                         ; preds = %if.end76
  %14 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds %struct.multio* %14, i32 0, i32 3, i32 1
  store i32 %call80, i32* %arrayidx88, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 0
  %call.i = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end85
  %call1.i = call i32* @__errno_location() nounwind readnone
  %15 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %15) nounwind
  %16 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str83, i32 0, i32 0), i32 %fd2, i32 %16) nounwind
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end94:                                         ; preds = %if.end85
  %17 = load i32* %arraydecay, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %17) nounwind
  store i32 %call2.i, i32* %arraydecay, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %18 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %18) nounwind
  store i32 %call5.i, i32* %arrayidx4.i, align 4, !tbaa !3
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 1, i32 %rflag)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb95, label %cont96

ioc_bb95:                                         ; preds = %if.end94
  %22 = sext i32 %rflag to i64
  call void @__ioc_report_sub_overflow(i32 1973, i32 35, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 1, i64 %22, i8 13) nounwind
  br label %cont96

cont96:                                           ; preds = %if.end94, %ioc_bb95
  %arrayidx97 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %20
  %23 = load i32* %arrayidx97, align 4, !tbaa !3
  %24 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %pipe = getelementptr inbounds %struct.multio* %24, i32 0, i32 2
  store i32 %23, i32* %pipe, align 4, !tbaa !3
  %arrayidx99 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %rflag
  %25 = load i32* %arrayidx99, align 4, !tbaa !3
  %call100 = call i32 @redup(i32 %25, i32 %fd1) nounwind
  %26 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %ct102 = getelementptr inbounds %struct.multio* %26, i32 0, i32 0
  store i32 2, i32* %ct102, align 4, !tbaa !3
  br label %if.end158

cont108:                                          ; preds = %if.end64
  %rem244 = and i32 %10, 7
  %tobool109 = icmp eq i32 %rem244, 0
  br i1 %tobool109, label %if.then110, label %if.end142

if.then110:                                       ; preds = %cont108
  %27 = icmp sgt i32 %10, -1
  br i1 %27, label %cont114, label %ioc_bb113

ioc_bb113:                                        ; preds = %if.then110
  %28 = sext i32 %10 to i64
  call void @__ioc_report_conversion(i32 1981, i32 60, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont114

cont114:                                          ; preds = %ioc_bb113, %if.then110
  %29 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb115, label %cont116

ioc_bb115:                                        ; preds = %cont114
  %32 = zext i32 %10 to i64
  call void @__ioc_report_mul_overflow(i32 1981, i32 58, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %32, i8 5) nounwind
  br label %cont116

cont116:                                          ; preds = %cont114, %ioc_bb115
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %30, i32 44)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb117, label %cont118

ioc_bb117:                                        ; preds = %cont116
  %36 = zext i32 %30 to i64
  call void @__ioc_report_add_overflow(i32 1981, i32 43, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 44, i64 %36, i8 5) nounwind
  br label %cont118

cont118:                                          ; preds = %cont116, %ioc_bb117
  %37 = zext i32 %34 to i64
  %38 = icmp sgt i32 %34, -1
  br i1 %38, label %cont120.thread, label %ioc_bb122

cont120.thread:                                   ; preds = %cont118
  %39 = sext i32 %34 to i64
  br label %cont127

ioc_bb122:                                        ; preds = %cont118
  call void @__ioc_report_conversion(i32 1981, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %37, i8 0) nounwind
  %40 = sext i32 %34 to i64
  call void @__ioc_report_conversion(i32 1982, i32 20, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %40, i8 1) nounwind
  br label %cont127

cont127:                                          ; preds = %cont120.thread, %ioc_bb122
  %41 = phi i64 [ %39, %cont120.thread ], [ %40, %ioc_bb122 ]
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 32)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb128, label %cont129

ioc_bb128:                                        ; preds = %cont127
  call void @__ioc_report_sub_overflow(i32 1982, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %37, i64 32, i8 5) nounwind
  br label %cont129

cont129:                                          ; preds = %cont127, %ioc_bb128
  %45 = icmp sgt i32 %43, -1
  br i1 %45, label %cont132.thread, label %ioc_bb135

cont132.thread:                                   ; preds = %cont129
  %46 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  br label %cont136

ioc_bb135:                                        ; preds = %cont129
  %47 = zext i32 %43 to i64
  call void @__ioc_report_conversion(i32 1982, i32 19, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %47, i8 0) nounwind
  %48 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %49 = sext i32 %43 to i64
  call void @__ioc_report_conversion(i32 1983, i32 51, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %49, i8 1) nounwind
  br label %cont136

cont136:                                          ; preds = %cont132.thread, %ioc_bb135
  %.in = phi %struct.multio* [ %46, %cont132.thread ], [ %48, %ioc_bb135 ]
  %50 = bitcast %struct.multio* %.in to i8*
  br i1 %38, label %cont139, label %ioc_bb138

ioc_bb138:                                        ; preds = %cont136
  call void @__ioc_report_conversion(i32 1983, i32 55, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %41, i8 1) nounwind
  br label %cont139

cont139:                                          ; preds = %ioc_bb138, %cont136
  %call140 = call i8* @hrealloc(i8* %50, i32 %43, i32 %34) nounwind
  %51 = bitcast i8* %call140 to %struct.multio*
  store %struct.multio* %51, %struct.multio** %arrayidx11, align 4, !tbaa !5
  br label %if.end142

if.end142:                                        ; preds = %cont108, %cont139
  %call143 = call i32 @movefd(i32 %fd2) nounwind
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end142
  %call147 = call i32* @__errno_location() nounwind readnone
  %52 = load i32* %call147, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str83, i32 0, i32 0), i32 %fd2, i32 %52) nounwind
  call fastcc void @closemnodes(%struct.multio** %mfds)
  br label %if.end169

if.end148:                                        ; preds = %if.end142
  %53 = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  %ct150 = getelementptr inbounds %struct.multio* %53, i32 0, i32 0
  %54 = load i32* %ct150, align 4, !tbaa !3
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %54, i32 1)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb151, label %cont152

ioc_bb151:                                        ; preds = %if.end148
  %58 = sext i32 %54 to i64
  call void @__ioc_report_add_overflow(i32 1990, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  %.pre = load %struct.multio** %arrayidx11, align 4, !tbaa !5
  br label %cont152

cont152:                                          ; preds = %if.end148, %ioc_bb151
  %59 = phi %struct.multio* [ %53, %if.end148 ], [ %.pre, %ioc_bb151 ]
  store i32 %56, i32* %ct150, align 4, !tbaa !3
  %arrayidx155 = getelementptr inbounds %struct.multio* %59, i32 0, i32 3, i32 %54
  store i32 %call143, i32* %arrayidx155, align 4, !tbaa !3
  br label %if.end158

if.end158:                                        ; preds = %cont4, %if.end52, %cont152, %cont96, %if.then7
  %60 = load i32* @subsh_close, align 4, !tbaa !3
  %cmp159 = icmp sgt i32 %60, -1
  br i1 %cmp159, label %land.lhs.true161, label %if.end169

land.lhs.true161:                                 ; preds = %if.end158
  %61 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx162 = getelementptr inbounds i8* %61, i32 %60
  %62 = load i8* %arrayidx162, align 1, !tbaa !1
  %cmp164 = icmp eq i8 %62, 0
  br i1 %cmp164, label %cont168, label %if.end169

cont168:                                          ; preds = %land.lhs.true161
  store i32 -1, i32* @subsh_close, align 4, !tbaa !3
  br label %if.end169

if.end169:                                        ; preds = %if.then1, %if.then41, %if.then63, %if.then74, %if.then83, %if.then92, %if.then146, %cont168, %land.lhs.true161, %if.end158
  ret void
}

declare i8* @ugetnode(%union.linkroot*)

define internal fastcc i32 @checkclobberparam(%struct.redir* nocapture %f) nounwind {
entry:
  %vbuf = alloca %struct.value, align 4
  %s = alloca i8*, align 4
  %varid = getelementptr inbounds %struct.redir* %f, i32 0, i32 5
  %0 = load i8** %varid, align 4, !tbaa !5
  store i8* %0, i8** %s, align 4, !tbaa !5
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.value* @getvalue(%struct.value* %vbuf, i8** %s, i32 0) nounwind
  %tobool1 = icmp eq %struct.value* %call, null
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %pm = getelementptr inbounds %struct.value* %call, i32 0, i32 1
  %1 = load %struct.param** %pm, align 4, !tbaa !5
  %flags = getelementptr inbounds %struct.param* %1, i32 0, i32 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %2, 1024
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end3
  %3 = load i8** %varid, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([56 x i8]* @.str77, i32 0, i32 0), i8* %3) nounwind
  %call9 = call i32* @__errno_location() nounwind readnone
  store i32 0, i32* %call9, align 4, !tbaa !3
  br label %return

if.end10:                                         ; preds = %if.end3
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 32), align 1, !tbaa !1
  %tobool11 = icmp eq i8 %4, 0
  br i1 %tobool11, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end10
  %call12 = call i64 @getintvalue(%struct.value* %call) nounwind
  %call12.off = add i64 %call12, 2147483648
  %5 = icmp ult i64 %call12.off, 4294967296
  br i1 %5, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %land.lhs.true
  call void @__ioc_report_conversion(i32 1742, i32 33, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %call12, i8 1) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %land.lhs.true
  %conv = trunc i64 %call12 to i32
  %tobool15 = icmp eq i32 %conv, 0
  %6 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp = icmp sgt i32 %conv, %6
  %or.cond = or i1 %tobool15, %cmp
  br i1 %or.cond, label %return, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %cont14
  %7 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i8* %7, i32 %conv
  %8 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %8, 2
  br i1 %cmp20, label %if.then22, label %return

if.then22:                                        ; preds = %land.lhs.true18
  %9 = load i8** %varid, align 4, !tbaa !5
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([57 x i8]* @.str78, i32 0, i32 0), i8* %9, i32 %conv) nounwind
  %call24 = call i32* @__errno_location() nounwind readnone
  store i32 0, i32* %call24, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %land.lhs.true18, %if.end10, %cont14, %if.end, %entry, %if.then22, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then22 ], [ 1, %entry ], [ 1, %if.end ], [ 1, %cont14 ], [ 1, %if.end10 ], [ 1, %land.lhs.true18 ]
  ret i32 %retval.0
}

define internal fastcc void @closemnodes(%struct.multio** nocapture %mfds) nounwind {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.cond.backedge
  %i.025 = phi i32 [ 0, %entry ], [ %11, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.multio** %mfds, i32 %i.025
  %0 = load %struct.multio** %arrayidx, align 4, !tbaa !5
  %tobool = icmp eq %struct.multio* %0, null
  br i1 %tobool, label %for.inc8, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body
  %ct22 = getelementptr inbounds %struct.multio* %0, i32 0, i32 0
  %1 = load i32* %ct22, align 4, !tbaa !3
  %cmp323 = icmp sgt i32 %1, 0
  br i1 %cmp323, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1.preheader, %for.cond1.backedge
  %2 = phi %struct.multio* [ %7, %for.cond1.backedge ], [ %0, %for.cond1.preheader ]
  %j.024 = phi i32 [ %5, %for.cond1.backedge ], [ 0, %for.cond1.preheader ]
  %arrayidx6 = getelementptr inbounds %struct.multio* %2, i32 0, i32 3, i32 %j.024
  %3 = load i32* %arrayidx6, align 4, !tbaa !3
  %call = tail call i32 @zclose(i32 %3) nounwind
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j.024, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb, label %for.cond1.backedge

for.cond1.backedge:                               ; preds = %for.body4, %ioc_bb
  %7 = load %struct.multio** %arrayidx, align 4, !tbaa !5
  %ct = getelementptr inbounds %struct.multio* %7, i32 0, i32 0
  %8 = load i32* %ct, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %5, %8
  br i1 %cmp3, label %for.body4, label %for.end

ioc_bb:                                           ; preds = %for.body4
  %9 = sext i32 %j.024 to i64
  tail call void @__ioc_report_add_overflow(i32 1854, i32 39, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %for.cond1.backedge

for.end:                                          ; preds = %for.cond1.backedge, %for.cond1.preheader
  store %struct.multio* null, %struct.multio** %arrayidx, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body, %for.end
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.025, i32 1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb9, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc8, %ioc_bb9
  %cmp = icmp slt i32 %11, 10
  br i1 %cmp, label %for.body, label %for.end11

ioc_bb9:                                          ; preds = %for.inc8
  %13 = sext i32 %i.025 to i64
  tail call void @__ioc_report_add_overflow(i32 1852, i32 24, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end11:                                        ; preds = %for.cond.backedge
  ret void
}

declare i32 @xpandredir(%struct.redir*, %union.linkroot*)

declare void @init_io()

declare %struct.value* @getvalue(%struct.value*, i8**, i32)

declare i64 @getintvalue(%struct.value*)

define internal fastcc void @closemn(%struct.multio** nocapture %mfds, i32 %fd) nounwind {
entry:
  %buf = alloca [4092 x i8], align 1
  %bgtime = alloca %struct.timeval, align 4
  %tmp = alloca %struct.__sigset_t, align 4
  %tmp17 = alloca %struct.__sigset_t, align 4
  %tmp21 = alloca %struct.__sigset_t, align 4
  %tmp23 = alloca %struct.__sigset_t, align 4
  %cmp = icmp sgt i32 %fd, -1
  br i1 %cmp, label %land.lhs.true, label %if.end89

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.multio** %mfds, i32 %fd
  %0 = load %struct.multio** %arrayidx, align 4, !tbaa !5
  %tobool = icmp eq %struct.multio* %0, null
  br i1 %tobool, label %if.then86, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %land.lhs.true
  %ct = getelementptr inbounds %struct.multio* %0, i32 0, i32 0
  %1 = load i32* %ct, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, 1
  br i1 %cmp3, label %if.then, label %if.then86

if.then:                                          ; preds = %land.lhs.true1
  call void @signal_block(%struct.__sigset_t* sret %tmp, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %call = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  %tobool5 = icmp eq i32 %call, 0
  br i1 %tobool5, label %if.end22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %2 = load i32* %ct, align 4, !tbaa !3
  %cmp8136 = icmp sgt i32 %2, 0
  br i1 %cmp8136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %i.0137 = phi i32 [ %5, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx9 = getelementptr inbounds %struct.multio* %0, i32 0, i32 3, i32 %i.0137
  %3 = load i32* %arrayidx9, align 4, !tbaa !3
  %call10 = call i32 @zclose(i32 %3) nounwind
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0137, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb
  %7 = load i32* %ct, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %5, %7
  br i1 %cmp8, label %for.body, label %for.end

ioc_bb:                                           ; preds = %for.body
  %8 = sext i32 %i.0137 to i64
  call void @__ioc_report_add_overflow(i32 1797, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %pipe = getelementptr inbounds %struct.multio* %0, i32 0, i32 2
  %9 = load i32* %pipe, align 4, !tbaa !3
  %call11 = call i32 @zclose(i32 %9) nounwind
  %cmp14 = icmp eq i32 %call, -1
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.end
  store %struct.multio* null, %struct.multio** %arrayidx, align 4, !tbaa !5
  call void @signal_unblock(%struct.__sigset_t* sret %tmp17, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %if.end89

if.end:                                           ; preds = %for.end
  store i32 1, i32* %ct, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds %struct.multio* %0, i32 0, i32 3, i32 0
  store i32 %fd, i32* %arrayidx20, align 4, !tbaa !3
  call void @addproc(i32 %call, i8* null, i32 1, %struct.timeval* %bgtime) nounwind
  call void @signal_unblock(%struct.__sigset_t* sret %tmp21, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  br label %if.end89

if.end22:                                         ; preds = %if.then
  call void @signal_unblock(%struct.__sigset_t* sret %tmp23, %struct.__sigset_t* byval align 4 @sigchld_mask) nounwind
  %10 = load i32* @fdtable_size, align 4, !tbaa !3
  %cmp29.i = icmp sgt i32 %10, 0
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %closeallelse.exit

for.body.lr.ph.i:                                 ; preds = %if.end22
  %pipe.i = getelementptr inbounds %struct.multio* %0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %22, %for.cond.backedge.i ]
  %11 = load i32* %pipe.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %11, %i.030.i
  br i1 %cmp1.i, label %for.inc12.i, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  %12 = load i32* %ct, align 4, !tbaa !3
  %cmp326.i = icmp sgt i32 %12, 0
  br i1 %cmp326.i, label %for.body4.i, label %for.end.i

for.body4.i:                                      ; preds = %for.cond2.preheader.i, %for.cond2.backedge.i
  %13 = phi i32 [ %18, %for.cond2.backedge.i ], [ %12, %for.cond2.preheader.i ]
  %j.027.i = phi i32 [ %16, %for.cond2.backedge.i ], [ 0, %for.cond2.preheader.i ]
  %arrayidx.i = getelementptr inbounds %struct.multio* %0, i32 0, i32 3, i32 %j.027.i
  %14 = load i32* %arrayidx.i, align 4, !tbaa !3
  %cmp5.i = icmp eq i32 %14, %i.030.i
  br i1 %cmp5.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body4.i
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j.027.i, i32 1) nounwind
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb.i, label %for.cond2.backedge.i

for.cond2.backedge.i:                             ; preds = %ioc_bb.i, %for.inc.i
  %18 = phi i32 [ %13, %for.inc.i ], [ %.pre.i, %ioc_bb.i ]
  %cmp3.i = icmp slt i32 %16, %18
  br i1 %cmp3.i, label %for.body4.i, label %for.end.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %19 = sext i32 %j.027.i to i64
  call void @__ioc_report_add_overflow(i32 1869, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  %.pre.i = load i32* %ct, align 4, !tbaa !3
  br label %for.cond2.backedge.i

for.end.i:                                        ; preds = %for.cond2.backedge.i, %for.body4.i, %for.cond2.preheader.i
  %20 = phi i32 [ %12, %for.cond2.preheader.i ], [ %18, %for.cond2.backedge.i ], [ %13, %for.body4.i ]
  %j.0.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i ], [ %16, %for.cond2.backedge.i ], [ %j.027.i, %for.body4.i ]
  %cmp8.i = icmp eq i32 %j.0.lcssa.i, %20
  br i1 %cmp8.i, label %if.then9.i, label %for.inc12.i

if.then9.i:                                       ; preds = %for.end.i
  %call.i = call i32 @zclose(i32 %i.030.i) nounwind
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then9.i, %for.end.i, %for.body.i
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.030.i, i32 1) nounwind
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb13.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb13.i, %for.inc12.i
  %cmp.i = icmp slt i32 %22, %10
  br i1 %cmp.i, label %for.body.i, label %closeallelse.exit

ioc_bb13.i:                                       ; preds = %for.inc12.i
  %24 = sext i32 %i.030.i to i64
  call void @__ioc_report_add_overflow(i32 1867, i32 29, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

closeallelse.exit:                                ; preds = %for.cond.backedge.i, %if.end22
  %rflag = getelementptr inbounds %struct.multio* %0, i32 0, i32 1
  %25 = load i32* %rflag, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %25, 0
  br i1 %tobool24, label %for.cond52.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %closeallelse.exit
  %arraydecay = getelementptr inbounds [4092 x i8]* %buf, i32 0, i32 0
  %pipe26 = getelementptr inbounds %struct.multio* %0, i32 0, i32 2
  %26 = load i32* %pipe26, align 4, !tbaa !3
  %call29133 = call i32 @read(i32 %26, i8* %arraydecay, i32 4092) nounwind
  %cmp30134 = icmp eq i32 %call29133, 0
  br i1 %cmp30134, label %if.end83, label %while.body

for.cond52.preheader:                             ; preds = %closeallelse.exit
  %27 = load i32* %ct, align 4, !tbaa !3
  %cmp54128 = icmp sgt i32 %27, 0
  br i1 %cmp54128, label %while.cond56.preheader.lr.ph, label %if.end83

while.cond56.preheader.lr.ph:                     ; preds = %for.cond52.preheader
  %arraydecay59 = getelementptr inbounds [4092 x i8]* %buf, i32 0, i32 0
  %pipe72 = getelementptr inbounds %struct.multio* %0, i32 0, i32 2
  br label %while.cond56.preheader

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %call29135 = phi i32 [ %call29, %while.cond.backedge ], [ %call29133, %while.cond.preheader ]
  %cmp31 = icmp slt i32 %call29135, 0
  br i1 %cmp31, label %if.then32, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %while.body
  %28 = load i32* %ct, align 4, !tbaa !3
  %cmp39130 = icmp sgt i32 %28, 0
  br i1 %cmp39130, label %cont45, label %while.cond.backedge

if.then32:                                        ; preds = %while.body
  %call33 = call i32* @__errno_location() nounwind readnone
  %29 = load i32* %call33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %29, 4
  br i1 %cmp34, label %while.cond.backedge, label %if.end83

while.cond.backedge:                              ; preds = %for.cond37.preheader, %for.cond37.backedge, %if.then32
  %30 = load i32* %pipe26, align 4, !tbaa !3
  %call29 = call i32 @read(i32 %30, i8* %arraydecay, i32 4092) nounwind
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.end83, label %while.body

cont45:                                           ; preds = %for.cond37.backedge, %for.cond37.preheader
  %i.1131 = phi i32 [ %33, %for.cond37.backedge ], [ 0, %for.cond37.preheader ]
  %arrayidx42 = getelementptr inbounds %struct.multio* %0, i32 0, i32 3, i32 %i.1131
  %31 = load i32* %arrayidx42, align 4, !tbaa !3
  %call46 = call i32 @write_loop(i32 %31, i8* %arraydecay, i32 %call29135) nounwind
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1131, i32 1)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb48, label %for.cond37.backedge

for.cond37.backedge:                              ; preds = %cont45, %ioc_bb48
  %35 = load i32* %ct, align 4, !tbaa !3
  %cmp39 = icmp slt i32 %33, %35
  br i1 %cmp39, label %cont45, label %while.cond.backedge

ioc_bb48:                                         ; preds = %cont45
  %36 = sext i32 %i.1131 to i64
  call void @__ioc_report_add_overflow(i32 1823, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %36, i64 1, i8 13) nounwind
  br label %for.cond37.backedge

while.cond56.preheader:                           ; preds = %while.cond56.preheader.lr.ph, %for.cond52.backedge
  %i.2129 = phi i32 [ 0, %while.cond56.preheader.lr.ph ], [ %42, %for.cond52.backedge ]
  %arrayidx58 = getelementptr inbounds %struct.multio* %0, i32 0, i32 3, i32 %i.2129
  %37 = load i32* %arrayidx58, align 4, !tbaa !3
  %call62125 = call i32 @read(i32 %37, i8* %arraydecay59, i32 4092) nounwind
  %cmp63126 = icmp eq i32 %call62125, 0
  br i1 %cmp63126, label %for.inc79, label %while.body64

while.body64:                                     ; preds = %while.cond56.preheader, %while.cond56.backedge
  %call62127 = phi i32 [ %call62, %while.cond56.backedge ], [ %call62125, %while.cond56.preheader ]
  %cmp65 = icmp slt i32 %call62127, 0
  br i1 %cmp65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %while.body64
  %call67 = call i32* @__errno_location() nounwind readnone
  %38 = load i32* %call67, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %38, 4
  br i1 %cmp68, label %while.cond56.backedge, label %for.inc79

if.end71:                                         ; preds = %while.body64
  %39 = load i32* %pipe72, align 4, !tbaa !3
  %call77 = call i32 @write_loop(i32 %39, i8* %arraydecay59, i32 %call62127) nounwind
  br label %while.cond56.backedge

while.cond56.backedge:                            ; preds = %if.end71, %if.then66
  %40 = load i32* %arrayidx58, align 4, !tbaa !3
  %call62 = call i32 @read(i32 %40, i8* %arraydecay59, i32 4092) nounwind
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %for.inc79, label %while.body64

for.inc79:                                        ; preds = %while.cond56.backedge, %if.then66, %while.cond56.preheader
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2129, i32 1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb80, label %for.cond52.backedge

for.cond52.backedge:                              ; preds = %for.inc79, %ioc_bb80
  %44 = load i32* %ct, align 4, !tbaa !3
  %cmp54 = icmp slt i32 %42, %44
  br i1 %cmp54, label %while.cond56.preheader, label %if.end83

ioc_bb80:                                         ; preds = %for.inc79
  %45 = sext i32 %i.2129 to i64
  call void @__ioc_report_add_overflow(i32 1829, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %45, i64 1, i8 13) nounwind
  br label %for.cond52.backedge

if.end83:                                         ; preds = %while.cond.preheader, %if.then32, %while.cond.backedge, %for.cond52.preheader, %for.cond52.backedge
  call void @_exit(i32 0) noreturn nounwind
  unreachable

if.then86:                                        ; preds = %land.lhs.true, %land.lhs.true1
  store %struct.multio* null, %struct.multio** %arrayidx, align 4, !tbaa !5
  br label %if.end89

if.end89:                                         ; preds = %entry, %if.then86, %if.then15, %if.end
  ret void
}

define internal fastcc void @restore_params(%union.linkroot* %restorelist, %union.linkroot* %removelist) nounwind {
entry:
  %call138 = tail call i8* @ugetnode(%union.linkroot* %removelist) nounwind
  %tobool139 = icmp eq i8* %call138, null
  br i1 %tobool139, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %call140 = phi i8* [ %call, %while.cond.backedge ], [ %call138, %entry ]
  %0 = load %struct.hashtable** @paramtab, align 4, !tbaa !5
  %getnode = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !5
  %call1 = tail call %struct.hashnode* %1(%struct.hashtable* %0, i8* %call140) nounwind
  %2 = bitcast %struct.hashnode* %call1 to %struct.param*
  %tobool2 = icmp eq %struct.hashnode* %call1, null
  br i1 %tobool2, label %while.cond.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %flags = getelementptr inbounds %struct.hashnode* %call1, i32 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %3, 4194304
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %cont9, label %while.cond.backedge

cont9:                                            ; preds = %land.lhs.true
  %and12 = and i32 %3, -1025
  store i32 %and12, i32* %flags, align 4, !tbaa !3
  %call13 = tail call i32 @unsetparam_pm(%struct.param* %2, i32 0, i32 0) nounwind
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont9, %while.body, %land.lhs.true
  %call = tail call i8* @ugetnode(%union.linkroot* %removelist) nounwind
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %entry
  %tobool14 = icmp eq %union.linkroot* %restorelist, null
  br i1 %tobool14, label %if.end102, label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %while.end
  %call17135 = tail call i8* @ugetnode(%union.linkroot* %restorelist) nounwind
  %tobool18136 = icmp eq i8* %call17135, null
  br i1 %tobool18136, label %if.end102, label %while.body19

while.body19:                                     ; preds = %while.cond16.preheader, %while.cond16.backedge
  %.in = phi i8* [ %call17, %while.cond16.backedge ], [ %call17135, %while.cond16.preheader ]
  %flags21 = getelementptr inbounds i8* %.in, i32 8
  %4 = bitcast i8* %flags21 to i32*
  %5 = load i32* %4, align 4, !tbaa !3
  %and26 = and i32 %5, 4194304
  %tobool27 = icmp eq i32 %and26, 0
  %6 = load %struct.hashtable** @paramtab, align 4, !tbaa !5
  br i1 %tobool27, label %if.else, label %if.then28

if.then28:                                        ; preds = %while.body19
  %getnode29 = getelementptr inbounds %struct.hashtable* %6, i32 0, i32 9
  %7 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode29, align 4, !tbaa !5
  %nam = getelementptr inbounds i8* %.in, i32 4
  %8 = bitcast i8* %nam to i8**
  %9 = load i8** %8, align 4, !tbaa !5
  %call31 = tail call %struct.hashnode* %7(%struct.hashtable* %6, i8* %9) nounwind
  %10 = bitcast %struct.hashnode* %call31 to %struct.param*
  %env = getelementptr inbounds i8* %.in, i32 32
  %11 = bitcast i8* %env to i8**
  %12 = load i8** %11, align 4, !tbaa !5
  %tobool32 = icmp eq i8* %12, null
  br i1 %tobool32, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %if.then28
  %env34 = getelementptr inbounds %struct.hashnode* %call31, i32 2, i32 2
  %13 = bitcast i32* %env34 to i8**
  %14 = load i8** %13, align 4, !tbaa !5
  %tobool35 = icmp eq i8* %14, null
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true33
  tail call void @delenv(%struct.param* %10) nounwind
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true33, %if.then28, %if.then36
  %15 = load i32* %4, align 4, !tbaa !3
  %flags41 = getelementptr inbounds %struct.hashnode* %call31, i32 0, i32 2
  store i32 %15, i32* %flags41, align 4, !tbaa !3
  %16 = load i32* %4, align 4, !tbaa !3
  %and64 = and i32 %16, 31
  switch i32 %and64, label %if.end85 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb66
    i32 4, label %sw.bb71
    i32 8, label %sw.bb71
    i32 1, label %sw.bb75
    i32 16, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end37
  %gsu = getelementptr inbounds %struct.hashnode* %call31, i32 1, i32 2
  %s65 = bitcast i32* %gsu to %struct.gsu_scalar**
  %17 = load %struct.gsu_scalar** %s65, align 4, !tbaa !5
  %setfn = getelementptr inbounds %struct.gsu_scalar* %17, i32 0, i32 1
  %18 = load void (%struct.param*, i8*)** %setfn, align 4, !tbaa !5
  %u = getelementptr inbounds i8* %.in, i32 12
  %str = bitcast i8* %u to i8**
  %19 = load i8** %str, align 4, !tbaa !5
  tail call void %18(%struct.param* %10, i8* %19) nounwind
  br label %if.end85

sw.bb66:                                          ; preds = %if.end37
  %gsu67 = getelementptr inbounds %struct.hashnode* %call31, i32 1, i32 2
  %i = bitcast i32* %gsu67 to %struct.gsu_integer**
  %20 = load %struct.gsu_integer** %i, align 4, !tbaa !5
  %setfn68 = getelementptr inbounds %struct.gsu_integer* %20, i32 0, i32 1
  %21 = load void (%struct.param*, i64)** %setfn68, align 4, !tbaa !5
  %u69 = getelementptr inbounds i8* %.in, i32 12
  %val = bitcast i8* %u69 to i64*
  %22 = load i64* %val, align 4, !tbaa !0
  tail call void %21(%struct.param* %10, i64 %22) nounwind
  br label %if.end85

sw.bb71:                                          ; preds = %if.end37, %if.end37
  %gsu72 = getelementptr inbounds %struct.hashnode* %call31, i32 1, i32 2
  %f = bitcast i32* %gsu72 to %struct.gsu_float**
  %23 = load %struct.gsu_float** %f, align 4, !tbaa !5
  %setfn73 = getelementptr inbounds %struct.gsu_float* %23, i32 0, i32 1
  %24 = load void (%struct.param*, double)** %setfn73, align 4, !tbaa !5
  %u74 = getelementptr inbounds i8* %.in, i32 12
  %dval = bitcast i8* %u74 to double*
  %25 = load double* %dval, align 4, !tbaa !8
  tail call void %24(%struct.param* %10, double %25) nounwind
  br label %if.end85

sw.bb75:                                          ; preds = %if.end37
  %gsu76 = getelementptr inbounds %struct.hashnode* %call31, i32 1, i32 2
  %a = bitcast i32* %gsu76 to %struct.gsu_array**
  %26 = load %struct.gsu_array** %a, align 4, !tbaa !5
  %setfn77 = getelementptr inbounds %struct.gsu_array* %26, i32 0, i32 1
  %27 = load void (%struct.param*, i8**)** %setfn77, align 4, !tbaa !5
  %u78 = getelementptr inbounds i8* %.in, i32 12
  %arr = bitcast i8* %u78 to i8***
  %28 = load i8*** %arr, align 4, !tbaa !5
  tail call void %27(%struct.param* %10, i8** %28) nounwind
  br label %if.end85

sw.bb79:                                          ; preds = %if.end37
  %gsu80 = getelementptr inbounds %struct.hashnode* %call31, i32 1, i32 2
  %h = bitcast i32* %gsu80 to %struct.gsu_hash**
  %29 = load %struct.gsu_hash** %h, align 4, !tbaa !5
  %setfn81 = getelementptr inbounds %struct.gsu_hash* %29, i32 0, i32 1
  %30 = load void (%struct.param*, %struct.hashtable*)** %setfn81, align 4, !tbaa !5
  %u82 = getelementptr inbounds i8* %.in, i32 12
  %hash = bitcast i8* %u82 to %struct.hashtable**
  %31 = load %struct.hashtable** %hash, align 4, !tbaa !5
  tail call void %30(%struct.param* %10, %struct.hashtable* %31) nounwind
  br label %if.end85

if.else:                                          ; preds = %while.body19
  %32 = bitcast i8* %.in to %struct.param*
  %addnode = getelementptr inbounds %struct.hashtable* %6, i32 0, i32 8
  %33 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !5
  %nam84 = getelementptr inbounds i8* %.in, i32 4
  %34 = bitcast i8* %nam84 to i8**
  %35 = load i8** %34, align 4, !tbaa !5
  tail call void %33(%struct.hashtable* %6, i8* %35, i8* %.in) nounwind
  br label %if.end85

if.end85:                                         ; preds = %sw.bb, %sw.bb66, %sw.bb71, %sw.bb75, %sw.bb79, %if.end37, %if.else
  %pm.0 = phi %struct.param* [ %32, %if.else ], [ %10, %if.end37 ], [ %10, %sw.bb79 ], [ %10, %sw.bb75 ], [ %10, %sw.bb71 ], [ %10, %sw.bb66 ], [ %10, %sw.bb ]
  %flags87 = getelementptr inbounds %struct.param* %pm.0, i32 0, i32 0, i32 2
  %36 = load i32* %flags87, align 4, !tbaa !3
  %and92 = and i32 %36, 4096
  %tobool93 = icmp eq i32 %and92, 0
  br i1 %tobool93, label %while.cond16.backedge, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.end85
  %nam96 = getelementptr inbounds %struct.param* %pm.0, i32 0, i32 0, i32 1
  %37 = load i8** %nam96, align 4, !tbaa !5
  %call97 = tail call i8* @getsparam(i8* %37) nounwind
  %tobool98 = icmp eq i8* %call97, null
  br i1 %tobool98, label %while.cond16.backedge, label %if.then99

if.then99:                                        ; preds = %land.lhs.true94
  tail call void @addenv(%struct.param* %pm.0, i8* %call97) nounwind
  br label %while.cond16.backedge

while.cond16.backedge:                            ; preds = %if.then99, %if.end85, %land.lhs.true94
  %call17 = tail call i8* @ugetnode(%union.linkroot* %restorelist) nounwind
  %tobool18 = icmp eq i8* %call17, null
  br i1 %tobool18, label %if.end102, label %while.body19

if.end102:                                        ; preds = %while.cond16.preheader, %while.cond16.backedge, %while.end
  ret void
}

declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) nounwind readnone

define internal fastcc void @execshfunc(%struct.shfunc* nocapture %shf, %union.linkroot* %args) nounwind {
entry:
  %0 = load i32* @errflag, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.end31

if.end:                                           ; preds = %entry
  %1 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32* @thisjob, align 4, !tbaa !3
  %3 = load i32* @list_pipe_job, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.end7, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = tail call i32 @hasprocs(i32 %2) nounwind
  %tobool3 = icmp eq i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true2
  %4 = load i32* @thisjob, align 4, !tbaa !3
  %5 = load %struct.job** @jobtab, align 4, !tbaa !5
  %filelist = getelementptr inbounds %struct.job* %5, i32 %4, i32 6
  %6 = load %union.linkroot** %filelist, align 4, !tbaa !5
  store %union.linkroot* null, %union.linkroot** %filelist, align 4, !tbaa !5
  %7 = load %struct.job** @jobtab, align 4, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.job* %7, i32 %4
  tail call void @deletejob(%struct.job* %add.ptr, i32 0) nounwind
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end, %if.then4
  %last_file_list.0 = phi %union.linkroot* [ null, %if.end ], [ null, %land.lhs.true2 ], [ %6, %if.then4 ], [ null, %land.lhs.true ]
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool8 = icmp eq i8 %8, 0
  br i1 %tobool8, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end7
  tail call void @printprompt4() nounwind
  %tobool10 = icmp eq %union.linkroot* %args, null
  br i1 %tobool10, label %if.end20, label %if.then11

if.then11:                                        ; preds = %if.then9
  %first = getelementptr inbounds %union.linkroot* %args, i32 0, i32 0, i32 0
  %lptr.038 = load %struct.linknode** %first, align 4
  %tobool1239 = icmp eq %struct.linknode* %lptr.038, null
  br i1 %tobool1239, label %if.end20, label %for.body

for.body:                                         ; preds = %if.then11, %if.end18.for.body_crit_edge
  %9 = phi %struct.linknode* [ %.pre, %if.end18.for.body_crit_edge ], [ %lptr.038, %if.then11 ]
  %lptr.040 = phi %struct.linknode* [ %lptr.0, %if.end18.for.body_crit_edge ], [ %lptr.038, %if.then11 ]
  %cmp15 = icmp eq %struct.linknode* %lptr.040, %9
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %for.body
  %10 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call17 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %10) nounwind
  br label %if.end18

if.end18:                                         ; preds = %for.body, %if.then16
  %dat = getelementptr inbounds %struct.linknode* %lptr.040, i32 0, i32 2
  %11 = load i8** %dat, align 4, !tbaa !5
  %12 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call19 = tail call i32 @quotedzputs(i8* %11, %struct._IO_FILE* %12) nounwind
  %next = getelementptr inbounds %struct.linknode* %lptr.040, i32 0, i32 0
  %lptr.0 = load %struct.linknode** %next, align 4
  %tobool12 = icmp eq %struct.linknode* %lptr.0, null
  br i1 %tobool12, label %if.end20, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  %.pre = load %struct.linknode** %first, align 4, !tbaa !5
  br label %for.body

if.end20:                                         ; preds = %if.then11, %if.end18, %if.then9
  %13 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call21 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %13) nounwind
  %14 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %14) nounwind
  br label %if.end23

if.end23:                                         ; preds = %if.end7, %if.end20
  %15 = load i8** @cmdstack, align 4, !tbaa !5
  %16 = load i32* @cmdsp, align 4, !tbaa !3
  %call24 = tail call i8* @zalloc(i32 256) nounwind
  store i8* %call24, i8** @cmdstack, align 4, !tbaa !5
  store i32 0, i32* @cmdsp, align 4, !tbaa !3
  %17 = load i32* @sfcontext, align 4, !tbaa !3
  %cmp25 = icmp eq i32 %17, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i32 1, i32* @sfcontext, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %18 = load %struct._IO_FILE** @stderr, align 4, !tbaa !5
  store %struct._IO_FILE* %18, %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call28 = tail call i32 @doshfunc(%struct.shfunc* %shf, %union.linkroot* %args, i32 0)
  store i32 %17, i32* @sfcontext, align 4, !tbaa !3
  %19 = load i8** @cmdstack, align 4, !tbaa !5
  tail call void @free(i8* %19) nounwind
  store i8* %15, i8** @cmdstack, align 4, !tbaa !5
  store i32 %16, i32* @cmdsp, align 4, !tbaa !3
  %20 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool29 = icmp eq i32 %20, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  tail call void @deletefilelist(%union.linkroot* %last_file_list.0, i32 0) nounwind
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %entry, %if.then30
  ret void
}

declare { i8, i1 } @llvm.usub.with.overflow.i8(i8, i8) nounwind readnone

declare i32 @execbuiltin(%union.linkroot*, %struct.builtin*)

declare i32 @ferror(%struct._IO_FILE* nocapture) nounwind readonly

declare void @savehistfile(i8*, i32, i32)

declare %struct.param* @setiparam(i8*, i64)

declare i32 @getpgrp() nounwind

declare i8* @tricat(i8*, i8*, i8*)

declare i8* @zgetenv(i8*)

declare i32 @unsetenv(i8* nocapture) nounwind

define internal fastcc i32 @zexecve(i8* %pth, i8** %argv, i8** %newenvp) nounwind {
entry:
  %execvebuf = alloca [65 x i8], align 1
  %call = call i8* @unmetafy(i8* %pth, i32* null) nounwind
  %0 = load i8** %argv, align 4, !tbaa !5
  %tobool287 = icmp eq i8* %0, null
  br i1 %tobool287, label %cont, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %2, %for.inc ], [ %0, %entry ]
  %eep.0288 = phi i8** [ %incdec.ptr, %for.inc ], [ %argv, %entry ]
  %cmp = icmp eq i8* %1, %pth
  br i1 %cmp, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call1 = call i8* @unmetafy(i8* %1, i32* null) nounwind
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds i8** %eep.0288, i32 1
  %2 = load i8** %incdec.ptr, align 4, !tbaa !5
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %cont, label %for.body

cont:                                             ; preds = %for.inc, %entry
  store i8 95, i8* getelementptr inbounds ([8192 x i8]* @zexecve.buf, i32 0, i32 0), align 1, !tbaa !1
  store i8 61, i8* getelementptr inbounds ([8192 x i8]* @zexecve.buf, i32 0, i32 1), align 1, !tbaa !1
  %3 = load i8* %pth, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %3, 47
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %cont
  %call7 = call i8* @strcpy(i8* getelementptr inbounds ([8192 x i8]* @zexecve.buf, i32 0, i32 2), i8* %pth) nounwind
  br label %if.end9

if.else:                                          ; preds = %cont
  %4 = load i8** @pwd, align 4, !tbaa !5
  %call8 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([8192 x i8]* @zexecve.buf, i32 0, i32 2), i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* %4, i8* %pth) nounwind
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %call10 = call i32 @zputenv(i8* getelementptr inbounds ([8192 x i8]* @zexecve.buf, i32 0, i32 0)) nounwind
  call void @closedumps() nounwind
  %cmp11 = icmp eq i8** %newenvp, null
  %5 = load i8*** @environ, align 4, !tbaa !5
  %.newenvp = select i1 %cmp11, i8** %5, i8** %newenvp
  %call15 = call i32 @execve(i8* %pth, i8** %argv, i8** %.newenvp) nounwind
  %call16 = call i32* @__errno_location() nounwind readnone
  %6 = load i32* %call16, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %6, 8
  switch i32 %6, label %cont189 [
    i32 8, label %if.then21
    i32 2, label %if.then21
  ]

if.then21:                                        ; preds = %if.end9, %if.end9
  %call22 = call i32 (i8*, i32, ...)* @open64(i8* %pth, i32 256) nounwind
  %cmp23 = icmp sgt i32 %call22, -1
  br i1 %cmp23, label %if.then25, label %if.else184

if.then25:                                        ; preds = %if.then21
  %7 = load i8** %argv, align 4, !tbaa !5
  store i8* %pth, i8** %argv, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 0
  %call28 = call i32 @read(i32 %call22, i8* %arraydecay, i32 64) nounwind
  %call29 = call i32 @close(i32 %call22) nounwind
  %cmp30 = icmp sgt i32 %call28, 0
  br i1 %cmp30, label %if.then32, label %if.else181

if.then32:                                        ; preds = %if.then25
  %8 = load i8* %arraydecay, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %8, 35
  br i1 %cmp34, label %if.then36, label %if.else154

if.then36:                                        ; preds = %if.then32
  %arrayidx37 = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 1
  %9 = load i8* %arrayidx37, align 1, !tbaa !1
  %cmp39 = icmp eq i8 %9, 33
  br i1 %cmp39, label %for.cond42.preheader, label %if.else143

for.cond42.preheader:                             ; preds = %if.then36
  %cmp43283 = icmp eq i32 %call28, 0
  br i1 %cmp43283, label %while.cond, label %for.body45

for.body45:                                       ; preds = %for.cond42.preheader, %for.cond42.backedge.for.body45_crit_edge
  %10 = phi i1 [ %phitmp, %for.cond42.backedge.for.body45_crit_edge ], [ false, %for.cond42.preheader ]
  %t0.0284 = phi i32 [ %12, %for.cond42.backedge.for.body45_crit_edge ], [ 0, %for.cond42.preheader ]
  br i1 %10, label %while.cond, label %for.inc52

for.inc52:                                        ; preds = %for.body45
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0284, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb53, label %for.cond42.backedge

for.cond42.backedge:                              ; preds = %for.inc52, %ioc_bb53
  %cmp43 = icmp eq i32 %12, %call28
  br i1 %cmp43, label %while.cond, label %for.cond42.backedge.for.body45_crit_edge

for.cond42.backedge.for.body45_crit_edge:         ; preds = %for.cond42.backedge
  %arrayidx46.phi.trans.insert = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 %12
  %.pre292 = load i8* %arrayidx46.phi.trans.insert, align 1, !tbaa !1
  %phitmp = icmp eq i8 %.pre292, 10
  br label %for.body45

ioc_bb53:                                         ; preds = %for.inc52
  %14 = sext i32 %t0.0284 to i64
  call void @__ioc_report_add_overflow(i32 396, i32 38, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %for.cond42.backedge

while.cond:                                       ; preds = %for.cond42.preheader, %for.body45, %for.cond42.backedge, %cont69
  %t0.1 = phi i32 [ %20, %cont69 ], [ 0, %for.cond42.preheader ], [ %t0.0284, %for.body45 ], [ %call28, %for.cond42.backedge ]
  %arrayidx56 = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 %t0.1
  %15 = load i8* %arrayidx56, align 1, !tbaa !1
  %16 = icmp sgt i8 %15, -1
  br i1 %16, label %cont58, label %ioc_bb57

ioc_bb57:                                         ; preds = %while.cond
  %17 = sext i8 %15 to i64
  call void @__ioc_report_conversion(i32 399, i32 42, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont58

cont58:                                           ; preds = %ioc_bb57, %while.cond
  %idxprom = zext i8 %15 to i32
  %arrayidx59 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %18 = load i16* %arrayidx59, align 2, !tbaa !7
  %and = and i16 %18, 8
  %tobool65 = icmp eq i16 %and, 0
  br i1 %tobool65, label %cont72, label %cont67

cont67:                                           ; preds = %cont58
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.1, i32 -1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb68, label %cont69

ioc_bb68:                                         ; preds = %cont67
  %22 = sext i32 %t0.1 to i64
  call void @__ioc_report_add_overflow(i32 400, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %22, i64 -1, i8 13) nounwind
  br label %cont69

cont69:                                           ; preds = %cont67, %ioc_bb68
  store i8 0, i8* %arrayidx56, align 1, !tbaa !1
  br label %while.cond

cont72:                                           ; preds = %cont58
  %arrayidx73 = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 64
  store i8 0, i8* %arrayidx73, align 1, !tbaa !1
  %add.ptr = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 2
  br label %for.cond75

for.cond75:                                       ; preds = %for.cond75, %cont72
  %ptr.0 = phi i8* [ %add.ptr, %cont72 ], [ %incdec.ptr83, %for.cond75 ]
  %23 = load i8* %ptr.0, align 1, !tbaa !1
  %cond = icmp eq i8 %23, 32
  %incdec.ptr83 = getelementptr inbounds i8* %ptr.0, i32 1
  br i1 %cond, label %for.cond75, label %for.cond85

for.cond85:                                       ; preds = %for.cond75, %for.inc94
  %24 = phi i8 [ %.pre, %for.inc94 ], [ %23, %for.cond75 ]
  %ptr.1 = phi i8* [ %incdec.ptr95, %for.inc94 ], [ %ptr.0, %for.cond75 ]
  switch i8 %24, label %for.inc94 [
    i8 0, label %for.end96
    i8 32, label %for.end96
  ]

for.inc94:                                        ; preds = %for.cond85
  %incdec.ptr95 = getelementptr inbounds i8* %ptr.1, i32 1
  %.pre = load i8* %incdec.ptr95, align 1, !tbaa !1
  br label %for.cond85

for.end96:                                        ; preds = %for.cond85, %for.cond85
  %cmp97 = icmp eq i32 %6, 2
  %tobool100 = icmp ne i8 %24, 0
  br i1 %cmp97, label %if.then99, label %if.else121

if.then99:                                        ; preds = %for.end96
  br i1 %tobool100, label %cont103, label %if.end104

cont103:                                          ; preds = %if.then99
  store i8 0, i8* %ptr.1, align 1, !tbaa !1
  %.pre291 = load i8* %ptr.0, align 1, !tbaa !1
  br label %if.end104

if.end104:                                        ; preds = %cont103, %if.then99
  %25 = phi i8 [ %.pre291, %cont103 ], [ %23, %if.then99 ]
  %cmp106 = icmp eq i8 %25, 47
  br i1 %cmp106, label %if.end120, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end104
  %call108 = call i8* @pathprog(i8* %ptr.0, i8** null) nounwind
  %tobool109 = icmp eq i8* %call108, null
  br i1 %tobool109, label %if.end120, label %cont112

cont112:                                          ; preds = %land.lhs.true
  %arrayidx113 = getelementptr inbounds i8** %argv, i32 -2
  store i8* %ptr.0, i8** %arrayidx113, align 4, !tbaa !5
  %add.ptr114 = getelementptr inbounds i8* %ptr.1, i32 1
  %arrayidx117 = getelementptr inbounds i8** %argv, i32 -1
  store i8* %add.ptr114, i8** %arrayidx117, align 4, !tbaa !5
  %call119 = call i32 @execve(i8* %call108, i8** %arrayidx113, i8** %.newenvp) nounwind
  br label %if.end120

if.end120:                                        ; preds = %land.lhs.true, %if.end104, %cont112
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([28 x i8]* @.str66, i32 0, i32 0), i8* %pth, i8* %ptr.0, i32 2) nounwind
  br label %if.end183

if.else121:                                       ; preds = %for.end96
  br i1 %tobool100, label %cont125, label %cont137

cont125:                                          ; preds = %if.else121
  store i8 0, i8* %ptr.1, align 1, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8** %argv, i32 -2
  store i8* %ptr.0, i8** %arrayidx128, align 4, !tbaa !5
  %add.ptr129 = getelementptr inbounds i8* %ptr.1, i32 1
  %arrayidx132 = getelementptr inbounds i8** %argv, i32 -1
  store i8* %add.ptr129, i8** %arrayidx132, align 4, !tbaa !5
  %call134 = call i32 @execve(i8* %ptr.0, i8** %arrayidx128, i8** %.newenvp) nounwind
  br label %if.end183

cont137:                                          ; preds = %if.else121
  %arrayidx138 = getelementptr inbounds i8** %argv, i32 -1
  store i8* %ptr.0, i8** %arrayidx138, align 4, !tbaa !5
  %call140 = call i32 @execve(i8* %ptr.0, i8** %arrayidx138, i8** %.newenvp) nounwind
  br label %if.end183

if.else143:                                       ; preds = %if.then36
  br i1 %cmp17, label %cont148, label %if.end183

cont148:                                          ; preds = %if.else143
  %arrayidx149 = getelementptr inbounds i8** %argv, i32 -1
  store i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0), i8** %arrayidx149, align 4, !tbaa !5
  %call151 = call i32 @execve(i8* getelementptr inbounds ([8 x i8]* @.str68, i32 0, i32 0), i8** %arrayidx149, i8** %.newenvp) nounwind
  br label %if.end183

if.else154:                                       ; preds = %if.then32
  br i1 %cmp17, label %for.body161, label %if.end183

for.body161:                                      ; preds = %if.else154, %for.cond158.backedge.for.body161_crit_edge
  %26 = phi i8 [ %.pre293, %for.cond158.backedge.for.body161_crit_edge ], [ %8, %if.else154 ]
  %t0.2286 = phi i32 [ %28, %for.cond158.backedge.for.body161_crit_edge ], [ 0, %if.else154 ]
  %tobool163 = icmp eq i8 %26, 0
  br i1 %tobool163, label %if.end183, label %for.inc166

for.inc166:                                       ; preds = %for.body161
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.2286, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb167, label %for.cond158.backedge

for.cond158.backedge:                             ; preds = %for.inc166, %ioc_bb167
  %cmp159 = icmp eq i32 %28, %call28
  br i1 %cmp159, label %cont174, label %for.cond158.backedge.for.body161_crit_edge

for.cond158.backedge.for.body161_crit_edge:       ; preds = %for.cond158.backedge
  %arrayidx162.phi.trans.insert = getelementptr inbounds [65 x i8]* %execvebuf, i32 0, i32 %28
  %.pre293 = load i8* %arrayidx162.phi.trans.insert, align 1, !tbaa !1
  br label %for.body161

ioc_bb167:                                        ; preds = %for.inc166
  %30 = sext i32 %t0.2286 to i64
  call void @__ioc_report_add_overflow(i32 434, i32 36, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %for.cond158.backedge

cont174:                                          ; preds = %for.cond158.backedge
  %arrayidx175 = getelementptr inbounds i8** %argv, i32 -1
  store i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0), i8** %arrayidx175, align 4, !tbaa !5
  %call177 = call i32 @execve(i8* getelementptr inbounds ([8 x i8]* @.str68, i32 0, i32 0), i8** %arrayidx175, i8** %.newenvp) nounwind
  br label %if.end183

if.else181:                                       ; preds = %if.then25
  %31 = load i32* %call16, align 4, !tbaa !3
  br label %if.end183

if.end183:                                        ; preds = %for.body161, %if.else143, %cont148, %if.end120, %cont137, %cont125, %cont174, %if.else154, %if.else181
  %eno.0 = phi i32 [ 2, %if.end120 ], [ %6, %cont125 ], [ %6, %cont137 ], [ 8, %cont148 ], [ %6, %if.else143 ], [ 8, %cont174 ], [ %6, %if.else154 ], [ %31, %if.else181 ], [ 8, %for.body161 ]
  store i8* %7, i8** %argv, align 4, !tbaa !5
  br label %cont189

if.else184:                                       ; preds = %if.then21
  %32 = load i32* %call16, align 4, !tbaa !3
  br label %cont189

cont189:                                          ; preds = %if.end9, %if.else184, %if.end183
  %eno.1 = phi i32 [ %eno.0, %if.end183 ], [ %32, %if.else184 ], [ %6, %if.end9 ]
  %call190 = call i8* @metafy(i8* %pth, i32 -1, i32 5) nounwind
  %33 = load i8** %argv, align 4, !tbaa !5
  %tobool192281 = icmp eq i8* %33, null
  br i1 %tobool192281, label %for.end203, label %for.body193

for.body193:                                      ; preds = %cont189, %for.inc201
  %34 = phi i8* [ %35, %for.inc201 ], [ %33, %cont189 ]
  %eep.1282 = phi i8** [ %incdec.ptr202, %for.inc201 ], [ %argv, %cont189 ]
  %cmp194 = icmp eq i8* %34, %call190
  br i1 %cmp194, label %for.inc201, label %cont198

cont198:                                          ; preds = %for.body193
  %call199 = call i8* @metafy(i8* %34, i32 -1, i32 5) nounwind
  br label %for.inc201

for.inc201:                                       ; preds = %for.body193, %cont198
  %incdec.ptr202 = getelementptr inbounds i8** %eep.1282, i32 1
  %35 = load i8** %incdec.ptr202, align 4, !tbaa !5
  %tobool192 = icmp eq i8* %35, null
  br i1 %tobool192, label %for.end203, label %for.body193

for.end203:                                       ; preds = %for.inc201, %cont189
  ret i32 %eno.1
}

declare void @struncpy(i8**, i8*, i32)

declare i8* @strrchr(i8*, i32) nounwind readonly

declare void @closedumps()

declare i32 @execve(i8*, i8**, i8**) nounwind

declare i8* @pathprog(i8*, i8**)

declare void @printprompt4()

declare i32 @quotedzputs(i8*, %struct._IO_FILE*)

declare void @deletefilelist(%union.linkroot*, i32)

declare void @delenv(%struct.param*)

declare i8* @getsparam(i8*)

declare void @addenv(%struct.param*, i8*)

declare void @copyparam(%struct.param*, %struct.param*, i32)

define internal i32 @execcursh(%struct.estate* %state, i32 %do_exec) nounwind {
entry:
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i32* %0, i32 -1
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %shr = lshr i32 %1, 5
  %add.ptr = getelementptr inbounds i32* %0, i32 %shr
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %2 = load i32* @list_pipe, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* @thisjob, align 4, !tbaa !3
  %4 = load i32* @list_pipe_job, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call = tail call i32 @hasprocs(i32 %3) nounwind
  %tobool6 = icmp eq i32 %call, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  %5 = load %struct.job** @jobtab, align 4, !tbaa !5
  %6 = load i32* @thisjob, align 4, !tbaa !3
  %add.ptr7 = getelementptr inbounds %struct.job* %5, i32 %6
  tail call void @deletejob(%struct.job* %add.ptr7, i32 0) nounwind
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %entry, %if.then
  tail call void @cmdpush(i32 19) nounwind
  tail call void @execlist(%struct.estate* %state, i32 1, i32 %do_exec)
  tail call void @cmdpop() nounwind
  store i32* %add.ptr, i32** %pc, align 4, !tbaa !5
  %7 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %7, 2147483648
  %8 = icmp ult i64 %.off, 4294967296
  br i1 %8, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %if.end
  tail call void @__ioc_report_conversion(i32 350, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %ioc_bb9, %if.end
  %conv = trunc i64 %7 to i32
  ret i32 %conv
}

define internal i32 @exectime(%struct.estate* %state, i32 %do_exec) nounwind {
entry:
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i32* %0, i32 -1
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp = icmp ult i32 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @shelltime() nounwind
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* @thisjob, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %3 = load i32* %0, align 4, !tbaa !3
  %call = tail call fastcc i32 @execpline(%struct.estate* %state, i32 %3, i32 3, i32 0)
  store i32 %2, i32* @thisjob, align 4, !tbaa !3
  %4 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %4, 2147483648
  %5 = icmp ult i64 %.off, 4294967296
  br i1 %5, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %if.end
  tail call void @__ioc_report_conversion(i32 3966, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %if.end
  %conv = trunc i64 %4 to i32
  br label %return

return:                                           ; preds = %cont15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %cont15 ]
  ret i32 %retval.0
}

define internal i32 @execfuncdef(%struct.estate* %state, i32 %do_exec) nounwind {
entry:
  %htok = alloca i32, align 4
  store i32 0, i32* %htok, align 4, !tbaa !3
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i32* %0, i32 -1
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %shr = lshr i32 %1, 5
  %add.ptr = getelementptr inbounds i32* %0, i32 %shr
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %2 = load i32* %0, align 4, !tbaa !3
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %entry
  %4 = zext i32 %2 to i64
  call void @__ioc_report_conversion(i32 3991, i32 27, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %4, i8 0) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %entry
  %call = call %union.linkroot* @ecgetlist(%struct.estate* %state, i32 %2, i32 2, i32* %htok) nounwind
  %sub.ptr.lhs.cast = ptrtoint i32* %add.ptr to i32
  %5 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i32* %5, i32 1
  store i32* %incdec.ptr8, i32** %pc, align 4, !tbaa !5
  %6 = load i32* %5, align 4, !tbaa !3
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %cont6
  %8 = zext i32 %6 to i64
  call void @__ioc_report_conversion(i32 3993, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %8, i8 0) nounwind
  %.pre = load i32** %pc, align 4, !tbaa !5
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %cont6
  %9 = phi i32* [ %.pre, %ioc_bb10 ], [ %incdec.ptr8, %cont6 ]
  %incdec.ptr13 = getelementptr inbounds i32* %9, i32 1
  store i32* %incdec.ptr13, i32** %pc, align 4, !tbaa !5
  %10 = load i32* %9, align 4, !tbaa !3
  %11 = zext i32 %10 to i64
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %cont16, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont11
  call void @__ioc_report_conversion(i32 3994, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %11, i8 0) nounwind
  %.pre367 = load i32** %pc, align 4, !tbaa !5
  br label %cont16

cont16:                                           ; preds = %ioc_bb15, %cont11
  %13 = phi i32* [ %.pre367, %ioc_bb15 ], [ %incdec.ptr13, %cont11 ]
  %incdec.ptr18 = getelementptr inbounds i32* %13, i32 1
  store i32* %incdec.ptr18, i32** %pc, align 4, !tbaa !5
  %14 = load i32* %13, align 4, !tbaa !3
  %15 = zext i32 %14 to i64
  %16 = icmp sgt i32 %14, -1
  br i1 %16, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont16
  call void @__ioc_report_conversion(i32 3995, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %15, i8 0) nounwind
  %.pre368 = load i32** %pc, align 4, !tbaa !5
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %cont16
  %17 = phi i32* [ %.pre368, %ioc_bb20 ], [ %incdec.ptr18, %cont16 ]
  %sub.ptr.rhs.cast24 = ptrtoint i32* %17 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = ashr exact i32 %sub.ptr.sub25, 2
  %18 = icmp sgt i32 %sub.ptr.sub25, -1
  br i1 %18, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %cont21
  %19 = sext i32 %sub.ptr.div26 to i64
  call void @__ioc_report_conversion(i32 3997, i32 11, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont28

cont28:                                           ; preds = %ioc_bb27, %cont21
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.ptr.div26, i32 4)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb29, label %cont30

ioc_bb29:                                         ; preds = %cont28
  %23 = zext i32 %sub.ptr.div26 to i64
  call void @__ioc_report_mul_overflow(i32 3997, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %23, i64 4, i8 5) nounwind
  br label %cont30

cont30:                                           ; preds = %cont28, %ioc_bb29
  %24 = zext i32 %21 to i64
  %25 = icmp sgt i32 %21, -1
  br i1 %25, label %cont33.thread, label %ioc_bb35

cont33.thread:                                    ; preds = %cont30
  %26 = sext i32 %21 to i64
  br label %cont36

ioc_bb35:                                         ; preds = %cont30
  call void @__ioc_report_conversion(i32 3997, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %24, i8 0) nounwind
  %27 = sext i32 %21 to i64
  call void @__ioc_report_conversion(i32 3998, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont36

cont36:                                           ; preds = %cont33.thread, %ioc_bb35
  %28 = phi i64 [ %26, %cont33.thread ], [ %27, %ioc_bb35 ]
  %29 = sext i32 %14 to i64
  br i1 %16, label %cont39, label %ioc_bb38

ioc_bb38:                                         ; preds = %cont36
  call void @__ioc_report_conversion(i32 3998, i32 17, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %29, i8 1) nounwind
  br label %cont39

cont39:                                           ; preds = %ioc_bb38, %cont36
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb40, label %cont41

ioc_bb40:                                         ; preds = %cont39
  call void @__ioc_report_mul_overflow(i32 3998, i32 23, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %15, i64 4, i8 5) nounwind
  br label %cont41

cont41:                                           ; preds = %cont39, %ioc_bb40
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %21, i32 %31)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb42, label %cont43

ioc_bb42:                                         ; preds = %cont41
  %36 = zext i32 %31 to i64
  call void @__ioc_report_add_overflow(i32 3998, i32 15, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %24, i64 %36, i8 5) nounwind
  br label %cont43

cont43:                                           ; preds = %cont41, %ioc_bb42
  %37 = sext i32 %10 to i64
  br i1 %12, label %cont46, label %ioc_bb45

ioc_bb45:                                         ; preds = %cont43
  call void @__ioc_report_conversion(i32 3998, i32 44, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont46

cont46:                                           ; preds = %ioc_bb45, %cont43
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 %10)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb47, label %cont48

ioc_bb47:                                         ; preds = %cont46
  %41 = zext i32 %34 to i64
  call void @__ioc_report_add_overflow(i32 3998, i32 42, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %41, i64 %11, i8 5) nounwind
  br label %cont48

cont48:                                           ; preds = %cont46, %ioc_bb47
  %42 = icmp sgt i32 %39, -1
  br i1 %42, label %cont51, label %ioc_bb50

ioc_bb50:                                         ; preds = %cont48
  %43 = zext i32 %39 to i64
  call void @__ioc_report_conversion(i32 3998, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %43, i8 0) nounwind
  br label %cont51

cont51:                                           ; preds = %ioc_bb50, %cont48
  %44 = load i32* %htok, align 4, !tbaa !3
  %tobool = icmp eq i32 %44, 0
  %tobool52 = icmp eq %union.linkroot* %call, null
  %brmerge354 = or i1 %tobool, %tobool52
  br i1 %brmerge354, label %while.cond.preheader, label %if.then.i

if.then.i:                                        ; preds = %cont51
  %45 = load i32* @esprefork, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %call, i32 %45) nounwind
  %46 = load i32* @esglob, align 4, !tbaa !3
  %tobool1.i = icmp eq i32 %46, 0
  br i1 %tobool1.i, label %while.cond.preheader, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @globlist(%union.linkroot* %call, i32 0) nounwind
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then.i, %if.then2.i, %cont51
  %tobool53 = icmp ne %union.linkroot* %call, null
  %prog66 = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %tobool53.not = xor i1 %tobool53, true
  %strs = getelementptr inbounds %struct.estate* %state, i32 0, i32 2
  %add.ptr106.sum = add i32 %sub.ptr.div26, %14
  %47 = sext i32 %39 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end253
  %s.0 = phi i8* [ %s.1351, %if.end253 ], [ null, %while.cond.preheader ]
  br i1 %tobool53, label %lor.rhs, label %if.then57

lor.rhs:                                          ; preds = %while.cond
  %call54 = call i8* @ugetnode(%union.linkroot* %call) nounwind
  %tobool55 = icmp eq i8* %call54, null
  br i1 %tobool55, label %return, label %if.else

if.then57:                                        ; preds = %while.cond
  %call58 = call i8* @zhalloc(i32 36) nounwind
  %nref = getelementptr inbounds i8* %call58, i32 12
  %48 = bitcast i8* %nref to i32*
  store i32 -1, i32* %48, align 4, !tbaa !3
  br label %if.end63

if.else:                                          ; preds = %lor.rhs
  %call61 = call i8* @zalloc(i32 36) nounwind
  %nref62 = getelementptr inbounds i8* %call61, i32 12
  %49 = bitcast i8* %nref62 to i32*
  store i32 1, i32* %49, align 4, !tbaa !3
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then57
  %s.1351 = phi i8* [ %call54, %if.else ], [ %s.0, %if.then57 ]
  %prog.0.in = phi i8* [ %call61, %if.else ], [ %call58, %if.then57 ]
  %prog.0 = bitcast i8* %prog.0.in to %struct.eprog*
  %npats64 = getelementptr inbounds i8* %prog.0.in, i32 8
  %50 = bitcast i8* %npats64 to i32*
  store i32 %14, i32* %50, align 4, !tbaa !3
  %len65 = getelementptr inbounds i8* %prog.0.in, i32 4
  %51 = bitcast i8* %len65 to i32*
  store i32 %39, i32* %51, align 4, !tbaa !3
  %52 = load %struct.eprog** %prog66, align 4, !tbaa !5
  %dump = getelementptr inbounds %struct.eprog* %52, i32 0, i32 8
  %53 = load %struct.funcdump** %dump, align 4, !tbaa !5
  %tobool67.not = icmp ne %struct.funcdump* %53, null
  %brmerge = or i1 %tobool67.not, %tobool53.not
  %flags80 = bitcast i8* %prog.0.in to i32*
  br i1 %brmerge, label %if.then69, label %if.else98

if.then69:                                        ; preds = %if.end63
  br i1 %tobool53, label %if.else79, label %if.then71

if.then71:                                        ; preds = %if.then69
  store i32 2, i32* %flags80, align 4, !tbaa !3
  %dump72 = getelementptr inbounds i8* %prog.0.in, i32 32
  %54 = bitcast i8* %dump72 to %struct.funcdump**
  store %struct.funcdump* null, %struct.funcdump** %54, align 4, !tbaa !5
  br i1 %16, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %if.then71
  call void @__ioc_report_conversion(i32 4018, i32 50, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %29, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %ioc_bb74, %if.then71
  br i1 %32, label %ioc_bb76, label %cont77

ioc_bb76:                                         ; preds = %cont75
  call void @__ioc_report_mul_overflow(i32 4018, i32 56, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %15, i64 4, i8 5) nounwind
  br label %cont77

cont77:                                           ; preds = %cont75, %ioc_bb76
  %call78 = call i8* @zhalloc(i32 %31) nounwind
  %55 = bitcast i8* %call78 to %struct.patprog**
  %pats = getelementptr inbounds i8* %prog.0.in, i32 16
  %56 = bitcast i8* %pats to %struct.patprog***
  store %struct.patprog** %55, %struct.patprog*** %56, align 4, !tbaa !5
  br label %if.end93

if.else79:                                        ; preds = %if.then69
  store i32 4, i32* %flags80, align 4, !tbaa !3
  call void @incrdumpcount(%struct.funcdump* %53) nounwind
  %57 = load %struct.eprog** %prog66, align 4, !tbaa !5
  %dump84 = getelementptr inbounds %struct.eprog* %57, i32 0, i32 8
  %58 = load %struct.funcdump** %dump84, align 4, !tbaa !5
  %dump85 = getelementptr inbounds i8* %prog.0.in, i32 32
  %59 = bitcast i8* %dump85 to %struct.funcdump**
  store %struct.funcdump* %58, %struct.funcdump** %59, align 4, !tbaa !5
  br i1 %16, label %cont88, label %ioc_bb87

ioc_bb87:                                         ; preds = %if.else79
  call void @__ioc_report_conversion(i32 4024, i32 49, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %29, i8 1) nounwind
  br label %cont88

cont88:                                           ; preds = %ioc_bb87, %if.else79
  br i1 %32, label %ioc_bb89, label %cont90

ioc_bb89:                                         ; preds = %cont88
  call void @__ioc_report_mul_overflow(i32 4024, i32 55, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %15, i64 4, i8 5) nounwind
  br label %cont90

cont90:                                           ; preds = %cont88, %ioc_bb89
  %call91 = call i8* @zalloc(i32 %31) nounwind
  %60 = bitcast i8* %call91 to %struct.patprog**
  %pats92 = getelementptr inbounds i8* %prog.0.in, i32 16
  %61 = bitcast i8* %pats92 to %struct.patprog***
  store %struct.patprog** %60, %struct.patprog*** %61, align 4, !tbaa !5
  br label %if.end93

if.end93:                                         ; preds = %cont90, %cont77
  %pp.0 = phi %struct.patprog** [ %60, %cont90 ], [ %55, %cont77 ]
  %62 = load i32** %pc, align 4, !tbaa !5
  %prog95 = getelementptr inbounds i8* %prog.0.in, i32 20
  %63 = bitcast i8* %prog95 to i32**
  store i32* %62, i32** %63, align 4, !tbaa !5
  %64 = load i8** %strs, align 4, !tbaa !5
  %add.ptr96 = getelementptr inbounds i8* %64, i32 %6
  %strs97 = getelementptr inbounds i8* %prog.0.in, i32 24
  %65 = bitcast i8* %strs97 to i8**
  store i8* %add.ptr96, i8** %65, align 4, !tbaa !5
  br label %for.cond

if.else98:                                        ; preds = %if.end63
  store i32 1, i32* %flags80, align 4, !tbaa !3
  br i1 %42, label %cont102, label %ioc_bb101

ioc_bb101:                                        ; preds = %if.else98
  call void @__ioc_report_conversion(i32 4031, i32 47, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %47, i8 1) nounwind
  br label %cont102

cont102:                                          ; preds = %ioc_bb101, %if.else98
  %call103 = call i8* @zalloc(i32 %39) nounwind
  %66 = bitcast i8* %call103 to %struct.patprog**
  %pats104 = getelementptr inbounds i8* %prog.0.in, i32 16
  %67 = bitcast i8* %pats104 to %struct.patprog***
  store %struct.patprog** %66, %struct.patprog*** %67, align 4, !tbaa !5
  %add.ptr106 = getelementptr inbounds %struct.patprog** %66, i32 %14
  %68 = bitcast %struct.patprog** %add.ptr106 to i32*
  %prog107 = getelementptr inbounds i8* %prog.0.in, i32 20
  %69 = bitcast i8* %prog107 to i32**
  store i32* %68, i32** %69, align 4, !tbaa !5
  %add.ptr109344 = getelementptr inbounds %struct.patprog** %66, i32 %add.ptr106.sum
  %70 = bitcast %struct.patprog** %add.ptr109344 to i8*
  %strs110 = getelementptr inbounds i8* %prog.0.in, i32 24
  %71 = bitcast i8* %strs110 to i8**
  store i8* %70, i8** %71, align 4, !tbaa !5
  %dump111 = getelementptr inbounds i8* %prog.0.in, i32 32
  %72 = bitcast i8* %dump111 to %struct.funcdump**
  store %struct.funcdump* null, %struct.funcdump** %72, align 4, !tbaa !5
  %73 = bitcast %struct.patprog** %add.ptr106 to i8*
  %74 = load i32** %pc, align 4, !tbaa !5
  %75 = bitcast i32* %74 to i8*
  br i1 %25, label %cont116, label %ioc_bb115

ioc_bb115:                                        ; preds = %cont102
  call void @__ioc_report_conversion(i32 4035, i32 43, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont116

cont116:                                          ; preds = %ioc_bb115, %cont102
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %73, i8* %75, i32 %21, i32 4, i1 false)
  %76 = load i8** %71, align 4, !tbaa !5
  %77 = load i8** %strs, align 4, !tbaa !5
  %add.ptr119 = getelementptr inbounds i8* %77, i32 %6
  br i1 %12, label %cont122, label %ioc_bb121

ioc_bb121:                                        ; preds = %cont116
  call void @__ioc_report_conversion(i32 4036, i32 52, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont122

cont122:                                          ; preds = %ioc_bb121, %cont116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %76, i8* %add.ptr119, i32 %10, i32 1, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end93, %cont122, %for.body
  %i.0 = phi i32 [ %79, %for.body ], [ %14, %cont122 ], [ %14, %if.end93 ]
  %pp.2 = phi %struct.patprog** [ %incdec.ptr127, %for.body ], [ %66, %cont122 ], [ %pp.0, %if.end93 ]
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %79 = extractvalue { i32, i1 } %78, 0
  %80 = extractvalue { i32, i1 } %78, 1
  br i1 %80, label %ioc_bb124, label %cont125

ioc_bb124:                                        ; preds = %for.cond
  %81 = sext i32 %i.0 to i64
  call void @__ioc_report_add_overflow(i32 4038, i32 22, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %81, i64 -1, i8 13) nounwind
  br label %cont125

cont125:                                          ; preds = %for.cond, %ioc_bb124
  %tobool126 = icmp eq i32 %i.0, 0
  br i1 %tobool126, label %for.end, label %for.body

for.body:                                         ; preds = %cont125
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %pp.2, align 4, !tbaa !5
  %incdec.ptr127 = getelementptr inbounds %struct.patprog** %pp.2, i32 1
  br label %for.cond

for.end:                                          ; preds = %cont125
  %shf128 = getelementptr inbounds i8* %prog.0.in, i32 28
  %82 = bitcast i8* %shf128 to %struct.shfunc**
  store %struct.shfunc* null, %struct.shfunc** %82, align 4, !tbaa !5
  %call129 = call i8* @zalloc(i32 32) nounwind
  %83 = bitcast i8* %call129 to %struct.shfunc*
  %funcdef = getelementptr inbounds i8* %call129, i32 24
  %84 = bitcast i8* %funcdef to %struct.eprog**
  store %struct.eprog* %prog.0, %struct.eprog** %84, align 4, !tbaa !5
  %flags130 = getelementptr inbounds i8* %call129, i32 8
  %85 = bitcast i8* %flags130 to i32*
  store i32 0, i32* %85, align 4, !tbaa !3
  %86 = load i8** @scriptfilename, align 4, !tbaa !5
  %call131 = call i8* @ztrdup(i8* %86) nounwind
  %filename = getelementptr inbounds i8* %call129, i32 12
  %87 = bitcast i8* %filename to i8**
  store i8* %call131, i8** %87, align 4, !tbaa !5
  %88 = load i64* @lineno, align 8, !tbaa !0
  %lineno = getelementptr inbounds i8* %call129, i32 16
  %89 = bitcast i8* %lineno to i64*
  store i64 %88, i64* %89, align 4, !tbaa !0
  %90 = load i32* @sticky_emulation, align 4, !tbaa !3
  %emulation = getelementptr inbounds i8* %call129, i32 28
  %91 = bitcast i8* %emulation to i32*
  store i32 %90, i32* %91, align 4, !tbaa !3
  br i1 %tobool53, label %cont230, label %if.then133

if.then133:                                       ; preds = %for.end
  %add.ptr.sum = add i32 %shr, 1
  %incdec.ptr136 = getelementptr inbounds i32* %0, i32 %add.ptr.sum
  %92 = load i32* %add.ptr, align 4, !tbaa !3
  %add.ptr.sum343 = add i32 %92, %shr
  %add.ptr137 = getelementptr inbounds i32* %0, i32 %add.ptr.sum343
  %incdec.ptr136.sum = add i32 %shr, 2
  %incdec.ptr139 = getelementptr inbounds i32* %0, i32 %incdec.ptr136.sum
  store i32* %incdec.ptr139, i32** %pc, align 4, !tbaa !5
  %93 = load i32* %incdec.ptr136, align 4, !tbaa !3
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %cont142, label %ioc_bb141

ioc_bb141:                                        ; preds = %if.then133
  %95 = zext i32 %93 to i64
  call void @__ioc_report_conversion(i32 4055, i32 30, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %95, i8 0) nounwind
  br label %cont142

cont142:                                          ; preds = %ioc_bb141, %if.then133
  %call143 = call %union.linkroot* @ecgetlist(%struct.estate* %state, i32 %93, i32 2, i32* %htok) nounwind
  %96 = load i32* %htok, align 4, !tbaa !3
  %tobool144 = icmp eq i32 %96, 0
  %tobool146 = icmp eq %union.linkroot* %call143, null
  %or.cond345 = or i1 %tobool144, %tobool146
  br i1 %or.cond345, label %if.end148, label %if.then.i348

if.then.i348:                                     ; preds = %cont142
  %97 = load i32* @esprefork, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %call143, i32 %97) nounwind
  %98 = load i32* @esglob, align 4, !tbaa !3
  %tobool1.i347 = icmp eq i32 %98, 0
  br i1 %tobool1.i347, label %if.end152, label %if.then2.i349

if.then2.i349:                                    ; preds = %if.then.i348
  call void @globlist(%union.linkroot* %call143, i32 0) nounwind
  br label %if.end148

if.end148:                                        ; preds = %if.then2.i349, %cont142
  br i1 %tobool146, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.end148
  %call151 = call %union.linkroot* @newlinklist() nounwind
  br label %if.end152

if.end152:                                        ; preds = %if.then.i348, %if.end148, %if.then150
  %args.0 = phi %union.linkroot* [ %call143, %if.end148 ], [ %call151, %if.then150 ], [ %call143, %if.then.i348 ]
  %nam = getelementptr inbounds i8* %call129, i32 4
  %99 = bitcast i8* %nam to i8**
  store i8* getelementptr inbounds ([7 x i8]* @.str75, i32 0, i32 0), i8** %99, align 4, !tbaa !5
  %node154 = bitcast %union.linkroot* %args.0 to %struct.linknode*
  %call157 = call %struct.linknode* @insertlinknode(%union.linkroot* %args.0, %struct.linknode* %node154, i8* getelementptr inbounds ([7 x i8]* @.str75, i32 0, i32 0)) nounwind
  call fastcc void @execshfunc(%struct.shfunc* %83, %union.linkroot* %args.0)
  %100 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %100, 2147483648
  %101 = icmp ult i64 %.off, 4294967296
  br i1 %101, label %cont160, label %ioc_bb159

ioc_bb159:                                        ; preds = %if.end152
  call void @__ioc_report_conversion(i32 4063, i32 13, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %100, i8 1) nounwind
  br label %cont160

cont160:                                          ; preds = %ioc_bb159, %if.end152
  %102 = load %struct.eprog** %84, align 4, !tbaa !5
  call void @freeeprog(%struct.eprog* %102) nounwind
  %103 = load i8** %87, align 4, !tbaa !5
  call void @zsfree(i8* %103) nounwind
  %conv = trunc i64 %100 to i32
  call void @zfree(i8* %call129, i32 32) nounwind
  br label %return

cont230:                                          ; preds = %for.end
  %call231 = call i32 @strncmp(i8* %s.1351, i8* getelementptr inbounds ([5 x i8]* @.str76, i32 0, i32 0), i32 4) nounwind readonly
  %tobool232 = icmp eq i32 %call231, 0
  br i1 %tobool232, label %land.lhs.true233, label %if.end253

land.lhs.true233:                                 ; preds = %cont230
  %add.ptr234 = getelementptr inbounds i8* %s.1351, i32 4
  %call235 = call i32 @getsignum(i8* %add.ptr234) nounwind
  %cmp238 = icmp eq i32 %call235, -1
  br i1 %cmp238, label %if.end253, label %cont244

cont244:                                          ; preds = %land.lhs.true233
  %call245 = call i32 @settrap(i32 %call235, %struct.eprog* null, i32 4) nounwind
  %tobool246 = icmp eq i32 %call245, 0
  br i1 %tobool246, label %if.end252, label %if.then247

if.then247:                                       ; preds = %cont244
  %104 = load %struct.eprog** %84, align 4, !tbaa !5
  call void @freeeprog(%struct.eprog* %104) nounwind
  call void @zfree(i8* %call129, i32 32) nounwind
  br label %return

if.end252:                                        ; preds = %cont244
  call void @removetrapnode(i32 %call235) nounwind
  br label %if.end253

if.end253:                                        ; preds = %land.lhs.true233, %cont230, %if.end252
  %105 = load %struct.hashtable** @shfunctab, align 4, !tbaa !5
  %addnode = getelementptr inbounds %struct.hashtable* %105, i32 0, i32 8
  %106 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !5
  %call254 = call i8* @ztrdup(i8* %s.1351) nounwind
  call void %106(%struct.hashtable* %105, i8* %call254, i8* %call129) nounwind
  br label %while.cond

return:                                           ; preds = %lor.rhs, %cont160, %if.then247
  %storemerge = phi i32* [ %add.ptr, %if.then247 ], [ %add.ptr137, %cont160 ], [ %add.ptr, %lor.rhs ]
  %retval.0 = phi i32 [ 1, %if.then247 ], [ %conv, %cont160 ], [ 0, %lor.rhs ]
  store i32* %storemerge, i32** %pc, align 4
  ret i32 %retval.0
}

declare i32 @execfor(%struct.estate*, i32)

declare i32 @execselect(%struct.estate*, i32)

declare i32 @execwhile(%struct.estate*, i32)

declare i32 @execrepeat(%struct.estate*, i32)

declare i32 @execcase(%struct.estate*, i32)

declare i32 @execif(%struct.estate*, i32)

define internal i32 @execcond(%struct.estate* %state, i32 %do_exec) nounwind {
entry:
  %pc = getelementptr inbounds %struct.estate* %state, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32* %0, i32 -1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !5
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @printprompt4() nounwind
  %2 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %3 = tail call i32 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str73, i32 0, i32 0), i32 2, i32 1, %struct._IO_FILE* %2)
  %4 = load i32* @tracingcond, align 4, !tbaa !3
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  %8 = sext i32 %4 to i64
  tail call void @__ioc_report_add_overflow(i32 3904, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  store i32 %6, i32* @tracingcond, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %cont
  tail call void @cmdpush(i32 10) nounwind
  %call1 = tail call i32 @evalcond(%struct.estate* %state, i8* null) nounwind
  %cmp = icmp eq i32 %call1, 2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  tail call void @cmdpop() nounwind
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool4 = icmp eq i8 %9, 0
  br i1 %tobool4, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end3
  %10 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %11 = tail call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str74, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %10)
  %12 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %12) nounwind
  %13 = load i32* @tracingcond, align 4, !tbaa !3
  %14 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %13, i32 -1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %if.then5
  %17 = sext i32 %13 to i64
  tail call void @__ioc_report_add_overflow(i32 3918, i32 16, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %17, i64 -1, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %if.then5, %ioc_bb8
  store i32 %15, i32* @tracingcond, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.end3, %cont9
  ret i32 %call1
}

define internal i32 @execarith(%struct.estate* %state, i32 %do_exec) nounwind {
entry:
  %e = alloca i8*, align 4
  %htok = alloca i32, align 4
  %tmp = alloca %struct.mnumber, align 8
  store i32 0, i32* %htok, align 4, !tbaa !3
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @printprompt4() nounwind
  %1 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %2 = call i32 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0), i32 2, i32 1, %struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call void @cmdpush(i32 9) nounwind
  %call1 = call i8* @ecgetstr(%struct.estate* %state, i32 2, i32* %htok) nounwind
  store i8* %call1, i8** %e, align 4, !tbaa !5
  %3 = load i32* %htok, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %3, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @singsub(i8** %e) nounwind
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool5 = icmp eq i8 %4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %6 = load i8** %e, align 4, !tbaa !5
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i8* %6) nounwind
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then6
  %7 = load i8** %e, align 4, !tbaa !5
  call void @matheval(%struct.mnumber* sret %tmp, i8* %7) nounwind
  %val.sroa.0.0..idx = getelementptr inbounds %struct.mnumber* %tmp, i32 0, i32 0, i32 0
  %val.sroa.0.0.copyload = load i64* %val.sroa.0.0..idx, align 8
  %val.sroa.1.8..idx23 = getelementptr inbounds %struct.mnumber* %tmp, i32 0, i32 1
  %val.sroa.1.8.copyload = load i32* %val.sroa.1.8..idx23, align 8
  call void @cmdpop() nounwind
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %tobool9 = icmp eq i8 %8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end8
  %9 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %10 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str72, i32 0, i32 0), i32 4, i32 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !5
  %call12 = call i32 @fflush(%struct._IO_FILE* %11) nounwind
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.then10
  %12 = load i32* @errflag, align 4, !tbaa !3
  %tobool14 = icmp eq i32 %12, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  store i32 0, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end16:                                         ; preds = %if.end13
  %cmp = icmp eq i32 %val.sroa.1.8.copyload, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %cmp17 = icmp eq i64 %val.sroa.0.0.copyload, 0
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %13 = bitcast i64 %val.sroa.0.0.copyload to double
  %cmp19 = fcmp oeq double %13, 0.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cmp17.sink = phi i1 [ %cmp17, %cond.true ], [ %cmp19, %cond.false ]
  %conv = zext i1 %cmp17.sink to i32
  br label %return

return:                                           ; preds = %cond.end, %if.then15
  %retval.0 = phi i32 [ 2, %if.then15 ], [ %conv, %cond.end ]
  ret i32 %retval.0
}

define internal i32 @execautofn(%struct.estate* nocapture %state, i32 %do_exec) nounwind {
entry:
  %prog = getelementptr inbounds %struct.estate* %state, i32 0, i32 0
  %0 = load %struct.eprog** %prog, align 4, !tbaa !5
  %shf1 = getelementptr inbounds %struct.eprog* %0, i32 0, i32 7
  %1 = load %struct.shfunc** %shf1, align 4, !tbaa !5
  %call = tail call %struct.shfunc* @loadautofn(%struct.shfunc* %1, i32 1, i32 0)
  %tobool = icmp eq %struct.shfunc* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.funcstack** @funcstack, align 4, !tbaa !5
  %tobool2 = icmp eq %struct.funcstack* %2, null
  br i1 %tobool2, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %filename = getelementptr inbounds %struct.funcstack* %2, i32 0, i32 2
  %3 = load i8** %filename, align 4, !tbaa !5
  %tobool3 = icmp eq i8* %3, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  %filename5 = getelementptr inbounds %struct.shfunc* %call, i32 0, i32 1
  %4 = load i8** %filename5, align 4, !tbaa !5
  %call6 = tail call i8* @dupstring(i8* %4) nounwind
  %5 = load %struct.funcstack** @funcstack, align 4, !tbaa !5
  %filename7 = getelementptr inbounds %struct.funcstack* %5, i32 0, i32 2
  store i8* %call6, i8** %filename7, align 4, !tbaa !5
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end, %if.then4
  %6 = load i8** @scriptname, align 4, !tbaa !5
  %7 = load i8** @scriptfilename, align 4, !tbaa !5
  %nam = getelementptr inbounds %struct.shfunc* %call, i32 0, i32 0, i32 1
  %8 = load i8** %nam, align 4, !tbaa !5
  %call9 = tail call i8* @dupstring(i8* %8) nounwind
  store i8* %call9, i8** @scriptfilename, align 4, !tbaa !5
  store i8* %call9, i8** @scriptname, align 4, !tbaa !5
  %funcdef = getelementptr inbounds %struct.shfunc* %call, i32 0, i32 3
  %9 = load %struct.eprog** %funcdef, align 4, !tbaa !5
  tail call void @execode(%struct.eprog* %9, i32 1, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str69, i32 0, i32 0))
  store i8* %6, i8** @scriptname, align 4, !tbaa !5
  store i8* %7, i8** @scriptfilename, align 4, !tbaa !5
  %10 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %10, 2147483648
  %11 = icmp ult i64 %.off, 4294967296
  br i1 %11, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.end8
  tail call void @__ioc_report_conversion(i32 4161, i32 10, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.end8
  %conv = trunc i64 %10 to i32
  br label %return

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i32 [ %conv, %cont ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @exectry(%struct.estate*, i32)

declare i8* @ecgetstr(%struct.estate*, i32, i32*)

declare void @matheval(%struct.mnumber* sret, i8*)

declare i32 @evalcond(%struct.estate*, i8*)

declare void @incrdumpcount(%struct.funcdump*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @getsignum(i8*)

declare void @removetrapnode(i32)

declare void @shelltime()

declare i32 @__fxstat64(i32, i32, %struct.stat64*) nounwind

declare i32 @gettempfile(i8*, i32, i8**)

declare i32 @unlink(i8* nocapture) nounwind

define internal fastcc i32 @getpipe(i8* %cmd, i32 %nullexec) nounwind {
entry:
  %pipes = alloca [2 x i32], align 4
  %bgtime = alloca %struct.timeval, align 4
  %ends = alloca i8*, align 4
  %0 = load i8* %cmd, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 3822, i32 32, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @7, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp = icmp eq i8 %0, -110
  %conv1 = zext i1 %cmp to i32
  %call = call fastcc %struct.eprog* @parsecmd(i8* %cmd, i8** %ends)
  %tobool = icmp eq %struct.eprog* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8** %ends, align 4, !tbaa !5
  %2 = load i8* %1, align 1, !tbaa !1
  %tobool4 = icmp eq i8 %2, 0
  br i1 %tobool4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([55 x i8]* @.str79, i32 0, i32 0)) nounwind
  br label %return

if.end8:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 0
  %call.i = call i32 @pipe(i32* %arraydecay) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mpipe.exit.thread, label %if.end15

mpipe.exit.thread:                                ; preds = %if.end8
  %call1.i = call i32* @__errno_location() nounwind readnone
  %3 = load i32* %call1.i, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i32 %3) nounwind
  br label %return

if.end15:                                         ; preds = %if.end8
  %4 = load i32* %arraydecay, align 4, !tbaa !3
  %call2.i = call i32 @movefd(i32 %4) nounwind
  store i32 %call2.i, i32* %arraydecay, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 1
  %5 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %call5.i = call i32 @movefd(i32 %5) nounwind
  store i32 %call5.i, i32* %arrayidx4.i, align 4, !tbaa !3
  %call16 = call fastcc i32 @zfork(%struct.timeval* %bgtime)
  %tobool17 = icmp eq i32 %call16, 0
  br i1 %tobool17, label %if.end38, label %if.then18

if.then18:                                        ; preds = %if.end15
  %arrayidx = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %conv1
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %call19 = call i32 @zclose(i32 %6) nounwind
  %cmp22 = icmp eq i32 %call16, -1
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.then18
  %lnot.ext = xor i32 %conv1, 1
  %arrayidx26 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %lnot.ext
  %7 = load i32* %arrayidx26, align 4, !tbaa !3
  %call27 = call i32 @zclose(i32 %7) nounwind
  br label %return

if.end30:                                         ; preds = %if.then18
  %tobool31 = icmp eq i32 %nullexec, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @addproc(i32 %call16, i8* null, i32 1, %struct.timeval* %bgtime) nounwind
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.then32
  %lnot.ext36 = xor i32 %conv1, 1
  %arrayidx37 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %lnot.ext36
  %8 = load i32* %arrayidx37, align 4, !tbaa !3
  br label %return

if.end38:                                         ; preds = %if.end15
  call fastcc void @entersubsh(i32 2)
  %arrayidx39 = getelementptr inbounds [2 x i32]* %pipes, i32 0, i32 %conv1
  %9 = load i32* %arrayidx39, align 4, !tbaa !3
  %call40 = call i32 @redup(i32 %9, i32 %conv1) nounwind
  %10 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp14.i = icmp slt i32 %10, 10
  br i1 %cmp14.i, label %closem.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %if.end38
  %i.015.i = phi i32 [ 10, %if.end38 ], [ %14, %for.cond.backedge.i ]
  %11 = load i8** @fdtable, align 4, !tbaa !5
  %arrayidx.i = getelementptr inbounds i8* %11, i32 %i.015.i
  %12 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %12, 0
  br i1 %cmp1.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i52 = call i32 @zclose(i32 %i.015.i) nounwind
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.015.i, i32 1) nounwind
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %for.inc.i, %ioc_bb.i
  %16 = load i32* @max_zsh_fd, align 4, !tbaa !3
  %cmp.i54 = icmp sgt i32 %14, %16
  br i1 %cmp.i54, label %closem.exit, label %for.body.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %17 = sext i32 %i.015.i to i64
  call void @__ioc_report_add_overflow(i32 3421, i32 34, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

closem.exit:                                      ; preds = %for.cond.backedge.i, %if.end38
  call void @cmdpush(i32 24) nounwind
  %cond = select i1 %cmp, i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0)
  call void @execode(%struct.eprog* %call, i32 0, i32 1, i8* %cond)
  call void @cmdpop() nounwind
  %18 = load i64* @lastval, align 8, !tbaa !0
  %.off = add i64 %18, 2147483648
  %19 = icmp ult i64 %.off, 4294967296
  br i1 %19, label %cont43, label %ioc_bb42

ioc_bb42:                                         ; preds = %closem.exit
  call void @__ioc_report_conversion(i32 3851, i32 9, i8* getelementptr inbounds ([21 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont43

cont43:                                           ; preds = %ioc_bb42, %closem.exit
  %conv44 = trunc i64 %18 to i32
  call void @_exit(i32 %conv44) noreturn nounwind
  unreachable

return:                                           ; preds = %mpipe.exit.thread, %entry, %if.end33, %if.then24, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then24 ], [ %8, %if.end33 ], [ -1, %entry ], [ -1, %mpipe.exit.thread ]
  ret i32 %retval.0
}

declare i8* @hrealloc(i8*, i32, i32)

define internal fastcc i32 @cancd2(i8* %s) nounwind {
entry:
  %buf = alloca %struct.stat, align 4
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 29), align 1, !tbaa !1
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 30), align 1, !tbaa !1
  %2 = or i8 %1, %0
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %4 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %4, 47
  br i1 %cmp, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load i8** @pwd, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds i8* %5, i32 1
  %6 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool5 = icmp ne i8 %6, 0
  %cond = select i1 %tobool5, i8* %5, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)
  %call = call i8* @tricat(i8* %cond, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* %s) nounwind
  br label %if.end

if.else:                                          ; preds = %if.then
  %call6 = call i8* @ztrdup(i8* %s) nounwind
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %us.0 = phi i8* [ %call, %if.then3 ], [ %call6, %if.else ]
  %call7 = call i32 @fixdir(i8* %us.0) nounwind
  br label %if.end10

if.else8:                                         ; preds = %entry
  %call9 = call i8* @unmeta(i8* %s) nounwind
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.end
  %us2.0 = phi i8* [ null, %if.else8 ], [ %us.0, %if.end ]
  %us.1 = phi i8* [ %call9, %if.else8 ], [ %us.0, %if.end ]
  %call11 = call i32 @access(i8* %us.1, i32 1) nounwind
  %tobool12 = icmp eq i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %if.end10
  %7 = bitcast %struct.stat* %buf to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* %us.1, %struct.stat64* %7) nounwind
  %tobool14 = icmp eq i32 %call.i, 0
  br i1 %tobool14, label %cont16, label %lor.end

cont16:                                           ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %8 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %8, 61440
  %phitmp = icmp eq i32 %and, 16384
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %if.end10, %cont16
  %9 = phi i1 [ false, %lor.lhs.false ], [ false, %if.end10 ], [ %phitmp, %cont16 ]
  %lnot.ext = zext i1 %9 to i32
  %tobool20 = icmp eq i8* %us2.0, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.end
  call void @free(i8* %us2.0) nounwind
  br label %if.end22

if.end22:                                         ; preds = %lor.end, %if.then21
  ret i32 %lnot.ext
}

declare i8* @cd_able_vars(i8*)

declare i32 @fixdir(i8*)

declare %struct.param* @assignaparam(i8*, i8**, i32)

declare i32 @bin_whence(i8*, i8**, %struct.options*, i32)

declare i32 @ensurefeature(i8*, i8*, i8*)

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare i8* @memchr(i8*, i32, i32) nounwind readonly

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

!0 = metadata !{metadata !"long long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 8, metadata !0}
!5 = metadata !{metadata !"any pointer", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
!7 = metadata !{metadata !"short", metadata !1}
!8 = metadata !{metadata !"double", metadata !1}
