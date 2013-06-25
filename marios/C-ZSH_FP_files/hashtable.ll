; ModuleID = '../../src/Src/hashtable.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.hashtable = type { i32, i32, %struct.hashnode**, i8*, i32 (i8*)*, void (%struct.hashtable*)*, void (%struct.hashtable*)*, i32 (i8*, i8*)*, void (%struct.hashtable*, i8*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, %struct.hashnode* (%struct.hashtable*, i8*)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*, i32)*, void (%struct.hashnode*)*, void (%struct.hashnode*, i32)*, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)*, %struct.scanstatus* }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%struct.scanstatus = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.hashnode**, i32 }
%struct.reswd = type { %struct.hashnode, i32 }
%struct.histent = type { %struct.hashnode, %struct.histent*, %struct.histent*, i8*, i32, i32, i16*, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.__dirstream = type opaque
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.alias = type { %struct.hashnode, i8*, i32 }

@cmdnamtab = common global %struct.hashtable* null, align 4
@path = external global i8**
@pathchecked = common global i8** null, align 4
@0 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@opts = external global [169 x i8]
@shfunctab = common global %struct.hashtable* null, align 4
@reswdtab = common global %struct.hashtable* null, align 4
@reswds = internal global [25 x %struct.reswd] [%struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str29, i32 0, i32 0), i32 0 }, i32 39 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), i32 0 }, i32 40 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0), i32 0 }, i32 41 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([2 x i8]* @.str32, i32 0, i32 0), i32 0 }, i32 42 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str33, i32 0, i32 0), i32 0 }, i32 43 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i32 0 }, i32 44 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i32 0 }, i32 45 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i32 0 }, i32 46 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i32 0 }, i32 47 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), i32 0 }, i32 48 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0), i32 0 }, i32 49 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), i32 0 }, i32 50 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8]* @.str41, i32 0, i32 0), i32 0 }, i32 51 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0), i32 0 }, i32 52 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i32 0 }, i32 53 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0), i32 0 }, i32 54 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0), i32 0 }, i32 55 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([10 x i8]* @.str46, i32 0, i32 0), i32 0 }, i32 56 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str47, i32 0, i32 0), i32 0 }, i32 57 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([7 x i8]* @.str48, i32 0, i32 0), i32 0 }, i32 58 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str49, i32 0, i32 0), i32 0 }, i32 59 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0), i32 0 }, i32 60 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i32 0 }, i32 61 }, %struct.reswd { %struct.hashnode { %struct.hashnode* null, i8* getelementptr inbounds ([6 x i8]* @.str52, i32 0, i32 0), i32 0 }, i32 62 }, %struct.reswd zeroinitializer], align 4
@aliastab = common global %struct.hashtable* null, align 4
@.str5 = private unnamed_addr constant [9 x i8] c"run-help\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"which-command\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"whence\00", align 1
@sufaliastab = common global %struct.hashtable* null, align 4
@histtab = external global %struct.hashtable*
@typtab = external global [256 x i16]
@1 = internal unnamed_addr constant [2 x i8] c"+\00"
@2 = internal unnamed_addr constant [3 x i8] c"+=\00"
@hist_ring = external global %struct.histent*
@3 = internal unnamed_addr constant [5 x i8] c"char\00"
@4 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@5 = internal unnamed_addr constant [2 x i8] c"-\00"
@hist_ignore_all_dups = external global i32
@histlinect = external global i64
@6 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@stdout = external global %struct._IO_FILE*
@.str11 = private unnamed_addr constant [11 x i8] c"%s: alias\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"suffix \00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"globally \00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"aliased to \00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c" is a\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c" suffix\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c" global\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c" alias for \00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"alias \00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"-s \00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"-g \00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"%s: reserved\0A\00", align 1
@.str26 = private unnamed_addr constant [25 x i8] c"%s: shell reserved word\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"%s is a reserved word\0A\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"[[\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"coproc\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"esac\00", align 1
@.str41 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str46 = private unnamed_addr constant [10 x i8] c"nocorrect\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str52 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str53 = private unnamed_addr constant [12 x i8] c": function\0A\00", align 1
@.str54 = private unnamed_addr constant [22 x i8] c" is a shell function\0A\00", align 1
@.str55 = private unnamed_addr constant [8 x i8] c" () {\0A\09\00", align 1
@.str56 = private unnamed_addr constant [15 x i8] c"%c undefined\0A\09\00", align 1
@hashchar = external global i8
@.str57 = private unnamed_addr constant [12 x i8] c"%c traced\0A\09\00", align 1
@.str58 = private unnamed_addr constant [5 x i8] c"Utkz\00", align 1
@printshfuncnode.flgs = private unnamed_addr constant [5 x i32] [i32 8192, i32 2048, i32 131072, i32 262144, i32 0], align 4
@.str59 = private unnamed_addr constant [20 x i8] c"builtin autoload -X\00", align 1
@.str60 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str61 = private unnamed_addr constant [6 x i8] c" \22$@\22\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"TRAP\00", align 1
@sigtrapped = external global [34 x i32]
@.str65 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str66 = private unnamed_addr constant [7 x i8] c"hashed\00", align 1
@.str67 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str68 = private unnamed_addr constant [15 x i8] c" is hashed to \00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str70 = private unnamed_addr constant [6 x i8] c"hash \00", align 1
@7 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@8 = internal unnamed_addr constant [2 x i8] c"*\00"
@9 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@10 = internal unnamed_addr constant [4 x i8] c"int\00"
@11 = internal unnamed_addr constant [26 x i8] c"../../src/Src/hashtable.c\00"
@str = private unnamed_addr constant [3 x i8] c"\0A}\00"
@str71 = private unnamed_addr constant [8 x i8] c" () { }\00"

define i32 @hasher(i8* nocapture %str) nounwind {
entry:
  %0 = load i8* %str, align 1, !tbaa !0
  %tobool9 = icmp eq i8 %0, 0
  br i1 %tobool9, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %1 = phi i8 [ %11, %while.cond.backedge ], [ %0, %entry ]
  %str.pn = phi i8* [ %incdec.ptr11, %while.cond.backedge ], [ %str, %entry ]
  %hashval.010 = phi i32 [ %9, %while.cond.backedge ], [ 0, %entry ]
  %incdec.ptr11 = getelementptr inbounds i8* %str.pn, i32 1
  %conv = zext i8 %1 to i32
  %2 = zext i32 %hashval.010 to i64
  %shl = shl i32 %hashval.010, 5
  %3 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %shl, i32 %conv)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %while.body
  %6 = zext i8 %1 to i64
  %7 = zext i32 %shl to i64
  tail call void @__ioc_report_add_overflow(i32 76, i32 31, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %7, i64 %6, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %while.body, %ioc_bb3
  %8 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %hashval.010, i32 %4)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb5, label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont4, %ioc_bb5
  %11 = load i8* %incdec.ptr11, align 1, !tbaa !0
  %tobool = icmp eq i8 %11, 0
  br i1 %tobool, label %while.end, label %while.body

