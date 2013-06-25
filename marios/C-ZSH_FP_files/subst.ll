; ModuleID = '../../src/Src/subst.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.__sigset_t = type { [32 x i32] }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.gsu_array = type { i8** (%struct.param*)*, void (%struct.param*, i8**)*, void (%struct.param*, i32)* }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.mnumber = type { %union.anon.1, i32 }
%union.anon.1 = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.gsu_hash = type { %struct.hashtable* (%struct.param*)*, void (%struct.param*, %struct.hashtable*)*, void (%struct.param*, i32)* }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }

@nulstring = global [2 x i8] c"\9D\00", align 1
@opts = external global [169 x i8]
@queueing_enabled = external global i32
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@errflag = external global i32
@badcshglob = external global i32
@.str = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"%s not found\00", align 1
@home = external global i8*
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pwd = external global i8*
@oldpwd = external global i8*
@.str3 = private unnamed_addr constant [19 x i8] c"zsh_directory_name\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"no directory expansion: ~[%s]\00", align 1
@typtab = external global [256 x i16]
@.str6 = private unnamed_addr constant [36 x i8] c"no such user or named directory: %s\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"bad substitution\00", align 1
@0 = internal unnamed_addr constant [7 x i8] c"wint_t\00"
@hsubl = external global i8*
@.str8 = private unnamed_addr constant [25 x i8] c"no previous substitution\00", align 1
@hsubr = external global i8*
@noerrs = external global i32
@dirstack = external global %union.linkroot*
@.str9 = private unnamed_addr constant [36 x i8] c"not enough directory stack entries.\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"closing bracket missing\00", align 1
@ztokens = external global [0 x i8]
@.str11 = private unnamed_addr constant [36 x i8] c"parse error in command substitution\00", align 1
@ifs = external global i8*
@emulation = external global i32
@.str12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"error in flags\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"association\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"-local\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"-left\00", align 1
@.str22 = private unnamed_addr constant [14 x i8] c"-right_blanks\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"-right_zeros\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"-lower\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"-upper\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"-readonly\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"-tag\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"-export\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"-unique\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"-hide\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"-hideval\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"-special\00", align 1
@vararray_gsu = external constant %struct.gsu_array
@pparams = external global i8**
@.str33 = private unnamed_addr constant [23 x i8] c"closing brace expected\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str35 = private unnamed_addr constant [18 x i8] c"parameter not set\00", align 1
@mypid = external global i64
@stopmsg = external global i32
@.str36 = private unnamed_addr constant [40 x i8] c"parse error in ${...%c...} substitution\00", align 1
@.str37 = private unnamed_addr constant [22 x i8] c"%s: parameter not set\00", align 1
@.str38 = private unnamed_addr constant [22 x i8] c"not an identifier: %s\00", align 1
@.str39 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str41 = private unnamed_addr constant [22 x i8] c"invalid subscript: %s\00", align 1
@.str42 = private unnamed_addr constant [19 x i8] c"invalid length: %s\00", align 1
@.str43 = private unnamed_addr constant [30 x i8] c"substring expression: %d < %d\00", align 1
@argzero = external global i8*
@.str44 = private unnamed_addr constant [27 x i8] c"unrecognized modifier `%c'\00", align 1
@.str45 = private unnamed_addr constant [22 x i8] c"unrecognized modifier\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str47 = private unnamed_addr constant [31 x i8] c"parse error in parameter value\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c" \09\0A\83 \00", align 1
@1 = internal unnamed_addr constant [3 x i8] c"+=\00"
@2 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@3 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@4 = internal unnamed_addr constant [2 x i8] c"-\00"
@5 = internal unnamed_addr constant [2 x i8] c"/\00"
@6 = internal unnamed_addr constant [2 x i8] c"%\00"
@7 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str49 = private unnamed_addr constant [7 x i8] c"\5CU%.8x\00", align 1
@8 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@9 = internal unnamed_addr constant [10 x i8] c"long long\00"
@10 = internal unnamed_addr constant [5 x i8] c"char\00"
@11 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@12 = internal unnamed_addr constant [11 x i8] c"convchar_t\00"
@13 = internal unnamed_addr constant [8 x i8] c"wchar_t\00"
@14 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@15 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@16 = internal unnamed_addr constant [4 x i8] c"int\00"
@17 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@18 = internal unnamed_addr constant [2 x i8] c"*\00"
@outputradix = external global i32
@19 = internal unnamed_addr constant [2 x i8] c"+\00"
@20 = internal unnamed_addr constant [22 x i8] c"../../src/Src/subst.c\00"

define void @prefork(%union.linkroot* %list, i32 %flags) nounwind {
entry:
  %node = alloca %struct.linknode*, align 4
  %cptr = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp22 = alloca %struct.__sigset_t, align 4
  %cptr57 = alloca i8*, align 4
  %oset83 = alloca %struct.__sigset_t, align 4
  %tmp94 = alloca %struct.__sigset_t, align 4
  %oset114 = alloca %struct.__sigset_t, align 4
  %tmp125 = alloca %struct.__sigset_t, align 4
  %and = and i32 %flags, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 93), align 1, !tbaa !0
  %tobool1 = icmp ne i8 %0, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  %2 = load i32* @queueing_enabled, align 4, !tbaa !2
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %land.end
  %6 = sext i32 %2 to i64
  call void @__ioc_report_add_overflow(i32 53, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %land.end, %ioc_bb
  store i32 %4, i32* @queueing_enabled, align 4, !tbaa !2
  %first = getelementptr inbounds %union.linkroot* %list, i32 0, i32 0, i32 0
  %and7 = and i32 %flags, 60
  %and5 = and i32 %flags, 3
  br label %for.cond

for.cond:                                         ; preds = %if.end, %cont
  %storemerge.in = phi %struct.linknode** [ %first, %cont ], [ %next, %if.end ]
  %storemerge = load %struct.linknode** %storemerge.in, align 4
  store %struct.linknode* %storemerge, %struct.linknode** %node, align 4
  %tobool3 = icmp eq %struct.linknode* %storemerge, null
  br i1 %tobool3, label %for.cond28.preheader, label %for.body

for.cond28.preheader:                             ; preds = %for.cond
  %storemerge140147 = load %struct.linknode** %first, align 4
  store %struct.linknode* %storemerge140147, %struct.linknode** %node, align 4
  %tobool29148 = icmp eq %struct.linknode* %storemerge140147, null
  br i1 %tobool29148, label %do.body103, label %for.body30.lr.ph

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %and62 = and i32 %flags, 4
  br label %for.body30

for.body:                                         ; preds = %for.cond
  %7 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 148), align 1, !tbaa !0
  %tobool4 = icmp eq i8 %7, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %dat = getelementptr inbounds %struct.linknode* %storemerge, i32 0, i32 2
  %8 = load i8** %dat, align 4, !tbaa !3
  store i8* %8, i8** %cptr, align 4, !tbaa !3
  call void @filesub(i8** %cptr, i32 %and5)
  %9 = load i8** %cptr, align 4, !tbaa !3
  %10 = load %struct.linknode** %node, align 4, !tbaa !3
  %dat6 = getelementptr inbounds %struct.linknode* %10, i32 0, i32 2
  store i8* %9, i8** %dat6, align 4, !tbaa !3
  %.pre = load %struct.linknode** %node, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %11 = phi %struct.linknode* [ %storemerge, %for.body ], [ %.pre, %if.then ]
  %call = call fastcc %struct.linknode* @stringsubst(%union.linkroot* %list, %struct.linknode* %11, i32 %and7, i32 %land.ext)
  store %struct.linknode* %call, %struct.linknode** %node, align 4, !tbaa !3
  %tobool8 = icmp eq %struct.linknode* %call, null
  %next = getelementptr inbounds %struct.linknode* %call, i32 0, i32 0
  br i1 %tobool8, label %do.body, label %for.cond

do.body:                                          ; preds = %if.end
  %12 = load i32* @queueing_enabled, align 4, !tbaa !2
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 -1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %do.body
  %16 = sext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 76, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %16, i64 -1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %do.body, %ioc_bb10
  store i32 %14, i32* @queueing_enabled, align 4, !tbaa !2
  %tobool12 = icmp eq i32 %14, 0
  br i1 %tobool12, label %while.cond.preheader, label %do.end129

while.cond.preheader:                             ; preds = %cont11
  %17 = load i32* @queue_front, align 4, !tbaa !2
  %18 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp153 = icmp eq i32 %17, %18
  br i1 %cmp153, label %do.end129, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont20
  %19 = phi i32 [ %26, %cont20 ], [ %17, %while.cond.preheader ]
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %19, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb16, label %cont20

ioc_bb16:                                         ; preds = %while.body
  %23 = sext i32 %19 to i64
  call void @__ioc_report_add_overflow(i32 80, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %23, i64 1, i8 13) nounwind
  br label %cont20

cont20:                                           ; preds = %ioc_bb16, %while.body
  %rem = srem i32 %21, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %24 = load i32* @queue_front, align 4, !tbaa !2
  %arrayidx21 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %24
  %25 = load i32* %arrayidx21, align 4, !tbaa !2
  call void @zhandler(i32 %25) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp22, %struct.__sigset_t* byval align 4 %oset) nounwind
  %26 = load i32* @queue_front, align 4, !tbaa !2
  %27 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp = icmp eq i32 %26, %27
  br i1 %cmp, label %do.end129, label %while.body

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc100
  %28 = phi %struct.linknode* [ %storemerge140147, %for.body30.lr.ph ], [ %storemerge140, %for.inc100 ]
  %stop.0150 = phi %struct.linknode* [ null, %for.body30.lr.ph ], [ %stop.3, %for.inc100 ]
  %keep.0149 = phi i32 [ 0, %for.body30.lr.ph ], [ %keep.4, %for.inc100 ]
  %cmp31 = icmp eq %struct.linknode* %28, %stop.0150
  %.keep.0 = select i1 %cmp31, i32 0, i32 %keep.0149
  %dat35 = getelementptr inbounds %struct.linknode* %28, i32 0, i32 2
  %29 = load i8** %dat35, align 4, !tbaa !3
  %30 = load i8* %29, align 1, !tbaa !0
  %tobool36 = icmp eq i8 %30, 0
  br i1 %tobool36, label %if.else, label %if.then37

if.then37:                                        ; preds = %for.body30
  call void @remnulargs(i8* %29) nounwind
  %31 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !0
  %tobool39.not = icmp ne i8 %31, 0
  %tobool41.not = icmp ne i32 %and62, 0
  %brmerge = or i1 %tobool39.not, %tobool41.not
  br i1 %brmerge, label %if.end53, label %if.then42

if.then42:                                        ; preds = %if.then37
  %tobool43 = icmp eq i32 %.keep.0, 0
  br i1 %tobool43, label %if.then44, label %while.cond47.preheader

if.then44:                                        ; preds = %if.then42
  %next45 = getelementptr inbounds %struct.linknode* %28, i32 0, i32 0
  %32 = load %struct.linknode** %next45, align 4, !tbaa !3
  br label %while.cond47.preheader

while.cond47.preheader:                           ; preds = %if.then44, %if.then42
  %keep.2.ph = phi i32 [ %.keep.0, %if.then42 ], [ 0, %if.then44 ]
  %stop.1.ph = phi %struct.linknode* [ %stop.0150, %if.then42 ], [ %32, %if.then44 ]
  %33 = load i8** %dat35, align 4, !tbaa !3
  %call49145 = call i32 @hasbraces(i8* %33) nounwind
  %tobool50146 = icmp eq i32 %call49145, 0
  br i1 %tobool50146, label %if.end53, label %while.body51

while.body51:                                     ; preds = %while.cond47.preheader, %while.body51
  call void @xpandbraces(%union.linkroot* %list, %struct.linknode** %node) nounwind
  %34 = load %struct.linknode** %node, align 4, !tbaa !3
  %dat48 = getelementptr inbounds %struct.linknode* %34, i32 0, i32 2
  %35 = load i8** %dat48, align 4, !tbaa !3
  %call49 = call i32 @hasbraces(i8* %35) nounwind
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %if.end53, label %while.body51

if.end53:                                         ; preds = %if.then37, %while.cond47.preheader, %while.body51
  %keep.3 = phi i32 [ %.keep.0, %if.then37 ], [ %keep.2.ph, %while.cond47.preheader ], [ 1, %while.body51 ]
  %stop.2 = phi %struct.linknode* [ %stop.0150, %if.then37 ], [ %stop.1.ph, %while.cond47.preheader ], [ %stop.1.ph, %while.body51 ]
  %36 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 148), align 1, !tbaa !0
  %tobool54 = icmp eq i8 %36, 0
  br i1 %tobool54, label %if.then55, label %if.end69

if.then55:                                        ; preds = %if.end53
  %37 = load %struct.linknode** %node, align 4, !tbaa !3
  %dat58 = getelementptr inbounds %struct.linknode* %37, i32 0, i32 2
  %38 = load i8** %dat58, align 4, !tbaa !3
  store i8* %38, i8** %cptr57, align 4, !tbaa !3
  call void @filesub(i8** %cptr57, i32 %and5)
  %39 = load i8** %cptr57, align 4, !tbaa !3
  %40 = load %struct.linknode** %node, align 4, !tbaa !3
  %dat60 = getelementptr inbounds %struct.linknode* %40, i32 0, i32 2
  store i8* %39, i8** %dat60, align 4, !tbaa !3
  br label %if.end69

if.else:                                          ; preds = %for.body30
  %41 = or i32 %.keep.0, %and62
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.else
  %call67 = call i8* @uremnode(%union.linkroot* %list, %struct.linknode* %28) nounwind
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.end53, %if.then66, %if.then55
  %keep.4 = phi i32 [ %keep.3, %if.then55 ], [ %.keep.0, %if.then66 ], [ %keep.3, %if.end53 ], [ %.keep.0, %if.else ]
  %stop.3 = phi %struct.linknode* [ %stop.2, %if.then55 ], [ %stop.0150, %if.then66 ], [ %stop.2, %if.end53 ], [ %stop.0150, %if.else ]
  %43 = load i32* @errflag, align 4, !tbaa !2
  %tobool70 = icmp eq i32 %43, 0
  br i1 %tobool70, label %for.inc100, label %do.body72

do.body72:                                        ; preds = %if.end69
  %44 = load i32* @queueing_enabled, align 4, !tbaa !2
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %44, i32 -1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb73, label %cont74

ioc_bb73:                                         ; preds = %do.body72
  %48 = sext i32 %44 to i64
  call void @__ioc_report_add_overflow(i32 114, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %48, i64 -1, i8 13) nounwind
  br label %cont74

cont74:                                           ; preds = %do.body72, %ioc_bb73
  store i32 %46, i32* @queueing_enabled, align 4, !tbaa !2
  %tobool75 = icmp eq i32 %46, 0
  br i1 %tobool75, label %while.cond78.preheader, label %do.end129

while.cond78.preheader:                           ; preds = %cont74
  %49 = load i32* @queue_front, align 4, !tbaa !2
  %50 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp79143 = icmp eq i32 %49, %50
  br i1 %cmp79143, label %do.end129, label %while.body81

while.body81:                                     ; preds = %while.cond78.preheader, %cont89
  %51 = phi i32 [ %58, %cont89 ], [ %49, %while.cond78.preheader ]
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %51, i32 1)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb84, label %cont89

ioc_bb84:                                         ; preds = %while.body81
  %55 = sext i32 %51 to i64
  call void @__ioc_report_add_overflow(i32 118, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %55, i64 1, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %ioc_bb84, %while.body81
  %rem90 = srem i32 %53, 128
  store i32 %rem90, i32* @queue_front, align 4, !tbaa !2
  %arrayidx91 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem90
  call void @signal_setmask(%struct.__sigset_t* sret %oset83, %struct.__sigset_t* byval align 4 %arrayidx91) nounwind
  %56 = load i32* @queue_front, align 4, !tbaa !2
  %arrayidx93 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %56
  %57 = load i32* %arrayidx93, align 4, !tbaa !2
  call void @zhandler(i32 %57) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp94, %struct.__sigset_t* byval align 4 %oset83) nounwind
  %58 = load i32* @queue_front, align 4, !tbaa !2
  %59 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp79 = icmp eq i32 %58, %59
  br i1 %cmp79, label %do.end129, label %while.body81

for.inc100:                                       ; preds = %if.end69
  %60 = load %struct.linknode** %node, align 4, !tbaa !3
  %next101 = getelementptr inbounds %struct.linknode* %60, i32 0, i32 0
  %storemerge140 = load %struct.linknode** %next101, align 4
  store %struct.linknode* %storemerge140, %struct.linknode** %node, align 4
  %tobool29 = icmp eq %struct.linknode* %storemerge140, null
  br i1 %tobool29, label %do.body103, label %for.body30

do.body103:                                       ; preds = %for.inc100, %for.cond28.preheader
  %61 = load i32* @queueing_enabled, align 4, !tbaa !2
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 -1)
  %63 = extractvalue { i32, i1 } %62, 0
  %64 = extractvalue { i32, i1 } %62, 1
  br i1 %64, label %ioc_bb104, label %cont105

ioc_bb104:                                        ; preds = %do.body103
  %65 = sext i32 %61 to i64
  call void @__ioc_report_add_overflow(i32 130, i32 11, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %65, i64 -1, i8 13) nounwind
  br label %cont105

cont105:                                          ; preds = %do.body103, %ioc_bb104
  store i32 %63, i32* @queueing_enabled, align 4, !tbaa !2
  %tobool106 = icmp eq i32 %63, 0
  br i1 %tobool106, label %while.cond109.preheader, label %do.end129

while.cond109.preheader:                          ; preds = %cont105
  %66 = load i32* @queue_front, align 4, !tbaa !2
  %67 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp110141 = icmp eq i32 %66, %67
  br i1 %cmp110141, label %do.end129, label %while.body112

while.body112:                                    ; preds = %while.cond109.preheader, %cont120
  %68 = phi i32 [ %75, %cont120 ], [ %66, %while.cond109.preheader ]
  %69 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %68, i32 1)
  %70 = extractvalue { i32, i1 } %69, 0
  %71 = extractvalue { i32, i1 } %69, 1
  br i1 %71, label %ioc_bb115, label %cont120

ioc_bb115:                                        ; preds = %while.body112
  %72 = sext i32 %68 to i64
  call void @__ioc_report_add_overflow(i32 134, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %72, i64 1, i8 13) nounwind
  br label %cont120

cont120:                                          ; preds = %ioc_bb115, %while.body112
  %rem121 = srem i32 %70, 128
  store i32 %rem121, i32* @queue_front, align 4, !tbaa !2
  %arrayidx122 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem121
  call void @signal_setmask(%struct.__sigset_t* sret %oset114, %struct.__sigset_t* byval align 4 %arrayidx122) nounwind
  %73 = load i32* @queue_front, align 4, !tbaa !2
  %arrayidx124 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %73
  %74 = load i32* %arrayidx124, align 4, !tbaa !2
  call void @zhandler(i32 %74) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp125, %struct.__sigset_t* byval align 4 %oset114) nounwind
  %75 = load i32* @queue_front, align 4, !tbaa !2
  %76 = load i32* @queue_rear, align 4, !tbaa !2
  %cmp110 = icmp eq i32 %75, %76
  br i1 %cmp110, label %do.end129, label %while.body112

do.end129:                                        ; preds = %while.cond.preheader, %cont20, %while.cond78.preheader, %cont89, %while.cond109.preheader, %cont120, %cont11, %cont74, %cont105
  ret void
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @filesub(i8** nocapture %namptr, i32 %assign) nounwind {
entry:
  %str = alloca i8*, align 4
  %call = call i32 @filesubstr(i8** %namptr, i32 %assign)
  %tobool = icmp eq i32 %assign, 0
  br i1 %tobool, label %while.end, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %assign, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end29, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = load i8** %namptr, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %0, i32 1
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %tobool3 = icmp eq i8 %1, 0
  br i1 %tobool3, label %while.end, label %ioc_bb

ioc_bb:                                           ; preds = %if.then2
  call void @__ioc_report_conversion(i32 596, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %call4 = call i8* @strchr(i8* %arrayidx, i32 -117) nounwind
  %tobool5 = icmp eq i8* %call4, null
  br i1 %tobool5, label %while.end, label %if.then6

if.then6:                                         ; preds = %ioc_bb
  %add.ptr7 = getelementptr inbounds i8* %call4, i32 1
  store i8* %add.ptr7, i8** %str, align 4, !tbaa !3
  %2 = load i8* %add.ptr7, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 598, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp = icmp eq i8 %2, -106
  br i1 %cmp, label %land.lhs.true19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then6
  %3 = load i8* %add.ptr7, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 598, i32 57, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp17 = icmp eq i8 %3, -117
  br i1 %cmp17, label %land.lhs.true19, label %if.end29

land.lhs.true19:                                  ; preds = %lor.lhs.false, %if.then6
  %call20 = call i32 @filesubstr(i8** %str, i32 %assign)
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %if.end29, label %cont24

cont24:                                           ; preds = %land.lhs.true19
  store i8 0, i8* %add.ptr7, align 1, !tbaa !0
  %4 = load i8** %namptr, align 4, !tbaa !3
  %5 = load i8** %str, align 4, !tbaa !3
  %call26 = call i8* @dyncat(i8* %4, i8* %5) nounwind
  store i8* %call26, i8** %namptr, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true19, %lor.lhs.false, %if.end, %cont24
  %eql.0 = phi i8* [ %call4, %cont24 ], [ null, %if.end ], [ %call4, %lor.lhs.false ], [ %call4, %land.lhs.true19 ]
  %6 = load i8** %namptr, align 4, !tbaa !3
  %call3082 = call i8* @strchr(i8* %6, i32 58) nounwind
  %tobool3183 = icmp eq i8* %call3082, null
  br i1 %tobool3183, label %while.end, label %while.body

while.body:                                       ; preds = %if.end29, %if.end57
  %7 = phi i8* [ %12, %if.end57 ], [ %6, %if.end29 ]
  %call3084 = phi i8* [ %call30, %if.end57 ], [ %call3082, %if.end29 ]
  %add.ptr32 = getelementptr inbounds i8* %call3084, i32 1
  store i8* %add.ptr32, i8** %str, align 4, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %call3084 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32
  %cmp33 = icmp ugt i8* %call3084, %eql.0
  br i1 %cmp33, label %land.lhs.true35, label %if.end57

land.lhs.true35:                                  ; preds = %while.body
  %8 = load i8* %add.ptr32, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 610, i32 41, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp40 = icmp eq i8 %8, -106
  br i1 %cmp40, label %land.lhs.true49, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true35
  %9 = load i8* %add.ptr32, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 610, i32 68, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp47 = icmp eq i8 %9, -117
  br i1 %cmp47, label %land.lhs.true49, label %if.end57

land.lhs.true49:                                  ; preds = %lor.lhs.false42, %land.lhs.true35
  %call50 = call i32 @filesubstr(i8** %str, i32 %assign)
  %tobool51 = icmp eq i32 %call50, 0
  br i1 %tobool51, label %if.end57, label %cont54

cont54:                                           ; preds = %land.lhs.true49
  store i8 0, i8* %add.ptr32, align 1, !tbaa !0
  %10 = load i8** %namptr, align 4, !tbaa !3
  %11 = load i8** %str, align 4, !tbaa !3
  %call56 = call i8* @dyncat(i8* %10, i8* %11) nounwind
  store i8* %call56, i8** %namptr, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true49, %lor.lhs.false42, %cont54, %while.body
  %12 = load i8** %namptr, align 4, !tbaa !3
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 1
  %add.ptr58.sum = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %add.ptr59 = getelementptr inbounds i8* %12, i32 %add.ptr58.sum
  %call30 = call i8* @strchr(i8* %add.ptr59, i32 58) nounwind
  %tobool31 = icmp eq i8* %call30, null
  br i1 %tobool31, label %while.end, label %while.body

while.end:                                        ; preds = %if.end29, %if.end57, %ioc_bb, %if.then2, %entry
  ret void
}

define internal fastcc %struct.linknode* @stringsubst(%union.linkroot* %list, %struct.linknode* %node, i32 %pf_flags, i32 %asssub) nounwind {
entry:
  %str3 = alloca i8*, align 4
  %str = alloca i8*, align 4
  %rest = alloca i8*, align 4
  %str2 = alloca i8*, align 4
  %dat = getelementptr inbounds %struct.linknode* %node, i32 0, i32 2
  %0 = load i8** %dat, align 4, !tbaa !3
  store i8* %0, i8** %str3, align 4, !tbaa !3
  store i8* %0, i8** %str, align 4, !tbaa !3
  %1 = load i32* @errflag, align 4, !tbaa !2
  %tobool541 = icmp eq i32 %1, 0
  br i1 %tobool541, label %land.rhs, label %while.end.thread

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %2 = phi i8* [ %36, %while.cond.backedge ], [ %0, %entry ]
  %3 = phi i8* [ %37, %while.cond.backedge ], [ %0, %entry ]
  %4 = load i8* %2, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %4, 0
  br i1 %tobool1, label %land.rhs87.lr.ph.lr.ph.lr.ph, label %ioc_bb

ioc_bb:                                           ; preds = %land.rhs
  call void @__ioc_report_conversion(i32 185, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp = icmp eq i8 %4, -110
  br i1 %cmp, label %land.lhs.true17, label %ioc_bb5

ioc_bb5:                                          ; preds = %ioc_bb
  call void @__ioc_report_conversion(i32 185, i32 55, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp7 = icmp eq i8 %4, -108
  br i1 %cmp7, label %land.lhs.true17, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %ioc_bb5
  %5 = load i8** %str, align 4, !tbaa !3
  %cmp10 = icmp eq i8* %5, %3
  br i1 %cmp10, label %ioc_bb13, label %if.else83

ioc_bb13:                                         ; preds = %lor.lhs.false9
  call void @__ioc_report_conversion(i32 185, i32 92, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp15 = icmp eq i8 %4, -117
  br i1 %cmp15, label %land.lhs.true17, label %if.else83

land.lhs.true17:                                  ; preds = %ioc_bb13, %ioc_bb5, %ioc_bb
  %6 = load i8** %str, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %6, i32 1
  %7 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 185, i32 120, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp21 = icmp eq i8 %7, -120
  br i1 %cmp21, label %if.then, label %if.else83

if.then:                                          ; preds = %land.lhs.true17
  %8 = load i8** %str, align 4, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__ioc_report_conversion(i32 193, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 146, i8 1) nounwind
  br i1 %cmp, label %if.then34, label %ioc_bb30

ioc_bb30:                                         ; preds = %if.then
  call void @__ioc_report_conversion(i32 193, i32 46, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 148, i8 1) nounwind
  %cmp32 = icmp eq i8 %4, -108
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %ioc_bb30, %if.then
  %9 = load i8** %str, align 4, !tbaa !3
  %call = call i8* @getproc(i8* %9, i8** %rest) nounwind
  br label %if.end

if.else:                                          ; preds = %ioc_bb30
  %10 = load i8** %str, align 4, !tbaa !3
  %call35 = call i8* @getoutputfile(i8* %10, i8** %rest) nounwind
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then34
  %subst.0 = phi i8* [ %call, %if.then34 ], [ %call35, %if.else ]
  %11 = load i32* @errflag, align 4, !tbaa !2
  %tobool36 = icmp eq i32 %11, 0
  br i1 %tobool36, label %if.end38, label %return

if.end38:                                         ; preds = %if.end
  %tobool39 = icmp eq i8* %subst.0, null
  %.subst.0 = select i1 %tobool39, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* %subst.0
  %call42 = call i32 @strlen(i8* %.subst.0) nounwind readonly
  %12 = icmp sgt i32 %call42, -1
  br i1 %12, label %cont44, label %ioc_bb43

ioc_bb43:                                         ; preds = %if.end38
  %13 = zext i32 %call42 to i64
  call void @__ioc_report_conversion(i32 203, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %13, i8 0) nounwind
  br label %cont44

cont44:                                           ; preds = %ioc_bb43, %if.end38
  %14 = load i8** %rest, align 4, !tbaa !3
  %call45 = call i32 @strlen(i8* %14) nounwind readonly
  %15 = icmp sgt i32 %call45, -1
  br i1 %15, label %cont48, label %ioc_bb47

ioc_bb47:                                         ; preds = %cont44
  %16 = zext i32 %call45 to i64
  call void @__ioc_report_conversion(i32 204, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %16, i8 0) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb47, %cont44
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %call42)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  %20 = sext i32 %sub.ptr.sub to i64
  %21 = sext i32 %call42 to i64
  br i1 %19, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %cont48
  call void @__ioc_report_add_overflow(i32 205, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %20, i64 %21, i8 13) nounwind
  br label %cont50

cont50:                                           ; preds = %cont48, %ioc_bb49
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %18, i32 %call45)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  %25 = sext i32 %call45 to i64
  br i1 %24, label %ioc_bb51, label %cont52

ioc_bb51:                                         ; preds = %cont50
  %26 = sext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 205, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %26, i64 %25, i8 13) nounwind
  br label %cont52

cont52:                                           ; preds = %cont50, %ioc_bb51
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb53, label %cont54

ioc_bb53:                                         ; preds = %cont52
  %30 = sext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 205, i32 58, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont54

cont54:                                           ; preds = %cont52, %ioc_bb53
  %31 = icmp sgt i32 %28, -1
  br i1 %31, label %cont56, label %ioc_bb55

ioc_bb55:                                         ; preds = %cont54
  %32 = sext i32 %28 to i64
  call void @__ioc_report_conversion(i32 205, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %32, i8 1) nounwind
  br label %cont56

cont56:                                           ; preds = %ioc_bb55, %cont54
  %call57 = call i8* @hcalloc(i32 %28) nounwind
  %tobool58 = icmp eq i8* %8, %3
  br i1 %tobool58, label %if.end63, label %if.then59

if.then59:                                        ; preds = %cont56
  %33 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %33, label %cont62, label %ioc_bb61

ioc_bb61:                                         ; preds = %if.then59
  call void @__ioc_report_conversion(i32 207, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont62

cont62:                                           ; preds = %ioc_bb61, %if.then59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call57, i8* %3, i32 %sub.ptr.sub, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %call57, i32 %sub.ptr.sub
  br label %if.end63

if.end63:                                         ; preds = %cont56, %cont62
  %sptr.0 = phi i8* [ %add.ptr, %cont62 ], [ %call57, %cont56 ]
  %tobool64 = icmp eq i32 %call42, 0
  br i1 %tobool64, label %if.end70, label %if.then65

if.then65:                                        ; preds = %if.end63
  br i1 %12, label %cont68, label %ioc_bb67

ioc_bb67:                                         ; preds = %if.then65
  call void @__ioc_report_conversion(i32 211, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont68

cont68:                                           ; preds = %ioc_bb67, %if.then65
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %sptr.0, i8* %.subst.0, i32 %call42, i32 1, i1 false)
  %add.ptr69 = getelementptr inbounds i8* %sptr.0, i32 %call42
  br label %if.end70

if.end70:                                         ; preds = %if.end63, %cont68
  %sptr.1 = phi i8* [ %add.ptr69, %cont68 ], [ %sptr.0, %if.end63 ]
  %tobool71 = icmp eq i32 %call45, 0
  br i1 %tobool71, label %cont78, label %if.then72

if.then72:                                        ; preds = %if.end70
  %34 = load i8** %rest, align 4, !tbaa !3
  br i1 %15, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %if.then72
  call void @__ioc_report_conversion(i32 215, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %ioc_bb74, %if.then72
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %sptr.1, i8* %34, i32 %call45, i32 1, i1 false)
  br label %cont78

cont78:                                           ; preds = %cont75, %if.end70
  %arrayidx79 = getelementptr inbounds i8* %sptr.1, i32 %call45
  store i8 0, i8* %arrayidx79, align 1, !tbaa !0
  store i8* %call57, i8** %str3, align 4, !tbaa !3
  %add.ptr81 = getelementptr inbounds i8* %call57, i32 %18
  store i8* %add.ptr81, i8** %str, align 4, !tbaa !3
  store i8* %call57, i8** %dat, align 4, !tbaa !3
  br label %while.cond.backedge

if.else83:                                        ; preds = %land.lhs.true17, %ioc_bb13, %lor.lhs.false9
  %35 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %35, i32 1
  store i8* %incdec.ptr, i8** %str, align 4, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else83, %cont78
  %36 = phi i8* [ %incdec.ptr, %if.else83 ], [ %add.ptr81, %cont78 ]
  %37 = phi i8* [ %3, %if.else83 ], [ %call57, %cont78 ]
  %38 = load i32* @errflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %38, 0
  br i1 %tobool, label %land.rhs, label %while.end.thread

while.end.thread:                                 ; preds = %entry, %while.cond.backedge
  %.ph = phi i32 [ %1, %entry ], [ %38, %while.cond.backedge ]
  %.ph585 = phi i8* [ %0, %entry ], [ %37, %while.cond.backedge ]
  store i8* %.ph585, i8** %str, align 4, !tbaa !3
  br label %while.end420

land.rhs87.lr.ph.lr.ph.lr.ph:                     ; preds = %land.rhs
  store i8* %3, i8** %str, align 4, !tbaa !3
  %flags = getelementptr inbounds %union.linkroot* %list, i32 0, i32 0, i32 2
  %tobool400 = icmp eq i32 %asssub, 0
  br label %land.rhs87.lr.ph.lr.ph

land.rhs87.lr.ph.lr.ph:                           ; preds = %while.cond85.outer.backedge.thread, %land.rhs87.lr.ph.lr.ph.lr.ph, %while.cond85.outer.backedge
  %node.addr.0.ph560 = phi %struct.linknode* [ %node, %land.rhs87.lr.ph.lr.ph.lr.ph ], [ %node.addr.0.ph527550, %while.cond85.outer.backedge ], [ %call161, %while.cond85.outer.backedge.thread ]
  %pf_flags.addr.0.ph559 = phi i32 [ %pf_flags, %land.rhs87.lr.ph.lr.ph.lr.ph ], [ %pf_flags.addr.2, %while.cond85.outer.backedge ], [ %pf_flags.addr.1, %while.cond85.outer.backedge.thread ]
  %and318 = and i32 %pf_flags.addr.0.ph559, 4
  %tobool340 = icmp eq i32 %and318, 0
  br label %land.rhs87.lr.ph

land.rhs87.lr.ph:                                 ; preds = %land.rhs87.lr.ph.lr.ph, %if.end392
  %node.addr.0.ph527550 = phi %struct.linknode* [ %node.addr.0.ph560, %land.rhs87.lr.ph.lr.ph ], [ %node.addr.1, %if.end392 ]
  %dat139 = getelementptr inbounds %struct.linknode* %node.addr.0.ph527550, i32 0, i32 2
  br label %land.rhs87

land.rhs87:                                       ; preds = %while.cond85.backedge, %land.rhs87.lr.ph
  %39 = load i8** %str, align 4, !tbaa !3
  %40 = load i8* %39, align 1, !tbaa !0
  %tobool89 = icmp eq i8 %40, 0
  br i1 %tobool89, label %while.end420, label %ioc_bb93

ioc_bb93:                                         ; preds = %land.rhs87
  call void @__ioc_report_conversion(i32 226, i32 28, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp95 = icmp eq i8 %40, -118
  %conv96 = zext i1 %cmp95 to i32
  br i1 %cmp95, label %if.then103, label %ioc_bb99

ioc_bb99:                                         ; preds = %ioc_bb93
  call void @__ioc_report_conversion(i32 226, i32 51, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp101 = icmp eq i8 %40, -123
  br i1 %cmp101, label %if.then103, label %ioc_bb170

if.then103:                                       ; preds = %ioc_bb99, %ioc_bb93
  %41 = load i8** %str, align 4, !tbaa !3
  %arrayidx104 = getelementptr inbounds i8* %41, i32 1
  %42 = load i8* %arrayidx104, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 227, i32 35, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp108 = icmp eq i8 %42, -120
  br i1 %cmp108, label %if.then110, label %ioc_bb118

if.then110:                                       ; preds = %if.then103
  br i1 %cmp95, label %ioc_bb192, label %if.then112

if.then112:                                       ; preds = %if.then110
  %43 = load i32* %flags, align 4, !tbaa !2
  %or = or i32 %43, 1
  store i32 %or, i32* %flags, align 4, !tbaa !2
  br label %ioc_bb192

ioc_bb118:                                        ; preds = %if.then103
  call void @__ioc_report_conversion(i32 233, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp120 = icmp eq i8 %42, -113
  br i1 %cmp120, label %if.then122, label %ioc_bb142

if.then122:                                       ; preds = %ioc_bb118
  %44 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr123 = getelementptr inbounds i8* %44, i32 1
  store i8* %incdec.ptr123, i8** %str2, align 4, !tbaa !3
  call void @__ioc_report_conversion(i32 237, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  call void @__ioc_report_conversion(i32 237, i32 46, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  %call128 = call i32 @skipparens(i8 signext -113, i8 signext -112, i8** %str2) nounwind
  %tobool129 = icmp eq i32 %call128, 0
  br i1 %tobool129, label %cont133, label %if.then130

if.then130:                                       ; preds = %if.then122
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([24 x i8]* @.str10, i32 0, i32 0)) nounwind
  br label %return

cont133:                                          ; preds = %if.then122
  %45 = load i8** %str, align 4, !tbaa !3
  store i8 0, i8* %45, align 1, !tbaa !0
  %46 = load i8** %str2, align 4, !tbaa !3
  %arrayidx136 = getelementptr inbounds i8* %46, i32 -1
  store i8 0, i8* %arrayidx136, align 1, !tbaa !0
  %47 = load i8** %str, align 4, !tbaa !3
  %add.ptr137 = getelementptr inbounds i8* %47, i32 2
  %48 = load i8** %str2, align 4, !tbaa !3
  %call138 = call fastcc i8* @arithsubst(i8* %add.ptr137, i8** %str3, i8* %48)
  store i8* %call138, i8** %str, align 4, !tbaa !3
  %49 = load i8** %str3, align 4, !tbaa !3
  store i8* %49, i8** %dat139, align 4, !tbaa !3
  br label %while.cond85.backedge

while.cond85.backedge:                            ; preds = %cont133, %if.then146, %if.end251, %if.then334
  %50 = load i32* @errflag, align 4, !tbaa !2
  %tobool86 = icmp eq i32 %50, 0
  br i1 %tobool86, label %land.rhs87, label %while.end420

ioc_bb142:                                        ; preds = %ioc_bb118
  call void @__ioc_report_conversion(i32 246, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 153, i8 1) nounwind
  %cmp144 = icmp eq i8 %42, -103
  br i1 %cmp144, label %if.then146, label %if.else149

if.then146:                                       ; preds = %ioc_bb142
  %51 = load i8** %str3, align 4, !tbaa !3
  %call147 = call fastcc i8* @stringsubstquote(i8* %51, i8** %str)
  store i8* %call147, i8** %str3, align 4, !tbaa !3
  store i8* %call147, i8** %dat139, align 4, !tbaa !3
  br label %while.cond85.backedge

if.else149:                                       ; preds = %ioc_bb142
  %52 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 154), align 1, !tbaa !0
  %tobool151 = icmp eq i8 %52, 0
  br i1 %tobool151, label %lor.lhs.false154, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %if.else149
  %53 = and i32 %pf_flags.addr.0.ph559, 40
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %if.end159, label %if.then157

lor.lhs.false154:                                 ; preds = %if.else149
  %.old = and i32 %pf_flags.addr.0.ph559, 8
  %tobool156.old = icmp eq i32 %.old, 0
  br i1 %tobool156.old, label %if.end159, label %if.then157

if.then157:                                       ; preds = %land.lhs.true152, %lor.lhs.false154
  %or158 = or i32 %pf_flags.addr.0.ph559, 16
  br label %if.end159

if.end159:                                        ; preds = %land.lhs.true152, %lor.lhs.false154, %if.then157
  %pf_flags.addr.1 = phi i32 [ %or158, %if.then157 ], [ %pf_flags.addr.0.ph559, %lor.lhs.false154 ], [ %pf_flags.addr.0.ph559, %land.lhs.true152 ]
  %and160 = and i32 %pf_flags.addr.1, 20
  %call161 = call fastcc %struct.linknode* @paramsubst(%union.linkroot* %list, %struct.linknode* %node.addr.0.ph527550, i8** %str, i32 %conv96, i32 %and160)
  %55 = load i32* @errflag, align 4, !tbaa !2
  %tobool162 = icmp ne i32 %55, 0
  %tobool164 = icmp eq %struct.linknode* %call161, null
  %or.cond516 = or i1 %tobool162, %tobool164
  br i1 %or.cond516, label %return, label %while.cond85.outer.backedge.thread

while.cond85.outer.backedge.thread:               ; preds = %if.end159
  %dat167 = getelementptr inbounds %struct.linknode* %call161, i32 0, i32 2
  %56 = load i8** %dat167, align 4, !tbaa !3
  store i8* %56, i8** %str3, align 4, !tbaa !3
  br label %land.rhs87.lr.ph.lr.ph

while.cond85.outer.backedge:                      ; preds = %ioc_bb407, %if.else399, %land.lhs.true411
  %pf_flags.addr.2 = phi i32 [ %pf_flags.addr.0.or415, %land.lhs.true411 ], [ %pf_flags.addr.0.ph559, %if.else399 ], [ %pf_flags.addr.0.ph559, %ioc_bb407 ]
  %57 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr419 = getelementptr inbounds i8* %57, i32 1
  store i8* %incdec.ptr419, i8** %str, align 4, !tbaa !3
  %.pre584 = load i32* @errflag, align 4, !tbaa !2
  %tobool86539549 = icmp eq i32 %.pre584, 0
  br i1 %tobool86539549, label %land.rhs87.lr.ph.lr.ph, label %while.end420

ioc_bb170:                                        ; preds = %ioc_bb99
  call void @__ioc_report_conversion(i32 273, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 151, i8 1) nounwind
  %cmp172 = icmp eq i8 %40, -105
  %conv173 = zext i1 %cmp172 to i32
  br i1 %cmp172, label %cont207, label %ioc_bb176

ioc_bb176:                                        ; preds = %ioc_bb170
  call void @__ioc_report_conversion(i32 273, i32 58, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 145, i8 1) nounwind
  %cmp178 = icmp eq i8 %40, -111
  br i1 %cmp178, label %cond.true, label %if.else399

cond.true:                                        ; preds = %ioc_bb176
  %58 = load i32* %flags, align 4, !tbaa !2
  %or182 = or i32 %58, 1
  store i32 %or182, i32* %flags, align 4, !tbaa !2
  br label %cont207

ioc_bb192:                                        ; preds = %if.then112, %if.then110
  %59 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr115 = getelementptr inbounds i8* %59, i32 1
  store i8* %incdec.ptr115, i8** %str, align 4, !tbaa !3
  call void @__ioc_report_conversion(i32 282, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  call void @__ioc_report_conversion(i32 283, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %60 = load i8** %str, align 4, !tbaa !3
  %arrayidx198 = getelementptr inbounds i8* %60, i32 -1
  store i8 0, i8* %arrayidx198, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 285, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  call void @__ioc_report_conversion(i32 285, i32 44, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %call203 = call i32 @skipparens(i8 signext -120, i8 signext -119, i8** %str) nounwind
  %61 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr204 = getelementptr inbounds i8* %61, i32 -1
  store i8* %incdec.ptr204, i8** %str, align 4, !tbaa !3
  br label %cont218

cont207:                                          ; preds = %ioc_bb170, %cond.true
  %62 = load i8** %str, align 4, !tbaa !3
  call void @__ioc_report_conversion(i32 282, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %63 = load i8** %str, align 4, !tbaa !3
  store i8 0, i8* %63, align 1, !tbaa !0
  %.pre583 = load i8** %str, align 4, !tbaa !3
  br label %while.cond208

while.cond208:                                    ; preds = %while.cond208, %cont207
  %64 = phi i8* [ %incdec.ptr209, %while.cond208 ], [ %.pre583, %cont207 ]
  %incdec.ptr209 = getelementptr inbounds i8* %64, i32 1
  store i8* %incdec.ptr209, i8** %str, align 4, !tbaa !3
  %65 = load i8* %incdec.ptr209, align 1, !tbaa !0
  %cmp212 = icmp eq i8 %65, %40
  br i1 %cmp212, label %cont218.loopexit, label %while.cond208

cont218.loopexit:                                 ; preds = %while.cond208
  %phitmp = icmp eq i8 %40, -119
  br label %cont218

cont218:                                          ; preds = %cont218.loopexit, %ioc_bb192
  %66 = phi i8* [ %incdec.ptr204, %ioc_bb192 ], [ %incdec.ptr209, %cont218.loopexit ]
  %67 = phi i8* [ %incdec.ptr115, %ioc_bb192 ], [ %62, %cont218.loopexit ]
  %qt.0522 = phi i32 [ %conv96, %ioc_bb192 ], [ %conv173, %cont218.loopexit ]
  %endchar.0 = phi i1 [ true, %ioc_bb192 ], [ %phitmp, %cont218.loopexit ]
  %incdec.ptr219 = getelementptr inbounds i8* %66, i32 1
  store i8* %incdec.ptr219, i8** %str, align 4, !tbaa !3
  store i8 0, i8* %66, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 295, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %arrayidx226 = getelementptr inbounds i8* %67, i32 1
  br i1 %endchar.0, label %land.lhs.true225, label %if.end253

land.lhs.true225:                                 ; preds = %cont218
  %68 = load i8* %arrayidx226, align 1, !tbaa !0
  %cmp228 = icmp eq i8 %68, 40
  br i1 %cmp228, label %cont232, label %if.end253

cont232:                                          ; preds = %land.lhs.true225
  %69 = load i8** %str, align 4, !tbaa !3
  %arrayidx233 = getelementptr inbounds i8* %69, i32 -2
  %70 = load i8* %arrayidx233, align 1, !tbaa !0
  %cmp235 = icmp eq i8 %70, 41
  br i1 %cmp235, label %cont241, label %if.end253

cont241:                                          ; preds = %cont232
  store i8 0, i8* %arrayidx233, align 1, !tbaa !0
  %71 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !0
  %tobool243 = icmp eq i8 %71, 0
  br i1 %tobool243, label %cont249, label %if.then244

if.then244:                                       ; preds = %cont241
  %add.ptr245 = getelementptr inbounds i8* %67, i32 2
  %72 = load i8** %str, align 4, !tbaa !3
  %call246 = call fastcc i8* @arithsubst(i8* %add.ptr245, i8** %str3, i8* %72)
  store i8* %call246, i8** %str, align 4, !tbaa !3
  %.pre = load i8** %str3, align 4, !tbaa !3
  br label %if.end251

cont249:                                          ; preds = %cont241
  %73 = load i8** %str3, align 4, !tbaa !3
  %call250 = call i8* @strncpy(i8* %73, i8* %67, i32 1) nounwind
  br label %if.end251

if.end251:                                        ; preds = %cont249, %if.then244
  %74 = phi i8* [ %73, %cont249 ], [ %.pre, %if.then244 ]
  store i8* %74, i8** %dat139, align 4, !tbaa !3
  br label %while.cond85.backedge

if.end253:                                        ; preds = %cont218, %cont232, %land.lhs.true225
  store i8* %arrayidx226, i8** %str, align 4, !tbaa !3
  %75 = load i8* %arrayidx226, align 1, !tbaa !0
  %tobool255525 = icmp eq i8 %75, 0
  br i1 %tobool255525, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end253
  %tobool301 = icmp ne i32 %qt.0522, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %76 = phi i8 [ %75, %for.body.lr.ph ], [ %89, %for.cond.backedge ]
  %77 = icmp sgt i8 %76, -1
  br i1 %77, label %cont258, label %ioc_bb257

ioc_bb257:                                        ; preds = %for.body
  %78 = sext i8 %76 to i64
  call void @__ioc_report_conversion(i32 305, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %78, i8 1) nounwind
  br label %cont258

cont258:                                          ; preds = %ioc_bb257, %for.body
  %idxprom = zext i8 %76 to i32
  %arrayidx259 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %79 = load i16* %arrayidx259, align 2, !tbaa !4
  %and265 = and i16 %79, 16
  %tobool266 = icmp eq i16 %and265, 0
  br i1 %tobool266, label %for.cond.backedge, label %land.lhs.true267

land.lhs.true267:                                 ; preds = %cont258
  %conv268 = sext i8 %76 to i32
  call void @__ioc_report_conversion(i32 305, i32 68, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp271 = icmp eq i8 %76, -99
  br i1 %cmp271, label %for.cond.backedge, label %ioc_bb275

ioc_bb275:                                        ; preds = %land.lhs.true267
  call void @__ioc_report_conversion(i32 305, i32 98, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  br i1 %endchar.0, label %ioc_bb309, label %ioc_bb281

ioc_bb281:                                        ; preds = %ioc_bb275
  call void @__ioc_report_conversion(i32 305, i32 120, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp283 = icmp eq i8 %76, -101
  br i1 %cmp283, label %land.lhs.true285, label %ioc_bb309

land.lhs.true285:                                 ; preds = %ioc_bb281
  %80 = load i8** %str, align 4, !tbaa !3
  %arrayidx286 = getelementptr inbounds i8* %80, i32 1
  %81 = load i8* %arrayidx286, align 1, !tbaa !0
  switch i8 %81, label %lor.lhs.false300 [
    i8 36, label %for.cond.backedge
    i8 92, label %for.cond.backedge
    i8 96, label %for.cond.backedge
  ]

lor.lhs.false300:                                 ; preds = %land.lhs.true285
  %cmp305 = icmp eq i8 %81, 34
  %or.cond517 = and i1 %tobool301, %cmp305
  br i1 %or.cond517, label %for.cond.backedge, label %ioc_bb309

ioc_bb309:                                        ; preds = %ioc_bb281, %ioc_bb275, %lor.lhs.false300
  call void @__ioc_report_conversion(i32 306, i32 41, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv268, i32 -124)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb311, label %cont312

ioc_bb311:                                        ; preds = %ioc_bb309
  %85 = sext i8 %76 to i64
  call void @__ioc_report_sub_overflow(i32 306, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %85, i64 -124, i8 13) nounwind
  br label %cont312

cont312:                                          ; preds = %ioc_bb309, %ioc_bb311
  %arrayidx313 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %83
  %86 = load i8* %arrayidx313, align 1, !tbaa !0
  %87 = load i8** %str, align 4, !tbaa !3
  store i8 %86, i8* %87, align 1, !tbaa !0
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.lhs.true267, %cont258, %cont312, %land.lhs.true285, %land.lhs.true285, %land.lhs.true285, %lor.lhs.false300
  %88 = load i8** %str, align 4, !tbaa !3
  %incdec.ptr254 = getelementptr inbounds i8* %88, i32 1
  store i8* %incdec.ptr254, i8** %str, align 4, !tbaa !3
  %89 = load i8* %incdec.ptr254, align 1, !tbaa !0
  %tobool255 = icmp eq i8 %89, 0
  br i1 %tobool255, label %for.end, label %for.body

for.end:                                          ; preds = %for.cond.backedge, %if.end253
  %.lcssa = phi i8* [ %67, %if.end253 ], [ %88, %for.cond.backedge ]
  %incdec.ptr315 = getelementptr inbounds i8* %.lcssa, i32 2
  store i8* %incdec.ptr315, i8** %str, align 4, !tbaa !3
  %tobool317 = icmp eq i32 %qt.0522, 0
  %90 = or i32 %qt.0522, %and318
  %91 = icmp ne i32 %90, 0
  %lor.ext = zext i1 %91 to i32
  %call320 = call %union.linkroot* @getoutput(i8* %arrayidx226, i32 %lor.ext) nounwind
  %tobool321 = icmp eq %union.linkroot* %call320, null
  br i1 %tobool321, label %if.then322, label %ioc_bb325

if.then322:                                       ; preds = %for.end
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([36 x i8]* @.str11, i32 0, i32 0)) nounwind
  br label %return

ioc_bb325:                                        ; preds = %for.end
  call void @__ioc_report_conversion(i32 312, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %incdec.ptr330 = getelementptr inbounds i8* %67, i32 -1
  %str2185.0 = select i1 %endchar.0, i8* %incdec.ptr330, i8* %67
  %call332 = call i8* @ugetnode(%union.linkroot* %call320) nounwind
  %tobool333 = icmp eq i8* %call332, null
  br i1 %tobool333, label %if.then334, label %if.end336

if.then334:                                       ; preds = %ioc_bb325
  %92 = load i8** %str, align 4, !tbaa !3
  %call335 = call i8* @strcpy(i8* %str2185.0, i8* %92) nounwind
  store i8* %call335, i8** %str, align 4, !tbaa !3
  br label %while.cond85.backedge

if.end336:                                        ; preds = %ioc_bb325
  br i1 %tobool317, label %land.lhs.true338, label %if.end345

land.lhs.true338:                                 ; preds = %if.end336
  %93 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 61), align 1, !tbaa !0
  %tobool343 = icmp eq i8 %93, 0
  %or.cond519 = or i1 %tobool340, %tobool343
  br i1 %or.cond519, label %if.end345, label %if.then344

if.then344:                                       ; preds = %land.lhs.true338
  call void @shtokenize(i8* %call332) nounwind
  br label %if.end345

if.end345:                                        ; preds = %if.end336, %land.lhs.true338, %if.then344
  %94 = load i8** %str3, align 4, !tbaa !3
  %sub.ptr.lhs.cast346 = ptrtoint i8* %str2185.0 to i32
  %sub.ptr.rhs.cast347 = ptrtoint i8* %94 to i32
  %sub.ptr.sub348 = sub i32 %sub.ptr.lhs.cast346, %sub.ptr.rhs.cast347
  %call349 = call i32 @strlen(i8* %call332) nounwind readonly
  %95 = icmp sgt i32 %call349, -1
  br i1 %95, label %cont352, label %ioc_bb351

ioc_bb351:                                        ; preds = %if.end345
  %96 = zext i32 %call349 to i64
  call void @__ioc_report_conversion(i32 321, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %96, i8 0) nounwind
  br label %cont352

cont352:                                          ; preds = %ioc_bb351, %if.end345
  %first = getelementptr inbounds %union.linkroot* %call320, i32 0, i32 0, i32 0
  %97 = load %struct.linknode** %first, align 4, !tbaa !3
  %cmp354 = icmp eq %struct.linknode* %97, null
  br i1 %cmp354, label %if.end375, label %if.then356

if.then356:                                       ; preds = %cont352
  %last = getelementptr inbounds %union.linkroot* %call320, i32 0, i32 0, i32 1
  %98 = load %struct.linknode** %last, align 4, !tbaa !3
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub348, i32 %call349)
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  br i1 %101, label %ioc_bb358, label %cont359

ioc_bb358:                                        ; preds = %if.then356
  %102 = sext i32 %call349 to i64
  %103 = sext i32 %sub.ptr.sub348 to i64
  call void @__ioc_report_add_overflow(i32 324, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %103, i64 %102, i8 13) nounwind
  br label %cont359

cont359:                                          ; preds = %if.then356, %ioc_bb358
  %104 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %100, i32 1)
  %105 = extractvalue { i32, i1 } %104, 0
  %106 = extractvalue { i32, i1 } %104, 1
  br i1 %106, label %ioc_bb360, label %cont361

ioc_bb360:                                        ; preds = %cont359
  %107 = sext i32 %100 to i64
  call void @__ioc_report_add_overflow(i32 324, i32 45, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %107, i64 1, i8 13) nounwind
  br label %cont361

cont361:                                          ; preds = %cont359, %ioc_bb360
  %108 = icmp sgt i32 %105, -1
  br i1 %108, label %cont364, label %ioc_bb363

ioc_bb363:                                        ; preds = %cont361
  %109 = sext i32 %105 to i64
  call void @__ioc_report_conversion(i32 324, i32 36, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %109, i8 1) nounwind
  br label %cont364

cont364:                                          ; preds = %ioc_bb363, %cont361
  %call365 = call i8* @hcalloc(i32 %105) nounwind
  %call366 = call i8* @strcpy(i8* %call365, i8* %94) nounwind
  %add.ptr367 = getelementptr inbounds i8* %call365, i32 %sub.ptr.sub348
  %call368 = call i8* @strcpy(i8* %add.ptr367, i8* %call332) nounwind
  store i8* %call365, i8** %dat139, align 4, !tbaa !3
  call void @insertlinklist(%union.linkroot* %call320, %struct.linknode* %node.addr.0.ph527550, %union.linkroot* %list) nounwind
  %dat370 = getelementptr inbounds %struct.linknode* %98, i32 0, i32 2
  %110 = load i8** %dat370, align 4, !tbaa !3
  %call371 = call i32 @strlen(i8* %110) nounwind readonly
  %111 = icmp sgt i32 %call371, -1
  br i1 %111, label %if.end375, label %ioc_bb373

ioc_bb373:                                        ; preds = %cont364
  %112 = zext i32 %call371 to i64
  call void @__ioc_report_conversion(i32 331, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %112, i8 0) nounwind
  br label %if.end375

if.end375:                                        ; preds = %cont364, %ioc_bb373, %cont352
  %node.addr.1 = phi %struct.linknode* [ %node.addr.0.ph527550, %cont352 ], [ %98, %ioc_bb373 ], [ %98, %cont364 ]
  %s.0 = phi i8* [ %call332, %cont352 ], [ %110, %ioc_bb373 ], [ %110, %cont364 ]
  %l1.0 = phi i32 [ %sub.ptr.sub348, %cont352 ], [ 0, %ioc_bb373 ], [ 0, %cont364 ]
  %l2.0 = phi i32 [ %call349, %cont352 ], [ %call371, %ioc_bb373 ], [ %call371, %cont364 ]
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l1.0, i32 %l2.0)
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb376, label %cont377

ioc_bb376:                                        ; preds = %if.end375
  %116 = sext i32 %l2.0 to i64
  %117 = sext i32 %l1.0 to i64
  call void @__ioc_report_add_overflow(i32 333, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %117, i64 %116, i8 13) nounwind
  br label %cont377

cont377:                                          ; preds = %if.end375, %ioc_bb376
  %118 = icmp sgt i32 %114, -1
  br i1 %118, label %cont380, label %ioc_bb379

ioc_bb379:                                        ; preds = %cont377
  %119 = sext i32 %114 to i64
  call void @__ioc_report_conversion(i32 333, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %119, i8 1) nounwind
  br label %cont380

cont380:                                          ; preds = %ioc_bb379, %cont377
  %120 = load i8** %str, align 4, !tbaa !3
  %call381 = call i32 @strlen(i8* %120) nounwind readonly
  %121 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %114, i32 %call381)
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb382, label %cont385

ioc_bb382:                                        ; preds = %cont380
  %124 = zext i32 %call381 to i64
  %125 = zext i32 %114 to i64
  call void @__ioc_report_add_overflow(i32 333, i32 44, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %125, i64 %124, i8 5) nounwind
  br label %cont385

cont385:                                          ; preds = %ioc_bb382, %cont380
  %126 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 1)
  %127 = extractvalue { i32, i1 } %126, 0
  %128 = extractvalue { i32, i1 } %126, 1
  br i1 %128, label %ioc_bb386, label %cont387

ioc_bb386:                                        ; preds = %cont385
  %129 = zext i32 %122 to i64
  call void @__ioc_report_add_overflow(i32 333, i32 58, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %129, i64 1, i8 5) nounwind
  br label %cont387

cont387:                                          ; preds = %cont385, %ioc_bb386
  %call388 = call i8* @hcalloc(i32 %127) nounwind
  %tobool389 = icmp eq i32 %l1.0, 0
  br i1 %tobool389, label %if.end392, label %if.then390

if.then390:                                       ; preds = %cont387
  %130 = load i8** %str3, align 4, !tbaa !3
  %call391 = call i8* @strcpy(i8* %call388, i8* %130) nounwind
  br label %if.end392

if.end392:                                        ; preds = %cont387, %if.then390
  %add.ptr393 = getelementptr inbounds i8* %call388, i32 %l1.0
  %call394 = call i8* @strcpy(i8* %add.ptr393, i8* %s.0) nounwind
  %add.ptr396 = getelementptr inbounds i8* %call388, i32 %114
  %131 = load i8** %str, align 4, !tbaa !3
  %call397 = call i8* @strcpy(i8* %add.ptr396, i8* %131) nounwind
  store i8* %call397, i8** %str, align 4, !tbaa !3
  store i8* %call388, i8** %str3, align 4, !tbaa !3
  %dat398 = getelementptr inbounds %struct.linknode* %node.addr.1, i32 0, i32 2
  store i8* %call388, i8** %dat398, align 4, !tbaa !3
  %132 = load i32* @errflag, align 4, !tbaa !2
  %tobool86539 = icmp eq i32 %132, 0
  br i1 %tobool86539, label %land.rhs87.lr.ph, label %while.end420

if.else399:                                       ; preds = %ioc_bb176
  br i1 %tobool400, label %while.cond85.outer.backedge, label %land.lhs.true401

land.lhs.true401:                                 ; preds = %if.else399
  %cmp403 = icmp eq i8 %40, 61
  br i1 %cmp403, label %land.lhs.true411, label %ioc_bb407

ioc_bb407:                                        ; preds = %land.lhs.true401
  call void @__ioc_report_conversion(i32 353, i32 41, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp409 = icmp eq i8 %40, -117
  br i1 %cmp409, label %land.lhs.true411, label %while.cond85.outer.backedge

land.lhs.true411:                                 ; preds = %ioc_bb407, %land.lhs.true401
  %133 = load i8** %str, align 4, !tbaa !3
  %134 = load i8** %str3, align 4, !tbaa !3
  %cmp412 = icmp eq i8* %133, %134
  %or415 = or i32 %pf_flags.addr.0.ph559, 4
  %pf_flags.addr.0.or415 = select i1 %cmp412, i32 %pf_flags.addr.0.ph559, i32 %or415
  br label %while.cond85.outer.backedge

while.end420:                                     ; preds = %if.end392, %while.cond85.outer.backedge, %while.end.thread, %while.cond85.backedge, %land.rhs87
  %135 = phi i32 [ 0, %land.rhs87 ], [ %50, %while.cond85.backedge ], [ %132, %if.end392 ], [ %.ph, %while.end.thread ], [ %.pre584, %while.cond85.outer.backedge ]
  %node.addr.0.ph527548 = phi %struct.linknode* [ %node.addr.0.ph527550, %land.rhs87 ], [ %node.addr.0.ph527550, %while.cond85.backedge ], [ %node.addr.1, %if.end392 ], [ %node, %while.end.thread ], [ %node.addr.0.ph527550, %while.cond85.outer.backedge ]
  %tobool421 = icmp ne i32 %135, 0
  %cond = select i1 %tobool421, %struct.linknode* null, %struct.linknode* %node.addr.0.ph527548
  br label %return

return:                                           ; preds = %if.end, %if.end159, %while.end420, %if.then322, %if.then130
  %retval.0 = phi %struct.linknode* [ %cond, %while.end420 ], [ null, %if.then322 ], [ null, %if.then130 ], [ null, %if.end159 ], [ null, %if.end ]
  ret %struct.linknode* %retval.0
}

declare void @__ioc_report_rem_error(i32, i32, i8*, i8*, i64, i64, i8)

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @zhandler(i32)

declare void @remnulargs(i8*)

declare i32 @hasbraces(i8*)

declare void @xpandbraces(%union.linkroot*, %struct.linknode**)

declare i8* @uremnode(%union.linkroot*, %struct.linknode*)

define i8* @quotesubst(i8* %str) nounwind {
entry:
  %s = alloca i8*, align 4
  store i8* %str, i8** %s, align 4, !tbaa !3
  %0 = load i8* %str, align 1, !tbaa !0
  %tobool1013 = icmp eq i8 %0, 0
  br i1 %tobool1013, label %while.end, label %ioc_bb.lr.ph

ioc_bb.lr.ph:                                     ; preds = %entry, %if.then
  %1 = phi i8* [ %6, %if.then ], [ %str, %entry ]
  %2 = phi i8 [ %7, %if.then ], [ %0, %entry ]
  %str.addr.0.ph14 = phi i8* [ %call, %if.then ], [ %str, %entry ]
  br label %ioc_bb

ioc_bb:                                           ; preds = %ioc_bb.lr.ph, %if.else
  %3 = phi i8* [ %1, %ioc_bb.lr.ph ], [ %arrayidx, %if.else ]
  %4 = phi i8 [ %2, %ioc_bb.lr.ph ], [ %8, %if.else ]
  call void @__ioc_report_conversion(i32 385, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp = icmp eq i8 %4, -123
  %arrayidx = getelementptr inbounds i8* %3, i32 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %ioc_bb
  %5 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 385, i32 51, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 153, i8 1) nounwind
  %cmp5 = icmp eq i8 %5, -103
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i8* @stringsubstquote(i8* %str.addr.0.ph14, i8** %s)
  %6 = load i8** %s, align 4, !tbaa !3
  %7 = load i8* %6, align 1, !tbaa !0
  %tobool10 = icmp eq i8 %7, 0
  br i1 %tobool10, label %while.end, label %ioc_bb.lr.ph

if.else:                                          ; preds = %ioc_bb, %land.lhs.true
  store i8* %arrayidx, i8** %s, align 4, !tbaa !3
  %8 = load i8* %arrayidx, align 1, !tbaa !0
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %while.end, label %ioc_bb

while.end:                                        ; preds = %entry, %if.then, %if.else
  %str.addr.0.ph12 = phi i8* [ %str.addr.0.ph14, %if.else ], [ %str, %entry ], [ %call, %if.then ]
  call void @remnulargs(i8* %str.addr.0.ph12) nounwind
  ret i8* %str.addr.0.ph12
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define internal fastcc i8* @stringsubstquote(i8* %strstart, i8** nocapture %pstrdpos) nounwind {
entry:
  %len = alloca i32, align 4
  %0 = load i8** %pstrdpos, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %0, i32 2
  %call = call i8* @getkeystring(i8* %add.ptr, i32* %len, i32 19, i32* null) nounwind
  %1 = load i32* %len, align 4, !tbaa !2
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 2)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %entry
  %5 = sext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 161, i32 7, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %5, i64 2, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %entry, %ioc_bb11
  store i32 %3, i32* %len, align 4, !tbaa !2
  %cmp = icmp eq i8* %0, %strstart
  br i1 %cmp, label %if.else19, label %cont14

cont14:                                           ; preds = %cont12
  store i8 0, i8* %0, align 1, !tbaa !0
  %6 = load i32* %len, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds i8* %0, i32 %6
  %7 = load i8* %arrayidx, align 1, !tbaa !0
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %if.else, label %if.then15

if.then15:                                        ; preds = %cont14
  %call17 = call i8* @zhtricat(i8* %strstart, i8* %call, i8* %arrayidx) nounwind
  br label %if.end27

if.else:                                          ; preds = %cont14
  %call18 = call i8* @dyncat(i8* %strstart, i8* %call) nounwind
  br label %if.end27

if.else19:                                        ; preds = %cont12
  %arrayidx20 = getelementptr inbounds i8* %strstart, i32 %3
  %8 = load i8* %arrayidx20, align 1, !tbaa !0
  %tobool21 = icmp eq i8 %8, 0
  br i1 %tobool21, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.else19
  %call24 = call i8* @dyncat(i8* %call, i8* %arrayidx20) nounwind
  br label %if.end27

if.end27:                                         ; preds = %if.else19, %if.then22, %if.then15, %if.else
  %strret.0 = phi i8* [ %call17, %if.then15 ], [ %call18, %if.else ], [ %call24, %if.then22 ], [ %call, %if.else19 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %strstart to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call29 = call i32 @strlen(i8* %call) nounwind readonly
  %add.ptr28.sum = add i32 %sub.ptr.sub, %call29
  %add.ptr30 = getelementptr inbounds i8* %strret.0, i32 %add.ptr28.sum
  store i8* %add.ptr30, i8** %pstrdpos, align 4, !tbaa !3
  ret i8* %strret.0
}

define void @globlist(%union.linkroot* %list, i32 %nountok) nounwind {
entry:
  store i32 0, i32* @badcshglob, align 4, !tbaa !2
  %first = getelementptr inbounds %union.linkroot* %list, i32 0, i32 0, i32 0
  %0 = load %struct.linknode** %first, align 4, !tbaa !3
  %1 = load i32* @errflag, align 4, !tbaa !2
  %tobool7 = icmp ne i32 %1, 0
  %tobool28 = icmp eq %struct.linknode* %0, null
  %or.cond9 = or i1 %tobool7, %tobool28
  br i1 %or.cond9, label %if.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %node.010 = phi %struct.linknode* [ %2, %for.body ], [ %0, %entry ]
  %next3 = getelementptr inbounds %struct.linknode* %node.010, i32 0, i32 0
  %2 = load %struct.linknode** %next3, align 4, !tbaa !3
  tail call void @zglob(%union.linkroot* %list, %struct.linknode* %node.010, i32 %nountok) nounwind
  %3 = load i32* @errflag, align 4, !tbaa !2
  %tobool = icmp ne i32 %3, 0
  %tobool2 = icmp eq %struct.linknode* %2, null
  %or.cond = or i1 %tobool, %tobool2
  br i1 %or.cond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %.pre = load i32* @badcshglob, align 4, !tbaa !2
  %phitmp = icmp eq i32 %.pre, 1
  br i1 %phitmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %for.end
  ret void
}

declare void @zglob(%union.linkroot*, %struct.linknode*, i32)

declare void @zerr(i8*, ...)

define void @singsub(i8** nocapture %s) nounwind {
entry:
  %foo = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %first = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4, !tbaa !3
  %last = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4, !tbaa !3
  %flags = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 2
  store i32 0, i32* %flags, align 4, !tbaa !2
  %next = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4, !tbaa !3
  %node = bitcast %union.linkroot* %foo to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4, !tbaa !3
  %0 = load i8** %s, align 4, !tbaa !3
  %dat = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 2
  store i8* %0, i8** %dat, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %foo, i32 4)
  %1 = load i32* @errflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call i8* @ugetnode(%union.linkroot* %foo) nounwind
  store i8* %call, i8** %s, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare i8* @ugetnode(%union.linkroot*)

define i32 @filesubstr(i8** nocapture %namptr, i32 %assign) nounwind {
entry:
  %ptr = alloca i8*, align 4
  %0 = load i8** %namptr, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 654, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp = icmp eq i8 %1, -106
  br i1 %cmp, label %land.lhs.true, label %if.else248

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %0, i32 1
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp3 = icmp eq i8 %2, 61
  br i1 %cmp3, label %if.else248, label %ioc_bb8

ioc_bb8:                                          ; preds = %land.lhs.true
  call void @__ioc_report_conversion(i32 654, i32 70, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp10 = icmp eq i8 %2, -117
  br i1 %cmp10, label %if.else248, label %if.then

if.then:                                          ; preds = %ioc_bb8
  %call = call i64 @zstrtol(i8* %arrayidx, i8** %ptr, i32 10) nounwind
  %call.off = add i64 %call, 2147483648
  %3 = icmp ult i64 %call.off, 4294967296
  br i1 %3, label %cont16, label %ioc_bb15

ioc_bb15:                                         ; preds = %if.then
  call void @__ioc_report_conversion(i32 660, i32 11, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb15, %if.then
  %conv17 = trunc i64 %call to i32
  %4 = load i8* %arrayidx, align 1, !tbaa !0
  switch i8 %4, label %ioc_bb26 [
    i8 0, label %if.then37
    i8 47, label %if.then37
  ]

ioc_bb26:                                         ; preds = %cont16
  call void @__ioc_report_conversion(i32 662, i32 55, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp28 = icmp eq i8 %4, -120
  br i1 %cmp28, label %if.then37, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %ioc_bb26
  %tobool31 = icmp ne i32 %assign, 0
  %5 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp35 = icmp eq i8 %5, 58
  %or.cond340 = and i1 %tobool31, %cmp35
  br i1 %or.cond340, label %if.then37, label %if.else

if.then37:                                        ; preds = %lor.lhs.false30, %cont16, %cont16, %ioc_bb26
  %6 = load i8** @home, align 4, !tbaa !3
  %tobool38 = icmp ne i8* %6, null
  %cond = select i1 %tobool38, i8* %6, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)
  %call40 = call i8* @dyncat(i8* %cond, i8* %arrayidx) nounwind
  store i8* %call40, i8** %namptr, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %lor.lhs.false30
  %cmp43 = icmp eq i8 %5, 43
  br i1 %cmp43, label %land.lhs.true45, label %if.else70

land.lhs.true45:                                  ; preds = %if.else
  %arrayidx46 = getelementptr inbounds i8* %0, i32 2
  %7 = load i8* %arrayidx46, align 1, !tbaa !0
  switch i8 %7, label %ioc_bb56 [
    i8 0, label %if.then67
    i8 47, label %if.then67
  ]

ioc_bb56:                                         ; preds = %land.lhs.true45
  call void @__ioc_report_conversion(i32 667, i32 78, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp58 = icmp eq i8 %7, -120
  br i1 %cmp58, label %if.then67, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %ioc_bb56
  br i1 %tobool31, label %land.lhs.true62, label %if.else70

land.lhs.true62:                                  ; preds = %lor.lhs.false60
  %8 = load i8* %arrayidx46, align 1, !tbaa !0
  %cmp65 = icmp eq i8 %8, 58
  br i1 %cmp65, label %if.then67, label %if.else70

if.then67:                                        ; preds = %land.lhs.true45, %land.lhs.true45, %land.lhs.true62, %ioc_bb56
  %9 = load i8** @pwd, align 4, !tbaa !3
  %call69 = call i8* @dyncat(i8* %9, i8* %arrayidx46) nounwind
  store i8* %call69, i8** %namptr, align 4, !tbaa !3
  br label %return

if.else70:                                        ; preds = %land.lhs.true62, %lor.lhs.false60, %if.else
  %10 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp73 = icmp eq i8 %10, 45
  br i1 %cmp73, label %land.lhs.true75, label %if.else105

land.lhs.true75:                                  ; preds = %if.else70
  %arrayidx76 = getelementptr inbounds i8* %0, i32 2
  %11 = load i8* %arrayidx76, align 1, !tbaa !0
  switch i8 %11, label %ioc_bb86 [
    i8 0, label %if.then97
    i8 47, label %if.then97
  ]

ioc_bb86:                                         ; preds = %land.lhs.true75
  call void @__ioc_report_conversion(i32 672, i32 78, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp88 = icmp eq i8 %11, -120
  br i1 %cmp88, label %if.then97, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %ioc_bb86
  br i1 %tobool31, label %land.lhs.true92, label %if.else105thread-pre-split

land.lhs.true92:                                  ; preds = %lor.lhs.false90
  %12 = load i8* %arrayidx76, align 1, !tbaa !0
  %cmp95 = icmp eq i8 %12, 58
  br i1 %cmp95, label %if.then97, label %if.else105thread-pre-split

if.then97:                                        ; preds = %land.lhs.true75, %land.lhs.true75, %land.lhs.true92, %ioc_bb86
  %13 = load i8** @oldpwd, align 4, !tbaa !3
  %tobool98 = icmp ne i8* %13, null
  %14 = load i8** @pwd, align 4, !tbaa !3
  %cond102 = select i1 %tobool98, i8* %13, i8* %14
  %call104 = call i8* @dyncat(i8* %cond102, i8* %arrayidx76) nounwind
  store i8* %call104, i8** %namptr, align 4, !tbaa !3
  br label %return

if.else105thread-pre-split:                       ; preds = %lor.lhs.false90, %land.lhs.true92
  %.pr337 = load i8* %arrayidx, align 1, !tbaa !0
  br label %if.else105

if.else105:                                       ; preds = %if.else105thread-pre-split, %if.else70
  %15 = phi i8 [ %.pr337, %if.else105thread-pre-split ], [ %10, %if.else70 ]
  call void @__ioc_report_conversion(i32 676, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp110 = icmp eq i8 %15, -113
  br i1 %cmp110, label %land.lhs.true112, label %if.else136

land.lhs.true112:                                 ; preds = %if.else105
  %add.ptr113 = getelementptr inbounds i8* %0, i32 2
  call void @__ioc_report_conversion(i32 676, i32 49, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  %call116 = call i8* @strchr(i8* %add.ptr113, i32 -112) nounwind
  %tobool117 = icmp eq i8* %call116, null
  br i1 %tobool117, label %if.else136, label %if.then118

if.then118:                                       ; preds = %land.lhs.true112
  %sub.ptr.lhs.cast = ptrtoint i8* %call116 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr113 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call122 = call i8* @dupstrpfx(i8* %add.ptr113, i32 %sub.ptr.sub) nounwind
  call void @untokenize(i8* %call122) nounwind
  call void @remnulargs(i8* %call122) nounwind
  %call123 = call i8** @subst_string_by_hook(i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* %call122) nounwind
  %tobool124 = icmp eq i8** %call123, null
  br i1 %tobool124, label %if.end, label %cond.end127

cond.end127:                                      ; preds = %if.then118
  %16 = load i8** %call123, align 4, !tbaa !3
  %tobool129 = icmp eq i8* %16, null
  br i1 %tobool129, label %if.end, label %if.then130

if.then130:                                       ; preds = %cond.end127
  %add.ptr131 = getelementptr inbounds i8* %call116, i32 1
  %call132 = call i8* @dyncat(i8* %16, i8* %add.ptr131) nounwind
  store i8* %call132, i8** %namptr, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %if.then118, %cond.end127
  %17 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 112), align 1, !tbaa !0
  %tobool133 = icmp eq i8 %17, 0
  br i1 %tobool133, label %return, label %if.then134

if.then134:                                       ; preds = %if.end
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([30 x i8]* @.str5, i32 0, i32 0), i8* %call122) nounwind
  br label %return

if.else136:                                       ; preds = %land.lhs.true112, %if.else105
  %18 = load i8* %arrayidx, align 1, !tbaa !0
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %cont140, label %ioc_bb139

ioc_bb139:                                        ; preds = %if.else136
  %20 = sext i8 %18 to i64
  call void @__ioc_report_conversion(i32 690, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont140

cont140:                                          ; preds = %ioc_bb139, %if.else136
  %idxprom = zext i8 %18 to i32
  %arrayidx141 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %21 = load i16* %arrayidx141, align 2, !tbaa !4
  %and = and i16 %21, 8
  %tobool147 = icmp eq i16 %and, 0
  br i1 %tobool147, label %land.lhs.true148, label %cont205

land.lhs.true148:                                 ; preds = %cont140
  %22 = load i8** %ptr, align 4, !tbaa !3
  %23 = load i8* %22, align 1, !tbaa !0
  switch i8 %23, label %ioc_bb156 [
    i8 0, label %land.lhs.true166
    i8 47, label %land.lhs.true166
  ]

ioc_bb156:                                        ; preds = %land.lhs.true148
  call void @__ioc_report_conversion(i32 690, i32 110, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp158 = icmp eq i8 %23, -120
  br i1 %cmp158, label %land.lhs.true166, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %ioc_bb156
  br i1 %tobool31, label %land.lhs.true162, label %cont205

land.lhs.true162:                                 ; preds = %lor.lhs.false160
  %24 = load i8** %ptr, align 4, !tbaa !3
  %25 = load i8* %24, align 1, !tbaa !0
  %cmp164 = icmp eq i8 %25, 58
  br i1 %cmp164, label %land.lhs.true166, label %cont205

land.lhs.true166:                                 ; preds = %land.lhs.true162, %ioc_bb156, %land.lhs.true148, %land.lhs.true148
  %26 = load i8* %arrayidx, align 1, !tbaa !0
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %cont170, label %ioc_bb169

ioc_bb169:                                        ; preds = %land.lhs.true166
  %28 = sext i8 %26 to i64
  call void @__ioc_report_conversion(i32 690, i32 174, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont170

cont170:                                          ; preds = %ioc_bb169, %land.lhs.true166
  %idxprom171 = zext i8 %26 to i32
  %arrayidx172 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom171
  %29 = load i16* %arrayidx172, align 2, !tbaa !4
  %and178 = and i16 %29, 1
  %tobool179 = icmp eq i16 %and178, 0
  br i1 %tobool179, label %if.then186, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %cont170
  %30 = load i8** %ptr, align 4, !tbaa !3
  %sub.ptr.lhs.cast181 = ptrtoint i8* %30 to i32
  %sub.ptr.rhs.cast182 = ptrtoint i8* %0 to i32
  %sub.ptr.sub183 = sub i32 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %cmp184 = icmp slt i32 %sub.ptr.sub183, 4
  br i1 %cmp184, label %if.then186, label %cont205

if.then186:                                       ; preds = %cont170, %lor.lhs.false180
  %cmp188 = icmp slt i32 %conv17, 0
  br i1 %cmp188, label %if.then190, label %if.end193

if.then190:                                       ; preds = %if.then186
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %conv17)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb191, label %if.end193

ioc_bb191:                                        ; preds = %if.then190
  %34 = sext i32 %conv17 to i64
  call void @__ioc_report_sub_overflow(i32 693, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %34, i8 13) nounwind
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.then186, %ioc_bb191
  %val.0 = phi i32 [ %32, %ioc_bb191 ], [ %conv17, %if.then186 ], [ %32, %if.then190 ]
  %35 = load i8* %arrayidx, align 1, !tbaa !0
  %36 = load %union.linkroot** @dirstack, align 4, !tbaa !3
  %37 = bitcast %union.linkroot* %36 to %struct.linknode*
  %conv.i = sext i8 %35 to i32
  %38 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 136), align 1, !tbaa !0
  %tobool.i = icmp ne i8 %38, 0
  %cond.i = select i1 %tobool.i, i32 43, i32 45
  %cmp.i = icmp eq i32 %conv.i, %cond.i
  br i1 %cmp.i, label %if.then6.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end193
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val.0, i32 -1) nounwind
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %land.lhs.true.i
  %42 = sext i32 %val.0 to i64
  call void @__ioc_report_add_overflow(i32 4339, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %42, i64 -1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %ioc_bb.i, %land.lhs.true.i
  %tobool4.i = icmp eq i32 %val.0, 0
  br i1 %tobool4.i, label %dstackent.exit, label %if.else.i

if.then6.i:                                       ; preds = %if.end193
  %last.i = getelementptr inbounds %union.linkroot* %36, i32 0, i32 0, i32 1
  %n.052.i = load %struct.linknode** %last.i, align 4
  %cmp753.i = icmp eq %struct.linknode* %n.052.i, %37
  %tobool954.i = icmp eq i32 %val.0, 0
  %or.cond55.i = or i1 %cmp753.i, %tobool954.i
  br i1 %or.cond55.i, label %if.end23.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %cont11.i
  %n.057.i = phi %struct.linknode* [ %n.0.i, %cont11.i ], [ %n.052.i, %if.then6.i ]
  %val.addr.156.i = phi i32 [ %44, %cont11.i ], [ %val.0, %if.then6.i ]
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val.addr.156.i, i32 -1) nounwind
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb10.i, label %cont11.i

ioc_bb10.i:                                       ; preds = %for.inc.i
  %46 = sext i32 %val.addr.156.i to i64
  call void @__ioc_report_add_overflow(i32 4342, i32 58, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %46, i64 -1, i8 13) nounwind
  br label %cont11.i

cont11.i:                                         ; preds = %ioc_bb10.i, %for.inc.i
  %prev.i = getelementptr inbounds %struct.linknode* %n.057.i, i32 0, i32 1
  %n.0.i = load %struct.linknode** %prev.i, align 4
  %cmp7.i = icmp eq %struct.linknode* %n.0.i, %37
  %tobool9.i = icmp eq i32 %44, 0
  %or.cond.i = or i1 %cmp7.i, %tobool9.i
  br i1 %or.cond.i, label %if.end23.i, label %for.inc.i

if.else.i:                                        ; preds = %cont.i
  %47 = load %union.linkroot** @dirstack, align 4, !tbaa !3
  %first.i = getelementptr inbounds %union.linkroot* %47, i32 0, i32 0, i32 0
  %n.160.i = load %struct.linknode** %first.i, align 4
  %tobool1461.i = icmp eq %struct.linknode* %n.160.i, null
  %tobool1662.i = icmp eq i32 %40, 0
  %or.cond4963.i = or i1 %tobool1461.i, %tobool1662.i
  br i1 %or.cond4963.i, label %if.end23.i, label %for.inc19.i

for.inc19.i:                                      ; preds = %if.else.i, %cont21.i
  %n.165.i = phi %struct.linknode* [ %n.1.i, %cont21.i ], [ %n.160.i, %if.else.i ]
  %val.addr.264.i = phi i32 [ %49, %cont21.i ], [ %40, %if.else.i ]
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %val.addr.264.i, i32 -1) nounwind
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb20.i, label %cont21.i

ioc_bb20.i:                                       ; preds = %for.inc19.i
  %51 = sext i32 %val.addr.264.i to i64
  call void @__ioc_report_add_overflow(i32 4345, i32 74, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %51, i64 -1, i8 13) nounwind
  br label %cont21.i

cont21.i:                                         ; preds = %ioc_bb20.i, %for.inc19.i
  %next.i = getelementptr inbounds %struct.linknode* %n.165.i, i32 0, i32 0
  %n.1.i = load %struct.linknode** %next.i, align 4
  %tobool14.i = icmp eq %struct.linknode* %n.1.i, null
  %tobool16.i = icmp eq i32 %49, 0
  %or.cond49.i = or i1 %tobool14.i, %tobool16.i
  br i1 %or.cond49.i, label %if.end23.i, label %for.inc19.i

if.end23.i:                                       ; preds = %cont21.i, %cont11.i, %if.else.i, %if.then6.i
  %val.addr.3.i = phi i32 [ %val.0, %if.then6.i ], [ %40, %if.else.i ], [ %44, %cont11.i ], [ %49, %cont21.i ]
  %end.0.i = phi %struct.linknode* [ %37, %if.then6.i ], [ null, %if.else.i ], [ %37, %cont11.i ], [ null, %cont21.i ]
  %n.2.i = phi %struct.linknode* [ %n.052.i, %if.then6.i ], [ %n.160.i, %if.else.i ], [ %n.0.i, %cont11.i ], [ %n.1.i, %cont21.i ]
  %cmp24.i = icmp eq %struct.linknode* %n.2.i, %end.0.i
  br i1 %cmp24.i, label %if.then26.i, label %if.end35.i

if.then26.i:                                      ; preds = %if.end23.i
  %tobool29.i = icmp eq i32 %val.addr.3.i, 0
  %or.cond50.i = and i1 %cmp.i, %tobool29.i
  br i1 %or.cond50.i, label %dstackent.exit, label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i
  %52 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 112), align 1, !tbaa !0
  %tobool32.i = icmp eq i8 %52, 0
  br i1 %tobool32.i, label %return, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([36 x i8]* @.str9, i32 0, i32 0)) nounwind
  br label %return

if.end35.i:                                       ; preds = %if.end23.i
  %dat.i = getelementptr inbounds %struct.linknode* %n.2.i, i32 0, i32 2
  br label %dstackent.exit

dstackent.exit:                                   ; preds = %if.then26.i, %cont.i, %if.end35.i
  %retval.0.i.in = phi i8** [ %dat.i, %if.end35.i ], [ @pwd, %cont.i ], [ @pwd, %if.then26.i ]
  %retval.0.i = load i8** %retval.0.i.in, align 4
  %tobool196 = icmp eq i8* %retval.0.i, null
  br i1 %tobool196, label %return, label %if.end198

if.end198:                                        ; preds = %dstackent.exit
  %53 = load i8** %ptr, align 4, !tbaa !3
  %call199 = call i8* @dyncat(i8* %retval.0.i, i8* %53) nounwind
  store i8* %call199, i8** %namptr, align 4, !tbaa !3
  br label %return

cont205:                                          ; preds = %cont140, %lor.lhs.false180, %land.lhs.true162, %lor.lhs.false160
  %call206 = call i8* @itype_end(i8* %arrayidx, i32 256, i32 0) nounwind
  store i8* %call206, i8** %ptr, align 4, !tbaa !3
  %cmp208 = icmp eq i8* %call206, %arrayidx
  br i1 %cmp208, label %return, label %if.then210

if.then210:                                       ; preds = %cont205
  %54 = load i8* %call206, align 1, !tbaa !0
  switch i8 %54, label %ioc_bb220 [
    i8 0, label %cont233
    i8 47, label %cont233
  ]

ioc_bb220:                                        ; preds = %if.then210
  call void @__ioc_report_conversion(i32 705, i32 53, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp222 = icmp eq i8 %54, -120
  %cmp228 = icmp eq i8 %54, 58
  %or.cond = and i1 %tobool31, %cmp228
  %or.cond336 = or i1 %cmp222, %or.cond
  br i1 %or.cond336, label %ioc_bb220.cont233_crit_edge, label %return

ioc_bb220.cont233_crit_edge:                      ; preds = %ioc_bb220
  %.pre = load i8** %ptr, align 4, !tbaa !3
  br label %cont233

cont233:                                          ; preds = %ioc_bb220.cont233_crit_edge, %if.then210, %if.then210
  %55 = phi i8* [ %.pre, %ioc_bb220.cont233_crit_edge ], [ %call206, %if.then210 ], [ %call206, %if.then210 ]
  store i8 0, i8* %55, align 1, !tbaa !0
  %call234 = call i8* @getnameddir(i8* %arrayidx) nounwind
  %tobool235 = icmp eq i8* %call234, null
  br i1 %tobool235, label %if.then236, label %if.end240

if.then236:                                       ; preds = %cont233
  %56 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 112), align 1, !tbaa !0
  %tobool237 = icmp eq i8 %56, 0
  br i1 %tobool237, label %if.end239, label %if.then238

if.then238:                                       ; preds = %if.then236
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([36 x i8]* @.str6, i32 0, i32 0), i8* %arrayidx) nounwind
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.then238
  %57 = load i8** %ptr, align 4, !tbaa !3
  store i8 %54, i8* %57, align 1, !tbaa !0
  br label %return

if.end240:                                        ; preds = %cont233
  %58 = load i8** %ptr, align 4, !tbaa !3
  store i8 %54, i8* %58, align 1, !tbaa !0
  %59 = load i8** %ptr, align 4, !tbaa !3
  %call241 = call i8* @dyncat(i8* %call234, i8* %59) nounwind
  store i8* %call241, i8** %namptr, align 4, !tbaa !3
  br label %return

if.else248:                                       ; preds = %ioc_bb8, %land.lhs.true, %entry
  %60 = load i8* %0, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 720, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp252 = icmp ne i8 %60, -117
  %61 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 46), align 1, !tbaa !0
  %tobool256 = icmp eq i8 %61, 0
  %or.cond335 = or i1 %cmp252, %tobool256
  br i1 %or.cond335, label %return, label %land.lhs.true257

land.lhs.true257:                                 ; preds = %if.else248
  %arrayidx258 = getelementptr inbounds i8* %0, i32 1
  %62 = load i8* %arrayidx258, align 1, !tbaa !0
  %tobool260 = icmp eq i8 %62, 0
  br i1 %tobool260, label %return, label %if.then261

if.then261:                                       ; preds = %land.lhs.true257
  %63 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 112), align 1, !tbaa !0
  %conv264 = sext i8 %63 to i32
  %call265 = call i8* @equalsubstr(i8* %arrayidx258, i32 %assign, i32 %conv264)
  %tobool266 = icmp eq i8* %call265, null
  br i1 %tobool266, label %return, label %if.then267

if.then267:                                       ; preds = %if.then261
  store i8* %call265, i8** %namptr, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then33.i, %if.end31.i, %ioc_bb220, %land.lhs.true257, %if.then261, %cont205, %if.else248, %dstackent.exit, %if.then134, %if.end, %if.then267, %if.end240, %if.end239, %if.end198, %if.then130, %if.then97, %if.then67, %if.then37
  %retval.0 = phi i32 [ 1, %if.then37 ], [ 1, %if.then67 ], [ 1, %if.then97 ], [ 1, %if.then130 ], [ 1, %if.end240 ], [ 0, %if.end239 ], [ 1, %if.end198 ], [ 1, %if.then267 ], [ 0, %if.end ], [ 0, %if.then134 ], [ 0, %dstackent.exit ], [ 0, %if.else248 ], [ 0, %cont205 ], [ 0, %if.then261 ], [ 0, %land.lhs.true257 ], [ 0, %ioc_bb220 ], [ 0, %if.end31.i ], [ 0, %if.then33.i ]
  ret i32 %retval.0
}

declare i8* @strchr(i8*, i32) nounwind readonly

declare i8* @dyncat(i8*, i8*)

define i8* @equalsubstr(i8* %str, i32 %assign, i32 %nomatch) nounwind {
entry:
  %0 = load i8* %str, align 1, !tbaa !0
  %tobool29 = icmp eq i8 %0, 0
  br i1 %tobool29, label %for.end, label %ioc_bb.lr.ph

ioc_bb.lr.ph:                                     ; preds = %entry
  %tobool2 = icmp eq i32 %assign, 0
  br label %ioc_bb

ioc_bb:                                           ; preds = %ioc_bb.lr.ph, %for.inc
  %1 = phi i8 [ %0, %ioc_bb.lr.ph ], [ %3, %for.inc ]
  %pp.030 = phi i8* [ %str, %ioc_bb.lr.ph ], [ %incdec.ptr, %for.inc ]
  tail call void @__ioc_report_conversion(i32 634, i32 49, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp = icmp eq i8 %1, -120
  br i1 %cmp, label %for.end, label %lor.rhs

lor.rhs:                                          ; preds = %ioc_bb
  br i1 %tobool2, label %for.inc, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %2 = load i8* %pp.030, align 1, !tbaa !0
  %phitmp = icmp eq i8 %2, 58
  br i1 %phitmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs, %lor.rhs
  %incdec.ptr = getelementptr inbounds i8* %pp.030, i32 1
  %3 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %for.end, label %ioc_bb

for.end:                                          ; preds = %for.inc, %land.rhs, %ioc_bb, %entry
  %pp.0.lcssa = phi i8* [ %str, %entry ], [ %pp.030, %ioc_bb ], [ %pp.030, %land.rhs ], [ %incdec.ptr, %for.inc ]
  %sub.ptr.lhs.cast = ptrtoint i8* %pp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i8* @dupstrpfx(i8* %str, i32 %sub.ptr.sub) nounwind
  tail call void @untokenize(i8* %call) nounwind
  tail call void @remnulargs(i8* %call) nounwind
  %call6 = tail call i8* @findcmd(i8* %call, i32 1) nounwind
  %tobool7 = icmp eq i8* %call6, null
  br i1 %tobool7, label %if.then, label %if.end10

if.then:                                          ; preds = %for.end
  %tobool8 = icmp eq i32 %nomatch, 0
  br i1 %tobool8, label %return, label %if.then9

if.then9:                                         ; preds = %if.then
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i8* %call) nounwind
  br label %return

if.end10:                                         ; preds = %for.end
  %call11 = tail call i8* @dupstring(i8* %call6) nounwind
  %4 = load i8* %pp.0.lcssa, align 1, !tbaa !0
  %tobool12 = icmp eq i8 %4, 0
  br i1 %tobool12, label %return, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i8* @dyncat(i8* %call11, i8* %pp.0.lcssa) nounwind
  br label %return

return:                                           ; preds = %if.then13, %if.end10, %if.then9, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then9 ], [ %call14, %if.then13 ], [ %call11, %if.end10 ]
  ret i8* %retval.0
}

declare i8* @dupstrpfx(i8*, i32)

declare void @untokenize(i8*)

declare i8* @findcmd(i8*, i32)

declare i8* @dupstring(i8*)

declare i64 @zstrtol(i8*, i8**, i32)

declare i8** @subst_string_by_hook(i8*, i8*, i8*)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @itype_end(i8*, i32, i32)

declare i8* @getnameddir(i8*)

define i8* @get_strarg(i8* %s, i32* nocapture %lenp) nounwind {
entry:
  %del = alloca i32, align 4
  %del2 = alloca i32, align 4
  call void @mb_metacharinit() nounwind
  %call = call i32 @mb_metacharlenconv(i8* %s, i32* %del) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32* %del, align 4, !tbaa !2
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then1, label %if.end10

if.then1:                                         ; preds = %if.end
  %1 = load i8* %s, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1284, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp4 = icmp eq i8 %1, -125
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1
  %arrayidx = getelementptr inbounds i8* %s, i32 1
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %conv6 = sext i8 %2 to i32
  %xor = xor i32 %conv6, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then1
  %3 = load i8* %s, align 1, !tbaa !0
  %conv7 = sext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv7, %cond.false ]
  %4 = icmp sgt i32 %cond, -1
  br i1 %4, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %cond.end
  %5 = sext i32 %cond to i64
  call void @__ioc_report_conversion(i32 1284, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %cond.end
  store i32 %cond, i32* %del, align 4, !tbaa !2
  br label %if.end10

if.end10:                                         ; preds = %cont9, %if.end
  %6 = phi i32 [ %cond, %cont9 ], [ %0, %if.end ]
  %add.ptr = getelementptr inbounds i8* %s, i32 %call
  switch i32 %6, label %while.cond42.preheader [
    i32 40, label %cont12
    i32 91, label %cont15
    i32 123, label %cont18
    i32 60, label %cont21
    i32 -120, label %ioc_bb23
    i32 -110, label %ioc_bb26
    i32 -115, label %ioc_bb29
    i32 -113, label %ioc_bb32
  ]

cont12:                                           ; preds = %if.end10
  store i32 41, i32* %del, align 4, !tbaa !2
  br label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %if.end10, %cont21, %cont18, %cont15, %cont12
  %7 = load i8* %add.ptr, align 1, !tbaa !0
  %tobool4396 = icmp eq i8 %7, 0
  br i1 %tobool4396, label %return, label %while.body44

cont15:                                           ; preds = %if.end10
  store i32 93, i32* %del, align 4, !tbaa !2
  br label %while.cond42.preheader

cont18:                                           ; preds = %if.end10
  store i32 125, i32* %del, align 4, !tbaa !2
  br label %while.cond42.preheader

cont21:                                           ; preds = %if.end10
  store i32 62, i32* %del, align 4, !tbaa !2
  br label %while.cond42.preheader

ioc_bb23:                                         ; preds = %if.end10
  call void @__ioc_report_conversion(i32 1310, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog.thread93

ioc_bb26:                                         ; preds = %if.end10
  call void @__ioc_report_conversion(i32 1315, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 147, i8 1) nounwind
  br label %sw.epilog.thread93

ioc_bb29:                                         ; preds = %if.end10
  call void @__ioc_report_conversion(i32 1320, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  br label %sw.epilog.thread93

ioc_bb32:                                         ; preds = %if.end10
  call void @__ioc_report_conversion(i32 1325, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %sw.epilog.thread93

sw.epilog.thread93:                               ; preds = %ioc_bb32, %ioc_bb29, %ioc_bb26, %ioc_bb23
  %tok.0.ph = phi i8 [ -112, %ioc_bb32 ], [ -114, %ioc_bb29 ], [ -109, %ioc_bb26 ], [ -119, %ioc_bb23 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %sw.epilog.thread93
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %add.ptr, %sw.epilog.thread93 ]
  %8 = load i8* %s.addr.0, align 1, !tbaa !0
  %tobool37 = icmp eq i8 %8, 0
  %cmp40 = icmp eq i8 %8, %tok.0.ph
  %or.cond = or i1 %tobool37, %cmp40
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  br i1 %or.cond, label %return, label %while.cond

while.body44:                                     ; preds = %while.cond42.preheader, %if.end69
  %s.addr.197 = phi i8* [ %add.ptr70, %if.end69 ], [ %add.ptr, %while.cond42.preheader ]
  %call45 = call i32 @mb_metacharlenconv(i8* %s.addr.197, i32* %del2) nounwind
  %9 = load i32* %del2, align 4, !tbaa !2
  %cmp46 = icmp eq i32 %9, -1
  br i1 %cmp46, label %if.then48, label %if.end65

if.then48:                                        ; preds = %while.body44
  %10 = load i8* %s.addr.197, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1344, i32 45, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp52 = icmp eq i8 %10, -125
  br i1 %cmp52, label %cond.true54, label %cond.false58

cond.true54:                                      ; preds = %if.then48
  %arrayidx55 = getelementptr inbounds i8* %s.addr.197, i32 1
  %11 = load i8* %arrayidx55, align 1, !tbaa !0
  %conv56 = sext i8 %11 to i32
  %xor57 = xor i32 %conv56, 32
  br label %cond.end60

cond.false58:                                     ; preds = %if.then48
  %12 = load i8* %s.addr.197, align 1, !tbaa !0
  %conv59 = sext i8 %12 to i32
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %cond.true54
  %cond61 = phi i32 [ %xor57, %cond.true54 ], [ %conv59, %cond.false58 ]
  %13 = icmp sgt i32 %cond61, -1
  br i1 %13, label %cont64, label %ioc_bb63

ioc_bb63:                                         ; preds = %cond.end60
  %14 = sext i32 %cond61 to i64
  call void @__ioc_report_conversion(i32 1344, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont64

cont64:                                           ; preds = %ioc_bb63, %cond.end60
  store i32 %cond61, i32* %del2, align 4, !tbaa !2
  br label %if.end65

if.end65:                                         ; preds = %cont64, %while.body44
  %15 = phi i32 [ %cond61, %cont64 ], [ %9, %while.body44 ]
  %16 = load i32* %del, align 4, !tbaa !2
  %cmp66 = icmp eq i32 %16, %15
  br i1 %cmp66, label %return, label %if.end69

if.end69:                                         ; preds = %if.end65
  %add.ptr70 = getelementptr inbounds i8* %s.addr.197, i32 %call45
  %17 = load i8* %add.ptr70, align 1, !tbaa !0
  %tobool43 = icmp eq i8 %17, 0
  br i1 %tobool43, label %return, label %while.body44

return:                                           ; preds = %while.cond, %while.cond42.preheader, %if.end65, %if.end69, %entry
  %storemerge = phi i32 [ 0, %entry ], [ 0, %while.cond42.preheader ], [ %call45, %if.end65 ], [ %call45, %if.end69 ], [ %call, %while.cond ]
  %retval.0 = phi i8* [ %s, %entry ], [ %add.ptr, %while.cond42.preheader ], [ %s.addr.197, %if.end65 ], [ %add.ptr70, %if.end69 ], [ %s.addr.0, %while.cond ]
  store i32 %storemerge, i32* %lenp, align 4
  ret i8* %retval.0
}

declare void @mb_metacharinit()

declare i32 @mb_metacharlenconv(i8*, i32*)

define void @modify(i8** %str, i8** %ptr) nounwind {
entry:
  %e = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %charlen = alloca i32, align 4
  %dellen = alloca i32, align 4
  %del = alloca i32, align 4
  %del2 = alloca i32, align 4
  %del3 = alloca i32, align 4
  %0 = load i8** %ptr, align 4, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !0
  %cmp = icmp eq i8 %1, 58
  br i1 %cmp, label %while.cond.preheader, label %while.end441

while.cond.preheader:                             ; preds = %entry
  %2 = load i8** %str, align 4, !tbaa !3
  %call = call i8* @dupstring(i8* %2) nounwind
  store i8* %call, i8** %str, align 4, !tbaa !3
  %.pre = load i8** %ptr, align 4, !tbaa !3
  %.pre678 = load i8* %.pre, align 1, !tbaa !0
  %cmp14664 = icmp eq i8 %.pre678, 58
  br i1 %cmp14664, label %while.body, label %while.end441

while.cond.loopexit:                              ; preds = %cont286
  %3 = load i8** %ptr, align 4, !tbaa !3
  %4 = load i8* %3, align 1, !tbaa !0
  %cmp14 = icmp eq i8 %4, 58
  br i1 %cmp14, label %while.body, label %while.end441

while.body:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %5 = phi i8* [ %3, %while.cond.loopexit ], [ %.pre, %while.cond.preheader ]
  %test.0665 = phi i8* [ %test.1.ph653, %while.cond.loopexit ], [ null, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %sw.bb247, %sw.bb249, %if.end263, %cont269, %sw.bb271, %for.cond.backedge, %while.body
  %6 = phi i8* [ %incdec.ptr, %while.body ], [ %69, %for.cond.backedge ], [ %.pre680, %sw.bb271 ], [ %incdec.ptr270, %cont269 ], [ %add.ptr264, %if.end263 ], [ %incdec.ptr250, %sw.bb249 ], [ %incdec.ptr248, %sw.bb247 ]
  %sep.0632 = phi i8* [ null, %while.body ], [ %sep.0632, %for.cond.backedge ], [ %sep.0632, %sw.bb271 ], [ %sep.0632, %cont269 ], [ %call260, %if.end263 ], [ %sep.0632, %sw.bb249 ], [ %sep.0632, %sw.bb247 ]
  %rec.0631 = phi i32 [ 1, %while.body ], [ %rec.0631, %for.cond.backedge ], [ %call273, %sw.bb271 ], [ -1, %cont269 ], [ %rec.0631, %if.end263 ], [ %rec.0631, %sw.bb249 ], [ %rec.0631, %sw.bb247 ]
  %wall.0630 = phi i32 [ 0, %while.body ], [ %wall.0630, %for.cond.backedge ], [ %wall.0630, %sw.bb271 ], [ %wall.0630, %cont269 ], [ 1, %if.end263 ], [ 1, %sw.bb249 ], [ %wall.0630, %sw.bb247 ]
  %gbal.0629 = phi i32 [ 0, %while.body ], [ %gbal.0629, %for.cond.backedge ], [ %gbal.0629, %sw.bb271 ], [ %gbal.0629, %cont269 ], [ %gbal.0629, %if.end263 ], [ %gbal.0629, %sw.bb249 ], [ 1, %sw.bb247 ]
  %7 = load i8* %6, align 1, !tbaa !0
  %tobool17 = icmp eq i8 %7, 0
  br i1 %tobool17, label %if.then277, label %for.body

for.body:                                         ; preds = %land.end
  %conv18 = sext i8 %7 to i32
  switch i32 %conv18, label %sw.default [
    i32 97, label %for.cond.backedge
    i32 65, label %for.cond.backedge
    i32 99, label %for.cond.backedge
    i32 104, label %for.cond.backedge
    i32 114, label %for.cond.backedge
    i32 101, label %for.cond.backedge
    i32 116, label %for.cond.backedge
    i32 108, label %for.cond.backedge
    i32 117, label %for.cond.backedge
    i32 113, label %for.cond.backedge
    i32 81, label %for.cond.backedge
    i32 115, label %sw.bb29
    i32 38, label %if.end278
    i32 103, label %sw.bb247
    i32 119, label %sw.bb249
    i32 87, label %sw.bb251
    i32 102, label %cont269
    i32 70, label %sw.bb271
  ]

sw.bb29:                                          ; preds = %for.body
  %incdec.ptr30 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr30, i8** %ptr, align 4, !tbaa !3
  call void @mb_metacharinit() nounwind
  %call31 = call i32 @mb_metacharlenconv(i8* %incdec.ptr30, i32* %del) nounwind
  store i32 %call31, i32* %charlen, align 4, !tbaa !2
  %8 = load i32* %del, align 4, !tbaa !2
  %cmp32 = icmp eq i32 %8, -1
  br i1 %cmp32, label %if.then34, label %if.end44

if.then34:                                        ; preds = %sw.bb29
  %9 = load i8* %incdec.ptr30, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4000, i32 51, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp38 = icmp eq i8 %9, -125
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then34
  %arrayidx = getelementptr inbounds i8* %6, i32 2
  %10 = load i8* %arrayidx, align 1, !tbaa !0
  %conv40 = sext i8 %10 to i32
  %xor = xor i32 %conv40, 32
  br label %cond.end

cond.false:                                       ; preds = %if.then34
  %11 = load i8* %incdec.ptr30, align 1, !tbaa !0
  %conv41 = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv41, %cond.false ]
  %12 = icmp sgt i32 %cond, -1
  br i1 %12, label %cont43, label %ioc_bb42

ioc_bb42:                                         ; preds = %cond.end
  %13 = sext i32 %cond to i64
  call void @__ioc_report_conversion(i32 4000, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont43

cont43:                                           ; preds = %ioc_bb42, %cond.end
  store i32 %cond, i32* %del, align 4, !tbaa !2
  br label %if.end44

if.end44:                                         ; preds = %cont43, %sw.bb29
  %incdec.ptr30.sum = add i32 %call31, 1
  %add.ptr = getelementptr inbounds i8* %6, i32 %incdec.ptr30.sum
  store i32 0, i32* %charlen, align 4, !tbaa !2
  %14 = load i8* %add.ptr, align 1, !tbaa !0
  %tobool46582 = icmp eq i8 %14, 0
  br i1 %tobool46582, label %if.then96, label %ioc_bb50

ioc_bb50:                                         ; preds = %if.end44, %for.inc
  %15 = phi i8 [ %28, %for.inc ], [ %14, %if.end44 ]
  %ptr2.0583 = phi i8* [ %add.ptr94, %for.inc ], [ %add.ptr, %if.end44 ]
  call void @__ioc_report_conversion(i32 4005, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp52 = icmp eq i8 %15, -101
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ioc_bb50
  %16 = load i8* %ptr2.0583, align 1, !tbaa !0
  %cmp55 = icmp eq i8 %16, 92
  br i1 %cmp55, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %lor.lhs.false, %ioc_bb50
  %arrayidx57 = getelementptr inbounds i8* %ptr2.0583, i32 1
  %17 = load i8* %arrayidx57, align 1, !tbaa !0
  %tobool59 = icmp eq i8 %17, 0
  br i1 %tobool59, label %if.end68, label %if.then60

if.then60:                                        ; preds = %land.lhs.true
  %18 = load i8* %ptr2.0583, align 1, !tbaa !0
  %cmp62 = icmp eq i8 %18, 92
  br i1 %cmp62, label %ioc_bb65, label %if.end67

ioc_bb65:                                         ; preds = %if.then60
  call void @__ioc_report_conversion(i32 4008, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  store i8 -101, i8* %ptr2.0583, align 1, !tbaa !0
  br label %if.end67

if.end67:                                         ; preds = %ioc_bb65, %if.then60
  store i32 2, i32* %charlen, align 4, !tbaa !2
  br label %for.inc

if.end68:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call69 = call i32 @mb_metacharlenconv(i8* %ptr2.0583, i32* %del2) nounwind
  store i32 %call69, i32* %charlen, align 4, !tbaa !2
  %19 = load i32* %del2, align 4, !tbaa !2
  %cmp70 = icmp eq i32 %19, -1
  br i1 %cmp70, label %if.then72, label %if.end89

if.then72:                                        ; preds = %if.end68
  %20 = load i8* %ptr2.0583, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4015, i32 54, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp76 = icmp eq i8 %20, -125
  br i1 %cmp76, label %cond.true78, label %cond.false82

cond.true78:                                      ; preds = %if.then72
  %arrayidx79 = getelementptr inbounds i8* %ptr2.0583, i32 1
  %21 = load i8* %arrayidx79, align 1, !tbaa !0
  %conv80 = sext i8 %21 to i32
  %xor81 = xor i32 %conv80, 32
  br label %cond.end84

cond.false82:                                     ; preds = %if.then72
  %22 = load i8* %ptr2.0583, align 1, !tbaa !0
  %conv83 = sext i8 %22 to i32
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false82, %cond.true78
  %cond85 = phi i32 [ %xor81, %cond.true78 ], [ %conv83, %cond.false82 ]
  %23 = icmp sgt i32 %cond85, -1
  br i1 %23, label %cont88, label %ioc_bb87

ioc_bb87:                                         ; preds = %cond.end84
  %24 = sext i32 %cond85 to i64
  call void @__ioc_report_conversion(i32 4015, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont88

cont88:                                           ; preds = %ioc_bb87, %cond.end84
  store i32 %cond85, i32* %del2, align 4, !tbaa !2
  br label %if.end89

if.end89:                                         ; preds = %cont88, %if.end68
  %25 = phi i32 [ %cond85, %cont88 ], [ %19, %if.end68 ]
  %26 = load i32* %del, align 4, !tbaa !2
  %cmp90 = icmp eq i32 %25, %26
  br i1 %cmp90, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end89, %if.end67
  %27 = phi i32 [ %call69, %if.end89 ], [ 2, %if.end67 ]
  %add.ptr94 = getelementptr inbounds i8* %ptr2.0583, i32 %27
  %28 = load i8* %add.ptr94, align 1, !tbaa !0
  %tobool46 = icmp eq i8 %28, 0
  br i1 %tobool46, label %if.then96, label %ioc_bb50

for.end:                                          ; preds = %if.end89
  %.pr = load i8* %ptr2.0583, align 1, !tbaa !0
  %tobool95 = icmp eq i8 %.pr, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %for.end, %for.inc, %if.end44
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %while.end441

if.end97:                                         ; preds = %for.end
  %add.ptr98 = getelementptr inbounds i8* %ptr2.0583, i32 %call69
  store i8 0, i8* %ptr2.0583, align 1, !tbaa !0
  store i32 0, i32* %charlen, align 4, !tbaa !2
  %29 = load i8* %add.ptr98, align 1, !tbaa !0
  %tobool102585 = icmp eq i8 %29, 0
  br i1 %tobool102585, label %for.end154, label %ioc_bb106

ioc_bb106:                                        ; preds = %if.end97, %for.inc152
  %30 = phi i8 [ %43, %for.inc152 ], [ %29, %if.end97 ]
  %ptr3.0586 = phi i8* [ %add.ptr153, %for.inc152 ], [ %add.ptr98, %if.end97 ]
  call void @__ioc_report_conversion(i32 4030, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp108 = icmp eq i8 %30, -101
  br i1 %cmp108, label %land.lhs.true114, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %ioc_bb106
  %31 = load i8* %ptr3.0586, align 1, !tbaa !0
  %cmp112 = icmp eq i8 %31, 92
  br i1 %cmp112, label %land.lhs.true114, label %if.end126

land.lhs.true114:                                 ; preds = %lor.lhs.false110, %ioc_bb106
  %arrayidx115 = getelementptr inbounds i8* %ptr3.0586, i32 1
  %32 = load i8* %arrayidx115, align 1, !tbaa !0
  %tobool117 = icmp eq i8 %32, 0
  br i1 %tobool117, label %if.end126, label %if.then118

if.then118:                                       ; preds = %land.lhs.true114
  %33 = load i8* %ptr3.0586, align 1, !tbaa !0
  %cmp120 = icmp eq i8 %33, 92
  br i1 %cmp120, label %ioc_bb123, label %if.end125

ioc_bb123:                                        ; preds = %if.then118
  call void @__ioc_report_conversion(i32 4033, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  store i8 -101, i8* %ptr3.0586, align 1, !tbaa !0
  br label %if.end125

if.end125:                                        ; preds = %ioc_bb123, %if.then118
  store i32 2, i32* %charlen, align 4, !tbaa !2
  br label %for.inc152

if.end126:                                        ; preds = %land.lhs.true114, %lor.lhs.false110
  %call127 = call i32 @mb_metacharlenconv(i8* %ptr3.0586, i32* %del3) nounwind
  store i32 %call127, i32* %charlen, align 4, !tbaa !2
  %34 = load i32* %del3, align 4, !tbaa !2
  %cmp128 = icmp eq i32 %34, -1
  br i1 %cmp128, label %if.then130, label %if.end147

if.then130:                                       ; preds = %if.end126
  %35 = load i8* %ptr3.0586, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4040, i32 54, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp134 = icmp eq i8 %35, -125
  br i1 %cmp134, label %cond.true136, label %cond.false140

cond.true136:                                     ; preds = %if.then130
  %arrayidx137 = getelementptr inbounds i8* %ptr3.0586, i32 1
  %36 = load i8* %arrayidx137, align 1, !tbaa !0
  %conv138 = sext i8 %36 to i32
  %xor139 = xor i32 %conv138, 32
  br label %cond.end142

cond.false140:                                    ; preds = %if.then130
  %37 = load i8* %ptr3.0586, align 1, !tbaa !0
  %conv141 = sext i8 %37 to i32
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false140, %cond.true136
  %cond143 = phi i32 [ %xor139, %cond.true136 ], [ %conv141, %cond.false140 ]
  %38 = icmp sgt i32 %cond143, -1
  br i1 %38, label %cont146, label %ioc_bb145

ioc_bb145:                                        ; preds = %cond.end142
  %39 = sext i32 %cond143 to i64
  call void @__ioc_report_conversion(i32 4040, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont146

cont146:                                          ; preds = %ioc_bb145, %cond.end142
  store i32 %cond143, i32* %del3, align 4, !tbaa !2
  br label %if.end147

if.end147:                                        ; preds = %cont146, %if.end126
  %40 = phi i32 [ %cond143, %cont146 ], [ %34, %if.end126 ]
  %41 = load i32* %del, align 4, !tbaa !2
  %cmp148 = icmp eq i32 %40, %41
  br i1 %cmp148, label %for.end154split, label %for.inc152

for.inc152:                                       ; preds = %if.end147, %if.end125
  %42 = phi i32 [ %call127, %if.end147 ], [ 2, %if.end125 ]
  %add.ptr153 = getelementptr inbounds i8* %ptr3.0586, i32 %42
  %43 = load i8* %add.ptr153, align 1, !tbaa !0
  %tobool102 = icmp eq i8 %43, 0
  br i1 %tobool102, label %for.end154, label %ioc_bb106

for.end154split:                                  ; preds = %if.end147
  %.pre679 = load i8* %ptr3.0586, align 1, !tbaa !0
  br label %for.end154

for.end154:                                       ; preds = %for.inc152, %for.end154split, %if.end97
  %44 = phi i8 [ 0, %if.end97 ], [ %.pre679, %for.end154split ], [ 0, %for.inc152 ]
  %ptr3.0.lcssa = phi i8* [ %add.ptr98, %if.end97 ], [ %ptr3.0586, %for.end154split ], [ %add.ptr153, %for.inc152 ]
  store i8 0, i8* %ptr3.0.lcssa, align 1, !tbaa !0
  %45 = load i8* %add.ptr, align 1, !tbaa !0
  %tobool157 = icmp eq i8 %45, 0
  %.pr579 = load i8** @hsubl, align 4, !tbaa !3
  br i1 %tobool157, label %if.end160, label %if.then158

if.then158:                                       ; preds = %for.end154
  call void @zsfree(i8* %.pr579) nounwind
  %call159 = call i8* @ztrdup(i8* %add.ptr) nounwind
  store i8* %call159, i8** @hsubl, align 4, !tbaa !3
  br label %if.end160

if.end160:                                        ; preds = %for.end154, %if.then158
  %46 = phi i8* [ %call159, %if.then158 ], [ %.pr579, %for.end154 ]
  %tobool161 = icmp eq i8* %46, null
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end160
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([25 x i8]* @.str8, i32 0, i32 0)) nounwind
  br label %while.end441

if.end163:                                        ; preds = %if.end160
  %47 = load i8** @hsubr, align 4, !tbaa !3
  call void @zsfree(i8* %47) nounwind
  %48 = load i8** @hsubl, align 4, !tbaa !3
  %49 = load i8* %48, align 1, !tbaa !0
  %tobool165588 = icmp eq i8 %49, 0
  br i1 %tobool165588, label %for.end188, label %for.body166

for.body166:                                      ; preds = %if.end163, %for.inc186
  %50 = phi i8 [ %55, %for.inc186 ], [ %49, %if.end163 ]
  %tt.0589 = phi i8* [ %incdec.ptr187, %for.inc186 ], [ %48, %if.end163 ]
  %51 = icmp sgt i8 %50, -1
  br i1 %51, label %cont169, label %ioc_bb168

ioc_bb168:                                        ; preds = %for.body166
  %52 = sext i8 %50 to i64
  call void @__ioc_report_conversion(i32 4057, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %52, i8 1) nounwind
  br label %cont169

cont169:                                          ; preds = %ioc_bb168, %for.body166
  %idxprom = zext i8 %50 to i32
  %arrayidx170 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %53 = load i16* %arrayidx170, align 2, !tbaa !4
  %and = and i16 %53, 16384
  %tobool176 = icmp eq i16 %and, 0
  br i1 %tobool176, label %for.inc186, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %cont169
  %54 = load i8* %tt.0589, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4057, i32 79, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 156, i8 1) nounwind
  %cmp181 = icmp eq i8 %54, -100
  br i1 %cmp181, label %for.inc186, label %if.then183

if.then183:                                       ; preds = %land.lhs.true177
  %incdec.ptr184 = getelementptr inbounds i8* %tt.0589, i32 -1
  call void @chuck(i8* %tt.0589) nounwind
  br label %for.inc186

for.inc186:                                       ; preds = %land.lhs.true177, %cont169, %if.then183
  %tt.1 = phi i8* [ %incdec.ptr184, %if.then183 ], [ %tt.0589, %land.lhs.true177 ], [ %tt.0589, %cont169 ]
  %incdec.ptr187 = getelementptr inbounds i8* %tt.1, i32 1
  %55 = load i8* %incdec.ptr187, align 1, !tbaa !0
  %tobool165 = icmp eq i8 %55, 0
  br i1 %tobool165, label %for.end188, label %for.body166

for.end188:                                       ; preds = %for.inc186, %if.end163
  %56 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 80), align 1, !tbaa !0
  %tobool189 = icmp eq i8 %56, 0
  br i1 %tobool189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %for.end188
  %57 = load i8** @hsubl, align 4, !tbaa !3
  call void @untokenize(i8* %57) nounwind
  br label %if.end191

if.end191:                                        ; preds = %for.end188, %if.then190
  %call192 = call i8* @ztrdup(i8* %add.ptr98) nounwind
  store i8* %call192, i8** @hsubr, align 4, !tbaa !3
  %58 = load i8* %call192, align 1, !tbaa !0
  %tobool194590 = icmp eq i8 %58, 0
  br i1 %tobool194590, label %for.end238, label %for.body195

for.body195:                                      ; preds = %if.end191, %for.inc236
  %59 = phi i8 [ %66, %for.inc236 ], [ %58, %if.end191 ]
  %tt.2591 = phi i8* [ %incdec.ptr237, %for.inc236 ], [ %call192, %if.end191 ]
  %60 = icmp sgt i8 %59, -1
  br i1 %60, label %cont198, label %ioc_bb197

ioc_bb197:                                        ; preds = %for.body195
  %61 = sext i8 %59 to i64
  call void @__ioc_report_conversion(i32 4062, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %61, i8 1) nounwind
  br label %cont198

cont198:                                          ; preds = %ioc_bb197, %for.body195
  %idxprom199 = zext i8 %59 to i32
  %arrayidx200 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom199
  %62 = load i16* %arrayidx200, align 2, !tbaa !4
  %and206 = and i16 %62, 16384
  %tobool207 = icmp eq i16 %and206, 0
  br i1 %tobool207, label %for.inc236, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %cont198
  %63 = load i8* %tt.2591, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4062, i32 79, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 156, i8 1) nounwind
  %cmp212 = icmp eq i8 %63, -100
  br i1 %cmp212, label %for.inc236, label %if.then214

if.then214:                                       ; preds = %land.lhs.true208
  %64 = load i8* %tt.2591, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 4063, i32 37, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp218 = icmp eq i8 %64, -101
  br i1 %cmp218, label %land.lhs.true220, label %if.else

land.lhs.true220:                                 ; preds = %if.then214
  %arrayidx221 = getelementptr inbounds i8* %tt.2591, i32 1
  %65 = load i8* %arrayidx221, align 1, !tbaa !0
  switch i8 %65, label %if.else [
    i8 38, label %cont232
    i8 92, label %cont232
  ]

cont232:                                          ; preds = %land.lhs.true220, %land.lhs.true220
  store i8 92, i8* %tt.2591, align 1, !tbaa !0
  br label %for.inc236

if.else:                                          ; preds = %land.lhs.true220, %if.then214
  %incdec.ptr233 = getelementptr inbounds i8* %tt.2591, i32 -1
  call void @chuck(i8* %tt.2591) nounwind
  br label %for.inc236

for.inc236:                                       ; preds = %land.lhs.true208, %cont198, %if.else, %cont232
  %tt.3 = phi i8* [ %tt.2591, %cont232 ], [ %incdec.ptr233, %if.else ], [ %tt.2591, %cont198 ], [ %tt.2591, %land.lhs.true208 ]
  %incdec.ptr237 = getelementptr inbounds i8* %tt.3, i32 1
  %66 = load i8* %incdec.ptr237, align 1, !tbaa !0
  %tobool194 = icmp eq i8 %66, 0
  br i1 %tobool194, label %for.end238, label %for.body195

for.end238:                                       ; preds = %for.inc236, %if.end191
  store i8 %.pr, i8* %ptr2.0583, align 1, !tbaa !0
  store i8 %44, i8* %ptr3.0.lcssa, align 1, !tbaa !0
  %add.ptr239 = getelementptr inbounds i8* %ptr3.0.lcssa, i32 -1
  store i8* %add.ptr239, i8** %ptr, align 4, !tbaa !3
  %67 = load i8* %ptr3.0.lcssa, align 1, !tbaa !0
  %tobool240 = icmp eq i8 %67, 0
  br i1 %tobool240, label %for.cond.backedge, label %if.then241

if.then241:                                       ; preds = %for.end238
  %68 = load i32* %charlen, align 4, !tbaa !2
  %add.ptr239.sum = add i32 %68, -1
  %add.ptr242 = getelementptr inbounds i8* %ptr3.0.lcssa, i32 %add.ptr239.sum
  store i8* %add.ptr242, i8** %ptr, align 4, !tbaa !3
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %if.then241, %for.end238
  %69 = phi i8* [ %add.ptr242, %if.then241 ], [ %add.ptr239, %for.end238 ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ], [ %6, %for.body ]
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %land.end, label %if.end278

sw.bb247:                                         ; preds = %for.body
  %incdec.ptr248 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr248, i8** %ptr, align 4, !tbaa !3
  br label %land.end

sw.bb249:                                         ; preds = %for.body
  %incdec.ptr250 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr250, i8** %ptr, align 4, !tbaa !3
  br label %land.end

sw.bb251:                                         ; preds = %for.body
  %incdec.ptr252 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr252, i8** %ptr, align 4, !tbaa !3
  %call253 = call i8* @get_strarg(i8* %incdec.ptr252, i32* %charlen)
  %70 = load i8* %call253, align 1, !tbaa !0
  %tobool254 = icmp ne i8 %70, 0
  br i1 %tobool254, label %cont257, label %if.end258

cont257:                                          ; preds = %sw.bb251
  store i8 0, i8* %call253, align 1, !tbaa !0
  br label %if.end258

if.end258:                                        ; preds = %cont257, %sw.bb251
  %71 = load i32* %charlen, align 4, !tbaa !2
  %incdec.ptr252.sum = add i32 %71, 1
  %add.ptr259 = getelementptr inbounds i8* %6, i32 %incdec.ptr252.sum
  %call260 = call i8* @dupstring(i8* %add.ptr259) nounwind
  br i1 %tobool254, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end258
  store i8 %70, i8* %call253, align 1, !tbaa !0
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end258
  %add.ptr264 = getelementptr inbounds i8* %call253, i32 %71
  store i8* %add.ptr264, i8** %ptr, align 4, !tbaa !3
  br label %land.end

cont269:                                          ; preds = %for.body
  %incdec.ptr270 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr270, i8** %ptr, align 4, !tbaa !3
  br label %land.end

sw.bb271:                                         ; preds = %for.body
  %incdec.ptr272 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr272, i8** %ptr, align 4, !tbaa !3
  %call273 = call fastcc i32 @get_intarg(i8** %ptr, i32* %dellen)
  %.pre680 = load i8** %ptr, align 4, !tbaa !3
  br label %land.end

sw.default:                                       ; preds = %for.body
  store i8* %5, i8** %ptr, align 4, !tbaa !3
  br label %while.end441

if.then277:                                       ; preds = %land.end
  store i8* %5, i8** %ptr, align 4, !tbaa !3
  br label %while.end441

if.end278:                                        ; preds = %for.body, %for.cond.backedge
  %c.0.be693 = phi i8 [ %7, %for.cond.backedge ], [ 115, %for.body ]
  %72 = phi i8* [ %69, %for.cond.backedge ], [ %6, %for.body ]
  %incdec.ptr275580 = getelementptr inbounds i8* %72, i32 1
  store i8* %incdec.ptr275580, i8** %ptr, align 4, !tbaa !3
  %cmp279 = icmp slt i32 %rec.0631, 0
  br i1 %cmp279, label %if.then281, label %while.cond284.preheader

if.then281:                                       ; preds = %if.end278
  %73 = load i8** %str, align 4, !tbaa !3
  %call282 = call i8* @dupstring(i8* %73) nounwind
  br label %while.cond284.preheader

while.cond284.preheader:                          ; preds = %if.then281, %if.end278
  %test.1.ph = phi i8* [ %test.0665, %if.end278 ], [ %call282, %if.then281 ]
  %tobool289 = icmp eq i32 %wall.0630, 0
  %conv388 = sext i8 %c.0.be693 to i32
  br label %while.cond284.outer

while.cond284.outer:                              ; preds = %while.cond284.preheader, %if.else437
  %rec.1.ph = phi i32 [ %75, %if.else437 ], [ %rec.0631, %while.cond284.preheader ]
  %test.1.ph653 = phi i8* [ %call438, %if.else437 ], [ %test.1.ph, %while.cond284.preheader ]
  br label %while.cond284

while.cond284:                                    ; preds = %if.then431, %if.end428, %while.cond284.outer
  %rec.1 = phi i32 [ %rec.1.ph, %while.cond284.outer ], [ %75, %if.end428 ], [ 0, %if.then431 ]
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %rec.1, i32 -1)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb285, label %cont286

ioc_bb285:                                        ; preds = %while.cond284
  %77 = sext i32 %rec.1 to i64
  call void @__ioc_report_add_overflow(i32 4142, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %77, i64 -1, i8 13) nounwind
  br label %cont286

cont286:                                          ; preds = %while.cond284, %ioc_bb285
  %tobool287 = icmp eq i32 %rec.1, 0
  br i1 %tobool287, label %while.cond.loopexit, label %while.body288

while.body288:                                    ; preds = %cont286
  br i1 %tobool289, label %if.else387, label %if.then290

if.then290:                                       ; preds = %while.body288
  %78 = load i8** %str, align 4, !tbaa !3
  store i8* %78, i8** %e, align 4, !tbaa !3
  %call292646 = call i8* @findword(i8** %e, i8* %sep.0632) nounwind
  %tobool293647 = icmp eq i8* %call292646, null
  br i1 %tobool293647, label %for.end386, label %for.body294

for.body294:                                      ; preds = %if.then290, %cont385
  %call292651 = phi i8* [ %call292, %cont385 ], [ %call292646, %if.then290 ]
  %t.0650 = phi i8* [ %123, %cont385 ], [ %78, %if.then290 ]
  %al.0649 = phi i32 [ %101, %cont385 ], [ 0, %if.then290 ]
  %all.0648 = phi i8* [ %call362, %cont385 ], [ null, %if.then290 ]
  %79 = load i8** %e, align 4, !tbaa !3
  %80 = load i8* %79, align 1, !tbaa !0
  store i8 0, i8* %79, align 1, !tbaa !0
  switch i8 %c.0.be693, label %if.then304 [
    i8 108, label %if.end306
    i8 117, label %if.end306
  ]

if.then304:                                       ; preds = %for.body294
  %call305 = call i8* @dupstring(i8* %call292651) nounwind
  store i8* %call305, i8** %copy, align 4, !tbaa !3
  br label %if.end306

if.end306:                                        ; preds = %for.body294, %for.body294, %if.then304
  %81 = load i8** %e, align 4, !tbaa !3
  store i8 %80, i8* %81, align 1, !tbaa !0
  switch i32 %conv388, label %sw.epilog343 [
    i32 97, label %sw.bb308
    i32 65, label %sw.bb310
    i32 99, label %sw.bb312
    i32 104, label %sw.bb318
    i32 114, label %sw.bb320
    i32 101, label %sw.bb322
    i32 116, label %sw.bb324
    i32 108, label %sw.bb326
    i32 117, label %sw.bb328
    i32 115, label %sw.bb330
    i32 113, label %sw.bb337
    i32 81, label %sw.bb339
  ]

sw.bb308:                                         ; preds = %if.end306
  %call309 = call i32 @chabspath(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb310:                                         ; preds = %if.end306
  %call311 = call i32 @chrealpath(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb312:                                         ; preds = %if.end306
  %82 = load i8** %copy, align 4, !tbaa !3
  %call314 = call i8* @equalsubstr(i8* %82, i32 0, i32 0)
  %tobool315 = icmp eq i8* %call314, null
  br i1 %tobool315, label %sw.epilog343, label %if.then316

if.then316:                                       ; preds = %sw.bb312
  store i8* %call314, i8** %copy, align 4, !tbaa !3
  br label %sw.epilog343

sw.bb318:                                         ; preds = %if.end306
  %call319 = call i32 @remtpath(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb320:                                         ; preds = %if.end306
  %call321 = call i32 @remtext(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb322:                                         ; preds = %if.end306
  %call323 = call i32 @rembutext(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb324:                                         ; preds = %if.end306
  %call325 = call i32 @remlpaths(i8** %copy) nounwind
  br label %sw.epilog343

sw.bb326:                                         ; preds = %if.end306
  %call327 = call i8* @casemodify(i8* %call292651, i32 2) nounwind
  store i8* %call327, i8** %copy, align 4, !tbaa !3
  br label %sw.epilog343

sw.bb328:                                         ; preds = %if.end306
  %call329 = call i8* @casemodify(i8* %call292651, i32 1) nounwind
  store i8* %call329, i8** %copy, align 4, !tbaa !3
  br label %sw.epilog343

sw.bb330:                                         ; preds = %if.end306
  %83 = load i8** @hsubl, align 4, !tbaa !3
  %tobool331 = icmp ne i8* %83, null
  %84 = load i8** @hsubr, align 4, !tbaa !3
  %tobool333 = icmp ne i8* %84, null
  %or.cond = and i1 %tobool331, %tobool333
  br i1 %or.cond, label %if.then334, label %sw.epilog343

if.then334:                                       ; preds = %sw.bb330
  %call335 = call i32 @subst(i8** %copy, i8* %83, i8* %84, i32 %gbal.0629) nounwind
  br label %sw.epilog343

sw.bb337:                                         ; preds = %if.end306
  %85 = load i8** %copy, align 4, !tbaa !3
  %call338 = call i8* @quotestring(i8* %85, i8** null, i32 7) nounwind
  store i8* %call338, i8** %copy, align 4, !tbaa !3
  br label %sw.epilog343

sw.bb339:                                         ; preds = %if.end306
  %86 = load i32* @noerrs, align 4, !tbaa !2
  %87 = load i32* @errflag, align 4, !tbaa !2
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  %88 = load i8** %copy, align 4, !tbaa !3
  %call342 = call i32 @parse_subst_string(i8* %88) nounwind
  store i32 %86, i32* @noerrs, align 4, !tbaa !2
  store i32 %87, i32* @errflag, align 4, !tbaa !2
  %89 = load i8** %copy, align 4, !tbaa !3
  call void @remnulargs(i8* %89) nounwind
  %90 = load i8** %copy, align 4, !tbaa !3
  call void @untokenize(i8* %90) nounwind
  br label %sw.epilog343

sw.epilog343:                                     ; preds = %sw.bb312, %sw.bb330, %if.then334, %if.then316, %if.end306, %sw.bb339, %sw.bb337, %sw.bb328, %sw.bb326, %sw.bb324, %sw.bb322, %sw.bb320, %sw.bb318, %sw.bb310, %sw.bb308
  %91 = load i8* %call292651, align 1, !tbaa !0
  store i8 0, i8* %call292651, align 1, !tbaa !0
  %92 = icmp sgt i32 %al.0649, -1
  br i1 %92, label %cont348, label %ioc_bb347

ioc_bb347:                                        ; preds = %sw.epilog343
  %93 = sext i32 %al.0649 to i64
  call void @__ioc_report_conversion(i32 4228, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %93, i8 1) nounwind
  br label %cont348

cont348:                                          ; preds = %ioc_bb347, %sw.epilog343
  %call349 = call i32 @strlen(i8* %t.0650) nounwind readonly
  %94 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %al.0649, i32 %call349)
  %95 = extractvalue { i32, i1 } %94, 0
  %96 = extractvalue { i32, i1 } %94, 1
  br i1 %96, label %ioc_bb350, label %cont351

ioc_bb350:                                        ; preds = %cont348
  %97 = zext i32 %call349 to i64
  %98 = zext i32 %al.0649 to i64
  call void @__ioc_report_add_overflow(i32 4228, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %98, i64 %97, i8 5) nounwind
  br label %cont351

cont351:                                          ; preds = %cont348, %ioc_bb350
  %99 = load i8** %copy, align 4, !tbaa !3
  %call352 = call i32 @strlen(i8* %99) nounwind readonly
  %100 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %95, i32 %call352)
  %101 = extractvalue { i32, i1 } %100, 0
  %102 = extractvalue { i32, i1 } %100, 1
  br i1 %102, label %ioc_bb353, label %cont354

ioc_bb353:                                        ; preds = %cont351
  %103 = zext i32 %call352 to i64
  %104 = zext i32 %95 to i64
  call void @__ioc_report_add_overflow(i32 4228, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %104, i64 %103, i8 5) nounwind
  br label %cont354

cont354:                                          ; preds = %cont351, %ioc_bb353
  %105 = icmp sgt i32 %101, -1
  br i1 %105, label %cont356, label %ioc_bb355

ioc_bb355:                                        ; preds = %cont354
  %106 = zext i32 %101 to i64
  call void @__ioc_report_conversion(i32 4228, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %106, i8 0) nounwind
  br label %cont356

cont356:                                          ; preds = %ioc_bb355, %cont354
  %107 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %101, i32 1)
  %108 = extractvalue { i32, i1 } %107, 0
  %109 = extractvalue { i32, i1 } %107, 1
  br i1 %109, label %ioc_bb357, label %cont358

ioc_bb357:                                        ; preds = %cont356
  %110 = sext i32 %101 to i64
  call void @__ioc_report_add_overflow(i32 4229, i32 46, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %110, i64 1, i8 13) nounwind
  br label %cont358

cont358:                                          ; preds = %cont356, %ioc_bb357
  %111 = icmp sgt i32 %108, -1
  br i1 %111, label %cont361, label %ioc_bb360

ioc_bb360:                                        ; preds = %cont358
  %112 = sext i32 %108 to i64
  call void @__ioc_report_conversion(i32 4229, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %112, i8 1) nounwind
  br label %cont361

cont361:                                          ; preds = %ioc_bb360, %cont358
  %call362 = call i8* @zhalloc(i32 %108) nounwind
  %tobool363 = icmp eq i8* %all.0648, null
  br i1 %tobool363, label %for.cond372.preheader, label %for.cond365.preheader

for.cond365.preheader:                            ; preds = %cont361
  %113 = load i8* %all.0648, align 1, !tbaa !0
  %tobool366634 = icmp eq i8 %113, 0
  br i1 %tobool366634, label %for.cond372.preheader, label %for.body367

for.body367:                                      ; preds = %for.cond365.preheader, %for.body367
  %114 = phi i8 [ %115, %for.body367 ], [ %113, %for.cond365.preheader ]
  %ptr1.0636 = phi i8* [ %incdec.ptr369, %for.body367 ], [ %call362, %for.cond365.preheader ]
  %ptr2.1635 = phi i8* [ %incdec.ptr368, %for.body367 ], [ %all.0648, %for.cond365.preheader ]
  %incdec.ptr368 = getelementptr inbounds i8* %ptr2.1635, i32 1
  %incdec.ptr369 = getelementptr inbounds i8* %ptr1.0636, i32 1
  store i8 %114, i8* %ptr1.0636, align 1, !tbaa !0
  %115 = load i8* %incdec.ptr368, align 1, !tbaa !0
  %tobool366 = icmp eq i8 %115, 0
  br i1 %tobool366, label %for.cond372.preheader, label %for.body367

for.cond372.preheader:                            ; preds = %for.cond365.preheader, %for.body367, %cont361
  %ptr1.2.ph = phi i8* [ %call362, %cont361 ], [ %call362, %for.cond365.preheader ], [ %incdec.ptr369, %for.body367 ]
  %116 = load i8* %t.0650, align 1, !tbaa !0
  %tobool373638 = icmp eq i8 %116, 0
  br i1 %tobool373638, label %for.end377, label %for.body374

for.body374:                                      ; preds = %for.cond372.preheader, %for.body374
  %117 = phi i8 [ %118, %for.body374 ], [ %116, %for.cond372.preheader ]
  %ptr1.2640 = phi i8* [ %incdec.ptr376, %for.body374 ], [ %ptr1.2.ph, %for.cond372.preheader ]
  %ptr2.2639 = phi i8* [ %incdec.ptr375, %for.body374 ], [ %t.0650, %for.cond372.preheader ]
  %incdec.ptr375 = getelementptr inbounds i8* %ptr2.2639, i32 1
  %incdec.ptr376 = getelementptr inbounds i8* %ptr1.2640, i32 1
  store i8 %117, i8* %ptr1.2640, align 1, !tbaa !0
  %118 = load i8* %incdec.ptr375, align 1, !tbaa !0
  %tobool373 = icmp eq i8 %118, 0
  br i1 %tobool373, label %for.end377, label %for.body374

for.end377:                                       ; preds = %for.body374, %for.cond372.preheader
  %ptr1.2.lcssa = phi i8* [ %ptr1.2.ph, %for.cond372.preheader ], [ %incdec.ptr376, %for.body374 ]
  store i8 %91, i8* %call292651, align 1, !tbaa !0
  %119 = load i8** %copy, align 4, !tbaa !3
  %120 = load i8* %119, align 1, !tbaa !0
  %tobool379642 = icmp eq i8 %120, 0
  br i1 %tobool379642, label %cont385, label %for.body380

for.body380:                                      ; preds = %for.end377, %for.body380
  %121 = phi i8 [ %122, %for.body380 ], [ %120, %for.end377 ]
  %ptr1.3644 = phi i8* [ %incdec.ptr382, %for.body380 ], [ %ptr1.2.lcssa, %for.end377 ]
  %ptr2.3643 = phi i8* [ %incdec.ptr381, %for.body380 ], [ %119, %for.end377 ]
  %incdec.ptr381 = getelementptr inbounds i8* %ptr2.3643, i32 1
  %incdec.ptr382 = getelementptr inbounds i8* %ptr1.3644, i32 1
  store i8 %121, i8* %ptr1.3644, align 1, !tbaa !0
  %122 = load i8* %incdec.ptr381, align 1, !tbaa !0
  %tobool379 = icmp eq i8 %122, 0
  br i1 %tobool379, label %cont385, label %for.body380

cont385:                                          ; preds = %for.body380, %for.end377
  %ptr1.3.lcssa = phi i8* [ %ptr1.2.lcssa, %for.end377 ], [ %incdec.ptr382, %for.body380 ]
  store i8 0, i8* %ptr1.3.lcssa, align 1, !tbaa !0
  %123 = load i8** %e, align 4, !tbaa !3
  %call292 = call i8* @findword(i8** %e, i8* %sep.0632) nounwind
  %tobool293 = icmp eq i8* %call292, null
  br i1 %tobool293, label %for.end386, label %for.body294

for.end386:                                       ; preds = %cont385, %if.then290
  %all.0.lcssa = phi i8* [ null, %if.then290 ], [ %call362, %cont385 ]
  store i8* %all.0.lcssa, i8** %str, align 4, !tbaa !3
  br label %if.end428

if.else387:                                       ; preds = %while.body288
  switch i32 %conv388, label %if.end428 [
    i32 97, label %sw.bb389
    i32 65, label %sw.bb391
    i32 99, label %sw.bb393
    i32 104, label %sw.bb400
    i32 114, label %sw.bb402
    i32 101, label %sw.bb404
    i32 116, label %sw.bb406
    i32 108, label %sw.bb408
    i32 117, label %sw.bb410
    i32 115, label %sw.bb412
    i32 113, label %sw.bb419
    i32 81, label %sw.bb421
  ]

sw.bb389:                                         ; preds = %if.else387
  %call390 = call i32 @chabspath(i8** %str) nounwind
  br label %if.end428

sw.bb391:                                         ; preds = %if.else387
  %call392 = call i32 @chrealpath(i8** %str) nounwind
  br label %if.end428

sw.bb393:                                         ; preds = %if.else387
  %124 = load i8** %str, align 4, !tbaa !3
  %call396 = call i8* @equalsubstr(i8* %124, i32 0, i32 0)
  %tobool397 = icmp eq i8* %call396, null
  br i1 %tobool397, label %if.end428, label %if.then398

if.then398:                                       ; preds = %sw.bb393
  store i8* %call396, i8** %str, align 4, !tbaa !3
  br label %if.end428

sw.bb400:                                         ; preds = %if.else387
  %call401 = call i32 @remtpath(i8** %str) nounwind
  br label %if.end428

sw.bb402:                                         ; preds = %if.else387
  %call403 = call i32 @remtext(i8** %str) nounwind
  br label %if.end428

sw.bb404:                                         ; preds = %if.else387
  %call405 = call i32 @rembutext(i8** %str) nounwind
  br label %if.end428

sw.bb406:                                         ; preds = %if.else387
  %call407 = call i32 @remlpaths(i8** %str) nounwind
  br label %if.end428

sw.bb408:                                         ; preds = %if.else387
  %125 = load i8** %str, align 4, !tbaa !3
  %call409 = call i8* @casemodify(i8* %125, i32 2) nounwind
  store i8* %call409, i8** %str, align 4, !tbaa !3
  br label %if.end428

sw.bb410:                                         ; preds = %if.else387
  %126 = load i8** %str, align 4, !tbaa !3
  %call411 = call i8* @casemodify(i8* %126, i32 1) nounwind
  store i8* %call411, i8** %str, align 4, !tbaa !3
  br label %if.end428

sw.bb412:                                         ; preds = %if.else387
  %127 = load i8** @hsubl, align 4, !tbaa !3
  %tobool413 = icmp ne i8* %127, null
  %128 = load i8** @hsubr, align 4, !tbaa !3
  %tobool415 = icmp ne i8* %128, null
  %or.cond442 = and i1 %tobool413, %tobool415
  br i1 %or.cond442, label %if.then416, label %if.end428

if.then416:                                       ; preds = %sw.bb412
  %call417 = call i32 @subst(i8** %str, i8* %127, i8* %128, i32 %gbal.0629) nounwind
  br label %if.end428

sw.bb419:                                         ; preds = %if.else387
  %129 = load i8** %str, align 4, !tbaa !3
  %call420 = call i8* @quotestring(i8* %129, i8** null, i32 1) nounwind
  store i8* %call420, i8** %str, align 4, !tbaa !3
  br label %if.end428

sw.bb421:                                         ; preds = %if.else387
  %130 = load i32* @noerrs, align 4, !tbaa !2
  %131 = load i32* @errflag, align 4, !tbaa !2
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  %132 = load i8** %str, align 4, !tbaa !3
  %call426 = call i32 @parse_subst_string(i8* %132) nounwind
  store i32 %130, i32* @noerrs, align 4, !tbaa !2
  store i32 %131, i32* @errflag, align 4, !tbaa !2
  %133 = load i8** %str, align 4, !tbaa !3
  call void @remnulargs(i8* %133) nounwind
  %134 = load i8** %str, align 4, !tbaa !3
  call void @untokenize(i8* %134) nounwind
  br label %if.end428

if.end428:                                        ; preds = %sw.bb393, %sw.bb389, %sw.bb391, %sw.bb400, %sw.bb402, %sw.bb404, %sw.bb406, %sw.bb408, %sw.bb410, %sw.bb419, %sw.bb421, %if.else387, %if.then398, %if.then416, %sw.bb412, %for.end386
  %cmp429 = icmp slt i32 %75, 0
  br i1 %cmp429, label %if.then431, label %while.cond284

if.then431:                                       ; preds = %if.end428
  %135 = load i8** %str, align 4, !tbaa !3
  %call434 = call i32 @strcmp(i8* %test.1.ph653, i8* %135) nounwind
  %tobool435 = icmp eq i32 %call434, 0
  br i1 %tobool435, label %while.cond284, label %if.else437

if.else437:                                       ; preds = %if.then431
  %call438 = call i8* @dupstring(i8* %135) nounwind
  br label %while.cond284.outer

while.end441:                                     ; preds = %entry, %while.cond.preheader, %while.cond.loopexit, %if.then96, %if.then162, %sw.default, %if.then277
  ret void
}

declare void @zsfree(i8*)

declare i8* @ztrdup(i8*)

declare void @chuck(i8*)

define internal fastcc i32 @get_intarg(i8** nocapture %s, i32* nocapture %delmatchp) nounwind {
entry:
  %foo.i = alloca %union.linkroot, align 4
  %__n0.i = alloca %struct.linknode, align 4
  %arglen = alloca i32, align 4
  %0 = load i8** %s, align 4, !tbaa !3
  %call = call i8* @get_strarg(i8* %0, i32* %arglen)
  store i32 0, i32* %delmatchp, align 4, !tbaa !2
  %1 = load i8* %call, align 1, !tbaa !0
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %cont2

cont2:                                            ; preds = %entry
  store i8 0, i8* %call, align 1, !tbaa !0
  %2 = load i8** %s, align 4, !tbaa !3
  %3 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %2, i32 %3
  %call3 = call i8* @dupstring(i8* %add.ptr) nounwind
  %add.ptr4 = getelementptr inbounds i8* %call, i32 %3
  store i8* %add.ptr4, i8** %s, align 4, !tbaa !3
  store i8 %1, i8* %call, align 1, !tbaa !0
  %call5 = call i32 @parsestr(i8* %call3) nounwind
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.end10, label %return

if.end10:                                         ; preds = %cont2
  %4 = bitcast %union.linkroot* %foo.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %4) nounwind
  %5 = bitcast %struct.linknode* %__n0.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %5) nounwind
  %first.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0.i, %struct.linknode** %first.i, align 4, !tbaa !3
  %last.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0.i, %struct.linknode** %last.i, align 4, !tbaa !3
  %flags.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 2
  store i32 0, i32* %flags.i, align 4, !tbaa !2
  %next.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next.i, align 4, !tbaa !3
  %node.i = bitcast %union.linkroot* %foo.i to %struct.linknode*
  %prev.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 1
  store %struct.linknode* %node.i, %struct.linknode** %prev.i, align 4, !tbaa !3
  %dat.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 2
  store i8* %call3, i8** %dat.i, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %foo.i, i32 4) nounwind
  %6 = load i32* @errflag, align 4, !tbaa !2
  %tobool.i = icmp eq i32 %6, 0
  br i1 %tobool.i, label %singsub.exit, label %return

singsub.exit:                                     ; preds = %if.end10
  %call.i = call i8* @ugetnode(%union.linkroot* %foo.i) nounwind
  %.pre = load i32* @errflag, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 -1, i8* %4) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %5) nounwind
  %tobool11 = icmp eq i32 %.pre, 0
  br i1 %tobool11, label %if.end15, label %return

if.end15:                                         ; preds = %singsub.exit
  %call16 = call i64 @mathevali(i8* %call.i) nounwind
  %7 = load i32* @errflag, align 4, !tbaa !2
  %tobool17 = icmp eq i32 %7, 0
  br i1 %tobool17, label %if.end21, label %return

if.end21:                                         ; preds = %if.end15
  %cmp = icmp slt i64 %call16, 0
  br i1 %cmp, label %if.then22, label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end21
  store i32 %3, i32* %delmatchp, align 4, !tbaa !2
  br label %cond.end

if.then22:                                        ; preds = %if.end21
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %call16)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  br i1 %10, label %ioc_bb23, label %if.end25

ioc_bb23:                                         ; preds = %if.then22
  call void @__ioc_report_sub_overflow(i32 1386, i32 11, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %call16, i8 14) nounwind
  br label %if.end25

if.end25:                                         ; preds = %ioc_bb23, %if.then22
  store i32 %3, i32* %delmatchp, align 4, !tbaa !2
  %cmp26 = icmp slt i64 %9, 0
  br i1 %cmp26, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end25
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %9)
  %12 = extractvalue { i64, i1 } %11, 0
  %13 = extractvalue { i64, i1 } %11, 1
  br i1 %13, label %ioc_bb27, label %cond.end

ioc_bb27:                                         ; preds = %cond.true
  call void @__ioc_report_sub_overflow(i32 1388, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %9, i8 14) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.end25.thread, %cond.true, %if.end25, %ioc_bb27
  %cond = phi i64 [ %12, %ioc_bb27 ], [ %12, %cond.true ], [ %9, %if.end25 ], [ %call16, %if.end25.thread ]
  %cond.off = add i64 %cond, 2147483648
  %14 = icmp ult i64 %cond.off, 4294967296
  br i1 %14, label %cont30, label %ioc_bb29

ioc_bb29:                                         ; preds = %cond.end
  call void @__ioc_report_conversion(i32 1388, i32 10, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %cond, i8 1) nounwind
  br label %cont30

cont30:                                           ; preds = %ioc_bb29, %cond.end
  %conv = trunc i64 %cond to i32
  br label %return

return:                                           ; preds = %if.end10, %if.end15, %singsub.exit, %cont2, %entry, %cont30
  %retval.0 = phi i32 [ %conv, %cont30 ], [ -1, %entry ], [ -1, %cont2 ], [ -1, %singsub.exit ], [ -1, %if.end15 ], [ -1, %if.end10 ]
  ret i32 %retval.0
}

declare i8* @findword(i8**, i8*)

declare i32 @chabspath(i8**)

declare i32 @chrealpath(i8**)

declare i32 @remtpath(i8**)

declare i32 @remtext(i8**)

declare i32 @rembutext(i8**)

declare i32 @remlpaths(i8**)

declare i8* @casemodify(i8*, i32)

declare i32 @subst(i8**, i8*, i8*, i32)

declare i8* @quotestring(i8*, i8**, i32)

declare i32 @parse_subst_string(i8*)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @zhalloc(i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @parsestr(i8*)

declare i64 @mathevali(i8*)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare i8* @getkeystring(i8*, i32*, i32, i32*)

declare i8* @zhtricat(i8*, i8*, i8*)

declare i8* @getproc(i8*, i8**)

declare i8* @getoutputfile(i8*, i8**)

declare i8* @hcalloc(i32)

declare i32 @skipparens(i8 signext, i8 signext, i8**)

define internal fastcc i8* @arithsubst(i8* %a, i8** nocapture %bptr, i8* nocapture %rest) nounwind {
entry:
  %foo.i = alloca %union.linkroot, align 4
  %__n0.i = alloca %struct.linknode, align 4
  %buf = alloca [68 x i8], align 1
  %tmp = alloca %struct.mnumber, align 8
  %0 = load i8** %bptr, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [68 x i8]* %buf, i32 0, i32 0
  %1 = bitcast %union.linkroot* %foo.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1) nounwind
  %2 = bitcast %struct.linknode* %__n0.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2) nounwind
  %first.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0.i, %struct.linknode** %first.i, align 4, !tbaa !3
  %last.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0.i, %struct.linknode** %last.i, align 4, !tbaa !3
  %flags.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 2
  store i32 0, i32* %flags.i, align 4, !tbaa !2
  %next.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next.i, align 4, !tbaa !3
  %node.i = bitcast %union.linkroot* %foo.i to %struct.linknode*
  %prev.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 1
  store %struct.linknode* %node.i, %struct.linknode** %prev.i, align 4, !tbaa !3
  %dat.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 2
  store i8* %a, i8** %dat.i, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %foo.i, i32 4) nounwind
  %3 = load i32* @errflag, align 4, !tbaa !2
  %tobool.i = icmp eq i32 %3, 0
  br i1 %tobool.i, label %if.end.i, label %singsub.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i8* @ugetnode(%union.linkroot* %foo.i) nounwind
  br label %singsub.exit

singsub.exit:                                     ; preds = %entry, %if.end.i
  %a48 = phi i8* [ %a, %entry ], [ %call.i, %if.end.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %1) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %2) nounwind
  call void @matheval(%struct.mnumber* sret %tmp, i8* %a48) nounwind
  %v.sroa.0.0..idx = getelementptr inbounds %struct.mnumber* %tmp, i32 0, i32 0, i32 0
  %v.sroa.0.0.copyload = load i64* %v.sroa.0.0..idx, align 8
  %v.sroa.1.8..idx37 = getelementptr inbounds %struct.mnumber* %tmp, i32 0, i32 1
  %v.sroa.1.8.copyload = load i32* %v.sroa.1.8..idx37, align 8
  %and = and i32 %v.sroa.1.8.copyload, 2
  %tobool = icmp eq i32 %and, 0
  %4 = load i32* @outputradix, align 4, !tbaa !2
  %tobool1 = icmp ne i32 %4, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %singsub.exit
  %5 = bitcast i64 %v.sroa.0.0.copyload to double
  %call = call i8* @convfloat(double %5, i32 0, i32 0, %struct._IO_FILE* null) nounwind
  br label %if.end12

if.else:                                          ; preds = %singsub.exit
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  %6 = bitcast i64 %v.sroa.0.0.copyload to double
  %conv = fptosi double %6 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %v.sroa.0.0 = phi i64 [ %conv, %if.then5 ], [ %v.sroa.0.0.copyload, %if.else ]
  call void @convbase(i8* %arraydecay, i64 %v.sroa.0.0, i32 %4) nounwind
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %b.0 = phi i8* [ %arraydecay, %if.end ], [ %call, %if.then ]
  %7 = load i8** %bptr, align 4, !tbaa !3
  %call13 = call i32 @strlen(i8* %7) nounwind readonly
  %call14 = call i32 @strlen(i8* %b.0) nounwind readonly
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call13, i32 %call14)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end12
  %11 = zext i32 %call14 to i64
  %12 = zext i32 %call13 to i64
  call void @__ioc_report_add_overflow(i32 3905, i32 51, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %12, i64 %11, i8 5) nounwind
  br label %cont

cont:                                             ; preds = %if.end12, %ioc_bb
  %call15 = call i32 @strlen(i8* %rest) nounwind readonly
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 %call15)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb16, label %cont19

ioc_bb16:                                         ; preds = %cont
  %16 = zext i32 %call15 to i64
  %17 = zext i32 %9 to i64
  call void @__ioc_report_add_overflow(i32 3905, i32 63, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %17, i64 %16, i8 5) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb16, %cont
  %18 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %14, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont19
  %21 = zext i32 %14 to i64
  call void @__ioc_report_add_overflow(i32 3905, i32 78, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %21, i64 1, i8 5) nounwind
  br label %cont21

cont21:                                           ; preds = %cont19, %ioc_bb20
  %call22 = call i8* @hcalloc(i32 %19) nounwind
  store i8* %call22, i8** %bptr, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %call22, i32 -1
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %cont21
  %t.0 = phi i8* [ %incdec.ptr, %cont21 ], [ %incdec.ptr24, %while.cond ]
  %s.0 = phi i8* [ %0, %cont21 ], [ %incdec.ptr23, %while.cond ]
  %incdec.ptr23 = getelementptr inbounds i8* %s.0, i32 1
  %22 = load i8* %s.0, align 1, !tbaa !0
  %incdec.ptr24 = getelementptr inbounds i8* %t.0, i32 1
  store i8 %22, i8* %incdec.ptr24, align 1, !tbaa !0
  %tobool25 = icmp eq i8 %22, 0
  br i1 %tobool25, label %while.cond27, label %while.cond

while.cond27:                                     ; preds = %while.cond, %while.cond27
  %t.1 = phi i8* [ %incdec.ptr29, %while.cond27 ], [ %t.0, %while.cond ]
  %b.1 = phi i8* [ %incdec.ptr28, %while.cond27 ], [ %b.0, %while.cond ]
  %incdec.ptr28 = getelementptr inbounds i8* %b.1, i32 1
  %23 = load i8* %b.1, align 1, !tbaa !0
  %incdec.ptr29 = getelementptr inbounds i8* %t.1, i32 1
  store i8 %23, i8* %incdec.ptr29, align 1, !tbaa !0
  %tobool30 = icmp eq i8 %23, 0
  br i1 %tobool30, label %while.end32, label %while.cond27

while.end32:                                      ; preds = %while.cond27
  %call33 = call i8* @strcat(i8* %incdec.ptr29, i8* %rest) nounwind
  ret i8* %incdec.ptr29
}

define internal fastcc %struct.linknode* @paramsubst(%union.linkroot* %l, %struct.linknode* %n, i8** nocapture %str, i32 %qt, i32 %pf_flags) nounwind {
entry:
  %foo.i = alloca %union.linkroot, align 4
  %__n0.i = alloca %struct.linknode, align 4
  %s = alloca i8*, align 4
  %isarr = alloca i32, align 4
  %val = alloca i8*, align 4
  %aval = alloca i8**, align 4
  %vbuf = alloca %struct.value, align 4
  %arglen = alloca i32, align 4
  %dellen = alloca i32, align 4
  %ov = alloca i8*, align 4
  %arr1738 = alloca [2 x i8*], align 4
  %check_offset2 = alloca i8*, align 4
  %ss = alloca i8*, align 4
  %t2350 = alloca i8*, align 4
  %buf = alloca [14 x i8], align 1
  %len2621 = alloca i32, align 4
  %x = alloca i8*, align 4
  %y = alloca i8*, align 4
  %tl = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %x3409 = alloca i8*, align 4
  %y3411 = alloca i8*, align 4
  %0 = load i8** %str, align 4, !tbaa !3
  store i8* %0, i8** %s, align 4, !tbaa !3
  %dat = getelementptr inbounds %struct.linknode* %n, i32 0, i32 2
  %1 = load i8** %dat, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 139), align 1, !tbaa !0
  %conv = sext i8 %2 to i32
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 61), align 1, !tbaa !0
  %conv1 = sext i8 %3 to i32
  %and = and i32 %pf_flags, 16
  %tobool = icmp eq i32 %and, 0
  %and2 = and i32 %pf_flags, 4
  %4 = and i32 %pf_flags, 20
  %5 = icmp eq i32 %4, 16
  %lnot = icmp eq i32 %qt, 0
  %lnot. = and i1 %5, %lnot
  %land.ext = zext i1 %lnot. to i32
  store i8* null, i8** %val, align 4, !tbaa !3
  store i8** null, i8*** %aval, align 4, !tbaa !3
  br i1 %tobool, label %cont24, label %cond.true

cond.true:                                        ; preds = %entry
  %6 = load i8** @ifs, align 4, !tbaa !3
  %tobool8 = icmp eq i8* %6, null
  br i1 %tobool8, label %land.rhs12, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %cond.true
  %7 = load i8* %6, align 1, !tbaa !0
  %tobool11 = icmp eq i8 %7, 0
  br i1 %tobool11, label %land.rhs12, label %land.end15

land.rhs12:                                       ; preds = %land.lhs.true9, %cond.true
  br label %land.end15

land.end15:                                       ; preds = %land.lhs.true9, %land.rhs12
  %8 = phi i1 [ false, %land.lhs.true9 ], [ %lnot, %land.rhs12 ]
  %land.ext16 = zext i1 %8 to i32
  br label %cont24

cont24:                                           ; preds = %entry, %land.end15
  %cond = phi i32 [ %land.ext16, %land.end15 ], [ 0, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1
  store i8* %incdec.ptr, i8** %s, align 4, !tbaa !3
  store i8 0, i8* %0, align 1, !tbaa !0
  %9 = load i8** %s, align 4, !tbaa !3
  %10 = load i8* %9, align 1, !tbaa !0
  %call = call i8* @itype_end(i8* %9, i32 128, i32 1) nounwind
  %11 = load i8** %s, align 4, !tbaa !3
  %cmp = icmp eq i8* %call, %11
  br i1 %cmp, label %land.lhs.true30, label %ioc_bb137

land.lhs.true30:                                  ; preds = %cont24
  %12 = load i8* %call, align 1, !tbaa !0
  %cmp32 = icmp eq i8 %12, 35
  br i1 %cmp32, label %ioc_bb137, label %ioc_bb36

ioc_bb36:                                         ; preds = %land.lhs.true30
  call void @__ioc_report_conversion(i32 1758, i32 66, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  switch i8 %10, label %ioc_bb54 [
    i8 -124, label %ioc_bb137.thread
    i8 45, label %ioc_bb137.thread
    i8 33, label %ioc_bb137.thread
    i8 36, label %ioc_bb137.thread
  ]

ioc_bb54:                                         ; preds = %ioc_bb36
  call void @__ioc_report_conversion(i32 1758, i32 123, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp56 = icmp eq i8 %10, -123
  br i1 %cmp56, label %ioc_bb137.thread, label %ioc_bb60

ioc_bb60:                                         ; preds = %ioc_bb54
  call void @__ioc_report_conversion(i32 1758, i32 145, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  switch i8 %10, label %ioc_bb70 [
    i8 -118, label %ioc_bb137.thread
    i8 63, label %ioc_bb137.thread
  ]

ioc_bb70:                                         ; preds = %ioc_bb60
  call void @__ioc_report_conversion(i32 1758, i32 179, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 149, i8 1) nounwind
  switch i8 %10, label %ioc_bb80 [
    i8 -107, label %ioc_bb137
    i8 42, label %ioc_bb137
  ]

ioc_bb80:                                         ; preds = %ioc_bb70
  call void @__ioc_report_conversion(i32 1758, i32 213, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 135, i8 1) nounwind
  switch i8 %10, label %ioc_bb94 [
    i8 -121, label %ioc_bb137.thread
    i8 64, label %ioc_bb137.thread
    i8 123, label %ioc_bb137.thread
  ]

ioc_bb94:                                         ; preds = %ioc_bb80
  call void @__ioc_report_conversion(i32 1758, i32 258, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  switch i8 %10, label %ioc_bb104 [
    i8 -115, label %ioc_bb137
    i8 61, label %ioc_bb137
  ]

ioc_bb104:                                        ; preds = %ioc_bb94
  call void @__ioc_report_conversion(i32 1758, i32 292, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp106 = icmp eq i8 %10, -117
  br i1 %cmp106, label %ioc_bb137.thread, label %ioc_bb110

ioc_bb110:                                        ; preds = %ioc_bb104
  call void @__ioc_report_conversion(i32 1758, i32 314, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 134, i8 1) nounwind
  switch i8 %10, label %ioc_bb124 [
    i8 -122, label %ioc_bb137.thread
    i8 94, label %ioc_bb137.thread
    i8 126, label %ioc_bb137.thread
  ]

ioc_bb124:                                        ; preds = %ioc_bb110
  call void @__ioc_report_conversion(i32 1758, i32 360, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  switch i8 %10, label %cont135 [
    i8 -106, label %ioc_bb137
    i8 43, label %ioc_bb137
  ]

cont135:                                          ; preds = %ioc_bb124
  %13 = load i8** %s, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %13, i32 -1
  store i8 36, i8* %arrayidx, align 1, !tbaa !0
  %14 = load i8** %s, align 4, !tbaa !3
  store i8* %14, i8** %str, align 4, !tbaa !3
  br label %return

ioc_bb137.thread:                                 ; preds = %ioc_bb54, %ioc_bb104, %ioc_bb36, %ioc_bb36, %ioc_bb36, %ioc_bb36, %ioc_bb60, %ioc_bb60, %ioc_bb80, %ioc_bb80, %ioc_bb80, %ioc_bb110, %ioc_bb110, %ioc_bb110
  call void @__ioc_report_conversion(i32 1768, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  br label %if.end478

ioc_bb137:                                        ; preds = %cont24, %land.lhs.true30, %ioc_bb70, %ioc_bb70, %ioc_bb94, %ioc_bb94, %ioc_bb124, %ioc_bb124
  call void @__ioc_report_conversion(i32 1768, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp139 = icmp eq i8 %10, -115
  br i1 %cmp139, label %cont143, label %if.end478

cont143:                                          ; preds = %ioc_bb137
  %15 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr144 = getelementptr inbounds i8* %15, i32 1
  store i8* %incdec.ptr144, i8** %s, align 4, !tbaa !3
  %16 = load i8* %incdec.ptr144, align 1, !tbaa !0
  switch i8 %16, label %ioc_bb174 [
    i8 33, label %land.lhs.true148
    i8 40, label %for.cond.preheader
  ]

land.lhs.true148:                                 ; preds = %cont143
  %arrayidx149 = getelementptr inbounds i8* %15, i32 2
  %17 = load i8* %arrayidx149, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1779, i32 45, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp153 = icmp eq i8 %17, -114
  br i1 %cmp153, label %ioc_bb174.thread, label %land.lhs.true155

ioc_bb174.thread:                                 ; preds = %land.lhs.true148
  call void @__ioc_report_conversion(i32 1783, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  br label %if.end478

land.lhs.true155:                                 ; preds = %land.lhs.true148
  %18 = load i32* @emulation, align 4, !tbaa !2
  %and160 = and i32 %18, 4
  %tobool161 = icmp eq i32 %and160, 0
  br i1 %tobool161, label %ioc_bb174, label %cont168

cont168:                                          ; preds = %land.lhs.true155
  %19 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr169 = getelementptr inbounds i8* %19, i32 1
  store i8* %incdec.ptr169, i8** %s, align 4, !tbaa !3
  br label %if.end478

ioc_bb174:                                        ; preds = %land.lhs.true155, %cont143
  call void @__ioc_report_conversion(i32 1783, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp176 = icmp eq i8 %16, -120
  br i1 %cmp176, label %for.cond.preheader, label %if.end478

for.cond.preheader:                               ; preds = %ioc_bb174, %cont143
  %.pn4548 = load i8** %s, align 4
  %storemerge42034549 = getelementptr inbounds i8* %.pn4548, i32 1
  store i8* %storemerge42034549, i8** %s, align 4
  %20 = load i8* %storemerge42034549, align 1, !tbaa !0
  %cmp1814551 = icmp eq i8 %20, 41
  br i1 %cmp1814551, label %for.end, label %ioc_bb185

ioc_bb185:                                        ; preds = %for.cond.preheader, %for.cond.backedge
  %conv1804614.in = phi i8 [ %69, %for.cond.backedge ], [ %20, %for.cond.preheader ]
  %evalchar.04612 = phi i32 [ %evalchar.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %whichlen.04610 = phi i32 [ %whichlen.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %wantt.04608 = phi i32 [ %wantt.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %flags.04606 = phi i32 [ %flags.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %flnum.04604 = phi i32 [ %flnum.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %sortit.04602 = phi i32 [ %sortit.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %indord.04600 = phi i32 [ %indord.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %unique.04598 = phi i32 [ %unique.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %casmod.04596 = phi i32 [ %casmod.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %quotemod.04594 = phi i32 [ %quotemod.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %quotetype.04592 = phi i32 [ %quotetype.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %quoteerr.04590 = phi i32 [ %quoteerr.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %mods.04588 = phi i32 [ %mods.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %shsplit.04586 = phi i32 [ %shsplit.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %sep.04584 = phi i8* [ %sep.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %spsep.04582 = phi i8* [ %spsep.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %premul.04581 = phi i8* [ %premul.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %postmul.04580 = phi i8* [ %postmul.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %preone.04578 = phi i8* [ %preone.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %postone.04576 = phi i8* [ %postone.0.be, %for.cond.backedge ], [ null, %for.cond.preheader ]
  %prenum.04575 = phi i64 [ %prenum.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %postnum.04574 = phi i64 [ %postnum.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %multi_width.04572 = phi i32 [ %multi_width.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrasg.04570 = phi i32 [ %arrasg.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %tok_arg.04568 = phi i32 [ %tok_arg.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %escapes.04566 = phi i32 [ %escapes.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %eval.04564 = phi i32 [ %eval.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %hvals.04562 = phi i8 [ %hvals.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %hkeys.04560 = phi i8 [ %hkeys.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %nojoin.04558 = phi i32 [ %nojoin.0.be, %for.cond.backedge ], [ %cond, %for.cond.preheader ]
  %getkeys.04556 = phi i32 [ %getkeys.0.be, %for.cond.backedge ], [ -1, %for.cond.preheader ]
  %presc.04554 = phi i32 [ %presc.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %aspar.04552 = phi i32 [ %aspar.0.be, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  call void @__ioc_report_conversion(i32 1799, i32 50, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp187 = icmp eq i8 %conv1804614.in, -119
  br i1 %cmp187, label %for.endsplit, label %for.body

for.body:                                         ; preds = %ioc_bb185
  %conv1804614 = sext i8 %conv1804614.in to i32
  switch i32 %conv1804614, label %flagerr [
    i32 41, label %for.cond.backedge
    i32 -119, label %for.cond.backedge
    i32 126, label %sw.bb193
    i32 -106, label %sw.bb193
    i32 65, label %sw.bb196
    i32 64, label %sw.bb199
    i32 77, label %sw.bb200
    i32 82, label %sw.bb201
    i32 66, label %sw.bb203
    i32 69, label %sw.bb205
    i32 78, label %sw.bb207
    i32 83, label %sw.bb209
    i32 73, label %sw.bb211
    i32 76, label %sw.bb219
    i32 85, label %sw.bb220
    i32 67, label %sw.bb221
    i32 111, label %sw.bb222
    i32 79, label %sw.bb227
    i32 105, label %sw.bb229
    i32 110, label %sw.bb231
    i32 97, label %sw.bb233
    i32 68, label %sw.bb235
    i32 86, label %sw.bb237
    i32 113, label %sw.bb239
    i32 81, label %sw.bb263
    i32 88, label %sw.bb266
    i32 101, label %sw.bb267
    i32 80, label %sw.bb268
    i32 99, label %sw.bb269
    i32 119, label %sw.bb270
    i32 87, label %sw.bb271
    i32 102, label %sw.bb272
    i32 70, label %sw.bb273
    i32 48, label %cont276
    i32 115, label %sw.bb287
    i32 106, label %sw.bb288
    i32 108, label %sw.bb306
    i32 114, label %sw.bb307
    i32 109, label %sw.bb367
    i32 112, label %sw.bb370
    i32 107, label %cont377
    i32 118, label %cont384
    i32 116, label %sw.bb385
    i32 37, label %sw.bb386
    i32 103, label %sw.bb389
    i32 122, label %sw.bb425
    i32 90, label %sw.bb426
    i32 117, label %sw.bb451
    i32 35, label %sw.bb453
    i32 -124, label %sw.bb453
    i32 95, label %sw.bb454
  ]

sw.bb193:                                         ; preds = %for.body, %for.body
  %21 = xor i32 %tok_arg.04568, 1
  br label %for.cond.backedge

sw.bb196:                                         ; preds = %for.body
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %arrasg.04570, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb197, label %for.cond.backedge

ioc_bb197:                                        ; preds = %sw.bb196
  %25 = sext i32 %arrasg.04570 to i64
  call void @__ioc_report_add_overflow(i32 1823, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %for.cond.backedge

sw.bb199:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb200:                                         ; preds = %for.body
  %or = or i32 %flags.04606, 8
  br label %for.cond.backedge

sw.bb201:                                         ; preds = %for.body
  %or202 = or i32 %flags.04606, 16
  br label %for.cond.backedge

sw.bb203:                                         ; preds = %for.body
  %or204 = or i32 %flags.04606, 32
  br label %for.cond.backedge

sw.bb205:                                         ; preds = %for.body
  %or206 = or i32 %flags.04606, 64
  br label %for.cond.backedge

sw.bb207:                                         ; preds = %for.body
  %or208 = or i32 %flags.04606, 128
  br label %for.cond.backedge

sw.bb209:                                         ; preds = %for.body
  %or210 = or i32 %flags.04606, 4
  br label %for.cond.backedge

sw.bb211:                                         ; preds = %for.body
  %26 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr212 = getelementptr inbounds i8* %26, i32 1
  store i8* %incdec.ptr212, i8** %s, align 4, !tbaa !3
  %call213 = call fastcc i32 @get_intarg(i8** %s, i32* %dellen)
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %flagerr, label %if.end217

if.end217:                                        ; preds = %sw.bb211
  %27 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr218 = getelementptr inbounds i8* %27, i32 -1
  store i8* %incdec.ptr218, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

sw.bb219:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb220:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb221:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb222:                                         ; preds = %for.body
  %tobool223 = icmp eq i32 %sortit.04602, 0
  %or225 = or i32 %sortit.04602, 16
  %or225.sortit.0 = select i1 %tobool223, i32 %or225, i32 %sortit.04602
  br label %for.cond.backedge

sw.bb227:                                         ; preds = %for.body
  %or228 = or i32 %sortit.04602, 4
  br label %for.cond.backedge

sw.bb229:                                         ; preds = %for.body
  %or230 = or i32 %sortit.04602, 1
  br label %for.cond.backedge

sw.bb231:                                         ; preds = %for.body
  %or232 = or i32 %sortit.04602, 2
  br label %for.cond.backedge

sw.bb233:                                         ; preds = %for.body
  %or234 = or i32 %sortit.04602, 16
  br label %for.cond.backedge

sw.bb235:                                         ; preds = %for.body
  %or236 = or i32 %mods.04588, 1
  br label %for.cond.backedge

sw.bb237:                                         ; preds = %for.body
  %or238 = or i32 %mods.04588, 2
  br label %for.cond.backedge

sw.bb239:                                         ; preds = %for.body
  %cmp240 = icmp eq i32 %quotetype.04592, 4
  br i1 %cmp240, label %flagerr, label %if.end243

if.end243:                                        ; preds = %sw.bb239
  %28 = load i8** %s, align 4, !tbaa !3
  %arrayidx244 = getelementptr inbounds i8* %28, i32 1
  %29 = load i8* %arrayidx244, align 1, !tbaa !0
  %cmp246 = icmp eq i8 %29, 45
  br i1 %cmp246, label %if.then248, label %if.else253

if.then248:                                       ; preds = %if.end243
  %tobool249 = icmp eq i32 %quotemod.04594, 0
  br i1 %tobool249, label %if.end251, label %flagerr

if.end251:                                        ; preds = %if.then248
  store i8* %arrayidx244, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

if.else253:                                       ; preds = %if.end243
  %cmp254 = icmp eq i32 %quotetype.04592, 6
  br i1 %cmp254, label %flagerr, label %if.end257

if.end257:                                        ; preds = %if.else253
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %quotemod.04594, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb258, label %cont259

ioc_bb258:                                        ; preds = %if.end257
  %33 = sext i32 %quotemod.04594 to i64
  call void @__ioc_report_add_overflow(i32 1940, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %cont259

cont259:                                          ; preds = %if.end257, %ioc_bb258
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %quotetype.04592, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb260, label %for.cond.backedge

ioc_bb260:                                        ; preds = %cont259
  %37 = sext i32 %quotetype.04592 to i64
  call void @__ioc_report_add_overflow(i32 1940, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %for.cond.backedge

sw.bb263:                                         ; preds = %for.body
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %quotemod.04594, i32 -1)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb264, label %for.cond.backedge

ioc_bb264:                                        ; preds = %sw.bb263
  %41 = sext i32 %quotemod.04594 to i64
  call void @__ioc_report_add_overflow(i32 1946, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %41, i64 -1, i8 13) nounwind
  br label %for.cond.backedge

sw.bb266:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb267:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb268:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb269:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb270:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb271:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb272:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb273:                                         ; preds = %for.body
  br label %for.cond.backedge

cont276:                                          ; preds = %for.body
  %call277 = call i8* @zhalloc(i32 3) nounwind
  call void @__ioc_report_conversion(i32 1992, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  store i8 -125, i8* %call277, align 1, !tbaa !0
  %arrayidx283 = getelementptr inbounds i8* %call277, i32 1
  store i8 32, i8* %arrayidx283, align 1, !tbaa !0
  %arrayidx286 = getelementptr inbounds i8* %call277, i32 2
  store i8 0, i8* %arrayidx286, align 1, !tbaa !0
  br label %for.cond.backedge

sw.bb287:                                         ; preds = %for.body
  br label %sw.bb288

sw.bb288:                                         ; preds = %for.body, %sw.bb287
  %tt.1 = phi i32 [ 0, %for.body ], [ 1, %sw.bb287 ]
  %42 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr289 = getelementptr inbounds i8* %42, i32 1
  store i8* %incdec.ptr289, i8** %s, align 4, !tbaa !3
  %call290 = call i8* @get_strarg(i8* %incdec.ptr289, i32* %arglen)
  %43 = load i8* %call290, align 1, !tbaa !0
  %tobool291 = icmp eq i8 %43, 0
  br i1 %tobool291, label %flagerr, label %cont294

cont294:                                          ; preds = %sw.bb288
  store i8 0, i8* %call290, align 1, !tbaa !0
  %tobool295 = icmp eq i32 %tt.1, 0
  %44 = load i8** %s, align 4, !tbaa !3
  %45 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %44, i32 %45
  %call297 = call fastcc i8* @untok_and_escape(i8* %add.ptr, i32 %escapes.04566, i32 %tok_arg.04568)
  %spsep.0.call297 = select i1 %tobool295, i8* %spsep.04582, i8* %call297
  %call297.sep.0 = select i1 %tobool295, i8* %call297, i8* %sep.04584
  store i8 %43, i8* %call290, align 1, !tbaa !0
  %add.ptr302.sum = add i32 %45, -1
  %add.ptr303 = getelementptr inbounds i8* %call290, i32 %add.ptr302.sum
  store i8* %add.ptr303, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

sw.bb306:                                         ; preds = %for.body
  br label %sw.bb307

sw.bb307:                                         ; preds = %for.body, %sw.bb306
  %tt.2 = phi i32 [ 0, %for.body ], [ 1, %sw.bb306 ]
  %46 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr308 = getelementptr inbounds i8* %46, i32 1
  store i8* %incdec.ptr308, i8** %s, align 4, !tbaa !3
  %call309 = call fastcc i32 @get_intarg(i8** %s, i32* %dellen)
  %conv310 = sext i32 %call309 to i64
  %cmp311 = icmp slt i32 %call309, 0
  br i1 %cmp311, label %flagerr, label %if.end314

if.end314:                                        ; preds = %sw.bb307
  %tobool315 = icmp ne i32 %tt.2, 0
  %postnum.0.conv310 = select i1 %tobool315, i64 %postnum.04574, i64 %conv310
  %conv310.prenum.0 = select i1 %tobool315, i64 %conv310, i64 %prenum.04575
  %47 = load i32* %dellen, align 4, !tbaa !2
  %tobool319 = icmp eq i32 %47, 0
  br i1 %tobool319, label %if.then325, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %if.end314
  %48 = load i8** %s, align 4, !tbaa !3
  %49 = icmp sgt i32 %47, -1
  br i1 %49, label %cont322, label %ioc_bb321

ioc_bb321:                                        ; preds = %lor.lhs.false320
  %50 = sext i32 %47 to i64
  call void @__ioc_report_conversion(i32 2033, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %50, i8 1) nounwind
  br label %cont322

cont322:                                          ; preds = %ioc_bb321, %lor.lhs.false320
  %call323 = call i32 @memcmp(i8* %incdec.ptr308, i8* %48, i32 %47) nounwind readonly
  %tobool324 = icmp eq i32 %call323, 0
  br i1 %tobool324, label %if.end327, label %if.then325

if.then325:                                       ; preds = %cont322, %if.end314
  %51 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr326 = getelementptr inbounds i8* %51, i32 -1
  store i8* %incdec.ptr326, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

if.end327:                                        ; preds = %cont322
  %52 = load i8** %s, align 4, !tbaa !3
  %call328 = call i8* @get_strarg(i8* %52, i32* %arglen)
  %53 = load i8* %call328, align 1, !tbaa !0
  %tobool329 = icmp eq i8 %53, 0
  br i1 %tobool329, label %flagerr, label %cont333

cont333:                                          ; preds = %if.end327
  store i8 0, i8* %call328, align 1, !tbaa !0
  %54 = load i8** %s, align 4, !tbaa !3
  %55 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr336 = getelementptr inbounds i8* %54, i32 %55
  %call337 = call fastcc i8* @untok_and_escape(i8* %add.ptr336, i32 %escapes.04566, i32 %tok_arg.04568)
  %postmul.0.call337 = select i1 %tobool315, i8* %postmul.04580, i8* %call337
  %call337.premul.0 = select i1 %tobool315, i8* %call337, i8* %premul.04581
  store i8 %53, i8* %call328, align 1, !tbaa !0
  %add.ptr342 = getelementptr inbounds i8* %call328, i32 %55
  store i8* %add.ptr342, i8** %s, align 4, !tbaa !3
  br i1 %49, label %cont345, label %ioc_bb344

ioc_bb344:                                        ; preds = %cont333
  %56 = sext i32 %47 to i64
  call void @__ioc_report_conversion(i32 2051, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %56, i8 1) nounwind
  %.pre4815 = load i8** %s, align 4, !tbaa !3
  br label %cont345

cont345:                                          ; preds = %ioc_bb344, %cont333
  %57 = phi i8* [ %.pre4815, %ioc_bb344 ], [ %add.ptr342, %cont333 ]
  %call346 = call i32 @memcmp(i8* %incdec.ptr308, i8* %add.ptr342, i32 %47) nounwind readonly
  %tobool347 = icmp eq i32 %call346, 0
  br i1 %tobool347, label %if.end350, label %if.then348

if.then348:                                       ; preds = %cont345
  %incdec.ptr349 = getelementptr inbounds i8* %57, i32 -1
  store i8* %incdec.ptr349, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

if.end350:                                        ; preds = %cont345
  %call351 = call i8* @get_strarg(i8* %57, i32* %arglen)
  %58 = load i8* %call351, align 1, !tbaa !0
  %tobool352 = icmp eq i8 %58, 0
  br i1 %tobool352, label %flagerr, label %cont356

cont356:                                          ; preds = %if.end350
  store i8 0, i8* %call351, align 1, !tbaa !0
  %59 = load i8** %s, align 4, !tbaa !3
  %60 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr359 = getelementptr inbounds i8* %59, i32 %60
  %call360 = call fastcc i8* @untok_and_escape(i8* %add.ptr359, i32 %escapes.04566, i32 %tok_arg.04568)
  %postone.0.call360 = select i1 %tobool315, i8* %postone.04576, i8* %call360
  %call360.preone.0 = select i1 %tobool315, i8* %call360, i8* %preone.04578
  store i8 %58, i8* %call351, align 1, !tbaa !0
  %add.ptr365.sum = add i32 %60, -1
  %add.ptr366 = getelementptr inbounds i8* %call351, i32 %add.ptr365.sum
  store i8* %add.ptr366, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

sw.bb367:                                         ; preds = %for.body
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %multi_width.04572, i32 1)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb368, label %for.cond.backedge

ioc_bb368:                                        ; preds = %sw.bb367
  %64 = sext i32 %multi_width.04572 to i64
  call void @__ioc_report_add_overflow(i32 2073, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %64, i64 1, i8 13) nounwind
  br label %for.cond.backedge

sw.bb370:                                         ; preds = %for.body
  br label %for.cond.backedge

cont377:                                          ; preds = %for.body
  br label %for.cond.backedge

cont384:                                          ; preds = %for.body
  br label %for.cond.backedge

sw.bb385:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb386:                                         ; preds = %for.body
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %presc.04554, i32 1)
  %66 = extractvalue { i32, i1 } %65, 0
  %67 = extractvalue { i32, i1 } %65, 1
  br i1 %67, label %ioc_bb387, label %for.cond.backedge

ioc_bb387:                                        ; preds = %sw.bb386
  %68 = sext i32 %presc.04554 to i64
  call void @__ioc_report_add_overflow(i32 2099, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %68, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %sw.bb386, %sw.bb367, %sw.bb263, %cont259, %sw.bb196, %for.body, %for.body, %ioc_bb387, %ioc_bb368, %ioc_bb264, %ioc_bb260, %ioc_bb197, %sw.bb193, %sw.bb199, %sw.bb200, %sw.bb201, %sw.bb203, %sw.bb205, %sw.bb207, %sw.bb209, %if.end217, %sw.bb219, %sw.bb220, %sw.bb221, %sw.bb227, %sw.bb229, %sw.bb231, %sw.bb233, %sw.bb235, %sw.bb237, %sw.bb266, %sw.bb267, %sw.bb268, %sw.bb269, %sw.bb270, %sw.bb271, %sw.bb272, %sw.bb273, %cont276, %cont294, %if.then325, %if.then348, %cont356, %sw.bb370, %cont377, %cont384, %sw.bb385, %while.end, %sw.bb425, %while.end446, %sw.bb451, %sw.bb453, %while.end467, %if.end251, %sw.bb222
  %aspar.0.be = phi i32 [ %aspar.04552, %while.end467 ], [ %aspar.04552, %sw.bb453 ], [ %aspar.04552, %sw.bb451 ], [ %aspar.04552, %while.end446 ], [ %aspar.04552, %sw.bb425 ], [ %aspar.04552, %while.end ], [ %aspar.04552, %sw.bb385 ], [ %aspar.04552, %cont384 ], [ %aspar.04552, %cont377 ], [ %aspar.04552, %sw.bb370 ], [ %aspar.04552, %if.then325 ], [ %aspar.04552, %if.then348 ], [ %aspar.04552, %cont356 ], [ %aspar.04552, %cont294 ], [ %aspar.04552, %cont276 ], [ %aspar.04552, %sw.bb273 ], [ %aspar.04552, %sw.bb272 ], [ %aspar.04552, %sw.bb271 ], [ %aspar.04552, %sw.bb270 ], [ %aspar.04552, %sw.bb269 ], [ 1, %sw.bb268 ], [ %aspar.04552, %sw.bb267 ], [ %aspar.04552, %sw.bb266 ], [ %aspar.04552, %if.end251 ], [ %aspar.04552, %sw.bb237 ], [ %aspar.04552, %sw.bb235 ], [ %aspar.04552, %sw.bb233 ], [ %aspar.04552, %sw.bb231 ], [ %aspar.04552, %sw.bb229 ], [ %aspar.04552, %sw.bb227 ], [ %aspar.04552, %sw.bb221 ], [ %aspar.04552, %sw.bb220 ], [ %aspar.04552, %sw.bb219 ], [ %aspar.04552, %if.end217 ], [ %aspar.04552, %sw.bb209 ], [ %aspar.04552, %sw.bb207 ], [ %aspar.04552, %sw.bb205 ], [ %aspar.04552, %sw.bb203 ], [ %aspar.04552, %sw.bb201 ], [ %aspar.04552, %sw.bb200 ], [ %aspar.04552, %sw.bb199 ], [ %aspar.04552, %sw.bb193 ], [ %aspar.04552, %ioc_bb197 ], [ %aspar.04552, %sw.bb222 ], [ %aspar.04552, %ioc_bb260 ], [ %aspar.04552, %ioc_bb264 ], [ %aspar.04552, %ioc_bb368 ], [ %aspar.04552, %ioc_bb387 ], [ %aspar.04552, %for.body ], [ %aspar.04552, %for.body ], [ %aspar.04552, %sw.bb196 ], [ %aspar.04552, %cont259 ], [ %aspar.04552, %sw.bb263 ], [ %aspar.04552, %sw.bb367 ], [ %aspar.04552, %sw.bb386 ]
  %presc.0.be = phi i32 [ %presc.04554, %while.end467 ], [ %presc.04554, %sw.bb453 ], [ %presc.04554, %sw.bb451 ], [ %presc.04554, %while.end446 ], [ %presc.04554, %sw.bb425 ], [ %presc.04554, %while.end ], [ %presc.04554, %sw.bb385 ], [ %presc.04554, %cont384 ], [ %presc.04554, %cont377 ], [ %presc.04554, %sw.bb370 ], [ %presc.04554, %if.then325 ], [ %presc.04554, %if.then348 ], [ %presc.04554, %cont356 ], [ %presc.04554, %cont294 ], [ %presc.04554, %cont276 ], [ %presc.04554, %sw.bb273 ], [ %presc.04554, %sw.bb272 ], [ %presc.04554, %sw.bb271 ], [ %presc.04554, %sw.bb270 ], [ %presc.04554, %sw.bb269 ], [ %presc.04554, %sw.bb268 ], [ %presc.04554, %sw.bb267 ], [ %presc.04554, %sw.bb266 ], [ %presc.04554, %if.end251 ], [ %presc.04554, %sw.bb237 ], [ %presc.04554, %sw.bb235 ], [ %presc.04554, %sw.bb233 ], [ %presc.04554, %sw.bb231 ], [ %presc.04554, %sw.bb229 ], [ %presc.04554, %sw.bb227 ], [ %presc.04554, %sw.bb221 ], [ %presc.04554, %sw.bb220 ], [ %presc.04554, %sw.bb219 ], [ %presc.04554, %if.end217 ], [ %presc.04554, %sw.bb209 ], [ %presc.04554, %sw.bb207 ], [ %presc.04554, %sw.bb205 ], [ %presc.04554, %sw.bb203 ], [ %presc.04554, %sw.bb201 ], [ %presc.04554, %sw.bb200 ], [ %presc.04554, %sw.bb199 ], [ %presc.04554, %sw.bb193 ], [ %presc.04554, %ioc_bb197 ], [ %presc.04554, %sw.bb222 ], [ %presc.04554, %ioc_bb260 ], [ %presc.04554, %ioc_bb264 ], [ %presc.04554, %ioc_bb368 ], [ %66, %ioc_bb387 ], [ %presc.04554, %for.body ], [ %presc.04554, %for.body ], [ %presc.04554, %sw.bb196 ], [ %presc.04554, %cont259 ], [ %presc.04554, %sw.bb263 ], [ %presc.04554, %sw.bb367 ], [ %66, %sw.bb386 ]
  %getkeys.0.be = phi i32 [ %getkeys.04556, %while.end467 ], [ %getkeys.04556, %sw.bb453 ], [ %getkeys.04556, %sw.bb451 ], [ %getkeys.04556, %while.end446 ], [ %getkeys.04556, %sw.bb425 ], [ %getkeys.2.lcssa, %while.end ], [ %getkeys.04556, %sw.bb385 ], [ %getkeys.04556, %cont384 ], [ %getkeys.04556, %cont377 ], [ %getkeys.04556, %sw.bb370 ], [ %getkeys.04556, %if.then325 ], [ %getkeys.04556, %if.then348 ], [ %getkeys.04556, %cont356 ], [ %getkeys.04556, %cont294 ], [ %getkeys.04556, %cont276 ], [ %getkeys.04556, %sw.bb273 ], [ %getkeys.04556, %sw.bb272 ], [ %getkeys.04556, %sw.bb271 ], [ %getkeys.04556, %sw.bb270 ], [ %getkeys.04556, %sw.bb269 ], [ %getkeys.04556, %sw.bb268 ], [ %getkeys.04556, %sw.bb267 ], [ %getkeys.04556, %sw.bb266 ], [ %getkeys.04556, %if.end251 ], [ %getkeys.04556, %sw.bb237 ], [ %getkeys.04556, %sw.bb235 ], [ %getkeys.04556, %sw.bb233 ], [ %getkeys.04556, %sw.bb231 ], [ %getkeys.04556, %sw.bb229 ], [ %getkeys.04556, %sw.bb227 ], [ %getkeys.04556, %sw.bb221 ], [ %getkeys.04556, %sw.bb220 ], [ %getkeys.04556, %sw.bb219 ], [ %getkeys.04556, %if.end217 ], [ %getkeys.04556, %sw.bb209 ], [ %getkeys.04556, %sw.bb207 ], [ %getkeys.04556, %sw.bb205 ], [ %getkeys.04556, %sw.bb203 ], [ %getkeys.04556, %sw.bb201 ], [ %getkeys.04556, %sw.bb200 ], [ %getkeys.04556, %sw.bb199 ], [ %getkeys.04556, %sw.bb193 ], [ %getkeys.04556, %ioc_bb197 ], [ %getkeys.04556, %sw.bb222 ], [ %getkeys.04556, %ioc_bb260 ], [ %getkeys.04556, %ioc_bb264 ], [ %getkeys.04556, %ioc_bb368 ], [ %getkeys.04556, %ioc_bb387 ], [ %getkeys.04556, %for.body ], [ %getkeys.04556, %for.body ], [ %getkeys.04556, %sw.bb196 ], [ %getkeys.04556, %cont259 ], [ %getkeys.04556, %sw.bb263 ], [ %getkeys.04556, %sw.bb367 ], [ %getkeys.04556, %sw.bb386 ]
  %nojoin.0.be = phi i32 [ %nojoin.04558, %while.end467 ], [ %nojoin.04558, %sw.bb453 ], [ %nojoin.04558, %sw.bb451 ], [ %nojoin.04558, %while.end446 ], [ %nojoin.04558, %sw.bb425 ], [ %nojoin.04558, %while.end ], [ %nojoin.04558, %sw.bb385 ], [ %nojoin.04558, %cont384 ], [ %nojoin.04558, %cont377 ], [ %nojoin.04558, %sw.bb370 ], [ %nojoin.04558, %if.then325 ], [ %nojoin.04558, %if.then348 ], [ %nojoin.04558, %cont356 ], [ %nojoin.04558, %cont294 ], [ %nojoin.04558, %cont276 ], [ %nojoin.04558, %sw.bb273 ], [ %nojoin.04558, %sw.bb272 ], [ %nojoin.04558, %sw.bb271 ], [ %nojoin.04558, %sw.bb270 ], [ %nojoin.04558, %sw.bb269 ], [ %nojoin.04558, %sw.bb268 ], [ %nojoin.04558, %sw.bb267 ], [ %nojoin.04558, %sw.bb266 ], [ %nojoin.04558, %if.end251 ], [ %nojoin.04558, %sw.bb237 ], [ %nojoin.04558, %sw.bb235 ], [ %nojoin.04558, %sw.bb233 ], [ %nojoin.04558, %sw.bb231 ], [ %nojoin.04558, %sw.bb229 ], [ %nojoin.04558, %sw.bb227 ], [ %nojoin.04558, %sw.bb221 ], [ %nojoin.04558, %sw.bb220 ], [ %nojoin.04558, %sw.bb219 ], [ %nojoin.04558, %if.end217 ], [ %nojoin.04558, %sw.bb209 ], [ %nojoin.04558, %sw.bb207 ], [ %nojoin.04558, %sw.bb205 ], [ %nojoin.04558, %sw.bb203 ], [ %nojoin.04558, %sw.bb201 ], [ %nojoin.04558, %sw.bb200 ], [ 2, %sw.bb199 ], [ %nojoin.04558, %sw.bb193 ], [ %nojoin.04558, %ioc_bb197 ], [ %nojoin.04558, %sw.bb222 ], [ %nojoin.04558, %ioc_bb260 ], [ %nojoin.04558, %ioc_bb264 ], [ %nojoin.04558, %ioc_bb368 ], [ %nojoin.04558, %ioc_bb387 ], [ %nojoin.04558, %for.body ], [ %nojoin.04558, %for.body ], [ %nojoin.04558, %sw.bb196 ], [ %nojoin.04558, %cont259 ], [ %nojoin.04558, %sw.bb263 ], [ %nojoin.04558, %sw.bb367 ], [ %nojoin.04558, %sw.bb386 ]
  %hkeys.0.be = phi i8 [ %hkeys.04560, %while.end467 ], [ %hkeys.04560, %sw.bb453 ], [ %hkeys.04560, %sw.bb451 ], [ %hkeys.04560, %while.end446 ], [ %hkeys.04560, %sw.bb425 ], [ %hkeys.04560, %while.end ], [ %hkeys.04560, %sw.bb385 ], [ %hkeys.04560, %cont384 ], [ 2, %cont377 ], [ %hkeys.04560, %sw.bb370 ], [ %hkeys.04560, %if.then325 ], [ %hkeys.04560, %if.then348 ], [ %hkeys.04560, %cont356 ], [ %hkeys.04560, %cont294 ], [ %hkeys.04560, %cont276 ], [ %hkeys.04560, %sw.bb273 ], [ %hkeys.04560, %sw.bb272 ], [ %hkeys.04560, %sw.bb271 ], [ %hkeys.04560, %sw.bb270 ], [ %hkeys.04560, %sw.bb269 ], [ %hkeys.04560, %sw.bb268 ], [ %hkeys.04560, %sw.bb267 ], [ %hkeys.04560, %sw.bb266 ], [ %hkeys.04560, %if.end251 ], [ %hkeys.04560, %sw.bb237 ], [ %hkeys.04560, %sw.bb235 ], [ %hkeys.04560, %sw.bb233 ], [ %hkeys.04560, %sw.bb231 ], [ %hkeys.04560, %sw.bb229 ], [ %hkeys.04560, %sw.bb227 ], [ %hkeys.04560, %sw.bb221 ], [ %hkeys.04560, %sw.bb220 ], [ %hkeys.04560, %sw.bb219 ], [ %hkeys.04560, %if.end217 ], [ %hkeys.04560, %sw.bb209 ], [ %hkeys.04560, %sw.bb207 ], [ %hkeys.04560, %sw.bb205 ], [ %hkeys.04560, %sw.bb203 ], [ %hkeys.04560, %sw.bb201 ], [ %hkeys.04560, %sw.bb200 ], [ %hkeys.04560, %sw.bb199 ], [ %hkeys.04560, %sw.bb193 ], [ %hkeys.04560, %ioc_bb197 ], [ %hkeys.04560, %sw.bb222 ], [ %hkeys.04560, %ioc_bb260 ], [ %hkeys.04560, %ioc_bb264 ], [ %hkeys.04560, %ioc_bb368 ], [ %hkeys.04560, %ioc_bb387 ], [ %hkeys.04560, %for.body ], [ %hkeys.04560, %for.body ], [ %hkeys.04560, %sw.bb196 ], [ %hkeys.04560, %cont259 ], [ %hkeys.04560, %sw.bb263 ], [ %hkeys.04560, %sw.bb367 ], [ %hkeys.04560, %sw.bb386 ]
  %hvals.0.be = phi i8 [ %hvals.04562, %while.end467 ], [ %hvals.04562, %sw.bb453 ], [ %hvals.04562, %sw.bb451 ], [ %hvals.04562, %while.end446 ], [ %hvals.04562, %sw.bb425 ], [ %hvals.04562, %while.end ], [ %hvals.04562, %sw.bb385 ], [ 1, %cont384 ], [ %hvals.04562, %cont377 ], [ %hvals.04562, %sw.bb370 ], [ %hvals.04562, %if.then325 ], [ %hvals.04562, %if.then348 ], [ %hvals.04562, %cont356 ], [ %hvals.04562, %cont294 ], [ %hvals.04562, %cont276 ], [ %hvals.04562, %sw.bb273 ], [ %hvals.04562, %sw.bb272 ], [ %hvals.04562, %sw.bb271 ], [ %hvals.04562, %sw.bb270 ], [ %hvals.04562, %sw.bb269 ], [ %hvals.04562, %sw.bb268 ], [ %hvals.04562, %sw.bb267 ], [ %hvals.04562, %sw.bb266 ], [ %hvals.04562, %if.end251 ], [ %hvals.04562, %sw.bb237 ], [ %hvals.04562, %sw.bb235 ], [ %hvals.04562, %sw.bb233 ], [ %hvals.04562, %sw.bb231 ], [ %hvals.04562, %sw.bb229 ], [ %hvals.04562, %sw.bb227 ], [ %hvals.04562, %sw.bb221 ], [ %hvals.04562, %sw.bb220 ], [ %hvals.04562, %sw.bb219 ], [ %hvals.04562, %if.end217 ], [ %hvals.04562, %sw.bb209 ], [ %hvals.04562, %sw.bb207 ], [ %hvals.04562, %sw.bb205 ], [ %hvals.04562, %sw.bb203 ], [ %hvals.04562, %sw.bb201 ], [ %hvals.04562, %sw.bb200 ], [ %hvals.04562, %sw.bb199 ], [ %hvals.04562, %sw.bb193 ], [ %hvals.04562, %ioc_bb197 ], [ %hvals.04562, %sw.bb222 ], [ %hvals.04562, %ioc_bb260 ], [ %hvals.04562, %ioc_bb264 ], [ %hvals.04562, %ioc_bb368 ], [ %hvals.04562, %ioc_bb387 ], [ %hvals.04562, %for.body ], [ %hvals.04562, %for.body ], [ %hvals.04562, %sw.bb196 ], [ %hvals.04562, %cont259 ], [ %hvals.04562, %sw.bb263 ], [ %hvals.04562, %sw.bb367 ], [ %hvals.04562, %sw.bb386 ]
  %eval.0.be = phi i32 [ %eval.04564, %while.end467 ], [ %eval.04564, %sw.bb453 ], [ %eval.04564, %sw.bb451 ], [ %eval.04564, %while.end446 ], [ %eval.04564, %sw.bb425 ], [ %eval.04564, %while.end ], [ %eval.04564, %sw.bb385 ], [ %eval.04564, %cont384 ], [ %eval.04564, %cont377 ], [ %eval.04564, %sw.bb370 ], [ %eval.04564, %if.then325 ], [ %eval.04564, %if.then348 ], [ %eval.04564, %cont356 ], [ %eval.04564, %cont294 ], [ %eval.04564, %cont276 ], [ %eval.04564, %sw.bb273 ], [ %eval.04564, %sw.bb272 ], [ %eval.04564, %sw.bb271 ], [ %eval.04564, %sw.bb270 ], [ %eval.04564, %sw.bb269 ], [ %eval.04564, %sw.bb268 ], [ 1, %sw.bb267 ], [ %eval.04564, %sw.bb266 ], [ %eval.04564, %if.end251 ], [ %eval.04564, %sw.bb237 ], [ %eval.04564, %sw.bb235 ], [ %eval.04564, %sw.bb233 ], [ %eval.04564, %sw.bb231 ], [ %eval.04564, %sw.bb229 ], [ %eval.04564, %sw.bb227 ], [ %eval.04564, %sw.bb221 ], [ %eval.04564, %sw.bb220 ], [ %eval.04564, %sw.bb219 ], [ %eval.04564, %if.end217 ], [ %eval.04564, %sw.bb209 ], [ %eval.04564, %sw.bb207 ], [ %eval.04564, %sw.bb205 ], [ %eval.04564, %sw.bb203 ], [ %eval.04564, %sw.bb201 ], [ %eval.04564, %sw.bb200 ], [ %eval.04564, %sw.bb199 ], [ %eval.04564, %sw.bb193 ], [ %eval.04564, %ioc_bb197 ], [ %eval.04564, %sw.bb222 ], [ %eval.04564, %ioc_bb260 ], [ %eval.04564, %ioc_bb264 ], [ %eval.04564, %ioc_bb368 ], [ %eval.04564, %ioc_bb387 ], [ %eval.04564, %for.body ], [ %eval.04564, %for.body ], [ %eval.04564, %sw.bb196 ], [ %eval.04564, %cont259 ], [ %eval.04564, %sw.bb263 ], [ %eval.04564, %sw.bb367 ], [ %eval.04564, %sw.bb386 ]
  %escapes.0.be = phi i32 [ %escapes.04566, %while.end467 ], [ %escapes.04566, %sw.bb453 ], [ %escapes.04566, %sw.bb451 ], [ %escapes.04566, %while.end446 ], [ %escapes.04566, %sw.bb425 ], [ %escapes.04566, %while.end ], [ %escapes.04566, %sw.bb385 ], [ %escapes.04566, %cont384 ], [ %escapes.04566, %cont377 ], [ 1, %sw.bb370 ], [ %escapes.04566, %if.then325 ], [ %escapes.04566, %if.then348 ], [ %escapes.04566, %cont356 ], [ %escapes.04566, %cont294 ], [ %escapes.04566, %cont276 ], [ %escapes.04566, %sw.bb273 ], [ %escapes.04566, %sw.bb272 ], [ %escapes.04566, %sw.bb271 ], [ %escapes.04566, %sw.bb270 ], [ %escapes.04566, %sw.bb269 ], [ %escapes.04566, %sw.bb268 ], [ %escapes.04566, %sw.bb267 ], [ %escapes.04566, %sw.bb266 ], [ %escapes.04566, %if.end251 ], [ %escapes.04566, %sw.bb237 ], [ %escapes.04566, %sw.bb235 ], [ %escapes.04566, %sw.bb233 ], [ %escapes.04566, %sw.bb231 ], [ %escapes.04566, %sw.bb229 ], [ %escapes.04566, %sw.bb227 ], [ %escapes.04566, %sw.bb221 ], [ %escapes.04566, %sw.bb220 ], [ %escapes.04566, %sw.bb219 ], [ %escapes.04566, %if.end217 ], [ %escapes.04566, %sw.bb209 ], [ %escapes.04566, %sw.bb207 ], [ %escapes.04566, %sw.bb205 ], [ %escapes.04566, %sw.bb203 ], [ %escapes.04566, %sw.bb201 ], [ %escapes.04566, %sw.bb200 ], [ %escapes.04566, %sw.bb199 ], [ %escapes.04566, %sw.bb193 ], [ %escapes.04566, %ioc_bb197 ], [ %escapes.04566, %sw.bb222 ], [ %escapes.04566, %ioc_bb260 ], [ %escapes.04566, %ioc_bb264 ], [ %escapes.04566, %ioc_bb368 ], [ %escapes.04566, %ioc_bb387 ], [ %escapes.04566, %for.body ], [ %escapes.04566, %for.body ], [ %escapes.04566, %sw.bb196 ], [ %escapes.04566, %cont259 ], [ %escapes.04566, %sw.bb263 ], [ %escapes.04566, %sw.bb367 ], [ %escapes.04566, %sw.bb386 ]
  %tok_arg.0.be = phi i32 [ %tok_arg.04568, %while.end467 ], [ %tok_arg.04568, %sw.bb453 ], [ %tok_arg.04568, %sw.bb451 ], [ %tok_arg.04568, %while.end446 ], [ %tok_arg.04568, %sw.bb425 ], [ %tok_arg.04568, %while.end ], [ %tok_arg.04568, %sw.bb385 ], [ %tok_arg.04568, %cont384 ], [ %tok_arg.04568, %cont377 ], [ %tok_arg.04568, %sw.bb370 ], [ %tok_arg.04568, %if.then325 ], [ %tok_arg.04568, %if.then348 ], [ %tok_arg.04568, %cont356 ], [ %tok_arg.04568, %cont294 ], [ %tok_arg.04568, %cont276 ], [ %tok_arg.04568, %sw.bb273 ], [ %tok_arg.04568, %sw.bb272 ], [ %tok_arg.04568, %sw.bb271 ], [ %tok_arg.04568, %sw.bb270 ], [ %tok_arg.04568, %sw.bb269 ], [ %tok_arg.04568, %sw.bb268 ], [ %tok_arg.04568, %sw.bb267 ], [ %tok_arg.04568, %sw.bb266 ], [ %tok_arg.04568, %if.end251 ], [ %tok_arg.04568, %sw.bb237 ], [ %tok_arg.04568, %sw.bb235 ], [ %tok_arg.04568, %sw.bb233 ], [ %tok_arg.04568, %sw.bb231 ], [ %tok_arg.04568, %sw.bb229 ], [ %tok_arg.04568, %sw.bb227 ], [ %tok_arg.04568, %sw.bb221 ], [ %tok_arg.04568, %sw.bb220 ], [ %tok_arg.04568, %sw.bb219 ], [ %tok_arg.04568, %if.end217 ], [ %tok_arg.04568, %sw.bb209 ], [ %tok_arg.04568, %sw.bb207 ], [ %tok_arg.04568, %sw.bb205 ], [ %tok_arg.04568, %sw.bb203 ], [ %tok_arg.04568, %sw.bb201 ], [ %tok_arg.04568, %sw.bb200 ], [ %tok_arg.04568, %sw.bb199 ], [ %21, %sw.bb193 ], [ %tok_arg.04568, %ioc_bb197 ], [ %tok_arg.04568, %sw.bb222 ], [ %tok_arg.04568, %ioc_bb260 ], [ %tok_arg.04568, %ioc_bb264 ], [ %tok_arg.04568, %ioc_bb368 ], [ %tok_arg.04568, %ioc_bb387 ], [ %tok_arg.04568, %for.body ], [ %tok_arg.04568, %for.body ], [ %tok_arg.04568, %sw.bb196 ], [ %tok_arg.04568, %cont259 ], [ %tok_arg.04568, %sw.bb263 ], [ %tok_arg.04568, %sw.bb367 ], [ %tok_arg.04568, %sw.bb386 ]
  %arrasg.0.be = phi i32 [ %arrasg.04570, %while.end467 ], [ %arrasg.04570, %sw.bb453 ], [ %arrasg.04570, %sw.bb451 ], [ %arrasg.04570, %while.end446 ], [ %arrasg.04570, %sw.bb425 ], [ %arrasg.04570, %while.end ], [ %arrasg.04570, %sw.bb385 ], [ %arrasg.04570, %cont384 ], [ %arrasg.04570, %cont377 ], [ %arrasg.04570, %sw.bb370 ], [ %arrasg.04570, %if.then325 ], [ %arrasg.04570, %if.then348 ], [ %arrasg.04570, %cont356 ], [ %arrasg.04570, %cont294 ], [ %arrasg.04570, %cont276 ], [ %arrasg.04570, %sw.bb273 ], [ %arrasg.04570, %sw.bb272 ], [ %arrasg.04570, %sw.bb271 ], [ %arrasg.04570, %sw.bb270 ], [ %arrasg.04570, %sw.bb269 ], [ %arrasg.04570, %sw.bb268 ], [ %arrasg.04570, %sw.bb267 ], [ %arrasg.04570, %sw.bb266 ], [ %arrasg.04570, %if.end251 ], [ %arrasg.04570, %sw.bb237 ], [ %arrasg.04570, %sw.bb235 ], [ %arrasg.04570, %sw.bb233 ], [ %arrasg.04570, %sw.bb231 ], [ %arrasg.04570, %sw.bb229 ], [ %arrasg.04570, %sw.bb227 ], [ %arrasg.04570, %sw.bb221 ], [ %arrasg.04570, %sw.bb220 ], [ %arrasg.04570, %sw.bb219 ], [ %arrasg.04570, %if.end217 ], [ %arrasg.04570, %sw.bb209 ], [ %arrasg.04570, %sw.bb207 ], [ %arrasg.04570, %sw.bb205 ], [ %arrasg.04570, %sw.bb203 ], [ %arrasg.04570, %sw.bb201 ], [ %arrasg.04570, %sw.bb200 ], [ %arrasg.04570, %sw.bb199 ], [ %arrasg.04570, %sw.bb193 ], [ %23, %ioc_bb197 ], [ %arrasg.04570, %sw.bb222 ], [ %arrasg.04570, %ioc_bb260 ], [ %arrasg.04570, %ioc_bb264 ], [ %arrasg.04570, %ioc_bb368 ], [ %arrasg.04570, %ioc_bb387 ], [ %arrasg.04570, %for.body ], [ %arrasg.04570, %for.body ], [ %23, %sw.bb196 ], [ %arrasg.04570, %cont259 ], [ %arrasg.04570, %sw.bb263 ], [ %arrasg.04570, %sw.bb367 ], [ %arrasg.04570, %sw.bb386 ]
  %multi_width.0.be = phi i32 [ %multi_width.04572, %while.end467 ], [ %multi_width.04572, %sw.bb453 ], [ %multi_width.04572, %sw.bb451 ], [ %multi_width.04572, %while.end446 ], [ %multi_width.04572, %sw.bb425 ], [ %multi_width.04572, %while.end ], [ %multi_width.04572, %sw.bb385 ], [ %multi_width.04572, %cont384 ], [ %multi_width.04572, %cont377 ], [ %multi_width.04572, %sw.bb370 ], [ %multi_width.04572, %if.then325 ], [ %multi_width.04572, %if.then348 ], [ %multi_width.04572, %cont356 ], [ %multi_width.04572, %cont294 ], [ %multi_width.04572, %cont276 ], [ %multi_width.04572, %sw.bb273 ], [ %multi_width.04572, %sw.bb272 ], [ %multi_width.04572, %sw.bb271 ], [ %multi_width.04572, %sw.bb270 ], [ %multi_width.04572, %sw.bb269 ], [ %multi_width.04572, %sw.bb268 ], [ %multi_width.04572, %sw.bb267 ], [ %multi_width.04572, %sw.bb266 ], [ %multi_width.04572, %if.end251 ], [ %multi_width.04572, %sw.bb237 ], [ %multi_width.04572, %sw.bb235 ], [ %multi_width.04572, %sw.bb233 ], [ %multi_width.04572, %sw.bb231 ], [ %multi_width.04572, %sw.bb229 ], [ %multi_width.04572, %sw.bb227 ], [ %multi_width.04572, %sw.bb221 ], [ %multi_width.04572, %sw.bb220 ], [ %multi_width.04572, %sw.bb219 ], [ %multi_width.04572, %if.end217 ], [ %multi_width.04572, %sw.bb209 ], [ %multi_width.04572, %sw.bb207 ], [ %multi_width.04572, %sw.bb205 ], [ %multi_width.04572, %sw.bb203 ], [ %multi_width.04572, %sw.bb201 ], [ %multi_width.04572, %sw.bb200 ], [ %multi_width.04572, %sw.bb199 ], [ %multi_width.04572, %sw.bb193 ], [ %multi_width.04572, %ioc_bb197 ], [ %multi_width.04572, %sw.bb222 ], [ %multi_width.04572, %ioc_bb260 ], [ %multi_width.04572, %ioc_bb264 ], [ %62, %ioc_bb368 ], [ %multi_width.04572, %ioc_bb387 ], [ %multi_width.04572, %for.body ], [ %multi_width.04572, %for.body ], [ %multi_width.04572, %sw.bb196 ], [ %multi_width.04572, %cont259 ], [ %multi_width.04572, %sw.bb263 ], [ %62, %sw.bb367 ], [ %multi_width.04572, %sw.bb386 ]
  %postnum.0.be = phi i64 [ %postnum.04574, %while.end467 ], [ %postnum.04574, %sw.bb453 ], [ %postnum.04574, %sw.bb451 ], [ %postnum.04574, %while.end446 ], [ %postnum.04574, %sw.bb425 ], [ %postnum.04574, %while.end ], [ %postnum.04574, %sw.bb385 ], [ %postnum.04574, %cont384 ], [ %postnum.04574, %cont377 ], [ %postnum.04574, %sw.bb370 ], [ %postnum.0.conv310, %if.then325 ], [ %postnum.0.conv310, %if.then348 ], [ %postnum.0.conv310, %cont356 ], [ %postnum.04574, %cont294 ], [ %postnum.04574, %cont276 ], [ %postnum.04574, %sw.bb273 ], [ %postnum.04574, %sw.bb272 ], [ %postnum.04574, %sw.bb271 ], [ %postnum.04574, %sw.bb270 ], [ %postnum.04574, %sw.bb269 ], [ %postnum.04574, %sw.bb268 ], [ %postnum.04574, %sw.bb267 ], [ %postnum.04574, %sw.bb266 ], [ %postnum.04574, %if.end251 ], [ %postnum.04574, %sw.bb237 ], [ %postnum.04574, %sw.bb235 ], [ %postnum.04574, %sw.bb233 ], [ %postnum.04574, %sw.bb231 ], [ %postnum.04574, %sw.bb229 ], [ %postnum.04574, %sw.bb227 ], [ %postnum.04574, %sw.bb221 ], [ %postnum.04574, %sw.bb220 ], [ %postnum.04574, %sw.bb219 ], [ %postnum.04574, %if.end217 ], [ %postnum.04574, %sw.bb209 ], [ %postnum.04574, %sw.bb207 ], [ %postnum.04574, %sw.bb205 ], [ %postnum.04574, %sw.bb203 ], [ %postnum.04574, %sw.bb201 ], [ %postnum.04574, %sw.bb200 ], [ %postnum.04574, %sw.bb199 ], [ %postnum.04574, %sw.bb193 ], [ %postnum.04574, %ioc_bb197 ], [ %postnum.04574, %sw.bb222 ], [ %postnum.04574, %ioc_bb260 ], [ %postnum.04574, %ioc_bb264 ], [ %postnum.04574, %ioc_bb368 ], [ %postnum.04574, %ioc_bb387 ], [ %postnum.04574, %for.body ], [ %postnum.04574, %for.body ], [ %postnum.04574, %sw.bb196 ], [ %postnum.04574, %cont259 ], [ %postnum.04574, %sw.bb263 ], [ %postnum.04574, %sw.bb367 ], [ %postnum.04574, %sw.bb386 ]
  %prenum.0.be = phi i64 [ %prenum.04575, %while.end467 ], [ %prenum.04575, %sw.bb453 ], [ %prenum.04575, %sw.bb451 ], [ %prenum.04575, %while.end446 ], [ %prenum.04575, %sw.bb425 ], [ %prenum.04575, %while.end ], [ %prenum.04575, %sw.bb385 ], [ %prenum.04575, %cont384 ], [ %prenum.04575, %cont377 ], [ %prenum.04575, %sw.bb370 ], [ %conv310.prenum.0, %if.then325 ], [ %conv310.prenum.0, %if.then348 ], [ %conv310.prenum.0, %cont356 ], [ %prenum.04575, %cont294 ], [ %prenum.04575, %cont276 ], [ %prenum.04575, %sw.bb273 ], [ %prenum.04575, %sw.bb272 ], [ %prenum.04575, %sw.bb271 ], [ %prenum.04575, %sw.bb270 ], [ %prenum.04575, %sw.bb269 ], [ %prenum.04575, %sw.bb268 ], [ %prenum.04575, %sw.bb267 ], [ %prenum.04575, %sw.bb266 ], [ %prenum.04575, %if.end251 ], [ %prenum.04575, %sw.bb237 ], [ %prenum.04575, %sw.bb235 ], [ %prenum.04575, %sw.bb233 ], [ %prenum.04575, %sw.bb231 ], [ %prenum.04575, %sw.bb229 ], [ %prenum.04575, %sw.bb227 ], [ %prenum.04575, %sw.bb221 ], [ %prenum.04575, %sw.bb220 ], [ %prenum.04575, %sw.bb219 ], [ %prenum.04575, %if.end217 ], [ %prenum.04575, %sw.bb209 ], [ %prenum.04575, %sw.bb207 ], [ %prenum.04575, %sw.bb205 ], [ %prenum.04575, %sw.bb203 ], [ %prenum.04575, %sw.bb201 ], [ %prenum.04575, %sw.bb200 ], [ %prenum.04575, %sw.bb199 ], [ %prenum.04575, %sw.bb193 ], [ %prenum.04575, %ioc_bb197 ], [ %prenum.04575, %sw.bb222 ], [ %prenum.04575, %ioc_bb260 ], [ %prenum.04575, %ioc_bb264 ], [ %prenum.04575, %ioc_bb368 ], [ %prenum.04575, %ioc_bb387 ], [ %prenum.04575, %for.body ], [ %prenum.04575, %for.body ], [ %prenum.04575, %sw.bb196 ], [ %prenum.04575, %cont259 ], [ %prenum.04575, %sw.bb263 ], [ %prenum.04575, %sw.bb367 ], [ %prenum.04575, %sw.bb386 ]
  %postone.0.be = phi i8* [ %postone.04576, %while.end467 ], [ %postone.04576, %sw.bb453 ], [ %postone.04576, %sw.bb451 ], [ %postone.04576, %while.end446 ], [ %postone.04576, %sw.bb425 ], [ %postone.04576, %while.end ], [ %postone.04576, %sw.bb385 ], [ %postone.04576, %cont384 ], [ %postone.04576, %cont377 ], [ %postone.04576, %sw.bb370 ], [ %postone.04576, %if.then325 ], [ %postone.04576, %if.then348 ], [ %postone.0.call360, %cont356 ], [ %postone.04576, %cont294 ], [ %postone.04576, %cont276 ], [ %postone.04576, %sw.bb273 ], [ %postone.04576, %sw.bb272 ], [ %postone.04576, %sw.bb271 ], [ %postone.04576, %sw.bb270 ], [ %postone.04576, %sw.bb269 ], [ %postone.04576, %sw.bb268 ], [ %postone.04576, %sw.bb267 ], [ %postone.04576, %sw.bb266 ], [ %postone.04576, %if.end251 ], [ %postone.04576, %sw.bb237 ], [ %postone.04576, %sw.bb235 ], [ %postone.04576, %sw.bb233 ], [ %postone.04576, %sw.bb231 ], [ %postone.04576, %sw.bb229 ], [ %postone.04576, %sw.bb227 ], [ %postone.04576, %sw.bb221 ], [ %postone.04576, %sw.bb220 ], [ %postone.04576, %sw.bb219 ], [ %postone.04576, %if.end217 ], [ %postone.04576, %sw.bb209 ], [ %postone.04576, %sw.bb207 ], [ %postone.04576, %sw.bb205 ], [ %postone.04576, %sw.bb203 ], [ %postone.04576, %sw.bb201 ], [ %postone.04576, %sw.bb200 ], [ %postone.04576, %sw.bb199 ], [ %postone.04576, %sw.bb193 ], [ %postone.04576, %ioc_bb197 ], [ %postone.04576, %sw.bb222 ], [ %postone.04576, %ioc_bb260 ], [ %postone.04576, %ioc_bb264 ], [ %postone.04576, %ioc_bb368 ], [ %postone.04576, %ioc_bb387 ], [ %postone.04576, %for.body ], [ %postone.04576, %for.body ], [ %postone.04576, %sw.bb196 ], [ %postone.04576, %cont259 ], [ %postone.04576, %sw.bb263 ], [ %postone.04576, %sw.bb367 ], [ %postone.04576, %sw.bb386 ]
  %preone.0.be = phi i8* [ %preone.04578, %while.end467 ], [ %preone.04578, %sw.bb453 ], [ %preone.04578, %sw.bb451 ], [ %preone.04578, %while.end446 ], [ %preone.04578, %sw.bb425 ], [ %preone.04578, %while.end ], [ %preone.04578, %sw.bb385 ], [ %preone.04578, %cont384 ], [ %preone.04578, %cont377 ], [ %preone.04578, %sw.bb370 ], [ %preone.04578, %if.then325 ], [ %preone.04578, %if.then348 ], [ %call360.preone.0, %cont356 ], [ %preone.04578, %cont294 ], [ %preone.04578, %cont276 ], [ %preone.04578, %sw.bb273 ], [ %preone.04578, %sw.bb272 ], [ %preone.04578, %sw.bb271 ], [ %preone.04578, %sw.bb270 ], [ %preone.04578, %sw.bb269 ], [ %preone.04578, %sw.bb268 ], [ %preone.04578, %sw.bb267 ], [ %preone.04578, %sw.bb266 ], [ %preone.04578, %if.end251 ], [ %preone.04578, %sw.bb237 ], [ %preone.04578, %sw.bb235 ], [ %preone.04578, %sw.bb233 ], [ %preone.04578, %sw.bb231 ], [ %preone.04578, %sw.bb229 ], [ %preone.04578, %sw.bb227 ], [ %preone.04578, %sw.bb221 ], [ %preone.04578, %sw.bb220 ], [ %preone.04578, %sw.bb219 ], [ %preone.04578, %if.end217 ], [ %preone.04578, %sw.bb209 ], [ %preone.04578, %sw.bb207 ], [ %preone.04578, %sw.bb205 ], [ %preone.04578, %sw.bb203 ], [ %preone.04578, %sw.bb201 ], [ %preone.04578, %sw.bb200 ], [ %preone.04578, %sw.bb199 ], [ %preone.04578, %sw.bb193 ], [ %preone.04578, %ioc_bb197 ], [ %preone.04578, %sw.bb222 ], [ %preone.04578, %ioc_bb260 ], [ %preone.04578, %ioc_bb264 ], [ %preone.04578, %ioc_bb368 ], [ %preone.04578, %ioc_bb387 ], [ %preone.04578, %for.body ], [ %preone.04578, %for.body ], [ %preone.04578, %sw.bb196 ], [ %preone.04578, %cont259 ], [ %preone.04578, %sw.bb263 ], [ %preone.04578, %sw.bb367 ], [ %preone.04578, %sw.bb386 ]
  %postmul.0.be = phi i8* [ %postmul.04580, %while.end467 ], [ %postmul.04580, %sw.bb453 ], [ %postmul.04580, %sw.bb451 ], [ %postmul.04580, %while.end446 ], [ %postmul.04580, %sw.bb425 ], [ %postmul.04580, %while.end ], [ %postmul.04580, %sw.bb385 ], [ %postmul.04580, %cont384 ], [ %postmul.04580, %cont377 ], [ %postmul.04580, %sw.bb370 ], [ %postmul.04580, %if.then325 ], [ %postmul.0.call337, %if.then348 ], [ %postmul.0.call337, %cont356 ], [ %postmul.04580, %cont294 ], [ %postmul.04580, %cont276 ], [ %postmul.04580, %sw.bb273 ], [ %postmul.04580, %sw.bb272 ], [ %postmul.04580, %sw.bb271 ], [ %postmul.04580, %sw.bb270 ], [ %postmul.04580, %sw.bb269 ], [ %postmul.04580, %sw.bb268 ], [ %postmul.04580, %sw.bb267 ], [ %postmul.04580, %sw.bb266 ], [ %postmul.04580, %if.end251 ], [ %postmul.04580, %sw.bb237 ], [ %postmul.04580, %sw.bb235 ], [ %postmul.04580, %sw.bb233 ], [ %postmul.04580, %sw.bb231 ], [ %postmul.04580, %sw.bb229 ], [ %postmul.04580, %sw.bb227 ], [ %postmul.04580, %sw.bb221 ], [ %postmul.04580, %sw.bb220 ], [ %postmul.04580, %sw.bb219 ], [ %postmul.04580, %if.end217 ], [ %postmul.04580, %sw.bb209 ], [ %postmul.04580, %sw.bb207 ], [ %postmul.04580, %sw.bb205 ], [ %postmul.04580, %sw.bb203 ], [ %postmul.04580, %sw.bb201 ], [ %postmul.04580, %sw.bb200 ], [ %postmul.04580, %sw.bb199 ], [ %postmul.04580, %sw.bb193 ], [ %postmul.04580, %ioc_bb197 ], [ %postmul.04580, %sw.bb222 ], [ %postmul.04580, %ioc_bb260 ], [ %postmul.04580, %ioc_bb264 ], [ %postmul.04580, %ioc_bb368 ], [ %postmul.04580, %ioc_bb387 ], [ %postmul.04580, %for.body ], [ %postmul.04580, %for.body ], [ %postmul.04580, %sw.bb196 ], [ %postmul.04580, %cont259 ], [ %postmul.04580, %sw.bb263 ], [ %postmul.04580, %sw.bb367 ], [ %postmul.04580, %sw.bb386 ]
  %premul.0.be = phi i8* [ %premul.04581, %while.end467 ], [ %premul.04581, %sw.bb453 ], [ %premul.04581, %sw.bb451 ], [ %premul.04581, %while.end446 ], [ %premul.04581, %sw.bb425 ], [ %premul.04581, %while.end ], [ %premul.04581, %sw.bb385 ], [ %premul.04581, %cont384 ], [ %premul.04581, %cont377 ], [ %premul.04581, %sw.bb370 ], [ %premul.04581, %if.then325 ], [ %call337.premul.0, %if.then348 ], [ %call337.premul.0, %cont356 ], [ %premul.04581, %cont294 ], [ %premul.04581, %cont276 ], [ %premul.04581, %sw.bb273 ], [ %premul.04581, %sw.bb272 ], [ %premul.04581, %sw.bb271 ], [ %premul.04581, %sw.bb270 ], [ %premul.04581, %sw.bb269 ], [ %premul.04581, %sw.bb268 ], [ %premul.04581, %sw.bb267 ], [ %premul.04581, %sw.bb266 ], [ %premul.04581, %if.end251 ], [ %premul.04581, %sw.bb237 ], [ %premul.04581, %sw.bb235 ], [ %premul.04581, %sw.bb233 ], [ %premul.04581, %sw.bb231 ], [ %premul.04581, %sw.bb229 ], [ %premul.04581, %sw.bb227 ], [ %premul.04581, %sw.bb221 ], [ %premul.04581, %sw.bb220 ], [ %premul.04581, %sw.bb219 ], [ %premul.04581, %if.end217 ], [ %premul.04581, %sw.bb209 ], [ %premul.04581, %sw.bb207 ], [ %premul.04581, %sw.bb205 ], [ %premul.04581, %sw.bb203 ], [ %premul.04581, %sw.bb201 ], [ %premul.04581, %sw.bb200 ], [ %premul.04581, %sw.bb199 ], [ %premul.04581, %sw.bb193 ], [ %premul.04581, %ioc_bb197 ], [ %premul.04581, %sw.bb222 ], [ %premul.04581, %ioc_bb260 ], [ %premul.04581, %ioc_bb264 ], [ %premul.04581, %ioc_bb368 ], [ %premul.04581, %ioc_bb387 ], [ %premul.04581, %for.body ], [ %premul.04581, %for.body ], [ %premul.04581, %sw.bb196 ], [ %premul.04581, %cont259 ], [ %premul.04581, %sw.bb263 ], [ %premul.04581, %sw.bb367 ], [ %premul.04581, %sw.bb386 ]
  %spsep.0.be = phi i8* [ %spsep.04582, %while.end467 ], [ %spsep.04582, %sw.bb453 ], [ %spsep.04582, %sw.bb451 ], [ %spsep.04582, %while.end446 ], [ %spsep.04582, %sw.bb425 ], [ %spsep.04582, %while.end ], [ %spsep.04582, %sw.bb385 ], [ %spsep.04582, %cont384 ], [ %spsep.04582, %cont377 ], [ %spsep.04582, %sw.bb370 ], [ %spsep.04582, %if.then325 ], [ %spsep.04582, %if.then348 ], [ %spsep.04582, %cont356 ], [ %spsep.0.call297, %cont294 ], [ %call277, %cont276 ], [ %spsep.04582, %sw.bb273 ], [ getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), %sw.bb272 ], [ %spsep.04582, %sw.bb271 ], [ %spsep.04582, %sw.bb270 ], [ %spsep.04582, %sw.bb269 ], [ %spsep.04582, %sw.bb268 ], [ %spsep.04582, %sw.bb267 ], [ %spsep.04582, %sw.bb266 ], [ %spsep.04582, %if.end251 ], [ %spsep.04582, %sw.bb237 ], [ %spsep.04582, %sw.bb235 ], [ %spsep.04582, %sw.bb233 ], [ %spsep.04582, %sw.bb231 ], [ %spsep.04582, %sw.bb229 ], [ %spsep.04582, %sw.bb227 ], [ %spsep.04582, %sw.bb221 ], [ %spsep.04582, %sw.bb220 ], [ %spsep.04582, %sw.bb219 ], [ %spsep.04582, %if.end217 ], [ %spsep.04582, %sw.bb209 ], [ %spsep.04582, %sw.bb207 ], [ %spsep.04582, %sw.bb205 ], [ %spsep.04582, %sw.bb203 ], [ %spsep.04582, %sw.bb201 ], [ %spsep.04582, %sw.bb200 ], [ %spsep.04582, %sw.bb199 ], [ %spsep.04582, %sw.bb193 ], [ %spsep.04582, %ioc_bb197 ], [ %spsep.04582, %sw.bb222 ], [ %spsep.04582, %ioc_bb260 ], [ %spsep.04582, %ioc_bb264 ], [ %spsep.04582, %ioc_bb368 ], [ %spsep.04582, %ioc_bb387 ], [ %spsep.04582, %for.body ], [ %spsep.04582, %for.body ], [ %spsep.04582, %sw.bb196 ], [ %spsep.04582, %cont259 ], [ %spsep.04582, %sw.bb263 ], [ %spsep.04582, %sw.bb367 ], [ %spsep.04582, %sw.bb386 ]
  %sep.0.be = phi i8* [ %sep.04584, %while.end467 ], [ %sep.04584, %sw.bb453 ], [ %sep.04584, %sw.bb451 ], [ %sep.04584, %while.end446 ], [ %sep.04584, %sw.bb425 ], [ %sep.04584, %while.end ], [ %sep.04584, %sw.bb385 ], [ %sep.04584, %cont384 ], [ %sep.04584, %cont377 ], [ %sep.04584, %sw.bb370 ], [ %sep.04584, %if.then325 ], [ %sep.04584, %if.then348 ], [ %sep.04584, %cont356 ], [ %call297.sep.0, %cont294 ], [ %sep.04584, %cont276 ], [ getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), %sw.bb273 ], [ %sep.04584, %sw.bb272 ], [ %sep.04584, %sw.bb271 ], [ %sep.04584, %sw.bb270 ], [ %sep.04584, %sw.bb269 ], [ %sep.04584, %sw.bb268 ], [ %sep.04584, %sw.bb267 ], [ %sep.04584, %sw.bb266 ], [ %sep.04584, %if.end251 ], [ %sep.04584, %sw.bb237 ], [ %sep.04584, %sw.bb235 ], [ %sep.04584, %sw.bb233 ], [ %sep.04584, %sw.bb231 ], [ %sep.04584, %sw.bb229 ], [ %sep.04584, %sw.bb227 ], [ %sep.04584, %sw.bb221 ], [ %sep.04584, %sw.bb220 ], [ %sep.04584, %sw.bb219 ], [ %sep.04584, %if.end217 ], [ %sep.04584, %sw.bb209 ], [ %sep.04584, %sw.bb207 ], [ %sep.04584, %sw.bb205 ], [ %sep.04584, %sw.bb203 ], [ %sep.04584, %sw.bb201 ], [ %sep.04584, %sw.bb200 ], [ %sep.04584, %sw.bb199 ], [ %sep.04584, %sw.bb193 ], [ %sep.04584, %ioc_bb197 ], [ %sep.04584, %sw.bb222 ], [ %sep.04584, %ioc_bb260 ], [ %sep.04584, %ioc_bb264 ], [ %sep.04584, %ioc_bb368 ], [ %sep.04584, %ioc_bb387 ], [ %sep.04584, %for.body ], [ %sep.04584, %for.body ], [ %sep.04584, %sw.bb196 ], [ %sep.04584, %cont259 ], [ %sep.04584, %sw.bb263 ], [ %sep.04584, %sw.bb367 ], [ %sep.04584, %sw.bb386 ]
  %shsplit.0.be = phi i32 [ %shsplit.04586, %while.end467 ], [ %shsplit.04586, %sw.bb453 ], [ %shsplit.04586, %sw.bb451 ], [ %shsplit.1.lcssa, %while.end446 ], [ 1, %sw.bb425 ], [ %shsplit.04586, %while.end ], [ %shsplit.04586, %sw.bb385 ], [ %shsplit.04586, %cont384 ], [ %shsplit.04586, %cont377 ], [ %shsplit.04586, %sw.bb370 ], [ %shsplit.04586, %if.then325 ], [ %shsplit.04586, %if.then348 ], [ %shsplit.04586, %cont356 ], [ %shsplit.04586, %cont294 ], [ %shsplit.04586, %cont276 ], [ %shsplit.04586, %sw.bb273 ], [ %shsplit.04586, %sw.bb272 ], [ %shsplit.04586, %sw.bb271 ], [ %shsplit.04586, %sw.bb270 ], [ %shsplit.04586, %sw.bb269 ], [ %shsplit.04586, %sw.bb268 ], [ %shsplit.04586, %sw.bb267 ], [ %shsplit.04586, %sw.bb266 ], [ %shsplit.04586, %if.end251 ], [ %shsplit.04586, %sw.bb237 ], [ %shsplit.04586, %sw.bb235 ], [ %shsplit.04586, %sw.bb233 ], [ %shsplit.04586, %sw.bb231 ], [ %shsplit.04586, %sw.bb229 ], [ %shsplit.04586, %sw.bb227 ], [ %shsplit.04586, %sw.bb221 ], [ %shsplit.04586, %sw.bb220 ], [ %shsplit.04586, %sw.bb219 ], [ %shsplit.04586, %if.end217 ], [ %shsplit.04586, %sw.bb209 ], [ %shsplit.04586, %sw.bb207 ], [ %shsplit.04586, %sw.bb205 ], [ %shsplit.04586, %sw.bb203 ], [ %shsplit.04586, %sw.bb201 ], [ %shsplit.04586, %sw.bb200 ], [ %shsplit.04586, %sw.bb199 ], [ %shsplit.04586, %sw.bb193 ], [ %shsplit.04586, %ioc_bb197 ], [ %shsplit.04586, %sw.bb222 ], [ %shsplit.04586, %ioc_bb260 ], [ %shsplit.04586, %ioc_bb264 ], [ %shsplit.04586, %ioc_bb368 ], [ %shsplit.04586, %ioc_bb387 ], [ %shsplit.04586, %for.body ], [ %shsplit.04586, %for.body ], [ %shsplit.04586, %sw.bb196 ], [ %shsplit.04586, %cont259 ], [ %shsplit.04586, %sw.bb263 ], [ %shsplit.04586, %sw.bb367 ], [ %shsplit.04586, %sw.bb386 ]
  %mods.0.be = phi i32 [ %mods.04588, %while.end467 ], [ %mods.04588, %sw.bb453 ], [ %mods.04588, %sw.bb451 ], [ %mods.04588, %while.end446 ], [ %mods.04588, %sw.bb425 ], [ %mods.04588, %while.end ], [ %mods.04588, %sw.bb385 ], [ %mods.04588, %cont384 ], [ %mods.04588, %cont377 ], [ %mods.04588, %sw.bb370 ], [ %mods.04588, %if.then325 ], [ %mods.04588, %if.then348 ], [ %mods.04588, %cont356 ], [ %mods.04588, %cont294 ], [ %mods.04588, %cont276 ], [ %mods.04588, %sw.bb273 ], [ %mods.04588, %sw.bb272 ], [ %mods.04588, %sw.bb271 ], [ %mods.04588, %sw.bb270 ], [ %mods.04588, %sw.bb269 ], [ %mods.04588, %sw.bb268 ], [ %mods.04588, %sw.bb267 ], [ %mods.04588, %sw.bb266 ], [ %mods.04588, %if.end251 ], [ %or238, %sw.bb237 ], [ %or236, %sw.bb235 ], [ %mods.04588, %sw.bb233 ], [ %mods.04588, %sw.bb231 ], [ %mods.04588, %sw.bb229 ], [ %mods.04588, %sw.bb227 ], [ %mods.04588, %sw.bb221 ], [ %mods.04588, %sw.bb220 ], [ %mods.04588, %sw.bb219 ], [ %mods.04588, %if.end217 ], [ %mods.04588, %sw.bb209 ], [ %mods.04588, %sw.bb207 ], [ %mods.04588, %sw.bb205 ], [ %mods.04588, %sw.bb203 ], [ %mods.04588, %sw.bb201 ], [ %mods.04588, %sw.bb200 ], [ %mods.04588, %sw.bb199 ], [ %mods.04588, %sw.bb193 ], [ %mods.04588, %ioc_bb197 ], [ %mods.04588, %sw.bb222 ], [ %mods.04588, %ioc_bb260 ], [ %mods.04588, %ioc_bb264 ], [ %mods.04588, %ioc_bb368 ], [ %mods.04588, %ioc_bb387 ], [ %mods.04588, %for.body ], [ %mods.04588, %for.body ], [ %mods.04588, %sw.bb196 ], [ %mods.04588, %cont259 ], [ %mods.04588, %sw.bb263 ], [ %mods.04588, %sw.bb367 ], [ %mods.04588, %sw.bb386 ]
  %quoteerr.0.be = phi i32 [ %quoteerr.04590, %while.end467 ], [ %quoteerr.04590, %sw.bb453 ], [ %quoteerr.04590, %sw.bb451 ], [ %quoteerr.04590, %while.end446 ], [ %quoteerr.04590, %sw.bb425 ], [ %quoteerr.04590, %while.end ], [ %quoteerr.04590, %sw.bb385 ], [ %quoteerr.04590, %cont384 ], [ %quoteerr.04590, %cont377 ], [ %quoteerr.04590, %sw.bb370 ], [ %quoteerr.04590, %if.then325 ], [ %quoteerr.04590, %if.then348 ], [ %quoteerr.04590, %cont356 ], [ %quoteerr.04590, %cont294 ], [ %quoteerr.04590, %cont276 ], [ %quoteerr.04590, %sw.bb273 ], [ %quoteerr.04590, %sw.bb272 ], [ %quoteerr.04590, %sw.bb271 ], [ %quoteerr.04590, %sw.bb270 ], [ %quoteerr.04590, %sw.bb269 ], [ %quoteerr.04590, %sw.bb268 ], [ %quoteerr.04590, %sw.bb267 ], [ 1, %sw.bb266 ], [ %quoteerr.04590, %if.end251 ], [ %quoteerr.04590, %sw.bb237 ], [ %quoteerr.04590, %sw.bb235 ], [ %quoteerr.04590, %sw.bb233 ], [ %quoteerr.04590, %sw.bb231 ], [ %quoteerr.04590, %sw.bb229 ], [ %quoteerr.04590, %sw.bb227 ], [ %quoteerr.04590, %sw.bb221 ], [ %quoteerr.04590, %sw.bb220 ], [ %quoteerr.04590, %sw.bb219 ], [ %quoteerr.04590, %if.end217 ], [ %quoteerr.04590, %sw.bb209 ], [ %quoteerr.04590, %sw.bb207 ], [ %quoteerr.04590, %sw.bb205 ], [ %quoteerr.04590, %sw.bb203 ], [ %quoteerr.04590, %sw.bb201 ], [ %quoteerr.04590, %sw.bb200 ], [ %quoteerr.04590, %sw.bb199 ], [ %quoteerr.04590, %sw.bb193 ], [ %quoteerr.04590, %ioc_bb197 ], [ %quoteerr.04590, %sw.bb222 ], [ %quoteerr.04590, %ioc_bb260 ], [ %quoteerr.04590, %ioc_bb264 ], [ %quoteerr.04590, %ioc_bb368 ], [ %quoteerr.04590, %ioc_bb387 ], [ %quoteerr.04590, %for.body ], [ %quoteerr.04590, %for.body ], [ %quoteerr.04590, %sw.bb196 ], [ %quoteerr.04590, %cont259 ], [ %quoteerr.04590, %sw.bb263 ], [ %quoteerr.04590, %sw.bb367 ], [ %quoteerr.04590, %sw.bb386 ]
  %quotetype.0.be = phi i32 [ %quotetype.04592, %while.end467 ], [ %quotetype.04592, %sw.bb453 ], [ %quotetype.04592, %sw.bb451 ], [ %quotetype.04592, %while.end446 ], [ %quotetype.04592, %sw.bb425 ], [ %quotetype.04592, %while.end ], [ %quotetype.04592, %sw.bb385 ], [ %quotetype.04592, %cont384 ], [ %quotetype.04592, %cont377 ], [ %quotetype.04592, %sw.bb370 ], [ %quotetype.04592, %if.then325 ], [ %quotetype.04592, %if.then348 ], [ %quotetype.04592, %cont356 ], [ %quotetype.04592, %cont294 ], [ %quotetype.04592, %cont276 ], [ %quotetype.04592, %sw.bb273 ], [ %quotetype.04592, %sw.bb272 ], [ %quotetype.04592, %sw.bb271 ], [ %quotetype.04592, %sw.bb270 ], [ %quotetype.04592, %sw.bb269 ], [ %quotetype.04592, %sw.bb268 ], [ %quotetype.04592, %sw.bb267 ], [ %quotetype.04592, %sw.bb266 ], [ 6, %if.end251 ], [ %quotetype.04592, %sw.bb237 ], [ %quotetype.04592, %sw.bb235 ], [ %quotetype.04592, %sw.bb233 ], [ %quotetype.04592, %sw.bb231 ], [ %quotetype.04592, %sw.bb229 ], [ %quotetype.04592, %sw.bb227 ], [ %quotetype.04592, %sw.bb221 ], [ %quotetype.04592, %sw.bb220 ], [ %quotetype.04592, %sw.bb219 ], [ %quotetype.04592, %if.end217 ], [ %quotetype.04592, %sw.bb209 ], [ %quotetype.04592, %sw.bb207 ], [ %quotetype.04592, %sw.bb205 ], [ %quotetype.04592, %sw.bb203 ], [ %quotetype.04592, %sw.bb201 ], [ %quotetype.04592, %sw.bb200 ], [ %quotetype.04592, %sw.bb199 ], [ %quotetype.04592, %sw.bb193 ], [ %quotetype.04592, %ioc_bb197 ], [ %quotetype.04592, %sw.bb222 ], [ %35, %ioc_bb260 ], [ %quotetype.04592, %ioc_bb264 ], [ %quotetype.04592, %ioc_bb368 ], [ %quotetype.04592, %ioc_bb387 ], [ %quotetype.04592, %for.body ], [ %quotetype.04592, %for.body ], [ %quotetype.04592, %sw.bb196 ], [ %35, %cont259 ], [ %quotetype.04592, %sw.bb263 ], [ %quotetype.04592, %sw.bb367 ], [ %quotetype.04592, %sw.bb386 ]
  %quotemod.0.be = phi i32 [ %quotemod.04594, %while.end467 ], [ %quotemod.04594, %sw.bb453 ], [ %quotemod.04594, %sw.bb451 ], [ %quotemod.04594, %while.end446 ], [ %quotemod.04594, %sw.bb425 ], [ %quotemod.04594, %while.end ], [ %quotemod.04594, %sw.bb385 ], [ %quotemod.04594, %cont384 ], [ %quotemod.04594, %cont377 ], [ %quotemod.04594, %sw.bb370 ], [ %quotemod.04594, %if.then325 ], [ %quotemod.04594, %if.then348 ], [ %quotemod.04594, %cont356 ], [ %quotemod.04594, %cont294 ], [ %quotemod.04594, %cont276 ], [ %quotemod.04594, %sw.bb273 ], [ %quotemod.04594, %sw.bb272 ], [ %quotemod.04594, %sw.bb271 ], [ %quotemod.04594, %sw.bb270 ], [ %quotemod.04594, %sw.bb269 ], [ %quotemod.04594, %sw.bb268 ], [ %quotemod.04594, %sw.bb267 ], [ %quotemod.04594, %sw.bb266 ], [ 1, %if.end251 ], [ %quotemod.04594, %sw.bb237 ], [ %quotemod.04594, %sw.bb235 ], [ %quotemod.04594, %sw.bb233 ], [ %quotemod.04594, %sw.bb231 ], [ %quotemod.04594, %sw.bb229 ], [ %quotemod.04594, %sw.bb227 ], [ %quotemod.04594, %sw.bb221 ], [ %quotemod.04594, %sw.bb220 ], [ %quotemod.04594, %sw.bb219 ], [ %quotemod.04594, %if.end217 ], [ %quotemod.04594, %sw.bb209 ], [ %quotemod.04594, %sw.bb207 ], [ %quotemod.04594, %sw.bb205 ], [ %quotemod.04594, %sw.bb203 ], [ %quotemod.04594, %sw.bb201 ], [ %quotemod.04594, %sw.bb200 ], [ %quotemod.04594, %sw.bb199 ], [ %quotemod.04594, %sw.bb193 ], [ %quotemod.04594, %ioc_bb197 ], [ %quotemod.04594, %sw.bb222 ], [ %31, %ioc_bb260 ], [ %39, %ioc_bb264 ], [ %quotemod.04594, %ioc_bb368 ], [ %quotemod.04594, %ioc_bb387 ], [ %quotemod.04594, %for.body ], [ %quotemod.04594, %for.body ], [ %quotemod.04594, %sw.bb196 ], [ %31, %cont259 ], [ %39, %sw.bb263 ], [ %quotemod.04594, %sw.bb367 ], [ %quotemod.04594, %sw.bb386 ]
  %casmod.0.be = phi i32 [ %casmod.04596, %while.end467 ], [ %casmod.04596, %sw.bb453 ], [ %casmod.04596, %sw.bb451 ], [ %casmod.04596, %while.end446 ], [ %casmod.04596, %sw.bb425 ], [ %casmod.04596, %while.end ], [ %casmod.04596, %sw.bb385 ], [ %casmod.04596, %cont384 ], [ %casmod.04596, %cont377 ], [ %casmod.04596, %sw.bb370 ], [ %casmod.04596, %if.then325 ], [ %casmod.04596, %if.then348 ], [ %casmod.04596, %cont356 ], [ %casmod.04596, %cont294 ], [ %casmod.04596, %cont276 ], [ %casmod.04596, %sw.bb273 ], [ %casmod.04596, %sw.bb272 ], [ %casmod.04596, %sw.bb271 ], [ %casmod.04596, %sw.bb270 ], [ %casmod.04596, %sw.bb269 ], [ %casmod.04596, %sw.bb268 ], [ %casmod.04596, %sw.bb267 ], [ %casmod.04596, %sw.bb266 ], [ %casmod.04596, %if.end251 ], [ %casmod.04596, %sw.bb237 ], [ %casmod.04596, %sw.bb235 ], [ %casmod.04596, %sw.bb233 ], [ %casmod.04596, %sw.bb231 ], [ %casmod.04596, %sw.bb229 ], [ %casmod.04596, %sw.bb227 ], [ 3, %sw.bb221 ], [ 1, %sw.bb220 ], [ 2, %sw.bb219 ], [ %casmod.04596, %if.end217 ], [ %casmod.04596, %sw.bb209 ], [ %casmod.04596, %sw.bb207 ], [ %casmod.04596, %sw.bb205 ], [ %casmod.04596, %sw.bb203 ], [ %casmod.04596, %sw.bb201 ], [ %casmod.04596, %sw.bb200 ], [ %casmod.04596, %sw.bb199 ], [ %casmod.04596, %sw.bb193 ], [ %casmod.04596, %ioc_bb197 ], [ %casmod.04596, %sw.bb222 ], [ %casmod.04596, %ioc_bb260 ], [ %casmod.04596, %ioc_bb264 ], [ %casmod.04596, %ioc_bb368 ], [ %casmod.04596, %ioc_bb387 ], [ %casmod.04596, %for.body ], [ %casmod.04596, %for.body ], [ %casmod.04596, %sw.bb196 ], [ %casmod.04596, %cont259 ], [ %casmod.04596, %sw.bb263 ], [ %casmod.04596, %sw.bb367 ], [ %casmod.04596, %sw.bb386 ]
  %unique.0.be = phi i32 [ %unique.04598, %while.end467 ], [ %unique.04598, %sw.bb453 ], [ 1, %sw.bb451 ], [ %unique.04598, %while.end446 ], [ %unique.04598, %sw.bb425 ], [ %unique.04598, %while.end ], [ %unique.04598, %sw.bb385 ], [ %unique.04598, %cont384 ], [ %unique.04598, %cont377 ], [ %unique.04598, %sw.bb370 ], [ %unique.04598, %if.then325 ], [ %unique.04598, %if.then348 ], [ %unique.04598, %cont356 ], [ %unique.04598, %cont294 ], [ %unique.04598, %cont276 ], [ %unique.04598, %sw.bb273 ], [ %unique.04598, %sw.bb272 ], [ %unique.04598, %sw.bb271 ], [ %unique.04598, %sw.bb270 ], [ %unique.04598, %sw.bb269 ], [ %unique.04598, %sw.bb268 ], [ %unique.04598, %sw.bb267 ], [ %unique.04598, %sw.bb266 ], [ %unique.04598, %if.end251 ], [ %unique.04598, %sw.bb237 ], [ %unique.04598, %sw.bb235 ], [ %unique.04598, %sw.bb233 ], [ %unique.04598, %sw.bb231 ], [ %unique.04598, %sw.bb229 ], [ %unique.04598, %sw.bb227 ], [ %unique.04598, %sw.bb221 ], [ %unique.04598, %sw.bb220 ], [ %unique.04598, %sw.bb219 ], [ %unique.04598, %if.end217 ], [ %unique.04598, %sw.bb209 ], [ %unique.04598, %sw.bb207 ], [ %unique.04598, %sw.bb205 ], [ %unique.04598, %sw.bb203 ], [ %unique.04598, %sw.bb201 ], [ %unique.04598, %sw.bb200 ], [ %unique.04598, %sw.bb199 ], [ %unique.04598, %sw.bb193 ], [ %unique.04598, %ioc_bb197 ], [ %unique.04598, %sw.bb222 ], [ %unique.04598, %ioc_bb260 ], [ %unique.04598, %ioc_bb264 ], [ %unique.04598, %ioc_bb368 ], [ %unique.04598, %ioc_bb387 ], [ %unique.04598, %for.body ], [ %unique.04598, %for.body ], [ %unique.04598, %sw.bb196 ], [ %unique.04598, %cont259 ], [ %unique.04598, %sw.bb263 ], [ %unique.04598, %sw.bb367 ], [ %unique.04598, %sw.bb386 ]
  %indord.0.be = phi i32 [ %indord.04600, %while.end467 ], [ %indord.04600, %sw.bb453 ], [ %indord.04600, %sw.bb451 ], [ %indord.04600, %while.end446 ], [ %indord.04600, %sw.bb425 ], [ %indord.04600, %while.end ], [ %indord.04600, %sw.bb385 ], [ %indord.04600, %cont384 ], [ %indord.04600, %cont377 ], [ %indord.04600, %sw.bb370 ], [ %indord.04600, %if.then325 ], [ %indord.04600, %if.then348 ], [ %indord.04600, %cont356 ], [ %indord.04600, %cont294 ], [ %indord.04600, %cont276 ], [ %indord.04600, %sw.bb273 ], [ %indord.04600, %sw.bb272 ], [ %indord.04600, %sw.bb271 ], [ %indord.04600, %sw.bb270 ], [ %indord.04600, %sw.bb269 ], [ %indord.04600, %sw.bb268 ], [ %indord.04600, %sw.bb267 ], [ %indord.04600, %sw.bb266 ], [ %indord.04600, %if.end251 ], [ %indord.04600, %sw.bb237 ], [ %indord.04600, %sw.bb235 ], [ 1, %sw.bb233 ], [ %indord.04600, %sw.bb231 ], [ %indord.04600, %sw.bb229 ], [ %indord.04600, %sw.bb227 ], [ %indord.04600, %sw.bb221 ], [ %indord.04600, %sw.bb220 ], [ %indord.04600, %sw.bb219 ], [ %indord.04600, %if.end217 ], [ %indord.04600, %sw.bb209 ], [ %indord.04600, %sw.bb207 ], [ %indord.04600, %sw.bb205 ], [ %indord.04600, %sw.bb203 ], [ %indord.04600, %sw.bb201 ], [ %indord.04600, %sw.bb200 ], [ %indord.04600, %sw.bb199 ], [ %indord.04600, %sw.bb193 ], [ %indord.04600, %ioc_bb197 ], [ %indord.04600, %sw.bb222 ], [ %indord.04600, %ioc_bb260 ], [ %indord.04600, %ioc_bb264 ], [ %indord.04600, %ioc_bb368 ], [ %indord.04600, %ioc_bb387 ], [ %indord.04600, %for.body ], [ %indord.04600, %for.body ], [ %indord.04600, %sw.bb196 ], [ %indord.04600, %cont259 ], [ %indord.04600, %sw.bb263 ], [ %indord.04600, %sw.bb367 ], [ %indord.04600, %sw.bb386 ]
  %sortit.0.be = phi i32 [ %sortit.04602, %while.end467 ], [ %sortit.04602, %sw.bb453 ], [ %sortit.04602, %sw.bb451 ], [ %sortit.04602, %while.end446 ], [ %sortit.04602, %sw.bb425 ], [ %sortit.04602, %while.end ], [ %sortit.04602, %sw.bb385 ], [ %sortit.04602, %cont384 ], [ %sortit.04602, %cont377 ], [ %sortit.04602, %sw.bb370 ], [ %sortit.04602, %if.then325 ], [ %sortit.04602, %if.then348 ], [ %sortit.04602, %cont356 ], [ %sortit.04602, %cont294 ], [ %sortit.04602, %cont276 ], [ %sortit.04602, %sw.bb273 ], [ %sortit.04602, %sw.bb272 ], [ %sortit.04602, %sw.bb271 ], [ %sortit.04602, %sw.bb270 ], [ %sortit.04602, %sw.bb269 ], [ %sortit.04602, %sw.bb268 ], [ %sortit.04602, %sw.bb267 ], [ %sortit.04602, %sw.bb266 ], [ %sortit.04602, %if.end251 ], [ %sortit.04602, %sw.bb237 ], [ %sortit.04602, %sw.bb235 ], [ %or234, %sw.bb233 ], [ %or232, %sw.bb231 ], [ %or230, %sw.bb229 ], [ %or228, %sw.bb227 ], [ %sortit.04602, %sw.bb221 ], [ %sortit.04602, %sw.bb220 ], [ %sortit.04602, %sw.bb219 ], [ %sortit.04602, %if.end217 ], [ %sortit.04602, %sw.bb209 ], [ %sortit.04602, %sw.bb207 ], [ %sortit.04602, %sw.bb205 ], [ %sortit.04602, %sw.bb203 ], [ %sortit.04602, %sw.bb201 ], [ %sortit.04602, %sw.bb200 ], [ %sortit.04602, %sw.bb199 ], [ %sortit.04602, %sw.bb193 ], [ %sortit.04602, %ioc_bb197 ], [ %or225.sortit.0, %sw.bb222 ], [ %sortit.04602, %ioc_bb260 ], [ %sortit.04602, %ioc_bb264 ], [ %sortit.04602, %ioc_bb368 ], [ %sortit.04602, %ioc_bb387 ], [ %sortit.04602, %for.body ], [ %sortit.04602, %for.body ], [ %sortit.04602, %sw.bb196 ], [ %sortit.04602, %cont259 ], [ %sortit.04602, %sw.bb263 ], [ %sortit.04602, %sw.bb367 ], [ %sortit.04602, %sw.bb386 ]
  %flnum.0.be = phi i32 [ %flnum.04604, %while.end467 ], [ %flnum.04604, %sw.bb453 ], [ %flnum.04604, %sw.bb451 ], [ %flnum.04604, %while.end446 ], [ %flnum.04604, %sw.bb425 ], [ %flnum.04604, %while.end ], [ %flnum.04604, %sw.bb385 ], [ %flnum.04604, %cont384 ], [ %flnum.04604, %cont377 ], [ %flnum.04604, %sw.bb370 ], [ %flnum.04604, %if.then325 ], [ %flnum.04604, %if.then348 ], [ %flnum.04604, %cont356 ], [ %flnum.04604, %cont294 ], [ %flnum.04604, %cont276 ], [ %flnum.04604, %sw.bb273 ], [ %flnum.04604, %sw.bb272 ], [ %flnum.04604, %sw.bb271 ], [ %flnum.04604, %sw.bb270 ], [ %flnum.04604, %sw.bb269 ], [ %flnum.04604, %sw.bb268 ], [ %flnum.04604, %sw.bb267 ], [ %flnum.04604, %sw.bb266 ], [ %flnum.04604, %if.end251 ], [ %flnum.04604, %sw.bb237 ], [ %flnum.04604, %sw.bb235 ], [ %flnum.04604, %sw.bb233 ], [ %flnum.04604, %sw.bb231 ], [ %flnum.04604, %sw.bb229 ], [ %flnum.04604, %sw.bb227 ], [ %flnum.04604, %sw.bb221 ], [ %flnum.04604, %sw.bb220 ], [ %flnum.04604, %sw.bb219 ], [ %call213, %if.end217 ], [ %flnum.04604, %sw.bb209 ], [ %flnum.04604, %sw.bb207 ], [ %flnum.04604, %sw.bb205 ], [ %flnum.04604, %sw.bb203 ], [ %flnum.04604, %sw.bb201 ], [ %flnum.04604, %sw.bb200 ], [ %flnum.04604, %sw.bb199 ], [ %flnum.04604, %sw.bb193 ], [ %flnum.04604, %ioc_bb197 ], [ %flnum.04604, %sw.bb222 ], [ %flnum.04604, %ioc_bb260 ], [ %flnum.04604, %ioc_bb264 ], [ %flnum.04604, %ioc_bb368 ], [ %flnum.04604, %ioc_bb387 ], [ %flnum.04604, %for.body ], [ %flnum.04604, %for.body ], [ %flnum.04604, %sw.bb196 ], [ %flnum.04604, %cont259 ], [ %flnum.04604, %sw.bb263 ], [ %flnum.04604, %sw.bb367 ], [ %flnum.04604, %sw.bb386 ]
  %flags.0.be = phi i32 [ %flags.04606, %while.end467 ], [ %flags.04606, %sw.bb453 ], [ %flags.04606, %sw.bb451 ], [ %flags.04606, %while.end446 ], [ %flags.04606, %sw.bb425 ], [ %flags.04606, %while.end ], [ %flags.04606, %sw.bb385 ], [ %flags.04606, %cont384 ], [ %flags.04606, %cont377 ], [ %flags.04606, %sw.bb370 ], [ %flags.04606, %if.then325 ], [ %flags.04606, %if.then348 ], [ %flags.04606, %cont356 ], [ %flags.04606, %cont294 ], [ %flags.04606, %cont276 ], [ %flags.04606, %sw.bb273 ], [ %flags.04606, %sw.bb272 ], [ %flags.04606, %sw.bb271 ], [ %flags.04606, %sw.bb270 ], [ %flags.04606, %sw.bb269 ], [ %flags.04606, %sw.bb268 ], [ %flags.04606, %sw.bb267 ], [ %flags.04606, %sw.bb266 ], [ %flags.04606, %if.end251 ], [ %flags.04606, %sw.bb237 ], [ %flags.04606, %sw.bb235 ], [ %flags.04606, %sw.bb233 ], [ %flags.04606, %sw.bb231 ], [ %flags.04606, %sw.bb229 ], [ %flags.04606, %sw.bb227 ], [ %flags.04606, %sw.bb221 ], [ %flags.04606, %sw.bb220 ], [ %flags.04606, %sw.bb219 ], [ %flags.04606, %if.end217 ], [ %or210, %sw.bb209 ], [ %or208, %sw.bb207 ], [ %or206, %sw.bb205 ], [ %or204, %sw.bb203 ], [ %or202, %sw.bb201 ], [ %or, %sw.bb200 ], [ %flags.04606, %sw.bb199 ], [ %flags.04606, %sw.bb193 ], [ %flags.04606, %ioc_bb197 ], [ %flags.04606, %sw.bb222 ], [ %flags.04606, %ioc_bb260 ], [ %flags.04606, %ioc_bb264 ], [ %flags.04606, %ioc_bb368 ], [ %flags.04606, %ioc_bb387 ], [ %flags.04606, %for.body ], [ %flags.04606, %for.body ], [ %flags.04606, %sw.bb196 ], [ %flags.04606, %cont259 ], [ %flags.04606, %sw.bb263 ], [ %flags.04606, %sw.bb367 ], [ %flags.04606, %sw.bb386 ]
  %wantt.0.be = phi i32 [ %wantt.04608, %while.end467 ], [ %wantt.04608, %sw.bb453 ], [ %wantt.04608, %sw.bb451 ], [ %wantt.04608, %while.end446 ], [ %wantt.04608, %sw.bb425 ], [ %wantt.04608, %while.end ], [ 1, %sw.bb385 ], [ %wantt.04608, %cont384 ], [ %wantt.04608, %cont377 ], [ %wantt.04608, %sw.bb370 ], [ %wantt.04608, %if.then325 ], [ %wantt.04608, %if.then348 ], [ %wantt.04608, %cont356 ], [ %wantt.04608, %cont294 ], [ %wantt.04608, %cont276 ], [ %wantt.04608, %sw.bb273 ], [ %wantt.04608, %sw.bb272 ], [ %wantt.04608, %sw.bb271 ], [ %wantt.04608, %sw.bb270 ], [ %wantt.04608, %sw.bb269 ], [ %wantt.04608, %sw.bb268 ], [ %wantt.04608, %sw.bb267 ], [ %wantt.04608, %sw.bb266 ], [ %wantt.04608, %if.end251 ], [ %wantt.04608, %sw.bb237 ], [ %wantt.04608, %sw.bb235 ], [ %wantt.04608, %sw.bb233 ], [ %wantt.04608, %sw.bb231 ], [ %wantt.04608, %sw.bb229 ], [ %wantt.04608, %sw.bb227 ], [ %wantt.04608, %sw.bb221 ], [ %wantt.04608, %sw.bb220 ], [ %wantt.04608, %sw.bb219 ], [ %wantt.04608, %if.end217 ], [ %wantt.04608, %sw.bb209 ], [ %wantt.04608, %sw.bb207 ], [ %wantt.04608, %sw.bb205 ], [ %wantt.04608, %sw.bb203 ], [ %wantt.04608, %sw.bb201 ], [ %wantt.04608, %sw.bb200 ], [ %wantt.04608, %sw.bb199 ], [ %wantt.04608, %sw.bb193 ], [ %wantt.04608, %ioc_bb197 ], [ %wantt.04608, %sw.bb222 ], [ %wantt.04608, %ioc_bb260 ], [ %wantt.04608, %ioc_bb264 ], [ %wantt.04608, %ioc_bb368 ], [ %wantt.04608, %ioc_bb387 ], [ %wantt.04608, %for.body ], [ %wantt.04608, %for.body ], [ %wantt.04608, %sw.bb196 ], [ %wantt.04608, %cont259 ], [ %wantt.04608, %sw.bb263 ], [ %wantt.04608, %sw.bb367 ], [ %wantt.04608, %sw.bb386 ]
  %whichlen.0.be = phi i32 [ %whichlen.04610, %while.end467 ], [ %whichlen.04610, %sw.bb453 ], [ %whichlen.04610, %sw.bb451 ], [ %whichlen.04610, %while.end446 ], [ %whichlen.04610, %sw.bb425 ], [ %whichlen.04610, %while.end ], [ %whichlen.04610, %sw.bb385 ], [ %whichlen.04610, %cont384 ], [ %whichlen.04610, %cont377 ], [ %whichlen.04610, %sw.bb370 ], [ %whichlen.04610, %if.then325 ], [ %whichlen.04610, %if.then348 ], [ %whichlen.04610, %cont356 ], [ %whichlen.04610, %cont294 ], [ %whichlen.04610, %cont276 ], [ %whichlen.04610, %sw.bb273 ], [ %whichlen.04610, %sw.bb272 ], [ 3, %sw.bb271 ], [ 2, %sw.bb270 ], [ 1, %sw.bb269 ], [ %whichlen.04610, %sw.bb268 ], [ %whichlen.04610, %sw.bb267 ], [ %whichlen.04610, %sw.bb266 ], [ %whichlen.04610, %if.end251 ], [ %whichlen.04610, %sw.bb237 ], [ %whichlen.04610, %sw.bb235 ], [ %whichlen.04610, %sw.bb233 ], [ %whichlen.04610, %sw.bb231 ], [ %whichlen.04610, %sw.bb229 ], [ %whichlen.04610, %sw.bb227 ], [ %whichlen.04610, %sw.bb221 ], [ %whichlen.04610, %sw.bb220 ], [ %whichlen.04610, %sw.bb219 ], [ %whichlen.04610, %if.end217 ], [ %whichlen.04610, %sw.bb209 ], [ %whichlen.04610, %sw.bb207 ], [ %whichlen.04610, %sw.bb205 ], [ %whichlen.04610, %sw.bb203 ], [ %whichlen.04610, %sw.bb201 ], [ %whichlen.04610, %sw.bb200 ], [ %whichlen.04610, %sw.bb199 ], [ %whichlen.04610, %sw.bb193 ], [ %whichlen.04610, %ioc_bb197 ], [ %whichlen.04610, %sw.bb222 ], [ %whichlen.04610, %ioc_bb260 ], [ %whichlen.04610, %ioc_bb264 ], [ %whichlen.04610, %ioc_bb368 ], [ %whichlen.04610, %ioc_bb387 ], [ %whichlen.04610, %for.body ], [ %whichlen.04610, %for.body ], [ %whichlen.04610, %sw.bb196 ], [ %whichlen.04610, %cont259 ], [ %whichlen.04610, %sw.bb263 ], [ %whichlen.04610, %sw.bb367 ], [ %whichlen.04610, %sw.bb386 ]
  %evalchar.0.be = phi i32 [ %evalchar.04612, %while.end467 ], [ 1, %sw.bb453 ], [ %evalchar.04612, %sw.bb451 ], [ %evalchar.04612, %while.end446 ], [ %evalchar.04612, %sw.bb425 ], [ %evalchar.04612, %while.end ], [ %evalchar.04612, %sw.bb385 ], [ %evalchar.04612, %cont384 ], [ %evalchar.04612, %cont377 ], [ %evalchar.04612, %sw.bb370 ], [ %evalchar.04612, %if.then325 ], [ %evalchar.04612, %if.then348 ], [ %evalchar.04612, %cont356 ], [ %evalchar.04612, %cont294 ], [ %evalchar.04612, %cont276 ], [ %evalchar.04612, %sw.bb273 ], [ %evalchar.04612, %sw.bb272 ], [ %evalchar.04612, %sw.bb271 ], [ %evalchar.04612, %sw.bb270 ], [ %evalchar.04612, %sw.bb269 ], [ %evalchar.04612, %sw.bb268 ], [ %evalchar.04612, %sw.bb267 ], [ %evalchar.04612, %sw.bb266 ], [ %evalchar.04612, %if.end251 ], [ %evalchar.04612, %sw.bb237 ], [ %evalchar.04612, %sw.bb235 ], [ %evalchar.04612, %sw.bb233 ], [ %evalchar.04612, %sw.bb231 ], [ %evalchar.04612, %sw.bb229 ], [ %evalchar.04612, %sw.bb227 ], [ %evalchar.04612, %sw.bb221 ], [ %evalchar.04612, %sw.bb220 ], [ %evalchar.04612, %sw.bb219 ], [ %evalchar.04612, %if.end217 ], [ %evalchar.04612, %sw.bb209 ], [ %evalchar.04612, %sw.bb207 ], [ %evalchar.04612, %sw.bb205 ], [ %evalchar.04612, %sw.bb203 ], [ %evalchar.04612, %sw.bb201 ], [ %evalchar.04612, %sw.bb200 ], [ %evalchar.04612, %sw.bb199 ], [ %evalchar.04612, %sw.bb193 ], [ %evalchar.04612, %ioc_bb197 ], [ %evalchar.04612, %sw.bb222 ], [ %evalchar.04612, %ioc_bb260 ], [ %evalchar.04612, %ioc_bb264 ], [ %evalchar.04612, %ioc_bb368 ], [ %evalchar.04612, %ioc_bb387 ], [ %evalchar.04612, %for.body ], [ %evalchar.04612, %for.body ], [ %evalchar.04612, %sw.bb196 ], [ %evalchar.04612, %cont259 ], [ %evalchar.04612, %sw.bb263 ], [ %evalchar.04612, %sw.bb367 ], [ %evalchar.04612, %sw.bb386 ]
  %.pn = load i8** %s, align 4
  %storemerge4203 = getelementptr inbounds i8* %.pn, i32 1
  store i8* %storemerge4203, i8** %s, align 4
  %69 = load i8* %storemerge4203, align 1, !tbaa !0
  %cmp181 = icmp eq i8 %69, 41
  br i1 %cmp181, label %for.end, label %ioc_bb185

sw.bb389:                                         ; preds = %for.body
  %70 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr390 = getelementptr inbounds i8* %70, i32 1
  store i8* %incdec.ptr390, i8** %s, align 4, !tbaa !3
  %call391 = call i8* @get_strarg(i8* %incdec.ptr390, i32* %arglen)
  %71 = load i8* %call391, align 1, !tbaa !0
  %tobool396 = icmp eq i8 %71, 0
  br i1 %tobool396, label %flagerr, label %cont399

cont399:                                          ; preds = %sw.bb389
  %cmp392 = icmp slt i32 %getkeys.04556, 0
  %.getkeys.0 = select i1 %cmp392, i32 0, i32 %getkeys.04556
  store i8 0, i8* %call391, align 1, !tbaa !0
  %72 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr4004449 = getelementptr inbounds i8* %72, i32 1
  store i8* %incdec.ptr4004449, i8** %s, align 4, !tbaa !3
  %73 = load i8* %incdec.ptr4004449, align 1, !tbaa !0
  %tobool4014450 = icmp eq i8 %73, 0
  br i1 %tobool4014450, label %while.end, label %while.body

while.body:                                       ; preds = %cont399, %while.cond.backedge
  %74 = phi i8* [ %incdec.ptr400, %while.cond.backedge ], [ %incdec.ptr4004449, %cont399 ]
  %75 = phi i8 [ %76, %while.cond.backedge ], [ %73, %cont399 ]
  %getkeys.24451 = phi i32 [ %getkeys.2.be, %while.cond.backedge ], [ %.getkeys.0, %cont399 ]
  %conv402 = sext i8 %75 to i32
  switch i32 %conv402, label %sw.default [
    i32 101, label %cont407
    i32 111, label %cont413
    i32 99, label %cont419
  ]

cont407:                                          ; preds = %while.body
  %or408 = or i32 %getkeys.24451, 2
  br label %while.cond.backedge

cont413:                                          ; preds = %while.body
  %or414 = or i32 %getkeys.24451, 1
  br label %while.cond.backedge

cont419:                                          ; preds = %while.body
  %or420 = or i32 %getkeys.24451, 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont419, %cont413, %cont407
  %getkeys.2.be = phi i32 [ %or420, %cont419 ], [ %or414, %cont413 ], [ %or408, %cont407 ]
  %incdec.ptr400 = getelementptr inbounds i8* %74, i32 1
  store i8* %incdec.ptr400, i8** %s, align 4, !tbaa !3
  %76 = load i8* %incdec.ptr400, align 1, !tbaa !0
  %tobool401 = icmp eq i8 %76, 0
  br i1 %tobool401, label %while.end, label %while.body

sw.default:                                       ; preds = %while.body
  store i8 %71, i8* %call391, align 1, !tbaa !0
  br label %flagerr

while.end:                                        ; preds = %while.cond.backedge, %cont399
  %getkeys.2.lcssa = phi i32 [ %.getkeys.0, %cont399 ], [ %getkeys.2.be, %while.cond.backedge ]
  store i8 %71, i8* %call391, align 1, !tbaa !0
  %77 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr421.sum = add i32 %77, -1
  %add.ptr422 = getelementptr inbounds i8* %call391, i32 %add.ptr421.sum
  store i8* %add.ptr422, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

sw.bb425:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb426:                                         ; preds = %for.body
  %78 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr427 = getelementptr inbounds i8* %78, i32 1
  store i8* %incdec.ptr427, i8** %s, align 4, !tbaa !3
  %call428 = call i8* @get_strarg(i8* %incdec.ptr427, i32* %arglen)
  %79 = load i8* %call428, align 1, !tbaa !0
  %tobool429 = icmp eq i8 %79, 0
  br i1 %tobool429, label %flagerr, label %cont432

cont432:                                          ; preds = %sw.bb426
  store i8 0, i8* %call428, align 1, !tbaa !0
  %80 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr4344444 = getelementptr inbounds i8* %80, i32 1
  store i8* %incdec.ptr4344444, i8** %s, align 4, !tbaa !3
  %81 = load i8* %incdec.ptr4344444, align 1, !tbaa !0
  %tobool4354445 = icmp eq i8 %81, 0
  br i1 %tobool4354445, label %while.end446, label %while.body436

while.body436:                                    ; preds = %cont432, %while.cond433.backedge
  %82 = phi i8* [ %incdec.ptr434, %while.cond433.backedge ], [ %incdec.ptr4344444, %cont432 ]
  %83 = phi i8 [ %84, %while.cond433.backedge ], [ %81, %cont432 ]
  %shsplit.14446 = phi i32 [ %shsplit.1.be, %while.cond433.backedge ], [ %shsplit.04586, %cont432 ]
  %conv437 = sext i8 %83 to i32
  switch i32 %conv437, label %sw.default444 [
    i32 99, label %sw.bb438
    i32 67, label %sw.bb440
    i32 110, label %sw.bb442
  ]

sw.bb438:                                         ; preds = %while.body436
  %or439 = or i32 %shsplit.14446, 4
  br label %while.cond433.backedge

sw.bb440:                                         ; preds = %while.body436
  %or441 = or i32 %shsplit.14446, 8
  br label %while.cond433.backedge

sw.bb442:                                         ; preds = %while.body436
  %or443 = or i32 %shsplit.14446, 16
  br label %while.cond433.backedge

while.cond433.backedge:                           ; preds = %sw.bb442, %sw.bb440, %sw.bb438
  %shsplit.1.be = phi i32 [ %or443, %sw.bb442 ], [ %or441, %sw.bb440 ], [ %or439, %sw.bb438 ]
  %incdec.ptr434 = getelementptr inbounds i8* %82, i32 1
  store i8* %incdec.ptr434, i8** %s, align 4, !tbaa !3
  %84 = load i8* %incdec.ptr434, align 1, !tbaa !0
  %tobool435 = icmp eq i8 %84, 0
  br i1 %tobool435, label %while.end446, label %while.body436

sw.default444:                                    ; preds = %while.body436
  store i8 %79, i8* %call428, align 1, !tbaa !0
  br label %flagerr

while.end446:                                     ; preds = %while.cond433.backedge, %cont432
  %shsplit.1.lcssa = phi i32 [ %shsplit.04586, %cont432 ], [ %shsplit.1.be, %while.cond433.backedge ]
  store i8 %79, i8* %call428, align 1, !tbaa !0
  %85 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr447.sum = add i32 %85, -1
  %add.ptr448 = getelementptr inbounds i8* %call428, i32 %add.ptr447.sum
  store i8* %add.ptr448, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

sw.bb451:                                         ; preds = %for.body
  br label %for.cond.backedge

sw.bb453:                                         ; preds = %for.body, %for.body
  br label %for.cond.backedge

sw.bb454:                                         ; preds = %for.body
  %86 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr455 = getelementptr inbounds i8* %86, i32 1
  store i8* %incdec.ptr455, i8** %s, align 4, !tbaa !3
  %call456 = call i8* @get_strarg(i8* %incdec.ptr455, i32* %arglen)
  %87 = load i8* %call456, align 1, !tbaa !0
  %tobool457 = icmp eq i8 %87, 0
  br i1 %tobool457, label %flagerr, label %cont460

cont460:                                          ; preds = %sw.bb454
  store i8 0, i8* %call456, align 1, !tbaa !0
  %88 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr462 = getelementptr inbounds i8* %88, i32 1
  store i8* %incdec.ptr462, i8** %s, align 4, !tbaa !3
  %89 = load i8* %incdec.ptr462, align 1, !tbaa !0
  %tobool463 = icmp eq i8 %89, 0
  store i8 %87, i8* %call456, align 1, !tbaa !0
  br i1 %tobool463, label %while.end467, label %flagerr

while.end467:                                     ; preds = %cont460
  %90 = load i32* %arglen, align 4, !tbaa !2
  %add.ptr468.sum = add i32 %90, -1
  %add.ptr469 = getelementptr inbounds i8* %call456, i32 %add.ptr468.sum
  store i8* %add.ptr469, i8** %s, align 4, !tbaa !3
  br label %for.cond.backedge

flagerr:                                          ; preds = %if.then248, %sw.bb288, %if.end350, %if.end327, %sw.bb389, %sw.bb426, %cont460, %sw.bb454, %for.body, %sw.bb307, %if.else253, %sw.bb239, %sw.bb211, %sw.default444, %sw.default
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([15 x i8]* @.str13, i32 0, i32 0)) nounwind
  br label %return

for.endsplit:                                     ; preds = %ioc_bb185
  %.pre = load i8** %s, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond.backedge, %for.endsplit, %for.cond.preheader
  %91 = phi i8* [ %storemerge42034549, %for.cond.preheader ], [ %.pre, %for.endsplit ], [ %storemerge4203, %for.cond.backedge ]
  %evalchar.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %evalchar.04612, %for.endsplit ], [ %evalchar.0.be, %for.cond.backedge ]
  %whichlen.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %whichlen.04610, %for.endsplit ], [ %whichlen.0.be, %for.cond.backedge ]
  %wantt.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %wantt.04608, %for.endsplit ], [ %wantt.0.be, %for.cond.backedge ]
  %flags.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %flags.04606, %for.endsplit ], [ %flags.0.be, %for.cond.backedge ]
  %flnum.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %flnum.04604, %for.endsplit ], [ %flnum.0.be, %for.cond.backedge ]
  %sortit.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %sortit.04602, %for.endsplit ], [ %sortit.0.be, %for.cond.backedge ]
  %indord.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %indord.04600, %for.endsplit ], [ %indord.0.be, %for.cond.backedge ]
  %unique.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %unique.04598, %for.endsplit ], [ %unique.0.be, %for.cond.backedge ]
  %casmod.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %casmod.04596, %for.endsplit ], [ %casmod.0.be, %for.cond.backedge ]
  %quotemod.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %quotemod.04594, %for.endsplit ], [ %quotemod.0.be, %for.cond.backedge ]
  %quotetype.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %quotetype.04592, %for.endsplit ], [ %quotetype.0.be, %for.cond.backedge ]
  %quoteerr.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %quoteerr.04590, %for.endsplit ], [ %quoteerr.0.be, %for.cond.backedge ]
  %mods.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %mods.04588, %for.endsplit ], [ %mods.0.be, %for.cond.backedge ]
  %shsplit.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %shsplit.04586, %for.endsplit ], [ %shsplit.0.be, %for.cond.backedge ]
  %sep.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %sep.04584, %for.endsplit ], [ %sep.0.be, %for.cond.backedge ]
  %spsep.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %spsep.04582, %for.endsplit ], [ %spsep.0.be, %for.cond.backedge ]
  %premul.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %premul.04581, %for.endsplit ], [ %premul.0.be, %for.cond.backedge ]
  %postmul.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %postmul.04580, %for.endsplit ], [ %postmul.0.be, %for.cond.backedge ]
  %preone.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %preone.04578, %for.endsplit ], [ %preone.0.be, %for.cond.backedge ]
  %postone.0.lcssa = phi i8* [ null, %for.cond.preheader ], [ %postone.04576, %for.endsplit ], [ %postone.0.be, %for.cond.backedge ]
  %prenum.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %prenum.04575, %for.endsplit ], [ %prenum.0.be, %for.cond.backedge ]
  %postnum.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %postnum.04574, %for.endsplit ], [ %postnum.0.be, %for.cond.backedge ]
  %multi_width.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %multi_width.04572, %for.endsplit ], [ %multi_width.0.be, %for.cond.backedge ]
  %arrasg.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %arrasg.04570, %for.endsplit ], [ %arrasg.0.be, %for.cond.backedge ]
  %eval.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %eval.04564, %for.endsplit ], [ %eval.0.be, %for.cond.backedge ]
  %hvals.0.lcssa = phi i8 [ 0, %for.cond.preheader ], [ %hvals.04562, %for.endsplit ], [ %hvals.0.be, %for.cond.backedge ]
  %hkeys.0.lcssa = phi i8 [ 0, %for.cond.preheader ], [ %hkeys.04560, %for.endsplit ], [ %hkeys.0.be, %for.cond.backedge ]
  %nojoin.0.lcssa = phi i32 [ %cond, %for.cond.preheader ], [ %nojoin.04558, %for.endsplit ], [ %nojoin.0.be, %for.cond.backedge ]
  %getkeys.0.lcssa = phi i32 [ -1, %for.cond.preheader ], [ %getkeys.04556, %for.endsplit ], [ %getkeys.0.be, %for.cond.backedge ]
  %presc.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %presc.04554, %for.endsplit ], [ %presc.0.be, %for.cond.backedge ]
  %aspar.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %aspar.04552, %for.endsplit ], [ %aspar.0.be, %for.cond.backedge ]
  %incdec.ptr475 = getelementptr inbounds i8* %91, i32 1
  store i8* %incdec.ptr475, i8** %s, align 4, !tbaa !3
  br label %if.end478

if.end478:                                        ; preds = %ioc_bb174.thread, %ioc_bb137.thread, %cont168, %for.end, %ioc_bb174, %ioc_bb137
  %aspar.2 = phi i32 [ 0, %cont168 ], [ %aspar.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %presc.2 = phi i32 [ 0, %cont168 ], [ %presc.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %getkeys.4 = phi i32 [ -1, %cont168 ], [ %getkeys.0.lcssa, %for.end ], [ -1, %ioc_bb174 ], [ -1, %ioc_bb137 ], [ -1, %ioc_bb137.thread ], [ -1, %ioc_bb174.thread ]
  %nojoin.2 = phi i32 [ %cond, %cont168 ], [ %nojoin.0.lcssa, %for.end ], [ %cond, %ioc_bb174 ], [ %cond, %ioc_bb137 ], [ %cond, %ioc_bb137.thread ], [ %cond, %ioc_bb174.thread ]
  %inbrace.0 = phi i8 [ 1, %cont168 ], [ 1, %for.end ], [ 1, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 1, %ioc_bb174.thread ]
  %hkeys.2 = phi i8 [ 2, %cont168 ], [ %hkeys.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %hvals.2 = phi i8 [ 0, %cont168 ], [ %hvals.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %eval.2 = phi i32 [ 0, %cont168 ], [ %eval.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %arrasg.2 = phi i32 [ 0, %cont168 ], [ %arrasg.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %multi_width.2 = phi i32 [ 0, %cont168 ], [ %multi_width.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %postnum.3 = phi i64 [ 0, %cont168 ], [ %postnum.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %prenum.3 = phi i64 [ 0, %cont168 ], [ %prenum.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %postone.3 = phi i8* [ null, %cont168 ], [ %postone.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %preone.3 = phi i8* [ null, %cont168 ], [ %preone.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %postmul.3 = phi i8* [ null, %cont168 ], [ %postmul.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %premul.3 = phi i8* [ null, %cont168 ], [ %premul.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %spsep.3 = phi i8* [ null, %cont168 ], [ %spsep.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %sep.3 = phi i8* [ null, %cont168 ], [ %sep.0.lcssa, %for.end ], [ null, %ioc_bb174 ], [ null, %ioc_bb137 ], [ null, %ioc_bb137.thread ], [ null, %ioc_bb174.thread ]
  %shsplit.3 = phi i32 [ 0, %cont168 ], [ %shsplit.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %mods.2 = phi i32 [ 0, %cont168 ], [ %mods.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %quoteerr.2 = phi i32 [ 0, %cont168 ], [ %quoteerr.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %quotetype.2 = phi i32 [ 0, %cont168 ], [ %quotetype.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %quotemod.2 = phi i32 [ 0, %cont168 ], [ %quotemod.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %casmod.2 = phi i32 [ 0, %cont168 ], [ %casmod.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %unique.2 = phi i32 [ 0, %cont168 ], [ %unique.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %indord.2 = phi i32 [ 0, %cont168 ], [ %indord.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %sortit.2 = phi i32 [ 0, %cont168 ], [ %sortit.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %flnum.2 = phi i32 [ 0, %cont168 ], [ %flnum.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %flags.2 = phi i32 [ 0, %cont168 ], [ %flags.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %wantt.2 = phi i32 [ 0, %cont168 ], [ %wantt.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %whichlen.2 = phi i32 [ 0, %cont168 ], [ %whichlen.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %evalchar.2 = phi i32 [ 0, %cont168 ], [ %evalchar.0.lcssa, %for.end ], [ 0, %ioc_bb174 ], [ 0, %ioc_bb137 ], [ 0, %ioc_bb137.thread ], [ 0, %ioc_bb174.thread ]
  %tobool479 = icmp eq i8* %premul.3, null
  %.premul.3 = select i1 %tobool479, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* %premul.3
  %tobool482 = icmp eq i8* %postmul.3, null
  %.postmul.3 = select i1 %tobool482, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* %postmul.3
  %tobool762 = icmp ne i8 %inbrace.0, 0
  %tobool716 = icmp eq i32 %aspar.2, 0
  %92 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %whichlen.2, i32 1)
  %93 = sext i32 %whichlen.2 to i64
  br label %for.cond485

for.cond485:                                      ; preds = %ioc_bb693, %ioc_bb502, %if.then506, %cont674, %if.then750, %if.then775, %if.then697, %if.then531, %land.end545, %if.else537, %if.end478
  %nojoin.3 = phi i32 [ %nojoin.2, %if.end478 ], [ %nojoin.3, %if.then506 ], [ %.nojoin.3, %if.then531 ], [ %lnot.ext548, %land.end545 ], [ %nojoin.3, %if.else537 ], [ %nojoin.3, %cont674 ], [ %nojoin.3, %if.then697 ], [ %nojoin.3, %if.then750 ], [ %nojoin.3, %if.then775 ], [ %nojoin.3, %ioc_bb502 ], [ %nojoin.3, %ioc_bb693 ]
  %spbreak.0 = phi i32 [ %land.ext, %if.end478 ], [ %spbreak.0, %if.then506 ], [ 0, %if.then531 ], [ 2, %land.end545 ], [ 2, %if.else537 ], [ %spbreak.0, %cont674 ], [ %spbreak.0, %if.then697 ], [ %spbreak.0, %if.then750 ], [ %spbreak.0, %if.then775 ], [ %spbreak.0, %ioc_bb502 ], [ %spbreak.0, %ioc_bb693 ]
  %chkset.0 = phi i32 [ 0, %if.end478 ], [ %chkset.0, %if.then506 ], [ %chkset.0, %if.then531 ], [ %chkset.0, %land.end545 ], [ %chkset.0, %if.else537 ], [ %chkset.0, %cont674 ], [ %chkset.0, %if.then697 ], [ 1, %if.then750 ], [ %chkset.0, %if.then775 ], [ %chkset.0, %ioc_bb502 ], [ %chkset.0, %ioc_bb693 ]
  %getlen.0 = phi i32 [ 0, %if.end478 ], [ %getlen.0, %if.then506 ], [ %getlen.0, %if.then531 ], [ %getlen.0, %land.end545 ], [ %getlen.0, %if.else537 ], [ %113, %cont674 ], [ %getlen.0, %if.then697 ], [ %getlen.0, %if.then750 ], [ %getlen.0, %if.then775 ], [ %getlen.0, %ioc_bb502 ], [ %getlen.0, %ioc_bb693 ]
  %globsubst.0 = phi i32 [ %conv1, %if.end478 ], [ %globsubst.0, %if.then506 ], [ %globsubst.0, %if.then531 ], [ %globsubst.0, %land.end545 ], [ %globsubst.0, %if.else537 ], [ %globsubst.0, %cont674 ], [ 0, %if.then697 ], [ %globsubst.0, %if.then750 ], [ %globsubst.0, %if.then775 ], [ %globsubst.0, %ioc_bb502 ], [ 2, %ioc_bb693 ]
  %plan9.0 = phi i32 [ %conv, %if.end478 ], [ 0, %if.then506 ], [ %plan9.0, %if.then531 ], [ %plan9.0, %land.end545 ], [ %plan9.0, %if.else537 ], [ %plan9.0, %cont674 ], [ %plan9.0, %if.then697 ], [ %plan9.0, %if.then750 ], [ %plan9.0, %if.then775 ], [ 1, %ioc_bb502 ], [ %plan9.0, %ioc_bb693 ]
  %94 = load i8** %s, align 4, !tbaa !3
  %95 = load i8* %94, align 1, !tbaa !0
  %cmp487 = icmp eq i8 %95, 94
  br i1 %cmp487, label %if.then495, label %ioc_bb491

ioc_bb491:                                        ; preds = %for.cond485
  call void @__ioc_report_conversion(i32 2247, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 134, i8 1) nounwind
  %cmp493 = icmp eq i8 %95, -122
  %.pre4828 = load i8** %s, align 4, !tbaa !3
  br i1 %cmp493, label %if.then495, label %if.else510

if.then495:                                       ; preds = %ioc_bb491, %for.cond485
  %96 = phi i8* [ %94, %for.cond485 ], [ %.pre4828, %ioc_bb491 ]
  %incdec.ptr496 = getelementptr inbounds i8* %96, i32 1
  store i8* %incdec.ptr496, i8** %s, align 4, !tbaa !3
  %97 = load i8* %incdec.ptr496, align 1, !tbaa !0
  %cmp498 = icmp eq i8 %97, 94
  br i1 %cmp498, label %if.then506, label %ioc_bb502

ioc_bb502:                                        ; preds = %if.then495
  call void @__ioc_report_conversion(i32 2249, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 134, i8 1) nounwind
  %cmp504 = icmp eq i8 %97, -122
  br i1 %cmp504, label %ioc_bb502.if.then506_crit_edge, label %for.cond485

ioc_bb502.if.then506_crit_edge:                   ; preds = %ioc_bb502
  %.pre4829 = load i8** %s, align 4, !tbaa !3
  br label %if.then506

if.then506:                                       ; preds = %ioc_bb502.if.then506_crit_edge, %if.then495
  %98 = phi i8* [ %.pre4829, %ioc_bb502.if.then506_crit_edge ], [ %incdec.ptr496, %if.then495 ]
  %incdec.ptr507 = getelementptr inbounds i8* %98, i32 1
  store i8* %incdec.ptr507, i8** %s, align 4, !tbaa !3
  br label %for.cond485

if.else510:                                       ; preds = %ioc_bb491
  %99 = load i8* %.pre4828, align 1, !tbaa !0
  %cmp512 = icmp eq i8 %99, 61
  br i1 %cmp512, label %if.then520, label %ioc_bb516

ioc_bb516:                                        ; preds = %if.else510
  call void @__ioc_report_conversion(i32 2256, i32 47, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  switch i8 %99, label %ioc_bb557 [
    i8 -117, label %ioc_bb516.if.then520_crit_edge
    i8 35, label %land.lhs.true561
  ]

ioc_bb516.if.then520_crit_edge:                   ; preds = %ioc_bb516
  %.pre4830 = load i8** %s, align 4, !tbaa !3
  br label %if.then520

if.then520:                                       ; preds = %ioc_bb516.if.then520_crit_edge, %if.else510
  %100 = phi i8* [ %.pre4830, %ioc_bb516.if.then520_crit_edge ], [ %.pre4828, %if.else510 ]
  %incdec.ptr521 = getelementptr inbounds i8* %100, i32 1
  store i8* %incdec.ptr521, i8** %s, align 4, !tbaa !3
  %101 = load i8* %incdec.ptr521, align 1, !tbaa !0
  %cmp523 = icmp eq i8 %101, 61
  br i1 %cmp523, label %if.then531, label %ioc_bb527

ioc_bb527:                                        ; preds = %if.then520
  call void @__ioc_report_conversion(i32 2258, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp529 = icmp eq i8 %101, -117
  br i1 %cmp529, label %ioc_bb527.if.then531_crit_edge, label %if.else537

ioc_bb527.if.then531_crit_edge:                   ; preds = %ioc_bb527
  %.pre4831 = load i8** %s, align 4, !tbaa !3
  br label %if.then531

if.then531:                                       ; preds = %ioc_bb527.if.then531_crit_edge, %if.then520
  %102 = phi i8* [ %.pre4831, %ioc_bb527.if.then531_crit_edge ], [ %incdec.ptr521, %if.then520 ]
  %cmp532 = icmp slt i32 %nojoin.3, 2
  %.nojoin.3 = select i1 %cmp532, i32 0, i32 %nojoin.3
  %incdec.ptr536 = getelementptr inbounds i8* %102, i32 1
  store i8* %incdec.ptr536, i8** %s, align 4, !tbaa !3
  br label %for.cond485

if.else537:                                       ; preds = %ioc_bb527
  %cmp538 = icmp slt i32 %nojoin.3, 2
  br i1 %cmp538, label %if.then540, label %for.cond485

if.then540:                                       ; preds = %if.else537
  %103 = load i8** @ifs, align 4, !tbaa !3
  %tobool541 = icmp eq i8* %103, null
  br i1 %tobool541, label %land.end545, label %land.rhs542

land.rhs542:                                      ; preds = %if.then540
  %104 = load i8* %103, align 1, !tbaa !0
  %phitmp4202 = icmp eq i8 %104, 0
  br label %land.end545

land.end545:                                      ; preds = %if.then540, %land.rhs542
  %105 = phi i1 [ true, %if.then540 ], [ %phitmp4202, %land.rhs542 ]
  %lnot.ext548 = zext i1 %105 to i32
  br label %for.cond485

ioc_bb557:                                        ; preds = %ioc_bb516
  call void @__ioc_report_conversion(i32 2270, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  switch i8 %99, label %ioc_bb682 [
    i8 -124, label %land.lhs.true561
    i8 126, label %if.then686
  ]

land.lhs.true561:                                 ; preds = %ioc_bb557, %ioc_bb516
  %106 = load i8** %s, align 4, !tbaa !3
  %add.ptr562 = getelementptr inbounds i8* %106, i32 1
  %call567 = call i8* @itype_end(i8* %add.ptr562, i32 128, i32 0) nounwind
  %107 = load i8** %s, align 4, !tbaa !3
  %add.ptr568 = getelementptr inbounds i8* %107, i32 1
  %cmp569 = icmp eq i8* %call567, %add.ptr568
  br i1 %cmp569, label %lor.lhs.false571, label %if.then672

lor.lhs.false571:                                 ; preds = %land.lhs.true561
  %108 = load i8* %call567, align 1, !tbaa !0
  %cmp574 = icmp eq i8 %108, 42
  br i1 %cmp574, label %if.then672, label %ioc_bb578

ioc_bb578:                                        ; preds = %lor.lhs.false571
  call void @__ioc_report_conversion(i32 2270, i32 127, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 135, i8 1) nounwind
  switch i8 %108, label %ioc_bb592 [
    i8 -121, label %if.then672
    i8 64, label %if.then672
    i8 63, label %if.then672
  ]

ioc_bb592:                                        ; preds = %ioc_bb578
  call void @__ioc_report_conversion(i32 2270, i32 175, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 149, i8 1) nounwind
  switch i8 %108, label %ioc_bb602 [
    i8 -107, label %if.then672
    i8 36, label %if.then672
  ]

ioc_bb602:                                        ; preds = %ioc_bb592
  call void @__ioc_report_conversion(i32 2270, i32 210, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp604 = icmp eq i8 %108, -123
  br i1 %cmp604, label %if.then672, label %ioc_bb608

ioc_bb608:                                        ; preds = %ioc_bb602
  call void @__ioc_report_conversion(i32 2270, i32 233, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  switch i8 %108, label %ioc_bb618 [
    i8 -118, label %if.then672
    i8 35, label %land.lhs.true622
  ]

ioc_bb618:                                        ; preds = %ioc_bb608
  call void @__ioc_report_conversion(i32 2270, i32 270, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  switch i8 %108, label %if.else676 [
    i8 -124, label %land.lhs.true622
    i8 45, label %if.then672
    i8 58, label %land.lhs.true637
  ]

land.lhs.true622:                                 ; preds = %ioc_bb608, %ioc_bb618
  %109 = load i8** %s, align 4, !tbaa !3
  %arrayidx623 = getelementptr inbounds i8* %109, i32 2
  %110 = load i8* %arrayidx623, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2270, i32 296, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp627 = icmp eq i8 %110, -114
  br i1 %cmp627, label %if.then672, label %lor.lhs.false633

lor.lhs.false633:                                 ; preds = %land.lhs.true622
  %cmp635 = icmp eq i8 %108, 58
  br i1 %cmp635, label %land.lhs.true637, label %if.else676

land.lhs.true637:                                 ; preds = %ioc_bb618, %lor.lhs.false633
  %111 = load i8** %s, align 4, !tbaa !3
  %arrayidx638 = getelementptr inbounds i8* %111, i32 2
  %112 = load i8* %arrayidx638, align 1, !tbaa !0
  %cmp640 = icmp eq i8 %112, 45
  br i1 %cmp640, label %if.then672, label %if.else676

if.then672:                                       ; preds = %ioc_bb608, %ioc_bb592, %ioc_bb592, %ioc_bb618, %ioc_bb578, %ioc_bb578, %ioc_bb578, %land.lhs.true561, %land.lhs.true637, %land.lhs.true622, %ioc_bb602, %lor.lhs.false571
  %113 = extractvalue { i32, i1 } %92, 0
  %114 = extractvalue { i32, i1 } %92, 1
  br i1 %114, label %ioc_bb673, label %cont674

ioc_bb673:                                        ; preds = %if.then672
  call void @__ioc_report_add_overflow(i32 2280, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 1, i64 %93, i8 13) nounwind
  br label %cont674

cont674:                                          ; preds = %if.then672, %ioc_bb673
  %115 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr675 = getelementptr inbounds i8* %115, i32 1
  store i8* %incdec.ptr675, i8** %s, align 4, !tbaa !3
  br label %for.cond485

if.else676:                                       ; preds = %lor.lhs.false633, %land.lhs.true637, %ioc_bb618
  call void @__ioc_report_conversion(i32 2270, i32 382, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  call void @__ioc_report_conversion(i32 2270, i32 414, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp678 = icmp eq i8 %99, 126
  br i1 %cmp678, label %if.then686, label %ioc_bb682

ioc_bb682:                                        ; preds = %if.else676, %ioc_bb557
  call void @__ioc_report_conversion(i32 2289, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  switch i8 %99, label %if.else760 [
    i8 -106, label %if.then686
    i8 43, label %if.then705
  ]

if.then686:                                       ; preds = %ioc_bb682, %ioc_bb557, %if.else676
  %116 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr687 = getelementptr inbounds i8* %116, i32 1
  store i8* %incdec.ptr687, i8** %s, align 4, !tbaa !3
  %117 = load i8* %incdec.ptr687, align 1, !tbaa !0
  %cmp689 = icmp eq i8 %117, 126
  br i1 %cmp689, label %if.then697, label %ioc_bb693

ioc_bb693:                                        ; preds = %if.then686
  call void @__ioc_report_conversion(i32 2291, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp695 = icmp eq i8 %117, -106
  br i1 %cmp695, label %ioc_bb693.if.then697_crit_edge, label %for.cond485

ioc_bb693.if.then697_crit_edge:                   ; preds = %ioc_bb693
  %.pre4858 = load i8** %s, align 4, !tbaa !3
  br label %if.then697

if.then697:                                       ; preds = %ioc_bb693.if.then697_crit_edge, %if.then686
  %118 = phi i8* [ %.pre4858, %ioc_bb693.if.then697_crit_edge ], [ %incdec.ptr687, %if.then686 ]
  %incdec.ptr698 = getelementptr inbounds i8* %118, i32 1
  store i8* %incdec.ptr698, i8** %s, align 4, !tbaa !3
  br label %for.cond485

if.then705:                                       ; preds = %ioc_bb682
  %119 = load i8** %s, align 4, !tbaa !3
  %add.ptr706 = getelementptr inbounds i8* %119, i32 1
  %call711 = call i8* @itype_end(i8* %add.ptr706, i32 128, i32 0) nounwind
  %120 = load i8** %s, align 4, !tbaa !3
  %add.ptr712 = getelementptr inbounds i8* %120, i32 1
  %cmp713 = icmp eq i8* %call711, %add.ptr712
  br i1 %cmp713, label %lor.lhs.false715, label %if.then750

lor.lhs.false715:                                 ; preds = %if.then705
  br i1 %tobool716, label %if.else752, label %land.lhs.true717

land.lhs.true717:                                 ; preds = %lor.lhs.false715
  %121 = load i8* %call711, align 1, !tbaa !0
  %cmp720 = icmp eq i8 %121, 36
  br i1 %cmp720, label %land.lhs.true736, label %ioc_bb725

ioc_bb725:                                        ; preds = %land.lhs.true717
  call void @__ioc_report_conversion(i32 2304, i32 100, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp727 = icmp eq i8 %121, -123
  br i1 %cmp727, label %land.lhs.true736, label %lor.lhs.false729

lor.lhs.false729:                                 ; preds = %ioc_bb725
  %122 = load i8** %s, align 4, !tbaa !3
  %arrayidx730 = getelementptr inbounds i8* %122, i32 1
  %123 = load i8* %arrayidx730, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2304, i32 134, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp734 = icmp eq i8 %123, -118
  br i1 %cmp734, label %land.lhs.true736, label %if.else752

land.lhs.true736:                                 ; preds = %lor.lhs.false729, %ioc_bb725, %land.lhs.true717
  %124 = load i8** %s, align 4, !tbaa !3
  %arrayidx737 = getelementptr inbounds i8* %124, i32 2
  %125 = load i8* %arrayidx737, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2304, i32 161, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp741 = icmp eq i8 %125, -115
  br i1 %cmp741, label %if.then750, label %lor.lhs.false743

lor.lhs.false743:                                 ; preds = %land.lhs.true736
  %126 = load i8** %s, align 4, !tbaa !3
  %arrayidx744 = getelementptr inbounds i8* %126, i32 2
  %127 = load i8* %arrayidx744, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2304, i32 186, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp748 = icmp eq i8 %127, -120
  br i1 %cmp748, label %if.then750, label %if.else752

if.then750:                                       ; preds = %lor.lhs.false743, %land.lhs.true736, %if.then705
  %128 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr751 = getelementptr inbounds i8* %128, i32 1
  store i8* %incdec.ptr751, i8** %s, align 4, !tbaa !3
  br label %for.cond485

if.else752:                                       ; preds = %lor.lhs.false715, %lor.lhs.false743, %lor.lhs.false729
  %tobool753 = icmp eq i8 %inbrace.0, 0
  br i1 %tobool753, label %cont756, label %if.else758

cont756:                                          ; preds = %if.else752
  store i8 36, i8* %0, align 1, !tbaa !0
  store i8* %incdec.ptr, i8** %str, align 4, !tbaa !3
  br label %return

if.else758:                                       ; preds = %if.else752
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %return

if.else760:                                       ; preds = %ioc_bb682
  br i1 %tobool762, label %land.lhs.true763, label %for.end784.thread

for.end784.thread:                                ; preds = %if.else760
  %tobool7854246 = icmp ne i32 %qt, 0
  %.globsubst.04247 = select i1 %tobool7854246, i32 0, i32 %globsubst.0
  %129 = load i8** %s, align 4, !tbaa !3
  br label %if.else892

land.lhs.true763:                                 ; preds = %if.else760
  %130 = load i8** %s, align 4, !tbaa !3
  %131 = load i8* %130, align 1, !tbaa !0
  %132 = icmp sgt i8 %131, -1
  br i1 %132, label %cont766, label %ioc_bb765

ioc_bb765:                                        ; preds = %land.lhs.true763
  %133 = sext i8 %131 to i64
  call void @__ioc_report_conversion(i32 2317, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %133, i8 1) nounwind
  br label %cont766

cont766:                                          ; preds = %ioc_bb765, %land.lhs.true763
  %idxprom = zext i8 %131 to i32
  %arrayidx767 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %134 = load i16* %arrayidx767, align 2, !tbaa !4
  %and773 = and i16 %134, 16384
  %tobool774 = icmp eq i16 %and773, 0
  br i1 %tobool774, label %cont792, label %if.then775

if.then775:                                       ; preds = %cont766
  %135 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr776 = getelementptr inbounds i8* %135, i32 1
  store i8* %incdec.ptr776, i8** %s, align 4, !tbaa !3
  br label %for.cond485

cont792:                                          ; preds = %cont766
  %tobool785 = icmp ne i32 %qt, 0
  %.globsubst.0 = select i1 %tobool785, i32 0, i32 %globsubst.0
  %136 = load i8** %s, align 4, !tbaa !3
  %arrayidx793 = getelementptr inbounds i8* %136, i32 -1
  %137 = load i8* %arrayidx793, align 1, !tbaa !0
  %tobool795 = icmp eq i8 %137, 0
  br i1 %tobool795, label %if.else892, label %land.lhs.true796

land.lhs.true796:                                 ; preds = %cont792
  %138 = load i8* %136, align 1, !tbaa !0
  %cmp798 = icmp eq i8 %138, 36
  br i1 %cmp798, label %land.rhs812, label %ioc_bb802

ioc_bb802:                                        ; preds = %land.lhs.true796
  call void @__ioc_report_conversion(i32 2344, i32 78, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp804 = icmp eq i8 %138, -123
  br i1 %cmp804, label %land.rhs812, label %lor.lhs.false806

lor.lhs.false806:                                 ; preds = %ioc_bb802
  %139 = load i8** %s, align 4, !tbaa !3
  %140 = load i8* %139, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2344, i32 113, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp810 = icmp eq i8 %140, -118
  br i1 %cmp810, label %land.rhs812, label %if.else892

land.rhs812:                                      ; preds = %lor.lhs.false806, %ioc_bb802, %land.lhs.true796
  %141 = load i8** %s, align 4, !tbaa !3
  %arrayidx813 = getelementptr inbounds i8* %141, i32 1
  %142 = load i8* %arrayidx813, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2344, i32 140, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp817 = icmp eq i8 %142, -115
  br i1 %cmp817, label %if.then827, label %land.end825

land.end825:                                      ; preds = %land.rhs812
  %143 = load i8** %s, align 4, !tbaa !3
  %arrayidx819 = getelementptr inbounds i8* %143, i32 1
  %144 = load i8* %arrayidx819, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2344, i32 165, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp823 = icmp eq i8 %144, -120
  %land.ext826 = zext i1 %cmp823 to i32
  br i1 %cmp823, label %if.then827, label %if.else892

if.then827:                                       ; preds = %land.rhs812, %land.end825
  %land.ext8264262 = phi i32 [ %land.ext826, %land.end825 ], [ 1, %land.rhs812 ]
  %145 = load i8** %s, align 4, !tbaa !3
  %146 = load i8* %145, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2346, i32 35, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %147 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr834 = getelementptr inbounds i8* %147, i32 1
  store i8* %incdec.ptr834, i8** %s, align 4, !tbaa !3
  store i8* %147, i8** %val, align 4, !tbaa !3
  %148 = load i8* %incdec.ptr834, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2348, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp838 = icmp eq i8 %148, -120
  call void @__ioc_report_conversion(i32 2348, i32 52, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 137, i8 1) nounwind
  call void @__ioc_report_conversion(i32 2348, i32 68, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  %conv848 = select i1 %cmp838, i8 -119, i8 -114
  %call849 = call i32 @skipparens(i8 signext %148, i8 signext %conv848, i8** %s) nounwind
  %149 = load i8** %s, align 4, !tbaa !3
  %150 = load i8* %149, align 1, !tbaa !0
  store i8 0, i8* %149, align 1, !tbaa !0
  %tobool853 = icmp ne i32 %aspar.2, 0
  %.aval = select i1 %tobool853, i8*** null, i8*** %aval
  %call858 = call fastcc i32 @multsub(i8** %val, i32 0, i8*** %.aval, i32* %isarr)
  %tobool859 = icmp eq i32 %call858, 0
  %cmp832.not = icmp ne i8 %146, -118
  %brmerge = or i1 %tobool859, %cmp832.not
  br i1 %brmerge, label %if.else866, label %cont864

cont864:                                          ; preds = %if.then827
  store i32 -1, i32* %isarr, align 4, !tbaa !2
  %call865 = call i8* @hcalloc(i32 4) nounwind
  %151 = bitcast i8* %call865 to i8**
  store i8** %151, i8*** %aval, align 4, !tbaa !3
  br label %cont874

if.else866:                                       ; preds = %if.then827
  %152 = load i8** %val, align 4, !tbaa !3
  %. = select i1 %tobool853, i8* %152, i8* %136
  br label %cont874

cont874:                                          ; preds = %if.else866, %cont864
  %aspar.3 = phi i32 [ 0, %cont864 ], [ %aspar.2, %if.else866 ]
  %idbeg.0 = phi i8* [ %136, %cont864 ], [ %., %if.else866 ]
  %153 = load i8** %s, align 4, !tbaa !3
  store i8 %150, i8* %153, align 1, !tbaa !0
  %.pre4816 = load i8** %s, align 4, !tbaa !3
  br label %while.cond876

while.cond876:                                    ; preds = %while.body889, %cont874
  %154 = phi i8* [ %incdec.ptr890, %while.body889 ], [ %.pre4816, %cont874 ]
  %155 = load i8* %154, align 1, !tbaa !0
  %156 = icmp sgt i8 %155, -1
  br i1 %156, label %cont879, label %ioc_bb878

ioc_bb878:                                        ; preds = %while.cond876
  %157 = sext i8 %155 to i64
  call void @__ioc_report_conversion(i32 2371, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %157, i8 1) nounwind
  br label %cont879

cont879:                                          ; preds = %ioc_bb878, %while.cond876
  %idxprom880 = zext i8 %155 to i32
  %arrayidx881 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom880
  %158 = load i16* %arrayidx881, align 2, !tbaa !4
  %and887 = and i16 %158, 16384
  %tobool888 = icmp eq i16 %and887, 0
  br i1 %tobool888, label %if.end908, label %while.body889

while.body889:                                    ; preds = %cont879
  %159 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr890 = getelementptr inbounds i8* %159, i32 1
  store i8* %incdec.ptr890, i8** %s, align 4, !tbaa !3
  br label %while.cond876

if.else892:                                       ; preds = %for.end784.thread, %cont792, %lor.lhs.false806, %land.end825
  %land.ext8264257 = phi i32 [ %land.ext826, %land.end825 ], [ 0, %lor.lhs.false806 ], [ 0, %cont792 ], [ 0, %for.end784.thread ]
  %tobool78542484256 = phi i1 [ %tobool785, %land.end825 ], [ %tobool785, %lor.lhs.false806 ], [ %tobool785, %cont792 ], [ %tobool7854246, %for.end784.thread ]
  %.globsubst.042514254 = phi i32 [ %.globsubst.0, %land.end825 ], [ %.globsubst.0, %lor.lhs.false806 ], [ %.globsubst.0, %cont792 ], [ %.globsubst.04247, %for.end784.thread ]
  %160 = phi i8* [ %136, %land.end825 ], [ %136, %lor.lhs.false806 ], [ %136, %cont792 ], [ %129, %for.end784.thread ]
  br i1 %tobool716, label %if.end908, label %cont899

cont899:                                          ; preds = %if.else892
  %cond900 = select i1 %tobool78542484256, i32 256, i32 0
  %call901 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %s, i32 1, i32 %cond900) nounwind
  %tobool902 = icmp eq %struct.value* %call901, null
  br i1 %tobool902, label %if.end908, label %if.then903

if.then903:                                       ; preds = %cont899
  %call904 = call i8* @getstrvalue(%struct.value* %call901) nounwind
  store i8* %call904, i8** %val, align 4, !tbaa !3
  br label %if.end908

if.end908:                                        ; preds = %cont879, %cont899, %if.else892, %if.then903
  %tobool78542484255 = phi i1 [ %tobool78542484256, %if.then903 ], [ %tobool78542484256, %if.else892 ], [ %tobool78542484256, %cont899 ], [ %tobool785, %cont879 ]
  %.globsubst.042514253 = phi i32 [ %.globsubst.042514254, %if.then903 ], [ %.globsubst.042514254, %if.else892 ], [ %.globsubst.042514254, %cont899 ], [ %.globsubst.0, %cont879 ]
  %aspar.4 = phi i32 [ %aspar.2, %if.then903 ], [ 0, %if.else892 ], [ %aspar.2, %cont899 ], [ %aspar.3, %cont879 ]
  %subexp.0 = phi i32 [ 1, %if.then903 ], [ %land.ext8264257, %if.else892 ], [ %land.ext8264257, %cont899 ], [ %land.ext8264262, %cont879 ]
  %v.0 = phi %struct.value* [ %call901, %if.then903 ], [ null, %if.else892 ], [ null, %cont899 ], [ null, %cont879 ]
  %vunset.0 = phi i32 [ 0, %if.then903 ], [ 0, %if.else892 ], [ 1, %cont899 ], [ 0, %cont879 ]
  %idbeg.1 = phi i8* [ %call904, %if.then903 ], [ %160, %if.else892 ], [ %160, %cont899 ], [ %idbeg.0, %cont879 ]
  %tobool909 = icmp ne i32 %subexp.0, 0
  %tobool911 = icmp eq i32 %aspar.4, 0
  %or.cond4205 = and i1 %tobool909, %tobool911
  br i1 %or.cond4205, label %if.end908.while.cond1136.preheader_crit_edge, label %if.then912

if.end908.while.cond1136.preheader_crit_edge:     ; preds = %if.end908
  %cond1201.pre = select i1 %tobool78542484255, i32 256, i32 0
  br label %while.cond1136.preheader

if.then912:                                       ; preds = %if.end908
  %161 = load i8** %val, align 4, !tbaa !3
  store i8* %161, i8** %ov, align 4, !tbaa !3
  %ov.s = select i1 %tobool909, i8** %ov, i8** %s
  %tobool918 = icmp ne i32 %wantt.2, 0
  br i1 %tobool918, label %cond.end931, label %cond.false922

cond.false922:                                    ; preds = %if.then912
  %162 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %tobool923 = icmp eq i8 %162, 0
  br i1 %tobool923, label %cond.end931, label %lor.rhs924

lor.rhs924:                                       ; preds = %cond.false922
  %phitmp = select i1 %tobool762, i32 1, i32 -1
  br label %cond.end931

cond.end931:                                      ; preds = %cond.false922, %lor.rhs924, %if.then912
  %cond932 = phi i32 [ -1, %if.then912 ], [ 1, %cond.false922 ], [ %phitmp, %lor.rhs924 ]
  %or9354186 = or i8 %hvals.2, %hkeys.2
  %or935 = sext i8 %or9354186 to i32
  %tobool936 = icmp ne i32 %arrasg.2, 0
  %cond941 = select i1 %tobool936, i32 64, i32 0
  %or942 = or i32 %cond941, %or935
  %cond948 = select i1 %tobool78542484255, i32 256, i32 0
  %or949 = or i32 %or942, %cond948
  %call950 = call %struct.value* @fetchvalue(%struct.value* %vbuf, i8** %ov.s, i32 %cond932, i32 %or949) nounwind
  %tobool951 = icmp ne %struct.value* %call950, null
  br i1 %tobool951, label %lor.lhs.false952, label %if.then967

lor.lhs.false952:                                 ; preds = %cond.end931
  %pm = getelementptr inbounds %struct.value* %call950, i32 0, i32 1
  %163 = load %struct.param** %pm, align 4, !tbaa !3
  %tobool953 = icmp eq %struct.param* %163, null
  br i1 %tobool953, label %lor.lhs.false963, label %land.lhs.true954

land.lhs.true954:                                 ; preds = %lor.lhs.false952
  %flags956 = getelementptr inbounds %struct.param* %163, i32 0, i32 0, i32 2
  %164 = load i32* %flags956, align 4, !tbaa !2
  %and961 = and i32 %164, 33554432
  %tobool962 = icmp eq i32 %and961, 0
  br i1 %tobool962, label %lor.lhs.false963, label %if.then967

lor.lhs.false963:                                 ; preds = %land.lhs.true954, %lor.lhs.false952
  %flags964 = getelementptr inbounds %struct.value* %call950, i32 0, i32 2
  %165 = load i32* %flags964, align 4, !tbaa !2
  %and965 = and i32 %165, 2
  %tobool966 = icmp eq i32 %and965, 0
  br i1 %tobool966, label %if.end968, label %if.then967

if.then967:                                       ; preds = %land.lhs.true954, %lor.lhs.false963, %cond.end931
  br label %if.end968

if.end968:                                        ; preds = %lor.lhs.false963, %if.then967
  %vunset.1 = phi i32 [ 1, %if.then967 ], [ %vunset.0, %lor.lhs.false963 ]
  br i1 %tobool918, label %if.then970, label %while.cond1136.preheader

if.then970:                                       ; preds = %if.end968
  br i1 %tobool951, label %land.lhs.true972, label %if.else1131

land.lhs.true972:                                 ; preds = %if.then970
  %pm973 = getelementptr inbounds %struct.value* %call950, i32 0, i32 1
  %166 = load %struct.param** %pm973, align 4, !tbaa !3
  %tobool974 = icmp eq %struct.param* %166, null
  br i1 %tobool974, label %if.else1131, label %land.lhs.true975

land.lhs.true975:                                 ; preds = %land.lhs.true972
  %flags978 = getelementptr inbounds %struct.param* %166, i32 0, i32 0, i32 2
  %167 = load i32* %flags978, align 4, !tbaa !2
  %and983 = and i32 %167, 33554432
  %tobool984 = icmp eq i32 %and983, 0
  br i1 %tobool984, label %if.then985, label %if.else1131

if.then985:                                       ; preds = %land.lhs.true975
  %and1009 = and i32 %167, 31
  switch i32 %and1009, label %if.then985.sw.epilog1016_crit_edge [
    i32 0, label %sw.bb1010
    i32 1, label %sw.bb1011
    i32 2, label %sw.bb1012
    i32 4, label %sw.bb1014
    i32 8, label %sw.bb1014
    i32 16, label %sw.bb1015
  ]

if.then985.sw.epilog1016_crit_edge:               ; preds = %if.then985
  %.pre4832 = load i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.bb1010:                                        ; preds = %if.then985
  store i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0), i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.bb1011:                                        ; preds = %if.then985
  store i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.bb1012:                                        ; preds = %if.then985
  store i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0), i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.bb1014:                                        ; preds = %if.then985, %if.then985
  store i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.bb1015:                                        ; preds = %if.then985
  store i8* getelementptr inbounds ([12 x i8]* @.str19, i32 0, i32 0), i8** %val, align 4, !tbaa !3
  br label %sw.epilog1016

sw.epilog1016:                                    ; preds = %if.then985.sw.epilog1016_crit_edge, %sw.bb1015, %sw.bb1014, %sw.bb1012, %sw.bb1011, %sw.bb1010
  %168 = phi i8* [ %.pre4832, %if.then985.sw.epilog1016_crit_edge ], [ getelementptr inbounds ([12 x i8]* @.str19, i32 0, i32 0), %sw.bb1015 ], [ getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), %sw.bb1014 ], [ getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0), %sw.bb1012 ], [ getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), %sw.bb1011 ], [ getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0), %sw.bb1010 ]
  %call1017 = call i8* @dupstring(i8* %168) nounwind
  store i8* %call1017, i8** %val, align 4, !tbaa !3
  %169 = load %struct.param** %pm973, align 4, !tbaa !3
  %level = getelementptr inbounds %struct.param* %169, i32 0, i32 8
  %170 = load i32* %level, align 4, !tbaa !2
  %tobool1019 = icmp eq i32 %170, 0
  br i1 %tobool1019, label %cont1026, label %if.then1020

if.then1020:                                      ; preds = %sw.epilog1016
  %call1021 = call i8* @dyncat(i8* %call1017, i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0)) nounwind
  store i8* %call1021, i8** %val, align 4, !tbaa !3
  br label %cont1026

cont1026:                                         ; preds = %sw.epilog1016, %if.then1020
  %171 = phi i8* [ %call1017, %sw.epilog1016 ], [ %call1021, %if.then1020 ]
  %and1027 = and i32 %167, 32
  %tobool1028 = icmp eq i32 %and1027, 0
  br i1 %tobool1028, label %cont1035, label %if.then1029

if.then1029:                                      ; preds = %cont1026
  %call1030 = call i8* @dyncat(i8* %171, i8* getelementptr inbounds ([6 x i8]* @.str21, i32 0, i32 0)) nounwind
  store i8* %call1030, i8** %val, align 4, !tbaa !3
  br label %cont1035

cont1035:                                         ; preds = %cont1026, %if.then1029
  %172 = phi i8* [ %171, %cont1026 ], [ %call1030, %if.then1029 ]
  %and1036 = and i32 %167, 64
  %tobool1037 = icmp eq i32 %and1036, 0
  br i1 %tobool1037, label %cont1044, label %if.then1038

if.then1038:                                      ; preds = %cont1035
  %call1039 = call i8* @dyncat(i8* %172, i8* getelementptr inbounds ([14 x i8]* @.str22, i32 0, i32 0)) nounwind
  store i8* %call1039, i8** %val, align 4, !tbaa !3
  br label %cont1044

cont1044:                                         ; preds = %cont1035, %if.then1038
  %173 = phi i8* [ %172, %cont1035 ], [ %call1039, %if.then1038 ]
  %and1045 = and i32 %167, 128
  %tobool1046 = icmp eq i32 %and1045, 0
  br i1 %tobool1046, label %cont1053, label %if.then1047

if.then1047:                                      ; preds = %cont1044
  %call1048 = call i8* @dyncat(i8* %173, i8* getelementptr inbounds ([13 x i8]* @.str23, i32 0, i32 0)) nounwind
  store i8* %call1048, i8** %val, align 4, !tbaa !3
  br label %cont1053

cont1053:                                         ; preds = %cont1044, %if.then1047
  %174 = phi i8* [ %173, %cont1044 ], [ %call1048, %if.then1047 ]
  %and1054 = and i32 %167, 256
  %tobool1055 = icmp eq i32 %and1054, 0
  br i1 %tobool1055, label %cont1062, label %if.then1056

if.then1056:                                      ; preds = %cont1053
  %call1057 = call i8* @dyncat(i8* %174, i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0)) nounwind
  store i8* %call1057, i8** %val, align 4, !tbaa !3
  br label %cont1062

cont1062:                                         ; preds = %cont1053, %if.then1056
  %175 = phi i8* [ %174, %cont1053 ], [ %call1057, %if.then1056 ]
  %and1063 = and i32 %167, 512
  %tobool1064 = icmp eq i32 %and1063, 0
  br i1 %tobool1064, label %cont1071, label %if.then1065

if.then1065:                                      ; preds = %cont1062
  %call1066 = call i8* @dyncat(i8* %175, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0)) nounwind
  store i8* %call1066, i8** %val, align 4, !tbaa !3
  br label %cont1071

cont1071:                                         ; preds = %cont1062, %if.then1065
  %176 = phi i8* [ %175, %cont1062 ], [ %call1066, %if.then1065 ]
  %and1072 = and i32 %167, 1024
  %tobool1073 = icmp eq i32 %and1072, 0
  br i1 %tobool1073, label %cont1080, label %if.then1074

if.then1074:                                      ; preds = %cont1071
  %call1075 = call i8* @dyncat(i8* %176, i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0)) nounwind
  store i8* %call1075, i8** %val, align 4, !tbaa !3
  br label %cont1080

cont1080:                                         ; preds = %cont1071, %if.then1074
  %177 = phi i8* [ %176, %cont1071 ], [ %call1075, %if.then1074 ]
  %and1081 = and i32 %167, 2048
  %tobool1082 = icmp eq i32 %and1081, 0
  br i1 %tobool1082, label %cont1089, label %if.then1083

if.then1083:                                      ; preds = %cont1080
  %call1084 = call i8* @dyncat(i8* %177, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0)) nounwind
  store i8* %call1084, i8** %val, align 4, !tbaa !3
  br label %cont1089

cont1089:                                         ; preds = %cont1080, %if.then1083
  %178 = phi i8* [ %177, %cont1080 ], [ %call1084, %if.then1083 ]
  %and1090 = and i32 %167, 4096
  %tobool1091 = icmp eq i32 %and1090, 0
  br i1 %tobool1091, label %cont1098, label %if.then1092

if.then1092:                                      ; preds = %cont1089
  %call1093 = call i8* @dyncat(i8* %178, i8* getelementptr inbounds ([8 x i8]* @.str28, i32 0, i32 0)) nounwind
  store i8* %call1093, i8** %val, align 4, !tbaa !3
  br label %cont1098

cont1098:                                         ; preds = %cont1089, %if.then1092
  %179 = phi i8* [ %178, %cont1089 ], [ %call1093, %if.then1092 ]
  %and1099 = and i32 %167, 8192
  %tobool1100 = icmp eq i32 %and1099, 0
  br i1 %tobool1100, label %cont1107, label %if.then1101

if.then1101:                                      ; preds = %cont1098
  %call1102 = call i8* @dyncat(i8* %179, i8* getelementptr inbounds ([8 x i8]* @.str29, i32 0, i32 0)) nounwind
  store i8* %call1102, i8** %val, align 4, !tbaa !3
  br label %cont1107

cont1107:                                         ; preds = %cont1098, %if.then1101
  %180 = phi i8* [ %179, %cont1098 ], [ %call1102, %if.then1101 ]
  %and1108 = and i32 %167, 16384
  %tobool1109 = icmp eq i32 %and1108, 0
  br i1 %tobool1109, label %cont1125, label %if.then1110

if.then1110:                                      ; preds = %cont1107
  %call1111 = call i8* @dyncat(i8* %180, i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0)) nounwind
  store i8* %call1111, i8** %val, align 4, !tbaa !3
  %call1120 = call i8* @dyncat(i8* %call1111, i8* getelementptr inbounds ([9 x i8]* @.str31, i32 0, i32 0)) nounwind
  store i8* %call1120, i8** %val, align 4, !tbaa !3
  br label %cont1125

cont1125:                                         ; preds = %cont1107, %if.then1110
  %181 = phi i8* [ %180, %cont1107 ], [ %call1120, %if.then1110 ]
  %and1126 = and i32 %167, 4194304
  %tobool1127 = icmp eq i32 %and1126, 0
  br i1 %tobool1127, label %if.end1133, label %if.then1128

if.then1128:                                      ; preds = %cont1125
  %call1129 = call i8* @dyncat(i8* %181, i8* getelementptr inbounds ([9 x i8]* @.str32, i32 0, i32 0)) nounwind
  store i8* %call1129, i8** %val, align 4, !tbaa !3
  br label %if.end1133

if.else1131:                                      ; preds = %land.lhs.true975, %land.lhs.true972, %if.then970
  %call1132 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call1132, i8** %val, align 4, !tbaa !3
  br label %if.end1133

if.end1133:                                       ; preds = %if.then1128, %cont1125, %if.else1131
  %vunset.2 = phi i32 [ %vunset.1, %if.else1131 ], [ 0, %cont1125 ], [ 0, %if.then1128 ]
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %while.cond1136.preheader

while.cond1136.preheader:                         ; preds = %if.end908.while.cond1136.preheader_crit_edge, %if.end968, %if.end1133
  %cond1201.pre-phi = phi i32 [ %cond1201.pre, %if.end908.while.cond1136.preheader_crit_edge ], [ %cond948, %if.end968 ], [ %cond948, %if.end1133 ]
  %v.1.ph = phi %struct.value* [ %v.0, %if.end908.while.cond1136.preheader_crit_edge ], [ %call950, %if.end968 ], [ null, %if.end1133 ]
  %vunset.3.ph = phi i32 [ %vunset.0, %if.end908.while.cond1136.preheader_crit_edge ], [ %vunset.1, %if.end968 ], [ %vunset.2, %if.end1133 ]
  %tobool1295 = icmp eq i8 %inbrace.0, 0
  br label %while.cond1136

while.cond1136:                                   ; preds = %while.cond1136.preheader, %if.end1294
  %horrible_offset_hack.0 = phi i32 [ %horrible_offset_hack.1, %if.end1294 ], [ 0, %while.cond1136.preheader ]
  %v.1 = phi %struct.value* [ null, %if.end1294 ], [ %v.1.ph, %while.cond1136.preheader ]
  %vunset.3 = phi i32 [ %vunset.54264, %if.end1294 ], [ %vunset.3.ph, %while.cond1136.preheader ]
  %tobool1137 = icmp eq %struct.value* %v.1, null
  br i1 %tobool1137, label %lor.rhs1138, label %if.end1209

lor.rhs1138:                                      ; preds = %while.cond1136
  br i1 %tobool762, label %land.rhs1145, label %lor.lhs.false1141

lor.lhs.false1141:                                ; preds = %lor.rhs1138
  %182 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %tobool1142 = icmp ne i8 %182, 0
  %tobool1144 = icmp eq i32 %vunset.3, 0
  %or.cond4206 = or i1 %tobool1142, %tobool1144
  br i1 %or.cond4206, label %if.end1362, label %land.rhs1145

land.rhs1145:                                     ; preds = %lor.lhs.false1141, %lor.rhs1138
  %183 = load i8** %s, align 4, !tbaa !3
  %184 = load i8* %183, align 1, !tbaa !0
  %cmp1147 = icmp eq i8 %184, 91
  br i1 %cmp1147, label %if.then1161, label %ioc_bb1151

ioc_bb1151:                                       ; preds = %land.rhs1145
  call void @__ioc_report_conversion(i32 2504, i32 93, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp1153 = icmp eq i8 %184, -113
  br i1 %cmp1153, label %if.then1161, label %while.end1298

if.then1161:                                      ; preds = %ioc_bb1151, %land.rhs1145
  %185 = load i8** %s, align 4, !tbaa !3
  %186 = load i8* %185, align 1, !tbaa !0
  %cmp1164 = icmp eq i8 %186, 91
  br i1 %cmp1164, label %if.end1173, label %ioc_bb1168

ioc_bb1168:                                       ; preds = %if.then1161
  call void @__ioc_report_conversion(i32 2519, i32 55, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp1170 = icmp eq i8 %186, -113
  br i1 %cmp1170, label %if.end1173, label %while.end1298

if.end1173:                                       ; preds = %ioc_bb1168, %if.then1161
  %tobool1174 = icmp eq i32 %vunset.3, 0
  br i1 %tobool1174, label %if.end1173.if.end1177_crit_edge, label %if.then1175

if.end1173.if.end1177_crit_edge:                  ; preds = %if.end1173
  %.pre4857 = load i32* %isarr, align 4, !tbaa !2
  %phitmp4869 = icmp ne i32 %.pre4857, 0
  br label %if.end1177

if.then1175:                                      ; preds = %if.end1173
  %call1176 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call1176, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end1177

if.end1177:                                       ; preds = %if.end1173.if.end1177_crit_edge, %if.then1175
  %187 = phi i1 [ %phitmp4869, %if.end1173.if.end1177_crit_edge ], [ false, %if.then1175 ]
  %cond1183 = zext i1 %187 to i32
  %call1184 = call %struct.param* @createparam(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0), i32 %cond1183) nounwind
  %188 = load i32* %isarr, align 4, !tbaa !2
  %tobool1185 = icmp eq i32 %188, 0
  br i1 %tobool1185, label %if.else1187, label %if.then1186

if.then1186:                                      ; preds = %if.end1177
  %189 = load i8*** %aval, align 4, !tbaa !3
  %u = getelementptr inbounds %struct.param* %call1184, i32 0, i32 1
  %arr = bitcast %union.anon* %u to i8***
  store i8** %189, i8*** %arr, align 4, !tbaa !3
  br label %if.end1190

if.else1187:                                      ; preds = %if.end1177
  %190 = load i8** %val, align 4, !tbaa !3
  %u1188 = getelementptr inbounds %struct.param* %call1184, i32 0, i32 1
  %str1189 = bitcast %union.anon* %u1188 to i8**
  store i8* %190, i8** %str1189, align 4, !tbaa !3
  br label %if.end1190

if.end1190:                                       ; preds = %if.else1187, %if.then1186
  %call1191 = call i8* @hcalloc(i32 24) nounwind
  %191 = bitcast i8* %call1191 to %struct.value*
  %192 = load i32* %isarr, align 4, !tbaa !2
  %isarr1192 = bitcast i8* %call1191 to i32*
  store i32 %192, i32* %isarr1192, align 4, !tbaa !2
  %pm1193 = getelementptr inbounds i8* %call1191, i32 4
  %193 = bitcast i8* %pm1193 to %struct.param**
  store %struct.param* %call1184, %struct.param** %193, align 4, !tbaa !3
  %end = getelementptr inbounds i8* %call1191, i32 16
  %194 = bitcast i8* %end to i32*
  store i32 -1, i32* %194, align 4, !tbaa !2
  %call1202 = call i32 @getindex(i8** %s, %struct.value* %191, i32 %cond1201.pre-phi) nounwind
  %tobool1203 = icmp ne i32 %call1202, 0
  %195 = load i8** %s, align 4, !tbaa !3
  %cmp1205 = icmp eq i8* %195, %185
  %or.cond4207 = or i1 %tobool1203, %cmp1205
  br i1 %or.cond4207, label %while.end1298, label %if.end1209

if.end1209:                                       ; preds = %while.cond1136, %if.end1190
  %v.2 = phi %struct.value* [ %191, %if.end1190 ], [ %v.1, %while.cond1136 ]
  %isarr1210 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 0
  %196 = load i32* %isarr1210, align 4, !tbaa !2
  store i32 %196, i32* %isarr, align 4, !tbaa !2
  %tobool1211 = icmp eq i32 %196, 0
  br i1 %tobool1211, label %if.else1228, label %if.then1212

if.then1212:                                      ; preds = %if.end1209
  %197 = load i32* %isarr1210, align 4, !tbaa !2
  %cmp1218 = icmp eq i32 %197, 4
  br i1 %cmp1218, label %if.then1220, label %if.else1225

if.then1220:                                      ; preds = %if.then1212
  store i32 0, i32* %isarr1210, align 4, !tbaa !2
  store i32 0, i32* %isarr, align 4, !tbaa !2
  %pm1222 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 1
  %198 = load %struct.param** %pm1222, align 4, !tbaa !3
  %nam = getelementptr inbounds %struct.param* %198, i32 0, i32 0, i32 1
  %199 = load i8** %nam, align 4, !tbaa !3
  %call1224 = call i8* @dupstring(i8* %199) nounwind
  store i8* %call1224, i8** %val, align 4, !tbaa !3
  br label %if.end1276

if.else1225:                                      ; preds = %if.then1212
  %call1226 = call i8** @getarrvalue(%struct.value* %v.2) nounwind
  store i8** %call1226, i8*** %aval, align 4, !tbaa !3
  br label %land.lhs.true1278

if.else1228:                                      ; preds = %if.end1209
  %pm1229 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 1
  %200 = load %struct.param** %pm1229, align 4, !tbaa !3
  %flags1231 = getelementptr inbounds %struct.param* %200, i32 0, i32 0, i32 2
  %201 = load i32* %flags1231, align 4, !tbaa !2
  %and1236 = and i32 %201, 1
  %tobool1237 = icmp eq i32 %and1236, 0
  br i1 %tobool1237, label %if.end1269, label %if.then1238

if.then1238:                                      ; preds = %if.else1228
  %gsu = getelementptr inbounds %struct.param* %200, i32 0, i32 2
  %a = bitcast %union.anon.0* %gsu to %struct.gsu_array**
  %202 = load %struct.gsu_array** %a, align 4, !tbaa !3
  %getfn = getelementptr inbounds %struct.gsu_array* %202, i32 0, i32 0
  %203 = load i8** (%struct.param*)** %getfn, align 4, !tbaa !3
  %call1241 = call i8** %203(%struct.param* %200) nounwind
  %call1242 = call i32 @arrlen(i8** %call1241) nounwind
  %start = getelementptr inbounds %struct.value* %v.2, i32 0, i32 3
  %204 = load i32* %start, align 4, !tbaa !2
  %cmp1243 = icmp slt i32 %204, 0
  %flags1246 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 2
  br i1 %cmp1243, label %if.then1245, label %if.end1255

if.then1245:                                      ; preds = %if.then1238
  %205 = load i32* %flags1246, align 4, !tbaa !2
  %and1247 = and i32 %205, 1
  %206 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call1242, i32 %and1247)
  %207 = extractvalue { i32, i1 } %206, 0
  %208 = extractvalue { i32, i1 } %206, 1
  br i1 %208, label %ioc_bb1250, label %cont1251

ioc_bb1250:                                       ; preds = %if.then1245
  %209 = zext i32 %and1247 to i64
  %210 = sext i32 %call1242 to i64
  call void @__ioc_report_add_overflow(i32 2579, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %210, i64 %209, i8 13) nounwind
  %.pre4817 = load i32* %start, align 4, !tbaa !2
  br label %cont1251

cont1251:                                         ; preds = %if.then1245, %ioc_bb1250
  %211 = phi i32 [ %204, %if.then1245 ], [ %.pre4817, %ioc_bb1250 ]
  %212 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %211, i32 %207)
  %213 = extractvalue { i32, i1 } %212, 0
  %214 = extractvalue { i32, i1 } %212, 1
  br i1 %214, label %ioc_bb1253, label %cont1254

ioc_bb1253:                                       ; preds = %cont1251
  %215 = sext i32 %207 to i64
  %216 = sext i32 %211 to i64
  call void @__ioc_report_add_overflow(i32 2579, i32 22, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %216, i64 %215, i8 13) nounwind
  br label %cont1254

cont1254:                                         ; preds = %cont1251, %ioc_bb1253
  store i32 %213, i32* %start, align 4, !tbaa !2
  br label %if.end1255

if.end1255:                                       ; preds = %if.then1238, %cont1254
  %217 = phi i32 [ %213, %cont1254 ], [ %204, %if.then1238 ]
  %218 = load i32* %flags1246, align 4, !tbaa !2
  %and1257 = and i32 %218, 1
  %tobool1258 = icmp eq i32 %and1257, 0
  br i1 %tobool1258, label %land.lhs.true1259, label %if.end1269

land.lhs.true1259:                                ; preds = %if.end1255
  %cmp1261 = icmp sge i32 %217, %call1242
  %cmp1265 = icmp slt i32 %217, 0
  %or.cond4208 = or i1 %cmp1261, %cmp1265
  %.vunset.3 = select i1 %or.cond4208, i32 1, i32 %vunset.3
  br label %if.end1269

if.end1269:                                       ; preds = %land.lhs.true1259, %if.end1255, %if.else1228
  %vunset.4 = phi i32 [ %vunset.3, %if.end1255 ], [ %vunset.3, %if.else1228 ], [ %.vunset.3, %land.lhs.true1259 ]
  %tobool1270 = icmp eq i32 %vunset.4, 0
  br i1 %tobool1270, label %if.then1271, label %if.end1276

if.then1271:                                      ; preds = %if.end1269
  %flags1272 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 2
  %219 = load i32* %flags1272, align 4, !tbaa !2
  %or1273 = or i32 %219, 4
  store i32 %or1273, i32* %flags1272, align 4, !tbaa !2
  %call1274 = call i8* @getstrvalue(%struct.value* %v.2) nounwind
  store i8* %call1274, i8** %val, align 4, !tbaa !3
  br label %land.lhs.true1278

if.end1276:                                       ; preds = %if.end1269, %if.then1220
  %vunset.5 = phi i32 [ %vunset.3, %if.then1220 ], [ %vunset.4, %if.end1269 ]
  %tobool1277 = icmp eq %struct.value* %v.2, null
  br i1 %tobool1277, label %if.else1293, label %land.lhs.true1278

land.lhs.true1278:                                ; preds = %if.end1276, %if.else1225, %if.then1271
  %vunset.54266 = phi i32 [ 0, %if.then1271 ], [ %vunset.3, %if.else1225 ], [ %vunset.5, %if.end1276 ]
  %pm1279 = getelementptr inbounds %struct.value* %v.2, i32 0, i32 1
  %220 = load %struct.param** %pm1279, align 4, !tbaa !3
  %tobool1280 = icmp eq %struct.param* %220, null
  br i1 %tobool1280, label %if.else1293, label %land.lhs.true1281

land.lhs.true1281:                                ; preds = %land.lhs.true1278
  %gsu1283 = getelementptr inbounds %struct.param* %220, i32 0, i32 2
  %a1284 = bitcast %union.anon.0* %gsu1283 to %struct.gsu_array**
  %221 = load %struct.gsu_array** %a1284, align 4, !tbaa !3
  %cmp1285 = icmp eq %struct.gsu_array* %221, @vararray_gsu
  br i1 %cmp1285, label %land.lhs.true1287, label %if.else1293

land.lhs.true1287:                                ; preds = %land.lhs.true1281
  %u1289 = getelementptr inbounds %struct.param* %220, i32 0, i32 1
  %data = bitcast %union.anon* %u1289 to i8**
  %222 = load i8** %data, align 4, !tbaa !3
  %cmp1290 = icmp eq i8* %222, bitcast (i8*** @pparams to i8*)
  br i1 %cmp1290, label %if.end1294, label %if.else1293

if.else1293:                                      ; preds = %land.lhs.true1278, %if.end1276, %land.lhs.true1287, %land.lhs.true1281
  %vunset.54265 = phi i32 [ %vunset.54266, %land.lhs.true1278 ], [ %vunset.5, %if.end1276 ], [ %vunset.54266, %land.lhs.true1287 ], [ %vunset.54266, %land.lhs.true1281 ]
  br label %if.end1294

if.end1294:                                       ; preds = %land.lhs.true1287, %if.else1293
  %vunset.54264 = phi i32 [ %vunset.54265, %if.else1293 ], [ %vunset.54266, %land.lhs.true1287 ]
  %horrible_offset_hack.1 = phi i32 [ 0, %if.else1293 ], [ 1, %land.lhs.true1287 ]
  br i1 %tobool1295, label %while.end1298, label %while.cond1136

while.end1298:                                    ; preds = %if.end1190, %if.end1294, %ioc_bb1168, %ioc_bb1151
  %horrible_offset_hack.2 = phi i32 [ %horrible_offset_hack.1, %if.end1294 ], [ %horrible_offset_hack.0, %if.end1190 ], [ %horrible_offset_hack.0, %ioc_bb1168 ], [ %horrible_offset_hack.0, %ioc_bb1151 ]
  %vunset.6 = phi i32 [ %vunset.54264, %if.end1294 ], [ %vunset.3, %if.end1190 ], [ %vunset.3, %ioc_bb1168 ], [ %vunset.3, %ioc_bb1151 ]
  br i1 %tobool762, label %land.lhs.true1301, label %if.end1362

land.lhs.true1301:                                ; preds = %while.end1298
  %223 = load i8** %s, align 4, !tbaa !3
  %224 = load i8* %223, align 1, !tbaa !0
  switch i8 %224, label %ioc_bb1327 [
    i8 45, label %if.end1362
    i8 43, label %if.end1362
    i8 58, label %if.end1362
    i8 37, label %if.end1362
    i8 47, label %if.end1362
    i8 61, label %if.end1362
  ]

ioc_bb1327:                                       ; preds = %land.lhs.true1301
  call void @__ioc_report_conversion(i32 2620, i32 111, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  switch i8 %224, label %ioc_bb1337 [
    i8 -117, label %if.end1362
    i8 35, label %if.end1362
  ]

ioc_bb1337:                                       ; preds = %ioc_bb1327
  call void @__ioc_report_conversion(i32 2620, i32 145, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  switch i8 %224, label %ioc_bb1347 [
    i8 -124, label %if.end1362
    i8 63, label %if.end1362
  ]

ioc_bb1347:                                       ; preds = %ioc_bb1337
  call void @__ioc_report_conversion(i32 2620, i32 179, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 149, i8 1) nounwind
  switch i8 %224, label %ioc_bb1357 [
    i8 -107, label %if.end1362
    i8 125, label %if.end1362
  ]

ioc_bb1357:                                       ; preds = %ioc_bb1347
  call void @__ioc_report_conversion(i32 2620, i32 213, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp1359 = icmp eq i8 %224, -114
  br i1 %cmp1359, label %if.end1362, label %if.then1361

if.then1361:                                      ; preds = %ioc_bb1357
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) nounwind
  br label %return

if.end1362:                                       ; preds = %lor.lhs.false1141, %ioc_bb1357, %ioc_bb1347, %ioc_bb1347, %ioc_bb1337, %ioc_bb1337, %ioc_bb1327, %ioc_bb1327, %land.lhs.true1301, %land.lhs.true1301, %land.lhs.true1301, %land.lhs.true1301, %land.lhs.true1301, %land.lhs.true1301, %while.end1298
  %vunset.64269 = phi i32 [ %vunset.6, %while.end1298 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %land.lhs.true1301 ], [ %vunset.6, %ioc_bb1327 ], [ %vunset.6, %ioc_bb1327 ], [ %vunset.6, %ioc_bb1337 ], [ %vunset.6, %ioc_bb1337 ], [ %vunset.6, %ioc_bb1347 ], [ %vunset.6, %ioc_bb1347 ], [ %vunset.6, %ioc_bb1357 ], [ %vunset.3, %lor.lhs.false1141 ]
  %horrible_offset_hack.24268 = phi i32 [ %horrible_offset_hack.2, %while.end1298 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %land.lhs.true1301 ], [ %horrible_offset_hack.2, %ioc_bb1327 ], [ %horrible_offset_hack.2, %ioc_bb1327 ], [ %horrible_offset_hack.2, %ioc_bb1337 ], [ %horrible_offset_hack.2, %ioc_bb1337 ], [ %horrible_offset_hack.2, %ioc_bb1347 ], [ %horrible_offset_hack.2, %ioc_bb1347 ], [ %horrible_offset_hack.2, %ioc_bb1357 ], [ %horrible_offset_hack.0, %lor.lhs.false1141 ]
  %225 = load i32* %isarr, align 4, !tbaa !2
  %tobool1363 = icmp eq i32 %225, 0
  br i1 %tobool1363, label %if.end1379, label %if.then1364

if.then1364:                                      ; preds = %if.end1362
  %tobool1365 = icmp eq i32 %nojoin.3, 0
  br i1 %tobool1365, label %if.end1369, label %cont1368

cont1368:                                         ; preds = %if.then1364
  store i32 -1, i32* %isarr, align 4, !tbaa !2
  br label %if.end1369

if.end1369:                                       ; preds = %if.then1364, %cont1368
  %226 = phi i32 [ %225, %if.then1364 ], [ -1, %cont1368 ]
  %tobool1372 = icmp eq i32 %getlen.0, 0
  %or.cond4209 = and i1 %tobool78542484255, %tobool1372
  %cmp1374 = icmp sgt i32 %226, 0
  %or.cond = and i1 %or.cond4209, %cmp1374
  br i1 %or.cond, label %if.then1376, label %if.end1379

if.then1376:                                      ; preds = %if.end1369
  %227 = load i8*** %aval, align 4, !tbaa !3
  %call1377 = call i8* @sepjoin(i8** %227, i8* %sep.3, i32 1) nounwind
  store i8* %call1377, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end1379

if.end1379:                                       ; preds = %if.end1369, %if.end1362, %if.then1376
  %228 = load i8** %s, align 4, !tbaa !3
  br i1 %tobool762, label %while.cond1382, label %if.end1398

while.cond1382:                                   ; preds = %if.end1379, %while.body1395
  %229 = phi i8* [ %incdec.ptr1396, %while.body1395 ], [ %228, %if.end1379 ]
  %230 = load i8* %229, align 1, !tbaa !0
  %231 = icmp sgt i8 %230, -1
  br i1 %231, label %cont1385, label %ioc_bb1384

ioc_bb1384:                                       ; preds = %while.cond1382
  %232 = sext i8 %230 to i64
  call void @__ioc_report_conversion(i32 2663, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %232, i8 1) nounwind
  br label %cont1385

cont1385:                                         ; preds = %ioc_bb1384, %while.cond1382
  %idxprom1386 = zext i8 %230 to i32
  %arrayidx1387 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom1386
  %233 = load i16* %arrayidx1387, align 2, !tbaa !4
  %and1393 = and i16 %233, 16384
  %tobool1394 = icmp eq i16 %and1393, 0
  %.pre4818 = load i8** %s, align 4, !tbaa !3
  br i1 %tobool1394, label %if.end1398, label %while.body1395

while.body1395:                                   ; preds = %cont1385
  %incdec.ptr1396 = getelementptr inbounds i8* %.pre4818, i32 1
  store i8* %incdec.ptr1396, i8** %s, align 4, !tbaa !3
  br label %while.cond1382

if.end1398:                                       ; preds = %cont1385, %if.end1379
  %234 = phi i8* [ %228, %if.end1379 ], [ %.pre4818, %cont1385 ]
  %235 = load i8* %234, align 1, !tbaa !0
  %cmp1400 = icmp eq i8 %235, 58
  br i1 %cmp1400, label %if.then1402, label %if.end1404

if.then1402:                                      ; preds = %if.end1398
  %incdec.ptr1403 = getelementptr inbounds i8* %234, i32 1
  store i8* %incdec.ptr1403, i8** %s, align 4, !tbaa !3
  br label %if.end1404

if.end1404:                                       ; preds = %if.then1402, %if.end1398
  %236 = phi i8* [ %incdec.ptr1403, %if.then1402 ], [ %234, %if.end1398 ]
  br i1 %tobool762, label %for.cond1407.preheader, label %if.else2056

for.cond1407.preheader:                           ; preds = %if.end1404
  %237 = load i8* %236, align 1, !tbaa !0
  %tobool14084406 = icmp eq i8 %237, 0
  br i1 %tobool14084406, label %noclosebrace, label %ioc_bb1411

ioc_bb1411:                                       ; preds = %for.cond1407.preheader, %for.inc1431
  %238 = phi i8 [ %247, %for.inc1431 ], [ %237, %for.cond1407.preheader ]
  %fstr.04408 = phi i8* [ %incdec.ptr1432, %for.inc1431 ], [ %236, %for.cond1407.preheader ]
  %bct.04407 = phi i32 [ %bct.1, %for.inc1431 ], [ 1, %for.cond1407.preheader ]
  call void @__ioc_report_conversion(i32 2679, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp1413 = icmp eq i8 %238, -115
  br i1 %cmp1413, label %if.then1415, label %ioc_bb1420

if.then1415:                                      ; preds = %ioc_bb1411
  %239 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.04407, i32 1)
  %240 = extractvalue { i32, i1 } %239, 0
  %241 = extractvalue { i32, i1 } %239, 1
  br i1 %241, label %ioc_bb1416, label %for.inc1431

ioc_bb1416:                                       ; preds = %if.then1415
  %242 = sext i32 %bct.04407 to i64
  call void @__ioc_report_add_overflow(i32 2680, i32 12, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %242, i64 1, i8 13) nounwind
  br label %for.inc1431

ioc_bb1420:                                       ; preds = %ioc_bb1411
  call void @__ioc_report_conversion(i32 2681, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp1422 = icmp eq i8 %238, -114
  br i1 %cmp1422, label %land.lhs.true1424, label %for.inc1431

land.lhs.true1424:                                ; preds = %ioc_bb1420
  %243 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.04407, i32 -1)
  %244 = extractvalue { i32, i1 } %243, 0
  %245 = extractvalue { i32, i1 } %243, 1
  br i1 %245, label %ioc_bb1425, label %cont1426

ioc_bb1425:                                       ; preds = %land.lhs.true1424
  %246 = sext i32 %bct.04407 to i64
  call void @__ioc_report_add_overflow(i32 2681, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %246, i64 -1, i8 13) nounwind
  br label %cont1426

cont1426:                                         ; preds = %land.lhs.true1424, %ioc_bb1425
  %tobool1427 = icmp eq i32 %244, 0
  br i1 %tobool1427, label %cont1440, label %for.inc1431

for.inc1431:                                      ; preds = %ioc_bb1416, %if.then1415, %cont1426, %ioc_bb1420
  %bct.1 = phi i32 [ %244, %cont1426 ], [ %bct.04407, %ioc_bb1420 ], [ %240, %if.then1415 ], [ %240, %ioc_bb1416 ]
  %incdec.ptr1432 = getelementptr inbounds i8* %fstr.04408, i32 1
  %247 = load i8* %incdec.ptr1432, align 1, !tbaa !0
  %tobool1408 = icmp eq i8 %247, 0
  br i1 %tobool1408, label %for.end1433, label %ioc_bb1411

for.end1433:                                      ; preds = %for.inc1431
  %tobool1434 = icmp eq i32 %bct.1, 0
  br i1 %tobool1434, label %land.lhs.true1446, label %noclosebrace

noclosebrace:                                     ; preds = %for.cond1407.preheader, %for.end1433, %ioc_bb1705
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str33, i32 0, i32 0)) nounwind
  br label %return

cont1440:                                         ; preds = %cont1426
  %incdec.ptr1441 = getelementptr inbounds i8* %fstr.04408, i32 1
  store i8 0, i8* %fstr.04408, align 1, !tbaa !0
  br label %land.lhs.true1446

land.lhs.true1446:                                ; preds = %cont1440, %for.end1433
  %fstr.1 = phi i8* [ %incdec.ptr1441, %cont1440 ], [ %incdec.ptr1432, %for.end1433 ]
  %248 = load i8** %s, align 4, !tbaa !3
  %249 = load i8* %248, align 1, !tbaa !0
  switch i8 %249, label %ioc_bb1464 [
    i8 45, label %if.then1496
    i8 43, label %if.then1496
    i8 58, label %if.then1496
    i8 61, label %if.then1496
  ]

ioc_bb1464:                                       ; preds = %land.lhs.true1446
  call void @__ioc_report_conversion(i32 2694, i32 88, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  switch i8 %249, label %ioc_bb1478 [
    i8 -117, label %if.then1496
    i8 37, label %if.then1496
    i8 35, label %if.then1496
  ]

ioc_bb1478:                                       ; preds = %ioc_bb1464
  call void @__ioc_report_conversion(i32 2694, i32 134, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  switch i8 %249, label %ioc_bb1488 [
    i8 -124, label %if.then1496
    i8 63, label %if.then1496
  ]

ioc_bb1488:                                       ; preds = %ioc_bb1478
  call void @__ioc_report_conversion(i32 2694, i32 168, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 149, i8 1) nounwind
  switch i8 %249, label %land.lhs.true1932 [
    i8 -107, label %if.then1496
    i8 47, label %if.then1496
  ]

if.then1496:                                      ; preds = %ioc_bb1488, %ioc_bb1488, %ioc_bb1478, %ioc_bb1478, %ioc_bb1464, %ioc_bb1464, %ioc_bb1464, %land.lhs.true1446, %land.lhs.true1446, %land.lhs.true1446, %land.lhs.true1446
  %tobool1497 = icmp eq i32 %flnum.2, 0
  %.flnum.2 = select i1 %tobool1497, i32 1, i32 %flnum.2
  %cmp1503 = icmp eq i8 %249, 37
  %or1506 = zext i1 %cmp1503 to i32
  %or1506.flags.2 = or i32 %or1506, %flags.2
  switch i8 %249, label %ioc_bb1517 [
    i8 37, label %land.lhs.true1521
    i8 35, label %land.lhs.true1521
  ]

ioc_bb1517:                                       ; preds = %if.then1496
  call void @__ioc_report_conversion(i32 2707, i32 47, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp1519 = icmp eq i8 %249, -124
  br i1 %cmp1519, label %land.lhs.true1521, label %ioc_bb1517.if.end1530_crit_edge

ioc_bb1517.if.end1530_crit_edge:                  ; preds = %ioc_bb1517
  %.pre4852 = load i8** %s, align 4, !tbaa !3
  br label %if.end1530

land.lhs.true1521:                                ; preds = %ioc_bb1517, %if.then1496, %if.then1496
  %250 = load i8** %s, align 4, !tbaa !3
  %arrayidx1523 = getelementptr inbounds i8* %250, i32 1
  %251 = load i8* %arrayidx1523, align 1, !tbaa !0
  %cmp1525 = icmp eq i8 %249, %251
  br i1 %cmp1525, label %if.then1527, label %if.end1530

if.then1527:                                      ; preds = %land.lhs.true1521
  store i8* %arrayidx1523, i8** %s, align 4, !tbaa !3
  %or1529 = or i32 %or1506.flags.2, 2
  br label %if.end1530

if.end1530:                                       ; preds = %ioc_bb1517.if.end1530_crit_edge, %if.then1527, %land.lhs.true1521
  %252 = phi i8* [ %arrayidx1523, %if.then1527 ], [ %250, %land.lhs.true1521 ], [ %.pre4852, %ioc_bb1517.if.end1530_crit_edge ]
  %flags.4 = phi i32 [ %or1529, %if.then1527 ], [ %or1506.flags.2, %land.lhs.true1521 ], [ %or1506.flags.2, %ioc_bb1517.if.end1530_crit_edge ]
  %incdec.ptr1531 = getelementptr inbounds i8* %252, i32 1
  store i8* %incdec.ptr1531, i8** %s, align 4, !tbaa !3
  %253 = load i8* %252, align 1, !tbaa !0
  %cmp1536 = icmp eq i8 %253, 47
  br i1 %cmp1536, label %if.then1538, label %if.end1629

if.then1538:                                      ; preds = %if.end1530
  %and1539 = lshr i32 %flags.4, 1
  %254 = and i32 %and1539, 2
  %255 = xor i32 %254, 2
  %256 = load i8* %incdec.ptr1531, align 1, !tbaa !0
  %cmp1543 = icmp eq i8 %256, 47
  br i1 %cmp1543, label %if.then1545, label %if.end1548

if.then1545:                                      ; preds = %if.then1538
  %or1546 = or i32 %255, 512
  %incdec.ptr1547 = getelementptr inbounds i8* %252, i32 2
  store i8* %incdec.ptr1547, i8** %s, align 4, !tbaa !3
  %257 = load i8* %incdec.ptr1547, align 1, !tbaa !0
  br label %if.end1548

if.end1548:                                       ; preds = %if.then1545, %if.then1538
  %258 = phi i8* [ %incdec.ptr1547, %if.then1545 ], [ %incdec.ptr1531, %if.then1538 ]
  %flags.5 = phi i32 [ %or1546, %if.then1545 ], [ %255, %if.then1538 ]
  %c.0 = phi i8 [ %257, %if.then1545 ], [ %256, %if.then1538 ]
  %cmp1550 = icmp eq i8 %c.0, 35
  br i1 %cmp1550, label %if.then1558, label %ioc_bb1554

ioc_bb1554:                                       ; preds = %if.end1548
  call void @__ioc_report_conversion(i32 2726, i32 36, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp1556 = icmp eq i8 %c.0, -124
  %.pre4853 = load i8** %s, align 4, !tbaa !3
  br i1 %cmp1556, label %if.then1558, label %if.end1561

if.then1558:                                      ; preds = %ioc_bb1554, %if.end1548
  %259 = phi i8* [ %258, %if.end1548 ], [ %.pre4853, %ioc_bb1554 ]
  %or1559 = or i32 %flags.5, 4096
  %incdec.ptr1560 = getelementptr inbounds i8* %259, i32 1
  store i8* %incdec.ptr1560, i8** %s, align 4, !tbaa !3
  br label %if.end1561

if.end1561:                                       ; preds = %ioc_bb1554, %if.then1558
  %260 = phi i8* [ %incdec.ptr1560, %if.then1558 ], [ %.pre4853, %ioc_bb1554 ]
  %flags.6 = phi i32 [ %or1559, %if.then1558 ], [ %flags.5, %ioc_bb1554 ]
  %261 = load i8* %260, align 1, !tbaa !0
  %cmp1563 = icmp eq i8 %261, 37
  br i1 %cmp1563, label %if.then1565, label %if.end1568

if.then1565:                                      ; preds = %if.end1561
  %or1566 = or i32 %flags.6, 1
  %incdec.ptr1567 = getelementptr inbounds i8* %260, i32 1
  store i8* %incdec.ptr1567, i8** %s, align 4, !tbaa !3
  br label %if.end1568

if.end1568:                                       ; preds = %if.then1565, %if.end1561
  %262 = phi i8* [ %incdec.ptr1567, %if.then1565 ], [ %260, %if.end1561 ]
  %flags.7 = phi i32 [ %or1566, %if.then1565 ], [ %flags.6, %if.end1561 ]
  %and1569 = and i32 %flags.7, 4097
  %tobool1570 = icmp eq i32 %and1569, 0
  %or1572 = or i32 %flags.7, 4
  %or1572.flags.7 = select i1 %tobool1570, i32 %or1572, i32 %flags.7
  br label %for.cond1574

for.cond1574:                                     ; preds = %for.inc1613, %if.end1568
  %ptr.0 = phi i8* [ %262, %if.end1568 ], [ %incdec.ptr1614, %for.inc1613 ]
  %263 = load i8* %ptr.0, align 1, !tbaa !0
  switch i8 %263, label %ioc_bb1585 [
    i8 0, label %cont1628
    i8 47, label %land.lhs.true1618
  ]

ioc_bb1585:                                       ; preds = %for.cond1574
  call void @__ioc_report_conversion(i32 2754, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp1587 = icmp eq i8 %263, -101
  br i1 %cmp1587, label %land.lhs.true1599, label %ioc_bb1591

ioc_bb1591:                                       ; preds = %ioc_bb1585
  call void @__ioc_report_conversion(i32 2754, i32 49, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 156, i8 1) nounwind
  switch i8 %263, label %for.inc1613 [
    i8 -100, label %land.lhs.true1599
    i8 92, label %land.lhs.true1599
  ]

land.lhs.true1599:                                ; preds = %ioc_bb1591, %ioc_bb1591, %ioc_bb1585
  %arrayidx1600 = getelementptr inbounds i8* %ptr.0, i32 1
  %264 = load i8* %arrayidx1600, align 1, !tbaa !0
  switch i8 %264, label %if.else1609 [
    i8 0, label %for.inc1613
    i8 47, label %if.then1608
  ]

if.then1608:                                      ; preds = %land.lhs.true1599
  call void @chuck(i8* %ptr.0) nounwind
  br label %for.inc1613

if.else1609:                                      ; preds = %land.lhs.true1599
  br label %for.inc1613

for.inc1613:                                      ; preds = %land.lhs.true1599, %ioc_bb1591, %if.else1609, %if.then1608
  %ptr.1 = phi i8* [ %ptr.0, %if.then1608 ], [ %arrayidx1600, %if.else1609 ], [ %ptr.0, %land.lhs.true1599 ], [ %ptr.0, %ioc_bb1591 ]
  %incdec.ptr1614 = getelementptr inbounds i8* %ptr.1, i32 1
  br label %for.cond1574

land.lhs.true1618:                                ; preds = %for.cond1574
  %arrayidx1619 = getelementptr inbounds i8* %ptr.0, i32 1
  %265 = load i8* %arrayidx1619, align 1, !tbaa !0
  %tobool1621 = icmp eq i8 %265, 0
  %.arrayidx1619 = select i1 %tobool1621, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* %arrayidx1619
  br label %cont1628

cont1628:                                         ; preds = %for.cond1574, %land.lhs.true1618
  %cond1626 = phi i8* [ %.arrayidx1619, %land.lhs.true1618 ], [ getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), %for.cond1574 ]
  store i8 0, i8* %ptr.0, align 1, !tbaa !0
  br label %if.end1629

if.end1629:                                       ; preds = %cont1628, %if.end1530
  %replstr.0 = phi i8* [ %cond1626, %cont1628 ], [ null, %if.end1530 ]
  %flags.9 = phi i32 [ %or1572.flags.7, %cont1628 ], [ %flags.4, %if.end1530 ]
  %or1632 = or i32 %flags.9, 256
  %flags.10 = select i1 %cmp1400, i32 %or1632, i32 %flags.9
  %and1634 = and i32 %flags.10, 248
  %tobool1635 = icmp eq i32 %and1634, 0
  %or1637 = or i32 %flags.10, 16
  %or1637.flags.10 = select i1 %tobool1635, i32 %or1637, i32 %flags.10
  %tobool1641 = icmp eq i32 %vunset.64269, 0
  %or.cond4211 = and i1 %cmp1400, %tobool1641
  br i1 %or.cond4211, label %if.then1642, label %cont1668

if.then1642:                                      ; preds = %if.end1629
  %266 = load i32* %isarr, align 4, !tbaa !2
  %tobool1643 = icmp eq i32 %266, 0
  br i1 %tobool1643, label %cond.false1648, label %cond.true1644

cond.true1644:                                    ; preds = %if.then1642
  %267 = load i8*** %aval, align 4, !tbaa !3
  %268 = load i8** %267, align 4, !tbaa !3
  %lnot1646 = icmp eq i8* %268, null
  br label %cond.end1664

cond.false1648:                                   ; preds = %if.then1642
  %269 = load i8** %val, align 4, !tbaa !3
  %270 = load i8* %269, align 1, !tbaa !0
  %tobool1649 = icmp eq i8 %270, 0
  br i1 %tobool1649, label %cond.end1664, label %ioc_bb1652

ioc_bb1652:                                       ; preds = %cond.false1648
  call void @__ioc_report_conversion(i32 2780, i32 66, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp1654 = icmp eq i8 %270, -99
  br i1 %cmp1654, label %land.rhs1656, label %cond.end1664

land.rhs1656:                                     ; preds = %ioc_bb1652
  %271 = load i8** %val, align 4, !tbaa !3
  %arrayidx1657 = getelementptr inbounds i8* %271, i32 1
  %272 = load i8* %arrayidx1657, align 1, !tbaa !0
  %lnot1659 = icmp eq i8 %272, 0
  br label %cond.end1664

cond.end1664:                                     ; preds = %cond.false1648, %land.rhs1656, %ioc_bb1652, %cond.true1644
  %lnot1646.sink = phi i1 [ %lnot1646, %cond.true1644 ], [ true, %cond.false1648 ], [ false, %ioc_bb1652 ], [ %lnot1659, %land.rhs1656 ]
  %lnot.ext1647 = zext i1 %lnot1646.sink to i32
  br label %cont1668

cont1668:                                         ; preds = %if.end1629, %cond.end1664
  %vunset.7 = phi i32 [ %lnot.ext1647, %cond.end1664 ], [ %vunset.64269, %if.end1629 ]
  %273 = load i8** %s, align 4, !tbaa !3
  %arrayidx1669 = getelementptr inbounds i8* %273, i32 -1
  %274 = load i8* %arrayidx1669, align 1, !tbaa !0
  %conv1670 = sext i8 %274 to i32
  switch i32 %conv1670, label %if.end2388 [
    i32 43, label %sw.bb1671
    i32 45, label %sw.bb1676
    i32 58, label %sw.bb1699
    i32 61, label %sw.bb1713
    i32 -117, label %sw.bb1713
    i32 63, label %sw.bb1849
    i32 -107, label %sw.bb1849
    i32 37, label %sw.bb1877
    i32 35, label %sw.bb1877
    i32 -124, label %sw.bb1877
    i32 47, label %sw.bb1877
  ]

sw.bb1671:                                        ; preds = %cont1668
  %tobool1672 = icmp eq i32 %vunset.7, 0
  br i1 %tobool1672, label %if.then1678, label %if.then1673

if.then1673:                                      ; preds = %sw.bb1671
  %call1674 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call1674, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2388

sw.bb1676:                                        ; preds = %cont1668
  %tobool1677 = icmp eq i32 %vunset.7, 0
  br i1 %tobool1677, label %if.end2388, label %if.then1678

if.then1678:                                      ; preds = %sw.bb1671, %sw.bb1676
  %call1679 = call i8* @dupstring(i8* %273) nounwind
  store i8* %call1679, i8** %val, align 4, !tbaa !3
  %tobool1680 = icmp eq i32 %spbreak.0, 0
  br i1 %tobool1680, label %if.end1687, label %if.then1681

if.then1681:                                      ; preds = %if.then1678
  %.4212 = select i1 %tobool911, i32 24, i32 16
  br label %if.end1687

if.end1687:                                       ; preds = %if.then1681, %if.then1678
  %split_flags.0 = phi i32 [ %.4212, %if.then1681 ], [ 32, %if.then1678 ]
  %tobool1688 = icmp ne i32 %aspar.4, 0
  %.aval3460 = select i1 %tobool1688, i8*** null, i8*** %aval
  %275 = call fastcc i32 @multsub(i8** %val, i32 %split_flags.0, i8*** %.aval3460, i32* %isarr)
  %cmp1694 = icmp eq i32 %.globsubst.042514253, 2
  %.globsubst.0. = select i1 %cmp1694, i32 2, i32 0
  br label %if.end2388

sw.bb1699:                                        ; preds = %cont1668
  %276 = load i8* %273, align 1, !tbaa !0
  %cmp1701 = icmp eq i8 %276, 61
  br i1 %cmp1701, label %sw.bb1713.thread, label %ioc_bb1705

ioc_bb1705:                                       ; preds = %sw.bb1699
  call void @__ioc_report_conversion(i32 2830, i32 46, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp1707 = icmp eq i8 %276, -117
  br i1 %cmp1707, label %ioc_bb1705.sw.bb1713.thread_crit_edge, label %noclosebrace

ioc_bb1705.sw.bb1713.thread_crit_edge:            ; preds = %ioc_bb1705
  %.pre4855 = load i8** %s, align 4, !tbaa !3
  br label %sw.bb1713.thread

sw.bb1713.thread:                                 ; preds = %ioc_bb1705.sw.bb1713.thread_crit_edge, %sw.bb1699
  %277 = phi i8* [ %.pre4855, %ioc_bb1705.sw.bb1713.thread_crit_edge ], [ %273, %sw.bb1699 ]
  %incdec.ptr1711 = getelementptr inbounds i8* %277, i32 1
  store i8* %incdec.ptr1711, i8** %s, align 4, !tbaa !3
  br label %if.then1715

sw.bb1713:                                        ; preds = %cont1668, %cont1668
  %tobool1714 = icmp eq i32 %vunset.7, 0
  br i1 %tobool1714, label %if.end2388, label %if.then1715

if.then1715:                                      ; preds = %sw.bb1713.thread, %sw.bb1713
  %278 = load i8* %228, align 1, !tbaa !0
  store i8 0, i8* %228, align 1, !tbaa !0
  %279 = load i8** %s, align 4, !tbaa !3
  %call1721 = call i8* @dupstring(i8* %279) nounwind
  store i8* %call1721, i8** %val, align 4, !tbaa !3
  %tobool1722 = icmp ne i8* %spsep.3, null
  %tobool1724 = icmp eq i32 %arrasg.2, 0
  %or.cond4213 = or i1 %tobool1722, %tobool1724
  br i1 %or.cond4213, label %if.then1725, label %if.else1729

if.then1725:                                      ; preds = %if.then1715
  %tobool1726 = icmp ne i32 %spbreak.0, 0
  %cond1727 = select i1 %tobool1726, i32 4, i32 32
  %280 = call fastcc i32 @multsub(i8** %val, i32 %cond1727, i8*** null, i32* %isarr)
  br label %if.end1735

if.else1729:                                      ; preds = %if.then1715
  %tobool1730 = icmp eq i32 %spbreak.0, 0
  %.4214 = select i1 %tobool1730, i32 32, i32 24
  %281 = call fastcc i32 @multsub(i8** %val, i32 %.4214, i8*** %aval, i32* %isarr)
  br label %if.end1735

if.end1735:                                       ; preds = %if.else1729, %if.then1725
  %spbreak.1 = phi i32 [ %spbreak.0, %if.then1725 ], [ 0, %if.else1729 ]
  br i1 %tobool1724, label %if.else1821, label %if.then1737

if.then1737:                                      ; preds = %if.end1735
  %tobool1722.not = xor i1 %tobool1722, true
  %tobool1743 = icmp eq i32 %spbreak.1, 0
  %or.cond4215 = and i1 %tobool1743, %tobool1722.not
  br i1 %or.cond4215, label %if.else1768, label %if.then1744

if.then1744:                                      ; preds = %if.then1737
  %282 = load i8** %val, align 4, !tbaa !3
  %call1745 = call i8** @sepsplit(i8* %282, i8* %spsep.3, i32 0, i32 1) nounwind
  store i8** %call1745, i8*** %aval, align 4, !tbaa !3
  %tobool1746 = icmp ne i32 %nojoin.3, 0
  %cond1747 = select i1 %tobool1746, i32 1, i32 2
  store i32 %cond1747, i32* %isarr, align 4, !tbaa !2
  %call1748 = call i32 @arrlen(i8** %call1745) nounwind
  %tobool1749 = icmp eq i32 %call1748, 0
  br i1 %tobool1749, label %if.else1766, label %land.lhs.true1750

land.lhs.true1750:                                ; preds = %if.then1744
  %283 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call1748, i32 1)
  %284 = extractvalue { i32, i1 } %283, 0
  %285 = extractvalue { i32, i1 } %283, 1
  %286 = sext i32 %call1748 to i64
  br i1 %285, label %ioc_bb1751, label %cont1752

ioc_bb1751:                                       ; preds = %land.lhs.true1750
  call void @__ioc_report_sub_overflow(i32 2871, i32 35, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %286, i64 1, i8 13) nounwind
  br label %cont1752

cont1752:                                         ; preds = %land.lhs.true1750, %ioc_bb1751
  %287 = load i8*** %aval, align 4, !tbaa !3
  %arrayidx1753 = getelementptr inbounds i8** %287, i32 %284
  %288 = load i8** %arrayidx1753, align 4, !tbaa !3
  %289 = load i8* %288, align 1, !tbaa !0
  %tobool1754 = icmp eq i8 %289, 0
  br i1 %tobool1754, label %if.then1755, label %if.end1758

if.then1755:                                      ; preds = %cont1752
  %290 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call1748, i32 -1)
  %291 = extractvalue { i32, i1 } %290, 0
  %292 = extractvalue { i32, i1 } %290, 1
  br i1 %292, label %ioc_bb1756, label %if.end1758

ioc_bb1756:                                       ; preds = %if.then1755
  call void @__ioc_report_add_overflow(i32 2872, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %286, i64 -1, i8 13) nounwind
  br label %if.end1758

if.end1758:                                       ; preds = %ioc_bb1756, %if.then1755, %cont1752
  %l1717.0 = phi i32 [ %call1748, %cont1752 ], [ %291, %if.then1755 ], [ %291, %ioc_bb1756 ]
  %tobool1759 = icmp eq i32 %l1717.0, 0
  br i1 %tobool1759, label %if.else1766, label %land.lhs.true1760

land.lhs.true1760:                                ; preds = %if.end1758
  %293 = load i8*** %aval, align 4, !tbaa !3
  %294 = load i8** %293, align 4, !tbaa !3
  %295 = load i8* %294, align 1, !tbaa !0
  %tobool1761 = icmp eq i8 %295, 0
  br i1 %tobool1761, label %if.then1762, label %if.else1766

if.then1762:                                      ; preds = %land.lhs.true1760
  %296 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l1717.0, i32 -1)
  %297 = extractvalue { i32, i1 } %296, 0
  %298 = extractvalue { i32, i1 } %296, 1
  br i1 %298, label %ioc_bb1763, label %cont1764

ioc_bb1763:                                       ; preds = %if.then1762
  %299 = sext i32 %l1717.0 to i64
  call void @__ioc_report_add_overflow(i32 2874, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %299, i64 -1, i8 13) nounwind
  %.pre4827 = load i8*** %aval, align 4, !tbaa !3
  br label %cont1764

cont1764:                                         ; preds = %if.then1762, %ioc_bb1763
  %300 = phi i8** [ %293, %if.then1762 ], [ %.pre4827, %ioc_bb1763 ]
  %add.ptr1765 = getelementptr inbounds i8** %300, i32 1
  br label %if.end1784

if.else1766:                                      ; preds = %if.end1758, %if.then1744, %land.lhs.true1760
  %l1717.04275 = phi i32 [ %l1717.0, %land.lhs.true1760 ], [ 0, %if.then1744 ], [ 0, %if.end1758 ]
  %301 = load i8*** %aval, align 4, !tbaa !3
  br label %if.end1784

if.else1768:                                      ; preds = %if.then1737
  %302 = load i32* %isarr, align 4, !tbaa !2
  %tobool1769 = icmp eq i32 %302, 0
  br i1 %tobool1769, label %if.then1770, label %if.else1781

if.then1770:                                      ; preds = %if.else1768
  %303 = load i8** %val, align 4, !tbaa !3
  %304 = load i8* %303, align 1, !tbaa !0
  %tobool1771 = icmp eq i8 %304, 0
  %cmp1773 = icmp sgt i32 %arrasg.2, 1
  %or.cond4216 = and i1 %tobool1771, %cmp1773
  %arrayidx1776 = getelementptr inbounds [2 x i8*]* %arr1738, i32 0, i32 0
  br i1 %or.cond4216, label %if.then1775, label %if.else1777

if.then1775:                                      ; preds = %if.then1770
  store i8* null, i8** %arrayidx1776, align 4, !tbaa !3
  br label %if.end1780

if.else1777:                                      ; preds = %if.then1770
  store i8* %303, i8** %arrayidx1776, align 4, !tbaa !3
  %arrayidx1779 = getelementptr inbounds [2 x i8*]* %arr1738, i32 0, i32 1
  store i8* null, i8** %arrayidx1779, align 4, !tbaa !3
  br label %if.end1780

if.end1780:                                       ; preds = %if.else1777, %if.then1775
  %l1717.1 = phi i32 [ 1, %if.else1777 ], [ 0, %if.then1775 ]
  store i8** %arrayidx1776, i8*** %aval, align 4, !tbaa !3
  br label %if.end1784

if.else1781:                                      ; preds = %if.else1768
  %305 = load i8*** %aval, align 4, !tbaa !3
  %call1782 = call i32 @arrlen(i8** %305) nounwind
  %306 = load i8*** %aval, align 4, !tbaa !3
  br label %if.end1784

if.end1784:                                       ; preds = %if.end1780, %if.else1781, %cont1764, %if.else1766
  %l1717.2 = phi i32 [ %l1717.04275, %if.else1766 ], [ %297, %cont1764 ], [ %call1782, %if.else1781 ], [ %l1717.1, %if.end1780 ]
  %t1739.0 = phi i8** [ %301, %if.else1766 ], [ %add.ptr1765, %cont1764 ], [ %306, %if.else1781 ], [ %arrayidx1776, %if.end1780 ]
  %307 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l1717.2, i32 1)
  %308 = extractvalue { i32, i1 } %307, 0
  %309 = extractvalue { i32, i1 } %307, 1
  br i1 %309, label %ioc_bb1785, label %cont1786

ioc_bb1785:                                       ; preds = %if.end1784
  %310 = sext i32 %l1717.2 to i64
  call void @__ioc_report_add_overflow(i32 2892, i32 49, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %310, i64 1, i8 13) nounwind
  br label %cont1786

cont1786:                                         ; preds = %if.end1784, %ioc_bb1785
  %311 = icmp sgt i32 %308, -1
  br i1 %311, label %cont1789, label %ioc_bb1788

ioc_bb1788:                                       ; preds = %cont1786
  %312 = sext i32 %308 to i64
  call void @__ioc_report_conversion(i32 2892, i32 46, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %312, i8 1) nounwind
  br label %cont1789

cont1789:                                         ; preds = %ioc_bb1788, %cont1786
  %313 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %308, i32 4)
  %314 = extractvalue { i32, i1 } %313, 0
  %315 = extractvalue { i32, i1 } %313, 1
  br i1 %315, label %ioc_bb1790, label %cont1791

ioc_bb1790:                                       ; preds = %cont1789
  %316 = zext i32 %308 to i64
  call void @__ioc_report_mul_overflow(i32 2892, i32 44, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %316, i8 5) nounwind
  br label %cont1791

cont1791:                                         ; preds = %cont1789, %ioc_bb1790
  %call1792 = call i8* @zalloc(i32 %314) nounwind
  %317 = bitcast i8* %call1792 to i8**
  br label %while.cond1793

while.cond1793:                                   ; preds = %while.body1797, %cont1791
  %l1717.3 = phi i32 [ %l1717.2, %cont1791 ], [ %319, %while.body1797 ]
  %t1739.1 = phi i8** [ %t1739.0, %cont1791 ], [ %incdec.ptr1798, %while.body1797 ]
  %p.0 = phi i8** [ %317, %cont1791 ], [ %incdec.ptr1800, %while.body1797 ]
  %318 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l1717.3, i32 -1)
  %319 = extractvalue { i32, i1 } %318, 0
  %320 = extractvalue { i32, i1 } %318, 1
  br i1 %320, label %ioc_bb1794, label %cont1795

ioc_bb1794:                                       ; preds = %while.cond1793
  %321 = sext i32 %l1717.3 to i64
  call void @__ioc_report_add_overflow(i32 2893, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %321, i64 -1, i8 13) nounwind
  br label %cont1795

cont1795:                                         ; preds = %while.cond1793, %ioc_bb1794
  %tobool1796 = icmp eq i32 %l1717.3, 0
  br i1 %tobool1796, label %while.end1801, label %while.body1797

while.body1797:                                   ; preds = %cont1795
  %322 = load i8** %t1739.1, align 4, !tbaa !3
  call void @untokenize(i8* %322) nounwind
  %incdec.ptr1798 = getelementptr inbounds i8** %t1739.1, i32 1
  %323 = load i8** %t1739.1, align 4, !tbaa !3
  %call1799 = call i8* @ztrdup(i8* %323) nounwind
  %incdec.ptr1800 = getelementptr inbounds i8** %p.0, i32 1
  store i8* %call1799, i8** %p.0, align 4, !tbaa !3
  br label %while.cond1793

while.end1801:                                    ; preds = %cont1795
  store i8* null, i8** %p.0, align 4, !tbaa !3
  %cmp1803 = icmp sgt i32 %arrasg.2, 1
  br i1 %cmp1803, label %if.then1805, label %if.else1818

if.then1805:                                      ; preds = %while.end1801
  %call1807 = call %struct.param* @sethparam(i8* %idbeg.1, i8** %317) nounwind
  %tobool1808 = icmp eq %struct.param* %call1807, null
  br i1 %tobool1808, label %if.end1824, label %if.then1809

if.then1809:                                      ; preds = %if.then1805
  %gsu1810 = getelementptr inbounds %struct.param* %call1807, i32 0, i32 2
  %h = bitcast %union.anon.0* %gsu1810 to %struct.gsu_hash**
  %324 = load %struct.gsu_hash** %h, align 4, !tbaa !3
  %getfn1811 = getelementptr inbounds %struct.gsu_hash* %324, i32 0, i32 0
  %325 = load %struct.hashtable* (%struct.param*)** %getfn1811, align 4, !tbaa !3
  %call1812 = call %struct.hashtable* %325(%struct.param* %call1807) nounwind
  %or18154198 = or i8 %hvals.2, %hkeys.2
  %or1815 = sext i8 %or18154198 to i32
  %call1816 = call i8** @paramvalarr(%struct.hashtable* %call1812, i32 %or1815) nounwind
  store i8** %call1816, i8*** %aval, align 4, !tbaa !3
  br label %if.end1824

if.else1818:                                      ; preds = %while.end1801
  %call1819 = call %struct.param* @assignaparam(i8* %idbeg.1, i8** %317, i32 0) nounwind
  br label %if.end1824

if.else1821:                                      ; preds = %if.end1735
  %326 = load i8** %val, align 4, !tbaa !3
  call void @untokenize(i8* %326) nounwind
  %327 = load i8** %val, align 4, !tbaa !3
  %call1822 = call i8* @ztrdup(i8* %327) nounwind
  %call1823 = call %struct.param* @assignsparam(i8* %idbeg.1, i8* %call1822, i32 0) nounwind
  br label %if.end1824

if.end1824:                                       ; preds = %if.then1805, %if.else1818, %if.then1809, %if.else1821
  store i8 %278, i8* %228, align 1, !tbaa !0
  %328 = load i32* %isarr, align 4, !tbaa !2
  %tobool1825 = icmp eq i32 %328, 0
  br i1 %tobool1825, label %if.end2388, label %if.then1826

if.then1826:                                      ; preds = %if.end1824
  %tobool1827 = icmp eq i32 %nojoin.3, 0
  br i1 %tobool1827, label %if.end1831, label %cont1830

cont1830:                                         ; preds = %if.then1826
  store i32 -1, i32* %isarr, align 4, !tbaa !2
  br label %if.end1831

if.end1831:                                       ; preds = %if.then1826, %cont1830
  %329 = phi i32 [ %328, %if.then1826 ], [ -1, %cont1830 ]
  %tobool1834 = icmp eq i32 %getlen.0, 0
  %or.cond4217 = and i1 %tobool78542484255, %tobool1834
  br i1 %or.cond4217, label %land.lhs.true1835, label %if.end2388

land.lhs.true1835:                                ; preds = %if.end1831
  %cmp1836.not = icmp slt i32 %329, 1
  %brmerge4218 = or i1 %cmp1836.not, %tobool1722
  %brmerge4218.not = xor i1 %brmerge4218, true
  %cmp1841 = icmp slt i32 %spbreak.1, 2
  %or.cond4219 = and i1 %cmp1841, %brmerge4218.not
  br i1 %or.cond4219, label %if.then1843, label %if.end2388

if.then1843:                                      ; preds = %land.lhs.true1835
  %330 = load i8*** %aval, align 4, !tbaa !3
  %call1844 = call i8* @sepjoin(i8** %330, i8* %sep.3, i32 1) nounwind
  store i8* %call1844, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2388

sw.bb1849:                                        ; preds = %cont1668, %cont1668
  %tobool1850 = icmp eq i32 %vunset.7, 0
  br i1 %tobool1850, label %if.end2388, label %if.then1851

if.then1851:                                      ; preds = %sw.bb1849
  %331 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !0
  %tobool1852 = icmp eq i8 %331, 0
  br i1 %tobool1852, label %return, label %cont1855

cont1855:                                         ; preds = %if.then1851
  store i8 0, i8* %228, align 1, !tbaa !0
  %332 = load i8** %s, align 4, !tbaa !3
  %333 = load i8* %332, align 1, !tbaa !0
  %tobool1857 = icmp ne i8 %333, 0
  %cond1861 = select i1 %tobool1857, i8* %332, i8* getelementptr inbounds ([18 x i8]* @.str35, i32 0, i32 0)
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i8* %idbeg.1, i8* %cond1861) nounwind
  %334 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !0
  %tobool1862 = icmp eq i8 %334, 0
  br i1 %tobool1862, label %if.then1863, label %return

if.then1863:                                      ; preds = %cont1855
  %335 = load i64* @mypid, align 8, !tbaa !5
  %call1864 = call i32 @getpid() nounwind
  %conv1865 = sext i32 %call1864 to i64
  %cmp1866 = icmp eq i64 %335, %conv1865
  br i1 %cmp1866, label %if.then1868, label %if.else1869

if.then1868:                                      ; preds = %if.then1863
  store i32 1, i32* @stopmsg, align 4, !tbaa !2
  call void @zexit(i32 1, i32 0) nounwind
  br label %return

if.else1869:                                      ; preds = %if.then1863
  call void @_exit(i32 1) noreturn nounwind
  unreachable

sw.bb1877:                                        ; preds = %cont1668, %cont1668, %cont1668, %cont1668
  %336 = load i32* @noerrs, align 4, !tbaa !2
  %tobool1878 = icmp eq i32 %quoteerr.2, 0
  br i1 %tobool1878, label %if.then1883, label %if.else1887

if.then1883:                                      ; preds = %sw.bb1877
  %337 = load i32* @errflag, align 4, !tbaa !2
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  %call1881 = call i32 @parse_subst_string(i8* %273) nounwind
  store i32 %336, i32* @noerrs, align 4, !tbaa !2
  store i32 %337, i32* @errflag, align 4, !tbaa !2
  %tobool1884 = icmp eq i32 %call1881, 0
  br i1 %tobool1884, label %if.end1897, label %if.then1885

if.then1885:                                      ; preds = %if.then1883
  %338 = load i8** %s, align 4, !tbaa !3
  call void @shtokenize(i8* %338) nounwind
  br label %if.end1897

if.else1887:                                      ; preds = %sw.bb1877
  %call18814276 = call i32 @parse_subst_string(i8* %273) nounwind
  store i32 %336, i32* @noerrs, align 4, !tbaa !2
  %339 = load i32* @errflag, align 4, !tbaa !2
  %340 = or i32 %339, %call18814276
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %if.end1897, label %cont1893

cont1893:                                         ; preds = %if.else1887
  %342 = load i8** %s, align 4, !tbaa !3
  %arrayidx1894 = getelementptr inbounds i8* %342, i32 -1
  %343 = load i8* %arrayidx1894, align 1, !tbaa !0
  %conv1895 = sext i8 %343 to i32
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([40 x i8]* @.str36, i32 0, i32 0), i32 %conv1895) nounwind
  br label %return

if.end1897:                                       ; preds = %if.else1887, %if.then1883, %if.then1885
  %344 = bitcast %union.linkroot* %foo.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %344) nounwind
  %345 = bitcast %struct.linknode* %__n0.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %345) nounwind
  %first.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0.i, %struct.linknode** %first.i, align 4, !tbaa !3
  %last.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0.i, %struct.linknode** %last.i, align 4, !tbaa !3
  %flags.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 2
  store i32 0, i32* %flags.i, align 4, !tbaa !2
  %next.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next.i, align 4, !tbaa !3
  %node.i = bitcast %union.linkroot* %foo.i to %struct.linknode*
  %prev.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 1
  store %struct.linknode* %node.i, %struct.linknode** %prev.i, align 4, !tbaa !3
  %346 = load i8** %s, align 4, !tbaa !3
  %dat.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 2
  store i8* %346, i8** %dat.i, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %foo.i, i32 4) nounwind
  %347 = load i32* @errflag, align 4, !tbaa !2
  %tobool.i = icmp eq i32 %347, 0
  br i1 %tobool.i, label %if.end.i, label %singsub.exit

if.end.i:                                         ; preds = %if.end1897
  %call.i = call i8* @ugetnode(%union.linkroot* %foo.i) nounwind
  store i8* %call.i, i8** %s, align 4, !tbaa !3
  br label %singsub.exit

singsub.exit:                                     ; preds = %if.end1897, %if.end.i
  call void @llvm.lifetime.end(i64 -1, i8* %344) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %345) nounwind
  %tobool1898 = icmp eq i32 %vunset.7, 0
  br i1 %tobool1898, label %land.lhs.true1899, label %if.then1914

land.lhs.true1899:                                ; preds = %singsub.exit
  %348 = load i32* %isarr, align 4, !tbaa !2
  %tobool1900 = icmp eq i32 %348, 0
  br i1 %tobool1900, label %land.lhs.true1899.if.then1923_crit_edge, label %if.then1903

land.lhs.true1899.if.then1923_crit_edge:          ; preds = %land.lhs.true1899
  %.pre4856 = load i8** %val, align 4, !tbaa !3
  br label %if.then1923

if.then1903:                                      ; preds = %land.lhs.true1899
  %349 = load i8*** %aval, align 4, !tbaa !3
  %call1904 = call i8** @arrdup(i8** %349) nounwind
  store i8** %call1904, i8*** %aval, align 4, !tbaa !3
  %350 = load i8** %call1904, align 4, !tbaa !3
  %tobool19074399 = icmp eq i8* %350, null
  br i1 %tobool19074399, label %for.end1911, label %for.body1908

for.body1908:                                     ; preds = %if.then1903, %for.body1908
  %351 = phi i8* [ %352, %for.body1908 ], [ %350, %if.then1903 ]
  %ap.04400 = phi i8** [ %incdec.ptr1910, %for.body1908 ], [ %call1904, %if.then1903 ]
  call void @untokenize(i8* %351) nounwind
  %incdec.ptr1910 = getelementptr inbounds i8** %ap.04400, i32 1
  %352 = load i8** %incdec.ptr1910, align 4, !tbaa !3
  %tobool1907 = icmp eq i8* %352, null
  br i1 %tobool1907, label %for.end1911, label %for.body1908

for.end1911:                                      ; preds = %for.body1908, %if.then1903
  %353 = load i8** %s, align 4, !tbaa !3
  call void @getmatcharr(i8*** %aval, i8* %353, i32 %or1637.flags.10, i32 %.flnum.2, i8* %replstr.0) nounwind
  br label %if.end2388

if.then1914:                                      ; preds = %singsub.exit
  %354 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 162), align 1, !tbaa !0
  %tobool1915 = icmp eq i8 %354, 0
  br i1 %tobool1915, label %cont1918, label %if.end1919

cont1918:                                         ; preds = %if.then1914
  store i8 0, i8* %228, align 1, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str37, i32 0, i32 0), i8* %idbeg.1) nounwind
  br label %return

if.end1919:                                       ; preds = %if.then1914
  %call1920 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call1920, i8** %val, align 4, !tbaa !3
  br label %if.then1923

if.then1923:                                      ; preds = %land.lhs.true1899.if.then1923_crit_edge, %if.end1919
  %355 = phi i8* [ %.pre4856, %land.lhs.true1899.if.then1923_crit_edge ], [ %call1920, %if.end1919 ]
  %call1924 = call i8* @dupstring(i8* %355) nounwind
  store i8* %call1924, i8** %val, align 4, !tbaa !3
  call void @untokenize(i8* %call1924) nounwind
  %356 = load i8** %s, align 4, !tbaa !3
  %call1926 = call i32 @getmatch(i8** %val, i8* %356, i32 %or1637.flags.10, i32 %.flnum.2, i8* %replstr.0) nounwind
  br label %if.end2388

land.lhs.true1932:                                ; preds = %ioc_bb1488
  %357 = load i8** %s, align 4, !tbaa !3
  %358 = load i8* %357, align 1, !tbaa !0
  %cmp1934 = icmp eq i8 %358, 124
  br i1 %cmp1934, label %if.then1952, label %ioc_bb1938

ioc_bb1938:                                       ; preds = %land.lhs.true1932
  call void @__ioc_report_conversion(i32 3036, i32 57, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 140, i8 1) nounwind
  %cmp1940 = icmp eq i8 %358, -116
  br i1 %cmp1940, label %if.then1952, label %lor.lhs.false1942

lor.lhs.false1942:                                ; preds = %ioc_bb1938
  %359 = load i8** %s, align 4, !tbaa !3
  %360 = load i8* %359, align 1, !tbaa !0
  %cmp1944 = icmp eq i8 %360, 42
  br i1 %cmp1944, label %if.then1952, label %ioc_bb1948

ioc_bb1948:                                       ; preds = %lor.lhs.false1942
  call void @__ioc_report_conversion(i32 3036, i32 99, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp1950 = icmp eq i8 %360, -121
  br i1 %cmp1950, label %if.then1952, label %if.else2056

if.then1952:                                      ; preds = %ioc_bb1948, %ioc_bb1938, %lor.lhs.false1942, %land.lhs.true1932
  %361 = load i8** %s, align 4, !tbaa !3
  %362 = load i8* %361, align 1, !tbaa !0
  %cmp1954 = icmp eq i8 %362, 42
  br i1 %cmp1954, label %lor.end1962, label %ioc_bb1958

ioc_bb1958:                                       ; preds = %if.then1952
  call void @__ioc_report_conversion(i32 3037, i32 54, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp1960 = icmp eq i8 %362, -121
  %.pre4826 = load i8** %s, align 4, !tbaa !3
  br label %lor.end1962

lor.end1962:                                      ; preds = %ioc_bb1958, %if.then1952
  %363 = phi i8* [ %361, %if.then1952 ], [ %.pre4826, %ioc_bb1958 ]
  %364 = phi i1 [ true, %if.then1952 ], [ %cmp1960, %ioc_bb1958 ]
  %incdec.ptr1965 = getelementptr inbounds i8* %363, i32 1
  store i8* %incdec.ptr1965, i8** %s, align 4, !tbaa !3
  %call1970 = call i8* @itype_end(i8* %incdec.ptr1965, i32 128, i32 0) nounwind
  %365 = load i8* %call1970, align 1, !tbaa !0
  %tobool1971 = icmp eq i8 %365, 0
  %366 = load i8** %s, align 4, !tbaa !3
  br i1 %tobool1971, label %if.end1973, label %if.then1972

if.then1972:                                      ; preds = %lor.end1962
  call void @untokenize(i8* %366) nounwind
  %367 = load i8** %s, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str38, i32 0, i32 0), i8* %367) nounwind
  br label %return

if.end1973:                                       ; preds = %lor.end1962
  %call1974 = call i8** @getaparam(i8* %366) nounwind
  %tobool1975 = icmp eq i8** %call1974, null
  br i1 %tobool1975, label %if.else2042, label %if.then1976

if.then1976:                                      ; preds = %if.end1973
  %call1977 = call i32 @arrlen(i8** %call1974) nounwind
  %368 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call1977, i32 1)
  %369 = extractvalue { i32, i1 } %368, 0
  %370 = extractvalue { i32, i1 } %368, 1
  br i1 %370, label %ioc_bb1978, label %cont1979

ioc_bb1978:                                       ; preds = %if.then1976
  %371 = sext i32 %call1977 to i64
  call void @__ioc_report_add_overflow(i32 3049, i32 52, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %371, i64 1, i8 13) nounwind
  br label %cont1979

cont1979:                                         ; preds = %if.then1976, %ioc_bb1978
  %conv1980 = sext i32 %369 to i64
  %call1981 = call %struct.hashtable* @newuniqtable(i64 %conv1980) nounwind
  %372 = load i8** %call1974, align 4, !tbaa !3
  %tobool19834373 = icmp eq i8* %372, null
  br i1 %tobool19834373, label %for.end1989, label %for.body1984

for.body1984:                                     ; preds = %cont1979, %for.body1984
  %373 = phi i8* [ %374, %for.body1984 ], [ %372, %cont1979 ]
  %ap1964.04374 = phi i8** [ %incdec.ptr1988, %for.body1984 ], [ %call1974, %cont1979 ]
  %call1985 = call i8* @zhalloc(i32 12) nounwind
  %call1986 = call %struct.hashnode* @addhashnode2(%struct.hashtable* %call1981, i8* %373, i8* %call1985) nounwind
  %incdec.ptr1988 = getelementptr inbounds i8** %ap1964.04374, i32 1
  %374 = load i8** %incdec.ptr1988, align 4, !tbaa !3
  %tobool1983 = icmp eq i8* %374, null
  br i1 %tobool1983, label %for.end1989, label %for.body1984

for.end1989:                                      ; preds = %for.body1984, %cont1979
  %tobool1990 = icmp eq i32 %vunset.64269, 0
  br i1 %tobool1990, label %land.lhs.true1991, label %if.then2021

land.lhs.true1991:                                ; preds = %for.end1989
  %375 = load i32* %isarr, align 4, !tbaa !2
  %tobool1992 = icmp eq i32 %375, 0
  br i1 %tobool1992, label %if.else2028, label %if.then1995

if.then1995:                                      ; preds = %land.lhs.true1991
  %376 = load i8*** %aval, align 4, !tbaa !3
  %call1996 = call i8** @arrdup(i8** %376) nounwind
  store i8** %call1996, i8*** %aval, align 4, !tbaa !3
  %377 = load i8** %call1996, align 4, !tbaa !3
  %tobool19994369 = icmp eq i8* %377, null
  br i1 %tobool19994369, label %for.end2018, label %for.body2000

for.body2000:                                     ; preds = %if.then1995, %for.inc2016
  %378 = phi i8* [ %381, %for.inc2016 ], [ %377, %if.then1995 ]
  %apsrc.04371 = phi i8** [ %incdec.ptr2017, %for.inc2016 ], [ %call1996, %if.then1995 ]
  %ap1964.14370 = phi i8** [ %ap1964.2, %for.inc2016 ], [ %call1996, %if.then1995 ]
  call void @untokenize(i8* %378) nounwind
  %379 = load i8** %apsrc.04371, align 4, !tbaa !3
  %call2001 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %call1981, i8* %379) nounwind
  %cmp2002 = icmp ne %struct.hashnode* %call2001, null
  br i1 %364, label %cond.true2005, label %cond.false2007

cond.true2005:                                    ; preds = %for.body2000
  br i1 %cmp2002, label %if.then2009, label %for.inc2016

cond.false2007:                                   ; preds = %for.body2000
  br i1 %cmp2002, label %for.inc2016, label %if.then2009

if.then2009:                                      ; preds = %cond.false2007, %cond.true2005
  %cmp2010 = icmp eq i8** %ap1964.14370, %apsrc.04371
  br i1 %cmp2010, label %if.end2013, label %if.then2012

if.then2012:                                      ; preds = %if.then2009
  %380 = load i8** %apsrc.04371, align 4, !tbaa !3
  store i8* %380, i8** %ap1964.14370, align 4, !tbaa !3
  br label %if.end2013

if.end2013:                                       ; preds = %if.then2009, %if.then2012
  %incdec.ptr2014 = getelementptr inbounds i8** %ap1964.14370, i32 1
  br label %for.inc2016

for.inc2016:                                      ; preds = %cond.true2005, %cond.false2007, %if.end2013
  %ap1964.2 = phi i8** [ %incdec.ptr2014, %if.end2013 ], [ %ap1964.14370, %cond.true2005 ], [ %ap1964.14370, %cond.false2007 ]
  %incdec.ptr2017 = getelementptr inbounds i8** %apsrc.04371, i32 1
  %381 = load i8** %incdec.ptr2017, align 4, !tbaa !3
  %tobool1999 = icmp eq i8* %381, null
  br i1 %tobool1999, label %for.end2018, label %for.body2000

for.end2018:                                      ; preds = %for.inc2016, %if.then1995
  %ap1964.1.lcssa = phi i8** [ %call1996, %if.then1995 ], [ %ap1964.2, %for.inc2016 ]
  store i8* null, i8** %ap1964.1.lcssa, align 4, !tbaa !3
  br label %if.end2041

if.then2021:                                      ; preds = %for.end1989
  %382 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 162), align 1, !tbaa !0
  %tobool2022 = icmp eq i8 %382, 0
  br i1 %tobool2022, label %cont2025, label %if.end2026

cont2025:                                         ; preds = %if.then2021
  store i8 0, i8* %228, align 1, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str37, i32 0, i32 0), i8* %idbeg.1) nounwind
  call void @deletehashtable(%struct.hashtable* %call1981) nounwind
  br label %return

if.end2026:                                       ; preds = %if.then2021
  %call2027 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2027, i8** %val, align 4, !tbaa !3
  br label %if.end2041

if.else2028:                                      ; preds = %land.lhs.true1991
  %383 = load i8** %val, align 4, !tbaa !3
  %call2029 = call %struct.hashnode* @gethashnode2(%struct.hashtable* %call1981, i8* %383) nounwind
  %cmp2030 = icmp ne %struct.hashnode* %call2029, null
  br i1 %364, label %cond.true2033, label %cond.false2035

cond.true2033:                                    ; preds = %if.else2028
  br i1 %cmp2030, label %if.end2041, label %if.then2037

cond.false2035:                                   ; preds = %if.else2028
  br i1 %cmp2030, label %if.then2037, label %if.end2041

if.then2037:                                      ; preds = %cond.false2035, %cond.true2033
  %call2038 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2038, i8** %val, align 4, !tbaa !3
  br label %if.end2041

if.end2041:                                       ; preds = %if.end2026, %if.then2037, %cond.false2035, %cond.true2033, %for.end2018
  %copied.3 = phi i32 [ 0, %if.end2026 ], [ 0, %cond.true2033 ], [ 0, %if.then2037 ], [ 0, %cond.false2035 ], [ 1, %for.end2018 ]
  call void @deletehashtable(%struct.hashtable* %call1981) nounwind
  br label %if.end2388

if.else2042:                                      ; preds = %if.end1973
  %tobool2045 = icmp eq i32 %vunset.64269, 0
  %or.cond4220 = and i1 %364, %tobool2045
  br i1 %or.cond4220, label %if.then2046, label %if.end2388

if.then2046:                                      ; preds = %if.else2042
  %384 = load i32* %isarr, align 4, !tbaa !2
  %tobool2047 = icmp eq i32 %384, 0
  br i1 %tobool2047, label %if.else2050, label %if.then2048

if.then2048:                                      ; preds = %if.then2046
  %call2049 = call i8** @mkarray(i8* null) nounwind
  store i8** %call2049, i8*** %aval, align 4, !tbaa !3
  br label %if.end2388

if.else2050:                                      ; preds = %if.then2046
  %call2051 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2051, i8** %val, align 4, !tbaa !3
  br label %if.end2388

if.else2056:                                      ; preds = %if.end1404, %ioc_bb1948
  %fstr.14271 = phi i8* [ %fstr.1, %ioc_bb1948 ], [ %236, %if.end1404 ]
  %tobool2057 = icmp eq i32 %chkset.0, 0
  %tobool2059 = icmp ne i32 %vunset.64269, 0
  br i1 %tobool2057, label %if.else2062, label %if.then2058

if.then2058:                                      ; preds = %if.else2056
  %cond2060 = select i1 %tobool2059, i8* getelementptr inbounds ([2 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0)
  %call2061 = call i8* @dupstring(i8* %cond2060) nounwind
  store i8* %call2061, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2072

if.else2062:                                      ; preds = %if.else2056
  br i1 %tobool2059, label %if.then2064, label %if.end2072

if.then2064:                                      ; preds = %if.else2062
  %385 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 162), align 1, !tbaa !0
  %tobool2065 = icmp eq i8 %385, 0
  br i1 %tobool2065, label %cont2068, label %if.end2069

cont2068:                                         ; preds = %if.then2064
  store i8 0, i8* %228, align 1, !tbaa !0
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str37, i32 0, i32 0), i8* %idbeg.1) nounwind
  br label %return

if.end2069:                                       ; preds = %if.then2064
  %call2070 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2070, i8** %val, align 4, !tbaa !3
  br label %if.end2072

if.end2072:                                       ; preds = %if.else2062, %if.end2069, %if.then2058
  %brmerge4221.demorgan = and i1 %cmp1400, %tobool762
  br i1 %brmerge4221.demorgan, label %if.then2077, label %if.end2319

if.then2077:                                      ; preds = %if.end2072
  %386 = load i8** %s, align 4, !tbaa !3
  %call2078 = call fastcc i8* @check_colon_subscript(i8* %386, i8** %check_offset2)
  %tobool2079 = icmp eq i8* %call2078, null
  br i1 %tobool2079, label %if.end2319, label %if.then2080

if.then2080:                                      ; preds = %if.then2077
  %call2081 = call i64 @mathevali(i8* %call2078) nounwind
  %387 = load i32* @errflag, align 4, !tbaa !2
  %tobool2082 = icmp eq i32 %387, 0
  br i1 %tobool2082, label %if.end2084, label %return

if.end2084:                                       ; preds = %if.then2080
  %388 = load i8** %check_offset2, align 4, !tbaa !3
  %389 = load i8* %388, align 1, !tbaa !0
  switch i8 %389, label %if.then2091 [
    i8 0, label %if.end2112
    i8 58, label %if.then2094
  ]

if.then2091:                                      ; preds = %if.end2084
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str41, i32 0, i32 0), i8* %call2078) nounwind
  br label %return

if.then2094:                                      ; preds = %if.end2084
  %add.ptr2095 = getelementptr inbounds i8* %388, i32 1
  %call2096 = call fastcc i8* @check_colon_subscript(i8* %add.ptr2095, i8** %check_offset2)
  %390 = load i8** %check_offset2, align 4, !tbaa !3
  %391 = load i8* %390, align 1, !tbaa !0
  switch i8 %391, label %if.then2103 [
    i8 0, label %if.end2104
    i8 58, label %if.end2104
  ]

if.then2103:                                      ; preds = %if.then2094
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([19 x i8]* @.str42, i32 0, i32 0), i8* %call2096) nounwind
  br label %return

if.end2104:                                       ; preds = %if.then2094, %if.then2094
  %tobool2105 = icmp eq i8* %call2096, null
  br i1 %tobool2105, label %if.end2112, label %if.then2106

if.then2106:                                      ; preds = %if.end2104
  %call2107 = call i64 @mathevali(i8* %call2096) nounwind
  %392 = load i32* @errflag, align 4, !tbaa !2
  %tobool2108 = icmp eq i32 %392, 0
  br i1 %tobool2108, label %if.end2112, label %return

if.end2112:                                       ; preds = %if.end2084, %if.then2106, %if.end2104
  %393 = phi i8* [ %390, %if.then2106 ], [ %390, %if.end2104 ], [ %388, %if.end2084 ]
  %length.0 = phi i64 [ %call2107, %if.then2106 ], [ 0, %if.end2104 ], [ 0, %if.end2084 ]
  %length_set.0 = phi i32 [ 1, %if.then2106 ], [ 0, %if.end2104 ], [ 0, %if.end2084 ]
  %394 = load i32* %isarr, align 4, !tbaa !2
  %tobool2113 = icmp eq i32 %394, 0
  br i1 %tobool2113, label %if.else2226, label %if.then2114

if.then2114:                                      ; preds = %if.end2112
  %tobool2115 = icmp eq i32 %horrible_offset_hack.24268, 0
  br i1 %tobool2115, label %if.end2128, label %if.then2116

if.then2116:                                      ; preds = %if.then2114
  %cmp2117 = icmp eq i64 %call2081, 0
  br i1 %cmp2117, label %if.then2142, label %if.else2120

if.else2120:                                      ; preds = %if.then2116
  %cmp2121 = icmp sgt i64 %call2081, 0
  br i1 %cmp2121, label %if.then2123, label %if.end2128.thread

if.end2128.thread:                                ; preds = %if.else2120
  %395 = load i8*** %aval, align 4, !tbaa !3
  %call21294278 = call i32 @arrlen(i8** %395) nounwind
  br label %if.then2132

if.then2123:                                      ; preds = %if.else2120
  %396 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %call2081, i64 -1)
  %397 = extractvalue { i64, i1 } %396, 0
  %398 = extractvalue { i64, i1 } %396, 1
  br i1 %398, label %ioc_bb2124, label %if.end2128

ioc_bb2124:                                       ; preds = %if.then2123
  call void @__ioc_report_add_overflow(i32 3174, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %call2081, i64 -1, i8 14) nounwind
  br label %if.end2128

if.end2128:                                       ; preds = %ioc_bb2124, %if.then2123, %if.then2114
  %offset.0 = phi i64 [ %call2081, %if.then2114 ], [ %397, %if.then2123 ], [ %397, %ioc_bb2124 ]
  %399 = load i8*** %aval, align 4, !tbaa !3
  %call2129 = call i32 @arrlen(i8** %399) nounwind
  %cmp2130 = icmp slt i64 %offset.0, 0
  br i1 %cmp2130, label %if.then2132, label %if.end2145

if.then2132:                                      ; preds = %if.end2128.thread, %if.end2128
  %call21294283 = phi i32 [ %call21294278, %if.end2128.thread ], [ %call2129, %if.end2128 ]
  %offset.04280 = phi i64 [ %call2081, %if.end2128.thread ], [ %offset.0, %if.end2128 ]
  %conv2133 = sext i32 %call21294283 to i64
  %400 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %offset.04280, i64 %conv2133)
  %401 = extractvalue { i64, i1 } %400, 0
  %402 = extractvalue { i64, i1 } %400, 1
  br i1 %402, label %ioc_bb2134, label %cont2135

ioc_bb2134:                                       ; preds = %if.then2132
  call void @__ioc_report_add_overflow(i32 3179, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %offset.04280, i64 %conv2133, i8 14) nounwind
  br label %cont2135

cont2135:                                         ; preds = %if.then2132, %ioc_bb2134
  %cmp2136 = icmp slt i64 %401, 0
  %.4222 = select i1 %cmp2136, i64 0, i64 %401
  br label %if.end2145

if.then2142:                                      ; preds = %if.then2116
  %403 = load i8*** %aval, align 4, !tbaa !3
  %call21294286 = call i32 @arrlen(i8** %403) nounwind
  %404 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call21294286, i32 1)
  %405 = extractvalue { i32, i1 } %404, 0
  %406 = extractvalue { i32, i1 } %404, 1
  br i1 %406, label %ioc_bb2143, label %if.end2145

ioc_bb2143:                                       ; preds = %if.then2142
  %407 = sext i32 %call21294286 to i64
  call void @__ioc_report_add_overflow(i32 3184, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %407, i64 1, i8 13) nounwind
  br label %if.end2145

if.end2145:                                       ; preds = %cont2135, %if.end2128, %ioc_bb2143, %if.then2142
  %tobool21414291 = phi i1 [ false, %if.then2142 ], [ false, %ioc_bb2143 ], [ true, %if.end2128 ], [ true, %cont2135 ]
  %offset.14289 = phi i64 [ 0, %if.then2142 ], [ 0, %ioc_bb2143 ], [ %offset.0, %if.end2128 ], [ %.4222, %cont2135 ]
  %alen.0 = phi i32 [ %405, %if.then2142 ], [ %405, %ioc_bb2143 ], [ %call2129, %if.end2128 ], [ %call21294283, %cont2135 ]
  %tobool2146 = icmp eq i32 %length_set.0, 0
  br i1 %tobool2146, label %if.else2173, label %if.then2147

if.then2147:                                      ; preds = %if.end2145
  %cmp2148 = icmp slt i64 %length.0, 0
  %conv2151 = sext i32 %alen.0 to i64
  br i1 %cmp2148, label %if.then2150, label %if.end2175

if.then2150:                                      ; preds = %if.then2147
  %408 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv2151, i64 %offset.14289)
  %409 = extractvalue { i64, i1 } %408, 0
  %410 = extractvalue { i64, i1 } %408, 1
  br i1 %410, label %ioc_bb2152, label %cont2153

ioc_bb2152:                                       ; preds = %if.then2150
  call void @__ioc_report_sub_overflow(i32 3187, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %conv2151, i64 %offset.14289, i8 14) nounwind
  br label %cont2153

cont2153:                                         ; preds = %if.then2150, %ioc_bb2152
  %411 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %length.0, i64 %409)
  %412 = extractvalue { i64, i1 } %411, 0
  %413 = extractvalue { i64, i1 } %411, 1
  br i1 %413, label %ioc_bb2154, label %if.end2156

ioc_bb2154:                                       ; preds = %cont2153
  call void @__ioc_report_add_overflow(i32 3187, i32 22, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %length.0, i64 %409, i8 14) nounwind
  br label %if.end2156

if.end2156:                                       ; preds = %ioc_bb2154, %cont2153
  %cmp2157 = icmp slt i64 %412, 0
  br i1 %cmp2157, label %if.then2159, label %if.end2175

if.then2159:                                      ; preds = %if.end2156
  %414 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %412, i64 %offset.14289)
  %415 = extractvalue { i64, i1 } %414, 0
  %416 = extractvalue { i64, i1 } %414, 1
  br i1 %416, label %ioc_bb2160, label %cont2161

ioc_bb2160:                                       ; preds = %if.then2159
  call void @__ioc_report_add_overflow(i32 3189, i32 67, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %412, i64 %offset.14289, i8 14) nounwind
  br label %cont2161

cont2161:                                         ; preds = %if.then2159, %ioc_bb2160
  %.off4197 = add i64 %415, 2147483648
  %417 = icmp ult i64 %.off4197, 4294967296
  br i1 %417, label %cont2165, label %ioc_bb2164

ioc_bb2164:                                       ; preds = %cont2161
  call void @__ioc_report_conversion(i32 3189, i32 59, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %415, i8 1) nounwind
  br label %cont2165

cont2165:                                         ; preds = %ioc_bb2164, %cont2161
  %conv2166 = trunc i64 %415 to i32
  %offset.1.off = add i64 %offset.14289, 2147483648
  %418 = icmp ult i64 %offset.1.off, 4294967296
  br i1 %418, label %cont2170, label %ioc_bb2169

ioc_bb2169:                                       ; preds = %cont2165
  call void @__ioc_report_conversion(i32 3189, i32 85, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %offset.14289, i8 1) nounwind
  br label %cont2170

cont2170:                                         ; preds = %ioc_bb2169, %cont2165
  %conv2171 = trunc i64 %offset.14289 to i32
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([30 x i8]* @.str43, i32 0, i32 0), i32 %conv2166, i32 %conv2171) nounwind
  br label %return

if.else2173:                                      ; preds = %if.end2145
  %conv2174 = sext i32 %alen.0 to i64
  br label %if.end2175

if.end2175:                                       ; preds = %if.then2147, %if.end2156, %if.else2173
  %conv2176.pre-phi = phi i64 [ %conv2151, %if.end2156 ], [ %conv2174, %if.else2173 ], [ %conv2151, %if.then2147 ]
  %length.2 = phi i64 [ %412, %if.end2156 ], [ %conv2174, %if.else2173 ], [ %length.0, %if.then2147 ]
  %cmp2177 = icmp sgt i64 %offset.14289, %conv2176.pre-phi
  %conv2176.offset.1 = select i1 %cmp2177, i64 %conv2176.pre-phi, i64 %offset.14289
  %419 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %conv2176.offset.1, i64 %length.2)
  %420 = extractvalue { i64, i1 } %419, 0
  %421 = extractvalue { i64, i1 } %419, 1
  br i1 %421, label %ioc_bb2182, label %cont2183

ioc_bb2182:                                       ; preds = %if.end2175
  call void @__ioc_report_add_overflow(i32 3197, i32 22, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %conv2176.offset.1, i64 %length.2, i8 14) nounwind
  br label %cont2183

cont2183:                                         ; preds = %if.end2175, %ioc_bb2182
  %cmp2185 = icmp sgt i64 %420, %conv2176.pre-phi
  br i1 %cmp2185, label %if.then2187, label %if.end2191

if.then2187:                                      ; preds = %cont2183
  %422 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv2176.pre-phi, i64 %conv2176.offset.1)
  %423 = extractvalue { i64, i1 } %422, 0
  %424 = extractvalue { i64, i1 } %422, 1
  br i1 %424, label %ioc_bb2189, label %if.end2191

ioc_bb2189:                                       ; preds = %if.then2187
  call void @__ioc_report_sub_overflow(i32 3198, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %conv2176.pre-phi, i64 %conv2176.offset.1, i8 14) nounwind
  br label %if.end2191

if.end2191:                                       ; preds = %ioc_bb2189, %if.then2187, %cont2183
  %length.3 = phi i64 [ %length.2, %cont2183 ], [ %423, %if.then2187 ], [ %423, %ioc_bb2189 ]
  %length.3.off = add i64 %length.3, 2147483648
  %425 = icmp ult i64 %length.3.off, 4294967296
  br i1 %425, label %cont2195, label %ioc_bb2194

ioc_bb2194:                                       ; preds = %if.end2191
  call void @__ioc_report_conversion(i32 3199, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %length.3, i8 1) nounwind
  br label %cont2195

cont2195:                                         ; preds = %ioc_bb2194, %if.end2191
  %conv2196 = trunc i64 %length.3 to i32
  %426 = load i8*** %aval, align 4, !tbaa !3
  %idx.ext = trunc i64 %conv2176.offset.1 to i32
  %add.ptr2197 = getelementptr inbounds i8** %426, i32 %idx.ext
  %427 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %length.3, i64 1)
  %428 = extractvalue { i64, i1 } %427, 0
  %429 = extractvalue { i64, i1 } %427, 1
  br i1 %429, label %ioc_bb2198, label %cont2199

ioc_bb2198:                                       ; preds = %cont2195
  call void @__ioc_report_add_overflow(i32 3201, i32 57, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %length.3, i64 1, i8 14) nounwind
  br label %cont2199

cont2199:                                         ; preds = %cont2195, %ioc_bb2198
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %428, i64 4)
  %431 = extractvalue { i64, i1 } %430, 0
  %432 = extractvalue { i64, i1 } %430, 1
  br i1 %432, label %ioc_bb2200, label %cont2201

ioc_bb2200:                                       ; preds = %cont2199
  call void @__ioc_report_mul_overflow(i32 3201, i32 62, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %428, i64 4, i8 14) nounwind
  br label %cont2201

cont2201:                                         ; preds = %cont2199, %ioc_bb2200
  %433 = icmp ult i64 %431, 4294967296
  br i1 %433, label %cont2205, label %ioc_bb2204

ioc_bb2204:                                       ; preds = %cont2201
  call void @__ioc_report_conversion(i32 3201, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %431, i8 1) nounwind
  br label %cont2205

cont2205:                                         ; preds = %ioc_bb2204, %cont2201
  %conv2206 = trunc i64 %431 to i32
  %call2207 = call i8* @zhalloc(i32 %conv2206) nounwind
  %434 = bitcast i8* %call2207 to i8**
  %tobool2208 = icmp eq i32 %conv2196, 0
  %brmerge4223 = or i1 %tobool2208, %tobool21414291
  br i1 %brmerge4223, label %while.cond2217, label %if.then2211

if.then2211:                                      ; preds = %cont2205
  %435 = load i8** @argzero, align 4, !tbaa !3
  %call2212 = call i8* @dupstring(i8* %435) nounwind
  %incdec.ptr2213 = getelementptr inbounds i8* %call2207, i32 4
  %436 = bitcast i8* %incdec.ptr2213 to i8**
  store i8* %call2212, i8** %434, align 4, !tbaa !3
  %437 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv2196, i32 -1)
  %438 = extractvalue { i32, i1 } %437, 0
  %439 = extractvalue { i32, i1 } %437, 1
  br i1 %439, label %ioc_bb2214, label %while.cond2217

ioc_bb2214:                                       ; preds = %if.then2211
  %440 = sext i32 %conv2196 to i64
  call void @__ioc_report_add_overflow(i32 3204, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %440, i64 -1, i8 13) nounwind
  br label %while.cond2217

while.cond2217:                                   ; preds = %ioc_bb2214, %if.then2211, %cont2205, %while.body2221
  %count.0 = phi i32 [ %442, %while.body2221 ], [ %438, %ioc_bb2214 ], [ %438, %if.then2211 ], [ %conv2196, %cont2205 ]
  %srcptr.0 = phi i8** [ %incdec.ptr2222, %while.body2221 ], [ %add.ptr2197, %ioc_bb2214 ], [ %add.ptr2197, %if.then2211 ], [ %add.ptr2197, %cont2205 ]
  %dstptr.0 = phi i8** [ %incdec.ptr2224, %while.body2221 ], [ %436, %ioc_bb2214 ], [ %436, %if.then2211 ], [ %434, %cont2205 ]
  %441 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0, i32 -1)
  %442 = extractvalue { i32, i1 } %441, 0
  %443 = extractvalue { i32, i1 } %441, 1
  br i1 %443, label %ioc_bb2218, label %cont2219

ioc_bb2218:                                       ; preds = %while.cond2217
  %444 = sext i32 %count.0 to i64
  call void @__ioc_report_add_overflow(i32 3206, i32 22, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %444, i64 -1, i8 13) nounwind
  br label %cont2219

cont2219:                                         ; preds = %while.cond2217, %ioc_bb2218
  %tobool2220 = icmp eq i32 %count.0, 0
  br i1 %tobool2220, label %while.end2225, label %while.body2221

while.body2221:                                   ; preds = %cont2219
  %incdec.ptr2222 = getelementptr inbounds i8** %srcptr.0, i32 1
  %445 = load i8** %srcptr.0, align 4, !tbaa !3
  %call2223 = call i8* @dupstring(i8* %445) nounwind
  %incdec.ptr2224 = getelementptr inbounds i8** %dstptr.0, i32 1
  store i8* %call2223, i8** %dstptr.0, align 4, !tbaa !3
  br label %while.cond2217

while.end2225:                                    ; preds = %cont2219
  store i8* null, i8** %dstptr.0, align 4, !tbaa !3
  store i8** %434, i8*** %aval, align 4, !tbaa !3
  %.pre4825 = load i8** %check_offset2, align 4, !tbaa !3
  br label %if.end2312

if.else2226:                                      ; preds = %if.end2112
  %cmp2227 = icmp slt i64 %call2081, 0
  br i1 %cmp2227, label %if.then2229, label %if.end2242

if.then2229:                                      ; preds = %if.else2226
  call void @mb_metacharinit() nounwind
  %446 = load i8** %val, align 4, !tbaa !3
  %447 = load i8* %446, align 1, !tbaa !0
  %tobool22314395 = icmp eq i8 %447, 0
  br i1 %tobool22314395, label %for.end2237, label %for.body2232

for.body2232:                                     ; preds = %if.then2229, %for.cond2230.backedge
  %sptr.04397 = phi i8* [ %add.ptr2234, %for.cond2230.backedge ], [ %446, %if.then2229 ]
  %offset.34396 = phi i64 [ %449, %for.cond2230.backedge ], [ %call2081, %if.then2229 ]
  %call2233 = call i32 @mb_metacharlenconv(i8* %sptr.04397, i32* null) nounwind
  %add.ptr2234 = getelementptr inbounds i8* %sptr.04397, i32 %call2233
  %448 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %offset.34396, i64 1)
  %449 = extractvalue { i64, i1 } %448, 0
  %450 = extractvalue { i64, i1 } %448, 1
  br i1 %450, label %ioc_bb2235, label %for.cond2230.backedge

for.cond2230.backedge:                            ; preds = %for.body2232, %ioc_bb2235
  %451 = load i8* %add.ptr2234, align 1, !tbaa !0
  %tobool2231 = icmp eq i8 %451, 0
  br i1 %tobool2231, label %for.end2237, label %for.body2232

ioc_bb2235:                                       ; preds = %for.body2232
  call void @__ioc_report_add_overflow(i32 3219, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %offset.34396, i64 1, i8 14) nounwind
  br label %for.cond2230.backedge

for.end2237:                                      ; preds = %for.cond2230.backedge, %if.then2229
  %offset.3.lcssa = phi i64 [ %call2081, %if.then2229 ], [ %449, %for.cond2230.backedge ]
  %cmp2238 = icmp slt i64 %offset.3.lcssa, 0
  %.offset.3 = select i1 %cmp2238, i64 0, i64 %offset.3.lcssa
  br label %if.end2242

if.end2242:                                       ; preds = %for.end2237, %if.else2226
  %offset.4 = phi i64 [ %call2081, %if.else2226 ], [ %.offset.3, %for.end2237 ]
  %offset.4.off = add i64 %offset.4, 2147483648
  %452 = icmp ult i64 %offset.4.off, 4294967296
  br i1 %452, label %cont2246, label %ioc_bb2245

ioc_bb2245:                                       ; preds = %if.end2242
  call void @__ioc_report_conversion(i32 3224, i32 26, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %offset.4, i8 1) nounwind
  br label %cont2246

cont2246:                                         ; preds = %ioc_bb2245, %if.end2242
  %conv2247 = trunc i64 %offset.4 to i32
  call void @mb_metacharinit() nounwind
  %tobool2248 = icmp ne i32 %length_set.0, 0
  %cmp2250 = icmp slt i64 %length.0, 0
  %or.cond4224 = and i1 %tobool2248, %cmp2250
  br i1 %or.cond4224, label %if.then2252, label %if.end2255

if.then2252:                                      ; preds = %cont2246
  %453 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %length.0, i64 %offset.4)
  %454 = extractvalue { i64, i1 } %453, 0
  %455 = extractvalue { i64, i1 } %453, 1
  br i1 %455, label %ioc_bb2253, label %if.end2255

ioc_bb2253:                                       ; preds = %if.then2252
  call void @__ioc_report_sub_overflow(i32 3227, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %length.0, i64 %offset.4, i8 14) nounwind
  br label %if.end2255

if.end2255:                                       ; preds = %ioc_bb2253, %if.then2252, %cont2246
  %length.4 = phi i64 [ %length.0, %cont2246 ], [ %454, %if.then2252 ], [ %454, %ioc_bb2253 ]
  %456 = load i8** %val, align 4, !tbaa !3
  %457 = load i8* %456, align 1, !tbaa !0
  %tobool22584389 = icmp eq i8 %457, 0
  %tobool22604390 = icmp eq i64 %offset.4, 0
  %or.cond42254391 = or i1 %tobool22584389, %tobool22604390
  br i1 %or.cond42254391, label %for.end2268, label %for.body2263

for.body2263:                                     ; preds = %if.end2255, %for.cond2256.backedge
  %sptr.14393 = phi i8* [ %add.ptr2265, %for.cond2256.backedge ], [ %456, %if.end2255 ]
  %offset.54392 = phi i64 [ %459, %for.cond2256.backedge ], [ %offset.4, %if.end2255 ]
  %call2264 = call i32 @mb_metacharlenconv(i8* %sptr.14393, i32* null) nounwind
  %add.ptr2265 = getelementptr inbounds i8* %sptr.14393, i32 %call2264
  %458 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %offset.54392, i64 -1)
  %459 = extractvalue { i64, i1 } %458, 0
  %460 = extractvalue { i64, i1 } %458, 1
  br i1 %460, label %ioc_bb2266, label %for.cond2256.backedge

for.cond2256.backedge:                            ; preds = %for.body2263, %ioc_bb2266
  %461 = load i8* %add.ptr2265, align 1, !tbaa !0
  %tobool2258 = icmp eq i8 %461, 0
  %tobool2260 = icmp eq i64 %459, 0
  %or.cond4225 = or i1 %tobool2258, %tobool2260
  br i1 %or.cond4225, label %for.end2268, label %for.body2263

ioc_bb2266:                                       ; preds = %for.body2263
  call void @__ioc_report_add_overflow(i32 3230, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %offset.54392, i64 -1, i8 14) nounwind
  br label %for.cond2256.backedge

for.end2268:                                      ; preds = %for.cond2256.backedge, %if.end2255
  %462 = phi i8 [ %457, %if.end2255 ], [ %461, %for.cond2256.backedge ]
  %sptr.1.lcssa = phi i8* [ %456, %if.end2255 ], [ %add.ptr2265, %for.cond2256.backedge ]
  br i1 %tobool2248, label %if.then2270, label %if.else2309

if.then2270:                                      ; preds = %for.end2268
  %cmp2271 = icmp slt i64 %length.4, 0
  br i1 %cmp2271, label %if.then2273, label %for.cond2295.preheader

for.cond2295.preheader:                           ; preds = %for.end2281.for.cond2295.preheader_crit_edge, %if.then2270
  %463 = phi i8 [ %462, %if.then2270 ], [ %.pre4851, %for.end2281.for.cond2295.preheader_crit_edge ]
  %length.7.ph = phi i64 [ %length.4, %if.then2270 ], [ %467, %for.end2281.for.cond2295.preheader_crit_edge ]
  %tobool22974379 = icmp eq i8 %463, 0
  %tobool22994380 = icmp eq i64 %length.7.ph, 0
  %or.cond42264381 = or i1 %tobool22974379, %tobool22994380
  br i1 %or.cond42264381, label %for.end2307, label %for.body2302

if.then2273:                                      ; preds = %if.then2270
  call void @mb_metacharinit() nounwind
  %464 = load i8** %val, align 4, !tbaa !3
  %465 = load i8* %464, align 1, !tbaa !0
  %tobool22754385 = icmp eq i8 %465, 0
  br i1 %tobool22754385, label %if.then2284, label %for.body2276

for.body2276:                                     ; preds = %if.then2273, %for.cond2274.backedge
  %eptr.04387 = phi i8* [ %add.ptr2278, %for.cond2274.backedge ], [ %464, %if.then2273 ]
  %length.54386 = phi i64 [ %467, %for.cond2274.backedge ], [ %length.4, %if.then2273 ]
  %call2277 = call i32 @mb_metacharlenconv(i8* %eptr.04387, i32* null) nounwind
  %add.ptr2278 = getelementptr inbounds i8* %eptr.04387, i32 %call2277
  %466 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %length.54386, i64 1)
  %467 = extractvalue { i64, i1 } %466, 0
  %468 = extractvalue { i64, i1 } %466, 1
  br i1 %468, label %ioc_bb2279, label %for.cond2274.backedge

for.cond2274.backedge:                            ; preds = %for.body2276, %ioc_bb2279
  %469 = load i8* %add.ptr2278, align 1, !tbaa !0
  %tobool2275 = icmp eq i8 %469, 0
  br i1 %tobool2275, label %for.end2281, label %for.body2276

ioc_bb2279:                                       ; preds = %for.body2276
  call void @__ioc_report_add_overflow(i32 3237, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %length.54386, i64 1, i8 14) nounwind
  br label %for.cond2274.backedge

for.end2281:                                      ; preds = %for.cond2274.backedge
  %cmp2282 = icmp slt i64 %467, 0
  br i1 %cmp2282, label %if.then2284, label %for.end2281.for.cond2295.preheader_crit_edge

for.end2281.for.cond2295.preheader_crit_edge:     ; preds = %for.end2281
  %.pre4851 = load i8* %sptr.1.lcssa, align 1, !tbaa !0
  br label %for.cond2295.preheader

if.then2284:                                      ; preds = %if.then2273, %for.end2281
  %length.5.lcssa4872 = phi i64 [ %467, %for.end2281 ], [ %length.4, %if.then2273 ]
  %conv2285 = sext i32 %conv2247 to i64
  %470 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %length.5.lcssa4872, i64 %conv2285)
  %471 = extractvalue { i64, i1 } %470, 0
  %472 = extractvalue { i64, i1 } %470, 1
  br i1 %472, label %ioc_bb2286, label %cont2287

ioc_bb2286:                                       ; preds = %if.then2284
  call void @__ioc_report_add_overflow(i32 3240, i32 69, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %length.5.lcssa4872, i64 %conv2285, i8 14) nounwind
  br label %cont2287

cont2287:                                         ; preds = %if.then2284, %ioc_bb2286
  %.off = add i64 %471, 2147483648
  %473 = icmp ult i64 %.off, 4294967296
  br i1 %473, label %cont2291, label %ioc_bb2290

ioc_bb2290:                                       ; preds = %cont2287
  call void @__ioc_report_conversion(i32 3240, i32 61, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %471, i8 1) nounwind
  br label %cont2291

cont2291:                                         ; preds = %ioc_bb2290, %cont2287
  %conv2292 = trunc i64 %471 to i32
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([30 x i8]* @.str43, i32 0, i32 0), i32 %conv2292, i32 %conv2247) nounwind
  br label %return

for.body2302:                                     ; preds = %for.cond2295.preheader, %for.cond2295.backedge
  %eptr.14383 = phi i8* [ %add.ptr2304, %for.cond2295.backedge ], [ %sptr.1.lcssa, %for.cond2295.preheader ]
  %length.74382 = phi i64 [ %475, %for.cond2295.backedge ], [ %length.7.ph, %for.cond2295.preheader ]
  %call2303 = call i32 @mb_metacharlenconv(i8* %eptr.14383, i32* null) nounwind
  %add.ptr2304 = getelementptr inbounds i8* %eptr.14383, i32 %call2303
  %474 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %length.74382, i64 -1)
  %475 = extractvalue { i64, i1 } %474, 0
  %476 = extractvalue { i64, i1 } %474, 1
  br i1 %476, label %ioc_bb2305, label %for.cond2295.backedge

for.cond2295.backedge:                            ; preds = %for.body2302, %ioc_bb2305
  %477 = load i8* %add.ptr2304, align 1, !tbaa !0
  %tobool2297 = icmp eq i8 %477, 0
  %tobool2299 = icmp eq i64 %475, 0
  %or.cond4226 = or i1 %tobool2297, %tobool2299
  br i1 %or.cond4226, label %for.end2307, label %for.body2302

ioc_bb2305:                                       ; preds = %for.body2302
  call void @__ioc_report_add_overflow(i32 3246, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %length.74382, i64 -1, i8 14) nounwind
  br label %for.cond2295.backedge

for.end2307:                                      ; preds = %for.cond2295.backedge, %for.cond2295.preheader
  %eptr.1.lcssa = phi i8* [ %sptr.1.lcssa, %for.cond2295.preheader ], [ %add.ptr2304, %for.cond2295.backedge ]
  %sub.ptr.lhs.cast = ptrtoint i8* %eptr.1.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %sptr.1.lcssa to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2308 = call i8* @dupstrpfx(i8* %sptr.1.lcssa, i32 %sub.ptr.sub) nounwind
  store i8* %call2308, i8** %val, align 4, !tbaa !3
  br label %if.end2312

if.else2309:                                      ; preds = %for.end2268
  %call2310 = call i8* @dupstring(i8* %sptr.1.lcssa) nounwind
  store i8* %call2310, i8** %val, align 4, !tbaa !3
  br label %if.end2312

if.end2312:                                       ; preds = %for.end2307, %if.else2309, %while.end2225
  %478 = phi i8* [ %393, %for.end2307 ], [ %393, %if.else2309 ], [ %.pre4825, %while.end2225 ]
  %479 = load i8* %478, align 1, !tbaa !0
  %tobool2313 = icmp eq i8 %479, 0
  br i1 %tobool2313, label %if.end2383, label %if.else2315

if.else2315:                                      ; preds = %if.end2312
  %add.ptr2316 = getelementptr inbounds i8* %478, i32 1
  store i8* %add.ptr2316, i8** %s, align 4, !tbaa !3
  br label %if.end2319

if.end2319:                                       ; preds = %if.end2072, %if.then2077, %if.else2315
  br i1 %cmp1400, label %if.then2321, label %if.end2383

if.then2321:                                      ; preds = %if.end2319
  %480 = load i8** %s, align 4, !tbaa !3
  %incdec.ptr2322 = getelementptr inbounds i8* %480, i32 -1
  store i8* %incdec.ptr2322, i8** %s, align 4, !tbaa !3
  %481 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %tobool2323 = icmp eq i8 %481, 0
  %brmerge4227 = or i1 %tobool2323, %tobool762
  br i1 %brmerge4227, label %if.then2327, label %if.end2383

if.then2327:                                      ; preds = %if.then2321
  %482 = load i32* %isarr, align 4, !tbaa !2
  %tobool2328 = icmp eq i32 %482, 0
  br i1 %tobool2328, label %if.then2329, label %if.else2330

if.then2329:                                      ; preds = %if.then2327
  call void @modify(i8** %val, i8** %s)
  br label %if.end2352

if.else2330:                                      ; preds = %if.then2327
  %483 = load i8*** %aval, align 4, !tbaa !3
  %call2332 = call i32 @arrlen(i8** %483) nounwind
  %484 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call2332, i32 1)
  %485 = extractvalue { i32, i1 } %484, 0
  %486 = extractvalue { i32, i1 } %484, 1
  br i1 %486, label %ioc_bb2333, label %cont2334

ioc_bb2333:                                       ; preds = %if.else2330
  %487 = sext i32 %call2332 to i64
  call void @__ioc_report_add_overflow(i32 3274, i32 80, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %487, i64 1, i8 13) nounwind
  br label %cont2334

cont2334:                                         ; preds = %if.else2330, %ioc_bb2333
  %488 = icmp sgt i32 %485, -1
  br i1 %488, label %cont2337, label %ioc_bb2336

ioc_bb2336:                                       ; preds = %cont2334
  %489 = sext i32 %485 to i64
  call void @__ioc_report_conversion(i32 3274, i32 66, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %489, i8 1) nounwind
  br label %cont2337

cont2337:                                         ; preds = %ioc_bb2336, %cont2334
  %490 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %485, i32 4)
  %491 = extractvalue { i32, i1 } %490, 0
  %492 = extractvalue { i32, i1 } %490, 1
  br i1 %492, label %ioc_bb2338, label %cont2339

ioc_bb2338:                                       ; preds = %cont2337
  %493 = zext i32 %485 to i64
  call void @__ioc_report_mul_overflow(i32 3274, i32 64, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %493, i8 5) nounwind
  br label %cont2339

cont2339:                                         ; preds = %cont2337, %ioc_bb2338
  %call2340 = call i8* @hcalloc(i32 %491) nounwind
  %494 = bitcast i8* %call2340 to i8**
  store i8** %494, i8*** %aval, align 4, !tbaa !3
  %495 = load i8** %483, align 4, !tbaa !3
  store i8* %495, i8** %494, align 4, !tbaa !3
  %tobool23434375 = icmp eq i8* %495, null
  br i1 %tobool23434375, label %while.end2346, label %while.body2344

while.body2344:                                   ; preds = %cont2339, %while.body2344
  %pp.04377 = phi i8** [ %incdec.ptr2345, %while.body2344 ], [ %494, %cont2339 ]
  %ap2331.04376 = phi i8** [ %incdec.ptr2342, %while.body2344 ], [ %483, %cont2339 ]
  %incdec.ptr2342 = getelementptr inbounds i8** %ap2331.04376, i32 1
  %496 = load i8** %s, align 4, !tbaa !3
  store i8* %496, i8** %ss, align 4, !tbaa !3
  %incdec.ptr2345 = getelementptr inbounds i8** %pp.04377, i32 1
  call void @modify(i8** %pp.04377, i8** %ss)
  %497 = load i8** %incdec.ptr2342, align 4, !tbaa !3
  store i8* %497, i8** %incdec.ptr2345, align 4, !tbaa !3
  %tobool2343 = icmp eq i8* %497, null
  br i1 %tobool2343, label %while.end2346, label %while.body2344

while.end2346:                                    ; preds = %while.body2344, %cont2339
  %pp.0.lcssa = phi i8** [ %494, %cont2339 ], [ %incdec.ptr2345, %while.body2344 ]
  %498 = load i8*** %aval, align 4, !tbaa !3
  %cmp2347 = icmp eq i8** %pp.0.lcssa, %498
  br i1 %cmp2347, label %if.then2349, label %if.end2351

if.then2349:                                      ; preds = %while.end2346
  store i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8** %t2350, align 4, !tbaa !3
  %499 = load i8** %s, align 4, !tbaa !3
  store i8* %499, i8** %ss, align 4, !tbaa !3
  call void @modify(i8** %t2350, i8** %ss)
  br label %if.end2351

if.end2351:                                       ; preds = %if.then2349, %while.end2346
  %500 = load i8** %ss, align 4, !tbaa !3
  store i8* %500, i8** %s, align 4, !tbaa !3
  br label %if.end2352

if.end2352:                                       ; preds = %if.end2351, %if.then2329
  br i1 %tobool762, label %land.lhs.true2355, label %if.end2383

land.lhs.true2355:                                ; preds = %if.end2352
  %501 = load i8** %s, align 4, !tbaa !3
  %502 = load i8* %501, align 1, !tbaa !0
  switch i8 %502, label %if.else2379 [
    i8 0, label %if.end2383
    i8 58, label %land.lhs.true2362
  ]

land.lhs.true2362:                                ; preds = %land.lhs.true2355
  %arrayidx2363 = getelementptr inbounds i8* %501, i32 1
  %503 = load i8* %arrayidx2363, align 1, !tbaa !0
  %504 = icmp sgt i8 %503, -1
  br i1 %504, label %cont2366, label %ioc_bb2365

ioc_bb2365:                                       ; preds = %land.lhs.true2362
  %505 = sext i8 %503 to i64
  call void @__ioc_report_conversion(i32 3288, i32 56, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %505, i8 1) nounwind
  br label %cont2366

cont2366:                                         ; preds = %ioc_bb2365, %land.lhs.true2362
  %idxprom2367 = zext i8 %503 to i32
  %arrayidx2368 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom2367
  %506 = load i16* %arrayidx2368, align 2, !tbaa !4
  %and2374 = and i16 %506, 4096
  %tobool2375 = icmp eq i16 %and2374, 0
  br i1 %tobool2375, label %if.then2376, label %if.else2379

if.then2376:                                      ; preds = %cont2366
  %507 = load i8** %s, align 4, !tbaa !3
  %arrayidx2377 = getelementptr inbounds i8* %507, i32 1
  %508 = load i8* %arrayidx2377, align 1, !tbaa !0
  %conv2378 = sext i8 %508 to i32
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str44, i32 0, i32 0), i32 %conv2378) nounwind
  br label %return

if.else2379:                                      ; preds = %land.lhs.true2355, %cont2366
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str45, i32 0, i32 0)) nounwind
  br label %return

if.end2383:                                       ; preds = %if.end2352, %if.end2319, %if.end2312, %land.lhs.true2355, %if.then2321
  %copied.4 = phi i32 [ 1, %land.lhs.true2355 ], [ 0, %if.then2321 ], [ 0, %if.end2312 ], [ 0, %if.end2319 ], [ 1, %if.end2352 ]
  %509 = load i8** %s, align 4, !tbaa !3
  %fstr.1. = select i1 %tobool762, i8* %fstr.14271, i8* %509
  br label %if.end2388

if.end2388:                                       ; preds = %if.end2383, %if.end1687, %if.end1831, %if.then1843, %land.lhs.true1835, %sw.bb1676, %if.end1824, %sw.bb1713, %sw.bb1849, %if.else2042, %if.then2048, %if.else2050, %if.end2041, %if.then1673, %cont1668, %if.then1923, %for.end1911
  %getlen.04681 = phi i32 [ %getlen.0, %cont1668 ], [ %getlen.0, %if.then1923 ], [ %getlen.0, %for.end1911 ], [ %getlen.0, %sw.bb1849 ], [ %getlen.0, %if.end1824 ], [ %getlen.0, %sw.bb1713 ], [ %getlen.0, %sw.bb1676 ], [ %getlen.0, %if.then1673 ], [ %getlen.0, %if.end2041 ], [ %getlen.0, %if.then2048 ], [ %getlen.0, %if.else2050 ], [ %getlen.0, %if.else2042 ], [ %getlen.0, %if.end1687 ], [ 0, %land.lhs.true1835 ], [ 0, %if.then1843 ], [ %getlen.0, %if.end1831 ], [ %getlen.0, %if.end2383 ]
  %copied.5 = phi i32 [ 0, %cont1668 ], [ 1, %if.then1923 ], [ 1, %for.end1911 ], [ 0, %sw.bb1849 ], [ 1, %if.end1824 ], [ 0, %sw.bb1713 ], [ 0, %sw.bb1676 ], [ 1, %if.then1673 ], [ %copied.3, %if.end2041 ], [ 0, %if.then2048 ], [ 0, %if.else2050 ], [ 0, %if.else2042 ], [ 1, %if.end1687 ], [ 1, %land.lhs.true1835 ], [ 1, %if.then1843 ], [ 1, %if.end1831 ], [ %copied.4, %if.end2383 ]
  %spsep.4 = phi i8* [ %spsep.3, %cont1668 ], [ %spsep.3, %if.then1923 ], [ %spsep.3, %for.end1911 ], [ %spsep.3, %sw.bb1849 ], [ %spsep.3, %if.end1824 ], [ %spsep.3, %sw.bb1713 ], [ %spsep.3, %sw.bb1676 ], [ %spsep.3, %if.then1673 ], [ %spsep.3, %if.end2041 ], [ %spsep.3, %if.then2048 ], [ %spsep.3, %if.else2050 ], [ %spsep.3, %if.else2042 ], [ %spsep.3, %if.end1687 ], [ null, %land.lhs.true1835 ], [ null, %if.then1843 ], [ null, %if.end1831 ], [ %spsep.3, %if.end2383 ]
  %sep.4 = phi i8* [ %sep.3, %cont1668 ], [ %sep.3, %if.then1923 ], [ %sep.3, %for.end1911 ], [ %sep.3, %sw.bb1849 ], [ %sep.3, %if.end1824 ], [ %sep.3, %sw.bb1713 ], [ %sep.3, %sw.bb1676 ], [ %sep.3, %if.then1673 ], [ %sep.3, %if.end2041 ], [ %sep.3, %if.then2048 ], [ %sep.3, %if.else2050 ], [ %sep.3, %if.else2042 ], [ %sep.3, %if.end1687 ], [ null, %land.lhs.true1835 ], [ null, %if.then1843 ], [ null, %if.end1831 ], [ %sep.3, %if.end2383 ]
  %spbreak.2 = phi i32 [ %spbreak.0, %cont1668 ], [ %spbreak.0, %if.then1923 ], [ %spbreak.0, %for.end1911 ], [ %spbreak.0, %sw.bb1849 ], [ %spbreak.1, %if.end1824 ], [ %spbreak.0, %sw.bb1713 ], [ %spbreak.0, %sw.bb1676 ], [ %spbreak.0, %if.then1673 ], [ %spbreak.0, %if.end2041 ], [ %spbreak.0, %if.then2048 ], [ %spbreak.0, %if.else2050 ], [ %spbreak.0, %if.else2042 ], [ 0, %if.end1687 ], [ 0, %land.lhs.true1835 ], [ 0, %if.then1843 ], [ 0, %if.end1831 ], [ %spbreak.0, %if.end2383 ]
  %globsubst.2 = phi i32 [ %.globsubst.042514253, %cont1668 ], [ %.globsubst.042514253, %if.then1923 ], [ %.globsubst.042514253, %for.end1911 ], [ %.globsubst.042514253, %sw.bb1849 ], [ %.globsubst.042514253, %if.end1824 ], [ %.globsubst.042514253, %sw.bb1713 ], [ %.globsubst.042514253, %sw.bb1676 ], [ %.globsubst.042514253, %if.then1673 ], [ %.globsubst.042514253, %if.end2041 ], [ %.globsubst.042514253, %if.then2048 ], [ %.globsubst.042514253, %if.else2050 ], [ %.globsubst.042514253, %if.else2042 ], [ %.globsubst.0., %if.end1687 ], [ %.globsubst.042514253, %land.lhs.true1835 ], [ %.globsubst.042514253, %if.then1843 ], [ %.globsubst.042514253, %if.end1831 ], [ %.globsubst.042514253, %if.end2383 ]
  %fstr.2 = phi i8* [ %fstr.1, %cont1668 ], [ %fstr.1, %if.then1923 ], [ %fstr.1, %for.end1911 ], [ %fstr.1, %sw.bb1849 ], [ %fstr.1, %if.end1824 ], [ %fstr.1, %sw.bb1713 ], [ %fstr.1, %sw.bb1676 ], [ %fstr.1, %if.then1673 ], [ %fstr.1, %if.end2041 ], [ %fstr.1, %if.then2048 ], [ %fstr.1, %if.else2050 ], [ %fstr.1, %if.else2042 ], [ %fstr.1, %if.end1687 ], [ %fstr.1, %land.lhs.true1835 ], [ %fstr.1, %if.then1843 ], [ %fstr.1, %if.end1831 ], [ %fstr.1., %if.end2383 ]
  %510 = load i32* @errflag, align 4, !tbaa !2
  %tobool2389 = icmp eq i32 %510, 0
  br i1 %tobool2389, label %if.end2391, label %return

if.end2391:                                       ; preds = %if.end2388
  %tobool2392 = icmp eq i32 %evalchar.2, 0
  br i1 %tobool2392, label %if.end2436, label %if.then2393

if.then2393:                                      ; preds = %if.end2391
  %511 = load i32* @noerrs, align 4, !tbaa !2
  %tobool2397 = icmp ne i32 %quoteerr.2, 0
  br i1 %tobool2397, label %if.end2399, label %if.then2398

if.then2398:                                      ; preds = %if.then2393
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  br label %if.end2399

if.end2399:                                       ; preds = %if.then2393, %if.then2398
  %512 = load i32* %isarr, align 4, !tbaa !2
  %tobool2400 = icmp eq i32 %512, 0
  br i1 %tobool2400, label %if.else2422, label %if.then2401

if.then2401:                                      ; preds = %if.end2399
  %513 = load i8*** %aval, align 4, !tbaa !3
  %call2402 = call i32 @arrlen(i8** %513) nounwind
  %514 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call2402, i32 1)
  %515 = extractvalue { i32, i1 } %514, 0
  %516 = extractvalue { i32, i1 } %514, 1
  br i1 %516, label %ioc_bb2403, label %cont2404

ioc_bb2403:                                       ; preds = %if.then2401
  %517 = sext i32 %call2402 to i64
  call void @__ioc_report_add_overflow(i32 3315, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %517, i64 1, i8 13) nounwind
  br label %cont2404

cont2404:                                         ; preds = %if.then2401, %ioc_bb2403
  %518 = icmp sgt i32 %515, -1
  br i1 %518, label %cont2407, label %ioc_bb2406

ioc_bb2406:                                       ; preds = %cont2404
  %519 = sext i32 %515 to i64
  call void @__ioc_report_conversion(i32 3315, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %519, i8 1) nounwind
  br label %cont2407

cont2407:                                         ; preds = %ioc_bb2406, %cont2404
  %520 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %515, i32 4)
  %521 = extractvalue { i32, i1 } %520, 0
  %522 = extractvalue { i32, i1 } %520, 1
  br i1 %522, label %ioc_bb2408, label %cont2409

ioc_bb2408:                                       ; preds = %cont2407
  %523 = zext i32 %515 to i64
  call void @__ioc_report_mul_overflow(i32 3315, i32 53, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %523, i64 4, i8 5) nounwind
  br label %cont2409

cont2409:                                         ; preds = %cont2407, %ioc_bb2408
  %call2410 = call i8* @zhalloc(i32 %521) nounwind
  %524 = bitcast i8* %call2410 to i8**
  %525 = load i8*** %aval, align 4, !tbaa !3
  %526 = load i8** %525, align 4, !tbaa !3
  %tobool24124364 = icmp eq i8* %526, null
  br i1 %tobool24124364, label %for.end2421, label %for.body2413

for.body2413:                                     ; preds = %cont2409, %for.inc2418
  %527 = phi i8* [ %528, %for.inc2418 ], [ %526, %cont2409 ]
  %av2ptr.04366 = phi i8** [ %incdec.ptr2420, %for.inc2418 ], [ %524, %cont2409 ]
  %avptr.04365 = phi i8** [ %incdec.ptr2419, %for.inc2418 ], [ %525, %cont2409 ]
  %call2414 = call fastcc i8* @substevalchar(i8* %527)
  store i8* %call2414, i8** %av2ptr.04366, align 4, !tbaa !3
  %tobool2415 = icmp eq i8* %call2414, null
  br i1 %tobool2415, label %for.end2421, label %for.inc2418

for.inc2418:                                      ; preds = %for.body2413
  %incdec.ptr2419 = getelementptr inbounds i8** %avptr.04365, i32 1
  %incdec.ptr2420 = getelementptr inbounds i8** %av2ptr.04366, i32 1
  %528 = load i8** %incdec.ptr2419, align 4, !tbaa !3
  %tobool2412 = icmp eq i8* %528, null
  br i1 %tobool2412, label %for.end2421, label %for.body2413

for.end2421:                                      ; preds = %for.inc2418, %for.body2413, %cont2409
  %av2ptr.0.lcssa = phi i8** [ %524, %cont2409 ], [ %av2ptr.04366, %for.body2413 ], [ %incdec.ptr2420, %for.inc2418 ]
  %haserr2396.0 = phi i32 [ 0, %cont2409 ], [ 1, %for.body2413 ], [ 0, %for.inc2418 ]
  store i8* null, i8** %av2ptr.0.lcssa, align 4, !tbaa !3
  store i8** %524, i8*** %aval, align 4, !tbaa !3
  br label %if.end2427

if.else2422:                                      ; preds = %if.end2399
  %529 = load i8** %val, align 4, !tbaa !3
  %call2423 = call fastcc i8* @substevalchar(i8* %529)
  store i8* %call2423, i8** %val, align 4, !tbaa !3
  %tobool2424 = icmp eq i8* %call2423, null
  %.4228 = zext i1 %tobool2424 to i32
  br label %if.end2427

if.end2427:                                       ; preds = %if.else2422, %for.end2421
  %haserr2396.1 = phi i32 [ %haserr2396.0, %for.end2421 ], [ %.4228, %if.else2422 ]
  store i32 %511, i32* @noerrs, align 4, !tbaa !2
  br i1 %tobool2397, label %if.end2427.if.end2430_crit_edge, label %if.then2429

if.end2427.if.end2430_crit_edge:                  ; preds = %if.end2427
  %.pre4850 = load i32* @errflag, align 4, !tbaa !2
  br label %if.end2430

if.then2429:                                      ; preds = %if.end2427
  store i32 0, i32* @errflag, align 4, !tbaa !2
  br label %if.end2430

if.end2430:                                       ; preds = %if.end2427.if.end2430_crit_edge, %if.then2429
  %530 = phi i32 [ %.pre4850, %if.end2427.if.end2430_crit_edge ], [ 0, %if.then2429 ]
  %531 = or i32 %530, %haserr2396.1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %if.end2436, label %return

if.end2436:                                       ; preds = %if.end2430, %if.end2391
  %tobool2437 = icmp eq i32 %getlen.04681, 0
  %.pre4833 = load i32* %isarr, align 4, !tbaa !2
  br i1 %tobool2437, label %if.end2506, label %if.then2438

if.then2438:                                      ; preds = %if.end2436
  %tobool2439 = icmp eq i32 %.pre4833, 0
  br i1 %tobool2439, label %if.else2491, label %if.then2440

if.then2440:                                      ; preds = %if.then2438
  %tobool2441 = icmp eq i8* %sep.4, null
  br i1 %tobool2441, label %cond.end2445, label %cond.true2442

cond.true2442:                                    ; preds = %if.then2440
  %call2443 = call i32 @mb_metastrlen(i8* %sep.4, i32 0) nounwind
  br label %cond.end2445

cond.end2445:                                     ; preds = %if.then2440, %cond.true2442
  %cond2446 = phi i32 [ %call2443, %cond.true2442 ], [ 1, %if.then2440 ]
  %cmp2447 = icmp eq i32 %getlen.04681, 1
  br i1 %cmp2447, label %if.then2449, label %if.else2458

if.then2449:                                      ; preds = %cond.end2445
  %533 = load i8*** %aval, align 4, !tbaa !3
  %534 = load i8** %533, align 4, !tbaa !3
  %tobool24514353 = icmp eq i8* %534, null
  br i1 %tobool24514353, label %if.end2501, label %for.inc2453

for.inc2453:                                      ; preds = %if.then2449, %for.cond2450.backedge
  %ctr.04355 = phi i8** [ %incdec.ptr2454, %for.cond2450.backedge ], [ %533, %if.then2449 ]
  %len.04354 = phi i32 [ %536, %for.cond2450.backedge ], [ 0, %if.then2449 ]
  %incdec.ptr2454 = getelementptr inbounds i8** %ctr.04355, i32 1
  %535 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.04354, i32 1)
  %536 = extractvalue { i32, i1 } %535, 0
  %537 = extractvalue { i32, i1 } %535, 1
  br i1 %537, label %ioc_bb2455, label %for.cond2450.backedge

for.cond2450.backedge:                            ; preds = %for.inc2453, %ioc_bb2455
  %538 = load i8** %incdec.ptr2454, align 4, !tbaa !3
  %tobool2451 = icmp eq i8* %538, null
  br i1 %tobool2451, label %if.end2501, label %for.inc2453

ioc_bb2455:                                       ; preds = %for.inc2453
  %539 = sext i32 %len.04354 to i64
  call void @__ioc_report_add_overflow(i32 3351, i32 45, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %539, i64 1, i8 13) nounwind
  br label %for.cond2450.backedge

if.else2458:                                      ; preds = %cond.end2445
  %cmp2459 = icmp eq i32 %getlen.04681, 2
  %540 = load i8*** %aval, align 4, !tbaa !3
  %541 = load i8** %540, align 4, !tbaa !3
  %tobool2462 = icmp eq i8* %541, null
  br i1 %cmp2459, label %if.then2461, label %for.cond2478.preheader

for.cond2478.preheader:                           ; preds = %if.else2458
  br i1 %tobool2462, label %if.end2501, label %for.inc2481.lr.ph

for.inc2481.lr.ph:                                ; preds = %for.cond2478.preheader
  %cmp2482 = icmp sgt i32 %getlen.04681, 3
  %conv2483 = zext i1 %cmp2482 to i32
  br label %for.inc2481

if.then2461:                                      ; preds = %if.else2458
  br i1 %tobool2462, label %if.end2501, label %if.then2463

if.then2463:                                      ; preds = %if.then2461
  %542 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %cond2446)
  %543 = extractvalue { i32, i1 } %542, 0
  %544 = extractvalue { i32, i1 } %542, 1
  %545 = sext i32 %cond2446 to i64
  br i1 %544, label %ioc_bb2464, label %for.cond2466

ioc_bb2464:                                       ; preds = %if.then2463
  call void @__ioc_report_sub_overflow(i32 3355, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %545, i8 13) nounwind
  %.pre4823 = load i8*** %aval, align 4, !tbaa !3
  %.pre4824.pre = load i8** %.pre4823, align 4, !tbaa !3
  br label %for.cond2466

for.cond2466:                                     ; preds = %ioc_bb2464, %if.then2463, %cont2471
  %546 = phi i8* [ %556, %cont2471 ], [ %541, %if.then2463 ], [ %.pre4824.pre, %ioc_bb2464 ]
  %len.1 = phi i32 [ %552, %cont2471 ], [ %543, %if.then2463 ], [ %543, %ioc_bb2464 ]
  %ctr.1 = phi i8** [ %incdec.ptr2472, %cont2471 ], [ %540, %if.then2463 ], [ %.pre4823, %ioc_bb2464 ]
  %call2467 = call i32 @mb_metastrlen(i8* %546, i32 %multi_width.2) nounwind
  %547 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cond2446, i32 %call2467)
  %548 = extractvalue { i32, i1 } %547, 0
  %549 = extractvalue { i32, i1 } %547, 1
  br i1 %549, label %ioc_bb2468, label %cont2469

ioc_bb2468:                                       ; preds = %for.cond2466
  %550 = sext i32 %call2467 to i64
  call void @__ioc_report_add_overflow(i32 3355, i32 56, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %545, i64 %550, i8 13) nounwind
  br label %cont2469

cont2469:                                         ; preds = %for.cond2466, %ioc_bb2468
  %551 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.1, i32 %548)
  %552 = extractvalue { i32, i1 } %551, 0
  %553 = extractvalue { i32, i1 } %551, 1
  br i1 %553, label %ioc_bb2470, label %cont2471

ioc_bb2470:                                       ; preds = %cont2469
  %554 = sext i32 %548 to i64
  %555 = sext i32 %len.1 to i64
  call void @__ioc_report_add_overflow(i32 3355, i32 49, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %555, i64 %554, i8 13) nounwind
  br label %cont2471

cont2471:                                         ; preds = %cont2469, %ioc_bb2470
  %incdec.ptr2472 = getelementptr inbounds i8** %ctr.1, i32 1
  %556 = load i8** %incdec.ptr2472, align 4, !tbaa !3
  %tobool2473 = icmp eq i8* %556, null
  br i1 %tobool2473, label %if.end2501, label %for.cond2466

for.inc2481:                                      ; preds = %for.inc2481.lr.ph, %cont2486
  %557 = phi i8* [ %541, %for.inc2481.lr.ph ], [ %563, %cont2486 ]
  %ctr.24362 = phi i8** [ %540, %for.inc2481.lr.ph ], [ %incdec.ptr2487, %cont2486 ]
  %len.24361 = phi i32 [ 0, %for.inc2481.lr.ph ], [ %559, %cont2486 ]
  %call2484 = call i32 @wordcount(i8* %557, i8* %spsep.4, i32 %conv2483) nounwind
  %558 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.24361, i32 %call2484)
  %559 = extractvalue { i32, i1 } %558, 0
  %560 = extractvalue { i32, i1 } %558, 1
  br i1 %560, label %ioc_bb2485, label %cont2486

ioc_bb2485:                                       ; preds = %for.inc2481
  %561 = sext i32 %call2484 to i64
  %562 = sext i32 %len.24361 to i64
  call void @__ioc_report_add_overflow(i32 3359, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %562, i64 %561, i8 13) nounwind
  br label %cont2486

cont2486:                                         ; preds = %for.inc2481, %ioc_bb2485
  %incdec.ptr2487 = getelementptr inbounds i8** %ctr.24362, i32 1
  %563 = load i8** %incdec.ptr2487, align 4, !tbaa !3
  %tobool2479 = icmp eq i8* %563, null
  br i1 %tobool2479, label %if.end2501, label %for.inc2481

if.else2491:                                      ; preds = %if.then2438
  %cmp2492 = icmp slt i32 %getlen.04681, 3
  %564 = load i8** %val, align 4, !tbaa !3
  br i1 %cmp2492, label %if.then2494, label %if.else2496

if.then2494:                                      ; preds = %if.else2491
  %call2495 = call i32 @mb_metastrlen(i8* %564, i32 %multi_width.2) nounwind
  br label %if.end2501

if.else2496:                                      ; preds = %if.else2491
  %cmp2497 = icmp sgt i32 %getlen.04681, 3
  %conv2498 = zext i1 %cmp2497 to i32
  %call2499 = call i32 @wordcount(i8* %564, i8* %spsep.4, i32 %conv2498) nounwind
  br label %if.end2501

if.end2501:                                       ; preds = %for.cond2478.preheader, %cont2486, %cont2471, %if.then2449, %for.cond2450.backedge, %if.then2461, %if.then2494, %if.else2496
  %len.3 = phi i32 [ 0, %if.then2461 ], [ %call2495, %if.then2494 ], [ %call2499, %if.else2496 ], [ 0, %if.then2449 ], [ %536, %for.cond2450.backedge ], [ %552, %cont2471 ], [ 0, %for.cond2478.preheader ], [ %559, %cont2486 ]
  %arraydecay2502 = getelementptr inbounds [14 x i8]* %buf, i32 0, i32 0
  %call2503 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay2502, i8* getelementptr inbounds ([4 x i8]* @.str46, i32 0, i32 0), i32 %len.3) nounwind
  %call2505 = call i8* @dupstring(i8* %arraydecay2502) nounwind
  store i8* %call2505, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2506

if.end2506:                                       ; preds = %if.end2436, %if.end2501
  %565 = phi i32 [ 0, %if.end2501 ], [ %.pre4833, %if.end2436 ]
  %tobool2507 = icmp eq i32 %565, 0
  %flags2509 = getelementptr inbounds %union.linkroot* %l, i32 0, i32 0, i32 2
  %566 = load i32* %flags2509, align 4, !tbaa !2
  %and2514 = and i32 %566, -2
  %or2510 = or i32 %566, 1
  %storemerge = select i1 %tobool2507, i32 %and2514, i32 %or2510
  store i32 %storemerge, i32* %flags2509, align 4
  %cmp2516 = icmp sgt i32 %565, 0
  %tobool2519 = icmp eq i32 %plan9.0, 0
  %or.cond4229 = and i1 %cmp2516, %tobool2519
  br i1 %or.cond4229, label %land.lhs.true2520, label %if.else2527

land.lhs.true2520:                                ; preds = %if.end2506
  %567 = load i8*** %aval, align 4, !tbaa !3
  %tobool2521 = icmp eq i8** %567, null
  br i1 %tobool2521, label %if.then2525, label %lor.lhs.false2522

lor.lhs.false2522:                                ; preds = %land.lhs.true2520
  %568 = load i8** %567, align 4, !tbaa !3
  %tobool2524 = icmp eq i8* %568, null
  br i1 %tobool2524, label %if.then2525, label %if.else2527

if.then2525:                                      ; preds = %lor.lhs.false2522, %land.lhs.true2520
  %call2526 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2526, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2540

if.else2527:                                      ; preds = %lor.lhs.false2522, %if.end2506
  br i1 %tobool2507, label %if.end2540, label %land.lhs.true2529

land.lhs.true2529:                                ; preds = %if.else2527
  %569 = load i8*** %aval, align 4, !tbaa !3
  %tobool2530 = icmp eq i8** %569, null
  br i1 %tobool2530, label %if.end2540, label %land.lhs.true2531

land.lhs.true2531:                                ; preds = %land.lhs.true2529
  %570 = load i8** %569, align 4, !tbaa !3
  %tobool2533 = icmp eq i8* %570, null
  br i1 %tobool2533, label %if.end2540, label %land.lhs.true2534

land.lhs.true2534:                                ; preds = %land.lhs.true2531
  %arrayidx2535 = getelementptr inbounds i8** %569, i32 1
  %571 = load i8** %arrayidx2535, align 4, !tbaa !3
  %tobool2536 = icmp eq i8* %571, null
  br i1 %tobool2536, label %if.then2537, label %if.end2540

if.then2537:                                      ; preds = %land.lhs.true2534
  store i8* %570, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2540

if.end2540:                                       ; preds = %land.lhs.true2534, %land.lhs.true2531, %land.lhs.true2529, %if.else2527, %if.then2537, %if.then2525
  %572 = phi i32 [ %565, %land.lhs.true2534 ], [ %565, %land.lhs.true2531 ], [ %565, %land.lhs.true2529 ], [ 0, %if.else2527 ], [ 0, %if.then2537 ], [ 0, %if.then2525 ]
  %tobool2541 = icmp ne i32 %and2, 0
  br i1 %tobool2541, label %if.then2551, label %lor.lhs.false2542

lor.lhs.false2542:                                ; preds = %if.end2540
  %tobool2543 = icmp eq i32 %spbreak.2, 0
  br i1 %tobool2543, label %lor.lhs.false2547, label %land.lhs.true2544

land.lhs.true2544:                                ; preds = %lor.lhs.false2542
  %cmp2545 = icmp slt i32 %572, 0
  %tobool2548 = icmp eq i8* %spsep.4, null
  %or.cond4230 = and i1 %cmp2545, %tobool2548
  %tobool2550 = icmp eq i8* %sep.4, null
  %or.cond4231 = and i1 %or.cond4230, %tobool2550
  br i1 %or.cond4231, label %if.end2590, label %if.then2551

lor.lhs.false2547:                                ; preds = %lor.lhs.false2542
  %tobool2548.old = icmp eq i8* %spsep.4, null
  %tobool2550.old = icmp eq i8* %sep.4, null
  %or.cond4232 = and i1 %tobool2548.old, %tobool2550.old
  br i1 %or.cond4232, label %if.end2590, label %if.then2551

if.then2551:                                      ; preds = %land.lhs.true2544, %lor.lhs.false2547, %if.end2540
  %tobool2552 = icmp eq i32 %572, 0
  br i1 %tobool2552, label %if.end2555, label %if.then2553

if.then2553:                                      ; preds = %if.then2551
  %573 = load i8*** %aval, align 4, !tbaa !3
  %call2554 = call i8* @sepjoin(i8** %573, i8* %sep.4, i32 1) nounwind
  store i8* %call2554, i8** %val, align 4, !tbaa !3
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2555

if.end2555:                                       ; preds = %if.then2551, %if.then2553
  br i1 %tobool2541, label %if.end2579, label %land.lhs.true2557

land.lhs.true2557:                                ; preds = %if.end2555
  %tobool2558 = icmp eq i32 %spbreak.2, 0
  %tobool2560 = icmp eq i8* %spsep.4, null
  %or.cond4233 = and i1 %tobool2558, %tobool2560
  br i1 %or.cond4233, label %if.end2579, label %if.then2561

if.then2561:                                      ; preds = %land.lhs.true2557
  %574 = load i8** %val, align 4, !tbaa !3
  %call2562 = call i8** @sepsplit(i8* %574, i8* %spsep.4, i32 0, i32 1) nounwind
  store i8** %call2562, i8*** %aval, align 4, !tbaa !3
  %tobool2563 = icmp eq i8** %call2562, null
  br i1 %tobool2563, label %if.then2567, label %lor.lhs.false2564

lor.lhs.false2564:                                ; preds = %if.then2561
  %575 = load i8** %call2562, align 4, !tbaa !3
  %tobool2566 = icmp eq i8* %575, null
  br i1 %tobool2566, label %if.then2567, label %if.else2569

if.then2567:                                      ; preds = %lor.lhs.false2564, %if.then2561
  %call2568 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2568, i8** %val, align 4, !tbaa !3
  br label %if.end2579

if.else2569:                                      ; preds = %lor.lhs.false2564
  %arrayidx2570 = getelementptr inbounds i8** %call2562, i32 1
  %576 = load i8** %arrayidx2570, align 4, !tbaa !3
  %tobool2571 = icmp eq i8* %576, null
  br i1 %tobool2571, label %if.then2572, label %if.end2579.thread

if.then2572:                                      ; preds = %if.else2569
  store i8* %575, i8** %val, align 4, !tbaa !3
  br label %if.end2579

if.end2579.thread:                                ; preds = %if.else2569
  %tobool2575 = icmp ne i32 %nojoin.3, 0
  %cond2576 = select i1 %tobool2575, i32 1, i32 2
  store i32 %cond2576, i32* %isarr, align 4, !tbaa !2
  %577 = load i32* %flags2509, align 4, !tbaa !2
  br label %if.then2581

if.end2579:                                       ; preds = %land.lhs.true2557, %if.end2555, %if.then2567, %if.then2572
  %.pr4294 = load i32* %isarr, align 4, !tbaa !2
  %tobool2580 = icmp eq i32 %.pr4294, 0
  %578 = load i32* %flags2509, align 4, !tbaa !2
  br i1 %tobool2580, label %if.else2585, label %if.then2581

if.then2581:                                      ; preds = %if.end2579.thread, %if.end2579
  %579 = phi i32 [ %cond2576, %if.end2579.thread ], [ %.pr4294, %if.end2579 ]
  %580 = phi i32 [ %577, %if.end2579.thread ], [ %578, %if.end2579 ]
  %or2584 = or i32 %580, 1
  store i32 %or2584, i32* %flags2509, align 4, !tbaa !2
  br label %if.end2590

if.else2585:                                      ; preds = %if.end2579
  %and2588 = and i32 %578, -2
  store i32 %and2588, i32* %flags2509, align 4, !tbaa !2
  br label %if.end2590

if.end2590:                                       ; preds = %lor.lhs.false2547, %land.lhs.true2544, %if.then2581, %if.else2585
  %581 = phi i32 [ %572, %lor.lhs.false2547 ], [ %572, %land.lhs.true2544 ], [ %579, %if.then2581 ], [ 0, %if.else2585 ]
  %cmp2591 = icmp eq i32 %casmod.2, 0
  br i1 %cmp2591, label %if.end2617, label %if.then2593

if.then2593:                                      ; preds = %if.end2590
  %tobool2594 = icmp eq i32 %581, 0
  br i1 %tobool2594, label %if.else2614, label %if.then2595

if.then2595:                                      ; preds = %if.then2593
  %582 = load i8*** %aval, align 4, !tbaa !3
  %call2597 = call i32 @arrlen(i8** %582) nounwind
  %583 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call2597, i32 1)
  %584 = extractvalue { i32, i1 } %583, 0
  %585 = extractvalue { i32, i1 } %583, 1
  br i1 %585, label %ioc_bb2598, label %cont2599

ioc_bb2598:                                       ; preds = %if.then2595
  %586 = sext i32 %call2597 to i64
  call void @__ioc_report_add_overflow(i32 3426, i32 70, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %586, i64 1, i8 13) nounwind
  br label %cont2599

cont2599:                                         ; preds = %if.then2595, %ioc_bb2598
  %587 = icmp sgt i32 %584, -1
  br i1 %587, label %cont2602, label %ioc_bb2601

ioc_bb2601:                                       ; preds = %cont2599
  %588 = sext i32 %584 to i64
  call void @__ioc_report_conversion(i32 3426, i32 56, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %588, i8 1) nounwind
  br label %cont2602

cont2602:                                         ; preds = %ioc_bb2601, %cont2599
  %589 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %584, i32 4)
  %590 = extractvalue { i32, i1 } %589, 0
  %591 = extractvalue { i32, i1 } %589, 1
  br i1 %591, label %ioc_bb2603, label %cont2604

ioc_bb2603:                                       ; preds = %cont2602
  %592 = zext i32 %584 to i64
  call void @__ioc_report_mul_overflow(i32 3426, i32 54, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %592, i8 5) nounwind
  br label %cont2604

cont2604:                                         ; preds = %cont2602, %ioc_bb2603
  %call2605 = call i8* @zhalloc(i32 %590) nounwind
  %593 = bitcast i8* %call2605 to i8**
  store i8** %593, i8*** %aval, align 4, !tbaa !3
  %594 = load i8** %582, align 4, !tbaa !3
  %tobool26074349 = icmp eq i8* %594, null
  br i1 %tobool26074349, label %while.end2612, label %while.body2608

while.body2608:                                   ; preds = %cont2604, %while.body2608
  %595 = phi i8* [ %596, %while.body2608 ], [ %594, %cont2604 ]
  %ap2.04351 = phi i8** [ %incdec.ptr2611, %while.body2608 ], [ %593, %cont2604 ]
  %ap2596.04350 = phi i8** [ %incdec.ptr2609, %while.body2608 ], [ %582, %cont2604 ]
  %incdec.ptr2609 = getelementptr inbounds i8** %ap2596.04350, i32 1
  %call2610 = call i8* @casemodify(i8* %595, i32 %casmod.2) nounwind
  %incdec.ptr2611 = getelementptr inbounds i8** %ap2.04351, i32 1
  store i8* %call2610, i8** %ap2.04351, align 4, !tbaa !3
  %596 = load i8** %incdec.ptr2609, align 4, !tbaa !3
  %tobool2607 = icmp eq i8* %596, null
  br i1 %tobool2607, label %while.end2612, label %while.body2608

while.end2612:                                    ; preds = %while.body2608, %cont2604
  %ap2.0.lcssa = phi i8** [ %593, %cont2604 ], [ %incdec.ptr2611, %while.body2608 ]
  store i8* null, i8** %ap2.0.lcssa, align 4, !tbaa !3
  br label %if.end2617

if.else2614:                                      ; preds = %if.then2593
  %597 = load i8** %val, align 4, !tbaa !3
  %call2615 = call i8* @casemodify(i8* %597, i32 %casmod.2) nounwind
  store i8* %call2615, i8** %val, align 4, !tbaa !3
  br label %if.end2617

if.end2617:                                       ; preds = %if.end2590, %while.end2612, %if.else2614
  %copied.6 = phi i32 [ 1, %while.end2612 ], [ 1, %if.else2614 ], [ %copied.5, %if.end2590 ]
  %cmp2618 = icmp sgt i32 %getkeys.4, -1
  br i1 %cmp2618, label %if.then2620, label %if.end2649

if.then2620:                                      ; preds = %if.end2617
  %598 = load i32* %isarr, align 4, !tbaa !2
  %tobool2622 = icmp eq i32 %598, 0
  br i1 %tobool2622, label %if.else2645, label %if.then2623

if.then2623:                                      ; preds = %if.then2620
  %599 = load i8*** %aval, align 4, !tbaa !3
  %call2626 = call i32 @arrlen(i8** %599) nounwind
  %600 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call2626, i32 1)
  %601 = extractvalue { i32, i1 } %600, 0
  %602 = extractvalue { i32, i1 } %600, 1
  br i1 %602, label %ioc_bb2627, label %cont2628

ioc_bb2627:                                       ; preds = %if.then2623
  %603 = sext i32 %call2626 to i64
  call void @__ioc_report_add_overflow(i32 3446, i32 64, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %603, i64 1, i8 13) nounwind
  br label %cont2628

cont2628:                                         ; preds = %if.then2623, %ioc_bb2627
  %604 = icmp sgt i32 %601, -1
  br i1 %604, label %cont2631, label %ioc_bb2630

ioc_bb2630:                                       ; preds = %cont2628
  %605 = sext i32 %601 to i64
  call void @__ioc_report_conversion(i32 3446, i32 50, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %605, i8 1) nounwind
  br label %cont2631

cont2631:                                         ; preds = %ioc_bb2630, %cont2628
  %606 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %601, i32 4)
  %607 = extractvalue { i32, i1 } %606, 0
  %608 = extractvalue { i32, i1 } %606, 1
  br i1 %608, label %ioc_bb2632, label %cont2633

ioc_bb2632:                                       ; preds = %cont2631
  %609 = zext i32 %601 to i64
  call void @__ioc_report_mul_overflow(i32 3446, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 4, i64 %609, i8 5) nounwind
  br label %cont2633

cont2633:                                         ; preds = %cont2631, %ioc_bb2632
  %call2634 = call i8* @zhalloc(i32 %607) nounwind
  %610 = bitcast i8* %call2634 to i8**
  store i8** %610, i8*** %aval, align 4, !tbaa !3
  %611 = load i8** %599, align 4, !tbaa !3
  %tobool26364345 = icmp eq i8* %611, null
  br i1 %tobool26364345, label %for.end2643, label %for.body2637

for.body2637:                                     ; preds = %cont2633, %for.body2637
  %612 = phi i8* [ %614, %for.body2637 ], [ %611, %cont2633 ]
  %ap22625.04347 = phi i8** [ %incdec.ptr2642, %for.body2637 ], [ %610, %cont2633 ]
  %ap2624.04346 = phi i8** [ %incdec.ptr2641, %for.body2637 ], [ %599, %cont2633 ]
  %call2638 = call i8* @getkeystring(i8* %612, i32* %len2621, i32 %getkeys.4, i32* null) nounwind
  store i8* %call2638, i8** %ap22625.04347, align 4, !tbaa !3
  %613 = load i32* %len2621, align 4, !tbaa !2
  %call2639 = call i8* @metafy(i8* %call2638, i32 %613, i32 1) nounwind
  store i8* %call2639, i8** %ap22625.04347, align 4, !tbaa !3
  %incdec.ptr2641 = getelementptr inbounds i8** %ap2624.04346, i32 1
  %incdec.ptr2642 = getelementptr inbounds i8** %ap22625.04347, i32 1
  %614 = load i8** %incdec.ptr2641, align 4, !tbaa !3
  %tobool2636 = icmp eq i8* %614, null
  br i1 %tobool2636, label %for.end2643, label %for.body2637

for.end2643:                                      ; preds = %for.body2637, %cont2633
  %ap22625.0.lcssa = phi i8** [ %610, %cont2633 ], [ %incdec.ptr2642, %for.body2637 ]
  store i8* null, i8** %ap22625.0.lcssa, align 4, !tbaa !3
  br label %if.end2649

if.else2645:                                      ; preds = %if.then2620
  %615 = load i8** %val, align 4, !tbaa !3
  %call2646 = call i8* @getkeystring(i8* %615, i32* %len2621, i32 %getkeys.4, i32* null) nounwind
  store i8* %call2646, i8** %val, align 4, !tbaa !3
  %616 = load i32* %len2621, align 4, !tbaa !2
  %call2647 = call i8* @metafy(i8* %call2646, i32 %616, i32 1) nounwind
  store i8* %call2647, i8** %val, align 4, !tbaa !3
  br label %if.end2649

if.end2649:                                       ; preds = %for.end2643, %if.else2645, %if.end2617
  %copied.7 = phi i32 [ 1, %for.end2643 ], [ 1, %if.else2645 ], [ %copied.6, %if.end2617 ]
  %tobool2650 = icmp eq i32 %presc.2, 0
  br i1 %tobool2650, label %if.end2702, label %if.then2651

if.then2651:                                      ; preds = %if.end2649
  %617 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 134), align 1, !tbaa !0
  %618 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), align 1, !tbaa !0
  %619 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !0
  %cmp2655 = icmp slt i32 %presc.2, 2
  br i1 %cmp2655, label %cont2659, label %if.end2662

cont2659:                                         ; preds = %if.then2651
  store i8 1, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !0
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), align 1, !tbaa !0
  store i8 0, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 134), align 1, !tbaa !0
  br label %if.end2662

if.end2662:                                       ; preds = %if.then2651, %cont2659
  %620 = load i32* %isarr, align 4, !tbaa !2
  %tobool2663 = icmp eq i32 %620, 0
  %tobool2666 = icmp ne i32 %copied.7, 0
  br i1 %tobool2663, label %if.else2678, label %if.then2664

if.then2664:                                      ; preds = %if.end2662
  %.pre4848 = load i8*** %aval, align 4, !tbaa !3
  br i1 %tobool2666, label %if.end2669, label %if.then2667

if.then2667:                                      ; preds = %if.then2664
  %call2668 = call i8** @arrdup(i8** %.pre4848) nounwind
  store i8** %call2668, i8*** %aval, align 4, !tbaa !3
  br label %if.end2669

if.end2669:                                       ; preds = %if.then2664, %if.then2667
  %621 = phi i8** [ %call2668, %if.then2667 ], [ %.pre4848, %if.then2664 ]
  %copied.8 = phi i32 [ 1, %if.then2667 ], [ %copied.7, %if.then2664 ]
  %622 = load i8** %621, align 4, !tbaa !3
  %tobool26714343 = icmp eq i8* %622, null
  br i1 %tobool26714343, label %cont2690, label %for.body2672

for.body2672:                                     ; preds = %if.end2669, %for.body2672
  %623 = phi i8* [ %625, %for.body2672 ], [ %622, %if.end2669 ]
  %ap2665.04344 = phi i8** [ %incdec.ptr2676, %for.body2672 ], [ %621, %if.end2669 ]
  call void @untokenize(i8* %623) nounwind
  %624 = load i8** %ap2665.04344, align 4, !tbaa !3
  %call2673 = call i8* @promptexpand(i8* %624, i32 0, i8* null, i8* null, i32* null) nounwind
  %call2674 = call i8* @dupstring(i8* %call2673) nounwind
  store i8* %call2674, i8** %ap2665.04344, align 4, !tbaa !3
  call void @free(i8* %call2673) nounwind
  %incdec.ptr2676 = getelementptr inbounds i8** %ap2665.04344, i32 1
  %625 = load i8** %incdec.ptr2676, align 4, !tbaa !3
  %tobool2671 = icmp eq i8* %625, null
  br i1 %tobool2671, label %cont2690, label %for.body2672

if.else2678:                                      ; preds = %if.end2662
  %.pre4847 = load i8** %val, align 4, !tbaa !3
  br i1 %tobool2666, label %if.end2683, label %if.then2681

if.then2681:                                      ; preds = %if.else2678
  %call2682 = call i8* @dupstring(i8* %.pre4847) nounwind
  store i8* %call2682, i8** %val, align 4, !tbaa !3
  br label %if.end2683

if.end2683:                                       ; preds = %if.else2678, %if.then2681
  %626 = phi i8* [ %call2682, %if.then2681 ], [ %.pre4847, %if.else2678 ]
  %copied.9 = phi i32 [ 1, %if.then2681 ], [ %copied.7, %if.else2678 ]
  call void @untokenize(i8* %626) nounwind
  %627 = load i8** %val, align 4, !tbaa !3
  %call2684 = call i8* @promptexpand(i8* %627, i32 0, i8* null, i8* null, i32* null) nounwind
  %call2685 = call i8* @dupstring(i8* %call2684) nounwind
  store i8* %call2685, i8** %val, align 4, !tbaa !3
  call void @free(i8* %call2684) nounwind
  br label %cont2690

cont2690:                                         ; preds = %if.end2669, %for.body2672, %if.end2683
  %copied.10 = phi i32 [ %copied.9, %if.end2683 ], [ %copied.8, %for.body2672 ], [ %copied.8, %if.end2669 ]
  store i8 %617, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 134), align 1, !tbaa !0
  store i8 %618, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 130), align 1, !tbaa !0
  store i8 %619, i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 132), align 1, !tbaa !0
  br label %if.end2702

if.end2702:                                       ; preds = %if.end2649, %cont2690
  %copied.11 = phi i32 [ %copied.10, %cont2690 ], [ %copied.7, %if.end2649 ]
  %tobool2703 = icmp eq i32 %quotemod.2, 0
  br i1 %tobool2703, label %if.end2909, label %if.then2704

if.then2704:                                      ; preds = %if.end2702
  %cmp2705 = icmp sgt i32 %quotemod.2, 0
  %cmp2708 = icmp sgt i32 %quotetype.2, 1
  %or.cond4234 = and i1 %cmp2705, %cmp2708
  br i1 %or.cond4234, label %if.then2710, label %if.end2714

if.then2710:                                      ; preds = %if.then2704
  switch i32 %quotetype.2, label %sw.default2712 [
    i32 4, label %sw.bb2711
    i32 6, label %if.end2714
  ]

sw.bb2711:                                        ; preds = %if.then2710
  br label %if.end2714

sw.default2712:                                   ; preds = %if.then2710
  br label %if.end2714

if.end2714:                                       ; preds = %if.then2710, %if.then2704, %sw.bb2711, %sw.default2712
  %pre.0 = phi i32 [ 1, %sw.default2712 ], [ 2, %sw.bb2711 ], [ 0, %if.then2704 ], [ 0, %if.then2710 ]
  %post.0 = phi i32 [ 1, %sw.default2712 ], [ 1, %sw.bb2711 ], [ 0, %if.then2704 ], [ 0, %if.then2710 ]
  %628 = load i32* %isarr, align 4, !tbaa !2
  %tobool2715 = icmp eq i32 %628, 0
  %tobool2718 = icmp ne i32 %copied.11, 0
  br i1 %tobool2715, label %if.else2823, label %if.then2716

if.then2716:                                      ; preds = %if.end2714
  %.pre4846 = load i8*** %aval, align 4, !tbaa !3
  br i1 %tobool2718, label %if.end2721, label %if.then2719

if.then2719:                                      ; preds = %if.then2716
  %call2720 = call i8** @arrdup(i8** %.pre4846) nounwind
  store i8** %call2720, i8*** %aval, align 4, !tbaa !3
  br label %if.end2721

if.end2721:                                       ; preds = %if.then2716, %if.then2719
  %629 = phi i8** [ %call2720, %if.then2719 ], [ %.pre4846, %if.then2716 ]
  %copied.12 = phi i32 [ 1, %if.then2719 ], [ %copied.11, %if.then2716 ]
  br i1 %cmp2705, label %if.then2724, label %if.else2795

if.then2724:                                      ; preds = %if.end2721
  %630 = load i8** %629, align 4, !tbaa !3
  %tobool27304334 = icmp eq i8* %630, null
  br i1 %cmp2708, label %for.cond2729.preheader, label %for.cond2787.preheader

for.cond2787.preheader:                           ; preds = %if.then2724
  br i1 %tobool27304334, label %if.end2909, label %for.body2789

for.cond2729.preheader:                           ; preds = %if.then2724
  br i1 %tobool27304334, label %if.end2909, label %for.body2731.lr.ph

for.body2731.lr.ph:                               ; preds = %for.cond2729.preheader
  %631 = zext i32 %pre.0 to i64
  %632 = zext i32 %post.0 to i64
  %tobool2748 = icmp eq i32 %pre.0, 0
  %cmp2775 = icmp eq i32 %quotetype.2, 4
  %cmp2750 = icmp ne i32 %quotetype.2, 3
  %conv2757 = select i1 %cmp2750, i8 39, i8 34
  %633 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %pre.0, i32 1)
  br label %for.body2731

for.body2731:                                     ; preds = %for.body2731.lr.ph, %for.inc2783
  %634 = phi i8* [ %630, %for.body2731.lr.ph ], [ %660, %for.inc2783 ]
  %ap2717.04335 = phi i8** [ %629, %for.body2731.lr.ph ], [ %incdec.ptr2784, %for.inc2783 ]
  %call2732 = call i8* @quotestring(i8* %634, i8** null, i32 %quotetype.2) nounwind
  %call2733 = call i32 @strlen(i8* %call2732) nounwind readonly
  %635 = icmp sgt i32 %call2733, -1
  br i1 %635, label %cont2735, label %ioc_bb2734

ioc_bb2734:                                       ; preds = %for.body2731
  %636 = zext i32 %call2733 to i64
  call void @__ioc_report_conversion(i32 3540, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %636, i8 0) nounwind
  br label %cont2735

cont2735:                                         ; preds = %ioc_bb2734, %for.body2731
  %637 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pre.0, i32 %call2733)
  %638 = extractvalue { i32, i1 } %637, 0
  %639 = extractvalue { i32, i1 } %637, 1
  %640 = sext i32 %call2733 to i64
  br i1 %639, label %ioc_bb2736, label %cont2737

ioc_bb2736:                                       ; preds = %cont2735
  call void @__ioc_report_add_overflow(i32 3541, i32 43, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %631, i64 %640, i8 13) nounwind
  br label %cont2737

cont2737:                                         ; preds = %cont2735, %ioc_bb2736
  %641 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %638, i32 %post.0)
  %642 = extractvalue { i32, i1 } %641, 0
  %643 = extractvalue { i32, i1 } %641, 1
  %644 = sext i32 %638 to i64
  br i1 %643, label %ioc_bb2738, label %cont2739

ioc_bb2738:                                       ; preds = %cont2737
  call void @__ioc_report_add_overflow(i32 3541, i32 48, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %644, i64 %632, i8 13) nounwind
  br label %cont2739

cont2739:                                         ; preds = %cont2737, %ioc_bb2738
  %645 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %642, i32 1)
  %646 = extractvalue { i32, i1 } %645, 0
  %647 = extractvalue { i32, i1 } %645, 1
  br i1 %647, label %ioc_bb2740, label %cont2741

ioc_bb2740:                                       ; preds = %cont2739
  %648 = sext i32 %642 to i64
  call void @__ioc_report_add_overflow(i32 3541, i32 55, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %648, i64 1, i8 13) nounwind
  br label %cont2741

cont2741:                                         ; preds = %cont2739, %ioc_bb2740
  %649 = icmp sgt i32 %646, -1
  br i1 %649, label %cont2744, label %ioc_bb2743

ioc_bb2743:                                       ; preds = %cont2741
  %650 = sext i32 %646 to i64
  call void @__ioc_report_conversion(i32 3541, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %650, i8 1) nounwind
  br label %cont2744

cont2744:                                         ; preds = %ioc_bb2743, %cont2741
  %call2745 = call i8* @zhalloc(i32 %646) nounwind
  store i8* %call2745, i8** %ap2717.04335, align 4, !tbaa !3
  %add.ptr2746 = getelementptr inbounds i8* %call2745, i32 %pre.0
  %call2747 = call i8* @strcpy(i8* %add.ptr2746, i8* %call2732) nounwind
  br i1 %tobool2748, label %cont2768, label %cont2756

cont2756:                                         ; preds = %cont2744
  br i1 %639, label %ioc_bb2758, label %cont2759

ioc_bb2758:                                       ; preds = %cont2756
  call void @__ioc_report_add_overflow(i32 3544, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %631, i64 %640, i8 13) nounwind
  br label %cont2759

cont2759:                                         ; preds = %cont2756, %ioc_bb2758
  %651 = load i8** %ap2717.04335, align 4, !tbaa !3
  %arrayidx2761 = getelementptr inbounds i8* %651, i32 %638
  store i8 %conv2757, i8* %arrayidx2761, align 1, !tbaa !0
  %652 = extractvalue { i32, i1 } %633, 0
  %653 = extractvalue { i32, i1 } %633, 1
  br i1 %653, label %ioc_bb2762, label %cont2763

ioc_bb2762:                                       ; preds = %cont2759
  call void @__ioc_report_sub_overflow(i32 3544, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %631, i64 1, i8 13) nounwind
  br label %cont2763

cont2763:                                         ; preds = %cont2759, %ioc_bb2762
  %654 = load i8** %ap2717.04335, align 4, !tbaa !3
  %arrayidx2765 = getelementptr inbounds i8* %654, i32 %652
  store i8 %conv2757, i8* %arrayidx2765, align 1, !tbaa !0
  br label %cont2768

cont2768:                                         ; preds = %cont2763, %cont2744
  br i1 %639, label %ioc_bb2769, label %cont2770

ioc_bb2769:                                       ; preds = %cont2768
  call void @__ioc_report_add_overflow(i32 3545, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %631, i64 %640, i8 13) nounwind
  br label %cont2770

cont2770:                                         ; preds = %cont2768, %ioc_bb2769
  %655 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %638, i32 1)
  %656 = extractvalue { i32, i1 } %655, 0
  %657 = extractvalue { i32, i1 } %655, 1
  br i1 %657, label %ioc_bb2771, label %cont2772

ioc_bb2771:                                       ; preds = %cont2770
  call void @__ioc_report_add_overflow(i32 3545, i32 28, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %644, i64 1, i8 13) nounwind
  br label %cont2772

cont2772:                                         ; preds = %cont2770, %ioc_bb2771
  %658 = load i8** %ap2717.04335, align 4, !tbaa !3
  %arrayidx2774 = getelementptr inbounds i8* %658, i32 %656
  store i8 0, i8* %arrayidx2774, align 1, !tbaa !0
  br i1 %cmp2775, label %cont2779, label %for.inc2783

cont2779:                                         ; preds = %cont2772
  %659 = load i8** %ap2717.04335, align 4, !tbaa !3
  store i8 36, i8* %659, align 1, !tbaa !0
  br label %for.inc2783

for.inc2783:                                      ; preds = %cont2772, %cont2779
  %incdec.ptr2784 = getelementptr inbounds i8** %ap2717.04335, i32 1
  %660 = load i8** %incdec.ptr2784, align 4, !tbaa !3
  %tobool2730 = icmp eq i8* %660, null
  br i1 %tobool2730, label %if.end2909, label %for.body2731

for.body2789:                                     ; preds = %for.cond2787.preheader, %for.body2789
  %661 = phi i8* [ %662, %for.body2789 ], [ %630, %for.cond2787.preheader ]
  %ap2717.14338 = phi i8** [ %incdec.ptr2792, %for.body2789 ], [ %629, %for.cond2787.preheader ]
  %call2790 = call i8* @quotestring(i8* %661, i8** null, i32 7) nounwind
  store i8* %call2790, i8** %ap2717.14338, align 4, !tbaa !3
  %incdec.ptr2792 = getelementptr inbounds i8** %ap2717.14338, i32 1
  %662 = load i8** %incdec.ptr2792, align 4, !tbaa !3
  %tobool2788 = icmp eq i8* %662, null
  br i1 %tobool2788, label %if.end2909, label %for.body2789

if.else2795:                                      ; preds = %if.end2721
  %663 = load i32* @noerrs, align 4, !tbaa !2
  %664 = load i32* @errflag, align 4, !tbaa !2
  %tobool2802 = icmp ne i32 %quoteerr.2, 0
  br i1 %tobool2802, label %for.cond2805.preheader, label %if.then2803

if.then2803:                                      ; preds = %if.else2795
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  br label %for.cond2805.preheader

for.cond2805.preheader:                           ; preds = %if.then2803, %if.else2795
  %665 = load i8** %629, align 4, !tbaa !3
  %tobool28064339 = icmp eq i8* %665, null
  br i1 %tobool28064339, label %for.end2812, label %for.body2807

for.body2807:                                     ; preds = %for.cond2805.preheader, %for.body2807
  %666 = phi i8* [ %669, %for.body2807 ], [ %665, %for.cond2805.preheader ]
  %haserr2801.04341 = phi i32 [ %or2809, %for.body2807 ], [ 0, %for.cond2805.preheader ]
  %ap2717.24340 = phi i8** [ %incdec.ptr2811, %for.body2807 ], [ %629, %for.cond2805.preheader ]
  %call2808 = call i32 @parse_subst_string(i8* %666) nounwind
  %or2809 = or i32 %call2808, %haserr2801.04341
  %667 = load i8** %ap2717.24340, align 4, !tbaa !3
  call void @remnulargs(i8* %667) nounwind
  %668 = load i8** %ap2717.24340, align 4, !tbaa !3
  call void @untokenize(i8* %668) nounwind
  %incdec.ptr2811 = getelementptr inbounds i8** %ap2717.24340, i32 1
  %669 = load i8** %incdec.ptr2811, align 4, !tbaa !3
  %tobool2806 = icmp eq i8* %669, null
  br i1 %tobool2806, label %for.end2812, label %for.body2807

for.end2812:                                      ; preds = %for.body2807, %for.cond2805.preheader
  %haserr2801.0.lcssa = phi i32 [ 0, %for.cond2805.preheader ], [ %or2809, %for.body2807 ]
  store i32 %663, i32* @noerrs, align 4, !tbaa !2
  br i1 %tobool2802, label %if.else2815, label %if.then2814

if.then2814:                                      ; preds = %for.end2812
  store i32 %664, i32* @errflag, align 4, !tbaa !2
  br label %if.end2909

if.else2815:                                      ; preds = %for.end2812
  %670 = load i32* @errflag, align 4, !tbaa !2
  %671 = or i32 %670, %haserr2801.0.lcssa
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %if.end2909, label %if.then2819

if.then2819:                                      ; preds = %if.else2815
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([31 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %return

if.else2823:                                      ; preds = %if.end2714
  br i1 %tobool2718, label %if.end2827, label %if.then2825

if.then2825:                                      ; preds = %if.else2823
  %673 = load i8** %val, align 4, !tbaa !3
  %call2826 = call i8* @dupstring(i8* %673) nounwind
  store i8* %call2826, i8** %val, align 4, !tbaa !3
  br label %if.end2827

if.end2827:                                       ; preds = %if.then2825, %if.else2823
  %copied.13 = phi i32 [ %copied.11, %if.else2823 ], [ 1, %if.then2825 ]
  br i1 %cmp2705, label %if.then2830, label %if.else2887

if.then2830:                                      ; preds = %if.end2827
  %674 = load i8** %val, align 4, !tbaa !3
  br i1 %cmp2708, label %if.then2833, label %if.else2884

if.then2833:                                      ; preds = %if.then2830
  %call2838 = call i8* @quotestring(i8* %674, i8** null, i32 %quotetype.2) nounwind
  %call2839 = call i32 @strlen(i8* %call2838) nounwind readonly
  %675 = icmp sgt i32 %call2839, -1
  br i1 %675, label %cont2842, label %ioc_bb2841

ioc_bb2841:                                       ; preds = %if.then2833
  %676 = zext i32 %call2839 to i64
  call void @__ioc_report_conversion(i32 3582, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %676, i8 0) nounwind
  br label %cont2842

cont2842:                                         ; preds = %ioc_bb2841, %if.then2833
  %677 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pre.0, i32 %call2839)
  %678 = extractvalue { i32, i1 } %677, 0
  %679 = extractvalue { i32, i1 } %677, 1
  %680 = zext i32 %pre.0 to i64
  %681 = sext i32 %call2839 to i64
  br i1 %679, label %ioc_bb2843, label %cont2844

ioc_bb2843:                                       ; preds = %cont2842
  call void @__ioc_report_add_overflow(i32 3583, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %680, i64 %681, i8 13) nounwind
  br label %cont2844

cont2844:                                         ; preds = %cont2842, %ioc_bb2843
  %682 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %678, i32 2)
  %683 = extractvalue { i32, i1 } %682, 0
  %684 = extractvalue { i32, i1 } %682, 1
  %685 = sext i32 %678 to i64
  br i1 %684, label %ioc_bb2845, label %cont2846

ioc_bb2845:                                       ; preds = %cont2844
  call void @__ioc_report_add_overflow(i32 3583, i32 45, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %685, i64 2, i8 13) nounwind
  br label %cont2846

cont2846:                                         ; preds = %cont2844, %ioc_bb2845
  %686 = icmp sgt i32 %683, -1
  br i1 %686, label %cont2849, label %ioc_bb2848

ioc_bb2848:                                       ; preds = %cont2846
  %687 = sext i32 %683 to i64
  call void @__ioc_report_conversion(i32 3583, i32 35, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %687, i8 1) nounwind
  br label %cont2849

cont2849:                                         ; preds = %ioc_bb2848, %cont2846
  %call2850 = call i8* @zhalloc(i32 %683) nounwind
  store i8* %call2850, i8** %val, align 4, !tbaa !3
  %add.ptr2851 = getelementptr inbounds i8* %call2850, i32 %pre.0
  %call2852 = call i8* @strcpy(i8* %add.ptr2851, i8* %call2838) nounwind
  %tobool2853 = icmp eq i32 %pre.0, 0
  br i1 %tobool2853, label %cont2871, label %cont2861

cont2861:                                         ; preds = %cont2849
  %cmp2855 = icmp ne i32 %quotetype.2, 3
  %conv2862 = select i1 %cmp2855, i8 39, i8 34
  br i1 %679, label %ioc_bb2863, label %cont2864

ioc_bb2863:                                       ; preds = %cont2861
  call void @__ioc_report_add_overflow(i32 3586, i32 36, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %680, i64 %681, i8 13) nounwind
  br label %cont2864

cont2864:                                         ; preds = %cont2861, %ioc_bb2863
  %688 = load i8** %val, align 4, !tbaa !3
  %arrayidx2865 = getelementptr inbounds i8* %688, i32 %678
  store i8 %conv2862, i8* %arrayidx2865, align 1, !tbaa !0
  %689 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %pre.0, i32 1)
  %690 = extractvalue { i32, i1 } %689, 0
  %691 = extractvalue { i32, i1 } %689, 1
  br i1 %691, label %ioc_bb2866, label %cont2867

ioc_bb2866:                                       ; preds = %cont2864
  call void @__ioc_report_sub_overflow(i32 3586, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %680, i64 1, i8 13) nounwind
  br label %cont2867

cont2867:                                         ; preds = %cont2864, %ioc_bb2866
  %692 = load i8** %val, align 4, !tbaa !3
  %arrayidx2868 = getelementptr inbounds i8* %692, i32 %690
  store i8 %conv2862, i8* %arrayidx2868, align 1, !tbaa !0
  br label %cont2871

cont2871:                                         ; preds = %cont2867, %cont2849
  br i1 %679, label %ioc_bb2872, label %cont2873

ioc_bb2872:                                       ; preds = %cont2871
  call void @__ioc_report_add_overflow(i32 3587, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %680, i64 %681, i8 13) nounwind
  br label %cont2873

cont2873:                                         ; preds = %cont2871, %ioc_bb2872
  %693 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %678, i32 1)
  %694 = extractvalue { i32, i1 } %693, 0
  %695 = extractvalue { i32, i1 } %693, 1
  br i1 %695, label %ioc_bb2874, label %cont2875

ioc_bb2874:                                       ; preds = %cont2873
  call void @__ioc_report_add_overflow(i32 3587, i32 24, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %685, i64 1, i8 13) nounwind
  br label %cont2875

cont2875:                                         ; preds = %cont2873, %ioc_bb2874
  %696 = load i8** %val, align 4, !tbaa !3
  %arrayidx2876 = getelementptr inbounds i8* %696, i32 %694
  store i8 0, i8* %arrayidx2876, align 1, !tbaa !0
  %cmp2877 = icmp eq i32 %quotetype.2, 4
  br i1 %cmp2877, label %cont2881, label %if.end2909

cont2881:                                         ; preds = %cont2875
  %697 = load i8** %val, align 4, !tbaa !3
  store i8 36, i8* %697, align 1, !tbaa !0
  br label %if.end2909

if.else2884:                                      ; preds = %if.then2830
  %call2885 = call i8* @quotestring(i8* %674, i8** null, i32 7) nounwind
  store i8* %call2885, i8** %val, align 4, !tbaa !3
  br label %if.end2909

if.else2887:                                      ; preds = %if.end2827
  %698 = load i32* @noerrs, align 4, !tbaa !2
  %tobool2894 = icmp eq i32 %quoteerr.2, 0
  br i1 %tobool2894, label %if.then2899, label %if.else2900

if.then2899:                                      ; preds = %if.else2887
  %699 = load i32* @errflag, align 4, !tbaa !2
  store i32 1, i32* @noerrs, align 4, !tbaa !2
  %700 = load i8** %val, align 4, !tbaa !3
  %call2897 = call i32 @parse_subst_string(i8* %700) nounwind
  store i32 %698, i32* @noerrs, align 4, !tbaa !2
  store i32 %699, i32* @errflag, align 4, !tbaa !2
  br label %if.end2906

if.else2900:                                      ; preds = %if.else2887
  %701 = load i8** %val, align 4, !tbaa !3
  %call28974296 = call i32 @parse_subst_string(i8* %701) nounwind
  store i32 %698, i32* @noerrs, align 4, !tbaa !2
  %702 = load i32* @errflag, align 4, !tbaa !2
  %703 = or i32 %702, %call28974296
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %if.end2906, label %if.then2904

if.then2904:                                      ; preds = %if.else2900
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([31 x i8]* @.str47, i32 0, i32 0)) nounwind
  br label %return

if.end2906:                                       ; preds = %if.else2900, %if.then2899
  %705 = load i8** %val, align 4, !tbaa !3
  call void @remnulargs(i8* %705) nounwind
  %706 = load i8** %val, align 4, !tbaa !3
  call void @untokenize(i8* %706) nounwind
  br label %if.end2909

if.end2909:                                       ; preds = %for.cond2787.preheader, %for.body2789, %for.cond2729.preheader, %for.inc2783, %if.else2815, %if.end2702, %if.then2814, %if.else2884, %cont2881, %cont2875, %if.end2906
  %copied.14 = phi i32 [ %copied.12, %if.else2815 ], [ %copied.12, %if.then2814 ], [ %copied.13, %cont2881 ], [ %copied.13, %cont2875 ], [ %copied.13, %if.else2884 ], [ %copied.13, %if.end2906 ], [ %copied.11, %if.end2702 ], [ %copied.12, %for.inc2783 ], [ %copied.12, %for.cond2729.preheader ], [ %copied.12, %for.body2789 ], [ %copied.12, %for.cond2787.preheader ]
  %tobool2910 = icmp eq i32 %mods.2, 0
  br i1 %tobool2910, label %if.end2952, label %if.then2911

if.then2911:                                      ; preds = %if.end2909
  %707 = load i32* %isarr, align 4, !tbaa !2
  %tobool2912 = icmp eq i32 %707, 0
  %tobool2916 = icmp ne i32 %copied.14, 0
  br i1 %tobool2912, label %if.else2936, label %if.then2913

if.then2913:                                      ; preds = %if.then2911
  %.pre4845 = load i8*** %aval, align 4, !tbaa !3
  br i1 %tobool2916, label %if.end2919, label %if.then2917

if.then2917:                                      ; preds = %if.then2913
  %call2918 = call i8** @arrdup(i8** %.pre4845) nounwind
  store i8** %call2918, i8*** %aval, align 4, !tbaa !3
  br label %if.end2919

if.end2919:                                       ; preds = %if.then2913, %if.then2917
  %708 = phi i8** [ %call2918, %if.then2917 ], [ %.pre4845, %if.then2913 ]
  %copied.15 = phi i32 [ 1, %if.then2917 ], [ %copied.14, %if.then2913 ]
  %709 = load i8** %708, align 4, !tbaa !3
  %tobool29214332 = icmp eq i8* %709, null
  br i1 %tobool29214332, label %if.end2952, label %for.body2922.lr.ph

for.body2922.lr.ph:                               ; preds = %if.end2919
  %and2923 = and i32 %mods.2, 1
  %tobool2924 = icmp eq i32 %and2923, 0
  %and2928 = and i32 %mods.2, 2
  %tobool2929 = icmp eq i32 %and2928, 0
  br label %for.body2922

for.body2922:                                     ; preds = %for.body2922.lr.ph, %for.inc2933
  %710 = phi i8* [ %709, %for.body2922.lr.ph ], [ %712, %for.inc2933 ]
  %ap2915.04333 = phi i8** [ %708, %for.body2922.lr.ph ], [ %incdec.ptr2934, %for.inc2933 ]
  br i1 %tobool2924, label %if.end2927, label %if.then2925

if.then2925:                                      ; preds = %for.body2922
  %call2926 = call i8* @substnamedir(i8* %710) nounwind
  store i8* %call2926, i8** %ap2915.04333, align 4, !tbaa !3
  br label %if.end2927

if.end2927:                                       ; preds = %for.body2922, %if.then2925
  %711 = phi i8* [ %710, %for.body2922 ], [ %call2926, %if.then2925 ]
  br i1 %tobool2929, label %for.inc2933, label %if.then2930

if.then2930:                                      ; preds = %if.end2927
  %call2931 = call i8* @nicedupstring(i8* %711) nounwind
  store i8* %call2931, i8** %ap2915.04333, align 4, !tbaa !3
  br label %for.inc2933

for.inc2933:                                      ; preds = %if.end2927, %if.then2930
  %incdec.ptr2934 = getelementptr inbounds i8** %ap2915.04333, i32 1
  %712 = load i8** %incdec.ptr2934, align 4, !tbaa !3
  %tobool2921 = icmp eq i8* %712, null
  br i1 %tobool2921, label %if.end2952, label %for.body2922

if.else2936:                                      ; preds = %if.then2911
  br i1 %tobool2916, label %if.end2940, label %if.then2938

if.then2938:                                      ; preds = %if.else2936
  %713 = load i8** %val, align 4, !tbaa !3
  %call2939 = call i8* @dupstring(i8* %713) nounwind
  store i8* %call2939, i8** %val, align 4, !tbaa !3
  br label %if.end2940

if.end2940:                                       ; preds = %if.then2938, %if.else2936
  %copied.16 = phi i32 [ %copied.14, %if.else2936 ], [ 1, %if.then2938 ]
  %and2941 = and i32 %mods.2, 1
  %tobool2942 = icmp eq i32 %and2941, 0
  br i1 %tobool2942, label %if.end2945, label %if.then2943

if.then2943:                                      ; preds = %if.end2940
  %714 = load i8** %val, align 4, !tbaa !3
  %call2944 = call i8* @substnamedir(i8* %714) nounwind
  store i8* %call2944, i8** %val, align 4, !tbaa !3
  br label %if.end2945

if.end2945:                                       ; preds = %if.end2940, %if.then2943
  %and2946 = and i32 %mods.2, 2
  %tobool2947 = icmp eq i32 %and2946, 0
  br i1 %tobool2947, label %if.end2952, label %if.then2948

if.then2948:                                      ; preds = %if.end2945
  %715 = load i8** %val, align 4, !tbaa !3
  %call2949 = call i8* @nicedupstring(i8* %715) nounwind
  store i8* %call2949, i8** %val, align 4, !tbaa !3
  br label %if.end2952

if.end2952:                                       ; preds = %if.end2919, %for.inc2933, %if.end2945, %if.end2909, %if.then2948
  %copied.17 = phi i32 [ %copied.16, %if.then2948 ], [ %copied.16, %if.end2945 ], [ %copied.14, %if.end2909 ], [ %copied.15, %for.inc2933 ], [ %copied.15, %if.end2919 ]
  %tobool2953 = icmp eq i32 %shsplit.3, 0
  br i1 %tobool2953, label %if.end2994, label %if.then2954

if.then2954:                                      ; preds = %if.end2952
  %716 = load i32* %isarr, align 4, !tbaa !2
  %tobool2957 = icmp eq i32 %716, 0
  br i1 %tobool2957, label %if.else2968, label %if.then2958

if.then2958:                                      ; preds = %if.then2954
  %717 = load i8*** %aval, align 4, !tbaa !3
  %718 = load i8** %717, align 4, !tbaa !3
  %tobool29624328 = icmp eq i8* %718, null
  br i1 %tobool29624328, label %for.end2967, label %for.body2963

for.body2963:                                     ; preds = %if.then2958, %for.body2963
  %719 = phi i8* [ %720, %for.body2963 ], [ %718, %if.then2958 ]
  %ap2960.04330 = phi i8** [ %incdec.ptr2966, %for.body2963 ], [ %717, %if.then2958 ]
  %list2956.04329 = phi %union.linkroot* [ %call2964, %for.body2963 ], [ null, %if.then2958 ]
  %call2964 = call %union.linkroot* @bufferwords(%union.linkroot* %list2956.04329, i8* %719, i32* null, i32 %shsplit.3) nounwind
  %incdec.ptr2966 = getelementptr inbounds i8** %ap2960.04330, i32 1
  %720 = load i8** %incdec.ptr2966, align 4, !tbaa !3
  %tobool2962 = icmp eq i8* %720, null
  br i1 %tobool2962, label %for.end2967, label %for.body2963

for.end2967:                                      ; preds = %for.body2963, %if.then2958
  %list2956.0.lcssa = phi %union.linkroot* [ null, %if.then2958 ], [ %call2964, %for.body2963 ]
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end2970

if.else2968:                                      ; preds = %if.then2954
  %721 = load i8** %val, align 4, !tbaa !3
  %call2969 = call %union.linkroot* @bufferwords(%union.linkroot* null, i8* %721, i32* null, i32 %shsplit.3) nounwind
  br label %if.end2970

if.end2970:                                       ; preds = %if.else2968, %for.end2967
  %list2956.1 = phi %union.linkroot* [ %list2956.0.lcssa, %for.end2967 ], [ %call2969, %if.else2968 ]
  %tobool2971 = icmp eq %union.linkroot* %list2956.1, null
  br i1 %tobool2971, label %if.then2975, label %lor.lhs.false2972

lor.lhs.false2972:                                ; preds = %if.end2970
  %first = getelementptr inbounds %union.linkroot* %list2956.1, i32 0, i32 0, i32 0
  %722 = load %struct.linknode** %first, align 4, !tbaa !3
  %tobool2974 = icmp eq %struct.linknode* %722, null
  br i1 %tobool2974, label %if.then2975, label %if.else2977

if.then2975:                                      ; preds = %lor.lhs.false2972, %if.end2970
  %call2976 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  store i8* %call2976, i8** %val, align 4, !tbaa !3
  br label %if.end2994

if.else2977:                                      ; preds = %lor.lhs.false2972
  %next = getelementptr inbounds %struct.linknode* %722, i32 0, i32 0
  %723 = load %struct.linknode** %next, align 4, !tbaa !3
  %tobool2980 = icmp eq %struct.linknode* %723, null
  br i1 %tobool2980, label %if.then2981, label %if.else2985

if.then2981:                                      ; preds = %if.else2977
  %dat2984 = getelementptr inbounds %struct.linknode* %722, i32 0, i32 2
  %724 = load i8** %dat2984, align 4, !tbaa !3
  store i8* %724, i8** %val, align 4, !tbaa !3
  br label %if.end2994

if.else2985:                                      ; preds = %if.else2977
  %call2986 = call i8** @hlinklist2array(%union.linkroot* %list2956.1, i32 0) nounwind
  store i8** %call2986, i8*** %aval, align 4, !tbaa !3
  %tobool2987 = icmp ne i32 %nojoin.3, 0
  %cond2988 = select i1 %tobool2987, i32 1, i32 2
  store i32 %cond2988, i32* %isarr, align 4, !tbaa !2
  %725 = load i32* %flags2509, align 4, !tbaa !2
  %or2991 = or i32 %725, 1
  store i32 %or2991, i32* %flags2509, align 4, !tbaa !2
  br label %if.end2994

if.end2994:                                       ; preds = %if.end2952, %if.then2975, %if.else2985, %if.then2981
  %copied.18 = phi i32 [ 1, %if.then2981 ], [ 1, %if.else2985 ], [ 1, %if.then2975 ], [ %copied.17, %if.end2952 ]
  %726 = load i32* %isarr, align 4, !tbaa !2
  %tobool2995 = icmp eq i32 %726, 0
  br i1 %tobool2995, label %if.else3405, label %if.then2996

if.then2996:                                      ; preds = %if.end2994
  %tobool3002 = icmp eq i32 %unique.2, 0
  br i1 %tobool3002, label %if.end3013, label %if.then3003

if.then3003:                                      ; preds = %if.then2996
  %tobool3004 = icmp eq i32 %copied.18, 0
  br i1 %tobool3004, label %if.then3005, label %if.end3007

if.then3005:                                      ; preds = %if.then3003
  %727 = load i8*** %aval, align 4, !tbaa !3
  %call3006 = call i8** @arrdup(i8** %727) nounwind
  store i8** %call3006, i8*** %aval, align 4, !tbaa !3
  br label %if.end3007

if.end3007:                                       ; preds = %if.then3003, %if.then3005
  %728 = load i8*** %aval, align 4, !tbaa !3
  %call3008 = call i32 @arrlen(i8** %728) nounwind
  %cmp3009 = icmp sgt i32 %call3008, 1
  br i1 %cmp3009, label %if.then3011, label %if.end3013

if.then3011:                                      ; preds = %if.end3007
  %729 = load i8*** %aval, align 4, !tbaa !3
  call void @zhuniqarray(i8** %729) nounwind
  br label %if.end3013

if.end3013:                                       ; preds = %if.then2996, %if.end3007, %if.then3011
  %730 = load i8*** %aval, align 4, !tbaa !3
  %731 = load i8** %730, align 4, !tbaa !3
  %tobool3015 = icmp eq i8* %731, null
  br i1 %tobool3015, label %land.lhs.true3019, label %lor.lhs.false3016

lor.lhs.false3016:                                ; preds = %if.end3013
  %arrayidx3017 = getelementptr inbounds i8** %730, i32 1
  %732 = load i8** %arrayidx3017, align 4, !tbaa !3
  %tobool3018 = icmp eq i8* %732, null
  %or.cond4235 = and i1 %tobool3018, %tobool2519
  br i1 %or.cond4235, label %if.then3021, label %if.end3089

land.lhs.true3019:                                ; preds = %if.end3013
  br i1 %tobool2519, label %if.then3021, label %if.end3089

if.then3021:                                      ; preds = %lor.lhs.false3016, %land.lhs.true3019
  %733 = load i8** %dat, align 4, !tbaa !3
  %cmp3024 = icmp ugt i8* %0, %733
  br i1 %cmp3024, label %cont3028, label %if.end3046

cont3028:                                         ; preds = %if.then3021
  %arrayidx3029 = getelementptr inbounds i8* %0, i32 -1
  %734 = load i8* %arrayidx3029, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3704, i32 62, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 154, i8 1) nounwind
  %cmp3033 = icmp eq i8 %734, -102
  br i1 %cmp3033, label %land.lhs.true3035, label %if.end3046

land.lhs.true3035:                                ; preds = %cont3028
  %735 = load i8* %fstr.2, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3704, i32 91, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 154, i8 1) nounwind
  %cmp3039 = icmp eq i8 %735, -102
  br i1 %cmp3039, label %cont3043, label %if.end3046

cont3043:                                         ; preds = %land.lhs.true3035
  store i8 0, i8* %arrayidx3029, align 1, !tbaa !0
  %incdec.ptr3045 = getelementptr inbounds i8* %fstr.2, i32 1
  br label %if.end3046

if.end3046:                                       ; preds = %land.lhs.true3035, %cont3028, %cont3043, %if.then3021
  %fstr.3 = phi i8* [ %incdec.ptr3045, %cont3043 ], [ %fstr.2, %if.then3021 ], [ %fstr.2, %cont3028 ], [ %fstr.2, %land.lhs.true3035 ]
  %aptr.0 = phi i8* [ %arrayidx3029, %cont3043 ], [ %0, %if.then3021 ], [ %0, %cont3028 ], [ %0, %land.lhs.true3035 ]
  %736 = load i8*** %aval, align 4, !tbaa !3
  %737 = load i8** %736, align 4, !tbaa !3
  %tobool3048 = icmp eq i8* %737, null
  br i1 %tobool3048, label %cont3059, label %cond.end3055

cond.end3055:                                     ; preds = %if.end3046
  %call3051 = call i32 @strlen(i8* %737) nounwind readonly
  %738 = icmp sgt i32 %call3051, -1
  br i1 %738, label %cont3059, label %ioc_bb3058

ioc_bb3058:                                       ; preds = %cond.end3055
  %739 = zext i32 %call3051 to i64
  call void @__ioc_report_conversion(i32 3706, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %739, i8 0) nounwind
  br label %cont3059

cont3059:                                         ; preds = %if.end3046, %ioc_bb3058, %cond.end3055
  %cond30564298 = phi i32 [ %call3051, %ioc_bb3058 ], [ %call3051, %cond.end3055 ], [ 0, %if.end3046 ]
  %sub.ptr.lhs.cast3060 = ptrtoint i8* %aptr.0 to i32
  %sub.ptr.rhs.cast3061 = ptrtoint i8* %1 to i32
  %sub.ptr.sub3062 = sub i32 %sub.ptr.lhs.cast3060, %sub.ptr.rhs.cast3061
  %740 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub3062, i32 %cond30564298)
  %741 = extractvalue { i32, i1 } %740, 0
  %742 = extractvalue { i32, i1 } %740, 1
  br i1 %742, label %ioc_bb3063, label %cont3064

ioc_bb3063:                                       ; preds = %cont3059
  %743 = sext i32 %cond30564298 to i64
  %744 = sext i32 %sub.ptr.sub3062 to i64
  call void @__ioc_report_add_overflow(i32 3707, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %744, i64 %743, i8 13) nounwind
  br label %cont3064

cont3064:                                         ; preds = %cont3059, %ioc_bb3063
  %745 = icmp sgt i32 %741, -1
  br i1 %745, label %cont3067, label %ioc_bb3066

ioc_bb3066:                                       ; preds = %cont3064
  %746 = sext i32 %741 to i64
  call void @__ioc_report_conversion(i32 3707, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %746, i8 1) nounwind
  br label %cont3067

cont3067:                                         ; preds = %ioc_bb3066, %cont3064
  %call3068 = call i32 @strlen(i8* %fstr.3) nounwind readonly
  %747 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %741, i32 %call3068)
  %748 = extractvalue { i32, i1 } %747, 0
  %749 = extractvalue { i32, i1 } %747, 1
  br i1 %749, label %ioc_bb3069, label %cont3072

ioc_bb3069:                                       ; preds = %cont3067
  %750 = zext i32 %call3068 to i64
  %751 = zext i32 %741 to i64
  call void @__ioc_report_add_overflow(i32 3707, i32 52, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %751, i64 %750, i8 5) nounwind
  br label %cont3072

cont3072:                                         ; preds = %ioc_bb3069, %cont3067
  %752 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %748, i32 1)
  %753 = extractvalue { i32, i1 } %752, 0
  %754 = extractvalue { i32, i1 } %752, 1
  br i1 %754, label %ioc_bb3073, label %cont3074

ioc_bb3073:                                       ; preds = %cont3072
  %755 = zext i32 %748 to i64
  call void @__ioc_report_add_overflow(i32 3707, i32 67, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %755, i64 1, i8 5) nounwind
  br label %cont3074

cont3074:                                         ; preds = %cont3072, %ioc_bb3073
  %call3075 = call i8* @hcalloc(i32 %753) nounwind
  store i8* %call3075, i8** %y, align 4, !tbaa !3
  %call3076 = call i8* @strcpy(i8* %call3075, i8* %1) nounwind
  %756 = load i8** %y, align 4, !tbaa !3
  %add.ptr3080 = getelementptr inbounds i8* %756, i32 %sub.ptr.sub3062
  store i8* %add.ptr3080, i8** %str, align 4, !tbaa !3
  %tobool3081 = icmp eq i32 %cond30564298, 0
  br i1 %tobool3081, label %if.end3086, label %if.then3082

if.then3082:                                      ; preds = %cont3074
  %757 = load i8*** %aval, align 4, !tbaa !3
  %758 = load i8** %757, align 4, !tbaa !3
  %call3084 = call i8* @strcpy(i8* %add.ptr3080, i8* %758) nounwind
  %759 = load i8** %str, align 4, !tbaa !3
  %add.ptr3085 = getelementptr inbounds i8* %759, i32 %cond30564298
  store i8* %add.ptr3085, i8** %str, align 4, !tbaa !3
  br label %if.end3086

if.end3086:                                       ; preds = %cont3074, %if.then3082
  %760 = phi i8* [ %add.ptr3080, %cont3074 ], [ %add.ptr3085, %if.then3082 ]
  %call3087 = call i8* @strcpy(i8* %760, i8* %fstr.3) nounwind
  %761 = load i8** %y, align 4, !tbaa !3
  store i8* %761, i8** %dat, align 4, !tbaa !3
  br label %return

if.end3089:                                       ; preds = %lor.lhs.false3016, %land.lhs.true3019
  %cmp3090 = icmp eq i32 %sortit.2, 0
  br i1 %cmp3090, label %if.end3120, label %if.then3092

if.then3092:                                      ; preds = %if.end3089
  %tobool3093 = icmp eq i32 %copied.18, 0
  br i1 %tobool3093, label %if.then3094, label %if.end3096

if.then3094:                                      ; preds = %if.then3092
  %call3095 = call i8** @arrdup(i8** %730) nounwind
  store i8** %call3095, i8*** %aval, align 4, !tbaa !3
  br label %if.end3096

if.end3096:                                       ; preds = %if.then3092, %if.then3094
  %762 = phi i8** [ %730, %if.then3092 ], [ %call3095, %if.then3094 ]
  %tobool3097 = icmp eq i32 %indord.2, 0
  br i1 %tobool3097, label %if.else3118, label %if.then3098

if.then3098:                                      ; preds = %if.end3096
  %and3099 = and i32 %sortit.2, 4
  %tobool3100 = icmp eq i32 %and3099, 0
  br i1 %tobool3100, label %if.end3120, label %if.then3101

if.then3101:                                      ; preds = %if.then3098
  %call3105 = call i32 @arrlen(i8** %762) nounwind
  %add.ptr3106.sum = add i32 %call3105, -1
  %add.ptr3107 = getelementptr inbounds i8** %762, i32 %add.ptr3106.sum
  %763 = load i8*** %aval, align 4, !tbaa !3
  %cmp31114325 = icmp ult i8** %763, %add.ptr3107
  br i1 %cmp31114325, label %while.body3113, label %if.end3120

while.body3113:                                   ; preds = %if.then3101, %while.body3113
  %start3109.04327 = phi i8** [ %incdec.ptr3115, %while.body3113 ], [ %763, %if.then3101 ]
  %end3104.04326 = phi i8** [ %incdec.ptr3114, %while.body3113 ], [ %add.ptr3107, %if.then3101 ]
  %764 = load i8** %end3104.04326, align 4, !tbaa !3
  %765 = load i8** %start3109.04327, align 4, !tbaa !3
  %incdec.ptr3114 = getelementptr inbounds i8** %end3104.04326, i32 -1
  store i8* %765, i8** %end3104.04326, align 4, !tbaa !3
  %incdec.ptr3115 = getelementptr inbounds i8** %start3109.04327, i32 1
  store i8* %764, i8** %start3109.04327, align 4, !tbaa !3
  %cmp3111 = icmp ult i8** %incdec.ptr3115, %incdec.ptr3114
  br i1 %cmp3111, label %while.body3113, label %if.end3120

if.else3118:                                      ; preds = %if.end3096
  call void @strmetasort(i8** %762, i32 %sortit.2, i32* null) nounwind
  br label %if.end3120

if.end3120:                                       ; preds = %if.then3101, %while.body3113, %if.then3098, %if.end3089, %if.else3118
  br i1 %tobool2519, label %if.else3254, label %ioc_bb3126

ioc_bb3126:                                       ; preds = %if.end3120
  call void @__ioc_report_conversion(i32 3751, i32 28, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 160, i8 1) nounwind
  %incdec.ptr3128 = getelementptr inbounds i8* %fstr.2, i32 -1
  store i8 -96, i8* %incdec.ptr3128, align 1, !tbaa !0
  %first3130 = getelementptr inbounds %union.linkroot* %tl, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first3130, align 4, !tbaa !3
  %last = getelementptr inbounds %union.linkroot* %tl, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4, !tbaa !3
  %flags3133 = getelementptr inbounds %union.linkroot* %tl, i32 0, i32 0, i32 2
  store i32 0, i32* %flags3133, align 4, !tbaa !2
  %next3134 = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next3134, align 4, !tbaa !3
  %node3135 = bitcast %union.linkroot* %tl to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node3135, %struct.linknode** %prev, align 4, !tbaa !3
  %dat3136 = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 2
  store i8* %incdec.ptr3128, i8** %dat3136, align 4, !tbaa !3
  %tobool3137 = icmp ne i32 %eval.2, 0
  br i1 %tobool3137, label %if.end3144, label %land.lhs.true3138

land.lhs.true3138:                                ; preds = %ioc_bb3126
  %call3141 = call fastcc %struct.linknode* @stringsubst(%union.linkroot* %tl, %struct.linknode* %__n0, i32 %and2, i32 0)
  %tobool3142 = icmp eq %struct.linknode* %call3141, null
  br i1 %tobool3142, label %return, label %land.lhs.true3138.if.end3144_crit_edge

land.lhs.true3138.if.end3144_crit_edge:           ; preds = %land.lhs.true3138
  %.pre4841 = load %struct.linknode** %first3130, align 4, !tbaa !3
  br label %if.end3144

if.end3144:                                       ; preds = %land.lhs.true3138.if.end3144_crit_edge, %ioc_bb3126
  %766 = phi %struct.linknode* [ %.pre4841, %land.lhs.true3138.if.end3144_crit_edge ], [ %__n0, %ioc_bb3126 ]
  store i8* %0, i8** %str, align 4, !tbaa !3
  %767 = load i8*** %aval, align 4, !tbaa !3
  %incdec.ptr31484318 = getelementptr inbounds i8** %767, i32 1
  store i8** %incdec.ptr31484318, i8*** %aval, align 4, !tbaa !3
  %768 = load i8** %767, align 4, !tbaa !3
  store i8* %768, i8** %x, align 4, !tbaa !3
  %tobool31494319 = icmp eq i8* %768, null
  br i1 %tobool31494319, label %for.cond3220.preheader, label %while.body3150.lr.ph

while.body3150.lr.ph:                             ; preds = %if.end3144
  %769 = or i64 %prenum.3, %postnum.3
  %770 = icmp eq i64 %769, 0
  %lnot3172 = icmp eq i32 %nojoin.3, 0
  %lnot3172. = and i1 %tobool78542484255, %lnot3172
  %land.ext3175 = zext i1 %lnot3172. to i32
  %prenum.3.off4193 = add i64 %prenum.3, 2147483648
  %771 = icmp ult i64 %prenum.3.off4193, 4294967296
  %conv3159 = trunc i64 %prenum.3 to i32
  %postnum.3.off4194 = add i64 %postnum.3, 2147483648
  %772 = icmp ult i64 %postnum.3.off4194, 4294967296
  %conv3164 = trunc i64 %postnum.3 to i32
  br label %while.body3150

while.cond3147.loopexit:                          ; preds = %cont3183, %for.inc3216, %land.rhs3188
  %n.addr.1.lcssa = phi %struct.linknode* [ %n.addr.14309, %land.rhs3188 ], [ %n.addr.2, %for.inc3216 ], [ %n.addr.04321, %cont3183 ]
  %plan9.2.lcssa = phi i32 [ %plan9.24308, %land.rhs3188 ], [ 0, %for.inc3216 ], [ %plan9.14320, %cont3183 ]
  %tn.0.ph = phi %struct.linknode* [ %tn.14310, %land.rhs3188 ], [ null, %for.inc3216 ], [ null, %cont3183 ]
  %773 = load i8*** %aval, align 4, !tbaa !3
  %incdec.ptr3148 = getelementptr inbounds i8** %773, i32 1
  store i8** %incdec.ptr3148, i8*** %aval, align 4, !tbaa !3
  %774 = load i8** %773, align 4, !tbaa !3
  store i8* %774, i8** %x, align 4, !tbaa !3
  %tobool3149 = icmp eq i8* %774, null
  br i1 %tobool3149, label %for.cond3220.preheader, label %while.body3150

for.cond3220.preheader:                           ; preds = %while.cond3147.loopexit, %if.end3144
  %tn.0.lcssa = phi %struct.linknode* [ %766, %if.end3144 ], [ %tn.0.ph, %while.cond3147.loopexit ]
  %n.addr.0.lcssa = phi %struct.linknode* [ %n, %if.end3144 ], [ %n.addr.1.lcssa, %while.cond3147.loopexit ]
  %plan9.1.lcssa = phi i32 [ %plan9.0, %if.end3144 ], [ %plan9.2.lcssa, %while.cond3147.loopexit ]
  %tobool32214302 = icmp eq %struct.linknode* %tn.0.lcssa, null
  br i1 %tobool32214302, label %for.end3249, label %for.body3222

while.body3150:                                   ; preds = %while.body3150.lr.ph, %while.cond3147.loopexit
  %775 = phi i8* [ %768, %while.body3150.lr.ph ], [ %774, %while.cond3147.loopexit ]
  %n.addr.04321 = phi %struct.linknode* [ %n, %while.body3150.lr.ph ], [ %n.addr.1.lcssa, %while.cond3147.loopexit ]
  %plan9.14320 = phi i32 [ %plan9.0, %while.body3150.lr.ph ], [ %plan9.2.lcssa, %while.cond3147.loopexit ]
  br i1 %770, label %if.end3166, label %if.then3154

if.then3154:                                      ; preds = %while.body3150
  br i1 %771, label %cont3158, label %ioc_bb3157

ioc_bb3157:                                       ; preds = %if.then3154
  call void @__ioc_report_conversion(i32 3766, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %prenum.3, i8 1) nounwind
  br label %cont3158

cont3158:                                         ; preds = %ioc_bb3157, %if.then3154
  br i1 %772, label %cont3163, label %ioc_bb3162

ioc_bb3162:                                       ; preds = %cont3158
  call void @__ioc_report_conversion(i32 3766, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %postnum.3, i8 1) nounwind
  br label %cont3163

cont3163:                                         ; preds = %ioc_bb3162, %cont3158
  %call3165 = call fastcc i8* @dopadding(i8* %775, i32 %conv3159, i32 %conv3164, i8* %preone.3, i8* %postone.3, i8* %.premul.3, i8* %.postmul.3, i32 %multi_width.2)
  store i8* %call3165, i8** %x, align 4, !tbaa !3
  br label %if.end3166

if.end3166:                                       ; preds = %while.body3150, %cont3163
  %776 = phi i8* [ %775, %while.body3150 ], [ %call3165, %cont3163 ]
  br i1 %tobool3137, label %land.lhs.true3168, label %if.end3179

land.lhs.true3168:                                ; preds = %if.end3166
  %call3176 = call fastcc i32 @subst_parse_str(i8** %x, i32 %land.ext3175, i32 %quoteerr.2)
  %tobool3177 = icmp eq i32 %call3176, 0
  br i1 %tobool3177, label %land.lhs.true3168.if.end3179_crit_edge, label %return

land.lhs.true3168.if.end3179_crit_edge:           ; preds = %land.lhs.true3168
  %.pre4843 = load i8** %x, align 4, !tbaa !3
  br label %if.end3179

if.end3179:                                       ; preds = %land.lhs.true3168.if.end3179_crit_edge, %if.end3166
  %777 = phi i8* [ %.pre4843, %land.lhs.true3168.if.end3179_crit_edge ], [ %776, %if.end3166 ]
  %call3180 = call i32 @strlen(i8* %777) nounwind readonly
  %778 = icmp sgt i32 %call3180, -1
  br i1 %778, label %cont3183, label %ioc_bb3182

ioc_bb3182:                                       ; preds = %if.end3179
  %779 = zext i32 %call3180 to i64
  call void @__ioc_report_conversion(i32 3771, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %779, i8 0) nounwind
  br label %cont3183

cont3183:                                         ; preds = %if.end3179, %ioc_bb3182
  %780 = load %struct.linknode** %first3130, align 4, !tbaa !3
  %tobool31874307 = icmp eq %struct.linknode* %780, null
  br i1 %tobool31874307, label %while.cond3147.loopexit, label %land.rhs3188

land.rhs3188:                                     ; preds = %cont3183, %for.inc3216
  %tn.14310 = phi %struct.linknode* [ %790, %for.inc3216 ], [ %780, %cont3183 ]
  %n.addr.14309 = phi %struct.linknode* [ %n.addr.2, %for.inc3216 ], [ %n.addr.04321, %cont3183 ]
  %plan9.24308 = phi i32 [ 0, %for.inc3216 ], [ %plan9.14320, %cont3183 ]
  %dat3189 = getelementptr inbounds %struct.linknode* %tn.14310, i32 0, i32 2
  %781 = load i8** %dat3189, align 4, !tbaa !3
  store i8* %781, i8** %y, align 4, !tbaa !3
  %782 = load i8* %781, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3772, i32 89, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 160, i8 1) nounwind
  %cmp3193 = icmp eq i8 %782, -96
  br i1 %cmp3193, label %for.body3197, label %while.cond3147.loopexit

for.body3197:                                     ; preds = %land.rhs3188
  %783 = load i8** %x, align 4, !tbaa !3
  %784 = load i8** %y, align 4, !tbaa !3
  %add.ptr3198 = getelementptr inbounds i8* %784, i32 1
  %call3199 = call fastcc i8* @strcatsub(i8** %y, i8* %1, i8* %0, i8* %783, i32 %call3180, i8* %add.ptr3198, i32 %globsubst.2, i32 %copied.18)
  %785 = load i8** %y, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3201, label %if.end3208

land.lhs.true3201:                                ; preds = %for.body3197
  %786 = load i8* %785, align 1, !tbaa !0
  %tobool3202 = icmp eq i8 %786, 0
  br i1 %tobool3202, label %land.lhs.true3203, label %if.end3208

land.lhs.true3203:                                ; preds = %land.lhs.true3201
  %787 = load i32* %isarr, align 4, !tbaa !2
  %cmp3204 = icmp eq i32 %787, 2
  br i1 %cmp3204, label %if.end3208, label %if.then3206

if.then3206:                                      ; preds = %land.lhs.true3203
  %call3207 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3207, i8** %y, align 4, !tbaa !3
  br label %if.end3208

if.end3208:                                       ; preds = %for.body3197, %land.lhs.true3203, %land.lhs.true3201, %if.then3206
  %788 = phi i8* [ %785, %land.lhs.true3203 ], [ %785, %land.lhs.true3201 ], [ %call3207, %if.then3206 ], [ %785, %for.body3197 ]
  %tobool3209 = icmp eq i32 %plan9.24308, 0
  br i1 %tobool3209, label %if.else3212, label %if.then3210

if.then3210:                                      ; preds = %if.end3208
  %dat3211 = getelementptr inbounds %struct.linknode* %n.addr.14309, i32 0, i32 2
  store i8* %788, i8** %dat3211, align 4, !tbaa !3
  br label %for.inc3216

if.else3212:                                      ; preds = %if.end3208
  %call3213 = call %struct.linknode* @insertlinknode(%union.linkroot* %l, %struct.linknode* %n.addr.14309, i8* %788) nounwind
  %next3214 = getelementptr inbounds %struct.linknode* %n.addr.14309, i32 0, i32 0
  %789 = load %struct.linknode** %next3214, align 4, !tbaa !3
  br label %for.inc3216

for.inc3216:                                      ; preds = %if.then3210, %if.else3212
  %n.addr.2 = phi %struct.linknode* [ %n.addr.14309, %if.then3210 ], [ %789, %if.else3212 ]
  %next3217 = getelementptr inbounds %struct.linknode* %tn.14310, i32 0, i32 0
  %790 = load %struct.linknode** %next3217, align 4, !tbaa !3
  %tobool3187 = icmp eq %struct.linknode* %790, null
  br i1 %tobool3187, label %while.cond3147.loopexit, label %land.rhs3188

for.body3222:                                     ; preds = %for.cond3220.preheader, %for.inc3247
  %tn.24305 = phi %struct.linknode* [ %798, %for.inc3247 ], [ %tn.0.lcssa, %for.cond3220.preheader ]
  %n.addr.34304 = phi %struct.linknode* [ %n.addr.4, %for.inc3247 ], [ %n.addr.0.lcssa, %for.cond3220.preheader ]
  %plan9.44303 = phi i32 [ %plan9.5, %for.inc3247 ], [ %plan9.1.lcssa, %for.cond3220.preheader ]
  %dat3223 = getelementptr inbounds %struct.linknode* %tn.24305, i32 0, i32 2
  %791 = load i8** %dat3223, align 4, !tbaa !3
  store i8* %791, i8** %y, align 4, !tbaa !3
  %792 = load i8* %791, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3784, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 160, i8 1) nounwind
  %cmp3227 = icmp eq i8 %792, -96
  br i1 %cmp3227, label %for.inc3247, label %if.end3230

if.end3230:                                       ; preds = %for.body3222
  %793 = load i8** %y, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3232, label %if.end3239

land.lhs.true3232:                                ; preds = %if.end3230
  %794 = load i8* %793, align 1, !tbaa !0
  %tobool3233 = icmp eq i8 %794, 0
  br i1 %tobool3233, label %land.lhs.true3234, label %if.end3239

land.lhs.true3234:                                ; preds = %land.lhs.true3232
  %795 = load i32* %isarr, align 4, !tbaa !2
  %cmp3235 = icmp eq i32 %795, 2
  br i1 %cmp3235, label %if.end3239, label %if.then3237

if.then3237:                                      ; preds = %land.lhs.true3234
  %call3238 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3238, i8** %y, align 4, !tbaa !3
  br label %if.end3239

if.end3239:                                       ; preds = %if.end3230, %land.lhs.true3234, %land.lhs.true3232, %if.then3237
  %796 = phi i8* [ %793, %land.lhs.true3234 ], [ %793, %land.lhs.true3232 ], [ %call3238, %if.then3237 ], [ %793, %if.end3230 ]
  %tobool3240 = icmp eq i32 %plan9.44303, 0
  br i1 %tobool3240, label %if.else3243, label %if.then3241

if.then3241:                                      ; preds = %if.end3239
  %dat3242 = getelementptr inbounds %struct.linknode* %n.addr.34304, i32 0, i32 2
  store i8* %796, i8** %dat3242, align 4, !tbaa !3
  br label %for.inc3247

if.else3243:                                      ; preds = %if.end3239
  %call3244 = call %struct.linknode* @insertlinknode(%union.linkroot* %l, %struct.linknode* %n.addr.34304, i8* %796) nounwind
  %next3245 = getelementptr inbounds %struct.linknode* %n.addr.34304, i32 0, i32 0
  %797 = load %struct.linknode** %next3245, align 4, !tbaa !3
  br label %for.inc3247

for.inc3247:                                      ; preds = %if.then3241, %if.else3243, %for.body3222
  %plan9.5 = phi i32 [ %plan9.44303, %for.body3222 ], [ 0, %if.then3241 ], [ 0, %if.else3243 ]
  %n.addr.4 = phi %struct.linknode* [ %n.addr.34304, %for.body3222 ], [ %n.addr.34304, %if.then3241 ], [ %797, %if.else3243 ]
  %next3248 = getelementptr inbounds %struct.linknode* %tn.24305, i32 0, i32 0
  %798 = load %struct.linknode** %next3248, align 4, !tbaa !3
  %tobool3221 = icmp eq %struct.linknode* %798, null
  br i1 %tobool3221, label %for.end3249, label %for.body3222

for.end3249:                                      ; preds = %for.inc3247, %for.cond3220.preheader
  %n.addr.3.lcssa = phi %struct.linknode* [ %n.addr.0.lcssa, %for.cond3220.preheader ], [ %n.addr.4, %for.inc3247 ]
  %plan9.4.lcssa = phi i32 [ %plan9.1.lcssa, %for.cond3220.preheader ], [ %plan9.5, %for.inc3247 ]
  %tobool3250 = icmp eq i32 %plan9.4.lcssa, 0
  br i1 %tobool3250, label %if.end3401, label %if.then3251

if.then3251:                                      ; preds = %for.end3249
  %call3252 = call i8* @uremnode(%union.linkroot* %l, %struct.linknode* %n.addr.3.lcssa) nounwind
  br label %return

if.else3254:                                      ; preds = %if.end3120
  %799 = load i8*** %aval, align 4, !tbaa !3
  %800 = load i8** %799, align 4, !tbaa !3
  store i8* %800, i8** %x, align 4, !tbaa !3
  %801 = or i64 %prenum.3, %postnum.3
  %802 = icmp eq i64 %801, 0
  br i1 %802, label %if.end3271, label %if.then3259

if.then3259:                                      ; preds = %if.else3254
  %prenum.3.off4191 = add i64 %prenum.3, 2147483648
  %803 = icmp ult i64 %prenum.3.off4191, 4294967296
  br i1 %803, label %cont3263, label %ioc_bb3262

ioc_bb3262:                                       ; preds = %if.then3259
  call void @__ioc_report_conversion(i32 3809, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %prenum.3, i8 1) nounwind
  br label %cont3263

cont3263:                                         ; preds = %ioc_bb3262, %if.then3259
  %conv3264 = trunc i64 %prenum.3 to i32
  %postnum.3.off4192 = add i64 %postnum.3, 2147483648
  %804 = icmp ult i64 %postnum.3.off4192, 4294967296
  br i1 %804, label %cont3268, label %ioc_bb3267

ioc_bb3267:                                       ; preds = %cont3263
  call void @__ioc_report_conversion(i32 3809, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %postnum.3, i8 1) nounwind
  br label %cont3268

cont3268:                                         ; preds = %ioc_bb3267, %cont3263
  %conv3269 = trunc i64 %postnum.3 to i32
  %call3270 = call fastcc i8* @dopadding(i8* %800, i32 %conv3264, i32 %conv3269, i8* %preone.3, i8* %postone.3, i8* %.premul.3, i8* %.postmul.3, i32 %multi_width.2)
  store i8* %call3270, i8** %x, align 4, !tbaa !3
  br label %if.end3271

if.end3271:                                       ; preds = %if.else3254, %cont3268
  %805 = phi i8* [ %800, %if.else3254 ], [ %call3270, %cont3268 ]
  %tobool3272 = icmp ne i32 %eval.2, 0
  br i1 %tobool3272, label %land.lhs.true3273, label %if.end3284

land.lhs.true3273:                                ; preds = %if.end3271
  %lnot3277 = icmp eq i32 %nojoin.3, 0
  %lnot3277. = and i1 %tobool78542484255, %lnot3277
  %land.ext3280 = zext i1 %lnot3277. to i32
  %call3281 = call fastcc i32 @subst_parse_str(i8** %x, i32 %land.ext3280, i32 %quoteerr.2)
  %tobool3282 = icmp eq i32 %call3281, 0
  br i1 %tobool3282, label %land.lhs.true3273.if.end3284_crit_edge, label %return

land.lhs.true3273.if.end3284_crit_edge:           ; preds = %land.lhs.true3273
  %.pre4836 = load i8** %x, align 4, !tbaa !3
  br label %if.end3284

if.end3284:                                       ; preds = %land.lhs.true3273.if.end3284_crit_edge, %if.end3271
  %806 = phi i8* [ %.pre4836, %land.lhs.true3273.if.end3284_crit_edge ], [ %805, %if.end3271 ]
  %call3285 = call i32 @strlen(i8* %806) nounwind readonly
  %807 = icmp sgt i32 %call3285, -1
  br i1 %807, label %cont3288, label %ioc_bb3287

ioc_bb3287:                                       ; preds = %if.end3284
  %808 = zext i32 %call3285 to i64
  call void @__ioc_report_conversion(i32 3814, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %808, i8 0) nounwind
  %.pre4819 = load i8** %x, align 4, !tbaa !3
  br label %cont3288

cont3288:                                         ; preds = %ioc_bb3287, %if.end3284
  %809 = phi i8* [ %.pre4819, %ioc_bb3287 ], [ %806, %if.end3284 ]
  %call3289 = call fastcc i8* @strcatsub(i8** %y, i8* %1, i8* %0, i8* %809, i32 %call3285, i8* null, i32 %globsubst.2, i32 %copied.18)
  %810 = load i8** %y, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3291, label %if.end3298

land.lhs.true3291:                                ; preds = %cont3288
  %811 = load i8* %810, align 1, !tbaa !0
  %tobool3292 = icmp eq i8 %811, 0
  br i1 %tobool3292, label %land.lhs.true3293, label %if.end3298

land.lhs.true3293:                                ; preds = %land.lhs.true3291
  %812 = load i32* %isarr, align 4, !tbaa !2
  %cmp3294 = icmp eq i32 %812, 2
  br i1 %cmp3294, label %if.end3298, label %if.then3296

if.then3296:                                      ; preds = %land.lhs.true3293
  %call3297 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3297, i8** %y, align 4, !tbaa !3
  br label %if.end3298

if.end3298:                                       ; preds = %cont3288, %land.lhs.true3293, %land.lhs.true3291, %if.then3296
  %813 = phi i8* [ %810, %land.lhs.true3293 ], [ %810, %land.lhs.true3291 ], [ %call3297, %if.then3296 ], [ %810, %cont3288 ]
  store i8* %813, i8** %dat, align 4, !tbaa !3
  %lnot3330 = icmp eq i32 %nojoin.3, 0
  %lnot3330. = and i1 %tobool78542484255, %lnot3330
  %land.ext3333 = zext i1 %lnot3330. to i32
  %tobool3348 = icmp eq i32 %globsubst.2, 0
  %prenum.3.off4189 = add i64 %prenum.3, 2147483648
  %814 = icmp ult i64 %prenum.3.off4189, 4294967296
  %conv3317 = trunc i64 %prenum.3 to i32
  %postnum.3.off4190 = add i64 %postnum.3, 2147483648
  %815 = icmp ult i64 %postnum.3.off4190, 4294967296
  %conv3322 = trunc i64 %postnum.3 to i32
  br label %while.cond3300

while.cond3300:                                   ; preds = %if.end3351, %if.end3298
  %i.0 = phi i32 [ 1, %if.end3298 ], [ %817, %if.end3351 ]
  %n.addr.5 = phi %struct.linknode* [ %n, %if.end3298 ], [ %828, %if.end3351 ]
  %816 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 1)
  %817 = extractvalue { i32, i1 } %816, 0
  %818 = extractvalue { i32, i1 } %816, 1
  %819 = sext i32 %i.0 to i64
  br i1 %818, label %ioc_bb3301, label %cont3302

ioc_bb3301:                                       ; preds = %while.cond3300
  call void @__ioc_report_add_overflow(i32 3821, i32 20, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %819, i64 1, i8 13) nounwind
  br label %cont3302

cont3302:                                         ; preds = %while.cond3300, %ioc_bb3301
  %820 = load i8*** %aval, align 4, !tbaa !3
  %arrayidx3303 = getelementptr inbounds i8** %820, i32 %817
  %821 = load i8** %arrayidx3303, align 4, !tbaa !3
  %tobool3304 = icmp eq i8* %821, null
  br i1 %tobool3304, label %while.end3354, label %while.body3305

while.body3305:                                   ; preds = %cont3302
  br i1 %818, label %ioc_bb3306, label %cont3307

ioc_bb3306:                                       ; preds = %while.body3305
  call void @__ioc_report_add_overflow(i32 3822, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %819, i64 1, i8 13) nounwind
  %.pre4821 = load i8*** %aval, align 4, !tbaa !3
  br label %cont3307

cont3307:                                         ; preds = %while.body3305, %ioc_bb3306
  %822 = phi i8** [ %820, %while.body3305 ], [ %.pre4821, %ioc_bb3306 ]
  %arrayidx3308 = getelementptr inbounds i8** %822, i32 %i.0
  %823 = load i8** %arrayidx3308, align 4, !tbaa !3
  store i8* %823, i8** %x, align 4, !tbaa !3
  br i1 %802, label %if.end3324, label %if.then3312

if.then3312:                                      ; preds = %cont3307
  br i1 %814, label %cont3316, label %ioc_bb3315

ioc_bb3315:                                       ; preds = %if.then3312
  call void @__ioc_report_conversion(i32 3824, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %prenum.3, i8 1) nounwind
  br label %cont3316

cont3316:                                         ; preds = %ioc_bb3315, %if.then3312
  br i1 %815, label %cont3321, label %ioc_bb3320

ioc_bb3320:                                       ; preds = %cont3316
  call void @__ioc_report_conversion(i32 3824, i32 34, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %postnum.3, i8 1) nounwind
  br label %cont3321

cont3321:                                         ; preds = %ioc_bb3320, %cont3316
  %call3323 = call fastcc i8* @dopadding(i8* %823, i32 %conv3317, i32 %conv3322, i8* %preone.3, i8* %postone.3, i8* %.premul.3, i8* %.postmul.3, i32 %multi_width.2)
  store i8* %call3323, i8** %x, align 4, !tbaa !3
  br label %if.end3324

if.end3324:                                       ; preds = %cont3307, %cont3321
  br i1 %tobool3272, label %land.lhs.true3326, label %if.end3337

land.lhs.true3326:                                ; preds = %if.end3324
  %call3334 = call fastcc i32 @subst_parse_str(i8** %x, i32 %land.ext3333, i32 %quoteerr.2)
  %tobool3335 = icmp eq i32 %call3334, 0
  br i1 %tobool3335, label %if.end3337, label %return

if.end3337:                                       ; preds = %land.lhs.true3326, %if.end3324
  %824 = load i8** %x, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3339, label %if.else3346

land.lhs.true3339:                                ; preds = %if.end3337
  %825 = load i8* %824, align 1, !tbaa !0
  %tobool3340 = icmp eq i8 %825, 0
  br i1 %tobool3340, label %land.lhs.true3341, label %if.else3346

land.lhs.true3341:                                ; preds = %land.lhs.true3339
  %826 = load i32* %isarr, align 4, !tbaa !2
  %cmp3342 = icmp eq i32 %826, 2
  br i1 %cmp3342, label %if.else3346, label %if.then3344

if.then3344:                                      ; preds = %land.lhs.true3341
  %call3345 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3345, i8** %y, align 4, !tbaa !3
  br label %if.end3351

if.else3346:                                      ; preds = %if.end3337, %land.lhs.true3341, %land.lhs.true3339
  %call3347 = call i8* @dupstring(i8* %824) nounwind
  store i8* %call3347, i8** %y, align 4, !tbaa !3
  br i1 %tobool3348, label %if.end3351, label %if.then3349

if.then3349:                                      ; preds = %if.else3346
  call void @shtokenize(i8* %call3347) nounwind
  %.pre4822 = load i8** %y, align 4, !tbaa !3
  br label %if.end3351

if.end3351:                                       ; preds = %if.else3346, %if.then3349, %if.then3344
  %827 = phi i8* [ %call3347, %if.else3346 ], [ %.pre4822, %if.then3349 ], [ %call3345, %if.then3344 ]
  %call3352 = call %struct.linknode* @insertlinknode(%union.linkroot* %l, %struct.linknode* %n.addr.5, i8* %827) nounwind
  %next3353 = getelementptr inbounds %struct.linknode* %n.addr.5, i32 0, i32 0
  %828 = load %struct.linknode** %next3353, align 4, !tbaa !3
  br label %while.cond3300

while.end3354:                                    ; preds = %cont3302
  %arrayidx3355 = getelementptr inbounds i8** %820, i32 %i.0
  %829 = load i8** %arrayidx3355, align 4, !tbaa !3
  store i8* %829, i8** %x, align 4, !tbaa !3
  br i1 %802, label %if.end3371, label %if.then3359

if.then3359:                                      ; preds = %while.end3354
  br i1 %814, label %cont3363, label %ioc_bb3362

ioc_bb3362:                                       ; preds = %if.then3359
  call void @__ioc_report_conversion(i32 3840, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %prenum.3, i8 1) nounwind
  br label %cont3363

cont3363:                                         ; preds = %ioc_bb3362, %if.then3359
  br i1 %815, label %cont3368, label %ioc_bb3367

ioc_bb3367:                                       ; preds = %cont3363
  call void @__ioc_report_conversion(i32 3840, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %postnum.3, i8 1) nounwind
  br label %cont3368

cont3368:                                         ; preds = %ioc_bb3367, %cont3363
  %call3370 = call fastcc i8* @dopadding(i8* %829, i32 %conv3317, i32 %conv3322, i8* %preone.3, i8* %postone.3, i8* %.premul.3, i8* %.postmul.3, i32 %multi_width.2)
  store i8* %call3370, i8** %x, align 4, !tbaa !3
  br label %if.end3371

if.end3371:                                       ; preds = %while.end3354, %cont3368
  %830 = phi i8* [ %829, %while.end3354 ], [ %call3370, %cont3368 ]
  br i1 %tobool3272, label %land.lhs.true3373, label %if.end3384

land.lhs.true3373:                                ; preds = %if.end3371
  %call3381 = call fastcc i32 @subst_parse_str(i8** %x, i32 %land.ext3333, i32 %quoteerr.2)
  %tobool3382 = icmp eq i32 %call3381, 0
  br i1 %tobool3382, label %land.lhs.true3373.if.end3384_crit_edge, label %return

land.lhs.true3373.if.end3384_crit_edge:           ; preds = %land.lhs.true3373
  %.pre4838 = load i8** %x, align 4, !tbaa !3
  br label %if.end3384

if.end3384:                                       ; preds = %land.lhs.true3373.if.end3384_crit_edge, %if.end3371
  %831 = phi i8* [ %.pre4838, %land.lhs.true3373.if.end3384_crit_edge ], [ %830, %if.end3371 ]
  %call3385 = call i32 @strlen(i8* %831) nounwind readonly
  %832 = icmp sgt i32 %call3385, -1
  br i1 %832, label %cont3388, label %ioc_bb3387

ioc_bb3387:                                       ; preds = %if.end3384
  %833 = zext i32 %call3385 to i64
  call void @__ioc_report_conversion(i32 3845, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %833, i8 0) nounwind
  %.pre4820 = load i8** %x, align 4, !tbaa !3
  br label %cont3388

cont3388:                                         ; preds = %ioc_bb3387, %if.end3384
  %834 = phi i8* [ %.pre4820, %ioc_bb3387 ], [ %831, %if.end3384 ]
  %call3389 = call fastcc i8* @strcatsub(i8** %y, i8* %0, i8* %0, i8* %834, i32 %call3385, i8* %fstr.2, i32 %globsubst.2, i32 %copied.18)
  store i8* %call3389, i8** %str, align 4, !tbaa !3
  %835 = load i8** %y, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3391, label %if.end3398

land.lhs.true3391:                                ; preds = %cont3388
  %836 = load i8* %835, align 1, !tbaa !0
  %tobool3392 = icmp eq i8 %836, 0
  br i1 %tobool3392, label %land.lhs.true3393, label %if.end3398

land.lhs.true3393:                                ; preds = %land.lhs.true3391
  %837 = load i32* %isarr, align 4, !tbaa !2
  %cmp3394 = icmp eq i32 %837, 2
  br i1 %cmp3394, label %if.end3398, label %if.then3396

if.then3396:                                      ; preds = %land.lhs.true3393
  %call3397 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3397, i8** %y, align 4, !tbaa !3
  br label %if.end3398

if.end3398:                                       ; preds = %cont3388, %land.lhs.true3393, %land.lhs.true3391, %if.then3396
  %838 = phi i8* [ %835, %land.lhs.true3393 ], [ %835, %land.lhs.true3391 ], [ %call3397, %if.then3396 ], [ %835, %cont3388 ]
  %call3399 = call %struct.linknode* @insertlinknode(%union.linkroot* %l, %struct.linknode* %n.addr.5, i8* %838) nounwind
  %next3400 = getelementptr inbounds %struct.linknode* %n.addr.5, i32 0, i32 0
  %839 = load %struct.linknode** %next3400, align 4, !tbaa !3
  br label %if.end3401

if.end3401:                                       ; preds = %for.end3249, %if.end3398
  %n.addr.6 = phi %struct.linknode* [ %n.addr.3.lcssa, %for.end3249 ], [ %839, %if.end3398 ]
  %tobool3402 = icmp eq i32 %eval.2, 0
  %n.addr.6.n = select i1 %tobool3402, %struct.linknode* %n.addr.6, %struct.linknode* %n
  br label %if.end3453

if.else3405:                                      ; preds = %if.end2994
  %840 = load i8** %val, align 4, !tbaa !3
  store i8* %840, i8** %x3409, align 4, !tbaa !3
  %841 = or i64 %prenum.3, %postnum.3
  %842 = icmp eq i64 %841, 0
  br i1 %842, label %if.end3427, label %if.then3415

if.then3415:                                      ; preds = %if.else3405
  %prenum.3.off = add i64 %prenum.3, 2147483648
  %843 = icmp ult i64 %prenum.3.off, 4294967296
  br i1 %843, label %cont3419, label %ioc_bb3418

ioc_bb3418:                                       ; preds = %if.then3415
  call void @__ioc_report_conversion(i32 3865, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %prenum.3, i8 1) nounwind
  br label %cont3419

cont3419:                                         ; preds = %ioc_bb3418, %if.then3415
  %conv3420 = trunc i64 %prenum.3 to i32
  %postnum.3.off = add i64 %postnum.3, 2147483648
  %844 = icmp ult i64 %postnum.3.off, 4294967296
  br i1 %844, label %cont3424, label %ioc_bb3423

ioc_bb3423:                                       ; preds = %cont3419
  call void @__ioc_report_conversion(i32 3865, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %postnum.3, i8 1) nounwind
  br label %cont3424

cont3424:                                         ; preds = %ioc_bb3423, %cont3419
  %conv3425 = trunc i64 %postnum.3 to i32
  %call3426 = call fastcc i8* @dopadding(i8* %840, i32 %conv3420, i32 %conv3425, i8* %preone.3, i8* %postone.3, i8* %.premul.3, i8* %.postmul.3, i32 %multi_width.2)
  store i8* %call3426, i8** %x3409, align 4, !tbaa !3
  br label %if.end3427

if.end3427:                                       ; preds = %if.else3405, %cont3424
  %845 = phi i8* [ %840, %if.else3405 ], [ %call3426, %cont3424 ]
  %tobool3428 = icmp eq i32 %eval.2, 0
  br i1 %tobool3428, label %if.end3440, label %land.lhs.true3429

land.lhs.true3429:                                ; preds = %if.end3427
  %lnot3433 = icmp eq i32 %nojoin.3, 0
  %lnot3433. = and i1 %tobool78542484255, %lnot3433
  %land.ext3436 = zext i1 %lnot3433. to i32
  %call3437 = call fastcc i32 @subst_parse_str(i8** %x3409, i32 %land.ext3436, i32 %quoteerr.2)
  %tobool3438 = icmp eq i32 %call3437, 0
  br i1 %tobool3438, label %land.lhs.true3429.if.end3440_crit_edge, label %return

land.lhs.true3429.if.end3440_crit_edge:           ; preds = %land.lhs.true3429
  %.pre4834 = load i8** %x3409, align 4, !tbaa !3
  br label %if.end3440

if.end3440:                                       ; preds = %land.lhs.true3429.if.end3440_crit_edge, %if.end3427
  %846 = phi i8* [ %.pre4834, %land.lhs.true3429.if.end3440_crit_edge ], [ %845, %if.end3427 ]
  %call3441 = call i32 @strlen(i8* %846) nounwind readonly
  %847 = icmp sgt i32 %call3441, -1
  br i1 %847, label %cont3444, label %ioc_bb3443

ioc_bb3443:                                       ; preds = %if.end3440
  %848 = zext i32 %call3441 to i64
  call void @__ioc_report_conversion(i32 3870, i32 12, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %848, i8 0) nounwind
  br label %cont3444

cont3444:                                         ; preds = %ioc_bb3443, %if.end3440
  %call3445 = call fastcc i8* @strcatsub(i8** %y3411, i8* %1, i8* %0, i8* %846, i32 %call3441, i8* %fstr.2, i32 %globsubst.2, i32 %copied.18)
  store i8* %call3445, i8** %str, align 4, !tbaa !3
  %849 = load i8** %y3411, align 4, !tbaa !3
  br i1 %tobool78542484255, label %land.lhs.true3447, label %if.end3451

land.lhs.true3447:                                ; preds = %cont3444
  %850 = load i8* %849, align 1, !tbaa !0
  %tobool3448 = icmp eq i8 %850, 0
  br i1 %tobool3448, label %if.then3449, label %if.end3451

if.then3449:                                      ; preds = %land.lhs.true3447
  %call3450 = call i8* @dupstring(i8* getelementptr inbounds ([2 x i8]* @nulstring, i32 0, i32 0)) nounwind
  store i8* %call3450, i8** %y3411, align 4, !tbaa !3
  br label %if.end3451

if.end3451:                                       ; preds = %cont3444, %land.lhs.true3447, %if.then3449
  %851 = phi i8* [ %849, %land.lhs.true3447 ], [ %call3450, %if.then3449 ], [ %849, %cont3444 ]
  store i8* %851, i8** %dat, align 4, !tbaa !3
  br label %if.end3453

if.end3453:                                       ; preds = %if.end3401, %if.end3451
  %n.addr.7 = phi %struct.linknode* [ %n, %if.end3451 ], [ %n.addr.6.n, %if.end3401 ]
  %tobool3454 = icmp eq i32 %eval.2, 0
  br i1 %tobool3454, label %return, label %if.then3455

if.then3455:                                      ; preds = %if.end3453
  %dat3456 = getelementptr inbounds %struct.linknode* %n.addr.7, i32 0, i32 2
  %852 = load i8** %dat3456, align 4, !tbaa !3
  store i8* %852, i8** %str, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %land.lhs.true3168, %land.lhs.true3326, %if.then3455, %if.end3453, %land.lhs.true3429, %land.lhs.true3373, %land.lhs.true3273, %land.lhs.true3138, %if.end2430, %if.end2388, %if.then2376, %if.else2379, %if.then2106, %if.then2080, %if.then1868, %if.then1851, %cont1855, %if.then3251, %if.end3086, %if.then2904, %if.then2819, %cont2291, %cont2170, %if.then2103, %if.then2091, %cont2068, %cont2025, %if.then1972, %cont1918, %cont1893, %noclosebrace, %if.then1361, %if.else758, %cont756, %flagerr, %cont135
  %retval.0 = phi %struct.linknode* [ %n, %cont135 ], [ null, %if.else758 ], [ %n, %cont756 ], [ null, %if.then1361 ], [ null, %noclosebrace ], [ %n.addr.3.lcssa, %if.then3251 ], [ %n, %if.end3086 ], [ null, %if.then2819 ], [ null, %if.then2904 ], [ null, %cont1893 ], [ null, %cont1918 ], [ null, %if.then1972 ], [ null, %cont2025 ], [ null, %if.then2091 ], [ null, %if.then2103 ], [ null, %cont2170 ], [ null, %cont2291 ], [ null, %cont2068 ], [ null, %flagerr ], [ null, %cont1855 ], [ null, %if.then1851 ], [ null, %if.then1868 ], [ null, %if.then2080 ], [ null, %if.then2106 ], [ null, %if.else2379 ], [ null, %if.then2376 ], [ null, %if.end2388 ], [ null, %if.end2430 ], [ null, %land.lhs.true3138 ], [ null, %land.lhs.true3273 ], [ null, %land.lhs.true3373 ], [ null, %land.lhs.true3429 ], [ %n.addr.7, %if.end3453 ], [ %n.addr.7, %if.then3455 ], [ null, %land.lhs.true3326 ], [ null, %land.lhs.true3168 ]
  ret %struct.linknode* %retval.0
}

declare i8* @strncpy(i8*, i8* nocapture, i32) nounwind

declare %union.linkroot* @getoutput(i8*, i32)

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare void @shtokenize(i8*)

declare void @insertlinklist(%union.linkroot*, %struct.linknode*, %union.linkroot*)

define internal fastcc i8* @untok_and_escape(i8* %s, i32 %escapes, i32 %tok_arg) nounwind {
entry:
  %klen = alloca i32, align 4
  %call = call i8* @dupstring(i8* %s) nounwind
  call void @untokenize(i8* %call) nounwind
  %tobool = icmp eq i32 %escapes, 0
  br i1 %tobool, label %if.end, label %cont6

cont6:                                            ; preds = %entry
  %call7 = call i8* @getkeystring(i8* %call, i32* %klen, i32 3, i32* null) nounwind
  %0 = load i32* %klen, align 4, !tbaa !2
  %call8 = call i8* @metafy(i8* %call7, i32 %0, i32 7) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %cont6
  %dst.0 = phi i8* [ %call8, %cont6 ], [ %call, %entry ]
  %tobool9 = icmp eq i32 %tok_arg, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @shtokenize(i8* %dst.0) nounwind
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then10
  ret i8* %dst.0
}

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define internal fastcc i32 @multsub(i8** nocapture %s, i32 %pf_flags, i8*** %a, i32* %isarr) nounwind {
entry:
  %foo = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %c35 = alloca i32, align 4
  %0 = load i8** %s, align 4, !tbaa !3
  %and = and i32 %pf_flags, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !0
  %tobool123 = icmp eq i8 %1, 0
  br i1 %tobool123, label %do.body, label %ioc_bb

ioc_bb:                                           ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %14, %for.inc ], [ %1, %for.cond.preheader ]
  %x.024 = phi i8* [ %add.ptr, %for.inc ], [ %0, %for.cond.preheader ]
  call void @__ioc_report_conversion(i32 457, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %2, -125
  %conv2 = zext i1 %cmp to i32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %ioc_bb
  %arrayidx = getelementptr inbounds i8* %x.024, i32 1
  %3 = load i8* %arrayidx, align 1, !tbaa !0
  %conv3 = sext i8 %3 to i32
  %xor = xor i32 %conv3, 32
  br label %cond.end

cond.false:                                       ; preds = %ioc_bb
  %4 = load i8* %x.024, align 1, !tbaa !0
  %conv4 = sext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv4, %cond.false ]
  %cond.off = add i32 %cond, 128
  %5 = icmp ult i32 %cond.off, 256
  br i1 %5, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cond.end
  %6 = sext i32 %cond to i64
  call void @__ioc_report_conversion(i32 457, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cond.end
  %conv7 = trunc i32 %cond to i8
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv2, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont6
  %10 = zext i1 %cmp to i64
  call void @__ioc_report_add_overflow(i32 458, i32 8, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %cont6, %ioc_bb8
  %11 = icmp sgt i8 %conv7, -1
  br i1 %11, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %cont9
  %12 = sext i8 %conv7 to i64
  call void @__ioc_report_conversion(i32 459, i32 53, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %cont9
  %idxprom = and i32 %cond, 255
  %arrayidx13 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %13 = load i16* %arrayidx13, align 2, !tbaa !4
  %and19 = and i16 %13, 8192
  %tobool20 = icmp eq i16 %and19, 0
  br i1 %tobool20, label %do.body, label %for.inc

for.inc:                                          ; preds = %cont12
  %add.ptr = getelementptr inbounds i8* %x.024, i32 %8
  %14 = load i8* %add.ptr, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %14, 0
  br i1 %tobool1, label %do.body, label %ioc_bb

do.body:                                          ; preds = %for.cond.preheader, %cont12, %for.inc, %entry
  %x.1 = phi i8* [ %0, %entry ], [ %0, %for.cond.preheader ], [ %x.024, %cont12 ], [ %add.ptr, %for.inc ]
  %first = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4, !tbaa !3
  %last = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4, !tbaa !3
  %flags = getelementptr inbounds %union.linkroot* %foo, i32 0, i32 0, i32 2
  store i32 0, i32* %flags, align 4, !tbaa !2
  %next = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4, !tbaa !3
  %node = bitcast %union.linkroot* %foo to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4, !tbaa !3
  %dat = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 2
  store i8* %x.1, i8** %dat, align 4, !tbaa !3
  br i1 %tobool, label %if.then27, label %if.end121

if.then27:                                        ; preds = %do.body
  call void @mb_metacharinit() nounwind
  %15 = load i8* %x.1, align 1, !tbaa !0
  %tobool3115 = icmp eq i8 %15, 0
  br i1 %tobool3115, label %if.end121, label %cont34

cont34:                                           ; preds = %if.then27, %for.inc118
  %16 = phi i8 [ %46, %for.inc118 ], [ %15, %if.then27 ]
  %inp.020 = phi i32 [ %inp.1, %for.inc118 ], [ 0, %if.then27 ]
  %inq.018 = phi i32 [ %inq.1, %for.inc118 ], [ 0, %if.then27 ]
  %n.017 = phi %struct.linknode* [ %n.16, %for.inc118 ], [ %__n0, %if.then27 ]
  %x.216 = phi i8* [ %add.ptr119, %for.inc118 ], [ %x.1, %if.then27 ]
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %cont38, label %ioc_bb37

ioc_bb37:                                         ; preds = %cont34
  %18 = sext i8 %16 to i64
  call void @__ioc_report_conversion(i32 479, i32 51, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont38

cont38:                                           ; preds = %ioc_bb37, %cont34
  %idxprom39 = zext i8 %16 to i32
  %arrayidx40 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom39
  %19 = load i16* %arrayidx40, align 2, !tbaa !4
  %and46 = and i16 %19, 16
  %tobool47 = icmp eq i16 %and46, 0
  br i1 %tobool47, label %if.else, label %if.then48

if.then48:                                        ; preds = %cont38
  %20 = load i8* %x.216, align 1, !tbaa !0
  %conv49 = sext i8 %20 to i32
  br label %if.end104

if.else:                                          ; preds = %cont38
  %call = call i32 @mb_metacharlenconv(i8* %x.216, i32* %c35) nounwind
  %21 = or i32 %inp.020, %inq.018
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %land.lhs.true52, label %for.inc118

land.lhs.true52:                                  ; preds = %if.else
  %23 = load i32* %c35, align 4, !tbaa !2
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %cont58, label %ioc_bb53

ioc_bb53:                                         ; preds = %land.lhs.true52
  %25 = zext i32 %23 to i64
  call void @__ioc_report_conversion(i32 486, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %25, i8 0) nounwind
  br label %cont58

cont58:                                           ; preds = %ioc_bb53, %land.lhs.true52
  %call59 = call i32 @wcsitype(i32 %23, i32 32) nounwind
  %tobool60 = icmp eq i32 %call59, 0
  br i1 %tobool60, label %for.inc118, label %cont63

cont63:                                           ; preds = %cont58
  store i8 0, i8* %x.216, align 1, !tbaa !0
  %add.ptr64 = getelementptr inbounds i8* %x.216, i32 %call
  %26 = load i8* %add.ptr64, align 1, !tbaa !0
  %tobool6612 = icmp eq i8 %26, 0
  br i1 %tobool6612, label %if.end121, label %for.body67

for.body67:                                       ; preds = %cont63, %for.inc95
  %27 = phi i8 [ %35, %for.inc95 ], [ %26, %cont63 ]
  %x.313 = phi i8* [ %add.ptr96, %for.inc95 ], [ %add.ptr64, %cont63 ]
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %cont70, label %ioc_bb69

ioc_bb69:                                         ; preds = %for.body67
  %29 = sext i8 %27 to i64
  call void @__ioc_report_conversion(i32 489, i32 57, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %29, i8 1) nounwind
  br label %cont70

cont70:                                           ; preds = %ioc_bb69, %for.body67
  %idxprom71 = zext i8 %27 to i32
  %arrayidx72 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom71
  %30 = load i16* %arrayidx72, align 2, !tbaa !4
  %and78 = and i16 %30, 16
  %tobool79 = icmp eq i16 %and78, 0
  br i1 %tobool79, label %if.end82, label %if.then80

if.then80:                                        ; preds = %cont70
  %31 = load i8* %x.313, align 1, !tbaa !0
  %conv81 = sext i8 %31 to i32
  br label %for.end97

if.end82:                                         ; preds = %cont70
  %call83 = call i32 @mb_metacharlenconv(i8* %x.313, i32* %c35) nounwind
  %32 = load i32* %c35, align 4, !tbaa !2
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %cont90, label %ioc_bb85

ioc_bb85:                                         ; preds = %if.end82
  %34 = zext i32 %32 to i64
  call void @__ioc_report_conversion(i32 496, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %34, i8 0) nounwind
  br label %cont90

cont90:                                           ; preds = %ioc_bb85, %if.end82
  %call91 = call i32 @wcsitype(i32 %32, i32 32) nounwind
  %tobool92 = icmp eq i32 %call91, 0
  br i1 %tobool92, label %for.end97thread-pre-split, label %for.inc95

for.inc95:                                        ; preds = %cont90
  %add.ptr96 = getelementptr inbounds i8* %x.313, i32 %call83
  %35 = load i8* %add.ptr96, align 1, !tbaa !0
  %tobool66 = icmp eq i8 %35, 0
  br i1 %tobool66, label %if.end121, label %for.body67

for.end97thread-pre-split:                        ; preds = %cont90
  %.pr = load i8* %x.313, align 1, !tbaa !0
  br label %for.end97

for.end97:                                        ; preds = %for.end97thread-pre-split, %if.then80
  %36 = phi i8 [ %.pr, %for.end97thread-pre-split ], [ %31, %if.then80 ]
  %l.1 = phi i32 [ %call83, %for.end97thread-pre-split ], [ 1, %if.then80 ]
  %rawc.0 = phi i32 [ -1, %for.end97thread-pre-split ], [ %conv81, %if.then80 ]
  %tobool98 = icmp eq i8 %36, 0
  br i1 %tobool98, label %if.end121, label %if.end100

if.end100:                                        ; preds = %for.end97
  %call101 = call %struct.linknode* @insertlinknode(%union.linkroot* %foo, %struct.linknode* %n.017, i8* %x.313) nounwind
  %next102 = getelementptr inbounds %struct.linknode* %n.017, i32 0, i32 0
  %37 = load %struct.linknode** %next102, align 4, !tbaa !3
  br label %if.end104

if.end104:                                        ; preds = %if.end100, %if.then48
  %l.2 = phi i32 [ 1, %if.then48 ], [ %l.1, %if.end100 ]
  %x.4 = phi i8* [ %x.216, %if.then48 ], [ %x.313, %if.end100 ]
  %n.1 = phi %struct.linknode* [ %n.017, %if.then48 ], [ %37, %if.end100 ]
  %rawc.1 = phi i32 [ %conv49, %if.then48 ], [ %rawc.0, %if.end100 ]
  switch i32 %rawc.1, label %for.inc118 [
    i32 -102, label %sw.bb106
    i32 -103, label %sw.bb106
    i32 -111, label %sw.bb106
    i32 -120, label %sw.bb108
    i32 -119, label %sw.bb111
    i32 -101, label %sw.bb115
    i32 -100, label %sw.bb115
  ]

sw.bb106:                                         ; preds = %if.end104, %if.end104, %if.end104
  %lnot = icmp eq i32 %inq.018, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %for.inc118

sw.bb108:                                         ; preds = %if.end104
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %inp.020, i32 1)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb109, label %for.inc118

ioc_bb109:                                        ; preds = %sw.bb108
  %41 = sext i32 %inp.020 to i64
  call void @__ioc_report_add_overflow(i32 523, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %41, i64 1, i8 13) nounwind
  br label %for.inc118

sw.bb111:                                         ; preds = %if.end104
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %inp.020, i32 -1)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb112, label %for.inc118

ioc_bb112:                                        ; preds = %sw.bb111
  %45 = sext i32 %inp.020 to i64
  call void @__ioc_report_add_overflow(i32 529, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %45, i64 -1, i8 13) nounwind
  br label %for.inc118

sw.bb115:                                         ; preds = %if.end104, %if.end104
  %add.ptr116 = getelementptr inbounds i8* %x.4, i32 %l.2
  %call117 = call i32 @mb_metacharlenconv(i8* %add.ptr116, i32* null) nounwind
  br label %for.inc118

for.inc118:                                       ; preds = %cont58, %if.else, %ioc_bb112, %sw.bb111, %ioc_bb109, %sw.bb108, %sw.bb106, %sw.bb115, %if.end104
  %n.16 = phi %struct.linknode* [ %n.1, %if.end104 ], [ %n.1, %sw.bb115 ], [ %n.1, %sw.bb106 ], [ %n.1, %sw.bb108 ], [ %n.1, %ioc_bb109 ], [ %n.1, %sw.bb111 ], [ %n.1, %ioc_bb112 ], [ %n.017, %if.else ], [ %n.017, %cont58 ]
  %l.3 = phi i32 [ %l.2, %if.end104 ], [ %call117, %sw.bb115 ], [ %l.2, %sw.bb106 ], [ %l.2, %sw.bb108 ], [ %l.2, %ioc_bb109 ], [ %l.2, %sw.bb111 ], [ %l.2, %ioc_bb112 ], [ %call, %if.else ], [ %call, %cont58 ]
  %x.5 = phi i8* [ %x.4, %if.end104 ], [ %add.ptr116, %sw.bb115 ], [ %x.4, %sw.bb106 ], [ %x.4, %sw.bb108 ], [ %x.4, %ioc_bb109 ], [ %x.4, %sw.bb111 ], [ %x.4, %ioc_bb112 ], [ %x.216, %if.else ], [ %x.216, %cont58 ]
  %inq.1 = phi i32 [ %inq.018, %if.end104 ], [ %inq.018, %sw.bb115 ], [ %lnot.ext, %sw.bb106 ], [ %inq.018, %sw.bb108 ], [ %inq.018, %ioc_bb109 ], [ %inq.018, %sw.bb111 ], [ %inq.018, %ioc_bb112 ], [ %inq.018, %if.else ], [ %inq.018, %cont58 ]
  %inp.1 = phi i32 [ %inp.020, %if.end104 ], [ %inp.020, %sw.bb115 ], [ %inp.020, %sw.bb106 ], [ %39, %sw.bb108 ], [ %39, %ioc_bb109 ], [ %43, %sw.bb111 ], [ %43, %ioc_bb112 ], [ %inp.020, %if.else ], [ %inp.020, %cont58 ]
  %add.ptr119 = getelementptr inbounds i8* %x.5, i32 %l.3
  %46 = load i8* %add.ptr119, align 1, !tbaa !0
  %tobool31 = icmp eq i8 %46, 0
  br i1 %tobool31, label %if.end121, label %cont34

if.end121:                                        ; preds = %if.then27, %for.end97, %for.inc118, %for.inc95, %cont63, %do.body
  call void @prefork(%union.linkroot* %foo, i32 %pf_flags)
  %47 = load i32* @errflag, align 4, !tbaa !2
  %tobool122 = icmp eq i32 %47, 0
  br i1 %tobool122, label %if.end127, label %if.then123

if.then123:                                       ; preds = %if.end121
  %tobool124 = icmp eq i32* %isarr, null
  br i1 %tobool124, label %return, label %if.then125

if.then125:                                       ; preds = %if.then123
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %return

if.end127:                                        ; preds = %if.end121
  %call128 = call i32 @countlinknodes(%union.linkroot* %foo) nounwind
  %cmp129 = icmp sgt i32 %call128, 1
  br i1 %cmp129, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end127
  %48 = load i32* %flags, align 4, !tbaa !2
  %and133 = and i32 %48, 1
  %tobool134 = icmp eq i32 %and133, 0
  %tobool136 = icmp eq i8*** %a, null
  %or.cond4 = or i1 %tobool134, %tobool136
  br i1 %or.cond4, label %if.end170, label %if.then137

if.then137:                                       ; preds = %lor.lhs.false, %if.end127
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call128, i32 1)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb138, label %cont139

ioc_bb138:                                        ; preds = %if.then137
  %52 = sext i32 %call128 to i64
  call void @__ioc_report_add_overflow(i32 553, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %52, i64 1, i8 13) nounwind
  br label %cont139

cont139:                                          ; preds = %if.then137, %ioc_bb138
  %53 = icmp sgt i32 %50, -1
  br i1 %53, label %cont142, label %ioc_bb141

ioc_bb141:                                        ; preds = %cont139
  %54 = sext i32 %50 to i64
  call void @__ioc_report_conversion(i32 553, i32 22, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %54, i8 1) nounwind
  br label %cont142

cont142:                                          ; preds = %ioc_bb141, %cont139
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb143, label %cont144

ioc_bb143:                                        ; preds = %cont142
  %58 = zext i32 %50 to i64
  call void @__ioc_report_mul_overflow(i32 553, i32 30, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 4, i8 5) nounwind
  br label %cont144

cont144:                                          ; preds = %cont142, %ioc_bb143
  %call145 = call i8* @hcalloc(i32 %56) nounwind
  %59 = bitcast i8* %call145 to i8**
  %60 = load %struct.linknode** %first, align 4, !tbaa !3
  %cmp1487 = icmp eq %struct.linknode* %60, null
  br i1 %cmp1487, label %while.end, label %while.body

while.body:                                       ; preds = %cont144, %while.body
  %p.08 = phi i8** [ %incdec.ptr, %while.body ], [ %59, %cont144 ]
  %call150 = call i8* @ugetnode(%union.linkroot* %foo) nounwind
  %incdec.ptr = getelementptr inbounds i8** %p.08, i32 1
  store i8* %call150, i8** %p.08, align 4, !tbaa !3
  %61 = load %struct.linknode** %first, align 4, !tbaa !3
  %cmp148 = icmp eq %struct.linknode* %61, null
  br i1 %cmp148, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %cont144
  %p.0.lcssa = phi i8** [ %59, %cont144 ], [ %incdec.ptr, %while.body ]
  store i8* null, i8** %p.0.lcssa, align 4, !tbaa !3
  %tobool151 = icmp eq i8*** %a, null
  br i1 %tobool151, label %if.end165, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %while.end
  br i1 %cmp129, label %if.then160, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %land.lhs.true152
  %62 = load i32* %flags, align 4, !tbaa !2
  %and158 = and i32 %62, 1
  %tobool159 = icmp eq i32 %and158, 0
  br i1 %tobool159, label %if.end165, label %if.then160

if.then160:                                       ; preds = %lor.lhs.false155, %land.lhs.true152
  store i8** %59, i8*** %a, align 4, !tbaa !3
  store i32 32, i32* %isarr, align 4, !tbaa !2
  br label %return

if.end165:                                        ; preds = %lor.lhs.false155, %while.end
  %call166 = call i8* @sepjoin(i8** %59, i8* null, i32 1) nounwind
  store i8* %call166, i8** %s, align 4, !tbaa !3
  %tobool167 = icmp eq i32* %isarr, null
  br i1 %tobool167, label %return, label %if.then168

if.then168:                                       ; preds = %if.end165
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %return

if.end170:                                        ; preds = %lor.lhs.false
  %tobool171 = icmp ne i32 %call128, 0
  br i1 %tobool171, label %if.then172, label %if.else174

if.then172:                                       ; preds = %if.end170
  %call173 = call i8* @ugetnode(%union.linkroot* %foo) nounwind
  br label %if.end176

if.else174:                                       ; preds = %if.end170
  %call175 = call i8* @dupstring(i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind
  br label %if.end176

if.end176:                                        ; preds = %if.else174, %if.then172
  %storemerge = phi i8* [ %call175, %if.else174 ], [ %call173, %if.then172 ]
  store i8* %storemerge, i8** %s, align 4
  %tobool177 = icmp eq i32* %isarr, null
  br i1 %tobool177, label %if.end179, label %if.then178

if.then178:                                       ; preds = %if.end176
  store i32 0, i32* %isarr, align 4, !tbaa !2
  br label %if.end179

if.end179:                                        ; preds = %if.end176, %if.then178
  %63 = zext i1 %tobool171 to i32
  %lnot.ext182 = xor i32 %63, 1
  br label %return

return:                                           ; preds = %if.then168, %if.end165, %if.then125, %if.then123, %if.end179, %if.then160
  %retval.0 = phi i32 [ 0, %if.then160 ], [ %lnot.ext182, %if.end179 ], [ 0, %if.then123 ], [ 0, %if.then125 ], [ 0, %if.end165 ], [ 0, %if.then168 ]
  ret i32 %retval.0
}

declare %struct.value* @fetchvalue(%struct.value*, i8**, i32, i32)

declare i8* @getstrvalue(%struct.value*)

declare %struct.param* @createparam(i8*, i32)

declare i32 @getindex(i8**, %struct.value*, i32)

declare i8** @getarrvalue(%struct.value*)

declare i32 @arrlen(i8**)

declare i8* @sepjoin(i8**, i8*, i32)

declare i8** @sepsplit(i8*, i8*, i32, i32)

declare i8* @zalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.param* @sethparam(i8*, i8**)

declare i8** @paramvalarr(%struct.hashtable*, i32)

declare %struct.param* @assignaparam(i8*, i8**, i32)

declare %struct.param* @assignsparam(i8*, i8*, i32)

declare i32 @getpid() nounwind

declare void @zexit(i32, i32)

declare void @_exit(i32) noreturn

declare i8** @arrdup(i8**)

declare void @getmatcharr(i8***, i8*, i32, i32, i8*)

declare i32 @getmatch(i8**, i8*, i32, i32, i8*)

declare i8** @getaparam(i8*)

declare %struct.hashtable* @newuniqtable(i64)

declare %struct.hashnode* @addhashnode2(%struct.hashtable*, i8*, i8*)

declare %struct.hashnode* @gethashnode2(%struct.hashtable*, i8*)

declare void @deletehashtable(%struct.hashtable*)

declare i8** @mkarray(i8*)

define internal fastcc i8* @check_colon_subscript(i8* %str, i8** nocapture %endp) nounwind {
entry:
  %foo.i = alloca %union.linkroot, align 4
  %__n0.i = alloca %struct.linknode, align 4
  %0 = load i8* %str, align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %lor.lhs.false
  %2 = sext i8 %0 to i64
  call void @__ioc_report_conversion(i32 1472, i32 42, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %lor.lhs.false
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %3, 64
  %tobool5 = icmp eq i16 %and, 0
  br i1 %tobool5, label %lor.lhs.false6, label %return

lor.lhs.false6:                                   ; preds = %cont
  %4 = load i8* %str, align 1, !tbaa !0
  %cmp = icmp eq i8 %4, 38
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %call = call i8* @parse_subscript(i8* %str, i32 0, i32 58) nounwind
  store i8* %call, i8** %endp, align 4, !tbaa !3
  %tobool9 = icmp eq i8* %call, null
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  %call11 = call i8* @parse_subscript(i8* %str, i32 0, i32 0) nounwind
  store i8* %call11, i8** %endp, align 4, !tbaa !3
  %tobool12 = icmp eq i8* %call11, null
  br i1 %tobool12, label %return, label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end
  %5 = phi i8* [ %call11, %if.then10 ], [ %call, %if.end ]
  %6 = load i8* %5, align 1, !tbaa !0
  store i8 0, i8* %5, align 1, !tbaa !0
  %call19 = call i8* @dupstring(i8* %str) nounwind
  %call20 = call i32 @parsestr(i8* %call19) nounwind
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %if.end23, label %return

if.end23:                                         ; preds = %if.end15
  %7 = bitcast %union.linkroot* %foo.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) nounwind
  %8 = bitcast %struct.linknode* %__n0.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind
  %first.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0.i, %struct.linknode** %first.i, align 4, !tbaa !3
  %last.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0.i, %struct.linknode** %last.i, align 4, !tbaa !3
  %flags.i = getelementptr inbounds %union.linkroot* %foo.i, i32 0, i32 0, i32 2
  store i32 0, i32* %flags.i, align 4, !tbaa !2
  %next.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next.i, align 4, !tbaa !3
  %node.i = bitcast %union.linkroot* %foo.i to %struct.linknode*
  %prev.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 1
  store %struct.linknode* %node.i, %struct.linknode** %prev.i, align 4, !tbaa !3
  %dat.i = getelementptr inbounds %struct.linknode* %__n0.i, i32 0, i32 2
  store i8* %call19, i8** %dat.i, align 4, !tbaa !3
  call void @prefork(%union.linkroot* %foo.i, i32 4) nounwind
  %9 = load i32* @errflag, align 4, !tbaa !2
  %tobool.i = icmp eq i32 %9, 0
  br i1 %tobool.i, label %if.end.i, label %singsub.exit

if.end.i:                                         ; preds = %if.end23
  %call.i = call i8* @ugetnode(%union.linkroot* %foo.i) nounwind
  br label %singsub.exit

singsub.exit:                                     ; preds = %if.end23, %if.end.i
  %str41 = phi i8* [ %call19, %if.end23 ], [ %call.i, %if.end.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %7) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind
  call void @remnulargs(i8* %str41) nounwind
  call void @untokenize(i8* %str41) nounwind
  %10 = load i8** %endp, align 4, !tbaa !3
  store i8 %6, i8* %10, align 1, !tbaa !0
  br label %return

return:                                           ; preds = %if.end15, %if.then10, %lor.lhs.false6, %entry, %cont, %singsub.exit
  %retval.0 = phi i8* [ %str41, %singsub.exit ], [ null, %cont ], [ null, %entry ], [ null, %lor.lhs.false6 ], [ null, %if.then10 ], [ null, %if.end15 ]
  ret i8* %retval.0
}

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

define internal fastcc i8* @substevalchar(i8* %ptr) nounwind {
entry:
  %len = alloca i32, align 4
  %buf = alloca [11 x i8], align 1
  %call = call i64 @mathevali(i8* %ptr) nounwind
  store i32 0, i32* %len, align 4, !tbaa !2
  %0 = load i32* @errflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !0
  %tobool1 = icmp ne i8 %1, 0
  %cmp = icmp sgt i64 %call, 127
  %or.cond = and i1 %tobool1, %cmp
  br i1 %or.cond, label %if.then3, label %cont25

if.then3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [11 x i8]* %buf, i32 0, i32 0
  %2 = icmp ult i64 %call, 4294967296
  br i1 %2, label %if.end20, label %ioc_bb

ioc_bb:                                           ; preds = %if.then3
  call void @__ioc_report_conversion(i32 1426, i32 43, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %if.end20

if.end20:                                         ; preds = %if.then3, %ioc_bb
  %conv4 = trunc i64 %call to i32
  %call5 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8]* @.str49, i32 0, i32 0), i32 %conv4) nounwind
  %call19 = call i8* @getkeystring(i8* %arraydecay, i32* %len, i32 7, i32* null) nounwind
  %.pre = load i32* %len, align 4, !tbaa !2
  %cmp21 = icmp eq i32 %.pre, 0
  br i1 %cmp21, label %cont25, label %if.end33

cont25:                                           ; preds = %if.end, %if.end20
  %call26 = call i8* @zhalloc(i32 2) nounwind
  store i32 1, i32* %len, align 4, !tbaa !2
  %call.off = add i64 %call, 2147483648
  %3 = icmp ult i64 %call.off, 4294967296
  br i1 %3, label %cont30, label %ioc_bb29

ioc_bb29:                                         ; preds = %cont25
  call void @__ioc_report_conversion(i32 1434, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %cont30

cont30:                                           ; preds = %ioc_bb29, %cont25
  %char = trunc i64 %call to i8
  store i8 %char, i8* %call26, align 1
  %nul = getelementptr i8* %call26, i32 1
  store i8 0, i8* %nul, align 1
  %.pre40 = load i32* %len, align 4, !tbaa !2
  br label %if.end33

if.end33:                                         ; preds = %cont30, %if.end20
  %4 = phi i32 [ %.pre40, %cont30 ], [ %.pre, %if.end20 ]
  %ptr.addr.1 = phi i8* [ %call26, %cont30 ], [ %call19, %if.end20 ]
  %call34 = call i8* @metafy(i8* %ptr.addr.1, i32 %4, i32 1) nounwind
  br label %return

return:                                           ; preds = %entry, %if.end33
  %retval.0 = phi i8* [ %call34, %if.end33 ], [ null, %entry ]
  ret i8* %retval.0
}

declare i32 @mb_metastrlen(i8*, i32)

declare i32 @wordcount(i8*, i8*, i32)

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare i8* @metafy(i8*, i32, i32)

declare i8* @promptexpand(i8*, i32, i8*, i8*, i32*)

declare void @free(i8* nocapture) nounwind

declare i8* @substnamedir(i8*)

declare i8* @nicedupstring(i8*)

declare %union.linkroot* @bufferwords(%union.linkroot*, i8*, i32*, i32)

declare i8** @hlinklist2array(%union.linkroot*, i32)

declare void @zhuniqarray(i8**)

declare void @strmetasort(i8**, i32, i32*)

define internal fastcc i8* @dopadding(i8* %str, i32 %prenum, i32 %postnum, i8* %preone, i8* %postone, i8* %premul, i8* %postmul, i32 %multi_width) nounwind {
entry:
  %cchar = alloca i32, align 4
  call void @mb_metacharinit() nounwind
  %0 = load i8** @ifs, align 4, !tbaa !3
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %1, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %tobool2 = icmp ne i8* %0, null
  %cond = select i1 %tobool2, i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str48, i32 0, i32 0)
  %call = call i32 @mb_metacharlenconv(i8* %cond, i32* null) nounwind
  %call3 = call i8* @dupstrpfx(i8* %cond, i32 %call) nounwind
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %def.0 = phi i8* [ %call3, %if.then ], [ getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), %lor.lhs.false ]
  %tobool4 = icmp eq i8* %preone, null
  br i1 %tobool4, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8* %preone, align 1, !tbaa !0
  %tobool5 = icmp eq i8 %2, 0
  %def.0.preone = select i1 %tobool5, i8* %def.0, i8* %preone
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %preone.addr.0 = phi i8* [ null, %if.end ], [ %def.0.preone, %land.lhs.true ]
  %tobool8 = icmp eq i8* %postone, null
  br i1 %tobool8, label %if.end12, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %3 = load i8* %postone, align 1, !tbaa !0
  %tobool10 = icmp eq i8 %3, 0
  %def.0.postone = select i1 %tobool10, i8* %def.0, i8* %postone
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true9, %if.end7
  %postone.addr.0 = phi i8* [ null, %if.end7 ], [ %def.0.postone, %land.lhs.true9 ]
  %tobool13 = icmp eq i8* %premul, null
  br i1 %tobool13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end12
  %4 = load i8* %premul, align 1, !tbaa !0
  %tobool15 = icmp eq i8 %4, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false14, %if.end12
  br label %if.end17

if.end17:                                         ; preds = %lor.lhs.false14, %if.then16
  %premul.addr.0 = phi i8* [ %premul, %lor.lhs.false14 ], [ %def.0, %if.then16 ]
  %tobool18 = icmp eq i8* %postmul, null
  br i1 %tobool18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end17
  %5 = load i8* %postmul, align 1, !tbaa !0
  %tobool20 = icmp eq i8 %5, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %if.end17
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false19, %if.then21
  %postmul.addr.0 = phi i8* [ %postmul, %lor.lhs.false19 ], [ %def.0, %if.then21 ]
  %call23 = call i32 @mb_metastrlen(i8* %str, i32 %multi_width) nounwind
  %tobool24 = icmp ne i8* %preone.addr.0, null
  br i1 %tobool24, label %cond.true25, label %cond.end28

cond.true25:                                      ; preds = %if.end22
  %call26 = call i32 @mb_metastrlen(i8* %preone.addr.0, i32 %multi_width) nounwind
  br label %cond.end28

cond.end28:                                       ; preds = %if.end22, %cond.true25
  %cond29 = phi i32 [ %call26, %cond.true25 ], [ 0, %if.end22 ]
  %tobool30 = icmp ne i8* %postone.addr.0, null
  br i1 %tobool30, label %cond.true31, label %cond.end34

cond.true31:                                      ; preds = %cond.end28
  %call32 = call i32 @mb_metastrlen(i8* %postone.addr.0, i32 %multi_width) nounwind
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end28, %cond.true31
  %cond35 = phi i32 [ %call32, %cond.true31 ], [ 0, %cond.end28 ]
  %call36 = call i32 @mb_metastrlen(i8* %premul.addr.0, i32 %multi_width) nounwind
  %call37 = call i32 @mb_metastrlen(i8* %postmul.addr.0, i32 %multi_width) nounwind
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %prenum, i32 %postnum)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  %9 = sext i32 %prenum to i64
  %10 = sext i32 %postnum to i64
  br i1 %8, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %cond.end34
  call void @__ioc_report_add_overflow(i32 845, i32 14, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %9, i64 %10, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %cond.end34, %ioc_bb
  %cmp = icmp eq i32 %7, %call23
  br i1 %cmp, label %return, label %if.end40

if.end40:                                         ; preds = %cont
  %call41 = call i32 @strlen(i8* %str) nounwind readonly
  %call42 = call i32 @strlen(i8* %premul.addr.0) nounwind readonly
  %11 = icmp sgt i32 %prenum, -1
  br i1 %11, label %cont44, label %ioc_bb43

ioc_bb43:                                         ; preds = %if.end40
  call void @__ioc_report_conversion(i32 854, i32 40, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont44

cont44:                                           ; preds = %ioc_bb43, %if.end40
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call42, i32 %prenum)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb45, label %cont46

ioc_bb45:                                         ; preds = %cont44
  %15 = zext i32 %prenum to i64
  %16 = zext i32 %call42 to i64
  call void @__ioc_report_mul_overflow(i32 854, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %16, i64 %15, i8 5) nounwind
  br label %cont46

cont46:                                           ; preds = %cont44, %ioc_bb45
  %17 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call41, i32 %13)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb47, label %cont48

ioc_bb47:                                         ; preds = %cont46
  %20 = zext i32 %13 to i64
  %21 = zext i32 %call41 to i64
  call void @__ioc_report_add_overflow(i32 854, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %21, i64 %20, i8 5) nounwind
  br label %cont48

cont48:                                           ; preds = %cont46, %ioc_bb47
  %call49 = call i32 @strlen(i8* %postmul.addr.0) nounwind readonly
  %22 = icmp sgt i32 %postnum, -1
  br i1 %22, label %cont52, label %ioc_bb51

ioc_bb51:                                         ; preds = %cont48
  call void @__ioc_report_conversion(i32 854, i32 67, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont52

cont52:                                           ; preds = %ioc_bb51, %cont48
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call49, i32 %postnum)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb53, label %cont54

ioc_bb53:                                         ; preds = %cont52
  %26 = zext i32 %postnum to i64
  %27 = zext i32 %call49 to i64
  call void @__ioc_report_mul_overflow(i32 854, i32 65, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %27, i64 %26, i8 5) nounwind
  br label %cont54

cont54:                                           ; preds = %cont52, %ioc_bb53
  %28 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %18, i32 %24)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb55, label %cont56

ioc_bb55:                                         ; preds = %cont54
  %31 = zext i32 %24 to i64
  %32 = zext i32 %18 to i64
  call void @__ioc_report_add_overflow(i32 854, i32 47, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %32, i64 %31, i8 5) nounwind
  br label %cont56

cont56:                                           ; preds = %cont54, %ioc_bb55
  %33 = icmp sgt i32 %29, -1
  br i1 %33, label %cont58, label %ioc_bb57

ioc_bb57:                                         ; preds = %cont56
  %34 = zext i32 %29 to i64
  call void @__ioc_report_conversion(i32 854, i32 8, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %34, i8 0) nounwind
  br label %cont58

cont58:                                           ; preds = %ioc_bb57, %cont56
  br i1 %tobool24, label %if.then60, label %if.end64

if.then60:                                        ; preds = %cont58
  %call61 = call i32 @strlen(i8* %preone.addr.0) nounwind readonly
  %35 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %call61)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb62, label %if.end64

ioc_bb62:                                         ; preds = %if.then60
  %38 = sext i32 %call61 to i64
  %39 = sext i32 %29 to i64
  call void @__ioc_report_add_overflow(i32 859, i32 8, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %39, i64 %38, i8 13) nounwind
  br label %if.end64

if.end64:                                         ; preds = %ioc_bb62, %if.then60, %cont58
  %lr.0 = phi i32 [ %29, %cont58 ], [ %36, %if.then60 ], [ %36, %ioc_bb62 ]
  br i1 %tobool30, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.end64
  %call67 = call i32 @strlen(i8* %postone.addr.0) nounwind readonly
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %lr.0, i32 %call67)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb68, label %if.end70

ioc_bb68:                                         ; preds = %if.then66
  %43 = sext i32 %call67 to i64
  %44 = sext i32 %lr.0 to i64
  call void @__ioc_report_add_overflow(i32 861, i32 8, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %44, i64 %43, i8 13) nounwind
  br label %if.end70

if.end70:                                         ; preds = %ioc_bb68, %if.then66, %if.end64
  %lr.1 = phi i32 [ %lr.0, %if.end64 ], [ %41, %if.then66 ], [ %41, %ioc_bb68 ]
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %lr.1, i32 1)
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb71, label %cont72

ioc_bb71:                                         ; preds = %if.end70
  %48 = sext i32 %lr.1 to i64
  call void @__ioc_report_add_overflow(i32 862, i32 35, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %48, i64 1, i8 13) nounwind
  br label %cont72

cont72:                                           ; preds = %if.end70, %ioc_bb71
  %49 = icmp sgt i32 %46, -1
  br i1 %49, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %cont72
  %50 = sext i32 %46 to i64
  call void @__ioc_report_conversion(i32 862, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %50, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %ioc_bb74, %cont72
  %call76 = call i8* @zhalloc(i32 %46) nounwind
  %tobool77 = icmp eq i32 %prenum, 0
  %tobool79 = icmp ne i32 %postnum, 0
  br i1 %tobool77, label %if.else573, label %if.then78

if.then78:                                        ; preds = %cont75
  br i1 %tobool79, label %if.then80, label %if.else388

if.then80:                                        ; preds = %if.then78
  %51 = sext i32 %call23 to i64
  %div = sdiv i32 %call23, 2
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %prenum, i32 %div)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  %55 = sext i32 %div to i64
  br i1 %54, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %if.then80
  call void @__ioc_report_sub_overflow(i32 876, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %9, i64 %55, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %if.then80, %ioc_bb83
  %cmp85 = icmp slt i32 %53, 1
  br i1 %cmp85, label %if.then87, label %if.else121

if.then87:                                        ; preds = %cont84
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %53)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb88, label %cont89

ioc_bb88:                                         ; preds = %if.then87
  %59 = sext i32 %53 to i64
  call void @__ioc_report_sub_overflow(i32 879, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %59, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %if.then87, %ioc_bb88
  call void @mb_metacharinit() nounwind
  %cmp901324 = icmp sgt i32 %57, 0
  br i1 %cmp901324, label %while.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond.backedge, %while.body, %cont89
  %str.addr.0.lcssa = phi i8* [ %str, %cont89 ], [ %str.addr.01325, %while.body ], [ %add.ptr, %while.cond.backedge ]
  %cmp1021318 = icmp sgt i32 %prenum, 0
  br i1 %cmp1021318, label %for.body, label %if.end256

while.body:                                       ; preds = %cont89, %while.cond.backedge
  %f.01326 = phi i32 [ %64, %while.cond.backedge ], [ %57, %cont89 ]
  %str.addr.01325 = phi i8* [ %add.ptr, %while.cond.backedge ], [ %str, %cont89 ]
  %call92 = call i32 @mb_metacharlenconv(i8* %str.addr.01325, i32* %cchar) nounwind
  %tobool93 = icmp eq i32 %call92, 0
  br i1 %tobool93, label %for.cond.preheader, label %if.end95

if.end95:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8* %str.addr.01325, i32 %call92
  %60 = load i32* %cchar, align 4, !tbaa !2
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %cont98, label %ioc_bb97

ioc_bb97:                                         ; preds = %if.end95
  %62 = zext i32 %60 to i64
  call void @__ioc_report_conversion(i32 886, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %62, i8 0) nounwind
  br label %cont98

cont98:                                           ; preds = %ioc_bb97, %if.end95
  switch i32 %multi_width, label %sw.default.i [
    i32 0, label %wcpadwidth.exit
    i32 1, label %sw.bb1.i
  ]

sw.bb1.i:                                         ; preds = %cont98
  %call.i = call i32 @wcwidth(i32 %60) nounwind
  %cmp.i = icmp slt i32 %call.i, 0
  %call..i = select i1 %cmp.i, i32 0, i32 %call.i
  br label %wcpadwidth.exit

sw.default.i:                                     ; preds = %cont98
  %call2.i = call i32 @wcwidth(i32 %60) nounwind
  %cmp3.i = icmp sgt i32 %call2.i, 0
  %cond.i = zext i1 %cmp3.i to i32
  br label %wcpadwidth.exit

wcpadwidth.exit:                                  ; preds = %cont98, %sw.bb1.i, %sw.default.i
  %retval.0.i = phi i32 [ %cond.i, %sw.default.i ], [ 1, %cont98 ], [ %call..i, %sw.bb1.i ]
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %f.01326, i32 %retval.0.i)
  %64 = extractvalue { i32, i1 } %63, 0
  %65 = extractvalue { i32, i1 } %63, 1
  br i1 %65, label %ioc_bb100, label %while.cond.backedge

while.cond.backedge:                              ; preds = %wcpadwidth.exit, %ioc_bb100
  %cmp90 = icmp sgt i32 %64, 0
  br i1 %cmp90, label %while.body, label %for.cond.preheader

ioc_bb100:                                        ; preds = %wcpadwidth.exit
  %66 = sext i32 %retval.0.i to i64
  %67 = sext i32 %f.01326 to i64
  call void @__ioc_report_sub_overflow(i32 886, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %67, i64 %66, i8 13) nounwind
  br label %while.cond.backedge

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %c.01321 = phi i32 [ %77, %for.cond.backedge ], [ %prenum, %for.cond.preheader ]
  %str.addr.11320 = phi i8* [ %str.addr.2, %for.cond.backedge ], [ %str.addr.0.lcssa, %for.cond.preheader ]
  %r.01319 = phi i8* [ %r.1, %for.cond.backedge ], [ %call76, %for.cond.preheader ]
  %call104 = call i32 @mb_metacharlenconv(i8* %str.addr.11320, i32* %cchar) nounwind
  %tobool105 = icmp eq i32 %call104, 0
  br i1 %tobool105, label %if.end256, label %while.cond108

while.cond108:                                    ; preds = %for.body, %while.body112
  %r.1 = phi i8* [ %incdec.ptr113, %while.body112 ], [ %r.01319, %for.body ]
  %str.addr.2 = phi i8* [ %incdec.ptr, %while.body112 ], [ %str.addr.11320, %for.body ]
  %cl.0 = phi i32 [ %69, %while.body112 ], [ %call104, %for.body ]
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.0, i32 -1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb109, label %cont110

ioc_bb109:                                        ; preds = %while.cond108
  %71 = sext i32 %cl.0 to i64
  call void @__ioc_report_add_overflow(i32 893, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %71, i64 -1, i8 13) nounwind
  br label %cont110

cont110:                                          ; preds = %while.cond108, %ioc_bb109
  %tobool111 = icmp eq i32 %cl.0, 0
  br i1 %tobool111, label %while.end114, label %while.body112

while.body112:                                    ; preds = %cont110
  %incdec.ptr = getelementptr inbounds i8* %str.addr.2, i32 1
  %72 = load i8* %str.addr.2, align 1, !tbaa !0
  %incdec.ptr113 = getelementptr inbounds i8* %r.1, i32 1
  store i8 %72, i8* %r.1, align 1, !tbaa !0
  br label %while.cond108

while.end114:                                     ; preds = %cont110
  %73 = load i32* %cchar, align 4, !tbaa !2
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %cont117, label %ioc_bb116

ioc_bb116:                                        ; preds = %while.end114
  %75 = zext i32 %73 to i64
  call void @__ioc_report_conversion(i32 895, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %75, i8 0) nounwind
  br label %cont117

cont117:                                          ; preds = %ioc_bb116, %while.end114
  switch i32 %multi_width, label %sw.default.i1064 [
    i32 0, label %wcpadwidth.exit1066
    i32 1, label %sw.bb1.i1060
  ]

sw.bb1.i1060:                                     ; preds = %cont117
  %call.i1057 = call i32 @wcwidth(i32 %73) nounwind
  %cmp.i1058 = icmp slt i32 %call.i1057, 0
  %call..i1059 = select i1 %cmp.i1058, i32 0, i32 %call.i1057
  br label %wcpadwidth.exit1066

sw.default.i1064:                                 ; preds = %cont117
  %call2.i1061 = call i32 @wcwidth(i32 %73) nounwind
  %cmp3.i1062 = icmp sgt i32 %call2.i1061, 0
  %cond.i1063 = zext i1 %cmp3.i1062 to i32
  br label %wcpadwidth.exit1066

wcpadwidth.exit1066:                              ; preds = %cont117, %sw.bb1.i1060, %sw.default.i1064
  %retval.0.i1065 = phi i32 [ %cond.i1063, %sw.default.i1064 ], [ 1, %cont117 ], [ %call..i1059, %sw.bb1.i1060 ]
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.01321, i32 %retval.0.i1065)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb119, label %for.cond.backedge

for.cond.backedge:                                ; preds = %wcpadwidth.exit1066, %ioc_bb119
  %cmp102 = icmp sgt i32 %77, 0
  br i1 %cmp102, label %for.body, label %if.end256

ioc_bb119:                                        ; preds = %wcpadwidth.exit1066
  %79 = sext i32 %retval.0.i1065 to i64
  %80 = sext i32 %c.01321 to i64
  call void @__ioc_report_sub_overflow(i32 895, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %80, i64 %79, i8 13) nounwind
  br label %for.cond.backedge

if.else121:                                       ; preds = %cont84
  %cmp122 = icmp sgt i32 %53, %cond29
  br i1 %cmp122, label %if.else152, label %if.then124

if.then124:                                       ; preds = %if.else121
  br i1 %tobool24, label %if.then126, label %for.cond233.preheader

for.cond233.preheader:                            ; preds = %while.cond145.preheader, %while.body147, %while.cond225.preheader, %while.body227, %if.end222, %if.then124
  %r.11.ph = phi i8* [ %call76, %if.then124 ], [ %r.8, %if.end222 ], [ %r.8, %while.cond225.preheader ], [ %incdec.ptr229, %while.body227 ], [ %call76, %while.cond145.preheader ], [ %incdec.ptr149, %while.body147 ]
  %cmp2341329 = icmp sgt i32 %call23, 1
  br i1 %cmp2341329, label %for.body236, label %if.end256

if.then126:                                       ; preds = %if.then124
  call void @mb_metacharinit() nounwind
  %81 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %cond29, i32 %53)
  %82 = extractvalue { i32, i1 } %81, 0
  %83 = extractvalue { i32, i1 } %81, 1
  br i1 %83, label %ioc_bb127, label %for.cond129.preheader

ioc_bb127:                                        ; preds = %if.then126
  %84 = sext i32 %53 to i64
  %85 = sext i32 %cond29 to i64
  call void @__ioc_report_sub_overflow(i32 906, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %85, i64 %84, i8 13) nounwind
  br label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %if.then126, %ioc_bb127
  %cmp1301357 = icmp sgt i32 %82, 0
  br i1 %cmp1301357, label %for.body132, label %while.cond145.preheader

for.body132:                                      ; preds = %for.cond129.preheader, %for.cond129.backedge
  %f.11359 = phi i32 [ %91, %for.cond129.backedge ], [ %82, %for.cond129.preheader ]
  %t.01358 = phi i8* [ %add.ptr137, %for.cond129.backedge ], [ %preone.addr.0, %for.cond129.preheader ]
  %call133 = call i32 @mb_metacharlenconv(i8* %t.01358, i32* %cchar) nounwind
  %tobool134 = icmp eq i32 %call133, 0
  br i1 %tobool134, label %while.cond145.preheader, label %if.end136

while.cond145.preheader:                          ; preds = %for.cond129.backedge, %for.body132, %for.cond129.preheader
  %t.0.lcssa = phi i8* [ %preone.addr.0, %for.cond129.preheader ], [ %t.01358, %for.body132 ], [ %add.ptr137, %for.cond129.backedge ]
  %86 = load i8* %t.0.lcssa, align 1, !tbaa !0
  %tobool1461353 = icmp eq i8 %86, 0
  br i1 %tobool1461353, label %for.cond233.preheader, label %while.body147

if.end136:                                        ; preds = %for.body132
  %add.ptr137 = getelementptr inbounds i8* %t.01358, i32 %call133
  %87 = load i32* %cchar, align 4, !tbaa !2
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %cont140, label %ioc_bb139

ioc_bb139:                                        ; preds = %if.end136
  %89 = zext i32 %87 to i64
  call void @__ioc_report_conversion(i32 913, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %89, i8 0) nounwind
  br label %cont140

cont140:                                          ; preds = %ioc_bb139, %if.end136
  switch i32 %multi_width, label %sw.default.i1074 [
    i32 0, label %wcpadwidth.exit1076
    i32 1, label %sw.bb1.i1070
  ]

sw.bb1.i1070:                                     ; preds = %cont140
  %call.i1067 = call i32 @wcwidth(i32 %87) nounwind
  %cmp.i1068 = icmp slt i32 %call.i1067, 0
  %call..i1069 = select i1 %cmp.i1068, i32 0, i32 %call.i1067
  br label %wcpadwidth.exit1076

sw.default.i1074:                                 ; preds = %cont140
  %call2.i1071 = call i32 @wcwidth(i32 %87) nounwind
  %cmp3.i1072 = icmp sgt i32 %call2.i1071, 0
  %cond.i1073 = zext i1 %cmp3.i1072 to i32
  br label %wcpadwidth.exit1076

wcpadwidth.exit1076:                              ; preds = %cont140, %sw.bb1.i1070, %sw.default.i1074
  %retval.0.i1075 = phi i32 [ %cond.i1073, %sw.default.i1074 ], [ 1, %cont140 ], [ %call..i1069, %sw.bb1.i1070 ]
  %90 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %f.11359, i32 %retval.0.i1075)
  %91 = extractvalue { i32, i1 } %90, 0
  %92 = extractvalue { i32, i1 } %90, 1
  br i1 %92, label %ioc_bb142, label %for.cond129.backedge

for.cond129.backedge:                             ; preds = %wcpadwidth.exit1076, %ioc_bb142
  %cmp130 = icmp sgt i32 %91, 0
  br i1 %cmp130, label %for.body132, label %while.cond145.preheader

ioc_bb142:                                        ; preds = %wcpadwidth.exit1076
  %93 = sext i32 %retval.0.i1075 to i64
  %94 = sext i32 %f.11359 to i64
  call void @__ioc_report_sub_overflow(i32 913, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %94, i64 %93, i8 13) nounwind
  br label %for.cond129.backedge

while.body147:                                    ; preds = %while.cond145.preheader, %while.body147
  %95 = phi i8 [ %96, %while.body147 ], [ %86, %while.cond145.preheader ]
  %r.21355 = phi i8* [ %incdec.ptr149, %while.body147 ], [ %call76, %while.cond145.preheader ]
  %t.11354 = phi i8* [ %incdec.ptr148, %while.body147 ], [ %t.0.lcssa, %while.cond145.preheader ]
  %incdec.ptr148 = getelementptr inbounds i8* %t.11354, i32 1
  %incdec.ptr149 = getelementptr inbounds i8* %r.21355, i32 1
  store i8 %95, i8* %r.21355, align 1, !tbaa !0
  %96 = load i8* %incdec.ptr148, align 1, !tbaa !0
  %tobool146 = icmp eq i8 %96, 0
  br i1 %tobool146, label %for.cond233.preheader, label %while.body147

if.else152:                                       ; preds = %if.else121
  %97 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %53, i32 %cond29)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb153, label %cont154

ioc_bb153:                                        ; preds = %if.else152
  %100 = sext i32 %cond29 to i64
  %101 = sext i32 %53 to i64
  call void @__ioc_report_sub_overflow(i32 921, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %101, i64 %100, i8 13) nounwind
  br label %cont154

cont154:                                          ; preds = %if.else152, %ioc_bb153
  %tobool155 = icmp eq i32 %call36, 0
  br i1 %tobool155, label %if.end222, label %if.then156

if.then156:                                       ; preds = %cont154
  %102 = icmp ne i32 %98, -2147483648
  %103 = icmp ne i32 %call36, -1
  %or157 = or i1 %102, %103
  %104 = sext i32 %98 to i64
  %105 = sext i32 %call36 to i64
  br i1 %or157, label %cont160, label %ioc_bb159

ioc_bb159:                                        ; preds = %if.then156
  call void @__ioc_report_rem_error(i32 923, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %104, i64 %105, i8 13) nounwind
  br label %cont160

cont160:                                          ; preds = %ioc_bb159, %if.then156
  %rem = srem i32 %98, %call36
  %tobool161 = icmp eq i32 %rem, 0
  br i1 %tobool161, label %if.end187, label %if.then162

if.then162:                                       ; preds = %cont160
  call void @mb_metacharinit() nounwind
  %106 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call36, i32 %rem)
  %107 = extractvalue { i32, i1 } %106, 0
  %108 = extractvalue { i32, i1 } %106, 1
  br i1 %108, label %ioc_bb163, label %for.cond165.preheader

ioc_bb163:                                        ; preds = %if.then162
  %109 = sext i32 %rem to i64
  call void @__ioc_report_sub_overflow(i32 929, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %105, i64 %109, i8 13) nounwind
  br label %for.cond165.preheader

for.cond165.preheader:                            ; preds = %if.then162, %ioc_bb163
  %cmp1661348 = icmp sgt i32 %107, 0
  br i1 %cmp1661348, label %for.body168, label %while.cond181.preheader

for.body168:                                      ; preds = %for.cond165.preheader, %for.cond165.backedge
  %m.01350 = phi i32 [ %115, %for.cond165.backedge ], [ %107, %for.cond165.preheader ]
  %t.21349 = phi i8* [ %add.ptr173, %for.cond165.backedge ], [ %premul.addr.0, %for.cond165.preheader ]
  %call169 = call i32 @mb_metacharlenconv(i8* %t.21349, i32* %cchar) nounwind
  %tobool170 = icmp eq i32 %call169, 0
  br i1 %tobool170, label %while.cond181.preheader, label %if.end172

while.cond181.preheader:                          ; preds = %for.cond165.backedge, %for.body168, %for.cond165.preheader
  %t.2.lcssa = phi i8* [ %premul.addr.0, %for.cond165.preheader ], [ %t.21349, %for.body168 ], [ %add.ptr173, %for.cond165.backedge ]
  %110 = load i8* %t.2.lcssa, align 1, !tbaa !0
  %tobool1821344 = icmp eq i8 %110, 0
  br i1 %tobool1821344, label %if.end187, label %while.body183

if.end172:                                        ; preds = %for.body168
  %add.ptr173 = getelementptr inbounds i8* %t.21349, i32 %call169
  %111 = load i32* %cchar, align 4, !tbaa !2
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %cont176, label %ioc_bb175

ioc_bb175:                                        ; preds = %if.end172
  %113 = zext i32 %111 to i64
  call void @__ioc_report_conversion(i32 935, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %113, i8 0) nounwind
  br label %cont176

cont176:                                          ; preds = %ioc_bb175, %if.end172
  switch i32 %multi_width, label %sw.default.i1084 [
    i32 0, label %wcpadwidth.exit1086
    i32 1, label %sw.bb1.i1080
  ]

sw.bb1.i1080:                                     ; preds = %cont176
  %call.i1077 = call i32 @wcwidth(i32 %111) nounwind
  %cmp.i1078 = icmp slt i32 %call.i1077, 0
  %call..i1079 = select i1 %cmp.i1078, i32 0, i32 %call.i1077
  br label %wcpadwidth.exit1086

sw.default.i1084:                                 ; preds = %cont176
  %call2.i1081 = call i32 @wcwidth(i32 %111) nounwind
  %cmp3.i1082 = icmp sgt i32 %call2.i1081, 0
  %cond.i1083 = zext i1 %cmp3.i1082 to i32
  br label %wcpadwidth.exit1086

wcpadwidth.exit1086:                              ; preds = %cont176, %sw.bb1.i1080, %sw.default.i1084
  %retval.0.i1085 = phi i32 [ %cond.i1083, %sw.default.i1084 ], [ 1, %cont176 ], [ %call..i1079, %sw.bb1.i1080 ]
  %114 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m.01350, i32 %retval.0.i1085)
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb178, label %for.cond165.backedge

for.cond165.backedge:                             ; preds = %wcpadwidth.exit1086, %ioc_bb178
  %cmp166 = icmp sgt i32 %115, 0
  br i1 %cmp166, label %for.body168, label %while.cond181.preheader

ioc_bb178:                                        ; preds = %wcpadwidth.exit1086
  %117 = sext i32 %retval.0.i1085 to i64
  %118 = sext i32 %m.01350 to i64
  call void @__ioc_report_sub_overflow(i32 935, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %118, i64 %117, i8 13) nounwind
  br label %for.cond165.backedge

while.body183:                                    ; preds = %while.cond181.preheader, %while.body183
  %119 = phi i8 [ %120, %while.body183 ], [ %110, %while.cond181.preheader ]
  %r.31346 = phi i8* [ %incdec.ptr185, %while.body183 ], [ %call76, %while.cond181.preheader ]
  %t.31345 = phi i8* [ %incdec.ptr184, %while.body183 ], [ %t.2.lcssa, %while.cond181.preheader ]
  %incdec.ptr184 = getelementptr inbounds i8* %t.31345, i32 1
  %incdec.ptr185 = getelementptr inbounds i8* %r.31346, i32 1
  store i8 %119, i8* %r.31346, align 1, !tbaa !0
  %120 = load i8* %incdec.ptr184, align 1, !tbaa !0
  %tobool182 = icmp eq i8 %120, 0
  br i1 %tobool182, label %if.end187, label %while.body183

if.end187:                                        ; preds = %while.cond181.preheader, %while.body183, %cont160
  %r.4 = phi i8* [ %call76, %cont160 ], [ %call76, %while.cond181.preheader ], [ %incdec.ptr185, %while.body183 ]
  br i1 %or157, label %cont191, label %ioc_bb190

ioc_bb190:                                        ; preds = %if.end187
  call void @__ioc_report_div_error(i32 941, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %104, i64 %105, i8 13) nounwind
  br label %cont191

cont191:                                          ; preds = %ioc_bb190, %if.end187
  %div192 = sdiv i32 %98, %call36
  %cmp1991339 = icmp sgt i32 %call36, 0
  br label %for.cond193

for.cond193:                                      ; preds = %for.body197, %for.body201, %for.cond198.backedge, %cont191
  %r.5 = phi i8* [ %r.4, %cont191 ], [ %r.5, %for.body197 ], [ %r.61341, %for.body201 ], [ %r.7, %for.cond198.backedge ]
  %cc.0 = phi i32 [ %div192, %cont191 ], [ %122, %for.body197 ], [ %122, %for.body201 ], [ %122, %for.cond198.backedge ]
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cc.0, i32 -1)
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb194, label %cont195

ioc_bb194:                                        ; preds = %for.cond193
  %124 = sext i32 %cc.0 to i64
  call void @__ioc_report_add_overflow(i32 941, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %124, i64 -1, i8 13) nounwind
  br label %cont195

cont195:                                          ; preds = %for.cond193, %ioc_bb194
  %tobool196 = icmp eq i32 %cc.0, 0
  br i1 %tobool196, label %if.end222, label %for.body197

for.body197:                                      ; preds = %cont195
  call void @mb_metacharinit() nounwind
  br i1 %cmp1991339, label %for.body201, label %for.cond193

for.body201:                                      ; preds = %for.body197, %for.cond198.backedge
  %c.11342 = phi i32 [ %134, %for.cond198.backedge ], [ %call36, %for.body197 ]
  %r.61341 = phi i8* [ %r.7, %for.cond198.backedge ], [ %r.5, %for.body197 ]
  %t.41340 = phi i8* [ %t.5, %for.cond198.backedge ], [ %premul.addr.0, %for.body197 ]
  %call202 = call i32 @mb_metacharlenconv(i8* %t.41340, i32* %cchar) nounwind
  %tobool203 = icmp eq i32 %call202, 0
  br i1 %tobool203, label %for.cond193, label %while.cond206

while.cond206:                                    ; preds = %for.body201, %while.body210
  %t.5 = phi i8* [ %incdec.ptr211, %while.body210 ], [ %t.41340, %for.body201 ]
  %r.7 = phi i8* [ %incdec.ptr212, %while.body210 ], [ %r.61341, %for.body201 ]
  %cl.1 = phi i32 [ %126, %while.body210 ], [ %call202, %for.body201 ]
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.1, i32 -1)
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  br i1 %127, label %ioc_bb207, label %cont208

ioc_bb207:                                        ; preds = %while.cond206
  %128 = sext i32 %cl.1 to i64
  call void @__ioc_report_add_overflow(i32 948, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %128, i64 -1, i8 13) nounwind
  br label %cont208

cont208:                                          ; preds = %while.cond206, %ioc_bb207
  %tobool209 = icmp eq i32 %cl.1, 0
  br i1 %tobool209, label %while.end213, label %while.body210

while.body210:                                    ; preds = %cont208
  %incdec.ptr211 = getelementptr inbounds i8* %t.5, i32 1
  %129 = load i8* %t.5, align 1, !tbaa !0
  %incdec.ptr212 = getelementptr inbounds i8* %r.7, i32 1
  store i8 %129, i8* %r.7, align 1, !tbaa !0
  br label %while.cond206

while.end213:                                     ; preds = %cont208
  %130 = load i32* %cchar, align 4, !tbaa !2
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %cont216, label %ioc_bb215

ioc_bb215:                                        ; preds = %while.end213
  %132 = zext i32 %130 to i64
  call void @__ioc_report_conversion(i32 950, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %132, i8 0) nounwind
  br label %cont216

cont216:                                          ; preds = %ioc_bb215, %while.end213
  switch i32 %multi_width, label %sw.default.i1094 [
    i32 0, label %wcpadwidth.exit1096
    i32 1, label %sw.bb1.i1090
  ]

sw.bb1.i1090:                                     ; preds = %cont216
  %call.i1087 = call i32 @wcwidth(i32 %130) nounwind
  %cmp.i1088 = icmp slt i32 %call.i1087, 0
  %call..i1089 = select i1 %cmp.i1088, i32 0, i32 %call.i1087
  br label %wcpadwidth.exit1096

sw.default.i1094:                                 ; preds = %cont216
  %call2.i1091 = call i32 @wcwidth(i32 %130) nounwind
  %cmp3.i1092 = icmp sgt i32 %call2.i1091, 0
  %cond.i1093 = zext i1 %cmp3.i1092 to i32
  br label %wcpadwidth.exit1096

wcpadwidth.exit1096:                              ; preds = %cont216, %sw.bb1.i1090, %sw.default.i1094
  %retval.0.i1095 = phi i32 [ %cond.i1093, %sw.default.i1094 ], [ 1, %cont216 ], [ %call..i1089, %sw.bb1.i1090 ]
  %133 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.11342, i32 %retval.0.i1095)
  %134 = extractvalue { i32, i1 } %133, 0
  %135 = extractvalue { i32, i1 } %133, 1
  br i1 %135, label %ioc_bb218, label %for.cond198.backedge

for.cond198.backedge:                             ; preds = %wcpadwidth.exit1096, %ioc_bb218
  %cmp199 = icmp sgt i32 %134, 0
  br i1 %cmp199, label %for.body201, label %for.cond193

ioc_bb218:                                        ; preds = %wcpadwidth.exit1096
  %136 = sext i32 %retval.0.i1095 to i64
  %137 = sext i32 %c.11342 to i64
  call void @__ioc_report_sub_overflow(i32 950, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %137, i64 %136, i8 13) nounwind
  br label %for.cond198.backedge

if.end222:                                        ; preds = %cont195, %cont154
  %r.8 = phi i8* [ %call76, %cont154 ], [ %r.5, %cont195 ]
  br i1 %tobool24, label %while.cond225.preheader, label %for.cond233.preheader

while.cond225.preheader:                          ; preds = %if.end222
  %138 = load i8* %preone.addr.0, align 1, !tbaa !0
  %tobool2261335 = icmp eq i8 %138, 0
  br i1 %tobool2261335, label %for.cond233.preheader, label %while.body227

while.body227:                                    ; preds = %while.cond225.preheader, %while.body227
  %139 = phi i8 [ %140, %while.body227 ], [ %138, %while.cond225.preheader ]
  %preone.addr.11337 = phi i8* [ %incdec.ptr228, %while.body227 ], [ %preone.addr.0, %while.cond225.preheader ]
  %r.91336 = phi i8* [ %incdec.ptr229, %while.body227 ], [ %r.8, %while.cond225.preheader ]
  %incdec.ptr228 = getelementptr inbounds i8* %preone.addr.11337, i32 1
  %incdec.ptr229 = getelementptr inbounds i8* %r.91336, i32 1
  store i8 %139, i8* %r.91336, align 1, !tbaa !0
  %140 = load i8* %incdec.ptr228, align 1, !tbaa !0
  %tobool226 = icmp eq i8 %140, 0
  br i1 %tobool226, label %for.cond233.preheader, label %while.body227

for.cond233.loopexit:                             ; preds = %cont249
  %cmp234 = icmp sgt i32 %145, 0
  br i1 %cmp234, label %for.body236, label %if.end256

for.body236:                                      ; preds = %for.cond233.preheader, %for.cond233.loopexit
  %c.21332 = phi i32 [ %145, %for.cond233.loopexit ], [ %div, %for.cond233.preheader ]
  %str.addr.31331 = phi i8* [ %str.addr.4, %for.cond233.loopexit ], [ %str, %for.cond233.preheader ]
  %r.111330 = phi i8* [ %r.12, %for.cond233.loopexit ], [ %r.11.ph, %for.cond233.preheader ]
  %call237 = call i32 @mb_metacharlenconv(i8* %str.addr.31331, i32* %cchar) nounwind
  %tobool238 = icmp eq i32 %call237, 0
  br i1 %tobool238, label %if.end256, label %if.end240

if.end240:                                        ; preds = %for.body236
  %141 = load i32* %cchar, align 4, !tbaa !2
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %cont243, label %ioc_bb242

ioc_bb242:                                        ; preds = %if.end240
  %143 = zext i32 %141 to i64
  call void @__ioc_report_conversion(i32 965, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %143, i8 0) nounwind
  br label %cont243

cont243:                                          ; preds = %ioc_bb242, %if.end240
  switch i32 %multi_width, label %sw.default.i1104 [
    i32 0, label %wcpadwidth.exit1106
    i32 1, label %sw.bb1.i1100
  ]

sw.bb1.i1100:                                     ; preds = %cont243
  %call.i1097 = call i32 @wcwidth(i32 %141) nounwind
  %cmp.i1098 = icmp slt i32 %call.i1097, 0
  %call..i1099 = select i1 %cmp.i1098, i32 0, i32 %call.i1097
  br label %wcpadwidth.exit1106

sw.default.i1104:                                 ; preds = %cont243
  %call2.i1101 = call i32 @wcwidth(i32 %141) nounwind
  %cmp3.i1102 = icmp sgt i32 %call2.i1101, 0
  %cond.i1103 = zext i1 %cmp3.i1102 to i32
  br label %wcpadwidth.exit1106

wcpadwidth.exit1106:                              ; preds = %cont243, %sw.bb1.i1100, %sw.default.i1104
  %retval.0.i1105 = phi i32 [ %cond.i1103, %sw.default.i1104 ], [ 1, %cont243 ], [ %call..i1099, %sw.bb1.i1100 ]
  %144 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.21332, i32 %retval.0.i1105)
  %145 = extractvalue { i32, i1 } %144, 0
  %146 = extractvalue { i32, i1 } %144, 1
  br i1 %146, label %ioc_bb245, label %while.cond247

ioc_bb245:                                        ; preds = %wcpadwidth.exit1106
  %147 = sext i32 %retval.0.i1105 to i64
  %148 = sext i32 %c.21332 to i64
  call void @__ioc_report_sub_overflow(i32 965, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %148, i64 %147, i8 13) nounwind
  br label %while.cond247

while.cond247:                                    ; preds = %ioc_bb245, %wcpadwidth.exit1106, %while.body251
  %r.12 = phi i8* [ %incdec.ptr253, %while.body251 ], [ %r.111330, %wcpadwidth.exit1106 ], [ %r.111330, %ioc_bb245 ]
  %str.addr.4 = phi i8* [ %incdec.ptr252, %while.body251 ], [ %str.addr.31331, %wcpadwidth.exit1106 ], [ %str.addr.31331, %ioc_bb245 ]
  %cl.2 = phi i32 [ %150, %while.body251 ], [ %call237, %wcpadwidth.exit1106 ], [ %call237, %ioc_bb245 ]
  %149 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.2, i32 -1)
  %150 = extractvalue { i32, i1 } %149, 0
  %151 = extractvalue { i32, i1 } %149, 1
  br i1 %151, label %ioc_bb248, label %cont249

ioc_bb248:                                        ; preds = %while.cond247
  %152 = sext i32 %cl.2 to i64
  call void @__ioc_report_add_overflow(i32 966, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %152, i64 -1, i8 13) nounwind
  br label %cont249

cont249:                                          ; preds = %while.cond247, %ioc_bb248
  %tobool250 = icmp eq i32 %cl.2, 0
  br i1 %tobool250, label %for.cond233.loopexit, label %while.body251

while.body251:                                    ; preds = %cont249
  %incdec.ptr252 = getelementptr inbounds i8* %str.addr.4, i32 1
  %153 = load i8* %str.addr.4, align 1, !tbaa !0
  %incdec.ptr253 = getelementptr inbounds i8* %r.12, i32 1
  store i8 %153, i8* %r.12, align 1, !tbaa !0
  br label %while.cond247

if.end256:                                        ; preds = %for.cond233.preheader, %for.body236, %for.cond233.loopexit, %for.cond.preheader, %for.body, %for.cond.backedge
  %r.13 = phi i8* [ %call76, %for.cond.preheader ], [ %r.01319, %for.body ], [ %r.1, %for.cond.backedge ], [ %r.11.ph, %for.cond233.preheader ], [ %r.111330, %for.body236 ], [ %r.12, %for.cond233.loopexit ]
  %str.addr.5 = phi i8* [ %str.addr.0.lcssa, %for.cond.preheader ], [ %str.addr.11320, %for.body ], [ %str.addr.2, %for.cond.backedge ], [ %str, %for.cond233.preheader ], [ %str.addr.31331, %for.body236 ], [ %str.addr.4, %for.cond233.loopexit ]
  %154 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call23, i32 %div)
  %155 = extractvalue { i32, i1 } %154, 0
  %156 = extractvalue { i32, i1 } %154, 1
  br i1 %156, label %ioc_bb257, label %cont258

ioc_bb257:                                        ; preds = %if.end256
  call void @__ioc_report_sub_overflow(i32 971, i32 16, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %51, i64 %55, i8 13) nounwind
  br label %cont258

cont258:                                          ; preds = %if.end256, %ioc_bb257
  %157 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %postnum, i32 %155)
  %158 = extractvalue { i32, i1 } %157, 0
  %159 = extractvalue { i32, i1 } %157, 1
  br i1 %159, label %ioc_bb259, label %cont260

ioc_bb259:                                        ; preds = %cont258
  %160 = sext i32 %155 to i64
  call void @__ioc_report_sub_overflow(i32 973, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %10, i64 %160, i8 13) nounwind
  br label %cont260

cont260:                                          ; preds = %cont258, %ioc_bb259
  %cmp261 = icmp slt i32 %158, 1
  br i1 %cmp261, label %if.then263, label %while.cond288.preheader

while.cond288.preheader:                          ; preds = %cont260
  %161 = load i8* %str.addr.5, align 1, !tbaa !0
  %tobool2891314 = icmp eq i8 %161, 0
  br i1 %tobool2891314, label %while.end293, label %while.body290

if.then263:                                       ; preds = %cont260
  call void @mb_metacharinit() nounwind
  %cmp2651289 = icmp sgt i32 %postnum, 0
  br i1 %cmp2651289, label %for.body267, label %cont756

for.cond264.loopexit:                             ; preds = %cont280
  %cmp265 = icmp sgt i32 %166, 0
  br i1 %cmp265, label %for.body267, label %cont756

for.body267:                                      ; preds = %if.then263, %for.cond264.loopexit
  %c.31292 = phi i32 [ %166, %for.cond264.loopexit ], [ %postnum, %if.then263 ]
  %str.addr.61291 = phi i8* [ %str.addr.7, %for.cond264.loopexit ], [ %str.addr.5, %if.then263 ]
  %r.141290 = phi i8* [ %r.15, %for.cond264.loopexit ], [ %r.13, %if.then263 ]
  %call268 = call i32 @mb_metacharlenconv(i8* %str.addr.61291, i32* %cchar) nounwind
  %tobool269 = icmp eq i32 %call268, 0
  br i1 %tobool269, label %cont756, label %if.end271

if.end271:                                        ; preds = %for.body267
  %162 = load i32* %cchar, align 4, !tbaa !2
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %cont274, label %ioc_bb273

ioc_bb273:                                        ; preds = %if.end271
  %164 = zext i32 %162 to i64
  call void @__ioc_report_conversion(i32 981, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %164, i8 0) nounwind
  br label %cont274

cont274:                                          ; preds = %ioc_bb273, %if.end271
  switch i32 %multi_width, label %sw.default.i1114 [
    i32 0, label %wcpadwidth.exit1116
    i32 1, label %sw.bb1.i1110
  ]

sw.bb1.i1110:                                     ; preds = %cont274
  %call.i1107 = call i32 @wcwidth(i32 %162) nounwind
  %cmp.i1108 = icmp slt i32 %call.i1107, 0
  %call..i1109 = select i1 %cmp.i1108, i32 0, i32 %call.i1107
  br label %wcpadwidth.exit1116

sw.default.i1114:                                 ; preds = %cont274
  %call2.i1111 = call i32 @wcwidth(i32 %162) nounwind
  %cmp3.i1112 = icmp sgt i32 %call2.i1111, 0
  %cond.i1113 = zext i1 %cmp3.i1112 to i32
  br label %wcpadwidth.exit1116

wcpadwidth.exit1116:                              ; preds = %cont274, %sw.bb1.i1110, %sw.default.i1114
  %retval.0.i1115 = phi i32 [ %cond.i1113, %sw.default.i1114 ], [ 1, %cont274 ], [ %call..i1109, %sw.bb1.i1110 ]
  %165 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.31292, i32 %retval.0.i1115)
  %166 = extractvalue { i32, i1 } %165, 0
  %167 = extractvalue { i32, i1 } %165, 1
  br i1 %167, label %ioc_bb276, label %while.cond278

ioc_bb276:                                        ; preds = %wcpadwidth.exit1116
  %168 = sext i32 %retval.0.i1115 to i64
  %169 = sext i32 %c.31292 to i64
  call void @__ioc_report_sub_overflow(i32 981, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %169, i64 %168, i8 13) nounwind
  br label %while.cond278

while.cond278:                                    ; preds = %ioc_bb276, %wcpadwidth.exit1116, %while.body282
  %r.15 = phi i8* [ %incdec.ptr284, %while.body282 ], [ %r.141290, %wcpadwidth.exit1116 ], [ %r.141290, %ioc_bb276 ]
  %str.addr.7 = phi i8* [ %incdec.ptr283, %while.body282 ], [ %str.addr.61291, %wcpadwidth.exit1116 ], [ %str.addr.61291, %ioc_bb276 ]
  %cl.3 = phi i32 [ %171, %while.body282 ], [ %call268, %wcpadwidth.exit1116 ], [ %call268, %ioc_bb276 ]
  %170 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.3, i32 -1)
  %171 = extractvalue { i32, i1 } %170, 0
  %172 = extractvalue { i32, i1 } %170, 1
  br i1 %172, label %ioc_bb279, label %cont280

ioc_bb279:                                        ; preds = %while.cond278
  %173 = sext i32 %cl.3 to i64
  call void @__ioc_report_add_overflow(i32 982, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %173, i64 -1, i8 13) nounwind
  br label %cont280

cont280:                                          ; preds = %while.cond278, %ioc_bb279
  %tobool281 = icmp eq i32 %cl.3, 0
  br i1 %tobool281, label %for.cond264.loopexit, label %while.body282

while.body282:                                    ; preds = %cont280
  %incdec.ptr283 = getelementptr inbounds i8* %str.addr.7, i32 1
  %174 = load i8* %str.addr.7, align 1, !tbaa !0
  %incdec.ptr284 = getelementptr inbounds i8* %r.15, i32 1
  store i8 %174, i8* %r.15, align 1, !tbaa !0
  br label %while.cond278

while.body290:                                    ; preds = %while.cond288.preheader, %while.body290
  %175 = phi i8 [ %176, %while.body290 ], [ %161, %while.cond288.preheader ]
  %str.addr.81316 = phi i8* [ %incdec.ptr291, %while.body290 ], [ %str.addr.5, %while.cond288.preheader ]
  %r.161315 = phi i8* [ %incdec.ptr292, %while.body290 ], [ %r.13, %while.cond288.preheader ]
  %incdec.ptr291 = getelementptr inbounds i8* %str.addr.81316, i32 1
  %incdec.ptr292 = getelementptr inbounds i8* %r.161315, i32 1
  store i8 %175, i8* %r.161315, align 1, !tbaa !0
  %176 = load i8* %incdec.ptr291, align 1, !tbaa !0
  %tobool289 = icmp eq i8 %176, 0
  br i1 %tobool289, label %while.end293, label %while.body290

while.end293:                                     ; preds = %while.body290, %while.cond288.preheader
  %r.16.lcssa = phi i8* [ %r.13, %while.cond288.preheader ], [ %incdec.ptr292, %while.body290 ]
  %cmp294 = icmp sgt i32 %158, %cond35
  br i1 %cmp294, label %if.else323, label %if.then296

if.then296:                                       ; preds = %while.end293
  %cmp3001309 = icmp sgt i32 %158, 0
  %or.cond = and i1 %tobool30, %cmp3001309
  br i1 %or.cond, label %for.body302, label %cont756

for.cond299.loopexit:                             ; preds = %cont315
  %cmp300 = icmp sgt i32 %181, 0
  br i1 %cmp300, label %for.body302, label %cont756

for.body302:                                      ; preds = %if.then296, %for.cond299.loopexit
  %c.41312 = phi i32 [ %181, %for.cond299.loopexit ], [ %158, %if.then296 ]
  %postone.addr.11311 = phi i8* [ %postone.addr.2, %for.cond299.loopexit ], [ %postone.addr.0, %if.then296 ]
  %r.171310 = phi i8* [ %r.18, %for.cond299.loopexit ], [ %r.16.lcssa, %if.then296 ]
  %call303 = call i32 @mb_metacharlenconv(i8* %postone.addr.11311, i32* %cchar) nounwind
  %tobool304 = icmp eq i32 %call303, 0
  br i1 %tobool304, label %cont756, label %if.end306

if.end306:                                        ; preds = %for.body302
  %177 = load i32* %cchar, align 4, !tbaa !2
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %cont309, label %ioc_bb308

ioc_bb308:                                        ; preds = %if.end306
  %179 = zext i32 %177 to i64
  call void @__ioc_report_conversion(i32 997, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %179, i8 0) nounwind
  br label %cont309

cont309:                                          ; preds = %ioc_bb308, %if.end306
  switch i32 %multi_width, label %sw.default.i1124 [
    i32 0, label %wcpadwidth.exit1126
    i32 1, label %sw.bb1.i1120
  ]

sw.bb1.i1120:                                     ; preds = %cont309
  %call.i1117 = call i32 @wcwidth(i32 %177) nounwind
  %cmp.i1118 = icmp slt i32 %call.i1117, 0
  %call..i1119 = select i1 %cmp.i1118, i32 0, i32 %call.i1117
  br label %wcpadwidth.exit1126

sw.default.i1124:                                 ; preds = %cont309
  %call2.i1121 = call i32 @wcwidth(i32 %177) nounwind
  %cmp3.i1122 = icmp sgt i32 %call2.i1121, 0
  %cond.i1123 = zext i1 %cmp3.i1122 to i32
  br label %wcpadwidth.exit1126

wcpadwidth.exit1126:                              ; preds = %cont309, %sw.bb1.i1120, %sw.default.i1124
  %retval.0.i1125 = phi i32 [ %cond.i1123, %sw.default.i1124 ], [ 1, %cont309 ], [ %call..i1119, %sw.bb1.i1120 ]
  %180 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.41312, i32 %retval.0.i1125)
  %181 = extractvalue { i32, i1 } %180, 0
  %182 = extractvalue { i32, i1 } %180, 1
  br i1 %182, label %ioc_bb311, label %while.cond313

ioc_bb311:                                        ; preds = %wcpadwidth.exit1126
  %183 = sext i32 %retval.0.i1125 to i64
  %184 = sext i32 %c.41312 to i64
  call void @__ioc_report_sub_overflow(i32 997, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %184, i64 %183, i8 13) nounwind
  br label %while.cond313

while.cond313:                                    ; preds = %ioc_bb311, %wcpadwidth.exit1126, %while.body317
  %r.18 = phi i8* [ %incdec.ptr319, %while.body317 ], [ %r.171310, %wcpadwidth.exit1126 ], [ %r.171310, %ioc_bb311 ]
  %postone.addr.2 = phi i8* [ %incdec.ptr318, %while.body317 ], [ %postone.addr.11311, %wcpadwidth.exit1126 ], [ %postone.addr.11311, %ioc_bb311 ]
  %cl.4 = phi i32 [ %186, %while.body317 ], [ %call303, %wcpadwidth.exit1126 ], [ %call303, %ioc_bb311 ]
  %185 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.4, i32 -1)
  %186 = extractvalue { i32, i1 } %185, 0
  %187 = extractvalue { i32, i1 } %185, 1
  br i1 %187, label %ioc_bb314, label %cont315

ioc_bb314:                                        ; preds = %while.cond313
  %188 = sext i32 %cl.4 to i64
  call void @__ioc_report_add_overflow(i32 998, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %188, i64 -1, i8 13) nounwind
  br label %cont315

cont315:                                          ; preds = %while.cond313, %ioc_bb314
  %tobool316 = icmp eq i32 %cl.4, 0
  br i1 %tobool316, label %for.cond299.loopexit, label %while.body317

while.body317:                                    ; preds = %cont315
  %incdec.ptr318 = getelementptr inbounds i8* %postone.addr.2, i32 1
  %189 = load i8* %postone.addr.2, align 1, !tbaa !0
  %incdec.ptr319 = getelementptr inbounds i8* %r.18, i32 1
  store i8 %189, i8* %r.18, align 1, !tbaa !0
  br label %while.cond313

if.else323:                                       ; preds = %while.end293
  br i1 %tobool30, label %if.then325, label %if.end334

if.then325:                                       ; preds = %if.else323
  %190 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %158, i32 %cond35)
  %191 = extractvalue { i32, i1 } %190, 0
  %192 = extractvalue { i32, i1 } %190, 1
  br i1 %192, label %ioc_bb326, label %while.cond328.preheader

ioc_bb326:                                        ; preds = %if.then325
  %193 = sext i32 %cond35 to i64
  %194 = sext i32 %158 to i64
  call void @__ioc_report_sub_overflow(i32 1005, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %194, i64 %193, i8 13) nounwind
  br label %while.cond328.preheader

while.cond328.preheader:                          ; preds = %if.then325, %ioc_bb326
  %195 = load i8* %postone.addr.0, align 1, !tbaa !0
  %tobool3291304 = icmp eq i8 %195, 0
  br i1 %tobool3291304, label %if.end334, label %while.body330

while.body330:                                    ; preds = %while.cond328.preheader, %while.body330
  %196 = phi i8 [ %197, %while.body330 ], [ %195, %while.cond328.preheader ]
  %postone.addr.31306 = phi i8* [ %incdec.ptr331, %while.body330 ], [ %postone.addr.0, %while.cond328.preheader ]
  %r.191305 = phi i8* [ %incdec.ptr332, %while.body330 ], [ %r.16.lcssa, %while.cond328.preheader ]
  %incdec.ptr331 = getelementptr inbounds i8* %postone.addr.31306, i32 1
  %incdec.ptr332 = getelementptr inbounds i8* %r.191305, i32 1
  store i8 %196, i8* %r.191305, align 1, !tbaa !0
  %197 = load i8* %incdec.ptr331, align 1, !tbaa !0
  %tobool329 = icmp eq i8 %197, 0
  br i1 %tobool329, label %if.end334, label %while.body330

if.end334:                                        ; preds = %while.cond328.preheader, %while.body330, %if.else323
  %r.20 = phi i8* [ %r.16.lcssa, %if.else323 ], [ %r.16.lcssa, %while.cond328.preheader ], [ %incdec.ptr332, %while.body330 ]
  %f.2 = phi i32 [ %158, %if.else323 ], [ %191, %while.cond328.preheader ], [ %191, %while.body330 ]
  %tobool335 = icmp eq i32 %call37, 0
  br i1 %tobool335, label %cont756, label %if.then336

if.then336:                                       ; preds = %if.end334
  %198 = icmp ne i32 %f.2, -2147483648
  %199 = icmp ne i32 %call37, -1
  %or337 = or i1 %198, %199
  %200 = sext i32 %f.2 to i64
  %201 = sext i32 %call37 to i64
  br i1 %or337, label %cont340, label %ioc_bb339

ioc_bb339:                                        ; preds = %if.then336
  call void @__ioc_report_div_error(i32 1011, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %200, i64 %201, i8 13) nounwind
  br label %cont340

cont340:                                          ; preds = %ioc_bb339, %if.then336
  %div341 = sdiv i32 %f.2, %call37
  br label %for.cond342

for.cond342:                                      ; preds = %for.cond347.preheader, %for.body349, %cont340
  %r.21 = phi i8* [ %r.20, %cont340 ], [ %r.21, %for.cond347.preheader ], [ %incdec.ptr351, %for.body349 ]
  %cc.1 = phi i32 [ %div341, %cont340 ], [ %203, %for.cond347.preheader ], [ %203, %for.body349 ]
  %202 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cc.1, i32 -1)
  %203 = extractvalue { i32, i1 } %202, 0
  %204 = extractvalue { i32, i1 } %202, 1
  br i1 %204, label %ioc_bb343, label %cont344

ioc_bb343:                                        ; preds = %for.cond342
  %205 = sext i32 %cc.1 to i64
  call void @__ioc_report_add_overflow(i32 1011, i32 39, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %205, i64 -1, i8 13) nounwind
  br label %cont344

cont344:                                          ; preds = %for.cond342, %ioc_bb343
  %tobool345 = icmp eq i32 %cc.1, 0
  br i1 %tobool345, label %for.end353, label %for.cond347.preheader

for.cond347.preheader:                            ; preds = %cont344
  %206 = load i8* %postmul.addr.0, align 1, !tbaa !0
  %tobool3481300 = icmp eq i8 %206, 0
  br i1 %tobool3481300, label %for.cond342, label %for.body349

for.body349:                                      ; preds = %for.cond347.preheader, %for.body349
  %207 = phi i8 [ %208, %for.body349 ], [ %206, %for.cond347.preheader ]
  %r.221302 = phi i8* [ %incdec.ptr351, %for.body349 ], [ %r.21, %for.cond347.preheader ]
  %t.61301 = phi i8* [ %incdec.ptr350, %for.body349 ], [ %postmul.addr.0, %for.cond347.preheader ]
  %incdec.ptr350 = getelementptr inbounds i8* %t.61301, i32 1
  %incdec.ptr351 = getelementptr inbounds i8* %r.221302, i32 1
  store i8 %207, i8* %r.221302, align 1, !tbaa !0
  %208 = load i8* %incdec.ptr350, align 1, !tbaa !0
  %tobool348 = icmp eq i8 %208, 0
  br i1 %tobool348, label %for.cond342, label %for.body349

for.end353:                                       ; preds = %cont344
  br i1 %or337, label %cont357, label %ioc_bb356

ioc_bb356:                                        ; preds = %for.end353
  call void @__ioc_report_rem_error(i32 1016, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %200, i64 %201, i8 13) nounwind
  br label %cont357

cont357:                                          ; preds = %ioc_bb356, %for.end353
  %rem358 = srem i32 %f.2, %call37
  %tobool359 = icmp eq i32 %rem358, 0
  br i1 %tobool359, label %cont756, label %if.then360

if.then360:                                       ; preds = %cont357
  call void @mb_metacharinit() nounwind
  %cmp3621295 = icmp sgt i32 %rem358, 0
  br i1 %cmp3621295, label %while.body364, label %cont756

while.cond361.loopexit:                           ; preds = %cont377
  %cmp362 = icmp sgt i32 %213, 0
  br i1 %cmp362, label %while.body364, label %cont756

while.body364:                                    ; preds = %if.then360, %while.cond361.loopexit
  %m.11298 = phi i32 [ %213, %while.cond361.loopexit ], [ %rem358, %if.then360 ]
  %postmul.addr.11297 = phi i8* [ %postmul.addr.2, %while.cond361.loopexit ], [ %postmul.addr.0, %if.then360 ]
  %r.231296 = phi i8* [ %r.24, %while.cond361.loopexit ], [ %r.21, %if.then360 ]
  %call365 = call i32 @mb_metacharlenconv(i8* %postmul.addr.11297, i32* %cchar) nounwind
  %tobool366 = icmp eq i32 %call365, 0
  br i1 %tobool366, label %cont756, label %if.end368

if.end368:                                        ; preds = %while.body364
  %209 = load i32* %cchar, align 4, !tbaa !2
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %cont371, label %ioc_bb370

ioc_bb370:                                        ; preds = %if.end368
  %211 = zext i32 %209 to i64
  call void @__ioc_report_conversion(i32 1023, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %211, i8 0) nounwind
  br label %cont371

cont371:                                          ; preds = %ioc_bb370, %if.end368
  switch i32 %multi_width, label %sw.default.i1134 [
    i32 0, label %wcpadwidth.exit1136
    i32 1, label %sw.bb1.i1130
  ]

sw.bb1.i1130:                                     ; preds = %cont371
  %call.i1127 = call i32 @wcwidth(i32 %209) nounwind
  %cmp.i1128 = icmp slt i32 %call.i1127, 0
  %call..i1129 = select i1 %cmp.i1128, i32 0, i32 %call.i1127
  br label %wcpadwidth.exit1136

sw.default.i1134:                                 ; preds = %cont371
  %call2.i1131 = call i32 @wcwidth(i32 %209) nounwind
  %cmp3.i1132 = icmp sgt i32 %call2.i1131, 0
  %cond.i1133 = zext i1 %cmp3.i1132 to i32
  br label %wcpadwidth.exit1136

wcpadwidth.exit1136:                              ; preds = %cont371, %sw.bb1.i1130, %sw.default.i1134
  %retval.0.i1135 = phi i32 [ %cond.i1133, %sw.default.i1134 ], [ 1, %cont371 ], [ %call..i1129, %sw.bb1.i1130 ]
  %212 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m.11298, i32 %retval.0.i1135)
  %213 = extractvalue { i32, i1 } %212, 0
  %214 = extractvalue { i32, i1 } %212, 1
  br i1 %214, label %ioc_bb373, label %while.cond375

ioc_bb373:                                        ; preds = %wcpadwidth.exit1136
  %215 = sext i32 %retval.0.i1135 to i64
  %216 = sext i32 %m.11298 to i64
  call void @__ioc_report_sub_overflow(i32 1023, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %216, i64 %215, i8 13) nounwind
  br label %while.cond375

while.cond375:                                    ; preds = %ioc_bb373, %wcpadwidth.exit1136, %while.body379
  %r.24 = phi i8* [ %incdec.ptr381, %while.body379 ], [ %r.231296, %wcpadwidth.exit1136 ], [ %r.231296, %ioc_bb373 ]
  %postmul.addr.2 = phi i8* [ %incdec.ptr380, %while.body379 ], [ %postmul.addr.11297, %wcpadwidth.exit1136 ], [ %postmul.addr.11297, %ioc_bb373 ]
  %cl.5 = phi i32 [ %218, %while.body379 ], [ %call365, %wcpadwidth.exit1136 ], [ %call365, %ioc_bb373 ]
  %217 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.5, i32 -1)
  %218 = extractvalue { i32, i1 } %217, 0
  %219 = extractvalue { i32, i1 } %217, 1
  br i1 %219, label %ioc_bb376, label %cont377

ioc_bb376:                                        ; preds = %while.cond375
  %220 = sext i32 %cl.5 to i64
  call void @__ioc_report_add_overflow(i32 1024, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %220, i64 -1, i8 13) nounwind
  br label %cont377

cont377:                                          ; preds = %while.cond375, %ioc_bb376
  %tobool378 = icmp eq i32 %cl.5, 0
  br i1 %tobool378, label %while.cond361.loopexit, label %while.body379

while.body379:                                    ; preds = %cont377
  %incdec.ptr380 = getelementptr inbounds i8* %postmul.addr.2, i32 1
  %221 = load i8* %postmul.addr.2, align 1, !tbaa !0
  %incdec.ptr381 = getelementptr inbounds i8* %r.24, i32 1
  store i8 %221, i8* %r.24, align 1, !tbaa !0
  br label %while.cond375

if.else388:                                       ; preds = %if.then78
  %222 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %prenum, i32 %call23)
  %223 = extractvalue { i32, i1 } %222, 0
  %224 = extractvalue { i32, i1 } %222, 1
  br i1 %224, label %ioc_bb389, label %cont390

ioc_bb389:                                        ; preds = %if.else388
  %225 = sext i32 %call23 to i64
  call void @__ioc_report_sub_overflow(i32 1036, i32 18, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %9, i64 %225, i8 13) nounwind
  br label %cont390

cont390:                                          ; preds = %if.else388, %ioc_bb389
  %cmp391 = icmp slt i32 %223, 1
  br i1 %cmp391, label %if.then393, label %if.else435

if.then393:                                       ; preds = %cont390
  %226 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %223)
  %227 = extractvalue { i32, i1 } %226, 0
  %228 = extractvalue { i32, i1 } %226, 1
  br i1 %228, label %ioc_bb394, label %cont395

ioc_bb394:                                        ; preds = %if.then393
  %229 = sext i32 %223 to i64
  call void @__ioc_report_sub_overflow(i32 1044, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %229, i8 13) nounwind
  br label %cont395

cont395:                                          ; preds = %if.then393, %ioc_bb394
  call void @mb_metacharinit() nounwind
  %cmp3971367 = icmp sgt i32 %227, 0
  br i1 %cmp3971367, label %while.body399, label %for.cond412.preheader

for.cond412.preheader:                            ; preds = %while.cond396.backedge, %while.body399, %cont395
  %str.addr.9.lcssa = phi i8* [ %str, %cont395 ], [ %str.addr.91368, %while.body399 ], [ %add.ptr404, %while.cond396.backedge ]
  %cmp4131362 = icmp sgt i32 %prenum, 0
  br i1 %cmp4131362, label %for.body415, label %cont756

while.body399:                                    ; preds = %cont395, %while.cond396.backedge
  %f.31369 = phi i32 [ %234, %while.cond396.backedge ], [ %227, %cont395 ]
  %str.addr.91368 = phi i8* [ %add.ptr404, %while.cond396.backedge ], [ %str, %cont395 ]
  %call400 = call i32 @mb_metacharlenconv(i8* %str.addr.91368, i32* %cchar) nounwind
  %tobool401 = icmp eq i32 %call400, 0
  br i1 %tobool401, label %for.cond412.preheader, label %if.end403

if.end403:                                        ; preds = %while.body399
  %add.ptr404 = getelementptr inbounds i8* %str.addr.91368, i32 %call400
  %230 = load i32* %cchar, align 4, !tbaa !2
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %cont407, label %ioc_bb406

ioc_bb406:                                        ; preds = %if.end403
  %232 = zext i32 %230 to i64
  call void @__ioc_report_conversion(i32 1051, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %232, i8 0) nounwind
  br label %cont407

cont407:                                          ; preds = %ioc_bb406, %if.end403
  switch i32 %multi_width, label %sw.default.i1144 [
    i32 0, label %wcpadwidth.exit1146
    i32 1, label %sw.bb1.i1140
  ]

sw.bb1.i1140:                                     ; preds = %cont407
  %call.i1137 = call i32 @wcwidth(i32 %230) nounwind
  %cmp.i1138 = icmp slt i32 %call.i1137, 0
  %call..i1139 = select i1 %cmp.i1138, i32 0, i32 %call.i1137
  br label %wcpadwidth.exit1146

sw.default.i1144:                                 ; preds = %cont407
  %call2.i1141 = call i32 @wcwidth(i32 %230) nounwind
  %cmp3.i1142 = icmp sgt i32 %call2.i1141, 0
  %cond.i1143 = zext i1 %cmp3.i1142 to i32
  br label %wcpadwidth.exit1146

wcpadwidth.exit1146:                              ; preds = %cont407, %sw.bb1.i1140, %sw.default.i1144
  %retval.0.i1145 = phi i32 [ %cond.i1143, %sw.default.i1144 ], [ 1, %cont407 ], [ %call..i1139, %sw.bb1.i1140 ]
  %233 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %f.31369, i32 %retval.0.i1145)
  %234 = extractvalue { i32, i1 } %233, 0
  %235 = extractvalue { i32, i1 } %233, 1
  br i1 %235, label %ioc_bb409, label %while.cond396.backedge

while.cond396.backedge:                           ; preds = %wcpadwidth.exit1146, %ioc_bb409
  %cmp397 = icmp sgt i32 %234, 0
  br i1 %cmp397, label %while.body399, label %for.cond412.preheader

ioc_bb409:                                        ; preds = %wcpadwidth.exit1146
  %236 = sext i32 %retval.0.i1145 to i64
  %237 = sext i32 %f.31369 to i64
  call void @__ioc_report_sub_overflow(i32 1051, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %237, i64 %236, i8 13) nounwind
  br label %while.cond396.backedge

for.body415:                                      ; preds = %for.cond412.preheader, %for.cond412.backedge
  %c.51365 = phi i32 [ %247, %for.cond412.backedge ], [ %prenum, %for.cond412.preheader ]
  %str.addr.101364 = phi i8* [ %str.addr.11, %for.cond412.backedge ], [ %str.addr.9.lcssa, %for.cond412.preheader ]
  %r.251363 = phi i8* [ %r.26, %for.cond412.backedge ], [ %call76, %for.cond412.preheader ]
  %call416 = call i32 @mb_metacharlenconv(i8* %str.addr.101364, i32* %cchar) nounwind
  %tobool417 = icmp eq i32 %call416, 0
  br i1 %tobool417, label %cont756, label %while.cond420

while.cond420:                                    ; preds = %for.body415, %while.body424
  %r.26 = phi i8* [ %incdec.ptr426, %while.body424 ], [ %r.251363, %for.body415 ]
  %str.addr.11 = phi i8* [ %incdec.ptr425, %while.body424 ], [ %str.addr.101364, %for.body415 ]
  %cl.6 = phi i32 [ %239, %while.body424 ], [ %call416, %for.body415 ]
  %238 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.6, i32 -1)
  %239 = extractvalue { i32, i1 } %238, 0
  %240 = extractvalue { i32, i1 } %238, 1
  br i1 %240, label %ioc_bb421, label %cont422

ioc_bb421:                                        ; preds = %while.cond420
  %241 = sext i32 %cl.6 to i64
  call void @__ioc_report_add_overflow(i32 1058, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %241, i64 -1, i8 13) nounwind
  br label %cont422

cont422:                                          ; preds = %while.cond420, %ioc_bb421
  %tobool423 = icmp eq i32 %cl.6, 0
  br i1 %tobool423, label %while.end427, label %while.body424

while.body424:                                    ; preds = %cont422
  %incdec.ptr425 = getelementptr inbounds i8* %str.addr.11, i32 1
  %242 = load i8* %str.addr.11, align 1, !tbaa !0
  %incdec.ptr426 = getelementptr inbounds i8* %r.26, i32 1
  store i8 %242, i8* %r.26, align 1, !tbaa !0
  br label %while.cond420

while.end427:                                     ; preds = %cont422
  %243 = load i32* %cchar, align 4, !tbaa !2
  %244 = icmp sgt i32 %243, -1
  br i1 %244, label %cont430, label %ioc_bb429

ioc_bb429:                                        ; preds = %while.end427
  %245 = zext i32 %243 to i64
  call void @__ioc_report_conversion(i32 1060, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %245, i8 0) nounwind
  br label %cont430

cont430:                                          ; preds = %ioc_bb429, %while.end427
  switch i32 %multi_width, label %sw.default.i1154 [
    i32 0, label %wcpadwidth.exit1156
    i32 1, label %sw.bb1.i1150
  ]

sw.bb1.i1150:                                     ; preds = %cont430
  %call.i1147 = call i32 @wcwidth(i32 %243) nounwind
  %cmp.i1148 = icmp slt i32 %call.i1147, 0
  %call..i1149 = select i1 %cmp.i1148, i32 0, i32 %call.i1147
  br label %wcpadwidth.exit1156

sw.default.i1154:                                 ; preds = %cont430
  %call2.i1151 = call i32 @wcwidth(i32 %243) nounwind
  %cmp3.i1152 = icmp sgt i32 %call2.i1151, 0
  %cond.i1153 = zext i1 %cmp3.i1152 to i32
  br label %wcpadwidth.exit1156

wcpadwidth.exit1156:                              ; preds = %cont430, %sw.bb1.i1150, %sw.default.i1154
  %retval.0.i1155 = phi i32 [ %cond.i1153, %sw.default.i1154 ], [ 1, %cont430 ], [ %call..i1149, %sw.bb1.i1150 ]
  %246 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.51365, i32 %retval.0.i1155)
  %247 = extractvalue { i32, i1 } %246, 0
  %248 = extractvalue { i32, i1 } %246, 1
  br i1 %248, label %ioc_bb432, label %for.cond412.backedge

for.cond412.backedge:                             ; preds = %wcpadwidth.exit1156, %ioc_bb432
  %cmp413 = icmp sgt i32 %247, 0
  br i1 %cmp413, label %for.body415, label %cont756

ioc_bb432:                                        ; preds = %wcpadwidth.exit1156
  %249 = sext i32 %retval.0.i1155 to i64
  %250 = sext i32 %c.51365 to i64
  call void @__ioc_report_sub_overflow(i32 1060, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %250, i64 %249, i8 13) nounwind
  br label %for.cond412.backedge

if.else435:                                       ; preds = %cont390
  %cmp436 = icmp sgt i32 %223, %cond29
  br i1 %cmp436, label %if.else466, label %if.then438

if.then438:                                       ; preds = %if.else435
  br i1 %tobool24, label %if.then440, label %while.cond565.preheader

if.then440:                                       ; preds = %if.then438
  %251 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %cond29, i32 %223)
  %252 = extractvalue { i32, i1 } %251, 0
  %253 = extractvalue { i32, i1 } %251, 1
  br i1 %253, label %ioc_bb441, label %cont442

ioc_bb441:                                        ; preds = %if.then440
  %254 = sext i32 %223 to i64
  %255 = sext i32 %cond29 to i64
  call void @__ioc_report_sub_overflow(i32 1078, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %255, i64 %254, i8 13) nounwind
  br label %cont442

cont442:                                          ; preds = %if.then440, %ioc_bb441
  call void @mb_metacharinit() nounwind
  %cmp4441399 = icmp sgt i32 %252, 0
  br i1 %cmp4441399, label %for.body446, label %while.cond459.preheader

for.body446:                                      ; preds = %cont442, %for.cond443.backedge
  %f.41401 = phi i32 [ %261, %for.cond443.backedge ], [ %252, %cont442 ]
  %t.71400 = phi i8* [ %add.ptr451, %for.cond443.backedge ], [ %preone.addr.0, %cont442 ]
  %call447 = call i32 @mb_metacharlenconv(i8* %t.71400, i32* %cchar) nounwind
  %tobool448 = icmp eq i32 %call447, 0
  br i1 %tobool448, label %while.cond459.preheader, label %if.end450

while.cond459.preheader:                          ; preds = %for.cond443.backedge, %for.body446, %cont442
  %t.7.lcssa = phi i8* [ %preone.addr.0, %cont442 ], [ %t.71400, %for.body446 ], [ %add.ptr451, %for.cond443.backedge ]
  %256 = load i8* %t.7.lcssa, align 1, !tbaa !0
  %tobool4601395 = icmp eq i8 %256, 0
  br i1 %tobool4601395, label %while.cond565.preheader, label %while.body461

if.end450:                                        ; preds = %for.body446
  %add.ptr451 = getelementptr inbounds i8* %t.71400, i32 %call447
  %257 = load i32* %cchar, align 4, !tbaa !2
  %258 = icmp sgt i32 %257, -1
  br i1 %258, label %cont454, label %ioc_bb453

ioc_bb453:                                        ; preds = %if.end450
  %259 = zext i32 %257 to i64
  call void @__ioc_report_conversion(i32 1085, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %259, i8 0) nounwind
  br label %cont454

cont454:                                          ; preds = %ioc_bb453, %if.end450
  switch i32 %multi_width, label %sw.default.i1164 [
    i32 0, label %wcpadwidth.exit1166
    i32 1, label %sw.bb1.i1160
  ]

sw.bb1.i1160:                                     ; preds = %cont454
  %call.i1157 = call i32 @wcwidth(i32 %257) nounwind
  %cmp.i1158 = icmp slt i32 %call.i1157, 0
  %call..i1159 = select i1 %cmp.i1158, i32 0, i32 %call.i1157
  br label %wcpadwidth.exit1166

sw.default.i1164:                                 ; preds = %cont454
  %call2.i1161 = call i32 @wcwidth(i32 %257) nounwind
  %cmp3.i1162 = icmp sgt i32 %call2.i1161, 0
  %cond.i1163 = zext i1 %cmp3.i1162 to i32
  br label %wcpadwidth.exit1166

wcpadwidth.exit1166:                              ; preds = %cont454, %sw.bb1.i1160, %sw.default.i1164
  %retval.0.i1165 = phi i32 [ %cond.i1163, %sw.default.i1164 ], [ 1, %cont454 ], [ %call..i1159, %sw.bb1.i1160 ]
  %260 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %f.41401, i32 %retval.0.i1165)
  %261 = extractvalue { i32, i1 } %260, 0
  %262 = extractvalue { i32, i1 } %260, 1
  br i1 %262, label %ioc_bb456, label %for.cond443.backedge

for.cond443.backedge:                             ; preds = %wcpadwidth.exit1166, %ioc_bb456
  %cmp444 = icmp sgt i32 %261, 0
  br i1 %cmp444, label %for.body446, label %while.cond459.preheader

ioc_bb456:                                        ; preds = %wcpadwidth.exit1166
  %263 = sext i32 %retval.0.i1165 to i64
  %264 = sext i32 %f.41401 to i64
  call void @__ioc_report_sub_overflow(i32 1085, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %264, i64 %263, i8 13) nounwind
  br label %for.cond443.backedge

while.cond565.preheader:                          ; preds = %while.cond459.preheader, %while.body461, %while.cond557.preheader, %while.body559, %if.end554, %if.then438
  %r.36.ph = phi i8* [ %call76, %if.then438 ], [ %r.34, %if.end554 ], [ %r.34, %while.cond557.preheader ], [ %incdec.ptr561, %while.body559 ], [ %call76, %while.cond459.preheader ], [ %incdec.ptr463, %while.body461 ]
  %265 = load i8* %str, align 1, !tbaa !0
  %tobool5661372 = icmp eq i8 %265, 0
  br i1 %tobool5661372, label %cont756, label %while.body567

while.body461:                                    ; preds = %while.cond459.preheader, %while.body461
  %266 = phi i8 [ %267, %while.body461 ], [ %256, %while.cond459.preheader ]
  %r.271397 = phi i8* [ %incdec.ptr463, %while.body461 ], [ %call76, %while.cond459.preheader ]
  %t.81396 = phi i8* [ %incdec.ptr462, %while.body461 ], [ %t.7.lcssa, %while.cond459.preheader ]
  %incdec.ptr462 = getelementptr inbounds i8* %t.81396, i32 1
  %incdec.ptr463 = getelementptr inbounds i8* %r.271397, i32 1
  store i8 %266, i8* %r.271397, align 1, !tbaa !0
  %267 = load i8* %incdec.ptr462, align 1, !tbaa !0
  %tobool460 = icmp eq i8 %267, 0
  br i1 %tobool460, label %while.cond565.preheader, label %while.body461

if.else466:                                       ; preds = %if.else435
  %268 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %223, i32 %cond29)
  %269 = extractvalue { i32, i1 } %268, 0
  %270 = extractvalue { i32, i1 } %268, 1
  br i1 %270, label %ioc_bb467, label %cont468

ioc_bb467:                                        ; preds = %if.else466
  %271 = sext i32 %cond29 to i64
  %272 = sext i32 %223 to i64
  call void @__ioc_report_sub_overflow(i32 1097, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %272, i64 %271, i8 13) nounwind
  br label %cont468

cont468:                                          ; preds = %if.else466, %ioc_bb467
  %tobool469 = icmp eq i32 %call36, 0
  br i1 %tobool469, label %if.end554, label %if.then470

if.then470:                                       ; preds = %cont468
  %273 = icmp ne i32 %269, -2147483648
  %274 = icmp ne i32 %call36, -1
  %or471 = or i1 %273, %274
  %275 = sext i32 %269 to i64
  %276 = sext i32 %call36 to i64
  br i1 %or471, label %cont474, label %ioc_bb473

ioc_bb473:                                        ; preds = %if.then470
  call void @__ioc_report_rem_error(i32 1099, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %275, i64 %276, i8 13) nounwind
  br label %cont474

cont474:                                          ; preds = %ioc_bb473, %if.then470
  %rem475 = srem i32 %269, %call36
  %tobool476 = icmp eq i32 %rem475, 0
  br i1 %tobool476, label %if.end519, label %if.then477

if.then477:                                       ; preds = %cont474
  %277 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call36, i32 %rem475)
  %278 = extractvalue { i32, i1 } %277, 0
  %279 = extractvalue { i32, i1 } %277, 1
  br i1 %279, label %ioc_bb478, label %cont479

ioc_bb478:                                        ; preds = %if.then477
  %280 = sext i32 %rem475 to i64
  call void @__ioc_report_sub_overflow(i32 1106, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %276, i64 %280, i8 13) nounwind
  br label %cont479

cont479:                                          ; preds = %if.then477, %ioc_bb478
  call void @mb_metacharinit() nounwind
  %cmp4811390 = icmp sgt i32 %278, 0
  br i1 %cmp4811390, label %for.body483, label %while.cond496.preheader

for.body483:                                      ; preds = %cont479, %for.cond480.backedge
  %m.21392 = phi i32 [ %285, %for.cond480.backedge ], [ %278, %cont479 ]
  %t.91391 = phi i8* [ %add.ptr488, %for.cond480.backedge ], [ %premul.addr.0, %cont479 ]
  %call484 = call i32 @mb_metacharlenconv(i8* %t.91391, i32* %cchar) nounwind
  %tobool485 = icmp eq i32 %call484, 0
  br i1 %tobool485, label %while.cond496.preheader, label %if.end487

while.cond496.preheader:                          ; preds = %for.cond480.backedge, %for.body483, %cont479
  %t.9.lcssa = phi i8* [ %premul.addr.0, %cont479 ], [ %t.91391, %for.body483 ], [ %add.ptr488, %for.cond480.backedge ]
  %cmp4971385 = icmp sgt i32 %rem475, 0
  br i1 %cmp4971385, label %while.body499, label %if.end519

if.end487:                                        ; preds = %for.body483
  %add.ptr488 = getelementptr inbounds i8* %t.91391, i32 %call484
  %281 = load i32* %cchar, align 4, !tbaa !2
  %282 = icmp sgt i32 %281, -1
  br i1 %282, label %cont491, label %ioc_bb490

ioc_bb490:                                        ; preds = %if.end487
  %283 = zext i32 %281 to i64
  call void @__ioc_report_conversion(i32 1113, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %283, i8 0) nounwind
  br label %cont491

cont491:                                          ; preds = %ioc_bb490, %if.end487
  switch i32 %multi_width, label %sw.default.i1174 [
    i32 0, label %wcpadwidth.exit1176
    i32 1, label %sw.bb1.i1170
  ]

sw.bb1.i1170:                                     ; preds = %cont491
  %call.i1167 = call i32 @wcwidth(i32 %281) nounwind
  %cmp.i1168 = icmp slt i32 %call.i1167, 0
  %call..i1169 = select i1 %cmp.i1168, i32 0, i32 %call.i1167
  br label %wcpadwidth.exit1176

sw.default.i1174:                                 ; preds = %cont491
  %call2.i1171 = call i32 @wcwidth(i32 %281) nounwind
  %cmp3.i1172 = icmp sgt i32 %call2.i1171, 0
  %cond.i1173 = zext i1 %cmp3.i1172 to i32
  br label %wcpadwidth.exit1176

wcpadwidth.exit1176:                              ; preds = %cont491, %sw.bb1.i1170, %sw.default.i1174
  %retval.0.i1175 = phi i32 [ %cond.i1173, %sw.default.i1174 ], [ 1, %cont491 ], [ %call..i1169, %sw.bb1.i1170 ]
  %284 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m.21392, i32 %retval.0.i1175)
  %285 = extractvalue { i32, i1 } %284, 0
  %286 = extractvalue { i32, i1 } %284, 1
  br i1 %286, label %ioc_bb493, label %for.cond480.backedge

for.cond480.backedge:                             ; preds = %wcpadwidth.exit1176, %ioc_bb493
  %cmp481 = icmp sgt i32 %285, 0
  br i1 %cmp481, label %for.body483, label %while.cond496.preheader

ioc_bb493:                                        ; preds = %wcpadwidth.exit1176
  %287 = sext i32 %retval.0.i1175 to i64
  %288 = sext i32 %m.21392 to i64
  call void @__ioc_report_sub_overflow(i32 1113, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %288, i64 %287, i8 13) nounwind
  br label %for.cond480.backedge

while.body499:                                    ; preds = %while.cond496.preheader, %while.cond496.backedge
  %c.61388 = phi i32 [ %298, %while.cond496.backedge ], [ %rem475, %while.cond496.preheader ]
  %r.281387 = phi i8* [ %r.29, %while.cond496.backedge ], [ %call76, %while.cond496.preheader ]
  %t.101386 = phi i8* [ %t.11, %while.cond496.backedge ], [ %t.9.lcssa, %while.cond496.preheader ]
  %call500 = call i32 @mb_metacharlenconv(i8* %t.101386, i32* %cchar) nounwind
  %tobool501 = icmp eq i32 %call500, 0
  br i1 %tobool501, label %if.end519, label %while.cond504

while.cond504:                                    ; preds = %while.body499, %while.body508
  %t.11 = phi i8* [ %incdec.ptr509, %while.body508 ], [ %t.101386, %while.body499 ]
  %r.29 = phi i8* [ %incdec.ptr510, %while.body508 ], [ %r.281387, %while.body499 ]
  %cl.7 = phi i32 [ %290, %while.body508 ], [ %call500, %while.body499 ]
  %289 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.7, i32 -1)
  %290 = extractvalue { i32, i1 } %289, 0
  %291 = extractvalue { i32, i1 } %289, 1
  br i1 %291, label %ioc_bb505, label %cont506

ioc_bb505:                                        ; preds = %while.cond504
  %292 = sext i32 %cl.7 to i64
  call void @__ioc_report_add_overflow(i32 1120, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %292, i64 -1, i8 13) nounwind
  br label %cont506

cont506:                                          ; preds = %while.cond504, %ioc_bb505
  %tobool507 = icmp eq i32 %cl.7, 0
  br i1 %tobool507, label %while.end511, label %while.body508

while.body508:                                    ; preds = %cont506
  %incdec.ptr509 = getelementptr inbounds i8* %t.11, i32 1
  %293 = load i8* %t.11, align 1, !tbaa !0
  %incdec.ptr510 = getelementptr inbounds i8* %r.29, i32 1
  store i8 %293, i8* %r.29, align 1, !tbaa !0
  br label %while.cond504

while.end511:                                     ; preds = %cont506
  %294 = load i32* %cchar, align 4, !tbaa !2
  %295 = icmp sgt i32 %294, -1
  br i1 %295, label %cont514, label %ioc_bb513

ioc_bb513:                                        ; preds = %while.end511
  %296 = zext i32 %294 to i64
  call void @__ioc_report_conversion(i32 1122, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %296, i8 0) nounwind
  br label %cont514

cont514:                                          ; preds = %ioc_bb513, %while.end511
  switch i32 %multi_width, label %sw.default.i1184 [
    i32 0, label %wcpadwidth.exit1186
    i32 1, label %sw.bb1.i1180
  ]

sw.bb1.i1180:                                     ; preds = %cont514
  %call.i1177 = call i32 @wcwidth(i32 %294) nounwind
  %cmp.i1178 = icmp slt i32 %call.i1177, 0
  %call..i1179 = select i1 %cmp.i1178, i32 0, i32 %call.i1177
  br label %wcpadwidth.exit1186

sw.default.i1184:                                 ; preds = %cont514
  %call2.i1181 = call i32 @wcwidth(i32 %294) nounwind
  %cmp3.i1182 = icmp sgt i32 %call2.i1181, 0
  %cond.i1183 = zext i1 %cmp3.i1182 to i32
  br label %wcpadwidth.exit1186

wcpadwidth.exit1186:                              ; preds = %cont514, %sw.bb1.i1180, %sw.default.i1184
  %retval.0.i1185 = phi i32 [ %cond.i1183, %sw.default.i1184 ], [ 1, %cont514 ], [ %call..i1179, %sw.bb1.i1180 ]
  %297 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.61388, i32 %retval.0.i1185)
  %298 = extractvalue { i32, i1 } %297, 0
  %299 = extractvalue { i32, i1 } %297, 1
  br i1 %299, label %ioc_bb516, label %while.cond496.backedge

while.cond496.backedge:                           ; preds = %wcpadwidth.exit1186, %ioc_bb516
  %cmp497 = icmp sgt i32 %298, 0
  br i1 %cmp497, label %while.body499, label %if.end519

ioc_bb516:                                        ; preds = %wcpadwidth.exit1186
  %300 = sext i32 %retval.0.i1185 to i64
  %301 = sext i32 %c.61388 to i64
  call void @__ioc_report_sub_overflow(i32 1122, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %301, i64 %300, i8 13) nounwind
  br label %while.cond496.backedge

if.end519:                                        ; preds = %while.cond496.preheader, %while.body499, %while.cond496.backedge, %cont474
  %r.30 = phi i8* [ %call76, %cont474 ], [ %call76, %while.cond496.preheader ], [ %r.281387, %while.body499 ], [ %r.29, %while.cond496.backedge ]
  br i1 %or471, label %cont523, label %ioc_bb522

ioc_bb522:                                        ; preds = %if.end519
  call void @__ioc_report_div_error(i32 1125, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %275, i64 %276, i8 13) nounwind
  br label %cont523

cont523:                                          ; preds = %ioc_bb522, %if.end519
  %div524 = sdiv i32 %269, %call36
  %cmp5311380 = icmp sgt i32 %call36, 0
  br label %for.cond525

for.cond525:                                      ; preds = %for.body529, %for.body533, %for.cond530.backedge, %cont523
  %r.31 = phi i8* [ %r.30, %cont523 ], [ %r.31, %for.body529 ], [ %r.321382, %for.body533 ], [ %r.33, %for.cond530.backedge ]
  %cc.2 = phi i32 [ %div524, %cont523 ], [ %303, %for.body529 ], [ %303, %for.body533 ], [ %303, %for.cond530.backedge ]
  %302 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cc.2, i32 -1)
  %303 = extractvalue { i32, i1 } %302, 0
  %304 = extractvalue { i32, i1 } %302, 1
  br i1 %304, label %ioc_bb526, label %cont527

ioc_bb526:                                        ; preds = %for.cond525
  %305 = sext i32 %cc.2 to i64
  call void @__ioc_report_add_overflow(i32 1125, i32 38, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %305, i64 -1, i8 13) nounwind
  br label %cont527

cont527:                                          ; preds = %for.cond525, %ioc_bb526
  %tobool528 = icmp eq i32 %cc.2, 0
  br i1 %tobool528, label %if.end554, label %for.body529

for.body529:                                      ; preds = %cont527
  call void @mb_metacharinit() nounwind
  br i1 %cmp5311380, label %for.body533, label %for.cond525

for.body533:                                      ; preds = %for.body529, %for.cond530.backedge
  %c.71383 = phi i32 [ %315, %for.cond530.backedge ], [ %call36, %for.body529 ]
  %r.321382 = phi i8* [ %r.33, %for.cond530.backedge ], [ %r.31, %for.body529 ]
  %t.121381 = phi i8* [ %t.13, %for.cond530.backedge ], [ %premul.addr.0, %for.body529 ]
  %call534 = call i32 @mb_metacharlenconv(i8* %t.121381, i32* %cchar) nounwind
  %tobool535 = icmp eq i32 %call534, 0
  br i1 %tobool535, label %for.cond525, label %while.cond538

while.cond538:                                    ; preds = %for.body533, %while.body542
  %t.13 = phi i8* [ %incdec.ptr543, %while.body542 ], [ %t.121381, %for.body533 ]
  %r.33 = phi i8* [ %incdec.ptr544, %while.body542 ], [ %r.321382, %for.body533 ]
  %cl.8 = phi i32 [ %307, %while.body542 ], [ %call534, %for.body533 ]
  %306 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.8, i32 -1)
  %307 = extractvalue { i32, i1 } %306, 0
  %308 = extractvalue { i32, i1 } %306, 1
  br i1 %308, label %ioc_bb539, label %cont540

ioc_bb539:                                        ; preds = %while.cond538
  %309 = sext i32 %cl.8 to i64
  call void @__ioc_report_add_overflow(i32 1134, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %309, i64 -1, i8 13) nounwind
  br label %cont540

cont540:                                          ; preds = %while.cond538, %ioc_bb539
  %tobool541 = icmp eq i32 %cl.8, 0
  br i1 %tobool541, label %while.end545, label %while.body542

while.body542:                                    ; preds = %cont540
  %incdec.ptr543 = getelementptr inbounds i8* %t.13, i32 1
  %310 = load i8* %t.13, align 1, !tbaa !0
  %incdec.ptr544 = getelementptr inbounds i8* %r.33, i32 1
  store i8 %310, i8* %r.33, align 1, !tbaa !0
  br label %while.cond538

while.end545:                                     ; preds = %cont540
  %311 = load i32* %cchar, align 4, !tbaa !2
  %312 = icmp sgt i32 %311, -1
  br i1 %312, label %cont548, label %ioc_bb547

ioc_bb547:                                        ; preds = %while.end545
  %313 = zext i32 %311 to i64
  call void @__ioc_report_conversion(i32 1136, i32 33, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %313, i8 0) nounwind
  br label %cont548

cont548:                                          ; preds = %ioc_bb547, %while.end545
  switch i32 %multi_width, label %sw.default.i1194 [
    i32 0, label %wcpadwidth.exit1196
    i32 1, label %sw.bb1.i1190
  ]

sw.bb1.i1190:                                     ; preds = %cont548
  %call.i1187 = call i32 @wcwidth(i32 %311) nounwind
  %cmp.i1188 = icmp slt i32 %call.i1187, 0
  %call..i1189 = select i1 %cmp.i1188, i32 0, i32 %call.i1187
  br label %wcpadwidth.exit1196

sw.default.i1194:                                 ; preds = %cont548
  %call2.i1191 = call i32 @wcwidth(i32 %311) nounwind
  %cmp3.i1192 = icmp sgt i32 %call2.i1191, 0
  %cond.i1193 = zext i1 %cmp3.i1192 to i32
  br label %wcpadwidth.exit1196

wcpadwidth.exit1196:                              ; preds = %cont548, %sw.bb1.i1190, %sw.default.i1194
  %retval.0.i1195 = phi i32 [ %cond.i1193, %sw.default.i1194 ], [ 1, %cont548 ], [ %call..i1189, %sw.bb1.i1190 ]
  %314 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.71383, i32 %retval.0.i1195)
  %315 = extractvalue { i32, i1 } %314, 0
  %316 = extractvalue { i32, i1 } %314, 1
  br i1 %316, label %ioc_bb550, label %for.cond530.backedge

for.cond530.backedge:                             ; preds = %wcpadwidth.exit1196, %ioc_bb550
  %cmp531 = icmp sgt i32 %315, 0
  br i1 %cmp531, label %for.body533, label %for.cond525

ioc_bb550:                                        ; preds = %wcpadwidth.exit1196
  %317 = sext i32 %retval.0.i1195 to i64
  %318 = sext i32 %c.71383 to i64
  call void @__ioc_report_sub_overflow(i32 1136, i32 19, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %318, i64 %317, i8 13) nounwind
  br label %for.cond530.backedge

if.end554:                                        ; preds = %cont527, %cont468
  %r.34 = phi i8* [ %call76, %cont468 ], [ %r.31, %cont527 ]
  br i1 %tobool24, label %while.cond557.preheader, label %while.cond565.preheader

while.cond557.preheader:                          ; preds = %if.end554
  %319 = load i8* %preone.addr.0, align 1, !tbaa !0
  %tobool5581376 = icmp eq i8 %319, 0
  br i1 %tobool5581376, label %while.cond565.preheader, label %while.body559

while.body559:                                    ; preds = %while.cond557.preheader, %while.body559
  %320 = phi i8 [ %321, %while.body559 ], [ %319, %while.cond557.preheader ]
  %preone.addr.21378 = phi i8* [ %incdec.ptr560, %while.body559 ], [ %preone.addr.0, %while.cond557.preheader ]
  %r.351377 = phi i8* [ %incdec.ptr561, %while.body559 ], [ %r.34, %while.cond557.preheader ]
  %incdec.ptr560 = getelementptr inbounds i8* %preone.addr.21378, i32 1
  %incdec.ptr561 = getelementptr inbounds i8* %r.351377, i32 1
  store i8 %320, i8* %r.351377, align 1, !tbaa !0
  %321 = load i8* %incdec.ptr560, align 1, !tbaa !0
  %tobool558 = icmp eq i8 %321, 0
  br i1 %tobool558, label %while.cond565.preheader, label %while.body559

while.body567:                                    ; preds = %while.cond565.preheader, %while.body567
  %322 = phi i8 [ %323, %while.body567 ], [ %265, %while.cond565.preheader ]
  %str.addr.121374 = phi i8* [ %incdec.ptr568, %while.body567 ], [ %str, %while.cond565.preheader ]
  %r.361373 = phi i8* [ %incdec.ptr569, %while.body567 ], [ %r.36.ph, %while.cond565.preheader ]
  %incdec.ptr568 = getelementptr inbounds i8* %str.addr.121374, i32 1
  %incdec.ptr569 = getelementptr inbounds i8* %r.361373, i32 1
  store i8 %322, i8* %r.361373, align 1, !tbaa !0
  %323 = load i8* %incdec.ptr568, align 1, !tbaa !0
  %tobool566 = icmp eq i8 %323, 0
  br i1 %tobool566, label %cont756, label %while.body567

if.else573:                                       ; preds = %cont75
  br i1 %tobool79, label %if.then575, label %cont756

if.then575:                                       ; preds = %if.else573
  %324 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %postnum, i32 %call23)
  %325 = extractvalue { i32, i1 } %324, 0
  %326 = extractvalue { i32, i1 } %324, 1
  br i1 %326, label %ioc_bb576, label %cont577

ioc_bb576:                                        ; preds = %if.then575
  %327 = sext i32 %call23 to i64
  call void @__ioc_report_sub_overflow(i32 1164, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %10, i64 %327, i8 13) nounwind
  br label %cont577

cont577:                                          ; preds = %if.then575, %ioc_bb576
  call void @mb_metacharinit() nounwind
  %cmp578 = icmp slt i32 %325, 1
  br i1 %cmp578, label %for.cond581.preheader, label %for.cond605.preheader

for.cond605.preheader:                            ; preds = %cont577
  %328 = load i8* %str, align 1, !tbaa !0
  %tobool6061283 = icmp eq i8 %328, 0
  br i1 %tobool6061283, label %for.end626, label %for.body607

for.cond581.preheader:                            ; preds = %cont577
  %cmp5821257 = icmp sgt i32 %postnum, 0
  br i1 %cmp5821257, label %for.body584, label %cont756

for.body584:                                      ; preds = %for.cond581.preheader, %for.cond581.backedge
  %c.81260 = phi i32 [ %338, %for.cond581.backedge ], [ %postnum, %for.cond581.preheader ]
  %str.addr.131259 = phi i8* [ %str.addr.14, %for.cond581.backedge ], [ %str, %for.cond581.preheader ]
  %r.371258 = phi i8* [ %r.38, %for.cond581.backedge ], [ %call76, %for.cond581.preheader ]
  %call585 = call i32 @mb_metacharlenconv(i8* %str.addr.131259, i32* %cchar) nounwind
  %tobool586 = icmp eq i32 %call585, 0
  br i1 %tobool586, label %cont756, label %while.cond589

while.cond589:                                    ; preds = %for.body584, %while.body593
  %r.38 = phi i8* [ %incdec.ptr595, %while.body593 ], [ %r.371258, %for.body584 ]
  %str.addr.14 = phi i8* [ %incdec.ptr594, %while.body593 ], [ %str.addr.131259, %for.body584 ]
  %cl.9 = phi i32 [ %330, %while.body593 ], [ %call585, %for.body584 ]
  %329 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.9, i32 -1)
  %330 = extractvalue { i32, i1 } %329, 0
  %331 = extractvalue { i32, i1 } %329, 1
  br i1 %331, label %ioc_bb590, label %cont591

ioc_bb590:                                        ; preds = %while.cond589
  %332 = sext i32 %cl.9 to i64
  call void @__ioc_report_add_overflow(i32 1175, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %332, i64 -1, i8 13) nounwind
  br label %cont591

cont591:                                          ; preds = %while.cond589, %ioc_bb590
  %tobool592 = icmp eq i32 %cl.9, 0
  br i1 %tobool592, label %while.end596, label %while.body593

while.body593:                                    ; preds = %cont591
  %incdec.ptr594 = getelementptr inbounds i8* %str.addr.14, i32 1
  %333 = load i8* %str.addr.14, align 1, !tbaa !0
  %incdec.ptr595 = getelementptr inbounds i8* %r.38, i32 1
  store i8 %333, i8* %r.38, align 1, !tbaa !0
  br label %while.cond589

while.end596:                                     ; preds = %cont591
  %334 = load i32* %cchar, align 4, !tbaa !2
  %335 = icmp sgt i32 %334, -1
  br i1 %335, label %cont599, label %ioc_bb598

ioc_bb598:                                        ; preds = %while.end596
  %336 = zext i32 %334 to i64
  call void @__ioc_report_conversion(i32 1177, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %336, i8 0) nounwind
  br label %cont599

cont599:                                          ; preds = %ioc_bb598, %while.end596
  switch i32 %multi_width, label %sw.default.i1204 [
    i32 0, label %wcpadwidth.exit1206
    i32 1, label %sw.bb1.i1200
  ]

sw.bb1.i1200:                                     ; preds = %cont599
  %call.i1197 = call i32 @wcwidth(i32 %334) nounwind
  %cmp.i1198 = icmp slt i32 %call.i1197, 0
  %call..i1199 = select i1 %cmp.i1198, i32 0, i32 %call.i1197
  br label %wcpadwidth.exit1206

sw.default.i1204:                                 ; preds = %cont599
  %call2.i1201 = call i32 @wcwidth(i32 %334) nounwind
  %cmp3.i1202 = icmp sgt i32 %call2.i1201, 0
  %cond.i1203 = zext i1 %cmp3.i1202 to i32
  br label %wcpadwidth.exit1206

wcpadwidth.exit1206:                              ; preds = %cont599, %sw.bb1.i1200, %sw.default.i1204
  %retval.0.i1205 = phi i32 [ %cond.i1203, %sw.default.i1204 ], [ 1, %cont599 ], [ %call..i1199, %sw.bb1.i1200 ]
  %337 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.81260, i32 %retval.0.i1205)
  %338 = extractvalue { i32, i1 } %337, 0
  %339 = extractvalue { i32, i1 } %337, 1
  br i1 %339, label %ioc_bb601, label %for.cond581.backedge

for.cond581.backedge:                             ; preds = %wcpadwidth.exit1206, %ioc_bb601
  %cmp582 = icmp sgt i32 %338, 0
  br i1 %cmp582, label %for.body584, label %cont756

ioc_bb601:                                        ; preds = %wcpadwidth.exit1206
  %340 = sext i32 %retval.0.i1205 to i64
  %341 = sext i32 %c.81260 to i64
  call void @__ioc_report_sub_overflow(i32 1177, i32 11, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %341, i64 %340, i8 13) nounwind
  br label %for.cond581.backedge

for.body607:                                      ; preds = %for.cond605.preheader, %for.cond605.backedge
  %c.91286 = phi i32 [ %351, %for.cond605.backedge ], [ %call23, %for.cond605.preheader ]
  %str.addr.151285 = phi i8* [ %str.addr.16, %for.cond605.backedge ], [ %str, %for.cond605.preheader ]
  %r.391284 = phi i8* [ %r.40, %for.cond605.backedge ], [ %call76, %for.cond605.preheader ]
  %call608 = call i32 @mb_metacharlenconv(i8* %str.addr.151285, i32* %cchar) nounwind
  %tobool609 = icmp eq i32 %call608, 0
  br i1 %tobool609, label %for.end626, label %while.cond612

while.cond612:                                    ; preds = %for.body607, %while.body616
  %r.40 = phi i8* [ %incdec.ptr618, %while.body616 ], [ %r.391284, %for.body607 ]
  %str.addr.16 = phi i8* [ %incdec.ptr617, %while.body616 ], [ %str.addr.151285, %for.body607 ]
  %cl.10 = phi i32 [ %343, %while.body616 ], [ %call608, %for.body607 ]
  %342 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.10, i32 -1)
  %343 = extractvalue { i32, i1 } %342, 0
  %344 = extractvalue { i32, i1 } %342, 1
  br i1 %344, label %ioc_bb613, label %cont614

ioc_bb613:                                        ; preds = %while.cond612
  %345 = sext i32 %cl.10 to i64
  call void @__ioc_report_add_overflow(i32 1190, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %345, i64 -1, i8 13) nounwind
  br label %cont614

cont614:                                          ; preds = %while.cond612, %ioc_bb613
  %tobool615 = icmp eq i32 %cl.10, 0
  br i1 %tobool615, label %while.end619, label %while.body616

while.body616:                                    ; preds = %cont614
  %incdec.ptr617 = getelementptr inbounds i8* %str.addr.16, i32 1
  %346 = load i8* %str.addr.16, align 1, !tbaa !0
  %incdec.ptr618 = getelementptr inbounds i8* %r.40, i32 1
  store i8 %346, i8* %r.40, align 1, !tbaa !0
  br label %while.cond612

while.end619:                                     ; preds = %cont614
  %347 = load i32* %cchar, align 4, !tbaa !2
  %348 = icmp sgt i32 %347, -1
  br i1 %348, label %cont622, label %ioc_bb621

ioc_bb621:                                        ; preds = %while.end619
  %349 = zext i32 %347 to i64
  call void @__ioc_report_conversion(i32 1192, i32 25, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %349, i8 0) nounwind
  br label %cont622

cont622:                                          ; preds = %ioc_bb621, %while.end619
  switch i32 %multi_width, label %sw.default.i1214 [
    i32 0, label %wcpadwidth.exit1216
    i32 1, label %sw.bb1.i1210
  ]

sw.bb1.i1210:                                     ; preds = %cont622
  %call.i1207 = call i32 @wcwidth(i32 %347) nounwind
  %cmp.i1208 = icmp slt i32 %call.i1207, 0
  %call..i1209 = select i1 %cmp.i1208, i32 0, i32 %call.i1207
  br label %wcpadwidth.exit1216

sw.default.i1214:                                 ; preds = %cont622
  %call2.i1211 = call i32 @wcwidth(i32 %347) nounwind
  %cmp3.i1212 = icmp sgt i32 %call2.i1211, 0
  %cond.i1213 = zext i1 %cmp3.i1212 to i32
  br label %wcpadwidth.exit1216

wcpadwidth.exit1216:                              ; preds = %cont622, %sw.bb1.i1210, %sw.default.i1214
  %retval.0.i1215 = phi i32 [ %cond.i1213, %sw.default.i1214 ], [ 1, %cont622 ], [ %call..i1209, %sw.bb1.i1210 ]
  %350 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.91286, i32 %retval.0.i1215)
  %351 = extractvalue { i32, i1 } %350, 0
  %352 = extractvalue { i32, i1 } %350, 1
  br i1 %352, label %ioc_bb624, label %for.cond605.backedge

for.cond605.backedge:                             ; preds = %wcpadwidth.exit1216, %ioc_bb624
  %353 = load i8* %str.addr.16, align 1, !tbaa !0
  %tobool606 = icmp eq i8 %353, 0
  br i1 %tobool606, label %for.end626, label %for.body607

ioc_bb624:                                        ; preds = %wcpadwidth.exit1216
  %354 = sext i32 %retval.0.i1215 to i64
  %355 = sext i32 %c.91286 to i64
  call void @__ioc_report_sub_overflow(i32 1192, i32 11, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %355, i64 %354, i8 13) nounwind
  br label %for.cond605.backedge

for.end626:                                       ; preds = %for.cond605.backedge, %for.body607, %for.cond605.preheader
  %r.39.lcssa = phi i8* [ %call76, %for.cond605.preheader ], [ %r.391284, %for.body607 ], [ %r.40, %for.cond605.backedge ]
  call void @mb_metacharinit() nounwind
  %cmp627 = icmp sgt i32 %325, %cond35
  br i1 %cmp627, label %if.else656, label %if.then629

if.then629:                                       ; preds = %for.end626
  %cmp6331278 = icmp sgt i32 %325, 0
  %or.cond1426 = and i1 %tobool30, %cmp6331278
  br i1 %or.cond1426, label %for.body635, label %cont756

for.body635:                                      ; preds = %if.then629, %for.cond632.backedge
  %c.101281 = phi i32 [ %365, %for.cond632.backedge ], [ %325, %if.then629 ]
  %postone.addr.41280 = phi i8* [ %postone.addr.5, %for.cond632.backedge ], [ %postone.addr.0, %if.then629 ]
  %r.411279 = phi i8* [ %r.42, %for.cond632.backedge ], [ %r.39.lcssa, %if.then629 ]
  %call636 = call i32 @mb_metacharlenconv(i8* %postone.addr.41280, i32* %cchar) nounwind
  %tobool637 = icmp eq i32 %call636, 0
  br i1 %tobool637, label %cont756, label %while.cond640

while.cond640:                                    ; preds = %for.body635, %while.body644
  %r.42 = phi i8* [ %incdec.ptr646, %while.body644 ], [ %r.411279, %for.body635 ]
  %postone.addr.5 = phi i8* [ %incdec.ptr645, %while.body644 ], [ %postone.addr.41280, %for.body635 ]
  %cl.11 = phi i32 [ %357, %while.body644 ], [ %call636, %for.body635 ]
  %356 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.11, i32 -1)
  %357 = extractvalue { i32, i1 } %356, 0
  %358 = extractvalue { i32, i1 } %356, 1
  br i1 %358, label %ioc_bb641, label %cont642

ioc_bb641:                                        ; preds = %while.cond640
  %359 = sext i32 %cl.11 to i64
  call void @__ioc_report_add_overflow(i32 1205, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %359, i64 -1, i8 13) nounwind
  br label %cont642

cont642:                                          ; preds = %while.cond640, %ioc_bb641
  %tobool643 = icmp eq i32 %cl.11, 0
  br i1 %tobool643, label %while.end647, label %while.body644

while.body644:                                    ; preds = %cont642
  %incdec.ptr645 = getelementptr inbounds i8* %postone.addr.5, i32 1
  %360 = load i8* %postone.addr.5, align 1, !tbaa !0
  %incdec.ptr646 = getelementptr inbounds i8* %r.42, i32 1
  store i8 %360, i8* %r.42, align 1, !tbaa !0
  br label %while.cond640

while.end647:                                     ; preds = %cont642
  %361 = load i32* %cchar, align 4, !tbaa !2
  %362 = icmp sgt i32 %361, -1
  br i1 %362, label %cont650, label %ioc_bb649

ioc_bb649:                                        ; preds = %while.end647
  %363 = zext i32 %361 to i64
  call void @__ioc_report_conversion(i32 1207, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %363, i8 0) nounwind
  br label %cont650

cont650:                                          ; preds = %ioc_bb649, %while.end647
  switch i32 %multi_width, label %sw.default.i1224 [
    i32 0, label %wcpadwidth.exit1226
    i32 1, label %sw.bb1.i1220
  ]

sw.bb1.i1220:                                     ; preds = %cont650
  %call.i1217 = call i32 @wcwidth(i32 %361) nounwind
  %cmp.i1218 = icmp slt i32 %call.i1217, 0
  %call..i1219 = select i1 %cmp.i1218, i32 0, i32 %call.i1217
  br label %wcpadwidth.exit1226

sw.default.i1224:                                 ; preds = %cont650
  %call2.i1221 = call i32 @wcwidth(i32 %361) nounwind
  %cmp3.i1222 = icmp sgt i32 %call2.i1221, 0
  %cond.i1223 = zext i1 %cmp3.i1222 to i32
  br label %wcpadwidth.exit1226

wcpadwidth.exit1226:                              ; preds = %cont650, %sw.bb1.i1220, %sw.default.i1224
  %retval.0.i1225 = phi i32 [ %cond.i1223, %sw.default.i1224 ], [ 1, %cont650 ], [ %call..i1219, %sw.bb1.i1220 ]
  %364 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.101281, i32 %retval.0.i1225)
  %365 = extractvalue { i32, i1 } %364, 0
  %366 = extractvalue { i32, i1 } %364, 1
  br i1 %366, label %ioc_bb652, label %for.cond632.backedge

for.cond632.backedge:                             ; preds = %wcpadwidth.exit1226, %ioc_bb652
  %cmp633 = icmp sgt i32 %365, 0
  br i1 %cmp633, label %for.body635, label %cont756

ioc_bb652:                                        ; preds = %wcpadwidth.exit1226
  %367 = sext i32 %retval.0.i1225 to i64
  %368 = sext i32 %c.101281 to i64
  call void @__ioc_report_sub_overflow(i32 1207, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %368, i64 %367, i8 13) nounwind
  br label %for.cond632.backedge

if.else656:                                       ; preds = %for.end626
  br i1 %tobool30, label %if.then658, label %if.end683

if.then658:                                       ; preds = %if.else656
  %369 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %325, i32 %cond35)
  %370 = extractvalue { i32, i1 } %369, 0
  %371 = extractvalue { i32, i1 } %369, 1
  br i1 %371, label %ioc_bb659, label %for.cond661.preheader

ioc_bb659:                                        ; preds = %if.then658
  %372 = sext i32 %cond35 to i64
  %373 = sext i32 %325 to i64
  call void @__ioc_report_sub_overflow(i32 1213, i32 13, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %373, i64 %372, i8 13) nounwind
  br label %for.cond661.preheader

for.cond661.preheader:                            ; preds = %if.then658, %ioc_bb659
  %374 = load i8* %postone.addr.0, align 1, !tbaa !0
  %tobool6621272 = icmp eq i8 %374, 0
  br i1 %tobool6621272, label %if.end683, label %for.body663

for.body663:                                      ; preds = %for.cond661.preheader, %for.cond661.backedge
  %c.111275 = phi i32 [ %384, %for.cond661.backedge ], [ %cond35, %for.cond661.preheader ]
  %postone.addr.61274 = phi i8* [ %postone.addr.7, %for.cond661.backedge ], [ %postone.addr.0, %for.cond661.preheader ]
  %r.431273 = phi i8* [ %r.44, %for.cond661.backedge ], [ %r.39.lcssa, %for.cond661.preheader ]
  %call664 = call i32 @mb_metacharlenconv(i8* %postone.addr.61274, i32* %cchar) nounwind
  %tobool665 = icmp eq i32 %call664, 0
  br i1 %tobool665, label %if.end683, label %while.cond668

while.cond668:                                    ; preds = %for.body663, %while.body672
  %r.44 = phi i8* [ %incdec.ptr674, %while.body672 ], [ %r.431273, %for.body663 ]
  %postone.addr.7 = phi i8* [ %incdec.ptr673, %while.body672 ], [ %postone.addr.61274, %for.body663 ]
  %cl.12 = phi i32 [ %376, %while.body672 ], [ %call664, %for.body663 ]
  %375 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.12, i32 -1)
  %376 = extractvalue { i32, i1 } %375, 0
  %377 = extractvalue { i32, i1 } %375, 1
  br i1 %377, label %ioc_bb669, label %cont670

ioc_bb669:                                        ; preds = %while.cond668
  %378 = sext i32 %cl.12 to i64
  call void @__ioc_report_add_overflow(i32 1219, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %378, i64 -1, i8 13) nounwind
  br label %cont670

cont670:                                          ; preds = %while.cond668, %ioc_bb669
  %tobool671 = icmp eq i32 %cl.12, 0
  br i1 %tobool671, label %while.end675, label %while.body672

while.body672:                                    ; preds = %cont670
  %incdec.ptr673 = getelementptr inbounds i8* %postone.addr.7, i32 1
  %379 = load i8* %postone.addr.7, align 1, !tbaa !0
  %incdec.ptr674 = getelementptr inbounds i8* %r.44, i32 1
  store i8 %379, i8* %r.44, align 1, !tbaa !0
  br label %while.cond668

while.end675:                                     ; preds = %cont670
  %380 = load i32* %cchar, align 4, !tbaa !2
  %381 = icmp sgt i32 %380, -1
  br i1 %381, label %cont678, label %ioc_bb677

ioc_bb677:                                        ; preds = %while.end675
  %382 = zext i32 %380 to i64
  call void @__ioc_report_conversion(i32 1221, i32 29, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %382, i8 0) nounwind
  br label %cont678

cont678:                                          ; preds = %ioc_bb677, %while.end675
  switch i32 %multi_width, label %sw.default.i1234 [
    i32 0, label %wcpadwidth.exit1236
    i32 1, label %sw.bb1.i1230
  ]

sw.bb1.i1230:                                     ; preds = %cont678
  %call.i1227 = call i32 @wcwidth(i32 %380) nounwind
  %cmp.i1228 = icmp slt i32 %call.i1227, 0
  %call..i1229 = select i1 %cmp.i1228, i32 0, i32 %call.i1227
  br label %wcpadwidth.exit1236

sw.default.i1234:                                 ; preds = %cont678
  %call2.i1231 = call i32 @wcwidth(i32 %380) nounwind
  %cmp3.i1232 = icmp sgt i32 %call2.i1231, 0
  %cond.i1233 = zext i1 %cmp3.i1232 to i32
  br label %wcpadwidth.exit1236

wcpadwidth.exit1236:                              ; preds = %cont678, %sw.bb1.i1230, %sw.default.i1234
  %retval.0.i1235 = phi i32 [ %cond.i1233, %sw.default.i1234 ], [ 1, %cont678 ], [ %call..i1229, %sw.bb1.i1230 ]
  %383 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.111275, i32 %retval.0.i1235)
  %384 = extractvalue { i32, i1 } %383, 0
  %385 = extractvalue { i32, i1 } %383, 1
  br i1 %385, label %ioc_bb680, label %for.cond661.backedge

for.cond661.backedge:                             ; preds = %wcpadwidth.exit1236, %ioc_bb680
  %386 = load i8* %postone.addr.7, align 1, !tbaa !0
  %tobool662 = icmp eq i8 %386, 0
  br i1 %tobool662, label %if.end683, label %for.body663

ioc_bb680:                                        ; preds = %wcpadwidth.exit1236
  %387 = sext i32 %retval.0.i1235 to i64
  %388 = sext i32 %c.111275 to i64
  call void @__ioc_report_sub_overflow(i32 1221, i32 15, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %388, i64 %387, i8 13) nounwind
  br label %for.cond661.backedge

if.end683:                                        ; preds = %for.cond661.preheader, %for.body663, %for.cond661.backedge, %if.else656
  %r.45 = phi i8* [ %r.39.lcssa, %if.else656 ], [ %r.39.lcssa, %for.cond661.preheader ], [ %r.431273, %for.body663 ], [ %r.44, %for.cond661.backedge ]
  %f.5 = phi i32 [ %325, %if.else656 ], [ %370, %for.cond661.preheader ], [ %370, %for.body663 ], [ %370, %for.cond661.backedge ]
  %tobool684 = icmp eq i32 %call37, 0
  br i1 %tobool684, label %cont756, label %if.then685

if.then685:                                       ; preds = %if.end683
  %389 = icmp ne i32 %f.5, -2147483648
  %390 = icmp ne i32 %call37, -1
  %or686 = or i1 %389, %390
  %391 = sext i32 %f.5 to i64
  %392 = sext i32 %call37 to i64
  br i1 %or686, label %cont689, label %ioc_bb688

ioc_bb688:                                        ; preds = %if.then685
  call void @__ioc_report_div_error(i32 1226, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %391, i64 %392, i8 13) nounwind
  br label %cont689

cont689:                                          ; preds = %ioc_bb688, %if.then685
  %div690 = sdiv i32 %f.5, %call37
  br label %for.cond691

for.cond691:                                      ; preds = %for.body695, %for.body698, %for.cond696.backedge, %cont689
  %r.46 = phi i8* [ %r.45, %cont689 ], [ %r.46, %for.body695 ], [ %r.471269, %for.body698 ], [ %r.48, %for.cond696.backedge ]
  %cc.3 = phi i32 [ %div690, %cont689 ], [ %394, %for.body695 ], [ %394, %for.body698 ], [ %394, %for.cond696.backedge ]
  %393 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cc.3, i32 -1)
  %394 = extractvalue { i32, i1 } %393, 0
  %395 = extractvalue { i32, i1 } %393, 1
  br i1 %395, label %ioc_bb692, label %cont693

ioc_bb692:                                        ; preds = %for.cond691
  %396 = sext i32 %cc.3 to i64
  call void @__ioc_report_add_overflow(i32 1226, i32 37, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %396, i64 -1, i8 13) nounwind
  br label %cont693

cont693:                                          ; preds = %for.cond691, %ioc_bb692
  %tobool694 = icmp eq i32 %cc.3, 0
  br i1 %tobool694, label %for.end718, label %for.body695

for.body695:                                      ; preds = %cont693
  call void @mb_metacharinit() nounwind
  %397 = load i8* %postmul.addr.0, align 1, !tbaa !0
  %tobool6971267 = icmp eq i8 %397, 0
  br i1 %tobool6971267, label %for.cond691, label %for.body698

for.body698:                                      ; preds = %for.body695, %for.cond696.backedge
  %c.121270 = phi i32 [ %407, %for.cond696.backedge ], [ %call37, %for.body695 ]
  %r.471269 = phi i8* [ %r.48, %for.cond696.backedge ], [ %r.46, %for.body695 ]
  %t.141268 = phi i8* [ %t.15, %for.cond696.backedge ], [ %postmul.addr.0, %for.body695 ]
  %call699 = call i32 @mb_metacharlenconv(i8* %t.141268, i32* %cchar) nounwind
  %tobool700 = icmp eq i32 %call699, 0
  br i1 %tobool700, label %for.cond691, label %while.cond703

while.cond703:                                    ; preds = %for.body698, %while.body707
  %t.15 = phi i8* [ %incdec.ptr708, %while.body707 ], [ %t.141268, %for.body698 ]
  %r.48 = phi i8* [ %incdec.ptr709, %while.body707 ], [ %r.471269, %for.body698 ]
  %cl.13 = phi i32 [ %399, %while.body707 ], [ %call699, %for.body698 ]
  %398 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.13, i32 -1)
  %399 = extractvalue { i32, i1 } %398, 0
  %400 = extractvalue { i32, i1 } %398, 1
  br i1 %400, label %ioc_bb704, label %cont705

ioc_bb704:                                        ; preds = %while.cond703
  %401 = sext i32 %cl.13 to i64
  call void @__ioc_report_add_overflow(i32 1232, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %401, i64 -1, i8 13) nounwind
  br label %cont705

cont705:                                          ; preds = %while.cond703, %ioc_bb704
  %tobool706 = icmp eq i32 %cl.13, 0
  br i1 %tobool706, label %while.end710, label %while.body707

while.body707:                                    ; preds = %cont705
  %incdec.ptr708 = getelementptr inbounds i8* %t.15, i32 1
  %402 = load i8* %t.15, align 1, !tbaa !0
  %incdec.ptr709 = getelementptr inbounds i8* %r.48, i32 1
  store i8 %402, i8* %r.48, align 1, !tbaa !0
  br label %while.cond703

while.end710:                                     ; preds = %cont705
  %403 = load i32* %cchar, align 4, !tbaa !2
  %404 = icmp sgt i32 %403, -1
  br i1 %404, label %cont713, label %ioc_bb712

ioc_bb712:                                        ; preds = %while.end710
  %405 = zext i32 %403 to i64
  call void @__ioc_report_conversion(i32 1234, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %405, i8 0) nounwind
  br label %cont713

cont713:                                          ; preds = %ioc_bb712, %while.end710
  switch i32 %multi_width, label %sw.default.i1244 [
    i32 0, label %wcpadwidth.exit1246
    i32 1, label %sw.bb1.i1240
  ]

sw.bb1.i1240:                                     ; preds = %cont713
  %call.i1237 = call i32 @wcwidth(i32 %403) nounwind
  %cmp.i1238 = icmp slt i32 %call.i1237, 0
  %call..i1239 = select i1 %cmp.i1238, i32 0, i32 %call.i1237
  br label %wcpadwidth.exit1246

sw.default.i1244:                                 ; preds = %cont713
  %call2.i1241 = call i32 @wcwidth(i32 %403) nounwind
  %cmp3.i1242 = icmp sgt i32 %call2.i1241, 0
  %cond.i1243 = zext i1 %cmp3.i1242 to i32
  br label %wcpadwidth.exit1246

wcpadwidth.exit1246:                              ; preds = %cont713, %sw.bb1.i1240, %sw.default.i1244
  %retval.0.i1245 = phi i32 [ %cond.i1243, %sw.default.i1244 ], [ 1, %cont713 ], [ %call..i1239, %sw.bb1.i1240 ]
  %406 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %c.121270, i32 %retval.0.i1245)
  %407 = extractvalue { i32, i1 } %406, 0
  %408 = extractvalue { i32, i1 } %406, 1
  br i1 %408, label %ioc_bb715, label %for.cond696.backedge

for.cond696.backedge:                             ; preds = %wcpadwidth.exit1246, %ioc_bb715
  %409 = load i8* %t.15, align 1, !tbaa !0
  %tobool697 = icmp eq i8 %409, 0
  br i1 %tobool697, label %for.cond691, label %for.body698

ioc_bb715:                                        ; preds = %wcpadwidth.exit1246
  %410 = sext i32 %retval.0.i1245 to i64
  %411 = sext i32 %c.121270 to i64
  call void @__ioc_report_sub_overflow(i32 1234, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %411, i64 %410, i8 13) nounwind
  br label %for.cond696.backedge

for.end718:                                       ; preds = %cont693
  br i1 %or686, label %cont722, label %ioc_bb721

ioc_bb721:                                        ; preds = %for.end718
  call void @__ioc_report_rem_error(i32 1241, i32 21, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %391, i64 %392, i8 13) nounwind
  br label %cont722

cont722:                                          ; preds = %ioc_bb721, %for.end718
  %rem723 = srem i32 %f.5, %call37
  %tobool724 = icmp eq i32 %rem723, 0
  br i1 %tobool724, label %cont756, label %if.then725

if.then725:                                       ; preds = %cont722
  call void @mb_metacharinit() nounwind
  %cmp7271262 = icmp sgt i32 %rem723, 0
  br i1 %cmp7271262, label %while.body729, label %cont756

while.body729:                                    ; preds = %if.then725, %while.cond726.backedge
  %m.31265 = phi i32 [ %421, %while.cond726.backedge ], [ %rem723, %if.then725 ]
  %postmul.addr.31264 = phi i8* [ %postmul.addr.4, %while.cond726.backedge ], [ %postmul.addr.0, %if.then725 ]
  %r.491263 = phi i8* [ %r.50, %while.cond726.backedge ], [ %r.46, %if.then725 ]
  %call730 = call i32 @mb_metacharlenconv(i8* %postmul.addr.31264, i32* %cchar) nounwind
  %tobool731 = icmp eq i32 %call730, 0
  br i1 %tobool731, label %cont756, label %while.cond734

while.cond734:                                    ; preds = %while.body729, %while.body738
  %r.50 = phi i8* [ %incdec.ptr740, %while.body738 ], [ %r.491263, %while.body729 ]
  %postmul.addr.4 = phi i8* [ %incdec.ptr739, %while.body738 ], [ %postmul.addr.31264, %while.body729 ]
  %cl.14 = phi i32 [ %413, %while.body738 ], [ %call730, %while.body729 ]
  %412 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cl.14, i32 -1)
  %413 = extractvalue { i32, i1 } %412, 0
  %414 = extractvalue { i32, i1 } %412, 1
  br i1 %414, label %ioc_bb735, label %cont736

ioc_bb735:                                        ; preds = %while.cond734
  %415 = sext i32 %cl.14 to i64
  call void @__ioc_report_add_overflow(i32 1247, i32 23, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %415, i64 -1, i8 13) nounwind
  br label %cont736

cont736:                                          ; preds = %while.cond734, %ioc_bb735
  %tobool737 = icmp eq i32 %cl.14, 0
  br i1 %tobool737, label %while.end741, label %while.body738

while.body738:                                    ; preds = %cont736
  %incdec.ptr739 = getelementptr inbounds i8* %postmul.addr.4, i32 1
  %416 = load i8* %postmul.addr.4, align 1, !tbaa !0
  %incdec.ptr740 = getelementptr inbounds i8* %r.50, i32 1
  store i8 %416, i8* %r.50, align 1, !tbaa !0
  br label %while.cond734

while.end741:                                     ; preds = %cont736
  %417 = load i32* %cchar, align 4, !tbaa !2
  %418 = icmp sgt i32 %417, -1
  br i1 %418, label %cont744, label %ioc_bb743

ioc_bb743:                                        ; preds = %while.end741
  %419 = zext i32 %417 to i64
  call void @__ioc_report_conversion(i32 1249, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %419, i8 0) nounwind
  br label %cont744

cont744:                                          ; preds = %ioc_bb743, %while.end741
  switch i32 %multi_width, label %sw.default.i1254 [
    i32 0, label %wcpadwidth.exit1256
    i32 1, label %sw.bb1.i1250
  ]

sw.bb1.i1250:                                     ; preds = %cont744
  %call.i1247 = call i32 @wcwidth(i32 %417) nounwind
  %cmp.i1248 = icmp slt i32 %call.i1247, 0
  %call..i1249 = select i1 %cmp.i1248, i32 0, i32 %call.i1247
  br label %wcpadwidth.exit1256

sw.default.i1254:                                 ; preds = %cont744
  %call2.i1251 = call i32 @wcwidth(i32 %417) nounwind
  %cmp3.i1252 = icmp sgt i32 %call2.i1251, 0
  %cond.i1253 = zext i1 %cmp3.i1252 to i32
  br label %wcpadwidth.exit1256

wcpadwidth.exit1256:                              ; preds = %cont744, %sw.bb1.i1250, %sw.default.i1254
  %retval.0.i1255 = phi i32 [ %cond.i1253, %sw.default.i1254 ], [ 1, %cont744 ], [ %call..i1249, %sw.bb1.i1250 ]
  %420 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %m.31265, i32 %retval.0.i1255)
  %421 = extractvalue { i32, i1 } %420, 0
  %422 = extractvalue { i32, i1 } %420, 1
  br i1 %422, label %ioc_bb746, label %while.cond726.backedge

while.cond726.backedge:                           ; preds = %wcpadwidth.exit1256, %ioc_bb746
  %cmp727 = icmp sgt i32 %421, 0
  br i1 %cmp727, label %while.body729, label %cont756

ioc_bb746:                                        ; preds = %wcpadwidth.exit1256
  %423 = sext i32 %retval.0.i1255 to i64
  %424 = sext i32 %m.31265 to i64
  call void @__ioc_report_sub_overflow(i32 1249, i32 17, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %424, i64 %423, i8 13) nounwind
  br label %while.cond726.backedge

cont756:                                          ; preds = %while.cond565.preheader, %while.body567, %for.cond412.preheader, %for.body415, %for.cond412.backedge, %for.body302, %for.cond299.loopexit, %if.then360, %while.body364, %while.cond361.loopexit, %if.then263, %for.body267, %for.cond264.loopexit, %for.body635, %for.cond632.backedge, %if.then725, %while.body729, %while.cond726.backedge, %for.cond581.preheader, %for.body584, %for.cond581.backedge, %if.end683, %if.end334, %if.then296, %if.then629, %if.else573, %cont722, %cont357
  %r.51 = phi i8* [ %r.16.lcssa, %if.then296 ], [ %r.21, %cont357 ], [ %r.20, %if.end334 ], [ %r.39.lcssa, %if.then629 ], [ %r.46, %cont722 ], [ %r.45, %if.end683 ], [ %call76, %if.else573 ], [ %call76, %for.cond581.preheader ], [ %r.371258, %for.body584 ], [ %r.38, %for.cond581.backedge ], [ %r.46, %if.then725 ], [ %r.491263, %while.body729 ], [ %r.50, %while.cond726.backedge ], [ %r.411279, %for.body635 ], [ %r.42, %for.cond632.backedge ], [ %r.13, %if.then263 ], [ %r.141290, %for.body267 ], [ %r.15, %for.cond264.loopexit ], [ %r.21, %if.then360 ], [ %r.231296, %while.body364 ], [ %r.24, %while.cond361.loopexit ], [ %r.171310, %for.body302 ], [ %r.18, %for.cond299.loopexit ], [ %call76, %for.cond412.preheader ], [ %r.251363, %for.body415 ], [ %r.26, %for.cond412.backedge ], [ %r.36.ph, %while.cond565.preheader ], [ %incdec.ptr569, %while.body567 ]
  store i8 0, i8* %r.51, align 1, !tbaa !0
  br label %return

return:                                           ; preds = %cont, %cont756
  %retval.0 = phi i8* [ %call76, %cont756 ], [ %str, %cont ]
  ret i8* %retval.0
}

define internal fastcc i32 @subst_parse_str(i8** nocapture %sp, i32 %single, i32 %err) nounwind {
entry:
  %0 = load i8** %sp, align 4, !tbaa !3
  %call = tail call i8* @dupstring(i8* %0) nounwind
  store i8* %call, i8** %sp, align 4, !tbaa !3
  %tobool = icmp eq i32 %err, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @parsestr(i8* %call) nounwind
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then, label %return

cond.false:                                       ; preds = %entry
  %call3 = tail call i32 @parsestrnoerr(i8* %call) nounwind
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.then, label %return

if.then:                                          ; preds = %cond.true, %cond.false
  %tobool5 = icmp eq i32 %single, 0
  br i1 %tobool5, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %if.then
  %1 = load i8* %call, align 1, !tbaa !0
  %tobool743 = icmp eq i8 %1, 0
  br i1 %tobool743, label %return, label %ioc_bb

ioc_bb:                                           ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %4, %for.inc ], [ %1, %for.cond.preheader ]
  %s.044 = phi i8* [ %incdec.ptr, %for.inc ], [ %call, %for.cond.preheader ]
  tail call void @__ioc_report_conversion(i32 1401, i32 32, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 138, i8 1) nounwind
  %cmp = icmp eq i8 %2, -118
  br i1 %cmp, label %ioc_bb12, label %if.else

ioc_bb12:                                         ; preds = %ioc_bb
  tail call void @__ioc_report_conversion(i32 1402, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 133, i8 1) nounwind
  store i8 -123, i8* %s.044, align 1, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %ioc_bb
  %3 = load i8* %s.044, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 1403, i32 37, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 151, i8 1) nounwind
  %cmp17 = icmp eq i8 %3, -105
  br i1 %cmp17, label %ioc_bb20, label %for.inc

ioc_bb20:                                         ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 1404, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 145, i8 1) nounwind
  store i8 -111, i8* %s.044, align 1, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.else, %ioc_bb20, %ioc_bb12
  %incdec.ptr = getelementptr inbounds i8* %s.044, i32 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool7 = icmp eq i8 %4, 0
  br i1 %tobool7, label %return, label %ioc_bb

return:                                           ; preds = %for.cond.preheader, %for.inc, %cond.false, %cond.true, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %cond.true ], [ 1, %cond.false ], [ 0, %for.inc ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0
}

define internal fastcc i8* @strcatsub(i8** nocapture %d, i8* %pb, i8* %pe, i8* %src, i32 %l, i8* %s, i32 %glbsub, i32 %copied) nounwind {
entry:
  %sub.ptr.lhs.cast = ptrtoint i8* %pe to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %pb to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool = icmp eq i8* %pe, %pb
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %tobool1 = icmp eq i8* %s, null
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %0 = load i8* %s, align 1, !tbaa !0
  %tobool2 = icmp eq i8 %0, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %tobool3 = icmp eq i32 %copied, 0
  br i1 %tobool3, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then
  %call = tail call i8* @dupstring(i8* %src) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %src, %if.then ]
  store i8* %cond, i8** %d, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %glbsub, 0
  br i1 %tobool4, label %if.end36, label %if.then5

if.then5:                                         ; preds = %cond.end
  tail call void @shtokenize(i8* %cond) nounwind
  br label %if.end36

if.else:                                          ; preds = %lor.lhs.false, %entry
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 %l)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  %4 = sext i32 %sub.ptr.sub to i64
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.else
  %5 = sext i32 %l to i64
  tail call void @__ioc_report_add_overflow(i32 743, i32 31, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %4, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.else, %ioc_bb
  %6 = icmp sgt i32 %2, -1
  br i1 %6, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cont
  %7 = sext i32 %2 to i64
  tail call void @__ioc_report_conversion(i32 743, i32 27, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cont
  %tobool8 = icmp ne i8* %s, null
  br i1 %tobool8, label %cond.true9, label %cond.end14

cond.true9:                                       ; preds = %cont7
  %call10 = tail call i32 @strlen(i8* %s) nounwind readonly
  br label %cond.end14

cond.end14:                                       ; preds = %cont7, %cond.true9
  %cond15 = phi i32 [ %call10, %cond.true9 ], [ 0, %cont7 ]
  %8 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %cond15)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb16, label %cont19

ioc_bb16:                                         ; preds = %cond.end14
  %11 = zext i32 %cond15 to i64
  %12 = zext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 743, i32 36, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %12, i64 %11, i8 5) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb16, %cond.end14
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont19
  %16 = zext i32 %9 to i64
  tail call void @__ioc_report_add_overflow(i32 743, i32 58, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @19, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind
  br label %cont21

cont21:                                           ; preds = %cont19, %ioc_bb20
  %call22 = tail call i8* @hcalloc(i32 %14) nounwind
  store i8* %call22, i8** %d, align 4, !tbaa !3
  %17 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %17, label %cont25, label %ioc_bb24

ioc_bb24:                                         ; preds = %cont21
  tail call void @__ioc_report_conversion(i32 744, i32 5, i8* getelementptr inbounds ([22 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @17, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont25

cont25:                                           ; preds = %ioc_bb24, %cont21
  %call26 = tail call i8* @strncpy(i8* %call22, i8* %pb, i32 %sub.ptr.sub) nounwind
  %add.ptr = getelementptr inbounds i8* %call22, i32 %sub.ptr.sub
  %call27 = tail call i8* @strcpy(i8* %add.ptr, i8* %src) nounwind
  %tobool28 = icmp eq i32 %glbsub, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %cont25
  tail call void @shtokenize(i8* %add.ptr) nounwind
  br label %if.end30

if.end30:                                         ; preds = %cont25, %if.then29
  %add.ptr31 = getelementptr inbounds i8* %call22, i32 %2
  br i1 %tobool8, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i8* @strcpy(i8* %add.ptr31, i8* %s) nounwind
  br label %if.end36

if.end36:                                         ; preds = %cond.end, %if.end30, %if.then33, %if.then5
  %dest.0 = phi i8* [ %add.ptr31, %if.then33 ], [ %add.ptr31, %if.end30 ], [ %cond, %if.then5 ], [ %cond, %cond.end ]
  ret i8* %dest.0
}

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i32 @parsestrnoerr(i8*)

declare void @__ioc_report_div_error(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @wcwidth(i32) nounwind

declare i8* @parse_subscript(i8*, i32, i32)

declare i32 @wcsitype(i32, i32)

declare i32 @countlinknodes(%union.linkroot*)

declare void @matheval(%struct.mnumber* sret, i8*)

declare i8* @convfloat(double, i32, i32, %struct._IO_FILE*)

declare void @convbase(i8*, i64, i32)

declare i8* @strcat(i8*, i8* nocapture) nounwind

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
!4 = metadata !{metadata !"short", metadata !0}
!5 = metadata !{metadata !"long long", metadata !0}
