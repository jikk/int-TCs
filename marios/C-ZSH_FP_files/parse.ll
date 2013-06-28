; ModuleID = '../../src/Src/parse.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.heredocs = type { %struct.heredocs*, i32, i32, i8* }
%struct.eccstr = type { %struct.eccstr*, %struct.eccstr*, i8*, i32, i32, i32 }
%struct.estate = type { %struct.eprog*, i32*, i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.options = type { [128 x i8], i8**, i32, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.fdhead = type { i32, i32, i32, i32, i32, i32 }

@tok = external global i32
@incmdpos = common global i32 0, align 4
@aliasspaceflag = common global i32 0, align 4
@ecbuf = common global i32* null, align 4
@condlex = global void ()* @zshlex, align 4
@dummy_eprog = common global %struct.eprog zeroinitializer, align 4
@ecgetstr.buf = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ecrawstr.buf = internal global [4 x i8] zeroinitializer, align 1
@dummy_eprog_code = internal global i32 0, align 4
@.str1 = private unnamed_addr constant [31 x i8] c"illegal combination of options\00", align 1
@opts = external global [169 x i8]
@.str2 = private unnamed_addr constant [41 x i8] c"functions will use zsh style autoloading\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c".zwc\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"zwc file (%s) for zsh-%s\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"mapped\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@queueing_enabled = external global i32
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@dumps = internal unnamed_addr global %struct.funcdump* null, align 4
@shfunctab = external global %struct.hashtable*
@incond = common global i32 0, align 4
@inredir = common global i32 0, align 4
@incasepat = common global i32 0, align 4
@isnewlin = common global i32 0, align 4
@infor = common global i32 0, align 4
@hdocs = common global %struct.heredocs* null, align 4
@eclen = common global i32 0, align 4
@ecused = common global i32 0, align 4
@ecnpats = common global i32 0, align 4
@ecstrs = common global %struct.eccstr* null, align 4
@ecsoffs = common global i32 0, align 4
@ecssub = common global i32 0, align 4
@ecnfunc = common global i32 0, align 4
@load_dump_file.pgsz = internal unnamed_addr global i32 0, align 4
@0 = internal unnamed_addr constant [5 x i8] c"long\00"
@.str9 = private unnamed_addr constant [25 x i8] c"can't write zwc file: %s\00", align 1
@errflag = external global i32
@.str10 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"unknown function: %s\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"no functions\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"5.0.0\00", align 1
@noaliases = external global i32
@.str14 = private unnamed_addr constant [27 x i8] c"function is not loaded: %s\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"can't load function: %s\00", align 1
@.str16 = private unnamed_addr constant [31 x i8] c"function is already loaded: %s\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@1 = internal unnamed_addr constant [10 x i8] c"__off64_t\00"
@.str19 = private unnamed_addr constant [20 x i8] c"can't open file: %s\00", align 1
@.str20 = private unnamed_addr constant [20 x i8] c"can't read file: %s\00", align 1
@.str21 = private unnamed_addr constant [24 x i8] c"can't open zwc file: %s\00", align 1
@.str22 = private unnamed_addr constant [40 x i8] c"zwc file has wrong version (zsh-%s): %s\00", align 1
@.str23 = private unnamed_addr constant [21 x i8] c"invalid zwc file: %s\00", align 1
@2 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@3 = internal unnamed_addr constant [3 x i8] c"-=\00"
@zshlextext = external global i8*
@histdone = external global i32
@.str24 = private unnamed_addr constant [25 x i8] c"parse error near `%l...'\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"parse error near `%l'\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@noerrs = external global i32
@.str27 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@testargs = external global i8**
@tokstr = external global i8*
@.str28 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str31 = private unnamed_addr constant [25 x i8] c"abcdefghknoprstuwxzLONGS\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str34 = private unnamed_addr constant [23 x i8] c"condition expected: %s\00", align 1
@get_cond_num.condstrs = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* null], align 4
@.str35 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"ot\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"ef\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str41 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str44 = private unnamed_addr constant [36 x i8] c"parse error: condition expected: %s\00", align 1
@.str45 = private unnamed_addr constant [25 x i8] c"abcdefgknoprstuwxzhLONGS\00", align 1
@toklineno = external global i64
@4 = internal unnamed_addr constant [10 x i8] c"long long\00"
@par_cmd.inpartime.b = internal unnamed_addr global i1 false
@nocorrect = external global i32
@tokfd = external global i32
@lineno = external global i64
@5 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str46 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@cmdsp = external global i32
@cmdstack = external global i8*
@.str47 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"esac\00", align 1
@typtab = external global [256 x i16]
@6 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@7 = internal unnamed_addr constant [3 x i8] c"<<\00"
@8 = internal unnamed_addr constant [2 x i8] c"-\00"
@redirtab = internal unnamed_addr constant [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 9, i32 8, i32 10, i32 11, i32 13, i32 14, i32 4, i32 5, i32 6, i32 7, i32 12], align 4
@9 = internal unnamed_addr constant [5 x i8] c"char\00"
@10 = internal unnamed_addr constant [9 x i8] c"wordcode\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@12 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@13 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@14 = internal unnamed_addr constant [4 x i8] c"int\00"
@15 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@16 = internal unnamed_addr constant [2 x i8] c"*\00"
@17 = internal unnamed_addr constant [2 x i8] c"+\00"
@18 = internal unnamed_addr constant [22 x i8] c"../../src/Src/parse.c\00"

define i32 @empty_eprog(%struct.eprog* %p) nounwind readonly {
entry:
  %tobool = icmp eq %struct.eprog* %p, null
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %prog = getelementptr inbounds %struct.eprog* %p, i32 0, i32 5
  %0 = load i32** %prog, align 4, !tbaa !0
  %tobool1 = icmp eq i32* %0, null
  br i1 %tobool1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %1 = load i32* %0, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %entry, %lor.rhs
  %2 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define %struct.eprog* @parse_event() nounwind {
entry:
  store i32 37, i32* @tok, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  store i32 0, i32* @aliasspaceflag, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %0 = load i32** @ecbuf, align 4, !tbaa !0
  %tobool.i = icmp eq i32* %0, null
  br i1 %tobool.i, label %init_parse.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  %2 = load i32* @eclen, align 4, !tbaa !3
  tail call void @zfree(i8* %1, i32 %2) nounwind
  br label %init_parse.exit

init_parse.exit:                                  ; preds = %entry, %if.then.i
  store i32 256, i32* @eclen, align 4, !tbaa !3
  %call.i = tail call i8* @zalloc(i32 1024) nounwind
  %3 = bitcast i8* %call.i to i32*
  store i32* %3, i32** @ecbuf, align 4, !tbaa !0
  store i32 0, i32* @ecused, align 4, !tbaa !3
  store %struct.eccstr* null, %struct.eccstr** @ecstrs, align 4, !tbaa !0
  store i32 0, i32* @ecnpats, align 4, !tbaa !3
  store i32 0, i32* @ecsoffs, align 4, !tbaa !3
  store i32 0, i32* @ecssub, align 4, !tbaa !3
  store i32 0, i32* @ecnfunc, align 4, !tbaa !3
  %call = tail call fastcc i32 @par_event()
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %init_parse.exit
  %4 = load %struct.heredocs** @hdocs, align 4, !tbaa !0
  %tobool3.i = icmp eq %struct.heredocs* %4, null
  br i1 %tobool3.i, label %clear_hdocs.exit, label %cont.i

cont.i:                                           ; preds = %if.then, %cont.i
  %p.04.i = phi %struct.heredocs* [ %6, %cont.i ], [ %4, %if.then ]
  %next.i = getelementptr inbounds %struct.heredocs* %p.04.i, i32 0, i32 0
  %5 = bitcast %struct.heredocs* %p.04.i to i8*
  %6 = load %struct.heredocs** %next.i, align 4, !tbaa !0
  tail call void @zfree(i8* %5, i32 16) nounwind
  %tobool.i2 = icmp eq %struct.heredocs* %6, null
  br i1 %tobool.i2, label %clear_hdocs.exit, label %cont.i

clear_hdocs.exit:                                 ; preds = %cont.i, %if.then
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %init_parse.exit
  %call1 = tail call fastcc %struct.eprog* @bld_eprog()
  br label %return

return:                                           ; preds = %if.end, %clear_hdocs.exit
  %retval.0 = phi %struct.eprog* [ %call1, %if.end ], [ null, %clear_hdocs.exit ]
  ret %struct.eprog* %retval.0
}

declare void @zshlex()

define internal fastcc i32 @par_event() nounwind {
entry:
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32* @tok, align 4, !tbaa !3
  switch i32 %0, label %cont [
    i32 1, label %while.body
    i32 37, label %return
  ]

while.body:                                       ; preds = %while.cond
  %1 = load i32* @isnewlin, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %while.body
  call void @zshlex() nounwind
  br label %while.cond

cont:                                             ; preds = %while.cond
  %call = call fastcc i32 @ecadd(i32 0)
  %call5 = call fastcc i32 @par_sublist(i32* %c)
  %tobool = icmp eq i32 %call5, 0
  br i1 %tobool, label %if.then46, label %if.then6

if.then6:                                         ; preds = %cont
  %2 = load i32* @tok, align 4, !tbaa !3
  switch i32 %2, label %if.then46 [
    i32 37, label %cont12
    i32 1, label %cont18
    i32 5, label %set_list_code.exit
    i32 30, label %set_list_code.exit84
  ]

cont12:                                           ; preds = %if.then6
  %3 = load i32* %c, align 4, !tbaa !3
  call fastcc void @set_list_code(i32 %call, i32 2, i32 %3)
  br label %if.else57

cont18:                                           ; preds = %if.then6
  %4 = load i32* %c, align 4, !tbaa !3
  call fastcc void @set_list_code(i32 %call, i32 2, i32 %4)
  %5 = load i32* @isnewlin, align 4, !tbaa !3
  %cmp19 = icmp slt i32 %5, 1
  br i1 %cmp19, label %if.then20, label %if.else57

if.then20:                                        ; preds = %cont18
  call void @zshlex() nounwind
  br label %if.else57

set_list_code.exit:                               ; preds = %if.then6
  %6 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx86.i = getelementptr inbounds i32* %6, i32 %call
  store i32 129, i32* %arrayidx86.i, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %if.else57

set_list_code.exit84:                             ; preds = %if.then6
  %7 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx86.i83 = getelementptr inbounds i32* %7, i32 %call
  store i32 385, i32* %arrayidx86.i83, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %if.else57

if.then46:                                        ; preds = %cont, %if.then6
  store i32 38, i32* @tok, align 4, !tbaa !3
  %8 = load i32* @errflag, align 4, !tbaa !3
  %tobool47 = icmp eq i32 %8, 0
  br i1 %tobool47, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.then46
  call fastcc void @yyerror(i32 0)
  %9 = load i32* @ecused, align 4, !tbaa !3
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %9, i32 -1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %if.then48
  %13 = sext i32 %9 to i64
  call void @__ioc_report_add_overflow(i32 458, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %13, i64 -1, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %if.then48, %ioc_bb49
  store i32 %11, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end51:                                         ; preds = %if.then46
  call fastcc void @yyerror(i32 1)
  call void @herrflush() nounwind
  %14 = load i32* @noerrs, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %14, 2
  br i1 %cmp52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end51
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.then53
  %15 = load i32* @ecused, align 4, !tbaa !3
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 -1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb55, label %cont56

ioc_bb55:                                         ; preds = %if.end54
  %19 = sext i32 %15 to i64
  call void @__ioc_report_add_overflow(i32 465, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %19, i64 -1, i8 13) nounwind
  br label %cont56

cont56:                                           ; preds = %if.end54, %ioc_bb55
  store i32 %17, i32* @ecused, align 4, !tbaa !3
  br label %return

if.else57:                                        ; preds = %cont18, %if.then20, %set_list_code.exit84, %set_list_code.exit, %cont12
  %20 = load i32* @ecused, align 4, !tbaa !3
  %call58 = call fastcc i32 @par_event()
  %tobool59 = icmp eq i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %return

if.then60:                                        ; preds = %if.else57
  store i32 %20, i32* @ecused, align 4, !tbaa !3
  %21 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %21, i32 %call
  %22 = load i32* %arrayidx, align 4, !tbaa !3
  %or = or i32 %22, 512
  store i32 %or, i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %while.cond, %while.body, %if.then60, %if.else57, %cont56, %cont50
  %retval.0 = phi i32 [ 0, %cont50 ], [ 0, %cont56 ], [ 1, %if.else57 ], [ 1, %if.then60 ], [ 0, %while.body ], [ 0, %while.cond ]
  ret i32 %retval.0
}

define %struct.eprog* @parse_list() nounwind {
entry:
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4, !tbaa !3
  store i32 37, i32* @tok, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %0 = load i32** @ecbuf, align 4, !tbaa !0
  %tobool.i = icmp eq i32* %0, null
  br i1 %tobool.i, label %init_parse.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  %2 = load i32* @eclen, align 4, !tbaa !3
  call void @zfree(i8* %1, i32 %2) nounwind
  br label %init_parse.exit

init_parse.exit:                                  ; preds = %entry, %if.then.i
  store i32 256, i32* @eclen, align 4, !tbaa !3
  %call.i = call i8* @zalloc(i32 1024) nounwind
  %3 = bitcast i8* %call.i to i32*
  store i32* %3, i32** @ecbuf, align 4, !tbaa !0
  store i32 0, i32* @ecused, align 4, !tbaa !3
  store %struct.eccstr* null, %struct.eccstr** @ecstrs, align 4, !tbaa !0
  store i32 0, i32* @ecnpats, align 4, !tbaa !3
  store i32 0, i32* @ecsoffs, align 4, !tbaa !3
  store i32 0, i32* @ecssub, align 4, !tbaa !3
  store i32 0, i32* @ecnfunc, align 4, !tbaa !3
  call fastcc void @par_list(i32* %c)
  %4 = load i32* @tok, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 37
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %init_parse.exit
  %5 = load %struct.heredocs** @hdocs, align 4, !tbaa !0
  %tobool3.i = icmp eq %struct.heredocs* %5, null
  br i1 %tobool3.i, label %clear_hdocs.exit, label %cont.i

cont.i:                                           ; preds = %if.then, %cont.i
  %p.04.i = phi %struct.heredocs* [ %7, %cont.i ], [ %5, %if.then ]
  %next.i = getelementptr inbounds %struct.heredocs* %p.04.i, i32 0, i32 0
  %6 = bitcast %struct.heredocs* %p.04.i to i8*
  %7 = load %struct.heredocs** %next.i, align 4, !tbaa !0
  call void @zfree(i8* %6, i32 16) nounwind
  %tobool.i2 = icmp eq %struct.heredocs* %7, null
  br i1 %tobool.i2, label %clear_hdocs.exit, label %cont.i

clear_hdocs.exit:                                 ; preds = %cont.i, %if.then
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4, !tbaa !0
  store i32 38, i32* @tok, align 4, !tbaa !3
  call fastcc void @yyerror(i32 0)
  br label %return

if.end:                                           ; preds = %init_parse.exit
  %call1 = call fastcc %struct.eprog* @bld_eprog()
  br label %return

return:                                           ; preds = %if.end, %clear_hdocs.exit
  %retval.0 = phi %struct.eprog* [ null, %clear_hdocs.exit ], [ %call1, %if.end ]
  ret %struct.eprog* %retval.0
}

define internal fastcc void @par_list(i32* nocapture %complex) nounwind {
entry:
  %c = alloca i32, align 4
  br label %while.condthread-pre-split

while.condthread-pre-split:                       ; preds = %while.body, %entry
  %.pr = load i32* @tok, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %.pr, 1
  br i1 %cmp6, label %while.body, label %cont2

while.body:                                       ; preds = %while.condthread-pre-split
  call void @zshlex() nounwind
  br label %while.condthread-pre-split

cont2:                                            ; preds = %do.body, %while.condthread-pre-split
  %lp.07 = phi i32 [ -1, %while.condthread-pre-split ], [ %call, %do.body ]
  %call = call fastcc i32 @ecadd(i32 0)
  store i32 0, i32* %c, align 4, !tbaa !3
  %call3 = call fastcc i32 @par_sublist(i32* %c)
  %tobool = icmp eq i32 %call3, 0
  br i1 %tobool, label %if.else40, label %if.then

if.then:                                          ; preds = %cont2
  %0 = load i32* %c, align 4, !tbaa !3
  %1 = load i32* %complex, align 4, !tbaa !3
  %or = or i32 %1, %0
  store i32 %or, i32* %complex, align 4, !tbaa !3
  %2 = load i32* @tok, align 4, !tbaa !3
  switch i32 %2, label %cont38 [
    i32 1, label %cond.end
    i32 5, label %if.end
    i32 30, label %if.end
  ]

if.end:                                           ; preds = %if.then, %if.then
  store i32 1, i32* %complex, align 4, !tbaa !3
  %.pr1 = load i32* @tok, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %.pr1, 1
  br i1 %cmp11, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp16 = icmp eq i32 %.pr1, 5
  %cond = select i1 %cmp16, i32 4, i32 12
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.end, %cond.false
  %cond29 = phi i32 [ %cond, %cond.false ], [ 2, %if.end ], [ 2, %if.then ]
  call fastcc void @set_list_code(i32 %call, i32 %cond29, i32 %0)
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %cond.end
  call void @zshlex() nounwind
  %3 = load i32* @tok, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %3, 1
  br i1 %cmp30, label %do.body, label %cont2

cont38:                                           ; preds = %if.then
  call fastcc void @set_list_code(i32 %call, i32 18, i32 %0)
  br label %return

if.else40:                                        ; preds = %cont2
  %4 = load i32* @ecused, align 4, !tbaa !3
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 -1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.else40
  %8 = sext i32 %4 to i64
  call void @__ioc_report_add_overflow(i32 572, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %8, i64 -1, i8 13) nounwind
  br label %cont42

cont42:                                           ; preds = %if.else40, %ioc_bb41
  store i32 %6, i32* @ecused, align 4, !tbaa !3
  %cmp43 = icmp sgt i32 %lp.07, -1
  br i1 %cmp43, label %cont54, label %return

cont54:                                           ; preds = %cont42
  %9 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %9, i32 %lp.07
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %or55 = or i32 %10, 512
  store i32 %or55, i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont42, %cont54, %cont38
  ret void
}

define internal fastcc void @yyerror(i32 %noerr) nounwind {
entry:
  %0 = load i8** @zshlextext, align 4, !tbaa !0
  %call = tail call i8* @dupstring(i8* %0) nounwind
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %lor.lhs.false.lr.ph, label %for.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  tail call void @untokenize(i8* %call) nounwind
  %tobool.not38 = xor i1 %tobool, true
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %for.cond.backedge
  %t0.036 = phi i32 [ 0, %lor.lhs.false.lr.ph ], [ %3, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds i8* %call, i32 %t0.036
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %1, label %for.inc [
    i8 0, label %for.end
    i8 10, label %for.end
  ]

for.inc:                                          ; preds = %lor.lhs.false
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.036, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb
  %cmp = icmp eq i32 %3, 20
  %brmerge = or i1 %cmp, %tobool.not38
  br i1 %brmerge, label %for.end, label %lor.lhs.false

ioc_bb:                                           ; preds = %for.inc
  %5 = sext i32 %t0.036 to i64
  tail call void @__ioc_report_add_overflow(i32 2511, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %entry, %for.cond.backedge, %lor.lhs.false, %lor.lhs.false
  %t0.0.lcssa = phi i32 [ %t0.036, %lor.lhs.false ], [ %t0.036, %lor.lhs.false ], [ %3, %for.cond.backedge ], [ 0, %entry ]
  %6 = load i32* @histdone, align 4, !tbaa !3
  %and = and i32 %6, 2
  %tobool9 = icmp eq i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %for.end
  switch i32 %t0.0.lcssa, label %if.then15 [
    i32 20, label %if.then13
    i32 0, label %if.else16
  ]

if.then13:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i8* %call, i32 20) nounwind
  br label %if.end19

if.then15:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([22 x i8]* @.str25, i32 0, i32 0), i8* %call, i32 %t0.0.lcssa) nounwind
  br label %if.end19

if.else16:                                        ; preds = %if.then10
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([12 x i8]* @.str26, i32 0, i32 0)) nounwind
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then13, %if.else16, %if.then15
  %tobool20 = icmp eq i32 %noerr, 0
  %7 = load i32* @noerrs, align 4, !tbaa !3
  %cmp21 = icmp ne i32 %7, 2
  %or.cond = and i1 %tobool20, %cmp21
  br i1 %or.cond, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.then23
  ret void
}

define %struct.eprog* @parse_cond() nounwind {
entry:
  %0 = load i32** @ecbuf, align 4, !tbaa !0
  %tobool.i = icmp eq i32* %0, null
  br i1 %tobool.i, label %init_parse.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  %2 = load i32* @eclen, align 4, !tbaa !3
  tail call void @zfree(i8* %1, i32 %2) nounwind
  br label %init_parse.exit

init_parse.exit:                                  ; preds = %entry, %if.then.i
  store i32 256, i32* @eclen, align 4, !tbaa !3
  %call.i = tail call i8* @zalloc(i32 1024) nounwind
  %3 = bitcast i8* %call.i to i32*
  store i32* %3, i32** @ecbuf, align 4, !tbaa !0
  store i32 0, i32* @ecused, align 4, !tbaa !3
  store %struct.eccstr* null, %struct.eccstr** @ecstrs, align 4, !tbaa !0
  store i32 0, i32* @ecnpats, align 4, !tbaa !3
  store i32 0, i32* @ecsoffs, align 4, !tbaa !3
  store i32 0, i32* @ecssub, align 4, !tbaa !3
  store i32 0, i32* @ecnfunc, align 4, !tbaa !3
  %call = tail call fastcc i32 @par_cond()
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %init_parse.exit
  %4 = load %struct.heredocs** @hdocs, align 4, !tbaa !0
  %tobool3.i = icmp eq %struct.heredocs* %4, null
  br i1 %tobool3.i, label %clear_hdocs.exit, label %cont.i

cont.i:                                           ; preds = %if.then, %cont.i
  %p.04.i = phi %struct.heredocs* [ %6, %cont.i ], [ %4, %if.then ]
  %next.i = getelementptr inbounds %struct.heredocs* %p.04.i, i32 0, i32 0
  %5 = bitcast %struct.heredocs* %p.04.i to i8*
  %6 = load %struct.heredocs** %next.i, align 4, !tbaa !0
  tail call void @zfree(i8* %5, i32 16) nounwind
  %tobool.i2 = icmp eq %struct.heredocs* %6, null
  br i1 %tobool.i2, label %clear_hdocs.exit, label %cont.i

clear_hdocs.exit:                                 ; preds = %cont.i, %if.then
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %init_parse.exit
  %call1 = tail call fastcc %struct.eprog* @bld_eprog()
  br label %return

return:                                           ; preds = %if.end, %clear_hdocs.exit
  %retval.0 = phi %struct.eprog* [ %call1, %if.end ], [ null, %clear_hdocs.exit ]
  ret %struct.eprog* %retval.0
}

define internal fastcc i32 @par_cond() nounwind {
entry:
  %0 = load i32* @ecused, align 4, !tbaa !3
  %call = tail call fastcc i32 @par_cond_1()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32* @tok, align 4, !tbaa !3
  switch i32 %1, label %return [
    i32 1, label %while.body
    i32 8, label %if.then
  ]

while.body:                                       ; preds = %while.cond
  %2 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %2() nounwind
  br label %while.cond

if.then:                                          ; preds = %while.cond
  %3 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %3() nounwind
  %4 = load i32* @tok, align 4, !tbaa !3
  %cmp323 = icmp eq i32 %4, 1
  br i1 %cmp323, label %while.body4, label %while.end5

while.body4:                                      ; preds = %if.then, %while.body4
  %5 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %5() nounwind
  %6 = load i32* @tok, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %while.body4, label %while.end5

while.end5:                                       ; preds = %while.body4, %if.then
  tail call fastcc void @ecispace(i32 %0, i32 1)
  %call6 = tail call fastcc i32 @par_cond()
  %7 = load i32* @ecused, align 4, !tbaa !3
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %while.end5
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_sub_overflow(i32 2221, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %while.end5, %ioc_bb7
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %9, i32 %0)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  %15 = sext i32 %0 to i64
  %16 = sext i32 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 2221, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %17 = icmp ult i32 %13, 16777216
  br i1 %17, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont10
  %18 = sext i32 %13 to i64
  tail call void @__ioc_report_shl_strict(i32 2221, i32 66, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %18, i64 7, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %cont10
  %shl = shl i32 %13, 7
  %or = or i32 %shl, 2
  %19 = icmp sgt i32 %or, -1
  br i1 %19, label %cont18, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont14
  %20 = sext i32 %or to i64
  tail call void @__ioc_report_conversion(i32 2221, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %cont14, %ioc_bb15
  %shl19 = shl i32 %or, 5
  %or20 = or i32 %shl19, 17
  %21 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %21, i32 %0
  store i32 %or20, i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %while.cond, %cont18
  %retval.0 = phi i32 [ 1, %cont18 ], [ %call, %while.cond ]
  ret i32 %retval.0
}

define void @setheredoc(i32 %pc, i32 %type, i8* %str, i8* %termstr, i8* %munged_termstr) nounwind {
entry:
  %or = or i32 %type, 64
  %0 = icmp sgt i32 %or, -1
  br i1 %0, label %cont4, label %ioc_bb1

ioc_bb1:                                          ; preds = %entry
  %1 = sext i32 %or to i64
  tail call void @__ioc_report_conversion(i32 2160, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %entry, %ioc_bb1
  %shl = shl i32 %or, 5
  %or5 = or i32 %shl, 4
  %2 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i32 %pc
  store i32 %or5, i32* %arrayidx, align 4, !tbaa !3
  %call = tail call fastcc i32 @ecstrcode(i8* %str)
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pc, i32 2)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  %6 = sext i32 %pc to i64
  br i1 %5, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont4
  tail call void @__ioc_report_add_overflow(i32 2161, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %6, i64 2, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %cont4, %ioc_bb6
  %7 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %7, i32 %4
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !3
  %call9 = tail call fastcc i32 @ecstrcode(i8* %termstr)
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pc, i32 3)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %cont7
  tail call void @__ioc_report_add_overflow(i32 2162, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %6, i64 3, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %cont7, %ioc_bb10
  %11 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32* %11, i32 %9
  store i32 %call9, i32* %arrayidx12, align 4, !tbaa !3
  %call13 = tail call fastcc i32 @ecstrcode(i8* %munged_termstr)
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pc, i32 4)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont11
  tail call void @__ioc_report_add_overflow(i32 2163, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %6, i64 4, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %cont11, %ioc_bb14
  %15 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %15, i32 %13
  store i32 %call13, i32* %arrayidx16, align 4, !tbaa !3
  ret void
}

define internal fastcc i32 @ecstrcode(i8* %s) nounwind {
entry:
  %call = tail call i32 @has_token(i8* %s) nounwind
  %call1 = tail call i32 @strlen(i8* %s) nounwind readonly
  %0 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call1, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %entry
  %3 = zext i32 %call1 to i64
  tail call void @__ioc_report_add_overflow(i32 280, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind
  br label %cont3

cont3:                                            ; preds = %entry, %ioc_bb2
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont3
  %5 = zext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 280, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont3
  %tobool = icmp ne i32 %1, 0
  %cmp = icmp slt i32 %1, 5
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cont5
  %6 = load %struct.eccstr** @ecstrs, align 4, !tbaa !0
  %tobool41103 = icmp eq %struct.eccstr* %6, null
  br i1 %tobool41103, label %for.end, label %for.body

if.then:                                          ; preds = %cont5
  %tobool6 = icmp ne i32 %call, 0
  %cond = select i1 %tobool6, i32 3, i32 2
  switch i32 %1, label %return [
    i32 4, label %sw.bb
    i32 3, label %sw.bb14
    i32 2, label %sw.bb24
    i32 1, label %cont39
  ]

sw.bb:                                            ; preds = %if.then
  %arrayidx = getelementptr inbounds i8* %s, i32 2
  %7 = load i8* %arrayidx, align 1, !tbaa !1
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %cont13, label %ioc_bb10

ioc_bb10:                                         ; preds = %sw.bb
  %9 = sext i8 %7 to i64
  tail call void @__ioc_report_conversion(i32 284, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %sw.bb, %ioc_bb10
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 19
  %or = or i32 %shl, %cond
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.then, %cont13
  %c.0 = phi i32 [ %cond, %if.then ], [ %or, %cont13 ]
  %arrayidx15 = getelementptr inbounds i8* %s, i32 1
  %10 = load i8* %arrayidx15, align 1, !tbaa !1
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %cont21, label %ioc_bb17

ioc_bb17:                                         ; preds = %sw.bb14
  %12 = sext i8 %10 to i64
  tail call void @__ioc_report_conversion(i32 286, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %sw.bb14, %ioc_bb17
  %conv19 = zext i8 %10 to i32
  %shl22 = shl nuw nsw i32 %conv19, 11
  %or23 = or i32 %shl22, %c.0
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.then, %cont21
  %c.1 = phi i32 [ %cond, %if.then ], [ %or23, %cont21 ]
  %13 = load i8* %s, align 1, !tbaa !1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %cont31, label %ioc_bb27

ioc_bb27:                                         ; preds = %sw.bb24
  %15 = sext i8 %13 to i64
  tail call void @__ioc_report_conversion(i32 289, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %sw.bb24, %ioc_bb27
  %conv29 = zext i8 %13 to i32
  %shl32 = shl nuw nsw i32 %conv29, 3
  %or33 = or i32 %shl32, %c.1
  br label %return

cont39:                                           ; preds = %if.then
  %cond36 = select i1 %tobool6, i32 7, i32 6
  br label %return

for.body:                                         ; preds = %if.end, %for.cond.preheader
  %16 = phi %struct.eccstr* [ %6, %for.cond.preheader ], [ %26, %if.end ]
  %nfunc = getelementptr inbounds %struct.eccstr* %16, i32 0, i32 5
  %17 = load i32* %nfunc, align 4, !tbaa !3
  %18 = load i32* @ecnfunc, align 4, !tbaa !3
  %19 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %17, i32 %18)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb42, label %cont43

ioc_bb42:                                         ; preds = %for.body
  %22 = sext i32 %18 to i64
  %23 = sext i32 %17 to i64
  tail call void @__ioc_report_sub_overflow(i32 305, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %23, i64 %22, i8 13) nounwind
  br label %cont43

cont43:                                           ; preds = %for.body, %ioc_bb42
  %tobool44 = icmp eq i32 %20, 0
  br i1 %tobool44, label %land.lhs.true45, label %if.end

land.lhs.true45:                                  ; preds = %cont43
  %str = getelementptr inbounds %struct.eccstr* %16, i32 0, i32 2
  %24 = load i8** %str, align 4, !tbaa !0
  %call46 = tail call i32 @strcmp(i8* %24, i8* %s) nounwind
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.end

if.then48:                                        ; preds = %land.lhs.true45
  %offs = getelementptr inbounds %struct.eccstr* %16, i32 0, i32 3
  %25 = load i32* %offs, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %land.lhs.true45, %cont43
  %cmp40.0 = phi i32 [ %20, %cont43 ], [ %call46, %land.lhs.true45 ]
  %cmp49 = icmp slt i32 %cmp40.0, 0
  %left = getelementptr inbounds %struct.eccstr* %16, i32 0, i32 0
  %right = getelementptr inbounds %struct.eccstr* %16, i32 0, i32 1
  %cond51 = select i1 %cmp49, %struct.eccstr** %left, %struct.eccstr** %right
  %26 = load %struct.eccstr** %cond51, align 4, !tbaa !0
  %tobool41 = icmp eq %struct.eccstr* %26, null
  br i1 %tobool41, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %for.cond.preheader
  %pp.0.lcssa = phi %struct.eccstr** [ @ecstrs, %for.cond.preheader ], [ %cond51, %if.end ]
  %call52 = tail call i8* @zhalloc(i32 24) nounwind
  %27 = bitcast i8* %call52 to %struct.eccstr*
  store %struct.eccstr* %27, %struct.eccstr** %pp.0.lcssa, align 4, !tbaa !0
  %right53 = getelementptr inbounds i8* %call52, i32 4
  %28 = bitcast i8* %right53 to %struct.eccstr**
  store %struct.eccstr* null, %struct.eccstr** %28, align 4, !tbaa !0
  %left54 = bitcast i8* %call52 to %struct.eccstr**
  store %struct.eccstr* null, %struct.eccstr** %left54, align 4, !tbaa !0
  %29 = load i32* @ecsoffs, align 4, !tbaa !3
  %30 = load i32* @ecssub, align 4, !tbaa !3
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %29, i32 %30)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb55, label %cont56

ioc_bb55:                                         ; preds = %for.end
  %34 = sext i32 %30 to i64
  %35 = sext i32 %29 to i64
  tail call void @__ioc_report_sub_overflow(i32 311, i32 26, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %35, i64 %34, i8 13) nounwind
  br label %cont56

cont56:                                           ; preds = %for.end, %ioc_bb55
  %36 = icmp ult i32 %32, 536870912
  br i1 %36, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %cont56
  %37 = sext i32 %32 to i64
  tail call void @__ioc_report_shl_strict(i32 311, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %37, i64 2, i8 13) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %cont56
  %shl61 = shl i32 %32, 2
  %tobool62 = icmp ne i32 %call, 0
  %cond63 = zext i1 %tobool62 to i32
  %or64 = or i32 %shl61, %cond63
  %38 = icmp sgt i32 %or64, -1
  br i1 %38, label %cont67, label %ioc_bb66

ioc_bb66:                                         ; preds = %cont60
  %39 = sext i32 %or64 to i64
  tail call void @__ioc_report_conversion(i32 311, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont67

cont67:                                           ; preds = %ioc_bb66, %cont60
  %offs68 = getelementptr inbounds i8* %call52, i32 12
  %40 = bitcast i8* %offs68 to i32*
  store i32 %or64, i32* %40, align 4, !tbaa !3
  %41 = load i32* @ecsoffs, align 4, !tbaa !3
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %cont71, label %ioc_bb70

ioc_bb70:                                         ; preds = %cont67
  %43 = sext i32 %41 to i64
  tail call void @__ioc_report_conversion(i32 312, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %43, i8 1) nounwind
  br label %cont71

cont71:                                           ; preds = %ioc_bb70, %cont67
  %aoffs = getelementptr inbounds i8* %call52, i32 16
  %44 = bitcast i8* %aoffs to i32*
  store i32 %41, i32* %44, align 4, !tbaa !3
  %str72 = getelementptr inbounds i8* %call52, i32 8
  %45 = bitcast i8* %str72 to i8**
  store i8* %s, i8** %45, align 4, !tbaa !0
  %46 = load i32* @ecnfunc, align 4, !tbaa !3
  %nfunc73 = getelementptr inbounds i8* %call52, i32 20
  %47 = bitcast i8* %nfunc73 to i32*
  store i32 %46, i32* %47, align 4, !tbaa !3
  %48 = load i32* @ecsoffs, align 4, !tbaa !3
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %48, i32 %1)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %cont71
  %52 = sext i32 %1 to i64
  %53 = sext i32 %48 to i64
  tail call void @__ioc_report_add_overflow(i32 315, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %53, i64 %52, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %cont71, %ioc_bb74
  store i32 %50, i32* @ecsoffs, align 4, !tbaa !3
  %54 = load i32* %40, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont31, %cont39, %if.then, %cont75, %if.then48
  %retval.0 = phi i32 [ %25, %if.then48 ], [ %54, %cont75 ], [ %cond, %if.then ], [ %cond36, %cont39 ], [ %or33, %cont31 ]
  ret i32 %retval.0
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define %struct.eprog* @dupeprog(%struct.eprog* %p, i32 %heap) nounwind {
entry:
  %cmp = icmp eq %struct.eprog* %p, @dummy_eprog
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %heap, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call = tail call i8* @zhalloc(i32 36) nounwind
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call1 = tail call i8* @zalloc(i32 36) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %call.sink = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  %0 = bitcast i8* %call.sink to %struct.eprog*
  %cond3 = select i1 %tobool, i32 2, i32 1
  %flags = getelementptr inbounds %struct.eprog* %p, i32 0, i32 0
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 8
  %or = or i32 %and, %cond3
  %flags4 = bitcast i8* %call.sink to i32*
  store i32 %or, i32* %flags4, align 4, !tbaa !3
  %dump = getelementptr inbounds i8* %call.sink, i32 32
  %2 = bitcast i8* %dump to %struct.funcdump**
  store %struct.funcdump* null, %struct.funcdump** %2, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.eprog* %p, i32 0, i32 1
  %3 = load i32* %len, align 4, !tbaa !3
  %len5 = getelementptr inbounds i8* %call.sink, i32 4
  %4 = bitcast i8* %len5 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !3
  %npats = getelementptr inbounds %struct.eprog* %p, i32 0, i32 2
  %5 = load i32* %npats, align 4, !tbaa !3
  %npats6 = getelementptr inbounds i8* %call.sink, i32 8
  %6 = bitcast i8* %npats6 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !3
  %cond8 = select i1 %tobool, i32 -1, i32 1
  %nref = getelementptr inbounds i8* %call.sink, i32 12
  %7 = bitcast i8* %nref to i32*
  store i32 %cond8, i32* %7, align 4, !tbaa !3
  %8 = sext i32 %3 to i64
  %9 = icmp sgt i32 %3, -1
  br i1 %tobool, label %cond.true10, label %cond.false15

cond.true10:                                      ; preds = %cond.end
  br i1 %9, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cond.true10
  tail call void @__ioc_report_conversion(i32 2554, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cond.true10
  %call14 = tail call i8* @hcalloc(i32 %3) nounwind
  br label %cond.end21

cond.false15:                                     ; preds = %cond.end
  br i1 %9, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cond.false15
  tail call void @__ioc_report_conversion(i32 2554, i32 86, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cond.false15
  %call20 = tail call i8* @zshcalloc(i32 %3) nounwind
  br label %cond.end21

cond.end21:                                       ; preds = %cont19, %cont13
  %call14.sink = phi i8* [ %call14, %cont13 ], [ %call20, %cont19 ]
  %10 = bitcast i8* %call14.sink to %struct.patprog**
  %pats = getelementptr inbounds i8* %call.sink, i32 16
  %11 = bitcast i8* %pats to %struct.patprog***
  store %struct.patprog** %10, %struct.patprog*** %11, align 4, !tbaa !0
  %12 = load i32* %6, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.patprog** %10, i32 %12
  %13 = bitcast %struct.patprog** %add.ptr to i32*
  %prog = getelementptr inbounds i8* %call.sink, i32 20
  %14 = bitcast i8* %prog to i32**
  store i32* %13, i32** %14, align 4, !tbaa !0
  %15 = bitcast %struct.patprog** %add.ptr to i8*
  %strs = getelementptr inbounds %struct.eprog* %p, i32 0, i32 6
  %16 = load i8** %strs, align 4, !tbaa !0
  %prog26 = getelementptr inbounds %struct.eprog* %p, i32 0, i32 5
  %17 = load i32** %prog26, align 4, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i32
  %sub.ptr.rhs.cast = ptrtoint i32* %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr27 = getelementptr inbounds i8* %15, i32 %sub.ptr.sub
  %strs28 = getelementptr inbounds i8* %call.sink, i32 24
  %18 = bitcast i8* %strs28 to i8**
  store i8* %add.ptr27, i8** %18, align 4, !tbaa !0
  %19 = bitcast %struct.patprog** %add.ptr to i8*
  %20 = load i32** %prog26, align 4, !tbaa !0
  %21 = bitcast i32* %20 to i8*
  %22 = load i32* %4, align 4, !tbaa !3
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %cond.end21
  %24 = sext i32 %22 to i64
  tail call void @__ioc_report_conversion(i32 2557, i32 34, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %cond.end21
  %25 = load i32* %npats, align 4, !tbaa !3
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %cont38, label %ioc_bb37

ioc_bb37:                                         ; preds = %cont34
  %27 = sext i32 %25 to i64
  tail call void @__ioc_report_conversion(i32 2557, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont38

cont38:                                           ; preds = %ioc_bb37, %cont34
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb39, label %cont40

ioc_bb39:                                         ; preds = %cont38
  %31 = zext i32 %25 to i64
  tail call void @__ioc_report_mul_overflow(i32 2557, i32 60, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %31, i64 4, i8 5) nounwind
  br label %cont40

cont40:                                           ; preds = %cont38, %ioc_bb39
  %32 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %22, i32 %29)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %cont40
  %35 = zext i32 %29 to i64
  %36 = zext i32 %22 to i64
  tail call void @__ioc_report_sub_overflow(i32 2557, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %36, i64 %35, i8 5) nounwind
  br label %cont42

cont42:                                           ; preds = %cont40, %ioc_bb41
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %21, i32 %33, i32 4, i1 false)
  %shf = getelementptr inbounds i8* %call.sink, i32 28
  %37 = bitcast i8* %shf to %struct.shfunc**
  store %struct.shfunc* null, %struct.shfunc** %37, align 4, !tbaa !0
  %38 = load i32* %6, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cont42
  %i.0 = phi i32 [ %38, %cont42 ], [ %40, %for.body ]
  %pp.0 = phi %struct.patprog** [ %10, %cont42 ], [ %incdec.ptr, %for.body ]
  %39 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb44, label %cont45

ioc_bb44:                                         ; preds = %for.cond
  %42 = sext i32 %i.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2559, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %42, i64 -1, i8 13) nounwind
  br label %cont45

cont45:                                           ; preds = %for.cond, %ioc_bb44
  %tobool46 = icmp eq i32 %i.0, 0
  br i1 %tobool46, label %return, label %for.body

for.body:                                         ; preds = %cont45
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %pp.0, align 4, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.patprog** %pp.0, i32 1
  br label %for.cond

return:                                           ; preds = %cont45, %entry
  %retval.0 = phi %struct.eprog* [ @dummy_eprog, %entry ], [ %0, %cont45 ]
  ret %struct.eprog* %retval.0
}

declare i8* @zhalloc(i32)

declare i8* @zalloc(i32)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @hcalloc(i32)

declare i8* @zshcalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @useeprog(%struct.eprog* %p) nounwind {
entry:
  %tobool = icmp ne %struct.eprog* %p, null
  %cmp = icmp ne %struct.eprog* %p, @dummy_eprog
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %entry
  %nref = getelementptr inbounds %struct.eprog* %p, i32 0, i32 3
  %0 = load i32* %nref, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %0, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 2576, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  store i32 %2, i32* %nref, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont, %land.lhs.true1, %entry
  ret void
}

define void @freeeprog(%struct.eprog* %p) nounwind {
entry:
  %tobool = icmp ne %struct.eprog* %p, null
  %cmp = icmp ne %struct.eprog* %p, @dummy_eprog
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %nref = getelementptr inbounds %struct.eprog* %p, i32 0, i32 3
  %0 = load i32* %nref, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end24

land.lhs.true2:                                   ; preds = %if.then
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %land.lhs.true2
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 2593, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %land.lhs.true2, %ioc_bb
  store i32 %2, i32* %nref, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end24

if.then5:                                         ; preds = %cont
  %npats = getelementptr inbounds %struct.eprog* %p, i32 0, i32 2
  %5 = load i32* %npats, align 4, !tbaa !3
  %pats = getelementptr inbounds %struct.eprog* %p, i32 0, i32 4
  %6 = load %struct.patprog*** %pats, align 4, !tbaa !0
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then5
  %i.0 = phi i32 [ %5, %if.then5 ], [ %8, %for.body ]
  %pp.0 = phi %struct.patprog** [ %6, %if.then5 ], [ %incdec.ptr, %for.body ]
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %for.cond
  %10 = sext i32 %i.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2594, i32 48, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %10, i64 -1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %for.cond, %ioc_bb6
  %tobool8 = icmp eq i32 %i.0, 0
  br i1 %tobool8, label %for.end, label %for.body

for.body:                                         ; preds = %cont7
  %11 = load %struct.patprog** %pp.0, align 4, !tbaa !0
  tail call void @freepatprog(%struct.patprog* %11) nounwind
  %incdec.ptr = getelementptr inbounds %struct.patprog** %pp.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %cont7
  %dump = getelementptr inbounds %struct.eprog* %p, i32 0, i32 8
  %12 = load %struct.funcdump** %dump, align 4, !tbaa !0
  %tobool9 = icmp eq %struct.funcdump* %12, null
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.end
  tail call void @decrdumpcount(%struct.funcdump* %12)
  %13 = load %struct.patprog*** %pats, align 4, !tbaa !0
  %14 = bitcast %struct.patprog** %13 to i8*
  %15 = load i32* %npats, align 4, !tbaa !3
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %if.then10
  %17 = sext i32 %15 to i64
  tail call void @__ioc_report_conversion(i32 2598, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %if.then10
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %21 = zext i32 %15 to i64
  tail call void @__ioc_report_mul_overflow(i32 2598, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %21, i64 4, i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  %22 = icmp sgt i32 %19, -1
  br i1 %22, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cont17
  %23 = zext i32 %19 to i64
  tail call void @__ioc_report_conversion(i32 2598, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %23, i8 0) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cont17
  tail call void @zfree(i8* %14, i32 %19) nounwind
  br label %cont22

if.else:                                          ; preds = %for.end
  %24 = load %struct.patprog*** %pats, align 4, !tbaa !0
  %25 = bitcast %struct.patprog** %24 to i8*
  %len = getelementptr inbounds %struct.eprog* %p, i32 0, i32 1
  %26 = load i32* %len, align 4, !tbaa !3
  tail call void @zfree(i8* %25, i32 %26) nounwind
  br label %cont22

cont22:                                           ; preds = %cont19, %if.else
  %27 = bitcast %struct.eprog* %p to i8*
  tail call void @zfree(i8* %27, i32 36) nounwind
  br label %if.end24

if.end24:                                         ; preds = %cont, %if.then, %cont22, %entry
  ret void
}

declare void @freepatprog(%struct.patprog*)

define void @decrdumpcount(%struct.funcdump* %f) nounwind {
entry:
  %count = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 7
  %0 = load i32* %count, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 3615, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* %count, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %for.cond, label %if.end16

for.cond:                                         ; preds = %cont, %for.cond
  %p.0.in = phi %struct.funcdump** [ %next, %for.cond ], [ @dumps, %cont ]
  %q.0 = phi %struct.funcdump* [ %p.0, %for.cond ], [ null, %cont ]
  %p.0 = load %struct.funcdump** %p.0.in, align 4
  %tobool2 = icmp ne %struct.funcdump* %p.0, null
  %tobool2.not = xor i1 %tobool2, true
  %cmp = icmp eq %struct.funcdump* %p.0, %f
  %or.cond = or i1 %cmp, %tobool2.not
  %next = getelementptr inbounds %struct.funcdump* %p.0, i32 0, i32 0
  br i1 %or.cond, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool2, label %if.then4, label %if.end16

if.then4:                                         ; preds = %for.end
  %tobool5 = icmp eq %struct.funcdump* %q.0, null
  %5 = load %struct.funcdump** %next, align 4, !tbaa !0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %next8 = getelementptr inbounds %struct.funcdump* %q.0, i32 0, i32 0
  store %struct.funcdump* %5, %struct.funcdump** %next8, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %if.then4
  store %struct.funcdump* %5, %struct.funcdump** @dumps, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %addr = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 5
  %6 = load i32** %addr, align 4, !tbaa !0
  %7 = bitcast i32* %6 to i8*
  %len = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 6
  %8 = load i32* %len, align 4, !tbaa !3
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %if.end
  %10 = sext i32 %8 to i64
  tail call void @__ioc_report_conversion(i32 3626, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %if.end
  %call = tail call i32 @munmap(i8* %7, i32 %8) nounwind
  %fd = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 3
  %11 = load i32* %fd, align 4, !tbaa !3
  %call12 = tail call i32 @zclose(i32 %11) nounwind
  %filename = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 8
  %12 = load i8** %filename, align 4, !tbaa !0
  tail call void @zsfree(i8* %12) nounwind
  %13 = bitcast %struct.funcdump* %f to i8*
  tail call void @zfree(i8* %13, i32 44) nounwind
  br label %if.end16

if.end16:                                         ; preds = %cont, %for.end, %cont11
  ret void
}

declare void @zfree(i8*, i32)

define i8* @ecgetstr(%struct.estate* nocapture %s, i32 %dup, i32* %tok) nounwind {
entry:
  %pc = getelementptr inbounds %struct.estate* %s, i32 0, i32 1
  %0 = load i32** %pc, align 4, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr, i32** %pc, align 4, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %.off = add i32 %1, -6
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end40, label %cont5

cont5:                                            ; preds = %entry
  %and = and i32 %1, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont38, label %cont10

cont10:                                           ; preds = %cont5
  %shr = lshr i32 %1, 3
  %and11 = and i32 %shr, 255
  %2 = icmp ult i32 %and11, 128
  br i1 %2, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cont10
  %3 = zext i32 %and11 to i64
  tail call void @__ioc_report_conversion(i32 2616, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cont10
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* getelementptr inbounds ([4 x i8]* @ecgetstr.buf, i32 0, i32 0), align 1, !tbaa !1
  %shr16 = lshr i32 %1, 11
  %and19 = and i32 %shr16, 255
  %4 = icmp ult i32 %and19, 128
  br i1 %4, label %cont22, label %ioc_bb21

ioc_bb21:                                         ; preds = %cont13
  %5 = zext i32 %and19 to i64
  tail call void @__ioc_report_conversion(i32 2617, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %cont22

cont22:                                           ; preds = %ioc_bb21, %cont13
  %conv23 = trunc i32 %shr16 to i8
  store i8 %conv23, i8* getelementptr inbounds ([4 x i8]* @ecgetstr.buf, i32 0, i32 1), align 1, !tbaa !1
  %shr26 = lshr i32 %1, 19
  %and29 = and i32 %shr26, 255
  %6 = icmp ult i32 %and29, 128
  br i1 %6, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %cont22
  %7 = zext i32 %and29 to i64
  tail call void @__ioc_report_conversion(i32 2618, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %7, i8 0) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %cont22
  %conv33 = trunc i32 %shr26 to i8
  store i8 %conv33, i8* getelementptr inbounds ([4 x i8]* @ecgetstr.buf, i32 0, i32 2), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([4 x i8]* @ecgetstr.buf, i32 0, i32 3), align 1, !tbaa !1
  %call = tail call i8* @dupstring(i8* getelementptr inbounds ([4 x i8]* @ecgetstr.buf, i32 0, i32 0)) nounwind
  br label %if.end40

cont38:                                           ; preds = %cont5
  %strs = getelementptr inbounds %struct.estate* %s, i32 0, i32 2
  %8 = load i8** %strs, align 4, !tbaa !0
  %shr39 = lshr i32 %1, 2
  %add.ptr = getelementptr inbounds i8* %8, i32 %shr39
  br label %if.end40

if.end40:                                         ; preds = %entry, %cont32, %cont38
  %dup.addr.0 = phi i32 [ 0, %cont32 ], [ %dup, %cont38 ], [ %dup, %entry ]
  %r.0 = phi i8* [ %call, %cont32 ], [ %add.ptr, %cont38 ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %entry ]
  %tobool41 = icmp eq i32* %tok, null
  br i1 %tobool41, label %if.end49, label %cont48

cont48:                                           ; preds = %if.end40
  %and45 = and i32 %1, 1
  store i32 %and45, i32* %tok, align 4, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %if.end40, %cont48
  switch i32 %dup.addr.0, label %cont55 [
    i32 1, label %cond.true
    i32 0, label %cond.end
  ]

cont55:                                           ; preds = %if.end49
  %and56 = and i32 %1, 1
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end49, %cont55
  %call58 = tail call i8* @dupstring(i8* %r.0) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cont55, %if.end49, %cond.true
  %cond = phi i8* [ %call58, %cond.true ], [ %r.0, %if.end49 ], [ %r.0, %cont55 ]
  ret i8* %cond
}

declare i8* @dupstring(i8*)

define i8* @ecrawstr(%struct.eprog* nocapture %p, i32* nocapture %pc, i32* %tok) nounwind {
entry:
  %0 = load i32* %pc, align 4, !tbaa !3
  %.off = add i32 %0, -6
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %cont10

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32* %tok, null
  br i1 %tobool, label %return, label %cont8

cont8:                                            ; preds = %if.then
  %and = and i32 %0, 1
  store i32 %and, i32* %tok, align 4, !tbaa !3
  br label %return

cont10:                                           ; preds = %entry
  %and11 = and i32 %0, 2
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.else53, label %cont17

cont17:                                           ; preds = %cont10
  %shr = lshr i32 %0, 3
  %and18 = and i32 %shr, 255
  %1 = icmp ult i32 %and18, 128
  br i1 %1, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont17
  %2 = zext i32 %and18 to i64
  tail call void @__ioc_report_conversion(i32 2651, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %2, i8 0) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %cont17
  %conv = trunc i32 %shr to i8
  store i8 %conv, i8* getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 0), align 1, !tbaa !1
  %shr24 = lshr i32 %0, 11
  %and27 = and i32 %shr24, 255
  %3 = icmp ult i32 %and27, 128
  br i1 %3, label %cont30, label %ioc_bb29

ioc_bb29:                                         ; preds = %cont21
  %4 = zext i32 %and27 to i64
  tail call void @__ioc_report_conversion(i32 2652, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %4, i8 0) nounwind
  br label %cont30

cont30:                                           ; preds = %ioc_bb29, %cont21
  %conv31 = trunc i32 %shr24 to i8
  store i8 %conv31, i8* getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 1), align 1, !tbaa !1
  %shr34 = lshr i32 %0, 19
  %and37 = and i32 %shr34, 255
  %5 = icmp ult i32 %and37, 128
  br i1 %5, label %cont40, label %ioc_bb39

ioc_bb39:                                         ; preds = %cont30
  %6 = zext i32 %and37 to i64
  tail call void @__ioc_report_conversion(i32 2653, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %6, i8 0) nounwind
  br label %cont40

cont40:                                           ; preds = %ioc_bb39, %cont30
  %conv41 = trunc i32 %shr34 to i8
  store i8 %conv41, i8* getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 2), align 1, !tbaa !1
  store i8 0, i8* getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 3), align 1, !tbaa !1
  %tobool44 = icmp eq i32* %tok, null
  br i1 %tobool44, label %return, label %cont51

cont51:                                           ; preds = %cont40
  %and48 = and i32 %0, 1
  store i32 %and48, i32* %tok, align 4, !tbaa !3
  br label %return

if.else53:                                        ; preds = %cont10
  %tobool54 = icmp eq i32* %tok, null
  br i1 %tobool54, label %cont64, label %cont61

cont61:                                           ; preds = %if.else53
  %and58 = and i32 %0, 1
  store i32 %and58, i32* %tok, align 4, !tbaa !3
  br label %cont64

cont64:                                           ; preds = %cont61, %if.else53
  %strs = getelementptr inbounds %struct.eprog* %p, i32 0, i32 6
  %7 = load i8** %strs, align 4, !tbaa !0
  %shr65 = lshr i32 %0, 2
  %add.ptr = getelementptr inbounds i8* %7, i32 %shr65
  br label %return

return:                                           ; preds = %cont51, %cont40, %cont8, %if.then, %cont64
  %retval.0 = phi i8* [ %add.ptr, %cont64 ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %if.then ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %cont8 ], [ getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 0), %cont40 ], [ getelementptr inbounds ([4 x i8]* @ecrawstr.buf, i32 0, i32 0), %cont51 ]
  ret i8* %retval.0
}

define i8** @ecgetarr(%struct.estate* nocapture %s, i32 %num, i32 %dup, i32* %tok) nounwind {
entry:
  %tmp = alloca i32, align 4
  store i32 0, i32* %tmp, align 4, !tbaa !3
  %0 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %3 = sext i32 %num to i64
  call void @__ioc_report_add_overflow(i32 2673, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %cont
  %5 = sext i32 %1 to i64
  call void @__ioc_report_conversion(i32 2673, i32 33, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %cont
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %9 = zext i32 %1 to i64
  call void @__ioc_report_mul_overflow(i32 2673, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %9, i64 4, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call = call i8* @zhalloc(i32 %7) nounwind
  %10 = bitcast i8* %call to i8**
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cont4
  %num.addr.0 = phi i32 [ %num, %cont4 ], [ %12, %while.body ]
  %rp.0 = phi i8** [ %10, %cont4 ], [ %incdec.ptr, %while.body ]
  %tf.0 = phi i32 [ 0, %cont4 ], [ %or, %while.body ]
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.addr.0, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %while.cond
  %14 = sext i32 %num.addr.0 to i64
  call void @__ioc_report_add_overflow(i32 2674, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %14, i64 -1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %while.cond, %ioc_bb5
  %tobool = icmp eq i32 %num.addr.0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %cont6
  %call7 = call i8* @ecgetstr(%struct.estate* %s, i32 %dup, i32* %tmp)
  %incdec.ptr = getelementptr inbounds i8** %rp.0, i32 1
  store i8* %call7, i8** %rp.0, align 4, !tbaa !0
  %15 = load i32* %tmp, align 4, !tbaa !3
  %or = or i32 %15, %tf.0
  br label %while.cond

while.end:                                        ; preds = %cont6
  store i8* null, i8** %rp.0, align 4, !tbaa !0
  %tobool8 = icmp eq i32* %tok, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store i32 %tf.0, i32* %tok, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret i8** %10
}

define %union.linkroot* @ecgetlist(%struct.estate* nocapture %s, i32 %num, i32 %dup, i32* %tok) nounwind {
entry:
  %tmp = alloca i32, align 4
  %tobool = icmp eq i32 %num, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !tbaa !3
  %call = call %union.linkroot* @newsizedlist(i32 %num) nounwind
  %cmp17 = icmp sgt i32 %num, 0
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %first = getelementptr inbounds %union.linkroot* %call, i32 0, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %tf.019 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.cond.backedge ]
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %3, %for.cond.backedge ]
  %call1 = call i8* @ecgetstr(%struct.estate* %s, i32 %dup, i32* %tmp)
  %0 = load %struct.linknode** %first, align 4, !tbaa !0
  %dat = getelementptr inbounds %struct.linknode* %0, i32 %i.018, i32 2
  store i8* %call1, i8** %dat, align 4, !tbaa !0
  %1 = load i32* %tmp, align 4, !tbaa !3
  %or = or i32 %1, %tf.019
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.018, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb
  %cmp = icmp slt i32 %3, %num
  br i1 %cmp, label %for.body, label %for.end

ioc_bb:                                           ; preds = %for.body
  %5 = sext i32 %i.018 to i64
  call void @__ioc_report_add_overflow(i32 2693, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %if.then
  %tf.0.lcssa = phi i32 [ 0, %if.then ], [ %or, %for.cond.backedge ]
  %tobool2 = icmp eq i32* %tok, null
  br i1 %tobool2, label %return, label %if.then3

if.then3:                                         ; preds = %for.end
  store i32 %tf.0.lcssa, i32* %tok, align 4, !tbaa !3
  br label %return

if.end4:                                          ; preds = %entry
  %tobool5 = icmp eq i32* %tok, null
  br i1 %tobool5, label %return, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* %tok, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then6, %if.end4, %if.then3, %for.end
  %retval.0 = phi %union.linkroot* [ %call, %for.end ], [ %call, %if.then3 ], [ null, %if.end4 ], [ null, %if.then6 ]
  ret %union.linkroot* %retval.0
}

declare %union.linkroot* @newsizedlist(i32)

define %union.linkroot* @ecgetredirs(%struct.estate* nocapture %s) nounwind {
entry:
  %call = tail call %union.linkroot* @newlinklist() nounwind
  %pc = getelementptr inbounds %struct.estate* %s, i32 0, i32 1
  %.pn79 = load i32** %pc, align 4
  %storemerge80 = getelementptr inbounds i32* %.pn79, i32 1
  store i32* %storemerge80, i32** %pc, align 4
  %code.081 = load i32* %.pn79, align 4
  %and82 = and i32 %code.081, 31
  %cmp83 = icmp eq i32 %and82, 4
  br i1 %cmp83, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %last = getelementptr inbounds %union.linkroot* %call, i32 0, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end51
  %code.084 = phi i32 [ %code.081, %while.body.lr.ph ], [ %code.0, %if.end51 ]
  %call9 = tail call i8* @zhalloc(i32 32) nounwind
  %shr = lshr i32 %code.084, 5
  %and14 = and i32 %shr, 31
  %type = bitcast i8* %call9 to i32*
  store i32 %and14, i32* %type, align 4, !tbaa !3
  %0 = load i32** %pc, align 4, !tbaa !0
  %incdec.ptr18 = getelementptr inbounds i32* %0, i32 1
  store i32* %incdec.ptr18, i32** %pc, align 4, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %while.body
  %3 = zext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 2714, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %while.body
  %fd1 = getelementptr inbounds i8* %call9, i32 8
  %4 = bitcast i8* %fd1 to i32*
  store i32 %1, i32* %4, align 4, !tbaa !3
  %call22 = tail call i8* @ecgetstr(%struct.estate* %s, i32 1, i32* null)
  %name = getelementptr inbounds i8* %call9, i32 16
  %5 = bitcast i8* %name to i8**
  store i8* %call22, i8** %5, align 4, !tbaa !0
  %and28 = and i32 %shr, 64
  %tobool = icmp eq i32 %and28, 0
  %flags = getelementptr inbounds i8* %call9, i32 4
  %6 = bitcast i8* %flags to i32*
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cont21
  store i32 1, i32* %6, align 4, !tbaa !3
  %call32 = tail call i8* @ecgetstr(%struct.estate* %s, i32 1, i32* null)
  %here_terminator = getelementptr inbounds i8* %call9, i32 24
  %7 = bitcast i8* %here_terminator to i8**
  store i8* %call32, i8** %7, align 4, !tbaa !0
  %call33 = tail call i8* @ecgetstr(%struct.estate* %s, i32 1, i32* null)
  %munged_here_terminator = getelementptr inbounds i8* %call9, i32 28
  %8 = bitcast i8* %munged_here_terminator to i8**
  store i8* %call33, i8** %8, align 4, !tbaa !0
  br label %cont45

if.else:                                          ; preds = %cont21
  store i32 0, i32* %6, align 4, !tbaa !3
  %here_terminator35 = getelementptr inbounds i8* %call9, i32 24
  %9 = bitcast i8* %here_terminator35 to i8**
  store i8* null, i8** %9, align 4, !tbaa !0
  %munged_here_terminator36 = getelementptr inbounds i8* %call9, i32 28
  %10 = bitcast i8* %munged_here_terminator36 to i8**
  store i8* null, i8** %10, align 4, !tbaa !0
  br label %cont45

cont45:                                           ; preds = %if.then, %if.else
  %and42 = and i32 %shr, 32
  %tobool46 = icmp eq i32 %and42, 0
  br i1 %tobool46, label %if.else49, label %if.then47

if.then47:                                        ; preds = %cont45
  %call48 = tail call i8* @ecgetstr(%struct.estate* %s, i32 1, i32* null)
  %varid = getelementptr inbounds i8* %call9, i32 20
  %11 = bitcast i8* %varid to i8**
  store i8* %call48, i8** %11, align 4, !tbaa !0
  br label %if.end51

if.else49:                                        ; preds = %cont45
  %varid50 = getelementptr inbounds i8* %call9, i32 20
  %12 = bitcast i8* %varid50 to i8**
  store i8* null, i8** %12, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  %13 = load %struct.linknode** %last, align 4, !tbaa !0
  %call52 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call, %struct.linknode* %13, i8* %call9) nounwind
  %.pn = load i32** %pc, align 4
  %storemerge = getelementptr inbounds i32* %.pn, i32 1
  store i32* %storemerge, i32** %pc, align 4
  %code.0 = load i32* %.pn, align 4
  %and = and i32 %code.0, 31
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end51, %entry
  %.pn.lcssa = phi i32* [ %.pn79, %entry ], [ %.pn, %if.end51 ]
  store i32* %.pn.lcssa, i32** %pc, align 4, !tbaa !0
  ret %union.linkroot* %call
}

declare %union.linkroot* @newlinklist()

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

define void @init_eprog() nounwind {
entry:
  store i32 0, i32* @dummy_eprog_code, align 4, !tbaa !3
  store i32 4, i32* getelementptr inbounds (%struct.eprog* @dummy_eprog, i32 0, i32 1), align 4, !tbaa !3
  store i32* @dummy_eprog_code, i32** getelementptr inbounds (%struct.eprog* @dummy_eprog, i32 0, i32 5), align 4, !tbaa !0
  store i8* null, i8** getelementptr inbounds (%struct.eprog* @dummy_eprog, i32 0, i32 6), align 4, !tbaa !0
  ret void
}

define i32 @bin_zcompile(i8* %nam, i8** nocapture %args, %struct.options* nocapture %ops, i32 %func) nounwind {
entry:
  %hlen.i = alloca i32, align 4
  %tlen.i = alloca i32, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp189 = alloca %struct.__sigset_t, align 4
  %oset255 = alloca %struct.__sigset_t, align 4
  %tmp266 = alloca %struct.__sigset_t, align 4
  %arrayidx = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 107
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 122
  %1 = load i8* %arrayidx3, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %1, 0
  br i1 %cmp5, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %arrayidx8 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 82
  %2 = load i8* %arrayidx8, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %2, 0
  br i1 %cmp10, label %lor.lhs.false18, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %arrayidx14 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 77
  %3 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %3, 0
  br i1 %cmp16, label %lor.lhs.false18, label %if.then

lor.lhs.false18:                                  ; preds = %land.lhs.true12, %lor.lhs.false
  %arrayidx20 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 99
  %4 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %4, 0
  br i1 %cmp22, label %lor.lhs.false48, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %lor.lhs.false18
  %arrayidx26 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 85
  %5 = load i8* %arrayidx26, align 1, !tbaa !1
  %cmp28.not = icmp ne i8 %5, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = or i1 %cmp28.not, %cmp.not
  br i1 %brmerge, label %if.then, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true24
  %arrayidx38 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 122
  %6 = load i8* %arrayidx38, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %6, 0
  br i1 %cmp40, label %land.lhs.true71, label %if.then

lor.lhs.false48:                                  ; preds = %lor.lhs.false18
  %arrayidx50 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 97
  %7 = load i8* %arrayidx50, align 1, !tbaa !1
  %cmp52 = icmp eq i8 %7, 0
  br i1 %cmp52, label %land.lhs.true54, label %lor.lhs.false65

land.lhs.true54:                                  ; preds = %lor.lhs.false48
  %arrayidx56 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 109
  %8 = load i8* %arrayidx56, align 1, !tbaa !1
  %cmp58 = icmp eq i8 %8, 0
  br i1 %cmp58, label %if.end74, label %if.then

if.then:                                          ; preds = %land.lhs.true24, %land.lhs.true, %land.lhs.true12, %lor.lhs.false36, %land.lhs.true54
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0)) nounwind
  br label %return

lor.lhs.false65:                                  ; preds = %lor.lhs.false48
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 90), align 1, !tbaa !1
  %tobool = icmp eq i8 %9, 0
  %or.cond = or i1 %cmp52, %tobool
  br i1 %or.cond, label %if.end74, label %if.then73

land.lhs.true71:                                  ; preds = %lor.lhs.false36
  %.old = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 90), align 1, !tbaa !1
  %tobool.old = icmp eq i8 %.old, 0
  br i1 %tobool.old, label %cond.false, label %if.then73

if.then73:                                        ; preds = %lor.lhs.false65, %land.lhs.true71
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([41 x i8]* @.str2, i32 0, i32 0)) nounwind
  %.pre = load i8* %arrayidx, align 1, !tbaa !1
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true54, %lor.lhs.false65, %if.then73
  %10 = phi i8 [ %0, %lor.lhs.false65 ], [ %.pre, %if.then73 ], [ %0, %land.lhs.true54 ]
  %cmp78 = icmp eq i8 %10, 0
  br i1 %cmp78, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true71, %if.end74
  %arrayidx81 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 122
  %11 = load i8* %arrayidx81, align 1, !tbaa !1
  %cmp83 = icmp ne i8 %11, 0
  %cond = select i1 %cmp83, i32 2, i32 0
  br label %cond.end

cond.end:                                         ; preds = %if.end74, %cond.false
  %cond85 = phi i32 [ %cond, %cond.false ], [ 1, %if.end74 ]
  %arrayidx87 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 116
  %12 = load i8* %arrayidx87, align 1, !tbaa !1
  %cmp89 = icmp eq i8 %12, 0
  %13 = load i8** %args, align 4, !tbaa !0
  %tobool92 = icmp ne i8* %13, null
  br i1 %cmp89, label %if.end132, label %if.then91

if.then91:                                        ; preds = %cond.end
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then91
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0)) nounwind
  br label %return

if.end94:                                         ; preds = %if.then91
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %13) nounwind
  %tobool95 = icmp eq i32 %call, 0
  %14 = load i8** %args, align 4, !tbaa !0
  br i1 %tobool95, label %cond.false97, label %cond.end99

cond.false97:                                     ; preds = %if.end94
  %call98 = call i8* @dyncat(i8* %14, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %cond.end99

cond.end99:                                       ; preds = %if.end94, %cond.false97
  %cond100 = phi i8* [ %call98, %cond.false97 ], [ %14, %if.end94 ]
  %call101 = call fastcc i32* @load_dump_header(i8* %nam, i8* %cond100, i32 1)
  %tobool102 = icmp eq i32* %call101, null
  br i1 %tobool102, label %return, label %if.end104

if.end104:                                        ; preds = %cond.end99
  %arrayidx105 = getelementptr inbounds i8** %args, i32 1
  %15 = load i8** %arrayidx105, align 4, !tbaa !0
  %tobool106 = icmp eq i8* %15, null
  %arrayidx114 = getelementptr inbounds i32* %call101, i32 12
  br i1 %tobool106, label %if.else, label %for.cond

for.cond:                                         ; preds = %if.end104, %dump_find_func.exit.for.cond_crit_edge
  %16 = phi i8* [ %.pre372, %dump_find_func.exit.for.cond_crit_edge ], [ %15, %if.end104 ]
  %args.addr.0 = phi i8** [ %incdec.ptr113, %dump_find_func.exit.for.cond_crit_edge ], [ %arrayidx105, %if.end104 ]
  %tobool108 = icmp eq i8* %16, null
  br i1 %tobool108, label %return, label %for.body

for.body:                                         ; preds = %for.cond
  %17 = load i32* %arrayidx114, align 4, !tbaa !3
  %add.ptr.i = getelementptr inbounds i32* %call101, i32 %17
  %cmp11.i = icmp sgt i32 %17, 12
  br i1 %cmp11.i, label %cont.i, label %return

cont.i:                                           ; preds = %for.body, %for.inc.i
  %n.0.in12.i = phi i32* [ %add.ptr4.i, %for.inc.i ], [ %arrayidx114, %for.body ]
  %18 = getelementptr inbounds i32* %n.0.in12.i, i32 5
  %19 = load i32* %18, align 4, !tbaa !3
  %add.ptr2.i = getelementptr inbounds i32* %n.0.in12.i, i32 6
  %20 = bitcast i32* %add.ptr2.i to i8*
  %shr.i = lshr i32 %19, 2
  %add.ptr3.i = getelementptr inbounds i8* %20, i32 %shr.i
  %call.i = call i32 @strcmp(i8* %16, i8* %add.ptr3.i) nounwind
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %dump_find_func.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cont.i
  %21 = getelementptr inbounds i32* %n.0.in12.i, i32 4
  %22 = load i32* %21, align 4, !tbaa !3
  %add.ptr4.i = getelementptr inbounds i32* %n.0.in12.i, i32 %22
  %cmp.i = icmp ult i32* %add.ptr4.i, %add.ptr.i
  br i1 %cmp.i, label %cont.i, label %return

dump_find_func.exit:                              ; preds = %cont.i
  %tobool110 = icmp eq i32* %n.0.in12.i, null
  %incdec.ptr113 = getelementptr inbounds i8** %args.addr.0, i32 1
  br i1 %tobool110, label %return, label %dump_find_func.exit.for.cond_crit_edge

dump_find_func.exit.for.cond_crit_edge:           ; preds = %dump_find_func.exit
  %.pre372 = load i8** %incdec.ptr113, align 4, !tbaa !0
  br label %for.cond

if.else:                                          ; preds = %if.end104
  %23 = load i32* %arrayidx114, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i32* %call101, i32 %23
  %add.ptr115 = getelementptr inbounds i32* %call101, i32 1
  %24 = bitcast i32* %add.ptr115 to i8*
  %25 = load i8* %24, align 1, !tbaa !1
  %and = and i8 %25, 1
  %tobool118 = icmp ne i8 %and, 0
  %cond119 = select i1 %tobool118, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0)
  %add.ptr120 = getelementptr inbounds i32* %call101, i32 2
  %call121 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0), i8* %cond119, i32* %add.ptr120) nounwind
  %cmp124355 = icmp sgt i32 %23, 12
  br i1 %cmp124355, label %for.body126, label %return

for.body126:                                      ; preds = %if.else, %for.body126
  %h.0.in356 = phi i32* [ %add.ptr130, %for.body126 ], [ %arrayidx114, %if.else ]
  %add.ptr127 = getelementptr inbounds i32* %h.0.in356, i32 6
  %cstr = bitcast i32* %add.ptr127 to i8*
  %puts = call i32 @puts(i8* %cstr)
  %26 = getelementptr inbounds i32* %h.0.in356, i32 4
  %27 = load i32* %26, align 4, !tbaa !3
  %add.ptr130 = getelementptr inbounds i32* %h.0.in356, i32 %27
  %cmp124 = icmp ult i32* %add.ptr130, %add.ptr
  br i1 %cmp124, label %for.body126, label %return

if.end132:                                        ; preds = %cond.end
  br i1 %tobool92, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end132
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0)) nounwind
  br label %return

if.end135:                                        ; preds = %if.end132
  %arrayidx137 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 77
  %28 = load i8* %arrayidx137, align 1, !tbaa !1
  %cmp139 = icmp eq i8 %28, 0
  br i1 %cmp139, label %cond.false142, label %cond.end149

cond.false142:                                    ; preds = %if.end135
  %29 = load i8* %arrayidx8, align 1, !tbaa !1
  %not.cmp146 = icmp eq i8 %29, 0
  %cond148 = zext i1 %not.cmp146 to i32
  br label %cond.end149

cond.end149:                                      ; preds = %if.end135, %cond.false142
  %cond150 = phi i32 [ %cond148, %cond.false142 ], [ 2, %if.end135 ]
  %arrayidx151 = getelementptr inbounds i8** %args, i32 1
  %30 = load i8** %arrayidx151, align 4, !tbaa !0
  %tobool152 = icmp eq i8* %30, null
  br i1 %tobool152, label %land.lhs.true153, label %if.end192

land.lhs.true153:                                 ; preds = %cond.end149
  %31 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp157 = icmp eq i8 %31, 0
  br i1 %cmp157, label %lor.lhs.false159, label %if.end192

lor.lhs.false159:                                 ; preds = %land.lhs.true153
  %arrayidx161 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 97
  %32 = load i8* %arrayidx161, align 1, !tbaa !1
  %cmp163 = icmp eq i8 %32, 0
  br i1 %cmp163, label %if.then165, label %if.end192

if.then165:                                       ; preds = %lor.lhs.false159
  %33 = load i32* @queueing_enabled, align 4, !tbaa !3
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %33, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb166, label %cont167

ioc_bb166:                                        ; preds = %if.then165
  %37 = sext i32 %33 to i64
  call void @__ioc_report_add_overflow(i32 2888, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  %.pre370 = load i8** %args, align 4, !tbaa !0
  br label %cont167

cont167:                                          ; preds = %if.then165, %ioc_bb166
  %38 = phi i8* [ %13, %if.then165 ], [ %.pre370, %ioc_bb166 ]
  store i32 %35, i32* @queueing_enabled, align 4, !tbaa !3
  %call168 = call i8* @dyncat(i8* %38, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  %arrayidx170 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 85
  %39 = load i8* %arrayidx170, align 1, !tbaa !1
  %cmp172 = icmp ne i8 %39, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call fastcc i32 @build_dump(i8* %nam, i8* %call168, i8** %args, i32 %conv173, i32 %cond150, i32 %cond85)
  %40 = load i32* @queueing_enabled, align 4, !tbaa !3
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 -1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb175, label %cont176

ioc_bb175:                                        ; preds = %cont167
  %44 = sext i32 %40 to i64
  call void @__ioc_report_add_overflow(i32 2892, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %44, i64 -1, i8 13) nounwind
  br label %cont176

cont176:                                          ; preds = %cont167, %ioc_bb175
  store i32 %42, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool177 = icmp eq i32 %42, 0
  br i1 %tobool177, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %cont176
  %45 = load i32* @queue_front, align 4, !tbaa !3
  %46 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp180339 = icmp eq i32 %45, %46
  br i1 %cmp180339, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont186
  %47 = phi i32 [ %54, %cont186 ], [ %45, %while.cond.preheader ]
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 1)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb182, label %cont186

ioc_bb182:                                        ; preds = %while.body
  %51 = sext i32 %47 to i64
  call void @__ioc_report_add_overflow(i32 2896, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %51, i64 1, i8 13) nounwind
  br label %cont186

cont186:                                          ; preds = %ioc_bb182, %while.body
  %rem = srem i32 %49, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx187 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx187) nounwind
  %52 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx188 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %52
  %53 = load i32* %arrayidx188, align 4, !tbaa !3
  call void @zhandler(i32 %53) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp189, %struct.__sigset_t* byval align 4 %oset) nounwind
  %54 = load i32* @queue_front, align 4, !tbaa !3
  %55 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp180 = icmp eq i32 %54, %55
  br i1 %cmp180, label %return, label %while.body

if.end192:                                        ; preds = %lor.lhs.false159, %land.lhs.true153, %cond.end149
  %call193 = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %13) nounwind
  %tobool194 = icmp eq i32 %call193, 0
  %56 = load i8** %args, align 4, !tbaa !0
  br i1 %tobool194, label %cond.false196, label %cond.end198

cond.false196:                                    ; preds = %if.end192
  %call197 = call i8* @dyncat(i8* %56, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %cond.end198

cond.end198:                                      ; preds = %if.end192, %cond.false196
  %cond199 = phi i8* [ %call197, %cond.false196 ], [ %56, %if.end192 ]
  %57 = load i32* @queueing_enabled, align 4, !tbaa !3
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb200, label %cont201

ioc_bb200:                                        ; preds = %cond.end198
  %61 = sext i32 %57 to i64
  call void @__ioc_report_add_overflow(i32 2906, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %61, i64 1, i8 13) nounwind
  br label %cont201

cont201:                                          ; preds = %cond.end198, %ioc_bb200
  store i32 %59, i32* @queueing_enabled, align 4, !tbaa !3
  %62 = load i8* %arrayidx20, align 1, !tbaa !1
  %arrayidx209 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 97
  %63 = load i8* %arrayidx209, align 1, !tbaa !1
  %64 = or i8 %62, %63
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %cond.false234, label %cond.true213

cond.true213:                                     ; preds = %cont201
  %arrayidx216 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 109
  %66 = load i8* %arrayidx216, align 1, !tbaa !1
  %cmp218 = icmp eq i8 %66, 0
  %cmp223 = icmp ne i8 %62, 0
  %cond225 = zext i1 %cmp223 to i32
  %cmp229 = icmp ne i8 %63, 0
  %cond231 = select i1 %cmp229, i32 2, i32 0
  %or232 = or i32 %cond231, %cond225
  %67 = bitcast i32* %hlen.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %67) nounwind
  %68 = bitcast i32* %tlen.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %68) nounwind
  %call.i330 = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %cond199) nounwind
  %tobool.i331 = icmp eq i32 %call.i330, 0
  br i1 %tobool.i331, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.true213
  %call1.i = call i8* @dyncat(i8* %cond199, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.true213
  %dump.addr.0.i = phi i8* [ %cond199, %cond.true213 ], [ %call1.i, %if.then.i ]
  %call2.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  %call3.i = call i32 (i8*, i32, ...)* @open64(i8* %dump.addr.0.i, i32 65, i32 292) nounwind
  %cmp.i332 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i332, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([25 x i8]* @.str9, i32 0, i32 0), i8* %dump.addr.0.i) nounwind
  br label %cond.end242

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call %union.linkroot* @newlinklist() nounwind
  %call7.i = call %union.linkroot* @newlinklist() nounwind
  store i32 12, i32* %hlen.i, align 4, !tbaa !3
  store i32 0, i32* %tlen.i, align 4, !tbaa !3
  %69 = load i8** %arrayidx151, align 4, !tbaa !0
  %tobool8.i = icmp eq i8* %69, null
  br i1 %tobool8.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %70 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %hsize153.i = getelementptr inbounds %struct.hashtable* %70, i32 0, i32 0
  %71 = load i32* %hsize153.i, align 4, !tbaa !3
  %cmp10154.i = icmp sgt i32 %71, 0
  br i1 %cmp10154.i, label %for.body.i, label %if.end88.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.cond.backedge.i
  %72 = phi %struct.hashtable* [ %78, %for.cond.backedge.i ], [ %70, %for.cond.preheader.i ]
  %i.0155.i = phi i32 [ %76, %for.cond.backedge.i ], [ 0, %for.cond.preheader.i ]
  %nodes.i = getelementptr inbounds %struct.hashtable* %72, i32 0, i32 2
  %73 = load %struct.hashnode*** %nodes.i, align 4, !tbaa !0
  %arrayidx.i333 = getelementptr inbounds %struct.hashnode** %73, i32 %i.0155.i
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.body13.i, %for.body.i
  %hn.0.in.i = phi %struct.hashnode** [ %arrayidx.i333, %for.body.i ], [ %next.i, %for.body13.i ]
  %hn.0.i = load %struct.hashnode** %hn.0.in.i, align 4
  %tobool12.i = icmp eq %struct.hashnode* %hn.0.i, null
  br i1 %tobool12.i, label %for.inc20.i, label %for.body13.i

for.body13.i:                                     ; preds = %for.cond11.i
  %74 = bitcast %struct.hashnode* %hn.0.i to %struct.shfunc*
  %call14.i = call fastcc i32 @cur_add_func(i8* %nam, %struct.shfunc* %74, %union.linkroot* %call7.i, %union.linkroot* %call6.i, i32* %hlen.i, i32* %tlen.i, i32 %or232) nounwind
  %tobool15.i = icmp eq i32 %call14.i, 0
  %next.i = getelementptr inbounds %struct.hashnode* %hn.0.i, i32 0, i32 0
  br i1 %tobool15.i, label %for.cond11.i, label %if.then16.i

if.then16.i:                                      ; preds = %for.body13.i
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call17.i = call i32 @close(i32 %call3.i) nounwind
  %call18.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

for.inc20.i:                                      ; preds = %for.cond11.i
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0155.i, i32 1) nounwind
  %76 = extractvalue { i32, i1 } %75, 0
  %77 = extractvalue { i32, i1 } %75, 1
  br i1 %77, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %for.inc20.i, %ioc_bb.i
  %78 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %hsize.i = getelementptr inbounds %struct.hashtable* %78, i32 0, i32 0
  %79 = load i32* %hsize.i, align 4, !tbaa !3
  %cmp10.i = icmp slt i32 %76, %79
  br i1 %cmp10.i, label %for.body.i, label %if.end88.i

ioc_bb.i:                                         ; preds = %for.inc20.i
  %80 = sext i32 %i.0155.i to i64
  call void @__ioc_report_add_overflow(i32 3190, i32 42, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %80, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

if.else.i:                                        ; preds = %if.end5.i
  br i1 %cmp218, label %for.body70.i, label %for.body28.i

for.body28.i:                                     ; preds = %if.else.i, %for.inc65.i
  %81 = phi i8* [ %96, %for.inc65.i ], [ %69, %if.else.i ]
  %names.addr.0169.i = phi i8** [ %incdec.ptr.i, %for.inc65.i ], [ %arrayidx151, %if.else.i ]
  %call29.i = call i8* @dupstring(i8* %81) nounwind
  call void @tokenize(i8* %call29.i) nounwind
  %call30.i = call %struct.patprog* @patcompile(i8* %call29.i, i32 64, i8** null) nounwind
  %tobool31.i = icmp eq %struct.patprog* %call30.i, null
  br i1 %tobool31.i, label %if.then32.i, label %for.cond36.preheader.i

for.cond36.preheader.i:                           ; preds = %for.body28.i
  %82 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %hsize37162.i = getelementptr inbounds %struct.hashtable* %82, i32 0, i32 0
  %83 = load i32* %hsize37162.i, align 4, !tbaa !3
  %cmp38163.i = icmp sgt i32 %83, 0
  br i1 %cmp38163.i, label %for.body39.i, label %for.inc65.i

if.then32.i:                                      ; preds = %for.body28.i
  %84 = load i8** %names.addr.0169.i, align 4, !tbaa !0
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i8* %84) nounwind
  %call33.i = call i32 @close(i32 %call3.i) nounwind
  %call34.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

for.body39.i:                                     ; preds = %for.cond36.preheader.i, %for.cond36.backedge.i
  %85 = phi %struct.hashtable* [ %93, %for.cond36.backedge.i ], [ %82, %for.cond36.preheader.i ]
  %i24.0164.i = phi i32 [ %91, %for.cond36.backedge.i ], [ 0, %for.cond36.preheader.i ]
  %nodes40.i = getelementptr inbounds %struct.hashtable* %85, i32 0, i32 2
  %86 = load %struct.hashnode*** %nodes40.i, align 4, !tbaa !0
  %arrayidx41.i = getelementptr inbounds %struct.hashnode** %86, i32 %i24.0164.i
  %hn25.0159.i = load %struct.hashnode** %arrayidx41.i, align 4
  %tobool43160.i = icmp eq %struct.hashnode* %hn25.0159.i, null
  br i1 %tobool43160.i, label %for.inc61.i, label %for.body44.i

for.body44.i:                                     ; preds = %for.body39.i, %for.inc58.i
  %hn25.0161.i = phi %struct.hashnode* [ %hn25.0.i, %for.inc58.i ], [ %hn25.0159.i, %for.body39.i ]
  %nam45.i = getelementptr inbounds %struct.hashnode* %hn25.0161.i, i32 0, i32 1
  %87 = load i8** %nam45.i, align 4, !tbaa !0
  %call46.i = call %struct.linknode* @linknodebydatum(%union.linkroot* %call7.i, i8* %87) nounwind
  %tobool47.i = icmp eq %struct.linknode* %call46.i, null
  br i1 %tobool47.i, label %land.lhs.true.i, label %for.inc58.i

land.lhs.true.i:                                  ; preds = %for.body44.i
  %88 = load i8** %nam45.i, align 4, !tbaa !0
  %call49.i = call i32 @pattry(%struct.patprog* %call30.i, i8* %88) nounwind
  %tobool50.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.i, label %for.inc58.i, label %land.lhs.true51.i

land.lhs.true51.i:                                ; preds = %land.lhs.true.i
  %89 = bitcast %struct.hashnode* %hn25.0161.i to %struct.shfunc*
  %call52.i = call fastcc i32 @cur_add_func(i8* %nam, %struct.shfunc* %89, %union.linkroot* %call7.i, %union.linkroot* %call6.i, i32* %hlen.i, i32* %tlen.i, i32 %or232) nounwind
  %tobool53.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.i, label %for.inc58.i, label %if.then54.i

if.then54.i:                                      ; preds = %land.lhs.true51.i
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call55.i = call i32 @close(i32 %call3.i) nounwind
  %call56.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

for.inc58.i:                                      ; preds = %land.lhs.true51.i, %land.lhs.true.i, %for.body44.i
  %next59.i = getelementptr inbounds %struct.hashnode* %hn25.0161.i, i32 0, i32 0
  %hn25.0.i = load %struct.hashnode** %next59.i, align 4
  %tobool43.i = icmp eq %struct.hashnode* %hn25.0.i, null
  br i1 %tobool43.i, label %for.inc61.i, label %for.body44.i

for.inc61.i:                                      ; preds = %for.inc58.i, %for.body39.i
  %90 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i24.0164.i, i32 1) nounwind
  %91 = extractvalue { i32, i1 } %90, 0
  %92 = extractvalue { i32, i1 } %90, 1
  br i1 %92, label %ioc_bb62.i, label %for.cond36.backedge.i

for.cond36.backedge.i:                            ; preds = %for.inc61.i, %ioc_bb62.i
  %93 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %hsize37.i = getelementptr inbounds %struct.hashtable* %93, i32 0, i32 0
  %94 = load i32* %hsize37.i, align 4, !tbaa !3
  %cmp38.i = icmp slt i32 %91, %94
  br i1 %cmp38.i, label %for.body39.i, label %for.inc65.i

ioc_bb62.i:                                       ; preds = %for.inc61.i
  %95 = sext i32 %i24.0164.i to i64
  call void @__ioc_report_add_overflow(i32 3212, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %95, i64 1, i8 13) nounwind
  br label %for.cond36.backedge.i

for.inc65.i:                                      ; preds = %for.cond36.backedge.i, %for.cond36.preheader.i
  %incdec.ptr.i = getelementptr inbounds i8** %names.addr.0169.i, i32 1
  %96 = load i8** %incdec.ptr.i, align 4, !tbaa !0
  %tobool27.i = icmp eq i8* %96, null
  br i1 %tobool27.i, label %if.end88.i, label %for.body28.i

for.body70.i:                                     ; preds = %if.else.i, %if.end77.for.cond68_crit_edge.i
  %names.addr.1.i350 = phi i8** [ %incdec.ptr85.i, %if.end77.for.cond68_crit_edge.i ], [ %arrayidx151, %if.else.i ]
  %97 = phi i8* [ %.pre.i, %if.end77.for.cond68_crit_edge.i ], [ %69, %if.else.i ]
  %98 = load i32* @errflag, align 4, !tbaa !3
  %tobool71.i = icmp eq i32 %98, 0
  br i1 %tobool71.i, label %lor.lhs.false.i, label %if.then74.i

lor.lhs.false.i:                                  ; preds = %for.body70.i
  %99 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %getnode.i = getelementptr inbounds %struct.hashtable* %99, i32 0, i32 9
  %100 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode.i, align 4, !tbaa !0
  %call72.i = call %struct.hashnode* %100(%struct.hashtable* %99, i8* %97) nounwind
  %tobool73.i = icmp eq %struct.hashnode* %call72.i, null
  br i1 %tobool73.i, label %lor.lhs.false.if.then74_crit_edge.i, label %if.end77.i

lor.lhs.false.if.then74_crit_edge.i:              ; preds = %lor.lhs.false.i
  %.pre174.i = load i8** %names.addr.1.i350, align 4, !tbaa !0
  br label %if.then74.i

if.then74.i:                                      ; preds = %for.body70.i, %lor.lhs.false.if.then74_crit_edge.i
  %101 = phi i8* [ %.pre174.i, %lor.lhs.false.if.then74_crit_edge.i ], [ %97, %for.body70.i ]
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([21 x i8]* @.str11, i32 0, i32 0), i8* %101) nounwind
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call75.i = call i32 @close(i32 %call3.i) nounwind
  %call76.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

if.end77.i:                                       ; preds = %lor.lhs.false.i
  %102 = bitcast %struct.hashnode* %call72.i to %struct.shfunc*
  %call78.i = call fastcc i32 @cur_add_func(i8* %nam, %struct.shfunc* %102, %union.linkroot* %call7.i, %union.linkroot* %call6.i, i32* %hlen.i, i32* %tlen.i, i32 %or232) nounwind
  %tobool79.i = icmp eq i32 %call78.i, 0
  %incdec.ptr85.i = getelementptr inbounds i8** %names.addr.1.i350, i32 1
  br i1 %tobool79.i, label %if.end77.for.cond68_crit_edge.i, label %if.then80.i

if.end77.for.cond68_crit_edge.i:                  ; preds = %if.end77.i
  %.pre.i = load i8** %incdec.ptr85.i, align 4, !tbaa !0
  %tobool69.i = icmp eq i8* %.pre.i, null
  br i1 %tobool69.i, label %if.end88.i, label %for.body70.i

if.then80.i:                                      ; preds = %if.end77.i
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call81.i = call i32 @close(i32 %call3.i) nounwind
  %call82.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

if.end88.i:                                       ; preds = %for.inc65.i, %if.end77.for.cond68_crit_edge.i, %for.cond.backedge.i, %for.cond.preheader.i
  %first.i = getelementptr inbounds %union.linkroot* %call6.i, i32 0, i32 0, i32 0
  %103 = load %struct.linknode** %first.i, align 4, !tbaa !0
  %cmp89.i = icmp eq %struct.linknode* %103, null
  br i1 %cmp89.i, label %if.then90.i, label %if.end93.i

if.then90.i:                                      ; preds = %if.end88.i
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0)) nounwind
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call91.i = call i32 @close(i32 %call3.i) nounwind
  %call92.i = call i32 @unlink(i8* %dump.addr.0.i) nounwind
  br label %cond.end242

if.end93.i:                                       ; preds = %if.end88.i
  %104 = load i32* %tlen.i, align 4, !tbaa !3
  %105 = load i32* %hlen.i, align 4, !tbaa !3
  %106 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %104, i32 %105) nounwind
  %107 = extractvalue { i32, i1 } %106, 0
  %108 = extractvalue { i32, i1 } %106, 1
  br i1 %108, label %ioc_bb94.i, label %cont95.i

ioc_bb94.i:                                       ; preds = %if.end93.i
  %109 = sext i32 %105 to i64
  %110 = sext i32 %104 to i64
  call void @__ioc_report_add_overflow(i32 3246, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %110, i64 %109, i8 13) nounwind
  br label %cont95.i

cont95.i:                                         ; preds = %ioc_bb94.i, %if.end93.i
  %111 = icmp sgt i32 %107, -1
  br i1 %111, label %cont97.i, label %ioc_bb96.i

ioc_bb96.i:                                       ; preds = %cont95.i
  %112 = sext i32 %107 to i64
  call void @__ioc_report_conversion(i32 3246, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %112, i8 1) nounwind
  br label %cont97.i

cont97.i:                                         ; preds = %ioc_bb96.i, %cont95.i
  %113 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %107, i32 4) nounwind
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb98.i, label %cont99.i

ioc_bb98.i:                                       ; preds = %cont97.i
  %116 = zext i32 %107 to i64
  call void @__ioc_report_mul_overflow(i32 3246, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %116, i64 4, i8 5) nounwind
  br label %cont99.i

cont99.i:                                         ; preds = %ioc_bb98.i, %cont97.i
  %117 = icmp sgt i32 %114, -1
  br i1 %117, label %cont101.i, label %ioc_bb100.i

ioc_bb100.i:                                      ; preds = %cont99.i
  %118 = zext i32 %114 to i64
  call void @__ioc_report_conversion(i32 3246, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %118, i8 0) nounwind
  br label %cont101.i

cont101.i:                                        ; preds = %ioc_bb100.i, %cont99.i
  store i32 %114, i32* %tlen.i, align 4, !tbaa !3
  call fastcc void @write_dump(i32 %call3.i, %union.linkroot* %call6.i, i32 %cond150, i32 %105, i32 %114) nounwind
  %call102.i = call i32 @close(i32 %call3.i) nounwind
  br label %cond.end242

cond.false234:                                    ; preds = %cont201
  %arrayidx237 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 85
  %119 = load i8* %arrayidx237, align 1, !tbaa !1
  %cmp239 = icmp ne i8 %119, 0
  %conv240 = zext i1 %cmp239 to i32
  %call241 = call fastcc i32 @build_dump(i8* %nam, i8* %cond199, i8** %arrayidx151, i32 %conv240, i32 %cond150, i32 %cond85)
  br label %cond.end242

cond.end242:                                      ; preds = %cont101.i, %if.then90.i, %if.then80.i, %if.then74.i, %if.then54.i, %if.then32.i, %if.then16.i, %if.then4.i, %cond.false234
  %cond243 = phi i32 [ %call241, %cond.false234 ], [ 1, %if.then4.i ], [ 1, %if.then54.i ], [ 1, %if.then32.i ], [ 1, %if.then90.i ], [ 0, %cont101.i ], [ 1, %if.then74.i ], [ 1, %if.then80.i ], [ 1, %if.then16.i ]
  %120 = load i32* @queueing_enabled, align 4, !tbaa !3
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %120, i32 -1)
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb245, label %cont246

ioc_bb245:                                        ; preds = %cond.end242
  %124 = sext i32 %120 to i64
  call void @__ioc_report_add_overflow(i32 2910, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %124, i64 -1, i8 13) nounwind
  br label %cont246

cont246:                                          ; preds = %cond.end242, %ioc_bb245
  store i32 %122, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool247 = icmp eq i32 %122, 0
  br i1 %tobool247, label %while.cond250.preheader, label %return

while.cond250.preheader:                          ; preds = %cont246
  %125 = load i32* @queue_front, align 4, !tbaa !3
  %126 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp251341 = icmp eq i32 %125, %126
  br i1 %cmp251341, label %return, label %while.body253

while.body253:                                    ; preds = %while.cond250.preheader, %cont261
  %127 = phi i32 [ %134, %cont261 ], [ %125, %while.cond250.preheader ]
  %128 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %127, i32 1)
  %129 = extractvalue { i32, i1 } %128, 0
  %130 = extractvalue { i32, i1 } %128, 1
  br i1 %130, label %ioc_bb256, label %cont261

ioc_bb256:                                        ; preds = %while.body253
  %131 = sext i32 %127 to i64
  call void @__ioc_report_add_overflow(i32 2914, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %131, i64 1, i8 13) nounwind
  br label %cont261

cont261:                                          ; preds = %ioc_bb256, %while.body253
  %rem262 = srem i32 %129, 128
  store i32 %rem262, i32* @queue_front, align 4, !tbaa !3
  %arrayidx263 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem262
  call void @signal_setmask(%struct.__sigset_t* sret %oset255, %struct.__sigset_t* byval align 4 %arrayidx263) nounwind
  %132 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx265 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %132
  %133 = load i32* %arrayidx265, align 4, !tbaa !3
  call void @zhandler(i32 %133) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp266, %struct.__sigset_t* byval align 4 %oset255) nounwind
  %134 = load i32* @queue_front, align 4, !tbaa !3
  %135 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp251 = icmp eq i32 %134, %135
  br i1 %cmp251, label %return, label %while.body253

return:                                           ; preds = %for.body, %for.cond, %dump_find_func.exit, %for.inc.i, %if.else, %for.body126, %while.cond250.preheader, %cont261, %while.cond.preheader, %cont186, %cont246, %cont176, %cond.end99, %if.then134, %if.then93, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then93 ], [ 1, %if.then134 ], [ 1, %cond.end99 ], [ %call174, %cont176 ], [ %cond243, %cont246 ], [ %call174, %cont186 ], [ %call174, %while.cond.preheader ], [ %cond243, %cont261 ], [ %cond243, %while.cond250.preheader ], [ 0, %for.body126 ], [ 0, %if.else ], [ 1, %for.inc.i ], [ 1, %for.body ], [ 0, %for.cond ], [ 1, %dump_find_func.exit ]
  ret i32 %retval.0
}

declare void @zwarnnam(i8*, i8*, ...)

define internal fastcc i32* @load_dump_header(i8* %nam, i8* %name, i32 %err) nounwind {
entry:
  %buf = alloca [13 x i32], align 4
  %call = call i32 (i8*, i32, ...)* @open64(i8* %name, i32 0) nounwind
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %err, 0
  br i1 %tobool, label %return, label %if.then1

if.then1:                                         ; preds = %if.then
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str21, i32 0, i32 0), i8* %name) nounwind
  br label %return

if.end2:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 0
  %0 = bitcast [13 x i32]* %buf to i8*
  %call7 = call i32 @read(i32 %call, i8* %0, i32 52) nounwind
  %1 = icmp sgt i32 %call7, -1
  br i1 %1, label %cont17, label %cont17.thread

cont17.thread:                                    ; preds = %if.end2
  %2 = sext i32 %call7 to i64
  call void @__ioc_report_conversion(i32 2937, i32 7, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %if.then88

cont17:                                           ; preds = %if.end2
  %cmp18 = icmp eq i32 %call7, 52
  br i1 %cmp18, label %cont21, label %if.then88

cont21:                                           ; preds = %cont17
  %3 = load i32* %arraydecay, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %3, 67438087
  br i1 %cmp22, label %lor.lhs.false28, label %land.end

land.end:                                         ; preds = %cont21
  %cmp27 = icmp ne i32 %3, 117835012
  %land.ext = zext i1 %cmp27 to i32
  br i1 %cmp27, label %if.then88, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %cont21, %land.end
  %land.ext247 = phi i32 [ %land.ext, %land.end ], [ 0, %cont21 ]
  %4 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 1) to i32), i32 ptrtoint ([6 x i8]* @.str13 to i32))
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %ioc_bb29, label %cont32

ioc_bb29:                                         ; preds = %lor.lhs.false28
  call void @__ioc_report_sub_overflow(i32 2937, i32 166, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([6 x i8]* @.str13 to i32) to i64), i8 5) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb29, %lor.lhs.false28
  %add.ptr85 = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 2
  %6 = bitcast i32* %add.ptr85 to i8*
  %call86 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0)) nounwind
  %tobool87 = icmp eq i32 %call86, 0
  br i1 %tobool87, label %cont102, label %if.then88

if.then88:                                        ; preds = %cont17.thread, %cont32, %cont17, %land.end
  %v.0 = phi i32 [ 1, %cont17 ], [ %land.ext, %land.end ], [ %land.ext247, %cont32 ], [ 1, %cont17.thread ]
  %tobool89 = icmp eq i32 %err, 0
  br i1 %tobool89, label %if.end96, label %if.then90

if.then90:                                        ; preds = %if.then88
  %tobool91 = icmp eq i32 %v.0, 0
  br i1 %tobool91, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then90
  %add.ptr94 = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 2
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([40 x i8]* @.str22, i32 0, i32 0), i32* %add.ptr94, i8* %name) nounwind
  br label %if.end96

if.else:                                          ; preds = %if.then90
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0), i8* %name) nounwind
  br label %if.end96

if.end96:                                         ; preds = %if.then88, %if.then92, %if.else
  %call97 = call i32 @close(i32 %call) nounwind
  br label %return

cont102:                                          ; preds = %cont32
  %7 = load i32* %arraydecay, align 4, !tbaa !3
  %cmp103 = icmp eq i32 %7, 67438087
  br i1 %cmp103, label %if.then105, label %if.else116

if.then105:                                       ; preds = %cont102
  %arrayidx107 = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 12
  %8 = load i32* %arrayidx107, align 4, !tbaa !3
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb108, label %cont109

ioc_bb108:                                        ; preds = %if.then105
  %12 = zext i32 %8 to i64
  call void @__ioc_report_mul_overflow(i32 2952, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %12, i64 4, i8 5) nounwind
  br label %cont109

cont109:                                          ; preds = %if.then105, %ioc_bb108
  %13 = icmp sgt i32 %10, -1
  br i1 %13, label %cont114, label %ioc_bb113

ioc_bb113:                                        ; preds = %cont109
  %14 = zext i32 %10 to i64
  call void @__ioc_report_conversion(i32 2952, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %14, i8 0) nounwind
  %15 = sext i32 %10 to i64
  call void @__ioc_report_conversion(i32 2953, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont114

cont114:                                          ; preds = %cont109, %ioc_bb113
  %call115 = call i8* @zhalloc(i32 %10) nounwind
  br label %if.end184

if.else116:                                       ; preds = %cont102
  %add.ptr118 = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 1
  %16 = bitcast i32* %add.ptr118 to i8*
  %arrayidx123 = getelementptr inbounds i8* %16, i32 2
  %arrayidx119 = getelementptr inbounds i8* %16, i32 1
  %17 = bitcast i8* %arrayidx123 to i16*
  %18 = load i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i8* %arrayidx119, align 1, !tbaa !1
  %conv120 = zext i8 %20 to i32
  %conv124 = shl nuw nsw i32 %19, 8
  %shl = and i32 %conv124, 65280
  %21 = or i32 %conv120, %shl
  %22 = lshr i16 %18, 8
  %23 = zext i16 %22 to i32
  %shl135 = shl nuw nsw i32 %23, 16
  %24 = or i32 %21, %shl135
  %conv141244 = zext i32 %24 to i64
  %call142 = call i64 @lseek64(i32 %call, i64 %conv141244, i32 0) nounwind
  %cmp146 = icmp eq i64 %call142, -1
  br i1 %cmp146, label %if.then170, label %cont156

cont156:                                          ; preds = %if.else116
  %call157 = call i32 @read(i32 %call, i8* %0, i32 52) nounwind
  %25 = icmp sgt i32 %call157, -1
  br i1 %25, label %cont167, label %cont167.thread

cont167.thread:                                   ; preds = %cont156
  %26 = sext i32 %call157 to i64
  call void @__ioc_report_conversion(i32 2957, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %if.then170

cont167:                                          ; preds = %cont156
  %cmp168 = icmp eq i32 %call157, 52
  br i1 %cmp168, label %if.end172, label %if.then170

if.then170:                                       ; preds = %cont167.thread, %cont167, %if.else116
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0), i8* %name) nounwind
  %call171 = call i32 @close(i32 %call) nounwind
  br label %return

if.end172:                                        ; preds = %cont167
  %arrayidx174 = getelementptr inbounds [13 x i32]* %buf, i32 0, i32 12
  %27 = load i32* %arrayidx174, align 4, !tbaa !3
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb175, label %cont176

ioc_bb175:                                        ; preds = %if.end172
  %31 = zext i32 %27 to i64
  call void @__ioc_report_mul_overflow(i32 2962, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %31, i64 4, i8 5) nounwind
  br label %cont176

cont176:                                          ; preds = %if.end172, %ioc_bb175
  %32 = icmp sgt i32 %29, -1
  br i1 %32, label %cont182, label %ioc_bb181

ioc_bb181:                                        ; preds = %cont176
  %33 = zext i32 %29 to i64
  call void @__ioc_report_conversion(i32 2962, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %33, i8 0) nounwind
  %34 = sext i32 %29 to i64
  call void @__ioc_report_conversion(i32 2963, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont182

cont182:                                          ; preds = %cont176, %ioc_bb181
  %call183 = call i8* @zhalloc(i32 %29) nounwind
  br label %if.end184

if.end184:                                        ; preds = %cont182, %cont114
  %len.0 = phi i32 [ %10, %cont114 ], [ %29, %cont182 ]
  %head.0.in = phi i8* [ %call115, %cont114 ], [ %call183, %cont182 ]
  %head.0 = bitcast i8* %head.0.in to i32*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %head.0.in, i8* %0, i32 52, i32 4, i1 false)
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0, i32 52)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb199, label %cont202

ioc_bb199:                                        ; preds = %if.end184
  %38 = sext i32 %len.0 to i64
  call void @__ioc_report_sub_overflow(i32 2966, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %38, i64 52, i8 13) nounwind
  br label %cont202

cont202:                                          ; preds = %ioc_bb199, %if.end184
  %add.ptr203 = getelementptr inbounds i8* %head.0.in, i32 52
  %39 = icmp sgt i32 %36, -1
  br i1 %39, label %cont206, label %ioc_bb205

ioc_bb205:                                        ; preds = %cont202
  %40 = sext i32 %36 to i64
  call void @__ioc_report_conversion(i32 2967, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %40, i8 1) nounwind
  br label %cont206

cont206:                                          ; preds = %ioc_bb205, %cont202
  %call207 = call i32 @read(i32 %call, i8* %add.ptr203, i32 %36) nounwind
  %cmp208 = icmp eq i32 %call207, %36
  %call211 = call i32 @close(i32 %call) nounwind
  br i1 %cmp208, label %return, label %if.then210

if.then210:                                       ; preds = %cont206
  call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0), i8* %name) nounwind
  br label %return

return:                                           ; preds = %cont206, %if.then1, %if.then, %if.then210, %if.then170, %if.end96
  %retval.0 = phi i32* [ null, %if.end96 ], [ null, %if.then210 ], [ null, %if.then170 ], [ null, %if.then ], [ null, %if.then1 ], [ %head.0, %cont206 ]
  ret i32* %retval.0
}

declare i32 @strsfx(i8*, i8*)

declare i8* @dyncat(i8*, i8*)

declare i32 @printf(i8* nocapture, ...) nounwind

define internal fastcc i32 @build_dump(i8* %nam, i8* %dump, i8** nocapture %files, i32 %ali, i32 %map, i32 %flags) nounwind {
entry:
  %0 = load i32* @noaliases, align 4, !tbaa !3
  %call = tail call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %dump) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @dyncat(i8* %dump, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %dump.addr.0 = phi i8* [ %dump, %entry ], [ %call1, %if.then ]
  %call2 = tail call i32 @unlink(i8* %dump.addr.0) nounwind
  %call3 = tail call i32 (i8*, i32, ...)* @open64(i8* %dump.addr.0, i32 65, i32 292) nounwind
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([25 x i8]* @.str9, i32 0, i32 0), i8* %dump.addr.0) nounwind
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = tail call %union.linkroot* @newlinklist() nounwind
  store i32 %ali, i32* @noaliases, align 4, !tbaa !3
  %1 = load i8** %files, align 4, !tbaa !0
  %tobool7343 = icmp eq i8* %1, null
  br i1 %tobool7343, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str17 to i32))
  %3 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str18 to i32))
  %last = getelementptr inbounds %union.linkroot* %call6, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i8* [ %1, %for.body.lr.ph ], [ %90, %for.inc ]
  %files.addr.0351 = phi i8** [ %files, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %flags.addr.0350 = phi i32 [ %flags, %for.body.lr.ph ], [ %flags.addr.1, %for.inc ]
  %hlen.0347 = phi i32 [ 12, %for.body.lr.ph ], [ %hlen.1, %for.inc ]
  %tlen.0344 = phi i32 [ 0, %for.body.lr.ph ], [ %tlen.1, %for.inc ]
  %5 = extractvalue { i32, i1 } %2, 0
  %6 = extractvalue { i32, i1 } %2, 1
  br i1 %6, label %ioc_bb, label %cont9

ioc_bb:                                           ; preds = %for.body
  tail call void @__ioc_report_sub_overflow(i32 3072, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str17 to i32) to i64), i8 5) nounwind
  %.pre = load i8** %files.addr.0351, align 4, !tbaa !0
  br label %cont9

cont9:                                            ; preds = %ioc_bb, %for.body
  %7 = phi i8* [ %.pre, %ioc_bb ], [ %4, %for.body ]
  %cmp10 = icmp eq i32 %5, 1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont9
  %8 = load i8* %7, align 1, !tbaa !1
  %conv = zext i8 %8 to i32
  %9 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 45)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb15, label %land.lhs.true21

ioc_bb15:                                         ; preds = %cond.true
  %12 = zext i8 %8 to i64
  tail call void @__ioc_report_sub_overflow(i32 3072, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %12, i64 45, i8 13) nounwind
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %cond.true, %ioc_bb15
  %cmp22 = icmp eq i32 %10, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true21
  %arrayidx25 = getelementptr inbounds i8* %7, i32 1
  %13 = load i8* %arrayidx25, align 1, !tbaa !1
  %conv26 = zext i8 %13 to i32
  %14 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv26, i32 107)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb28, label %land.lhs.true34

ioc_bb28:                                         ; preds = %if.then24
  %17 = zext i8 %13 to i64
  tail call void @__ioc_report_sub_overflow(i32 3072, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %17, i64 107, i8 13) nounwind
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.then24, %ioc_bb28
  %cmp35 = icmp eq i32 %15, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %land.lhs.true34
  %arrayidx38 = getelementptr inbounds i8* %7, i32 2
  %18 = load i8* %arrayidx38, align 1, !tbaa !1
  %conv39 = zext i8 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont9
  %call59 = tail call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then37, %cond.false
  %cond = phi i32 [ %call59, %cond.false ], [ %conv39, %if.then37 ]
  %tobool60 = icmp eq i32 %cond, 0
  br i1 %tobool60, label %if.then61, label %if.else

if.then61:                                        ; preds = %cond.end
  %and = and i32 %flags.addr.0350, -4
  %or = or i32 %and, 1
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true21, %land.lhs.true34, %cond.end
  %19 = extractvalue { i32, i1 } %3, 0
  %20 = extractvalue { i32, i1 } %3, 1
  br i1 %20, label %ioc_bb64, label %cont67

ioc_bb64:                                         ; preds = %if.else
  tail call void @__ioc_report_sub_overflow(i32 3076, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str18 to i32) to i64), i8 5) nounwind
  br label %cont67

cont67:                                           ; preds = %if.else, %ioc_bb64
  %cmp68 = icmp eq i32 %19, 1
  %21 = load i8** %files.addr.0351, align 4, !tbaa !0
  br i1 %cmp68, label %cond.true75, label %cond.false125

cond.true75:                                      ; preds = %cont67
  %22 = load i8* %21, align 1, !tbaa !1
  %conv79 = zext i8 %22 to i32
  %23 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv79, i32 45)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb81, label %land.lhs.true87

ioc_bb81:                                         ; preds = %cond.true75
  %26 = zext i8 %22 to i64
  tail call void @__ioc_report_sub_overflow(i32 3076, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %26, i64 45, i8 13) nounwind
  br label %land.lhs.true87

land.lhs.true87:                                  ; preds = %cond.true75, %ioc_bb81
  %cmp88 = icmp eq i32 %24, 0
  br i1 %cmp88, label %if.then90, label %if.end134

if.then90:                                        ; preds = %land.lhs.true87
  %arrayidx91 = getelementptr inbounds i8* %21, i32 1
  %27 = load i8* %arrayidx91, align 1, !tbaa !1
  %conv92 = zext i8 %27 to i32
  %28 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv92, i32 122)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb94, label %land.lhs.true100

ioc_bb94:                                         ; preds = %if.then90
  %31 = zext i8 %27 to i64
  tail call void @__ioc_report_sub_overflow(i32 3076, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %31, i64 122, i8 13) nounwind
  br label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.then90, %ioc_bb94
  %cmp101 = icmp eq i32 %29, 0
  br i1 %cmp101, label %if.then103, label %if.end134

if.then103:                                       ; preds = %land.lhs.true100
  %arrayidx104 = getelementptr inbounds i8* %21, i32 2
  %32 = load i8* %arrayidx104, align 1, !tbaa !1
  %conv105 = zext i8 %32 to i32
  br label %cond.end127

cond.false125:                                    ; preds = %cont67
  %call126 = tail call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0)) nounwind
  br label %cond.end127

cond.end127:                                      ; preds = %if.then103, %cond.false125
  %cond128 = phi i32 [ %call126, %cond.false125 ], [ %conv105, %if.then103 ]
  %tobool129 = icmp eq i32 %cond128, 0
  br i1 %tobool129, label %if.then130, label %if.end134

if.then130:                                       ; preds = %cond.end127
  %and131 = and i32 %flags.addr.0350, -4
  %or132 = or i32 %and131, 2
  br label %for.inc

if.end134:                                        ; preds = %cond.end127, %land.lhs.true100, %land.lhs.true87
  %33 = load i8** %files.addr.0351, align 4, !tbaa !0
  %call135 = tail call i32 (i8*, i32, ...)* @open64(i8* %33, i32 0) nounwind
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.end151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end134
  %call138 = tail call i64 @lseek64(i32 %call135, i64 0, i32 2) nounwind
  %call138.off = add i64 %call138, 2147483648
  %34 = icmp ult i64 %call138.off, 4294967296
  br i1 %34, label %cont140, label %ioc_bb139

ioc_bb139:                                        ; preds = %lor.lhs.false
  tail call void @__ioc_report_conversion(i32 3080, i32 49, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %call138, i8 1) nounwind
  br label %cont140

cont140:                                          ; preds = %ioc_bb139, %lor.lhs.false
  %conv141 = trunc i64 %call138 to i32
  %cmp144 = icmp eq i32 %conv141, -1
  br i1 %cmp144, label %if.then146, label %if.end154

if.then146:                                       ; preds = %cont140
  %cmp147 = icmp sgt i32 %call135, -1
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.then146
  %call150 = tail call i32 @close(i32 %call135) nounwind
  br label %if.end151

if.end151:                                        ; preds = %if.end134, %if.then149, %if.then146
  %call152 = tail call i32 @close(i32 %call3) nounwind
  %35 = load i8** %files.addr.0351, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([20 x i8]* @.str19, i32 0, i32 0), i8* %35) nounwind
  store i32 %0, i32* @noaliases, align 4, !tbaa !3
  %call153 = tail call i32 @unlink(i8* %dump.addr.0) nounwind
  br label %return

if.end154:                                        ; preds = %cont140
  %36 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv141, i32 1)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  %39 = sext i32 %conv141 to i64
  br i1 %38, label %ioc_bb155, label %cont156

ioc_bb155:                                        ; preds = %if.end154
  tail call void @__ioc_report_add_overflow(i32 3089, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %39, i64 1, i8 13) nounwind
  br label %cont156

cont156:                                          ; preds = %if.end154, %ioc_bb155
  %40 = icmp sgt i32 %37, -1
  br i1 %40, label %cont159, label %ioc_bb158

ioc_bb158:                                        ; preds = %cont156
  %41 = sext i32 %37 to i64
  tail call void @__ioc_report_conversion(i32 3089, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %41, i8 1) nounwind
  br label %cont159

cont159:                                          ; preds = %ioc_bb158, %cont156
  %call160 = tail call i8* @zalloc(i32 %37) nounwind
  %arrayidx163 = getelementptr inbounds i8* %call160, i32 %conv141
  store i8 0, i8* %arrayidx163, align 1, !tbaa !1
  %call164 = tail call i64 @lseek64(i32 %call135, i64 0, i32 0) nounwind
  %42 = icmp sgt i32 %conv141, -1
  br i1 %42, label %cont167, label %ioc_bb166

ioc_bb166:                                        ; preds = %cont159
  tail call void @__ioc_report_conversion(i32 3092, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont167

cont167:                                          ; preds = %ioc_bb166, %cont159
  %call168 = tail call i32 @read(i32 %call135, i8* %call160, i32 %conv141) nounwind
  %cmp169 = icmp eq i32 %call168, %conv141
  %call172 = tail call i32 @close(i32 %call135) nounwind
  br i1 %cmp169, label %if.end175, label %if.then171

if.then171:                                       ; preds = %cont167
  %call173 = tail call i32 @close(i32 %call3) nounwind
  tail call void @zfree(i8* %call160, i32 %conv141) nounwind
  %43 = load i8** %files.addr.0351, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([20 x i8]* @.str20, i32 0, i32 0), i8* %43) nounwind
  store i32 %0, i32* @noaliases, align 4, !tbaa !3
  %call174 = tail call i32 @unlink(i8* %dump.addr.0) nounwind
  br label %return

if.end175:                                        ; preds = %cont167
  %call177 = tail call i8* @metafy(i8* %call160, i32 %conv141, i32 0) nounwind
  %call178 = tail call %struct.eprog* @parse_string(i8* %call177, i32 1) nounwind
  %tobool179 = icmp eq %struct.eprog* %call178, null
  %44 = load i32* @errflag, align 4, !tbaa !3
  %tobool181 = icmp ne i32 %44, 0
  %or.cond = or i1 %tobool179, %tobool181
  br i1 %or.cond, label %if.then182, label %if.end185

if.then182:                                       ; preds = %if.end175
  store i32 0, i32* @errflag, align 4, !tbaa !3
  %call183 = tail call i32 @close(i32 %call3) nounwind
  tail call void @zfree(i8* %call177, i32 %conv141) nounwind
  %45 = load i8** %files.addr.0351, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([20 x i8]* @.str20, i32 0, i32 0), i8* %45) nounwind
  store i32 %0, i32* @noaliases, align 4, !tbaa !3
  %call184 = tail call i32 @unlink(i8* %dump.addr.0) nounwind
  br label %return

if.end185:                                        ; preds = %if.end175
  tail call void @zfree(i8* %call177, i32 %conv141) nounwind
  %call186 = tail call i8* @zhalloc(i32 12) nounwind
  %46 = load i8** %files.addr.0351, align 4, !tbaa !0
  %name = bitcast i8* %call186 to i8**
  store i8* %46, i8** %name, align 4, !tbaa !0
  %prog187 = getelementptr inbounds i8* %call186, i32 4
  %47 = bitcast i8* %prog187 to %struct.eprog**
  store %struct.eprog* %call178, %struct.eprog** %47, align 4, !tbaa !0
  %flags188 = getelementptr inbounds %struct.eprog* %call178, i32 0, i32 0
  %48 = load i32* %flags188, align 4, !tbaa !3
  %and189 = and i32 %48, 8
  %tobool190 = icmp ne i32 %and189, 0
  %cond194 = select i1 %tobool190, i32 1, i32 %flags.addr.0350
  %flags195 = getelementptr inbounds i8* %call186, i32 8
  %49 = bitcast i8* %flags195 to i32*
  store i32 %cond194, i32* %49, align 4, !tbaa !3
  %50 = load %struct.linknode** %last, align 4, !tbaa !0
  %call196 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call6, %struct.linknode* %50, i8* %call186) nounwind
  %51 = load i8** %files.addr.0351, align 4, !tbaa !0
  %call197 = tail call i32 @strlen(i8* %51) nounwind readonly
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call197, i32 4)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb198, label %cont200

ioc_bb198:                                        ; preds = %if.end185
  %55 = zext i32 %call197 to i64
  tail call void @__ioc_report_add_overflow(i32 3118, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %55, i64 4, i8 5) nounwind
  br label %cont200

cont200:                                          ; preds = %if.end185, %ioc_bb198
  %div = lshr i32 %53, 2
  %56 = add nuw i32 %div, 6
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %hlen.0347, i32 %56)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb209, label %cont210

ioc_bb209:                                        ; preds = %cont200
  %60 = sext i32 %56 to i64
  %61 = sext i32 %hlen.0347 to i64
  tail call void @__ioc_report_add_overflow(i32 3119, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %61, i64 %60, i8 13) nounwind
  br label %cont210

cont210:                                          ; preds = %cont200, %ioc_bb209
  %len = getelementptr inbounds %struct.eprog* %call178, i32 0, i32 1
  %62 = load i32* %len, align 4, !tbaa !3
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %cont213, label %ioc_bb212

ioc_bb212:                                        ; preds = %cont210
  %64 = sext i32 %62 to i64
  tail call void @__ioc_report_conversion(i32 3120, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %64, i8 1) nounwind
  br label %cont213

cont213:                                          ; preds = %ioc_bb212, %cont210
  %npats = getelementptr inbounds %struct.eprog* %call178, i32 0, i32 2
  %65 = load i32* %npats, align 4, !tbaa !3
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %cont216, label %ioc_bb215

ioc_bb215:                                        ; preds = %cont213
  %67 = sext i32 %65 to i64
  tail call void @__ioc_report_conversion(i32 3120, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %67, i8 1) nounwind
  br label %cont216

cont216:                                          ; preds = %ioc_bb215, %cont213
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 4)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb217, label %cont218

ioc_bb217:                                        ; preds = %cont216
  %71 = zext i32 %65 to i64
  tail call void @__ioc_report_mul_overflow(i32 3120, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %71, i64 4, i8 5) nounwind
  br label %cont218

cont218:                                          ; preds = %cont216, %ioc_bb217
  %72 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 %69)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb219, label %cont220

ioc_bb219:                                        ; preds = %cont218
  %75 = zext i32 %69 to i64
  %76 = zext i32 %62 to i64
  tail call void @__ioc_report_sub_overflow(i32 3120, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %76, i64 %75, i8 5) nounwind
  br label %cont220

cont220:                                          ; preds = %cont218, %ioc_bb219
  %77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %73, i32 4)
  %78 = extractvalue { i32, i1 } %77, 0
  %79 = extractvalue { i32, i1 } %77, 1
  br i1 %79, label %ioc_bb221, label %cont224

ioc_bb221:                                        ; preds = %cont220
  %80 = zext i32 %73 to i64
  tail call void @__ioc_report_add_overflow(i32 3120, i32 65, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %80, i64 4, i8 5) nounwind
  br label %cont224

cont224:                                          ; preds = %ioc_bb221, %cont220
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 1)
  %82 = extractvalue { i32, i1 } %81, 0
  %83 = extractvalue { i32, i1 } %81, 1
  br i1 %83, label %ioc_bb225, label %cont227

ioc_bb225:                                        ; preds = %cont224
  %84 = zext i32 %78 to i64
  tail call void @__ioc_report_sub_overflow(i32 3120, i32 85, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %84, i64 1, i8 5) nounwind
  br label %cont227

cont227:                                          ; preds = %cont224, %ioc_bb225
  %div228 = lshr i32 %82, 2
  %85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %tlen.0344, i32 %div228)
  %86 = extractvalue { i32, i1 } %85, 0
  %87 = extractvalue { i32, i1 } %85, 1
  br i1 %87, label %ioc_bb229, label %for.inc

ioc_bb229:                                        ; preds = %cont227
  %88 = zext i32 %div228 to i64
  %89 = sext i32 %tlen.0344 to i64
  tail call void @__ioc_report_add_overflow(i32 3120, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %89, i64 %88, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb229, %cont227, %if.then130, %if.then61
  %tlen.1 = phi i32 [ %tlen.0344, %if.then130 ], [ %tlen.0344, %if.then61 ], [ %86, %cont227 ], [ %86, %ioc_bb229 ]
  %hlen.1 = phi i32 [ %hlen.0347, %if.then130 ], [ %hlen.0347, %if.then61 ], [ %58, %cont227 ], [ %58, %ioc_bb229 ]
  %flags.addr.1 = phi i32 [ %or132, %if.then130 ], [ %or, %if.then61 ], [ %flags.addr.0350, %cont227 ], [ %flags.addr.0350, %ioc_bb229 ]
  %incdec.ptr = getelementptr inbounds i8** %files.addr.0351, i32 1
  %90 = load i8** %incdec.ptr, align 4, !tbaa !0
  %tobool7 = icmp eq i8* %90, null
  br i1 %tobool7, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end5
  %hlen.0.lcssa = phi i32 [ 12, %if.end5 ], [ %hlen.1, %for.inc ]
  %tlen.0.lcssa = phi i32 [ 0, %if.end5 ], [ %tlen.1, %for.inc ]
  store i32 %0, i32* @noaliases, align 4, !tbaa !3
  %91 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %tlen.0.lcssa, i32 %hlen.0.lcssa)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb231, label %cont232

ioc_bb231:                                        ; preds = %for.end
  %94 = sext i32 %hlen.0.lcssa to i64
  %95 = sext i32 %tlen.0.lcssa to i64
  tail call void @__ioc_report_add_overflow(i32 3123, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %95, i64 %94, i8 13) nounwind
  br label %cont232

cont232:                                          ; preds = %for.end, %ioc_bb231
  %96 = icmp sgt i32 %92, -1
  br i1 %96, label %cont235, label %ioc_bb234

ioc_bb234:                                        ; preds = %cont232
  %97 = sext i32 %92 to i64
  tail call void @__ioc_report_conversion(i32 3123, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %97, i8 1) nounwind
  br label %cont235

cont235:                                          ; preds = %ioc_bb234, %cont232
  %98 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 4)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb236, label %cont237

ioc_bb236:                                        ; preds = %cont235
  %101 = zext i32 %92 to i64
  tail call void @__ioc_report_mul_overflow(i32 3123, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %101, i64 4, i8 5) nounwind
  br label %cont237

cont237:                                          ; preds = %cont235, %ioc_bb236
  %102 = icmp sgt i32 %99, -1
  br i1 %102, label %cont240, label %ioc_bb239

ioc_bb239:                                        ; preds = %cont237
  %103 = zext i32 %99 to i64
  tail call void @__ioc_report_conversion(i32 3123, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %103, i8 0) nounwind
  br label %cont240

cont240:                                          ; preds = %ioc_bb239, %cont237
  tail call fastcc void @write_dump(i32 %call3, %union.linkroot* %call6, i32 %map, i32 %hlen.0.lcssa, i32 %99)
  %call241 = tail call i32 @close(i32 %call3) nounwind
  br label %return

return:                                           ; preds = %cont240, %if.then182, %if.then171, %if.end151, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.end151 ], [ 1, %if.then171 ], [ 1, %if.then182 ], [ 0, %cont240 ]
  ret i32 %retval.0
}

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @zhandler(i32)

define %struct.eprog* @try_dump_file(i8* %path, i8* nocapture %name, i8* %file, i32* %ksh) nounwind {
entry:
  %std = alloca %struct.stat, align 4
  %stc = alloca %struct.stat, align 4
  %stn = alloca %struct.stat, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp12 = alloca %struct.__sigset_t, align 4
  %oset49 = alloca %struct.__sigset_t, align 4
  %tmp60 = alloca %struct.__sigset_t, align 4
  %oset89 = alloca %struct.__sigset_t, align 4
  %tmp100 = alloca %struct.__sigset_t, align 4
  %oset116 = alloca %struct.__sigset_t, align 4
  %tmp127 = alloca %struct.__sigset_t, align 4
  %call = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %path) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 3356, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  %call1 = call fastcc %struct.eprog* @check_dump_file(i8* %path, %struct.stat* null, i8* %name, i32* %ksh)
  %5 = load i32* @queueing_enabled, align 4, !tbaa !3
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 -1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %cont
  %9 = sext i32 %5 to i64
  call void @__ioc_report_add_overflow(i32 3360, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %9, i64 -1, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %cont, %ioc_bb2
  store i32 %7, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %7, 0
  br i1 %tobool4, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %cont3
  %10 = load i32* @queue_front, align 4, !tbaa !3
  %11 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp153 = icmp eq i32 %10, %11
  br i1 %cmp153, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont10
  %12 = phi i32 [ %19, %cont10 ], [ %10, %while.cond.preheader ]
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb7, label %cont10

ioc_bb7:                                          ; preds = %while.body
  %16 = sext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 3364, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %16, i64 1, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %ioc_bb7, %while.body
  %rem = srem i32 %14, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %17 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %17
  %18 = load i32* %arrayidx11, align 4, !tbaa !3
  call void @zhandler(i32 %18) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp12, %struct.__sigset_t* byval align 4 %oset) nounwind
  %19 = load i32* @queue_front, align 4, !tbaa !3
  %20 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %return, label %while.body

if.end14:                                         ; preds = %entry
  %call15 = call i8* @dyncat(i8* %path, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  %call16 = call i8* @dyncat(i8* %file, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  %call17 = call fastcc i32 @zwcstat(i8* %call15, %struct.stat* %std)
  %21 = bitcast %struct.stat* %stc to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* %call16, %struct.stat64* %21) nounwind
  %22 = bitcast %struct.stat* %stn to %struct.stat64*
  %call.i145 = call i32 @__xstat64(i32 3, i8* %file, %struct.stat64* %22) nounwind
  %23 = load i32* @queueing_enabled, align 4, !tbaa !3
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %if.end14
  %27 = sext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 3382, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %27, i64 1, i8 13) nounwind
  br label %cont21

cont21:                                           ; preds = %if.end14, %ioc_bb20
  store i32 %25, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %call17, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %cont21
  %tobool23 = icmp eq i32 %call.i, 0
  br i1 %tobool23, label %lor.lhs.false, label %land.lhs.true27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds %struct.stat* %std, i32 0, i32 13, i32 0
  %28 = load i32* %tv_sec, align 4, !tbaa !4
  %tv_sec25 = getelementptr inbounds %struct.stat* %stc, i32 0, i32 13, i32 0
  %29 = load i32* %tv_sec25, align 4, !tbaa !4
  %cmp26 = icmp sgt i32 %28, %29
  br i1 %cmp26, label %land.lhs.true27, label %land.lhs.true67

land.lhs.true27:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %tobool28 = icmp eq i32 %call.i145, 0
  br i1 %tobool28, label %lor.lhs.false29, label %land.lhs.true35

lor.lhs.false29:                                  ; preds = %land.lhs.true27
  %tv_sec31 = getelementptr inbounds %struct.stat* %std, i32 0, i32 13, i32 0
  %30 = load i32* %tv_sec31, align 4, !tbaa !4
  %tv_sec33 = getelementptr inbounds %struct.stat* %stn, i32 0, i32 13, i32 0
  %31 = load i32* %tv_sec33, align 4, !tbaa !4
  %cmp34 = icmp sgt i32 %30, %31
  br i1 %cmp34, label %land.lhs.true35, label %if.end65

land.lhs.true35:                                  ; preds = %land.lhs.true27, %lor.lhs.false29
  %call36 = call fastcc %struct.eprog* @check_dump_file(i8* %call15, %struct.stat* %std, i8* %name, i32* %ksh)
  %tobool37 = icmp eq %struct.eprog* %call36, null
  br i1 %tobool37, label %if.end65, label %do.body39

do.body39:                                        ; preds = %land.lhs.true35
  %32 = load i32* @queueing_enabled, align 4, !tbaa !3
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 -1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb40, label %cont41

ioc_bb40:                                         ; preds = %do.body39
  %36 = sext i32 %32 to i64
  call void @__ioc_report_add_overflow(i32 3386, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %36, i64 -1, i8 13) nounwind
  br label %cont41

cont41:                                           ; preds = %do.body39, %ioc_bb40
  store i32 %34, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool42 = icmp eq i32 %34, 0
  br i1 %tobool42, label %while.cond45.preheader, label %return

while.cond45.preheader:                           ; preds = %cont41
  %37 = load i32* @queue_front, align 4, !tbaa !3
  %38 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp46151 = icmp eq i32 %37, %38
  br i1 %cmp46151, label %return, label %while.body47

while.body47:                                     ; preds = %while.cond45.preheader, %cont55
  %39 = phi i32 [ %46, %cont55 ], [ %37, %while.cond45.preheader ]
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 1)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb50, label %cont55

ioc_bb50:                                         ; preds = %while.body47
  %43 = sext i32 %39 to i64
  call void @__ioc_report_add_overflow(i32 3390, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %43, i64 1, i8 13) nounwind
  br label %cont55

cont55:                                           ; preds = %ioc_bb50, %while.body47
  %rem56 = srem i32 %41, 128
  store i32 %rem56, i32* @queue_front, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem56
  call void @signal_setmask(%struct.__sigset_t* sret %oset49, %struct.__sigset_t* byval align 4 %arrayidx57) nounwind
  %44 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx59 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %44
  %45 = load i32* %arrayidx59, align 4, !tbaa !3
  call void @zhandler(i32 %45) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp60, %struct.__sigset_t* byval align 4 %oset49) nounwind
  %46 = load i32* @queue_front, align 4, !tbaa !3
  %47 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %46, %47
  br i1 %cmp46, label %return, label %while.body47

if.end65:                                         ; preds = %land.lhs.true35, %cont21, %lor.lhs.false29
  %tobool66 = icmp eq i32 %call.i, 0
  br i1 %tobool66, label %land.lhs.true67, label %do.body106

land.lhs.true67:                                  ; preds = %lor.lhs.false, %if.end65
  %tobool68 = icmp eq i32 %call.i145, 0
  br i1 %tobool68, label %lor.lhs.false69, label %land.lhs.true75

lor.lhs.false69:                                  ; preds = %land.lhs.true67
  %tv_sec71 = getelementptr inbounds %struct.stat* %stc, i32 0, i32 13, i32 0
  %48 = load i32* %tv_sec71, align 4, !tbaa !4
  %tv_sec73 = getelementptr inbounds %struct.stat* %stn, i32 0, i32 13, i32 0
  %49 = load i32* %tv_sec73, align 4, !tbaa !4
  %cmp74 = icmp sgt i32 %48, %49
  br i1 %cmp74, label %land.lhs.true75, label %do.body106

land.lhs.true75:                                  ; preds = %land.lhs.true67, %lor.lhs.false69
  %call76 = call fastcc %struct.eprog* @check_dump_file(i8* %call16, %struct.stat* %stc, i8* %name, i32* %ksh)
  %tobool77 = icmp eq %struct.eprog* %call76, null
  br i1 %tobool77, label %do.body106, label %do.body79

do.body79:                                        ; preds = %land.lhs.true75
  %50 = load i32* @queueing_enabled, align 4, !tbaa !3
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %50, i32 -1)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb80, label %cont81

ioc_bb80:                                         ; preds = %do.body79
  %54 = sext i32 %50 to i64
  call void @__ioc_report_add_overflow(i32 3403, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %54, i64 -1, i8 13) nounwind
  br label %cont81

cont81:                                           ; preds = %do.body79, %ioc_bb80
  store i32 %52, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool82 = icmp eq i32 %52, 0
  br i1 %tobool82, label %while.cond85.preheader, label %return

while.cond85.preheader:                           ; preds = %cont81
  %55 = load i32* @queue_front, align 4, !tbaa !3
  %56 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp86149 = icmp eq i32 %55, %56
  br i1 %cmp86149, label %return, label %while.body87

while.body87:                                     ; preds = %while.cond85.preheader, %cont95
  %57 = phi i32 [ %64, %cont95 ], [ %55, %while.cond85.preheader ]
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 1)
  %59 = extractvalue { i32, i1 } %58, 0
  %60 = extractvalue { i32, i1 } %58, 1
  br i1 %60, label %ioc_bb90, label %cont95

ioc_bb90:                                         ; preds = %while.body87
  %61 = sext i32 %57 to i64
  call void @__ioc_report_add_overflow(i32 3407, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %61, i64 1, i8 13) nounwind
  br label %cont95

cont95:                                           ; preds = %ioc_bb90, %while.body87
  %rem96 = srem i32 %59, 128
  store i32 %rem96, i32* @queue_front, align 4, !tbaa !3
  %arrayidx97 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem96
  call void @signal_setmask(%struct.__sigset_t* sret %oset89, %struct.__sigset_t* byval align 4 %arrayidx97) nounwind
  %62 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx99 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %62
  %63 = load i32* %arrayidx99, align 4, !tbaa !3
  call void @zhandler(i32 %63) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp100, %struct.__sigset_t* byval align 4 %oset89) nounwind
  %64 = load i32* @queue_front, align 4, !tbaa !3
  %65 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp86 = icmp eq i32 %64, %65
  br i1 %cmp86, label %return, label %while.body87

do.body106:                                       ; preds = %land.lhs.true75, %lor.lhs.false69, %if.end65
  %66 = load i32* @queueing_enabled, align 4, !tbaa !3
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %66, i32 -1)
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb107, label %cont108

ioc_bb107:                                        ; preds = %do.body106
  %70 = sext i32 %66 to i64
  call void @__ioc_report_add_overflow(i32 3420, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %70, i64 -1, i8 13) nounwind
  br label %cont108

cont108:                                          ; preds = %do.body106, %ioc_bb107
  store i32 %68, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool109 = icmp eq i32 %68, 0
  br i1 %tobool109, label %while.cond112.preheader, label %return

while.cond112.preheader:                          ; preds = %cont108
  %71 = load i32* @queue_front, align 4, !tbaa !3
  %72 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp113147 = icmp eq i32 %71, %72
  br i1 %cmp113147, label %return, label %while.body114

while.body114:                                    ; preds = %while.cond112.preheader, %cont122
  %73 = phi i32 [ %80, %cont122 ], [ %71, %while.cond112.preheader ]
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 1)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb117, label %cont122

ioc_bb117:                                        ; preds = %while.body114
  %77 = sext i32 %73 to i64
  call void @__ioc_report_add_overflow(i32 3424, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %77, i64 1, i8 13) nounwind
  br label %cont122

cont122:                                          ; preds = %ioc_bb117, %while.body114
  %rem123 = srem i32 %75, 128
  store i32 %rem123, i32* @queue_front, align 4, !tbaa !3
  %arrayidx124 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem123
  call void @signal_setmask(%struct.__sigset_t* sret %oset116, %struct.__sigset_t* byval align 4 %arrayidx124) nounwind
  %78 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx126 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %78
  %79 = load i32* %arrayidx126, align 4, !tbaa !3
  call void @zhandler(i32 %79) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp127, %struct.__sigset_t* byval align 4 %oset116) nounwind
  %80 = load i32* @queue_front, align 4, !tbaa !3
  %81 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp113 = icmp eq i32 %80, %81
  br i1 %cmp113, label %return, label %while.body114

return:                                           ; preds = %while.cond.preheader, %cont10, %while.cond45.preheader, %cont55, %while.cond85.preheader, %cont95, %while.cond112.preheader, %cont122, %cont108, %cont81, %cont41, %cont3
  %retval.0 = phi %struct.eprog* [ %call1, %cont3 ], [ %call36, %cont41 ], [ %call76, %cont81 ], [ null, %cont108 ], [ null, %cont122 ], [ null, %while.cond112.preheader ], [ %call76, %cont95 ], [ %call76, %while.cond85.preheader ], [ %call36, %cont55 ], [ %call36, %while.cond45.preheader ], [ %call1, %cont10 ], [ %call1, %while.cond.preheader ]
  ret %struct.eprog* %retval.0
}

define internal fastcc %struct.eprog* @check_dump_file(i8* %file, %struct.stat* %sbuf, i8* nocapture %name, i32* %ksh) nounwind {
entry:
  %lsbuf = alloca %struct.stat, align 4
  %tobool = icmp eq %struct.stat* %sbuf, null
  br i1 %tobool, label %if.then, label %rec.preheader

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @zwcstat(i8* %file, %struct.stat* %lsbuf)
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %rec.preheader, label %return

rec.preheader:                                    ; preds = %entry, %if.then
  %sbuf.addr.0.ph = phi %struct.stat* [ %lsbuf, %if.then ], [ %sbuf, %entry ]
  %st_dev.i = getelementptr inbounds %struct.stat* %sbuf.addr.0.ph, i32 0, i32 0
  %st_ino.i = getelementptr inbounds %struct.stat* %sbuf.addr.0.ph, i32 0, i32 15
  br label %rec

rec:                                              ; preds = %cond.end.i, %if.then32.i, %if.end17.i, %if.end14.i, %rec.preheader
  %isrec.0 = phi i32 [ 0, %rec.preheader ], [ 1, %if.end14.i ], [ 1, %if.end17.i ], [ 1, %if.then32.i ], [ 1, %cond.end.i ]
  %f.0321 = load %struct.funcdump** @dumps, align 4
  %tobool4322 = icmp eq %struct.funcdump* %f.0321, null
  br i1 %tobool4322, label %land.lhs.true9, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %rec
  %0 = load i64* %st_dev.i, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %f.0323 = phi %struct.funcdump* [ %f.0321, %for.body.lr.ph ], [ %f.0, %for.inc ]
  %dev = getelementptr inbounds %struct.funcdump* %f.0323, i32 0, i32 1
  %1 = load i64* %dev, align 4, !tbaa !5
  %cmp = icmp eq i64 %1, %0
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ino = getelementptr inbounds %struct.funcdump* %f.0323, i32 0, i32 2
  %2 = load i64* %ino, align 4, !tbaa !5
  %3 = load i64* %st_ino.i, align 4, !tbaa !5
  %cmp5 = icmp eq i64 %2, %3
  br i1 %cmp5, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.funcdump* %f.0323, i32 0, i32 0
  %f.0 = load %struct.funcdump** %next, align 4
  %tobool4 = icmp eq %struct.funcdump* %f.0, null
  br i1 %tobool4, label %land.lhs.true9, label %for.body

for.end:                                          ; preds = %land.lhs.true
  %map = getelementptr inbounds %struct.funcdump* %f.0323, i32 0, i32 4
  %4 = load i32** %map, align 4, !tbaa !0
  br label %if.end14

land.lhs.true9:                                   ; preds = %rec, %for.inc
  %tobool10 = icmp eq i32 %isrec.0, 0
  br i1 %tobool10, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %call11 = call fastcc i32* @load_dump_header(i8* null, i8* %file, i32 0)
  %tobool12 = icmp eq i32* %call11, null
  br i1 %tobool12, label %return, label %if.end14

if.end14:                                         ; preds = %for.end, %lor.lhs.false
  %tobool4320 = phi i1 [ true, %for.end ], [ false, %lor.lhs.false ]
  %f.0317 = phi %struct.funcdump* [ %f.0323, %for.end ], [ null, %lor.lhs.false ]
  %d.1 = phi i32* [ %4, %for.end ], [ %call11, %lor.lhs.false ]
  %arrayidx.i = getelementptr inbounds i32* %d.1, i32 12
  %5 = load i32* %arrayidx.i, align 4, !tbaa !3
  %add.ptr.i = getelementptr inbounds i32* %d.1, i32 %5
  %cmp11.i = icmp sgt i32 %5, 12
  br i1 %cmp11.i, label %cont.i, label %return

cont.i:                                           ; preds = %if.end14, %for.inc.i
  %n.0.in12.i = phi i32* [ %add.ptr4.i, %for.inc.i ], [ %arrayidx.i, %if.end14 ]
  %6 = getelementptr inbounds i32* %n.0.in12.i, i32 5
  %7 = load i32* %6, align 4, !tbaa !3
  %add.ptr2.i = getelementptr inbounds i32* %n.0.in12.i, i32 6
  %8 = bitcast i32* %add.ptr2.i to i8*
  %shr.i = lshr i32 %7, 2
  %add.ptr3.i = getelementptr inbounds i8* %8, i32 %shr.i
  %call.i = call i32 @strcmp(i8* %name, i8* %add.ptr3.i) nounwind
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %dump_find_func.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cont.i
  %9 = getelementptr inbounds i32* %n.0.in12.i, i32 4
  %10 = load i32* %9, align 4, !tbaa !3
  %add.ptr4.i = getelementptr inbounds i32* %n.0.in12.i, i32 %10
  %cmp.i = icmp ult i32* %add.ptr4.i, %add.ptr.i
  br i1 %cmp.i, label %cont.i, label %return

dump_find_func.exit:                              ; preds = %cont.i
  %tobool16 = icmp eq i32* %n.0.in12.i, null
  br i1 %tobool16, label %return, label %if.then17

if.then17:                                        ; preds = %dump_find_func.exit
  br i1 %tobool4320, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  %call20 = call i8* @zalloc(i32 36) nounwind
  %11 = bitcast i8* %call20 to %struct.eprog*
  %flags = bitcast i8* %call20 to i32*
  store i32 4, i32* %flags, align 4, !tbaa !3
  %12 = getelementptr inbounds i32* %n.0.in12.i, i32 1
  %13 = load i32* %12, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then19
  %15 = zext i32 %13 to i64
  call void @__ioc_report_conversion(i32 3541, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %15, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then19
  %len21 = getelementptr inbounds i8* %call20, i32 4
  %16 = bitcast i8* %len21 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !3
  %17 = getelementptr inbounds i32* %n.0.in12.i, i32 2
  %18 = load i32* %17, align 4, !tbaa !3
  %19 = zext i32 %18 to i64
  %20 = icmp sgt i32 %18, -1
  br i1 %20, label %cont24.thread, label %ioc_bb26

cont24.thread:                                    ; preds = %cont
  %npats25312 = getelementptr inbounds i8* %call20, i32 8
  %21 = bitcast i8* %npats25312 to i32*
  store i32 %18, i32* %21, align 4, !tbaa !3
  %nref313 = getelementptr inbounds i8* %call20, i32 12
  %22 = bitcast i8* %nref313 to i32*
  store i32 1, i32* %22, align 4, !tbaa !3
  br label %cont27

ioc_bb26:                                         ; preds = %cont
  call void @__ioc_report_conversion(i32 3542, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %19, i8 0) nounwind
  %npats25 = getelementptr inbounds i8* %call20, i32 8
  %23 = bitcast i8* %npats25 to i32*
  store i32 %18, i32* %23, align 4, !tbaa !3
  %nref = getelementptr inbounds i8* %call20, i32 12
  %24 = bitcast i8* %nref to i32*
  store i32 1, i32* %24, align 4, !tbaa !3
  %25 = sext i32 %18 to i64
  call void @__ioc_report_conversion(i32 3545, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont27

cont27:                                           ; preds = %cont24.thread, %ioc_bb26
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb28, label %cont29

ioc_bb28:                                         ; preds = %cont27
  call void @__ioc_report_mul_overflow(i32 3545, i32 50, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %19, i64 4, i8 5) nounwind
  br label %cont29

cont29:                                           ; preds = %cont27, %ioc_bb28
  %call30 = call i8* @zalloc(i32 %27) nounwind
  %29 = bitcast i8* %call30 to %struct.patprog**
  %pats = getelementptr inbounds i8* %call20, i32 16
  %30 = bitcast i8* %pats to %struct.patprog***
  store %struct.patprog** %29, %struct.patprog*** %30, align 4, !tbaa !0
  %map31 = getelementptr inbounds %struct.funcdump* %f.0317, i32 0, i32 4
  %31 = load i32** %map31, align 4, !tbaa !0
  %32 = load i32* %n.0.in12.i, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i32* %31, i32 %32
  %prog32 = getelementptr inbounds i8* %call20, i32 20
  %33 = bitcast i8* %prog32 to i32**
  store i32* %add.ptr, i32** %33, align 4, !tbaa !0
  %34 = bitcast i32* %add.ptr to i8*
  %35 = getelementptr inbounds i32* %n.0.in12.i, i32 3
  %36 = load i32* %35, align 4, !tbaa !3
  %add.ptr34 = getelementptr inbounds i8* %34, i32 %36
  %strs35 = getelementptr inbounds i8* %call20, i32 24
  %37 = bitcast i8* %strs35 to i8**
  store i8* %add.ptr34, i8** %37, align 4, !tbaa !0
  %shf = getelementptr inbounds i8* %call20, i32 28
  %38 = bitcast i8* %shf to %struct.shfunc**
  store %struct.shfunc* null, %struct.shfunc** %38, align 4, !tbaa !0
  %dump = getelementptr inbounds i8* %call20, i32 32
  %39 = bitcast i8* %dump to %struct.funcdump**
  store %struct.funcdump* %f.0317, %struct.funcdump** %39, align 4, !tbaa !0
  %count.i = getelementptr inbounds %struct.funcdump* %f.0317, i32 0, i32 7
  %40 = load i32* %count.i, align 4, !tbaa !3
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 1) nounwind
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb.i, label %incrdumpcount.exit

ioc_bb.i:                                         ; preds = %cont29
  %44 = sext i32 %40 to i64
  call void @__ioc_report_add_overflow(i32 3608, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %44, i64 1, i8 13) nounwind
  br label %incrdumpcount.exit

incrdumpcount.exit:                               ; preds = %cont29, %ioc_bb.i
  store i32 %42, i32* %count.i, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %incrdumpcount.exit
  %pp.0 = phi %struct.patprog** [ %29, %incrdumpcount.exit ], [ %incdec.ptr, %while.body ]
  %np.0 = phi i32 [ %18, %incrdumpcount.exit ], [ %46, %while.body ]
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %np.0, i32 -1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %while.cond
  %48 = sext i32 %np.0 to i64
  call void @__ioc_report_add_overflow(i32 3551, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %48, i64 -1, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %while.cond, %ioc_bb36
  %tobool38 = icmp eq i32 %np.0, 0
  br i1 %tobool38, label %while.end, label %while.body

while.body:                                       ; preds = %cont37
  %incdec.ptr = getelementptr inbounds %struct.patprog** %pp.0, i32 1
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %pp.0, align 4, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %cont37
  %tobool39 = icmp eq i32* %ksh, null
  br i1 %tobool39, label %return, label %if.then40

if.then40:                                        ; preds = %while.end
  %49 = load i32* %6, align 4, !tbaa !3
  %and = and i32 %49, 1
  %tobool44 = icmp eq i32 %and, 0
  br i1 %tobool44, label %cont47, label %cond.end

cont47:                                           ; preds = %if.then40
  %and48 = lshr i32 %49, 1
  %and48.lobit = and i32 %and48, 1
  %50 = xor i32 %and48.lobit, 1
  br label %cond.end

cond.end:                                         ; preds = %if.then40, %cont47
  %cond50 = phi i32 [ %50, %cont47 ], [ 2, %if.then40 ]
  store i32 %cond50, i32* %ksh, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %if.then17
  %add.ptr52 = getelementptr inbounds i32* %d.1, i32 1
  %51 = bitcast i32* %add.ptr52 to i8*
  %52 = load i8* %51, align 1, !tbaa !1
  %and55 = and i8 %52, 1
  %tobool56 = icmp eq i8 %and55, 0
  br i1 %tobool56, label %if.else88, label %cont62

cont62:                                           ; preds = %if.else
  %arrayidx71 = getelementptr inbounds i8* %51, i32 2
  %arrayidx68 = getelementptr inbounds i8* %51, i32 1
  %53 = load i8* %arrayidx71, align 1, !tbaa !1
  %54 = load i8* %arrayidx68, align 1, !tbaa !1
  %conv69 = zext i8 %54 to i32
  %conv72 = zext i8 %53 to i32
  %shl = shl nuw nsw i32 %conv72, 8
  %55 = or i32 %conv69, %shl
  %arrayidx78 = getelementptr inbounds i8* %51, i32 3
  %56 = load i8* %arrayidx78, align 1, !tbaa !1
  %conv79 = zext i8 %56 to i32
  %shl82 = shl nuw nsw i32 %conv79, 16
  %57 = or i32 %55, %shl82
  %and63 = and i8 %52, 2
  %tobool.i304 = icmp ne i8 %and63, 0
  br i1 %tobool.i304, label %if.then.i, label %if.end14.i

if.then.i:                                        ; preds = %cont62
  %58 = load i32* @load_dump_file.pgsz, align 4, !tbaa !3
  %tobool1.i = icmp eq i32 %58, 0
  br i1 %tobool1.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i305 = call i32 @sysconf(i32 30) nounwind
  %59 = icmp sgt i32 %call.i305, -1
  br i1 %59, label %cont.i307, label %ioc_bb.i306

ioc_bb.i306:                                      ; preds = %if.then2.i
  %60 = sext i32 %call.i305 to i64
  call void @__ioc_report_conversion(i32 3297, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %60, i8 1) nounwind
  br label %cont.i307

cont.i307:                                        ; preds = %ioc_bb.i306, %if.then2.i
  store i32 %call.i305, i32* @load_dump_file.pgsz, align 4, !tbaa !3
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call.i305, i32 1) nounwind
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb3.i, label %cont4.i

ioc_bb3.i:                                        ; preds = %cont.i307
  %64 = zext i32 %call.i305 to i64
  call void @__ioc_report_sub_overflow(i32 3304, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %64, i64 1, i8 5) nounwind
  br label %cont4.i

cont4.i:                                          ; preds = %ioc_bb3.i, %cont.i307
  store i32 %62, i32* @load_dump_file.pgsz, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %cont4.i, %if.then.i
  %65 = phi i32 [ %58, %if.then.i ], [ %62, %cont4.i ]
  %66 = zext i32 %57 to i64
  %neg.i = xor i32 %65, -1
  %and.i = and i32 %57, %neg.i
  %67 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %57, i32 %and.i) nounwind
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb10.i, label %cont11.i

ioc_bb10.i:                                       ; preds = %if.end.i
  %70 = zext i32 %and.i to i64
  call void @__ioc_report_sub_overflow(i32 3307, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %66, i64 %70, i8 13) nounwind
  br label %cont11.i

cont11.i:                                         ; preds = %ioc_bb10.i, %if.end.i
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 %68) nounwind
  %72 = extractvalue { i32, i1 } %71, 0
  %73 = extractvalue { i32, i1 } %71, 1
  br i1 %73, label %ioc_bb12.i, label %if.end14.i

ioc_bb12.i:                                       ; preds = %cont11.i
  %74 = sext i32 %68 to i64
  call void @__ioc_report_add_overflow(i32 3307, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %66, i64 %74, i8 13) nounwind
  br label %if.end14.i

if.end14.i:                                       ; preds = %ioc_bb12.i, %cont11.i, %cont62
  %off.0.i = phi i32 [ %and.i, %cont11.i ], [ %and.i, %ioc_bb12.i ], [ 0, %cont62 ]
  %mlen.0.i = phi i32 [ %72, %cont11.i ], [ %72, %ioc_bb12.i ], [ %57, %cont62 ]
  %call15.i = call i32 (i8*, i32, ...)* @open64(i8* %file, i32 0) nounwind
  %cmp.i308 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i308, label %rec, label %if.end17.i

if.end17.i:                                       ; preds = %if.end14.i
  %call18.i = call i32 @movefd(i32 %call15.i) nounwind
  %cmp21.i = icmp eq i32 %call18.i, -1
  br i1 %cmp21.i, label %rec, label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i
  %75 = icmp sgt i32 %mlen.0.i, -1
  br i1 %75, label %cont26.i, label %ioc_bb25.i

ioc_bb25.i:                                       ; preds = %if.end23.i
  %76 = sext i32 %mlen.0.i to i64
  call void @__ioc_report_conversion(i32 3318, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %76, i8 1) nounwind
  br label %cont26.i

cont26.i:                                         ; preds = %ioc_bb25.i, %if.end23.i
  %conv.i = sext i32 %off.0.i to i64
  %call27.i = call i8* @mmap64(i8* null, i32 %mlen.0.i, i32 1, i32 1, i32 %call18.i, i64 %conv.i) nounwind
  %77 = bitcast i8* %call27.i to i32*
  %cmp30.i = icmp eq i8* %call27.i, inttoptr (i32 -1 to i8*)
  br i1 %cmp30.i, label %if.then32.i, label %if.end34.i

if.then32.i:                                      ; preds = %cont26.i
  %call33.i = call i32 @close(i32 %call18.i) nounwind
  br label %rec

if.end34.i:                                       ; preds = %cont26.i
  %call35.i = call i8* @zalloc(i32 44) nounwind
  %78 = bitcast i8* %call35.i to %struct.funcdump*
  %79 = load %struct.funcdump** @dumps, align 4, !tbaa !0
  %next.i = bitcast i8* %call35.i to %struct.funcdump**
  store %struct.funcdump* %79, %struct.funcdump** %next.i, align 4, !tbaa !0
  store %struct.funcdump* %78, %struct.funcdump** @dumps, align 4, !tbaa !0
  %80 = load i64* %st_dev.i, align 4, !tbaa !5
  %dev.i = getelementptr inbounds i8* %call35.i, i32 4
  %81 = bitcast i8* %dev.i to i64*
  store i64 %80, i64* %81, align 4, !tbaa !5
  %82 = load i64* %st_ino.i, align 4, !tbaa !5
  %ino.i = getelementptr inbounds i8* %call35.i, i32 12
  %83 = bitcast i8* %ino.i to i64*
  store i64 %82, i64* %83, align 4, !tbaa !5
  %fd36.i = getelementptr inbounds i8* %call35.i, i32 20
  %84 = bitcast i8* %fd36.i to i32*
  store i32 %call18.i, i32* %84, align 4, !tbaa !3
  br i1 %tobool.i304, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %if.end34.i
  %85 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %57, i32 %off.0.i) nounwind
  %86 = extractvalue { i32, i1 } %85, 0
  %87 = extractvalue { i32, i1 } %85, 1
  br i1 %87, label %ioc_bb38.i, label %cont39.i

ioc_bb38.i:                                       ; preds = %cond.true.i
  %88 = zext i32 %57 to i64
  call void @__ioc_report_sub_overflow(i32 3328, i32 34, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %88, i64 %conv.i, i8 13) nounwind
  br label %cont39.i

cont39.i:                                         ; preds = %ioc_bb38.i, %cond.true.i
  %89 = icmp sgt i32 %86, -1
  br i1 %89, label %cont43.i, label %ioc_bb41.i

ioc_bb41.i:                                       ; preds = %cont39.i
  %90 = sext i32 %86 to i64
  call void @__ioc_report_conversion(i32 3328, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %90, i8 1) nounwind
  br label %cont43.i

cont43.i:                                         ; preds = %ioc_bb41.i, %cont39.i
  %div.i = lshr i32 %86, 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cont43.i, %if.end34.i
  %cond.i = phi i32 [ %div.i, %cont43.i ], [ 0, %if.end34.i ]
  %add.ptr.i309 = getelementptr inbounds i32* %77, i32 %cond.i
  %map.i = getelementptr inbounds i8* %call35.i, i32 24
  %91 = bitcast i8* %map.i to i32**
  store i32* %add.ptr.i309, i32** %91, align 4, !tbaa !0
  %addr46.i = getelementptr inbounds i8* %call35.i, i32 28
  %92 = bitcast i8* %addr46.i to i32**
  store i32* %77, i32** %92, align 4, !tbaa !0
  %len47.i = getelementptr inbounds i8* %call35.i, i32 32
  %93 = bitcast i8* %len47.i to i32*
  store i32 %57, i32* %93, align 4, !tbaa !3
  %count.i310 = getelementptr inbounds i8* %call35.i, i32 36
  %94 = bitcast i8* %count.i310 to i32*
  store i32 0, i32* %94, align 4, !tbaa !3
  %call48.i = call i8* @ztrdup(i8* %file) nounwind
  %filename.i = getelementptr inbounds i8* %call35.i, i32 40
  %95 = bitcast i8* %filename.i to i8**
  store i8* %call48.i, i8** %95, align 4, !tbaa !0
  br label %rec

if.else88:                                        ; preds = %if.else
  %96 = getelementptr inbounds i32* %n.0.in12.i, i32 2
  %97 = load i32* %96, align 4, !tbaa !3
  %98 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %97, i32 4)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb93, label %cont94

ioc_bb93:                                         ; preds = %if.else88
  %101 = zext i32 %97 to i64
  call void @__ioc_report_mul_overflow(i32 3569, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %101, i64 4, i8 5) nounwind
  br label %cont94

cont94:                                           ; preds = %if.else88, %ioc_bb93
  %102 = zext i32 %99 to i64
  %103 = icmp sgt i32 %99, -1
  br i1 %103, label %cont97, label %ioc_bb96

ioc_bb96:                                         ; preds = %cont94
  call void @__ioc_report_conversion(i32 3569, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %102, i8 0) nounwind
  br label %cont97

cont97:                                           ; preds = %ioc_bb96, %cont94
  %call98 = call i32 (i8*, i32, ...)* @open64(i8* %file, i32 0) nounwind
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %return, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %cont97
  %104 = load i32* %n.0.in12.i, align 4, !tbaa !3
  %105 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %104, i32 4)
  %106 = extractvalue { i32, i1 } %105, 0
  %107 = extractvalue { i32, i1 } %105, 1
  br i1 %107, label %ioc_bb103, label %cont109

ioc_bb103:                                        ; preds = %lor.lhs.false101
  %108 = zext i32 %104 to i64
  call void @__ioc_report_mul_overflow(i32 3570, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %108, i64 4, i8 5) nounwind
  br label %cont109

cont109:                                          ; preds = %ioc_bb103, %lor.lhs.false101
  %109 = load i8* %51, align 1, !tbaa !1
  %and110 = and i8 %109, 2
  %tobool111 = icmp eq i8 %and110, 0
  br i1 %tobool111, label %cond.end135, label %cont120

cont120:                                          ; preds = %cont109
  %arrayidx117 = getelementptr inbounds i8* %51, i32 2
  %arrayidx114 = getelementptr inbounds i8* %51, i32 1
  %110 = load i8* %arrayidx117, align 1, !tbaa !1
  %111 = load i8* %arrayidx114, align 1, !tbaa !1
  %conv115 = zext i8 %111 to i32
  %conv118 = zext i8 %110 to i32
  %shl121 = shl nuw nsw i32 %conv118, 8
  %112 = or i32 %conv115, %shl121
  %arrayidx125 = getelementptr inbounds i8* %51, i32 3
  %113 = load i8* %arrayidx125, align 1, !tbaa !1
  %conv126 = zext i8 %113 to i32
  %shl129 = shl nuw nsw i32 %conv126, 16
  %114 = or i32 %112, %shl129
  br label %cond.end135

cond.end135:                                      ; preds = %cont109, %cont120
  %cond136 = phi i32 [ %114, %cont120 ], [ 0, %cont109 ]
  %115 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 %cond136)
  %116 = extractvalue { i32, i1 } %115, 0
  %117 = extractvalue { i32, i1 } %115, 1
  br i1 %117, label %ioc_bb137, label %cont138

ioc_bb137:                                        ; preds = %cond.end135
  %118 = zext i32 %cond136 to i64
  %119 = zext i32 %106 to i64
  call void @__ioc_report_add_overflow(i32 3570, i32 79, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %119, i64 %118, i8 5) nounwind
  br label %cont138

cont138:                                          ; preds = %cond.end135, %ioc_bb137
  %conv139 = zext i32 %116 to i64
  %call140 = call i64 @lseek64(i32 %call98, i64 %conv139, i32 0) nounwind
  %cmp141 = icmp slt i64 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end149

if.then143:                                       ; preds = %cont138
  %cmp144 = icmp sgt i32 %call98, -1
  br i1 %cmp144, label %if.then146, label %return

if.then146:                                       ; preds = %if.then143
  %call147 = call i32 @close(i32 %call98) nounwind
  br label %return

if.end149:                                        ; preds = %cont138
  %120 = getelementptr inbounds i32* %n.0.in12.i, i32 1
  %121 = load i32* %120, align 4, !tbaa !3
  %122 = sext i32 %99 to i64
  br i1 %103, label %cont153, label %ioc_bb152

ioc_bb152:                                        ; preds = %if.end149
  call void @__ioc_report_conversion(i32 3575, i32 42, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %122, i8 1) nounwind
  br label %cont153

cont153:                                          ; preds = %ioc_bb152, %if.end149
  %123 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 %99)
  %124 = extractvalue { i32, i1 } %123, 0
  %125 = extractvalue { i32, i1 } %123, 1
  br i1 %125, label %ioc_bb154, label %cont155

ioc_bb154:                                        ; preds = %cont153
  %126 = zext i32 %121 to i64
  call void @__ioc_report_add_overflow(i32 3575, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %126, i64 %102, i8 5) nounwind
  br label %cont155

cont155:                                          ; preds = %cont153, %ioc_bb154
  %call156 = call i8* @zalloc(i32 %124) nounwind
  %add.ptr157 = getelementptr inbounds i8* %call156, i32 %99
  %127 = load i32* %120, align 4, !tbaa !3
  %call159 = call i32 @read(i32 %call98, i8* %add.ptr157, i32 %127) nounwind
  %128 = load i32* %120, align 4, !tbaa !3
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %cont163, label %ioc_bb162

ioc_bb162:                                        ; preds = %cont155
  %130 = zext i32 %128 to i64
  call void @__ioc_report_conversion(i32 3576, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %130, i8 0) nounwind
  br label %cont163

cont163:                                          ; preds = %ioc_bb162, %cont155
  %cmp164 = icmp eq i32 %call159, %128
  %call167 = call i32 @close(i32 %call98) nounwind
  br i1 %cmp164, label %if.end172, label %if.then166

if.then166:                                       ; preds = %cont163
  %131 = load i32* %120, align 4, !tbaa !3
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %cont171, label %ioc_bb170

ioc_bb170:                                        ; preds = %if.then166
  %133 = zext i32 %131 to i64
  call void @__ioc_report_conversion(i32 3578, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %133, i8 0) nounwind
  br label %cont171

cont171:                                          ; preds = %ioc_bb170, %if.then166
  call void @zfree(i8* %call156, i32 %131) nounwind
  br label %return

if.end172:                                        ; preds = %cont163
  %call174 = call i8* @zalloc(i32 36) nounwind
  %134 = bitcast i8* %call174 to %struct.eprog*
  %flags175 = bitcast i8* %call174 to i32*
  store i32 1, i32* %flags175, align 4, !tbaa !3
  %135 = load i32* %120, align 4, !tbaa !3
  br i1 %103, label %cont179, label %ioc_bb178

ioc_bb178:                                        ; preds = %if.end172
  call void @__ioc_report_conversion(i32 3584, i32 33, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %122, i8 1) nounwind
  br label %cont179

cont179:                                          ; preds = %ioc_bb178, %if.end172
  %136 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %135, i32 %99)
  %137 = extractvalue { i32, i1 } %136, 0
  %138 = extractvalue { i32, i1 } %136, 1
  br i1 %138, label %ioc_bb180, label %cont181

ioc_bb180:                                        ; preds = %cont179
  %139 = zext i32 %135 to i64
  call void @__ioc_report_add_overflow(i32 3584, i32 31, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %139, i64 %102, i8 5) nounwind
  br label %cont181

cont181:                                          ; preds = %cont179, %ioc_bb180
  %140 = icmp sgt i32 %137, -1
  br i1 %140, label %cont184, label %ioc_bb183

ioc_bb183:                                        ; preds = %cont181
  %141 = zext i32 %137 to i64
  call void @__ioc_report_conversion(i32 3584, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %141, i8 0) nounwind
  br label %cont184

cont184:                                          ; preds = %ioc_bb183, %cont181
  %len185 = getelementptr inbounds i8* %call174, i32 4
  %142 = bitcast i8* %len185 to i32*
  store i32 %137, i32* %142, align 4, !tbaa !3
  %143 = load i32* %96, align 4, !tbaa !3
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %cont189, label %ioc_bb188

ioc_bb188:                                        ; preds = %cont184
  %145 = zext i32 %143 to i64
  call void @__ioc_report_conversion(i32 3585, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %145, i8 0) nounwind
  br label %cont189

cont189:                                          ; preds = %ioc_bb188, %cont184
  %npats190 = getelementptr inbounds i8* %call174, i32 8
  %146 = bitcast i8* %npats190 to i32*
  store i32 %143, i32* %146, align 4, !tbaa !3
  %nref191 = getelementptr inbounds i8* %call174, i32 12
  %147 = bitcast i8* %nref191 to i32*
  store i32 1, i32* %147, align 4, !tbaa !3
  %148 = bitcast i8* %call156 to %struct.patprog**
  %pats192 = getelementptr inbounds i8* %call174, i32 16
  %149 = bitcast i8* %pats192 to %struct.patprog***
  store %struct.patprog** %148, %struct.patprog*** %149, align 4, !tbaa !0
  %150 = bitcast i8* %add.ptr157 to i32*
  %prog194 = getelementptr inbounds i8* %call174, i32 20
  %151 = bitcast i8* %prog194 to i32**
  store i32* %150, i32** %151, align 4, !tbaa !0
  %152 = getelementptr inbounds i32* %n.0.in12.i, i32 3
  %153 = load i32* %152, align 4, !tbaa !3
  %add.ptr157.sum = add i32 %153, %99
  %add.ptr197 = getelementptr inbounds i8* %call156, i32 %add.ptr157.sum
  %strs198 = getelementptr inbounds i8* %call174, i32 24
  %154 = bitcast i8* %strs198 to i8**
  store i8* %add.ptr197, i8** %154, align 4, !tbaa !0
  %shf199 = getelementptr inbounds i8* %call174, i32 28
  %155 = bitcast i8* %shf199 to %struct.shfunc**
  store %struct.shfunc* null, %struct.shfunc** %155, align 4, !tbaa !0
  %dump200 = getelementptr inbounds i8* %call174, i32 32
  %156 = bitcast i8* %dump200 to %struct.funcdump**
  store %struct.funcdump* %f.0317, %struct.funcdump** %156, align 4, !tbaa !0
  br label %while.cond201

while.cond201:                                    ; preds = %while.body205, %cont189
  %pp90.0 = phi %struct.patprog** [ %148, %cont189 ], [ %incdec.ptr206, %while.body205 ]
  %np91.0 = phi i32 [ %143, %cont189 ], [ %158, %while.body205 ]
  %157 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %np91.0, i32 -1)
  %158 = extractvalue { i32, i1 } %157, 0
  %159 = extractvalue { i32, i1 } %157, 1
  br i1 %159, label %ioc_bb202, label %cont203

ioc_bb202:                                        ; preds = %while.cond201
  %160 = sext i32 %np91.0 to i64
  call void @__ioc_report_add_overflow(i32 3593, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %160, i64 -1, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %while.cond201, %ioc_bb202
  %tobool204 = icmp eq i32 %np91.0, 0
  br i1 %tobool204, label %while.end207, label %while.body205

while.body205:                                    ; preds = %cont203
  %incdec.ptr206 = getelementptr inbounds %struct.patprog** %pp90.0, i32 1
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %pp90.0, align 4, !tbaa !0
  br label %while.cond201

while.end207:                                     ; preds = %cont203
  %tobool208 = icmp eq i32* %ksh, null
  br i1 %tobool208, label %return, label %if.then209

if.then209:                                       ; preds = %while.end207
  %161 = load i32* %6, align 4, !tbaa !3
  %and213 = and i32 %161, 1
  %tobool214 = icmp eq i32 %and213, 0
  br i1 %tobool214, label %cont219, label %cond.end223

cont219:                                          ; preds = %if.then209
  %and220 = lshr i32 %161, 1
  %and220.lobit = and i32 %and220, 1
  %162 = xor i32 %and220.lobit, 1
  br label %cond.end223

cond.end223:                                      ; preds = %if.then209, %cont219
  %cond224 = phi i32 [ %162, %cont219 ], [ 2, %if.then209 ]
  store i32 %cond224, i32* %ksh, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end14, %dump_find_func.exit, %land.lhs.true9, %lor.lhs.false, %for.inc.i, %cont97, %cond.end223, %while.end207, %if.then143, %if.then146, %cond.end, %while.end, %if.then, %cont171
  %retval.0 = phi %struct.eprog* [ null, %cont171 ], [ null, %if.then ], [ %11, %while.end ], [ %11, %cond.end ], [ null, %if.then146 ], [ null, %if.then143 ], [ %134, %while.end207 ], [ %134, %cond.end223 ], [ null, %cont97 ], [ null, %for.inc.i ], [ null, %lor.lhs.false ], [ null, %land.lhs.true9 ], [ null, %dump_find_func.exit ], [ null, %if.end14 ]
  ret %struct.eprog* %retval.0
}

define internal fastcc i32 @zwcstat(i8* %filename, %struct.stat* %buf) nounwind {
entry:
  %0 = bitcast %struct.stat* %buf to %struct.stat64*
  %call.i = tail call i32 @__xstat64(i32 3, i8* %filename, %struct.stat64* %0) nounwind
  %tobool = icmp eq i32 %call.i, 0
  br i1 %tobool, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %f.026 = load %struct.funcdump** @dumps, align 4
  %tobool127 = icmp eq %struct.funcdump* %f.026, null
  br i1 %tobool127, label %return, label %cond.false

cond.false:                                       ; preds = %for.cond.preheader, %for.inc
  %f.028 = phi %struct.funcdump* [ %f.0, %for.inc ], [ %f.026, %for.cond.preheader ]
  %filename10 = getelementptr inbounds %struct.funcdump* %f.028, i32 0, i32 8
  %1 = load i8** %filename10, align 4, !tbaa !0
  %call12 = tail call i32 @strlen(i8* %1) nounwind readonly
  %call13 = tail call i32 @strncmp(i8* %filename, i8* %1, i32 %call12) nounwind readonly
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %cond.false
  %fd = getelementptr inbounds %struct.funcdump* %f.028, i32 0, i32 3
  %2 = load i32* %fd, align 4, !tbaa !3
  %call.i25 = tail call i32 @__fxstat64(i32 3, i32 %2, %struct.stat64* %0) nounwind
  %tobool17 = icmp eq i32 %call.i25, 0
  br i1 %tobool17, label %return, label %for.inc

for.inc:                                          ; preds = %land.lhs.true15, %cond.false
  %next = getelementptr inbounds %struct.funcdump* %f.028, i32 0, i32 0
  %f.0 = load %struct.funcdump** %next, align 4
  %tobool1 = icmp eq %struct.funcdump* %f.0, null
  br i1 %tobool1, label %return, label %cond.false

return:                                           ; preds = %for.cond.preheader, %land.lhs.true15, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %land.lhs.true15 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

define %struct.eprog* @try_source_file(i8* %file) nounwind {
entry:
  %stc = alloca %struct.stat, align 4
  %stn = alloca %struct.stat, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp15 = alloca %struct.__sigset_t, align 4
  %oset43 = alloca %struct.__sigset_t, align 4
  %tmp54 = alloca %struct.__sigset_t, align 4
  %oset70 = alloca %struct.__sigset_t, align 4
  %tmp81 = alloca %struct.__sigset_t, align 4
  %call = call i8* @strrchr(i8* %file, i32 47) nounwind readonly
  %tobool = icmp eq i8* %call, null
  %incdec.ptr = getelementptr inbounds i8* %call, i32 1
  %tail.0 = select i1 %tobool, i8* %file, i8* %incdec.ptr
  %call1 = call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %file) nounwind
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.end18, label %if.then3

if.then3:                                         ; preds = %entry
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then3
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 3450, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then3, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  %call4 = call fastcc %struct.eprog* @check_dump_file(i8* %file, %struct.stat* null, i8* %tail.0, i32* null)
  %5 = load i32* @queueing_enabled, align 4, !tbaa !3
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 -1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont
  %9 = sext i32 %5 to i64
  call void @__ioc_report_add_overflow(i32 3454, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %9, i64 -1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %cont, %ioc_bb5
  store i32 %7, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %7, 0
  br i1 %tobool7, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %cont6
  %10 = load i32* @queue_front, align 4, !tbaa !3
  %11 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp100 = icmp eq i32 %10, %11
  br i1 %cmp100, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont13
  %12 = phi i32 [ %19, %cont13 ], [ %10, %while.cond.preheader ]
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb10, label %cont13

ioc_bb10:                                         ; preds = %while.body
  %16 = sext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 3458, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %16, i64 1, i8 13) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb10, %while.body
  %rem = srem i32 %14, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %17 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %17
  %18 = load i32* %arrayidx14, align 4, !tbaa !3
  call void @zhandler(i32 %18) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp15, %struct.__sigset_t* byval align 4 %oset) nounwind
  %19 = load i32* @queue_front, align 4, !tbaa !3
  %20 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %return, label %while.body

if.end18:                                         ; preds = %entry
  %call19 = call i8* @dyncat(i8* %file, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  %21 = bitcast %struct.stat* %stc to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* %call19, %struct.stat64* %21) nounwind
  %22 = bitcast %struct.stat* %stn to %struct.stat64*
  %call.i95 = call i32 @__xstat64(i32 3, i8* %file, %struct.stat64* %22) nounwind
  %23 = load i32* @queueing_enabled, align 4, !tbaa !3
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %if.end18
  %27 = sext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 3470, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %27, i64 1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %if.end18, %ioc_bb22
  store i32 %25, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %call.i, 0
  br i1 %tobool24, label %land.lhs.true, label %do.body60

land.lhs.true:                                    ; preds = %cont23
  %tobool25 = icmp eq i32 %call.i95, 0
  br i1 %tobool25, label %lor.lhs.false, label %land.lhs.true29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds %struct.stat* %stc, i32 0, i32 13, i32 0
  %28 = load i32* %tv_sec, align 4, !tbaa !4
  %tv_sec27 = getelementptr inbounds %struct.stat* %stn, i32 0, i32 13, i32 0
  %29 = load i32* %tv_sec27, align 4, !tbaa !4
  %cmp28 = icmp sgt i32 %28, %29
  br i1 %cmp28, label %land.lhs.true29, label %do.body60

land.lhs.true29:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %call30 = call fastcc %struct.eprog* @check_dump_file(i8* %call19, %struct.stat* %stc, i8* %tail.0, i32* null)
  %tobool31 = icmp eq %struct.eprog* %call30, null
  %.pre = load i32* @queueing_enabled, align 4, !tbaa !3
  br i1 %tobool31, label %do.body60, label %do.body33

do.body33:                                        ; preds = %land.lhs.true29
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.pre, i32 -1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %do.body33
  %33 = sext i32 %.pre to i64
  call void @__ioc_report_add_overflow(i32 3474, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %33, i64 -1, i8 13) nounwind
  br label %cont35

cont35:                                           ; preds = %do.body33, %ioc_bb34
  store i32 %31, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool36 = icmp eq i32 %31, 0
  br i1 %tobool36, label %while.cond39.preheader, label %return

while.cond39.preheader:                           ; preds = %cont35
  %34 = load i32* @queue_front, align 4, !tbaa !3
  %35 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp4098 = icmp eq i32 %34, %35
  br i1 %cmp4098, label %return, label %while.body41

while.body41:                                     ; preds = %while.cond39.preheader, %cont49
  %36 = phi i32 [ %43, %cont49 ], [ %34, %while.cond39.preheader ]
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb44, label %cont49

ioc_bb44:                                         ; preds = %while.body41
  %40 = sext i32 %36 to i64
  call void @__ioc_report_add_overflow(i32 3478, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %40, i64 1, i8 13) nounwind
  br label %cont49

cont49:                                           ; preds = %ioc_bb44, %while.body41
  %rem50 = srem i32 %38, 128
  store i32 %rem50, i32* @queue_front, align 4, !tbaa !3
  %arrayidx51 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem50
  call void @signal_setmask(%struct.__sigset_t* sret %oset43, %struct.__sigset_t* byval align 4 %arrayidx51) nounwind
  %41 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %41
  %42 = load i32* %arrayidx53, align 4, !tbaa !3
  call void @zhandler(i32 %42) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp54, %struct.__sigset_t* byval align 4 %oset43) nounwind
  %43 = load i32* @queue_front, align 4, !tbaa !3
  %44 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %43, %44
  br i1 %cmp40, label %return, label %while.body41

do.body60:                                        ; preds = %land.lhs.true29, %cont23, %lor.lhs.false
  %45 = phi i32 [ %25, %cont23 ], [ %25, %lor.lhs.false ], [ %.pre, %land.lhs.true29 ]
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %45, i32 -1)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb61, label %cont62

ioc_bb61:                                         ; preds = %do.body60
  %49 = sext i32 %45 to i64
  call void @__ioc_report_add_overflow(i32 3489, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %49, i64 -1, i8 13) nounwind
  br label %cont62

cont62:                                           ; preds = %do.body60, %ioc_bb61
  store i32 %47, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool63 = icmp eq i32 %47, 0
  br i1 %tobool63, label %while.cond66.preheader, label %return

while.cond66.preheader:                           ; preds = %cont62
  %50 = load i32* @queue_front, align 4, !tbaa !3
  %51 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp6796 = icmp eq i32 %50, %51
  br i1 %cmp6796, label %return, label %while.body68

while.body68:                                     ; preds = %while.cond66.preheader, %cont76
  %52 = phi i32 [ %59, %cont76 ], [ %50, %while.cond66.preheader ]
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %52, i32 1)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb71, label %cont76

ioc_bb71:                                         ; preds = %while.body68
  %56 = sext i32 %52 to i64
  call void @__ioc_report_add_overflow(i32 3493, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %56, i64 1, i8 13) nounwind
  br label %cont76

cont76:                                           ; preds = %ioc_bb71, %while.body68
  %rem77 = srem i32 %54, 128
  store i32 %rem77, i32* @queue_front, align 4, !tbaa !3
  %arrayidx78 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem77
  call void @signal_setmask(%struct.__sigset_t* sret %oset70, %struct.__sigset_t* byval align 4 %arrayidx78) nounwind
  %57 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx80 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %57
  %58 = load i32* %arrayidx80, align 4, !tbaa !3
  call void @zhandler(i32 %58) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp81, %struct.__sigset_t* byval align 4 %oset70) nounwind
  %59 = load i32* @queue_front, align 4, !tbaa !3
  %60 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp67 = icmp eq i32 %59, %60
  br i1 %cmp67, label %return, label %while.body68

return:                                           ; preds = %while.cond.preheader, %cont13, %while.cond39.preheader, %cont49, %while.cond66.preheader, %cont76, %cont62, %cont35, %cont6
  %retval.0 = phi %struct.eprog* [ %call4, %cont6 ], [ %call30, %cont35 ], [ null, %cont62 ], [ null, %cont76 ], [ null, %while.cond66.preheader ], [ %call30, %cont49 ], [ %call30, %while.cond39.preheader ], [ %call4, %cont13 ], [ %call4, %while.cond.preheader ]
  ret %struct.eprog* %retval.0
}

declare i8* @strrchr(i8*, i32) nounwind readonly

define void @incrdumpcount(%struct.funcdump* nocapture %f) nounwind {
entry:
  %count = getelementptr inbounds %struct.funcdump* %f, i32 0, i32 7
  %0 = load i32* %count, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 3608, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* %count, align 4, !tbaa !3
  ret void
}

declare i32 @munmap(i8*, i32) nounwind

declare i32 @zclose(i32)

declare void @zsfree(i8*)

define void @closedumps() nounwind {
entry:
  %p.03 = load %struct.funcdump** @dumps, align 4
  %tobool4 = icmp eq %struct.funcdump* %p.03, null
  br i1 %tobool4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %p.05 = phi %struct.funcdump* [ %p.0, %for.body ], [ %p.03, %entry ]
  %fd = getelementptr inbounds %struct.funcdump* %p.05, i32 0, i32 3
  %0 = load i32* %fd, align 4, !tbaa !3
  %call = tail call i32 @zclose(i32 %0) nounwind
  %next = getelementptr inbounds %struct.funcdump* %p.05, i32 0, i32 0
  %p.0 = load %struct.funcdump** %next, align 4
  %tobool = icmp eq %struct.funcdump* %p.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

define i32 @dump_autoload(i8* %nam, i8* %file, i32 %on, %struct.options* %ops, i32 %func) nounwind {
entry:
  %call = tail call i32 @strsfx(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i8* %file) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @dyncat(i8* %file, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %file.addr.0 = phi i8* [ %file, %entry ], [ %call1, %if.then ]
  %call2 = tail call fastcc i32* @load_dump_header(i8* %nam, i8* %file.addr.0, i32 1)
  %tobool3 = icmp eq i32* %call2, null
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i32* %call2, i32 12
  %0 = load i32* %add.ptr, align 4, !tbaa !3
  %add.ptr6 = getelementptr inbounds i32* %call2, i32 %0
  %cmp38 = icmp sgt i32 %0, 12
  br i1 %cmp38, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end5
  %arrayidx13 = getelementptr inbounds %struct.options* %ops, i32 0, i32 0, i32 88
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %ret.040 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc ]
  %n.0.in39 = phi i32* [ %add.ptr, %for.body.lr.ph ], [ %add.ptr22, %for.inc ]
  %call7 = tail call i8* @zshcalloc(i32 32) nounwind
  %1 = bitcast i8* %call7 to %struct.shfunc*
  %flags = getelementptr inbounds i8* %call7, i32 8
  %2 = bitcast i8* %flags to i32*
  store i32 %on, i32* %2, align 4, !tbaa !3
  %call8 = tail call %struct.eprog* @mkautofn(%struct.shfunc* %1) nounwind
  %funcdef = getelementptr inbounds i8* %call7, i32 24
  %3 = bitcast i8* %funcdef to %struct.eprog**
  store %struct.eprog* %call8, %struct.eprog** %3, align 4, !tbaa !0
  %emulation = getelementptr inbounds i8* %call7, i32 28
  %4 = bitcast i8* %emulation to i32*
  store i32 0, i32* %4, align 4, !tbaa !3
  %5 = load %struct.hashtable** @shfunctab, align 4, !tbaa !0
  %6 = getelementptr inbounds i32* %n.0.in39, i32 5
  %addnode = getelementptr inbounds %struct.hashtable* %5, i32 0, i32 8
  %7 = load i32* %6, align 4, !tbaa !3
  %add.ptr9 = getelementptr inbounds i32* %n.0.in39, i32 6
  %8 = bitcast i32* %add.ptr9 to i8*
  %9 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !0
  %shr = lshr i32 %7, 2
  %add.ptr11 = getelementptr inbounds i8* %8, i32 %shr
  %call12 = tail call i8* @ztrdup(i8* %add.ptr11) nounwind
  tail call void %9(%struct.hashtable* %5, i8* %call12, i8* %call7) nounwind
  %10 = load i8* %arrayidx13, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %10, 0
  br i1 %cmp14, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %nam17 = getelementptr inbounds i8* %call7, i32 4
  %11 = bitcast i8* %nam17 to i8**
  %12 = load i8** %11, align 4, !tbaa !0
  %call18 = tail call i32 @eval_autoload(%struct.shfunc* %1, i8* %12, %struct.options* %ops, i32 %func) nounwind
  %tobool19 = icmp eq i32 %call18, 0
  %ret.0. = select i1 %tobool19, i32 %ret.040, i32 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %ret.1 = phi i32 [ %ret.040, %for.body ], [ %ret.0., %land.lhs.true ]
  %13 = getelementptr inbounds i32* %n.0.in39, i32 4
  %14 = load i32* %13, align 4, !tbaa !3
  %add.ptr22 = getelementptr inbounds i32* %n.0.in39, i32 %14
  %cmp = icmp ult i32* %add.ptr22, %add.ptr6
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %if.end5, %for.inc, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.end5 ], [ %ret.1, %for.inc ]
  ret i32 %retval.0
}

declare %struct.eprog* @mkautofn(%struct.shfunc*)

declare i8* @ztrdup(i8*)

declare i32 @eval_autoload(%struct.shfunc*, i8*, %struct.options*, i32)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @open64(i8*, i32, ...)

declare i64 @lseek64(i32, i64, i32) nounwind

declare i32 @close(i32)

declare i32 @read(i32, i8* nocapture, i32)

declare i32 @sysconf(i32) nounwind

declare i32 @movefd(i32)

declare i8* @mmap64(i8*, i32, i32, i32, i32, i64) nounwind

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @__fxstat64(i32, i32, %struct.stat64*) nounwind

declare i32 @unlink(i8* nocapture) nounwind

define internal fastcc i32 @cur_add_func(i8* %nam, %struct.shfunc* nocapture %shf, %union.linkroot* %names, %union.linkroot* %progs, i32* nocapture %hlen, i32* nocapture %tlen, i32 %what) nounwind {
entry:
  %flags = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32* @noaliases, align 4, !tbaa !3
  %and3 = and i32 %what, 2
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %nam7 = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 1
  %2 = load i8** %nam7, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([27 x i8]* @.str14, i32 0, i32 0), i8* %2) nounwind
  br label %return

if.end:                                           ; preds = %if.then
  %and14 = and i32 %0, 8192
  store i32 %and14, i32* @noaliases, align 4, !tbaa !3
  %nam16 = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 1
  %3 = load i8** %nam16, align 4, !tbaa !0
  %call = tail call %struct.eprog* @getfpfunc(i8* %3, i32* null, i8** null) nounwind
  %tobool17 = icmp eq %struct.eprog* %call, null
  %cmp = icmp eq %struct.eprog* %call, @dummy_eprog
  %or.cond = or i1 %tobool17, %cmp
  br i1 %or.cond, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end
  store i32 %1, i32* @noaliases, align 4, !tbaa !3
  %4 = load i8** %nam16, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([24 x i8]* @.str15, i32 0, i32 0), i8* %4) nounwind
  br label %return

if.end21:                                         ; preds = %if.end
  %dump = getelementptr inbounds %struct.eprog* %call, i32 0, i32 8
  %5 = load %struct.funcdump** %dump, align 4, !tbaa !0
  %tobool22 = icmp eq %struct.funcdump* %5, null
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call %struct.eprog* @dupeprog(%struct.eprog* %call, i32 1)
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.then23
  %prog.0 = phi %struct.eprog* [ %call24, %if.then23 ], [ %call, %if.end21 ]
  store i32 %1, i32* @noaliases, align 4, !tbaa !3
  br label %if.end33

if.else:                                          ; preds = %entry
  %and26 = and i32 %what, 1
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.else
  %nam30 = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 1
  %6 = load i8** %nam30, align 4, !tbaa !0
  tail call void (i8*, i8*, ...)* @zwarnnam(i8* %nam, i8* getelementptr inbounds ([31 x i8]* @.str16, i32 0, i32 0), i8* %6) nounwind
  br label %return

if.end31:                                         ; preds = %if.else
  %funcdef = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 3
  %7 = load %struct.eprog** %funcdef, align 4, !tbaa !0
  %call32 = tail call %struct.eprog* @dupeprog(%struct.eprog* %7, i32 1)
  %nam36.pre = getelementptr inbounds %struct.shfunc* %shf, i32 0, i32 0, i32 1
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end25
  %nam36.pre-phi = phi i8** [ %nam36.pre, %if.end31 ], [ %nam16, %if.end25 ]
  %prog.1 = phi %struct.eprog* [ %call32, %if.end31 ], [ %prog.0, %if.end25 ]
  %call34 = tail call i8* @zhalloc(i32 12) nounwind
  %8 = load i8** %nam36.pre-phi, align 4, !tbaa !0
  %name = bitcast i8* %call34 to i8**
  store i8* %8, i8** %name, align 4, !tbaa !0
  %prog37 = getelementptr inbounds i8* %call34, i32 4
  %9 = bitcast i8* %prog37 to %struct.eprog**
  store %struct.eprog* %prog.1, %struct.eprog** %9, align 4, !tbaa !0
  %flags38 = getelementptr inbounds %struct.eprog* %prog.1, i32 0, i32 0
  %10 = load i32* %flags38, align 4, !tbaa !3
  %and39 = lshr i32 %10, 3
  %11 = and i32 %and39, 1
  %12 = sub i32 2, %11
  %flags41 = getelementptr inbounds i8* %call34, i32 8
  %13 = bitcast i8* %flags41 to i32*
  store i32 %12, i32* %13, align 4, !tbaa !3
  %last = getelementptr inbounds %union.linkroot* %progs, i32 0, i32 0, i32 1
  %14 = load %struct.linknode** %last, align 4, !tbaa !0
  %call42 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %progs, %struct.linknode* %14, i8* %call34) nounwind
  %last44 = getelementptr inbounds %union.linkroot* %names, i32 0, i32 0, i32 1
  %15 = load %struct.linknode** %last44, align 4, !tbaa !0
  %16 = load i8** %nam36.pre-phi, align 4, !tbaa !0
  %call47 = tail call %struct.linknode* @insertlinknode(%union.linkroot* %names, %struct.linknode* %15, i8* %16) nounwind
  %17 = load i8** %nam36.pre-phi, align 4, !tbaa !0
  %call51 = tail call i32 @strlen(i8* %17) nounwind readonly
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call51, i32 4)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb52, label %cont54

ioc_bb52:                                         ; preds = %if.end33
  %21 = zext i32 %call51 to i64
  tail call void @__ioc_report_add_overflow(i32 3162, i32 83, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %21, i64 4, i8 5) nounwind
  br label %cont54

cont54:                                           ; preds = %if.end33, %ioc_bb52
  %div = lshr i32 %19, 2
  %22 = add nuw i32 %div, 6
  %23 = load i32* %hlen, align 4, !tbaa !3
  %24 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %23, i32 %22)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb57, label %cont58

ioc_bb57:                                         ; preds = %cont54
  %27 = sext i32 %22 to i64
  %28 = sext i32 %23 to i64
  tail call void @__ioc_report_add_overflow(i32 3162, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %28, i64 %27, i8 13) nounwind
  br label %cont58

cont58:                                           ; preds = %cont54, %ioc_bb57
  store i32 %25, i32* %hlen, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.eprog* %prog.1, i32 0, i32 1
  %29 = load i32* %len, align 4, !tbaa !3
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %cont58
  %31 = sext i32 %29 to i64
  tail call void @__ioc_report_conversion(i32 3163, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %31, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %cont58
  %npats = getelementptr inbounds %struct.eprog* %prog.1, i32 0, i32 2
  %32 = load i32* %npats, align 4, !tbaa !3
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %cont63, label %ioc_bb62

ioc_bb62:                                         ; preds = %cont60
  %34 = sext i32 %32 to i64
  tail call void @__ioc_report_conversion(i32 3163, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont63

cont63:                                           ; preds = %ioc_bb62, %cont60
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb64, label %cont65

ioc_bb64:                                         ; preds = %cont63
  %38 = zext i32 %32 to i64
  tail call void @__ioc_report_mul_overflow(i32 3163, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %38, i64 4, i8 5) nounwind
  br label %cont65

cont65:                                           ; preds = %cont63, %ioc_bb64
  %39 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %36)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb66, label %cont67

ioc_bb66:                                         ; preds = %cont65
  %42 = zext i32 %36 to i64
  %43 = zext i32 %29 to i64
  tail call void @__ioc_report_sub_overflow(i32 3163, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %43, i64 %42, i8 5) nounwind
  br label %cont67

cont67:                                           ; preds = %cont65, %ioc_bb66
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 4)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb68, label %cont71

ioc_bb68:                                         ; preds = %cont67
  %47 = zext i32 %40 to i64
  tail call void @__ioc_report_add_overflow(i32 3163, i32 65, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %47, i64 4, i8 5) nounwind
  br label %cont71

cont71:                                           ; preds = %ioc_bb68, %cont67
  %48 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 1)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb72, label %cont74

ioc_bb72:                                         ; preds = %cont71
  %51 = zext i32 %45 to i64
  tail call void @__ioc_report_sub_overflow(i32 3163, i32 85, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %51, i64 1, i8 5) nounwind
  br label %cont74

cont74:                                           ; preds = %cont71, %ioc_bb72
  %div75 = lshr i32 %49, 2
  %52 = load i32* %tlen, align 4, !tbaa !3
  %53 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %52, i32 %div75)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb76, label %cont77

ioc_bb76:                                         ; preds = %cont74
  %56 = zext i32 %div75 to i64
  %57 = sext i32 %52 to i64
  tail call void @__ioc_report_add_overflow(i32 3163, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %57, i64 %56, i8 13) nounwind
  br label %cont77

cont77:                                           ; preds = %cont74, %ioc_bb76
  store i32 %54, i32* %tlen, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont77, %if.then28, %if.then18, %if.then5
  %retval.0 = phi i32 [ 1, %if.then18 ], [ 0, %cont77 ], [ 1, %if.then5 ], [ 1, %if.then28 ]
  ret i32 %retval.0
}

declare void @tokenize(i8*)

declare %struct.patprog* @patcompile(i8*, i32, i8**)

declare %struct.linknode* @linknodebydatum(%union.linkroot*, i8*)

declare i32 @pattry(%struct.patprog*, i8*)

define internal fastcc void @write_dump(i32 %dfd, %union.linkroot* nocapture %progs, i32 %map, i32 %hlen, i32 %tlen) nounwind {
entry:
  %pre = alloca [12 x i32], align 4
  %head = alloca %struct.fdhead, align 4
  %cmp = icmp eq i32 %map, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp6 = icmp sgt i32 %tlen, 4095
  %conv = zext i1 %cmp6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %map.addr.0 = phi i32 [ %conv, %if.then ], [ %map, %entry ]
  %0 = bitcast [12 x i32]* %pre to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 48, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [12 x i32]* %pre, i32 0, i32 0
  %tobool11 = icmp ne i32 %map.addr.0, 0
  %cond12 = zext i1 %tobool11 to i32
  %add.ptr = getelementptr inbounds [12 x i32]* %pre, i32 0, i32 1
  %1 = bitcast i32* %add.ptr to i8*
  %conv23 = trunc i32 %tlen to i8
  %arrayidx26 = getelementptr inbounds i8* %1, i32 1
  %shr260 = lshr i32 %tlen, 8
  %conv34 = trunc i32 %shr260 to i8
  %arrayidx37 = getelementptr inbounds i8* %1, i32 2
  %shr40261 = lshr i32 %tlen, 16
  %conv46 = trunc i32 %shr40261 to i8
  %arrayidx49 = getelementptr inbounds i8* %1, i32 3
  %add.ptr51 = getelementptr inbounds [12 x i32]* %pre, i32 0, i32 2
  %2 = bitcast i32* %add.ptr51 to i8*
  %first = getelementptr inbounds %union.linkroot* %progs, i32 0, i32 0, i32 0
  %start = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 0
  %len95 = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 1
  %npats100 = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 2
  %strs105 = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 3
  %hlen114 = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 4
  %flags130 = getelementptr inbounds %struct.fdhead* %head, i32 0, i32 5
  %3 = bitcast %struct.fdhead* %head to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.end211, %if.end
  %other.0 = phi i32 [ 0, %if.end ], [ 2, %for.end211 ]
  %tobool = icmp ne i32 %other.0, 0
  %cond = select i1 %tobool, i32 117835012, i32 67438087
  store i32 %cond, i32* %arraydecay, align 4, !tbaa !3
  %or = or i32 %other.0, %cond12
  %conv16 = trunc i32 %or to i8
  store i8 %conv16, i8* %1, align 4, !tbaa !1
  store i8 %conv23, i8* %arrayidx26, align 1, !tbaa !1
  store i8 %conv34, i8* %arrayidx37, align 2, !tbaa !1
  store i8 %conv46, i8* %arrayidx49, align 1, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 6, i32 1, i1 false)
  %call57 = call i32 @write_loop(i32 %dfd, i8* %0, i32 48) nounwind
  %node.0272 = load %struct.linknode** %first, align 4
  %tobool59273 = icmp eq %struct.linknode* %node.0272, null
  br i1 %tobool59273, label %for.end211, label %for.body

for.body:                                         ; preds = %for.cond, %for.inc
  %node.0275 = phi %struct.linknode* [ %node.0, %for.inc ], [ %node.0272, %for.cond ]
  %hlen.addr.1274 = phi i32 [ %34, %for.inc ], [ %hlen, %for.cond ]
  %dat = getelementptr inbounds %struct.linknode* %node.0275, i32 0, i32 2
  %4 = load i8** %dat, align 4, !tbaa !0
  %name = bitcast i8* %4 to i8**
  %5 = load i8** %name, align 4, !tbaa !0
  %prog60 = getelementptr inbounds i8* %4, i32 4
  %6 = bitcast i8* %prog60 to %struct.eprog**
  %7 = load %struct.eprog** %6, align 4, !tbaa !0
  %8 = sext i32 %hlen.addr.1274 to i64
  %9 = icmp sgt i32 %hlen.addr.1274, -1
  br i1 %9, label %cont63, label %ioc_bb62

ioc_bb62:                                         ; preds = %for.body
  call void @__ioc_report_conversion(i32 3017, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont63

cont63:                                           ; preds = %ioc_bb62, %for.body
  store i32 %hlen.addr.1274, i32* %start, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.eprog* %7, i32 0, i32 1
  %10 = load i32* %len, align 4, !tbaa !3
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %cont66, label %ioc_bb65

ioc_bb65:                                         ; preds = %cont63
  %12 = sext i32 %10 to i64
  call void @__ioc_report_conversion(i32 3018, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont66

cont66:                                           ; preds = %ioc_bb65, %cont63
  %npats = getelementptr inbounds %struct.eprog* %7, i32 0, i32 2
  %13 = load i32* %npats, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %cont69, label %ioc_bb68

ioc_bb68:                                         ; preds = %cont66
  %15 = sext i32 %13 to i64
  call void @__ioc_report_conversion(i32 3018, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont69

cont69:                                           ; preds = %ioc_bb68, %cont66
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb70, label %cont71

ioc_bb70:                                         ; preds = %cont69
  %19 = zext i32 %13 to i64
  call void @__ioc_report_mul_overflow(i32 3018, i32 48, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %19, i64 4, i8 5) nounwind
  br label %cont71

cont71:                                           ; preds = %cont69, %ioc_bb70
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %10, i32 %17)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb72, label %cont73

ioc_bb72:                                         ; preds = %cont71
  %23 = zext i32 %17 to i64
  %24 = zext i32 %10 to i64
  call void @__ioc_report_sub_overflow(i32 3018, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %24, i64 %23, i8 5) nounwind
  br label %cont73

cont73:                                           ; preds = %cont71, %ioc_bb72
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %21, i32 4)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb74, label %cont77

ioc_bb74:                                         ; preds = %cont73
  %28 = zext i32 %21 to i64
  call void @__ioc_report_add_overflow(i32 3018, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %28, i64 4, i8 5) nounwind
  br label %cont77

cont77:                                           ; preds = %ioc_bb74, %cont73
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %26, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb78, label %cont80

ioc_bb78:                                         ; preds = %cont77
  %32 = zext i32 %26 to i64
  call void @__ioc_report_sub_overflow(i32 3018, i32 87, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind
  br label %cont80

cont80:                                           ; preds = %cont77, %ioc_bb78
  %div = lshr i32 %30, 2
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %hlen.addr.1274, i32 %div)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %cont80
  %36 = zext i32 %div to i64
  call void @__ioc_report_add_overflow(i32 3018, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %8, i64 %36, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %cont80, %ioc_bb81
  %37 = load i32* %len, align 4, !tbaa !3
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %cont86, label %ioc_bb85

ioc_bb85:                                         ; preds = %cont82
  %39 = sext i32 %37 to i64
  call void @__ioc_report_conversion(i32 3019, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont86

cont86:                                           ; preds = %cont82, %ioc_bb85
  %40 = load i32* %npats, align 4, !tbaa !3
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %cont90, label %ioc_bb89

ioc_bb89:                                         ; preds = %cont86
  %42 = sext i32 %40 to i64
  call void @__ioc_report_conversion(i32 3019, i32 34, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %42, i8 1) nounwind
  br label %cont90

cont90:                                           ; preds = %ioc_bb89, %cont86
  %43 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %cont90
  %46 = zext i32 %40 to i64
  call void @__ioc_report_mul_overflow(i32 3019, i32 50, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %46, i64 4, i8 5) nounwind
  br label %cont92

cont92:                                           ; preds = %cont90, %ioc_bb91
  %47 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %37, i32 %44)
  %48 = extractvalue { i32, i1 } %47, 0
  %49 = extractvalue { i32, i1 } %47, 1
  br i1 %49, label %ioc_bb93, label %cont94

ioc_bb93:                                         ; preds = %cont92
  %50 = zext i32 %44 to i64
  %51 = zext i32 %37 to i64
  call void @__ioc_report_sub_overflow(i32 3019, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %51, i64 %50, i8 5) nounwind
  br label %cont94

cont94:                                           ; preds = %cont92, %ioc_bb93
  store i32 %48, i32* %len95, align 4, !tbaa !3
  %52 = load i32* %npats, align 4, !tbaa !3
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %cont99, label %ioc_bb98

ioc_bb98:                                         ; preds = %cont94
  %54 = sext i32 %52 to i64
  call void @__ioc_report_conversion(i32 3020, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %54, i8 1) nounwind
  br label %cont99

cont99:                                           ; preds = %ioc_bb98, %cont94
  store i32 %52, i32* %npats100, align 4, !tbaa !3
  %strs = getelementptr inbounds %struct.eprog* %7, i32 0, i32 6
  %55 = load i8** %strs, align 4, !tbaa !0
  %prog101 = getelementptr inbounds %struct.eprog* %7, i32 0, i32 5
  %56 = load i32** %prog101, align 4, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %55 to i32
  %sub.ptr.rhs.cast = ptrtoint i32* %56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %57 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %57, label %cont104, label %ioc_bb103

ioc_bb103:                                        ; preds = %cont99
  %58 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 3021, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %58, i8 1) nounwind
  br label %cont104

cont104:                                          ; preds = %ioc_bb103, %cont99
  store i32 %sub.ptr.sub, i32* %strs105, align 4, !tbaa !3
  %call107 = call i32 @strlen(i8* %5) nounwind readonly
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call107, i32 4)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br i1 %61, label %ioc_bb108, label %cont110

ioc_bb108:                                        ; preds = %cont104
  %62 = zext i32 %call107 to i64
  call void @__ioc_report_add_overflow(i32 3022, i32 75, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %62, i64 4, i8 5) nounwind
  br label %cont110

cont110:                                          ; preds = %cont104, %ioc_bb108
  %div111 = lshr i32 %60, 2
  %63 = add nuw i32 %div111, 6
  store i32 %63, i32* %hlen114, align 4, !tbaa !3
  %call115 = call i8* @strrchr(i8* %5, i32 47) nounwind readonly
  %tobool116 = icmp eq i8* %call115, null
  %incdec.ptr = getelementptr inbounds i8* %call115, i32 1
  %tail.0 = select i1 %tobool116, i8* %5, i8* %incdec.ptr
  %flags = getelementptr inbounds i8* %4, i32 8
  %64 = bitcast i8* %flags to i32*
  %65 = load i32* %64, align 4, !tbaa !3
  %sub.ptr.lhs.cast119 = ptrtoint i8* %tail.0 to i32
  %sub.ptr.rhs.cast120 = ptrtoint i8* %5 to i32
  %sub.ptr.sub121 = sub i32 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %66 = icmp ult i32 %sub.ptr.sub121, 536870912
  br i1 %66, label %cont125, label %ioc_bb124

ioc_bb124:                                        ; preds = %cont110
  %67 = sext i32 %sub.ptr.sub121 to i64
  call void @__ioc_report_shl_strict(i32 3027, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %67, i64 2, i8 13) nounwind
  br label %cont125

cont125:                                          ; preds = %ioc_bb124, %cont110
  %shl = shl i32 %sub.ptr.sub121, 2
  %or126 = or i32 %shl, %65
  %68 = icmp sgt i32 %or126, -1
  br i1 %68, label %cont129, label %ioc_bb128

ioc_bb128:                                        ; preds = %cont125
  %69 = sext i32 %or126 to i64
  call void @__ioc_report_conversion(i32 3027, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %69, i8 1) nounwind
  br label %cont129

cont129:                                          ; preds = %ioc_bb128, %cont125
  store i32 %or126, i32* %flags130, align 4, !tbaa !3
  br i1 %tobool, label %for.cond.i, label %if.end136

for.cond.i:                                       ; preds = %cont129, %for.body.i
  %n.addr.0.i = phi i32 [ %71, %for.body.i ], [ 6, %cont129 ]
  %p.addr.0.i = phi i32* [ %incdec.ptr.i, %for.body.i ], [ %start, %cont129 ]
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.0.i, i32 -1) nounwind
  %71 = extractvalue { i32, i1 } %70, 0
  %72 = extractvalue { i32, i1 } %70, 1
  br i1 %72, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %for.cond.i
  %73 = sext i32 %n.addr.0.i to i64
  call void @__ioc_report_add_overflow(i32 2981, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %73, i64 -1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %for.cond.i
  %tobool.i = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.i, label %if.end136, label %for.body.i

for.body.i:                                       ; preds = %cont.i
  %74 = load i32* %p.addr.0.i, align 4, !tbaa !3
  %or21.i = call i32 @llvm.bswap.i32(i32 %74) nounwind
  store i32 %or21.i, i32* %p.addr.0.i, align 4, !tbaa !3
  %incdec.ptr.i = getelementptr inbounds i32* %p.addr.0.i, i32 1
  br label %for.cond.i

if.end136:                                        ; preds = %cont.i, %cont129
  %call137 = call i32 @write_loop(i32 %dfd, i8* %3, i32 24) nounwind
  %call138 = call i32 @strlen(i8* %5) nounwind readonly
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call138, i32 1)
  %76 = extractvalue { i32, i1 } %75, 0
  %77 = extractvalue { i32, i1 } %75, 1
  br i1 %77, label %ioc_bb141, label %cont142

ioc_bb141:                                        ; preds = %if.end136
  %78 = zext i32 %call138 to i64
  call void @__ioc_report_add_overflow(i32 3031, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %78, i64 1, i8 5) nounwind
  br label %cont142

cont142:                                          ; preds = %if.end136, %ioc_bb141
  %79 = icmp sgt i32 %76, -1
  br i1 %79, label %cont147, label %ioc_bb146

ioc_bb146:                                        ; preds = %cont142
  %80 = zext i32 %76 to i64
  call void @__ioc_report_conversion(i32 3031, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %80, i8 0) nounwind
  %81 = sext i32 %76 to i64
  call void @__ioc_report_conversion(i32 3032, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont147

cont147:                                          ; preds = %cont142, %ioc_bb146
  %call148 = call i32 @write_loop(i32 %dfd, i8* %5, i32 %76) nounwind
  %and153 = and i32 %76, 3
  %tobool154 = icmp eq i32 %and153, 0
  br i1 %tobool154, label %for.inc, label %cont158

cont158:                                          ; preds = %cont147
  %82 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 4, i32 %and153)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb159, label %cont160

ioc_bb159:                                        ; preds = %cont158
  %85 = zext i32 %and153 to i64
  call void @__ioc_report_sub_overflow(i32 3034, i32 60, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 4, i64 %85, i8 5) nounwind
  br label %cont160

cont160:                                          ; preds = %cont158, %ioc_bb159
  %call161 = call i32 @write_loop(i32 %dfd, i8* %3, i32 %83) nounwind
  br label %for.inc

for.inc:                                          ; preds = %cont147, %cont160
  %next = getelementptr inbounds %struct.linknode* %node.0275, i32 0, i32 0
  %node.0 = load %struct.linknode** %next, align 4
  %tobool59 = icmp eq %struct.linknode* %node.0, null
  br i1 %tobool59, label %for.cond165.loopexit, label %for.body

for.cond165.loopexit:                             ; preds = %for.inc
  %node.1276.pre = load %struct.linknode** %first, align 4
  %tobool166277 = icmp eq %struct.linknode* %node.1276.pre, null
  br i1 %tobool166277, label %for.end211, label %for.body167

for.body167:                                      ; preds = %for.cond165.loopexit, %if.end201
  %node.1278 = phi %struct.linknode* [ %node.1, %if.end201 ], [ %node.1276.pre, %for.cond165.loopexit ]
  %dat168 = getelementptr inbounds %struct.linknode* %node.1278, i32 0, i32 2
  %86 = load i8** %dat168, align 4, !tbaa !0
  %prog169 = getelementptr inbounds i8* %86, i32 4
  %87 = bitcast i8* %prog169 to %struct.eprog**
  %88 = load %struct.eprog** %87, align 4, !tbaa !0
  %len170 = getelementptr inbounds %struct.eprog* %88, i32 0, i32 1
  %89 = load i32* %len170, align 4, !tbaa !3
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %cont173, label %ioc_bb172

ioc_bb172:                                        ; preds = %for.body167
  %91 = sext i32 %89 to i64
  call void @__ioc_report_conversion(i32 3038, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %91, i8 1) nounwind
  br label %cont173

cont173:                                          ; preds = %ioc_bb172, %for.body167
  %npats174 = getelementptr inbounds %struct.eprog* %88, i32 0, i32 2
  %92 = load i32* %npats174, align 4, !tbaa !3
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %cont177, label %ioc_bb176

ioc_bb176:                                        ; preds = %cont173
  %94 = sext i32 %92 to i64
  call void @__ioc_report_conversion(i32 3038, i32 31, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %94, i8 1) nounwind
  br label %cont177

cont177:                                          ; preds = %ioc_bb176, %cont173
  %95 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 4)
  %96 = extractvalue { i32, i1 } %95, 0
  %97 = extractvalue { i32, i1 } %95, 1
  br i1 %97, label %ioc_bb178, label %cont179

ioc_bb178:                                        ; preds = %cont177
  %98 = zext i32 %92 to i64
  call void @__ioc_report_mul_overflow(i32 3038, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %98, i64 4, i8 5) nounwind
  br label %cont179

cont179:                                          ; preds = %cont177, %ioc_bb178
  %99 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 %96)
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  br i1 %101, label %ioc_bb180, label %cont181

ioc_bb180:                                        ; preds = %cont179
  %102 = zext i32 %96 to i64
  %103 = zext i32 %89 to i64
  call void @__ioc_report_sub_overflow(i32 3038, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %103, i64 %102, i8 5) nounwind
  br label %cont181

cont181:                                          ; preds = %cont179, %ioc_bb180
  %104 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %100, i32 4)
  %105 = extractvalue { i32, i1 } %104, 0
  %106 = extractvalue { i32, i1 } %104, 1
  br i1 %106, label %ioc_bb182, label %cont185

ioc_bb182:                                        ; preds = %cont181
  %107 = zext i32 %100 to i64
  call void @__ioc_report_add_overflow(i32 3038, i32 66, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %107, i64 4, i8 5) nounwind
  br label %cont185

cont185:                                          ; preds = %ioc_bb182, %cont181
  %108 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %105, i32 1)
  %109 = extractvalue { i32, i1 } %108, 0
  %110 = extractvalue { i32, i1 } %108, 1
  br i1 %110, label %ioc_bb186, label %cont188

ioc_bb186:                                        ; preds = %cont185
  %111 = zext i32 %105 to i64
  call void @__ioc_report_sub_overflow(i32 3038, i32 86, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %111, i64 1, i8 5) nounwind
  br label %cont188

cont188:                                          ; preds = %cont185, %ioc_bb186
  %div189 = and i32 %109, -4
  %prog195 = getelementptr inbounds %struct.eprog* %88, i32 0, i32 5
  br i1 %tobool, label %if.then194, label %if.end201

if.then194:                                       ; preds = %cont188
  %112 = load i32** %prog195, align 4, !tbaa !0
  %strs196 = getelementptr inbounds %struct.eprog* %88, i32 0, i32 6
  %113 = load i8** %strs196, align 4, !tbaa !0
  %sub.ptr.lhs.cast198 = ptrtoint i8* %113 to i32
  %sub.ptr.rhs.cast199 = ptrtoint i32* %112 to i32
  %sub.ptr.sub200 = sub i32 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub200, 2
  br label %for.cond.i264

for.cond.i264:                                    ; preds = %for.body.i270, %if.then194
  %n.addr.0.i262 = phi i32 [ %sub.ptr.div, %if.then194 ], [ %115, %for.body.i270 ]
  %p.addr.0.i263 = phi i32* [ %112, %if.then194 ], [ %incdec.ptr.i269, %for.body.i270 ]
  %114 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.0.i262, i32 -1) nounwind
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb.i265, label %cont.i267

ioc_bb.i265:                                      ; preds = %for.cond.i264
  %117 = sext i32 %n.addr.0.i262 to i64
  call void @__ioc_report_add_overflow(i32 2981, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %117, i64 -1, i8 13) nounwind
  br label %cont.i267

cont.i267:                                        ; preds = %ioc_bb.i265, %for.cond.i264
  %tobool.i266 = icmp eq i32 %n.addr.0.i262, 0
  br i1 %tobool.i266, label %if.end201, label %for.body.i270

for.body.i270:                                    ; preds = %cont.i267
  %118 = load i32* %p.addr.0.i263, align 4, !tbaa !3
  %or21.i268 = call i32 @llvm.bswap.i32(i32 %118) nounwind
  store i32 %or21.i268, i32* %p.addr.0.i263, align 4, !tbaa !3
  %incdec.ptr.i269 = getelementptr inbounds i32* %p.addr.0.i263, i32 1
  br label %for.cond.i264

if.end201:                                        ; preds = %cont188, %cont.i267
  %119 = load i32** %prog195, align 4, !tbaa !0
  %120 = bitcast i32* %119 to i8*
  %call208 = call i32 @write_loop(i32 %dfd, i8* %120, i32 %div189) nounwind
  %next210 = getelementptr inbounds %struct.linknode* %node.1278, i32 0, i32 0
  %node.1 = load %struct.linknode** %next210, align 4
  %tobool166 = icmp eq %struct.linknode* %node.1, null
  br i1 %tobool166, label %for.end211, label %for.body167

for.end211:                                       ; preds = %for.cond, %if.end201, %for.cond165.loopexit
  br i1 %tobool, label %for.end216, label %for.cond

for.end216:                                       ; preds = %for.end211
  ret void
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare i32 @write_loop(i32, i8*, i32)

declare %struct.eprog* @getfpfunc(i8*, i32*, i8**)

declare i8* @metafy(i8*, i32, i32)

declare %struct.eprog* @parse_string(i8*, i32)

declare void @untokenize(i8*)

declare void @zwarn(i8*, ...)

define internal fastcc i32 @par_cond_1() nounwind {
entry:
  %0 = load i32* @ecused, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str28 to i32)) nounwind
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str29 to i32)) nounwind
  %3 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str30 to i32)) nounwind
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.then217.i, %entry
  %4 = load void ()** @condlex, align 4, !tbaa !0
  %cmp.i = icmp eq void ()* %4, @testlex
  br i1 %cmp.i, label %if.then.i, label %if.end214.i

if.then.i:                                        ; preds = %tailrecurse.i
  %5 = load i32* @tok, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %5, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i8* @dupstring(i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0)) nounwind
  %call3.i = tail call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind
  %call4.i = tail call fastcc i32 @par_cond_double(i8* %call.i, i8* %call3.i) nounwind
  br label %par_cond_2.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = load i8*** @testargs, align 4, !tbaa !0
  %7 = load i8** %6, align 4, !tbaa !0
  %tobool.i = icmp eq i8* %7, null
  br i1 %tobool.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  %8 = load i8** @tokstr, align 4, !tbaa !0
  tail call void @testlex() nounwind
  %call6.i = tail call i8* @dupstring(i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0)) nounwind
  %call7.i = tail call fastcc i32 @par_cond_double(i8* %call6.i, i8* %8) nounwind
  br label %par_cond_2.exit

if.end8.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds i8** %6, i32 1
  %9 = load i8** %arrayidx.i, align 4, !tbaa !0
  %tobool9.i = icmp eq i8* %9, null
  br i1 %tobool9.i, label %if.end214.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %10 = extractvalue { i32, i1 } %1, 0
  %11 = extractvalue { i32, i1 } %1, 1
  br i1 %11, label %ioc_bb.i, label %cont12.i

ioc_bb.i:                                         ; preds = %if.then10.i
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str28 to i32) to i64), i8 5) nounwind
  %.pre.i = load i8*** @testargs, align 4, !tbaa !0
  %.pre580.i = load i8** %.pre.i, align 4, !tbaa !0
  br label %cont12.i

cont12.i:                                         ; preds = %ioc_bb.i, %if.then10.i
  %12 = phi i8* [ %.pre580.i, %ioc_bb.i ], [ %7, %if.then10.i ]
  %cmp13.i = icmp eq i32 %10, 1
  br i1 %cmp13.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %cont12.i
  %13 = load i8* %12, align 1, !tbaa !1
  %conv.i = zext i8 %13 to i32
  %14 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv.i, i32 61) nounwind
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb19.i, label %land.lhs.true25.i

ioc_bb19.i:                                       ; preds = %cond.true.i
  %17 = zext i8 %13 to i64
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %17, i64 61, i8 13) nounwind
  br label %land.lhs.true25.i

land.lhs.true25.i:                                ; preds = %ioc_bb19.i, %cond.true.i
  %cmp26.i = icmp eq i32 %15, 0
  br i1 %cmp26.i, label %if.then28.i, label %lor.lhs.false.i

if.then28.i:                                      ; preds = %land.lhs.true25.i
  %arrayidx29.i = getelementptr inbounds i8* %12, i32 1
  %18 = load i8* %arrayidx29.i, align 1, !tbaa !1
  %conv30.i = zext i8 %18 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %cont12.i
  %call63.i = tail call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 0)) nounwind
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then28.i
  %cond.i = phi i32 [ %call63.i, %cond.false.i ], [ %conv30.i, %if.then28.i ]
  %tobool64.i = icmp eq i32 %cond.i, 0
  br i1 %tobool64.i, label %if.then210.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.end.i, %land.lhs.true25.i
  %19 = extractvalue { i32, i1 } %2, 0
  %20 = extractvalue { i32, i1 } %2, 1
  br i1 %20, label %ioc_bb67.i, label %cont70.i

ioc_bb67.i:                                       ; preds = %lor.lhs.false.i
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str29 to i32) to i64), i8 5) nounwind
  br label %cont70.i

cont70.i:                                         ; preds = %lor.lhs.false.i, %ioc_bb67.i
  %cmp71.i = icmp eq i32 %19, 1
  %21 = load i8*** @testargs, align 4, !tbaa !0
  %22 = load i8** %21, align 4, !tbaa !0
  br i1 %cmp71.i, label %cond.true78.i, label %cond.false128.i

cond.true78.i:                                    ; preds = %cont70.i
  %23 = load i8* %22, align 1, !tbaa !1
  %conv82.i = zext i8 %23 to i32
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv82.i, i32 61) nounwind
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb84.i, label %land.lhs.true90.i

ioc_bb84.i:                                       ; preds = %cond.true78.i
  %27 = zext i8 %23 to i64
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 61, i8 13) nounwind
  br label %land.lhs.true90.i

land.lhs.true90.i:                                ; preds = %ioc_bb84.i, %cond.true78.i
  %cmp91.i = icmp eq i32 %25, 0
  br i1 %cmp91.i, label %if.then93.i, label %lor.lhs.false133.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  %arrayidx94.i = getelementptr inbounds i8* %22, i32 1
  %28 = load i8* %arrayidx94.i, align 1, !tbaa !1
  %conv95.i = zext i8 %28 to i32
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv95.i, i32 61) nounwind
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb97.i, label %land.lhs.true103.i

ioc_bb97.i:                                       ; preds = %if.then93.i
  %32 = zext i8 %28 to i64
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %32, i64 61, i8 13) nounwind
  br label %land.lhs.true103.i

land.lhs.true103.i:                               ; preds = %ioc_bb97.i, %if.then93.i
  %cmp104.i = icmp eq i32 %30, 0
  br i1 %cmp104.i, label %if.then106.i, label %lor.lhs.false133.i

if.then106.i:                                     ; preds = %land.lhs.true103.i
  %arrayidx107.i = getelementptr inbounds i8* %22, i32 2
  %33 = load i8* %arrayidx107.i, align 1, !tbaa !1
  %conv108.i = zext i8 %33 to i32
  br label %cond.end130.i

cond.false128.i:                                  ; preds = %cont70.i
  %call129.i = tail call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0)) nounwind
  br label %cond.end130.i

cond.end130.i:                                    ; preds = %cond.false128.i, %if.then106.i
  %cond131.i = phi i32 [ %call129.i, %cond.false128.i ], [ %conv108.i, %if.then106.i ]
  %tobool132.i = icmp eq i32 %cond131.i, 0
  br i1 %tobool132.i, label %if.then210.i, label %lor.lhs.false133.i

lor.lhs.false133.i:                               ; preds = %cond.end130.i, %land.lhs.true103.i, %land.lhs.true90.i
  %34 = extractvalue { i32, i1 } %3, 0
  %35 = extractvalue { i32, i1 } %3, 1
  br i1 %35, label %ioc_bb136.i, label %cont139.i

ioc_bb136.i:                                      ; preds = %lor.lhs.false133.i
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 71, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str30 to i32) to i64), i8 5) nounwind
  br label %cont139.i

cont139.i:                                        ; preds = %lor.lhs.false133.i, %ioc_bb136.i
  %cmp140.i = icmp eq i32 %34, 1
  %36 = load i8*** @testargs, align 4, !tbaa !0
  %37 = load i8** %36, align 4, !tbaa !0
  br i1 %cmp140.i, label %cond.true147.i, label %cond.false197.i

cond.true147.i:                                   ; preds = %cont139.i
  %38 = load i8* %37, align 1, !tbaa !1
  %conv151.i = zext i8 %38 to i32
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv151.i, i32 33) nounwind
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb153.i, label %land.lhs.true159.i

ioc_bb153.i:                                      ; preds = %cond.true147.i
  %42 = zext i8 %38 to i64
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 71, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %42, i64 33, i8 13) nounwind
  br label %land.lhs.true159.i

land.lhs.true159.i:                               ; preds = %ioc_bb153.i, %cond.true147.i
  %cmp160.i = icmp eq i32 %40, 0
  br i1 %cmp160.i, label %if.then162.i, label %lor.lhs.false202.i

if.then162.i:                                     ; preds = %land.lhs.true159.i
  %arrayidx163.i = getelementptr inbounds i8* %37, i32 1
  %43 = load i8* %arrayidx163.i, align 1, !tbaa !1
  %conv164.i = zext i8 %43 to i32
  %44 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv164.i, i32 61) nounwind
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb166.i, label %land.lhs.true172.i

ioc_bb166.i:                                      ; preds = %if.then162.i
  %47 = zext i8 %43 to i64
  tail call void @__ioc_report_sub_overflow(i32 2278, i32 71, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %47, i64 61, i8 13) nounwind
  br label %land.lhs.true172.i

land.lhs.true172.i:                               ; preds = %ioc_bb166.i, %if.then162.i
  %cmp173.i = icmp eq i32 %45, 0
  br i1 %cmp173.i, label %if.then175.i, label %lor.lhs.false202.i

if.then175.i:                                     ; preds = %land.lhs.true172.i
  %arrayidx176.i = getelementptr inbounds i8* %37, i32 2
  %48 = load i8* %arrayidx176.i, align 1, !tbaa !1
  %conv177.i = zext i8 %48 to i32
  br label %cond.end199.i

cond.false197.i:                                  ; preds = %cont139.i
  %call198.i = tail call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0)) nounwind
  br label %cond.end199.i

cond.end199.i:                                    ; preds = %cond.false197.i, %if.then175.i
  %cond200.i = phi i32 [ %call198.i, %cond.false197.i ], [ %conv177.i, %if.then175.i ]
  %tobool201.i = icmp eq i32 %cond200.i, 0
  br i1 %tobool201.i, label %if.then210.i, label %lor.lhs.false202.i

lor.lhs.false202.i:                               ; preds = %cond.end199.i, %land.lhs.true172.i, %land.lhs.true159.i
  %49 = load i8*** @testargs, align 4, !tbaa !0
  %50 = load i8** %49, align 4, !tbaa !0
  %51 = load i8* %50, align 1, !tbaa !1
  %cmp204.i = icmp eq i8 %51, 45
  br i1 %cmp204.i, label %land.lhs.true206.i, label %if.end214.i

land.lhs.true206.i:                               ; preds = %lor.lhs.false202.i
  %add.ptr.i = getelementptr inbounds i8* %50, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i, %land.lhs.true206.i
  %t0.07.i.i = phi i32 [ 0, %land.lhs.true206.i ], [ %54, %for.cond.backedge.i.i ]
  %arrayidx.i.i = getelementptr inbounds [10 x i8*]* @get_cond_num.condstrs, i32 0, i32 %t0.07.i.i
  %52 = load i8** %arrayidx.i.i, align 4, !tbaa !0
  %call.i.i = tail call i32 @strcmp(i8* %52, i8* %add.ptr.i) nounwind
  %tobool2.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.i.i, label %get_cond_num.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %53 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.07.i.i, i32 1) nounwind
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb.i.i, label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %ioc_bb.i.i, %for.inc.i.i
  %tobool.i.i = icmp eq i32 %54, 9
  br i1 %tobool.i.i, label %if.end214.i, label %for.body.i.i

ioc_bb.i.i:                                       ; preds = %for.inc.i.i
  %56 = sext i32 %t0.07.i.i to i64
  tail call void @__ioc_report_add_overflow(i32 2416, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %56, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i.i

get_cond_num.exit.i:                              ; preds = %for.body.i.i
  %cmp208.i = icmp sgt i32 %t0.07.i.i, -1
  br i1 %cmp208.i, label %if.then210.i, label %if.end214.i

if.then210.i:                                     ; preds = %get_cond_num.exit.i, %cond.end199.i, %cond.end130.i, %cond.end.i
  %57 = load i8** @tokstr, align 4, !tbaa !0
  %58 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %58() nounwind
  %59 = load i8** @tokstr, align 4, !tbaa !0
  %60 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %60() nounwind
  %61 = load i8** @tokstr, align 4, !tbaa !0
  %62 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %62() nounwind
  %call211.i = tail call fastcc i32 @par_cond_triple(i8* %57, i8* %59, i8* %61) nounwind
  br label %par_cond_2.exit

if.end214.i:                                      ; preds = %for.cond.backedge.i.i, %get_cond_num.exit.i, %lor.lhs.false202.i, %tailrecurse.i, %if.end8.i
  %63 = load i32* @tok, align 4, !tbaa !3
  switch i32 %63, label %if.then249.i [
    i32 39, label %if.then217.i
    i32 6, label %if.then233.i
    i32 34, label %if.end259.i
  ]

if.then217.i:                                     ; preds = %if.end214.i
  %64 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %64() nounwind
  %call228.i = tail call fastcc i32 @ecadd(i32 17) nounwind
  br label %tailrecurse.i

if.then233.i:                                     ; preds = %if.end214.i
  %65 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %65() nounwind
  %66 = load i32* @tok, align 4, !tbaa !3
  %cmp234562.i = icmp eq i32 %66, 1
  br i1 %cmp234562.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %if.then233.i, %while.body.i
  %67 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %67() nounwind
  %68 = load i32* @tok, align 4, !tbaa !3
  %cmp234.i = icmp eq i32 %68, 1
  br i1 %cmp234.i, label %while.body.i, label %while.end.i

while.end.i:                                      ; preds = %while.body.i, %if.then233.i
  %call236.i = tail call fastcc i32 @par_cond() nounwind
  br label %while.cond237.i

while.cond237.i:                                  ; preds = %while.body240.i, %while.end.i
  %69 = load i32* @tok, align 4, !tbaa !3
  switch i32 %69, label %if.then244.i [
    i32 1, label %while.body240.i
    i32 7, label %if.end245.i
  ]

while.body240.i:                                  ; preds = %while.cond237.i
  %70 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %70() nounwind
  br label %while.cond237.i

if.then244.i:                                     ; preds = %while.cond237.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %par_cond_2.exit

if.end245.i:                                      ; preds = %while.cond237.i
  %71 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %71() nounwind
  br label %par_cond_2.exit

if.then249.i:                                     ; preds = %if.end214.i
  %72 = load void ()** @condlex, align 4, !tbaa !0
  %cmp255.i = icmp eq void ()* %72, @testlex
  br i1 %cmp255.i, label %switch.early.test.i, label %if.else.i

switch.early.test.i:                              ; preds = %if.then249.i
  switch i32 %63, label %if.then257.i [
    i32 38, label %if.else.i
    i32 0, label %if.else.i
  ]

if.then257.i:                                     ; preds = %switch.early.test.i
  %73 = load i8** @tokstr, align 4, !tbaa !0
  tail call void @testlex() nounwind
  %call258.i = tail call fastcc i32 @par_cond_double(i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i8* %73) nounwind
  br label %par_cond_2.exit

if.else.i:                                        ; preds = %switch.early.test.i, %switch.early.test.i, %if.then249.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %par_cond_2.exit

if.end259.i:                                      ; preds = %if.end214.i
  %74 = load i8** @tokstr, align 4, !tbaa !0
  %75 = load void ()** @condlex, align 4, !tbaa !0
  %cmp260.i = icmp eq void ()* %75, @testlex
  br i1 %cmp260.i, label %if.then262.i, label %if.end330.i

if.then262.i:                                     ; preds = %if.end259.i
  %76 = load i8* %74, align 1, !tbaa !1
  %cmp264.i = icmp eq i8 %76, 45
  br i1 %cmp264.i, label %land.lhs.true266.i, label %land.end.i

land.lhs.true266.i:                               ; preds = %if.then262.i
  %77 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 1) to i32), i32 ptrtoint ([25 x i8]* @.str31 to i32)) nounwind
  %78 = extractvalue { i32, i1 } %77, 1
  br i1 %78, label %ioc_bb267.i, label %cont270.i

ioc_bb267.i:                                      ; preds = %land.lhs.true266.i
  tail call void @__ioc_report_sub_overflow(i32 2326, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([25 x i8]* @.str31 to i32) to i64), i8 5) nounwind
  br label %cont270.i

cont270.i:                                        ; preds = %ioc_bb267.i, %land.lhs.true266.i
  %add.ptr303.i = getelementptr inbounds i8* %74, i32 1
  %call310.i = tail call i32 @strspn(i8* %add.ptr303.i, i8* getelementptr inbounds ([25 x i8]* @.str31, i32 0, i32 0)) nounwind
  %cmp326.i = icmp eq i32 %call310.i, 1
  br i1 %cmp326.i, label %land.rhs.i, label %land.end.i

land.rhs.i:                                       ; preds = %cont270.i
  %arrayidx328.i = getelementptr inbounds i8* %74, i32 2
  %79 = load i8* %arrayidx328.i, align 1, !tbaa !1
  %lnot.i = icmp eq i8 %79, 0
  br label %land.end.i

land.end.i:                                       ; preds = %cont270.i, %land.rhs.i, %if.then262.i
  %80 = phi i1 [ false, %if.then262.i ], [ %lnot.i, %land.rhs.i ], [ false, %cont270.i ]
  %land.ext.i = zext i1 %80 to i32
  %.pre581.i = load void ()** @condlex, align 4, !tbaa !0
  br label %if.end330.i

if.end330.i:                                      ; preds = %land.end.i, %if.end259.i
  %81 = phi void ()* [ %.pre581.i, %land.end.i ], [ %75, %if.end259.i ]
  %dble.0.i = phi i32 [ %land.ext.i, %land.end.i ], [ 0, %if.end259.i ]
  tail call void %81() nounwind
  %82 = load i32* @tok, align 4, !tbaa !3
  %cmp331.i = icmp eq i32 %82, 14
  switch i32 %82, label %if.then362.i [
    i32 14, label %if.then336.i
    i32 10, label %if.then336.i
    i32 34, label %if.end447.i
  ]

if.then336.i:                                     ; preds = %if.end330.i, %if.end330.i
  %83 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %83() nounwind
  %84 = load i32* @tok, align 4, !tbaa !3
  %cmp337.i = icmp eq i32 %84, 34
  br i1 %cmp337.i, label %if.end340.i, label %if.then339.i

if.then339.i:                                     ; preds = %if.then336.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %par_cond_2.exit

if.end340.i:                                      ; preds = %if.then336.i
  %85 = load i8** @tokstr, align 4, !tbaa !0
  %86 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %86() nounwind
  %or.i = select i1 %cmp331.i, i32 177, i32 209
  %call354.i = tail call fastcc i32 @ecadd(i32 %or.i) nounwind
  %call355.i = tail call fastcc i32 @ecstrcode(i8* %74) nounwind
  %call356.i = tail call fastcc i32 @ecadd(i32 %call355.i) nounwind
  %call357.i = tail call fastcc i32 @ecstrcode(i8* %85) nounwind
  %call358.i = tail call fastcc i32 @ecadd(i32 %call357.i) nounwind
  br label %par_cond_2.exit

if.then362.i:                                     ; preds = %if.end330.i
  %cmp363.i = icmp ne i32 %82, 38
  %87 = load void ()** @condlex, align 4, !tbaa !0
  %cmp366.i = icmp eq void ()* %87, @testlex
  %or.cond480.i = and i1 %cmp363.i, %cmp366.i
  br i1 %or.cond480.i, label %if.then368.i, label %if.else445.i

if.then368.i:                                     ; preds = %if.then362.i
  %tobool369.i = icmp eq i32 %dble.0.i, 0
  br i1 %tobool369.i, label %if.then370.i, label %if.else372.i

if.then370.i:                                     ; preds = %if.then368.i
  %call371.i = tail call fastcc i32 @par_cond_double(i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i8* %74) nounwind
  br label %par_cond_2.exit

if.else372.i:                                     ; preds = %if.then368.i
  %88 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str32 to i32)) nounwind
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %ioc_bb375.i, label %cont378.i

ioc_bb375.i:                                      ; preds = %if.else372.i
  tail call void @__ioc_report_sub_overflow(i32 2348, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str32 to i32) to i64), i8 5) nounwind
  br label %cont378.i

cont378.i:                                        ; preds = %ioc_bb375.i, %if.else372.i
  %cmp379.i = icmp eq i32 %89, 1
  br i1 %cmp379.i, label %cond.true386.i, label %cond.false436.i

cond.true386.i:                                   ; preds = %cont378.i
  %91 = load i8* %74, align 1, !tbaa !1
  %conv390.i = zext i8 %91 to i32
  %92 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv390.i, i32 45) nounwind
  %93 = extractvalue { i32, i1 } %92, 0
  %94 = extractvalue { i32, i1 } %92, 1
  br i1 %94, label %ioc_bb392.i, label %land.lhs.true398.i

ioc_bb392.i:                                      ; preds = %cond.true386.i
  %95 = zext i8 %91 to i64
  tail call void @__ioc_report_sub_overflow(i32 2348, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %95, i64 45, i8 13) nounwind
  br label %land.lhs.true398.i

land.lhs.true398.i:                               ; preds = %ioc_bb392.i, %cond.true386.i
  %cmp399.i = icmp eq i32 %93, 0
  br i1 %cmp399.i, label %if.then401.i, label %if.end447.i

if.then401.i:                                     ; preds = %land.lhs.true398.i
  %arrayidx402.i = getelementptr inbounds i8* %74, i32 1
  %96 = load i8* %arrayidx402.i, align 1, !tbaa !1
  %conv403.i = zext i8 %96 to i32
  %97 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv403.i, i32 116) nounwind
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb405.i, label %land.lhs.true411.i

ioc_bb405.i:                                      ; preds = %if.then401.i
  %100 = zext i8 %96 to i64
  tail call void @__ioc_report_sub_overflow(i32 2348, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %100, i64 116, i8 13) nounwind
  br label %land.lhs.true411.i

land.lhs.true411.i:                               ; preds = %ioc_bb405.i, %if.then401.i
  %cmp412.i = icmp eq i32 %98, 0
  br i1 %cmp412.i, label %if.then414.i, label %if.end447.i

if.then414.i:                                     ; preds = %land.lhs.true411.i
  %arrayidx415.i = getelementptr inbounds i8* %74, i32 2
  %101 = load i8* %arrayidx415.i, align 1, !tbaa !1
  %conv416.i = zext i8 %101 to i32
  br label %cond.end438.i

cond.false436.i:                                  ; preds = %cont378.i
  %call437.i = tail call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)) nounwind
  br label %cond.end438.i

cond.end438.i:                                    ; preds = %cond.false436.i, %if.then414.i
  %cond439.i = phi i32 [ %call437.i, %cond.false436.i ], [ %conv416.i, %if.then414.i ]
  %tobool440.i = icmp eq i32 %cond439.i, 0
  br i1 %tobool440.i, label %if.then441.i, label %if.end447.i

if.then441.i:                                     ; preds = %cond.end438.i
  %call442.i = tail call fastcc i32 @par_cond_double(i8* %74, i8* getelementptr inbounds ([2 x i8]* @.str33, i32 0, i32 0)) nounwind
  br label %par_cond_2.exit

if.else445.i:                                     ; preds = %if.then362.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %par_cond_2.exit

if.end447.i:                                      ; preds = %cond.end438.i, %land.lhs.true411.i, %land.lhs.true398.i, %if.end330.i
  %102 = load i8** @tokstr, align 4, !tbaa !0
  %103 = load i32* @incond, align 4, !tbaa !3
  %104 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %103, i32 1) nounwind
  %105 = extractvalue { i32, i1 } %104, 0
  %106 = extractvalue { i32, i1 } %104, 1
  br i1 %106, label %ioc_bb448.i, label %cont449.i

ioc_bb448.i:                                      ; preds = %if.end447.i
  %107 = sext i32 %103 to i64
  tail call void @__ioc_report_add_overflow(i32 2360, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %107, i64 1, i8 13) nounwind
  br label %cont449.i

cont449.i:                                        ; preds = %if.end447.i, %ioc_bb448.i
  store i32 %105, i32* @incond, align 4, !tbaa !3
  %108 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %108() nounwind
  %109 = load i32* @incond, align 4, !tbaa !3
  %110 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %109, i32 -1) nounwind
  %111 = extractvalue { i32, i1 } %110, 0
  %112 = extractvalue { i32, i1 } %110, 1
  br i1 %112, label %ioc_bb450.i, label %cont451.i

ioc_bb450.i:                                      ; preds = %cont449.i
  %113 = sext i32 %109 to i64
  tail call void @__ioc_report_add_overflow(i32 2363, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %113, i64 -1, i8 13) nounwind
  br label %cont451.i

cont451.i:                                        ; preds = %ioc_bb450.i, %cont449.i
  store i32 %111, i32* @incond, align 4, !tbaa !3
  %114 = load i32* @tok, align 4, !tbaa !3
  %cmp452.i = icmp eq i32 %114, 34
  %tobool455.i = icmp eq i32 %dble.0.i, 0
  %or.cond.i = and i1 %cmp452.i, %tobool455.i
  br i1 %or.cond.i, label %if.then456.i, label %if.else476.i

if.then456.i:                                     ; preds = %cont451.i
  %115 = load i8** @tokstr, align 4, !tbaa !0
  %116 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %116() nounwind
  %117 = load i32* @tok, align 4, !tbaa !3
  %cmp457.i = icmp eq i32 %117, 34
  br i1 %cmp457.i, label %if.then459.i, label %if.else474.i

if.then459.i:                                     ; preds = %if.then456.i
  %call460.i = tail call %union.linkroot* @newlinklist() nounwind
  %last.i = getelementptr inbounds %union.linkroot* %call460.i, i32 0, i32 0, i32 1
  %118 = load %struct.linknode** %last.i, align 4, !tbaa !0
  %call461.i = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call460.i, %struct.linknode* %118, i8* %102) nounwind
  %119 = load %struct.linknode** %last.i, align 4, !tbaa !0
  %call464.i = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call460.i, %struct.linknode* %119, i8* %115) nounwind
  %120 = load i32* @tok, align 4, !tbaa !3
  %cmp466563.i = icmp eq i32 %120, 34
  br i1 %cmp466563.i, label %while.body468.i, label %while.end472.i

while.body468.i:                                  ; preds = %if.then459.i, %while.body468.i
  %121 = load %struct.linknode** %last.i, align 4, !tbaa !0
  %122 = load i8** @tokstr, align 4, !tbaa !0
  %call471.i = tail call %struct.linknode* @insertlinknode(%union.linkroot* %call460.i, %struct.linknode* %121, i8* %122) nounwind
  %123 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %123() nounwind
  %124 = load i32* @tok, align 4, !tbaa !3
  %cmp466.i = icmp eq i32 %124, 34
  br i1 %cmp466.i, label %while.body468.i, label %while.end472.i

while.end472.i:                                   ; preds = %while.body468.i, %if.then459.i
  %125 = load i8* %74, align 1, !tbaa !1
  %cmp.i.i = icmp eq i8 %125, 45
  br i1 %cmp.i.i, label %lor.lhs.false.i.i, label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %while.end472.i
  %arrayidx2.i.i = getelementptr inbounds i8* %74, i32 1
  %126 = load i8* %arrayidx2.i.i, align 1, !tbaa !1
  %tobool.i553.i = icmp eq i8 %126, 0
  br i1 %tobool.i553.i, label %do.body.i.i, label %cont.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i, %while.end472.i
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([23 x i8]* @.str34, i32 0, i32 0), i8* %74) nounwind
  tail call void @herrflush() nounwind
  %127 = load i32* @noerrs, align 4, !tbaa !3
  %cmp3.i.i = icmp eq i32 %127, 2
  br i1 %cmp3.i.i, label %if.end.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %do.body.i.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %par_cond_2.exit

cont.i.i:                                         ; preds = %lor.lhs.false.i.i
  %call.i554.i = tail call i32 @countlinknodes(%union.linkroot* %call460.i) nounwind
  %128 = icmp ult i32 %call.i554.i, 16777216
  br i1 %128, label %cont9.i.i, label %ioc_bb8.i.i

ioc_bb8.i.i:                                      ; preds = %cont.i.i
  %129 = sext i32 %call.i554.i to i64
  tail call void @__ioc_report_shl_strict(i32 2496, i32 65, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %129, i64 7, i8 13) nounwind
  br label %cont9.i.i

cont9.i.i:                                        ; preds = %ioc_bb8.i.i, %cont.i.i
  %shl.i.i = shl i32 %call.i554.i, 7
  %or.i.i = or i32 %shl.i.i, 17
  %130 = icmp sgt i32 %or.i.i, -1
  br i1 %130, label %cont13.i.i, label %ioc_bb10.i.i

ioc_bb10.i.i:                                     ; preds = %cont9.i.i
  %131 = sext i32 %or.i.i to i64
  tail call void @__ioc_report_conversion(i32 2496, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %131, i8 1) nounwind
  br label %cont13.i.i

cont13.i.i:                                       ; preds = %ioc_bb10.i.i, %cont9.i.i
  %shl14.i.i = shl i32 %or.i.i, 5
  %or15.i.i = or i32 %shl14.i.i, 17
  %call16.i.i = tail call fastcc i32 @ecadd(i32 %or15.i.i) nounwind
  %call17.i.i = tail call fastcc i32 @ecstrcode(i8* %74) nounwind
  %call18.i.i = tail call fastcc i32 @ecadd(i32 %call17.i.i) nounwind
  %first.i.i = getelementptr inbounds %union.linkroot* %call460.i, i32 0, i32 0, i32 0
  %n.029.i.i = load %struct.linknode** %first.i.i, align 4
  %tobool1930.i.i = icmp eq %struct.linknode* %n.029.i.i, null
  br i1 %tobool1930.i.i, label %par_cond_2.exit, label %for.body.i555.i

for.body.i555.i:                                  ; preds = %cont13.i.i, %for.body.i555.i
  %n.031.i.i = phi %struct.linknode* [ %n.0.i.i, %for.body.i555.i ], [ %n.029.i.i, %cont13.i.i ]
  %dat.i.i = getelementptr inbounds %struct.linknode* %n.031.i.i, i32 0, i32 2
  %132 = load i8** %dat.i.i, align 4, !tbaa !0
  %call20.i.i = tail call fastcc i32 @ecstrcode(i8* %132) nounwind
  %call21.i.i = tail call fastcc i32 @ecadd(i32 %call20.i.i) nounwind
  %next.i.i = getelementptr inbounds %struct.linknode* %n.031.i.i, i32 0, i32 0
  %n.0.i.i = load %struct.linknode** %next.i.i, align 4
  %tobool19.i.i = icmp eq %struct.linknode* %n.0.i.i, null
  br i1 %tobool19.i.i, label %par_cond_2.exit, label %for.body.i555.i

if.else474.i:                                     ; preds = %if.then456.i
  %call475.i = tail call fastcc i32 @par_cond_triple(i8* %74, i8* %102, i8* %115) nounwind
  br label %par_cond_2.exit

if.else476.i:                                     ; preds = %cont451.i
  %call477.i = tail call fastcc i32 @par_cond_double(i8* %74, i8* %102) nounwind
  br label %par_cond_2.exit

par_cond_2.exit:                                  ; preds = %for.body.i555.i, %if.then2.i, %if.then5.i, %if.then210.i, %if.then244.i, %if.end245.i, %if.then257.i, %if.else.i, %if.then339.i, %if.end340.i, %if.then370.i, %if.then441.i, %if.else445.i, %if.end.i.i, %cont13.i.i, %if.else474.i, %if.else476.i
  %retval.0.i = phi i32 [ %call4.i, %if.then2.i ], [ %call211.i, %if.then210.i ], [ 0, %if.then244.i ], [ %call236.i, %if.end245.i ], [ %call258.i, %if.then257.i ], [ 0, %if.else.i ], [ 0, %if.then339.i ], [ 1, %if.end340.i ], [ %call477.i, %if.else476.i ], [ %call475.i, %if.else474.i ], [ %call442.i, %if.then441.i ], [ %call371.i, %if.then370.i ], [ 0, %if.else445.i ], [ %call7.i, %if.then5.i ], [ 0, %if.end.i.i ], [ 1, %cont13.i.i ], [ 1, %for.body.i555.i ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %par_cond_2.exit
  %133 = load i32* @tok, align 4, !tbaa !3
  switch i32 %133, label %return [
    i32 1, label %while.body
    i32 9, label %if.then
  ]

while.body:                                       ; preds = %while.cond
  %134 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %134() nounwind
  br label %while.cond

if.then:                                          ; preds = %while.cond
  %135 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %135() nounwind
  %136 = load i32* @tok, align 4, !tbaa !3
  %cmp323 = icmp eq i32 %136, 1
  br i1 %cmp323, label %while.body4, label %while.end5

while.body4:                                      ; preds = %if.then, %while.body4
  %137 = load void ()** @condlex, align 4, !tbaa !0
  tail call void %137() nounwind
  %138 = load i32* @tok, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %138, 1
  br i1 %cmp3, label %while.body4, label %while.end5

while.end5:                                       ; preds = %while.body4, %if.then
  tail call fastcc void @ecispace(i32 %0, i32 1)
  %call6 = tail call fastcc i32 @par_cond_1()
  %139 = load i32* @ecused, align 4, !tbaa !3
  %140 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %139, i32 1)
  %141 = extractvalue { i32, i1 } %140, 0
  %142 = extractvalue { i32, i1 } %140, 1
  br i1 %142, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %while.end5
  %143 = sext i32 %139 to i64
  tail call void @__ioc_report_sub_overflow(i32 2244, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %143, i64 1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %while.end5, %ioc_bb7
  %144 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %141, i32 %0)
  %145 = extractvalue { i32, i1 } %144, 0
  %146 = extractvalue { i32, i1 } %144, 1
  br i1 %146, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  %147 = sext i32 %0 to i64
  %148 = sext i32 %141 to i64
  tail call void @__ioc_report_sub_overflow(i32 2244, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %148, i64 %147, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %149 = icmp ult i32 %145, 16777216
  br i1 %149, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont10
  %150 = sext i32 %145 to i64
  tail call void @__ioc_report_shl_strict(i32 2244, i32 66, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %150, i64 7, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %cont10
  %shl = shl i32 %145, 7
  %or = or i32 %shl, 1
  %151 = icmp sgt i32 %or, -1
  br i1 %151, label %cont18, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont14
  %152 = sext i32 %or to i64
  tail call void @__ioc_report_conversion(i32 2244, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %152, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %cont14, %ioc_bb15
  %shl19 = shl i32 %or, 5
  %or20 = or i32 %shl19, 17
  %153 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %153, i32 %0
  store i32 %or20, i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %while.cond, %cont18
  %retval.0 = phi i32 [ 1, %cont18 ], [ %retval.0.i, %while.cond ]
  ret i32 %retval.0
}

define internal fastcc void @ecispace(i32 %p, i32 %n) nounwind {
entry:
  %0 = load i32* @eclen, align 4, !tbaa !3
  %1 = load i32* @ecused, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %1 to i64
  %6 = sext i32 %0 to i64
  tail call void @__ioc_report_sub_overflow(i32 239, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %cmp = icmp slt i32 %3, %n
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %cont
  %7 = load i32* @eclen, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %7, 32768
  %cond = select i1 %cmp1, i32 %7, i32 1024
  %cmp2 = icmp slt i32 %cond, %n
  %n.cond = select i1 %cmp2, i32 %n, i32 %cond
  %8 = load i32** @ecbuf, align 4, !tbaa !0
  %9 = bitcast i32* %8 to i8*
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %n.cond)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  %13 = sext i32 %n.cond to i64
  br i1 %12, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.then
  %14 = sext i32 %7 to i64
  tail call void @__ioc_report_add_overflow(i32 243, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %14, i64 %13, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %if.then, %ioc_bb4
  %15 = icmp sgt i32 %11, -1
  br i1 %15, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cont5
  %16 = sext i32 %11 to i64
  tail call void @__ioc_report_conversion(i32 243, i32 51, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cont5
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  %20 = zext i32 %11 to i64
  tail call void @__ioc_report_mul_overflow(i32 243, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %20, i64 4, i8 5) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  %call = tail call i8* @zrealloc(i8* %9, i32 %18) nounwind
  %21 = bitcast i8* %call to i32*
  store i32* %21, i32** @ecbuf, align 4, !tbaa !0
  %22 = load i32* @eclen, align 4, !tbaa !3
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 %n.cond)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %cont9
  %26 = sext i32 %22 to i64
  tail call void @__ioc_report_add_overflow(i32 244, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %26, i64 %13, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %cont9, %ioc_bb10
  store i32 %24, i32* @eclen, align 4, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %cont, %cont11
  %27 = load i32* @ecused, align 4, !tbaa !3
  %28 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %27, i32 %p)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %if.end12
  %31 = sext i32 %p to i64
  %32 = sext i32 %27 to i64
  tail call void @__ioc_report_sub_overflow(i32 246, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %32, i64 %31, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %if.end12, %ioc_bb13
  %cmp15 = icmp sgt i32 %29, 0
  br i1 %cmp15, label %cont21, label %if.end24

cont21:                                           ; preds = %cont14
  %33 = load i32** @ecbuf, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i32* %33, i32 %p
  %add.ptr.sum = add i32 %n, %p
  %add.ptr17 = getelementptr inbounds i32* %33, i32 %add.ptr.sum
  %34 = bitcast i32* %add.ptr17 to i8*
  %35 = bitcast i32* %add.ptr to i8*
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %cont21
  %39 = zext i32 %29 to i64
  tail call void @__ioc_report_mul_overflow(i32 247, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %39, i64 4, i8 5) nounwind
  br label %cont23

cont23:                                           ; preds = %cont21, %ioc_bb22
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %34, i8* %35, i32 %37, i32 4, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %cont14, %cont23
  %40 = load i32* @ecused, align 4, !tbaa !3
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 %n)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %if.end24
  %44 = sext i32 %n to i64
  %45 = sext i32 %40 to i64
  tail call void @__ioc_report_add_overflow(i32 248, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %45, i64 %44, i8 13) nounwind
  br label %cont26

cont26:                                           ; preds = %if.end24, %ioc_bb25
  store i32 %42, i32* @ecused, align 4, !tbaa !3
  %h.05.i = load %struct.heredocs** @hdocs, align 4
  %tobool6.i = icmp eq %struct.heredocs* %h.05.i, null
  br i1 %tobool6.i, label %ecadjusthere.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont26
  %46 = sext i32 %n to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %h.07.i = phi %struct.heredocs* [ %h.05.i, %for.body.lr.ph.i ], [ %h.0.i, %for.inc.i ]
  %pc.i = getelementptr inbounds %struct.heredocs* %h.07.i, i32 0, i32 2
  %47 = load i32* %pc.i, align 4, !tbaa !3
  %cmp.i = icmp slt i32 %47, %p
  br i1 %cmp.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 %n) nounwind
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %if.then.i
  %51 = sext i32 %47 to i64
  tail call void @__ioc_report_add_overflow(i32 232, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %51, i64 %46, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %if.then.i
  store i32 %49, i32* %pc.i, align 4, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %cont.i, %for.body.i
  %next.i = getelementptr inbounds %struct.heredocs* %h.07.i, i32 0, i32 0
  %h.0.i = load %struct.heredocs** %next.i, align 4
  %tobool.i = icmp eq %struct.heredocs* %h.0.i, null
  br i1 %tobool.i, label %ecadjusthere.exit, label %for.body.i

ecadjusthere.exit:                                ; preds = %for.inc.i, %cont26
  ret void
}

declare i8* @zrealloc(i8*, i32)

declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @testlex()

define internal fastcc i32 @par_cond_double(i8* %a, i8* %b) nounwind {
entry:
  %0 = load i8* %a, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 45
  br i1 %cmp, label %lor.lhs.false, label %do.body

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8* %a, i32 1
  %1 = load i8* %arrayidx2, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %do.body, label %if.else

do.body:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([36 x i8]* @.str44, i32 0, i32 0), i8* %a) nounwind
  tail call void @herrflush() nounwind
  %2 = load i32* @noerrs, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, 2
  br i1 %cmp3, label %if.end, label %if.then5

if.then5:                                         ; preds = %do.body
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then5
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr inbounds i8* %a, i32 2
  %3 = load i8* %arrayidx6, align 1, !tbaa !1
  %tobool7 = icmp eq i8 %3, 0
  br i1 %tobool7, label %land.lhs.true, label %cont87

land.lhs.true:                                    ; preds = %if.else
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([25 x i8]* @.str45, i32 0, i32 1) to i32), i32 ptrtoint ([25 x i8]* @.str45 to i32))
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %ioc_bb, label %cont9

ioc_bb:                                           ; preds = %land.lhs.true
  tail call void @__ioc_report_sub_overflow(i32 2399, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([25 x i8]* @.str45, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([25 x i8]* @.str45 to i32) to i64), i8 5) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb, %land.lhs.true
  %call45 = tail call i32 @strspn(i8* %arrayidx2, i8* getelementptr inbounds ([25 x i8]* @.str45, i32 0, i32 0)) nounwind
  %cmp59 = icmp eq i32 %call45, 1
  br i1 %cmp59, label %cont63, label %cont87

cont63:                                           ; preds = %cont9
  %6 = load i8* %arrayidx2, align 1, !tbaa !1
  %conv65 = sext i8 %6 to i32
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %cont73, label %ioc_bb70

ioc_bb70:                                         ; preds = %cont63
  %8 = sext i8 %6 to i64
  tail call void @__ioc_report_conversion(i32 2400, i32 41, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont73

cont73:                                           ; preds = %cont63, %ioc_bb70
  %shl = shl nsw i32 %conv65, 5
  %or = or i32 %shl, 17
  %call74 = tail call fastcc i32 @ecadd(i32 %or)
  %call75 = tail call fastcc i32 @ecstrcode(i8* %b)
  %call76 = tail call fastcc i32 @ecadd(i32 %call75)
  br label %return

cont87:                                           ; preds = %cont9, %if.else
  %call88 = tail call fastcc i32 @ecadd(i32 4657)
  %call89 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call90 = tail call fastcc i32 @ecadd(i32 %call89)
  %call91 = tail call fastcc i32 @ecstrcode(i8* %b)
  %call92 = tail call fastcc i32 @ecadd(i32 %call91)
  br label %return

return:                                           ; preds = %cont87, %cont73, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %cont73 ], [ 1, %cont87 ]
  ret i32 %retval.0
}

define internal fastcc i32 @par_cond_triple(i8* %a, i8* %b, i8* %c) nounwind {
entry:
  %0 = load i8* %b, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2426, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp = icmp eq i8 %0, -117
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %b, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %1, 61
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %arrayidx6 = getelementptr inbounds i8* %b, i32 1
  %2 = load i8* %arrayidx6, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %cont31, label %ioc_bb10

ioc_bb10:                                         ; preds = %land.lhs.true
  tail call void @__ioc_report_conversion(i32 2426, i32 76, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp12 = icmp eq i8 %2, -117
  br i1 %cmp12, label %land.lhs.true19, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %ioc_bb10
  %3 = load i8* %arrayidx6, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %3, 61
  br i1 %cmp17, label %land.lhs.true19, label %if.elsethread-pre-split

land.lhs.true19:                                  ; preds = %lor.lhs.false14, %ioc_bb10
  %arrayidx20 = getelementptr inbounds i8* %b, i32 2
  %4 = load i8* %arrayidx20, align 1, !tbaa !1
  %tobool21 = icmp eq i8 %4, 0
  br i1 %tobool21, label %cont31, label %if.elsethread-pre-split

cont31:                                           ; preds = %land.lhs.true, %land.lhs.true19
  %call = tail call fastcc i32 @ecadd(i32 113)
  %call32 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call33 = tail call fastcc i32 @ecadd(i32 %call32)
  %call34 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call35 = tail call fastcc i32 @ecadd(i32 %call34)
  %5 = load i32* @ecnpats, align 4, !tbaa !3
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  %9 = sext i32 %5 to i64
  br i1 %8, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %cont31
  tail call void @__ioc_report_add_overflow(i32 2430, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %cont31, %ioc_bb36
  store i32 %7, i32* @ecnpats, align 4, !tbaa !3
  %10 = icmp sgt i32 %5, -1
  br i1 %10, label %cont39, label %ioc_bb38

ioc_bb38:                                         ; preds = %cont37
  tail call void @__ioc_report_conversion(i32 2430, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont39

cont39:                                           ; preds = %ioc_bb38, %cont37
  %call40 = tail call fastcc i32 @ecadd(i32 %5)
  br label %return

if.elsethread-pre-split:                          ; preds = %lor.lhs.false14, %land.lhs.true19
  %.pr = load i8* %b, align 1, !tbaa !1
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %lor.lhs.false
  %11 = phi i8 [ %.pr, %if.elsethread-pre-split ], [ %1, %lor.lhs.false ]
  %cmp43 = icmp eq i8 %11, 33
  br i1 %cmp43, label %land.lhs.true45, label %if.else82

land.lhs.true45:                                  ; preds = %if.else
  %arrayidx46 = getelementptr inbounds i8* %b, i32 1
  %12 = load i8* %arrayidx46, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2432, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp50 = icmp eq i8 %12, -117
  br i1 %cmp50, label %land.lhs.true57, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true45
  %13 = load i8* %arrayidx46, align 1, !tbaa !1
  %cmp55 = icmp eq i8 %13, 61
  br i1 %cmp55, label %land.lhs.true57, label %if.else82

land.lhs.true57:                                  ; preds = %lor.lhs.false52, %land.lhs.true45
  %arrayidx58 = getelementptr inbounds i8* %b, i32 2
  %14 = load i8* %arrayidx58, align 1, !tbaa !1
  %tobool59 = icmp eq i8 %14, 0
  br i1 %tobool59, label %cont70, label %if.else82

cont70:                                           ; preds = %land.lhs.true57
  %call71 = tail call fastcc i32 @ecadd(i32 145)
  %call72 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call73 = tail call fastcc i32 @ecadd(i32 %call72)
  %call74 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call75 = tail call fastcc i32 @ecadd(i32 %call74)
  %15 = load i32* @ecnpats, align 4, !tbaa !3
  %16 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  %19 = sext i32 %15 to i64
  br i1 %18, label %ioc_bb76, label %cont77

ioc_bb76:                                         ; preds = %cont70
  tail call void @__ioc_report_add_overflow(i32 2436, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %cont77

cont77:                                           ; preds = %cont70, %ioc_bb76
  store i32 %17, i32* @ecnpats, align 4, !tbaa !3
  %20 = icmp sgt i32 %15, -1
  br i1 %20, label %cont80, label %ioc_bb79

ioc_bb79:                                         ; preds = %cont77
  tail call void @__ioc_report_conversion(i32 2436, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont80

cont80:                                           ; preds = %ioc_bb79, %cont77
  %call81 = tail call fastcc i32 @ecadd(i32 %15)
  br label %return

if.else82:                                        ; preds = %land.lhs.true57, %lor.lhs.false52, %if.else
  %21 = load i8* %b, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2438, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp87 = icmp eq i8 %21, -117
  br i1 %cmp87, label %land.lhs.true94, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.else82
  %22 = load i8* %b, align 1, !tbaa !1
  %cmp92 = icmp eq i8 %22, 61
  br i1 %cmp92, label %land.lhs.true94, label %if.else125

land.lhs.true94:                                  ; preds = %lor.lhs.false89, %if.else82
  %arrayidx95 = getelementptr inbounds i8* %b, i32 1
  %23 = load i8* %arrayidx95, align 1, !tbaa !1
  %cmp97 = icmp eq i8 %23, 126
  br i1 %cmp97, label %land.lhs.true106, label %ioc_bb102

ioc_bb102:                                        ; preds = %land.lhs.true94
  tail call void @__ioc_report_conversion(i32 2438, i32 86, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp104 = icmp eq i8 %23, -106
  br i1 %cmp104, label %land.lhs.true106, label %if.else125thread-pre-split

land.lhs.true106:                                 ; preds = %ioc_bb102, %land.lhs.true94
  %arrayidx107 = getelementptr inbounds i8* %b, i32 2
  %24 = load i8* %arrayidx107, align 1, !tbaa !1
  %tobool108 = icmp eq i8 %24, 0
  br i1 %tobool108, label %cont119, label %if.else125thread-pre-split

cont119:                                          ; preds = %land.lhs.true106
  %call120 = tail call fastcc i32 @ecadd(i32 529)
  %call121 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call122 = tail call fastcc i32 @ecadd(i32 %call121)
  %call123 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call124 = tail call fastcc i32 @ecadd(i32 %call123)
  br label %return

if.else125thread-pre-split:                       ; preds = %land.lhs.true106, %ioc_bb102
  %.pr241 = load i8* %b, align 1, !tbaa !1
  br label %if.else125

if.else125:                                       ; preds = %if.else125thread-pre-split, %lor.lhs.false89
  %25 = phi i8 [ %.pr241, %if.else125thread-pre-split ], [ %22, %lor.lhs.false89 ]
  %cmp128 = icmp eq i8 %25, 45
  br i1 %cmp128, label %if.then130, label %if.else173

if.then130:                                       ; preds = %if.else125
  %add.ptr = getelementptr inbounds i8* %b, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %if.then130
  %t0.07.i = phi i32 [ 0, %if.then130 ], [ %28, %for.cond.backedge.i ]
  %arrayidx.i = getelementptr inbounds [10 x i8*]* @get_cond_num.condstrs, i32 0, i32 %t0.07.i
  %26 = load i8** %arrayidx.i, align 4, !tbaa !0
  %call.i = tail call i32 @strcmp(i8* %26, i8* %add.ptr) nounwind
  %tobool2.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.i, label %get_cond_num.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.07.i, i32 1) nounwind
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb.i, label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %ioc_bb.i, %for.inc.i
  %tobool.i = icmp eq i32 %28, 9
  br i1 %tobool.i, label %cont165, label %for.body.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %30 = sext i32 %t0.07.i to i64
  tail call void @__ioc_report_add_overflow(i32 2416, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %for.cond.backedge.i

get_cond_num.exit:                                ; preds = %for.body.i
  %cmp134 = icmp sgt i32 %t0.07.i, -1
  br i1 %cmp134, label %cont138, label %cont165

cont138:                                          ; preds = %get_cond_num.exit
  %31 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.07.i, i32 7)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb139, label %cont144

ioc_bb139:                                        ; preds = %cont138
  %34 = sext i32 %t0.07.i to i64
  tail call void @__ioc_report_add_overflow(i32 2447, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %34, i64 7, i8 13) nounwind
  br label %cont144

cont144:                                          ; preds = %cont138, %ioc_bb139
  %35 = icmp sgt i32 %32, -1
  br i1 %35, label %cont149, label %ioc_bb146

ioc_bb146:                                        ; preds = %cont144
  %36 = sext i32 %32 to i64
  tail call void @__ioc_report_conversion(i32 2447, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %36, i8 1) nounwind
  br label %cont149

cont149:                                          ; preds = %cont144, %ioc_bb146
  %shl = shl i32 %32, 5
  %or = or i32 %shl, 17
  %call150 = tail call fastcc i32 @ecadd(i32 %or)
  %call151 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call152 = tail call fastcc i32 @ecadd(i32 %call151)
  %call153 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call154 = tail call fastcc i32 @ecadd(i32 %call153)
  br label %return

cont165:                                          ; preds = %for.cond.backedge.i, %get_cond_num.exit
  %call166 = tail call fastcc i32 @ecadd(i32 593)
  %call167 = tail call fastcc i32 @ecstrcode(i8* %b)
  %call168 = tail call fastcc i32 @ecadd(i32 %call167)
  %call169 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call170 = tail call fastcc i32 @ecadd(i32 %call169)
  %call171 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call172 = tail call fastcc i32 @ecadd(i32 %call171)
  br label %return

if.else173:                                       ; preds = %if.else125
  %37 = load i8* %a, align 1, !tbaa !1
  %cmp176 = icmp eq i8 %37, 45
  br i1 %cmp176, label %land.lhs.true178, label %do.body

land.lhs.true178:                                 ; preds = %if.else173
  %arrayidx179 = getelementptr inbounds i8* %a, i32 1
  %38 = load i8* %arrayidx179, align 1, !tbaa !1
  %tobool181 = icmp eq i8 %38, 0
  br i1 %tobool181, label %do.body, label %cont192

cont192:                                          ; preds = %land.lhs.true178
  %call193 = tail call fastcc i32 @ecadd(i32 8753)
  %call194 = tail call fastcc i32 @ecstrcode(i8* %a)
  %call195 = tail call fastcc i32 @ecadd(i32 %call194)
  %call196 = tail call fastcc i32 @ecstrcode(i8* %b)
  %call197 = tail call fastcc i32 @ecadd(i32 %call196)
  %call198 = tail call fastcc i32 @ecstrcode(i8* %c)
  %call199 = tail call fastcc i32 @ecadd(i32 %call198)
  br label %return

do.body:                                          ; preds = %land.lhs.true178, %if.else173
  tail call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([23 x i8]* @.str34, i32 0, i32 0), i8* %b) nounwind
  tail call void @herrflush() nounwind
  %39 = load i32* @noerrs, align 4, !tbaa !3
  %cmp201 = icmp eq i32 %39, 2
  br i1 %cmp201, label %if.end204, label %if.then203

if.then203:                                       ; preds = %do.body
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %if.end204

if.end204:                                        ; preds = %do.body, %if.then203
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont39, %cont119, %cont149, %cont165, %cont192, %cont80, %if.end204
  %retval.0 = phi i32 [ 0, %if.end204 ], [ 1, %cont80 ], [ 1, %cont192 ], [ 1, %cont165 ], [ 1, %cont149 ], [ 1, %cont119 ], [ 1, %cont39 ]
  ret i32 %retval.0
}

define internal fastcc i32 @ecadd(i32 %c) nounwind {
entry:
  %0 = load i32* @eclen, align 4, !tbaa !3
  %1 = load i32* @ecused, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %1 to i64
  %6 = sext i32 %0 to i64
  tail call void @__ioc_report_sub_overflow(i32 255, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cont
  %7 = load i32* @eclen, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %7, 32768
  %cond = select i1 %cmp1, i32 %7, i32 1024
  %8 = load i32** @ecbuf, align 4, !tbaa !0
  %9 = bitcast i32* %8 to i8*
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %cond)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  %13 = sext i32 %cond to i64
  br i1 %12, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %if.then
  %14 = sext i32 %7 to i64
  tail call void @__ioc_report_add_overflow(i32 257, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %14, i64 %13, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %if.then, %ioc_bb2
  %15 = icmp sgt i32 %11, -1
  br i1 %15, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont3
  %16 = sext i32 %11 to i64
  tail call void @__ioc_report_conversion(i32 257, i32 51, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont3
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %cont5
  %20 = zext i32 %11 to i64
  tail call void @__ioc_report_mul_overflow(i32 257, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %20, i64 4, i8 5) nounwind
  br label %cont7

cont7:                                            ; preds = %cont5, %ioc_bb6
  %call = tail call i8* @zrealloc(i8* %9, i32 %18) nounwind
  %21 = bitcast i8* %call to i32*
  store i32* %21, i32** @ecbuf, align 4, !tbaa !0
  %22 = load i32* @eclen, align 4, !tbaa !3
  %23 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 %cond)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  %26 = sext i32 %22 to i64
  tail call void @__ioc_report_add_overflow(i32 258, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %26, i64 %13, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  store i32 %24, i32* @eclen, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont, %cont9
  %27 = load i32* @ecused, align 4, !tbaa !3
  %28 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %28, i32 %27
  store i32 %c, i32* %arrayidx, align 4, !tbaa !3
  %29 = load i32* @ecused, align 4, !tbaa !3
  %30 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %if.end
  %33 = sext i32 %29 to i64
  tail call void @__ioc_report_add_overflow(i32 261, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %if.end, %ioc_bb10
  store i32 %31, i32* @ecused, align 4, !tbaa !3
  %34 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %31, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont11
  %37 = sext i32 %31 to i64
  tail call void @__ioc_report_sub_overflow(i32 262, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %cont13

cont13:                                           ; preds = %cont11, %ioc_bb12
  ret i32 %35
}

declare i32 @strspn(i8* nocapture, i8* nocapture) nounwind readonly

declare void @herrflush()

declare i32 @countlinknodes(%union.linkroot*)

declare i32 @has_token(i8*)

define internal fastcc i32 @par_sublist(i32* nocapture %complex) nounwind {
entry:
  %c = alloca i32, align 4
  store i32 0, i32* %c, align 4, !tbaa !3
  %call = call fastcc i32 @ecadd(i32 0)
  %0 = load i32* @tok, align 4, !tbaa !3
  switch i32 %0, label %par_sublist2.exit [
    i32 44, label %if.then.i
    i32 39, label %if.then2.i
  ]

if.then.i:                                        ; preds = %entry
  store i32 1, i32* %c, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %par_sublist2.exit

if.then2.i:                                       ; preds = %entry
  store i32 1, i32* %c, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %par_sublist2.exit

par_sublist2.exit:                                ; preds = %entry, %if.then.i, %if.then2.i
  %f.0.i = phi i32 [ 4, %if.then.i ], [ 8, %if.then2.i ], [ 0, %entry ]
  %call.i = call fastcc i32 @par_pline(i32* %c) nounwind
  %1 = or i32 %call.i, %f.0.i
  %2 = icmp eq i32 %1, 0
  %retval.0.i = select i1 %2, i32 -1, i32 %f.0.i
  %3 = load i32* @ecused, align 4, !tbaa !3
  br i1 %2, label %if.else21, label %if.then

if.then:                                          ; preds = %par_sublist2.exit
  %4 = load i32* %c, align 4, !tbaa !3
  %5 = load i32* %complex, align 4, !tbaa !3
  %or = or i32 %5, %4
  store i32 %or, i32* %complex, align 4, !tbaa !3
  %6 = load i32* @tok, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %6, 8
  %.off = add i32 %6, -8
  %7 = icmp ult i32 %.off, 2
  br i1 %7, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %cond = select i1 %cmp4, i32 11, i32 12
  call void @cmdpush(i32 %cond) nounwind
  call void @zshlex() nounwind
  %8 = load i32* @tok, align 4, !tbaa !3
  %cmp830 = icmp eq i32 %8, 1
  br i1 %cmp830, label %while.body, label %while.end

while.body:                                       ; preds = %if.then6, %while.body
  call void @zshlex() nounwind
  %9 = load i32* @tok, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.then6
  %call9 = call fastcc i32 @par_sublist(i32* %complex)
  %tobool = icmp eq i32 %call9, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.end
  %cond11 = select i1 %cmp4, i32 2, i32 1
  br label %cond.end

cond.end:                                         ; preds = %while.end, %cond.true
  %cond12 = phi i32 [ %cond11, %cond.true ], [ 0, %while.end ]
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %cond.end
  %13 = sext i32 %3 to i64
  call void @__ioc_report_sub_overflow(i32 618, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %cond.end, %ioc_bb13
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %11, i32 %call)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb15, label %cont16

ioc_bb15:                                         ; preds = %cont14
  %17 = sext i32 %call to i64
  %18 = sext i32 %11 to i64
  call void @__ioc_report_sub_overflow(i32 618, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %18, i64 %17, i8 13) nounwind
  br label %cont16

cont16:                                           ; preds = %cont14, %ioc_bb15
  %19 = load i32* %c, align 4, !tbaa !3
  call fastcc void @set_sublist_code(i32 %call, i32 %cond12, i32 %retval.0.i, i32 %15, i32 %19)
  call void @cmdpop() nounwind
  br label %return

if.else:                                          ; preds = %if.then
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb17, label %cont18

ioc_bb17:                                         ; preds = %if.else
  %23 = sext i32 %3 to i64
  call void @__ioc_report_sub_overflow(i32 622, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %23, i64 1, i8 13) nounwind
  br label %cont18

cont18:                                           ; preds = %if.else, %ioc_bb17
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %21, i32 %call)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %cont18
  %27 = sext i32 %call to i64
  %28 = sext i32 %21 to i64
  call void @__ioc_report_sub_overflow(i32 622, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %28, i64 %27, i8 13) nounwind
  br label %cont20

cont20:                                           ; preds = %cont18, %ioc_bb19
  %29 = load i32* %c, align 4, !tbaa !3
  call fastcc void @set_sublist_code(i32 %call, i32 0, i32 %retval.0.i, i32 %25, i32 %29)
  br label %return

if.else21:                                        ; preds = %par_sublist2.exit
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 -1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %if.else21
  %33 = sext i32 %3 to i64
  call void @__ioc_report_add_overflow(i32 626, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %33, i64 -1, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %if.else21, %ioc_bb22
  store i32 %31, i32* @ecused, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont16, %cont20, %cont23
  %retval.0 = phi i32 [ 0, %cont23 ], [ 1, %cont20 ], [ 1, %cont16 ]
  ret i32 %retval.0
}

define internal fastcc void @set_list_code(i32 %p, i32 %type, i32 %complex) nounwind {
entry:
  %tobool = icmp eq i32 %complex, 0
  br i1 %tobool, label %cont2, label %cont78

cont2:                                            ; preds = %entry
  switch i32 %type, label %cont78 [
    i32 2, label %land.lhs.true12
    i32 18, label %land.lhs.true12
  ]

land.lhs.true12:                                  ; preds = %cont2, %cont2
  %0 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p, i32 1)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  %3 = sext i32 %p to i64
  br i1 %2, label %ioc_bb13, label %cont16

ioc_bb13:                                         ; preds = %land.lhs.true12
  tail call void @__ioc_report_add_overflow(i32 517, i32 77, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb13, %land.lhs.true12
  %4 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i32 %1
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %and = and i32 %5, 96
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %if.then, label %cont78

if.then:                                          ; preds = %cont16
  br i1 %2, label %ioc_bb22, label %cont26

ioc_bb22:                                         ; preds = %if.then
  tail call void @__ioc_report_add_overflow(i32 518, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  %.pre = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx24.phi.trans.insert = getelementptr inbounds i32* %.pre, i32 %1
  %.pre105 = load i32* %arrayidx24.phi.trans.insert, align 4, !tbaa !3
  br label %cont26

cont26:                                           ; preds = %ioc_bb22, %if.then
  %6 = phi i32 [ %.pre105, %ioc_bb22 ], [ %5, %if.then ]
  %and33 = and i32 %6, 512
  %lnot = icmp eq i32 %and33, 0
  %7 = load i32* @ecused, align 4, !tbaa !3
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 2)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %cont26
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_sub_overflow(i32 519, i32 69, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %11, i64 2, i8 13) nounwind
  br label %cont42

cont42:                                           ; preds = %cont26, %ioc_bb41
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %9, i32 %p)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb43, label %cont44

ioc_bb43:                                         ; preds = %cont42
  %15 = sext i32 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 519, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %15, i64 %3, i8 13) nounwind
  br label %cont44

cont44:                                           ; preds = %cont42, %ioc_bb43
  %16 = icmp ult i32 %13, 33554432
  br i1 %16, label %cont48, label %ioc_bb47

ioc_bb47:                                         ; preds = %cont44
  %17 = sext i32 %13 to i64
  tail call void @__ioc_report_shl_strict(i32 519, i32 77, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %17, i64 6, i8 13) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb47, %cont44
  %shl = shl i32 %13, 6
  %or = or i32 %shl, %type
  %or49 = or i32 %or, 32
  %18 = icmp sgt i32 %or49, -1
  br i1 %18, label %cont53, label %ioc_bb50

ioc_bb50:                                         ; preds = %cont48
  %19 = sext i32 %or49 to i64
  tail call void @__ioc_report_conversion(i32 519, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont53

cont53:                                           ; preds = %cont48, %ioc_bb50
  %shl54 = shl i32 %or49, 5
  %or55 = or i32 %shl54, 1
  %20 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx56 = getelementptr inbounds i32* %20, i32 %p
  store i32 %or55, i32* %arrayidx56, align 4, !tbaa !3
  br i1 %2, label %ioc_bb57, label %cont58

ioc_bb57:                                         ; preds = %cont53
  tail call void @__ioc_report_add_overflow(i32 520, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont58

cont58:                                           ; preds = %cont53, %ioc_bb57
  %21 = load i32* @ecused, align 4, !tbaa !3
  %22 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %21, i32 %1) nounwind
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %cont58
  %25 = sext i32 %1 to i64
  %26 = sext i32 %21 to i64
  tail call void @__ioc_report_sub_overflow(i32 268, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %26, i64 %25, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %cont58
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %23, i32 1) nounwind
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb1.i, label %cont2.i

ioc_bb1.i:                                        ; preds = %cont.i
  %30 = sext i32 %23 to i64
  tail call void @__ioc_report_sub_overflow(i32 268, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont2.i

cont2.i:                                          ; preds = %ioc_bb1.i, %cont.i
  %cmp.i = icmp sgt i32 %28, 0
  br i1 %cmp.i, label %cont6.i, label %if.end.i

cont6.i:                                          ; preds = %cont2.i
  %31 = load i32** @ecbuf, align 4, !tbaa !0
  %add.ptr.i = getelementptr inbounds i32* %31, i32 %1
  %32 = bitcast i32* %add.ptr.i to i8*
  %add.ptr.sum.i = add i32 %1, 1
  %add.ptr4.i = getelementptr inbounds i32* %31, i32 %add.ptr.sum.i
  %33 = bitcast i32* %add.ptr4.i to i8*
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) nounwind
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb7.i, label %cont8.i

ioc_bb7.i:                                        ; preds = %cont6.i
  %37 = zext i32 %28 to i64
  tail call void @__ioc_report_mul_overflow(i32 270, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %37, i64 4, i8 5) nounwind
  br label %cont8.i

cont8.i:                                          ; preds = %ioc_bb7.i, %cont6.i
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %32, i8* %33, i32 %35, i32 4, i1 false) nounwind
  br label %if.end.i

if.end.i:                                         ; preds = %cont2.i, %cont8.i
  %38 = load i32* @ecused, align 4, !tbaa !3
  %39 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 -1) nounwind
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %if.end.i
  %42 = sext i32 %38 to i64
  tail call void @__ioc_report_add_overflow(i32 271, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %42, i64 -1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %if.end.i
  store i32 %40, i32* @ecused, align 4, !tbaa !3
  %h.05.i.i = load %struct.heredocs** @hdocs, align 4
  %tobool6.i.i = icmp eq %struct.heredocs* %h.05.i.i, null
  br i1 %tobool6.i.i, label %ecdel.exit, label %for.body.i.i

for.body.i.i:                                     ; preds = %cont10.i, %for.inc.i.i
  %h.07.i.i = phi %struct.heredocs* [ %h.0.i.i, %for.inc.i.i ], [ %h.05.i.i, %cont10.i ]
  %pc.i.i = getelementptr inbounds %struct.heredocs* %h.07.i.i, i32 0, i32 2
  %43 = load i32* %pc.i.i, align 4, !tbaa !3
  %cmp.i.i = icmp slt i32 %43, %1
  br i1 %cmp.i.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %44 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 -1) nounwind
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb.i.i, label %cont.i.i

ioc_bb.i.i:                                       ; preds = %if.then.i.i
  %47 = sext i32 %43 to i64
  tail call void @__ioc_report_add_overflow(i32 232, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %47, i64 -1, i8 13) nounwind
  br label %cont.i.i

cont.i.i:                                         ; preds = %ioc_bb.i.i, %if.then.i.i
  store i32 %45, i32* %pc.i.i, align 4, !tbaa !3
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cont.i.i, %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.heredocs* %h.07.i.i, i32 0, i32 0
  %h.0.i.i = load %struct.heredocs** %next.i.i, align 4
  %tobool.i.i = icmp eq %struct.heredocs* %h.0.i.i, null
  br i1 %tobool.i.i, label %ecdel.exit, label %for.body.i.i

ecdel.exit:                                       ; preds = %for.inc.i.i, %cont10.i
  br i1 %lnot, label %if.then60, label %if.end87

if.then60:                                        ; preds = %ecdel.exit
  br i1 %2, label %ioc_bb70, label %cont68.thread102

cont68.thread102:                                 ; preds = %if.then60
  %48 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx63103 = getelementptr inbounds i32* %48, i32 %1
  %49 = load i32* %arrayidx63103, align 4, !tbaa !3
  br label %cont71

ioc_bb70:                                         ; preds = %if.then60
  tail call void @__ioc_report_add_overflow(i32 522, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  %50 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx6398 = getelementptr inbounds i32* %50, i32 %1
  %51 = load i32* %arrayidx6398, align 4, !tbaa !3
  tail call void @__ioc_report_add_overflow(i32 522, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  %.pre106 = load i32** @ecbuf, align 4, !tbaa !0
  br label %cont71

cont71:                                           ; preds = %cont68.thread102, %ioc_bb70
  %52 = phi i32* [ %.pre106, %ioc_bb70 ], [ %48, %cont68.thread102 ]
  %shr66100.in = phi i32 [ %51, %ioc_bb70 ], [ %49, %cont68.thread102 ]
  %shr66100 = lshr i32 %shr66100.in, 6
  %arrayidx72 = getelementptr inbounds i32* %52, i32 %1
  store i32 %shr66100, i32* %arrayidx72, align 4, !tbaa !3
  br label %if.end87

cont78:                                           ; preds = %cont16, %entry, %cont2
  %53 = icmp sgt i32 %type, -1
  br i1 %53, label %cont83, label %ioc_bb80

ioc_bb80:                                         ; preds = %cont78
  %54 = sext i32 %type to i64
  tail call void @__ioc_report_conversion(i32 525, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %54, i8 1) nounwind
  br label %cont83

cont83:                                           ; preds = %cont78, %ioc_bb80
  %shl84 = shl i32 %type, 5
  %or85 = or i32 %shl84, 1
  %55 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32* %55, i32 %p
  store i32 %or85, i32* %arrayidx86, align 4, !tbaa !3
  br label %if.end87

if.end87:                                         ; preds = %ecdel.exit, %cont71, %cont83
  ret void
}

declare void @cmdpush(i32)

define internal fastcc void @set_sublist_code(i32 %p, i32 %type, i32 %flags, i32 %skip, i32 %complex) nounwind {
entry:
  %tobool = icmp eq i32 %complex, 0
  br i1 %tobool, label %cont13, label %cont

cont:                                             ; preds = %entry
  %or = or i32 %flags, %type
  %0 = icmp ult i32 %skip, 67108864
  br i1 %0, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont
  %1 = sext i32 %skip to i64
  tail call void @__ioc_report_shl_strict(i32 533, i32 66, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %1, i64 5, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %cont
  %shl = shl i32 %skip, 5
  %or5 = or i32 %or, %shl
  %2 = icmp sgt i32 %or5, -1
  br i1 %2, label %cont9, label %ioc_bb6

ioc_bb6:                                          ; preds = %cont4
  %3 = sext i32 %or5 to i64
  tail call void @__ioc_report_conversion(i32 533, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %cont4, %ioc_bb6
  %shl10 = shl i32 %or5, 5
  %or11 = or i32 %shl10, 2
  %4 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i32 %p
  store i32 %or11, i32* %arrayidx, align 4, !tbaa !3
  br label %if.end

cont13:                                           ; preds = %entry
  %5 = icmp ult i32 %skip, 67108864
  br i1 %5, label %cont20, label %ioc_bb19

ioc_bb19:                                         ; preds = %cont13
  %6 = sext i32 %skip to i64
  tail call void @__ioc_report_shl_strict(i32 535, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %6, i64 5, i8 13) nounwind
  br label %cont20

cont20:                                           ; preds = %ioc_bb19, %cont13
  %shl21 = shl i32 %skip, 5
  %or14 = or i32 %type, %flags
  %or15 = or i32 %or14, %shl21
  %or22 = or i32 %or15, 16
  %7 = icmp sgt i32 %or22, -1
  br i1 %7, label %cont27, label %ioc_bb24

ioc_bb24:                                         ; preds = %cont20
  %8 = sext i32 %or22 to i64
  tail call void @__ioc_report_conversion(i32 535, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont27

cont27:                                           ; preds = %cont20, %ioc_bb24
  %shl28 = shl i32 %or22, 5
  %or29 = or i32 %shl28, 2
  %9 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx30 = getelementptr inbounds i32* %9, i32 %p
  store i32 %or29, i32* %arrayidx30, align 4, !tbaa !3
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p, i32 1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  %13 = sext i32 %p to i64
  br i1 %12, label %ioc_bb39, label %cont37.thread52

cont37.thread52:                                  ; preds = %cont27
  %arrayidx3353 = getelementptr inbounds i32* %9, i32 %11
  %14 = load i32* %arrayidx3353, align 4, !tbaa !3
  br label %cont40

ioc_bb39:                                         ; preds = %cont27
  tail call void @__ioc_report_add_overflow(i32 536, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  %15 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx3348 = getelementptr inbounds i32* %15, i32 %11
  %16 = load i32* %arrayidx3348, align 4, !tbaa !3
  tail call void @__ioc_report_add_overflow(i32 536, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind
  %.pre = load i32** @ecbuf, align 4, !tbaa !0
  br label %cont40

cont40:                                           ; preds = %cont37.thread52, %ioc_bb39
  %17 = phi i32* [ %.pre, %ioc_bb39 ], [ %9, %cont37.thread52 ]
  %shr50.in = phi i32 [ %16, %ioc_bb39 ], [ %14, %cont37.thread52 ]
  %shr50 = lshr i32 %shr50.in, 6
  %arrayidx41 = getelementptr inbounds i32* %17, i32 %11
  store i32 %shr50, i32* %arrayidx41, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cont40, %cont9
  ret void
}

declare void @cmdpop()

define internal fastcc i32 @par_pline(i32* %complex) nounwind {
entry:
  %0 = load i64* @toklineno, align 8, !tbaa !5
  %call = tail call fastcc i32 @ecadd(i32 0)
  %call1 = tail call fastcc i32 @par_cmd(i32* %complex)
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @ecused, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 -1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %if.then
  %5 = sext i32 %1 to i64
  tail call void @__ioc_report_add_overflow(i32 663, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %5, i64 -1, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %if.then, %ioc_bb2
  store i32 %3, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32* @tok, align 4, !tbaa !3
  switch i32 %6, label %cont148 [
    i32 25, label %if.then4
    i32 26, label %if.then39
  ]

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %complex, align 4, !tbaa !3
  tail call void @cmdpush(i32 13) nounwind
  tail call void @zshlex() nounwind
  %7 = load i32* @tok, align 4, !tbaa !3
  %cmp5214 = icmp eq i32 %7, 1
  br i1 %cmp5214, label %while.body, label %cont7

while.body:                                       ; preds = %if.then4, %while.body
  tail call void @zshlex() nounwind
  %8 = load i32* @tok, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %while.body, label %cont7

cont7:                                            ; preds = %while.body, %if.then4
  %cmp8 = icmp sgt i64 %0, -1
  br i1 %cmp8, label %cond.true, label %cont18

cond.true:                                        ; preds = %cont7
  %9 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %10 = extractvalue { i64, i1 } %9, 0
  %11 = extractvalue { i64, i1 } %9, 1
  br i1 %11, label %ioc_bb9, label %cont12

ioc_bb9:                                          ; preds = %cond.true
  tail call void @__ioc_report_add_overflow(i32 672, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %0, i64 1, i8 14) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb9, %cond.true
  %12 = icmp ult i64 %10, 4611686018427387904
  br i1 %12, label %cont14, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont12
  tail call void @__ioc_report_shl_strict(i32 672, i32 77, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %10, i64 1, i8 14) nounwind
  br label %cont14

cont14:                                           ; preds = %ioc_bb13, %cont12
  %shl = shl i64 %10, 1
  %or = or i64 %shl, 1
  %13 = icmp ult i64 %or, 4294967296
  %extract.t212 = trunc i64 %or to i32
  br i1 %13, label %cont18, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont14
  tail call void @__ioc_report_conversion(i32 672, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %or, i8 1) nounwind
  br label %cont18

cont18:                                           ; preds = %cont7, %cont14, %ioc_bb15
  %or203.off0 = phi i32 [ %extract.t212, %cont14 ], [ %extract.t212, %ioc_bb15 ], [ 1, %cont7 ]
  %shl19 = shl i32 %or203.off0, 5
  %or20 = or i32 %shl19, 3
  %14 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %14, i32 %call
  store i32 %or20, i32* %arrayidx, align 4, !tbaa !3
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  %18 = sext i32 %call to i64
  br i1 %17, label %ioc_bb21, label %cont22

ioc_bb21:                                         ; preds = %cont18
  tail call void @__ioc_report_add_overflow(i32 673, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %cont22

cont22:                                           ; preds = %cont18, %ioc_bb21
  tail call fastcc void @ecispace(i32 %16, i32 1)
  %19 = load i32* @ecused, align 4, !tbaa !3
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %19, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %cont22
  %23 = sext i32 %19 to i64
  tail call void @__ioc_report_sub_overflow(i32 674, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %23, i64 1, i8 13) nounwind
  br label %cont24

cont24:                                           ; preds = %cont22, %ioc_bb23
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %21, i32 %call)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %cont24
  %27 = sext i32 %21 to i64
  tail call void @__ioc_report_sub_overflow(i32 674, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 %18, i8 13) nounwind
  br label %cont26

cont26:                                           ; preds = %cont24, %ioc_bb25
  %28 = icmp sgt i32 %25, -1
  br i1 %28, label %cont29, label %ioc_bb28

ioc_bb28:                                         ; preds = %cont26
  %29 = sext i32 %25 to i64
  tail call void @__ioc_report_conversion(i32 674, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %29, i8 1) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb28, %cont26
  br i1 %17, label %ioc_bb30, label %cont31

ioc_bb30:                                         ; preds = %cont29
  tail call void @__ioc_report_add_overflow(i32 674, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %18, i64 1, i8 13) nounwind
  br label %cont31

cont31:                                           ; preds = %cont29, %ioc_bb30
  %30 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32* %30, i32 %16
  store i32 %25, i32* %arrayidx32, align 4, !tbaa !3
  %call33 = tail call fastcc i32 @par_pline(i32* %complex)
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %cont31
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %cont31, %if.then35
  tail call void @cmdpop() nounwind
  br label %return

if.then39:                                        ; preds = %if.end
  %31 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  %34 = sext i32 %call to i64
  br i1 %33, label %ioc_bb40, label %for.cond.preheader

ioc_bb40:                                         ; preds = %if.then39
  tail call void @__ioc_report_add_overflow(i32 683, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %34, i64 1, i8 13) nounwind
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then39, %ioc_bb40
  %35 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx42216 = getelementptr inbounds i32* %35, i32 %32
  %36 = load i32* %arrayidx42216, align 4, !tbaa !3
  %and217 = and i32 %36, 31
  %cmp54218 = icmp eq i32 %and217, 4
  br i1 %cmp54218, label %cont58, label %for.end

cont58:                                           ; preds = %for.cond.preheader, %for.cond.backedge
  %37 = phi i32 [ %50, %for.cond.backedge ], [ %36, %for.cond.preheader ]
  %r.0219 = phi i32 [ %47, %for.cond.backedge ], [ %32, %for.cond.preheader ]
  %and61 = lshr i32 %37, 10
  %38 = and i32 %and61, 1
  %39 = add i32 %38, 3
  %40 = and i32 %and61, 2
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %39, i32 %40)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb78, label %cont79

ioc_bb78:                                         ; preds = %cont58
  %44 = zext i32 %40 to i64
  %45 = sext i32 %39 to i64
  tail call void @__ioc_report_add_overflow(i32 683, i32 114, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %45, i64 %44, i8 13) nounwind
  br label %cont79

cont79:                                           ; preds = %cont58, %ioc_bb78
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.0219, i32 %42)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb80, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont79, %ioc_bb80
  %49 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32* %49, i32 %47
  %50 = load i32* %arrayidx42, align 4, !tbaa !3
  %and = and i32 %50, 31
  %cmp54 = icmp eq i32 %and, 4
  br i1 %cmp54, label %cont58, label %for.end

ioc_bb80:                                         ; preds = %cont79
  %51 = sext i32 %42 to i64
  %52 = sext i32 %r.0219 to i64
  tail call void @__ioc_report_add_overflow(i32 683, i32 70, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %52, i64 %51, i8 13) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %r.0.lcssa = phi i32 [ %32, %for.cond.preheader ], [ %47, %for.cond.backedge ]
  tail call fastcc void @ecispace(i32 %r.0.lcssa, i32 3)
  %53 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32* %53, i32 %r.0.lcssa
  store i32 452, i32* %arrayidx88, align 4, !tbaa !3
  %54 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.0.lcssa, i32 1)
  %55 = extractvalue { i32, i1 } %54, 0
  %56 = extractvalue { i32, i1 } %54, 1
  %57 = sext i32 %r.0.lcssa to i64
  br i1 %56, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %for.end
  tail call void @__ioc_report_add_overflow(i32 687, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %57, i64 1, i8 13) nounwind
  %.pre = load i32** @ecbuf, align 4, !tbaa !0
  br label %cont92

cont92:                                           ; preds = %for.end, %ioc_bb91
  %58 = phi i32* [ %53, %for.end ], [ %.pre, %ioc_bb91 ]
  %arrayidx93 = getelementptr inbounds i32* %58, i32 %55
  store i32 2, i32* %arrayidx93, align 4, !tbaa !3
  %call94 = tail call fastcc i32 @ecstrcode(i8* getelementptr inbounds ([2 x i8]* @.str33, i32 0, i32 0))
  %59 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %r.0.lcssa, i32 2)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br i1 %61, label %ioc_bb95, label %cont96

ioc_bb95:                                         ; preds = %cont92
  tail call void @__ioc_report_add_overflow(i32 688, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %57, i64 2, i8 13) nounwind
  br label %cont96

cont96:                                           ; preds = %cont92, %ioc_bb95
  %62 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx97 = getelementptr inbounds i32* %62, i32 %60
  store i32 %call94, i32* %arrayidx97, align 4, !tbaa !3
  store i32 1, i32* %complex, align 4, !tbaa !3
  tail call void @cmdpush(i32 14) nounwind
  tail call void @zshlex() nounwind
  %63 = load i32* @tok, align 4, !tbaa !3
  %cmp99215 = icmp eq i32 %63, 1
  br i1 %cmp99215, label %while.body101, label %cont104

while.body101:                                    ; preds = %cont96, %while.body101
  tail call void @zshlex() nounwind
  %64 = load i32* @tok, align 4, !tbaa !3
  %cmp99 = icmp eq i32 %64, 1
  br i1 %cmp99, label %while.body101, label %cont104

cont104:                                          ; preds = %while.body101, %cont96
  %cmp105 = icmp sgt i64 %0, -1
  br i1 %cmp105, label %cond.true107, label %cont126

cond.true107:                                     ; preds = %cont104
  %65 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %66 = extractvalue { i64, i1 } %65, 0
  %67 = extractvalue { i64, i1 } %65, 1
  br i1 %67, label %ioc_bb108, label %cont114

ioc_bb108:                                        ; preds = %cond.true107
  tail call void @__ioc_report_add_overflow(i32 694, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %0, i64 1, i8 14) nounwind
  br label %cont114

cont114:                                          ; preds = %ioc_bb108, %cond.true107
  %68 = icmp ult i64 %66, 4611686018427387904
  br i1 %68, label %cont117, label %ioc_bb116

ioc_bb116:                                        ; preds = %cont114
  tail call void @__ioc_report_shl_strict(i32 694, i32 77, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %66, i64 1, i8 14) nounwind
  br label %cont117

cont117:                                          ; preds = %ioc_bb116, %cont114
  %shl118 = shl i64 %66, 1
  %or119 = or i64 %shl118, 1
  %69 = icmp ult i64 %or119, 4294967296
  %extract.t = trunc i64 %or119 to i32
  br i1 %69, label %cont126, label %ioc_bb122

ioc_bb122:                                        ; preds = %cont117
  tail call void @__ioc_report_conversion(i32 694, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %or119, i8 1) nounwind
  br label %cont126

cont126:                                          ; preds = %cont104, %cont117, %ioc_bb122
  %or119207.off0 = phi i32 [ %extract.t, %cont117 ], [ %extract.t, %ioc_bb122 ], [ 1, %cont104 ]
  %shl127 = shl i32 %or119207.off0, 5
  %or128 = or i32 %shl127, 3
  %70 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx129 = getelementptr inbounds i32* %70, i32 %call
  store i32 %or128, i32* %arrayidx129, align 4, !tbaa !3
  br i1 %33, label %ioc_bb130, label %cont131

ioc_bb130:                                        ; preds = %cont126
  tail call void @__ioc_report_add_overflow(i32 695, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %34, i64 1, i8 13) nounwind
  br label %cont131

cont131:                                          ; preds = %cont126, %ioc_bb130
  tail call fastcc void @ecispace(i32 %32, i32 1)
  %71 = load i32* @ecused, align 4, !tbaa !3
  %72 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %71, i32 1)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb132, label %cont133

ioc_bb132:                                        ; preds = %cont131
  %75 = sext i32 %71 to i64
  tail call void @__ioc_report_sub_overflow(i32 696, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %75, i64 1, i8 13) nounwind
  br label %cont133

cont133:                                          ; preds = %cont131, %ioc_bb132
  %76 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %73, i32 %call)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb134, label %cont135

ioc_bb134:                                        ; preds = %cont133
  %79 = sext i32 %73 to i64
  tail call void @__ioc_report_sub_overflow(i32 696, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %79, i64 %34, i8 13) nounwind
  br label %cont135

cont135:                                          ; preds = %cont133, %ioc_bb134
  %80 = icmp sgt i32 %77, -1
  br i1 %80, label %cont138, label %ioc_bb137

ioc_bb137:                                        ; preds = %cont135
  %81 = sext i32 %77 to i64
  tail call void @__ioc_report_conversion(i32 696, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont138

cont138:                                          ; preds = %ioc_bb137, %cont135
  br i1 %33, label %ioc_bb139, label %cont140

ioc_bb139:                                        ; preds = %cont138
  tail call void @__ioc_report_add_overflow(i32 696, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %34, i64 1, i8 13) nounwind
  br label %cont140

cont140:                                          ; preds = %cont138, %ioc_bb139
  %82 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %82, i32 %32
  store i32 %77, i32* %arrayidx141, align 4, !tbaa !3
  %call142 = tail call fastcc i32 @par_pline(i32* %complex)
  %tobool143 = icmp eq i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %cont140
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %if.end145

if.end145:                                        ; preds = %cont140, %if.then144
  tail call void @cmdpop() nounwind
  br label %return

cont148:                                          ; preds = %if.end
  %cmp149 = icmp sgt i64 %0, -1
  br i1 %cmp149, label %cond.true151, label %cont170

cond.true151:                                     ; preds = %cont148
  %83 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1)
  %84 = extractvalue { i64, i1 } %83, 0
  %85 = extractvalue { i64, i1 } %83, 1
  br i1 %85, label %ioc_bb152, label %cont158

ioc_bb152:                                        ; preds = %cond.true151
  tail call void @__ioc_report_add_overflow(i32 704, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %0, i64 1, i8 14) nounwind
  br label %cont158

cont158:                                          ; preds = %ioc_bb152, %cond.true151
  %86 = icmp ult i64 %84, 4611686018427387904
  br i1 %86, label %cont161, label %ioc_bb160

ioc_bb160:                                        ; preds = %cont158
  tail call void @__ioc_report_shl_strict(i32 704, i32 77, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %84, i64 1, i8 14) nounwind
  br label %cont161

cont161:                                          ; preds = %ioc_bb160, %cont158
  %shl162 = shl i64 %84, 1
  %87 = icmp ult i64 %shl162, 4294967296
  br i1 %87, label %cont170, label %ioc_bb166

ioc_bb166:                                        ; preds = %cont161
  tail call void @__ioc_report_conversion(i32 704, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %shl162, i8 1) nounwind
  br label %cont170

cont170:                                          ; preds = %cont148, %cont161, %ioc_bb166
  %cond156208210 = phi i64 [ %84, %cont161 ], [ %84, %ioc_bb166 ], [ 0, %cont148 ]
  %shl171198 = shl i64 %cond156208210, 6
  %shl171 = trunc i64 %shl171198 to i32
  %or172 = or i32 %shl171, 3
  %88 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx173 = getelementptr inbounds i32* %88, i32 %call
  store i32 %or172, i32* %arrayidx173, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont170, %if.end145, %if.end36, %cont3
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 1, %if.end145 ], [ 1, %cont170 ], [ 0, %cont3 ]
  ret i32 %retval.0
}

define internal fastcc i32 @par_cmd(i32* %complex) nounwind {
entry:
  %r.i = alloca i32, align 4
  %p3.i = alloca i8*, align 4
  %str.i = alloca i8*, align 4
  %c299.i = alloca i32, align 4
  %c312.i = alloca i32, align 4
  %c.i133 = alloca i32, align 4
  %c.i = alloca i32, align 4
  %r = alloca i32, align 4
  %0 = load i32* @ecused, align 4, !tbaa !3
  store i32 %0, i32* %r, align 4, !tbaa !3
  %1 = load i32* @tok, align 4, !tbaa !3
  %.off = add i32 %1, -10
  %2 = icmp ult i32 %.off, 15
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %complex, align 4, !tbaa !3
  %3 = load i32* @tok, align 4, !tbaa !3
  %.off79265 = add i32 %3, -10
  %4 = icmp ult i32 %.off79265, 15
  br i1 %4, label %while.body, label %if.end

while.body:                                       ; preds = %if.then, %while.cond.backedge
  %nr.0266 = phi i32 [ %6, %while.cond.backedge ], [ 0, %if.then ]
  %call = call fastcc i32 @par_redir(i32* %r, i8* null)
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nr.0266, i32 %call)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %ioc_bb
  %8 = load i32* @tok, align 4, !tbaa !3
  %.off79 = add i32 %8, -10
  %9 = icmp ult i32 %.off79, 15
  br i1 %9, label %while.body, label %if.end

ioc_bb:                                           ; preds = %while.body
  %10 = sext i32 %call to i64
  %11 = sext i32 %nr.0266 to i64
  call void @__ioc_report_add_overflow(i32 722, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %11, i64 %10, i8 13) nounwind
  br label %while.cond.backedge

if.end:                                           ; preds = %if.then, %while.cond.backedge, %entry
  %12 = phi i32 [ %1, %entry ], [ %3, %if.then ], [ %8, %while.cond.backedge ]
  %nr.1 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %6, %while.cond.backedge ]
  switch i32 %12, label %sw.default [
    i32 52, label %sw.bb
    i32 53, label %sw.bb4
    i32 58, label %sw.bb5
    i32 43, label %sw.bb6
    i32 55, label %sw.bb7
    i32 62, label %sw.bb8
    i32 61, label %sw.bb9
    i32 57, label %sw.bb10
    i32 6, label %sw.bb11
    i32 41, label %sw.bb12
    i32 54, label %sw.bb13
    i32 40, label %sw.bb14
    i32 28, label %cont21
    i32 60, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  call void @cmdpush(i32 0) nounwind
  call fastcc void @par_for(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @cmdpush(i32 15) nounwind
  call fastcc void @par_for(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  store i32 1, i32* %complex, align 4, !tbaa !3
  call void @cmdpush(i32 3) nounwind
  call fastcc void @par_for(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @cmdpush(i32 16) nounwind
  %13 = load i32* @ecused, align 4, !tbaa !3
  %call.i80 = call fastcc i32 @ecadd(i32 0) nounwind
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %14 = load i32* @tok, align 4, !tbaa !3
  %cmp.i81 = icmp eq i32 %14, 34
  br i1 %cmp.i81, label %if.end.i83, label %if.then.i82

if.then.i82:                                      ; preds = %sw.bb6
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end.i83:                                       ; preds = %sw.bb6
  %15 = load i8** @tokstr, align 4, !tbaa !0
  %call1.i = call fastcc i32 @ecstrcode(i8* %15) nounwind
  %call2.i = call fastcc i32 @ecadd(i32 %call1.i) nounwind
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %16 = load i32* @noaliases, align 4, !tbaa !3
  %17 = load i32* @nocorrect, align 4, !tbaa !3
  store i32 1, i32* @nocorrect, align 4, !tbaa !3
  store i32 1, i32* @noaliases, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end.i83
  %18 = load i32* @tok, align 4, !tbaa !3
  switch i32 %18, label %if.then63.i [
    i32 1, label %while.body.i
    i32 34, label %land.lhs.true.i
    i32 41, label %if.end64.i
  ]

while.body.i:                                     ; preds = %while.cond.i
  call void @zshlex() nounwind
  br label %while.cond.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str47 to i32)) nounwind
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb5.i, label %cont8.i

ioc_bb5.i:                                        ; preds = %land.lhs.true.i
  call void @__ioc_report_sub_overflow(i32 1085, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str47 to i32) to i64), i8 5) nounwind
  br label %cont8.i

cont8.i:                                          ; preds = %ioc_bb5.i, %land.lhs.true.i
  %cmp9.i = icmp eq i32 %20, 1
  %22 = load i8** @tokstr, align 4, !tbaa !0
  br i1 %cmp9.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %cont8.i
  %23 = load i8* %22, align 1, !tbaa !1
  %conv.i = zext i8 %23 to i32
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv.i, i32 105) nounwind
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb15.i, label %land.lhs.true21.i

ioc_bb15.i:                                       ; preds = %cond.true.i
  %27 = zext i8 %23 to i64
  call void @__ioc_report_sub_overflow(i32 1085, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 105, i8 13) nounwind
  br label %land.lhs.true21.i

land.lhs.true21.i:                                ; preds = %ioc_bb15.i, %cond.true.i
  %cmp22.i = icmp eq i32 %25, 0
  br i1 %cmp22.i, label %if.then24.i, label %cond.end.i

if.then24.i:                                      ; preds = %land.lhs.true21.i
  %arrayidx25.i = getelementptr inbounds i8* %22, i32 1
  %28 = load i8* %arrayidx25.i, align 1, !tbaa !1
  %conv26.i = zext i8 %28 to i32
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv26.i, i32 110) nounwind
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb28.i, label %land.lhs.true34.i

ioc_bb28.i:                                       ; preds = %if.then24.i
  %32 = zext i8 %28 to i64
  call void @__ioc_report_sub_overflow(i32 1085, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %32, i64 110, i8 13) nounwind
  br label %land.lhs.true34.i

land.lhs.true34.i:                                ; preds = %ioc_bb28.i, %if.then24.i
  %cmp35.i = icmp eq i32 %30, 0
  br i1 %cmp35.i, label %if.then37.i, label %cond.end.i

if.then37.i:                                      ; preds = %land.lhs.true34.i
  %arrayidx38.i = getelementptr inbounds i8* %22, i32 2
  %33 = load i8* %arrayidx38.i, align 1, !tbaa !1
  %conv39.i = zext i8 %33 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %cont8.i
  %call59.i = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %cond.end.i

cond.end.i:                                       ; preds = %land.lhs.true34.i, %land.lhs.true21.i, %cond.false.i, %if.then37.i
  %cond.i = phi i32 [ %call59.i, %cond.false.i ], [ %conv39.i, %if.then37.i ], [ %25, %land.lhs.true21.i ], [ %30, %land.lhs.true34.i ]
  %tobool.i = icmp ne i32 %cond.i, 0
  %34 = load i32* @tok, align 4, !tbaa !3
  %cmp61.i = icmp ne i32 %34, 41
  %or.cond.i = and i1 %tobool.i, %cmp61.i
  br i1 %or.cond.i, label %if.then63.i, label %if.end64.i

if.then63.i:                                      ; preds = %while.cond.i, %cond.end.i
  store i32 %16, i32* @noaliases, align 4, !tbaa !3
  store i32 %17, i32* @nocorrect, align 4, !tbaa !3
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end64.i:                                       ; preds = %while.cond.i, %cond.end.i
  %35 = phi i32 [ %34, %cond.end.i ], [ 41, %while.cond.i ]
  %cmp65.i = icmp eq i32 %35, 41
  store i32 1, i32* @incasepat, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  store i32 %16, i32* @noaliases, align 4, !tbaa !3
  store i32 %17, i32* @nocorrect, align 4, !tbaa !3
  call void @zshlex() nounwind
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str48 to i32)) nounwind
  %cmp65.not.i = xor i1 %cmp65.i, true
  br label %while.cond67.i.outer

while.cond67.i.outer:                             ; preds = %if.end406.i, %if.end64.i
  %n.0.i.ph = phi i32 [ 1, %if.end64.i ], [ %112, %if.end406.i ]
  br label %while.cond67.i

while.cond67.i:                                   ; preds = %while.cond67.i.outer, %while.body70.i
  %37 = load i32* @tok, align 4, !tbaa !3
  switch i32 %37, label %if.end79.i [
    i32 1, label %while.body70.i
    i32 42, label %for.end407.i
    i32 6, label %if.then78.i
  ]

while.body70.i:                                   ; preds = %while.cond67.i
  call void @zshlex() nounwind
  br label %while.cond67.i

if.then78.i:                                      ; preds = %while.cond67.i
  call void @zshlex() nounwind
  %.pr = load i32* @tok, align 4, !tbaa !3
  br label %if.end79.i

if.end79.i:                                       ; preds = %while.cond67.i, %if.then78.i
  %38 = phi i32 [ %.pr, %if.then78.i ], [ %37, %while.cond67.i ]
  %cmp80.i = icmp eq i32 %38, 34
  br i1 %cmp80.i, label %if.end83.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end79.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end83.i:                                       ; preds = %if.end79.i
  %39 = extractvalue { i32, i1 } %36, 1
  br i1 %39, label %ioc_bb86.i, label %cont89.i

ioc_bb86.i:                                       ; preds = %if.end83.i
  call void @__ioc_report_sub_overflow(i32 1115, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str48 to i32) to i64), i8 5) nounwind
  br label %cont89.i

cont89.i:                                         ; preds = %ioc_bb86.i, %if.end83.i
  %40 = load i8** @tokstr, align 4, !tbaa !0
  %call148.i = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0)) nounwind
  %tobool151.i = icmp eq i32 %call148.i, 0
  br i1 %tobool151.i, label %for.end407.i, label %if.end153.i

if.end153.i:                                      ; preds = %cont89.i
  %call154.i = call i8* @dupstring(i8* %40) nounwind
  store i32 0, i32* @incasepat, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %41 = load i32* @tok, align 4, !tbaa !3
  %cmp156.i224 = icmp eq i32 %41, 7
  br i1 %cmp156.i224, label %if.then158.i, label %if.else.i

if.then158.i:                                     ; preds = %for.cond155.i.backedge, %if.end153.i
  %str.0.i.lcssa = phi i8* [ %call154.i, %if.end153.i ], [ %str.0.i.be, %for.cond155.i.backedge ]
  store i32 0, i32* @incasepat, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %cont335.i

if.else.i:                                        ; preds = %if.end153.i, %for.cond155.i.backedge
  %42 = phi i32 [ %54, %for.cond155.i.backedge ], [ %41, %if.end153.i ]
  %str.0.i225 = phi i8* [ %str.0.i.be, %for.cond155.i.backedge ], [ %call154.i, %if.end153.i ]
  %cmp159.i = icmp eq i32 %42, 25
  %call162.i = call i32 @strlen(i8* %str.0.i225) nounwind readonly
  %43 = zext i32 %call162.i to i64
  %44 = icmp sgt i32 %call162.i, -1
  br i1 %cmp159.i, label %if.then161.i, label %if.else179.i

if.then161.i:                                     ; preds = %if.else.i
  br i1 %44, label %cont164.i, label %ioc_bb163.i

ioc_bb163.i:                                      ; preds = %if.then161.i
  call void @__ioc_report_conversion(i32 1131, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %43, i8 0) nounwind
  br label %cont164.i

cont164.i:                                        ; preds = %ioc_bb163.i, %if.then161.i
  store i32 1, i32* @incasepat, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call162.i, i32 2) nounwind
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  %48 = sext i32 %call162.i to i64
  br i1 %47, label %ioc_bb165.i, label %cont166.i

ioc_bb165.i:                                      ; preds = %cont164.i
  call void @__ioc_report_add_overflow(i32 1134, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %48, i64 2, i8 13) nounwind
  br label %cont166.i

cont166.i:                                        ; preds = %ioc_bb165.i, %cont164.i
  %49 = icmp sgt i32 %46, -1
  br i1 %49, label %cont168.i, label %ioc_bb167.i

ioc_bb167.i:                                      ; preds = %cont166.i
  %50 = sext i32 %46 to i64
  call void @__ioc_report_conversion(i32 1134, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %50, i8 1) nounwind
  br label %cont168.i

cont168.i:                                        ; preds = %ioc_bb167.i, %cont166.i
  %call169.i = call i8* @hcalloc(i32 %46) nounwind
  %call170.i = call i8* @strcpy(i8* %call169.i, i8* %str.0.i225) nounwind
  call void @__ioc_report_conversion(i32 1136, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 140, i8 1) nounwind
  %arrayidx173.i = getelementptr inbounds i8* %call169.i, i32 %call162.i
  store i8 -116, i8* %arrayidx173.i, align 1, !tbaa !1
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call162.i, i32 1) nounwind
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb176.i, label %cont177.i

ioc_bb176.i:                                      ; preds = %cont168.i
  call void @__ioc_report_add_overflow(i32 1137, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %48, i64 1, i8 13) nounwind
  br label %cont177.i

cont177.i:                                        ; preds = %ioc_bb176.i, %cont168.i
  %arrayidx178.i = getelementptr inbounds i8* %call169.i, i32 %52
  store i8 0, i8* %arrayidx178.i, align 1, !tbaa !1
  br label %for.cond155.i.backedge

for.cond155.i.backedge:                           ; preds = %cont177.i, %cont325.i
  %str.0.i.be = phi i8* [ %call169.i, %cont177.i ], [ %call326.i, %cont325.i ]
  call void @zshlex() nounwind
  %54 = load i32* @tok, align 4, !tbaa !3
  %cmp156.i = icmp eq i32 %54, 7
  br i1 %cmp156.i, label %if.then158.i, label %if.else.i

if.else179.i:                                     ; preds = %if.else.i
  br i1 %44, label %cont184.i, label %ioc_bb183.i

ioc_bb183.i:                                      ; preds = %if.else179.i
  call void @__ioc_report_conversion(i32 1141, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %43, i8 0) nounwind
  br label %cont184.i

cont184.i:                                        ; preds = %ioc_bb183.i, %if.else179.i
  %tobool185.i = icmp eq i32 %call162.i, 0
  br i1 %tobool185.i, label %for.cond195.i.loopexit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cont184.i
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call162.i, i32 1) nounwind
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  %58 = sext i32 %call162.i to i64
  br i1 %57, label %ioc_bb186.i, label %cont187.i

ioc_bb186.i:                                      ; preds = %lor.lhs.false.i
  call void @__ioc_report_sub_overflow(i32 1142, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont187.i

cont187.i:                                        ; preds = %ioc_bb186.i, %lor.lhs.false.i
  %arrayidx188.i = getelementptr inbounds i8* %str.0.i225, i32 %56
  %59 = load i8* %arrayidx188.i, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1142, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 140, i8 1) nounwind
  %cmp192.i = icmp eq i8 %59, -116
  br i1 %cmp192.i, label %if.else310.i, label %for.cond195.i.loopexit

for.cond195.i.loopexit:                           ; preds = %cont184.i, %cont187.i
  %60 = load i8* %str.0.i225, align 1, !tbaa !1
  %tobool196.i227 = icmp eq i8 %60, 0
  br i1 %tobool196.i227, label %if.then299.i, label %ioc_bb198.i.lr.ph

ioc_bb198.i.lr.ph:                                ; preds = %for.cond195.i.loopexit
  %add.ptr267.i = getelementptr inbounds i8* %str.0.i225, i32 1
  br label %ioc_bb198.i

ioc_bb198.i:                                      ; preds = %ioc_bb198.i.lr.ph, %for.inc.i
  %61 = phi i8 [ %60, %ioc_bb198.i.lr.ph ], [ %84, %for.inc.i ]
  %s.0.i229 = phi i8* [ %str.0.i225, %ioc_bb198.i.lr.ph ], [ %incdec.ptr291.i, %for.inc.i ]
  %pct.0.i228 = phi i32 [ 0, %ioc_bb198.i.lr.ph ], [ %pct.2.i, %for.inc.i ]
  call void @__ioc_report_conversion(i32 1147, i32 34, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp200.i = icmp eq i8 %61, -120
  br i1 %cmp200.i, label %if.then202.i, label %if.end205.i

if.then202.i:                                     ; preds = %ioc_bb198.i
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0.i228, i32 1) nounwind
  %63 = extractvalue { i32, i1 } %62, 0
  %64 = extractvalue { i32, i1 } %62, 1
  br i1 %64, label %ioc_bb203.i, label %if.end205.i

ioc_bb203.i:                                      ; preds = %if.then202.i
  %65 = sext i32 %pct.0.i228 to i64
  call void @__ioc_report_add_overflow(i32 1148, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %65, i64 1, i8 13) nounwind
  br label %if.end205.i

if.end205.i:                                      ; preds = %ioc_bb203.i, %if.then202.i, %ioc_bb198.i
  %pct.1.i = phi i32 [ %pct.0.i228, %ioc_bb198.i ], [ %63, %if.then202.i ], [ %63, %ioc_bb203.i ]
  switch i32 %pct.1.i, label %if.end281.i [
    i32 0, label %for.end.isplit
    i32 1, label %if.then211.i
  ]

if.then211.i:                                     ; preds = %if.end205.i
  %66 = load i8* %s.0.i229, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1152, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 140, i8 1) nounwind
  %cmp215.i = icmp eq i8 %66, -116
  br i1 %cmp215.i, label %while.cond224.i.preheader, label %lor.lhs.false217.i

lor.lhs.false217.i:                               ; preds = %if.then211.i
  %67 = load i8* %s.0.i229, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1152, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp221.i = icmp eq i8 %67, -120
  br i1 %cmp221.i, label %while.cond224.i.preheader, label %if.end238.i

while.cond224.i.preheader:                        ; preds = %if.then211.i, %lor.lhs.false217.i
  %arrayidx225.i = getelementptr inbounds i8* %s.0.i229, i32 1
  br label %while.cond224.i

while.cond224.i:                                  ; preds = %while.cond224.i.preheader, %while.body236.i
  %68 = load i8* %arrayidx225.i, align 1, !tbaa !1
  %69 = icmp sgt i8 %68, -1
  br i1 %69, label %cont228.i, label %ioc_bb227.i

ioc_bb227.i:                                      ; preds = %while.cond224.i
  %70 = sext i8 %68 to i64
  call void @__ioc_report_conversion(i32 1153, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %70, i8 1) nounwind
  br label %cont228.i

cont228.i:                                        ; preds = %ioc_bb227.i, %while.cond224.i
  %idxprom.i = zext i8 %68 to i32
  %arrayidx229.i = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom.i
  %71 = load i16* %arrayidx229.i, align 2, !tbaa !6
  %and.i = and i16 %71, 4
  %tobool235.i = icmp eq i16 %and.i, 0
  br i1 %tobool235.i, label %if.end238.i, label %while.body236.i

while.body236.i:                                  ; preds = %cont228.i
  call void @chuck(i8* %arrayidx225.i) nounwind
  br label %while.cond224.i

if.end238.i:                                      ; preds = %cont228.i, %lor.lhs.false217.i
  %72 = load i8* %s.0.i229, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1155, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 140, i8 1) nounwind
  %cmp242.i = icmp eq i8 %72, -116
  br i1 %cmp242.i, label %cont253.i, label %lor.lhs.false244.i

lor.lhs.false244.i:                               ; preds = %if.end238.i
  %73 = load i8* %s.0.i229, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1155, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp248.i = icmp eq i8 %73, -119
  br i1 %cmp248.i, label %cont253.i, label %if.end281.i

cont253.i:                                        ; preds = %lor.lhs.false244.i, %if.end238.i, %while.body278.i
  %s.1.i = phi i8* [ %arrayidx254.i, %while.body278.i ], [ %s.0.i229, %if.end238.i ], [ %s.0.i229, %lor.lhs.false244.i ]
  %arrayidx254.i = getelementptr inbounds i8* %s.1.i, i32 -1
  %74 = load i8* %arrayidx254.i, align 1, !tbaa !1
  %75 = icmp sgt i8 %74, -1
  br i1 %75, label %cont257.i, label %ioc_bb256.i

ioc_bb256.i:                                      ; preds = %cont253.i
  %76 = sext i8 %74 to i64
  call void @__ioc_report_conversion(i32 1156, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %76, i8 1) nounwind
  br label %cont257.i

cont257.i:                                        ; preds = %ioc_bb256.i, %cont253.i
  %idxprom258.i = zext i8 %74 to i32
  %arrayidx259.i = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom258.i
  %77 = load i16* %arrayidx259.i, align 2, !tbaa !6
  %and265.i = and i16 %77, 4
  %tobool266.i = icmp eq i16 %and265.i, 0
  br i1 %tobool266.i, label %if.end281.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %cont257.i
  %cmp268.i = icmp ult i8* %s.1.i, %add.ptr267.i
  br i1 %cmp268.i, label %while.body278.i, label %cont271.i

cont271.i:                                        ; preds = %land.rhs.i
  %arrayidx272.i = getelementptr inbounds i8* %s.1.i, i32 -2
  %78 = load i8* %arrayidx272.i, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1156, i32 98, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp276.i = icmp eq i8 %78, -125
  br i1 %cmp276.i, label %if.end281.i, label %while.body278.i

while.body278.i:                                  ; preds = %cont271.i, %land.rhs.i
  call void @chuck(i8* %arrayidx254.i) nounwind
  br label %cont253.i

if.end281.i:                                      ; preds = %cont271.i, %cont257.i, %lor.lhs.false244.i, %if.end205.i
  %s.2.i = phi i8* [ %s.0.i229, %lor.lhs.false244.i ], [ %s.0.i229, %if.end205.i ], [ %s.1.i, %cont257.i ], [ %s.1.i, %cont271.i ]
  %79 = load i8* %s.2.i, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1159, i32 34, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp285.i = icmp eq i8 %79, -119
  br i1 %cmp285.i, label %if.then287.i, label %for.inc.i

if.then287.i:                                     ; preds = %if.end281.i
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.1.i, i32 -1) nounwind
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  br i1 %82, label %ioc_bb288.i, label %for.inc.i

ioc_bb288.i:                                      ; preds = %if.then287.i
  %83 = sext i32 %pct.1.i to i64
  call void @__ioc_report_add_overflow(i32 1160, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %83, i64 -1, i8 13) nounwind
  br label %for.inc.i

for.inc.i:                                        ; preds = %ioc_bb288.i, %if.then287.i, %if.end281.i
  %pct.2.i = phi i32 [ %pct.1.i, %if.end281.i ], [ %81, %if.then287.i ], [ %81, %ioc_bb288.i ]
  %incdec.ptr291.i = getelementptr inbounds i8* %s.2.i, i32 1
  %84 = load i8* %incdec.ptr291.i, align 1, !tbaa !1
  %tobool196.i = icmp eq i8 %84, 0
  br i1 %tobool196.i, label %for.end.i, label %ioc_bb198.i

for.end.isplit:                                   ; preds = %if.end205.i
  %.pre313 = load i8* %s.0.i229, align 1, !tbaa !1
  %phitmp = icmp ne i8 %.pre313, 0
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %for.end.isplit
  %85 = phi i1 [ %phitmp, %for.end.isplit ], [ false, %for.inc.i ]
  %s.0.i.lcssa = phi i8* [ %s.0.i229, %for.end.isplit ], [ %incdec.ptr291.i, %for.inc.i ]
  %pct.3.i = phi i32 [ 0, %for.end.isplit ], [ %pct.2.i, %for.inc.i ]
  %notrhs = icmp ne i32 %pct.3.i, 0
  %or.cond503.not.i = or i1 %notrhs, %85
  %cmp297.i = icmp eq i8* %s.0.i.lcssa, %str.0.i225
  %or.cond504.i = or i1 %or.cond503.not.i, %cmp297.i
  br i1 %or.cond504.i, label %if.then299.i, label %if.end300.i

if.then299.i:                                     ; preds = %for.cond195.i.loopexit, %for.end.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end300.i:                                      ; preds = %for.end.i
  %call301.i = call i32 @strlen(i8* %str.0.i225) nounwind readonly
  %86 = icmp sgt i32 %call301.i, -1
  br i1 %86, label %cont306.i, label %ioc_bb303.i

ioc_bb303.i:                                      ; preds = %if.end300.i
  %87 = zext i32 %call301.i to i64
  call void @__ioc_report_conversion(i32 1169, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %87, i8 0) nounwind
  br label %cont306.i

cont306.i:                                        ; preds = %ioc_bb303.i, %if.end300.i
  %88 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call301.i, i32 1) nounwind
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %ioc_bb307.i, label %cont308.i

ioc_bb307.i:                                      ; preds = %cont306.i
  %91 = sext i32 %call301.i to i64
  call void @__ioc_report_sub_overflow(i32 1171, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %91, i64 1, i8 13) nounwind
  br label %cont308.i

cont308.i:                                        ; preds = %ioc_bb307.i, %cont306.i
  %arrayidx309.i = getelementptr inbounds i8* %str.0.i225, i32 %89
  store i8 0, i8* %arrayidx309.i, align 1, !tbaa !1
  call void @chuck(i8* %str.0.i225) nounwind
  br label %cont335.i

if.else310.i:                                     ; preds = %cont187.i
  %92 = load i32* @tok, align 4, !tbaa !3
  %cmp312.i = icmp eq i32 %92, 34
  br i1 %cmp312.i, label %if.end315.i, label %if.then314.i

if.then314.i:                                     ; preds = %if.else310.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end315.i:                                      ; preds = %if.else310.i
  br i1 %44, label %cont318.i, label %ioc_bb317.i

ioc_bb317.i:                                      ; preds = %if.end315.i
  call void @__ioc_report_conversion(i32 1183, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %58, i8 1) nounwind
  br label %cont318.i

cont318.i:                                        ; preds = %ioc_bb317.i, %if.end315.i
  %93 = load i8** @tokstr, align 4, !tbaa !0
  %call319.i = call i32 @strlen(i8* %93) nounwind readonly
  %94 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call162.i, i32 %call319.i) nounwind
  %95 = extractvalue { i32, i1 } %94, 0
  %96 = extractvalue { i32, i1 } %94, 1
  br i1 %96, label %ioc_bb320.i, label %cont323.i

ioc_bb320.i:                                      ; preds = %cont318.i
  %97 = zext i32 %call319.i to i64
  call void @__ioc_report_add_overflow(i32 1183, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %43, i64 %97, i8 5) nounwind
  br label %cont323.i

cont323.i:                                        ; preds = %ioc_bb320.i, %cont318.i
  %98 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %95, i32 1) nounwind
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb324.i, label %cont325.i

ioc_bb324.i:                                      ; preds = %cont323.i
  %101 = zext i32 %95 to i64
  call void @__ioc_report_add_overflow(i32 1183, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %101, i64 1, i8 5) nounwind
  br label %cont325.i

cont325.i:                                        ; preds = %ioc_bb324.i, %cont323.i
  %call326.i = call i8* @hcalloc(i32 %99) nounwind
  %call327.i = call i8* @strcpy(i8* %call326.i, i8* %str.0.i225) nounwind
  %add.ptr328.i = getelementptr inbounds i8* %call326.i, i32 %call162.i
  %102 = load i8** @tokstr, align 4, !tbaa !0
  %call329.i = call i8* @strcpy(i8* %add.ptr328.i, i8* %102) nounwind
  br label %for.cond155.i.backedge

cont335.i:                                        ; preds = %cont308.i, %if.then158.i
  %str.0.i223 = phi i8* [ %str.0.i225, %cont308.i ], [ %str.0.i.lcssa, %if.then158.i ]
  %call336.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call337.i = call fastcc i32 @ecstrcode(i8* %str.0.i223) nounwind
  %call338.i = call fastcc i32 @ecadd(i32 %call337.i) nounwind
  %103 = load i32* @ecnpats, align 4, !tbaa !3
  %104 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %103, i32 1) nounwind
  %105 = extractvalue { i32, i1 } %104, 0
  %106 = extractvalue { i32, i1 } %104, 1
  %107 = sext i32 %103 to i64
  br i1 %106, label %ioc_bb339.i, label %cont340.i

ioc_bb339.i:                                      ; preds = %cont335.i
  call void @__ioc_report_add_overflow(i32 1192, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %107, i64 1, i8 13) nounwind
  br label %cont340.i

cont340.i:                                        ; preds = %ioc_bb339.i, %cont335.i
  store i32 %105, i32* @ecnpats, align 4, !tbaa !3
  %108 = icmp sgt i32 %103, -1
  br i1 %108, label %cont343.i, label %ioc_bb342.i

ioc_bb342.i:                                      ; preds = %cont340.i
  call void @__ioc_report_conversion(i32 1192, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %107, i8 1) nounwind
  br label %cont343.i

cont343.i:                                        ; preds = %ioc_bb342.i, %cont340.i
  %call344.i = call fastcc i32 @ecadd(i32 %103) nounwind
  %109 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %110 = load i32* @ecused, align 4, !tbaa !3
  %cmp346.i = icmp eq i32 %109, %110
  br i1 %cmp346.i, label %cont354.i, label %do.end.i

cont354.i:                                        ; preds = %cont343.i
  %call355.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end.i

do.end.i:                                         ; preds = %cont354.i, %cont343.i
  %111 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.0.i.ph, i32 1) nounwind
  %112 = extractvalue { i32, i1 } %111, 0
  %113 = extractvalue { i32, i1 } %111, 1
  br i1 %113, label %ioc_bb357.i, label %cont358.i

ioc_bb357.i:                                      ; preds = %do.end.i
  %114 = sext i32 %n.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 1199, i32 6, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %114, i64 1, i8 13) nounwind
  br label %cont358.i

cont358.i:                                        ; preds = %ioc_bb357.i, %do.end.i
  %115 = load i32* @tok, align 4, !tbaa !3
  %cmp359.i = icmp eq i32 %115, 31
  br i1 %cmp359.i, label %cont369.i, label %if.else362.i

if.else362.i:                                     ; preds = %cont358.i
  %cmp363.i = icmp eq i32 %115, 32
  %..i = select i1 %cmp363.i, i32 3, i32 1
  br label %cont369.i

cont369.i:                                        ; preds = %cont358.i, %if.else362.i
  %type.0.i = phi i32 [ %..i, %if.else362.i ], [ 2, %cont358.i ]
  %116 = load i32* @ecused, align 4, !tbaa !3
  %117 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %116, i32 1) nounwind
  %118 = extractvalue { i32, i1 } %117, 0
  %119 = extractvalue { i32, i1 } %117, 1
  br i1 %119, label %ioc_bb370.i, label %cont371.i

ioc_bb370.i:                                      ; preds = %cont369.i
  %120 = sext i32 %116 to i64
  call void @__ioc_report_sub_overflow(i32 1204, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %120, i64 1, i8 13) nounwind
  br label %cont371.i

cont371.i:                                        ; preds = %ioc_bb370.i, %cont369.i
  %121 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %118, i32 %call336.i) nounwind
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb372.i, label %cont373.i

ioc_bb372.i:                                      ; preds = %cont371.i
  %124 = sext i32 %call336.i to i64
  %125 = sext i32 %118 to i64
  call void @__ioc_report_sub_overflow(i32 1204, i32 66, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %125, i64 %124, i8 13) nounwind
  br label %cont373.i

cont373.i:                                        ; preds = %ioc_bb372.i, %cont371.i
  %126 = icmp ult i32 %122, 268435456
  br i1 %126, label %cont377.i, label %ioc_bb376.i

ioc_bb376.i:                                      ; preds = %cont373.i
  %127 = sext i32 %122 to i64
  call void @__ioc_report_shl_strict(i32 1204, i32 71, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %127, i64 3, i8 13) nounwind
  br label %cont377.i

cont377.i:                                        ; preds = %ioc_bb376.i, %cont373.i
  %shl.i = shl i32 %122, 3
  %or.i = or i32 %shl.i, %type.0.i
  %128 = icmp sgt i32 %or.i, -1
  br i1 %128, label %cont382.i, label %ioc_bb379.i

ioc_bb379.i:                                      ; preds = %cont377.i
  %129 = sext i32 %or.i to i64
  call void @__ioc_report_conversion(i32 1204, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %129, i8 1) nounwind
  br label %cont382.i

cont382.i:                                        ; preds = %ioc_bb379.i, %cont377.i
  %shl383.i = shl i32 %or.i, 5
  %or384.i = or i32 %shl383.i, 15
  %130 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx385.i = getelementptr inbounds i32* %130, i32 %call336.i
  store i32 %or384.i, i32* %arrayidx385.i, align 4, !tbaa !3
  %131 = load i32* @tok, align 4, !tbaa !3
  %cmp386.not.i = icmp ne i32 %131, 50
  %brmerge.i = or i1 %cmp386.not.i, %cmp65.i
  %cmp391.not.i = icmp ne i32 %131, 42
  %brmerge505.i = or i1 %cmp391.not.i, %cmp65.not.i
  %or.cond = and i1 %brmerge.i, %brmerge505.i
  br i1 %or.cond, label %if.end396.i, label %for.end407.i

if.end396.i:                                      ; preds = %cont382.i
  switch i32 %131, label %if.then405.i [
    i32 32, label %if.end406.i
    i32 31, label %if.end406.i
    i32 4, label %if.end406.i
  ]

if.then405.i:                                     ; preds = %if.end396.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %13, i32* @ecused, align 4, !tbaa !3
  br label %par_case.exit

if.end406.i:                                      ; preds = %if.end396.i, %if.end396.i, %if.end396.i
  store i32 1, i32* @incasepat, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %while.cond67.i.outer

for.end407.i:                                     ; preds = %cont382.i, %cont89.i, %while.cond67.i
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %132 = load i32* @ecused, align 4, !tbaa !3
  %133 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %132, i32 1) nounwind
  %134 = extractvalue { i32, i1 } %133, 0
  %135 = extractvalue { i32, i1 } %133, 1
  br i1 %135, label %ioc_bb410.i, label %cont411.i

ioc_bb410.i:                                      ; preds = %for.end407.i
  %136 = sext i32 %132 to i64
  call void @__ioc_report_sub_overflow(i32 1219, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %136, i64 1, i8 13) nounwind
  br label %cont411.i

cont411.i:                                        ; preds = %ioc_bb410.i, %for.end407.i
  %137 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %134, i32 %call.i80) nounwind
  %138 = extractvalue { i32, i1 } %137, 0
  %139 = extractvalue { i32, i1 } %137, 1
  br i1 %139, label %ioc_bb412.i, label %cont413.i

ioc_bb412.i:                                      ; preds = %cont411.i
  %140 = sext i32 %call.i80 to i64
  %141 = sext i32 %134 to i64
  call void @__ioc_report_sub_overflow(i32 1219, i32 60, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %141, i64 %140, i8 13) nounwind
  br label %cont413.i

cont413.i:                                        ; preds = %ioc_bb412.i, %cont411.i
  %142 = icmp ult i32 %138, 268435456
  br i1 %142, label %cont418.i, label %ioc_bb417.i

ioc_bb417.i:                                      ; preds = %cont413.i
  %143 = sext i32 %138 to i64
  call void @__ioc_report_shl_strict(i32 1219, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %143, i64 3, i8 13) nounwind
  br label %cont418.i

cont418.i:                                        ; preds = %ioc_bb417.i, %cont413.i
  %shl419.i = shl i32 %138, 3
  %144 = icmp sgt i32 %shl419.i, -1
  br i1 %144, label %cont425.i, label %ioc_bb422.i

ioc_bb422.i:                                      ; preds = %cont418.i
  %145 = sext i32 %shl419.i to i64
  call void @__ioc_report_conversion(i32 1219, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %145, i8 1) nounwind
  br label %cont425.i

cont425.i:                                        ; preds = %ioc_bb422.i, %cont418.i
  %shl426.i = shl i32 %138, 8
  %or427.i = or i32 %shl426.i, 15
  %146 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx428.i = getelementptr inbounds i32* %146, i32 %call.i80
  store i32 %or427.i, i32* %arrayidx428.i, align 4, !tbaa !3
  br label %par_case.exit

par_case.exit:                                    ; preds = %if.then.i82, %if.then63.i, %if.then82.i, %if.then299.i, %if.then314.i, %if.then405.i, %cont425.i
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %147 = load i32* @ecused, align 4, !tbaa !3
  %call.i84 = call fastcc i32 @ecadd(i32 0) nounwind
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end125.i, %cont74.i, %sw.bb7
  %usebrace.0.i = phi i32 [ 0, %sw.bb7 ], [ 0, %cont74.i ], [ 1, %if.end125.i ]
  %148 = load i32* @tok, align 4, !tbaa !3
  %cmp.i85 = icmp eq i32 %148, 55
  %cond.i86 = select i1 %cmp.i85, i32 5, i32 8
  call void @cmdpush(i32 %cond.i86) nounwind
  call void @zshlex() nounwind
  switch i32 %148, label %while.cond.i87.preheader [
    i32 51, label %for.end.i94
    i32 48, label %for.end.i94
  ]

while.cond.i87.preheader:                         ; preds = %for.cond.i
  %149 = load i32* @tok, align 4, !tbaa !3
  %cmp5.i235 = icmp eq i32 %149, 1
  br i1 %cmp5.i235, label %while.body.i88, label %while.end.i

while.body.i88:                                   ; preds = %while.cond.i87.preheader, %while.body.i88
  call void @zshlex() nounwind
  %150 = load i32* @tok, align 4, !tbaa !3
  %cmp5.i = icmp eq i32 %150, 1
  br i1 %cmp5.i, label %while.body.i88, label %while.end.i

while.end.i:                                      ; preds = %while.body.i88, %while.cond.i87.preheader
  switch i32 %148, label %if.then8.i [
    i32 55, label %cont11.i
    i32 47, label %cont11.i
  ]

if.then8.i:                                       ; preds = %while.end.i
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

cont11.i:                                         ; preds = %while.end.i, %while.end.i
  %call12.i = call fastcc i32 @ecadd(i32 0) nounwind
  %cond14.i = select i1 %cmp.i85, i32 1, i32 2
  %151 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %152 = load i32* @ecused, align 4, !tbaa !3
  %cmp16.i = icmp eq i32 %151, %152
  br i1 %cmp16.i, label %cont23.i, label %do.end.i89

cont23.i:                                         ; preds = %cont11.i
  %call24.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end.i89

do.end.i89:                                       ; preds = %cont23.i, %cont11.i
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %153 = load i32* @tok, align 4, !tbaa !3
  switch i32 %153, label %while.end32.i [
    i32 37, label %if.then27.i
    i32 1, label %while.body31.i
  ]

if.then27.i:                                      ; preds = %do.end.i89
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

while.body31.i:                                   ; preds = %do.end.i89, %while.body31.i
  call void @zshlex() nounwind
  %.pr188 = load i32* @tok, align 4, !tbaa !3
  %cmp30.i = icmp eq i32 %.pr188, 1
  br i1 %cmp30.i, label %while.body31.i, label %while.end32.i

while.end32.i:                                    ; preds = %do.end.i89, %while.body31.i
  %154 = phi i32 [ %.pr188, %while.body31.i ], [ %153, %do.end.i89 ]
  %155 = load i32* @cmdsp, align 4, !tbaa !3
  %156 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %155, i32 1) nounwind
  %157 = extractvalue { i32, i1 } %156, 0
  %158 = extractvalue { i32, i1 } %156, 1
  br i1 %158, label %ioc_bb33.i, label %cont39.i

ioc_bb33.i:                                       ; preds = %while.end32.i
  %159 = sext i32 %155 to i64
  call void @__ioc_report_sub_overflow(i32 1279, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %159, i64 1, i8 13) nounwind
  %.pre314 = load i32* @tok, align 4, !tbaa !3
  br label %cont39.i

cont39.i:                                         ; preds = %ioc_bb33.i, %while.end32.i
  %160 = phi i32 [ %.pre314, %ioc_bb33.i ], [ %154, %while.end32.i ]
  %161 = load i8** @cmdstack, align 4, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %161, i32 %157
  %162 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp35.i90 = icmp eq i8 %162, 5
  %conv40.i = select i1 %cmp35.i90, i8 6, i8 26
  switch i32 %160, label %if.else126.i [
    i32 59, label %if.then43.i
    i32 41, label %if.then80.i
  ]

if.then43.i:                                      ; preds = %cont39.i
  call void @cmdpop() nounwind
  %conv44.i = zext i8 %conv40.i to i32
  call void @cmdpush(i32 %conv44.i) nounwind
  call void @zshlex() nounwind
  %163 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %164 = load i32* @ecused, align 4, !tbaa !3
  %cmp48.i = icmp eq i32 %163, %164
  br i1 %cmp48.i, label %cont56.i, label %cont61.i

cont56.i:                                         ; preds = %if.then43.i
  %call57.i = call fastcc i32 @ecadd(i32 0) nounwind
  %.pre316 = load i32* @ecused, align 4, !tbaa !3
  br label %cont61.i

cont61.i:                                         ; preds = %cont56.i, %if.then43.i
  %165 = phi i32 [ %.pre316, %cont56.i ], [ %164, %if.then43.i ]
  %166 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %165, i32 1) nounwind
  %167 = extractvalue { i32, i1 } %166, 0
  %168 = extractvalue { i32, i1 } %166, 1
  br i1 %168, label %ioc_bb62.i, label %cont63.i

ioc_bb62.i:                                       ; preds = %cont61.i
  %169 = sext i32 %165 to i64
  call void @__ioc_report_sub_overflow(i32 1291, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %169, i64 1, i8 13) nounwind
  br label %cont63.i

cont63.i:                                         ; preds = %ioc_bb62.i, %cont61.i
  %170 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %167, i32 %call12.i) nounwind
  %171 = extractvalue { i32, i1 } %170, 0
  %172 = extractvalue { i32, i1 } %170, 1
  br i1 %172, label %ioc_bb64.i, label %cont65.i

ioc_bb64.i:                                       ; preds = %cont63.i
  %173 = sext i32 %call12.i to i64
  %174 = sext i32 %167 to i64
  call void @__ioc_report_sub_overflow(i32 1291, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %174, i64 %173, i8 13) nounwind
  br label %cont65.i

cont65.i:                                         ; preds = %ioc_bb64.i, %cont63.i
  %175 = icmp ult i32 %171, 536870912
  br i1 %175, label %cont69.i, label %ioc_bb68.i

ioc_bb68.i:                                       ; preds = %cont65.i
  %176 = sext i32 %171 to i64
  call void @__ioc_report_shl_strict(i32 1291, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %176, i64 2, i8 13) nounwind
  br label %cont69.i

cont69.i:                                         ; preds = %ioc_bb68.i, %cont65.i
  %shl.i91 = shl i32 %171, 2
  %or.i92 = or i32 %shl.i91, %cond14.i
  %177 = icmp sgt i32 %or.i92, -1
  br i1 %177, label %cont74.i, label %ioc_bb71.i

ioc_bb71.i:                                       ; preds = %cont69.i
  %178 = sext i32 %or.i92 to i64
  call void @__ioc_report_conversion(i32 1291, i32 49, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %178, i8 1) nounwind
  br label %cont74.i

cont74.i:                                         ; preds = %ioc_bb71.i, %cont69.i
  %shl75.i = shl i32 %or.i92, 5
  %or76.i = or i32 %shl75.i, 16
  %179 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx77.i = getelementptr inbounds i32* %179, i32 %call12.i
  store i32 %or76.i, i32* %arrayidx77.i, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @cmdpop() nounwind
  br label %for.cond.i

if.then80.i:                                      ; preds = %cont39.i
  call void @cmdpop() nounwind
  %conv81.i = zext i8 %conv40.i to i32
  call void @cmdpush(i32 %conv81.i) nounwind
  call void @zshlex() nounwind
  %180 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %181 = load i32* @ecused, align 4, !tbaa !3
  %cmp85.i = icmp eq i32 %180, %181
  br i1 %cmp85.i, label %cont93.i, label %do.end96.i

cont93.i:                                         ; preds = %if.then80.i
  %call94.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end96.i

do.end96.i:                                       ; preds = %cont93.i, %if.then80.i
  %182 = load i32* @tok, align 4, !tbaa !3
  %cmp97.i = icmp eq i32 %182, 42
  br i1 %cmp97.i, label %cont102.i, label %if.then99.i

if.then99.i:                                      ; preds = %do.end96.i
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

cont102.i:                                        ; preds = %do.end96.i
  %183 = load i32* @ecused, align 4, !tbaa !3
  %184 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %183, i32 1) nounwind
  %185 = extractvalue { i32, i1 } %184, 0
  %186 = extractvalue { i32, i1 } %184, 1
  br i1 %186, label %ioc_bb103.i, label %cont104.i

ioc_bb103.i:                                      ; preds = %cont102.i
  %187 = sext i32 %183 to i64
  call void @__ioc_report_sub_overflow(i32 1315, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %187, i64 1, i8 13) nounwind
  br label %cont104.i

cont104.i:                                        ; preds = %ioc_bb103.i, %cont102.i
  %188 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %185, i32 %call12.i) nounwind
  %189 = extractvalue { i32, i1 } %188, 0
  %190 = extractvalue { i32, i1 } %188, 1
  br i1 %190, label %ioc_bb105.i, label %cont106.i

ioc_bb105.i:                                      ; preds = %cont104.i
  %191 = sext i32 %call12.i to i64
  %192 = sext i32 %185 to i64
  call void @__ioc_report_sub_overflow(i32 1315, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %192, i64 %191, i8 13) nounwind
  br label %cont106.i

cont106.i:                                        ; preds = %ioc_bb105.i, %cont104.i
  %193 = icmp ult i32 %189, 536870912
  br i1 %193, label %cont111.i, label %ioc_bb110.i

ioc_bb110.i:                                      ; preds = %cont106.i
  %194 = sext i32 %189 to i64
  call void @__ioc_report_shl_strict(i32 1315, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %194, i64 2, i8 13) nounwind
  br label %cont111.i

cont111.i:                                        ; preds = %ioc_bb110.i, %cont106.i
  %shl112.i = shl i32 %189, 2
  %or113.i = or i32 %shl112.i, %cond14.i
  %195 = icmp sgt i32 %or113.i, -1
  br i1 %195, label %cont118.i, label %ioc_bb115.i

ioc_bb115.i:                                      ; preds = %cont111.i
  %196 = sext i32 %or113.i to i64
  call void @__ioc_report_conversion(i32 1315, i32 49, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %196, i8 1) nounwind
  br label %cont118.i

cont118.i:                                        ; preds = %ioc_bb115.i, %cont111.i
  %shl119.i = shl i32 %or113.i, 5
  %or120.i = or i32 %shl119.i, 16
  %197 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx121.i = getelementptr inbounds i32* %197, i32 %call12.i
  store i32 %or120.i, i32* %arrayidx121.i, align 4, !tbaa !3
  call void @zshlex() nounwind
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %198 = load i32* @tok, align 4, !tbaa !3
  %cmp122.i = icmp eq i32 %198, 1
  br i1 %cmp122.i, label %for.end.i94.thread, label %if.end125.i

if.end125.i:                                      ; preds = %cont118.i
  call void @cmdpop() nounwind
  br label %for.cond.i

if.else126.i:                                     ; preds = %cont39.i
  %199 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 153), align 1, !tbaa !1
  %tobool.i93 = icmp eq i8 %199, 0
  call void @cmdpop() nounwind
  br i1 %tobool.i93, label %if.then127.i, label %if.else128.i

if.then127.i:                                     ; preds = %if.else126.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

if.else128.i:                                     ; preds = %if.else126.i
  %conv129.i = zext i8 %conv40.i to i32
  call void @cmdpush(i32 %conv129.i) nounwind
  %200 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list1(i32* %complex) nounwind
  %201 = load i32* @ecused, align 4, !tbaa !3
  %cmp133.i = icmp eq i32 %200, %201
  br i1 %cmp133.i, label %cont141.i, label %cont146.i

cont141.i:                                        ; preds = %if.else128.i
  %call142.i = call fastcc i32 @ecadd(i32 0) nounwind
  %.pre315 = load i32* @ecused, align 4, !tbaa !3
  br label %cont146.i

cont146.i:                                        ; preds = %cont141.i, %if.else128.i
  %202 = phi i32 [ %.pre315, %cont141.i ], [ %201, %if.else128.i ]
  %203 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %202, i32 1) nounwind
  %204 = extractvalue { i32, i1 } %203, 0
  %205 = extractvalue { i32, i1 } %203, 1
  br i1 %205, label %ioc_bb147.i, label %cont148.i

ioc_bb147.i:                                      ; preds = %cont146.i
  %206 = sext i32 %202 to i64
  call void @__ioc_report_sub_overflow(i32 1340, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %206, i64 1, i8 13) nounwind
  br label %cont148.i

cont148.i:                                        ; preds = %ioc_bb147.i, %cont146.i
  %207 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %204, i32 %call12.i) nounwind
  %208 = extractvalue { i32, i1 } %207, 0
  %209 = extractvalue { i32, i1 } %207, 1
  br i1 %209, label %ioc_bb149.i, label %cont150.i

ioc_bb149.i:                                      ; preds = %cont148.i
  %210 = sext i32 %call12.i to i64
  %211 = sext i32 %204 to i64
  call void @__ioc_report_sub_overflow(i32 1340, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %211, i64 %210, i8 13) nounwind
  br label %cont150.i

cont150.i:                                        ; preds = %ioc_bb149.i, %cont148.i
  %212 = icmp ult i32 %208, 536870912
  br i1 %212, label %cont155.i, label %ioc_bb154.i

ioc_bb154.i:                                      ; preds = %cont150.i
  %213 = sext i32 %208 to i64
  call void @__ioc_report_shl_strict(i32 1340, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %213, i64 2, i8 13) nounwind
  br label %cont155.i

cont155.i:                                        ; preds = %ioc_bb154.i, %cont150.i
  %shl156.i = shl i32 %208, 2
  %or157.i = or i32 %shl156.i, %cond14.i
  %214 = icmp sgt i32 %or157.i, -1
  br i1 %214, label %cont162.i, label %ioc_bb159.i

ioc_bb159.i:                                      ; preds = %cont155.i
  %215 = sext i32 %or157.i to i64
  call void @__ioc_report_conversion(i32 1340, i32 49, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %215, i8 1) nounwind
  br label %cont162.i

cont162.i:                                        ; preds = %ioc_bb159.i, %cont155.i
  %shl163.i = shl i32 %or157.i, 5
  %or164.i = or i32 %shl163.i, 16
  %216 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx165.i = getelementptr inbounds i32* %216, i32 %call12.i
  store i32 %or164.i, i32* %arrayidx165.i, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %for.end.i94.thread

for.end.i94.thread:                               ; preds = %cont118.i, %cont162.i
  call void @cmdpop() nounwind
  br label %cont246.i

for.end.i94:                                      ; preds = %for.cond.i, %for.cond.i
  call void @cmdpop() nounwind
  %cmp168.i = icmp eq i32 %148, 48
  br i1 %cmp168.i, label %cont172.i, label %cont246.i

cont172.i:                                        ; preds = %for.end.i94
  %call173.i = call fastcc i32 @ecadd(i32 0) nounwind
  call void @cmdpush(i32 7) nounwind
  br label %while.cond174.i

while.cond174.i:                                  ; preds = %while.body177.i, %cont172.i
  %217 = load i32* @tok, align 4, !tbaa !3
  switch i32 %217, label %do.body203.i [
    i32 1, label %while.body177.i
    i32 41, label %land.lhs.true.i95
  ]

while.body177.i:                                  ; preds = %while.cond174.i
  call void @zshlex() nounwind
  br label %while.cond174.i

land.lhs.true.i95:                                ; preds = %while.cond174.i
  %tobool181.i = icmp eq i32 %usebrace.0.i, 0
  br i1 %tobool181.i, label %do.body203.i, label %if.then182.i

if.then182.i:                                     ; preds = %land.lhs.true.i95
  call void @zshlex() nounwind
  %218 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %219 = load i32* @ecused, align 4, !tbaa !3
  %cmp186.i = icmp eq i32 %218, %219
  br i1 %cmp186.i, label %cont194.i, label %do.end197.i

cont194.i:                                        ; preds = %if.then182.i
  %call195.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end197.i

do.end197.i:                                      ; preds = %cont194.i, %if.then182.i
  %220 = load i32* @tok, align 4, !tbaa !3
  %cmp198.i = icmp eq i32 %220, 42
  br i1 %cmp198.i, label %cont224.i, label %if.then200.i

if.then200.i:                                     ; preds = %do.end197.i
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

do.body203.i:                                     ; preds = %while.cond174.i, %land.lhs.true.i95
  %221 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %222 = load i32* @ecused, align 4, !tbaa !3
  %cmp206.i = icmp eq i32 %221, %222
  br i1 %cmp206.i, label %cont214.i, label %do.end217.i

cont214.i:                                        ; preds = %do.body203.i
  %call215.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end217.i

do.end217.i:                                      ; preds = %cont214.i, %do.body203.i
  %223 = load i32* @tok, align 4, !tbaa !3
  %cmp218.i = icmp eq i32 %223, 51
  br i1 %cmp218.i, label %cont224.i, label %if.then220.i

if.then220.i:                                     ; preds = %do.end217.i
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %147, i32* @ecused, align 4, !tbaa !3
  br label %sw.epilog

cont224.i:                                        ; preds = %do.end217.i, %do.end197.i
  %224 = load i32* @ecused, align 4, !tbaa !3
  %225 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %224, i32 1) nounwind
  %226 = extractvalue { i32, i1 } %225, 0
  %227 = extractvalue { i32, i1 } %225, 1
  br i1 %227, label %ioc_bb225.i, label %cont226.i

ioc_bb225.i:                                      ; preds = %cont224.i
  %228 = sext i32 %224 to i64
  call void @__ioc_report_sub_overflow(i32 1386, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %228, i64 1, i8 13) nounwind
  br label %cont226.i

cont226.i:                                        ; preds = %ioc_bb225.i, %cont224.i
  %229 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %226, i32 %call173.i) nounwind
  %230 = extractvalue { i32, i1 } %229, 0
  %231 = extractvalue { i32, i1 } %229, 1
  br i1 %231, label %ioc_bb227.i96, label %cont228.i97

ioc_bb227.i96:                                    ; preds = %cont226.i
  %232 = sext i32 %call173.i to i64
  %233 = sext i32 %226 to i64
  call void @__ioc_report_sub_overflow(i32 1386, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %233, i64 %232, i8 13) nounwind
  br label %cont228.i97

cont228.i97:                                      ; preds = %ioc_bb227.i96, %cont226.i
  %234 = icmp ult i32 %230, 536870912
  br i1 %234, label %cont233.i, label %ioc_bb232.i

ioc_bb232.i:                                      ; preds = %cont228.i97
  %235 = sext i32 %230 to i64
  call void @__ioc_report_shl_strict(i32 1386, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %235, i64 2, i8 13) nounwind
  br label %cont233.i

cont233.i:                                        ; preds = %ioc_bb232.i, %cont228.i97
  %shl234.i = shl i32 %230, 2
  %or235.i = or i32 %shl234.i, 3
  %236 = icmp sgt i32 %or235.i, -1
  br i1 %236, label %cont240.i, label %ioc_bb237.i

ioc_bb237.i:                                      ; preds = %cont233.i
  %237 = sext i32 %or235.i to i64
  call void @__ioc_report_conversion(i32 1386, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %237, i8 1) nounwind
  br label %cont240.i

cont240.i:                                        ; preds = %ioc_bb237.i, %cont233.i
  %shl241.i = shl i32 %or235.i, 5
  %or242.i = or i32 %shl241.i, 16
  %238 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx243.i = getelementptr inbounds i32* %238, i32 %call173.i
  store i32 %or242.i, i32* %arrayidx243.i, align 4, !tbaa !3
  call void @zshlex() nounwind
  call void @cmdpop() nounwind
  br label %cont246.i

cont246.i:                                        ; preds = %for.end.i94.thread, %cont240.i, %for.end.i94
  %239 = load i32* @ecused, align 4, !tbaa !3
  %240 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %239, i32 1) nounwind
  %241 = extractvalue { i32, i1 } %240, 0
  %242 = extractvalue { i32, i1 } %240, 1
  br i1 %242, label %ioc_bb247.i, label %cont248.i

ioc_bb247.i:                                      ; preds = %cont246.i
  %243 = sext i32 %239 to i64
  call void @__ioc_report_sub_overflow(i32 1390, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %243, i64 1, i8 13) nounwind
  br label %cont248.i

cont248.i:                                        ; preds = %ioc_bb247.i, %cont246.i
  %244 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %241, i32 %call.i84) nounwind
  %245 = extractvalue { i32, i1 } %244, 0
  %246 = extractvalue { i32, i1 } %244, 1
  br i1 %246, label %ioc_bb249.i, label %cont250.i

ioc_bb249.i:                                      ; preds = %cont248.i
  %247 = sext i32 %call.i84 to i64
  %248 = sext i32 %241 to i64
  call void @__ioc_report_sub_overflow(i32 1390, i32 60, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %248, i64 %247, i8 13) nounwind
  br label %cont250.i

cont250.i:                                        ; preds = %ioc_bb249.i, %cont248.i
  %249 = icmp ult i32 %245, 536870912
  br i1 %249, label %cont255.i, label %ioc_bb254.i

ioc_bb254.i:                                      ; preds = %cont250.i
  %250 = sext i32 %245 to i64
  call void @__ioc_report_shl_strict(i32 1390, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %250, i64 2, i8 13) nounwind
  br label %cont255.i

cont255.i:                                        ; preds = %ioc_bb254.i, %cont250.i
  %shl256.i = shl i32 %245, 2
  %251 = icmp sgt i32 %shl256.i, -1
  br i1 %251, label %cont262.i, label %ioc_bb259.i

ioc_bb259.i:                                      ; preds = %cont255.i
  %252 = sext i32 %shl256.i to i64
  call void @__ioc_report_conversion(i32 1390, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %252, i8 1) nounwind
  br label %cont262.i

cont262.i:                                        ; preds = %ioc_bb259.i, %cont255.i
  %shl263.i = shl i32 %245, 7
  %or264.i = or i32 %shl263.i, 16
  %253 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx265.i = getelementptr inbounds i32* %253, i32 %call.i84
  store i32 %or264.i, i32* %arrayidx265.i, align 4, !tbaa !3
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @cmdpush(i32 1) nounwind
  call fastcc void @par_while(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @cmdpush(i32 4) nounwind
  call fastcc void @par_while(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @cmdpush(i32 2) nounwind
  %254 = load i32* @ecused, align 4, !tbaa !3
  %call.i98 = call fastcc i32 @ecadd(i32 0) nounwind
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %255 = load i32* @tok, align 4, !tbaa !3
  %cmp.i99 = icmp eq i32 %255, 34
  br i1 %cmp.i99, label %if.end.i103, label %if.then.i100

if.then.i100:                                     ; preds = %sw.bb10
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %254, i32* @ecused, align 4, !tbaa !3
  br label %par_repeat.exit

if.end.i103:                                      ; preds = %sw.bb10
  %256 = load i8** @tokstr, align 4, !tbaa !0
  %call1.i101 = call fastcc i32 @ecstrcode(i8* %256) nounwind
  %call2.i102 = call fastcc i32 @ecadd(i32 %call1.i101) nounwind
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %while.cond.i104

while.cond.i104:                                  ; preds = %while.body.i105, %if.end.i103
  %257 = load i32* @tok, align 4, !tbaa !3
  switch i32 %257, label %if.else39.i [
    i32 1, label %while.body.i105
    i32 45, label %if.then5.i
    i32 41, label %if.then21.i
  ]

while.body.i105:                                  ; preds = %while.cond.i104
  call void @zshlex() nounwind
  br label %while.cond.i104

if.then5.i:                                       ; preds = %while.cond.i104
  call void @zshlex() nounwind
  %258 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %259 = load i32* @ecused, align 4, !tbaa !3
  %cmp7.i = icmp eq i32 %258, %259
  br i1 %cmp7.i, label %cont14.i, label %do.end.i106

cont14.i:                                         ; preds = %if.then5.i
  %call15.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end.i106

do.end.i106:                                      ; preds = %cont14.i, %if.then5.i
  %260 = load i32* @tok, align 4, !tbaa !3
  %cmp17.i = icmp eq i32 %260, 46
  br i1 %cmp17.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %do.end.i106
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %254, i32* @ecused, align 4, !tbaa !3
  br label %par_repeat.exit

if.end19.i:                                       ; preds = %do.end.i106
  call void @zshlex() nounwind
  br label %cont81.i

if.then21.i:                                      ; preds = %while.cond.i104
  call void @zshlex() nounwind
  %261 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %262 = load i32* @ecused, align 4, !tbaa !3
  %cmp25.i = icmp eq i32 %261, %262
  br i1 %cmp25.i, label %cont32.i, label %do.end35.i

cont32.i:                                         ; preds = %if.then21.i
  %call33.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end35.i

do.end35.i:                                       ; preds = %cont32.i, %if.then21.i
  %263 = load i32* @tok, align 4, !tbaa !3
  %cmp36.i = icmp eq i32 %263, 42
  br i1 %cmp36.i, label %if.end38.i, label %if.then37.i107

if.then37.i107:                                   ; preds = %do.end35.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %254, i32* @ecused, align 4, !tbaa !3
  br label %par_repeat.exit

if.end38.i:                                       ; preds = %do.end35.i
  call void @zshlex() nounwind
  br label %cont81.i

if.else39.i:                                      ; preds = %while.cond.i104
  %264 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 40), align 1, !tbaa !1
  %tobool.i108 = icmp eq i8 %264, 0
  br i1 %tobool.i108, label %if.else58.i, label %do.body41.i

do.body41.i:                                      ; preds = %if.else39.i
  %265 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list(i32* %complex) nounwind
  %266 = load i32* @ecused, align 4, !tbaa !3
  %cmp44.i = icmp eq i32 %265, %266
  br i1 %cmp44.i, label %cont51.i, label %do.end54.i

cont51.i:                                         ; preds = %do.body41.i
  %call52.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %do.end54.i

do.end54.i:                                       ; preds = %cont51.i, %do.body41.i
  %267 = load i32* @tok, align 4, !tbaa !3
  %cmp55.i = icmp eq i32 %267, 49
  br i1 %cmp55.i, label %if.end57.i, label %if.then56.i

if.then56.i:                                      ; preds = %do.end54.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %254, i32* @ecused, align 4, !tbaa !3
  br label %par_repeat.exit

if.end57.i:                                       ; preds = %do.end54.i
  call void @zshlex() nounwind
  br label %cont81.i

if.else58.i:                                      ; preds = %if.else39.i
  %268 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 153), align 1, !tbaa !1
  %tobool59.i = icmp eq i8 %268, 0
  br i1 %tobool59.i, label %if.then60.i, label %do.body62.i

if.then60.i:                                      ; preds = %if.else58.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %254, i32* @ecused, align 4, !tbaa !3
  br label %par_repeat.exit

do.body62.i:                                      ; preds = %if.else58.i
  %269 = load i32* @ecused, align 4, !tbaa !3
  call fastcc void @par_list1(i32* %complex) nounwind
  %270 = load i32* @ecused, align 4, !tbaa !3
  %cmp65.i109 = icmp eq i32 %269, %270
  br i1 %cmp65.i109, label %cont72.i, label %cont81.i

cont72.i:                                         ; preds = %do.body62.i
  %call73.i = call fastcc i32 @ecadd(i32 0) nounwind
  br label %cont81.i

cont81.i:                                         ; preds = %cont72.i, %do.body62.i, %if.end57.i, %if.end38.i, %if.end19.i
  %271 = load i32* @ecused, align 4, !tbaa !3
  %272 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %271, i32 1) nounwind
  %273 = extractvalue { i32, i1 } %272, 0
  %274 = extractvalue { i32, i1 } %272, 1
  br i1 %274, label %ioc_bb82.i, label %cont83.i

ioc_bb82.i:                                       ; preds = %cont81.i
  %275 = sext i32 %271 to i64
  call void @__ioc_report_sub_overflow(i32 1553, i32 52, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %275, i64 1, i8 13) nounwind
  br label %cont83.i

cont83.i:                                         ; preds = %ioc_bb82.i, %cont81.i
  %276 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %273, i32 %call.i98) nounwind
  %277 = extractvalue { i32, i1 } %276, 0
  %278 = extractvalue { i32, i1 } %276, 1
  br i1 %278, label %ioc_bb84.i, label %cont85.i

ioc_bb84.i:                                       ; preds = %cont83.i
  %279 = sext i32 %call.i98 to i64
  %280 = sext i32 %273 to i64
  call void @__ioc_report_sub_overflow(i32 1553, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %280, i64 %279, i8 13) nounwind
  br label %cont85.i

cont85.i:                                         ; preds = %ioc_bb84.i, %cont83.i
  %281 = icmp sgt i32 %277, -1
  br i1 %281, label %cont89.i114, label %ioc_bb86.i110

ioc_bb86.i110:                                    ; preds = %cont85.i
  %282 = sext i32 %277 to i64
  call void @__ioc_report_conversion(i32 1553, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %282, i8 1) nounwind
  br label %cont89.i114

cont89.i114:                                      ; preds = %ioc_bb86.i110, %cont85.i
  %shl.i111 = shl i32 %277, 5
  %or.i112 = or i32 %shl.i111, 14
  %283 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx.i113 = getelementptr inbounds i32* %283, i32 %call.i98
  store i32 %or.i112, i32* %arrayidx.i113, align 4, !tbaa !3
  br label %par_repeat.exit

par_repeat.exit:                                  ; preds = %if.then.i100, %if.then18.i, %if.then37.i107, %if.then56.i, %if.then60.i, %cont89.i114
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  store i32 1, i32* %complex, align 4, !tbaa !3
  call void @cmdpush(i32 18) nounwind
  call fastcc void @par_subsh(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @cmdpush(i32 19) nounwind
  call fastcc void @par_subsh(i32* %complex)
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @cmdpush(i32 17) nounwind
  %284 = bitcast i32* %c.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %284) nounwind
  %285 = load i32* @ecused, align 4, !tbaa !3
  store i32 0, i32* %c.i, align 4, !tbaa !3
  %286 = load i32* @ecssub, align 4, !tbaa !3
  %287 = load i64* @lineno, align 8, !tbaa !5
  store i64 0, i64* @lineno, align 8, !tbaa !5
  store i32 1, i32* @nocorrect, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %call.i115 = call fastcc i32 @ecadd(i32 0) nounwind
  %call3.i = call fastcc i32 @ecadd(i32 0) nounwind
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %288 = load i32* @tok, align 4, !tbaa !3
  %cmp.i116261 = icmp eq i32 %288, 34
  br i1 %cmp.i116261, label %while.body.i118, label %cont13.i

while.body.i118:                                  ; preds = %sw.bb13, %cont11.i124
  %num.0.i262 = phi i32 [ %294, %cont11.i124 ], [ 0, %sw.bb13 ]
  %289 = load i8** @tokstr, align 4, !tbaa !0
  %290 = load i8* %289, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1643, i32 31, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp6.i = icmp eq i8 %290, -115
  %291 = load i8** @tokstr, align 4, !tbaa !0
  br i1 %cmp6.i, label %land.lhs.true.i121, label %if.end.i123

land.lhs.true.i121:                               ; preds = %while.body.i118
  %arrayidx.i119 = getelementptr inbounds i8* %291, i32 1
  %292 = load i8* %arrayidx.i119, align 1, !tbaa !1
  %tobool.i120 = icmp eq i8 %292, 0
  br i1 %tobool.i120, label %if.then.i122, label %if.end.i123

if.then.i122:                                     ; preds = %land.lhs.true.i121
  store i32 41, i32* @tok, align 4, !tbaa !3
  br label %cont13.i

if.end.i123:                                      ; preds = %while.body.i118, %land.lhs.true.i121
  %call8.i = call fastcc i32 @ecstrcode(i8* %291) nounwind
  %call9.i = call fastcc i32 @ecadd(i32 %call8.i) nounwind
  %293 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.0.i262, i32 1) nounwind
  %294 = extractvalue { i32, i1 } %293, 0
  %295 = extractvalue { i32, i1 } %293, 1
  br i1 %295, label %ioc_bb10.i, label %cont11.i124

ioc_bb10.i:                                       ; preds = %if.end.i123
  %296 = sext i32 %num.0.i262 to i64
  call void @__ioc_report_add_overflow(i32 1648, i32 8, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %296, i64 1, i8 13) nounwind
  br label %cont11.i124

cont11.i124:                                      ; preds = %ioc_bb10.i, %if.end.i123
  call void @zshlex() nounwind
  %297 = load i32* @tok, align 4, !tbaa !3
  %cmp.i116 = icmp eq i32 %297, 34
  br i1 %cmp.i116, label %while.body.i118, label %cont13.i

cont13.i:                                         ; preds = %sw.bb13, %cont11.i124, %if.then.i122
  %num.0.i260 = phi i32 [ %num.0.i262, %if.then.i122 ], [ 0, %sw.bb13 ], [ %294, %cont11.i124 ]
  %call14.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call17.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call20.i = call fastcc i32 @ecadd(i32 0) nounwind
  store i32 0, i32* @nocorrect, align 4, !tbaa !3
  %298 = load i32* @tok, align 4, !tbaa !3
  %cmp21.i = icmp eq i32 %298, 27
  br i1 %cmp21.i, label %if.then23.i, label %while.cond25.i

if.then23.i:                                      ; preds = %cont13.i
  call void @zshlex() nounwind
  br label %while.cond25.ithread-pre-split

while.cond25.ithread-pre-split:                   ; preds = %if.then23.i, %while.body28.i
  %.pr190 = load i32* @tok, align 4, !tbaa !3
  br label %while.cond25.i

while.cond25.i:                                   ; preds = %while.cond25.ithread-pre-split, %cont13.i
  %299 = phi i32 [ %.pr190, %while.cond25.ithread-pre-split ], [ %298, %cont13.i ]
  %cmp26.i125 = icmp eq i32 %299, 1
  br i1 %cmp26.i125, label %while.body28.i, label %while.end29.i

while.body28.i:                                   ; preds = %while.cond25.i
  call void @zshlex() nounwind
  br label %while.cond25.ithread-pre-split

while.end29.i:                                    ; preds = %while.cond25.i
  %300 = load i32* @ecnfunc, align 4, !tbaa !3
  %301 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %300, i32 1) nounwind
  %302 = extractvalue { i32, i1 } %301, 0
  %303 = extractvalue { i32, i1 } %301, 1
  br i1 %303, label %ioc_bb30.i, label %cont31.i

ioc_bb30.i:                                       ; preds = %while.end29.i
  %304 = sext i32 %300 to i64
  call void @__ioc_report_add_overflow(i32 1659, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %304, i64 1, i8 13) nounwind
  %.pre317 = load i32* @tok, align 4, !tbaa !3
  br label %cont31.i

cont31.i:                                         ; preds = %ioc_bb30.i, %while.end29.i
  %305 = phi i32 [ %.pre317, %ioc_bb30.i ], [ %299, %while.end29.i ]
  store i32 %302, i32* @ecnfunc, align 4, !tbaa !3
  %306 = load i32* @ecsoffs, align 4, !tbaa !3
  store i32 %306, i32* @ecssub, align 4, !tbaa !3
  %307 = load i32* @ecnpats, align 4, !tbaa !3
  store i32 0, i32* @ecnpats, align 4, !tbaa !3
  %cmp32.i = icmp eq i32 %305, 41
  br i1 %cmp32.i, label %if.then34.i, label %if.else.i127

if.then34.i:                                      ; preds = %cont31.i
  call void @zshlex() nounwind
  call fastcc void @par_list(i32* %c.i) nounwind
  %308 = load i32* @tok, align 4, !tbaa !3
  %cmp36.i126 = icmp eq i32 %308, 42
  br i1 %cmp36.i126, label %if.end41.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.then34.i
  %309 = load i64* @lineno, align 8, !tbaa !5
  %310 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %309, i64 %287) nounwind
  %311 = extractvalue { i64, i1 } %310, 0
  %312 = extractvalue { i64, i1 } %310, 1
  br i1 %312, label %ioc_bb39.i, label %cont40.i

ioc_bb39.i:                                       ; preds = %if.then38.i
  call void @__ioc_report_add_overflow(i32 1667, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %309, i64 %287, i8 14) nounwind
  br label %cont40.i

cont40.i:                                         ; preds = %ioc_bb39.i, %if.then38.i
  store i64 %311, i64* @lineno, align 8, !tbaa !5
  store i32 %307, i32* @ecnpats, align 4, !tbaa !3
  store i32 %286, i32* @ecssub, align 4, !tbaa !3
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %285, i32* @ecused, align 4, !tbaa !3
  br label %par_funcdef.exit

if.end41.i:                                       ; preds = %if.then34.i
  %cmp42.i = icmp eq i32 %num.0.i260, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.end45.i

if.then44.i:                                      ; preds = %if.end41.i
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end41.i
  call void @zshlex() nounwind
  br label %cont59.i

if.else.i127:                                     ; preds = %cont31.i
  %313 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 153), align 1, !tbaa !1
  %tobool46.i = icmp eq i8 %313, 0
  br i1 %tobool46.i, label %if.then47.i, label %if.else50.i

if.then47.i:                                      ; preds = %if.else.i127
  %314 = load i64* @lineno, align 8, !tbaa !5
  %315 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %314, i64 %287) nounwind
  %316 = extractvalue { i64, i1 } %315, 0
  %317 = extractvalue { i64, i1 } %315, 1
  br i1 %317, label %ioc_bb48.i, label %cont49.i

ioc_bb48.i:                                       ; preds = %if.then47.i
  call void @__ioc_report_add_overflow(i32 1684, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %314, i64 %287, i8 14) nounwind
  br label %cont49.i

cont49.i:                                         ; preds = %ioc_bb48.i, %if.then47.i
  store i64 %316, i64* @lineno, align 8, !tbaa !5
  store i32 %307, i32* @ecnpats, align 4, !tbaa !3
  store i32 %286, i32* @ecssub, align 4, !tbaa !3
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %285, i32* @ecused, align 4, !tbaa !3
  br label %par_funcdef.exit

if.else50.i:                                      ; preds = %if.else.i127
  call fastcc void @par_list1(i32* %c.i) nounwind
  br label %cont59.i

cont59.i:                                         ; preds = %if.else50.i, %if.end45.i
  %call60.i = call fastcc i32 @ecadd(i32 0) nounwind
  %318 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %306, i32 %286) nounwind
  %319 = extractvalue { i32, i1 } %318, 0
  %320 = extractvalue { i32, i1 } %318, 1
  %321 = sext i32 %306 to i64
  br i1 %320, label %ioc_bb61.i, label %cont62.i

ioc_bb61.i:                                       ; preds = %cont59.i
  %322 = sext i32 %286 to i64
  call void @__ioc_report_sub_overflow(i32 1697, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %321, i64 %322, i8 13) nounwind
  br label %cont62.i

cont62.i:                                         ; preds = %ioc_bb61.i, %cont59.i
  %323 = icmp sgt i32 %319, -1
  br i1 %323, label %cont64.i, label %ioc_bb63.i

ioc_bb63.i:                                       ; preds = %cont62.i
  %324 = sext i32 %319 to i64
  call void @__ioc_report_conversion(i32 1697, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %324, i8 1) nounwind
  br label %cont64.i

cont64.i:                                         ; preds = %ioc_bb63.i, %cont62.i
  %325 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call.i115, i32 %num.0.i260) nounwind
  %326 = extractvalue { i32, i1 } %325, 0
  %327 = extractvalue { i32, i1 } %325, 1
  %328 = sext i32 %call.i115 to i64
  %329 = sext i32 %num.0.i260 to i64
  br i1 %327, label %ioc_bb65.i, label %cont66.i

ioc_bb65.i:                                       ; preds = %cont64.i
  call void @__ioc_report_add_overflow(i32 1697, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %328, i64 %329, i8 13) nounwind
  br label %cont66.i

cont66.i:                                         ; preds = %ioc_bb65.i, %cont64.i
  %330 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %326, i32 2) nounwind
  %331 = extractvalue { i32, i1 } %330, 0
  %332 = extractvalue { i32, i1 } %330, 1
  %333 = sext i32 %326 to i64
  br i1 %332, label %ioc_bb67.i, label %cont68.i

ioc_bb67.i:                                       ; preds = %cont66.i
  call void @__ioc_report_add_overflow(i32 1697, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %333, i64 2, i8 13) nounwind
  br label %cont68.i

cont68.i:                                         ; preds = %ioc_bb67.i, %cont66.i
  %334 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx69.i = getelementptr inbounds i32* %334, i32 %331
  store i32 %319, i32* %arrayidx69.i, align 4, !tbaa !3
  %335 = load i32* @ecsoffs, align 4, !tbaa !3
  %336 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %335, i32 %306) nounwind
  %337 = extractvalue { i32, i1 } %336, 0
  %338 = extractvalue { i32, i1 } %336, 1
  br i1 %338, label %ioc_bb70.i, label %cont71.i

ioc_bb70.i:                                       ; preds = %cont68.i
  %339 = sext i32 %335 to i64
  call void @__ioc_report_sub_overflow(i32 1698, i32 33, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %339, i64 %321, i8 13) nounwind
  br label %cont71.i

cont71.i:                                         ; preds = %ioc_bb70.i, %cont68.i
  %340 = icmp sgt i32 %337, -1
  br i1 %340, label %cont74.i128, label %ioc_bb73.i

ioc_bb73.i:                                       ; preds = %cont71.i
  %341 = sext i32 %337 to i64
  call void @__ioc_report_conversion(i32 1698, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %341, i8 1) nounwind
  br label %cont74.i128

cont74.i128:                                      ; preds = %ioc_bb73.i, %cont71.i
  br i1 %327, label %ioc_bb75.i, label %cont76.i

ioc_bb75.i:                                       ; preds = %cont74.i128
  call void @__ioc_report_add_overflow(i32 1698, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %328, i64 %329, i8 13) nounwind
  br label %cont76.i

cont76.i:                                         ; preds = %ioc_bb75.i, %cont74.i128
  %342 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %326, i32 3) nounwind
  %343 = extractvalue { i32, i1 } %342, 0
  %344 = extractvalue { i32, i1 } %342, 1
  br i1 %344, label %ioc_bb77.i, label %cont78.i

ioc_bb77.i:                                       ; preds = %cont76.i
  call void @__ioc_report_add_overflow(i32 1698, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %333, i64 3, i8 13) nounwind
  br label %cont78.i

cont78.i:                                         ; preds = %cont76.i, %ioc_bb77.i
  %345 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx79.i = getelementptr inbounds i32* %345, i32 %343
  store i32 %337, i32* %arrayidx79.i, align 4, !tbaa !3
  %346 = load i32* @ecnpats, align 4, !tbaa !3
  %347 = icmp sgt i32 %346, -1
  br i1 %347, label %cont82.i, label %ioc_bb81.i

ioc_bb81.i:                                       ; preds = %cont78.i
  %348 = sext i32 %346 to i64
  call void @__ioc_report_conversion(i32 1699, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %348, i8 1) nounwind
  br label %cont82.i

cont82.i:                                         ; preds = %ioc_bb81.i, %cont78.i
  br i1 %327, label %ioc_bb83.i, label %cont84.i

ioc_bb83.i:                                       ; preds = %cont82.i
  call void @__ioc_report_add_overflow(i32 1699, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %328, i64 %329, i8 13) nounwind
  br label %cont84.i

cont84.i:                                         ; preds = %ioc_bb83.i, %cont82.i
  %349 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %326, i32 4) nounwind
  %350 = extractvalue { i32, i1 } %349, 0
  %351 = extractvalue { i32, i1 } %349, 1
  br i1 %351, label %ioc_bb85.i, label %cont86.i

ioc_bb85.i:                                       ; preds = %cont84.i
  call void @__ioc_report_add_overflow(i32 1699, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %333, i64 4, i8 13) nounwind
  br label %cont86.i

cont86.i:                                         ; preds = %cont84.i, %ioc_bb85.i
  %352 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx87.i = getelementptr inbounds i32* %352, i32 %350
  store i32 %346, i32* %arrayidx87.i, align 4, !tbaa !3
  %353 = icmp sgt i32 %num.0.i260, -1
  br i1 %353, label %cont90.i, label %ioc_bb89.i

ioc_bb89.i:                                       ; preds = %cont86.i
  call void @__ioc_report_conversion(i32 1700, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %329, i8 1) nounwind
  br label %cont90.i

cont90.i:                                         ; preds = %ioc_bb89.i, %cont86.i
  %354 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call.i115, i32 1) nounwind
  %355 = extractvalue { i32, i1 } %354, 0
  %356 = extractvalue { i32, i1 } %354, 1
  br i1 %356, label %ioc_bb91.i, label %cont92.i

ioc_bb91.i:                                       ; preds = %cont90.i
  call void @__ioc_report_add_overflow(i32 1700, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %328, i64 1, i8 13) nounwind
  br label %cont92.i

cont92.i:                                         ; preds = %cont90.i, %ioc_bb91.i
  %357 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx93.i = getelementptr inbounds i32* %357, i32 %355
  store i32 %num.0.i260, i32* %arrayidx93.i, align 4, !tbaa !3
  store i32 %307, i32* @ecnpats, align 4, !tbaa !3
  store i32 %286, i32* @ecssub, align 4, !tbaa !3
  %358 = load i32* @ecnfunc, align 4, !tbaa !3
  %359 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %358, i32 1) nounwind
  %360 = extractvalue { i32, i1 } %359, 0
  %361 = extractvalue { i32, i1 } %359, 1
  br i1 %361, label %ioc_bb94.i, label %cont95.i

ioc_bb94.i:                                       ; preds = %cont92.i
  %362 = sext i32 %358 to i64
  call void @__ioc_report_add_overflow(i32 1703, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %362, i64 1, i8 13) nounwind
  br label %cont95.i

cont95.i:                                         ; preds = %ioc_bb94.i, %cont92.i
  store i32 %360, i32* @ecnfunc, align 4, !tbaa !3
  %363 = load i32* @ecused, align 4, !tbaa !3
  %364 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %363, i32 1) nounwind
  %365 = extractvalue { i32, i1 } %364, 0
  %366 = extractvalue { i32, i1 } %364, 1
  br i1 %366, label %ioc_bb98.i, label %cont99.i

ioc_bb98.i:                                       ; preds = %cont95.i
  %367 = sext i32 %363 to i64
  call void @__ioc_report_sub_overflow(i32 1704, i32 52, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %367, i64 1, i8 13) nounwind
  br label %cont99.i

cont99.i:                                         ; preds = %ioc_bb98.i, %cont95.i
  %368 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %365, i32 %call.i115) nounwind
  %369 = extractvalue { i32, i1 } %368, 0
  %370 = extractvalue { i32, i1 } %368, 1
  br i1 %370, label %ioc_bb100.i, label %cont101.i

ioc_bb100.i:                                      ; preds = %cont99.i
  %371 = sext i32 %365 to i64
  call void @__ioc_report_sub_overflow(i32 1704, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %371, i64 %328, i8 13) nounwind
  br label %cont101.i

cont101.i:                                        ; preds = %ioc_bb100.i, %cont99.i
  %372 = icmp sgt i32 %369, -1
  br i1 %372, label %cont106.i132, label %ioc_bb103.i129

ioc_bb103.i129:                                   ; preds = %cont101.i
  %373 = sext i32 %369 to i64
  call void @__ioc_report_conversion(i32 1704, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %373, i8 1) nounwind
  br label %cont106.i132

cont106.i132:                                     ; preds = %cont101.i, %ioc_bb103.i129
  %shl.i130 = shl i32 %369, 5
  %or.i131 = or i32 %shl.i130, 10
  %374 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx107.i = getelementptr inbounds i32* %374, i32 %call.i115
  store i32 %or.i131, i32* %arrayidx107.i, align 4, !tbaa !3
  %cmp108.i = icmp eq i32 %num.0.i260, 0
  br i1 %cmp108.i, label %cont112.i, label %if.end138.i

cont112.i:                                        ; preds = %cont106.i132
  %call113.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call116.i = call fastcc i32 @ecadd(i32 0) nounwind
  %375 = load i32* @tok, align 4, !tbaa !3
  %cmp118.i256 = icmp eq i32 %375, 34
  br i1 %cmp118.i256, label %while.body120.i, label %while.end125.i

while.body120.i:                                  ; preds = %cont112.i, %cont124.i
  %num.1.i257 = phi i32 [ %378, %cont124.i ], [ 0, %cont112.i ]
  %376 = load i8** @tokstr, align 4, !tbaa !0
  %call121.i = call fastcc i32 @ecstrcode(i8* %376) nounwind
  %call122.i = call fastcc i32 @ecadd(i32 %call121.i) nounwind
  %377 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.1.i257, i32 1) nounwind
  %378 = extractvalue { i32, i1 } %377, 0
  %379 = extractvalue { i32, i1 } %377, 1
  br i1 %379, label %ioc_bb123.i, label %cont124.i

ioc_bb123.i:                                      ; preds = %while.body120.i
  %380 = sext i32 %num.1.i257 to i64
  call void @__ioc_report_add_overflow(i32 1711, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %380, i64 1, i8 13) nounwind
  br label %cont124.i

cont124.i:                                        ; preds = %ioc_bb123.i, %while.body120.i
  call void @zshlex() nounwind
  %381 = load i32* @tok, align 4, !tbaa !3
  %cmp118.i = icmp eq i32 %381, 34
  br i1 %cmp118.i, label %while.body120.i, label %while.end125.i

while.end125.i:                                   ; preds = %cont124.i, %cont112.i
  %num.1.i.lcssa = phi i32 [ 0, %cont112.i ], [ %378, %cont124.i ]
  %382 = load i32* @ecused, align 4, !tbaa !3
  %383 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %382, i32 %call113.i) nounwind
  %384 = extractvalue { i32, i1 } %383, 0
  %385 = extractvalue { i32, i1 } %383, 1
  %386 = sext i32 %call113.i to i64
  br i1 %385, label %ioc_bb126.i, label %cont127.i

ioc_bb126.i:                                      ; preds = %while.end125.i
  %387 = sext i32 %382 to i64
  call void @__ioc_report_sub_overflow(i32 1715, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %387, i64 %386, i8 13) nounwind
  br label %cont127.i

cont127.i:                                        ; preds = %ioc_bb126.i, %while.end125.i
  %388 = icmp sgt i32 %384, -1
  br i1 %388, label %cont130.i, label %ioc_bb129.i

ioc_bb129.i:                                      ; preds = %cont127.i
  %389 = sext i32 %384 to i64
  call void @__ioc_report_conversion(i32 1715, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %389, i8 1) nounwind
  br label %cont130.i

cont130.i:                                        ; preds = %ioc_bb129.i, %cont127.i
  %390 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx131.i = getelementptr inbounds i32* %390, i32 %call113.i
  store i32 %384, i32* %arrayidx131.i, align 4, !tbaa !3
  %391 = icmp sgt i32 %num.1.i.lcssa, -1
  br i1 %391, label %cont134.i, label %ioc_bb133.i

ioc_bb133.i:                                      ; preds = %cont130.i
  %392 = sext i32 %num.1.i.lcssa to i64
  call void @__ioc_report_conversion(i32 1716, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %392, i8 1) nounwind
  br label %cont134.i

cont134.i:                                        ; preds = %ioc_bb133.i, %cont130.i
  %393 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call113.i, i32 1) nounwind
  %394 = extractvalue { i32, i1 } %393, 0
  %395 = extractvalue { i32, i1 } %393, 1
  br i1 %395, label %ioc_bb135.i, label %cont136.i

ioc_bb135.i:                                      ; preds = %cont134.i
  call void @__ioc_report_add_overflow(i32 1716, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %386, i64 1, i8 13) nounwind
  br label %cont136.i

cont136.i:                                        ; preds = %cont134.i, %ioc_bb135.i
  %396 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx137.i = getelementptr inbounds i32* %396, i32 %394
  store i32 %num.1.i.lcssa, i32* %arrayidx137.i, align 4, !tbaa !3
  br label %if.end138.i

if.end138.i:                                      ; preds = %cont136.i, %cont106.i132
  %397 = load i64* @lineno, align 8, !tbaa !5
  %398 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %397, i64 %287) nounwind
  %399 = extractvalue { i64, i1 } %398, 0
  %400 = extractvalue { i64, i1 } %398, 1
  br i1 %400, label %ioc_bb139.i, label %cont140.i

ioc_bb139.i:                                      ; preds = %if.end138.i
  call void @__ioc_report_add_overflow(i32 1718, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %397, i64 %287, i8 14) nounwind
  br label %cont140.i

cont140.i:                                        ; preds = %ioc_bb139.i, %if.end138.i
  store i64 %399, i64* @lineno, align 8, !tbaa !5
  br label %par_funcdef.exit

par_funcdef.exit:                                 ; preds = %cont40.i, %cont49.i, %cont140.i
  call void @llvm.lifetime.end(i64 -1, i8* %284) nounwind
  call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @cmdpush(i32 10) nounwind
  %401 = load i32* @ecused, align 4, !tbaa !3
  store i32 1, i32* @incond, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  %call.i = call fastcc i32 @par_cond() nounwind
  %402 = load i32* @tok, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %402, 33
  br i1 %cmp.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb14
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %401, i32* @ecused, align 4, !tbaa !3
  br label %par_dinbrack.exit

if.end.i:                                         ; preds = %sw.bb14
  store i32 0, i32* @incond, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %par_dinbrack.exit

par_dinbrack.exit:                                ; preds = %if.then.i, %if.end.i
  call void @cmdpop() nounwind
  br label %sw.epilog

cont21:                                           ; preds = %if.end
  %call22 = call fastcc i32 @ecadd(i32 18)
  %403 = load i8** @tokstr, align 4, !tbaa !0
  %call23 = call fastcc i32 @ecstrcode(i8* %403)
  %call24 = call fastcc i32 @ecadd(i32 %call23)
  call void @zshlex() nounwind
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %.b = load i1* @par_cmd.inpartime.b, align 1
  br i1 %.b, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb25
  store i32 1, i32* %complex, align 4, !tbaa !3
  store i1 true, i1* @par_cmd.inpartime.b, align 1
  %404 = bitcast i32* %c.i133 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %404) nounwind
  store i32 0, i32* %c.i133, align 4, !tbaa !3
  call void @zshlex() nounwind
  %call.i134 = call fastcc i32 @ecadd(i32 0) nounwind
  %call3.i135 = call fastcc i32 @ecadd(i32 0) nounwind
  %405 = load i32* @tok, align 4, !tbaa !3
  switch i32 %405, label %par_sublist2.exit [
    i32 44, label %if.then.i182
    i32 39, label %if.then2.i183
  ]

if.then.i182:                                     ; preds = %if.then26
  store i32 1, i32* %c.i133, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %par_sublist2.exit

if.then2.i183:                                    ; preds = %if.then26
  store i32 1, i32* %c.i133, align 4, !tbaa !3
  call void @zshlex() nounwind
  br label %par_sublist2.exit

par_sublist2.exit:                                ; preds = %if.then26, %if.then.i182, %if.then2.i183
  %f.0.i = phi i32 [ 4, %if.then.i182 ], [ 8, %if.then2.i183 ], [ 0, %if.then26 ]
  %call.i184 = call fastcc i32 @par_pline(i32* %c.i133) nounwind
  %406 = or i32 %call.i184, %f.0.i
  %407 = icmp eq i32 %406, 0
  %retval.0.i187 = select i1 %407, i32 -1, i32 %f.0.i
  br i1 %407, label %if.then.i137, label %cont18.i

if.then.i137:                                     ; preds = %par_sublist2.exit
  %408 = load i32* @ecused, align 4, !tbaa !3
  %409 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %408, i32 -1) nounwind
  %410 = extractvalue { i32, i1 } %409, 0
  %411 = extractvalue { i32, i1 } %409, 1
  br i1 %411, label %ioc_bb5.i138, label %cont6.i

ioc_bb5.i138:                                     ; preds = %if.then.i137
  %412 = sext i32 %408 to i64
  call void @__ioc_report_add_overflow(i32 1734, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %412, i64 -1, i8 13) nounwind
  br label %cont6.i

cont6.i:                                          ; preds = %ioc_bb5.i138, %if.then.i137
  store i32 %410, i32* @ecused, align 4, !tbaa !3
  %413 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx.i139 = getelementptr inbounds i32* %413, i32 %call.i134
  store i32 9, i32* %arrayidx.i139, align 4, !tbaa !3
  br label %par_time.exit

cont18.i:                                         ; preds = %par_sublist2.exit
  %414 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx19.i = getelementptr inbounds i32* %414, i32 %call.i134
  store i32 41, i32* %arrayidx19.i, align 4, !tbaa !3
  %415 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call.i134, i32 1) nounwind
  %416 = extractvalue { i32, i1 } %415, 0
  %417 = extractvalue { i32, i1 } %415, 1
  %418 = sext i32 %call.i134 to i64
  br i1 %417, label %ioc_bb20.i, label %cont21.i

ioc_bb20.i:                                       ; preds = %cont18.i
  call void @__ioc_report_add_overflow(i32 1739, i32 24, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %418, i64 1, i8 13) nounwind
  br label %cont21.i

cont21.i:                                         ; preds = %ioc_bb20.i, %cont18.i
  %419 = load i32* @ecused, align 4, !tbaa !3
  %420 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %419, i32 2) nounwind
  %421 = extractvalue { i32, i1 } %420, 0
  %422 = extractvalue { i32, i1 } %420, 1
  br i1 %422, label %ioc_bb22.i, label %cont23.i140

ioc_bb22.i:                                       ; preds = %cont21.i
  %423 = sext i32 %419 to i64
  call void @__ioc_report_sub_overflow(i32 1739, i32 39, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %423, i64 2, i8 13) nounwind
  br label %cont23.i140

cont23.i140:                                      ; preds = %ioc_bb22.i, %cont21.i
  %424 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %421, i32 %call.i134) nounwind
  %425 = extractvalue { i32, i1 } %424, 0
  %426 = extractvalue { i32, i1 } %424, 1
  br i1 %426, label %ioc_bb24.i, label %cont25.i

ioc_bb24.i:                                       ; preds = %cont23.i140
  %427 = sext i32 %421 to i64
  call void @__ioc_report_sub_overflow(i32 1739, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %427, i64 %418, i8 13) nounwind
  br label %cont25.i

cont25.i:                                         ; preds = %ioc_bb24.i, %cont23.i140
  %428 = load i32* %c.i133, align 4, !tbaa !3
  call fastcc void @set_sublist_code(i32 %416, i32 0, i32 %retval.0.i187, i32 %425, i32 %428) nounwind
  br label %par_time.exit

par_time.exit:                                    ; preds = %cont6.i, %cont25.i
  call void @llvm.lifetime.end(i64 -1, i8* %404) nounwind
  store i1 false, i1* @par_cmd.inpartime.b, align 1
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb25
  store i32 34, i32* @tok, align 4, !tbaa !3
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end27
  %429 = phi i32 [ 34, %if.end27 ], [ %12, %if.end ]
  %430 = bitcast i32* %r.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %430) nounwind
  %431 = bitcast i8** %p3.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %431) nounwind
  %432 = bitcast i8** %str.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %432) nounwind
  %433 = bitcast i32* %c299.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %433) nounwind
  %434 = bitcast i32* %c312.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %434) nounwind
  %435 = load i32* @ecused, align 4, !tbaa !3
  %436 = load i32* %complex, align 4, !tbaa !3
  store i32 %435, i32* %r.i, align 4, !tbaa !3
  br label %for.cond.i142

for.cond.i142:                                    ; preds = %if.end163.i, %sw.default
  %437 = phi i32 [ %429, %sw.default ], [ %.pre, %if.end163.i ]
  %assignments.0.i = phi i32 [ 0, %sw.default ], [ %assignments.1.i, %if.end163.i ]
  %c.0.i = phi i32 [ %436, %sw.default ], [ %c.1.i, %if.end163.i ]
  %isnull.0.i = phi i32 [ 1, %sw.default ], [ %isnull.1.i, %if.end163.i ]
  switch i32 %437, label %cont177.i165 [
    i32 56, label %if.then.i143
    i32 35, label %if.then2.i
    i32 36, label %if.then110.i
    i32 30, label %if.then170.i
    i32 5, label %if.then170.i
  ]

if.then.i143:                                     ; preds = %for.cond.i142
  store i32 1, i32* %complex, align 4, !tbaa !3
  store i32 1, i32* @nocorrect, align 4, !tbaa !3
  br label %if.end163.i

if.then2.i:                                       ; preds = %for.cond.i142
  %438 = load i8** @tokstr, align 4, !tbaa !0
  store i8* %438, i8** %p3.i, align 4
  %439 = load i8* %438, align 1, !tbaa !1
  %tobool.i144212 = icmp eq i8 %439, 0
  br i1 %tobool.i144212, label %for.end.i148.thread, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %if.then2.i, %for.inc.i147
  %440 = phi i8 [ %441, %for.inc.i147 ], [ %439, %if.then2.i ]
  call void @__ioc_report_conversion(i32 1797, i32 48, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp6.i145 = icmp eq i8 %440, -113
  %.pre309.pre = load i8** %p3.i, align 4, !tbaa !0
  %.pre310.pre = load i8* %.pre309.pre, align 1, !tbaa !1
  br i1 %cmp6.i145, label %for.end.i148, label %land.lhs.true8.i

land.lhs.true8.i:                                 ; preds = %ioc_bb.i
  switch i8 %.pre310.pre, label %for.inc.i147 [
    i8 61, label %for.end.i148.thread
    i8 43, label %for.end.i148.thread
  ]

for.inc.i147:                                     ; preds = %land.lhs.true8.i
  %incdec.ptr.i146 = getelementptr inbounds i8* %.pre309.pre, i32 1
  store i8* %incdec.ptr.i146, i8** %p3.i, align 4
  %441 = load i8* %incdec.ptr.i146, align 1, !tbaa !1
  %tobool.i144 = icmp eq i8 %441, 0
  br i1 %tobool.i144, label %for.end.i148.thread, label %ioc_bb.i

for.end.i148.thread:                              ; preds = %if.then2.i, %land.lhs.true8.i, %land.lhs.true8.i, %for.inc.i147
  %.ph325 = phi i8* [ %438, %if.then2.i ], [ %.pre309.pre, %land.lhs.true8.i ], [ %.pre309.pre, %land.lhs.true8.i ], [ %incdec.ptr.i146, %for.inc.i147 ]
  call void @__ioc_report_conversion(i32 1799, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 143, i8 1) nounwind
  br label %if.end.i151

for.end.i148:                                     ; preds = %ioc_bb.i
  call void @__ioc_report_conversion(i32 1799, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp18.i = icmp eq i8 %.pre310.pre, -113
  br i1 %cmp18.i, label %ioc_bb21.i, label %if.end.i151

ioc_bb21.i:                                       ; preds = %for.end.i148
  call void @__ioc_report_conversion(i32 1800, i32 28, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 143, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1800, i32 42, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 144, i8 1) nounwind
  %call.i149 = call i32 @skipparens(i8 signext -113, i8 signext -112, i8** %p3.i) nounwind
  %.pre311 = load i8** %p3.i, align 4, !tbaa !0
  br label %if.end.i151

if.end.i151:                                      ; preds = %for.end.i148.thread, %ioc_bb21.i, %for.end.i148
  %442 = phi i8* [ %.pre311, %ioc_bb21.i ], [ %.pre309.pre, %for.end.i148 ], [ %.ph325, %for.end.i148.thread ]
  %443 = load i8* %442, align 1, !tbaa !1
  %cmp26.i150 = icmp eq i8 %443, 43
  br i1 %cmp26.i150, label %cont30.i, label %cont61.i152

cont30.i:                                         ; preds = %if.end.i151
  %incdec.ptr31.i = getelementptr inbounds i8* %442, i32 1
  store i8* %incdec.ptr31.i, i8** %p3.i, align 4, !tbaa !0
  store i8 0, i8* %442, align 1, !tbaa !1
  %call46.i = call fastcc i32 @ecadd(i32 69) nounwind
  br label %if.end63.i

cont61.i152:                                      ; preds = %if.end.i151
  %call62.i = call fastcc i32 @ecadd(i32 5) nounwind
  br label %if.end63.i

if.end63.i:                                       ; preds = %cont61.i152, %cont30.i
  %444 = load i8** %p3.i, align 4, !tbaa !0
  %445 = load i8* %444, align 1, !tbaa !1
  %cmp65.i153 = icmp eq i8 %445, 61
  br i1 %cmp65.i153, label %cont69.i154, label %if.else70.i

cont69.i154:                                      ; preds = %if.end63.i
  store i8 0, i8* %444, align 1, !tbaa !1
  %446 = load i8** %p3.i, align 4, !tbaa !0
  %add.ptr.i = getelementptr inbounds i8* %446, i32 1
  store i8* %add.ptr.i, i8** %str.i, align 4, !tbaa !0
  br label %if.end72.i

if.else70.i:                                      ; preds = %if.end63.i
  %447 = load i8** @tokstr, align 4, !tbaa !0
  %call71.i = call i32 @equalsplit(i8* %447, i8** %str.i) nounwind
  %.pre312 = load i8** %str.i, align 4, !tbaa !0
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else70.i, %cont69.i154
  %448 = phi i8* [ %.pre312, %if.else70.i ], [ %add.ptr.i, %cont69.i154 ]
  store i8* %448, i8** %p3.i, align 4
  %449 = load i8* %448, align 1, !tbaa !1
  %tobool74.i213 = icmp eq i8 %449, 0
  br i1 %tobool74.i213, label %for.end102.i, label %for.body75.i

for.body75.i:                                     ; preds = %if.end72.i, %for.inc100.i
  %storemerge514.i214 = phi i8* [ %incdec.ptr101.i, %for.inc100.i ], [ %448, %if.end72.i ]
  %arrayidx.i155 = getelementptr inbounds i8* %storemerge514.i214, i32 1
  %450 = load i8* %arrayidx.i155, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1819, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp79.i = icmp eq i8 %450, -120
  br i1 %cmp79.i, label %land.lhs.true81.i, label %for.inc100.i

land.lhs.true81.i:                                ; preds = %for.body75.i
  %451 = load i8** %p3.i, align 4, !tbaa !0
  %452 = load i8* %451, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1819, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp85.i156 = icmp eq i8 %452, -117
  br i1 %cmp85.i156, label %if.then98.i, label %lor.lhs.false.i158

lor.lhs.false.i158:                               ; preds = %land.lhs.true81.i
  %453 = load i8** %p3.i, align 4, !tbaa !0
  %454 = load i8* %453, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1819, i32 82, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp90.i157 = icmp eq i8 %454, -110
  br i1 %cmp90.i157, label %if.then98.i, label %lor.lhs.false92.i

lor.lhs.false92.i:                                ; preds = %lor.lhs.false.i158
  %455 = load i8** %p3.i, align 4, !tbaa !0
  %456 = load i8* %455, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1819, i32 108, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp96.i = icmp eq i8 %456, -108
  br i1 %cmp96.i, label %if.then98.i, label %for.inc100.i

if.then98.i:                                      ; preds = %lor.lhs.false92.i, %lor.lhs.false.i158, %land.lhs.true81.i
  store i32 1, i32* %complex, align 4, !tbaa !3
  br label %for.end102.i

for.inc100.i:                                     ; preds = %lor.lhs.false92.i, %for.body75.i
  %457 = load i8** %p3.i, align 4, !tbaa !0
  %incdec.ptr101.i = getelementptr inbounds i8* %457, i32 1
  store i8* %incdec.ptr101.i, i8** %p3.i, align 4
  %458 = load i8* %incdec.ptr101.i, align 1, !tbaa !1
  %tobool74.i = icmp eq i8 %458, 0
  br i1 %tobool74.i, label %for.end102.i, label %for.body75.i

for.end102.i:                                     ; preds = %if.end72.i, %for.inc100.i, %if.then98.i
  %call103.i = call fastcc i32 @ecstrcode(i8* %438) nounwind
  %call104.i = call fastcc i32 @ecadd(i32 %call103.i) nounwind
  %459 = load i8** %str.i, align 4, !tbaa !0
  %call105.i = call fastcc i32 @ecstrcode(i8* %459) nounwind
  %call106.i = call fastcc i32 @ecadd(i32 %call105.i) nounwind
  br label %if.end163.i

if.then110.i:                                     ; preds = %for.cond.i142
  %460 = load i32* @incmdpos, align 4, !tbaa !3
  %call113.i159 = call fastcc i32 @ecadd(i32 0) nounwind
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  %461 = load i8** @tokstr, align 4, !tbaa !0
  %call114.i = call i32 @strlen(i8* %461) nounwind readonly
  %462 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call114.i, i32 1) nounwind
  %463 = extractvalue { i32, i1 } %462, 0
  %464 = extractvalue { i32, i1 } %462, 1
  br i1 %464, label %ioc_bb117.i, label %cont118.i160

ioc_bb117.i:                                      ; preds = %if.then110.i
  %465 = zext i32 %call114.i to i64
  call void @__ioc_report_sub_overflow(i32 1835, i32 36, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %465, i64 1, i8 5) nounwind
  br label %cont118.i160

cont118.i160:                                     ; preds = %ioc_bb117.i, %if.then110.i
  %466 = icmp sgt i32 %463, -1
  br i1 %466, label %cont120.i, label %ioc_bb119.i

ioc_bb119.i:                                      ; preds = %cont118.i160
  %467 = zext i32 %463 to i64
  call void @__ioc_report_conversion(i32 1835, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %467, i8 0) nounwind
  br label %cont120.i

cont120.i:                                        ; preds = %ioc_bb119.i, %cont118.i160
  %tobool121.i = icmp eq i32 %463, 0
  br i1 %tobool121.i, label %if.end132.i, label %land.lhs.true122.i

land.lhs.true122.i:                               ; preds = %cont120.i
  %468 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx123.i = getelementptr inbounds i8* %468, i32 %463
  %469 = load i8* %arrayidx123.i, align 1, !tbaa !1
  %cmp125.i = icmp eq i8 %469, 43
  br i1 %cmp125.i, label %cont129.i, label %if.end132.i

cont129.i:                                        ; preds = %land.lhs.true122.i
  store i8 0, i8* %arrayidx123.i, align 1, !tbaa !1
  br label %if.end132.i

if.end132.i:                                      ; preds = %cont120.i, %cont129.i, %land.lhs.true122.i
  %type2.0.i = phi i32 [ 3, %cont129.i ], [ 1, %land.lhs.true122.i ], [ 1, %cont120.i ]
  %470 = load i8** @tokstr, align 4, !tbaa !0
  %call133.i = call fastcc i32 @ecstrcode(i8* %470) nounwind
  %call134.i = call fastcc i32 @ecadd(i32 %call133.i) nounwind
  call void @cmdpush(i32 20) nounwind
  call void @zshlex() nounwind
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i, %if.end132.i
  %num.0.i.i = phi i32 [ 0, %if.end132.i ], [ %num.1.i.i, %if.end.i.i ]
  %471 = load i32* @tok, align 4, !tbaa !3
  switch i32 %471, label %par_nl_wordlist.exit.i [
    i32 1, label %if.end.i.i
    i32 34, label %if.then.i.i
  ]

if.then.i.i:                                      ; preds = %while.cond.i.i
  %472 = load i8** @tokstr, align 4, !tbaa !0
  %call.i.i = call fastcc i32 @ecstrcode(i8* %472) nounwind
  %call3.i.i = call fastcc i32 @ecadd(i32 %call.i.i) nounwind
  %473 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.0.i.i, i32 1) nounwind
  %474 = extractvalue { i32, i1 } %473, 0
  %475 = extractvalue { i32, i1 } %473, 1
  br i1 %475, label %ioc_bb.i.i, label %if.end.i.i

ioc_bb.i.i:                                       ; preds = %if.then.i.i
  %476 = sext i32 %num.0.i.i to i64
  call void @__ioc_report_add_overflow(i32 2191, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %476, i64 1, i8 13) nounwind
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ioc_bb.i.i, %if.then.i.i, %while.cond.i.i
  %num.1.i.i = phi i32 [ %num.0.i.i, %while.cond.i.i ], [ %474, %if.then.i.i ], [ %474, %ioc_bb.i.i ]
  call void @zshlex() nounwind
  br label %while.cond.i.i

par_nl_wordlist.exit.i:                           ; preds = %while.cond.i.i
  %477 = icmp ult i32 %num.0.i.i, 536870912
  br i1 %477, label %cont146.i161, label %ioc_bb145.i

ioc_bb145.i:                                      ; preds = %par_nl_wordlist.exit.i
  %478 = sext i32 %num.0.i.i to i64
  call void @__ioc_report_shl_strict(i32 1845, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %478, i64 2, i8 13) nounwind
  br label %cont146.i161

cont146.i161:                                     ; preds = %ioc_bb145.i, %par_nl_wordlist.exit.i
  %shl147.i = shl i32 %num.0.i.i, 2
  %or148.i = or i32 %shl147.i, %type2.0.i
  %479 = icmp sgt i32 %or148.i, -1
  br i1 %479, label %cont152.i, label %ioc_bb149.i162

ioc_bb149.i162:                                   ; preds = %cont146.i161
  %480 = sext i32 %or148.i to i64
  call void @__ioc_report_conversion(i32 1845, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %480, i8 1) nounwind
  br label %cont152.i

cont152.i:                                        ; preds = %ioc_bb149.i162, %cont146.i161
  %shl153.i = shl i32 %or148.i, 5
  %or154.i = or i32 %shl153.i, 5
  %481 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx155.i = getelementptr inbounds i32* %481, i32 %call113.i159
  store i32 %or154.i, i32* %arrayidx155.i, align 4, !tbaa !3
  call void @cmdpop() nounwind
  %482 = load i32* @tok, align 4, !tbaa !3
  %cmp156.i163 = icmp eq i32 %482, 7
  br i1 %cmp156.i163, label %if.end159.i, label %if.then158.i164

if.then158.i164:                                  ; preds = %cont152.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end159.i:                                      ; preds = %cont152.i
  store i32 %460, i32* @incmdpos, align 4, !tbaa !3
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.end159.i, %for.end102.i, %if.then.i143
  %assignments.1.i = phi i32 [ %assignments.0.i, %if.then.i143 ], [ 1, %for.end102.i ], [ 1, %if.end159.i ]
  %c.1.i = phi i32 [ 1, %if.then.i143 ], [ %c.0.i, %for.end102.i ], [ %c.0.i, %if.end159.i ]
  %isnull.1.i = phi i32 [ %isnull.0.i, %if.then.i143 ], [ 0, %for.end102.i ], [ 0, %if.end159.i ]
  call void @zshlex() nounwind
  %.pre = load i32* @tok, align 4, !tbaa !3
  br label %for.cond.i142

if.then170.i:                                     ; preds = %for.cond.i142, %for.cond.i142
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

cont177.i165:                                     ; preds = %for.cond.i142
  %call178.i = call fastcc i32 @ecadd(i32 6) nounwind
  br label %for.cond179.i.outer

for.cond179.i.outer:                              ; preds = %ioc_bb232.i167, %cont231.i, %ioc_bb260.i, %cont259.i, %cont177.i165
  %c.2.i.ph = phi i32 [ %c.0.i, %cont177.i165 ], [ 1, %cont259.i ], [ 1, %ioc_bb260.i ], [ 1, %cont231.i ], [ 1, %ioc_bb232.i167 ]
  %sr.0.i.ph = phi i32 [ 0, %cont177.i165 ], [ %524, %cont259.i ], [ %524, %ioc_bb260.i ], [ %504, %cont231.i ], [ %504, %ioc_bb232.i167 ]
  %p.0.i.ph = phi i32 [ %call178.i, %cont177.i165 ], [ %519, %cont259.i ], [ %519, %ioc_bb260.i ], [ %499, %cont231.i ], [ %499, %ioc_bb232.i167 ]
  %argc.0.i.ph = phi i32 [ 0, %cont177.i165 ], [ %argc.0.i.lcssa, %cont259.i ], [ %argc.0.i.lcssa, %ioc_bb260.i ], [ %argc.0.i208, %cont231.i ], [ %argc.0.i208, %ioc_bb232.i167 ]
  %isnull.2.i.ph = phi i32 [ %isnull.0.i, %cont177.i165 ], [ 0, %cont259.i ], [ 0, %ioc_bb260.i ], [ 0, %cont231.i ], [ 0, %ioc_bb232.i167 ]
  %483 = load i32* @tok, align 4, !tbaa !3
  %cmp180.i207 = icmp eq i32 %483, 34
  br i1 %cmp180.i207, label %if.then182.i166, label %if.else250.i

if.then182.i166:                                  ; preds = %for.cond179.i.outer, %for.cond179.i.backedge
  %argc.0.i208 = phi i32 [ %argc.0.i.be, %for.cond179.i.backedge ], [ %argc.0.i.ph, %for.cond179.i.outer ]
  store i32 1, i32* %complex, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  %484 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %tobool183.i = icmp eq i8 %484, 0
  br i1 %tobool183.i, label %land.lhs.true184.i, label %if.then244.i

land.lhs.true184.i:                               ; preds = %if.then182.i166
  %485 = load i8** @tokstr, align 4, !tbaa !0
  %486 = load i8* %485, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1873, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp188.i = icmp eq i8 %486, -115
  br i1 %cmp188.i, label %if.then190.i, label %if.then244.i

if.then190.i:                                     ; preds = %land.lhs.true184.i
  %487 = load i8** @tokstr, align 4, !tbaa !0
  %call191.i = call i32 @strlen(i8* %487) nounwind readonly
  %add.ptr192.sum.i = add i32 %call191.i, -1
  %add.ptr193.i = getelementptr inbounds i8* %487, i32 %add.ptr192.sum.i
  %488 = load i8* %add.ptr193.i, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1876, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp197.i = icmp eq i8 %488, -114
  br i1 %cmp197.i, label %land.lhs.true199.i, label %if.then244.i

land.lhs.true199.i:                               ; preds = %if.then190.i
  %489 = load i8** @tokstr, align 4, !tbaa !0
  %add.ptr200.i = getelementptr inbounds i8* %489, i32 1
  %cmp201.i = icmp ugt i8* %add.ptr193.i, %add.ptr200.i
  br i1 %cmp201.i, label %cont208.i, label %if.then244.i

cont208.i:                                        ; preds = %land.lhs.true199.i
  %call209.i = call i8* @itype_end(i8* %add.ptr200.i, i32 128, i32 0) nounwind
  %add.ptr193.sum.i = add i32 %call191.i, -2
  %add.ptr210.i = getelementptr inbounds i8* %487, i32 %add.ptr193.sum.i
  %cmp211.i = icmp ult i8* %call209.i, %add.ptr210.i
  br i1 %cmp211.i, label %if.then244.i, label %if.then213.i

if.then213.i:                                     ; preds = %cont208.i
  %490 = load i8** @tokstr, align 4, !tbaa !0
  %add.ptr214.i = getelementptr inbounds i8* %490, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint i8* %add.ptr193.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %490 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %491 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub.i, i32 1) nounwind
  %492 = extractvalue { i32, i1 } %491, 0
  %493 = extractvalue { i32, i1 } %491, 1
  br i1 %493, label %ioc_bb215.i, label %cont216.i

ioc_bb215.i:                                      ; preds = %if.then213.i
  %494 = sext i32 %sub.ptr.sub.i to i64
  call void @__ioc_report_sub_overflow(i32 1879, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %494, i64 1, i8 13) nounwind
  br label %cont216.i

cont216.i:                                        ; preds = %ioc_bb215.i, %if.then213.i
  %call217.i = call i8* @dupstrpfx(i8* %add.ptr214.i, i32 %492) nounwind
  call void @zshlex() nounwind
  %495 = load i32* @tok, align 4, !tbaa !3
  %.off513.i = add i32 %495, -10
  %496 = icmp ult i32 %.off513.i, 15
  %497 = load i32* @tokfd, align 4, !tbaa !3
  %cmp226.i = icmp eq i32 %497, -1
  %or.cond515.i = and i1 %496, %cmp226.i
  br i1 %or.cond515.i, label %if.then228.i, label %if.else234.i

if.then228.i:                                     ; preds = %cont216.i
  store i32 1, i32* %complex, align 4, !tbaa !3
  %call229.i = call fastcc i32 @par_redir(i32* %r.i, i8* %call217.i) nounwind
  %498 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p.0.i.ph, i32 %call229.i) nounwind
  %499 = extractvalue { i32, i1 } %498, 0
  %500 = extractvalue { i32, i1 } %498, 1
  %501 = sext i32 %call229.i to i64
  br i1 %500, label %ioc_bb230.i, label %cont231.i

ioc_bb230.i:                                      ; preds = %if.then228.i
  %502 = sext i32 %p.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 1885, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %502, i64 %501, i8 13) nounwind
  br label %cont231.i

cont231.i:                                        ; preds = %ioc_bb230.i, %if.then228.i
  %503 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sr.0.i.ph, i32 %call229.i) nounwind
  %504 = extractvalue { i32, i1 } %503, 0
  %505 = extractvalue { i32, i1 } %503, 1
  br i1 %505, label %ioc_bb232.i167, label %for.cond179.i.outer

ioc_bb232.i167:                                   ; preds = %cont231.i
  %506 = sext i32 %sr.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 1886, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %506, i64 %501, i8 13) nounwind
  br label %for.cond179.i.outer

if.else234.i:                                     ; preds = %cont216.i
  %call235.i = call fastcc i32 @ecstrcode(i8* %490) nounwind
  %call236.i = call fastcc i32 @ecadd(i32 %call235.i) nounwind
  %507 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %argc.0.i208, i32 1) nounwind
  %508 = extractvalue { i32, i1 } %507, 0
  %509 = extractvalue { i32, i1 } %507, 1
  br i1 %509, label %ioc_bb237.i168, label %for.cond179.i.backedge

ioc_bb237.i168:                                   ; preds = %if.else234.i
  %510 = sext i32 %argc.0.i208 to i64
  call void @__ioc_report_add_overflow(i32 1890, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %510, i64 1, i8 13) nounwind
  br label %for.cond179.i.backedge

if.then244.i:                                     ; preds = %cont208.i, %if.then190.i, %land.lhs.true184.i, %if.then182.i166, %land.lhs.true199.i
  %511 = load i8** @tokstr, align 4, !tbaa !0
  %call245.i = call fastcc i32 @ecstrcode(i8* %511) nounwind
  %call246.i = call fastcc i32 @ecadd(i32 %call245.i) nounwind
  %512 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %argc.0.i208, i32 1) nounwind
  %513 = extractvalue { i32, i1 } %512, 0
  %514 = extractvalue { i32, i1 } %512, 1
  br i1 %514, label %ioc_bb247.i169, label %cont248.i170

ioc_bb247.i169:                                   ; preds = %if.then244.i
  %515 = sext i32 %argc.0.i208 to i64
  call void @__ioc_report_add_overflow(i32 1897, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %515, i64 1, i8 13) nounwind
  br label %cont248.i170

cont248.i170:                                     ; preds = %ioc_bb247.i169, %if.then244.i
  call void @zshlex() nounwind
  br label %for.cond179.i.backedge

for.cond179.i.backedge:                           ; preds = %cont248.i170, %ioc_bb237.i168, %if.else234.i
  %argc.0.i.be = phi i32 [ %513, %cont248.i170 ], [ %508, %if.else234.i ], [ %508, %ioc_bb237.i168 ]
  %516 = load i32* @tok, align 4, !tbaa !3
  %cmp180.i = icmp eq i32 %516, 34
  br i1 %cmp180.i, label %if.then182.i166, label %if.else250.i

if.else250.i:                                     ; preds = %for.cond179.i.backedge, %for.cond179.i.outer
  %.lcssa = phi i32 [ %483, %for.cond179.i.outer ], [ %516, %for.cond179.i.backedge ]
  %isnull.2.i.lcssa = phi i32 [ %isnull.2.i.ph, %for.cond179.i.outer ], [ 0, %for.cond179.i.backedge ]
  %argc.0.i.lcssa = phi i32 [ %argc.0.i.ph, %for.cond179.i.outer ], [ %argc.0.i.be, %for.cond179.i.backedge ]
  %.off.i = add i32 %.lcssa, -10
  %517 = icmp ult i32 %.off.i, 15
  br i1 %517, label %if.then256.i, label %if.else262.i

if.then256.i:                                     ; preds = %if.else250.i
  store i32 1, i32* %complex, align 4, !tbaa !3
  %call257.i = call fastcc i32 @par_redir(i32* %r.i, i8* null) nounwind
  %518 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p.0.i.ph, i32 %call257.i) nounwind
  %519 = extractvalue { i32, i1 } %518, 0
  %520 = extractvalue { i32, i1 } %518, 1
  %521 = sext i32 %call257.i to i64
  br i1 %520, label %ioc_bb258.i, label %cont259.i

ioc_bb258.i:                                      ; preds = %if.then256.i
  %522 = sext i32 %p.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 1904, i32 9, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %522, i64 %521, i8 13) nounwind
  br label %cont259.i

cont259.i:                                        ; preds = %ioc_bb258.i, %if.then256.i
  %523 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sr.0.i.ph, i32 %call257.i) nounwind
  %524 = extractvalue { i32, i1 } %523, 0
  %525 = extractvalue { i32, i1 } %523, 1
  br i1 %525, label %ioc_bb260.i, label %for.cond179.i.outer

ioc_bb260.i:                                      ; preds = %cont259.i
  %526 = sext i32 %sr.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 1905, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %526, i64 %521, i8 13) nounwind
  br label %for.cond179.i.outer

if.else262.i:                                     ; preds = %if.else250.i
  %cmp263.i = icmp eq i32 %.lcssa, 27
  br i1 %cmp263.i, label %if.then265.i, label %for.end434.i

if.then265.i:                                     ; preds = %if.else262.i
  %527 = load i64* @lineno, align 8, !tbaa !5
  %528 = load i32* @ecssub, align 4, !tbaa !3
  %529 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 110), align 1, !tbaa !1
  %tobool266.i171 = icmp eq i8 %529, 0
  %cmp268.i172 = icmp sgt i32 %argc.0.i.lcssa, 1
  %or.cond.i173 = and i1 %tobool266.i171, %cmp268.i172
  br i1 %or.cond.i173, label %if.then270.i, label %if.end271.i

if.then270.i:                                     ; preds = %if.then265.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end271.i:                                      ; preds = %if.then265.i
  %tobool272.i = icmp eq i32 %assignments.0.i, 0
  br i1 %tobool272.i, label %if.end274.i, label %if.then273.i

if.then273.i:                                     ; preds = %if.end271.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end274.i:                                      ; preds = %if.end271.i
  store i32 %c.2.i.ph, i32* %complex, align 4, !tbaa !3
  store i64 0, i64* @lineno, align 8, !tbaa !5
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  call void @cmdpush(i32 17) nounwind
  call void @zshlex() nounwind
  %530 = load i32* @tok, align 4, !tbaa !3
  %cmp275.i203 = icmp eq i32 %530, 1
  br i1 %cmp275.i203, label %while.body.i175, label %while.end.i176

while.body.i175:                                  ; preds = %if.end274.i, %while.body.i175
  call void @zshlex() nounwind
  %531 = load i32* @tok, align 4, !tbaa !3
  %cmp275.i = icmp eq i32 %531, 1
  br i1 %cmp275.i, label %while.body.i175, label %while.end.i176

while.end.i176:                                   ; preds = %while.body.i175, %if.end274.i
  %532 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p.0.i.ph, i32 1) nounwind
  %533 = extractvalue { i32, i1 } %532, 0
  %534 = extractvalue { i32, i1 } %532, 1
  %535 = sext i32 %p.0.i.ph to i64
  br i1 %534, label %ioc_bb277.i, label %cont278.i

ioc_bb277.i:                                      ; preds = %while.end.i176
  call void @__ioc_report_add_overflow(i32 1933, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %535, i64 1, i8 13) nounwind
  br label %cont278.i

cont278.i:                                        ; preds = %ioc_bb277.i, %while.end.i176
  call fastcc void @ecispace(i32 %533, i32 1) nounwind
  %536 = sext i32 %argc.0.i.lcssa to i64
  %537 = icmp sgt i32 %argc.0.i.lcssa, -1
  br i1 %537, label %cont281.i, label %ioc_bb280.i

ioc_bb280.i:                                      ; preds = %cont278.i
  call void @__ioc_report_conversion(i32 1934, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %536, i8 1) nounwind
  br label %cont281.i

cont281.i:                                        ; preds = %ioc_bb280.i, %cont278.i
  br i1 %534, label %ioc_bb282.i, label %cont283.i

ioc_bb282.i:                                      ; preds = %cont281.i
  call void @__ioc_report_add_overflow(i32 1934, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %535, i64 1, i8 13) nounwind
  br label %cont283.i

cont283.i:                                        ; preds = %ioc_bb282.i, %cont281.i
  %538 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx284.i = getelementptr inbounds i32* %538, i32 %533
  store i32 %argc.0.i.lcssa, i32* %arrayidx284.i, align 4, !tbaa !3
  %call287.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call290.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call293.i = call fastcc i32 @ecadd(i32 0) nounwind
  %539 = load i32* @ecnfunc, align 4, !tbaa !3
  %540 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %539, i32 1) nounwind
  %541 = extractvalue { i32, i1 } %540, 0
  %542 = extractvalue { i32, i1 } %540, 1
  br i1 %542, label %ioc_bb294.i, label %cont295.i

ioc_bb294.i:                                      ; preds = %cont283.i
  %543 = sext i32 %539 to i64
  call void @__ioc_report_add_overflow(i32 1938, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %543, i64 1, i8 13) nounwind
  br label %cont295.i

cont295.i:                                        ; preds = %ioc_bb294.i, %cont283.i
  store i32 %541, i32* @ecnfunc, align 4, !tbaa !3
  %544 = load i32* @ecsoffs, align 4, !tbaa !3
  store i32 %544, i32* @ecssub, align 4, !tbaa !3
  %545 = load i32* @ecnpats, align 4, !tbaa !3
  store i32 0, i32* @ecnpats, align 4, !tbaa !3
  %546 = load i32* @tok, align 4, !tbaa !3
  %cmp296.i = icmp eq i32 %546, 41
  br i1 %cmp296.i, label %if.then298.i, label %if.else311.i

if.then298.i:                                     ; preds = %cont295.i
  store i32 0, i32* %c299.i, align 4, !tbaa !3
  call void @zshlex() nounwind
  call fastcc void @par_list(i32* %c299.i) nounwind
  %547 = load i32* @tok, align 4, !tbaa !3
  %cmp301.i = icmp eq i32 %547, 42
  br i1 %cmp301.i, label %if.end306.i, label %if.then303.i

if.then303.i:                                     ; preds = %if.then298.i
  call void @cmdpop() nounwind
  %548 = load i64* @lineno, align 8, !tbaa !5
  %549 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %548, i64 %527) nounwind
  %550 = extractvalue { i64, i1 } %549, 0
  %551 = extractvalue { i64, i1 } %549, 1
  br i1 %551, label %ioc_bb304.i, label %cont305.i

ioc_bb304.i:                                      ; preds = %if.then303.i
  call void @__ioc_report_add_overflow(i32 1948, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %548, i64 %527, i8 14) nounwind
  br label %cont305.i

cont305.i:                                        ; preds = %ioc_bb304.i, %if.then303.i
  store i64 %550, i64* @lineno, align 8, !tbaa !5
  store i32 %545, i32* @ecnpats, align 4, !tbaa !3
  store i32 %528, i32* @ecssub, align 4, !tbaa !3
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end306.i:                                      ; preds = %if.then298.i
  %cmp307.i = icmp eq i32 %argc.0.i.lcssa, 0
  br i1 %cmp307.i, label %if.then309.i, label %if.end310.i

if.then309.i:                                     ; preds = %if.end306.i
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.then309.i, %if.end306.i
  call void @zshlex() nounwind
  br label %if.end346.i

if.else311.i:                                     ; preds = %cont295.i
  store i32 0, i32* %c312.i, align 4, !tbaa !3
  %call315.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call318.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call329.i177 = call fastcc i32 @ecadd(i32 3) nounwind
  %call330.i = call fastcc i32 @par_cmd(i32* %c312.i) nounwind
  %tobool331.i = icmp eq i32 %call330.i, 0
  br i1 %tobool331.i, label %if.then332.i, label %if.end333.i

if.then332.i:                                     ; preds = %if.else311.i
  call void @cmdpop() nounwind
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %435, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end333.i:                                      ; preds = %if.else311.i
  %552 = load i32* @ecused, align 4, !tbaa !3
  %553 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %552, i32 1) nounwind
  %554 = extractvalue { i32, i1 } %553, 0
  %555 = extractvalue { i32, i1 } %553, 1
  br i1 %555, label %ioc_bb334.i, label %cont335.i178

ioc_bb334.i:                                      ; preds = %if.end333.i
  %556 = sext i32 %552 to i64
  call void @__ioc_report_sub_overflow(i32 1980, i32 40, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %556, i64 1, i8 13) nounwind
  br label %cont335.i178

cont335.i178:                                     ; preds = %ioc_bb334.i, %if.end333.i
  %557 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %554, i32 %call318.i) nounwind
  %558 = extractvalue { i32, i1 } %557, 0
  %559 = extractvalue { i32, i1 } %557, 1
  br i1 %559, label %ioc_bb336.i, label %cont337.i

ioc_bb336.i:                                      ; preds = %cont335.i178
  %560 = sext i32 %call318.i to i64
  %561 = sext i32 %554 to i64
  call void @__ioc_report_sub_overflow(i32 1980, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %561, i64 %560, i8 13) nounwind
  br label %cont337.i

cont337.i:                                        ; preds = %ioc_bb336.i, %cont335.i178
  %562 = load i32* %c312.i, align 4, !tbaa !3
  call fastcc void @set_sublist_code(i32 %call318.i, i32 0, i32 0, i32 %558, i32 %562) nounwind
  %563 = load i32* %c312.i, align 4, !tbaa !3
  call fastcc void @set_list_code(i32 %call315.i, i32 18, i32 %563) nounwind
  br label %if.end346.i

if.end346.i:                                      ; preds = %cont337.i, %if.end310.i
  call void @cmdpop() nounwind
  %call353.i = call fastcc i32 @ecadd(i32 0) nounwind
  %564 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %544, i32 %528) nounwind
  %565 = extractvalue { i32, i1 } %564, 0
  %566 = extractvalue { i32, i1 } %564, 1
  %567 = sext i32 %544 to i64
  br i1 %566, label %ioc_bb354.i, label %cont355.i

ioc_bb354.i:                                      ; preds = %if.end346.i
  %568 = sext i32 %528 to i64
  call void @__ioc_report_sub_overflow(i32 1985, i32 33, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %567, i64 %568, i8 13) nounwind
  br label %cont355.i

cont355.i:                                        ; preds = %ioc_bb354.i, %if.end346.i
  %569 = icmp sgt i32 %565, -1
  br i1 %569, label %cont358.i180, label %ioc_bb357.i179

ioc_bb357.i179:                                   ; preds = %cont355.i
  %570 = sext i32 %565 to i64
  call void @__ioc_report_conversion(i32 1985, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %570, i8 1) nounwind
  br label %cont358.i180

cont358.i180:                                     ; preds = %ioc_bb357.i179, %cont355.i
  %571 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p.0.i.ph, i32 %argc.0.i.lcssa) nounwind
  %572 = extractvalue { i32, i1 } %571, 0
  %573 = extractvalue { i32, i1 } %571, 1
  br i1 %573, label %ioc_bb359.i, label %cont360.i

ioc_bb359.i:                                      ; preds = %cont358.i180
  call void @__ioc_report_add_overflow(i32 1985, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %535, i64 %536, i8 13) nounwind
  br label %cont360.i

cont360.i:                                        ; preds = %ioc_bb359.i, %cont358.i180
  %574 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %572, i32 2) nounwind
  %575 = extractvalue { i32, i1 } %574, 0
  %576 = extractvalue { i32, i1 } %574, 1
  %577 = sext i32 %572 to i64
  br i1 %576, label %ioc_bb361.i, label %cont362.i

ioc_bb361.i:                                      ; preds = %cont360.i
  call void @__ioc_report_add_overflow(i32 1985, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %577, i64 2, i8 13) nounwind
  br label %cont362.i

cont362.i:                                        ; preds = %ioc_bb361.i, %cont360.i
  %578 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx363.i = getelementptr inbounds i32* %578, i32 %575
  store i32 %565, i32* %arrayidx363.i, align 4, !tbaa !3
  %579 = load i32* @ecsoffs, align 4, !tbaa !3
  %580 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %579, i32 %544) nounwind
  %581 = extractvalue { i32, i1 } %580, 0
  %582 = extractvalue { i32, i1 } %580, 1
  br i1 %582, label %ioc_bb364.i, label %cont365.i

ioc_bb364.i:                                      ; preds = %cont362.i
  %583 = sext i32 %579 to i64
  call void @__ioc_report_sub_overflow(i32 1986, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %583, i64 %567, i8 13) nounwind
  br label %cont365.i

cont365.i:                                        ; preds = %ioc_bb364.i, %cont362.i
  %584 = icmp sgt i32 %581, -1
  br i1 %584, label %cont368.i, label %ioc_bb367.i

ioc_bb367.i:                                      ; preds = %cont365.i
  %585 = sext i32 %581 to i64
  call void @__ioc_report_conversion(i32 1986, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %585, i8 1) nounwind
  br label %cont368.i

cont368.i:                                        ; preds = %ioc_bb367.i, %cont365.i
  br i1 %573, label %ioc_bb369.i, label %cont370.i

ioc_bb369.i:                                      ; preds = %cont368.i
  call void @__ioc_report_add_overflow(i32 1986, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %535, i64 %536, i8 13) nounwind
  br label %cont370.i

cont370.i:                                        ; preds = %ioc_bb369.i, %cont368.i
  %586 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %572, i32 3) nounwind
  %587 = extractvalue { i32, i1 } %586, 0
  %588 = extractvalue { i32, i1 } %586, 1
  br i1 %588, label %ioc_bb371.i, label %cont372.i

ioc_bb371.i:                                      ; preds = %cont370.i
  call void @__ioc_report_add_overflow(i32 1986, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %577, i64 3, i8 13) nounwind
  br label %cont372.i

cont372.i:                                        ; preds = %cont370.i, %ioc_bb371.i
  %589 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx373.i = getelementptr inbounds i32* %589, i32 %587
  store i32 %581, i32* %arrayidx373.i, align 4, !tbaa !3
  %590 = load i32* @ecnpats, align 4, !tbaa !3
  %591 = icmp sgt i32 %590, -1
  br i1 %591, label %cont376.i, label %ioc_bb375.i

ioc_bb375.i:                                      ; preds = %cont372.i
  %592 = sext i32 %590 to i64
  call void @__ioc_report_conversion(i32 1987, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %592, i8 1) nounwind
  br label %cont376.i

cont376.i:                                        ; preds = %ioc_bb375.i, %cont372.i
  br i1 %573, label %ioc_bb377.i, label %cont378.i

ioc_bb377.i:                                      ; preds = %cont376.i
  call void @__ioc_report_add_overflow(i32 1987, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %535, i64 %536, i8 13) nounwind
  br label %cont378.i

cont378.i:                                        ; preds = %ioc_bb377.i, %cont376.i
  %593 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %572, i32 4) nounwind
  %594 = extractvalue { i32, i1 } %593, 0
  %595 = extractvalue { i32, i1 } %593, 1
  br i1 %595, label %ioc_bb379.i181, label %cont380.i

ioc_bb379.i181:                                   ; preds = %cont378.i
  call void @__ioc_report_add_overflow(i32 1987, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %577, i64 4, i8 13) nounwind
  br label %cont380.i

cont380.i:                                        ; preds = %cont378.i, %ioc_bb379.i181
  %596 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx381.i = getelementptr inbounds i32* %596, i32 %594
  store i32 %590, i32* %arrayidx381.i, align 4, !tbaa !3
  store i32 %545, i32* @ecnpats, align 4, !tbaa !3
  store i32 %528, i32* @ecssub, align 4, !tbaa !3
  %597 = load i32* @ecnfunc, align 4, !tbaa !3
  %598 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %597, i32 1) nounwind
  %599 = extractvalue { i32, i1 } %598, 0
  %600 = extractvalue { i32, i1 } %598, 1
  br i1 %600, label %ioc_bb382.i, label %cont383.i

ioc_bb382.i:                                      ; preds = %cont380.i
  %601 = sext i32 %597 to i64
  call void @__ioc_report_add_overflow(i32 1990, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %601, i64 1, i8 13) nounwind
  br label %cont383.i

cont383.i:                                        ; preds = %ioc_bb382.i, %cont380.i
  store i32 %599, i32* @ecnfunc, align 4, !tbaa !3
  %602 = load i32* @ecused, align 4, !tbaa !3
  %603 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %602, i32 1) nounwind
  %604 = extractvalue { i32, i1 } %603, 0
  %605 = extractvalue { i32, i1 } %603, 1
  br i1 %605, label %ioc_bb386.i, label %cont387.i

ioc_bb386.i:                                      ; preds = %cont383.i
  %606 = sext i32 %602 to i64
  call void @__ioc_report_sub_overflow(i32 1991, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %606, i64 1, i8 13) nounwind
  br label %cont387.i

cont387.i:                                        ; preds = %ioc_bb386.i, %cont383.i
  %607 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %604, i32 %p.0.i.ph) nounwind
  %608 = extractvalue { i32, i1 } %607, 0
  %609 = extractvalue { i32, i1 } %607, 1
  br i1 %609, label %ioc_bb388.i, label %cont389.i

ioc_bb388.i:                                      ; preds = %cont387.i
  %610 = sext i32 %604 to i64
  call void @__ioc_report_sub_overflow(i32 1991, i32 60, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %610, i64 %535, i8 13) nounwind
  br label %cont389.i

cont389.i:                                        ; preds = %ioc_bb388.i, %cont387.i
  %611 = icmp sgt i32 %608, -1
  br i1 %611, label %cont394.i, label %ioc_bb391.i

ioc_bb391.i:                                      ; preds = %cont389.i
  %612 = sext i32 %608 to i64
  call void @__ioc_report_conversion(i32 1991, i32 48, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %612, i8 1) nounwind
  br label %cont394.i

cont394.i:                                        ; preds = %cont389.i, %ioc_bb391.i
  %shl395.i = shl i32 %608, 5
  %or396.i = or i32 %shl395.i, 10
  %613 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx397.i = getelementptr inbounds i32* %613, i32 %p.0.i.ph
  store i32 %or396.i, i32* %arrayidx397.i, align 4, !tbaa !3
  %cmp398.i = icmp eq i32 %argc.0.i.lcssa, 0
  br i1 %cmp398.i, label %cont402.i, label %if.end428.i

cont402.i:                                        ; preds = %cont394.i
  %call403.i = call fastcc i32 @ecadd(i32 0) nounwind
  %call406.i = call fastcc i32 @ecadd(i32 0) nounwind
  %614 = load i32* @tok, align 4, !tbaa !3
  %cmp408.i201 = icmp eq i32 %614, 34
  br i1 %cmp408.i201, label %while.body410.i, label %while.end415.i

while.body410.i:                                  ; preds = %cont402.i, %cont414.i
  %argc.2.i202 = phi i32 [ %617, %cont414.i ], [ 0, %cont402.i ]
  %615 = load i8** @tokstr, align 4, !tbaa !0
  %call411.i = call fastcc i32 @ecstrcode(i8* %615) nounwind
  %call412.i = call fastcc i32 @ecadd(i32 %call411.i) nounwind
  %616 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %argc.2.i202, i32 1) nounwind
  %617 = extractvalue { i32, i1 } %616, 0
  %618 = extractvalue { i32, i1 } %616, 1
  br i1 %618, label %ioc_bb413.i, label %cont414.i

ioc_bb413.i:                                      ; preds = %while.body410.i
  %619 = sext i32 %argc.2.i202 to i64
  call void @__ioc_report_add_overflow(i32 1998, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %619, i64 1, i8 13) nounwind
  br label %cont414.i

cont414.i:                                        ; preds = %ioc_bb413.i, %while.body410.i
  call void @zshlex() nounwind
  %620 = load i32* @tok, align 4, !tbaa !3
  %cmp408.i = icmp eq i32 %620, 34
  br i1 %cmp408.i, label %while.body410.i, label %while.end415.i

while.end415.i:                                   ; preds = %cont414.i, %cont402.i
  %argc.2.i.lcssa = phi i32 [ 0, %cont402.i ], [ %617, %cont414.i ]
  %621 = load i32* @ecused, align 4, !tbaa !3
  %622 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %621, i32 %call403.i) nounwind
  %623 = extractvalue { i32, i1 } %622, 0
  %624 = extractvalue { i32, i1 } %622, 1
  %625 = sext i32 %call403.i to i64
  br i1 %624, label %ioc_bb416.i, label %cont417.i

ioc_bb416.i:                                      ; preds = %while.end415.i
  %626 = sext i32 %621 to i64
  call void @__ioc_report_sub_overflow(i32 2002, i32 31, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %626, i64 %625, i8 13) nounwind
  br label %cont417.i

cont417.i:                                        ; preds = %ioc_bb416.i, %while.end415.i
  %627 = icmp sgt i32 %623, -1
  br i1 %627, label %cont420.i, label %ioc_bb419.i

ioc_bb419.i:                                      ; preds = %cont417.i
  %628 = sext i32 %623 to i64
  call void @__ioc_report_conversion(i32 2002, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %628, i8 1) nounwind
  br label %cont420.i

cont420.i:                                        ; preds = %ioc_bb419.i, %cont417.i
  %629 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx421.i = getelementptr inbounds i32* %629, i32 %call403.i
  store i32 %623, i32* %arrayidx421.i, align 4, !tbaa !3
  %630 = icmp sgt i32 %argc.2.i.lcssa, -1
  br i1 %630, label %cont424.i, label %ioc_bb423.i

ioc_bb423.i:                                      ; preds = %cont420.i
  %631 = sext i32 %argc.2.i.lcssa to i64
  call void @__ioc_report_conversion(i32 2003, i32 27, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %631, i8 1) nounwind
  br label %cont424.i

cont424.i:                                        ; preds = %ioc_bb423.i, %cont420.i
  %632 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call403.i, i32 1) nounwind
  %633 = extractvalue { i32, i1 } %632, 0
  %634 = extractvalue { i32, i1 } %632, 1
  br i1 %634, label %ioc_bb425.i, label %cont426.i

ioc_bb425.i:                                      ; preds = %cont424.i
  call void @__ioc_report_add_overflow(i32 2003, i32 20, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %625, i64 1, i8 13) nounwind
  br label %cont426.i

cont426.i:                                        ; preds = %cont424.i, %ioc_bb425.i
  %635 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx427.i = getelementptr inbounds i32* %635, i32 %633
  store i32 %argc.2.i.lcssa, i32* %arrayidx427.i, align 4, !tbaa !3
  br label %if.end428.i

if.end428.i:                                      ; preds = %cont426.i, %cont394.i
  %636 = load i64* @lineno, align 8, !tbaa !5
  %637 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %636, i64 %527) nounwind
  %638 = extractvalue { i64, i1 } %637, 0
  %639 = extractvalue { i64, i1 } %637, 1
  br i1 %639, label %ioc_bb429.i, label %if.end441.i

ioc_bb429.i:                                      ; preds = %if.end428.i
  call void @__ioc_report_add_overflow(i32 2005, i32 14, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %636, i64 %527, i8 14) nounwind
  br label %if.end441.i

for.end434.i:                                     ; preds = %if.else262.i
  %tobool435.i = icmp eq i32 %isnull.2.i.lcssa, 0
  br i1 %tobool435.i, label %cont445.i, label %land.lhs.true436.i

land.lhs.true436.i:                               ; preds = %for.end434.i
  %640 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sr.0.i.ph, i32 %nr.1) nounwind
  %641 = extractvalue { i32, i1 } %640, 0
  %642 = extractvalue { i32, i1 } %640, 1
  br i1 %642, label %ioc_bb437.i, label %cont438.i

ioc_bb437.i:                                      ; preds = %land.lhs.true436.i
  %643 = sext i32 %nr.1 to i64
  %644 = sext i32 %sr.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 2014, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %644, i64 %643, i8 13) nounwind
  br label %cont438.i

cont438.i:                                        ; preds = %ioc_bb437.i, %land.lhs.true436.i
  %tobool439.i = icmp eq i32 %641, 0
  br i1 %tobool439.i, label %if.then440.i, label %cont445.i

if.then440.i:                                     ; preds = %cont438.i
  store i32 %p.0.i.ph, i32* @ecused, align 4, !tbaa !3
  br label %par_simple.exit

if.end441.i:                                      ; preds = %if.end428.i, %ioc_bb429.i
  store i64 %638, i64* @lineno, align 8, !tbaa !5
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %if.end454.i

cont445.i:                                        ; preds = %cont438.i, %for.end434.i
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %645 = icmp sgt i32 %argc.0.i.lcssa, -1
  br i1 %645, label %cont450.i, label %ioc_bb447.i

ioc_bb447.i:                                      ; preds = %cont445.i
  %646 = sext i32 %argc.0.i.lcssa to i64
  call void @__ioc_report_conversion(i32 2020, i32 45, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %646, i8 1) nounwind
  br label %cont450.i

cont450.i:                                        ; preds = %ioc_bb447.i, %cont445.i
  %shl451.i = shl i32 %argc.0.i.lcssa, 5
  %or452.i = or i32 %shl451.i, 6
  %647 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx453.i = getelementptr inbounds i32* %647, i32 %p.0.i.ph
  store i32 %or452.i, i32* %arrayidx453.i, align 4, !tbaa !3
  br label %if.end454.i

if.end454.i:                                      ; preds = %if.end441.i, %cont450.i
  %648 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sr.0.i.ph, i32 1) nounwind
  %649 = extractvalue { i32, i1 } %648, 0
  %650 = extractvalue { i32, i1 } %648, 1
  br i1 %650, label %ioc_bb455.i, label %par_simple.exit

ioc_bb455.i:                                      ; preds = %if.end454.i
  %651 = sext i32 %sr.0.i.ph to i64
  call void @__ioc_report_add_overflow(i32 2021, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %651, i64 1, i8 13) nounwind
  br label %par_simple.exit

par_simple.exit:                                  ; preds = %if.then158.i164, %if.then170.i, %if.then270.i, %if.then273.i, %cont305.i, %if.then332.i, %if.then440.i, %if.end454.i, %ioc_bb455.i
  %retval.0.i = phi i32 [ 0, %if.then158.i164 ], [ 0, %if.then170.i ], [ 0, %if.then273.i ], [ 0, %cont305.i ], [ 0, %if.then440.i ], [ 0, %if.then332.i ], [ 0, %if.then270.i ], [ %649, %if.end454.i ], [ %649, %ioc_bb455.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %430) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %431) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %432) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %433) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %434) nounwind
  %tobool29 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool29, label %if.then30, label %if.else

if.then30:                                        ; preds = %par_simple.exit
  %tobool31 = icmp eq i32 %nr.1, 0
  br i1 %tobool31, label %return, label %sw.epilog

if.else:                                          ; preds = %par_simple.exit
  %cmp34 = icmp sgt i32 %retval.0.i, 1
  br i1 %cmp34, label %if.then35, label %sw.epilog

if.then35:                                        ; preds = %if.else
  store i32 1, i32* %complex, align 4, !tbaa !3
  %652 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %retval.0.i, i32 1)
  %653 = extractvalue { i32, i1 } %652, 0
  %654 = extractvalue { i32, i1 } %652, 1
  br i1 %654, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %if.then35
  %655 = sext i32 %retval.0.i to i64
  call void @__ioc_report_sub_overflow(i32 844, i32 21, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %655, i64 1, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %if.then35, %ioc_bb36
  %656 = load i32* %r, align 4, !tbaa !3
  %657 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %656, i32 %653)
  %658 = extractvalue { i32, i1 } %657, 0
  %659 = extractvalue { i32, i1 } %657, 1
  br i1 %659, label %ioc_bb38, label %cont39

ioc_bb38:                                         ; preds = %cont37
  %660 = sext i32 %653 to i64
  %661 = sext i32 %656 to i64
  call void @__ioc_report_add_overflow(i32 844, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %661, i64 %660, i8 13) nounwind
  br label %cont39

cont39:                                           ; preds = %cont37, %ioc_bb38
  store i32 %658, i32* %r, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then30, %cont262.i, %if.then220.i, %if.then200.i, %if.then127.i, %if.then99.i, %if.then27.i, %if.then8.i, %cont39, %par_time.exit, %cont21, %par_dinbrack.exit, %par_funcdef.exit, %sw.bb12, %sw.bb11, %par_repeat.exit, %sw.bb9, %sw.bb8, %par_case.exit, %sw.bb5, %sw.bb4, %sw.bb
  %662 = load i32* @tok, align 4, !tbaa !3
  %.off77 = add i32 %662, -10
  %663 = icmp ult i32 %.off77, 15
  br i1 %663, label %if.then45, label %if.end54

if.then45:                                        ; preds = %sw.epilog
  store i32 1, i32* %complex, align 4, !tbaa !3
  %664 = load i32* @tok, align 4, !tbaa !3
  %.off78200 = add i32 %664, -10
  %665 = icmp ult i32 %.off78200, 15
  br i1 %665, label %while.body51, label %if.end54

while.body51:                                     ; preds = %if.then45, %while.body51
  %call52 = call fastcc i32 @par_redir(i32* %r, i8* null)
  %666 = load i32* @tok, align 4, !tbaa !3
  %.off78 = add i32 %666, -10
  %667 = icmp ult i32 %.off78, 15
  br i1 %667, label %while.body51, label %if.end54

if.end54:                                         ; preds = %if.then45, %while.body51, %sw.epilog
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  store i32 0, i32* @incasepat, align 4, !tbaa !3
  store i32 0, i32* @incond, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then30, %if.end54
  %retval.0 = phi i32 [ 1, %if.end54 ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

define internal fastcc i32 @par_redir(i32* nocapture %rp, i8* %idstring) nounwind {
entry:
  %0 = load i32* %rp, align 4, !tbaa !3
  %1 = load i32* @incmdpos, align 4, !tbaa !3
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  %2 = load i32* @nocorrect, align 4, !tbaa !3
  %3 = load i32* @tok, align 4, !tbaa !3
  %.off = add i32 %3, -14
  %4 = icmp ugt i32 %.off, 1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @nocorrect, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 10)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %8 = sext i32 %3 to i64
  tail call void @__ioc_report_sub_overflow(i32 2045, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %8, i64 10, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  %arrayidx = getelementptr inbounds [15 x i32]* @redirtab, i32 0, i32 %6
  %9 = load i32* %arrayidx, align 4, !tbaa !3
  %10 = load i32* @tokfd, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %11 = load i32* @tok, align 4, !tbaa !3
  %.off213 = add i32 %11, -34
  %12 = icmp ugt i32 %.off213, 1
  br i1 %12, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cont
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %return

if.end6:                                          ; preds = %cont
  store i32 %1, i32* @incmdpos, align 4, !tbaa !3
  store i32 %2, i32* @nocorrect, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %10, -1
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end6
  %13 = lshr i32 17392, %6
  %14 = and i32 %13, 1
  %cmp11 = icmp ne i32 %14, 0
  %cmp13 = icmp ne i32 %6, 9
  %or.cond173 = and i1 %cmp11, %cmp13
  %15 = zext i1 %or.cond173 to i32
  %. = xor i32 %15, 1
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end6
  %fd1.0 = phi i32 [ %., %if.then10 ], [ %10, %if.end6 ]
  %16 = load i8** @tokstr, align 4, !tbaa !0
  switch i32 %9, label %sw.epilog [
    i32 10, label %sw.bb16
    i32 11, label %sw.bb16
    i32 0, label %sw.bb46
    i32 1, label %sw.bb46
    i32 9, label %sw.bb77
    i32 8, label %sw.bb109
  ]

sw.bb16:                                          ; preds = %if.end15, %if.end15
  %tobool = icmp ne i8* %idstring, null
  %or = or i32 %9, 32
  %ncodes.0 = select i1 %tobool, i32 6, i32 5
  %type.0 = select i1 %tobool, i32 %or, i32 %9
  tail call fastcc void @ecispace(i32 %0, i32 %ncodes.0)
  %17 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %ncodes.0)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  %20 = sext i32 %0 to i64
  br i1 %19, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %sw.bb16
  %21 = zext i32 %ncodes.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2082, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %20, i64 %21, i8 13) nounwind
  br label %cont20

cont20:                                           ; preds = %sw.bb16, %ioc_bb19
  store i32 %18, i32* %rp, align 4, !tbaa !3
  %22 = icmp sgt i32 %type.0, -1
  br i1 %22, label %cont26, label %ioc_bb23

ioc_bb23:                                         ; preds = %cont20
  %23 = sext i32 %type.0 to i64
  tail call void @__ioc_report_conversion(i32 2083, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont26

cont26:                                           ; preds = %cont20, %ioc_bb23
  %shl = shl i32 %type.0, 5
  %or27 = or i32 %shl, 4
  %24 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32* %24, i32 %0
  store i32 %or27, i32* %arrayidx28, align 4, !tbaa !3
  %25 = icmp sgt i32 %fd1.0, -1
  br i1 %25, label %cont31, label %ioc_bb30

ioc_bb30:                                         ; preds = %cont26
  %26 = sext i32 %fd1.0 to i64
  tail call void @__ioc_report_conversion(i32 2084, i32 22, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %26, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb30, %cont26
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %cont31
  tail call void @__ioc_report_add_overflow(i32 2084, i32 15, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %20, i64 1, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %cont31, %ioc_bb32
  %30 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %30, i32 %28
  store i32 %fd1.0, i32* %arrayidx34, align 4, !tbaa !3
  br i1 %tobool, label %if.then36, label %for.cond

if.then36:                                        ; preds = %cont33
  %call = tail call fastcc i32 @ecstrcode(i8* %idstring)
  %31 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 5)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb37, label %cont38

ioc_bb37:                                         ; preds = %if.then36
  tail call void @__ioc_report_add_overflow(i32 2091, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %20, i64 5, i8 13) nounwind
  br label %cont38

cont38:                                           ; preds = %if.then36, %ioc_bb37
  %34 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32* %34, i32 %32
  store i32 %call, i32* %arrayidx39, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %cont33, %cont38, %for.cond
  %hd.0 = phi %struct.heredocs** [ %next, %for.cond ], [ @hdocs, %cont38 ], [ @hdocs, %cont33 ]
  %35 = load %struct.heredocs** %hd.0, align 4, !tbaa !0
  %tobool41 = icmp eq %struct.heredocs* %35, null
  %next = getelementptr inbounds %struct.heredocs* %35, i32 0, i32 0
  br i1 %tobool41, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %call42 = tail call i8* @zalloc(i32 16) nounwind
  %36 = bitcast i8* %call42 to %struct.heredocs*
  store %struct.heredocs* %36, %struct.heredocs** %hd.0, align 4, !tbaa !0
  %next43 = bitcast i8* %call42 to %struct.heredocs**
  store %struct.heredocs* null, %struct.heredocs** %next43, align 4, !tbaa !0
  %37 = load %struct.heredocs** %hd.0, align 4, !tbaa !0
  %type44 = getelementptr inbounds %struct.heredocs* %37, i32 0, i32 1
  store i32 %9, i32* %type44, align 4, !tbaa !3
  %pc = getelementptr inbounds %struct.heredocs* %37, i32 0, i32 2
  store i32 %0, i32* %pc, align 4, !tbaa !3
  %38 = load i8** @tokstr, align 4, !tbaa !0
  %str = getelementptr inbounds %struct.heredocs* %37, i32 0, i32 3
  store i8* %38, i8** %str, align 4, !tbaa !0
  tail call void @zshlex() nounwind
  br label %return

sw.bb46:                                          ; preds = %if.end15, %if.end15
  %39 = load i8* %16, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2107, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp50 = icmp eq i8 %39, -108
  br i1 %cmp50, label %land.lhs.true52, label %if.else60

land.lhs.true52:                                  ; preds = %sw.bb46
  %40 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx53 = getelementptr inbounds i8* %40, i32 1
  %41 = load i8* %arrayidx53, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2107, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp57 = icmp eq i8 %41, -120
  br i1 %cmp57, label %sw.epilog, label %if.else60

if.else60:                                        ; preds = %land.lhs.true52, %sw.bb46
  %42 = load i8** @tokstr, align 4, !tbaa !0
  %43 = load i8* %42, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2110, i32 37, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp65 = icmp eq i8 %43, -110
  br i1 %cmp65, label %land.lhs.true67, label %sw.epilog

land.lhs.true67:                                  ; preds = %if.else60
  %44 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx68 = getelementptr inbounds i8* %44, i32 1
  %45 = load i8* %arrayidx68, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2110, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp72 = icmp eq i8 %45, -120
  br i1 %cmp72, label %if.then74, label %sw.epilog

if.then74:                                        ; preds = %land.lhs.true67
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %return

sw.bb77:                                          ; preds = %if.end15
  %46 = load i8* %16, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2120, i32 32, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp82 = icmp eq i8 %46, -110
  br i1 %cmp82, label %land.lhs.true84, label %if.else92

land.lhs.true84:                                  ; preds = %sw.bb77
  %47 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i8* %47, i32 1
  %48 = load i8* %arrayidx85, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2120, i32 62, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp89 = icmp eq i8 %48, -120
  br i1 %cmp89, label %sw.epilog, label %if.else92

if.else92:                                        ; preds = %land.lhs.true84, %sw.bb77
  %49 = load i8** @tokstr, align 4, !tbaa !0
  %50 = load i8* %49, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2123, i32 37, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp97 = icmp eq i8 %50, -108
  br i1 %cmp97, label %land.lhs.true99, label %sw.epilog

land.lhs.true99:                                  ; preds = %if.else92
  %51 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx100 = getelementptr inbounds i8* %51, i32 1
  %52 = load i8* %arrayidx100, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2123, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp104 = icmp eq i8 %52, -120
  br i1 %cmp104, label %if.then106, label %sw.epilog

if.then106:                                       ; preds = %land.lhs.true99
  store i32 38, i32* @tok, align 4, !tbaa !3
  br label %return

sw.bb109:                                         ; preds = %if.end15
  %53 = load i8* %16, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2133, i32 33, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp114 = icmp eq i8 %53, -110
  br i1 %cmp114, label %land.lhs.true122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb109
  %54 = load i8** @tokstr, align 4, !tbaa !0
  %55 = load i8* %54, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2133, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp120 = icmp eq i8 %55, -108
  br i1 %cmp120, label %land.lhs.true122, label %sw.epilog

land.lhs.true122:                                 ; preds = %lor.lhs.false, %sw.bb109
  %56 = load i8** @tokstr, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds i8* %56, i32 1
  %57 = load i8* %arrayidx123, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2133, i32 94, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp127 = icmp eq i8 %57, -120
  br i1 %cmp127, label %if.then129, label %sw.epilog

if.then129:                                       ; preds = %land.lhs.true122
  %58 = load i8** @tokstr, align 4, !tbaa !0
  %59 = load i8* %58, align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 2134, i32 39, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp134 = icmp eq i8 %59, -110
  %cond136 = select i1 %cmp134, i32 16, i32 17
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true84, %land.lhs.true52, %lor.lhs.false, %land.lhs.true122, %if.then129, %land.lhs.true99, %if.else92, %land.lhs.true67, %if.else60, %if.end15
  %type.1 = phi i32 [ %9, %if.end15 ], [ %cond136, %if.then129 ], [ 8, %land.lhs.true122 ], [ 8, %lor.lhs.false ], [ 9, %land.lhs.true99 ], [ 9, %if.else92 ], [ %9, %land.lhs.true67 ], [ %9, %if.else60 ], [ 17, %land.lhs.true52 ], [ 16, %land.lhs.true84 ]
  tail call void @zshlex() nounwind
  %tobool138 = icmp ne i8* %idstring, null
  %or140 = or i32 %type.1, 32
  %ncodes.1 = select i1 %tobool138, i32 4, i32 3
  %type.2 = select i1 %tobool138, i32 %or140, i32 %type.1
  tail call fastcc void @ecispace(i32 %0, i32 %ncodes.1)
  %60 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %ncodes.1)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  %63 = sext i32 %0 to i64
  br i1 %62, label %ioc_bb143, label %cont144

ioc_bb143:                                        ; preds = %sw.epilog
  %64 = zext i32 %ncodes.1 to i64
  tail call void @__ioc_report_add_overflow(i32 2148, i32 12, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %63, i64 %64, i8 13) nounwind
  br label %cont144

cont144:                                          ; preds = %sw.epilog, %ioc_bb143
  store i32 %61, i32* %rp, align 4, !tbaa !3
  %65 = icmp sgt i32 %type.2, -1
  br i1 %65, label %cont151, label %ioc_bb148

ioc_bb148:                                        ; preds = %cont144
  %66 = sext i32 %type.2 to i64
  tail call void @__ioc_report_conversion(i32 2149, i32 43, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %66, i8 1) nounwind
  br label %cont151

cont151:                                          ; preds = %cont144, %ioc_bb148
  %shl152 = shl i32 %type.2, 5
  %or153 = or i32 %shl152, 4
  %67 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32* %67, i32 %0
  store i32 %or153, i32* %arrayidx154, align 4, !tbaa !3
  %68 = icmp sgt i32 %fd1.0, -1
  br i1 %68, label %cont157, label %ioc_bb156

ioc_bb156:                                        ; preds = %cont151
  %69 = sext i32 %fd1.0 to i64
  tail call void @__ioc_report_conversion(i32 2150, i32 18, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %69, i8 1) nounwind
  br label %cont157

cont157:                                          ; preds = %ioc_bb156, %cont151
  %70 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %71 = extractvalue { i32, i1 } %70, 0
  %72 = extractvalue { i32, i1 } %70, 1
  br i1 %72, label %ioc_bb158, label %cont159

ioc_bb158:                                        ; preds = %cont157
  tail call void @__ioc_report_add_overflow(i32 2150, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %63, i64 1, i8 13) nounwind
  br label %cont159

cont159:                                          ; preds = %cont157, %ioc_bb158
  %73 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32* %73, i32 %71
  store i32 %fd1.0, i32* %arrayidx160, align 4, !tbaa !3
  %call161 = tail call fastcc i32 @ecstrcode(i8* %16)
  %74 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 2)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb162, label %cont163

ioc_bb162:                                        ; preds = %cont159
  tail call void @__ioc_report_add_overflow(i32 2151, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %63, i64 2, i8 13) nounwind
  br label %cont163

cont163:                                          ; preds = %cont159, %ioc_bb162
  %77 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx164 = getelementptr inbounds i32* %77, i32 %75
  store i32 %call161, i32* %arrayidx164, align 4, !tbaa !3
  br i1 %tobool138, label %if.then166, label %return

if.then166:                                       ; preds = %cont163
  %call167 = tail call fastcc i32 @ecstrcode(i8* %idstring)
  %78 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 3)
  %79 = extractvalue { i32, i1 } %78, 0
  %80 = extractvalue { i32, i1 } %78, 1
  br i1 %80, label %ioc_bb168, label %cont169

ioc_bb168:                                        ; preds = %if.then166
  tail call void @__ioc_report_add_overflow(i32 2153, i32 13, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %63, i64 3, i8 13) nounwind
  br label %cont169

cont169:                                          ; preds = %if.then166, %ioc_bb168
  %81 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx170 = getelementptr inbounds i32* %81, i32 %79
  store i32 %call167, i32* %arrayidx170, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont163, %cont169, %if.then106, %if.then74, %for.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then106 ], [ 0, %if.then74 ], [ %ncodes.0, %for.end ], [ %ncodes.1, %cont169 ], [ %ncodes.1, %cont163 ]
  ret i32 %retval.0
}

define internal fastcc void @par_for(i32* nocapture %complex) nounwind {
entry:
  %0 = load i32* @ecused, align 4, !tbaa !3
  %1 = load i32* @tok, align 4, !tbaa !3
  %cmp = icmp ne i32 %1, 53
  %cmp1 = icmp eq i32 %1, 58
  %call = tail call fastcc i32 @ecadd(i32 0)
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  %2 = load i32* @tok, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, 52
  %cond = select i1 %cmp3, i32 2, i32 0
  store i32 %cond, i32* @infor, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %3 = load i32* @tok, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %3, 28
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @zshlex() nounwind
  %4 = load i32* @tok, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %4, 28
  br i1 %cmp7, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i8** @tokstr, align 4, !tbaa !0
  %call10 = tail call fastcc i32 @ecstrcode(i8* %5)
  %call11 = tail call fastcc i32 @ecadd(i32 %call10)
  tail call void @zshlex() nounwind
  %6 = load i32* @tok, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %6, 28
  br i1 %cmp12, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.end
  %7 = load i8** @tokstr, align 4, !tbaa !0
  %call16 = tail call fastcc i32 @ecstrcode(i8* %7)
  %call17 = tail call fastcc i32 @ecadd(i32 %call16)
  tail call void @zshlex() nounwind
  %8 = load i32* @tok, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %8, 29
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end15
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end21:                                         ; preds = %if.end15
  %9 = load i8** @tokstr, align 4, !tbaa !0
  %call22 = tail call fastcc i32 @ecstrcode(i8* %9)
  %call23 = tail call fastcc i32 @ecadd(i32 %call22)
  store i32 0, i32* @infor, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  br label %if.end229

if.else:                                          ; preds = %entry
  %10 = load i32* @noaliases, align 4, !tbaa !3
  %11 = load i32* @nocorrect, align 4, !tbaa !3
  store i32 0, i32* @infor, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %3, 34
  br i1 %cmp24, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %if.else
  %12 = load i8** @tokstr, align 4, !tbaa !0
  %call26 = tail call i32 @isident(i8* %12) nounwind
  %tobool = icmp eq i32 %call26, 0
  br i1 %tobool, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false, %if.else
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  br i1 %cmp1, label %if.end34, label %cont32

cont32:                                           ; preds = %if.end28
  %call33 = tail call fastcc i32 @ecadd(i32 0)
  br label %if.end34

if.end34:                                         ; preds = %cont32, %if.end28
  %np.0 = phi i32 [ 0, %if.end28 ], [ %call33, %cont32 ]
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  store i32 1, i32* @nocorrect, align 4, !tbaa !3
  store i32 1, i32* @noaliases, align 4, !tbaa !3
  %13 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str47 to i32))
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %cmp46 = icmp eq i32 %15, 1
  br label %for.cond

for.cond:                                         ; preds = %if.end104, %if.end34
  %n.0 = phi i32 [ 0, %if.end34 ], [ %17, %if.end104 ]
  %16 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.0, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb35, label %cont36

ioc_bb35:                                         ; preds = %for.cond
  %19 = sext i32 %n.0 to i64
  tail call void @__ioc_report_add_overflow(i32 928, i32 8, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %cont36

cont36:                                           ; preds = %for.cond, %ioc_bb35
  %20 = load i8** @tokstr, align 4, !tbaa !0
  %call37 = tail call fastcc i32 @ecstrcode(i8* %20)
  %call38 = tail call fastcc i32 @ecadd(i32 %call37)
  tail call void @zshlex() nounwind
  %21 = load i32* @tok, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %21, 34
  br i1 %cmp39, label %lor.lhs.false41, label %for.end

lor.lhs.false41:                                  ; preds = %cont36
  br i1 %14, label %ioc_bb42, label %cont45

ioc_bb42:                                         ; preds = %lor.lhs.false41
  tail call void @__ioc_report_sub_overflow(i32 931, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str47 to i32) to i64), i8 5) nounwind
  br label %cont45

cont45:                                           ; preds = %ioc_bb42, %lor.lhs.false41
  %22 = load i8** @tokstr, align 4, !tbaa !0
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont45
  %23 = load i8* %22, align 1, !tbaa !1
  %conv52 = zext i8 %23 to i32
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv52, i32 105)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb54, label %land.lhs.true60

ioc_bb54:                                         ; preds = %cond.true
  %27 = zext i8 %23 to i64
  tail call void @__ioc_report_sub_overflow(i32 931, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 105, i8 13) nounwind
  br label %land.lhs.true60

land.lhs.true60:                                  ; preds = %cond.true, %ioc_bb54
  %cmp61 = icmp eq i32 %25, 0
  br i1 %cmp61, label %if.then63, label %cond.end

if.then63:                                        ; preds = %land.lhs.true60
  %arrayidx64 = getelementptr inbounds i8* %22, i32 1
  %28 = load i8* %arrayidx64, align 1, !tbaa !1
  %conv65 = zext i8 %28 to i32
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv65, i32 110)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb67, label %land.lhs.true73

ioc_bb67:                                         ; preds = %if.then63
  %32 = zext i8 %28 to i64
  tail call void @__ioc_report_sub_overflow(i32 931, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %32, i64 110, i8 13) nounwind
  br label %land.lhs.true73

land.lhs.true73:                                  ; preds = %if.then63, %ioc_bb67
  %cmp74 = icmp eq i32 %30, 0
  br i1 %cmp74, label %if.then76, label %cond.end

if.then76:                                        ; preds = %land.lhs.true73
  %arrayidx77 = getelementptr inbounds i8* %22, i32 2
  %33 = load i8* %arrayidx77, align 1, !tbaa !1
  %conv78 = zext i8 %33 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont45
  %call98 = tail call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true60, %land.lhs.true73, %if.then76, %cond.false
  %cond99 = phi i32 [ %call98, %cond.false ], [ %conv78, %if.then76 ], [ %30, %land.lhs.true73 ], [ %25, %land.lhs.true60 ]
  %tobool100 = icmp eq i32 %cond99, 0
  %brmerge = or i1 %tobool100, %cmp1
  br i1 %brmerge, label %for.end, label %if.end104

if.end104:                                        ; preds = %cond.end
  %34 = load i8** @tokstr, align 4, !tbaa !0
  %call105 = tail call i32 @isident(i8* %34) nounwind
  %tobool106 = icmp eq i32 %call105, 0
  %35 = load i32* @errflag, align 4, !tbaa !3
  %tobool108 = icmp ne i32 %35, 0
  %or.cond = or i1 %tobool106, %tobool108
  br i1 %or.cond, label %if.then109, label %for.cond

if.then109:                                       ; preds = %if.end104
  store i32 %10, i32* @noaliases, align 4, !tbaa !3
  store i32 %11, i32* @nocorrect, align 4, !tbaa !3
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

for.end:                                          ; preds = %cond.end, %cont36
  store i32 %10, i32* @noaliases, align 4, !tbaa !3
  store i32 %11, i32* @nocorrect, align 4, !tbaa !3
  br i1 %cmp1, label %if.end116, label %if.then112

if.then112:                                       ; preds = %for.end
  %36 = icmp sgt i32 %17, -1
  br i1 %36, label %cont114, label %ioc_bb113

ioc_bb113:                                        ; preds = %if.then112
  %37 = sext i32 %17 to i64
  tail call void @__ioc_report_conversion(i32 947, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont114

cont114:                                          ; preds = %ioc_bb113, %if.then112
  %38 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %38, i32 %np.0
  store i32 %17, i32* %arrayidx115, align 4, !tbaa !3
  br label %if.end116

if.end116:                                        ; preds = %cont114, %for.end
  %39 = load i32* @isnewlin, align 4, !tbaa !3
  %tobool117422 = icmp eq i32 %39, 0
  br i1 %tobool117422, label %while.end, label %while.body

while.body:                                       ; preds = %if.end116, %while.body
  tail call void @zshlex() nounwind
  %.pr = load i32* @isnewlin, align 4, !tbaa !3
  %tobool117 = icmp eq i32 %.pr, 0
  br i1 %tobool117, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end116
  %40 = load i32* @tok, align 4, !tbaa !3
  %cmp118 = icmp eq i32 %40, 34
  br i1 %cmp118, label %land.lhs.true120, label %if.else204

land.lhs.true120:                                 ; preds = %while.end
  br i1 %14, label %ioc_bb123, label %cont126

ioc_bb123:                                        ; preds = %land.lhs.true120
  tail call void @__ioc_report_sub_overflow(i32 951, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str47 to i32) to i64), i8 5) nounwind
  br label %cont126

cont126:                                          ; preds = %land.lhs.true120, %ioc_bb123
  %41 = load i8** @tokstr, align 4, !tbaa !0
  br i1 %cmp46, label %cond.true134, label %cond.false184

cond.true134:                                     ; preds = %cont126
  %42 = load i8* %41, align 1, !tbaa !1
  %conv138 = zext i8 %42 to i32
  %43 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv138, i32 105)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb140, label %land.lhs.true146

ioc_bb140:                                        ; preds = %cond.true134
  %46 = zext i8 %42 to i64
  tail call void @__ioc_report_sub_overflow(i32 951, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %46, i64 105, i8 13) nounwind
  br label %land.lhs.true146

land.lhs.true146:                                 ; preds = %cond.true134, %ioc_bb140
  %cmp147 = icmp eq i32 %44, 0
  br i1 %cmp147, label %if.then149, label %if.else204

if.then149:                                       ; preds = %land.lhs.true146
  %arrayidx150 = getelementptr inbounds i8* %41, i32 1
  %47 = load i8* %arrayidx150, align 1, !tbaa !1
  %conv151 = zext i8 %47 to i32
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv151, i32 110)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb153, label %land.lhs.true159

ioc_bb153:                                        ; preds = %if.then149
  %51 = zext i8 %47 to i64
  tail call void @__ioc_report_sub_overflow(i32 951, i32 23, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %51, i64 110, i8 13) nounwind
  br label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.then149, %ioc_bb153
  %cmp160 = icmp eq i32 %49, 0
  br i1 %cmp160, label %if.then162, label %if.else204

if.then162:                                       ; preds = %land.lhs.true159
  %arrayidx163 = getelementptr inbounds i8* %41, i32 2
  %52 = load i8* %arrayidx163, align 1, !tbaa !1
  %conv164 = zext i8 %52 to i32
  br label %cond.end186

cond.false184:                                    ; preds = %cont126
  %call185 = tail call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %cond.end186

cond.end186:                                      ; preds = %if.then162, %cond.false184
  %cond187 = phi i32 [ %call185, %cond.false184 ], [ %conv164, %if.then162 ]
  %tobool188 = icmp eq i32 %cond187, 0
  br i1 %tobool188, label %if.then189, label %if.else204

if.then189:                                       ; preds = %cond.end186
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %call192 = tail call fastcc i32 @ecadd(i32 0)
  %53 = load i32* @tok, align 4, !tbaa !3
  %cmp3.i = icmp eq i32 %53, 34
  br i1 %cmp3.i, label %while.body.i, label %par_wordlist.exit

while.body.i:                                     ; preds = %if.then189, %cont.i
  %num.04.i = phi i32 [ %56, %cont.i ], [ 0, %if.then189 ]
  %54 = load i8** @tokstr, align 4, !tbaa !0
  %call.i417 = tail call fastcc i32 @ecstrcode(i8* %54) nounwind
  %call1.i = tail call fastcc i32 @ecadd(i32 %call.i417) nounwind
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.04.i, i32 1) nounwind
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb.i418, label %cont.i

ioc_bb.i418:                                      ; preds = %while.body.i
  %58 = sext i32 %num.04.i to i64
  tail call void @__ioc_report_add_overflow(i32 2175, i32 8, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i418, %while.body.i
  tail call void @zshlex() nounwind
  %59 = load i32* @tok, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %59, 34
  br i1 %cmp.i, label %while.body.i, label %par_wordlist.exit

par_wordlist.exit:                                ; preds = %cont.i, %if.then189
  %60 = phi i32 [ %53, %if.then189 ], [ %59, %cont.i ]
  %num.0.lcssa.i = phi i32 [ 0, %if.then189 ], [ %56, %cont.i ]
  %cmp194 = icmp eq i32 %60, 1
  br i1 %cmp194, label %if.end197, label %if.then196

if.then196:                                       ; preds = %par_wordlist.exit
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end197:                                        ; preds = %par_wordlist.exit
  %61 = icmp sgt i32 %num.0.lcssa.i, -1
  br i1 %61, label %cont200, label %ioc_bb199

ioc_bb199:                                        ; preds = %if.end197
  %62 = sext i32 %num.0.lcssa.i to i64
  tail call void @__ioc_report_conversion(i32 962, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %62, i8 1) nounwind
  br label %cont200

cont200:                                          ; preds = %ioc_bb199, %if.end197
  %63 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx201 = getelementptr inbounds i32* %63, i32 %call192
  store i32 %num.0.lcssa.i, i32* %arrayidx201, align 4, !tbaa !3
  br label %if.end229

if.else204:                                       ; preds = %cond.end186, %land.lhs.true159, %land.lhs.true146, %while.end
  %64 = load i32* @tok, align 4, !tbaa !3
  %cmp207 = icmp eq i32 %64, 6
  %or.cond368 = and i1 %tobool117422, %cmp207
  br i1 %or.cond368, label %if.then209, label %if.end229

if.then209:                                       ; preds = %if.else204
  store i32 0, i32* @incmdpos, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %call212 = tail call fastcc i32 @ecadd(i32 0)
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.then209
  %num.0.i = phi i32 [ 0, %if.then209 ], [ %num.1.i, %if.end.i ]
  %65 = load i32* @tok, align 4, !tbaa !3
  switch i32 %65, label %if.then216 [
    i32 1, label %if.end.i
    i32 34, label %if.then.i
    i32 7, label %if.end217
  ]

if.then.i:                                        ; preds = %while.cond.i
  %66 = load i8** @tokstr, align 4, !tbaa !0
  %call.i = tail call fastcc i32 @ecstrcode(i8* %66) nounwind
  %call3.i = tail call fastcc i32 @ecadd(i32 %call.i) nounwind
  %67 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %num.0.i, i32 1) nounwind
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb.i, label %if.end.i

ioc_bb.i:                                         ; preds = %if.then.i
  %70 = sext i32 %num.0.i to i64
  tail call void @__ioc_report_add_overflow(i32 2191, i32 10, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %70, i64 1, i8 13) nounwind
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.i, %ioc_bb.i, %if.then.i
  %num.1.i = phi i32 [ %num.0.i, %while.cond.i ], [ %68, %if.then.i ], [ %68, %ioc_bb.i ]
  tail call void @zshlex() nounwind
  br label %while.cond.i

if.then216:                                       ; preds = %while.cond.i
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end217:                                        ; preds = %while.cond.i
  %71 = icmp sgt i32 %num.0.i, -1
  br i1 %71, label %cont220, label %ioc_bb219

ioc_bb219:                                        ; preds = %if.end217
  %72 = sext i32 %num.0.i to i64
  tail call void @__ioc_report_conversion(i32 976, i32 19, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %72, i8 1) nounwind
  br label %cont220

cont220:                                          ; preds = %ioc_bb219, %if.end217
  %73 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx221 = getelementptr inbounds i32* %73, i32 %call212
  store i32 %num.0.i, i32* %arrayidx221, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  br label %if.end229

if.end229:                                        ; preds = %if.else204, %cont200, %cont220, %if.end21
  %type.0 = phi i32 [ 2, %if.end21 ], [ 1, %cont220 ], [ 1, %cont200 ], [ 0, %if.else204 ]
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %while.cond230

while.cond230:                                    ; preds = %while.body233, %if.end229
  %74 = load i32* @tok, align 4, !tbaa !3
  switch i32 %74, label %if.else277 [
    i32 1, label %while.body233
    i32 45, label %if.then237
    i32 41, label %if.then257
  ]

while.body233:                                    ; preds = %while.cond230
  tail call void @zshlex() nounwind
  br label %while.cond230

if.then237:                                       ; preds = %while.cond230
  tail call void @zshlex() nounwind
  %75 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %76 = load i32* @ecused, align 4, !tbaa !3
  %cmp239 = icmp eq i32 %75, %76
  br i1 %cmp239, label %cont247, label %do.end

cont247:                                          ; preds = %if.then237
  %call248 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end

do.end:                                           ; preds = %if.then237, %cont247
  %77 = load i32* @tok, align 4, !tbaa !3
  %cmp250 = icmp eq i32 %77, 46
  br i1 %cmp250, label %if.end253, label %if.then252

if.then252:                                       ; preds = %do.end
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end253:                                        ; preds = %do.end
  tail call void @zshlex() nounwind
  br label %if.end324

if.then257:                                       ; preds = %while.cond230
  tail call void @zshlex() nounwind
  %78 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %79 = load i32* @ecused, align 4, !tbaa !3
  %cmp261 = icmp eq i32 %78, %79
  br i1 %cmp261, label %cont269, label %do.end272

cont269:                                          ; preds = %if.then257
  %call270 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end272

do.end272:                                        ; preds = %if.then257, %cont269
  %80 = load i32* @tok, align 4, !tbaa !3
  %cmp273 = icmp eq i32 %80, 42
  br i1 %cmp273, label %if.end276, label %if.then275

if.then275:                                       ; preds = %do.end272
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end276:                                        ; preds = %do.end272
  tail call void @zshlex() nounwind
  br label %if.end324

if.else277:                                       ; preds = %while.cond230
  %81 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 40), align 1, !tbaa !1
  %tobool281 = icmp eq i8 %81, 0
  %or.cond416 = and i1 %cmp, %tobool281
  br i1 %or.cond416, label %if.else302, label %do.body283

do.body283:                                       ; preds = %if.else277
  %82 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %83 = load i32* @ecused, align 4, !tbaa !3
  %cmp286 = icmp eq i32 %82, %83
  br i1 %cmp286, label %cont294, label %do.end297

cont294:                                          ; preds = %do.body283
  %call295 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end297

do.end297:                                        ; preds = %do.body283, %cont294
  %84 = load i32* @tok, align 4, !tbaa !3
  %cmp298 = icmp eq i32 %84, 49
  br i1 %cmp298, label %if.end301, label %if.then300

if.then300:                                       ; preds = %do.end297
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end301:                                        ; preds = %do.end297
  tail call void @zshlex() nounwind
  br label %if.end324

if.else302:                                       ; preds = %if.else277
  %85 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 153), align 1, !tbaa !1
  %tobool303 = icmp eq i8 %85, 0
  br i1 %tobool303, label %if.then304, label %do.body306

if.then304:                                       ; preds = %if.else302
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

do.body306:                                       ; preds = %if.else302
  %86 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list1(i32* %complex)
  %87 = load i32* @ecused, align 4, !tbaa !3
  %cmp309 = icmp eq i32 %86, %87
  br i1 %cmp309, label %cont317, label %if.end324

cont317:                                          ; preds = %do.body306
  %call318 = tail call fastcc i32 @ecadd(i32 0)
  br label %if.end324

if.end324:                                        ; preds = %if.end276, %do.body306, %cont317, %if.end301, %if.end253
  %88 = load i32* @ecused, align 4, !tbaa !3
  %89 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %88, i32 1)
  %90 = extractvalue { i32, i1 } %89, 0
  %91 = extractvalue { i32, i1 } %89, 1
  br i1 %cmp1, label %cont328, label %cont346

cont328:                                          ; preds = %if.end324
  br i1 %91, label %ioc_bb329, label %cont330

ioc_bb329:                                        ; preds = %cont328
  %92 = sext i32 %88 to i64
  tail call void @__ioc_report_sub_overflow(i32 1048, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %92, i64 1, i8 13) nounwind
  br label %cont330

cont330:                                          ; preds = %cont328, %ioc_bb329
  %93 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %90, i32 %call)
  %94 = extractvalue { i32, i1 } %93, 0
  %95 = extractvalue { i32, i1 } %93, 1
  br i1 %95, label %ioc_bb331, label %cont332

ioc_bb331:                                        ; preds = %cont330
  %96 = sext i32 %call to i64
  %97 = sext i32 %90 to i64
  tail call void @__ioc_report_sub_overflow(i32 1048, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %97, i64 %96, i8 13) nounwind
  br label %cont332

cont332:                                          ; preds = %cont330, %ioc_bb331
  %98 = icmp ult i32 %94, 1073741824
  br i1 %98, label %cont336, label %ioc_bb335

ioc_bb335:                                        ; preds = %cont332
  %99 = sext i32 %94 to i64
  tail call void @__ioc_report_shl_strict(i32 1048, i32 72, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %99, i64 1, i8 13) nounwind
  br label %cont336

cont336:                                          ; preds = %ioc_bb335, %cont332
  %shl = shl i32 %94, 1
  %or = or i32 %shl, %type.0
  %100 = icmp sgt i32 %or, -1
  br i1 %100, label %cont341, label %ioc_bb338

ioc_bb338:                                        ; preds = %cont336
  %101 = sext i32 %or to i64
  tail call void @__ioc_report_conversion(i32 1048, i32 49, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %101, i8 1) nounwind
  br label %cont341

cont341:                                          ; preds = %cont336, %ioc_bb338
  %shl342 = shl i32 %or, 5
  %or343 = or i32 %shl342, 12
  br label %cond.end365

cont346:                                          ; preds = %if.end324
  br i1 %91, label %ioc_bb347, label %cont348

ioc_bb347:                                        ; preds = %cont346
  %102 = sext i32 %88 to i64
  tail call void @__ioc_report_sub_overflow(i32 1048, i32 131, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %102, i64 1, i8 13) nounwind
  br label %cont348

cont348:                                          ; preds = %cont346, %ioc_bb347
  %103 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %90, i32 %call)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb349, label %cont350

ioc_bb349:                                        ; preds = %cont348
  %106 = sext i32 %call to i64
  %107 = sext i32 %90 to i64
  tail call void @__ioc_report_sub_overflow(i32 1048, i32 135, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %107, i64 %106, i8 13) nounwind
  br label %cont350

cont350:                                          ; preds = %cont348, %ioc_bb349
  %108 = icmp ult i32 %104, 536870912
  br i1 %108, label %cont355, label %ioc_bb354

ioc_bb354:                                        ; preds = %cont350
  %109 = sext i32 %104 to i64
  tail call void @__ioc_report_shl_strict(i32 1048, i32 139, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %109, i64 2, i8 13) nounwind
  br label %cont355

cont355:                                          ; preds = %ioc_bb354, %cont350
  %shl356 = shl i32 %104, 2
  %or357 = or i32 %shl356, %type.0
  %110 = icmp sgt i32 %or357, -1
  br i1 %110, label %cont362, label %ioc_bb359

ioc_bb359:                                        ; preds = %cont355
  %111 = sext i32 %or357 to i64
  tail call void @__ioc_report_conversion(i32 1048, i32 116, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %111, i8 1) nounwind
  br label %cont362

cont362:                                          ; preds = %cont355, %ioc_bb359
  %shl363 = shl i32 %or357, 5
  %or364 = or i32 %shl363, 11
  br label %cond.end365

cond.end365:                                      ; preds = %cont362, %cont341
  %cond366 = phi i32 [ %or343, %cont341 ], [ %or364, %cont362 ]
  %112 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx367 = getelementptr inbounds i32* %112, i32 %call
  store i32 %cond366, i32* %arrayidx367, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cond.end365, %if.then304, %if.then300, %if.then275, %if.then252, %if.then216, %if.then196, %if.then109, %if.then27, %if.then20, %if.then14, %if.then9
  ret void
}

define internal fastcc void @par_while(i32* %complex) nounwind {
entry:
  %0 = load i32* @ecused, align 4, !tbaa !3
  %1 = load i32* @tok, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 61
  %cond = zext i1 %cmp to i32
  %call = tail call fastcc i32 @ecadd(i32 0)
  tail call void @zshlex() nounwind
  %2 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %3 = load i32* @ecused, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %cont8, label %do.end

cont8:                                            ; preds = %entry
  %call9 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end

do.end:                                           ; preds = %entry, %cont8
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %4 = load i32* @tok, align 4, !tbaa !3
  switch i32 %4, label %if.else49 [
    i32 1, label %while.body
    i32 45, label %if.then12
    i32 41, label %if.then31
  ]

while.body:                                       ; preds = %while.cond
  tail call void @zshlex() nounwind
  br label %while.cond

if.then12:                                        ; preds = %while.cond
  tail call void @zshlex() nounwind
  %5 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %6 = load i32* @ecused, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %5, %6
  br i1 %cmp16, label %cont23, label %do.end26

cont23:                                           ; preds = %if.then12
  %call24 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end26

do.end26:                                         ; preds = %if.then12, %cont23
  %7 = load i32* @tok, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %7, 46
  br i1 %cmp27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end26
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end29:                                         ; preds = %do.end26
  tail call void @zshlex() nounwind
  br label %cont73

if.then31:                                        ; preds = %while.cond
  tail call void @zshlex() nounwind
  %8 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %9 = load i32* @ecused, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %8, %9
  br i1 %cmp35, label %cont42, label %do.end45

cont42:                                           ; preds = %if.then31
  %call43 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end45

do.end45:                                         ; preds = %if.then31, %cont42
  %10 = load i32* @tok, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %10, 42
  br i1 %cmp46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %do.end45
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end48:                                         ; preds = %do.end45
  tail call void @zshlex() nounwind
  br label %cont73

if.else49:                                        ; preds = %while.cond
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 40), align 1, !tbaa !1
  %tobool = icmp eq i8 %11, 0
  br i1 %tobool, label %if.else68, label %do.body51

do.body51:                                        ; preds = %if.else49
  %12 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %13 = load i32* @ecused, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %12, %13
  br i1 %cmp54, label %cont61, label %do.end64

cont61:                                           ; preds = %do.body51
  %call62 = tail call fastcc i32 @ecadd(i32 0)
  br label %do.end64

do.end64:                                         ; preds = %do.body51, %cont61
  %14 = load i32* @tok, align 4, !tbaa !3
  %cmp65 = icmp eq i32 %14, 49
  br i1 %cmp65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %do.end64
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

if.end67:                                         ; preds = %do.end64
  tail call void @zshlex() nounwind
  br label %cont73

if.else68:                                        ; preds = %if.else49
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %return

cont73:                                           ; preds = %if.end29, %if.end67, %if.end48
  %15 = load i32* @ecused, align 4, !tbaa !3
  %16 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %15, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb74, label %cont75

ioc_bb74:                                         ; preds = %cont73
  %19 = sext i32 %15 to i64
  tail call void @__ioc_report_sub_overflow(i32 1467, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %cont75

cont75:                                           ; preds = %cont73, %ioc_bb74
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %17, i32 %call)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb76, label %cont77

ioc_bb76:                                         ; preds = %cont75
  %23 = sext i32 %call to i64
  %24 = sext i32 %17 to i64
  tail call void @__ioc_report_sub_overflow(i32 1467, i32 63, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %24, i64 %23, i8 13) nounwind
  br label %cont77

cont77:                                           ; preds = %cont75, %ioc_bb76
  %25 = icmp ult i32 %21, 1073741824
  br i1 %25, label %cont81, label %ioc_bb80

ioc_bb80:                                         ; preds = %cont77
  %26 = sext i32 %21 to i64
  tail call void @__ioc_report_shl_strict(i32 1467, i32 67, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %26, i64 1, i8 13) nounwind
  br label %cont81

cont81:                                           ; preds = %ioc_bb80, %cont77
  %shl = shl i32 %21, 1
  %or = or i32 %shl, %cond
  %27 = icmp sgt i32 %or, -1
  br i1 %27, label %cont85, label %ioc_bb82

ioc_bb82:                                         ; preds = %cont81
  %28 = sext i32 %or to i64
  tail call void @__ioc_report_conversion(i32 1467, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont85

cont85:                                           ; preds = %cont81, %ioc_bb82
  %shl86 = shl i32 %or, 5
  %or87 = or i32 %shl86, 13
  %29 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %29, i32 %call
  store i32 %or87, i32* %arrayidx, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont85, %if.else68, %if.then66, %if.then47, %if.then28
  ret void
}

define internal fastcc void @par_subsh(i32* %complex) nounwind {
entry:
  %0 = load i32* @ecused, align 4, !tbaa !3
  %1 = load i32* @tok, align 4, !tbaa !3
  %call = tail call fastcc i32 @ecadd(i32 0)
  %call3 = tail call fastcc i32 @ecadd(i32 0)
  tail call void @zshlex() nounwind
  tail call fastcc void @par_list(i32* %complex)
  %call11 = tail call fastcc i32 @ecadd(i32 0)
  %2 = load i32* @tok, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 6
  %cond = select i1 %cmp, i32 7, i32 42
  %cmp12 = icmp eq i32 %2, %cond
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %if.end158

if.end:                                           ; preds = %entry
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  tail call void @zshlex() nounwind
  %cmp13 = icmp eq i32 %1, 41
  %3 = load i32* @tok, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %3, 34
  %or.cond = and i1 %cmp13, %cmp14
  br i1 %or.cond, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 1) to i32), i32 ptrtoint ([7 x i8]* @.str46 to i32))
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %ioc_bb16, label %cont19

ioc_bb16:                                         ; preds = %land.lhs.true15
  tail call void @__ioc_report_sub_overflow(i32 1582, i32 35, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([7 x i8]* @.str46 to i32) to i64), i8 5) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb16, %land.lhs.true15
  %6 = load i8** @tokstr, align 4, !tbaa !0
  %call70 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0)) nounwind
  %tobool = icmp eq i32 %call70, 0
  br i1 %tobool, label %cont74, label %if.else

cont74:                                           ; preds = %cont19
  %7 = load i32* @ecused, align 4, !tbaa !3
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %7, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb75, label %cont76

ioc_bb75:                                         ; preds = %cont74
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_sub_overflow(i32 1583, i32 55, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  br label %cont76

cont76:                                           ; preds = %cont74, %ioc_bb75
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %9, i32 %call3)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb77, label %cont78

ioc_bb77:                                         ; preds = %cont76
  %15 = sext i32 %call3 to i64
  %16 = sext i32 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 1583, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont78

cont78:                                           ; preds = %cont76, %ioc_bb77
  %17 = icmp sgt i32 %13, -1
  br i1 %17, label %cont82, label %ioc_bb79

ioc_bb79:                                         ; preds = %cont78
  %18 = sext i32 %13 to i64
  tail call void @__ioc_report_conversion(i32 1583, i32 47, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont82

cont82:                                           ; preds = %cont78, %ioc_bb79
  %shl = shl i32 %13, 5
  %or = or i32 %shl, 20
  %19 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %19, i32 %call3
  store i32 %or, i32* %arrayidx83, align 4, !tbaa !3
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %cont82
  tail call void @zshlex() nounwind
  %20 = load i32* @tok, align 4, !tbaa !3
  switch i32 %20, label %if.then88 [
    i32 1, label %do.body
    i32 41, label %if.end89
  ]

if.then88:                                        ; preds = %do.body
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %if.end158

if.end89:                                         ; preds = %do.body
  tail call void @cmdpop() nounwind
  tail call void @cmdpush(i32 31) nounwind
  tail call void @zshlex() nounwind
  %21 = load i32* @ecused, align 4, !tbaa !3
  tail call fastcc void @par_list(i32* %complex)
  %22 = load i32* @ecused, align 4, !tbaa !3
  %cmp92 = icmp eq i32 %21, %22
  br i1 %cmp92, label %cont100, label %while.cond.preheader

cont100:                                          ; preds = %if.end89
  %call101 = tail call fastcc i32 @ecadd(i32 0)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end89, %cont100
  %23 = load i32* @tok, align 4, !tbaa !3
  %cmp105178 = icmp eq i32 %23, 1
  br i1 %cmp105178, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  tail call void @zshlex() nounwind
  %24 = load i32* @tok, align 4, !tbaa !3
  %cmp105 = icmp eq i32 %24, 1
  br i1 %cmp105, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %25 = phi i32 [ %23, %while.cond.preheader ], [ %24, %while.body ]
  store i32 1, i32* @incmdpos, align 4, !tbaa !3
  %cmp107 = icmp eq i32 %25, 42
  br i1 %cmp107, label %if.end110, label %if.then109

if.then109:                                       ; preds = %while.end
  store i32 38, i32* @tok, align 4, !tbaa !3
  store i32 %0, i32* @ecused, align 4, !tbaa !3
  br label %if.end158

if.end110:                                        ; preds = %while.end
  tail call void @zshlex() nounwind
  %26 = load i32* @ecused, align 4, !tbaa !3
  %27 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %26, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb113, label %cont114

ioc_bb113:                                        ; preds = %if.end110
  %30 = sext i32 %26 to i64
  tail call void @__ioc_report_sub_overflow(i32 1613, i32 54, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont114

cont114:                                          ; preds = %if.end110, %ioc_bb113
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %28, i32 %call)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb115, label %cont116

ioc_bb115:                                        ; preds = %cont114
  %34 = sext i32 %call to i64
  %35 = sext i32 %28 to i64
  tail call void @__ioc_report_sub_overflow(i32 1613, i32 58, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %35, i64 %34, i8 13) nounwind
  br label %cont116

cont116:                                          ; preds = %cont114, %ioc_bb115
  %36 = icmp sgt i32 %32, -1
  br i1 %36, label %cont121, label %ioc_bb118

ioc_bb118:                                        ; preds = %cont116
  %37 = sext i32 %32 to i64
  tail call void @__ioc_report_conversion(i32 1613, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %37, i8 1) nounwind
  br label %cont121

cont121:                                          ; preds = %cont116, %ioc_bb118
  %shl122 = shl i32 %32, 5
  %or123 = or i32 %shl122, 20
  %38 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx124 = getelementptr inbounds i32* %38, i32 %call
  store i32 %or123, i32* %arrayidx124, align 4, !tbaa !3
  br label %if.end158

if.else:                                          ; preds = %cont19, %if.end
  %39 = load i32* @ecused, align 4, !tbaa !3
  %40 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %39, i32 1)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %cmp, label %cont129, label %cont143

cont129:                                          ; preds = %if.else
  br i1 %42, label %ioc_bb130, label %cont131

ioc_bb130:                                        ; preds = %cont129
  %43 = sext i32 %39 to i64
  tail call void @__ioc_report_sub_overflow(i32 1616, i32 64, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %43, i64 1, i8 13) nounwind
  br label %cont131

cont131:                                          ; preds = %cont129, %ioc_bb130
  %44 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %41, i32 %call)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb132, label %cont133

ioc_bb132:                                        ; preds = %cont131
  %47 = sext i32 %call to i64
  %48 = sext i32 %41 to i64
  tail call void @__ioc_report_sub_overflow(i32 1616, i32 68, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %48, i64 %47, i8 13) nounwind
  br label %cont133

cont133:                                          ; preds = %cont131, %ioc_bb132
  %49 = icmp sgt i32 %45, -1
  br i1 %49, label %cont138, label %ioc_bb135

ioc_bb135:                                        ; preds = %cont133
  %50 = sext i32 %45 to i64
  tail call void @__ioc_report_conversion(i32 1616, i32 56, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %50, i8 1) nounwind
  br label %cont138

cont138:                                          ; preds = %cont133, %ioc_bb135
  %shl139 = shl i32 %45, 5
  %or140 = or i32 %shl139, 7
  br label %cond.end155

cont143:                                          ; preds = %if.else
  br i1 %42, label %ioc_bb144, label %cont145

ioc_bb144:                                        ; preds = %cont143
  %51 = sext i32 %39 to i64
  tail call void @__ioc_report_sub_overflow(i32 1616, i32 118, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %51, i64 1, i8 13) nounwind
  br label %cont145

cont145:                                          ; preds = %cont143, %ioc_bb144
  %52 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %41, i32 %call)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb146, label %cont147

ioc_bb146:                                        ; preds = %cont145
  %55 = sext i32 %call to i64
  %56 = sext i32 %41 to i64
  tail call void @__ioc_report_sub_overflow(i32 1616, i32 122, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %56, i64 %55, i8 13) nounwind
  br label %cont147

cont147:                                          ; preds = %cont145, %ioc_bb146
  %57 = icmp sgt i32 %53, -1
  br i1 %57, label %cont152, label %ioc_bb149

ioc_bb149:                                        ; preds = %cont147
  %58 = sext i32 %53 to i64
  tail call void @__ioc_report_conversion(i32 1616, i32 110, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %58, i8 1) nounwind
  br label %cont152

cont152:                                          ; preds = %cont147, %ioc_bb149
  %shl153 = shl i32 %53, 5
  %or154 = or i32 %shl153, 8
  br label %cond.end155

cond.end155:                                      ; preds = %cont152, %cont138
  %cond156 = phi i32 [ %or140, %cont138 ], [ %or154, %cont152 ]
  %59 = load i32** @ecbuf, align 4, !tbaa !0
  %arrayidx157 = getelementptr inbounds i32* %59, i32 %call
  store i32 %cond156, i32* %arrayidx157, align 4, !tbaa !3
  br label %if.end158

if.end158:                                        ; preds = %if.then, %if.then88, %if.then109, %cond.end155, %cont121
  ret void
}

declare i32 @skipparens(i8 signext, i8 signext, i8**)

declare i32 @equalsplit(i8*, i8**)

declare i8* @itype_end(i8*, i32, i32)

declare i8* @dupstrpfx(i8*, i32)

define internal fastcc void @par_list1(i32* nocapture %complex) nounwind {
entry:
  %c = alloca i32, align 4
  %call = call fastcc i32 @ecadd(i32 0)
  store i32 0, i32* %c, align 4, !tbaa !3
  %call1 = call fastcc i32 @par_sublist(i32* %c)
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.else, label %cont9

cont9:                                            ; preds = %entry
  %0 = load i32* %c, align 4, !tbaa !3
  call fastcc void @set_list_code(i32 %call, i32 18, i32 %0)
  %1 = load i32* %complex, align 4, !tbaa !3
  %or = or i32 %1, %0
  store i32 %or, i32* %complex, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32* @ecused, align 4, !tbaa !3
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %if.else
  %6 = sext i32 %2 to i64
  call void @__ioc_report_add_overflow(i32 592, i32 11, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %6, i64 -1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %if.else, %ioc_bb10
  store i32 %4, i32* @ecused, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cont11, %cont9
  ret void
}

declare void @chuck(i8*)

declare i32 @isident(i8*)

define internal fastcc %struct.eprog* @bld_eprog() nounwind {
entry:
  %call = tail call fastcc i32 @ecadd(i32 0)
  %call5 = tail call i8* @zhalloc(i32 36) nounwind
  %0 = bitcast i8* %call5 to %struct.eprog*
  %1 = load i32* @ecnpats, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %entry
  %3 = sext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 362, i32 17, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  %7 = zext i32 %1 to i64
  tail call void @__ioc_report_mul_overflow(i32 362, i32 25, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %7, i64 4, i8 5) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  %8 = load i32* @ecused, align 4, !tbaa !3
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %cont9
  %10 = sext i32 %8 to i64
  tail call void @__ioc_report_conversion(i32 362, i32 46, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %cont9
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %cont12
  %14 = zext i32 %8 to i64
  tail call void @__ioc_report_mul_overflow(i32 362, i32 53, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %14, i64 4, i8 5) nounwind
  br label %cont14

cont14:                                           ; preds = %cont12, %ioc_bb13
  %15 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %5, i32 %12)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb15, label %cont16

ioc_bb15:                                         ; preds = %cont14
  %18 = zext i32 %12 to i64
  %19 = zext i32 %5 to i64
  tail call void @__ioc_report_add_overflow(i32 362, i32 44, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %19, i64 %18, i8 5) nounwind
  br label %cont16

cont16:                                           ; preds = %cont14, %ioc_bb15
  %20 = load i32* @ecsoffs, align 4, !tbaa !3
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cont16
  %22 = sext i32 %20 to i64
  tail call void @__ioc_report_conversion(i32 362, i32 75, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cont16
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 %20)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont19
  %26 = zext i32 %20 to i64
  %27 = zext i32 %16 to i64
  tail call void @__ioc_report_add_overflow(i32 362, i32 73, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %27, i64 %26, i8 5) nounwind
  br label %cont21

cont21:                                           ; preds = %cont19, %ioc_bb20
  %28 = icmp sgt i32 %24, -1
  br i1 %28, label %cont29.critedge, label %ioc_bb22

ioc_bb22:                                         ; preds = %cont21
  %29 = zext i32 %24 to i64
  tail call void @__ioc_report_conversion(i32 362, i32 16, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i64 %29, i8 0) nounwind
  %len = getelementptr inbounds i8* %call5, i32 4
  %30 = bitcast i8* %len to i32*
  store i32 %24, i32* %30, align 4, !tbaa !3
  %31 = load i32* @ecnpats, align 4, !tbaa !3
  %npats = getelementptr inbounds i8* %call5, i32 8
  %32 = bitcast i8* %npats to i32*
  store i32 %31, i32* %32, align 4, !tbaa !3
  %nref = getelementptr inbounds i8* %call5, i32 12
  %33 = bitcast i8* %nref to i32*
  store i32 -1, i32* %33, align 4, !tbaa !3
  %34 = sext i32 %24 to i64
  tail call void @__ioc_report_conversion(i32 366, i32 38, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %34, i8 1) nounwind
  br label %cont29

cont29.critedge:                                  ; preds = %cont21
  %len.c = getelementptr inbounds i8* %call5, i32 4
  %35 = bitcast i8* %len.c to i32*
  store i32 %24, i32* %35, align 4, !tbaa !3
  %36 = load i32* @ecnpats, align 4, !tbaa !3
  %npats.c = getelementptr inbounds i8* %call5, i32 8
  %37 = bitcast i8* %npats.c to i32*
  store i32 %36, i32* %37, align 4, !tbaa !3
  %nref.c = getelementptr inbounds i8* %call5, i32 12
  %38 = bitcast i8* %nref.c to i32*
  store i32 -1, i32* %38, align 4, !tbaa !3
  br label %cont29

cont29:                                           ; preds = %cont29.critedge, %ioc_bb22
  %call30 = tail call i8* @zhalloc(i32 %24) nounwind
  %39 = bitcast i8* %call30 to %struct.patprog**
  %pats = getelementptr inbounds i8* %call5, i32 16
  %40 = bitcast i8* %pats to %struct.patprog***
  store %struct.patprog** %39, %struct.patprog*** %40, align 4, !tbaa !0
  %41 = load i32* @ecnpats, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.patprog** %39, i32 %41
  %42 = bitcast %struct.patprog** %add.ptr to i32*
  %prog = getelementptr inbounds i8* %call5, i32 20
  %43 = bitcast i8* %prog to i32**
  store i32* %42, i32** %43, align 4, !tbaa !0
  %44 = load i32* @ecused, align 4, !tbaa !3
  %add.ptr.sum = add i32 %44, %41
  %add.ptr3361 = getelementptr inbounds %struct.patprog** %39, i32 %add.ptr.sum
  %45 = bitcast %struct.patprog** %add.ptr3361 to i8*
  %strs = getelementptr inbounds i8* %call5, i32 24
  %46 = bitcast i8* %strs to i8**
  store i8* %45, i8** %46, align 4, !tbaa !0
  %shf = getelementptr inbounds i8* %call5, i32 28
  %47 = bitcast i8* %shf to %struct.shfunc**
  store %struct.shfunc* null, %struct.shfunc** %47, align 4, !tbaa !0
  %flags = bitcast i8* %call5 to i32*
  store i32 2, i32* %flags, align 4, !tbaa !3
  %dump = getelementptr inbounds i8* %call5, i32 32
  %48 = bitcast i8* %dump to %struct.funcdump**
  store %struct.funcdump* null, %struct.funcdump** %48, align 4, !tbaa !0
  %49 = load i32* @ecnpats, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %49, 0
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %cont29, %for.cond.backedge.for.body_crit_edge
  %50 = phi %struct.patprog** [ %.pre65, %for.cond.backedge.for.body_crit_edge ], [ %39, %cont29 ]
  %51 = phi i32 [ %55, %for.cond.backedge.for.body_crit_edge ], [ %49, %cont29 ]
  %l.063 = phi i32 [ %53, %for.cond.backedge.for.body_crit_edge ], [ 0, %cont29 ]
  %arrayidx = getelementptr inbounds %struct.patprog** %50, i32 %l.063
  store %struct.patprog* inttoptr (i32 1 to %struct.patprog*), %struct.patprog** %arrayidx, align 4, !tbaa !0
  %52 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.063, i32 1)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb35, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb35
  %55 = phi i32 [ %51, %for.body ], [ %.pre64, %ioc_bb35 ]
  %cmp = icmp slt i32 %53, %55
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  %.pre65 = load %struct.patprog*** %40, align 4, !tbaa !0
  br label %for.body

ioc_bb35:                                         ; preds = %for.body
  %56 = sext i32 %l.063 to i64
  tail call void @__ioc_report_add_overflow(i32 372, i32 29, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @13, i32 0, i32 0), i64 %56, i64 1, i8 13) nounwind
  %.pre64 = load i32* @ecnpats, align 4, !tbaa !3
  br label %for.cond.backedge

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre = load i32** %43, align 4, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %cont29
  %57 = phi i32* [ %.pre, %for.cond.for.end_crit_edge ], [ %42, %cont29 ]
  %58 = bitcast i32* %57 to i8*
  %59 = load i32** @ecbuf, align 4, !tbaa !0
  %60 = bitcast i32* %59 to i8*
  %61 = load i32* @ecused, align 4, !tbaa !3
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %cont40, label %ioc_bb39

ioc_bb39:                                         ; preds = %for.end
  %63 = sext i32 %61 to i64
  tail call void @__ioc_report_conversion(i32 374, i32 30, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %63, i8 1) nounwind
  br label %cont40

cont40:                                           ; preds = %ioc_bb39, %for.end
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4)
  %65 = extractvalue { i32, i1 } %64, 0
  %66 = extractvalue { i32, i1 } %64, 1
  br i1 %66, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %cont40
  %67 = zext i32 %61 to i64
  tail call void @__ioc_report_mul_overflow(i32 374, i32 37, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @16, i32 0, i32 0), i64 %67, i64 4, i8 5) nounwind
  br label %cont42

cont42:                                           ; preds = %cont40, %ioc_bb41
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %58, i8* %60, i32 %65, i32 4, i1 false)
  %68 = load %struct.eccstr** @ecstrs, align 4, !tbaa !0
  %69 = load i8** %46, align 4, !tbaa !0
  tail call fastcc void @copy_ecstr(%struct.eccstr* %68, i8* %69)
  %70 = load i32** @ecbuf, align 4, !tbaa !0
  %71 = bitcast i32* %70 to i8*
  %72 = load i32* @eclen, align 4, !tbaa !3
  tail call void @zfree(i8* %71, i32 %72) nounwind
  store i32* null, i32** @ecbuf, align 4, !tbaa !0
  ret %struct.eprog* %0
}

define internal fastcc void @copy_ecstr(%struct.eccstr* %s, i8* nocapture %p) nounwind {
entry:
  %tobool10 = icmp eq %struct.eccstr* %s, null
  br i1 %tobool10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cont3
  %s.addr.011 = phi %struct.eccstr* [ %7, %cont3 ], [ %s, %entry ]
  %aoffs = getelementptr inbounds %struct.eccstr* %s.addr.011, i32 0, i32 4
  %0 = load i32* %aoffs, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %p, i32 %0
  %str = getelementptr inbounds %struct.eccstr* %s.addr.011, i32 0, i32 2
  %1 = load i8** %str, align 4, !tbaa !0
  %call = tail call i32 @strlen(i8* %1) nounwind readonly
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %while.body
  %5 = zext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 350, i32 59, i8* getelementptr inbounds ([22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind
  br label %cont3

cont3:                                            ; preds = %while.body, %ioc_bb2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %1, i32 %3, i32 1, i1 false)
  %left = getelementptr inbounds %struct.eccstr* %s.addr.011, i32 0, i32 0
  %6 = load %struct.eccstr** %left, align 4, !tbaa !0
  tail call fastcc void @copy_ecstr(%struct.eccstr* %6, i8* %p)
  %right = getelementptr inbounds %struct.eccstr* %s.addr.011, i32 0, i32 1
  %7 = load %struct.eccstr** %right, align 4, !tbaa !0
  %tobool = icmp eq %struct.eccstr* %7, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %cont3, %entry
  ret void
}

declare i32 @llvm.bswap.i32(i32) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare i32 @puts(i8* nocapture) nounwind

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"long long", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