ioc_bb5:                                          ; preds = %cont4
  %12 = zext i32 %4 to i64
  tail call void @__ioc_report_add_overflow(i32 76, i32 13, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %2, i64 %12, i8 5) nounwind
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  %hashval.0.lcssa = phi i32 [ 0, %entry ], [ %9, %while.cond.backedge ]
  ret i32 %hashval.0.lcssa
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define %struct.hashtable* @newhashtable(i32 %size, i8* nocapture %name, void (%struct.hashtable*)* nocapture %printinfo) nounwind {
entry:
  %call = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call to %struct.hashtable*
  %1 = icmp sgt i32 %size, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %size to i64
  tail call void @__ioc_report_conversion(i32 88, i32 41, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 4)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %6 = zext i32 %size to i64
  tail call void @__ioc_report_mul_overflow(i32 88, i32 46, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %6, i64 4, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %call3 = tail call i8* @zshcalloc(i32 %4) nounwind
  %7 = bitcast i8* %call3 to %struct.hashnode**
  %nodes = getelementptr inbounds i8* %call, i32 8
  %8 = bitcast i8* %nodes to %struct.hashnode***
  store %struct.hashnode** %7, %struct.hashnode*** %8, align 4, !tbaa !2
  %hsize = bitcast i8* %call to i32*
  store i32 %size, i32* %hsize, align 4, !tbaa !3
  %ct = getelementptr inbounds i8* %call, i32 4
  %9 = bitcast i8* %ct to i32*
  store i32 0, i32* %9, align 4, !tbaa !3
  %scan = getelementptr inbounds i8* %call, i32 68
  %10 = bitcast i8* %scan to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %10, align 4, !tbaa !2
  %scantab = getelementptr inbounds i8* %call, i32 64
  %11 = bitcast i8* %scantab to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %11, align 4, !tbaa !2
  ret %struct.hashtable* %0
}

declare i8* @zshcalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @deletehashtable(%struct.hashtable* %ht) nounwind {
entry:
  %emptytable = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 5
  %0 = load void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  tail call void %0(%struct.hashtable* %ht) nounwind
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %1 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %2 = bitcast %struct.hashnode** %1 to i8*
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %3 = load i32* %hsize, align 4, !tbaa !3
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %3 to i64
  tail call void @__ioc_report_conversion(i32 104, i32 24, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %9 = zext i32 %3 to i64
  tail call void @__ioc_report_mul_overflow(i32 104, i32 38, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %9, i64 4, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont2
  %11 = zext i32 %7 to i64
  tail call void @__ioc_report_conversion(i32 104, i32 23, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %11, i8 0) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %cont2
  tail call void @zfree(i8* %2, i32 %7) nounwind
  %12 = bitcast %struct.hashtable* %ht to i8*
  tail call void @zfree(i8* %12, i32 72) nounwind
  ret void
}

declare void @zfree(i8*, i32)

define void @addhashnode(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) nounwind {
entry:
  %call = tail call %struct.hashnode* @addhashnode2(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr)
  %tobool = icmp eq %struct.hashnode* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %freenode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 14
  %0 = load void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  tail call void %0(%struct.hashnode* %call) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

define %struct.hashnode* @addhashnode2(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) nounwind {
entry:
  %0 = bitcast i8* %nodeptr to %struct.hashnode*
  %nam1 = getelementptr inbounds i8* %nodeptr, i32 4
  %1 = bitcast i8* %nam1 to i8**
  store i8* %nam, i8** %1, align 4, !tbaa !2
  %hash = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 4
  %2 = load i32 (i8*)** %hash, align 4, !tbaa !2
  %call = tail call i32 %2(i8* %nam) nounwind
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %3 = load i32* %hsize, align 4, !tbaa !3
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %5 = sext i32 %3 to i64
  tail call void @__ioc_report_conversion(i32 133, i32 43, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont3

cont:                                             ; preds = %entry
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %trap, label %cont3

trap:                                             ; preds = %cont
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3:                                            ; preds = %cont.thread, %cont
  %rem = urem i32 %call, %3
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %7 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.hashnode** %7, i32 %rem
  %8 = load %struct.hashnode** %arrayidx, align 4, !tbaa !2
  %tobool = icmp eq %struct.hashnode* %8, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %cont3
  %next = bitcast i8* %nodeptr to %struct.hashnode**
  store %struct.hashnode* null, %struct.hashnode** %next, align 4, !tbaa !2
  %9 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx5 = getelementptr inbounds %struct.hashnode** %9, i32 %rem
  store %struct.hashnode* %0, %struct.hashnode** %arrayidx5, align 4, !tbaa !2
  %ct = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  %10 = load i32* %ct, align 4, !tbaa !3
  %11 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb6, label %cont7

ioc_bb6:                                          ; preds = %if.then
  %14 = sext i32 %10 to i64
  tail call void @__ioc_report_add_overflow(i32 139, i32 9, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %cont7

cont7:                                            ; preds = %if.then, %ioc_bb6
  store i32 %12, i32* %ct, align 4, !tbaa !3
  %15 = load i32* %hsize, align 4, !tbaa !3
  %16 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %15, i32 2)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont7
  %19 = sext i32 %15 to i64
  tail call void @__ioc_report_mul_overflow(i32 139, i32 35, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %19, i64 2, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %cont7, %ioc_bb9
  %cmp = icmp slt i32 %12, %17
  br i1 %cmp, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %cont10
  %scan = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  %20 = load %struct.scanstatus** %scan, align 4, !tbaa !2
  %tobool11 = icmp eq %struct.scanstatus* %20, null
  br i1 %tobool11, label %if.then12, label %return

if.then12:                                        ; preds = %land.lhs.true
  tail call fastcc void @expandhashtable(%struct.hashtable* %ht)
  br label %return

if.end13:                                         ; preds = %cont3
  %cmpnodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 7
  %21 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam14 = getelementptr inbounds %struct.hashnode* %8, i32 0, i32 1
  %22 = load i8** %nam14, align 4, !tbaa !2
  %23 = load i8** %1, align 4, !tbaa !2
  %call16 = tail call i32 %21(i8* %22, i8* %23) nounwind
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %for.cond56

if.then18:                                        ; preds = %if.end13
  %24 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx20 = getelementptr inbounds %struct.hashnode** %24, i32 %rem
  store %struct.hashnode* %0, %struct.hashnode** %arrayidx20, align 4, !tbaa !2
  br label %replacing

replacing:                                        ; preds = %if.then64, %if.then18
  %hp.0 = phi %struct.hashnode* [ %8, %if.then18 ], [ %hp.1, %if.then64 ]
  %next21 = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 0
  %25 = load %struct.hashnode** %next21, align 4, !tbaa !2
  %next22 = bitcast i8* %nodeptr to %struct.hashnode**
  store %struct.hashnode* %25, %struct.hashnode** %next22, align 4, !tbaa !2
  %scan23 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  %26 = load %struct.scanstatus** %scan23, align 4, !tbaa !2
  %tobool24 = icmp eq %struct.scanstatus* %26, null
  br i1 %tobool24, label %return, label %if.then25

if.then25:                                        ; preds = %replacing
  %sorted = getelementptr inbounds %struct.scanstatus* %26, i32 0, i32 0
  %27 = load i32* %sorted, align 4, !tbaa !3
  %tobool27 = icmp eq i32 %27, 0
  %u = getelementptr inbounds %struct.scanstatus* %26, i32 0, i32 1
  br i1 %tobool27, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then25
  %hashtab30 = getelementptr inbounds %union.anon* %u, i32 0, i32 0, i32 0
  %28 = load %struct.hashnode*** %hashtab30, align 4, !tbaa !2
  %ct34 = getelementptr inbounds %struct.scanstatus* %26, i32 0, i32 1, i32 0, i32 1
  %29 = load i32* %ct34, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then40, %if.then28
  %i.0 = phi i32 [ %29, %if.then28 ], [ %31, %if.then40 ], [ %31, %for.body ]
  %30 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb35, label %cont36

ioc_bb35:                                         ; preds = %for.cond
  %33 = sext i32 %i.0 to i64
  tail call void @__ioc_report_add_overflow(i32 152, i32 41, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %33, i64 -1, i8 13) nounwind
  br label %cont36

cont36:                                           ; preds = %for.cond, %ioc_bb35
  %tobool37 = icmp eq i32 %i.0, 0
  br i1 %tobool37, label %return, label %for.body

for.body:                                         ; preds = %cont36
  %arrayidx38 = getelementptr inbounds %struct.hashnode** %28, i32 %31
  %34 = load %struct.hashnode** %arrayidx38, align 4, !tbaa !2
  %cmp39 = icmp eq %struct.hashnode* %34, %hp.0
  br i1 %cmp39, label %if.then40, label %for.cond

if.then40:                                        ; preds = %for.body
  store %struct.hashnode* %0, %struct.hashnode** %arrayidx38, align 4, !tbaa !2
  br label %for.cond

if.else:                                          ; preds = %if.then25
  %u45 = bitcast %union.anon* %u to %struct.hashnode**
  %35 = load %struct.hashnode** %u45, align 4, !tbaa !2
  %cmp46 = icmp eq %struct.hashnode* %35, %hp.0
  br i1 %cmp46, label %if.then47, label %return

if.then47:                                        ; preds = %if.else
  %36 = getelementptr inbounds %union.anon* %u, i32 0, i32 0, i32 0
  store %struct.hashnode** %next22, %struct.hashnode*** %36, align 4, !tbaa !2
  br label %return

for.cond56:                                       ; preds = %if.end13, %for.body58
  %.pn = phi %struct.hashnode* [ %hp.1, %for.body58 ], [ %8, %if.end13 ]
  %hp.1.in = getelementptr inbounds %struct.hashnode* %.pn, i32 0, i32 0
  %hp.1 = load %struct.hashnode** %hp.1.in, align 4
  %tobool57 = icmp eq %struct.hashnode* %hp.1, null
  br i1 %tobool57, label %for.end68, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %37 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam60 = getelementptr inbounds %struct.hashnode* %hp.1, i32 0, i32 1
  %38 = load i8** %nam60, align 4, !tbaa !2
  %39 = load i8** %1, align 4, !tbaa !2
  %call62 = tail call i32 %37(i8* %38, i8* %39) nounwind
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %for.cond56

if.then64:                                        ; preds = %for.body58
  store %struct.hashnode* %0, %struct.hashnode** %hp.1.in, align 4, !tbaa !2
  br label %replacing

for.end68:                                        ; preds = %for.cond56
  %40 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx70 = getelementptr inbounds %struct.hashnode** %40, i32 %rem
  %41 = load %struct.hashnode** %arrayidx70, align 4, !tbaa !2
  %next71 = bitcast i8* %nodeptr to %struct.hashnode**
  store %struct.hashnode* %41, %struct.hashnode** %next71, align 4, !tbaa !2
  %42 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx73 = getelementptr inbounds %struct.hashnode** %42, i32 %rem
  store %struct.hashnode* %0, %struct.hashnode** %arrayidx73, align 4, !tbaa !2
  %ct74 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  %43 = load i32* %ct74, align 4, !tbaa !3
  %44 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %43, i32 1)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb75, label %cont76

ioc_bb75:                                         ; preds = %for.end68
  %47 = sext i32 %43 to i64
  tail call void @__ioc_report_add_overflow(i32 173, i32 7, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %47, i64 1, i8 13) nounwind
  br label %cont76

cont76:                                           ; preds = %for.end68, %ioc_bb75
  store i32 %45, i32* %ct74, align 4, !tbaa !3
  %48 = load i32* %hsize, align 4, !tbaa !3
  %49 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %48, i32 2)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb78, label %cont79

ioc_bb78:                                         ; preds = %cont76
  %52 = sext i32 %48 to i64
  tail call void @__ioc_report_mul_overflow(i32 173, i32 33, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %52, i64 2, i8 13) nounwind
  br label %cont79

cont79:                                           ; preds = %cont76, %ioc_bb78
  %cmp80 = icmp slt i32 %45, %50
  br i1 %cmp80, label %return, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %cont79
  %scan82 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  %53 = load %struct.scanstatus** %scan82, align 4, !tbaa !2
  %tobool83 = icmp eq %struct.scanstatus* %53, null
  br i1 %tobool83, label %if.then84, label %return

if.then84:                                        ; preds = %land.lhs.true81
  tail call fastcc void @expandhashtable(%struct.hashtable* %ht)
  br label %return

return:                                           ; preds = %cont36, %if.then84, %cont79, %land.lhs.true81, %if.else, %if.then47, %replacing, %if.then12, %cont10, %land.lhs.true
  %retval.0 = phi %struct.hashnode* [ null, %land.lhs.true ], [ null, %cont10 ], [ null, %if.then12 ], [ %hp.0, %replacing ], [ %hp.0, %if.then47 ], [ %hp.0, %if.else ], [ null, %land.lhs.true81 ], [ null, %cont79 ], [ null, %if.then84 ], [ %hp.0, %cont36 ]
  ret %struct.hashnode* %retval.0
}

declare void @llvm.trap() noreturn nounwind

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

define internal fastcc void @expandhashtable(%struct.hashtable* %ht) nounwind {
entry:
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %0 = load i32* %hsize, align 4, !tbaa !3
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %1 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %2 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 4)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  %5 = sext i32 %0 to i64
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_mul_overflow(i32 388, i32 23, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %5, i64 4, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %3, i32* %hsize, align 4, !tbaa !3
  %6 = icmp sgt i32 %3, -1
  br i1 %6, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %cont
  %7 = sext i32 %3 to i64
  tail call void @__ioc_report_conversion(i32 389, i32 41, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %7, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %cont
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %11 = zext i32 %3 to i64
  tail call void @__ioc_report_mul_overflow(i32 389, i32 55, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %11, i64 4, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %call = tail call i8* @zshcalloc(i32 %9) nounwind
  %12 = bitcast i8* %call to %struct.hashnode**
  store %struct.hashnode** %12, %struct.hashnode*** %nodes, align 4, !tbaa !2
  %ct = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  store i32 0, i32* %ct, align 4, !tbaa !3
  %cmp37 = icmp sgt i32 %0, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.end12

for.body.lr.ph:                                   ; preds = %cont6
  %addnode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cont11
  %ha.039 = phi %struct.hashnode** [ %1, %for.body.lr.ph ], [ %incdec.ptr, %cont11 ]
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %19, %cont11 ]
  %13 = load %struct.hashnode** %ha.039, align 4, !tbaa !2
  %tobool35 = icmp eq %struct.hashnode* %13, null
  br i1 %tobool35, label %for.inc, label %for.body9

for.body9:                                        ; preds = %for.body, %for.body9
  %hn.036 = phi %struct.hashnode* [ %14, %for.body9 ], [ %13, %for.body ]
  %next = getelementptr inbounds %struct.hashnode* %hn.036, i32 0, i32 0
  %14 = load %struct.hashnode** %next, align 4, !tbaa !2
  %15 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %nam = getelementptr inbounds %struct.hashnode* %hn.036, i32 0, i32 1
  %16 = load i8** %nam, align 4, !tbaa !2
  %17 = bitcast %struct.hashnode* %hn.036 to i8*
  tail call void %15(%struct.hashtable* %ht, i8* %16, i8* %17) nounwind
  %tobool = icmp eq %struct.hashnode* %14, null
  br i1 %tobool, label %for.inc, label %for.body9

for.inc:                                          ; preds = %for.body9, %for.body
  %18 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.038, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb10, label %cont11

ioc_bb10:                                         ; preds = %for.inc
  %21 = sext i32 %i.038 to i64
  tail call void @__ioc_report_add_overflow(i32 393, i32 44, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont11

cont11:                                           ; preds = %for.inc, %ioc_bb10
  %incdec.ptr = getelementptr inbounds %struct.hashnode** %ha.039, i32 1
  %cmp = icmp slt i32 %19, %0
  br i1 %cmp, label %for.body, label %for.end12

for.end12:                                        ; preds = %cont11, %cont6
  %22 = bitcast %struct.hashnode** %1 to i8*
  %23 = icmp sgt i32 %0, -1
  br i1 %23, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %for.end12
  tail call void @__ioc_report_conversion(i32 400, i32 17, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %5, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %for.end12
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4)
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %26 = zext i32 %0 to i64
  tail call void @__ioc_report_mul_overflow(i32 400, i32 23, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %26, i64 4, i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  br i1 %6, label %cont19, label %ioc_bb18

ioc_bb18:                                         ; preds = %cont17
  %27 = zext i32 %3 to i64
  tail call void @__ioc_report_conversion(i32 400, i32 16, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %27, i8 0) nounwind
  br label %cont19

cont19:                                           ; preds = %ioc_bb18, %cont17
  tail call void @zfree(i8* %22, i32 %3) nounwind
  ret void
}

define %struct.hashnode* @gethashnode(%struct.hashtable* nocapture %ht, i8* %nam) nounwind {
entry:
  %hash = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 4
  %0 = load i32 (i8*)** %hash, align 4, !tbaa !2
  %call = tail call i32 %0(i8* %nam) nounwind
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %1 = load i32* %hsize, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %3 = sext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 187, i32 35, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont1

cont:                                             ; preds = %entry
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %trap, label %cont1

trap:                                             ; preds = %cont
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont1:                                            ; preds = %cont.thread, %cont
  %rem = urem i32 %call, %1
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %5 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.hashnode** %5, i32 %rem
  %cmpnodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cont1
  %hp.0.in = phi %struct.hashnode** [ %arrayidx, %cont1 ], [ %next, %for.body ]
  %hp.0 = load %struct.hashnode** %hp.0.in, align 4
  %tobool = icmp eq %struct.hashnode* %hp.0, null
  br i1 %tobool, label %return, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam2 = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 1
  %7 = load i8** %nam2, align 4, !tbaa !2
  %call3 = tail call i32 %6(i8* %7, i8* %nam) nounwind
  %cmp = icmp eq i32 %call3, 0
  %next = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 2
  %8 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %8, 1
  %tobool8 = icmp eq i32 %and, 0
  %hp.0. = select i1 %tobool8, %struct.hashnode* %hp.0, %struct.hashnode* null
  ret %struct.hashnode* %hp.0.

return:                                           ; preds = %for.cond
  ret %struct.hashnode* null
}

define %struct.hashnode* @gethashnode2(%struct.hashtable* nocapture %ht, i8* %nam) nounwind {
entry:
  %hash = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 4
  %0 = load i32 (i8*)** %hash, align 4, !tbaa !2
  %call = tail call i32 %0(i8* %nam) nounwind
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %1 = load i32* %hsize, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %3 = sext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 208, i32 35, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont1

cont:                                             ; preds = %entry
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %trap, label %cont1

trap:                                             ; preds = %cont
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont1:                                            ; preds = %cont.thread, %cont
  %rem = urem i32 %call, %1
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %5 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.hashnode** %5, i32 %rem
  %cmpnodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cont1
  %hp.0.in = phi %struct.hashnode** [ %arrayidx, %cont1 ], [ %next, %for.body ]
  %hp.0 = load %struct.hashnode** %hp.0.in, align 4
  %tobool = icmp eq %struct.hashnode* %hp.0, null
  br i1 %tobool, label %return, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam2 = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 1
  %7 = load i8** %nam2, align 4, !tbaa !2
  %call3 = tail call i32 %6(i8* %7, i8* %nam) nounwind
  %cmp = icmp eq i32 %call3, 0
  %next = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 0
  br i1 %cmp, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi %struct.hashnode* [ %hp.0, %for.body ], [ null, %for.cond ]
  ret %struct.hashnode* %retval.0
}

define %struct.hashnode* @removehashnode(%struct.hashtable* nocapture %ht, i8* %nam) nounwind {
entry:
  %hash = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 4
  %0 = load i32 (i8*)** %hash, align 4, !tbaa !2
  %call = tail call i32 %0(i8* %nam) nounwind
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %1 = load i32* %hsize, align 4, !tbaa !3
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %3 = sext i32 %1 to i64
  tail call void @__ioc_report_conversion(i32 226, i32 35, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont1

cont:                                             ; preds = %entry
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %trap, label %cont1

trap:                                             ; preds = %cont
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont1:                                            ; preds = %cont.thread, %cont
  %rem = urem i32 %call, %1
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %5 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.hashnode** %5, i32 %rem
  %6 = load %struct.hashnode** %arrayidx, align 4, !tbaa !2
  %tobool = icmp eq %struct.hashnode* %6, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %cont1
  %cmpnodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 7
  %7 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam2 = getelementptr inbounds %struct.hashnode* %6, i32 0, i32 1
  %8 = load i8** %nam2, align 4, !tbaa !2
  %call3 = tail call i32 %7(i8* %8, i8* %nam) nounwind
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %for.cond42

if.then4:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.hashnode* %6, i32 0, i32 0
  %9 = load %struct.hashnode** %next, align 4, !tbaa !2
  %10 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx6 = getelementptr inbounds %struct.hashnode** %10, i32 %rem
  store %struct.hashnode* %9, %struct.hashnode** %arrayidx6, align 4, !tbaa !2
  br label %gotit

gotit:                                            ; preds = %if.then49, %if.then4
  %hp.0 = phi %struct.hashnode* [ %6, %if.then4 ], [ %hp.1, %if.then49 ]
  %ct = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  %11 = load i32* %ct, align 4, !tbaa !3
  %12 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %11, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %gotit
  %15 = sext i32 %11 to i64
  tail call void @__ioc_report_add_overflow(i32 235, i32 13, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %gotit, %ioc_bb7
  store i32 %13, i32* %ct, align 4, !tbaa !3
  %scan = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  %16 = load %struct.scanstatus** %scan, align 4, !tbaa !2
  %tobool9 = icmp eq %struct.scanstatus* %16, null
  br i1 %tobool9, label %return, label %if.then10

if.then10:                                        ; preds = %cont8
  %sorted = getelementptr inbounds %struct.scanstatus* %16, i32 0, i32 0
  %17 = load i32* %sorted, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %17, 0
  %u = getelementptr inbounds %struct.scanstatus* %16, i32 0, i32 1
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then10
  %hashtab15 = getelementptr inbounds %union.anon* %u, i32 0, i32 0, i32 0
  %18 = load %struct.hashnode*** %hashtab15, align 4, !tbaa !2
  %ct19 = getelementptr inbounds %struct.scanstatus* %16, i32 0, i32 1, i32 0, i32 1
  %19 = load i32* %ct19, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then25, %if.then13
  %i.0 = phi i32 [ %19, %if.then13 ], [ %21, %if.then25 ], [ %21, %for.body ]
  %20 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0, i32 -1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %for.cond
  %23 = sext i32 %i.0 to i64
  tail call void @__ioc_report_add_overflow(i32 240, i32 41, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %23, i64 -1, i8 13) nounwind
  br label %cont21

cont21:                                           ; preds = %for.cond, %ioc_bb20
  %tobool22 = icmp eq i32 %i.0, 0
  br i1 %tobool22, label %return, label %for.body

for.body:                                         ; preds = %cont21
  %arrayidx23 = getelementptr inbounds %struct.hashnode** %18, i32 %21
  %24 = load %struct.hashnode** %arrayidx23, align 4, !tbaa !2
  %cmp24 = icmp eq %struct.hashnode* %24, %hp.0
  br i1 %cmp24, label %if.then25, label %for.cond

if.then25:                                        ; preds = %for.body
  store %struct.hashnode* null, %struct.hashnode** %arrayidx23, align 4, !tbaa !2
  br label %for.cond

if.else:                                          ; preds = %if.then10
  %u30 = bitcast %union.anon* %u to %struct.hashnode**
  %25 = load %struct.hashnode** %u30, align 4, !tbaa !2
  %cmp31 = icmp eq %struct.hashnode* %25, %hp.0
  br i1 %cmp31, label %if.then32, label %return

if.then32:                                        ; preds = %if.else
  %next33 = getelementptr inbounds %struct.hashnode* %hp.0, i32 0, i32 0
  %26 = load %struct.hashnode** %next33, align 4, !tbaa !2
  %27 = getelementptr inbounds %union.anon* %u, i32 0, i32 0, i32 0
  %.c = getelementptr inbounds %struct.hashnode* %26, i32 0, i32 0
  store %struct.hashnode** %.c, %struct.hashnode*** %27, align 4, !tbaa !2
  br label %return

for.cond42:                                       ; preds = %if.end, %for.body44
  %.pn = phi %struct.hashnode* [ %hp.1, %for.body44 ], [ %6, %if.end ]
  %hp.1.in = getelementptr inbounds %struct.hashnode* %.pn, i32 0, i32 0
  %hp.1 = load %struct.hashnode** %hp.1.in, align 4
  %tobool43 = icmp eq %struct.hashnode* %hp.1, null
  br i1 %tobool43, label %return, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %28 = load i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %nam46 = getelementptr inbounds %struct.hashnode* %hp.1, i32 0, i32 1
  %29 = load i8** %nam46, align 4, !tbaa !2
  %call47 = tail call i32 %28(i8* %29, i8* %nam) nounwind
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %for.cond42

if.then49:                                        ; preds = %for.body44
  %next50 = getelementptr inbounds %struct.hashnode* %hp.1, i32 0, i32 0
  %30 = load %struct.hashnode** %next50, align 4, !tbaa !2
  store %struct.hashnode* %30, %struct.hashnode** %hp.1.in, align 4, !tbaa !2
  br label %gotit

return:                                           ; preds = %for.cond42, %cont21, %if.else, %if.then32, %cont8, %cont1
  %retval.0 = phi %struct.hashnode* [ null, %cont1 ], [ %hp.0, %cont8 ], [ %hp.0, %if.then32 ], [ %hp.0, %if.else ], [ %hp.0, %cont21 ], [ null, %for.cond42 ]
  ret %struct.hashnode* %retval.0
}

define void @disablehashnode(%struct.hashnode* nocapture %hn, i32 %flags) nounwind {
entry:
  %flags3 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %0 = load i32* %flags3, align 4, !tbaa !3
  %or = or i32 %0, 1
  store i32 %or, i32* %flags3, align 4, !tbaa !3
  ret void
}

define void @enablehashnode(%struct.hashnode* nocapture %hn, i32 %flags) nounwind {
entry:
  %flags3 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %0 = load i32* %flags3, align 4, !tbaa !3
  %and = and i32 %0, -2
  store i32 %and, i32* %flags3, align 4, !tbaa !3
  ret void
}

define i32 @scanmatchtable(%struct.hashtable* %ht, %struct.patprog* %pprog, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags) nounwind {
entry:
  %st = alloca %struct.scanstatus, align 4
  %tobool = icmp ne %struct.patprog* %pprog, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %scantab = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 16
  %0 = load void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %scantab, align 4, !tbaa !2
  %tobool1 = icmp eq void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* %0, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.hashtable* %ht, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags) nounwind
  %ct = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  %1 = load i32* %ct, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool3 = icmp eq i32 %sorted, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %ct6 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  %2 = load i32* %ct6, align 4, !tbaa !3
  %3 = call i8* @llvm.stacksave()
  %vla = alloca %struct.hashnode*, i32 %2, align 4
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %4 = load i32* %hsize, align 4, !tbaa !3
  %cmp159 = icmp sgt i32 %4, 0
  br i1 %cmp159, label %for.body.lr.ph, label %for.end11

for.body.lr.ph:                                   ; preds = %if.then4
  %nodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %10, %for.cond.backedge ]
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %8, %for.cond.backedge ]
  %htp.0160 = phi %struct.hashnode** [ %vla, %for.body.lr.ph ], [ %htp.1.lcssa, %for.cond.backedge ]
  %6 = load %struct.hashnode*** %nodes, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.hashnode** %6, i32 %i.0161
  %hn.0154 = load %struct.hashnode** %arrayidx, align 4
  %tobool8155 = icmp eq %struct.hashnode* %hn.0154, null
  br i1 %tobool8155, label %for.inc10, label %for.body9

for.body9:                                        ; preds = %for.body, %for.body9
  %hn.0157 = phi %struct.hashnode* [ %hn.0, %for.body9 ], [ %hn.0154, %for.body ]
  %htp.1156 = phi %struct.hashnode** [ %incdec.ptr, %for.body9 ], [ %htp.0160, %for.body ]
  %incdec.ptr = getelementptr inbounds %struct.hashnode** %htp.1156, i32 1
  store %struct.hashnode* %hn.0157, %struct.hashnode** %htp.1156, align 4, !tbaa !2
  %next = getelementptr inbounds %struct.hashnode* %hn.0157, i32 0, i32 0
  %hn.0 = load %struct.hashnode** %next, align 4
  %tobool8 = icmp eq %struct.hashnode* %hn.0, null
  br i1 %tobool8, label %for.inc10, label %for.body9

for.inc10:                                        ; preds = %for.body9, %for.body
  %htp.1.lcssa = phi %struct.hashnode** [ %htp.0160, %for.body ], [ %incdec.ptr, %for.body9 ]
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0161, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc10, %ioc_bb
  %10 = phi i32 [ %5, %for.inc10 ], [ %.pre, %ioc_bb ]
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end11

ioc_bb:                                           ; preds = %for.inc10
  %11 = sext i32 %i.0161 to i64
  call void @__ioc_report_add_overflow(i32 333, i32 55, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind
  %.pre = load i32* %hsize, align 4, !tbaa !3
  br label %for.cond.backedge

for.end11:                                        ; preds = %for.cond.backedge, %if.then4
  %12 = bitcast %struct.hashnode** %vla to i8*
  %13 = icmp sgt i32 %2, -1
  br i1 %13, label %cont13, label %ioc_bb12

ioc_bb12:                                         ; preds = %for.end11
  %14 = sext i32 %2 to i64
  call void @__ioc_report_conversion(i32 336, i32 31, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont13

cont13:                                           ; preds = %ioc_bb12, %for.end11
  call void @qsort(i8* %12, i32 %2, i32 4, i32 (i8*, i8*)* @hnamcmp) nounwind
  %sorted14 = getelementptr inbounds %struct.scanstatus* %st, i32 0, i32 0
  store i32 1, i32* %sorted14, align 4, !tbaa !3
  %hashtab = getelementptr inbounds %struct.scanstatus* %st, i32 0, i32 1, i32 0, i32 0
  store %struct.hashnode** %vla, %struct.hashnode*** %hashtab, align 4, !tbaa !2
  %ct17 = getelementptr inbounds %struct.scanstatus* %st, i32 0, i32 1, i32 0, i32 1
  store i32 %2, i32* %ct17, align 4, !tbaa !3
  %scan = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  store %struct.scanstatus* %st, %struct.scanstatus** %scan, align 4, !tbaa !2
  %cmp19148 = icmp sgt i32 %2, 0
  br i1 %cmp19148, label %for.body20.lr.ph, label %for.end39

for.body20.lr.ph:                                 ; preds = %cont13
  %tobool21 = icmp eq i32 %flags1, 0
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %cont37
  %match.0152 = phi i32 [ 0, %for.body20.lr.ph ], [ %match.1, %cont37 ]
  %i.1151 = phi i32 [ 0, %for.body20.lr.ph ], [ %22, %cont37 ]
  %htp.2149 = phi %struct.hashnode** [ %vla, %for.body20.lr.ph ], [ %incdec.ptr38, %cont37 ]
  %.pre167 = load %struct.hashnode** %htp.2149, align 4, !tbaa !2
  %flags24.phi.trans.insert = getelementptr inbounds %struct.hashnode* %.pre167, i32 0, i32 2
  %.pre168 = load i32* %flags24.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool21, label %land.lhs.true23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body20
  %and = and i32 %.pre168, %flags1
  %tobool22 = icmp eq i32 %and, 0
  br i1 %tobool22, label %for.inc35, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %for.body20, %lor.lhs.false
  %and25 = and i32 %.pre168, %flags2
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %land.lhs.true27, label %for.inc35

land.lhs.true27:                                  ; preds = %land.lhs.true23
  br i1 %tobool, label %lor.lhs.false29, label %if.then31

lor.lhs.false29:                                  ; preds = %land.lhs.true27
  %nam = getelementptr inbounds %struct.hashnode* %.pre167, i32 0, i32 1
  %15 = load i8** %nam, align 4, !tbaa !2
  %call = call i32 @pattry(%struct.patprog* %pprog, i8* %15) nounwind
  %tobool30 = icmp eq i32 %call, 0
  br i1 %tobool30, label %for.inc35, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false29, %land.lhs.true27
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %match.0152, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %if.then31
  %19 = sext i32 %match.0152 to i64
  call void @__ioc_report_add_overflow(i32 343, i32 14, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %if.then31, %ioc_bb32
  %20 = load %struct.hashnode** %htp.2149, align 4, !tbaa !2
  call void %scanfunc(%struct.hashnode* %20, i32 %scanflags) nounwind
  br label %for.inc35

for.inc35:                                        ; preds = %lor.lhs.false, %lor.lhs.false29, %land.lhs.true23, %cont33
  %match.1 = phi i32 [ %match.0152, %land.lhs.true23 ], [ %17, %cont33 ], [ %match.0152, %lor.lhs.false29 ], [ %match.0152, %lor.lhs.false ]
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1151, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb36, label %cont37

ioc_bb36:                                         ; preds = %for.inc35
  %24 = sext i32 %i.1151 to i64
  call void @__ioc_report_add_overflow(i32 341, i32 47, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont37

cont37:                                           ; preds = %for.inc35, %ioc_bb36
  %incdec.ptr38 = getelementptr inbounds %struct.hashnode** %htp.2149, i32 1
  %cmp19 = icmp slt i32 %22, %2
  br i1 %cmp19, label %for.body20, label %for.end39

for.end39:                                        ; preds = %cont37, %cont13
  %match.0.lcssa = phi i32 [ 0, %cont13 ], [ %match.1, %cont37 ]
  store %struct.scanstatus* null, %struct.scanstatus** %scan, align 4, !tbaa !2
  call void @llvm.stackrestore(i8* %3)
  br label %return

if.else:                                          ; preds = %if.end
  %hsize43 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %25 = load i32* %hsize43, align 4, !tbaa !3
  %nodes45 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %26 = load %struct.hashnode*** %nodes45, align 4, !tbaa !2
  %sorted46 = getelementptr inbounds %struct.scanstatus* %st, i32 0, i32 0
  store i32 0, i32* %sorted46, align 4, !tbaa !3
  %scan47 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 17
  store %struct.scanstatus* %st, %struct.scanstatus** %scan47, align 4, !tbaa !2
  %cmp49144 = icmp sgt i32 %25, 0
  br i1 %cmp49144, label %for.body50.lr.ph, label %for.end90

for.body50.lr.ph:                                 ; preds = %if.else
  %u52 = getelementptr inbounds %struct.scanstatus* %st, i32 0, i32 1
  %u53 = bitcast %union.anon* %u52 to %struct.hashnode**
  %27 = getelementptr inbounds %union.anon* %u52, i32 0, i32 0, i32 0
  %tobool67 = icmp eq i32 %flags1, 0
  br label %for.body50

for.body50:                                       ; preds = %for.body50.lr.ph, %for.cond48.backedge
  %match.2146 = phi i32 [ 0, %for.body50.lr.ph ], [ %match.3.ph141, %for.cond48.backedge ]
  %i41.0145 = phi i32 [ 0, %for.body50.lr.ph ], [ %40, %for.cond48.backedge ]
  %arrayidx51 = getelementptr inbounds %struct.hashnode** %26, i32 %i41.0145
  %28 = load %struct.hashnode** %arrayidx51, align 4, !tbaa !2
  %.c = getelementptr inbounds %struct.hashnode* %28, i32 0, i32 0
  store %struct.hashnode** %.c, %struct.hashnode*** %27, align 4, !tbaa !2
  %tobool57139142 = icmp eq %struct.hashnode* %28, null
  br i1 %tobool57139142, label %for.inc87, label %for.body58.lr.ph

for.body58.lr.ph:                                 ; preds = %for.body50, %cont84
  %29 = phi %struct.hashnode* [ %38, %cont84 ], [ %28, %for.body50 ]
  %match.3.ph143 = phi i32 [ %35, %cont84 ], [ %match.2146, %for.body50 ]
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %for.cond54.backedge
  %30 = phi %struct.hashnode* [ %29, %for.body58.lr.ph ], [ %32, %for.cond54.backedge ]
  %next64 = getelementptr inbounds %struct.hashnode* %30, i32 0, i32 0
  %31 = load %struct.hashnode** %next64, align 4, !tbaa !2
  %.c137 = getelementptr inbounds %struct.hashnode* %31, i32 0, i32 0
  store %struct.hashnode** %.c137, %struct.hashnode*** %27, align 4, !tbaa !2
  %flags73.phi.trans.insert = getelementptr inbounds %struct.hashnode* %30, i32 0, i32 2
  %.pre165 = load i32* %flags73.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool67, label %land.lhs.true72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %for.body58
  %and70 = and i32 %.pre165, %flags1
  %tobool71 = icmp eq i32 %and70, 0
  br i1 %tobool71, label %for.cond54.backedge, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %for.body58, %lor.lhs.false68
  %and74 = and i32 %.pre165, %flags2
  %tobool75 = icmp eq i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %for.cond54.backedge

for.cond54.backedge:                              ; preds = %lor.lhs.false78.for.cond54.backedge_crit_edge, %land.lhs.true72, %lor.lhs.false68
  %32 = phi %struct.hashnode* [ %.pre166, %lor.lhs.false78.for.cond54.backedge_crit_edge ], [ %31, %land.lhs.true72 ], [ %31, %lor.lhs.false68 ]
  %tobool57 = icmp eq %struct.hashnode* %32, null
  br i1 %tobool57, label %for.inc87, label %for.body58

land.lhs.true76:                                  ; preds = %land.lhs.true72
  br i1 %tobool, label %lor.lhs.false78, label %if.then82

lor.lhs.false78:                                  ; preds = %land.lhs.true76
  %nam79 = getelementptr inbounds %struct.hashnode* %30, i32 0, i32 1
  %33 = load i8** %nam79, align 4, !tbaa !2
  %call80 = call i32 @pattry(%struct.patprog* %pprog, i8* %33) nounwind
  %tobool81 = icmp eq i32 %call80, 0
  br i1 %tobool81, label %lor.lhs.false78.for.cond54.backedge_crit_edge, label %if.then82

lor.lhs.false78.for.cond54.backedge_crit_edge:    ; preds = %lor.lhs.false78
  %.pre166 = load %struct.hashnode** %u53, align 4, !tbaa !2
  br label %for.cond54.backedge

if.then82:                                        ; preds = %lor.lhs.false78, %land.lhs.true76
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %match.3.ph143, i32 1)
  %35 = extractvalue { i32, i1 } %34, 0
  %36 = extractvalue { i32, i1 } %34, 1
  br i1 %36, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %if.then82
  %37 = sext i32 %match.3.ph143 to i64
  call void @__ioc_report_add_overflow(i32 360, i32 16, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %37, i64 1, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %if.then82, %ioc_bb83
  call void %scanfunc(%struct.hashnode* %30, i32 %scanflags) nounwind
  %38 = load %struct.hashnode** %u53, align 4, !tbaa !2
  %tobool57139 = icmp eq %struct.hashnode* %38, null
  br i1 %tobool57139, label %for.inc87, label %for.body58.lr.ph

for.inc87:                                        ; preds = %for.body50, %cont84, %for.cond54.backedge
  %match.3.ph141 = phi i32 [ %match.3.ph143, %for.cond54.backedge ], [ %match.2146, %for.body50 ], [ %35, %cont84 ]
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i41.0145, i32 1)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb88, label %for.cond48.backedge

for.cond48.backedge:                              ; preds = %for.inc87, %ioc_bb88
  %cmp49 = icmp slt i32 %40, %25
  br i1 %cmp49, label %for.body50, label %for.end90

ioc_bb88:                                         ; preds = %for.inc87
  %42 = sext i32 %i41.0145 to i64
  call void @__ioc_report_add_overflow(i32 355, i32 29, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %42, i64 1, i8 13) nounwind
  br label %for.cond48.backedge

for.end90:                                        ; preds = %for.cond48.backedge, %if.else
  %match.2.lcssa = phi i32 [ 0, %if.else ], [ %match.3.ph141, %for.cond48.backedge ]
  store %struct.scanstatus* null, %struct.scanstatus** %scan47, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %for.end39, %for.end90, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %match.0.lcssa, %for.end39 ], [ %match.2.lcssa, %for.end90 ]
  ret i32 %retval.0
}

declare i8* @llvm.stacksave() nounwind

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)* nocapture)

define internal i32 @hnamcmp(i8* nocapture %ap, i8* nocapture %bp) nounwind {
entry:
  %0 = bitcast i8* %ap to %struct.hashnode**
  %1 = load %struct.hashnode** %0, align 4, !tbaa !2
  %2 = bitcast i8* %bp to %struct.hashnode**
  %3 = load %struct.hashnode** %2, align 4, !tbaa !2
  %nam = getelementptr inbounds %struct.hashnode* %1, i32 0, i32 1
  %4 = load i8** %nam, align 4, !tbaa !2
  %nam1 = getelementptr inbounds %struct.hashnode* %3, i32 0, i32 1
  %5 = load i8** %nam1, align 4, !tbaa !2
  %call = tail call i32 @ztrcmp(i8* %4, i8* %5) nounwind
  ret i32 %call
}

declare i32 @pattry(%struct.patprog*, i8*)

declare void @llvm.stackrestore(i8*) nounwind

define i32 @scanhashtable(%struct.hashtable* %ht, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags) nounwind {
entry:
  %call = tail call i32 @scanmatchtable(%struct.hashtable* %ht, %struct.patprog* null, i32 %sorted, i32 %flags1, i32 %flags2, void (%struct.hashnode*, i32)* %scanfunc, i32 %scanflags)
  ret i32 %call
}

define void @emptyhashtable(%struct.hashtable* nocapture %ht) nounwind {
entry:
  %hsize = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 0
  %0 = load i32* %hsize, align 4, !tbaa !3
  %nodes.i = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 2
  %cmp44.i = icmp sgt i32 %0, 0
  %1 = load %struct.hashnode*** %nodes.i, align 4, !tbaa !2
  br i1 %cmp44.i, label %for.body.lr.ph.i, label %for.end3.i.thread

for.end3.i.thread:                                ; preds = %entry
  %2 = bitcast %struct.hashnode** %1 to i8*
  br label %if.else.i

for.body.lr.ph.i:                                 ; preds = %entry
  %freenode.i = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %cont.i, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %7, %cont.i ]
  %ha.045.i = phi %struct.hashnode** [ %1, %for.body.lr.ph.i ], [ %incdec.ptr.i, %cont.i ]
  %3 = load %struct.hashnode** %ha.045.i, align 4, !tbaa !2
  %tobool42.i = icmp eq %struct.hashnode* %3, null
  br i1 %tobool42.i, label %for.inc.i, label %for.body2.i

for.body2.i:                                      ; preds = %for.body.i, %for.body2.i
  %hn.043.i = phi %struct.hashnode* [ %4, %for.body2.i ], [ %3, %for.body.i ]
  %next.i = getelementptr inbounds %struct.hashnode* %hn.043.i, i32 0, i32 0
  %4 = load %struct.hashnode** %next.i, align 4, !tbaa !2
  %5 = load void (%struct.hashnode*)** %freenode.i, align 4, !tbaa !2
  tail call void %5(%struct.hashnode* %hn.043.i) nounwind
  %tobool.i = icmp eq %struct.hashnode* %4, null
  br i1 %tobool.i, label %for.inc.i, label %for.body2.i

for.inc.i:                                        ; preds = %for.body2.i, %for.body.i
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.046.i, i32 1) nounwind
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb.i, label %cont.i

ioc_bb.i:                                         ; preds = %for.inc.i
  %9 = sext i32 %i.046.i to i64
  tail call void @__ioc_report_add_overflow(i32 413, i32 34, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont.i

cont.i:                                           ; preds = %for.inc.i, %ioc_bb.i
  %incdec.ptr.i = getelementptr inbounds %struct.hashnode** %ha.045.i, i32 1
  %10 = load i32* %hsize, align 4, !tbaa !3
  %cmp.i = icmp slt i32 %7, %10
  br i1 %cmp.i, label %for.body.i, label %for.end3.i

for.end3.i:                                       ; preds = %cont.i
  %cmp5.i = icmp eq i32 %10, %0
  %11 = load %struct.hashnode*** %nodes.i, align 4, !tbaa !2
  %12 = bitcast %struct.hashnode** %11 to i8*
  br i1 %cmp5.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end3.i
  %13 = icmp sgt i32 %10, -1
  br i1 %13, label %cont9.i, label %ioc_bb8.i

ioc_bb8.i:                                        ; preds = %if.then.i
  %14 = sext i32 %10 to i64
  tail call void @__ioc_report_conversion(i32 423, i32 26, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont9.i

cont9.i:                                          ; preds = %ioc_bb8.i, %if.then.i
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) nounwind
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb10.i, label %cont11.i

ioc_bb10.i:                                       ; preds = %cont9.i
  %18 = zext i32 %10 to i64
  tail call void @__ioc_report_mul_overflow(i32 423, i32 40, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %18, i64 4, i8 5) nounwind
  br label %cont11.i

cont11.i:                                         ; preds = %ioc_bb10.i, %cont9.i
  %19 = icmp sgt i32 %16, -1
  br i1 %19, label %cont13.i, label %ioc_bb12.i

ioc_bb12.i:                                       ; preds = %cont11.i
  %20 = zext i32 %16 to i64
  tail call void @__ioc_report_conversion(i32 423, i32 25, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %20, i8 0) nounwind
  br label %cont13.i

cont13.i:                                         ; preds = %ioc_bb12.i, %cont11.i
  tail call void @zfree(i8* %12, i32 %16) nounwind
  %21 = icmp sgt i32 %0, -1
  br i1 %21, label %cont16.i, label %ioc_bb15.i

ioc_bb15.i:                                       ; preds = %cont13.i
  %22 = sext i32 %0 to i64
  tail call void @__ioc_report_conversion(i32 424, i32 43, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont16.i

cont16.i:                                         ; preds = %ioc_bb15.i, %cont13.i
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) nounwind
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb17.i, label %cont18.i

ioc_bb17.i:                                       ; preds = %cont16.i
  %26 = zext i32 %0 to i64
  tail call void @__ioc_report_mul_overflow(i32 424, i32 51, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %26, i64 4, i8 5) nounwind
  br label %cont18.i

cont18.i:                                         ; preds = %ioc_bb17.i, %cont16.i
  %call.i = tail call i8* @zshcalloc(i32 %24) nounwind
  %27 = bitcast i8* %call.i to %struct.hashnode**
  store %struct.hashnode** %27, %struct.hashnode*** %nodes.i, align 4, !tbaa !2
  store i32 %0, i32* %hsize, align 4, !tbaa !3
  br label %resizehashtable.exit

if.else.i:                                        ; preds = %for.end3.i.thread, %for.end3.i
  %28 = phi i8* [ %2, %for.end3.i.thread ], [ %12, %for.end3.i ]
  %29 = icmp sgt i32 %0, -1
  br i1 %29, label %cont24.i, label %ioc_bb23.i

ioc_bb23.i:                                       ; preds = %if.else.i
  %30 = sext i32 %0 to i64
  tail call void @__ioc_report_conversion(i32 429, i32 28, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %30, i8 1) nounwind
  br label %cont24.i

cont24.i:                                         ; preds = %ioc_bb23.i, %if.else.i
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) nounwind
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb25.i, label %cont26.i

ioc_bb25.i:                                       ; preds = %cont24.i
  %34 = zext i32 %0 to i64
  tail call void @__ioc_report_mul_overflow(i32 429, i32 36, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %34, i64 4, i8 5) nounwind
  br label %cont26.i

cont26.i:                                         ; preds = %ioc_bb25.i, %cont24.i
  tail call void @llvm.memset.p0i8.i32(i8* %28, i8 0, i32 %32, i32 4, i1 false) nounwind
  br label %resizehashtable.exit

resizehashtable.exit:                             ; preds = %cont18.i, %cont26.i
  %ct.i = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 1
  store i32 0, i32* %ct.i, align 4, !tbaa !3
  ret void
}

define void @createcmdnamtable() nounwind {
entry:
  %call.i = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call.i to %struct.hashtable*
  %call3.i = tail call i8* @zshcalloc(i32 804) nounwind
  %1 = bitcast i8* %call3.i to %struct.hashnode**
  %nodes.i = getelementptr inbounds i8* %call.i, i32 8
  %2 = bitcast i8* %nodes.i to %struct.hashnode***
  store %struct.hashnode** %1, %struct.hashnode*** %2, align 4, !tbaa !2
  %hsize.i = bitcast i8* %call.i to i32*
  store i32 201, i32* %hsize.i, align 4, !tbaa !3
  %ct.i = getelementptr inbounds i8* %call.i, i32 4
  %3 = bitcast i8* %ct.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %scan.i = getelementptr inbounds i8* %call.i, i32 68
  %4 = bitcast i8* %scan.i to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %4, align 4, !tbaa !2
  %scantab.i = getelementptr inbounds i8* %call.i, i32 64
  %5 = bitcast i8* %scantab.i to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %5, align 4, !tbaa !2
  store %struct.hashtable* %0, %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %hash = getelementptr inbounds i8* %call.i, i32 16
  %6 = bitcast i8* %hash to i32 (i8*)**
  store i32 (i8*)* @hasher, i32 (i8*)** %6, align 4, !tbaa !2
  %7 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %emptytable = getelementptr inbounds %struct.hashtable* %7, i32 0, i32 5
  store void (%struct.hashtable*)* @emptycmdnamtable, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  %8 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %filltable = getelementptr inbounds %struct.hashtable* %8, i32 0, i32 6
  store void (%struct.hashtable*)* @fillcmdnamtable, void (%struct.hashtable*)** %filltable, align 4, !tbaa !2
  %9 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %cmpnodes = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %10 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %10, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %11 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %11, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %12 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %getnode2 = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !2
  %13 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %removenode = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !2
  %14 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %disablenode = getelementptr inbounds %struct.hashtable* %14, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !2
  %15 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %enablenode = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !2
  %16 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %freenode = getelementptr inbounds %struct.hashtable* %16, i32 0, i32 14
  store void (%struct.hashnode*)* @freecmdnamnode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  %17 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %printnode = getelementptr inbounds %struct.hashtable* %17, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printcmdnamnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !2
  %18 = load i8*** @path, align 4, !tbaa !2
  store i8** %18, i8*** @pathchecked, align 4, !tbaa !2
  ret void
}

define internal void @emptycmdnamtable(%struct.hashtable* nocapture %ht) nounwind {
entry:
  tail call void @emptyhashtable(%struct.hashtable* %ht)
  %0 = load i8*** @path, align 4, !tbaa !2
  store i8** %0, i8*** @pathchecked, align 4, !tbaa !2
  ret void
}

define internal void @fillcmdnamtable(%struct.hashtable* nocapture %ht) nounwind {
entry:
  %0 = load i8*** @pathchecked, align 4, !tbaa !2
  %1 = load i8** %0, align 4, !tbaa !2
  %tobool3 = icmp eq i8* %1, null
  br i1 %tobool3, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %pq.04 = phi i8** [ %incdec.ptr, %for.body ], [ %0, %entry ]
  tail call void @hashdir(i8** %pq.04)
  %incdec.ptr = getelementptr inbounds i8** %pq.04, i32 1
  %2 = load i8** %incdec.ptr, align 4, !tbaa !2
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %pq.0.lcssa = phi i8** [ %0, %entry ], [ %incdec.ptr, %for.body ]
  store i8** %pq.0.lcssa, i8*** @pathchecked, align 4, !tbaa !2
  ret void
}

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define internal void @freecmdnamnode(%struct.hashnode* %hn) nounwind {
entry:
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  tail call void @zsfree(i8* %0) nounwind
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %1, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont5, label %if.then

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %cmd = bitcast %struct.hashnode* %u to i8**
  %2 = load i8** %cmd, align 4, !tbaa !2
  tail call void @zsfree(i8* %2) nounwind
  br label %cont5

cont5:                                            ; preds = %if.then, %entry
  %3 = bitcast %struct.hashnode* %hn to i8*
  tail call void @zfree(i8* %3, i32 16) nounwind
  ret void
}

define internal void @printcmdnamnode(%struct.hashnode* nocapture %hn, i32 %printflags) nounwind {
entry:
  %and = and i32 %printflags, 1024
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont13, label %if.then

if.then:                                          ; preds = %entry
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !3
  %and8 = and i32 %1, 2
  %tobool9 = icmp ne i32 %and8, 0
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([7 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str67, i32 0, i32 0)
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str65, i32 0, i32 0), i8* %0, i8* %cond) nounwind
  br label %if.end127

cont13:                                           ; preds = %entry
  %2 = and i32 %printflags, 160
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %cont46, label %if.then22

if.then22:                                        ; preds = %cont13
  %flags24 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %4 = load i32* %flags24, align 4, !tbaa !3
  %and29 = and i32 %4, 2
  %tobool30 = icmp eq i32 %and29, 0
  %u = getelementptr inbounds %struct.hashnode* %hn, i32 1
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then22
  %cmd = bitcast %struct.hashnode* %u to i8**
  %5 = load i8** %cmd, align 4, !tbaa !2
  %6 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call32 = tail call i32 @zputs(i8* %5, %struct._IO_FILE* %6) nounwind
  %7 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7) nounwind
  br label %if.end127

if.else:                                          ; preds = %if.then22
  %name = bitcast %struct.hashnode* %u to i8***
  %8 = load i8*** %name, align 4, !tbaa !2
  %9 = load i8** %8, align 4, !tbaa !2
  %10 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call35 = tail call i32 @zputs(i8* %9, %struct._IO_FILE* %10) nounwind
  %11 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i146 = tail call i32 @_IO_putc(i32 47, %struct._IO_FILE* %11) nounwind
  %nam38 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %12 = load i8** %nam38, align 4, !tbaa !2
  %13 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call39 = tail call i32 @zputs(i8* %12, %struct._IO_FILE* %13) nounwind
  %14 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i147 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %14) nounwind
  br label %if.end127

cont46:                                           ; preds = %cont13
  %and47 = and i32 %printflags, 64
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %cont85, label %if.then49

if.then49:                                        ; preds = %cont46
  %flags51 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %15 = load i32* %flags51, align 4, !tbaa !3
  %and56 = and i32 %15, 2
  %tobool57 = icmp eq i32 %and56, 0
  %nam60 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %16 = load i8** %nam60, align 4, !tbaa !2
  %17 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call61 = tail call i32 @mb_niceformat(i8* %16, %struct._IO_FILE* %17, i8** null, i32 0) nounwind
  br i1 %tobool57, label %if.else67, label %if.then58

if.then58:                                        ; preds = %if.then49
  %call62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str68, i32 0, i32 0)) nounwind
  %u63 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %cmd64 = bitcast %struct.hashnode* %u63 to i8**
  %18 = load i8** %cmd64, align 4, !tbaa !2
  %19 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call65 = tail call i32 @mb_niceformat(i8* %18, %struct._IO_FILE* %19, i8** null, i32 0) nounwind
  %20 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i148 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %20) nounwind
  br label %if.end127

