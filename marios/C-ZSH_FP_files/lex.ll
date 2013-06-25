; ModuleID = '../../src/Src/lex.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.lexstack = type { %struct.lexstack*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i16*, i32, i32, i32, i32, %struct.heredocs*, i32 (...)*, void (i32)*, void (i32)*, void (i32)*, void (...)*, void (i32)*, i32, i32, i32, i32*, %struct.eccstr*, i32, i32, i32, i8*, i32, i64 }
%struct.heredocs = type { %struct.heredocs*, i32, i32, i8* }
%struct.eccstr = type { %struct.eccstr*, %struct.eccstr*, i8*, i32, i32, i32 }
%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.alias = type { %struct.hashnode, i8*, i32 }

@ztokens = global [26 x i8] c"#$^*()$=|{}[]`<>>?~`,'\22\5C\5C\00", align 1
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c">|\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c">>|\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"<<-\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"<&\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c">&\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"&>\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"&>|\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c">>&\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c">>&|\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"|&\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"&|\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c";&\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c";|\00", align 1
@tokstrings = global [63 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 4
@incmdpos = external global i32
@incond = external global i32
@incasepat = external global i32
@dbparens = internal unnamed_addr global i32 0, align 4
@isfirstln = common global i32 0, align 4
@isfirstch = common global i32 0, align 4
@histactive = external global i32
@histdone = external global i32
@lexflags = common global i32 0, align 4
@stophist = external global i32
@lstack = internal unnamed_addr global %struct.lexstack* null, align 4
@chline = external global i8*
@zle_chline = external global i8*
@hptr = external global i8*
@hlinesz = external global i32
@cmdstack = external global i8*
@cmdsp = external global i32
@tok = common global i32 0, align 4
@isnewlin = external global i32
@tokstr = common global i8* null, align 4
@zshlextext = common global i8* null, align 4
@bptr = internal unnamed_addr global i8* null, align 4
@bsiz = internal unnamed_addr global i32 256, align 4
@len = internal unnamed_addr global i32 0, align 4
@chwords = external global i16*
@chwordlen = external global i32
@chwordpos = external global i32
@hwgetword = external global i32
@lexstop = common global i32 0, align 4
@hdocs = external global %struct.heredocs*
@hgetc = external global i32 ()*
@hungetc = external global void (i32)*
@hwaddc = external global void (i32)*
@hwbegin = external global void (i32)*
@hwend = external global void ()*
@addtoline = external global void (i32)*
@eclen = external global i32
@ecused = external global i32
@ecnpats = external global i32
@ecbuf = external global i32*
@ecstrs = external global %struct.eccstr*
@ecsoffs = external global i32
@ecssub = external global i32
@ecnfunc = external global i32
@toklineno = common global i64 0, align 8
@inredir = external global i32
@errflag = external global i32
@nocorrect = common global i32 0, align 4
@.str31 = private unnamed_addr constant [24 x i8] c"here document too large\00", align 1
@inbufct = external global i32
@ctxtlex.oldpos = internal unnamed_addr global i32 0, align 4
@infor = external global i32
@.str32 = private unnamed_addr constant [16 x i8] c"\5Cq\0A;!&|(){}[]<>\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c";)|$[]~({}><=\5C'\22`,\00", align 1
@lexact1 = internal unnamed_addr global [256 x i8] zeroinitializer, align 1
@lexact2 = internal unnamed_addr global [256 x i8] zeroinitializer, align 1
@lextok2 = internal unnamed_addr global [256 x i8] zeroinitializer, align 1
@0 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str34 = private unnamed_addr constant [22 x i8] c"parse error near `%c'\00", align 1
@.str35 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@nulstring = external global [0 x i8]
@zlemetall = common global i32 0, align 4
@addedx = common global i32 0, align 4
@we = common global i32 0, align 4
@zlemetacs = common global i32 0, align 4
@wordbeg = common global i32 0, align 4
@wb = common global i32 0, align 4
@opts = external global [169 x i8]
@strin = external global i32
@inbufflags = external global i32
@typtab = external global [256 x i16]
@noaliases = common global i32 0, align 4
@reswdtab = external global %struct.hashtable*
@aliastab = external global %struct.hashtable*
@inalmore = common global i32 0, align 4
@aliasspaceflag = external global i32
@sufaliastab = external global %struct.hashtable*
@.str36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"]]\00", align 1
@tokfd = common global i32 0, align 4
@inwhat = common global i32 0, align 4
@parbegin = common global i32 0, align 4
@parend = common global i32 0, align 4
@nocomments = common global i32 0, align 4
@.str38 = private unnamed_addr constant [13 x i8] c"unmatched %c\00", align 1
@.str39 = private unnamed_addr constant [23 x i8] c"closing brace expected\00", align 1
@1 = internal unnamed_addr constant [3 x i8] c"*=\00"
@2 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@3 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@4 = internal unnamed_addr constant [3 x i8] c"+=\00"
@5 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@6 = internal unnamed_addr constant [5 x i8] c"char\00"
@7 = internal unnamed_addr constant [3 x i8] c"-=\00"
@lineno = external global i64
@qbang = external global i32
@bangchar = external global i8
@8 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@9 = internal unnamed_addr constant [2 x i8] c"-\00"
@hashchar = external global i8
@expanding = external global i32
@10 = internal unnamed_addr constant [4 x i8] c"int\00"
@11 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@12 = internal unnamed_addr constant [2 x i8] c"+\00"
@13 = internal unnamed_addr constant [20 x i8] c"../../src/Src/lex.c\00"

define void @lexsave() nounwind {
entry:
  %call = tail call noalias i8* @malloc(i32 180) nounwind
  %0 = bitcast i8* %call to %struct.lexstack*
  %1 = load i32* @incmdpos, align 4, !tbaa !0
  %incmdpos = getelementptr inbounds i8* %call, i32 4
  %2 = bitcast i8* %incmdpos to i32*
  store i32 %1, i32* %2, align 4, !tbaa !0
  %3 = load i32* @incond, align 4, !tbaa !0
  %incond = getelementptr inbounds i8* %call, i32 8
  %4 = bitcast i8* %incond to i32*
  store i32 %3, i32* %4, align 4, !tbaa !0
  %5 = load i32* @incasepat, align 4, !tbaa !0
  %incasepat = getelementptr inbounds i8* %call, i32 12
  %6 = bitcast i8* %incasepat to i32*
  store i32 %5, i32* %6, align 4, !tbaa !0
  %7 = load i32* @dbparens, align 4, !tbaa !0
  %dbparens = getelementptr inbounds i8* %call, i32 16
  %8 = bitcast i8* %dbparens to i32*
  store i32 %7, i32* %8, align 4, !tbaa !0
  %9 = load i32* @isfirstln, align 4, !tbaa !0
  %isfirstln = getelementptr inbounds i8* %call, i32 20
  %10 = bitcast i8* %isfirstln to i32*
  store i32 %9, i32* %10, align 4, !tbaa !0
  %11 = load i32* @isfirstch, align 4, !tbaa !0
  %isfirstch = getelementptr inbounds i8* %call, i32 24
  %12 = bitcast i8* %isfirstch to i32*
  store i32 %11, i32* %12, align 4, !tbaa !0
  %13 = load i32* @histactive, align 4, !tbaa !0
  %histactive = getelementptr inbounds i8* %call, i32 28
  %14 = bitcast i8* %histactive to i32*
  store i32 %13, i32* %14, align 4, !tbaa !0
  %15 = load i32* @histdone, align 4, !tbaa !0
  %histdone = getelementptr inbounds i8* %call, i32 32
  %16 = bitcast i8* %histdone to i32*
  store i32 %15, i32* %16, align 4, !tbaa !0
  %17 = load i32* @lexflags, align 4, !tbaa !0
  %lexflags = getelementptr inbounds i8* %call, i32 36
  %18 = bitcast i8* %lexflags to i32*
  store i32 %17, i32* %18, align 4, !tbaa !0
  %19 = load i32* @stophist, align 4, !tbaa !0
  %stophist = getelementptr inbounds i8* %call, i32 40
  %20 = bitcast i8* %stophist to i32*
  store i32 %19, i32* %20, align 4, !tbaa !0
  store i32 0, i32* @stophist, align 4, !tbaa !0
  %21 = load %struct.lexstack** @lstack, align 4, !tbaa !3
  %tobool = icmp eq %struct.lexstack* %21, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %22 = load i8** @chline, align 4, !tbaa !3
  store i8* %22, i8** @zle_chline, align 4, !tbaa !3
  %23 = load i8** @hptr, align 4, !tbaa !3
  %tobool1 = icmp eq i8* %23, null
  br i1 %tobool1, label %if.end3, label %cont

cont:                                             ; preds = %if.then
  store i8 0, i8* %23, align 1, !tbaa !1
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then, %cont
  %24 = load i8** @chline, align 4, !tbaa !3
  %hline = getelementptr inbounds i8* %call, i32 48
  %25 = bitcast i8* %hline to i8**
  store i8* %24, i8** %25, align 4, !tbaa !3
  store i8* null, i8** @chline, align 4, !tbaa !3
  %26 = load i8** @hptr, align 4, !tbaa !3
  %hptr = getelementptr inbounds i8* %call, i32 52
  %27 = bitcast i8* %hptr to i8**
  store i8* %26, i8** %27, align 4, !tbaa !3
  store i8* null, i8** @hptr, align 4, !tbaa !3
  %28 = load i32* @hlinesz, align 4, !tbaa !0
  %hlinesz = getelementptr inbounds i8* %call, i32 44
  %29 = bitcast i8* %hlinesz to i32*
  store i32 %28, i32* %29, align 4, !tbaa !0
  %30 = load i8** @cmdstack, align 4, !tbaa !3
  %cstack = getelementptr inbounds i8* %call, i32 164
  %31 = bitcast i8* %cstack to i8**
  store i8* %30, i8** %31, align 4, !tbaa !3
  %32 = load i32* @cmdsp, align 4, !tbaa !0
  %csp = getelementptr inbounds i8* %call, i32 168
  %33 = bitcast i8* %csp to i32*
  store i32 %32, i32* %33, align 4, !tbaa !0
  %call6 = tail call i8* @zalloc(i32 256) nounwind
  store i8* %call6, i8** @cmdstack, align 4, !tbaa !3
  %34 = load i32* @tok, align 4, !tbaa !0
  %tok = getelementptr inbounds i8* %call, i32 56
  %35 = bitcast i8* %tok to i32*
  store i32 %34, i32* %35, align 4, !tbaa !0
  %36 = load i32* @isnewlin, align 4, !tbaa !0
  %isnewlin = getelementptr inbounds i8* %call, i32 60
  %37 = bitcast i8* %isnewlin to i32*
  store i32 %36, i32* %37, align 4, !tbaa !0
  %38 = load i8** @tokstr, align 4, !tbaa !3
  %tokstr = getelementptr inbounds i8* %call, i32 64
  %39 = bitcast i8* %tokstr to i8**
  store i8* %38, i8** %39, align 4, !tbaa !3
  %40 = load i8** @zshlextext, align 4, !tbaa !3
  %zshlextext = getelementptr inbounds i8* %call, i32 68
  %41 = bitcast i8* %zshlextext to i8**
  store i8* %40, i8** %41, align 4, !tbaa !3
  %42 = load i8** @bptr, align 4, !tbaa !3
  %bptr = getelementptr inbounds i8* %call, i32 72
  %43 = bitcast i8* %bptr to i8**
  store i8* %42, i8** %43, align 4, !tbaa !3
  store i8* null, i8** @bptr, align 4, !tbaa !3
  store i8* null, i8** @zshlextext, align 4, !tbaa !3
  store i8* null, i8** @tokstr, align 4, !tbaa !3
  %44 = load i32* @bsiz, align 4, !tbaa !0
  %bsiz = getelementptr inbounds i8* %call, i32 76
  %45 = bitcast i8* %bsiz to i32*
  store i32 %44, i32* %45, align 4, !tbaa !0
  store i32 256, i32* @bsiz, align 4, !tbaa !0
  %46 = load i32* @len, align 4, !tbaa !0
  %len = getelementptr inbounds i8* %call, i32 80
  %47 = bitcast i8* %len to i32*
  store i32 %46, i32* %47, align 4, !tbaa !0
  %48 = load i16** @chwords, align 4, !tbaa !3
  %chwords = getelementptr inbounds i8* %call, i32 84
  %49 = bitcast i8* %chwords to i16**
  store i16* %48, i16** %49, align 4, !tbaa !3
  %50 = load i32* @chwordlen, align 4, !tbaa !0
  %chwordlen = getelementptr inbounds i8* %call, i32 88
  %51 = bitcast i8* %chwordlen to i32*
  store i32 %50, i32* %51, align 4, !tbaa !0
  %52 = load i32* @chwordpos, align 4, !tbaa !0
  %chwordpos = getelementptr inbounds i8* %call, i32 92
  %53 = bitcast i8* %chwordpos to i32*
  store i32 %52, i32* %53, align 4, !tbaa !0
  %54 = load i32* @hwgetword, align 4, !tbaa !0
  %hwgetword = getelementptr inbounds i8* %call, i32 96
  %55 = bitcast i8* %hwgetword to i32*
  store i32 %54, i32* %55, align 4, !tbaa !0
  %56 = load i32* @lexstop, align 4, !tbaa !0
  %lexstop = getelementptr inbounds i8* %call, i32 100
  %57 = bitcast i8* %lexstop to i32*
  store i32 %56, i32* %57, align 4, !tbaa !0
  %58 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %hdocs = getelementptr inbounds i8* %call, i32 104
  %59 = bitcast i8* %hdocs to %struct.heredocs**
  store %struct.heredocs* %58, %struct.heredocs** %59, align 4, !tbaa !3
  %60 = load i32 ()** @hgetc, align 4, !tbaa !3
  %61 = bitcast i32 ()* %60 to i32 (...)*
  %hgetc = getelementptr inbounds i8* %call, i32 108
  %62 = bitcast i8* %hgetc to i32 (...)**
  store i32 (...)* %61, i32 (...)** %62, align 4, !tbaa !3
  %63 = load void (i32)** @hungetc, align 4, !tbaa !3
  %hungetc = getelementptr inbounds i8* %call, i32 112
  %64 = bitcast i8* %hungetc to void (i32)**
  store void (i32)* %63, void (i32)** %64, align 4, !tbaa !3
  %65 = load void (i32)** @hwaddc, align 4, !tbaa !3
  %hwaddc = getelementptr inbounds i8* %call, i32 116
  %66 = bitcast i8* %hwaddc to void (i32)**
  store void (i32)* %65, void (i32)** %66, align 4, !tbaa !3
  %67 = load void (i32)** @hwbegin, align 4, !tbaa !3
  %hwbegin = getelementptr inbounds i8* %call, i32 120
  %68 = bitcast i8* %hwbegin to void (i32)**
  store void (i32)* %67, void (i32)** %68, align 4, !tbaa !3
  %69 = load void ()** @hwend, align 4, !tbaa !3
  %70 = bitcast void ()* %69 to void (...)*
  %hwend = getelementptr inbounds i8* %call, i32 124
  %71 = bitcast i8* %hwend to void (...)**
  store void (...)* %70, void (...)** %71, align 4, !tbaa !3
  %72 = load void (i32)** @addtoline, align 4, !tbaa !3
  %addtoline = getelementptr inbounds i8* %call, i32 128
  %73 = bitcast i8* %addtoline to void (i32)**
  store void (i32)* %72, void (i32)** %73, align 4, !tbaa !3
  %74 = load i32* @eclen, align 4, !tbaa !0
  %eclen = getelementptr inbounds i8* %call, i32 132
  %75 = bitcast i8* %eclen to i32*
  store i32 %74, i32* %75, align 4, !tbaa !0
  %76 = load i32* @ecused, align 4, !tbaa !0
  %ecused = getelementptr inbounds i8* %call, i32 136
  %77 = bitcast i8* %ecused to i32*
  store i32 %76, i32* %77, align 4, !tbaa !0
  %78 = load i32* @ecnpats, align 4, !tbaa !0
  %ecnpats = getelementptr inbounds i8* %call, i32 140
  %79 = bitcast i8* %ecnpats to i32*
  store i32 %78, i32* %79, align 4, !tbaa !0
  %80 = load i32** @ecbuf, align 4, !tbaa !3
  %ecbuf = getelementptr inbounds i8* %call, i32 144
  %81 = bitcast i8* %ecbuf to i32**
  store i32* %80, i32** %81, align 4, !tbaa !3
  %82 = load %struct.eccstr** @ecstrs, align 4, !tbaa !3
  %ecstrs = getelementptr inbounds i8* %call, i32 148
  %83 = bitcast i8* %ecstrs to %struct.eccstr**
  store %struct.eccstr* %82, %struct.eccstr** %83, align 4, !tbaa !3
  %84 = load i32* @ecsoffs, align 4, !tbaa !0
  %ecsoffs = getelementptr inbounds i8* %call, i32 152
  %85 = bitcast i8* %ecsoffs to i32*
  store i32 %84, i32* %85, align 4, !tbaa !0
  %86 = load i32* @ecssub, align 4, !tbaa !0
  %ecssub = getelementptr inbounds i8* %call, i32 156
  %87 = bitcast i8* %ecssub to i32*
  store i32 %86, i32* %87, align 4, !tbaa !0
  %88 = load i32* @ecnfunc, align 4, !tbaa !0
  %ecnfunc = getelementptr inbounds i8* %call, i32 160
  %89 = bitcast i8* %ecnfunc to i32*
  store i32 %88, i32* %89, align 4, !tbaa !0
  %90 = load i64* @toklineno, align 8, !tbaa !4
  %toklineno = getelementptr inbounds i8* %call, i32 172
  %91 = bitcast i8* %toklineno to i64*
  store i64 %90, i64* %91, align 4, !tbaa !4
  store i32 0, i32* @cmdsp, align 4, !tbaa !0
  store i32 0, i32* @inredir, align 4, !tbaa !0
  store %struct.heredocs* null, %struct.heredocs** @hdocs, align 4, !tbaa !3
  store i32 0, i32* @histactive, align 4, !tbaa !0
  store i32* null, i32** @ecbuf, align 4, !tbaa !3
  %92 = load %struct.lexstack** @lstack, align 4, !tbaa !3
  %next = bitcast i8* %call to %struct.lexstack**
  store %struct.lexstack* %92, %struct.lexstack** %next, align 4, !tbaa !3
  store %struct.lexstack* %0, %struct.lexstack** @lstack, align 4, !tbaa !3
  ret void
}

declare noalias i8* @malloc(i32) nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i8* @zalloc(i32)

define void @lexrestore() nounwind {
entry:
  %0 = load %struct.lexstack** @lstack, align 4, !tbaa !3
  %incmdpos = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 1
  %1 = load i32* %incmdpos, align 4, !tbaa !0
  store i32 %1, i32* @incmdpos, align 4, !tbaa !0
  %incond = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 2
  %2 = load i32* %incond, align 4, !tbaa !0
  store i32 %2, i32* @incond, align 4, !tbaa !0
  %incasepat = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 3
  %3 = load i32* %incasepat, align 4, !tbaa !0
  store i32 %3, i32* @incasepat, align 4, !tbaa !0
  %dbparens = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 4
  %4 = load i32* %dbparens, align 4, !tbaa !0
  store i32 %4, i32* @dbparens, align 4, !tbaa !0
  %isfirstln = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 5
  %5 = load i32* %isfirstln, align 4, !tbaa !0
  store i32 %5, i32* @isfirstln, align 4, !tbaa !0
  %isfirstch = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 6
  %6 = load i32* %isfirstch, align 4, !tbaa !0
  store i32 %6, i32* @isfirstch, align 4, !tbaa !0
  %histactive = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 7
  %7 = load i32* %histactive, align 4, !tbaa !0
  store i32 %7, i32* @histactive, align 4, !tbaa !0
  %histdone = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 8
  %8 = load i32* %histdone, align 4, !tbaa !0
  store i32 %8, i32* @histdone, align 4, !tbaa !0
  %lexflags = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 9
  %9 = load i32* %lexflags, align 4, !tbaa !0
  store i32 %9, i32* @lexflags, align 4, !tbaa !0
  %stophist = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 10
  %10 = load i32* %stophist, align 4, !tbaa !0
  store i32 %10, i32* @stophist, align 4, !tbaa !0
  %hline = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 12
  %11 = load i8** %hline, align 4, !tbaa !3
  store i8* %11, i8** @chline, align 4, !tbaa !3
  %hptr = getelementptr inbounds %struct.lexstack* %0, i32 0, i32 13
  %12 = load i8** %hptr, align 4, !tbaa !3
  store i8* %12, i8** @hptr, align 4, !tbaa !3
  %13 = load i8** @cmdstack, align 4, !tbaa !3
  %tobool = icmp eq i8* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %13) nounwind
  %.pre = load %struct.lexstack** @lstack, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %14 = phi %struct.lexstack* [ %0, %entry ], [ %.pre, %if.then ]
  %cstack = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 41
  %15 = load i8** %cstack, align 4, !tbaa !3
  store i8* %15, i8** @cmdstack, align 4, !tbaa !3
  %csp = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 42
  %16 = load i32* %csp, align 4, !tbaa !0
  store i32 %16, i32* @cmdsp, align 4, !tbaa !0
  %tok = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 14
  %17 = load i32* %tok, align 4, !tbaa !0
  store i32 %17, i32* @tok, align 4, !tbaa !0
  %isnewlin = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 15
  %18 = load i32* %isnewlin, align 4, !tbaa !0
  store i32 %18, i32* @isnewlin, align 4, !tbaa !0
  %tokstr = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 16
  %19 = load i8** %tokstr, align 4, !tbaa !3
  store i8* %19, i8** @tokstr, align 4, !tbaa !3
  %zshlextext = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 17
  %20 = load i8** %zshlextext, align 4, !tbaa !3
  store i8* %20, i8** @zshlextext, align 4, !tbaa !3
  %bptr = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 18
  %21 = load i8** %bptr, align 4, !tbaa !3
  store i8* %21, i8** @bptr, align 4, !tbaa !3
  %bsiz = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 19
  %22 = load i32* %bsiz, align 4, !tbaa !0
  store i32 %22, i32* @bsiz, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 20
  %23 = load i32* %len, align 4, !tbaa !0
  store i32 %23, i32* @len, align 4, !tbaa !0
  %chwords = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 21
  %24 = load i16** %chwords, align 4, !tbaa !3
  store i16* %24, i16** @chwords, align 4, !tbaa !3
  %chwordlen = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 22
  %25 = load i32* %chwordlen, align 4, !tbaa !0
  store i32 %25, i32* @chwordlen, align 4, !tbaa !0
  %chwordpos = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 23
  %26 = load i32* %chwordpos, align 4, !tbaa !0
  store i32 %26, i32* @chwordpos, align 4, !tbaa !0
  %hwgetword = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 24
  %27 = load i32* %hwgetword, align 4, !tbaa !0
  store i32 %27, i32* @hwgetword, align 4, !tbaa !0
  %lexstop = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 25
  %28 = load i32* %lexstop, align 4, !tbaa !0
  store i32 %28, i32* @lexstop, align 4, !tbaa !0
  %hdocs = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 26
  %29 = load %struct.heredocs** %hdocs, align 4, !tbaa !3
  store %struct.heredocs* %29, %struct.heredocs** @hdocs, align 4, !tbaa !3
  %hgetc = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 27
  %30 = load i32 (...)** %hgetc, align 4, !tbaa !3
  %31 = bitcast i32 (...)* %30 to i32 ()*
  store i32 ()* %31, i32 ()** @hgetc, align 4, !tbaa !3
  %hungetc = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 28
  %32 = load void (i32)** %hungetc, align 4, !tbaa !3
  store void (i32)* %32, void (i32)** @hungetc, align 4, !tbaa !3
  %hwaddc = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 29
  %33 = load void (i32)** %hwaddc, align 4, !tbaa !3
  store void (i32)* %33, void (i32)** @hwaddc, align 4, !tbaa !3
  %hwbegin = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 30
  %34 = load void (i32)** %hwbegin, align 4, !tbaa !3
  store void (i32)* %34, void (i32)** @hwbegin, align 4, !tbaa !3
  %hwend = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 31
  %35 = load void (...)** %hwend, align 4, !tbaa !3
  %36 = bitcast void (...)* %35 to void ()*
  store void ()* %36, void ()** @hwend, align 4, !tbaa !3
  %addtoline = getelementptr inbounds %struct.lexstack* %14, i32 0, i32 32
  %37 = load void (i32)** %addtoline, align 4, !tbaa !3
  store void (i32)* %37, void (i32)** @addtoline, align 4, !tbaa !3
  %38 = load i32** @ecbuf, align 4, !tbaa !3
  %tobool1 = icmp eq i32* %38, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %39 = bitcast i32* %38 to i8*
  %40 = load i32* @eclen, align 4, !tbaa !0
  tail call void @zfree(i8* %39, i32 %40) nounwind
  %.pre8 = load %struct.lexstack** @lstack, align 4, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  %41 = phi %struct.lexstack* [ %14, %if.end ], [ %.pre8, %if.then2 ]
  %eclen = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 33
  %42 = load i32* %eclen, align 4, !tbaa !0
  store i32 %42, i32* @eclen, align 4, !tbaa !0
  %ecused = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 34
  %43 = load i32* %ecused, align 4, !tbaa !0
  store i32 %43, i32* @ecused, align 4, !tbaa !0
  %ecnpats = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 35
  %44 = load i32* %ecnpats, align 4, !tbaa !0
  store i32 %44, i32* @ecnpats, align 4, !tbaa !0
  %ecbuf = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 36
  %45 = load i32** %ecbuf, align 4, !tbaa !3
  store i32* %45, i32** @ecbuf, align 4, !tbaa !3
  %ecstrs = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 37
  %46 = load %struct.eccstr** %ecstrs, align 4, !tbaa !3
  store %struct.eccstr* %46, %struct.eccstr** @ecstrs, align 4, !tbaa !3
  %ecsoffs = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 38
  %47 = load i32* %ecsoffs, align 4, !tbaa !0
  store i32 %47, i32* @ecsoffs, align 4, !tbaa !0
  %ecssub = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 39
  %48 = load i32* %ecssub, align 4, !tbaa !0
  store i32 %48, i32* @ecssub, align 4, !tbaa !0
  %ecnfunc = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 40
  %49 = load i32* %ecnfunc, align 4, !tbaa !0
  store i32 %49, i32* @ecnfunc, align 4, !tbaa !0
  %hlinesz = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 11
  %50 = load i32* %hlinesz, align 4, !tbaa !0
  store i32 %50, i32* @hlinesz, align 4, !tbaa !0
  %toklineno = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 43
  %51 = load i64* %toklineno, align 4, !tbaa !4
  store i64 %51, i64* @toklineno, align 8, !tbaa !4
  store i32 0, i32* @errflag, align 4, !tbaa !0
  %next = getelementptr inbounds %struct.lexstack* %41, i32 0, i32 0
  %52 = load %struct.lexstack** %next, align 4, !tbaa !3
  %tobool4 = icmp eq %struct.lexstack* %52, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i8* null, i8** @zle_chline, align 4, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end3, %if.then5
  %53 = bitcast %struct.lexstack* %41 to i8*
  tail call void @free(i8* %53) nounwind
  store %struct.lexstack* %52, %struct.lexstack** @lstack, align 4, !tbaa !3
  ret void
}

declare void @free(i8* nocapture) nounwind

declare void @zfree(i8*, i32)

define void @zshlex() nounwind {
entry:
  %munged_term = alloca i8*, align 4
  %0 = load i32* @tok, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 38
  br i1 %cmp, label %if.end41, label %beginning.i

beginning.i:                                      ; preds = %land.rhs, %sw.bb.i, %entry
  %peekfd.0.i = phi i32 [ -1, %entry ], [ %peekfd.1.i, %sw.bb.i ], [ -1, %land.rhs ]
  store i8* null, i8** @tokstr, align 4, !tbaa !3
  br label %while.cond.i

while.cond.i:                                     ; preds = %cont2.i, %beginning.i
  %1 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call.i = call i32 %1() nounwind
  %2 = sext i32 %call.i to i64
  %3 = icmp ult i32 %call.i, 256
  br i1 %3, label %cont2.i, label %ioc_bb1.i

ioc_bb1.i:                                        ; preds = %while.cond.i
  call void @__ioc_report_conversion(i32 698, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont2.i

cont2.i:                                          ; preds = %ioc_bb1.i, %while.cond.i
  %idxprom.i = and i32 %call.i, 255
  %arrayidx.i = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom.i
  %4 = load i16* %arrayidx.i, align 2, !tbaa !5
  %and.i = and i16 %4, 4
  %tobool.i = icmp ne i16 %and.i, 0
  %5 = load i32* @lexstop, align 4, !tbaa !0
  %lnot.i = icmp eq i32 %5, 0
  %or.cond512.i = and i1 %tobool.i, %lnot.i
  br i1 %or.cond512.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %cont2.i
  %6 = load i64* @lineno, align 8, !tbaa !4
  store i64 %6, i64* @toklineno, align 8, !tbaa !4
  br i1 %lnot.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.end.i
  %7 = load i32* @errflag, align 4, !tbaa !0
  %tobool10.i = icmp ne i32 %7, 0
  %cond.i = select i1 %tobool10.i, i32 38, i32 37
  br label %gettok.exit

if.end.i:                                         ; preds = %while.end.i
  store i32 0, i32* @isfirstln, align 4, !tbaa !0
  %8 = load i32* @inbufct, align 4, !tbaa !0
  %9 = load i32* @qbang, align 4, !tbaa !0
  %tobool11.i = icmp eq i32 %9, 0
  br i1 %tobool11.i, label %land.end15.i, label %land.rhs12.i

land.rhs12.i:                                     ; preds = %if.end.i
  %10 = load i8* @bangchar, align 1, !tbaa !1
  %conv13.i = zext i8 %10 to i32
  %cmp.i = icmp eq i32 %call.i, %conv13.i
  br label %land.end15.i

land.end15.i:                                     ; preds = %land.rhs12.i, %if.end.i
  %11 = phi i1 [ false, %if.end.i ], [ %cmp.i, %land.rhs12.i ]
  %land.ext.i = zext i1 %11 to i32
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %8, i32 %land.ext.i) nounwind
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb16.i, label %cont17.i

ioc_bb16.i:                                       ; preds = %land.end15.i
  %15 = zext i1 %11 to i64
  %16 = sext i32 %8 to i64
  call void @__ioc_report_sub_overflow(i32 704, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  %.pre.i = load i32* @qbang, align 4, !tbaa !0
  br label %cont17.i

cont17.i:                                         ; preds = %ioc_bb16.i, %land.end15.i
  %17 = phi i32 [ %9, %land.end15.i ], [ %.pre.i, %ioc_bb16.i ]
  store i32 %13, i32* @wordbeg, align 4, !tbaa !0
  %18 = load void (i32)** @hwbegin, align 4, !tbaa !3
  %tobool20.i = icmp eq i32 %17, 0
  br i1 %tobool20.i, label %land.end25.i, label %land.rhs21.i

land.rhs21.i:                                     ; preds = %cont17.i
  %19 = load i8* @bangchar, align 1, !tbaa !1
  %conv22.i = zext i8 %19 to i32
  %cmp23.i = icmp eq i32 %call.i, %conv22.i
  br label %land.end25.i

land.end25.i:                                     ; preds = %land.rhs21.i, %cont17.i
  %20 = phi i1 [ false, %cont17.i ], [ %cmp23.i, %land.rhs21.i ]
  %land.ext26.i = zext i1 %20 to i32
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 -1, i32 %land.ext26.i) nounwind
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb27.i, label %cont28.i

ioc_bb27.i:                                       ; preds = %land.end25.i
  %24 = zext i1 %20 to i64
  call void @__ioc_report_sub_overflow(i32 705, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 -1, i64 %24, i8 13) nounwind
  br label %cont28.i

cont28.i:                                         ; preds = %ioc_bb27.i, %land.end25.i
  call void %18(i32 %22) nounwind
  %25 = load i32* @dbparens, align 4, !tbaa !0
  %tobool29.i = icmp eq i32 %25, 0
  br i1 %tobool29.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %cont28.i
  store i32 0, i32* @len, align 4, !tbaa !0
  store i32 32, i32* @bsiz, align 4, !tbaa !0
  %call33.i = call i8* @hcalloc(i32 32) nounwind
  store i8* %call33.i, i8** @tokstr, align 4, !tbaa !3
  store i8* %call33.i, i8** @bptr, align 4, !tbaa !3
  %26 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %26(i32 %call.i) nounwind
  call void @cmdpush(i32 9) nounwind
  %27 = load i32* @infor, align 4, !tbaa !0
  %tobool34.i = icmp ne i32 %27, 0
  %conv40.i = select i1 %tobool34.i, i8 59, i8 41
  %call41.i = call fastcc i32 @dquote_parse(i8 signext %conv40.i, i32 0) nounwind
  call void @cmdpop() nounwind
  %28 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %28, align 1, !tbaa !1
  %tobool44.i = icmp eq i32 %call41.i, 0
  %29 = load i32* @infor, align 4, !tbaa !0
  %tobool45.i = icmp ne i32 %29, 0
  %or.cond.i = and i1 %tobool44.i, %tobool45.i
  br i1 %or.cond.i, label %if.then46.i, label %if.end49.i

if.then46.i:                                      ; preds = %if.then30.i
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 -1) nounwind
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb47.i, label %cont48.i

