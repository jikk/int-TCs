; ModuleID = '../../src/Src/utils.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.nameddir = type { %struct.hashnode, i8*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.ttyinfo = type { %struct.termios, %struct.winsize }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.widechar_array = type { i32*, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.param = type { %struct.hashnode, %union.anon.0, %union.anon.1, i32, i32, i8*, i8*, %struct.param*, i32 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.fd_set = type { [32 x i32] }
%struct.timeval = type { i32, i32 }
%struct.cmdnam = type { %struct.hashnode, %union.anon.2 }
%union.anon.2 = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.dirsav = type { i32, i32, i8*, i64, i64 }

@errflag = external global i32
@noerrs = external global i32
@opts = external global [169 x i8]
@locallevel = external global i32
@lineno = external global i64
@.str = private unnamed_addr constant [7 x i8] c"%lld: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"interrupt\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@shout = external global %struct._IO_FILE*
@nicechar.buf = internal global [6 x i8] zeroinitializer, align 1
@typtab = common global [256 x i16] zeroinitializer, align 2
@mb_shiftstate = internal global %struct.__mbstate_t zeroinitializer, align 8
@wcs_nicechar.buf = internal unnamed_addr global i8* null, align 4
@wcs_nicechar.bufalloc = internal unnamed_addr global i32 0, align 4
@.str3 = private unnamed_addr constant [7 x i8] c"\5CU%.8x\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"\5Cu%.4x\00", align 1
@path = external global i8**
@.str5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@pwd = external global i8*
@.str6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@xbuf = internal global [8192 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@cached_uid = common global i32 0, align 4
@cached_username = common global i8* null, align 4
@finddir.homenode = internal global %struct.nameddir { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), i32 0 }, i8* null, i32 0 }, align 4
@finddir.ffsz = internal unnamed_addr global i32 0, align 4
@home = external global i8*
@finddir_full = internal unnamed_addr global i8* null, align 4
@finddir_last = internal unnamed_addr global %struct.nameddir* null, align 4
@finddir_best = internal unnamed_addr global i32 0, align 4
@nameddirtab = external global %struct.hashtable*
@.str11 = private unnamed_addr constant [19 x i8] c"zsh_directory_name\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"OLDPWD\00", align 1
@paramtab = external global %struct.hashtable*
@prepromptfns = internal unnamed_addr global %union.linkroot* null, align 4
@timedfns = common global %union.linkroot* null, align 4
@sfcontext = external global i32
@stopmsg = external global i32
@incompfunc = common global i32 0, align 4
@.str17 = private unnamed_addr constant [11 x i8] c"_functions\00", align 1
@preprompt.lastperiodic = internal unnamed_addr global i32 0, align 4
@.str18 = private unnamed_addr constant [7 x i8] c"PERIOD\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"MAILCHECK\00", align 1
@use_exit_printed = external global i32
@.str20 = private unnamed_addr constant [16 x i8] c"PROMPT_EOL_MARK\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"%B%S%#%s%b\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"%*s\0D%*s\0D\00", align 1
@zterm_columns = external global i64
@hasxn = external global i32
@.str23 = private unnamed_addr constant [7 x i8] c"precmd\00", align 1
@.str24 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@watch = external global i8**
@lastwatch = common global i32 0, align 4
@.str25 = private unnamed_addr constant [9 x i8] c"LOGCHECK\00", align 1
@lastmailcheck = common global i32 0, align 4
@mailpath = external global i8**
@queueing_enabled = external global i32
@.str26 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@xtrerr = global %struct._IO_FILE* null, align 4
@stderr = external global %struct._IO_FILE*
@prompt4 = external global i8*
@SHTTY = external global i32
@.str28 = private unnamed_addr constant [15 x i8] c"bad tcgets: %e\00", align 1
@adjustwinsize.getwinsz.b = internal unnamed_addr global i1 false
@shttyinfo = common global %struct.ttyinfo zeroinitializer, align 4
@zterm_lines = external global i64
@.str29 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@zleactive = external global i32
@resetneeded = common global i32 0, align 4
@winchanged = common global i32 0, align 4
@fdtable = external global i8*
@fdtable_flocks = external global i32
@max_zsh_fd = external global i32
@coprocin = external global i32
@coprocout = external global i32
@.str31 = private unnamed_addr constant [8 x i8] c".XXXXXX\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"TMPPREFIX\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"/tmp/zsh\00", align 1
@.str35 = private unnamed_addr constant [45 x i8] c"invalid base (must be 2 to 36 inclusive): %d\00", align 1
@.str36 = private unnamed_addr constant [37 x i8] c"number truncated after %d digits: %s\00", align 1
@0 = internal unnamed_addr constant [7 x i8] c"zulong\00"
@1 = internal unnamed_addr constant [19 x i8] c"unsigned long long\00"
@2 = internal unnamed_addr constant [5 x i8] c"cc_t\00"
@.str37 = private unnamed_addr constant [47 x i8] c"zsh: sure you want to delete all the files in \00", align 1
@.str38 = private unnamed_addr constant [24 x i8] c"? (waiting ten seconds)\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c" [yn]? \00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"read failed: %e\00", align 1
@3 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@.str42 = private unnamed_addr constant [17 x i8] c"write failed: %e\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@term = external global i8*
@mypgrp = external global i32
@.str44 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@histdone = external global i32
@.str47 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@shfunctab = external global %struct.hashtable*
@builtintab = external global %struct.hashtable*
@cmdnamtab = external global %struct.hashtable*
@aliastab = external global %struct.hashtable*
@reswdtab = external global %struct.hashtable*
@best = internal unnamed_addr global i8* null, align 4
@.str48 = private unnamed_addr constant [15 x i8] c"CORRECT_IGNORE\00", align 1
@spckpat = internal unnamed_addr global %struct.patprog* null, align 4
@guess = internal global i8* null, align 4
@d = internal unnamed_addr global i32 0, align 4
@pathchecked = external global i8**
@cdpath = external global i8**
@ztokens = external global [0 x i8]
@sprompt = external global i8*
@.str49 = private unnamed_addr constant [7 x i8] c"nyae \09\00", align 1
@.str50 = private unnamed_addr constant [6 x i8] c"%%-%c\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"%%%c\00", align 1
@nulstring = external global [0 x i8]
@ifs = external global i8*
@.str52 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"ZBEEP\00", align 1
@.str54 = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@emulation = external global i32
@.str55 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str56 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@wordchars = external global i8*
@.str57 = private unnamed_addr constant [24 x i8] c"*?_-.[]~=/&;!#$%^(){}<>\00", align 1
@wordchars_wide = common global %struct.widechar_array zeroinitializer, align 4
@ifs_wide = common global %struct.widechar_array zeroinitializer, align 4
@.str58 = private unnamed_addr constant [26 x i8] c"#$^*()=|{}[]`<>?~;&\0A\09 \5C'\22\00", align 1
@specialcomma = internal unnamed_addr global i32 0, align 4
@bangchar = external global i8
@attachtty.ep.b = internal unnamed_addr global i1 false
@4 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str59 = private unnamed_addr constant [23 x i8] c"can't set tty pgrp: %e\00", align 1
@metafy.mbuf = internal global [8193 x i8] zeroinitializer, align 1
@unmeta.fn = internal unnamed_addr global i8* null, align 4
@unmeta.sz = internal unnamed_addr global i32 0, align 4
@.str60 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str61 = private unnamed_addr constant [3 x i8] c"\5C'\00", align 1
@.str62 = private unnamed_addr constant [23 x i8] c"character not in range\00", align 1
@.str63 = private unnamed_addr constant [23 x i8] c"failed to chdir(/): %e\00", align 1
@.str64 = private unnamed_addr constant [46 x i8] c"lost current directory, failed to cd to /: %e\00", align 1
@.str65 = private unnamed_addr constant [44 x i8] c"lost current directory: %e: changed to `%s'\00", align 1
@scriptname = common global i8* null, align 4
@scriptfilename = common global i8* null, align 4
@5 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@spdist.qwertykeymap = internal constant [155 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\091234567890-=\09\09qwertyuiop[]\09\09asdfghjkl;'\0A\09\09zxcvbnm,./\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09!@#$%^&*()_+\09\09QWERTYUIOP{}\09\09ASDFGHJKL:\22\0A\09\09ZXCVBNM<>?\0A\0A\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00", align 1
@spdist.dvorakkeymap = internal constant [155 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\091234567890[]\09\09',.pyfgcrl/=\09\09aoeuidhtns-\0A\09\09;qjkxbmwvz\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09!@#$%^&*(){}\09\09\22<>PYFGCRL?+\09\09AOEUIDHTNS_\0A\09\09:QJKXBMWVZ\0A\0A\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00", align 1
@spname.newname = internal global [4097 x i8] zeroinitializer, align 1
@6 = internal unnamed_addr constant [3 x i8] c"+=\00"
@7 = internal unnamed_addr constant [7 x i8] c"wint_t\00"
@8 = internal unnamed_addr constant [11 x i8] c"convchar_t\00"
@9 = internal unnamed_addr constant [8 x i8] c"wchar_t\00"
@10 = internal unnamed_addr constant [3 x i8] c"-=\00"
@retflag = external global i32
@breaks = external global i32
@contflag = external global i32
@11 = internal unnamed_addr constant [5 x i8] c"char\00"
@12 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@fdtable_size = external global i32
@13 = internal unnamed_addr constant [3 x i8] c"*=\00"
@tccolumns = external global i32
@termflags = external global i32
@14 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@15 = internal unnamed_addr constant [10 x i8] c"long long\00"
@16 = internal unnamed_addr constant [15 x i8] c"unsigned short\00"
@tclines = external global i32
@.str66 = private unnamed_addr constant [29 x i8] c"empty MAILPATH component: %s\00", align 1
@.str67 = private unnamed_addr constant [7 x i8] c"%e: %s\00", align 1
@.str68 = private unnamed_addr constant [9 x i8] c"%s/%s?%s\00", align 1
@.str69 = private unnamed_addr constant [20 x i8] c"You have new mail.\0A\00", align 1
@underscoreused = external global i32
@zunderscore = external global i8*
@17 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str70 = private unnamed_addr constant [31 x i8] c"The mail in %s has been read.\0A\00", align 1
@18 = internal unnamed_addr constant [2 x i8] c"-\00"
@19 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@20 = internal unnamed_addr constant [2 x i8] c"+\00"
@21 = internal unnamed_addr constant [4 x i8] c"int\00"
@22 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@23 = internal unnamed_addr constant [2 x i8] c"*\00"
@24 = internal unnamed_addr constant [22 x i8] c"../../src/Src/utils.c\00"
@argzero = external global i8*
@.str71 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1

define void @zerr(i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  %0 = load i32* @errflag, align 4, !tbaa !0
  %1 = load i32* @noerrs, align 4, !tbaa !0
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @errflag, align 4, !tbaa !0
  br label %return

if.end3:                                          ; preds = %entry
  %ap4 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap4)
  %4 = load i8** %ap, align 4, !tbaa !3
  call fastcc void @zwarning(i8* null, i8* %fmt, i8* %4)
  call void @llvm.va_end(i8* %ap4)
  store i32 1, i32* @errflag, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then, %if.then2, %if.end3
  ret void
}

declare void @llvm.va_start(i8*) nounwind

define internal fastcc void @zwarning(i8* %cmd, i8* nocapture %fmt, i8* nocapture %ap) nounwind {
entry:
  %call = tail call i32 @isatty(i32 2) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* (i32, ...)* @zleentry(i32 3) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool2 = icmp eq i8* %cmd, null
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool15 = icmp eq i8 %0, 0
  %1 = load i32* @locallevel, align 4, !tbaa !0
  %tobool16 = icmp ne i32 %1, 0
  %or.cond31 = or i1 %tobool15, %tobool16
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %or.cond31, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then3
  %2 = load i8** @scriptname, align 4, !tbaa !3
  %tobool7 = icmp ne i8* %2, null
  %3 = load i8** @argzero, align 4, !tbaa !3
  %cond = select i1 %tobool7, i8* %2, i8* %3
  %4 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call8 = tail call i32 @mb_niceformat(i8* %cond, %struct._IO_FILE* %4, i8** null, i32 0)
  %5 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call9 = tail call i32 @fputc(i32 58, %struct._IO_FILE* %5) nounwind
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.then6
  %6 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call11 = tail call i32 @mb_niceformat(i8* %cmd, %struct._IO_FILE* %6, i8** null, i32 0)
  %7 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call14 = tail call i32 @fputc(i32 58, %struct._IO_FILE* %7) nounwind
  br label %if.end30

if.else:                                          ; preds = %if.end
  br i1 %or.cond31, label %cond.false18, label %cond.end24

cond.false18:                                     ; preds = %if.else
  %8 = load i8** @scriptname, align 4, !tbaa !3
  %tobool19 = icmp ne i8* %8, null
  %9 = load i8** @argzero, align 4, !tbaa !3
  %cond23 = select i1 %tobool19, i8* %8, i8* %9
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false18, %if.else
  %cond25 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), %if.else ], [ %cond23, %cond.false18 ]
  %10 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call26 = tail call i32 @mb_niceformat(i8* %cond25, %struct._IO_FILE* %10, i8** null, i32 0)
  %11 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call29 = tail call i32 @fputc(i32 58, %struct._IO_FILE* %11) nounwind
  br label %if.end30

if.end30:                                         ; preds = %cond.end24, %if.end10
  %12 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  tail call void @zerrmsg(%struct._IO_FILE* %12, i8* %fmt, i8* %ap)
  ret void
}

declare void @llvm.va_end(i8*) nounwind

define void @zerrnam(i8* %cmd, i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  %0 = load i32* @errflag, align 4, !tbaa !0
  %1 = load i32* @noerrs, align 4, !tbaa !0
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %4 = load i8** %ap, align 4, !tbaa !3
  call fastcc void @zwarning(i8* %cmd, i8* %fmt, i8* %4)
  call void @llvm.va_end(i8* %ap2)
  store i32 1, i32* @errflag, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

define void @zwarn(i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  %0 = load i32* @errflag, align 4, !tbaa !0
  %1 = load i32* @noerrs, align 4, !tbaa !0
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %4 = load i8** %ap, align 4, !tbaa !3
  call fastcc void @zwarning(i8* null, i8* %fmt, i8* %4)
  call void @llvm.va_end(i8* %ap2)
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

define void @zwarnnam(i8* %cmd, i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  %0 = load i32* @errflag, align 4, !tbaa !0
  %1 = load i32* @noerrs, align 4, !tbaa !0
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %4 = load i8** %ap, align 4, !tbaa !3
  call fastcc void @zwarning(i8* %cmd, i8* %fmt, i8* %4)
  call void @llvm.va_end(i8* %ap2)
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

define void @zerrmsg(%struct._IO_FILE* %file, i8* nocapture %fmt, i8* nocapture %ap) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  %1 = load i32* @locallevel, align 4, !tbaa !0
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = or i1 %tobool, %tobool1
  %2 = load i64* @lineno, align 8, !tbaa !4
  %tobool2 = icmp ne i64 %2, 0
  %or.cond72 = and i1 %or.cond, %tobool2
  br i1 %or.cond72, label %if.then, label %cont

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i64 %2) nounwind
  br label %while.cond

cont:                                             ; preds = %entry
  %call3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %file) nounwind
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then49, %tulower.exit, %if.then6, %sw.bb33, %sw.bb31, %sw.bb27, %cont23, %sw.bb, %if.then, %cont
  %ap.addr.0 = phi i8* [ %ap, %cont ], [ %ap, %if.then ], [ %ap.addr.0, %if.then6 ], [ %ap.next40, %if.then49 ], [ %ap.next40, %tulower.exit ], [ %ap.next35, %sw.bb33 ], [ %ap.addr.0, %sw.bb31 ], [ %ap.next29, %sw.bb27 ], [ %ap.next14, %cont23 ], [ %ap.next, %sw.bb ], [ %ap.addr.0, %cond.end ]
  %fmt.addr.0 = phi i8* [ %fmt, %cont ], [ %fmt, %if.then ], [ %incdec.ptr7, %if.then6 ], [ %incdec.ptr7, %if.then49 ], [ %incdec.ptr7, %tulower.exit ], [ %incdec.ptr7, %sw.bb33 ], [ %incdec.ptr7, %sw.bb31 ], [ %incdec.ptr7, %sw.bb27 ], [ %incdec.ptr7, %cont23 ], [ %incdec.ptr7, %sw.bb ], [ %incdec.ptr68, %cond.end ]
  %3 = load i8* %fmt.addr.0, align 1, !tbaa !1
  switch i8 %3, label %ioc_bb60 [
    i8 0, label %while.end
    i8 37, label %if.then6
  ]

if.then6:                                         ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %fmt.addr.0, i32 1
  %incdec.ptr7 = getelementptr inbounds i8* %fmt.addr.0, i32 2
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv8 = sext i8 %4 to i32
  switch i32 %conv8, label %while.cond [
    i32 115, label %sw.bb
    i32 108, label %sw.bb10
    i32 100, label %sw.bb27
    i32 37, label %sw.bb31
    i32 99, label %sw.bb33
    i32 101, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.then6
  %5 = bitcast i8* %ap.addr.0 to i8**
  %ap.next = getelementptr i8* %ap.addr.0, i32 4
  %6 = load i8** %5, align 4
  %call9 = tail call i32 @mb_niceformat(i8* %6, %struct._IO_FILE* %file, i8** null, i32 0)
  br label %while.cond

sw.bb10:                                          ; preds = %if.then6
  %7 = bitcast i8* %ap.addr.0 to i8**
  %ap.next12 = getelementptr i8* %ap.addr.0, i32 4
  %8 = load i8** %7, align 4
  %9 = bitcast i8* %ap.next12 to i32*
  %ap.next14 = getelementptr i8* %ap.addr.0, i32 8
  %10 = load i32* %9, align 4
  %call15 = tail call i32 @metalen(i8* %8, i32 %10)
  %11 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call15, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  %14 = sext i32 %call15 to i64
  br i1 %13, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %sw.bb10
  tail call void @__ioc_report_add_overflow(i32 232, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %sw.bb10, %ioc_bb16
  %15 = icmp sgt i32 %12, -1
  br i1 %15, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cont17
  %16 = sext i32 %12 to i64
  tail call void @__ioc_report_conversion(i32 232, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cont17
  %call20 = tail call i8* @zhalloc(i32 %12) nounwind
  %17 = icmp sgt i32 %call15, -1
  br i1 %17, label %cont23, label %ioc_bb22

ioc_bb22:                                         ; preds = %cont19
  tail call void @__ioc_report_conversion(i32 233, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb22, %cont19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call20, i8* %8, i32 %call15, i32 1, i1 false)
  %arrayidx = getelementptr inbounds i8* %call20, i32 %call15
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %call26 = tail call i32 @mb_niceformat(i8* %call20, %struct._IO_FILE* %file, i8** null, i32 0)
  br label %while.cond

sw.bb27:                                          ; preds = %if.then6
  %18 = bitcast i8* %ap.addr.0 to i32*
  %ap.next29 = getelementptr i8* %ap.addr.0, i32 4
  %19 = load i32* %18, align 4
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 %19) nounwind
  br label %while.cond

sw.bb31:                                          ; preds = %if.then6
  %call32 = tail call i32 @_IO_putc(i32 37, %struct._IO_FILE* %file) nounwind
  br label %while.cond

sw.bb33:                                          ; preds = %if.then6
  %20 = bitcast i8* %ap.addr.0 to i32*
  %ap.next35 = getelementptr i8* %ap.addr.0, i32 4
  %21 = load i32* %20, align 4
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %call36 = tail call i8* @wcs_nicechar(i32 %21, i32* null, i8** null)
  %call37 = tail call i32 @zputs(i8* %call36, %struct._IO_FILE* %file)
  br label %while.cond

sw.bb38:                                          ; preds = %if.then6
  %22 = bitcast i8* %ap.addr.0 to i32*
  %ap.next40 = getelementptr i8* %ap.addr.0, i32 4
  %23 = load i32* %22, align 4
  %cmp41 = icmp eq i32 %23, 4
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %sw.bb38
  %24 = tail call i32 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 10, i32 1, %struct._IO_FILE* %file)
  store i32 1, i32* @errflag, align 4, !tbaa !0
  br label %return

if.end45:                                         ; preds = %sw.bb38
  %call46 = tail call i8* @strerror(i32 %23) nounwind
  %cmp47 = icmp eq i32 %23, 5
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end45
  %call50 = tail call i32 @fputs(i8* %call46, %struct._IO_FILE* %file) nounwind
  br label %while.cond

if.else51:                                        ; preds = %if.end45
  %25 = load i8* %call46, align 1, !tbaa !1
  %conv53109 = zext i8 %25 to i32
  %call.i = tail call i16** @__ctype_b_loc() nounwind readnone
  %26 = load i16** %call.i, align 4, !tbaa !3
  %arrayidx.i = getelementptr inbounds i16* %26, i32 %conv53109
  %27 = load i16* %arrayidx.i, align 2, !tbaa !5
  %and9.i = and i16 %27, 256
  %tobool.i = icmp eq i16 %and9.i, 0
  br i1 %tobool.i, label %tulower.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.else51
  %__c.off.i.i = add i32 %conv53109, 128
  %28 = icmp ult i32 %__c.off.i.i, 384
  br i1 %28, label %cond.true.i.i, label %tulower.exit

cond.true.i.i:                                    ; preds = %cond.true.i
  %call.i.i = tail call i32** @__ctype_tolower_loc() nounwind readnone
  %29 = load i32** %call.i.i, align 4, !tbaa !3
  %arrayidx.i.i = getelementptr inbounds i32* %29, i32 %conv53109
  %30 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  br label %tulower.exit

tulower.exit:                                     ; preds = %if.else51, %cond.true.i, %cond.true.i.i
  %cond.i = phi i32 [ %conv53109, %if.else51 ], [ %30, %cond.true.i.i ], [ %conv53109, %cond.true.i ]
  %call55 = tail call i32 @fputc(i32 %cond.i, %struct._IO_FILE* %file) nounwind
  %add.ptr = getelementptr inbounds i8* %call46, i32 1
  %call56 = tail call i32 @fputs(i8* %add.ptr, %struct._IO_FILE* %file) nounwind
  br label %while.cond

ioc_bb60:                                         ; preds = %while.cond
  tail call void @__ioc_report_conversion(i32 284, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp62 = icmp eq i8 %3, -125
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %ioc_bb60
  %incdec.ptr64 = getelementptr inbounds i8* %fmt.addr.0, i32 1
  %31 = load i8* %incdec.ptr64, align 1, !tbaa !1
  %conv65 = sext i8 %31 to i32
  %xor = xor i32 %conv65, 32
  br label %cond.end

cond.false:                                       ; preds = %ioc_bb60
  %32 = load i8* %fmt.addr.0, align 1, !tbaa !1
  %conv66 = sext i8 %32 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %fmt.addr.1 = phi i8* [ %incdec.ptr64, %cond.true ], [ %fmt.addr.0, %cond.false ]
  %cond = phi i32 [ %xor, %cond.true ], [ %conv66, %cond.false ]
  %call67 = tail call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %file) nounwind
  %incdec.ptr68 = getelementptr inbounds i8* %fmt.addr.1, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call70 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %file) nounwind
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %file) nounwind
  br label %return

return:                                           ; preds = %while.end, %if.then43
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) nounwind

declare i32 @fputc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define i32 @mb_niceformat(i8* %s, %struct._IO_FILE* %stream, i8** %outstrp, i32 %heap) nounwind {
entry:
  %newl = alloca i32, align 4
  %umlen = alloca i32, align 4
  %c = alloca i32, align 4
  %mbs = alloca %struct.__mbstate_t, align 8
  %tobool = icmp ne i8** %outstrp, null
  br i1 %tobool, label %cont2, label %if.end

cont2:                                            ; preds = %entry
  %call = call i32 @strlen(i8* %s) nounwind readonly
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 5)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %3 = zext i32 %call to i64
  call void @__ioc_report_mul_overflow(i32 3912, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 5, i64 %3, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cont4
  %5 = zext i32 %1 to i64
  call void @__ioc_report_conversion(i32 3912, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %5, i8 0) nounwind
  %6 = sext i32 %1 to i64
  call void @__ioc_report_conversion(i32 3913, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %cont4, %ioc_bb7
  %call9 = call i8* @zalloc(i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %cont8
  %outleft.0 = phi i32 [ %1, %cont8 ], [ 0, %entry ]
  %outstr.0 = phi i8* [ %call9, %cont8 ], [ null, %entry ]
  %call10 = call i8* @ztrdup(i8* %s) nounwind
  call void @untokenize(i8* %call10) nounwind
  %call11 = call i8* @unmetafy(i8* %call10, i32* %umlen)
  %7 = bitcast %struct.__mbstate_t* %mbs to i64*
  store i64 0, i64* %7, align 8
  %tobool35 = icmp eq %struct._IO_FILE* %stream, null
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %ioc_bb62, %cont60, %if.end
  %eol.0.ph = phi i32 [ 0, %if.end ], [ %eol.2, %cont60 ], [ %eol.2, %ioc_bb62 ]
  %outleft.1.ph = phi i32 [ %outleft.0, %if.end ], [ %39, %cont60 ], [ %39, %ioc_bb62 ]
  %ptr.0.ph = phi i8* [ %call11, %if.end ], [ %add.ptr, %cont60 ], [ %add.ptr, %ioc_bb62 ]
  %outstr.1.ph = phi i8* [ %outstr.0, %if.end ], [ %outstr.2, %cont60 ], [ %outstr.2, %ioc_bb62 ]
  %outptr.1.ph = phi i8* [ %outstr.0, %if.end ], [ %add.ptr61, %cont60 ], [ %add.ptr61, %ioc_bb62 ]
  %outalloc.1.ph = phi i32 [ %outleft.0, %if.end ], [ %outalloc.2, %cont60 ], [ %outalloc.2, %ioc_bb62 ]
  %l.0.ph = phi i32 [ 0, %if.end ], [ %21, %cont60 ], [ %21, %ioc_bb62 ]
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %while.cond.outer
  %eol.0 = phi i32 [ %eol.0.ph, %while.cond.outer ], [ %eol.2, %if.end38 ]
  %ptr.0 = phi i8* [ %ptr.0.ph, %while.cond.outer ], [ %add.ptr, %if.end38 ]
  %outstr.1 = phi i8* [ %outstr.1.ph, %while.cond.outer ], [ null, %if.end38 ]
  %l.0 = phi i32 [ %l.0.ph, %while.cond.outer ], [ %21, %if.end38 ]
  %8 = load i32* %umlen, align 4, !tbaa !0
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tobool12 = icmp eq i32 %eol.0, 0
  br i1 %tobool12, label %cond.false, label %cond.end.thread

cond.end.thread:                                  ; preds = %while.body
  call void @__ioc_report_conversion(i32 3929, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -1, i8 1) nounwind
  br label %sw.bb22

cond.false:                                       ; preds = %while.body
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %cond.end, label %ioc_bb19

ioc_bb19:                                         ; preds = %cond.false
  %10 = sext i32 %8 to i64
  call void @__ioc_report_conversion(i32 3929, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ioc_bb19
  %call21 = call i32 @mbrtowc(i32* %c, i8* %ptr.0, i32 %8, %struct.__mbstate_t* %mbs) nounwind
  switch i32 %call21, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb22
    i32 0, label %cont29
  ]

sw.bb:                                            ; preds = %cond.end
  br label %sw.bb22

sw.bb22:                                          ; preds = %cond.end.thread, %cond.end, %sw.bb
  %eol.1 = phi i32 [ 0, %cond.end ], [ 1, %sw.bb ], [ %eol.0, %cond.end.thread ]
  %11 = load i8* %ptr.0, align 1, !tbaa !1
  %conv = sext i8 %11 to i32
  %call23 = call i8* @nicechar(i32 %conv)
  %call24 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0)) nounwind readonly
  store i32 %call24, i32* %newl, align 4, !tbaa !0
  store i64 0, i64* %7, align 8
  br label %sw.epilog

cont29:                                           ; preds = %cond.end
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %cont29
  %cnt.0 = phi i32 [ %call21, %cond.end ], [ 1, %cont29 ]
  %12 = load i32* %c, align 4, !tbaa !0
  %call30 = call i8* @wcs_nicechar(i32 %12, i32* %newl, i8** null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22
  %eol.2 = phi i32 [ 0, %sw.default ], [ %eol.1, %sw.bb22 ]
  %fmt.0 = phi i8* [ %call30, %sw.default ], [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0), %sw.bb22 ]
  %cnt.1 = phi i32 [ %cnt.0, %sw.default ], [ 1, %sw.bb22 ]
  %13 = load i32* %umlen, align 4, !tbaa !0
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 %cnt.1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb31, label %cont32

ioc_bb31:                                         ; preds = %sw.epilog
  %17 = sext i32 %cnt.1 to i64
  %18 = sext i32 %13 to i64
  call void @__ioc_report_sub_overflow(i32 3955, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %18, i64 %17, i8 13) nounwind
  br label %cont32

cont32:                                           ; preds = %sw.epilog, %ioc_bb31
  store i32 %15, i32* %umlen, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %ptr.0, i32 %cnt.1
  %19 = load i32* %newl, align 4, !tbaa !0
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %l.0, i32 %19)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb33, label %cont34

ioc_bb33:                                         ; preds = %cont32
  %23 = zext i32 %19 to i64
  %24 = zext i32 %l.0 to i64
  call void @__ioc_report_add_overflow(i32 3957, i32 7, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %24, i64 %23, i8 5) nounwind
  br label %cont34

cont34:                                           ; preds = %cont32, %ioc_bb33
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %cont34
  %call37 = call i32 @zputs(i8* %fmt.0, %struct._IO_FILE* %stream)
  br label %if.end38

if.end38:                                         ; preds = %cont34, %if.then36
  %tobool39 = icmp eq i8* %outstr.1, null
  br i1 %tobool39, label %while.cond, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 @strlen(i8* %fmt.0) nounwind readonly
  %25 = icmp sgt i32 %call41, -1
  br i1 %25, label %cont44, label %ioc_bb43

ioc_bb43:                                         ; preds = %if.then40
  %26 = zext i32 %call41 to i64
  call void @__ioc_report_conversion(i32 3962, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %26, i8 0) nounwind
  br label %cont44

cont44:                                           ; preds = %ioc_bb43, %if.then40
  %cmp45 = icmp slt i32 %call41, %outleft.1.ph
  br i1 %cmp45, label %if.end57, label %if.then47

if.then47:                                        ; preds = %cont44
  %sub.ptr.lhs.cast = ptrtoint i8* %outptr.1.ph to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %outstr.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %outleft.1.ph, i32 %outalloc.1.ph)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  %30 = sext i32 %outalloc.1.ph to i64
  br i1 %29, label %ioc_bb48, label %cont49

ioc_bb48:                                         ; preds = %if.then47
  %31 = sext i32 %outleft.1.ph to i64
  call void @__ioc_report_add_overflow(i32 3966, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %31, i64 %30, i8 13) nounwind
  br label %cont49

cont49:                                           ; preds = %if.then47, %ioc_bb48
  %32 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %outalloc.1.ph, i32 2)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb50, label %cont51

ioc_bb50:                                         ; preds = %cont49
  call void @__ioc_report_mul_overflow(i32 3967, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @13, i32 0, i32 0), i64 %30, i64 2, i8 13) nounwind
  br label %cont51

cont51:                                           ; preds = %cont49, %ioc_bb50
  %35 = icmp sgt i32 %33, -1
  br i1 %35, label %cont54, label %ioc_bb53

ioc_bb53:                                         ; preds = %cont51
  %36 = sext i32 %33 to i64
  call void @__ioc_report_conversion(i32 3968, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %36, i8 1) nounwind
  br label %cont54

cont54:                                           ; preds = %ioc_bb53, %cont51
  %call55 = call i8* @zrealloc(i8* %outstr.1, i32 %33) nounwind
  %add.ptr56 = getelementptr inbounds i8* %call55, i32 %sub.ptr.sub
  br label %if.end57

if.end57:                                         ; preds = %cont44, %cont54
  %outleft.2 = phi i32 [ %28, %cont54 ], [ %outleft.1.ph, %cont44 ]
  %outstr.2 = phi i8* [ %call55, %cont54 ], [ %outstr.1, %cont44 ]
  %outptr.2 = phi i8* [ %add.ptr56, %cont54 ], [ %outptr.1.ph, %cont44 ]
  %outalloc.2 = phi i32 [ %33, %cont54 ], [ %outalloc.1.ph, %cont44 ]
  %37 = sext i32 %call41 to i64
  br i1 %25, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %if.end57
  call void @__ioc_report_conversion(i32 3971, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %if.end57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %outptr.2, i8* %fmt.0, i32 %call41, i32 1, i1 false)
  %add.ptr61 = getelementptr inbounds i8* %outptr.2, i32 %call41
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %outleft.2, i32 %call41)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb62, label %while.cond.outer

ioc_bb62:                                         ; preds = %cont60
  %41 = sext i32 %outleft.2 to i64
  call void @__ioc_report_sub_overflow(i32 3975, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %41, i64 %37, i8 13) nounwind
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  call void @free(i8* %call10) nounwind
  br i1 %tobool, label %cont68, label %if.end76

cont68:                                           ; preds = %while.end
  store i8 0, i8* %outptr.1.ph, align 1, !tbaa !1
  %tobool69 = icmp eq i32 %heap, 0
  br i1 %tobool69, label %cond.false72, label %cond.true70

cond.true70:                                      ; preds = %cont68
  %call71 = call i8* @dupstring(i8* %outstr.1) nounwind
  br label %cond.end74

cond.false72:                                     ; preds = %cont68
  %call73 = call i8* @ztrdup(i8* %outstr.1) nounwind
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false72, %cond.true70
  %cond75 = phi i8* [ %call71, %cond.true70 ], [ %call73, %cond.false72 ]
  store i8* %cond75, i8** %outstrp, align 4, !tbaa !3
  call void @free(i8* %outstr.1) nounwind
  br label %if.end76

if.end76:                                         ; preds = %cond.end74, %while.end
  ret i32 %l.0
}

define i32 @metalen(i8* nocapture %s, i32 %len) nounwind {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %cont5, %entry
  %s.addr.0.ph = phi i8* [ %s, %entry ], [ %incdec.ptr6, %cont5 ]
  %len.addr.0.ph = phi i32 [ %len, %entry ], [ %1, %cont5 ]
  %mlen.0.ph = phi i32 [ %len, %entry ], [ %6, %cont5 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %s.addr.0.ph, %while.cond.outer ]
  %len.addr.0 = phi i32 [ %1, %while.body ], [ %len.addr.0.ph, %while.cond.outer ]
  %0 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.0, i32 -1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.cond
  %3 = sext i32 %len.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 3691, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %3, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.cond, %ioc_bb
  %tobool = icmp eq i32 %len.addr.0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %cont
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %4 = load i8* %s.addr.0, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 3692, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %4, -125
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mlen.0.ph, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.then
  %8 = sext i32 %mlen.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 3693, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %if.then, %ioc_bb4
  %incdec.ptr6 = getelementptr inbounds i8* %s.addr.0, i32 2
  br label %while.cond.outer

while.end:                                        ; preds = %cont
  ret i32 %mlen.0.ph
}

declare i8* @zhalloc(i32)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

define void @mb_metacharinit() nounwind {
entry:
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  ret void
}

define i32 @zputs(i8* nocapture %s, %struct._IO_FILE* nocapture %stream) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %0, 0
  br i1 %tobool28, label %return, label %ioc_bb

ioc_bb:                                           ; preds = %entry, %while.cond.backedge
  %1 = phi i8 [ %7, %while.cond.backedge ], [ %0, %entry ]
  %s.addr.029 = phi i8* [ %s.addr.0.be, %while.cond.backedge ], [ %s, %entry ]
  tail call void @__ioc_report_conversion(i32 3849, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %1, -125
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ioc_bb
  %incdec.ptr = getelementptr inbounds i8* %s.addr.029, i32 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv2 = sext i8 %2 to i32
  %xor = xor i32 %conv2, 32
  br label %if.end15

if.else:                                          ; preds = %ioc_bb
  %3 = load i8* %s.addr.029, align 1, !tbaa !1
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.else
  %5 = sext i8 %3 to i64
  tail call void @__ioc_report_conversion(i32 3851, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.else
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %6 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %6, 16
  %tobool10 = icmp eq i16 %and, 0
  br i1 %tobool10, label %if.else13, label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont4, %if.end15
  %s.addr.1.pn = phi i8* [ %s.addr.1, %if.end15 ], [ %s.addr.029, %cont4 ]
  %s.addr.0.be = getelementptr inbounds i8* %s.addr.1.pn, i32 1
  %7 = load i8* %s.addr.0.be, align 1, !tbaa !1
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %return, label %ioc_bb

if.else13:                                        ; preds = %cont4
  %8 = load i8* %s.addr.029, align 1, !tbaa !1
  %conv14 = sext i8 %8 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then
  %s.addr.1 = phi i8* [ %incdec.ptr, %if.then ], [ %s.addr.029, %if.else13 ]
  %c.0 = phi i32 [ %xor, %if.then ], [ %conv14, %if.else13 ]
  %call = tail call i32 @fputc(i32 %c.0, %struct._IO_FILE* %stream) nounwind
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %return, label %while.cond.backedge

return:                                           ; preds = %while.cond.backedge, %if.end15, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end15 ], [ 0, %while.cond.backedge ]
  ret i32 %retval.0
}

define i8* @wcs_nicechar(i32 %c, i32* %widthp, i8** %swidep) nounwind {
entry:
  %call = call i32 @__ctype_get_mb_cur_max() nounwind
  %vla = alloca i8, i32 %call, align 1
  %call3 = call i32 @__ctype_get_mb_cur_max() nounwind
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call3, i32 2)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %entry
  %3 = zext i32 %call3 to i64
  call void @__ioc_report_mul_overflow(i32 440, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 2, i64 %3, i8 5) nounwind
  br label %cont5

cont5:                                            ; preds = %entry, %ioc_bb4
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 12)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  %7 = zext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 440, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 12, i64 %7, i8 5) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  %8 = icmp sgt i32 %5, -1
  br i1 %8, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %cont7
  %9 = zext i32 %5 to i64
  call void @__ioc_report_conversion(i32 440, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %9, i8 0) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %cont7
  %10 = load i32* @wcs_nicechar.bufalloc, align 4, !tbaa !0
  %cmp = icmp eq i32 %10, %5
  br i1 %cmp, label %cont9.if.end_crit_edge, label %if.then

cont9.if.end_crit_edge:                           ; preds = %cont9
  %.pre = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  br label %if.end

if.then:                                          ; preds = %cont9
  store i32 %5, i32* @wcs_nicechar.bufalloc, align 4, !tbaa !0
  %11 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  br i1 %8, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %if.then
  %12 = sext i32 %5 to i64
  call void @__ioc_report_conversion(i32 443, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %if.then
  %call12 = call i8* @zrealloc(i8* %11, i32 %5) nounwind
  store i8* %call12, i8** @wcs_nicechar.buf, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont9.if.end_crit_edge, %cont11
  %13 = phi i8* [ %.pre, %cont9.if.end_crit_edge ], [ %call12, %cont11 ]
  %14 = sext i32 %c to i64
  %15 = icmp sgt i32 %c, -1
  br i1 %15, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %if.end
  call void @__ioc_report_conversion(i32 446, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %if.end
  %call16 = call i32 @iswprint(i32 %c) nounwind
  %tobool = icmp eq i32 %call16, 0
  br i1 %tobool, label %land.lhs.true, label %if.then57

land.lhs.true:                                    ; preds = %cont15
  %cmp17 = icmp sgt i32 %c, 127
  %16 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 127), align 1, !tbaa !1
  %tobool18 = icmp ne i8 %16, 0
  %or.cond = and i1 %cmp17, %tobool18
  br i1 %or.cond, label %if.then57, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  switch i32 %c, label %if.else35 [
    i32 127, label %cont23
    i32 10, label %cont27
    i32 9, label %cont33
  ]

cont23:                                           ; preds = %if.then19
  %incdec.ptr = getelementptr inbounds i8* %13, i32 1
  store i8 94, i8* %13, align 1, !tbaa !1
  br label %if.then57

cont27:                                           ; preds = %if.then19
  %incdec.ptr28 = getelementptr inbounds i8* %13, i32 1
  store i8 92, i8* %13, align 1, !tbaa !1
  br label %if.then57

cont33:                                           ; preds = %if.then19
  %incdec.ptr34 = getelementptr inbounds i8* %13, i32 1
  store i8 92, i8* %13, align 1, !tbaa !1
  br label %if.then57

if.else35:                                        ; preds = %if.then19
  %cmp36 = icmp slt i32 %c, 32
  br i1 %cmp36, label %cont39, label %cont55

cont39:                                           ; preds = %if.else35
  %incdec.ptr40 = getelementptr inbounds i8* %13, i32 1
  store i8 94, i8* %13, align 1, !tbaa !1
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %c, i32 64)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb41, label %if.then57

ioc_bb41:                                         ; preds = %cont39
  call void @__ioc_report_add_overflow(i32 461, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %14, i64 64, i8 13) nounwind
  br label %if.then57

cont55:                                           ; preds = %if.else35
  br i1 %cmp17, label %if.then66, label %if.then57

if.then57:                                        ; preds = %ioc_bb41, %cont39, %cont33, %cont27, %cont23, %land.lhs.true, %cont15, %cont55
  %c.addr.0207 = phi i32 [ %c, %cont55 ], [ %c, %cont15 ], [ %c, %land.lhs.true ], [ 63, %cont23 ], [ 110, %cont27 ], [ 116, %cont33 ], [ %18, %cont39 ], [ %18, %ioc_bb41 ]
  %s.0205 = phi i8* [ %13, %cont55 ], [ %13, %cont15 ], [ %13, %land.lhs.true ], [ %incdec.ptr, %cont23 ], [ %incdec.ptr28, %cont27 ], [ %incdec.ptr34, %cont33 ], [ %incdec.ptr40, %cont39 ], [ %incdec.ptr40, %ioc_bb41 ]
  %call58 = call i32 @wcrtomb(i8* %vla, i32 %c.addr.0207, %struct.__mbstate_t* @mb_shiftstate) nounwind
  %20 = icmp sgt i32 %call58, -1
  br i1 %20, label %if.end110, label %cont64

cont64:                                           ; preds = %if.then57
  %21 = zext i32 %call58 to i64
  call void @__ioc_report_conversion(i32 468, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %21, i8 0) nounwind
  %cmp65 = icmp eq i32 %call58, -1
  br i1 %cmp65, label %if.then66, label %if.end110

if.then66:                                        ; preds = %cont55, %cont64
  %c.addr.0208219 = phi i32 [ %c.addr.0207, %cont64 ], [ %c, %cont55 ]
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %cmp67 = icmp sgt i32 %c.addr.0208219, 65535
  br i1 %cmp67, label %cont71, label %if.else78

cont71:                                           ; preds = %if.then66
  %22 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  %call72 = call i32 (i8*, i8*, ...)* @sprintf(i8* %22, i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 %c.addr.0208219) nounwind
  %tobool73 = icmp eq i32* %widthp, null
  br i1 %tobool73, label %if.end105, label %cont76

cont76:                                           ; preds = %cont71
  store i32 10, i32* %widthp, align 4, !tbaa !0
  br label %if.end105

if.else78:                                        ; preds = %if.then66
  %cmp79 = icmp sgt i32 %c.addr.0208219, 255
  %23 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  br i1 %cmp79, label %cont83, label %if.else90

cont83:                                           ; preds = %if.else78
  %call84 = call i32 (i8*, i8*, ...)* @sprintf(i8* %23, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 %c.addr.0208219) nounwind
  %tobool85 = icmp eq i32* %widthp, null
  br i1 %tobool85, label %if.end105, label %cont88

cont88:                                           ; preds = %cont83
  store i32 6, i32* %widthp, align 4, !tbaa !0
  br label %if.end105

if.else90:                                        ; preds = %if.else78
  %call91 = call i8* @nicechar(i32 %c.addr.0208219)
  %call92 = call i8* @strcpy(i8* %23, i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0)) nounwind
  %tobool93 = icmp eq i32* %widthp, null
  br i1 %tobool93, label %if.end99, label %if.then94

if.then94:                                        ; preds = %if.else90
  %24 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  %25 = load i8* %24, align 1, !tbaa !1
  %tobool8.i = icmp eq i8 %25, 0
  br i1 %tobool8.i, label %cont98, label %for.body.i

for.body.i:                                       ; preds = %if.then94, %for.cond.backedge.i
  %26 = phi i8 [ %30, %for.cond.backedge.i ], [ %25, %if.then94 ]
  %l.010.i = phi i32 [ %28, %for.cond.backedge.i ], [ 0, %if.then94 ]
  %s.addr.09.i = phi i8* [ %s.addr.1.i, %for.cond.backedge.i ], [ %24, %if.then94 ]
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.09.i, i32 1
  call void @__ioc_report_conversion(i32 3806, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp.i = icmp eq i8 %26, -125
  %incdec.ptr2.i = getelementptr inbounds i8* %s.addr.09.i, i32 2
  %s.addr.1.i = select i1 %cmp.i, i8* %incdec.ptr2.i, i8* %incdec.ptr.i
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.010.i, i32 1) nounwind
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb3.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb3.i, %for.body.i
  %30 = load i8* %s.addr.1.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %30, 0
  br i1 %tobool.i, label %ztrlen.exit, label %for.body.i

ioc_bb3.i:                                        ; preds = %for.body.i
  %31 = sext i32 %l.010.i to i64
  call void @__ioc_report_add_overflow(i32 3805, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

ztrlen.exit:                                      ; preds = %for.cond.backedge.i
  %32 = icmp sgt i32 %28, -1
  br i1 %32, label %cont98, label %ioc_bb97

ioc_bb97:                                         ; preds = %ztrlen.exit
  %33 = sext i32 %28 to i64
  call void @__ioc_report_conversion(i32 495, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont98

cont98:                                           ; preds = %if.then94, %ioc_bb97, %ztrlen.exit
  %l.0.lcssa.i213 = phi i32 [ %28, %ioc_bb97 ], [ %28, %ztrlen.exit ], [ 0, %if.then94 ]
  store i32 %l.0.lcssa.i213, i32* %widthp, align 4, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.else90, %cont98
  %tobool100 = icmp eq i8** %swidep, null
  br i1 %tobool100, label %cleanup, label %if.then101

if.then101:                                       ; preds = %if.end99
  %34 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  %call102 = call i32 @strlen(i8* %34) nounwind readonly
  %add.ptr = getelementptr inbounds i8* %34, i32 %call102
  store i8* %add.ptr, i8** %swidep, align 4, !tbaa !3
  br label %cleanup

if.end105:                                        ; preds = %cont71, %cont83, %cont88, %cont76
  %tobool106 = icmp eq i8** %swidep, null
  br i1 %tobool106, label %cleanup, label %if.then107

if.then107:                                       ; preds = %if.end105
  %35 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  %36 = load i32* %widthp, align 4, !tbaa !0
  %add.ptr108 = getelementptr inbounds i8* %35, i32 %36
  store i8* %add.ptr108, i8** %swidep, align 4, !tbaa !3
  br label %cleanup

if.end110:                                        ; preds = %if.then57, %cont64
  %tobool111 = icmp eq i32* %widthp, null
  br i1 %tobool111, label %if.end128, label %if.then112

if.then112:                                       ; preds = %if.end110
  %call113 = call i32 @wcwidth(i32 %c.addr.0207) nounwind
  %37 = load i8** @wcs_nicechar.buf, align 4, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %s.0205 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %38, label %cont116, label %ioc_bb115

ioc_bb115:                                        ; preds = %if.then112
  %39 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 506, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont116

cont116:                                          ; preds = %ioc_bb115, %if.then112
  store i32 %sub.ptr.sub, i32* %widthp, align 4, !tbaa !0
  %cmp117 = icmp sgt i32 %call113, -1
  br i1 %cmp117, label %cont121, label %if.else124

cont121:                                          ; preds = %cont116
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %call113)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb122, label %cont123

ioc_bb122:                                        ; preds = %cont121
  %43 = zext i32 %call113 to i64
  %44 = zext i32 %sub.ptr.sub to i64
  call void @__ioc_report_add_overflow(i32 508, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %44, i64 %43, i8 5) nounwind
  br label %cont123

cont123:                                          ; preds = %cont121, %ioc_bb122
  store i32 %41, i32* %widthp, align 4, !tbaa !0
  br label %if.end128

if.else124:                                       ; preds = %cont116
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb125, label %cont126

ioc_bb125:                                        ; preds = %if.else124
  %48 = zext i32 %sub.ptr.sub to i64
  call void @__ioc_report_add_overflow(i32 510, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %48, i64 1, i8 5) nounwind
  br label %cont126

cont126:                                          ; preds = %if.else124, %ioc_bb125
  store i32 %46, i32* %widthp, align 4, !tbaa !0
  br label %if.end128

if.end128:                                        ; preds = %if.end110, %cont123, %cont126
  %tobool129 = icmp eq i8** %swidep, null
  br i1 %tobool129, label %for.cond.preheader, label %if.then130

if.then130:                                       ; preds = %if.end128
  store i8* %s.0205, i8** %swidep, align 4, !tbaa !3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end128, %if.then130
  %tobool132214 = icmp eq i32 %call58, 0
  br i1 %tobool132214, label %cont157, label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %ret.2217 = phi i32 [ %call58, %for.cond.preheader ], [ %58, %for.cond.backedge ]
  %mbptr.0216 = phi i8* [ %vla, %for.cond.preheader ], [ %incdec.ptr153, %for.cond.backedge ]
  %s.1215 = phi i8* [ %s.0205, %for.cond.preheader ], [ %incdec.ptr152, %for.cond.backedge ]
  %49 = load i8* %mbptr.0216, align 1, !tbaa !1
  %50 = icmp sgt i8 %49, -1
  br i1 %50, label %cont135, label %ioc_bb134

ioc_bb134:                                        ; preds = %for.body
  %51 = sext i8 %49 to i64
  call void @__ioc_report_conversion(i32 516, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %51, i8 1) nounwind
  br label %cont135

cont135:                                          ; preds = %ioc_bb134, %for.body
  %idxprom = zext i8 %49 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %52 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %52, 4096
  %tobool140 = icmp eq i16 %and, 0
  br i1 %tobool140, label %if.else150, label %ioc_bb142

ioc_bb142:                                        ; preds = %cont135
  call void @__ioc_report_conversion(i32 517, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr144 = getelementptr inbounds i8* %s.1215, i32 1
  store i8 -125, i8* %s.1215, align 1, !tbaa !1
  %53 = load i8* %mbptr.0216, align 1, !tbaa !1
  %conv145 = sext i8 %53 to i32
  %xor = xor i32 %conv145, 32
  %xor.off = add i32 %xor, 128
  %54 = icmp ult i32 %xor.off, 256
  br i1 %54, label %cont148, label %ioc_bb147

ioc_bb147:                                        ; preds = %ioc_bb142
  %55 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 519, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %55, i8 1) nounwind
  br label %cont148

cont148:                                          ; preds = %ioc_bb147, %ioc_bb142
  %conv149 = trunc i32 %xor to i8
  store i8 %conv149, i8* %incdec.ptr144, align 1, !tbaa !1
  br label %for.inc

if.else150:                                       ; preds = %cont135
  %56 = load i8* %mbptr.0216, align 1, !tbaa !1
  store i8 %56, i8* %s.1215, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cont148, %if.else150
  %s.2 = phi i8* [ %incdec.ptr144, %cont148 ], [ %s.1215, %if.else150 ]
  %incdec.ptr152 = getelementptr inbounds i8* %s.2, i32 1
  %incdec.ptr153 = getelementptr inbounds i8* %mbptr.0216, i32 1
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ret.2217, i32 -1)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb154, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb154
  %tobool132 = icmp eq i32 %58, 0
  br i1 %tobool132, label %cont157, label %for.body

ioc_bb154:                                        ; preds = %for.inc
  %60 = sext i32 %ret.2217 to i64
  call void @__ioc_report_add_overflow(i32 514, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %60, i64 -1, i8 13) nounwind
  br label %for.cond.backedge

cont157:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %s.1.lcssa = phi i8* [ %s.0205, %for.cond.preheader ], [ %incdec.ptr152, %for.cond.backedge ]
  store i8 0, i8* %s.1.lcssa, align 1, !tbaa !1
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.end105, %if.then101, %if.end99, %cont157
  %retval.0 = load i8** @wcs_nicechar.buf, align 4
  ret i8* %retval.0
}

declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) nounwind

declare i8* @strerror(i32) nounwind

define i32 @tulower(i32 %c) nounwind readonly {
entry:
  %and = and i32 %c, 255
  %call = tail call i16** @__ctype_b_loc() nounwind readnone
  %0 = load i16** %call, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %0, i32 %and
  %1 = load i16* %arrayidx, align 2, !tbaa !5
  %and9 = and i16 %1, 256
  %tobool = icmp eq i16 %and9, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %__c.off.i = add i32 %and, 128
  %2 = icmp ult i32 %__c.off.i, 384
  br i1 %2, label %cond.true.i, label %cond.end

cond.true.i:                                      ; preds = %cond.true
  %call.i = tail call i32** @__ctype_tolower_loc() nounwind readnone
  %3 = load i32** %call.i, align 4, !tbaa !3
  %arrayidx.i = getelementptr inbounds i32* %3, i32 %and
  %4 = load i32* %arrayidx.i, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.true, %entry
  %cond = phi i32 [ %and, %entry ], [ %4, %cond.true.i ], [ %and, %cond.true ]
  ret i32 %cond
}

declare i32 @fflush(%struct._IO_FILE* nocapture) nounwind

define i32 @putraw(i32 %c) nounwind {
entry:
  %0 = load %struct._IO_FILE** @stdout, align 4, !tbaa !3
  %call = tail call i32 @_IO_putc(i32 %c, %struct._IO_FILE* %0) nounwind
  ret i32 0
}

define i32 @putshout(i32 %c) nounwind {
entry:
  %0 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call = tail call i32 @_IO_putc(i32 %c, %struct._IO_FILE* %0) nounwind
  ret i32 0
}

define i8* @nicechar(i32 %c) nounwind {
entry:
  %and = and i32 %c, 255
  %call = tail call i16** @__ctype_b_loc() nounwind readnone
  %0 = load i16** %call, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %0, i32 %and
  %1 = load i16* %arrayidx, align 2, !tbaa !5
  %and9 = and i16 %1, 16384
  %tobool = icmp eq i16 %and9, 0
  br i1 %tobool, label %if.end, label %done.thread

if.end:                                           ; preds = %entry
  %and10 = and i32 %c, 128
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end42, label %if.then12

if.then12:                                        ; preds = %if.end
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 127), align 1, !tbaa !1
  %tobool13 = icmp eq i8 %2, 0
  br i1 %tobool13, label %cont17, label %done.thread

cont17:                                           ; preds = %if.then12
  store i8 92, i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0), align 1, !tbaa !1
  store i8 77, i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 1), align 1, !tbaa !1
  store i8 45, i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 2), align 1, !tbaa !1
  %and24 = and i32 %c, 127
  %3 = load i16** %call, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16* %3, i32 %and24
  %4 = load i16* %arrayidx26, align 2, !tbaa !5
  %and38 = and i16 %4, 16384
  %tobool39 = icmp eq i16 %and38, 0
  br i1 %tobool39, label %if.end42, label %done.thread

if.end42:                                         ; preds = %cont17, %if.end
  %c.addr.0 = phi i32 [ %and24, %cont17 ], [ %and, %if.end ]
  %s.0 = phi i8* [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 3), %cont17 ], [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0), %if.end ]
  switch i32 %c.addr.0, label %if.else61 [
    i32 127, label %cont46
    i32 10, label %cont52
    i32 9, label %cont59
  ]

cont46:                                           ; preds = %if.end42
  %incdec.ptr47 = getelementptr inbounds i8* %s.0, i32 1
  store i8 94, i8* %s.0, align 1, !tbaa !1
  br label %done.thread

cont52:                                           ; preds = %if.end42
  %incdec.ptr53 = getelementptr inbounds i8* %s.0, i32 1
  store i8 92, i8* %s.0, align 1, !tbaa !1
  br label %done.thread

cont59:                                           ; preds = %if.end42
  %incdec.ptr60 = getelementptr inbounds i8* %s.0, i32 1
  store i8 92, i8* %s.0, align 1, !tbaa !1
  br label %done.thread

if.else61:                                        ; preds = %if.end42
  %cmp62 = icmp ult i32 %c.addr.0, 32
  br i1 %cmp62, label %cont66, label %done.thread

cont66:                                           ; preds = %if.else61
  %incdec.ptr67 = getelementptr inbounds i8* %s.0, i32 1
  store i8 94, i8* %s.0, align 1, !tbaa !1
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %c.addr.0, i32 64)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb68, label %done

ioc_bb68:                                         ; preds = %cont66
  %8 = zext i32 %c.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 359, i32 7, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %8, i64 64, i8 13) nounwind
  br label %done

done.thread:                                      ; preds = %entry, %if.then12, %cont17, %cont46, %cont52, %cont59, %if.else61
  %c.addr.1.ph = phi i32 [ %and, %entry ], [ %and, %if.then12 ], [ %and24, %cont17 ], [ 63, %cont46 ], [ 110, %cont52 ], [ 116, %cont59 ], [ %c.addr.0, %if.else61 ]
  %s.1.ph = phi i8* [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0), %entry ], [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0), %if.then12 ], [ getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 3), %cont17 ], [ %incdec.ptr47, %cont46 ], [ %incdec.ptr53, %cont52 ], [ %incdec.ptr60, %cont59 ], [ %s.0, %if.else61 ]
  %9 = sext i32 %c.addr.1.ph to i64
  br label %cont75

done:                                             ; preds = %ioc_bb68, %cont66
  %10 = sext i32 %6 to i64
  %11 = icmp ult i32 %6, 256
  br i1 %11, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %done
  tail call void @__ioc_report_conversion(i32 362, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %done.thread, %ioc_bb74, %done
  %12 = phi i64 [ %9, %done.thread ], [ %10, %ioc_bb74 ], [ %10, %done ]
  %s.1129 = phi i8* [ %s.1.ph, %done.thread ], [ %incdec.ptr67, %ioc_bb74 ], [ %incdec.ptr67, %done ]
  %c.addr.1128 = phi i32 [ %c.addr.1.ph, %done.thread ], [ %6, %ioc_bb74 ], [ %6, %done ]
  %conv76 = trunc i32 %c.addr.1128 to i8
  %idxprom = and i32 %c.addr.1128, 255
  %arrayidx77 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %13 = load i16* %arrayidx77, align 2, !tbaa !5
  %and83 = and i16 %13, 4096
  %tobool84 = icmp eq i16 %and83, 0
  br i1 %tobool84, label %if.else95, label %ioc_bb86

ioc_bb86:                                         ; preds = %cont75
  tail call void @__ioc_report_conversion(i32 363, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr88 = getelementptr inbounds i8* %s.1129, i32 1
  store i8 -125, i8* %s.1129, align 1, !tbaa !1
  %xor = xor i32 %c.addr.1128, 32
  %xor.off = add i32 %xor, 128
  %14 = icmp ult i32 %xor.off, 256
  br i1 %14, label %cont92, label %ioc_bb91

ioc_bb91:                                         ; preds = %ioc_bb86
  %15 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 364, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont92

cont92:                                           ; preds = %ioc_bb91, %ioc_bb86
  %conv93 = trunc i32 %xor to i8
  store i8 %conv93, i8* %incdec.ptr88, align 1, !tbaa !1
  br label %cont104

if.else95:                                        ; preds = %cont75
  %c.addr.1.off = add i32 %c.addr.1128, 128
  %16 = icmp ult i32 %c.addr.1.off, 256
  br i1 %16, label %cont99, label %ioc_bb98

ioc_bb98:                                         ; preds = %if.else95
  tail call void @__ioc_report_conversion(i32 367, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont99

cont99:                                           ; preds = %ioc_bb98, %if.else95
  store i8 %conv76, i8* %s.1129, align 1, !tbaa !1
  br label %cont104

cont104:                                          ; preds = %cont92, %cont99
  %incdec.ptr88.pn = phi i8* [ %incdec.ptr88, %cont92 ], [ %s.1129, %cont99 ]
  %s.2 = getelementptr inbounds i8* %incdec.ptr88.pn, i32 1
  store i8 0, i8* %s.2, align 1, !tbaa !1
  ret i8* getelementptr inbounds ([6 x i8]* @nicechar.buf, i32 0, i32 0)
}

declare i16** @__ctype_b_loc() nounwind readnone

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @__ctype_get_mb_cur_max() nounwind

declare i8* @llvm.stacksave() nounwind

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @zrealloc(i8*, i32)

declare i32 @iswprint(i32) nounwind

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @wcrtomb(i8*, i32, %struct.__mbstate_t*) nounwind

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare i8* @strcpy(i8*, i8* nocapture) nounwind

define i32 @ztrlen(i8* nocapture %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool8 = icmp eq i8 %0, 0
  br i1 %tobool8, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.cond.backedge
  %1 = phi i8 [ %5, %for.cond.backedge ], [ %0, %entry ]
  %l.010 = phi i32 [ %3, %for.cond.backedge ], [ 0, %entry ]
  %s.addr.09 = phi i8* [ %s.addr.1, %for.cond.backedge ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.09, i32 1
  tail call void @__ioc_report_conversion(i32 3806, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %1, -125
  %incdec.ptr2 = getelementptr inbounds i8* %s.addr.09, i32 2
  %s.addr.1 = select i1 %cmp, i8* %incdec.ptr2, i8* %incdec.ptr
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.010, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb3, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb3
  %5 = load i8* %s.addr.1, align 1, !tbaa !1
  %tobool = icmp eq i8 %5, 0
  br i1 %tobool, label %for.end, label %for.body

ioc_bb3:                                          ; preds = %for.body
  %6 = sext i32 %l.010 to i64
  tail call void @__ioc_report_add_overflow(i32 3805, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  %l.0.lcssa = phi i32 [ 0, %entry ], [ %3, %for.cond.backedge ]
  ret i32 %l.0.lcssa
}

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @wcwidth(i32) nounwind

declare void @llvm.stackrestore(i8*) nounwind

define i32 @zwcwidth(i32 %wc) nounwind {
entry:
  %cmp = icmp ne i32 %wc, -1
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool = icmp ne i8 %0, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = icmp sgt i32 %wc, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.end
  %2 = zext i32 %wc to i64
  tail call void @__ioc_report_conversion(i32 536, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.end
  %call = tail call i32 @wcwidth(i32 %wc) nounwind
  %cmp1 = icmp slt i32 %call, 0
  %.call = select i1 %cmp1, i32 1, i32 %call
  br label %return

return:                                           ; preds = %cont, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %.call, %cont ]
  ret i32 %retval.0
}

define i8* @pathprog(i8* %prog, i8** %namep) nounwind {
entry:
  %st = alloca %struct.stat, align 4
  %0 = load i8*** @path, align 4, !tbaa !3
  %1 = load i8** %0, align 4, !tbaa !3
  %tobool60 = icmp eq i8* %1, null
  br i1 %tobool60, label %cont9, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i8* [ %7, %for.inc ], [ %1, %entry ]
  %pp.062 = phi i8** [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %ppmaxlen.061 = phi i8 [ %ppmaxlen.1, %for.inc ], [ 0, %entry ]
  %call = call i32 @strlen(i8* %2) nounwind readonly
  %3 = icmp sgt i32 %call, -1
  br i1 %3, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %for.body
  %4 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 563, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %4, i8 0) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %for.body
  %conv = sext i8 %ppmaxlen.061 to i32
  %cmp = icmp sgt i32 %call, %conv
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %cont2
  %call.off = add i32 %call, 128
  %5 = icmp ult i32 %call.off, 256
  br i1 %5, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.then
  %6 = sext i32 %call to i64
  call void @__ioc_report_conversion(i32 565, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %if.then
  %conv6 = trunc i32 %call to i8
  br label %for.inc

for.inc:                                          ; preds = %cont2, %cont5
  %ppmaxlen.1 = phi i8 [ %conv6, %cont5 ], [ %ppmaxlen.061, %cont2 ]
  %incdec.ptr = getelementptr inbounds i8** %pp.062, i32 1
  %7 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool = icmp eq i8* %7, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %8 = icmp sgt i8 %ppmaxlen.1, -1
  br i1 %8, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %for.end
  %9 = sext i8 %ppmaxlen.1 to i64
  call void @__ioc_report_conversion(i32 567, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %entry, %ioc_bb8, %for.end
  %ppmaxlen.0.lcssa64 = phi i8 [ %ppmaxlen.1, %ioc_bb8 ], [ %ppmaxlen.1, %for.end ], [ 0, %entry ]
  %conv10 = sext i8 %ppmaxlen.0.lcssa64 to i32
  %call11 = call i32 @strlen(i8* %prog) nounwind readonly
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv10, i32 %call11)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb12, label %cont15

ioc_bb12:                                         ; preds = %cont9
  %13 = zext i32 %call11 to i64
  %14 = zext i32 %conv10 to i64
  call void @__ioc_report_add_overflow(i32 567, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %14, i64 %13, i8 5) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb12, %cont9
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 2)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %18 = zext i32 %11 to i64
  call void @__ioc_report_add_overflow(i32 567, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %18, i64 2, i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  %call18 = call i8* @zhalloc(i32 %16) nounwind
  %19 = load i8*** @path, align 4, !tbaa !3
  %20 = load i8** %19, align 4, !tbaa !3
  %tobool2058 = icmp eq i8* %20, null
  br i1 %tobool2058, label %return, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %cont17
  %21 = bitcast %struct.stat* %st to %struct.stat64*
  %st_mode = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc42
  %22 = phi i8* [ %20, %for.body21.lr.ph ], [ %24, %for.inc42 ]
  %pp.159 = phi i8** [ %19, %for.body21.lr.ph ], [ %incdec.ptr43, %for.inc42 ]
  %call22 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call18, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* %22, i8* %prog) nounwind
  %call23 = call i8* @unmeta(i8* %call18)
  %call24 = call i32 @access(i8* %call23, i32 0) nounwind
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %land.lhs.true, label %for.inc42

land.lhs.true:                                    ; preds = %for.body21
  %call.i = call i32 @__xstat64(i32 3, i8* %call23, %struct.stat64* %21) nounwind
  %cmp28 = icmp sgt i32 %call.i, -1
  br i1 %cmp28, label %cont34, label %for.inc42

cont34:                                           ; preds = %land.lhs.true
  %23 = load i32* %st_mode, align 4, !tbaa !0
  %and = and i32 %23, 61440
  %cmp35 = icmp eq i32 %and, 16384
  br i1 %cmp35, label %for.inc42, label %if.then37

if.then37:                                        ; preds = %cont34
  %tobool38 = icmp eq i8** %namep, null
  br i1 %tobool38, label %return, label %if.then39

if.then39:                                        ; preds = %if.then37
  store i8* %call18, i8** %namep, align 4, !tbaa !3
  br label %return

for.inc42:                                        ; preds = %for.body21, %land.lhs.true, %cont34
  %incdec.ptr43 = getelementptr inbounds i8** %pp.159, i32 1
  %24 = load i8** %incdec.ptr43, align 4, !tbaa !3
  %tobool20 = icmp eq i8* %24, null
  br i1 %tobool20, label %return, label %for.body21

return:                                           ; preds = %cont17, %for.inc42, %if.then39, %if.then37
  %retval.0 = phi i8* [ %call23, %if.then37 ], [ %call23, %if.then39 ], [ null, %for.inc42 ], [ null, %cont17 ]
  ret i8* %retval.0
}

define i8* @unmeta(i8* %file_name) nounwind {
entry:
  %0 = load i8* %file_name, align 1, !tbaa !1
  %tobool75 = icmp eq i8 %0, 0
  br i1 %tobool75, label %if.then3, label %ioc_bb

ioc_bb:                                           ; preds = %entry, %ioc_bb
  %1 = phi i8 [ %2, %ioc_bb ], [ %0, %entry ]
  %meta.077 = phi i32 [ %meta.1, %ioc_bb ], [ 0, %entry ]
  %t.076 = phi i8* [ %incdec.ptr, %ioc_bb ], [ %file_name, %entry ]
  tail call void @__ioc_report_conversion(i32 3717, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %1, -125
  %meta.1 = select i1 %cmp, i32 1, i32 %meta.077
  %incdec.ptr = getelementptr inbounds i8* %t.076, i32 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %for.end, label %ioc_bb

for.end:                                          ; preds = %ioc_bb
  %phitmp = icmp eq i32 %meta.1, 0
  br i1 %phitmp, label %if.then3, label %if.end10

if.then3:                                         ; preds = %entry, %for.end
  %3 = load i32* @unmeta.sz, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %3, 16384
  br i1 %cmp6, label %if.then8, label %return

if.then8:                                         ; preds = %if.then3
  %4 = load i8** @unmeta.fn, align 4, !tbaa !3
  tail call void @zfree(i8* %4, i32 %3) nounwind
  store i8* null, i8** @unmeta.fn, align 4, !tbaa !3
  store i32 0, i32* @unmeta.sz, align 4, !tbaa !0
  br label %return

if.end10:                                         ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %file_name to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %if.end10
  %8 = sext i32 %sub.ptr.sub to i64
  tail call void @__ioc_report_add_overflow(i32 3731, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %if.end10, %ioc_bb11
  %9 = load i8** @unmeta.fn, align 4, !tbaa !3
  %tobool13 = icmp eq i8* %9, null
  br i1 %tobool13, label %if.end28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont12
  %10 = load i32* @unmeta.sz, align 4, !tbaa !0
  %cmp14 = icmp sgt i32 %6, %10
  br i1 %cmp14, label %if.then27, label %cont18

cont18:                                           ; preds = %lor.lhs.false
  %cmp19 = icmp sgt i32 %10, 16384
  %cmp23 = icmp slt i32 %6, 16385
  %or.cond = and i1 %cmp19, %cmp23
  br i1 %or.cond, label %if.then27, label %if.end34

if.then27:                                        ; preds = %lor.lhs.false, %cont18
  tail call void @zfree(i8* %9, i32 %10) nounwind
  br label %if.end28

if.end28:                                         ; preds = %cont12, %if.then27
  store i32 %6, i32* @unmeta.sz, align 4, !tbaa !0
  %11 = icmp sgt i32 %6, -1
  br i1 %11, label %cont30, label %ioc_bb29

ioc_bb29:                                         ; preds = %if.end28
  %12 = sext i32 %6 to i64
  tail call void @__ioc_report_conversion(i32 3744, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont30

cont30:                                           ; preds = %ioc_bb29, %if.end28
  %call = tail call i8* @zalloc(i32 %6) nounwind
  store i8* %call, i8** @unmeta.fn, align 4, !tbaa !3
  %tobool31 = icmp eq i8* %call, null
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %cont30
  store i32 0, i32* @unmeta.sz, align 4, !tbaa !0
  br label %return

if.end34:                                         ; preds = %cont30, %cont18
  %13 = phi i8* [ %9, %cont18 ], [ %call, %cont30 ]
  %14 = load i8* %file_name, align 1, !tbaa !1
  %tobool3672 = icmp eq i8 %14, 0
  br i1 %tobool3672, label %cont56, label %for.body37

for.body37:                                       ; preds = %if.end34, %for.inc52
  %15 = phi i8 [ %19, %for.inc52 ], [ %14, %if.end34 ]
  %t.174 = phi i8* [ %t.2, %for.inc52 ], [ %file_name, %if.end34 ]
  %p.073 = phi i8* [ %incdec.ptr53, %for.inc52 ], [ %13, %if.end34 ]
  %incdec.ptr38 = getelementptr inbounds i8* %t.174, i32 1
  store i8 %15, i8* %p.073, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 3754, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp42 = icmp eq i8 %15, -125
  br i1 %cmp42, label %if.then44, label %for.inc52

if.then44:                                        ; preds = %for.body37
  %incdec.ptr45 = getelementptr inbounds i8* %t.174, i32 2
  %16 = load i8* %incdec.ptr38, align 1, !tbaa !1
  %conv46 = sext i8 %16 to i32
  %xor = xor i32 %conv46, 32
  %xor.off = add i32 %xor, 128
  %17 = icmp ult i32 %xor.off, 256
  br i1 %17, label %cont49, label %ioc_bb48

ioc_bb48:                                         ; preds = %if.then44
  %18 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 3755, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont49

cont49:                                           ; preds = %ioc_bb48, %if.then44
  %conv50 = trunc i32 %xor to i8
  store i8 %conv50, i8* %p.073, align 1, !tbaa !1
  br label %for.inc52

for.inc52:                                        ; preds = %for.body37, %cont49
  %t.2 = phi i8* [ %incdec.ptr45, %cont49 ], [ %incdec.ptr38, %for.body37 ]
  %incdec.ptr53 = getelementptr inbounds i8* %p.073, i32 1
  %19 = load i8* %t.2, align 1, !tbaa !1
  %tobool36 = icmp eq i8 %19, 0
  br i1 %tobool36, label %cont56, label %for.body37

cont56:                                           ; preds = %for.inc52, %if.end34
  %p.0.lcssa = phi i8* [ %13, %if.end34 ], [ %incdec.ptr53, %for.inc52 ]
  store i8 0, i8* %p.0.lcssa, align 1, !tbaa !1
  %20 = load i8** @unmeta.fn, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then3, %if.then8, %cont56, %if.then32
  %retval.0 = phi i8* [ %20, %cont56 ], [ null, %if.then32 ], [ %file_name, %if.then8 ], [ %file_name, %if.then3 ]
  ret i8* %retval.0
}

declare i32 @access(i8* nocapture, i32) nounwind

define i8* @findpwd(i8* %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %cont.i, label %if.end

cont.i:                                           ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %add.ptr.i = getelementptr inbounds i8* %s, i32 1
  %call.i = tail call fastcc i32 @xsymlinks(i8* %add.ptr.i) nounwind
  %1 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %cont.i
  %call3.i = tail call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %return

if.end4.i:                                        ; preds = %cont.i
  %call5.i = tail call i8* @ztrdup(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0)) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8** @pwd, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %2, i32 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool = icmp ne i8 %3, 0
  %cond = select i1 %tobool, i8* %2, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)
  %call3 = tail call i8* @tricat(i8* %cond, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8* %s) nounwind
  %4 = load i8* %call3, align 1, !tbaa !1
  %cmp.i9 = icmp eq i8 %4, 47
  br i1 %cmp.i9, label %cont.i13, label %xsymlink.exit19

cont.i13:                                         ; preds = %if.end
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %add.ptr.i10 = getelementptr inbounds i8* %call3, i32 1
  %call.i11 = tail call fastcc i32 @xsymlinks(i8* %add.ptr.i10) nounwind
  %5 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool.i12 = icmp eq i8 %5, 0
  br i1 %tobool.i12, label %if.then2.i15, label %if.end4.i17

if.then2.i15:                                     ; preds = %cont.i13
  %call3.i14 = tail call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %xsymlink.exit19

if.end4.i17:                                      ; preds = %cont.i13
  %call5.i16 = tail call i8* @ztrdup(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0)) nounwind
  br label %xsymlink.exit19

xsymlink.exit19:                                  ; preds = %if.end, %if.then2.i15, %if.end4.i17
  %retval.0.i18 = phi i8* [ %call5.i16, %if.end4.i17 ], [ %call3.i14, %if.then2.i15 ], [ null, %if.end ]
  tail call void @zsfree(i8* %call3) nounwind
  br label %return

return:                                           ; preds = %if.end4.i, %if.then2.i, %xsymlink.exit19
  %retval.0 = phi i8* [ %retval.0.i18, %xsymlink.exit19 ], [ %call5.i, %if.end4.i ], [ %call3.i, %if.then2.i ]
  ret i8* %retval.0
}

define i8* @xsymlink(i8* %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %cont, label %return

cont:                                             ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %add.ptr = getelementptr inbounds i8* %s, i32 1
  %call = tail call fastcc i32 @xsymlinks(i8* %add.ptr)
  %1 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %cont
  %call3 = tail call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %return

if.end4:                                          ; preds = %cont
  %call5 = tail call i8* @ztrdup(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0)) nounwind
  br label %return

return:                                           ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi i8* [ %call5, %if.end4 ], [ %call3, %if.then2 ], [ null, %entry ]
  ret i8* %retval.0
}

declare i8* @tricat(i8*, i8*, i8*)

declare void @zsfree(i8*)

define i32 @ispwd(i8* %s) nounwind {
entry:
  %sbuf = alloca %struct.stat, align 8
  %tbuf = alloca %struct.stat, align 8
  %call = call i8* @unmeta(i8* %s)
  %0 = bitcast %struct.stat* %sbuf to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* %call, %struct.stat64* %0) nounwind
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.stat* %tbuf to %struct.stat64*
  %call.i11 = call i32 @__xstat64(i32 3, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.stat64* %1) nounwind
  %cmp3 = icmp eq i32 %call.i11, 0
  br i1 %cmp3, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %st_dev = getelementptr inbounds %struct.stat* %sbuf, i32 0, i32 0
  %2 = load i64* %st_dev, align 8, !tbaa !4
  %st_dev4 = getelementptr inbounds %struct.stat* %tbuf, i32 0, i32 0
  %3 = load i64* %st_dev4, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %2, %3
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.then
  %st_ino = getelementptr inbounds %struct.stat* %sbuf, i32 0, i32 15
  %4 = load i64* %st_ino, align 8, !tbaa !4
  %st_ino7 = getelementptr inbounds %struct.stat* %tbuf, i32 0, i32 15
  %5 = load i64* %st_ino7, align 8, !tbaa !4
  %cmp8 = icmp eq i64 %4, %5
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true6, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 1, %land.lhs.true6 ]
  ret i32 %retval.0
}

define internal fastcc i32 @xsymlinks(i8* %s) nounwind {
entry:
  %xbuf2 = alloca [8192 x i8], align 1
  %xbuf3 = alloca [8192 x i8], align 1
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %0, 0
  br i1 %tobool.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %entry
  %call.i = call i8* @zshcalloc(i32 4) nounwind
  %1 = bitcast i8* %call.i to i8**
  br label %slashsplit.exit

for.cond.i:                                       ; preds = %entry, %for.inc.i
  %2 = phi i8 [ %.pre.i, %for.inc.i ], [ %0, %entry ]
  %t.0.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %s, %entry ]
  %t0.0.i = phi i32 [ %t0.1.i, %for.inc.i ], [ 0, %entry ]
  switch i8 %2, label %for.inc.i [
    i8 0, label %for.end.i
    i8 47, label %if.then3.i
  ]

if.then3.i:                                       ; preds = %for.cond.i
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0.i, i32 1) nounwind
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb.i, label %for.inc.i

ioc_bb.i:                                         ; preds = %if.then3.i
  %6 = sext i32 %t0.0.i to i64
  call void @__ioc_report_add_overflow(i32 618, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %for.inc.i

for.inc.i:                                        ; preds = %ioc_bb.i, %if.then3.i, %for.cond.i
  %t0.1.i = phi i32 [ %t0.0.i, %for.cond.i ], [ %4, %if.then3.i ], [ %4, %ioc_bb.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %t.0.i, i32 1
  %.pre.i = load i8* %incdec.ptr.i, align 1, !tbaa !1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0.i, i32 2) nounwind
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb5.i, label %cont6.i

ioc_bb5.i:                                        ; preds = %for.end.i
  %10 = sext i32 %t0.0.i to i64
  call void @__ioc_report_add_overflow(i32 619, i32 51, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %10, i64 2, i8 13) nounwind
  br label %cont6.i

cont6.i:                                          ; preds = %ioc_bb5.i, %for.end.i
  %11 = icmp sgt i32 %8, -1
  br i1 %11, label %cont8.i, label %ioc_bb7.i

ioc_bb7.i:                                        ; preds = %cont6.i
  %12 = sext i32 %8 to i64
  call void @__ioc_report_conversion(i32 619, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont8.i

cont8.i:                                          ; preds = %ioc_bb7.i, %cont6.i
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) nounwind
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %cont8.i
  %16 = zext i32 %8 to i64
  call void @__ioc_report_mul_overflow(i32 619, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %16, i8 5) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %cont8.i
  %call11.i = call i8* @zalloc(i32 %14) nounwind
  %17 = bitcast i8* %call11.i to i8**
  %call1246.i = call i8* @strchr(i8* %s, i32 47) nounwind
  %tobool1347.i = icmp eq i8* %call1246.i, null
  br i1 %tobool1347.i, label %while.end25.i, label %while.body.i

while.cond.loopexit.i:                            ; preds = %while.cond16.i
  %call12.i = call i8* @strchr(i8* %t.1.i, i32 47) nounwind
  %tobool13.i = icmp eq i8* %call12.i, null
  br i1 %tobool13.i, label %while.end25.i, label %while.body.i

while.body.i:                                     ; preds = %cont10.i, %while.cond.loopexit.i
  %call1250.i = phi i8* [ %call12.i, %while.cond.loopexit.i ], [ %call1246.i, %cont10.i ]
  %q.049.i = phi i8** [ %incdec.ptr15.i, %while.cond.loopexit.i ], [ %17, %cont10.i ]
  %s.addr.048.i = phi i8* [ %t.1.i, %while.cond.loopexit.i ], [ %s, %cont10.i ]
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call1250.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %s.addr.048.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call14.i = call i8* @ztrduppfx(i8* %s.addr.048.i, i32 %sub.ptr.sub.i) nounwind
  %incdec.ptr15.i = getelementptr inbounds i8** %q.049.i, i32 1
  store i8* %call14.i, i8** %q.049.i, align 4, !tbaa !3
  br label %while.cond16.i

while.cond16.i:                                   ; preds = %while.body20.i, %while.body.i
  %t.1.i = phi i8* [ %call1250.i, %while.body.i ], [ %incdec.ptr21.i, %while.body20.i ]
  %18 = load i8* %t.1.i, align 1, !tbaa !1
  switch i8 %18, label %while.cond.loopexit.i [
    i8 47, label %while.body20.i
    i8 0, label %if.then23.i
  ]

while.body20.i:                                   ; preds = %while.cond16.i
  %incdec.ptr21.i = getelementptr inbounds i8* %t.1.i, i32 1
  br label %while.cond16.i

if.then23.i:                                      ; preds = %while.cond16.i
  store i8* null, i8** %incdec.ptr15.i, align 4, !tbaa !3
  br label %slashsplit.exit

while.end25.i:                                    ; preds = %while.cond.loopexit.i, %cont10.i
  %q.0.lcssa.i = phi i8** [ %17, %cont10.i ], [ %incdec.ptr15.i, %while.cond.loopexit.i ]
  %s.addr.0.lcssa.i = phi i8* [ %s, %cont10.i ], [ %t.1.i, %while.cond.loopexit.i ]
  %call26.i = call i8* @ztrdup(i8* %s.addr.0.lcssa.i) nounwind
  %incdec.ptr27.i = getelementptr inbounds i8** %q.0.lcssa.i, i32 1
  store i8* %call26.i, i8** %q.0.lcssa.i, align 4, !tbaa !3
  store i8* null, i8** %incdec.ptr27.i, align 4, !tbaa !3
  br label %slashsplit.exit

slashsplit.exit:                                  ; preds = %if.then.i, %if.then23.i, %while.end25.i
  %retval.0.i = phi i8** [ %17, %if.then23.i ], [ %17, %while.end25.i ], [ %1, %if.then.i ]
  %19 = load i8** %retval.0.i, align 4, !tbaa !3
  %tobool275 = icmp eq i8* %19, null
  br i1 %tobool275, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %slashsplit.exit
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str8 to i32))
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str46 to i32))
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str7 to i32))
  %arraydecay = getelementptr inbounds [8192 x i8]* %xbuf2, i32 0, i32 0
  %arraydecay205 = getelementptr inbounds [8192 x i8]* %xbuf3, i32 0, i32 0
  %add.ptr225 = getelementptr inbounds [8192 x i8]* %xbuf3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %23 = phi i8* [ %19, %for.body.lr.ph ], [ %65, %for.inc ]
  %pp.0279 = phi i8** [ %retval.0.i, %for.body.lr.ph ], [ %incdec.ptr232, %for.inc ]
  %ret.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc ]
  %24 = extractvalue { i32, i1 } %20, 0
  %25 = extractvalue { i32, i1 } %20, 1
  br i1 %25, label %ioc_bb, label %cont2

ioc_bb:                                           ; preds = %for.body
  call void @__ioc_report_sub_overflow(i32 648, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str8 to i32) to i64), i8 5) nounwind
  %.pre = load i8** %pp.0279, align 4, !tbaa !3
  br label %cont2

cont2:                                            ; preds = %ioc_bb, %for.body
  %26 = phi i8* [ %.pre, %ioc_bb ], [ %23, %for.body ]
  %cmp = icmp eq i32 %24, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont2
  %27 = load i8* %26, align 1, !tbaa !1
  %conv = zext i8 %27 to i32
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 46)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb7, label %land.lhs.true13

ioc_bb7:                                          ; preds = %cond.true
  %31 = zext i8 %27 to i64
  call void @__ioc_report_sub_overflow(i32 648, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %31, i64 46, i8 13) nounwind
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.true, %ioc_bb7
  %cmp14 = icmp eq i32 %29, 0
  br i1 %cmp14, label %if.then, label %if.end52

if.then:                                          ; preds = %land.lhs.true13
  %arrayidx16 = getelementptr inbounds i8* %26, i32 1
  %32 = load i8* %arrayidx16, align 1, !tbaa !1
  %conv17 = zext i8 %32 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont2
  %call49 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i32 [ %call49, %cond.false ], [ %conv17, %if.then ]
  %tobool50 = icmp eq i32 %cond, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.end
  %33 = load i8** %pp.0279, align 4, !tbaa !3
  call void @zsfree(i8* %33) nounwind
  br label %for.inc

if.end52:                                         ; preds = %land.lhs.true13, %cond.end
  %34 = extractvalue { i32, i1 } %21, 0
  %35 = extractvalue { i32, i1 } %21, 1
  br i1 %35, label %ioc_bb55, label %cont58

ioc_bb55:                                         ; preds = %if.end52
  call void @__ioc_report_sub_overflow(i32 652, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str46 to i32) to i64), i8 5) nounwind
  br label %cont58

cont58:                                           ; preds = %if.end52, %ioc_bb55
  %cmp59 = icmp eq i32 %34, 1
  %36 = load i8** %pp.0279, align 4, !tbaa !3
  br i1 %cmp59, label %cond.true66, label %cond.false116

cond.true66:                                      ; preds = %cont58
  %37 = load i8* %36, align 1, !tbaa !1
  %conv70 = zext i8 %37 to i32
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv70, i32 46)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb72, label %land.lhs.true78

ioc_bb72:                                         ; preds = %cond.true66
  %41 = zext i8 %37 to i64
  call void @__ioc_report_sub_overflow(i32 652, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %41, i64 46, i8 13) nounwind
  br label %land.lhs.true78

land.lhs.true78:                                  ; preds = %cond.true66, %ioc_bb72
  %cmp79 = icmp eq i32 %39, 0
  br i1 %cmp79, label %if.then81, label %if.end201

if.then81:                                        ; preds = %land.lhs.true78
  %arrayidx82 = getelementptr inbounds i8* %36, i32 1
  %42 = load i8* %arrayidx82, align 1, !tbaa !1
  %conv83 = zext i8 %42 to i32
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv83, i32 46)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb85, label %land.lhs.true91

ioc_bb85:                                         ; preds = %if.then81
  %46 = zext i8 %42 to i64
  call void @__ioc_report_sub_overflow(i32 652, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %46, i64 46, i8 13) nounwind
  br label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then81, %ioc_bb85
  %cmp92 = icmp eq i32 %44, 0
  br i1 %cmp92, label %if.then94, label %if.end201

if.then94:                                        ; preds = %land.lhs.true91
  %arrayidx95 = getelementptr inbounds i8* %36, i32 2
  %47 = load i8* %arrayidx95, align 1, !tbaa !1
  %conv96 = zext i8 %47 to i32
  br label %cond.end118

cond.false116:                                    ; preds = %cont58
  %call117 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0)) nounwind
  br label %cond.end118

cond.end118:                                      ; preds = %if.then94, %cond.false116
  %cond119 = phi i32 [ %call117, %cond.false116 ], [ %conv96, %if.then94 ]
  %tobool120 = icmp eq i32 %cond119, 0
  br i1 %tobool120, label %if.then121, label %if.end201

if.then121:                                       ; preds = %cond.end118
  %48 = load i8** %pp.0279, align 4, !tbaa !3
  call void @zsfree(i8* %48) nounwind
  %49 = extractvalue { i32, i1 } %22, 0
  %50 = extractvalue { i32, i1 } %22, 1
  br i1 %50, label %ioc_bb124, label %cont127

ioc_bb124:                                        ; preds = %if.then121
  call void @__ioc_report_sub_overflow(i32 655, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str7 to i32) to i64), i8 5) nounwind
  br label %cont127

cont127:                                          ; preds = %ioc_bb124, %if.then121
  %cmp128 = icmp eq i32 %49, 1
  br i1 %cmp128, label %cond.true135, label %cond.false185

cond.true135:                                     ; preds = %cont127
  %51 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %conv139 = zext i8 %51 to i32
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv139, i32 47)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb141, label %land.lhs.true147

ioc_bb141:                                        ; preds = %cond.true135
  %55 = zext i8 %51 to i64
  call void @__ioc_report_sub_overflow(i32 655, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %55, i64 47, i8 13) nounwind
  br label %land.lhs.true147

land.lhs.true147:                                 ; preds = %cond.true135, %ioc_bb141
  %cmp148 = icmp eq i32 %53, 0
  br i1 %cmp148, label %if.then150, label %cond.end187

if.then150:                                       ; preds = %land.lhs.true147
  %56 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 1), align 1, !tbaa !1
  %conv152 = zext i8 %56 to i32
  br label %cond.end187

cond.false185:                                    ; preds = %cont127
  %call186 = call i32 @strcmp(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %cond.end187

cond.end187:                                      ; preds = %land.lhs.true147, %if.then150, %cond.false185
  %cond188 = phi i32 [ %call186, %cond.false185 ], [ %conv152, %if.then150 ], [ %53, %land.lhs.true147 ]
  %tobool189 = icmp ne i32 %cond188, 0
  %57 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool192 = icmp ne i8 %57, 0
  %or.cond = and i1 %tobool189, %tobool192
  br i1 %or.cond, label %if.end194, label %for.inc

if.end194:                                        ; preds = %cond.end187
  %call195 = call i32 @strlen(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0)) nounwind readonly
  %add.ptr = getelementptr inbounds [8192 x i8]* @xbuf, i32 0, i32 %call195
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end194
  %p.0 = phi i8* [ %add.ptr, %if.end194 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8* %p.0, i32 -1
  %58 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp197 = icmp eq i8 %58, 47
  br i1 %cmp197, label %cont200, label %while.cond

cont200:                                          ; preds = %while.cond
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !1
  br label %for.inc

if.end201:                                        ; preds = %cond.end118, %land.lhs.true91, %land.lhs.true78
  %59 = load i8** %pp.0279, align 4, !tbaa !3
  %call202 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), i8* %59) nounwind
  %call204 = call i8* @unmeta(i8* %arraydecay)
  %call208 = call i32 @readlink(i8* %call204, i8* %arraydecay205, i32 4096) nounwind
  %cmp211 = icmp eq i32 %call208, -1
  br i1 %cmp211, label %if.then213, label %if.else

if.then213:                                       ; preds = %if.end201
  %strlen = call i32 @strlen(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0))
  %endptr = getelementptr [8192 x i8]* @xbuf, i32 0, i32 %strlen
  %60 = bitcast i8* %endptr to i16*
  store i16 47, i16* %60, align 1
  %61 = load i8** %pp.0279, align 4, !tbaa !3
  %call215 = call i8* @strcat(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), i8* %61) nounwind
  %62 = load i8** %pp.0279, align 4, !tbaa !3
  call void @zsfree(i8* %62) nounwind
  br label %for.inc

if.else:                                          ; preds = %if.end201
  %call217 = call i8* @metafy(i8* %arraydecay205, i32 %call208, i32 5)
  %63 = load i8* %arraydecay205, align 1, !tbaa !1
  %cmp220 = icmp eq i8 %63, 47
  br i1 %cmp220, label %if.then222, label %if.else227

if.then222:                                       ; preds = %if.else
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1
  %call226 = call fastcc i32 @xsymlinks(i8* %add.ptr225)
  br label %if.end230

if.else227:                                       ; preds = %if.else
  %call229 = call fastcc i32 @xsymlinks(i8* %arraydecay205)
  br label %if.end230

if.end230:                                        ; preds = %if.else227, %if.then222
  %64 = load i8** %pp.0279, align 4, !tbaa !3
  call void @zsfree(i8* %64) nounwind
  br label %for.inc

for.inc:                                          ; preds = %if.then213, %if.end230, %cond.end187, %cont200, %if.then51
  %ret.1 = phi i32 [ %ret.0276, %if.then213 ], [ 1, %if.end230 ], [ %ret.0276, %cont200 ], [ %ret.0276, %cond.end187 ], [ %ret.0276, %if.then51 ]
  %incdec.ptr232 = getelementptr inbounds i8** %pp.0279, i32 1
  %65 = load i8** %incdec.ptr232, align 4, !tbaa !3
  %tobool = icmp eq i8* %65, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %slashsplit.exit
  %ret.0.lcssa = phi i32 [ 0, %slashsplit.exit ], [ %ret.1, %for.inc ]
  %66 = bitcast i8** %retval.0.i to i8*
  call void @free(i8* %66) nounwind
  ret i32 %ret.0.lcssa
}

declare i8* @ztrdup(i8*)

define void @print_if_link(i8* %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %cont, label %if.end7

cont:                                             ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %add.ptr = getelementptr inbounds i8* %s, i32 1
  %call = tail call fastcc i32 @xsymlinks(i8* %add.ptr)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end7, label %if.then2

if.then2:                                         ; preds = %cont
  %call3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0)) nounwind
  %1 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool5 = icmp ne i8 %1, 0
  %cond = select i1 %tobool5, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)
  %2 = load %struct._IO_FILE** @stdout, align 4, !tbaa !3
  %call6 = tail call i32 @zputs(i8* %cond, %struct._IO_FILE* %2)
  br label %if.end7

if.end7:                                          ; preds = %cont, %if.then2, %entry
  ret void
}

declare i32 @printf(i8* nocapture, ...) nounwind

define void @fprintdir(i8* %s, %struct._IO_FILE* nocapture %f) nounwind {
entry:
  %call = tail call %struct.nameddir* @finddir(i8* %s)
  %tobool = icmp eq %struct.nameddir* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @unmeta(i8* %s)
  %call2 = tail call i32 @fputs(i8* %call1, %struct._IO_FILE* %f) nounwind
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @_IO_putc(i32 126, %struct._IO_FILE* %f) nounwind
  %nam = getelementptr inbounds %struct.nameddir* %call, i32 0, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !3
  %call4 = tail call i8* @unmeta(i8* %0)
  %call5 = tail call i32 @fputs(i8* %call4, %struct._IO_FILE* %f) nounwind
  %dir = getelementptr inbounds %struct.nameddir* %call, i32 0, i32 1
  %1 = load i8** %dir, align 4, !tbaa !3
  %call6 = tail call i32 @strlen(i8* %1) nounwind readonly
  %add.ptr = getelementptr inbounds i8* %s, i32 %call6
  %call7 = tail call i8* @unmeta(i8* %add.ptr)
  %call8 = tail call i32 @fputs(i8* %call7, %struct._IO_FILE* %f) nounwind
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

define %struct.nameddir* @finddir(i8* %s) nounwind {
entry:
  %tobool = icmp eq i8* %s, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %0 = load i8** @home, align 4, !tbaa !3
  %tobool1 = icmp ne i8* %0, null
  %cond = select i1 %tobool1, i8* %0, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)
  store i8* %cond, i8** getelementptr inbounds (%struct.nameddir* @finddir.homenode, i32 0, i32 1), align 4, !tbaa !3
  %tobool2 = icmp eq i8* %0, null
  br i1 %tobool2, label %cont8, label %cond.end5

cond.end5:                                        ; preds = %if.then
  %call = tail call i32 @strlen(i8* %0) nounwind readonly
  %1 = icmp sgt i32 %call, -1
  br i1 %1, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cond.end5
  %2 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 804, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %cont8

cont8:                                            ; preds = %if.then, %ioc_bb7, %cond.end5
  %cond677 = phi i32 [ %call, %ioc_bb7 ], [ %call, %cond.end5 ], [ 0, %if.then ]
  %cmp = icmp eq i32 %cond677, 1
  %.cond6 = select i1 %cmp, i32 0, i32 %cond677
  store i32 %.cond6, i32* getelementptr inbounds (%struct.nameddir* @finddir.homenode, i32 0, i32 2), align 4
  %3 = load i8** @finddir_full, align 4, !tbaa !3
  %tobool10 = icmp eq i8* %3, null
  br i1 %tobool10, label %if.then11, label %cont17

if.then11:                                        ; preds = %cont8
  store i32 4096, i32* @finddir.ffsz, align 4, !tbaa !0
  %call14 = tail call i8* @zalloc(i32 4096) nounwind
  store i8* %call14, i8** @finddir_full, align 4, !tbaa !3
  br label %cont17

cont17:                                           ; preds = %if.then11, %cont8
  %4 = phi i8* [ %call14, %if.then11 ], [ %3, %cont8 ]
  store i8 0, i8* %4, align 1, !tbaa !1
  store %struct.nameddir* null, %struct.nameddir** @finddir_last, align 4, !tbaa !3
  br label %return

if.end18:                                         ; preds = %entry
  %call19 = tail call i32 @strlen(i8* %s) nounwind readonly
  %5 = icmp sgt i32 %call19, -1
  br i1 %5, label %cont22, label %ioc_bb21

ioc_bb21:                                         ; preds = %if.end18
  %6 = zext i32 %call19 to i64
  tail call void @__ioc_report_conversion(i32 820, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %6, i8 0) nounwind
  br label %cont22

cont22:                                           ; preds = %ioc_bb21, %if.end18
  %7 = load i32* @finddir.ffsz, align 4, !tbaa !0
  %cmp23 = icmp slt i32 %call19, %7
  %.pre = load i8** @finddir_full, align 4, !tbaa !3
  br i1 %cmp23, label %if.end36, label %if.then24

if.then24:                                        ; preds = %cont22
  tail call void @free(i8* %.pre) nounwind
  %call25 = tail call i32 @strlen(i8* %s) nounwind readonly
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call25, i32 2)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb28, label %cont29

ioc_bb28:                                         ; preds = %if.then24
  %11 = zext i32 %call25 to i64
  tail call void @__ioc_report_mul_overflow(i32 822, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %11, i64 2, i8 5) nounwind
  br label %cont29

cont29:                                           ; preds = %if.then24, %ioc_bb28
  %12 = icmp sgt i32 %9, -1
  br i1 %12, label %cont32.thread, label %ioc_bb33

cont32.thread:                                    ; preds = %cont29
  store i32 %9, i32* @finddir.ffsz, align 4, !tbaa !0
  br label %cont34

ioc_bb33:                                         ; preds = %cont29
  %13 = zext i32 %9 to i64
  tail call void @__ioc_report_conversion(i32 822, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %13, i8 0) nounwind
  store i32 %9, i32* @finddir.ffsz, align 4, !tbaa !0
  %14 = sext i32 %9 to i64
  tail call void @__ioc_report_conversion(i32 822, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %cont32.thread, %ioc_bb33
  %call35 = tail call i8* @zalloc(i32 %9) nounwind
  store i8* %call35, i8** @finddir_full, align 4, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %cont22, %cont34
  %15 = phi i8* [ %call35, %cont34 ], [ %.pre, %cont22 ]
  %call37 = tail call i8* @strcpy(i8* %15, i8* %s) nounwind
  store i32 0, i32* @finddir_best, align 4, !tbaa !0
  store %struct.nameddir* null, %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %16 = load i32* getelementptr inbounds (%struct.nameddir* @finddir.homenode, i32 0, i32 2), align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %16, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %finddir_scan.exit

land.lhs.true.i:                                  ; preds = %if.end36
  %17 = load i8** getelementptr inbounds (%struct.nameddir* @finddir.homenode, i32 0, i32 1), align 4, !tbaa !3
  %18 = load i8** @finddir_full, align 4, !tbaa !3
  %tobool.i.i = icmp eq i8* %17, null
  br i1 %tobool.i.i, label %finddir_scan.exit, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true.i
  %19 = load i8* %17, align 1, !tbaa !1
  %20 = load i8* %18, align 1, !tbaa !1
  %cmp20.i.i = icmp eq i8 %19, %20
  %tobool321.i.i = icmp ne i8 %19, 0
  br i1 %cmp20.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.preheader.i.i, %for.inc.i.i
  %tobool324.i.i = phi i1 [ %tobool3.i.i, %for.inc.i.i ], [ %tobool321.i.i, %for.cond.preheader.i.i ]
  %t.addr.023.i.i = phi i8* [ %incdec.ptr5.i.i, %for.inc.i.i ], [ %18, %for.cond.preheader.i.i ]
  %s.addr.022.i.i = phi i8* [ %incdec.ptr.i.i, %for.inc.i.i ], [ %17, %for.cond.preheader.i.i ]
  br i1 %tobool324.i.i, label %for.inc.i.i, label %land.lhs.true1.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8* %s.addr.022.i.i, i32 1
  %incdec.ptr5.i.i = getelementptr inbounds i8* %t.addr.023.i.i, i32 1
  %21 = load i8* %incdec.ptr.i.i, align 1, !tbaa !1
  %22 = load i8* %incdec.ptr5.i.i, align 1, !tbaa !1
  %cmp.i.i = icmp eq i8 %21, %22
  %tobool3.i.i = icmp ne i8 %21, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i, %for.cond.preheader.i.i
  %tobool3.lcssa.i.i = phi i1 [ %tobool321.i.i, %for.cond.preheader.i.i ], [ %tobool3.i.i, %for.inc.i.i ]
  %.lcssa.i.i = phi i8 [ %20, %for.cond.preheader.i.i ], [ %22, %for.inc.i.i ]
  %tobool3.not.i.i = xor i1 %tobool3.lcssa.i.i, true
  %cmp8.i.i = icmp eq i8 %.lcssa.i.i, 47
  %or.cond.i.i = and i1 %cmp8.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true1.i, label %finddir_scan.exit

land.lhs.true1.i:                                 ; preds = %for.body.i.i, %for.end.i.i
  %23 = load i32* getelementptr inbounds (%struct.nameddir* @finddir.homenode, i32 0, i32 0, i32 2), align 4, !tbaa !0
  %and.i = and i32 %23, 4
  %tobool5.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.i, label %if.then.i, label %finddir_scan.exit

if.then.i:                                        ; preds = %land.lhs.true1.i
  store %struct.nameddir* @finddir.homenode, %struct.nameddir** @finddir_last, align 4, !tbaa !3
  store i32 %16, i32* @finddir_best, align 4, !tbaa !0
  br label %finddir_scan.exit

finddir_scan.exit:                                ; preds = %if.end36, %land.lhs.true.i, %for.end.i.i, %land.lhs.true1.i, %if.then.i
  %24 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %call38 = tail call i32 @scanhashtable(%struct.hashtable* %24, i32 0, i32 0, i32 0, void (%struct.hashnode*, i32)* @finddir_scan, i32 0) nounwind
  %25 = load i8** @finddir_full, align 4, !tbaa !3
  %call39 = tail call i8** @subst_string_by_hook(i8* getelementptr inbounds ([19 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* %25)
  %tobool40 = icmp eq i8** %call39, null
  br i1 %tobool40, label %if.end68, label %land.lhs.true

land.lhs.true:                                    ; preds = %finddir_scan.exit
  %26 = load i8** %call39, align 4, !tbaa !3
  %tobool3.i = icmp eq i8* %26, null
  br i1 %tobool3.i, label %if.end68, label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true, %for.cond.backedge.i
  %count.05.i = phi i32 [ %28, %for.cond.backedge.i ], [ 0, %land.lhs.true ]
  %s.addr.04.i = phi i8** [ %incdec.ptr.i, %for.cond.backedge.i ], [ %call39, %land.lhs.true ]
  %incdec.ptr.i = getelementptr inbounds i8** %s.addr.04.i, i32 1
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.05.i, i32 1) nounwind
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb.i, %for.inc.i
  %30 = load i8** %incdec.ptr.i, align 4, !tbaa !3
  %tobool.i = icmp eq i8* %30, null
  br i1 %tobool.i, label %arrlen.exit, label %for.inc.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %31 = sext i32 %count.05.i to i64
  tail call void @__ioc_report_add_overflow(i32 1774, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

arrlen.exit:                                      ; preds = %for.cond.backedge.i
  %cmp42 = icmp sgt i32 %28, 1
  br i1 %cmp42, label %land.lhs.true43, label %if.end68

land.lhs.true43:                                  ; preds = %arrlen.exit
  %arrayidx44 = getelementptr inbounds i8** %call39, i32 1
  %32 = load i8** %arrayidx44, align 4, !tbaa !3
  %call45 = tail call i64 @zstrtol(i8* %32, i8** null, i32 10)
  %call45.off = add i64 %call45, 2147483648
  %33 = icmp ult i64 %call45.off, 4294967296
  br i1 %33, label %cont48, label %ioc_bb47

ioc_bb47:                                         ; preds = %land.lhs.true43
  tail call void @__ioc_report_conversion(i32 830, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %call45, i8 1) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb47, %land.lhs.true43
  %conv = trunc i64 %call45 to i32
  %34 = load i32* @finddir_best, align 4, !tbaa !0
  %cmp49 = icmp sgt i32 %conv, %34
  br i1 %cmp49, label %if.then51, label %if.end68

if.then51:                                        ; preds = %cont48
  %call52 = tail call i8* @hcalloc(i32 20) nounwind
  %35 = bitcast i8* %call52 to %struct.nameddir*
  store %struct.nameddir* %35, %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %36 = load i8** %call39, align 4, !tbaa !3
  %call54 = tail call i8* @dupstring(i8* %36) nounwind
  %call55 = tail call i8* @zhtricat(i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i8* %call54, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0)) nounwind
  %37 = load %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %nam = getelementptr inbounds %struct.nameddir* %37, i32 0, i32 0, i32 1
  store i8* %call55, i8** %nam, align 4, !tbaa !3
  %38 = load i8** @finddir_full, align 4, !tbaa !3
  %call56 = tail call i8* @dupstrpfx(i8* %38, i32 %conv) nounwind
  %39 = load %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %dir = getelementptr inbounds %struct.nameddir* %39, i32 0, i32 1
  store i8* %call56, i8** %dir, align 4, !tbaa !3
  %40 = icmp sgt i32 %conv, -1
  br i1 %40, label %cont59, label %ioc_bb58

ioc_bb58:                                         ; preds = %if.then51
  %41 = sext i32 %conv to i64
  tail call void @__ioc_report_conversion(i32 835, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %41, i8 1) nounwind
  br label %cont59

cont59:                                           ; preds = %ioc_bb58, %if.then51
  %42 = load %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %nam61 = getelementptr inbounds %struct.nameddir* %42, i32 0, i32 0, i32 1
  %43 = load i8** %nam61, align 4, !tbaa !3
  %call62 = tail call i32 @strlen(i8* %43) nounwind readonly
  %44 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %conv, i32 %call62)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %cont59
  %47 = zext i32 %call62 to i64
  %48 = and i64 %call45, 4294967295
  tail call void @__ioc_report_sub_overflow(i32 835, i32 33, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %48, i64 %47, i8 5) nounwind
  br label %cont64

cont64:                                           ; preds = %cont59, %ioc_bb63
  %49 = icmp sgt i32 %45, -1
  br i1 %49, label %cont67, label %ioc_bb66

ioc_bb66:                                         ; preds = %cont64
  %50 = zext i32 %45 to i64
  tail call void @__ioc_report_conversion(i32 835, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %50, i8 0) nounwind
  br label %cont67

cont67:                                           ; preds = %cont64, %ioc_bb66
  %51 = load %struct.nameddir** @finddir_last, align 4, !tbaa !3
  %diff = getelementptr inbounds %struct.nameddir* %51, i32 0, i32 2
  store i32 %45, i32* %diff, align 4, !tbaa !0
  store i32 %conv, i32* @finddir_best, align 4, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %cont48, %arrlen.exit, %land.lhs.true, %finddir_scan.exit, %cont67
  %52 = load %struct.nameddir** @finddir_last, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end68, %cont17
  %retval.0 = phi %struct.nameddir* [ %52, %if.end68 ], [ null, %cont17 ]
  ret %struct.nameddir* %retval.0
}

define i8* @substnamedir(i8* %s) nounwind {
entry:
  %call = tail call %struct.nameddir* @finddir(i8* %s)
  %tobool = icmp eq %struct.nameddir* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @quotestring(i8* %s, i8** null, i32 1)
  br label %return

if.end:                                           ; preds = %entry
  %nam = getelementptr inbounds %struct.nameddir* %call, i32 0, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !3
  %dir = getelementptr inbounds %struct.nameddir* %call, i32 0, i32 1
  %1 = load i8** %dir, align 4, !tbaa !3
  %call2 = tail call i32 @strlen(i8* %1) nounwind readonly
  %add.ptr = getelementptr inbounds i8* %s, i32 %call2
  %call3 = tail call i8* @quotestring(i8* %add.ptr, i8** null, i32 1)
  %call4 = tail call i8* @zhtricat(i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* %0, i8* %call3) nounwind
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call4, %if.end ], [ %call1, %if.then ]
  ret i8* %retval.0
}

define i8* @quotestring(i8* %s, i8** %e, i32 %instring) nounwind {
entry:
  %cc = alloca i32, align 4
  %call = call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 4279, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  switch i32 %instring, label %sw.default [
    i32 7, label %sw.bb
    i32 1, label %sw.bb1
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %cont
  br label %sw.bb1

sw.bb1:                                           ; preds = %cont, %sw.bb
  %shownull.0 = phi i32 [ 0, %cont ], [ 1, %sw.bb ]
  %2 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %call, i32 7)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %sw.bb1
  %5 = sext i32 %call to i64
  call void @__ioc_report_mul_overflow(i32 4294, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %5, i64 7, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %sw.bb1, %ioc_bb2
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb4, label %sw.epilog

ioc_bb4:                                          ; preds = %cont3
  %9 = sext i32 %3 to i64
  call void @__ioc_report_add_overflow(i32 4294, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %sw.epilog

sw.bb6:                                           ; preds = %cont
  %10 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %call, i32 4)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %sw.bb6
  %13 = sext i32 %call to i64
  call void @__ioc_report_mul_overflow(i32 4303, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %13, i64 4, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %sw.bb6, %ioc_bb7
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 3)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb9, label %sw.epilog

ioc_bb9:                                          ; preds = %cont8
  %17 = sext i32 %11 to i64
  call void @__ioc_report_add_overflow(i32 4303, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %17, i64 3, i8 13) nounwind
  br label %sw.epilog

sw.default:                                       ; preds = %cont
  %18 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %call, i32 4)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %sw.default
  %21 = sext i32 %call to i64
  call void @__ioc_report_mul_overflow(i32 4309, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %21, i64 4, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %sw.default, %ioc_bb11
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb13, label %if.end

ioc_bb13:                                         ; preds = %cont12
  %25 = sext i32 %19 to i64
  call void @__ioc_report_add_overflow(i32 4309, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %if.end

sw.epilog:                                        ; preds = %ioc_bb9, %cont8, %ioc_bb4, %cont3
  %shownull.1 = phi i32 [ %shownull.0, %cont3 ], [ %shownull.0, %ioc_bb4 ], [ 1, %cont8 ], [ 1, %ioc_bb9 ]
  %quotesub.0 = phi i32 [ 0, %cont3 ], [ 0, %ioc_bb4 ], [ 1, %cont8 ], [ 1, %ioc_bb9 ]
  %alloclen.0 = phi i32 [ %7, %cont3 ], [ %7, %ioc_bb4 ], [ %15, %cont8 ], [ %15, %ioc_bb9 ]
  %instring.addr.1 = phi i32 [ 1, %cont3 ], [ 1, %ioc_bb4 ], [ 6, %cont8 ], [ 6, %ioc_bb9 ]
  %26 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp ne i8 %26, 0
  %tobool15 = icmp eq i32 %shownull.1, 0
  %or.cond706 = or i1 %tobool, %tobool15
  br i1 %or.cond706, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %alloclen.0, i32 2)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb16, label %if.end

ioc_bb16:                                         ; preds = %if.then
  %30 = sext i32 %alloclen.0 to i64
  call void @__ioc_report_add_overflow(i32 4315, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %30, i64 2, i8 13) nounwind
  br label %if.end

if.end:                                           ; preds = %ioc_bb13, %cont12, %ioc_bb16, %if.then, %sw.epilog
  %tobool15718 = phi i1 [ %tobool15, %sw.epilog ], [ false, %if.then ], [ false, %ioc_bb16 ], [ true, %cont12 ], [ true, %ioc_bb13 ]
  %instring.addr.1717 = phi i32 [ %instring.addr.1, %sw.epilog ], [ %instring.addr.1, %if.then ], [ %instring.addr.1, %ioc_bb16 ], [ %instring, %cont12 ], [ %instring, %ioc_bb13 ]
  %quotesub.0716 = phi i32 [ %quotesub.0, %sw.epilog ], [ %quotesub.0, %if.then ], [ %quotesub.0, %ioc_bb16 ], [ 0, %cont12 ], [ 0, %ioc_bb13 ]
  %alloclen.1 = phi i32 [ %alloclen.0, %sw.epilog ], [ %28, %if.then ], [ %28, %ioc_bb16 ], [ %23, %cont12 ], [ %23, %ioc_bb13 ]
  %31 = icmp sgt i32 %alloclen.1, -1
  br i1 %31, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %if.end
  %32 = sext i32 %alloclen.1 to i64
  call void @__ioc_report_conversion(i32 4316, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %if.end
  %call20 = call i8* @zshcalloc(i32 %alloclen.1) nounwind
  %cmp = icmp eq i32 %instring.addr.1717, 4
  br i1 %cmp, label %if.then21, label %if.else64

if.then21:                                        ; preds = %cont19
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %33 = load i8* %s, align 1, !tbaa !1
  %tobool22727 = icmp eq i8 %33, 0
  br i1 %tobool22727, label %cont529, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then21
  %tobool24 = icmp ne i8** %e, null
  br label %while.body

while.cond55.while.cond.loopexit_crit_edge:       ; preds = %while.body58
  %scevgep780 = getelementptr i8* %v.1.ph, i32 %scevgep778779
  br label %while.cond.backedge

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %u.0730 = phi i8* [ %s, %while.body.lr.ph ], [ %u.0.be, %while.cond.backedge ]
  %v.0729 = phi i8* [ %call20, %while.body.lr.ph ], [ %v.0.be, %while.cond.backedge ]
  %sf.0728 = phi i32 [ 0, %while.body.lr.ph ], [ %sf.1, %while.cond.backedge ]
  %u.0730777 = ptrtoint i8* %u.0730 to i32
  %call23 = call i32 @mb_metacharlenconv(i8* %u.0730, i32* %cc)
  %add.ptr = getelementptr inbounds i8* %u.0730, i32 %call23
  %tobool26 = icmp eq i32 %sf.0728, 0
  %or.cond707 = and i1 %tobool24, %tobool26
  br i1 %or.cond707, label %land.lhs.true27, label %if.end30

land.lhs.true27:                                  ; preds = %while.body
  %34 = load i8** %e, align 4, !tbaa !3
  %cmp28 = icmp ugt i8* %34, %u.0730
  br i1 %cmp28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true27
  store i8* %v.0729, i8** %e, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %while.body, %land.lhs.true27, %if.then29
  %sf.1 = phi i32 [ 1, %if.then29 ], [ 0, %land.lhs.true27 ], [ %sf.0728, %while.body ]
  %35 = load i32* %cc, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %35, -1
  br i1 %cmp31, label %if.else, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end30
  %call33 = call i32 @iswprint(i32 %35) nounwind
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.else, label %if.then35

if.then35:                                        ; preds = %land.lhs.true32
  %36 = load i32* %cc, align 4, !tbaa !0
  switch i32 %36, label %sw.default40 [
    i32 92, label %cont39
    i32 39, label %cont39
  ]

cont39:                                           ; preds = %if.then35, %if.then35
  %incdec.ptr = getelementptr inbounds i8* %v.0729, i32 1
  store i8 92, i8* %v.0729, align 1, !tbaa !1
  br label %while.cond55.preheader

sw.default40:                                     ; preds = %if.then35
  %37 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 17), align 1, !tbaa !1
  %tobool41 = icmp eq i8 %37, 0
  br i1 %tobool41, label %while.cond55.preheader, label %cont46

cont46:                                           ; preds = %sw.default40
  %38 = load i8* @bangchar, align 1, !tbaa !1
  %conv43 = zext i8 %38 to i32
  %cmp47 = icmp eq i32 %36, %conv43
  br i1 %cmp47, label %cont51, label %while.cond55.preheader

cont51:                                           ; preds = %cont46
  %incdec.ptr52 = getelementptr inbounds i8* %v.0729, i32 1
  store i8 92, i8* %v.0729, align 1, !tbaa !1
  br label %while.cond55.preheader

while.cond55.preheader:                           ; preds = %cont46, %cont51, %cont39, %sw.default40
  %v.1.ph = phi i8* [ %v.0729, %sw.default40 ], [ %incdec.ptr, %cont39 ], [ %incdec.ptr52, %cont51 ], [ %v.0729, %cont46 ]
  %cmp56723 = icmp sgt i32 %call23, 0
  br i1 %cmp56723, label %while.body58.lr.ph, label %while.cond.backedge

while.body58.lr.ph:                               ; preds = %while.cond55.preheader
  %scevgep776 = getelementptr i8* %u.0730, i32 1
  %39 = icmp ugt i8* %add.ptr, %scevgep776
  %umax = select i1 %39, i8* %add.ptr, i8* %scevgep776
  %40 = sub i32 0, %u.0730777
  %scevgep778 = getelementptr i8* %umax, i32 %40
  %scevgep778779 = ptrtoint i8* %scevgep778 to i32
  br label %while.body58

while.body58:                                     ; preds = %while.body58.lr.ph, %while.body58
  %u.1725 = phi i8* [ %u.0730, %while.body58.lr.ph ], [ %incdec.ptr59, %while.body58 ]
  %v.1724 = phi i8* [ %v.1.ph, %while.body58.lr.ph ], [ %incdec.ptr60, %while.body58 ]
  %incdec.ptr59 = getelementptr inbounds i8* %u.1725, i32 1
  %41 = load i8* %u.1725, align 1, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8* %v.1724, i32 1
  store i8 %41, i8* %v.1724, align 1, !tbaa !1
  %cmp56 = icmp ult i8* %incdec.ptr59, %add.ptr
  br i1 %cmp56, label %while.body58, label %while.cond55.while.cond.loopexit_crit_edge

if.else:                                          ; preds = %land.lhs.true32, %if.end30
  %call61 = call fastcc i8* @addunprintable(i8* %v.0729, i8* %u.0730, i8* %add.ptr)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond55.preheader, %while.cond55.while.cond.loopexit_crit_edge, %if.else
  %v.0.be = phi i8* [ %call61, %if.else ], [ %scevgep780, %while.cond55.while.cond.loopexit_crit_edge ], [ %v.1.ph, %while.cond55.preheader ]
  %u.0.be = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr59, %while.cond55.while.cond.loopexit_crit_edge ], [ %u.0730, %while.cond55.preheader ]
  %42 = load i8* %u.0.be, align 1, !tbaa !1
  %tobool22 = icmp eq i8 %42, 0
  br i1 %tobool22, label %cont529, label %while.body

if.else64:                                        ; preds = %cont19
  br i1 %tobool15718, label %while.cond77.preheader, label %if.then66

if.then66:                                        ; preds = %if.else64
  %43 = load i8* %s, align 1, !tbaa !1
  %tobool67 = icmp eq i8 %43, 0
  br i1 %tobool67, label %cont70, label %while.body79.lr.ph

cont70:                                           ; preds = %if.then66
  store i8 39, i8* %call20, align 1, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8* %call20, i32 1
  %incdec.ptr74 = getelementptr inbounds i8* %call20, i32 2
  store i8 39, i8* %incdec.ptr71, align 1, !tbaa !1
  br label %while.cond77.preheader

while.cond77.preheader:                           ; preds = %if.else64, %cont70
  %v.2.ph.ph = phi i8* [ %call20, %if.else64 ], [ %incdec.ptr74, %cont70 ]
  %.pr = load i8* %s, align 1, !tbaa !1
  %tobool78761 = icmp eq i8 %.pr, 0
  br i1 %tobool78761, label %cont529, label %while.body79.lr.ph

while.body79.lr.ph:                               ; preds = %if.then66, %while.cond77.preheader
  %v.2.ph791 = phi i8* [ %v.2.ph.ph, %while.cond77.preheader ], [ %call20, %if.then66 ]
  %44 = phi i8 [ %.pr, %while.cond77.preheader ], [ %43, %if.then66 ]
  %tobool80 = icmp eq i8** %e, null
  %cmp130 = icmp eq i32 %instring.addr.1717, 3
  %cmp465 = icmp eq i32 %instring.addr.1717, 1
  %cmp283 = icmp eq i32 %instring.addr.1717, 6
  %cmp297 = icmp eq i32 %instring.addr.1717, 2
  br label %while.body79

while.body79:                                     ; preds = %while.body79.lr.ph, %while.cond77.backedge
  %45 = phi i8 [ %44, %while.body79.lr.ph ], [ %101, %while.cond77.backedge ]
  %u.2768 = phi i8* [ %s, %while.body79.lr.ph ], [ %u.2.be, %while.cond77.backedge ]
  %v.2766 = phi i8* [ %v.2.ph791, %while.body79.lr.ph ], [ %v.2.be, %while.cond77.backedge ]
  %quotestart.0764 = phi i8* [ %call20, %while.body79.lr.ph ], [ %quotestart.0.be, %while.cond77.backedge ]
  %quotesub.1762 = phi i32 [ %quotesub.0716, %while.body79.lr.ph ], [ %quotesub.1.be, %while.cond77.backedge ]
  br i1 %tobool80, label %if.end85, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %while.body79
  %46 = load i8** %e, align 4, !tbaa !3
  %cmp82 = icmp eq i8* %46, %u.2768
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %land.lhs.true81
  store i8* %v.2766, i8** %e, align 4, !tbaa !3
  %.pre = load i8* %u.2768, align 1, !tbaa !1
  br label %if.end85

if.end85:                                         ; preds = %while.body79, %if.then84, %land.lhs.true81
  %47 = phi i8 [ %45, %while.body79 ], [ %.pre, %if.then84 ], [ %45, %land.lhs.true81 ]
  call void @__ioc_report_conversion(i32 4378, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 145, i8 1) nounwind
  %cmp89 = icmp eq i8 %47, -111
  br i1 %cmp89, label %if.then96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end85
  %48 = load i8* %u.2768, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4378, i32 54, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 151, i8 1) nounwind
  %cmp94 = icmp eq i8 %48, -105
  br i1 %cmp94, label %if.then96, label %if.else115

if.then96:                                        ; preds = %lor.lhs.false, %if.end85
  %49 = load i8* %u.2768, align 1, !tbaa !1
  store i8 %49, i8* %v.2766, align 1, !tbaa !1
  %u.3750 = getelementptr inbounds i8* %u.2768, i32 1
  %v.3751 = getelementptr inbounds i8* %v.2766, i32 1
  %50 = load i8* %u.3750, align 1, !tbaa !1
  %tobool101752 = icmp eq i8 %50, 0
  %cmp104753 = icmp eq i8 %50, %49
  %or.cond708754 = or i1 %tobool101752, %cmp104753
  br i1 %or.cond708754, label %while.end109, label %while.body106

while.body106:                                    ; preds = %if.then96, %while.body106
  %51 = phi i8 [ %52, %while.body106 ], [ %50, %if.then96 ]
  %v.3756 = phi i8* [ %v.3, %while.body106 ], [ %v.3751, %if.then96 ]
  %u.3755 = phi i8* [ %u.3, %while.body106 ], [ %u.3750, %if.then96 ]
  store i8 %51, i8* %v.3756, align 1, !tbaa !1
  %u.3 = getelementptr inbounds i8* %u.3755, i32 1
  %v.3 = getelementptr inbounds i8* %v.3756, i32 1
  %52 = load i8* %u.3, align 1, !tbaa !1
  %tobool101 = icmp eq i8 %52, 0
  %cmp104 = icmp eq i8 %52, %49
  %or.cond708 = or i1 %tobool101, %cmp104
  br i1 %or.cond708, label %while.end109, label %while.body106

while.end109:                                     ; preds = %while.body106, %if.then96
  %v.3.lcssa = phi i8* [ %v.3751, %if.then96 ], [ %v.3, %while.body106 ]
  %u.3.lcssa = phi i8* [ %u.3750, %if.then96 ], [ %u.3, %while.body106 ]
  %u.2.pn.lcssa = phi i8* [ %u.2768, %if.then96 ], [ %u.3755, %while.body106 ]
  %v.2.pn.lcssa = phi i8* [ %v.2766, %if.then96 ], [ %v.3756, %while.body106 ]
  %incdec.ptr110 = getelementptr inbounds i8* %v.2.pn.lcssa, i32 2
  store i8 %49, i8* %v.3.lcssa, align 1, !tbaa !1
  %53 = load i8* %u.3.lcssa, align 1, !tbaa !1
  %tobool111 = icmp eq i8 %53, 0
  %incdec.ptr113 = getelementptr inbounds i8* %u.2.pn.lcssa, i32 2
  %u.3.incdec.ptr113 = select i1 %tobool111, i8* %u.3.lcssa, i8* %incdec.ptr113
  br label %while.cond77.backedge

if.else115:                                       ; preds = %lor.lhs.false
  %54 = load i8* %u.2768, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4388, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp119 = icmp eq i8 %54, -118
  %.pre787 = load i8* %u.2768, align 1, !tbaa !1
  br i1 %cmp119, label %land.lhs.true125, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.else115
  %cmp123 = icmp eq i8 %.pre787, 36
  br i1 %cmp123, label %land.lhs.true125, label %if.else135

land.lhs.true125:                                 ; preds = %if.else115, %lor.lhs.false121
  %55 = phi i8 [ 36, %lor.lhs.false121 ], [ %.pre787, %if.else115 ]
  %arrayidx = getelementptr inbounds i8* %u.2768, i32 1
  %56 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp127 = icmp eq i8 %56, 39
  %or.cond709 = and i1 %cmp127, %cmp130
  br i1 %or.cond709, label %if.then132, label %if.else135

if.then132:                                       ; preds = %land.lhs.true125
  %incdec.ptr134 = getelementptr inbounds i8* %v.2766, i32 1
  store i8 %55, i8* %v.2766, align 1, !tbaa !1
  br label %if.end451

if.else135:                                       ; preds = %land.lhs.true125, %lor.lhs.false121
  %57 = phi i8 [ %.pre787, %lor.lhs.false121 ], [ %55, %land.lhs.true125 ]
  call void @__ioc_report_conversion(i32 4397, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp139 = icmp eq i8 %57, -123
  br i1 %cmp139, label %land.lhs.true147, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.else135
  %58 = load i8* %u.2768, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4397, i32 60, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp145 = icmp eq i8 %58, -118
  br i1 %cmp145, label %land.lhs.true147, label %if.else233

land.lhs.true147:                                 ; preds = %lor.lhs.false141, %if.else135
  %arrayidx148 = getelementptr inbounds i8* %u.2768, i32 1
  %59 = load i8* %arrayidx148, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4397, i32 87, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp152 = icmp eq i8 %59, -120
  br i1 %cmp152, label %if.then168, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %land.lhs.true147
  %60 = load i8* %arrayidx148, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4397, i32 112, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp159 = icmp eq i8 %60, -113
  br i1 %cmp159, label %if.then168, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %lor.lhs.false154
  %61 = load i8* %arrayidx148, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4397, i32 137, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp166 = icmp eq i8 %61, -115
  br i1 %cmp166, label %if.then168, label %if.else233

if.then168:                                       ; preds = %lor.lhs.false161, %lor.lhs.false154, %land.lhs.true147
  %62 = load i8* %arrayidx148, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4398, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp174 = icmp eq i8 %62, -120
  br i1 %cmp174, label %ioc_bb176, label %cond.false

ioc_bb176:                                        ; preds = %if.then168
  call void @__ioc_report_conversion(i32 4398, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %cont191

cond.false:                                       ; preds = %if.then168
  %63 = load i8* %arrayidx148, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4398, i32 75, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp182 = icmp eq i8 %63, -115
  call void @__ioc_report_conversion(i32 4398, i32 89, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 142, i8 1) nounwind
  call void @__ioc_report_conversion(i32 4398, i32 105, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 144, i8 1) nounwind
  %phitmp705 = select i1 %cmp182, i32 -114, i32 -112
  br label %cont191

cont191:                                          ; preds = %cond.false, %ioc_bb176
  %cond188 = phi i32 [ %phitmp705, %cond.false ], [ -119, %ioc_bb176 ]
  %64 = load i8* %u.2768, align 1, !tbaa !1
  %incdec.ptr194 = getelementptr inbounds i8* %v.2766, i32 1
  store i8 %64, i8* %v.2766, align 1, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8* %u.2768, i32 2
  %65 = load i8* %arrayidx148, align 1, !tbaa !1
  %incdec.ptr196 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 %65, i8* %incdec.ptr194, align 1, !tbaa !1
  %66 = load i8* %incdec.ptr195, align 1, !tbaa !1
  %tobool199739 = icmp eq i8 %66, 0
  br i1 %tobool199739, label %while.cond77.backedge, label %land.end206

land.end206:                                      ; preds = %cont191, %if.end224
  %67 = phi i8 [ %77, %if.end224 ], [ %66, %cont191 ]
  %level.0742 = phi i32 [ %level.1, %if.end224 ], [ 0, %cont191 ]
  %u.4741 = phi i8* [ %incdec.ptr225, %if.end224 ], [ %incdec.ptr195, %cont191 ]
  %v.4740 = phi i8* [ %incdec.ptr226, %if.end224 ], [ %incdec.ptr196, %cont191 ]
  %conv198 = sext i8 %67 to i32
  %tobool205 = icmp ne i32 %level.0742, 0
  %not.cmp203 = icmp ne i32 %conv198, %cond188
  %tobool205. = or i1 %tobool205, %not.cmp203
  br i1 %tobool205., label %while.body207, label %if.then229

while.body207:                                    ; preds = %land.end206
  %cmp210 = icmp eq i8 %67, %64
  br i1 %cmp210, label %if.then212, label %if.else215

if.then212:                                       ; preds = %while.body207
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.0742, i32 1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb213, label %if.end224

ioc_bb213:                                        ; preds = %if.then212
  %71 = sext i32 %level.0742 to i64
  call void @__ioc_report_add_overflow(i32 4405, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind
  br label %if.end224

if.else215:                                       ; preds = %while.body207
  %cmp218 = icmp eq i32 %conv198, %cond188
  br i1 %cmp218, label %if.then220, label %if.end224

if.then220:                                       ; preds = %if.else215
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.0742, i32 -1)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb221, label %if.end224

ioc_bb221:                                        ; preds = %if.then220
  %75 = sext i32 %level.0742 to i64
  call void @__ioc_report_add_overflow(i32 4407, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %75, i64 -1, i8 13) nounwind
  br label %if.end224

if.end224:                                        ; preds = %ioc_bb221, %if.then220, %ioc_bb213, %if.then212, %if.else215
  %level.1 = phi i32 [ %level.0742, %if.else215 ], [ %69, %if.then212 ], [ %69, %ioc_bb213 ], [ %73, %if.then220 ], [ %73, %ioc_bb221 ]
  %incdec.ptr225 = getelementptr inbounds i8* %u.4741, i32 1
  %76 = load i8* %u.4741, align 1, !tbaa !1
  %incdec.ptr226 = getelementptr inbounds i8* %v.4740, i32 1
  store i8 %76, i8* %v.4740, align 1, !tbaa !1
  %77 = load i8* %incdec.ptr225, align 1, !tbaa !1
  %tobool199 = icmp eq i8 %77, 0
  br i1 %tobool199, label %while.cond77.backedge, label %land.end206

if.then229:                                       ; preds = %land.end206
  %incdec.ptr230 = getelementptr inbounds i8* %u.4741, i32 1
  %incdec.ptr231 = getelementptr inbounds i8* %v.4740, i32 1
  store i8 %67, i8* %v.4740, align 1, !tbaa !1
  br label %while.cond77.backedge

if.else233:                                       ; preds = %lor.lhs.false161, %lor.lhs.false141
  %78 = load i8* %u.2768, align 1, !tbaa !1
  %79 = icmp sgt i8 %78, -1
  br i1 %79, label %cont236, label %ioc_bb235

ioc_bb235:                                        ; preds = %if.else233
  %80 = sext i8 %78 to i64
  call void @__ioc_report_conversion(i32 4414, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %80, i8 1) nounwind
  br label %cont236

cont236:                                          ; preds = %ioc_bb235, %if.else233
  %idxprom = zext i8 %78 to i32
  %arrayidx237 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %81 = load i16* %arrayidx237, align 2, !tbaa !5
  %and = and i16 %81, 2048
  %tobool243 = icmp eq i16 %and, 0
  br i1 %tobool243, label %if.end451, label %land.lhs.true244

land.lhs.true244:                                 ; preds = %cont236
  %82 = load i8* %u.2768, align 1, !tbaa !1
  switch i8 %82, label %land.lhs.true279 [
    i8 61, label %lor.lhs.false252
    i8 126, label %lor.lhs.false252
  ]

lor.lhs.false252:                                 ; preds = %land.lhs.true244, %land.lhs.true244
  %cmp253 = icmp eq i8* %u.2768, %s
  br i1 %cmp253, label %land.lhs.true279, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false252
  %83 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 104), align 1, !tbaa !1
  %tobool257 = icmp eq i8 %83, 0
  br i1 %tobool257, label %lor.lhs.false272, label %cont260

cont260:                                          ; preds = %lor.lhs.false255
  %arrayidx261 = getelementptr inbounds i8* %u.2768, i32 -1
  %84 = load i8* %arrayidx261, align 1, !tbaa !1
  switch i8 %84, label %lor.lhs.false272 [
    i8 61, label %land.lhs.true279
    i8 58, label %land.lhs.true279
  ]

lor.lhs.false272:                                 ; preds = %cont260, %lor.lhs.false255
  %cmp274 = icmp ne i8 %82, 126
  %85 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !1
  %tobool278 = icmp eq i8 %85, 0
  %or.cond710 = or i1 %cmp274, %tobool278
  br i1 %or.cond710, label %if.end451, label %land.lhs.true279

land.lhs.true279:                                 ; preds = %cont260, %cont260, %lor.lhs.false272, %land.lhs.true244, %lor.lhs.false252
  %86 = phi i8 [ %82, %cont260 ], [ %82, %cont260 ], [ 126, %lor.lhs.false272 ], [ %82, %land.lhs.true244 ], [ %82, %lor.lhs.false252 ]
  switch i32 %instring.addr.1717, label %lor.lhs.false285 [
    i32 6, label %if.then328
    i32 1, label %if.else386
  ]

lor.lhs.false285:                                 ; preds = %land.lhs.true279
  %87 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 17), align 1, !tbaa !1
  %tobool287 = icmp eq i8 %87, 0
  br i1 %tobool287, label %lor.lhs.false299, label %land.lhs.true288

land.lhs.true288:                                 ; preds = %lor.lhs.false285
  %88 = load i8* @bangchar, align 1, !tbaa !1
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %cont292, label %ioc_bb291

ioc_bb291:                                        ; preds = %land.lhs.true288
  %90 = zext i8 %88 to i64
  call void @__ioc_report_conversion(i32 4414, i32 242, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %90, i8 0) nounwind
  br label %cont292

cont292:                                          ; preds = %ioc_bb291, %land.lhs.true288
  %cmp294 = icmp ne i8 %86, %88
  %or.cond = or i1 %cmp294, %cmp297
  br i1 %or.cond, label %lor.lhs.false299, label %if.then325

lor.lhs.false299:                                 ; preds = %cont292, %lor.lhs.false285
  switch i32 %instring.addr.1717, label %if.end451 [
    i32 3, label %land.lhs.true302
    i32 2, label %land.lhs.true321
  ]

land.lhs.true302:                                 ; preds = %lor.lhs.false299
  %91 = load i8* %u.2768, align 1, !tbaa !1
  switch i8 %91, label %if.end451 [
    i8 36, label %if.then325
    i8 96, label %if.then325
    i8 34, label %if.then325
    i8 92, label %if.then325
  ]

land.lhs.true321:                                 ; preds = %lor.lhs.false299
  %92 = load i8* %u.2768, align 1, !tbaa !1
  %cmp323 = icmp eq i8 %92, 39
  br i1 %cmp323, label %if.then325, label %if.end451

if.then325:                                       ; preds = %land.lhs.true302, %land.lhs.true302, %land.lhs.true302, %land.lhs.true302, %cont292, %land.lhs.true321
  %.pre788 = load i8* %u.2768, align 1, !tbaa !1
  br i1 %cmp283, label %if.then328, label %if.else386

if.then328:                                       ; preds = %if.then325, %land.lhs.true279
  %93 = phi i8 [ %82, %land.lhs.true279 ], [ %.pre788, %if.then325 ]
  %cmp329 = icmp eq i32 %quotesub.1762, 1
  %cmp333 = icmp eq i8 %93, 39
  br i1 %cmp329, label %if.then331, label %if.else356

if.then331:                                       ; preds = %if.then328
  br i1 %cmp333, label %cont337, label %if.else339

cont337:                                          ; preds = %if.then331
  store i8 92, i8* %v.2766, align 1, !tbaa !1
  br label %if.end353

if.else339:                                       ; preds = %if.then331
  %cmp340 = icmp ugt i8* %v.2766, %quotestart.0764
  br i1 %cmp340, label %cont346, label %cont351

cont346:                                          ; preds = %if.else339, %cont346
  %addq.0734 = phi i8* [ %arrayidx347, %cont346 ], [ %v.2766, %if.else339 ]
  %arrayidx347 = getelementptr inbounds i8* %addq.0734, i32 -1
  %94 = load i8* %arrayidx347, align 1, !tbaa !1
  store i8 %94, i8* %addq.0734, align 1, !tbaa !1
  %cmp343 = icmp ugt i8* %arrayidx347, %quotestart.0764
  br i1 %cmp343, label %cont346, label %cont351

cont351:                                          ; preds = %cont346, %if.else339
  store i8 39, i8* %quotestart.0764, align 1, !tbaa !1
  br label %if.end353

if.end353:                                        ; preds = %cont351, %cont337
  %quotesub.2 = phi i32 [ 1, %cont337 ], [ 2, %cont351 ]
  %v.5 = getelementptr inbounds i8* %v.2766, i32 1
  %incdec.ptr354 = getelementptr inbounds i8* %u.2768, i32 1
  %95 = load i8* %u.2768, align 1, !tbaa !1
  %incdec.ptr355 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 %95, i8* %v.5, align 1, !tbaa !1
  br label %while.cond77.backedge

if.else356:                                       ; preds = %if.then328
  br i1 %cmp333, label %if.then360, label %if.else381

if.then360:                                       ; preds = %if.else356
  %96 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 140), align 1, !tbaa !1
  %tobool361 = icmp eq i8 %96, 0
  store i8 39, i8* %v.2766, align 1, !tbaa !1
  %incdec.ptr365 = getelementptr inbounds i8* %v.2766, i32 1
  br i1 %tobool361, label %cont364, label %cont374

cont364:                                          ; preds = %if.then360
  store i8 92, i8* %incdec.ptr365, align 1, !tbaa !1
  %incdec.ptr368 = getelementptr inbounds i8* %v.2766, i32 2
  %incdec.ptr371 = getelementptr inbounds i8* %v.2766, i32 3
  store i8 39, i8* %incdec.ptr368, align 1, !tbaa !1
  br label %if.end379

cont374:                                          ; preds = %if.then360
  %incdec.ptr378 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 39, i8* %incdec.ptr365, align 1, !tbaa !1
  br label %if.end379

if.end379:                                        ; preds = %cont374, %cont364
  %quotesub.3 = phi i32 [ %quotesub.1762, %cont374 ], [ 1, %cont364 ]
  %quotestart.1 = phi i8* [ %quotestart.0764, %cont374 ], [ %incdec.ptr371, %cont364 ]
  %v.6 = phi i8* [ %incdec.ptr378, %cont374 ], [ %incdec.ptr371, %cont364 ]
  %incdec.ptr380 = getelementptr inbounds i8* %u.2768, i32 1
  br label %while.cond77.backedge

if.else381:                                       ; preds = %if.else356
  %incdec.ptr382 = getelementptr inbounds i8* %u.2768, i32 1
  %incdec.ptr383 = getelementptr inbounds i8* %v.2766, i32 1
  store i8 %93, i8* %v.2766, align 1, !tbaa !1
  br label %while.cond77.backedge

if.else386:                                       ; preds = %if.then325, %land.lhs.true279
  %97 = phi i8 [ %82, %land.lhs.true279 ], [ %.pre788, %if.then325 ]
  %cmp388 = icmp eq i8 %97, 10
  br i1 %cmp388, label %cont403, label %lor.lhs.false390

lor.lhs.false390:                                 ; preds = %if.else386
  %cmp395 = icmp eq i8 %97, 39
  %or.cond711 = and i1 %cmp297, %cmp395
  br i1 %or.cond711, label %if.else417, label %if.end451

cont403:                                          ; preds = %if.else386
  store i8 36, i8* %v.2766, align 1, !tbaa !1
  %incdec.ptr404 = getelementptr inbounds i8* %v.2766, i32 1
  store i8 39, i8* %incdec.ptr404, align 1, !tbaa !1
  %incdec.ptr407 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 92, i8* %incdec.ptr407, align 1, !tbaa !1
  %incdec.ptr410 = getelementptr inbounds i8* %v.2766, i32 3
  store i8 110, i8* %incdec.ptr410, align 1, !tbaa !1
  %incdec.ptr413 = getelementptr inbounds i8* %v.2766, i32 4
  %incdec.ptr416 = getelementptr inbounds i8* %v.2766, i32 5
  store i8 39, i8* %incdec.ptr413, align 1, !tbaa !1
  br label %if.end443

if.else417:                                       ; preds = %lor.lhs.false390
  %98 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 140), align 1, !tbaa !1
  %tobool418 = icmp eq i8 %98, 0
  br i1 %tobool418, label %cont421, label %cont437

cont421:                                          ; preds = %if.else417
  %incdec.ptr422 = getelementptr inbounds i8* %v.2766, i32 1
  store i8 39, i8* %v.2766, align 1, !tbaa !1
  %99 = load i8* %u.2768, align 1, !tbaa !1
  %cmp424 = icmp eq i8 %99, 39
  br i1 %cmp424, label %cont428, label %if.end430

cont428:                                          ; preds = %cont421
  %incdec.ptr429 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 92, i8* %incdec.ptr422, align 1, !tbaa !1
  %.pre786 = load i8* %u.2768, align 1, !tbaa !1
  br label %if.end430

if.end430:                                        ; preds = %cont428, %cont421
  %100 = phi i8 [ %.pre786, %cont428 ], [ %99, %cont421 ]
  %v.7 = phi i8* [ %incdec.ptr429, %cont428 ], [ %incdec.ptr422, %cont421 ]
  store i8 %100, i8* %v.7, align 1, !tbaa !1
  %incdec.ptr431 = getelementptr inbounds i8* %v.7, i32 1
  %incdec.ptr434 = getelementptr inbounds i8* %v.7, i32 2
  store i8 39, i8* %incdec.ptr431, align 1, !tbaa !1
  br label %if.end443

cont437:                                          ; preds = %if.else417
  store i8 39, i8* %v.2766, align 1, !tbaa !1
  %incdec.ptr438 = getelementptr inbounds i8* %v.2766, i32 1
  %incdec.ptr441 = getelementptr inbounds i8* %v.2766, i32 2
  store i8 39, i8* %incdec.ptr438, align 1, !tbaa !1
  br label %if.end443

if.end443:                                        ; preds = %if.end430, %cont437, %cont403
  %v.8 = phi i8* [ %incdec.ptr416, %cont403 ], [ %incdec.ptr441, %cont437 ], [ %incdec.ptr434, %if.end430 ]
  %incdec.ptr444 = getelementptr inbounds i8* %u.2768, i32 1
  br label %while.cond77.backedge

while.cond77.backedge:                            ; preds = %cont191, %if.end224, %while.cond491.preheader, %if.end503, %if.end443, %if.end473, %if.then229, %if.end379, %if.else381, %if.end353, %cont509, %while.end109
  %quotesub.1.be = phi i32 [ %quotesub.1762, %if.end473 ], [ %quotesub.1762, %cont509 ], [ %quotesub.1762, %if.then229 ], [ %quotesub.2, %if.end353 ], [ %quotesub.3, %if.end379 ], [ %quotesub.1762, %if.else381 ], [ %quotesub.1762, %if.end443 ], [ %quotesub.1762, %while.end109 ], [ %quotesub.1762, %if.end503 ], [ %quotesub.1762, %while.cond491.preheader ], [ %quotesub.1762, %if.end224 ], [ %quotesub.1762, %cont191 ]
  %quotestart.0.be = phi i8* [ %quotestart.0764, %if.end473 ], [ %quotestart.0764, %cont509 ], [ %quotestart.0764, %if.then229 ], [ %incdec.ptr355, %if.end353 ], [ %quotestart.1, %if.end379 ], [ %quotestart.0764, %if.else381 ], [ %quotestart.0764, %if.end443 ], [ %quotestart.0764, %while.end109 ], [ %quotestart.0764, %if.end503 ], [ %quotestart.0764, %while.cond491.preheader ], [ %quotestart.0764, %if.end224 ], [ %quotestart.0764, %cont191 ]
  %v.2.be = phi i8* [ %incdec.ptr475, %if.end473 ], [ %incdec.ptr517, %cont509 ], [ %incdec.ptr231, %if.then229 ], [ %incdec.ptr355, %if.end353 ], [ %v.6, %if.end379 ], [ %incdec.ptr383, %if.else381 ], [ %v.8, %if.end443 ], [ %incdec.ptr110, %while.end109 ], [ %incdec.ptr505, %if.end503 ], [ %v.11.ph, %while.cond491.preheader ], [ %incdec.ptr226, %if.end224 ], [ %incdec.ptr196, %cont191 ]
  %u.2.be = phi i8* [ %incdec.ptr474, %if.end473 ], [ %add.ptr478, %cont509 ], [ %incdec.ptr230, %if.then229 ], [ %incdec.ptr354, %if.end353 ], [ %incdec.ptr380, %if.end379 ], [ %incdec.ptr382, %if.else381 ], [ %incdec.ptr444, %if.end443 ], [ %u.3.incdec.ptr113, %while.end109 ], [ %incdec.ptr504, %if.end503 ], [ %u.5, %while.cond491.preheader ], [ %incdec.ptr225, %if.end224 ], [ %incdec.ptr195, %cont191 ]
  %101 = load i8* %u.2.be, align 1, !tbaa !1
  %tobool78 = icmp eq i8 %101, 0
  br i1 %tobool78, label %if.end520, label %while.body79

if.end451:                                        ; preds = %lor.lhs.false299, %cont236, %land.lhs.true302, %lor.lhs.false390, %lor.lhs.false272, %if.then132, %land.lhs.true321
  %dobackslash.0 = phi i32 [ 0, %if.then132 ], [ 0, %land.lhs.true321 ], [ 0, %lor.lhs.false272 ], [ 1, %lor.lhs.false390 ], [ 0, %land.lhs.true302 ], [ 0, %cont236 ], [ 0, %lor.lhs.false299 ]
  %v.9 = phi i8* [ %incdec.ptr134, %if.then132 ], [ %v.2766, %land.lhs.true321 ], [ %v.2766, %lor.lhs.false272 ], [ %v.2766, %lor.lhs.false390 ], [ %v.2766, %land.lhs.true302 ], [ %v.2766, %cont236 ], [ %v.2766, %lor.lhs.false299 ]
  %u.5 = phi i8* [ %arrayidx, %if.then132 ], [ %u.2768, %land.lhs.true321 ], [ %u.2768, %lor.lhs.false272 ], [ %u.2768, %lor.lhs.false390 ], [ %u.2768, %land.lhs.true302 ], [ %u.2768, %cont236 ], [ %u.2768, %lor.lhs.false299 ]
  %102 = load i8* %u.5, align 1, !tbaa !1
  %103 = icmp sgt i8 %102, -1
  br i1 %103, label %cont454, label %ioc_bb453

ioc_bb453:                                        ; preds = %if.end451
  %104 = sext i8 %102 to i64
  call void @__ioc_report_conversion(i32 4497, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %104, i8 1) nounwind
  br label %cont454

cont454:                                          ; preds = %ioc_bb453, %if.end451
  %idxprom455 = zext i8 %102 to i32
  %arrayidx456 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom455
  %105 = load i16* %arrayidx456, align 2, !tbaa !5
  %and462 = and i16 %105, 16
  %tobool463 = icmp eq i16 %and462, 0
  %or.cond712 = and i1 %tobool463, %cmp465
  br i1 %or.cond712, label %if.end476, label %if.then467

if.then467:                                       ; preds = %cont454
  %tobool468 = icmp eq i32 %dobackslash.0, 0
  br i1 %tobool468, label %if.end473, label %cont471

cont471:                                          ; preds = %if.then467
  %incdec.ptr472 = getelementptr inbounds i8* %v.9, i32 1
  store i8 92, i8* %v.9, align 1, !tbaa !1
  br label %if.end473

if.end473:                                        ; preds = %if.then467, %cont471
  %v.10 = phi i8* [ %incdec.ptr472, %cont471 ], [ %v.9, %if.then467 ]
  %incdec.ptr474 = getelementptr inbounds i8* %u.5, i32 1
  %106 = load i8* %u.5, align 1, !tbaa !1
  %incdec.ptr475 = getelementptr inbounds i8* %v.10, i32 1
  store i8 %106, i8* %v.10, align 1, !tbaa !1
  br label %while.cond77.backedge

if.end476:                                        ; preds = %cont454
  %call477 = call i32 @mb_metacharlenconv(i8* %u.5, i32* %cc)
  %add.ptr478 = getelementptr inbounds i8* %u.5, i32 %call477
  %107 = load i32* %cc, align 4, !tbaa !0
  %cmp479 = icmp eq i32 %107, -1
  br i1 %cmp479, label %cont509, label %land.lhs.true481

land.lhs.true481:                                 ; preds = %if.end476
  %call482 = call i32 @iswprint(i32 %107) nounwind
  %tobool483 = icmp eq i32 %call482, 0
  br i1 %tobool483, label %cont509, label %if.then484

if.then484:                                       ; preds = %land.lhs.true481
  %tobool485 = icmp eq i32 %dobackslash.0, 0
  br i1 %tobool485, label %while.cond491.preheader, label %cont488

cont488:                                          ; preds = %if.then484
  %incdec.ptr489 = getelementptr inbounds i8* %v.9, i32 1
  store i8 92, i8* %v.9, align 1, !tbaa !1
  br label %while.cond491.preheader

while.cond491.preheader:                          ; preds = %cont488, %if.then484
  %v.11.ph = phi i8* [ %v.9, %if.then484 ], [ %incdec.ptr489, %cont488 ]
  %cmp492745 = icmp sgt i32 %call477, 0
  br i1 %cmp492745, label %while.body494, label %while.cond77.backedge

while.body494:                                    ; preds = %while.cond491.preheader, %if.end503
  %u.6747 = phi i8* [ %incdec.ptr504, %if.end503 ], [ %u.5, %while.cond491.preheader ]
  %v.11746 = phi i8* [ %incdec.ptr505, %if.end503 ], [ %v.11.ph, %while.cond491.preheader ]
  %108 = load i8* %u.6747, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4517, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp498 = icmp eq i8 %108, -125
  br i1 %cmp498, label %if.then500, label %if.end503

if.then500:                                       ; preds = %while.body494
  %incdec.ptr501 = getelementptr inbounds i8* %u.6747, i32 1
  %109 = load i8* %u.6747, align 1, !tbaa !1
  %incdec.ptr502 = getelementptr inbounds i8* %v.11746, i32 1
  store i8 %109, i8* %v.11746, align 1, !tbaa !1
  br label %if.end503

if.end503:                                        ; preds = %if.then500, %while.body494
  %v.12 = phi i8* [ %incdec.ptr502, %if.then500 ], [ %v.11746, %while.body494 ]
  %u.7 = phi i8* [ %incdec.ptr501, %if.then500 ], [ %u.6747, %while.body494 ]
  %incdec.ptr504 = getelementptr inbounds i8* %u.7, i32 1
  %110 = load i8* %u.7, align 1, !tbaa !1
  %incdec.ptr505 = getelementptr inbounds i8* %v.12, i32 1
  store i8 %110, i8* %v.12, align 1, !tbaa !1
  %cmp492 = icmp ult i8* %incdec.ptr504, %add.ptr478
  br i1 %cmp492, label %while.body494, label %while.cond77.backedge

cont509:                                          ; preds = %if.end476, %land.lhs.true481
  store i8 36, i8* %v.9, align 1, !tbaa !1
  %incdec.ptr510 = getelementptr inbounds i8* %v.9, i32 1
  %incdec.ptr513 = getelementptr inbounds i8* %v.9, i32 2
  store i8 39, i8* %incdec.ptr510, align 1, !tbaa !1
  %call514 = call fastcc i8* @addunprintable(i8* %incdec.ptr513, i8* %u.5, i8* %add.ptr478)
  %incdec.ptr517 = getelementptr inbounds i8* %call514, i32 1
  store i8 39, i8* %call514, align 1, !tbaa !1
  br label %while.cond77.backedge

if.end520:                                        ; preds = %while.cond77.backedge
  %cmp521 = icmp eq i32 %quotesub.1.be, 2
  br i1 %cmp521, label %cont525, label %cont529

cont525:                                          ; preds = %if.end520
  %incdec.ptr526 = getelementptr inbounds i8* %v.2.be, i32 1
  store i8 39, i8* %v.2.be, align 1, !tbaa !1
  br label %cont529

cont529:                                          ; preds = %while.cond77.preheader, %if.then21, %while.cond.backedge, %if.end520, %cont525
  %u.8722 = phi i8* [ %u.2.be, %cont525 ], [ %u.2.be, %if.end520 ], [ %s, %if.then21 ], [ %u.0.be, %while.cond.backedge ], [ %s, %while.cond77.preheader ]
  %v.14 = phi i8* [ %incdec.ptr526, %cont525 ], [ %v.2.be, %if.end520 ], [ %call20, %if.then21 ], [ %v.0.be, %while.cond.backedge ], [ %v.2.ph.ph, %while.cond77.preheader ]
  store i8 0, i8* %v.14, align 1, !tbaa !1
  %tobool530 = icmp eq i8** %e, null
  br i1 %tobool530, label %if.end535, label %land.lhs.true531

land.lhs.true531:                                 ; preds = %cont529
  %111 = load i8** %e, align 4, !tbaa !3
  %cmp532 = icmp eq i8* %111, %u.8722
  br i1 %cmp532, label %if.then534, label %if.end535

if.then534:                                       ; preds = %land.lhs.true531
  store i8* %v.14, i8** %e, align 4, !tbaa !3
  br label %if.end535

if.end535:                                        ; preds = %cont529, %if.then534, %land.lhs.true531
  %call536 = call i8* @dupstring(i8* %call20) nounwind
  call void @zfree(i8* %call20, i32 %alloclen.1) nounwind
  ret i8* %call536
}

declare i8* @zhtricat(i8*, i8*, i8*)

define i8* @get_username() nounwind {
entry:
  %call = tail call i32 @getuid() nounwind
  %0 = load i32* @cached_uid, align 4, !tbaa !0
  %cmp = icmp eq i32 %call, %0
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  %.pre = load i8** @cached_username, align 4, !tbaa !3
  br label %if.end5

if.then:                                          ; preds = %entry
  store i32 %call, i32* @cached_uid, align 4, !tbaa !0
  %1 = load i8** @cached_username, align 4, !tbaa !3
  tail call void @zsfree(i8* %1) nounwind
  %call1 = tail call %struct.passwd* @getpwuid(i32 %call) nounwind
  %tobool = icmp eq %struct.passwd* %call1, null
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %pw_name = getelementptr inbounds %struct.passwd* %call1, i32 0, i32 0
  %2 = load i8** %pw_name, align 4, !tbaa !3
  %call3 = tail call i8* @ztrdup(i8* %2) nounwind
  store i8* %call3, i8** @cached_username, align 4, !tbaa !3
  br label %if.end5

if.else:                                          ; preds = %if.then
  %call4 = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  store i8* %call4, i8** @cached_username, align 4, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %if.then2, %if.else
  %3 = phi i8* [ %.pre, %entry.if.end5_crit_edge ], [ %call3, %if.then2 ], [ %call4, %if.else ]
  ret i8* %3
}

declare i32 @getuid() nounwind

declare %struct.passwd* @getpwuid(i32)

declare i8* @zalloc(i32)

declare void @free(i8* nocapture) nounwind

define internal void @finddir_scan(%struct.hashnode* %hn, i32 %flags) nounwind {
entry:
  %0 = bitcast %struct.hashnode* %hn to %struct.nameddir*
  %diff = getelementptr inbounds %struct.hashnode* %hn, i32 1, i32 1
  %1 = bitcast i8** %diff to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %3 = load i32* @finddir_best, align 4, !tbaa !0
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %dir = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %4 = bitcast %struct.hashnode* %dir to i8**
  %5 = load i8** %4, align 4, !tbaa !3
  %6 = load i8** @finddir_full, align 4, !tbaa !3
  %tobool.i = icmp eq i8* %5, null
  br i1 %tobool.i, label %if.end, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %land.lhs.true
  %7 = load i8* %5, align 1, !tbaa !1
  %8 = load i8* %6, align 1, !tbaa !1
  %cmp20.i = icmp eq i8 %7, %8
  %tobool321.i = icmp ne i8 %7, 0
  br i1 %cmp20.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %tobool324.i = phi i1 [ %tobool3.i, %for.inc.i ], [ %tobool321.i, %for.cond.preheader.i ]
  %t.addr.023.i = phi i8* [ %incdec.ptr5.i, %for.inc.i ], [ %6, %for.cond.preheader.i ]
  %s.addr.022.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %5, %for.cond.preheader.i ]
  br i1 %tobool324.i, label %for.inc.i, label %land.lhs.true1

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.022.i, i32 1
  %incdec.ptr5.i = getelementptr inbounds i8* %t.addr.023.i, i32 1
  %9 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %10 = load i8* %incdec.ptr5.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %9, %10
  %tobool3.i = icmp ne i8 %9, 0
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %tobool3.lcssa.i = phi i1 [ %tobool321.i, %for.cond.preheader.i ], [ %tobool3.i, %for.inc.i ]
  %.lcssa.i = phi i8 [ %8, %for.cond.preheader.i ], [ %10, %for.inc.i ]
  %tobool3.not.i = xor i1 %tobool3.lcssa.i, true
  %cmp8.i = icmp eq i8 %.lcssa.i, 47
  %or.cond.i = and i1 %cmp8.i, %tobool3.not.i
  br i1 %or.cond.i, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %for.body.i, %for.end.i
  %flags2 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %11 = load i32* %flags2, align 4, !tbaa !0
  %and = and i32 %11, 4
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  store %struct.nameddir* %0, %struct.nameddir** @finddir_last, align 4, !tbaa !3
  store i32 %2, i32* @finddir_best, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.end.i, %land.lhs.true, %land.lhs.true1, %if.then, %entry
  ret void
}

declare i32 @scanhashtable(%struct.hashtable*, i32, i32, i32, void (%struct.hashnode*, i32)*, i32)

define i8** @subst_string_by_hook(i8* %name, i8* %arg1, i8* %orig) nounwind {
entry:
  %0 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode.i = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !3
  %call.i = call %struct.hashnode* %1(%struct.hashtable* %0, i8* %name) nounwind
  %tobool = icmp eq %struct.hashnode* %call.i, null
  br i1 %tobool, label %if.then3, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.hashnode* %call.i to %struct.shfunc*
  %call1 = call i8** @subst_string_by_func(%struct.shfunc* %2, i8* %arg1, i8* %orig)
  %tobool2 = icmp eq i8** %call1, null
  br i1 %tobool2, label %if.then3, label %if.end25

if.then3:                                         ; preds = %entry, %if.end
  %call4 = call i32 @strlen(i8* %name) nounwind readonly
  %3 = icmp sgt i32 %call4, -1
  br i1 %3, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then3
  %4 = zext i32 %call4 to i64
  call void @__ioc_report_conversion(i32 2964, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %4, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then3
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call4, i32 11)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  %8 = sext i32 %call4 to i64
  br i1 %7, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont
  call void @__ioc_report_add_overflow(i32 2965, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %8, i64 11, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %cont, %ioc_bb5
  %9 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %6, align 1
  br i1 %3, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cont6
  call void @__ioc_report_conversion(i32 2966, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %cont6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %vla, i8* %name, i32 %call4, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %vla, i32 %call4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0), i32 11, i32 1, i1 false)
  %call11 = call i8** @getaparam(i8* %vla) nounwind
  %tobool12 = icmp eq i8** %call11, null
  br i1 %tobool12, label %if.end24, label %if.then13

if.then13:                                        ; preds = %cont8
  %call14 = call i8** @arrdup(i8** %call11)
  %10 = load i8** %call14, align 4, !tbaa !3
  %tobool1542 = icmp eq i8* %10, null
  br i1 %tobool1542, label %if.end24, label %for.body

for.body:                                         ; preds = %if.then13, %for.inc
  %11 = phi i8* [ %15, %for.inc ], [ %10, %if.then13 ]
  %arrptr.043 = phi i8** [ %incdec.ptr, %for.inc ], [ %call14, %if.then13 ]
  %12 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode.i38 = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 9
  %13 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i38, align 4, !tbaa !3
  %call.i39 = call %struct.hashnode* %13(%struct.hashtable* %12, i8* %11) nounwind
  %tobool17 = icmp eq %struct.hashnode* %call.i39, null
  br i1 %tobool17, label %for.inc, label %if.then18

if.then18:                                        ; preds = %for.body
  %14 = bitcast %struct.hashnode* %call.i39 to %struct.shfunc*
  %call19 = call i8** @subst_string_by_func(%struct.shfunc* %14, i8* %arg1, i8* %orig)
  %tobool20 = icmp eq i8** %call19, null
  br i1 %tobool20, label %for.inc, label %if.end24

for.inc:                                          ; preds = %if.then18, %for.body
  %incdec.ptr = getelementptr inbounds i8** %arrptr.043, i32 1
  %15 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool15 = icmp eq i8* %15, null
  br i1 %tobool15, label %if.end24, label %for.body

if.end24:                                         ; preds = %if.then13, %if.then18, %for.inc, %cont8
  %ret.3 = phi i8** [ null, %cont8 ], [ null, %if.then13 ], [ %call19, %if.then18 ], [ null, %for.inc ]
  call void @llvm.stackrestore(i8* %9)
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.end24
  %ret.4 = phi i8** [ %call1, %if.end ], [ %ret.3, %if.end24 ]
  ret i8** %ret.4
}

define i32 @arrlen(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool3 = icmp eq i8* %0, null
  br i1 %tobool3, label %for.end, label %for.inc

for.inc:                                          ; preds = %entry, %for.cond.backedge
  %count.05 = phi i32 [ %2, %for.cond.backedge ], [ 0, %entry ]
  %s.addr.04 = phi i8** [ %incdec.ptr, %for.cond.backedge ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8** %s.addr.04, i32 1
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.05, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb
  %4 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool = icmp eq i8* %4, null
  br i1 %tobool, label %for.end, label %for.inc

ioc_bb:                                           ; preds = %for.inc
  %5 = sext i32 %count.05 to i64
  tail call void @__ioc_report_add_overflow(i32 1774, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %2, %for.cond.backedge ]
  ret i32 %count.0.lcssa
}

define i64 @zstrtol(i8* %s, i8** %t, i32 %base) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cont4, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %cont4 ]
  %0 = load i8* %s.addr.0, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %while.cond
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 1805, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %while.cond
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %3, 8
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %cont4
  %4 = load i8* %s.addr.0, align 1, !tbaa !1
  %cmp = icmp eq i8 %4, 45
  br i1 %cmp, label %if.end17, label %if.else

if.else:                                          ; preds = %while.end
  %cmp13 = icmp eq i8 %4, 43
  %incdec.ptr16.s.addr.0 = select i1 %cmp13, i8* %incdec.ptr, i8* %s.addr.0
  br label %if.end17

if.end17:                                         ; preds = %while.end, %if.else
  %s.addr.1 = phi i8* [ %incdec.ptr16.s.addr.0, %if.else ], [ %incdec.ptr, %while.end ]
  %tobool18 = icmp eq i32 %base, 0
  br i1 %tobool18, label %if.then19, label %if.end37

if.then19:                                        ; preds = %if.end17
  %5 = load i8* %s.addr.1, align 1, !tbaa !1
  %cmp21 = icmp eq i8 %5, 48
  br i1 %cmp21, label %if.else24, label %for.cond.preheader

if.else24:                                        ; preds = %if.then19
  %incdec.ptr25 = getelementptr inbounds i8* %s.addr.1, i32 1
  %6 = load i8* %incdec.ptr25, align 1, !tbaa !1
  switch i8 %6, label %for.cond.preheader [
    i8 120, label %if.else44.thread280
    i8 88, label %if.else44.thread280
  ]

if.else44.thread280:                              ; preds = %if.else24, %if.else24
  %incdec.ptr33 = getelementptr inbounds i8* %s.addr.1, i32 2
  br label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %if.else44, %if.else44.thread280
  %base.addr.0266283.ph = phi i32 [ 16, %if.else44.thread280 ], [ %base, %if.else44 ]
  %s.addr.2268282.ph = phi i8* [ %incdec.ptr33, %if.else44.thread280 ], [ %s.addr.1, %if.else44 ]
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %base.addr.0266283.ph, i32 97)
  %8 = sext i32 %base.addr.0266283.ph to i64
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %base.addr.0266283.ph, i32 65)
  %10 = icmp sgt i32 %base.addr.0266283.ph, -1
  br label %for.cond81

if.end37:                                         ; preds = %if.end17
  %base.addr.0.off = add i32 %base, -2
  %11 = icmp ugt i32 %base.addr.0.off, 34
  br i1 %11, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end37
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([45 x i8]* @.str35, i32 0, i32 0), i32 %base)
  br label %return

if.else44:                                        ; preds = %if.end37
  %cmp45 = icmp slt i32 %base, 11
  br i1 %cmp45, label %if.else44.for.cond.preheader_crit_edge, label %for.cond81.preheader

if.else44.for.cond.preheader_crit_edge:           ; preds = %if.else44
  %.pre297 = load i8* %s.addr.1, align 1, !tbaa !1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else44.for.cond.preheader_crit_edge, %if.then19, %if.else24
  %12 = phi i8 [ %6, %if.else24 ], [ %5, %if.then19 ], [ %.pre297, %if.else44.for.cond.preheader_crit_edge ]
  %base.addr.0266279.ph = phi i32 [ 8, %if.else24 ], [ 10, %if.then19 ], [ %base, %if.else44.for.cond.preheader_crit_edge ]
  %s.addr.2268278.ph = phi i8* [ %incdec.ptr25, %if.else24 ], [ %s.addr.1, %if.then19 ], [ %s.addr.1, %if.else44.for.cond.preheader_crit_edge ]
  %cmp49285 = icmp sgt i8 %12, 47
  br i1 %cmp49285, label %land.rhs.lr.ph, label %if.end194

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %13 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %base.addr.0266279.ph, i32 48)
  %14 = sext i32 %base.addr.0266279.ph to i64
  %15 = icmp sgt i32 %base.addr.0266279.ph, -1
  %16 = extractvalue { i32, i1 } %13, 1
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %conv48290.in = phi i8 [ %12, %land.rhs.lr.ph ], [ %30, %for.inc ]
  %calc.0289 = phi i64 [ 0, %land.rhs.lr.ph ], [ %calc.1, %for.inc ]
  %trunc.0288 = phi i8* [ null, %land.rhs.lr.ph ], [ %trunc.1, %for.inc ]
  %s.addr.3286 = phi i8* [ %s.addr.2268278.ph, %land.rhs.lr.ph ], [ %incdec.ptr79, %for.inc ]
  %conv48290 = sext i8 %conv48290.in to i32
  %17 = extractvalue { i32, i1 } %13, 0
  br i1 %16, label %ioc_bb52, label %cont53

ioc_bb52:                                         ; preds = %land.rhs
  tail call void @__ioc_report_add_overflow(i32 1825, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %14, i8 13) nounwind
  br label %cont53

cont53:                                           ; preds = %land.rhs, %ioc_bb52
  %cmp54 = icmp slt i32 %conv48290, %17
  br i1 %cmp54, label %for.body, label %if.end160

for.body:                                         ; preds = %cont53
  %tobool56 = icmp eq i8* %trunc.0288, null
  br i1 %tobool56, label %if.end58, label %for.inc

if.end58:                                         ; preds = %for.body
  br i1 %15, label %cont61, label %ioc_bb60

ioc_bb60:                                         ; preds = %if.end58
  tail call void @__ioc_report_conversion(i32 1828, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont61

cont61:                                           ; preds = %ioc_bb60, %if.end58
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %calc.0289, i64 %14)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %cont61
  tail call void @__ioc_report_mul_overflow(i32 1828, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %calc.0289, i64 %14, i8 6) nounwind
  br label %cont64

cont64:                                           ; preds = %cont61, %ioc_bb63
  %21 = load i8* %s.addr.3286, align 1, !tbaa !1
  %22 = sext i8 %21 to i64
  %23 = icmp sgt i8 %21, -1
  br i1 %23, label %cont67, label %ioc_bb66

ioc_bb66:                                         ; preds = %cont64
  tail call void @__ioc_report_conversion(i32 1828, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont67

cont67:                                           ; preds = %ioc_bb66, %cont64
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %19, i64 %22)
  %25 = extractvalue { i64, i1 } %24, 0
  %26 = extractvalue { i64, i1 } %24, 1
  br i1 %26, label %ioc_bb69, label %cont72

ioc_bb69:                                         ; preds = %cont67
  tail call void @__ioc_report_add_overflow(i32 1828, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %19, i64 %22, i8 6) nounwind
  br label %cont72

cont72:                                           ; preds = %ioc_bb69, %cont67
  %27 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %25, i64 48)
  %28 = extractvalue { i64, i1 } %27, 0
  %29 = extractvalue { i64, i1 } %27, 1
  br i1 %29, label %ioc_bb73, label %cont74

ioc_bb73:                                         ; preds = %cont72
  tail call void @__ioc_report_sub_overflow(i32 1828, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %25, i64 48, i8 6) nounwind
  br label %cont74

cont74:                                           ; preds = %cont72, %ioc_bb73
  %cmp75 = icmp ult i64 %28, %calc.0289
  %s.addr.3.trunc.0 = select i1 %cmp75, i8* %s.addr.3286, i8* null
  %calc.0. = select i1 %cmp75, i64 %calc.0289, i64 %28
  br label %for.inc

for.inc:                                          ; preds = %cont74, %for.body
  %trunc.1 = phi i8* [ %trunc.0288, %for.body ], [ %s.addr.3.trunc.0, %cont74 ]
  %calc.1 = phi i64 [ %calc.0289, %for.body ], [ %calc.0., %cont74 ]
  %incdec.ptr79 = getelementptr inbounds i8* %s.addr.3286, i32 1
  %30 = load i8* %incdec.ptr79, align 1, !tbaa !1
  %cmp49 = icmp sgt i8 %30, 47
  br i1 %cmp49, label %land.rhs, label %if.end160

for.cond81:                                       ; preds = %for.cond81.preheader, %for.inc156
  %s.addr.4 = phi i8* [ %incdec.ptr157, %for.inc156 ], [ %s.addr.2268282.ph, %for.cond81.preheader ]
  %trunc.2 = phi i8* [ %trunc.3, %for.inc156 ], [ null, %for.cond81.preheader ]
  %calc.2 = phi i64 [ %calc.3, %for.inc156 ], [ 0, %for.cond81.preheader ]
  %31 = load i8* %s.addr.4, align 1, !tbaa !1
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %cont84, label %ioc_bb83

ioc_bb83:                                         ; preds = %for.cond81
  %33 = sext i8 %31 to i64
  tail call void @__ioc_report_conversion(i32 1836, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont84

cont84:                                           ; preds = %ioc_bb83, %for.cond81
  %idxprom85 = zext i8 %31 to i32
  %arrayidx86 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom85
  %34 = load i16* %arrayidx86, align 2, !tbaa !5
  %and92 = and i16 %34, 1
  %tobool93 = icmp eq i16 %and92, 0
  br i1 %tobool93, label %lor.lhs.false94, label %for.body117

lor.lhs.false94:                                  ; preds = %cont84
  %35 = load i8* %s.addr.4, align 1, !tbaa !1
  %conv95 = sext i8 %35 to i32
  %cmp96 = icmp sgt i8 %35, 96
  br i1 %cmp96, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false94
  %36 = extractvalue { i32, i1 } %7, 0
  %37 = extractvalue { i32, i1 } %7, 1
  br i1 %37, label %ioc_bb99, label %cont100

ioc_bb99:                                         ; preds = %land.lhs.true
  tail call void @__ioc_report_add_overflow(i32 1836, i32 82, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 97, i64 %8, i8 13) nounwind
  br label %cont100

cont100:                                          ; preds = %land.lhs.true, %ioc_bb99
  %38 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %36, i32 10)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb101, label %cont102

ioc_bb101:                                        ; preds = %cont100
  %41 = sext i32 %36 to i64
  tail call void @__ioc_report_sub_overflow(i32 1836, i32 89, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %41, i64 10, i8 13) nounwind
  br label %cont102

cont102:                                          ; preds = %cont100, %ioc_bb101
  %cmp103 = icmp slt i32 %conv95, %39
  br i1 %cmp103, label %for.body117, label %lor.rhsthread-pre-split

lor.rhsthread-pre-split:                          ; preds = %cont102
  %.pr = load i8* %s.addr.4, align 1, !tbaa !1
  br label %lor.rhs

lor.rhs:                                          ; preds = %lor.rhsthread-pre-split, %lor.lhs.false94
  %42 = phi i8 [ %.pr, %lor.rhsthread-pre-split ], [ %35, %lor.lhs.false94 ]
  %conv105 = sext i8 %42 to i32
  %cmp106 = icmp sgt i8 %42, 64
  br i1 %cmp106, label %land.rhs108, label %if.end160

land.rhs108:                                      ; preds = %lor.rhs
  %43 = extractvalue { i32, i1 } %9, 0
  %44 = extractvalue { i32, i1 } %9, 1
  br i1 %44, label %ioc_bb110, label %cont111

ioc_bb110:                                        ; preds = %land.rhs108
  tail call void @__ioc_report_add_overflow(i32 1836, i32 123, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 65, i64 %8, i8 13) nounwind
  br label %cont111

cont111:                                          ; preds = %land.rhs108, %ioc_bb110
  %45 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %43, i32 10)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb112, label %cont113

ioc_bb112:                                        ; preds = %cont111
  %48 = sext i32 %43 to i64
  tail call void @__ioc_report_sub_overflow(i32 1836, i32 130, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %48, i64 10, i8 13) nounwind
  br label %cont113

cont113:                                          ; preds = %cont111, %ioc_bb112
  %cmp114 = icmp slt i32 %conv105, %46
  br i1 %cmp114, label %for.body117, label %if.end160

for.body117:                                      ; preds = %cont84, %cont102, %cont113
  %tobool118 = icmp eq i8* %trunc.2, null
  br i1 %tobool118, label %if.end120, label %for.inc156

if.end120:                                        ; preds = %for.body117
  br i1 %10, label %cont123, label %ioc_bb122

ioc_bb122:                                        ; preds = %if.end120
  tail call void @__ioc_report_conversion(i32 1839, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont123

cont123:                                          ; preds = %ioc_bb122, %if.end120
  %49 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %calc.2, i64 %8)
  %50 = extractvalue { i64, i1 } %49, 0
  %51 = extractvalue { i64, i1 } %49, 1
  br i1 %51, label %ioc_bb125, label %cont126

ioc_bb125:                                        ; preds = %cont123
  tail call void @__ioc_report_mul_overflow(i32 1839, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %calc.2, i64 %8, i8 6) nounwind
  br label %cont126

cont126:                                          ; preds = %cont123, %ioc_bb125
  %52 = load i8* %s.addr.4, align 1, !tbaa !1
  %53 = icmp sgt i8 %52, -1
  br i1 %53, label %cont129, label %ioc_bb128

ioc_bb128:                                        ; preds = %cont126
  %54 = sext i8 %52 to i64
  tail call void @__ioc_report_conversion(i32 1839, i32 56, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %54, i8 1) nounwind
  %.pre = load i8* %s.addr.4, align 1, !tbaa !1
  br label %cont129

cont129:                                          ; preds = %ioc_bb128, %cont126
  %55 = phi i8 [ %.pre, %ioc_bb128 ], [ %52, %cont126 ]
  %idxprom130 = zext i8 %52 to i32
  %arrayidx131 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom130
  %56 = load i16* %arrayidx131, align 2, !tbaa !5
  %and137 = and i16 %56, 1
  %tobool138 = icmp eq i16 %and137, 0
  %conv139 = sext i8 %55 to i32
  br i1 %tobool138, label %cond.false, label %cond.true

cond.true:                                        ; preds = %cont129
  %57 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv139, i32 48)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb140, label %cond.end

ioc_bb140:                                        ; preds = %cond.true
  %60 = sext i8 %55 to i64
  tail call void @__ioc_report_sub_overflow(i32 1839, i32 78, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %60, i64 48, i8 13) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont129
  %and143 = and i32 %conv139, 31
  %61 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %and143, i32 9)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb144, label %cond.end

ioc_bb144:                                        ; preds = %cond.false
  %64 = zext i32 %and143 to i64
  tail call void @__ioc_report_add_overflow(i32 1839, i32 100, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %64, i64 9, i8 13) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cond.false, %ioc_bb144, %ioc_bb140
  %cond = phi i32 [ %58, %ioc_bb140 ], [ %58, %cond.true ], [ %62, %ioc_bb144 ], [ %62, %cond.false ]
  %65 = sext i32 %cond to i64
  %66 = icmp sgt i32 %cond, -1
  br i1 %66, label %cont148, label %ioc_bb147

ioc_bb147:                                        ; preds = %cond.end
  tail call void @__ioc_report_conversion(i32 1839, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i64 %65, i8 1) nounwind
  br label %cont148

cont148:                                          ; preds = %ioc_bb147, %cond.end
  %67 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %50, i64 %65)
  %68 = extractvalue { i64, i1 } %67, 0
  %69 = extractvalue { i64, i1 } %67, 1
  br i1 %69, label %ioc_bb150, label %cont151

ioc_bb150:                                        ; preds = %cont148
  tail call void @__ioc_report_add_overflow(i32 1839, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %50, i64 %65, i8 6) nounwind
  br label %cont151

cont151:                                          ; preds = %cont148, %ioc_bb150
  %cmp152 = icmp ult i64 %68, %calc.2
  %s.addr.4.trunc.2 = select i1 %cmp152, i8* %s.addr.4, i8* null
  %calc.2. = select i1 %cmp152, i64 %calc.2, i64 %68
  br label %for.inc156

for.inc156:                                       ; preds = %cont151, %for.body117
  %trunc.3 = phi i8* [ %trunc.2, %for.body117 ], [ %s.addr.4.trunc.2, %cont151 ]
  %calc.3 = phi i64 [ %calc.2, %for.body117 ], [ %calc.2., %cont151 ]
  %incdec.ptr157 = getelementptr inbounds i8* %s.addr.4, i32 1
  br label %for.cond81

if.end160:                                        ; preds = %lor.rhs, %cont113, %cont53, %for.inc
  %s.addr.2268277 = phi i8* [ %s.addr.2268278.ph, %for.inc ], [ %s.addr.2268278.ph, %cont53 ], [ %s.addr.2268282.ph, %cont113 ], [ %s.addr.2268282.ph, %lor.rhs ]
  %base.addr.0267 = phi i32 [ %base.addr.0266279.ph, %for.inc ], [ %base.addr.0266279.ph, %cont53 ], [ %base.addr.0266283.ph, %cont113 ], [ %base.addr.0266283.ph, %lor.rhs ]
  %s.addr.5 = phi i8* [ %incdec.ptr79, %for.inc ], [ %s.addr.3286, %cont53 ], [ %s.addr.4, %cont113 ], [ %s.addr.4, %lor.rhs ]
  %trunc.4 = phi i8* [ %trunc.1, %for.inc ], [ %trunc.0288, %cont53 ], [ %trunc.2, %cont113 ], [ %trunc.2, %lor.rhs ]
  %calc.4 = phi i64 [ %calc.1, %for.inc ], [ %calc.0289, %cont53 ], [ %calc.2, %cont113 ], [ %calc.2, %lor.rhs ]
  %tobool161 = icmp eq i8* %trunc.4, null
  br i1 %tobool161, label %land.lhs.true162, label %if.then193

land.lhs.true162:                                 ; preds = %if.end160
  %70 = icmp sgt i64 %calc.4, -1
  br i1 %70, label %if.end194, label %land.lhs.true167

land.lhs.true167:                                 ; preds = %land.lhs.true162
  tail call void @__ioc_report_conversion(i32 1854, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i64 %calc.4, i8 0) nounwind
  br i1 %cmp, label %cont181, label %if.then185

cont181:                                          ; preds = %land.lhs.true167
  %and183 = and i64 %calc.4, 9223372036854775807
  %tobool184 = icmp eq i64 %and183, 0
  br i1 %tobool184, label %if.end194, label %if.then185

if.then185:                                       ; preds = %cont181, %land.lhs.true167
  %add.ptr = getelementptr inbounds i8* %s.addr.5, i32 -1
  %71 = sext i32 %base.addr.0267 to i64
  %72 = icmp sgt i32 %base.addr.0267, -1
  br i1 %72, label %cont188, label %ioc_bb187

ioc_bb187:                                        ; preds = %if.then185
  tail call void @__ioc_report_conversion(i32 1856, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i64 %71, i8 1) nounwind
  br label %cont188

cont188:                                          ; preds = %ioc_bb187, %if.then185
  %73 = icmp eq i32 %base.addr.0267, 0
  br i1 %73, label %trap, label %if.end191

trap:                                             ; preds = %cont188
  tail call void @llvm.trap() noreturn nounwind
  unreachable

if.end191:                                        ; preds = %cont188
  %div = udiv i64 %calc.4, %71
  %tobool192 = icmp eq i8* %add.ptr, null
  br i1 %tobool192, label %if.end194, label %if.then193

if.then193:                                       ; preds = %if.end160, %if.end191
  %calc.5275 = phi i64 [ %div, %if.end191 ], [ %calc.4, %if.end160 ]
  %trunc.5274 = phi i8* [ %add.ptr, %if.end191 ], [ %trunc.4, %if.end160 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %trunc.5274 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %s.addr.2268277 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([37 x i8]* @.str36, i32 0, i32 0), i32 %sub.ptr.sub, i8* %s.addr.2268277)
  br label %if.end194

if.end194:                                        ; preds = %cont181, %for.cond.preheader, %land.lhs.true162, %if.end191, %if.then193
  %s.addr.5303 = phi i8* [ %s.addr.5, %if.end191 ], [ %s.addr.5, %if.then193 ], [ %s.addr.5, %land.lhs.true162 ], [ %s.addr.2268278.ph, %for.cond.preheader ], [ %s.addr.5, %cont181 ]
  %calc.5271 = phi i64 [ %div, %if.end191 ], [ %calc.5275, %if.then193 ], [ %calc.4, %land.lhs.true162 ], [ 0, %for.cond.preheader ], [ %calc.4, %cont181 ]
  %tobool195 = icmp eq i8** %t, null
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.end194
  store i8* %s.addr.5303, i8** %t, align 4, !tbaa !3
  br label %if.end197

if.end197:                                        ; preds = %if.end194, %if.then196
  %74 = icmp sgt i64 %calc.5271, -1
  br i1 %cmp, label %cond.true199, label %cond.false205

cond.true199:                                     ; preds = %if.end197
  br i1 %74, label %cont202, label %ioc_bb201

ioc_bb201:                                        ; preds = %cond.true199
  tail call void @__ioc_report_conversion(i32 1862, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i64 %calc.5271, i8 0) nounwind
  br label %cont202

cont202:                                          ; preds = %ioc_bb201, %cond.true199
  %75 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %calc.5271)
  %76 = extractvalue { i64, i1 } %75, 0
  %77 = extractvalue { i64, i1 } %75, 1
  br i1 %77, label %ioc_bb203, label %return

ioc_bb203:                                        ; preds = %cont202
  tail call void @__ioc_report_sub_overflow(i32 1862, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i64 0, i64 %calc.5271, i8 14) nounwind
  br label %return

cond.false205:                                    ; preds = %if.end197
  br i1 %74, label %return, label %ioc_bb207

ioc_bb207:                                        ; preds = %cond.false205
  tail call void @__ioc_report_conversion(i32 1862, i32 41, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i64 %calc.5271, i8 0) nounwind
  br label %return

return:                                           ; preds = %ioc_bb203, %ioc_bb207, %cond.false205, %cont202, %if.then43
  %retval.0 = phi i64 [ 0, %if.then43 ], [ %76, %ioc_bb203 ], [ %76, %cont202 ], [ %calc.5271, %ioc_bb207 ], [ %calc.5271, %cond.false205 ]
  ret i64 %retval.0
}

declare i8* @hcalloc(i32)

declare i8* @dupstring(i8*)

declare i8* @dupstrpfx(i8*, i32)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

define void @adduserdir(i8* %s, i8* %t, i32 %flags, i32 %always) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %cont2

cont2:                                            ; preds = %entry
  %and = and i32 %flags, 2
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %cont2
  %1 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %getnode2 = getelementptr inbounds %struct.hashtable* %1, i32 0, i32 10
  %2 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !3
  %call = tail call %struct.hashnode* %2(%struct.hashtable* %1, i8* %s) nounwind
  %tobool4 = icmp eq %struct.hashnode* %call, null
  br i1 %tobool4, label %if.end6, label %return

if.end6:                                          ; preds = %land.lhs.true, %cont2
  %tobool7 = icmp ne i32 %always, 0
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 10), align 1, !tbaa !1
  %tobool9 = icmp ne i8 %3, 0
  %or.cond = or i1 %tobool7, %tobool9
  br i1 %or.cond, label %if.end15, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end6
  %4 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %getnode211 = getelementptr inbounds %struct.hashtable* %4, i32 0, i32 10
  %5 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode211, align 4, !tbaa !3
  %call12 = tail call %struct.hashnode* %5(%struct.hashtable* %4, i8* %s) nounwind
  %tobool13 = icmp eq %struct.hashnode* %call12, null
  br i1 %tobool13, label %return, label %if.end15

if.end15:                                         ; preds = %land.lhs.true10, %if.end6
  %tobool16 = icmp eq i8* %t, null
  br i1 %tobool16, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %6 = load i8* %t, align 1, !tbaa !1
  %cmp = icmp eq i8 %6, 47
  br i1 %cmp, label %cont21, label %if.then24

cont21:                                           ; preds = %lor.lhs.false
  %call19 = tail call i32 @strlen(i8* %t) nounwind readonly
  %cmp22 = icmp ugt i32 %call19, 4095
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %lor.lhs.false, %if.end15, %cont21
  %7 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %removenode = getelementptr inbounds %struct.hashtable* %7, i32 0, i32 11
  %8 = load %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !3
  %call25 = tail call %struct.hashnode* %8(%struct.hashtable* %7, i8* %s) nounwind
  %tobool26 = icmp eq %struct.hashnode* %call25, null
  br i1 %tobool26, label %return, label %if.then27

if.then27:                                        ; preds = %if.then24
  %9 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %freenode = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 14
  %10 = load void (%struct.hashnode*)** %freenode, align 4, !tbaa !3
  tail call void %10(%struct.hashnode* %call25) nounwind
  br label %return

if.end29:                                         ; preds = %cont21
  %call30 = tail call i8* @zshcalloc(i32 20) nounwind
  %flags31 = getelementptr inbounds i8* %call30, i32 8
  %11 = bitcast i8* %flags31 to i32*
  store i32 %flags, i32* %11, align 4, !tbaa !0
  %call32 = tail call i32 @strlen(i8* %t) nounwind readonly
  %add.ptr = getelementptr inbounds i8* %t, i32 %call32
  br label %while.cond

while.cond:                                       ; preds = %cont36, %if.end29
  %eptr.0 = phi i8* [ %add.ptr, %if.end29 ], [ %arrayidx, %cont36 ]
  %cmp33 = icmp ugt i8* %eptr.0, %t
  br i1 %cmp33, label %cont36, label %while.end

cont36:                                           ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8* %eptr.0, i32 -1
  %12 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp38 = icmp eq i8 %12, 47
  br i1 %cmp38, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %cont36
  %cmp40 = icmp eq i8* %eptr.0, %t
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %while.end
  %call43 = tail call i8* @ztrdup(i8* %t) nounwind
  %dir = getelementptr inbounds i8* %call30, i32 12
  %13 = bitcast i8* %dir to i8**
  store i8* %call43, i8** %13, align 4, !tbaa !3
  br label %if.end46

if.else:                                          ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint i8* %eptr.0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %t to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call44 = tail call i8* @ztrduppfx(i8* %t, i32 %sub.ptr.sub) nounwind
  %dir45 = getelementptr inbounds i8* %call30, i32 12
  %14 = bitcast i8* %dir45 to i8**
  store i8* %call44, i8** %14, align 4, !tbaa !3
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then42
  %15 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str15 to i32))
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb47, label %cont50

ioc_bb47:                                         ; preds = %if.end46
  tail call void @__ioc_report_sub_overflow(i32 887, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str15 to i32) to i64), i8 5) nounwind
  br label %cont50

cont50:                                           ; preds = %ioc_bb47, %if.end46
  %cmp51 = icmp eq i32 %16, 1
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont50
  %18 = load i8* %s, align 1, !tbaa !1
  %conv59 = zext i8 %18 to i32
  %19 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv59, i32 80)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb61, label %land.lhs.true67

ioc_bb61:                                         ; preds = %cond.true
  %22 = zext i8 %18 to i64
  tail call void @__ioc_report_sub_overflow(i32 887, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %22, i64 80, i8 13) nounwind
  br label %land.lhs.true67

land.lhs.true67:                                  ; preds = %cond.true, %ioc_bb61
  %cmp68 = icmp eq i32 %20, 0
  br i1 %cmp68, label %if.then70, label %lor.lhs.false107

if.then70:                                        ; preds = %land.lhs.true67
  %arrayidx71 = getelementptr inbounds i8* %s, i32 1
  %23 = load i8* %arrayidx71, align 1, !tbaa !1
  %conv72 = zext i8 %23 to i32
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv72, i32 87)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb74, label %land.lhs.true80

ioc_bb74:                                         ; preds = %if.then70
  %27 = zext i8 %23 to i64
  tail call void @__ioc_report_sub_overflow(i32 887, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %27, i64 87, i8 13) nounwind
  br label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.then70, %ioc_bb74
  %cmp81 = icmp eq i32 %25, 0
  br i1 %cmp81, label %if.then83, label %lor.lhs.false107

if.then83:                                        ; preds = %land.lhs.true80
  %arrayidx84 = getelementptr inbounds i8* %s, i32 2
  %28 = load i8* %arrayidx84, align 1, !tbaa !1
  %conv85 = zext i8 %28 to i32
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv85, i32 68)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb87, label %land.lhs.true93

ioc_bb87:                                         ; preds = %if.then83
  %32 = zext i8 %28 to i64
  tail call void @__ioc_report_sub_overflow(i32 887, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %32, i64 68, i8 13) nounwind
  br label %land.lhs.true93

land.lhs.true93:                                  ; preds = %if.then83, %ioc_bb87
  %cmp94 = icmp eq i32 %30, 0
  br i1 %cmp94, label %if.then96, label %lor.lhs.false107

if.then96:                                        ; preds = %land.lhs.true93
  %arrayidx97 = getelementptr inbounds i8* %s, i32 3
  %33 = load i8* %arrayidx97, align 1, !tbaa !1
  %conv98 = zext i8 %33 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont50
  %call105 = tail call i32 @strcmp(i8* %s, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then96, %cond.false
  %cond = phi i32 [ %call105, %cond.false ], [ %conv98, %if.then96 ]
  %tobool106 = icmp eq i32 %cond, 0
  br i1 %tobool106, label %cont180, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %land.lhs.true67, %land.lhs.true80, %land.lhs.true93, %cond.end
  %34 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 1) to i32), i32 ptrtoint ([7 x i8]* @.str16 to i32))
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %ioc_bb110, label %cont113

ioc_bb110:                                        ; preds = %lor.lhs.false107
  tail call void @__ioc_report_sub_overflow(i32 887, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([7 x i8]* @.str16 to i32) to i64), i8 5) nounwind
  br label %cont113

cont113:                                          ; preds = %ioc_bb110, %lor.lhs.false107
  %call172 = tail call i32 @strcmp(i8* %s, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0)) nounwind
  %tobool175 = icmp eq i32 %call172, 0
  br i1 %tobool175, label %cont180, label %if.end183

cont180:                                          ; preds = %cont113, %cond.end
  %36 = load i32* %11, align 4, !tbaa !0
  %or = or i32 %36, 4
  store i32 %or, i32* %11, align 4, !tbaa !0
  br label %if.end183

if.end183:                                        ; preds = %cont113, %cont180
  %37 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %addnode = getelementptr inbounds %struct.hashtable* %37, i32 0, i32 8
  %38 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !3
  %call184 = tail call i8* @ztrdup(i8* %s) nounwind
  tail call void %38(%struct.hashtable* %37, i8* %call184, i8* %call30) nounwind
  br label %return

return:                                           ; preds = %land.lhs.true, %if.then24, %land.lhs.true10, %entry, %if.then27, %if.end183
  ret void
}

declare i8* @zshcalloc(i32)

declare i8* @ztrduppfx(i8*, i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define i8* @getnameddir(i8* %name) nounwind {
entry:
  %0 = load %struct.hashtable** @nameddirtab, align 4, !tbaa !3
  %getnode = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !3
  %call = tail call %struct.hashnode* %1(%struct.hashtable* %0, i8* %name) nounwind
  %tobool = icmp eq %struct.hashnode* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dir = getelementptr inbounds %struct.hashnode* %call, i32 1
  %2 = bitcast %struct.hashnode* %dir to i8**
  %3 = load i8** %2, align 4, !tbaa !3
  %call1 = tail call i8* @dupstring(i8* %3) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.hashtable** @paramtab, align 4, !tbaa !3
  %getnode2 = getelementptr inbounds %struct.hashtable* %4, i32 0, i32 9
  %5 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !3
  %call3 = tail call %struct.hashnode* %5(%struct.hashtable* %4, i8* %name) nounwind
  %tobool4 = icmp eq %struct.hashnode* %call3, null
  br i1 %tobool4, label %if.end36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.hashnode* %call3, i32 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %6, 31
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true23, label %if.end36

land.lhs.true23:                                  ; preds = %land.lhs.true
  %call24 = tail call i8* @getsparam(i8* %name) nounwind
  %tobool25 = icmp eq i8* %call24, null
  br i1 %tobool25, label %if.end36, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %7 = load i8* %call24, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %7, 47
  br i1 %cmp27, label %cont33, label %if.end36

cont33:                                           ; preds = %land.lhs.true26
  %8 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %8, 1073741824
  store i32 %or, i32* %flags, align 4, !tbaa !0
  tail call void @adduserdir(i8* %name, i8* %call24, i32 0, i32 1)
  br label %return

if.end36:                                         ; preds = %land.lhs.true23, %if.end, %land.lhs.true26, %land.lhs.true
  %call37 = tail call %struct.passwd* @getpwnam(i8* %name) nounwind
  %tobool38 = icmp eq %struct.passwd* %call37, null
  br i1 %tobool38, label %return, label %if.then39

if.then39:                                        ; preds = %if.end36
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 30), align 1, !tbaa !1
  %tobool42 = icmp eq i8 %9, 0
  %pw_dir = getelementptr inbounds %struct.passwd* %call37, i32 0, i32 5
  %10 = load i8** %pw_dir, align 4, !tbaa !3
  br i1 %tobool42, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then39
  %11 = load i8* %10, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %11, 47
  br i1 %cmp.i, label %cont.i, label %cont49

cont.i:                                           ; preds = %cond.true
  store i8 0, i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %add.ptr.i = getelementptr inbounds i8* %10, i32 1
  %call.i = tail call fastcc i32 @xsymlinks(i8* %add.ptr.i) nounwind
  %12 = load i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0), align 1, !tbaa !1
  %tobool.i = icmp eq i8 %12, 0
  br i1 %tobool.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %cont.i
  %call3.i = tail call i8* @ztrdup(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %cont49

if.end4.i:                                        ; preds = %cont.i
  %call5.i = tail call i8* @ztrdup(i8* getelementptr inbounds ([8192 x i8]* @xbuf, i32 0, i32 0)) nounwind
  br label %cont49

cond.false:                                       ; preds = %if.then39
  %call45 = tail call i8* @ztrdup(i8* %10) nounwind
  br label %cont49

cont49:                                           ; preds = %if.end4.i, %if.then2.i, %cond.true, %cond.false
  %cond = phi i8* [ %call45, %cond.false ], [ %call5.i, %if.end4.i ], [ %call3.i, %if.then2.i ], [ null, %cond.true ]
  tail call void @adduserdir(i8* %name, i8* %cond, i32 2, i32 1)
  %call50 = tail call i8* @dupstring(i8* %cond) nounwind
  tail call void @zsfree(i8* %cond) nounwind
  br label %return

return:                                           ; preds = %if.end36, %cont49, %cont33, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ %call24, %cont33 ], [ %call50, %cont49 ], [ null, %if.end36 ]
  ret i8* %retval.0
}

declare i8* @getsparam(i8*)

declare %struct.passwd* @getpwnam(i8* nocapture) nounwind

define void @addprepromptfn(void ()* %func) nounwind {
entry:
  %call = tail call i8* @zalloc(i32 4) nounwind
  %func1 = bitcast i8* %call to void ()**
  store void ()* %func, void ()** %func1, align 4, !tbaa !3
  %0 = load %union.linkroot** @prepromptfns, align 4, !tbaa !3
  %tobool = icmp eq %union.linkroot* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call %union.linkroot* @znewlinklist() nounwind
  store %union.linkroot* %call2, %union.linkroot** @prepromptfns, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %union.linkroot* [ %0, %entry ], [ %call2, %if.then ]
  %last = getelementptr inbounds %union.linkroot* %1, i32 0, i32 0, i32 1
  %2 = load %struct.linknode** %last, align 4, !tbaa !3
  %call3 = tail call %struct.linknode* @zinsertlinknode(%union.linkroot* %1, %struct.linknode* %2, i8* %call) nounwind
  ret void
}

declare %union.linkroot* @znewlinklist()

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*)

define void @delprepromptfn(void ()* %func) nounwind {
entry:
  %0 = load %union.linkroot** @prepromptfns, align 4, !tbaa !3
  %first = getelementptr inbounds %union.linkroot* %0, i32 0, i32 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %ln.0.in = phi %struct.linknode** [ %first, %entry ], [ %next, %for.body ]
  %ln.0 = load %struct.linknode** %ln.0.in, align 4
  %tobool = icmp eq %struct.linknode* %ln.0, null
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dat = getelementptr inbounds %struct.linknode* %ln.0, i32 0, i32 2
  %1 = load i8** %dat, align 4, !tbaa !3
  %func1 = bitcast i8* %1 to void ()**
  %2 = load void ()** %func1, align 4, !tbaa !3
  %cmp = icmp eq void ()* %2, %func
  %next = getelementptr inbounds %struct.linknode* %ln.0, i32 0, i32 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %call = tail call i8* @remnode(%union.linkroot* %0, %struct.linknode* %ln.0) nounwind
  tail call void @zfree(i8* %1, i32 4) nounwind
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then
  ret void
}

declare i8* @remnode(%union.linkroot*, %struct.linknode*)

declare void @zfree(i8*, i32)

define void @addtimedfn(void ()* %func, i32 %when) nounwind {
entry:
  %call = tail call i8* @zalloc(i32 8) nounwind
  %func1 = bitcast i8* %call to void ()**
  store void ()* %func, void ()** %func1, align 4, !tbaa !3
  %when2 = getelementptr inbounds i8* %call, i32 4
  %0 = bitcast i8* %when2 to i32*
  store i32 %when, i32* %0, align 4, !tbaa !6
  %1 = load %union.linkroot** @timedfns, align 4, !tbaa !3
  %tobool = icmp eq %union.linkroot* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call %union.linkroot* @znewlinklist() nounwind
  store %union.linkroot* %call3, %union.linkroot** @timedfns, align 4, !tbaa !3
  %last = getelementptr inbounds %union.linkroot* %call3, i32 0, i32 0, i32 1
  %2 = load %struct.linknode** %last, align 4, !tbaa !3
  %call4 = tail call %struct.linknode* @zinsertlinknode(%union.linkroot* %call3, %struct.linknode* %2, i8* %call) nounwind
  br label %if.end22

if.else:                                          ; preds = %entry
  %first = getelementptr inbounds %union.linkroot* %1, i32 0, i32 0, i32 0
  %3 = load %struct.linknode** %first, align 4, !tbaa !3
  %tobool6 = icmp eq %struct.linknode* %3, null
  br i1 %tobool6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %if.else
  %last9 = getelementptr inbounds %union.linkroot* %1, i32 0, i32 0, i32 1
  %4 = load %struct.linknode** %last9, align 4, !tbaa !3
  %call10 = tail call %struct.linknode* @zinsertlinknode(%union.linkroot* %1, %struct.linknode* %4, i8* %call) nounwind
  br label %if.end22

for.cond:                                         ; preds = %if.else, %if.end17
  %ln.0 = phi %struct.linknode* [ %5, %if.end17 ], [ %3, %if.else ]
  %next11 = getelementptr inbounds %struct.linknode* %ln.0, i32 0, i32 0
  %5 = load %struct.linknode** %next11, align 4, !tbaa !3
  %tobool12 = icmp eq %struct.linknode* %5, null
  br i1 %tobool12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %for.cond
  %last15 = getelementptr inbounds %union.linkroot* %1, i32 0, i32 0, i32 1
  %6 = load %struct.linknode** %last15, align 4, !tbaa !3
  %call16 = tail call %struct.linknode* @zinsertlinknode(%union.linkroot* %1, %struct.linknode* %6, i8* %call) nounwind
  br label %if.end22

if.end17:                                         ; preds = %for.cond
  %dat = getelementptr inbounds %struct.linknode* %5, i32 0, i32 2
  %7 = load i8** %dat, align 4, !tbaa !3
  %when18 = getelementptr inbounds i8* %7, i32 4
  %8 = bitcast i8* %when18 to i32*
  %9 = load i32* %8, align 4, !tbaa !6
  %cmp = icmp sgt i32 %9, %when
  br i1 %cmp, label %if.then19, label %for.cond

if.then19:                                        ; preds = %if.end17
  %call20 = tail call %struct.linknode* @zinsertlinknode(%union.linkroot* %1, %struct.linknode* %ln.0, i8* %call) nounwind
  br label %if.end22

if.end22:                                         ; preds = %if.then7, %if.then13, %if.then19, %if.then
  ret void
}

define void @deltimedfn(void ()* %func) nounwind {
entry:
  %0 = load %union.linkroot** @timedfns, align 4, !tbaa !3
  %first = getelementptr inbounds %union.linkroot* %0, i32 0, i32 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %ln.0.in = phi %struct.linknode** [ %first, %entry ], [ %next, %for.body ]
  %ln.0 = load %struct.linknode** %ln.0.in, align 4
  %tobool = icmp eq %struct.linknode* %ln.0, null
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dat = getelementptr inbounds %struct.linknode* %ln.0, i32 0, i32 2
  %1 = load i8** %dat, align 4, !tbaa !3
  %func1 = bitcast i8* %1 to void ()**
  %2 = load void ()** %func1, align 4, !tbaa !3
  %cmp = icmp eq void ()* %2, %func
  %next = getelementptr inbounds %struct.linknode* %ln.0, i32 0, i32 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %call = tail call i8* @remnode(%union.linkroot* %0, %struct.linknode* %ln.0) nounwind
  tail call void @zfree(i8* %1, i32 8) nounwind
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then
  ret void
}

define i32 @callhookfunc(i8* %name, %union.linkroot* %lnklst, i32 %arrayp, i32* %retval1) nounwind {
entry:
  %0 = load i32* @sfcontext, align 4, !tbaa !0
  %1 = load i32* @stopmsg, align 4, !tbaa !0
  %2 = load i32* @incompfunc, align 4, !tbaa !0
  store i32 3, i32* @sfcontext, align 4, !tbaa !0
  store i32 0, i32* @incompfunc, align 4, !tbaa !0
  %3 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode.i = getelementptr inbounds %struct.hashtable* %3, i32 0, i32 9
  %4 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !3
  %call.i = call %struct.hashnode* %4(%struct.hashtable* %3, i8* %name) nounwind
  %tobool = icmp eq %struct.hashnode* %call.i, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.hashnode* %call.i to %struct.shfunc*
  %call2 = call i32 @doshfunc(%struct.shfunc* %5, %union.linkroot* %lnklst, i32 1) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  %stat.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  %tobool3 = icmp eq i32 %arrayp, 0
  br i1 %tobool3, label %if.end26, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @strlen(i8* %name) nounwind readonly
  %6 = icmp sgt i32 %call5, -1
  br i1 %6, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then4
  %7 = zext i32 %call5 to i64
  call void @__ioc_report_conversion(i32 1101, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %7, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then4
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call5, i32 11)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  %11 = sext i32 %call5 to i64
  br i1 %10, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont
  call void @__ioc_report_add_overflow(i32 1102, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %11, i64 11, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %cont, %ioc_bb6
  %12 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %9, align 1
  br i1 %6, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %cont7
  call void @__ioc_report_conversion(i32 1103, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %cont7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %vla, i8* %name, i32 %call5, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %vla, i32 %call5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0), i32 11, i32 1, i1 false)
  %call12 = call i8** @getaparam(i8* %vla) nounwind
  %tobool13 = icmp eq i8** %call12, null
  br i1 %tobool13, label %if.end25, label %if.then14

if.then14:                                        ; preds = %cont9
  %call15 = call i8** @arrdup(i8** %call12)
  %13 = load i8** %call15, align 4, !tbaa !3
  %tobool1643 = icmp eq i8* %13, null
  br i1 %tobool1643, label %if.end25, label %for.body

for.body:                                         ; preds = %if.then14, %for.inc
  %14 = phi i8* [ %18, %for.inc ], [ %13, %if.then14 ]
  %stat.146 = phi i32 [ %stat.2, %for.inc ], [ %stat.0, %if.then14 ]
  %ret.145 = phi i32 [ %ret.3, %for.inc ], [ %ret.0, %if.then14 ]
  %arrptr.044 = phi i8** [ %incdec.ptr, %for.inc ], [ %call15, %if.then14 ]
  %15 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode.i41 = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 9
  %16 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i41, align 4, !tbaa !3
  %call.i42 = call %struct.hashnode* %16(%struct.hashtable* %15, i8* %14) nounwind
  %tobool18 = icmp eq %struct.hashnode* %call.i42, null
  br i1 %tobool18, label %for.inc, label %if.then19

if.then19:                                        ; preds = %for.body
  %17 = bitcast %struct.hashnode* %call.i42 to %struct.shfunc*
  %call20 = call i32 @doshfunc(%struct.shfunc* %17, %union.linkroot* %lnklst, i32 1) nounwind
  %tobool21 = icmp eq i32 %ret.145, 0
  %call20.ret.1 = select i1 %tobool21, i32 %call20, i32 %ret.145
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then19
  %ret.3 = phi i32 [ %call20.ret.1, %if.then19 ], [ %ret.145, %for.body ]
  %stat.2 = phi i32 [ 0, %if.then19 ], [ %stat.146, %for.body ]
  %incdec.ptr = getelementptr inbounds i8** %arrptr.044, i32 1
  %18 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool16 = icmp eq i8* %18, null
  br i1 %tobool16, label %if.end25, label %for.body

if.end25:                                         ; preds = %if.then14, %for.inc, %cont9
  %ret.4 = phi i32 [ %ret.0, %cont9 ], [ %ret.0, %if.then14 ], [ %ret.3, %for.inc ]
  %stat.3 = phi i32 [ %stat.0, %cont9 ], [ %stat.0, %if.then14 ], [ %stat.2, %for.inc ]
  call void @llvm.stackrestore(i8* %12)
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.end25
  %ret.5 = phi i32 [ %ret.4, %if.end25 ], [ %ret.0, %if.end ]
  %stat.4 = phi i32 [ %stat.3, %if.end25 ], [ %stat.0, %if.end ]
  store i32 %0, i32* @sfcontext, align 4, !tbaa !0
  store i32 %1, i32* @stopmsg, align 4, !tbaa !0
  store i32 %2, i32* @incompfunc, align 4, !tbaa !0
  %tobool27 = icmp eq i32* %retval1, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end26
  store i32 %ret.5, i32* %retval1, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.then28
  ret i32 %stat.4
}

define %struct.shfunc* @getshfunc(i8* %nam) nounwind {
entry:
  %0 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode = getelementptr inbounds %struct.hashtable* %0, i32 0, i32 9
  %1 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !3
  %call = tail call %struct.hashnode* %1(%struct.hashtable* %0, i8* %nam) nounwind
  %2 = bitcast %struct.hashnode* %call to %struct.shfunc*
  ret %struct.shfunc* %2
}

declare i32 @doshfunc(%struct.shfunc*, %union.linkroot*, i32)

declare i8** @getaparam(i8*)

define i8** @arrdup(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool3.i = icmp eq i8* %0, null
  br i1 %tobool3.i, label %arrlen.exit, label %for.inc.i

for.inc.i:                                        ; preds = %entry, %for.cond.backedge.i
  %count.05.i = phi i32 [ %2, %for.cond.backedge.i ], [ 0, %entry ]
  %s.addr.04.i = phi i8** [ %incdec.ptr.i, %for.cond.backedge.i ], [ %s, %entry ]
  %incdec.ptr.i = getelementptr inbounds i8** %s.addr.04.i, i32 1
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.05.i, i32 1) nounwind
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb.i, %for.inc.i
  %4 = load i8** %incdec.ptr.i, align 4, !tbaa !3
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %arrlen.exit, label %for.inc.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %5 = sext i32 %count.05.i to i64
  tail call void @__ioc_report_add_overflow(i32 1774, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

arrlen.exit:                                      ; preds = %for.cond.backedge.i, %entry
  %count.0.lcssa.i = phi i32 [ 0, %entry ], [ %2, %for.cond.backedge.i ]
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0.lcssa.i, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %arrlen.exit
  %9 = sext i32 %count.0.lcssa.i to i64
  tail call void @__ioc_report_add_overflow(i32 3305, i32 58, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %arrlen.exit, %ioc_bb
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_conversion(i32 3305, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %15 = zext i32 %7 to i64
  tail call void @__ioc_report_mul_overflow(i32 3305, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %15, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call5 = tail call i8* @zhalloc(i32 %13) nounwind
  %16 = bitcast i8* %call5 to i8**
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %cont4
  %x.0 = phi i8** [ %16, %cont4 ], [ %incdec.ptr7, %while.cond ]
  %s.addr.0 = phi i8** [ %s, %cont4 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8** %s.addr.0, i32 1
  %17 = load i8** %s.addr.0, align 4, !tbaa !3
  %call6 = tail call i8* @dupstring(i8* %17) nounwind
  %incdec.ptr7 = getelementptr inbounds i8** %x.0, i32 1
  store i8* %call6, i8** %x.0, align 4, !tbaa !3
  %tobool = icmp eq i8* %call6, null
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8** %16
}

define void @preprompt() nounwind {
entry:
  %w = alloca i32, align 4
  %x = alloca [2 x i8*], align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp121 = alloca %struct.__sigset_t, align 4
  %call = call i64 @getiparam(i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0)) nounwind
  %call.off = add i64 %call, 2147483648
  %0 = icmp ult i64 %call.off, 4294967296
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_conversion(i32 1131, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i64 %call to i32
  %call1 = call i64 @getiparam(i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0)) nounwind
  %call1.off = add i64 %call1, 2147483648
  %1 = icmp ult i64 %call1.off, 4294967296
  br i1 %1, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont
  call void @__ioc_report_conversion(i32 1132, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %call1, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont
  %conv6 = trunc i64 %call1 to i32
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 133), align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %cont5
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 131), align 1, !tbaa !1
  %4 = load i32* @use_exit_printed, align 4, !tbaa !0
  %notlhs = icmp ne i8 %3, 0
  %notrhs = icmp eq i32 %4, 0
  %or.cond.not = and i1 %notrhs, %notlhs
  %5 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %tobool13 = icmp ne %struct._IO_FILE* %5, null
  %or.cond132 = and i1 %or.cond.not, %tobool13
  br i1 %or.cond132, label %if.then, label %if.end41

if.then:                                          ; preds = %land.lhs.true
  %call14 = call i8* @getsparam(i8* getelementptr inbounds ([16 x i8]* @.str20, i32 0, i32 0)) nounwind
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !1
  store i32 0, i32* %w, align 4, !tbaa !0
  %tobool16 = icmp eq i8* %call14, null
  %.call14 = select i1 %tobool16, i8* getelementptr inbounds ([11 x i8]* @.str21, i32 0, i32 0), i8* %call14
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !1
  %call20 = call i8* @promptexpand(i8* %.call14, i32 1, i8* null, i8* null, i32* null) nounwind
  call void @countprompt(i8* %call20, i32* %w, i32* null, i32 -1) nounwind
  store i8 %6, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !1
  %7 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call28 = call i32 @zputs(i8* %call20, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %9 = load i64* @zterm_columns, align 8, !tbaa !4
  %.off = add i64 %9, 2147483648
  %10 = icmp ult i64 %.off, 4294967296
  br i1 %10, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %if.then
  call void @__ioc_report_conversion(i32 1151, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %if.then
  %conv33 = trunc i64 %9 to i32
  %11 = load i32* %w, align 4, !tbaa !0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv33, i32 %11)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %cont32
  %15 = sext i32 %11 to i64
  %16 = sext i32 %conv33 to i64
  call void @__ioc_report_sub_overflow(i32 1151, i32 54, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont35

cont35:                                           ; preds = %cont32, %ioc_bb34
  %17 = load i32* @hasxn, align 4, !tbaa !0
  %lnot = icmp eq i32 %17, 0
  %lnot.ext = zext i1 %lnot to i32
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %13, i32 %lnot.ext)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb37, label %cont38

ioc_bb37:                                         ; preds = %cont35
  %21 = zext i1 %lnot to i64
  %22 = sext i32 %13 to i64
  call void @__ioc_report_sub_overflow(i32 1151, i32 58, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %22, i64 %21, i8 13) nounwind
  br label %cont38

cont38:                                           ; preds = %cont35, %ioc_bb37
  %23 = load i32* %w, align 4, !tbaa !0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0), i32 %19, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), i32 %23, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  %24 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call40 = call i32 @fflush(%struct._IO_FILE* %24) nounwind
  call void @free(i8* %call20) nounwind
  br label %if.end41

if.end41:                                         ; preds = %cont5, %land.lhs.true, %cont38
  %25 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 113), align 1, !tbaa !1
  %tobool42 = icmp eq i8 %25, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @scanjobs() nounwind
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.then43
  %26 = load i32* @errflag, align 4, !tbaa !0
  %tobool45 = icmp eq i32 %26, 0
  br i1 %tobool45, label %if.end47, label %if.end131

if.end47:                                         ; preds = %if.end44
  %call48 = call i32 @callhookfunc(i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), %union.linkroot* null, i32 1, i32* null)
  %27 = load i32* @errflag, align 4, !tbaa !0
  %tobool49 = icmp eq i32 %27, 0
  br i1 %tobool49, label %if.end51, label %if.end131

if.end51:                                         ; preds = %if.end47
  %tobool52 = icmp eq i32 %conv, 0
  br i1 %tobool52, label %if.end63, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end51
  %call54 = call i32 @time(i32* null) nounwind
  %28 = load i32* @preprompt.lastperiodic, align 4, !tbaa !6
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %28, i32 %conv)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb55, label %cont56

ioc_bb55:                                         ; preds = %land.lhs.true53
  %32 = sext i32 %conv to i64
  %33 = sext i32 %28 to i64
  call void @__ioc_report_add_overflow(i32 1169, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %33, i64 %32, i8 13) nounwind
  br label %cont56

cont56:                                           ; preds = %land.lhs.true53, %ioc_bb55
  %cmp = icmp sgt i32 %call54, %30
  br i1 %cmp, label %land.lhs.true58, label %if.end63

land.lhs.true58:                                  ; preds = %cont56
  %call59 = call i32 @callhookfunc(i8* getelementptr inbounds ([9 x i8]* @.str24, i32 0, i32 0), %union.linkroot* null, i32 1, i32* null)
  %tobool60 = icmp eq i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true58
  %call62 = call i32 @time(i32* null) nounwind
  store i32 %call62, i32* @preprompt.lastperiodic, align 4, !tbaa !6
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true58, %cont56, %if.end51, %if.then61
  %34 = load i32* @errflag, align 4, !tbaa !0
  %tobool64 = icmp eq i32 %34, 0
  br i1 %tobool64, label %if.end66, label %if.end131

if.end66:                                         ; preds = %if.end63
  %35 = load i8*** @watch, align 4, !tbaa !3
  %tobool67 = icmp eq i8** %35, null
  br i1 %tobool67, label %if.end79, label %if.then68

if.then68:                                        ; preds = %if.end66
  %call69 = call i32 @time(i32* null) nounwind
  %36 = load i32* @lastwatch, align 4, !tbaa !6
  %call70 = call double @difftime(i32 %call69, i32 %36) nounwind readnone
  %conv71 = fptosi double %call70 to i32
  %conv72 = sext i32 %conv71 to i64
  %call73 = call i64 @getiparam(i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0)) nounwind
  %cmp74 = icmp sgt i64 %conv72, %call73
  br i1 %cmp74, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.then68
  call void @dowatch() nounwind
  %call77 = call i32 @time(i32* null) nounwind
  store i32 %call77, i32* @lastwatch, align 4, !tbaa !6
  br label %if.end79

if.end79:                                         ; preds = %if.then68, %if.end66, %if.then76
  %37 = load i32* @errflag, align 4, !tbaa !0
  %tobool80 = icmp eq i32 %37, 0
  br i1 %tobool80, label %if.end82, label %if.end131

if.end82:                                         ; preds = %if.end79
  %tobool83 = icmp eq i32 %conv6, 0
  br i1 %tobool83, label %if.end126, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end82
  %call85 = call i32 @time(i32* null) nounwind
  %38 = load i32* @lastmailcheck, align 4, !tbaa !6
  %call86 = call double @difftime(i32 %call85, i32 %38) nounwind readnone
  %conv87 = fptosi double %call86 to i32
  %cmp88 = icmp sgt i32 %conv87, %conv6
  br i1 %cmp88, label %if.then90, label %if.end126

if.then90:                                        ; preds = %land.lhs.true84
  %39 = load i8*** @mailpath, align 4, !tbaa !3
  %tobool91 = icmp eq i8** %39, null
  br i1 %tobool91, label %if.else, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.then90
  %40 = load i8** %39, align 4, !tbaa !3
  %tobool93 = icmp eq i8* %40, null
  br i1 %tobool93, label %if.else, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true92
  %41 = load i8* %40, align 1, !tbaa !1
  %tobool96 = icmp eq i8 %41, 0
  br i1 %tobool96, label %if.else, label %if.then97

if.then97:                                        ; preds = %land.lhs.true94
  call fastcc void @checkmailpath(i8** %39)
  br label %if.end124

if.else:                                          ; preds = %land.lhs.true94, %land.lhs.true92, %if.then90
  %42 = load i32* @queueing_enabled, align 4, !tbaa !0
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %42, i32 1)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb98, label %cont99

ioc_bb98:                                         ; preds = %if.else
  %46 = sext i32 %42 to i64
  call void @__ioc_report_add_overflow(i32 1189, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %46, i64 1, i8 13) nounwind
  br label %cont99

cont99:                                           ; preds = %if.else, %ioc_bb98
  store i32 %44, i32* @queueing_enabled, align 4, !tbaa !0
  %call100 = call i8* @getsparam(i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0)) nounwind
  %tobool101 = icmp eq i8* %call100, null
  br i1 %tobool101, label %do.body, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %cont99
  %47 = load i8* %call100, align 1, !tbaa !1
  %tobool104 = icmp eq i8 %47, 0
  br i1 %tobool104, label %do.body, label %if.then105

if.then105:                                       ; preds = %land.lhs.true102
  %arrayidx = getelementptr inbounds [2 x i8*]* %x, i32 0, i32 0
  store i8* %call100, i8** %arrayidx, align 4, !tbaa !3
  %arrayidx106 = getelementptr inbounds [2 x i8*]* %x, i32 0, i32 1
  store i8* null, i8** %arrayidx106, align 4, !tbaa !3
  call fastcc void @checkmailpath(i8** %arrayidx)
  br label %do.body

do.body:                                          ; preds = %land.lhs.true102, %cont99, %if.then105
  %48 = load i32* @queueing_enabled, align 4, !tbaa !0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 -1)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb108, label %cont109

ioc_bb108:                                        ; preds = %do.body
  %52 = sext i32 %48 to i64
  call void @__ioc_report_add_overflow(i32 1198, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %52, i64 -1, i8 13) nounwind
  br label %cont109

cont109:                                          ; preds = %do.body, %ioc_bb108
  store i32 %50, i32* @queueing_enabled, align 4, !tbaa !0
  %tobool110 = icmp eq i32 %50, 0
  br i1 %tobool110, label %while.cond.preheader, label %if.end124

while.cond.preheader:                             ; preds = %cont109
  %53 = load i32* @queue_front, align 4, !tbaa !0
  %54 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp113144 = icmp eq i32 %53, %54
  br i1 %cmp113144, label %if.end124, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont118
  %55 = phi i32 [ %62, %cont118 ], [ %53, %while.cond.preheader ]
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %55, i32 1)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb115, label %cont118

ioc_bb115:                                        ; preds = %while.body
  %59 = sext i32 %55 to i64
  call void @__ioc_report_add_overflow(i32 1202, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %59, i64 1, i8 13) nounwind
  br label %cont118

cont118:                                          ; preds = %ioc_bb115, %while.body
  %rem = srem i32 %57, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !0
  %arrayidx119 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx119) nounwind
  %60 = load i32* @queue_front, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %60
  %61 = load i32* %arrayidx120, align 4, !tbaa !0
  call void @zhandler(i32 %61) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp121, %struct.__sigset_t* byval align 4 %oset) nounwind
  %62 = load i32* @queue_front, align 4, !tbaa !0
  %63 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp113 = icmp eq i32 %62, %63
  br i1 %cmp113, label %if.end124, label %while.body

if.end124:                                        ; preds = %while.cond.preheader, %cont118, %cont109, %if.then97
  %call125 = call i32 @time(i32* null) nounwind
  store i32 %call125, i32* @lastmailcheck, align 4, !tbaa !6
  br label %if.end126

if.end126:                                        ; preds = %if.end82, %if.end124, %land.lhs.true84
  %64 = load %union.linkroot** @prepromptfns, align 4, !tbaa !3
  %tobool127 = icmp eq %union.linkroot* %64, null
  br i1 %tobool127, label %if.end131, label %if.then128

if.then128:                                       ; preds = %if.end126
  %first = getelementptr inbounds %union.linkroot* %64, i32 0, i32 0, i32 0
  %ln.0141 = load %struct.linknode** %first, align 4
  %tobool129142 = icmp eq %struct.linknode* %ln.0141, null
  br i1 %tobool129142, label %if.end131, label %for.body

for.body:                                         ; preds = %if.then128, %for.body
  %ln.0143 = phi %struct.linknode* [ %ln.0, %for.body ], [ %ln.0141, %if.then128 ]
  %dat = getelementptr inbounds %struct.linknode* %ln.0143, i32 0, i32 2
  %65 = load i8** %dat, align 4, !tbaa !3
  %func = bitcast i8* %65 to void ()**
  %66 = load void ()** %func, align 4, !tbaa !3
  call void %66() nounwind
  %next = getelementptr inbounds %struct.linknode* %ln.0143, i32 0, i32 0
  %ln.0 = load %struct.linknode** %next, align 4
  %tobool129 = icmp eq %struct.linknode* %ln.0, null
  br i1 %tobool129, label %if.end131, label %for.body

if.end131:                                        ; preds = %if.then128, %for.body, %if.end126, %if.end79, %if.end63, %if.end47, %if.end44
  ret void
}

declare i64 @getiparam(i8*)

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*)

declare void @countprompt(i8*, i32*, i32*, i32)

declare void @scanjobs()

declare i32 @time(i32*) nounwind

declare double @difftime(i32, i32) nounwind readnone

declare void @dowatch()

define internal fastcc void @checkmailpath(i8** nocapture %s) nounwind {
entry:
  %st = alloca %struct.stat, align 4
  %u = alloca i8*, align 4
  %buf = alloca [8192 x i8], align 1
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool180 = icmp eq i8* %0, null
  br i1 %tobool180, label %while.end137, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %1 = bitcast %struct.stat* %st to %struct.stat64*
  %st_mode = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %st_size = getelementptr inbounds %struct.stat* %st, i32 0, i32 9
  %tv_sec114 = getelementptr inbounds %struct.stat* %st, i32 0, i32 12, i32 0
  %tv_sec116 = getelementptr inbounds %struct.stat* %st, i32 0, i32 13, i32 0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %if.end135
  %2 = phi i8* [ %0, %for.cond.preheader.lr.ph ], [ %57, %if.end135 ]
  %s.addr.0181 = phi i8** [ %s, %for.cond.preheader.lr.ph ], [ %incdec.ptr136, %if.end135 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %v.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %2, %for.cond.preheader ]
  %3 = load i8* %v.0, align 1, !tbaa !1
  switch i8 %3, label %for.inc [
    i8 0, label %for.end
    i8 63, label %for.end
  ]

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %v.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond
  store i8 0, i8* %v.0, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %3, 63
  %add.ptr = getelementptr inbounds i8* %v.0, i32 1
  %storemerge = select i1 %cmp5, i8* %add.ptr, i8* null
  store i8* %storemerge, i8** %u, align 4
  %4 = load i8** %s.addr.0181, align 4, !tbaa !3
  %5 = load i8* %4, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %5, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %for.end
  store i8 %3, i8* %v.0, align 1, !tbaa !1
  %6 = load i8** %s.addr.0181, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([29 x i8]* @.str66, i32 0, i32 0), i8* %6)
  br label %if.end135

if.else11:                                        ; preds = %for.end
  %call = call i8* @unmeta(i8* %4)
  %call.i = call i32 @__xstat64(i32 3, i8* %call, %struct.stat64* %1) nounwind
  %cmp15 = icmp eq i32 %call.i, -1
  br i1 %cmp15, label %if.then17, label %cont28

if.then17:                                        ; preds = %if.else11
  %call18 = call i32* @__errno_location() nounwind readnone
  %7 = load i32* %call18, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %7, 2
  br i1 %cmp19, label %if.end135, label %if.then21

if.then21:                                        ; preds = %if.then17
  %8 = load i8** %s.addr.0181, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([7 x i8]* @.str67, i32 0, i32 0), i32 %7, i8* %8)
  br label %if.end135

cont28:                                           ; preds = %if.else11
  %9 = load i32* %st_mode, align 4, !tbaa !0
  %and = and i32 %9, 61440
  %cmp29 = icmp eq i32 %and, 16384
  br i1 %cmp29, label %if.then31, label %if.else69

if.then31:                                        ; preds = %cont28
  %10 = load i8** %s.addr.0181, align 4, !tbaa !3
  %call32 = call i8* @unmeta(i8* %10)
  %call33 = call %struct.__dirstream* @opendir(i8* %call32) nounwind
  %tobool34 = icmp eq %struct.__dirstream* %call33, null
  br i1 %tobool34, label %if.end135, label %if.then35

if.then35:                                        ; preds = %if.then31
  call void @pushheap() nounwind
  %call36 = call %union.linkroot* @newlinklist() nounwind
  %call26.i176 = call %struct.dirent* @readdir64(%struct.__dirstream* %call33) nounwind
  %tobool27.i177 = icmp eq %struct.dirent* %call26.i176, null
  br i1 %tobool27.i177, label %while.end.thread, label %do.cond.i.preheader.lr.ph

while.end.thread:                                 ; preds = %if.then35
  %call56188 = call i32 @closedir(%struct.__dirstream* %call33) nounwind
  br label %cont58

do.cond.i.preheader.lr.ph:                        ; preds = %if.then35
  %last = getelementptr inbounds %union.linkroot* %call36, i32 0, i32 0, i32 1
  br label %do.cond.i.preheader

do.cond.i.preheader:                              ; preds = %do.cond.i.preheader.lr.ph, %while.cond37.backedge
  %call26.i179 = phi %struct.dirent* [ %call26.i176, %do.cond.i.preheader.lr.ph ], [ %call26.i, %while.cond37.backedge ]
  %ct.0178 = phi i32 [ 1, %do.cond.i.preheader.lr.ph ], [ %19, %while.cond37.backedge ]
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.cond.i.preheader, %do.body.backedge.i
  %call28.i = phi %struct.dirent* [ %call.i168, %do.body.backedge.i ], [ %call26.i179, %do.cond.i.preheader ]
  %arraydecay.pre.i = getelementptr inbounds %struct.dirent* %call28.i, i32 0, i32 4, i32 0
  %11 = load i8* %arraydecay.pre.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %11, 46
  br i1 %cmp.i, label %land.rhs.i, label %zreaddir.exit

land.rhs.i:                                       ; preds = %do.cond.i
  %arrayidx4.i = getelementptr inbounds %struct.dirent* %call28.i, i32 0, i32 4, i32 1
  %12 = load i8* %arrayidx4.i, align 1, !tbaa !1
  switch i8 %12, label %zreaddir.exit [
    i8 0, label %do.body.backedge.i
    i8 46, label %land.rhs11.i
  ]

land.rhs11.i:                                     ; preds = %land.rhs.i
  %arrayidx13.i = getelementptr inbounds %struct.dirent* %call28.i, i32 0, i32 4, i32 2
  %13 = load i8* %arrayidx13.i, align 1, !tbaa !1
  %lnot.i = icmp eq i8 %13, 0
  br i1 %lnot.i, label %do.body.backedge.i, label %zreaddir.exit

do.body.backedge.i:                               ; preds = %land.rhs11.i, %land.rhs.i
  %call.i168 = call %struct.dirent* @readdir64(%struct.__dirstream* %call33) nounwind
  %tobool.i = icmp eq %struct.dirent* %call.i168, null
  br i1 %tobool.i, label %while.end, label %do.cond.i

zreaddir.exit:                                    ; preds = %do.cond.i, %land.rhs.i, %land.rhs11.i
  %call17.i = call i8* @metafy(i8* %arraydecay.pre.i, i32 -1, i32 2) nounwind
  %tobool39 = icmp ne i8* %call17.i, null
  %14 = load i32* @errflag, align 4, !tbaa !0
  %lnot = icmp eq i32 %14, 0
  %or.cond = and i1 %tobool39, %lnot
  br i1 %or.cond, label %while.body43, label %while.end

while.body43:                                     ; preds = %zreaddir.exit
  %15 = load i8** %u, align 4, !tbaa !3
  %tobool44 = icmp eq i8* %15, null
  %16 = load i8** %s.addr.0181, align 4, !tbaa !3
  br i1 %tobool44, label %if.else47, label %if.then45

if.then45:                                        ; preds = %while.body43
  %call46 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8]* @.str68, i32 0, i32 0), i8* %16, i8* %call17.i, i8* %15) nounwind
  br label %if.end50

if.else47:                                        ; preds = %while.body43
  %call49 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* %16, i8* %call17.i) nounwind
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then45
  %17 = load %struct.linknode** %last, align 4, !tbaa !3
  %call52 = call i8* @dupstring(i8* %arraydecay) nounwind
  %call53 = call %struct.linknode* @insertlinknode(%union.linkroot* %call36, %struct.linknode* %17, i8* %call52) nounwind
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ct.0178, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb54, label %while.cond37.backedge

while.cond37.backedge:                            ; preds = %if.end50, %ioc_bb54
  %call26.i = call %struct.dirent* @readdir64(%struct.__dirstream* %call33) nounwind
  %tobool27.i = icmp eq %struct.dirent* %call26.i, null
  br i1 %tobool27.i, label %while.end, label %do.cond.i.preheader

ioc_bb54:                                         ; preds = %if.end50
  %21 = sext i32 %ct.0178 to i64
  call void @__ioc_report_add_overflow(i32 1261, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %while.cond37.backedge

while.end:                                        ; preds = %zreaddir.exit, %while.cond37.backedge, %do.body.backedge.i
  %ct.0175 = phi i32 [ %ct.0178, %do.body.backedge.i ], [ %ct.0178, %zreaddir.exit ], [ %19, %while.cond37.backedge ]
  %call56 = call i32 @closedir(%struct.__dirstream* %call33) nounwind
  %22 = icmp sgt i32 %ct.0175, -1
  br i1 %22, label %cont58, label %ioc_bb57

ioc_bb57:                                         ; preds = %while.end
  %23 = sext i32 %ct.0175 to i64
  call void @__ioc_report_conversion(i32 1264, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont58

cont58:                                           ; preds = %while.end.thread, %ioc_bb57, %while.end
  %ct.0175189 = phi i32 [ 1, %while.end.thread ], [ %ct.0175, %ioc_bb57 ], [ %ct.0175, %while.end ]
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ct.0175189, i32 4)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb59, label %cont60

ioc_bb59:                                         ; preds = %cont58
  %27 = zext i32 %ct.0175189 to i64
  call void @__ioc_report_mul_overflow(i32 1264, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %27, i64 4, i8 5) nounwind
  br label %cont60

cont60:                                           ; preds = %cont58, %ioc_bb59
  %call61 = call i8* @zhalloc(i32 %25) nounwind
  %28 = bitcast i8* %call61 to i8**
  br label %while.cond62

while.cond62:                                     ; preds = %while.cond62, %cont60
  %ap.0 = phi i8** [ %28, %cont60 ], [ %incdec.ptr64, %while.cond62 ]
  %call63 = call i8* @ugetnode(%union.linkroot* %call36) nounwind
  %incdec.ptr64 = getelementptr inbounds i8** %ap.0, i32 1
  store i8* %call63, i8** %ap.0, align 4, !tbaa !3
  %tobool65 = icmp eq i8* %call63, null
  br i1 %tobool65, label %while.end67, label %while.cond62

while.end67:                                      ; preds = %while.cond62
  call fastcc void @checkmailpath(i8** %28)
  call void @popheap() nounwind
  br label %if.end135

if.else69:                                        ; preds = %cont28
  %29 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %tobool70 = icmp eq %struct._IO_FILE* %29, null
  br i1 %tobool70, label %if.end135, label %if.then71

if.then71:                                        ; preds = %if.else69
  %30 = load i64* %st_size, align 4, !tbaa !4
  %tobool72 = icmp eq i64 %30, 0
  br i1 %tobool72, label %if.end109, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then71
  %31 = load i32* %tv_sec114, align 4, !tbaa !6
  %32 = load i32* %tv_sec116, align 4, !tbaa !6
  %cmp74 = icmp sle i32 %31, %32
  %33 = load i32* @lastmailcheck, align 4, !tbaa !6
  %cmp79 = icmp sgt i32 %32, %33
  %or.cond166 = and i1 %cmp74, %cmp79
  br i1 %or.cond166, label %if.then81, label %if.end109

if.then81:                                        ; preds = %land.lhs.true
  %tobool82 = icmp eq i8* %storemerge, null
  br i1 %tobool82, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.then81
  %34 = call i32 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str69, i32 0, i32 0), i32 19, i32 1, %struct._IO_FILE* %29)
  %35 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call85 = call i32 @fflush(%struct._IO_FILE* %35) nounwind
  br label %if.end109

if.else86:                                        ; preds = %if.then81
  %36 = load i32* @underscoreused, align 4, !tbaa !0
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %cont89, label %ioc_bb88

ioc_bb88:                                         ; preds = %if.else86
  %38 = sext i32 %36 to i64
  call void @__ioc_report_conversion(i32 1280, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %38, i8 1) nounwind
  br label %cont89

cont89:                                           ; preds = %ioc_bb88, %if.else86
  %call90 = call i8* @zalloc(i32 %36) nounwind
  %tobool91 = icmp ne i8* %call90, null
  br i1 %tobool91, label %if.then92, label %if.end96

if.then92:                                        ; preds = %cont89
  %39 = load i8** @zunderscore, align 4, !tbaa !3
  %40 = load i32* @underscoreused, align 4, !tbaa !0
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %cont95, label %ioc_bb94

ioc_bb94:                                         ; preds = %if.then92
  %42 = sext i32 %40 to i64
  call void @__ioc_report_conversion(i32 1282, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %42, i8 1) nounwind
  br label %cont95

cont95:                                           ; preds = %ioc_bb94, %if.then92
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call90, i8* %39, i32 %40, i32 1, i1 false)
  br label %if.end96

if.end96:                                         ; preds = %cont89, %cont95
  %43 = load i8** %s.addr.0181, align 4, !tbaa !3
  call void @setunderscore(i8* %43) nounwind
  %44 = load i8** %u, align 4, !tbaa !3
  %call97 = call i8* @dupstring(i8* %44) nounwind
  store i8* %call97, i8** %u, align 4, !tbaa !3
  %call98 = call i32 @parsestr(i8* %call97) nounwind
  %tobool99 = icmp eq i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.end96
  call void @singsub(i8** %u) nounwind
  %45 = load i8** %u, align 4, !tbaa !3
  %46 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call101 = call i32 @zputs(i8* %45, %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call102 = call i32 @fputc(i32 10, %struct._IO_FILE* %47) nounwind
  %48 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call103 = call i32 @fflush(%struct._IO_FILE* %48) nounwind
  br label %if.end104

if.end104:                                        ; preds = %if.end96, %if.then100
  br i1 %tobool91, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end104
  call void @setunderscore(i8* %call90) nounwind
  call void @zfree(i8* %call90, i32 %36) nounwind
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true, %if.then71, %if.then83, %if.then106, %if.end104
  %49 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 105), align 1, !tbaa !1
  %tobool111 = icmp eq i8 %49, 0
  br i1 %tobool111, label %if.end135, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end109
  %50 = load i32* %tv_sec114, align 4, !tbaa !6
  %51 = load i32* %tv_sec116, align 4, !tbaa !6
  %cmp117 = icmp sgt i32 %50, %51
  %52 = load i32* @lastmailcheck, align 4, !tbaa !6
  %cmp122 = icmp sgt i32 %50, %52
  %or.cond167 = and i1 %cmp117, %cmp122
  br i1 %or.cond167, label %land.lhs.true124, label %if.end135

land.lhs.true124:                                 ; preds = %land.lhs.true112
  %53 = load i64* %st_size, align 4, !tbaa !4
  %tobool126 = icmp eq i64 %53, 0
  br i1 %tobool126, label %if.end135, label %if.then127

if.then127:                                       ; preds = %land.lhs.true124
  %54 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %55 = load i8** %s.addr.0181, align 4, !tbaa !3
  %call128 = call i8* @unmeta(i8* %55)
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([31 x i8]* @.str70, i32 0, i32 0), i8* %call128) nounwind
  %56 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call130 = call i32 @fflush(%struct._IO_FILE* %56) nounwind
  br label %if.end135

if.end135:                                        ; preds = %if.then17, %if.then31, %land.lhs.true124, %if.end109, %if.else69, %if.then21, %if.then127, %land.lhs.true112, %while.end67, %if.then10
  store i8 %3, i8* %v.0, align 1, !tbaa !1
  %incdec.ptr136 = getelementptr inbounds i8** %s.addr.0181, i32 1
  %57 = load i8** %incdec.ptr136, align 4, !tbaa !3
  %tobool = icmp eq i8* %57, null
  br i1 %tobool, label %while.end137, label %for.cond.preheader

while.end137:                                     ; preds = %if.end135, %entry
  ret void
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @zhandler(i32)

define void @printprompt4() nounwind {
entry:
  %l = alloca i32, align 4
  %0 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  store %struct._IO_FILE* %1, %struct._IO_FILE** @xtrerr, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i8** @prompt4, align 4, !tbaa !3
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %call = call i8* @dupstring(i8* %2) nounwind
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %call3 = call i8* @unmetafy(i8* %call, i32* %l)
  %4 = load i32* %l, align 4, !tbaa !0
  %call4 = call i8* @metafy(i8* %call, i32 %4, i32 5)
  %call5 = call i8* @promptexpand(i8* %call4, i32 0, i8* null, i8* null, i32* null) nounwind
  %call6 = call i8* @unmetafy(i8* %call5, i32* %l)
  store i8 %3, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 166), align 1, !tbaa !1
  %5 = load %struct._IO_FILE** @xtrerr, align 4, !tbaa !3
  %fputs = call i32 @fputs(i8* %call6, %struct._IO_FILE* %5)
  call void @free(i8* %call6) nounwind
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then2
  ret void
}

define i8* @unmetafy(i8* %s, i32* %len) nounwind {
entry:
  br label %for.cond

for.cond:                                         ; preds = %ioc_bb, %entry
  %p.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %ioc_bb ]
  %0 = load i8* %p.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %for.end20, label %ioc_bb

for.cond3.preheader:                              ; preds = %ioc_bb
  %.pre = load i8* %p.0, align 1, !tbaa !1
  %tobool536 = icmp eq i8 %.pre, 0
  br i1 %tobool536, label %for.end20, label %for.body6

ioc_bb:                                           ; preds = %for.cond
  tail call void @__ioc_report_conversion(i32 3675, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %0, -125
  %incdec.ptr = getelementptr inbounds i8* %p.0, i32 1
  br i1 %cmp, label %for.cond3.preheader, label %for.cond

for.body6:                                        ; preds = %for.cond3.preheader, %for.cond3.backedge
  %1 = phi i8 [ %5, %for.cond3.backedge ], [ %.pre, %for.cond3.preheader ]
  %p.0.pn = phi i8* [ %p.1.be, %for.cond3.backedge ], [ %p.0, %for.cond3.preheader ]
  %t.038 = phi i8* [ %incdec.ptr7, %for.cond3.backedge ], [ %p.0, %for.cond3.preheader ]
  %incdec.ptr439 = getelementptr inbounds i8* %p.0.pn, i32 1
  %incdec.ptr7 = getelementptr inbounds i8* %t.038, i32 1
  tail call void @__ioc_report_conversion(i32 3678, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp11 = icmp eq i8 %1, -125
  br i1 %cmp11, label %if.then, label %for.cond3.backedge

if.then:                                          ; preds = %for.body6
  %incdec.ptr13 = getelementptr inbounds i8* %p.0.pn, i32 2
  %2 = load i8* %incdec.ptr439, align 1, !tbaa !1
  %conv14 = sext i8 %2 to i32
  %xor = xor i32 %conv14, 32
  %xor.off = add i32 %xor, 128
  %3 = icmp ult i32 %xor.off, 256
  br i1 %3, label %cont16, label %ioc_bb15

ioc_bb15:                                         ; preds = %if.then
  %4 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 3679, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb15, %if.then
  %conv17 = trunc i32 %xor to i8
  store i8 %conv17, i8* %t.038, align 1, !tbaa !1
  br label %for.cond3.backedge

for.cond3.backedge:                               ; preds = %cont16, %for.body6
  %p.1.be = phi i8* [ %incdec.ptr13, %cont16 ], [ %incdec.ptr439, %for.body6 ]
  %5 = load i8* %p.1.be, align 1, !tbaa !1
  store i8 %5, i8* %incdec.ptr7, align 1, !tbaa !1
  %tobool5 = icmp eq i8 %5, 0
  br i1 %tobool5, label %for.end20, label %for.body6

for.end20:                                        ; preds = %for.cond, %for.cond3.backedge, %for.cond3.preheader
  %t.0.lcssa = phi i8* [ %p.0, %for.cond3.preheader ], [ %incdec.ptr7, %for.cond3.backedge ], [ %p.0, %for.cond ]
  %tobool21 = icmp eq i32* %len, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.end20
  %sub.ptr.lhs.cast = ptrtoint i8* %t.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %len, align 4, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %for.end20, %if.then22
  ret i8* %s
}

define i8* @metafy(i8* %buf, i32 %len, i32 %heap) nounwind {
entry:
  %cmp = icmp eq i32 %len, -1
  br i1 %cmp, label %for.cond.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %buf, i32 %len
  br label %for.cond13.outer

for.cond.preheader:                               ; preds = %entry
  %0 = load i8* %buf, align 1, !tbaa !1
  %tobool170 = icmp eq i8 %0, 0
  br i1 %tobool170, label %lor.lhs.false, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %1 = phi i8 [ %12, %for.cond.backedge ], [ %0, %for.cond.preheader ]
  %e.0173 = phi i8* [ %incdec.ptr, %for.cond.backedge ], [ %buf, %for.cond.preheader ]
  %meta.0172 = phi i32 [ %meta.1, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %len.addr.0171 = phi i32 [ %10, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %e.0173, i32 1
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %for.body
  %3 = sext i8 %1 to i64
  tail call void @__ioc_report_conversion(i32 3582, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %for.body
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %4, 4096
  %tobool7 = icmp eq i16 %and, 0
  br i1 %tobool7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %cont2
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %meta.0172, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb9, label %for.inc

ioc_bb9:                                          ; preds = %if.then8
  %8 = sext i32 %meta.0172 to i64
  tail call void @__ioc_report_add_overflow(i32 3583, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb9, %if.then8, %cont2
  %meta.1 = phi i32 [ %meta.0172, %cont2 ], [ %6, %if.then8 ], [ %6, %ioc_bb9 ]
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.0171, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb11, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb11
  %12 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %12, 0
  br i1 %tobool, label %if.end35, label %for.body

ioc_bb11:                                         ; preds = %for.inc
  %13 = sext i32 %len.addr.0171 to i64
  tail call void @__ioc_report_add_overflow(i32 3581, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.cond13:                                       ; preds = %for.cond13.outer, %cont20
  %e.1 = phi i8* [ %incdec.ptr17, %cont20 ], [ %e.1.ph, %for.cond13.outer ]
  %cmp14 = icmp ult i8* %e.1, %add.ptr
  br i1 %cmp14, label %for.body16, label %if.end35

for.body16:                                       ; preds = %for.cond13
  %incdec.ptr17 = getelementptr inbounds i8* %e.1, i32 1
  %14 = load i8* %e.1, align 1, !tbaa !1
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %cont20, label %ioc_bb19

ioc_bb19:                                         ; preds = %for.body16
  %16 = sext i8 %14 to i64
  tail call void @__ioc_report_conversion(i32 3587, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont20

cont20:                                           ; preds = %ioc_bb19, %for.body16
  %idxprom21 = zext i8 %14 to i32
  %arrayidx22 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom21
  %17 = load i16* %arrayidx22, align 2, !tbaa !5
  %and28 = and i16 %17, 4096
  %tobool29 = icmp eq i16 %and28, 0
  br i1 %tobool29, label %for.cond13, label %if.then30

if.then30:                                        ; preds = %cont20
  %18 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %meta.2.ph, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb31, label %for.cond13.outer

for.cond13.outer:                                 ; preds = %ioc_bb31, %if.then30, %for.cond13.preheader
  %meta.2.ph = phi i32 [ 0, %for.cond13.preheader ], [ %19, %if.then30 ], [ %19, %ioc_bb31 ]
  %e.1.ph = phi i8* [ %buf, %for.cond13.preheader ], [ %incdec.ptr17, %if.then30 ], [ %incdec.ptr17, %ioc_bb31 ]
  br label %for.cond13

ioc_bb31:                                         ; preds = %if.then30
  %21 = sext i32 %meta.2.ph to i64
  tail call void @__ioc_report_add_overflow(i32 3588, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %for.cond13.outer

if.end35:                                         ; preds = %for.cond13, %for.cond.backedge
  %len.addr.1 = phi i32 [ %10, %for.cond.backedge ], [ %len, %for.cond13 ]
  %meta.3 = phi i32 [ %meta.1, %for.cond.backedge ], [ %meta.2.ph, %for.cond13 ]
  %e.2 = phi i8* [ %incdec.ptr, %for.cond.backedge ], [ %e.1, %for.cond13 ]
  %tobool36 = icmp eq i32 %meta.3, 0
  br i1 %tobool36, label %lor.lhs.false, label %if.then46

lor.lhs.false:                                    ; preds = %for.cond.preheader, %if.end35
  %e.2199 = phi i8* [ %e.2, %if.end35 ], [ %buf, %for.cond.preheader ]
  %len.addr.1189 = phi i32 [ %len.addr.1, %if.end35 ], [ 0, %for.cond.preheader ]
  switch i32 %heap, label %lor.lhs.false42 [
    i32 3, label %sw.bb67
    i32 6, label %sw.bb80
  ]

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %22 = load i8* %e.2199, align 1, !tbaa !1
  %cmp44 = icmp eq i8 %22, 0
  br i1 %cmp44, label %if.end125, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false42, %if.end35
  %tobool36203 = phi i1 [ true, %lor.lhs.false42 ], [ false, %if.end35 ]
  %meta.3195 = phi i32 [ 0, %lor.lhs.false42 ], [ %meta.3, %if.end35 ]
  %len.addr.1188 = phi i32 [ %len.addr.1189, %lor.lhs.false42 ], [ %len.addr.1, %if.end35 ]
  switch i32 %heap, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb54
    i32 4, label %sw.bb67
    i32 3, label %sw.bb67
    i32 1, label %sw.bb80
    i32 6, label %sw.bb80
    i32 2, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.then46
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.1188, i32 %meta.3195)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb47, label %cont48

ioc_bb47:                                         ; preds = %sw.bb
  %26 = sext i32 %meta.3195 to i64
  %27 = sext i32 %len.addr.1188 to i64
  tail call void @__ioc_report_add_overflow(i32 3593, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %27, i64 %26, i8 13) nounwind
  br label %cont48

cont48:                                           ; preds = %sw.bb, %ioc_bb47
  %28 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %24, i32 1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %cont48
  %31 = sext i32 %24 to i64
  tail call void @__ioc_report_add_overflow(i32 3593, i32 41, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %cont48, %ioc_bb49
  %32 = icmp sgt i32 %29, -1
  br i1 %32, label %cont53, label %ioc_bb52

ioc_bb52:                                         ; preds = %cont50
  %33 = sext i32 %29 to i64
  tail call void @__ioc_report_conversion(i32 3593, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont53

cont53:                                           ; preds = %ioc_bb52, %cont50
  %call = tail call i8* @zrealloc(i8* %buf, i32 %29) nounwind
  %add.ptr96.sum221 = add i32 %meta.3195, %len.addr.1188
  %add.ptr98222 = getelementptr inbounds i8* %call, i32 %add.ptr96.sum221
  br i1 %tobool36203, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

sw.bb54:                                          ; preds = %if.then46
  %34 = sext i32 %len.addr.1188 to i64
  %35 = icmp sgt i32 %len.addr.1188, -1
  br i1 %35, label %cont57, label %ioc_bb56

ioc_bb56:                                         ; preds = %sw.bb54
  tail call void @__ioc_report_conversion(i32 3598, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont57

cont57:                                           ; preds = %ioc_bb56, %sw.bb54
  %36 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.1188, i32 %meta.3195)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb58, label %cont59

ioc_bb58:                                         ; preds = %cont57
  %39 = sext i32 %meta.3195 to i64
  tail call void @__ioc_report_add_overflow(i32 3598, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %34, i64 %39, i8 13) nounwind
  br label %cont59

cont59:                                           ; preds = %cont57, %ioc_bb58
  %40 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %37, i32 1)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb60, label %cont61

ioc_bb60:                                         ; preds = %cont59
  %43 = sext i32 %37 to i64
  tail call void @__ioc_report_add_overflow(i32 3598, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %43, i64 1, i8 13) nounwind
  br label %cont61

cont61:                                           ; preds = %cont59, %ioc_bb60
  %44 = icmp sgt i32 %41, -1
  br i1 %44, label %cont64, label %ioc_bb63

ioc_bb63:                                         ; preds = %cont61
  %45 = sext i32 %41 to i64
  tail call void @__ioc_report_conversion(i32 3598, i32 33, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %45, i8 1) nounwind
  br label %cont64

cont64:                                           ; preds = %ioc_bb63, %cont61
  %call65 = tail call i8* @hrealloc(i8* %buf, i32 %len.addr.1188, i32 %41) nounwind
  %add.ptr96.sum219 = add i32 %meta.3195, %len.addr.1188
  %add.ptr98220 = getelementptr inbounds i8* %call65, i32 %add.ptr96.sum219
  br i1 %tobool36203, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

sw.bb67:                                          ; preds = %lor.lhs.false, %if.then46, %if.then46
  %tobool36202 = phi i1 [ true, %lor.lhs.false ], [ %tobool36203, %if.then46 ], [ %tobool36203, %if.then46 ]
  %meta.3197 = phi i32 [ 0, %lor.lhs.false ], [ %meta.3195, %if.then46 ], [ %meta.3195, %if.then46 ]
  %len.addr.1193 = phi i32 [ %len.addr.1189, %lor.lhs.false ], [ %len.addr.1188, %if.then46 ], [ %len.addr.1188, %if.then46 ]
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.1193, i32 %meta.3197)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  %49 = sext i32 %len.addr.1193 to i64
  br i1 %48, label %ioc_bb68, label %cont69

ioc_bb68:                                         ; preds = %sw.bb67
  %50 = sext i32 %meta.3197 to i64
  tail call void @__ioc_report_add_overflow(i32 3606, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %49, i64 %50, i8 13) nounwind
  br label %cont69

cont69:                                           ; preds = %sw.bb67, %ioc_bb68
  %51 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 1)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb70, label %cont71

ioc_bb70:                                         ; preds = %cont69
  %54 = sext i32 %47 to i64
  tail call void @__ioc_report_add_overflow(i32 3606, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %cont71

cont71:                                           ; preds = %cont69, %ioc_bb70
  %55 = icmp sgt i32 %52, -1
  br i1 %55, label %cont74, label %ioc_bb73

ioc_bb73:                                         ; preds = %cont71
  %56 = sext i32 %52 to i64
  tail call void @__ioc_report_conversion(i32 3606, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %56, i8 1) nounwind
  br label %cont74

cont74:                                           ; preds = %ioc_bb73, %cont71
  %call75 = tail call i8* @zalloc(i32 %52) nounwind
  %57 = icmp sgt i32 %len.addr.1193, -1
  br i1 %57, label %cont78, label %ioc_bb77

ioc_bb77:                                         ; preds = %cont74
  tail call void @__ioc_report_conversion(i32 3606, i32 52, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %49, i8 1) nounwind
  br label %cont78

cont78:                                           ; preds = %ioc_bb77, %cont74
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call75, i8* %buf, i32 %len.addr.1193, i32 1, i1 false)
  %add.ptr96.sum217 = add i32 %meta.3197, %len.addr.1193
  %add.ptr98218 = getelementptr inbounds i8* %call75, i32 %add.ptr96.sum217
  br i1 %tobool36202, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

sw.bb80:                                          ; preds = %lor.lhs.false, %if.then46, %if.then46
  %tobool36201 = phi i1 [ true, %lor.lhs.false ], [ %tobool36203, %if.then46 ], [ %tobool36203, %if.then46 ]
  %meta.3194 = phi i32 [ 0, %lor.lhs.false ], [ %meta.3195, %if.then46 ], [ %meta.3195, %if.then46 ]
  %len.addr.1191 = phi i32 [ %len.addr.1189, %lor.lhs.false ], [ %len.addr.1188, %if.then46 ], [ %len.addr.1188, %if.then46 ]
  %58 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.1191, i32 %meta.3194)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  %61 = sext i32 %len.addr.1191 to i64
  br i1 %60, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %sw.bb80
  %62 = sext i32 %meta.3194 to i64
  tail call void @__ioc_report_add_overflow(i32 3614, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %61, i64 %62, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %sw.bb80, %ioc_bb81
  %63 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %59, i32 1)
  %64 = extractvalue { i32, i1 } %63, 0
  %65 = extractvalue { i32, i1 } %63, 1
  br i1 %65, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %cont82
  %66 = sext i32 %59 to i64
  tail call void @__ioc_report_add_overflow(i32 3614, i32 43, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %66, i64 1, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %cont82, %ioc_bb83
  %67 = icmp sgt i32 %64, -1
  br i1 %67, label %cont87, label %ioc_bb86

ioc_bb86:                                         ; preds = %cont84
  %68 = sext i32 %64 to i64
  tail call void @__ioc_report_conversion(i32 3614, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %68, i8 1) nounwind
  br label %cont87

cont87:                                           ; preds = %ioc_bb86, %cont84
  %call88 = tail call i8* @zhalloc(i32 %64) nounwind
  %69 = icmp sgt i32 %len.addr.1191, -1
  br i1 %69, label %cont91, label %ioc_bb90

ioc_bb90:                                         ; preds = %cont87
  tail call void @__ioc_report_conversion(i32 3614, i32 53, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %61, i8 1) nounwind
  br label %cont91

cont91:                                           ; preds = %ioc_bb90, %cont87
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call88, i8* %buf, i32 %len.addr.1191, i32 1, i1 false)
  %add.ptr96.sum215 = add i32 %meta.3194, %len.addr.1191
  %add.ptr98216 = getelementptr inbounds i8* %call88, i32 %add.ptr96.sum215
  br i1 %tobool36201, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

sw.bb92:                                          ; preds = %if.then46
  %70 = icmp sgt i32 %len.addr.1188, -1
  br i1 %70, label %cont95, label %ioc_bb94

ioc_bb94:                                         ; preds = %sw.bb92
  %71 = sext i32 %len.addr.1188 to i64
  tail call void @__ioc_report_conversion(i32 3621, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %71, i8 1) nounwind
  br label %cont95

cont95:                                           ; preds = %ioc_bb94, %sw.bb92
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([8193 x i8]* @metafy.mbuf, i32 0, i32 0), i8* %buf, i32 %len.addr.1188, i32 1, i1 false)
  %add.ptr96.sum205 = add i32 %meta.3195, %len.addr.1188
  %add.ptr98206 = getelementptr inbounds [8193 x i8]* @metafy.mbuf, i32 0, i32 %add.ptr96.sum205
  br i1 %tobool36203, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

sw.epilog:                                        ; preds = %if.then46
  %add.ptr96.sum = add i32 %meta.3195, %len.addr.1188
  %add.ptr98 = getelementptr inbounds i8* %buf, i32 %add.ptr96.sum
  br i1 %tobool36203, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph

while.cond.outer.while.cond.outer.split_crit_edge.lr.ph: ; preds = %cont53, %cont64, %cont78, %cont91, %cont95, %sw.epilog
  %add.ptr98213 = phi i8* [ %add.ptr98206, %cont95 ], [ %add.ptr98, %sw.epilog ], [ %add.ptr98216, %cont91 ], [ %add.ptr98218, %cont78 ], [ %add.ptr98220, %cont64 ], [ %add.ptr98222, %cont53 ]
  %buf.addr.0209 = phi i8* [ getelementptr inbounds ([8193 x i8]* @metafy.mbuf, i32 0, i32 0), %cont95 ], [ %buf, %sw.epilog ], [ %call88, %cont91 ], [ %call75, %cont78 ], [ %call65, %cont64 ], [ %call, %cont53 ]
  %len.addr.1185208 = phi i32 [ %len.addr.1188, %cont95 ], [ %len.addr.1188, %sw.epilog ], [ %len.addr.1191, %cont91 ], [ %len.addr.1193, %cont78 ], [ %len.addr.1188, %cont64 ], [ %len.addr.1188, %cont53 ]
  %meta.3198207 = phi i32 [ %meta.3195, %cont95 ], [ %meta.3195, %sw.epilog ], [ %meta.3194, %cont91 ], [ %meta.3197, %cont78 ], [ %meta.3195, %cont64 ], [ %meta.3195, %cont53 ]
  %add.ptr96 = getelementptr inbounds i8* %buf.addr.0209, i32 %len.addr.1185208
  br label %while.cond.outer.while.cond.outer.split_crit_edge

while.cond.outer.while.cond.outer.split_crit_edge: ; preds = %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph, %while.cond.outer.backedge
  %p.0.ph181 = phi i8* [ %add.ptr96, %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph ], [ %incdec.ptr100, %while.cond.outer.backedge ]
  %t.0.ph180 = phi i8* [ %add.ptr98213, %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph ], [ %incdec.ptr115, %while.cond.outer.backedge ]
  %meta.4.ph179 = phi i32 [ %meta.3198207, %while.cond.outer.while.cond.outer.split_crit_edge.lr.ph ], [ %78, %while.cond.outer.backedge ]
  br label %while.body

while.body:                                       ; preds = %cont104, %while.cond.outer.while.cond.outer.split_crit_edge
  %t.0 = phi i8* [ %incdec.ptr101, %cont104 ], [ %t.0.ph180, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %p.0 = phi i8* [ %incdec.ptr100, %cont104 ], [ %p.0.ph181, %while.cond.outer.while.cond.outer.split_crit_edge ]
  %incdec.ptr100 = getelementptr inbounds i8* %p.0, i32 -1
  %72 = load i8* %incdec.ptr100, align 1, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i8* %t.0, i32 -1
  store i8 %72, i8* %incdec.ptr101, align 1, !tbaa !1
  %73 = icmp sgt i8 %72, -1
  br i1 %73, label %cont104, label %ioc_bb103

ioc_bb103:                                        ; preds = %while.body
  %74 = sext i8 %72 to i64
  tail call void @__ioc_report_conversion(i32 3630, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %74, i8 1) nounwind
  br label %cont104

cont104:                                          ; preds = %ioc_bb103, %while.body
  %idxprom105 = zext i8 %72 to i32
  %arrayidx106 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom105
  %75 = load i16* %arrayidx106, align 2, !tbaa !5
  %and112 = and i16 %75, 4096
  %tobool113 = icmp eq i16 %and112, 0
  br i1 %tobool113, label %while.body, label %if.then114

if.then114:                                       ; preds = %cont104
  %incdec.ptr115 = getelementptr inbounds i8* %t.0, i32 -2
  %76 = load i8* %incdec.ptr101, align 1, !tbaa !1
  %xor = xor i8 %76, 32
  store i8 %xor, i8* %incdec.ptr101, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 3632, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  store i8 -125, i8* %incdec.ptr115, align 1, !tbaa !1
  %77 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %meta.4.ph179, i32 -1)
  %78 = extractvalue { i32, i1 } %77, 0
  %79 = extractvalue { i32, i1 } %77, 1
  br i1 %79, label %ioc_bb120, label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then114, %ioc_bb120
  %tobool99 = icmp eq i32 %78, 0
  br i1 %tobool99, label %cont124.split, label %while.cond.outer.while.cond.outer.split_crit_edge

ioc_bb120:                                        ; preds = %if.then114
  %80 = sext i32 %meta.4.ph179 to i64
  tail call void @__ioc_report_add_overflow(i32 3633, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %80, i64 -1, i8 13) nounwind
  br label %while.cond.outer.backedge

cont124.split:                                    ; preds = %sw.epilog, %cont95, %cont91, %cont78, %cont64, %cont53, %while.cond.outer.backedge
  %add.ptr98212 = phi i8* [ %add.ptr98206, %cont95 ], [ %add.ptr98, %sw.epilog ], [ %add.ptr98216, %cont91 ], [ %add.ptr98218, %cont78 ], [ %add.ptr98220, %cont64 ], [ %add.ptr98222, %cont53 ], [ %add.ptr98213, %while.cond.outer.backedge ]
  %buf.addr.0210 = phi i8* [ getelementptr inbounds ([8193 x i8]* @metafy.mbuf, i32 0, i32 0), %cont95 ], [ %buf, %sw.epilog ], [ %call88, %cont91 ], [ %call75, %cont78 ], [ %call65, %cont64 ], [ %call, %cont53 ], [ %buf.addr.0209, %while.cond.outer.backedge ]
  store i8 0, i8* %add.ptr98212, align 1, !tbaa !1
  br label %if.end125

if.end125:                                        ; preds = %lor.lhs.false42, %cont124.split
  %buf.addr.1 = phi i8* [ %buf.addr.0210, %cont124.split ], [ %buf, %lor.lhs.false42 ]
  ret i8* %buf.addr.1
}

define void @freestr(i8* %a) nounwind {
entry:
  tail call void @zsfree(i8* %a) nounwind
  ret void
}

define void @gettyinfo(%struct.ttyinfo* %ti) nounwind {
entry:
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %tio = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call = tail call i32 @tcgetattr(i32 %0, %struct.termios* %tio) nounwind
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call5, align 4, !tbaa !0
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0), i32 %1)
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then, %if.then4
  ret void
}

declare i32 @tcgetattr(i32, %struct.termios*) nounwind

declare i32* @__errno_location() nounwind readnone

define void @settyinfo(%struct.ttyinfo* %ti) nounwind {
entry:
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tio = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %1 = phi i32 [ %.pre, %land.rhs.while.cond_crit_edge ], [ %0, %while.cond.preheader ]
  %call = tail call i32 @tcsetattr(i32 %1, i32 1, %struct.termios* %tio) nounwind
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %while.cond
  %call4 = tail call i32* @__errno_location() nounwind readnone
  %2 = load i32* %call4, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %2, 4
  br i1 %cmp5, label %land.rhs.while.cond_crit_edge, label %if.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  %.pre = load i32* @SHTTY, align 4, !tbaa !0
  br label %while.cond

if.end:                                           ; preds = %land.rhs, %while.cond, %entry
  ret void
}

declare i32 @tcsetattr(i32, i32, %struct.termios*) nounwind

define void @adjustwinsize(i32 %from) nounwind {
entry:
  %0 = load i32* bitcast (i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0) to i32*), align 4
  %1 = trunc i32 %0 to i16
  %2 = lshr i32 %0, 16
  %3 = trunc i32 %2 to i16
  %.b = load i1* @adjustwinsize.getwinsz.b, align 1
  %.b.not = xor i1 %.b, true
  %cmp = icmp eq i32 %from, 1
  %or.cond = or i1 %cmp, %.b.not
  br i1 %or.cond, label %if.then, label %if.end39

if.then:                                          ; preds = %entry
  %4 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %if.end82, label %cont7

cont7:                                            ; preds = %if.then
  %call = tail call i32 (i32, i32, ...)* @ioctl(i32 %4, i32 21523, i8* bitcast (%struct.winsize* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1) to i8*)) nounwind
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %cont7
  %5 = load i32* bitcast (i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0) to i32*), align 4
  %6 = trunc i32 %5 to i16
  %cmp12 = icmp eq i16 %1, %6
  br i1 %cmp12, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then10
  %7 = lshr i32 %5, 16
  %8 = trunc i32 %7 to i16
  %cmp15 = icmp ne i16 %3, %8
  br label %lor.end

lor.end:                                          ; preds = %if.then10, %lor.rhs
  %9 = phi i1 [ true, %if.then10 ], [ %cmp15, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  %cmp17.not = icmp ne i32 %from, 0
  %.not = xor i1 %9, true
  %brmerge = or i1 %cmp17.not, %.not
  %tobool21 = icmp eq i16 %1, 0
  %or.cond91 = or i1 %brmerge, %tobool21
  %tobool23 = icmp eq i16 %3, 0
  %or.cond92 = or i1 %or.cond91, %tobool23
  %from.addr.0 = select i1 %or.cond92, i32 %from, i32 1
  br label %if.end39

if.else:                                          ; preds = %cont7
  %10 = load i64* @zterm_lines, align 8, !tbaa !4
  %11 = icmp ult i64 %10, 65536
  br i1 %11, label %cont29, label %ioc_bb28

ioc_bb28:                                         ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 1454, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb28, %if.else
  %conv30 = trunc i64 %10 to i16
  store i16 %conv30, i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4, !tbaa !5
  %12 = load i64* @zterm_columns, align 8, !tbaa !4
  %13 = icmp ult i64 %12, 65536
  br i1 %13, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %cont29
  tail call void @__ioc_report_conversion(i32 1455, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %cont29
  %conv35 = trunc i64 %12 to i16
  store i16 %conv35, i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2, !tbaa !5
  %conv37 = zext i1 %cmp to i32
  br label %if.end39

if.end39:                                         ; preds = %lor.end, %entry, %cont34
  %from.addr.1 = phi i32 [ %from, %cont34 ], [ %from, %entry ], [ %from.addr.0, %lor.end ]
  %resetzle.0 = phi i32 [ %conv37, %cont34 ], [ 0, %entry ], [ %lor.ext, %lor.end ]
  switch i32 %from.addr.1, label %sw.epilog [
    i32 0, label %sw.bb40
    i32 1, label %sw.bb40
    i32 2, label %sw.bb57
    i32 3, label %sw.bb59
  ]

sw.bb40:                                          ; preds = %if.end39, %if.end39
  store i1 true, i1* @adjustwinsize.getwinsz.b, align 1
  %call41 = tail call fastcc i32 @adjustlines(i32 %from.addr.1)
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %if.end48, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %sw.bb40
  %call44 = tail call i8* @zgetenv(i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0)) nounwind
  %tobool45 = icmp eq i8* %call44, null
  br i1 %tobool45, label %if.end48, label %if.then46

if.then46:                                        ; preds = %land.lhs.true43
  %14 = load i64* @zterm_lines, align 8, !tbaa !4
  %call47 = tail call %struct.param* @setiparam(i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0), i64 %14) nounwind
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true43, %sw.bb40, %if.then46
  %call49 = tail call fastcc i32 @adjustcolumns(i32 %from.addr.1)
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %if.end56, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.end48
  %call52 = tail call i8* @zgetenv(i8* getelementptr inbounds ([8 x i8]* @.str30, i32 0, i32 0)) nounwind
  %tobool53 = icmp eq i8* %call52, null
  br i1 %tobool53, label %if.end56, label %if.then54

if.then54:                                        ; preds = %land.lhs.true51
  %15 = load i64* @zterm_columns, align 8, !tbaa !4
  %call55 = tail call %struct.param* @setiparam(i8* getelementptr inbounds ([8 x i8]* @.str30, i32 0, i32 0), i64 %15) nounwind
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true51, %if.end48, %if.then54
  store i1 false, i1* @adjustwinsize.getwinsz.b, align 1
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end39
  %call58 = tail call fastcc i32 @adjustlines(i32 0)
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end39
  %call60 = tail call fastcc i32 @adjustcolumns(i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end39, %sw.bb59, %sw.bb57, %if.end56
  %resetzle.1 = phi i32 [ %resetzle.0, %if.end39 ], [ %call60, %sw.bb59 ], [ %call58, %sw.bb57 ], [ %resetzle.0, %if.end56 ]
  %16 = load i32* @zleactive, align 4, !tbaa !0
  %tobool76 = icmp eq i32 %16, 0
  %tobool78 = icmp eq i32 %resetzle.1, 0
  %or.cond93 = or i1 %tobool76, %tobool78
  br i1 %or.cond93, label %if.end82, label %if.then79

if.then79:                                        ; preds = %sw.epilog
  store i32 1, i32* @resetneeded, align 4, !tbaa !0
  store i32 1, i32* @winchanged, align 4, !tbaa !0
  %call80 = tail call i8* (i32, ...)* @zleentry(i32 4) nounwind
  %call81 = tail call i8* (i32, ...)* @zleentry(i32 5) nounwind
  br label %if.end82

if.end82:                                         ; preds = %sw.epilog, %if.then, %if.then79
  ret void
}

declare i32 @ioctl(i32, i32, ...) nounwind

define internal fastcc i32 @adjustlines(i32 %signalled) nounwind {
entry:
  %0 = load i64* @zterm_lines, align 8, !tbaa !4
  %.off = add i64 %0, 2147483648
  %1 = icmp ult i64 %.off, 4294967296
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 1387, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %0, i8 1) nounwind
  %.pr = load i64* @zterm_lines, align 8, !tbaa !4
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %2 = phi i64 [ %.pr, %ioc_bb ], [ %0, %entry ]
  %tobool = icmp ne i32 %signalled, 0
  %cmp = icmp slt i64 %2, 1
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %cont
  %3 = load i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4, !tbaa !5
  %conv2 = zext i16 %3 to i64
  store i64 %conv2, i64* @zterm_lines, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %cont
  %4 = icmp ult i64 %2, 65536
  br i1 %4, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 1392, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  %.pr24.pre = load i64* @zterm_lines, align 8, !tbaa !4
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %if.else
  %.pr24 = phi i64 [ %.pr24.pre, %ioc_bb5 ], [ %2, %if.else ]
  %conv7 = trunc i64 %2 to i16
  store i16 %conv7, i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 0), align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cont6, %if.then
  %5 = phi i64 [ %.pr24, %cont6 ], [ %conv2, %if.then ]
  %cmp8 = icmp slt i64 %5, 1
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %6 = load i32* @tclines, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %6, 0
  %7 = sext i32 %6 to i64
  %conv13 = select i1 %cmp11, i64 %7, i64 24
  store i64 %conv13, i64* @zterm_lines, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %8 = phi i64 [ %conv13, %if.then10 ], [ %5, %if.end ]
  %cmp15 = icmp sgt i64 %8, 2
  %9 = load i32* @termflags, align 4, !tbaa !0
  %or = or i32 %9, 8
  %and = and i32 %9, -9
  %storemerge = select i1 %cmp15, i32 %and, i32 %or
  store i32 %storemerge, i32* @termflags, align 4
  %sext = shl i64 %0, 32
  %conv20 = ashr exact i64 %sext, 32
  %cmp21 = icmp ne i64 %8, %conv20
  %conv22 = zext i1 %cmp21 to i32
  ret i32 %conv22
}

declare i8* @zgetenv(i8*)

declare %struct.param* @setiparam(i8*, i64)

define internal fastcc i32 @adjustcolumns(i32 %signalled) nounwind {
entry:
  %0 = load i64* @zterm_columns, align 8, !tbaa !4
  %.off = add i64 %0, 2147483648
  %1 = icmp ult i64 %.off, 4294967296
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 1407, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %0, i8 1) nounwind
  %.pr = load i64* @zterm_columns, align 8, !tbaa !4
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %2 = phi i64 [ %.pr, %ioc_bb ], [ %0, %entry ]
  %tobool = icmp ne i32 %signalled, 0
  %cmp = icmp slt i64 %2, 1
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %cont
  %3 = load i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2, !tbaa !5
  %conv2 = zext i16 %3 to i64
  store i64 %conv2, i64* @zterm_columns, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %cont
  %4 = icmp ult i64 %2, 65536
  br i1 %4, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 1412, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  %.pr24.pre = load i64* @zterm_columns, align 8, !tbaa !4
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %if.else
  %.pr24 = phi i64 [ %.pr24.pre, %ioc_bb5 ], [ %2, %if.else ]
  %conv7 = trunc i64 %2 to i16
  store i16 %conv7, i16* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 1, i32 1), align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cont6, %if.then
  %5 = phi i64 [ %.pr24, %cont6 ], [ %conv2, %if.then ]
  %cmp8 = icmp slt i64 %5, 1
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %6 = load i32* @tccolumns, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %6, 0
  %7 = sext i32 %6 to i64
  %conv13 = select i1 %cmp11, i64 %7, i64 80
  store i64 %conv13, i64* @zterm_columns, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %8 = phi i64 [ %conv13, %if.then10 ], [ %5, %if.end ]
  %cmp15 = icmp sgt i64 %8, 2
  %9 = load i32* @termflags, align 4, !tbaa !0
  %or = or i32 %9, 16
  %and = and i32 %9, -17
  %storemerge = select i1 %cmp15, i32 %and, i32 %or
  store i32 %storemerge, i32* @termflags, align 4
  %sext = shl i64 %0, 32
  %conv20 = ashr exact i64 %sext, 32
  %cmp21 = icmp ne i64 %8, %conv20
  %conv22 = zext i1 %cmp21 to i32
  ret i32 %conv22
}

declare i8* @zleentry(i32, ...)

define i32 @movefd(i32 %fd) nounwind {
entry:
  %cmp = icmp ne i32 %fd, -1
  %cmp1 = icmp slt i32 %fd, 10
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %cont4

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 0, i32 10) nounwind
  %call2 = tail call i32 @zclose(i32 %fd)
  br label %cont4

cont4:                                            ; preds = %entry, %if.then
  %fd.addr.0 = phi i32 [ %call, %if.then ], [ %fd, %entry ]
  %cmp5 = icmp eq i32 %fd.addr.0, -1
  br i1 %cmp5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %cont4
  tail call fastcc void @check_fd_table(i32 %fd.addr.0)
  %0 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %0, i32 %fd.addr.0
  store i8 1, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end9

if.end9:                                          ; preds = %cont4, %if.then6
  ret i32 %fd.addr.0
}

declare i32 @fcntl(i32, i32, ...)

define i32 @zclose(i32 %fd) nounwind {
entry:
  %cmp = icmp sgt i32 %fd, -1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = load i32* @max_zsh_fd, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, %fd
  br i1 %cmp1, label %if.end29, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %1, i32 %fd
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp3 = icmp eq i8 %2, 4
  br i1 %cmp3, label %if.then5, label %cont7

if.then5:                                         ; preds = %if.then2
  %3 = load i32* @fdtable_flocks, align 4, !tbaa !0
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 -1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then5
  %7 = sext i32 %3 to i64
  tail call void @__ioc_report_add_overflow(i32 1615, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %7, i64 -1, i8 13) nounwind
  %.pre.pre = load i8** @fdtable, align 4, !tbaa !3
  br label %cont

cont:                                             ; preds = %if.then5, %ioc_bb
  %.pre = phi i8* [ %1, %if.then5 ], [ %.pre.pre, %ioc_bb ]
  store i32 %5, i32* @fdtable_flocks, align 4, !tbaa !0
  br label %cont7

cont7:                                            ; preds = %if.then2, %cont
  %8 = phi i8* [ %1, %if.then2 ], [ %.pre, %cont ]
  %arrayidx8 = getelementptr inbounds i8* %8, i32 %fd
  store i8 0, i8* %arrayidx8, align 1, !tbaa !1
  %.pr = load i32* @max_zsh_fd, align 4, !tbaa !0
  %cmp939 = icmp sgt i32 %.pr, 0
  br i1 %cmp939, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %cont16, %cont7
  %9 = phi i32 [ %.pr, %cont7 ], [ %13, %cont16 ]
  %10 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i8* %10, i32 %9
  %11 = load i8* %arrayidx11, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %11, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb15, label %cont16

ioc_bb15:                                         ; preds = %while.body
  %15 = sext i32 %9 to i64
  tail call void @__ioc_report_add_overflow(i32 1618, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont16

cont16:                                           ; preds = %while.body, %ioc_bb15
  store i32 %13, i32* @max_zsh_fd, align 4, !tbaa !0
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %land.rhs, label %while.end

while.end:                                        ; preds = %cont16, %land.rhs, %cont7
  %16 = load i32* @coprocin, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %16, %fd
  br i1 %cmp17, label %cont21, label %if.end22

cont21:                                           ; preds = %while.end
  store i32 -1, i32* @coprocin, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %cont21, %while.end
  %17 = load i32* @coprocout, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %17, %fd
  br i1 %cmp23, label %cont27, label %if.end29

cont27:                                           ; preds = %if.end22
  store i32 -1, i32* @coprocout, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.end22, %cont27
  %call = tail call i32 @close(i32 %fd) nounwind
  br label %return

return:                                           ; preds = %entry, %if.end29
  %retval.0 = phi i32 [ %call, %if.end29 ], [ -1, %entry ]
  ret i32 %retval.0
}

define internal fastcc void @check_fd_table(i32 %fd) nounwind {
entry:
  %0 = load i32* @max_zsh_fd, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %fd
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i32* @fdtable_size, align 4, !tbaa !0
  %cmp1 = icmp sgt i32 %1, %fd
  br i1 %cmp1, label %if.end15, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %2 = load i8** @fdtable, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cont7
  %3 = phi i8* [ %2, %while.body.lr.ph ], [ %call, %cont7 ]
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %11, %cont7 ]
  %5 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 2)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.body
  %8 = sext i32 %4 to i64
  tail call void @__ioc_report_mul_overflow(i32 1520, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @13, i32 0, i32 0), i64 %8, i64 2, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.body, %ioc_bb
  store i32 %6, i32* @fdtable_size, align 4, !tbaa !0
  %9 = icmp sgt i32 %6, -1
  br i1 %9, label %cont7, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont
  %10 = sext i32 %6 to i64
  tail call void @__ioc_report_conversion(i32 1520, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %cont, %ioc_bb4
  %call = tail call i8* @zrealloc(i8* %3, i32 %6) nounwind
  store i8* %call, i8** @fdtable, align 4, !tbaa !3
  %11 = load i32* @fdtable_size, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %11, %fd
  br i1 %cmp3, label %while.end, label %while.body

while.end:                                        ; preds = %cont7
  %add.ptr = getelementptr inbounds i8* %call, i32 %1
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %11, i32 %1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %while.end
  %15 = sext i32 %1 to i64
  %16 = sext i32 %11 to i64
  tail call void @__ioc_report_sub_overflow(i32 1521, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %while.end, %ioc_bb8
  %17 = icmp sgt i32 %13, -1
  br i1 %17, label %cont14, label %ioc_bb11

ioc_bb11:                                         ; preds = %cont9
  %18 = sext i32 %13 to i64
  tail call void @__ioc_report_conversion(i32 1521, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont14

cont14:                                           ; preds = %cont9, %ioc_bb11
  tail call void @llvm.memset.p0i8.i32(i8* %add.ptr, i8 0, i32 %13, i32 1, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %if.end, %cont14
  store i32 %fd, i32* @max_zsh_fd, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end15
  ret void
}

define i32 @redup(i32 %x, i32 %y) nounwind {
entry:
  %cmp = icmp slt i32 %x, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @zclose(i32 %y)
  br label %if.end32

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %x, %y
  br i1 %cmp1, label %if.end32, label %if.then2

if.then2:                                         ; preds = %if.else
  %call3 = tail call i32 @dup2(i32 %x, i32 %y) nounwind
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.end21, label %if.else8

if.else8:                                         ; preds = %if.then2
  tail call fastcc void @check_fd_table(i32 %y)
  %0 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %0, i32 %x
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8* %0, i32 %y
  store i8 %1, i8* %arrayidx9, align 1, !tbaa !1
  %2 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8* %2, i32 %y
  %3 = load i8* %arrayidx10, align 1, !tbaa !1
  %.off = add i8 %3, -4
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %cont19, label %if.end21

cont19:                                           ; preds = %if.else8
  store i8 1, i8* %arrayidx10, align 1, !tbaa !1
  br label %if.end21

if.end21:                                         ; preds = %if.then2, %if.else8, %cont19
  %ret.0 = phi i32 [ %y, %cont19 ], [ %y, %if.else8 ], [ -1, %if.then2 ]
  %4 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i8* %4, i32 %x
  %5 = load i8* %arrayidx22, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %5, 4
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  %6 = load i32* @fdtable_flocks, align 4, !tbaa !0
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 -1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb27, label %cont28

ioc_bb27:                                         ; preds = %if.then26
  %10 = sext i32 %6 to i64
  tail call void @__ioc_report_add_overflow(i32 1577, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %10, i64 -1, i8 13) nounwind
  br label %cont28

cont28:                                           ; preds = %if.then26, %ioc_bb27
  store i32 %8, i32* @fdtable_flocks, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %cont28, %if.end21
  %call30 = tail call i32 @zclose(i32 %x)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end29, %if.then
  %ret.1 = phi i32 [ %y, %if.then ], [ %ret.0, %if.end29 ], [ %x, %if.else ]
  ret i32 %ret.1
}

declare i32 @dup2(i32, i32) nounwind

define void @addlockfd(i32 %fd, i32 %cloexec) nounwind {
entry:
  %tobool = icmp eq i32 %cloexec, 0
  %0 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8* %0, i32 %fd
  br i1 %tobool, label %cont7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8* %arrayidx8, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %cont4, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load i32* @fdtable_flocks, align 4, !tbaa !0
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then2
  %6 = sext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 1596, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  %.pre.pre = load i8** @fdtable, align 4, !tbaa !3
  br label %cont

cont:                                             ; preds = %if.then2, %ioc_bb
  %.pre = phi i8* [ %0, %if.then2 ], [ %.pre.pre, %ioc_bb ]
  store i32 %4, i32* @fdtable_flocks, align 4, !tbaa !0
  br label %cont4

cont4:                                            ; preds = %cont, %if.then
  %7 = phi i8* [ %.pre, %cont ], [ %0, %if.then ]
  %arrayidx5 = getelementptr inbounds i8* %7, i32 %fd
  store i8 4, i8* %arrayidx5, align 1, !tbaa !1
  br label %if.end9

cont7:                                            ; preds = %entry
  store i8 5, i8* %arrayidx8, align 1, !tbaa !1
  br label %if.end9

if.end9:                                          ; preds = %cont7, %cont4
  ret void
}

declare i32 @close(i32)

define i32 @zcloselockfd(i32 %fd) nounwind {
entry:
  %0 = load i32* @max_zsh_fd, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %fd
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8** @fdtable, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %1, i32 %fd
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %.off = add i8 %2, -4
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end10, label %return

if.end10:                                         ; preds = %if.end
  %call = tail call i32 @zclose(i32 %fd)
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

define i8* @gettempname(i8* %prefix, i32 %use_heap) nounwind {
entry:
  %oset = alloca %struct.__sigset_t, align 4
  %tmp21 = alloca %struct.__sigset_t, align 4
  %tobool = icmp ne i8* %prefix, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0)
  %0 = load i32* @queueing_enabled, align 4, !tbaa !0
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 1654, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cont
  %call = call i8* @getsparam(i8* getelementptr inbounds ([10 x i8]* @.str33, i32 0, i32 0)) nounwind
  %tobool2 = icmp eq i8* %call, null
  %.call = select i1 %tobool2, i8* getelementptr inbounds ([9 x i8]* @.str34, i32 0, i32 0), i8* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cont
  %prefix.addr.0 = phi i8* [ %prefix, %cont ], [ %.call, %land.lhs.true ]
  %tobool3 = icmp eq i32 %use_heap, 0
  %call5 = call i8* @unmeta(i8* %prefix.addr.0)
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call i8* @dyncat(i8* %call5, i8* %cond) nounwind
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = call i8* @bicat(i8* %call5, i8* %cond) nounwind
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i8* [ %call6, %if.then4 ], [ %call8, %if.else ]
  %call10 = call i8* @mktemp(i8* %ret.0) nounwind
  %5 = load i32* @queueing_enabled, align 4, !tbaa !0
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 -1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %if.end9
  %9 = sext i32 %5 to i64
  call void @__ioc_report_add_overflow(i32 1668, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %9, i64 -1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %if.end9, %ioc_bb11
  store i32 %7, i32* @queueing_enabled, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %7, 0
  br i1 %tobool13, label %while.cond.preheader, label %do.end23

while.cond.preheader:                             ; preds = %cont12
  %10 = load i32* @queue_front, align 4, !tbaa !0
  %11 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %10, %11
  br i1 %cmp27, label %do.end23, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont19
  %12 = phi i32 [ %19, %cont19 ], [ %10, %while.cond.preheader ]
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb16, label %cont19

ioc_bb16:                                         ; preds = %while.body
  %16 = sext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 1672, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %16, i64 1, i8 13) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb16, %while.body
  %rem = srem i32 %14, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %17 = load i32* @queue_front, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %17
  %18 = load i32* %arrayidx20, align 4, !tbaa !0
  call void @zhandler(i32 %18) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp21, %struct.__sigset_t* byval align 4 %oset) nounwind
  %19 = load i32* @queue_front, align 4, !tbaa !0
  %20 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %do.end23, label %while.body

do.end23:                                         ; preds = %while.cond.preheader, %cont19, %cont12
  ret i8* %call10
}

declare i8* @dyncat(i8*, i8*)

declare i8* @bicat(i8*, i8*)

declare i8* @mktemp(i8*) nounwind

define i32 @gettempfile(i8* %prefix, i32 %use_heap, i8** nocapture %tempname) nounwind {
entry:
  %tobool = icmp ne i8* %prefix, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0)
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i8* @getsparam(i8* getelementptr inbounds ([10 x i8]* @.str33, i32 0, i32 0)) nounwind
  %tobool2 = icmp eq i8* %call, null
  %.call = select i1 %tobool2, i8* getelementptr inbounds ([9 x i8]* @.str34, i32 0, i32 0), i8* %call
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %.call, %land.lhs.true ]
  %tobool3 = icmp ne i32 %use_heap, 0
  %call5 = tail call i8* @unmeta(i8* %prefix.addr.0)
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call6 = tail call i8* @dyncat(i8* %call5, i8* %cond) nounwind
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = tail call i8* @bicat(i8* %call5, i8* %cond) nounwind
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %fn.0 = phi i8* [ %call6, %if.then4 ], [ %call8, %if.else ]
  %call10 = tail call i32 @mkstemp64(i8* %fn.0) nounwind
  %cmp.not = icmp sgt i32 %call10, -1
  %brmerge = or i1 %cmp.not, %tobool3
  %fn.0.mux = select i1 %cmp.not, i8* %fn.0, i8* null
  br i1 %brmerge, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void @free(i8* %fn.0) nounwind
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %if.then13
  %fn.1 = phi i8* [ %fn.0.mux, %if.end9 ], [ null, %if.then13 ]
  store i8* %fn.1, i8** %tempname, align 4, !tbaa !3
  ret i32 %call10
}

declare i32 @mkstemp64(i8*)

define i32 @has_token(i8* nocapture %s) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cont, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %cont ]
  %0 = load i8* %s.addr.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.body
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 1712, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.body
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %3, 16
  %tobool5 = icmp eq i16 %and, 0
  br i1 %tobool5, label %while.cond, label %return

return:                                           ; preds = %while.cond, %cont
  %retval.0 = phi i32 [ 1, %cont ], [ 0, %while.cond ]
  ret i32 %retval.0
}

define void @chuck(i8* nocapture %str) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %arrayidx, %while.cond ]
  %arrayidx = getelementptr inbounds i8* %str.addr.0, i32 1
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  store i8 %0, i8* %str.addr.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

define i32 @tuupper(i32 %c) nounwind readonly {
entry:
  %and = and i32 %c, 255
  %call = tail call i16** @__ctype_b_loc() nounwind readnone
  %0 = load i16** %call, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %0, i32 %and
  %1 = load i16* %arrayidx, align 2, !tbaa !5
  %and9 = and i16 %1, 512
  %tobool = icmp eq i16 %and9, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %__c.off.i = add i32 %and, 128
  %2 = icmp ult i32 %__c.off.i, 384
  br i1 %2, label %cond.true.i, label %cond.end

cond.true.i:                                      ; preds = %cond.true
  %call.i = tail call i32** @__ctype_toupper_loc() nounwind readnone
  %3 = load i32** %call.i, align 4, !tbaa !3
  %arrayidx.i = getelementptr inbounds i32* %3, i32 %and
  %4 = load i32* %arrayidx.i, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.true, %entry
  %cond = phi i32 [ %and, %entry ], [ %4, %cond.true.i ], [ %and, %cond.true ]
  ret i32 %cond
}

define void @ztrncpy(i8* nocapture %s, i8* nocapture %t, i32 %len) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr1, %while.body ]
  %t.addr.0 = phi i8* [ %t, %entry ], [ %incdec.ptr, %while.body ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %1, %while.body ]
  %0 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.0, i32 -1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.cond
  %3 = sext i32 %len.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 1743, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %3, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.cond, %ioc_bb
  %tobool = icmp eq i32 %len.addr.0, 0
  br i1 %tobool, label %cont3, label %while.body

while.body:                                       ; preds = %cont
  %incdec.ptr = getelementptr inbounds i8* %t.addr.0, i32 1
  %4 = load i8* %t.addr.0, align 1, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8* %s.addr.0, i32 1
  store i8 %4, i8* %s.addr.0, align 1, !tbaa !1
  br label %while.cond

cont3:                                            ; preds = %cont
  store i8 0, i8* %s.addr.0, align 1, !tbaa !1
  ret void
}

define void @strucpy(i8** nocapture %s, i8* nocapture %t) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %t.addr.0 = phi i8* [ %t, %entry ], [ %incdec.ptr, %while.cond ]
  %u.0 = phi i8* [ %0, %entry ], [ %incdec.ptr1, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8* %t.addr.0, i32 1
  %1 = load i8* %t.addr.0, align 1, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8* %u.0, i32 1
  store i8 %1, i8* %u.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* %u.0, i8** %s, align 4, !tbaa !3
  ret void
}

define void @struncpy(i8** nocapture %s, i8* nocapture %t, i32 %n) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %t.addr.0 = phi i8* [ %t, %entry ], [ %incdec.ptr, %while.body ]
  %n.addr.0 = phi i32 [ %n, %entry ], [ %2, %while.body ]
  %u.0 = phi i8* [ %0, %entry ], [ %incdec.ptr1, %while.body ]
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.0, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.cond
  %4 = sext i32 %n.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 1762, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.cond, %ioc_bb
  %tobool = icmp eq i32 %n.addr.0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %cont
  %incdec.ptr = getelementptr inbounds i8* %t.addr.0, i32 1
  %5 = load i8* %t.addr.0, align 1, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8* %u.0, i32 1
  store i8 %5, i8* %u.0, align 1, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %cont
  store i8* %u.0, i8** %s, align 4, !tbaa !3
  store i8 0, i8* %u.0, align 1, !tbaa !1
  ret void
}

define i32 @skipparens(i8 signext %inpar, i8 signext %outpar, i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, %inpar
  br i1 %cmp, label %for.cond.outer, label %return

for.cond.outer:                                   ; preds = %entry, %for.cond.outer.backedge
  %.pre = phi i8* [ %.pre.pre, %for.cond.outer.backedge ], [ %0, %entry ]
  %level.0.ph = phi i32 [ %level.0.ph.be, %for.cond.outer.backedge ], [ 1, %entry ]
  %tobool4 = icmp eq i32 %level.0.ph, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.else
  %2 = phi i8* [ %.pre, %for.cond.outer ], [ %incdec.ptr, %if.else ]
  %incdec.ptr = getelementptr inbounds i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s, align 4, !tbaa !3
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %3, 0
  %or.cond = or i1 %tobool, %tobool4
  br i1 %or.cond, label %return, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp7 = icmp eq i8 %3, %inpar
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.0.ph, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb10, label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.then9, %ioc_bb10, %if.then16, %ioc_bb17
  %level.0.ph.be = phi i32 [ %5, %if.then9 ], [ %5, %ioc_bb10 ], [ %9, %if.then16 ], [ %9, %ioc_bb17 ]
  %.pre.pre = load i8** %s, align 4, !tbaa !3
  br label %for.cond.outer

ioc_bb10:                                         ; preds = %if.then9
  %7 = sext i32 %level.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1788, i32 7, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %for.cond.outer.backedge

if.else:                                          ; preds = %for.body
  %cmp14 = icmp eq i8 %3, %outpar
  br i1 %cmp14, label %if.then16, label %for.cond

if.then16:                                        ; preds = %if.else
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.0.ph, i32 -1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb17, label %for.cond.outer.backedge

ioc_bb17:                                         ; preds = %if.then16
  %11 = sext i32 %level.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1790, i32 7, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %for.cond.outer.backedge

return:                                           ; preds = %for.cond, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %level.0.ph, %for.cond ]
  ret i32 %retval.0
}

declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) nounwind readnone

declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) nounwind readnone

declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) nounwind readnone

declare void @llvm.trap() noreturn nounwind

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

define i32 @setblock_fd(i32 %turnonblocking, i32 %fd, i32* nocapture %modep) nounwind {
entry:
  %st = alloca %struct.stat, align 4
  %0 = bitcast %struct.stat* %st to %struct.stat64*
  %call.i = call i32 @__fxstat64(i32 3, i32 %fd, %struct.stat64* %0) nounwind
  %tobool = icmp eq i32 %call.i, 0
  br i1 %tobool, label %cont2, label %cont27

cont2:                                            ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  %1 = load i32* %st_mode, align 4, !tbaa !0
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %cont27, label %if.then

if.then:                                          ; preds = %cont2
  %call3 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 3, i32 0) nounwind
  store i32 %call3, i32* %modep, align 4, !tbaa !6
  %cmp6 = icmp eq i32 %call3, -1
  br i1 %cmp6, label %if.end28, label %if.then7

if.then7:                                         ; preds = %if.then
  %tobool8 = icmp eq i32 %turnonblocking, 0
  %and15 = and i32 %call3, 2048
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  br i1 %tobool16, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %or = or i32 %call3, 2048
  %call12 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 4, i32 %or) nounwind
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %return, label %if.end28

if.else:                                          ; preds = %if.then7
  br i1 %tobool16, label %land.lhs.true17, label %if.end28

land.lhs.true17:                                  ; preds = %if.else
  %and18 = and i32 %call3, -2049
  %call19 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 4, i32 %and18) nounwind
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %return, label %if.end28

cont27:                                           ; preds = %cont2, %entry
  store i32 -1, i32* %modep, align 4, !tbaa !6
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true17, %lor.lhs.false, %if.then, %if.else, %cont27
  br label %return

return:                                           ; preds = %land.lhs.true17, %if.then9, %lor.lhs.false, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 1, %lor.lhs.false ], [ 1, %if.then9 ], [ 1, %land.lhs.true17 ]
  ret i32 %retval.0
}

define i32 @setblock_stdin() nounwind {
entry:
  %st.i = alloca %struct.stat, align 4
  %0 = bitcast %struct.stat* %st.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %1 = bitcast %struct.stat* %st.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 0, %struct.stat64* %1) nounwind
  %tobool.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i, label %cont2.i, label %if.end28.i

cont2.i:                                          ; preds = %entry
  %st_mode.i = getelementptr inbounds %struct.stat* %st.i, i32 0, i32 3
  %2 = load i32* %st_mode.i, align 4, !tbaa !0
  %and.i = and i32 %2, 61440
  %cmp.i = icmp eq i32 %and.i, 32768
  br i1 %cmp.i, label %if.end28.i, label %if.then.i

if.then.i:                                        ; preds = %cont2.i
  %call3.i = call i32 (i32, i32, ...)* @fcntl(i32 0, i32 3, i32 0) nounwind
  %cmp6.i = icmp ne i32 %call3.i, -1
  %and15.i = and i32 %call3.i, 2048
  %tobool16.i = icmp ne i32 %and15.i, 0
  %or.cond = and i1 %cmp6.i, %tobool16.i
  br i1 %or.cond, label %land.lhs.true17.i, label %if.end28.i

land.lhs.true17.i:                                ; preds = %if.then.i
  %and18.i = and i32 %call3.i, -2049
  %call19.i = call i32 (i32, i32, ...)* @fcntl(i32 0, i32 4, i32 %and18.i) nounwind
  %tobool20.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.i, label %setblock_fd.exit, label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %entry, %cont2.i, %land.lhs.true17.i
  br label %setblock_fd.exit

setblock_fd.exit:                                 ; preds = %land.lhs.true17.i, %if.end28.i
  %retval.0.i = phi i32 [ 0, %if.end28.i ], [ 1, %land.lhs.true17.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i32 %retval.0.i
}

define i32 @read_poll(i32 %fd, i32* nocapture %readchar, i32 %polltty, i64 %microseconds) nounwind {
entry:
  %st.i = alloca %struct.stat, align 4
  %c = alloca i8, align 1
  %foofd = alloca %struct.fd_set, align 4
  %expire_tv = alloca %struct.timeval, align 4
  %ti = alloca %struct.ttyinfo, align 4
  %tobool = icmp eq i32 %polltty, 0
  br i1 %tobool, label %cont27, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %0, -1
  br i1 %cmp.i, label %gettyinfo.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %tio.i = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i = call i32 @tcgetattr(i32 %0, %struct.termios* %tio.i) nounwind
  %cmp3.i = icmp eq i32 %call.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %gettyinfo.exit

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call5.i, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0), i32 %1) nounwind
  br label %gettyinfo.exit

gettyinfo.exit:                                   ; preds = %if.then.i, %if.then, %if.then4.i
  %arrayidx = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 6
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  %tobool3 = icmp eq i8 %2, 0
  br i1 %tobool3, label %cont27, label %cont6

cont6:                                            ; preds = %gettyinfo.exit
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %div = sdiv i64 %microseconds, 100000
  %microseconds.off114 = add i64 %microseconds, 214748364899999
  %3 = icmp ult i64 %microseconds.off114, 429496729699999
  br i1 %3, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cont6
  call void @__ioc_report_conversion(i32 1962, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %div, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cont6
  %conv14 = trunc i64 %div to i32
  %4 = icmp ult i32 %conv14, 256
  br i1 %4, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %cont13
  %5 = sext i32 %conv14 to i64
  call void @__ioc_report_conversion(i32 1962, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %cont13, %ioc_bb17
  %conv19 = trunc i64 %div to i8
  %arrayidx22 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 5
  store i8 %conv19, i8* %arrayidx22, align 1, !tbaa !1
  %6 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i115 = icmp eq i32 %6, -1
  br i1 %cmp.i115, label %cont27, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cont18
  %tio.i116 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i117140 = call i32 @tcsetattr(i32 %6, i32 1, %struct.termios* %tio.i116) nounwind
  %cmp3.i118141 = icmp eq i32 %call.i117140, -1
  br i1 %cmp3.i118141, label %land.rhs.i.lr.ph, label %cont27

land.rhs.i.lr.ph:                                 ; preds = %while.cond.preheader.i
  %call4.i = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.lr.ph, %land.rhs.while.cond_crit_edge.i
  %7 = load i32* %call4.i, align 4, !tbaa !0
  %cmp5.i = icmp eq i32 %7, 4
  br i1 %cmp5.i, label %land.rhs.while.cond_crit_edge.i, label %cont27

land.rhs.while.cond_crit_edge.i:                  ; preds = %land.rhs.i
  %.pre.i = load i32* @SHTTY, align 4, !tbaa !0
  %call.i117 = call i32 @tcsetattr(i32 %.pre.i, i32 1, %struct.termios* %tio.i116) nounwind
  %cmp3.i118 = icmp eq i32 %call.i117, -1
  br i1 %cmp3.i118, label %land.rhs.i, label %cont27

cont27:                                           ; preds = %while.cond.preheader.i, %land.rhs.i, %land.rhs.while.cond_crit_edge.i, %cont18, %entry, %gettyinfo.exit
  %polltty.addr.0 = phi i32 [ %conv, %gettyinfo.exit ], [ 0, %entry ], [ %conv, %cont18 ], [ %conv, %land.rhs.while.cond_crit_edge.i ], [ %conv, %land.rhs.i ], [ %conv, %while.cond.preheader.i ]
  %div28 = sdiv i64 %microseconds, 1000000
  %microseconds.off = add i64 %microseconds, 2147483648999999
  %8 = icmp ult i64 %microseconds.off, 4294967296999999
  br i1 %8, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %cont27
  call void @__ioc_report_conversion(i32 1969, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %div28, i8 1) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %cont27
  %conv33 = trunc i64 %div28 to i32
  %tv_sec = getelementptr inbounds %struct.timeval* %expire_tv, i32 0, i32 0
  store i32 %conv33, i32* %tv_sec, align 4, !tbaa !6
  %rem = srem i64 %microseconds, 1000000
  %conv42 = trunc i64 %rem to i32
  %tv_usec = getelementptr inbounds %struct.timeval* %expire_tv, i32 0, i32 1
  store i32 %conv42, i32* %tv_usec, align 4, !tbaa !6
  %arrayidx44 = getelementptr inbounds %struct.fd_set* %foofd, i32 0, i32 0, i32 0
  %9 = call { i32, i32 } asm sideeffect "cld; rep; stosl", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 32, i32* %arrayidx44) nounwind, !srcloc !7
  %10 = sext i32 %fd to i64
  %11 = icmp sgt i32 %fd, -1
  br i1 %11, label %cont64, label %ioc_bb58

ioc_bb58:                                         ; preds = %cont32
  call void @__ioc_report_conversion(i32 1976, i32 59, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1976, i32 99, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont64

cont64:                                           ; preds = %cont32, %ioc_bb58
  %div54134.pn = lshr i32 %fd, 5
  %arrayidx56136 = getelementptr inbounds %struct.fd_set* %foofd, i32 0, i32 0, i32 %div54134.pn
  %rem65 = and i32 %fd, 31
  call void asm sideeffect "btsl $1,$0", "=*m,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %arrayidx56136, i32 %rem65) nounwind, !srcloc !8
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %fd, i32 1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb66, label %cont67

ioc_bb66:                                         ; preds = %cont64
  call void @__ioc_report_add_overflow(i32 1977, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont67

cont67:                                           ; preds = %cont64, %ioc_bb66
  %call = call i32 @select(i32 %13, %struct.fd_set* %foofd, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %expire_tv) nounwind
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then69, label %if.end88

if.then69:                                        ; preds = %cont67
  %tobool70 = icmp eq i32 %polltty.addr.0, 0
  br i1 %tobool70, label %lor.lhs.false, label %cont74

lor.lhs.false:                                    ; preds = %if.then69
  %15 = bitcast %struct.stat* %st.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) nounwind
  %16 = bitcast %struct.stat* %st.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %fd, %struct.stat64* %16) nounwind
  %tobool.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i, label %cont2.i, label %if.end101

cont2.i:                                          ; preds = %lor.lhs.false
  %st_mode.i = getelementptr inbounds %struct.stat* %st.i, i32 0, i32 3
  %17 = load i32* %st_mode.i, align 4, !tbaa !0
  %and.i = and i32 %17, 61440
  %cmp.i119 = icmp eq i32 %and.i, 32768
  br i1 %cmp.i119, label %if.end88, label %if.then.i120

if.then.i120:                                     ; preds = %cont2.i
  %call3.i = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 3, i32 0) nounwind
  %cmp6.i = icmp eq i32 %call3.i, -1
  br i1 %cmp6.i, label %if.end88, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i120
  %and15.i = and i32 %call3.i, 2048
  %tobool16.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.i, label %lor.lhs.false.i, label %cont74

lor.lhs.false.i:                                  ; preds = %if.then7.i
  %or.i = or i32 %call3.i, 2048
  %call12.i = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 4, i32 %or.i) nounwind
  %tobool13.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.i, label %cont74, label %if.then85

cont74:                                           ; preds = %if.then7.i, %lor.lhs.false.i, %if.then69
  %18 = phi i32 [ -1, %if.then69 ], [ %call3.i, %lor.lhs.false.i ], [ %call3.i, %if.then7.i ]
  %call75 = call i32 @read(i32 %fd, i8* %c, i32 1) nounwind
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %cont74
  %19 = load i8* %c, align 1, !tbaa !1
  %conv79 = sext i8 %19 to i32
  store i32 %conv79, i32* %readchar, align 4, !tbaa !0
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %cont74
  %ret.0 = phi i32 [ 1, %if.then78 ], [ %call, %cont74 ]
  %cmp83 = icmp eq i32 %18, -1
  br i1 %cmp83, label %if.end88, label %if.then85

if.then85:                                        ; preds = %lor.lhs.false.i, %if.end80
  %ret.0145 = phi i32 [ %ret.0, %if.end80 ], [ %call, %lor.lhs.false.i ]
  %20 = phi i32 [ %18, %if.end80 ], [ %call3.i, %lor.lhs.false.i ]
  %call86 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 4, i32 %20) nounwind
  br label %if.end88

if.end88:                                         ; preds = %cont2.i, %if.then.i120, %if.end80, %if.then85, %cont67
  %ret.1 = phi i32 [ %ret.0145, %if.then85 ], [ %ret.0, %if.end80 ], [ %call, %cont67 ], [ %call, %if.then.i120 ], [ %call, %cont2.i ]
  %tobool89 = icmp eq i32 %polltty.addr.0, 0
  br i1 %tobool89, label %if.end101, label %cont92

cont92:                                           ; preds = %if.end88
  %arrayidx95 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 6
  store i8 1, i8* %arrayidx95, align 1, !tbaa !1
  %arrayidx100 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 5
  store i8 0, i8* %arrayidx100, align 1, !tbaa !1
  %21 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i121 = icmp eq i32 %21, -1
  br i1 %cmp.i121, label %if.end101, label %while.cond.preheader.i123

while.cond.preheader.i123:                        ; preds = %cont92
  %tio.i122 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i124138 = call i32 @tcsetattr(i32 %21, i32 1, %struct.termios* %tio.i122) nounwind
  %cmp3.i125139 = icmp eq i32 %call.i124138, -1
  br i1 %cmp3.i125139, label %land.rhs.i129.lr.ph, label %if.end101

land.rhs.i129.lr.ph:                              ; preds = %while.cond.preheader.i123
  %call4.i127 = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i129

land.rhs.i129:                                    ; preds = %land.rhs.i129.lr.ph, %land.rhs.while.cond_crit_edge.i131
  %22 = load i32* %call4.i127, align 4, !tbaa !0
  %cmp5.i128 = icmp eq i32 %22, 4
  br i1 %cmp5.i128, label %land.rhs.while.cond_crit_edge.i131, label %if.end101

land.rhs.while.cond_crit_edge.i131:               ; preds = %land.rhs.i129
  %.pre.i130 = load i32* @SHTTY, align 4, !tbaa !0
  %call.i124 = call i32 @tcsetattr(i32 %.pre.i130, i32 1, %struct.termios* %tio.i122) nounwind
  %cmp3.i125 = icmp eq i32 %call.i124, -1
  br i1 %cmp3.i125, label %land.rhs.i129, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false, %while.cond.preheader.i123, %land.rhs.i129, %land.rhs.while.cond_crit_edge.i131, %cont92, %if.end88
  %ret.1147 = phi i32 [ %ret.1, %while.cond.preheader.i123 ], [ %ret.1, %land.rhs.i129 ], [ %ret.1, %land.rhs.while.cond_crit_edge.i131 ], [ %ret.1, %cont92 ], [ %ret.1, %if.end88 ], [ %call, %lor.lhs.false ]
  %cmp102 = icmp sgt i32 %ret.1147, 0
  %conv103 = zext i1 %cmp102 to i32
  ret i32 %conv103
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*)

declare i32 @read(i32, i8* nocapture, i32)

define i32 @checkrmall(i8* %s) nounwind {
entry:
  %0 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = tail call i32 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str37, i32 0, i32 0), i32 46, i32 1, %struct._IO_FILE* %0)
  %2 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 47
  br i1 %cmp, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i8** @pwd, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %3, i32 1
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool4 = icmp eq i8 %4, 0
  br i1 %tobool4, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then2
  %call5 = tail call i8* @unmeta(i8* %3)
  br label %cond.end

cond.end:                                         ; preds = %if.then2, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), %if.then2 ]
  %5 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call6 = tail call i32 @mb_niceformat(i8* %cond, %struct._IO_FILE* %5, i8** null, i32 0)
  %6 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call7 = tail call i32 @fputc(i32 47, %struct._IO_FILE* %6) nounwind
  br label %if.end8

if.end8:                                          ; preds = %if.end, %cond.end
  %7 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call9 = tail call i32 @mb_niceformat(i8* %s, %struct._IO_FILE* %7, i8** null, i32 0)
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 146), align 1, !tbaa !1
  %tobool10 = icmp eq i8 %8, 0
  br i1 %tobool10, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end8
  %9 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %10 = tail call i32 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str38, i32 0, i32 0), i32 23, i32 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call13 = tail call i32 @fflush(%struct._IO_FILE* %11) nounwind
  tail call void @zbeep()
  %call14 = tail call i32 @sleep(i32 10) nounwind
  %12 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call15 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12) nounwind
  br label %if.end16

if.end16:                                         ; preds = %if.end8, %if.then11
  %13 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %14 = tail call i32 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str39, i32 0, i32 0), i32 7, i32 1, %struct._IO_FILE* %13)
  %15 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call18 = tail call i32 @fflush(%struct._IO_FILE* %15) nounwind
  tail call void @zbeep()
  %call19 = tail call i32 @getquery(i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i32 1)
  %cmp20 = icmp eq i32 %call19, 121
  %conv21 = zext i1 %cmp20 to i32
  br label %return

return:                                           ; preds = %entry, %if.end16
  %retval.0 = phi i32 [ %conv21, %if.end16 ], [ 1, %entry ]
  ret i32 %retval.0
}

define void @zbeep() nounwind {
entry:
  %len = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp33 = alloca %struct.__sigset_t, align 4
  %0 = load i32* @queueing_enabled, align 4, !tbaa !0
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 2996, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !0
  %call = call i8* @getsparam(i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0)) nounwind
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.else, label %cont12

cont12:                                           ; preds = %cont
  %call13 = call i8* @getkeystring(i8* %call, i32* %len, i32 7, i32* null)
  %5 = load i32* @SHTTY, align 4, !tbaa !0
  %6 = load i32* %len, align 4, !tbaa !0
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %cont12
  %8 = sext i32 %6 to i64
  call void @__ioc_report_conversion(i32 3000, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %cont12
  %call16 = call i32 @write_loop(i32 %5, i8* %call13, i32 %6)
  br label %do.body

if.else:                                          ; preds = %cont
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 21), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %9, 0
  br i1 %tobool17, label %do.body, label %cont20

cont20:                                           ; preds = %if.else
  %10 = load i32* @SHTTY, align 4, !tbaa !0
  %call21 = call i32 @write_loop(i32 %10, i8* getelementptr inbounds ([2 x i8]* @.str54, i32 0, i32 0), i32 1)
  br label %do.body

do.body:                                          ; preds = %if.else, %cont15, %cont20
  %11 = load i32* @queueing_enabled, align 4, !tbaa !0
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %do.body
  %15 = sext i32 %11 to i64
  call void @__ioc_report_add_overflow(i32 3006, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont24

cont24:                                           ; preds = %do.body, %ioc_bb23
  store i32 %13, i32* @queueing_enabled, align 4, !tbaa !0
  %tobool25 = icmp eq i32 %13, 0
  br i1 %tobool25, label %while.cond.preheader, label %do.end35

while.cond.preheader:                             ; preds = %cont24
  %16 = load i32* @queue_front, align 4, !tbaa !0
  %17 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %16, %17
  br i1 %cmp37, label %do.end35, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont31
  %18 = phi i32 [ %25, %cont31 ], [ %16, %while.cond.preheader ]
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb28, label %cont31

ioc_bb28:                                         ; preds = %while.body
  %22 = sext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 3010, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %22, i64 1, i8 13) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb28, %while.body
  %rem = srem i32 %20, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %23 = load i32* @queue_front, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %23
  %24 = load i32* %arrayidx32, align 4, !tbaa !0
  call void @zhandler(i32 %24) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp33, %struct.__sigset_t* byval align 4 %oset) nounwind
  %25 = load i32* @queue_front, align 4, !tbaa !0
  %26 = load i32* @queue_rear, align 4, !tbaa !0
  %cmp = icmp eq i32 %25, %26
  br i1 %cmp, label %do.end35, label %while.body

do.end35:                                         ; preds = %while.cond.preheader, %cont31, %cont24
  ret void
}

declare i32 @sleep(i32)

define i32 @getquery(i8* %valid_chars, i32 %purge) nounwind {
entry:
  %ti = alloca %struct.ttyinfo, align 4
  %buf = alloca i8, align 1
  %mbs = alloca %struct.__mbstate_t, align 8
  %cc = alloca i8, align 1
  %0 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 1) to i32), i32 ptrtoint ([6 x i8]* @.str43 to i32))
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %ioc_bb, label %cont2

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_sub_overflow(i32 2108, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([6 x i8]* @.str43 to i32) to i64), i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb, %entry
  %2 = load i8** @term, align 4, !tbaa !3
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0)) nounwind
  %lnot = icmp eq i32 %call, 0
  %3 = load i32* @mypgrp, align 4, !tbaa !0
  call void @attachtty(i32 %3)
  %4 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %4, -1
  br i1 %cmp.i, label %gettyinfo.exit, label %if.then.i

if.then.i:                                        ; preds = %cont2
  %tio.i = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i = call i32 @tcgetattr(i32 %4, %struct.termios* %tio.i) nounwind
  %cmp3.i = icmp eq i32 %call.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %gettyinfo.exit

if.then4.i:                                       ; preds = %if.then.i
  %call5.i = call i32* @__errno_location() nounwind readnone
  %5 = load i32* %call5.i, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0), i32 %5) nounwind
  br label %gettyinfo.exit

gettyinfo.exit:                                   ; preds = %cont2, %if.then.i, %if.then4.i
  call void @__ioc_report_conversion(i32 2113, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -9, i8 1) nounwind
  %c_lflag = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 3
  %6 = load i32* %c_lflag, align 4, !tbaa !0
  %and = and i32 %6, -9
  store i32 %and, i32* %c_lflag, align 4, !tbaa !0
  br i1 %lnot, label %if.end67, label %ioc_bb53

ioc_bb53:                                         ; preds = %gettyinfo.exit
  call void @__ioc_report_conversion(i32 2115, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -3, i8 1) nounwind
  %7 = load i32* %c_lflag, align 4, !tbaa !0
  %and57 = and i32 %7, -3
  store i32 %and57, i32* %c_lflag, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 6
  store i8 1, i8* %arrayidx61, align 1, !tbaa !1
  %arrayidx66 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 5
  store i8 0, i8* %arrayidx66, align 1, !tbaa !1
  br label %if.end67

if.end67:                                         ; preds = %ioc_bb53, %gettyinfo.exit
  %8 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i209 = icmp eq i32 %8, -1
  br i1 %cmp.i209, label %settyinfo.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end67
  %tio.i210 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i211253 = call i32 @tcsetattr(i32 %8, i32 1, %struct.termios* %tio.i210) nounwind
  %cmp3.i212254 = icmp eq i32 %call.i211253, -1
  br i1 %cmp3.i212254, label %land.rhs.i.lr.ph, label %settyinfo.exit

land.rhs.i.lr.ph:                                 ; preds = %while.cond.preheader.i
  %call4.i = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.lr.ph, %land.rhs.while.cond_crit_edge.i
  %9 = load i32* %call4.i, align 4, !tbaa !0
  %cmp5.i = icmp eq i32 %9, 4
  br i1 %cmp5.i, label %land.rhs.while.cond_crit_edge.i, label %settyinfo.exit

land.rhs.while.cond_crit_edge.i:                  ; preds = %land.rhs.i
  %.pre.i = load i32* @SHTTY, align 4, !tbaa !0
  %call.i211 = call i32 @tcsetattr(i32 %.pre.i, i32 1, %struct.termios* %tio.i210) nounwind
  %cmp3.i212 = icmp eq i32 %call.i211, -1
  br i1 %cmp3.i212, label %land.rhs.i, label %settyinfo.exit

settyinfo.exit:                                   ; preds = %while.cond.preheader.i, %land.rhs.i, %land.rhs.while.cond_crit_edge.i, %if.end67
  %call68 = call i32 @noquery(i32 %purge)
  %tobool69 = icmp eq i32 %call68, 0
  br i1 %tobool69, label %while.cond.preheader, label %if.then70

while.cond.preheader:                             ; preds = %settyinfo.exit
  %call78248 = call fastcc i32 @read1char(i32 0)
  %cmp79249 = icmp sgt i32 %call78248, -1
  br i1 %cmp79249, label %while.body.lr.ph, label %if.end123

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool89 = icmp eq i8* %valid_chars, null
  br label %while.body

if.then70:                                        ; preds = %settyinfo.exit
  br i1 %lnot, label %cont75, label %if.then72

if.then72:                                        ; preds = %if.then70
  %10 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i213 = icmp eq i32 %10, -1
  br i1 %cmp.i213, label %cont75, label %while.cond.i217.preheader

while.cond.i217.preheader:                        ; preds = %if.then72
  %call.i215251 = call i32 @tcsetattr(i32 %10, i32 1, %struct.termios* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 0)) nounwind
  %cmp3.i216252 = icmp eq i32 %call.i215251, -1
  br i1 %cmp3.i216252, label %land.rhs.i220.lr.ph, label %cont75

land.rhs.i220.lr.ph:                              ; preds = %while.cond.i217.preheader
  %call4.i218 = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i220

land.rhs.i220:                                    ; preds = %land.rhs.i220.lr.ph, %land.rhs.while.cond_crit_edge.i222
  %11 = load i32* %call4.i218, align 4, !tbaa !0
  %cmp5.i219 = icmp eq i32 %11, 4
  br i1 %cmp5.i219, label %land.rhs.while.cond_crit_edge.i222, label %cont75

land.rhs.while.cond_crit_edge.i222:               ; preds = %land.rhs.i220
  %.pre.i221 = load i32* @SHTTY, align 4, !tbaa !0
  %call.i215 = call i32 @tcsetattr(i32 %.pre.i221, i32 1, %struct.termios* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 0)) nounwind
  %cmp3.i216 = icmp eq i32 %call.i215, -1
  br i1 %cmp3.i216, label %land.rhs.i220, label %cont75

cont75:                                           ; preds = %while.cond.i217.preheader, %land.rhs.i220, %land.rhs.while.cond_crit_edge.i222, %if.then70, %if.then72
  %12 = load i32* @SHTTY, align 4, !tbaa !0
  %call76 = call i32 @write_loop(i32 %12, i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i32 2)
  br label %return

while.body:                                       ; preds = %while.body.lr.ph, %if.end107
  %call78250 = phi i32 [ %call78248, %while.body.lr.ph ], [ %call78, %if.end107 ]
  %cmp81 = icmp eq i32 %call78250, 89
  br i1 %cmp81, label %if.end88, label %if.else

if.else:                                          ; preds = %while.body
  %cmp84 = icmp eq i32 %call78250, 78
  %.call78 = select i1 %cmp84, i32 110, i32 %call78250
  br label %if.end88

if.end88:                                         ; preds = %if.else, %while.body
  %c.0 = phi i32 [ 121, %while.body ], [ %.call78, %if.else ]
  br i1 %tobool89, label %while.end, label %if.end91

if.end91:                                         ; preds = %if.end88
  %cmp92 = icmp eq i32 %c.0, 10
  br i1 %cmp92, label %if.then94, label %cond.false103

if.then94:                                        ; preds = %if.end91
  %13 = load i8* %valid_chars, align 1, !tbaa !1
  %conv95 = sext i8 %13 to i32
  br label %while.end

cond.false103:                                    ; preds = %if.end91
  %call104 = call i8* @strchr(i8* %valid_chars, i32 %c.0) nounwind
  %tobool105 = icmp eq i8* %call104, null
  br i1 %tobool105, label %if.end107, label %while.end

if.end107:                                        ; preds = %cond.false103
  call void @zbeep()
  %call78 = call fastcc i32 @read1char(i32 0)
  %cmp79 = icmp sgt i32 %call78, -1
  br i1 %cmp79, label %while.body, label %if.end123

while.end:                                        ; preds = %cond.false103, %if.end88, %if.then94
  %nl.0 = phi i32 [ 1, %if.then94 ], [ 1, %cond.false103 ], [ 0, %if.end88 ]
  %c.1 = phi i32 [ %conv95, %if.then94 ], [ %c.0, %cond.false103 ], [ %c.0, %if.end88 ]
  %cmp108 = icmp sgt i32 %c.1, -1
  br i1 %cmp108, label %if.then110, label %if.end117

if.then110:                                       ; preds = %while.end
  %c.1.off207 = add i32 %c.1, 128
  %14 = icmp ult i32 %c.1.off207, 256
  br i1 %14, label %cont112, label %ioc_bb111

ioc_bb111:                                        ; preds = %if.then110
  %15 = sext i32 %c.1 to i64
  call void @__ioc_report_conversion(i32 2147, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont112

cont112:                                          ; preds = %ioc_bb111, %if.then110
  %conv113 = trunc i32 %c.1 to i8
  store i8 %conv113, i8* %buf, align 1, !tbaa !1
  %16 = load i32* @SHTTY, align 4, !tbaa !0
  %call116 = call i32 @write_loop(i32 %16, i8* %buf, i32 1)
  br label %if.end117

if.end117:                                        ; preds = %cont112, %while.end
  %cmp108239 = phi i1 [ true, %cont112 ], [ false, %while.end ]
  %tobool118 = icmp eq i32 %nl.0, 0
  br i1 %tobool118, label %if.end123, label %cont121

cont121:                                          ; preds = %if.end117
  %17 = load i32* @SHTTY, align 4, !tbaa !0
  %call122 = call i32 @write_loop(i32 %17, i8* getelementptr inbounds ([2 x i8]* @.str45, i32 0, i32 0), i32 1)
  br label %if.end123

if.end123:                                        ; preds = %while.cond.preheader, %if.end107, %if.end117, %cont121
  %c.1238242 = phi i32 [ %c.1, %if.end117 ], [ %c.1, %cont121 ], [ %call78248, %while.cond.preheader ], [ %call78, %if.end107 ]
  %cmp108239241 = phi i1 [ %cmp108239, %if.end117 ], [ %cmp108239, %cont121 ], [ false, %while.cond.preheader ], [ false, %if.end107 ]
  %cmp126 = icmp ne i32 %c.1238242, 10
  br i1 %lnot, label %if.then125, label %if.else138

if.then125:                                       ; preds = %if.end123
  br i1 %cmp126, label %while.cond129, label %if.end182

while.cond129:                                    ; preds = %if.then125, %while.cond129
  %call130 = call fastcc i32 @read1char(i32 1)
  %cmp131 = icmp slt i32 %call130, 0
  %cmp133 = icmp eq i32 %call130, 10
  %or.cond = or i1 %cmp131, %cmp133
  br i1 %or.cond, label %if.end182, label %while.cond129

if.else138:                                       ; preds = %if.end123
  %tobool142 = icmp eq i8* %valid_chars, null
  %or.cond208 = and i1 %cmp126, %tobool142
  br i1 %or.cond208, label %if.then143, label %if.end182

if.then143:                                       ; preds = %if.else138
  %18 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool145 = icmp eq i8 %18, 0
  %cmp108.not = xor i1 %cmp108239241, true
  %brmerge = or i1 %tobool145, %cmp108.not
  br i1 %brmerge, label %cont179, label %if.then149

if.then149:                                       ; preds = %if.then143
  %c.1.off = add i32 %c.1238242, 128
  %19 = icmp ult i32 %c.1.off, 256
  br i1 %19, label %cont153, label %ioc_bb152

ioc_bb152:                                        ; preds = %if.then149
  %20 = sext i32 %c.1238242 to i64
  call void @__ioc_report_conversion(i32 2167, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont153

cont153:                                          ; preds = %ioc_bb152, %if.then149
  %conv154 = trunc i32 %c.1238242 to i8
  store i8 %conv154, i8* %cc, align 1, !tbaa !1
  %21 = bitcast %struct.__mbstate_t* %mbs to i64*
  store i64 0, i64* %21, align 8
  br label %cont156

cont156:                                          ; preds = %cont153, %cont175
  %c.2 = phi i32 [ %c.1238242, %cont153 ], [ %call167, %cont175 ]
  %call.i224 = call i32 @mbrtowc(i32* null, i8* %cc, i32 1, %struct.__mbstate_t* %mbs) nounwind
  call void @__ioc_report_conversion(i32 2171, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp163 = icmp eq i32 %call.i224, -2
  br i1 %cmp163, label %if.end166, label %cont179

if.end166:                                        ; preds = %cont156
  %call167 = call fastcc i32 @read1char(i32 1)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %cont179, label %if.end171

if.end171:                                        ; preds = %if.end166
  %call167.off = add i32 %call167, 128
  %22 = icmp ult i32 %call167.off, 256
  br i1 %22, label %cont175, label %ioc_bb174

ioc_bb174:                                        ; preds = %if.end171
  %23 = sext i32 %call167 to i64
  call void @__ioc_report_conversion(i32 2176, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont175

cont175:                                          ; preds = %ioc_bb174, %if.end171
  %conv176 = trunc i32 %call167 to i8
  store i8 %conv176, i8* %cc, align 1, !tbaa !1
  br label %cont156

cont179:                                          ; preds = %if.end166, %cont156, %if.then143
  %c.3 = phi i32 [ %c.1238242, %if.then143 ], [ %call167, %if.end166 ], [ %c.2, %cont156 ]
  %24 = load i32* @SHTTY, align 4, !tbaa !0
  %call180 = call i32 @write_loop(i32 %24, i8* getelementptr inbounds ([2 x i8]* @.str45, i32 0, i32 0), i32 1)
  br label %if.end182

if.end182:                                        ; preds = %while.cond129, %if.else138, %cont179, %if.then125
  %c.4 = phi i32 [ 10, %if.then125 ], [ %c.3, %cont179 ], [ %c.1238242, %if.else138 ], [ %c.1238242, %while.cond129 ]
  %25 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i225 = icmp eq i32 %25, -1
  br i1 %cmp.i225, label %return, label %while.cond.i229.preheader

while.cond.i229.preheader:                        ; preds = %if.end182
  %call.i227243 = call i32 @tcsetattr(i32 %25, i32 1, %struct.termios* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 0)) nounwind
  %cmp3.i228244 = icmp eq i32 %call.i227243, -1
  br i1 %cmp3.i228244, label %land.rhs.i232.lr.ph, label %return

land.rhs.i232.lr.ph:                              ; preds = %while.cond.i229.preheader
  %call4.i230 = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i232

land.rhs.i232:                                    ; preds = %land.rhs.i232.lr.ph, %land.rhs.while.cond_crit_edge.i234
  %26 = load i32* %call4.i230, align 4, !tbaa !0
  %cmp5.i231 = icmp eq i32 %26, 4
  br i1 %cmp5.i231, label %land.rhs.while.cond_crit_edge.i234, label %return

land.rhs.while.cond_crit_edge.i234:               ; preds = %land.rhs.i232
  %.pre.i233 = load i32* @SHTTY, align 4, !tbaa !0
  %call.i227 = call i32 @tcsetattr(i32 %.pre.i233, i32 1, %struct.termios* getelementptr inbounds (%struct.ttyinfo* @shttyinfo, i32 0, i32 0)) nounwind
  %cmp3.i228 = icmp eq i32 %call.i227, -1
  br i1 %cmp3.i228, label %land.rhs.i232, label %return

return:                                           ; preds = %while.cond.i229.preheader, %land.rhs.i232, %land.rhs.while.cond_crit_edge.i234, %if.end182, %cont75
  %retval.0 = phi i32 [ 110, %cont75 ], [ %c.4, %if.end182 ], [ %c.4, %land.rhs.while.cond_crit_edge.i234 ], [ %c.4, %land.rhs.i232 ], [ %c.4, %while.cond.i229.preheader ]
  ret i32 %retval.0
}

define i32 @read_loop(i32 %fd, i8* nocapture %buf, i32 %len) nounwind {
entry:
  %0 = icmp sgt i32 %len, -1
  br i1 %0, label %while.body.outer, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %len to i64
  tail call void @__ioc_report_conversion(i32 2031, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %while.body.outer

while.body.outer:                                 ; preds = %ioc_bb20, %cont19, %entry, %ioc_bb
  %len.addr.0.ph = phi i32 [ %len, %ioc_bb ], [ %len, %entry ], [ %6, %cont19 ], [ %6, %ioc_bb20 ]
  %buf.addr.0.ph = phi i8* [ %buf, %ioc_bb ], [ %buf, %entry ], [ %add.ptr, %cont19 ], [ %add.ptr, %ioc_bb20 ]
  br label %while.body

while.body:                                       ; preds = %while.body.outer, %if.then6
  %call = tail call i32 @read(i32 %fd, i8* %buf.addr.0.ph, i32 %len.addr.0.ph) nounwind
  %smincheck = icmp slt i32 %call, 0
  br i1 %smincheck, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %while.body
  %2 = sext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 2034, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %while.body, %ioc_bb1
  %cmp = icmp eq i32 %call, %len.addr.0.ph
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %cont2
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %if.then4, label %cont19

if.then4:                                         ; preds = %if.end
  br i1 %smincheck, label %if.then6, label %return

if.then6:                                         ; preds = %if.then4
  %call7 = tail call i32* @__errno_location() nounwind readnone
  %3 = load i32* %call7, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %3, 4
  br i1 %cmp8, label %while.body, label %if.end10

if.end10:                                         ; preds = %if.then6
  %4 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %4, %fd
  br i1 %cmp11, label %return, label %if.then12

if.then12:                                        ; preds = %if.end10
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([16 x i8]* @.str41, i32 0, i32 0), i32 %3)
  br label %return

cont19:                                           ; preds = %if.end
  %add.ptr = getelementptr inbounds i8* %buf.addr.0.ph, i32 %call
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0.ph, i32 %call)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb20, label %while.body.outer

ioc_bb20:                                         ; preds = %cont19
  %8 = zext i32 %call to i64
  %9 = zext i32 %len.addr.0.ph to i64
  tail call void @__ioc_report_sub_overflow(i32 2046, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind
  br label %while.body.outer

return:                                           ; preds = %cont2, %if.then4, %if.then12, %if.end10
  %retval.0 = phi i32 [ %call, %if.end10 ], [ %call, %if.then12 ], [ %len, %cont2 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

define i32 @write_loop(i32 %fd, i8* nocapture %buf, i32 %len) nounwind {
entry:
  %0 = icmp sgt i32 %len, -1
  br i1 %0, label %while.body.outer, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %len to i64
  tail call void @__ioc_report_conversion(i32 2054, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %while.body.outer

while.body.outer:                                 ; preds = %ioc_bb19, %if.end15, %entry, %ioc_bb
  %len.addr.0.ph = phi i32 [ %len, %ioc_bb ], [ %len, %entry ], [ %6, %if.end15 ], [ %6, %ioc_bb19 ]
  %buf.addr.0.ph = phi i8* [ %buf, %ioc_bb ], [ %buf, %entry ], [ %add.ptr, %if.end15 ], [ %add.ptr, %ioc_bb19 ]
  br label %while.body

while.body:                                       ; preds = %while.body.outer, %if.then4
  %call = tail call i32 @write(i32 %fd, i8* %buf.addr.0.ph, i32 %len.addr.0.ph) nounwind
  %smincheck = icmp slt i32 %call, 0
  br i1 %smincheck, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %while.body
  %2 = sext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 2057, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %while.body, %ioc_bb1
  %cmp = icmp eq i32 %call, %len.addr.0.ph
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %cont2
  br i1 %smincheck, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32* @__errno_location() nounwind readnone
  %3 = load i32* %call5, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %3, 4
  br i1 %cmp6, label %while.body, label %if.end8

if.end8:                                          ; preds = %if.then4
  %4 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %4, %fd
  br i1 %cmp9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([17 x i8]* @.str42, i32 0, i32 0), i32 %3)
  br label %return

if.end15:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8* %buf.addr.0.ph, i32 %call
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0.ph, i32 %call)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb19, label %while.body.outer

ioc_bb19:                                         ; preds = %if.end15
  %8 = zext i32 %call to i64
  %9 = zext i32 %len.addr.0.ph to i64
  tail call void @__ioc_report_sub_overflow(i32 2067, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind
  br label %while.body.outer

return:                                           ; preds = %cont2, %if.end8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.end8 ], [ %len, %cont2 ]
  ret i32 %retval.0
}

declare i32 @write(i32, i8* nocapture, i32)

define i32 @noquery(i32 %purge) nounwind {
entry:
  %val = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %val, align 4, !tbaa !0
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %call = call i32 (i32, i32, ...)* @ioctl(i32 %0, i32 21531, i32* %val) nounwind
  %tobool = icmp eq i32 %purge, 0
  %.pre = load i32* %val, align 4, !tbaa !0
  br i1 %tobool, label %if.end8, label %for.condthread-pre-split

for.condthread-pre-split:                         ; preds = %entry
  %tobool19 = icmp eq i32 %.pre, 0
  br i1 %tobool19, label %if.end8, label %cont3

cont3:                                            ; preds = %for.condthread-pre-split, %cont7
  %1 = load i32* @SHTTY, align 4, !tbaa !0
  %call4 = call i32 @read(i32 %1, i8* %c, i32 1) nounwind
  %2 = load i32* %val, align 4, !tbaa !0
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont3
  %6 = sext i32 %2 to i64
  call void @__ioc_report_add_overflow(i32 2092, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %6, i64 -1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %cont3, %ioc_bb6
  store i32 %4, i32* %val, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %if.end8, label %cont3

if.end8:                                          ; preds = %entry, %for.condthread-pre-split, %cont7
  %7 = phi i32 [ 0, %cont7 ], [ 0, %for.condthread-pre-split ], [ %.pre, %entry ]
  ret i32 %7
}

define void @attachtty(i32 %pgrp) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool38 = icmp eq i8 %0, 0
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool239 = icmp eq i8 %1, 0
  %or.cond3640 = or i1 %tobool38, %tobool239
  %2 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp41 = icmp eq i32 %2, -1
  %or.cond3742 = or i1 %or.cond3640, %cmp41
  br i1 %or.cond3742, label %if.end33, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %entry, %if.then22
  %3 = phi i32 [ %12, %if.then22 ], [ %2, %entry ]
  %pgrp.tr43 = phi i32 [ %9, %if.then22 ], [ %pgrp, %entry ]
  %call = tail call i32 @tcsetpgrp(i32 %3, i32 %pgrp.tr43) nounwind
  %cmp7 = icmp ne i32 %call, -1
  %.b = load i1* @attachtty.ep.b, align 1
  %or.cond = or i1 %cmp7, %.b
  br i1 %or.cond, label %if.end33, label %if.then11

if.then11:                                        ; preds = %land.lhs.true4
  %4 = load i32* @mypgrp, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %4, %pgrp.tr43
  br i1 %cmp12, label %if.else, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then11
  %5 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %pgrp.tr43)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb15, label %cont16

ioc_bb15:                                         ; preds = %land.lhs.true14
  %8 = sext i32 %pgrp.tr43 to i64
  tail call void @__ioc_report_sub_overflow(i32 3523, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i64 0, i64 %8, i8 13) nounwind
  br label %cont16

cont16:                                           ; preds = %land.lhs.true14, %ioc_bb15
  %call17 = tail call i32 @kill(i32 %6, i32 0) nounwind
  %cmp20 = icmp eq i32 %call17, -1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %cont16
  %9 = load i32* @mypgrp, align 4, !tbaa !0
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  %tobool = icmp eq i8 %10, 0
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool2 = icmp eq i8 %11, 0
  %or.cond36 = or i1 %tobool, %tobool2
  %12 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp = icmp eq i32 %12, -1
  %or.cond37 = or i1 %or.cond36, %cmp
  br i1 %or.cond37, label %if.end33, label %land.lhs.true4

if.else:                                          ; preds = %if.then11, %cont16
  %call23 = tail call i32* @__errno_location() nounwind readnone
  %13 = load i32* %call23, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %13, 25
  br i1 %cmp24, label %cont30, label %if.then26

if.then26:                                        ; preds = %if.else
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([23 x i8]* @.str59, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE** @stderr, align 4, !tbaa !3
  %call28 = tail call i32 @fflush(%struct._IO_FILE* %14) nounwind
  br label %cont30

cont30:                                           ; preds = %if.then26, %if.else
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 108), align 1, !tbaa !1
  store i1 true, i1* @attachtty.ep.b, align 1
  br label %if.end33

if.end33:                                         ; preds = %entry, %land.lhs.true4, %if.then22, %cont30
  ret void
}

define internal fastcc i32 @read1char(i32 %echo) nounwind {
entry:
  %c = alloca i8, align 1
  br label %cont

cont:                                             ; preds = %entry, %while.body
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %call = call i32 @read(i32 %0, i8* %c, i32 1) nounwind
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %cont
  %call1 = call i32* @__errno_location() nounwind readnone
  %1 = load i32* %call1, align 4, !tbaa !0
  %cmp2 = icmp ne i32 %1, 4
  %2 = load i32* @errflag, align 4, !tbaa !0
  %tobool = icmp ne i32 %2, 0
  %or.cond = or i1 %cmp2, %tobool
  %3 = load i32* @retflag, align 4, !tbaa !0
  %tobool4 = icmp ne i32 %3, 0
  %or.cond19 = or i1 %or.cond, %tobool4
  %4 = load i32* @breaks, align 4, !tbaa !0
  %tobool6 = icmp ne i32 %4, 0
  %or.cond20 = or i1 %or.cond19, %tobool6
  %5 = load i32* @contflag, align 4, !tbaa !0
  %tobool8 = icmp ne i32 %5, 0
  %or.cond21 = or i1 %or.cond20, %tobool8
  br i1 %or.cond21, label %return, label %cont

while.end:                                        ; preds = %cont
  %tobool11 = icmp eq i32 %echo, 0
  br i1 %tobool11, label %if.end16, label %cont14

cont14:                                           ; preds = %while.end
  %6 = load i32* @SHTTY, align 4, !tbaa !0
  %call15 = call i32 @write_loop(i32 %6, i8* %c, i32 1)
  br label %if.end16

if.end16:                                         ; preds = %while.end, %cont14
  %7 = load i8* %c, align 1, !tbaa !1
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %if.end16
  %9 = sext i8 %7 to i64
  call void @__ioc_report_conversion(i32 2081, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %if.end16
  %conv = zext i8 %7 to i32
  br label %return

return:                                           ; preds = %while.body, %cont18
  %retval.0 = phi i32 [ %conv, %cont18 ], [ -1, %while.body ]
  ret i32 %retval.0
}

declare i8* @strchr(i8*, i32) nounwind readonly

define void @spckword(i8** %s, i32 %hist, i32 %cmd, i32 %ask) nounwind {
entry:
  %val.i = alloca i32, align 4
  %spnameguess.i = alloca [4097 x i8], align 1
  %spnamebest.i = alloca [4097 x i8], align 1
  %bestcd = alloca [4097 x i8], align 1
  %tobool = icmp ne i32 %cmd, 0
  %tobool.not = xor i1 %tobool, true
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 6), align 1, !tbaa !1
  %tobool1 = icmp eq i8 %0, 0
  %or.cond648 = or i1 %tobool1, %tobool.not
  br i1 %or.cond648, label %land.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %entry
  %1 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str8 to i32))
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb3, label %cont6

ioc_bb3:                                          ; preds = %land.lhs.true2
  call void @__ioc_report_sub_overflow(i32 2215, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str8 to i32) to i64), i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb3, %land.lhs.true2
  %cmp = icmp eq i32 %2, 1
  %4 = load i8** %s, align 4, !tbaa !3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont6
  %5 = load i8* %4, align 1, !tbaa !1
  %conv13 = zext i8 %5 to i32
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv13, i32 46)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb15, label %land.lhs.true21

ioc_bb15:                                         ; preds = %cond.true
  %9 = zext i8 %5 to i64
  call void @__ioc_report_sub_overflow(i32 2215, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %9, i64 46, i8 13) nounwind
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %cond.true, %ioc_bb15
  %cmp22 = icmp eq i32 %7, 0
  br i1 %cmp22, label %if.then, label %land.rhs

if.then:                                          ; preds = %land.lhs.true21
  %arrayidx24 = getelementptr inbounds i8* %4, i32 1
  %10 = load i8* %arrayidx24, align 1, !tbaa !1
  %conv25 = zext i8 %10 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont6
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv25, %if.then ]
  %tobool57 = icmp eq i32 %cond, 0
  br i1 %tobool57, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true21, %cond.end
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str46 to i32))
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb60, label %cont63

ioc_bb60:                                         ; preds = %land.rhs
  call void @__ioc_report_sub_overflow(i32 2215, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str46 to i32) to i64), i8 5) nounwind
  br label %cont63

cont63:                                           ; preds = %land.rhs, %ioc_bb60
  %cmp64 = icmp eq i32 %12, 1
  %14 = load i8** %s, align 4, !tbaa !3
  br i1 %cmp64, label %cond.true71, label %cond.false121

cond.true71:                                      ; preds = %cont63
  %15 = load i8* %14, align 1, !tbaa !1
  %conv75 = zext i8 %15 to i32
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv75, i32 46)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb77, label %land.lhs.true83

ioc_bb77:                                         ; preds = %cond.true71
  %19 = zext i8 %15 to i64
  call void @__ioc_report_sub_overflow(i32 2215, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %19, i64 46, i8 13) nounwind
  br label %land.lhs.true83

land.lhs.true83:                                  ; preds = %cond.true71, %ioc_bb77
  %cmp84 = icmp eq i32 %17, 0
  br i1 %cmp84, label %if.then86, label %cond.end123

if.then86:                                        ; preds = %land.lhs.true83
  %arrayidx87 = getelementptr inbounds i8* %14, i32 1
  %20 = load i8* %arrayidx87, align 1, !tbaa !1
  %conv88 = zext i8 %20 to i32
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv88, i32 46)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb90, label %land.lhs.true96

ioc_bb90:                                         ; preds = %if.then86
  %24 = zext i8 %20 to i64
  call void @__ioc_report_sub_overflow(i32 2215, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %24, i64 46, i8 13) nounwind
  br label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.then86, %ioc_bb90
  %cmp97 = icmp eq i32 %22, 0
  br i1 %cmp97, label %if.then99, label %cond.end123

if.then99:                                        ; preds = %land.lhs.true96
  %arrayidx100 = getelementptr inbounds i8* %14, i32 2
  %25 = load i8* %arrayidx100, align 1, !tbaa !1
  %conv101 = zext i8 %25 to i32
  br label %cond.end123

cond.false121:                                    ; preds = %cont63
  %call122 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0)) nounwind
  br label %cond.end123

cond.end123:                                      ; preds = %land.lhs.true83, %land.lhs.true96, %if.then99, %cond.false121
  %cond124 = phi i32 [ %call122, %cond.false121 ], [ %conv101, %if.then99 ], [ %22, %land.lhs.true96 ], [ %17, %land.lhs.true83 ]
  %tobool125 = icmp ne i32 %cond124, 0
  br label %land.end

land.end:                                         ; preds = %entry, %cond.end, %cond.end123
  %26 = phi i1 [ false, %cond.end ], [ false, %entry ], [ %tobool125, %cond.end123 ]
  %27 = load i32* @histdone, align 4, !tbaa !0
  %and = and i32 %27, 2
  %tobool126 = icmp eq i32 %and, 0
  br i1 %tobool126, label %lor.lhs.false, label %if.end546

lor.lhs.false:                                    ; preds = %land.end
  %28 = load i8** %s, align 4, !tbaa !3
  %29 = load i8* %28, align 1, !tbaa !1
  switch i8 %29, label %if.end135 [
    i8 45, label %if.end546
    i8 37, label %if.end546
  ]

if.end135:                                        ; preds = %lor.lhs.false
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str47 to i32))
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb138, label %cont141

ioc_bb138:                                        ; preds = %if.end135
  call void @__ioc_report_sub_overflow(i32 2218, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str47 to i32) to i64), i8 5) nounwind
  %.pre = load i8** %s, align 4, !tbaa !3
  br label %cont141

cont141:                                          ; preds = %ioc_bb138, %if.end135
  %33 = phi i8* [ %.pre, %ioc_bb138 ], [ %28, %if.end135 ]
  %cmp142 = icmp eq i32 %31, 1
  br i1 %cmp142, label %cond.true149, label %cond.false199

cond.true149:                                     ; preds = %cont141
  %34 = load i8* %33, align 1, !tbaa !1
  %conv153 = zext i8 %34 to i32
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv153, i32 105)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb155, label %land.lhs.true161

ioc_bb155:                                        ; preds = %cond.true149
  %38 = zext i8 %34 to i64
  call void @__ioc_report_sub_overflow(i32 2218, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %38, i64 105, i8 13) nounwind
  br label %land.lhs.true161

land.lhs.true161:                                 ; preds = %cond.true149, %ioc_bb155
  %cmp162 = icmp eq i32 %36, 0
  br i1 %cmp162, label %if.then164, label %if.end205

if.then164:                                       ; preds = %land.lhs.true161
  %arrayidx165 = getelementptr inbounds i8* %33, i32 1
  %39 = load i8* %arrayidx165, align 1, !tbaa !1
  %conv166 = zext i8 %39 to i32
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv166, i32 110)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb168, label %land.lhs.true174

ioc_bb168:                                        ; preds = %if.then164
  %43 = zext i8 %39 to i64
  call void @__ioc_report_sub_overflow(i32 2218, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %43, i64 110, i8 13) nounwind
  br label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.then164, %ioc_bb168
  %cmp175 = icmp eq i32 %41, 0
  br i1 %cmp175, label %if.then177, label %if.end205

if.then177:                                       ; preds = %land.lhs.true174
  %arrayidx178 = getelementptr inbounds i8* %33, i32 2
  %44 = load i8* %arrayidx178, align 1, !tbaa !1
  %conv179 = zext i8 %44 to i32
  br label %cond.end201

cond.false199:                                    ; preds = %cont141
  %call200 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %cond.end201

cond.end201:                                      ; preds = %if.then177, %cond.false199
  %cond202 = phi i32 [ %call200, %cond.false199 ], [ %conv179, %if.then177 ]
  %tobool203 = icmp eq i32 %cond202, 0
  br i1 %tobool203, label %if.end546, label %if.end205

if.end205:                                        ; preds = %cond.end201, %land.lhs.true174, %land.lhs.true161
  %45 = load i8** %s, align 4, !tbaa !3
  %46 = load i8* %45, align 1, !tbaa !1
  %tobool207 = icmp eq i8 %46, 0
  br i1 %tobool207, label %if.end546, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %if.end205
  %arrayidx209 = getelementptr inbounds i8* %45, i32 1
  %47 = load i8* %arrayidx209, align 1, !tbaa !1
  %tobool210 = icmp eq i8 %47, 0
  br i1 %tobool210, label %if.end546, label %if.end212

if.end212:                                        ; preds = %lor.lhs.false208
  br i1 %tobool, label %if.then214, label %if.end243

if.then214:                                       ; preds = %if.end212
  %48 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %getnode = getelementptr inbounds %struct.hashtable* %48, i32 0, i32 9
  %49 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !3
  %call215 = call %struct.hashnode* %49(%struct.hashtable* %48, i8* %45) nounwind
  %tobool216 = icmp eq %struct.hashnode* %call215, null
  br i1 %tobool216, label %lor.lhs.false217, label %if.end546

lor.lhs.false217:                                 ; preds = %if.then214
  %50 = load %struct.hashtable** @builtintab, align 4, !tbaa !3
  %getnode218 = getelementptr inbounds %struct.hashtable* %50, i32 0, i32 9
  %51 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode218, align 4, !tbaa !3
  %52 = load i8** %s, align 4, !tbaa !3
  %call219 = call %struct.hashnode* %51(%struct.hashtable* %50, i8* %52) nounwind
  %tobool220 = icmp eq %struct.hashnode* %call219, null
  br i1 %tobool220, label %lor.lhs.false221, label %if.end546

lor.lhs.false221:                                 ; preds = %lor.lhs.false217
  %53 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !3
  %getnode222 = getelementptr inbounds %struct.hashtable* %53, i32 0, i32 9
  %54 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode222, align 4, !tbaa !3
  %55 = load i8** %s, align 4, !tbaa !3
  %call223 = call %struct.hashnode* %54(%struct.hashtable* %53, i8* %55) nounwind
  %tobool224 = icmp eq %struct.hashnode* %call223, null
  br i1 %tobool224, label %lor.lhs.false225, label %if.end546

lor.lhs.false225:                                 ; preds = %lor.lhs.false221
  %56 = load %struct.hashtable** @aliastab, align 4, !tbaa !3
  %getnode226 = getelementptr inbounds %struct.hashtable* %56, i32 0, i32 9
  %57 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode226, align 4, !tbaa !3
  %58 = load i8** %s, align 4, !tbaa !3
  %call227 = call %struct.hashnode* %57(%struct.hashtable* %56, i8* %58) nounwind
  %tobool228 = icmp eq %struct.hashnode* %call227, null
  br i1 %tobool228, label %lor.lhs.false229, label %if.end546

lor.lhs.false229:                                 ; preds = %lor.lhs.false225
  %59 = load %struct.hashtable** @reswdtab, align 4, !tbaa !3
  %getnode230 = getelementptr inbounds %struct.hashtable* %59, i32 0, i32 9
  %60 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode230, align 4, !tbaa !3
  %61 = load i8** %s, align 4, !tbaa !3
  %call231 = call %struct.hashnode* %60(%struct.hashtable* %59, i8* %61) nounwind
  %tobool232 = icmp eq %struct.hashnode* %call231, null
  br i1 %tobool232, label %if.else, label %if.end546

if.else:                                          ; preds = %lor.lhs.false229
  %62 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 65), align 1, !tbaa !1
  %tobool234 = icmp eq i8 %62, 0
  br i1 %tobool234, label %if.end243, label %if.then235

if.then235:                                       ; preds = %if.else
  %63 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !3
  %filltable = getelementptr inbounds %struct.hashtable* %63, i32 0, i32 6
  %64 = load void (%struct.hashtable*)** %filltable, align 4, !tbaa !3
  call void %64(%struct.hashtable* %63) nounwind
  %65 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !3
  %getnode236 = getelementptr inbounds %struct.hashtable* %65, i32 0, i32 9
  %66 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode236, align 4, !tbaa !3
  %67 = load i8** %s, align 4, !tbaa !3
  %call237 = call %struct.hashnode* %66(%struct.hashtable* %65, i8* %67) nounwind
  %tobool238 = icmp eq %struct.hashnode* %call237, null
  br i1 %tobool238, label %if.end243, label %if.end546

if.end243:                                        ; preds = %if.then235, %if.else, %if.end212
  %68 = load i8** %s, align 4, !tbaa !3
  %69 = load i8* %68, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2232, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp247 = icmp eq i8 %69, -106
  br i1 %cmp247, label %if.then261, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %if.end243
  %70 = load i8* %68, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2232, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp253 = icmp eq i8 %70, -117
  br i1 %cmp253, label %if.then261, label %lor.lhs.false255

lor.lhs.false255:                                 ; preds = %lor.lhs.false249
  %71 = load i8* %68, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2232, i32 76, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp259 = icmp eq i8 %71, -123
  br i1 %cmp259, label %if.then261, label %for.cond

if.then261:                                       ; preds = %lor.lhs.false255, %lor.lhs.false249, %if.end243
  %incdec.ptr = getelementptr inbounds i8* %68, i32 1
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false255, %if.then261, %cont265
  %t.0 = phi i8* [ %incdec.ptr276, %cont265 ], [ %68, %lor.lhs.false255 ], [ %incdec.ptr, %if.then261 ]
  %72 = load i8* %t.0, align 1, !tbaa !1
  %tobool263 = icmp eq i8 %72, 0
  br i1 %tobool263, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %73 = icmp sgt i8 %72, -1
  br i1 %73, label %cont265, label %ioc_bb264

ioc_bb264:                                        ; preds = %for.body
  %74 = sext i8 %72 to i64
  call void @__ioc_report_conversion(i32 2235, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %74, i8 1) nounwind
  br label %cont265

cont265:                                          ; preds = %ioc_bb264, %for.body
  %idxprom = zext i8 %72 to i32
  %arrayidx266 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %75 = load i16* %arrayidx266, align 2, !tbaa !5
  %and272 = and i16 %75, 16
  %tobool273 = icmp eq i16 %and272, 0
  %incdec.ptr276 = getelementptr inbounds i8* %t.0, i32 1
  br i1 %tobool273, label %for.cond, label %if.end546

for.end:                                          ; preds = %for.cond
  store i8* null, i8** @best, align 4, !tbaa !3
  %76 = load i8** %s, align 4, !tbaa !3
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc285, %for.end
  %t.1 = phi i8* [ %76, %for.end ], [ %incdec.ptr286, %for.inc285 ]
  %77 = load i8* %t.1, align 1, !tbaa !1
  switch i8 %77, label %for.inc285 [
    i8 0, label %for.end287
    i8 47, label %for.end287
  ]

for.inc285:                                       ; preds = %for.cond277
  %incdec.ptr286 = getelementptr inbounds i8* %t.1, i32 1
  br label %for.cond277

for.end287:                                       ; preds = %for.cond277, %for.cond277
  %78 = load i8* %76, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2241, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp291 = icmp eq i8 %78, -106
  br i1 %cmp291, label %land.lhs.true293, label %if.end296

land.lhs.true293:                                 ; preds = %for.end287
  %79 = load i8* %t.1, align 1, !tbaa !1
  %tobool294 = icmp eq i8 %79, 0
  br i1 %tobool294, label %if.end546, label %if.end296

if.end296:                                        ; preds = %land.lhs.true293, %for.end287
  %call297 = call i8* @getsparam(i8* getelementptr inbounds ([15 x i8]* @.str48, i32 0, i32 0)) nounwind
  %cmp298 = icmp eq i8* %call297, null
  br i1 %cmp298, label %if.end304, label %if.then300

if.then300:                                       ; preds = %if.end296
  %call301 = call i8* @dupstring(i8* %call297) nounwind
  call void @tokenize(i8* %call301) nounwind
  call void @remnulargs(i8* %call301) nounwind
  %call302 = call %struct.patprog* @patcompile(i8* %call301, i32 0, i8** null) nounwind
  br label %if.end304

if.end304:                                        ; preds = %if.end296, %if.then300
  %storemerge = phi %struct.patprog* [ %call302, %if.then300 ], [ null, %if.end296 ]
  store %struct.patprog* %storemerge, %struct.patprog** @spckpat, align 4
  %80 = load i8** %s, align 4, !tbaa !3
  %81 = load i8* %80, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2250, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp308 = icmp eq i8 %81, -123
  br i1 %cmp308, label %land.lhs.true310, label %if.else325

land.lhs.true310:                                 ; preds = %if.end304
  %82 = load i8* %t.1, align 1, !tbaa !1
  %tobool311 = icmp eq i8 %82, 0
  br i1 %tobool311, label %if.then312, label %if.else325

if.then312:                                       ; preds = %land.lhs.true310
  %83 = load i8** %s, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %83, i32 1
  store i8* %add.ptr, i8** @guess, align 4, !tbaa !3
  %call317 = call i8* @itype_end(i8* %add.ptr, i32 128, i32 1)
  %84 = load i8** @guess, align 4, !tbaa !3
  %cmp318 = icmp eq i8* %call317, %84
  br i1 %cmp318, label %if.end546, label %ioc_bb322

ioc_bb322:                                        ; preds = %if.then312
  call void @__ioc_report_conversion(i32 2254, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 133, i8 1) nounwind
  store i32 100, i32* @d, align 4, !tbaa !0
  %85 = load %struct.hashtable** @paramtab, align 4, !tbaa !3
  %call324 = call i32 @scanhashtable(%struct.hashtable* %85, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  br label %if.end410

if.else325:                                       ; preds = %land.lhs.true310, %if.end304
  %86 = load i8** %s, align 4, !tbaa !3
  %87 = load i8* %86, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2258, i32 33, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp329 = icmp eq i8 %87, -117
  br i1 %cmp329, label %if.then331, label %if.else344

if.then331:                                       ; preds = %if.else325
  %88 = load i8* %t.1, align 1, !tbaa !1
  %tobool332 = icmp eq i8 %88, 0
  br i1 %tobool332, label %if.end334, label %if.end546

if.end334:                                        ; preds = %if.then331
  %89 = load i8** %s, align 4, !tbaa !3
  %add.ptr335 = getelementptr inbounds i8* %89, i32 1
  store i8* %add.ptr335, i8** @guess, align 4, !tbaa !3
  %90 = load i8*** @pathchecked, align 4, !tbaa !3
  %call336 = call %struct.cmdnam* @hashcmd(i8* %add.ptr335, i8** %90) nounwind
  %tobool337 = icmp eq %struct.cmdnam* %call336, null
  br i1 %tobool337, label %if.end339, label %if.end546

if.end339:                                        ; preds = %if.end334
  store i32 100, i32* @d, align 4, !tbaa !0
  call void @__ioc_report_conversion(i32 2264, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 139, i8 1) nounwind
  %91 = load %struct.hashtable** @aliastab, align 4, !tbaa !3
  %call342 = call i32 @scanhashtable(%struct.hashtable* %91, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  %92 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !3
  %call343 = call i32 @scanhashtable(%struct.hashtable* %92, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  br label %if.end410

if.else344:                                       ; preds = %if.else325
  %93 = load i8** %s, align 4, !tbaa !3
  store i8* %93, i8** @guess, align 4, !tbaa !3
  %94 = load i8* %93, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2270, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp348 = icmp eq i8 %94, -106
  br i1 %cmp348, label %if.then356, label %lor.lhs.false350

lor.lhs.false350:                                 ; preds = %if.else344
  %95 = load i8** @guess, align 4, !tbaa !3
  %96 = load i8* %95, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2270, i32 60, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp354 = icmp eq i8 %96, -123
  br i1 %cmp354, label %if.then356, label %if.end371

if.then356:                                       ; preds = %lor.lhs.false350, %if.else344
  %97 = load i8** @guess, align 4, !tbaa !3
  %98 = load i8* %97, align 1, !tbaa !1
  %incdec.ptr357 = getelementptr inbounds i8* %t.1, i32 1
  %99 = load i8* %incdec.ptr357, align 1, !tbaa !1
  %tobool358 = icmp eq i8 %99, 0
  br i1 %tobool358, label %if.end546, label %if.end360

if.end360:                                        ; preds = %if.then356
  %call361 = call i8* @dupstring(i8* %97) nounwind
  store i8* %call361, i8** @guess, align 4, !tbaa !3
  %100 = load i32* @noerrs, align 4, !tbaa !0
  store i32 2, i32* @noerrs, align 4, !tbaa !0
  call void @singsub(i8** @guess) nounwind
  store i32 %100, i32* @noerrs, align 4, !tbaa !0
  %101 = load i8** @guess, align 4, !tbaa !3
  %tobool362 = icmp eq i8* %101, null
  br i1 %tobool362, label %if.end546, label %if.end364

if.end364:                                        ; preds = %if.end360
  %call365 = call i32 @strlen(i8* %101) nounwind readonly
  %call366 = call i32 @strlen(i8* %incdec.ptr357) nounwind readonly
  %102 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call365, i32 %call366)
  %103 = extractvalue { i32, i1 } %102, 0
  %104 = extractvalue { i32, i1 } %102, 1
  br i1 %104, label %ioc_bb367, label %cont368

ioc_bb367:                                        ; preds = %if.end364
  %105 = zext i32 %call366 to i64
  %106 = zext i32 %call365 to i64
  call void @__ioc_report_sub_overflow(i32 2281, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %106, i64 %105, i8 5) nounwind
  br label %cont368

cont368:                                          ; preds = %if.end364, %ioc_bb367
  %107 = icmp sgt i32 %103, -1
  br i1 %107, label %if.end371, label %ioc_bb369

ioc_bb369:                                        ; preds = %cont368
  %108 = zext i32 %103 to i64
  call void @__ioc_report_conversion(i32 2281, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %108, i8 0) nounwind
  br label %if.end371

if.end371:                                        ; preds = %cont368, %lor.lhs.false350, %ioc_bb369
  %preflen.0 = phi i32 [ %103, %ioc_bb369 ], [ 0, %lor.lhs.false350 ], [ %103, %cont368 ]
  %ic.0 = phi i8 [ %98, %ioc_bb369 ], [ 0, %lor.lhs.false350 ], [ %98, %cont368 ]
  %t.2 = phi i8* [ %incdec.ptr357, %ioc_bb369 ], [ %t.1, %lor.lhs.false350 ], [ %incdec.ptr357, %cont368 ]
  %109 = load i8** @guess, align 4, !tbaa !3
  %call372 = call i8* @unmeta(i8* %109)
  %call373 = call i32 @access(i8* %call372, i32 0) nounwind
  %cmp374 = icmp eq i32 %call373, 0
  br i1 %cmp374, label %if.end546, label %if.end377

if.end377:                                        ; preds = %if.end371
  %110 = load i8** @guess, align 4, !tbaa !3
  %111 = getelementptr inbounds [4097 x i8]* %spnameguess.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %111) nounwind
  %112 = getelementptr inbounds [4097 x i8]* %spnamebest.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %112) nounwind
  %add.ptr.i = getelementptr inbounds [4097 x i8]* %spnameguess.i, i32 0, i32 4096
  %sub.ptr.rhs.cast.i = ptrtoint [4097 x i8]* %spnameguess.i to i32
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %for.cond66.preheader.i, %for.body68.i, %if.end377
  %new.0.ph.i = phi i8* [ getelementptr inbounds ([4097 x i8]* @spname.newname, i32 0, i32 0), %if.end377 ], [ %new.0.lcssa.i, %for.cond66.preheader.i ], [ %incdec.ptr69.i, %for.body68.i ]
  %old.0.ph.i = phi i8* [ %110, %if.end377 ], [ %old.1.i, %for.cond66.preheader.i ], [ %old.1.i, %for.body68.i ]
  %bestdist.0.ph.i = phi i32 [ 0, %if.end377 ], [ %130, %for.cond66.preheader.i ], [ %130, %for.body68.i ]
  %maxthresh.0.ph.i = phi i32 [ 0, %if.end377 ], [ %125, %for.cond66.preheader.i ], [ %125, %for.body68.i ]
  %113 = load i8* %old.0.ph.i, align 1, !tbaa !1
  %cmp97.i = icmp eq i8 %113, 47
  br i1 %cmp97.i, label %while.body.i, label %cont10.i

while.body.i:                                     ; preds = %while.cond.outer.i, %if.end.i
  %old.099.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %old.0.ph.i, %while.cond.outer.i ]
  %new.098.i = phi i8* [ %incdec.ptr8.i, %if.end.i ], [ %new.0.ph.i, %while.cond.outer.i ]
  %sub.ptr.lhs.cast.i = ptrtoint i8* %new.098.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint ([4097 x i8]* @spname.newname to i32)
  %114 = icmp sgt i32 %sub.ptr.sub.i, -1
  br i1 %114, label %cont5.i, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %while.body.i
  %115 = sext i32 %sub.ptr.sub.i to i64
  call void @__ioc_report_conversion(i32 3357, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %115, i8 1) nounwind
  br label %cont5.i

cont5.i:                                          ; preds = %ioc_bb.i, %while.body.i
  %cmp6.i = icmp ugt i32 %sub.ptr.sub.i, 4095
  br i1 %cmp6.i, label %spname.exit, label %if.end.i

if.end.i:                                         ; preds = %cont5.i
  %incdec.ptr.i = getelementptr inbounds i8* %old.099.i, i32 1
  %116 = load i8* %old.099.i, align 1, !tbaa !1
  %incdec.ptr8.i = getelementptr inbounds i8* %new.098.i, i32 1
  store i8 %116, i8* %new.098.i, align 1, !tbaa !1
  %117 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %117, 47
  br i1 %cmp.i, label %while.body.i, label %cont10.i

cont10.i:                                         ; preds = %if.end.i, %while.cond.outer.i
  %old.0.lcssa.i = phi i8* [ %old.0.ph.i, %while.cond.outer.i ], [ %incdec.ptr.i, %if.end.i ]
  %new.0.lcssa.i = phi i8* [ %new.0.ph.i, %while.cond.outer.i ], [ %incdec.ptr8.i, %if.end.i ]
  store i8 0, i8* %new.0.lcssa.i, align 1, !tbaa !1
  %118 = load i8* %old.0.lcssa.i, align 1, !tbaa !1
  %cmp12.i = icmp eq i8 %118, 0
  br i1 %cmp12.i, label %spname.exit, label %for.cond16.i

for.cond16.i:                                     ; preds = %cont10.i, %for.inc.i
  %119 = phi i8 [ %.pre.i, %for.inc.i ], [ %118, %cont10.i ]
  %p.0.i = phi i8* [ %p.1.i, %for.inc.i ], [ %111, %cont10.i ]
  %old.1.i = phi i8* [ %incdec.ptr29.i, %for.inc.i ], [ %old.0.lcssa.i, %cont10.i ]
  switch i8 %119, label %for.body.i [
    i8 47, label %cont31.i
    i8 0, label %cont31.i
  ]

for.body.i:                                       ; preds = %for.cond16.i
  %cmp24.i = icmp ult i8* %p.0.i, %add.ptr.i
  br i1 %cmp24.i, label %if.then26.i, label %for.inc.i

if.then26.i:                                      ; preds = %for.body.i
  %incdec.ptr27.i = getelementptr inbounds i8* %p.0.i, i32 1
  store i8 %119, i8* %p.0.i, align 1, !tbaa !1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then26.i, %for.body.i
  %p.1.i = phi i8* [ %incdec.ptr27.i, %if.then26.i ], [ %p.0.i, %for.body.i ]
  %incdec.ptr29.i = getelementptr inbounds i8* %old.1.i, i32 1
  %.pre.i = load i8* %incdec.ptr29.i, align 1, !tbaa !1
  br label %for.cond16.i

cont31.i:                                         ; preds = %for.cond16.i, %for.cond16.i
  store i8 0, i8* %p.0.i, align 1, !tbaa !1
  %sub.ptr.lhs.cast33.i = ptrtoint i8* %p.0.i to i32
  %sub.ptr.sub34.i = sub i32 %sub.ptr.lhs.cast33.i, %sub.ptr.rhs.cast.i
  %div.i = sdiv i32 %sub.ptr.sub34.i, 4
  %120 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div.i, i32 1) nounwind
  %121 = extractvalue { i32, i1 } %120, 0
  %122 = extractvalue { i32, i1 } %120, 1
  br i1 %122, label %ioc_bb37.i, label %cont38.i

ioc_bb37.i:                                       ; preds = %cont31.i
  %123 = sext i32 %div.i to i64
  call void @__ioc_report_add_overflow(i32 3371, i32 44, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %123, i64 1, i8 13) nounwind
  br label %cont38.i

cont38.i:                                         ; preds = %ioc_bb37.i, %cont31.i
  %cmp39.i = icmp slt i32 %121, 3
  br i1 %cmp39.i, label %if.end46.i, label %if.else.i

if.else.i:                                        ; preds = %cont38.i
  %cmp42.i = icmp sgt i32 %121, 100
  %..i = select i1 %cmp42.i, i32 100, i32 %121
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %cont38.i
  %thresh.0.i = phi i32 [ 3, %cont38.i ], [ %..i, %if.else.i ]
  %call.i = call fastcc i32 @mindist(i8* getelementptr inbounds ([4097 x i8]* @spname.newname, i32 0, i32 0), i8* %111, i8* %112) nounwind
  %cmp49.i = icmp slt i32 %call.i, %thresh.0.i
  br i1 %cmp49.i, label %if.else59.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end46.i
  %cmp52.i = icmp slt i32 %bestdist.0.ph.i, %maxthresh.0.ph.i
  br i1 %cmp52.i, label %if.then54.i, label %spname.exit

if.then54.i:                                      ; preds = %if.then51.i
  %call56.i = call i8* @strcpy(i8* %new.0.lcssa.i, i8* %111) nounwind
  %call57.i = call i8* @strcat(i8* %new.0.lcssa.i, i8* %old.1.i) nounwind
  br label %spname.exit

if.else59.i:                                      ; preds = %if.end46.i
  %124 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bestdist.0.ph.i, i32 %thresh.0.i) nounwind
  %125 = extractvalue { i32, i1 } %124, 0
  %126 = extractvalue { i32, i1 } %124, 1
  %127 = sext i32 %bestdist.0.ph.i to i64
  br i1 %126, label %ioc_bb60.i, label %cont61.i

ioc_bb60.i:                                       ; preds = %if.else59.i
  %128 = sext i32 %thresh.0.i to i64
  call void @__ioc_report_add_overflow(i32 3393, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %127, i64 %128, i8 13) nounwind
  br label %cont61.i

cont61.i:                                         ; preds = %ioc_bb60.i, %if.else59.i
  %129 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bestdist.0.ph.i, i32 %call.i) nounwind
  %130 = extractvalue { i32, i1 } %129, 0
  %131 = extractvalue { i32, i1 } %129, 1
  br i1 %131, label %ioc_bb62.i, label %for.cond66.preheader.i

ioc_bb62.i:                                       ; preds = %cont61.i
  %132 = sext i32 %call.i to i64
  call void @__ioc_report_add_overflow(i32 3394, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %127, i64 %132, i8 13) nounwind
  br label %for.cond66.preheader.i

for.cond66.preheader.i:                           ; preds = %ioc_bb62.i, %cont61.i
  %133 = load i8* %112, align 1, !tbaa !1
  store i8 %133, i8* %new.0.lcssa.i, align 1, !tbaa !1
  %tobool92.i = icmp eq i8 %133, 0
  br i1 %tobool92.i, label %while.cond.outer.i, label %for.body68.i

for.body68.i:                                     ; preds = %for.cond66.preheader.i, %for.body68.i
  %new.194.i = phi i8* [ %incdec.ptr69.i, %for.body68.i ], [ %new.0.lcssa.i, %for.cond66.preheader.i ]
  %p.293.i = phi i8* [ %incdec.ptr67.i, %for.body68.i ], [ %112, %for.cond66.preheader.i ]
  %incdec.ptr67.i = getelementptr inbounds i8* %p.293.i, i32 1
  %incdec.ptr69.i = getelementptr inbounds i8* %new.194.i, i32 1
  %134 = load i8* %incdec.ptr67.i, align 1, !tbaa !1
  store i8 %134, i8* %incdec.ptr69.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %134, 0
  br i1 %tobool.i, label %while.cond.outer.i, label %for.body68.i

spname.exit:                                      ; preds = %cont10.i, %cont5.i, %if.then51.i, %if.then54.i
  %retval.0.i = phi i8* [ getelementptr inbounds ([4097 x i8]* @spname.newname, i32 0, i32 0), %if.then54.i ], [ null, %if.then51.i ], [ null, %cont5.i ], [ getelementptr inbounds ([4097 x i8]* @spname.newname, i32 0, i32 0), %cont10.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %111) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %112) nounwind
  store i8* %retval.0.i, i8** @best, align 4, !tbaa !3
  %135 = load i8* %t.2, align 1, !tbaa !1
  %tobool379.not = icmp ne i8 %135, 0
  %brmerge = or i1 %tobool379.not, %tobool.not
  br i1 %brmerge, label %if.end410, label %if.then382

if.then382:                                       ; preds = %spname.exit
  %136 = load i8** @guess, align 4, !tbaa !3
  %137 = load i8*** @pathchecked, align 4, !tbaa !3
  %call383 = call %struct.cmdnam* @hashcmd(i8* %136, i8** %137) nounwind
  %tobool384 = icmp eq %struct.cmdnam* %call383, null
  br i1 %tobool384, label %if.end386, label %if.end546

if.end386:                                        ; preds = %if.then382
  store i32 100, i32* @d, align 4, !tbaa !0
  %138 = load %struct.hashtable** @reswdtab, align 4, !tbaa !3
  %call387 = call i32 @scanhashtable(%struct.hashtable* %138, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  %139 = load %struct.hashtable** @aliastab, align 4, !tbaa !3
  %call388 = call i32 @scanhashtable(%struct.hashtable* %139, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  %140 = load %struct.hashtable** @shfunctab, align 4, !tbaa !3
  %call389 = call i32 @scanhashtable(%struct.hashtable* %140, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  %141 = load %struct.hashtable** @builtintab, align 4, !tbaa !3
  %call390 = call i32 @scanhashtable(%struct.hashtable* %141, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  %142 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !3
  %call391 = call i32 @scanhashtable(%struct.hashtable* %142, i32 1, i32 0, i32 0, void (%struct.hashnode*, i32)* @spscan, i32 0) nounwind
  br i1 %26, label %if.then393, label %if.end410

if.then393:                                       ; preds = %if.end386
  %143 = load i8*** @cdpath, align 4, !tbaa !3
  %144 = load i8** %143, align 4, !tbaa !3
  %tobool395658 = icmp eq i8* %144, null
  br i1 %tobool395658, label %if.end410, label %for.body396.lr.ph

for.body396.lr.ph:                                ; preds = %if.then393
  %arraydecay = getelementptr inbounds [4097 x i8]* %bestcd, i32 0, i32 0
  br label %for.body396

for.body396:                                      ; preds = %for.body396.lr.ph, %for.inc404
  %145 = phi i8* [ %144, %for.body396.lr.ph ], [ %148, %for.inc404 ]
  %pp.0659 = phi i8** [ %143, %for.body396.lr.ph ], [ %incdec.ptr405, %for.inc404 ]
  %146 = load i8** %s, align 4, !tbaa !3
  %call397 = call fastcc i32 @mindist(i8* %145, i8* %146, i8* %arraydecay)
  %147 = load i32* @d, align 4, !tbaa !0
  %cmp398 = icmp slt i32 %call397, %147
  br i1 %cmp398, label %if.then400, label %for.inc404

if.then400:                                       ; preds = %for.body396
  %call402 = call i8* @dupstring(i8* %arraydecay) nounwind
  store i8* %call402, i8** @best, align 4, !tbaa !3
  store i32 %call397, i32* @d, align 4, !tbaa !0
  br label %for.inc404

for.inc404:                                       ; preds = %for.body396, %if.then400
  %incdec.ptr405 = getelementptr inbounds i8** %pp.0659, i32 1
  %148 = load i8** %incdec.ptr405, align 4, !tbaa !3
  %tobool395 = icmp eq i8* %148, null
  br i1 %tobool395, label %if.end410, label %for.body396

if.end410:                                        ; preds = %if.then393, %for.inc404, %if.end386, %spname.exit, %if.end339, %ioc_bb322
  %preflen.1 = phi i32 [ 0, %if.end339 ], [ %preflen.0, %spname.exit ], [ 0, %ioc_bb322 ], [ %preflen.0, %if.end386 ], [ %preflen.0, %for.inc404 ], [ %preflen.0, %if.then393 ]
  %ic.1 = phi i8 [ -117, %if.end339 ], [ %ic.0, %spname.exit ], [ -123, %ioc_bb322 ], [ %ic.0, %if.end386 ], [ %ic.0, %for.inc404 ], [ %ic.0, %if.then393 ]
  %t.3 = phi i8* [ %t.1, %if.end339 ], [ %t.2, %spname.exit ], [ %t.1, %ioc_bb322 ], [ %t.2, %if.end386 ], [ %t.2, %for.inc404 ], [ %t.2, %if.then393 ]
  %149 = load i32* @errflag, align 4, !tbaa !0
  %tobool411 = icmp eq i32 %149, 0
  %150 = load i8** @best, align 4, !tbaa !3
  %tobool414 = icmp ne i8* %150, null
  %or.cond = and i1 %tobool411, %tobool414
  br i1 %or.cond, label %land.lhs.true415, label %if.end546

land.lhs.true415:                                 ; preds = %if.end410
  %call416 = call i32 @strlen(i8* %150) nounwind readonly
  %151 = icmp sgt i32 %call416, -1
  br i1 %151, label %cont419, label %cont419.thread

cont419.thread:                                   ; preds = %land.lhs.true415
  %152 = zext i32 %call416 to i64
  call void @__ioc_report_conversion(i32 2314, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %152, i8 0) nounwind
  br label %if.end546

cont419:                                          ; preds = %land.lhs.true415
  %cmp420 = icmp sgt i32 %call416, 1
  br i1 %cmp420, label %land.lhs.true422, label %if.end546

land.lhs.true422:                                 ; preds = %cont419
  %153 = load i8** @guess, align 4, !tbaa !3
  %call425 = call i32 @strcmp(i8* %150, i8* %153) nounwind
  %tobool426 = icmp eq i32 %call425, 0
  br i1 %tobool426, label %if.end546, label %if.then427

if.then427:                                       ; preds = %land.lhs.true422
  %tobool428 = icmp ne i8 %ic.1, 0
  br i1 %tobool428, label %if.then429, label %if.end494

if.then429:                                       ; preds = %if.then427
  %tobool430 = icmp eq i32 %preflen.1, 0
  br i1 %tobool430, label %if.else478, label %cond.false445

cond.false445:                                    ; preds = %if.then429
  %154 = icmp sgt i32 %preflen.1, -1
  br i1 %154, label %cont448, label %ioc_bb447

ioc_bb447:                                        ; preds = %cond.false445
  %155 = sext i32 %preflen.1 to i64
  call void @__ioc_report_conversion(i32 2319, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %155, i8 1) nounwind
  br label %cont448

cont448:                                          ; preds = %ioc_bb447, %cond.false445
  %call449 = call i32 @strncmp(i8* %153, i8* %150, i32 %preflen.1) nounwind readonly
  %tobool450 = icmp eq i32 %call449, 0
  br i1 %tobool450, label %if.end452, label %if.end546

if.end452:                                        ; preds = %cont448
  %156 = load i8** %s, align 4, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %t.3 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %156 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %157 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %157, label %cont455, label %ioc_bb454

ioc_bb454:                                        ; preds = %if.end452
  %158 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 2322, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %158, i8 1) nounwind
  br label %cont455

cont455:                                          ; preds = %if.end452, %ioc_bb454
  %159 = load i8** @best, align 4, !tbaa !3
  %add.ptr456 = getelementptr inbounds i8* %159, i32 %preflen.1
  %call457 = call i32 @strlen(i8* %add.ptr456) nounwind readonly
  %160 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %call457)
  %161 = extractvalue { i32, i1 } %160, 0
  %162 = extractvalue { i32, i1 } %160, 1
  br i1 %162, label %ioc_bb458, label %cont461

ioc_bb458:                                        ; preds = %cont455
  %163 = zext i32 %call457 to i64
  %164 = zext i32 %sub.ptr.sub to i64
  call void @__ioc_report_add_overflow(i32 2322, i32 41, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %164, i64 %163, i8 5) nounwind
  br label %cont461

cont461:                                          ; preds = %ioc_bb458, %cont455
  %165 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %161, i32 1)
  %166 = extractvalue { i32, i1 } %165, 0
  %167 = extractvalue { i32, i1 } %165, 1
  br i1 %167, label %ioc_bb462, label %cont463

ioc_bb462:                                        ; preds = %cont461
  %168 = zext i32 %161 to i64
  call void @__ioc_report_add_overflow(i32 2322, i32 68, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %168, i64 1, i8 5) nounwind
  br label %cont463

cont463:                                          ; preds = %cont461, %ioc_bb462
  %call464 = call i8* @hcalloc(i32 %166) nounwind
  %169 = load i8** %s, align 4, !tbaa !3
  %sub.ptr.rhs.cast466 = ptrtoint i8* %169 to i32
  %sub.ptr.sub467 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast466
  %170 = icmp sgt i32 %sub.ptr.sub467, -1
  br i1 %170, label %cont470, label %ioc_bb469

ioc_bb469:                                        ; preds = %cont463
  %171 = sext i32 %sub.ptr.sub467 to i64
  call void @__ioc_report_conversion(i32 2323, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %171, i8 1) nounwind
  br label %cont470

cont470:                                          ; preds = %ioc_bb469, %cont463
  %call471 = call i8* @strncpy(i8* %call464, i8* %169, i32 %sub.ptr.sub467) nounwind
  %172 = load i8** %s, align 4, !tbaa !3
  %sub.ptr.rhs.cast473 = ptrtoint i8* %172 to i32
  %sub.ptr.sub474 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast473
  %add.ptr475 = getelementptr inbounds i8* %call464, i32 %sub.ptr.sub474
  %173 = load i8** @best, align 4, !tbaa !3
  %add.ptr476 = getelementptr inbounds i8* %173, i32 %preflen.1
  %call477 = call i8* @strcpy(i8* %add.ptr475, i8* %add.ptr476) nounwind
  br label %if.end487

if.else478:                                       ; preds = %if.then429
  %call479 = call i32 @strlen(i8* %150) nounwind readonly
  %174 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call479, i32 2)
  %175 = extractvalue { i32, i1 } %174, 0
  %176 = extractvalue { i32, i1 } %174, 1
  br i1 %176, label %ioc_bb482, label %cont483

ioc_bb482:                                        ; preds = %if.else478
  %177 = zext i32 %call479 to i64
  call void @__ioc_report_add_overflow(i32 2327, i32 44, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %177, i64 2, i8 5) nounwind
  br label %cont483

cont483:                                          ; preds = %if.else478, %ioc_bb482
  %call484 = call i8* @hcalloc(i32 %175) nounwind
  %add.ptr485 = getelementptr inbounds i8* %call484, i32 1
  %178 = load i8** @best, align 4, !tbaa !3
  %call486 = call i8* @strcpy(i8* %add.ptr485, i8* %178) nounwind
  br label %if.end487

if.end487:                                        ; preds = %cont483, %cont470
  %u.0 = phi i8* [ %call464, %cont470 ], [ %call484, %cont483 ]
  store i8* %u.0, i8** @best, align 4, !tbaa !3
  %179 = load i8** %s, align 4, !tbaa !3
  store i8* %179, i8** @guess, align 4, !tbaa !3
  %conv488 = sext i8 %ic.1 to i32
  call void @__ioc_report_conversion(i32 2332, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 132, i8 1) nounwind
  %180 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv488, i32 -124)
  %181 = extractvalue { i32, i1 } %180, 0
  %182 = extractvalue { i32, i1 } %180, 1
  br i1 %182, label %ioc_bb491, label %cont492

ioc_bb491:                                        ; preds = %if.end487
  %183 = sext i8 %ic.1 to i64
  call void @__ioc_report_sub_overflow(i32 2332, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %183, i64 -124, i8 13) nounwind
  br label %cont492

cont492:                                          ; preds = %if.end487, %ioc_bb491
  %arrayidx493 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %181
  %184 = load i8* %arrayidx493, align 1, !tbaa !1
  %185 = load i8** @best, align 4, !tbaa !3
  store i8 %184, i8* %185, align 1, !tbaa !1
  %186 = load i8** @guess, align 4, !tbaa !3
  store i8 %184, i8* %186, align 1, !tbaa !1
  br label %if.end494

if.end494:                                        ; preds = %cont492, %if.then427
  %tobool495 = icmp eq i32 %ask, 0
  br i1 %tobool495, label %if.then526, label %if.then496

if.then496:                                       ; preds = %if.end494
  %187 = bitcast i32* %val.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %187) nounwind
  store i32 0, i32* %val.i, align 4, !tbaa !0
  %188 = load i32* @SHTTY, align 4, !tbaa !0
  %call.i652 = call i32 (i32, i32, ...)* @ioctl(i32 %188, i32 21531, i32* %val.i) nounwind
  %.pre.i653 = load i32* %val.i, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 -1, i8* %187) nounwind
  %tobool498 = icmp ne i32 %.pre.i653, 0
  %189 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %tobool501 = icmp eq %struct._IO_FILE* %189, null
  %or.cond651 = or i1 %tobool498, %tobool501
  br i1 %or.cond651, label %if.end542, label %if.then502

if.then502:                                       ; preds = %if.then496
  %190 = load i8** @sprompt, align 4, !tbaa !3
  %191 = load i8** @best, align 4, !tbaa !3
  %192 = load i8** @guess, align 4, !tbaa !3
  %call503 = call i8* @promptexpand(i8* %190, i32 0, i8* %191, i8* %192, i32* null) nounwind
  %193 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call504 = call i32 @zputs(i8* %call503, %struct._IO_FILE* %193)
  call void @free(i8* %call503) nounwind
  %194 = load %struct._IO_FILE** @shout, align 4, !tbaa !3
  %call505 = call i32 @fflush(%struct._IO_FILE* %194) nounwind
  call void @zbeep()
  %call506 = call i32 @getquery(i8* getelementptr inbounds ([7 x i8]* @.str49, i32 0, i32 0), i32 0)
  %cmp509 = icmp eq i32 %call506, 110
  %or.cond650 = and i1 %tobool, %cmp509
  br i1 %or.cond650, label %if.then511, label %if.end517

if.then511:                                       ; preds = %if.then502
  %195 = load i8*** @path, align 4, !tbaa !3
  store i8** %195, i8*** @pathchecked, align 4, !tbaa !3
  br label %if.end517

if.end517:                                        ; preds = %if.then502, %if.then511
  switch i32 %call506, label %if.end542 [
    i32 121, label %if.then526
    i32 32, label %if.then526
    i32 9, label %if.then526
    i32 97, label %if.then534
    i32 101, label %if.then538
  ]

if.then526:                                       ; preds = %if.end517, %if.end517, %if.end517, %if.end494
  %196 = load i8** @best, align 4, !tbaa !3
  %call527 = call i8* @dupstring(i8* %196) nounwind
  store i8* %call527, i8** %s, align 4, !tbaa !3
  %tobool528 = icmp eq i32 %hist, 0
  br i1 %tobool528, label %if.end542, label %if.then529

if.then529:                                       ; preds = %if.then526
  %197 = load i8** @best, align 4, !tbaa !3
  call void @hwrep(i8* %197) nounwind
  br label %if.end542

if.then534:                                       ; preds = %if.end517
  %198 = load i32* @histdone, align 4, !tbaa !0
  %or = or i32 %198, 2
  store i32 %or, i32* @histdone, align 4, !tbaa !0
  br label %if.end542

if.then538:                                       ; preds = %if.end517
  %199 = load i32* @histdone, align 4, !tbaa !0
  %or539 = or i32 %199, 6
  store i32 %or539, i32* @histdone, align 4, !tbaa !0
  br label %if.end542

if.end542:                                        ; preds = %if.then496, %if.end517, %if.then526, %if.then534, %if.then538, %if.then529
  br i1 %tobool428, label %if.then544, label %if.end546

if.then544:                                       ; preds = %if.end542
  %200 = load i8** %s, align 4, !tbaa !3
  store i8 %ic.1, i8* %200, align 1, !tbaa !1
  br label %if.end546

if.end546:                                        ; preds = %cont265, %cont419.thread, %lor.lhs.false, %lor.lhs.false, %if.then235, %lor.lhs.false229, %lor.lhs.false225, %lor.lhs.false221, %lor.lhs.false217, %if.then214, %land.lhs.true293, %if.end334, %if.then331, %if.end360, %if.then356, %if.then382, %cont448, %land.lhs.true422, %lor.lhs.false208, %if.end205, %cond.end201, %land.end, %if.end542, %if.then544, %if.end410, %if.end371, %if.then312, %cont419
  ret void
}

declare void @tokenize(i8*)

declare void @remnulargs(i8*)

declare %struct.patprog* @patcompile(i8*, i32, i8**)

define i8* @itype_end(i8* %ptr, i32 %itype, i32 %once) nounwind {
entry:
  %wc = alloca i32, align 4
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %for.cond.preheader, label %cont2

for.cond.preheader:                               ; preds = %cont2, %entry
  %tobool120 = icmp eq i32 %once, 0
  br label %for.cond

cont2:                                            ; preds = %entry
  %cmp = icmp eq i32 %itype, 128
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 123), align 1, !tbaa !1
  %tobool4 = icmp ne i8 %1, 0
  %or.cond = and i1 %cmp, %tobool4
  br i1 %or.cond, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %cont2
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %tobool77 = icmp eq i32 %once, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %if.then
  %ptr.addr.0 = phi i8* [ %ptr, %if.then ], [ %add.ptr, %if.end76 ]
  %2 = load i8* %ptr.addr.0, align 1, !tbaa !1
  %tobool5 = icmp eq i8 %2, 0
  br i1 %tobool5, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call i32 @mb_metacharlenconv(i8* %ptr.addr.0, i32* %wc)
  %tobool6 = icmp eq i32 %call, 0
  br i1 %tobool6, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %3 = load i32* %wc, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %3, -1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %4 = load i8* %ptr.addr.0, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 3241, i32 56, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp14 = icmp eq i8 %4, -125
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %arrayidx = getelementptr inbounds i8* %ptr.addr.0, i32 1
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %conv16 = sext i8 %5 to i32
  %xor = xor i32 %conv16, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %6 = load i8* %ptr.addr.0, align 1, !tbaa !1
  %conv17 = sext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv17, %cond.false ]
  %7 = icmp ult i32 %cond, 256
  br i1 %7, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cond.end
  %8 = sext i32 %cond to i64
  call void @__ioc_report_conversion(i32 3241, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cond.end
  %conv21 = and i32 %cond, 128
  %cmp22 = icmp ugt i32 %conv21, 127
  br i1 %cmp22, label %return, label %cont28

cont28:                                           ; preds = %cont19
  %idxprom = and i32 %cond, 255
  %arrayidx30 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %9 = load i16* %arrayidx30, align 2, !tbaa !5
  %conv31 = sext i16 %9 to i32
  %and = and i32 %conv31, %itype
  %tobool32 = icmp eq i32 %and, 0
  br i1 %tobool32, label %return, label %if.end76

if.else:                                          ; preds = %if.end
  %cmp35 = icmp eq i32 %call, 1
  br i1 %cmp35, label %land.lhs.true37, label %if.else53

land.lhs.true37:                                  ; preds = %if.else
  %10 = load i8* %ptr.addr.0, align 1, !tbaa !1
  %cmp40146 = icmp sgt i8 %10, -1
  br i1 %cmp40146, label %cont45, label %if.else53

cont45:                                           ; preds = %land.lhs.true37
  %idxprom46 = zext i8 %10 to i32
  %arrayidx47 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom46
  %11 = load i16* %arrayidx47, align 2, !tbaa !5
  %conv48 = sext i16 %11 to i32
  %and49 = and i32 %conv48, %itype
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %return, label %if.end76

if.else53:                                        ; preds = %land.lhs.true37, %if.else
  switch i32 %itype, label %sw.default [
    i32 1024, label %sw.bb
    i32 32, label %sw.bb63
  ]

sw.bb:                                            ; preds = %if.else53
  %call54 = call i32 @iswalnum(i32 %3) nounwind
  %tobool55 = icmp eq i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.end76

land.lhs.true56:                                  ; preds = %sw.bb
  %12 = load i32** getelementptr inbounds (%struct.widechar_array* @wordchars_wide, i32 0, i32 0), align 4, !tbaa !3
  %13 = load i32* %wc, align 4, !tbaa !0
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %cont58, label %ioc_bb57

ioc_bb57:                                         ; preds = %land.lhs.true56
  %15 = zext i32 %13 to i64
  call void @__ioc_report_conversion(i32 3258, i32 64, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %15, i8 0) nounwind
  br label %cont58

cont58:                                           ; preds = %ioc_bb57, %land.lhs.true56
  %16 = load i32* getelementptr inbounds (%struct.widechar_array* @wordchars_wide, i32 0, i32 1), align 4, !tbaa !0
  %call59 = call i32* @wmemchr(i32* %12, i32 %13, i32 %16) nounwind readonly
  %tobool60 = icmp eq i32* %call59, null
  br i1 %tobool60, label %return, label %if.end76

sw.bb63:                                          ; preds = %if.else53
  %17 = load i32** getelementptr inbounds (%struct.widechar_array* @ifs_wide, i32 0, i32 0), align 4, !tbaa !3
  %18 = icmp sgt i32 %3, -1
  br i1 %18, label %cont66, label %ioc_bb65

ioc_bb65:                                         ; preds = %sw.bb63
  %19 = zext i32 %3 to i64
  call void @__ioc_report_conversion(i32 3264, i32 41, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %19, i8 0) nounwind
  br label %cont66

cont66:                                           ; preds = %ioc_bb65, %sw.bb63
  %20 = load i32* getelementptr inbounds (%struct.widechar_array* @ifs_wide, i32 0, i32 1), align 4, !tbaa !0
  %call67 = call i32* @wmemchr(i32* %17, i32 %3, i32 %20) nounwind readonly
  %tobool68 = icmp eq i32* %call67, null
  br i1 %tobool68, label %return, label %if.end76

sw.default:                                       ; preds = %if.else53
  %call71 = call i32 @iswalnum(i32 %3) nounwind
  %tobool72 = icmp eq i32 %call71, 0
  br i1 %tobool72, label %return, label %if.end76

if.end76:                                         ; preds = %cont28, %cont45, %sw.default, %cont58, %sw.bb, %cont66
  %add.ptr = getelementptr inbounds i8* %ptr.addr.0, i32 %call
  br i1 %tobool77, label %while.cond, label %return

for.cond:                                         ; preds = %for.cond.preheader, %if.end112
  %ptr.addr.1 = phi i8* [ %add.ptr119, %if.end112 ], [ %ptr, %for.cond.preheader ]
  %21 = load i8* %ptr.addr.1, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 3281, i32 54, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp85 = icmp eq i8 %21, -125
  br i1 %cmp85, label %cond.true87, label %cond.false91

cond.true87:                                      ; preds = %for.cond
  %arrayidx88 = getelementptr inbounds i8* %ptr.addr.1, i32 1
  %22 = load i8* %arrayidx88, align 1, !tbaa !1
  %conv89 = sext i8 %22 to i32
  %xor90 = xor i32 %conv89, 32
  br label %cond.end93

cond.false91:                                     ; preds = %for.cond
  %23 = load i8* %ptr.addr.1, align 1, !tbaa !1
  %conv92 = sext i8 %23 to i32
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false91, %cond.true87
  %cond94 = phi i32 [ %xor90, %cond.true87 ], [ %conv92, %cond.false91 ]
  %24 = icmp ult i32 %cond94, 256
  br i1 %24, label %cont104, label %ioc_bb97

ioc_bb97:                                         ; preds = %cond.end93
  %25 = sext i32 %cond94 to i64
  call void @__ioc_report_conversion(i32 3281, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont104

cont104:                                          ; preds = %cond.end93, %ioc_bb97
  %idxprom106 = and i32 %cond94, 255
  %arrayidx107 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom106
  %26 = load i16* %arrayidx107, align 2, !tbaa !5
  %conv108 = sext i16 %26 to i32
  %and109 = and i32 %conv108, %itype
  %tobool110 = icmp eq i32 %and109, 0
  br i1 %tobool110, label %return, label %if.end112

if.end112:                                        ; preds = %cont104
  %27 = load i8* %ptr.addr.1, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 3284, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp116 = icmp eq i8 %27, -125
  %cond118 = select i1 %cmp116, i32 2, i32 1
  %add.ptr119 = getelementptr inbounds i8* %ptr.addr.1, i32 %cond118
  br i1 %tobool120, label %for.cond, label %return

return:                                           ; preds = %cont19, %while.cond, %while.body, %if.end76, %cont45, %cont28, %sw.default, %cont66, %cont58, %cont104, %if.end112
  %retval.0 = phi i8* [ %ptr.addr.1, %cont104 ], [ %add.ptr119, %if.end112 ], [ %ptr.addr.0, %cont19 ], [ %ptr.addr.0, %while.cond ], [ %ptr.addr.0, %while.body ], [ %add.ptr, %if.end76 ], [ %ptr.addr.0, %cont45 ], [ %ptr.addr.0, %cont28 ], [ %ptr.addr.0, %sw.default ], [ %ptr.addr.0, %cont66 ], [ %ptr.addr.0, %cont58 ]
  ret i8* %retval.0
}

define internal void @spscan(%struct.hashnode* nocapture %hn, i32 %scanflags) nounwind {
entry:
  %0 = load %struct.patprog** @spckpat, align 4, !tbaa !3
  %tobool = icmp eq %struct.patprog* %0, null
  %nam2.pre = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8** %nam2.pre, align 4, !tbaa !3
  %call = tail call i32 @pattry(%struct.patprog* %0, i8* %1) nounwind
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.end11

if.end:                                           ; preds = %entry, %land.lhs.true
  %2 = load i8** %nam2.pre, align 4, !tbaa !3
  %3 = load i8** @guess, align 4, !tbaa !3
  %call3 = tail call i32 @strlen(i8* %3) nounwind readonly
  %4 = icmp sgt i32 %call3, -1
  br i1 %4, label %cont5, label %ioc_bb

ioc_bb:                                           ; preds = %if.end
  %5 = zext i32 %call3 to i64
  tail call void @__ioc_report_conversion(i32 2197, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %cont5

cont5:                                            ; preds = %if.end, %ioc_bb
  %div = sdiv i32 %call3, 4
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  %9 = sext i32 %div to i64
  tail call void @__ioc_report_add_overflow(i32 2197, i32 59, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  %call8 = tail call fastcc i32 @spdist(i8* %2, i8* %3, i32 %7)
  %10 = load i32* @d, align 4, !tbaa !0
  %cmp = icmp sgt i32 %call8, %10
  br i1 %cmp, label %if.end11, label %if.then9

if.then9:                                         ; preds = %cont7
  %11 = load i8** %nam2.pre, align 4, !tbaa !3
  store i8* %11, i8** @best, align 4, !tbaa !3
  store i32 %call8, i32* @d, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %cont7, %if.then9
  ret void
}

declare %struct.cmdnam* @hashcmd(i8*, i8**)

declare void @singsub(i8**)

define internal fastcc i32 @mindist(i8* %dir, i8* %mindistguess, i8* %mindistbest) nounwind {
entry:
  %0 = load i8* %dir, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 0
  %.dir = select i1 %cmp, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* %dir
  %call = tail call i32 @strlen(i8* %.dir) nounwind readonly
  %call2 = tail call i32 @strlen(i8* %mindistguess) nounwind readonly
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 %call2)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont4

ioc_bb:                                           ; preds = %entry
  %4 = zext i32 %call2 to i64
  %5 = zext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 3412, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %5, i64 %4, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb, %entry
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 2)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %9 = zext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 3412, i32 52, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %9, i64 2, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %call7 = tail call i8* @zalloc(i32 %7) nounwind
  %call8 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call7, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* %.dir, i8* %mindistguess) nounwind
  %call9 = tail call i8* @unmeta(i8* %call7)
  %call10 = tail call i32 @access(i8* %call9, i32 0) nounwind
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %cont6
  %call14 = tail call i8* @strcpy(i8* %mindistbest, i8* %mindistguess) nounwind
  tail call void @free(i8* %call7) nounwind
  br label %return

if.end15:                                         ; preds = %cont6
  tail call void @free(i8* %call7) nounwind
  %call16 = tail call i8* @unmeta(i8* %.dir)
  %call17 = tail call %struct.__dirstream* @opendir(i8* %call16) nounwind
  %tobool = icmp eq %struct.__dirstream* %call17, null
  br i1 %tobool, label %return, label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end15, %if.then32
  %mindistd.0.ph = phi i32 [ %call29, %if.then32 ], [ 100, %if.end15 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %cont28
  %call26.i = tail call %struct.dirent* @readdir64(%struct.__dirstream* %call17) nounwind
  %tobool27.i = icmp eq %struct.dirent* %call26.i, null
  br i1 %tobool27.i, label %while.end, label %zreaddir.exit

zreaddir.exit:                                    ; preds = %while.cond
  %arraydecay.pre.i = getelementptr inbounds %struct.dirent* %call26.i, i32 0, i32 4, i32 0
  %call17.i = tail call i8* @metafy(i8* %arraydecay.pre.i, i32 -1, i32 2) nounwind
  %tobool21 = icmp eq i8* %call17.i, null
  br i1 %tobool21, label %while.end, label %while.body

while.body:                                       ; preds = %zreaddir.exit
  %call22 = tail call i32 @strlen(i8* %mindistguess) nounwind readonly
  %10 = icmp sgt i32 %call22, -1
  br i1 %10, label %cont26, label %ioc_bb23

ioc_bb23:                                         ; preds = %while.body
  %11 = zext i32 %call22 to i64
  tail call void @__ioc_report_conversion(i32 3423, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %11, i8 0) nounwind
  br label %cont26

cont26:                                           ; preds = %while.body, %ioc_bb23
  %div = sdiv i32 %call22, 4
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div, i32 1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb27, label %cont28

ioc_bb27:                                         ; preds = %cont26
  %15 = sext i32 %div to i64
  tail call void @__ioc_report_add_overflow(i32 3423, i32 68, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %15, i64 1, i8 13) nounwind
  br label %cont28

cont28:                                           ; preds = %cont26, %ioc_bb27
  %call29 = tail call fastcc i32 @spdist(i8* %call17.i, i8* %mindistguess, i32 %13)
  %cmp30 = icmp sgt i32 %call29, %mindistd.0.ph
  br i1 %cmp30, label %while.cond, label %if.then32

if.then32:                                        ; preds = %cont28
  %call33 = tail call i8* @strcpy(i8* %mindistbest, i8* %call17.i) nounwind
  %cmp34 = icmp eq i32 %call29, 0
  br i1 %cmp34, label %while.end, label %while.cond.outer

while.end:                                        ; preds = %if.then32, %while.cond, %zreaddir.exit
  %mindistd.1 = phi i32 [ %mindistd.0.ph, %zreaddir.exit ], [ %mindistd.0.ph, %while.cond ], [ 0, %if.then32 ]
  %call39 = tail call i32 @closedir(%struct.__dirstream* %call17) nounwind
  br label %return

return:                                           ; preds = %if.end15, %while.end, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %mindistd.1, %while.end ], [ 100, %if.end15 ]
  ret i32 %retval.0
}

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @strncpy(i8*, i8* nocapture, i32) nounwind

declare void @hwrep(i8*)

define i32 @ztrftime(i8* %buf, i32 %bufsize, i8* nocapture %fmt, %struct.tm* %tm) nounwind {
entry:
  %tmp = alloca [4 x i8], align 1
  %arraydecay = getelementptr inbounds [4 x i8]* %tmp, i32 0, i32 0
  %tm_mday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3
  %tm_hour = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2
  %tm_mon = getelementptr inbounds %struct.tm* %tm, i32 0, i32 4
  %tm_min = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1
  %tm_sec = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0
  %tm_year = getelementptr inbounds %struct.tm* %tm, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %ioc_bb359, %cont358, %if.end367, %cont325, %cont320, %cont280, %cont245, %cont210, %cont171, %cont132, %cont79, %cont37, %entry
  %bufsize472 = phi i32 [ %bufsize, %entry ], [ %3, %cont325 ], [ %3, %cont320 ], [ %3, %cont280 ], [ %3, %cont245 ], [ %3, %cont210 ], [ %3, %cont171 ], [ %3, %cont132 ], [ %3, %cont79 ], [ %3, %cont37 ], [ %140, %if.end367 ], [ %135, %cont358 ], [ %135, %ioc_bb359 ]
  %fmt.addr.0 = phi i8* [ %fmt, %entry ], [ %fmt.addr.1, %cont325 ], [ %incdec.ptr11, %cont320 ], [ %incdec.ptr11, %cont280 ], [ %incdec.ptr11, %cont245 ], [ %incdec.ptr11, %cont210 ], [ %incdec.ptr11, %cont171 ], [ %incdec.ptr11, %cont132 ], [ %incdec.ptr11, %cont79 ], [ %incdec.ptr11, %cont37 ], [ %incdec.ptr368, %if.end367 ], [ %incdec.ptr11, %cont358 ], [ %incdec.ptr11, %ioc_bb359 ]
  %buf.addr.0 = phi i8* [ %buf, %entry ], [ %incdec.ptr326, %cont325 ], [ %incdec.ptr322, %cont320 ], [ %incdec.ptr282, %cont280 ], [ %incdec.ptr247, %cont245 ], [ %incdec.ptr212, %cont210 ], [ %incdec.ptr173, %cont171 ], [ %incdec.ptr134, %cont132 ], [ %incdec.ptr81, %cont79 ], [ %incdec.ptr39, %cont37 ], [ %incdec.ptr369, %if.end367 ], [ %add.ptr, %cont358 ], [ %add.ptr, %ioc_bb359 ]
  %0 = load i8* %fmt.addr.0, align 1, !tbaa !1
  switch i8 %0, label %if.else361 [
    i8 0, label %cont372
    i8 37, label %if.then
  ]

if.then:                                          ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %fmt.addr.0, i32 1
  %1 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %1, 45
  %incdec.ptr7 = getelementptr inbounds i8* %fmt.addr.0, i32 2
  %fmt.addr.1 = select i1 %cmp4, i8* %incdec.ptr7, i8* %incdec.ptr
  %strip.0 = zext i1 %cmp4 to i32
  %cmp.i = icmp sgt i32 %bufsize472, 2
  br i1 %cmp.i, label %if.end.i, label %return

if.end.i:                                         ; preds = %if.then
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %bufsize472, i32 2) nounwind
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb.i, label %if.end10

ioc_bb.i:                                         ; preds = %if.end.i
  %5 = sext i32 %bufsize472 to i64
  call void @__ioc_report_sub_overflow(i32 2380, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %5, i64 2, i8 13) nounwind
  br label %if.end10

if.end10:                                         ; preds = %ioc_bb.i, %if.end.i
  %incdec.ptr11 = getelementptr inbounds i8* %fmt.addr.1, i32 1
  %6 = load i8* %fmt.addr.1, align 1, !tbaa !1
  %conv12 = sext i8 %6 to i32
  switch i32 %conv12, label %cont329 [
    i32 100, label %sw.bb
    i32 102, label %sw.bb40
    i32 101, label %sw.bb41
    i32 75, label %sw.bb82
    i32 72, label %sw.bb84
    i32 107, label %sw.bb84
    i32 76, label %sw.bb135
    i32 108, label %cont141
    i32 109, label %sw.bb174
    i32 77, label %sw.bb213
    i32 83, label %sw.bb248
    i32 121, label %sw.bb283
    i32 0, label %cont325
  ]

sw.bb:                                            ; preds = %if.end10
  %7 = load i32* %tm_mday, align 4, !tbaa !0
  %cmp13 = icmp sgt i32 %7, 9
  %tobool15 = xor i1 %cmp4, true
  %or.cond = or i1 %cmp13, %tobool15
  br i1 %or.cond, label %cont19, label %cont31

cont19:                                           ; preds = %sw.bb
  %div = sdiv i32 %7, 10
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div, i32 48)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont19
  %11 = sext i32 %div to i64
  call void @__ioc_report_add_overflow(i32 2425, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %11, i8 13) nounwind
  br label %cont21

cont21:                                           ; preds = %cont19, %ioc_bb20
  %.off456 = add i32 %9, 128
  %12 = icmp ult i32 %.off456, 256
  br i1 %12, label %cont23, label %ioc_bb22

ioc_bb22:                                         ; preds = %cont21
  %13 = sext i32 %9 to i64
  call void @__ioc_report_conversion(i32 2425, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb22, %cont21
  %conv24 = trunc i32 %9 to i8
  %incdec.ptr25 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv24, i8* %buf.addr.0, align 1, !tbaa !1
  %.pre486 = load i32* %tm_mday, align 4, !tbaa !0
  br label %cont31

cont31:                                           ; preds = %cont23, %sw.bb
  %14 = phi i32 [ %.pre486, %cont23 ], [ %7, %sw.bb ]
  %buf.addr.1 = phi i8* [ %incdec.ptr25, %cont23 ], [ %buf.addr.0, %sw.bb ]
  %rem = srem i32 %14, 10
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem, i32 48)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %cont31
  %18 = sext i32 %rem to i64
  call void @__ioc_report_add_overflow(i32 2426, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %18, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %cont31, %ioc_bb32
  %.off457 = add i32 %16, 128
  %19 = icmp ult i32 %.off457, 256
  br i1 %19, label %cont37, label %ioc_bb36

ioc_bb36:                                         ; preds = %cont33
  %20 = sext i32 %16 to i64
  call void @__ioc_report_conversion(i32 2426, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont37

cont37:                                           ; preds = %ioc_bb36, %cont33
  %conv38 = trunc i32 %16 to i8
  %incdec.ptr39 = getelementptr inbounds i8* %buf.addr.1, i32 1
  store i8 %conv38, i8* %buf.addr.1, align 1, !tbaa !1
  br label %while.cond

sw.bb40:                                          ; preds = %if.end10
  br label %sw.bb41

sw.bb41:                                          ; preds = %if.end10, %sw.bb40
  %strip.1 = phi i32 [ %strip.0, %if.end10 ], [ 1, %sw.bb40 ]
  %21 = load i32* %tm_mday, align 4, !tbaa !0
  %cmp43 = icmp sgt i32 %21, 9
  br i1 %cmp43, label %cont50, label %if.else60

cont50:                                           ; preds = %sw.bb41
  %div51 = sdiv i32 %21, 10
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div51, i32 48)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb52, label %cont53

ioc_bb52:                                         ; preds = %cont50
  %25 = sext i32 %div51 to i64
  call void @__ioc_report_add_overflow(i32 2435, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %25, i8 13) nounwind
  br label %cont53

cont53:                                           ; preds = %cont50, %ioc_bb52
  %.off455 = add i32 %23, 128
  %26 = icmp ult i32 %.off455, 256
  br i1 %26, label %cont57, label %ioc_bb56

ioc_bb56:                                         ; preds = %cont53
  %27 = sext i32 %23 to i64
  call void @__ioc_report_conversion(i32 2435, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont57

cont57:                                           ; preds = %ioc_bb56, %cont53
  %conv58 = trunc i32 %23 to i8
  %incdec.ptr59 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv58, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont72

if.else60:                                        ; preds = %sw.bb41
  %tobool61 = icmp eq i32 %strip.1, 0
  br i1 %tobool61, label %cont64, label %cont72

cont64:                                           ; preds = %if.else60
  %incdec.ptr65 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 32, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont72

cont72:                                           ; preds = %cont57, %cont64, %if.else60
  %buf.addr.2 = phi i8* [ %incdec.ptr59, %cont57 ], [ %buf.addr.0, %if.else60 ], [ %incdec.ptr65, %cont64 ]
  %28 = load i32* %tm_mday, align 4, !tbaa !0
  %rem73 = srem i32 %28, 10
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem73, i32 48)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %cont72
  %32 = sext i32 %rem73 to i64
  call void @__ioc_report_add_overflow(i32 2438, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %32, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %cont72, %ioc_bb74
  %.off454 = add i32 %30, 128
  %33 = icmp ult i32 %.off454, 256
  br i1 %33, label %cont79, label %ioc_bb78

ioc_bb78:                                         ; preds = %cont75
  %34 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 2438, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont79

cont79:                                           ; preds = %ioc_bb78, %cont75
  %conv80 = trunc i32 %30 to i8
  %incdec.ptr81 = getelementptr inbounds i8* %buf.addr.2, i32 1
  store i8 %conv80, i8* %buf.addr.2, align 1, !tbaa !1
  br label %while.cond

sw.bb82:                                          ; preds = %if.end10
  br label %sw.bb84

sw.bb84:                                          ; preds = %sw.bb82, %if.end10, %if.end10
  %strip.2 = phi i32 [ %strip.0, %if.end10 ], [ %strip.0, %if.end10 ], [ 1, %sw.bb82 ]
  %35 = load i32* %tm_hour, align 4, !tbaa !0
  %cmp85 = icmp sgt i32 %35, 9
  br i1 %cmp85, label %cont92, label %if.else102

cont92:                                           ; preds = %sw.bb84
  %div93 = sdiv i32 %35, 10
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div93, i32 48)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb94, label %cont95

ioc_bb94:                                         ; preds = %cont92
  %39 = sext i32 %div93 to i64
  call void @__ioc_report_add_overflow(i32 2450, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %39, i8 13) nounwind
  br label %cont95

cont95:                                           ; preds = %cont92, %ioc_bb94
  %.off453 = add i32 %37, 128
  %40 = icmp ult i32 %.off453, 256
  br i1 %40, label %cont99, label %ioc_bb98

ioc_bb98:                                         ; preds = %cont95
  %41 = sext i32 %37 to i64
  call void @__ioc_report_conversion(i32 2450, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %41, i8 1) nounwind
  br label %cont99

cont99:                                           ; preds = %ioc_bb98, %cont95
  %conv100 = trunc i32 %37 to i8
  %incdec.ptr101 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv100, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont125

if.else102:                                       ; preds = %sw.bb84
  %tobool103 = icmp eq i32 %strip.2, 0
  br i1 %tobool103, label %cont106, label %cont125

cont106:                                          ; preds = %if.else102
  %cmp108 = icmp eq i8 %6, 72
  %incdec.ptr113 = getelementptr inbounds i8* %buf.addr.0, i32 1
  br i1 %cmp108, label %cont112, label %cont116

cont112:                                          ; preds = %cont106
  store i8 48, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont125

cont116:                                          ; preds = %cont106
  store i8 32, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont125

cont125:                                          ; preds = %cont99, %cont112, %cont116, %if.else102
  %buf.addr.3 = phi i8* [ %incdec.ptr101, %cont99 ], [ %buf.addr.0, %if.else102 ], [ %incdec.ptr113, %cont112 ], [ %incdec.ptr113, %cont116 ]
  %42 = load i32* %tm_hour, align 4, !tbaa !0
  %rem126 = srem i32 %42, 10
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem126, i32 48)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb127, label %cont128

ioc_bb127:                                        ; preds = %cont125
  %46 = sext i32 %rem126 to i64
  call void @__ioc_report_add_overflow(i32 2457, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %46, i8 13) nounwind
  br label %cont128

cont128:                                          ; preds = %cont125, %ioc_bb127
  %.off452 = add i32 %44, 128
  %47 = icmp ult i32 %.off452, 256
  br i1 %47, label %cont132, label %ioc_bb131

ioc_bb131:                                        ; preds = %cont128
  %48 = sext i32 %44 to i64
  call void @__ioc_report_conversion(i32 2457, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont132

cont132:                                          ; preds = %ioc_bb131, %cont128
  %conv133 = trunc i32 %44 to i8
  %incdec.ptr134 = getelementptr inbounds i8* %buf.addr.3, i32 1
  store i8 %conv133, i8* %buf.addr.3, align 1, !tbaa !1
  br label %while.cond

sw.bb135:                                         ; preds = %if.end10
  br label %cont141

cont141:                                          ; preds = %sw.bb135, %if.end10
  %strip.3 = phi i32 [ %strip.0, %if.end10 ], [ 1, %sw.bb135 ]
  %49 = load i32* %tm_hour, align 4, !tbaa !0
  %rem142 = srem i32 %49, 12
  %cmp143 = icmp eq i32 %rem142, 0
  %.rem142 = select i1 %cmp143, i32 12, i32 %rem142
  %cmp147 = icmp sgt i32 %.rem142, 9
  br i1 %cmp147, label %cont151, label %if.else153

cont151:                                          ; preds = %cont141
  %incdec.ptr152 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 49, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont164

if.else153:                                       ; preds = %cont141
  %tobool154 = icmp eq i32 %strip.3, 0
  br i1 %tobool154, label %cont157, label %cont164

cont157:                                          ; preds = %if.else153
  %incdec.ptr158 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 32, i8* %buf.addr.0, align 1, !tbaa !1
  br label %cont164

cont164:                                          ; preds = %cont151, %cont157, %if.else153
  %buf.addr.4 = phi i8* [ %incdec.ptr152, %cont151 ], [ %buf.addr.0, %if.else153 ], [ %incdec.ptr158, %cont157 ]
  %rem165 = srem i32 %.rem142, 10
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem165, i32 48)
  %51 = extractvalue { i32, i1 } %50, 0
  %52 = extractvalue { i32, i1 } %50, 1
  br i1 %52, label %ioc_bb166, label %cont167

ioc_bb166:                                        ; preds = %cont164
  %53 = sext i32 %rem165 to i64
  call void @__ioc_report_add_overflow(i32 2472, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %53, i8 13) nounwind
  br label %cont167

cont167:                                          ; preds = %cont164, %ioc_bb166
  %.off451 = add i32 %51, 128
  %54 = icmp ult i32 %.off451, 256
  br i1 %54, label %cont171, label %ioc_bb170

ioc_bb170:                                        ; preds = %cont167
  %55 = sext i32 %51 to i64
  call void @__ioc_report_conversion(i32 2472, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %55, i8 1) nounwind
  br label %cont171

cont171:                                          ; preds = %ioc_bb170, %cont167
  %conv172 = trunc i32 %51 to i8
  %incdec.ptr173 = getelementptr inbounds i8* %buf.addr.4, i32 1
  store i8 %conv172, i8* %buf.addr.4, align 1, !tbaa !1
  br label %while.cond

sw.bb174:                                         ; preds = %if.end10
  %56 = load i32* %tm_mon, align 4, !tbaa !0
  %cmp175 = icmp sgt i32 %56, 8
  %tobool178 = xor i1 %cmp4, true
  %or.cond458 = or i1 %cmp175, %tobool178
  br i1 %or.cond458, label %if.then179, label %if.end196

if.then179:                                       ; preds = %sw.bb174
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %56, i32 1)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb181, label %cont186

ioc_bb181:                                        ; preds = %if.then179
  %60 = sext i32 %56 to i64
  call void @__ioc_report_add_overflow(i32 2478, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %60, i64 1, i8 13) nounwind
  br label %cont186

cont186:                                          ; preds = %ioc_bb181, %if.then179
  %div187 = sdiv i32 %58, 10
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div187, i32 48)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb188, label %cont189

ioc_bb188:                                        ; preds = %cont186
  %64 = sext i32 %div187 to i64
  call void @__ioc_report_add_overflow(i32 2478, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %64, i8 13) nounwind
  br label %cont189

cont189:                                          ; preds = %cont186, %ioc_bb188
  %.off449 = add i32 %62, 128
  %65 = icmp ult i32 %.off449, 256
  br i1 %65, label %cont193, label %ioc_bb192

ioc_bb192:                                        ; preds = %cont189
  %66 = sext i32 %62 to i64
  call void @__ioc_report_conversion(i32 2478, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %66, i8 1) nounwind
  br label %cont193

cont193:                                          ; preds = %ioc_bb192, %cont189
  %conv194 = trunc i32 %62 to i8
  %incdec.ptr195 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv194, i8* %buf.addr.0, align 1, !tbaa !1
  %.pre487 = load i32* %tm_mon, align 4, !tbaa !0
  br label %if.end196

if.end196:                                        ; preds = %sw.bb174, %cont193
  %67 = phi i32 [ %.pre487, %cont193 ], [ %56, %sw.bb174 ]
  %buf.addr.5 = phi i8* [ %incdec.ptr195, %cont193 ], [ %buf.addr.0, %sw.bb174 ]
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %67, i32 1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb198, label %cont203

ioc_bb198:                                        ; preds = %if.end196
  %71 = sext i32 %67 to i64
  call void @__ioc_report_add_overflow(i32 2479, i32 43, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %ioc_bb198, %if.end196
  %rem204 = srem i32 %69, 10
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem204, i32 48)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb205, label %cont206

ioc_bb205:                                        ; preds = %cont203
  %75 = sext i32 %rem204 to i64
  call void @__ioc_report_add_overflow(i32 2479, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %75, i8 13) nounwind
  br label %cont206

cont206:                                          ; preds = %cont203, %ioc_bb205
  %.off450 = add i32 %73, 128
  %76 = icmp ult i32 %.off450, 256
  br i1 %76, label %cont210, label %ioc_bb209

ioc_bb209:                                        ; preds = %cont206
  %77 = sext i32 %73 to i64
  call void @__ioc_report_conversion(i32 2479, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %77, i8 1) nounwind
  br label %cont210

cont210:                                          ; preds = %ioc_bb209, %cont206
  %conv211 = trunc i32 %73 to i8
  %incdec.ptr212 = getelementptr inbounds i8* %buf.addr.5, i32 1
  store i8 %conv211, i8* %buf.addr.5, align 1, !tbaa !1
  br label %while.cond

sw.bb213:                                         ; preds = %if.end10
  %78 = load i32* %tm_min, align 4, !tbaa !0
  %cmp214 = icmp sgt i32 %78, 9
  %tobool217 = xor i1 %cmp4, true
  %or.cond459 = or i1 %cmp214, %tobool217
  br i1 %or.cond459, label %cont223, label %cont238

cont223:                                          ; preds = %sw.bb213
  %div224 = sdiv i32 %78, 10
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div224, i32 48)
  %80 = extractvalue { i32, i1 } %79, 0
  %81 = extractvalue { i32, i1 } %79, 1
  br i1 %81, label %ioc_bb225, label %cont226

ioc_bb225:                                        ; preds = %cont223
  %82 = sext i32 %div224 to i64
  call void @__ioc_report_add_overflow(i32 2485, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %82, i8 13) nounwind
  br label %cont226

cont226:                                          ; preds = %cont223, %ioc_bb225
  %.off447 = add i32 %80, 128
  %83 = icmp ult i32 %.off447, 256
  br i1 %83, label %cont230, label %ioc_bb229

ioc_bb229:                                        ; preds = %cont226
  %84 = sext i32 %80 to i64
  call void @__ioc_report_conversion(i32 2485, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %84, i8 1) nounwind
  br label %cont230

cont230:                                          ; preds = %ioc_bb229, %cont226
  %conv231 = trunc i32 %80 to i8
  %incdec.ptr232 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv231, i8* %buf.addr.0, align 1, !tbaa !1
  %.pre488 = load i32* %tm_min, align 4, !tbaa !0
  br label %cont238

cont238:                                          ; preds = %cont230, %sw.bb213
  %85 = phi i32 [ %.pre488, %cont230 ], [ %78, %sw.bb213 ]
  %buf.addr.6 = phi i8* [ %incdec.ptr232, %cont230 ], [ %buf.addr.0, %sw.bb213 ]
  %rem239 = srem i32 %85, 10
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem239, i32 48)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  br i1 %88, label %ioc_bb240, label %cont241

ioc_bb240:                                        ; preds = %cont238
  %89 = sext i32 %rem239 to i64
  call void @__ioc_report_add_overflow(i32 2486, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %89, i8 13) nounwind
  br label %cont241

cont241:                                          ; preds = %cont238, %ioc_bb240
  %.off448 = add i32 %87, 128
  %90 = icmp ult i32 %.off448, 256
  br i1 %90, label %cont245, label %ioc_bb244

ioc_bb244:                                        ; preds = %cont241
  %91 = sext i32 %87 to i64
  call void @__ioc_report_conversion(i32 2486, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %91, i8 1) nounwind
  br label %cont245

cont245:                                          ; preds = %ioc_bb244, %cont241
  %conv246 = trunc i32 %87 to i8
  %incdec.ptr247 = getelementptr inbounds i8* %buf.addr.6, i32 1
  store i8 %conv246, i8* %buf.addr.6, align 1, !tbaa !1
  br label %while.cond

sw.bb248:                                         ; preds = %if.end10
  %92 = load i32* %tm_sec, align 4, !tbaa !0
  %cmp249 = icmp sgt i32 %92, 9
  %tobool252 = xor i1 %cmp4, true
  %or.cond460 = or i1 %cmp249, %tobool252
  br i1 %or.cond460, label %cont258, label %cont273

cont258:                                          ; preds = %sw.bb248
  %div259 = sdiv i32 %92, 10
  %93 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %div259, i32 48)
  %94 = extractvalue { i32, i1 } %93, 0
  %95 = extractvalue { i32, i1 } %93, 1
  br i1 %95, label %ioc_bb260, label %cont261

ioc_bb260:                                        ; preds = %cont258
  %96 = sext i32 %div259 to i64
  call void @__ioc_report_add_overflow(i32 2492, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %96, i8 13) nounwind
  br label %cont261

cont261:                                          ; preds = %cont258, %ioc_bb260
  %.off445 = add i32 %94, 128
  %97 = icmp ult i32 %.off445, 256
  br i1 %97, label %cont265, label %ioc_bb264

ioc_bb264:                                        ; preds = %cont261
  %98 = sext i32 %94 to i64
  call void @__ioc_report_conversion(i32 2492, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %98, i8 1) nounwind
  br label %cont265

cont265:                                          ; preds = %ioc_bb264, %cont261
  %conv266 = trunc i32 %94 to i8
  %incdec.ptr267 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv266, i8* %buf.addr.0, align 1, !tbaa !1
  %.pre489 = load i32* %tm_sec, align 4, !tbaa !0
  br label %cont273

cont273:                                          ; preds = %cont265, %sw.bb248
  %99 = phi i32 [ %.pre489, %cont265 ], [ %92, %sw.bb248 ]
  %buf.addr.7 = phi i8* [ %incdec.ptr267, %cont265 ], [ %buf.addr.0, %sw.bb248 ]
  %rem274 = srem i32 %99, 10
  %100 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem274, i32 48)
  %101 = extractvalue { i32, i1 } %100, 0
  %102 = extractvalue { i32, i1 } %100, 1
  br i1 %102, label %ioc_bb275, label %cont276

ioc_bb275:                                        ; preds = %cont273
  %103 = sext i32 %rem274 to i64
  call void @__ioc_report_add_overflow(i32 2493, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %103, i8 13) nounwind
  br label %cont276

cont276:                                          ; preds = %cont273, %ioc_bb275
  %.off446 = add i32 %101, 128
  %104 = icmp ult i32 %.off446, 256
  br i1 %104, label %cont280, label %ioc_bb279

ioc_bb279:                                        ; preds = %cont276
  %105 = sext i32 %101 to i64
  call void @__ioc_report_conversion(i32 2493, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %105, i8 1) nounwind
  br label %cont280

cont280:                                          ; preds = %ioc_bb279, %cont276
  %conv281 = trunc i32 %101 to i8
  %incdec.ptr282 = getelementptr inbounds i8* %buf.addr.7, i32 1
  store i8 %conv281, i8* %buf.addr.7, align 1, !tbaa !1
  br label %while.cond

sw.bb283:                                         ; preds = %if.end10
  %106 = load i32* %tm_year, align 4, !tbaa !0
  %cmp284 = icmp sgt i32 %106, 9
  %tobool287 = xor i1 %cmp4, true
  %or.cond461 = or i1 %cmp284, %tobool287
  br i1 %or.cond461, label %cont298, label %cont313

cont298:                                          ; preds = %sw.bb283
  %div294 = sdiv i32 %106, 10
  %rem299 = srem i32 %div294, 10
  %107 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem299, i32 48)
  %108 = extractvalue { i32, i1 } %107, 0
  %109 = extractvalue { i32, i1 } %107, 1
  br i1 %109, label %ioc_bb300, label %cont301

ioc_bb300:                                        ; preds = %cont298
  %110 = sext i32 %rem299 to i64
  call void @__ioc_report_add_overflow(i32 2499, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %110, i8 13) nounwind
  br label %cont301

cont301:                                          ; preds = %cont298, %ioc_bb300
  %.off = add i32 %108, 128
  %111 = icmp ult i32 %.off, 256
  br i1 %111, label %cont305, label %ioc_bb304

ioc_bb304:                                        ; preds = %cont301
  %112 = sext i32 %108 to i64
  call void @__ioc_report_conversion(i32 2499, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %112, i8 1) nounwind
  br label %cont305

cont305:                                          ; preds = %ioc_bb304, %cont301
  %conv306 = trunc i32 %108 to i8
  %incdec.ptr307 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %conv306, i8* %buf.addr.0, align 1, !tbaa !1
  %.pre490 = load i32* %tm_year, align 4, !tbaa !0
  br label %cont313

cont313:                                          ; preds = %cont305, %sw.bb283
  %113 = phi i32 [ %.pre490, %cont305 ], [ %106, %sw.bb283 ]
  %buf.addr.8 = phi i8* [ %incdec.ptr307, %cont305 ], [ %buf.addr.0, %sw.bb283 ]
  %rem314 = srem i32 %113, 10
  %114 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rem314, i32 48)
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb315, label %cont316

ioc_bb315:                                        ; preds = %cont313
  %117 = sext i32 %rem314 to i64
  call void @__ioc_report_add_overflow(i32 2500, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %117, i8 13) nounwind
  br label %cont316

cont316:                                          ; preds = %cont313, %ioc_bb315
  %.off444 = add i32 %115, 128
  %118 = icmp ult i32 %.off444, 256
  br i1 %118, label %cont320, label %ioc_bb319

ioc_bb319:                                        ; preds = %cont316
  %119 = sext i32 %115 to i64
  call void @__ioc_report_conversion(i32 2500, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %119, i8 1) nounwind
  br label %cont320

cont320:                                          ; preds = %ioc_bb319, %cont316
  %conv321 = trunc i32 %115 to i8
  %incdec.ptr322 = getelementptr inbounds i8* %buf.addr.8, i32 1
  store i8 %conv321, i8* %buf.addr.8, align 1, !tbaa !1
  br label %while.cond

cont325:                                          ; preds = %if.end10
  %incdec.ptr326 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 37, i8* %buf.addr.0, align 1, !tbaa !1
  br label %while.cond

cont329:                                          ; preds = %if.end10
  store i8 1, i8* %buf.addr.0, align 1, !tbaa !1
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([6 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0)
  %120 = load i8* %fmt.addr.1, align 1, !tbaa !1
  %conv334 = sext i8 %120 to i32
  %call335 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* %cond, i32 %conv334) nounwind
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 2)
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb336, label %cont337

ioc_bb336:                                        ; preds = %cont329
  %124 = sext i32 %3 to i64
  call void @__ioc_report_add_overflow(i32 2524, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %124, i64 2, i8 13) nounwind
  br label %cont337

cont337:                                          ; preds = %cont329, %ioc_bb336
  %125 = icmp sgt i32 %122, -1
  br i1 %125, label %cont340, label %ioc_bb339

ioc_bb339:                                        ; preds = %cont337
  %126 = sext i32 %122 to i64
  call void @__ioc_report_conversion(i32 2524, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %126, i8 1) nounwind
  br label %cont340

cont340:                                          ; preds = %ioc_bb339, %cont337
  %call342 = call i32 @strftime(i8* %buf.addr.0, i32 %122, i8* %arraydecay, %struct.tm* %tm) nounwind
  %tobool343 = icmp eq i32 %call342, 0
  br i1 %tobool343, label %if.then344, label %if.end353

if.then344:                                       ; preds = %cont340
  %127 = load i8* %buf.addr.0, align 1, !tbaa !1
  %tobool345 = icmp eq i8 %127, 0
  br i1 %tobool345, label %return, label %cont348

cont348:                                          ; preds = %if.then344
  store i8 0, i8* %buf.addr.0, align 1, !tbaa !1
  br label %return

if.end353:                                        ; preds = %cont340
  %call354 = call i32 @strlen(i8* %buf.addr.0) nounwind readonly
  %128 = icmp sgt i32 %call354, -1
  br i1 %128, label %cont356, label %ioc_bb355

ioc_bb355:                                        ; preds = %if.end353
  %129 = zext i32 %call354 to i64
  call void @__ioc_report_conversion(i32 2531, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %129, i8 0) nounwind
  br label %cont356

cont356:                                          ; preds = %ioc_bb355, %if.end353
  %add.ptr = getelementptr inbounds i8* %buf.addr.0, i32 %call354
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call354, i32 2)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb357, label %cont358

ioc_bb357:                                        ; preds = %cont356
  %133 = sext i32 %call354 to i64
  call void @__ioc_report_sub_overflow(i32 2533, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %133, i64 2, i8 13) nounwind
  br label %cont358

cont358:                                          ; preds = %cont356, %ioc_bb357
  %134 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 %131)
  %135 = extractvalue { i32, i1 } %134, 0
  %136 = extractvalue { i32, i1 } %134, 1
  br i1 %136, label %ioc_bb359, label %while.cond

ioc_bb359:                                        ; preds = %cont358
  %137 = sext i32 %131 to i64
  %138 = sext i32 %3 to i64
  call void @__ioc_report_sub_overflow(i32 2533, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %138, i64 %137, i8 13) nounwind
  br label %while.cond

if.else361:                                       ; preds = %while.cond
  %cmp.i462 = icmp sgt i32 %bufsize472, 1
  br i1 %cmp.i462, label %if.end.i463, label %return

if.end.i463:                                      ; preds = %if.else361
  %139 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %bufsize472, i32 1) nounwind
  %140 = extractvalue { i32, i1 } %139, 0
  %141 = extractvalue { i32, i1 } %139, 1
  br i1 %141, label %ioc_bb.i464, label %if.end367

ioc_bb.i464:                                      ; preds = %if.end.i463
  %142 = sext i32 %bufsize472 to i64
  call void @__ioc_report_sub_overflow(i32 2380, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %142, i64 1, i8 13) nounwind
  %.pre = load i8* %fmt.addr.0, align 1, !tbaa !1
  br label %if.end367

if.end367:                                        ; preds = %ioc_bb.i464, %if.end.i463
  %143 = phi i8 [ %.pre, %ioc_bb.i464 ], [ %0, %if.end.i463 ]
  %incdec.ptr368 = getelementptr inbounds i8* %fmt.addr.0, i32 1
  %incdec.ptr369 = getelementptr inbounds i8* %buf.addr.0, i32 1
  store i8 %143, i8* %buf.addr.0, align 1, !tbaa !1
  br label %while.cond

cont372:                                          ; preds = %while.cond
  store i8 0, i8* %buf.addr.0, align 1, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %buf.addr.0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

return:                                           ; preds = %if.else361, %if.then, %if.then344, %cont372, %cont348
  %retval.0 = phi i32 [ -1, %cont348 ], [ %sub.ptr.sub, %cont372 ], [ 0, %if.then344 ], [ -1, %if.then ], [ -1, %if.else361 ]
  ret i32 %retval.0
}

declare i32 @strftime(i8*, i32, i8*, %struct.tm*) nounwind

define i8* @zjoin(i8** nocapture %arr, i32 %delim, i32 %heap) nounwind {
entry:
  %0 = load i8** %arr, align 4, !tbaa !3
  %tobool119 = icmp eq i8* %0, null
  br i1 %tobool119, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  %tobool22124 = icmp eq i32 %heap, 0
  br i1 %tobool22124, label %cond.false, label %return

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp ult i32 %delim, 256
  %idxprom = and i32 %delim, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = sext i32 %delim to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cont17
  %3 = phi i8* [ %0, %for.body.lr.ph ], [ %19, %cont17 ]
  %s.0121 = phi i8** [ %arr, %for.body.lr.ph ], [ %incdec.ptr, %cont17 ]
  %len.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %15, %cont17 ]
  %call = tail call i32 @strlen(i8* %3) nounwind readonly
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %for.body
  %7 = zext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 2556, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %for.body, %ioc_bb1
  br i1 %1, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont2
  tail call void @__ioc_report_conversion(i32 2556, i32 57, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %8 = load i16* %arrayidx, align 2, !tbaa !5
  %and = lshr i16 %8, 12
  %and.lobit = and i16 %and, 1
  %cond = zext i16 %and.lobit to i32
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %5, i32 %cond)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont4
  %12 = zext i16 %and.lobit to i64
  %13 = zext i32 %5 to i64
  tail call void @__ioc_report_add_overflow(i32 2556, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %13, i64 %12, i8 5) nounwind
  br label %cont15

cont15:                                           ; preds = %cont4, %ioc_bb14
  %14 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0120, i32 %10)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %17 = sext i32 %10 to i64
  %18 = sext i32 %len.0120 to i64
  tail call void @__ioc_report_add_overflow(i32 2556, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %18, i64 %17, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  %incdec.ptr = getelementptr inbounds i8** %s.0121, i32 1
  %19 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool = icmp eq i8* %19, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %cont17
  %tobool18 = icmp eq i32 %15, 0
  %tobool22 = icmp ne i32 %heap, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br i1 %tobool22, label %return, label %cond.false

cond.false:                                       ; preds = %for.end.thread, %if.then
  %call20 = tail call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  br label %return

if.end:                                           ; preds = %for.end
  %20 = sext i32 %15 to i64
  %21 = icmp sgt i32 %15, -1
  br i1 %tobool22, label %cond.true23, label %cond.false28

cond.true23:                                      ; preds = %if.end
  br i1 %21, label %cont26, label %ioc_bb25

ioc_bb25:                                         ; preds = %cond.true23
  tail call void @__ioc_report_conversion(i32 2559, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont26

cont26:                                           ; preds = %ioc_bb25, %cond.true23
  %call27 = tail call i8* @hcalloc(i32 %15) nounwind
  br label %cond.end33

cond.false28:                                     ; preds = %if.end
  br i1 %21, label %cont31, label %ioc_bb30

ioc_bb30:                                         ; preds = %cond.false28
  tail call void @__ioc_report_conversion(i32 2559, i32 68, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb30, %cond.false28
  %call32 = tail call i8* @zshcalloc(i32 %15) nounwind
  br label %cond.end33

cond.end33:                                       ; preds = %cont31, %cont26
  %cond34 = phi i8* [ %call27, %cont26 ], [ %call32, %cont31 ]
  %22 = load i8** %arr, align 4, !tbaa !3
  %tobool36116 = icmp eq i8* %22, null
  br i1 %tobool36116, label %cont75, label %while.cond.i.preheader.lr.ph

while.cond.i.preheader.lr.ph:                     ; preds = %cond.end33
  %23 = sext i32 %delim to i64
  %24 = icmp ult i32 %delim, 256
  %conv42 = trunc i32 %delim to i8
  %idxprom43 = and i32 %delim, 255
  %arrayidx44 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom43
  %delim.off = add i32 %delim, 128
  %25 = icmp ult i32 %delim.off, 256
  %xor = xor i32 %delim, 32
  %xor.off = add i32 %xor, 128
  %26 = icmp ult i32 %xor.off, 256
  %conv60 = trunc i32 %xor to i8
  %27 = sext i32 %xor to i64
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %while.cond.i.preheader.lr.ph, %for.inc69
  %28 = phi i8* [ %22, %while.cond.i.preheader.lr.ph ], [ %31, %for.inc69 ]
  %s.1118 = phi i8** [ %arr, %while.cond.i.preheader.lr.ph ], [ %incdec.ptr70, %for.inc69 ]
  %cond34114117 = phi i8* [ %cond34, %while.cond.i.preheader.lr.ph ], [ %cond34115, %for.inc69 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %t.addr.0.i = phi i8* [ %incdec.ptr.i, %while.cond.i ], [ %28, %while.cond.i.preheader ]
  %u.0.i = phi i8* [ %incdec.ptr1.i, %while.cond.i ], [ %cond34114117, %while.cond.i.preheader ]
  %incdec.ptr.i = getelementptr inbounds i8* %t.addr.0.i, i32 1
  %29 = load i8* %t.addr.0.i, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %u.0.i, i32 1
  store i8 %29, i8* %u.0.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %29, 0
  br i1 %tobool.i, label %strucpy.exit, label %while.cond.i

strucpy.exit:                                     ; preds = %while.cond.i
  br i1 %24, label %cont41, label %ioc_bb40

ioc_bb40:                                         ; preds = %strucpy.exit
  tail call void @__ioc_report_conversion(i32 2562, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont41

cont41:                                           ; preds = %ioc_bb40, %strucpy.exit
  %30 = load i16* %arrayidx44, align 2, !tbaa !5
  %and50 = and i16 %30, 4096
  %tobool51 = icmp eq i16 %and50, 0
  br i1 %tobool51, label %if.else, label %ioc_bb53

ioc_bb53:                                         ; preds = %cont41
  tail call void @__ioc_report_conversion(i32 2563, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  store i8 -125, i8* %u.0.i, align 1, !tbaa !1
  br i1 %26, label %cont59, label %ioc_bb58

ioc_bb58:                                         ; preds = %ioc_bb53
  tail call void @__ioc_report_conversion(i32 2564, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont59

cont59:                                           ; preds = %ioc_bb58, %ioc_bb53
  %incdec.ptr61 = getelementptr inbounds i8* %u.0.i, i32 2
  store i8 %conv60, i8* %incdec.ptr1.i, align 1, !tbaa !1
  br label %for.inc69

if.else:                                          ; preds = %cont41
  br i1 %25, label %cont65, label %ioc_bb64

ioc_bb64:                                         ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 2567, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont65

cont65:                                           ; preds = %ioc_bb64, %if.else
  store i8 %conv42, i8* %u.0.i, align 1, !tbaa !1
  br label %for.inc69

for.inc69:                                        ; preds = %cont59, %cont65
  %cond34115 = phi i8* [ %incdec.ptr61, %cont59 ], [ %incdec.ptr1.i, %cont65 ]
  %incdec.ptr70 = getelementptr inbounds i8** %s.1118, i32 1
  %31 = load i8** %incdec.ptr70, align 4, !tbaa !3
  %tobool36 = icmp eq i8* %31, null
  br i1 %tobool36, label %cont75, label %while.cond.i.preheader

cont75:                                           ; preds = %for.inc69, %cond.end33
  %cond34114.lcssa = phi i8* [ %cond34, %cond.end33 ], [ %cond34115, %for.inc69 ]
  %32 = icmp ult i32 %delim, 256
  br i1 %32, label %cont79, label %ioc_bb78

ioc_bb78:                                         ; preds = %cont75
  %33 = sext i32 %delim to i64
  tail call void @__ioc_report_conversion(i32 2569, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont79

cont79:                                           ; preds = %ioc_bb78, %cont75
  %idxprom81 = and i32 %delim, 255
  %arrayidx82 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom81
  %34 = load i16* %arrayidx82, align 2, !tbaa !5
  %and88 = lshr i16 %34, 12
  %and88.lobit = and i16 %and88, 1
  %cond90 = zext i16 %and88.lobit to i32
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 -1, i32 %cond90)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %cont79
  %38 = zext i16 %and88.lobit to i64
  tail call void @__ioc_report_sub_overflow(i32 2569, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 -1, i64 %38, i8 13) nounwind
  br label %cont92

cont92:                                           ; preds = %cont79, %ioc_bb91
  %arrayidx93 = getelementptr inbounds i8* %cond34114.lcssa, i32 %36
  store i8 0, i8* %arrayidx93, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %for.end.thread, %cond.false, %if.then, %cont92
  %retval.0 = phi i8* [ %cond34, %cont92 ], [ %call20, %cond.false ], [ getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), %if.then ], [ getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), %for.end.thread ]
  ret i8* %retval.0
}

define i8** @colonsplit(i8* %s, i32 %uniq) nounwind {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %ct.0 = phi i32 [ 0, %entry ], [ %ct.1, %for.inc ]
  %t.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %t.0, align 1, !tbaa !1
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 58, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ct.0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %for.inc

ioc_bb:                                           ; preds = %if.then
  %4 = sext i32 %ct.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2586, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb, %if.then, %for.cond
  %ct.1 = phi i32 [ %ct.0, %for.cond ], [ %2, %if.then ], [ %2, %ioc_bb ]
  %incdec.ptr = getelementptr inbounds i8* %t.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ct.0, i32 2)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %for.end
  %8 = sext i32 %ct.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2587, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %8, i64 2, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %for.end, %ioc_bb2
  %9 = icmp sgt i32 %6, -1
  br i1 %9, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont3
  %10 = sext i32 %6 to i64
  tail call void @__ioc_report_conversion(i32 2587, i32 51, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont3
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  %14 = zext i32 %6 to i64
  tail call void @__ioc_report_mul_overflow(i32 2587, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %14, i8 5) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  %call = tail call i8* @zalloc(i32 %12) nounwind
  %15 = bitcast i8* %call to i8**
  %tobool18 = icmp ne i32 %uniq, 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %cont7
  %t.1 = phi i8* [ %s, %cont7 ], [ %incdec.ptr70, %do.cond ]
  %ptr.0 = phi i8** [ %15, %cont7 ], [ %ptr.1, %do.cond ]
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc15, %do.body
  %t.2 = phi i8* [ %t.1, %do.body ], [ %incdec.ptr16, %for.inc15 ]
  %16 = load i8* %t.2, align 1, !tbaa !1
  switch i8 %16, label %for.inc15 [
    i8 0, label %for.end17
    i8 58, label %for.end17
  ]

for.inc15:                                        ; preds = %for.cond8
  %incdec.ptr16 = getelementptr inbounds i8* %t.2, i32 1
  br label %for.cond8

for.end17:                                        ; preds = %for.cond8, %for.cond8
  %cmp2199 = icmp ult i8** %15, %ptr.0
  %or.cond = and i1 %tobool18, %cmp2199
  br i1 %or.cond, label %for.body23.lr.ph, label %if.end55

for.body23.lr.ph:                                 ; preds = %for.end17
  %sub.ptr.lhs.cast = ptrtoint i8* %t.2 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %t.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = icmp sgt i32 %sub.ptr.sub, -1
  %18 = sext i32 %sub.ptr.sub to i64
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.inc52
  %p.0100 = phi i8** [ %15, %for.body23.lr.ph ], [ %incdec.ptr53, %for.inc52 ]
  %19 = load i8** %p.0100, align 4, !tbaa !3
  %call24 = tail call i32 @strlen(i8* %19) nounwind readonly
  %20 = icmp sgt i32 %call24, -1
  br i1 %20, label %cont26, label %ioc_bb25

ioc_bb25:                                         ; preds = %for.body23
  %21 = zext i32 %call24 to i64
  tail call void @__ioc_report_conversion(i32 2596, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %21, i8 0) nounwind
  br label %cont26

cont26:                                           ; preds = %ioc_bb25, %for.body23
  %cmp27 = icmp eq i32 %call24, %sub.ptr.sub
  br i1 %cmp27, label %cond.false, label %for.inc52

cond.false:                                       ; preds = %cont26
  %22 = load i8** %p.0100, align 4, !tbaa !3
  br i1 %17, label %cont47, label %ioc_bb46

ioc_bb46:                                         ; preds = %cond.false
  tail call void @__ioc_report_conversion(i32 2596, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont47

cont47:                                           ; preds = %ioc_bb46, %cond.false
  %call48 = tail call i32 @strncmp(i8* %22, i8* %t.1, i32 %sub.ptr.sub) nounwind readonly
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %do.cond, label %for.inc52

for.inc52:                                        ; preds = %cont47, %cont26
  %incdec.ptr53 = getelementptr inbounds i8** %p.0100, i32 1
  %cmp21 = icmp ult i8** %incdec.ptr53, %ptr.0
  br i1 %cmp21, label %for.body23, label %if.end55

if.end55:                                         ; preds = %for.end17, %for.inc52
  %sub.ptr.lhs.cast56 = ptrtoint i8* %t.2 to i32
  %sub.ptr.rhs.cast57 = ptrtoint i8* %t.1 to i32
  %sub.ptr.sub58 = sub i32 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub58, i32 1)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb59, label %cont60

ioc_bb59:                                         ; preds = %if.end55
  %26 = sext i32 %sub.ptr.sub58 to i64
  tail call void @__ioc_report_add_overflow(i32 2598, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %26, i64 1, i8 13) nounwind
  br label %cont60

cont60:                                           ; preds = %if.end55, %ioc_bb59
  %27 = icmp sgt i32 %24, -1
  br i1 %27, label %cont63, label %ioc_bb62

ioc_bb62:                                         ; preds = %cont60
  %28 = sext i32 %24 to i64
  tail call void @__ioc_report_conversion(i32 2598, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont63

cont63:                                           ; preds = %ioc_bb62, %cont60
  %call64 = tail call i8* @zalloc(i32 %24) nounwind
  store i8* %call64, i8** %ptr.0, align 4, !tbaa !3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %cont63
  %s.addr.0.i = phi i8* [ %call64, %cont63 ], [ %incdec.ptr1.i, %while.body.i ]
  %t.addr.0.i = phi i8* [ %t.1, %cont63 ], [ %incdec.ptr.i, %while.body.i ]
  %len.addr.0.i = phi i32 [ %sub.ptr.sub58, %cont63 ], [ %30, %while.body.i ]
  %29 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.0.i, i32 -1) nounwind
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %while.cond.i
  %32 = sext i32 %len.addr.0.i to i64
  tail call void @__ioc_report_add_overflow(i32 1743, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %32, i64 -1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %while.cond.i
  %tobool.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.i, label %ztrncpy.exit, label %while.body.i

while.body.i:                                     ; preds = %cont.i
  %incdec.ptr.i = getelementptr inbounds i8* %t.addr.0.i, i32 1
  %33 = load i8* %t.addr.0.i, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %s.addr.0.i, i32 1
  store i8 %33, i8* %s.addr.0.i, align 1, !tbaa !1
  br label %while.cond.i

ztrncpy.exit:                                     ; preds = %cont.i
  %incdec.ptr65 = getelementptr inbounds i8** %ptr.0, i32 1
  store i8 0, i8* %s.addr.0.i, align 1, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %cont47, %ztrncpy.exit
  %ptr.1 = phi i8** [ %incdec.ptr65, %ztrncpy.exit ], [ %ptr.0, %cont47 ]
  %incdec.ptr70 = getelementptr inbounds i8* %t.2, i32 1
  %34 = load i8* %t.2, align 1, !tbaa !1
  %tobool71 = icmp eq i8 %34, 0
  br i1 %tobool71, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  store i8* null, i8** %ptr.1, align 4, !tbaa !3
  ret i8** %15
}

define i8** @spacesplit(i8* %s, i32 %allownull, i32 %heap, i32 %quote) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !3
  %tobool = icmp ne i32 %allownull, 0
  %0 = zext i1 %tobool to i32
  %lnot.ext = xor i32 %0, 1
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %lnot.ext)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = zext i32 %lnot.ext to i64
  call void @__ioc_report_sub_overflow(i32 2641, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i64 0, i64 %4, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %call = call i32 @wordcount(i8* %s, i8* null, i32 %2)
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %8 = sext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 2641, i32 70, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %9 = icmp sgt i32 %6, -1
  br i1 %9, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont2
  %10 = sext i32 %6 to i64
  call void @__ioc_report_conversion(i32 2641, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %cont2
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %14 = zext i32 %6 to i64
  call void @__ioc_report_mul_overflow(i32 2641, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %14, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %15 = icmp sgt i32 %12, -1
  br i1 %15, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cont6
  %16 = zext i32 %12 to i64
  call void @__ioc_report_conversion(i32 2641, i32 11, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %16, i8 0) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %cont6
  %tobool9 = icmp ne i32 %heap, 0
  %cond = select i1 %tobool9, i8* (i8*)* @dupstring, i8* (i8*)* @ztrdup
  %17 = sext i32 %12 to i64
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont8
  br i1 %15, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cond.true
  call void @__ioc_report_conversion(i32 2643, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cond.true
  %call14 = call i8* @hcalloc(i32 %12) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont8
  br i1 %15, label %cont17, label %ioc_bb16

ioc_bb16:                                         ; preds = %cond.false
  call void @__ioc_report_conversion(i32 2643, i32 68, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont17

cont17:                                           ; preds = %ioc_bb16, %cond.false
  %call18 = call i8* @zshcalloc(i32 %12) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cont17, %cont13
  %call14.sink = phi i8* [ %call14, %cont13 ], [ %call18, %cont17 ]
  %18 = bitcast i8* %call14.sink to i8**
  %tobool20 = icmp ne i32 %quote, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call21 = call i8* @dupstring(i8* %s) nounwind
  store i8* %call21, i8** %s.addr, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %19 = phi i8* [ %call21, %if.then ], [ %s, %cond.end ]
  call fastcc void @skipwsep(i8** %s.addr)
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %20 = load i8** %s.addr, align 4, !tbaa !3
  %21 = load i8* %20, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %21, 0
  br i1 %tobool23, label %if.else, label %cont27

cont27:                                           ; preds = %if.end
  %call28 = call i8* @itype_end(i8* %20, i32 32, i32 1)
  %cmp = icmp eq i8* %call28, %20
  br i1 %cmp, label %if.else, label %if.then30

if.then30:                                        ; preds = %cont27
  %cond32 = select i1 %tobool, i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8]* @nulstring, i32 0, i32 0)
  %call33 = call i8* %cond(i8* %cond32) nounwind
  %incdec.ptr = getelementptr inbounds i8* %call14.sink, i32 4
  %22 = bitcast i8* %incdec.ptr to i8**
  store i8* %call33, i8** %18, align 4, !tbaa !3
  br label %while.cond.preheader

if.else:                                          ; preds = %cont27, %if.end
  %cmp36 = icmp eq i8* %19, %20
  %or.cond135 = or i1 %tobool, %cmp36
  br i1 %or.cond135, label %while.cond.preheader, label %if.then38

if.then38:                                        ; preds = %if.else
  %call39 = call i8* %cond(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  %incdec.ptr40 = getelementptr inbounds i8* %call14.sink, i32 4
  %23 = bitcast i8* %incdec.ptr40 to i8**
  store i8* %call39, i8** %18, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else, %if.then38, %if.then30
  %ptr.0.ph = phi i8** [ %22, %if.then30 ], [ %23, %if.then38 ], [ %18, %if.else ]
  %24 = load i8* %20, align 1, !tbaa !1
  %tobool43129 = icmp eq i8 %24, 0
  br i1 %tobool43129, label %while.end, label %cont47

cont47:                                           ; preds = %while.cond.preheader, %if.end96
  %25 = phi i8* [ %44, %if.end96 ], [ %20, %while.cond.preheader ]
  %ptr.0130 = phi i8** [ %ptr.1, %if.end96 ], [ %ptr.0.ph, %while.cond.preheader ]
  %call48 = call i8* @itype_end(i8* %25, i32 32, i32 1)
  %cmp49 = icmp eq i8* %call48, %25
  br i1 %cmp49, label %if.else53, label %if.then51

if.then51:                                        ; preds = %cont47
  store i8* %call48, i8** %s.addr, align 4, !tbaa !3
  call fastcc void @skipwsep(i8** %s.addr)
  br label %if.end63

if.else53:                                        ; preds = %cont47
  br i1 %tobool20, label %land.lhs.true55, label %if.end63

land.lhs.true55:                                  ; preds = %if.else53
  %26 = load i8* %25, align 1, !tbaa !1
  %cmp57 = icmp eq i8 %26, 92
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %land.lhs.true55
  %incdec.ptr60 = getelementptr inbounds i8* %25, i32 1
  store i8* %incdec.ptr60, i8** %s.addr, align 4, !tbaa !3
  call fastcc void @skipwsep(i8** %s.addr)
  br label %if.end63

if.end63:                                         ; preds = %if.else53, %land.lhs.true55, %if.then59, %if.then51
  %27 = load i8** %s.addr, align 4, !tbaa !3
  %call64 = call fastcc i32 @findsep(i8** %s.addr, i8* null, i32 %quote)
  %28 = load i8** %s.addr, align 4, !tbaa !3
  %cmp65 = icmp ugt i8* %28, %27
  %brmerge = or i1 %cmp65, %tobool
  br i1 %brmerge, label %if.then68, label %if.else93

if.then68:                                        ; preds = %if.end63
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  %32 = sext i32 %sub.ptr.sub to i64
  br i1 %tobool9, label %cond.true70, label %cond.false77

cond.true70:                                      ; preds = %if.then68
  br i1 %31, label %ioc_bb71, label %cont72

ioc_bb71:                                         ; preds = %cond.true70
  call void @__ioc_report_add_overflow(i32 2671, i32 46, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %cont72

cont72:                                           ; preds = %cond.true70, %ioc_bb71
  %33 = icmp sgt i32 %30, -1
  br i1 %33, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %cont72
  %34 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 2671, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %ioc_bb74, %cont72
  %call76 = call i8* @hcalloc(i32 %30) nounwind
  br label %cond.end87

cond.false77:                                     ; preds = %if.then68
  br i1 %31, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %cond.false77
  call void @__ioc_report_add_overflow(i32 2671, i32 83, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %cond.false77, %ioc_bb81
  %35 = icmp sgt i32 %30, -1
  br i1 %35, label %cont85, label %ioc_bb84

ioc_bb84:                                         ; preds = %cont82
  %36 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 2671, i32 76, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %36, i8 1) nounwind
  br label %cont85

cont85:                                           ; preds = %ioc_bb84, %cont82
  %call86 = call i8* @zshcalloc(i32 %30) nounwind
  br label %cond.end87

cond.end87:                                       ; preds = %cont85, %cont75
  %cond88 = phi i8* [ %call76, %cont75 ], [ %call86, %cont85 ]
  store i8* %cond88, i8** %ptr.0130, align 4, !tbaa !3
  %37 = load i8** %s.addr, align 4, !tbaa !3
  %sub.ptr.lhs.cast90 = ptrtoint i8* %37 to i32
  %sub.ptr.sub92 = sub i32 %sub.ptr.lhs.cast90, %sub.ptr.rhs.cast
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %cond.end87
  %s.addr.0.i = phi i8* [ %cond88, %cond.end87 ], [ %incdec.ptr1.i, %while.body.i ]
  %t.addr.0.i = phi i8* [ %27, %cond.end87 ], [ %incdec.ptr.i, %while.body.i ]
  %len.addr.0.i = phi i32 [ %sub.ptr.sub92, %cond.end87 ], [ %39, %while.body.i ]
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.addr.0.i, i32 -1) nounwind
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %while.cond.i
  %41 = sext i32 %len.addr.0.i to i64
  call void @__ioc_report_add_overflow(i32 1743, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %41, i64 -1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %while.cond.i
  %tobool.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.i, label %ztrncpy.exit, label %while.body.i

while.body.i:                                     ; preds = %cont.i
  %incdec.ptr.i = getelementptr inbounds i8* %t.addr.0.i, i32 1
  %42 = load i8* %t.addr.0.i, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %s.addr.0.i, i32 1
  store i8 %42, i8* %s.addr.0.i, align 1, !tbaa !1
  br label %while.cond.i

ztrncpy.exit:                                     ; preds = %cont.i
  store i8 0, i8* %s.addr.0.i, align 1, !tbaa !1
  br label %if.end96

if.else93:                                        ; preds = %if.end63
  %call94 = call i8* %cond(i8* getelementptr inbounds ([0 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call94, i8** %ptr.0130, align 4, !tbaa !3
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %ztrncpy.exit
  %ptr.1 = getelementptr inbounds i8** %ptr.0130, i32 1
  %43 = load i8** %s.addr, align 4, !tbaa !3
  call fastcc void @skipwsep(i8** %s.addr)
  %44 = load i8** %s.addr, align 4, !tbaa !3
  %45 = load i8* %44, align 1, !tbaa !1
  %tobool43 = icmp eq i8 %45, 0
  br i1 %tobool43, label %while.end, label %cont47

while.end:                                        ; preds = %if.end96, %while.cond.preheader
  %.lcssa = phi i8* [ %20, %while.cond.preheader ], [ %44, %if.end96 ]
  %t.0.lcssa = phi i8* [ %19, %while.cond.preheader ], [ %43, %if.end96 ]
  %ptr.0.lcssa = phi i8** [ %ptr.0.ph, %while.cond.preheader ], [ %ptr.1, %if.end96 ]
  %cmp100 = icmp eq i8* %t.0.lcssa, %.lcssa
  %or.cond = or i1 %tobool, %cmp100
  br i1 %or.cond, label %if.end105, label %if.then102

if.then102:                                       ; preds = %while.end
  %call103 = call i8* %cond(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  %incdec.ptr104 = getelementptr inbounds i8** %ptr.0.lcssa, i32 1
  store i8* %call103, i8** %ptr.0.lcssa, align 4, !tbaa !3
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %while.end
  %ptr.2 = phi i8** [ %ptr.0.lcssa, %while.end ], [ %incdec.ptr104, %if.then102 ]
  store i8* null, i8** %ptr.2, align 4, !tbaa !3
  ret i8** %18
}

define i32 @wordcount(i8* %s, i8* %sep, i32 %mul) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !3
  %tobool = icmp eq i8* %sep, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @strlen(i8* %sep) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %for.cond.preheader, label %ioc_bb

ioc_bb:                                           ; preds = %if.then
  %1 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 2809, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ioc_bb, %if.then
  %call196 = call fastcc i32 @findsep(i8** %s.addr, i8* %sep, i32 0)
  %cmp97 = icmp sgt i32 %call196, -1
  br i1 %cmp97, label %for.body.lr.ph, label %if.end72

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool4 = icmp eq i32 %call, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %call199 = phi i32 [ %call196, %for.body.lr.ph ], [ %call1, %for.inc ]
  %r.098 = phi i32 [ 1, %for.body.lr.ph ], [ %r.1, %for.inc ]
  %2 = or i32 %call199, %mul
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool4, label %lor.lhs.false5, label %if.then7

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %4 = load i8** %s.addr, align 4, !tbaa !3
  %5 = load i8* %4, align 1, !tbaa !1
  %tobool6 = icmp eq i8 %5, 0
  br i1 %tobool6, label %for.inc, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5, %land.lhs.true
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.098, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb8, label %for.inc

ioc_bb8:                                          ; preds = %if.then7
  %9 = sext i32 %r.098 to i64
  call void @__ioc_report_add_overflow(i32 2812, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body, %ioc_bb8, %lor.lhs.false5
  %r.1 = phi i32 [ %r.098, %lor.lhs.false5 ], [ %7, %ioc_bb8 ], [ %r.098, %for.body ], [ %7, %if.then7 ]
  %10 = load i8** %s.addr, align 4, !tbaa !3
  %add.ptr10 = getelementptr inbounds i8* %10, i32 %call
  store i8* %add.ptr10, i8** %s.addr, align 4, !tbaa !3
  %call1 = call fastcc i32 @findsep(i8** %s.addr, i8* %sep, i32 0)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %for.body, label %if.end72

if.else:                                          ; preds = %entry
  %cmp11 = icmp slt i32 %mul, 1
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  call fastcc void @skipwsep(i8** %s.addr)
  %.pre = load i8** %s.addr, align 4, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else
  %11 = phi i8* [ %.pre, %if.then13 ], [ %s, %if.else ]
  %12 = load i8* %11, align 1, !tbaa !1
  %tobool17 = icmp eq i8 %12, 0
  br i1 %tobool17, label %lor.lhs.false26, label %cont22

cont22:                                           ; preds = %if.end15
  %call23 = call i8* @itype_end(i8* %11, i32 32, i32 1)
  %13 = load i8** %s.addr, align 4, !tbaa !3
  %cmp24 = icmp eq i8* %call23, %13
  br i1 %cmp24, label %lor.lhs.false26, label %cont34

lor.lhs.false26:                                  ; preds = %cont22, %if.end15
  %14 = phi i8* [ %call23, %cont22 ], [ %11, %if.end15 ]
  %cmp27 = icmp sgt i32 %mul, -1
  %cmp30 = icmp eq i8* %14, %s
  %or.cond = or i1 %cmp27, %cmp30
  br i1 %or.cond, label %for.cond36.preheader, label %cont34

cont34:                                           ; preds = %lor.lhs.false26, %cont22
  %15 = phi i8* [ %13, %cont22 ], [ %14, %lor.lhs.false26 ]
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %lor.lhs.false26, %cont34
  %16 = phi i8* [ %15, %cont34 ], [ %14, %lor.lhs.false26 ]
  %r.2.ph = phi i32 [ 1, %cont34 ], [ 0, %lor.lhs.false26 ]
  %17 = load i8* %16, align 1, !tbaa !1
  %tobool3792 = icmp eq i8 %17, 0
  br i1 %tobool3792, label %for.end62, label %cont42

cont42:                                           ; preds = %for.cond36.preheader, %for.cond36.backedge
  %18 = phi i8* [ %27, %for.cond36.backedge ], [ %16, %for.cond36.preheader ]
  %r.293 = phi i32 [ %25, %for.cond36.backedge ], [ %r.2.ph, %for.cond36.preheader ]
  %call43 = call i8* @itype_end(i8* %18, i32 32, i32 1)
  %cmp44 = icmp eq i8* %call43, %18
  br i1 %cmp44, label %if.end52, label %if.then46

if.then46:                                        ; preds = %cont42
  store i8* %call43, i8** %s.addr, align 4, !tbaa !3
  br i1 %cmp11, label %if.end52.thread, label %if.end52.thread90

if.end52.thread90:                                ; preds = %if.then46
  %call5391 = call fastcc i32 @findsep(i8** %s.addr, i8* null, i32 0)
  %19 = load i8** %s.addr, align 4, !tbaa !3
  br label %for.inc59

if.end52.thread:                                  ; preds = %if.then46
  call fastcc void @skipwsep(i8** %s.addr)
  %call5389 = call fastcc i32 @findsep(i8** %s.addr, i8* null, i32 0)
  %20 = load i8** %s.addr, align 4, !tbaa !3
  br label %if.then56

if.end52:                                         ; preds = %cont42
  %call53 = call fastcc i32 @findsep(i8** %s.addr, i8* null, i32 0)
  %21 = load i8** %s.addr, align 4, !tbaa !3
  br i1 %cmp11, label %if.then56, label %for.inc59

if.then56:                                        ; preds = %if.end52.thread, %if.end52
  %22 = phi i8* [ %20, %if.end52.thread ], [ %21, %if.end52 ]
  call fastcc void @skipwsep(i8** %s.addr)
  br label %for.inc59

for.inc59:                                        ; preds = %if.end52.thread90, %if.end52, %if.then56
  %23 = phi i8* [ %21, %if.end52 ], [ %22, %if.then56 ], [ %19, %if.end52.thread90 ]
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.293, i32 1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb60, label %for.cond36.backedge

for.cond36.backedge:                              ; preds = %for.inc59, %ioc_bb60
  %27 = load i8** %s.addr, align 4, !tbaa !3
  %28 = load i8* %27, align 1, !tbaa !1
  %tobool37 = icmp eq i8 %28, 0
  br i1 %tobool37, label %for.end62, label %cont42

ioc_bb60:                                         ; preds = %for.inc59
  %29 = sext i32 %r.293 to i64
  call void @__ioc_report_add_overflow(i32 2821, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %29, i64 1, i8 13) nounwind
  br label %for.cond36.backedge

for.end62:                                        ; preds = %for.cond36.backedge, %for.cond36.preheader
  %.lcssa = phi i8* [ %16, %for.cond36.preheader ], [ %27, %for.cond36.backedge ]
  %r.2.lcssa = phi i32 [ %r.2.ph, %for.cond36.preheader ], [ %25, %for.cond36.backedge ]
  %t.0.lcssa = phi i8* [ %s, %for.cond36.preheader ], [ %23, %for.cond36.backedge ]
  %cmp63 = icmp sgt i32 %mul, -1
  %cmp66 = icmp eq i8* %t.0.lcssa, %.lcssa
  %or.cond88 = or i1 %cmp63, %cmp66
  br i1 %or.cond88, label %if.end72, label %if.then68

if.then68:                                        ; preds = %for.end62
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.2.lcssa, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb69, label %if.end72

ioc_bb69:                                         ; preds = %if.then68
  %33 = sext i32 %r.2.lcssa to i64
  call void @__ioc_report_add_overflow(i32 2834, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %if.end72

if.end72:                                         ; preds = %for.cond.preheader, %for.inc, %ioc_bb69, %if.then68, %for.end62
  %r.3 = phi i32 [ %r.2.lcssa, %for.end62 ], [ %31, %if.then68 ], [ %31, %ioc_bb69 ], [ 1, %for.cond.preheader ], [ %r.1, %for.inc ]
  ret i32 %r.3
}

define internal fastcc void @skipwsep(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool2 = icmp eq i8 %1, 0
  br i1 %tobool2, label %while.end, label %ioc_bb

ioc_bb:                                           ; preds = %entry, %while.cond.backedge
  %2 = phi i8 [ %12, %while.cond.backedge ], [ %1, %entry ]
  %i.04 = phi i32 [ %10, %while.cond.backedge ], [ 0, %entry ]
  %t.03 = phi i8* [ %incdec.ptr20, %while.cond.backedge ], [ %0, %entry ]
  tail call void @__ioc_report_conversion(i32 2616, i32 58, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %2, -125
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %ioc_bb
  %arrayidx = getelementptr inbounds i8* %t.03, i32 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %conv3 = sext i8 %3 to i32
  %xor = xor i32 %conv3, 32
  br label %cond.end

cond.false:                                       ; preds = %ioc_bb
  %4 = load i8* %t.03, align 1, !tbaa !1
  %conv4 = sext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv4, %cond.false ]
  %5 = icmp ult i32 %cond, 256
  br i1 %5, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cond.end
  %6 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 2616, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cond.end
  %idxprom = and i32 %cond, 255
  %arrayidx8 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16* %arrayidx8, align 2, !tbaa !5
  %and = and i16 %7, 8192
  %tobool14 = icmp eq i16 %and, 0
  br i1 %tobool14, label %while.end, label %while.body

while.body:                                       ; preds = %cont6
  %8 = load i8* %t.03, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2617, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp18 = icmp eq i8 %8, -125
  %incdec.ptr = getelementptr inbounds i8* %t.03, i32 1
  %t.1 = select i1 %cmp18, i8* %incdec.ptr, i8* %t.03
  %incdec.ptr20 = getelementptr inbounds i8* %t.1, i32 1
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.04, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb21, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %ioc_bb21
  %12 = load i8* %incdec.ptr20, align 1, !tbaa !1
  %tobool = icmp eq i8 %12, 0
  br i1 %tobool, label %while.end, label %ioc_bb

ioc_bb21:                                         ; preds = %while.body
  %13 = sext i32 %i.04 to i64
  tail call void @__ioc_report_add_overflow(i32 2620, i32 6, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %cont6, %entry
  %t.0.lcssa = phi i8* [ %0, %entry ], [ %t.03, %cont6 ], [ %incdec.ptr20, %while.cond.backedge ]
  store i8* %t.0.lcssa, i8** %s, align 4, !tbaa !3
  ret void
}

define internal fastcc i32 @findsep(i8** nocapture %s, i8* %sep, i32 %quote) nounwind {
entry:
  %c = alloca i32, align 4
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %tobool = icmp eq i8* %sep, null
  br i1 %tobool, label %if.then, label %if.end46

if.then:                                          ; preds = %entry
  %0 = load i8** %s, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool1125 = icmp eq i8 %1, 0
  br i1 %tobool1125, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %tobool2 = icmp ne i32 %quote, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8 [ %1, %for.body.lr.ph ], [ %16, %for.inc ]
  %t.0126 = phi i8* [ %0, %for.body.lr.ph ], [ %add.ptr43, %for.inc ]
  %cmp = icmp eq i8 %2, 92
  %or.cond = and i1 %tobool2, %cmp
  br i1 %or.cond, label %if.then4, label %if.else29

if.then4:                                         ; preds = %for.body
  %arrayidx = getelementptr inbounds i8* %t.0126, i32 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %3, 92
  br i1 %cmp6, label %while.cond.i, label %if.else

while.cond.i:                                     ; preds = %if.then4, %while.cond.i.while.cond.i_crit_edge
  %4 = phi i8 [ %.pre147, %while.cond.i.while.cond.i_crit_edge ], [ 92, %if.then4 ]
  %str.addr.0.i = phi i8* [ %arrayidx.i, %while.cond.i.while.cond.i_crit_edge ], [ %t.0126, %if.then4 ]
  store i8 %4, i8* %str.addr.0.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %4, 0
  br i1 %tobool.i, label %for.inc, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  %arrayidx.i = getelementptr inbounds i8* %str.addr.0.i, i32 1
  %arrayidx.i.phi.trans.insert = getelementptr inbounds i8* %str.addr.0.i, i32 2
  %.pre147 = load i8* %arrayidx.i.phi.trans.insert, align 1, !tbaa !1
  br label %while.cond.i

if.else:                                          ; preds = %if.then4
  %call = call i32 @mb_metacharlenconv(i8* %arrayidx, i32* %c)
  %5 = load i32* %c, align 4, !tbaa !0
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %cont12, label %ioc_bb

ioc_bb:                                           ; preds = %if.else
  %7 = zext i32 %5 to i64
  call void @__ioc_report_conversion(i32 2725, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %7, i8 0) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb, %if.else
  %call13 = call i32 @wcsitype(i32 %5, i32 32)
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %while.cond.i121

while.cond.i121:                                  ; preds = %cont12, %while.cond.i121
  %str.addr.0.i118 = phi i8* [ %arrayidx.i119, %while.cond.i121 ], [ %t.0126, %cont12 ]
  %arrayidx.i119 = getelementptr inbounds i8* %str.addr.0.i118, i32 1
  %8 = load i8* %arrayidx.i119, align 1, !tbaa !1
  store i8 %8, i8* %str.addr.0.i118, align 1, !tbaa !1
  %tobool.i120 = icmp eq i8 %8, 0
  br i1 %tobool.i120, label %for.inc, label %while.cond.i121

if.else16:                                        ; preds = %cont12
  %9 = load i8* %t.0126, align 1, !tbaa !1
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %if.else16
  %11 = sext i8 %9 to i64
  call void @__ioc_report_conversion(i32 2731, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %if.else16
  %idxprom = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %12 = load i16* %arrayidx19, align 2, !tbaa !5
  %and = and i16 %12, 32
  %tobool25 = icmp eq i16 %and, 0
  br i1 %tobool25, label %for.inc, label %for.end

if.else29:                                        ; preds = %for.body
  %call30 = call i32 @mb_metacharlenconv(i8* %t.0126, i32* %c)
  %13 = load i32* %c, align 4, !tbaa !0
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %cont37, label %ioc_bb32

ioc_bb32:                                         ; preds = %if.else29
  %15 = zext i32 %13 to i64
  call void @__ioc_report_conversion(i32 2739, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %15, i8 0) nounwind
  br label %cont37

cont37:                                           ; preds = %ioc_bb32, %if.else29
  %call38 = call i32 @wcsitype(i32 %13, i32 32)
  %tobool39 = icmp eq i32 %call38, 0
  br i1 %tobool39, label %for.inc, label %for.end

for.inc:                                          ; preds = %while.cond.i, %while.cond.i121, %cont18, %cont37
  %ilen.0 = phi i32 [ %call30, %cont37 ], [ 1, %cont18 ], [ %call, %while.cond.i121 ], [ 1, %while.cond.i ]
  %add.ptr43 = getelementptr inbounds i8* %t.0126, i32 %ilen.0
  %16 = load i8* %add.ptr43, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %16, 0
  br i1 %tobool1, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cont18, %cont37, %if.then
  %t.0.lcssa = phi i8* [ %0, %if.then ], [ %t.0126, %cont37 ], [ %t.0126, %cont18 ], [ %add.ptr43, %for.inc ]
  %17 = load i8** %s, align 4, !tbaa !3
  %cmp44 = icmp ugt i8* %t.0.lcssa, %17
  %conv45 = zext i1 %cmp44 to i32
  store i8* %t.0.lcssa, i8** %s, align 4, !tbaa !3
  br label %return

if.end46:                                         ; preds = %entry
  %18 = load i8* %sep, align 1, !tbaa !1
  %tobool48 = icmp eq i8 %18, 0
  %19 = load i8** %s, align 4, !tbaa !3
  %20 = load i8* %19, align 1, !tbaa !1
  %tobool50 = icmp eq i8 %20, 0
  br i1 %tobool48, label %if.then49, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %if.end46
  br i1 %tobool50, label %return, label %for.cond61.preheader

if.then49:                                        ; preds = %if.end46
  br i1 %tobool50, label %return, label %if.then51

if.then51:                                        ; preds = %if.then49
  %call52 = call i32 @mb_metacharlenconv(i8* %19, i32* null)
  %21 = load i8** %s, align 4, !tbaa !3
  %add.ptr53 = getelementptr inbounds i8* %21, i32 %call52
  store i8* %add.ptr53, i8** %s, align 4, !tbaa !3
  br label %return

for.cond61.preheader:                             ; preds = %for.cond58.preheader, %for.cond58.backedge.for.cond61.preheader_crit_edge
  %22 = phi i8 [ %32, %for.cond58.backedge.for.cond61.preheader_crit_edge ], [ %20, %for.cond58.preheader ]
  %23 = phi i8 [ %.pre148, %for.cond58.backedge.for.cond61.preheader_crit_edge ], [ %18, %for.cond58.preheader ]
  %24 = phi i8* [ %31, %for.cond58.backedge.for.cond61.preheader_crit_edge ], [ %19, %for.cond58.preheader ]
  %i.0139 = phi i32 [ %29, %for.cond58.backedge.for.cond61.preheader_crit_edge ], [ 0, %for.cond58.preheader ]
  %tobool63129 = icmp eq i8 %23, 0
  br i1 %tobool63129, label %if.then76, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %for.cond61.preheader, %for.inc72.land.lhs.true64_crit_edge
  %25 = phi i8 [ %.pre149, %for.inc72.land.lhs.true64_crit_edge ], [ %22, %for.cond61.preheader ]
  %.pr = phi i8 [ %26, %for.inc72.land.lhs.true64_crit_edge ], [ %23, %for.cond61.preheader ]
  %tt.0131 = phi i8* [ %incdec.ptr73, %for.inc72.land.lhs.true64_crit_edge ], [ %24, %for.cond61.preheader ]
  %t.1130 = phi i8* [ %incdec.ptr, %for.inc72.land.lhs.true64_crit_edge ], [ %sep, %for.cond61.preheader ]
  %tobool66 = icmp ne i8 %25, 0
  %cmp69 = icmp eq i8 %.pr, %25
  %or.cond117 = and i1 %tobool66, %cmp69
  br i1 %or.cond117, label %for.inc72, label %for.end74

for.inc72:                                        ; preds = %land.lhs.true64
  %incdec.ptr = getelementptr inbounds i8* %t.1130, i32 1
  %incdec.ptr73 = getelementptr inbounds i8* %tt.0131, i32 1
  %26 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool63 = icmp eq i8 %26, 0
  br i1 %tobool63, label %if.then76, label %for.inc72.land.lhs.true64_crit_edge

for.inc72.land.lhs.true64_crit_edge:              ; preds = %for.inc72
  %.pre149 = load i8* %incdec.ptr73, align 1, !tbaa !1
  br label %land.lhs.true64

for.end74:                                        ; preds = %land.lhs.true64
  %tobool75 = icmp eq i8 %.pr, 0
  br i1 %tobool75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %for.end74, %for.inc72, %for.cond61.preheader
  %cmp77 = icmp sgt i32 %i.0139, 0
  %conv78 = zext i1 %cmp77 to i32
  br label %return

if.end79:                                         ; preds = %for.end74
  %call80 = call i32 @mb_metacharlenconv(i8* %24, i32* null)
  %27 = load i8** %s, align 4, !tbaa !3
  %add.ptr81 = getelementptr inbounds i8* %27, i32 %call80
  store i8* %add.ptr81, i8** %s, align 4, !tbaa !3
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0139, i32 1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb83, label %for.cond58.backedge

for.cond58.backedge:                              ; preds = %if.end79, %ioc_bb83
  %31 = phi i8* [ %add.ptr81, %if.end79 ], [ %.pre, %ioc_bb83 ]
  %32 = load i8* %31, align 1, !tbaa !1
  %tobool59 = icmp eq i8 %32, 0
  br i1 %tobool59, label %return, label %for.cond58.backedge.for.cond61.preheader_crit_edge

for.cond58.backedge.for.cond61.preheader_crit_edge: ; preds = %for.cond58.backedge
  %.pre148 = load i8* %sep, align 1, !tbaa !1
  br label %for.cond61.preheader

ioc_bb83:                                         ; preds = %if.end79
  %33 = sext i32 %i.0139 to i64
  call void @__ioc_report_add_overflow(i32 2758, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  %.pre = load i8** %s, align 4, !tbaa !3
  br label %for.cond58.backedge

return:                                           ; preds = %for.cond58.preheader, %for.cond58.backedge, %if.then49, %if.then76, %if.then51, %for.end
  %retval.0 = phi i32 [ %conv78, %if.then76 ], [ 1, %if.then51 ], [ %conv45, %for.end ], [ -1, %if.then49 ], [ -1, %for.cond58.backedge ], [ -1, %for.cond58.preheader ]
  ret i32 %retval.0
}

define i8* @findword(i8** nocapture %s, i8* %sep) nounwind {
entry:
  %c = alloca i32, align 4
  %0 = load i8** %s, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i8* %sep, null
  br i1 %tobool1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 @strlen(i8* %sep) nounwind readonly
  %2 = icmp sgt i32 %call, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then2
  %3 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 2782, i32 10, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %3, i8 0) nounwind
  %.pre = load i8** %s, align 4, !tbaa !3
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then2
  %4 = phi i8* [ %.pre, %ioc_bb ], [ %0, %if.then2 ]
  %call337 = call fastcc i32 @findsep(i8** %s, i8* %sep, i32 0)
  %lnot38 = icmp eq i32 %call337, 0
  br i1 %lnot38, label %while.body, label %return

while.body:                                       ; preds = %cont, %while.body
  %5 = load i8** %s, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %5, i32 %call
  store i8* %add.ptr, i8** %s, align 4, !tbaa !3
  %call3 = call fastcc i32 @findsep(i8** %s, i8* %sep, i32 0)
  %lnot = icmp eq i32 %call3, 0
  br i1 %lnot, label %while.body, label %return

if.end5:                                          ; preds = %if.end
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %6 = load i8** %s, align 4, !tbaa !3
  %7 = load i8* %6, align 1, !tbaa !1
  %tobool635 = icmp eq i8 %7, 0
  br i1 %tobool635, label %for.end, label %for.body

for.body:                                         ; preds = %if.end5, %for.inc
  %t.036 = phi i8* [ %add.ptr19, %for.inc ], [ %6, %if.end5 ]
  %call7 = call i32 @mb_metacharlenconv(i8* %t.036, i32* %c)
  %8 = load i32* %c, align 4, !tbaa !0
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %cont14, label %ioc_bb9

ioc_bb9:                                          ; preds = %for.body
  %10 = zext i32 %8 to i64
  call void @__ioc_report_conversion(i32 2793, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %10, i8 0) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb9, %for.body
  %call15 = call i32 @wcsitype(i32 %8, i32 32)
  %tobool16 = icmp eq i32 %call15, 0
  br i1 %tobool16, label %for.end, label %for.inc

for.inc:                                          ; preds = %cont14
  %add.ptr19 = getelementptr inbounds i8* %t.036, i32 %call7
  %11 = load i8* %add.ptr19, align 1, !tbaa !1
  %tobool6 = icmp eq i8 %11, 0
  br i1 %tobool6, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cont14, %if.end5
  %t.0.lcssa = phi i8* [ %6, %if.end5 ], [ %t.036, %cont14 ], [ %add.ptr19, %for.inc ]
  store i8* %t.0.lcssa, i8** %s, align 4, !tbaa !3
  %call20 = call fastcc i32 @findsep(i8** %s, i8* null, i32 0)
  br label %return

return:                                           ; preds = %cont, %while.body, %entry, %for.end
  %retval.0 = phi i8* [ %t.0.lcssa, %for.end ], [ null, %entry ], [ %4, %cont ], [ %add.ptr, %while.body ]
  ret i8* %retval.0
}

define i32 @mb_metacharlenconv(i8* %s, i32* %wcp) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i32* %wcp, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = load i8* %s, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 4055, i32 44, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %1, -125
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8* %s, i32 1
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv4 = sext i8 %2 to i32
  %xor = xor i32 %conv4, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %3 = load i8* %s, align 1, !tbaa !1
  %conv5 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv5, %cond.false ]
  %4 = icmp sgt i32 %cond, -1
  br i1 %4, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cond.end
  %5 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 4055, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cond.end
  store i32 %cond, i32* %wcp, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %cont7
  %6 = load i8* %s, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 4056, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp11 = icmp eq i8 %6, -125
  %conv12 = zext i1 %cmp11 to i32
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv12, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb13, label %return

ioc_bb13:                                         ; preds = %if.end
  %10 = zext i1 %cmp11 to i64
  tail call void @__ioc_report_add_overflow(i32 4056, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 1, i64 %10, i8 13) nounwind
  br label %return

if.end15:                                         ; preds = %entry
  %11 = load i8* %s, align 1, !tbaa !1
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %if.end15
  %13 = sext i8 %11 to i64
  tail call void @__ioc_report_conversion(i32 4068, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %if.end15
  %idxprom = zext i8 %11 to i32
  %arrayidx19 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %14 = load i16* %arrayidx19, align 2, !tbaa !5
  %and = and i16 %14, 16
  %tobool25 = icmp eq i16 %and, 0
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %cont18
  %tobool27 = icmp eq i32* %wcp, null
  br i1 %tobool27, label %return, label %if.then28

if.then28:                                        ; preds = %if.then26
  store i32 -1, i32* %wcp, align 4, !tbaa !0
  br label %return

if.end30:                                         ; preds = %cont18
  %call = tail call i32 @mb_metacharlenconv_r(i8* %s, i32* %wcp, %struct.__mbstate_t* @mb_shiftstate)
  br label %return

return:                                           ; preds = %if.then28, %if.then26, %ioc_bb13, %if.end, %if.end30
  %retval.0 = phi i32 [ %call, %if.end30 ], [ %8, %if.end ], [ %8, %ioc_bb13 ], [ 1, %if.then26 ], [ 1, %if.then28 ]
  ret i32 %retval.0
}

define i32 @wcsitype(i32 %c, i32 %itype) nounwind {
entry:
  %mbs = alloca %struct.__mbstate_t, align 8
  %call = call i32 @__ctype_get_mb_cur_max() nounwind
  %vla = alloca i8, i32 %call, align 1
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = icmp ult i32 %c, 256
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then
  %2 = sext i32 %c to i64
  call void @__ioc_report_conversion(i32 3165, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then
  %idxprom = and i32 %c, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %conv1 = sext i16 %3 to i32
  %and = and i32 %conv1, %itype
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.__mbstate_t* %mbs to i64*
  store i64 0, i64* %4, align 8
  %call2 = call i32 @wcrtomb(i8* %vla, i32 %c, %struct.__mbstate_t* %mbs) nounwind
  %5 = icmp sgt i32 %call2, -1
  br i1 %5, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.end
  %6 = zext i32 %call2 to i64
  call void @__ioc_report_conversion(i32 3174, i32 9, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %6, i8 0) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.end
  switch i32 %call2, label %if.else27 [
    i32 0, label %cont8
    i32 1, label %land.lhs.true
  ]

cont8:                                            ; preds = %cont4
  %7 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 0), align 2, !tbaa !5
  %conv9 = sext i16 %7 to i32
  %and10 = and i32 %conv9, %itype
  br label %cleanup

land.lhs.true:                                    ; preds = %cont4
  %8 = load i8* %vla, align 1, !tbaa !1
  %cmp1673 = icmp sgt i8 %8, -1
  br i1 %cmp1673, label %cont22, label %if.else27

cont22:                                           ; preds = %land.lhs.true
  %idxprom23 = zext i8 %8 to i32
  %arrayidx24 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom23
  %9 = load i16* %arrayidx24, align 2, !tbaa !5
  %conv25 = sext i16 %9 to i32
  %and26 = and i32 %conv25, %itype
  br label %cleanup

if.else27:                                        ; preds = %cont4, %land.lhs.true
  switch i32 %itype, label %sw.default [
    i32 128, label %sw.bb
    i32 1024, label %sw.bb35
    i32 32, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.else27
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 123), align 1, !tbaa !1
  %tobool28 = icmp eq i8 %10, 0
  br i1 %tobool28, label %cleanup, label %if.end30

if.end30:                                         ; preds = %sw.bb
  %11 = icmp sgt i32 %c, -1
  br i1 %11, label %cont33, label %ioc_bb32

ioc_bb32:                                         ; preds = %if.end30
  %12 = sext i32 %c to i64
  call void @__ioc_report_conversion(i32 3188, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont33

cont33:                                           ; preds = %ioc_bb32, %if.end30
  %call34 = call i32 @iswalnum(i32 %c) nounwind
  br label %cleanup

sw.bb35:                                          ; preds = %if.else27
  %13 = icmp sgt i32 %c, -1
  br i1 %13, label %cont38, label %ioc_bb37

ioc_bb37:                                         ; preds = %sw.bb35
  %14 = sext i32 %c to i64
  call void @__ioc_report_conversion(i32 3192, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont38

cont38:                                           ; preds = %ioc_bb37, %sw.bb35
  %call39 = call i32 @iswalnum(i32 %c) nounwind
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %if.end42, label %cleanup

if.end42:                                         ; preds = %cont38
  %call43 = call i32 @wcwidth(i32 %c) nounwind
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end42
  %15 = load i32** getelementptr inbounds (%struct.widechar_array* @wordchars_wide, i32 0, i32 0), align 4, !tbaa !3
  %16 = load i32* getelementptr inbounds (%struct.widechar_array* @wordchars_wide, i32 0, i32 1), align 4, !tbaa !0
  %call48 = call i32* @wmemchr(i32* %15, i32 %c, i32 %16) nounwind readonly
  %tobool49 = icmp ne i32* %call48, null
  %lnot.ext = zext i1 %tobool49 to i32
  br label %cleanup

sw.bb51:                                          ; preds = %if.else27
  %17 = load i32** getelementptr inbounds (%struct.widechar_array* @ifs_wide, i32 0, i32 0), align 4, !tbaa !3
  %18 = load i32* getelementptr inbounds (%struct.widechar_array* @ifs_wide, i32 0, i32 1), align 4, !tbaa !0
  %call52 = call i32* @wmemchr(i32* %17, i32 %c, i32 %18) nounwind readonly
  %tobool53 = icmp ne i32* %call52, null
  %lnot.ext57 = zext i1 %tobool53 to i32
  br label %cleanup

sw.default:                                       ; preds = %if.else27
  %19 = icmp sgt i32 %c, -1
  br i1 %19, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %sw.default
  %20 = sext i32 %c to i64
  call void @__ioc_report_conversion(i32 3208, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %sw.default
  %call61 = call i32 @iswalnum(i32 %c) nounwind
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %cont38, %sw.bb, %cont60, %sw.bb51, %if.end47, %cont33, %cont22, %cont8, %cont
  %retval.0 = phi i32 [ %and10, %cont8 ], [ %and26, %cont22 ], [ %call61, %cont60 ], [ %lnot.ext57, %sw.bb51 ], [ %lnot.ext, %if.end47 ], [ %call34, %cont33 ], [ %and, %cont ], [ 0, %sw.bb ], [ 1, %cont38 ], [ 1, %if.end42 ]
  ret i32 %retval.0
}

define i8* @sepjoin(i8** nocapture %s, i8* %sep, i32 %heap) nounwind {
entry:
  %sepbuf = alloca [2 x i8], align 1
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i32 %heap, 0
  br i1 %tobool1, label %cond.false, label %return

cond.false:                                       ; preds = %if.then
  %call = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq i8* %sep, null
  br i1 %tobool2, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.end
  %1 = load i8** @ifs, align 4, !tbaa !3
  %tobool4 = icmp eq i8* %1, null
  br i1 %tobool4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 32
  br i1 %cmp, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %call7 = call i32 @mb_metacharlenconv(i8* %1, i32* null)
  %call8 = call i8* @dupstrpfx(i8* %1, i32 %call7) nounwind
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %arraydecay = getelementptr inbounds [2 x i8]* %sepbuf, i32 0, i32 0
  %incdec.ptr = getelementptr inbounds [2 x i8]* %sepbuf, i32 0, i32 1
  store i8 32, i8* %arraydecay, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !1
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then6, %if.else
  %sep.addr.0 = phi i8* [ %sep, %if.end ], [ %call8, %if.then6 ], [ %arraydecay, %if.else ]
  %call13 = call i32 @strlen(i8* %sep.addr.0) nounwind readonly
  %3 = zext i32 %call13 to i64
  %4 = icmp sgt i32 %call13, -1
  br i1 %4, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %if.end12
  call void @__ioc_report_conversion(i32 2862, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %if.end12
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 1, i32 %call13)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  %8 = sext i32 %call13 to i64
  br i1 %7, label %ioc_bb16, label %for.cond.preheader

ioc_bb16:                                         ; preds = %cont15
  call void @__ioc_report_sub_overflow(i32 2863, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 1, i64 %8, i8 13) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cont15, %ioc_bb16
  %9 = load i8** %s, align 4, !tbaa !3
  %tobool1874 = icmp eq i8* %9, null
  br i1 %tobool1874, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond.preheader, %cont25
  %10 = phi i8* [ %20, %cont25 ], [ %9, %for.cond.preheader ]
  %l.076 = phi i32 [ %16, %cont25 ], [ %6, %for.cond.preheader ]
  %t.075 = phi i8** [ %incdec.ptr26, %cont25 ], [ %s, %for.cond.preheader ]
  %call19 = call i32 @strlen(i8* %10) nounwind readonly
  br i1 %4, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %for.inc
  call void @__ioc_report_conversion(i32 2863, i32 57, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %for.inc
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call19, i32 %call13)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %cont21
  %14 = zext i32 %call19 to i64
  call void @__ioc_report_add_overflow(i32 2863, i32 55, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %14, i64 %3, i8 5) nounwind
  br label %cont23

cont23:                                           ; preds = %cont21, %ioc_bb22
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %l.076, i32 %12)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb24, label %cont25

ioc_bb24:                                         ; preds = %cont23
  %18 = sext i32 %12 to i64
  %19 = sext i32 %l.076 to i64
  call void @__ioc_report_add_overflow(i32 2863, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind
  br label %cont25

cont25:                                           ; preds = %cont23, %ioc_bb24
  %incdec.ptr26 = getelementptr inbounds i8** %t.075, i32 1
  %20 = load i8** %incdec.ptr26, align 4, !tbaa !3
  %tobool18 = icmp eq i8* %20, null
  br i1 %tobool18, label %for.end, label %for.inc

for.end:                                          ; preds = %cont25, %for.cond.preheader
  %l.0.lcssa = phi i32 [ %6, %for.cond.preheader ], [ %16, %cont25 ]
  %tobool27 = icmp eq i32 %heap, 0
  %21 = sext i32 %l.0.lcssa to i64
  %22 = icmp sgt i32 %l.0.lcssa, -1
  br i1 %tobool27, label %cond.false33, label %cond.true28

cond.true28:                                      ; preds = %for.end
  br i1 %22, label %cont31, label %ioc_bb30

ioc_bb30:                                         ; preds = %cond.true28
  call void @__ioc_report_conversion(i32 2865, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb30, %cond.true28
  %call32 = call i8* @hcalloc(i32 %l.0.lcssa) nounwind
  br label %cond.end38

cond.false33:                                     ; preds = %for.end
  br i1 %22, label %cont36, label %ioc_bb35

ioc_bb35:                                         ; preds = %cond.false33
  call void @__ioc_report_conversion(i32 2865, i32 62, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont36

cont36:                                           ; preds = %ioc_bb35, %cond.false33
  %call37 = call i8* @zshcalloc(i32 %l.0.lcssa) nounwind
  br label %cond.end38

cond.end38:                                       ; preds = %cont36, %cont31
  %cond39 = phi i8* [ %call32, %cont31 ], [ %call37, %cont36 ]
  %23 = load i8** %s, align 4, !tbaa !3
  %tobool4071 = icmp eq i8* %23, null
  br i1 %tobool4071, label %cont46, label %while.cond.i64.preheader

while.cond.i64.preheader:                         ; preds = %cond.end38, %while.cond.backedge
  %24 = phi i8* [ %.pre, %while.cond.backedge ], [ %23, %cond.end38 ]
  %t.173 = phi i8** [ %incdec.ptr41, %while.cond.backedge ], [ %s, %cond.end38 ]
  %arraydecay7072 = phi i8* [ %u.0.i, %while.cond.backedge ], [ %cond39, %cond.end38 ]
  br label %while.cond.i64

while.cond.i64:                                   ; preds = %while.cond.i64.preheader, %while.cond.i64
  %t.addr.0.i59 = phi i8* [ %incdec.ptr.i61, %while.cond.i64 ], [ %24, %while.cond.i64.preheader ]
  %u.0.i60 = phi i8* [ %incdec.ptr1.i62, %while.cond.i64 ], [ %arraydecay7072, %while.cond.i64.preheader ]
  %incdec.ptr.i61 = getelementptr inbounds i8* %t.addr.0.i59, i32 1
  %25 = load i8* %t.addr.0.i59, align 1, !tbaa !1
  %incdec.ptr1.i62 = getelementptr inbounds i8* %u.0.i60, i32 1
  store i8 %25, i8* %u.0.i60, align 1, !tbaa !1
  %tobool.i63 = icmp eq i8 %25, 0
  br i1 %tobool.i63, label %strucpy.exit65, label %while.cond.i64

strucpy.exit65:                                   ; preds = %while.cond.i64
  %incdec.ptr41 = getelementptr inbounds i8** %t.173, i32 1
  %26 = load i8** %incdec.ptr41, align 4, !tbaa !3
  %tobool42 = icmp eq i8* %26, null
  br i1 %tobool42, label %cont46, label %while.cond.i

while.cond.backedge:                              ; preds = %while.cond.i
  %.pre = load i8** %incdec.ptr41, align 4, !tbaa !3
  %tobool40 = icmp eq i8* %.pre, null
  br i1 %tobool40, label %cont46, label %while.cond.i64.preheader

while.cond.i:                                     ; preds = %strucpy.exit65, %while.cond.i
  %t.addr.0.i = phi i8* [ %incdec.ptr.i, %while.cond.i ], [ %sep.addr.0, %strucpy.exit65 ]
  %u.0.i = phi i8* [ %incdec.ptr1.i, %while.cond.i ], [ %u.0.i60, %strucpy.exit65 ]
  %incdec.ptr.i = getelementptr inbounds i8* %t.addr.0.i, i32 1
  %27 = load i8* %t.addr.0.i, align 1, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i8* %u.0.i, i32 1
  store i8 %27, i8* %u.0.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %27, 0
  br i1 %tobool.i, label %while.cond.backedge, label %while.cond.i

cont46:                                           ; preds = %strucpy.exit65, %while.cond.backedge, %cond.end38
  %arraydecay70.lcssa = phi i8* [ %cond39, %cond.end38 ], [ %u.0.i, %while.cond.backedge ], [ %u.0.i60, %strucpy.exit65 ]
  store i8 0, i8* %arraydecay70.lcssa, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %cond.false, %if.then, %cont46
  %retval.0 = phi i8* [ %cond39, %cont46 ], [ %call, %cond.false ], [ getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), %if.then ]
  ret i8* %retval.0
}

define i8** @sepsplit(i8* %s, i8* %sep, i32 %allownull, i32 %heap) nounwind {
entry:
  %t = alloca i8*, align 4
  %0 = load i8* %s, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 2886, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp = icmp eq i8 %0, -99
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8* %s, i32 1
  %1 = load i8* %arrayidx2, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  %arrayidx2.s = select i1 %tobool, i8* %arrayidx2, i8* %s
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %arrayidx2.s, %land.lhs.true ]
  %tobool3 = icmp eq i8* %sep, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %call = call i8** @spacesplit(i8* %s.addr.0, i32 %allownull, i32 %heap, i32 0)
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @strlen(i8* %sep) nounwind readonly
  %2 = icmp sgt i32 %call6, -1
  br i1 %2, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %if.end5
  %3 = zext i32 %call6 to i64
  call void @__ioc_report_conversion(i32 2890, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %if.end5
  %call9 = call i32 @wordcount(i8* %s.addr.0, i8* %sep, i32 1)
  %tobool10 = icmp ne i32 %heap, 0
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call9, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  %7 = sext i32 %call9 to i64
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont8
  br i1 %6, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %cond.true
  call void @__ioc_report_add_overflow(i32 2892, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %cond.true, %ioc_bb11
  %8 = icmp sgt i32 %5, -1
  br i1 %8, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont12
  %9 = sext i32 %5 to i64
  call void @__ioc_report_conversion(i32 2892, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %cont12
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb15, label %cont16

ioc_bb15:                                         ; preds = %cont14
  %13 = zext i32 %5 to i64
  call void @__ioc_report_mul_overflow(i32 2892, i32 44, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %13, i64 4, i8 5) nounwind
  br label %cont16

cont16:                                           ; preds = %cont14, %ioc_bb15
  %call17 = call i8* @hcalloc(i32 %11) nounwind
  br label %cond.end

cond.false:                                       ; preds = %cont8
  br i1 %6, label %ioc_bb18, label %cont19

ioc_bb18:                                         ; preds = %cond.false
  call void @__ioc_report_add_overflow(i32 2892, i32 90, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont19

cont19:                                           ; preds = %cond.false, %ioc_bb18
  %14 = icmp sgt i32 %5, -1
  br i1 %14, label %cont22, label %ioc_bb21

ioc_bb21:                                         ; preds = %cont19
  %15 = sext i32 %5 to i64
  call void @__ioc_report_conversion(i32 2892, i32 87, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont22

cont22:                                           ; preds = %ioc_bb21, %cont19
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %cont22
  %19 = zext i32 %5 to i64
  call void @__ioc_report_mul_overflow(i32 2892, i32 95, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %19, i64 4, i8 5) nounwind
  br label %cont24

cont24:                                           ; preds = %cont22, %ioc_bb23
  %call25 = call i8* @zshcalloc(i32 %17) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cont24, %cont16
  %call17.sink = phi i8* [ %call17, %cont16 ], [ %call25, %cont24 ]
  %20 = bitcast i8* %call17.sink to i8**
  br label %for.cond

for.cond:                                         ; preds = %cont55, %cond.end
  %21 = phi i8* [ %s.addr.0, %cond.end ], [ %add.ptr, %cont55 ]
  %n.0 = phi i32 [ %call9, %cond.end ], [ %23, %cont55 ]
  %p.0 = phi i8** [ %20, %cond.end ], [ %incdec.ptr63, %cont55 ]
  store i8* %21, i8** %t, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.0, i32 -1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb26, label %cont27

ioc_bb26:                                         ; preds = %for.cond
  %25 = sext i32 %n.0 to i64
  call void @__ioc_report_add_overflow(i32 2893, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %25, i64 -1, i8 13) nounwind
  br label %cont27

cont27:                                           ; preds = %for.cond, %ioc_bb26
  %tobool28 = icmp eq i32 %n.0, 0
  br i1 %tobool28, label %for.end, label %for.body

for.body:                                         ; preds = %cont27
  %call29 = call fastcc i32 @findsep(i8** %t, i8* %sep, i32 0)
  %26 = load i8** %t, align 4, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  %30 = sext i32 %sub.ptr.sub to i64
  br i1 %tobool10, label %cond.true31, label %cond.false38

cond.true31:                                      ; preds = %for.body
  br i1 %29, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %cond.true31
  call void @__ioc_report_add_overflow(i32 2896, i32 43, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %cond.true31, %ioc_bb32
  %31 = icmp sgt i32 %28, -1
  br i1 %31, label %cont36, label %ioc_bb35

ioc_bb35:                                         ; preds = %cont33
  %32 = sext i32 %28 to i64
  call void @__ioc_report_conversion(i32 2896, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont36

cont36:                                           ; preds = %ioc_bb35, %cont33
  %call37 = call i8* @hcalloc(i32 %28) nounwind
  br label %cond.end48

cond.false38:                                     ; preds = %for.body
  br i1 %29, label %ioc_bb42, label %cont43

ioc_bb42:                                         ; preds = %cond.false38
  call void @__ioc_report_add_overflow(i32 2896, i32 81, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont43

cont43:                                           ; preds = %cond.false38, %ioc_bb42
  %33 = icmp sgt i32 %28, -1
  br i1 %33, label %cont46, label %ioc_bb45

ioc_bb45:                                         ; preds = %cont43
  %34 = sext i32 %28 to i64
  call void @__ioc_report_conversion(i32 2896, i32 73, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont46

cont46:                                           ; preds = %ioc_bb45, %cont43
  %call47 = call i8* @zshcalloc(i32 %28) nounwind
  br label %cond.end48

cond.end48:                                       ; preds = %cont46, %cont36
  %cond49 = phi i8* [ %call37, %cont36 ], [ %call47, %cont46 ]
  store i8* %cond49, i8** %p.0, align 4, !tbaa !3
  %35 = load i8** %t, align 4, !tbaa !3
  %sub.ptr.lhs.cast50 = ptrtoint i8* %35 to i32
  %sub.ptr.sub52 = sub i32 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast
  %36 = icmp sgt i32 %sub.ptr.sub52, -1
  br i1 %36, label %cont55, label %ioc_bb54

ioc_bb54:                                         ; preds = %cond.end48
  %37 = sext i32 %sub.ptr.sub52 to i64
  call void @__ioc_report_conversion(i32 2897, i32 5, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont55

cont55:                                           ; preds = %ioc_bb54, %cond.end48
  %call56 = call i8* @strncpy(i8* %cond49, i8* %21, i32 %sub.ptr.sub52) nounwind
  %38 = load i8** %t, align 4, !tbaa !3
  %sub.ptr.lhs.cast59 = ptrtoint i8* %38 to i32
  %sub.ptr.sub61 = sub i32 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast
  %39 = load i8** %p.0, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds i8* %39, i32 %sub.ptr.sub61
  store i8 0, i8* %arrayidx62, align 1, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i8** %p.0, i32 1
  %add.ptr = getelementptr inbounds i8* %38, i32 %call6
  br label %for.cond

for.end:                                          ; preds = %cont27
  store i8* null, i8** %p.0, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %for.end, %if.then4
  %retval.0 = phi i8** [ %20, %for.end ], [ %call, %if.then4 ]
  ret i8** %retval.0
}

define i8** @subst_string_by_func(%struct.shfunc* %func, i8* %arg1, i8* %orig) nounwind {
entry:
  %0 = load i32* @sfcontext, align 4, !tbaa !0
  %1 = load i32* @stopmsg, align 4, !tbaa !0
  %2 = load i32* @incompfunc, align 4, !tbaa !0
  %call = tail call %union.linkroot* @newlinklist() nounwind
  %last = getelementptr inbounds %union.linkroot* %call, i32 0, i32 0, i32 1
  %3 = load %struct.linknode** %last, align 4, !tbaa !3
  %nam = getelementptr inbounds %struct.shfunc* %func, i32 0, i32 0, i32 1
  %4 = load i8** %nam, align 4, !tbaa !3
  %call1 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call, %struct.linknode* %3, i8* %4) nounwind
  %tobool = icmp eq i8* %arg1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.linknode** %last, align 4, !tbaa !3
  %call4 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call, %struct.linknode* %5, i8* %arg1) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %6 = load %struct.linknode** %last, align 4, !tbaa !3
  %call7 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call, %struct.linknode* %6, i8* %orig) nounwind
  store i32 7, i32* @sfcontext, align 4, !tbaa !0
  store i32 0, i32* @incompfunc, align 4, !tbaa !0
  %call8 = tail call i32 @doshfunc(%struct.shfunc* %func, %union.linkroot* %call, i32 1) nounwind
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.end12

if.else:                                          ; preds = %if.end
  %call11 = tail call i8** @getaparam(i8* getelementptr inbounds ([6 x i8]* @.str52, i32 0, i32 0)) nounwind
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.else
  %ret.0 = phi i8** [ %call11, %if.else ], [ null, %if.end ]
  store i32 %0, i32* @sfcontext, align 4, !tbaa !0
  store i32 %1, i32* @stopmsg, align 4, !tbaa !0
  store i32 %2, i32* @incompfunc, align 4, !tbaa !0
  ret i8** %ret.0
}

declare %union.linkroot* @newlinklist()

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

define i8** @mkarray(i8* %s) nounwind {
entry:
  %tobool = icmp ne i8* %s, null
  %cond = select i1 %tobool, i32 8, i32 4
  %call = tail call i8* @zalloc(i32 %cond) nounwind
  %0 = bitcast i8* %call to i8**
  store i8* %s, i8** %0, align 4, !tbaa !3
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %call, i32 4
  %1 = bitcast i8* %arrayidx to i8**
  store i8* null, i8** %1, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8** %0
}

define i8* @getkeystring(i8* %s, i32* nocapture %len, i32 %how, i32* %misc) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %tmp = alloca [1 x i8], align 1
  %wc = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !3
  %and = and i32 %how, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x i8]* %tmp, i32 0, i32 0
  %and622.pre = and i32 %how, 16
  br label %for.cond76.preheader

for.cond:                                         ; preds = %entry, %for.inc
  %t.0 = phi i8* [ %incdec.ptr48, %for.inc ], [ %s, %entry ]
  %maxlen.0 = phi i32 [ %maxlen.2, %for.inc ], [ 1, %entry ]
  %0 = load i8* %t.0, align 1, !tbaa !1
  switch i8 %0, label %if.else44 [
    i8 0, label %cont52
    i8 92, label %if.then20
  ]

if.then20:                                        ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8* %t.0, i32 1
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %1, label %if.else40 [
    i8 0, label %if.then22
    i8 117, label %if.then33
    i8 85, label %if.then33
  ]

if.then22:                                        ; preds = %if.then20
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %maxlen.0, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb23, label %cont52

ioc_bb23:                                         ; preds = %if.then22
  %5 = sext i32 %maxlen.0 to i64
  call void @__ioc_report_add_overflow(i32 4820, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont52

if.then33:                                        ; preds = %if.then20, %if.then20
  %call = call i32 @__ctype_get_mb_cur_max() nounwind
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 2)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %if.then33
  %9 = zext i32 %call to i64
  call void @__ioc_report_mul_overflow(i32 4824, i32 46, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %9, i64 2, i8 5) nounwind
  br label %cont37

cont37:                                           ; preds = %if.then33, %ioc_bb36
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %maxlen.0, i32 %7)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb38, label %for.inc

ioc_bb38:                                         ; preds = %cont37
  %13 = sext i32 %7 to i64
  %14 = sext i32 %maxlen.0 to i64
  call void @__ioc_report_add_overflow(i32 4824, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %14, i64 %13, i8 13) nounwind
  br label %for.inc

if.else40:                                        ; preds = %if.then20
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %maxlen.0, i32 2)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb41, label %for.inc

ioc_bb41:                                         ; preds = %if.else40
  %18 = sext i32 %maxlen.0 to i64
  call void @__ioc_report_add_overflow(i32 4826, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %18, i64 2, i8 13) nounwind
  br label %for.inc

if.else44:                                        ; preds = %for.cond
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %maxlen.0, i32 1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb45, label %for.inc

ioc_bb45:                                         ; preds = %if.else44
  %22 = sext i32 %maxlen.0 to i64
  call void @__ioc_report_add_overflow(i32 4831, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %22, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb45, %if.else44, %cont37, %ioc_bb38, %if.else40, %ioc_bb41
  %t.1 = phi i8* [ %arrayidx, %ioc_bb41 ], [ %arrayidx, %if.else40 ], [ %arrayidx, %ioc_bb38 ], [ %arrayidx, %cont37 ], [ %t.0, %if.else44 ], [ %t.0, %ioc_bb45 ]
  %maxlen.2 = phi i32 [ %16, %ioc_bb41 ], [ %16, %if.else40 ], [ %11, %ioc_bb38 ], [ %11, %cont37 ], [ %20, %if.else44 ], [ %20, %ioc_bb45 ]
  %incdec.ptr48 = getelementptr inbounds i8* %t.1, i32 1
  br label %for.cond

cont52:                                           ; preds = %for.cond, %ioc_bb23, %if.then22
  %maxlen.3 = phi i32 [ %3, %if.then22 ], [ %3, %ioc_bb23 ], [ %maxlen.0, %for.cond ]
  %and53 = and i32 %how, 16
  %tobool54 = icmp eq i32 %and53, 0
  %23 = sext i32 %maxlen.3 to i64
  %24 = icmp sgt i32 %maxlen.3, -1
  br i1 %tobool54, label %if.else69, label %if.then55

if.then55:                                        ; preds = %cont52
  br i1 %24, label %cont57, label %ioc_bb56

ioc_bb56:                                         ; preds = %if.then55
  call void @__ioc_report_conversion(i32 4851, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont57

cont57:                                           ; preds = %ioc_bb56, %if.then55
  %call58 = call i8* @zhalloc(i32 %maxlen.3) nounwind
  %call59 = call i32 @__ctype_get_mb_cur_max() nounwind
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call59, i32 3)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb62, label %cont65

ioc_bb62:                                         ; preds = %cont57
  %28 = zext i32 %call59 to i64
  call void @__ioc_report_mul_overflow(i32 4852, i32 52, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %28, i64 3, i8 5) nounwind
  br label %cont65

cont65:                                           ; preds = %ioc_bb62, %cont57
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb66, label %cont67

ioc_bb66:                                         ; preds = %cont65
  %32 = zext i32 %26 to i64
  call void @__ioc_report_add_overflow(i32 4852, i32 56, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind
  br label %cont67

cont67:                                           ; preds = %cont65, %ioc_bb66
  %call68 = call i8* @zhalloc(i32 %30) nounwind
  br label %for.cond76.preheader

if.else69:                                        ; preds = %cont52
  br i1 %24, label %cont72, label %ioc_bb71

ioc_bb71:                                         ; preds = %if.else69
  call void @__ioc_report_conversion(i32 4855, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont72

cont72:                                           ; preds = %ioc_bb71, %if.else69
  %call73 = call i8* @zhalloc(i32 %maxlen.3) nounwind
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %cont67, %cont72, %if.then
  %and622.pre-phi = phi i32 [ %and53, %cont67 ], [ 0, %cont72 ], [ %and622.pre, %if.then ]
  %tdest.0.ph = phi i8* [ %call58, %cont67 ], [ null, %cont72 ], [ null, %if.then ]
  %t.2.ph = phi i8* [ %call68, %cont67 ], [ %call73, %cont72 ], [ %arraydecay, %if.then ]
  %tbuf.0.ph = phi i8* [ %call68, %cont67 ], [ null, %cont72 ], [ null, %if.then ]
  %buf.0.ph = phi i8* [ %call58, %cont67 ], [ %call73, %cont72 ], [ %arraydecay, %if.then ]
  %tobool623 = icmp ne i32 %and622.pre-phi, 0
  %and649 = and i32 %how, 4
  %tobool650 = icmp eq i32 %and649, 0
  %tobool.not = xor i1 %tobool, true
  %tobool820 = icmp eq i32 %and622.pre-phi, 0
  %arraydecay877 = getelementptr inbounds [1 x i8]* %tmp, i32 0, i32 0
  %and91 = and i32 %how, 128
  %tobool92 = icmp ne i32 %and91, 0
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i32
  %and599 = and i32 %how, 2
  %tobool600 = icmp ne i32 %and599, 0
  %and517 = and i32 %how, 1
  %tobool518 = icmp eq i32 %and517, 0
  %and573 = and i32 %how, 256
  %tobool574 = icmp ne i32 %and573, 0
  %tobool136 = icmp eq i32 %and599, 0
  %and221 = and i32 %how, 32
  %tobool222 = icmp eq i32 %and221, 0
  %and230 = and i32 %how, 8
  %tobool231 = icmp eq i32 %and230, 0
  %.pre = load i8** %s.addr, align 4, !tbaa !3
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc888
  %33 = phi i8* [ %incdec.ptr889, %for.inc888 ], [ %.pre, %for.cond76.preheader ]
  %tdest.0 = phi i8* [ %tdest.8, %for.inc888 ], [ %tdest.0.ph, %for.cond76.preheader ]
  %u.0 = phi i8* [ %u.3, %for.inc888 ], [ null, %for.cond76.preheader ]
  %t.2 = phi i8* [ %t.7, %for.inc888 ], [ %t.2.ph, %for.cond76.preheader ]
  %meta.0 = phi i32 [ %meta.3, %for.inc888 ], [ 0, %for.cond76.preheader ]
  %control.0 = phi i32 [ %control.2, %for.inc888 ], [ 0, %for.cond76.preheader ]
  %ignoring.0 = phi i32 [ %ignoring.6, %for.inc888 ], [ 0, %for.cond76.preheader ]
  %34 = load i8* %33, align 1, !tbaa !1
  switch i8 %34, label %cont621 [
    i8 0, label %cont892
    i8 92, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds i8* %33, i32 1
  %35 = load i8* %arrayidx82, align 1, !tbaa !1
  %tobool84 = icmp eq i8 %35, 0
  br i1 %tobool84, label %cont621, label %cont90

cont90:                                           ; preds = %land.lhs.true
  br i1 %tobool92, label %land.lhs.true93, label %if.end100

land.lhs.true93:                                  ; preds = %cont90
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load i32* %misc, align 4, !tbaa !0
  %cmp94 = icmp slt i32 %sub.ptr.sub, %36
  br i1 %cmp94, label %if.then96, label %if.end100

if.then96:                                        ; preds = %land.lhs.true93
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 -1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb97, label %cont98

ioc_bb97:                                         ; preds = %if.then96
  %40 = sext i32 %36 to i64
  call void @__ioc_report_add_overflow(i32 4862, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %40, i64 -1, i8 13) nounwind
  %.pre1151.pre = load i8** %s.addr, align 4, !tbaa !3
  br label %cont98

cont98:                                           ; preds = %if.then96, %ioc_bb97
  %.pre1151 = phi i8* [ %33, %if.then96 ], [ %.pre1151.pre, %ioc_bb97 ]
  store i32 %38, i32* %misc, align 4, !tbaa !0
  br label %if.end100

if.end100:                                        ; preds = %cont90, %land.lhs.true93, %cont98
  %41 = phi i8* [ %.pre1151, %cont98 ], [ %33, %land.lhs.true93 ], [ %33, %cont90 ]
  %miscadded.0 = phi i32 [ 1, %cont98 ], [ 0, %land.lhs.true93 ], [ 0, %cont90 ]
  %incdec.ptr101 = getelementptr inbounds i8* %41, i32 1
  store i8* %incdec.ptr101, i8** %s.addr, align 4, !tbaa !3
  %42 = load i8* %incdec.ptr101, align 1, !tbaa !1
  %conv102 = sext i8 %42 to i32
  switch i32 %conv102, label %def [
    i32 97, label %cont104
    i32 110, label %cont108
    i32 98, label %cont112
    i32 116, label %cont116
    i32 118, label %cont120
    i32 102, label %cont124
    i32 114, label %cont128
    i32 69, label %cont134
    i32 101, label %cont150
    i32 77, label %cont156
    i32 67, label %cont184
    i32 -125, label %sw.bb206
    i32 45, label %cont220
    i32 99, label %cont229
    i32 85, label %cont243
    i32 117, label %cont260
    i32 39, label %cont486
    i32 92, label %cont486
  ]

cont104:                                          ; preds = %if.end100
  %incdec.ptr105 = getelementptr inbounds i8* %t.2, i32 1
  store i8 7, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont108:                                          ; preds = %if.end100
  %incdec.ptr109 = getelementptr inbounds i8* %t.2, i32 1
  store i8 10, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont112:                                          ; preds = %if.end100
  %incdec.ptr113 = getelementptr inbounds i8* %t.2, i32 1
  store i8 8, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont116:                                          ; preds = %if.end100
  %incdec.ptr117 = getelementptr inbounds i8* %t.2, i32 1
  store i8 9, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont120:                                          ; preds = %if.end100
  %incdec.ptr121 = getelementptr inbounds i8* %t.2, i32 1
  store i8 11, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont124:                                          ; preds = %if.end100
  %incdec.ptr125 = getelementptr inbounds i8* %t.2, i32 1
  store i8 12, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont128:                                          ; preds = %if.end100
  %incdec.ptr129 = getelementptr inbounds i8* %t.2, i32 1
  store i8 13, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont134:                                          ; preds = %if.end100
  br i1 %tobool136, label %cont139, label %cont150

cont139:                                          ; preds = %cont134
  %incdec.ptr140 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %43 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr141 = getelementptr inbounds i8* %43, i32 -1
  store i8* %incdec.ptr141, i8** %s.addr, align 4, !tbaa !3
  %tobool142 = icmp eq i32 %miscadded.0, 0
  br i1 %tobool142, label %for.inc888, label %if.then143

if.then143:                                       ; preds = %cont139
  %44 = load i32* %misc, align 4, !tbaa !0
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %44, i32 1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb144, label %cont145

ioc_bb144:                                        ; preds = %if.then143
  %48 = sext i32 %44 to i64
  call void @__ioc_report_add_overflow(i32 4910, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %48, i64 1, i8 13) nounwind
  br label %cont145

cont145:                                          ; preds = %if.then143, %ioc_bb144
  store i32 %46, i32* %misc, align 4, !tbaa !0
  br label %for.inc888

cont150:                                          ; preds = %if.end100, %cont134
  %incdec.ptr151 = getelementptr inbounds i8* %t.2, i32 1
  store i8 27, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont156:                                          ; preds = %if.end100
  br i1 %tobool136, label %if.else169, label %if.then159

if.then159:                                       ; preds = %cont156
  %arrayidx160 = getelementptr inbounds i8* %41, i32 2
  %49 = load i8* %arrayidx160, align 1, !tbaa !1
  %cmp162 = icmp eq i8 %49, 45
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.then159
  store i8* %arrayidx160, i8** %s.addr, align 4, !tbaa !3
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.then159
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %control.0, i32 1)
  %51 = extractvalue { i32, i1 } %50, 0
  %52 = extractvalue { i32, i1 } %50, 1
  br i1 %52, label %ioc_bb167, label %for.inc888

ioc_bb167:                                        ; preds = %if.end166
  %53 = sext i32 %control.0 to i64
  call void @__ioc_report_add_overflow(i32 4926, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 1, i64 %53, i8 13) nounwind
  br label %for.inc888

if.else169:                                       ; preds = %cont156
  %tobool170 = icmp eq i32 %miscadded.0, 0
  br i1 %tobool170, label %cont176, label %if.then171

if.then171:                                       ; preds = %if.else169
  %54 = load i32* %misc, align 4, !tbaa !0
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %54, i32 1)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb172, label %cont173

ioc_bb172:                                        ; preds = %if.then171
  %58 = sext i32 %54 to i64
  call void @__ioc_report_add_overflow(i32 4930, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont173

cont173:                                          ; preds = %if.then171, %ioc_bb172
  store i32 %56, i32* %misc, align 4, !tbaa !0
  br label %cont176

cont176:                                          ; preds = %cont173, %if.else169
  %incdec.ptr177 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %59 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr178 = getelementptr inbounds i8* %59, i32 -1
  store i8* %incdec.ptr178, i8** %s.addr, align 4, !tbaa !3
  br label %for.inc888

cont184:                                          ; preds = %if.end100
  br i1 %tobool136, label %if.else195, label %if.then187

if.then187:                                       ; preds = %cont184
  %arrayidx188 = getelementptr inbounds i8* %41, i32 2
  %60 = load i8* %arrayidx188, align 1, !tbaa !1
  %cmp190 = icmp eq i8 %60, 45
  br i1 %cmp190, label %if.then192, label %for.inc888

if.then192:                                       ; preds = %if.then187
  store i8* %arrayidx188, i8** %s.addr, align 4, !tbaa !3
  br label %for.inc888

if.else195:                                       ; preds = %cont184
  %tobool196 = icmp eq i32 %miscadded.0, 0
  br i1 %tobool196, label %cont202, label %if.then197

if.then197:                                       ; preds = %if.else195
  %61 = load i32* %misc, align 4, !tbaa !0
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 1)
  %63 = extractvalue { i32, i1 } %62, 0
  %64 = extractvalue { i32, i1 } %62, 1
  br i1 %64, label %ioc_bb198, label %cont199

ioc_bb198:                                        ; preds = %if.then197
  %65 = sext i32 %61 to i64
  call void @__ioc_report_add_overflow(i32 4945, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %65, i64 1, i8 13) nounwind
  br label %cont199

cont199:                                          ; preds = %if.then197, %ioc_bb198
  store i32 %63, i32* %misc, align 4, !tbaa !0
  br label %cont202

cont202:                                          ; preds = %cont199, %if.else195
  %incdec.ptr203 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %66 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr204 = getelementptr inbounds i8* %66, i32 -1
  store i8* %incdec.ptr204, i8** %s.addr, align 4, !tbaa !3
  br label %for.inc888

sw.bb206:                                         ; preds = %if.end100
  %tobool207 = icmp eq i32 %miscadded.0, 0
  br i1 %tobool207, label %cont213, label %if.then208

if.then208:                                       ; preds = %sw.bb206
  %67 = load i32* %misc, align 4, !tbaa !0
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %67, i32 1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb209, label %cont210

ioc_bb209:                                        ; preds = %if.then208
  %71 = sext i32 %67 to i64
  call void @__ioc_report_add_overflow(i32 4953, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind
  br label %cont210

cont210:                                          ; preds = %if.then208, %ioc_bb209
  store i32 %69, i32* %misc, align 4, !tbaa !0
  br label %cont213

cont213:                                          ; preds = %cont210, %sw.bb206
  %incdec.ptr214 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %72 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr215 = getelementptr inbounds i8* %72, i32 -1
  store i8* %incdec.ptr215, i8** %s.addr, align 4, !tbaa !3
  br label %if.end773

cont220:                                          ; preds = %if.end100
  br i1 %tobool222, label %def, label %if.then223

if.then223:                                       ; preds = %cont220
  store i32 1, i32* %misc, align 4, !tbaa !0
  br label %if.end773

cont229:                                          ; preds = %if.end100
  br i1 %tobool231, label %def, label %if.then232

if.then232:                                       ; preds = %cont229
  store i32 1, i32* %misc, align 4, !tbaa !0
  store i8 0, i8* %t.2, align 1, !tbaa !1
  %sub.ptr.lhs.cast235 = ptrtoint i8* %t.2 to i32
  %sub.ptr.rhs.cast236 = ptrtoint i8* %buf.0.ph to i32
  %sub.ptr.sub237 = sub i32 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  store i32 %sub.ptr.sub237, i32* %len, align 4, !tbaa !0
  br label %return

cont243:                                          ; preds = %if.end100
  br i1 %tobool92, label %land.lhs.true246, label %cont274

land.lhs.true246:                                 ; preds = %cont243
  %sub.ptr.lhs.cast247 = ptrtoint i8* %incdec.ptr101 to i32
  %sub.ptr.sub249 = sub i32 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast
  %73 = load i32* %misc, align 4, !tbaa !0
  %cmp250 = icmp slt i32 %sub.ptr.sub249, %73
  br i1 %cmp250, label %if.then252, label %land.lhs.true263

if.then252:                                       ; preds = %land.lhs.true246
  %74 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %73, i32 4)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb253, label %cont254

ioc_bb253:                                        ; preds = %if.then252
  %77 = sext i32 %73 to i64
  call void @__ioc_report_sub_overflow(i32 4977, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %77, i64 4, i8 13) nounwind
  br label %cont254

cont254:                                          ; preds = %if.then252, %ioc_bb253
  store i32 %75, i32* %misc, align 4, !tbaa !0
  br label %cont260

cont260:                                          ; preds = %cont254, %if.end100
  br i1 %tobool92, label %cont260.land.lhs.true263_crit_edge, label %cont274

cont260.land.lhs.true263_crit_edge:               ; preds = %cont260
  %.pre1161 = load i8** %s.addr, align 4, !tbaa !3
  %.pre1162 = load i32* %misc, align 4, !tbaa !0
  br label %land.lhs.true263

land.lhs.true263:                                 ; preds = %cont260.land.lhs.true263_crit_edge, %land.lhs.true246
  %78 = phi i32 [ %.pre1162, %cont260.land.lhs.true263_crit_edge ], [ %73, %land.lhs.true246 ]
  %79 = phi i8* [ %.pre1161, %cont260.land.lhs.true263_crit_edge ], [ %incdec.ptr101, %land.lhs.true246 ]
  %sub.ptr.lhs.cast264 = ptrtoint i8* %79 to i32
  %sub.ptr.sub266 = sub i32 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast
  %cmp267 = icmp slt i32 %sub.ptr.sub266, %78
  br i1 %cmp267, label %if.then269, label %cont274

if.then269:                                       ; preds = %land.lhs.true263
  %80 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %78, i32 6)
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  br i1 %82, label %ioc_bb270, label %cont271

ioc_bb270:                                        ; preds = %if.then269
  %83 = sext i32 %78 to i64
  call void @__ioc_report_sub_overflow(i32 4983, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %83, i64 6, i8 13) nounwind
  br label %cont271

cont271:                                          ; preds = %if.then269, %ioc_bb270
  store i32 %81, i32* %misc, align 4, !tbaa !0
  br label %cont274

cont274:                                          ; preds = %cont260, %land.lhs.true263, %cont271, %cont243
  %84 = load i8** %s.addr, align 4, !tbaa !3
  %85 = load i8* %84, align 1, !tbaa !1
  %cmp276 = icmp eq i8 %85, 117
  %cond = select i1 %cmp276, i32 4, i32 8
  br label %for.body281

for.body281:                                      ; preds = %for.cond278.backedge.for.body281_crit_edge, %cont274
  %86 = phi i8* [ %84, %cont274 ], [ %.pre1163, %for.cond278.backedge.for.body281_crit_edge ]
  %wval.01104 = phi i32 [ 0, %cont274 ], [ %wval.1, %for.cond278.backedge.for.body281_crit_edge ]
  %i.01103 = phi i32 [ %cond, %cont274 ], [ %126, %for.cond278.backedge.for.body281_crit_edge ]
  %incdec.ptr282 = getelementptr inbounds i8* %86, i32 1
  store i8* %incdec.ptr282, i8** %s.addr, align 4, !tbaa !3
  %87 = load i8* %incdec.ptr282, align 1, !tbaa !1
  %tobool284 = icmp eq i8 %87, 0
  br i1 %tobool284, label %if.else345, label %land.lhs.true285

land.lhs.true285:                                 ; preds = %for.body281
  %88 = icmp sgt i8 %87, -1
  br i1 %88, label %cont288, label %ioc_bb287

ioc_bb287:                                        ; preds = %land.lhs.true285
  %89 = sext i8 %87 to i64
  call void @__ioc_report_conversion(i32 4992, i32 51, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %89, i8 1) nounwind
  br label %cont288

cont288:                                          ; preds = %ioc_bb287, %land.lhs.true285
  %idxprom = zext i8 %87 to i32
  %arrayidx289 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %90 = load i16* %arrayidx289, align 2, !tbaa !5
  %and295 = and i16 %90, 1
  %tobool296 = icmp eq i16 %and295, 0
  br i1 %tobool296, label %if.else310, label %cont299

cont299:                                          ; preds = %cont288
  %91 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %wval.01104, i32 16)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb300, label %cont301

ioc_bb300:                                        ; preds = %cont299
  %94 = zext i32 %wval.01104 to i64
  call void @__ioc_report_mul_overflow(i32 4993, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %94, i64 16, i8 5) nounwind
  br label %cont301

cont301:                                          ; preds = %cont299, %ioc_bb300
  %95 = load i8** %s.addr, align 4, !tbaa !3
  %96 = load i8* %95, align 1, !tbaa !1
  %conv302 = sext i8 %96 to i32
  %97 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv302, i32 48)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb303, label %cont304

ioc_bb303:                                        ; preds = %cont301
  %100 = sext i8 %96 to i64
  call void @__ioc_report_sub_overflow(i32 4993, i32 41, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %100, i64 48, i8 13) nounwind
  br label %cont304

cont304:                                          ; preds = %cont301, %ioc_bb303
  %101 = icmp sgt i32 %98, -1
  br i1 %101, label %cont307, label %ioc_bb306

ioc_bb306:                                        ; preds = %cont304
  %102 = sext i32 %98 to i64
  call void @__ioc_report_conversion(i32 4993, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %102, i8 1) nounwind
  br label %cont307

cont307:                                          ; preds = %ioc_bb306, %cont304
  %103 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %92, i32 %98)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb308, label %for.inc349

ioc_bb308:                                        ; preds = %cont307
  %106 = zext i32 %98 to i64
  %107 = zext i32 %92 to i64
  call void @__ioc_report_add_overflow(i32 4993, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %107, i64 %106, i8 5) nounwind
  br label %for.inc349

if.else310:                                       ; preds = %cont288
  %.pre1164 = load i8** %s.addr, align 4, !tbaa !3
  %.pre1165 = load i8* %.pre1164, align 1, !tbaa !1
  %tobool312 = icmp eq i8 %.pre1165, 0
  br i1 %tobool312, label %if.else345, label %land.lhs.true313

land.lhs.true313:                                 ; preds = %if.else310
  %.off = add i8 %.pre1165, -97
  %108 = icmp ult i8 %.off, 6
  %.off1098 = add i8 %.pre1165, -65
  %109 = icmp ult i8 %.off1098, 6
  %or.cond = or i1 %108, %109
  br i1 %or.cond, label %cont331, label %if.else345

cont331:                                          ; preds = %land.lhs.true313
  %110 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %wval.01104, i32 16)
  %111 = extractvalue { i32, i1 } %110, 0
  %112 = extractvalue { i32, i1 } %110, 1
  br i1 %112, label %ioc_bb332, label %cont333

ioc_bb332:                                        ; preds = %cont331
  %113 = zext i32 %wval.01104 to i64
  call void @__ioc_report_mul_overflow(i32 4995, i32 27, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %113, i64 16, i8 5) nounwind
  %.pre1154 = load i8** %s.addr, align 4, !tbaa !3
  %.pre1155 = load i8* %.pre1154, align 1, !tbaa !1
  br label %cont333

cont333:                                          ; preds = %cont331, %ioc_bb332
  %114 = phi i8 [ %.pre1165, %cont331 ], [ %.pre1155, %ioc_bb332 ]
  %conv3341089 = zext i8 %114 to i32
  %and335 = and i32 %conv3341089, 31
  %115 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %111, i32 %and335)
  %116 = extractvalue { i32, i1 } %115, 0
  %117 = extractvalue { i32, i1 } %115, 1
  br i1 %117, label %ioc_bb339, label %cont342

ioc_bb339:                                        ; preds = %cont333
  %118 = zext i32 %and335 to i64
  %119 = zext i32 %111 to i64
  call void @__ioc_report_add_overflow(i32 4995, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %119, i64 %118, i8 5) nounwind
  br label %cont342

cont342:                                          ; preds = %ioc_bb339, %cont333
  %120 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %116, i32 9)
  %121 = extractvalue { i32, i1 } %120, 0
  %122 = extractvalue { i32, i1 } %120, 1
  br i1 %122, label %ioc_bb343, label %for.inc349

ioc_bb343:                                        ; preds = %cont342
  %123 = zext i32 %116 to i64
  call void @__ioc_report_add_overflow(i32 4995, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %123, i64 9, i8 5) nounwind
  br label %for.inc349

if.else345:                                       ; preds = %for.body281, %land.lhs.true313, %if.else310
  %124 = phi i8* [ %.pre1164, %land.lhs.true313 ], [ %.pre1164, %if.else310 ], [ %incdec.ptr282, %for.body281 ]
  %incdec.ptr346 = getelementptr inbounds i8* %124, i32 -1
  store i8* %incdec.ptr346, i8** %s.addr, align 4, !tbaa !3
  br label %cont356

for.inc349:                                       ; preds = %ioc_bb343, %cont342, %ioc_bb308, %cont307
  %wval.1 = phi i32 [ %104, %cont307 ], [ %104, %ioc_bb308 ], [ %121, %cont342 ], [ %121, %ioc_bb343 ]
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.01103, i32 -1)
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  br i1 %127, label %ioc_bb350, label %for.cond278.backedge

for.cond278.backedge:                             ; preds = %for.inc349, %ioc_bb350
  %cmp279 = icmp sgt i32 %126, 0
  br i1 %cmp279, label %for.cond278.backedge.for.body281_crit_edge, label %cont356

for.cond278.backedge.for.body281_crit_edge:       ; preds = %for.cond278.backedge
  %.pre1163 = load i8** %s.addr, align 4, !tbaa !3
  br label %for.body281

ioc_bb350:                                        ; preds = %for.inc349
  %128 = sext i32 %i.01103 to i64
  call void @__ioc_report_add_overflow(i32 4991, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %128, i64 -1, i8 13) nounwind
  br label %for.cond278.backedge

cont356:                                          ; preds = %for.cond278.backedge, %if.else345
  %wval.01102 = phi i32 [ %wval.01104, %if.else345 ], [ %wval.1, %for.cond278.backedge ]
  %129 = icmp sgt i32 %wval.01102, -1
  br i1 %tobool, label %if.then359, label %if.end362

if.then359:                                       ; preds = %cont356
  br i1 %129, label %cont361, label %ioc_bb360

ioc_bb360:                                        ; preds = %if.then359
  %130 = zext i32 %wval.01102 to i64
  call void @__ioc_report_conversion(i32 5002, i32 22, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %130, i8 0) nounwind
  br label %cont361

cont361:                                          ; preds = %if.then359, %ioc_bb360
  store i32 %wval.01102, i32* %misc, align 4, !tbaa !0
  %131 = load i8** %s.addr, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %131, i32 1
  br label %return

if.end362:                                        ; preds = %cont356
  br i1 %129, label %cont365, label %ioc_bb364

ioc_bb364:                                        ; preds = %if.end362
  %132 = zext i32 %wval.01102 to i64
  call void @__ioc_report_conversion(i32 5006, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %132, i8 0) nounwind
  br label %cont365

cont365:                                          ; preds = %ioc_bb364, %if.end362
  %call366 = call i32 @wctomb(i8* %t.2, i32 %wval.01102) nounwind
  %cmp369 = icmp eq i32 %call366, -1
  br i1 %cmp369, label %if.then371, label %cont426

if.then371:                                       ; preds = %cont365
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str62, i32 0, i32 0))
  br i1 %tobool820, label %cont418, label %while.cond

while.cond:                                       ; preds = %if.then371, %if.end398
  %tdest.1 = phi i8* [ %incdec.ptr380, %if.end398 ], [ %tdest.0, %if.then371 ]
  %133 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr379 = getelementptr inbounds i8* %133, i32 1
  store i8* %incdec.ptr379, i8** %s.addr, align 4, !tbaa !3
  %134 = load i8* %incdec.ptr379, align 1, !tbaa !1
  %incdec.ptr380 = getelementptr inbounds i8* %tdest.1, i32 1
  store i8 %134, i8* %tdest.1, align 1, !tbaa !1
  %tobool381 = icmp eq i8 %134, 0
  br i1 %tobool381, label %while.end, label %cont385

cont385:                                          ; preds = %while.cond
  br i1 %tobool92, label %if.then388, label %if.end398

if.then388:                                       ; preds = %cont385
  %135 = load i8** %s.addr, align 4, !tbaa !3
  %sub.ptr.lhs.cast389 = ptrtoint i8* %135 to i32
  %sub.ptr.sub391 = sub i32 %sub.ptr.lhs.cast389, %sub.ptr.rhs.cast
  %136 = load i32* %misc, align 4, !tbaa !0
  %cmp392 = icmp sgt i32 %sub.ptr.sub391, %136
  br i1 %cmp392, label %if.then394, label %if.end398

if.then394:                                       ; preds = %if.then388
  %137 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %136, i32 1)
  %138 = extractvalue { i32, i1 } %137, 0
  %139 = extractvalue { i32, i1 } %137, 1
  br i1 %139, label %ioc_bb395, label %cont396

ioc_bb395:                                        ; preds = %if.then394
  %140 = sext i32 %136 to i64
  call void @__ioc_report_add_overflow(i32 5013, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %140, i64 1, i8 13) nounwind
  br label %cont396

cont396:                                          ; preds = %if.then394, %ioc_bb395
  store i32 %138, i32* %misc, align 4, !tbaa !0
  br label %if.end398

if.end398:                                        ; preds = %cont385, %if.then388, %cont396
  %141 = load i8** %s.addr, align 4, !tbaa !3
  %142 = load i8* %141, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 5015, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 153, i8 1) nounwind
  %cmp402 = icmp eq i8 %142, -103
  br i1 %cmp402, label %if.then404, label %while.cond

if.then404:                                       ; preds = %if.end398
  %143 = load i8** %s.addr, align 4, !tbaa !3
  %sub.ptr.lhs.cast405 = ptrtoint i8* %143 to i32
  %sub.ptr.sub407 = sub i32 %sub.ptr.lhs.cast405, %sub.ptr.rhs.cast
  %144 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub407, i32 1)
  %145 = extractvalue { i32, i1 } %144, 0
  %146 = extractvalue { i32, i1 } %144, 1
  br i1 %146, label %ioc_bb408, label %cont409

ioc_bb408:                                        ; preds = %if.then404
  %147 = sext i32 %sub.ptr.sub407 to i64
  call void @__ioc_report_add_overflow(i32 5016, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %147, i64 1, i8 13) nounwind
  br label %cont409

cont409:                                          ; preds = %if.then404, %ioc_bb408
  store i32 %145, i32* %len, align 4, !tbaa !0
  store i8 0, i8* %incdec.ptr380, align 1, !tbaa !1
  br label %return

while.end:                                        ; preds = %while.cond
  %sub.ptr.lhs.cast413 = ptrtoint i8* %incdec.ptr380 to i32
  %sub.ptr.rhs.cast414 = ptrtoint i8* %buf.0.ph to i32
  %sub.ptr.sub415 = sub i32 %sub.ptr.lhs.cast413, %sub.ptr.rhs.cast414
  store i32 %sub.ptr.sub415, i32* %len, align 4, !tbaa !0
  br label %return

cont418:                                          ; preds = %if.then371
  store i8 0, i8* %t.2, align 1, !tbaa !1
  %sub.ptr.lhs.cast419 = ptrtoint i8* %t.2 to i32
  %sub.ptr.rhs.cast420 = ptrtoint i8* %buf.0.ph to i32
  %sub.ptr.sub421 = sub i32 %sub.ptr.lhs.cast419, %sub.ptr.rhs.cast420
  store i32 %sub.ptr.sub421, i32* %len, align 4, !tbaa !0
  br label %return

cont426:                                          ; preds = %cont365
  br i1 %tobool92, label %land.lhs.true429, label %if.end438

land.lhs.true429:                                 ; preds = %cont426
  %148 = load i8** %s.addr, align 4, !tbaa !3
  %sub.ptr.lhs.cast430 = ptrtoint i8* %148 to i32
  %sub.ptr.sub432 = sub i32 %sub.ptr.lhs.cast430, %sub.ptr.rhs.cast
  %149 = load i32* %misc, align 4, !tbaa !0
  %cmp433 = icmp slt i32 %sub.ptr.sub432, %149
  br i1 %cmp433, label %if.then435, label %if.end438

if.then435:                                       ; preds = %land.lhs.true429
  %150 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %149, i32 %call366)
  %151 = extractvalue { i32, i1 } %150, 0
  %152 = extractvalue { i32, i1 } %150, 1
  br i1 %152, label %ioc_bb436, label %cont437

ioc_bb436:                                        ; preds = %if.then435
  %153 = sext i32 %call366 to i64
  %154 = sext i32 %149 to i64
  call void @__ioc_report_add_overflow(i32 5029, i32 20, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %154, i64 %153, i8 13) nounwind
  br label %cont437

cont437:                                          ; preds = %if.then435, %ioc_bb436
  store i32 %151, i32* %misc, align 4, !tbaa !0
  br label %if.end438

if.end438:                                        ; preds = %cont437, %land.lhs.true429, %cont426
  %add.ptr439 = getelementptr inbounds i8* %t.2, i32 %call366
  br i1 %tobool820, label %for.inc888, label %for.cond448.preheader

for.cond448.preheader:                            ; preds = %if.end438
  %cmp4491105 = icmp ult i8* %tbuf.0.ph, %add.ptr439
  br i1 %cmp4491105, label %for.body451, label %for.inc888

for.body451:                                      ; preds = %for.cond448.preheader, %for.inc477
  %t2.01107 = phi i8* [ %incdec.ptr478, %for.inc477 ], [ %tbuf.0.ph, %for.cond448.preheader ]
  %tdest.21106 = phi i8* [ %tdest.3, %for.inc477 ], [ %tdest.0, %for.cond448.preheader ]
  %155 = load i8* %t2.01107, align 1, !tbaa !1
  %156 = icmp sgt i8 %155, -1
  br i1 %156, label %cont454, label %ioc_bb453

ioc_bb453:                                        ; preds = %for.body451
  %157 = sext i8 %155 to i64
  call void @__ioc_report_conversion(i32 5066, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %157, i8 1) nounwind
  br label %cont454

cont454:                                          ; preds = %ioc_bb453, %for.body451
  %idxprom455 = zext i8 %155 to i32
  %arrayidx456 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom455
  %158 = load i16* %arrayidx456, align 2, !tbaa !5
  %and462 = and i16 %158, 4096
  %tobool463 = icmp eq i16 %and462, 0
  br i1 %tobool463, label %if.else474, label %ioc_bb465

ioc_bb465:                                        ; preds = %cont454
  call void @__ioc_report_conversion(i32 5067, i32 39, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr467 = getelementptr inbounds i8* %tdest.21106, i32 1
  store i8 -125, i8* %tdest.21106, align 1, !tbaa !1
  %159 = load i8* %t2.01107, align 1, !tbaa !1
  %conv468 = sext i8 %159 to i32
  %xor = xor i32 %conv468, 32
  %xor.off = add i32 %xor, 128
  %160 = icmp ult i32 %xor.off, 256
  br i1 %160, label %cont471, label %ioc_bb470

ioc_bb470:                                        ; preds = %ioc_bb465
  %161 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 5068, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %161, i8 1) nounwind
  br label %cont471

cont471:                                          ; preds = %ioc_bb470, %ioc_bb465
  %conv472 = trunc i32 %xor to i8
  store i8 %conv472, i8* %incdec.ptr467, align 1, !tbaa !1
  br label %for.inc477

if.else474:                                       ; preds = %cont454
  %162 = load i8* %t2.01107, align 1, !tbaa !1
  store i8 %162, i8* %tdest.21106, align 1, !tbaa !1
  br label %for.inc477

for.inc477:                                       ; preds = %cont471, %if.else474
  %incdec.ptr467.pn = phi i8* [ %incdec.ptr467, %cont471 ], [ %tdest.21106, %if.else474 ]
  %tdest.3 = getelementptr inbounds i8* %incdec.ptr467.pn, i32 1
  %incdec.ptr478 = getelementptr inbounds i8* %t2.01107, i32 1
  %exitcond = icmp eq i8* %incdec.ptr478, %add.ptr439
  br i1 %exitcond, label %for.inc888, label %for.body451

cont486:                                          ; preds = %if.end100, %if.end100
  br i1 %tobool820, label %def, label %if.then489

if.then489:                                       ; preds = %cont486
  %incdec.ptr490 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %42, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

def:                                              ; preds = %cont220, %cont229, %cont486, %if.end100
  %163 = icmp sgt i8 %42, -1
  br i1 %163, label %cont494, label %ioc_bb493

ioc_bb493:                                        ; preds = %def
  %164 = sext i8 %42 to i64
  call void @__ioc_report_conversion(i32 5096, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %164, i8 1) nounwind
  br label %cont494

cont494:                                          ; preds = %ioc_bb493, %def
  %idxprom495 = zext i8 %42 to i32
  %arrayidx496 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom495
  %165 = load i16* %arrayidx496, align 2, !tbaa !5
  %and502 = and i16 %165, 1
  %tobool503 = icmp ne i16 %and502, 0
  %.pre1159 = load i8** %s.addr, align 4, !tbaa !3
  %.pre1160 = load i8* %.pre1159, align 1, !tbaa !1
  %cmp506 = icmp slt i8 %.pre1160, 56
  %or.cond1168 = and i1 %tobool503, %cmp506
  br i1 %or.cond1168, label %cont516, label %lor.lhs.false508

lor.lhs.false508:                                 ; preds = %cont494
  %cmp510 = icmp eq i8 %.pre1160, 120
  br i1 %cmp510, label %cont516, label %cont598

cont516:                                          ; preds = %cont494, %lor.lhs.false508
  %166 = phi i8 [ 120, %lor.lhs.false508 ], [ %.pre1160, %cont494 ]
  br i1 %tobool518, label %if.then519, label %if.end536

if.then519:                                       ; preds = %cont516
  switch i8 %166, label %cont531 [
    i8 48, label %if.then523
    i8 120, label %if.end536
  ]

if.then523:                                       ; preds = %if.then519
  %incdec.ptr524 = getelementptr inbounds i8* %.pre1159, i32 1
  store i8* %incdec.ptr524, i8** %s.addr, align 4, !tbaa !3
  br label %if.end536

cont531:                                          ; preds = %if.then519
  %incdec.ptr532 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %167 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr533 = getelementptr inbounds i8* %167, i32 -1
  store i8* %incdec.ptr533, i8** %s.addr, align 4, !tbaa !3
  br label %for.inc888

if.end536:                                        ; preds = %if.then519, %cont516, %if.then523
  %168 = phi i8* [ %.pre1159, %if.then519 ], [ %.pre1159, %cont516 ], [ %incdec.ptr524, %if.then523 ]
  %arrayidx537 = getelementptr inbounds i8* %168, i32 1
  %169 = load i8* %arrayidx537, align 1, !tbaa !1
  %tobool539 = icmp eq i8 %169, 0
  br i1 %tobool539, label %if.end553, label %land.lhs.true540

land.lhs.true540:                                 ; preds = %if.end536
  %arrayidx541 = getelementptr inbounds i8* %168, i32 2
  %170 = load i8* %arrayidx541, align 1, !tbaa !1
  %tobool543 = icmp eq i8 %170, 0
  br i1 %tobool543, label %if.end553, label %land.lhs.true544

land.lhs.true544:                                 ; preds = %land.lhs.true540
  %arrayidx545 = getelementptr inbounds i8* %168, i32 3
  %171 = load i8* %arrayidx545, align 1, !tbaa !1
  %tobool547 = icmp eq i8 %171, 0
  br i1 %tobool547, label %if.end553, label %cont551

cont551:                                          ; preds = %land.lhs.true544
  store i8 0, i8* %arrayidx545, align 1, !tbaa !1
  %172 = load i8** %s.addr, align 4, !tbaa !3
  br label %if.end553

if.end553:                                        ; preds = %land.lhs.true544, %land.lhs.true540, %if.end536, %cont551
  %173 = phi i8* [ %172, %cont551 ], [ %168, %if.end536 ], [ %168, %land.lhs.true540 ], [ %168, %land.lhs.true544 ]
  %u.1 = phi i8* [ %172, %cont551 ], [ %u.0, %if.end536 ], [ %u.0, %land.lhs.true540 ], [ %u.0, %land.lhs.true544 ]
  %svchar.1 = phi i8 [ %171, %cont551 ], [ 0, %if.end536 ], [ 0, %land.lhs.true540 ], [ 0, %land.lhs.true544 ]
  %174 = load i8* %173, align 1, !tbaa !1
  %cmp555 = icmp eq i8 %174, 120
  %conv556 = zext i1 %cmp555 to i32
  %add.ptr557 = getelementptr inbounds i8* %173, i32 %conv556
  %cond561 = select i1 %cmp555, i32 16, i32 8
  %call562 = call i64 @zstrtol(i8* %add.ptr557, i8** %s.addr, i32 %cond561)
  %call562.off = add i64 %call562, 128
  %175 = icmp ult i64 %call562.off, 256
  br i1 %175, label %cont566, label %ioc_bb565

ioc_bb565:                                        ; preds = %if.end553
  call void @__ioc_report_conversion(i32 5110, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %call562, i8 1) nounwind
  br label %cont566

cont566:                                          ; preds = %ioc_bb565, %if.end553
  %conv567 = trunc i64 %call562 to i8
  %incdec.ptr568 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %conv567, i8* %t.2, align 1, !tbaa !1
  %cmp580 = icmp eq i8 %conv567, 37
  %or.cond1096 = and i1 %tobool574, %cmp580
  br i1 %or.cond1096, label %cont584, label %if.end586

cont584:                                          ; preds = %cont566
  %incdec.ptr585 = getelementptr inbounds i8* %t.2, i32 2
  store i8 37, i8* %incdec.ptr568, align 1, !tbaa !1
  br label %if.end586

if.end586:                                        ; preds = %cont566, %cont584
  %t.3 = phi i8* [ %incdec.ptr585, %cont584 ], [ %incdec.ptr568, %cont566 ]
  %tobool587 = icmp eq i8 %svchar.1, 0
  br i1 %tobool587, label %if.end592, label %if.then588

if.then588:                                       ; preds = %if.end586
  %arrayidx589 = getelementptr inbounds i8* %u.1, i32 3
  store i8 %svchar.1, i8* %arrayidx589, align 1, !tbaa !1
  br label %if.end592

if.end592:                                        ; preds = %if.end586, %if.then588
  %176 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr593 = getelementptr inbounds i8* %176, i32 -1
  store i8* %incdec.ptr593, i8** %s.addr, align 4, !tbaa !3
  br label %if.end773

cont598:                                          ; preds = %lor.lhs.false508
  %cmp603 = icmp eq i8 %.pre1160, 92
  %or.cond1097 = or i1 %tobool600, %cmp603
  br i1 %or.cond1097, label %if.end614, label %if.then605

if.then605:                                       ; preds = %cont598
  %tobool606 = icmp eq i32 %miscadded.0, 0
  br i1 %tobool606, label %cont612, label %if.then607

if.then607:                                       ; preds = %if.then605
  %177 = load i32* %misc, align 4, !tbaa !0
  %178 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %177, i32 1)
  %179 = extractvalue { i32, i1 } %178, 0
  %180 = extractvalue { i32, i1 } %178, 1
  br i1 %180, label %ioc_bb608, label %cont609

ioc_bb608:                                        ; preds = %if.then607
  %181 = sext i32 %177 to i64
  call void @__ioc_report_add_overflow(i32 5122, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %181, i64 1, i8 13) nounwind
  br label %cont609

cont609:                                          ; preds = %if.then607, %ioc_bb608
  store i32 %179, i32* %misc, align 4, !tbaa !0
  br label %cont612

cont612:                                          ; preds = %cont609, %if.then605
  %incdec.ptr613 = getelementptr inbounds i8* %t.2, i32 1
  store i8 92, i8* %t.2, align 1, !tbaa !1
  %.pre1152 = load i8** %s.addr, align 4, !tbaa !3
  %.pre1153 = load i8* %.pre1152, align 1, !tbaa !1
  br label %if.end614

if.end614:                                        ; preds = %cont598, %cont612
  %182 = phi i8 [ %.pre1160, %cont598 ], [ %.pre1153, %cont612 ]
  %t.4 = phi i8* [ %t.2, %cont598 ], [ %incdec.ptr613, %cont612 ]
  %incdec.ptr615 = getelementptr inbounds i8* %t.4, i32 1
  store i8 %182, i8* %t.4, align 1, !tbaa !1
  br label %if.end773

cont621:                                          ; preds = %for.cond76, %land.lhs.true
  br i1 %tobool623, label %land.lhs.true624, label %if.else638

land.lhs.true624:                                 ; preds = %cont621
  call void @__ioc_report_conversion(i32 5132, i32 49, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 153, i8 1) nounwind
  %cmp628 = icmp eq i8 %34, -103
  %183 = load i8** %s.addr, align 4, !tbaa !3
  br i1 %cmp628, label %if.then630, label %land.lhs.true624.if.else638_crit_edge

land.lhs.true624.if.else638_crit_edge:            ; preds = %land.lhs.true624
  %.pre1157 = load i8* %183, align 1, !tbaa !1
  br label %if.else638

if.then630:                                       ; preds = %land.lhs.true624
  %sub.ptr.lhs.cast631 = ptrtoint i8* %183 to i32
  %sub.ptr.sub633 = sub i32 %sub.ptr.lhs.cast631, %sub.ptr.rhs.cast
  %184 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub633, i32 1)
  %185 = extractvalue { i32, i1 } %184, 0
  %186 = extractvalue { i32, i1 } %184, 1
  br i1 %186, label %ioc_bb634, label %cont635

ioc_bb634:                                        ; preds = %if.then630
  %187 = sext i32 %sub.ptr.sub633 to i64
  call void @__ioc_report_add_overflow(i32 5134, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %187, i64 1, i8 13) nounwind
  br label %cont635

cont635:                                          ; preds = %if.then630, %ioc_bb634
  store i32 %185, i32* %len, align 4, !tbaa !0
  store i8 0, i8* %tdest.0, align 1, !tbaa !1
  br label %return

if.else638:                                       ; preds = %land.lhs.true624.if.else638_crit_edge, %cont621
  %188 = phi i8 [ %.pre1157, %land.lhs.true624.if.else638_crit_edge ], [ %34, %cont621 ]
  %189 = phi i8* [ %183, %land.lhs.true624.if.else638_crit_edge ], [ %33, %cont621 ]
  %notlhs = icmp ne i8 %188, 94
  %notrhs = icmp ne i32 %control.0, 0
  %or.cond1092.not = or i1 %notrhs, %notlhs
  %brmerge = or i1 %or.cond1092.not, %tobool650
  br i1 %brmerge, label %cont660, label %land.lhs.true651

land.lhs.true651:                                 ; preds = %if.else638
  %arrayidx652 = getelementptr inbounds i8* %189, i32 1
  %190 = load i8* %arrayidx652, align 1, !tbaa !1
  %tobool654 = icmp eq i8 %190, 0
  br i1 %tobool654, label %cont660, label %for.inc888

cont660:                                          ; preds = %if.else638, %land.lhs.true651
  %191 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool665 = icmp eq i8 %191, 0
  %or.cond1093 = or i1 %tobool665, %tobool.not
  br i1 %or.cond1093, label %if.else686, label %land.lhs.true666

land.lhs.true666:                                 ; preds = %cont660
  %192 = icmp sgt i8 %188, -1
  br i1 %192, label %if.else686.thread, label %if.then673

if.else686.thread:                                ; preds = %land.lhs.true666
  call void @__ioc_report_conversion(i32 5153, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %193 = load i8** %s.addr, align 4, !tbaa !3
  br label %if.else702

if.then673:                                       ; preds = %land.lhs.true666
  %194 = sext i8 %188 to i64
  call void @__ioc_report_conversion(i32 5143, i32 62, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %194, i8 1) nounwind
  %195 = load i8** %s.addr, align 4, !tbaa !3
  %call677 = call i32 @mb_metacharlenconv(i8* %195, i32* %wc)
  %196 = load i32* %wc, align 4, !tbaa !0
  %cmp678 = icmp eq i32 %196, -1
  br i1 %cmp678, label %if.end773, label %if.then680

if.then680:                                       ; preds = %if.then673
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %cont683, label %ioc_bb682

ioc_bb682:                                        ; preds = %if.then680
  %198 = zext i32 %196 to i64
  call void @__ioc_report_conversion(i32 5148, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %198, i8 0) nounwind
  br label %cont683

cont683:                                          ; preds = %ioc_bb682, %if.then680
  store i32 %196, i32* %misc, align 4, !tbaa !0
  %199 = load i8** %s.addr, align 4, !tbaa !3
  %add.ptr684 = getelementptr inbounds i8* %199, i32 %call677
  br label %return

if.else686:                                       ; preds = %cont660
  call void @__ioc_report_conversion(i32 5153, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp690 = icmp eq i8 %188, -125
  %200 = load i8** %s.addr, align 4, !tbaa !3
  br i1 %cmp690, label %if.then692, label %if.else702

if.then692:                                       ; preds = %if.else686
  %incdec.ptr693 = getelementptr inbounds i8* %200, i32 1
  store i8* %incdec.ptr693, i8** %s.addr, align 4, !tbaa !3
  %201 = load i8* %incdec.ptr693, align 1, !tbaa !1
  %conv694 = sext i8 %201 to i32
  %xor695 = xor i32 %conv694, 32
  %xor695.off = add i32 %xor695, 128
  %202 = icmp ult i32 %xor695.off, 256
  br i1 %202, label %cont699, label %ioc_bb698

ioc_bb698:                                        ; preds = %if.then692
  %203 = sext i32 %xor695 to i64
  call void @__ioc_report_conversion(i32 5154, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %203, i8 1) nounwind
  br label %cont699

cont699:                                          ; preds = %ioc_bb698, %if.then692
  %conv700 = trunc i32 %xor695 to i8
  %incdec.ptr701 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %conv700, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

if.else702:                                       ; preds = %if.else686.thread, %if.else686
  %204 = phi i8* [ %193, %if.else686.thread ], [ %200, %if.else686 ]
  %205 = load i8* %204, align 1, !tbaa !1
  %206 = icmp sgt i8 %205, -1
  br i1 %206, label %cont705, label %ioc_bb704

ioc_bb704:                                        ; preds = %if.else702
  %207 = sext i8 %205 to i64
  call void @__ioc_report_conversion(i32 5156, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %207, i8 1) nounwind
  br label %cont705

cont705:                                          ; preds = %ioc_bb704, %if.else702
  %idxprom706 = zext i8 %205 to i32
  %arrayidx707 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom706
  %208 = load i16* %arrayidx707, align 2, !tbaa !5
  %and713 = and i16 %208, 16
  %tobool714 = icmp eq i16 %and713, 0
  br i1 %tobool714, label %if.else766, label %if.then715

if.then715:                                       ; preds = %cont705
  %209 = or i32 %control.0, %meta.0
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %cont748, label %cont723

cont723:                                          ; preds = %if.then715
  br i1 %tobool623, label %land.lhs.true726, label %if.else735

land.lhs.true726:                                 ; preds = %cont723
  %211 = load i8** %s.addr, align 4, !tbaa !3
  %212 = load i8* %211, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 5175, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp730 = icmp eq i8 %212, -101
  br i1 %cmp730, label %if.then732, label %if.else735

if.then732:                                       ; preds = %land.lhs.true726
  %213 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr733 = getelementptr inbounds i8* %213, i32 1
  store i8* %incdec.ptr733, i8** %s.addr, align 4, !tbaa !3
  %214 = load i8* %incdec.ptr733, align 1, !tbaa !1
  %incdec.ptr734 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %214, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

if.else735:                                       ; preds = %land.lhs.true726, %cont723
  %215 = load i8** %s.addr, align 4, !tbaa !3
  %216 = load i8* %215, align 1, !tbaa !1
  %conv736 = sext i8 %216 to i32
  call void @__ioc_report_conversion(i32 5178, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 132, i8 1) nounwind
  %217 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv736, i32 -124)
  %218 = extractvalue { i32, i1 } %217, 0
  %219 = extractvalue { i32, i1 } %217, 1
  br i1 %219, label %ioc_bb739, label %cont740

ioc_bb739:                                        ; preds = %if.else735
  %220 = sext i8 %216 to i64
  call void @__ioc_report_sub_overflow(i32 5178, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %220, i64 -124, i8 13) nounwind
  br label %cont740

cont740:                                          ; preds = %if.else735, %ioc_bb739
  %arrayidx741 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %218
  %221 = load i8* %arrayidx741, align 1, !tbaa !1
  %incdec.ptr742 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %221, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

cont748:                                          ; preds = %if.then715
  %222 = load i8** %s.addr, align 4, !tbaa !3
  %223 = load i8* %222, align 1, !tbaa !1
  br i1 %tobool623, label %if.then751, label %if.else762

if.then751:                                       ; preds = %cont748
  %incdec.ptr752 = getelementptr inbounds i8* %tdest.0, i32 1
  store i8 %223, i8* %tdest.0, align 1, !tbaa !1
  %224 = load i8** %s.addr, align 4, !tbaa !3
  %225 = load i8* %224, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 5186, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp756 = icmp eq i8 %225, -101
  br i1 %cmp756, label %if.then758, label %for.inc888

if.then758:                                       ; preds = %if.then751
  %226 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr759 = getelementptr inbounds i8* %226, i32 1
  store i8* %incdec.ptr759, i8** %s.addr, align 4, !tbaa !3
  %227 = load i8* %incdec.ptr759, align 1, !tbaa !1
  %incdec.ptr760 = getelementptr inbounds i8* %tdest.0, i32 2
  store i8 %227, i8* %incdec.ptr752, align 1, !tbaa !1
  br label %for.inc888

if.else762:                                       ; preds = %cont748
  %incdec.ptr763 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %223, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

if.else766:                                       ; preds = %cont705
  %228 = load i8** %s.addr, align 4, !tbaa !3
  %229 = load i8* %228, align 1, !tbaa !1
  %incdec.ptr767 = getelementptr inbounds i8* %t.2, i32 1
  store i8 %229, i8* %t.2, align 1, !tbaa !1
  br label %if.end773

if.end773:                                        ; preds = %if.then673, %if.else766, %if.then732, %cont740, %if.else762, %cont699, %cont104, %cont108, %cont112, %cont116, %cont120, %cont124, %cont128, %cont150, %cont213, %if.then223, %if.then489, %if.end614, %if.end592
  %u.2 = phi i8* [ %u.1, %if.end592 ], [ %u.0, %if.end614 ], [ %u.0, %if.then489 ], [ %u.0, %if.then223 ], [ %u.0, %cont213 ], [ %u.0, %cont150 ], [ %u.0, %cont128 ], [ %u.0, %cont124 ], [ %u.0, %cont120 ], [ %u.0, %cont116 ], [ %u.0, %cont112 ], [ %u.0, %cont108 ], [ %u.0, %cont104 ], [ %u.0, %if.then673 ], [ %u.0, %cont699 ], [ %u.0, %if.then732 ], [ %u.0, %cont740 ], [ %u.0, %if.else762 ], [ %u.0, %if.else766 ]
  %t.5 = phi i8* [ %t.3, %if.end592 ], [ %incdec.ptr615, %if.end614 ], [ %incdec.ptr490, %if.then489 ], [ %t.2, %if.then223 ], [ %incdec.ptr214, %cont213 ], [ %incdec.ptr151, %cont150 ], [ %incdec.ptr129, %cont128 ], [ %incdec.ptr125, %cont124 ], [ %incdec.ptr121, %cont120 ], [ %incdec.ptr117, %cont116 ], [ %incdec.ptr113, %cont112 ], [ %incdec.ptr109, %cont108 ], [ %incdec.ptr105, %cont104 ], [ %t.2, %if.then673 ], [ %incdec.ptr701, %cont699 ], [ %incdec.ptr734, %if.then732 ], [ %incdec.ptr742, %cont740 ], [ %incdec.ptr763, %if.else762 ], [ %incdec.ptr767, %if.else766 ]
  %cmp774 = icmp eq i32 %meta.0, 2
  br i1 %cmp774, label %cont778, label %if.end782

cont778:                                          ; preds = %if.end773
  %arrayidx779 = getelementptr inbounds i8* %t.5, i32 -1
  %230 = load i8* %arrayidx779, align 1, !tbaa !1
  %or = or i8 %230, -128
  store i8 %or, i8* %arrayidx779, align 1, !tbaa !1
  br label %if.end782

if.end782:                                        ; preds = %cont778, %if.end773
  %meta.1 = phi i32 [ 0, %cont778 ], [ %meta.0, %if.end773 ]
  %tobool783 = icmp eq i32 %control.0, 0
  br i1 %tobool783, label %if.end805, label %cont786

cont786:                                          ; preds = %if.end782
  %arrayidx787 = getelementptr inbounds i8* %t.5, i32 -1
  %231 = load i8* %arrayidx787, align 1, !tbaa !1
  %cmp789 = icmp eq i8 %231, 63
  %and802 = and i8 %231, -97
  %.and802 = select i1 %cmp789, i8 127, i8 %and802
  store i8 %.and802, i8* %arrayidx787, align 1
  br label %if.end805

if.end805:                                        ; preds = %if.end782, %cont786
  %tobool806 = icmp eq i32 %meta.1, 0
  br i1 %tobool806, label %cont818, label %cont809

cont809:                                          ; preds = %if.end805
  %arrayidx810 = getelementptr inbounds i8* %t.5, i32 -1
  %232 = load i8* %arrayidx810, align 1, !tbaa !1
  %or812 = or i8 %232, -128
  store i8 %or812, i8* %arrayidx810, align 1, !tbaa !1
  br label %cont818

cont818:                                          ; preds = %if.end805, %cont809
  br i1 %tobool820, label %cont873, label %for.cond824.preheader

for.cond824.preheader:                            ; preds = %cont818
  %cmp8251108 = icmp ult i8* %tbuf.0.ph, %t.5
  br i1 %cmp8251108, label %for.body827, label %cont873

for.body827:                                      ; preds = %for.cond824.preheader, %for.inc866
  %t2823.01111 = phi i8* [ %incdec.ptr867, %for.inc866 ], [ %tbuf.0.ph, %for.cond824.preheader ]
  %ignoring.11110 = phi i32 [ %ignoring.3, %for.inc866 ], [ %ignoring.0, %for.cond824.preheader ]
  %tdest.51109 = phi i8* [ %tdest.6, %for.inc866 ], [ %tdest.0, %for.cond824.preheader ]
  %233 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 125), align 1, !tbaa !1
  %tobool828 = icmp eq i8 %233, 0
  %.pr = load i8* %t2823.01111, align 1, !tbaa !1
  br i1 %tobool828, label %if.end838, label %if.then829

if.then829:                                       ; preds = %for.body827
  %cmp831 = icmp eq i8 %.pr, 0
  %.ignoring.1 = select i1 %cmp831, i32 1, i32 %ignoring.11110
  %tobool835 = icmp eq i32 %.ignoring.1, 0
  br i1 %tobool835, label %if.end838, label %cont873

if.end838:                                        ; preds = %for.body827, %if.then829
  %ignoring.3 = phi i32 [ 0, %if.then829 ], [ %ignoring.11110, %for.body827 ]
  %234 = icmp sgt i8 %.pr, -1
  br i1 %234, label %cont841, label %ioc_bb840

ioc_bb840:                                        ; preds = %if.end838
  %235 = sext i8 %.pr to i64
  call void @__ioc_report_conversion(i32 5236, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %235, i8 1) nounwind
  br label %cont841

cont841:                                          ; preds = %ioc_bb840, %if.end838
  %idxprom842 = zext i8 %.pr to i32
  %arrayidx843 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom842
  %236 = load i16* %arrayidx843, align 2, !tbaa !5
  %and849 = and i16 %236, 4096
  %tobool850 = icmp eq i16 %and849, 0
  br i1 %tobool850, label %if.else863, label %ioc_bb852

ioc_bb852:                                        ; preds = %cont841
  call void @__ioc_report_conversion(i32 5237, i32 33, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr854 = getelementptr inbounds i8* %tdest.51109, i32 1
  store i8 -125, i8* %tdest.51109, align 1, !tbaa !1
  %237 = load i8* %t2823.01111, align 1, !tbaa !1
  %conv855 = sext i8 %237 to i32
  %xor856 = xor i32 %conv855, 32
  %xor856.off = add i32 %xor856, 128
  %238 = icmp ult i32 %xor856.off, 256
  br i1 %238, label %cont860, label %ioc_bb859

ioc_bb859:                                        ; preds = %ioc_bb852
  %239 = sext i32 %xor856 to i64
  call void @__ioc_report_conversion(i32 5238, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %239, i8 1) nounwind
  br label %cont860

cont860:                                          ; preds = %ioc_bb859, %ioc_bb852
  %conv861 = trunc i32 %xor856 to i8
  store i8 %conv861, i8* %incdec.ptr854, align 1, !tbaa !1
  br label %for.inc866

if.else863:                                       ; preds = %cont841
  %240 = load i8* %t2823.01111, align 1, !tbaa !1
  store i8 %240, i8* %tdest.51109, align 1, !tbaa !1
  br label %for.inc866

for.inc866:                                       ; preds = %cont860, %if.else863
  %incdec.ptr854.pn = phi i8* [ %incdec.ptr854, %cont860 ], [ %tdest.51109, %if.else863 ]
  %tdest.6 = getelementptr inbounds i8* %incdec.ptr854.pn, i32 1
  %incdec.ptr867 = getelementptr inbounds i8* %t2823.01111, i32 1
  %cmp825 = icmp ult i8* %incdec.ptr867, %t.5
  br i1 %cmp825, label %for.body827, label %cont873

cont873:                                          ; preds = %for.cond824.preheader, %if.then829, %for.inc866, %cont818
  %tdest.7 = phi i8* [ %tdest.0, %cont818 ], [ %tdest.0, %for.cond824.preheader ], [ %tdest.51109, %if.then829 ], [ %tdest.6, %for.inc866 ]
  %t.6 = phi i8* [ %t.5, %cont818 ], [ %tbuf.0.ph, %for.cond824.preheader ], [ %tbuf.0.ph, %if.then829 ], [ %tbuf.0.ph, %for.inc866 ]
  %ignoring.5 = phi i32 [ %ignoring.0, %cont818 ], [ %ignoring.0, %for.cond824.preheader ], [ %.ignoring.1, %if.then829 ], [ %ignoring.3, %for.inc866 ]
  br i1 %tobool, label %land.lhs.true876, label %for.inc888

land.lhs.true876:                                 ; preds = %cont873
  %cmp878 = icmp eq i8* %t.6, %arraydecay877
  br i1 %cmp878, label %for.inc888, label %if.then880

if.then880:                                       ; preds = %land.lhs.true876
  %241 = load i8* %arraydecay877, align 1, !tbaa !1
  %242 = icmp sgt i8 %241, -1
  br i1 %242, label %cont884, label %ioc_bb883

ioc_bb883:                                        ; preds = %if.then880
  %243 = sext i8 %241 to i64
  call void @__ioc_report_conversion(i32 5250, i32 33, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %243, i8 1) nounwind
  br label %cont884

cont884:                                          ; preds = %if.then880, %ioc_bb883
  %conv885 = zext i8 %241 to i32
  store i32 %conv885, i32* %misc, align 4, !tbaa !0
  %244 = load i8** %s.addr, align 4, !tbaa !3
  %add.ptr886 = getelementptr inbounds i8* %244, i32 1
  br label %return

for.inc888:                                       ; preds = %for.cond448.preheader, %for.inc477, %land.lhs.true876, %cont873, %if.then751, %if.end438, %if.then758, %land.lhs.true651, %if.then187, %if.then192, %ioc_bb167, %if.end166, %cont139, %cont202, %cont176, %cont145, %cont531
  %tdest.8 = phi i8* [ %tdest.0, %cont531 ], [ %tdest.0, %cont202 ], [ %tdest.0, %cont176 ], [ %tdest.0, %cont145 ], [ %tdest.0, %cont139 ], [ %tdest.0, %if.end166 ], [ %tdest.0, %ioc_bb167 ], [ %tdest.0, %if.then192 ], [ %tdest.0, %if.then187 ], [ %tdest.0, %land.lhs.true651 ], [ %incdec.ptr760, %if.then758 ], [ %tdest.0, %if.end438 ], [ %incdec.ptr752, %if.then751 ], [ %tdest.7, %cont873 ], [ %tdest.7, %land.lhs.true876 ], [ %tdest.0, %for.cond448.preheader ], [ %tdest.3, %for.inc477 ]
  %u.3 = phi i8* [ %u.0, %cont531 ], [ %u.0, %cont202 ], [ %u.0, %cont176 ], [ %u.0, %cont145 ], [ %u.0, %cont139 ], [ %u.0, %if.end166 ], [ %u.0, %ioc_bb167 ], [ %u.0, %if.then192 ], [ %u.0, %if.then187 ], [ %u.0, %land.lhs.true651 ], [ %u.0, %if.then758 ], [ %u.0, %if.end438 ], [ %u.0, %if.then751 ], [ %u.2, %cont873 ], [ %u.2, %land.lhs.true876 ], [ %u.0, %for.cond448.preheader ], [ %u.0, %for.inc477 ]
  %t.7 = phi i8* [ %incdec.ptr532, %cont531 ], [ %incdec.ptr203, %cont202 ], [ %incdec.ptr177, %cont176 ], [ %incdec.ptr140, %cont145 ], [ %incdec.ptr140, %cont139 ], [ %t.2, %if.end166 ], [ %t.2, %ioc_bb167 ], [ %t.2, %if.then192 ], [ %t.2, %if.then187 ], [ %t.2, %land.lhs.true651 ], [ %tbuf.0.ph, %if.then758 ], [ %add.ptr439, %if.end438 ], [ %tbuf.0.ph, %if.then751 ], [ %t.6, %cont873 ], [ %arraydecay877, %land.lhs.true876 ], [ %tbuf.0.ph, %for.cond448.preheader ], [ %tbuf.0.ph, %for.inc477 ]
  %meta.3 = phi i32 [ %meta.0, %cont531 ], [ %meta.0, %cont202 ], [ %meta.0, %cont176 ], [ %meta.0, %cont145 ], [ %meta.0, %cont139 ], [ %51, %if.end166 ], [ %51, %ioc_bb167 ], [ %meta.0, %if.then192 ], [ %meta.0, %if.then187 ], [ %meta.0, %land.lhs.true651 ], [ %meta.0, %if.then758 ], [ %meta.0, %if.end438 ], [ %meta.0, %if.then751 ], [ 0, %cont873 ], [ 0, %land.lhs.true876 ], [ %meta.0, %for.cond448.preheader ], [ %meta.0, %for.inc477 ]
  %control.2 = phi i32 [ %control.0, %cont531 ], [ %control.0, %cont202 ], [ %control.0, %cont176 ], [ %control.0, %cont145 ], [ %control.0, %cont139 ], [ %control.0, %if.end166 ], [ %control.0, %ioc_bb167 ], [ 1, %if.then192 ], [ 1, %if.then187 ], [ 1, %land.lhs.true651 ], [ %control.0, %if.then758 ], [ %control.0, %if.end438 ], [ %control.0, %if.then751 ], [ 0, %cont873 ], [ 0, %land.lhs.true876 ], [ %control.0, %for.cond448.preheader ], [ %control.0, %for.inc477 ]
  %ignoring.6 = phi i32 [ %ignoring.0, %cont531 ], [ %ignoring.0, %cont202 ], [ %ignoring.0, %cont176 ], [ %ignoring.0, %cont145 ], [ %ignoring.0, %cont139 ], [ %ignoring.0, %if.end166 ], [ %ignoring.0, %ioc_bb167 ], [ %ignoring.0, %if.then192 ], [ %ignoring.0, %if.then187 ], [ %ignoring.0, %land.lhs.true651 ], [ %ignoring.0, %if.then758 ], [ %ignoring.0, %if.end438 ], [ %ignoring.0, %if.then751 ], [ %ignoring.5, %cont873 ], [ %ignoring.5, %land.lhs.true876 ], [ %ignoring.0, %for.cond448.preheader ], [ %ignoring.0, %for.inc477 ]
  %245 = load i8** %s.addr, align 4, !tbaa !3
  %incdec.ptr889 = getelementptr inbounds i8* %245, i32 1
  store i8* %incdec.ptr889, i8** %s.addr, align 4, !tbaa !3
  br label %for.cond76

cont892:                                          ; preds = %for.cond76
  store i8 0, i8* %t.2, align 1, !tbaa !1
  br i1 %tobool623, label %cont901, label %cont906

cont901:                                          ; preds = %cont892
  store i8 0, i8* %tdest.0, align 1, !tbaa !1
  br label %cont906

cont906:                                          ; preds = %cont901, %cont892
  br i1 %tobool, label %if.then909, label %cont914

if.then909:                                       ; preds = %cont906
  store i32 0, i32* %misc, align 4, !tbaa !0
  br label %return

cont914:                                          ; preds = %cont906
  %cond917 = select i1 %tobool623, i8* %tdest.0, i8* %t.2
  %sub.ptr.lhs.cast918 = ptrtoint i8* %cond917 to i32
  %sub.ptr.rhs.cast919 = ptrtoint i8* %buf.0.ph to i32
  %sub.ptr.sub920 = sub i32 %sub.ptr.lhs.cast918, %sub.ptr.rhs.cast919
  store i32 %sub.ptr.sub920, i32* %len, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then909, %cont914, %cont884, %cont683, %cont635, %cont418, %while.end, %cont409, %cont361, %if.then232
  %retval.0 = phi i8* [ %add.ptr886, %cont884 ], [ %add.ptr, %cont361 ], [ %buf.0.ph, %cont409 ], [ %buf.0.ph, %while.end ], [ %buf.0.ph, %cont418 ], [ %buf.0.ph, %if.then232 ], [ %buf.0.ph, %cont635 ], [ %add.ptr684, %cont683 ], [ %buf.0.ph, %cont914 ], [ %buf.0.ph, %if.then909 ]
  ret i8* %retval.0
}

define void @freearray(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool3 = icmp eq i8* %0, null
  br i1 %tobool3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i8* [ %2, %while.body ], [ %0, %entry ]
  %s.addr.04 = phi i8** [ %incdec.ptr, %while.body ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8** %s.addr.04, i32 1
  tail call void @zsfree(i8* %1) nounwind
  %2 = load i8** %incdec.ptr, align 4, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %3 = bitcast i8** %s to i8*
  tail call void @free(i8* %3) nounwind
  ret void
}

define i32 @equalsplit(i8* %s, i8** nocapture %t) nounwind {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %s.addr.0, align 1, !tbaa !1
  switch i8 %0, label %for.inc [
    i8 61, label %cont
    i8 0, label %return
  ]

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  br label %for.cond

cont:                                             ; preds = %for.cond
  %incdec.ptr6 = getelementptr inbounds i8* %s.addr.0, i32 1
  store i8 0, i8* %s.addr.0, align 1, !tbaa !1
  store i8* %incdec.ptr6, i8** %t, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %for.cond, %cont
  %retval.0 = phi i32 [ 1, %cont ], [ 0, %for.cond ]
  ret i32 %retval.0
}

define void @inittyptab() nounwind {
entry:
  br label %cont

cont:                                             ; preds = %entry, %for.cond.backedge
  %t0.0476 = phi i32 [ 0, %entry ], [ %1, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.0476
  store i16 0, i16* %arrayidx, align 2, !tbaa !5
  %0 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.0476, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb1, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont, %ioc_bb1
  %cmp = icmp eq i32 %1, 256
  br i1 %cmp, label %cont11, label %cont

ioc_bb1:                                          ; preds = %cont
  %3 = sext i32 %t0.0476 to i64
  tail call void @__ioc_report_add_overflow(i32 3052, i32 29, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %for.cond.backedge

cont11:                                           ; preds = %for.cond.backedge, %for.cond3.backedge
  %t0.1475 = phi i32 [ %9, %for.cond3.backedge ], [ 0, %for.cond.backedge ]
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.1475, i32 128)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  %7 = sext i32 %t0.1475 to i64
  br i1 %6, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont11
  tail call void @__ioc_report_add_overflow(i32 3055, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %7, i64 128, i8 13) nounwind
  br label %cont13

cont13:                                           ; preds = %cont11, %ioc_bb12
  %arrayidx14 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %5
  store i16 512, i16* %arrayidx14, align 2, !tbaa !5
  %arrayidx15 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.1475
  store i16 512, i16* %arrayidx15, align 2, !tbaa !5
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.1475, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb17, label %for.cond3.backedge

for.cond3.backedge:                               ; preds = %cont13, %ioc_bb17
  %cmp4 = icmp eq i32 %9, 32
  br i1 %cmp4, label %cont25, label %cont11

ioc_bb17:                                         ; preds = %cont13
  tail call void @__ioc_report_add_overflow(i32 3054, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %for.cond3.backedge

cont25:                                           ; preds = %for.cond3.backedge
  store i16 512, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 127), align 2, !tbaa !5
  br label %cont50

cont50:                                           ; preds = %cont25, %for.cond26.backedge
  %t0.2474 = phi i32 [ 48, %cont25 ], [ %12, %for.cond26.backedge ]
  %arrayidx51 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.2474
  store i16 1411, i16* %arrayidx51, align 2, !tbaa !5
  %11 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.2474, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb53, label %for.cond26.backedge

for.cond26.backedge:                              ; preds = %cont50, %ioc_bb53
  %cmp27 = icmp slt i32 %12, 58
  br i1 %cmp27, label %cont50, label %cont80

ioc_bb53:                                         ; preds = %cont50
  %14 = sext i32 %t0.2474 to i64
  tail call void @__ioc_report_add_overflow(i32 3057, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %for.cond26.backedge

cont80:                                           ; preds = %for.cond26.backedge, %for.cond56.backedge
  %t0.3473 = phi i32 [ %24, %for.cond56.backedge ], [ 97, %for.cond26.backedge ]
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %t0.3473, i32 97)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  %18 = sext i32 %t0.3473 to i64
  br i1 %17, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %cont80
  tail call void @__ioc_report_sub_overflow(i32 3060, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %18, i64 97, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %cont80, %ioc_bb81
  %19 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 65)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %cont82
  %22 = sext i32 %16 to i64
  tail call void @__ioc_report_add_overflow(i32 3060, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %22, i64 65, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %cont82, %ioc_bb83
  %arrayidx85 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %20
  store i16 1474, i16* %arrayidx85, align 2, !tbaa !5
  %arrayidx86 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.3473
  store i16 1474, i16* %arrayidx86, align 2, !tbaa !5
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.3473, i32 1)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb88, label %for.cond56.backedge

for.cond56.backedge:                              ; preds = %cont84, %ioc_bb88
  %cmp57 = icmp slt i32 %24, 123
  br i1 %cmp57, label %cont80, label %cont100

ioc_bb88:                                         ; preds = %cont84
  tail call void @__ioc_report_add_overflow(i32 3059, i32 31, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %for.cond56.backedge

cont100:                                          ; preds = %for.cond56.backedge
  store i16 384, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 95), align 2, !tbaa !5
  store i16 256, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 46), align 2, !tbaa !5
  store i16 256, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 45), align 2, !tbaa !5
  %26 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 32), align 2, !tbaa !5
  %or = or i16 %26, 12
  store i16 %or, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 32), align 2, !tbaa !5
  %27 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 9), align 2, !tbaa !5
  %or125 = or i16 %27, 12
  store i16 %or125, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 9), align 2, !tbaa !5
  %28 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 10), align 2, !tbaa !5
  %or132 = or i16 %28, 8
  store i16 %or132, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 10), align 2, !tbaa !5
  %29 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 0), align 2, !tbaa !5
  %or139 = or i16 %29, 4096
  store i16 %or139, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 0), align 2, !tbaa !5
  tail call void @__ioc_report_conversion(i32 3079, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3079, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -125, i8 1) nounwind
  %30 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 131), align 2, !tbaa !5
  %or150 = or i16 %30, 4096
  store i16 %or150, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 131), align 2, !tbaa !5
  tail call void @__ioc_report_conversion(i32 3080, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 160, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3080, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -96, i8 1) nounwind
  %31 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 160), align 2, !tbaa !5
  %or161 = or i16 %31, 4096
  store i16 %or161, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 160), align 2, !tbaa !5
  tail call void @__ioc_report_conversion(i32 3081, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 132, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3081, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -124, i8 1) nounwind
  br label %ioc_bb168

ioc_bb168:                                        ; preds = %ioc_bb188, %cont182, %cont100
  %t0.4 = phi i32 [ 132, %cont100 ], [ %34, %cont182 ], [ %34, %ioc_bb188 ]
  tail call void @__ioc_report_conversion(i32 3081, i32 92, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 152, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3081, i32 84, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -104, i8 1) nounwind
  %cmp172 = icmp slt i32 %t0.4, 153
  br i1 %cmp172, label %cont182, label %ioc_bb191

cont182:                                          ; preds = %ioc_bb168
  %arrayidx183 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.4
  %32 = load i16* %arrayidx183, align 2, !tbaa !5
  %or185 = or i16 %32, 4112
  store i16 %or185, i16* %arrayidx183, align 2, !tbaa !5
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.4, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb188, label %ioc_bb168

ioc_bb188:                                        ; preds = %cont182
  %36 = sext i32 %t0.4 to i64
  tail call void @__ioc_report_add_overflow(i32 3081, i32 103, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %36, i64 1, i8 13) nounwind
  br label %ioc_bb168

ioc_bb191:                                        ; preds = %ioc_bb168
  tail call void @__ioc_report_conversion(i32 3083, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 153, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3083, i32 37, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -103, i8 1) nounwind
  br label %ioc_bb196

ioc_bb196:                                        ; preds = %ioc_bb220, %cont214, %ioc_bb191
  %t0.5 = phi i32 [ 153, %ioc_bb191 ], [ %39, %cont214 ], [ %39, %ioc_bb220 ]
  tail call void @__ioc_report_conversion(i32 3083, i32 92, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 157, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3083, i32 84, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -99, i8 1) nounwind
  %cmp200 = icmp slt i32 %t0.5, 158
  br i1 %cmp200, label %cont214, label %for.end222

cont214:                                          ; preds = %ioc_bb196
  %arrayidx215 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %t0.5
  %37 = load i16* %arrayidx215, align 2, !tbaa !5
  %or217 = or i16 %37, 20496
  store i16 %or217, i16* %arrayidx215, align 2, !tbaa !5
  %38 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.5, i32 1)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb220, label %ioc_bb196

ioc_bb220:                                        ; preds = %cont214
  %41 = sext i32 %t0.5 to i64
  tail call void @__ioc_report_add_overflow(i32 3083, i32 103, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %41, i64 1, i8 13) nounwind
  br label %ioc_bb196

for.end222:                                       ; preds = %ioc_bb196
  %42 = load i8** @ifs, align 4, !tbaa !3
  %tobool = icmp eq i8* %42, null
  br i1 %tobool, label %cond.false, label %for.cond237.preheader

cond.false:                                       ; preds = %for.end222
  %43 = load i32* @emulation, align 4, !tbaa !0
  %and = and i32 %43, 12
  %tobool231 = icmp eq i32 %and, 0
  br i1 %tobool231, label %cond.false233, label %cond.true232

cond.true232:                                     ; preds = %cond.false
  %call = tail call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str55, i32 0, i32 0)) nounwind
  br label %for.cond237.preheader

cond.false233:                                    ; preds = %cond.false
  %call234 = tail call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0)) nounwind
  br label %for.cond237.preheader

for.cond237.preheader:                            ; preds = %for.end222, %cond.true232, %cond.false233
  %s.0.ph = phi i8* [ %call234, %cond.false233 ], [ %call, %cond.true232 ], [ %42, %for.end222 ]
  %44 = load i8* %s.0.ph, align 1, !tbaa !1
  %tobool238471 = icmp eq i8 %44, 0
  br i1 %tobool238471, label %for.end298, label %ioc_bb241

ioc_bb241:                                        ; preds = %for.cond237.preheader, %for.inc296
  %45 = phi i8 [ %53, %for.inc296 ], [ %44, %for.cond237.preheader ]
  %s.0472 = phi i8* [ %incdec.ptr297, %for.inc296 ], [ %s.0.ph, %for.cond237.preheader ]
  tail call void @__ioc_report_conversion(i32 3086, i32 48, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp243 = icmp eq i8 %45, -125
  br i1 %cmp243, label %cond.true245, label %cond.false247

cond.true245:                                     ; preds = %ioc_bb241
  %incdec.ptr = getelementptr inbounds i8* %s.0472, i32 1
  %46 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv246 = sext i8 %46 to i32
  %xor = xor i32 %conv246, 32
  br label %cond.end249

cond.false247:                                    ; preds = %ioc_bb241
  %47 = load i8* %s.0472, align 1, !tbaa !1
  %conv248 = sext i8 %47 to i32
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false247, %cond.true245
  %s.1 = phi i8* [ %incdec.ptr, %cond.true245 ], [ %s.0472, %cond.false247 ]
  %cond250 = phi i32 [ %xor, %cond.true245 ], [ %conv248, %cond.false247 ]
  %48 = icmp ult i32 %cond250, 256
  br i1 %48, label %cont252, label %ioc_bb251

ioc_bb251:                                        ; preds = %cond.end249
  %49 = sext i32 %cond250 to i64
  tail call void @__ioc_report_conversion(i32 3086, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %49, i8 1) nounwind
  br label %cont252

cont252:                                          ; preds = %ioc_bb251, %cond.end249
  %conv254 = and i32 %cond250, 255
  %and255 = and i32 %cond250, 128
  %cmp256 = icmp eq i32 %and255, 0
  br i1 %cmp256, label %cont261, label %for.inc296

cont261:                                          ; preds = %cont252
  %arrayidx263 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %conv254
  %50 = load i16* %arrayidx263, align 2, !tbaa !5
  %and269 = and i16 %50, 8
  %tobool270 = icmp eq i16 %and269, 0
  br i1 %tobool270, label %cont291, label %if.then271

if.then271:                                       ; preds = %cont261
  %arrayidx272 = getelementptr inbounds i8* %s.1, i32 1
  %51 = load i8* %arrayidx272, align 1, !tbaa !1
  %conv273 = sext i8 %51 to i32
  %cmp274 = icmp eq i32 %conv273, %conv254
  br i1 %cmp274, label %cont291, label %cont281

cont281:                                          ; preds = %if.then271
  %or284 = or i16 %50, 8192
  store i16 %or284, i16* %arrayidx263, align 2, !tbaa !5
  br label %cont291

cont291:                                          ; preds = %if.then271, %cont261, %cont281
  %52 = phi i16 [ %or284, %cont281 ], [ %50, %cont261 ], [ %50, %if.then271 ]
  %s.2 = phi i8* [ %s.1, %cont281 ], [ %s.1, %cont261 ], [ %arrayidx272, %if.then271 ]
  %or294 = or i16 %52, 32
  store i16 %or294, i16* %arrayidx263, align 2, !tbaa !5
  br label %for.inc296

for.inc296:                                       ; preds = %cont252, %cont291
  %s.3 = phi i8* [ %s.2, %cont291 ], [ %s.1, %cont252 ]
  %incdec.ptr297 = getelementptr inbounds i8* %s.3, i32 1
  %53 = load i8* %incdec.ptr297, align 1, !tbaa !1
  %tobool238 = icmp eq i8 %53, 0
  br i1 %tobool238, label %for.end298, label %ioc_bb241

for.end298:                                       ; preds = %for.inc296, %for.cond237.preheader
  %54 = load i8** @wordchars, align 4, !tbaa !3
  %tobool299 = icmp ne i8* %54, null
  %cond303 = select i1 %tobool299, i8* %54, i8* getelementptr inbounds ([24 x i8]* @.str57, i32 0, i32 0)
  %55 = load i8* %cond303, align 1, !tbaa !1
  %tobool305469 = icmp eq i8 %55, 0
  br i1 %tobool305469, label %for.end342, label %ioc_bb309

ioc_bb309:                                        ; preds = %for.end298, %for.inc340
  %56 = phi i8 [ %62, %for.inc340 ], [ %55, %for.end298 ]
  %s.4470 = phi i8* [ %incdec.ptr341, %for.inc340 ], [ %cond303, %for.end298 ]
  tail call void @__ioc_report_conversion(i32 3102, i32 48, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp311 = icmp eq i8 %56, -125
  br i1 %cmp311, label %cond.true313, label %cond.false317

cond.true313:                                     ; preds = %ioc_bb309
  %incdec.ptr314 = getelementptr inbounds i8* %s.4470, i32 1
  %57 = load i8* %incdec.ptr314, align 1, !tbaa !1
  %conv315 = sext i8 %57 to i32
  %xor316 = xor i32 %conv315, 32
  br label %cond.end319

cond.false317:                                    ; preds = %ioc_bb309
  %58 = load i8* %s.4470, align 1, !tbaa !1
  %conv318 = sext i8 %58 to i32
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false317, %cond.true313
  %s.5 = phi i8* [ %incdec.ptr314, %cond.true313 ], [ %s.4470, %cond.false317 ]
  %cond320 = phi i32 [ %xor316, %cond.true313 ], [ %conv318, %cond.false317 ]
  %59 = icmp ult i32 %cond320, 256
  br i1 %59, label %cont324, label %ioc_bb323

ioc_bb323:                                        ; preds = %cond.end319
  %60 = sext i32 %cond320 to i64
  tail call void @__ioc_report_conversion(i32 3102, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %60, i8 1) nounwind
  br label %cont324

cont324:                                          ; preds = %ioc_bb323, %cond.end319
  %and327 = and i32 %cond320, 128
  %cmp328 = icmp eq i32 %and327, 0
  br i1 %cmp328, label %cont335, label %for.inc340

cont335:                                          ; preds = %cont324
  %conv326 = and i32 %cond320, 255
  %arrayidx336 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %conv326
  %61 = load i16* %arrayidx336, align 2, !tbaa !5
  %or338 = or i16 %61, 1024
  store i16 %or338, i16* %arrayidx336, align 2, !tbaa !5
  br label %for.inc340

for.inc340:                                       ; preds = %cont324, %cont335
  %incdec.ptr341 = getelementptr inbounds i8* %s.5, i32 1
  %62 = load i8* %incdec.ptr341, align 1, !tbaa !1
  %tobool305 = icmp eq i8 %62, 0
  br i1 %tobool305, label %for.cond304.for.end342_crit_edge, label %ioc_bb309

for.cond304.for.end342_crit_edge:                 ; preds = %for.inc340
  %.pre = load i8** @wordchars, align 4, !tbaa !3
  br label %for.end342

for.end342:                                       ; preds = %for.cond304.for.end342_crit_edge, %for.end298
  %63 = phi i8* [ %.pre, %for.cond304.for.end342_crit_edge ], [ %54, %for.end298 ]
  tail call fastcc void @set_widearray(i8* %63, %struct.widechar_array* @wordchars_wide)
  %64 = load i8** @ifs, align 4, !tbaa !3
  %tobool343 = icmp eq i8* %64, null
  br i1 %tobool343, label %cond.false345, label %cond.end362

cond.false345:                                    ; preds = %for.end342
  %65 = load i32* @emulation, align 4, !tbaa !0
  %and354 = and i32 %65, 12
  %tobool355 = icmp eq i32 %and354, 0
  br i1 %tobool355, label %cond.false358, label %cond.true356

cond.true356:                                     ; preds = %cond.false345
  %call357 = tail call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str55, i32 0, i32 0)) nounwind
  br label %cond.end362

cond.false358:                                    ; preds = %cond.false345
  %call359 = tail call i8* @ztrdup(i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0)) nounwind
  br label %cond.end362

cond.end362:                                      ; preds = %for.end342, %cond.true356, %cond.false358
  %cond363 = phi i8* [ %call357, %cond.true356 ], [ %call359, %cond.false358 ], [ %64, %for.end342 ]
  tail call fastcc void @set_widearray(i8* %cond363, %struct.widechar_array* @ifs_wide)
  br label %cont370

cont370:                                          ; preds = %cond.end362, %cont373
  %66 = phi i8 [ 35, %cond.end362 ], [ %70, %cont373 ]
  %s.6468 = phi i8* [ getelementptr inbounds ([26 x i8]* @.str58, i32 0, i32 0), %cond.end362 ], [ %incdec.ptr380, %cont373 ]
  %67 = icmp sgt i8 %66, -1
  br i1 %67, label %cont373, label %ioc_bb372

ioc_bb372:                                        ; preds = %cont370
  %68 = sext i8 %66 to i64
  tail call void @__ioc_report_conversion(i32 3122, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %68, i8 1) nounwind
  br label %cont373

cont373:                                          ; preds = %ioc_bb372, %cont370
  %idxprom374 = zext i8 %66 to i32
  %arrayidx375 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom374
  %69 = load i16* %arrayidx375, align 2, !tbaa !5
  %or377 = or i16 %69, 2048
  store i16 %or377, i16* %arrayidx375, align 2, !tbaa !5
  %incdec.ptr380 = getelementptr inbounds i8* %s.6468, i32 1
  %70 = load i8* %incdec.ptr380, align 1, !tbaa !1
  %exitcond = icmp eq i8* %incdec.ptr380, getelementptr inbounds ([26 x i8]* @.str58, i32 0, i32 25)
  br i1 %exitcond, label %for.end381, label %cont370

for.end381:                                       ; preds = %cont373
  %71 = load i32* @specialcomma, align 4, !tbaa !0
  %tobool382 = icmp eq i32 %71, 0
  br i1 %tobool382, label %if.end393, label %cont389

cont389:                                          ; preds = %for.end381
  %72 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 44), align 2, !tbaa !5
  %or391 = or i16 %72, 2048
  store i16 %or391, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 44), align 2, !tbaa !5
  br label %if.end393

if.end393:                                        ; preds = %for.end381, %cont389
  %73 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 17), align 1, !tbaa !1
  %tobool395 = icmp eq i8 %73, 0
  %74 = load i8* @bangchar, align 1, !tbaa !1
  %tobool397 = icmp eq i8 %74, 0
  %or.cond = or i1 %tobool395, %tobool397
  %75 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool400 = icmp eq i8 %75, 0
  %or.cond466 = or i1 %or.cond, %tobool400
  %76 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool403 = icmp eq i8 %76, 0
  %or.cond467 = or i1 %or.cond466, %tobool403
  br i1 %or.cond467, label %if.end414, label %cont408

cont408:                                          ; preds = %if.end393
  %idxprom409 = zext i8 %74 to i32
  %arrayidx410 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom409
  %77 = load i16* %arrayidx410, align 2, !tbaa !5
  %or412 = or i16 %77, 2048
  store i16 %or412, i16* %arrayidx410, align 2, !tbaa !5
  br label %if.end414

if.end414:                                        ; preds = %if.end393, %cont408
  ret void
}

define internal fastcc void @set_widearray(i8* %mb_array, %struct.widechar_array* nocapture %wca) nounwind {
entry:
  %wci = alloca i32, align 4
  %chars = getelementptr inbounds %struct.widechar_array* %wca, i32 0, i32 0
  %0 = load i32** %chars, align 4, !tbaa !3
  %tobool = icmp eq i32* %0, null
  br i1 %tobool, label %cont, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) nounwind
  store i32* null, i32** %chars, align 4, !tbaa !3
  br label %cont

cont:                                             ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.widechar_array* %wca, i32 0, i32 1
  store i32 0, i32* %len, align 4, !tbaa !0
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool3 = icmp eq i8 %2, 0
  %tobool6 = icmp eq i8* %mb_array, null
  %or.cond = or i1 %tobool3, %tobool6
  br i1 %or.cond, label %if.end28, label %if.then7

if.then7:                                         ; preds = %cont
  %call = call i32 @strlen(i8* %mb_array) nounwind readonly
  %3 = call i8* @llvm.stacksave()
  %vla = alloca i32, i32 %call, align 4
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %4 = load i8* %mb_array, align 1, !tbaa !1
  %tobool844 = icmp eq i8 %4, 0
  br i1 %tobool844, label %while.end, label %while.body

while.body:                                       ; preds = %if.then7, %cont16
  %mb_array.addr.046 = phi i8* [ %add.ptr, %cont16 ], [ %mb_array, %if.then7 ]
  %wcptr.045 = phi i32* [ %incdec.ptr, %cont16 ], [ %vla, %if.then7 ]
  %call9 = call i32 @mb_metacharlenconv(i8* %mb_array.addr.046, i32* %wci)
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %while.end, label %if.end12

if.end12:                                         ; preds = %while.body
  %5 = load i32* %wci, align 4, !tbaa !0
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %cont16, label %ioc_bb15

ioc_bb15:                                         ; preds = %if.end14
  %7 = zext i32 %5 to i64
  call void @__ioc_report_conversion(i32 82, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %7, i8 0) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb15, %if.end14
  %incdec.ptr = getelementptr inbounds i32* %wcptr.045, i32 1
  store i32 %5, i32* %wcptr.045, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %mb_array.addr.046, i32 %call9
  %8 = load i8* %add.ptr, align 1, !tbaa !1
  %tobool8 = icmp eq i8 %8, 0
  br i1 %tobool8, label %while.end, label %while.body

while.end:                                        ; preds = %cont16, %while.body, %if.then7
  %wcptr.0.lcssa = phi i32* [ %vla, %if.then7 ], [ %wcptr.045, %while.body ], [ %incdec.ptr, %cont16 ]
  %sub.ptr.lhs.cast = ptrtoint i32* %wcptr.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint i32* %vla to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %9 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %9, label %cont18, label %ioc_bb17

ioc_bb17:                                         ; preds = %while.end
  %10 = sext i32 %sub.ptr.div to i64
  call void @__ioc_report_conversion(i32 92, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %ioc_bb17, %while.end
  store i32 %sub.ptr.div, i32* %len, align 4, !tbaa !0
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.ptr.div, i32 4)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb21, label %cont22

ioc_bb21:                                         ; preds = %cont18
  %14 = zext i32 %sub.ptr.div to i64
  call void @__ioc_report_mul_overflow(i32 93, i32 51, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %14, i64 4, i8 5) nounwind
  br label %cont22

cont22:                                           ; preds = %cont18, %ioc_bb21
  %call23 = call i8* @zalloc(i32 %12) nounwind
  %15 = bitcast i8* %call23 to i32*
  store i32* %15, i32** %chars, align 4, !tbaa !3
  %16 = load i32* %len, align 4, !tbaa !0
  %call27 = call i32* @wmemcpy(i32* %15, i32* %vla, i32 %16) nounwind
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %cont22
  call void @llvm.stackrestore(i8* %3)
  br label %if.end28

if.end28:                                         ; preds = %cont, %cleanup
  ret void
}

define void @makecommaspecial(i32 %yesno) nounwind {
entry:
  store i32 %yesno, i32* @specialcomma, align 4, !tbaa !0
  %cmp = icmp eq i32 %yesno, 0
  %0 = load i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 44), align 2, !tbaa !5
  %and = and i16 %0, -2049
  %or = or i16 %0, 2048
  %storemerge = select i1 %cmp, i16 %and, i16 %or
  store i16 %storemerge, i16* getelementptr inbounds ([256 x i16]* @typtab, i32 0, i32 44), align 2
  ret void
}

define i32 @wcsiblank(i32 %wc) nounwind {
entry:
  %call = tail call i32 @iswspace(i32 %wc) nounwind
  %tobool = icmp eq i32 %call, 0
  %cmp = icmp eq i32 %wc, 10
  %or.cond = or i1 %tobool, %cmp
  %0 = zext i1 %or.cond to i32
  %retval.0 = xor i32 %0, 1
  ret i32 %retval.0
}

declare i32 @iswspace(i32) nounwind

declare i32 @iswalnum(i32) nounwind

declare i32* @wmemchr(i32*, i32, i32) nounwind readonly

define i8** @zarrdup(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !3
  %tobool3.i = icmp eq i8* %0, null
  br i1 %tobool3.i, label %arrlen.exit, label %for.inc.i

for.inc.i:                                        ; preds = %entry, %for.cond.backedge.i
  %count.05.i = phi i32 [ %2, %for.cond.backedge.i ], [ 0, %entry ]
  %s.addr.04.i = phi i8** [ %incdec.ptr.i, %for.cond.backedge.i ], [ %s, %entry ]
  %incdec.ptr.i = getelementptr inbounds i8** %s.addr.04.i, i32 1
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.05.i, i32 1) nounwind
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb.i, %for.inc.i
  %4 = load i8** %incdec.ptr.i, align 4, !tbaa !3
  %tobool.i = icmp eq i8* %4, null
  br i1 %tobool.i, label %arrlen.exit, label %for.inc.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %5 = sext i32 %count.05.i to i64
  tail call void @__ioc_report_add_overflow(i32 1774, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

arrlen.exit:                                      ; preds = %for.cond.backedge.i, %entry
  %count.0.lcssa.i = phi i32 [ 0, %entry ], [ %2, %for.cond.backedge.i ]
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0.lcssa.i, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %arrlen.exit
  %9 = sext i32 %count.0.lcssa.i to i64
  tail call void @__ioc_report_add_overflow(i32 3316, i32 57, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %arrlen.exit, %ioc_bb
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_conversion(i32 3316, i32 46, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %15 = zext i32 %7 to i64
  tail call void @__ioc_report_mul_overflow(i32 3316, i32 44, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %15, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call5 = tail call i8* @zalloc(i32 %13) nounwind
  %16 = bitcast i8* %call5 to i8**
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %cont4
  %x.0 = phi i8** [ %16, %cont4 ], [ %incdec.ptr7, %while.cond ]
  %s.addr.0 = phi i8** [ %s, %cont4 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8** %s.addr.0, i32 1
  %17 = load i8** %s.addr.0, align 4, !tbaa !3
  %call6 = tail call i8* @ztrdup(i8* %17) nounwind
  %incdec.ptr7 = getelementptr inbounds i8** %x.0, i32 1
  store i8* %call6, i8** %x.0, align 4, !tbaa !3
  %tobool = icmp eq i8* %call6, null
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8** %16
}

define i32** @wcs_zarrdup(i32** nocapture %s) nounwind {
entry:
  %0 = load i32** %s, align 4
  %tobool3.i = icmp eq i32* %0, null
  br i1 %tobool3.i, label %arrlen.exit, label %for.inc.i.preheader

for.inc.i.preheader:                              ; preds = %entry
  %1 = bitcast i32** %s to i8**
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.preheader, %for.cond.backedge.i
  %count.05.i = phi i32 [ %3, %for.cond.backedge.i ], [ 0, %for.inc.i.preheader ]
  %s.addr.04.i = phi i8** [ %incdec.ptr.i, %for.cond.backedge.i ], [ %1, %for.inc.i.preheader ]
  %incdec.ptr.i = getelementptr inbounds i8** %s.addr.04.i, i32 1
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.05.i, i32 1) nounwind
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb.i, %for.inc.i
  %5 = load i8** %incdec.ptr.i, align 4, !tbaa !3
  %tobool.i = icmp eq i8* %5, null
  br i1 %tobool.i, label %arrlen.exit, label %for.inc.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %6 = sext i32 %count.05.i to i64
  tail call void @__ioc_report_add_overflow(i32 1774, i32 36, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

arrlen.exit:                                      ; preds = %for.cond.backedge.i, %entry
  %count.0.lcssa.i = phi i32 [ 0, %entry ], [ %3, %for.cond.backedge.i ]
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0.lcssa.i, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %arrlen.exit
  %10 = sext i32 %count.0.lcssa.i to i64
  tail call void @__ioc_report_add_overflow(i32 3329, i32 74, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %arrlen.exit, %ioc_bb
  %11 = icmp sgt i32 %8, -1
  br i1 %11, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %12 = sext i32 %8 to i64
  tail call void @__ioc_report_conversion(i32 3329, i32 52, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %16 = zext i32 %8 to i64
  tail call void @__ioc_report_mul_overflow(i32 3329, i32 50, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 4, i64 %16, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call5 = tail call i8* @zalloc(i32 %14) nounwind
  %17 = bitcast i8* %call5 to i32**
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %cont4
  %x.0 = phi i32** [ %17, %cont4 ], [ %incdec.ptr7, %while.cond ]
  %s.addr.0 = phi i32** [ %s, %cont4 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i32** %s.addr.0, i32 1
  %18 = load i32** %s.addr.0, align 4, !tbaa !3
  %call6 = tail call i32* @wcs_ztrdup(i32* %18) nounwind
  %incdec.ptr7 = getelementptr inbounds i32** %x.0, i32 1
  store i32* %call6, i32** %x.0, align 4, !tbaa !3
  %tobool = icmp eq i32* %call6, null
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32** %17
}

declare i32* @wcs_ztrdup(i32*)

define void @setcbreak() nounwind {
entry:
  %ti = alloca %struct.ttyinfo, align 4
  %0 = bitcast %struct.ttyinfo* %ti to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.ttyinfo* @shttyinfo to i8*), i32 68, i32 4, i1 false), !tbaa.struct !9
  call void @__ioc_report_conversion(i32 3501, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -3, i8 1) nounwind
  %c_lflag = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 3
  %1 = load i32* %c_lflag, align 4, !tbaa !0
  %and = and i32 %1, -3
  store i32 %and, i32* %c_lflag, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 6
  store i8 1, i8* %arrayidx, align 1, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0, i32 5, i32 5
  store i8 0, i8* %arrayidx8, align 1, !tbaa !1
  %2 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %settyinfo.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %tio.i = getelementptr inbounds %struct.ttyinfo* %ti, i32 0, i32 0
  %call.i9 = call i32 @tcsetattr(i32 %2, i32 1, %struct.termios* %tio.i) nounwind
  %cmp3.i10 = icmp eq i32 %call.i9, -1
  br i1 %cmp3.i10, label %land.rhs.i.lr.ph, label %settyinfo.exit

land.rhs.i.lr.ph:                                 ; preds = %while.cond.preheader.i
  %call4.i = call i32* @__errno_location() nounwind readnone
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.lr.ph, %land.rhs.while.cond_crit_edge.i
  %3 = load i32* %call4.i, align 4, !tbaa !0
  %cmp5.i = icmp eq i32 %3, 4
  br i1 %cmp5.i, label %land.rhs.while.cond_crit_edge.i, label %settyinfo.exit

land.rhs.while.cond_crit_edge.i:                  ; preds = %land.rhs.i
  %.pre.i = load i32* @SHTTY, align 4, !tbaa !0
  %call.i = call i32 @tcsetattr(i32 %.pre.i, i32 1, %struct.termios* %tio.i) nounwind
  %cmp3.i = icmp eq i32 %call.i, -1
  br i1 %cmp3.i, label %land.rhs.i, label %settyinfo.exit

settyinfo.exit:                                   ; preds = %while.cond.preheader.i, %land.rhs.i, %land.rhs.while.cond_crit_edge.i, %entry
  ret void
}

declare i32 @tcsetpgrp(i32, i32) nounwind

declare i32 @kill(i32, i32) nounwind

define i32 @gettygrp() nounwind {
entry:
  %0 = load i32* @SHTTY, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @tcgetpgrp(i32 %0) nounwind
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @tcgetpgrp(i32) nounwind

declare i8* @hrealloc(i8*, i32, i32)

define i8* @ztrdup_metafy(i8* %s) nounwind {
entry:
  %tobool = icmp eq i8* %s, null
  br i1 %tobool, label %return, label %cont

cont:                                             ; preds = %entry
  %call = tail call i8* @metafy(i8* %s, i32 -1, i32 3)
  br label %return

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ null, %entry ]
  ret i8* %retval.0
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

define i32 @ztrcmp(i8* nocapture %s1, i8* nocapture %s2) nounwind {
entry:
  %0 = load i8* %s1, align 1, !tbaa !1
  %tobool60 = icmp eq i8 %0, 0
  br i1 %tobool60, label %if.end16, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %.pr = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %s2.addr.062 = phi i8* [ %incdec.ptr4, %while.body ], [ %s2, %entry ]
  %s1.addr.061 = phi i8* [ %incdec.ptr, %while.body ], [ %s1, %entry ]
  %1 = load i8* %s2.addr.062, align 1, !tbaa !1
  %cmp = icmp eq i8 %.pr, %1
  br i1 %cmp, label %while.body, label %ioc_bb7

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.061, i32 1
  %incdec.ptr4 = getelementptr inbounds i8* %s2.addr.062, i32 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.end16, label %land.rhs

ioc_bb7:                                          ; preds = %land.rhs
  %conv5 = sext i8 %.pr to i32
  tail call void @__ioc_report_conversion(i32 3786, i32 43, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3786, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -125, i8 1) nounwind
  br label %if.end16

if.end16:                                         ; preds = %entry, %while.body, %ioc_bb7
  %s2.addr.059 = phi i8* [ %s2.addr.062, %ioc_bb7 ], [ %s2, %entry ], [ %incdec.ptr4, %while.body ]
  %c1.0 = phi i32 [ %conv5, %ioc_bb7 ], [ -1, %entry ], [ -1, %while.body ]
  %3 = load i8* %s2.addr.059, align 1, !tbaa !1
  %tobool18 = icmp eq i8 %3, 0
  br i1 %tobool18, label %if.end34, label %ioc_bb23

ioc_bb23:                                         ; preds = %if.end16
  %conv17 = sext i8 %3 to i32
  tail call void @__ioc_report_conversion(i32 3790, i32 43, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3790, i32 35, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 -125, i8 1) nounwind
  br label %if.end34

if.end34:                                         ; preds = %if.end16, %ioc_bb23
  %c2.0 = phi i32 [ %conv17, %ioc_bb23 ], [ -1, %if.end16 ]
  %cmp35 = icmp eq i32 %c1.0, %c2.0
  br i1 %cmp35, label %return, label %if.else38

if.else38:                                        ; preds = %if.end34
  %cmp39 = icmp slt i32 %c1.0, %c2.0
  %. = select i1 %cmp39, i32 -1, i32 1
  ret i32 %.

return:                                           ; preds = %if.end34
  ret i32 0
}

define i32 @ztrsub(i8* %t, i8* %s) nounwind {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %t to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %ioc_bb4, %if.then, %entry
  %s.addr.0.ph = phi i8* [ %s, %entry ], [ %incdec.ptr3, %if.then ], [ %incdec.ptr3, %ioc_bb4 ]
  %l.0.ph = phi i32 [ %sub.ptr.sub, %entry ], [ %2, %if.then ], [ %2, %ioc_bb4 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %s.addr.0.ph, %while.cond.outer ]
  %cmp = icmp eq i8* %s.addr.0, %t
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %0 = load i8* %s.addr.0, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 3821, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp1 = icmp eq i8 %0, -125
  br i1 %cmp1, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  %incdec.ptr3 = getelementptr inbounds i8* %s.addr.0, i32 2
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.0.ph, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb4, label %while.cond.outer

ioc_bb4:                                          ; preds = %if.then
  %4 = sext i32 %l.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 3825, i32 8, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  ret i32 %l.0.ph
}

define i8* @zreaddir(%struct.__dirstream* %dir, i32 %ignoredots) nounwind {
entry:
  %call26 = tail call %struct.dirent* @readdir64(%struct.__dirstream* %dir) nounwind
  %tobool27 = icmp eq %struct.dirent* %call26, null
  br i1 %tobool27, label %return, label %do.cond.lr.ph

do.cond.lr.ph:                                    ; preds = %entry
  %tobool1 = icmp eq i32 %ignoredots, 0
  br label %do.cond

do.cond:                                          ; preds = %do.cond.lr.ph, %do.body.backedge
  %call28 = phi %struct.dirent* [ %call26, %do.cond.lr.ph ], [ %call, %do.body.backedge ]
  %arraydecay.pre = getelementptr inbounds %struct.dirent* %call28, i32 0, i32 4, i32 0
  br i1 %tobool1, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.cond
  %0 = load i8* %arraydecay.pre, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 46
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx4 = getelementptr inbounds %struct.dirent* %call28, i32 0, i32 4, i32 1
  %1 = load i8* %arrayidx4, align 1, !tbaa !1
  switch i8 %1, label %do.end [
    i8 0, label %do.body.backedge
    i8 46, label %land.rhs11
  ]

land.rhs11:                                       ; preds = %land.rhs
  %arrayidx13 = getelementptr inbounds %struct.dirent* %call28, i32 0, i32 4, i32 2
  %2 = load i8* %arrayidx13, align 1, !tbaa !1
  %lnot = icmp eq i8 %2, 0
  br i1 %lnot, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %land.rhs11, %land.rhs
  %call = tail call %struct.dirent* @readdir64(%struct.__dirstream* %dir) nounwind
  %tobool = icmp eq %struct.dirent* %call, null
  br i1 %tobool, label %return, label %do.cond

do.end:                                           ; preds = %do.cond, %land.rhs, %land.lhs.true, %land.rhs11
  %call17 = tail call i8* @metafy(i8* %arraydecay.pre, i32 -1, i32 2)
  br label %return

return:                                           ; preds = %entry, %do.body.backedge, %do.end
  %retval.0 = phi i8* [ %call17, %do.end ], [ null, %do.body.backedge ], [ null, %entry ]
  ret i8* %retval.0
}

declare %struct.dirent* @readdir64(%struct.__dirstream*)

define i8* @nicedupstring(i8* %s) nounwind {
entry:
  %retstr.i = alloca i8*, align 4
  %0 = bitcast i8** %retstr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %call.i = call i32 @mb_niceformat(i8* %s, %struct._IO_FILE* null, i8** %retstr.i, i32 1) nounwind
  %1 = load i8** %retstr.i, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %1
}

define i8* @nicedup(i8* %s, i32 %heap) nounwind {
entry:
  %retstr = alloca i8*, align 4
  %call = call i32 @mb_niceformat(i8* %s, %struct._IO_FILE* null, i8** %retstr, i32 %heap)
  %0 = load i8** %retstr, align 4, !tbaa !3
  ret i8* %0
}

declare void @untokenize(i8*)

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) nounwind

define i32 @mb_metacharlenconv_r(i8* %s, i32* %wcp, %struct.__mbstate_t* %mbsp) nounwind {
entry:
  %inchar = alloca i8, align 1
  %wc = alloca i32, align 4
  call void @__ioc_report_conversion(i32 4005, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -1, i8 1) nounwind
  br label %for.cond

for.cond:                                         ; preds = %ioc_bb26, %entry
  %ptr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr11, %ioc_bb26 ]
  %0 = load i8* %ptr.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %for.end, label %ioc_bb3

ioc_bb3:                                          ; preds = %for.cond
  call void @__ioc_report_conversion(i32 4010, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %0, -125
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ioc_bb3
  %incdec.ptr = getelementptr inbounds i8* %ptr.0, i32 1
  %1 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv6 = sext i8 %1 to i32
  %xor = xor i32 %conv6, 32
  %xor.off = add i32 %xor, 128
  %2 = icmp ult i32 %xor.off, 256
  br i1 %2, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %if.then
  %3 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 4011, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %if.then
  %conv10 = trunc i32 %xor to i8
  br label %if.end

if.else:                                          ; preds = %ioc_bb3
  %4 = load i8* %ptr.0, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %cont9
  %storemerge = phi i8 [ %4, %if.else ], [ %conv10, %cont9 ]
  %ptr.1 = phi i8* [ %ptr.0, %if.else ], [ %incdec.ptr, %cont9 ]
  store i8 %storemerge, i8* %inchar, align 1
  %incdec.ptr11 = getelementptr inbounds i8* %ptr.1, i32 1
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* %mbsp) nounwind
  call void @__ioc_report_conversion(i32 4018, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp19 = icmp eq i32 %call, -1
  br i1 %cmp19, label %for.end, label %ioc_bb26

ioc_bb26:                                         ; preds = %if.end
  call void @__ioc_report_conversion(i32 4020, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp28 = icmp eq i32 %call, -2
  br i1 %cmp28, label %for.cond, label %if.end31

if.end31:                                         ; preds = %ioc_bb26
  %tobool32 = icmp eq i32* %wcp, null
  br i1 %tobool32, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end31
  %5 = load i32* %wc, align 4, !tbaa !0
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %cont36, label %ioc_bb35

ioc_bb35:                                         ; preds = %if.then33
  %7 = sext i32 %5 to i64
  call void @__ioc_report_conversion(i32 4023, i32 15, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont36

cont36:                                           ; preds = %ioc_bb35, %if.then33
  store i32 %5, i32* %wcp, align 4, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %cont36
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr11 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

for.end:                                          ; preds = %for.cond, %if.end
  %ptr.2 = phi i8* [ %incdec.ptr11, %if.end ], [ %ptr.0, %for.cond ]
  %tobool38 = icmp eq i32* %wcp, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  store i32 -1, i32* %wcp, align 4, !tbaa !0
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.then39
  %8 = bitcast %struct.__mbstate_t* %mbsp to i64*
  store i64 0, i64* %8, align 4
  %cmp41 = icmp ugt i8* %ptr.2, %s
  br i1 %cmp41, label %if.then43, label %return

if.then43:                                        ; preds = %if.end40
  %9 = load i8* %s, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4032, i32 34, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp47 = icmp eq i8 %9, -125
  %conv48 = zext i1 %cmp47 to i32
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv48, i32 1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb49, label %return

ioc_bb49:                                         ; preds = %if.then43
  %13 = zext i1 %cmp47 to i64
  call void @__ioc_report_add_overflow(i32 4032, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 1, i64 %13, i8 13) nounwind
  br label %return

return:                                           ; preds = %if.end40, %ioc_bb49, %if.then43, %if.end37
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.end37 ], [ %11, %if.then43 ], [ %11, %ioc_bb49 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

define i32 @mb_metastrlen(i8* nocapture %ptr, i32 %width) nounwind {
entry:
  %inchar = alloca i8, align 1
  %wc = alloca i32, align 4
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %ioc_bb1

if.then:                                          ; preds = %entry
  %1 = load i8* %ptr, align 1, !tbaa !1
  %tobool8.i = icmp eq i8 %1, 0
  br i1 %tobool8.i, label %return, label %for.body.i

for.body.i:                                       ; preds = %if.then, %for.cond.backedge.i
  %2 = phi i8 [ %6, %for.cond.backedge.i ], [ %1, %if.then ]
  %l.010.i = phi i32 [ %4, %for.cond.backedge.i ], [ 0, %if.then ]
  %s.addr.09.i = phi i8* [ %s.addr.1.i, %for.cond.backedge.i ], [ %ptr, %if.then ]
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.09.i, i32 1
  call void @__ioc_report_conversion(i32 3806, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp.i = icmp eq i8 %2, -125
  %incdec.ptr2.i = getelementptr inbounds i8* %s.addr.09.i, i32 2
  %s.addr.1.i = select i1 %cmp.i, i8* %incdec.ptr2.i, i8* %incdec.ptr.i
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.010.i, i32 1) nounwind
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb3.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb3.i, %for.body.i
  %6 = load i8* %s.addr.1.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %6, 0
  br i1 %tobool.i, label %return, label %for.body.i

ioc_bb3.i:                                        ; preds = %for.body.i
  %7 = sext i32 %l.010.i to i64
  call void @__ioc_report_add_overflow(i32 3805, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

ioc_bb1:                                          ; preds = %entry
  call void @__ioc_report_conversion(i32 4097, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -1, i8 1) nounwind
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %8 = load i8* %ptr, align 1, !tbaa !1
  %tobool384 = icmp eq i8 %8, 0
  br i1 %tobool384, label %while.end, label %ioc_bb4.lr.ph

ioc_bb4.lr.ph:                                    ; preds = %ioc_bb1
  %tobool46 = icmp eq i32 %width, 0
  %cmp52 = icmp eq i32 %width, 1
  br label %ioc_bb4

ioc_bb4:                                          ; preds = %ioc_bb4.lr.ph, %while.cond.backedge
  %9 = phi i8 [ %8, %ioc_bb4.lr.ph ], [ %17, %while.cond.backedge ]
  %num_in_char.088 = phi i32 [ 0, %ioc_bb4.lr.ph ], [ %num_in_char.0.be, %while.cond.backedge ]
  %num.087 = phi i32 [ 0, %ioc_bb4.lr.ph ], [ %num.0.be, %while.cond.backedge ]
  %laststart.086 = phi i8* [ %ptr, %ioc_bb4.lr.ph ], [ %laststart.0.be, %while.cond.backedge ]
  %ptr.addr.085 = phi i8* [ %ptr, %ioc_bb4.lr.ph ], [ %ptr.addr.0.be, %while.cond.backedge ]
  call void @__ioc_report_conversion(i32 4101, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %9, -125
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %ioc_bb4
  %incdec.ptr = getelementptr inbounds i8* %ptr.addr.085, i32 1
  %10 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv8 = sext i8 %10 to i32
  %xor = xor i32 %conv8, 32
  %xor.off = add i32 %xor, 128
  %11 = icmp ult i32 %xor.off, 256
  br i1 %11, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %if.then7
  %12 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 4102, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %if.then7
  %conv12 = trunc i32 %xor to i8
  br label %if.end13

if.else:                                          ; preds = %ioc_bb4
  %13 = load i8* %ptr.addr.085, align 1, !tbaa !1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %cont11
  %storemerge = phi i8 [ %13, %if.else ], [ %conv12, %cont11 ]
  %ptr.addr.1 = phi i8* [ %ptr.addr.085, %if.else ], [ %incdec.ptr, %cont11 ]
  store i8 %storemerge, i8* %inchar, align 1
  %incdec.ptr14 = getelementptr inbounds i8* %ptr.addr.1, i32 1
  %call17 = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* @mb_shiftstate) nounwind
  call void @__ioc_report_conversion(i32 4107, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp23 = icmp eq i32 %call17, -2
  br i1 %cmp23, label %if.then25, label %ioc_bb32

if.then25:                                        ; preds = %if.end13
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num_in_char.088, i32 1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb26, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then25, %ioc_bb26, %ioc_bb63, %if.else62, %ioc_bb58, %if.else57, %ioc_bb55, %if.then54, %ioc_bb43, %if.then36, %if.then47
  %ptr.addr.0.be = phi i8* [ %incdec.ptr14, %if.then25 ], [ %incdec.ptr14, %ioc_bb26 ], [ %incdec.ptr14, %if.then47 ], [ %add.ptr42, %if.then36 ], [ %add.ptr42, %ioc_bb43 ], [ %incdec.ptr14, %if.then54 ], [ %incdec.ptr14, %ioc_bb55 ], [ %incdec.ptr14, %if.else57 ], [ %incdec.ptr14, %ioc_bb58 ], [ %incdec.ptr14, %if.else62 ], [ %incdec.ptr14, %ioc_bb63 ]
  %laststart.0.be = phi i8* [ %laststart.086, %if.then25 ], [ %laststart.086, %ioc_bb26 ], [ %incdec.ptr14, %if.then47 ], [ %add.ptr42, %if.then36 ], [ %add.ptr42, %ioc_bb43 ], [ %incdec.ptr14, %if.then54 ], [ %incdec.ptr14, %ioc_bb55 ], [ %incdec.ptr14, %if.else57 ], [ %incdec.ptr14, %ioc_bb58 ], [ %incdec.ptr14, %if.else62 ], [ %incdec.ptr14, %ioc_bb63 ]
  %num.0.be = phi i32 [ %num.087, %if.then25 ], [ %num.087, %ioc_bb26 ], [ %num.087, %if.then47 ], [ %21, %if.then36 ], [ %21, %ioc_bb43 ], [ %26, %if.then54 ], [ %26, %ioc_bb55 ], [ %31, %if.else57 ], [ %31, %ioc_bb58 ], [ %35, %if.else62 ], [ %35, %ioc_bb63 ]
  %num_in_char.0.be = phi i32 [ %15, %if.then25 ], [ %15, %ioc_bb26 ], [ 0, %if.then47 ], [ 0, %if.then36 ], [ 0, %ioc_bb43 ], [ 0, %if.then54 ], [ 0, %ioc_bb55 ], [ 0, %if.else57 ], [ 0, %ioc_bb58 ], [ 0, %if.else62 ], [ 0, %ioc_bb63 ]
  %17 = load i8* %ptr.addr.0.be, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %17, 0
  br i1 %tobool3, label %while.end, label %ioc_bb4

ioc_bb26:                                         ; preds = %if.then25
  %18 = sext i32 %num_in_char.088 to i64
  call void @__ioc_report_add_overflow(i32 4108, i32 18, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %while.cond.backedge

ioc_bb32:                                         ; preds = %if.end13
  call void @__ioc_report_conversion(i32 4111, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp34 = icmp eq i32 %call17, -1
  br i1 %cmp34, label %if.then36, label %if.else45

if.then36:                                        ; preds = %ioc_bb32
  store i64 0, i64* bitcast (%struct.__mbstate_t* @mb_shiftstate to i64*), align 8
  %19 = load i8* %laststart.086, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 4114, i32 53, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp40 = icmp eq i8 %19, -125
  %add.ptr.sum = select i1 %cmp40, i32 2, i32 1
  %add.ptr42 = getelementptr inbounds i8* %laststart.086, i32 %add.ptr.sum
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.087, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb43, label %while.cond.backedge

ioc_bb43:                                         ; preds = %if.then36
  %23 = sext i32 %num.087 to i64
  call void @__ioc_report_add_overflow(i32 4115, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %23, i64 1, i8 13) nounwind
  br label %while.cond.backedge

if.else45:                                        ; preds = %ioc_bb32
  br i1 %tobool46, label %if.else62, label %if.then47

if.then47:                                        ; preds = %if.else45
  %24 = load i32* %wc, align 4, !tbaa !0
  %call48 = call i32 @wcwidth(i32 %24) nounwind
  %cmp49 = icmp sgt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %while.cond.backedge

if.then51:                                        ; preds = %if.then47
  br i1 %cmp52, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then51
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.087, i32 %call48)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb55, label %while.cond.backedge

ioc_bb55:                                         ; preds = %if.then54
  %28 = sext i32 %call48 to i64
  %29 = sext i32 %num.087 to i64
  call void @__ioc_report_add_overflow(i32 4125, i32 17, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %29, i64 %28, i8 13) nounwind
  br label %while.cond.backedge

if.else57:                                        ; preds = %if.then51
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.087, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb58, label %while.cond.backedge

ioc_bb58:                                         ; preds = %if.else57
  %33 = sext i32 %num.087 to i64
  call void @__ioc_report_add_overflow(i32 4127, i32 16, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %while.cond.backedge

if.else62:                                        ; preds = %if.else45
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.087, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb63, label %while.cond.backedge

ioc_bb63:                                         ; preds = %if.else62
  %37 = sext i32 %num.087 to i64
  call void @__ioc_report_add_overflow(i32 4131, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %ioc_bb1
  %num_in_char.0.lcssa = phi i32 [ 0, %ioc_bb1 ], [ %num_in_char.0.be, %while.cond.backedge ]
  %num.0.lcssa = phi i32 [ 0, %ioc_bb1 ], [ %num.0.be, %while.cond.backedge ]
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.0.lcssa, i32 %num_in_char.0.lcssa)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb68, label %return

ioc_bb68:                                         ; preds = %while.end
  %41 = sext i32 %num_in_char.0.lcssa to i64
  %42 = sext i32 %num.0.lcssa to i64
  call void @__ioc_report_add_overflow(i32 4137, i32 14, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %42, i64 %41, i8 13) nounwind
  br label %return

return:                                           ; preds = %for.cond.backedge.i, %if.then, %ioc_bb68, %while.end
  %retval.0 = phi i32 [ %39, %while.end ], [ %39, %ioc_bb68 ], [ 0, %if.then ], [ %4, %for.cond.backedge.i ]
  ret i32 %retval.0
}

define i32 @hasspecial(i8* nocapture %s) nounwind {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cont5, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr13, %cont5 ]
  %0 = load i8* %s.addr.0, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %ioc_bb

ioc_bb:                                           ; preds = %for.cond
  tail call void @__ioc_report_conversion(i32 4156, i32 51, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %0, -125
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %ioc_bb
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %1 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv2 = sext i8 %1 to i32
  %xor = xor i32 %conv2, 32
  br label %cond.end

cond.false:                                       ; preds = %ioc_bb
  %2 = load i8* %s.addr.0, align 1, !tbaa !1
  %conv3 = sext i8 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %s.addr.1 = phi i8* [ %incdec.ptr, %cond.true ], [ %s.addr.0, %cond.false ]
  %cond = phi i32 [ %xor, %cond.true ], [ %conv3, %cond.false ]
  %3 = icmp ult i32 %cond, 256
  br i1 %3, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cond.end
  %4 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 4156, i32 32, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cond.end
  %idxprom = and i32 %cond, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %5 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %5, 2048
  %tobool12 = icmp eq i16 %and, 0
  %incdec.ptr13 = getelementptr inbounds i8* %s.addr.1, i32 1
  br i1 %tobool12, label %for.cond, label %return

return:                                           ; preds = %for.cond, %cont5
  %retval.0 = phi i32 [ 1, %cont5 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

define internal fastcc i8* @addunprintable(i8* %v, i8* %u, i8* %uend) nounwind {
entry:
  %cmp152 = icmp ult i8* %u, %uend
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %entry
  %v.addr.0154 = phi i8* [ %v, %entry ], [ %v.addr.1, %for.inc ]
  %u.addr.0153 = phi i8* [ %u, %entry ], [ %incdec.ptr116, %for.inc ]
  %0 = load i8* %u.addr.0153, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 4171, i32 26, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp1 = icmp eq i8 %0, -125
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8* %u.addr.0153, i32 1
  %1 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv3 = sext i8 %1 to i32
  %xor = xor i32 %conv3, 32
  %notlhs = icmp sgt i8 %1, -1
  %notrhs = icmp slt i32 %xor, 256
  %2 = and i1 %notrhs, %notlhs
  br i1 %2, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.then
  %3 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 4172, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %if.then
  %conv6 = trunc i32 %xor to i8
  br label %if.end

if.else:                                          ; preds = %for.body
  %4 = load i8* %u.addr.0153, align 1, !tbaa !1
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %if.end, label %ioc_bb9

ioc_bb9:                                          ; preds = %if.else
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 4174, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @12, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %if.end

if.end:                                           ; preds = %if.else, %ioc_bb9, %cont5
  %u.addr.1 = phi i8* [ %incdec.ptr, %cont5 ], [ %u.addr.0153, %ioc_bb9 ], [ %u.addr.0153, %if.else ]
  %c.0.in = phi i8 [ %conv6, %cont5 ], [ %4, %ioc_bb9 ], [ %4, %if.else ]
  %c.0 = zext i8 %c.0.in to i32
  switch i32 %c.0, label %cont83 [
    i32 0, label %cont13
    i32 7, label %cont35
    i32 8, label %cont42
    i32 12, label %cont49
    i32 10, label %cont56
    i32 13, label %cont63
    i32 9, label %cont70
    i32 11, label %cont77
  ]

cont13:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr17 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 48, i8* %incdec.ptr14, align 1, !tbaa !1
  %arrayidx = getelementptr inbounds i8* %u.addr.1, i32 1
  %7 = load i8* %arrayidx, align 1, !tbaa !1
  %.off151 = add i8 %7, -48
  %8 = icmp ult i8 %.off151, 8
  br i1 %8, label %cont27, label %for.inc

cont27:                                           ; preds = %cont13
  store i8 48, i8* %incdec.ptr17, align 1, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8* %v.addr.0154, i32 3
  %incdec.ptr31 = getelementptr inbounds i8* %v.addr.0154, i32 4
  store i8 48, i8* %incdec.ptr28, align 1, !tbaa !1
  br label %for.inc

cont35:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr39 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 97, i8* %incdec.ptr36, align 1, !tbaa !1
  br label %for.inc

cont42:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr46 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 98, i8* %incdec.ptr43, align 1, !tbaa !1
  br label %for.inc

cont49:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr53 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 102, i8* %incdec.ptr50, align 1, !tbaa !1
  br label %for.inc

cont56:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr60 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 110, i8* %incdec.ptr57, align 1, !tbaa !1
  br label %for.inc

cont63:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr67 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 114, i8* %incdec.ptr64, align 1, !tbaa !1
  br label %for.inc

cont70:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr74 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 116, i8* %incdec.ptr71, align 1, !tbaa !1
  br label %for.inc

cont77:                                           ; preds = %if.end
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8* %v.addr.0154, i32 1
  %incdec.ptr81 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 118, i8* %incdec.ptr78, align 1, !tbaa !1
  br label %for.inc

cont83:                                           ; preds = %if.end
  %incdec.ptr84 = getelementptr inbounds i8* %v.addr.0154, i32 1
  store i8 92, i8* %v.addr.0154, align 1, !tbaa !1
  %shr147 = lshr i32 %c.0, 6
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shr147, i32 48)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb87, label %cont88

ioc_bb87:                                         ; preds = %cont83
  %12 = zext i32 %shr147 to i64
  tail call void @__ioc_report_add_overflow(i32 4231, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %12, i8 13) nounwind
  br label %cont88

cont88:                                           ; preds = %cont83, %ioc_bb87
  %.off = add i32 %10, 128
  %13 = icmp ult i32 %.off, 256
  br i1 %13, label %cont92, label %ioc_bb91

ioc_bb91:                                         ; preds = %cont88
  %14 = sext i32 %10 to i64
  tail call void @__ioc_report_conversion(i32 4231, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont92

cont92:                                           ; preds = %ioc_bb91, %cont88
  %conv93 = trunc i32 %10 to i8
  %incdec.ptr94 = getelementptr inbounds i8* %v.addr.0154, i32 2
  store i8 %conv93, i8* %incdec.ptr84, align 1, !tbaa !1
  %shr97148 = lshr i32 %c.0, 3
  %and98 = and i32 %shr97148, 7
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %and98, i32 48)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb99, label %cont100

ioc_bb99:                                         ; preds = %cont92
  %18 = zext i32 %and98 to i64
  tail call void @__ioc_report_add_overflow(i32 4232, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %18, i8 13) nounwind
  br label %cont100

cont100:                                          ; preds = %cont92, %ioc_bb99
  %.off149 = add i32 %16, 128
  %19 = icmp ult i32 %.off149, 256
  br i1 %19, label %cont104, label %ioc_bb103

ioc_bb103:                                        ; preds = %cont100
  %20 = sext i32 %16 to i64
  tail call void @__ioc_report_conversion(i32 4232, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont104

cont104:                                          ; preds = %ioc_bb103, %cont100
  %conv105 = trunc i32 %16 to i8
  %incdec.ptr106 = getelementptr inbounds i8* %v.addr.0154, i32 3
  store i8 %conv105, i8* %incdec.ptr94, align 1, !tbaa !1
  %and107 = and i32 %c.0, 7
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %and107, i32 48)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb108, label %cont109

ioc_bb108:                                        ; preds = %cont104
  %24 = zext i32 %and107 to i64
  tail call void @__ioc_report_add_overflow(i32 4233, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 48, i64 %24, i8 13) nounwind
  br label %cont109

cont109:                                          ; preds = %cont104, %ioc_bb108
  %.off150 = add i32 %22, 128
  %25 = icmp ult i32 %.off150, 256
  br i1 %25, label %cont113, label %ioc_bb112

ioc_bb112:                                        ; preds = %cont109
  %26 = sext i32 %22 to i64
  tail call void @__ioc_report_conversion(i32 4233, i32 19, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %cont113

cont113:                                          ; preds = %ioc_bb112, %cont109
  %conv114 = trunc i32 %22 to i8
  %incdec.ptr115 = getelementptr inbounds i8* %v.addr.0154, i32 4
  store i8 %conv114, i8* %incdec.ptr106, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %cont35, %cont42, %cont49, %cont56, %cont63, %cont70, %cont77, %cont113, %cont27, %cont13
  %v.addr.1 = phi i8* [ %incdec.ptr115, %cont113 ], [ %incdec.ptr81, %cont77 ], [ %incdec.ptr74, %cont70 ], [ %incdec.ptr67, %cont63 ], [ %incdec.ptr60, %cont56 ], [ %incdec.ptr53, %cont49 ], [ %incdec.ptr46, %cont42 ], [ %incdec.ptr39, %cont35 ], [ %incdec.ptr31, %cont27 ], [ %incdec.ptr17, %cont13 ]
  %incdec.ptr116 = getelementptr inbounds i8* %u.addr.1, i32 1
  %cmp = icmp ult i8* %incdec.ptr116, %uend
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %v.addr.0.lcssa = phi i8* [ %v, %entry ], [ %v.addr.1, %for.inc ]
  ret i8* %v.addr.0.lcssa
}

define i32 @quotedzputs(i8* nocapture %s, %struct._IO_FILE* nocapture %stream) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8]* @.str60, i32 0, i32 0), %struct._IO_FILE* %stream) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hasspecial(i8* %s)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @zputs(i8* %s, %struct._IO_FILE* %stream)
  br label %return

if.end5:                                          ; preds = %if.end
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 140), align 1, !tbaa !1
  %tobool6 = icmp eq i8 %1, 0
  br i1 %tobool6, label %while.cond61.preheader, label %if.then7

while.cond61.preheader:                           ; preds = %if.end5
  %2 = load i8* %s, align 1, !tbaa !1
  %tobool62171 = icmp eq i8 %2, 0
  br i1 %tobool62171, label %if.end141, label %ioc_bb65

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %return, label %while.cond

while.cond:                                       ; preds = %if.then7, %if.end45
  %s.addr.0 = phi i8* [ %incdec.ptr20, %if.end45 ], [ %s, %if.then7 ]
  %3 = load i8* %s.addr.0, align 1, !tbaa !1
  %tobool11 = icmp eq i8 %3, 0
  br i1 %tobool11, label %while.end, label %ioc_bb12

ioc_bb12:                                         ; preds = %while.cond
  tail call void @__ioc_report_conversion(i32 4559, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp14 = icmp eq i8 %3, -125
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %ioc_bb12
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv17 = sext i8 %4 to i32
  %xor = xor i32 %conv17, 32
  br label %if.end19

if.else:                                          ; preds = %ioc_bb12
  %5 = load i8* %s.addr.0, align 1, !tbaa !1
  %conv18 = sext i8 %5 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %s.addr.1 = phi i8* [ %incdec.ptr, %if.then16 ], [ %s.addr.0, %if.else ]
  %c.0 = phi i32 [ %xor, %if.then16 ], [ %conv18, %if.else ]
  %incdec.ptr20 = getelementptr inbounds i8* %s.addr.1, i32 1
  switch i32 %c.0, label %if.end45 [
    i32 39, label %if.then23
    i32 10, label %land.lhs.true
  ]

if.then23:                                        ; preds = %if.end19
  %call24 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %return, label %if.end45

land.lhs.true:                                    ; preds = %if.end19
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool35 = icmp eq i8 %6, 0
  br i1 %tobool35, label %if.end45, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %call37 = tail call i32 @fputc(i32 92, %struct._IO_FILE* %stream) nounwind
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %return, label %if.end45

if.end45:                                         ; preds = %if.end19, %land.lhs.true, %if.then36, %if.then23
  %call46 = tail call i32 @fputc(i32 %c.0, %struct._IO_FILE* %stream) nounwind
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %return, label %while.cond

while.end:                                        ; preds = %while.cond
  %call53 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %return, label %if.end141

ioc_bb65:                                         ; preds = %while.cond61.preheader, %while.cond61.backedge
  %7 = phi i8 [ %11, %while.cond61.backedge ], [ %2, %while.cond61.preheader ]
  %inquote.0173 = phi i32 [ %inquote.0.be, %while.cond61.backedge ], [ 0, %while.cond61.preheader ]
  %s.addr.2172 = phi i8* [ %incdec.ptr76, %while.cond61.backedge ], [ %s, %while.cond61.preheader ]
  tail call void @__ioc_report_conversion(i32 4581, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp67 = icmp eq i8 %7, -125
  br i1 %cmp67, label %if.then69, label %if.else73

if.then69:                                        ; preds = %ioc_bb65
  %incdec.ptr70 = getelementptr inbounds i8* %s.addr.2172, i32 1
  %8 = load i8* %incdec.ptr70, align 1, !tbaa !1
  %conv71 = sext i8 %8 to i32
  %xor72 = xor i32 %conv71, 32
  br label %if.end75

if.else73:                                        ; preds = %ioc_bb65
  %9 = load i8* %s.addr.2172, align 1, !tbaa !1
  %conv74 = sext i8 %9 to i32
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then69
  %s.addr.3 = phi i8* [ %incdec.ptr70, %if.then69 ], [ %s.addr.2172, %if.else73 ]
  %c.1 = phi i32 [ %xor72, %if.then69 ], [ %conv74, %if.else73 ]
  %incdec.ptr76 = getelementptr inbounds i8* %s.addr.3, i32 1
  %cmp77 = icmp eq i32 %c.1, 39
  %tobool80 = icmp ne i32 %inquote.0173, 0
  br i1 %cmp77, label %if.then79, label %if.else97

if.then79:                                        ; preds = %if.end75
  br i1 %tobool80, label %if.then81, label %if.end89

if.then81:                                        ; preds = %if.then79
  %call82 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %return, label %if.end89

if.end89:                                         ; preds = %if.then81, %if.then79
  %call90 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8]* @.str61, i32 0, i32 0), %struct._IO_FILE* %stream) nounwind
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %return, label %while.cond61.backedge

if.else97:                                        ; preds = %if.end75
  br i1 %tobool80, label %if.end107, label %if.then99

if.then99:                                        ; preds = %if.else97
  %call100 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %return, label %if.end107

if.end107:                                        ; preds = %if.then99, %if.else97
  %inquote.2 = phi i32 [ %inquote.0173, %if.else97 ], [ 1, %if.then99 ]
  %cmp108 = icmp ne i32 %c.1, 10
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool112 = icmp eq i8 %10, 0
  %or.cond = or i1 %cmp108, %tobool112
  br i1 %or.cond, label %if.end121, label %if.then113

if.then113:                                       ; preds = %if.end107
  %call114 = tail call i32 @fputc(i32 92, %struct._IO_FILE* %stream) nounwind
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %return, label %if.end121

if.end121:                                        ; preds = %if.end107, %if.then113
  %call122 = tail call i32 @fputc(i32 %c.1, %struct._IO_FILE* %stream) nounwind
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %return, label %while.cond61.backedge

while.cond61.backedge:                            ; preds = %if.end121, %if.end89
  %inquote.0.be = phi i32 [ 0, %if.end89 ], [ %inquote.2, %if.end121 ]
  %11 = load i8* %incdec.ptr76, align 1, !tbaa !1
  %tobool62 = icmp eq i8 %11, 0
  br i1 %tobool62, label %while.end130, label %ioc_bb65

while.end130:                                     ; preds = %while.cond61.backedge
  %tobool131 = icmp eq i32 %inquote.0.be, 0
  br i1 %tobool131, label %if.end141, label %if.then132

if.then132:                                       ; preds = %while.end130
  %call133 = tail call i32 @fputc(i32 39, %struct._IO_FILE* %stream) nounwind
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %return, label %if.end141

if.end141:                                        ; preds = %while.cond61.preheader, %while.end130, %if.then132, %while.end
  br label %return

return:                                           ; preds = %if.end45, %if.then36, %if.then23, %if.end121, %if.then113, %if.then99, %if.end89, %if.then81, %if.then132, %while.end, %if.then7, %if.end141, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.end141 ], [ %call4, %if.then3 ], [ %call, %if.then ], [ -1, %if.then7 ], [ -1, %while.end ], [ -1, %if.then132 ], [ -1, %if.then81 ], [ -1, %if.end89 ], [ -1, %if.then99 ], [ -1, %if.then113 ], [ -1, %if.end121 ], [ -1, %if.then23 ], [ -1, %if.then36 ], [ -1, %if.end45 ]
  ret i32 %retval.0
}

define i8* @dquotedztrdup(i8* nocapture %s) nounwind {
entry:
  %call = tail call i32 @strlen(i8* %s) nounwind readonly
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb1, label %cont4

ioc_bb1:                                          ; preds = %entry
  %3 = zext i32 %call to i64
  tail call void @__ioc_report_mul_overflow(i32 4621, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %3, i64 4, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb1, %entry
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 2)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %7 = zext i32 %1 to i64
  tail call void @__ioc_report_add_overflow(i32 4621, i32 28, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %7, i64 2, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %8 = icmp sgt i32 %5, -1
  br i1 %8, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %cont6
  %9 = zext i32 %5 to i64
  tail call void @__ioc_report_conversion(i32 4621, i32 13, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %9, i8 0) nounwind
  %10 = sext i32 %5 to i64
  tail call void @__ioc_report_conversion(i32 4622, i32 23, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %cont6, %ioc_bb9
  %call11 = tail call i8* @zalloc(i32 %5) nounwind
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool = icmp eq i8 %11, 0
  br i1 %tobool, label %cont61, label %while.cond.preheader

while.cond.preheader:                             ; preds = %cont10
  %12 = load i8* %s, align 1, !tbaa !1
  %tobool12163 = icmp eq i8 %12, 0
  br i1 %tobool12163, label %if.end118, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %13 = phi i8 [ %19, %while.cond.backedge ], [ %12, %while.cond.preheader ]
  %inquote.0166 = phi i32 [ %inquote.0.be, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %s.addr.0165 = phi i8* [ %s.addr.1, %while.cond.backedge ], [ %s, %while.cond.preheader ]
  %p.0164 = phi i8* [ %p.0.be, %while.cond.backedge ], [ %call11, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0165, i32 1
  %conv = sext i8 %13 to i32
  tail call void @__ioc_report_conversion(i32 4629, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %13, -125
  br i1 %cmp, label %if.then16, label %if.end

if.then16:                                        ; preds = %while.body
  %incdec.ptr17 = getelementptr inbounds i8* %s.addr.0165, i32 2
  %14 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv18 = sext i8 %14 to i32
  %xor = xor i32 %conv18, 32
  br label %if.end

if.end:                                           ; preds = %if.then16, %while.body
  %s.addr.1 = phi i8* [ %incdec.ptr17, %if.then16 ], [ %incdec.ptr, %while.body ]
  %c.0 = phi i32 [ %xor, %if.then16 ], [ %conv, %while.body ]
  switch i32 %c.0, label %sw.default [
    i32 34, label %sw.bb20
    i32 36, label %sw.bb20
    i32 96, label %sw.bb20
  ]

sw.bb20:                                          ; preds = %if.end, %if.end, %if.end
  %tobool21 = icmp eq i32 %inquote.0166, 0
  br i1 %tobool21, label %cont28, label %cont24

cont24:                                           ; preds = %sw.bb20
  %incdec.ptr25 = getelementptr inbounds i8* %p.0164, i32 1
  store i8 34, i8* %p.0164, align 1, !tbaa !1
  br label %cont28

cont28:                                           ; preds = %cont24, %sw.bb20
  %p.1 = phi i8* [ %incdec.ptr25, %cont24 ], [ %p.0164, %sw.bb20 ]
  %incdec.ptr29 = getelementptr inbounds i8* %p.1, i32 1
  store i8 92, i8* %p.1, align 1, !tbaa !1
  %c.0.off = add i32 %c.0, 128
  %15 = icmp ult i32 %c.0.off, 256
  br i1 %15, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %cont28
  %16 = sext i32 %c.0 to i64
  tail call void @__ioc_report_conversion(i32 4645, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %cont28
  %conv33 = trunc i32 %c.0 to i8
  %incdec.ptr34 = getelementptr inbounds i8* %p.1, i32 2
  store i8 %conv33, i8* %incdec.ptr29, align 1, !tbaa !1
  br label %while.cond.backedge

sw.default:                                       ; preds = %if.end
  %tobool35 = icmp eq i32 %inquote.0166, 0
  br i1 %tobool35, label %cont38, label %if.end40

cont38:                                           ; preds = %sw.default
  %incdec.ptr39 = getelementptr inbounds i8* %p.0164, i32 1
  store i8 34, i8* %p.0164, align 1, !tbaa !1
  br label %if.end40

if.end40:                                         ; preds = %sw.default, %cont38
  %p.2 = phi i8* [ %p.0164, %sw.default ], [ %incdec.ptr39, %cont38 ]
  %inquote.2 = phi i32 [ %inquote.0166, %sw.default ], [ 1, %cont38 ]
  %cmp41 = icmp eq i32 %c.0, 10
  br i1 %cmp41, label %if.end47.thread, label %if.end47

if.end47.thread:                                  ; preds = %if.end40
  %incdec.ptr46 = getelementptr inbounds i8* %p.2, i32 1
  store i8 92, i8* %p.2, align 1, !tbaa !1
  br label %cont51

if.end47:                                         ; preds = %if.end40
  %c.0.off155 = add i32 %c.0, 128
  %17 = icmp ult i32 %c.0.off155, 256
  br i1 %17, label %cont51, label %ioc_bb50

ioc_bb50:                                         ; preds = %if.end47
  %18 = sext i32 %c.0 to i64
  tail call void @__ioc_report_conversion(i32 4656, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont51

cont51:                                           ; preds = %if.end47.thread, %ioc_bb50, %if.end47
  %p.3157 = phi i8* [ %incdec.ptr46, %if.end47.thread ], [ %p.2, %ioc_bb50 ], [ %p.2, %if.end47 ]
  %conv52 = trunc i32 %c.0 to i8
  %incdec.ptr53 = getelementptr inbounds i8* %p.3157, i32 1
  store i8 %conv52, i8* %p.3157, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont51, %cont32
  %p.0.be = phi i8* [ %incdec.ptr53, %cont51 ], [ %incdec.ptr34, %cont32 ]
  %inquote.0.be = phi i32 [ %inquote.2, %cont51 ], [ 0, %cont32 ]
  %19 = load i8* %s.addr.1, align 1, !tbaa !1
  %tobool12 = icmp eq i8 %19, 0
  br i1 %tobool12, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge
  %tobool54 = icmp eq i32 %inquote.0.be, 0
  br i1 %tobool54, label %if.end118, label %cont57

cont57:                                           ; preds = %while.end
  %incdec.ptr58 = getelementptr inbounds i8* %p.0.be, i32 1
  store i8 34, i8* %p.0.be, align 1, !tbaa !1
  br label %if.end118

cont61:                                           ; preds = %cont10
  %incdec.ptr62 = getelementptr inbounds i8* %call11, i32 1
  store i8 34, i8* %call11, align 1, !tbaa !1
  %20 = load i8* %s, align 1, !tbaa !1
  %tobool64158 = icmp eq i8 %20, 0
  br i1 %tobool64158, label %cont116, label %while.body65

while.body65:                                     ; preds = %cont61, %while.cond63.backedge
  %21 = phi i8 [ %25, %while.cond63.backedge ], [ %20, %cont61 ]
  %pending.0161 = phi i32 [ %pending.0.be, %while.cond63.backedge ], [ 0, %cont61 ]
  %s.addr.2160 = phi i8* [ %s.addr.3, %while.cond63.backedge ], [ %s, %cont61 ]
  %p.4159 = phi i8* [ %p.4.be, %while.cond63.backedge ], [ %incdec.ptr62, %cont61 ]
  %incdec.ptr67 = getelementptr inbounds i8* %s.addr.2160, i32 1
  %conv68 = sext i8 %21 to i32
  tail call void @__ioc_report_conversion(i32 4669, i32 24, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp71 = icmp eq i8 %21, -125
  br i1 %cmp71, label %if.then73, label %if.end77

if.then73:                                        ; preds = %while.body65
  %incdec.ptr74 = getelementptr inbounds i8* %s.addr.2160, i32 2
  %22 = load i8* %incdec.ptr67, align 1, !tbaa !1
  %conv75 = sext i8 %22 to i32
  %xor76 = xor i32 %conv75, 32
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %while.body65
  %s.addr.3 = phi i8* [ %incdec.ptr74, %if.then73 ], [ %incdec.ptr67, %while.body65 ]
  %c66.0 = phi i32 [ %xor76, %if.then73 ], [ %conv68, %while.body65 ]
  switch i32 %c66.0, label %sw.default100 [
    i32 92, label %sw.bb78
    i32 34, label %sw.bb90
    i32 36, label %sw.bb90
    i32 96, label %sw.bb90
  ]

sw.bb78:                                          ; preds = %if.end77
  %tobool79 = icmp eq i32 %pending.0161, 0
  br i1 %tobool79, label %cont86, label %cont82

cont82:                                           ; preds = %sw.bb78
  %incdec.ptr83 = getelementptr inbounds i8* %p.4159, i32 1
  store i8 92, i8* %p.4159, align 1, !tbaa !1
  br label %cont86

cont86:                                           ; preds = %cont82, %sw.bb78
  %p.5 = phi i8* [ %incdec.ptr83, %cont82 ], [ %p.4159, %sw.bb78 ]
  store i8 92, i8* %p.5, align 1, !tbaa !1
  br label %while.cond63.backedge

sw.bb90:                                          ; preds = %if.end77, %if.end77, %if.end77
  %tobool91 = icmp eq i32 %pending.0161, 0
  br i1 %tobool91, label %cont98, label %cont94

cont94:                                           ; preds = %sw.bb90
  %incdec.ptr95 = getelementptr inbounds i8* %p.4159, i32 1
  store i8 92, i8* %p.4159, align 1, !tbaa !1
  br label %cont98

cont98:                                           ; preds = %cont94, %sw.bb90
  %p.6 = phi i8* [ %incdec.ptr95, %cont94 ], [ %p.4159, %sw.bb90 ]
  %incdec.ptr99 = getelementptr inbounds i8* %p.6, i32 1
  store i8 92, i8* %p.6, align 1, !tbaa !1
  br label %sw.default100

sw.default100:                                    ; preds = %if.end77, %cont98
  %p.7 = phi i8* [ %p.4159, %if.end77 ], [ %incdec.ptr99, %cont98 ]
  %c66.0.off = add i32 %c66.0, 128
  %23 = icmp ult i32 %c66.0.off, 256
  br i1 %23, label %cont104, label %ioc_bb103

ioc_bb103:                                        ; preds = %sw.default100
  %24 = sext i32 %c66.0 to i64
  tail call void @__ioc_report_conversion(i32 4695, i32 21, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont104

cont104:                                          ; preds = %ioc_bb103, %sw.default100
  %conv105 = trunc i32 %c66.0 to i8
  store i8 %conv105, i8* %p.7, align 1, !tbaa !1
  br label %while.cond63.backedge

while.cond63.backedge:                            ; preds = %cont104, %cont86
  %p.7.pn = phi i8* [ %p.7, %cont104 ], [ %p.5, %cont86 ]
  %pending.0.be = phi i32 [ 0, %cont104 ], [ 1, %cont86 ]
  %p.4.be = getelementptr inbounds i8* %p.7.pn, i32 1
  %25 = load i8* %s.addr.3, align 1, !tbaa !1
  %tobool64 = icmp eq i8 %25, 0
  br i1 %tobool64, label %while.end108, label %while.body65

while.end108:                                     ; preds = %while.cond63.backedge
  %tobool109 = icmp eq i32 %pending.0.be, 0
  br i1 %tobool109, label %cont116, label %cont112

cont112:                                          ; preds = %while.end108
  %incdec.ptr113 = getelementptr inbounds i8* %p.7.pn, i32 2
  store i8 92, i8* %p.4.be, align 1, !tbaa !1
  br label %cont116

cont116:                                          ; preds = %cont61, %cont112, %while.end108
  %p.8 = phi i8* [ %incdec.ptr113, %cont112 ], [ %p.4.be, %while.end108 ], [ %incdec.ptr62, %cont61 ]
  %incdec.ptr117 = getelementptr inbounds i8* %p.8, i32 1
  store i8 34, i8* %p.8, align 1, !tbaa !1
  br label %if.end118

if.end118:                                        ; preds = %while.cond.preheader, %while.end, %cont57, %cont116
  %p.9 = phi i8* [ %incdec.ptr58, %cont57 ], [ %p.0.be, %while.end ], [ %incdec.ptr117, %cont116 ], [ %call11, %while.cond.preheader ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.9 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %call11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call119 = tail call i8* @metafy(i8* %call11, i32 %sub.ptr.sub, i32 3)
  tail call void @zfree(i8* %call11, i32 %5) nounwind
  ret i8* %call119
}

declare i32 @wctomb(i8*, i32) nounwind

define i32 @strpfx(i8* nocapture %s, i8* nocapture %t) nounwind readonly {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %tobool9 = icmp eq i8 %0, 0
  br i1 %tobool9, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %t.addr.011 = phi i8* [ %incdec.ptr4, %while.body ], [ %t, %entry ]
  %s.addr.010 = phi i8* [ %incdec.ptr, %while.body ], [ %s, %entry ]
  %2 = load i8* %t.addr.011, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %s.addr.010, i32 1
  %incdec.ptr4 = getelementptr inbounds i8* %t.addr.011, i32 1
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  %4 = phi i8 [ 0, %entry ], [ %1, %land.rhs ], [ 0, %while.body ]
  %lnot = icmp eq i8 %4, 0
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

define i32 @strsfx(i8* nocapture %s, i8* nocapture %t) nounwind {
entry:
  %call = tail call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 5283, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %call1 = tail call i32 @strlen(i8* %t) nounwind readonly
  %2 = icmp sgt i32 %call1, -1
  br i1 %2, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont
  %3 = zext i32 %call1 to i64
  tail call void @__ioc_report_conversion(i32 5284, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @21, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %cont
  %cmp = icmp sgt i32 %call, %call1
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %cont4
  %add.ptr.sum = sub i32 %call1, %call
  %add.ptr5 = getelementptr inbounds i8* %t, i32 %add.ptr.sum
  %call6 = tail call i32 @strcmp(i8* %add.ptr5, i8* %s) nounwind
  %lnot = icmp eq i32 %call6, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %return

return:                                           ; preds = %cont4, %if.then
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ 0, %cont4 ]
  ret i32 %retval.0
}

define void @init_dirsav(%struct.dirsav* nocapture %d) nounwind {
entry:
  %dirname = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 2
  %level = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 1
  %0 = bitcast i8** %dirname to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 20, i32 4, i1 false)
  store i32 -1, i32* %level, align 4, !tbaa !0
  %dirfd = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 0
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  ret void
}

define i32 @lchdir(i8* %path, %struct.dirsav* %d, i32 %hard) nounwind {
entry:
  %st1 = alloca %struct.stat, align 8
  %ds = alloca %struct.dirsav, align 4
  %buf = alloca [4097 x i8], align 1
  %st2 = alloca %struct.stat, align 8
  %tobool = icmp eq %struct.dirsav* %d, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dirname.i = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 2
  %level.i = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 1
  %0 = bitcast i8** %dirname.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 20, i32 4, i1 false) nounwind
  store i32 -1, i32* %level.i, align 4, !tbaa !0
  %dirfd.i = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 0
  store i32 -1, i32* %dirfd.i, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %d.addr.0 = phi %struct.dirsav* [ %d, %entry ], [ %ds, %if.then ]
  %1 = load i8* %path, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 47
  %tobool2 = icmp eq i32 %hard, 0
  %or.cond = or i1 %cmp, %tobool2
  br i1 %or.cond, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %cmp3 = icmp eq %struct.dirsav* %d.addr.0, %ds
  %or.cond294 = and i1 %cmp3, %tobool2
  br i1 %or.cond294, label %if.else, label %if.end15

if.else:                                          ; preds = %land.lhs.true, %if.end
  %dev = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 3
  %2 = load i64* %dev, align 4, !tbaa !4
  %tobool8 = icmp eq i64 %2, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %if.else
  %ino = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 4
  %3 = load i64* %ino, align 4, !tbaa !4
  %tobool10 = icmp eq i64 %3, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %land.lhs.true9
  %4 = bitcast %struct.stat* %st1 to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.stat64* %4) nounwind
  %st_dev = getelementptr inbounds %struct.stat* %st1, i32 0, i32 0
  %5 = load i64* %st_dev, align 8, !tbaa !4
  store i64 %5, i64* %dev, align 4, !tbaa !4
  %st_ino = getelementptr inbounds %struct.stat* %st1, i32 0, i32 15
  %6 = load i64* %st_ino, align 8, !tbaa !4
  store i64 %6, i64* %ino, align 4, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %land.lhs.true9, %if.else, %if.then11
  %level.0 = phi i32 [ 0, %if.else ], [ 0, %land.lhs.true9 ], [ 0, %if.then11 ], [ -1, %land.lhs.true ]
  br i1 %tobool2, label %if.then17, label %if.end39

if.then17:                                        ; preds = %if.end15
  %cmp18 = icmp eq %struct.dirsav* %d.addr.0, %ds
  br i1 %cmp18, label %if.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then17
  %7 = load i8* %path, align 1, !tbaa !1
  %tobool21300 = icmp eq i8 %7, 0
  br i1 %tobool21300, label %for.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.preheader, %for.cond.backedge
  %8 = phi i8 [ %14, %for.cond.backedge ], [ %7, %for.cond.preheader ]
  %level.1302 = phi i32 [ %12, %for.cond.backedge ], [ %level.0, %for.cond.preheader ]
  %pptr.0301 = phi i8* [ %pptr.2, %for.cond.backedge ], [ %path, %for.cond.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %9 = phi i8 [ %.pre324, %land.rhs.while.cond_crit_edge ], [ %8, %while.cond.preheader ]
  %pptr.1 = phi i8* [ %incdec.ptr, %land.rhs.while.cond_crit_edge ], [ %pptr.0301, %while.cond.preheader ]
  %tobool23 = icmp eq i8 %9, 0
  br i1 %tobool23, label %while.cond27, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %pptr.1, i32 1
  %cmp25 = icmp eq i8 %9, 47
  br i1 %cmp25, label %while.cond27, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  %.pre324 = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %while.cond

while.cond27:                                     ; preds = %land.rhs, %while.cond, %while.cond27.while.cond27_crit_edge
  %pptr.2 = phi i8* [ %incdec.ptr32, %while.cond27.while.cond27_crit_edge ], [ %incdec.ptr, %land.rhs ], [ %pptr.1, %while.cond ]
  %10 = load i8* %pptr.2, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %10, 47
  br i1 %cmp29, label %while.cond27.while.cond27_crit_edge, label %for.inc

while.cond27.while.cond27_crit_edge:              ; preds = %while.cond27
  %incdec.ptr32 = getelementptr inbounds i8* %pptr.2, i32 1
  br label %while.cond27

for.inc:                                          ; preds = %while.cond27
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.1302, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb34, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb34
  %14 = phi i8 [ %10, %for.inc ], [ %.pre, %ioc_bb34 ]
  %tobool21 = icmp eq i8 %14, 0
  br i1 %tobool21, label %for.end, label %while.cond.preheader

ioc_bb34:                                         ; preds = %for.inc
  %15 = sext i32 %level.1302 to i64
  call void @__ioc_report_add_overflow(i32 5365, i32 38, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %15, i64 1, i8 13) nounwind
  %.pre = load i8* %pptr.2, align 1, !tbaa !1
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %level.1.lcssa = phi i32 [ %level.0, %for.cond.preheader ], [ %12, %for.cond.backedge ]
  %level36 = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 1
  store i32 %level.1.lcssa, i32* %level36, align 4, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.then17, %for.end
  %call38 = call i32 @zchdir(i8* %path) nounwind
  br label %return

if.end39:                                         ; preds = %if.end15
  %dirfd = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 0
  %16 = load i32* %dirfd, align 4, !tbaa !0
  %cmp40 = icmp slt i32 %16, 0
  br i1 %cmp40, label %if.then42, label %if.end58

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 (i8*, i32, ...)* @open64(i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i32 256) nounwind
  store i32 %call43, i32* %dirfd, align 4, !tbaa !0
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %land.lhs.true47, label %if.end58

land.lhs.true47:                                  ; preds = %if.then42
  %call48 = call i8* @zgetdir(%struct.dirsav* %d.addr.0) nounwind
  %tobool49 = icmp eq i8* %call48, null
  br i1 %tobool49, label %if.end58, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %dirname = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 2
  %17 = load i8** %dirname, align 4, !tbaa !3
  %18 = load i8* %17, align 1, !tbaa !1
  %cmp52 = icmp eq i8 %18, 47
  br i1 %cmp52, label %if.end58, label %if.then54

if.then54:                                        ; preds = %land.lhs.true50
  %call55 = call i32 (i8*, i32, ...)* @open64(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 256) nounwind
  store i32 %call55, i32* %dirfd, align 4, !tbaa !0
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true50, %land.lhs.true47, %if.then42, %if.end39, %if.then54
  %close_dir.0 = phi i32 [ 1, %if.then54 ], [ 0, %if.end39 ], [ 1, %if.then42 ], [ 1, %land.lhs.true47 ], [ 1, %land.lhs.true50 ]
  %19 = load i8* %path, align 1, !tbaa !1
  %cmp60 = icmp eq i8 %19, 47
  br i1 %cmp60, label %if.then62, label %while.cond71.preheader

if.then62:                                        ; preds = %if.end58
  %call63 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)) nounwind
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %while.cond71.preheader

if.then66:                                        ; preds = %if.then62
  %call67 = call i32* @__errno_location() nounwind readnone
  %20 = load i32* %call67, align 4, !tbaa !0
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([23 x i8]* @.str63, i32 0, i32 0), i32 %20)
  br label %while.cond71.preheader

while.cond71.preheader:                           ; preds = %if.end58, %if.then66, %if.then62
  %arraydecay = getelementptr inbounds [4097 x i8]* %buf, i32 0, i32 0
  %21 = bitcast %struct.stat* %st1 to %struct.stat64*
  %st_mode = getelementptr inbounds %struct.stat* %st1, i32 0, i32 3
  %22 = bitcast %struct.stat* %st2 to %struct.stat64*
  %st_dev155 = getelementptr inbounds %struct.stat* %st1, i32 0, i32 0
  %st_dev156 = getelementptr inbounds %struct.stat* %st2, i32 0, i32 0
  %st_ino160 = getelementptr inbounds %struct.stat* %st1, i32 0, i32 15
  %st_ino161 = getelementptr inbounds %struct.stat* %st2, i32 0, i32 15
  br label %while.cond71.outer

while.cond71.outer:                               ; preds = %while.cond71.preheader, %lor.lhs.false159
  %path.addr.0.ph = phi i8* [ %path.addr.1.lcssa, %lor.lhs.false159 ], [ %path, %while.cond71.preheader ]
  %level.2.ph = phi i32 [ %level.3, %lor.lhs.false159 ], [ %level.0, %while.cond71.preheader ]
  br label %while.cond71

while.cond71:                                     ; preds = %while.cond71.outer, %while.body75
  %path.addr.0 = phi i8* [ %incdec.ptr76, %while.body75 ], [ %path.addr.0.ph, %while.cond71.outer ]
  %23 = load i8* %path.addr.0, align 1, !tbaa !1
  switch i8 %23, label %for.cond100.preheader [
    i8 47, label %while.body75
    i8 0, label %if.then79
  ]

for.cond100.preheader:                            ; preds = %while.cond71
  %sub.ptr.rhs.cast = ptrtoint i8* %path.addr.0 to i32
  br label %for.cond100

while.body75:                                     ; preds = %while.cond71
  %incdec.ptr76 = getelementptr inbounds i8* %path.addr.0, i32 1
  br label %while.cond71

if.then79:                                        ; preds = %while.cond71
  %cmp80 = icmp eq %struct.dirsav* %d.addr.0, %ds
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.then79
  %dirname83 = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 2
  %24 = load i8** %dirname83, align 4, !tbaa !3
  call void @zsfree(i8* %24) nounwind
  br label %if.end86

if.else84:                                        ; preds = %if.then79
  %level85 = getelementptr inbounds %struct.dirsav* %d.addr.0, i32 0, i32 1
  store i32 %level.2.ph, i32* %level85, align 4, !tbaa !0
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then82
  %25 = load i32* %dirfd, align 4, !tbaa !0
  %cmp88 = icmp slt i32 %25, 0
  %tobool91 = icmp eq i32 %close_dir.0, 0
  %or.cond295 = or i1 %cmp88, %tobool91
  br i1 %or.cond295, label %return, label %if.then92

if.then92:                                        ; preds = %if.end86
  %call94 = call i32 @close(i32 %25) nounwind
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  br label %return

for.cond100:                                      ; preds = %for.cond100.preheader, %for.cond100
  %pptr.3 = phi i8* [ %incdec.ptr101, %for.cond100 ], [ %path.addr.0, %for.cond100.preheader ]
  %incdec.ptr101 = getelementptr inbounds i8* %pptr.3, i32 1
  %26 = load i8* %incdec.ptr101, align 1, !tbaa !1
  switch i8 %26, label %for.cond100 [
    i8 0, label %for.end110
    i8 47, label %for.end110
  ]

for.end110:                                       ; preds = %for.cond100, %for.cond100
  %pptr.3.lcssa316 = ptrtoint i8* %pptr.3 to i32
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr101 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp111 = icmp sgt i32 %sub.ptr.sub, 4096
  br i1 %cmp111, label %for.end166, label %if.end114

if.end114:                                        ; preds = %for.end110
  %cmp116305 = icmp eq i8* %path.addr.0, %incdec.ptr101
  br i1 %cmp116305, label %cont123, label %for.body118

for.body118:                                      ; preds = %if.end114, %for.body118.for.body118_crit_edge
  %27 = phi i8 [ %.pre325, %for.body118.for.body118_crit_edge ], [ %23, %if.end114 ]
  %ptr.0307 = phi i8* [ %incdec.ptr120, %for.body118.for.body118_crit_edge ], [ %arraydecay, %if.end114 ]
  %path.addr.1306 = phi i8* [ %incdec.ptr119, %for.body118.for.body118_crit_edge ], [ %path.addr.0, %if.end114 ]
  %incdec.ptr119 = getelementptr inbounds i8* %path.addr.1306, i32 1
  store i8 %27, i8* %ptr.0307, align 1, !tbaa !1
  %cmp116 = icmp eq i8* %path.addr.1306, %pptr.3
  br i1 %cmp116, label %for.cond115.cont123_crit_edge, label %for.body118.for.body118_crit_edge

for.body118.for.body118_crit_edge:                ; preds = %for.body118
  %incdec.ptr120 = getelementptr inbounds i8* %ptr.0307, i32 1
  %.pre325 = load i8* %incdec.ptr119, align 1, !tbaa !1
  br label %for.body118

for.cond115.cont123_crit_edge:                    ; preds = %for.body118
  %scevgep.sum = add i32 %pptr.3.lcssa316, 1
  %scevgep317.sum = sub i32 %scevgep.sum, %sub.ptr.rhs.cast
  %scevgep318 = getelementptr [4097 x i8]* %buf, i32 0, i32 %scevgep317.sum
  br label %cont123

cont123:                                          ; preds = %for.cond115.cont123_crit_edge, %if.end114
  %ptr.0.lcssa = phi i8* [ %scevgep318, %for.cond115.cont123_crit_edge ], [ %arraydecay, %if.end114 ]
  %path.addr.1.lcssa = phi i8* [ %incdec.ptr119, %for.cond115.cont123_crit_edge ], [ %path.addr.0, %if.end114 ]
  store i8 0, i8* %ptr.0.lcssa, align 1, !tbaa !1
  %call.i298 = call i32 @__lxstat64(i32 3, i8* %arraydecay, %struct.stat64* %21) nounwind
  %tobool126 = icmp eq i32 %call.i298, 0
  br i1 %tobool126, label %cont133, label %if.then127

if.then127:                                       ; preds = %cont123
  %call128 = call i32* @__errno_location() nounwind readnone
  %28 = load i32* %call128, align 4, !tbaa !0
  br label %for.end166

cont133:                                          ; preds = %cont123
  %29 = load i32* %st_mode, align 8, !tbaa !0
  %and = and i32 %29, 61440
  %cmp134 = icmp eq i32 %and, 16384
  br i1 %cmp134, label %if.end137, label %for.end166

if.end137:                                        ; preds = %cont133
  %call139 = call i32 @chdir(i8* %arraydecay) nounwind
  %tobool140 = icmp eq i32 %call139, 0
  br i1 %tobool140, label %if.end143, label %if.then141

if.then141:                                       ; preds = %if.end137
  %call142 = call i32* @__errno_location() nounwind readnone
  %30 = load i32* %call142, align 4, !tbaa !0
  br label %for.end166

if.end143:                                        ; preds = %if.end137
  %cmp144 = icmp sgt i32 %level.2.ph, -1
  br i1 %cmp144, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end143
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %level.2.ph, i32 1)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb147, label %if.end149

ioc_bb147:                                        ; preds = %if.then146
  %34 = sext i32 %level.2.ph to i64
  call void @__ioc_report_add_overflow(i32 5424, i32 12, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %34, i64 1, i8 13) nounwind
  br label %if.end149

if.end149:                                        ; preds = %ioc_bb147, %if.then146, %if.end143
  %level.3 = phi i32 [ %level.2.ph, %if.end143 ], [ %32, %if.then146 ], [ %32, %ioc_bb147 ]
  %call.i299 = call i32 @__lxstat64(i32 3, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.stat64* %22) nounwind
  %tobool151 = icmp eq i32 %call.i299, 0
  br i1 %tobool151, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.end149
  %call153 = call i32* @__errno_location() nounwind readnone
  %35 = load i32* %call153, align 4, !tbaa !0
  br label %for.end166

if.end154:                                        ; preds = %if.end149
  %36 = load i64* %st_dev155, align 8, !tbaa !4
  %37 = load i64* %st_dev156, align 8, !tbaa !4
  %cmp157 = icmp eq i64 %36, %37
  br i1 %cmp157, label %lor.lhs.false159, label %for.end166

lor.lhs.false159:                                 ; preds = %if.end154
  %38 = load i64* %st_ino160, align 8, !tbaa !4
  %39 = load i64* %st_ino161, align 8, !tbaa !4
  %cmp162 = icmp eq i64 %38, %39
  br i1 %cmp162, label %while.cond71.outer, label %for.end166

for.end166:                                       ; preds = %if.end154, %lor.lhs.false159, %cont133, %for.end110, %if.then152, %if.then141, %if.then127
  %err.0 = phi i32 [ %28, %if.then127 ], [ %30, %if.then141 ], [ %35, %if.then152 ], [ 20, %if.end154 ], [ 20, %lor.lhs.false159 ], [ 20, %cont133 ], [ 36, %for.end110 ]
  %call167 = call i32 @restoredir(%struct.dirsav* %d.addr.0)
  %tobool168 = icmp eq i32 %call167, 0
  br i1 %tobool168, label %if.end218, label %if.then169

if.then169:                                       ; preds = %for.end166
  %call170 = call i32* @__errno_location() nounwind readnone
  %40 = load i32* %call170, align 4, !tbaa !0
  br label %for.body174

for.body174:                                      ; preds = %if.then169, %for.cond171.backedge
  %i.0303 = phi i32 [ 0, %if.then169 ], [ %44, %for.cond171.backedge ]
  %tobool175 = icmp eq i32 %i.0303, 0
  br i1 %tobool175, label %if.else177, label %if.end181

if.else177:                                       ; preds = %for.body174
  %41 = load i8** @home, align 4, !tbaa !3
  %tobool178 = icmp eq i8* %41, null
  br i1 %tobool178, label %for.inc188, label %if.end181

if.end181:                                        ; preds = %if.else177, %for.body174
  %cdest.0 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), %for.body174 ], [ %41, %if.else177 ]
  %42 = load i8** @pwd, align 4, !tbaa !3
  call void @zsfree(i8* %42) nounwind
  %call182 = call i8* @ztrdup(i8* %cdest.0) nounwind
  store i8* %call182, i8** @pwd, align 4, !tbaa !3
  %call183 = call i32 @chdir(i8* %call182) nounwind
  %cmp184 = icmp eq i32 %call183, 0
  br i1 %cmp184, label %for.end191, label %for.inc188

for.inc188:                                       ; preds = %if.else177, %if.end181
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0303, i32 1)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb189, label %for.cond171.backedge

for.cond171.backedge:                             ; preds = %for.inc188, %ioc_bb189
  %cmp172 = icmp slt i32 %44, 2
  br i1 %cmp172, label %for.body174, label %for.end191

ioc_bb189:                                        ; preds = %for.inc188
  %46 = sext i32 %i.0303 to i64
  call void @__ioc_report_add_overflow(i32 5441, i32 25, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @19, i32 0, i32 0), i64 %46, i64 1, i8 13) nounwind
  br label %for.cond171.backedge

for.end191:                                       ; preds = %if.end181, %for.cond171.backedge
  %i.0.lcssa = phi i32 [ %i.0303, %if.end181 ], [ %44, %for.cond171.backedge ]
  %cmp192 = icmp eq i32 %i.0.lcssa, 2
  br i1 %cmp192, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.end191
  %47 = load i32* %call170, align 4, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([46 x i8]* @.str64, i32 0, i32 0), i32 %47)
  br label %if.end197

if.else196:                                       ; preds = %for.end191
  %48 = load i8** @pwd, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([44 x i8]* @.str65, i32 0, i32 0), i32 %40, i8* %48)
  br label %if.end197

if.end197:                                        ; preds = %if.else196, %if.then194
  %cmp198 = icmp eq %struct.dirsav* %d.addr.0, %ds
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.end197
  %dirname201 = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 2
  %49 = load i8** %dirname201, align 4, !tbaa !3
  call void @zsfree(i8* %49) nounwind
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.end197
  %50 = load i32* %dirfd, align 4, !tbaa !0
  %cmp204 = icmp slt i32 %50, 0
  %tobool207 = icmp eq i32 %close_dir.0, 0
  %or.cond296 = or i1 %cmp204, %tobool207
  br i1 %or.cond296, label %if.end214, label %if.then208

if.then208:                                       ; preds = %if.end202
  %call210 = call i32 @close(i32 %50) nounwind
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  br label %if.end214

if.end214:                                        ; preds = %if.end202, %if.then208
  store i32 %err.0, i32* %call170, align 4, !tbaa !0
  br label %return

if.end218:                                        ; preds = %for.end166
  %cmp219 = icmp eq %struct.dirsav* %d.addr.0, %ds
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.end218
  %dirname222 = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 2
  %51 = load i8** %dirname222, align 4, !tbaa !3
  call void @zsfree(i8* %51) nounwind
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %if.end218
  %52 = load i32* %dirfd, align 4, !tbaa !0
  %cmp225 = icmp slt i32 %52, 0
  %tobool228 = icmp eq i32 %close_dir.0, 0
  %or.cond297 = or i1 %cmp225, %tobool228
  br i1 %or.cond297, label %if.end235, label %if.then229

if.then229:                                       ; preds = %if.end223
  %call231 = call i32 @close(i32 %52) nounwind
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  br label %if.end235

if.end235:                                        ; preds = %if.end223, %if.then229
  %call236 = call i32* @__errno_location() nounwind readnone
  store i32 %err.0, i32* %call236, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then92, %if.end86, %if.end235, %if.end214, %if.end37
  %retval.0 = phi i32 [ -2, %if.end214 ], [ -1, %if.end235 ], [ %call38, %if.end37 ], [ 0, %if.end86 ], [ 0, %if.then92 ]
  ret i32 %retval.0
}

declare i32 @zchdir(i8*)

declare i32 @open64(i8*, i32, ...)

declare i8* @zgetdir(%struct.dirsav*)

declare i32 @chdir(i8*) nounwind

define i32 @restoredir(%struct.dirsav* nocapture %d) nounwind {
entry:
  %buf.i = alloca [4096 x i8], align 1
  %sbuf = alloca %struct.stat, align 8
  %dirname = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 2
  %0 = load i8** %dirname, align 4, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @chdir(i8* %0) nounwind
  br label %return

if.end:                                           ; preds = %entry, %land.lhs.true
  %dirfd = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 0
  %2 = load i32* %dirfd, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %2, -1
  br i1 %cmp4, label %if.then6, label %if.else32

if.then6:                                         ; preds = %if.end
  %call8 = call i32 @fchdir(i32 %2) nounwind
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else25

if.then10:                                        ; preds = %if.then6
  %3 = load i8** %dirname, align 4, !tbaa !3
  %tobool12 = icmp eq i8* %3, null
  br i1 %tobool12, label %return, label %if.else

if.else:                                          ; preds = %if.then10
  %call15 = call i32 @chdir(i8* %3) nounwind
  %tobool16 = icmp eq i32 %call15, 0
  br i1 %tobool16, label %if.end47, label %if.then17

if.then17:                                        ; preds = %if.else
  %4 = load i32* %dirfd, align 4, !tbaa !0
  %call19 = call i32 @close(i32 %4) nounwind
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  br label %if.end47

if.else25:                                        ; preds = %if.then6
  %5 = load i32* %dirfd, align 4, !tbaa !0
  %call27 = call i32 @close(i32 %5) nounwind
  store i32 -1, i32* %dirfd, align 4, !tbaa !0
  br label %if.end47

if.else32:                                        ; preds = %if.end
  %level = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 1
  %6 = load i32* %level, align 4, !tbaa !0
  %cmp33 = icmp sgt i32 %6, 0
  br i1 %cmp33, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else32
  %7 = getelementptr inbounds [4096 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start(i64 -1, i8* %7) nounwind
  %add.ptr2.i = getelementptr inbounds [4096 x i8]* %buf.i, i32 0, i32 4092
  br label %while.cond.i

while.cond.i:                                     ; preds = %cont17.i, %if.then35
  %n.addr.0.i = phi i32 [ %6, %if.then35 ], [ %9, %cont17.i ]
  %err.0.i = phi i32 [ -1, %if.then35 ], [ -2, %cont17.i ]
  %cmp.i = icmp sgt i32 %n.addr.0.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end47

land.rhs.i:                                       ; preds = %while.cond.i, %cont7.i
  %s.030.i = phi i8* [ %incdec.ptr13.i, %cont7.i ], [ %7, %while.cond.i ]
  %n.addr.129.i = phi i32 [ %9, %cont7.i ], [ %n.addr.0.i, %while.cond.i ]
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.129.i, i32 -1) nounwind
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb4.i, label %land.end.i

ioc_bb4.i:                                        ; preds = %land.rhs.i
  %11 = sext i32 %n.addr.129.i to i64
  call void @__ioc_report_add_overflow(i32 5297, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %land.end.i

land.end.i:                                       ; preds = %ioc_bb4.i, %land.rhs.i
  %tobool.i = icmp eq i32 %n.addr.129.i, 0
  br i1 %tobool.i, label %cont17.i, label %cont7.i

cont7.i:                                          ; preds = %land.end.i
  store i8 46, i8* %s.030.i, align 1, !tbaa !1
  %incdec.ptr.i = getelementptr inbounds i8* %s.030.i, i32 1
  store i8 46, i8* %incdec.ptr.i, align 1, !tbaa !1
  %incdec.ptr10.i = getelementptr inbounds i8* %s.030.i, i32 2
  %incdec.ptr13.i = getelementptr inbounds i8* %s.030.i, i32 3
  store i8 47, i8* %incdec.ptr10.i, align 1, !tbaa !1
  %cmp3.i = icmp ult i8* %incdec.ptr13.i, %add.ptr2.i
  br i1 %cmp3.i, label %land.rhs.i, label %cont17.i

cont17.i:                                         ; preds = %cont7.i, %land.end.i
  %s.0.lcssa.i = phi i8* [ %s.030.i, %land.end.i ], [ %incdec.ptr13.i, %cont7.i ]
  %arrayidx.i = getelementptr inbounds i8* %s.0.lcssa.i, i32 -1
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !1
  %call.i = call i32 @chdir(i8* %7) nounwind
  %tobool19.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.i, label %while.cond.i, label %if.end47

if.else38:                                        ; preds = %if.else32
  %.lobit = ashr i32 %6, 31
  br label %if.end47

if.end47:                                         ; preds = %cont17.i, %while.cond.i, %if.else38, %if.else, %if.else25, %if.then17
  %err.0 = phi i32 [ -1, %if.else25 ], [ -2, %if.then17 ], [ 0, %if.else ], [ %.lobit, %if.else38 ], [ %err.0.i, %cont17.i ], [ 0, %while.cond.i ]
  %dev = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 3
  %12 = load i64* %dev, align 4, !tbaa !4
  %tobool48 = icmp eq i64 %12, 0
  %ino = getelementptr inbounds %struct.dirsav* %d, i32 0, i32 4
  br i1 %tobool48, label %lor.lhs.false, label %if.then50

lor.lhs.false:                                    ; preds = %if.end47
  %13 = load i64* %ino, align 4, !tbaa !4
  %tobool49 = icmp eq i64 %13, 0
  br i1 %tobool49, label %return, label %if.then50

if.then50:                                        ; preds = %if.end47, %lor.lhs.false
  %14 = bitcast %struct.stat* %sbuf to %struct.stat64*
  %call.i78 = call i32 @__xstat64(i32 3, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.stat64* %14) nounwind
  %st_ino = getelementptr inbounds %struct.stat* %sbuf, i32 0, i32 15
  %15 = load i64* %st_ino, align 8, !tbaa !4
  %16 = load i64* %ino, align 4, !tbaa !4
  %cmp53 = icmp eq i64 %15, %16
  br i1 %cmp53, label %lor.lhs.false55, label %cont61

lor.lhs.false55:                                  ; preds = %if.then50
  %st_dev = getelementptr inbounds %struct.stat* %sbuf, i32 0, i32 0
  %17 = load i64* %st_dev, align 8, !tbaa !4
  %18 = load i64* %dev, align 4, !tbaa !4
  %cmp57 = icmp eq i64 %17, %18
  br i1 %cmp57, label %return, label %cont61

cont61:                                           ; preds = %if.then50, %lor.lhs.false55
  br label %return

return:                                           ; preds = %cont61, %lor.lhs.false, %lor.lhs.false55, %if.then10, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then10 ], [ -2, %cont61 ], [ %err.0, %lor.lhs.false55 ], [ %err.0, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @fchdir(i32) nounwind

define i32 @privasserted() nounwind {
entry:
  %call = tail call i32 @geteuid() nounwind
  %tobool = icmp eq i32 %call, 0
  %. = zext i1 %tobool to i32
  ret i32 %.
}

declare i32 @geteuid() nounwind

define i32 @mode_to_octal(i32 %mode) nounwind readnone {
entry:
  %and = and i32 %mode, 2048
  %and3 = and i32 %mode, 1024
  %tobool4 = icmp eq i32 %and3, 0
  %or6 = or i32 %and, 1024
  %m.0.or6 = select i1 %tobool4, i32 %and, i32 %or6
  %and10 = and i32 %mode, 512
  %tobool11 = icmp eq i32 %and10, 0
  %or13 = or i32 %m.0.or6, 512
  %m.2 = select i1 %tobool11, i32 %m.0.or6, i32 %or13
  %and17 = and i32 %mode, 256
  %tobool18 = icmp eq i32 %and17, 0
  %or20 = or i32 %m.2, 256
  %m.2.or20 = select i1 %tobool18, i32 %m.2, i32 %or20
  %and24 = and i32 %mode, 128
  %tobool25 = icmp eq i32 %and24, 0
  %or27 = or i32 %m.2.or20, 128
  %m.4 = select i1 %tobool25, i32 %m.2.or20, i32 %or27
  %and31 = and i32 %mode, 64
  %tobool32 = icmp eq i32 %and31, 0
  %or34 = or i32 %m.4, 64
  %m.4.or34 = select i1 %tobool32, i32 %m.4, i32 %or34
  %and40 = and i32 %mode, 32
  %tobool41 = icmp eq i32 %and40, 0
  %or43 = or i32 %m.4.or34, 32
  %m.6 = select i1 %tobool41, i32 %m.4.or34, i32 %or43
  %and49 = and i32 %mode, 16
  %tobool50 = icmp eq i32 %and49, 0
  %or52 = or i32 %m.6, 16
  %m.6.or52 = select i1 %tobool50, i32 %m.6, i32 %or52
  %and58 = and i32 %mode, 8
  %tobool59 = icmp eq i32 %and58, 0
  %or61 = or i32 %m.6.or52, 8
  %m.8 = select i1 %tobool59, i32 %m.6.or52, i32 %or61
  %and69 = and i32 %mode, 4
  %tobool70 = icmp eq i32 %and69, 0
  %or72 = or i32 %m.8, 4
  %m.8.or72 = select i1 %tobool70, i32 %m.8, i32 %or72
  %and80 = and i32 %mode, 2
  %tobool81 = icmp eq i32 %and80, 0
  %or83 = or i32 %m.8.or72, 2
  %m.10 = select i1 %tobool81, i32 %m.8.or72, i32 %or83
  %and91 = and i32 %mode, 1
  %m.10.or94 = or i32 %m.10, %and91
  ret i32 %m.10.or94
}

declare i32 @__lxstat64(i32, i8*, %struct.stat64*) nounwind

declare noalias %struct.__dirstream* @opendir(i8* nocapture) nounwind

define internal fastcc i32 @spdist(i8* %s, i8* %t, i32 %thresh) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 168), align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  %. = select i1 %tobool, i8* getelementptr inbounds ([155 x i8]* @spdist.qwertykeymap, i32 0, i32 0), i8* getelementptr inbounds ([155 x i8]* @spdist.dvorakkeymap, i32 0, i32 0)
  %call = tail call i32 @strcmp(i8* %s, i8* %t) nounwind
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i8* %s, align 1, !tbaa !1
  %tobool4365 = icmp eq i8 %1, 0
  br i1 %tobool4365, label %land.lhs.true, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %call.i = tail call i16** @__ctype_b_loc() nounwind readnone
  %2 = load i16** %call.i, align 4, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %.pr = phi i8 [ %1, %land.rhs.lr.ph ], [ %12, %for.inc ]
  %p.0367 = phi i8* [ %s, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc ]
  %q.0366 = phi i8* [ %t, %land.rhs.lr.ph ], [ %incdec.ptr10, %for.inc ]
  %conv333 = zext i8 %.pr to i32
  %arrayidx.i = getelementptr inbounds i16* %2, i32 %conv333
  %3 = load i16* %arrayidx.i, align 2, !tbaa !5
  %and9.i = and i16 %3, 256
  %tobool.i = icmp eq i16 %and9.i, 0
  br i1 %tobool.i, label %tulower.exit, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs
  %__c.off.i.i = add i32 %conv333, 128
  %4 = icmp ult i32 %__c.off.i.i, 384
  br i1 %4, label %cond.true.i.i, label %tulower.exit

cond.true.i.i:                                    ; preds = %cond.true.i
  %call.i.i = tail call i32** @__ctype_tolower_loc() nounwind readnone
  %5 = load i32** %call.i.i, align 4, !tbaa !3
  %arrayidx.i.i = getelementptr inbounds i32* %5, i32 %conv333
  %6 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  br label %tulower.exit

tulower.exit:                                     ; preds = %land.rhs, %cond.true.i, %cond.true.i.i
  %cond.i = phi i32 [ %conv333, %land.rhs ], [ %6, %cond.true.i.i ], [ %conv333, %cond.true.i ]
  %7 = load i8* %q.0366, align 1, !tbaa !1
  %conv7334 = zext i8 %7 to i32
  %arrayidx.i320 = getelementptr inbounds i16* %2, i32 %conv7334
  %8 = load i16* %arrayidx.i320, align 2, !tbaa !5
  %and9.i321 = and i16 %8, 256
  %tobool.i322 = icmp eq i16 %and9.i321, 0
  br i1 %tobool.i322, label %tulower.exit329, label %cond.true.i324

cond.true.i324:                                   ; preds = %tulower.exit
  %__c.off.i.i323 = add i32 %conv7334, 128
  %9 = icmp ult i32 %__c.off.i.i323, 384
  br i1 %9, label %cond.true.i.i327, label %tulower.exit329

cond.true.i.i327:                                 ; preds = %cond.true.i324
  %call.i.i325 = tail call i32** @__ctype_tolower_loc() nounwind readnone
  %10 = load i32** %call.i.i325, align 4, !tbaa !3
  %arrayidx.i.i326 = getelementptr inbounds i32* %10, i32 %conv7334
  %11 = load i32* %arrayidx.i.i326, align 4, !tbaa !0
  br label %tulower.exit329

tulower.exit329:                                  ; preds = %tulower.exit, %cond.true.i324, %cond.true.i.i327
  %cond.i328 = phi i32 [ %conv7334, %tulower.exit ], [ %11, %cond.true.i.i327 ], [ %conv7334, %cond.true.i324 ]
  %cmp = icmp eq i32 %cond.i, %cond.i328
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %tulower.exit329
  %incdec.ptr = getelementptr inbounds i8* %p.0367, i32 1
  %incdec.ptr10 = getelementptr inbounds i8* %q.0366, i32 1
  %12 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool4 = icmp eq i8 %12, 0
  br i1 %tobool4, label %land.lhs.true, label %land.rhs

for.end:                                          ; preds = %tulower.exit329
  %tobool11 = icmp eq i8 %.pr, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %for.cond.preheader, %for.inc, %for.end
  %q.0363 = phi i8* [ %q.0366, %for.end ], [ %t, %for.cond.preheader ], [ %incdec.ptr10, %for.inc ]
  %13 = load i8* %q.0363, align 1, !tbaa !1
  %tobool12 = icmp eq i8 %13, 0
  br i1 %tobool12, label %return, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %for.end
  %tobool15 = icmp eq i32 %thresh, 0
  br i1 %tobool15, label %return, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.end14
  br i1 %tobool4365, label %cont98, label %land.rhs21

land.rhs21:                                       ; preds = %for.inc90, %for.cond18.preheader
  %14 = phi i8 [ %1, %for.cond18.preheader ], [ %.pre, %for.inc90 ]
  %p.1359 = phi i8* [ %s, %for.cond18.preheader ], [ %incdec.ptr91, %for.inc90 ]
  %q.1357 = phi i8* [ %t, %for.cond18.preheader ], [ %incdec.ptr92.pre, %for.inc90 ]
  %15 = load i8* %q.1357, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %15, 0
  br i1 %tobool23, label %for.end93, label %for.body25

for.body25:                                       ; preds = %land.rhs21
  %cmp28 = icmp eq i8 %14, %15
  %incdec.ptr91.phi.trans.insert = getelementptr inbounds i8* %p.1359, i32 1
  %.pre = load i8* %incdec.ptr91.phi.trans.insert, align 1, !tbaa !1
  br i1 %cmp28, label %for.inc90, label %if.else31

if.else31:                                        ; preds = %for.body25
  %cmp35 = icmp eq i8 %.pre, %15
  %arrayidx38 = getelementptr inbounds i8* %q.1357, i32 1
  %16 = load i8* %arrayidx38, align 1, !tbaa !1
  br i1 %cmp35, label %land.lhs.true37, label %if.else64

land.lhs.true37:                                  ; preds = %if.else31
  %cmp42 = icmp eq i8 %16, %14
  br i1 %cmp42, label %if.then44, label %if.then56

if.then44:                                        ; preds = %land.lhs.true37
  %add.ptr = getelementptr inbounds i8* %p.1359, i32 2
  %add.ptr45 = getelementptr inbounds i8* %q.1357, i32 2
  %17 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %thresh, i32 1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then44
  %20 = sext i32 %thresh to i64
  tail call void @__ioc_report_sub_overflow(i32 3464, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %20, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then44, %ioc_bb
  %call46 = tail call fastcc i32 @spdist(i8* %add.ptr, i8* %add.ptr45, i32 %18)
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call46, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb47, label %return

ioc_bb47:                                         ; preds = %cont
  %24 = sext i32 %call46 to i64
  tail call void @__ioc_report_add_overflow(i32 3464, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %return

if.then56:                                        ; preds = %land.lhs.true37
  %25 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %thresh, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb59, label %cont60

ioc_bb59:                                         ; preds = %if.then56
  %28 = sext i32 %thresh to i64
  tail call void @__ioc_report_sub_overflow(i32 3468, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont60

cont60:                                           ; preds = %if.then56, %ioc_bb59
  %call61 = tail call fastcc i32 @spdist(i8* %incdec.ptr91.phi.trans.insert, i8* %q.1357, i32 %26)
  %29 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call61, i32 2)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb62, label %return

ioc_bb62:                                         ; preds = %cont60
  %32 = sext i32 %call61 to i64
  tail call void @__ioc_report_add_overflow(i32 3468, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %32, i64 2, i8 13) nounwind
  br label %return

if.else64:                                        ; preds = %if.else31
  %cmp69 = icmp eq i8 %14, %16
  br i1 %cmp69, label %if.then71, label %for.end93

if.then71:                                        ; preds = %if.else64
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %thresh, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %if.then71
  %36 = sext i32 %thresh to i64
  tail call void @__ioc_report_sub_overflow(i32 3472, i32 40, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %36, i64 1, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %if.then71, %ioc_bb74
  %call76 = tail call fastcc i32 @spdist(i8* %p.1359, i8* %arrayidx38, i32 %34)
  %37 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call76, i32 2)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb77, label %return

ioc_bb77:                                         ; preds = %cont75
  %40 = sext i32 %call76 to i64
  tail call void @__ioc_report_add_overflow(i32 3472, i32 45, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %40, i64 2, i8 13) nounwind
  br label %return

for.inc90:                                        ; preds = %for.body25
  %incdec.ptr92.pre = getelementptr inbounds i8* %q.1357, i32 1
  %incdec.ptr91 = getelementptr inbounds i8* %p.1359, i32 1
  %tobool20 = icmp eq i8 %.pre, 0
  br i1 %tobool20, label %cont98, label %land.rhs21

for.end93:                                        ; preds = %if.else64, %land.rhs21
  %tobool94 = icmp eq i8 %14, 0
  br i1 %tobool94, label %cont98, label %lor.lhs.false

cont98:                                           ; preds = %for.cond18.preheader, %for.inc90, %for.end93
  %p.1353 = phi i8* [ %p.1359, %for.end93 ], [ %s, %for.cond18.preheader ], [ %incdec.ptr91, %for.inc90 ]
  %q.1346 = phi i8* [ %q.1357, %for.end93 ], [ %t, %for.cond18.preheader ], [ %incdec.ptr92.pre, %for.inc90 ]
  %call96 = tail call i32 @strlen(i8* %q.1346) nounwind readonly
  %cmp99 = icmp eq i32 %call96, 1
  br i1 %cmp99, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont98, %for.end93
  %p.1352 = phi i8* [ %p.1359, %for.end93 ], [ %p.1353, %cont98 ]
  %q.1347 = phi i8* [ %q.1357, %for.end93 ], [ %q.1346, %cont98 ]
  %41 = load i8* %q.1347, align 1, !tbaa !1
  %tobool101 = icmp eq i8 %41, 0
  br i1 %tobool101, label %cont105, label %for.cond110.preheader

cont105:                                          ; preds = %lor.lhs.false
  %call103 = tail call i32 @strlen(i8* %p.1352) nounwind readonly
  %cmp106 = icmp eq i32 %call103, 1
  %brmerge = or i1 %cmp106, %tobool4365
  %.mux = select i1 %cmp106, i32 2, i32 200
  br i1 %brmerge, label %return, label %land.rhs113

for.cond110.preheader:                            ; preds = %lor.lhs.false
  br i1 %tobool4365, label %return, label %land.rhs113

land.rhs113:                                      ; preds = %cont105, %for.cond110.preheader, %for.inc233.land.rhs113_crit_edge
  %42 = phi i8 [ %103, %for.inc233.land.rhs113_crit_edge ], [ %1, %for.cond110.preheader ], [ %1, %cont105 ]
  %p.2340 = phi i8* [ %incdec.ptr234, %for.inc233.land.rhs113_crit_edge ], [ %s, %for.cond110.preheader ], [ %s, %cont105 ]
  %q.2339 = phi i8* [ %incdec.ptr235, %for.inc233.land.rhs113_crit_edge ], [ %t, %for.cond110.preheader ], [ %t, %cont105 ]
  %conv111341 = sext i8 %42 to i32
  %43 = load i8* %q.2339, align 1, !tbaa !1
  %tobool115 = icmp eq i8 %43, 0
  br i1 %tobool115, label %return, label %for.body117

for.body117:                                      ; preds = %land.rhs113
  %cmp122 = icmp eq i8 %42, %43
  br i1 %cmp122, label %if.else225, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %for.body117
  %arrayidx125 = getelementptr inbounds i8* %p.2340, i32 1
  %44 = load i8* %arrayidx125, align 1, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8* %q.2339, i32 1
  %45 = load i8* %arrayidx127, align 1, !tbaa !1
  %cmp129 = icmp eq i8 %44, %45
  br i1 %cmp129, label %if.then131, label %if.else225

if.then131:                                       ; preds = %land.lhs.true124
  %memchr = tail call i8* @memchr(i8* %., i32 %conv111341, i32 155)
  %tobool135 = icmp eq i8* %memchr, null
  br i1 %tobool135, label %if.then144, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.then131
  %46 = load i8* %memchr, align 1, !tbaa !1
  %.off = add i8 %46, -9
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then144, label %if.end152

if.then144:                                       ; preds = %lor.lhs.false136, %if.then131
  %47 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %thresh, i32 1)
  %48 = extractvalue { i32, i1 } %47, 0
  %49 = extractvalue { i32, i1 } %47, 1
  br i1 %49, label %ioc_bb147, label %cont148

ioc_bb147:                                        ; preds = %if.then144
  %50 = sext i32 %thresh to i64
  tail call void @__ioc_report_sub_overflow(i32 3483, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %50, i64 1, i8 13) nounwind
  br label %cont148

cont148:                                          ; preds = %if.then144, %ioc_bb147
  %call149 = tail call fastcc i32 @spdist(i8* %arrayidx125, i8* %arrayidx127, i32 %48)
  %51 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call149, i32 1)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb150, label %return

ioc_bb150:                                        ; preds = %cont148
  %54 = sext i32 %call149 to i64
  tail call void @__ioc_report_add_overflow(i32 3483, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %return

if.end152:                                        ; preds = %lor.lhs.false136
  %sub.ptr.lhs.cast = ptrtoint i8* %memchr to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %. to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %55 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 15)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  %58 = sext i32 %sub.ptr.sub to i64
  br i1 %57, label %ioc_bb154, label %cont155

ioc_bb154:                                        ; preds = %if.end152
  tail call void @__ioc_report_sub_overflow(i32 3485, i32 30, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 15, i8 13) nounwind
  br label %cont155

cont155:                                          ; preds = %if.end152, %ioc_bb154
  %arrayidx156 = getelementptr inbounds i8* %., i32 %56
  %59 = load i8* %arrayidx156, align 1, !tbaa !1
  %cmp158 = icmp eq i8 %43, %59
  br i1 %cmp158, label %if.then216, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %cont155
  %60 = load i8* %q.2339, align 1, !tbaa !1
  %61 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 14)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb162, label %cont163

ioc_bb162:                                        ; preds = %lor.lhs.false160
  tail call void @__ioc_report_sub_overflow(i32 3485, i32 58, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 14, i8 13) nounwind
  br label %cont163

cont163:                                          ; preds = %lor.lhs.false160, %ioc_bb162
  %arrayidx164 = getelementptr inbounds i8* %., i32 %62
  %64 = load i8* %arrayidx164, align 1, !tbaa !1
  %cmp166 = icmp eq i8 %60, %64
  br i1 %cmp166, label %if.then216, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %cont163
  %65 = load i8* %q.2339, align 1, !tbaa !1
  %66 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 13)
  %67 = extractvalue { i32, i1 } %66, 0
  %68 = extractvalue { i32, i1 } %66, 1
  br i1 %68, label %ioc_bb170, label %cont171

ioc_bb170:                                        ; preds = %lor.lhs.false168
  tail call void @__ioc_report_sub_overflow(i32 3485, i32 86, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 13, i8 13) nounwind
  br label %cont171

cont171:                                          ; preds = %lor.lhs.false168, %ioc_bb170
  %arrayidx172 = getelementptr inbounds i8* %., i32 %67
  %69 = load i8* %arrayidx172, align 1, !tbaa !1
  %cmp174 = icmp eq i8 %65, %69
  br i1 %cmp174, label %if.then216, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %cont171
  %70 = load i8* %q.2339, align 1, !tbaa !1
  %71 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %72 = extractvalue { i32, i1 } %71, 0
  %73 = extractvalue { i32, i1 } %71, 1
  br i1 %73, label %ioc_bb178, label %cont179

ioc_bb178:                                        ; preds = %lor.lhs.false176
  tail call void @__ioc_report_sub_overflow(i32 3485, i32 114, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont179

cont179:                                          ; preds = %lor.lhs.false176, %ioc_bb178
  %arrayidx180 = getelementptr inbounds i8* %., i32 %72
  %74 = load i8* %arrayidx180, align 1, !tbaa !1
  %cmp182 = icmp eq i8 %70, %74
  br i1 %cmp182, label %if.then216, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %cont179
  %75 = load i8* %q.2339, align 1, !tbaa !1
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb186, label %cont187

ioc_bb186:                                        ; preds = %lor.lhs.false184
  tail call void @__ioc_report_add_overflow(i32 3485, i32 141, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont187

cont187:                                          ; preds = %lor.lhs.false184, %ioc_bb186
  %arrayidx188 = getelementptr inbounds i8* %., i32 %77
  %79 = load i8* %arrayidx188, align 1, !tbaa !1
  %cmp190 = icmp eq i8 %75, %79
  br i1 %cmp190, label %if.then216, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %cont187
  %80 = load i8* %q.2339, align 1, !tbaa !1
  %81 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 13)
  %82 = extractvalue { i32, i1 } %81, 0
  %83 = extractvalue { i32, i1 } %81, 1
  br i1 %83, label %ioc_bb194, label %cont195

ioc_bb194:                                        ; preds = %lor.lhs.false192
  tail call void @__ioc_report_add_overflow(i32 3485, i32 168, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %58, i64 13, i8 13) nounwind
  br label %cont195

cont195:                                          ; preds = %lor.lhs.false192, %ioc_bb194
  %arrayidx196 = getelementptr inbounds i8* %., i32 %82
  %84 = load i8* %arrayidx196, align 1, !tbaa !1
  %cmp198 = icmp eq i8 %80, %84
  br i1 %cmp198, label %if.then216, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %cont195
  %85 = load i8* %q.2339, align 1, !tbaa !1
  %86 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 14)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  br i1 %88, label %ioc_bb202, label %cont203

ioc_bb202:                                        ; preds = %lor.lhs.false200
  tail call void @__ioc_report_add_overflow(i32 3485, i32 196, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %58, i64 14, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %lor.lhs.false200, %ioc_bb202
  %arrayidx204 = getelementptr inbounds i8* %., i32 %87
  %89 = load i8* %arrayidx204, align 1, !tbaa !1
  %cmp206 = icmp eq i8 %85, %89
  br i1 %cmp206, label %if.then216, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %cont203
  %90 = load i8* %q.2339, align 1, !tbaa !1
  %91 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 15)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb210, label %cont211

ioc_bb210:                                        ; preds = %lor.lhs.false208
  tail call void @__ioc_report_add_overflow(i32 3485, i32 224, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %58, i64 15, i8 13) nounwind
  br label %cont211

cont211:                                          ; preds = %lor.lhs.false208, %ioc_bb210
  %arrayidx212 = getelementptr inbounds i8* %., i32 %92
  %94 = load i8* %arrayidx212, align 1, !tbaa !1
  %cmp214 = icmp eq i8 %90, %94
  br i1 %cmp214, label %if.then216, label %return

if.then216:                                       ; preds = %cont211, %cont203, %cont195, %cont187, %cont179, %cont171, %cont163, %cont155
  %95 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %thresh, i32 1)
  %96 = extractvalue { i32, i1 } %95, 0
  %97 = extractvalue { i32, i1 } %95, 1
  br i1 %97, label %ioc_bb219, label %cont220

ioc_bb219:                                        ; preds = %if.then216
  %98 = sext i32 %thresh to i64
  tail call void @__ioc_report_sub_overflow(i32 3486, i32 42, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %98, i64 1, i8 13) nounwind
  br label %cont220

cont220:                                          ; preds = %if.then216, %ioc_bb219
  %call221 = tail call fastcc i32 @spdist(i8* %arrayidx125, i8* %arrayidx127, i32 %96)
  %99 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call221, i32 2)
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  br i1 %101, label %ioc_bb222, label %return

ioc_bb222:                                        ; preds = %cont220
  %102 = sext i32 %call221 to i64
  tail call void @__ioc_report_add_overflow(i32 3486, i32 47, i8* getelementptr inbounds ([22 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @20, i32 0, i32 0), i64 %102, i64 2, i8 13) nounwind
  br label %return

if.else225:                                       ; preds = %for.body117, %land.lhs.true124
  %cmp228 = icmp eq i8 %42, %43
  br i1 %cmp228, label %for.inc233, label %return

for.inc233:                                       ; preds = %if.else225
  %incdec.ptr234 = getelementptr inbounds i8* %p.2340, i32 1
  %103 = load i8* %incdec.ptr234, align 1, !tbaa !1
  %tobool112 = icmp eq i8 %103, 0
  br i1 %tobool112, label %return, label %for.inc233.land.rhs113_crit_edge

for.inc233.land.rhs113_crit_edge:                 ; preds = %for.inc233
  %incdec.ptr235 = getelementptr inbounds i8* %q.2339, i32 1
  br label %land.rhs113

return:                                           ; preds = %cont105, %for.cond110.preheader, %land.rhs113, %if.else225, %for.inc233, %cont211, %ioc_bb222, %cont220, %ioc_bb150, %cont148, %cont98, %ioc_bb77, %cont75, %ioc_bb62, %cont60, %ioc_bb47, %cont, %if.end14, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %land.lhs.true ], [ 200, %if.end14 ], [ %22, %cont ], [ %22, %ioc_bb47 ], [ %30, %cont60 ], [ %30, %ioc_bb62 ], [ %38, %cont75 ], [ %38, %ioc_bb77 ], [ %.mux, %cont105 ], [ 2, %cont98 ], [ %52, %cont148 ], [ %52, %ioc_bb150 ], [ %100, %cont220 ], [ %100, %ioc_bb222 ], [ 200, %cont211 ], [ 200, %for.inc233 ], [ 200, %if.else225 ], [ 200, %land.rhs113 ], [ 200, %for.cond110.preheader ]
  ret i32 %retval.0
}

declare i32 @closedir(%struct.__dirstream* nocapture) nounwind

declare i8* @strcat(i8*, i8* nocapture) nounwind

declare i32* @wmemcpy(i32*, i32*, i32) nounwind

declare i32 @pattry(%struct.patprog*, i8*)

declare i32 @__fxstat64(i32, i32, %struct.stat64*) nounwind

declare i32** @__ctype_toupper_loc() nounwind readnone

declare i32** @__ctype_tolower_loc() nounwind readnone

declare void @pushheap()

declare i8* @ugetnode(%union.linkroot*)

declare void @popheap()

declare void @setunderscore(i8*)

declare i32 @parsestr(i8*)

declare i32 @readlink(i8* nocapture, i8* nocapture, i32) nounwind

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare i32 @isatty(i32) nounwind

declare i8* @memchr(i8*, i32, i32) nounwind readonly

declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) nounwind

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
!7 = metadata !{i32 50935}
!8 = metadata !{i32 51113}
!9 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !0, i64 16, i64 1, metadata !1, i64 17, i64 32, metadata !1, i64 52, i64 4, metadata !0, i64 56, i64 4, metadata !0, i64 60, i64 2, metadata !5, i64 62, i64 2, metadata !5, i64 64, i64 2, metadata !5, i64 66, i64 2, metadata !5}