if.else67:                                        ; preds = %if.then49
  %call71 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) nounwind
  %u72 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %name73 = bitcast %struct.hashnode* %u72 to i8***
  %21 = load i8*** %name73, align 4, !tbaa !2
  %22 = load i8** %21, align 4, !tbaa !2
  %23 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call74 = tail call i32 @mb_niceformat(i8* %22, %struct._IO_FILE* %23, i8** null, i32 0) nounwind
  %24 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i149 = tail call i32 @_IO_putc(i32 47, %struct._IO_FILE* %24) nounwind
  %25 = load i8** %nam60, align 4, !tbaa !2
  %26 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call78 = tail call i32 @mb_niceformat(i8* %25, %struct._IO_FILE* %26, i8** null, i32 0) nounwind
  %27 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i150 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %27) nounwind
  br label %if.end127

cont85:                                           ; preds = %cont46
  %and86 = and i32 %printflags, 4
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %cont85.if.end96_crit_edge, label %if.then88

cont85.if.end96_crit_edge:                        ; preds = %cont85
  %nam107.pre = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  br label %if.end96

if.then88:                                        ; preds = %cont85
  %call89 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str70, i32 0, i32 0)) nounwind
  %nam91 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %28 = load i8** %nam91, align 4, !tbaa !2
  %29 = load i8* %28, align 1, !tbaa !0
  %cmp = icmp eq i8 %29, 45
  br i1 %cmp, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.then88
  %call94 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0)) nounwind
  br label %if.end96