ioc_bb47.i:                                       ; preds = %if.then46.i
  %33 = sext i32 %29 to i64
  call void @__ioc_report_add_overflow(i32 716, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %33, i64 -1, i8 13) nounwind
  br label %cont48.i

cont48.i:                                         ; preds = %ioc_bb47.i, %if.then46.i
  store i32 %31, i32* @infor, align 4, !tbaa !0
  br label %gettok.exit.thread

if.end49.i:                                       ; preds = %if.then30.i
  br i1 %tobool44.i, label %lor.lhs.false.i, label %if.then54.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %34 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call51.i = call i32 %34() nounwind
  %cmp52.i = icmp eq i32 %call51.i, 41
  br i1 %cmp52.i, label %if.end55.i, label %if.then54.i

if.then54.i:                                      ; preds = %lor.lhs.false.i, %if.end49.i
  %c.0.i = phi i32 [ %call41.i, %if.end49.i ], [ %call51.i, %lor.lhs.false.i ]
  %35 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %35(i32 %c.0.i) nounwind
  br label %gettok.exit.thread

if.end55.i:                                       ; preds = %lor.lhs.false.i
  store i32 0, i32* @dbparens, align 4, !tbaa !0
  br label %gettok.exit.thread

if.else.i:                                        ; preds = %cont28.i
  br i1 %3, label %cont59.i, label %ioc_bb58.i

ioc_bb58.i:                                       ; preds = %if.else.i
  call void @__ioc_report_conversion(i32 727, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont59.i

cont59.i:                                         ; preds = %ioc_bb58.i, %if.else.i
  %36 = load i16* %arrayidx.i, align 2, !tbaa !5
  %and68.i = and i16 %36, 1
  %tobool69.i = icmp eq i16 %and68.i, 0
  br i1 %tobool69.i, label %if.end96.i, label %if.then70.i

if.then70.i:                                      ; preds = %cont59.i
  %37 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call71.i = call i32 %37() nounwind
  switch i32 %call71.i, label %if.else92.i [
    i32 38, label %if.then74.i
    i32 62, label %if.then89.i
    i32 60, label %if.then89.i
  ]

if.then74.i:                                      ; preds = %if.then70.i
  %38 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call75.i = call i32 %38() nounwind
  %cmp76.i = icmp eq i32 %call75.i, 62
  br i1 %cmp76.i, label %if.then78.i, label %if.else81.i

if.then78.i:                                      ; preds = %if.then74.i
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call.i, i32 48) nounwind
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb79.i, label %cont80.i

ioc_bb79.i:                                       ; preds = %if.then78.i
  call void @__ioc_report_sub_overflow(i32 732, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %2, i64 48, i8 13) nounwind
  br label %cont80.i

cont80.i:                                         ; preds = %ioc_bb79.i, %if.then78.i
  %42 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %42(i32 62) nounwind
  br label %if.end96.i

if.else81.i:                                      ; preds = %if.then74.i
  %43 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %43(i32 %call75.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %44 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %44(i32 38) nounwind
  br label %if.end96.i

if.then89.i:                                      ; preds = %if.then70.i, %if.then70.i
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call.i, i32 48) nounwind
  %46 = extractvalue { i32, i1 } %45, 0
  %47 = extractvalue { i32, i1 } %45, 1
  br i1 %47, label %ioc_bb90.i, label %if.end96.i

ioc_bb90.i:                                       ; preds = %if.then89.i
  call void @__ioc_report_sub_overflow(i32 743, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %2, i64 48, i8 13) nounwind
  br label %if.end96.i

if.else92.i:                                      ; preds = %if.then70.i
  %48 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %48(i32 %call71.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else92.i, %ioc_bb90.i, %if.then89.i, %if.else81.i, %cont80.i, %cont59.i
  %c.1.i = phi i32 [ 38, %cont80.i ], [ %call.i, %if.else81.i ], [ %call.i, %if.else92.i ], [ %call.i, %cont59.i ], [ %call71.i, %if.then89.i ], [ %call71.i, %ioc_bb90.i ]
  %peekfd.1.i = phi i32 [ %40, %cont80.i ], [ %peekfd.0.i, %if.else81.i ], [ %peekfd.0.i, %if.else92.i ], [ %peekfd.0.i, %cont59.i ], [ %46, %if.then89.i ], [ %46, %ioc_bb90.i ]
  %49 = load i8* @hashchar, align 1, !tbaa !1
  %conv97.i = zext i8 %49 to i32
  %cmp98.i = icmp ne i32 %c.1.i, %conv97.i
  %50 = load i32* @nocomments, align 4, !tbaa !0
  %tobool101.i = icmp ne i32 %50, 0
  %or.cond401.i = or i1 %cmp98.i, %tobool101.i
  br i1 %or.cond401.i, label %if.end162.i, label %land.lhs.true102.i

land.lhs.true102.i:                               ; preds = %if.end96.i
  %51 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 88), align 1, !tbaa !1
  %tobool104.i = icmp eq i8 %51, 0
  %52 = load i32* @lexflags, align 4, !tbaa !0
  br i1 %tobool104.i, label %lor.lhs.false105.i, label %if.then118.i

lor.lhs.false105.i:                               ; preds = %land.lhs.true102.i
  %tobool106.i = icmp eq i32 %52, 0
  br i1 %tobool106.i, label %land.lhs.true110.i, label %lor.lhs.false107.i

lor.lhs.false107.i:                               ; preds = %lor.lhs.false105.i
  %and108.i = and i32 %52, 12
  %tobool109.i = icmp eq i32 %and108.i, 0
  %53 = load i32* @expanding, align 4, !tbaa !0
  %tobool111.i = icmp ne i32 %53, 0
  %or.cond402.i = or i1 %tobool109.i, %tobool111.i
  br i1 %or.cond402.i, label %if.end162.i, label %land.lhs.true112.i

land.lhs.true110.i:                               ; preds = %lor.lhs.false105.i
  %.old.i = load i32* @expanding, align 4, !tbaa !0
  %tobool111.old.i = icmp eq i32 %.old.i, 0
  br i1 %tobool111.old.i, label %land.lhs.true112.i, label %if.end162.i

land.lhs.true112.i:                               ; preds = %land.lhs.true110.i, %lor.lhs.false107.i
  %54 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %55 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %notlhs.i = icmp eq i8 %54, 0
  %notrhs.i = icmp eq i8 %55, 0
  %or.cond404.not.i = or i1 %notrhs.i, %notlhs.i
  %56 = load i32* @strin, align 4, !tbaa !0
  %tobool117.i = icmp ne i32 %56, 0
  %or.cond406.i = or i1 %or.cond404.not.i, %tobool117.i
  br i1 %or.cond406.i, label %if.then118.i, label %if.end162.i

if.then118.i:                                     ; preds = %land.lhs.true112.i, %land.lhs.true102.i
  %and119.i = and i32 %52, 4
  %tobool120.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.i, label %while.cond126.preheader.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.then118.i
  store i32 0, i32* @len, align 4, !tbaa !0
  store i32 32, i32* @bsiz, align 4, !tbaa !0
  %call124.i = call i8* @hcalloc(i32 32) nounwind
  store i8* %call124.i, i8** @tokstr, align 4, !tbaa !3
  store i8* %call124.i, i8** @bptr, align 4, !tbaa !3
  call void @add(i32 %c.1.i) nounwind
  br label %while.cond126.preheader.i

while.cond126.preheader.i:                        ; preds = %if.then121.i, %if.then118.i
  %call127517.i = call i32 @ingetc() nounwind
  %cmp128518.i = icmp ne i32 %call127517.i, 10
  %57 = load i32* @lexstop, align 4, !tbaa !0
  %lnot132519.i = icmp eq i32 %57, 0
  %or.cond514520.i = and i1 %cmp128518.i, %lnot132519.i
  br i1 %or.cond514520.i, label %while.body135.i, label %while.end140.i

while.body135.i:                                  ; preds = %while.cond126.preheader.i, %while.cond126.backedge.i
  %call127521.i = phi i32 [ %call127.i, %while.cond126.backedge.i ], [ %call127517.i, %while.cond126.preheader.i ]
  %58 = load void (i32)** @hwaddc, align 4, !tbaa !3
  call void %58(i32 %call127521.i) nounwind
  %59 = load void (i32)** @addtoline, align 4, !tbaa !3
  call void %59(i32 %call127521.i) nounwind
  %60 = load i32* @lexflags, align 4, !tbaa !0
  %and136.i = and i32 %60, 4
  %tobool137.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.i, label %while.cond126.backedge.i, label %if.then138.i

if.then138.i:                                     ; preds = %while.body135.i
  call void @add(i32 %call127521.i) nounwind
  br label %while.cond126.backedge.i

while.cond126.backedge.i:                         ; preds = %if.then138.i, %while.body135.i
  %call127.i = call i32 @ingetc() nounwind
  %cmp128.i = icmp ne i32 %call127.i, 10
  %61 = load i32* @lexstop, align 4, !tbaa !0
  %lnot132.i = icmp eq i32 %61, 0
  %or.cond514.i = and i1 %cmp128.i, %lnot132.i
  br i1 %or.cond514.i, label %while.body135.i, label %while.end140.i

while.end140.i:                                   ; preds = %while.cond126.backedge.i, %while.cond126.preheader.i
  %call127.lcssa.i = phi i32 [ %call127517.i, %while.cond126.preheader.i ], [ %call127.i, %while.cond126.backedge.i ]
  %62 = load i32* @errflag, align 4, !tbaa !0
  %tobool141.i = icmp eq i32 %62, 0
  br i1 %tobool141.i, label %if.else143.i, label %gettok.exit.thread

if.else143.i:                                     ; preds = %while.end140.i
  %63 = load i32* @lexflags, align 4, !tbaa !0
  %and144.i = and i32 %63, 4
  %tobool145.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.i, label %if.else152.i, label %cont148.i

cont148.i:                                        ; preds = %if.else143.i
  %64 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %64, align 1, !tbaa !1
  %65 = load i32* @lexstop, align 4, !tbaa !0
  %tobool149.i = icmp eq i32 %65, 0
  br i1 %tobool149.i, label %if.then150.i, label %gettok.exit.thread

if.then150.i:                                     ; preds = %cont148.i
  %66 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %66(i32 %call127.lcssa.i) nounwind
  br label %gettok.exit.thread

if.else152.i:                                     ; preds = %if.else143.i
  %67 = load void ()** @hwend, align 4, !tbaa !3
  call void %67() nounwind
  %68 = load void (i32)** @hwbegin, align 4, !tbaa !3
  call void %68(i32 0) nounwind
  %69 = load void (i32)** @hwaddc, align 4, !tbaa !3
  call void %69(i32 10) nounwind
  %70 = load void (i32)** @addtoline, align 4, !tbaa !3
  call void %70(i32 10) nounwind
  %71 = load i32* @lexflags, align 4, !tbaa !0
  %and153.i = and i32 %71, 8
  %tobool154.i = icmp ne i32 %and153.i, 0
  %72 = load i32* @lexstop, align 4, !tbaa !0
  %tobool156.i = icmp ne i32 %72, 0
  %or.cond408.i = and i1 %tobool154.i, %tobool156.i
  %..i = select i1 %or.cond408.i, i32 37, i32 2
  br label %gettok.exit

if.end162.i:                                      ; preds = %land.lhs.true112.i, %land.lhs.true110.i, %lor.lhs.false107.i, %if.end96.i
  %73 = icmp ult i32 %c.1.i, 256
  br i1 %73, label %cont166.i, label %ioc_bb165.i

ioc_bb165.i:                                      ; preds = %if.end162.i
  %74 = sext i32 %c.1.i to i64
  call void @__ioc_report_conversion(i32 798, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %74, i8 1) nounwind
  br label %cont166.i

cont166.i:                                        ; preds = %ioc_bb165.i, %if.end162.i
  %idxprom168.i = and i32 %c.1.i, 255
  %arrayidx169.i = getelementptr inbounds [256 x i8]* @lexact1, i32 0, i32 %idxprom168.i
  %75 = load i8* %arrayidx169.i, align 1, !tbaa !1
  %conv170.i = zext i8 %75 to i32
  switch i32 %conv170.i, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 2, label %return.loopexit.i
    i32 3, label %sw.bb177.i
    i32 5, label %sw.bb193.i
    i32 6, label %sw.bb233.i
    i32 7, label %sw.bb244.i
    i32 8, label %gettok.exit.thread
    i32 13, label %sw.bb279.i
    i32 14, label %sw.bb328.i
  ]

sw.bb.i:                                          ; preds = %cont166.i
  %76 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call171.i = call i32 %76() nounwind
  %cmp172.i = icmp eq i32 %call171.i, 10
  br i1 %cmp172.i, label %beginning.i, label %if.end175.i

if.end175.i:                                      ; preds = %sw.bb.i
  %77 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %77(i32 %call171.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %sw.epilog.i

sw.bb177.i:                                       ; preds = %cont166.i
  %78 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call178.i = call i32 %78() nounwind
  switch i32 %call178.i, label %if.end192.i [
    i32 59, label %gettok.exit.thread
    i32 38, label %if.then185.i
    i32 124, label %if.then189.i
  ]

if.then185.i:                                     ; preds = %sw.bb177.i
  br label %gettok.exit.thread

if.then189.i:                                     ; preds = %sw.bb177.i
  br label %gettok.exit.thread

if.end192.i:                                      ; preds = %sw.bb177.i
  %79 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %79(i32 %call178.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %gettok.exit.thread

sw.bb193.i:                                       ; preds = %cont166.i
  %80 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call194.i = call i32 %80() nounwind
  %cmp195.i = icmp eq i32 %call194.i, 38
  br i1 %cmp195.i, label %gettok.exit.thread, label %if.else198.i

if.else198.i:                                     ; preds = %sw.bb193.i
  switch i32 %call194.i, label %if.end232.i [
    i32 124, label %gettok.exit.thread
    i32 33, label %gettok.exit.thread
    i32 62, label %if.then208.i
  ]

if.then208.i:                                     ; preds = %if.else198.i
  store i32 %peekfd.1.i, i32* @tokfd, align 4, !tbaa !0
  %81 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call209.i = call i32 %81() nounwind
  switch i32 %call209.i, label %if.end229.i [
    i32 124, label %gettok.exit.thread
    i32 33, label %gettok.exit.thread
    i32 62, label %if.then219.i
  ]

if.then219.i:                                     ; preds = %if.then208.i
  %82 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call220.i = call i32 %82() nounwind
  switch i32 %call220.i, label %if.end227.i [
    i32 124, label %gettok.exit.thread
    i32 33, label %gettok.exit.thread
  ]

if.end227.i:                                      ; preds = %if.then219.i
  %83 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %83(i32 %call220.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %gettok.exit.thread

if.end229.i:                                      ; preds = %if.then208.i
  %84 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %84(i32 %call209.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %gettok.exit.thread

if.end232.i:                                      ; preds = %if.else198.i
  %85 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %85(i32 %call194.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %gettok.exit.thread

sw.bb233.i:                                       ; preds = %cont166.i
  %86 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call234.i = call i32 %86() nounwind
  switch i32 %call234.i, label %if.end243.i [
    i32 124, label %gettok.exit.thread
    i32 38, label %if.then241.i
  ]

if.then241.i:                                     ; preds = %sw.bb233.i
  br label %gettok.exit.thread

if.end243.i:                                      ; preds = %sw.bb233.i
  %87 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %87(i32 %call234.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %gettok.exit.thread

sw.bb244.i:                                       ; preds = %cont166.i
  %88 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call245.i = call i32 %88() nounwind
  switch i32 %call245.i, label %if.end271.i [
    i32 40, label %if.then248.i
    i32 41, label %gettok.exit.thread
  ]

if.then248.i:                                     ; preds = %sw.bb244.i
  %89 = load i32* @infor, align 4, !tbaa !0
  %tobool249.i = icmp eq i32 %89, 0
  br i1 %tobool249.i, label %if.end251.i, label %if.then250.i

if.then250.i:                                     ; preds = %if.then248.i
  store i32 1, i32* @dbparens, align 4, !tbaa !0
  br label %gettok.exit.thread

if.end251.i:                                      ; preds = %if.then248.i
  %90 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool252.i = icmp eq i32 %90, 0
  br i1 %tobool252.i, label %lor.lhs.false253.i, label %if.then258.i

lor.lhs.false253.i:                               ; preds = %if.end251.i
  %91 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool255.i = icmp eq i8 %91, 0
  %92 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 91), align 1, !tbaa !1
  %tobool257.i = icmp ne i8 %92, 0
  %or.cond416.i = or i1 %tobool255.i, %tobool257.i
  br i1 %or.cond416.i, label %if.end271.i, label %if.then258.i

if.then258.i:                                     ; preds = %lor.lhs.false253.i, %if.end251.i
  store i32 0, i32* @len, align 4, !tbaa !0
  store i32 32, i32* @bsiz, align 4, !tbaa !0
  %call261.i = call i8* @hcalloc(i32 32) nounwind
  store i8* %call261.i, i8** @tokstr, align 4, !tbaa !3
  store i8* %call261.i, i8** @bptr, align 4, !tbaa !3
  %call262.i = call fastcc i32 @cmd_or_math(i32 9) nounwind
  switch i32 %call262.i, label %sw.default.i [
    i32 1, label %gettok.exit.thread
    i32 0, label %sw.bb264.i
  ]

sw.bb264.i:                                       ; preds = %if.then258.i
  store i8* null, i8** @tokstr, align 4, !tbaa !3
  br label %gettok.exit.thread

sw.default.i:                                     ; preds = %if.then258.i
  br label %gettok.exit.thread

if.end271.i:                                      ; preds = %lor.lhs.false253.i, %sw.bb244.i
  %93 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %93(i32 %call245.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %94 = load i32* @incond, align 4, !tbaa !0
  %cmp272.i = icmp eq i32 %94, 1
  %95 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool275.i = icmp ne i32 %95, 0
  %or.cond418.i = or i1 %cmp272.i, %tobool275.i
  br i1 %or.cond418.i, label %gettok.exit.thread, label %sw.epilog.i

sw.bb279.i:                                       ; preds = %cont166.i
  %96 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call280.i = call i32 %96() nounwind
  switch i32 %call280.i, label %if.else320.i [
    i32 40, label %if.then283.i
    i32 62, label %if.end327.i
    i32 60, label %if.then299.i
    i32 38, label %if.then319.i
  ]

if.then283.i:                                     ; preds = %sw.bb279.i
  %97 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %97(i32 40) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %cont285.i

cont285.i:                                        ; preds = %if.then332.i, %if.else320.i, %if.then283.i
  %cmp286.i = icmp eq i32 %peekfd.1.i, -1
  br i1 %cmp286.i, label %sw.epilog.i, label %if.then288.i

if.then288.i:                                     ; preds = %cont285.i
  %98 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %98(i32 %c.1.i) nounwind
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %peekfd.1.i, i32 48) nounwind
  %100 = extractvalue { i32, i1 } %99, 0
  %101 = extractvalue { i32, i1 } %99, 1
  br i1 %101, label %ioc_bb289.i, label %sw.epilog.i

ioc_bb289.i:                                      ; preds = %if.then288.i
  %102 = sext i32 %peekfd.1.i to i64
  call void @__ioc_report_add_overflow(i32 909, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 48, i64 %102, i8 13) nounwind
  br label %sw.epilog.i

if.then299.i:                                     ; preds = %sw.bb279.i
  %103 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call300.i = call i32 %103() nounwind
  switch i32 %call300.i, label %if.else312.i [
    i32 40, label %if.then303.i
    i32 60, label %if.end327.i
    i32 45, label %if.then311.i
  ]

if.then303.i:                                     ; preds = %if.then299.i
  %104 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %104(i32 40) nounwind
  %105 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %105(i32 60) nounwind
  br label %if.end327.i

if.then311.i:                                     ; preds = %if.then299.i
  br label %if.end327.i

if.else312.i:                                     ; preds = %if.then299.i
  %106 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %106(i32 %call300.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end327.i

if.then319.i:                                     ; preds = %sw.bb279.i
  br label %if.end327.i

if.else320.i:                                     ; preds = %sw.bb279.i
  %107 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %107(i32 %call280.i) nounwind
  %call321.i = call fastcc i32 @isnumglob() nounwind
  %tobool322.i = icmp eq i32 %call321.i, 0
  br i1 %tobool322.i, label %if.end327.i, label %cont285.i

if.end327.i:                                      ; preds = %if.else320.i, %if.then319.i, %if.else312.i, %if.then311.i, %if.then303.i, %if.then299.i, %sw.bb279.i
  %peek.1.i = phi i32 [ 14, %if.then303.i ], [ 17, %if.then311.i ], [ 16, %if.else312.i ], [ 18, %if.then319.i ], [ 15, %sw.bb279.i ], [ 24, %if.then299.i ], [ 14, %if.else320.i ]
  store i32 %peekfd.1.i, i32* @tokfd, align 4, !tbaa !0
  br label %gettok.exit.thread

sw.bb328.i:                                       ; preds = %cont166.i
  %108 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call329.i = call i32 %108() nounwind
  switch i32 %call329.i, label %if.else388.i [
    i32 40, label %if.then332.i
    i32 38, label %if.then336.i
    i32 124, label %if.end398.i
    i32 33, label %if.end398.i
    i32 62, label %if.then356.i
  ]

if.then332.i:                                     ; preds = %sw.bb328.i
  %109 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %109(i32 40) nounwind
  br label %cont285.i

if.then336.i:                                     ; preds = %sw.bb328.i
  %110 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call337.i = call i32 %110() nounwind
  switch i32 %call337.i, label %if.else344.i [
    i32 124, label %if.end398.i
    i32 33, label %if.end398.i
  ]

if.else344.i:                                     ; preds = %if.then336.i
  %111 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %111(i32 %call337.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end398.i

if.then356.i:                                     ; preds = %sw.bb328.i
  %112 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call357.i = call i32 %112() nounwind
  switch i32 %call357.i, label %if.else377.i [
    i32 38, label %if.then360.i
    i32 124, label %if.end398.i
    i32 33, label %if.end398.i
  ]

if.then360.i:                                     ; preds = %if.then356.i
  %113 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call361.i = call i32 %113() nounwind
  switch i32 %call361.i, label %if.else368.i [
    i32 124, label %if.end398.i
    i32 33, label %if.end398.i
  ]

if.else368.i:                                     ; preds = %if.then360.i
  %114 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %114(i32 %call361.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end398.i

if.else377.i:                                     ; preds = %if.then356.i
  %cmp378.i = icmp eq i32 %call357.i, 40
  %115 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %115(i32 %call357.i) nounwind
  br i1 %cmp378.i, label %if.then380.i, label %if.else381.i

if.then380.i:                                     ; preds = %if.else377.i
  %116 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %116(i32 62) nounwind
  br label %if.end398.i

if.else381.i:                                     ; preds = %if.else377.i
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %117 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 66), align 1, !tbaa !1
  %tobool382.i = icmp eq i8 %117, 0
  br i1 %tobool382.i, label %if.end398.i, label %if.then383.i

if.then383.i:                                     ; preds = %if.else381.i
  %118 = load void (i32)** @hwaddc, align 4, !tbaa !3
  call void %118(i32 124) nounwind
  br label %if.end398.i

if.else388.i:                                     ; preds = %sw.bb328.i
  %119 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %119(i32 %call329.i) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %120 = load i32* @incond, align 4, !tbaa !0
  %tobool389.i = icmp ne i32 %120, 0
  %121 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 66), align 1, !tbaa !1
  %tobool392.i = icmp eq i8 %121, 0
  %or.cond516.i = or i1 %tobool389.i, %tobool392.i
  br i1 %or.cond516.i, label %if.end398.i, label %if.then393.i

if.then393.i:                                     ; preds = %if.else388.i
  %122 = load void (i32)** @hwaddc, align 4, !tbaa !3
  call void %122(i32 124) nounwind
  br label %if.end398.i

if.end398.i:                                      ; preds = %if.then393.i, %if.else388.i, %if.then383.i, %if.else381.i, %if.then380.i, %if.else368.i, %if.then360.i, %if.then360.i, %if.then356.i, %if.then356.i, %if.else344.i, %if.then336.i, %if.then336.i, %sw.bb328.i, %sw.bb328.i
  %peek.2.i = phi i32 [ 19, %if.else344.i ], [ 22, %if.else368.i ], [ 10, %if.then380.i ], [ 12, %if.then383.i ], [ 12, %if.else381.i ], [ 10, %if.else388.i ], [ 10, %if.then393.i ], [ 21, %if.then336.i ], [ 21, %if.then336.i ], [ 23, %if.then360.i ], [ 23, %if.then360.i ], [ 11, %sw.bb328.i ], [ 11, %sw.bb328.i ], [ 13, %if.then356.i ], [ 13, %if.then356.i ]
  store i32 %peekfd.1.i, i32* @tokfd, align 4, !tbaa !0
  br label %gettok.exit.thread

sw.epilog.i:                                      ; preds = %ioc_bb289.i, %if.then288.i, %cont285.i, %if.end271.i, %if.end175.i, %cont166.i
  %c.2.i = phi i32 [ %c.1.i, %cont285.i ], [ %c.1.i, %if.end271.i ], [ %c.1.i, %if.end175.i ], [ %100, %if.then288.i ], [ %100, %ioc_bb289.i ], [ %c.1.i, %cont166.i ]
  %call399.i = call fastcc i32 @gettokstr(i32 %c.2.i, i32 0) nounwind
  br label %gettok.exit

return.loopexit.i:                                ; preds = %cont166.i
  br label %gettok.exit.thread

gettok.exit.thread:                               ; preds = %cont48.i, %if.then54.i, %if.end55.i, %if.end398.i, %if.end327.i, %if.then250.i, %sw.default.i, %sw.bb264.i, %if.then241.i, %if.end243.i, %if.end227.i, %if.end229.i, %if.end232.i, %if.then185.i, %if.then189.i, %if.end192.i, %while.end140.i, %cont148.i, %if.then150.i, %sw.bb177.i, %sw.bb193.i, %if.else198.i, %if.else198.i, %if.then208.i, %if.then208.i, %if.then219.i, %if.then219.i, %sw.bb233.i, %if.then258.i, %sw.bb244.i, %if.end271.i, %return.loopexit.i, %cont166.i
  %retval.0.i.ph = phi i32 [ 28, %cont48.i ], [ 38, %if.then54.i ], [ 29, %if.end55.i ], [ %peek.2.i, %if.end398.i ], [ %peek.1.i, %if.end327.i ], [ 28, %if.then250.i ], [ 38, %sw.default.i ], [ 6, %sw.bb264.i ], [ 26, %if.then241.i ], [ 25, %if.end243.i ], [ 22, %if.end227.i ], [ 20, %if.end229.i ], [ 5, %if.end232.i ], [ 31, %if.then185.i ], [ 32, %if.then189.i ], [ 3, %if.end192.i ], [ 38, %while.end140.i ], [ 34, %cont148.i ], [ 34, %if.then150.i ], [ 4, %sw.bb177.i ], [ 9, %sw.bb193.i ], [ 30, %if.else198.i ], [ 30, %if.else198.i ], [ 21, %if.then208.i ], [ 21, %if.then208.i ], [ 23, %if.then219.i ], [ 23, %if.then219.i ], [ 8, %sw.bb233.i ], [ 28, %if.then258.i ], [ 27, %sw.bb244.i ], [ 6, %if.end271.i ], [ 2, %return.loopexit.i ], [ 7, %cont166.i ]
  store i32 %retval.0.i.ph, i32* @tok, align 4, !tbaa !0
  br label %land.rhs

gettok.exit:                                      ; preds = %if.then.i, %if.else152.i, %sw.epilog.i
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ %call399.i, %sw.epilog.i ], [ %..i, %if.else152.i ]
  store i32 %retval.0.i, i32* @tok, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %retval.0.i, 37
  br i1 %cmp1, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %gettok.exit.thread, %gettok.exit
  %call2 = call i32 @exalias()
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %land.rhs.do.end_crit_edge, label %beginning.i

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  %.pre = load i32* @tok, align 4, !tbaa !0
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %gettok.exit
  %123 = phi i32 [ %.pre, %land.rhs.do.end_crit_edge ], [ 37, %gettok.exit ]
  %124 = load i32* @nocorrect, align 4, !tbaa !0
  %and = and i32 %124, 1
  store i32 %and, i32* @nocorrect, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %123, 2
  %cmp4 = icmp eq i32 %123, 37
  %or.cond = or i1 %cmp3, %cmp4
  %125 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %tobool6 = icmp ne %struct.heredocs* %125, null
  %or.cond42 = and i1 %or.cond, %tobool6
  br i1 %or.cond42, label %while.body, label %if.end27

while.body:                                       ; preds = %do.end, %if.end22
  %126 = phi %struct.heredocs* [ %127, %if.end22 ], [ %125, %do.end ]
  %next7 = getelementptr inbounds %struct.heredocs* %126, i32 0, i32 0
  %127 = load %struct.heredocs** %next7, align 4, !tbaa !3
  %128 = load void (i32)** @hwbegin, align 4, !tbaa !3
  call void %128(i32 0) nounwind
  %129 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.heredocs* %129, i32 0, i32 1
  %130 = load i32* %type, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %130, 10
  %cond = select i1 %cmp8, i32 27, i32 28
  call void @cmdpush(i32 %cond) nounwind
  %131 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %str = getelementptr inbounds %struct.heredocs* %131, i32 0, i32 3
  %132 = load i8** %str, align 4, !tbaa !3
  %call9 = call i8* @dupstring(i8* %132) nounwind
  store i8* %call9, i8** %munged_term, align 4, !tbaa !3
  %133 = load i32* @stophist, align 4, !tbaa !0
  %134 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %133, i32 4)
  %135 = extractvalue { i32, i1 } %134, 0
  %136 = extractvalue { i32, i1 } %134, 1
  br i1 %136, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.body
  %137 = sext i32 %133 to i64
  call void @__ioc_report_add_overflow(i32 360, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %137, i64 4, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.body, %ioc_bb
  store i32 %135, i32* @stophist, align 4, !tbaa !0
  %138 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %type10 = getelementptr inbounds %struct.heredocs* %138, i32 0, i32 1
  %139 = load i32* %type10, align 4, !tbaa !0
  %call11 = call i8* @gethere(i8** %munged_term, i32 %139) nounwind
  %140 = load i32* @stophist, align 4, !tbaa !0
  %141 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %140, i32 4)
  %142 = extractvalue { i32, i1 } %141, 0
  %143 = extractvalue { i32, i1 } %141, 1
  br i1 %143, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont
  %144 = sext i32 %140 to i64
  call void @__ioc_report_sub_overflow(i32 362, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %144, i64 4, i8 13) nounwind
  br label %cont13

cont13:                                           ; preds = %cont, %ioc_bb12
  store i32 %142, i32* @stophist, align 4, !tbaa !0
  call void @cmdpop() nounwind
  %145 = load void ()** @hwend, align 4, !tbaa !3
  call void %145() nounwind
  %tobool14 = icmp eq i8* %call11, null
  br i1 %tobool14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %cont13
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([24 x i8]* @.str31, i32 0, i32 0)) nounwind
  %.pr = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %tobool1749 = icmp eq %struct.heredocs* %.pr, null
  br i1 %tobool1749, label %if.end34.thread, label %cont21

cont21:                                           ; preds = %if.then15, %cont21
  %146 = phi %struct.heredocs* [ %148, %cont21 ], [ %.pr, %if.then15 ]
  %next19 = getelementptr inbounds %struct.heredocs* %146, i32 0, i32 0
  %147 = bitcast %struct.heredocs* %146 to i8*
  %148 = load %struct.heredocs** %next19, align 4, !tbaa !3
  call void @zfree(i8* %147, i32 16) nounwind
  store %struct.heredocs* %148, %struct.heredocs** @hdocs, align 4, !tbaa !3
  %tobool17 = icmp eq %struct.heredocs* %148, null
  br i1 %tobool17, label %if.end34.thread, label %cont21

if.end34.thread:                                  ; preds = %if.then15, %cont21
  store i32 38, i32* @tok, align 4, !tbaa !0
  store i32 0, i32* @isnewlin, align 4
  br label %if.end41

if.end22:                                         ; preds = %cont13
  %149 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %pc = getelementptr inbounds %struct.heredocs* %149, i32 0, i32 2
  %150 = load i32* %pc, align 4, !tbaa !0
  %str23 = getelementptr inbounds %struct.heredocs* %149, i32 0, i32 3
  %151 = load i8** %str23, align 4, !tbaa !3
  %152 = load i8** %munged_term, align 4, !tbaa !3
  call void @setheredoc(i32 %150, i32 12, i8* %call11, i8* %151, i8* %152) nounwind
  %153 = load %struct.heredocs** @hdocs, align 4, !tbaa !3
  %154 = bitcast %struct.heredocs* %153 to i8*
  call void @zfree(i8* %154, i32 16) nounwind
  store %struct.heredocs* %127, %struct.heredocs** @hdocs, align 4, !tbaa !3
  %tobool6.old = icmp eq %struct.heredocs* %127, null
  br i1 %tobool6.old, label %if.end27.loopexit, label %while.body

if.end27.loopexit:                                ; preds = %if.end22
  %.pr46.pre = load i32* @tok, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end27.loopexit, %do.end
  %.pr46 = phi i32 [ %.pr46.pre, %if.end27.loopexit ], [ %123, %do.end ]
  %cmp28 = icmp eq i32 %.pr46, 2
  br i1 %cmp28, label %if.end34.thread54, label %if.end34

if.end34.thread54:                                ; preds = %if.end27
  %155 = load i32* @inbufct, align 4, !tbaa !0
  %tobool30 = icmp ne i32 %155, 0
  %cond33 = select i1 %tobool30, i32 -1, i32 1
  store i32 %cond33, i32* @isnewlin, align 4
  %156 = load i32* @lexflags, align 4, !tbaa !0
  %and38 = and i32 %156, 16
  %tobool39 = icmp eq i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.end34:                                         ; preds = %if.end27
  store i32 0, i32* @isnewlin, align 4
  %cond55 = icmp eq i32 %.pr46, 3
  br i1 %cond55, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end34, %if.end34.thread54
  store i32 1, i32* @tok, align 4, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.end34, %if.end34.thread, %if.end34.thread54, %entry, %if.then40
  ret void
}

define i32 @exalias() nounwind {
entry:
  %0 = load void ()** @hwend, align 4, !tbaa !3
  call void %0() nounwind
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 87), align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 150), align 1, !tbaa !1
  %tobool2 = icmp eq i8 %2, 0
  %3 = load i32* @strin, align 4, !tbaa !0
  %tobool4 = icmp ne i32 %3, 0
  %or.cond = or i1 %tobool2, %tobool4
  %4 = load i32* @incasepat, align 4, !tbaa !0
  %tobool6 = icmp ne i32 %4, 0
  %or.cond293 = or i1 %or.cond, %tobool6
  %5 = load i32* @tok, align 4, !tbaa !0
  %cmp.not = icmp ne i32 %5, 34
  %or.cond294.not = or i1 %or.cond293, %cmp.not
  %6 = load i32* @nocorrect, align 4, !tbaa !0
  %tobool10 = icmp ne i32 %6, 0
  %or.cond295 = or i1 %or.cond294.not, %tobool10
  br i1 %or.cond295, label %if.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %7 = load i32* @inbufflags, align 4, !tbaa !0
  %and = and i32 %7, 2
  %tobool14 = icmp eq i32 %and, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 37), align 1, !tbaa !1
  %tobool17 = icmp eq i8 %8, 0
  br i1 %tobool17, label %lor.lhs.false, label %land.lhs.true15.if.then_crit_edge

