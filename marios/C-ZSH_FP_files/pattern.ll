; ModuleID = '../../src/Src/pattern.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.__mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.upat = type { i32 }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }

@opts = external global [169 x i8]
@patglobflags = internal unnamed_addr global i32 0, align 4
@patalloc = internal unnamed_addr global i32 0, align 4
@patout = internal unnamed_addr global i8* null, align 4
@patcode = internal unnamed_addr global i8* null, align 4
@patsize = internal unnamed_addr global i32 0, align 4
@patparse = internal global i8* null, align 4
@patstart = internal unnamed_addr global i8* null, align 4
@patnpar = internal unnamed_addr global i32 0, align 4
@patflags = internal unnamed_addr global i32 0, align 4
@endseg = internal global [5 x i8] c"/\00\8C\89\96", align 1
@patendseg = internal unnamed_addr global i8* null, align 4
@patendseglen = internal unnamed_addr global i32 0, align 4
@endstr = internal global [13 x i8] c"/\00\8C\89\95\87\8F\88\92\9C\96\86\84", align 1
@patendstr = internal unnamed_addr global i8* null, align 4
@patendstrlen = internal unnamed_addr global i32 0, align 4
@typtab = external global [256 x i16]
@colon_stuffs = internal global [18 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0), i8* null], align 4
@.str = private unnamed_addr constant [3 x i8] c"[:\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c":]\00", align 1
@forceerrs = common global i32 0, align 4
@errsfound = common global i32 0, align 4
@pathpos = external global i32
@pathbuf = external global i8*
@patinstart = internal unnamed_addr global i8* null, align 4
@patinpath = internal unnamed_addr global i8* null, align 4
@patinend = internal unnamed_addr global i8* null, align 4
@patinlen = internal unnamed_addr global i32 0, align 4
@.str2 = private unnamed_addr constant [6 x i8] c"MATCH\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"MBEGIN\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"MEND\00", align 1
@globdots = internal unnamed_addr global i32 0, align 4
@parsfound = internal unnamed_addr global i32 0, align 4
@patinput = internal global i8* null, align 4
@patbeginp = internal unnamed_addr global [9 x i8*] zeroinitializer, align 4
@patendp = internal unnamed_addr global [9 x i8*] zeroinitializer, align 4
@.str5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str7 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"mbegin\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"mend\00", align 1
@0 = internal unnamed_addr constant [3 x i8] c"-=\00"
@1 = internal unnamed_addr constant [7 x i8] c"wint_t\00"
@ztokens = external global [0 x i8]
@shiftstate = internal global %struct.__mbstate_t zeroinitializer, align 8
@exactpos = internal unnamed_addr global i8* null, align 4
@exactend = internal unnamed_addr global i8* null, align 4
@2 = internal unnamed_addr constant [3 x i8] c"*=\00"
@3 = internal unnamed_addr constant [3 x i8] c"+=\00"
@4 = internal unnamed_addr constant [8 x i8] c"wchar_t\00"
@5 = internal unnamed_addr constant [9 x i8] c"patint_t\00"
@.str11 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"IDENT\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c"IFSSPACE\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@6 = internal unnamed_addr constant [3 x i8] c"<<\00"
@.str28 = private unnamed_addr constant [6 x i8] c"?*+!@\00", align 1
@7 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@8 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@9 = internal unnamed_addr constant [10 x i8] c"long long\00"
@10 = internal unnamed_addr constant [2 x i8] c"+\00"
@11 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@12 = internal unnamed_addr constant [2 x i8] c"*\00"
@13 = internal unnamed_addr constant [5 x i8] c"long\00"
@14 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@15 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@16 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@17 = internal unnamed_addr constant [2 x i8] c"-\00"
@18 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@19 = internal unnamed_addr constant [4 x i8] c"int\00"
@20 = internal unnamed_addr constant [5 x i8] c"char\00"
@21 = internal unnamed_addr constant [24 x i8] c"../../src/Src/pattern.c\00"

define void @patcompstart() nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 25), align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  %. = select i1 %tobool, i32 512, i32 0
  store i32 %., i32* @patglobflags, align 4
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !0
  %tobool1 = icmp eq i8 %1, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %or = or i32 %., 4096
  store i32 %or, i32* @patglobflags, align 4, !tbaa !2
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

define %struct.patprog* @patcompile(i8* %exp, i32 %inflags, i8** %endexp) nounwind {
entry:
  %flags = alloca i32, align 4
  store i32 0, i32* %flags, align 4, !tbaa !2
  %0 = load i32* @patalloc, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 256
  %.pre438 = load i8** @patout, align 4, !tbaa !4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 256, i32* @patalloc, align 4, !tbaa !3
  %call = call i8* @zrealloc(i8* %.pre438, i32 256) nounwind
  store i8* %call, i8** @patout, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i8* [ %call, %if.then ], [ %.pre438, %entry ]
  %add.ptr = getelementptr inbounds i8* %1, i32 36
  store i8* %add.ptr, i8** @patcode, align 4, !tbaa !4
  store i32 36, i32* @patsize, align 4, !tbaa !3
  store i8* %exp, i8** @patparse, align 4, !tbaa !4
  store i8* %exp, i8** @patstart, align 4, !tbaa !4
  store i32 1, i32* @patnpar, align 4, !tbaa !2
  %and17 = and i32 %inflags, -2081
  store i32 %and17, i32* @patflags, align 4, !tbaa !2
  store i8* getelementptr inbounds ([5 x i8]* @endseg, i32 0, i32 0), i8** @patendseg, align 4, !tbaa !4
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool = icmp ne i8 %2, 0
  %cond = select i1 %tobool, i32 5, i32 4
  store i32 %cond, i32* @patendseglen, align 4, !tbaa !2
  store i8* getelementptr inbounds ([13 x i8]* @endstr, i32 0, i32 0), i8** @patendstr, align 4, !tbaa !4
  %cond20 = select i1 %tobool, i32 13, i32 10
  store i32 %cond20, i32* @patendstrlen, align 4, !tbaa !2
  %and21 = and i32 %inflags, 1
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8]* @endseg, i32 0, i32 1), i8** @patendseg, align 4, !tbaa !4
  store i8* getelementptr inbounds ([13 x i8]* @endstr, i32 0, i32 1), i8** @patendstr, align 4, !tbaa !4
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cond, i32 -1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %if.then23
  %6 = zext i32 %cond to i64
  call void @__ioc_report_add_overflow(i32 444, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %6, i64 -1, i8 13) nounwind
  %.pre = load i32* @patendstrlen, align 4, !tbaa !2
  br label %cont26

cont26:                                           ; preds = %if.then23, %ioc_bb25
  %7 = phi i32 [ %cond20, %if.then23 ], [ %.pre, %ioc_bb25 ]
  store i32 %4, i32* @patendseglen, align 4, !tbaa !2
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 -1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb27, label %cont28

ioc_bb27:                                         ; preds = %cont26
  %11 = sext i32 %7 to i64
  call void @__ioc_report_add_overflow(i32 445, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %cont28

cont28:                                           ; preds = %cont26, %ioc_bb27
  store i32 %9, i32* @patendstrlen, align 4, !tbaa !2
  %12 = load i8** @patparse, align 4, !tbaa !4
  call void @remnulargs(i8* %12) nounwind
  %13 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !0
  %tobool29 = icmp eq i8 %13, 0
  br i1 %tobool29, label %if.else, label %if.then30

if.then30:                                        ; preds = %cont28
  store i32 4096, i32* @patglobflags, align 4, !tbaa !2
  br label %if.end32

if.else:                                          ; preds = %cont28
  store i32 0, i32* @patglobflags, align 4, !tbaa !2
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then30, %if.else
  %14 = load i32* @patflags, align 4, !tbaa !2
  %and33 = and i32 %14, 4096
  %tobool34 = icmp eq i32 %and33, 0
  %.pre439 = load i32* @patglobflags, align 4, !tbaa !2
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  %or = or i32 %.pre439, 256
  store i32 %or, i32* @patglobflags, align 4, !tbaa !2
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.then35
  %15 = phi i32 [ %or, %if.then35 ], [ %.pre439, %if.end32 ]
  %16 = load i8** @patout, align 4, !tbaa !4
  %globflags = getelementptr inbounds i8* %16, i32 16
  %17 = bitcast i8* %globflags to i32*
  store i32 %15, i32* %17, align 4, !tbaa !2
  %18 = load i32* @patflags, align 4, !tbaa !2
  %and37 = and i32 %18, 4
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end97

if.then39:                                        ; preds = %if.end36
  %19 = load i32* @patglobflags, align 4, !tbaa !2
  %and40 = and i32 %19, -4097
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.then78

if.then42:                                        ; preds = %if.then39
  %20 = load i8* %exp, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 475, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp46 = icmp eq i8 %20, -99
  %incdec.ptr49 = getelementptr inbounds i8* %exp, i32 1
  %exp.addr.0 = select i1 %cmp46, i8* %incdec.ptr49, i8* %exp
  br label %for.cond

for.cond:                                         ; preds = %cont60, %if.then42
  %strp.0 = phi i8* [ %incdec.ptr68, %cont60 ], [ %exp.addr.0, %if.then42 ]
  %21 = load i8* %strp.0, align 1, !tbaa !0
  %tobool52 = icmp eq i8 %21, 0
  br i1 %tobool52, label %if.end69, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %22 = load i32* @patflags, align 4, !tbaa !2
  %and53 = and i32 %22, 1
  %tobool54 = icmp ne i32 %and53, 0
  %cmp56 = icmp eq i8 %21, 47
  %or.cond = and i1 %tobool54, %cmp56
  br i1 %or.cond, label %if.end69, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %23 = icmp sgt i8 %21, -1
  br i1 %23, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %land.rhs
  %24 = sext i8 %21 to i64
  call void @__ioc_report_conversion(i32 477, i32 104, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %land.rhs
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %25 = load i16* %arrayidx, align 2, !tbaa !5
  %and66 = and i16 %25, 16
  %lnot = icmp eq i16 %and66, 0
  %incdec.ptr68 = getelementptr inbounds i8* %strp.0, i32 1
  br i1 %lnot, label %for.cond, label %if.end69

if.end69:                                         ; preds = %land.lhs.true, %for.cond, %cont60
  %tobool70 = icmp eq i8* %strp.0, null
  br i1 %tobool70, label %if.then78, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end69
  %26 = load i8* %strp.0, align 1, !tbaa !0
  switch i8 %26, label %if.then78 [
    i8 0, label %if.else84
    i8 47, label %if.else84
  ]

if.then78:                                        ; preds = %if.then39, %lor.lhs.false71, %if.end69
  %call79 = call fastcc i32 @patcompswitch(i32 0, i32* %flags)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %return, label %if.end97

if.else84:                                        ; preds = %lor.lhs.false71, %lor.lhs.false71
  store i8* %strp.0, i8** @patparse, align 4, !tbaa !4
  %sub.ptr.lhs.cast85 = ptrtoint i8* %strp.0 to i32
  %sub.ptr.rhs.cast86 = ptrtoint i8* %exp.addr.0 to i32
  %sub.ptr.sub87 = sub i32 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub87, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  %30 = sext i32 %sub.ptr.sub87 to i64
  br i1 %29, label %ioc_bb88, label %cont89

ioc_bb88:                                         ; preds = %if.else84
  call void @__ioc_report_add_overflow(i32 495, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %cont89

cont89:                                           ; preds = %if.else84, %ioc_bb88
  call fastcc void @patadd(i8* %exp.addr.0, i32 0, i32 %28, i32 0)
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub87, i32 36)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb92, label %cont93

ioc_bb92:                                         ; preds = %cont89
  call void @__ioc_report_add_overflow(i32 496, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 36, i64 %30, i8 13) nounwind
  br label %cont93

cont93:                                           ; preds = %cont89, %ioc_bb92
  %34 = load i8** @patout, align 4, !tbaa !4
  %arrayidx94 = getelementptr inbounds i8* %34, i32 %32
  store i8 0, i8* %arrayidx94, align 1, !tbaa !0
  %35 = load i32* @patflags, align 4, !tbaa !2
  %or95 = or i32 %35, 32
  store i32 %or95, i32* @patflags, align 4, !tbaa !2
  br label %if.end97

if.end97:                                         ; preds = %if.then78, %if.end36, %cont93
  %strp.2 = phi i8* [ null, %if.end36 ], [ %strp.0, %cont93 ], [ null, %if.then78 ]
  %len.0 = phi i32 [ 0, %if.end36 ], [ %sub.ptr.sub87, %cont93 ], [ 0, %if.then78 ]
  %36 = load i8** @patout, align 4, !tbaa !4
  %37 = bitcast i8* %36 to %struct.patprog*
  %startoff98 = bitcast i8* %36 to i32*
  store i32 36, i32* %startoff98, align 4, !tbaa !3
  %38 = getelementptr inbounds i8* %36, i32 32
  store i8 0, i8* %38, align 1, !tbaa !0
  %39 = load i32* @patglobflags, align 4, !tbaa !2
  %globend = getelementptr inbounds i8* %36, i32 20
  %40 = bitcast i8* %globend to i32*
  store i32 %39, i32* %40, align 4, !tbaa !2
  %41 = load i32* @patflags, align 4, !tbaa !2
  %flags101 = getelementptr inbounds i8* %36, i32 24
  %42 = bitcast i8* %flags101 to i32*
  store i32 %41, i32* %42, align 4, !tbaa !2
  %mustoff = getelementptr inbounds i8* %36, i32 8
  %43 = bitcast i8* %mustoff to i32*
  store i32 0, i32* %43, align 4, !tbaa !3
  %44 = load i32* @patsize, align 4, !tbaa !3
  %size = getelementptr inbounds i8* %36, i32 4
  %45 = bitcast i8* %size to i32*
  store i32 %44, i32* %45, align 4, !tbaa !3
  %patmlen = getelementptr inbounds i8* %36, i32 12
  %46 = bitcast i8* %patmlen to i32*
  store i32 %len.0, i32* %46, align 4, !tbaa !3
  %47 = load i32* @patnpar, align 4, !tbaa !2
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %47, i32 1)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb102, label %cont103

ioc_bb102:                                        ; preds = %if.end97
  %51 = sext i32 %47 to i64
  call void @__ioc_report_sub_overflow(i32 509, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %51, i64 1, i8 13) nounwind
  br label %cont103

cont103:                                          ; preds = %if.end97, %ioc_bb102
  %patnpar = getelementptr inbounds i8* %36, i32 28
  %52 = bitcast i8* %patnpar to i32*
  store i32 %49, i32* %52, align 4, !tbaa !2
  %tobool104 = icmp eq i8* %strp.2, null
  br i1 %tobool104, label %if.then105, label %if.end312

if.then105:                                       ; preds = %cont103
  %53 = load i8** @patout, align 4, !tbaa !4
  %add.ptr106 = getelementptr inbounds i8* %53, i32 36
  %54 = load i32* @patflags, align 4, !tbaa !2
  %and107 = and i32 %54, 4
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %cont111, label %if.end312

cont111:                                          ; preds = %if.then105
  %55 = bitcast i8* %add.ptr106 to %union.upat*
  %l = bitcast i8* %add.ptr106 to i32*
  %56 = load i32* %l, align 4, !tbaa !3
  %shr = ashr i32 %56, 8
  %and114 = and i32 %56, 255
  %cmp115 = icmp eq i32 %and114, 3
  %idx.neg = sub i32 0, %shr
  %idx.neg.sink = select i1 %cmp115, i32 %idx.neg, i32 %shr
  %l124 = getelementptr inbounds %union.upat* %55, i32 %idx.neg.sink, i32 0
  %57 = load i32* %l124, align 4, !tbaa !3
  %and125 = and i32 %57, 255
  %cmp126 = icmp eq i32 %and125, 0
  br i1 %cmp126, label %if.then128, label %if.end312

if.then128:                                       ; preds = %cont111
  %add.ptr129 = getelementptr inbounds i8* %53, i32 40
  %58 = bitcast i8* %add.ptr129 to %union.upat*
  %59 = load i32* %flags, align 4, !tbaa !2
  %and130 = and i32 %59, 4
  %tobool131 = icmp eq i32 %and130, 0
  br i1 %tobool131, label %if.else240, label %if.then132

if.then132:                                       ; preds = %if.then128
  %60 = load i32* %42, align 4, !tbaa !2
  %or135 = or i32 %60, 32
  store i32 %or135, i32* %42, align 4, !tbaa !2
  br label %for.cond136.outer

for.cond136.outer:                                ; preds = %cont200, %if.then132
  %pscan.0.ph = phi %union.upat* [ %58, %if.then132 ], [ %cond158, %cont200 ]
  %p.0.ph = phi %struct.patprog* [ %37, %if.then132 ], [ %p.1.ph, %cont200 ]
  %dst.0.ph = phi i8* [ %add.ptr106, %if.then132 ], [ %dst.1, %cont200 ]
  br label %for.cond136

for.cond136:                                      ; preds = %for.cond136.outer, %cond.end157
  %pscan.0 = phi %union.upat* [ %cond158, %cond.end157 ], [ %pscan.0.ph, %for.cond136.outer ]
  %tobool137 = icmp eq %union.upat* %pscan.0, null
  br i1 %tobool137, label %for.end231, label %for.body138

for.body138:                                      ; preds = %for.cond136
  %l139 = getelementptr inbounds %union.upat* %pscan.0, i32 0, i32 0
  %61 = load i32* %l139, align 4, !tbaa !3
  %shr142 = ashr i32 %61, 8
  %tobool143 = icmp eq i32 %shr142, 0
  %and160.pre = and i32 %61, 255
  br i1 %tobool143, label %cond.end157, label %cond.true144

cond.true144:                                     ; preds = %for.body138
  %cmp147 = icmp eq i32 %and160.pre, 3
  %idx.neg150 = sub i32 0, %shr142
  %idx.neg150.sink = select i1 %cmp147, i32 %idx.neg150, i32 %shr142
  %add.ptr151 = getelementptr inbounds %union.upat* %pscan.0, i32 %idx.neg150.sink
  br label %cond.end157

cond.end157:                                      ; preds = %for.body138, %cond.true144
  %cond158 = phi %union.upat* [ %add.ptr151, %cond.true144 ], [ null, %for.body138 ]
  %cmp161 = icmp eq i32 %and160.pre, 4
  br i1 %cmp161, label %if.then163, label %for.cond136

if.then163:                                       ; preds = %cond.end157
  %add.ptr164 = getelementptr inbounds %union.upat* %pscan.0, i32 2
  %62 = bitcast %union.upat* %add.ptr164 to i8*
  %l166 = getelementptr inbounds %union.upat* %pscan.0, i32 1, i32 0
  %63 = load i32* %l166, align 4, !tbaa !3
  %tobool168431 = icmp eq i32 %63, 0
  br i1 %tobool168431, label %while.cond.preheader, label %for.body169

for.body169:                                      ; preds = %if.then163, %for.cond167.backedge
  %nmeta.0434 = phi i32 [ %nmeta.1, %for.cond167.backedge ], [ 0, %if.then163 ]
  %ilen.0433 = phi i32 [ %73, %for.cond167.backedge ], [ %63, %if.then163 ]
  %mtest.0432 = phi i8* [ %incdec.ptr187, %for.cond167.backedge ], [ %62, %if.then163 ]
  %64 = load i8* %mtest.0432, align 1, !tbaa !0
  %65 = icmp sgt i8 %64, -1
  br i1 %65, label %cont172, label %ioc_bb171

ioc_bb171:                                        ; preds = %for.body169
  %66 = sext i8 %64 to i64
  call void @__ioc_report_conversion(i32 542, i32 42, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %66, i8 1) nounwind
  br label %cont172

cont172:                                          ; preds = %ioc_bb171, %for.body169
  %idxprom173 = zext i8 %64 to i32
  %arrayidx174 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom173
  %67 = load i16* %arrayidx174, align 2, !tbaa !5
  %and180 = and i16 %67, 4096
  %tobool181 = icmp eq i16 %and180, 0
  br i1 %tobool181, label %for.inc186, label %if.then182

if.then182:                                       ; preds = %cont172
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmeta.0434, i32 1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb183, label %for.inc186

ioc_bb183:                                        ; preds = %if.then182
  %71 = sext i32 %nmeta.0434 to i64
  call void @__ioc_report_add_overflow(i32 543, i32 22, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind
  br label %for.inc186

for.inc186:                                       ; preds = %ioc_bb183, %if.then182, %cont172
  %nmeta.1 = phi i32 [ %nmeta.0434, %cont172 ], [ %69, %if.then182 ], [ %69, %ioc_bb183 ]
  %incdec.ptr187 = getelementptr inbounds i8* %mtest.0432, i32 1
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ilen.0433, i32 -1)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb188, label %for.cond167.backedge

for.cond167.backedge:                             ; preds = %for.inc186, %ioc_bb188
  %tobool168 = icmp eq i32 %73, 0
  br i1 %tobool168, label %for.end190, label %for.body169

ioc_bb188:                                        ; preds = %for.inc186
  %75 = sext i32 %ilen.0433 to i64
  call void @__ioc_report_add_overflow(i32 541, i32 70, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %75, i64 -1, i8 13) nounwind
  br label %for.cond167.backedge

for.end190:                                       ; preds = %for.cond167.backedge
  %tobool191 = icmp eq i32 %nmeta.1, 0
  br i1 %tobool191, label %while.cond.preheader, label %if.then192

if.then192:                                       ; preds = %for.end190
  %76 = load i8** @patout, align 4, !tbaa !4
  call fastcc void @patadd(i8* null, i32 0, i32 %nmeta.1, i32 0)
  %77 = load i8** @patout, align 4, !tbaa !4
  %78 = bitcast i8* %77 to %struct.patprog*
  %sub.ptr.lhs.cast193 = ptrtoint %union.upat* %add.ptr164 to i32
  %sub.ptr.rhs.cast194 = ptrtoint i8* %76 to i32
  %sub.ptr.sub195 = sub i32 %sub.ptr.lhs.cast193, %sub.ptr.rhs.cast194
  %add.ptr196 = getelementptr inbounds i8* %77, i32 %sub.ptr.sub195
  %add.ptr197 = getelementptr inbounds i8* %77, i32 36
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then163, %if.then192, %for.end190
  %p.1.ph = phi %struct.patprog* [ %p.0.ph, %for.end190 ], [ %78, %if.then192 ], [ %p.0.ph, %if.then163 ]
  %dst.1.ph = phi i8* [ %dst.0.ph, %for.end190 ], [ %add.ptr197, %if.then192 ], [ %dst.0.ph, %if.then163 ]
  %opnd.0.ph = phi i8* [ %62, %for.end190 ], [ %add.ptr196, %if.then192 ], [ %62, %if.then163 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %dst.1 = phi i8* [ %dst.1.ph, %while.cond.preheader ], [ %dst.1.be, %while.cond.backedge ]
  %opnd.0 = phi i8* [ %opnd.0.ph, %while.cond.preheader ], [ %opnd.0.be, %while.cond.backedge ]
  %oplen.0 = phi i32 [ %63, %while.cond.preheader ], [ %80, %while.cond.backedge ]
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %oplen.0, i32 -1)
  %80 = extractvalue { i32, i1 } %79, 0
  %81 = extractvalue { i32, i1 } %79, 1
  br i1 %81, label %ioc_bb199, label %cont200

ioc_bb199:                                        ; preds = %while.cond
  %82 = sext i32 %oplen.0 to i64
  call void @__ioc_report_add_overflow(i32 554, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %82, i64 -1, i8 13) nounwind
  br label %cont200

cont200:                                          ; preds = %while.cond, %ioc_bb199
  %tobool201 = icmp eq i32 %oplen.0, 0
  br i1 %tobool201, label %for.cond136.outer, label %while.body

while.body:                                       ; preds = %cont200
  %83 = load i8* %opnd.0, align 1, !tbaa !0
  %84 = icmp sgt i8 %83, -1
  br i1 %84, label %cont204, label %ioc_bb203

ioc_bb203:                                        ; preds = %while.body
  %85 = sext i8 %83 to i64
  call void @__ioc_report_conversion(i32 555, i32 42, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %85, i8 1) nounwind
  br label %cont204

cont204:                                          ; preds = %ioc_bb203, %while.body
  %idxprom205 = zext i8 %83 to i32
  %arrayidx206 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom205
  %86 = load i16* %arrayidx206, align 2, !tbaa !5
  %and212 = and i16 %86, 4096
  %tobool213 = icmp eq i16 %and212, 0
  br i1 %tobool213, label %if.else225, label %ioc_bb215

ioc_bb215:                                        ; preds = %cont204
  call void @__ioc_report_conversion(i32 556, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr217 = getelementptr inbounds i8* %dst.1, i32 1
  store i8 -125, i8* %dst.1, align 1, !tbaa !0
  %87 = load i8* %opnd.0, align 1, !tbaa !0
  %conv219 = sext i8 %87 to i32
  %xor = xor i32 %conv219, 32
  %xor.off = add i32 %xor, 128
  %88 = icmp ult i32 %xor.off, 256
  br i1 %88, label %cont222, label %ioc_bb221

ioc_bb221:                                        ; preds = %ioc_bb215
  %89 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 557, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %89, i8 1) nounwind
  br label %cont222

cont222:                                          ; preds = %ioc_bb221, %ioc_bb215
  %conv223 = trunc i32 %xor to i8
  %incdec.ptr224 = getelementptr inbounds i8* %dst.1, i32 2
  store i8 %conv223, i8* %incdec.ptr217, align 1, !tbaa !0
  br label %while.cond.backedge

if.else225:                                       ; preds = %cont204
  %90 = load i8* %opnd.0, align 1, !tbaa !0
  %incdec.ptr227 = getelementptr inbounds i8* %dst.1, i32 1
  store i8 %90, i8* %dst.1, align 1, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else225, %cont222
  %dst.1.be = phi i8* [ %incdec.ptr224, %cont222 ], [ %incdec.ptr227, %if.else225 ]
  %opnd.0.be = getelementptr inbounds i8* %opnd.0, i32 1
  br label %while.cond

for.end231:                                       ; preds = %for.cond136
  %91 = load i8** @patout, align 4, !tbaa !4
  %sub.ptr.lhs.cast232 = ptrtoint i8* %dst.0.ph to i32
  %sub.ptr.rhs.cast233 = ptrtoint i8* %91 to i32
  %sub.ptr.sub234 = sub i32 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %size235 = getelementptr inbounds %struct.patprog* %p.0.ph, i32 0, i32 1
  store i32 %sub.ptr.sub234, i32* %size235, align 4, !tbaa !3
  %92 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub234, i32 36)
  %93 = extractvalue { i32, i1 } %92, 0
  %94 = extractvalue { i32, i1 } %92, 1
  br i1 %94, label %ioc_bb237, label %cont238

ioc_bb237:                                        ; preds = %for.end231
  %95 = sext i32 %sub.ptr.sub234 to i64
  call void @__ioc_report_sub_overflow(i32 567, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %95, i64 36, i8 13) nounwind
  br label %cont238

cont238:                                          ; preds = %for.end231, %ioc_bb237
  %patmlen239 = getelementptr inbounds %struct.patprog* %p.0.ph, i32 0, i32 3
  store i32 %93, i32* %patmlen239, align 4, !tbaa !3
  br label %if.end312

if.else240:                                       ; preds = %if.then128
  %l241 = bitcast i8* %add.ptr129 to i32*
  %96 = load i32* %l241, align 4, !tbaa !3
  %and242 = and i32 %96, 255
  %cmp243 = icmp eq i32 %and242, 4
  br i1 %cmp243, label %land.lhs.true245, label %if.end255

land.lhs.true245:                                 ; preds = %if.else240
  %globflags246 = getelementptr inbounds i8* %36, i32 16
  %97 = bitcast i8* %globflags246 to i32*
  %98 = load i32* %97, align 4, !tbaa !2
  %tobool247 = icmp eq i32 %98, 0
  br i1 %tobool247, label %land.lhs.true248, label %if.end255

land.lhs.true248:                                 ; preds = %land.lhs.true245
  %arrayidx249 = getelementptr inbounds i8* %53, i32 44
  %l250 = bitcast i8* %arrayidx249 to i32*
  %99 = load i32* %l250, align 4, !tbaa !3
  %tobool251 = icmp eq i32 %99, 0
  br i1 %tobool251, label %if.end255, label %if.then252

if.then252:                                       ; preds = %land.lhs.true248
  %add.ptr253 = getelementptr inbounds i8* %53, i32 48
  %100 = load i8* %add.ptr253, align 1, !tbaa !0
  store i8 %100, i8* %38, align 1, !tbaa !0
  br label %if.end255

if.end255:                                        ; preds = %land.lhs.true248, %land.lhs.true245, %if.then252, %if.else240
  %and256 = and i32 %59, 2
  %tobool257 = icmp eq i32 %and256, 0
  br i1 %tobool257, label %if.end312, label %land.lhs.true258

land.lhs.true258:                                 ; preds = %if.end255
  %globflags259 = getelementptr inbounds i8* %36, i32 16
  %101 = bitcast i8* %globflags259 to i32*
  %102 = load i32* %101, align 4, !tbaa !2
  %tobool260 = icmp ne i32 %102, 0
  %tobool263426 = icmp eq i8* %add.ptr129, null
  %or.cond443 = or i1 %tobool260, %tobool263426
  br i1 %or.cond443, label %if.end312, label %for.body264

for.body264:                                      ; preds = %land.lhs.true258, %for.cond262.backedge
  %len.1429 = phi i32 [ %len.2, %for.cond262.backedge ], [ 0, %land.lhs.true258 ]
  %lng.0428 = phi i8* [ %lng.1, %for.cond262.backedge ], [ null, %land.lhs.true258 ]
  %pscan.1427 = phi %union.upat* [ %add.ptr292, %for.cond262.backedge ], [ %58, %land.lhs.true258 ]
  %l265 = getelementptr inbounds %union.upat* %pscan.1427, i32 0, i32 0
  %103 = load i32* %l265, align 4, !tbaa !3
  %and266 = and i32 %103, 255
  %cmp267 = icmp eq i32 %and266, 4
  br i1 %cmp267, label %land.lhs.true269, label %cont282

land.lhs.true269:                                 ; preds = %for.body264
  %l271 = getelementptr inbounds %union.upat* %pscan.1427, i32 1, i32 0
  %104 = load i32* %l271, align 4, !tbaa !3
  %cmp272 = icmp slt i32 %104, %len.1429
  br i1 %cmp272, label %cont282, label %if.then274

if.then274:                                       ; preds = %land.lhs.true269
  %add.ptr275 = getelementptr inbounds %union.upat* %pscan.1427, i32 2
  %105 = bitcast %union.upat* %add.ptr275 to i8*
  br label %cont282

cont282:                                          ; preds = %if.then274, %for.body264, %land.lhs.true269
  %lng.1 = phi i8* [ %105, %if.then274 ], [ %lng.0428, %land.lhs.true269 ], [ %lng.0428, %for.body264 ]
  %len.2 = phi i32 [ %104, %if.then274 ], [ %len.1429, %land.lhs.true269 ], [ %len.1429, %for.body264 ]
  %shr283 = ashr i32 %103, 8
  %tobool284 = icmp eq i32 %shr283, 0
  br i1 %tobool284, label %for.end300, label %for.cond262.backedge

for.cond262.backedge:                             ; preds = %cont282
  %cmp288 = icmp eq i32 %and266, 3
  %idx.neg291 = sub i32 0, %shr283
  %idx.neg291.sink = select i1 %cmp288, i32 %idx.neg291, i32 %shr283
  %add.ptr292 = getelementptr inbounds %union.upat* %pscan.1427, i32 %idx.neg291.sink
  %tobool263 = icmp eq %union.upat* %add.ptr292, null
  br i1 %tobool263, label %for.end300, label %for.body264

for.end300:                                       ; preds = %cont282, %for.cond262.backedge
  %tobool301 = icmp eq i8* %lng.1, null
  br i1 %tobool301, label %if.end312, label %if.then302

if.then302:                                       ; preds = %for.end300
  %106 = load i8** @patout, align 4, !tbaa !4
  %sub.ptr.lhs.cast303 = ptrtoint i8* %lng.1 to i32
  %sub.ptr.rhs.cast304 = ptrtoint i8* %106 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  store i32 %sub.ptr.sub305, i32* %43, align 4, !tbaa !3
  store i32 %len.2, i32* %46, align 4, !tbaa !3
  br label %if.end312

if.end312:                                        ; preds = %land.lhs.true258, %for.end300, %if.end255, %cont103, %if.then105, %cont111, %if.then302, %cont238
  %p.3 = phi %struct.patprog* [ %37, %if.then105 ], [ %p.0.ph, %cont238 ], [ %37, %if.then302 ], [ %37, %cont111 ], [ %37, %cont103 ], [ %37, %if.end255 ], [ %37, %land.lhs.true258 ], [ %37, %for.end300 ]
  %107 = load i32* @patflags, align 4, !tbaa !2
  %and313 = and i32 %107, 256
  %tobool314 = icmp eq i32 %and313, 0
  br i1 %tobool314, label %if.else323, label %if.then315

if.then315:                                       ; preds = %if.end312
  %108 = load i32* @patsize, align 4, !tbaa !3
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %cont318, label %ioc_bb317

ioc_bb317:                                        ; preds = %if.then315
  %110 = sext i32 %108 to i64
  call void @__ioc_report_conversion(i32 601, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %110, i8 1) nounwind
  br label %cont318

cont318:                                          ; preds = %ioc_bb317, %if.then315
  %call319 = call i8* @zalloc(i32 %108) nounwind
  %111 = bitcast i8* %call319 to %struct.patprog*
  %112 = bitcast %struct.patprog* %p.3 to i8*
  %113 = load i32* @patsize, align 4, !tbaa !3
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %cont322, label %ioc_bb321

ioc_bb321:                                        ; preds = %cont318
  %115 = sext i32 %113 to i64
  call void @__ioc_report_conversion(i32 602, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %115, i8 1) nounwind
  br label %cont322

cont322:                                          ; preds = %ioc_bb321, %cont318
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call319, i8* %112, i32 %113, i32 1, i1 false)
  br label %if.end336

if.else323:                                       ; preds = %if.end312
  %and324 = and i32 %107, 64
  %tobool325 = icmp eq i32 %and324, 0
  br i1 %tobool325, label %if.then326, label %if.end336

if.then326:                                       ; preds = %if.else323
  %116 = load i32* @patsize, align 4, !tbaa !3
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %cont330, label %ioc_bb329

ioc_bb329:                                        ; preds = %if.then326
  %118 = sext i32 %116 to i64
  call void @__ioc_report_conversion(i32 606, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %118, i8 1) nounwind
  br label %cont330

cont330:                                          ; preds = %ioc_bb329, %if.then326
  %call331 = call i8* @zhalloc(i32 %116) nounwind
  %119 = bitcast i8* %call331 to %struct.patprog*
  %120 = bitcast %struct.patprog* %p.3 to i8*
  %121 = load i32* @patsize, align 4, !tbaa !3
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %cont334, label %ioc_bb333

ioc_bb333:                                        ; preds = %cont330
  %123 = sext i32 %121 to i64
  call void @__ioc_report_conversion(i32 607, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %123, i8 1) nounwind
  br label %cont334

cont334:                                          ; preds = %ioc_bb333, %cont330
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call331, i8* %120, i32 %121, i32 1, i1 false)
  br label %if.end336

if.end336:                                        ; preds = %if.else323, %cont334, %cont322
  %p.4 = phi %struct.patprog* [ %111, %cont322 ], [ %p.3, %if.else323 ], [ %119, %cont334 ]
  %tobool337 = icmp eq i8** %endexp, null
  br i1 %tobool337, label %return, label %if.then338

if.then338:                                       ; preds = %if.end336
  %124 = load i8** @patparse, align 4, !tbaa !4
  store i8* %124, i8** %endexp, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.then338, %if.end336, %if.then78
  %retval.0 = phi %struct.patprog* [ null, %if.then78 ], [ %p.4, %if.end336 ], [ %p.4, %if.then338 ]
  ret %struct.patprog* %retval.0
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @zrealloc(i8*, i32)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @remnulargs(i8*)

declare void @__ioc_report_shl_bitwidth(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define internal fastcc i32 @patcompswitch(i32 %paren, i32* nocapture %flagp) nounwind {
entry:
  %up.i280 = alloca %union.upat, align 4
  %up.i274 = alloca %union.upat, align 4
  %up.i268 = alloca %union.upat, align 4
  %up.i262 = alloca %union.upat, align 4
  %up.i256 = alloca %union.upat, align 4
  %up.i250 = alloca %union.upat, align 4
  %up.i244 = alloca %union.upat, align 4
  %up.i238 = alloca %union.upat, align 4
  %up.i232 = alloca %union.upat, align 4
  %up.i = alloca %union.upat, align 4
  %flags = alloca i32, align 4
  %savglobflags = alloca i32, align 4
  %up = alloca %union.upat, align 4
  %up88 = alloca %union.upat, align 4
  %0 = load i32* @patglobflags, align 4, !tbaa !2
  store i32 %0, i32* %savglobflags, align 4, !tbaa !3
  store i32 0, i32* %flagp, align 4, !tbaa !2
  %tobool = icmp ne i32 %paren, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %1, 1024
  %tobool1 = icmp ne i32 %and, 0
  %2 = load i32* @patnpar, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, 10
  %or.cond = and i1 %tobool1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  %6 = sext i32 %2 to i64
  br i1 %5, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then
  call void @__ioc_report_add_overflow(i32 639, i32 20, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then, %ioc_bb
  store i32 %4, i32* @patnpar, align 4, !tbaa !2
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 128)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont
  call void @__ioc_report_add_overflow(i32 640, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 128, i64 %6, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %cont, %ioc_bb3
  %10 = bitcast %union.upat* %up.i238 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %10) nounwind
  %11 = load i8** @patcode, align 4, !tbaa !4
  %12 = load i8** @patout, align 4, !tbaa !4
  %l.i239 = getelementptr inbounds %union.upat* %up.i238, i32 0, i32 0
  store i32 %8, i32* %l.i239, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i240 = ptrtoint i8* %12 to i32
  %sub.ptr.lhs.cast.i241 = ptrtoint i8* %11 to i32
  %sub.ptr.sub.i242 = sub i32 %sub.ptr.lhs.cast.i241, %sub.ptr.rhs.cast.i240
  %sub.ptr.div.i243 = ashr exact i32 %sub.ptr.sub.i242, 2
  call fastcc void @patadd(i8* %10, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %10) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %cont4
  %starter.0 = phi i32 [ %sub.ptr.div.i243, %cont4 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %parno.0 = phi i32 [ %2, %cont4 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %13 = bitcast %union.upat* %up.i244 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) nounwind
  %14 = load i8** @patcode, align 4, !tbaa !4
  %15 = load i8** @patout, align 4, !tbaa !4
  %l.i245 = getelementptr inbounds %union.upat* %up.i244, i32 0, i32 0
  store i32 32, i32* %l.i245, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i246 = ptrtoint i8* %15 to i32
  %sub.ptr.lhs.cast.i247 = ptrtoint i8* %14 to i32
  %sub.ptr.sub.i248 = sub i32 %sub.ptr.lhs.cast.i247, %sub.ptr.rhs.cast.i246
  %sub.ptr.div.i249 = ashr exact i32 %sub.ptr.sub.i248, 2
  call fastcc void @patadd(i8* %13, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %13) nounwind
  %call6 = call fastcc i32 @patcompbranch(i32* %flags)
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %16 = load i32* @patglobflags, align 4, !tbaa !2
  %17 = load i32* %savglobflags, align 4, !tbaa !3
  %not.cmp10 = icmp ne i32 %16, %17
  %gfchanged.0 = zext i1 %not.cmp10 to i32
  %tobool15 = icmp eq i32 %starter.0, 0
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end9
  call fastcc void @pattail(i32 %starter.0, i32 %sub.ptr.div.i249)
  br label %if.end18

if.end18:                                         ; preds = %if.end9, %if.then16
  %starter.1 = phi i32 [ %starter.0, %if.then16 ], [ %sub.ptr.div.i249, %if.end9 ]
  %18 = load i32* %flags, align 4, !tbaa !2
  %and19 = and i32 %18, 6
  %19 = load i32* %flagp, align 4, !tbaa !2
  %or = or i32 %19, %and19
  %20 = bitcast %union.upat* %up.i256 to i8*
  %l.i257 = getelementptr inbounds %union.upat* %up.i256, i32 0, i32 0
  %21 = bitcast %union.upat* %up.i262 to i8*
  %l.i263 = getelementptr inbounds %union.upat* %up.i262, i32 0, i32 0
  %22 = getelementptr inbounds %union.upat* %up, i32 0, i32 0
  %23 = bitcast %union.upat* %up to i8*
  %24 = bitcast %union.upat* %up.i268 to i8*
  %l.i269 = getelementptr inbounds %union.upat* %up.i268, i32 0, i32 0
  %25 = bitcast %union.upat* %up.i250 to i8*
  %l.i251 = getelementptr inbounds %union.upat* %up.i250, i32 0, i32 0
  %26 = bitcast %union.upat* %up.i274 to i8*
  %l.i275 = getelementptr inbounds %union.upat* %up.i274, i32 0, i32 0
  %27 = bitcast %union.upat* %up.i280 to i8*
  %l.i281 = getelementptr inbounds %union.upat* %up.i280, i32 0, i32 0
  %l = getelementptr inbounds %union.upat* %up88, i32 0, i32 0
  %28 = bitcast %union.upat* %up88 to i8*
  br label %while.cond

while.cond:                                       ; preds = %if.end124, %if.end18
  %storemerge = phi i32 [ %or, %if.end18 ], [ %or126, %if.end124 ]
  %br.0 = phi i32 [ %sub.ptr.div.i249, %if.end18 ], [ %br.2288, %if.end124 ]
  %excsync.0 = phi i32 [ 0, %if.end18 ], [ %excsync.2289, %if.end124 ]
  %gfchanged.1 = phi i32 [ %gfchanged.0, %if.end18 ], [ %gfchanged.2, %if.end124 ]
  store i32 %storemerge, i32* %flagp, align 4
  %29 = load i8** @patparse, align 4, !tbaa !4
  %30 = load i8* %29, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 654, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 140, i8 1) nounwind
  %cmp22 = icmp eq i8 %30, -116
  br i1 %cmp22, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %31 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool25 = icmp eq i8 %31, 0
  br i1 %tobool25, label %while.end, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.rhs
  %32 = load i8** @patparse, align 4, !tbaa !4
  %33 = load i8* %32, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 654, i32 78, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp30 = icmp eq i8 %33, -106
  br i1 %cmp30, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.lhs.true26
  %34 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %34, i32 1
  %35 = load i8* %arrayidx, align 1, !tbaa !0
  %conv32 = sext i8 %35 to i32
  %cmp33 = icmp eq i8 %35, 47
  br i1 %cmp33, label %while.body, label %lor.rhs35

lor.rhs35:                                        ; preds = %land.rhs
  %36 = load i8** @patendseg, align 4, !tbaa !4
  %37 = load i32* @patendseglen, align 4, !tbaa !2
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %cont39, label %ioc_bb38

ioc_bb38:                                         ; preds = %lor.rhs35
  %39 = sext i32 %37 to i64
  call void @__ioc_report_conversion(i32 654, i32 140, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont39

cont39:                                           ; preds = %ioc_bb38, %lor.rhs35
  %call40 = call i8* @memchr(i8* %36, i32 %conv32, i32 %37) nounwind readonly
  %lnot = icmp eq i8* %call40, null
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %cont39, %while.cond, %land.rhs
  %40 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8* %40, i32 1
  store i8* %incdec.ptr, i8** @patparse, align 4, !tbaa !4
  %41 = load i8* %40, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 655, i32 45, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp46 = icmp eq i8 %41, -106
  %conv47 = zext i1 %cmp46 to i32
  %42 = load i32* %flagp, align 4, !tbaa !2
  %and48 = and i32 %42, -5
  store i32 %and48, i32* %flagp, align 4, !tbaa !2
  br i1 %cmp46, label %if.then50, label %if.else82

if.then50:                                        ; preds = %while.body
  %tobool51 = icmp eq i32 %excsync.0, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  call void @llvm.lifetime.start(i64 -1, i8* %20) nounwind
  %43 = load i8** @patcode, align 4, !tbaa !4
  %44 = load i8** @patout, align 4, !tbaa !4
  store i32 1, i32* %l.i257, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i258 = ptrtoint i8* %44 to i32
  %sub.ptr.lhs.cast.i259 = ptrtoint i8* %43 to i32
  %sub.ptr.sub.i260 = sub i32 %sub.ptr.lhs.cast.i259, %sub.ptr.rhs.cast.i258
  %sub.ptr.div.i261 = ashr exact i32 %sub.ptr.sub.i260, 2
  call fastcc void @patadd(i8* %20, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %20) nounwind
  call fastcc void @patoptail(i32 %br.0, i32 %sub.ptr.div.i261)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then52
  %excsync.1 = phi i32 [ %excsync.0, %if.then50 ], [ %sub.ptr.div.i261, %if.then52 ]
  %45 = load i32* @patglobflags, align 4, !tbaa !2
  %and55 = and i32 %45, -256
  store i32 %and55, i32* @patglobflags, align 4, !tbaa !2
  %46 = load i32* @patflags, align 4, !tbaa !2
  %and56 = and i32 %46, 2
  %tobool57 = icmp eq i32 %and56, 0
  %brmerge = or i1 %tobool57, %tobool
  br i1 %brmerge, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.end54
  call void @llvm.lifetime.start(i64 -1, i8* %21) nounwind
  %47 = load i8** @patcode, align 4, !tbaa !4
  %48 = load i8** @patout, align 4, !tbaa !4
  store i32 48, i32* %l.i263, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i264 = ptrtoint i8* %48 to i32
  %sub.ptr.lhs.cast.i265 = ptrtoint i8* %47 to i32
  %sub.ptr.sub.i266 = sub i32 %sub.ptr.lhs.cast.i265, %sub.ptr.rhs.cast.i264
  call fastcc void @patadd(i8* %21, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %21) nounwind
  br label %if.end64

if.else61:                                        ; preds = %if.end54
  call void @llvm.lifetime.start(i64 -1, i8* %24) nounwind
  %49 = load i8** @patcode, align 4, !tbaa !4
  %50 = load i8** @patout, align 4, !tbaa !4
  store i32 49, i32* %l.i269, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i270 = ptrtoint i8* %50 to i32
  %sub.ptr.lhs.cast.i271 = ptrtoint i8* %49 to i32
  %sub.ptr.sub.i272 = sub i32 %sub.ptr.lhs.cast.i271, %sub.ptr.rhs.cast.i270
  call fastcc void @patadd(i8* %24, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %24) nounwind
  %51 = load i32* @patflags, align 4, !tbaa !2
  %or63 = or i32 %51, 2048
  store i32 %or63, i32* @patflags, align 4, !tbaa !2
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59
  %br.1.in = phi i32 [ %sub.ptr.sub.i266, %if.then59 ], [ %sub.ptr.sub.i272, %if.else61 ]
  %br.1 = ashr exact i32 %br.1.in, 2
  store i32 0, i32* %22, align 4, !tbaa !4
  call fastcc void @patadd(i8* %23, i32 0, i32 4, i32 0)
  br i1 %tobool, label %if.end95.thread, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end64
  %52 = load i8** @patendseg, align 4, !tbaa !4
  %53 = load i8* %52, align 1, !tbaa !0
  %cmp70 = icmp eq i8 %53, 47
  br i1 %cmp70, label %if.then72, label %if.end95.thread

if.then72:                                        ; preds = %land.lhs.true68
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv47, i32 1)
  %55 = extractvalue { i32, i1 } %54, 0
  %56 = extractvalue { i32, i1 } %54, 1
  br i1 %56, label %ioc_bb73, label %cont74

ioc_bb73:                                         ; preds = %if.then72
  call void @__ioc_report_add_overflow(i32 693, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 1, i64 1, i8 13) nounwind
  %.pre = load i8** @patendseg, align 4, !tbaa !4
  br label %cont74

cont74:                                           ; preds = %if.then72, %ioc_bb73
  %57 = phi i8* [ %52, %if.then72 ], [ %.pre, %ioc_bb73 ]
  %incdec.ptr75 = getelementptr inbounds i8* %57, i32 1
  store i8* %incdec.ptr75, i8** @patendseg, align 4, !tbaa !4
  %58 = load i32* @patendseglen, align 4, !tbaa !2
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %58, i32 -1)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br i1 %61, label %ioc_bb76, label %cont77

ioc_bb76:                                         ; preds = %cont74
  %62 = sext i32 %58 to i64
  call void @__ioc_report_add_overflow(i32 695, i32 21, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %62, i64 -1, i8 13) nounwind
  br label %cont77

cont77:                                           ; preds = %cont74, %ioc_bb76
  store i32 %60, i32* @patendseglen, align 4, !tbaa !2
  %63 = load i8** @patendstr, align 4, !tbaa !4
  %incdec.ptr78 = getelementptr inbounds i8* %63, i32 1
  store i8* %incdec.ptr78, i8** @patendstr, align 4, !tbaa !4
  %64 = load i32* @patendstrlen, align 4, !tbaa !2
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %64, i32 -1)
  %66 = extractvalue { i32, i1 } %65, 0
  %67 = extractvalue { i32, i1 } %65, 1
  br i1 %67, label %ioc_bb79, label %if.end95

ioc_bb79:                                         ; preds = %cont77
  %68 = sext i32 %64 to i64
  call void @__ioc_report_add_overflow(i32 697, i32 21, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %68, i64 -1, i8 13) nounwind
  br label %if.end95

if.else82:                                        ; preds = %while.body
  call void @llvm.lifetime.start(i64 -1, i8* %26) nounwind
  %69 = load i8** @patcode, align 4, !tbaa !4
  %70 = load i8** @patout, align 4, !tbaa !4
  store i32 32, i32* %l.i275, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i276 = ptrtoint i8* %70 to i32
  %sub.ptr.lhs.cast.i277 = ptrtoint i8* %69 to i32
  %sub.ptr.sub.i278 = sub i32 %sub.ptr.lhs.cast.i277, %sub.ptr.rhs.cast.i276
  %sub.ptr.div.i279 = ashr exact i32 %sub.ptr.sub.i278, 2
  call fastcc void @patadd(i8* %26, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %26) nounwind
  br i1 %tobool, label %if.else93, label %if.then85

if.then85:                                        ; preds = %if.else82
  store i32 0, i32* @patglobflags, align 4, !tbaa !2
  %71 = load i8** @patout, align 4, !tbaa !4
  %globflags = getelementptr inbounds i8* %71, i32 16
  %72 = bitcast i8* %globflags to i32*
  %73 = load i32* %72, align 4, !tbaa !2
  %tobool86 = icmp eq i32 %73, 0
  br i1 %tobool86, label %if.end95.thread, label %if.then87

if.then87:                                        ; preds = %if.then85
  call void @llvm.lifetime.start(i64 -1, i8* %27) nounwind
  %74 = load i8** @patcode, align 4, !tbaa !4
  store i32 8, i32* %l.i281, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i282 = ptrtoint i8* %71 to i32
  %sub.ptr.lhs.cast.i283 = ptrtoint i8* %74 to i32
  %sub.ptr.sub.i284 = sub i32 %sub.ptr.lhs.cast.i283, %sub.ptr.rhs.cast.i282
  %sub.ptr.div.i285 = ashr exact i32 %sub.ptr.sub.i284, 2
  call fastcc void @patadd(i8* %27, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %27) nounwind
  %75 = load i32* @patglobflags, align 4, !tbaa !2
  store i32 %75, i32* %l, align 4, !tbaa !3
  call fastcc void @patadd(i8* %28, i32 0, i32 4, i32 0)
  br label %if.end95.thread

if.else93:                                        ; preds = %if.else82
  %76 = load i32* %savglobflags, align 4, !tbaa !3
  store i32 %76, i32* @patglobflags, align 4, !tbaa !2
  br label %if.end95.thread

if.end95.thread:                                  ; preds = %if.end64, %land.lhs.true68, %if.else93, %if.then87, %if.then85
  %br.2.ph = phi i32 [ %br.1, %if.end64 ], [ %br.1, %land.lhs.true68 ], [ %sub.ptr.div.i279, %if.else93 ], [ %sub.ptr.div.i279, %if.then87 ], [ %sub.ptr.div.i279, %if.then85 ]
  %excsync.2.ph = phi i32 [ %excsync.1, %if.end64 ], [ %excsync.1, %land.lhs.true68 ], [ 0, %if.else93 ], [ 0, %if.then87 ], [ 0, %if.then85 ]
  %gfnode.0.ph = phi i32 [ 0, %if.end64 ], [ 0, %land.lhs.true68 ], [ 0, %if.else93 ], [ %sub.ptr.div.i285, %if.then87 ], [ 0, %if.then85 ]
  %call96286 = call fastcc i32 @patcompbranch(i32* %flags)
  br label %if.end106

if.end95:                                         ; preds = %ioc_bb79, %cont77
  store i32 %66, i32* @patendstrlen, align 4, !tbaa !2
  %call96 = call fastcc i32 @patcompbranch(i32* %flags)
  %cmp97 = icmp eq i32 %55, 2
  br i1 %cmp97, label %if.then99, label %if.end106

if.then99:                                        ; preds = %if.end95
  %77 = load i8** @patendseg, align 4, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds i8* %77, i32 -1
  store i8* %incdec.ptr100, i8** @patendseg, align 4, !tbaa !4
  %78 = load i32* @patendseglen, align 4, !tbaa !2
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %78, i32 1)
  %80 = extractvalue { i32, i1 } %79, 0
  %81 = extractvalue { i32, i1 } %79, 1
  br i1 %81, label %ioc_bb101, label %cont102

ioc_bb101:                                        ; preds = %if.then99
  %82 = sext i32 %78 to i64
  call void @__ioc_report_add_overflow(i32 740, i32 19, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %82, i64 1, i8 13) nounwind
  br label %cont102

cont102:                                          ; preds = %if.then99, %ioc_bb101
  store i32 %80, i32* @patendseglen, align 4, !tbaa !2
  %83 = load i8** @patendstr, align 4, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds i8* %83, i32 -1
  store i8* %incdec.ptr103, i8** @patendstr, align 4, !tbaa !4
  %84 = load i32* @patendstrlen, align 4, !tbaa !2
  %85 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %84, i32 1)
  %86 = extractvalue { i32, i1 } %85, 0
  %87 = extractvalue { i32, i1 } %85, 1
  br i1 %87, label %ioc_bb104, label %cont105

ioc_bb104:                                        ; preds = %cont102
  %88 = sext i32 %84 to i64
  call void @__ioc_report_add_overflow(i32 742, i32 19, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %88, i64 1, i8 13) nounwind
  br label %cont105

cont105:                                          ; preds = %cont102, %ioc_bb104
  store i32 %86, i32* @patendstrlen, align 4, !tbaa !2
  br label %if.end106

if.end106:                                        ; preds = %if.end95.thread, %cont105, %if.end95
  %call96292 = phi i32 [ %call96286, %if.end95.thread ], [ %call96, %cont105 ], [ %call96, %if.end95 ]
  %gfnode.0291 = phi i32 [ %gfnode.0.ph, %if.end95.thread ], [ 0, %cont105 ], [ 0, %if.end95 ]
  %tilde.0290 = phi i32 [ %conv47, %if.end95.thread ], [ 2, %cont105 ], [ %55, %if.end95 ]
  %excsync.2289 = phi i32 [ %excsync.2.ph, %if.end95.thread ], [ %excsync.1, %cont105 ], [ %excsync.1, %if.end95 ]
  %br.2288 = phi i32 [ %br.2.ph, %if.end95.thread ], [ %br.1, %cont105 ], [ %br.1, %if.end95 ]
  %tobool107 = icmp eq i32 %call96292, 0
  br i1 %tobool107, label %return, label %if.end109

if.end109:                                        ; preds = %if.end106
  %tobool110 = icmp eq i32 %gfnode.0291, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end109
  call fastcc void @pattail(i32 %gfnode.0291, i32 %call96292)
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.then111
  %tobool113 = icmp eq i32 %tilde.0290, 0
  br i1 %tobool113, label %land.lhs.true114, label %if.end120

land.lhs.true114:                                 ; preds = %if.end112
  %89 = load i32* @patglobflags, align 4, !tbaa !2
  %90 = load i32* %savglobflags, align 4, !tbaa !3
  %cmp115 = icmp eq i32 %89, %90
  br i1 %cmp115, label %if.end120, label %if.then117

if.then117:                                       ; preds = %land.lhs.true114
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %gfchanged.1, i32 1)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb118, label %if.end120

ioc_bb118:                                        ; preds = %if.then117
  %94 = sext i32 %gfchanged.1 to i64
  call void @__ioc_report_add_overflow(i32 749, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %94, i64 1, i8 13) nounwind
  br label %if.end120

if.end120:                                        ; preds = %ioc_bb118, %if.then117, %land.lhs.true114, %if.end112
  %gfchanged.2 = phi i32 [ %gfchanged.1, %if.end112 ], [ %gfchanged.1, %land.lhs.true114 ], [ %92, %if.then117 ], [ %92, %ioc_bb118 ]
  call fastcc void @pattail(i32 %starter.1, i32 %br.2288)
  %tobool121 = icmp eq i32 %excsync.2289, 0
  br i1 %tobool121, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.end120
  call void @llvm.lifetime.start(i64 -1, i8* %25) nounwind
  %95 = load i8** @patcode, align 4, !tbaa !4
  %96 = load i8** @patout, align 4, !tbaa !4
  store i32 2, i32* %l.i251, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i252 = ptrtoint i8* %96 to i32
  %sub.ptr.lhs.cast.i253 = ptrtoint i8* %95 to i32
  %sub.ptr.sub.i254 = sub i32 %sub.ptr.lhs.cast.i253, %sub.ptr.rhs.cast.i252
  %sub.ptr.div.i255 = ashr exact i32 %sub.ptr.sub.i254, 2
  call fastcc void @patadd(i8* %25, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %25) nounwind
  call fastcc void @patoptail(i32 %br.2288, i32 %sub.ptr.div.i255)
  br label %if.end124

if.end124:                                        ; preds = %if.end120, %if.then122
  %97 = load i32* %flags, align 4, !tbaa !2
  %and125 = and i32 %97, 2
  %98 = load i32* %flagp, align 4, !tbaa !2
  %or126 = or i32 %98, %and125
  br label %while.cond

while.end:                                        ; preds = %lor.rhs, %land.lhs.true26, %cont39
  br i1 %tobool, label %cond.true, label %cond.end133

cond.true:                                        ; preds = %while.end
  %tobool128 = icmp eq i32 %parno.0, 0
  br i1 %tobool128, label %cond.end133, label %cond.true129

cond.true129:                                     ; preds = %cond.true
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %parno.0, i32 144)
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  br i1 %101, label %ioc_bb130, label %cond.end133

ioc_bb130:                                        ; preds = %cond.true129
  %102 = sext i32 %parno.0 to i64
  call void @__ioc_report_add_overflow(i32 761, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 144, i64 %102, i8 13) nounwind
  br label %cond.end133

cond.end133:                                      ; preds = %cond.true129, %cond.true, %while.end, %ioc_bb130
  %cond134 = phi i32 [ %100, %ioc_bb130 ], [ %100, %cond.true129 ], [ 5, %cond.true ], [ 0, %while.end ]
  %103 = bitcast %union.upat* %up.i232 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %103) nounwind
  %104 = load i8** @patcode, align 4, !tbaa !4
  %105 = load i8** @patout, align 4, !tbaa !4
  %l.i233 = getelementptr inbounds %union.upat* %up.i232, i32 0, i32 0
  store i32 %cond134, i32* %l.i233, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i234 = ptrtoint i8* %105 to i32
  %sub.ptr.lhs.cast.i235 = ptrtoint i8* %104 to i32
  %sub.ptr.sub.i236 = sub i32 %sub.ptr.lhs.cast.i235, %sub.ptr.rhs.cast.i234
  %sub.ptr.div.i237 = ashr exact i32 %sub.ptr.sub.i236, 2
  call fastcc void @patadd(i8* %103, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %103) nounwind
  call fastcc void @pattail(i32 %starter.1, i32 %sub.ptr.div.i237)
  %106 = load i8** @patout, align 4, !tbaa !4
  %107 = bitcast i8* %106 to %union.upat*
  %add.ptr = getelementptr inbounds %union.upat* %107, i32 %starter.1
  %tobool136296 = icmp eq %union.upat* %add.ptr, null
  br i1 %tobool136296, label %for.end, label %for.body

for.body:                                         ; preds = %cond.end133, %for.cond.backedge
  %ptr.0297 = phi %union.upat* [ %add.ptr153, %for.cond.backedge ], [ %add.ptr, %cond.end133 ]
  %l137 = getelementptr inbounds %union.upat* %ptr.0297, i32 0, i32 0
  %108 = load i32* %l137, align 4, !tbaa !3
  %and138 = and i32 %108, 48
  %cmp139 = icmp eq i32 %and138, 48
  br i1 %cmp139, label %cont145, label %if.then141

if.then141:                                       ; preds = %for.body
  %109 = load i8** @patout, align 4, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint %union.upat* %ptr.0297 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %109 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  call fastcc void @patoptail(i32 %sub.ptr.div, i32 %sub.ptr.div.i237)
  %.pre300 = load i32* %l137, align 4, !tbaa !3
  br label %cont145

cont145:                                          ; preds = %if.then141, %for.body
  %110 = phi i32 [ %.pre300, %if.then141 ], [ %108, %for.body ]
  %shr = ashr i32 %110, 8
  %tobool146 = icmp eq i32 %shr, 0
  br i1 %tobool146, label %for.end, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont145
  %and149 = and i32 %110, 255
  %cmp150 = icmp eq i32 %and149, 3
  %idx.neg = sub i32 0, %shr
  %idx.neg.sink = select i1 %cmp150, i32 %idx.neg, i32 %shr
  %add.ptr153 = getelementptr inbounds %union.upat* %ptr.0297, i32 %idx.neg.sink
  %tobool136 = icmp eq %union.upat* %add.ptr153, null
  br i1 %tobool136, label %for.end, label %for.body

for.end:                                          ; preds = %cont145, %for.cond.backedge, %cond.end133
  %111 = load i8** @patparse, align 4, !tbaa !4
  br i1 %tobool, label %land.lhs.true162, label %land.lhs.true171

land.lhs.true162:                                 ; preds = %for.end
  %incdec.ptr163 = getelementptr inbounds i8* %111, i32 1
  store i8* %incdec.ptr163, i8** @patparse, align 4, !tbaa !4
  %112 = load i8* %111, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 771, i32 44, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp167 = icmp eq i8 %112, -119
  br i1 %cmp167, label %land.lhs.true184.critedge, label %return

land.lhs.true171:                                 ; preds = %for.end
  %113 = load i8* %111, align 1, !tbaa !0
  %tobool173 = icmp eq i8 %113, 0
  br i1 %tobool173, label %return, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %land.lhs.true171
  %114 = load i32* @patflags, align 4, !tbaa !2
  %and175 = and i32 %114, 1
  %tobool176 = icmp ne i32 %and175, 0
  %cmp179 = icmp eq i8 %113, 47
  %or.cond230 = and i1 %tobool176, %cmp179
  %starter.1. = select i1 %or.cond230, i32 %starter.1, i32 0
  ret i32 %starter.1.

land.lhs.true184.critedge:                        ; preds = %land.lhs.true162
  %tobool185.old = icmp eq i32 %gfchanged.1, 0
  br i1 %tobool185.old, label %return, label %if.then186

if.then186:                                       ; preds = %land.lhs.true184.critedge
  %115 = bitcast %union.upat* %up.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %115) nounwind
  %116 = load i8** @patcode, align 4, !tbaa !4
  %117 = load i8** @patout, align 4, !tbaa !4
  %l.i = getelementptr inbounds %union.upat* %up.i, i32 0, i32 0
  store i32 8, i32* %l.i, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i = ptrtoint i8* %117 to i32
  %sub.ptr.lhs.cast.i = ptrtoint i8* %116 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call fastcc void @patadd(i8* %115, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %115) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i237, i32 %sub.ptr.div.i)
  %118 = load i32* %savglobflags, align 4, !tbaa !3
  store i32 %118, i32* @patglobflags, align 4, !tbaa !2
  %119 = bitcast i32* %savglobflags to i8*
  call fastcc void @patadd(i8* %119, i32 0, i32 4, i32 0)
  br label %return

return:                                           ; preds = %if.end106, %land.lhs.true171, %if.then186, %land.lhs.true184.critedge, %land.lhs.true162, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %land.lhs.true162 ], [ %starter.1, %land.lhs.true184.critedge ], [ %starter.1, %if.then186 ], [ %starter.1, %land.lhs.true171 ], [ 0, %if.end106 ]
  ret i32 %retval.0
}

define internal fastcc void @patadd(i8* %add, i32 %ch, i32 %n, i32 %paflags) nounwind {
entry:
  %0 = load i32* @patsize, align 4, !tbaa !3
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %n)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %n to i64
  %5 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 348, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %5, i64 %4, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %and = and i32 %paflags, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cont
  %6 = icmp sgt i32 %2, -1
  br i1 %6, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %if.then
  %7 = sext i32 %2 to i64
  tail call void @__ioc_report_conversion(i32 350, i32 19, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %if.then
  %8 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 4)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb3, label %cont6

ioc_bb3:                                          ; preds = %cont2
  %11 = zext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 350, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %11, i64 4, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb3, %cont2
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %9, i32 1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb7, label %cont12

ioc_bb7:                                          ; preds = %cont6
  %15 = zext i32 %9 to i64
  tail call void @__ioc_report_sub_overflow(i32 350, i32 54, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind
  br label %cont12

cont12:                                           ; preds = %cont6, %ioc_bb7
  %and13 = and i32 %13, -4
  %16 = icmp sgt i32 %and13, -1
  br i1 %16, label %if.end, label %ioc_bb14

ioc_bb14:                                         ; preds = %cont12
  %17 = zext i32 %and13 to i64
  tail call void @__ioc_report_conversion(i32 350, i32 18, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i64 %17, i8 0) nounwind
  br label %if.end

if.end:                                           ; preds = %cont12, %ioc_bb14, %cont
  %newpatsize.0 = phi i32 [ %2, %cont ], [ %and13, %ioc_bb14 ], [ %and13, %cont12 ]
  %18 = load i32* @patalloc, align 4, !tbaa !3
  %cmp = icmp slt i32 %18, %newpatsize.0
  br i1 %cmp, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end
  %19 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %newpatsize.0, i32 2)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb18, label %cont19

ioc_bb18:                                         ; preds = %if.then16
  %22 = sext i32 %newpatsize.0 to i64
  tail call void @__ioc_report_mul_overflow(i32 352, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 2, i64 %22, i8 13) nounwind
  br label %cont19

cont19:                                           ; preds = %if.then16, %ioc_bb18
  %23 = load i8** @patout, align 4, !tbaa !4
  %24 = icmp sgt i32 %20, -1
  br i1 %24, label %cont22, label %ioc_bb21

ioc_bb21:                                         ; preds = %cont19
  %25 = sext i32 %20 to i64
  tail call void @__ioc_report_conversion(i32 353, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont22

cont22:                                           ; preds = %ioc_bb21, %cont19
  %call = tail call i8* @zrealloc(i8* %23, i32 %20) nounwind
  store i8* %call, i8** @patout, align 4, !tbaa !4
  %26 = load i32* @patsize, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %call, i32 %26
  store i8* %add.ptr, i8** @patcode, align 4, !tbaa !4
  store i32 %20, i32* @patalloc, align 4, !tbaa !3
  br label %if.end23

if.end23:                                         ; preds = %cont22, %if.end
  store i32 %newpatsize.0, i32* @patsize, align 4, !tbaa !3
  %tobool24 = icmp eq i8* %add, null
  br i1 %tobool24, label %if.else78, label %if.then25

if.then25:                                        ; preds = %if.end23
  %and26 = and i32 %paflags, 2
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %while.cond69, label %while.cond

while.cond:                                       ; preds = %cont46, %if.else63, %cont60, %if.then25
  %n.addr.0 = phi i32 [ %n, %if.then25 ], [ %28, %cont60 ], [ %28, %if.else63 ], [ %28, %cont46 ]
  %add.addr.0 = phi i8* [ %add, %if.then25 ], [ %incdec.ptr56, %cont60 ], [ %incdec.ptr55, %if.else63 ], [ %incdec.ptr, %cont46 ]
  %27 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.0, i32 -1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb29, label %cont30

ioc_bb29:                                         ; preds = %while.cond
  %30 = sext i32 %n.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 364, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %30, i64 -1, i8 13) nounwind
  br label %cont30

cont30:                                           ; preds = %while.cond, %ioc_bb29
  %tobool31 = icmp eq i32 %n.addr.0, 0
  br i1 %tobool31, label %if.end85, label %while.body

while.body:                                       ; preds = %cont30
  %31 = load i8* %add.addr.0, align 1, !tbaa !0
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %while.body
  %33 = sext i8 %31 to i64
  tail call void @__ioc_report_conversion(i32 365, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %while.body
  %idxprom = zext i8 %31 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %34 = load i16* %arrayidx, align 2, !tbaa !5
  %and39 = and i16 %34, 16
  %tobool40 = icmp eq i16 %and39, 0
  br i1 %tobool40, label %if.else, label %if.then41

if.then41:                                        ; preds = %cont34
  %incdec.ptr = getelementptr inbounds i8* %add.addr.0, i32 1
  %35 = load i8* %add.addr.0, align 1, !tbaa !0
  %conv42 = sext i8 %35 to i32
  tail call void @__ioc_report_conversion(i32 366, i32 57, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %36 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv42, i32 -124)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  br i1 %38, label %ioc_bb45, label %cont46

ioc_bb45:                                         ; preds = %if.then41
  %39 = sext i8 %35 to i64
  tail call void @__ioc_report_sub_overflow(i32 366, i32 47, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %39, i64 -124, i8 13) nounwind
  br label %cont46

cont46:                                           ; preds = %if.then41, %ioc_bb45
  %arrayidx47 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %37
  %40 = load i8* %arrayidx47, align 1, !tbaa !0
  %41 = load i8** @patcode, align 4, !tbaa !4
  %incdec.ptr48 = getelementptr inbounds i8* %41, i32 1
  store i8* %incdec.ptr48, i8** @patcode, align 4, !tbaa !4
  store i8 %40, i8* %41, align 1, !tbaa !0
  br label %while.cond

if.else:                                          ; preds = %cont34
  %42 = load i8* %add.addr.0, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 367, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp52 = icmp eq i8 %42, -125
  %incdec.ptr55 = getelementptr inbounds i8* %add.addr.0, i32 1
  br i1 %cmp52, label %if.then54, label %if.else63

if.then54:                                        ; preds = %if.else
  %incdec.ptr56 = getelementptr inbounds i8* %add.addr.0, i32 2
  %43 = load i8* %incdec.ptr55, align 1, !tbaa !0
  %conv57 = sext i8 %43 to i32
  %xor = xor i32 %conv57, 32
  %xor.off = add i32 %xor, 128
  %44 = icmp ult i32 %xor.off, 256
  br i1 %44, label %cont60, label %ioc_bb59

ioc_bb59:                                         ; preds = %if.then54
  %45 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 369, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %45, i8 1) nounwind
  br label %cont60

cont60:                                           ; preds = %ioc_bb59, %if.then54
  %conv61 = trunc i32 %xor to i8
  %46 = load i8** @patcode, align 4, !tbaa !4
  %incdec.ptr62 = getelementptr inbounds i8* %46, i32 1
  store i8* %incdec.ptr62, i8** @patcode, align 4, !tbaa !4
  store i8 %conv61, i8* %46, align 1, !tbaa !0
  br label %while.cond

if.else63:                                        ; preds = %if.else
  %47 = load i8* %add.addr.0, align 1, !tbaa !0
  %48 = load i8** @patcode, align 4, !tbaa !4
  %incdec.ptr65 = getelementptr inbounds i8* %48, i32 1
  store i8* %incdec.ptr65, i8** @patcode, align 4, !tbaa !4
  store i8 %47, i8* %48, align 1, !tbaa !0
  br label %while.cond

while.cond69:                                     ; preds = %if.then25, %while.body73
  %n.addr.1 = phi i32 [ %50, %while.body73 ], [ %n, %if.then25 ]
  %add.addr.1 = phi i8* [ %incdec.ptr74, %while.body73 ], [ %add, %if.then25 ]
  %49 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.1, i32 -1)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb70, label %cont71

ioc_bb70:                                         ; preds = %while.cond69
  %52 = sext i32 %n.addr.1 to i64
  tail call void @__ioc_report_add_overflow(i32 377, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %52, i64 -1, i8 13) nounwind
  br label %cont71

cont71:                                           ; preds = %while.cond69, %ioc_bb70
  %tobool72 = icmp eq i32 %n.addr.1, 0
  br i1 %tobool72, label %if.end85, label %while.body73

while.body73:                                     ; preds = %cont71
  %incdec.ptr74 = getelementptr inbounds i8* %add.addr.1, i32 1
  %53 = load i8* %add.addr.1, align 1, !tbaa !0
  %54 = load i8** @patcode, align 4, !tbaa !4
  %incdec.ptr75 = getelementptr inbounds i8* %54, i32 1
  store i8* %incdec.ptr75, i8** @patcode, align 4, !tbaa !4
  store i8 %53, i8* %54, align 1, !tbaa !0
  br label %while.cond69

if.else78:                                        ; preds = %if.end23
  %ch.off = add i32 %ch, 128
  %55 = icmp ult i32 %ch.off, 256
  br i1 %55, label %cont82, label %ioc_bb81

ioc_bb81:                                         ; preds = %if.else78
  %56 = sext i32 %ch to i64
  tail call void @__ioc_report_conversion(i32 382, i32 21, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %56, i8 1) nounwind
  br label %cont82

cont82:                                           ; preds = %if.else78, %ioc_bb81
  %conv83 = trunc i32 %ch to i8
  %57 = load i8** @patcode, align 4, !tbaa !4
  %incdec.ptr84 = getelementptr inbounds i8* %57, i32 1
  store i8* %incdec.ptr84, i8** @patcode, align 4, !tbaa !4
  store i8 %conv83, i8* %57, align 1, !tbaa !0
  br label %if.end85

if.end85:                                         ; preds = %cont30, %cont71, %cont82
  %58 = load i8** @patout, align 4, !tbaa !4
  %59 = load i32* @patsize, align 4, !tbaa !3
  %add.ptr86 = getelementptr inbounds i8* %58, i32 %59
  store i8* %add.ptr86, i8** @patcode, align 4, !tbaa !4
  ret void
}

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @zalloc(i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @zhalloc(i32)

define i32 @patgetglobflags(i8** nocapture %strp, i32* nocapture %assertp, i32* nocapture %ignore) nounwind {
entry:
  %nptr = alloca i8*, align 4
  %0 = load i8** %strp, align 4, !tbaa !4
  store i32 0, i32* %assertp, align 4, !tbaa !3
  store i32 1, i32* %ignore, align 4, !tbaa !2
  %1 = load i8* %0, align 1, !tbaa !0
  %tobool92 = icmp eq i8 %1, 0
  br i1 %tobool92, label %for.end, label %ioc_bb

ioc_bb:                                           ; preds = %entry, %for.inc
  %2 = phi i8 [ %20, %for.inc ], [ %1, %entry ]
  %ptr.093 = phi i8* [ %incdec.ptr53, %for.inc ], [ %0, %entry ]
  call void @__ioc_report_conversion(i32 895, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp = icmp eq i8 %2, -119
  br i1 %cmp, label %for.end, label %for.body

for.body:                                         ; preds = %ioc_bb
  %3 = load i8* %ptr.093, align 1, !tbaa !0
  %cmp4 = icmp eq i8 %3, 113
  br i1 %cmp4, label %while.cond, label %if.else

while.cond:                                       ; preds = %for.body, %ioc_bb10.while.cond_crit_edge
  %4 = phi i8 [ %.pre97, %ioc_bb10.while.cond_crit_edge ], [ 113, %for.body ]
  %ptr.1 = phi i8* [ %incdec.ptr, %ioc_bb10.while.cond_crit_edge ], [ %ptr.093, %for.body ]
  %tobool7 = icmp eq i8 %4, 0
  br i1 %tobool7, label %for.end, label %ioc_bb10

ioc_bb10:                                         ; preds = %while.cond
  call void @__ioc_report_conversion(i32 898, i32 41, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp12 = icmp eq i8 %4, -119
  %incdec.ptr = getelementptr inbounds i8* %ptr.1, i32 1
  br i1 %cmp12, label %for.end, label %ioc_bb10.while.cond_crit_edge

ioc_bb10.while.cond_crit_edge:                    ; preds = %ioc_bb10
  %.pre97 = load i8* %incdec.ptr, align 1, !tbaa !0
  br label %while.cond

if.else:                                          ; preds = %for.body
  store i32 0, i32* %ignore, align 4, !tbaa !2
  %5 = load i8* %ptr.093, align 1, !tbaa !0
  %conv15 = sext i8 %5 to i32
  switch i32 %conv15, label %return [
    i32 97, label %sw.bb
    i32 108, label %sw.bb30
    i32 105, label %sw.bb33
    i32 73, label %sw.bb36
    i32 98, label %sw.bb38
    i32 66, label %sw.bb40
    i32 109, label %sw.bb42
    i32 77, label %sw.bb44
    i32 115, label %sw.bb46
    i32 101, label %sw.bb47
    i32 117, label %sw.bb48
    i32 85, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.else
  %incdec.ptr16 = getelementptr inbounds i8* %ptr.093, i32 1
  %call = call i64 @zstrtol(i8* %incdec.ptr16, i8** %nptr, i32 10) nounwind
  %6 = icmp ugt i64 %call, 254
  %7 = load i8** %nptr, align 4, !tbaa !4
  %cmp22 = icmp eq i8* %incdec.ptr16, %7
  %or.cond = or i1 %6, %cmp22
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %sw.bb
  %8 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %8, -256
  %conv25 = sext i32 %and to i64
  %and26 = and i64 %call, 255
  %or = or i64 %conv25, %and26
  %or.off = add i64 %or, 2147483648
  %9 = icmp ult i64 %or.off, 4294967296
  br i1 %9, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %if.end
  call void @__ioc_report_conversion(i32 916, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i64 %or, i8 1) nounwind
  %.pre = load i8** %nptr, align 4, !tbaa !4
  br label %cont28

cont28:                                           ; preds = %ioc_bb27, %if.end
  %10 = phi i8* [ %.pre, %ioc_bb27 ], [ %7, %if.end ]
  %conv29 = trunc i64 %or to i32
  store i32 %conv29, i32* @patglobflags, align 4, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %10, i32 -1
  br label %for.inc

sw.bb30:                                          ; preds = %if.else
  %11 = load i32* @patglobflags, align 4, !tbaa !2
  %and31 = and i32 %11, -769
  %or32 = or i32 %and31, 256
  store i32 %or32, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb33:                                          ; preds = %if.else
  %12 = load i32* @patglobflags, align 4, !tbaa !2
  %and34 = and i32 %12, -769
  %or35 = or i32 %and34, 512
  store i32 %or35, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb36:                                          ; preds = %if.else
  %13 = load i32* @patglobflags, align 4, !tbaa !2
  %and37 = and i32 %13, -769
  store i32 %and37, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb38:                                          ; preds = %if.else
  %14 = load i32* @patglobflags, align 4, !tbaa !2
  %or39 = or i32 %14, 1024
  store i32 %or39, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb40:                                          ; preds = %if.else
  %15 = load i32* @patglobflags, align 4, !tbaa !2
  %and41 = and i32 %15, -1025
  store i32 %and41, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb42:                                          ; preds = %if.else
  %16 = load i32* @patglobflags, align 4, !tbaa !2
  %or43 = or i32 %16, 2048
  store i32 %or43, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb44:                                          ; preds = %if.else
  %17 = load i32* @patglobflags, align 4, !tbaa !2
  %and45 = and i32 %17, -2049
  store i32 %and45, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb46:                                          ; preds = %if.else
  store i32 9, i32* %assertp, align 4, !tbaa !3
  br label %for.inc

sw.bb47:                                          ; preds = %if.else
  store i32 10, i32* %assertp, align 4, !tbaa !3
  br label %for.inc

sw.bb48:                                          ; preds = %if.else
  %18 = load i32* @patglobflags, align 4, !tbaa !2
  %or49 = or i32 %18, 4096
  store i32 %or49, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

sw.bb50:                                          ; preds = %if.else
  %19 = load i32* @patglobflags, align 4, !tbaa !2
  %and51 = and i32 %19, -4097
  store i32 %and51, i32* @patglobflags, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb50, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb33, %sw.bb30, %cont28
  %ptr.2 = phi i8* [ %ptr.093, %sw.bb50 ], [ %ptr.093, %sw.bb48 ], [ %ptr.093, %sw.bb47 ], [ %ptr.093, %sw.bb46 ], [ %ptr.093, %sw.bb44 ], [ %ptr.093, %sw.bb42 ], [ %ptr.093, %sw.bb40 ], [ %ptr.093, %sw.bb38 ], [ %ptr.093, %sw.bb36 ], [ %ptr.093, %sw.bb33 ], [ %ptr.093, %sw.bb30 ], [ %add.ptr, %cont28 ]
  %incdec.ptr53 = getelementptr inbounds i8* %ptr.2, i32 1
  %20 = load i8* %incdec.ptr53, align 1, !tbaa !0
  %tobool = icmp eq i8 %20, 0
  br i1 %tobool, label %for.end, label %ioc_bb

for.end:                                          ; preds = %entry, %ioc_bb, %for.inc, %ioc_bb10, %while.cond
  %ptr.3 = phi i8* [ %ptr.1, %while.cond ], [ %ptr.1, %ioc_bb10 ], [ %0, %entry ], [ %ptr.093, %ioc_bb ], [ %incdec.ptr53, %for.inc ]
  %21 = load i8* %ptr.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 987, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp57 = icmp eq i8 %21, -119
  br i1 %cmp57, label %if.end60, label %return

if.end60:                                         ; preds = %for.end
  %22 = load i32* %assertp, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %22, 0
  br i1 %tobool61, label %if.end68, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end60
  %23 = load i8** %strp, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %23, i32 1
  %24 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 990, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp65 = icmp eq i8 %24, -119
  br i1 %cmp65, label %if.end68, label %return

if.end68:                                         ; preds = %land.lhs.true, %if.end60
  %add.ptr69 = getelementptr inbounds i8* %ptr.3, i32 1
  store i8* %add.ptr69, i8** %strp, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.else, %sw.bb, %land.lhs.true, %for.end, %if.end68
  %retval.0 = phi i32 [ 1, %if.end68 ], [ 0, %for.end ], [ 0, %land.lhs.true ], [ 0, %sw.bb ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare i64 @zstrtol(i8*, i8**, i32)

define i32 @range_type(i8* nocapture %start, i32 %len) nounwind {
entry:
  %0 = icmp sgt i32 %len, -1
  %1 = sext i32 %len to i64
  br label %for.cond

for.cond:                                         ; preds = %cont6, %entry
  %csp.0 = phi i8** [ getelementptr inbounds ([18 x i8*]* @colon_stuffs, i32 0, i32 0), %entry ], [ %incdec.ptr, %cont6 ]
  %2 = load i8** %csp.0, align 4, !tbaa !4
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %return, label %cond.false

cond.false:                                       ; preds = %for.cond
  br i1 %0, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cond.false
  tail call void @__ioc_report_conversion(i32 1007, i32 10, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cond.false
  %call7 = tail call i32 @strncmp(i8* %start, i8* %2, i32 %len) nounwind readonly
  %tobool8 = icmp eq i32 %call7, 0
  %incdec.ptr = getelementptr inbounds i8** %csp.0, i32 1
  br i1 %tobool8, label %if.then, label %for.cond

if.then:                                          ; preds = %cont6
  %sub.ptr.lhs.cast = ptrtoint i8** %csp.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([18 x i8*]* @colon_stuffs to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.div, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb9, label %return

ioc_bb9:                                          ; preds = %if.then
  %6 = sext i32 %sub.ptr.div to i64
  tail call void @__ioc_report_add_overflow(i32 1008, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %return

return:                                           ; preds = %for.cond, %ioc_bb9, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %4, %ioc_bb9 ], [ 18, %for.cond ]
  ret i32 %retval.0
}

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define i32 @pattern_range_to_string(i8* nocapture %rangestr, i8* %outstr) nounwind {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %ioc_bb100, %cont99, %cont114, %cont30, %for.cond.backedge, %entry
  %len.0.ph = phi i32 [ 0, %entry ], [ %15, %cont30 ], [ %57, %cont114 ], [ %len.3, %for.cond.backedge ], [ %51, %cont99 ], [ %51, %ioc_bb100 ]
  %outstr.addr.0.ph = phi i8* [ %outstr, %entry ], [ %outstr.addr.1, %cont30 ], [ %outstr.addr.9, %cont114 ], [ %outstr.addr.7, %for.cond.backedge ], [ %outstr.addr.8, %cont99 ], [ %outstr.addr.8, %ioc_bb100 ]
  %rangestr.addr.0.ph = phi i8* [ %rangestr, %entry ], [ %add.ptr, %cont30 ], [ %incdec.ptr115, %cont114 ], [ %rangestr.addr.2, %for.cond.backedge ], [ %incdec.ptr104, %cont99 ], [ %incdec.ptr104, %ioc_bb100 ]
  br label %while.cond

while.cond:                                       ; preds = %if.else76, %while.cond.outer
  %rangestr.addr.0 = phi i8* [ %incdec.ptr104, %if.else76 ], [ %rangestr.addr.0.ph, %while.cond.outer ]
  %0 = load i8* %rangestr.addr.0, align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.body
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 1033, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.body
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %3, 4096
  %tobool5 = icmp eq i16 %and, 0
  br i1 %tobool5, label %if.else108, label %if.then

if.then:                                          ; preds = %cont
  %4 = load i8* %rangestr.addr.0, align 1, !tbaa !0
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %if.then
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 1034, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %if.then
  %conv9 = zext i8 %4 to i32
  tail call void @__ioc_report_conversion(i32 1034, i32 78, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 1034, i32 70, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  %7 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv9, i32 131)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont8
  %10 = zext i8 %4 to i64
  tail call void @__ioc_report_sub_overflow(i32 1034, i32 51, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %10, i64 131, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %cont8, %ioc_bb14
  switch i32 %8, label %if.else76 [
    i32 0, label %if.then17
    i32 19, label %for.body
  ]

if.then17:                                        ; preds = %cont15
  %tobool18 = icmp eq i8* %outstr.addr.0.ph, null
  br i1 %tobool18, label %if.end, label %ioc_bb20

ioc_bb20:                                         ; preds = %if.then17
  tail call void @__ioc_report_conversion(i32 1038, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr = getelementptr inbounds i8* %outstr.addr.0.ph, i32 1
  store i8 -125, i8* %outstr.addr.0.ph, align 1, !tbaa !0
  %arrayidx22 = getelementptr inbounds i8* %rangestr.addr.0, i32 1
  %11 = load i8* %arrayidx22, align 1, !tbaa !0
  %conv23 = sext i8 %11 to i32
  %xor = xor i32 %conv23, 32
  %xor.off = add i32 %xor, 128
  %12 = icmp ult i32 %xor.off, 256
  br i1 %12, label %cont26, label %ioc_bb25

ioc_bb25:                                         ; preds = %ioc_bb20
  %13 = sext i32 %xor to i64
  tail call void @__ioc_report_conversion(i32 1039, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont26

cont26:                                           ; preds = %ioc_bb25, %ioc_bb20
  %conv27 = trunc i32 %xor to i8
  %incdec.ptr28 = getelementptr inbounds i8* %outstr.addr.0.ph, i32 2
  store i8 %conv27, i8* %incdec.ptr, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then17, %cont26
  %outstr.addr.1 = phi i8* [ %incdec.ptr28, %cont26 ], [ null, %if.then17 ]
  %14 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.0.ph, i32 2)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb29, label %cont30

ioc_bb29:                                         ; preds = %if.end
  %17 = sext i32 %len.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1041, i32 13, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %17, i64 2, i8 13) nounwind
  br label %cont30

cont30:                                           ; preds = %if.end, %ioc_bb29
  %add.ptr = getelementptr inbounds i8* %rangestr.addr.0, i32 2
  br label %while.cond.outer

for.body:                                         ; preds = %cont15, %for.cond.backedge
  %rangestr.addr.1173 = phi i8* [ %rangestr.addr.2, %for.cond.backedge ], [ %rangestr.addr.0, %cont15 ]
  %outstr.addr.2172 = phi i8* [ %outstr.addr.7, %for.cond.backedge ], [ %outstr.addr.0.ph, %cont15 ]
  %i.0171 = phi i32 [ %34, %for.cond.backedge ], [ 0, %cont15 ]
  %len.1170 = phi i32 [ %len.3, %for.cond.backedge ], [ %len.0.ph, %cont15 ]
  %18 = load i8* %rangestr.addr.1173, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 1048, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp39 = icmp eq i8 %18, -125
  %tobool42 = icmp ne i8* %outstr.addr.2172, null
  br i1 %cmp39, label %if.then41, label %if.else53

if.then41:                                        ; preds = %for.body
  br i1 %tobool42, label %ioc_bb44, label %if.end49

ioc_bb44:                                         ; preds = %if.then41
  tail call void @__ioc_report_conversion(i32 1050, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %incdec.ptr46 = getelementptr inbounds i8* %outstr.addr.2172, i32 1
  store i8 -125, i8* %outstr.addr.2172, align 1, !tbaa !0
  %arrayidx47 = getelementptr inbounds i8* %rangestr.addr.1173, i32 1
  %19 = load i8* %arrayidx47, align 1, !tbaa !0
  %incdec.ptr48 = getelementptr inbounds i8* %outstr.addr.2172, i32 2
  store i8 %19, i8* %incdec.ptr46, align 1, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %ioc_bb44, %if.then41
  %outstr.addr.3 = phi i8* [ %incdec.ptr48, %ioc_bb44 ], [ null, %if.then41 ]
  %20 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.1170, i32 2)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb50, label %cont51

ioc_bb50:                                         ; preds = %if.end49
  %23 = sext i32 %len.1170 to i64
  tail call void @__ioc_report_add_overflow(i32 1053, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %23, i64 2, i8 13) nounwind
  br label %cont51

cont51:                                           ; preds = %if.end49, %ioc_bb50
  %add.ptr52 = getelementptr inbounds i8* %rangestr.addr.1173, i32 2
  br label %if.end61

if.else53:                                        ; preds = %for.body
  br i1 %tobool42, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.else53
  %24 = load i8* %rangestr.addr.1173, align 1, !tbaa !0
  %incdec.ptr56 = getelementptr inbounds i8* %outstr.addr.2172, i32 1
  store i8 %24, i8* %outstr.addr.2172, align 1, !tbaa !0
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.else53
  %outstr.addr.4 = phi i8* [ %incdec.ptr56, %if.then55 ], [ null, %if.else53 ]
  %25 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.1170, i32 1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb58, label %cont59

ioc_bb58:                                         ; preds = %if.end57
  %28 = sext i32 %len.1170 to i64
  tail call void @__ioc_report_add_overflow(i32 1059, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind
  br label %cont59

cont59:                                           ; preds = %if.end57, %ioc_bb58
  %incdec.ptr60 = getelementptr inbounds i8* %rangestr.addr.1173, i32 1
  br label %if.end61

if.end61:                                         ; preds = %cont59, %cont51
  %len.2 = phi i32 [ %21, %cont51 ], [ %26, %cont59 ]
  %outstr.addr.5 = phi i8* [ %outstr.addr.3, %cont51 ], [ %outstr.addr.4, %cont59 ]
  %rangestr.addr.2 = phi i8* [ %add.ptr52, %cont51 ], [ %incdec.ptr60, %cont59 ]
  %cmp62 = icmp eq i32 %i.0171, 0
  br i1 %cmp62, label %if.then64, label %for.inc

if.then64:                                        ; preds = %if.end61
  %tobool65 = icmp eq i8* %outstr.addr.5, null
  br i1 %tobool65, label %if.end70, label %cont68

cont68:                                           ; preds = %if.then64
  %incdec.ptr69 = getelementptr inbounds i8* %outstr.addr.5, i32 1
  store i8 45, i8* %outstr.addr.5, align 1, !tbaa !0
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %cont68
  %outstr.addr.6 = phi i8* [ %incdec.ptr69, %cont68 ], [ null, %if.then64 ]
  %29 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.2, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb71, label %for.inc

ioc_bb71:                                         ; preds = %if.end70
  %32 = sext i32 %len.2 to i64
  tail call void @__ioc_report_add_overflow(i32 1065, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %ioc_bb71, %if.end70, %if.end61
  %len.3 = phi i32 [ %len.2, %if.end61 ], [ %30, %if.end70 ], [ %30, %ioc_bb71 ]
  %outstr.addr.7 = phi i8* [ %outstr.addr.5, %if.end61 ], [ %outstr.addr.6, %if.end70 ], [ %outstr.addr.6, %ioc_bb71 ]
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0171, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb74, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb74
  %cmp34 = icmp slt i32 %34, 2
  br i1 %cmp34, label %for.body, label %while.cond.outer

ioc_bb74:                                         ; preds = %for.inc
  %36 = sext i32 %i.0171 to i64
  tail call void @__ioc_report_add_overflow(i32 1047, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %36, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.else76:                                        ; preds = %cont15
  %.off = add i32 %8, -1
  %37 = icmp ult i32 %.off, 17
  %incdec.ptr104 = getelementptr inbounds i8* %rangestr.addr.0, i32 1
  br i1 %37, label %if.then81, label %while.cond

if.then81:                                        ; preds = %if.else76
  %38 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %8, i32 1)
  %39 = extractvalue { i32, i1 } %38, 0
  %40 = extractvalue { i32, i1 } %38, 1
  br i1 %40, label %ioc_bb82, label %cont83

ioc_bb82:                                         ; preds = %if.then81
  %41 = sext i32 %8 to i64
  tail call void @__ioc_report_sub_overflow(i32 1071, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %41, i64 1, i8 13) nounwind
  br label %cont83

cont83:                                           ; preds = %if.then81, %ioc_bb82
  %arrayidx84 = getelementptr inbounds [18 x i8*]* @colon_stuffs, i32 0, i32 %39
  %42 = load i8** %arrayidx84, align 4, !tbaa !4
  %call = tail call i32 @strlen(i8* %42) nounwind readonly
  %43 = icmp sgt i32 %call, -1
  br i1 %43, label %cont86, label %ioc_bb85

ioc_bb85:                                         ; preds = %cont83
  %44 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 1072, i32 22, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i64 %44, i8 0) nounwind
  br label %cont86

cont86:                                           ; preds = %ioc_bb85, %cont83
  %tobool87 = icmp eq i8* %outstr.addr.0.ph, null
  br i1 %tobool87, label %if.end97, label %if.then88

if.then88:                                        ; preds = %cont86
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %outstr.addr.0.ph, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 3, i32 1, i1 false)
  %add.ptr90 = getelementptr inbounds i8* %outstr.addr.0.ph, i32 2
  br i1 %43, label %cont93, label %ioc_bb92

ioc_bb92:                                         ; preds = %if.then88
  %45 = sext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 1076, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %45, i8 1) nounwind
  br label %cont93

cont93:                                           ; preds = %ioc_bb92, %if.then88
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr90, i8* %42, i32 %call, i32 1, i1 false)
  %add.ptr90.sum = add i32 %call, 2
  %add.ptr94 = getelementptr inbounds i8* %outstr.addr.0.ph, i32 %add.ptr90.sum
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr94, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 3, i32 1, i1 false)
  %add.ptr94.sum = add i32 %call, 4
  %add.ptr96 = getelementptr inbounds i8* %outstr.addr.0.ph, i32 %add.ptr94.sum
  br label %if.end97

if.end97:                                         ; preds = %cont86, %cont93
  %outstr.addr.8 = phi i8* [ %add.ptr96, %cont93 ], [ null, %cont86 ]
  %46 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 4)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb98, label %cont99

ioc_bb98:                                         ; preds = %if.end97
  %49 = sext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 1081, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %49, i64 4, i8 13) nounwind
  br label %cont99

cont99:                                           ; preds = %if.end97, %ioc_bb98
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.0.ph, i32 %47)
  %51 = extractvalue { i32, i1 } %50, 0
  %52 = extractvalue { i32, i1 } %50, 1
  br i1 %52, label %ioc_bb100, label %while.cond.outer

ioc_bb100:                                        ; preds = %cont99
  %53 = sext i32 %47 to i64
  %54 = sext i32 %len.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1081, i32 13, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %54, i64 %53, i8 13) nounwind
  br label %while.cond.outer

if.else108:                                       ; preds = %cont
  %tobool109 = icmp eq i8* %outstr.addr.0.ph, null
  br i1 %tobool109, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.else108
  %55 = load i8* %rangestr.addr.0, align 1, !tbaa !0
  %incdec.ptr111 = getelementptr inbounds i8* %outstr.addr.0.ph, i32 1
  store i8 %55, i8* %outstr.addr.0.ph, align 1, !tbaa !0
  br label %if.end112

if.end112:                                        ; preds = %if.else108, %if.then110
  %outstr.addr.9 = phi i8* [ %incdec.ptr111, %if.then110 ], [ null, %if.else108 ]
  %56 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %len.0.ph, i32 1)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb113, label %cont114

ioc_bb113:                                        ; preds = %if.end112
  %59 = sext i32 %len.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1094, i32 10, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %59, i64 1, i8 13) nounwind
  br label %cont114

cont114:                                          ; preds = %if.end112, %ioc_bb113
  %incdec.ptr115 = getelementptr inbounds i8* %rangestr.addr.0, i32 1
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %tobool117 = icmp eq i8* %outstr.addr.0.ph, null
  br i1 %tobool117, label %if.end121, label %cont120

cont120:                                          ; preds = %while.end
  store i8 0, i8* %outstr.addr.0.ph, align 1, !tbaa !0
  br label %if.end121

if.end121:                                        ; preds = %while.end, %cont120
  ret i32 %len.0.ph
}

define void @pattrystart() nounwind {
entry:
  store i32 -1, i32* @forceerrs, align 4, !tbaa !2
  store i32 0, i32* @errsfound, align 4, !tbaa !2
  ret void
}

define i32 @pattry(%struct.patprog* %prog, i8* %string) nounwind {
entry:
  %call = tail call i32 @pattryrefs(%struct.patprog* %prog, i8* %string, i32 -1, i32 -1, i32 0, i32* null, i32* null, i32* null)
  ret i32 %call
}

define i32 @pattryrefs(%struct.patprog* %prog, i8* %string, i32 %stringlen, i32 %unmetalen, i32 %patoffset, i32* %nump, i32* %begp, i32* %endp) nounwind {
entry:
  %numbuf = alloca [21 x i8], align 1
  %0 = bitcast %struct.patprog* %prog to i8*
  %startoff = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 0
  %1 = load i32* %startoff, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %0, i32 %1
  %tobool = icmp ne i32* %nump, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32* %nump, align 4, !tbaa !2
  store i32 0, i32* %nump, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %maxnpos.0 = phi i32 [ %2, %if.then ], [ 0, %entry ]
  %3 = load i8* %string, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1887, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp = icmp eq i8 %3, -99
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8* %string, i32 1
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %unmetalen, i32 -1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb3, label %if.end5

ioc_bb3:                                          ; preds = %if.then2
  %7 = sext i32 %unmetalen to i64
  call void @__ioc_report_add_overflow(i32 1889, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %7, i64 -1, i8 13) nounwind
  br label %if.end5

if.end5:                                          ; preds = %ioc_bb3, %if.then2, %if.end
  %unmetalen.addr.0 = phi i32 [ %unmetalen, %if.end ], [ %5, %if.then2 ], [ %5, %ioc_bb3 ]
  %string.addr.0 = phi i8* [ %string, %if.end ], [ %incdec.ptr, %if.then2 ], [ %incdec.ptr, %ioc_bb3 ]
  %cmp6 = icmp slt i32 %stringlen, 0
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %call = call i32 @strlen(i8* %string.addr.0) nounwind readonly
  %8 = icmp sgt i32 %call, -1
  br i1 %8, label %if.end11, label %ioc_bb9

ioc_bb9:                                          ; preds = %if.then8
  %9 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 1892, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i64 %9, i8 0) nounwind
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %ioc_bb9, %if.end5
  %stringlen.addr.0 = phi i32 [ %stringlen, %if.end5 ], [ %call, %ioc_bb9 ], [ %call, %if.then8 ]
  %flags = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 6
  %10 = load i32* %flags, align 4, !tbaa !2
  store i32 %10, i32* @patflags, align 4, !tbaa !2
  %and = and i32 %10, 2048
  %tobool12 = icmp eq i32 %and, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end11
  %11 = load i32* @pathpos, align 4, !tbaa !2
  %tobool13 = icmp ne i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %if.end11, %land.rhs
  %12 = phi i1 [ false, %if.end11 ], [ %tobool13, %land.rhs ]
  %cmp14 = icmp slt i32 %unmetalen.addr.0, 0
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.end
  %add.ptr17 = getelementptr inbounds i8* %string.addr.0, i32 %stringlen.addr.0
  %call18 = call i32 @ztrsub(i8* %add.ptr17, i8* %string.addr.0) nounwind
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.end
  %unmetalen.addr.1 = phi i32 [ %call18, %if.then16 ], [ %unmetalen.addr.0, %land.end ]
  br i1 %12, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %13 = load i8** @pathbuf, align 4, !tbaa !4
  %14 = load i32* @pathpos, align 4, !tbaa !2
  %add.ptr22 = getelementptr inbounds i8* %13, i32 %14
  %call23 = call i32 @ztrsub(i8* %add.ptr22, i8* %13) nounwind
  br label %if.end24

if.end24:                                         ; preds = %if.end19, %if.then21
  %unmetalenp.0 = phi i32 [ %call23, %if.then21 ], [ 0, %if.end19 ]
  %15 = load i32* @patflags, align 4, !tbaa !2
  %and25 = and i32 %15, 36
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %if.end24
  %.not = xor i1 %12, true
  %cmp28 = icmp eq i32 %unmetalen.addr.1, %stringlen.addr.0
  %or.cond = and i1 %cmp28, %.not
  br i1 %or.cond, label %if.end79, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %unmetalen.addr.1, i32 %unmetalenp.0)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb31, label %cont32

ioc_bb31:                                         ; preds = %if.then30
  %19 = sext i32 %unmetalenp.0 to i64
  %20 = sext i32 %unmetalen.addr.1 to i64
  call void @__ioc_report_add_overflow(i32 1923, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %20, i64 %19, i8 13) nounwind
  br label %cont32

cont32:                                           ; preds = %if.then30, %ioc_bb31
  %21 = icmp sgt i32 %17, -1
  br i1 %21, label %cont34, label %ioc_bb33

ioc_bb33:                                         ; preds = %cont32
  %22 = sext i32 %17 to i64
  call void @__ioc_report_conversion(i32 1923, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont34

cont34:                                           ; preds = %ioc_bb33, %cont32
  %call35 = call i8* @zalloc(i32 %17) nounwind
  %23 = load i8** @pathbuf, align 4, !tbaa !4
  %ptr.0 = select i1 %12, i8* %23, i8* %string.addr.0
  %ncopy.0 = select i1 %12, i32 %unmetalenp.0, i32 %unmetalen.addr.1
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %cont34, %for.cond.backedge
  %ncopy.1618 = phi i32 [ %ncopy.0, %cont34 ], [ %unmetalen.addr.1, %for.cond.backedge ]
  %icopy.0617 = phi i32 [ 0, %cont34 ], [ %34, %for.cond.backedge ]
  %dst.0616 = phi i8* [ %call35, %cont34 ], [ %dst.1.lcssa, %for.cond.backedge ]
  %ptr.1615 = phi i8* [ %ptr.0, %cont34 ], [ %string.addr.0, %for.cond.backedge ]
  %cmp43610 = icmp sgt i32 %ncopy.1618, 0
  br i1 %cmp43610, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42.preheader, %for.cond42.backedge
  %i.0613 = phi i32 [ %30, %for.cond42.backedge ], [ 0, %for.cond42.preheader ]
  %dst.1612 = phi i8* [ %dst.2, %for.cond42.backedge ], [ %dst.0616, %for.cond42.preheader ]
  %ptr.2611 = phi i8* [ %ptr.3, %for.cond42.backedge ], [ %ptr.1615, %for.cond42.preheader ]
  %24 = load i8* %ptr.2611, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1936, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp49 = icmp eq i8 %24, -125
  %incdec.ptr52 = getelementptr inbounds i8* %ptr.2611, i32 1
  br i1 %cmp49, label %if.then51, label %if.else60

if.then51:                                        ; preds = %for.body45
  %incdec.ptr53 = getelementptr inbounds i8* %ptr.2611, i32 2
  %25 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %conv54 = sext i8 %25 to i32
  %xor = xor i32 %conv54, 32
  %xor.off = add i32 %xor, 128
  %26 = icmp ult i32 %xor.off, 256
  br i1 %26, label %cont57, label %ioc_bb56

ioc_bb56:                                         ; preds = %if.then51
  %27 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 1938, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %27, i8 1) nounwind
  br label %cont57

cont57:                                           ; preds = %ioc_bb56, %if.then51
  %conv58 = trunc i32 %xor to i8
  br label %for.inc

if.else60:                                        ; preds = %for.body45
  %28 = load i8* %ptr.2611, align 1, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %cont57, %if.else60
  %storemerge580 = phi i8 [ %28, %if.else60 ], [ %conv58, %cont57 ]
  %ptr.3 = phi i8* [ %incdec.ptr52, %if.else60 ], [ %incdec.ptr53, %cont57 ]
  %dst.2 = getelementptr inbounds i8* %dst.1612, i32 1
  store i8 %storemerge580, i8* %dst.1612, align 1
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0613, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb64, label %for.cond42.backedge

for.cond42.backedge:                              ; preds = %for.inc, %ioc_bb64
  %cmp43 = icmp slt i32 %30, %ncopy.1618
  br i1 %cmp43, label %for.body45, label %for.end

ioc_bb64:                                         ; preds = %for.inc
  %32 = sext i32 %i.0613 to i64
  call void @__ioc_report_add_overflow(i32 1935, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind
  br label %for.cond42.backedge

for.end:                                          ; preds = %for.cond42.backedge, %for.cond42.preheader
  %dst.1.lcssa = phi i8* [ %dst.0616, %for.cond42.preheader ], [ %dst.2, %for.cond42.backedge ]
  br i1 %12, label %if.end68, label %if.end79

if.end68:                                         ; preds = %for.end
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %icopy.0617, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb70, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end68, %ioc_bb70
  %cmp40 = icmp slt i32 %34, 2
  br i1 %cmp40, label %for.cond42.preheader, label %if.then74

ioc_bb70:                                         ; preds = %if.end68
  %36 = sext i32 %icopy.0617 to i64
  call void @__ioc_report_add_overflow(i32 1934, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %36, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.then74:                                        ; preds = %for.cond.backedge
  %add.ptr75 = getelementptr inbounds i8* %call35, i32 %unmetalenp.0
  br label %if.end79

if.end79:                                         ; preds = %for.end, %if.end24, %land.lhs.true, %if.then74
  %37 = phi i8* [ %add.ptr75, %if.then74 ], [ %string.addr.0, %land.lhs.true ], [ %string.addr.0, %if.end24 ], [ %call35, %for.end ]
  %storemerge577 = phi i8* [ %call35, %if.then74 ], [ null, %land.lhs.true ], [ null, %if.end24 ], [ null, %for.end ]
  %tryalloced.0 = phi i8* [ %call35, %if.then74 ], [ null, %land.lhs.true ], [ null, %if.end24 ], [ %call35, %for.end ]
  %stringlen.addr.1 = phi i32 [ %unmetalen.addr.1, %if.then74 ], [ %stringlen.addr.0, %land.lhs.true ], [ %stringlen.addr.0, %if.end24 ], [ %unmetalen.addr.1, %for.end ]
  store i8* %37, i8** @patinstart, align 4
  store i8* %storemerge577, i8** @patinpath, align 4
  %add.ptr80 = getelementptr inbounds i8* %37, i32 %stringlen.addr.1
  store i8* %add.ptr80, i8** @patinend, align 4, !tbaa !4
  %38 = load i32* %flags, align 4, !tbaa !2
  %and82 = and i32 %38, 36
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.else164, label %if.then84

if.then84:                                        ; preds = %if.end79
  %and87 = and i32 %38, 4
  %tobool88 = icmp eq i32 %and87, 0
  br i1 %tobool88, label %if.else90, label %if.then113

if.else90:                                        ; preds = %if.then84
  %patmlen = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 3
  %39 = load i32* %patmlen, align 4, !tbaa !3
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %stringlen.addr.1, i32 %39)
  %41 = extractvalue { i32, i1 } %40, 0
  %42 = extractvalue { i32, i1 } %40, 1
  br i1 %42, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %if.else90
  %43 = sext i32 %39 to i64
  %44 = sext i32 %stringlen.addr.1 to i64
  call void @__ioc_report_sub_overflow(i32 1988, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %44, i64 %43, i8 13) nounwind
  br label %cont92

cont92:                                           ; preds = %if.else90, %ioc_bb91
  %cmp93 = icmp slt i32 %41, 0
  br i1 %cmp93, label %if.end158, label %if.else96

if.else96:                                        ; preds = %cont92
  %45 = load i8** @patinstart, align 4, !tbaa !4
  %46 = load i32* %patmlen, align 4, !tbaa !3
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %cont100, label %ioc_bb99

ioc_bb99:                                         ; preds = %if.else96
  %48 = sext i32 %46 to i64
  call void @__ioc_report_conversion(i32 1993, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont100

cont100:                                          ; preds = %ioc_bb99, %if.else96
  %call101 = call i32 @memcmp(i8* %add.ptr, i8* %45, i32 %46) nounwind readonly
  %tobool102 = icmp eq i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end158

if.then103:                                       ; preds = %cont100
  %tobool104 = icmp eq i32 %41, 0
  br i1 %tobool104, label %if.end111.if.then113_crit_edge, label %if.end111

if.end111:                                        ; preds = %if.then103
  %49 = load i32* %flags, align 4, !tbaa !2
  %and106 = and i32 %49, 8
  %tobool107 = icmp eq i32 %and106, 0
  br i1 %tobool107, label %if.end158, label %if.end111.if.then113_crit_edge

if.end111.if.then113_crit_edge:                   ; preds = %if.end111, %if.then103
  %.pre620 = load i32* %flags, align 4, !tbaa !2
  br label %if.then113

if.then113:                                       ; preds = %if.end111.if.then113_crit_edge, %if.then84
  %50 = phi i32 [ %.pre620, %if.end111.if.then113_crit_edge ], [ %38, %if.then84 ]
  %and115 = and i32 %50, 16
  %tobool116 = icmp eq i32 %and115, 0
  br i1 %tobool116, label %if.else122, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.then113
  %51 = load i8** @patinstart, align 4, !tbaa !4
  %52 = load i8* %51, align 1, !tbaa !0
  %cmp119 = icmp eq i8 %52, 46
  br i1 %cmp119, label %if.end158, label %if.else122

if.else122:                                       ; preds = %land.lhs.true117, %if.then113
  %patmlen123 = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 3
  %53 = load i32* %patmlen123, align 4, !tbaa !3
  store i32 %53, i32* @patinlen, align 4, !tbaa !2
  %globend = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 5
  %54 = load i32* %globend, align 4, !tbaa !2
  store i32 %54, i32* @patglobflags, align 4, !tbaa !2
  %and124 = and i32 %54, 2048
  %tobool125 = icmp eq i32 %and124, 0
  br i1 %tobool125, label %if.end158, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.else122
  %55 = load i32* @patflags, align 4, !tbaa !2
  %and127 = and i32 %55, 1
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %if.then129, label %if.end158

if.then129:                                       ; preds = %land.lhs.true126
  %56 = load i8** @patinstart, align 4, !tbaa !4
  %call130 = call i8* @ztrduppfx(i8* %56, i32 %53) nounwind
  %57 = load i8** @patinstart, align 4, !tbaa !4
  call void @mb_metacharinit() nounwind
  %58 = load i8** @patinstart, align 4, !tbaa !4
  %59 = load i32* @patinlen, align 4, !tbaa !2
  %add.ptr132605 = getelementptr inbounds i8* %58, i32 %59
  %cmp133606 = icmp ult i8* %57, %add.ptr132605
  br i1 %cmp133606, label %while.body, label %while.end

while.body:                                       ; preds = %if.then129, %cont136
  %mlen.0608 = phi i32 [ %61, %cont136 ], [ 0, %if.then129 ]
  %ptr131.0607 = phi i8* [ %add.ptr138, %cont136 ], [ %57, %if.then129 ]
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mlen.0608, i32 1)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb135, label %cont136

ioc_bb135:                                        ; preds = %while.body
  %63 = sext i32 %mlen.0608 to i64
  call void @__ioc_report_add_overflow(i32 2034, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %63, i64 1, i8 13) nounwind
  br label %cont136

cont136:                                          ; preds = %while.body, %ioc_bb135
  %call137 = call i32 @mb_metacharlenconv(i8* %ptr131.0607, i32* null) nounwind
  %add.ptr138 = getelementptr inbounds i8* %ptr131.0607, i32 %call137
  %64 = load i8** @patinstart, align 4, !tbaa !4
  %65 = load i32* @patinlen, align 4, !tbaa !2
  %add.ptr132 = getelementptr inbounds i8* %64, i32 %65
  %cmp133 = icmp ult i8* %add.ptr138, %add.ptr132
  br i1 %cmp133, label %while.body, label %while.end

while.end:                                        ; preds = %cont136, %if.then129
  %mlen.0.lcssa = phi i32 [ 0, %if.then129 ], [ %61, %cont136 ]
  %call139 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* %call130, i32 0) nounwind
  %66 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot = icmp eq i8 %66, 0
  %lnot.ext = zext i1 %lnot to i32
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %patoffset, i32 %lnot.ext)
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  %70 = sext i32 %patoffset to i64
  br i1 %69, label %ioc_bb141, label %cont142

ioc_bb141:                                        ; preds = %while.end
  %71 = zext i1 %lnot to i64
  call void @__ioc_report_add_overflow(i32 2038, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %70, i64 %71, i8 13) nounwind
  br label %cont142

cont142:                                          ; preds = %while.end, %ioc_bb141
  %conv143 = sext i32 %68 to i64
  %call144 = call %struct.param* @setiparam(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i64 %conv143) nounwind
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mlen.0.lcssa, i32 %patoffset)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb145, label %cont146

ioc_bb145:                                        ; preds = %cont142
  %75 = sext i32 %mlen.0.lcssa to i64
  call void @__ioc_report_add_overflow(i32 2039, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %75, i64 %70, i8 13) nounwind
  br label %cont146

cont146:                                          ; preds = %cont142, %ioc_bb145
  %76 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot148 = icmp eq i8 %76, 0
  %lnot.ext149 = zext i1 %lnot148 to i32
  %77 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 %lnot.ext149)
  %78 = extractvalue { i32, i1 } %77, 0
  %79 = extractvalue { i32, i1 } %77, 1
  br i1 %79, label %ioc_bb150, label %cont151

ioc_bb150:                                        ; preds = %cont146
  %80 = zext i1 %lnot148 to i64
  %81 = sext i32 %73 to i64
  call void @__ioc_report_add_overflow(i32 2039, i32 55, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %81, i64 %80, i8 13) nounwind
  br label %cont151

cont151:                                          ; preds = %cont146, %ioc_bb150
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %78, i32 1)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb152, label %cont153

ioc_bb152:                                        ; preds = %cont151
  %85 = sext i32 %78 to i64
  call void @__ioc_report_sub_overflow(i32 2039, i32 67, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %85, i64 1, i8 13) nounwind
  br label %cont153

cont153:                                          ; preds = %cont151, %ioc_bb152
  %conv154 = sext i32 %83 to i64
  %call155 = call %struct.param* @setiparam(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i64 %conv154) nounwind
  br label %if.end158

if.end158:                                        ; preds = %if.end111, %cont100, %cont92, %land.lhs.true117, %land.lhs.true126, %if.else122, %cont153
  %ret85.1 = phi i32 [ 1, %land.lhs.true126 ], [ 1, %cont153 ], [ 1, %if.else122 ], [ 0, %if.end111 ], [ 0, %land.lhs.true117 ], [ 0, %cont92 ], [ 0, %cont100 ]
  %tobool159 = icmp eq i8* %tryalloced.0, null
  br i1 %tobool159, label %return, label %if.then160

if.then160:                                       ; preds = %if.end158
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %unmetalen.addr.1, i32 %unmetalenp.0)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  br i1 %88, label %ioc_bb161, label %cont162

ioc_bb161:                                        ; preds = %if.then160
  %89 = sext i32 %unmetalenp.0 to i64
  %90 = sext i32 %unmetalen.addr.1 to i64
  call void @__ioc_report_add_overflow(i32 2044, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %90, i64 %89, i8 13) nounwind
  br label %cont162

cont162:                                          ; preds = %if.then160, %ioc_bb161
  call void @zfree(i8* %tryalloced.0, i32 %87) nounwind
  br label %return

if.else164:                                       ; preds = %if.end79
  %and166 = and i32 %38, 128
  %tobool167 = icmp eq i32 %and166, 0
  br i1 %tobool167, label %land.lhs.true168, label %if.end205

land.lhs.true168:                                 ; preds = %if.else164
  %mustoff = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 2
  %91 = load i32* %mustoff, align 4, !tbaa !3
  %tobool169 = icmp eq i32 %91, 0
  br i1 %tobool169, label %if.end205, label %if.then170

if.then170:                                       ; preds = %land.lhs.true168
  %add.ptr172 = getelementptr inbounds i8* %0, i32 %91
  %patmlen173 = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 3
  %92 = load i32* %patmlen173, align 4, !tbaa !3
  %cmp174 = icmp sgt i32 %92, %stringlen.addr.1
  br i1 %cmp174, label %if.then199, label %if.else177

if.else177:                                       ; preds = %if.then170
  %add.ptr80.sum = sub i32 %stringlen.addr.1, %92
  %add.ptr178 = getelementptr inbounds i8* %37, i32 %add.ptr80.sum
  %93 = icmp sgt i32 %92, -1
  %94 = sext i32 %92 to i64
  br label %for.cond179

for.cond179:                                      ; preds = %cont185, %if.else177
  %testptr.0 = phi i8* [ %37, %if.else177 ], [ %incdec.ptr191, %cont185 ]
  %cmp180 = icmp ugt i8* %testptr.0, %add.ptr178
  br i1 %cmp180, label %if.then199, label %for.body182

for.body182:                                      ; preds = %for.cond179
  br i1 %93, label %cont185, label %ioc_bb184

ioc_bb184:                                        ; preds = %for.body182
  call void @__ioc_report_conversion(i32 2068, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %94, i8 1) nounwind
  br label %cont185

cont185:                                          ; preds = %ioc_bb184, %for.body182
  %call186 = call i32 @memcmp(i8* %testptr.0, i8* %add.ptr172, i32 %92) nounwind readonly
  %tobool187 = icmp eq i32 %call186, 0
  %incdec.ptr191 = getelementptr inbounds i8* %testptr.0, i32 1
  br i1 %tobool187, label %if.end205, label %for.cond179

if.then199:                                       ; preds = %for.cond179, %if.then170
  %tobool200 = icmp eq i8* %tryalloced.0, null
  br i1 %tobool200, label %return, label %if.then201

if.then201:                                       ; preds = %if.then199
  %95 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %unmetalen.addr.1, i32 %unmetalenp.0)
  %96 = extractvalue { i32, i1 } %95, 0
  %97 = extractvalue { i32, i1 } %95, 1
  br i1 %97, label %ioc_bb202, label %cont203

ioc_bb202:                                        ; preds = %if.then201
  %98 = sext i32 %unmetalenp.0 to i64
  %99 = sext i32 %unmetalen.addr.1 to i64
  call void @__ioc_report_add_overflow(i32 2079, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %99, i64 %98, i8 13) nounwind
  br label %cont203

cont203:                                          ; preds = %if.then201, %ioc_bb202
  call void @zfree(i8* %tryalloced.0, i32 %96) nounwind
  br label %return

if.end205:                                        ; preds = %cont185, %land.lhs.true168, %if.else164
  %globflags = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 4
  %100 = load i32* %globflags, align 4, !tbaa !2
  store i32 %100, i32* @patglobflags, align 4, !tbaa !2
  %101 = load i32* @patflags, align 4, !tbaa !2
  %and206 = and i32 %101, 1
  %tobool207 = icmp eq i32 %and206, 0
  br i1 %tobool207, label %cont210, label %if.end211

cont210:                                          ; preds = %if.end205
  store i32 -1, i32* @forceerrs, align 4, !tbaa !2
  store i32 0, i32* @errsfound, align 4, !tbaa !2
  br label %if.end211

if.end211:                                        ; preds = %if.end205, %cont210
  %and212 = lshr i32 %101, 4
  %and212.lobit = and i32 %and212, 1
  %102 = xor i32 %and212.lobit, 1
  store i32 %102, i32* @globdots, align 4, !tbaa !2
  store i32 0, i32* @parsfound, align 4, !tbaa !2
  %103 = load i8** @patinstart, align 4, !tbaa !4
  store i8* %103, i8** @patinput, align 4, !tbaa !4
  %104 = bitcast i8* %add.ptr to %union.upat*
  %call216 = call fastcc i32 @patmatch(%union.upat* %104)
  %tobool217 = icmp eq i32 %call216, 0
  br i1 %tobool217, label %if.end439, label %if.then218

if.then218:                                       ; preds = %if.end211
  %globend219 = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 5
  %105 = load i32* %globend219, align 4, !tbaa !2
  store i32 %105, i32* @patglobflags, align 4, !tbaa !2
  %106 = load i8** @patinput, align 4, !tbaa !4
  %107 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %106 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %107 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* @patinlen, align 4, !tbaa !2
  %cmp220 = icmp ne i32 %unmetalen.addr.1, %stringlen.addr.0
  %cmp224603 = icmp ult i8* %107, %106
  %or.cond621 = and i1 %cmp220, %cmp224603
  br i1 %or.cond621, label %for.body226, label %if.end244

for.body226:                                      ; preds = %if.then218, %for.inc241
  %ptr.4604 = phi i8* [ %incdec.ptr242, %for.inc241 ], [ %107, %if.then218 ]
  %108 = load i8* %ptr.4604, align 1, !tbaa !0
  %109 = icmp sgt i8 %108, -1
  br i1 %109, label %cont229, label %ioc_bb228

ioc_bb228:                                        ; preds = %for.body226
  %110 = sext i8 %108 to i64
  call void @__ioc_report_conversion(i32 2108, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %110, i8 1) nounwind
  br label %cont229

cont229:                                          ; preds = %ioc_bb228, %for.body226
  %idxprom = zext i8 %108 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %111 = load i16* %arrayidx, align 2, !tbaa !5
  %and235 = and i16 %111, 4096
  %tobool236 = icmp eq i16 %and235, 0
  br i1 %tobool236, label %for.inc241, label %if.then237

if.then237:                                       ; preds = %cont229
  %112 = load i32* @patinlen, align 4, !tbaa !2
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %112, i32 1)
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb238, label %cont239

ioc_bb238:                                        ; preds = %if.then237
  %116 = sext i32 %112 to i64
  call void @__ioc_report_add_overflow(i32 2109, i32 21, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %116, i64 1, i8 13) nounwind
  br label %cont239

cont239:                                          ; preds = %if.then237, %ioc_bb238
  store i32 %114, i32* @patinlen, align 4, !tbaa !2
  br label %for.inc241

for.inc241:                                       ; preds = %cont229, %cont239
  %incdec.ptr242 = getelementptr inbounds i8* %ptr.4604, i32 1
  %117 = load i8** @patinput, align 4, !tbaa !4
  %cmp224 = icmp ult i8* %incdec.ptr242, %117
  br i1 %cmp224, label %for.body226, label %for.cond223.if.end244.loopexit_crit_edge

for.cond223.if.end244.loopexit_crit_edge:         ; preds = %for.inc241
  %.pre.pre = load i32* @patglobflags, align 4, !tbaa !2
  br label %if.end244

if.end244:                                        ; preds = %if.then218, %for.cond223.if.end244.loopexit_crit_edge
  %118 = phi i8* [ %106, %if.then218 ], [ %117, %for.cond223.if.end244.loopexit_crit_edge ]
  %119 = phi i32 [ %105, %if.then218 ], [ %.pre.pre, %for.cond223.if.end244.loopexit_crit_edge ]
  %and245 = and i32 %119, 2048
  %tobool246 = icmp eq i32 %and245, 0
  br i1 %tobool246, label %if.end277, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %if.end244
  %120 = load i32* @patflags, align 4, !tbaa !2
  %and248 = and i32 %120, 1
  %tobool249 = icmp eq i32 %and248, 0
  br i1 %tobool249, label %if.then250, label %if.end277

if.then250:                                       ; preds = %land.lhs.true247
  %121 = load i8** @patinstart, align 4, !tbaa !4
  %call253 = call fastcc i32 @charsub(i8* %121, i8* %118)
  %122 = load i8** @patinstart, align 4, !tbaa !4
  %123 = load i8** @patinput, align 4, !tbaa !4
  %sub.ptr.lhs.cast254 = ptrtoint i8* %123 to i32
  %sub.ptr.rhs.cast255 = ptrtoint i8* %122 to i32
  %sub.ptr.sub256 = sub i32 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %call257 = call i8* @metafy(i8* %122, i32 %sub.ptr.sub256, i32 3) nounwind
  %call258 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* %call257, i32 0) nounwind
  %124 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot260 = icmp eq i8 %124, 0
  %lnot.ext261 = zext i1 %lnot260 to i32
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %patoffset, i32 %lnot.ext261)
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  %128 = sext i32 %patoffset to i64
  br i1 %127, label %ioc_bb262, label %cont263

ioc_bb262:                                        ; preds = %if.then250
  %129 = zext i1 %lnot260 to i64
  call void @__ioc_report_add_overflow(i32 2126, i32 48, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %128, i64 %129, i8 13) nounwind
  br label %cont263

cont263:                                          ; preds = %if.then250, %ioc_bb262
  %conv264 = sext i32 %126 to i64
  %call265 = call %struct.param* @setiparam(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i64 %conv264) nounwind
  %130 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call253, i32 %patoffset)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb266, label %cont267

ioc_bb266:                                        ; preds = %cont263
  %133 = sext i32 %call253 to i64
  call void @__ioc_report_add_overflow(i32 2127, i32 41, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %133, i64 %128, i8 13) nounwind
  br label %cont267

cont267:                                          ; preds = %cont263, %ioc_bb266
  %134 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot269 = icmp eq i8 %134, 0
  %lnot.ext270 = zext i1 %lnot269 to i32
  %135 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %131, i32 %lnot.ext270)
  %136 = extractvalue { i32, i1 } %135, 0
  %137 = extractvalue { i32, i1 } %135, 1
  br i1 %137, label %ioc_bb271, label %cont272

ioc_bb271:                                        ; preds = %cont267
  %138 = zext i1 %lnot269 to i64
  %139 = sext i32 %131 to i64
  call void @__ioc_report_add_overflow(i32 2127, i32 53, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %139, i64 %138, i8 13) nounwind
  br label %cont272

cont272:                                          ; preds = %cont267, %ioc_bb271
  %140 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %136, i32 1)
  %141 = extractvalue { i32, i1 } %140, 0
  %142 = extractvalue { i32, i1 } %140, 1
  br i1 %142, label %ioc_bb273, label %cont274

ioc_bb273:                                        ; preds = %cont272
  %143 = sext i32 %136 to i64
  call void @__ioc_report_sub_overflow(i32 2127, i32 65, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %143, i64 1, i8 13) nounwind
  br label %cont274

cont274:                                          ; preds = %cont272, %ioc_bb273
  %conv275 = sext i32 %141 to i64
  %call276 = call %struct.param* @setiparam(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i64 %conv275) nounwind
  br label %if.end277

if.end277:                                        ; preds = %land.lhs.true247, %if.end244, %cont274
  %patnpar = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 7
  %144 = load i32* %patnpar, align 4, !tbaa !2
  %tobool278 = icmp eq i32 %144, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool278, %tobool.not
  br i1 %brmerge, label %if.else336, label %if.then281

if.then281:                                       ; preds = %if.end277
  store i32 %144, i32* %nump, align 4, !tbaa !2
  %145 = load i32* %patnpar, align 4, !tbaa !2
  %cmp285595 = icmp sgt i32 %145, 0
  %cmp288596 = icmp sgt i32 %maxnpos.0, 0
  %or.cond582597 = and i1 %cmp285595, %cmp288596
  br i1 %or.cond582597, label %for.body292.lr.ph, label %if.end429

for.body292.lr.ph:                                ; preds = %if.then281
  %146 = sext i32 %patoffset to i64
  br label %for.body292

for.body292:                                      ; preds = %for.cond283.backedge, %for.body292.lr.ph
  %begp.addr.0602 = phi i32* [ %begp, %for.body292.lr.ph ], [ %begp.addr.3, %for.cond283.backedge ]
  %endp.addr.0601 = phi i32* [ %endp, %for.body292.lr.ph ], [ %endp.addr.1, %for.cond283.backedge ]
  %i.1600 = phi i32 [ 0, %for.body292.lr.ph ], [ %168, %for.cond283.backedge ]
  %sp.0599 = phi i8** [ getelementptr inbounds ([9 x i8*]* @patbeginp, i32 0, i32 0), %for.body292.lr.ph ], [ %incdec.ptr330, %for.cond283.backedge ]
  %ep.0598 = phi i8** [ getelementptr inbounds ([9 x i8*]* @patendp, i32 0, i32 0), %for.body292.lr.ph ], [ %incdec.ptr331, %for.cond283.backedge ]
  %147 = load i32* @parsfound, align 4, !tbaa !2
  %148 = icmp ult i32 %i.1600, 32
  %149 = sext i32 %i.1600 to i64
  br i1 %148, label %cont294, label %ioc_bb293

ioc_bb293:                                        ; preds = %for.body292
  call void @__ioc_report_shl_bitwidth(i32 2138, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %149, i8 13) nounwind
  br label %cont294

cont294:                                          ; preds = %ioc_bb293, %for.body292
  %shl.zeros = sub nuw nsw i32 31, %i.1600
  %shl.check = lshr i32 1, %shl.zeros
  %150 = icmp eq i32 %shl.check, 0
  br i1 %150, label %cont296, label %ioc_bb295

ioc_bb295:                                        ; preds = %cont294
  call void @__ioc_report_shl_strict(i32 2138, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %149, i8 13) nounwind
  br label %cont296

cont296:                                          ; preds = %ioc_bb295, %cont294
  %shl = shl i32 1, %i.1600
  %and297 = and i32 %147, %shl
  %tobool298 = icmp eq i32 %and297, 0
  %tobool300 = icmp ne i32* %begp.addr.0602, null
  br i1 %tobool298, label %if.else316, label %if.then299

if.then299:                                       ; preds = %cont296
  br i1 %tobool300, label %if.then301, label %if.end306

if.then301:                                       ; preds = %if.then299
  %151 = load i8** @patinstart, align 4, !tbaa !4
  %152 = load i8** %sp.0599, align 4, !tbaa !4
  %call302 = call fastcc i32 @charsub(i8* %151, i8* %152)
  %153 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call302, i32 %patoffset)
  %154 = extractvalue { i32, i1 } %153, 0
  %155 = extractvalue { i32, i1 } %153, 1
  br i1 %155, label %ioc_bb303, label %cont304

ioc_bb303:                                        ; preds = %if.then301
  %156 = sext i32 %call302 to i64
  call void @__ioc_report_add_overflow(i32 2140, i32 53, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %156, i64 %146, i8 13) nounwind
  br label %cont304

cont304:                                          ; preds = %if.then301, %ioc_bb303
  %incdec.ptr305 = getelementptr inbounds i32* %begp.addr.0602, i32 1
  store i32 %154, i32* %begp.addr.0602, align 4, !tbaa !2
  br label %if.end306

if.end306:                                        ; preds = %cont304, %if.then299
  %begp.addr.1 = phi i32* [ %incdec.ptr305, %cont304 ], [ null, %if.then299 ]
  %tobool307 = icmp eq i32* %endp.addr.0601, null
  br i1 %tobool307, label %if.end329, label %if.then308

if.then308:                                       ; preds = %if.end306
  %157 = load i8** @patinstart, align 4, !tbaa !4
  %158 = load i8** %ep.0598, align 4, !tbaa !4
  %call309 = call fastcc i32 @charsub(i8* %157, i8* %158)
  %159 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call309, i32 %patoffset)
  %160 = extractvalue { i32, i1 } %159, 0
  %161 = extractvalue { i32, i1 } %159, 1
  br i1 %161, label %ioc_bb310, label %cont311

ioc_bb310:                                        ; preds = %if.then308
  %162 = sext i32 %call309 to i64
  call void @__ioc_report_add_overflow(i32 2142, i32 53, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %162, i64 %146, i8 13) nounwind
  br label %cont311

cont311:                                          ; preds = %if.then308, %ioc_bb310
  %163 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %160, i32 1)
  %164 = extractvalue { i32, i1 } %163, 0
  %165 = extractvalue { i32, i1 } %163, 1
  br i1 %165, label %ioc_bb312, label %cont313

ioc_bb312:                                        ; preds = %cont311
  %166 = sext i32 %160 to i64
  call void @__ioc_report_sub_overflow(i32 2142, i32 65, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %166, i64 1, i8 13) nounwind
  br label %cont313

cont313:                                          ; preds = %cont311, %ioc_bb312
  %incdec.ptr314 = getelementptr inbounds i32* %endp.addr.0601, i32 1
  store i32 %164, i32* %endp.addr.0601, align 4, !tbaa !2
  br label %if.end329

if.else316:                                       ; preds = %cont296
  br i1 %tobool300, label %cont320, label %if.end322

cont320:                                          ; preds = %if.else316
  %incdec.ptr321 = getelementptr inbounds i32* %begp.addr.0602, i32 1
  store i32 -1, i32* %begp.addr.0602, align 4, !tbaa !2
  br label %if.end322

if.end322:                                        ; preds = %cont320, %if.else316
  %begp.addr.2 = phi i32* [ %incdec.ptr321, %cont320 ], [ null, %if.else316 ]
  %tobool323 = icmp eq i32* %endp.addr.0601, null
  br i1 %tobool323, label %if.end329, label %cont326

cont326:                                          ; preds = %if.end322
  %incdec.ptr327 = getelementptr inbounds i32* %endp.addr.0601, i32 1
  store i32 -1, i32* %endp.addr.0601, align 4, !tbaa !2
  br label %if.end329

if.end329:                                        ; preds = %if.end306, %if.end322, %cont326, %cont313
  %endp.addr.1 = phi i32* [ %incdec.ptr314, %cont313 ], [ null, %if.end306 ], [ %incdec.ptr327, %cont326 ], [ null, %if.end322 ]
  %begp.addr.3 = phi i32* [ %begp.addr.1, %cont313 ], [ %begp.addr.1, %if.end306 ], [ %begp.addr.2, %cont326 ], [ %begp.addr.2, %if.end322 ]
  %incdec.ptr330 = getelementptr inbounds i8** %sp.0599, i32 1
  %incdec.ptr331 = getelementptr inbounds i8** %ep.0598, i32 1
  %167 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1600, i32 1)
  %168 = extractvalue { i32, i1 } %167, 0
  %169 = extractvalue { i32, i1 } %167, 1
  br i1 %169, label %ioc_bb333, label %for.cond283.backedge

for.cond283.backedge:                             ; preds = %if.end329, %ioc_bb333
  %170 = load i32* %patnpar, align 4, !tbaa !2
  %cmp285 = icmp slt i32 %168, %170
  %cmp288 = icmp slt i32 %168, %maxnpos.0
  %or.cond582 = and i1 %cmp285, %cmp288
  br i1 %or.cond582, label %for.body292, label %if.end429

ioc_bb333:                                        ; preds = %if.end329
  call void @__ioc_report_add_overflow(i32 2137, i32 58, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %149, i64 1, i8 13) nounwind
  br label %for.cond283.backedge

if.else336:                                       ; preds = %if.end277
  br i1 %tobool278, label %if.end429, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %if.else336
  %171 = load i32* @patflags, align 4, !tbaa !2
  %and340 = and i32 %171, 1
  %tobool341 = icmp eq i32 %and340, 0
  br i1 %tobool341, label %if.then342, label %if.end429

if.then342:                                       ; preds = %land.lhs.true339
  %172 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 1)
  %173 = extractvalue { i32, i1 } %172, 0
  %174 = extractvalue { i32, i1 } %172, 1
  br i1 %174, label %ioc_bb344, label %cont345

ioc_bb344:                                        ; preds = %if.then342
  %175 = sext i32 %144 to i64
  call void @__ioc_report_add_overflow(i32 2158, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %175, i64 1, i8 13) nounwind
  br label %cont345

cont345:                                          ; preds = %if.then342, %ioc_bb344
  %176 = sext i32 %173 to i64
  %177 = icmp sgt i32 %173, -1
  br i1 %177, label %cont348, label %ioc_bb347

ioc_bb347:                                        ; preds = %cont345
  call void @__ioc_report_conversion(i32 2163, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %176, i8 1) nounwind
  br label %cont348

cont348:                                          ; preds = %ioc_bb347, %cont345
  %178 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %173, i32 4)
  %179 = extractvalue { i32, i1 } %178, 0
  %180 = extractvalue { i32, i1 } %178, 1
  %181 = zext i32 %173 to i64
  br i1 %180, label %ioc_bb349, label %cont350

ioc_bb349:                                        ; preds = %cont348
  call void @__ioc_report_mul_overflow(i32 2163, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %181, i64 4, i8 5) nounwind
  br label %cont350

cont350:                                          ; preds = %cont348, %ioc_bb349
  %call351 = call i8* @zshcalloc(i32 %179) nounwind
  %182 = bitcast i8* %call351 to i8**
  br i1 %177, label %cont354, label %ioc_bb353

ioc_bb353:                                        ; preds = %cont350
  call void @__ioc_report_conversion(i32 2164, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %176, i8 1) nounwind
  br label %cont354

cont354:                                          ; preds = %ioc_bb353, %cont350
  br i1 %180, label %ioc_bb355, label %cont356

ioc_bb355:                                        ; preds = %cont354
  call void @__ioc_report_mul_overflow(i32 2164, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %181, i64 4, i8 5) nounwind
  br label %cont356

cont356:                                          ; preds = %cont354, %ioc_bb355
  %call357 = call i8* @zshcalloc(i32 %179) nounwind
  %183 = bitcast i8* %call357 to i8**
  br i1 %177, label %cont360, label %ioc_bb359

ioc_bb359:                                        ; preds = %cont356
  call void @__ioc_report_conversion(i32 2165, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %176, i8 1) nounwind
  br label %cont360

cont360:                                          ; preds = %ioc_bb359, %cont356
  br i1 %180, label %ioc_bb361, label %cont362

ioc_bb361:                                        ; preds = %cont360
  call void @__ioc_report_mul_overflow(i32 2165, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %181, i64 4, i8 5) nounwind
  br label %cont362

cont362:                                          ; preds = %cont360, %ioc_bb361
  %call363 = call i8* @zshcalloc(i32 %179) nounwind
  %184 = bitcast i8* %call363 to i8**
  %185 = load i32* %patnpar, align 4, !tbaa !2
  %cmp366591 = icmp sgt i32 %185, 0
  br i1 %cmp366591, label %for.body368.lr.ph, label %for.end424

for.body368.lr.ph:                                ; preds = %cont362
  %arraydecay = getelementptr inbounds [21 x i8]* %numbuf, i32 0, i32 0
  %186 = sext i32 %patoffset to i64
  br label %for.body368

for.body368:                                      ; preds = %for.body368.lr.ph, %for.cond364.backedge
  %i.2594 = phi i32 [ 0, %for.body368.lr.ph ], [ %222, %for.cond364.backedge ]
  %sp.1593 = phi i8** [ getelementptr inbounds ([9 x i8*]* @patbeginp, i32 0, i32 0), %for.body368.lr.ph ], [ %incdec.ptr419, %for.cond364.backedge ]
  %ep.1592 = phi i8** [ getelementptr inbounds ([9 x i8*]* @patendp, i32 0, i32 0), %for.body368.lr.ph ], [ %incdec.ptr420, %for.cond364.backedge ]
  %187 = load i32* @parsfound, align 4, !tbaa !2
  %188 = icmp ult i32 %i.2594, 32
  %189 = sext i32 %i.2594 to i64
  br i1 %188, label %cont370, label %ioc_bb369

ioc_bb369:                                        ; preds = %for.body368
  call void @__ioc_report_shl_bitwidth(i32 2169, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %189, i8 13) nounwind
  br label %cont370

cont370:                                          ; preds = %ioc_bb369, %for.body368
  %shl.zeros371 = sub nuw nsw i32 31, %i.2594
  %shl.check372 = lshr i32 1, %shl.zeros371
  %190 = icmp eq i32 %shl.check372, 0
  br i1 %190, label %cont374, label %ioc_bb373

ioc_bb373:                                        ; preds = %cont370
  call void @__ioc_report_shl_strict(i32 2169, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %189, i8 13) nounwind
  br label %cont374

cont374:                                          ; preds = %ioc_bb373, %cont370
  %shl375 = shl i32 1, %i.2594
  %and376 = and i32 %187, %shl375
  %tobool377 = icmp eq i32 %and376, 0
  br i1 %tobool377, label %if.else411, label %if.then378

if.then378:                                       ; preds = %cont374
  %191 = load i8** %sp.1593, align 4, !tbaa !4
  %192 = load i8** %ep.1592, align 4, !tbaa !4
  %sub.ptr.lhs.cast379 = ptrtoint i8* %192 to i32
  %sub.ptr.rhs.cast380 = ptrtoint i8* %191 to i32
  %sub.ptr.sub381 = sub i32 %sub.ptr.lhs.cast379, %sub.ptr.rhs.cast380
  %call382 = call i8* @metafy(i8* %191, i32 %sub.ptr.sub381, i32 3) nounwind
  %arrayidx383 = getelementptr inbounds i8** %182, i32 %i.2594
  store i8* %call382, i8** %arrayidx383, align 4, !tbaa !4
  %193 = load i8** @patinstart, align 4, !tbaa !4
  %194 = load i8** %sp.1593, align 4, !tbaa !4
  %call384 = call fastcc i32 @charsub(i8* %193, i8* %194)
  %195 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call384, i32 %patoffset)
  %196 = extractvalue { i32, i1 } %195, 0
  %197 = extractvalue { i32, i1 } %195, 1
  br i1 %197, label %ioc_bb385, label %cont386

ioc_bb385:                                        ; preds = %if.then378
  %198 = sext i32 %call384 to i64
  call void @__ioc_report_add_overflow(i32 2180, i32 68, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %198, i64 %186, i8 13) nounwind
  br label %cont386

cont386:                                          ; preds = %if.then378, %ioc_bb385
  %199 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot388 = icmp eq i8 %199, 0
  %lnot.ext389 = zext i1 %lnot388 to i32
  %200 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %196, i32 %lnot.ext389)
  %201 = extractvalue { i32, i1 } %200, 0
  %202 = extractvalue { i32, i1 } %200, 1
  br i1 %202, label %ioc_bb390, label %cont391

ioc_bb390:                                        ; preds = %cont386
  %203 = zext i1 %lnot388 to i64
  %204 = sext i32 %196 to i64
  call void @__ioc_report_add_overflow(i32 2180, i32 80, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %204, i64 %203, i8 13) nounwind
  br label %cont391

cont391:                                          ; preds = %cont386, %ioc_bb390
  %call392 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %201) nounwind
  %call394 = call i8* @ztrdup(i8* %arraydecay) nounwind
  %arrayidx395 = getelementptr inbounds i8** %183, i32 %i.2594
  store i8* %call394, i8** %arrayidx395, align 4, !tbaa !4
  %205 = load i8** @patinstart, align 4, !tbaa !4
  %206 = load i8** %ep.1592, align 4, !tbaa !4
  %call397 = call fastcc i32 @charsub(i8* %205, i8* %206)
  %207 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call397, i32 %patoffset)
  %208 = extractvalue { i32, i1 } %207, 0
  %209 = extractvalue { i32, i1 } %207, 1
  br i1 %209, label %ioc_bb398, label %cont399

ioc_bb398:                                        ; preds = %cont391
  %210 = sext i32 %call397 to i64
  call void @__ioc_report_add_overflow(i32 2182, i32 68, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %210, i64 %186, i8 13) nounwind
  br label %cont399

cont399:                                          ; preds = %cont391, %ioc_bb398
  %211 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 89), align 1, !tbaa !0
  %lnot401 = icmp eq i8 %211, 0
  %lnot.ext402 = zext i1 %lnot401 to i32
  %212 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %208, i32 %lnot.ext402)
  %213 = extractvalue { i32, i1 } %212, 0
  %214 = extractvalue { i32, i1 } %212, 1
  br i1 %214, label %ioc_bb403, label %cont404

ioc_bb403:                                        ; preds = %cont399
  %215 = zext i1 %lnot401 to i64
  %216 = sext i32 %208 to i64
  call void @__ioc_report_add_overflow(i32 2182, i32 80, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %216, i64 %215, i8 13) nounwind
  br label %cont404

cont404:                                          ; preds = %cont399, %ioc_bb403
  %217 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %213, i32 1)
  %218 = extractvalue { i32, i1 } %217, 0
  %219 = extractvalue { i32, i1 } %217, 1
  br i1 %219, label %ioc_bb405, label %cont406

ioc_bb405:                                        ; preds = %cont404
  %220 = sext i32 %213 to i64
  call void @__ioc_report_sub_overflow(i32 2182, i32 92, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %220, i64 1, i8 13) nounwind
  br label %cont406

cont406:                                          ; preds = %cont404, %ioc_bb405
  %call407 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %218) nounwind
  %call409 = call i8* @ztrdup(i8* %arraydecay) nounwind
  %arrayidx410 = getelementptr inbounds i8** %184, i32 %i.2594
  store i8* %call409, i8** %arrayidx410, align 4, !tbaa !4
  br label %if.end418

if.else411:                                       ; preds = %cont374
  %call412 = call i8* @ztrdup(i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0)) nounwind
  %arrayidx413 = getelementptr inbounds i8** %182, i32 %i.2594
  store i8* %call412, i8** %arrayidx413, align 4, !tbaa !4
  %call414 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)) nounwind
  %arrayidx415 = getelementptr inbounds i8** %183, i32 %i.2594
  store i8* %call414, i8** %arrayidx415, align 4, !tbaa !4
  %call416 = call i8* @ztrdup(i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)) nounwind
  %arrayidx417 = getelementptr inbounds i8** %184, i32 %i.2594
  store i8* %call416, i8** %arrayidx417, align 4, !tbaa !4
  br label %if.end418

if.end418:                                        ; preds = %if.else411, %cont406
  %incdec.ptr419 = getelementptr inbounds i8** %sp.1593, i32 1
  %incdec.ptr420 = getelementptr inbounds i8** %ep.1592, i32 1
  %221 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2594, i32 1)
  %222 = extractvalue { i32, i1 } %221, 0
  %223 = extractvalue { i32, i1 } %221, 1
  br i1 %223, label %ioc_bb422, label %for.cond364.backedge

for.cond364.backedge:                             ; preds = %if.end418, %ioc_bb422
  %224 = load i32* %patnpar, align 4, !tbaa !2
  %cmp366 = icmp slt i32 %222, %224
  br i1 %cmp366, label %for.body368, label %for.end424

ioc_bb422:                                        ; preds = %if.end418
  call void @__ioc_report_add_overflow(i32 2168, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %189, i64 1, i8 13) nounwind
  br label %for.cond364.backedge

for.end424:                                       ; preds = %for.cond364.backedge, %cont362
  %call425 = call %struct.param* @assignaparam(i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8** %182, i32 0) nounwind
  %call426 = call %struct.param* @assignaparam(i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0), i8** %183, i32 0) nounwind
  %call427 = call %struct.param* @assignaparam(i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i8** %184, i32 0) nounwind
  br label %if.end429

if.end429:                                        ; preds = %if.then281, %for.cond283.backedge, %land.lhs.true339, %if.else336, %for.end424
  %endp.addr.2 = phi i32* [ %endp, %land.lhs.true339 ], [ %endp, %for.end424 ], [ %endp, %if.else336 ], [ %endp, %if.then281 ], [ %endp.addr.1, %for.cond283.backedge ]
  %tobool432 = icmp eq i32* %endp.addr.2, null
  %or.cond583 = or i1 %tobool, %tobool432
  br i1 %or.cond583, label %if.end439, label %if.then433

if.then433:                                       ; preds = %if.end429
  %225 = load i8** @patinstart, align 4, !tbaa !4
  %226 = load i8** @patinput, align 4, !tbaa !4
  %call434 = call fastcc i32 @charsub(i8* %225, i8* %226)
  %227 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call434, i32 %patoffset)
  %228 = extractvalue { i32, i1 } %227, 0
  %229 = extractvalue { i32, i1 } %227, 1
  br i1 %229, label %ioc_bb435, label %cont436

ioc_bb435:                                        ; preds = %if.then433
  %230 = sext i32 %patoffset to i64
  %231 = sext i32 %call434 to i64
  call void @__ioc_report_add_overflow(i32 2205, i32 47, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %231, i64 %230, i8 13) nounwind
  br label %cont436

cont436:                                          ; preds = %if.then433, %ioc_bb435
  store i32 %228, i32* %endp.addr.2, align 4, !tbaa !2
  br label %if.end439

if.end439:                                        ; preds = %if.end211, %if.end429, %cont436
  %ret.1 = phi i32 [ 1, %cont436 ], [ 1, %if.end429 ], [ 0, %if.end211 ]
  %tobool440 = icmp eq i8* %tryalloced.0, null
  br i1 %tobool440, label %return, label %if.then441

if.then441:                                       ; preds = %if.end439
  %232 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %unmetalen.addr.1, i32 %unmetalenp.0)
  %233 = extractvalue { i32, i1 } %232, 0
  %234 = extractvalue { i32, i1 } %232, 1
  br i1 %234, label %ioc_bb442, label %cont443

ioc_bb442:                                        ; preds = %if.then441
  %235 = sext i32 %unmetalenp.0 to i64
  %236 = sext i32 %unmetalen.addr.1 to i64
  call void @__ioc_report_add_overflow(i32 2212, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %236, i64 %235, i8 13) nounwind
  br label %cont443

cont443:                                          ; preds = %if.then441, %ioc_bb442
  call void @zfree(i8* %tryalloced.0, i32 %233) nounwind
  br label %return

return:                                           ; preds = %cont443, %if.end439, %cont203, %if.then199, %cont162, %if.end158
  %retval.0 = phi i32 [ %ret85.1, %if.end158 ], [ %ret85.1, %cont162 ], [ 0, %if.then199 ], [ 0, %cont203 ], [ %ret.1, %if.end439 ], [ %ret.1, %cont443 ]
  ret i32 %retval.0
}

define i32 @pattrylen(%struct.patprog* %prog, i8* %string, i32 %len, i32 %unmetalen, i32 %offset) nounwind {
entry:
  %call = tail call i32 @pattryrefs(%struct.patprog* %prog, i8* %string, i32 %len, i32 %unmetalen, i32 %offset, i32* null, i32* null, i32* null)
  ret i32 %call
}

declare i32 @ztrsub(i8*, i8*)

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @ztrduppfx(i8*, i32)

declare void @mb_metacharinit()

declare i32 @mb_metacharlenconv(i8*, i32*)

declare %struct.param* @assignsparam(i8*, i8*, i32)

declare %struct.param* @setiparam(i8*, i64)

declare void @zfree(i8*, i32)

define internal fastcc i32 @patmatch(%union.upat* %prog) nounwind {
entry:
  %chrop = alloca i8*, align 4
  %badin = alloca i32, align 4
  %badpa = alloca i32, align 4
  %tobool1535 = icmp eq %union.upat* %prog, null
  br i1 %tobool1535, label %return, label %while.body.lr.ph

while.cond.outer.loopexit:                        ; preds = %while.cond33, %sw.bb451, %if.else, %if.else117, %if.else105, %sw.bb330, %cont443, %cleanup, %lor.lhs.false953, %lor.lhs.false961, %if.end, %sw.epilog
  %next.21642 = phi %union.upat* [ %cond7, %sw.epilog ], [ %cond7, %if.end ], [ %cond7, %lor.lhs.false961 ], [ %cond7, %lor.lhs.false953 ], [ %cond7, %cleanup ], [ %cond7, %cont443 ], [ %cond7, %sw.bb330 ], [ %cond7, %if.else105 ], [ %cond7, %if.else117 ], [ %cond7, %if.else ], [ %add.ptr94, %sw.bb451 ], [ %cond7, %while.cond33 ]
  %tobool = icmp eq %union.upat* %next.21642, null
  br i1 %tobool, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry, %while.cond.outer.loopexit
  %scan.0.ph1536 = phi %union.upat* [ %next.21642, %while.cond.outer.loopexit ], [ %prog, %entry ]
  %l = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 0, i32 0
  %add.ptr29 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 2
  %0 = bitcast %union.upat* %add.ptr29 to i8*
  %l30 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 1, i32 0
  %add.ptr94 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 1
  %1 = bitcast %union.upat* %add.ptr94 to i8*
  %from.0..cast = bitcast %union.upat* %add.ptr94 to i64*
  %add.ptr1311412 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 3
  %p = bitcast %union.upat* %add.ptr29 to i8**
  %2 = bitcast %union.upat* %add.ptr1311412 to i8*
  %l3.i = getelementptr inbounds %union.upat* %add.ptr29, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %if.end1177, %if.then1049, %while.body.lr.ph
  %3 = load i32* %l, align 4, !tbaa !3
  %shr = ashr i32 %3, 8
  %tobool1 = icmp eq i32 %shr, 0
  br i1 %tobool1, label %cond.end6, label %cond.true

cond.true:                                        ; preds = %while.body
  %and = and i32 %3, 255
  %cmp = icmp eq i32 %and, 3
  %idx.neg = sub i32 0, %shr
  %idx.neg.sink = select i1 %cmp, i32 %idx.neg, i32 %shr
  %add.ptr = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 %idx.neg.sink
  br label %cond.end6

cond.end6:                                        ; preds = %while.body, %cond.true
  %cond7 = phi %union.upat* [ %add.ptr, %cond.true ], [ null, %while.body ]
  %4 = load i32* @globdots, align 4, !tbaa !2
  %tobool8 = icmp eq i32 %4, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end6
  %and10 = and i32 %3, 64
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %5 = load i8** @patinput, align 4, !tbaa !4
  %6 = load i8** @patinstart, align 4, !tbaa !4
  %cmp13 = icmp eq i8* %5, %6
  %7 = load i8** @patinend, align 4, !tbaa !4
  %cmp15 = icmp ult i8* %5, %7
  %or.cond1413 = and i1 %cmp13, %cmp15
  br i1 %or.cond1413, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %8 = load i8* %5, align 1, !tbaa !0
  %cmp17 = icmp eq i8 %8, 46
  br i1 %cmp17, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %cond.end6, %land.lhs.true16, %land.lhs.true12
  %and20 = and i32 %3, 255
  switch i32 %and20, label %while.cond.outer.loopexit [
    i32 64, label %sw.bb
    i32 4, label %sw.bb25
    i32 65, label %sw.bb88
    i32 66, label %sw.bb88
    i32 68, label %sw.bb124
    i32 69, label %sw.bb124
    i32 70, label %sw.bb124
    i32 71, label %sw.bb268
    i32 0, label %sw.bb1020
    i32 12, label %sw.bb977
    i32 8, label %sw.bb330
    i32 128, label %sw.bb342
    i32 129, label %sw.bb342
    i32 130, label %sw.bb342
    i32 131, label %sw.bb342
    i32 132, label %sw.bb342
    i32 133, label %sw.bb342
    i32 134, label %sw.bb342
    i32 135, label %sw.bb342
    i32 136, label %sw.bb342
    i32 137, label %sw.bb342
    i32 144, label %sw.bb388
    i32 145, label %sw.bb388
    i32 146, label %sw.bb388
    i32 147, label %sw.bb388
    i32 148, label %sw.bb388
    i32 149, label %sw.bb388
    i32 150, label %sw.bb388
    i32 151, label %sw.bb388
    i32 152, label %sw.bb388
    i32 153, label %sw.bb388
    i32 1, label %sw.bb425
    i32 2, label %sw.bb445
    i32 32, label %sw.bb451
    i32 33, label %sw.bb451
    i32 67, label %sw.bb730
    i32 6, label %sw.bb730
    i32 7, label %sw.bb730
    i32 9, label %sw.bb950
    i32 10, label %sw.bb958
    i32 11, label %sw.bb966
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i8** @patinput, align 4, !tbaa !4
  %10 = load i8** @patinend, align 4, !tbaa !4
  %cmp21 = icmp eq i8* %9, %10
  br i1 %cmp21, label %if.then1032, label %if.else

if.else:                                          ; preds = %sw.bb
  %call = call fastcc i8* @charnext(i8* %9, i8* %10)
  store i8* %call, i8** @patinput, align 4, !tbaa !4
  br label %while.cond.outer.loopexit

sw.bb25:                                          ; preds = %if.end
  %11 = load i8** @exactpos, align 4, !tbaa !4
  %tobool26 = icmp eq i8* %11, null
  br i1 %tobool26, label %if.else28, label %if.then27

if.then27:                                        ; preds = %sw.bb25
  store i8* %11, i8** %chrop, align 4, !tbaa !4
  %12 = load i8** @exactend, align 4, !tbaa !4
  br label %if.end32

if.else28:                                        ; preds = %sw.bb25
  store i8* %0, i8** %chrop, align 4, !tbaa !4
  %13 = load i32* %l30, align 4, !tbaa !3
  %add.ptr31 = getelementptr inbounds i8* %0, i32 %13
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then27
  %14 = phi i8* [ %11, %if.then27 ], [ %0, %if.else28 ]
  %chrend.0 = phi i8* [ %12, %if.then27 ], [ %add.ptr31, %if.else28 ]
  store i8* null, i8** @exactpos, align 4, !tbaa !4
  br label %while.cond33

while.cond33:                                     ; preds = %lor.lhs.false78.while.cond33_crit_edge, %if.end32
  %15 = phi i8* [ %.pre1629, %lor.lhs.false78.while.cond33_crit_edge ], [ %14, %if.end32 ]
  %cmp34 = icmp ult i8* %15, %chrend.0
  br i1 %cmp34, label %land.rhs, label %while.cond.outer.loopexit

land.rhs:                                         ; preds = %while.cond33
  %16 = load i8** @patinput, align 4, !tbaa !4
  %17 = load i8** @patinend, align 4, !tbaa !4
  %cmp36 = icmp ult i8* %16, %17
  br i1 %cmp36, label %while.body38, label %if.then85

while.body38:                                     ; preds = %land.rhs
  store i32 0, i32* %badin, align 4, !tbaa !2
  store i32 0, i32* %badpa, align 4, !tbaa !2
  %call39 = call fastcc i32 @charrefinc(i8** @patinput, i8* %17, i32* %badin)
  %18 = icmp sgt i32 %call39, -1
  br i1 %18, label %cont41, label %ioc_bb40

ioc_bb40:                                         ; preds = %while.body38
  %19 = sext i32 %call39 to i64
  call void @__ioc_report_conversion(i32 2339, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont41

cont41:                                           ; preds = %ioc_bb40, %while.body38
  %call42 = call fastcc i32 @charrefinc(i8** %chrop, i8* %chrend.0, i32* %badpa)
  %20 = icmp sgt i32 %call42, -1
  br i1 %20, label %cont45, label %ioc_bb44

ioc_bb44:                                         ; preds = %cont41
  %21 = sext i32 %call42 to i64
  call void @__ioc_report_conversion(i32 2340, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %21, i8 1) nounwind
  br label %cont45

cont45:                                           ; preds = %ioc_bb44, %cont41
  %cmp46 = icmp eq i32 %call39, %call42
  br i1 %cmp46, label %lor.lhs.false78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont45
  %22 = load i32* @patglobflags, align 4, !tbaa !2
  %and48 = and i32 %22, 512
  %tobool49 = icmp eq i32 %and48, 0
  br i1 %tobool49, label %cond.false67, label %cond.true50

cond.true50:                                      ; preds = %lor.lhs.false
  %call51 = call i32 @iswupper(i32 %call39) nounwind
  %tobool52 = icmp eq i32 %call51, 0
  br i1 %tobool52, label %cond.end56, label %cond.true53

cond.true53:                                      ; preds = %cond.true50
  %call54 = call i32 @towlower(i32 %call39) nounwind
  br label %cond.end56

cond.end56:                                       ; preds = %cond.true50, %cond.true53
  %cond57 = phi i32 [ %call54, %cond.true53 ], [ %call39, %cond.true50 ]
  %call58 = call i32 @iswupper(i32 %call42) nounwind
  %tobool59 = icmp eq i32 %call58, 0
  br i1 %tobool59, label %cond.end63, label %cond.true60

cond.true60:                                      ; preds = %cond.end56
  %call61 = call i32 @towlower(i32 %call42) nounwind
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end56, %cond.true60
  %cond64 = phi i32 [ %call61, %cond.true60 ], [ %call42, %cond.end56 ]
  %cmp65 = icmp eq i32 %cond57, %cond64
  br i1 %cmp65, label %lor.lhs.false78, label %while.end

cond.false67:                                     ; preds = %lor.lhs.false
  %and68 = and i32 %22, 256
  %tobool69 = icmp eq i32 %and68, 0
  br i1 %tobool69, label %while.end, label %cond.true70

cond.true70:                                      ; preds = %cond.false67
  %call71 = call i32 @iswlower(i32 %call42) nounwind
  %tobool72 = icmp eq i32 %call71, 0
  br i1 %tobool72, label %while.end, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %cond.true70
  %call74 = call i32 @towupper(i32 %call42) nounwind
  %cmp75 = icmp eq i32 %call74, %call39
  br i1 %cmp75, label %lor.lhs.false78, label %while.end

lor.lhs.false78:                                  ; preds = %land.lhs.true73, %cond.end63, %cont45
  %23 = load i32* %badin, align 4, !tbaa !2
  %24 = load i32* %badpa, align 4, !tbaa !2
  %cmp79 = icmp eq i32 %23, %24
  br i1 %cmp79, label %lor.lhs.false78.while.cond33_crit_edge, label %while.end

lor.lhs.false78.while.cond33_crit_edge:           ; preds = %lor.lhs.false78
  %.pre1629 = load i8** %chrop, align 4, !tbaa !4
  br label %while.cond33

while.end:                                        ; preds = %cond.end63, %land.lhs.true73, %cond.false67, %cond.true70, %lor.lhs.false78
  store i8* %16, i8** @patinput, align 4, !tbaa !4
  store i8* %15, i8** %chrop, align 4, !tbaa !4
  br i1 %cmp34, label %if.then85, label %if.then1032

if.then85:                                        ; preds = %land.rhs, %while.end
  store i8* %15, i8** @exactpos, align 4, !tbaa !4
  store i8* %chrend.0, i8** @exactend, align 4, !tbaa !4
  br label %if.then1032

sw.bb88:                                          ; preds = %if.end, %if.end
  %25 = load i8** @patinput, align 4, !tbaa !4
  %26 = load i8** @patinend, align 4, !tbaa !4
  %cmp89 = icmp eq i8* %25, %26
  br i1 %cmp89, label %if.then1032, label %if.else92

if.else92:                                        ; preds = %sw.bb88
  %call93 = call fastcc i32 @charref(i8* %25, i8* %26)
  %27 = load i32* @patglobflags, align 4, !tbaa !2
  %and95 = and i32 %27, 4096
  %tobool96 = icmp eq i32 %and95, 0
  br i1 %tobool96, label %if.else108, label %if.then97

if.then97:                                        ; preds = %if.else92
  %call98 = call i32 @mb_patmatchrange(i8* %1, i32 %call93, i32* null, i32* null)
  %28 = load i32* %l, align 4, !tbaa !3
  %and100 = and i32 %28, 255
  %cmp101 = icmp eq i32 %and100, 65
  %conv102 = zext i1 %cmp101 to i32
  %tobool103 = icmp eq i32 %call98, %conv102
  br i1 %tobool103, label %if.else105, label %if.then1032

if.else105:                                       ; preds = %if.then97
  %29 = load i8** @patinput, align 4, !tbaa !4
  %30 = load i8** @patinend, align 4, !tbaa !4
  %call106 = call fastcc i8* @charnext(i8* %29, i8* %30)
  store i8* %call106, i8** @patinput, align 4, !tbaa !4
  br label %while.cond.outer.loopexit

if.else108:                                       ; preds = %if.else92
  %call109 = call i32 @patmatchrange(i8* %1, i32 %call93, i32* null, i32* null)
  %31 = load i32* %l, align 4, !tbaa !3
  %and111 = and i32 %31, 255
  %cmp112 = icmp eq i32 %and111, 65
  %conv113 = zext i1 %cmp112 to i32
  %tobool115 = icmp eq i32 %call109, %conv113
  br i1 %tobool115, label %if.else117, label %if.then1032

if.else117:                                       ; preds = %if.else108
  %32 = load i8** @patinput, align 4, !tbaa !4
  %33 = load i8** @patinend, align 4, !tbaa !4
  %call118 = call fastcc i8* @charnext(i8* %32, i8* %33)
  store i8* %call118, i8** @patinput, align 4, !tbaa !4
  br label %while.cond.outer.loopexit

sw.bb124:                                         ; preds = %if.end, %if.end, %if.end
  %cmp128 = icmp eq i32 %and20, 70
  br i1 %cmp128, label %if.then135, label %if.end132

if.end132:                                        ; preds = %sw.bb124
  %from.0.copyload = load i64* %from.0..cast, align 1
  %cmp133 = icmp eq i32 %and20, 69
  br i1 %cmp133, label %if.end136, label %if.then135

if.then135:                                       ; preds = %sw.bb124, %if.end132
  %start.0.in1425 = phi %union.upat* [ %add.ptr1311412, %if.end132 ], [ %add.ptr94, %sw.bb124 ]
  %from.01423 = phi i64 [ %from.0.copyload, %if.end132 ], [ 0, %sw.bb124 ]
  %to.0..cast = bitcast %union.upat* %start.0.in1425 to i64*
  %to.0.copyload = load i64* %to.0..cast, align 1
  br label %if.end136

if.end136:                                        ; preds = %if.end132, %if.then135
  %cmp1331427 = phi i1 [ false, %if.then135 ], [ true, %if.end132 ]
  %from.01424 = phi i64 [ %from.01423, %if.then135 ], [ %from.0.copyload, %if.end132 ]
  %to.0 = phi i64 [ %to.0.copyload, %if.then135 ], [ 0, %if.end132 ]
  %34 = load i8** @patinput, align 4, !tbaa !4
  %35 = load i8** @patinend, align 4, !tbaa !4
  %cmp1381466 = icmp ult i8* %34, %35
  br i1 %cmp1381466, label %land.rhs140, label %while.end206

land.rhs140:                                      ; preds = %if.end136, %while.cond137.backedge
  %36 = phi i8* [ %55, %while.cond137.backedge ], [ %34, %if.end136 ]
  %compend.01468 = phi i8* [ %incdec.ptr165, %while.cond137.backedge ], [ %34, %if.end136 ]
  %comp.01467 = phi i64 [ %51, %while.cond137.backedge ], [ 0, %if.end136 ]
  %37 = load i8* %36, align 1, !tbaa !0
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %cont143, label %ioc_bb142

ioc_bb142:                                        ; preds = %land.rhs140
  %39 = sext i8 %37 to i64
  call void @__ioc_report_conversion(i32 2416, i32 61, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont143

cont143:                                          ; preds = %ioc_bb142, %land.rhs140
  %idxprom = zext i8 %37 to i32
  %arrayidx144 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %40 = load i16* %arrayidx144, align 2, !tbaa !5
  %and150 = and i16 %40, 1
  %tobool151 = icmp eq i16 %and150, 0
  br i1 %tobool151, label %while.end206split, label %while.body153

while.body153:                                    ; preds = %cont143
  %tobool154 = icmp eq i64 %comp.01467, 0
  br i1 %tobool154, label %if.end158, label %if.then155

if.then155:                                       ; preds = %while.body153
  %41 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %comp.01467, i64 10)
  %42 = extractvalue { i64, i1 } %41, 0
  %43 = extractvalue { i64, i1 } %41, 1
  br i1 %43, label %ioc_bb156, label %if.end158

ioc_bb156:                                        ; preds = %if.then155
  call void @__ioc_report_mul_overflow(i32 2418, i32 18, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %comp.01467, i64 10, i8 14) nounwind
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %while.body153, %ioc_bb156
  %comp.1 = phi i64 [ %42, %ioc_bb156 ], [ 0, %while.body153 ], [ %42, %if.then155 ]
  %44 = load i8** @patinput, align 4, !tbaa !4
  %45 = load i8* %44, align 1, !tbaa !0
  %conv159 = sext i8 %45 to i32
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv159, i32 48)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb160, label %cont161

ioc_bb160:                                        ; preds = %if.end158
  %49 = sext i8 %45 to i64
  call void @__ioc_report_sub_overflow(i32 2419, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %49, i64 48, i8 13) nounwind
  br label %cont161

cont161:                                          ; preds = %if.end158, %ioc_bb160
  %conv162 = sext i32 %47 to i64
  %50 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %comp.1, i64 %conv162)
  %51 = extractvalue { i64, i1 } %50, 0
  %52 = extractvalue { i64, i1 } %50, 1
  br i1 %52, label %ioc_bb163, label %cont164

ioc_bb163:                                        ; preds = %cont161
  call void @__ioc_report_add_overflow(i32 2419, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %comp.1, i64 %conv162, i8 14) nounwind
  br label %cont164

cont164:                                          ; preds = %cont161, %ioc_bb163
  %53 = load i8** @patinput, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8* %53, i32 1
  store i8* %incdec.ptr, i8** @patinput, align 4, !tbaa !4
  %incdec.ptr165 = getelementptr inbounds i8* %compend.01468, i32 1
  %and178 = and i64 %51, 4611686018427387904
  %tobool179 = icmp ne i64 %and178, 0
  %or.cond1414 = and i1 %tobool179, %cmp1331427
  %54 = load i8** @patinend, align 4, !tbaa !4
  %cmp1851465 = icmp ult i8* %incdec.ptr, %54
  %or.cond1645 = and i1 %or.cond1414, %cmp1851465
  br i1 %or.cond1645, label %land.rhs187, label %while.cond137.backedge

while.cond137.backedge:                           ; preds = %cont190, %cont164, %while.body201
  %55 = phi i8* [ %incdec.ptr202, %while.body201 ], [ %incdec.ptr, %cont164 ], [ %.pre1614.pre, %cont190 ]
  %56 = load i8** @patinend, align 4, !tbaa !4
  %cmp138 = icmp ult i8* %55, %56
  br i1 %cmp138, label %land.rhs140, label %while.end206

land.rhs187:                                      ; preds = %cont164, %while.body201
  %57 = phi i8* [ %incdec.ptr202, %while.body201 ], [ %incdec.ptr, %cont164 ]
  %58 = load i8* %57, align 1, !tbaa !0
  %59 = icmp sgt i8 %58, -1
  br i1 %59, label %cont190, label %ioc_bb189

ioc_bb189:                                        ; preds = %land.rhs187
  %60 = sext i8 %58 to i64
  call void @__ioc_report_conversion(i32 2438, i32 67, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %60, i8 1) nounwind
  br label %cont190

cont190:                                          ; preds = %ioc_bb189, %land.rhs187
  %idxprom191 = zext i8 %58 to i32
  %arrayidx192 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom191
  %61 = load i16* %arrayidx192, align 2, !tbaa !5
  %and198 = and i16 %61, 1
  %tobool199 = icmp eq i16 %and198, 0
  %.pre1614.pre = load i8** @patinput, align 4, !tbaa !4
  br i1 %tobool199, label %while.cond137.backedge, label %while.body201

while.body201:                                    ; preds = %cont190
  %incdec.ptr202 = getelementptr inbounds i8* %.pre1614.pre, i32 1
  store i8* %incdec.ptr202, i8** @patinput, align 4, !tbaa !4
  %62 = load i8** @patinend, align 4, !tbaa !4
  %cmp185 = icmp ult i8* %incdec.ptr202, %62
  br i1 %cmp185, label %land.rhs187, label %while.cond137.backedge

while.end206split:                                ; preds = %cont143
  %.pre1612 = load i8** @patinput, align 4, !tbaa !4
  br label %while.end206

while.end206:                                     ; preds = %while.cond137.backedge, %while.end206split, %if.end136
  %63 = phi i8* [ %34, %if.end136 ], [ %.pre1612, %while.end206split ], [ %55, %while.cond137.backedge ]
  %compend.0.lcssa = phi i8* [ %34, %if.end136 ], [ %compend.01468, %while.end206split ], [ %incdec.ptr165, %while.cond137.backedge ]
  %comp.0.lcssa = phi i64 [ 0, %if.end136 ], [ %comp.01467, %while.end206split ], [ %51, %while.cond137.backedge ]
  %cmp218 = icmp ne i32 %and20, 69
  %l230 = getelementptr inbounds %union.upat* %cond7, i32 0, i32 0
  %l236 = getelementptr inbounds %union.upat* %cond7, i32 1, i32 0
  %add.ptr239 = getelementptr inbounds %union.upat* %cond7, i32 2
  %64 = bitcast %union.upat* %add.ptr239 to i8*
  br label %while.cond207.outer

while.cond207.outer:                              ; preds = %cont265, %while.end206
  %65 = phi i8* [ %63, %while.end206 ], [ %78, %cont265 ]
  %comp.2.ph = phi i64 [ %comp.0.lcssa, %while.end206 ], [ %div, %cont265 ]
  %no.0.ph = phi i32 [ 0, %while.end206 ], [ %75, %cont265 ]
  %save.0.ph = phi i8* [ %63, %while.end206 ], [ %incdec.ptr257, %cont265 ]
  %cmp211 = icmp sge i64 %comp.2.ph, %from.01424
  %cmp221 = icmp sgt i64 %comp.2.ph, %to.0
  %or.cond1416 = and i1 %cmp218, %cmp221
  br label %while.cond207

while.cond207:                                    ; preds = %while.cond207.outer, %cont259
  %66 = phi i8* [ %78, %cont259 ], [ %65, %while.cond207.outer ]
  %no.0 = phi i32 [ %75, %cont259 ], [ %no.0.ph, %while.cond207.outer ]
  %save.0 = phi i8* [ %incdec.ptr257, %cont259 ], [ %save.0.ph, %while.cond207.outer ]
  %cmp208 = icmp ugt i8* %66, %34
  br i1 %cmp208, label %while.body210, label %while.end267

while.body210:                                    ; preds = %while.cond207
  %cmp214 = icmp ugt i8* %66, %compend.0.lcssa
  %or.cond1415 = or i1 %cmp211, %cmp214
  br i1 %or.cond1415, label %if.end217, label %while.end267

if.end217:                                        ; preds = %while.body210
  br i1 %or.cond1416, label %if.end227, label %land.lhs.true223

land.lhs.true223:                                 ; preds = %if.end217
  %call224 = call fastcc i32 @patmatch(%union.upat* %cond7)
  %tobool225 = icmp eq i32 %call224, 0
  br i1 %tobool225, label %if.end227, label %return

if.end227:                                        ; preds = %if.end217, %land.lhs.true223
  %tobool228 = icmp eq i32 %no.0, 0
  br i1 %tobool228, label %land.lhs.true229, label %if.end256

land.lhs.true229:                                 ; preds = %if.end227
  %67 = load i32* %l230, align 4, !tbaa !3
  %and231 = and i32 %67, 255
  %cmp232 = icmp eq i32 %and231, 4
  br i1 %cmp232, label %land.lhs.true234, label %if.end256

land.lhs.true234:                                 ; preds = %land.lhs.true229
  %68 = load i32* %l236, align 4, !tbaa !3
  %tobool237 = icmp eq i32 %68, 0
  br i1 %tobool237, label %land.lhs.true252, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %land.lhs.true234
  %69 = load i8* %64, align 1, !tbaa !0
  %70 = icmp sgt i8 %69, -1
  br i1 %70, label %cont242, label %ioc_bb241

ioc_bb241:                                        ; preds = %lor.lhs.false238
  %71 = sext i8 %69 to i64
  call void @__ioc_report_conversion(i32 2452, i32 111, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %71, i8 1) nounwind
  br label %cont242

cont242:                                          ; preds = %ioc_bb241, %lor.lhs.false238
  %idxprom243 = zext i8 %69 to i32
  %arrayidx244 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom243
  %72 = load i16* %arrayidx244, align 2, !tbaa !5
  %and250 = and i16 %72, 1
  %tobool251 = icmp eq i16 %and250, 0
  br i1 %tobool251, label %land.lhs.true252, label %if.end256

land.lhs.true252:                                 ; preds = %cont242, %land.lhs.true234
  %73 = load i32* @patglobflags, align 4, !tbaa !2
  %and253 = and i32 %73, 255
  %tobool254 = icmp eq i32 %and253, 0
  br i1 %tobool254, label %return, label %if.end256

if.end256:                                        ; preds = %cont242, %land.lhs.true252, %if.end227, %land.lhs.true229
  %incdec.ptr257 = getelementptr inbounds i8* %save.0, i32 -1
  store i8* %incdec.ptr257, i8** @patinput, align 4, !tbaa !4
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %no.0, i32 1)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb258, label %cont259

ioc_bb258:                                        ; preds = %if.end256
  %77 = sext i32 %no.0 to i64
  call void @__ioc_report_add_overflow(i32 2455, i32 13, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %77, i64 1, i8 13) nounwind
  %.pre1613 = load i8** @patinput, align 4, !tbaa !4
  br label %cont259

cont259:                                          ; preds = %if.end256, %ioc_bb258
  %78 = phi i8* [ %incdec.ptr257, %if.end256 ], [ %.pre1613, %ioc_bb258 ]
  %cmp260 = icmp ult i8* %78, %compend.0.lcssa
  br i1 %cmp260, label %cont265, label %while.cond207

cont265:                                          ; preds = %cont259
  %div = sdiv i64 %comp.2.ph, 10
  br label %while.cond207.outer

while.end267:                                     ; preds = %while.body210, %while.cond207
  store i8* %34, i8** @patinput, align 4, !tbaa !4
  br label %if.then1032

sw.bb268:                                         ; preds = %if.end
  %79 = load i8** @patinput, align 4, !tbaa !4
  %80 = load i8** @patinend, align 4, !tbaa !4
  %cmp2701459 = icmp ult i8* %79, %80
  br i1 %cmp2701459, label %land.rhs272, label %while.end329

land.rhs272:                                      ; preds = %sw.bb268, %while.body286
  %81 = phi i8* [ %incdec.ptr287, %while.body286 ], [ %79, %sw.bb268 ]
  %82 = load i8* %81, align 1, !tbaa !0
  %83 = icmp sgt i8 %82, -1
  br i1 %83, label %land.end285, label %ioc_bb274

ioc_bb274:                                        ; preds = %land.rhs272
  %84 = sext i8 %82 to i64
  call void @__ioc_report_conversion(i32 2473, i32 61, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %84, i8 1) nounwind
  %.pre1615 = load i8** @patinput, align 4, !tbaa !4
  br label %land.end285

land.end285:                                      ; preds = %land.rhs272, %ioc_bb274
  %85 = phi i8* [ %81, %land.rhs272 ], [ %.pre1615, %ioc_bb274 ]
  %idxprom276 = zext i8 %82 to i32
  %arrayidx277 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom276
  %86 = load i16* %arrayidx277, align 2, !tbaa !5
  %and283 = and i16 %86, 1
  %tobool284 = icmp eq i16 %and283, 0
  br i1 %tobool284, label %while.cond289.preheader, label %while.body286

while.body286:                                    ; preds = %land.end285
  %incdec.ptr287 = getelementptr inbounds i8* %85, i32 1
  store i8* %incdec.ptr287, i8** @patinput, align 4, !tbaa !4
  %87 = load i8** @patinend, align 4, !tbaa !4
  %cmp270 = icmp ult i8* %incdec.ptr287, %87
  br i1 %cmp270, label %land.rhs272, label %while.cond289.preheader

while.cond289.preheader:                          ; preds = %land.end285, %while.body286
  %88 = phi i8* [ %incdec.ptr287, %while.body286 ], [ %85, %land.end285 ]
  %cmp2901462 = icmp ugt i8* %88, %79
  br i1 %cmp2901462, label %while.body292.lr.ph, label %while.end329

while.body292.lr.ph:                              ; preds = %while.cond289.preheader
  %l299 = getelementptr inbounds %union.upat* %cond7, i32 0, i32 0
  %l305 = getelementptr inbounds %union.upat* %cond7, i32 1, i32 0
  %add.ptr308 = getelementptr inbounds %union.upat* %cond7, i32 2
  %89 = bitcast %union.upat* %add.ptr308 to i8*
  br label %while.body292

while.body292:                                    ; preds = %while.body292.lr.ph, %while.cond289.backedge
  %save.11464 = phi i8* [ %88, %while.body292.lr.ph ], [ %incdec.ptr326, %while.cond289.backedge ]
  %no.11463 = phi i32 [ 0, %while.body292.lr.ph ], [ %98, %while.cond289.backedge ]
  %call293 = call fastcc i32 @patmatch(%union.upat* %cond7)
  %tobool294 = icmp eq i32 %call293, 0
  br i1 %tobool294, label %if.end296, label %return

if.end296:                                        ; preds = %while.body292
  %tobool297 = icmp eq i32 %no.11463, 0
  br i1 %tobool297, label %land.lhs.true298, label %if.end325

land.lhs.true298:                                 ; preds = %if.end296
  %90 = load i32* %l299, align 4, !tbaa !3
  %and300 = and i32 %90, 255
  %cmp301 = icmp eq i32 %and300, 4
  br i1 %cmp301, label %land.lhs.true303, label %if.end325

land.lhs.true303:                                 ; preds = %land.lhs.true298
  %91 = load i32* %l305, align 4, !tbaa !3
  %tobool306 = icmp eq i32 %91, 0
  br i1 %tobool306, label %land.lhs.true321, label %lor.lhs.false307

lor.lhs.false307:                                 ; preds = %land.lhs.true303
  %92 = load i8* %89, align 1, !tbaa !0
  %93 = icmp sgt i8 %92, -1
  br i1 %93, label %cont311, label %ioc_bb310

ioc_bb310:                                        ; preds = %lor.lhs.false307
  %94 = sext i8 %92 to i64
  call void @__ioc_report_conversion(i32 2480, i32 94, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %94, i8 1) nounwind
  br label %cont311

cont311:                                          ; preds = %ioc_bb310, %lor.lhs.false307
  %idxprom312 = zext i8 %92 to i32
  %arrayidx313 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom312
  %95 = load i16* %arrayidx313, align 2, !tbaa !5
  %and319 = and i16 %95, 1
  %tobool320 = icmp eq i16 %and319, 0
  br i1 %tobool320, label %land.lhs.true321, label %if.end325

land.lhs.true321:                                 ; preds = %cont311, %land.lhs.true303
  %96 = load i32* @patglobflags, align 4, !tbaa !2
  %and322 = and i32 %96, 255
  %tobool323 = icmp eq i32 %and322, 0
  br i1 %tobool323, label %return, label %if.end325

if.end325:                                        ; preds = %cont311, %land.lhs.true321, %if.end296, %land.lhs.true298
  %incdec.ptr326 = getelementptr inbounds i8* %save.11464, i32 -1
  store i8* %incdec.ptr326, i8** @patinput, align 4, !tbaa !4
  %97 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %no.11463, i32 1)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb327, label %while.cond289.backedge

while.cond289.backedge:                           ; preds = %if.end325, %ioc_bb327
  %100 = phi i8* [ %incdec.ptr326, %if.end325 ], [ %.pre1616, %ioc_bb327 ]
  %cmp290 = icmp ugt i8* %100, %79
  br i1 %cmp290, label %while.body292, label %while.end329

ioc_bb327:                                        ; preds = %if.end325
  %101 = sext i32 %no.11463 to i64
  call void @__ioc_report_add_overflow(i32 2483, i32 13, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %101, i64 1, i8 13) nounwind
  %.pre1616 = load i8** @patinput, align 4, !tbaa !4
  br label %while.cond289.backedge

while.end329:                                     ; preds = %sw.bb268, %while.cond289.backedge, %while.cond289.preheader
  store i8* %79, i8** @patinput, align 4, !tbaa !4
  br label %if.then1032

sw.bb330:                                         ; preds = %if.end
  %102 = load i32* %l30, align 4, !tbaa !3
  store i32 %102, i32* @patglobflags, align 4, !tbaa !2
  br label %while.cond.outer.loopexit

sw.bb342:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %103 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %and20, i32 128)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb345, label %cont346

ioc_bb345:                                        ; preds = %sw.bb342
  %106 = zext i32 %and20 to i64
  call void @__ioc_report_sub_overflow(i32 2527, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %106, i64 128, i8 13) nounwind
  br label %cont346

cont346:                                          ; preds = %sw.bb342, %ioc_bb345
  %107 = load i8** @patinput, align 4, !tbaa !4
  %call347 = call fastcc i32 @patmatch(%union.upat* %cond7)
  %tobool348 = icmp eq i32 %call347, 0
  br i1 %tobool348, label %return, label %if.then349

if.then349:                                       ; preds = %cont346
  %tobool350 = icmp eq i32 %104, 0
  br i1 %tobool350, label %return, label %land.lhs.true351

land.lhs.true351:                                 ; preds = %if.then349
  %108 = load i32* @parsfound, align 4, !tbaa !2
  %109 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %104, i32 1)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  %112 = sext i32 %104 to i64
  br i1 %111, label %ioc_bb352, label %cont353

ioc_bb352:                                        ; preds = %land.lhs.true351
  call void @__ioc_report_sub_overflow(i32 2534, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %112, i64 1, i8 13) nounwind
  br label %cont353

cont353:                                          ; preds = %land.lhs.true351, %ioc_bb352
  %113 = icmp ult i32 %110, 32
  %114 = sext i32 %110 to i64
  br i1 %113, label %cont355, label %ioc_bb354

ioc_bb354:                                        ; preds = %cont353
  call void @__ioc_report_shl_bitwidth(i32 2534, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %114, i8 13) nounwind
  br label %cont355

cont355:                                          ; preds = %ioc_bb354, %cont353
  %shl.zeros356 = sub nuw nsw i32 31, %110
  %shl.check357 = lshr i32 1, %shl.zeros356
  %115 = icmp eq i32 %shl.check357, 0
  br i1 %115, label %cont359, label %ioc_bb358

ioc_bb358:                                        ; preds = %cont355
  call void @__ioc_report_shl_strict(i32 2534, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %114, i8 13) nounwind
  br label %cont359

cont359:                                          ; preds = %ioc_bb358, %cont355
  %shl360 = shl i32 1, %110
  %and361 = and i32 %shl360, %108
  %tobool362 = icmp eq i32 %and361, 0
  br i1 %tobool362, label %if.then363, label %return

if.then363:                                       ; preds = %cont359
  br i1 %111, label %ioc_bb364, label %cont368.critedge

ioc_bb364:                                        ; preds = %if.then363
  call void @__ioc_report_sub_overflow(i32 2535, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %112, i64 1, i8 13) nounwind
  %arrayidx366 = getelementptr inbounds [9 x i8*]* @patbeginp, i32 0, i32 %110
  store i8* %107, i8** %arrayidx366, align 4, !tbaa !4
  call void @__ioc_report_sub_overflow(i32 2536, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %112, i64 1, i8 13) nounwind
  br label %cont368

cont368.critedge:                                 ; preds = %if.then363
  %arrayidx366.c = getelementptr inbounds [9 x i8*]* @patbeginp, i32 0, i32 %110
  store i8* %107, i8** %arrayidx366.c, align 4, !tbaa !4
  br label %cont368

cont368:                                          ; preds = %cont368.critedge, %ioc_bb364
  br i1 %113, label %cont370, label %ioc_bb369

ioc_bb369:                                        ; preds = %cont368
  call void @__ioc_report_shl_bitwidth(i32 2536, i32 28, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %114, i8 13) nounwind
  br label %cont370

cont370:                                          ; preds = %ioc_bb369, %cont368
  br i1 %115, label %cont374, label %ioc_bb373

ioc_bb373:                                        ; preds = %cont370
  call void @__ioc_report_shl_strict(i32 2536, i32 28, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %114, i8 13) nounwind
  br label %cont374

cont374:                                          ; preds = %cont370, %ioc_bb373
  %116 = load i32* @parsfound, align 4, !tbaa !2
  %or376 = or i32 %116, %shl360
  store i32 %or376, i32* @parsfound, align 4, !tbaa !2
  br label %return

sw.bb388:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %117 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %and20, i32 144)
  %118 = extractvalue { i32, i1 } %117, 0
  %119 = extractvalue { i32, i1 } %117, 1
  br i1 %119, label %ioc_bb391, label %cont392

ioc_bb391:                                        ; preds = %sw.bb388
  %120 = zext i32 %and20 to i64
  call void @__ioc_report_sub_overflow(i32 2573, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %120, i64 144, i8 13) nounwind
  br label %cont392

cont392:                                          ; preds = %sw.bb388, %ioc_bb391
  %121 = load i8** @patinput, align 4, !tbaa !4
  %call393 = call fastcc i32 @patmatch(%union.upat* %cond7)
  %tobool394 = icmp eq i32 %call393, 0
  br i1 %tobool394, label %return, label %if.then395

if.then395:                                       ; preds = %cont392
  %tobool396 = icmp eq i32 %118, 0
  br i1 %tobool396, label %return, label %land.lhs.true397

land.lhs.true397:                                 ; preds = %if.then395
  %122 = load i32* @parsfound, align 4, !tbaa !2
  %123 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %118, i32 15)
  %124 = extractvalue { i32, i1 } %123, 0
  %125 = extractvalue { i32, i1 } %123, 1
  %126 = sext i32 %118 to i64
  br i1 %125, label %ioc_bb398, label %cont399

ioc_bb398:                                        ; preds = %land.lhs.true397
  call void @__ioc_report_add_overflow(i32 2576, i32 43, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %126, i64 15, i8 13) nounwind
  br label %cont399

cont399:                                          ; preds = %land.lhs.true397, %ioc_bb398
  %127 = icmp ult i32 %124, 32
  %128 = sext i32 %124 to i64
  br i1 %127, label %cont401, label %ioc_bb400

ioc_bb400:                                        ; preds = %cont399
  call void @__ioc_report_shl_bitwidth(i32 2576, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %128, i8 13) nounwind
  br label %cont401

cont401:                                          ; preds = %ioc_bb400, %cont399
  %shl.zeros402 = sub nuw nsw i32 31, %124
  %shl.check403 = lshr i32 1, %shl.zeros402
  %129 = icmp eq i32 %shl.check403, 0
  br i1 %129, label %cont405, label %ioc_bb404

ioc_bb404:                                        ; preds = %cont401
  call void @__ioc_report_shl_strict(i32 2576, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %128, i8 13) nounwind
  br label %cont405

cont405:                                          ; preds = %ioc_bb404, %cont401
  %shl406 = shl i32 1, %124
  %and407 = and i32 %shl406, %122
  %tobool408 = icmp eq i32 %and407, 0
  br i1 %tobool408, label %if.then409, label %return

if.then409:                                       ; preds = %cont405
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %118, i32 1)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb410, label %cont411

ioc_bb410:                                        ; preds = %if.then409
  call void @__ioc_report_sub_overflow(i32 2577, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %126, i64 1, i8 13) nounwind
  br label %cont411

cont411:                                          ; preds = %if.then409, %ioc_bb410
  %arrayidx412 = getelementptr inbounds [9 x i8*]* @patendp, i32 0, i32 %131
  store i8* %121, i8** %arrayidx412, align 4, !tbaa !4
  br i1 %125, label %ioc_bb413, label %cont414

ioc_bb413:                                        ; preds = %cont411
  call void @__ioc_report_add_overflow(i32 2578, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %126, i64 15, i8 13) nounwind
  br label %cont414

cont414:                                          ; preds = %cont411, %ioc_bb413
  br i1 %127, label %cont416, label %ioc_bb415

ioc_bb415:                                        ; preds = %cont414
  call void @__ioc_report_shl_bitwidth(i32 2578, i32 28, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %128, i8 13) nounwind
  br label %cont416

cont416:                                          ; preds = %ioc_bb415, %cont414
  br i1 %129, label %cont420, label %ioc_bb419

ioc_bb419:                                        ; preds = %cont416
  call void @__ioc_report_shl_strict(i32 2578, i32 28, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 1, i64 %128, i8 13) nounwind
  br label %cont420

cont420:                                          ; preds = %cont416, %ioc_bb419
  %133 = load i32* @parsfound, align 4, !tbaa !2
  %or422 = or i32 %133, %shl406
  store i32 %or422, i32* @parsfound, align 4, !tbaa !2
  br label %return

sw.bb425:                                         ; preds = %if.end
  %134 = load i8** %p, align 4, !tbaa !4
  %135 = load i8** @patinput, align 4, !tbaa !4
  %136 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %135 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %136 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr428 = getelementptr inbounds i8* %134, i32 %sub.ptr.sub
  %137 = load i8* %add.ptr428, align 1, !tbaa !0
  %tobool430 = icmp eq i8 %137, 0
  br i1 %tobool430, label %if.end438, label %land.lhs.true431

land.lhs.true431:                                 ; preds = %sw.bb425
  %138 = load i32* @errsfound, align 4, !tbaa !2
  %139 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %138, i32 1)
  %140 = extractvalue { i32, i1 } %139, 0
  %141 = extractvalue { i32, i1 } %139, 1
  br i1 %141, label %ioc_bb432, label %cont433

ioc_bb432:                                        ; preds = %land.lhs.true431
  %142 = sext i32 %138 to i64
  call void @__ioc_report_add_overflow(i32 2600, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %142, i64 1, i8 13) nounwind
  %.pre1617 = load i8* %add.ptr428, align 1, !tbaa !0
  br label %cont433

cont433:                                          ; preds = %land.lhs.true431, %ioc_bb432
  %143 = phi i8 [ %137, %land.lhs.true431 ], [ %.pre1617, %ioc_bb432 ]
  %conv434 = zext i8 %143 to i32
  %cmp435 = icmp slt i32 %140, %conv434
  br i1 %cmp435, label %if.end438, label %return

if.end438:                                        ; preds = %cont433, %sw.bb425
  %144 = load i32* @errsfound, align 4, !tbaa !2
  %145 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %144, i32 1)
  %146 = extractvalue { i32, i1 } %145, 0
  %147 = extractvalue { i32, i1 } %145, 1
  br i1 %147, label %ioc_bb439, label %cont440

ioc_bb439:                                        ; preds = %if.end438
  %148 = sext i32 %144 to i64
  call void @__ioc_report_add_overflow(i32 2609, i32 34, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %148, i64 1, i8 13) nounwind
  br label %cont440

cont440:                                          ; preds = %if.end438, %ioc_bb439
  %149 = icmp ult i32 %146, 256
  br i1 %149, label %cont443, label %ioc_bb442

ioc_bb442:                                        ; preds = %cont440
  %150 = sext i32 %146 to i64
  call void @__ioc_report_conversion(i32 2609, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %150, i8 1) nounwind
  br label %cont443

cont443:                                          ; preds = %ioc_bb442, %cont440
  %conv444 = trunc i32 %146 to i8
  store i8 %conv444, i8* %add.ptr428, align 1, !tbaa !0
  br label %while.cond.outer.loopexit

sw.bb445:                                         ; preds = %if.end
  %151 = load i8** @patinput, align 4, !tbaa !4
  %152 = load i8** @patinend, align 4, !tbaa !4
  %cmp446 = icmp ult i8* %151, %152
  %conv447 = zext i1 %cmp446 to i32
  br i1 %cmp446, label %sw.epilog, label %return

sw.bb451:                                         ; preds = %if.end, %if.end
  %l452 = getelementptr inbounds %union.upat* %cond7, i32 0, i32 0
  %153 = load i32* %l452, align 4, !tbaa !3
  %and453 = and i32 %153, 32
  %tobool454 = icmp eq i32 %and453, 0
  br i1 %tobool454, label %while.cond.outer.loopexit, label %do.body.preheader

do.body.preheader:                                ; preds = %sw.bb451
  %.pre1618 = load i8** @patinput, align 4, !tbaa !4
  %.pre1619 = load i32* @patglobflags, align 4, !tbaa !2
  %.pre1620 = load i32* @errsfound, align 4, !tbaa !2
  br label %do.body

do.body:                                          ; preds = %land.rhs722.do.body_crit_edge, %do.body.preheader
  %154 = phi i32 [ %.pre1632, %land.rhs722.do.body_crit_edge ], [ %153, %do.body.preheader ]
  %155 = phi i32 [ %229, %land.rhs722.do.body_crit_edge ], [ %3, %do.body.preheader ]
  %next.0 = phi %union.upat* [ %cond720, %land.rhs722.do.body_crit_edge ], [ %cond7, %do.body.preheader ]
  %scan.1 = phi %union.upat* [ %scan.3, %land.rhs722.do.body_crit_edge ], [ %scan.0.ph1536, %do.body.preheader ]
  %and459 = and i32 %154, 48
  %cmp460 = icmp eq i32 %and459, 48
  br i1 %cmp460, label %if.then462, label %if.else615

if.then462:                                       ; preds = %do.body
  %156 = load i32* @parsfound, align 4, !tbaa !2
  %add.ptr463 = getelementptr inbounds %union.upat* %next.0, i32 1
  %p464 = bitcast %union.upat* %add.ptr463 to i8**
  %157 = load i8** %p464, align 4, !tbaa !4
  %158 = load i8** @patinend, align 4, !tbaa !4
  %159 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast465 = ptrtoint i8* %158 to i32
  %sub.ptr.rhs.cast466 = ptrtoint i8* %159 to i32
  %sub.ptr.sub467 = sub i32 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %160 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub467, i32 1)
  %161 = extractvalue { i32, i1 } %160, 0
  %162 = extractvalue { i32, i1 } %160, 1
  br i1 %162, label %ioc_bb468, label %cont469

ioc_bb468:                                        ; preds = %if.then462
  %163 = sext i32 %sub.ptr.sub467 to i64
  call void @__ioc_report_add_overflow(i32 2686, i32 83, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %163, i64 1, i8 13) nounwind
  br label %cont469

cont469:                                          ; preds = %if.then462, %ioc_bb468
  %164 = icmp sgt i32 %161, -1
  br i1 %164, label %cont472, label %ioc_bb471

ioc_bb471:                                        ; preds = %cont469
  %165 = sext i32 %161 to i64
  call void @__ioc_report_conversion(i32 2686, i32 60, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %165, i8 1) nounwind
  br label %cont472

cont472:                                          ; preds = %ioc_bb471, %cont469
  %call473 = call i8* @zshcalloc(i32 %161) nounwind
  %166 = getelementptr inbounds %union.upat* %add.ptr463, i32 0, i32 0
  %call473.c = ptrtoint i8* %call473 to i32
  store i32 %call473.c, i32* %166, align 4, !tbaa !4
  %167 = load i8** @patinend, align 4, !tbaa !4
  %add.ptr476 = getelementptr inbounds %union.upat* %scan.1, i32 1
  %call4771447 = call fastcc i32 @patmatch(%union.upat* %add.ptr476)
  %tobool4781448 = icmp eq i32 %call4771447, 0
  br i1 %tobool4781448, label %while.end574, label %while.body479.lr.ph

while.body479.lr.ph:                              ; preds = %cont472
  %l496 = getelementptr inbounds %union.upat* %scan.1, i32 0, i32 0
  br label %while.body479

while.body479:                                    ; preds = %while.body479.lr.ph, %if.end573
  %call4771449 = phi i32 [ %call4771447, %while.body479.lr.ph ], [ %call477, %if.end573 ]
  %168 = load i32* @forceerrs, align 4, !tbaa !2
  %169 = load i32* @patflags, align 4, !tbaa !2
  store i32 -1, i32* @forceerrs, align 4, !tbaa !2
  %170 = load i32* @globdots, align 4, !tbaa !2
  %171 = load i32* @errsfound, align 4, !tbaa !2
  %172 = load i8** @patinput, align 4, !tbaa !4
  store i32 1, i32* @globdots, align 4, !tbaa !2
  %173 = load i8** %p464, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %while.body479
  %syncpt.0 = phi i8* [ %173, %while.body479 ], [ %incdec.ptr484, %for.cond ]
  %174 = load i8* %syncpt.0, align 1, !tbaa !0
  %lnot = icmp eq i8 %174, 0
  %incdec.ptr484 = getelementptr inbounds i8* %syncpt.0, i32 1
  br i1 %lnot, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast486 = ptrtoint i8* %syncpt.0 to i32
  %sub.ptr.rhs.cast487 = ptrtoint i8* %173 to i32
  %sub.ptr.sub488 = sub i32 %sub.ptr.lhs.cast486, %sub.ptr.rhs.cast487
  %175 = load i8** @patinstart, align 4, !tbaa !4
  %add.ptr489 = getelementptr inbounds i8* %175, i32 %sub.ptr.sub488
  %176 = load i8** @patinend, align 4, !tbaa !4
  %cmp490 = icmp eq i8* %add.ptr489, %176
  br i1 %cmp490, label %if.end495, label %if.then492

if.then492:                                       ; preds = %for.end
  store i8* %add.ptr489, i8** @patinend, align 4, !tbaa !4
  %or494 = or i32 %169, 1024
  store i32 %or494, i32* @patflags, align 4, !tbaa !2
  br label %if.end495

if.end495:                                        ; preds = %for.end, %if.then492
  %177 = load i32* %l496, align 4, !tbaa !3
  %shr499 = ashr i32 %177, 8
  %tobool500 = icmp eq i32 %shr499, 0
  br i1 %tobool500, label %while.end570, label %while.cond516.preheader

while.cond516.preheader:                          ; preds = %if.end495
  %and503 = and i32 %177, 255
  %cmp504 = icmp eq i32 %and503, 3
  %idx.neg507 = sub i32 0, %shr499
  %idx.neg507.sink = select i1 %cmp504, i32 %idx.neg507, i32 %shr499
  %add.ptr508 = getelementptr inbounds %union.upat* %scan.1, i32 %idx.neg507.sink
  %tobool5171444 = icmp eq %union.upat* %add.ptr508, null
  br i1 %tobool5171444, label %while.end570, label %land.rhs518

land.rhs518:                                      ; preds = %while.cond516.preheader, %while.cond516.backedge
  %next.11446 = phi %union.upat* [ %add.ptr562, %while.cond516.backedge ], [ %add.ptr508, %while.cond516.preheader ]
  %ret.01445 = phi i32 [ %ret.1, %while.cond516.backedge ], [ %call4771449, %while.cond516.preheader ]
  %l519 = getelementptr inbounds %union.upat* %next.11446, i32 0, i32 0
  %178 = load i32* %l519, align 4, !tbaa !3
  %and520 = and i32 %178, 48
  %cmp521 = icmp eq i32 %and520, 48
  br i1 %cmp521, label %while.body524, label %while.end570

while.body524:                                    ; preds = %land.rhs518
  store i8* %.pre1618, i8** @patinput, align 4, !tbaa !4
  %179 = load i32* @patglobflags, align 4, !tbaa !2
  %and525 = and i32 %179, -256
  store i32 %and525, i32* @patglobflags, align 4, !tbaa !2
  store i32 0, i32* @errsfound, align 4, !tbaa !2
  %add.ptr527 = getelementptr inbounds %union.upat* %next.11446, i32 2
  %and529 = and i32 %178, 255
  %cmp530 = icmp eq i32 %and529, 49
  %180 = load i8** @patinpath, align 4, !tbaa !4
  %tobool533 = icmp ne i8* %180, null
  %or.cond = and i1 %cmp530, %tobool533
  br i1 %or.cond, label %if.then534, label %if.end535

if.then534:                                       ; preds = %while.body524
  store i8* %180, i8** @patinstart, align 4, !tbaa !4
  store i8* %180, i8** @patinput, align 4, !tbaa !4
  br label %if.end535

if.end535:                                        ; preds = %if.then534, %while.body524
  %call536 = call fastcc i32 @patmatch(%union.upat* %add.ptr527)
  %tobool537 = icmp eq i32 %call536, 0
  br i1 %tobool537, label %if.end539, label %if.then538

if.then538:                                       ; preds = %if.end535
  store i32 %156, i32* @parsfound, align 4, !tbaa !2
  br label %if.end539

if.end539:                                        ; preds = %if.end535, %if.then538
  %ret.1 = phi i32 [ 0, %if.then538 ], [ %ret.01445, %if.end535 ]
  %181 = load i8** @patinpath, align 4, !tbaa !4
  %tobool540 = icmp eq i8* %181, null
  br i1 %tobool540, label %if.end546, label %if.then541

if.then541:                                       ; preds = %if.end539
  %182 = load i8** @patinput, align 4, !tbaa !4
  %183 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast542 = ptrtoint i8* %182 to i32
  %sub.ptr.rhs.cast543 = ptrtoint i8* %183 to i32
  %sub.ptr.sub544 = sub i32 %sub.ptr.lhs.cast542, %sub.ptr.rhs.cast543
  %add.ptr545 = getelementptr inbounds i8* %175, i32 %sub.ptr.sub544
  store i8* %add.ptr545, i8** @patinput, align 4, !tbaa !4
  store i8* %175, i8** @patinstart, align 4, !tbaa !4
  br label %if.end546

if.end546:                                        ; preds = %if.end539, %if.then541
  %tobool547 = icmp eq i32 %ret.1, 0
  br i1 %tobool547, label %while.end570.thread, label %cont552

while.end570.thread:                              ; preds = %if.end546
  store i8* %167, i8** @patinend, align 4, !tbaa !4
  store i32 %169, i32* @patflags, align 4, !tbaa !2
  store i32 %170, i32* @globdots, align 4, !tbaa !2
  store i32 %168, i32* @forceerrs, align 4, !tbaa !2
  br label %if.end573

cont552:                                          ; preds = %if.end546
  %184 = load i32* %l519, align 4, !tbaa !3
  %shr553 = ashr i32 %184, 8
  %tobool554 = icmp eq i32 %shr553, 0
  br i1 %tobool554, label %while.end570, label %while.cond516.backedge

while.cond516.backedge:                           ; preds = %cont552
  %and557 = and i32 %184, 255
  %cmp558 = icmp eq i32 %and557, 3
  %idx.neg561 = sub i32 0, %shr553
  %idx.neg561.sink = select i1 %cmp558, i32 %idx.neg561, i32 %shr553
  %add.ptr562 = getelementptr inbounds %union.upat* %next.11446, i32 %idx.neg561.sink
  %tobool517 = icmp eq %union.upat* %add.ptr562, null
  br i1 %tobool517, label %while.end570, label %land.rhs518

while.end570:                                     ; preds = %cont552, %if.end495, %while.cond516.backedge, %land.rhs518, %while.cond516.preheader
  %ret.0.lcssa = phi i32 [ %call4771449, %while.cond516.preheader ], [ %ret.01445, %land.rhs518 ], [ %ret.1, %while.cond516.backedge ], [ %call4771449, %if.end495 ], [ %ret.1, %cont552 ]
  store i8* %167, i8** @patinend, align 4, !tbaa !4
  store i32 %169, i32* @patflags, align 4, !tbaa !2
  store i32 %170, i32* @globdots, align 4, !tbaa !2
  store i32 %168, i32* @forceerrs, align 4, !tbaa !2
  %tobool571 = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool571, label %if.end573, label %while.end574

if.end573:                                        ; preds = %while.end570.thread, %while.end570
  store i8* %.pre1618, i8** @patinput, align 4, !tbaa !4
  store i32 %.pre1619, i32* @patglobflags, align 4, !tbaa !2
  store i32 %.pre1620, i32* @errsfound, align 4, !tbaa !2
  %call477 = call fastcc i32 @patmatch(%union.upat* %add.ptr476)
  %tobool478 = icmp eq i32 %call477, 0
  br i1 %tobool478, label %while.end574, label %while.body479

while.end574:                                     ; preds = %if.end573, %while.end570, %cont472
  %matchederrs.1 = phi i32 [ 0, %cont472 ], [ %171, %while.end570 ], [ %171, %if.end573 ]
  %ret.3 = phi i32 [ 0, %cont472 ], [ %ret.0.lcssa, %while.end570 ], [ 0, %if.end573 ]
  %matchpt.1 = phi i8* [ null, %cont472 ], [ %172, %while.end570 ], [ %172, %if.end573 ]
  %185 = load i8** %p464, align 4, !tbaa !4
  %186 = load i8** @patinend, align 4, !tbaa !4
  %187 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast576 = ptrtoint i8* %186 to i32
  %sub.ptr.rhs.cast577 = ptrtoint i8* %187 to i32
  %sub.ptr.sub578 = sub i32 %sub.ptr.lhs.cast576, %sub.ptr.rhs.cast577
  %188 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub578, i32 1)
  %189 = extractvalue { i32, i1 } %188, 0
  %190 = extractvalue { i32, i1 } %188, 1
  br i1 %190, label %ioc_bb579, label %cont580

ioc_bb579:                                        ; preds = %while.end574
  %191 = sext i32 %sub.ptr.sub578 to i64
  call void @__ioc_report_add_overflow(i32 2780, i32 69, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %191, i64 1, i8 13) nounwind
  br label %cont580

cont580:                                          ; preds = %while.end574, %ioc_bb579
  call void @zfree(i8* %185, i32 %189) nounwind
  %.c1405 = ptrtoint i8* %157 to i32
  store i32 %.c1405, i32* %166, align 4, !tbaa !4
  %tobool582 = icmp eq i32 %ret.3, 0
  br i1 %tobool582, label %while.cond585.preheader, label %if.then583

while.cond585.preheader:                          ; preds = %cont580
  %l586.phi.trans.insert = getelementptr inbounds %union.upat* %scan.1, i32 0, i32 0
  %.pre1621 = load i32* %l586.phi.trans.insert, align 4, !tbaa !3
  br label %while.cond585

if.then583:                                       ; preds = %cont580
  store i8* %matchpt.1, i8** @patinput, align 4, !tbaa !4
  store i32 %matchederrs.1, i32* @errsfound, align 4, !tbaa !2
  br label %return

while.cond585:                                    ; preds = %while.cond585.preheader, %land.rhs607
  %192 = phi i32 [ %193, %land.rhs607 ], [ %.pre1621, %while.cond585.preheader ]
  %scan.2 = phi %union.upat* [ %add.ptr598, %land.rhs607 ], [ %scan.1, %while.cond585.preheader ]
  %shr589 = ashr i32 %192, 8
  %tobool590 = icmp eq i32 %shr589, 0
  br i1 %tobool590, label %if.end700, label %cond.end604

cond.end604:                                      ; preds = %while.cond585
  %and593 = and i32 %192, 255
  %cmp594 = icmp eq i32 %and593, 3
  %idx.neg597 = sub i32 0, %shr589
  %idx.neg597.sink = select i1 %cmp594, i32 %idx.neg597, i32 %shr589
  %add.ptr598 = getelementptr inbounds %union.upat* %scan.2, i32 %idx.neg597.sink
  %tobool606 = icmp eq %union.upat* %add.ptr598, null
  br i1 %tobool606, label %if.end700, label %land.rhs607

land.rhs607:                                      ; preds = %cond.end604
  %l608 = getelementptr inbounds %union.upat* %add.ptr598, i32 0, i32 0
  %193 = load i32* %l608, align 4, !tbaa !3
  %and609 = and i32 %193, 48
  %cmp610 = icmp eq i32 %and609, 48
  br i1 %cmp610, label %while.cond585, label %if.end700

if.else615:                                       ; preds = %do.body
  %l617 = getelementptr inbounds %union.upat* %scan.1, i32 0, i32 0
  %and618 = and i32 %155, 255
  %cmp619 = icmp eq i32 %and618, 33
  %add.ptr622 = getelementptr inbounds %union.upat* %scan.1, i32 1
  br i1 %cmp619, label %if.then621, label %if.then664

if.then621:                                       ; preds = %if.else615
  %incdec.ptr623 = getelementptr inbounds %union.upat* %scan.1, i32 2
  %p624 = bitcast %union.upat* %add.ptr622 to i8**
  %194 = load i8** %p624, align 4, !tbaa !4
  %tobool625 = icmp eq i8* %194, null
  br i1 %tobool625, label %if.then626, label %if.end637

if.then626:                                       ; preds = %if.then621
  %195 = load i8** @patinend, align 4, !tbaa !4
  %196 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast627 = ptrtoint i8* %195 to i32
  %sub.ptr.rhs.cast628 = ptrtoint i8* %196 to i32
  %sub.ptr.sub629 = sub i32 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628
  %197 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub629, i32 1)
  %198 = extractvalue { i32, i1 } %197, 0
  %199 = extractvalue { i32, i1 } %197, 1
  br i1 %199, label %ioc_bb630, label %cont631

ioc_bb630:                                        ; preds = %if.then626
  %200 = sext i32 %sub.ptr.sub629 to i64
  call void @__ioc_report_add_overflow(i32 2814, i32 83, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %200, i64 1, i8 13) nounwind
  br label %cont631

cont631:                                          ; preds = %if.then626, %ioc_bb630
  %201 = icmp sgt i32 %198, -1
  br i1 %201, label %cont634, label %ioc_bb633

ioc_bb633:                                        ; preds = %cont631
  %202 = sext i32 %198 to i64
  call void @__ioc_report_conversion(i32 2814, i32 60, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %202, i8 1) nounwind
  br label %cont634

cont634:                                          ; preds = %ioc_bb633, %cont631
  %call635 = call i8* @zshcalloc(i32 %198) nounwind
  %203 = getelementptr inbounds %union.upat* %add.ptr622, i32 0, i32 0
  %call635.c = ptrtoint i8* %call635 to i32
  store i32 %call635.c, i32* %203, align 4, !tbaa !4
  %.pre1622 = load i8** @patinput, align 4, !tbaa !4
  br label %if.end637

if.end637:                                        ; preds = %if.then621, %cont634
  %204 = phi i8* [ %.pre1622, %cont634 ], [ %.pre1618, %if.then621 ]
  %205 = phi i8* [ %call635, %cont634 ], [ %194, %if.then621 ]
  %pfree.0 = phi i32 [ 1, %cont634 ], [ 0, %if.then621 ]
  %206 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast639 = ptrtoint i8* %204 to i32
  %sub.ptr.rhs.cast640 = ptrtoint i8* %206 to i32
  %sub.ptr.sub641 = sub i32 %sub.ptr.lhs.cast639, %sub.ptr.rhs.cast640
  %add.ptr642 = getelementptr inbounds i8* %205, i32 %sub.ptr.sub641
  %207 = load i8* %add.ptr642, align 1, !tbaa !0
  %tobool644 = icmp eq i8 %207, 0
  br i1 %tobool644, label %if.end652, label %land.lhs.true645

land.lhs.true645:                                 ; preds = %if.end637
  %208 = load i32* @errsfound, align 4, !tbaa !2
  %209 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %208, i32 1)
  %210 = extractvalue { i32, i1 } %209, 0
  %211 = extractvalue { i32, i1 } %209, 1
  br i1 %211, label %ioc_bb646, label %cont647

ioc_bb646:                                        ; preds = %land.lhs.true645
  %212 = sext i32 %208 to i64
  call void @__ioc_report_add_overflow(i32 2829, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %212, i64 1, i8 13) nounwind
  %.pre1623 = load i8* %add.ptr642, align 1, !tbaa !0
  br label %cont647

cont647:                                          ; preds = %land.lhs.true645, %ioc_bb646
  %213 = phi i8 [ %207, %land.lhs.true645 ], [ %.pre1623, %ioc_bb646 ]
  %conv648 = zext i8 %213 to i32
  %cmp649 = icmp slt i32 %210, %conv648
  %. = zext i1 %cmp649 to i32
  br label %if.end652

if.end652:                                        ; preds = %if.end637, %cont647
  %ret616.0 = phi i32 [ %., %cont647 ], [ 1, %if.end637 ]
  %214 = load i32* @errsfound, align 4, !tbaa !2
  %215 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %214, i32 1)
  %216 = extractvalue { i32, i1 } %215, 0
  %217 = extractvalue { i32, i1 } %215, 1
  br i1 %217, label %ioc_bb653, label %cont654

ioc_bb653:                                        ; preds = %if.end652
  %218 = sext i32 %214 to i64
  call void @__ioc_report_add_overflow(i32 2831, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %218, i64 1, i8 13) nounwind
  br label %cont654

cont654:                                          ; preds = %if.end652, %ioc_bb653
  %219 = icmp ult i32 %216, 256
  br i1 %219, label %if.end662, label %ioc_bb657

ioc_bb657:                                        ; preds = %cont654
  %220 = sext i32 %216 to i64
  call void @__ioc_report_conversion(i32 2831, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %220, i8 1) nounwind
  br label %if.end662

if.end662:                                        ; preds = %cont654, %ioc_bb657
  %conv659 = trunc i32 %216 to i8
  store i8 %conv659, i8* %add.ptr642, align 1, !tbaa !0
  %tobool663 = icmp eq i32 %ret616.0, 0
  br i1 %tobool663, label %if.end666, label %if.then664

if.then664:                                       ; preds = %if.else615, %if.end662
  %opnd.01435 = phi %union.upat* [ %incdec.ptr623, %if.end662 ], [ %add.ptr622, %if.else615 ]
  %ptrp.01433 = phi i8** [ %p624, %if.end662 ], [ null, %if.else615 ]
  %pfree.11431 = phi i32 [ %pfree.0, %if.end662 ], [ 0, %if.else615 ]
  %call665 = call fastcc i32 @patmatch(%union.upat* %opnd.01435)
  br label %if.end666

if.end666:                                        ; preds = %if.end662, %if.then664
  %ptrp.01434 = phi i8** [ %ptrp.01433, %if.then664 ], [ %p624, %if.end662 ]
  %pfree.11432 = phi i32 [ %pfree.11431, %if.then664 ], [ %pfree.0, %if.end662 ]
  %ret616.2 = phi i32 [ %call665, %if.then664 ], [ 0, %if.end662 ]
  %tobool667 = icmp eq i32 %pfree.11432, 0
  br i1 %tobool667, label %if.end676, label %if.then668

if.then668:                                       ; preds = %if.end666
  %221 = load i8** %ptrp.01434, align 4, !tbaa !4
  %222 = load i8** @patinend, align 4, !tbaa !4
  %223 = load i8** @patinstart, align 4, !tbaa !4
  %sub.ptr.lhs.cast670 = ptrtoint i8* %222 to i32
  %sub.ptr.rhs.cast671 = ptrtoint i8* %223 to i32
  %sub.ptr.sub672 = sub i32 %sub.ptr.lhs.cast670, %sub.ptr.rhs.cast671
  %224 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub672, i32 1)
  %225 = extractvalue { i32, i1 } %224, 0
  %226 = extractvalue { i32, i1 } %224, 1
  br i1 %226, label %ioc_bb673, label %cont674

ioc_bb673:                                        ; preds = %if.then668
  %227 = sext i32 %sub.ptr.sub672 to i64
  call void @__ioc_report_add_overflow(i32 2838, i32 67, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %227, i64 1, i8 13) nounwind
  br label %cont674

cont674:                                          ; preds = %if.then668, %ioc_bb673
  call void @zfree(i8* %221, i32 %225) nounwind
  store i8* null, i8** %ptrp.01434, align 4, !tbaa !4
  br label %if.end676

if.end676:                                        ; preds = %if.end666, %cont674
  %tobool677 = icmp eq i32 %ret616.2, 0
  br i1 %tobool677, label %cont682, label %return

cont682:                                          ; preds = %if.end676
  %228 = load i32* %l617, align 4, !tbaa !3
  %shr683 = ashr i32 %228, 8
  %tobool684 = icmp eq i32 %shr683, 0
  br i1 %tobool684, label %if.end700, label %cond.true685

cond.true685:                                     ; preds = %cont682
  %and687 = and i32 %228, 255
  %cmp688 = icmp eq i32 %and687, 3
  %idx.neg691 = sub i32 0, %shr683
  %idx.neg691.sink = select i1 %cmp688, i32 %idx.neg691, i32 %shr683
  %add.ptr692 = getelementptr inbounds %union.upat* %scan.1, i32 %idx.neg691.sink
  br label %if.end700

if.end700:                                        ; preds = %while.cond585, %cond.end604, %land.rhs607, %cond.true685, %cont682
  %scan.3 = phi %union.upat* [ %add.ptr692, %cond.true685 ], [ null, %cont682 ], [ null, %while.cond585 ], [ null, %cond.end604 ], [ %add.ptr598, %land.rhs607 ]
  store i8* %.pre1618, i8** @patinput, align 4, !tbaa !4
  store i32 %.pre1619, i32* @patglobflags, align 4, !tbaa !2
  store i32 %.pre1620, i32* @errsfound, align 4, !tbaa !2
  %l701 = getelementptr inbounds %union.upat* %scan.3, i32 0, i32 0
  %229 = load i32* %l701, align 4, !tbaa !3
  %shr704 = ashr i32 %229, 8
  %tobool705 = icmp eq i32 %shr704, 0
  br i1 %tobool705, label %cond.end719, label %cond.true706

cond.true706:                                     ; preds = %if.end700
  %and708 = and i32 %229, 255
  %cmp709 = icmp eq i32 %and708, 3
  %idx.neg712 = sub i32 0, %shr704
  %idx.neg712.sink = select i1 %cmp709, i32 %idx.neg712, i32 %shr704
  %add.ptr713 = getelementptr inbounds %union.upat* %scan.3, i32 %idx.neg712.sink
  br label %cond.end719

cond.end719:                                      ; preds = %if.end700, %cond.true706
  %cond720 = phi %union.upat* [ %add.ptr713, %cond.true706 ], [ null, %if.end700 ]
  %tobool721 = icmp eq %union.upat* %scan.3, null
  br i1 %tobool721, label %return, label %land.rhs722

land.rhs722:                                      ; preds = %cond.end719
  %and724 = and i32 %229, 32
  %tobool725 = icmp eq i32 %and724, 0
  br i1 %tobool725, label %return, label %land.rhs722.do.body_crit_edge

land.rhs722.do.body_crit_edge:                    ; preds = %land.rhs722
  %l458.phi.trans.insert = getelementptr inbounds %union.upat* %cond720, i32 0, i32 0
  %.pre1632 = load i32* %l458.phi.trans.insert, align 4, !tbaa !3
  br label %do.body

sw.bb730:                                         ; preds = %if.end, %if.end, %if.end
  %230 = load i8** @patinput, align 4, !tbaa !4
  %231 = load i8** @patinend, align 4, !tbaa !4
  %sub.ptr.lhs.cast733 = ptrtoint i8* %231 to i32
  %sub.ptr.rhs.cast734 = ptrtoint i8* %230 to i32
  %sub.ptr.sub735 = sub i32 %sub.ptr.lhs.cast733, %sub.ptr.rhs.cast734
  %232 = call i8* @llvm.stacksave()
  %vla = alloca i8, i32 %sub.ptr.sub735, align 1
  %233 = load i8** @patinend, align 4, !tbaa !4
  %234 = load i8** @patinput, align 4, !tbaa !4
  %sub.ptr.lhs.cast736 = ptrtoint i8* %233 to i32
  %sub.ptr.rhs.cast737 = ptrtoint i8* %234 to i32
  %sub.ptr.sub738 = sub i32 %sub.ptr.lhs.cast736, %sub.ptr.rhs.cast737
  %235 = icmp sgt i32 %sub.ptr.sub738, -1
  br i1 %235, label %cont741, label %ioc_bb740

ioc_bb740:                                        ; preds = %sw.bb730
  %236 = sext i32 %sub.ptr.sub738 to i64
  call void @__ioc_report_conversion(i32 2880, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %236, i8 1) nounwind
  br label %cont741

cont741:                                          ; preds = %ioc_bb740, %sw.bb730
  call void @llvm.memset.p0i8.i32(i8* %vla, i8 0, i32 %sub.ptr.sub738, i32 1, i1 false)
  %cmp742 = icmp eq i32 %and20, 67
  br i1 %cmp742, label %for.cond745.preheader, label %if.else766

for.cond745.preheader:                            ; preds = %cont741
  %237 = load i8** @patinput, align 4, !tbaa !4
  %238 = load i8** @patinend, align 4, !tbaa !4
  %cmp7461456 = icmp ult i8* %237, %238
  br i1 %cmp7461456, label %cont750, label %for.end759

cont750:                                          ; preds = %for.cond745.preheader, %cont756
  %239 = phi i8* [ %247, %cont756 ], [ %238, %for.cond745.preheader ]
  %240 = phi i8* [ %call758, %cont756 ], [ %237, %for.cond745.preheader ]
  %no.21457 = phi i32 [ %242, %cont756 ], [ 0, %for.cond745.preheader ]
  %sub.ptr.lhs.cast751 = ptrtoint i8* %240 to i32
  %sub.ptr.sub753 = sub i32 %sub.ptr.lhs.cast751, %sub.ptr.rhs.cast734
  %arrayidx754 = getelementptr inbounds i8* %vla, i32 %sub.ptr.sub753
  store i8 1, i8* %arrayidx754, align 1, !tbaa !0
  %241 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %no.21457, i32 1)
  %242 = extractvalue { i32, i1 } %241, 0
  %243 = extractvalue { i32, i1 } %241, 1
  br i1 %243, label %ioc_bb755, label %cont756

ioc_bb755:                                        ; preds = %cont750
  %244 = sext i32 %no.21457 to i64
  call void @__ioc_report_add_overflow(i32 2884, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %244, i64 1, i8 13) nounwind
  %.pre1626 = load i8** @patinput, align 4, !tbaa !4
  %.pre1627 = load i8** @patinend, align 4, !tbaa !4
  br label %cont756

cont756:                                          ; preds = %cont750, %ioc_bb755
  %245 = phi i8* [ %239, %cont750 ], [ %.pre1627, %ioc_bb755 ]
  %246 = phi i8* [ %240, %cont750 ], [ %.pre1626, %ioc_bb755 ]
  %call758 = call fastcc i8* @charnext(i8* %246, i8* %245)
  store i8* %call758, i8** @patinput, align 4, !tbaa !4
  %247 = load i8** @patinend, align 4, !tbaa !4
  %cmp746 = icmp ult i8* %call758, %247
  br i1 %cmp746, label %cont750, label %for.end759

for.end759:                                       ; preds = %cont756, %for.cond745.preheader
  %248 = phi i8* [ %237, %for.cond745.preheader ], [ %call758, %cont756 ]
  %no.2.lcssa = phi i32 [ 0, %for.cond745.preheader ], [ %242, %cont756 ]
  %l760 = getelementptr inbounds %union.upat* %cond7, i32 0, i32 0
  %249 = load i32* %l760, align 4, !tbaa !3
  %and761 = and i32 %249, 255
  %cmp762 = icmp eq i32 %and761, 0
  br i1 %cmp762, label %cleanup.thread, label %if.end787

if.else766:                                       ; preds = %cont741
  %250 = load i32* @globdots, align 4, !tbaa !2
  %tobool767 = icmp eq i32 %250, 0
  br i1 %tobool767, label %land.lhs.true768, label %if.end784

land.lhs.true768:                                 ; preds = %if.else766
  %251 = load i32* %l30, align 4, !tbaa !3
  %and771 = and i32 %251, 64
  %tobool772 = icmp eq i32 %and771, 0
  br i1 %tobool772, label %if.end784, label %land.lhs.true773

land.lhs.true773:                                 ; preds = %land.lhs.true768
  %252 = load i8** @patinput, align 4, !tbaa !4
  %253 = load i8** @patinstart, align 4, !tbaa !4
  %cmp774 = icmp eq i8* %252, %253
  br i1 %cmp774, label %land.lhs.true776, label %if.end784

land.lhs.true776:                                 ; preds = %land.lhs.true773
  %254 = load i8** @patinend, align 4, !tbaa !4
  %cmp777 = icmp ult i8* %252, %254
  br i1 %cmp777, label %land.lhs.true779, label %if.end784

land.lhs.true779:                                 ; preds = %land.lhs.true776
  %call780 = call fastcc i32 @charref(i8* %252, i8* %254)
  %cmp781 = icmp eq i32 %call780, 46
  br i1 %cmp781, label %cleanup.thread, label %if.end784

if.end784:                                        ; preds = %land.lhs.true779, %land.lhs.true768, %if.else766, %land.lhs.true776, %land.lhs.true773
  %255 = load i8** @patinput, align 4, !tbaa !4
  %256 = load i32* %l30, align 4, !tbaa !3
  %and.i = and i32 %256, 255
  switch i32 %and.i, label %patrepeat.exit [
    i32 4, label %sw.bb.i
    i32 65, label %while.cond49.preheader.i
    i32 66, label %while.cond49.preheader.i
  ]

while.cond49.preheader.i:                         ; preds = %if.end784, %if.end784
  %257 = load i8** @patinend, align 4, !tbaa !4
  %cmp50115.i = icmp ult i8* %255, %257
  br i1 %cmp50115.i, label %while.body52.i, label %patrepeat.exit

sw.bb.i:                                          ; preds = %if.end784
  %258 = load i32* %l3.i, align 4, !tbaa !3
  %add.ptr4.i = getelementptr inbounds i8* %2, i32 %258
  %call.i = call fastcc i32 @charref(i8* %2, i8* %add.ptr4.i) nounwind
  %259 = icmp sgt i32 %call.i, -1
  br i1 %259, label %while.cond.preheader.i, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %sw.bb.i
  %260 = sext i32 %call.i to i64
  call void @__ioc_report_conversion(i32 3653, i32 13, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %260, i8 1) nounwind
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %ioc_bb.i, %sw.bb.i
  %261 = load i8** @patinend, align 4, !tbaa !4
  %cmp108.i = icmp ult i8* %255, %261
  br i1 %cmp108.i, label %land.rhs.i, label %patrepeat.exit

land.rhs.i:                                       ; preds = %while.cond.preheader.i, %cont45.i
  %262 = phi i8* [ %272, %cont45.i ], [ %261, %while.cond.preheader.i ]
  %count.0111.i = phi i32 [ %268, %cont45.i ], [ 0, %while.cond.preheader.i ]
  %scan.0109.i = phi i8* [ %call46.i, %cont45.i ], [ %255, %while.cond.preheader.i ]
  %call5.i = call fastcc i32 @charref(i8* %scan.0109.i, i8* %262) nounwind
  %263 = icmp sgt i32 %call5.i, -1
  br i1 %263, label %cont8.i, label %ioc_bb7.i

ioc_bb7.i:                                        ; preds = %land.rhs.i
  %264 = sext i32 %call5.i to i64
  call void @__ioc_report_conversion(i32 3654, i32 52, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %264, i8 1) nounwind
  br label %cont8.i

cont8.i:                                          ; preds = %ioc_bb7.i, %land.rhs.i
  %cmp9.i = icmp eq i32 %call5.i, %call.i
  br i1 %cmp9.i, label %cont42.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %cont8.i
  %265 = load i32* @patglobflags, align 4, !tbaa !2
  %and10.i = and i32 %265, 512
  %tobool.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.i, label %cond.false23.i, label %cond.true.i

cond.true.i:                                      ; preds = %lor.rhs.i
  %call11.i = call i32 @iswupper(i32 %call5.i) nounwind
  %tobool12.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.i, label %cond.end.i, label %cond.true13.i

cond.true13.i:                                    ; preds = %cond.true.i
  %call14.i = call i32 @towlower(i32 %call5.i) nounwind
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true13.i, %cond.true.i
  %cond.i = phi i32 [ %call14.i, %cond.true13.i ], [ %call5.i, %cond.true.i ]
  %call15.i = call i32 @iswupper(i32 %call.i) nounwind
  %tobool16.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.i, label %cond.end20.i, label %cond.true17.i

cond.true17.i:                                    ; preds = %cond.end.i
  %call18.i = call i32 @towlower(i32 %call.i) nounwind
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.true17.i, %cond.end.i
  %cond21.i = phi i32 [ %call18.i, %cond.true17.i ], [ %call.i, %cond.end.i ]
  %cmp22.i = icmp eq i32 %cond.i, %cond21.i
  br i1 %cmp22.i, label %cont42.i, label %patrepeat.exit

cond.false23.i:                                   ; preds = %lor.rhs.i
  %and24.i = and i32 %265, 256
  %tobool25.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.i, label %patrepeat.exit, label %cond.true26.i

cond.true26.i:                                    ; preds = %cond.false23.i
  %call27.i = call i32 @iswlower(i32 %call.i) nounwind
  %tobool28.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.i, label %patrepeat.exit, label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true26.i
  %call30.i = call i32 @towupper(i32 %call.i) nounwind
  %cmp31.i = icmp eq i32 %call30.i, %call5.i
  br i1 %cmp31.i, label %cont42.i, label %patrepeat.exit

cont42.i:                                         ; preds = %cond.end36.i, %cond.end20.i, %cont8.i
  %266 = load i8** @patinput, align 4, !tbaa !4
  %sub.ptr.lhs.cast.i = ptrtoint i8* %scan.0109.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint i8* %266 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %arrayidx43.i = getelementptr inbounds i8* %vla, i32 %sub.ptr.sub.i
  store i8 1, i8* %arrayidx43.i, align 1, !tbaa !0
  %267 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.0111.i, i32 1) nounwind
  %268 = extractvalue { i32, i1 } %267, 0
  %269 = extractvalue { i32, i1 } %267, 1
  br i1 %269, label %ioc_bb44.i, label %cont45.i

ioc_bb44.i:                                       ; preds = %cont42.i
  %270 = sext i32 %count.0111.i to i64
  call void @__ioc_report_add_overflow(i32 3656, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %270, i64 1, i8 13) nounwind
  br label %cont45.i

cont45.i:                                         ; preds = %ioc_bb44.i, %cont42.i
  %271 = load i8** @patinend, align 4, !tbaa !4
  %call46.i = call fastcc i8* @charnext(i8* %scan.0109.i, i8* %271) nounwind
  %272 = load i8** @patinend, align 4, !tbaa !4
  %cmp.i = icmp ult i8* %call46.i, %272
  br i1 %cmp.i, label %land.rhs.i, label %patrepeat.exit

while.body52.i:                                   ; preds = %while.cond49.preheader.i, %cont80.i
  %273 = phi i8* [ %283, %cont80.i ], [ %257, %while.cond49.preheader.i ]
  %count.1117.i = phi i32 [ %279, %cont80.i ], [ 0, %while.cond49.preheader.i ]
  %scan.1116.i = phi i8* [ %call81.i, %cont80.i ], [ %255, %while.cond49.preheader.i ]
  %call53.i = call fastcc i32 @charref(i8* %scan.1116.i, i8* %273) nounwind
  %274 = load i32* @patglobflags, align 4, !tbaa !2
  %and54.i = and i32 %274, 4096
  %tobool55.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body52.i
  %call56.i = call i32 @mb_patmatchrange(i8* %0, i32 %call53.i, i32* null, i32* null) nounwind
  %275 = load i32* %l30, align 4, !tbaa !3
  %and58.i = and i32 %275, 255
  %cmp59.i = icmp eq i32 %and58.i, 65
  %conv60.i = zext i1 %cmp59.i to i32
  %tobool61.i = icmp eq i32 %call56.i, %conv60.i
  br i1 %tobool61.i, label %cont74.i, label %patrepeat.exit

if.else.i:                                        ; preds = %while.body52.i
  %call63.i = call i32 @patmatchrange(i8* %0, i32 %call53.i, i32* null, i32* null) nounwind
  %276 = load i32* %l30, align 4, !tbaa !3
  %and65.i = and i32 %276, 255
  %cmp66.i = icmp eq i32 %and65.i, 65
  %conv67.i = zext i1 %cmp66.i to i32
  %tobool69.i = icmp eq i32 %call63.i, %conv67.i
  br i1 %tobool69.i, label %cont74.i, label %patrepeat.exit

cont74.i:                                         ; preds = %if.else.i, %if.then.i
  %277 = load i8** @patinput, align 4, !tbaa !4
  %sub.ptr.lhs.cast75.i = ptrtoint i8* %scan.1116.i to i32
  %sub.ptr.rhs.cast76.i = ptrtoint i8* %277 to i32
  %sub.ptr.sub77.i = sub i32 %sub.ptr.lhs.cast75.i, %sub.ptr.rhs.cast76.i
  %arrayidx78.i = getelementptr inbounds i8* %vla, i32 %sub.ptr.sub77.i
  store i8 1, i8* %arrayidx78.i, align 1, !tbaa !0
  %278 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %count.1117.i, i32 1) nounwind
  %279 = extractvalue { i32, i1 } %278, 0
  %280 = extractvalue { i32, i1 } %278, 1
  br i1 %280, label %ioc_bb79.i, label %cont80.i

ioc_bb79.i:                                       ; preds = %cont74.i
  %281 = sext i32 %count.1117.i to i64
  call void @__ioc_report_add_overflow(i32 3678, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %281, i64 1, i8 13) nounwind
  br label %cont80.i

cont80.i:                                         ; preds = %ioc_bb79.i, %cont74.i
  %282 = load i8** @patinend, align 4, !tbaa !4
  %call81.i = call fastcc i8* @charnext(i8* %scan.1116.i, i8* %282) nounwind
  %283 = load i8** @patinend, align 4, !tbaa !4
  %cmp50.i = icmp ult i8* %call81.i, %283
  br i1 %cmp50.i, label %while.body52.i, label %patrepeat.exit

patrepeat.exit:                                   ; preds = %cond.end20.i, %cond.false23.i, %cond.true26.i, %cond.end36.i, %cont45.i, %if.then.i, %if.else.i, %cont80.i, %if.end784, %while.cond49.preheader.i, %while.cond.preheader.i
  %scan.2.i = phi i8* [ %255, %if.end784 ], [ %255, %while.cond.preheader.i ], [ %255, %while.cond49.preheader.i ], [ %scan.1116.i, %if.then.i ], [ %scan.1116.i, %if.else.i ], [ %call81.i, %cont80.i ], [ %scan.0109.i, %cond.end20.i ], [ %scan.0109.i, %cond.false23.i ], [ %scan.0109.i, %cond.true26.i ], [ %scan.0109.i, %cond.end36.i ], [ %call46.i, %cont45.i ]
  %count.2.i = phi i32 [ 0, %if.end784 ], [ 0, %while.cond.preheader.i ], [ 0, %while.cond49.preheader.i ], [ %count.1117.i, %if.then.i ], [ %count.1117.i, %if.else.i ], [ %279, %cont80.i ], [ %count.0111.i, %cond.end20.i ], [ %count.0111.i, %cond.false23.i ], [ %count.0111.i, %cond.true26.i ], [ %count.0111.i, %cond.end36.i ], [ %268, %cont45.i ]
  store i8* %scan.2.i, i8** @patinput, align 4, !tbaa !4
  %l791.phi.trans.insert = getelementptr inbounds %union.upat* %cond7, i32 0, i32 0
  %.pre1624 = load i32* %l791.phi.trans.insert, align 4, !tbaa !3
  br label %if.end787

if.end787:                                        ; preds = %for.end759, %patrepeat.exit
  %284 = phi i8* [ %248, %for.end759 ], [ %scan.2.i, %patrepeat.exit ]
  %285 = phi i32 [ %249, %for.end759 ], [ %.pre1624, %patrepeat.exit ]
  %no.3 = phi i32 [ %no.2.lcssa, %for.end759 ], [ %count.2.i, %patrepeat.exit ]
  %cmp788 = icmp eq i32 %and20, 7
  %cond790 = zext i1 %cmp788 to i32
  %and792 = and i32 %285, 255
  %cmp793 = icmp eq i32 %and792, 4
  br i1 %cmp793, label %land.lhs.true795, label %if.end869

land.lhs.true795:                                 ; preds = %if.end787
  %l797 = getelementptr inbounds %union.upat* %cond7, i32 1, i32 0
  %286 = load i32* %l797, align 4, !tbaa !3
  %tobool798 = icmp eq i32 %286, 0
  br i1 %tobool798, label %if.end869, label %land.lhs.true799

land.lhs.true799:                                 ; preds = %land.lhs.true795
  %287 = load i32* @patglobflags, align 4, !tbaa !2
  %and800 = and i32 %287, 255
  %tobool801 = icmp eq i32 %and800, 0
  br i1 %tobool801, label %if.then802, label %if.end869

if.then802:                                       ; preds = %land.lhs.true799
  %add.ptr803 = getelementptr inbounds %union.upat* %cond7, i32 2
  %288 = bitcast %union.upat* %add.ptr803 to i8*
  %shr809 = ashr i32 %285, 8
  %l826 = getelementptr inbounds %union.upat* %cond7, i32 %shr809, i32 0
  %289 = load i32* %l826, align 4, !tbaa !3
  %and827 = and i32 %289, 255
  %cmp828 = icmp eq i32 %and827, 0
  br i1 %cmp828, label %land.lhs.true830, label %if.end862

land.lhs.true830:                                 ; preds = %if.then802
  %290 = load i32* @patflags, align 4, !tbaa !2
  %and831 = and i32 %290, 8
  %tobool832 = icmp eq i32 %and831, 0
  br i1 %tobool832, label %if.then833, label %if.end862

if.then833:                                       ; preds = %land.lhs.true830
  %291 = load i8** @patinend, align 4, !tbaa !4
  %sub.ptr.lhs.cast834 = ptrtoint i8* %291 to i32
  %sub.ptr.rhs.cast835 = ptrtoint i8* %284 to i32
  %sub.ptr.sub836 = sub i32 %sub.ptr.lhs.cast834, %sub.ptr.rhs.cast835
  br i1 %cmp788, label %cond.true838, label %cond.end841

cond.true838:                                     ; preds = %if.then833
  %call839 = call fastcc i8* @charnext(i8* %230, i8* %291)
  %.pre1625 = load i32* %l797, align 4, !tbaa !3
  br label %cond.end841

cond.end841:                                      ; preds = %if.then833, %cond.true838
  %292 = phi i32 [ %.pre1625, %cond.true838 ], [ %286, %if.then833 ]
  %cond842 = phi i8* [ %call839, %cond.true838 ], [ %230, %if.then833 ]
  %sub.ptr.rhs.cast844 = ptrtoint i8* %cond842 to i32
  %sub.ptr.sub845 = sub i32 %sub.ptr.lhs.cast834, %sub.ptr.rhs.cast844
  %cmp848 = icmp sgt i32 %292, %sub.ptr.sub845
  %cmp853 = icmp slt i32 %292, %sub.ptr.sub836
  %or.cond1417 = or i1 %cmp848, %cmp853
  br i1 %or.cond1417, label %cleanup.thread, label %if.end856

if.end856:                                        ; preds = %cond.end841
  %293 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub836, i32 %292)
  %294 = extractvalue { i32, i1 } %293, 0
  %295 = extractvalue { i32, i1 } %293, 1
  br i1 %295, label %ioc_bb859, label %cleanup

ioc_bb859:                                        ; preds = %if.end856
  %296 = sext i32 %292 to i64
  %297 = sext i32 %sub.ptr.sub836 to i64
  call void @__ioc_report_sub_overflow(i32 2919, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %297, i64 %296, i8 13) nounwind
  br label %cleanup

if.end862:                                        ; preds = %land.lhs.true830, %if.then802
  %add.ptr863 = getelementptr inbounds i8* %288, i32 %286
  %call864 = call fastcc i32 @charref(i8* %288, i8* %add.ptr863)
  %298 = icmp sgt i32 %call864, -1
  br i1 %298, label %if.end869, label %ioc_bb866

ioc_bb866:                                        ; preds = %if.end862
  %299 = sext i32 %call864 to i64
  call void @__ioc_report_conversion(i32 2927, i32 22, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %299, i8 1) nounwind
  br label %if.end869

if.end869:                                        ; preds = %if.end787, %land.lhs.true795, %land.lhs.true799, %if.end862, %ioc_bb866
  %nextch.0 = phi i32 [ %call864, %ioc_bb866 ], [ %call864, %if.end862 ], [ -1, %land.lhs.true799 ], [ -1, %land.lhs.true795 ], [ -1, %if.end787 ]
  %300 = load i32* @patglobflags, align 4, !tbaa !2
  %301 = load i32* @errsfound, align 4, !tbaa !2
  %cmp874 = icmp slt i32 %no.3, %cond790
  br i1 %cmp874, label %cleanup.cont, label %for.cond877.preheader

for.cond877.preheader:                            ; preds = %if.end869
  %302 = load i8** @patinput, align 4, !tbaa !4
  %sub.ptr.lhs.cast870 = ptrtoint i8* %302 to i32
  %sub.ptr.sub872 = sub i32 %sub.ptr.lhs.cast870, %sub.ptr.rhs.cast734
  %add.ptr873 = getelementptr inbounds i8* %vla, i32 %sub.ptr.sub872
  %cmp878 = icmp eq i32 %nextch.0, -1
  %sub.ptr.rhs.cast945 = ptrtoint i8* %vla to i32
  br label %for.cond877

for.cond877:                                      ; preds = %for.cond877.preheader, %while.end943
  %303 = phi i8* [ %add.ptr947, %while.end943 ], [ %302, %for.cond877.preheader ]
  %lastcharstart.0 = phi i8* [ %incdec.ptr939, %while.end943 ], [ %add.ptr873, %for.cond877.preheader ]
  %no.4 = phi i32 [ %309, %while.end943 ], [ %no.3, %for.cond877.preheader ]
  br i1 %cmp878, label %if.then926, label %lor.lhs.false880

lor.lhs.false880:                                 ; preds = %for.cond877
  %304 = load i8** @patinend, align 4, !tbaa !4
  %cmp881 = icmp ult i8* %303, %304
  br i1 %cmp881, label %land.lhs.true883, label %if.end931

land.lhs.true883:                                 ; preds = %lor.lhs.false880
  %call884 = call fastcc i32 @charref(i8* %303, i8* %304)
  %305 = icmp sgt i32 %call884, -1
  br i1 %305, label %cont887, label %ioc_bb886

ioc_bb886:                                        ; preds = %land.lhs.true883
  %306 = sext i32 %call884 to i64
  call void @__ioc_report_conversion(i32 2937, i32 87, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %306, i8 1) nounwind
  br label %cont887

cont887:                                          ; preds = %ioc_bb886, %land.lhs.true883
  %cmp888 = icmp eq i32 %call884, %nextch.0
  br i1 %cmp888, label %if.then926, label %lor.rhs

lor.rhs:                                          ; preds = %cont887
  %307 = load i32* @patglobflags, align 4, !tbaa !2
  %and890 = and i32 %307, 512
  %tobool891 = icmp eq i32 %and890, 0
  br i1 %tobool891, label %cond.false909, label %cond.true892

cond.true892:                                     ; preds = %lor.rhs
  %call893 = call i32 @iswupper(i32 %call884) nounwind
  %tobool894 = icmp eq i32 %call893, 0
  br i1 %tobool894, label %cond.end898, label %cond.true895

cond.true895:                                     ; preds = %cond.true892
  %call896 = call i32 @towlower(i32 %call884) nounwind
  br label %cond.end898

cond.end898:                                      ; preds = %cond.true892, %cond.true895
  %cond899 = phi i32 [ %call896, %cond.true895 ], [ %call884, %cond.true892 ]
  %call900 = call i32 @iswupper(i32 %nextch.0) nounwind
  %tobool901 = icmp eq i32 %call900, 0
  br i1 %tobool901, label %cond.end905, label %cond.true902

cond.true902:                                     ; preds = %cond.end898
  %call903 = call i32 @towlower(i32 %nextch.0) nounwind
  br label %cond.end905

cond.end905:                                      ; preds = %cond.end898, %cond.true902
  %cond906 = phi i32 [ %call903, %cond.true902 ], [ %nextch.0, %cond.end898 ]
  %cmp907 = icmp eq i32 %cond899, %cond906
  br i1 %cmp907, label %if.then926, label %if.end931

cond.false909:                                    ; preds = %lor.rhs
  %and910 = and i32 %307, 256
  %tobool911 = icmp eq i32 %and910, 0
  br i1 %tobool911, label %if.end931, label %cond.true912

cond.true912:                                     ; preds = %cond.false909
  %call913 = call i32 @iswlower(i32 %nextch.0) nounwind
  %tobool914 = icmp eq i32 %call913, 0
  br i1 %tobool914, label %if.end931, label %cond.end923

cond.end923:                                      ; preds = %cond.true912
  %call916 = call i32 @towupper(i32 %nextch.0) nounwind
  %cmp917 = icmp eq i32 %call916, %call884
  br i1 %cmp917, label %if.then926, label %if.end931

if.then926:                                       ; preds = %cond.end905, %cond.end923, %cont887, %for.cond877
  %call927 = call fastcc i32 @patmatch(%union.upat* %cond7)
  %tobool928 = icmp eq i32 %call927, 0
  br i1 %tobool928, label %if.end931, label %cleanup.thread

if.end931:                                        ; preds = %cond.end905, %cond.true912, %cond.end923, %cond.false909, %if.then926, %lor.lhs.false880
  %308 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %no.4, i32 -1)
  %309 = extractvalue { i32, i1 } %308, 0
  %310 = extractvalue { i32, i1 } %308, 1
  br i1 %310, label %ioc_bb932, label %cont933

ioc_bb932:                                        ; preds = %if.end931
  %311 = sext i32 %no.4 to i64
  call void @__ioc_report_add_overflow(i32 2941, i32 19, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %311, i64 -1, i8 13) nounwind
  br label %cont933

cont933:                                          ; preds = %if.end931, %ioc_bb932
  %cmp934 = icmp slt i32 %309, %cond790
  br i1 %cmp934, label %cleanup.cont, label %while.cond938

while.cond938:                                    ; preds = %cont933, %while.cond938
  %lastcharstart.1 = phi i8* [ %incdec.ptr939, %while.cond938 ], [ %lastcharstart.0, %cont933 ]
  %incdec.ptr939 = getelementptr inbounds i8* %lastcharstart.1, i32 -1
  %312 = load i8* %incdec.ptr939, align 1, !tbaa !0
  %lnot941 = icmp eq i8 %312, 0
  br i1 %lnot941, label %while.cond938, label %while.end943

while.end943:                                     ; preds = %while.cond938
  %sub.ptr.lhs.cast944 = ptrtoint i8* %incdec.ptr939 to i32
  %sub.ptr.sub946 = sub i32 %sub.ptr.lhs.cast944, %sub.ptr.rhs.cast945
  %add.ptr947 = getelementptr inbounds i8* %230, i32 %sub.ptr.sub946
  store i8* %add.ptr947, i8** @patinput, align 4, !tbaa !4
  store i32 %300, i32* @patglobflags, align 4, !tbaa !2
  store i32 %301, i32* @errsfound, align 4, !tbaa !2
  br label %for.cond877

cleanup.thread:                                   ; preds = %for.end759, %land.lhs.true779, %cond.end841, %if.then926
  %retval.1.ph = phi i32 [ 1, %if.then926 ], [ 1, %for.end759 ], [ 0, %land.lhs.true779 ], [ 0, %cond.end841 ]
  call void @llvm.stackrestore(i8* %232)
  br label %return

cleanup:                                          ; preds = %if.end856, %ioc_bb859
  %313 = load i8** @patinput, align 4, !tbaa !4
  %add.ptr861 = getelementptr inbounds i8* %313, i32 %294
  store i8* %add.ptr861, i8** @patinput, align 4, !tbaa !4
  call void @llvm.stackrestore(i8* %232)
  br label %while.cond.outer.loopexit

cleanup.cont:                                     ; preds = %cont933, %if.end869
  call void @llvm.stackrestore(i8* %232)
  br label %return

sw.bb950:                                         ; preds = %if.end
  %314 = load i8** @patinput, align 4, !tbaa !4
  %315 = load i8** @patinstart, align 4, !tbaa !4
  %cmp951 = icmp eq i8* %314, %315
  br i1 %cmp951, label %lor.lhs.false953, label %if.then1032

lor.lhs.false953:                                 ; preds = %sw.bb950
  %316 = load i32* @patflags, align 4, !tbaa !2
  %and954 = and i32 %316, 512
  %tobool955 = icmp eq i32 %and954, 0
  br i1 %tobool955, label %while.cond.outer.loopexit, label %if.then1032

sw.bb958:                                         ; preds = %if.end
  %317 = load i8** @patinput, align 4, !tbaa !4
  %318 = load i8** @patinend, align 4, !tbaa !4
  %cmp959 = icmp ult i8* %317, %318
  br i1 %cmp959, label %if.then1032, label %lor.lhs.false961

lor.lhs.false961:                                 ; preds = %sw.bb958
  %319 = load i32* @patflags, align 4, !tbaa !2
  %and962 = and i32 %319, 1024
  %tobool963 = icmp eq i32 %and962, 0
  br i1 %tobool963, label %while.cond.outer.loopexit, label %if.then1032

sw.bb966:                                         ; preds = %if.end
  %l969 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 2, i32 0
  %320 = load i32* %l969, align 4, !tbaa !3
  %arrayidx970 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 4
  %p971 = bitcast %union.upat* %arrayidx970 to i8**
  %321 = load i8** %p971, align 4, !tbaa !4
  store i32 0, i32* %l969, align 4, !tbaa !3
  %call974 = call fastcc i32 @patmatch(%union.upat* %add.ptr94)
  store i32 %320, i32* %l969, align 4, !tbaa !3
  %322 = getelementptr inbounds %union.upat* %arrayidx970, i32 0, i32 0
  %.c = ptrtoint i8* %321 to i32
  store i32 %.c, i32* %322, align 4, !tbaa !4
  br label %return

sw.bb977:                                         ; preds = %if.end
  %323 = load i32* %l30, align 4, !tbaa !3
  %l982 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 2, i32 0
  %324 = load i32* %l982, align 4, !tbaa !3
  %l984 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 3, i32 0
  %325 = load i32* %l984, align 4, !tbaa !3
  %tobool985 = icmp eq i32 %323, 0
  %cmp987 = icmp slt i32 %323, %324
  %or.cond1418 = or i1 %tobool985, %cmp987
  %.pre1631 = load i8** @patinput, align 4, !tbaa !4
  br i1 %or.cond1418, label %if.end996, label %land.lhs.true989

land.lhs.true989:                                 ; preds = %sw.bb977
  %arrayidx990 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 4
  %p991 = bitcast %union.upat* %arrayidx990 to i8**
  %326 = load i8** %p991, align 4, !tbaa !4
  %cmp992 = icmp eq i8* %.pre1631, %326
  br i1 %cmp992, label %if.then994, label %if.end996

if.then994:                                       ; preds = %land.lhs.true989
  %call995 = call fastcc i32 @patmatch(%union.upat* %cond7)
  br label %return

if.end996:                                        ; preds = %sw.bb977, %land.lhs.true989
  %327 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 4, i32 0
  %.c1406 = ptrtoint i8* %.pre1631 to i32
  store i32 %.c1406, i32* %327, align 4, !tbaa !4
  %cmp999 = icmp slt i32 %325, 0
  %cmp1002 = icmp slt i32 %323, %325
  %or.cond1419 = or i1 %cmp999, %cmp1002
  br i1 %or.cond1419, label %if.then1004, label %if.end1014

if.then1004:                                      ; preds = %if.end996
  %328 = load i8** @patinput, align 4, !tbaa !4
  %329 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %323, i32 1)
  %330 = extractvalue { i32, i1 } %329, 0
  %331 = extractvalue { i32, i1 } %329, 1
  br i1 %331, label %ioc_bb1005, label %cont1006

ioc_bb1005:                                       ; preds = %if.then1004
  %332 = sext i32 %323 to i64
  call void @__ioc_report_add_overflow(i32 3008, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %332, i64 1, i8 13) nounwind
  br label %cont1006

cont1006:                                         ; preds = %if.then1004, %ioc_bb1005
  store i32 %330, i32* %l30, align 4, !tbaa !3
  %add.ptr1009 = getelementptr inbounds %union.upat* %scan.0.ph1536, i32 5
  %call1010 = call fastcc i32 @patmatch(%union.upat* %add.ptr1009)
  %tobool1011 = icmp eq i32 %call1010, 0
  br i1 %tobool1011, label %if.end1013, label %return

if.end1013:                                       ; preds = %cont1006
  store i8* %328, i8** @patinput, align 4, !tbaa !4
  br label %if.end1014

if.end1014:                                       ; preds = %if.end996, %if.end1013
  br i1 %cmp987, label %return, label %if.end1018

if.end1018:                                       ; preds = %if.end1014
  %call1019 = call fastcc i32 @patmatch(%union.upat* %cond7)
  br label %return

sw.bb1020:                                        ; preds = %if.end
  %333 = load i8** @patinput, align 4, !tbaa !4
  %334 = load i8** @patinend, align 4, !tbaa !4
  %cmp1021 = icmp ult i8* %333, %334
  br i1 %cmp1021, label %land.end1027, label %return

land.end1027:                                     ; preds = %sw.bb1020
  %335 = load i32* @patflags, align 4, !tbaa !2
  %and1024 = and i32 %335, 8
  %lnot1026 = icmp eq i32 %and1024, 0
  %and1024.lobit = lshr exact i32 %and1024, 3
  %336 = xor i32 %and1024.lobit, 1
  br i1 %lnot1026, label %sw.epilog, label %return

sw.epilog:                                        ; preds = %land.end1027, %sw.bb445
  %fail.2 = phi i32 [ %conv447, %sw.bb445 ], [ %336, %land.end1027 ]
  %tobool1031 = icmp eq i32 %fail.2, 0
  br i1 %tobool1031, label %while.cond.outer.loopexit, label %if.then1032

if.then1032:                                      ; preds = %while.end, %sw.epilog, %lor.lhs.false961, %sw.bb958, %lor.lhs.false953, %sw.bb950, %if.else108, %if.then97, %sw.bb88, %sw.bb, %if.then85, %while.end267, %while.end329
  %337 = load i32* @errsfound, align 4, !tbaa !2
  %338 = load i32* @patglobflags, align 4, !tbaa !2
  %and1033 = and i32 %338, 255
  %cmp1034 = icmp slt i32 %337, %and1033
  br i1 %cmp1034, label %land.lhs.true1036, label %if.end1180

land.lhs.true1036:                                ; preds = %if.then1032
  %339 = load i32* @forceerrs, align 4, !tbaa !2
  %cmp1039 = icmp eq i32 %339, -1
  %cmp1042 = icmp slt i32 %337, %339
  %or.cond1442 = or i1 %cmp1039, %cmp1042
  br i1 %or.cond1442, label %if.then1044, label %if.end1180

if.then1044:                                      ; preds = %land.lhs.true1036
  %340 = load i8** @exactpos, align 4, !tbaa !4
  %341 = load i8** @patinput, align 4, !tbaa !4
  %342 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %337, i32 1)
  %343 = extractvalue { i32, i1 } %342, 0
  %344 = extractvalue { i32, i1 } %342, 1
  br i1 %344, label %ioc_bb1045, label %cont1046

ioc_bb1045:                                       ; preds = %if.then1044
  %345 = sext i32 %337 to i64
  call void @__ioc_report_add_overflow(i32 3050, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %345, i64 1, i8 13) nounwind
  %.pre = load i8** @patinput, align 4, !tbaa !4
  br label %cont1046

cont1046:                                         ; preds = %if.then1044, %ioc_bb1045
  %346 = phi i8* [ %.pre, %ioc_bb1045 ], [ %341, %if.then1044 ]
  store i32 %343, i32* @errsfound, align 4, !tbaa !2
  %347 = load i8** @patinend, align 4, !tbaa !4
  %cmp1047 = icmp ult i8* %346, %347
  br i1 %cmp1047, label %if.then1049, label %if.end1061

if.then1049:                                      ; preds = %cont1046
  %call1050 = call fastcc i8* @charnext(i8* %346, i8* %347)
  store i8* %call1050, i8** @patinput, align 4, !tbaa !4
  %348 = load i32* %l, align 4, !tbaa !3
  %and1052 = and i32 %348, 255
  %cmp1053 = icmp eq i32 %and1052, 4
  br i1 %cmp1053, label %if.end1056, label %while.body

if.end1056:                                       ; preds = %if.then1049
  %call1057 = call fastcc i32 @patmatch(%union.upat* %scan.0.ph1536)
  %tobool1058 = icmp eq i32 %call1057, 0
  br i1 %tobool1058, label %if.end1061, label %return

if.end1061:                                       ; preds = %if.end1056, %cont1046
  %349 = load i32* %l, align 4, !tbaa !3
  %and1063 = and i32 %349, 255
  %cmp1064 = icmp eq i32 %and1063, 4
  br i1 %cmp1064, label %if.then1066, label %if.end1180

if.then1066:                                      ; preds = %if.end1061
  %350 = load i8** @exactend, align 4, !tbaa !4
  %call1067 = call fastcc i8* @charnext(i8* %340, i8* %350)
  %351 = load i8** @patinend, align 4, !tbaa !4
  %cmp1068 = icmp ult i8* %341, %351
  br i1 %cmp1068, label %if.then1070, label %if.then1066.if.end1177_crit_edge

if.then1066.if.end1177_crit_edge:                 ; preds = %if.then1066
  %.pre1628 = load i8** @exactpos, align 4, !tbaa !4
  br label %if.end1177

if.then1070:                                      ; preds = %if.then1066
  %call1071 = call fastcc i8* @charnext(i8* %341, i8* %351)
  store i32 %338, i32* @patglobflags, align 4, !tbaa !2
  store i32 %343, i32* @errsfound, align 4, !tbaa !2
  store i8* %340, i8** @exactpos, align 4, !tbaa !4
  %352 = load i8** @patinend, align 4, !tbaa !4
  %cmp1072 = icmp ult i8* %341, %352
  %cmp1075 = icmp ult i8* %call1071, %352
  %or.cond1420 = and i1 %cmp1072, %cmp1075
  %353 = load i8** @exactend, align 4, !tbaa !4
  %cmp1078 = icmp ult i8* %call1067, %353
  %or.cond1421 = and i1 %or.cond1420, %cmp1078
  br i1 %or.cond1421, label %if.then1080, label %if.end1172

if.then1080:                                      ; preds = %if.then1070
  %call1081 = call fastcc i32 @charref(i8* %341, i8* %352)
  %354 = icmp sgt i32 %call1081, -1
  br i1 %354, label %cont1084, label %ioc_bb1083

ioc_bb1083:                                       ; preds = %if.then1080
  %355 = sext i32 %call1081 to i64
  call void @__ioc_report_conversion(i32 3080, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %355, i8 1) nounwind
  br label %cont1084

cont1084:                                         ; preds = %ioc_bb1083, %if.then1080
  %356 = load i8** @exactpos, align 4, !tbaa !4
  %357 = load i8** @exactend, align 4, !tbaa !4
  %call1085 = call fastcc i32 @charref(i8* %356, i8* %357)
  %358 = icmp sgt i32 %call1085, -1
  br i1 %358, label %cont1088, label %ioc_bb1087

ioc_bb1087:                                       ; preds = %cont1084
  %359 = sext i32 %call1085 to i64
  call void @__ioc_report_conversion(i32 3081, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %359, i8 1) nounwind
  br label %cont1088

cont1088:                                         ; preds = %ioc_bb1087, %cont1084
  %360 = load i8** @patinend, align 4, !tbaa !4
  %call1089 = call fastcc i32 @charref(i8* %call1071, i8* %360)
  %361 = icmp sgt i32 %call1089, -1
  br i1 %361, label %cont1092, label %ioc_bb1091

ioc_bb1091:                                       ; preds = %cont1088
  %362 = sext i32 %call1089 to i64
  call void @__ioc_report_conversion(i32 3082, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %362, i8 1) nounwind
  br label %cont1092

cont1092:                                         ; preds = %ioc_bb1091, %cont1088
  %363 = load i8** @exactend, align 4, !tbaa !4
  %call1093 = call fastcc i32 @charref(i8* %call1067, i8* %363)
  %364 = icmp sgt i32 %call1093, -1
  br i1 %364, label %cont1096, label %ioc_bb1095

ioc_bb1095:                                       ; preds = %cont1092
  %365 = sext i32 %call1093 to i64
  call void @__ioc_report_conversion(i32 3083, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %365, i8 1) nounwind
  br label %cont1096

cont1096:                                         ; preds = %ioc_bb1095, %cont1092
  %cmp1097 = icmp eq i32 %call1081, %call1093
  br i1 %cmp1097, label %land.lhs.true1130, label %lor.lhs.false1099

lor.lhs.false1099:                                ; preds = %cont1096
  %366 = load i32* @patglobflags, align 4, !tbaa !2
  %and1100 = and i32 %366, 512
  %tobool1101 = icmp eq i32 %and1100, 0
  br i1 %tobool1101, label %cond.false1119, label %cond.true1102

cond.true1102:                                    ; preds = %lor.lhs.false1099
  %call1103 = call i32 @iswupper(i32 %call1081) nounwind
  %tobool1104 = icmp eq i32 %call1103, 0
  br i1 %tobool1104, label %cond.end1108, label %cond.true1105

cond.true1105:                                    ; preds = %cond.true1102
  %call1106 = call i32 @towlower(i32 %call1081) nounwind
  br label %cond.end1108

cond.end1108:                                     ; preds = %cond.true1102, %cond.true1105
  %cond1109 = phi i32 [ %call1106, %cond.true1105 ], [ %call1081, %cond.true1102 ]
  %call1110 = call i32 @iswupper(i32 %call1093) nounwind
  %tobool1111 = icmp eq i32 %call1110, 0
  br i1 %tobool1111, label %cond.end1115, label %cond.true1112

cond.true1112:                                    ; preds = %cond.end1108
  %call1113 = call i32 @towlower(i32 %call1093) nounwind
  br label %cond.end1115

cond.end1115:                                     ; preds = %cond.end1108, %cond.true1112
  %cond1116 = phi i32 [ %call1113, %cond.true1112 ], [ %call1093, %cond.end1108 ]
  %cmp1117 = icmp eq i32 %cond1109, %cond1116
  br i1 %cmp1117, label %land.lhs.true1130, label %if.end1172

cond.false1119:                                   ; preds = %lor.lhs.false1099
  %and1120 = and i32 %366, 256
  %tobool1121 = icmp eq i32 %and1120, 0
  br i1 %tobool1121, label %if.end1172, label %cond.true1122

cond.true1122:                                    ; preds = %cond.false1119
  %call1123 = call i32 @iswlower(i32 %call1093) nounwind
  %tobool1124 = icmp eq i32 %call1123, 0
  br i1 %tobool1124, label %if.end1172, label %land.lhs.true1125

land.lhs.true1125:                                ; preds = %cond.true1122
  %call1126 = call i32 @towupper(i32 %call1093) nounwind
  %cmp1127 = icmp eq i32 %call1126, %call1081
  br i1 %cmp1127, label %land.lhs.true1130, label %if.end1172

land.lhs.true1130:                                ; preds = %land.lhs.true1125, %cond.end1115, %cont1096
  %cmp1131 = icmp eq i32 %call1089, %call1085
  br i1 %cmp1131, label %if.then1164, label %lor.lhs.false1133

lor.lhs.false1133:                                ; preds = %land.lhs.true1130
  %367 = load i32* @patglobflags, align 4, !tbaa !2
  %and1134 = and i32 %367, 512
  %tobool1135 = icmp eq i32 %and1134, 0
  br i1 %tobool1135, label %cond.false1153, label %cond.true1136

cond.true1136:                                    ; preds = %lor.lhs.false1133
  %call1137 = call i32 @iswupper(i32 %call1089) nounwind
  %tobool1138 = icmp eq i32 %call1137, 0
  br i1 %tobool1138, label %cond.end1142, label %cond.true1139

cond.true1139:                                    ; preds = %cond.true1136
  %call1140 = call i32 @towlower(i32 %call1089) nounwind
  br label %cond.end1142

cond.end1142:                                     ; preds = %cond.true1136, %cond.true1139
  %cond1143 = phi i32 [ %call1140, %cond.true1139 ], [ %call1089, %cond.true1136 ]
  %call1144 = call i32 @iswupper(i32 %call1085) nounwind
  %tobool1145 = icmp eq i32 %call1144, 0
  br i1 %tobool1145, label %cond.end1149, label %cond.true1146

cond.true1146:                                    ; preds = %cond.end1142
  %call1147 = call i32 @towlower(i32 %call1085) nounwind
  br label %cond.end1149

cond.end1149:                                     ; preds = %cond.end1142, %cond.true1146
  %cond1150 = phi i32 [ %call1147, %cond.true1146 ], [ %call1085, %cond.end1142 ]
  %cmp1151 = icmp eq i32 %cond1143, %cond1150
  br i1 %cmp1151, label %if.then1164, label %if.end1172

cond.false1153:                                   ; preds = %lor.lhs.false1133
  %and1154 = and i32 %367, 256
  %tobool1155 = icmp eq i32 %and1154, 0
  br i1 %tobool1155, label %if.end1172, label %cond.true1156

cond.true1156:                                    ; preds = %cond.false1153
  %call1157 = call i32 @iswlower(i32 %call1085) nounwind
  %tobool1158 = icmp eq i32 %call1157, 0
  br i1 %tobool1158, label %if.end1172, label %land.lhs.true1159

land.lhs.true1159:                                ; preds = %cond.true1156
  %call1160 = call i32 @towupper(i32 %call1085) nounwind
  %cmp1161 = icmp eq i32 %call1160, %call1089
  br i1 %cmp1161, label %if.then1164, label %if.end1172

if.then1164:                                      ; preds = %land.lhs.true1159, %cond.end1149, %land.lhs.true1130
  store i8* %call1071, i8** @patinput, align 4, !tbaa !4
  %368 = load i8** @patinend, align 4, !tbaa !4
  %call1165 = call fastcc i8* @charnext(i8* %call1071, i8* %368)
  store i8* %call1165, i8** @patinput, align 4, !tbaa !4
  store i8* %call1067, i8** @exactpos, align 4, !tbaa !4
  %369 = load i8** @exactend, align 4, !tbaa !4
  %call1166 = call fastcc i8* @charnext(i8* %call1067, i8* %369)
  store i8* %call1166, i8** @exactpos, align 4, !tbaa !4
  %call1167 = call fastcc i32 @patmatch(%union.upat* %scan.0.ph1536)
  %tobool1168 = icmp eq i32 %call1167, 0
  br i1 %tobool1168, label %if.end1170, label %return

if.end1170:                                       ; preds = %if.then1164
  store i32 %338, i32* @patglobflags, align 4, !tbaa !2
  store i32 %343, i32* @errsfound, align 4, !tbaa !2
  br label %if.end1172

if.end1172:                                       ; preds = %cond.true1156, %cond.false1153, %cond.true1122, %cond.false1119, %cond.end1115, %land.lhs.true1125, %cond.end1149, %land.lhs.true1159, %if.end1170, %if.then1070
  store i8* %call1071, i8** @patinput, align 4, !tbaa !4
  store i8* %call1067, i8** @exactpos, align 4, !tbaa !4
  %call1173 = call fastcc i32 @patmatch(%union.upat* %scan.0.ph1536)
  %tobool1174 = icmp eq i32 %call1173, 0
  br i1 %tobool1174, label %if.end1176, label %return

if.end1176:                                       ; preds = %if.end1172
  store i8* %341, i8** @patinput, align 4, !tbaa !4
  store i32 %338, i32* @patglobflags, align 4, !tbaa !2
  store i32 %343, i32* @errsfound, align 4, !tbaa !2
  store i8* %340, i8** @exactpos, align 4, !tbaa !4
  br label %if.end1177

if.end1177:                                       ; preds = %if.then1066.if.end1177_crit_edge, %if.end1176
  %370 = phi i8* [ %.pre1628, %if.then1066.if.end1177_crit_edge ], [ %340, %if.end1176 ]
  %371 = load i8** @exactend, align 4, !tbaa !4
  %call1178 = call fastcc i8* @charnext(i8* %370, i8* %371)
  store i8* %call1178, i8** @exactpos, align 4, !tbaa !4
  br label %while.body

if.end1180:                                       ; preds = %land.lhs.true1036, %if.end1061, %if.then1032
  store i8* null, i8** @exactpos, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %sw.bb1020, %if.end1172, %if.then1164, %if.end1056, %land.end1027, %sw.bb445, %cont433, %land.lhs.true16, %while.cond.outer.loopexit, %entry, %land.lhs.true252, %land.lhs.true223, %land.lhs.true321, %while.body292, %cond.end719, %land.rhs722, %if.end676, %cleanup.thread, %if.end1014, %cont1006, %cont392, %cont420, %if.then395, %cont405, %cont346, %cont374, %if.then349, %cont359, %if.end1180, %if.end1018, %if.then994, %sw.bb966, %cleanup.cont, %if.then583
  %retval.3 = phi i32 [ 0, %if.end1180 ], [ %call974, %sw.bb966 ], [ 0, %cleanup.cont ], [ 1, %if.then583 ], [ %call995, %if.then994 ], [ %call1019, %if.end1018 ], [ 1, %cont359 ], [ 1, %if.then349 ], [ 1, %cont374 ], [ 0, %cont346 ], [ 1, %cont405 ], [ 1, %if.then395 ], [ 1, %cont420 ], [ 0, %cont392 ], [ 1, %cont1006 ], [ 0, %if.end1014 ], [ %retval.1.ph, %cleanup.thread ], [ 0, %cond.end719 ], [ 0, %land.rhs722 ], [ 1, %if.end676 ], [ 0, %land.lhs.true321 ], [ 1, %while.body292 ], [ 0, %land.lhs.true252 ], [ 1, %land.lhs.true223 ], [ 0, %land.lhs.true16 ], [ 0, %cont433 ], [ 1, %sw.bb445 ], [ 1, %land.end1027 ], [ 1, %if.end1056 ], [ 1, %if.then1164 ], [ 1, %if.end1172 ], [ 1, %sw.bb1020 ], [ 0, %while.cond.outer.loopexit ], [ 0, %entry ]
  ret i32 %retval.3
}

define internal fastcc i32 @charsub(i8* %x, i8* %y) nounwind {
entry:
  %wc = alloca i32, align 4
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 109), align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp44 = icmp ult i8* %x, %y
  br i1 %cmp44, label %while.body.lr.ph, label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub.ptr.lhs.cast1 = ptrtoint i8* %y to i32
  br label %while.body

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %y to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %x to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

while.body:                                       ; preds = %while.body.lr.ph, %cont29
  %res.046 = phi i32 [ 0, %while.body.lr.ph ], [ %8, %cont29 ]
  %x.addr.045 = phi i8* [ %x, %while.body.lr.ph ], [ %add.ptr, %cont29 ]
  %sub.ptr.rhs.cast2 = ptrtoint i8* %x.addr.045 to i32
  %sub.ptr.sub3 = sub i32 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %1 = sext i32 %sub.ptr.sub3 to i64
  %2 = icmp sgt i32 %sub.ptr.sub3, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.body
  call void @__ioc_report_conversion(i32 1779, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.body
  %call = call i32 @mbrtowc(i32* %wc, i8* %x.addr.045, i32 %sub.ptr.sub3, %struct.__mbstate_t* @shiftstate) nounwind
  call void @__ioc_report_conversion(i32 1780, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp9 = icmp eq i32 %call, -1
  br i1 %cmp9, label %if.then16, label %ioc_bb13

ioc_bb13:                                         ; preds = %cont
  call void @__ioc_report_conversion(i32 1780, i32 52, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -2, i8 1) nounwind
  switch i32 %call, label %if.end27 [
    i32 -2, label %if.then16
    i32 0, label %cont26
  ]

if.then16:                                        ; preds = %ioc_bb13, %cont
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %res.046, i32 %sub.ptr.sub3)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb20, label %return

ioc_bb20:                                         ; preds = %if.then16
  %6 = sext i32 %res.046 to i64
  call void @__ioc_report_add_overflow(i32 1782, i32 18, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 %1, i8 13) nounwind
  br label %return

cont26:                                           ; preds = %ioc_bb13
  br label %if.end27

if.end27:                                         ; preds = %ioc_bb13, %cont26
  %ret.0 = phi i32 [ 1, %cont26 ], [ %call, %ioc_bb13 ]
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %res.046, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb28, label %cont29

ioc_bb28:                                         ; preds = %if.end27
  %10 = sext i32 %res.046 to i64
  call void @__ioc_report_add_overflow(i32 1787, i32 8, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont29

cont29:                                           ; preds = %if.end27, %ioc_bb28
  %add.ptr = getelementptr inbounds i8* %x.addr.045, i32 %ret.0
  %cmp = icmp ult i8* %add.ptr, %y
  br i1 %cmp, label %while.body, label %return

return:                                           ; preds = %while.cond.preheader, %cont29, %ioc_bb20, %if.then16, %if.then
  %retval.0 = phi i32 [ %sub.ptr.sub, %if.then ], [ %4, %if.then16 ], [ %4, %ioc_bb20 ], [ 0, %while.cond.preheader ], [ %8, %cont29 ]
  ret i32 %retval.0
}

declare i8* @metafy(i8*, i32, i32)

declare i8* @zshcalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare i8* @ztrdup(i8*)

declare %struct.param* @assignaparam(i8*, i8**, i32)

define i32 @patmatchlen() nounwind readonly {
entry:
  %0 = load i32* @patinlen, align 4, !tbaa !2
  ret i32 %0
}

define i32 @mb_patmatchrange(i8* %range, i32 %ch, i32* %indptr, i32* %mtp) nounwind {
entry:
  %range.addr = alloca i8*, align 4
  store i8* %range, i8** %range.addr, align 4, !tbaa !4
  %tobool = icmp ne i32* %indptr, null
  br i1 %tobool, label %cont, label %while.cond.preheader

cont:                                             ; preds = %entry
  store i32 0, i32* %indptr, align 4, !tbaa !2
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cont, %entry
  %0 = load i8* %range, align 1, !tbaa !0
  %tobool1263 = icmp eq i8 %0, 0
  br i1 %tobool1263, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool20 = icmp eq i32* %mtp, null
  %1 = icmp sgt i32 %ch, -1
  %2 = sext i32 %ch to i64
  %cmp45 = icmp ult i32 %ch, 128
  %cmp147 = icmp slt i32 %ch, 128
  %3 = icmp ult i32 %ch, 256
  %idxprom153 = and i32 %ch, 255
  %arrayidx154 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom153
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %4 = phi i8* [ %range, %while.body.lr.ph ], [ %47, %while.cond.backedge ]
  %5 = phi i8 [ %0, %while.body.lr.ph ], [ %48, %while.cond.backedge ]
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %while.body
  %7 = sext i8 %5 to i64
  call void @__ioc_report_conversion(i32 3158, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %while.body
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %8 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %8, 4096
  %tobool8 = icmp eq i16 %and, 0
  br i1 %tobool8, label %if.else, label %if.then9

if.then9:                                         ; preds = %cont3
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4, !tbaa !4
  %9 = load i8* %4, align 1, !tbaa !0
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %if.then9
  %11 = sext i8 %9 to i64
  call void @__ioc_report_conversion(i32 3159, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %if.then9
  %conv13 = zext i8 %9 to i32
  call void @__ioc_report_conversion(i32 3159, i32 79, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 3159, i32 71, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv13, i32 131)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb18, label %cont19

ioc_bb18:                                         ; preds = %cont12
  %15 = zext i8 %9 to i64
  call void @__ioc_report_sub_overflow(i32 3159, i32 52, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %15, i64 131, i8 13) nounwind
  br label %cont19

cont19:                                           ; preds = %cont12, %ioc_bb18
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %cont19
  store i32 %13, i32* %mtp, align 4, !tbaa !2
  br label %if.end22

if.end22:                                         ; preds = %cont19, %if.then21
  switch i32 %13, label %if.end215 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb35
    i32 3, label %sw.bb43
    i32 4, label %sw.bb49
    i32 5, label %sw.bb56
    i32 6, label %sw.bb64
    i32 7, label %sw.bb72
    i32 8, label %sw.bb80
    i32 9, label %sw.bb88
    i32 10, label %sw.bb96
    i32 11, label %sw.bb104
    i32 12, label %sw.bb112
    i32 13, label %sw.bb120
    i32 14, label %cont132
    i32 15, label %cont141
    i32 16, label %sw.bb146
    i32 17, label %cont168
    i32 19, label %sw.bb173
  ]

sw.bb:                                            ; preds = %if.end22
  store i8* %4, i8** %range.addr, align 4, !tbaa !4
  %call = call fastcc i32 @metacharinc(i8** %range.addr)
  %cmp = icmp eq i32 %call, %ch
  br i1 %cmp, label %return, label %if.end215

sw.bb27:                                          ; preds = %if.end22
  br i1 %1, label %cont30, label %ioc_bb29

ioc_bb29:                                         ; preds = %sw.bb27
  call void @__ioc_report_conversion(i32 3173, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont30

cont30:                                           ; preds = %ioc_bb29, %sw.bb27
  %call31 = call i32 @iswalpha(i32 %ch) nounwind
  %tobool32 = icmp eq i32 %call31, 0
  br i1 %tobool32, label %if.end215, label %return

sw.bb35:                                          ; preds = %if.end22
  br i1 %1, label %cont38, label %ioc_bb37

ioc_bb37:                                         ; preds = %sw.bb35
  call void @__ioc_report_conversion(i32 3179, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont38

cont38:                                           ; preds = %ioc_bb37, %sw.bb35
  %call39 = call i32 @iswalnum(i32 %ch) nounwind
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %if.end215, label %return

sw.bb43:                                          ; preds = %if.end22
  br i1 %cmp45, label %return, label %if.end215

sw.bb49:                                          ; preds = %if.end22
  switch i32 %ch, label %if.end215 [
    i32 32, label %return
    i32 9, label %return
  ]

sw.bb56:                                          ; preds = %if.end22
  br i1 %1, label %cont59, label %ioc_bb58

ioc_bb58:                                         ; preds = %sw.bb56
  call void @__ioc_report_conversion(i32 3197, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont59

cont59:                                           ; preds = %ioc_bb58, %sw.bb56
  %call60 = call i32 @iswcntrl(i32 %ch) nounwind
  %tobool61 = icmp eq i32 %call60, 0
  br i1 %tobool61, label %if.end215, label %return

sw.bb64:                                          ; preds = %if.end22
  br i1 %1, label %cont67, label %ioc_bb66

ioc_bb66:                                         ; preds = %sw.bb64
  call void @__ioc_report_conversion(i32 3203, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont67

cont67:                                           ; preds = %ioc_bb66, %sw.bb64
  %call68 = call i32 @iswdigit(i32 %ch) nounwind
  %tobool69 = icmp eq i32 %call68, 0
  br i1 %tobool69, label %if.end215, label %return

sw.bb72:                                          ; preds = %if.end22
  br i1 %1, label %cont75, label %ioc_bb74

ioc_bb74:                                         ; preds = %sw.bb72
  call void @__ioc_report_conversion(i32 3209, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont75

cont75:                                           ; preds = %ioc_bb74, %sw.bb72
  %call76 = call i32 @iswgraph(i32 %ch) nounwind
  %tobool77 = icmp eq i32 %call76, 0
  br i1 %tobool77, label %if.end215, label %return

sw.bb80:                                          ; preds = %if.end22
  br i1 %1, label %cont83, label %ioc_bb82

ioc_bb82:                                         ; preds = %sw.bb80
  call void @__ioc_report_conversion(i32 3215, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont83

cont83:                                           ; preds = %ioc_bb82, %sw.bb80
  %call84 = call i32 @iswlower(i32 %ch) nounwind
  %tobool85 = icmp eq i32 %call84, 0
  br i1 %tobool85, label %if.end215, label %return

sw.bb88:                                          ; preds = %if.end22
  br i1 %1, label %cont91, label %ioc_bb90

ioc_bb90:                                         ; preds = %sw.bb88
  call void @__ioc_report_conversion(i32 3221, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont91

cont91:                                           ; preds = %ioc_bb90, %sw.bb88
  %call92 = call i32 @iswprint(i32 %ch) nounwind
  %tobool93 = icmp eq i32 %call92, 0
  br i1 %tobool93, label %if.end215, label %return

sw.bb96:                                          ; preds = %if.end22
  br i1 %1, label %cont99, label %ioc_bb98

ioc_bb98:                                         ; preds = %sw.bb96
  call void @__ioc_report_conversion(i32 3227, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont99

cont99:                                           ; preds = %ioc_bb98, %sw.bb96
  %call100 = call i32 @iswpunct(i32 %ch) nounwind
  %tobool101 = icmp eq i32 %call100, 0
  br i1 %tobool101, label %if.end215, label %return

sw.bb104:                                         ; preds = %if.end22
  br i1 %1, label %cont107, label %ioc_bb106

ioc_bb106:                                        ; preds = %sw.bb104
  call void @__ioc_report_conversion(i32 3233, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont107

cont107:                                          ; preds = %ioc_bb106, %sw.bb104
  %call108 = call i32 @iswspace(i32 %ch) nounwind
  %tobool109 = icmp eq i32 %call108, 0
  br i1 %tobool109, label %if.end215, label %return

sw.bb112:                                         ; preds = %if.end22
  br i1 %1, label %cont115, label %ioc_bb114

ioc_bb114:                                        ; preds = %sw.bb112
  call void @__ioc_report_conversion(i32 3239, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont115

cont115:                                          ; preds = %ioc_bb114, %sw.bb112
  %call116 = call i32 @iswupper(i32 %ch) nounwind
  %tobool117 = icmp eq i32 %call116, 0
  br i1 %tobool117, label %if.end215, label %return

sw.bb120:                                         ; preds = %if.end22
  br i1 %1, label %cont123, label %ioc_bb122

ioc_bb122:                                        ; preds = %sw.bb120
  call void @__ioc_report_conversion(i32 3245, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont123

cont123:                                          ; preds = %ioc_bb122, %sw.bb120
  %call124 = call i32 @iswxdigit(i32 %ch) nounwind
  %tobool125 = icmp eq i32 %call124, 0
  br i1 %tobool125, label %if.end215, label %return

cont132:                                          ; preds = %if.end22
  %call133 = call i32 @wcsitype(i32 %ch, i32 128) nounwind
  %tobool134 = icmp eq i32 %call133, 0
  br i1 %tobool134, label %if.end215, label %return

cont141:                                          ; preds = %if.end22
  %call142 = call i32 @wcsitype(i32 %ch, i32 32) nounwind
  %tobool143 = icmp eq i32 %call142, 0
  br i1 %tobool143, label %if.end215, label %return

sw.bb146:                                         ; preds = %if.end22
  br i1 %cmp147, label %land.lhs.true, label %if.end215

land.lhs.true:                                    ; preds = %sw.bb146
  br i1 %3, label %cont151, label %ioc_bb150

ioc_bb150:                                        ; preds = %land.lhs.true
  call void @__ioc_report_conversion(i32 3264, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont151

cont151:                                          ; preds = %ioc_bb150, %land.lhs.true
  %16 = load i16* %arrayidx154, align 2, !tbaa !5
  %and160 = and i16 %16, 8192
  %tobool161 = icmp eq i16 %and160, 0
  br i1 %tobool161, label %if.end215, label %return

cont168:                                          ; preds = %if.end22
  %call169 = call i32 @wcsitype(i32 %ch, i32 1024) nounwind
  %tobool170 = icmp eq i32 %call169, 0
  br i1 %tobool170, label %if.end215, label %return

sw.bb173:                                         ; preds = %if.end22
  %call174 = call fastcc i32 @metacharinc(i8** %range.addr)
  %call175 = call fastcc i32 @metacharinc(i8** %range.addr)
  %cmp176 = icmp sgt i32 %call174, %ch
  %cmp179 = icmp slt i32 %call175, %ch
  %or.cond = or i1 %cmp176, %cmp179
  br i1 %or.cond, label %if.end192, label %if.then181

if.then181:                                       ; preds = %sw.bb173
  br i1 %tobool, label %if.then183, label %return

if.then183:                                       ; preds = %if.then181
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ch, i32 %call174)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb184, label %cont185

ioc_bb184:                                        ; preds = %if.then183
  %20 = sext i32 %call174 to i64
  call void @__ioc_report_sub_overflow(i32 3280, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %2, i64 %20, i8 13) nounwind
  br label %cont185

cont185:                                          ; preds = %if.then183, %ioc_bb184
  %21 = icmp sgt i32 %18, -1
  br i1 %21, label %cont188, label %ioc_bb187

ioc_bb187:                                        ; preds = %cont185
  %22 = sext i32 %18 to i64
  call void @__ioc_report_conversion(i32 3280, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont188

cont188:                                          ; preds = %ioc_bb187, %cont185
  %23 = load i32* %indptr, align 4, !tbaa !2
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %23, i32 %18)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb189, label %cont190

ioc_bb189:                                        ; preds = %cont188
  %27 = zext i32 %18 to i64
  %28 = zext i32 %23 to i64
  call void @__ioc_report_add_overflow(i32 3280, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %28, i64 %27, i8 5) nounwind
  br label %cont190

cont190:                                          ; preds = %cont188, %ioc_bb189
  store i32 %25, i32* %indptr, align 4, !tbaa !2
  br label %return

if.end192:                                        ; preds = %sw.bb173
  %cmp195 = icmp slt i32 %call174, %call175
  %or.cond262 = and i1 %tobool, %cmp195
  br i1 %or.cond262, label %if.then197, label %if.end215

if.then197:                                       ; preds = %if.end192
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call175, i32 %call174)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb198, label %cont199

ioc_bb198:                                        ; preds = %if.then197
  %32 = sext i32 %call174 to i64
  %33 = sext i32 %call175 to i64
  call void @__ioc_report_sub_overflow(i32 3289, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %33, i64 %32, i8 13) nounwind
  br label %cont199

cont199:                                          ; preds = %if.then197, %ioc_bb198
  %34 = icmp sgt i32 %30, -1
  br i1 %34, label %cont202, label %ioc_bb201

ioc_bb201:                                        ; preds = %cont199
  %35 = sext i32 %30 to i64
  call void @__ioc_report_conversion(i32 3289, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %35, i8 1) nounwind
  br label %cont202

cont202:                                          ; preds = %ioc_bb201, %cont199
  %36 = load i32* %indptr, align 4, !tbaa !2
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %36, i32 %30)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb203, label %cont204

ioc_bb203:                                        ; preds = %cont202
  %40 = zext i32 %30 to i64
  %41 = zext i32 %36 to i64
  call void @__ioc_report_add_overflow(i32 3289, i32 22, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %41, i64 %40, i8 5) nounwind
  br label %cont204

cont204:                                          ; preds = %cont202, %ioc_bb203
  store i32 %38, i32* %indptr, align 4, !tbaa !2
  br label %if.end215

if.else:                                          ; preds = %cont3
  %call207 = call fastcc i32 @metacharinc(i8** %range.addr)
  %cmp208 = icmp eq i32 %call207, %ch
  br i1 %cmp208, label %if.then210, label %if.end215

if.then210:                                       ; preds = %if.else
  br i1 %tobool20, label %return, label %if.then212

if.then212:                                       ; preds = %if.then210
  store i32 0, i32* %mtp, align 4, !tbaa !2
  br label %return

if.end215:                                        ; preds = %sw.bb49, %cont30, %cont38, %cont59, %cont67, %cont75, %cont83, %cont91, %cont99, %cont107, %cont115, %cont123, %cont132, %cont141, %cont151, %cont168, %if.else, %sw.bb, %sw.bb43, %sw.bb146, %cont204, %if.end192, %if.end22
  br i1 %tobool, label %if.then217, label %while.cond.backedge

if.then217:                                       ; preds = %if.end215
  %42 = load i32* %indptr, align 4, !tbaa !2
  %43 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %42, i32 1)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb218, label %cont219

ioc_bb218:                                        ; preds = %if.then217
  %46 = zext i32 %42 to i64
  call void @__ioc_report_add_overflow(i32 3311, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %46, i64 1, i8 5) nounwind
  br label %cont219

cont219:                                          ; preds = %if.then217, %ioc_bb218
  store i32 %44, i32* %indptr, align 4, !tbaa !2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end215, %cont219
  %47 = load i8** %range.addr, align 4, !tbaa !4
  %48 = load i8* %47, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %48, 0
  br i1 %tobool1, label %return, label %while.body

return:                                           ; preds = %while.cond.preheader, %cont168, %cont151, %cont141, %cont132, %cont123, %cont115, %cont107, %cont99, %cont91, %cont83, %cont75, %cont67, %cont59, %sw.bb49, %sw.bb49, %sw.bb43, %cont38, %cont30, %sw.bb, %while.cond.backedge, %if.then212, %if.then210, %if.then181, %cont190
  %retval.0 = phi i32 [ 1, %cont190 ], [ 1, %if.then181 ], [ 1, %if.then210 ], [ 1, %if.then212 ], [ 0, %while.cond.preheader ], [ 1, %cont168 ], [ 1, %cont151 ], [ 1, %cont141 ], [ 1, %cont132 ], [ 1, %cont123 ], [ 1, %cont115 ], [ 1, %cont107 ], [ 1, %cont99 ], [ 1, %cont91 ], [ 1, %cont83 ], [ 1, %cont75 ], [ 1, %cont67 ], [ 1, %cont59 ], [ 1, %sw.bb49 ], [ 1, %sw.bb49 ], [ 1, %sw.bb43 ], [ 1, %cont38 ], [ 1, %cont30 ], [ 1, %sw.bb ], [ 0, %while.cond.backedge ]
  ret i32 %retval.0
}

define internal fastcc i32 @metacharinc(i8** nocapture %x) nounwind {
entry:
  %inchar = alloca i8, align 1
  %wc = alloca i32, align 4
  %0 = load i8** %x, align 4, !tbaa !4
  call void @__ioc_report_conversion(i32 287, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %1 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %1, 4096
  %tobool = icmp eq i32 %and, 0
  %.pre = load i8* %0, align 1, !tbaa !0
  %2 = icmp sgt i8 %.pre, -1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  br i1 %2, label %cont10, label %cont5.thread

cont5.thread:                                     ; preds = %lor.lhs.false
  %3 = sext i8 %.pre to i64
  call void @__ioc_report_conversion(i32 295, i32 54, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %while.cond

if.then:                                          ; preds = %entry
  br i1 %2, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %if.then
  %4 = sext i8 %.pre to i64
  call void @__ioc_report_conversion(i32 296, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %lor.lhs.false, %ioc_bb9, %if.then
  %idxprom = zext i8 %.pre to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %5 = load i16* %arrayidx, align 2, !tbaa !5
  %and16 = and i16 %5, 16
  %tobool17 = icmp eq i16 %and16, 0
  br i1 %tobool17, label %if.else, label %if.then18

if.then18:                                        ; preds = %cont10
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1
  %6 = load i8* %0, align 1, !tbaa !0
  %conv19 = sext i8 %6 to i32
  call void @__ioc_report_conversion(i32 297, i32 48, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv19, i32 -124)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %if.then18
  %10 = sext i8 %6 to i64
  call void @__ioc_report_sub_overflow(i32 297, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %10, i64 -124, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %if.then18, %ioc_bb22
  %arrayidx24 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %8
  %11 = load i8* %arrayidx24, align 1, !tbaa !0
  store i8 %11, i8* %inchar, align 1, !tbaa !0
  br label %if.end39

if.else:                                          ; preds = %cont10
  %12 = load i8* %0, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 298, i32 35, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %12, -125
  %incdec.ptr30 = getelementptr inbounds i8* %0, i32 1
  br i1 %cmp, label %if.then29, label %if.else37

if.then29:                                        ; preds = %if.else
  %incdec.ptr31 = getelementptr inbounds i8* %0, i32 2
  %13 = load i8* %incdec.ptr30, align 1, !tbaa !0
  %conv32 = sext i8 %13 to i32
  %xor = xor i32 %conv32, 32
  %xor.off = add i32 %xor, 128
  %14 = icmp ult i32 %xor.off, 256
  br i1 %14, label %cont35, label %ioc_bb34

ioc_bb34:                                         ; preds = %if.then29
  %15 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 300, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont35

cont35:                                           ; preds = %ioc_bb34, %if.then29
  %conv36 = trunc i32 %xor to i8
  store i8 %conv36, i8* %inchar, align 1, !tbaa !0
  br label %if.end39

if.else37:                                        ; preds = %if.else
  %16 = load i8* %0, align 1, !tbaa !0
  store i8 %16, i8* %inchar, align 1, !tbaa !0
  br label %if.end39

if.end39:                                         ; preds = %cont35, %if.else37, %cont23
  %17 = phi i8 [ %11, %cont23 ], [ %conv36, %cont35 ], [ %16, %if.else37 ]
  %inptr.0 = phi i8* [ %incdec.ptr, %cont23 ], [ %incdec.ptr31, %cont35 ], [ %incdec.ptr30, %if.else37 ]
  store i8* %inptr.0, i8** %x, align 4, !tbaa !4
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %cont42, label %ioc_bb41

ioc_bb41:                                         ; preds = %if.end39
  %19 = sext i8 %17 to i64
  call void @__ioc_report_conversion(i32 306, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont42

cont42:                                           ; preds = %ioc_bb41, %if.end39
  %conv43 = zext i8 %17 to i32
  br label %return

while.cond:                                       ; preds = %cont5.thread, %ioc_bb100
  %inptr.1 = phi i8* [ %inptr.2, %ioc_bb100 ], [ %0, %cont5.thread ]
  %20 = load i8* %inptr.1, align 1, !tbaa !0
  %tobool45 = icmp eq i8 %20, 0
  br i1 %tobool45, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %cont48, label %ioc_bb47

ioc_bb47:                                         ; preds = %while.body
  %22 = sext i8 %20 to i64
  call void @__ioc_report_conversion(i32 309, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb47, %while.body
  %idxprom49 = zext i8 %20 to i32
  %arrayidx50 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom49
  %23 = load i16* %arrayidx50, align 2, !tbaa !5
  %and56 = and i16 %23, 16
  %tobool57 = icmp eq i16 %and56, 0
  br i1 %tobool57, label %if.else66, label %if.then58

if.then58:                                        ; preds = %cont48
  %incdec.ptr59 = getelementptr inbounds i8* %inptr.1, i32 1
  %24 = load i8* %inptr.1, align 1, !tbaa !0
  %conv60 = sext i8 %24 to i32
  call void @__ioc_report_conversion(i32 310, i32 48, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv60, i32 -124)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %if.then58
  %28 = sext i8 %24 to i64
  call void @__ioc_report_sub_overflow(i32 310, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %28, i64 -124, i8 13) nounwind
  br label %cont64

cont64:                                           ; preds = %if.then58, %ioc_bb63
  %arrayidx65 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %26
  %29 = load i8* %arrayidx65, align 1, !tbaa !0
  store i8 %29, i8* %inchar, align 1, !tbaa !0
  br label %cont87

if.else66:                                        ; preds = %cont48
  %30 = load i8* %inptr.1, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 311, i32 35, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp70 = icmp eq i8 %30, -125
  %incdec.ptr73 = getelementptr inbounds i8* %inptr.1, i32 1
  br i1 %cmp70, label %if.then72, label %if.else82

if.then72:                                        ; preds = %if.else66
  %incdec.ptr74 = getelementptr inbounds i8* %inptr.1, i32 2
  %31 = load i8* %incdec.ptr73, align 1, !tbaa !0
  %conv75 = sext i8 %31 to i32
  %xor76 = xor i32 %conv75, 32
  %xor76.off = add i32 %xor76, 128
  %32 = icmp ult i32 %xor76.off, 256
  br i1 %32, label %cont80, label %ioc_bb79

ioc_bb79:                                         ; preds = %if.then72
  %33 = sext i32 %xor76 to i64
  call void @__ioc_report_conversion(i32 313, i32 16, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont80

cont80:                                           ; preds = %ioc_bb79, %if.then72
  %conv81 = trunc i32 %xor76 to i8
  store i8 %conv81, i8* %inchar, align 1, !tbaa !0
  br label %cont87

if.else82:                                        ; preds = %if.else66
  %34 = load i8* %inptr.1, align 1, !tbaa !0
  store i8 %34, i8* %inchar, align 1, !tbaa !0
  br label %cont87

cont87:                                           ; preds = %cont64, %if.else82, %cont80
  %inptr.2 = phi i8* [ %incdec.ptr59, %cont64 ], [ %incdec.ptr74, %cont80 ], [ %incdec.ptr73, %if.else82 ]
  %call = call i32 @mbrtowc(i32* %wc, i8* %inchar, i32 1, %struct.__mbstate_t* @shiftstate) nounwind
  call void @__ioc_report_conversion(i32 319, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp93 = icmp eq i32 %call, -1
  br i1 %cmp93, label %while.end, label %ioc_bb100

ioc_bb100:                                        ; preds = %cont87
  call void @__ioc_report_conversion(i32 321, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp102 = icmp eq i32 %call, -2
  br i1 %cmp102, label %while.cond, label %if.end105

if.end105:                                        ; preds = %ioc_bb100
  store i8* %inptr.2, i8** %x, align 4, !tbaa !4
  %35 = load i32* %wc, align 4, !tbaa !2
  br label %return

while.end:                                        ; preds = %while.cond, %cont87
  store i64 0, i64* bitcast (%struct.__mbstate_t* @shiftstate to i64*), align 8
  %36 = load i8** %x, align 4, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i8* %36, i32 1
  store i8* %incdec.ptr106, i8** %x, align 4, !tbaa !4
  %37 = load i8* %36, align 1, !tbaa !0
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %cont109, label %ioc_bb108

ioc_bb108:                                        ; preds = %while.end
  %39 = sext i8 %37 to i64
  call void @__ioc_report_conversion(i32 329, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont109

cont109:                                          ; preds = %ioc_bb108, %while.end
  %conv110 = zext i8 %37 to i32
  br label %return

return:                                           ; preds = %cont109, %if.end105, %cont42
  %retval.0 = phi i32 [ %conv110, %cont109 ], [ %35, %if.end105 ], [ %conv43, %cont42 ]
  ret i32 %retval.0
}

declare i32 @iswalpha(i32) nounwind

declare i32 @iswalnum(i32) nounwind

declare i32 @iswcntrl(i32) nounwind

declare i32 @iswdigit(i32) nounwind

declare i32 @iswgraph(i32) nounwind

declare i32 @iswlower(i32) nounwind

declare i32 @iswprint(i32) nounwind

declare i32 @iswpunct(i32) nounwind

declare i32 @iswspace(i32) nounwind

declare i32 @iswupper(i32) nounwind

declare i32 @iswxdigit(i32) nounwind

declare i32 @wcsitype(i32, i32)

define i32 @mb_patmatchindex(i8* %range, i32 %ind, i32* nocapture %chr, i32* nocapture %mtp) nounwind {
entry:
  %range.addr = alloca i8*, align 4
  store i8* %range, i8** %range.addr, align 4, !tbaa !4
  store i32 -1, i32* %chr, align 4, !tbaa !2
  store i32 0, i32* %mtp, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %cont73.while.cond_crit_edge, %entry
  %0 = phi i8* [ %range, %entry ], [ %.pre, %cont73.while.cond_crit_edge ]
  %ind.addr.0 = phi i32 [ %ind, %entry ], [ %35, %cont73.while.cond_crit_edge ]
  %1 = load i8* %0, align 1, !tbaa !0
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.body
  %3 = sext i8 %1 to i64
  call void @__ioc_report_conversion(i32 3335, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.body
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %4, 4096
  %tobool5 = icmp eq i16 %and, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %cont
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4, !tbaa !4
  %5 = load i8* %0, align 1, !tbaa !0
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %if.then
  %7 = sext i8 %5 to i64
  call void @__ioc_report_conversion(i32 3336, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %if.then
  %conv9 = zext i8 %5 to i32
  call void @__ioc_report_conversion(i32 3336, i32 79, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 3336, i32 71, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv9, i32 131)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont8
  %11 = zext i8 %5 to i64
  call void @__ioc_report_sub_overflow(i32 3336, i32 52, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %11, i64 131, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %cont8, %ioc_bb14
  switch i32 %9, label %if.end71 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
    i32 2, label %sw.bb38
    i32 3, label %sw.bb38
    i32 4, label %sw.bb38
    i32 5, label %sw.bb38
    i32 6, label %sw.bb38
    i32 7, label %sw.bb38
    i32 8, label %sw.bb38
    i32 9, label %sw.bb38
    i32 10, label %sw.bb38
    i32 11, label %sw.bb38
    i32 12, label %sw.bb38
    i32 13, label %sw.bb38
    i32 14, label %sw.bb38
    i32 15, label %sw.bb38
    i32 16, label %sw.bb38
    i32 17, label %sw.bb38
    i32 19, label %sw.bb42
  ]

sw.bb:                                            ; preds = %cont15
  store i8* %0, i8** %range.addr, align 4, !tbaa !4
  %call = call fastcc i32 @metacharinc(i8** %range.addr)
  %tobool17 = icmp eq i32 %ind.addr.0, 0
  br i1 %tobool17, label %if.then18, label %if.end71

if.then18:                                        ; preds = %sw.bb
  %12 = icmp sgt i32 %call, -1
  br i1 %12, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %if.then18
  %13 = sext i32 %call to i64
  call void @__ioc_report_conversion(i32 3343, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %if.then18
  store i32 %call, i32* %chr, align 4, !tbaa !2
  br label %return

sw.bb38:                                          ; preds = %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15, %cont15
  %tobool39 = icmp eq i32 %ind.addr.0, 0
  br i1 %tobool39, label %if.then40, label %if.end71

if.then40:                                        ; preds = %sw.bb38
  store i32 %9, i32* %mtp, align 4, !tbaa !2
  br label %return

sw.bb42:                                          ; preds = %cont15
  %call43 = call fastcc i32 @metacharinc(i8** %range.addr)
  %call44 = call fastcc i32 @metacharinc(i8** %range.addr)
  %14 = icmp sgt i32 %call44, -1
  br i1 %14, label %cont47, label %ioc_bb46

ioc_bb46:                                         ; preds = %sw.bb42
  %15 = sext i32 %call44 to i64
  call void @__ioc_report_conversion(i32 3408, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont47

cont47:                                           ; preds = %ioc_bb46, %sw.bb42
  %16 = sext i32 %call43 to i64
  %17 = icmp sgt i32 %call43, -1
  br i1 %17, label %cont50, label %ioc_bb49

ioc_bb49:                                         ; preds = %cont47
  call void @__ioc_report_conversion(i32 3408, i32 45, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont50

cont50:                                           ; preds = %ioc_bb49, %cont47
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %call44, i32 %call43)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  %21 = zext i32 %call43 to i64
  br i1 %20, label %ioc_bb51, label %cont52

ioc_bb51:                                         ; preds = %cont50
  %22 = zext i32 %call44 to i64
  call void @__ioc_report_sub_overflow(i32 3408, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %22, i64 %21, i8 5) nounwind
  br label %cont52

cont52:                                           ; preds = %cont50, %ioc_bb51
  %cmp = icmp ult i32 %19, %ind.addr.0
  br i1 %cmp, label %if.end60, label %if.then54

if.then54:                                        ; preds = %cont52
  br i1 %17, label %cont57, label %ioc_bb56

ioc_bb56:                                         ; preds = %if.then54
  call void @__ioc_report_conversion(i32 3410, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont57

cont57:                                           ; preds = %ioc_bb56, %if.then54
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call43, i32 %ind.addr.0)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb58, label %cont59

ioc_bb58:                                         ; preds = %cont57
  %26 = zext i32 %ind.addr.0 to i64
  call void @__ioc_report_add_overflow(i32 3410, i32 35, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %21, i64 %26, i8 5) nounwind
  br label %cont59

cont59:                                           ; preds = %cont57, %ioc_bb58
  store i32 %24, i32* %chr, align 4, !tbaa !2
  br label %return

if.end60:                                         ; preds = %cont52
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ind.addr.0, i32 %19)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb61, label %if.end71

ioc_bb61:                                         ; preds = %if.end60
  %30 = zext i32 %19 to i64
  %31 = zext i32 %ind.addr.0 to i64
  call void @__ioc_report_sub_overflow(i32 3414, i32 15, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 %31, i64 %30, i8 5) nounwind
  br label %if.end71

if.else:                                          ; preds = %cont
  %call64 = call fastcc i32 @metacharinc(i8** %range.addr)
  %tobool65 = icmp eq i32 %ind.addr.0, 0
  br i1 %tobool65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.else
  %32 = icmp sgt i32 %call64, -1
  br i1 %32, label %cont69, label %ioc_bb68

ioc_bb68:                                         ; preds = %if.then66
  %33 = sext i32 %call64 to i64
  call void @__ioc_report_conversion(i32 3432, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont69

cont69:                                           ; preds = %ioc_bb68, %if.then66
  store i32 %call64, i32* %chr, align 4, !tbaa !2
  br label %return

if.end71:                                         ; preds = %ioc_bb61, %if.end60, %sw.bb, %sw.bb38, %if.else, %cont15
  %ind.addr.1 = phi i32 [ %ind.addr.0, %cont15 ], [ %ind.addr.0, %sw.bb38 ], [ %ind.addr.0, %sw.bb ], [ %ind.addr.0, %if.else ], [ %28, %if.end60 ], [ %28, %ioc_bb61 ]
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ind.addr.1, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb72, label %cont73

ioc_bb72:                                         ; preds = %if.end71
  %37 = zext i32 %ind.addr.1 to i64
  call void @__ioc_report_sub_overflow(i32 3436, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind
  br label %cont73

cont73:                                           ; preds = %if.end71, %ioc_bb72
  %tobool74 = icmp eq i32 %ind.addr.1, 0
  br i1 %tobool74, label %return, label %cont73.while.cond_crit_edge

cont73.while.cond_crit_edge:                      ; preds = %cont73
  %.pre = load i8** %range.addr, align 4, !tbaa !4
  br label %while.cond

return:                                           ; preds = %while.cond, %cont73, %cont69, %cont59, %if.then40, %cont21
  %retval.0 = phi i32 [ 1, %cont59 ], [ 1, %if.then40 ], [ 1, %cont21 ], [ 1, %cont69 ], [ 0, %cont73 ], [ 0, %while.cond ]
  ret i32 %retval.0
}

define i32 @patmatchrange(i8* %range, i32 %ch, i32* %indptr, i32* %mtp) nounwind {
entry:
  %range.addr = alloca i8*, align 4
  store i8* %range, i8** %range.addr, align 4, !tbaa !4
  %tobool = icmp ne i32* %indptr, null
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  store i32 0, i32* %indptr, align 4, !tbaa !2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %0 = load i8* %range, align 1, !tbaa !0
  %tobool1433 = icmp eq i8 %0, 0
  br i1 %tobool1433, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool18 = icmp eq i32* %mtp, null
  %cmp65 = icmp ult i32 %ch, 128
  %1 = icmp ult i32 %ch, 256
  %idxprom240 = and i32 %ch, 255
  %arrayidx241 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom240
  %2 = sext i32 %ch to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i8* [ %range, %for.body.lr.ph ], [ %incdec.ptr388, %for.inc ]
  %4 = phi i8 [ %0, %for.body.lr.ph ], [ %84, %for.inc ]
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %for.body
  %6 = sext i8 %4 to i64
  call void @__ioc_report_conversion(i32 3462, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %6, i8 1) nounwind
  %.pre = load i8* %3, align 1, !tbaa !0
  br label %cont

cont:                                             ; preds = %ioc_bb, %for.body
  %7 = phi i8 [ %.pre, %ioc_bb ], [ %4, %for.body ]
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %8 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %8, 4096
  %tobool6 = icmp eq i16 %and, 0
  %9 = sext i8 %7 to i64
  %10 = icmp sgt i8 %7, -1
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %cont
  br i1 %10, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %if.then7
  call void @__ioc_report_conversion(i32 3463, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %ioc_bb9, %if.then7
  %conv11 = zext i8 %7 to i32
  call void @__ioc_report_conversion(i32 3463, i32 75, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 3463, i32 67, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv11, i32 131)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont10
  %14 = zext i8 %7 to i64
  call void @__ioc_report_sub_overflow(i32 3463, i32 48, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %14, i64 131, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %cont10, %ioc_bb16
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %cont17
  store i32 %12, i32* %mtp, align 4, !tbaa !2
  br label %if.end20

if.end20:                                         ; preds = %cont17, %if.then19
  switch i32 %12, label %if.end382 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb47
    i32 3, label %sw.bb63
    i32 4, label %sw.bb69
    i32 5, label %sw.bb76
    i32 6, label %sw.bb92
    i32 7, label %sw.bb110
    i32 8, label %sw.bb128
    i32 9, label %sw.bb146
    i32 10, label %sw.bb164
    i32 11, label %sw.bb180
    i32 12, label %sw.bb198
    i32 13, label %sw.bb216
    i32 14, label %sw.bb234
    i32 15, label %sw.bb251
    i32 16, label %sw.bb268
    i32 17, label %sw.bb285
    i32 19, label %sw.bb302
  ]

sw.bb:                                            ; preds = %if.end20
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %range.addr, align 4, !tbaa !4
  %15 = load i8* %incdec.ptr, align 1, !tbaa !0
  %conv21 = sext i8 %15 to i32
  %xor = xor i32 %conv21, 32
  %notlhs = icmp sgt i8 %15, -1
  %notrhs = icmp slt i32 %xor, 256
  %16 = and i1 %notrhs, %notlhs
  br i1 %16, label %cont24, label %ioc_bb23

ioc_bb23:                                         ; preds = %sw.bb
  %17 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 3469, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont24

cont24:                                           ; preds = %ioc_bb23, %sw.bb
  %conv26 = and i32 %xor, 255
  %cmp = icmp eq i32 %conv26, %ch
  br i1 %cmp, label %return, label %if.end382

sw.bb30:                                          ; preds = %if.end20
  %call = call i16** @__ctype_b_loc() nounwind readnone
  %18 = load i16** %call, align 4, !tbaa !4
  %arrayidx31 = getelementptr inbounds i16* %18, i32 %ch
  %19 = load i16* %arrayidx31, align 2, !tbaa !5
  %and43 = and i16 %19, 1024
  %tobool44 = icmp eq i16 %and43, 0
  br i1 %tobool44, label %if.end382, label %return

sw.bb47:                                          ; preds = %if.end20
  %call48 = call i16** @__ctype_b_loc() nounwind readnone
  %20 = load i16** %call48, align 4, !tbaa !4
  %arrayidx49 = getelementptr inbounds i16* %20, i32 %ch
  %21 = load i16* %arrayidx49, align 2, !tbaa !5
  %and59 = and i16 %21, 8
  %tobool60 = icmp eq i16 %and59, 0
  br i1 %tobool60, label %if.end382, label %return

sw.bb63:                                          ; preds = %if.end20
  br i1 %cmp65, label %return, label %if.end382

sw.bb69:                                          ; preds = %if.end20
  switch i32 %ch, label %if.end382 [
    i32 32, label %return
    i32 9, label %return
  ]

sw.bb76:                                          ; preds = %if.end20
  %call77 = call i16** @__ctype_b_loc() nounwind readnone
  %22 = load i16** %call77, align 4, !tbaa !4
  %arrayidx78 = getelementptr inbounds i16* %22, i32 %ch
  %23 = load i16* %arrayidx78, align 2, !tbaa !5
  %and88 = and i16 %23, 2
  %tobool89 = icmp eq i16 %and88, 0
  br i1 %tobool89, label %if.end382, label %return

sw.bb92:                                          ; preds = %if.end20
  %call93 = call i16** @__ctype_b_loc() nounwind readnone
  %24 = load i16** %call93, align 4, !tbaa !4
  %arrayidx94 = getelementptr inbounds i16* %24, i32 %ch
  %25 = load i16* %arrayidx94, align 2, !tbaa !5
  %and106 = and i16 %25, 2048
  %tobool107 = icmp eq i16 %and106, 0
  br i1 %tobool107, label %if.end382, label %return

sw.bb110:                                         ; preds = %if.end20
  %call111 = call i16** @__ctype_b_loc() nounwind readnone
  %26 = load i16** %call111, align 4, !tbaa !4
  %arrayidx112 = getelementptr inbounds i16* %26, i32 %ch
  %27 = load i16* %arrayidx112, align 2, !tbaa !5
  %tobool125 = icmp slt i16 %27, 0
  br i1 %tobool125, label %return, label %if.end382

sw.bb128:                                         ; preds = %if.end20
  %call129 = call i16** @__ctype_b_loc() nounwind readnone
  %28 = load i16** %call129, align 4, !tbaa !4
  %arrayidx130 = getelementptr inbounds i16* %28, i32 %ch
  %29 = load i16* %arrayidx130, align 2, !tbaa !5
  %and142 = and i16 %29, 512
  %tobool143 = icmp eq i16 %and142, 0
  br i1 %tobool143, label %if.end382, label %return

sw.bb146:                                         ; preds = %if.end20
  %call147 = call i16** @__ctype_b_loc() nounwind readnone
  %30 = load i16** %call147, align 4, !tbaa !4
  %arrayidx148 = getelementptr inbounds i16* %30, i32 %ch
  %31 = load i16* %arrayidx148, align 2, !tbaa !5
  %and160 = and i16 %31, 16384
  %tobool161 = icmp eq i16 %and160, 0
  br i1 %tobool161, label %if.end382, label %return

sw.bb164:                                         ; preds = %if.end20
  %call165 = call i16** @__ctype_b_loc() nounwind readnone
  %32 = load i16** %call165, align 4, !tbaa !4
  %arrayidx166 = getelementptr inbounds i16* %32, i32 %ch
  %33 = load i16* %arrayidx166, align 2, !tbaa !5
  %and176 = and i16 %33, 4
  %tobool177 = icmp eq i16 %and176, 0
  br i1 %tobool177, label %if.end382, label %return

sw.bb180:                                         ; preds = %if.end20
  %call181 = call i16** @__ctype_b_loc() nounwind readnone
  %34 = load i16** %call181, align 4, !tbaa !4
  %arrayidx182 = getelementptr inbounds i16* %34, i32 %ch
  %35 = load i16* %arrayidx182, align 2, !tbaa !5
  %and194 = and i16 %35, 8192
  %tobool195 = icmp eq i16 %and194, 0
  br i1 %tobool195, label %if.end382, label %return

sw.bb198:                                         ; preds = %if.end20
  %call199 = call i16** @__ctype_b_loc() nounwind readnone
  %36 = load i16** %call199, align 4, !tbaa !4
  %arrayidx200 = getelementptr inbounds i16* %36, i32 %ch
  %37 = load i16* %arrayidx200, align 2, !tbaa !5
  %and212 = and i16 %37, 256
  %tobool213 = icmp eq i16 %and212, 0
  br i1 %tobool213, label %if.end382, label %return

sw.bb216:                                         ; preds = %if.end20
  %call217 = call i16** @__ctype_b_loc() nounwind readnone
  %38 = load i16** %call217, align 4, !tbaa !4
  %arrayidx218 = getelementptr inbounds i16* %38, i32 %ch
  %39 = load i16* %arrayidx218, align 2, !tbaa !5
  %and230 = and i16 %39, 4096
  %tobool231 = icmp eq i16 %and230, 0
  br i1 %tobool231, label %if.end382, label %return

sw.bb234:                                         ; preds = %if.end20
  br i1 %1, label %cont238, label %ioc_bb237

ioc_bb237:                                        ; preds = %sw.bb234
  call void @__ioc_report_conversion(i32 3553, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont238

cont238:                                          ; preds = %ioc_bb237, %sw.bb234
  %40 = load i16* %arrayidx241, align 2, !tbaa !5
  %and247 = and i16 %40, 128
  %tobool248 = icmp eq i16 %and247, 0
  br i1 %tobool248, label %if.end382, label %return

sw.bb251:                                         ; preds = %if.end20
  br i1 %1, label %cont255, label %ioc_bb254

ioc_bb254:                                        ; preds = %sw.bb251
  call void @__ioc_report_conversion(i32 3559, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont255

cont255:                                          ; preds = %ioc_bb254, %sw.bb251
  %41 = load i16* %arrayidx241, align 2, !tbaa !5
  %and264 = and i16 %41, 32
  %tobool265 = icmp eq i16 %and264, 0
  br i1 %tobool265, label %if.end382, label %return

sw.bb268:                                         ; preds = %if.end20
  br i1 %1, label %cont272, label %ioc_bb271

ioc_bb271:                                        ; preds = %sw.bb268
  call void @__ioc_report_conversion(i32 3565, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont272

cont272:                                          ; preds = %ioc_bb271, %sw.bb268
  %42 = load i16* %arrayidx241, align 2, !tbaa !5
  %and281 = and i16 %42, 8192
  %tobool282 = icmp eq i16 %and281, 0
  br i1 %tobool282, label %if.end382, label %return

sw.bb285:                                         ; preds = %if.end20
  br i1 %1, label %cont289, label %ioc_bb288

ioc_bb288:                                        ; preds = %sw.bb285
  call void @__ioc_report_conversion(i32 3571, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont289

cont289:                                          ; preds = %ioc_bb288, %sw.bb285
  %43 = load i16* %arrayidx241, align 2, !tbaa !5
  %and298 = and i16 %43, 1024
  %tobool299 = icmp eq i16 %and298, 0
  br i1 %tobool299, label %if.end382, label %return

sw.bb302:                                         ; preds = %if.end20
  %incdec.ptr303 = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr303, i8** %range.addr, align 4, !tbaa !4
  %44 = load i8* %incdec.ptr303, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3578, i32 56, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp307 = icmp eq i8 %44, -125
  br i1 %cmp307, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb302
  %arrayidx309 = getelementptr inbounds i8* %3, i32 2
  %45 = load i8* %arrayidx309, align 1, !tbaa !0
  %conv310 = sext i8 %45 to i32
  %xor311 = xor i32 %conv310, 32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb302
  %46 = load i8* %incdec.ptr303, align 1, !tbaa !0
  %conv312 = sext i8 %46 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor311, %cond.true ], [ %conv312, %cond.false ]
  %47 = icmp ult i32 %cond, 256
  br i1 %47, label %cont316, label %ioc_bb315

ioc_bb315:                                        ; preds = %cond.end
  %48 = sext i32 %cond to i64
  call void @__ioc_report_conversion(i32 3578, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont316

cont316:                                          ; preds = %ioc_bb315, %cond.end
  %conv318 = and i32 %cond, 255
  %call319 = call fastcc i32 @metacharinc(i8** %range.addr)
  %49 = load i8** %range.addr, align 4, !tbaa !4
  %50 = load i8* %49, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3580, i32 56, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp323 = icmp eq i8 %50, -125
  br i1 %cmp323, label %cond.true325, label %cond.false329

cond.true325:                                     ; preds = %cont316
  %arrayidx326 = getelementptr inbounds i8* %49, i32 1
  %51 = load i8* %arrayidx326, align 1, !tbaa !0
  %conv327 = sext i8 %51 to i32
  %xor328 = xor i32 %conv327, 32
  br label %cond.end331

cond.false329:                                    ; preds = %cont316
  %52 = load i8* %49, align 1, !tbaa !0
  %conv330 = sext i8 %52 to i32
  br label %cond.end331

cond.end331:                                      ; preds = %cond.false329, %cond.true325
  %cond332 = phi i32 [ %xor328, %cond.true325 ], [ %conv330, %cond.false329 ]
  %53 = icmp ult i32 %cond332, 256
  br i1 %53, label %cont336, label %ioc_bb335

ioc_bb335:                                        ; preds = %cond.end331
  %54 = sext i32 %cond332 to i64
  call void @__ioc_report_conversion(i32 3580, i32 33, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %54, i8 1) nounwind
  br label %cont336

cont336:                                          ; preds = %cond.end331, %ioc_bb335
  %conv338 = and i32 %cond332, 255
  %55 = load i8* %49, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 3581, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp342 = icmp eq i8 %55, -125
  br i1 %cmp342, label %if.then344, label %if.end346

if.then344:                                       ; preds = %cont336
  %incdec.ptr345 = getelementptr inbounds i8* %49, i32 1
  store i8* %incdec.ptr345, i8** %range.addr, align 4, !tbaa !4
  br label %if.end346

if.end346:                                        ; preds = %if.then344, %cont336
  %56 = phi i8* [ %incdec.ptr345, %if.then344 ], [ %49, %cont336 ]
  %cmp347 = icmp sgt i32 %conv318, %ch
  %cmp349 = icmp slt i32 %conv338, %ch
  %or.cond = or i1 %cmp347, %cmp349
  br i1 %or.cond, label %if.end359, label %if.then351

if.then351:                                       ; preds = %if.end346
  br i1 %tobool, label %if.then353, label %return

if.then353:                                       ; preds = %if.then351
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ch, i32 %conv318)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb354, label %cont355

ioc_bb354:                                        ; preds = %if.then353
  %60 = zext i32 %conv318 to i64
  call void @__ioc_report_sub_overflow(i32 3585, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %2, i64 %60, i8 13) nounwind
  br label %cont355

cont355:                                          ; preds = %if.then353, %ioc_bb354
  %61 = load i32* %indptr, align 4, !tbaa !2
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 %58)
  %63 = extractvalue { i32, i1 } %62, 0
  %64 = extractvalue { i32, i1 } %62, 1
  br i1 %64, label %ioc_bb356, label %cont357

ioc_bb356:                                        ; preds = %cont355
  %65 = sext i32 %58 to i64
  %66 = sext i32 %61 to i64
  call void @__ioc_report_add_overflow(i32 3585, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %66, i64 %65, i8 13) nounwind
  br label %cont357

cont357:                                          ; preds = %cont355, %ioc_bb356
  store i32 %63, i32* %indptr, align 4, !tbaa !2
  br label %return

if.end359:                                        ; preds = %if.end346
  %cmp362 = icmp ult i32 %conv318, %conv338
  %or.cond432 = and i1 %tobool, %cmp362
  br i1 %or.cond432, label %if.then364, label %if.end382

if.then364:                                       ; preds = %if.end359
  %67 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv338, i32 %conv318)
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb365, label %cont366

ioc_bb365:                                        ; preds = %if.then364
  %70 = zext i32 %conv318 to i64
  %71 = zext i32 %conv338 to i64
  call void @__ioc_report_sub_overflow(i32 3589, i32 28, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %71, i64 %70, i8 13) nounwind
  br label %cont366

cont366:                                          ; preds = %if.then364, %ioc_bb365
  %72 = load i32* %indptr, align 4, !tbaa !2
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 %68)
  %74 = extractvalue { i32, i1 } %73, 0
  %75 = extractvalue { i32, i1 } %73, 1
  br i1 %75, label %ioc_bb367, label %cont368

ioc_bb367:                                        ; preds = %cont366
  %76 = sext i32 %68 to i64
  %77 = sext i32 %72 to i64
  call void @__ioc_report_add_overflow(i32 3589, i32 22, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %77, i64 %76, i8 13) nounwind
  br label %cont368

cont368:                                          ; preds = %cont366, %ioc_bb367
  store i32 %74, i32* %indptr, align 4, !tbaa !2
  br label %if.end382

if.else:                                          ; preds = %cont
  br i1 %10, label %cont373, label %ioc_bb372

ioc_bb372:                                        ; preds = %if.else
  call void @__ioc_report_conversion(i32 3604, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont373

cont373:                                          ; preds = %ioc_bb372, %if.else
  %conv374 = zext i8 %7 to i32
  %cmp375 = icmp eq i32 %conv374, %ch
  br i1 %cmp375, label %if.then377, label %if.end382

if.then377:                                       ; preds = %cont373
  br i1 %tobool18, label %return, label %if.then379

if.then379:                                       ; preds = %if.then377
  store i32 0, i32* %mtp, align 4, !tbaa !2
  br label %return

if.end382:                                        ; preds = %sw.bb69, %sw.bb30, %sw.bb47, %sw.bb76, %sw.bb92, %sw.bb128, %sw.bb146, %sw.bb164, %sw.bb180, %sw.bb198, %sw.bb216, %cont238, %cont255, %cont272, %cont289, %cont373, %cont24, %sw.bb63, %sw.bb110, %cont368, %if.end359, %if.end20
  %78 = phi i8* [ %3, %sw.bb69 ], [ %3, %sw.bb30 ], [ %3, %sw.bb47 ], [ %3, %sw.bb76 ], [ %3, %sw.bb92 ], [ %3, %sw.bb128 ], [ %3, %sw.bb146 ], [ %3, %sw.bb164 ], [ %3, %sw.bb180 ], [ %3, %sw.bb198 ], [ %3, %sw.bb216 ], [ %3, %cont238 ], [ %3, %cont255 ], [ %3, %cont272 ], [ %3, %cont289 ], [ %3, %cont373 ], [ %incdec.ptr, %cont24 ], [ %3, %sw.bb63 ], [ %3, %sw.bb110 ], [ %56, %cont368 ], [ %56, %if.end359 ], [ %3, %if.end20 ]
  br i1 %tobool, label %if.then384, label %for.inc

if.then384:                                       ; preds = %if.end382
  %79 = load i32* %indptr, align 4, !tbaa !2
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %79, i32 1)
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  br i1 %82, label %ioc_bb385, label %cont386

ioc_bb385:                                        ; preds = %if.then384
  %83 = sext i32 %79 to i64
  call void @__ioc_report_add_overflow(i32 3610, i32 17, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %83, i64 1, i8 13) nounwind
  br label %cont386

cont386:                                          ; preds = %if.then384, %ioc_bb385
  store i32 %81, i32* %indptr, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end382, %cont386
  %incdec.ptr388 = getelementptr inbounds i8* %78, i32 1
  store i8* %incdec.ptr388, i8** %range.addr, align 4, !tbaa !4
  %84 = load i8* %incdec.ptr388, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %84, 0
  br i1 %tobool1, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %cont289, %cont272, %cont255, %cont238, %sw.bb216, %sw.bb198, %sw.bb180, %sw.bb164, %sw.bb146, %sw.bb128, %sw.bb110, %sw.bb92, %sw.bb76, %sw.bb69, %sw.bb69, %sw.bb63, %sw.bb47, %sw.bb30, %cont24, %for.inc, %if.then379, %if.then377, %if.then351, %cont357
  %retval.0 = phi i32 [ 1, %cont357 ], [ 1, %if.then351 ], [ 1, %if.then377 ], [ 1, %if.then379 ], [ 0, %for.cond.preheader ], [ 1, %cont289 ], [ 1, %cont272 ], [ 1, %cont255 ], [ 1, %cont238 ], [ 1, %sw.bb216 ], [ 1, %sw.bb198 ], [ 1, %sw.bb180 ], [ 1, %sw.bb164 ], [ 1, %sw.bb146 ], [ 1, %sw.bb128 ], [ 1, %sw.bb110 ], [ 1, %sw.bb92 ], [ 1, %sw.bb76 ], [ 1, %sw.bb69 ], [ 1, %sw.bb69 ], [ 1, %sw.bb63 ], [ 1, %sw.bb47 ], [ 1, %sw.bb30 ], [ 1, %cont24 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare i16** @__ctype_b_loc() nounwind readnone

define void @freepatprog(%struct.patprog* %prog) nounwind {
entry:
  %switch = icmp ult %struct.patprog* %prog, inttoptr (i32 3 to %struct.patprog*)
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.patprog* %prog to i8*
  %size = getelementptr inbounds %struct.patprog* %prog, i32 0, i32 1
  %1 = load i32* %size, align 4, !tbaa !3
  tail call void @zfree(i8* %0, i32 %1) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) nounwind

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define internal fastcc i8* @charnext(i8* %x, i8* %y) nounwind {
entry:
  %wc = alloca i32, align 4
  %0 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %0, 4096
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %x, align 1, !tbaa !0
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %add.ptr = getelementptr inbounds i8* %x, i32 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = sext i8 %1 to i64
  call void @__ioc_report_conversion(i32 1728, i32 54, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  %sub.ptr.lhs.cast = ptrtoint i8* %y to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %x to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %4, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.end
  %5 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 1730, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %if.end
  %call = call i32 @mbrtowc(i32* %wc, i8* %x, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate) nounwind
  call void @__ioc_report_conversion(i32 1731, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then20, label %ioc_bb16

ioc_bb16:                                         ; preds = %cont5
  call void @__ioc_report_conversion(i32 1731, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -2, i8 1) nounwind
  switch i32 %call, label %cond.end [
    i32 -2, label %if.then20
    i32 0, label %cond.false
  ]

if.then20:                                        ; preds = %ioc_bb16, %cont5
  store i64 0, i64* bitcast (%struct.__mbstate_t* @shiftstate to i64*), align 8
  %add.ptr21 = getelementptr inbounds i8* %x, i32 1
  br label %return

cond.false:                                       ; preds = %ioc_bb16
  br label %cond.end

cond.end:                                         ; preds = %ioc_bb16, %cond.false
  %cond = phi i32 [ 1, %cond.false ], [ %call, %ioc_bb16 ]
  %add.ptr26 = getelementptr inbounds i8* %x, i32 %cond
  br label %return

return:                                           ; preds = %cond.end, %if.then20, %if.then
  %retval.0 = phi i8* [ %add.ptr21, %if.then20 ], [ %add.ptr26, %cond.end ], [ %add.ptr, %if.then ]
  ret i8* %retval.0
}

define internal fastcc i32 @charrefinc(i8** nocapture %x, i8* %y, i32* nocapture %z) nounwind {
entry:
  %wc = alloca i32, align 4
  %0 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %0, 4096
  %tobool = icmp eq i32 %and, 0
  %.pre = load i8** %x, align 4, !tbaa !4
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %.pre, align 1, !tbaa !0
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8* %.pre, i32 1
  store i8* %incdec.ptr, i8** %x, align 4, !tbaa !4
  %3 = load i8* %.pre, align 1, !tbaa !0
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.then
  %5 = sext i8 %3 to i64
  call void @__ioc_report_conversion(i32 1750, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %if.then
  %conv6 = zext i8 %3 to i32
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = sext i8 %1 to i64
  call void @__ioc_report_conversion(i32 1749, i32 54, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %6, i8 1) nounwind
  %7 = load i8** %x, align 4, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %y to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %8, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %if.end
  %9 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 1751, i32 27, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %9, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %if.end
  %call = call i32 @mbrtowc(i32* %wc, i8* %7, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate) nounwind
  call void @__ioc_report_conversion(i32 1752, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then24, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont9
  call void @__ioc_report_conversion(i32 1752, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -2, i8 1) nounwind
  switch i32 %call, label %cond.end [
    i32 -2, label %if.then24
    i32 0, label %cond.false
  ]

if.then24:                                        ; preds = %ioc_bb20, %cont9
  store i32 1, i32* %z, align 4, !tbaa !2
  store i64 0, i64* bitcast (%struct.__mbstate_t* @shiftstate to i64*), align 8
  %10 = load i8** %x, align 4, !tbaa !4
  %incdec.ptr25 = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr25, i8** %x, align 4, !tbaa !4
  %11 = load i8* %10, align 1, !tbaa !0
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %if.then24
  %13 = sext i8 %11 to i64
  call void @__ioc_report_conversion(i32 1757, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont28

cont28:                                           ; preds = %ioc_bb27, %if.then24
  %conv29 = zext i8 %11 to i32
  br label %return

cond.false:                                       ; preds = %ioc_bb20
  br label %cond.end

cond.end:                                         ; preds = %ioc_bb20, %cond.false
  %cond = phi i32 [ 1, %cond.false ], [ %call, %ioc_bb20 ]
  %14 = load i8** %x, align 4, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %14, i32 %cond
  store i8* %add.ptr, i8** %x, align 4, !tbaa !4
  %15 = load i32* %wc, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %cond.end, %cont28, %cont5
  %retval.0 = phi i32 [ %conv29, %cont28 ], [ %15, %cond.end ], [ %conv6, %cont5 ]
  ret i32 %retval.0
}

declare i32 @towlower(i32) nounwind

declare i32 @towupper(i32) nounwind

define internal fastcc i32 @charref(i8* %x, i8* %y) nounwind {
entry:
  %wc = alloca i32, align 4
  %0 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %0, 4096
  %tobool = icmp eq i32 %and, 0
  %.pre = load i8* %x, align 1, !tbaa !0
  %1 = icmp sgt i8 %.pre, -1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  br i1 %1, label %cont5, label %if.end

if.then:                                          ; preds = %entry
  br i1 %1, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.then
  %2 = sext i8 %.pre to i64
  call void @__ioc_report_conversion(i32 1711, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %lor.lhs.false, %ioc_bb4, %if.then
  %conv6 = zext i8 %.pre to i32
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = sext i8 %.pre to i64
  call void @__ioc_report_conversion(i32 1710, i32 54, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  %sub.ptr.lhs.cast = ptrtoint i8* %y to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %x to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = icmp sgt i32 %sub.ptr.sub, -1
  br i1 %4, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %if.end
  %5 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_conversion(i32 1712, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %if.end
  %call = call i32 @mbrtowc(i32* %wc, i8* %x, i32 %sub.ptr.sub, %struct.__mbstate_t* @shiftstate) nounwind
  call void @__ioc_report_conversion(i32 1713, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then24, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont9
  call void @__ioc_report_conversion(i32 1713, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp22 = icmp eq i32 %call, -2
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %ioc_bb20, %cont9
  store i64 0, i64* bitcast (%struct.__mbstate_t* @shiftstate to i64*), align 8
  %6 = load i8* %x, align 1, !tbaa !0
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %cont27, label %ioc_bb26

ioc_bb26:                                         ; preds = %if.then24
  %8 = sext i8 %6 to i64
  call void @__ioc_report_conversion(i32 1717, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont27

cont27:                                           ; preds = %ioc_bb26, %if.then24
  %conv28 = zext i8 %6 to i32
  br label %return

if.end29:                                         ; preds = %ioc_bb20
  %9 = load i32* %wc, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.end29, %cont27, %cont5
  %retval.0 = phi i32 [ %conv28, %cont27 ], [ %9, %if.end29 ], [ %conv6, %cont5 ]
  ret i32 %retval.0
}

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i8* @llvm.stacksave() nounwind

declare void @llvm.stackrestore(i8*) nounwind

define internal fastcc i32 @patcompbranch(i32* nocapture %flagp) nounwind {
entry:
  %up.i134 = alloca %union.upat, align 4
  %up.i128 = alloca %union.upat, align 4
  %up.i = alloca %union.upat, align 4
  %flags = alloca i32, align 4
  %ignore = alloca i32, align 4
  %assert = alloca i32, align 4
  %up = alloca %union.upat, align 4
  store i32 0, i32* %flags, align 4, !tbaa !2
  store i32 4, i32* %flagp, align 4, !tbaa !2
  %0 = bitcast %union.upat* %up.i128 to i8*
  %l.i129 = getelementptr inbounds %union.upat* %up.i128, i32 0, i32 0
  %l = getelementptr inbounds %union.upat* %up, i32 0, i32 0
  %1 = bitcast %union.upat* %up to i8*
  %2 = bitcast %union.upat* %up.i to i8*
  %l.i = getelementptr inbounds %union.upat* %up.i, i32 0, i32 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then111, %if.else113, %entry
  %starter.0.ph = phi i32 [ 0, %entry ], [ %latest.0.starter.0, %if.else113 ], [ %latest.0.starter.0, %if.then111 ]
  %chain.0.ph = phi i32 [ 0, %entry ], [ %latest.0, %if.else113 ], [ %latest.0, %if.then111 ]
  br label %while.cond

while.cond:                                       ; preds = %if.else80, %if.end70, %if.then65, %while.cond.outer
  %3 = load i8** @patendseg, align 4, !tbaa !4
  %4 = load i8** @patparse, align 4, !tbaa !4
  %5 = load i8* %4, align 1, !tbaa !0
  %conv = sext i8 %5 to i32
  %6 = load i32* @patendseglen, align 4, !tbaa !2
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.cond
  %8 = sext i32 %6 to i64
  call void @__ioc_report_conversion(i32 801, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.cond
  %call = call i8* @memchr(i8* %3, i32 %conv, i32 %6) nounwind readonly
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %cont
  %9 = load i8** @patparse, align 4, !tbaa !4
  %10 = load i8* %9, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 801, i32 81, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp = icmp eq i8 %10, -106
  br i1 %cmp, label %land.lhs.true, label %while.end

land.lhs.true:                                    ; preds = %lor.rhs
  %11 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %11, i32 1
  %12 = load i8* %arrayidx, align 1, !tbaa !0
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i8 %12, 47
  br i1 %cmp6, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i8** @patendseg, align 4, !tbaa !4
  %14 = load i32* @patendseglen, align 4, !tbaa !2
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %land.rhs
  %16 = sext i32 %14 to i64
  call void @__ioc_report_conversion(i32 801, i32 141, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %land.rhs
  %call13 = call i8* @memchr(i8* %13, i32 %conv5, i32 %14) nounwind readonly
  %tobool14 = icmp eq i8* %call13, null
  br i1 %tobool14, label %while.end, label %while.body

while.body:                                       ; preds = %cont12, %cont
  %17 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool16 = icmp eq i8 %17, 0
  br i1 %tobool16, label %if.else96, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %while.body
  %18 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !0
  %tobool18 = icmp eq i8 %18, 0
  br i1 %tobool18, label %land.lhs.true19, label %lor.lhs.false

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %19 = load i8** @patparse, align 4, !tbaa !4
  %20 = load i8* %19, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 802, i32 61, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp23 = icmp eq i8 %20, -120
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %21 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8* %21, i32 1
  %22 = load i8* %arrayidx26, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 802, i32 93, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp30 = icmp eq i8 %22, -124
  br i1 %cmp30, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true17, %land.lhs.true25, %land.lhs.true19
  %23 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 91), align 1, !tbaa !0
  %tobool33 = icmp eq i8 %23, 0
  br i1 %tobool33, label %if.else85, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %24 = load i8** @patparse, align 4, !tbaa !4
  %25 = load i8* %24, align 1, !tbaa !0
  %cmp36 = icmp eq i8 %25, 64
  br i1 %cmp36, label %land.lhs.true38, label %if.else85

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %arrayidx39 = getelementptr inbounds i8* %24, i32 1
  %26 = load i8* %arrayidx39, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 802, i32 160, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp43 = icmp eq i8 %26, -120
  br i1 %cmp43, label %land.lhs.true45, label %if.else85

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %27 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx46 = getelementptr inbounds i8* %27, i32 2
  %28 = load i8* %arrayidx46, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 802, i32 192, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp50 = icmp eq i8 %28, -124
  br i1 %cmp50, label %if.then, label %if.else85

if.then:                                          ; preds = %land.lhs.true45, %land.lhs.true25
  %29 = load i8** @patparse, align 4, !tbaa !4
  %30 = load i32* @patglobflags, align 4, !tbaa !2
  %31 = load i8* %29, align 1, !tbaa !0
  %cmp53 = icmp eq i8 %31, 64
  %cond = select i1 %cmp53, i32 3, i32 2
  %add.ptr = getelementptr inbounds i8* %29, i32 %cond
  store i8* %add.ptr, i8** @patparse, align 4, !tbaa !4
  %call55 = call i32 @patgetglobflags(i8** @patparse, i32* %assert, i32* %ignore)
  %tobool56 = icmp eq i32 %call55, 0
  br i1 %tobool56, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %32 = load i32* %ignore, align 4, !tbaa !2
  %tobool58 = icmp eq i32 %32, 0
  br i1 %tobool58, label %if.then59, label %if.else80

if.then59:                                        ; preds = %if.end
  %33 = load i32* %assert, align 4, !tbaa !3
  %tobool60 = icmp eq i32 %33, 0
  br i1 %tobool60, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @llvm.lifetime.start(i64 -1, i8* %2) nounwind
  %34 = load i8** @patcode, align 4, !tbaa !4
  %35 = load i8** @patout, align 4, !tbaa !4
  store i32 %33, i32* %l.i, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i = ptrtoint i8* %35 to i32
  %sub.ptr.lhs.cast.i = ptrtoint i8* %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call fastcc void @patadd(i8* %2, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %2) nounwind
  store i32 0, i32* %flags, align 4, !tbaa !2
  br label %if.end99

if.else:                                          ; preds = %if.then59
  %36 = load i8** @patstart, align 4, !tbaa !4
  %cmp63 = icmp eq i8* %29, %36
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else
  %37 = load i32* @patglobflags, align 4, !tbaa !2
  %38 = load i8** @patout, align 4, !tbaa !4
  %globflags = getelementptr inbounds i8* %38, i32 16
  %39 = bitcast i8* %globflags to i32*
  store i32 %37, i32* %39, align 4, !tbaa !2
  br label %while.cond

if.else66:                                        ; preds = %if.else
  %40 = load i8** @patparse, align 4, !tbaa !4
  %41 = load i8* %40, align 1, !tbaa !0
  %tobool67 = icmp eq i8 %41, 0
  br i1 %tobool67, label %while.end, label %if.end70

if.end70:                                         ; preds = %if.else66
  %42 = load i32* @patglobflags, align 4, !tbaa !2
  %cmp71 = icmp eq i32 %30, %42
  br i1 %cmp71, label %while.cond, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %43 = load i8** @patcode, align 4, !tbaa !4
  %44 = load i8** @patout, align 4, !tbaa !4
  store i32 8, i32* %l.i129, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i130 = ptrtoint i8* %44 to i32
  %sub.ptr.lhs.cast.i131 = ptrtoint i8* %43 to i32
  %sub.ptr.sub.i132 = sub i32 %sub.ptr.lhs.cast.i131, %sub.ptr.rhs.cast.i130
  %sub.ptr.div.i133 = ashr exact i32 %sub.ptr.sub.i132, 2
  call fastcc void @patadd(i8* %0, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  %45 = load i32* @patglobflags, align 4, !tbaa !2
  store i32 %45, i32* %l, align 4, !tbaa !3
  call fastcc void @patadd(i8* %1, i32 0, i32 4, i32 0)
  br label %if.end99

if.else80:                                        ; preds = %if.end
  %46 = load i8** @patparse, align 4, !tbaa !4
  %47 = load i8* %46, align 1, !tbaa !0
  %tobool81 = icmp eq i8 %47, 0
  br i1 %tobool81, label %while.end, label %while.cond

if.else85:                                        ; preds = %land.lhs.true45, %land.lhs.true38, %land.lhs.true34, %lor.lhs.false
  %.pr = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool87 = icmp eq i8 %.pr, 0
  br i1 %tobool87, label %if.else96, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.else85
  %48 = load i8** @patparse, align 4, !tbaa !4
  %49 = load i8* %48, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 856, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 134, i8 1) nounwind
  %cmp92 = icmp eq i8 %49, -122
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %land.lhs.true88
  %50 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8* %50, i32 1
  store i8* %incdec.ptr, i8** @patparse, align 4, !tbaa !4
  %call95 = call fastcc i32 @patcompnot(i32 0, i32* %flags)
  br label %if.end99

if.else96:                                        ; preds = %while.body, %if.else85, %land.lhs.true88
  %call97 = call fastcc i32 @patcomppiece(i32* %flags)
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.else96, %if.then73, %if.then61
  %latest.0 = phi i32 [ %sub.ptr.div.i, %if.then61 ], [ %sub.ptr.div.i133, %if.then73 ], [ %call95, %if.then94 ], [ %call97, %if.else96 ]
  %tobool100 = icmp eq i32 %latest.0, 0
  br i1 %tobool100, label %return, label %if.end102

if.end102:                                        ; preds = %if.end99
  %tobool103 = icmp eq i32 %starter.0.ph, 0
  %latest.0.starter.0 = select i1 %tobool103, i32 %latest.0, i32 %starter.0.ph
  %51 = load i32* %flags, align 4, !tbaa !2
  %and = and i32 %51, 4
  %tobool106 = icmp eq i32 %and, 0
  br i1 %tobool106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end102
  %52 = load i32* %flagp, align 4, !tbaa !2
  %and108 = and i32 %52, -5
  store i32 %and108, i32* %flagp, align 4, !tbaa !2
  br label %if.end109

if.end109:                                        ; preds = %if.end102, %if.then107
  %tobool110 = icmp eq i32 %chain.0.ph, 0
  br i1 %tobool110, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.end109
  %and112 = and i32 %51, 2
  %53 = load i32* %flagp, align 4, !tbaa !2
  %or = or i32 %53, %and112
  store i32 %or, i32* %flagp, align 4, !tbaa !2
  br label %while.cond.outer

if.else113:                                       ; preds = %if.end109
  call fastcc void @pattail(i32 %chain.0.ph, i32 %latest.0)
  br label %while.cond.outer

while.end:                                        ; preds = %cont12, %land.lhs.true, %if.else80, %if.else66, %lor.rhs
  %tobool115 = icmp eq i32 %chain.0.ph, 0
  br i1 %tobool115, label %if.then116, label %return

if.then116:                                       ; preds = %while.end
  %54 = bitcast %union.upat* %up.i134 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %54) nounwind
  %55 = load i8** @patcode, align 4, !tbaa !4
  %56 = load i8** @patout, align 4, !tbaa !4
  %l.i135 = getelementptr inbounds %union.upat* %up.i134, i32 0, i32 0
  store i32 5, i32* %l.i135, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i136 = ptrtoint i8* %56 to i32
  %sub.ptr.lhs.cast.i137 = ptrtoint i8* %55 to i32
  %sub.ptr.sub.i138 = sub i32 %sub.ptr.lhs.cast.i137, %sub.ptr.rhs.cast.i136
  %sub.ptr.div.i139 = ashr exact i32 %sub.ptr.sub.i138, 2
  call fastcc void @patadd(i8* %54, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %54) nounwind
  br label %return

return:                                           ; preds = %if.then, %if.end99, %if.then116, %while.end
  %retval.0 = phi i32 [ %starter.0.ph, %while.end ], [ %sub.ptr.div.i139, %if.then116 ], [ 0, %if.end99 ], [ 0, %if.then ]
  ret i32 %retval.0
}

define internal fastcc void @pattail(i32 %p, i32 %val) nounwind {
entry:
  %0 = load i8** @patout, align 4, !tbaa !4
  %1 = bitcast i8* %0 to %union.upat*
  %add.ptr = getelementptr inbounds %union.upat* %1, i32 %p
  br label %for.cond

for.cond:                                         ; preds = %cond.end6, %entry
  %scan.0 = phi %union.upat* [ %add.ptr, %entry ], [ %add.ptr3, %cond.end6 ]
  %l = getelementptr inbounds %union.upat* %scan.0, i32 0, i32 0
  %2 = load i32* %l, align 4, !tbaa !3
  %shr = ashr i32 %2, 8
  %tobool = icmp eq i32 %shr, 0
  %and10.pre = and i32 %2, 255
  br i1 %tobool, label %for.end, label %cond.end6

cond.end6:                                        ; preds = %for.cond
  %cmp = icmp eq i32 %and10.pre, 3
  %idx.neg = sub i32 0, %shr
  %idx.neg.sink = select i1 %cmp, i32 %idx.neg, i32 %shr
  %add.ptr3 = getelementptr inbounds %union.upat* %scan.0, i32 %idx.neg.sink
  %tobool8 = icmp eq %union.upat* %add.ptr3, null
  br i1 %tobool8, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %cond.end6
  %cmp11 = icmp eq i32 %and10.pre, 3
  %sub.ptr.lhs.cast = ptrtoint %union.upat* %scan.0 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  br i1 %cmp11, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %for.end
  %3 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.div, i32 %val)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb13, label %cond.end22

ioc_bb13:                                         ; preds = %cond.true12
  %6 = sext i32 %val to i64
  %7 = sext i32 %sub.ptr.div to i64
  tail call void @__ioc_report_sub_overflow(i32 1659, i32 65, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %7, i64 %6, i8 13) nounwind
  br label %cond.end22

cond.false15:                                     ; preds = %for.end
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val, i32 %sub.ptr.div)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb20, label %cond.end22

ioc_bb20:                                         ; preds = %cond.false15
  %11 = sext i32 %sub.ptr.div to i64
  %12 = sext i32 %val to i64
  tail call void @__ioc_report_sub_overflow(i32 1659, i32 77, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %12, i64 %11, i8 13) nounwind
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true12, %cond.false15, %ioc_bb20, %ioc_bb13
  %cond23 = phi i32 [ %4, %ioc_bb13 ], [ %4, %cond.true12 ], [ %9, %ioc_bb20 ], [ %9, %cond.false15 ]
  %13 = icmp ult i32 %cond23, 8388608
  br i1 %13, label %cont27, label %ioc_bb26

ioc_bb26:                                         ; preds = %cond.end22
  %14 = sext i32 %cond23 to i64
  tail call void @__ioc_report_shl_strict(i32 1660, i32 23, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %14, i64 8, i8 13) nounwind
  br label %cont27

cont27:                                           ; preds = %cond.end22, %ioc_bb26
  %shl = shl i32 %cond23, 8
  %15 = load i32* %l, align 4, !tbaa !3
  %or = or i32 %15, %shl
  store i32 %or, i32* %l, align 4, !tbaa !3
  ret void
}

declare i8* @memchr(i8*, i32, i32) nounwind readonly

define internal fastcc void @patoptail(i32 %p, i32 %val) nounwind {
entry:
  %0 = load i8** @patout, align 4, !tbaa !4
  %1 = bitcast i8* %0 to %union.upat*
  %l = getelementptr inbounds %union.upat* %1, i32 %p, i32 0
  %2 = load i32* %l, align 4, !tbaa !3
  %and = and i32 %2, 255
  %tobool = icmp eq i32 %p, 0
  br i1 %tobool, label %if.end9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i32 %2, 32
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end9, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq i32 %and, 32
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %p, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  %6 = sext i32 %p to i64
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %5, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then4
  tail call void @__ioc_report_add_overflow(i32 1672, i32 15, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then4, %ioc_bb
  tail call fastcc void @pattail(i32 %4, i32 %val)
  br label %if.end9

if.else:                                          ; preds = %if.end
  br i1 %5, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %if.else
  tail call void @__ioc_report_add_overflow(i32 1674, i32 15, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %if.else, %ioc_bb5
  %7 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %cont6
  %10 = sext i32 %4 to i64
  tail call void @__ioc_report_add_overflow(i32 1674, i32 19, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %cont6, %ioc_bb7
  tail call fastcc void @pattail(i32 %8, i32 %val)
  br label %if.end9

if.end9:                                          ; preds = %lor.lhs.false, %entry, %cont8, %cont
  ret void
}

define internal fastcc i32 @patcompnot(i32 %paren, i32* nocapture %flagsp) nounwind {
entry:
  %up.i37 = alloca %union.upat, align 4
  %up.i31 = alloca %union.upat, align 4
  %up.i25 = alloca %union.upat, align 4
  %up.i19 = alloca %union.upat, align 4
  %up.i13 = alloca %union.upat, align 4
  %up.i = alloca %union.upat, align 4
  %up = alloca %union.upat, align 4
  %dummy = alloca i32, align 4
  store i32 2, i32* %flagsp, align 4, !tbaa !2
  %0 = bitcast %union.upat* %up.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %1 = load i8** @patcode, align 4, !tbaa !4
  %2 = load i8** @patout, align 4, !tbaa !4
  %l.i = getelementptr inbounds %union.upat* %up.i, i32 0, i32 0
  store i32 32, i32* %l.i, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i = ptrtoint i8* %2 to i32
  %sub.ptr.lhs.cast.i = ptrtoint i8* %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call fastcc void @patadd(i8* %0, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  %3 = bitcast %union.upat* %up.i13 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %3) nounwind
  %4 = load i8** @patcode, align 4, !tbaa !4
  %5 = load i8** @patout, align 4, !tbaa !4
  %l.i14 = getelementptr inbounds %union.upat* %up.i13, i32 0, i32 0
  store i32 67, i32* %l.i14, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i15 = ptrtoint i8* %5 to i32
  %sub.ptr.lhs.cast.i16 = ptrtoint i8* %4 to i32
  %sub.ptr.sub.i17 = sub i32 %sub.ptr.lhs.cast.i16, %sub.ptr.rhs.cast.i15
  %sub.ptr.div.i18 = ashr exact i32 %sub.ptr.sub.i17, 2
  call fastcc void @patadd(i8* %3, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %3) nounwind
  %6 = bitcast %union.upat* %up.i19 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) nounwind
  %7 = load i8** @patcode, align 4, !tbaa !4
  %8 = load i8** @patout, align 4, !tbaa !4
  %l.i20 = getelementptr inbounds %union.upat* %up.i19, i32 0, i32 0
  store i32 1, i32* %l.i20, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i21 = ptrtoint i8* %8 to i32
  %sub.ptr.lhs.cast.i22 = ptrtoint i8* %7 to i32
  %sub.ptr.sub.i23 = sub i32 %sub.ptr.lhs.cast.i22, %sub.ptr.rhs.cast.i21
  %sub.ptr.div.i24 = ashr exact i32 %sub.ptr.sub.i23, 2
  call fastcc void @patadd(i8* %6, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %6) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i18, i32 %sub.ptr.div.i24)
  %9 = bitcast %union.upat* %up.i25 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind
  %10 = load i8** @patcode, align 4, !tbaa !4
  %11 = load i8** @patout, align 4, !tbaa !4
  %l.i26 = getelementptr inbounds %union.upat* %up.i25, i32 0, i32 0
  store i32 48, i32* %l.i26, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i27 = ptrtoint i8* %11 to i32
  %sub.ptr.lhs.cast.i28 = ptrtoint i8* %10 to i32
  %sub.ptr.sub.i29 = sub i32 %sub.ptr.lhs.cast.i28, %sub.ptr.rhs.cast.i27
  %sub.ptr.div.i30 = ashr exact i32 %sub.ptr.sub.i29, 2
  call fastcc void @patadd(i8* %9, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i, i32 %sub.ptr.div.i30)
  %12 = getelementptr inbounds %union.upat* %up, i32 0, i32 0
  store i32 0, i32* %12, align 4, !tbaa !4
  %13 = bitcast %union.upat* %up to i8*
  call fastcc void @patadd(i8* %13, i32 0, i32 4, i32 0)
  %tobool = icmp eq i32 %paren, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call4 = call fastcc i32 @patcompswitch(i32 1, i32* %dummy)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call5 = call fastcc i32 @patcompbranch(i32* %dummy)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %call5, %cond.false ]
  %tobool6 = icmp eq i32 %cond, 0
  br i1 %tobool6, label %return, label %if.end

if.end:                                           ; preds = %cond.end
  %14 = bitcast %union.upat* %up.i31 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) nounwind
  %15 = load i8** @patcode, align 4, !tbaa !4
  %16 = load i8** @patout, align 4, !tbaa !4
  %l.i32 = getelementptr inbounds %union.upat* %up.i31, i32 0, i32 0
  store i32 2, i32* %l.i32, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i33 = ptrtoint i8* %16 to i32
  %sub.ptr.lhs.cast.i34 = ptrtoint i8* %15 to i32
  %sub.ptr.sub.i35 = sub i32 %sub.ptr.lhs.cast.i34, %sub.ptr.rhs.cast.i33
  %sub.ptr.div.i36 = ashr exact i32 %sub.ptr.sub.i35, 2
  call fastcc void @patadd(i8* %14, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %14) nounwind
  call fastcc void @pattail(i32 %cond, i32 %sub.ptr.div.i36)
  %17 = bitcast %union.upat* %up.i37 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) nounwind
  %18 = load i8** @patcode, align 4, !tbaa !4
  %19 = load i8** @patout, align 4, !tbaa !4
  %l.i38 = getelementptr inbounds %union.upat* %up.i37, i32 0, i32 0
  store i32 5, i32* %l.i38, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i39 = ptrtoint i8* %19 to i32
  %sub.ptr.lhs.cast.i40 = ptrtoint i8* %18 to i32
  %sub.ptr.sub.i41 = sub i32 %sub.ptr.lhs.cast.i40, %sub.ptr.rhs.cast.i39
  %sub.ptr.div.i42 = ashr exact i32 %sub.ptr.sub.i41, 2
  call fastcc void @patadd(i8* %17, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %17) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i24, i32 %sub.ptr.div.i42)
  call fastcc void @pattail(i32 %sub.ptr.div.i30, i32 %sub.ptr.div.i42)
  br label %return

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi i32 [ %sub.ptr.div.i, %if.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

define internal fastcc i32 @patcomppiece(i32* nocapture %flagp) nounwind {
entry:
  %up.i884 = alloca %union.upat, align 4
  %up.i878 = alloca %union.upat, align 4
  %up.i872 = alloca %union.upat, align 4
  %up.i866 = alloca %union.upat, align 4
  %up.i860 = alloca %union.upat, align 4
  %up.i854 = alloca %union.upat, align 4
  %up.i848 = alloca %union.upat, align 4
  %up.i842 = alloca %union.upat, align 4
  %up.i836 = alloca %union.upat, align 4
  %up.i830 = alloca %union.upat, align 4
  %up.i824 = alloca %union.upat, align 4
  %up.i818 = alloca %union.upat, align 4
  %up.i812 = alloca %union.upat, align 4
  %up.i806 = alloca %union.upat, align 4
  %up.i800 = alloca %union.upat, align 4
  %up.i794 = alloca %union.upat, align 4
  %up.i788 = alloca %union.upat, align 4
  %up.i782 = alloca %union.upat, align 4
  %up.i776 = alloca %union.upat, align 4
  %up.i770 = alloca %union.upat, align 4
  %up.i = alloca %union.upat, align 4
  %flags2 = alloca i32, align 4
  %up = alloca %union.upat, align 4
  %nptr = alloca i8*, align 4
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %slen = alloca i32, align 4
  %countargs = alloca [5 x %union.upat], align 4
  %0 = load i8** @patparse, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end71, %entry
  %patprev.0 = phi i8* [ %0, %entry ], [ %34, %if.end71 ]
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 91), align 1, !tbaa !0
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %lor.lhs.false44, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %2 = load i8** @patparse, align 4, !tbaa !4
  %3 = load i8* %2, align 1, !tbaa !0
  %tobool2 = icmp eq i8 %3, 0
  br i1 %tobool2, label %lor.lhs.false44, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds i8* %2, i32 1
  %4 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1139, i32 58, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp = icmp eq i8 %4, -120
  br i1 %cmp, label %cond.false, label %lor.lhs.false44

cond.false:                                       ; preds = %land.lhs.true3
  %5 = load i8** @patparse, align 4, !tbaa !4
  %6 = load i8* %5, align 1, !tbaa !0
  %conv13 = sext i8 %6 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([6 x i8]* @.str28, i32 0, i32 0), i32 %conv13, i32 6)
  %tobool15 = icmp eq i8* %memchr, null
  br i1 %tobool15, label %ioc_bb21, label %if.then16

if.then16:                                        ; preds = %cond.false
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %if.end42, label %ioc_bb17

ioc_bb17:                                         ; preds = %if.then16
  %8 = sext i8 %6 to i64
  call void @__ioc_report_conversion(i32 1141, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %if.end42

ioc_bb21:                                         ; preds = %cond.false
  call void @__ioc_report_conversion(i32 1142, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp23 = icmp eq i8 %6, -121
  br i1 %cmp23, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ioc_bb21
  %9 = load i8** @patparse, align 4, !tbaa !4
  %10 = load i8* %9, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1142, i32 73, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 149, i8 1) nounwind
  %cmp28 = icmp eq i8 %10, -107
  br i1 %cmp28, label %if.then30, label %lor.lhs.false44

if.then30:                                        ; preds = %lor.lhs.false, %ioc_bb21
  %11 = load i8** @patparse, align 4, !tbaa !4
  %12 = load i8* %11, align 1, !tbaa !0
  %conv31 = sext i8 %12 to i32
  call void @__ioc_report_conversion(i32 1143, i32 67, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv31, i32 -124)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %if.then30
  %16 = sext i8 %12 to i64
  call void @__ioc_report_sub_overflow(i32 1143, i32 57, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %16, i64 -124, i8 13) nounwind
  br label %cont35

cont35:                                           ; preds = %if.then30, %ioc_bb34
  %arrayidx36 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %14
  %17 = load i8* %arrayidx36, align 1, !tbaa !0
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %if.end42, label %if.end42.thread

if.end42.thread:                                  ; preds = %cont35
  %19 = sext i8 %17 to i64
  call void @__ioc_report_conversion(i32 1143, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %if.end42.for.end_crit_edge

if.end42:                                         ; preds = %if.then16, %ioc_bb17, %cont35
  %.sink = phi i8 [ %17, %cont35 ], [ %6, %ioc_bb17 ], [ %6, %if.then16 ]
  %tobool43 = icmp eq i8 %.sink, 0
  br i1 %tobool43, label %lor.lhs.false44, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42.thread, %if.end42
  %.sink919 = phi i8 [ %17, %if.end42.thread ], [ %.sink, %if.end42 ]
  %conv19 = zext i8 %.sink919 to i32
  br label %for.end

lor.lhs.false44:                                  ; preds = %if.end42, %lor.lhs.false, %land.lhs.true3, %for.cond, %land.lhs.true
  %20 = load i8** @patendstr, align 4, !tbaa !4
  %21 = load i8** @patparse, align 4, !tbaa !4
  %22 = load i8* %21, align 1, !tbaa !0
  %conv45 = sext i8 %22 to i32
  %23 = load i32* @patendstrlen, align 4, !tbaa !2
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %cont48, label %ioc_bb47

ioc_bb47:                                         ; preds = %lor.lhs.false44
  %25 = sext i32 %23 to i64
  call void @__ioc_report_conversion(i32 1152, i32 50, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %25, i8 1) nounwind
  br label %cont48

cont48:                                           ; preds = %ioc_bb47, %lor.lhs.false44
  %call49 = call i8* @memchr(i8* %20, i32 %conv45, i32 %23) nounwind readonly
  %tobool50 = icmp eq i8* %call49, null
  br i1 %tobool50, label %if.end71, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %cont48
  %26 = load i8** @patparse, align 4, !tbaa !4
  %27 = load i8* %26, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1152, i32 92, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 150, i8 1) nounwind
  %cmp55 = icmp eq i8 %27, -106
  br i1 %cmp55, label %lor.lhs.false57, label %for.end

lor.lhs.false57:                                  ; preds = %land.lhs.true51
  %28 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx58 = getelementptr inbounds i8* %28, i32 1
  %29 = load i8* %arrayidx58, align 1, !tbaa !0
  %conv59 = sext i8 %29 to i32
  %cmp60 = icmp eq i8 %29, 47
  br i1 %cmp60, label %for.end, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false57
  %30 = load i8** @patendseg, align 4, !tbaa !4
  %31 = load i32* @patendseglen, align 4, !tbaa !2
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %cont67, label %ioc_bb66

ioc_bb66:                                         ; preds = %lor.lhs.false62
  %33 = sext i32 %31 to i64
  call void @__ioc_report_conversion(i32 1152, i32 153, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %33, i8 1) nounwind
  br label %cont67

cont67:                                           ; preds = %ioc_bb66, %lor.lhs.false62
  %call68 = call i8* @memchr(i8* %30, i32 %conv59, i32 %31) nounwind readonly
  %tobool69 = icmp eq i8* %call68, null
  br i1 %tobool69, label %for.end, label %if.end71

if.end71:                                         ; preds = %cont67, %cont48
  %34 = load i8** @patparse, align 4, !tbaa !4
  %call72 = call fastcc i32 @metacharinc(i8** @patparse)
  br label %for.cond

for.end:                                          ; preds = %cont67, %land.lhs.true51, %if.end42.for.end_crit_edge, %lor.lhs.false57
  %tobool43894 = phi i1 [ true, %if.end42.for.end_crit_edge ], [ false, %lor.lhs.false57 ], [ false, %land.lhs.true51 ], [ false, %cont67 ]
  %kshchar.0892 = phi i32 [ %conv19, %if.end42.for.end_crit_edge ], [ 0, %lor.lhs.false57 ], [ 0, %land.lhs.true51 ], [ 0, %cont67 ]
  %35 = load i8** @patparse, align 4, !tbaa !4
  %cmp73 = icmp ugt i8* %35, %0
  br i1 %cmp73, label %if.then75, label %if.else170

if.then75:                                        ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %slen, align 4, !tbaa !3
  %cmp76 = icmp ugt i8* %patprev.0, %0
  %36 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool79 = icmp eq i8 %36, 0
  br i1 %tobool79, label %if.end107, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.then75
  %37 = load i8* %35, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1174, i32 46, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp84 = icmp eq i8 %37, -124
  br i1 %cmp84, label %land.lhs.true104, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %land.lhs.true80
  %38 = load i8** @patparse, align 4, !tbaa !4
  %39 = load i8* %38, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1174, i32 79, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp90 = icmp eq i8 %39, -120
  br i1 %cmp90, label %land.lhs.true92, label %if.end107

land.lhs.true92:                                  ; preds = %lor.lhs.false86
  %40 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx93 = getelementptr inbounds i8* %40, i32 1
  %41 = load i8* %arrayidx93, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1174, i32 111, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp97 = icmp eq i8 %41, -124
  br i1 %cmp97, label %land.lhs.true99, label %if.end107

land.lhs.true99:                                  ; preds = %land.lhs.true92
  %42 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx100 = getelementptr inbounds i8* %42, i32 2
  %43 = load i8* %arrayidx100, align 1, !tbaa !0
  %cmp102.not = icmp ne i8 %43, 99
  %cmp76.not = xor i1 %cmp76, true
  %brmerge = or i1 %cmp102.not, %cmp76.not
  br i1 %brmerge, label %if.end107, label %if.then106

land.lhs.true104:                                 ; preds = %land.lhs.true80
  br i1 %cmp76, label %if.then106, label %if.end107

if.then106:                                       ; preds = %land.lhs.true99, %land.lhs.true104
  store i8* %patprev.0, i8** @patparse, align 4, !tbaa !4
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true99, %if.then75, %if.then106, %land.lhs.true104, %land.lhs.true92, %lor.lhs.false86
  %. = select i1 %cmp76, i32 4, i32 5
  %44 = bitcast %union.upat* %up.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %44) nounwind
  %45 = load i8** @patcode, align 4, !tbaa !4
  %46 = load i8** @patout, align 4, !tbaa !4
  %l.i = getelementptr inbounds %union.upat* %up.i, i32 0, i32 0
  store i32 4, i32* %l.i, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i = ptrtoint i8* %46 to i32
  %sub.ptr.lhs.cast.i = ptrtoint i8* %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call fastcc void @patadd(i8* %44, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %44) nounwind
  %47 = load i8* %0, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1186, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 157, i8 1) nounwind
  %cmp116 = icmp eq i8 %47, -99
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1
  %str0.0 = select i1 %cmp116, i8* %incdec.ptr, i8* %0
  %48 = load i8** @patparse, align 4, !tbaa !4
  %cmp121905 = icmp ult i8* %str0.0, %48
  br i1 %cmp121905, label %for.body, label %for.end134

for.body:                                         ; preds = %if.end107, %for.inc
  %ptr.0907 = phi i8* [ %incdec.ptr133, %for.inc ], [ %str0.0, %if.end107 ]
  %nmeta.0906 = phi i32 [ %nmeta.1, %for.inc ], [ 0, %if.end107 ]
  %49 = load i8* %ptr.0907, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1189, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp126 = icmp eq i8 %49, -125
  br i1 %cmp126, label %if.then128, label %for.inc

if.then128:                                       ; preds = %for.body
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmeta.0906, i32 1)
  %51 = extractvalue { i32, i1 } %50, 0
  %52 = extractvalue { i32, i1 } %50, 1
  br i1 %52, label %ioc_bb129, label %cont130

ioc_bb129:                                        ; preds = %if.then128
  %53 = sext i32 %nmeta.0906 to i64
  call void @__ioc_report_add_overflow(i32 1190, i32 14, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %53, i64 1, i8 13) nounwind
  br label %cont130

cont130:                                          ; preds = %if.then128, %ioc_bb129
  %incdec.ptr131 = getelementptr inbounds i8* %ptr.0907, i32 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %cont130
  %nmeta.1 = phi i32 [ %51, %cont130 ], [ %nmeta.0906, %for.body ]
  %ptr.1 = phi i8* [ %incdec.ptr131, %cont130 ], [ %ptr.0907, %for.body ]
  %incdec.ptr133 = getelementptr inbounds i8* %ptr.1, i32 1
  %54 = load i8** @patparse, align 4, !tbaa !4
  %cmp121 = icmp ult i8* %incdec.ptr133, %54
  br i1 %cmp121, label %for.body, label %for.end134

for.end134:                                       ; preds = %for.inc, %if.end107
  %.lcssa = phi i8* [ %48, %if.end107 ], [ %54, %for.inc ]
  %nmeta.0.lcssa = phi i32 [ 0, %if.end107 ], [ %nmeta.1, %for.inc ]
  %sub.ptr.lhs.cast135 = ptrtoint i8* %.lcssa to i32
  %sub.ptr.rhs.cast136 = ptrtoint i8* %str0.0 to i32
  %sub.ptr.sub137 = sub i32 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast136
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub137, i32 %nmeta.0.lcssa)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb138, label %cont139

ioc_bb138:                                        ; preds = %for.end134
  %58 = sext i32 %nmeta.0.lcssa to i64
  %59 = sext i32 %sub.ptr.sub137 to i64
  call void @__ioc_report_sub_overflow(i32 1194, i32 29, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %59, i64 %58, i8 13) nounwind
  br label %cont139

cont139:                                          ; preds = %for.end134, %ioc_bb138
  store i32 %56, i32* %slen, align 4, !tbaa !3
  %60 = bitcast i32* %slen to i8*
  call fastcc void @patadd(i8* %60, i32 0, i32 4, i32 0)
  %61 = load i32* %slen, align 4, !tbaa !3
  call fastcc void @patadd(i8* %str0.0, i32 0, i32 %61, i32 2)
  %62 = load i8** @patout, align 4, !tbaa !4
  %63 = bitcast i8* %62 to %union.upat*
  %add.ptr.sum = add i32 %sub.ptr.div.i, 2
  %add.ptr142 = getelementptr inbounds %union.upat* %63, i32 %add.ptr.sum
  %64 = bitcast %union.upat* %add.ptr142 to i8*
  store i8* %64, i8** %nptr, align 4, !tbaa !4
  %65 = load i32* @patglobflags, align 4, !tbaa !2
  %and = and i32 %65, 1023
  %tobool143 = icmp eq i32 %and, 0
  br i1 %tobool143, label %if.end431, label %if.then144

if.then144:                                       ; preds = %cont139
  %66 = load i32* @patflags, align 4, !tbaa !2
  %and145 = and i32 %66, 1
  %tobool146 = icmp eq i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.else149

if.then147:                                       ; preds = %if.then144
  %and148 = and i32 %., 1
  br label %if.end431

if.else149:                                       ; preds = %if.then144
  %67 = load i8* %64, align 1, !tbaa !0
  %cmp152 = icmp eq i8 %67, 46
  br i1 %cmp152, label %land.lhs.true154, label %if.then165

land.lhs.true154:                                 ; preds = %if.else149
  %68 = load i32* %slen, align 4, !tbaa !3
  %cmp155 = icmp eq i32 %68, 1
  br i1 %cmp155, label %if.end431, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %land.lhs.true154
  %arrayidx158 = getelementptr inbounds i8* %64, i32 1
  %69 = load i8* %arrayidx158, align 1, !tbaa !0
  %cmp160 = icmp eq i8 %69, 46
  %cmp163 = icmp eq i32 %68, 2
  %or.cond767 = and i1 %cmp160, %cmp163
  br i1 %or.cond767, label %if.end431, label %if.then165

if.then165:                                       ; preds = %lor.lhs.false157, %if.else149
  %and166 = and i32 %., 1
  br label %if.end431

if.else170:                                       ; preds = %for.end
  br i1 %tobool43894, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.else170
  %incdec.ptr173 = getelementptr inbounds i8* %35, i32 1
  store i8* %incdec.ptr173, i8** @patparse, align 4, !tbaa !4
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %if.else170
  %70 = phi i8* [ %incdec.ptr173, %if.then172 ], [ %35, %if.else170 ]
  %71 = load i8* %70, align 1, !tbaa !0
  %conv175 = sext i8 %71 to i32
  %call176 = call fastcc i32 @metacharinc(i8** @patparse)
  switch i32 %conv175, label %if.end431 [
    i32 -107, label %sw.bb
    i32 -121, label %cont181
    i32 -113, label %sw.bb183
    i32 -120, label %sw.bb346
    i32 -110, label %sw.bb368
    i32 -124, label %return
    i32 -100, label %sw.bb427
  ]

sw.bb:                                            ; preds = %if.end174
  %72 = bitcast %union.upat* %up.i770 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %72) nounwind
  %73 = load i8** @patcode, align 4, !tbaa !4
  %74 = load i8** @patout, align 4, !tbaa !4
  %l.i771 = getelementptr inbounds %union.upat* %up.i770, i32 0, i32 0
  store i32 64, i32* %l.i771, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i772 = ptrtoint i8* %74 to i32
  %sub.ptr.lhs.cast.i773 = ptrtoint i8* %73 to i32
  %sub.ptr.sub.i774 = sub i32 %sub.ptr.lhs.cast.i773, %sub.ptr.rhs.cast.i772
  %sub.ptr.div.i775 = ashr exact i32 %sub.ptr.sub.i774, 2
  call fastcc void @patadd(i8* %72, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %72) nounwind
  br label %if.end431

cont181:                                          ; preds = %if.end174
  %75 = bitcast %union.upat* %up.i776 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %75) nounwind
  %76 = load i8** @patcode, align 4, !tbaa !4
  %77 = load i8** @patout, align 4, !tbaa !4
  %l.i777 = getelementptr inbounds %union.upat* %up.i776, i32 0, i32 0
  store i32 67, i32* %l.i777, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i778 = ptrtoint i8* %77 to i32
  %sub.ptr.lhs.cast.i779 = ptrtoint i8* %76 to i32
  %sub.ptr.sub.i780 = sub i32 %sub.ptr.lhs.cast.i779, %sub.ptr.rhs.cast.i778
  %sub.ptr.div.i781 = ashr exact i32 %sub.ptr.sub.i780, 2
  call fastcc void @patadd(i8* %75, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %75) nounwind
  br label %if.end431

sw.bb183:                                         ; preds = %if.end174
  %78 = load i8** @patparse, align 4, !tbaa !4
  %79 = load i8* %78, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1259, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 134, i8 1) nounwind
  %cmp188 = icmp eq i8 %79, -122
  %.pre915 = load i8** @patparse, align 4, !tbaa !4
  br i1 %cmp188, label %if.then198, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %sw.bb183
  %80 = load i8* %.pre915, align 1, !tbaa !0
  switch i8 %80, label %if.else201 [
    i8 94, label %if.then198
    i8 33, label %if.then198
  ]

if.then198:                                       ; preds = %sw.bb183, %lor.lhs.false190, %lor.lhs.false190
  %incdec.ptr199 = getelementptr inbounds i8* %.pre915, i32 1
  store i8* %incdec.ptr199, i8** @patparse, align 4, !tbaa !4
  %81 = bitcast %union.upat* %up.i782 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %81) nounwind
  %82 = load i8** @patcode, align 4, !tbaa !4
  %83 = load i8** @patout, align 4, !tbaa !4
  %l.i783 = getelementptr inbounds %union.upat* %up.i782, i32 0, i32 0
  store i32 66, i32* %l.i783, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i784 = ptrtoint i8* %83 to i32
  %sub.ptr.lhs.cast.i785 = ptrtoint i8* %82 to i32
  %sub.ptr.sub.i786 = sub i32 %sub.ptr.lhs.cast.i785, %sub.ptr.rhs.cast.i784
  call fastcc void @patadd(i8* %81, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %81) nounwind
  br label %if.end203

if.else201:                                       ; preds = %lor.lhs.false190
  %84 = bitcast %union.upat* %up.i788 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %84) nounwind
  %85 = load i8** @patcode, align 4, !tbaa !4
  %86 = load i8** @patout, align 4, !tbaa !4
  %l.i789 = getelementptr inbounds %union.upat* %up.i788, i32 0, i32 0
  store i32 65, i32* %l.i789, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i790 = ptrtoint i8* %86 to i32
  %sub.ptr.lhs.cast.i791 = ptrtoint i8* %85 to i32
  %sub.ptr.sub.i792 = sub i32 %sub.ptr.lhs.cast.i791, %sub.ptr.rhs.cast.i790
  call fastcc void @patadd(i8* %84, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %84) nounwind
  br label %if.end203

if.end203:                                        ; preds = %if.else201, %if.then198
  %starter.0.in = phi i32 [ %sub.ptr.sub.i786, %if.then198 ], [ %sub.ptr.sub.i792, %if.else201 ]
  %starter.0 = ashr exact i32 %starter.0.in, 2
  %87 = load i8** @patparse, align 4, !tbaa !4
  %88 = load i8* %87, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1265, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp207 = icmp eq i8 %88, -112
  br i1 %cmp207, label %if.then209, label %while.cond.preheader

if.then209:                                       ; preds = %if.end203
  %89 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr210 = getelementptr inbounds i8* %89, i32 1
  store i8* %incdec.ptr210, i8** @patparse, align 4, !tbaa !4
  call fastcc void @patadd(i8* null, i32 93, i32 1, i32 1)
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then209, %if.end203
  %90 = load i8** @patparse, align 4, !tbaa !4
  %91 = load i8* %90, align 1, !tbaa !0
  %tobool213910 = icmp eq i8 %91, 0
  br i1 %tobool213910, label %ioc_bb339.thread, label %land.end

land.end:                                         ; preds = %while.cond.preheader, %while.cond.backedge
  %92 = phi i8 [ %106, %while.cond.backedge ], [ %91, %while.cond.preheader ]
  call void @__ioc_report_conversion(i32 1269, i32 53, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp217 = icmp eq i8 %92, -112
  %93 = load i8** @patparse, align 4, !tbaa !4
  %94 = load i8* %93, align 1, !tbaa !0
  br i1 %cmp217, label %ioc_bb339, label %ioc_bb220

ioc_bb220:                                        ; preds = %land.end
  call void @__ioc_report_conversion(i32 1271, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp222 = icmp eq i8 %94, -113
  br i1 %cmp222, label %land.lhs.true224, label %if.end257

land.lhs.true224:                                 ; preds = %ioc_bb220
  %95 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx225 = getelementptr inbounds i8* %95, i32 1
  %96 = load i8* %arrayidx225, align 1, !tbaa !0
  %cmp227 = icmp eq i8 %96, 58
  br i1 %cmp227, label %land.lhs.true229, label %if.end257

land.lhs.true229:                                 ; preds = %land.lhs.true224
  %add.ptr230 = getelementptr inbounds i8* %95, i32 2
  %call231 = call i8* @strchr(i8* %add.ptr230, i32 58) nounwind
  store i8* %call231, i8** %nptr, align 4, !tbaa !4
  %tobool232 = icmp eq i8* %call231, null
  br i1 %tobool232, label %if.end257, label %land.lhs.true233

land.lhs.true233:                                 ; preds = %land.lhs.true229
  %arrayidx234 = getelementptr inbounds i8* %call231, i32 1
  %97 = load i8* %arrayidx234, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1271, i32 128, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp238 = icmp eq i8 %97, -112
  br i1 %cmp238, label %if.then240, label %if.end257

if.then240:                                       ; preds = %land.lhs.true233
  %98 = load i8** @patparse, align 4, !tbaa !4
  %add.ptr241 = getelementptr inbounds i8* %98, i32 2
  store i8* %add.ptr241, i8** @patparse, align 4, !tbaa !4
  %99 = load i8** %nptr, align 4, !tbaa !4
  %sub.ptr.lhs.cast242 = ptrtoint i8* %99 to i32
  %sub.ptr.rhs.cast243 = ptrtoint i8* %add.ptr241 to i32
  %sub.ptr.sub244 = sub i32 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %call245 = call i32 @range_type(i8* %add.ptr241, i32 %sub.ptr.sub244)
  %100 = load i8** %nptr, align 4, !tbaa !4
  %add.ptr246 = getelementptr inbounds i8* %100, i32 2
  store i8* %add.ptr246, i8** @patparse, align 4, !tbaa !4
  %cmp247 = icmp eq i32 %call245, 18
  br i1 %cmp247, label %while.cond.backedge, label %ioc_bb250

ioc_bb250:                                        ; preds = %if.then240
  call void @__ioc_report_conversion(i32 1278, i32 59, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1278, i32 51, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call245, i32 131)
  %102 = extractvalue { i32, i1 } %101, 0
  %103 = extractvalue { i32, i1 } %101, 1
  br i1 %103, label %ioc_bb254, label %cont255

ioc_bb254:                                        ; preds = %ioc_bb250
  %104 = sext i32 %call245 to i64
  call void @__ioc_report_add_overflow(i32 1278, i32 66, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 131, i64 %104, i8 13) nounwind
  br label %cont255

cont255:                                          ; preds = %ioc_bb250, %ioc_bb254
  call fastcc void @patadd(i8* null, i32 %102, i32 1, i32 1)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont255, %if.else333, %cont331, %if.then240
  %105 = load i8** @patparse, align 4, !tbaa !4
  %106 = load i8* %105, align 1, !tbaa !0
  %tobool213 = icmp eq i8 %106, 0
  br i1 %tobool213, label %ioc_bb339.thread, label %land.end

if.end257:                                        ; preds = %land.lhs.true233, %ioc_bb220, %land.lhs.true229, %land.lhs.true224
  %107 = load i8** @patparse, align 4, !tbaa !4
  %call258 = call fastcc i32 @metacharinc(i8** @patparse)
  %108 = load i8** @patparse, align 4, !tbaa !4
  %109 = load i8* %108, align 1, !tbaa !0
  %cmp260 = icmp eq i8 %109, 45
  br i1 %cmp260, label %land.lhs.true262, label %if.end309

land.lhs.true262:                                 ; preds = %if.end257
  %arrayidx263 = getelementptr inbounds i8* %108, i32 1
  %110 = load i8* %arrayidx263, align 1, !tbaa !0
  %tobool265 = icmp eq i8 %110, 0
  br i1 %tobool265, label %if.end309, label %ioc_bb269

ioc_bb269:                                        ; preds = %land.lhs.true262
  call void @__ioc_report_conversion(i32 1283, i32 76, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp271 = icmp eq i8 %110, -112
  br i1 %cmp271, label %if.end309, label %ioc_bb274

ioc_bb274:                                        ; preds = %ioc_bb269
  call void @__ioc_report_conversion(i32 1284, i32 57, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1284, i32 49, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 -125, i8 1) nounwind
  call fastcc void @patadd(i8* null, i32 150, i32 1, i32 1)
  %111 = load i8* %107, align 1, !tbaa !0
  %112 = icmp sgt i8 %111, -1
  br i1 %112, label %cont282, label %ioc_bb281

ioc_bb281:                                        ; preds = %ioc_bb274
  %113 = sext i8 %111 to i64
  call void @__ioc_report_conversion(i32 1285, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %113, i8 1) nounwind
  br label %cont282

cont282:                                          ; preds = %ioc_bb281, %ioc_bb274
  %idxprom = zext i8 %111 to i32
  %arrayidx283 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %114 = load i16* %arrayidx283, align 2, !tbaa !5
  %and289 = and i16 %114, 16
  %tobool290 = icmp eq i16 %and289, 0
  br i1 %tobool290, label %if.else302, label %if.then291

if.then291:                                       ; preds = %cont282
  %115 = load i8* %107, align 1, !tbaa !0
  %conv292 = sext i8 %115 to i32
  call void @__ioc_report_conversion(i32 1286, i32 73, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %116 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv292, i32 -124)
  %117 = extractvalue { i32, i1 } %116, 0
  %118 = extractvalue { i32, i1 } %116, 1
  br i1 %118, label %ioc_bb295, label %cont296

ioc_bb295:                                        ; preds = %if.then291
  %119 = sext i8 %115 to i64
  call void @__ioc_report_sub_overflow(i32 1286, i32 63, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %119, i64 -124, i8 13) nounwind
  br label %cont296

cont296:                                          ; preds = %if.then291, %ioc_bb295
  %arrayidx297 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %117
  %120 = load i8* %arrayidx297, align 1, !tbaa !0
  %121 = icmp sgt i8 %120, -1
  br i1 %121, label %cont300, label %ioc_bb299

ioc_bb299:                                        ; preds = %cont296
  %122 = sext i8 %120 to i64
  call void @__ioc_report_conversion(i32 1286, i32 41, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %122, i8 1) nounwind
  br label %cont300

cont300:                                          ; preds = %ioc_bb299, %cont296
  %conv301 = zext i8 %120 to i32
  call fastcc void @patadd(i8* null, i32 %conv301, i32 1, i32 1)
  br label %if.end306

if.else302:                                       ; preds = %cont282
  %123 = load i8** @patparse, align 4, !tbaa !4
  %sub.ptr.lhs.cast303 = ptrtoint i8* %123 to i32
  %sub.ptr.rhs.cast304 = ptrtoint i8* %107 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  call fastcc void @patadd(i8* %107, i32 0, i32 %sub.ptr.sub305, i32 1)
  br label %if.end306

if.end306:                                        ; preds = %if.else302, %cont300
  %124 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr307 = getelementptr inbounds i8* %124, i32 1
  store i8* %incdec.ptr307, i8** @patparse, align 4, !tbaa !4
  %call308 = call fastcc i32 @metacharinc(i8** @patparse)
  br label %if.end309

if.end309:                                        ; preds = %ioc_bb269, %land.lhs.true262, %if.end306, %if.end257
  %charstart.0 = phi i8* [ %incdec.ptr307, %if.end306 ], [ %107, %ioc_bb269 ], [ %107, %land.lhs.true262 ], [ %107, %if.end257 ]
  %125 = load i8* %charstart.0, align 1, !tbaa !0
  %126 = icmp sgt i8 %125, -1
  br i1 %126, label %cont312, label %ioc_bb311

ioc_bb311:                                        ; preds = %if.end309
  %127 = sext i8 %125 to i64
  call void @__ioc_report_conversion(i32 1295, i32 38, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %127, i8 1) nounwind
  br label %cont312

cont312:                                          ; preds = %ioc_bb311, %if.end309
  %idxprom313 = zext i8 %125 to i32
  %arrayidx314 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom313
  %128 = load i16* %arrayidx314, align 2, !tbaa !5
  %and320 = and i16 %128, 16
  %tobool321 = icmp eq i16 %and320, 0
  br i1 %tobool321, label %if.else333, label %if.then322

if.then322:                                       ; preds = %cont312
  %129 = load i8* %charstart.0, align 1, !tbaa !0
  %conv323 = sext i8 %129 to i32
  call void @__ioc_report_conversion(i32 1296, i32 71, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv323, i32 -124)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb326, label %cont327

ioc_bb326:                                        ; preds = %if.then322
  %133 = sext i8 %129 to i64
  call void @__ioc_report_sub_overflow(i32 1296, i32 61, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %133, i64 -124, i8 13) nounwind
  br label %cont327

cont327:                                          ; preds = %if.then322, %ioc_bb326
  %arrayidx328 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %131
  %134 = load i8* %arrayidx328, align 1, !tbaa !0
  %135 = icmp sgt i8 %134, -1
  br i1 %135, label %cont331, label %ioc_bb330

ioc_bb330:                                        ; preds = %cont327
  %136 = sext i8 %134 to i64
  call void @__ioc_report_conversion(i32 1296, i32 39, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %136, i8 1) nounwind
  br label %cont331

cont331:                                          ; preds = %ioc_bb330, %cont327
  %conv332 = zext i8 %134 to i32
  call fastcc void @patadd(i8* null, i32 %conv332, i32 1, i32 1)
  br label %while.cond.backedge

if.else333:                                       ; preds = %cont312
  %137 = load i8** @patparse, align 4, !tbaa !4
  %sub.ptr.lhs.cast334 = ptrtoint i8* %137 to i32
  %sub.ptr.rhs.cast335 = ptrtoint i8* %charstart.0 to i32
  %sub.ptr.sub336 = sub i32 %sub.ptr.lhs.cast334, %sub.ptr.rhs.cast335
  call fastcc void @patadd(i8* %charstart.0, i32 0, i32 %sub.ptr.sub336, i32 1)
  br label %while.cond.backedge

ioc_bb339.thread:                                 ; preds = %while.cond.backedge, %while.cond.preheader
  call void @__ioc_report_conversion(i32 1302, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %return

ioc_bb339:                                        ; preds = %land.end
  %phitmp = icmp eq i8 %94, -112
  call void @__ioc_report_conversion(i32 1302, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 144, i8 1) nounwind
  br i1 %phitmp, label %if.end344, label %return

if.end344:                                        ; preds = %ioc_bb339
  %138 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr345 = getelementptr inbounds i8* %138, i32 1
  store i8* %incdec.ptr345, i8** @patparse, align 4, !tbaa !4
  call fastcc void @patadd(i8* null, i32 0, i32 1, i32 0)
  br label %if.end431

sw.bb346:                                         ; preds = %if.end174
  %139 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !0
  %tobool348 = icmp eq i8 %139, 0
  %brmerge768 = or i1 %tobool348, %tobool43894
  br i1 %brmerge768, label %if.end352, label %return

if.end352:                                        ; preds = %sw.bb346
  %cmp353 = icmp eq i32 %kshchar.0892, 33
  br i1 %cmp353, label %if.then355, label %if.else360

if.then355:                                       ; preds = %if.end352
  %call356 = call fastcc i32 @patcompnot(i32 1, i32* %flags2)
  %tobool357 = icmp eq i32 %call356, 0
  br i1 %tobool357, label %return, label %if.end365

if.else360:                                       ; preds = %if.end352
  %call361 = call fastcc i32 @patcompswitch(i32 1, i32* %flags2)
  %tobool362 = icmp eq i32 %call361, 0
  br i1 %tobool362, label %return, label %if.end365

if.end365:                                        ; preds = %if.then355, %if.else360
  %starter.1 = phi i32 [ %call356, %if.then355 ], [ %call361, %if.else360 ]
  %140 = load i32* %flags2, align 4, !tbaa !2
  %and366 = and i32 %140, 2
  br label %if.end431

sw.bb368:                                         ; preds = %if.end174
  %141 = load i8** @patparse, align 4, !tbaa !4
  %142 = load i8* %141, align 1, !tbaa !0
  %143 = icmp sgt i8 %142, -1
  br i1 %143, label %cont371, label %ioc_bb370

ioc_bb370:                                        ; preds = %sw.bb368
  %144 = sext i8 %142 to i64
  call void @__ioc_report_conversion(i32 1341, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %144, i8 1) nounwind
  br label %cont371

cont371:                                          ; preds = %ioc_bb370, %sw.bb368
  %idxprom372 = zext i8 %142 to i32
  %arrayidx373 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom372
  %145 = load i16* %arrayidx373, align 2, !tbaa !5
  %and379 = and i16 %145, 1
  %tobool380 = icmp eq i16 %and379, 0
  %.pre916 = load i8** @patparse, align 4, !tbaa !4
  br i1 %tobool380, label %if.end384, label %if.then381

if.then381:                                       ; preds = %cont371
  %call382 = call i64 @zstrtol(i8* %.pre916, i8** %nptr, i32 10) nounwind
  store i64 %call382, i64* %from, align 8, !tbaa !6
  %146 = load i8** %nptr, align 4, !tbaa !4
  store i8* %146, i8** @patparse, align 4, !tbaa !4
  br label %if.end384

if.end384:                                        ; preds = %cont371, %if.then381
  %147 = phi i8* [ %146, %if.then381 ], [ %.pre916, %cont371 ]
  %len.0 = phi i32 [ 1, %if.then381 ], [ 0, %cont371 ]
  %incdec.ptr385 = getelementptr inbounds i8* %147, i32 1
  store i8* %incdec.ptr385, i8** @patparse, align 4, !tbaa !4
  %148 = load i8* %incdec.ptr385, align 1, !tbaa !0
  %149 = icmp sgt i8 %148, -1
  br i1 %149, label %cont388, label %ioc_bb387

ioc_bb387:                                        ; preds = %if.end384
  %150 = sext i8 %148 to i64
  call void @__ioc_report_conversion(i32 1348, i32 36, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @16, i32 0, i32 0), i64 %150, i8 1) nounwind
  br label %cont388

cont388:                                          ; preds = %ioc_bb387, %if.end384
  %idxprom389 = zext i8 %148 to i32
  %arrayidx390 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom389
  %151 = load i16* %arrayidx390, align 2, !tbaa !5
  %and396 = and i16 %151, 1
  %tobool397 = icmp eq i16 %and396, 0
  %.pre917 = load i8** @patparse, align 4, !tbaa !4
  br i1 %tobool397, label %if.end401, label %if.then398

if.then398:                                       ; preds = %cont388
  %call399 = call i64 @zstrtol(i8* %.pre917, i8** %nptr, i32 10) nounwind
  store i64 %call399, i64* %to, align 8, !tbaa !6
  %152 = load i8** %nptr, align 4, !tbaa !4
  store i8* %152, i8** @patparse, align 4, !tbaa !4
  %or400 = or i32 %len.0, 2
  br label %if.end401

if.end401:                                        ; preds = %cont388, %if.then398
  %153 = phi i8* [ %152, %if.then398 ], [ %.pre917, %cont388 ]
  %len.1 = phi i32 [ %or400, %if.then398 ], [ %len.0, %cont388 ]
  %154 = load i8* %153, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1353, i32 37, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 147, i8 1) nounwind
  %cmp405 = icmp eq i8 %154, -109
  br i1 %cmp405, label %if.end408, label %return

if.end408:                                        ; preds = %if.end401
  %155 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr409 = getelementptr inbounds i8* %155, i32 1
  store i8* %incdec.ptr409, i8** @patparse, align 4, !tbaa !4
  switch i32 %len.1, label %if.end431 [
    i32 3, label %sw.bb410
    i32 2, label %sw.bb416
    i32 1, label %sw.bb420
    i32 0, label %sw.bb424
  ]

sw.bb410:                                         ; preds = %if.end408
  %156 = bitcast %union.upat* %up.i794 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %156) nounwind
  %157 = load i8** @patcode, align 4, !tbaa !4
  %158 = load i8** @patout, align 4, !tbaa !4
  %l.i795 = getelementptr inbounds %union.upat* %up.i794, i32 0, i32 0
  store i32 68, i32* %l.i795, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i796 = ptrtoint i8* %158 to i32
  %sub.ptr.lhs.cast.i797 = ptrtoint i8* %157 to i32
  %sub.ptr.sub.i798 = sub i32 %sub.ptr.lhs.cast.i797, %sub.ptr.rhs.cast.i796
  %sub.ptr.div.i799 = ashr exact i32 %sub.ptr.sub.i798, 2
  call fastcc void @patadd(i8* %156, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %156) nounwind
  %159 = bitcast i64* %from to i8*
  call fastcc void @patadd(i8* %159, i32 0, i32 8, i32 0)
  %160 = bitcast i64* %to to i8*
  call fastcc void @patadd(i8* %160, i32 0, i32 8, i32 0)
  br label %if.end431

sw.bb416:                                         ; preds = %if.end408
  %161 = bitcast %union.upat* %up.i800 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %161) nounwind
  %162 = load i8** @patcode, align 4, !tbaa !4
  %163 = load i8** @patout, align 4, !tbaa !4
  %l.i801 = getelementptr inbounds %union.upat* %up.i800, i32 0, i32 0
  store i32 70, i32* %l.i801, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i802 = ptrtoint i8* %163 to i32
  %sub.ptr.lhs.cast.i803 = ptrtoint i8* %162 to i32
  %sub.ptr.sub.i804 = sub i32 %sub.ptr.lhs.cast.i803, %sub.ptr.rhs.cast.i802
  %sub.ptr.div.i805 = ashr exact i32 %sub.ptr.sub.i804, 2
  call fastcc void @patadd(i8* %161, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %161) nounwind
  %164 = bitcast i64* %to to i8*
  call fastcc void @patadd(i8* %164, i32 0, i32 8, i32 0)
  br label %if.end431

sw.bb420:                                         ; preds = %if.end408
  %165 = bitcast %union.upat* %up.i806 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %165) nounwind
  %166 = load i8** @patcode, align 4, !tbaa !4
  %167 = load i8** @patout, align 4, !tbaa !4
  %l.i807 = getelementptr inbounds %union.upat* %up.i806, i32 0, i32 0
  store i32 69, i32* %l.i807, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i808 = ptrtoint i8* %167 to i32
  %sub.ptr.lhs.cast.i809 = ptrtoint i8* %166 to i32
  %sub.ptr.sub.i810 = sub i32 %sub.ptr.lhs.cast.i809, %sub.ptr.rhs.cast.i808
  %sub.ptr.div.i811 = ashr exact i32 %sub.ptr.sub.i810, 2
  call fastcc void @patadd(i8* %165, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %165) nounwind
  %168 = bitcast i64* %from to i8*
  call fastcc void @patadd(i8* %168, i32 0, i32 8, i32 0)
  br label %if.end431

sw.bb424:                                         ; preds = %if.end408
  %169 = bitcast %union.upat* %up.i812 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %169) nounwind
  %170 = load i8** @patcode, align 4, !tbaa !4
  %171 = load i8** @patout, align 4, !tbaa !4
  %l.i813 = getelementptr inbounds %union.upat* %up.i812, i32 0, i32 0
  store i32 71, i32* %l.i813, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i814 = ptrtoint i8* %171 to i32
  %sub.ptr.lhs.cast.i815 = ptrtoint i8* %170 to i32
  %sub.ptr.sub.i816 = sub i32 %sub.ptr.lhs.cast.i815, %sub.ptr.rhs.cast.i814
  %sub.ptr.div.i817 = ashr exact i32 %sub.ptr.sub.i816, 2
  call fastcc void @patadd(i8* %169, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %169) nounwind
  br label %if.end431

sw.bb427:                                         ; preds = %if.end174
  %call428 = call fastcc i32 @patcomppiece(i32* %flagp)
  %172 = load i32* %flagp, align 4, !tbaa !2
  %and429 = and i32 %172, -5
  store i32 %and429, i32* %flagp, align 4, !tbaa !2
  br label %return

if.end431:                                        ; preds = %if.end174, %lor.lhs.false157, %land.lhs.true154, %cont139, %sw.bb, %cont181, %if.end344, %if.end365, %if.end408, %sw.bb424, %sw.bb420, %sw.bb416, %sw.bb410, %if.then165, %if.then147
  %kshchar.1 = phi i32 [ 0, %if.then165 ], [ 0, %if.then147 ], [ %kshchar.0892, %if.end408 ], [ %kshchar.0892, %sw.bb424 ], [ %kshchar.0892, %sw.bb420 ], [ %kshchar.0892, %sw.bb416 ], [ %kshchar.0892, %sw.bb410 ], [ %kshchar.0892, %if.end365 ], [ %kshchar.0892, %if.end344 ], [ -1, %cont181 ], [ %kshchar.0892, %sw.bb ], [ 0, %cont139 ], [ 0, %land.lhs.true154 ], [ 0, %lor.lhs.false157 ], [ %kshchar.0892, %if.end174 ]
  %flags.1 = phi i32 [ %and166, %if.then165 ], [ %and148, %if.then147 ], [ 0, %if.end408 ], [ 0, %sw.bb424 ], [ 0, %sw.bb420 ], [ 0, %sw.bb416 ], [ 0, %sw.bb410 ], [ %and366, %if.end365 ], [ 1, %if.end344 ], [ 0, %cont181 ], [ 1, %sw.bb ], [ %., %cont139 ], [ %., %land.lhs.true154 ], [ %., %lor.lhs.false157 ], [ 0, %if.end174 ]
  %starter.2 = phi i32 [ %sub.ptr.div.i, %if.then165 ], [ %sub.ptr.div.i, %if.then147 ], [ 0, %if.end408 ], [ %sub.ptr.div.i817, %sw.bb424 ], [ %sub.ptr.div.i811, %sw.bb420 ], [ %sub.ptr.div.i805, %sw.bb416 ], [ %sub.ptr.div.i799, %sw.bb410 ], [ %starter.1, %if.end365 ], [ %starter.0, %if.end344 ], [ %sub.ptr.div.i781, %cont181 ], [ %sub.ptr.div.i775, %sw.bb ], [ %sub.ptr.div.i, %cont139 ], [ %sub.ptr.div.i, %land.lhs.true154 ], [ %sub.ptr.div.i, %lor.lhs.false157 ], [ 0, %if.end174 ]
  %173 = load i8** @patparse, align 4, !tbaa !4
  %174 = load i8* %173, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1418, i32 41, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp435 = icmp eq i8 %174, -124
  %175 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool439 = icmp eq i8 %175, 0
  br i1 %cmp435, label %land.end440, label %land.lhs.true441

land.end440:                                      ; preds = %if.end431
  br i1 %tobool439, label %land.lhs.true464, label %if.end474

land.lhs.true441:                                 ; preds = %if.end431
  br i1 %tobool439, label %land.lhs.true464, label %land.lhs.true444

land.lhs.true444:                                 ; preds = %land.lhs.true441
  %176 = load i8** @patparse, align 4, !tbaa !4
  %177 = load i8* %176, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1418, i32 109, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp448 = icmp eq i8 %177, -120
  br i1 %cmp448, label %land.lhs.true450, label %land.lhs.true464

land.lhs.true450:                                 ; preds = %land.lhs.true444
  %178 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx451 = getelementptr inbounds i8* %178, i32 1
  %179 = load i8* %arrayidx451, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1418, i32 141, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp455 = icmp eq i8 %179, -124
  br i1 %cmp455, label %land.end462, label %land.lhs.true464

land.end462:                                      ; preds = %land.lhs.true450
  %180 = load i8** @patparse, align 4, !tbaa !4
  %arrayidx458 = getelementptr inbounds i8* %180, i32 2
  %181 = load i8* %arrayidx458, align 1, !tbaa !0
  %cmp460 = icmp eq i8 %181, 99
  %land.ext463 = zext i1 %cmp460 to i32
  br i1 %cmp460, label %if.end479, label %land.lhs.true464

land.lhs.true464:                                 ; preds = %land.end440, %land.lhs.true441, %land.lhs.true444, %land.lhs.true450, %land.end462
  %land.ext463897 = phi i32 [ %land.ext463, %land.end462 ], [ 0, %land.lhs.true450 ], [ 0, %land.lhs.true444 ], [ 0, %land.lhs.true441 ], [ 0, %land.end440 ]
  %cmp465 = icmp slt i32 %kshchar.1, 1
  br i1 %cmp465, label %if.then473, label %switch.early.test

switch.early.test:                                ; preds = %land.lhs.true464
  switch i32 %kshchar.1, label %if.end479 [
    i32 64, label %if.then473
    i32 33, label %if.then473
  ]

if.then473:                                       ; preds = %switch.early.test, %switch.early.test, %land.lhs.true464
  store i32 %flags.1, i32* %flagp, align 4, !tbaa !2
  br label %return

if.end474:                                        ; preds = %land.end440
  %tobool475 = icmp eq i32 %kshchar.1, 0
  br i1 %tobool475, label %if.end479, label %return

if.end479:                                        ; preds = %switch.early.test, %land.end462, %if.end474
  %count.0901 = phi i32 [ 0, %if.end474 ], [ %land.ext463, %land.end462 ], [ %land.ext463897, %switch.early.test ]
  switch i32 %kshchar.1, label %if.else491 [
    i32 42, label %if.then482
    i32 43, label %if.then486
    i32 63, label %if.then490
  ]

if.then482:                                       ; preds = %if.end479
  store i32 2, i32* %flagp, align 4, !tbaa !2
  br label %if.else590

if.then486:                                       ; preds = %if.end479
  store i32 2, i32* %flagp, align 4, !tbaa !2
  br label %if.else590

if.then490:                                       ; preds = %if.end479
  store i32 0, i32* %flagp, align 4, !tbaa !2
  br label %if.else590

if.else491:                                       ; preds = %if.end479
  %tobool492 = icmp eq i32 %count.0901, 0
  %182 = load i8** @patparse, align 4, !tbaa !4
  br i1 %tobool492, label %if.else495, label %if.then512

if.else495:                                       ; preds = %if.else491
  %incdec.ptr496 = getelementptr inbounds i8* %182, i32 1
  store i8* %incdec.ptr496, i8** @patparse, align 4, !tbaa !4
  %183 = load i8* %incdec.ptr496, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1442, i32 40, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp500 = icmp eq i8 %183, -124
  br i1 %cmp500, label %if.then502, label %if.else504

if.then502:                                       ; preds = %if.else495
  %184 = load i8** @patparse, align 4, !tbaa !4
  %incdec.ptr503 = getelementptr inbounds i8* %184, i32 1
  store i8* %incdec.ptr503, i8** @patparse, align 4, !tbaa !4
  store i32 2, i32* %flagp, align 4, !tbaa !2
  br label %if.else590

if.else504:                                       ; preds = %if.else495
  store i32 2, i32* %flagp, align 4, !tbaa !2
  br label %if.else590

if.then512:                                       ; preds = %if.else491
  %add.ptr494 = getelementptr inbounds i8* %182, i32 3
  store i8* %add.ptr494, i8** @patparse, align 4, !tbaa !4
  store i32 2, i32* %flagp, align 4, !tbaa !2
  %l = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 0, i32 0
  store i32 12, i32* %l, align 4, !tbaa !3
  %l515 = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 1, i32 0
  store i32 0, i32* %l515, align 4, !tbaa !3
  %call516 = call i64 @zstrtol(i8* %add.ptr494, i8** @patparse, i32 10) nounwind
  %call516.off = add i64 %call516, 2147483648
  %185 = icmp ult i64 %call516.off, 4294967296
  br i1 %185, label %cont519, label %ioc_bb518

ioc_bb518:                                        ; preds = %if.then512
  call void @__ioc_report_conversion(i32 1467, i32 30, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i64 %call516, i8 1) nounwind
  br label %cont519

cont519:                                          ; preds = %ioc_bb518, %if.then512
  %conv520 = trunc i64 %call516 to i32
  %l522 = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 2, i32 0
  store i32 %conv520, i32* %l522, align 4, !tbaa !3
  %186 = load i8** @patparse, align 4, !tbaa !4
  %cmp523 = icmp eq i8* %186, %add.ptr494
  br i1 %cmp523, label %if.then525, label %if.end528

if.then525:                                       ; preds = %cont519
  store i32 0, i32* %l522, align 4, !tbaa !3
  br label %if.end528

if.end528:                                        ; preds = %if.then525, %cont519
  %187 = load i8* %186, align 1, !tbaa !0
  %cmp530 = icmp eq i8 %187, 44
  br i1 %cmp530, label %if.else550, label %ioc_bb534

ioc_bb534:                                        ; preds = %if.end528
  call void @__ioc_report_conversion(i32 1472, i32 56, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 152, i8 1) nounwind
  %cmp536 = icmp eq i8 %187, -104
  %.pre914 = load i8** @patparse, align 4, !tbaa !4
  br i1 %cmp536, label %if.else550, label %if.then538

if.then538:                                       ; preds = %ioc_bb534
  %188 = load i8* %.pre914, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1474, i32 35, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp542 = icmp eq i8 %188, -119
  br i1 %cmp542, label %if.end545, label %return

if.end545:                                        ; preds = %if.then538
  %189 = load i32* %l522, align 4, !tbaa !3
  %l549 = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 3, i32 0
  store i32 %189, i32* %l549, align 4, !tbaa !3
  %.pre = load i8** @patparse, align 4, !tbaa !4
  br label %if.end575

if.else550:                                       ; preds = %ioc_bb534, %if.end528
  %190 = phi i8* [ %186, %if.end528 ], [ %.pre914, %ioc_bb534 ]
  %incdec.ptr551 = getelementptr inbounds i8* %190, i32 1
  store i8* %incdec.ptr551, i8** @patparse, align 4, !tbaa !4
  %call552 = call i64 @zstrtol(i8* %incdec.ptr551, i8** @patparse, i32 10) nounwind
  %call552.off = add i64 %call552, 2147483648
  %191 = icmp ult i64 %call552.off, 4294967296
  br i1 %191, label %cont556, label %ioc_bb555

ioc_bb555:                                        ; preds = %if.else550
  call void @__ioc_report_conversion(i32 1480, i32 32, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @13, i32 0, i32 0), i64 %call552, i8 1) nounwind
  br label %cont556

cont556:                                          ; preds = %ioc_bb555, %if.else550
  %conv557 = trunc i64 %call552 to i32
  %l559 = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 3, i32 0
  store i32 %conv557, i32* %l559, align 4, !tbaa !3
  %192 = load i8** @patparse, align 4, !tbaa !4
  %193 = load i8* %192, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1481, i32 35, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp563 = icmp eq i8 %193, -119
  br i1 %cmp563, label %if.end566, label %return

if.end566:                                        ; preds = %cont556
  %194 = load i8** @patparse, align 4, !tbaa !4
  %cmp567 = icmp eq i8* %194, %incdec.ptr551
  br i1 %cmp567, label %cont571, label %if.end575

cont571:                                          ; preds = %if.end566
  store i32 -1, i32* %l559, align 4, !tbaa !3
  br label %if.end575

if.end575:                                        ; preds = %if.end566, %cont571, %if.end545
  %195 = phi i8* [ %194, %if.end566 ], [ %incdec.ptr551, %cont571 ], [ %.pre, %if.end545 ]
  %incdec.ptr576 = getelementptr inbounds i8* %195, i32 1
  store i8* %incdec.ptr576, i8** @patparse, align 4, !tbaa !4
  %196 = getelementptr inbounds [5 x %union.upat]* %countargs, i32 0, i32 4, i32 0
  store i32 0, i32* %196, align 4, !tbaa !4
  %197 = bitcast [5 x %union.upat]* %countargs to i8*
  call fastcc void @patinsert(i32 11, i32 %starter.2, i8* %197, i32 20)
  %198 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %starter.2, i32 1)
  %199 = extractvalue { i32, i1 } %198, 0
  %200 = extractvalue { i32, i1 } %198, 1
  %201 = sext i32 %starter.2 to i64
  br i1 %200, label %ioc_bb580, label %cont581

ioc_bb580:                                        ; preds = %if.end575
  call void @__ioc_report_add_overflow(i32 1499, i32 20, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %201, i64 1, i8 13) nounwind
  br label %cont581

cont581:                                          ; preds = %if.end575, %ioc_bb580
  %202 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %199, i32 5)
  %203 = extractvalue { i32, i1 } %202, 0
  %204 = extractvalue { i32, i1 } %202, 1
  br i1 %204, label %ioc_bb582, label %cont583

ioc_bb582:                                        ; preds = %cont581
  %205 = sext i32 %199 to i64
  call void @__ioc_report_add_overflow(i32 1499, i32 24, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %205, i64 5, i8 13) nounwind
  br label %cont583

cont583:                                          ; preds = %cont581, %ioc_bb582
  %206 = bitcast %union.upat* %up.i818 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %206) nounwind
  %207 = load i8** @patcode, align 4, !tbaa !4
  %208 = load i8** @patout, align 4, !tbaa !4
  %l.i819 = getelementptr inbounds %union.upat* %up.i818, i32 0, i32 0
  store i32 3, i32* %l.i819, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i820 = ptrtoint i8* %208 to i32
  %sub.ptr.lhs.cast.i821 = ptrtoint i8* %207 to i32
  %sub.ptr.sub.i822 = sub i32 %sub.ptr.lhs.cast.i821, %sub.ptr.rhs.cast.i820
  %sub.ptr.div.i823 = ashr exact i32 %sub.ptr.sub.i822, 2
  call fastcc void @patadd(i8* %206, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %206) nounwind
  call fastcc void @pattail(i32 %203, i32 %sub.ptr.div.i823)
  br i1 %200, label %ioc_bb585, label %cont586

ioc_bb585:                                        ; preds = %cont583
  call void @__ioc_report_add_overflow(i32 1501, i32 26, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %201, i64 1, i8 13) nounwind
  br label %cont586

cont586:                                          ; preds = %cont583, %ioc_bb585
  call fastcc void @pattail(i32 %203, i32 %199)
  %209 = bitcast %union.upat* %up.i824 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %209) nounwind
  %210 = load i8** @patcode, align 4, !tbaa !4
  %211 = load i8** @patout, align 4, !tbaa !4
  %l.i825 = getelementptr inbounds %union.upat* %up.i824, i32 0, i32 0
  store i32 5, i32* %l.i825, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i826 = ptrtoint i8* %211 to i32
  %sub.ptr.lhs.cast.i827 = ptrtoint i8* %210 to i32
  %sub.ptr.sub.i828 = sub i32 %sub.ptr.lhs.cast.i827, %sub.ptr.rhs.cast.i826
  %sub.ptr.div.i829 = ashr exact i32 %sub.ptr.sub.i828, 2
  call fastcc void @patadd(i8* %209, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %209) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i829)
  br i1 %200, label %ioc_bb588, label %cont589

ioc_bb588:                                        ; preds = %cont586
  call void @__ioc_report_add_overflow(i32 1509, i32 21, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %201, i64 1, i8 13) nounwind
  br label %cont589

cont589:                                          ; preds = %cont586, %ioc_bb588
  call fastcc void @pattail(i32 %199, i32 %sub.ptr.div.i829)
  br label %if.end662

if.else590:                                       ; preds = %if.then482, %if.then486, %if.then490, %if.then502, %if.else504
  %op.0.ph = phi i32 [ 6, %if.then482 ], [ 7, %if.then486 ], [ 0, %if.then490 ], [ 7, %if.then502 ], [ 6, %if.else504 ]
  %and591 = and i32 %flags.1, 1
  %tobool592 = icmp eq i32 %and591, 0
  br i1 %tobool592, label %if.else630, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %if.else590
  %cmp597 = icmp eq i32 %op.0.ph, 7
  %op.0.off = add i32 %op.0.ph, -6
  %212 = icmp ult i32 %op.0.off, 2
  br i1 %212, label %land.lhs.true599, label %if.else621

land.lhs.true599:                                 ; preds = %land.lhs.true593
  %213 = load i8** @patout, align 4, !tbaa !4
  %214 = bitcast i8* %213 to %union.upat*
  %l601 = getelementptr inbounds %union.upat* %214, i32 %starter.2, i32 0
  %215 = load i32* %l601, align 4, !tbaa !3
  %and602 = and i32 %215, 255
  %cmp603 = icmp eq i32 %and602, 64
  br i1 %cmp603, label %if.then605, label %if.else621

if.then605:                                       ; preds = %land.lhs.true599
  %and611 = and i32 %215, -256
  br i1 %cmp597, label %if.then609, label %if.else615

if.then609:                                       ; preds = %if.then605
  %or612 = or i32 %and611, 64
  store i32 %or612, i32* %l601, align 4, !tbaa !3
  %216 = bitcast %union.upat* %up.i830 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %216) nounwind
  %217 = load i8** @patcode, align 4, !tbaa !4
  %l.i831 = getelementptr inbounds %union.upat* %up.i830, i32 0, i32 0
  store i32 67, i32* %l.i831, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i832 = ptrtoint i8* %213 to i32
  %sub.ptr.lhs.cast.i833 = ptrtoint i8* %217 to i32
  %sub.ptr.sub.i834 = sub i32 %sub.ptr.lhs.cast.i833, %sub.ptr.rhs.cast.i832
  %sub.ptr.div.i835 = ashr exact i32 %sub.ptr.sub.i834, 2
  call fastcc void @patadd(i8* %216, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %216) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i835)
  br label %if.end662

if.else615:                                       ; preds = %if.then605
  %or618 = or i32 %and611, 67
  store i32 %or618, i32* %l601, align 4, !tbaa !3
  br label %if.end662

if.else621:                                       ; preds = %land.lhs.true593, %land.lhs.true599
  %tobool625 = icmp eq i32 %op.0.ph, 0
  br i1 %tobool625, label %if.else651, label %land.lhs.true626

land.lhs.true626:                                 ; preds = %if.else621
  %218 = load i32* @patglobflags, align 4, !tbaa !2
  %and627 = and i32 %218, 255
  %tobool628 = icmp eq i32 %and627, 0
  br i1 %tobool628, label %if.then629, label %if.else630

if.then629:                                       ; preds = %land.lhs.true626
  call fastcc void @patinsert(i32 %op.0.ph, i32 %starter.2, i8* null, i32 0)
  br label %if.end662

if.else630:                                       ; preds = %if.else590, %land.lhs.true626
  switch i32 %op.0.ph, label %if.else651 [
    i32 6, label %if.then633
    i32 7, label %if.then643
  ]

if.then633:                                       ; preds = %if.else630
  %219 = getelementptr inbounds %union.upat* %up, i32 0, i32 0
  store i32 0, i32* %219, align 4, !tbaa !4
  %220 = bitcast %union.upat* %up to i8*
  call fastcc void @patinsert(i32 33, i32 %starter.2, i8* %220, i32 4)
  %221 = bitcast %union.upat* %up.i836 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %221) nounwind
  %222 = load i8** @patcode, align 4, !tbaa !4
  %223 = load i8** @patout, align 4, !tbaa !4
  %l.i837 = getelementptr inbounds %union.upat* %up.i836, i32 0, i32 0
  store i32 3, i32* %l.i837, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i838 = ptrtoint i8* %223 to i32
  %sub.ptr.lhs.cast.i839 = ptrtoint i8* %222 to i32
  %sub.ptr.sub.i840 = sub i32 %sub.ptr.lhs.cast.i839, %sub.ptr.rhs.cast.i838
  %sub.ptr.div.i841 = ashr exact i32 %sub.ptr.sub.i840, 2
  call fastcc void @patadd(i8* %221, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %221) nounwind
  call fastcc void @patoptail(i32 %starter.2, i32 %sub.ptr.div.i841)
  call fastcc void @patoptail(i32 %starter.2, i32 %starter.2)
  %224 = bitcast %union.upat* %up.i842 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %224) nounwind
  %225 = load i8** @patcode, align 4, !tbaa !4
  %226 = load i8** @patout, align 4, !tbaa !4
  %l.i843 = getelementptr inbounds %union.upat* %up.i842, i32 0, i32 0
  store i32 32, i32* %l.i843, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i844 = ptrtoint i8* %226 to i32
  %sub.ptr.lhs.cast.i845 = ptrtoint i8* %225 to i32
  %sub.ptr.sub.i846 = sub i32 %sub.ptr.lhs.cast.i845, %sub.ptr.rhs.cast.i844
  %sub.ptr.div.i847 = ashr exact i32 %sub.ptr.sub.i846, 2
  call fastcc void @patadd(i8* %224, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %224) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i847)
  %227 = bitcast %union.upat* %up.i848 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %227) nounwind
  %228 = load i8** @patcode, align 4, !tbaa !4
  %229 = load i8** @patout, align 4, !tbaa !4
  %l.i849 = getelementptr inbounds %union.upat* %up.i848, i32 0, i32 0
  store i32 5, i32* %l.i849, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i850 = ptrtoint i8* %229 to i32
  %sub.ptr.lhs.cast.i851 = ptrtoint i8* %228 to i32
  %sub.ptr.sub.i852 = sub i32 %sub.ptr.lhs.cast.i851, %sub.ptr.rhs.cast.i850
  %sub.ptr.div.i853 = ashr exact i32 %sub.ptr.sub.i852, 2
  call fastcc void @patadd(i8* %227, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %227) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i853)
  br label %if.end662

if.then643:                                       ; preds = %if.else630
  %230 = bitcast %union.upat* %up.i854 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %230) nounwind
  %231 = load i8** @patcode, align 4, !tbaa !4
  %232 = load i8** @patout, align 4, !tbaa !4
  %l.i855 = getelementptr inbounds %union.upat* %up.i854, i32 0, i32 0
  store i32 33, i32* %l.i855, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i856 = ptrtoint i8* %232 to i32
  %sub.ptr.lhs.cast.i857 = ptrtoint i8* %231 to i32
  %sub.ptr.sub.i858 = sub i32 %sub.ptr.lhs.cast.i857, %sub.ptr.rhs.cast.i856
  %sub.ptr.div.i859 = ashr exact i32 %sub.ptr.sub.i858, 2
  call fastcc void @patadd(i8* %230, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %230) nounwind
  %233 = getelementptr inbounds %union.upat* %up, i32 0, i32 0
  store i32 0, i32* %233, align 4, !tbaa !4
  %234 = bitcast %union.upat* %up to i8*
  call fastcc void @patadd(i8* %234, i32 0, i32 4, i32 0)
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i859)
  %235 = bitcast %union.upat* %up.i860 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %235) nounwind
  %236 = load i8** @patcode, align 4, !tbaa !4
  %237 = load i8** @patout, align 4, !tbaa !4
  %l.i861 = getelementptr inbounds %union.upat* %up.i860, i32 0, i32 0
  store i32 3, i32* %l.i861, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i862 = ptrtoint i8* %237 to i32
  %sub.ptr.lhs.cast.i863 = ptrtoint i8* %236 to i32
  %sub.ptr.sub.i864 = sub i32 %sub.ptr.lhs.cast.i863, %sub.ptr.rhs.cast.i862
  %sub.ptr.div.i865 = ashr exact i32 %sub.ptr.sub.i864, 2
  call fastcc void @patadd(i8* %235, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %235) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i865, i32 %starter.2)
  %238 = bitcast %union.upat* %up.i866 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %238) nounwind
  %239 = load i8** @patcode, align 4, !tbaa !4
  %240 = load i8** @patout, align 4, !tbaa !4
  %l.i867 = getelementptr inbounds %union.upat* %up.i866, i32 0, i32 0
  store i32 32, i32* %l.i867, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i868 = ptrtoint i8* %240 to i32
  %sub.ptr.lhs.cast.i869 = ptrtoint i8* %239 to i32
  %sub.ptr.sub.i870 = sub i32 %sub.ptr.lhs.cast.i869, %sub.ptr.rhs.cast.i868
  %sub.ptr.div.i871 = ashr exact i32 %sub.ptr.sub.i870, 2
  call fastcc void @patadd(i8* %238, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %238) nounwind
  call fastcc void @pattail(i32 %sub.ptr.div.i859, i32 %sub.ptr.div.i871)
  %241 = bitcast %union.upat* %up.i872 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %241) nounwind
  %242 = load i8** @patcode, align 4, !tbaa !4
  %243 = load i8** @patout, align 4, !tbaa !4
  %l.i873 = getelementptr inbounds %union.upat* %up.i872, i32 0, i32 0
  store i32 5, i32* %l.i873, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i874 = ptrtoint i8* %243 to i32
  %sub.ptr.lhs.cast.i875 = ptrtoint i8* %242 to i32
  %sub.ptr.sub.i876 = sub i32 %sub.ptr.lhs.cast.i875, %sub.ptr.rhs.cast.i874
  %sub.ptr.div.i877 = ashr exact i32 %sub.ptr.sub.i876, 2
  call fastcc void @patadd(i8* %241, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %241) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i877)
  br label %if.end662

if.else651:                                       ; preds = %if.else621, %if.else630
  %cmp652 = icmp eq i32 %kshchar.1, 63
  br i1 %cmp652, label %if.then654, label %if.end662

if.then654:                                       ; preds = %if.else651
  call fastcc void @patinsert(i32 32, i32 %starter.2, i8* null, i32 0)
  %244 = bitcast %union.upat* %up.i878 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %244) nounwind
  %245 = load i8** @patcode, align 4, !tbaa !4
  %246 = load i8** @patout, align 4, !tbaa !4
  %l.i879 = getelementptr inbounds %union.upat* %up.i878, i32 0, i32 0
  store i32 32, i32* %l.i879, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i880 = ptrtoint i8* %246 to i32
  %sub.ptr.lhs.cast.i881 = ptrtoint i8* %245 to i32
  %sub.ptr.sub.i882 = sub i32 %sub.ptr.lhs.cast.i881, %sub.ptr.rhs.cast.i880
  %sub.ptr.div.i883 = ashr exact i32 %sub.ptr.sub.i882, 2
  call fastcc void @patadd(i8* %244, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %244) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i883)
  %247 = bitcast %union.upat* %up.i884 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %247) nounwind
  %248 = load i8** @patcode, align 4, !tbaa !4
  %249 = load i8** @patout, align 4, !tbaa !4
  %l.i885 = getelementptr inbounds %union.upat* %up.i884, i32 0, i32 0
  store i32 5, i32* %l.i885, align 4, !tbaa !3
  %sub.ptr.rhs.cast.i886 = ptrtoint i8* %249 to i32
  %sub.ptr.lhs.cast.i887 = ptrtoint i8* %248 to i32
  %sub.ptr.sub.i888 = sub i32 %sub.ptr.lhs.cast.i887, %sub.ptr.rhs.cast.i886
  %sub.ptr.div.i889 = ashr exact i32 %sub.ptr.sub.i888, 2
  call fastcc void @patadd(i8* %247, i32 0, i32 4, i32 0) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %247) nounwind
  call fastcc void @pattail(i32 %starter.2, i32 %sub.ptr.div.i889)
  call fastcc void @patoptail(i32 %starter.2, i32 %sub.ptr.div.i889)
  br label %if.end662

if.end662:                                        ; preds = %if.else651, %if.else615, %if.then609, %if.then633, %if.then654, %if.then643, %if.then629, %cont589
  %250 = load i8** @patparse, align 4, !tbaa !4
  %251 = load i8* %250, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1568, i32 31, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @20, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp666 = icmp eq i8 %251, -124
  %.starter.2 = select i1 %cmp666, i32 0, i32 %starter.2
  ret i32 %.starter.2

return:                                           ; preds = %ioc_bb339.thread, %cont556, %if.then538, %if.end474, %if.end174, %if.end401, %if.else360, %if.then355, %sw.bb346, %ioc_bb339, %if.then473, %sw.bb427
  %retval.0 = phi i32 [ %starter.2, %if.then473 ], [ %call428, %sw.bb427 ], [ 0, %ioc_bb339 ], [ 0, %sw.bb346 ], [ 0, %if.then355 ], [ 0, %if.else360 ], [ 0, %if.end401 ], [ 0, %if.end174 ], [ 0, %if.end474 ], [ 0, %if.then538 ], [ 0, %cont556 ], [ 0, %ioc_bb339.thread ]
  ret i32 %retval.0
}

declare i8* @strchr(i8*, i32) nounwind readonly

define internal fastcc void @patinsert(i32 %op, i32 %opnd, i8* %xtra, i32 %sz) nounwind {
entry:
  %buf = alloca %union.upat, align 4
  %l = getelementptr inbounds %union.upat* %buf, i32 0, i32 0
  store i32 0, i32* %l, align 4, !tbaa !3
  %0 = bitcast %union.upat* %buf to i8*
  call fastcc void @patadd(i8* %0, i32 0, i32 4, i32 0)
  %tobool = icmp eq i32 %sz, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @patadd(i8* %xtra, i32 0, i32 %sz, i32 0)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = load i8** @patcode, align 4, !tbaa !4
  %add.ptr.sum = sub i32 -4, %sz
  %add.ptr1 = getelementptr inbounds i8* %1, i32 %add.ptr.sum
  %2 = load i8** @patout, align 4, !tbaa !4
  %3 = icmp sgt i32 %opnd, -1
  br i1 %3, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %if.end
  %4 = sext i32 %opnd to i64
  call void @__ioc_report_conversion(i32 1635, i32 20, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %if.end
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %opnd, i32 4)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %cont3
  %8 = zext i32 %opnd to i64
  call void @__ioc_report_mul_overflow(i32 1635, i32 25, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %8, i64 4, i8 5) nounwind
  br label %cont5

cont5:                                            ; preds = %cont3, %ioc_bb4
  %add.ptr6 = getelementptr inbounds i8* %2, i32 %6
  %cmp26 = icmp ugt i8* %add.ptr1, %add.ptr6
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %cont5, %while.body
  %dst.028 = phi i8* [ %incdec.ptr7, %while.body ], [ %1, %cont5 ]
  %src.027 = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr1, %cont5 ]
  %incdec.ptr = getelementptr inbounds i8* %src.027, i32 -1
  %9 = load i8* %incdec.ptr, align 1, !tbaa !0
  %incdec.ptr7 = getelementptr inbounds i8* %dst.028, i32 -1
  store i8 %9, i8* %incdec.ptr7, align 1, !tbaa !0
  %cmp = icmp ugt i8* %incdec.ptr, %add.ptr6
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %cont5
  %l8 = bitcast i8* %add.ptr6 to i32*
  store i32 %op, i32* %l8, align 4, !tbaa !3
  %add.ptr6.sum = add i32 %6, 4
  %add.ptr9 = getelementptr inbounds i8* %2, i32 %add.ptr6.sum
  br label %while.cond10

while.cond10:                                     ; preds = %while.body14, %while.end
  %sz.addr.0 = phi i32 [ %sz, %while.end ], [ %11, %while.body14 ]
  %opdst.0 = phi i8* [ %add.ptr9, %while.end ], [ %incdec.ptr16, %while.body14 ]
  %xtra.addr.0 = phi i8* [ %xtra, %while.end ], [ %incdec.ptr15, %while.body14 ]
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sz.addr.0, i32 -1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %while.cond10
  %13 = sext i32 %sz.addr.0 to i64
  call void @__ioc_report_add_overflow(i32 1642, i32 11, i8* getelementptr inbounds ([24 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @18, i32 0, i32 0), i64 %13, i64 -1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %while.cond10, %ioc_bb11
  %tobool13 = icmp eq i32 %sz.addr.0, 0
  br i1 %tobool13, label %while.end17, label %while.body14

while.body14:                                     ; preds = %cont12
  %incdec.ptr15 = getelementptr inbounds i8* %xtra.addr.0, i32 1
  %14 = load i8* %xtra.addr.0, align 1, !tbaa !0
  %incdec.ptr16 = getelementptr inbounds i8* %opdst.0, i32 1
  store i8 %14, i8* %opdst.0, align 1, !tbaa !0
  br label %while.cond10

while.end17:                                      ; preds = %cont12
  ret void
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"long", metadata !0}
!4 = metadata !{metadata !"any pointer", metadata !0}
!5 = metadata !{metadata !"short", metadata !0}
!6 = metadata !{metadata !"long long", metadata !0}