if.end96:                                         ; preds = %cont85.if.end96_crit_edge, %if.then88, %if.then93
  %nam107.pre-phi = phi i8** [ %nam107.pre, %cont85.if.end96_crit_edge ], [ %nam91, %if.then88 ], [ %nam91, %if.then93 ]
  %flags98 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %30 = load i32* %flags98, align 4, !tbaa !3
  %and103 = and i32 %30, 2
  %tobool104 = icmp eq i32 %and103, 0
  %31 = load i8** %nam107.pre-phi, align 4, !tbaa !2
  %32 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call108 = tail call i32 @quotedzputs(i8* %31, %struct._IO_FILE* %32) nounwind
  %33 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i151 = tail call i32 @_IO_putc(i32 61, %struct._IO_FILE* %33) nounwind
  %u110 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  br i1 %tobool104, label %if.else114, label %if.then105

if.then105:                                       ; preds = %if.end96
  %cmd111 = bitcast %struct.hashnode* %u110 to i8**
  %34 = load i8** %cmd111, align 4, !tbaa !2
  %35 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call112 = tail call i32 @quotedzputs(i8* %34, %struct._IO_FILE* %35) nounwind
  %36 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i152 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %36) nounwind
  br label %if.end127

if.else114:                                       ; preds = %if.end96
  %name120 = bitcast %struct.hashnode* %u110 to i8***
  %37 = load i8*** %name120, align 4, !tbaa !2
  %38 = load i8** %37, align 4, !tbaa !2
  %39 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call121 = tail call i32 @quotedzputs(i8* %38, %struct._IO_FILE* %39) nounwind
  %40 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i153 = tail call i32 @_IO_putc(i32 47, %struct._IO_FILE* %40) nounwind
  %41 = load i8** %nam107.pre-phi, align 4, !tbaa !2
  %42 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call125 = tail call i32 @quotedzputs(i8* %41, %struct._IO_FILE* %42) nounwind
  %43 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i154 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %43) nounwind
  br label %if.end127

if.end127:                                        ; preds = %if.then58, %if.else67, %if.then31, %if.else, %if.then, %if.else114, %if.then105
  ret void
}