land.lhs.true15.if.then_crit_edge:                ; preds = %land.lhs.true15
  %.pre333 = load i32* @incmdpos, align 4, !tbaa !0
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 36), align 1, !tbaa !1
  %tobool19 = icmp ne i8 %9, 0
  %10 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool21 = icmp ne i32 %10, 0
  %or.cond296 = and i1 %tobool19, %tobool21
  br i1 %or.cond296, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true15.if.then_crit_edge, %lor.lhs.false
  %11 = phi i32 [ %.pre333, %land.lhs.true15.if.then_crit_edge ], [ %10, %lor.lhs.false ]
  call void @spckword(i8** @tokstr, i32 1, i32 %11, i32 1) nounwind
  br label %if.end

if.end:                                           ; preds = %land.lhs.true11, %entry, %land.lhs.true, %if.then, %lor.lhs.false
  %12 = load i8** @tokstr, align 4, !tbaa !3
  %tobool22 = icmp eq i8* %12, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %13 = load i32* @tok, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds [63 x i8*]* @tokstrings, i32 0, i32 %13
  %14 = load i8** %arrayidx, align 4, !tbaa !3
  store i8* %14, i8** @zshlextext, align 4, !tbaa !3
  ret i32 0

if.else:                                          ; preds = %if.end
  %call = call i32 @strlen(i8* %12) nounwind readonly
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb26, label %cont27

ioc_bb26:                                         ; preds = %if.else
  %18 = zext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 1875, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %18, i64 1, i8 5) nounwind
  %.pre = load i8** @tokstr, align 4, !tbaa !3
  br label %cont27

cont27:                                           ; preds = %if.else, %ioc_bb26
  %19 = phi i8* [ %12, %if.else ], [ %.pre, %ioc_bb26 ]
  %vla = alloca i8, i32 %16, align 1
  %call28 = call i32 @has_token(i8* %19) nounwind
  %tobool29 = icmp eq i32 %call28, 0
  br i1 %tobool29, label %if.else56, label %if.then30

if.then30:                                        ; preds = %cont27
  store i8* %vla, i8** @zshlextext, align 4, !tbaa !3
  %20 = load i8** @tokstr, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %cont52, %if.then30
  %t.0 = phi i8* [ %20, %if.then30 ], [ %incdec.ptr, %cont52 ]
  %p.0 = phi i8* [ %vla, %if.then30 ], [ %incdec.ptr54, %cont52 ]
  %21 = load i8* %t.0, align 1, !tbaa !1
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %for.cond
  %23 = sext i8 %21 to i64
  call void @__ioc_report_conversion(i32 1880, i32 59, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %23, i8 1) nounwind
  %.pre331 = load i8* %t.0, align 1, !tbaa !1
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %for.cond
  %24 = phi i8 [ %.pre331, %ioc_bb31 ], [ %21, %for.cond ]
  %idxprom = zext i8 %21 to i32
  %arrayidx33 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %25 = load i16* %arrayidx33, align 2, !tbaa !5
  %and39 = and i16 %25, 16
  %tobool40 = icmp eq i16 %and39, 0
  %incdec.ptr = getelementptr inbounds i8* %t.0, i32 1
  br i1 %tobool40, label %cont52, label %ioc_bb42

ioc_bb42:                                         ; preds = %cont32
  %conv41 = sext i8 %24 to i32
  call void @__ioc_report_conversion(i32 1880, i32 103, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 132, i8 1) nounwind
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv41, i32 -124)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb44, label %cont45

ioc_bb44:                                         ; preds = %ioc_bb42
  %29 = sext i8 %24 to i64
  call void @__ioc_report_sub_overflow(i32 1880, i32 93, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %29, i64 -124, i8 13) nounwind
  br label %cont45

cont45:                                           ; preds = %ioc_bb42, %ioc_bb44
  %arrayidx46 = getelementptr inbounds [26 x i8]* @ztokens, i32 0, i32 %27
  %30 = load i8* %arrayidx46, align 1, !tbaa !1
  br label %cont52

cont52:                                           ; preds = %cont45, %cont32
  %cond = phi i8 [ %30, %cont45 ], [ %24, %cont32 ]
  %incdec.ptr54 = getelementptr inbounds i8* %p.0, i32 1
  store i8 %cond, i8* %p.0, align 1, !tbaa !1
  %tobool55 = icmp eq i8 %cond, 0
  br i1 %tobool55, label %if.end57, label %for.cond

if.else56:                                        ; preds = %cont27
  %31 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %31, i8** @zshlextext, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %cont52, %if.else56
  %32 = load i32* @lexflags, align 4, !tbaa !0
  %and58 = and i32 %32, 2
  %tobool59 = icmp eq i32 %and58, 0
  br i1 %tobool59, label %if.end78, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end57
  %33 = load i32* @inbufflags, align 4, !tbaa !0
  %and65 = and i32 %33, 2
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end78

if.then67:                                        ; preds = %land.lhs.true60
  call void @gotword()
  %34 = load i32* @lexflags, align 4, !tbaa !0
  %tobool71 = icmp eq i32 %34, 0
  br i1 %tobool71, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.then67
  %35 = load i8** @zshlextext, align 4, !tbaa !3
  %cmp73 = icmp eq i8* %35, %vla
  br i1 %cmp73, label %if.then75, label %cleanup

if.then75:                                        ; preds = %if.then72
  %36 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %36, i8** @zshlextext, align 4, !tbaa !3
  br label %cleanup

if.end78:                                         ; preds = %if.then67, %land.lhs.true60, %if.end57
  %37 = load i32* @tok, align 4, !tbaa !0
  %cmp79 = icmp eq i32 %37, 34
  br i1 %cmp79, label %if.then81, label %if.end287

if.then81:                                        ; preds = %if.end78
  %38 = load i32* @noaliases, align 4, !tbaa !0
  %tobool82 = icmp ne i32 %38, 0
  %39 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 1), align 1, !tbaa !1
  %tobool85 = icmp eq i8 %39, 0
  %or.cond326 = or i1 %tobool82, %tobool85
  br i1 %or.cond326, label %if.end181thread-pre-split, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.then81
  %40 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 120), align 1, !tbaa !1
  %tobool87 = icmp eq i8 %40, 0
  br i1 %tobool87, label %if.then91, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %land.lhs.true86
  %41 = load %struct.hashtable** @reswdtab, align 4, !tbaa !3
  %getnode = getelementptr inbounds %struct.hashtable* %41, i32 0, i32 9
  %42 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !3
  %43 = load i8** @zshlextext, align 4, !tbaa !3
  %call89 = call %struct.hashnode* %42(%struct.hashtable* %41, i8* %43) nounwind
  %tobool90 = icmp eq %struct.hashnode* %call89, null
  br i1 %tobool90, label %if.then91, label %if.end181thread-pre-split

if.then91:                                        ; preds = %lor.lhs.false88, %land.lhs.true86
  %44 = load %struct.hashtable** @aliastab, align 4, !tbaa !3
  %getnode92 = getelementptr inbounds %struct.hashtable* %44, i32 0, i32 9
  %45 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode92, align 4, !tbaa !3
  %46 = load i8** @zshlextext, align 4, !tbaa !3
  %call93 = call %struct.hashnode* %45(%struct.hashtable* %44, i8* %46) nounwind
  %47 = bitcast %struct.hashnode* %call93 to %struct.alias*
  %tobool94 = icmp eq %struct.hashnode* %call93, null
  br i1 %tobool94, label %if.end133, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.then91
  %inuse = getelementptr inbounds %struct.hashnode* %call93, i32 1, i32 1
  %48 = bitcast i8** %inuse to i32*
  %49 = load i32* %48, align 4, !tbaa !0
  %tobool96 = icmp eq i32 %49, 0
  br i1 %tobool96, label %land.lhs.true97, label %if.end133

land.lhs.true97:                                  ; preds = %land.lhs.true95
  %flags = getelementptr inbounds %struct.hashnode* %call93, i32 0, i32 2
  %50 = load i32* %flags, align 4, !tbaa !0
  %and102 = and i32 %50, 2
  %51 = load i32* @incmdpos, align 4, !tbaa !0
  %52 = or i32 %and102, %51
  %53 = load i32* @inalmore, align 4, !tbaa !0
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %if.end133, label %if.then108

if.then108:                                       ; preds = %land.lhs.true97
  %text = getelementptr inbounds %struct.hashnode* %call93, i32 1
  %56 = bitcast %struct.hashnode* %text to i8**
  %57 = load i8** %56, align 4, !tbaa !3
  call void @inpush(i8* %57, i32 2, %struct.alias* %47) nounwind
  %58 = load i8** %56, align 4, !tbaa !3
  %59 = load i8* %58, align 1, !tbaa !1
  %cmp116 = icmp eq i8 %59, 32
  br i1 %cmp116, label %land.lhs.true118, label %if.end128

land.lhs.true118:                                 ; preds = %if.then108
  %60 = load i32* %flags, align 4, !tbaa !0
  %and125 = and i32 %60, 2
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %land.lhs.true118
  store i32 1, i32* @aliasspaceflag, align 4, !tbaa !0
  br label %if.end128

if.end128:                                        ; preds = %land.lhs.true118, %if.then127, %if.then108
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %61 = load i8** @zshlextext, align 4, !tbaa !3
  %cmp129 = icmp eq i8* %61, %vla
  br i1 %cmp129, label %if.then131, label %cleanup

if.then131:                                       ; preds = %if.end128
  %62 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %62, i8** @zshlextext, align 4, !tbaa !3
  br label %cleanup

if.end133:                                        ; preds = %land.lhs.true97, %land.lhs.true95, %if.then91
  %63 = load i8** @zshlextext, align 4, !tbaa !3
  %call134 = call i8* @strrchr(i8* %63, i32 46) nounwind readonly
  %tobool135 = icmp eq i8* %call134, null
  br i1 %tobool135, label %if.end181thread-pre-split, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end133
  %arrayidx137 = getelementptr inbounds i8* %call134, i32 1
  %64 = load i8* %arrayidx137, align 1, !tbaa !1
  %tobool139 = icmp ne i8 %64, 0
  %cmp141 = icmp ugt i8* %call134, %63
  %or.cond327 = and i1 %tobool139, %cmp141
  br i1 %or.cond327, label %cont145, label %if.end181thread-pre-split

cont145:                                          ; preds = %land.lhs.true136
  %arrayidx146 = getelementptr inbounds i8* %call134, i32 -1
  %65 = load i8* %arrayidx146, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1908, i32 97, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp150 = icmp eq i8 %65, -125
  br i1 %cmp150, label %if.end181thread-pre-split, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %cont145
  %66 = load %struct.hashtable** @sufaliastab, align 4, !tbaa !3
  %getnode153 = getelementptr inbounds %struct.hashtable* %66, i32 0, i32 9
  %67 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode153, align 4, !tbaa !3
  %call154 = call %struct.hashnode* %67(%struct.hashtable* %66, i8* %arrayidx137) nounwind
  %68 = bitcast %struct.hashnode* %call154 to %struct.alias*
  %tobool155 = icmp eq %struct.hashnode* %call154, null
  br i1 %tobool155, label %if.end181thread-pre-split, label %land.lhs.true156

land.lhs.true156:                                 ; preds = %land.lhs.true152
  %inuse157 = getelementptr inbounds %struct.hashnode* %call154, i32 1, i32 1
  %69 = bitcast i8** %inuse157 to i32*
  %70 = load i32* %69, align 4, !tbaa !0
  %tobool158 = icmp eq i32 %70, 0
  %71 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool160 = icmp ne i32 %71, 0
  %or.cond300 = and i1 %tobool158, %tobool160
  br i1 %or.cond300, label %if.then161, label %if.end181

if.then161:                                       ; preds = %land.lhs.true156
  %72 = load i8** @zshlextext, align 4, !tbaa !3
  %call162 = call i8* @dupstring(i8* %72) nounwind
  call void @inpush(i8* %call162, i32 2, %struct.alias* null) nounwind
  call void @inpush(i8* getelementptr inbounds ([2 x i8]* @.str36, i32 0, i32 0), i32 2, %struct.alias* null) nounwind
  %text171 = getelementptr inbounds %struct.hashnode* %call154, i32 1
  %73 = bitcast %struct.hashnode* %text171 to i8**
  %74 = load i8** %73, align 4, !tbaa !3
  call void @inpush(i8* %74, i32 2, %struct.alias* %68) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %75 = load i8** @zshlextext, align 4, !tbaa !3
  %cmp176 = icmp eq i8* %75, %vla
  br i1 %cmp176, label %if.then178, label %cleanup

if.then178:                                       ; preds = %if.then161
  %76 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %76, i8** @zshlextext, align 4, !tbaa !3
  br label %cleanup

if.end181thread-pre-split:                        ; preds = %land.lhs.true152, %cont145, %land.lhs.true136, %if.end133, %lor.lhs.false88, %if.then81
  %.pr = load i32* @incmdpos, align 4, !tbaa !0
  br label %if.end181

if.end181:                                        ; preds = %if.end181thread-pre-split, %land.lhs.true156
  %77 = phi i32 [ %.pr, %if.end181thread-pre-split ], [ %71, %land.lhs.true156 ]
  %tobool182 = icmp eq i32 %77, 0
  br i1 %tobool182, label %lor.lhs.false183, label %if.end181.land.lhs.true195_crit_edge

if.end181.land.lhs.true195_crit_edge:             ; preds = %if.end181
  %.pre332 = load i8** @zshlextext, align 4, !tbaa !3
  br label %land.lhs.true195

lor.lhs.false183:                                 ; preds = %if.end181
  %78 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %79 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 84), align 1, !tbaa !1
  %80 = or i8 %79, %78
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %land.lhs.true187, label %if.else204

land.lhs.true187:                                 ; preds = %lor.lhs.false183
  %82 = load i8** @zshlextext, align 4, !tbaa !3
  %83 = load i8* %82, align 1, !tbaa !1
  %cmp190 = icmp eq i8 %83, 125
  br i1 %cmp190, label %land.lhs.true192, label %if.else204

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %arrayidx193 = getelementptr inbounds i8* %82, i32 1
  %84 = load i8* %arrayidx193, align 1, !tbaa !1
  %tobool194 = icmp eq i8 %84, 0
  br i1 %tobool194, label %land.lhs.true195, label %if.else204

land.lhs.true195:                                 ; preds = %if.end181.land.lhs.true195_crit_edge, %land.lhs.true192
  %85 = phi i8* [ %.pre332, %if.end181.land.lhs.true195_crit_edge ], [ %82, %land.lhs.true192 ]
  %86 = load %struct.hashtable** @reswdtab, align 4, !tbaa !3
  %getnode196 = getelementptr inbounds %struct.hashtable* %86, i32 0, i32 9
  %87 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode196, align 4, !tbaa !3
  %call197 = call %struct.hashnode* %87(%struct.hashtable* %86, i8* %85) nounwind
  %tobool198 = icmp eq %struct.hashnode* %call197, null
  br i1 %tobool198, label %if.else204, label %if.then199

if.then199:                                       ; preds = %land.lhs.true195
  %token = getelementptr inbounds %struct.hashnode* %call197, i32 1
  %88 = bitcast %struct.hashnode* %token to i32*
  %89 = load i32* %88, align 4, !tbaa !0
  store i32 %89, i32* @tok, align 4, !tbaa !0
  %cmp200 = icmp eq i32 %89, 40
  br i1 %cmp200, label %if.then202, label %if.end287

if.then202:                                       ; preds = %if.then199
  store i32 1, i32* @incond, align 4, !tbaa !0
  br label %if.end287

if.else204:                                       ; preds = %land.lhs.true195, %land.lhs.true192, %lor.lhs.false183, %land.lhs.true187
  %90 = load i32* @incond, align 4, !tbaa !0
  %tobool205 = icmp eq i32 %90, 0
  br i1 %tobool205, label %if.end287, label %land.lhs.true206

land.lhs.true206:                                 ; preds = %if.else204
  %91 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str37 to i32))
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb207, label %cont210

ioc_bb207:                                        ; preds = %land.lhs.true206
  call void @__ioc_report_sub_overflow(i32 1924, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str37 to i32) to i64), i8 5) nounwind
  br label %cont210

cont210:                                          ; preds = %land.lhs.true206, %ioc_bb207
  %cmp211 = icmp eq i32 %92, 1
  %94 = load i8** @zshlextext, align 4, !tbaa !3
  br i1 %cmp211, label %cond.true218, label %cond.false266

cond.true218:                                     ; preds = %cont210
  %95 = load i8* %94, align 1, !tbaa !1
  %conv220 = zext i8 %95 to i32
  %96 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv220, i32 93)
  %97 = extractvalue { i32, i1 } %96, 0
  %98 = extractvalue { i32, i1 } %96, 1
  br i1 %98, label %ioc_bb222, label %land.lhs.true228

ioc_bb222:                                        ; preds = %cond.true218
  %99 = zext i8 %95 to i64
  call void @__ioc_report_sub_overflow(i32 1924, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %99, i64 93, i8 13) nounwind
  br label %land.lhs.true228

land.lhs.true228:                                 ; preds = %cond.true218, %ioc_bb222
  %cmp229 = icmp eq i32 %97, 0
  br i1 %cmp229, label %if.then231, label %if.else272

if.then231:                                       ; preds = %land.lhs.true228
  %arrayidx232 = getelementptr inbounds i8* %94, i32 1
  %100 = load i8* %arrayidx232, align 1, !tbaa !1
  %conv233 = zext i8 %100 to i32
  %101 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv233, i32 93)
  %102 = extractvalue { i32, i1 } %101, 0
  %103 = extractvalue { i32, i1 } %101, 1
  br i1 %103, label %ioc_bb235, label %land.lhs.true241

ioc_bb235:                                        ; preds = %if.then231
  %104 = zext i8 %100 to i64
  call void @__ioc_report_sub_overflow(i32 1924, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %104, i64 93, i8 13) nounwind
  br label %land.lhs.true241

land.lhs.true241:                                 ; preds = %if.then231, %ioc_bb235
  %cmp242 = icmp eq i32 %102, 0
  br i1 %cmp242, label %if.then244, label %if.else272

if.then244:                                       ; preds = %land.lhs.true241
  %arrayidx245 = getelementptr inbounds i8* %94, i32 2
  %105 = load i8* %arrayidx245, align 1, !tbaa !1
  %conv246 = zext i8 %105 to i32
  br label %cond.end268

cond.false266:                                    ; preds = %cont210
  %call267 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0)) nounwind
  br label %cond.end268

cond.end268:                                      ; preds = %if.then244, %cond.false266
  %cond269 = phi i32 [ %call267, %cond.false266 ], [ %conv246, %if.then244 ]
  %tobool270 = icmp eq i32 %cond269, 0
  br i1 %tobool270, label %if.then271, label %if.else272

if.then271:                                       ; preds = %cond.end268
  store i32 33, i32* @tok, align 4, !tbaa !0
  store i32 0, i32* @incond, align 4, !tbaa !0
  br label %if.end287

if.else272:                                       ; preds = %cond.end268, %land.lhs.true241, %land.lhs.true228
  %.pr329 = load i32* @incond, align 4, !tbaa !0
  %cmp273 = icmp eq i32 %.pr329, 1
  br i1 %cmp273, label %land.lhs.true275, label %if.end287

land.lhs.true275:                                 ; preds = %if.else272
  %106 = load i8** @zshlextext, align 4, !tbaa !3
  %107 = load i8* %106, align 1, !tbaa !1
  %cmp278 = icmp eq i8 %107, 33
  br i1 %cmp278, label %land.lhs.true280, label %if.end287

land.lhs.true280:                                 ; preds = %land.lhs.true275
  %arrayidx281 = getelementptr inbounds i8* %106, i32 1
  %108 = load i8* %arrayidx281, align 1, !tbaa !1
  %tobool282 = icmp eq i8 %108, 0
  br i1 %tobool282, label %if.then283, label %if.end287

if.then283:                                       ; preds = %land.lhs.true280
  store i32 39, i32* @tok, align 4, !tbaa !0
  br label %if.end287

if.end287:                                        ; preds = %if.else272, %if.else204, %if.then199, %if.end78, %land.lhs.true280, %if.then202, %land.lhs.true275, %if.then283, %if.then271
  store i32 0, i32* @inalmore, align 4, !tbaa !0
  %109 = load i8** @zshlextext, align 4, !tbaa !3
  %cmp288 = icmp eq i8* %109, %vla
  br i1 %cmp288, label %if.then290, label %cleanup

if.then290:                                       ; preds = %if.end287
  %110 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %110, i8** @zshlextext, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %if.then290, %if.then161, %if.then178, %if.end128, %if.then131, %if.then72, %if.then75
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.then75 ], [ 0, %if.then72 ], [ 1, %if.then131 ], [ 1, %if.end128 ], [ 1, %if.then178 ], [ 1, %if.then161 ], [ 0, %if.then290 ], [ 0, %if.end287 ]
  ret i32 %cleanup.dest.slot.0
}

declare void @cmdpush(i32)

declare i8* @dupstring(i8*)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @gethere(i8**, i32)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @cmdpop()

declare void @zerr(i8*, ...)

declare void @setheredoc(i32, i32, i8*, i8*, i8*)

define void @ctxtlex() nounwind {
entry:
  tail call void @zshlex()
  %0 = load i32* @tok, align 4, !tbaa !0
  switch i32 %0, label %if.end [
    i32 1, label %sw.epilogthread-pre-split
    i32 2, label %sw.epilogthread-pre-split
    i32 3, label %sw.epilogthread-pre-split
    i32 4, label %sw.epilogthread-pre-split
    i32 31, label %sw.epilogthread-pre-split
    i32 32, label %sw.epilogthread-pre-split
    i32 5, label %sw.epilogthread-pre-split
    i32 30, label %sw.epilogthread-pre-split
    i32 6, label %sw.epilogthread-pre-split
    i32 41, label %sw.epilogthread-pre-split
    i32 8, label %sw.epilogthread-pre-split
    i32 9, label %sw.epilogthread-pre-split
    i32 25, label %sw.epilogthread-pre-split
    i32 26, label %sw.epilogthread-pre-split
    i32 27, label %sw.epilogthread-pre-split
    i32 45, label %sw.epilogthread-pre-split
    i32 59, label %sw.epilogthread-pre-split
    i32 47, label %sw.epilogthread-pre-split
    i32 48, label %sw.epilogthread-pre-split
    i32 33, label %sw.epilogthread-pre-split
    i32 34, label %sw.bb24
    i32 36, label %sw.bb24
    i32 7, label %sw.bb24
    i32 43, label %sw.bb24
    i32 40, label %sw.bb24
    i32 28, label %if.else
  ]

sw.bb24:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb24
  %storemerge = phi i32 [ 0, %sw.bb24 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  store i32 %storemerge, i32* @incmdpos, align 4
  %cmp = icmp eq i32 %0, 28
  br i1 %cmp, label %if.else, label %if.end

if.end:                                           ; preds = %entry, %sw.epilogthread-pre-split
  %cmp25 = icmp eq i32 %0, 52
  %cond = select i1 %cmp25, i32 2, i32 0
  store i32 %cond, i32* @infor, align 4, !tbaa !0
  %.off = add i32 %0, -10
  %1 = icmp ult i32 %.off, 15
  br i1 %1, label %if.then33, label %switch.early.test

switch.early.test:                                ; preds = %if.end
  switch i32 %0, label %if.else [
    i32 58, label %if.then33
    i32 53, label %if.then33
    i32 52, label %if.then33
  ]

if.then33:                                        ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %if.end
  store i32 1, i32* @inredir, align 4, !tbaa !0
  %2 = load i32* @incmdpos, align 4, !tbaa !0
  store i32 %2, i32* @ctxtlex.oldpos, align 4, !tbaa !0
  store i32 0, i32* @incmdpos, align 4, !tbaa !0
  br label %if.end36

if.else:                                          ; preds = %entry, %sw.epilogthread-pre-split, %switch.early.test
  %3 = load i32* @inredir, align 4, !tbaa !0
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.else
  %4 = load i32* @ctxtlex.oldpos, align 4, !tbaa !0
  store i32 %4, i32* @incmdpos, align 4, !tbaa !0
  store i32 0, i32* @inredir, align 4, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then34, %if.then33
  ret void
}

define void @initlextabs() nounwind {
entry:
  br label %cont

cont:                                             ; preds = %entry, %for.cond.backedge
  %t0.095 = phi i32 [ 0, %entry ], [ %3, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds [256 x i8]* @lexact1, i32 0, i32 %t0.095
  store i8 15, i8* %arrayidx, align 1, !tbaa !1
  %arrayidx3 = getelementptr inbounds [256 x i8]* @lexact2, i32 0, i32 %t0.095
  store i8 18, i8* %arrayidx3, align 1, !tbaa !1
  %0 = sext i32 %t0.095 to i64
  %1 = icmp ult i32 %t0.095, 256
  br i1 %1, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %cont
  tail call void @__ioc_report_conversion(i32 531, i32 19, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %0, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %cont
  %conv = trunc i32 %t0.095 to i8
  %arrayidx6 = getelementptr inbounds [256 x i8]* @lextok2, i32 0, i32 %t0.095
  store i8 %conv, i8* %arrayidx6, align 1, !tbaa !1
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.095, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb7, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont5, %ioc_bb7
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %for.body11, label %cont

ioc_bb7:                                          ; preds = %cont5
  tail call void @__ioc_report_add_overflow(i32 528, i32 29, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %0, i64 1, i8 13) nounwind
  br label %for.cond.backedge

for.body11:                                       ; preds = %for.cond.backedge, %for.cond9.backedge
  %t0.194 = phi i32 [ %9, %for.cond9.backedge ], [ 0, %for.cond.backedge ]
  %5 = sext i32 %t0.194 to i64
  %6 = icmp ult i32 %t0.194, 256
  br i1 %6, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %for.body11
  tail call void @__ioc_report_conversion(i32 534, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %for.body11
  %conv16 = trunc i32 %t0.194 to i8
  %arrayidx17 = getelementptr inbounds [16 x i8]* @.str32, i32 0, i32 %t0.194
  %7 = load i8* %arrayidx17, align 1, !tbaa !1
  %conv18 = sext i8 %7 to i32
  %arrayidx19 = getelementptr inbounds [256 x i8]* @lexact1, i32 0, i32 %conv18
  store i8 %conv16, i8* %arrayidx19, align 1, !tbaa !1
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.194, i32 1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb21, label %for.cond9.backedge

for.cond9.backedge:                               ; preds = %cont15, %ioc_bb21
  %tobool = icmp eq i32 %9, 15
  br i1 %tobool, label %for.body27, label %for.body11

ioc_bb21:                                         ; preds = %cont15
  tail call void @__ioc_report_add_overflow(i32 533, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %for.cond9.backedge

for.body27:                                       ; preds = %for.cond9.backedge, %for.cond24.backedge
  %t0.293 = phi i32 [ %15, %for.cond24.backedge ], [ 0, %for.cond9.backedge ]
  %11 = sext i32 %t0.293 to i64
  %12 = icmp ult i32 %t0.293, 256
  br i1 %12, label %cont31, label %ioc_bb30

ioc_bb30:                                         ; preds = %for.body27
  tail call void @__ioc_report_conversion(i32 536, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont31

cont31:                                           ; preds = %ioc_bb30, %for.body27
  %conv32 = trunc i32 %t0.293 to i8
  %arrayidx33 = getelementptr inbounds [19 x i8]* @.str33, i32 0, i32 %t0.293
  %13 = load i8* %arrayidx33, align 1, !tbaa !1
  %conv34 = sext i8 %13 to i32
  %arrayidx35 = getelementptr inbounds [256 x i8]* @lexact2, i32 0, i32 %conv34
  store i8 %conv32, i8* %arrayidx35, align 1, !tbaa !1
  %14 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %t0.293, i32 1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb37, label %for.cond24.backedge

for.cond24.backedge:                              ; preds = %cont31, %ioc_bb37
  %tobool26 = icmp eq i32 %15, 18
  br i1 %tobool26, label %cont41, label %for.body27

ioc_bb37:                                         ; preds = %cont31
  tail call void @__ioc_report_add_overflow(i32 535, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  br label %for.cond24.backedge

cont41:                                           ; preds = %for.cond24.backedge
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @lexact2, i32 0, i32 38), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 538, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 131, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 538, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -125, i8 1) nounwind
  store i8 19, i8* getelementptr inbounds ([256 x i8]* @lexact2, i32 0, i32 131), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 539, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 135, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 539, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -121, i8 1) nounwind
  store i8 -121, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 42), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 540, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 149, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 540, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -107, i8 1) nounwind
  store i8 -107, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 63), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 541, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 141, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 541, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -115, i8 1) nounwind
  store i8 -115, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 123), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 542, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 143, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 542, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -113, i8 1) nounwind
  store i8 -113, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 91), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 543, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 543, i32 17, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -123, i8 1) nounwind
  store i8 -123, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 36), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 544, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 150, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 544, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -106, i8 1) nounwind
  store i8 -106, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 126), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 545, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 132, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 545, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -124, i8 1) nounwind
  store i8 -124, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 35), align 1, !tbaa !1
  tail call void @__ioc_report_conversion(i32 546, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 134, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 546, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 -122, i8 1) nounwind
  store i8 -122, i8* getelementptr inbounds ([256 x i8]* @lextok2, i32 0, i32 94), align 1, !tbaa !1
  ret void
}