define void @hashdir(i8** %dirp) nounwind {
entry:
  %statbuf = alloca %struct.stat, align 4
  %dummylen = alloca i32, align 4
  %0 = load i8** %dirp, align 4, !tbaa !2
  %call = call i32 @isrelative(i8* %0) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8** %dirp, align 4, !tbaa !2
  %call1 = call i8* @unmeta(i8* %1) nounwind
  %call2 = call %struct.__dirstream* @opendir(i8* %call1) nounwind
  %tobool3 = icmp eq %struct.__dirstream* %call2, null
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @strlen(i8* %call1) nounwind readonly
  %2 = icmp sgt i32 %call6, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.end5
  %3 = zext i32 %call6 to i64
  call void @__ioc_report_conversion(i32 505, i32 12, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %3, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.end5
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call6, i32 4096)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  %7 = sext i32 %call6 to i64
  br i1 %6, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %cont
  call void @__ioc_report_add_overflow(i32 506, i32 38, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %7, i64 4096, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %cont, %ioc_bb7
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 2)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  %11 = sext i32 %5 to i64
  br i1 %10, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  call void @__ioc_report_add_overflow(i32 506, i32 45, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %11, i64 2, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %12 = icmp sgt i32 %9, -1
  br i1 %12, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %cont10
  %13 = sext i32 %9 to i64
  call void @__ioc_report_conversion(i32 506, i32 30, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %cont10
  %call13 = call i8* @zalloc(i32 %9) nounwind
  %call14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call13, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %call1) nounwind
  %add.ptr.sum = add i32 %call6, 1
  %add.ptr15 = getelementptr inbounds i8* %call13, i32 %add.ptr.sum
  %call1686 = call i8* @zreaddir(%struct.__dirstream* %call2, i32 1) nounwind
  %tobool1787 = icmp eq i8* %call1686, null
  br i1 %tobool1787, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cont12
  %14 = bitcast %struct.stat* %statbuf to %struct.stat64*
  %st_mode = getelementptr inbounds %struct.stat* %statbuf, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call1688 = phi i8* [ %call1686, %while.body.lr.ph ], [ %call16, %while.cond.backedge ]
  %15 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 9
  %16 = load %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %call18 = call %struct.hashnode* %16(%struct.hashtable* %15, i8* %call1688) nounwind
  %tobool19 = icmp eq %struct.hashnode* %call18, null
  br i1 %tobool19, label %if.then20, label %while.cond.backedge

if.then20:                                        ; preds = %while.body
  %call21 = call i8* @ztrdup(i8* %call1688) nounwind
  %call22 = call i8* @unmetafy(i8* %call1688, i32* %dummylen) nounwind
  %call23 = call i32 @strlen(i8* %call1688) nounwind readonly
  %cmp = icmp ugt i32 %call23, 4096
  br i1 %cmp, label %if.then55, label %if.else

if.else:                                          ; preds = %if.then20
  %call27 = call i8* @strcpy(i8* %add.ptr15, i8* %call1688) nounwind
  %17 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 64), align 1, !tbaa !0
  %tobool28 = icmp eq i8 %17, 0
  br i1 %tobool28, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call29 = call i32 @access(i8* %call13, i32 1) nounwind
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call.i = call i32 @__xstat64(i32 3, i8* %call13, %struct.stat64* %14) nounwind
  %cmp32 = icmp eq i32 %call.i, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.else57

land.lhs.true33:                                  ; preds = %land.lhs.true
  %18 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %18, 61440
  %cmp38 = icmp ne i32 %and, 32768
  %and49 = and i32 %18, 73
  %tobool50 = icmp eq i32 %and49, 0
  %or.cond = or i1 %cmp38, %tobool50
  br i1 %or.cond, label %if.else57, label %if.then55

if.then55:                                        ; preds = %land.lhs.true33, %if.else, %if.then20
  %call56 = call i8* @zshcalloc(i32 16) nounwind
  %flags = getelementptr inbounds i8* %call56, i32 8
  %19 = bitcast i8* %flags to i32*
  store i32 0, i32* %19, align 4, !tbaa !3
  %u = getelementptr inbounds i8* %call56, i32 12
  %name = bitcast i8* %u to i8***
  store i8** %dirp, i8*** %name, align 4, !tbaa !2
  %20 = load %struct.hashtable** @cmdnamtab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %20, i32 0, i32 8
  %21 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  call void %21(%struct.hashtable* %20, i8* %call21, i8* %call56) nounwind
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then55, %if.else57, %while.body
  %call16 = call i8* @zreaddir(%struct.__dirstream* %call2, i32 1) nounwind
  %tobool17 = icmp eq i8* %call16, null
  br i1 %tobool17, label %while.end, label %while.body

if.else57:                                        ; preds = %land.lhs.true33, %lor.lhs.false, %land.lhs.true
  call void @zsfree(i8* %call21) nounwind
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %cont12
  %call60 = call i32 @closedir(%struct.__dirstream* %call2) nounwind
  br i1 %6, label %ioc_bb61, label %cont62

ioc_bb61:                                         ; preds = %while.end
  call void @__ioc_report_add_overflow(i32 545, i32 24, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %7, i64 4096, i8 13) nounwind
  br label %cont62

cont62:                                           ; preds = %while.end, %ioc_bb61
  br i1 %10, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %cont62
  call void @__ioc_report_add_overflow(i32 545, i32 31, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %11, i64 2, i8 13) nounwind
  br label %cont64

cont64:                                           ; preds = %cont62, %ioc_bb63
  call void @zfree(i8* %call13, i32 %9) nounwind
  br label %return

return:                                           ; preds = %if.end, %entry, %cont64
  ret void
}

declare i32 @isrelative(i8*)

declare i8* @unmeta(i8*)

declare noalias %struct.__dirstream* @opendir(i8* nocapture) nounwind

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i8* @zalloc(i32)

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare i8* @zreaddir(%struct.__dirstream*, i32)

declare i8* @ztrdup(i8*)

declare i8* @unmetafy(i8*, i32*)

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare i32 @access(i8* nocapture, i32) nounwind

declare void @zsfree(i8*)

declare i32 @closedir(%struct.__dirstream* nocapture) nounwind

define void @createshfunctable() nounwind {
entry:
  %call.i = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call.i to %struct.hashtable*
  %call3.i = tail call i8* @zshcalloc(i32 28) nounwind
  %1 = bitcast i8* %call3.i to %struct.hashnode**
  %nodes.i = getelementptr inbounds i8* %call.i, i32 8
  %2 = bitcast i8* %nodes.i to %struct.hashnode***
  store %struct.hashnode** %1, %struct.hashnode*** %2, align 4, !tbaa !2
  %hsize.i = bitcast i8* %call.i to i32*
  store i32 7, i32* %hsize.i, align 4, !tbaa !3
  %ct.i = getelementptr inbounds i8* %call.i, i32 4
  %3 = bitcast i8* %ct.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %scan.i = getelementptr inbounds i8* %call.i, i32 68
  %4 = bitcast i8* %scan.i to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %4, align 4, !tbaa !2
  %scantab.i = getelementptr inbounds i8* %call.i, i32 64
  %5 = bitcast i8* %scantab.i to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %5, align 4, !tbaa !2
  store %struct.hashtable* %0, %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %hash = getelementptr inbounds i8* %call.i, i32 16
  %6 = bitcast i8* %hash to i32 (i8*)**
  store i32 (i8*)* @hasher, i32 (i8*)** %6, align 4, !tbaa !2
  %7 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %emptytable = getelementptr inbounds %struct.hashtable* %7, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  %8 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %filltable = getelementptr inbounds %struct.hashtable* %8, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !2
  %9 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %cmpnodes = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %10 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %10, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %11 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %11, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %12 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %getnode2 = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !2
  %13 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %removenode = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removeshfuncnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !2
  %14 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %disablenode = getelementptr inbounds %struct.hashtable* %14, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disableshfuncnode, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !2
  %15 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %enablenode = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enableshfuncnode, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !2
  %16 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %freenode = getelementptr inbounds %struct.hashtable* %16, i32 0, i32 14
  store void (%struct.hashnode*)* @freeshfuncnode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  %17 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %printnode = getelementptr inbounds %struct.hashtable* %17, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printshfuncnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !2
  ret void
}

define internal %struct.hashnode* @removeshfuncnode(%struct.hashtable* nocapture %ht, i8* %nam) nounwind {
entry:
  %call55 = tail call i32 @strncmp(i8* %nam, i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i32 4) nounwind readonly
  %tobool56 = icmp eq i32 %call55, 0
  br i1 %tobool56, label %land.lhs.true57, label %if.else

land.lhs.true57:                                  ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %nam, i32 4
  %call58 = tail call i32 @getsignum(i8* %add.ptr) nounwind
  %cmp61 = icmp eq i32 %call58, -1
  br i1 %cmp61, label %if.else, label %if.then63

if.then63:                                        ; preds = %land.lhs.true57
  %call64 = tail call %struct.hashnode* @removetrap(i32 %call58) nounwind
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true57, %entry
  %0 = load %struct.hashtable** @shfunctab, align 4, !tbaa !2
  %call65 = tail call %struct.hashnode* @removehashnode(%struct.hashtable* %0, i8* %nam)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then63
  %hn.0 = phi %struct.hashnode* [ %call65, %if.else ], [ %call64, %if.then63 ]
  ret %struct.hashnode* %hn.0
}

define internal void @disableshfuncnode(%struct.hashnode* nocapture %hn, i32 %flags) nounwind {
entry:
  %flags3 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %0 = load i32* %flags3, align 4, !tbaa !3
  %or = or i32 %0, 1
  store i32 %or, i32* %flags3, align 4, !tbaa !3
  %nam59 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %1 = load i8** %nam59, align 4, !tbaa !2
  %call62 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i32 4) nounwind readonly
  %tobool63 = icmp eq i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end78

if.then64:                                        ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %1, i32 4
  %call66 = tail call i32 @getsignum(i8* %add.ptr) nounwind
  %cmp69 = icmp eq i32 %call66, -1
  br i1 %cmp69, label %if.end78, label %cont75

cont75:                                           ; preds = %if.then64
  %arrayidx76 = getelementptr inbounds [34 x i32]* @sigtrapped, i32 0, i32 %call66
  %2 = load i32* %arrayidx76, align 4, !tbaa !3
  %and = and i32 %2, -5
  store i32 %and, i32* %arrayidx76, align 4, !tbaa !3
  tail call void @unsettrap(i32 %call66) nounwind
  br label %if.end78

if.end78:                                         ; preds = %if.then64, %entry, %cont75
  ret void
}

define internal void @enableshfuncnode(%struct.hashnode* nocapture %hn, i32 %flags) nounwind {
entry:
  %flags3 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %0 = load i32* %flags3, align 4, !tbaa !3
  %and = and i32 %0, -2
  store i32 %and, i32* %flags3, align 4, !tbaa !3
  %nam62 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %1 = load i8** %nam62, align 4, !tbaa !2
  %call65 = tail call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i32 4) nounwind readonly
  %tobool66 = icmp eq i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end82

if.then67:                                        ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %1, i32 4
  %call70 = tail call i32 @getsignum(i8* %add.ptr) nounwind
  %cmp73 = icmp eq i32 %call70, -1
  br i1 %cmp73, label %if.end82, label %cont79

cont79:                                           ; preds = %if.then67
  %call80 = tail call i32 @settrap(i32 %call70, %struct.eprog* null, i32 4) nounwind
  br label %if.end82

if.end82:                                         ; preds = %if.then67, %entry, %cont79
  ret void
}

define internal void @freeshfuncnode(%struct.hashnode* %hn) nounwind {
entry:
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  tail call void @zsfree(i8* %0) nounwind
  %funcdef = getelementptr inbounds %struct.hashnode* %hn, i32 2
  %1 = bitcast %struct.hashnode* %funcdef to %struct.eprog**
  %2 = load %struct.eprog** %1, align 4, !tbaa !2
  %tobool = icmp eq %struct.eprog* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @freeeprog(%struct.eprog* %2) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %filename = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %3 = bitcast %struct.hashnode* %filename to i8**
  %4 = load i8** %3, align 4, !tbaa !2
  tail call void @zsfree(i8* %4) nounwind
  %5 = bitcast %struct.hashnode* %hn to i8*
  tail call void @zfree(i8* %5, i32 32) nounwind
  ret void
}

define internal void @printshfuncnode(%struct.hashnode* nocapture %hn, i32 %printflags) nounwind {
entry:
  %and = and i32 %printflags, 1
  %tobool = icmp ne i32 %and, 0
  %0 = and i32 %printflags, 640
  %1 = icmp eq i32 %0, 128
  %or.cond = or i1 %tobool, %1
  br i1 %or.cond, label %if.then, label %cont23

if.then:                                          ; preds = %entry
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %2 = load i8** %nam, align 4, !tbaa !2
  %3 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call = tail call i32 @zputs(i8* %2, %struct._IO_FILE* %3) nounwind
  %4 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4) nounwind
  br label %if.end117

cont23:                                           ; preds = %entry
  %and13 = and i32 %printflags, 512
  %tobool14 = icmp eq i32 %and13, 0
  %and24 = and i32 %printflags, 1088
  %tobool25 = icmp ne i32 %and24, 0
  %or.cond139 = and i1 %tobool25, %tobool14
  %nam35 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %5 = load i8** %nam35, align 4, !tbaa !2
  %6 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  br i1 %or.cond139, label %if.then33, label %if.end44

if.then33:                                        ; preds = %cont23
  %call36 = tail call i32 @mb_niceformat(i8* %5, %struct._IO_FILE* %6, i8** null, i32 0) nounwind
  %and41 = and i32 %printflags, 1024
  %tobool42 = icmp ne i32 %and41, 0
  %cond = select i1 %tobool42, i8* getelementptr inbounds ([12 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str54, i32 0, i32 0)
  %call43 = tail call i32 (i8*, ...)* @printf(i8* %cond) nounwind
  br label %if.end117

if.end44:                                         ; preds = %cont23
  %call47 = tail call i32 @quotedzputs(i8* %5, %struct._IO_FILE* %6) nounwind
  %funcdef = getelementptr inbounds %struct.hashnode* %hn, i32 2
  %7 = bitcast %struct.hashnode* %funcdef to %struct.eprog**
  %8 = load %struct.eprog** %7, align 4, !tbaa !2
  %tobool48 = icmp eq %struct.eprog* %8, null
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  br i1 %tobool48, label %lor.lhs.false49, label %if.then57

lor.lhs.false49:                                  ; preds = %if.end44
  %9 = load i32* %flags, align 4, !tbaa !3
  %and55 = and i32 %9, 512
  %tobool56 = icmp eq i32 %and55, 0
  br i1 %tobool56, label %if.else115, label %if.then57

if.then57:                                        ; preds = %if.end44, %lor.lhs.false49
  %call58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str55, i32 0, i32 0)) nounwind
  %10 = load i32* %flags, align 4, !tbaa !3
  %and65 = and i32 %10, 512
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then57
  %11 = load i8* @hashchar, align 1, !tbaa !0
  %conv = zext i8 %11 to i32
  %call68 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str56, i32 0, i32 0), i32 %conv) nounwind
  br label %if.end71

if.else:                                          ; preds = %if.then57
  %12 = load %struct.eprog** %7, align 4, !tbaa !2
  %call70 = tail call i8* @getpermtext(%struct.eprog* %12, i32* null, i32 1) nounwind
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then67
  %t.0 = phi i8* [ null, %if.then67 ], [ %call70, %if.else ]
  %13 = load i32* %flags, align 4, !tbaa !3
  %and78 = and i32 %13, 2048
  %tobool79 = icmp eq i32 %and78, 0
  br i1 %tobool79, label %if.end83, label %if.then80

if.then80:                                        ; preds = %if.end71
  %14 = load i8* @hashchar, align 1, !tbaa !0
  %conv81 = zext i8 %14 to i32
  %call82 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str57, i32 0, i32 0), i32 %conv81) nounwind
  br label %if.end83

if.end83:                                         ; preds = %if.end71, %if.then80
  %tobool84 = icmp eq i8* %t.0, null
  %15 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  br i1 %tobool84, label %if.then85, label %if.else100

if.then85:                                        ; preds = %if.end83
  %call86 = tail call i32 @zputs(i8* getelementptr inbounds ([20 x i8]* @.str59, i32 0, i32 0), %struct._IO_FILE* %15) nounwind
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.then85
  %16 = phi i32 [ 85, %if.then85 ], [ %phitmp, %for.cond.backedge.for.body_crit_edge ]
  %fl.0143 = phi i32 [ 0, %if.then85 ], [ %21, %for.cond.backedge.for.body_crit_edge ]
  %17 = load i32* %flags, align 4, !tbaa !3
  %arrayidx90 = getelementptr inbounds [5 x i32]* @printshfuncnode.flgs, i32 0, i32 %fl.0143
  %18 = load i32* %arrayidx90, align 4, !tbaa !3
  %and91 = and i32 %18, %17
  %tobool92 = icmp eq i32 %and91, 0
  br i1 %tobool92, label %for.inc, label %if.then93

if.then93:                                        ; preds = %for.body
  %19 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i140 = tail call i32 @_IO_putc(i32 %16, %struct._IO_FILE* %19) nounwind
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then93
  %20 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %fl.0143, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb98, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb98
  %tobool87 = icmp eq i32 %21, 4
  br i1 %tobool87, label %if.end113, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  %arrayidx = getelementptr inbounds [5 x i8]* @.str58, i32 0, i32 %21
  %23 = load i8* %arrayidx, align 1, !tbaa !0
  %phitmp = sext i8 %23 to i32
  br label %for.body

ioc_bb98:                                         ; preds = %for.inc
  %24 = sext i32 %fl.0143 to i64
  tail call void @__ioc_report_add_overflow(i32 742, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.else100:                                       ; preds = %if.end83
  %call101 = tail call i32 @zputs(i8* %t.0, %struct._IO_FILE* %15) nounwind
  tail call void @zsfree(i8* %t.0) nounwind
  %25 = load %struct.eprog** %7, align 4, !tbaa !2
  %flags103 = getelementptr inbounds %struct.eprog* %25, i32 0, i32 0
  %26 = load i32* %flags103, align 4, !tbaa !3
  %and104 = and i32 %26, 8
  %tobool105 = icmp eq i32 %and104, 0
  br i1 %tobool105, label %if.end113, label %if.then106

if.then106:                                       ; preds = %if.else100
  %call107 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str60, i32 0, i32 0)) nounwind
  %27 = load i8** %nam35, align 4, !tbaa !2
  %28 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call110 = tail call i32 @quotedzputs(i8* %27, %struct._IO_FILE* %28) nounwind
  %call111 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str61, i32 0, i32 0)) nounwind
  br label %if.end113

if.end113:                                        ; preds = %for.cond.backedge, %if.else100, %if.then106
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str, i32 0, i32 0))
  br label %if.end117

if.else115:                                       ; preds = %lor.lhs.false49
  %puts141 = tail call i32 @puts(i8* getelementptr inbounds ([8 x i8]* @str71, i32 0, i32 0))
  br label %if.end117

if.end117:                                        ; preds = %if.then, %if.then33, %if.else115, %if.end113
  ret void
}

define void @createreswdtable() nounwind {
entry:
  %call.i = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call.i to %struct.hashtable*
  %call3.i = tail call i8* @zshcalloc(i32 92) nounwind
  %1 = bitcast i8* %call3.i to %struct.hashnode**
  %nodes.i = getelementptr inbounds i8* %call.i, i32 8
  %2 = bitcast i8* %nodes.i to %struct.hashnode***
  store %struct.hashnode** %1, %struct.hashnode*** %2, align 4, !tbaa !2
  %hsize.i = bitcast i8* %call.i to i32*
  store i32 23, i32* %hsize.i, align 4, !tbaa !3
  %ct.i = getelementptr inbounds i8* %call.i, i32 4
  %3 = bitcast i8* %ct.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %scan.i = getelementptr inbounds i8* %call.i, i32 68
  %4 = bitcast i8* %scan.i to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %4, align 4, !tbaa !2
  %scantab.i = getelementptr inbounds i8* %call.i, i32 64
  %5 = bitcast i8* %scantab.i to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %5, align 4, !tbaa !2
  store %struct.hashtable* %0, %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %hash = getelementptr inbounds i8* %call.i, i32 16
  %6 = bitcast i8* %hash to i32 (i8*)**
  store i32 (i8*)* @hasher, i32 (i8*)** %6, align 4, !tbaa !2
  %7 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %emptytable = getelementptr inbounds %struct.hashtable* %7, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  %8 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %filltable = getelementptr inbounds %struct.hashtable* %8, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !2
  %9 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %cmpnodes = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %10 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %10, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %11 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %11, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %12 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %getnode2 = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !2
  %13 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %removenode = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* null, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !2
  %14 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %disablenode = getelementptr inbounds %struct.hashtable* %14, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !2
  %15 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %enablenode = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !2
  %16 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %freenode = getelementptr inbounds %struct.hashtable* %16, i32 0, i32 14
  store void (%struct.hashnode*)* null, void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  %17 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %printnode = getelementptr inbounds %struct.hashtable* %17, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printreswdnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !2
  %18 = load i8** getelementptr inbounds ([25 x %struct.reswd]* @reswds, i32 0, i32 0, i32 0, i32 1), align 4, !tbaa !2
  %tobool7 = icmp eq i8* %18, null
  br i1 %tobool7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %19 = phi i8* [ %23, %for.body ], [ %18, %entry ]
  %rw.08 = phi %struct.reswd* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([25 x %struct.reswd]* @reswds, i32 0, i32 0), %entry ]
  %20 = load %struct.hashtable** @reswdtab, align 4, !tbaa !2
  %addnode1 = getelementptr inbounds %struct.hashtable* %20, i32 0, i32 8
  %21 = load void (%struct.hashtable*, i8*, i8*)** %addnode1, align 4, !tbaa !2
  %22 = bitcast %struct.reswd* %rw.08 to i8*
  tail call void %21(%struct.hashtable* %20, i8* %19, i8* %22) nounwind
  %incdec.ptr = getelementptr inbounds %struct.reswd* %rw.08, i32 1
  %nam = getelementptr inbounds %struct.reswd* %rw.08, i32 1, i32 0, i32 1
  %23 = load i8** %nam, align 4, !tbaa !2
  %tobool = icmp eq i8* %23, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

define internal void @printreswdnode(%struct.hashnode* nocapture %hn, i32 %printflags) nounwind {
entry:
  %and = and i32 %printflags, 1024
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont6, label %if.then

if.then:                                          ; preds = %entry
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0), i8* %0) nounwind
  br label %return

cont6:                                            ; preds = %entry
  %and7 = and i32 %printflags, 32
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %cont17, label %if.then9

if.then9:                                         ; preds = %cont6
  %nam11 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %1 = load i8** %nam11, align 4, !tbaa !2
  %call12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str26, i32 0, i32 0), i8* %1) nounwind
  br label %return

cont17:                                           ; preds = %cont6
  %and18 = and i32 %printflags, 64
  %tobool19 = icmp eq i32 %and18, 0
  %nam22 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %2 = load i8** %nam22, align 4, !tbaa !2
  br i1 %tobool19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %cont17
  %call23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str27, i32 0, i32 0), i8* %2) nounwind
  br label %return

if.end24:                                         ; preds = %cont17
  %puts = tail call i32 @puts(i8* %2)
  br label %return

return:                                           ; preds = %if.end24, %if.then20, %if.then9, %if.then
  ret void
}

define void @createaliastable(%struct.hashtable* nocapture %ht) nounwind {
entry:
  %hash = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 4
  store i32 (i8*)* @hasher, i32 (i8*)** %hash, align 4, !tbaa !2
  %emptytable = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 5
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  %filltable = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !2
  %cmpnodes = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 7
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %getnode2 = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !2
  %removenode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !2
  %disablenode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 12
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !2
  %enablenode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 13
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !2
  %freenode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 14
  store void (%struct.hashnode*)* @freealiasnode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  %printnode = getelementptr inbounds %struct.hashtable* %ht, i32 0, i32 15
  store void (%struct.hashnode*, i32)* @printaliasnode, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !2
  ret void
}

define internal void @freealiasnode(%struct.hashnode* %hn) nounwind {
entry:
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  tail call void @zsfree(i8* %0) nounwind
  %text = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %1 = bitcast %struct.hashnode* %text to i8**
  %2 = load i8** %1, align 4, !tbaa !2
  tail call void @zsfree(i8* %2) nounwind
  %3 = bitcast %struct.hashnode* %hn to i8*
  tail call void @zfree(i8* %3, i32 20) nounwind
  ret void
}

define internal void @printaliasnode(%struct.hashnode* nocapture %hn, i32 %printflags) nounwind {
entry:
  %and = and i32 %printflags, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cont7, label %if.then

if.then:                                          ; preds = %entry
  %nam = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %0 = load i8** %nam, align 4, !tbaa !2
  %1 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call = tail call i32 @zputs(i8* %0, %struct._IO_FILE* %1) nounwind
  %2 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2) nounwind
  br label %return

cont7:                                            ; preds = %entry
  %and8 = and i32 %printflags, 1024
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %cont18, label %if.then10

if.then10:                                        ; preds = %cont7
  %nam12 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %3 = load i8** %nam12, align 4, !tbaa !2
  %call13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str11, i32 0, i32 0), i8* %3) nounwind
  br label %return

cont18:                                           ; preds = %cont7
  %and19 = and i32 %printflags, 128
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %cont28, label %if.then21

if.then21:                                        ; preds = %cont18
  %text = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %4 = bitcast %struct.hashnode* %text to i8**
  %5 = load i8** %4, align 4, !tbaa !2
  %6 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call22 = tail call i32 @zputs(i8* %5, %struct._IO_FILE* %6) nounwind
  %7 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i168 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7) nounwind
  br label %return

cont28:                                           ; preds = %cont18
  %and29 = and i32 %printflags, 32
  %tobool30 = icmp eq i32 %and29, 0
  br i1 %tobool30, label %cont65, label %if.then31

if.then31:                                        ; preds = %cont28
  %nam33 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %8 = load i8** %nam33, align 4, !tbaa !2
  %9 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call34 = tail call i32 @mb_niceformat(i8* %8, %struct._IO_FILE* %9, i8** null, i32 0) nounwind
  %call35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0)) nounwind
  %flags = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %10 = load i32* %flags, align 4, !tbaa !3
  %and41 = and i32 %10, 4
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.then31
  %call44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0)) nounwind
  br label %if.end56

if.else:                                          ; preds = %if.then31
  %and51 = and i32 %10, 2
  %tobool52 = icmp eq i32 %and51, 0
  br i1 %tobool52, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.else
  %call54 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0)) nounwind
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53, %if.then43
  %call57 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str15, i32 0, i32 0)) nounwind
  %text58 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %11 = bitcast %struct.hashnode* %text58 to i8**
  %12 = load i8** %11, align 4, !tbaa !2
  %13 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call59 = tail call i32 @mb_niceformat(i8* %12, %struct._IO_FILE* %13, i8** null, i32 0) nounwind
  %14 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i169 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %14) nounwind
  br label %return

cont65:                                           ; preds = %cont28
  %and66 = and i32 %printflags, 64
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %cont106, label %if.then68

if.then68:                                        ; preds = %cont65
  %nam70 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %15 = load i8** %nam70, align 4, !tbaa !2
  %16 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call71 = tail call i32 @mb_niceformat(i8* %15, %struct._IO_FILE* %16, i8** null, i32 0) nounwind
  %call72 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0)) nounwind
  %flags74 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %17 = load i32* %flags74, align 4, !tbaa !3
  %and79 = and i32 %17, 4
  %tobool80 = icmp eq i32 %and79, 0
  br i1 %tobool80, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.then68
  %call82 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0)) nounwind
  br label %if.end97

if.else83:                                        ; preds = %if.then68
  %and90 = and i32 %17, 2
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.else83
  %call93 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0)) nounwind
  br label %if.end97

if.else94:                                        ; preds = %if.else83
  %putchar = tail call i32 @putchar(i32 110)
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.else94, %if.then81
  %call98 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str20, i32 0, i32 0)) nounwind
  %text99 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %18 = bitcast %struct.hashnode* %text99 to i8**
  %19 = load i8** %18, align 4, !tbaa !2
  %20 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call100 = tail call i32 @mb_niceformat(i8* %19, %struct._IO_FILE* %20, i8** null, i32 0) nounwind
  %21 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i170 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %21) nounwind
  br label %return

cont106:                                          ; preds = %cont65
  %and107 = and i32 %printflags, 4
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %cont106.if.end140_crit_edge, label %if.then109

cont106.if.end140_crit_edge:                      ; preds = %cont106
  %nam142.pre = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  br label %if.end140

if.then109:                                       ; preds = %cont106
  %call110 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str21, i32 0, i32 0)) nounwind
  %flags112 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 2
  %22 = load i32* %flags112, align 4, !tbaa !3
  %and117 = and i32 %22, 4
  %tobool118 = icmp eq i32 %and117, 0
  br i1 %tobool118, label %if.else121, label %if.then119

if.then119:                                       ; preds = %if.then109
  %call120 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0)) nounwind
  br label %if.end133

if.else121:                                       ; preds = %if.then109
  %and128 = and i32 %22, 2
  %tobool129 = icmp eq i32 %and128, 0
  br i1 %tobool129, label %if.end133, label %if.then130

if.then130:                                       ; preds = %if.else121
  %call131 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0)) nounwind
  br label %if.end133

if.end133:                                        ; preds = %if.else121, %if.then130, %if.then119
  %nam135 = getelementptr inbounds %struct.hashnode* %hn, i32 0, i32 1
  %23 = load i8** %nam135, align 4, !tbaa !2
  %24 = load i8* %23, align 1, !tbaa !0
  %cmp = icmp eq i8 %24, 45
  br i1 %cmp, label %if.then137, label %if.end140

if.then137:                                       ; preds = %if.end133
  %call138 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0)) nounwind
  br label %if.end140

if.end140:                                        ; preds = %cont106.if.end140_crit_edge, %if.end133, %if.then137
  %nam142.pre-phi = phi i8** [ %nam142.pre, %cont106.if.end140_crit_edge ], [ %nam135, %if.end133 ], [ %nam135, %if.then137 ]
  %25 = load i8** %nam142.pre-phi, align 4, !tbaa !2
  %26 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call143 = tail call i32 @quotedzputs(i8* %25, %struct._IO_FILE* %26) nounwind
  %27 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i171 = tail call i32 @_IO_putc(i32 61, %struct._IO_FILE* %27) nounwind
  %text145 = getelementptr inbounds %struct.hashnode* %hn, i32 1
  %28 = bitcast %struct.hashnode* %text145 to i8**
  %29 = load i8** %28, align 4, !tbaa !2
  %30 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call146 = tail call i32 @quotedzputs(i8* %29, %struct._IO_FILE* %30) nounwind
  %31 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call.i172 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %31) nounwind
  br label %return

return:                                           ; preds = %if.end140, %if.end97, %if.end56, %if.then21, %if.then10, %if.then
  ret void
}