define void @lexinit() nounwind {
entry:
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  store i32 0, i32* @dbparens, align 4, !tbaa !0
  store i32 0, i32* @infor, align 4, !tbaa !0
  store i32 0, i32* @nocorrect, align 4, !tbaa !0
  store i32 0, i32* @incasepat, align 4, !tbaa !0
  store i32 0, i32* @incond, align 4, !tbaa !0
  store i32 1, i32* @incmdpos, align 4, !tbaa !0
  store i32 37, i32* @tok, align 4, !tbaa !0
  ret void
}

define void @add(i32 %c) nounwind {
entry:
  %c.off = add i32 %c, 128
  %0 = icmp ult i32 %c.off, 256
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = sext i32 %c to i64
  tail call void @__ioc_report_conversion(i32 562, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i32 %c to i8
  %2 = load i8** @bptr, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %2, i32 1
  store i8* %incdec.ptr, i8** @bptr, align 4, !tbaa !3
  store i8 %conv, i8* %2, align 1, !tbaa !1
  %3 = load i32* @bsiz, align 4, !tbaa !0
  %4 = load i32* @len, align 4, !tbaa !0
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %4, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %8 = sext i32 %4 to i64
  tail call void @__ioc_report_add_overflow(i32 563, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  store i32 %6, i32* @len, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, %6
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %cont2
  %9 = load i32* @bsiz, align 4, !tbaa !0
  %10 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %9, i32 2)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.then
  %13 = sext i32 %9 to i64
  tail call void @__ioc_report_mul_overflow(i32 564, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %13, i64 2, i8 13) nounwind
  %.pr = load i32* @bsiz, align 4, !tbaa !0
  %.pre = load i32* @len, align 4, !tbaa !0
  br label %cont5

cont5:                                            ; preds = %if.then, %ioc_bb4
  %14 = phi i32 [ %3, %if.then ], [ %.pre, %ioc_bb4 ]
  %15 = phi i32 [ %9, %if.then ], [ %.pr, %ioc_bb4 ]
  %16 = load i32* @inbufct, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %11, %16
  %cmp8 = icmp sgt i32 %16, %15
  %or.cond = and i1 %cmp6, %cmp8
  %newbsiz.0 = select i1 %or.cond, i32 %16, i32 %11
  %17 = load i8** @tokstr, align 4, !tbaa !3
  %18 = icmp sgt i32 %15, -1
  br i1 %18, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cont5
  %19 = sext i32 %15 to i64
  tail call void @__ioc_report_conversion(i32 567, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %19, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cont5
  %20 = sext i32 %newbsiz.0 to i64
  %21 = icmp sgt i32 %newbsiz.0, -1
  br i1 %21, label %cont16, label %ioc_bb15

ioc_bb15:                                         ; preds = %cont13
  tail call void @__ioc_report_conversion(i32 567, i32 59, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont16

cont16:                                           ; preds = %ioc_bb15, %cont13
  %call = tail call i8* @hrealloc(i8* %17, i32 %15, i32 %newbsiz.0) nounwind
  store i8* %call, i8** @tokstr, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %call, i32 %14
  store i8* %add.ptr, i8** @bptr, align 4, !tbaa !3
  %22 = load i32* @bsiz, align 4, !tbaa !0
  %23 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %newbsiz.0, i32 %22)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb17, label %cont18

ioc_bb17:                                         ; preds = %cont16
  %26 = sext i32 %22 to i64
  tail call void @__ioc_report_sub_overflow(i32 569, i32 28, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %20, i64 %26, i8 13) nounwind
  br label %cont18

cont18:                                           ; preds = %cont16, %ioc_bb17
  %27 = icmp sgt i32 %24, -1
  br i1 %27, label %cont21, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont18
  %28 = sext i32 %24 to i64
  tail call void @__ioc_report_conversion(i32 569, i32 19, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %28, i8 1) nounwind
  br label %cont21

cont21:                                           ; preds = %ioc_bb20, %cont18
  tail call void @llvm.memset.p0i8.i32(i8* %add.ptr, i8 0, i32 %24, i32 1, i1 false)
  store i32 %newbsiz.0, i32* @bsiz, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %cont21, %cont2
  ret void
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @hrealloc(i8*, i32, i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define i32 @parsestr(i8* %s) nounwind {
entry:
  %call = tail call i32 @parsestrnoerr(i8* %s)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  tail call void @untokenize(i8* %s) nounwind
  %call.off = add i32 %call, -33
  %0 = icmp ult i32 %call.off, 94
  br i1 %0, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str34, i32 0, i32 0), i32 %call) nounwind
  br label %if.end3

if.else:                                          ; preds = %if.then
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([12 x i8]* @.str35, i32 0, i32 0)) nounwind
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2, %if.else
  ret i32 %call
}

define i32 @parsestrnoerr(i8* %s) nounwind {
entry:
  %call = tail call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 1714, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  tail call void @lexsave()
  tail call void @untokenize(i8* %s) nounwind
  %call1 = tail call i8* @dupstring(i8* %s) nounwind
  tail call void @inpush(i8* %call1, i32 0, %struct.alias* null) nounwind
  tail call void @strinbeg(i32 0) nounwind
  store i32 0, i32* @len, align 4, !tbaa !0
  store i8* %s, i8** @tokstr, align 4, !tbaa !3
  store i8* %s, i8** @bptr, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb2, label %cont3

ioc_bb2:                                          ; preds = %cont
  %5 = sext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 1722, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %5, i64 1, i8 13) nounwind
  br label %cont3

cont3:                                            ; preds = %cont, %ioc_bb2
  store i32 %3, i32* @bsiz, align 4, !tbaa !0
  %call6 = tail call fastcc i32 @dquote_parse(i8 signext 0, i32 1)
  %6 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %6, align 1, !tbaa !1
  tail call void @strinend() nounwind
  tail call void @inpop() nounwind
  tail call void @lexrestore()
  ret i32 %call6
}

declare void @untokenize(i8*)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare void @inpush(i8*, i32, %struct.alias*)

declare void @strinbeg(i32)

define internal fastcc i32 @dquote_parse(i8 signext %endchar, i32 %sub) nounwind {
entry:
  %conv = sext i8 %endchar to i32
  %cmp = icmp eq i8 %endchar, 41
  %cmp3 = icmp eq i8 %endchar, 93
  %.cmp3 = or i1 %cmp, %cmp3
  switch i8 %endchar, label %land.end [
    i8 93, label %land.rhs
    i8 41, label %land.rhs
  ]

land.rhs:                                         ; preds = %entry, %entry
  %0 = load i32* @zlemetacs, align 4, !tbaa !0
  %1 = load i32* @zlemetall, align 4, !tbaa !0
  %2 = load i32* @addedx, align 4, !tbaa !0
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %2)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %land.rhs
  %6 = sext i32 %2 to i64
  %7 = sext i32 %1 to i64
  tail call void @__ioc_report_add_overflow(i32 1524, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %7, i64 %6, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %land.rhs, %ioc_bb
  %8 = load i32* @inbufct, align 4, !tbaa !0
  %9 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 %8)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont
  %12 = sext i32 %8 to i64
  %13 = sext i32 %4 to i64
  tail call void @__ioc_report_sub_overflow(i32 1524, i32 56, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %cont, %ioc_bb5
  %cmp7 = icmp sgt i32 %0, %10
  br label %land.end

land.end:                                         ; preds = %entry, %cont6
  %14 = phi i1 [ false, %entry ], [ %cmp7, %cont6 ]
  %tobool75 = icmp eq i32 %sub, 0
  %cmp85 = icmp eq i8 %endchar, 34
  %.cmp3.not = xor i1 %.cmp3, true
  %cmp282 = icmp ne i8 %endchar, 34
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end303, %land.end
  %bct.0.ph = phi i32 [ 0, %land.end ], [ %bct.1, %if.end303 ]
  %intick.0.ph = phi i32 [ 0, %land.end ], [ %intick.1, %if.end303 ]
  %err.0.ph = phi i32 [ 0, %land.end ], [ %err.1, %if.end303 ]
  %brct.0.ph = phi i32 [ 0, %land.end ], [ %brct.1, %if.end303 ]
  %pct.0.ph = phi i32 [ 0, %land.end ], [ %pct.1, %if.end303 ]
  %tobool12 = icmp eq i32 %bct.0.ph, 0
  %tobool21.old = icmp ne i32 %intick.0.ph, 0
  %notlhs450 = icmp slt i32 %pct.0.ph, 1
  %notrhs451 = icmp slt i32 %brct.0.ph, 1
  %or.cond422.not = and i1 %notrhs451, %notlhs450
  %tobool21 = icmp eq i32 %intick.0.ph, 0
  %or.cond423 = and i1 %or.cond422.not, %tobool21
  %or.cond423.not = xor i1 %or.cond423, true
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.else79
  %15 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call = tail call i32 %15() nounwind
  %cmp10 = icmp eq i32 %call, %conv
  %or.cond421 = and i1 %cmp10, %tobool12
  br i1 %or.cond421, label %lor.lhs.false13, label %land.rhs22

lor.lhs.false13:                                  ; preds = %while.cond
  switch i8 %endchar, label %lor.lhs.false20 [
    i8 93, label %land.lhs.true
    i8 41, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false13
  %16 = load i32* @lexstop, align 4, !tbaa !0
  %lnot = icmp eq i32 %16, 0
  %or.cond424 = and i1 %lnot, %or.cond423.not
  br i1 %or.cond424, label %cont26, label %while.end

lor.lhs.false20:                                  ; preds = %lor.lhs.false13
  %.old = load i32* @lexstop, align 4, !tbaa !0
  %lnot.old = icmp eq i32 %.old, 0
  %or.cond426 = and i1 %tobool21.old, %lnot.old
  br i1 %or.cond426, label %cont26, label %while.end

land.rhs22:                                       ; preds = %while.cond
  %.old425 = load i32* @lexstop, align 4, !tbaa !0
  %lnot.old.old = icmp eq i32 %.old425, 0
  br i1 %lnot.old.old, label %cont26, label %while.end

cont26:                                           ; preds = %lor.lhs.false20, %land.lhs.true, %land.rhs22, %if.else
  %c.0 = phi i32 [ %call27, %if.else ], [ %call, %land.rhs22 ], [ %call, %land.lhs.true ], [ %call, %lor.lhs.false20 ]
  switch i32 %c.0, label %sw.epilog [
    i32 92, label %sw.bb
    i32 10, label %sw.bb90
    i32 36, label %sw.bb101
    i32 125, label %sw.bb150
    i32 96, label %ioc_bb161
    i32 39, label %sw.bb223
    i32 40, label %sw.bb236
    i32 41, label %sw.bb244
    i32 91, label %sw.bb257
    i32 93, label %sw.bb265
    i32 34, label %sw.bb278
  ]

sw.bb:                                            ; preds = %cont26
  %17 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call27 = tail call i32 %17() nounwind
  switch i32 %call27, label %lor.lhs.false35 [
    i32 10, label %if.else79
    i32 92, label %ioc_bb77
    i32 36, label %ioc_bb77
  ]

lor.lhs.false35:                                  ; preds = %sw.bb
  %notlhs448 = icmp ne i32 %call27, 125
  %or.cond.not = or i1 %tobool21.old, %notlhs448
  %or.cond427 = or i1 %or.cond.not, %tobool12
  br i1 %or.cond427, label %lor.lhs.false42, label %ioc_bb77

lor.lhs.false42:                                  ; preds = %lor.lhs.false35
  %cmp44 = icmp eq i32 %call27, %conv
  %cmp47 = icmp eq i32 %call27, 96
  %or.cond345 = or i1 %cmp44, %cmp47
  br i1 %or.cond345, label %ioc_bb77, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false42
  br i1 %cmp3, label %land.lhs.true53, label %if.else

land.lhs.true53:                                  ; preds = %lor.lhs.false49
  switch i32 %call27, label %if.else [
    i32 125, label %ioc_bb77
    i32 123, label %ioc_bb77
    i32 93, label %ioc_bb77
    i32 91, label %ioc_bb77
    i32 41, label %ioc_bb77
    i32 40, label %ioc_bb77
    i32 34, label %land.lhs.true74
  ]

land.lhs.true74:                                  ; preds = %land.lhs.true53
  br i1 %tobool75, label %if.else, label %ioc_bb77

ioc_bb77:                                         ; preds = %sw.bb, %sw.bb, %lor.lhs.false42, %land.lhs.true74, %lor.lhs.false35, %land.lhs.true53, %land.lhs.true53, %land.lhs.true53, %land.lhs.true53, %land.lhs.true53, %land.lhs.true53
  %call27.lcssa508 = phi i32 [ %call27, %sw.bb ], [ %call27, %sw.bb ], [ %call27, %lor.lhs.false42 ], [ 34, %land.lhs.true74 ], [ 125, %lor.lhs.false35 ], [ %call27, %land.lhs.true53 ], [ %call27, %land.lhs.true53 ], [ %call27, %land.lhs.true53 ], [ %call27, %land.lhs.true53 ], [ %call27, %land.lhs.true53 ], [ %call27, %land.lhs.true53 ]
  tail call void @__ioc_report_conversion(i32 1533, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 155, i8 1) nounwind
  tail call void @add(i32 -101)
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true53, %land.lhs.true74, %lor.lhs.false49
  tail call void @add(i32 92)
  br label %cont26

if.else79:                                        ; preds = %sw.bb
  %18 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool82 = icmp ne i8 %18, 0
  %or.cond351 = and i1 %tobool75, %tobool82
  %or.cond428 = and i1 %or.cond351, %cmp85
  br i1 %or.cond428, label %sw.epilog, label %while.cond

sw.bb90:                                          ; preds = %cont26
  %19 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %notrhs447 = icmp ne i8 %19, 0
  %not.or.cond430 = and i1 %notrhs447, %tobool75
  %.cmp97 = and i1 %cmp85, %not.or.cond430
  %land.ext100 = zext i1 %.cmp97 to i32
  br label %sw.epilog

sw.bb101:                                         ; preds = %cont26
  br i1 %tobool21, label %if.end104, label %sw.epilog

if.end104:                                        ; preds = %sw.bb101
  %20 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call105 = tail call i32 %20() nounwind
  switch i32 %call105, label %if.else143 [
    i32 40, label %ioc_bb109
    i32 91, label %ioc_bb118
    i32 123, label %ioc_bb131
    i32 36, label %ioc_bb141
  ]

ioc_bb109:                                        ; preds = %if.end104
  tail call void @__ioc_report_conversion(i32 1554, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 138, i8 1) nounwind
  tail call void @add(i32 -118)
  %call111 = tail call fastcc i32 @cmd_or_math_sub()
  tail call void @__ioc_report_conversion(i32 1556, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

ioc_bb118:                                        ; preds = %if.end104
  tail call void @__ioc_report_conversion(i32 1559, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  tail call void @add(i32 -123)
  tail call void @__ioc_report_conversion(i32 1560, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 143, i8 1) nounwind
  tail call void @add(i32 -113)
  tail call void @cmdpush(i32 25) nounwind
  %call124 = tail call fastcc i32 @dquote_parse(i8 signext 93, i32 %sub)
  tail call void @cmdpop() nounwind
  tail call void @__ioc_report_conversion(i32 1564, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %sw.epilog

ioc_bb131:                                        ; preds = %if.end104
  tail call void @__ioc_report_conversion(i32 1567, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 138, i8 1) nounwind
  tail call void @add(i32 -118)
  tail call void @__ioc_report_conversion(i32 1568, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 141, i8 1) nounwind
  tail call void @cmdpush(i32 30) nounwind
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.0.ph, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb135, label %sw.epilog

ioc_bb135:                                        ; preds = %ioc_bb131
  %24 = sext i32 %bct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1570, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %sw.epilog

ioc_bb141:                                        ; preds = %if.end104
  tail call void @__ioc_report_conversion(i32 1573, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 138, i8 1) nounwind
  tail call void @add(i32 -118)
  br label %sw.epilog

if.else143:                                       ; preds = %if.end104
  %25 = load void (i32)** @hungetc, align 4, !tbaa !3
  tail call void %25(i32 %call105) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  tail call void @__ioc_report_conversion(i32 1577, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 138, i8 1) nounwind
  br label %sw.epilog

sw.bb150:                                         ; preds = %cont26
  %or.cond431 = or i1 %tobool21.old, %tobool12
  br i1 %or.cond431, label %sw.epilog, label %ioc_bb156

ioc_bb156:                                        ; preds = %sw.bb150
  tail call void @__ioc_report_conversion(i32 1585, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 142, i8 1) nounwind
  %26 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.0.ph, i32 -1)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb158, label %cont159

ioc_bb158:                                        ; preds = %ioc_bb156
  %29 = sext i32 %bct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1586, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %29, i64 -1, i8 13) nounwind
  br label %cont159

cont159:                                          ; preds = %ioc_bb156, %ioc_bb158
  tail call void @cmdpop() nounwind
  br label %sw.epilog

ioc_bb161:                                        ; preds = %cont26
  tail call void @__ioc_report_conversion(i32 1592, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 151, i8 1) nounwind
  %cmp163 = icmp eq i32 %intick.0.ph, 2
  br i1 %cmp163, label %if.then165, label %if.end168

if.then165:                                       ; preds = %ioc_bb161
  %30 = load i32* @stophist, align 4, !tbaa !0
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %30, i32 4)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb166, label %cont167

ioc_bb166:                                        ; preds = %if.then165
  %34 = sext i32 %30 to i64
  tail call void @__ioc_report_sub_overflow(i32 1594, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %34, i64 4, i8 13) nounwind
  br label %cont167

cont167:                                          ; preds = %if.then165, %ioc_bb166
  store i32 %32, i32* @stophist, align 4, !tbaa !0
  br label %if.end168

if.end168:                                        ; preds = %cont167, %ioc_bb161
  %lnot.ext = zext i1 %tobool21 to i32
  %35 = load i32* @lexflags, align 4, !tbaa !0
  %and = and i32 %35, 2
  %tobool172 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then171, label %if.else189

if.then171:                                       ; preds = %if.end168
  br i1 %tobool172, label %land.lhs.true173, label %if.end188

land.lhs.true173:                                 ; preds = %if.then171
  %36 = load i32* @inbufflags, align 4, !tbaa !0
  %and178 = and i32 %36, 2
  %tobool179 = icmp eq i32 %and178, 0
  br i1 %tobool179, label %land.lhs.true180, label %if.end188

land.lhs.true180:                                 ; preds = %land.lhs.true173
  %37 = load i32* @zlemetacs, align 4, !tbaa !0
  %38 = load i32* @zlemetall, align 4, !tbaa !0
  %39 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %38, i32 1)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb181, label %cont182

ioc_bb181:                                        ; preds = %land.lhs.true180
  %42 = sext i32 %38 to i64
  tail call void @__ioc_report_add_overflow(i32 1596, i32 89, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %42, i64 1, i8 13) nounwind
  br label %cont182

cont182:                                          ; preds = %land.lhs.true180, %ioc_bb181
  %43 = load i32* @inbufct, align 4, !tbaa !0
  %44 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %40, i32 %43)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb183, label %cont184

ioc_bb183:                                        ; preds = %cont182
  %47 = sext i32 %43 to i64
  %48 = sext i32 %40 to i64
  tail call void @__ioc_report_sub_overflow(i32 1596, i32 93, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %48, i64 %47, i8 13) nounwind
  br label %cont184

cont184:                                          ; preds = %cont182, %ioc_bb183
  %cmp185 = icmp slt i32 %37, %45
  br i1 %cmp185, label %if.end188, label %if.then187

if.then187:                                       ; preds = %cont184
  %49 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %49, i32* @parbegin, align 4, !tbaa !0
  br label %if.end188

if.end188:                                        ; preds = %cont184, %land.lhs.true173, %if.then187, %if.then171
  tail call void @cmdpush(i32 23) nounwind
  br label %sw.epilog

if.else189:                                       ; preds = %if.end168
  br i1 %tobool172, label %land.lhs.true192, label %if.end221

land.lhs.true192:                                 ; preds = %if.else189
  %50 = load i32* @inbufflags, align 4, !tbaa !0
  %and197 = and i32 %50, 2
  %51 = load i32* @parbegin, align 4, !tbaa !0
  %notlhs = icmp eq i32 %and197, 0
  %notrhs = icmp ne i32 %51, -1
  %or.cond443.not = and i1 %notrhs, %notlhs
  %52 = load i32* @parend, align 4, !tbaa !0
  %cmp207 = icmp eq i32 %52, -1
  %or.cond445 = and i1 %or.cond443.not, %cmp207
  br i1 %or.cond445, label %if.then209, label %if.end221

if.then209:                                       ; preds = %land.lhs.true192
  %53 = load i32* @zlemetacs, align 4, !tbaa !0
  %54 = load i32* @zlemetall, align 4, !tbaa !0
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %54, i32 1)
  %56 = extractvalue { i32, i1 } %55, 0
  %57 = extractvalue { i32, i1 } %55, 1
  br i1 %57, label %ioc_bb210, label %cont211

ioc_bb210:                                        ; preds = %if.then209
  %58 = sext i32 %54 to i64
  tail call void @__ioc_report_add_overflow(i32 1603, i32 42, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %58, i64 1, i8 13) nounwind
  br label %cont211

cont211:                                          ; preds = %if.then209, %ioc_bb210
  %59 = load i32* @inbufct, align 4, !tbaa !0
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %56, i32 %59)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb212, label %cont213

ioc_bb212:                                        ; preds = %cont211
  %63 = sext i32 %59 to i64
  %64 = sext i32 %56 to i64
  tail call void @__ioc_report_sub_overflow(i32 1603, i32 46, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %64, i64 %63, i8 13) nounwind
  br label %cont213

cont213:                                          ; preds = %cont211, %ioc_bb212
  %cmp214 = icmp slt i32 %53, %61
  br i1 %cmp214, label %if.else219, label %cont218

cont218:                                          ; preds = %cont213
  store i32 -1, i32* @parbegin, align 4, !tbaa !0
  br label %if.end221

if.else219:                                       ; preds = %cont213
  %65 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %65, i32* @parend, align 4, !tbaa !0
  br label %if.end221

if.end221:                                        ; preds = %land.lhs.true192, %cont218, %if.else219, %if.else189
  tail call void @cmdpop() nounwind
  br label %sw.epilog

sw.bb223:                                         ; preds = %cont26
  switch i32 %intick.0.ph, label %if.else232 [
    i32 0, label %sw.epilog
    i32 1, label %if.then229
  ]

if.then229:                                       ; preds = %sw.bb223
  %66 = load i32* @stophist, align 4, !tbaa !0
  %67 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %66, i32 4)
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb230, label %cont231

ioc_bb230:                                        ; preds = %if.then229
  %70 = sext i32 %66 to i64
  tail call void @__ioc_report_add_overflow(i32 1618, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %70, i64 4, i8 13) nounwind
  br label %cont231

cont231:                                          ; preds = %if.then229, %ioc_bb230
  store i32 %68, i32* @stophist, align 4, !tbaa !0
  br label %sw.epilog

if.else232:                                       ; preds = %sw.bb223
  %71 = load i32* @stophist, align 4, !tbaa !0
  %72 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %71, i32 4)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb233, label %cont234

ioc_bb233:                                        ; preds = %if.else232
  %75 = sext i32 %71 to i64
  tail call void @__ioc_report_sub_overflow(i32 1620, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %75, i64 4, i8 13) nounwind
  br label %cont234

cont234:                                          ; preds = %if.else232, %ioc_bb233
  store i32 %73, i32* @stophist, align 4, !tbaa !0
  br label %sw.epilog

sw.bb236:                                         ; preds = %cont26
  %or.cond432 = or i1 %tobool12, %.cmp3.not
  br i1 %or.cond432, label %if.then240, label %sw.epilog

if.then240:                                       ; preds = %sw.bb236
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0.ph, i32 1)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb241, label %sw.epilog

ioc_bb241:                                        ; preds = %if.then240
  %79 = sext i32 %pct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1626, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %79, i64 1, i8 13) nounwind
  br label %sw.epilog

sw.bb244:                                         ; preds = %cont26
  %or.cond434 = or i1 %tobool12, %.cmp3.not
  br i1 %or.cond434, label %if.then248, label %sw.epilog

if.then248:                                       ; preds = %sw.bb244
  %80 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0.ph, i32 -1)
  %81 = extractvalue { i32, i1 } %80, 0
  %82 = extractvalue { i32, i1 } %80, 1
  br i1 %82, label %ioc_bb249, label %cont250

ioc_bb249:                                        ; preds = %if.then248
  %83 = sext i32 %pct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1632, i32 22, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %83, i64 -1, i8 13) nounwind
  br label %cont250

cont250:                                          ; preds = %if.then248, %ioc_bb249
  %tobool251 = icmp eq i32 %pct.0.ph, 0
  %.cmp3. = and i1 %tobool251, %.cmp3
  %land.ext255 = zext i1 %.cmp3. to i32
  br label %sw.epilog

sw.bb257:                                         ; preds = %cont26
  %or.cond436 = or i1 %tobool12, %.cmp3.not
  br i1 %or.cond436, label %if.then261, label %sw.epilog

if.then261:                                       ; preds = %sw.bb257
  %84 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %brct.0.ph, i32 1)
  %85 = extractvalue { i32, i1 } %84, 0
  %86 = extractvalue { i32, i1 } %84, 1
  br i1 %86, label %ioc_bb262, label %sw.epilog

ioc_bb262:                                        ; preds = %if.then261
  %87 = sext i32 %brct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1638, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %87, i64 1, i8 13) nounwind
  br label %sw.epilog

sw.bb265:                                         ; preds = %cont26
  %or.cond438 = or i1 %tobool12, %.cmp3.not
  br i1 %or.cond438, label %if.then269, label %sw.epilog

if.then269:                                       ; preds = %sw.bb265
  %88 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %brct.0.ph, i32 -1)
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %ioc_bb270, label %cont271

ioc_bb270:                                        ; preds = %if.then269
  %91 = sext i32 %brct.0.ph to i64
  tail call void @__ioc_report_add_overflow(i32 1644, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %91, i64 -1, i8 13) nounwind
  br label %cont271

cont271:                                          ; preds = %if.then269, %ioc_bb270
  %tobool272 = icmp eq i32 %brct.0.ph, 0
  %.cmp3.439 = and i1 %tobool272, %.cmp3
  %land.ext276 = zext i1 %.cmp3.439 to i32
  br label %sw.epilog

sw.bb278:                                         ; preds = %cont26
  br i1 %tobool21, label %lor.lhs.false280, label %sw.epilog

lor.lhs.false280:                                 ; preds = %sw.bb278
  %or.cond440 = and i1 %cmp282, %tobool12
  br i1 %or.cond440, label %sw.epilog, label %if.end287

if.end287:                                        ; preds = %lor.lhs.false280
  br i1 %tobool12, label %sw.epilog, label %ioc_bb290