define void @createaliastables() nounwind {
entry:
  %call.i = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call.i to %struct.hashtable*
  %call3.i = tail call i8* @zshcalloc(i32 92) nounwind
  %1 = bitcast i8* %call3.i to %struct.hashnode**
  %nodes.i = getelementptr inbounds i8* %call.i, i32 8
  %2 = bitcast i8* %nodes.i to %struct.hashnode***
  store %struct.hashnode** %1, %struct.hashnode*** %2, align 4, !tbaa !2
  %hsize.i = bitcast i8* %call.i to i32*
  store i32 23, i32* %hsize.i, align 4, !tbaa !3
  %ct.i = getelementptr inbounds i8* %call.i, i32 4
  %3 = bitcast i8* %ct.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %scan.i = getelementptr inbounds i8* %call.i, i32 68
  %4 = bitcast i8* %scan.i to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %4, align 4, !tbaa !2
  %scantab.i = getelementptr inbounds i8* %call.i, i32 64
  %5 = bitcast i8* %scantab.i to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %5, align 4, !tbaa !2
  store %struct.hashtable* %0, %struct.hashtable** @aliastab, align 4, !tbaa !2
  %hash.i = getelementptr inbounds i8* %call.i, i32 16
  %6 = bitcast i8* %hash.i to i32 (i8*)**
  store i32 (i8*)* @hasher, i32 (i8*)** %6, align 4, !tbaa !2
  %emptytable.i = getelementptr inbounds i8* %call.i, i32 20
  %7 = bitcast i8* %emptytable.i to void (%struct.hashtable*)**
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %7, align 4, !tbaa !2
  %filltable.i = getelementptr inbounds i8* %call.i, i32 24
  %8 = bitcast i8* %filltable.i to void (%struct.hashtable*)**
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %8, align 4, !tbaa !2
  %cmpnodes.i = getelementptr inbounds i8* %call.i, i32 28
  %9 = bitcast i8* %cmpnodes.i to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %9, align 4, !tbaa !2
  %addnode.i = getelementptr inbounds i8* %call.i, i32 32
  %10 = bitcast i8* %addnode.i to void (%struct.hashtable*, i8*, i8*)**
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %10, align 4, !tbaa !2
  %getnode.i = getelementptr inbounds i8* %call.i, i32 36
  %11 = bitcast i8* %getnode.i to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %11, align 4, !tbaa !2
  %getnode2.i = getelementptr inbounds i8* %call.i, i32 40
  %12 = bitcast i8* %getnode2.i to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %12, align 4, !tbaa !2
  %removenode.i = getelementptr inbounds i8* %call.i, i32 44
  %13 = bitcast i8* %removenode.i to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %13, align 4, !tbaa !2
  %disablenode.i = getelementptr inbounds i8* %call.i, i32 48
  %14 = bitcast i8* %disablenode.i to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %14, align 4, !tbaa !2
  %enablenode.i = getelementptr inbounds i8* %call.i, i32 52
  %15 = bitcast i8* %enablenode.i to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %15, align 4, !tbaa !2
  %freenode.i = getelementptr inbounds i8* %call.i, i32 56
  %16 = bitcast i8* %freenode.i to void (%struct.hashnode*)**
  store void (%struct.hashnode*)* @freealiasnode, void (%struct.hashnode*)** %16, align 4, !tbaa !2
  %printnode.i = getelementptr inbounds i8* %call.i, i32 60
  %17 = bitcast i8* %printnode.i to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @printaliasnode, void (%struct.hashnode*, i32)** %17, align 4, !tbaa !2
  %18 = load %struct.hashtable** @aliastab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %18, i32 0, i32 8
  %19 = load void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %call1 = tail call i8* @ztrdup(i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0)) nounwind
  %call2 = tail call i8* @ztrdup(i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0)) nounwind
  %call.i9 = tail call i8* @zshcalloc(i32 20) nounwind
  %flags1.i = getelementptr inbounds i8* %call.i9, i32 8
  %20 = bitcast i8* %flags1.i to i32*
  store i32 0, i32* %20, align 4, !tbaa !3
  %text.i = getelementptr inbounds i8* %call.i9, i32 12
  %21 = bitcast i8* %text.i to i8**
  store i8* %call2, i8** %21, align 4, !tbaa !2
  %inuse.i = getelementptr inbounds i8* %call.i9, i32 16
  %22 = bitcast i8* %inuse.i to i32*
  store i32 0, i32* %22, align 4, !tbaa !3
  tail call void %19(%struct.hashtable* %18, i8* %call1, i8* %call.i9) nounwind
  %23 = load %struct.hashtable** @aliastab, align 4, !tbaa !2
  %addnode4 = getelementptr inbounds %struct.hashtable* %23, i32 0, i32 8
  %24 = load void (%struct.hashtable*, i8*, i8*)** %addnode4, align 4, !tbaa !2
  %call5 = tail call i8* @ztrdup(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)) nounwind
  %call6 = tail call i8* @ztrdup(i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0)) nounwind
  %call.i10 = tail call i8* @zshcalloc(i32 20) nounwind
  %flags1.i11 = getelementptr inbounds i8* %call.i10, i32 8
  %25 = bitcast i8* %flags1.i11 to i32*
  store i32 0, i32* %25, align 4, !tbaa !3
  %text.i12 = getelementptr inbounds i8* %call.i10, i32 12
  %26 = bitcast i8* %text.i12 to i8**
  store i8* %call6, i8** %26, align 4, !tbaa !2
  %inuse.i13 = getelementptr inbounds i8* %call.i10, i32 16
  %27 = bitcast i8* %inuse.i13 to i32*
  store i32 0, i32* %27, align 4, !tbaa !3
  tail call void %24(%struct.hashtable* %23, i8* %call5, i8* %call.i10) nounwind
  %call.i14 = tail call i8* @zshcalloc(i32 72) nounwind
  %28 = bitcast i8* %call.i14 to %struct.hashtable*
  %call3.i16 = tail call i8* @zshcalloc(i32 44) nounwind
  %29 = bitcast i8* %call3.i16 to %struct.hashnode**
  %nodes.i17 = getelementptr inbounds i8* %call.i14, i32 8
  %30 = bitcast i8* %nodes.i17 to %struct.hashnode***
  store %struct.hashnode** %29, %struct.hashnode*** %30, align 4, !tbaa !2
  %hsize.i18 = bitcast i8* %call.i14 to i32*
  store i32 11, i32* %hsize.i18, align 4, !tbaa !3
  %ct.i19 = getelementptr inbounds i8* %call.i14, i32 4
  %31 = bitcast i8* %ct.i19 to i32*
  store i32 0, i32* %31, align 4, !tbaa !3
  %scan.i20 = getelementptr inbounds i8* %call.i14, i32 68
  %32 = bitcast i8* %scan.i20 to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %32, align 4, !tbaa !2
  %scantab.i21 = getelementptr inbounds i8* %call.i14, i32 64
  %33 = bitcast i8* %scantab.i21 to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %33, align 4, !tbaa !2
  store %struct.hashtable* %28, %struct.hashtable** @sufaliastab, align 4, !tbaa !2
  %hash.i23 = getelementptr inbounds i8* %call.i14, i32 16
  %34 = bitcast i8* %hash.i23 to i32 (i8*)**
  store i32 (i8*)* @hasher, i32 (i8*)** %34, align 4, !tbaa !2
  %emptytable.i24 = getelementptr inbounds i8* %call.i14, i32 20
  %35 = bitcast i8* %emptytable.i24 to void (%struct.hashtable*)**
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %35, align 4, !tbaa !2
  %filltable.i25 = getelementptr inbounds i8* %call.i14, i32 24
  %36 = bitcast i8* %filltable.i25 to void (%struct.hashtable*)**
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %36, align 4, !tbaa !2
  %cmpnodes.i26 = getelementptr inbounds i8* %call.i14, i32 28
  %37 = bitcast i8* %cmpnodes.i26 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)** %37, align 4, !tbaa !2
  %addnode.i27 = getelementptr inbounds i8* %call.i14, i32 32
  %38 = bitcast i8* %addnode.i27 to void (%struct.hashtable*, i8*, i8*)**
  store void (%struct.hashtable*, i8*, i8*)* @addhashnode, void (%struct.hashtable*, i8*, i8*)** %38, align 4, !tbaa !2
  %getnode.i28 = getelementptr inbounds i8* %call.i14, i32 36
  %39 = bitcast i8* %getnode.i28 to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %39, align 4, !tbaa !2
  %getnode2.i29 = getelementptr inbounds i8* %call.i14, i32 40
  %40 = bitcast i8* %getnode2.i29 to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %40, align 4, !tbaa !2
  %removenode.i30 = getelementptr inbounds i8* %call.i14, i32 44
  %41 = bitcast i8* %removenode.i30 to %struct.hashnode* (%struct.hashtable*, i8*)**
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %41, align 4, !tbaa !2
  %disablenode.i31 = getelementptr inbounds i8* %call.i14, i32 48
  %42 = bitcast i8* %disablenode.i31 to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @disablehashnode, void (%struct.hashnode*, i32)** %42, align 4, !tbaa !2
  %enablenode.i32 = getelementptr inbounds i8* %call.i14, i32 52
  %43 = bitcast i8* %enablenode.i32 to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @enablehashnode, void (%struct.hashnode*, i32)** %43, align 4, !tbaa !2
  %freenode.i33 = getelementptr inbounds i8* %call.i14, i32 56
  %44 = bitcast i8* %freenode.i33 to void (%struct.hashnode*)**
  store void (%struct.hashnode*)* @freealiasnode, void (%struct.hashnode*)** %44, align 4, !tbaa !2
  %printnode.i34 = getelementptr inbounds i8* %call.i14, i32 60
  %45 = bitcast i8* %printnode.i34 to void (%struct.hashnode*, i32)**
  store void (%struct.hashnode*, i32)* @printaliasnode, void (%struct.hashnode*, i32)** %45, align 4, !tbaa !2
  ret void
}

define %struct.alias* @createaliasnode(i8* %txt, i32 %flags) nounwind {
entry:
  %call = tail call i8* @zshcalloc(i32 20) nounwind
  %0 = bitcast i8* %call to %struct.alias*
  %flags1 = getelementptr inbounds i8* %call, i32 8
  %1 = bitcast i8* %flags1 to i32*
  store i32 %flags, i32* %1, align 4, !tbaa !3
  %text = getelementptr inbounds i8* %call, i32 12
  %2 = bitcast i8* %text to i8**
  store i8* %txt, i8** %2, align 4, !tbaa !2
  %inuse = getelementptr inbounds i8* %call, i32 16
  %3 = bitcast i8* %inuse to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  ret %struct.alias* %0
}

define void @createhisttable() nounwind {
entry:
  %call.i = tail call i8* @zshcalloc(i32 72) nounwind
  %0 = bitcast i8* %call.i to %struct.hashtable*
  %call3.i = tail call i8* @zshcalloc(i32 2396) nounwind
  %1 = bitcast i8* %call3.i to %struct.hashnode**
  %nodes.i = getelementptr inbounds i8* %call.i, i32 8
  %2 = bitcast i8* %nodes.i to %struct.hashnode***
  store %struct.hashnode** %1, %struct.hashnode*** %2, align 4, !tbaa !2
  %hsize.i = bitcast i8* %call.i to i32*
  store i32 599, i32* %hsize.i, align 4, !tbaa !3
  %ct.i = getelementptr inbounds i8* %call.i, i32 4
  %3 = bitcast i8* %ct.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %scan.i = getelementptr inbounds i8* %call.i, i32 68
  %4 = bitcast i8* %scan.i to %struct.scanstatus**
  store %struct.scanstatus* null, %struct.scanstatus** %4, align 4, !tbaa !2
  %scantab.i = getelementptr inbounds i8* %call.i, i32 64
  %5 = bitcast i8* %scantab.i to void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)**
  store void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)* null, void (%struct.hashtable*, void (%struct.hashnode*, i32)*, i32)** %5, align 4, !tbaa !2
  store %struct.hashtable* %0, %struct.hashtable** @histtab, align 4, !tbaa !2
  %hash = getelementptr inbounds i8* %call.i, i32 16
  %6 = bitcast i8* %hash to i32 (i8*)**
  store i32 (i8*)* @histhasher, i32 (i8*)** %6, align 4, !tbaa !2
  %7 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %emptytable = getelementptr inbounds %struct.hashtable* %7, i32 0, i32 5
  store void (%struct.hashtable*)* @emptyhisttable, void (%struct.hashtable*)** %emptytable, align 4, !tbaa !2
  %8 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %filltable = getelementptr inbounds %struct.hashtable* %8, i32 0, i32 6
  store void (%struct.hashtable*)* null, void (%struct.hashtable*)** %filltable, align 4, !tbaa !2
  %9 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %cmpnodes = getelementptr inbounds %struct.hashtable* %9, i32 0, i32 7
  store i32 (i8*, i8*)* @histstrcmp, i32 (i8*, i8*)** %cmpnodes, align 4, !tbaa !2
  %10 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %addnode = getelementptr inbounds %struct.hashtable* %10, i32 0, i32 8
  store void (%struct.hashtable*, i8*, i8*)* @addhistnode, void (%struct.hashtable*, i8*, i8*)** %addnode, align 4, !tbaa !2
  %11 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %getnode = getelementptr inbounds %struct.hashtable* %11, i32 0, i32 9
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode, align 4, !tbaa !2
  %12 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %getnode2 = getelementptr inbounds %struct.hashtable* %12, i32 0, i32 10
  store %struct.hashnode* (%struct.hashtable*, i8*)* @gethashnode2, %struct.hashnode* (%struct.hashtable*, i8*)** %getnode2, align 4, !tbaa !2
  %13 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %removenode = getelementptr inbounds %struct.hashtable* %13, i32 0, i32 11
  store %struct.hashnode* (%struct.hashtable*, i8*)* @removehashnode, %struct.hashnode* (%struct.hashtable*, i8*)** %removenode, align 4, !tbaa !2
  %14 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %disablenode = getelementptr inbounds %struct.hashtable* %14, i32 0, i32 12
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %disablenode, align 4, !tbaa !2
  %15 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %enablenode = getelementptr inbounds %struct.hashtable* %15, i32 0, i32 13
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %enablenode, align 4, !tbaa !2
  %16 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %freenode = getelementptr inbounds %struct.hashtable* %16, i32 0, i32 14
  store void (%struct.hashnode*)* @freehistnode, void (%struct.hashnode*)** %freenode, align 4, !tbaa !2
  %17 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %printnode = getelementptr inbounds %struct.hashtable* %17, i32 0, i32 15
  store void (%struct.hashnode*, i32)* null, void (%struct.hashnode*, i32)** %printnode, align 4, !tbaa !2
  ret void
}

define i32 @histhasher(i8* nocapture %str) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cont2, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %cont2 ]
  %0 = load i8* %str.addr.0, align 1, !tbaa !0
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont2, label %ioc_bb1

ioc_bb1:                                          ; preds = %while.cond
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 962, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb1, %while.cond
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %3, 8
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %str.addr.0, i32 1
  br i1 %tobool, label %while.cond7.outer, label %while.cond

while.cond7:                                      ; preds = %while.cond7.outer, %do.end
  %4 = phi i8 [ 0, %do.end ], [ %.pre, %while.cond7.outer ]
  %str.addr.1 = phi i8* [ %incdec.ptr22, %do.end ], [ %str.addr.1.ph, %while.cond7.outer ]
  %tobool8 = icmp eq i8 %4, 0
  br i1 %tobool8, label %while.end55, label %while.body9

while.body9:                                      ; preds = %while.cond7
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont12, label %ioc_bb11

ioc_bb11:                                         ; preds = %while.body9
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 965, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb11, %while.body9
  %idxprom13 = zext i8 %4 to i32
  %arrayidx14 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom13
  %7 = load i16* %arrayidx14, align 2, !tbaa !4
  %and20 = and i16 %7, 8
  %tobool21 = icmp eq i16 %and20, 0
  br i1 %tobool21, label %if.else, label %do.body

do.body:                                          ; preds = %cont12, %cont25
  %str.addr.2 = phi i8* [ %incdec.ptr22, %cont25 ], [ %str.addr.1, %cont12 ]
  %incdec.ptr22 = getelementptr inbounds i8* %str.addr.2, i32 1
  %8 = load i8* %incdec.ptr22, align 1, !tbaa !0
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %cont25, label %ioc_bb24

ioc_bb24:                                         ; preds = %do.body
  %10 = sext i8 %8 to i64
  tail call void @__ioc_report_conversion(i32 967, i32 45, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %10, i8 1) nounwind
  br label %cont25

cont25:                                           ; preds = %ioc_bb24, %do.body
  %idxprom26 = zext i8 %8 to i32
  %arrayidx27 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom26
  %11 = load i16* %arrayidx27, align 2, !tbaa !4
  %and33 = and i16 %11, 8
  %tobool34 = icmp eq i16 %and33, 0
  br i1 %tobool34, label %do.end, label %do.body

do.end:                                           ; preds = %cont25
  %12 = load i8* %incdec.ptr22, align 1, !tbaa !0
  %tobool35 = icmp eq i8 %12, 0
  br i1 %tobool35, label %while.cond7, label %if.then36

if.then36:                                        ; preds = %do.end
  %13 = zext i32 %hashval.0.ph to i64
  %shl = shl i32 %hashval.0.ph, 5
  %14 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %shl, i32 32)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.then36
  %17 = zext i32 %shl to i64
  tail call void @__ioc_report_add_overflow(i32 969, i32 35, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %17, i64 32, i8 5) nounwind
  br label %cont42

cont42:                                           ; preds = %if.then36, %ioc_bb41
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %hashval.0.ph, i32 %15)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb43, label %while.cond7.outer

while.cond7.outer:                                ; preds = %ioc_bb52, %cont51, %ioc_bb43, %cont42, %cont2
  %str.addr.1.ph = phi i8* [ %str.addr.0, %cont2 ], [ %incdec.ptr22, %cont42 ], [ %incdec.ptr22, %ioc_bb43 ], [ %incdec.ptr48, %cont51 ], [ %incdec.ptr48, %ioc_bb52 ]
  %hashval.0.ph = phi i32 [ 0, %cont2 ], [ %19, %cont42 ], [ %19, %ioc_bb43 ], [ %30, %cont51 ], [ %30, %ioc_bb52 ]
  %.pre = load i8* %str.addr.1.ph, align 1, !tbaa !0
  br label %while.cond7

ioc_bb43:                                         ; preds = %cont42
  %21 = zext i32 %15 to i64
  tail call void @__ioc_report_add_overflow(i32 969, i32 17, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %13, i64 %21, i8 5) nounwind
  br label %while.cond7.outer

if.else:                                          ; preds = %cont12
  %22 = zext i32 %hashval.0.ph to i64
  %shl47 = shl i32 %hashval.0.ph, 5
  %incdec.ptr48 = getelementptr inbounds i8* %str.addr.1, i32 1
  %23 = load i8* %str.addr.1, align 1, !tbaa !0
  %conv49 = zext i8 %23 to i32
  %24 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %shl47, i32 %conv49)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb50, label %cont51

ioc_bb50:                                         ; preds = %if.else
  %27 = zext i8 %23 to i64
  %28 = zext i32 %shl47 to i64
  tail call void @__ioc_report_add_overflow(i32 972, i32 33, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %28, i64 %27, i8 5) nounwind
  br label %cont51

cont51:                                           ; preds = %if.else, %ioc_bb50
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %hashval.0.ph, i32 %25)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb52, label %while.cond7.outer

ioc_bb52:                                         ; preds = %cont51
  %32 = zext i32 %25 to i64
  tail call void @__ioc_report_add_overflow(i32 972, i32 15, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %22, i64 %32, i8 5) nounwind
  br label %while.cond7.outer

while.end55:                                      ; preds = %while.cond7
  ret i32 %hashval.0.ph
}

define void @emptyhisttable(%struct.hashtable* nocapture %ht) nounwind {
entry:
  tail call void @emptyhashtable(%struct.hashtable* %ht)
  %0 = load %struct.histent** @hist_ring, align 4, !tbaa !2
  %tobool = icmp eq %struct.histent* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @histremovedups() nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

define i32 @histstrcmp(i8* nocapture %str1, i8* nocapture %str2) nounwind {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cont, %entry
  %str1.addr.0 = phi i8* [ %str1, %entry ], [ %incdec.ptr, %cont ]
  %0 = load i8* %str1.addr.0, align 1, !tbaa !0
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %while.cond
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 989, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %while.cond
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %3, 8
  %tobool = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %str1.addr.0, i32 1
  br i1 %tobool, label %while.cond5, label %while.cond

while.cond5:                                      ; preds = %cont, %cont8
  %str2.addr.0 = phi i8* [ %incdec.ptr19, %cont8 ], [ %str2, %cont ]
  %4 = load i8* %str2.addr.0, align 1, !tbaa !0
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %while.cond5
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 991, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %while.cond5
  %idxprom9 = zext i8 %4 to i32
  %arrayidx10 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom9
  %7 = load i16* %arrayidx10, align 2, !tbaa !4
  %and16 = and i16 %7, 8
  %tobool17 = icmp eq i16 %and16, 0
  %incdec.ptr19 = getelementptr inbounds i8* %str2.addr.0, i32 1
  br i1 %tobool17, label %while.cond21.preheader, label %while.cond5

while.cond21.preheader:                           ; preds = %cont8
  %8 = load i8* %str1.addr.0, align 1, !tbaa !0
  %tobool23116 = icmp eq i8 %8, 0
  br i1 %tobool23116, label %while.end89, label %land.rhs

land.rhs:                                         ; preds = %while.cond21.backedge, %while.cond21.preheader
  %9 = phi i8 [ %8, %while.cond21.preheader ], [ %28, %while.cond21.backedge ]
  %str2.addr.1118 = phi i8* [ %str2.addr.0, %while.cond21.preheader ], [ %str2.addr.1.be, %while.cond21.backedge ]
  %str1.addr.1117 = phi i8* [ %str1.addr.0, %while.cond21.preheader ], [ %str1.addr.1.be, %while.cond21.backedge ]
  %10 = load i8* %str2.addr.1118, align 1, !tbaa !0
  %tobool25 = icmp eq i8 %10, 0
  br i1 %tobool25, label %while.end89, label %while.body26

while.body26:                                     ; preds = %land.rhs
  %11 = icmp sgt i8 %9, -1
  br i1 %11, label %cont29, label %ioc_bb28

ioc_bb28:                                         ; preds = %while.body26
  %12 = sext i8 %9 to i64
  tail call void @__ioc_report_conversion(i32 994, i32 32, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb28, %while.body26
  %idxprom30 = zext i8 %9 to i32
  %arrayidx31 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom30
  %13 = load i16* %arrayidx31, align 2, !tbaa !4
  %and37 = and i16 %13, 8
  %tobool38 = icmp eq i16 %and37, 0
  br i1 %tobool38, label %if.else, label %if.then

if.then:                                          ; preds = %cont29
  %14 = load i8* %str2.addr.1118, align 1, !tbaa !0
  %15 = icmp sgt i8 %14, -1
  br i1 %15, label %cont41, label %ioc_bb40

ioc_bb40:                                         ; preds = %if.then
  %16 = sext i8 %14 to i64
  tail call void @__ioc_report_conversion(i32 995, i32 36, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %16, i8 1) nounwind
  br label %cont41

cont41:                                           ; preds = %ioc_bb40, %if.then
  %idxprom42 = zext i8 %14 to i32
  %arrayidx43 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom42
  %17 = load i16* %arrayidx43, align 2, !tbaa !4
  %and49 = and i16 %17, 8
  %tobool50 = icmp eq i16 %and49, 0
  br i1 %tobool50, label %cont41.while.end89split_crit_edge, label %do.body

cont41.while.end89split_crit_edge:                ; preds = %cont41
  %.pre.pre = load i8* %str1.addr.1117, align 1, !tbaa !0
  br label %while.end89

do.body:                                          ; preds = %cont41, %cont55
  %str1.addr.2 = phi i8* [ %incdec.ptr52, %cont55 ], [ %str1.addr.1117, %cont41 ]
  %incdec.ptr52 = getelementptr inbounds i8* %str1.addr.2, i32 1
  %18 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %cont55, label %ioc_bb54

ioc_bb54:                                         ; preds = %do.body
  %20 = sext i8 %18 to i64
  tail call void @__ioc_report_conversion(i32 998, i32 46, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont55

cont55:                                           ; preds = %ioc_bb54, %do.body
  %idxprom56 = zext i8 %18 to i32
  %arrayidx57 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom56
  %21 = load i16* %arrayidx57, align 2, !tbaa !4
  %and63 = and i16 %21, 8
  %tobool64 = icmp eq i16 %and63, 0
  br i1 %tobool64, label %do.body65, label %do.body

do.body65:                                        ; preds = %cont55, %cont70
  %str2.addr.2 = phi i8* [ %incdec.ptr66, %cont70 ], [ %str2.addr.1118, %cont55 ]
  %incdec.ptr66 = getelementptr inbounds i8* %str2.addr.2, i32 1
  %22 = load i8* %incdec.ptr66, align 1, !tbaa !0
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %cont70, label %ioc_bb69

ioc_bb69:                                         ; preds = %do.body65
  %24 = sext i8 %22 to i64
  tail call void @__ioc_report_conversion(i32 1000, i32 46, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont70

cont70:                                           ; preds = %ioc_bb69, %do.body65
  %idxprom71 = zext i8 %22 to i32
  %arrayidx72 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom71
  %25 = load i16* %arrayidx72, align 2, !tbaa !4
  %and78 = and i16 %25, 8
  %tobool79 = icmp eq i16 %and78, 0
  br i1 %tobool79, label %while.cond21.backedge, label %do.body65

if.else:                                          ; preds = %cont29
  %26 = load i8* %str1.addr.1117, align 1, !tbaa !0
  %27 = load i8* %str2.addr.1118, align 1, !tbaa !0
  %cmp = icmp eq i8 %26, %27
  br i1 %cmp, label %if.end85, label %while.end89

if.end85:                                         ; preds = %if.else
  %incdec.ptr86 = getelementptr inbounds i8* %str1.addr.1117, i32 1
  %incdec.ptr87 = getelementptr inbounds i8* %str2.addr.1118, i32 1
  br label %while.cond21.backedge

while.cond21.backedge:                            ; preds = %cont70, %if.end85
  %str1.addr.1.be = phi i8* [ %incdec.ptr86, %if.end85 ], [ %incdec.ptr52, %cont70 ]
  %str2.addr.1.be = phi i8* [ %incdec.ptr87, %if.end85 ], [ %incdec.ptr66, %cont70 ]
  %28 = load i8* %str1.addr.1.be, align 1, !tbaa !0
  %tobool23 = icmp eq i8 %28, 0
  br i1 %tobool23, label %while.end89, label %land.rhs

while.end89:                                      ; preds = %while.cond21.backedge, %if.else, %land.rhs, %cont41.while.end89split_crit_edge, %while.cond21.preheader
  %29 = phi i8 [ 0, %while.cond21.preheader ], [ %.pre.pre, %cont41.while.end89split_crit_edge ], [ %9, %land.rhs ], [ %26, %if.else ], [ 0, %while.cond21.backedge ]
  %str2.addr.1.lcssa = phi i8* [ %str2.addr.0, %while.cond21.preheader ], [ %str2.addr.1118, %cont41.while.end89split_crit_edge ], [ %str2.addr.1118, %land.rhs ], [ %str2.addr.1118, %if.else ], [ %str2.addr.1.be, %while.cond21.backedge ]
  %conv90 = sext i8 %29 to i32
  %30 = load i8* %str2.addr.1.lcssa, align 1, !tbaa !0
  %conv91 = sext i8 %30 to i32
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv90, i32 %conv91)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb92, label %cont93

ioc_bb92:                                         ; preds = %while.end89
  %34 = sext i8 %30 to i64
  %35 = sext i8 %29 to i64
  tail call void @__ioc_report_sub_overflow(i32 1009, i32 19, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %35, i64 %34, i8 13) nounwind
  br label %cont93

cont93:                                           ; preds = %while.end89, %ioc_bb92
  ret i32 %32
}

define void @addhistnode(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr) nounwind {
entry:
  %call = tail call %struct.hashnode* @addhashnode2(%struct.hashtable* %ht, i8* %nam, i8* %nodeptr)
  %tobool = icmp eq %struct.hashnode* %call, null
  %0 = bitcast i8* %nodeptr to %struct.hashnode*
  %cmp = icmp eq %struct.hashnode* %call, %0
  %or.cond = or i1 %tobool, %cmp
  %flags23 = getelementptr inbounds i8* %nodeptr, i32 8
  %1 = bitcast i8* %flags23 to i32*
  %2 = load i32* %1, align 4, !tbaa !3
  br i1 %or.cond, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %2, 1
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %and4 = and i32 %2, 16
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %3 = bitcast %struct.hashnode* %call to %struct.histent*
  %up = getelementptr inbounds i8* %nodeptr, i32 12
  %4 = bitcast i8* %up to %struct.histent**
  %5 = load %struct.histent** %4, align 4, !tbaa !2
  %cmp7 = icmp eq %struct.histent* %3, %5
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then, %land.lhs.true6
  %nam9 = getelementptr inbounds %struct.hashnode* %call, i32 0, i32 1
  %6 = load i8** %nam9, align 4, !tbaa !2
  %7 = bitcast %struct.hashnode* %call to i8*
  %call10 = tail call %struct.hashnode* @addhashnode2(%struct.hashtable* %ht, i8* %6, i8* %7)
  %8 = load i32* %1, align 4, !tbaa !3
  %or = and i32 %8, -10
  %and15 = or i32 %or, 8
  store i32 %and15, i32* %1, align 4, !tbaa !3
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true6
  %flags16 = getelementptr inbounds %struct.hashnode* %call, i32 0, i32 2
  %9 = load i32* %flags16, align 4, !tbaa !3
  %or17 = or i32 %9, 8
  store i32 %or17, i32* %flags16, align 4, !tbaa !3
  %10 = load i32* @hist_ignore_all_dups, align 4, !tbaa !3
  %tobool18 = icmp eq i32 %10, 0
  br i1 %tobool18, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.else
  %11 = bitcast %struct.hashnode* %call to %struct.histent*
  tail call void @freehistdata(%struct.histent* %11, i32 1) nounwind
  %12 = bitcast %struct.hashnode* %call to i8*
  tail call void @zfree(i8* %12, i32 48) nounwind
  br label %if.end25

if.else21:                                        ; preds = %entry
  %and24 = and i32 %2, -2
  store i32 %and24, i32* %1, align 4, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then8, %if.then19, %if.else21
  ret void
}

define void @freehistnode(%struct.hashnode* %nodeptr) nounwind {
entry:
  %0 = bitcast %struct.hashnode* %nodeptr to %struct.histent*
  tail call void @freehistdata(%struct.histent* %0, i32 1)
  %1 = bitcast %struct.hashnode* %nodeptr to i8*
  tail call void @zfree(i8* %1, i32 48) nounwind
  ret void
}

declare void @histremovedups()

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @freehistdata(%struct.histent* %he, i32 %unlink) nounwind {
entry:
  %tobool = icmp eq %struct.histent* %he, null
  br i1 %tobool, label %if.end31, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.histent* %he, i32 0, i32 0, i32 2
  %0 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %0, 40
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  %nam6.pre = getelementptr inbounds %struct.histent* %he, i32 0, i32 0, i32 1
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct.hashtable** @histtab, align 4, !tbaa !2
  %nam = getelementptr inbounds %struct.histent* %he, i32 0, i32 0, i32 1
  %2 = load i8** %nam, align 4, !tbaa !2
  %call = tail call %struct.hashnode* @removehashnode(%struct.hashtable* %1, i8* %2)
  br label %if.end4

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.then2
  %nam6.pre-phi = phi i8** [ %nam6.pre, %if.end.if.end4_crit_edge ], [ %nam, %if.then2 ]
  %3 = load i8** %nam6.pre-phi, align 4, !tbaa !2
  tail call void @zsfree(i8* %3) nounwind
  %nwords = getelementptr inbounds %struct.histent* %he, i32 0, i32 7
  %4 = load i32* %nwords, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %4, 0
  br i1 %tobool7, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end4
  %words = getelementptr inbounds %struct.histent* %he, i32 0, i32 6
  %5 = load i16** %words, align 4, !tbaa !2
  %6 = bitcast i16* %5 to i8*
  %7 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 2)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then8
  %10 = sext i32 %4 to i64
  tail call void @__ioc_report_mul_overflow(i32 1051, i32 40, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %10, i64 2, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then8, %ioc_bb
  %11 = icmp sgt i32 %8, -1
  br i1 %11, label %cont11, label %ioc_bb10

ioc_bb10:                                         ; preds = %cont
  %12 = sext i32 %8 to i64
  tail call void @__ioc_report_conversion(i32 1051, i32 26, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb10, %cont
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 2)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont11
  %16 = zext i32 %8 to i64
  tail call void @__ioc_report_mul_overflow(i32 1051, i32 45, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %16, i64 2, i8 5) nounwind
  br label %cont13

cont13:                                           ; preds = %cont11, %ioc_bb12
  %17 = icmp sgt i32 %14, -1
  br i1 %17, label %cont15, label %ioc_bb14

ioc_bb14:                                         ; preds = %cont13
  %18 = zext i32 %14 to i64
  tail call void @__ioc_report_conversion(i32 1051, i32 25, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %18, i8 0) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb14, %cont13
  tail call void @zfree(i8* %6, i32 %14) nounwind
  br label %if.end16

if.end16:                                         ; preds = %if.end4, %cont15
  %tobool17 = icmp eq i32 %unlink, 0
  br i1 %tobool17, label %if.end31, label %if.then18

if.then18:                                        ; preds = %if.end16
  %19 = load i64* @histlinect, align 8, !tbaa !5
  %20 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %19, i64 -1)
  %21 = extractvalue { i64, i1 } %20, 0
  %22 = extractvalue { i64, i1 } %20, 1
  br i1 %22, label %ioc_bb19, label %cont20

ioc_bb19:                                         ; preds = %if.then18
  tail call void @__ioc_report_add_overflow(i32 1053, i32 11, i8* getelementptr inbounds ([26 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %19, i64 -1, i8 14) nounwind
  br label %cont20

cont20:                                           ; preds = %if.then18, %ioc_bb19
  store i64 %21, i64* @histlinect, align 8, !tbaa !5
  %tobool21 = icmp eq i64 %21, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %cont20
  store %struct.histent* null, %struct.histent** @hist_ring, align 4, !tbaa !2
  br label %if.end31

if.else:                                          ; preds = %cont20
  %23 = load %struct.histent** @hist_ring, align 4, !tbaa !2
  %cmp = icmp eq %struct.histent* %23, %he
  %up = getelementptr inbounds %struct.histent* %he, i32 0, i32 1
  br i1 %cmp, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  %24 = load %struct.histent** %up, align 4, !tbaa !2
  store %struct.histent* %24, %struct.histent** @hist_ring, align 4, !tbaa !2
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %down = getelementptr inbounds %struct.histent* %he, i32 0, i32 2
  %25 = load %struct.histent** %down, align 4, !tbaa !2
  %26 = load %struct.histent** %up, align 4, !tbaa !2
  %down26 = getelementptr inbounds %struct.histent* %26, i32 0, i32 2
  store %struct.histent* %25, %struct.histent** %down26, align 4, !tbaa !2
  %27 = load %struct.histent** %up, align 4, !tbaa !2
  %28 = load %struct.histent** %down, align 4, !tbaa !2
  %up29 = getelementptr inbounds %struct.histent* %28, i32 0, i32 1
  store %struct.histent* %27, %struct.histent** %up29, align 4, !tbaa !2
  br label %if.end31

if.end31:                                         ; preds = %if.end16, %entry, %if.then22, %if.end24
  ret void
}

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i32 @zputs(i8*, %struct._IO_FILE*)

define available_externally i32 @putchar(i32 %__c) nounwind inlinehint {
entry:
  %0 = load %struct._IO_FILE** @stdout, align 4, !tbaa !2
  %call = tail call i32 @_IO_putc(i32 %__c, %struct._IO_FILE* %0) nounwind
  ret i32 %call
}

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32 @mb_niceformat(i8*, %struct._IO_FILE*, i8**, i32)

declare i32 @quotedzputs(i8*, %struct._IO_FILE*)

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

declare i8* @getpermtext(%struct.eprog*, i32*, i32)

declare void @freeeprog(%struct.eprog*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @getsignum(i8*)

declare i32 @settrap(i32, %struct.eprog*, i32)

declare void @unsettrap(i32)

declare %struct.hashnode* @removetrap(i32)

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ztrcmp(i8*, i8*)

declare i32 @puts(i8* nocapture) nounwind

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"int", metadata !0}
!4 = metadata !{metadata !"short", metadata !0}
!5 = metadata !{metadata !"long long", metadata !0}