ioc_bb290:                                        ; preds = %if.end287
  tail call void @__ioc_report_conversion(i32 1652, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 154, i8 1) nounwind
  tail call void @add(i32 -102)
  tail call void @cmdpush(i32 22) nounwind
  %call294 = tail call fastcc i32 @dquote_parse(i8 signext 34, i32 %sub)
  tail call void @cmdpop() nounwind
  tail call void @__ioc_report_conversion(i32 1656, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 154, i8 1) nounwind
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else79, %cont26, %if.end287, %lor.lhs.false280, %sw.bb278, %sw.bb265, %if.then261, %sw.bb257, %sw.bb244, %if.then240, %sw.bb236, %sw.bb223, %sw.bb150, %ioc_bb131, %sw.bb101, %ioc_bb262, %ioc_bb241, %ioc_bb135, %ioc_bb290, %cont271, %cont250, %cont231, %cont234, %if.end188, %if.end221, %ioc_bb109, %if.else143, %ioc_bb141, %ioc_bb118, %ioc_bb77, %cont159, %sw.bb90
  %bct.1 = phi i32 [ %bct.0.ph, %ioc_bb290 ], [ %bct.0.ph, %cont271 ], [ %bct.0.ph, %cont250 ], [ %bct.0.ph, %cont231 ], [ %bct.0.ph, %cont234 ], [ %bct.0.ph, %if.end188 ], [ %bct.0.ph, %if.end221 ], [ %27, %cont159 ], [ %bct.0.ph, %ioc_bb109 ], [ %bct.0.ph, %ioc_bb118 ], [ %bct.0.ph, %ioc_bb141 ], [ %bct.0.ph, %if.else143 ], [ %bct.0.ph, %sw.bb90 ], [ %bct.0.ph, %ioc_bb77 ], [ %22, %ioc_bb135 ], [ %bct.0.ph, %ioc_bb241 ], [ %bct.0.ph, %ioc_bb262 ], [ %bct.0.ph, %sw.bb101 ], [ %22, %ioc_bb131 ], [ %bct.0.ph, %sw.bb150 ], [ %bct.0.ph, %sw.bb223 ], [ %bct.0.ph, %sw.bb236 ], [ %bct.0.ph, %if.then240 ], [ %bct.0.ph, %sw.bb244 ], [ %bct.0.ph, %sw.bb257 ], [ %bct.0.ph, %if.then261 ], [ %bct.0.ph, %sw.bb265 ], [ %bct.0.ph, %sw.bb278 ], [ 0, %lor.lhs.false280 ], [ 0, %if.end287 ], [ %bct.0.ph, %cont26 ], [ %bct.0.ph, %if.else79 ]
  %intick.1 = phi i32 [ 0, %ioc_bb290 ], [ %intick.0.ph, %cont271 ], [ %intick.0.ph, %cont250 ], [ 2, %cont231 ], [ 1, %cont234 ], [ %lnot.ext, %if.end188 ], [ %lnot.ext, %if.end221 ], [ 0, %cont159 ], [ 0, %ioc_bb109 ], [ 0, %ioc_bb118 ], [ 0, %ioc_bb141 ], [ 0, %if.else143 ], [ %intick.0.ph, %sw.bb90 ], [ %intick.0.ph, %ioc_bb77 ], [ 0, %ioc_bb135 ], [ %intick.0.ph, %ioc_bb241 ], [ %intick.0.ph, %ioc_bb262 ], [ %intick.0.ph, %sw.bb101 ], [ 0, %ioc_bb131 ], [ %intick.0.ph, %sw.bb150 ], [ 0, %sw.bb223 ], [ %intick.0.ph, %sw.bb236 ], [ %intick.0.ph, %if.then240 ], [ %intick.0.ph, %sw.bb244 ], [ %intick.0.ph, %sw.bb257 ], [ %intick.0.ph, %if.then261 ], [ %intick.0.ph, %sw.bb265 ], [ %intick.0.ph, %sw.bb278 ], [ 0, %lor.lhs.false280 ], [ 0, %if.end287 ], [ %intick.0.ph, %cont26 ], [ %intick.0.ph, %if.else79 ]
  %err.1 = phi i32 [ %call294, %ioc_bb290 ], [ %land.ext276, %cont271 ], [ %land.ext255, %cont250 ], [ %err.0.ph, %cont231 ], [ %err.0.ph, %cont234 ], [ %err.0.ph, %if.end188 ], [ %err.0.ph, %if.end221 ], [ %err.0.ph, %cont159 ], [ %call111, %ioc_bb109 ], [ %call124, %ioc_bb118 ], [ %err.0.ph, %ioc_bb141 ], [ %err.0.ph, %if.else143 ], [ %land.ext100, %sw.bb90 ], [ %err.0.ph, %ioc_bb77 ], [ %err.0.ph, %ioc_bb135 ], [ %err.0.ph, %ioc_bb241 ], [ %err.0.ph, %ioc_bb262 ], [ %err.0.ph, %sw.bb101 ], [ %err.0.ph, %ioc_bb131 ], [ %err.0.ph, %sw.bb150 ], [ %err.0.ph, %sw.bb223 ], [ %err.0.ph, %sw.bb236 ], [ %err.0.ph, %if.then240 ], [ %err.0.ph, %sw.bb244 ], [ %err.0.ph, %sw.bb257 ], [ %err.0.ph, %if.then261 ], [ %err.0.ph, %sw.bb265 ], [ %err.0.ph, %sw.bb278 ], [ %err.0.ph, %lor.lhs.false280 ], [ 1, %if.end287 ], [ %err.0.ph, %cont26 ], [ %err.0.ph, %if.else79 ]
  %c.1 = phi i32 [ -102, %ioc_bb290 ], [ 93, %cont271 ], [ 41, %cont250 ], [ 39, %cont231 ], [ 39, %cont234 ], [ -105, %if.end188 ], [ -105, %if.end221 ], [ -114, %cont159 ], [ -119, %ioc_bb109 ], [ -112, %ioc_bb118 ], [ 36, %ioc_bb141 ], [ -118, %if.else143 ], [ 10, %sw.bb90 ], [ %call27.lcssa508, %ioc_bb77 ], [ -115, %ioc_bb135 ], [ 40, %ioc_bb241 ], [ 91, %ioc_bb262 ], [ 36, %sw.bb101 ], [ -115, %ioc_bb131 ], [ 125, %sw.bb150 ], [ 39, %sw.bb223 ], [ 40, %sw.bb236 ], [ 40, %if.then240 ], [ 41, %sw.bb244 ], [ 91, %sw.bb257 ], [ 91, %if.then261 ], [ 93, %sw.bb265 ], [ 34, %sw.bb278 ], [ 34, %lor.lhs.false280 ], [ 34, %if.end287 ], [ %c.0, %cont26 ], [ 10, %if.else79 ]
  %brct.1 = phi i32 [ %brct.0.ph, %ioc_bb290 ], [ %89, %cont271 ], [ %brct.0.ph, %cont250 ], [ %brct.0.ph, %cont231 ], [ %brct.0.ph, %cont234 ], [ %brct.0.ph, %if.end188 ], [ %brct.0.ph, %if.end221 ], [ %brct.0.ph, %cont159 ], [ %brct.0.ph, %ioc_bb109 ], [ %brct.0.ph, %ioc_bb118 ], [ %brct.0.ph, %ioc_bb141 ], [ %brct.0.ph, %if.else143 ], [ %brct.0.ph, %sw.bb90 ], [ %brct.0.ph, %ioc_bb77 ], [ %brct.0.ph, %ioc_bb135 ], [ %brct.0.ph, %ioc_bb241 ], [ %85, %ioc_bb262 ], [ %brct.0.ph, %sw.bb101 ], [ %brct.0.ph, %ioc_bb131 ], [ %brct.0.ph, %sw.bb150 ], [ %brct.0.ph, %sw.bb223 ], [ %brct.0.ph, %sw.bb236 ], [ %brct.0.ph, %if.then240 ], [ %brct.0.ph, %sw.bb244 ], [ %brct.0.ph, %sw.bb257 ], [ %85, %if.then261 ], [ %brct.0.ph, %sw.bb265 ], [ %brct.0.ph, %sw.bb278 ], [ %brct.0.ph, %lor.lhs.false280 ], [ %brct.0.ph, %if.end287 ], [ %brct.0.ph, %cont26 ], [ %brct.0.ph, %if.else79 ]
  %pct.1 = phi i32 [ %pct.0.ph, %ioc_bb290 ], [ %pct.0.ph, %cont271 ], [ %81, %cont250 ], [ %pct.0.ph, %cont231 ], [ %pct.0.ph, %cont234 ], [ %pct.0.ph, %if.end188 ], [ %pct.0.ph, %if.end221 ], [ %pct.0.ph, %cont159 ], [ %pct.0.ph, %ioc_bb109 ], [ %pct.0.ph, %ioc_bb118 ], [ %pct.0.ph, %ioc_bb141 ], [ %pct.0.ph, %if.else143 ], [ %pct.0.ph, %sw.bb90 ], [ %pct.0.ph, %ioc_bb77 ], [ %pct.0.ph, %ioc_bb135 ], [ %77, %ioc_bb241 ], [ %pct.0.ph, %ioc_bb262 ], [ %pct.0.ph, %sw.bb101 ], [ %pct.0.ph, %ioc_bb131 ], [ %pct.0.ph, %sw.bb150 ], [ %pct.0.ph, %sw.bb223 ], [ %pct.0.ph, %sw.bb236 ], [ %77, %if.then240 ], [ %pct.0.ph, %sw.bb244 ], [ %pct.0.ph, %sw.bb257 ], [ %pct.0.ph, %if.then261 ], [ %pct.0.ph, %sw.bb265 ], [ %pct.0.ph, %sw.bb278 ], [ %pct.0.ph, %lor.lhs.false280 ], [ %pct.0.ph, %if.end287 ], [ %pct.0.ph, %cont26 ], [ %pct.0.ph, %if.else79 ]
  %92 = load i32* @lexstop, align 4, !tbaa !0
  %93 = or i32 %92, %err.1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %if.end303, label %while.end

if.end303:                                        ; preds = %sw.epilog
  tail call void @add(i32 %c.1)
  br label %while.cond.outer

while.end:                                        ; preds = %sw.epilog, %lor.lhs.false20, %land.lhs.true, %land.rhs22
  %bct.2 = phi i32 [ %bct.0.ph, %land.rhs22 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false20 ], [ %bct.1, %sw.epilog ]
  %intick.2 = phi i32 [ %intick.0.ph, %land.rhs22 ], [ %intick.0.ph, %land.lhs.true ], [ %intick.0.ph, %lor.lhs.false20 ], [ %intick.1, %sw.epilog ]
  %err.2 = phi i32 [ %err.0.ph, %land.rhs22 ], [ %err.0.ph, %land.lhs.true ], [ %err.0.ph, %lor.lhs.false20 ], [ %err.1, %sw.epilog ]
  %c.2 = phi i32 [ %call, %land.rhs22 ], [ %conv, %land.lhs.true ], [ %conv, %lor.lhs.false20 ], [ %c.1, %sw.epilog ]
  %cmp304 = icmp eq i32 %intick.2, 2
  br i1 %cmp304, label %if.then306, label %if.end309

if.then306:                                       ; preds = %while.end
  %95 = load i32* @stophist, align 4, !tbaa !0
  %96 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %95, i32 4)
  %97 = extractvalue { i32, i1 } %96, 0
  %98 = extractvalue { i32, i1 } %96, 1
  br i1 %98, label %ioc_bb307, label %cont308

ioc_bb307:                                        ; preds = %if.then306
  %99 = sext i32 %95 to i64
  tail call void @__ioc_report_sub_overflow(i32 1669, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %99, i64 4, i8 13) nounwind
  br label %cont308

cont308:                                          ; preds = %if.then306, %ioc_bb307
  store i32 %97, i32* @stophist, align 4, !tbaa !0
  br label %if.end309

if.end309:                                        ; preds = %cont308, %while.end
  %tobool310 = icmp ne i32 %intick.2, 0
  br i1 %tobool310, label %if.then311, label %while.cond313

if.then311:                                       ; preds = %if.end309
  tail call void @cmdpop() nounwind
  br label %while.cond313

while.cond313:                                    ; preds = %if.end309, %if.then311, %while.body317
  %bct.3 = phi i32 [ %101, %while.body317 ], [ %bct.2, %if.then311 ], [ %bct.2, %if.end309 ]
  %100 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.3, i32 -1)
  %101 = extractvalue { i32, i1 } %100, 0
  %102 = extractvalue { i32, i1 } %100, 1
  br i1 %102, label %ioc_bb314, label %cont315

ioc_bb314:                                        ; preds = %while.cond313
  %103 = sext i32 %bct.3 to i64
  tail call void @__ioc_report_add_overflow(i32 1673, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %103, i64 -1, i8 13) nounwind
  br label %cont315

cont315:                                          ; preds = %while.cond313, %ioc_bb314
  %tobool316 = icmp eq i32 %bct.3, 0
  br i1 %tobool316, label %while.end318, label %while.body317

while.body317:                                    ; preds = %cont315
  tail call void @cmdpop() nounwind
  br label %while.cond313

while.end318:                                     ; preds = %cont315
  %104 = load i32* @lexstop, align 4, !tbaa !0
  %tobool319 = icmp eq i32 %104, 0
  br i1 %tobool319, label %if.else329, label %if.then320

if.then320:                                       ; preds = %while.end318
  %tobool326 = icmp ne i32 %err.2, 0
  %tobool324.not = icmp ne i8 %endchar, 0
  %not.or.cond441 = or i1 %tobool310, %tobool324.not
  %tobool326. = or i1 %tobool326, %not.or.cond441
  %lor.ext328 = zext i1 %tobool326. to i32
  br label %if.end334

if.else329:                                       ; preds = %while.end318
  %cmp330 = icmp eq i32 %err.2, 1
  %c.2.err.2 = select i1 %cmp330, i32 %c.2, i32 %err.2
  br label %if.end334

if.end334:                                        ; preds = %if.else329, %if.then320
  %err.3 = phi i32 [ %lor.ext328, %if.then320 ], [ %c.2.err.2, %if.else329 ]
  br i1 %14, label %land.lhs.true336, label %if.end344

land.lhs.true336:                                 ; preds = %if.end334
  %105 = load i32* @zlemetacs, align 4, !tbaa !0
  %106 = load i32* @zlemetall, align 4, !tbaa !0
  %107 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %106, i32 1)
  %108 = extractvalue { i32, i1 } %107, 0
  %109 = extractvalue { i32, i1 } %107, 1
  br i1 %109, label %ioc_bb337, label %cont338

ioc_bb337:                                        ; preds = %land.lhs.true336
  %110 = sext i32 %106 to i64
  tail call void @__ioc_report_add_overflow(i32 1690, i32 41, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %110, i64 1, i8 13) nounwind
  br label %cont338

cont338:                                          ; preds = %land.lhs.true336, %ioc_bb337
  %111 = load i32* @inbufct, align 4, !tbaa !0
  %112 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %108, i32 %111)
  %113 = extractvalue { i32, i1 } %112, 0
  %114 = extractvalue { i32, i1 } %112, 1
  br i1 %114, label %ioc_bb339, label %cont340

ioc_bb339:                                        ; preds = %cont338
  %115 = sext i32 %111 to i64
  %116 = sext i32 %108 to i64
  tail call void @__ioc_report_sub_overflow(i32 1690, i32 45, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %116, i64 %115, i8 13) nounwind
  br label %cont340

cont340:                                          ; preds = %cont338, %ioc_bb339
  %cmp341 = icmp sgt i32 %105, %113
  br i1 %cmp341, label %if.end344, label %if.then343

if.then343:                                       ; preds = %cont340
  store i32 2, i32* @inwhat, align 4, !tbaa !0
  br label %if.end344

if.end344:                                        ; preds = %cont340, %if.then343, %if.end334
  ret i32 %err.3
}

declare void @strinend()

declare void @inpop()

define i8* @parse_subscript(i8* %s, i32 %sub, i32 %endchar) nounwind {
entry:
  %call = tail call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  tail call void @__ioc_report_conversion(i32 1741, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %2 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %endchar
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %cont
  tail call void @lexsave()
  %call2 = tail call i8* @dupstring(i8* %s) nounwind
  tail call void @untokenize(i8* %call2) nounwind
  tail call void @inpush(i8* %call2, i32 0, %struct.alias* null) nounwind
  tail call void @strinbeg(i32 0) nounwind
  store i32 0, i32* @len, align 4, !tbaa !0
  store i8* %s, i8** @tokstr, align 4, !tbaa !3
  store i8* %s, i8** @bptr, align 4, !tbaa !3
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %if.end
  %6 = sext i32 %call to i64
  tail call void @__ioc_report_add_overflow(i32 1752, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %if.end, %ioc_bb3
  store i32 %4, i32* @bsiz, align 4, !tbaa !0
  %endchar.off = add i32 %endchar, 128
  %7 = icmp ult i32 %endchar.off, 256
  br i1 %7, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cont4
  %8 = sext i32 %endchar to i64
  tail call void @__ioc_report_conversion(i32 1753, i32 22, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cont4
  %conv7 = trunc i32 %endchar to i8
  %call8 = tail call fastcc i32 @dquote_parse(i8 signext %conv7, i32 %sub)
  %tobool9 = icmp eq i32 %call8, 0
  %9 = load i8** @bptr, align 4, !tbaa !3
  br i1 %tobool9, label %if.end19, label %if.then10

if.then10:                                        ; preds = %cont6
  %10 = load i8* %9, align 1, !tbaa !1
  store i8 0, i8* %9, align 1, !tbaa !1
  tail call void @untokenize(i8* %s) nounwind
  %11 = load i8** @bptr, align 4, !tbaa !3
  store i8 %10, i8* %11, align 1, !tbaa !1
  br label %if.end19

if.end19:                                         ; preds = %cont6, %if.then10
  %s.addr.0 = phi i8* [ null, %if.then10 ], [ %9, %cont6 ]
  tail call void @strinend() nounwind
  tail call void @inpop() nounwind
  tail call void @lexrestore()
  br label %return

return:                                           ; preds = %cont, %if.end19
  %retval.0 = phi i8* [ %s.addr.0, %if.end19 ], [ null, %cont ]
  ret i8* %retval.0
}

define i32 @parse_subst_string(i8* %s) nounwind {
entry:
  %len = alloca i32, align 4
  %call = call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 1778, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %1, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %2 = load i8* %s, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont
  %call1 = call i32 @strcmp(i8* %s, i8* getelementptr inbounds ([0 x i8]* @nulstring, i32 0, i32 0)) nounwind
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @lexsave()
  call void @untokenize(i8* %s) nounwind
  %call3 = call i8* @dupstring(i8* %s) nounwind
  call void @inpush(i8* %call3, i32 0, %struct.alias* null) nounwind
  call void @strinbeg(i32 0) nounwind
  store i32 0, i32* @len, align 4, !tbaa !0
  store i8* %s, i8** @tokstr, align 4, !tbaa !3
  store i8* %s, i8** @bptr, align 4, !tbaa !3
  %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %if.end
  %6 = sext i32 %call to i64
  call void @__ioc_report_add_overflow(i32 1789, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %6, i64 1, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %if.end, %ioc_bb4
  store i32 %4, i32* @bsiz, align 4, !tbaa !0
  %7 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call6 = call i32 %7() nounwind
  %call7 = call fastcc i32 @gettokstr(i32 %call6, i32 1)
  %8 = load i32* @errflag, align 4, !tbaa !0
  call void @strinend() nounwind
  call void @inpop() nounwind
  call void @lexrestore()
  store i32 %8, i32* @errflag, align 4, !tbaa !0
  %cmp = icmp eq i32 %call7, 38
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cont5
  %9 = load i8* %s, align 1, !tbaa !1
  %tobool1078 = icmp eq i8 %9, 0
  br i1 %tobool1078, label %return, label %ioc_bb11

if.then8:                                         ; preds = %cont5
  call void @untokenize(i8* %s) nounwind
  br label %return

ioc_bb11:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %10 = phi i8 [ %25, %for.cond.backedge ], [ %9, %for.cond.preheader ]
  %ptr.079 = phi i8* [ %ptr.0.be, %for.cond.backedge ], [ %s, %for.cond.preheader ]
  call void @__ioc_report_conversion(i32 1811, i32 28, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp13 = icmp eq i8 %10, -123
  %arrayidx = getelementptr inbounds i8* %ptr.079, i32 1
  br i1 %cmp13, label %land.lhs.true, label %for.cond.backedge

land.lhs.true:                                    ; preds = %ioc_bb11
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1811, i32 55, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 153, i8 1) nounwind
  %cmp18 = icmp eq i8 %11, -103
  br i1 %cmp18, label %if.then20, label %for.cond.backedge

if.then20:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8* %ptr.079, i32 2
  %call33 = call i8* @getkeystring(i8* %add.ptr, i32* %len, i32 19, i32* null) nounwind
  %12 = load i32* %len, align 4, !tbaa !0
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 2)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %if.then20
  %16 = sext i32 %12 to i64
  call void @__ioc_report_add_overflow(i32 1817, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %16, i64 2, i8 13) nounwind
  br label %cont35

cont35:                                           ; preds = %if.then20, %ioc_bb34
  store i32 %14, i32* %len, align 4, !tbaa !0
  %call36 = call i32 @strlen(i8* %call33) nounwind readonly
  %17 = icmp sgt i32 %call36, -1
  br i1 %17, label %cont39, label %ioc_bb38

ioc_bb38:                                         ; preds = %cont35
  %18 = zext i32 %call36 to i64
  call void @__ioc_report_conversion(i32 1818, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %18, i8 0) nounwind
  %.pre = load i32* %len, align 4, !tbaa !0
  br label %cont39

cont39:                                           ; preds = %ioc_bb38, %cont35
  %19 = phi i32 [ %.pre, %ioc_bb38 ], [ %14, %cont35 ]
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %19, i32 %call36)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  %23 = sext i32 %call36 to i64
  br i1 %22, label %ioc_bb40, label %cont41

ioc_bb40:                                         ; preds = %cont39
  %24 = sext i32 %19 to i64
  call void @__ioc_report_sub_overflow(i32 1819, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %24, i64 %23, i8 13) nounwind
  br label %cont41

cont41:                                           ; preds = %cont39, %ioc_bb40
  %cmp42 = icmp slt i32 %21, 0
  br i1 %cmp42, label %return, label %if.end45

if.end45:                                         ; preds = %cont41
  br i1 %17, label %cont47, label %ioc_bb46

ioc_bb46:                                         ; preds = %if.end45
  call void @__ioc_report_conversion(i32 1835, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %23, i8 1) nounwind
  br label %cont47

cont47:                                           ; preds = %ioc_bb46, %if.end45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %ptr.079, i8* %call33, i32 %call36, i32 1, i1 false)
  %add.ptr48 = getelementptr inbounds i8* %ptr.079, i32 %call36
  %cmp49 = icmp sgt i32 %21, 0
  br i1 %cmp49, label %if.then51, label %for.cond.backedge

for.cond.backedge:                                ; preds = %ioc_bb11, %land.lhs.true, %while.cond, %cont47
  %ptr.0.be = phi i8* [ %add.ptr48, %cont47 ], [ %add.ptr48, %while.cond ], [ %arrayidx, %land.lhs.true ], [ %arrayidx, %ioc_bb11 ]
  %25 = load i8* %ptr.0.be, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %25, 0
  br i1 %tobool10, label %return, label %ioc_bb11

if.then51:                                        ; preds = %cont47
  %add.ptr48.sum = add i32 %21, %call36
  %add.ptr52 = getelementptr inbounds i8* %ptr.079, i32 %add.ptr48.sum
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then51
  %dptr.0 = phi i8* [ %add.ptr48, %if.then51 ], [ %incdec.ptr53, %while.cond ]
  %sptr.0 = phi i8* [ %add.ptr52, %if.then51 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr = getelementptr inbounds i8* %sptr.0, i32 1
  %26 = load i8* %sptr.0, align 1, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8* %dptr.0, i32 1
  store i8 %26, i8* %dptr.0, align 1, !tbaa !1
  %tobool54 = icmp eq i8 %26, 0
  br i1 %tobool54, label %for.cond.backedge, label %while.cond

return:                                           ; preds = %for.cond.preheader, %cont41, %for.cond.backedge, %cont, %lor.lhs.false, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %lor.lhs.false ], [ 0, %cont ], [ 0, %for.cond.preheader ], [ 1, %cont41 ], [ 0, %for.cond.backedge ]
  ret i32 %retval.0
}

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define internal fastcc i32 @gettokstr(i32 %c, i32 %sub) nounwind {
entry:
  %t = alloca i8*, align 4
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @len, align 4, !tbaa !0
  store i32 32, i32* @bsiz, align 4, !tbaa !0
  %call = call i8* @hcalloc(i32 32) nounwind
  store i8* %call, i8** @tokstr, align 4, !tbaa !3
  store i8* %call, i8** @bptr, align 4, !tbaa !3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %tobool.not = xor i1 %tobool, true
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.end692
  %pct.0.ph = phi i32 [ %pct.3, %if.end692 ], [ 0, %for.cond.preheader ]
  %brct.0.ph = phi i32 [ %brct.4, %if.end692 ], [ 0, %for.cond.preheader ]
  %fdpar.0.ph = phi i32 [ %fdpar.3, %if.end692 ], [ 0, %for.cond.preheader ]
  %intpos.0.ph = phi i32 [ %intpos.2, %if.end692 ], [ 1, %for.cond.preheader ]
  %in_brace_param.0.ph = phi i32 [ %in_brace_param.2, %if.end692 ], [ 0, %for.cond.preheader ]
  %peek.0.ph = phi i32 [ %peek.1, %if.end692 ], [ 34, %for.cond.preheader ]
  %bct.0.ph = phi i32 [ %bct.1, %if.end692 ], [ 0, %for.cond.preheader ]
  %c.addr.0.ph = phi i32 [ %call687, %if.end692 ], [ %c, %for.cond.preheader ]
  %tobool16 = icmp eq i32 %in_brace_param.0.ph, 0
  %tobool18 = icmp eq i32 %pct.0.ph, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.then455
  %fdpar.0 = phi i32 [ %fdpar.1, %if.then455 ], [ %fdpar.0.ph, %for.cond.outer ]
  %c.addr.0 = phi i32 [ %call456, %if.then455 ], [ %c.addr.0.ph, %for.cond.outer ]
  %0 = sext i32 %c.addr.0 to i64
  %1 = icmp ult i32 %c.addr.0, 256
  br i1 %1, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %for.cond
  call void @__ioc_report_conversion(i32 1041, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %0, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %for.cond
  %idxprom = and i32 %c.addr.0, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %2 = load i16* %arrayidx, align 2, !tbaa !5
  %notlhs = icmp eq i32 %fdpar.0, 0
  %and = and i16 %2, 8
  %notrhs = icmp ne i16 %and, 0
  %or.cond871.not = or i1 %notrhs, %notlhs
  %cmp = icmp eq i32 %c.addr.0, 41
  %or.cond872 = or i1 %or.cond871.not, %cmp
  %fdpar.1 = select i1 %or.cond872, i32 %fdpar.0, i32 0
  %or.cond873 = and i1 %notrhs, %tobool16
  %or.cond874 = and i1 %or.cond873, %tobool18
  br i1 %or.cond874, label %sw.bb, label %if.else

if.else:                                          ; preds = %cont2
  br i1 %1, label %cont23.thread, label %ioc_bb30

cont23.thread:                                    ; preds = %if.else
  %arrayidx26912 = getelementptr inbounds [256 x i8]* @lexact2, i32 0, i32 %idxprom
  %3 = load i8* %arrayidx26912, align 1, !tbaa !1
  br label %if.end36

ioc_bb30:                                         ; preds = %if.else
  call void @__ioc_report_conversion(i32 1047, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %0, i8 1) nounwind
  %arrayidx26 = getelementptr inbounds [256 x i8]* @lexact2, i32 0, i32 %idxprom
  %4 = load i8* %arrayidx26, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1048, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %0, i8 1) nounwind
  br label %if.end36

if.end36:                                         ; preds = %ioc_bb30, %cont23.thread
  %conv27914.in = phi i8 [ %3, %cont23.thread ], [ %4, %ioc_bb30 ]
  %conv27914 = zext i8 %conv27914.in to i32
  %arrayidx34 = getelementptr inbounds [256 x i8]* @lextok2, i32 0, i32 %idxprom
  %5 = load i8* %arrayidx34, align 1, !tbaa !1
  %conv35 = zext i8 %5 to i32
  switch i32 %conv27914, label %sw.epilog [
    i32 0, label %sw.bb
    i32 19, label %sw.bb42
    i32 1, label %sw.bb46
    i32 2, label %sw.bb71
    i32 3, label %sw.bb89
    i32 4, label %sw.bb133
    i32 5, label %sw.bb141
    i32 7, label %sw.bb153
    i32 8, label %sw.bb225
    i32 9, label %sw.bb245
    i32 17, label %sw.bb268
    i32 10, label %sw.bb279
    i32 11, label %sw.bb298
    i32 12, label %sw.bb338
    i32 13, label %sw.bb451
    i32 14, label %sw.bb467
    i32 15, label %ioc_bb554
    i32 16, label %ioc_bb565
  ]

sw.bb:                                            ; preds = %cont2, %if.end36
  %c.addr.1915 = phi i32 [ %conv35, %if.end36 ], [ %c.addr.0, %cont2 ]
  br i1 %tobool16, label %land.lhs.true38, label %sw.epilog

land.lhs.true38:                                  ; preds = %sw.bb
  br i1 %tobool, label %sw.epilog, label %brk.thread

sw.bb42:                                          ; preds = %if.end36
  %6 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call43 = call i32 %6() nounwind
  call void @__ioc_report_conversion(i32 1062, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 131, i8 1) nounwind
  call void @add(i32 -125)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end36
  %tobool47 = icmp eq i32 %fdpar.1, 0
  br i1 %tobool47, label %if.end51, label %if.then48

if.then48:                                        ; preds = %sw.bb46
  call void @add(i32 %conv35)
  %7 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %7, align 1, !tbaa !1
  br label %return

if.end51:                                         ; preds = %sw.bb46
  %or.cond875 = and i1 %tobool16, %tobool.not
  %8 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool56 = icmp eq i8 %8, 0
  %or.cond876 = or i1 %or.cond875, %tobool56
  br i1 %or.cond876, label %if.end58, label %sw.epilog

if.end58:                                         ; preds = %if.end51
  br i1 %tobool16, label %land.lhs.true60, label %ioc_bb69

land.lhs.true60:                                  ; preds = %if.end58
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0.ph, i32 -1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb61, label %cont62

ioc_bb61:                                         ; preds = %land.lhs.true60
  %12 = sext i32 %pct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1075, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %12, i64 -1, i8 13) nounwind
  br label %cont62

cont62:                                           ; preds = %land.lhs.true60, %ioc_bb61
  br i1 %tobool18, label %if.then64, label %ioc_bb69

if.then64:                                        ; preds = %cont62
  br i1 %tobool, label %sw.epilog, label %brk.thread

ioc_bb69:                                         ; preds = %if.end58, %cont62
  %pct.1 = phi i32 [ %pct.0.ph, %if.end58 ], [ %10, %cont62 ]
  call void @__ioc_report_conversion(i32 1083, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end36
  %13 = or i32 %in_brace_param.0.ph, %pct.0.ph
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.then75, label %if.end79

if.then75:                                        ; preds = %sw.bb71
  br i1 %tobool, label %sw.epilog, label %brk.thread

if.end79:                                         ; preds = %sw.bb71
  %15 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool80 = icmp eq i8 %15, 0
  %or.cond879 = and i1 %tobool16, %tobool.not
  %or.cond1159 = or i1 %tobool80, %or.cond879
  br i1 %or.cond1159, label %ioc_bb86, label %sw.epilog

ioc_bb86:                                         ; preds = %if.end79
  call void @__ioc_report_conversion(i32 1095, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 140, i8 1) nounwind
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end36
  %16 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call90 = call i32 %16() nounwind
  switch i32 %call90, label %if.else129 [
    i32 91, label %if.then93
    i32 40, label %ioc_bb110
    i32 123, label %if.then121
  ]

if.then93:                                        ; preds = %sw.bb89
  call void @cmdpush(i32 25) nounwind
  call void @__ioc_report_conversion(i32 1103, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  call void @add(i32 -123)
  call void @__ioc_report_conversion(i32 1104, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 143, i8 1) nounwind
  call void @add(i32 -113)
  %call100 = call fastcc i32 @dquote_parse(i8 signext 93, i32 %sub)
  call void @cmdpop() nounwind
  %tobool101 = icmp eq i32 %call100, 0
  br i1 %tobool101, label %ioc_bb104, label %brk.thread

ioc_bb104:                                        ; preds = %if.then93
  call void @__ioc_report_conversion(i32 1111, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %sw.epilog

ioc_bb110:                                        ; preds = %sw.bb89
  call void @__ioc_report_conversion(i32 1114, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  call void @add(i32 -123)
  %call112 = call fastcc i32 @cmd_or_math_sub()
  %tobool113 = icmp eq i32 %call112, 0
  br i1 %tobool113, label %ioc_bb116, label %brk.thread

ioc_bb116:                                        ; preds = %ioc_bb110
  call void @__ioc_report_conversion(i32 1120, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

if.then121:                                       ; preds = %sw.bb89
  call void @add(i32 %conv35)
  call void @__ioc_report_conversion(i32 1125, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 141, i8 1) nounwind
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.0.ph, i32 1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb124, label %cont125

ioc_bb124:                                        ; preds = %if.then121
  %20 = sext i32 %bct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1126, i32 13, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %20, i64 1, i8 13) nounwind
  br label %cont125

cont125:                                          ; preds = %if.then121, %ioc_bb124
  call void @cmdpush(i32 30) nounwind
  %.in_brace_param.0 = select i1 %tobool16, i32 %18, i32 %in_brace_param.0.ph
  br label %sw.epilog

if.else129:                                       ; preds = %sw.bb89
  %21 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %21(i32 %call90) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end36
  br i1 %tobool16, label %if.then135, label %ioc_bb139

if.then135:                                       ; preds = %sw.bb133
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %brct.0.ph, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb136, label %ioc_bb139

ioc_bb136:                                        ; preds = %if.then135
  %25 = sext i32 %brct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1141, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %ioc_bb139

ioc_bb139:                                        ; preds = %sw.bb133, %if.then135, %ioc_bb136
  %brct.1 = phi i32 [ %brct.0.ph, %sw.bb133 ], [ %23, %if.then135 ], [ %23, %ioc_bb136 ]
  call void @__ioc_report_conversion(i32 1142, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 143, i8 1) nounwind
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end36
  br i1 %tobool16, label %if.then143, label %if.end146

if.then143:                                       ; preds = %sw.bb141
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %brct.0.ph, i32 -1)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb144, label %if.end146

ioc_bb144:                                        ; preds = %if.then143
  %29 = sext i32 %brct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1148, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %29, i64 -1, i8 13) nounwind
  br label %if.end146

if.end146:                                        ; preds = %ioc_bb144, %if.then143, %sw.bb141
  %brct.2 = phi i32 [ %brct.0.ph, %sw.bb141 ], [ %27, %if.then143 ], [ %27, %ioc_bb144 ]
  %cmp147 = icmp slt i32 %brct.2, 0
  %.brct.2 = select i1 %cmp147, i32 0, i32 %brct.2
  call void @__ioc_report_conversion(i32 1151, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end36
  %30 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool154 = icmp eq i8 %30, 0
  br i1 %tobool154, label %if.end171, label %if.then155

if.then155:                                       ; preds = %sw.bb153
  %or.cond881 = and i1 %tobool16, %tobool.not
  br i1 %or.cond881, label %if.end160, label %sw.epilog

if.end160:                                        ; preds = %if.then155
  %31 = load i32* @incasepat, align 4, !tbaa !0
  %tobool161 = icmp eq i32 %31, 0
  %32 = load i32* @len, align 4, !tbaa !0
  %tobool163 = icmp ne i32 %32, 0
  %or.cond = or i1 %tobool161, %tobool163
  br i1 %or.cond, label %if.end165, label %return

if.end165:                                        ; preds = %if.end160
  %33 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 91), align 1, !tbaa !1
  %tobool166 = icmp eq i8 %33, 0
  %or.cond743 = and i1 %tobool166, %tobool163
  br i1 %or.cond743, label %brk.thread, label %if.end171

if.end171:                                        ; preds = %sw.bb153, %if.end165
  br i1 %tobool16, label %if.then173, label %ioc_bb223

if.then173:                                       ; preds = %if.end171
  br i1 %tobool, label %if.end207, label %if.then175

if.then175:                                       ; preds = %if.then173
  %34 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call176 = call i32 %34() nounwind
  %35 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %35(i32 %call176) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %cmp177 = icmp eq i32 %call176, 41
  br i1 %cmp177, label %if.then205, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %if.then175
  %36 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool181 = icmp eq i8 %36, 0
  br i1 %tobool181, label %if.end207, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %lor.lhs.false179
  %37 = icmp ult i32 %call176, 256
  br i1 %37, label %cont186, label %ioc_bb185

ioc_bb185:                                        ; preds = %land.lhs.true182
  %38 = sext i32 %call176 to i64
  call void @__ioc_report_conversion(i32 1189, i32 65, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %38, i8 1) nounwind
  br label %cont186

cont186:                                          ; preds = %ioc_bb185, %land.lhs.true182
  %idxprom188 = and i32 %call176, 255
  %arrayidx189 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom188
  %39 = load i16* %arrayidx189, align 2, !tbaa !5
  %and195 = and i16 %39, 8
  %tobool196 = icmp ne i16 %and195, 0
  %tobool198 = icmp eq i32 %bct.0.ph, 0
  %or.cond882 = and i1 %tobool196, %tobool198
  %tobool200 = icmp eq i32 %brct.0.ph, 0
  %or.cond883 = and i1 %or.cond882, %tobool200
  br i1 %or.cond883, label %land.lhs.true201, label %if.end207

land.lhs.true201:                                 ; preds = %cont186
  %tobool202 = icmp eq i32 %intpos.0.ph, 0
  %40 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool204 = icmp ne i32 %40, 0
  %or.cond744 = and i1 %tobool202, %tobool204
  br i1 %or.cond744, label %if.then205, label %if.end207

if.then205:                                       ; preds = %land.lhs.true201, %if.then175
  %41 = load i32* @nocorrect, align 4, !tbaa !0
  %or = or i32 %41, 2
  store i32 %or, i32* @nocorrect, align 4, !tbaa !0
  br label %brk.thread

if.end207:                                        ; preds = %cont186, %lor.lhs.false179, %land.lhs.true201, %if.then173
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0.ph, i32 1)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb208, label %cont209

ioc_bb208:                                        ; preds = %if.end207
  %45 = sext i32 %pct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1208, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %45, i64 1, i8 13) nounwind
  br label %cont209

cont209:                                          ; preds = %if.end207, %ioc_bb208
  %tobool210 = icmp ne i32 %pct.0.ph, 0
  %46 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool213 = icmp eq i8 %46, 0
  %or.cond884 = or i1 %tobool210, %tobool213
  %tobool215 = icmp eq i32 %intpos.0.ph, 0
  %or.cond885 = or i1 %or.cond884, %tobool215
  %or.cond885.not = xor i1 %or.cond885, true
  %tobool217 = icmp eq i32 %bct.0.ph, 0
  %or.cond886 = and i1 %tobool217, %or.cond885.not
  %tobool219 = icmp eq i32 %brct.0.ph, 0
  %or.cond887 = and i1 %or.cond886, %tobool219
  %.fdpar.1 = select i1 %or.cond887, i32 1, i32 %fdpar.1
  br label %ioc_bb223

ioc_bb223:                                        ; preds = %cont209, %if.end171
  %pct.2 = phi i32 [ %pct.0.ph, %if.end171 ], [ %43, %cont209 ]
  %fdpar.2 = phi i32 [ %fdpar.1, %if.end171 ], [ %.fdpar.1, %cont209 ]
  call void @__ioc_report_conversion(i32 1211, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 136, i8 1) nounwind
  br label %sw.epilog

sw.bb225:                                         ; preds = %if.end36
  %47 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %tobool227.not = icmp ne i8 %47, 0
  %brmerge = or i1 %tobool227.not, %tobool
  br i1 %brmerge, label %sw.epilog, label %if.else231

if.else231:                                       ; preds = %sw.bb225
  %48 = load i32* @len, align 4, !tbaa !0
  %tobool232 = icmp eq i32 %48, 0
  %49 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool234 = icmp ne i32 %49, 0
  %or.cond745 = and i1 %tobool232, %tobool234
  br i1 %or.cond745, label %if.then235, label %if.end238

if.then235:                                       ; preds = %if.else231
  call void @add(i32 123)
  %50 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %50, align 1, !tbaa !1
  br label %return

if.end238:                                        ; preds = %if.else231
  br i1 %tobool16, label %if.end241, label %if.then240

if.then240:                                       ; preds = %if.end238
  call void @cmdpush(i32 29) nounwind
  br label %if.end241

if.end241:                                        ; preds = %if.end238, %if.then240
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.0.ph, i32 1)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb242, label %sw.epilog

ioc_bb242:                                        ; preds = %if.end241
  %54 = sext i32 %bct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1227, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %54, i64 1, i8 13) nounwind
  br label %sw.epilog

sw.bb245:                                         ; preds = %if.end36
  %55 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %tobool247.not = icmp ne i8 %55, 0
  %brmerge888 = or i1 %tobool247.not, %tobool
  %or.cond889 = and i1 %brmerge888, %tobool16
  %tobool254 = icmp eq i32 %bct.0.ph, 0
  %or.cond890 = or i1 %or.cond889, %tobool254
  br i1 %or.cond890, label %sw.epilog, label %if.end256

if.end256:                                        ; preds = %sw.bb245
  br i1 %tobool16, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.end256
  call void @cmdpop() nounwind
  br label %if.end259

if.end259:                                        ; preds = %if.end256, %if.then258
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.0.ph, i32 -1)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb260, label %cont261

ioc_bb260:                                        ; preds = %if.end259
  %59 = sext i32 %bct.0.ph to i64
  call void @__ioc_report_add_overflow(i32 1240, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %59, i64 -1, i8 13) nounwind
  br label %cont261

cont261:                                          ; preds = %if.end259, %ioc_bb260
  %cmp262 = icmp eq i32 %bct.0.ph, %in_brace_param.0.ph
  %.in_brace_param.0891 = select i1 %cmp262, i32 0, i32 %in_brace_param.0.ph
  call void @__ioc_report_conversion(i32 1242, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 142, i8 1) nounwind
  br label %sw.epilog

sw.bb268:                                         ; preds = %if.end36
  %60 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %tobool269 = icmp eq i8 %60, 0
  br i1 %tobool269, label %land.lhs.true270, label %sw.epilog

land.lhs.true270:                                 ; preds = %sw.bb268
  %cmp273 = icmp sgt i32 %bct.0.ph, %in_brace_param.0.ph
  %or.cond893 = and i1 %cmp273, %tobool.not
  br i1 %or.cond893, label %ioc_bb276, label %sw.epilog

ioc_bb276:                                        ; preds = %land.lhs.true270
  call void @__ioc_report_conversion(i32 1248, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 152, i8 1) nounwind
  br label %sw.epilog

sw.bb279:                                         ; preds = %if.end36
  br i1 %tobool16, label %lor.lhs.false281, label %sw.epilog

lor.lhs.false281:                                 ; preds = %sw.bb279
  br i1 %tobool, label %sw.epilog, label %if.end284

if.end284:                                        ; preds = %lor.lhs.false281
  %61 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call285 = call i32 %61() nounwind
  %cmp286 = icmp eq i32 %call285, 40
  br i1 %cmp286, label %ioc_bb290, label %if.then288

if.then288:                                       ; preds = %if.end284
  %62 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %62(i32 %call285) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %brk.thread

ioc_bb290:                                        ; preds = %if.end284
  call void @__ioc_report_conversion(i32 1261, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 148, i8 1) nounwind
  call void @add(i32 -108)
  %call292 = call fastcc i32 @skipcomm()
  %tobool293 = icmp eq i32 %call292, 0
  br i1 %tobool293, label %ioc_bb296, label %brk.thread

ioc_bb296:                                        ; preds = %ioc_bb290
  call void @__ioc_report_conversion(i32 1266, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

sw.bb298:                                         ; preds = %if.end36
  %63 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !1
  %tobool300 = icmp eq i8 %63, 0
  %brmerge895 = or i1 %tobool300, %tobool.not
  br i1 %brmerge895, label %if.end304, label %sw.epilog

if.end304:                                        ; preds = %sw.bb298
  %64 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call305 = call i32 %64() nounwind
  %65 = or i32 %in_brace_param.0.ph, %sub
  %brmerge896.not = icmp eq i32 %65, 0
  %cmp310 = icmp eq i32 %call305, 40
  %or.cond897 = and i1 %brmerge896.not, %cmp310
  br i1 %or.cond897, label %ioc_bb313, label %if.end321

ioc_bb313:                                        ; preds = %if.end304
  call void @__ioc_report_conversion(i32 1275, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 146, i8 1) nounwind
  call void @add(i32 -110)
  %call315 = call fastcc i32 @skipcomm()
  %tobool316 = icmp eq i32 %call315, 0
  br i1 %tobool316, label %ioc_bb319, label %brk.thread

ioc_bb319:                                        ; preds = %ioc_bb313
  call void @__ioc_report_conversion(i32 1280, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

if.end321:                                        ; preds = %if.end304
  %66 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %66(i32 %call305) nounwind
  %call322 = call fastcc i32 @isnumglob()
  %tobool323 = icmp eq i32 %call322, 0
  br i1 %tobool323, label %if.end332, label %ioc_bb325

ioc_bb325:                                        ; preds = %if.end321
  call void @__ioc_report_conversion(i32 1285, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 146, i8 1) nounwind
  call void @add(i32 -110)
  %67 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call327949 = call i32 %67() nounwind
  %cmp328950 = icmp eq i32 %call327949, 62
  br i1 %cmp328950, label %ioc_bb330, label %while.body

while.body:                                       ; preds = %ioc_bb325, %while.body
  %call327951 = phi i32 [ %call327, %while.body ], [ %call327949, %ioc_bb325 ]
  call void @add(i32 %call327951)
  %68 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call327 = call i32 %68() nounwind
  %cmp328 = icmp eq i32 %call327, 62
  br i1 %cmp328, label %ioc_bb330, label %while.body

ioc_bb330:                                        ; preds = %while.body, %ioc_bb325
  call void @__ioc_report_conversion(i32 1288, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 147, i8 1) nounwind
  br label %sw.epilog

if.end332:                                        ; preds = %if.end321
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br i1 %tobool16, label %lor.lhs.false334, label %sw.epilog

lor.lhs.false334:                                 ; preds = %if.end332
  br i1 %tobool, label %sw.epilog, label %brk.thread

sw.bb338:                                         ; preds = %if.end36
  %tobool339 = icmp eq i32 %intpos.0.ph, 0
  br i1 %tobool339, label %if.else357, label %if.then340

if.then340:                                       ; preds = %sw.bb338
  %69 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call341 = call i32 %69() nounwind
  %cmp342 = icmp eq i32 %call341, 40
  br i1 %cmp342, label %ioc_bb348, label %if.then344

if.then344:                                       ; preds = %if.then340
  %70 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %70(i32 %call341) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  call void @__ioc_report_conversion(i32 1303, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 139, i8 1) nounwind
  br label %sw.epilog

ioc_bb348:                                        ; preds = %if.then340
  call void @__ioc_report_conversion(i32 1306, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 139, i8 1) nounwind
  call void @add(i32 -117)
  %call350 = call fastcc i32 @skipcomm()
  %tobool351 = icmp eq i32 %call350, 0
  br i1 %tobool351, label %ioc_bb354, label %brk.thread

ioc_bb354:                                        ; preds = %ioc_bb348
  call void @__ioc_report_conversion(i32 1311, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 137, i8 1) nounwind
  br label %sw.epilog

if.else357:                                       ; preds = %sw.bb338
  br i1 %tobool, label %ioc_bb447, label %land.lhs.true359

land.lhs.true359:                                 ; preds = %if.else357
  %cmp360 = icmp ne i32 %peek.0.ph, 35
  %71 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool363 = icmp ne i32 %71, 0
  %or.cond746 = and i1 %cmp360, %tobool363
  %tobool365 = icmp eq i32 %bct.0.ph, 0
  %or.cond898 = and i1 %or.cond746, %tobool365
  %tobool367 = icmp eq i32 %brct.0.ph, 0
  %or.cond899 = and i1 %or.cond898, %tobool367
  br i1 %or.cond899, label %if.then368, label %ioc_bb447

if.then368:                                       ; preds = %land.lhs.true359
  %72 = load i8** @tokstr, align 4, !tbaa !3
  store i8* %72, i8** %t, align 4, !tbaa !3
  %73 = load i8* %72, align 1, !tbaa !1
  %74 = icmp sgt i8 %73, -1
  br i1 %74, label %cont371, label %ioc_bb370

ioc_bb370:                                        ; preds = %if.then368
  %75 = sext i8 %73 to i64
  call void @__ioc_report_conversion(i32 1316, i32 38, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %75, i8 1) nounwind
  br label %cont371

cont371:                                          ; preds = %ioc_bb370, %if.then368
  %idxprom372 = zext i8 %73 to i32
  %arrayidx373 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom372
  %76 = load i16* %arrayidx373, align 2, !tbaa !5
  %and379 = and i16 %76, 1
  %tobool380 = icmp eq i16 %and379, 0
  br i1 %tobool380, label %if.else399, label %while.cond382

while.cond382:                                    ; preds = %cont387, %cont371
  %77 = load i8** %t, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %77, i32 1
  store i8* %incdec.ptr, i8** %t, align 4, !tbaa !3
  %78 = load i8** @bptr, align 4, !tbaa !3
  %cmp383 = icmp ult i8* %incdec.ptr, %78
  br i1 %cmp383, label %land.rhs, label %if.end423

land.rhs:                                         ; preds = %while.cond382
  %79 = load i8* %incdec.ptr, align 1, !tbaa !1
  %80 = icmp sgt i8 %79, -1
  br i1 %80, label %cont387, label %ioc_bb386

ioc_bb386:                                        ; preds = %land.rhs
  %81 = sext i8 %79 to i64
  call void @__ioc_report_conversion(i32 1317, i32 56, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont387

cont387:                                          ; preds = %ioc_bb386, %land.rhs
  %idxprom388 = zext i8 %79 to i32
  %arrayidx389 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom388
  %82 = load i16* %arrayidx389, align 2, !tbaa !5
  %and395 = and i16 %82, 1
  %tobool396 = icmp eq i16 %and395, 0
  br i1 %tobool396, label %if.end423, label %while.cond382

if.else399:                                       ; preds = %cont371
  %83 = load i8** @bptr, align 4, !tbaa !3
  %84 = load i8* %83, align 1, !tbaa !1
  store i8 0, i8* %83, align 1, !tbaa !1
  %85 = load i8** %t, align 4, !tbaa !3
  %call407 = call i8* @itype_end(i8* %85, i32 128, i32 0) nounwind
  store i8* %call407, i8** %t, align 4, !tbaa !3
  %86 = load i8** @bptr, align 4, !tbaa !3
  %cmp408 = icmp ult i8* %call407, %86
  br i1 %cmp408, label %ioc_bb411, label %cont420

ioc_bb411:                                        ; preds = %if.else399
  call void @__ioc_report_conversion(i32 1324, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 143, i8 1) nounwind
  call void @__ioc_report_conversion(i32 1324, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 144, i8 1) nounwind
  %call415 = call i32 @skipparens(i8 signext -113, i8 signext -112, i8** %t) nounwind
  br label %if.end423

cont420:                                          ; preds = %if.else399
  store i8 %84, i8* %86, align 1, !tbaa !1
  br label %if.end423

if.end423:                                        ; preds = %cont387, %while.cond382, %ioc_bb411, %cont420
  %87 = load i8** %t, align 4, !tbaa !3
  %88 = load i8* %87, align 1, !tbaa !1
  %cmp425 = icmp eq i8 %88, 43
  br i1 %cmp425, label %if.then427, label %if.end429

if.then427:                                       ; preds = %if.end423
  %incdec.ptr428 = getelementptr inbounds i8* %87, i32 1
  store i8* %incdec.ptr428, i8** %t, align 4, !tbaa !3
  br label %if.end429

if.end429:                                        ; preds = %if.end423, %if.then427
  %89 = phi i8* [ %incdec.ptr428, %if.then427 ], [ %87, %if.end423 ]
  %90 = load i8** @bptr, align 4, !tbaa !3
  %cmp430 = icmp eq i8* %89, %90
  br i1 %cmp430, label %if.then432, label %ioc_bb443

if.then432:                                       ; preds = %if.end429
  %91 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call433 = call i32 %91() nounwind
  %cmp434 = icmp eq i32 %call433, 40
  %92 = load i32* @incmdpos, align 4, !tbaa !0
  %tobool437 = icmp ne i32 %92, 0
  %or.cond747 = and i1 %cmp434, %tobool437
  br i1 %or.cond747, label %cont440, label %if.end441

cont440:                                          ; preds = %if.then432
  %93 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %93, align 1, !tbaa !1
  br label %return

if.end441:                                        ; preds = %if.then432
  %94 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %94(i32 %call433) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %sw.epilog

ioc_bb443:                                        ; preds = %if.end429
  call void @__ioc_report_conversion(i32 1344, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 139, i8 1) nounwind
  br label %sw.epilog

ioc_bb447:                                        ; preds = %if.else357, %land.lhs.true359
  call void @__ioc_report_conversion(i32 1347, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 139, i8 1) nounwind
  br label %sw.epilog

sw.bb451:                                         ; preds = %if.end36
  %95 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call452 = call i32 %95() nounwind
  %cmp453 = icmp eq i32 %call452, 10
  br i1 %cmp453, label %if.then455, label %if.end463

if.then455:                                       ; preds = %sw.bb451
  %96 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call456 = call i32 %96() nounwind
  %97 = load i32* @lexstop, align 4, !tbaa !0
  %tobool457 = icmp eq i32 %97, 0
  br i1 %tobool457, label %for.cond, label %brk.thread

if.end463:                                        ; preds = %sw.bb451
  call void @__ioc_report_conversion(i32 1359, i32 23, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 155, i8 1) nounwind
  call void @add(i32 -101)
  %.pr = load i32* @lexstop, align 4, !tbaa !0
  %tobool464 = icmp eq i32 %.pr, 0
  br i1 %tobool464, label %sw.epilog, label %brk.thread

sw.bb467:                                         ; preds = %if.end36
  %98 = load i32* @len, align 4, !tbaa !0
  %tobool468 = icmp eq i32 %98, 0
  br i1 %tobool468, label %ioc_bb479, label %cont471

cont471:                                          ; preds = %sw.bb467
  %99 = load i8** @bptr, align 4, !tbaa !3
  %arrayidx472 = getelementptr inbounds i8* %99, i32 -1
  %100 = load i8* %arrayidx472, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1366, i32 51, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 133, i8 1) nounwind
  %cmp476 = icmp eq i8 %100, -123
  br label %ioc_bb479

ioc_bb479:                                        ; preds = %cont471, %sw.bb467
  %101 = phi i1 [ false, %sw.bb467 ], [ %cmp476, %cont471 ]
  call void @__ioc_report_conversion(i32 1367, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 153, i8 1) nounwind
  call void @add(i32 -103)
  call void @cmdpush(i32 21) nounwind
  br label %for.cond481

for.cond481:                                      ; preds = %if.end550, %ioc_bb479
  %102 = load i32* @stophist, align 4, !tbaa !0
  %103 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %102, i32 4)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb482, label %cont483

ioc_bb482:                                        ; preds = %for.cond481
  %106 = sext i32 %102 to i64
  call void @__ioc_report_add_overflow(i32 1370, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %106, i64 4, i8 13) nounwind
  br label %cont483

cont483:                                          ; preds = %for.cond481, %ioc_bb482
  store i32 %104, i32* @stophist, align 4, !tbaa !0
  %107 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call485942 = call i32 %107() nounwind
  %cmp486943 = icmp ne i32 %call485942, 39
  %108 = load i32* @lexstop, align 4, !tbaa !0
  %lnot944 = icmp eq i32 %108, 0
  %or.cond900945 = and i1 %cmp486943, %lnot944
  br i1 %or.cond900945, label %while.body492, label %while.end535

while.body492:                                    ; preds = %cont483, %if.end534
  %call485946 = phi i32 [ %call485, %if.end534 ], [ %call485942, %cont483 ]
  %cmp495 = icmp eq i32 %call485946, 92
  %or.cond901 = and i1 %101, %cmp495
  br i1 %or.cond901, label %if.then497, label %if.else512

if.then497:                                       ; preds = %while.body492
  %109 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call498 = call i32 %109() nounwind
  %110 = load i32* @lexstop, align 4, !tbaa !0
  %tobool499 = icmp eq i32 %110, 0
  br i1 %tobool499, label %if.end501, label %while.end535

if.end501:                                        ; preds = %if.then497
  switch i32 %call498, label %if.else510 [
    i32 92, label %ioc_bb508
    i32 39, label %ioc_bb508
  ]

ioc_bb508:                                        ; preds = %if.end501, %if.end501
  call void @__ioc_report_conversion(i32 1384, i32 29, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 155, i8 1) nounwind
  call void @add(i32 -101)
  br label %if.end534

if.else510:                                       ; preds = %if.end501
  call void @add(i32 92)
  br label %if.end534

if.else512:                                       ; preds = %while.body492
  %111 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool516 = icmp eq i8 %111, 0
  %or.cond902 = or i1 %tobool, %tobool516
  %or.cond902.not = xor i1 %or.cond902, true
  %cmp518 = icmp eq i32 %call485946, 10
  %or.cond903 = and i1 %cmp518, %or.cond902.not
  br i1 %or.cond903, label %cont522, label %if.end534

cont522:                                          ; preds = %if.else512
  %112 = load i8** @bptr, align 4, !tbaa !3
  %arrayidx523 = getelementptr inbounds i8* %112, i32 -1
  %113 = load i8* %arrayidx523, align 1, !tbaa !1
  %cmp525 = icmp eq i8 %113, 92
  br i1 %cmp525, label %if.then527, label %while.end535

if.then527:                                       ; preds = %cont522
  store i8* %arrayidx523, i8** @bptr, align 4, !tbaa !3
  %114 = load i32* @len, align 4, !tbaa !0
  %115 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %114, i32 -1)
  %116 = extractvalue { i32, i1 } %115, 0
  %117 = extractvalue { i32, i1 } %115, 1
  br i1 %117, label %ioc_bb529, label %cont530

ioc_bb529:                                        ; preds = %if.then527
  %118 = sext i32 %114 to i64
  call void @__ioc_report_add_overflow(i32 1390, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %118, i64 -1, i8 13) nounwind
  br label %cont530

cont530:                                          ; preds = %if.then527, %ioc_bb529
  store i32 %116, i32* @len, align 4, !tbaa !0
  br label %if.end534

if.end534:                                        ; preds = %if.else512, %cont530, %ioc_bb508, %if.else510
  %c.addr.3 = phi i32 [ %call498, %ioc_bb508 ], [ %call498, %if.else510 ], [ %call485946, %if.else512 ], [ 10, %cont530 ]
  call void @add(i32 %c.addr.3)
  %119 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call485 = call i32 %119() nounwind
  %cmp486 = icmp ne i32 %call485, 39
  %120 = load i32* @lexstop, align 4, !tbaa !0
  %lnot = icmp eq i32 %120, 0
  %or.cond900 = and i1 %cmp486, %lnot
  br i1 %or.cond900, label %while.body492, label %while.end535

while.end535:                                     ; preds = %if.end534, %if.then497, %cont522, %cont483
  %c.addr.4 = phi i32 [ %call485942, %cont483 ], [ %call498, %if.then497 ], [ 10, %cont522 ], [ %call485, %if.end534 ]
  %121 = load i32* @stophist, align 4, !tbaa !0
  %122 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %121, i32 4)
  %123 = extractvalue { i32, i1 } %122, 0
  %124 = extractvalue { i32, i1 } %122, 1
  br i1 %124, label %ioc_bb536, label %cont537

ioc_bb536:                                        ; preds = %while.end535
  %125 = sext i32 %121 to i64
  call void @__ioc_report_sub_overflow(i32 1396, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %125, i64 4, i8 13) nounwind
  br label %cont537

cont537:                                          ; preds = %while.end535, %ioc_bb536
  store i32 %123, i32* @stophist, align 4, !tbaa !0
  %cmp538 = icmp eq i32 %c.addr.4, 39
  br i1 %cmp538, label %if.end541, label %if.then540

if.then540:                                       ; preds = %cont537
  call void @cmdpop() nounwind
  br label %if.then698

if.end541:                                        ; preds = %cont537
  %126 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call542 = call i32 %126() nounwind
  %127 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 140), align 1, !tbaa !1
  %notlhs931 = icmp ne i32 %call542, 39
  %notrhs932 = icmp eq i8 %127, 0
  %or.cond749.not = or i1 %notrhs932, %notlhs931
  %brmerge904 = or i1 %or.cond749.not, %101
  br i1 %brmerge904, label %for.end, label %if.end550

if.end550:                                        ; preds = %if.end541
  call void @add(i32 39)
  br label %for.cond481

for.end:                                          ; preds = %if.end541
  call void @cmdpop() nounwind
  %128 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %128(i32 %call542) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  call void @__ioc_report_conversion(i32 1411, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 153, i8 1) nounwind
  br label %sw.epilog

ioc_bb554:                                        ; preds = %if.end36
  call void @__ioc_report_conversion(i32 1416, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 154, i8 1) nounwind
  call void @add(i32 -102)
  call void @cmdpush(i32 22) nounwind
  %call558 = call fastcc i32 @dquote_parse(i8 signext 34, i32 %sub)
  call void @cmdpop() nounwind
  %tobool559 = icmp eq i32 %call558, 0
  br i1 %tobool559, label %ioc_bb562, label %if.then698

ioc_bb562:                                        ; preds = %ioc_bb554
  call void @__ioc_report_conversion(i32 1425, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 154, i8 1) nounwind
  br label %sw.epilog

ioc_bb565:                                        ; preds = %if.end36
  call void @__ioc_report_conversion(i32 1430, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 145, i8 1) nounwind
  call void @add(i32 -111)
  call void @cmdpush(i32 23) nounwind
  %129 = load i32* @lexflags, align 4, !tbaa !0
  %and567 = and i32 %129, 2
  %tobool568 = icmp eq i32 %and567, 0
  br i1 %tobool568, label %while.cond585.preheader, label %land.lhs.true569

land.lhs.true569:                                 ; preds = %ioc_bb565
  %130 = load i32* @inbufflags, align 4, !tbaa !0
  %and574 = and i32 %130, 2
  %tobool575 = icmp eq i32 %and574, 0
  br i1 %tobool575, label %land.lhs.true576, label %while.cond585.preheader

land.lhs.true576:                                 ; preds = %land.lhs.true569
  %131 = load i32* @zlemetacs, align 4, !tbaa !0
  %132 = load i32* @zlemetall, align 4, !tbaa !0
  %133 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %132, i32 1)
  %134 = extractvalue { i32, i1 } %133, 0
  %135 = extractvalue { i32, i1 } %133, 1
  br i1 %135, label %ioc_bb577, label %cont578

ioc_bb577:                                        ; preds = %land.lhs.true576
  %136 = sext i32 %132 to i64
  call void @__ioc_report_add_overflow(i32 1433, i32 85, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %136, i64 1, i8 13) nounwind
  br label %cont578

cont578:                                          ; preds = %land.lhs.true576, %ioc_bb577
  %137 = load i32* @inbufct, align 4, !tbaa !0
  %138 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %134, i32 %137)
  %139 = extractvalue { i32, i1 } %138, 0
  %140 = extractvalue { i32, i1 } %138, 1
  br i1 %140, label %ioc_bb579, label %cont580

ioc_bb579:                                        ; preds = %cont578
  %141 = sext i32 %137 to i64
  %142 = sext i32 %134 to i64
  call void @__ioc_report_sub_overflow(i32 1433, i32 89, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %142, i64 %141, i8 13) nounwind
  br label %cont580

cont580:                                          ; preds = %cont578, %ioc_bb579
  %cmp581 = icmp slt i32 %131, %139
  br i1 %cmp581, label %while.cond585.preheader, label %if.then583

if.then583:                                       ; preds = %cont580
  %143 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %143, i32* @parbegin, align 4, !tbaa !0
  br label %while.cond585.preheader

while.cond585.preheader:                          ; preds = %cont580, %land.lhs.true569, %ioc_bb565, %if.then583
  %144 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call586935959 = call i32 %144() nounwind
  %cmp587936960 = icmp ne i32 %call586935959, 96
  %145 = load i32* @lexstop, align 4, !tbaa !0
  %lnot591937961 = icmp eq i32 %145, 0
  %or.cond905938962 = and i1 %cmp587936960, %lnot591937961
  br i1 %or.cond905938962, label %while.body594.lr.ph, label %while.end643.thread

while.end643.thread:                              ; preds = %while.cond585.preheader
  call void @cmdpop() nounwind
  br i1 %cmp587936960, label %if.then698, label %ioc_bb653

while.body594.lr.ph:                              ; preds = %while.cond585.preheader, %while.cond585.outer.backedge
  %call586935964 = phi i32 [ %call586935, %while.cond585.outer.backedge ], [ %call586935959, %while.cond585.preheader ]
  %inquote.0.ph963 = phi i32 [ %152, %while.cond585.outer.backedge ], [ 0, %while.cond585.preheader ]
  br label %while.body594

while.body594:                                    ; preds = %while.body594.lr.ph, %while.cond585.backedge
  %call586939 = phi i32 [ %call586935964, %while.body594.lr.ph ], [ %call586, %while.cond585.backedge ]
  %cmp595 = icmp eq i32 %call586939, 92
  br i1 %cmp595, label %if.then597, label %if.else619

if.then597:                                       ; preds = %while.body594
  %146 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call598 = call i32 %146() nounwind
  switch i32 %call598, label %lor.rhs [
    i32 10, label %if.else611
    i32 96, label %ioc_bb609
    i32 92, label %ioc_bb609
  ]

lor.rhs:                                          ; preds = %if.then597
  %cmp607 = icmp eq i32 %call598, 36
  %phitmp = select i1 %cmp607, i32 -101, i32 92
  br label %ioc_bb609

ioc_bb609:                                        ; preds = %if.then597, %if.then597, %lor.rhs
  %147 = phi i32 [ %phitmp, %lor.rhs ], [ -101, %if.then597 ], [ -101, %if.then597 ]
  call void @__ioc_report_conversion(i32 1441, i32 61, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 155, i8 1) nounwind
  call void @add(i32 %147)
  call void @add(i32 %call598)
  br label %while.cond585.backedge

if.else611:                                       ; preds = %if.then597
  %148 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool615 = icmp eq i8 %148, 0
  %or.cond906 = or i1 %tobool, %tobool615
  br i1 %or.cond906, label %while.cond585.backedge, label %if.then616

if.then616:                                       ; preds = %if.else611
  call void @add(i32 10)
  br label %while.cond585.backedge

if.else619:                                       ; preds = %while.body594
  %149 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 41), align 1, !tbaa !1
  %tobool623 = icmp eq i8 %149, 0
  %or.cond907 = or i1 %tobool, %tobool623
  %or.cond907.not = xor i1 %or.cond907, true
  %cmp625 = icmp eq i32 %call586939, 10
  %or.cond908 = and i1 %cmp625, %or.cond907.not
  br i1 %or.cond908, label %while.end643, label %if.end628

if.end628:                                        ; preds = %if.else619
  call void @add(i32 %call586939)
  %cmp629 = icmp eq i32 %call586939, 39
  br i1 %cmp629, label %if.then631, label %while.cond585.backedge

while.cond585.backedge:                           ; preds = %if.end628, %ioc_bb609, %if.then616, %if.else611
  %150 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call586 = call i32 %150() nounwind
  %cmp587 = icmp ne i32 %call586, 96
  %151 = load i32* @lexstop, align 4, !tbaa !0
  %lnot591 = icmp eq i32 %151, 0
  %or.cond905 = and i1 %cmp587, %lnot591
  br i1 %or.cond905, label %while.body594, label %while.end643

if.then631:                                       ; preds = %if.end628
  %lnot633 = icmp eq i32 %inquote.0.ph963, 0
  %152 = xor i32 %inquote.0.ph963, 1
  %153 = load i32* @stophist, align 4, !tbaa !0
  br i1 %lnot633, label %if.then634, label %if.else637

if.then634:                                       ; preds = %if.then631
  %154 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %153, i32 4)
  %155 = extractvalue { i32, i1 } %154, 0
  %156 = extractvalue { i32, i1 } %154, 1
  br i1 %156, label %ioc_bb635, label %while.cond585.outer.backedge

ioc_bb635:                                        ; preds = %if.then634
  %157 = sext i32 %153 to i64
  call void @__ioc_report_add_overflow(i32 1454, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %157, i64 4, i8 13) nounwind
  br label %while.cond585.outer.backedge

while.cond585.outer.backedge:                     ; preds = %ioc_bb638, %if.else637, %ioc_bb635, %if.then634
  %storemerge = phi i32 [ %155, %if.then634 ], [ %155, %ioc_bb635 ], [ %161, %if.else637 ], [ %161, %ioc_bb638 ]
  store i32 %storemerge, i32* @stophist, align 4
  %158 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call586935 = call i32 %158() nounwind
  %cmp587936 = icmp ne i32 %call586935, 96
  %159 = load i32* @lexstop, align 4, !tbaa !0
  %lnot591937 = icmp eq i32 %159, 0
  %or.cond905938 = and i1 %cmp587936, %lnot591937
  br i1 %or.cond905938, label %while.body594.lr.ph, label %while.end643

if.else637:                                       ; preds = %if.then631
  %160 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %153, i32 4)
  %161 = extractvalue { i32, i1 } %160, 0
  %162 = extractvalue { i32, i1 } %160, 1
  br i1 %162, label %ioc_bb638, label %while.cond585.outer.backedge

ioc_bb638:                                        ; preds = %if.else637
  %163 = sext i32 %153 to i64
  call void @__ioc_report_sub_overflow(i32 1456, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %163, i64 4, i8 13) nounwind
  br label %while.cond585.outer.backedge

while.end643:                                     ; preds = %while.cond585.outer.backedge, %while.cond585.backedge, %if.else619
  %inquote.0.ph954 = phi i32 [ %inquote.0.ph963, %if.else619 ], [ %inquote.0.ph963, %while.cond585.backedge ], [ %152, %while.cond585.outer.backedge ]
  %cmp587.lcssa = phi i1 [ true, %if.else619 ], [ %cmp587, %while.cond585.backedge ], [ %cmp587936, %while.cond585.outer.backedge ]
  %call586.lcssa = phi i32 [ 10, %if.else619 ], [ %call586, %while.cond585.backedge ], [ %call586935, %while.cond585.outer.backedge ]
  %tobool644 = icmp eq i32 %inquote.0.ph954, 0
  br i1 %tobool644, label %if.end648, label %if.then645

if.then645:                                       ; preds = %while.end643
  %164 = load i32* @stophist, align 4, !tbaa !0
  %165 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %164, i32 4)
  %166 = extractvalue { i32, i1 } %165, 0
  %167 = extractvalue { i32, i1 } %165, 1
  br i1 %167, label %ioc_bb646, label %cont647

ioc_bb646:                                        ; preds = %if.then645
  %168 = sext i32 %164 to i64
  call void @__ioc_report_sub_overflow(i32 1461, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %168, i64 4, i8 13) nounwind
  br label %cont647

cont647:                                          ; preds = %if.then645, %ioc_bb646
  store i32 %166, i32* @stophist, align 4, !tbaa !0
  call void @cmdpop() nounwind
  br i1 %cmp587.lcssa, label %if.then698, label %ioc_bb653

if.end648:                                        ; preds = %while.end643
  call void @cmdpop() nounwind
  br i1 %cmp587.lcssa, label %if.then698, label %ioc_bb653

ioc_bb653:                                        ; preds = %cont647, %while.end643.thread, %if.end648
  call void @__ioc_report_conversion(i32 1468, i32 21, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 145, i8 1) nounwind
  %169 = load i32* @lexflags, align 4, !tbaa !0
  %and655 = and i32 %169, 2
  %tobool656 = icmp eq i32 %and655, 0
  br i1 %tobool656, label %sw.epilog, label %land.lhs.true657

land.lhs.true657:                                 ; preds = %ioc_bb653
  %170 = load i32* @inbufflags, align 4, !tbaa !0
  %and662 = and i32 %170, 2
  %171 = load i32* @parbegin, align 4, !tbaa !0
  %notlhs929 = icmp eq i32 %and662, 0
  %notrhs930 = icmp ne i32 %171, -1
  %or.cond910.not = and i1 %notrhs930, %notlhs929
  %172 = load i32* @parend, align 4, !tbaa !0
  %cmp672 = icmp eq i32 %172, -1
  %or.cond911 = and i1 %or.cond910.not, %cmp672
  br i1 %or.cond911, label %if.then674, label %sw.epilog

if.then674:                                       ; preds = %land.lhs.true657
  %173 = load i32* @zlemetacs, align 4, !tbaa !0
  %174 = load i32* @zlemetall, align 4, !tbaa !0
  %175 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %174, i32 1)
  %176 = extractvalue { i32, i1 } %175, 0
  %177 = extractvalue { i32, i1 } %175, 1
  br i1 %177, label %ioc_bb675, label %cont676

ioc_bb675:                                        ; preds = %if.then674
  %178 = sext i32 %174 to i64
  call void @__ioc_report_add_overflow(i32 1471, i32 40, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %178, i64 1, i8 13) nounwind
  br label %cont676

cont676:                                          ; preds = %if.then674, %ioc_bb675
  %179 = load i32* @inbufct, align 4, !tbaa !0
  %180 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %176, i32 %179)
  %181 = extractvalue { i32, i1 } %180, 0
  %182 = extractvalue { i32, i1 } %180, 1
  br i1 %182, label %ioc_bb677, label %cont678

ioc_bb677:                                        ; preds = %cont676
  %183 = sext i32 %179 to i64
  %184 = sext i32 %176 to i64
  call void @__ioc_report_sub_overflow(i32 1471, i32 44, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %184, i64 %183, i8 13) nounwind
  br label %cont678

cont678:                                          ; preds = %cont676, %ioc_bb677
  %cmp679 = icmp slt i32 %173, %181
  br i1 %cmp679, label %if.else684, label %cont683

cont683:                                          ; preds = %cont678
  store i32 -1, i32* @parbegin, align 4, !tbaa !0
  br label %sw.epilog

if.else684:                                       ; preds = %cont678
  %185 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %185, i32* @parend, align 4, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end79, %if.end36, %if.end332, %land.lhs.true657, %cont125, %sw.bb298, %land.lhs.true270, %sw.bb245, %ioc_bb242, %if.end241, %sw.bb225, %if.then155, %if.then64, %if.end51, %sw.bb, %sw.bb268, %sw.bb279, %if.end463, %ioc_bb653, %if.else684, %cont683, %ioc_bb354, %if.then344, %if.end441, %ioc_bb443, %ioc_bb447, %lor.lhs.false334, %lor.lhs.false281, %ioc_bb276, %ioc_bb104, %if.else129, %ioc_bb116, %ioc_bb86, %if.then75, %land.lhs.true38, %ioc_bb562, %for.end, %ioc_bb330, %ioc_bb319, %ioc_bb296, %cont261, %ioc_bb223, %if.end146, %ioc_bb139, %ioc_bb69, %sw.bb42
  %pct.3 = phi i32 [ %pct.0.ph, %land.lhs.true657 ], [ %pct.0.ph, %cont683 ], [ %pct.0.ph, %if.else684 ], [ %pct.0.ph, %ioc_bb653 ], [ %pct.0.ph, %ioc_bb562 ], [ %pct.0.ph, %for.end ], [ %pct.0.ph, %if.end463 ], [ %pct.0.ph, %if.then344 ], [ %pct.0.ph, %ioc_bb354 ], [ %pct.0.ph, %ioc_bb447 ], [ %pct.0.ph, %if.end441 ], [ %pct.0.ph, %ioc_bb443 ], [ %pct.0.ph, %ioc_bb330 ], [ %pct.0.ph, %if.end332 ], [ %pct.0.ph, %lor.lhs.false334 ], [ %pct.0.ph, %ioc_bb319 ], [ %pct.0.ph, %sw.bb279 ], [ %pct.0.ph, %lor.lhs.false281 ], [ %pct.0.ph, %ioc_bb296 ], [ %pct.0.ph, %sw.bb268 ], [ %pct.0.ph, %land.lhs.true270 ], [ %pct.0.ph, %ioc_bb276 ], [ %pct.0.ph, %cont261 ], [ %pct.0.ph, %if.then155 ], [ %pct.2, %ioc_bb223 ], [ %pct.0.ph, %if.end146 ], [ %pct.0.ph, %ioc_bb139 ], [ %pct.0.ph, %ioc_bb104 ], [ %pct.0.ph, %ioc_bb116 ], [ %pct.0.ph, %if.else129 ], [ %pct.0.ph, %ioc_bb86 ], [ %pct.0.ph, %if.then75 ], [ %pct.1, %ioc_bb69 ], [ %pct.0.ph, %sw.bb42 ], [ %pct.0.ph, %sw.bb ], [ %pct.0.ph, %land.lhs.true38 ], [ %pct.0.ph, %if.end51 ], [ 0, %if.then64 ], [ %pct.0.ph, %cont125 ], [ %pct.0.ph, %sw.bb225 ], [ %pct.0.ph, %if.end241 ], [ %pct.0.ph, %ioc_bb242 ], [ %pct.0.ph, %sw.bb245 ], [ %pct.0.ph, %sw.bb298 ], [ %pct.0.ph, %if.end36 ], [ %pct.0.ph, %if.end79 ]
  %brct.4 = phi i32 [ %brct.0.ph, %land.lhs.true657 ], [ %brct.0.ph, %cont683 ], [ %brct.0.ph, %if.else684 ], [ %brct.0.ph, %ioc_bb653 ], [ %brct.0.ph, %ioc_bb562 ], [ %brct.0.ph, %for.end ], [ %brct.0.ph, %if.end463 ], [ %brct.0.ph, %if.then344 ], [ %brct.0.ph, %ioc_bb354 ], [ %brct.0.ph, %ioc_bb447 ], [ 0, %if.end441 ], [ 0, %ioc_bb443 ], [ %brct.0.ph, %ioc_bb330 ], [ %brct.0.ph, %if.end332 ], [ %brct.0.ph, %lor.lhs.false334 ], [ %brct.0.ph, %ioc_bb319 ], [ %brct.0.ph, %sw.bb279 ], [ %brct.0.ph, %lor.lhs.false281 ], [ %brct.0.ph, %ioc_bb296 ], [ %brct.0.ph, %sw.bb268 ], [ %brct.0.ph, %land.lhs.true270 ], [ %brct.0.ph, %ioc_bb276 ], [ %brct.0.ph, %cont261 ], [ %brct.0.ph, %if.then155 ], [ %brct.0.ph, %ioc_bb223 ], [ %.brct.2, %if.end146 ], [ %brct.1, %ioc_bb139 ], [ %brct.0.ph, %ioc_bb104 ], [ %brct.0.ph, %ioc_bb116 ], [ %brct.0.ph, %if.else129 ], [ %brct.0.ph, %ioc_bb86 ], [ %brct.0.ph, %if.then75 ], [ %brct.0.ph, %ioc_bb69 ], [ %brct.0.ph, %sw.bb42 ], [ %brct.0.ph, %sw.bb ], [ %brct.0.ph, %land.lhs.true38 ], [ %brct.0.ph, %if.end51 ], [ %brct.0.ph, %if.then64 ], [ %brct.0.ph, %cont125 ], [ %brct.0.ph, %sw.bb225 ], [ %brct.0.ph, %if.end241 ], [ %brct.0.ph, %ioc_bb242 ], [ %brct.0.ph, %sw.bb245 ], [ %brct.0.ph, %sw.bb298 ], [ %brct.0.ph, %if.end36 ], [ %brct.0.ph, %if.end79 ]
  %fdpar.3 = phi i32 [ %fdpar.1, %land.lhs.true657 ], [ %fdpar.1, %cont683 ], [ %fdpar.1, %if.else684 ], [ %fdpar.1, %ioc_bb653 ], [ %fdpar.1, %ioc_bb562 ], [ %fdpar.1, %for.end ], [ %fdpar.1, %if.end463 ], [ %fdpar.1, %if.then344 ], [ %fdpar.1, %ioc_bb354 ], [ %fdpar.1, %ioc_bb447 ], [ %fdpar.1, %if.end441 ], [ %fdpar.1, %ioc_bb443 ], [ %fdpar.1, %ioc_bb330 ], [ %fdpar.1, %if.end332 ], [ %fdpar.1, %lor.lhs.false334 ], [ %fdpar.1, %ioc_bb319 ], [ %fdpar.1, %sw.bb279 ], [ %fdpar.1, %lor.lhs.false281 ], [ %fdpar.1, %ioc_bb296 ], [ %fdpar.1, %sw.bb268 ], [ %fdpar.1, %land.lhs.true270 ], [ %fdpar.1, %ioc_bb276 ], [ %fdpar.1, %cont261 ], [ %fdpar.1, %if.then155 ], [ %fdpar.2, %ioc_bb223 ], [ %fdpar.1, %if.end146 ], [ %fdpar.1, %ioc_bb139 ], [ %fdpar.1, %ioc_bb104 ], [ %fdpar.1, %ioc_bb116 ], [ %fdpar.1, %if.else129 ], [ %fdpar.1, %ioc_bb86 ], [ %fdpar.1, %if.then75 ], [ 0, %ioc_bb69 ], [ %fdpar.1, %sw.bb42 ], [ %fdpar.1, %sw.bb ], [ %fdpar.1, %land.lhs.true38 ], [ 0, %if.end51 ], [ 0, %if.then64 ], [ %fdpar.1, %cont125 ], [ %fdpar.1, %sw.bb225 ], [ %fdpar.1, %if.end241 ], [ %fdpar.1, %ioc_bb242 ], [ %fdpar.1, %sw.bb245 ], [ %fdpar.1, %sw.bb298 ], [ %fdpar.1, %if.end36 ], [ %fdpar.1, %if.end79 ]
  %intpos.1 = phi i32 [ %intpos.0.ph, %land.lhs.true657 ], [ %intpos.0.ph, %cont683 ], [ %intpos.0.ph, %if.else684 ], [ %intpos.0.ph, %ioc_bb653 ], [ %intpos.0.ph, %ioc_bb562 ], [ %intpos.0.ph, %for.end ], [ %intpos.0.ph, %if.end463 ], [ %intpos.0.ph, %if.then344 ], [ %intpos.0.ph, %ioc_bb354 ], [ 0, %ioc_bb447 ], [ 2, %if.end441 ], [ 0, %ioc_bb443 ], [ %intpos.0.ph, %ioc_bb330 ], [ %intpos.0.ph, %if.end332 ], [ %intpos.0.ph, %lor.lhs.false334 ], [ %intpos.0.ph, %ioc_bb319 ], [ %intpos.0.ph, %sw.bb279 ], [ %intpos.0.ph, %lor.lhs.false281 ], [ %intpos.0.ph, %ioc_bb296 ], [ %intpos.0.ph, %sw.bb268 ], [ %intpos.0.ph, %land.lhs.true270 ], [ %intpos.0.ph, %ioc_bb276 ], [ %intpos.0.ph, %cont261 ], [ %intpos.0.ph, %if.then155 ], [ %intpos.0.ph, %ioc_bb223 ], [ %intpos.0.ph, %if.end146 ], [ %intpos.0.ph, %ioc_bb139 ], [ %intpos.0.ph, %ioc_bb104 ], [ %intpos.0.ph, %ioc_bb116 ], [ %intpos.0.ph, %if.else129 ], [ %intpos.0.ph, %ioc_bb86 ], [ %intpos.0.ph, %if.then75 ], [ %intpos.0.ph, %ioc_bb69 ], [ %intpos.0.ph, %sw.bb42 ], [ %intpos.0.ph, %sw.bb ], [ %intpos.0.ph, %land.lhs.true38 ], [ %intpos.0.ph, %if.end51 ], [ %intpos.0.ph, %if.then64 ], [ %intpos.0.ph, %cont125 ], [ %intpos.0.ph, %sw.bb225 ], [ %intpos.0.ph, %if.end241 ], [ %intpos.0.ph, %ioc_bb242 ], [ %intpos.0.ph, %sw.bb245 ], [ %intpos.0.ph, %sw.bb298 ], [ %intpos.0.ph, %if.end36 ], [ %intpos.0.ph, %if.end79 ]
  %in_brace_param.2 = phi i32 [ %in_brace_param.0.ph, %land.lhs.true657 ], [ %in_brace_param.0.ph, %cont683 ], [ %in_brace_param.0.ph, %if.else684 ], [ %in_brace_param.0.ph, %ioc_bb653 ], [ %in_brace_param.0.ph, %ioc_bb562 ], [ %in_brace_param.0.ph, %for.end ], [ %in_brace_param.0.ph, %if.end463 ], [ %in_brace_param.0.ph, %if.then344 ], [ %in_brace_param.0.ph, %ioc_bb354 ], [ %in_brace_param.0.ph, %ioc_bb447 ], [ %in_brace_param.0.ph, %if.end441 ], [ %in_brace_param.0.ph, %ioc_bb443 ], [ %in_brace_param.0.ph, %ioc_bb330 ], [ %in_brace_param.0.ph, %if.end332 ], [ 0, %lor.lhs.false334 ], [ %in_brace_param.0.ph, %ioc_bb319 ], [ %in_brace_param.0.ph, %sw.bb279 ], [ 0, %lor.lhs.false281 ], [ 0, %ioc_bb296 ], [ %in_brace_param.0.ph, %sw.bb268 ], [ %in_brace_param.0.ph, %land.lhs.true270 ], [ %in_brace_param.0.ph, %ioc_bb276 ], [ %.in_brace_param.0891, %cont261 ], [ %in_brace_param.0.ph, %if.then155 ], [ %in_brace_param.0.ph, %ioc_bb223 ], [ %in_brace_param.0.ph, %if.end146 ], [ %in_brace_param.0.ph, %ioc_bb139 ], [ %in_brace_param.0.ph, %ioc_bb104 ], [ %in_brace_param.0.ph, %ioc_bb116 ], [ %in_brace_param.0.ph, %if.else129 ], [ %in_brace_param.0.ph, %ioc_bb86 ], [ %in_brace_param.0.ph, %if.then75 ], [ %in_brace_param.0.ph, %ioc_bb69 ], [ %in_brace_param.0.ph, %sw.bb42 ], [ %in_brace_param.0.ph, %sw.bb ], [ 0, %land.lhs.true38 ], [ %in_brace_param.0.ph, %if.end51 ], [ 0, %if.then64 ], [ %.in_brace_param.0, %cont125 ], [ %in_brace_param.0.ph, %sw.bb225 ], [ %in_brace_param.0.ph, %if.end241 ], [ %in_brace_param.0.ph, %ioc_bb242 ], [ %in_brace_param.0.ph, %sw.bb245 ], [ %in_brace_param.0.ph, %sw.bb298 ], [ %in_brace_param.0.ph, %if.end36 ], [ %in_brace_param.0.ph, %if.end79 ]
  %peek.1 = phi i32 [ %peek.0.ph, %land.lhs.true657 ], [ %peek.0.ph, %cont683 ], [ %peek.0.ph, %if.else684 ], [ %peek.0.ph, %ioc_bb653 ], [ %peek.0.ph, %ioc_bb562 ], [ %peek.0.ph, %for.end ], [ %peek.0.ph, %if.end463 ], [ %peek.0.ph, %if.then344 ], [ %peek.0.ph, %ioc_bb354 ], [ %peek.0.ph, %ioc_bb447 ], [ 35, %if.end441 ], [ %peek.0.ph, %ioc_bb443 ], [ %peek.0.ph, %ioc_bb330 ], [ %peek.0.ph, %if.end332 ], [ %peek.0.ph, %lor.lhs.false334 ], [ %peek.0.ph, %ioc_bb319 ], [ %peek.0.ph, %sw.bb279 ], [ %peek.0.ph, %lor.lhs.false281 ], [ %peek.0.ph, %ioc_bb296 ], [ %peek.0.ph, %sw.bb268 ], [ %peek.0.ph, %land.lhs.true270 ], [ %peek.0.ph, %ioc_bb276 ], [ %peek.0.ph, %cont261 ], [ %peek.0.ph, %if.then155 ], [ %peek.0.ph, %ioc_bb223 ], [ %peek.0.ph, %if.end146 ], [ %peek.0.ph, %ioc_bb139 ], [ %peek.0.ph, %ioc_bb104 ], [ %peek.0.ph, %ioc_bb116 ], [ %peek.0.ph, %if.else129 ], [ %peek.0.ph, %ioc_bb86 ], [ %peek.0.ph, %if.then75 ], [ %peek.0.ph, %ioc_bb69 ], [ %peek.0.ph, %sw.bb42 ], [ %peek.0.ph, %sw.bb ], [ %peek.0.ph, %land.lhs.true38 ], [ %peek.0.ph, %if.end51 ], [ %peek.0.ph, %if.then64 ], [ %peek.0.ph, %cont125 ], [ %peek.0.ph, %sw.bb225 ], [ %peek.0.ph, %if.end241 ], [ %peek.0.ph, %ioc_bb242 ], [ %peek.0.ph, %sw.bb245 ], [ %peek.0.ph, %sw.bb298 ], [ %peek.0.ph, %if.end36 ], [ %peek.0.ph, %if.end79 ]
  %bct.1 = phi i32 [ %bct.0.ph, %land.lhs.true657 ], [ %bct.0.ph, %cont683 ], [ %bct.0.ph, %if.else684 ], [ %bct.0.ph, %ioc_bb653 ], [ %bct.0.ph, %ioc_bb562 ], [ %bct.0.ph, %for.end ], [ %bct.0.ph, %if.end463 ], [ %bct.0.ph, %if.then344 ], [ %bct.0.ph, %ioc_bb354 ], [ %bct.0.ph, %ioc_bb447 ], [ 0, %if.end441 ], [ 0, %ioc_bb443 ], [ %bct.0.ph, %ioc_bb330 ], [ %bct.0.ph, %if.end332 ], [ %bct.0.ph, %lor.lhs.false334 ], [ %bct.0.ph, %ioc_bb319 ], [ %bct.0.ph, %sw.bb279 ], [ %bct.0.ph, %lor.lhs.false281 ], [ %bct.0.ph, %ioc_bb296 ], [ %bct.0.ph, %sw.bb268 ], [ %bct.0.ph, %land.lhs.true270 ], [ %bct.0.ph, %ioc_bb276 ], [ %57, %cont261 ], [ %bct.0.ph, %if.then155 ], [ %bct.0.ph, %ioc_bb223 ], [ %bct.0.ph, %if.end146 ], [ %bct.0.ph, %ioc_bb139 ], [ %bct.0.ph, %ioc_bb104 ], [ %bct.0.ph, %ioc_bb116 ], [ %bct.0.ph, %if.else129 ], [ %bct.0.ph, %ioc_bb86 ], [ %bct.0.ph, %if.then75 ], [ %bct.0.ph, %ioc_bb69 ], [ %bct.0.ph, %sw.bb42 ], [ %bct.0.ph, %sw.bb ], [ %bct.0.ph, %land.lhs.true38 ], [ %bct.0.ph, %if.end51 ], [ %bct.0.ph, %if.then64 ], [ %18, %cont125 ], [ %bct.0.ph, %sw.bb225 ], [ %52, %if.end241 ], [ %52, %ioc_bb242 ], [ %bct.0.ph, %sw.bb245 ], [ %bct.0.ph, %sw.bb298 ], [ %bct.0.ph, %if.end36 ], [ %bct.0.ph, %if.end79 ]
  %c.addr.5 = phi i32 [ -111, %land.lhs.true657 ], [ -111, %cont683 ], [ -111, %if.else684 ], [ -111, %ioc_bb653 ], [ -102, %ioc_bb562 ], [ -103, %for.end ], [ %call452, %if.end463 ], [ -117, %if.then344 ], [ -119, %ioc_bb354 ], [ -117, %ioc_bb447 ], [ %conv35, %if.end441 ], [ -117, %ioc_bb443 ], [ -109, %ioc_bb330 ], [ %conv35, %if.end332 ], [ %conv35, %lor.lhs.false334 ], [ -119, %ioc_bb319 ], [ %conv35, %sw.bb279 ], [ %conv35, %lor.lhs.false281 ], [ -119, %ioc_bb296 ], [ %conv35, %sw.bb268 ], [ %conv35, %land.lhs.true270 ], [ -104, %ioc_bb276 ], [ -114, %cont261 ], [ %conv35, %if.then155 ], [ -120, %ioc_bb223 ], [ -112, %if.end146 ], [ -113, %ioc_bb139 ], [ -112, %ioc_bb104 ], [ -119, %ioc_bb116 ], [ %conv35, %if.else129 ], [ -116, %ioc_bb86 ], [ %conv35, %if.then75 ], [ -119, %ioc_bb69 ], [ %call43, %sw.bb42 ], [ %c.addr.1915, %sw.bb ], [ %c.addr.1915, %land.lhs.true38 ], [ %conv35, %if.end51 ], [ %conv35, %if.then64 ], [ -115, %cont125 ], [ 123, %sw.bb225 ], [ %conv35, %if.end241 ], [ %conv35, %ioc_bb242 ], [ %conv35, %sw.bb245 ], [ %conv35, %sw.bb298 ], [ %conv35, %if.end36 ], [ %conv35, %if.end79 ]
  call void @add(i32 %c.addr.5)
  %186 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call687 = call i32 %186() nounwind
  %tobool688 = icmp eq i32 %intpos.1, 0
  br i1 %tobool688, label %if.end692, label %if.then689

if.then689:                                       ; preds = %sw.epilog
  %187 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %intpos.1, i32 -1)
  %188 = extractvalue { i32, i1 } %187, 0
  %189 = extractvalue { i32, i1 } %187, 1
  br i1 %189, label %ioc_bb690, label %if.end692

ioc_bb690:                                        ; preds = %if.then689
  %190 = sext i32 %intpos.1 to i64
  call void @__ioc_report_add_overflow(i32 1483, i32 13, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %190, i64 -1, i8 13) nounwind
  br label %if.end692

if.end692:                                        ; preds = %ioc_bb690, %if.then689, %sw.epilog
  %intpos.2 = phi i32 [ 0, %sw.epilog ], [ %188, %if.then689 ], [ %188, %ioc_bb690 ]
  %191 = load i32* @lexstop, align 4, !tbaa !0
  %tobool693 = icmp eq i32 %191, 0
  br i1 %tobool693, label %for.cond.outer, label %brk.thread

brk.thread:                                       ; preds = %if.then455, %if.end692, %if.end463, %lor.lhs.false334, %if.end165, %if.then75, %if.then64, %land.lhs.true38, %if.then93, %ioc_bb110, %ioc_bb290, %ioc_bb313, %ioc_bb348, %if.then288, %if.then205
  %in_brace_param.3.ph = phi i32 [ 0, %if.then288 ], [ 0, %if.then205 ], [ %in_brace_param.0.ph, %if.then455 ], [ %in_brace_param.0.ph, %ioc_bb348 ], [ %in_brace_param.0.ph, %ioc_bb313 ], [ 0, %ioc_bb290 ], [ %in_brace_param.0.ph, %ioc_bb110 ], [ %in_brace_param.0.ph, %if.then93 ], [ 0, %land.lhs.true38 ], [ 0, %if.then64 ], [ %in_brace_param.0.ph, %if.then75 ], [ 0, %if.end165 ], [ 0, %lor.lhs.false334 ], [ %in_brace_param.0.ph, %if.end463 ], [ %in_brace_param.2, %if.end692 ]
  %peek.2.ph = phi i32 [ %peek.0.ph, %if.then288 ], [ %peek.0.ph, %if.then205 ], [ %peek.0.ph, %if.then455 ], [ 38, %ioc_bb348 ], [ 38, %ioc_bb313 ], [ 38, %ioc_bb290 ], [ 38, %ioc_bb110 ], [ 38, %if.then93 ], [ %peek.0.ph, %land.lhs.true38 ], [ %peek.0.ph, %if.then64 ], [ %peek.0.ph, %if.then75 ], [ %peek.0.ph, %if.end165 ], [ %peek.0.ph, %lor.lhs.false334 ], [ %peek.0.ph, %if.end463 ], [ %peek.1, %if.end692 ]
  %bct.2.ph = phi i32 [ %bct.0.ph, %if.then288 ], [ %bct.0.ph, %if.then205 ], [ %bct.0.ph, %if.then455 ], [ %bct.0.ph, %ioc_bb348 ], [ %bct.0.ph, %ioc_bb313 ], [ %bct.0.ph, %ioc_bb290 ], [ %bct.0.ph, %ioc_bb110 ], [ %bct.0.ph, %if.then93 ], [ %bct.0.ph, %land.lhs.true38 ], [ %bct.0.ph, %if.then64 ], [ %bct.0.ph, %if.then75 ], [ %bct.0.ph, %if.end165 ], [ %bct.0.ph, %lor.lhs.false334 ], [ %bct.0.ph, %if.end463 ], [ %bct.1, %if.end692 ]
  %c.addr.6.ph = phi i32 [ %conv35, %if.then288 ], [ %conv35, %if.then205 ], [ %call456, %if.then455 ], [ %conv35, %ioc_bb348 ], [ %conv35, %ioc_bb313 ], [ %conv35, %ioc_bb290 ], [ %call112, %ioc_bb110 ], [ %call100, %if.then93 ], [ %c.addr.1915, %land.lhs.true38 ], [ %conv35, %if.then64 ], [ %conv35, %if.then75 ], [ %conv35, %if.end165 ], [ %conv35, %lor.lhs.false334 ], [ %call452, %if.end463 ], [ %call687, %if.end692 ]
  %192 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %192(i32 %c.addr.6.ph) nounwind
  br label %if.end699

if.then698:                                       ; preds = %ioc_bb554, %if.end648, %while.end643.thread, %cont647, %if.then540
  %unmatched.0.ph = phi i32 [ 39, %if.then540 ], [ 34, %ioc_bb554 ], [ 96, %if.end648 ], [ 96, %while.end643.thread ], [ 96, %cont647 ]
  %c.addr.6.ph922 = phi i32 [ %c.addr.4, %if.then540 ], [ %call558, %ioc_bb554 ], [ %call586.lcssa, %if.end648 ], [ %call586935959, %while.end643.thread ], [ %call586.lcssa, %cont647 ]
  %193 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %193(i32 %c.addr.6.ph922) nounwind
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([13 x i8]* @.str38, i32 0, i32 0), i32 %unmatched.0.ph) nounwind
  br label %if.end699

if.end699:                                        ; preds = %brk.thread, %if.then698
  %bct.2920 = phi i32 [ %bct.2.ph, %brk.thread ], [ %bct.0.ph, %if.then698 ]
  %peek.2919 = phi i32 [ %peek.2.ph, %brk.thread ], [ 38, %if.then698 ]
  %in_brace_param.3918 = phi i32 [ %in_brace_param.3.ph, %brk.thread ], [ %in_brace_param.0.ph, %if.then698 ]
  %tobool700 = icmp eq i32 %in_brace_param.3918, 0
  br i1 %tobool700, label %if.else709, label %while.cond702

while.cond702:                                    ; preds = %if.end699, %while.body707
  %bct.3 = phi i32 [ %195, %while.body707 ], [ %bct.2920, %if.end699 ]
  %194 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bct.3, i32 -1)
  %195 = extractvalue { i32, i1 } %194, 0
  %196 = extractvalue { i32, i1 } %194, 1
  br i1 %196, label %ioc_bb703, label %cont704

ioc_bb703:                                        ; preds = %while.cond702
  %197 = sext i32 %bct.3 to i64
  call void @__ioc_report_add_overflow(i32 1492, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %197, i64 -1, i8 13) nounwind
  br label %cont704

cont704:                                          ; preds = %while.cond702, %ioc_bb703
  %cmp705 = icmp slt i32 %bct.3, %in_brace_param.3918
  br i1 %cmp705, label %while.end708, label %while.body707

while.body707:                                    ; preds = %cont704
  call void @cmdpop() nounwind
  br label %while.cond702

while.end708:                                     ; preds = %cont704
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str39, i32 0, i32 0)) nounwind
  br label %cont742

if.else709:                                       ; preds = %if.end699
  %198 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 83), align 1, !tbaa !1
  %tobool710 = icmp eq i8 %198, 0
  br i1 %tobool710, label %land.lhs.true711, label %cont742

land.lhs.true711:                                 ; preds = %if.else709
  %tobool712 = icmp eq i32 %sub, 0
  %199 = load i32* @len, align 4, !tbaa !0
  %cmp714 = icmp sgt i32 %199, 1
  %or.cond751 = and i1 %tobool712, %cmp714
  %cmp717 = icmp eq i32 %peek.2919, 34
  %or.cond909 = and i1 %or.cond751, %cmp717
  br i1 %or.cond909, label %cont721, label %cont742

cont721:                                          ; preds = %land.lhs.true711
  %200 = load i8** @bptr, align 4, !tbaa !3
  %arrayidx722 = getelementptr inbounds i8* %200, i32 -1
  %201 = load i8* %arrayidx722, align 1, !tbaa !1
  %cmp724 = icmp eq i8 %201, 125
  br i1 %cmp724, label %cont728, label %cont742

cont728:                                          ; preds = %cont721
  %arrayidx729 = getelementptr inbounds i8* %200, i32 -2
  %202 = load i8* %arrayidx729, align 1, !tbaa !1
  call void @__ioc_report_conversion(i32 1496, i32 97, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 155, i8 1) nounwind
  %cmp733 = icmp eq i8 %202, -101
  br i1 %cmp733, label %cont742, label %if.then735

if.then735:                                       ; preds = %cont728
  %203 = load i8** @bptr, align 4, !tbaa !3
  %incdec.ptr736 = getelementptr inbounds i8* %203, i32 -1
  store i8* %incdec.ptr736, i8** @bptr, align 4, !tbaa !3
  %204 = load i32* @len, align 4, !tbaa !0
  %205 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %204, i32 -1)
  %206 = extractvalue { i32, i1 } %205, 0
  %207 = extractvalue { i32, i1 } %205, 1
  br i1 %207, label %ioc_bb737, label %cont738

ioc_bb737:                                        ; preds = %if.then735
  %208 = sext i32 %204 to i64
  call void @__ioc_report_add_overflow(i32 1499, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %208, i64 -1, i8 13) nounwind
  br label %cont738

cont738:                                          ; preds = %if.then735, %ioc_bb737
  store i32 %206, i32* @len, align 4, !tbaa !0
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %209 = load void (i32)** @hungetc, align 4, !tbaa !3
  call void %209(i32 125) nounwind
  br label %cont742

cont742:                                          ; preds = %cont728, %land.lhs.true711, %if.else709, %while.end708, %cont738, %cont721
  %210 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %210, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.end160, %cont742, %cont440, %if.then235, %if.then48
  %retval.0 = phi i32 [ %peek.2919, %cont742 ], [ 36, %cont440 ], [ 34, %if.then235 ], [ 27, %if.then48 ], [ 6, %if.end160 ]
  ret i32 %retval.0
}

declare i8* @getkeystring(i8*, i32*, i32, i32*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @gotword() nounwind {
entry:
  %0 = load i32* @zlemetall, align 4, !tbaa !0
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  tail call void @__ioc_report_add_overflow(i32 1854, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  %5 = load i32* @inbufct, align 4, !tbaa !0
  %6 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2, i32 %5)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %9 = sext i32 %5 to i64
  %10 = sext i32 %2 to i64
  tail call void @__ioc_report_sub_overflow(i32 1854, i32 22, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %10, i64 %9, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %11 = load i32* @addedx, align 4, !tbaa !0
  %cmp = icmp eq i32 %11, 2
  %cond = zext i1 %cmp to i32
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %cond)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %cont2
  %15 = zext i1 %cmp to i64
  %16 = sext i32 %7 to i64
  tail call void @__ioc_report_add_overflow(i32 1854, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %16, i64 %15, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %cont2, %ioc_bb3
  store i32 %13, i32* @we, align 4, !tbaa !0
  %17 = load i32* @zlemetacs, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %17, %13
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %cont4
  %18 = load i32* @zlemetall, align 4, !tbaa !0
  %19 = load i32* @wordbeg, align 4, !tbaa !0
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %18, i32 %19)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %if.then
  %23 = sext i32 %19 to i64
  %24 = sext i32 %18 to i64
  tail call void @__ioc_report_sub_overflow(i32 1856, i32 20, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %24, i64 %23, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %if.then, %ioc_bb6
  %25 = load i32* @addedx, align 4, !tbaa !0
  %26 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 %25)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  %29 = sext i32 %25 to i64
  %30 = sext i32 %21 to i64
  tail call void @__ioc_report_add_overflow(i32 1856, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %30, i64 %29, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  store i32 %27, i32* @wb, align 4, !tbaa !0
  store i32 0, i32* @lexflags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cont4, %cont9
  ret void
}

declare void @spckword(i8**, i32, i32, i32)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @has_token(i8*)

declare i8* @strrchr(i8*, i32) nounwind readonly

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @hcalloc(i32)

define internal fastcc i32 @skipcomm() nounwind {
entry:
  tail call void @cmdpush(i32 24) nounwind
  %0 = load i32* @lexflags, align 4, !tbaa !0
  %and = and i32 %0, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %ioc_bb10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32* @inbufflags, align 4, !tbaa !0
  %and3 = and i32 %1, 2
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true5, label %ioc_bb10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load i32* @zlemetacs, align 4, !tbaa !0
  %3 = load i32* @zlemetall, align 4, !tbaa !0
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %land.lhs.true5
  %7 = sext i32 %3 to i64
  tail call void @__ioc_report_add_overflow(i32 1947, i32 79, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %land.lhs.true5, %ioc_bb6
  %8 = load i32* @inbufct, align 4, !tbaa !0
  %9 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %5, i32 %8)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %cont7
  %12 = sext i32 %8 to i64
  %13 = sext i32 %5 to i64
  tail call void @__ioc_report_sub_overflow(i32 1947, i32 83, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %cont7, %ioc_bb8
  %cmp = icmp slt i32 %2, %10
  br i1 %cmp, label %ioc_bb10, label %if.then

if.then:                                          ; preds = %cont9
  %14 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %14, i32* @parbegin, align 4, !tbaa !0
  br label %ioc_bb10

ioc_bb10:                                         ; preds = %if.then, %entry, %land.lhs.true, %cont9
  tail call void @__ioc_report_conversion(i32 1950, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 136, i8 1) nounwind
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %ioc_bb10
  %c.0 = phi i32 [ -120, %ioc_bb10 ], [ %c.2, %sw.epilog ]
  %start.0 = phi i32 [ 1, %ioc_bb10 ], [ %iswhite.0, %sw.epilog ]
  %pct.0 = phi i32 [ 1, %ioc_bb10 ], [ %pct.1, %sw.epilog ]
  tail call void @add(i32 %c.0)
  %15 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call = tail call i32 %15() nounwind
  %16 = sext i32 %call to i64
  %17 = icmp ult i32 %call, 256
  br i1 %17, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %do.body
  tail call void @__ioc_report_conversion(i32 1955, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %do.body
  %idxprom = and i32 %call, 255
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %18 = load i16* %arrayidx, align 2, !tbaa !5
  %and19 = and i16 %18, 16
  %tobool20 = icmp ne i16 %and19, 0
  %19 = load i32* @lexstop, align 4, !tbaa !0
  %tobool21 = icmp ne i32 %19, 0
  %or.cond = or i1 %tobool20, %tobool21
  br i1 %or.cond, label %do.end, label %if.end23

if.end23:                                         ; preds = %cont13
  br i1 %17, label %cont27, label %ioc_bb26

ioc_bb26:                                         ; preds = %if.end23
  tail call void @__ioc_report_conversion(i32 1957, i32 38, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %16, i8 1) nounwind
  %.pre = load i16* %arrayidx, align 2, !tbaa !5
  br label %cont27

cont27:                                           ; preds = %ioc_bb26, %if.end23
  %20 = phi i16 [ %.pre, %ioc_bb26 ], [ %18, %if.end23 ]
  %conv31168 = zext i16 %20 to i32
  %and36 = and i32 %conv31168, 8
  switch i32 %call, label %sw.epilog [
    i32 40, label %sw.bb
    i32 41, label %sw.bb39
    i32 92, label %sw.bb42
    i32 39, label %cont46
    i32 34, label %sw.bb66
    i32 96, label %sw.bb82
    i32 35, label %sw.bb99
  ]

sw.bb:                                            ; preds = %cont27
  %21 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb37, label %sw.epilog

ioc_bb37:                                         ; preds = %sw.bb
  %24 = sext i32 %pct.0 to i64
  tail call void @__ioc_report_add_overflow(i32 1961, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %sw.epilog

sw.bb39:                                          ; preds = %cont27
  %25 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pct.0, i32 -1)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb40, label %sw.epilog

ioc_bb40:                                         ; preds = %sw.bb39
  %28 = sext i32 %pct.0 to i64
  tail call void @__ioc_report_add_overflow(i32 1966, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %28, i64 -1, i8 13) nounwind
  br label %sw.epilog

sw.bb42:                                          ; preds = %cont27
  tail call void @add(i32 92)
  %29 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call43 = tail call i32 %29() nounwind
  br label %sw.epilog

cont46:                                           ; preds = %cont27
  %30 = load i8** @bptr, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i8* %30, i32 -1
  %31 = load i8* %arrayidx47, align 1, !tbaa !1
  tail call void @add(i32 39)
  %32 = load i32* @stophist, align 4, !tbaa !0
  %33 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 4)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb51, label %cont52

ioc_bb51:                                         ; preds = %cont46
  %36 = sext i32 %32 to i64
  tail call void @__ioc_report_add_overflow(i32 1979, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 %36, i64 4, i8 13) nounwind
  br label %cont52

cont52:                                           ; preds = %cont46, %ioc_bb51
  store i32 %34, i32* @stophist, align 4, !tbaa !0
  %37 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call53194 = tail call i32 %37() nounwind
  %cmp54195 = icmp ne i32 %call53194, 39
  %38 = load i32* @lexstop, align 4, !tbaa !0
  %lnot196 = icmp eq i32 %38, 0
  %or.cond169197 = and i1 %cmp54195, %lnot196
  br i1 %or.cond169197, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %cont52
  %cmp49.not = icmp ne i8 %31, 36
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end63
  %call53198 = phi i32 [ %call53194, %while.body.lr.ph ], [ %call53, %if.end63 ]
  %cmp57.not = icmp ne i32 %call53198, 92
  %brmerge = or i1 %cmp57.not, %cmp49.not
  br i1 %brmerge, label %if.end63, label %if.then61

if.then61:                                        ; preds = %while.body
  tail call void @add(i32 92)
  %39 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call62 = tail call i32 %39() nounwind
  br label %if.end63

if.end63:                                         ; preds = %while.body, %if.then61
  %c.1 = phi i32 [ %call62, %if.then61 ], [ %call53198, %while.body ]
  tail call void @add(i32 %c.1)
  %40 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call53 = tail call i32 %40() nounwind
  %cmp54 = icmp ne i32 %call53, 39
  %41 = load i32* @lexstop, align 4, !tbaa !0
  %lnot = icmp eq i32 %41, 0
  %or.cond169 = and i1 %cmp54, %lnot
  br i1 %or.cond169, label %while.body, label %while.end

while.end:                                        ; preds = %if.end63, %cont52
  %call53.lcssa = phi i32 [ %call53194, %cont52 ], [ %call53, %if.end63 ]
  %42 = load i32* @stophist, align 4, !tbaa !0
  %43 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %42, i32 4)
  %44 = extractvalue { i32, i1 } %43, 0
  %45 = extractvalue { i32, i1 } %43, 1
  br i1 %45, label %ioc_bb64, label %cont65

ioc_bb64:                                         ; preds = %while.end
  %46 = sext i32 %42 to i64
  tail call void @__ioc_report_sub_overflow(i32 1987, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %46, i64 4, i8 13) nounwind
  br label %cont65

cont65:                                           ; preds = %while.end, %ioc_bb64
  store i32 %44, i32* @stophist, align 4, !tbaa !0
  br label %sw.epilog

sw.bb66:                                          ; preds = %cont27
  tail call void @add(i32 34)
  %47 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call68188 = tail call i32 %47() nounwind
  %cmp69189 = icmp ne i32 %call68188, 34
  %48 = load i32* @lexstop, align 4, !tbaa !0
  %lnot73190 = icmp eq i32 %48, 0
  %or.cond170191 = and i1 %cmp69189, %lnot73190
  br i1 %or.cond170191, label %while.body75, label %sw.epilog

while.body75:                                     ; preds = %sw.bb66, %while.cond67.backedge
  %call68192 = phi i32 [ %call68, %while.cond67.backedge ], [ %call68188, %sw.bb66 ]
  %cmp76 = icmp eq i32 %call68192, 92
  tail call void @add(i32 %call68192)
  br i1 %cmp76, label %if.then78, label %while.cond67.backedge

while.cond67.backedge:                            ; preds = %while.body75, %if.then78
  %49 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call68 = tail call i32 %49() nounwind
  %cmp69 = icmp ne i32 %call68, 34
  %50 = load i32* @lexstop, align 4, !tbaa !0
  %lnot73 = icmp eq i32 %50, 0
  %or.cond170 = and i1 %cmp69, %lnot73
  br i1 %or.cond170, label %while.body75, label %sw.epilog

if.then78:                                        ; preds = %while.body75
  %51 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call79 = tail call i32 %51() nounwind
  tail call void @add(i32 %call79)
  br label %while.cond67.backedge

sw.bb82:                                          ; preds = %cont27
  tail call void @add(i32 96)
  %52 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call84181 = tail call i32 %52() nounwind
  %cmp85182 = icmp ne i32 %call84181, 96
  %53 = load i32* @lexstop, align 4, !tbaa !0
  %lnot89183 = icmp eq i32 %53, 0
  %or.cond171184 = and i1 %cmp85182, %lnot89183
  br i1 %or.cond171184, label %while.body91, label %sw.epilog

while.body91:                                     ; preds = %sw.bb82, %while.cond83.backedge
  %call84185 = phi i32 [ %call84, %while.cond83.backedge ], [ %call84181, %sw.bb82 ]
  %cmp92 = icmp eq i32 %call84185, 92
  tail call void @add(i32 %call84185)
  br i1 %cmp92, label %if.then94, label %while.cond83.backedge

while.cond83.backedge:                            ; preds = %while.body91, %if.then94
  %54 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call84 = tail call i32 %54() nounwind
  %cmp85 = icmp ne i32 %call84, 96
  %55 = load i32* @lexstop, align 4, !tbaa !0
  %lnot89 = icmp eq i32 %55, 0
  %or.cond171 = and i1 %cmp85, %lnot89
  br i1 %or.cond171, label %while.body91, label %sw.epilog

if.then94:                                        ; preds = %while.body91
  %56 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call95 = tail call i32 %56() nounwind
  tail call void @add(i32 %call95)
  br label %while.cond83.backedge

sw.bb99:                                          ; preds = %cont27
  %tobool100 = icmp eq i32 %start.0, 0
  br i1 %tobool100, label %sw.epilog, label %if.then101

if.then101:                                       ; preds = %sw.bb99
  tail call void @add(i32 35)
  %57 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call103175 = tail call i32 %57() nounwind
  %cmp104176 = icmp ne i32 %call103175, 10
  %58 = load i32* @lexstop, align 4, !tbaa !0
  %lnot108177 = icmp eq i32 %58, 0
  %or.cond172178 = and i1 %cmp104176, %lnot108177
  br i1 %or.cond172178, label %while.body110, label %sw.epilog

while.body110:                                    ; preds = %if.then101, %while.body110
  %call103179 = phi i32 [ %call103, %while.body110 ], [ %call103175, %if.then101 ]
  tail call void @add(i32 %call103179)
  %59 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call103 = tail call i32 %59() nounwind
  %cmp104 = icmp ne i32 %call103, 10
  %60 = load i32* @lexstop, align 4, !tbaa !0
  %lnot108 = icmp eq i32 %60, 0
  %or.cond172 = and i1 %cmp104, %lnot108
  br i1 %or.cond172, label %while.body110, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %while.cond67.backedge, %sw.bb82, %while.cond83.backedge, %if.then101, %while.body110, %ioc_bb40, %sw.bb39, %ioc_bb37, %sw.bb, %sw.bb99, %cont27, %cont65, %sw.bb42
  %c.2 = phi i32 [ %call, %cont27 ], [ 35, %sw.bb99 ], [ %call53.lcssa, %cont65 ], [ %call43, %sw.bb42 ], [ 40, %sw.bb ], [ 40, %ioc_bb37 ], [ 41, %sw.bb39 ], [ 41, %ioc_bb40 ], [ %call103175, %if.then101 ], [ %call103, %while.body110 ], [ %call84181, %sw.bb82 ], [ %call84, %while.cond83.backedge ], [ %call68188, %sw.bb66 ], [ %call68, %while.cond67.backedge ]
  %iswhite.0 = phi i32 [ %and36, %cont27 ], [ %and36, %sw.bb99 ], [ %and36, %cont65 ], [ %and36, %sw.bb42 ], [ %and36, %sw.bb ], [ %and36, %ioc_bb37 ], [ %and36, %sw.bb39 ], [ %and36, %ioc_bb40 ], [ 1, %if.then101 ], [ 1, %while.body110 ], [ %and36, %sw.bb82 ], [ %and36, %while.cond83.backedge ], [ %and36, %sw.bb66 ], [ %and36, %while.cond67.backedge ]
  %pct.1 = phi i32 [ %pct.0, %cont27 ], [ %pct.0, %sw.bb99 ], [ %pct.0, %cont65 ], [ %pct.0, %sw.bb42 ], [ %22, %sw.bb ], [ %22, %ioc_bb37 ], [ %26, %sw.bb39 ], [ %26, %ioc_bb40 ], [ %pct.0, %if.then101 ], [ %pct.0, %while.body110 ], [ %pct.0, %sw.bb82 ], [ %pct.0, %while.cond83.backedge ], [ %pct.0, %sw.bb66 ], [ %pct.0, %while.cond67.backedge ]
  %tobool113 = icmp eq i32 %pct.1, 0
  br i1 %tobool113, label %do.endthread-pre-split, label %do.body

do.endthread-pre-split:                           ; preds = %sw.epilog
  %.pr = load i32* @lexstop, align 4, !tbaa !0
  br label %do.end

do.end:                                           ; preds = %cont13, %do.endthread-pre-split
  %61 = phi i32 [ %.pr, %do.endthread-pre-split ], [ %19, %cont13 ]
  %tobool114 = icmp eq i32 %61, 0
  br i1 %tobool114, label %if.then115, label %if.end148

if.then115:                                       ; preds = %do.end
  %62 = load i32* @lexflags, align 4, !tbaa !0
  %and116 = and i32 %62, 2
  %tobool117 = icmp eq i32 %and116, 0
  br i1 %tobool117, label %if.end148, label %land.lhs.true118

land.lhs.true118:                                 ; preds = %if.then115
  %63 = load i32* @inbufflags, align 4, !tbaa !0
  %and123 = and i32 %63, 2
  %64 = load i32* @parbegin, align 4, !tbaa !0
  %notlhs = icmp eq i32 %and123, 0
  %notrhs = icmp ne i32 %64, -1
  %or.cond173.not = and i1 %notrhs, %notlhs
  %65 = load i32* @parend, align 4, !tbaa !0
  %cmp133 = icmp eq i32 %65, -1
  %or.cond174 = and i1 %or.cond173.not, %cmp133
  br i1 %or.cond174, label %if.then135, label %if.end148

if.then135:                                       ; preds = %land.lhs.true118
  %66 = load i32* @zlemetacs, align 4, !tbaa !0
  %67 = load i32* @zlemetall, align 4, !tbaa !0
  %68 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %67, i32 1)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb136, label %cont137

ioc_bb136:                                        ; preds = %if.then135
  %71 = sext i32 %67 to i64
  tail call void @__ioc_report_add_overflow(i32 2027, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %71, i64 1, i8 13) nounwind
  br label %cont137

cont137:                                          ; preds = %if.then135, %ioc_bb136
  %72 = load i32* @inbufct, align 4, !tbaa !0
  %73 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %69, i32 %72)
  %74 = extractvalue { i32, i1 } %73, 0
  %75 = extractvalue { i32, i1 } %73, 1
  br i1 %75, label %ioc_bb138, label %cont139

ioc_bb138:                                        ; preds = %cont137
  %76 = sext i32 %72 to i64
  %77 = sext i32 %69 to i64
  tail call void @__ioc_report_sub_overflow(i32 2027, i32 38, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %77, i64 %76, i8 13) nounwind
  br label %cont139

cont139:                                          ; preds = %cont137, %ioc_bb138
  %cmp140 = icmp slt i32 %66, %74
  br i1 %cmp140, label %if.else145, label %cont144

cont144:                                          ; preds = %cont139
  store i32 -1, i32* @parbegin, align 4, !tbaa !0
  br label %if.end148

if.else145:                                       ; preds = %cont139
  %78 = load i32* @inbufct, align 4, !tbaa !0
  store i32 %78, i32* @parend, align 4, !tbaa !0
  br label %if.end148

if.end148:                                        ; preds = %land.lhs.true118, %if.then115, %do.end, %if.else145, %cont144
  tail call void @cmdpop() nounwind
  %79 = load i32* @lexstop, align 4, !tbaa !0
  ret i32 %79
}

define internal fastcc i32 @isnumglob() nounwind {
entry:
  %call = tail call i8* @zalloc(i32 256) nounwind
  br label %while.body.outer

while.body.outer:                                 ; preds = %cont35, %entry
  %ec.0.ph = phi i32 [ 45, %entry ], [ %ec.1, %cont35 ]
  %tbs.0.ph = phi i32 [ 256, %entry ], [ %11, %cont35 ]
  %n.0.ph = phi i32 [ 0, %entry ], [ %tbs.0.ph, %cont35 ]
  %tbuf.0.ph = phi i8* [ %call, %entry ], [ %call36, %cont35 ]
  br label %while.body

while.body:                                       ; preds = %while.body.outer, %if.end27
  %ec.0 = phi i32 [ %ec.1, %if.end27 ], [ %ec.0.ph, %while.body.outer ]
  %n.0 = phi i32 [ %5, %if.end27 ], [ %n.0.ph, %while.body.outer ]
  %0 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call1 = tail call i32 %0() nounwind
  %1 = load i32* @lexstop, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %while.cond.preheader

if.end:                                           ; preds = %while.body
  %call1.off = add i32 %call1, 128
  %2 = sext i32 %call1 to i64
  %3 = icmp ult i32 %call1.off, 256
  br i1 %3, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %if.end
  tail call void @__ioc_report_conversion(i32 670, i32 17, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %if.end
  %conv = trunc i32 %call1 to i8
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.0, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %7 = sext i32 %n.0 to i64
  tail call void @__ioc_report_add_overflow(i32 670, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %arrayidx = getelementptr inbounds i8* %tbuf.0.ph, i32 %n.0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !1
  %8 = icmp ult i32 %call1, 256
  br i1 %8, label %cont10, label %ioc_bb9

ioc_bb9:                                          ; preds = %cont6
  tail call void @__ioc_report_conversion(i32 671, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont10

cont10:                                           ; preds = %ioc_bb9, %cont6
  %idxprom = and i32 %call1, 255
  %arrayidx12 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %9 = load i16* %arrayidx12, align 2, !tbaa !5
  %and = and i16 %9, 1
  %tobool18 = icmp eq i16 %and, 0
  br i1 %tobool18, label %if.then19, label %if.end27

if.then19:                                        ; preds = %cont10
  %cmp = icmp eq i32 %call1, %ec.0
  br i1 %cmp, label %if.end22, label %while.cond.preheader

if.end22:                                         ; preds = %if.then19
  %cmp23 = icmp eq i32 %ec.0, 62
  br i1 %cmp23, label %while.cond.preheader, label %if.end27

while.cond.preheader:                             ; preds = %if.then19, %if.end22, %if.then
  %ret.0.ph = phi i32 [ 0, %if.then ], [ 0, %if.then19 ], [ 1, %if.end22 ]
  %n.1.ph = phi i32 [ %n.0, %if.then ], [ %5, %if.then19 ], [ %5, %if.end22 ]
  br label %while.cond

if.end27:                                         ; preds = %if.end22, %cont10
  %ec.1 = phi i32 [ %ec.0, %cont10 ], [ 62, %if.end22 ]
  %cmp28 = icmp eq i32 %5, %tbs.0.ph
  br i1 %cmp28, label %if.then30, label %while.body

if.then30:                                        ; preds = %if.end27
  %10 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %tbs.0.ph, i32 2)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb31, label %cont32

ioc_bb31:                                         ; preds = %if.then30
  %13 = sext i32 %tbs.0.ph to i64
  tail call void @__ioc_report_mul_overflow(i32 681, i32 42, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %13, i64 2, i8 13) nounwind
  br label %cont32

cont32:                                           ; preds = %if.then30, %ioc_bb31
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %cont35, label %ioc_bb34

ioc_bb34:                                         ; preds = %cont32
  %15 = sext i32 %11 to i64
  tail call void @__ioc_report_conversion(i32 681, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %15, i8 1) nounwind
  br label %cont35

cont35:                                           ; preds = %ioc_bb34, %cont32
  %call36 = tail call i8* @realloc(i8* %tbuf.0.ph, i32 %11) nounwind
  br label %while.body.outer

while.cond:                                       ; preds = %while.cond.preheader, %while.body41
  %n.1 = phi i32 [ %17, %while.body41 ], [ %n.1.ph, %while.cond.preheader ]
  %16 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.1, i32 -1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb38, label %cont39

ioc_bb38:                                         ; preds = %while.cond
  %19 = sext i32 %n.1 to i64
  tail call void @__ioc_report_add_overflow(i32 683, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %19, i64 -1, i8 13) nounwind
  br label %cont39

cont39:                                           ; preds = %while.cond, %ioc_bb38
  %tobool40 = icmp eq i32 %n.1, 0
  br i1 %tobool40, label %while.end44, label %while.body41

while.body41:                                     ; preds = %cont39
  %20 = load void (i32)** @hungetc, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds i8* %tbuf.0.ph, i32 %17
  %21 = load i8* %arrayidx42, align 1, !tbaa !1
  %conv43 = sext i8 %21 to i32
  tail call void %20(i32 %conv43) nounwind
  br label %while.cond

while.end44:                                      ; preds = %cont39
  tail call void @zfree(i8* %tbuf.0.ph, i32 %tbs.0.ph) nounwind
  ret i32 %ret.0.ph
}

declare i8* @itype_end(i8*, i32, i32)

declare i32 @skipparens(i8 signext, i8 signext, i8**)

declare noalias i8* @realloc(i8* nocapture, i32) nounwind

define internal fastcc i32 @cmd_or_math_sub() nounwind {
entry:
  %0 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call = tail call i32 %0() nounwind
  %cmp = icmp eq i32 %call, 40
  br i1 %cmp, label %ioc_bb, label %if.else

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 634, i32 17, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 136, i8 1) nounwind
  tail call void @add(i32 -120)
  tail call void @add(i32 40)
  %call1 = tail call fastcc i32 @cmd_or_math(i32 25)
  switch i32 %call1, label %if.end6 [
    i32 1, label %if.then3
    i32 2, label %return
  ]

if.then3:                                         ; preds = %ioc_bb
  tail call void @add(i32 41)
  br label %return

if.end6:                                          ; preds = %ioc_bb
  %1 = load i8** @bptr, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %1, i32 -2
  store i8* %add.ptr, i8** @bptr, align 4, !tbaa !3
  %2 = load i32* @len, align 4, !tbaa !0
  %3 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %2, i32 2)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %if.end6
  %6 = sext i32 %2 to i64
  tail call void @__ioc_report_sub_overflow(i32 643, i32 9, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %6, i64 2, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %if.end6, %ioc_bb7
  store i32 %4, i32* @len, align 4, !tbaa !0
  br label %if.end9

if.else:                                          ; preds = %entry
  %7 = load void (i32)** @hungetc, align 4, !tbaa !3
  tail call void %7(i32 %call) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.else, %cont8
  %call10 = tail call fastcc i32 @skipcomm()
  br label %return

return:                                           ; preds = %ioc_bb, %if.end9, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call10, %if.end9 ], [ 1, %ioc_bb ]
  ret i32 %retval.0
}

define internal fastcc i32 @cmd_or_math(i32 %cs_type) nounwind {
entry:
  %0 = load i32* @len, align 4, !tbaa !0
  tail call void @cmdpush(i32 %cs_type) nounwind
  %call = tail call fastcc i32 @dquote_parse(i8 signext 41, i32 0)
  tail call void @cmdpop() nounwind
  %1 = load i8** @bptr, align 4, !tbaa !3
  store i8 0, i8* %1, align 1, !tbaa !1
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32 ()** @hgetc, align 4, !tbaa !3
  %call3 = tail call i32 %2() nounwind
  %cmp = icmp eq i32 %call3, 41
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load void (i32)** @hungetc, align 4, !tbaa !3
  tail call void %3(i32 %call3) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load i32* @lexstop, align 4, !tbaa !0
  %tobool5 = icmp eq i32 %4, 0
  br i1 %tobool5, label %if.end8, label %return

if.end8:                                          ; preds = %if.else, %if.end
  %c.0 = phi i32 [ %call, %if.else ], [ 41, %if.end ]
  %5 = load void (i32)** @hungetc, align 4, !tbaa !3
  tail call void %5(i32 %c.0) nounwind
  store i32 0, i32* @lexstop, align 4, !tbaa !0
  %6 = load i32* @len, align 4, !tbaa !0
  %cmp931 = icmp sgt i32 %6, %0
  br i1 %cmp931, label %while.body, label %while.end

while.body:                                       ; preds = %if.end8, %cond.end
  %7 = phi i32 [ %24, %cond.end ], [ %6, %if.end8 ]
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 -1)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %while.body
  %11 = sext i32 %7 to i64
  tail call void @__ioc_report_add_overflow(i32 618, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %11, i64 -1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %while.body, %ioc_bb10
  store i32 %9, i32* @len, align 4, !tbaa !0
  %12 = load void (i32)** @hungetc, align 4, !tbaa !3
  %13 = load i8** @bptr, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %13, i32 -1
  store i8* %incdec.ptr, i8** @bptr, align 4, !tbaa !3
  %14 = load i8* %incdec.ptr, align 1, !tbaa !1
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %cont11
  %16 = sext i8 %14 to i64
  tail call void @__ioc_report_conversion(i32 619, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @11, i32 0, i32 0), i64 %16, i8 1) nounwind
  %.pre = load i8** @bptr, align 4, !tbaa !3
  %.pre32 = load i8* %.pre, align 1, !tbaa !1
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %cont11
  %17 = phi i8 [ %.pre32, %ioc_bb12 ], [ %14, %cont11 ]
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %18 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %18, 16
  %tobool18 = icmp eq i16 %and, 0
  %conv19 = sext i8 %17 to i32
  br i1 %tobool18, label %cond.end, label %ioc_bb20

ioc_bb20:                                         ; preds = %cont13
  tail call void @__ioc_report_conversion(i32 619, i32 87, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i64 132, i8 1) nounwind
  %19 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv19, i32 -124)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb22, label %cont23

ioc_bb22:                                         ; preds = %ioc_bb20
  %22 = sext i8 %17 to i64
  tail call void @__ioc_report_sub_overflow(i32 619, i32 77, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %22, i64 -124, i8 13) nounwind
  br label %cont23

cont23:                                           ; preds = %ioc_bb20, %ioc_bb22
  %arrayidx24 = getelementptr inbounds [26 x i8]* @ztokens, i32 0, i32 %20
  %23 = load i8* %arrayidx24, align 1, !tbaa !1
  %conv25 = sext i8 %23 to i32
  br label %cond.end

cond.end:                                         ; preds = %cont13, %cont23
  %cond = phi i32 [ %conv25, %cont23 ], [ %conv19, %cont13 ]
  tail call void %12(i32 %cond) nounwind
  %24 = load i32* @len, align 4, !tbaa !0
  %cmp9 = icmp sgt i32 %24, %0
  br i1 %cmp9, label %while.body, label %while.end

while.end:                                        ; preds = %cond.end, %if.end8
  %25 = load void (i32)** @hungetc, align 4, !tbaa !3
  tail call void %25(i32 40) nounwind
  br label %return

return:                                           ; preds = %if.else, %if.then, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 1, %if.then ], [ 2, %if.else ]
  ret i32 %retval.0
}

declare i32 @ingetc()

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
