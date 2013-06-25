; ModuleID = '../../src/Src/glob.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.globdata = type { i32, i8*, i32, i32, i32, i32, %struct.gmatch*, %struct.gmatch*, i8*, %struct.qual*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.globsort], %union.linkroot*, i8*, i8* }
%struct.gmatch = type { i8*, i8**, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qual = type { %struct.qual*, %struct.qual*, i32 (i8*, %struct.stat*, i64, i8*)*, i64, i32, i32, i32, i32, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.globsort = type { i32, i8* }
%union.linkroot = type { %struct.linklist }
%struct.linklist = type { %struct.linknode*, %struct.linknode*, i32 }
%struct.linknode = type { %struct.linknode*, %struct.linknode*, i8* }
%struct.__sigset_t = type { [32 x i32] }
%struct.value = type { i32, %struct.param*, i32, i32, i32, i8** }
%struct.param = type { %struct.hashnode, %union.anon, %union.anon.0, i32, i32, i8*, i8*, %struct.param*, i32 }
%struct.hashnode = type { %struct.hashnode*, i8*, i32 }
%union.anon = type { i64 }
%union.anon.0 = type { %struct.gsu_scalar* }
%struct.gsu_scalar = type { i8* (%struct.param*)*, void (%struct.param*, i8*)*, void (%struct.param*, i32)* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.complist = type { %struct.complist*, %struct.patprog*, i32, i32 }
%struct.patprog = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.eprog = type { i32, i32, i32, i32, %struct.patprog**, i32*, i8*, %struct.shfunc*, %struct.funcdump* }
%struct.shfunc = type { %struct.hashnode, i8*, i64, %struct.eprog*, i32 }
%struct.funcdump = type { %struct.funcdump*, i64, i64, i32, i32*, i32*, i32, i32, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.dirsav = type { i32, i32, i8*, i64, i64 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.redir = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@opts = external global [169 x i8]
@curglobdata = internal global %struct.globdata zeroinitializer, align 4
@pathpos = common global i32 0, align 4
@pathbuf = common global i8* null, align 4
@glob_pre = common global i8* null, align 4
@glob_suf = common global i8* null, align 4
@typtab = external global [256 x i16]
@.str = private unnamed_addr constant [20 x i8] c"missing end of name\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"unknown user\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"unknown group\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"too many glob sort specifiers\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"unknown sort specifier\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"doubled sort specifier\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"invalid subscript\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"unknown file attribute\00", align 1
@errflag = external global i32
@.str8 = private unnamed_addr constant [16 x i8] c"bad pattern: %s\00", align 1
@badcshglob = common global i32 0, align 4
@.str9 = private unnamed_addr constant [21 x i8] c"no matches found: %s\00", align 1
@lastval = external global i64
@.str10 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"globsort\00", align 1
@.str12 = private unnamed_addr constant [21 x i8] c"file number expected\00", align 1
@0 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@1 = internal unnamed_addr constant [2 x i8] c"%\00"
@.str13 = private unnamed_addr constant [7 x i8] c"%0*lld\00", align 1
@ztokens = external global [0 x i8]
@inserts = common global i8** null, align 4
@.str14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"globqual\00", align 1
@2 = internal unnamed_addr constant [6 x i8] c"zlong\00"
@qualsheval.tmparr = internal global [2 x i8*] zeroinitializer, align 4
@3 = internal unnamed_addr constant [8 x i8] c"__dev_t\00"
@4 = internal unnamed_addr constant [19 x i8] c"unsigned long long\00"
@5 = internal unnamed_addr constant [6 x i8] c"off_t\00"
@6 = internal unnamed_addr constant [10 x i8] c"long long\00"
@7 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str18 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@errsfound = external global i32
@.str19 = private unnamed_addr constant [35 x i8] c"current directory lost during glob\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@forceerrs = external global i32
@.str22 = private unnamed_addr constant [7 x i8] c"%e: %s\00", align 1
@8 = internal unnamed_addr constant [3 x i8] c"+=\00"
@queueing_enabled = external global i32
@queue_front = external global i32
@queue_rear = external global i32
@signal_mask_queue = external global [128 x %struct.__sigset_t]
@signal_queue = external global [128 x i32]
@9 = internal unnamed_addr constant [10 x i8] c"__nlink_t\00"
@10 = internal unnamed_addr constant [5 x i8] c"long\00"
@11 = internal unnamed_addr constant [3 x i8] c"*=\00"
@12 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@13 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@14 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@15 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str23 = private unnamed_addr constant [29 x i8] c"missing identifier after `+'\00", align 1
@.str24 = private unnamed_addr constant [22 x i8] c"missing end of string\00", align 1
@.str25 = private unnamed_addr constant [27 x i8] c"invalid mode specification\00", align 1
@16 = internal unnamed_addr constant [4 x i8] c"int\00"
@17 = internal unnamed_addr constant [4 x i8] c"<<=\00"
@18 = internal unnamed_addr constant [3 x i8] c"<<\00"
@.str26 = private unnamed_addr constant [16 x i8] c"number expected\00", align 1
@19 = internal unnamed_addr constant [5 x i8] c"char\00"
@20 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@21 = internal unnamed_addr constant [2 x i8] c"*\00"
@22 = internal unnamed_addr constant [2 x i8] c"+\00"
@23 = internal unnamed_addr constant [2 x i8] c"-\00"
@24 = internal unnamed_addr constant [21 x i8] c"../../src/Src/glob.c\00"

define i32 @haswilds(i8* nocapture %str) nounwind {
entry:
  %0 = load i8* %str, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 507, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp = icmp eq i8 %0, -113
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %str, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 507, i32 55, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 144, i8 1) nounwind
  %cmp5 = icmp eq i8 %1, -112
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %arrayidx = getelementptr inbounds i8* %str, i32 1
  %2 = load i8* %arrayidx, align 1, !tbaa !0
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i8* %str, align 1, !tbaa !0
  %cmp9 = icmp eq i8 %3, 37
  br i1 %cmp9, label %land.lhs.true11, label %for.cond.preheader

land.lhs.true11:                                  ; preds = %if.end
  %arrayidx12 = getelementptr inbounds i8* %str, i32 1
  %4 = load i8* %arrayidx12, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 512, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 149, i8 1) nounwind
  %cmp16 = icmp eq i8 %4, -107
  br i1 %cmp16, label %cont20, label %for.cond.preheaderthread-pre-split

cont20:                                           ; preds = %land.lhs.true11
  store i8 63, i8* %arrayidx12, align 1, !tbaa !0
  br label %for.cond.preheaderthread-pre-split

for.cond.preheaderthread-pre-split:               ; preds = %cont20, %land.lhs.true11
  %.pr = load i8* %str, align 1, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheaderthread-pre-split, %if.end
  %5 = phi i8 [ %.pr, %for.cond.preheaderthread-pre-split ], [ %3, %if.end ]
  %tobool2343 = icmp eq i8 %5, 0
  br i1 %tobool2343, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool32 = icmp eq i8 %6, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i8 [ %5, %for.body.lr.ph ], [ %8, %for.inc ]
  %str.addr.044 = phi i8* [ %str, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %conv24 = sext i8 %7 to i32
  switch i32 %conv24, label %for.inc [
    i32 -120, label %return
    i32 -116, label %return
    i32 -121, label %return
    i32 -113, label %return
    i32 -110, label %return
    i32 -107, label %return
    i32 -124, label %sw.bb31
    i32 -122, label %sw.bb31
  ]

sw.bb31:                                          ; preds = %for.body, %for.body
  br i1 %tobool32, label %for.inc, label %return

for.inc:                                          ; preds = %sw.bb31, %for.body
  %incdec.ptr = getelementptr inbounds i8* %str.addr.044, i32 1
  %8 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool23 = icmp eq i8 %8, 0
  br i1 %tobool23, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %sw.bb31, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.inc, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %for.cond.preheader ], [ 1, %sw.bb31 ], [ 1, %for.body ], [ 1, %for.body ], [ 1, %for.body ], [ 1, %for.body ], [ 1, %for.body ], [ 1, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define void @zglob(%union.linkroot* %list, %struct.linknode* %np, i32 %nountok) nounwind {
entry:
  %str.addr.i = alloca i8*, align 4
  %assert.i = alloca i32, align 4
  %ignore.i = alloca i32, align 4
  %saved.sroa.2 = alloca { i32, i32, i32, i32, %struct.gmatch*, %struct.gmatch*, i8*, %struct.qual*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.globsort], %union.linkroot* }, align 8
  %s = alloca i8*, align 4
  %arglen = alloca i32, align 4
  %arglen256 = alloca i32, align 4
  %send = alloca i8*, align 4
  %v = alloca %struct.value, align 4
  %prev = getelementptr inbounds %struct.linknode* %np, i32 0, i32 1
  %0 = load %struct.linknode** %prev, align 4, !tbaa !2
  %dat = getelementptr inbounds %struct.linknode* %np, i32 0, i32 2
  %1 = load i8** %dat, align 4, !tbaa !2
  %2 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 18), align 1, !tbaa !0
  %lnot = icmp eq i8 %2, 0
  %lnot.ext = zext i1 %lnot to i32
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 55), align 1, !tbaa !0
  %tobool1 = icmp eq i8 %3, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @haswilds(i8* %1)
  %tobool2 = icmp ne i32 %call, 0
  %4 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 49), align 1, !tbaa !0
  %tobool4 = icmp ne i8 %4, 0
  %or.cond = and i1 %tobool2, %tobool4
  br i1 %or.cond, label %do.body, label %if.then

if.then:                                          ; preds = %entry, %lor.lhs.false
  %tobool5 = icmp eq i32 %nountok, 0
  br i1 %tobool5, label %if.then6, label %do.end914

if.then6:                                         ; preds = %if.then
  call void @untokenize(i8* %1) nounwind
  br label %do.end914

do.body:                                          ; preds = %lor.lhs.false
  %saved.sroa.2.8.cast1037 = bitcast { i32, i32, i32, i32, %struct.gmatch*, %struct.gmatch*, i8*, %struct.qual*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.globsort], %union.linkroot* }* %saved.sroa.2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %saved.sroa.2.8.cast1037, i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i32 184, i32 4, i1 false)
  %5 = load i32* @pathpos, align 4, !tbaa !3
  %6 = load i8** @pathbuf, align 4, !tbaa !2
  %7 = load i8** @glob_pre, align 4, !tbaa !2
  %8 = load i8** @glob_suf, align 4, !tbaa !2
  store i8* null, i8** @pathbuf, align 4, !tbaa !2
  %call8 = call i8* @dupstring(i8* %1) nounwind
  %call9 = call i8* @uremnode(%union.linkroot* %list, %struct.linknode* %np) nounwind
  call void @llvm.memset.p0i8.i64(i8* bitcast (i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8) to i8*), i8 0, i64 16, i32 4, i1 false)
  %9 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 114), align 1, !tbaa !0
  %conv = sext i8 %9 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 15), align 4, !tbaa !3
  %10 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 106), align 1, !tbaa !0
  %conv10 = sext i8 %10 to i32
  store i32 %conv10, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 16), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 20), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 18), align 4, !tbaa !3
  %11 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 60), align 1, !tbaa !0
  %lnot12 = icmp eq i8 %11, 0
  %lnot.ext13 = zext i1 %lnot12 to i32
  store i32 %lnot.ext13, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 17), align 4, !tbaa !3
  %12 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 115), align 1, !tbaa !0
  %conv14 = sext i8 %12 to i32
  store i32 %conv14, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 19), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  store %union.linkroot* null, %union.linkroot** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 24), align 4, !tbaa !2
  %13 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %14 = or i8 %2, %13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %while.end679, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.body
  %isarr = getelementptr inbounds %struct.value* %v, i32 0, i32 0
  %pm = getelementptr inbounds %struct.value* %v, i32 0, i32 1
  %end541 = getelementptr inbounds %struct.value* %v, i32 0, i32 4
  %flags = getelementptr inbounds %struct.value* %v, i32 0, i32 2
  %start = getelementptr inbounds %struct.value* %v, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %first.01307 = phi i32 [ 0, %while.body.lr.ph ], [ %first.1, %while.cond.backedge ]
  %end.01305 = phi i32 [ -1, %while.body.lr.ph ], [ %end.1, %while.cond.backedge ]
  %nobareglob.01304 = phi i32 [ %lnot.ext, %while.body.lr.ph ], [ 1, %while.cond.backedge ]
  %call18 = call i32 @strlen(i8* %call8) nounwind readonly
  %16 = icmp sgt i32 %call18, -1
  br i1 %16, label %cont20, label %ioc_bb19

ioc_bb19:                                         ; preds = %while.body
  %17 = zext i32 %call18 to i64
  call void @__ioc_report_conversion(i32 1300, i32 10, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %17, i8 0) nounwind
  br label %cont20

cont20:                                           ; preds = %ioc_bb19, %while.body
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call18, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  %21 = sext i32 %call18 to i64
  br i1 %20, label %ioc_bb21, label %cont22

ioc_bb21:                                         ; preds = %cont20
  call void @__ioc_report_sub_overflow(i32 1301, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont22

cont22:                                           ; preds = %cont20, %ioc_bb21
  %arrayidx = getelementptr inbounds i8* %call8, i32 %19
  %22 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1301, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp = icmp eq i8 %22, -119
  br i1 %cmp, label %if.end28, label %while.end679

if.end28:                                         ; preds = %cont22
  %add.ptr.sum = add i32 %call18, -2
  %add.ptr29 = getelementptr inbounds i8* %call8, i32 %add.ptr.sum
  store i8* %add.ptr29, i8** %s, align 4
  %23 = load i8* %add.ptr29, align 1, !tbaa !0
  %tobool311242 = icmp eq i8 %23, 0
  br i1 %tobool311242, label %ioc_bb52.thread, label %land.end

land.end:                                         ; preds = %if.end28, %for.inc
  %24 = phi i8 [ %37, %for.inc ], [ %23, %if.end28 ]
  %nobareglob.11244 = phi i32 [ %nobareglob.2, %for.inc ], [ %nobareglob.01304, %if.end28 ]
  %paren.01243 = phi i32 [ %paren.2, %for.inc ], [ 0, %if.end28 ]
  call void @__ioc_report_conversion(i32 1308, i32 53, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  %tobool38 = icmp ne i32 %paren.01243, 0
  %not.cmp35 = icmp ne i8 %24, -120
  %tobool38. = or i1 %tobool38, %not.cmp35
  %25 = load i8** %s, align 4, !tbaa !2
  %26 = load i8* %25, align 1, !tbaa !0
  br i1 %tobool38., label %for.body, label %ioc_bb52

for.body:                                         ; preds = %land.end
  %conv40 = sext i8 %26 to i32
  switch i32 %conv40, label %for.inc [
    i32 -119, label %sw.bb
    i32 -116, label %sw.bb43
    i32 -106, label %sw.bb44
    i32 -120, label %sw.bb48
  ]

sw.bb:                                            ; preds = %for.body
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %paren.01243, i32 1)
  %28 = extractvalue { i32, i1 } %27, 0
  %29 = extractvalue { i32, i1 } %27, 1
  br i1 %29, label %ioc_bb41, label %sw.bb43

ioc_bb41:                                         ; preds = %sw.bb
  %30 = sext i32 %paren.01243 to i64
  call void @__ioc_report_add_overflow(i32 1312, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %30, i64 1, i8 13) nounwind
  br label %sw.bb43

sw.bb43:                                          ; preds = %ioc_bb41, %sw.bb, %for.body
  %paren.1 = phi i32 [ %paren.01243, %for.body ], [ %28, %sw.bb ], [ %28, %ioc_bb41 ]
  br label %for.inc

sw.bb44:                                          ; preds = %for.body
  %31 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool45 = icmp eq i8 %31, 0
  %nobareglob.1. = select i1 %tobool45, i32 %nobareglob.11244, i32 1
  br label %for.inc

sw.bb48:                                          ; preds = %for.body
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %paren.01243, i32 -1)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb49, label %for.inc

ioc_bb49:                                         ; preds = %sw.bb48
  %35 = sext i32 %paren.01243 to i64
  call void @__ioc_report_add_overflow(i32 1326, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %35, i64 -1, i8 13) nounwind
  br label %for.inc

for.inc:                                          ; preds = %sw.bb44, %ioc_bb49, %sw.bb48, %sw.bb43, %for.body
  %paren.2 = phi i32 [ %paren.01243, %for.body ], [ %paren.1, %sw.bb43 ], [ %paren.01243, %sw.bb44 ], [ %33, %sw.bb48 ], [ %33, %ioc_bb49 ]
  %nobareglob.2 = phi i32 [ %nobareglob.11244, %for.body ], [ 1, %sw.bb43 ], [ %nobareglob.1., %sw.bb44 ], [ %nobareglob.11244, %sw.bb48 ], [ %nobareglob.11244, %ioc_bb49 ]
  %36 = load i8** %s, align 4, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8* %36, i32 -1
  store i8* %incdec.ptr, i8** %s, align 4
  %37 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool31 = icmp eq i8 %37, 0
  br i1 %tobool31, label %ioc_bb52.thread, label %land.end

ioc_bb52.thread:                                  ; preds = %for.inc, %if.end28
  call void @__ioc_report_conversion(i32 1331, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  br label %while.end679

ioc_bb52:                                         ; preds = %land.end
  %phitmp = icmp eq i8 %26, -120
  call void @__ioc_report_conversion(i32 1331, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  br i1 %phitmp, label %if.end57, label %while.end679

if.end57:                                         ; preds = %ioc_bb52
  %38 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool59 = icmp eq i8 %38, 0
  br i1 %tobool59, label %if.else76, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end57
  %39 = load i8** %s, align 4, !tbaa !2
  %arrayidx60 = getelementptr inbounds i8* %39, i32 1
  %40 = load i8* %arrayidx60, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 1333, i32 37, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp64 = icmp eq i8 %40, -124
  br i1 %cmp64, label %if.then66, label %if.else76

if.then66:                                        ; preds = %land.lhs.true
  %41 = load i8** %s, align 4, !tbaa !2
  %arrayidx67 = getelementptr inbounds i8* %41, i32 2
  %42 = load i8* %arrayidx67, align 1, !tbaa !0
  %cmp69 = icmp eq i8 %42, 113
  br i1 %cmp69, label %cont73, label %while.end679

cont73:                                           ; preds = %if.then66
  store i8 0, i8* %41, align 1, !tbaa !0
  %43 = load i8** %s, align 4, !tbaa !2
  %add.ptr74 = getelementptr inbounds i8* %43, i32 2
  store i8* %add.ptr74, i8** %s, align 4, !tbaa !2
  br label %cont82

if.else76:                                        ; preds = %if.end57, %land.lhs.true
  %tobool77 = icmp eq i32 %nobareglob.11244, 0
  br i1 %tobool77, label %cont82, label %while.end679

cont82:                                           ; preds = %cont73, %if.else76
  br i1 %20, label %ioc_bb83, label %cont84

ioc_bb83:                                         ; preds = %cont82
  call void @__ioc_report_sub_overflow(i32 1354, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont84

cont84:                                           ; preds = %cont82, %ioc_bb83
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  %44 = load i8** %s, align 4, !tbaa !2
  %incdec.ptr88 = getelementptr inbounds i8* %44, i32 1
  store i8* %incdec.ptr88, i8** %s, align 4, !tbaa !2
  store i8 0, i8* %44, align 1, !tbaa !0
  br label %while.cond89

while.cond89:                                     ; preds = %if.end597, %cont84
  %sdata.0 = phi i8* [ null, %cont84 ], [ %sdata.11207, %if.end597 ]
  %newcolonmod.0 = phi i8* [ null, %cont84 ], [ %newcolonmod.11209, %if.end597 ]
  %data.0 = phi i64 [ 0, %cont84 ], [ %data.41212, %if.end597 ]
  %sense.0 = phi i32 [ 0, %cont84 ], [ %sense.11214, %if.end597 ]
  %newquals.0 = phi %struct.qual* [ null, %cont84 ], [ %newquals.2, %if.end597 ]
  %end.1 = phi i32 [ %end.01305, %cont84 ], [ %end.21216, %if.end597 ]
  %first.1 = phi i32 [ %first.01307, %cont84 ], [ %first.21218, %if.end597 ]
  %ql.0 = phi %struct.qual* [ null, %cont84 ], [ %ql.2, %if.end597 ]
  %qn.0 = phi %struct.qual* [ null, %cont84 ], [ %qn.3, %if.end597 ]
  %qo.0 = phi %struct.qual* [ null, %cont84 ], [ %qo.3, %if.end597 ]
  %45 = load i8** %s, align 4, !tbaa !2
  %46 = load i8* %45, align 1, !tbaa !0
  %tobool91 = icmp ne i8 %46, 0
  %lnot94 = icmp eq i8* %newcolonmod.0, null
  %or.cond1137 = and i1 %tobool91, %lnot94
  br i1 %or.cond1137, label %while.body97, label %while.end607

while.body97:                                     ; preds = %while.cond89
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %cont99, label %ioc_bb98

ioc_bb98:                                         ; preds = %while.body97
  %48 = sext i8 %46 to i64
  call void @__ioc_report_conversion(i32 1358, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont99

cont99:                                           ; preds = %ioc_bb98, %while.body97
  %idxprom = zext i8 %46 to i32
  %arrayidx100 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %49 = load i16* %arrayidx100, align 2, !tbaa !4
  %and = and i16 %49, 1
  %tobool106 = icmp eq i16 %and, 0
  br i1 %tobool106, label %if.else131, label %while.cond108

while.cond108:                                    ; preds = %ioc_bb129, %cont127, %cont99
  %data.1 = phi i64 [ 0, %cont99 ], [ %65, %cont127 ], [ %65, %ioc_bb129 ]
  %50 = load i8** %s, align 4, !tbaa !2
  %51 = load i8* %50, align 1, !tbaa !0
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %cont111, label %ioc_bb110

ioc_bb110:                                        ; preds = %while.cond108
  %53 = sext i8 %51 to i64
  call void @__ioc_report_conversion(i32 1363, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %53, i8 1) nounwind
  br label %cont111

cont111:                                          ; preds = %ioc_bb110, %while.cond108
  %idxprom112 = zext i8 %51 to i32
  %arrayidx113 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom112
  %54 = load i16* %arrayidx113, align 2, !tbaa !4
  %and119 = and i16 %54, 1
  %tobool120 = icmp eq i16 %and119, 0
  br i1 %tobool120, label %if.then580, label %while.body121

while.body121:                                    ; preds = %cont111
  %55 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %data.1, i64 8)
  %56 = extractvalue { i64, i1 } %55, 0
  %57 = extractvalue { i64, i1 } %55, 1
  br i1 %57, label %ioc_bb122, label %cont123

ioc_bb122:                                        ; preds = %while.body121
  call void @__ioc_report_mul_overflow(i32 1364, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @21, i32 0, i32 0), i64 %data.1, i64 8, i8 14) nounwind
  br label %cont123

cont123:                                          ; preds = %while.body121, %ioc_bb122
  %58 = load i8** %s, align 4, !tbaa !2
  %incdec.ptr124 = getelementptr inbounds i8* %58, i32 1
  store i8* %incdec.ptr124, i8** %s, align 4, !tbaa !2
  %59 = load i8* %58, align 1, !tbaa !0
  %conv125 = sext i8 %59 to i32
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv125, i32 48)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb126, label %cont127

ioc_bb126:                                        ; preds = %cont123
  %63 = sext i8 %59 to i64
  call void @__ioc_report_sub_overflow(i32 1364, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %63, i64 48, i8 13) nounwind
  br label %cont127

cont127:                                          ; preds = %cont123, %ioc_bb126
  %conv128 = sext i32 %61 to i64
  %64 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %56, i64 %conv128)
  %65 = extractvalue { i64, i1 } %64, 0
  %66 = extractvalue { i64, i1 } %64, 1
  br i1 %66, label %ioc_bb129, label %while.cond108

ioc_bb129:                                        ; preds = %cont127
  call void @__ioc_report_add_overflow(i32 1364, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %56, i64 %conv128, i8 14) nounwind
  br label %while.cond108

if.else131:                                       ; preds = %cont99
  %67 = load i8** %s, align 4, !tbaa !2
  %68 = load i8* %67, align 1, !tbaa !0
  %cmp133 = icmp eq i8 %68, 44
  %incdec.ptr136 = getelementptr inbounds i8* %67, i32 1
  store i8* %incdec.ptr136, i8** %s, align 4, !tbaa !2
  br i1 %cmp133, label %if.then135, label %if.else143

if.then135:                                       ; preds = %if.else131
  %69 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 10), align 4, !tbaa !3
  %tobool137 = icmp eq i32 %69, 0
  br i1 %tobool137, label %if.end597, label %if.then138

if.then138:                                       ; preds = %if.then135
  %call139 = call i8* @hcalloc(i32 40) nounwind
  %70 = bitcast i8* %call139 to %struct.qual*
  %or = getelementptr inbounds %struct.qual* %qo.0, i32 0, i32 1
  store %struct.qual* %70, %struct.qual** %or, align 4, !tbaa !2
  %71 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 11), align 4, !tbaa !3
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %71, i32 1)
  %73 = extractvalue { i32, i1 } %72, 0
  %74 = extractvalue { i32, i1 } %72, 1
  br i1 %74, label %ioc_bb140, label %cont141

ioc_bb140:                                        ; preds = %if.then138
  %75 = sext i32 %71 to i64
  call void @__ioc_report_add_overflow(i32 1374, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %75, i64 1, i8 13) nounwind
  br label %cont141

cont141:                                          ; preds = %if.then138, %ioc_bb140
  store i32 %73, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 11), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 10), align 4, !tbaa !3
  br label %if.end597

if.else143:                                       ; preds = %if.else131
  %76 = load i8* %67, align 1, !tbaa !0
  %conv145 = sext i8 %76 to i32
  switch i32 %conv145, label %sw.default569 [
    i32 58, label %sw.bb146
    i32 -122, label %sw.bb154
    i32 94, label %sw.bb154
    i32 45, label %sw.bb155
    i32 64, label %if.then580
    i32 -117, label %sw.bb159
    i32 61, label %sw.bb159
    i32 112, label %sw.bb160
    i32 47, label %sw.bb161
    i32 46, label %sw.bb162
    i32 37, label %sw.bb163
    i32 -121, label %sw.bb178
    i32 82, label %sw.bb179
    i32 87, label %sw.bb180
    i32 88, label %sw.bb181
    i32 65, label %sw.bb182
    i32 73, label %sw.bb183
    i32 69, label %sw.bb184
    i32 114, label %sw.bb185
    i32 119, label %sw.bb186
    i32 120, label %sw.bb187
    i32 115, label %sw.bb188
    i32 83, label %sw.bb189
    i32 116, label %sw.bb190
    i32 100, label %sw.bb191
    i32 108, label %getrange.thread1198
    i32 85, label %sw.bb196
    i32 71, label %sw.bb199
    i32 117, label %sw.bb202
    i32 103, label %sw.bb238
    i32 102, label %sw.bb277
    i32 70, label %sw.bb279
    i32 77, label %sw.bb280
    i32 84, label %sw.bb288
    i32 78, label %sw.bb296
    i32 68, label %sw.bb301
    i32 110, label %sw.bb303
    i32 97, label %sw.bb308
    i32 109, label %sw.bb309
    i32 99, label %sw.bb310
    i32 76, label %cont313
    i32 111, label %sw.bb406
    i32 79, label %sw.bb406
    i32 43, label %if.end578
    i32 101, label %if.end578
    i32 91, label %sw.bb533
    i32 -113, label %sw.bb533
    i32 80, label %sw.bb556
  ]

sw.bb146:                                         ; preds = %if.else143
  call void @untokenize(i8* %67) nounwind
  %77 = load i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8), align 4, !tbaa !2
  %tobool148 = icmp eq i8* %77, null
  br i1 %tobool148, label %if.else151, label %if.then149

if.then149:                                       ; preds = %sw.bb146
  %call150 = call i8* @dyncat(i8* %67, i8* %77) nounwind
  store i8* %call150, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8), align 4, !tbaa !2
  br label %if.end597

if.else151:                                       ; preds = %sw.bb146
  store i8* %67, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8), align 4, !tbaa !2
  br label %if.end597

sw.bb154:                                         ; preds = %if.else143, %if.else143
  %xor = xor i32 %sense.0, 1
  br label %if.end597

sw.bb155:                                         ; preds = %if.else143
  %xor156 = xor i32 %sense.0, 2
  br label %if.end597

sw.bb159:                                         ; preds = %if.else143, %if.else143
  br label %if.then580

sw.bb160:                                         ; preds = %if.else143
  br label %if.then580

sw.bb161:                                         ; preds = %if.else143
  br label %if.then580

sw.bb162:                                         ; preds = %if.else143
  br label %if.then580

sw.bb163:                                         ; preds = %if.else143
  %78 = load i8* %incdec.ptr136, align 1, !tbaa !0
  switch i8 %78, label %if.then580 [
    i8 98, label %if.then167
    i8 99, label %if.then173
  ]

if.then167:                                       ; preds = %sw.bb163
  %incdec.ptr168 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr168, i8** %s, align 4, !tbaa !2
  br label %if.then580

if.then173:                                       ; preds = %sw.bb163
  %incdec.ptr174 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr174, i8** %s, align 4, !tbaa !2
  br label %if.then580

sw.bb178:                                         ; preds = %if.else143
  br label %if.then580

sw.bb179:                                         ; preds = %if.else143
  br label %if.then580

sw.bb180:                                         ; preds = %if.else143
  br label %if.then580

sw.bb181:                                         ; preds = %if.else143
  br label %if.then580

sw.bb182:                                         ; preds = %if.else143
  br label %if.then580

sw.bb183:                                         ; preds = %if.else143
  br label %if.then580

sw.bb184:                                         ; preds = %if.else143
  br label %if.then580

sw.bb185:                                         ; preds = %if.else143
  br label %if.then580

sw.bb186:                                         ; preds = %if.else143
  br label %if.then580

sw.bb187:                                         ; preds = %if.else143
  br label %if.then580

sw.bb188:                                         ; preds = %if.else143
  br label %if.then580

sw.bb189:                                         ; preds = %if.else143
  br label %if.then580

sw.bb190:                                         ; preds = %if.else143
  br label %if.then580

sw.bb191:                                         ; preds = %if.else143
  %call192 = call fastcc i64 @qgetnum(i8** %s)
  br label %if.then580

getrange.thread1198:                              ; preds = %if.else143
  store i32 -1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  br label %if.end390

sw.bb196:                                         ; preds = %if.else143
  %call197 = call i32 @geteuid() nounwind
  %conv198 = zext i32 %call197 to i64
  br label %if.then580

sw.bb199:                                         ; preds = %if.else143
  %call200 = call i32 @getegid() nounwind
  %conv201 = zext i32 %call200 to i64
  br label %if.then580

sw.bb202:                                         ; preds = %if.else143
  %79 = load i8* %incdec.ptr136, align 1, !tbaa !0
  %80 = icmp sgt i8 %79, -1
  br i1 %80, label %cont205, label %ioc_bb204

ioc_bb204:                                        ; preds = %sw.bb202
  %81 = sext i8 %79 to i64
  call void @__ioc_report_conversion(i32 1576, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont205

cont205:                                          ; preds = %ioc_bb204, %sw.bb202
  %idxprom206 = zext i8 %79 to i32
  %arrayidx207 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom206
  %82 = load i16* %arrayidx207, align 2, !tbaa !4
  %and213 = and i16 %82, 1
  %tobool214 = icmp eq i16 %and213, 0
  br i1 %tobool214, label %if.else217, label %if.then215

if.then215:                                       ; preds = %cont205
  %call216 = call fastcc i64 @qgetnum(i8** %s)
  br label %if.then580

if.else217:                                       ; preds = %cont205
  %83 = load i8** %s, align 4, !tbaa !2
  %call218 = call i8* @get_strarg(i8* %83, i32* %arglen) nounwind
  %84 = load i8* %call218, align 1, !tbaa !0
  %tobool219 = icmp eq i8 %84, 0
  br i1 %tobool219, label %if.then220, label %cont223

if.then220:                                       ; preds = %if.else217
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %if.then580

cont223:                                          ; preds = %if.else217
  store i8 0, i8* %call218, align 1, !tbaa !0
  %85 = load i8** %s, align 4, !tbaa !2
  %86 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr224 = getelementptr inbounds i8* %85, i32 %86
  %call225 = call %struct.passwd* @getpwnam(i8* %add.ptr224) nounwind
  %tobool226 = icmp eq %struct.passwd* %call225, null
  br i1 %tobool226, label %if.end230, label %if.end230.thread

if.end230.thread:                                 ; preds = %cont223
  %pw_uid = getelementptr inbounds %struct.passwd* %call225, i32 0, i32 2
  %87 = load i32* %pw_uid, align 4, !tbaa !3
  %conv228 = zext i32 %87 to i64
  br label %if.then232

if.end230:                                        ; preds = %cont223
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0)) nounwind
  br label %if.then232

if.then232:                                       ; preds = %if.end230, %if.end230.thread
  %data.21193 = phi i64 [ %conv228, %if.end230.thread ], [ 0, %if.end230 ]
  store i8 %84, i8* %call218, align 1
  %88 = load i32* %arglen, align 4, !tbaa !3
  %add.ptr233 = getelementptr inbounds i8* %call218, i32 %88
  store i8* %add.ptr233, i8** %s, align 4, !tbaa !2
  br label %if.then580

sw.bb238:                                         ; preds = %if.else143
  %89 = load i8* %incdec.ptr136, align 1, !tbaa !0
  %90 = icmp sgt i8 %89, -1
  br i1 %90, label %cont241, label %ioc_bb240

ioc_bb240:                                        ; preds = %sw.bb238
  %91 = sext i8 %89 to i64
  call void @__ioc_report_conversion(i32 1616, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %91, i8 1) nounwind
  br label %cont241

cont241:                                          ; preds = %ioc_bb240, %sw.bb238
  %idxprom242 = zext i8 %89 to i32
  %arrayidx243 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom242
  %92 = load i16* %arrayidx243, align 2, !tbaa !4
  %and249 = and i16 %92, 1
  %tobool250 = icmp eq i16 %and249, 0
  br i1 %tobool250, label %if.else253, label %if.then251

if.then251:                                       ; preds = %cont241
  %call252 = call fastcc i64 @qgetnum(i8** %s)
  br label %if.then580

if.else253:                                       ; preds = %cont241
  %93 = load i8** %s, align 4, !tbaa !2
  %call257 = call i8* @get_strarg(i8* %93, i32* %arglen256) nounwind
  %94 = load i8* %call257, align 1, !tbaa !0
  %tobool258 = icmp eq i8 %94, 0
  br i1 %tobool258, label %if.then259, label %cont262

if.then259:                                       ; preds = %if.else253
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0)) nounwind
  br label %if.then580

cont262:                                          ; preds = %if.else253
  store i8 0, i8* %call257, align 1, !tbaa !0
  %95 = load i8** %s, align 4, !tbaa !2
  %96 = load i32* %arglen256, align 4, !tbaa !3
  %add.ptr263 = getelementptr inbounds i8* %95, i32 %96
  %call264 = call %struct.group* @getgrnam(i8* %add.ptr263) nounwind
  %tobool265 = icmp eq %struct.group* %call264, null
  br i1 %tobool265, label %if.end269, label %if.end269.thread

if.end269.thread:                                 ; preds = %cont262
  %gr_gid = getelementptr inbounds %struct.group* %call264, i32 0, i32 2
  %97 = load i32* %gr_gid, align 4, !tbaa !3
  %conv267 = zext i32 %97 to i64
  br label %if.then271

if.end269:                                        ; preds = %cont262
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0)) nounwind
  br label %if.then271

if.then271:                                       ; preds = %if.end269, %if.end269.thread
  %data.31194 = phi i64 [ %conv267, %if.end269.thread ], [ 0, %if.end269 ]
  store i8 %94, i8* %call257, align 1
  %98 = load i32* %arglen256, align 4, !tbaa !3
  %add.ptr272 = getelementptr inbounds i8* %call257, i32 %98
  store i8* %add.ptr272, i8** %s, align 4, !tbaa !2
  br label %if.then580

sw.bb277:                                         ; preds = %if.else143
  %99 = load i8* %incdec.ptr136, align 1, !tbaa !0
  %cmp.i = icmp eq i8 %99, 61
  br i1 %cmp.i, label %do.body.preheader.i, label %ioc_bb.i

ioc_bb.i:                                         ; preds = %sw.bb277
  call void @__ioc_report_conversion(i32 848, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 139, i8 1) nounwind
  switch i8 %99, label %ioc_bb19.i [
    i8 -117, label %do.body.preheader.i
    i8 43, label %do.body.preheader.i
    i8 45, label %do.body.preheader.i
    i8 63, label %do.body.preheader.i
  ]

ioc_bb19.i:                                       ; preds = %ioc_bb.i
  call void @__ioc_report_conversion(i32 848, i32 98, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 149, i8 1) nounwind
  %cmp21.i = icmp eq i8 %99, -107
  %.off462.i = add i8 %99, -48
  %100 = icmp ult i8 %.off462.i, 8
  %or.cond.i = or i1 %cmp21.i, %100
  br i1 %or.cond.i, label %do.body.preheader.i, label %if.else.i

if.else.i:                                        ; preds = %ioc_bb19.i
  %cmp35.i = icmp eq i8 %99, 60
  br i1 %cmp35.i, label %cont86.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.else.i
  %cmp38.i = icmp eq i8 %99, 91
  br i1 %cmp38.i, label %cont86.i, label %cond.false41.i

cond.false41.i:                                   ; preds = %cond.false.i
  %cmp43.i = icmp eq i8 %99, 123
  br i1 %cmp43.i, label %cont86.i, label %ioc_bb48.i

ioc_bb48.i:                                       ; preds = %cond.false41.i
  call void @__ioc_report_conversion(i32 853, i32 76, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 146, i8 1) nounwind
  %cmp50.i = icmp eq i8 %99, -110
  br i1 %cmp50.i, label %ioc_bb53.i, label %ioc_bb57.i

ioc_bb53.i:                                       ; preds = %ioc_bb48.i
  call void @__ioc_report_conversion(i32 853, i32 90, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 147, i8 1) nounwind
  br label %cont86.i

ioc_bb57.i:                                       ; preds = %ioc_bb48.i
  call void @__ioc_report_conversion(i32 853, i32 113, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 143, i8 1) nounwind
  %cmp59.i = icmp eq i8 %99, -113
  br i1 %cmp59.i, label %ioc_bb62.i, label %ioc_bb66.i

ioc_bb62.i:                                       ; preds = %ioc_bb57.i
  call void @__ioc_report_conversion(i32 853, i32 127, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 144, i8 1) nounwind
  br label %cont86.i

ioc_bb66.i:                                       ; preds = %ioc_bb57.i
  call void @__ioc_report_conversion(i32 853, i32 150, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp68.i = icmp eq i8 %99, -115
  br i1 %cmp68.i, label %ioc_bb71.i, label %cont86.i

ioc_bb71.i:                                       ; preds = %ioc_bb66.i
  call void @__ioc_report_conversion(i32 853, i32 164, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  br label %cont86.i

cont86.i:                                         ; preds = %ioc_bb71.i, %ioc_bb66.i, %ioc_bb62.i, %ioc_bb53.i, %cond.false41.i, %cond.false.i, %if.else.i
  %cond84.i = phi i8 [ 62, %if.else.i ], [ 93, %cond.false.i ], [ 125, %cond.false41.i ], [ -109, %ioc_bb53.i ], [ -112, %ioc_bb62.i ], [ -114, %ioc_bb71.i ], [ %99, %ioc_bb66.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %67, i32 2
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %cont86.i, %ioc_bb19.i, %ioc_bb.i, %ioc_bb.i, %ioc_bb.i, %ioc_bb.i, %sw.bb277
  %p.0.ph.i = phi i8* [ %incdec.ptr136, %sw.bb277 ], [ %incdec.ptr136, %ioc_bb19.i ], [ %incdec.ptr136, %ioc_bb.i ], [ %incdec.ptr136, %ioc_bb.i ], [ %incdec.ptr136, %ioc_bb.i ], [ %incdec.ptr136, %ioc_bb.i ], [ %incdec.ptr.i, %cont86.i ]
  %end.0.ph.i = phi i8 [ 0, %sw.bb277 ], [ 0, %ioc_bb19.i ], [ 0, %ioc_bb.i ], [ 0, %ioc_bb.i ], [ 0, %ioc_bb.i ], [ 0, %ioc_bb.i ], [ %cond84.i, %cont86.i ]
  %tobool.i = icmp eq i8 %end.0.ph.i, 0
  %tobool223.i = icmp ne i8 %end.0.ph.i, 0
  %tobool223.not.i = xor i1 %tobool223.i, true
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %do.body.preheader.i
  %yes.0.i = phi i64 [ %yes.2.i, %do.cond.i ], [ 0, %do.body.preheader.i ]
  %no.0.i = phi i64 [ %no.1.i, %do.cond.i ], [ 0, %do.body.preheader.i ]
  %p.0.i = phi i8* [ %p.5.i, %do.cond.i ], [ %p.0.ph.i, %do.body.preheader.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %sw.epilog.i, %do.body.i
  %mask.0.i = phi i64 [ 0, %do.body.i ], [ %mask.1.i, %sw.epilog.i ]
  %p.1.i = phi i8* [ %p.0.i, %do.body.i ], [ %incdec.ptr111.i, %sw.epilog.i ]
  %101 = load i8* %p.1.i, align 1, !tbaa !0
  %conv88.i = sext i8 %101 to i32
  switch i8 %101, label %while.end.i [
    i8 117, label %land.rhs.i
    i8 103, label %land.rhs.i
    i8 111, label %land.rhs.i
    i8 97, label %land.rhs.i
  ]

land.rhs.i:                                       ; preds = %while.cond.i, %while.cond.i, %while.cond.i, %while.cond.i
  br i1 %tobool.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  switch i32 %conv88.i, label %sw.epilog.i [
    i32 111, label %sw.bb.i
    i32 103, label %sw.bb105.i
    i32 117, label %sw.bb107.i
    i32 97, label %sw.bb109.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %or.i = or i64 %mask.0.i, 519
  br label %sw.epilog.i

sw.bb105.i:                                       ; preds = %while.body.i
  %or106.i = or i64 %mask.0.i, 1080
  br label %sw.epilog.i

sw.bb107.i:                                       ; preds = %while.body.i
  %or108.i = or i64 %mask.0.i, 2496
  br label %sw.epilog.i

sw.bb109.i:                                       ; preds = %while.body.i
  %or110.i = or i64 %mask.0.i, 4095
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb109.i, %sw.bb107.i, %sw.bb105.i, %sw.bb.i, %while.body.i
  %mask.1.i = phi i64 [ %mask.0.i, %while.body.i ], [ %or110.i, %sw.bb109.i ], [ %or108.i, %sw.bb107.i ], [ %or106.i, %sw.bb105.i ], [ %or.i, %sw.bb.i ]
  %incdec.ptr111.i = getelementptr inbounds i8* %p.1.i, i32 1
  br label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i
  %cmp113.i = icmp eq i8 %101, 43
  %cmp117.i = icmp eq i8 %101, 45
  %or.cond448.i = or i1 %cmp113.i, %cmp117.i
  %cond123.i = select i1 %or.cond448.i, i32 %conv88.i, i32 61
  switch i8 %101, label %ioc_bb142.i [
    i8 61, label %if.then146.i
    i8 45, label %if.then146.i
    i8 43, label %if.then146.i
  ]

ioc_bb142.i:                                      ; preds = %while.end.i
  call void @__ioc_report_conversion(i32 884, i32 58, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 139, i8 1) nounwind
  %cmp144.i = icmp eq i8 %101, -117
  br i1 %cmp144.i, label %if.then146.i, label %if.end148.i

if.then146.i:                                     ; preds = %ioc_bb142.i, %while.end.i, %while.end.i, %while.end.i
  %incdec.ptr147.i = getelementptr inbounds i8* %p.1.i, i32 1
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then146.i, %ioc_bb142.i
  %p.2.i = phi i8* [ %incdec.ptr147.i, %if.then146.i ], [ %p.1.i, %ioc_bb142.i ]
  %tobool149.i = icmp eq i64 %mask.0.i, 0
  br i1 %tobool149.i, label %if.else221.i, label %while.cond151.preheader.i

while.cond151.preheader.i:                        ; preds = %if.end148.i
  %incdec.ptr152468.i = getelementptr inbounds i8* %p.2.i, i32 1
  %102 = load i8* %p.2.i, align 1, !tbaa !0
  %cmp154469.i = icmp eq i8 %102, 44
  %cmp159470.i = icmp eq i8 %102, %end.0.ph.i
  %or.cond451471.i = or i1 %cmp154469.i, %cmp159470.i
  br i1 %or.cond451471.i, label %while.end199.i, label %while.body162.i

while.body162.i:                                  ; preds = %while.cond151.preheader.i, %while.cond151.backedge.i
  %103 = phi i8 [ %109, %while.cond151.backedge.i ], [ %102, %while.cond151.preheader.i ]
  %incdec.ptr152473.i = phi i8* [ %incdec.ptr152.i, %while.cond151.backedge.i ], [ %incdec.ptr152468.i, %while.cond151.preheader.i ]
  %val.0472.i = phi i64 [ %val.0.be.i, %while.cond151.backedge.i ], [ 0, %while.cond151.preheader.i ]
  %conv153.i = sext i8 %103 to i32
  switch i32 %conv153.i, label %sw.default.i [
    i32 120, label %sw.bb164.i
    i32 119, label %sw.bb166.i
    i32 114, label %sw.bb168.i
    i32 115, label %sw.bb170.i
    i32 116, label %sw.bb172.i
    i32 48, label %sw.bb181.i
    i32 49, label %sw.bb181.i
    i32 50, label %sw.bb181.i
    i32 51, label %sw.bb181.i
    i32 52, label %sw.bb181.i
    i32 53, label %sw.bb181.i
    i32 54, label %sw.bb181.i
    i32 55, label %sw.bb181.i
  ]

sw.bb164.i:                                       ; preds = %while.body162.i
  %or165.i = or i64 %val.0472.i, 73
  br label %while.cond151.backedge.i

sw.bb166.i:                                       ; preds = %while.body162.i
  %or167.i = or i64 %val.0472.i, 146
  br label %while.cond151.backedge.i

sw.bb168.i:                                       ; preds = %while.body162.i
  %or169.i = or i64 %val.0472.i, 292
  br label %while.cond151.backedge.i

sw.bb170.i:                                       ; preds = %while.body162.i
  %or171.i = or i64 %val.0472.i, 3072
  br label %while.cond151.backedge.i

sw.bb172.i:                                       ; preds = %while.body162.i
  %or173.i = or i64 %val.0472.i, 512
  br label %while.cond151.backedge.i

sw.bb181.i:                                       ; preds = %while.body162.i, %while.body162.i, %while.body162.i, %while.body162.i, %while.body162.i, %while.body162.i, %while.body162.i, %while.body162.i
  %conv182.i = sext i8 %103 to i64
  %104 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv182.i, i64 48) nounwind
  %105 = extractvalue { i64, i1 } %104, 0
  %106 = extractvalue { i64, i1 } %104, 1
  br i1 %106, label %ioc_bb183.i, label %cont186.i

ioc_bb183.i:                                      ; preds = %sw.bb181.i
  call void @__ioc_report_sub_overflow(i32 938, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %conv182.i, i64 48, i8 14) nounwind
  br label %cont186.i

cont186.i:                                        ; preds = %ioc_bb183.i, %sw.bb181.i
  %107 = icmp ult i64 %105, 1152921504606846976
  br i1 %107, label %cont188.i, label %ioc_bb187.i

ioc_bb187.i:                                      ; preds = %cont186.i
  call void @__ioc_report_shl_strict(i32 939, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %105, i64 3, i8 14) nounwind
  br label %cont188.i

cont188.i:                                        ; preds = %ioc_bb187.i, %cont186.i
  %shl.i = shl i64 %105, 3
  %108 = icmp ult i64 %105, 144115188075855872
  br i1 %108, label %cont194.i, label %ioc_bb193.i

ioc_bb193.i:                                      ; preds = %cont188.i
  call void @__ioc_report_shl_strict(i32 939, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %105, i64 6, i8 14) nounwind
  br label %cont194.i

cont194.i:                                        ; preds = %ioc_bb193.i, %cont188.i
  %shl195.i = shl i64 %105, 6
  %or189.i = or i64 %105, %val.0472.i
  %or196.i = or i64 %or189.i, %shl.i
  %or197.i = or i64 %or196.i, %shl195.i
  br label %while.cond151.backedge.i

while.cond151.backedge.i:                         ; preds = %cont194.i, %sw.bb172.i, %sw.bb170.i, %sw.bb168.i, %sw.bb166.i, %sw.bb164.i
  %val.0.be.i = phi i64 [ %or197.i, %cont194.i ], [ %or173.i, %sw.bb172.i ], [ %or171.i, %sw.bb170.i ], [ %or169.i, %sw.bb168.i ], [ %or167.i, %sw.bb166.i ], [ %or165.i, %sw.bb164.i ]
  %incdec.ptr152.i = getelementptr inbounds i8* %incdec.ptr152473.i, i32 1
  %109 = load i8* %incdec.ptr152473.i, align 1, !tbaa !0
  %cmp154.i = icmp eq i8 %109, 44
  %cmp159.i = icmp eq i8 %109, %end.0.ph.i
  %or.cond451.i = or i1 %cmp154.i, %cmp159.i
  br i1 %or.cond451.i, label %while.end199.i, label %while.body162.i

sw.default.i:                                     ; preds = %while.body162.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str25, i32 0, i32 0)) nounwind
  br label %if.then580

while.end199.i:                                   ; preds = %while.cond151.backedge.i, %while.cond151.preheader.i
  %.lcssa466.i = phi i8 [ %102, %while.cond151.preheader.i ], [ %109, %while.cond151.backedge.i ]
  %incdec.ptr152.lcssa.i = phi i8* [ %incdec.ptr152468.i, %while.cond151.preheader.i ], [ %incdec.ptr152.i, %while.cond151.backedge.i ]
  %val.0.lcssa.i = phi i64 [ 0, %while.cond151.preheader.i ], [ %val.0.be.i, %while.cond151.backedge.i ]
  switch i32 %cond123.i, label %if.end209.i [
    i32 61, label %if.then207.i
    i32 43, label %if.then207.i
  ]

if.then207.i:                                     ; preds = %while.end199.i, %while.end199.i
  %and.i = and i64 %val.0.lcssa.i, %mask.0.i
  %or208.i = or i64 %and.i, %yes.0.i
  %neg.i = xor i64 %val.0.lcssa.i, -1
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.then207.i, %while.end199.i
  %yes.1.i = phi i64 [ %or208.i, %if.then207.i ], [ %yes.0.i, %while.end199.i ]
  %val.1.i = phi i64 [ %neg.i, %if.then207.i ], [ %val.0.lcssa.i, %while.end199.i ]
  switch i32 %cond123.i, label %do.cond.i [
    i32 61, label %if.then217.i
    i32 45, label %if.then217.i
  ]

if.then217.i:                                     ; preds = %if.end209.i, %if.end209.i
  %and218.i = and i64 %val.1.i, %mask.0.i
  %or219.i = or i64 %and218.i, %no.0.i
  br label %do.cond.i

if.else221.i:                                     ; preds = %if.end148.i
  %cmp227.i = icmp eq i8 %101, %end.0.ph.i
  %or.cond454.i = and i1 %tobool223.i, %cmp227.i
  br i1 %or.cond454.i, label %if.else335.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %if.else221.i
  switch i8 %101, label %while.cond237.i [
    i8 44, label %if.else335.i
    i8 0, label %if.else335.i
  ]

while.cond237.i:                                  ; preds = %switch.early.test.i, %if.end296.i
  %val.2.i = phi i64 [ %val.3.i, %if.end296.i ], [ 0, %switch.early.test.i ]
  %t.0.i = phi i64 [ %t.1.i, %if.end296.i ], [ 4095, %switch.early.test.i ]
  %p.4.i = phi i8* [ %incdec.ptr297.i, %if.end296.i ], [ %p.2.i, %switch.early.test.i ]
  %110 = load i8* %p.4.i, align 1, !tbaa !0
  %cmp239.i = icmp eq i8 %110, 63
  br i1 %cmp239.i, label %cont267.i, label %ioc_bb243.i

ioc_bb243.i:                                      ; preds = %while.cond237.i
  call void @__ioc_report_conversion(i32 958, i32 46, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 149, i8 1) nounwind
  %cmp245.i = icmp eq i8 %110, -107
  br i1 %cmp245.i, label %ioc_bb261.thread.i, label %lor.rhs.i

ioc_bb261.thread.i:                               ; preds = %ioc_bb243.i
  call void @__ioc_report_conversion(i32 959, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 149, i8 1) nounwind
  br label %cont267.i

lor.rhs.i:                                        ; preds = %ioc_bb243.i
  %.off.i = add i8 %110, -48
  %111 = icmp ult i8 %.off.i, 8
  br i1 %111, label %cont281.i, label %while.end298.i

cont267.i:                                        ; preds = %ioc_bb261.thread.i, %while.cond237.i
  %112 = icmp ult i64 %t.0.i, 1152921504606846976
  br i1 %112, label %cont270.i, label %ioc_bb269.i

ioc_bb269.i:                                      ; preds = %cont267.i
  call void @__ioc_report_shl_strict(i32 960, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %t.0.i, i64 3, i8 14) nounwind
  br label %cont270.i

cont270.i:                                        ; preds = %ioc_bb269.i, %cont267.i
  %shl271.i = shl i64 %t.0.i, 3
  %or272.i = or i64 %shl271.i, 7
  %113 = icmp ult i64 %val.2.i, 1152921504606846976
  br i1 %113, label %cont277.i, label %ioc_bb276.i

ioc_bb276.i:                                      ; preds = %cont270.i
  call void @__ioc_report_shl_strict(i32 961, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %val.2.i, i64 3, i8 14) nounwind
  br label %cont277.i

cont277.i:                                        ; preds = %ioc_bb276.i, %cont270.i
  %shl278.i = shl i64 %val.2.i, 3
  br label %if.end296.i

cont281.i:                                        ; preds = %lor.rhs.i
  call void @__ioc_report_conversion(i32 959, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 149, i8 1) nounwind
  %114 = icmp ult i64 %t.0.i, 1152921504606846976
  br i1 %114, label %cont284.i, label %ioc_bb283.i

ioc_bb283.i:                                      ; preds = %cont281.i
  call void @__ioc_report_shl_strict(i32 964, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %t.0.i, i64 3, i8 14) nounwind
  br label %cont284.i

cont284.i:                                        ; preds = %ioc_bb283.i, %cont281.i
  %shl285.i = shl i64 %t.0.i, 3
  %115 = icmp ult i64 %val.2.i, 1152921504606846976
  br i1 %115, label %cont290.i, label %ioc_bb289.i

ioc_bb289.i:                                      ; preds = %cont284.i
  call void @__ioc_report_shl_strict(i32 965, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %val.2.i, i64 3, i8 14) nounwind
  br label %cont290.i

cont290.i:                                        ; preds = %ioc_bb289.i, %cont284.i
  %shl291.i = shl i64 %val.2.i, 3
  %conv292.i = sext i8 %110 to i64
  %116 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %conv292.i, i64 48) nounwind
  %117 = extractvalue { i64, i1 } %116, 0
  %118 = extractvalue { i64, i1 } %116, 1
  br i1 %118, label %ioc_bb293.i, label %cont294.i

ioc_bb293.i:                                      ; preds = %cont290.i
  call void @__ioc_report_sub_overflow(i32 965, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %conv292.i, i64 48, i8 14) nounwind
  br label %cont294.i

cont294.i:                                        ; preds = %ioc_bb293.i, %cont290.i
  %or295.i = or i64 %117, %shl291.i
  br label %if.end296.i

if.end296.i:                                      ; preds = %cont294.i, %cont277.i
  %val.3.i = phi i64 [ %shl278.i, %cont277.i ], [ %or295.i, %cont294.i ]
  %t.1.i = phi i64 [ %or272.i, %cont277.i ], [ %shl285.i, %cont294.i ]
  %incdec.ptr297.i = getelementptr inbounds i8* %p.4.i, i32 1
  br label %while.cond237.i

while.end298.i:                                   ; preds = %lor.rhs.i
  %cmp304.i = icmp eq i8 %110, %end.0.ph.i
  %or.cond458.i = or i1 %cmp304.i, %tobool223.not.i
  %cmp308.i = icmp eq i8 %110, 44
  %or.cond459.i = or i1 %or.cond458.i, %cmp308.i
  br i1 %or.cond459.i, label %if.end311.i, label %if.then310.i

if.then310.i:                                     ; preds = %while.end298.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str25, i32 0, i32 0)) nounwind
  br label %if.then580

if.end311.i:                                      ; preds = %while.end298.i
  switch i32 %cond123.i, label %if.else331.i [
    i32 61, label %if.then315.i
    i32 43, label %if.then329.i
  ]

if.then315.i:                                     ; preds = %if.end311.i
  %neg316.i = xor i64 %t.0.i, -1
  %and317.i = and i64 %yes.0.i, %neg316.i
  %or318.i = or i64 %and317.i, %val.2.i
  %neg321.i = xor i64 %val.2.i, -1
  %and320447.i = or i64 %no.0.i, %neg321.i
  %or324.i = and i64 %and320447.i, %neg316.i
  br label %do.cond.i

if.then329.i:                                     ; preds = %if.end311.i
  %or330.i = or i64 %val.2.i, %yes.0.i
  br label %do.cond.i

if.else331.i:                                     ; preds = %if.end311.i
  %or332.i = or i64 %val.2.i, %no.0.i
  br label %do.cond.i

if.else335.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %if.else221.i
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([27 x i8]* @.str25, i32 0, i32 0)) nounwind
  br label %if.then580

do.cond.i:                                        ; preds = %if.else331.i, %if.then329.i, %if.then315.i, %if.then217.i, %if.end209.i
  %yes.2.i = phi i64 [ %yes.1.i, %if.then217.i ], [ %or318.i, %if.then315.i ], [ %or330.i, %if.then329.i ], [ %yes.0.i, %if.else331.i ], [ %yes.1.i, %if.end209.i ]
  %no.1.i = phi i64 [ %or219.i, %if.then217.i ], [ %or324.i, %if.then315.i ], [ %no.0.i, %if.then329.i ], [ %or332.i, %if.else331.i ], [ %no.0.i, %if.end209.i ]
  %p.5.i = phi i8* [ %incdec.ptr152.lcssa.i, %if.then217.i ], [ %p.4.i, %if.then315.i ], [ %p.4.i, %if.then329.i ], [ %p.4.i, %if.else331.i ], [ %incdec.ptr152.lcssa.i, %if.end209.i ]
  %c.0.i = phi i8 [ %.lcssa466.i, %if.then217.i ], [ %110, %if.then315.i ], [ %110, %if.then329.i ], [ %110, %if.else331.i ], [ %.lcssa466.i, %if.end209.i ]
  %cmp343.i = icmp eq i8 %c.0.i, %end.0.ph.i
  %or.cond460.i = or i1 %tobool.i, %cmp343.i
  br i1 %or.cond460.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  store i8* %p.5.i, i8** %s, align 4, !tbaa !2
  %and346.i = and i64 %yes.2.i, 4095
  %and347.i = shl i64 %no.1.i, 12
  %shl353.i = and i64 %and347.i, 16773120
  %or354.i = or i64 %shl353.i, %and346.i
  br label %if.then580

sw.bb279:                                         ; preds = %if.else143
  br label %if.then580

sw.bb280:                                         ; preds = %if.else143
  %and281 = and i32 %sense.0, 1
  %lnot283 = icmp eq i32 %and281, 0
  %119 = xor i32 %and281, 1
  store i32 %119, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 16), align 4, !tbaa !3
  br i1 %lnot283, label %if.then285, label %if.end597

if.then285:                                       ; preds = %sw.bb280
  %and286 = and i32 %sense.0, 2
  store i32 %and286, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 20), align 4, !tbaa !3
  br label %if.end597

sw.bb288:                                         ; preds = %if.else143
  %and289 = and i32 %sense.0, 1
  %lnot291 = icmp eq i32 %and289, 0
  %120 = xor i32 %and289, 1
  store i32 %120, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 18), align 4, !tbaa !3
  br i1 %lnot291, label %if.then293, label %if.end597

if.then293:                                       ; preds = %sw.bb288
  %and294 = and i32 %sense.0, 2
  store i32 %and294, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 20), align 4, !tbaa !3
  br label %if.end597

sw.bb296:                                         ; preds = %if.else143
  %and297 = and i32 %sense.0, 1
  %121 = xor i32 %and297, 1
  store i32 %121, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 15), align 4, !tbaa !3
  br label %if.end597

sw.bb301:                                         ; preds = %if.else143
  %and302 = and i32 %sense.0, 1
  store i32 %and302, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 17), align 4, !tbaa !3
  br label %if.end597

sw.bb303:                                         ; preds = %if.else143
  %and304 = and i32 %sense.0, 1
  %122 = xor i32 %and304, 1
  store i32 %122, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 19), align 4, !tbaa !3
  br label %if.end597

sw.bb308:                                         ; preds = %if.else143
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  br label %if.then348

sw.bb309:                                         ; preds = %if.else143
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  br label %if.then348

sw.bb310:                                         ; preds = %if.else143
  store i32 2, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  br label %if.then348

cont313:                                          ; preds = %if.else143
  store i32 -1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %123 = load i8* %incdec.ptr136, align 1, !tbaa !0
  switch i8 %123, label %if.end390 [
    i8 112, label %if.then321
    i8 80, label %if.then321
    i8 107, label %if.then331
    i8 75, label %if.then331
    i8 109, label %if.then341
    i8 77, label %if.then341
  ]

if.then321:                                       ; preds = %cont313, %cont313
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr322 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr322, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then331:                                       ; preds = %cont313, %cont313
  store i32 2, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr332 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr332, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then341:                                       ; preds = %cont313, %cont313
  store i32 3, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr342 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr342, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then348:                                       ; preds = %sw.bb308, %sw.bb309, %sw.bb310
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %124 = load i8* %incdec.ptr136, align 1, !tbaa !0
  switch i8 %124, label %if.end390 [
    i8 104, label %if.then352
    i8 109, label %if.then358
    i8 119, label %if.then364
    i8 77, label %if.then370
    i8 115, label %if.then376
    i8 100, label %if.then382
  ]

if.then352:                                       ; preds = %if.then348
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr353 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr353, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then358:                                       ; preds = %if.then348
  store i32 2, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr359 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr359, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then364:                                       ; preds = %if.then348
  store i32 3, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr365 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr365, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then370:                                       ; preds = %if.then348
  store i32 4, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr371 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr371, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then376:                                       ; preds = %if.then348
  store i32 5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %incdec.ptr377 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr377, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.then382:                                       ; preds = %if.then348
  %incdec.ptr383 = getelementptr inbounds i8* %67, i32 2
  store i8* %incdec.ptr383, i8** %s, align 4, !tbaa !2
  br label %if.end390

if.end390:                                        ; preds = %cont313, %if.then321, %if.then341, %if.then331, %getrange.thread1198, %if.then348, %if.then352, %if.then364, %if.then376, %if.then382, %if.then370, %if.then358
  %125 = phi i8* [ %incdec.ptr136, %if.then348 ], [ %incdec.ptr353, %if.then352 ], [ %incdec.ptr365, %if.then364 ], [ %incdec.ptr377, %if.then376 ], [ %incdec.ptr383, %if.then382 ], [ %incdec.ptr371, %if.then370 ], [ %incdec.ptr359, %if.then358 ], [ %incdec.ptr136, %getrange.thread1198 ], [ %incdec.ptr136, %cont313 ], [ %incdec.ptr322, %if.then321 ], [ %incdec.ptr342, %if.then341 ], [ %incdec.ptr332, %if.then331 ]
  %func.01196 = phi i32 (i8*, %struct.stat*, i64, i8*)* [ @qualtime, %if.then348 ], [ @qualtime, %if.then352 ], [ @qualtime, %if.then364 ], [ @qualtime, %if.then376 ], [ @qualtime, %if.then382 ], [ @qualtime, %if.then370 ], [ @qualtime, %if.then358 ], [ @qualnlink, %getrange.thread1198 ], [ @qualsize, %cont313 ], [ @qualsize, %if.then321 ], [ @qualsize, %if.then341 ], [ @qualsize, %if.then331 ]
  %126 = load i8* %125, align 1, !tbaa !0
  %cmp392 = icmp eq i8 %126, 43
  br i1 %cmp392, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end390
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  br label %if.then401

cond.end:                                         ; preds = %if.end390
  %cmp395 = icmp eq i8 %126, 45
  %cond = sext i1 %cmp395 to i32
  store i32 %cond, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  br i1 %cmp395, label %if.then401, label %if.end403

if.then401:                                       ; preds = %cond.end, %cond.end.thread
  %incdec.ptr402 = getelementptr inbounds i8* %125, i32 1
  store i8* %incdec.ptr402, i8** %s, align 4, !tbaa !2
  br label %if.end403

if.end403:                                        ; preds = %cond.end, %if.then401
  %call404 = call fastcc i64 @qgetnum(i8** %s)
  br label %if.then580

sw.bb406:                                         ; preds = %if.else143, %if.else143
  %127 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %cmp407 = icmp eq i32 %127, 12
  br i1 %cmp407, label %if.then409, label %if.end416

if.then409:                                       ; preds = %sw.bb406
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0, i32 0)) nounwind
  %128 = load i8** @pathbuf, align 4, !tbaa !2
  %129 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %128, i32 %129) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.end416:                                        ; preds = %sw.bb406
  %add.ptr417 = getelementptr inbounds i8* %67, i32 2
  store i8* %add.ptr417, i8** %send, align 4, !tbaa !2
  %130 = load i8* %incdec.ptr136, align 1, !tbaa !0
  %conv418 = sext i8 %130 to i32
  switch i32 %conv418, label %sw.default [
    i32 110, label %if.then474
    i32 76, label %sw.bb420
    i32 108, label %cont425
    i32 97, label %cont430
    i32 109, label %cont435
    i32 99, label %cont440
    i32 100, label %sw.bb441
    i32 78, label %cont450
    i32 101, label %sw.bb452
    i32 43, label %sw.bb452
  ]

sw.bb420:                                         ; preds = %if.end416
  br label %if.then474

cont425:                                          ; preds = %if.end416
  br label %if.then474

cont430:                                          ; preds = %if.end416
  br label %if.then474

cont435:                                          ; preds = %if.end416
  br label %if.then474

cont440:                                          ; preds = %if.end416
  br label %if.then474

sw.bb441:                                         ; preds = %if.end416
  br label %if.then474

cont450:                                          ; preds = %if.end416
  br label %if.then474

sw.bb452:                                         ; preds = %if.end416, %if.end416
  %call453 = call fastcc i8* @glob_exec_string(i8** %send)
  %131 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %exec = getelementptr inbounds %struct.globdata* @curglobdata, i32 0, i32 23, i32 %131, i32 1
  store i8* %call453, i8** %exec, align 4, !tbaa !2
  %cmp455 = icmp eq i8* %call453, null
  br i1 %cmp455, label %do.body458, label %sw.bb452.if.end498_crit_edge

sw.bb452.if.end498_crit_edge:                     ; preds = %sw.bb452
  %.pre1355 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  %.pre1356 = load i8** %s, align 4, !tbaa !2
  %.pre1357 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  br label %if.end498

do.body458:                                       ; preds = %sw.bb452
  %132 = load i8** @pathbuf, align 4, !tbaa !2
  %133 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %132, i32 %133) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

sw.default:                                       ; preds = %if.end416
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0)) nounwind
  %134 = load i8** @pathbuf, align 4, !tbaa !2
  %135 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %134, i32 %135) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.then474:                                       ; preds = %cont450, %sw.bb441, %cont440, %cont435, %cont430, %cont425, %sw.bb420, %if.end416
  %t.0.ph = phi i32 [ 16384, %cont450 ], [ 2, %sw.bb441 ], [ 64, %cont440 ], [ 32, %cont435 ], [ 16, %cont430 ], [ 128, %cont425 ], [ 8, %sw.bb420 ], [ 1, %if.end416 ]
  %and475 = and i32 %sense.0, 2
  %tobool476 = icmp eq i32 %and475, 0
  br i1 %tobool476, label %if.end487, label %land.lhs.true477

land.lhs.true477:                                 ; preds = %if.then474
  %and478 = and i32 %t.0.ph, 3
  %tobool479 = icmp eq i32 %and478, 0
  %shl486 = shl nuw nsw i32 %t.0.ph, 5
  %shl486.t.0 = select i1 %tobool479, i32 %shl486, i32 %t.0.ph
  br label %if.end487

if.end487:                                        ; preds = %land.lhs.true477, %if.then474
  %t.1 = phi i32 [ %t.0.ph, %if.then474 ], [ %shl486.t.0, %land.lhs.true477 ]
  %136 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  %and488 = and i32 %136, %t.1
  %tobool489 = icmp eq i32 %and488, 0
  br i1 %tobool489, label %if.end498, label %if.then490

if.then490:                                       ; preds = %if.end487
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)) nounwind
  %137 = load i8** @pathbuf, align 4, !tbaa !2
  %138 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %137, i32 %138) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.end498:                                        ; preds = %sw.bb452.if.end498_crit_edge, %if.end487
  %139 = phi i32 [ %127, %if.end487 ], [ %.pre1357, %sw.bb452.if.end498_crit_edge ]
  %140 = phi i8* [ %incdec.ptr136, %if.end487 ], [ %.pre1356, %sw.bb452.if.end498_crit_edge ]
  %141 = phi i32 [ %136, %if.end487 ], [ %.pre1355, %sw.bb452.if.end498_crit_edge ]
  %t.2 = phi i32 [ %t.1, %if.end487 ], [ 4, %sw.bb452.if.end498_crit_edge ]
  %or499 = or i32 %141, %t.2
  store i32 %or499, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  %arrayidx503 = getelementptr inbounds i8* %140, i32 -1
  %142 = load i8* %arrayidx503, align 1, !tbaa !0
  %cmp505 = icmp eq i8 %142, 79
  %143 = and i32 %sense.0, 1
  %144 = icmp ne i32 %143, 0
  %tobool508 = xor i1 %cmp505, %144
  %cond518 = select i1 %tobool508, i32 8192, i32 0
  %or519 = or i32 %cond518, %t.2
  %145 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %139, i32 1)
  %146 = extractvalue { i32, i1 } %145, 0
  %147 = extractvalue { i32, i1 } %145, 1
  br i1 %147, label %ioc_bb520, label %cont521

ioc_bb520:                                        ; preds = %if.end498
  %148 = sext i32 %139 to i64
  call void @__ioc_report_add_overflow(i32 1864, i32 64, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %148, i64 1, i8 13) nounwind
  br label %cont521

cont521:                                          ; preds = %if.end498, %ioc_bb520
  store i32 %146, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %tp = getelementptr inbounds %struct.globdata* @curglobdata, i32 0, i32 23, i32 %139, i32 0
  store i32 %or519, i32* %tp, align 4, !tbaa !3
  %149 = load i8** %send, align 4, !tbaa !2
  store i8* %149, i8** %s, align 4, !tbaa !2
  br label %if.end597

sw.bb533:                                         ; preds = %if.else143, %if.else143
  store i8* %67, i8** %s, align 4, !tbaa !2
  store i32 1, i32* %isarr, align 4, !tbaa !3
  store %struct.param* null, %struct.param** %pm, align 4, !tbaa !2
  store i32 -1, i32* %end541, align 4, !tbaa !3
  store i32 0, i32* %flags, align 4, !tbaa !3
  %call542 = call i32 @getindex(i8** %s, %struct.value* %v, i32 0) nounwind
  %tobool543 = icmp ne i32 %call542, 0
  %150 = load i8** %s, align 4, !tbaa !2
  %cmp545 = icmp eq i8* %150, %67
  %or.cond1138 = or i1 %tobool543, %cmp545
  br i1 %or.cond1138, label %if.then547, label %if.end554

if.then547:                                       ; preds = %sw.bb533
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0)) nounwind
  %151 = load i8** @pathbuf, align 4, !tbaa !2
  %152 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %151, i32 %152) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.end554:                                        ; preds = %sw.bb533
  %153 = load i32* %start, align 4, !tbaa !3
  %154 = load i32* %end541, align 4, !tbaa !3
  br label %if.end597

sw.bb556:                                         ; preds = %if.else143
  %call558 = call fastcc i8* @glob_exec_string(i8** %s)
  %cmp559 = icmp eq i8* %call558, null
  br i1 %cmp559, label %if.end597, label %if.then561

if.then561:                                       ; preds = %sw.bb556
  %155 = load %union.linkroot** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 24), align 4, !tbaa !2
  %tobool562 = icmp eq %union.linkroot* %155, null
  br i1 %tobool562, label %if.then563, label %if.end565

if.then563:                                       ; preds = %if.then561
  %call564 = call %union.linkroot* @newlinklist() nounwind
  store %union.linkroot* %call564, %union.linkroot** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 24), align 4, !tbaa !2
  br label %if.end565

if.end565:                                        ; preds = %if.then561, %if.then563
  %156 = phi %union.linkroot* [ %155, %if.then561 ], [ %call564, %if.then563 ]
  %last = getelementptr inbounds %union.linkroot* %156, i32 0, i32 0, i32 1
  %157 = load %struct.linknode** %last, align 4, !tbaa !2
  %call567 = call %struct.linknode* @insertlinknode(%union.linkroot* %156, %struct.linknode* %157, i8* %call558) nounwind
  br label %if.end597

sw.default569:                                    ; preds = %if.else143
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([23 x i8]* @.str7, i32 0, i32 0)) nounwind
  %158 = load i8** @pathbuf, align 4, !tbaa !2
  %159 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %158, i32 %159) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.end578:                                        ; preds = %if.else143, %if.else143
  %call526 = call fastcc i8* @glob_exec_string(i8** %s)
  %cmp527 = icmp eq i8* %call526, null
  %sdata.0.call526 = select i1 %cmp527, i8* %sdata.0, i8* %call526
  %.qualsheval = select i1 %cmp527, i32 (i8*, %struct.stat*, i64, i8*)* null, i32 (i8*, %struct.stat*, i64, i8*)* @qualsheval
  %.data.0 = select i1 %cmp527, i64 0, i64 %data.0
  br i1 %cmp527, label %if.end597, label %if.then580

if.then580:                                       ; preds = %cont111, %do.end.i, %if.else335.i, %if.then310.i, %sw.default.i, %sw.bb163, %if.else143, %sw.bb159, %sw.bb160, %sw.bb161, %sw.bb162, %if.then173, %if.then167, %sw.bb178, %sw.bb179, %sw.bb180, %sw.bb181, %sw.bb182, %sw.bb183, %sw.bb184, %sw.bb185, %sw.bb186, %sw.bb187, %sw.bb188, %sw.bb189, %sw.bb190, %sw.bb191, %sw.bb196, %sw.bb199, %if.then220, %if.then232, %if.then215, %if.then259, %if.then271, %if.then251, %sw.bb279, %if.end403, %if.end578
  %data.41211 = phi i64 [ %.data.0, %if.end578 ], [ %call404, %if.end403 ], [ %data.0, %sw.bb279 ], [ %call252, %if.then251 ], [ %data.31194, %if.then271 ], [ 0, %if.then259 ], [ %call216, %if.then215 ], [ %data.21193, %if.then232 ], [ 0, %if.then220 ], [ %conv201, %sw.bb199 ], [ %conv198, %sw.bb196 ], [ %call192, %sw.bb191 ], [ 512, %sw.bb190 ], [ 1024, %sw.bb189 ], [ 2048, %sw.bb188 ], [ 64, %sw.bb187 ], [ 128, %sw.bb186 ], [ 256, %sw.bb185 ], [ 8, %sw.bb184 ], [ 16, %sw.bb183 ], [ 32, %sw.bb182 ], [ 1, %sw.bb181 ], [ 2, %sw.bb180 ], [ 4, %sw.bb179 ], [ %data.0, %sw.bb178 ], [ %data.0, %if.then167 ], [ %data.0, %if.then173 ], [ %data.0, %sw.bb162 ], [ %data.0, %sw.bb161 ], [ %data.0, %sw.bb160 ], [ %data.0, %sw.bb159 ], [ %data.0, %if.else143 ], [ %data.0, %sw.bb163 ], [ 0, %sw.default.i ], [ 0, %if.then310.i ], [ 0, %if.else335.i ], [ %or354.i, %do.end.i ], [ %data.1, %cont111 ]
  %func.11210 = phi i32 (i8*, %struct.stat*, i64, i8*)* [ %.qualsheval, %if.end578 ], [ %func.01196, %if.end403 ], [ @qualnonemptydir, %sw.bb279 ], [ @qualgid, %if.then251 ], [ @qualgid, %if.then271 ], [ @qualgid, %if.then259 ], [ @qualuid, %if.then215 ], [ @qualuid, %if.then232 ], [ @qualuid, %if.then220 ], [ @qualgid, %sw.bb199 ], [ @qualuid, %sw.bb196 ], [ @qualdev, %sw.bb191 ], [ @qualflags, %sw.bb190 ], [ @qualflags, %sw.bb189 ], [ @qualflags, %sw.bb188 ], [ @qualflags, %sw.bb187 ], [ @qualflags, %sw.bb186 ], [ @qualflags, %sw.bb185 ], [ @qualflags, %sw.bb184 ], [ @qualflags, %sw.bb183 ], [ @qualflags, %sw.bb182 ], [ @qualflags, %sw.bb181 ], [ @qualflags, %sw.bb180 ], [ @qualflags, %sw.bb179 ], [ @qualiscom, %sw.bb178 ], [ @qualisblk, %if.then167 ], [ @qualischr, %if.then173 ], [ @qualisreg, %sw.bb162 ], [ @qualisdir, %sw.bb161 ], [ @qualisfifo, %sw.bb160 ], [ @qualissock, %sw.bb159 ], [ @qualislnk, %if.else143 ], [ @qualisdev, %sw.bb163 ], [ @qualmodeflags, %sw.default.i ], [ @qualmodeflags, %if.then310.i ], [ @qualmodeflags, %if.else335.i ], [ @qualmodeflags, %do.end.i ], [ @qualflags, %cont111 ]
  %sdata.11206 = phi i8* [ %sdata.0.call526, %if.end578 ], [ %sdata.0, %if.end403 ], [ %sdata.0, %sw.bb279 ], [ %sdata.0, %if.then251 ], [ %sdata.0, %if.then271 ], [ %sdata.0, %if.then259 ], [ %sdata.0, %if.then215 ], [ %sdata.0, %if.then232 ], [ %sdata.0, %if.then220 ], [ %sdata.0, %sw.bb199 ], [ %sdata.0, %sw.bb196 ], [ %sdata.0, %sw.bb191 ], [ %sdata.0, %sw.bb190 ], [ %sdata.0, %sw.bb189 ], [ %sdata.0, %sw.bb188 ], [ %sdata.0, %sw.bb187 ], [ %sdata.0, %sw.bb186 ], [ %sdata.0, %sw.bb185 ], [ %sdata.0, %sw.bb184 ], [ %sdata.0, %sw.bb183 ], [ %sdata.0, %sw.bb182 ], [ %sdata.0, %sw.bb181 ], [ %sdata.0, %sw.bb180 ], [ %sdata.0, %sw.bb179 ], [ %sdata.0, %sw.bb178 ], [ %sdata.0, %if.then167 ], [ %sdata.0, %if.then173 ], [ %sdata.0, %sw.bb162 ], [ %sdata.0, %sw.bb161 ], [ %sdata.0, %sw.bb160 ], [ %sdata.0, %sw.bb159 ], [ %sdata.0, %if.else143 ], [ %sdata.0, %sw.bb163 ], [ %sdata.0, %sw.default.i ], [ %sdata.0, %if.then310.i ], [ %sdata.0, %if.else335.i ], [ %sdata.0, %do.end.i ], [ null, %cont111 ]
  %tobool581 = icmp eq %struct.qual* %qn.0, null
  br i1 %tobool581, label %if.then582, label %if.end584

if.then582:                                       ; preds = %if.then580
  %call583 = call i8* @hcalloc(i32 40) nounwind
  %160 = bitcast i8* %call583 to %struct.qual*
  br label %if.end584

if.end584:                                        ; preds = %if.then580, %if.then582
  %qn.2 = phi %struct.qual* [ %qn.0, %if.then580 ], [ %160, %if.then582 ]
  %tobool585 = icmp eq %struct.qual* %ql.0, null
  br i1 %tobool585, label %if.end587, label %if.then586

if.then586:                                       ; preds = %if.end584
  %next = getelementptr inbounds %struct.qual* %ql.0, i32 0, i32 0
  store %struct.qual* %qn.2, %struct.qual** %next, align 4, !tbaa !2
  br label %if.end587

if.end587:                                        ; preds = %if.end584, %if.then586
  %tobool588 = icmp eq %struct.qual* %newquals.0, null
  %qn.2.newquals.0 = select i1 %tobool588, %struct.qual* %qn.2, %struct.qual* %newquals.0
  %qn.2.qo.1 = select i1 %tobool588, %struct.qual* %qn.2, %struct.qual* %qo.0
  %func591 = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 2
  store i32 (i8*, %struct.stat*, i64, i8*)* %func.11210, i32 (i8*, %struct.stat*, i64, i8*)** %func591, align 4, !tbaa !2
  %sense592 = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 4
  store i32 %sense.0, i32* %sense592, align 4, !tbaa !3
  %data593 = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 3
  store i64 %data.41211, i64* %data593, align 4, !tbaa !5
  %sdata594 = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 8
  store i8* %sdata.11206, i8** %sdata594, align 4, !tbaa !2
  %161 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  %range = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 6
  store i32 %161, i32* %range, align 4, !tbaa !3
  %162 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %units = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 7
  store i32 %162, i32* %units, align 4, !tbaa !3
  %163 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  %amc = getelementptr inbounds %struct.qual* %qn.2, i32 0, i32 5
  store i32 %163, i32* %amc, align 4, !tbaa !3
  %164 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 10), align 4, !tbaa !3
  %165 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %164, i32 1)
  %166 = extractvalue { i32, i1 } %165, 0
  %167 = extractvalue { i32, i1 } %165, 1
  br i1 %167, label %ioc_bb595, label %cont596

ioc_bb595:                                        ; preds = %if.end587
  %168 = sext i32 %164 to i64
  call void @__ioc_report_add_overflow(i32 1954, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %168, i64 1, i8 13) nounwind
  br label %cont596

cont596:                                          ; preds = %if.end587, %ioc_bb595
  store i32 %166, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 10), align 4, !tbaa !3
  br label %if.end597

if.end597:                                        ; preds = %if.end578, %sw.bb556, %sw.bb288, %sw.bb280, %if.then135, %if.else151, %if.then149, %sw.bb154, %sw.bb155, %if.then285, %if.then293, %sw.bb296, %sw.bb301, %sw.bb303, %cont521, %if.end554, %if.end565, %cont141, %cont596
  %first.21218 = phi i32 [ %first.1, %cont596 ], [ %first.1, %cont141 ], [ %first.1, %if.end565 ], [ %153, %if.end554 ], [ %first.1, %cont521 ], [ %first.1, %sw.bb303 ], [ %first.1, %sw.bb301 ], [ %first.1, %sw.bb296 ], [ %first.1, %if.then293 ], [ %first.1, %if.then285 ], [ %first.1, %sw.bb155 ], [ %first.1, %sw.bb154 ], [ %first.1, %if.then149 ], [ %first.1, %if.else151 ], [ %first.1, %if.then135 ], [ %first.1, %sw.bb280 ], [ %first.1, %sw.bb288 ], [ %first.1, %sw.bb556 ], [ %first.1, %if.end578 ]
  %end.21216 = phi i32 [ %end.1, %cont596 ], [ %end.1, %cont141 ], [ %end.1, %if.end565 ], [ %154, %if.end554 ], [ %end.1, %cont521 ], [ %end.1, %sw.bb303 ], [ %end.1, %sw.bb301 ], [ %end.1, %sw.bb296 ], [ %end.1, %if.then293 ], [ %end.1, %if.then285 ], [ %end.1, %sw.bb155 ], [ %end.1, %sw.bb154 ], [ %end.1, %if.then149 ], [ %end.1, %if.else151 ], [ %end.1, %if.then135 ], [ %end.1, %sw.bb280 ], [ %end.1, %sw.bb288 ], [ %end.1, %sw.bb556 ], [ %end.1, %if.end578 ]
  %sense.11214 = phi i32 [ %sense.0, %cont596 ], [ 0, %cont141 ], [ %sense.0, %if.end565 ], [ %sense.0, %if.end554 ], [ %sense.0, %cont521 ], [ %sense.0, %sw.bb303 ], [ %sense.0, %sw.bb301 ], [ %sense.0, %sw.bb296 ], [ %sense.0, %if.then293 ], [ %sense.0, %if.then285 ], [ %xor156, %sw.bb155 ], [ %xor, %sw.bb154 ], [ %sense.0, %if.then149 ], [ %sense.0, %if.else151 ], [ 0, %if.then135 ], [ %sense.0, %sw.bb280 ], [ %sense.0, %sw.bb288 ], [ %sense.0, %sw.bb556 ], [ %sense.0, %if.end578 ]
  %data.41212 = phi i64 [ %data.41211, %cont596 ], [ %data.0, %cont141 ], [ %data.0, %if.end565 ], [ %data.0, %if.end554 ], [ %data.0, %cont521 ], [ %data.0, %sw.bb303 ], [ %data.0, %sw.bb301 ], [ %data.0, %sw.bb296 ], [ %data.0, %if.then293 ], [ %data.0, %if.then285 ], [ %data.0, %sw.bb155 ], [ %data.0, %sw.bb154 ], [ %data.0, %if.then149 ], [ %data.0, %if.else151 ], [ %data.0, %if.then135 ], [ %data.0, %sw.bb280 ], [ %data.0, %sw.bb288 ], [ %data.0, %sw.bb556 ], [ %.data.0, %if.end578 ]
  %newcolonmod.11209 = phi i8* [ null, %cont596 ], [ null, %cont141 ], [ null, %if.end565 ], [ null, %if.end554 ], [ null, %cont521 ], [ null, %sw.bb303 ], [ null, %sw.bb301 ], [ null, %sw.bb296 ], [ null, %if.then293 ], [ null, %if.then285 ], [ null, %sw.bb155 ], [ null, %sw.bb154 ], [ %67, %if.then149 ], [ %67, %if.else151 ], [ null, %if.then135 ], [ null, %sw.bb280 ], [ null, %sw.bb288 ], [ null, %sw.bb556 ], [ null, %if.end578 ]
  %sdata.11207 = phi i8* [ %sdata.11206, %cont596 ], [ %sdata.0, %cont141 ], [ %sdata.0, %if.end565 ], [ %sdata.0, %if.end554 ], [ %sdata.0, %cont521 ], [ %sdata.0, %sw.bb303 ], [ %sdata.0, %sw.bb301 ], [ %sdata.0, %sw.bb296 ], [ %sdata.0, %if.then293 ], [ %sdata.0, %if.then285 ], [ %sdata.0, %sw.bb155 ], [ %sdata.0, %sw.bb154 ], [ %sdata.0, %if.then149 ], [ %sdata.0, %if.else151 ], [ %sdata.0, %if.then135 ], [ %sdata.0, %sw.bb280 ], [ %sdata.0, %sw.bb288 ], [ %sdata.0, %sw.bb556 ], [ %sdata.0.call526, %if.end578 ]
  %newquals.2 = phi %struct.qual* [ %qn.2.newquals.0, %cont596 ], [ %newquals.0, %cont141 ], [ %newquals.0, %if.end565 ], [ %newquals.0, %if.end554 ], [ %newquals.0, %cont521 ], [ %newquals.0, %sw.bb303 ], [ %newquals.0, %sw.bb301 ], [ %newquals.0, %sw.bb296 ], [ %newquals.0, %if.then293 ], [ %newquals.0, %if.then285 ], [ %newquals.0, %sw.bb155 ], [ %newquals.0, %sw.bb154 ], [ %newquals.0, %if.then149 ], [ %newquals.0, %if.else151 ], [ %newquals.0, %if.then135 ], [ %newquals.0, %sw.bb280 ], [ %newquals.0, %sw.bb288 ], [ %newquals.0, %sw.bb556 ], [ %newquals.0, %if.end578 ]
  %ql.2 = phi %struct.qual* [ %qn.2, %cont596 ], [ null, %cont141 ], [ %ql.0, %if.end565 ], [ %ql.0, %if.end554 ], [ %ql.0, %cont521 ], [ %ql.0, %sw.bb303 ], [ %ql.0, %sw.bb301 ], [ %ql.0, %sw.bb296 ], [ %ql.0, %if.then293 ], [ %ql.0, %if.then285 ], [ %ql.0, %sw.bb155 ], [ %ql.0, %sw.bb154 ], [ %ql.0, %if.then149 ], [ %ql.0, %if.else151 ], [ %ql.0, %if.then135 ], [ %ql.0, %sw.bb280 ], [ %ql.0, %sw.bb288 ], [ %ql.0, %sw.bb556 ], [ %ql.0, %if.end578 ]
  %qn.3 = phi %struct.qual* [ null, %cont596 ], [ %70, %cont141 ], [ %qn.0, %if.end565 ], [ %qn.0, %if.end554 ], [ %qn.0, %cont521 ], [ %qn.0, %sw.bb303 ], [ %qn.0, %sw.bb301 ], [ %qn.0, %sw.bb296 ], [ %qn.0, %if.then293 ], [ %qn.0, %if.then285 ], [ %qn.0, %sw.bb155 ], [ %qn.0, %sw.bb154 ], [ %qn.0, %if.then149 ], [ %qn.0, %if.else151 ], [ %qn.0, %if.then135 ], [ %qn.0, %sw.bb280 ], [ %qn.0, %sw.bb288 ], [ %qn.0, %sw.bb556 ], [ %qn.0, %if.end578 ]
  %qo.3 = phi %struct.qual* [ %qn.2.qo.1, %cont596 ], [ %70, %cont141 ], [ %qo.0, %if.end565 ], [ %qo.0, %if.end554 ], [ %qo.0, %cont521 ], [ %qo.0, %sw.bb303 ], [ %qo.0, %sw.bb301 ], [ %qo.0, %sw.bb296 ], [ %qo.0, %if.then293 ], [ %qo.0, %if.then285 ], [ %qo.0, %sw.bb155 ], [ %qo.0, %sw.bb154 ], [ %qo.0, %if.then149 ], [ %qo.0, %if.else151 ], [ %qo.0, %if.then135 ], [ %qo.0, %sw.bb280 ], [ %qo.0, %sw.bb288 ], [ %qo.0, %sw.bb556 ], [ %qo.0, %if.end578 ]
  %169 = load i32* @errflag, align 4, !tbaa !3
  %tobool598 = icmp eq i32 %169, 0
  br i1 %tobool598, label %while.cond89, label %do.body600

do.body600:                                       ; preds = %if.end597
  %170 = load i8** @pathbuf, align 4, !tbaa !2
  %171 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %170, i32 %171) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

while.end607:                                     ; preds = %while.cond89
  %172 = load %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4, !tbaa !2
  %tobool608 = icmp eq %struct.qual* %172, null
  %tobool610 = icmp eq %struct.qual* %newquals.0, null
  %or.cond1139 = or i1 %tobool608, %tobool610
  br i1 %or.cond1139, label %if.else674, label %if.then611

if.then611:                                       ; preds = %while.end607
  %or612 = getelementptr inbounds %struct.qual* %172, i32 0, i32 1
  %173 = load %struct.qual** %or612, align 4, !tbaa !2
  %tobool613 = icmp eq %struct.qual* %173, null
  br i1 %tobool613, label %lor.lhs.false614, label %for.cond621.preheader

lor.lhs.false614:                                 ; preds = %if.then611
  %or615 = getelementptr inbounds %struct.qual* %newquals.0, i32 0, i32 1
  %174 = load %struct.qual** %or615, align 4, !tbaa !2
  %tobool616 = icmp eq %struct.qual* %174, null
  br i1 %tobool616, label %for.cond665, label %for.cond621.preheader

for.cond618.loopexit:                             ; preds = %cond.end655, %for.cond621.preheader
  %.lcssa1272 = phi %struct.qual* [ %175, %for.cond621.preheader ], [ %188, %cond.end655 ]
  %qortail.1.lcssa = phi %struct.qual* [ %qortail.01284, %for.cond621.preheader ], [ %qfirst.0, %cond.end655 ]
  %qorhead.1.lcssa = phi %struct.qual* [ %qorhead.01283, %for.cond621.preheader ], [ %qfirst.0.qorhead.1, %cond.end655 ]
  %tobool619 = icmp eq %struct.qual* %.lcssa1272, null
  br i1 %tobool619, label %for.end663, label %for.cond618.loopexit.for.cond621.preheader_crit_edge

for.cond618.loopexit.for.cond621.preheader_crit_edge: ; preds = %for.cond618.loopexit
  %qo.41273.pre = load %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4
  br label %for.cond621.preheader

for.cond621.preheader:                            ; preds = %lor.lhs.false614, %if.then611, %for.cond618.loopexit.for.cond621.preheader_crit_edge
  %qo.41273 = phi %struct.qual* [ %qo.41273.pre, %for.cond618.loopexit.for.cond621.preheader_crit_edge ], [ %172, %if.then611 ], [ %172, %lor.lhs.false614 ]
  %qn.41285 = phi %struct.qual* [ %.lcssa1272, %for.cond618.loopexit.for.cond621.preheader_crit_edge ], [ %newquals.0, %if.then611 ], [ %newquals.0, %lor.lhs.false614 ]
  %qortail.01284 = phi %struct.qual* [ %qortail.1.lcssa, %for.cond618.loopexit.for.cond621.preheader_crit_edge ], [ null, %if.then611 ], [ null, %lor.lhs.false614 ]
  %qorhead.01283 = phi %struct.qual* [ %qorhead.1.lcssa, %for.cond618.loopexit.for.cond621.preheader_crit_edge ], [ null, %if.then611 ], [ null, %lor.lhs.false614 ]
  %tobool6221274 = icmp eq %struct.qual* %qo.41273, null
  %or624 = getelementptr inbounds %struct.qual* %qn.41285, i32 0, i32 1
  %175 = load %struct.qual** %or624, align 4, !tbaa !2
  br i1 %tobool6221274, label %for.cond618.loopexit, label %for.body623

for.body623:                                      ; preds = %for.cond621.preheader, %cond.end655
  %176 = phi %struct.qual* [ %188, %cond.end655 ], [ %175, %for.cond621.preheader ]
  %qo.41277 = phi %struct.qual* [ %qo.4, %cond.end655 ], [ %qo.41273, %for.cond621.preheader ]
  %qortail.11276 = phi %struct.qual* [ %qfirst.0, %cond.end655 ], [ %qortail.01284, %for.cond621.preheader ]
  %qorhead.11275 = phi %struct.qual* [ %qfirst.0.qorhead.1, %cond.end655 ], [ %qorhead.01283, %for.cond621.preheader ]
  %tobool625 = icmp eq %struct.qual* %176, null
  br i1 %tobool625, label %land.end631, label %while.body.i1141

land.end631:                                      ; preds = %for.body623
  %or627 = getelementptr inbounds %struct.qual* %qo.41277, i32 0, i32 1
  %177 = load %struct.qual** %or627, align 4, !tbaa !2
  %lnot629 = icmp eq %struct.qual* %177, null
  br i1 %lnot629, label %for.cond634, label %while.body.i1141

for.cond634:                                      ; preds = %land.end631, %for.cond634
  %storemerge1128 = phi %struct.qual* [ %178, %for.cond634 ], [ %qn.41285, %land.end631 ]
  %next635 = getelementptr inbounds %struct.qual* %storemerge1128, i32 0, i32 0
  %178 = load %struct.qual** %next635, align 4, !tbaa !2
  %tobool636 = icmp eq %struct.qual* %178, null
  br i1 %tobool636, label %if.end643, label %for.cond634

while.body.i1141:                                 ; preds = %for.body623, %land.end631, %if.end5.i
  %orig.addr.024.i = phi %struct.qual* [ %182, %if.end5.i ], [ %qn.41285, %land.end631 ], [ %qn.41285, %for.body623 ]
  %qlast.023.i = phi %struct.qual* [ %179, %if.end5.i ], [ null, %land.end631 ], [ null, %for.body623 ]
  %qfirst.022.i = phi %struct.qual* [ %.qfirst.0.i, %if.end5.i ], [ null, %land.end631 ], [ null, %for.body623 ]
  %call.i = call i8* @zhalloc(i32 40) nounwind
  %179 = bitcast i8* %call.i to %struct.qual*
  %180 = bitcast %struct.qual* %orig.addr.024.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call.i, i8* %180, i32 40, i32 4, i1 false) nounwind, !tbaa.struct !6
  %or.i1140 = getelementptr inbounds i8* %call.i, i32 4
  %181 = bitcast i8* %or.i1140 to %struct.qual**
  store %struct.qual* null, %struct.qual** %181, align 4, !tbaa !2
  %next.i = bitcast i8* %call.i to %struct.qual**
  store %struct.qual* null, %struct.qual** %next.i, align 4, !tbaa !2
  %tobool1.i = icmp eq %struct.qual* %qfirst.022.i, null
  %.qfirst.0.i = select i1 %tobool1.i, %struct.qual* %179, %struct.qual* %qfirst.022.i
  %tobool2.i = icmp eq %struct.qual* %qlast.023.i, null
  br i1 %tobool2.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %while.body.i1141
  %next4.i = getelementptr inbounds %struct.qual* %qlast.023.i, i32 0, i32 0
  store %struct.qual* %179, %struct.qual** %next4.i, align 4, !tbaa !2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %while.body.i1141
  %next6.i = getelementptr inbounds %struct.qual* %orig.addr.024.i, i32 0, i32 0
  %182 = load %struct.qual** %next6.i, align 4, !tbaa !2
  %tobool.i1142 = icmp eq %struct.qual* %182, null
  br i1 %tobool.i1142, label %if.end643, label %while.body.i1141

if.end643:                                        ; preds = %for.cond634, %if.end5.i
  %183 = phi i1 [ false, %if.end5.i ], [ true, %for.cond634 ]
  %qlast.0.load1192 = phi %struct.qual* [ %179, %if.end5.i ], [ %storemerge1128, %for.cond634 ]
  %qfirst.0 = phi %struct.qual* [ %.qfirst.0.i, %if.end5.i ], [ %qn.41285, %for.cond634 ]
  %tobool644 = icmp eq %struct.qual* %qorhead.11275, null
  %qfirst.0.qorhead.1 = select i1 %tobool644, %struct.qual* %qfirst.0, %struct.qual* %qorhead.11275
  %tobool647 = icmp eq %struct.qual* %qortail.11276, null
  br i1 %tobool647, label %if.end650, label %if.then648

if.then648:                                       ; preds = %if.end643
  %or649 = getelementptr inbounds %struct.qual* %qortail.11276, i32 0, i32 1
  store %struct.qual* %qfirst.0, %struct.qual** %or649, align 4, !tbaa !2
  br label %if.end650

if.end650:                                        ; preds = %if.end643, %if.then648
  %qo.4.mux = select i1 %183, %struct.qual* %qo.41277, %struct.qual* null
  br i1 %183, label %cond.end655, label %while.body.i1154

while.body.i1154:                                 ; preds = %if.end650, %if.end5.i1159
  %orig.addr.024.i1145 = phi %struct.qual* [ %187, %if.end5.i1159 ], [ %qo.41277, %if.end650 ]
  %qlast.023.i1146 = phi %struct.qual* [ %184, %if.end5.i1159 ], [ null, %if.end650 ]
  %qfirst.022.i1147 = phi %struct.qual* [ %.qfirst.0.i1152, %if.end5.i1159 ], [ null, %if.end650 ]
  %call.i1148 = call i8* @zhalloc(i32 40) nounwind
  %184 = bitcast i8* %call.i1148 to %struct.qual*
  %185 = bitcast %struct.qual* %orig.addr.024.i1145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call.i1148, i8* %185, i32 40, i32 4, i1 false) nounwind, !tbaa.struct !6
  %or.i1149 = getelementptr inbounds i8* %call.i1148, i32 4
  %186 = bitcast i8* %or.i1149 to %struct.qual**
  store %struct.qual* null, %struct.qual** %186, align 4, !tbaa !2
  %next.i1150 = bitcast i8* %call.i1148 to %struct.qual**
  store %struct.qual* null, %struct.qual** %next.i1150, align 4, !tbaa !2
  %tobool1.i1151 = icmp eq %struct.qual* %qfirst.022.i1147, null
  %.qfirst.0.i1152 = select i1 %tobool1.i1151, %struct.qual* %184, %struct.qual* %qfirst.022.i1147
  %tobool2.i1153 = icmp eq %struct.qual* %qlast.023.i1146, null
  br i1 %tobool2.i1153, label %if.end5.i1159, label %if.then3.i1156

if.then3.i1156:                                   ; preds = %while.body.i1154
  %next4.i1155 = getelementptr inbounds %struct.qual* %qlast.023.i1146, i32 0, i32 0
  store %struct.qual* %184, %struct.qual** %next4.i1155, align 4, !tbaa !2
  br label %if.end5.i1159

if.end5.i1159:                                    ; preds = %if.then3.i1156, %while.body.i1154
  %next6.i1157 = getelementptr inbounds %struct.qual* %orig.addr.024.i1145, i32 0, i32 0
  %187 = load %struct.qual** %next6.i1157, align 4, !tbaa !2
  %tobool.i1158 = icmp eq %struct.qual* %187, null
  br i1 %tobool.i1158, label %cond.end655, label %while.body.i1154

cond.end655:                                      ; preds = %if.end5.i1159, %if.end650
  %cond656 = phi %struct.qual* [ %qo.4.mux, %if.end650 ], [ %.qfirst.0.i1152, %if.end5.i1159 ]
  %next657 = getelementptr inbounds %struct.qual* %qlast.0.load1192, i32 0, i32 0
  store %struct.qual* %cond656, %struct.qual** %next657, align 4, !tbaa !2
  %or659 = getelementptr inbounds %struct.qual* %qo.41277, i32 0, i32 1
  %qo.4 = load %struct.qual** %or659, align 4
  %tobool622 = icmp eq %struct.qual* %qo.4, null
  %188 = load %struct.qual** %or624, align 4, !tbaa !2
  br i1 %tobool622, label %for.cond618.loopexit, label %for.body623

for.end663:                                       ; preds = %for.cond618.loopexit
  store %struct.qual* %qorhead.1.lcssa, %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4, !tbaa !2
  br label %while.cond.backedge

for.cond665:                                      ; preds = %lor.lhs.false614, %for.cond665
  %newquals.3 = phi %struct.qual* [ %189, %for.cond665 ], [ %newquals.0, %lor.lhs.false614 ]
  %next666 = getelementptr inbounds %struct.qual* %newquals.3, i32 0, i32 0
  %189 = load %struct.qual** %next666, align 4, !tbaa !2
  %tobool667 = icmp eq %struct.qual* %189, null
  br i1 %tobool667, label %for.end671, label %for.cond665

for.end671:                                       ; preds = %for.cond665
  store %struct.qual* %172, %struct.qual** %next666, align 4, !tbaa !2
  store %struct.qual* %newquals.0, %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4, !tbaa !2
  br label %while.cond.backedge

if.else674:                                       ; preds = %while.end607
  br i1 %tobool610, label %while.cond.backedge, label %if.then676

if.then676:                                       ; preds = %if.else674
  store %struct.qual* %newquals.0, %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4, !tbaa !2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then676, %for.end663, %for.end671, %if.else674
  %190 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool17 = icmp eq i8 %190, 0
  br i1 %tobool17, label %while.end679, label %while.body

while.end679:                                     ; preds = %while.cond.backedge, %if.else76, %ioc_bb52, %cont22, %if.then66, %ioc_bb52.thread, %do.body
  %first.0.lcssa = phi i32 [ 0, %do.body ], [ %first.01307, %ioc_bb52.thread ], [ %first.01307, %if.then66 ], [ %first.01307, %cont22 ], [ %first.01307, %ioc_bb52 ], [ %first.01307, %if.else76 ], [ %first.1, %while.cond.backedge ]
  %end.0.lcssa = phi i32 [ -1, %do.body ], [ %end.01305, %ioc_bb52.thread ], [ %end.01305, %if.then66 ], [ %end.01305, %cont22 ], [ %end.01305, %ioc_bb52 ], [ %end.01305, %if.else76 ], [ %end.1, %while.cond.backedge ]
  %191 = bitcast i8** %str.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %191) nounwind
  %192 = bitcast i32* %assert.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %192) nounwind
  %193 = bitcast i32* %ignore.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %193) nounwind
  store i8* %call8, i8** %str.addr.i, align 4, !tbaa !2
  call void @patcompstart() nounwind
  %194 = load i8* %call8, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 800, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp.i1164 = icmp eq i8 %194, -120
  br i1 %cmp.i1164, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %while.end679
  %arrayidx.i = getelementptr inbounds i8* %call8, i32 1
  %195 = load i8* %arrayidx.i, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 800, i32 53, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp5.i = icmp ne i8 %195, -124
  %196 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool.i1165 = icmp eq i8 %196, 0
  %or.cond.i1166 = or i1 %cmp5.i, %tobool.i1165
  br i1 %or.cond.i1166, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i, %while.end679
  %197 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 91), align 1, !tbaa !0
  %tobool10.i = icmp eq i8 %197, 0
  br i1 %tobool10.i, label %if.end36.i, label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %lor.lhs.false.i
  %198 = load i8** %str.addr.i, align 4, !tbaa !2
  %199 = load i8* %198, align 1, !tbaa !0
  %cmp13.i = icmp eq i8 %199, 64
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.end36.i

land.lhs.true15.i:                                ; preds = %land.lhs.true11.i
  %arrayidx16.i = getelementptr inbounds i8* %198, i32 1
  %200 = load i8* %arrayidx16.i, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 800, i32 121, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp20.i = icmp eq i8 %200, -120
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end36.i

land.lhs.true22.i:                                ; preds = %land.lhs.true15.i
  %201 = load i8** %str.addr.i, align 4, !tbaa !2
  %arrayidx23.i = getelementptr inbounds i8* %201, i32 2
  %202 = load i8* %arrayidx23.i, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 800, i32 148, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp27.i = icmp eq i8 %202, -124
  br i1 %cmp27.i, label %if.then.i, label %if.end36.i

if.then.i:                                        ; preds = %land.lhs.true22.i, %land.lhs.true.i
  %203 = load i8** %str.addr.i, align 4, !tbaa !2
  %204 = load i8* %203, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 801, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp32.i = icmp eq i8 %204, -120
  %cond.i = select i1 %cmp32.i, i32 2, i32 3
  %add.ptr.i = getelementptr inbounds i8* %203, i32 %cond.i
  store i8* %add.ptr.i, i8** %str.addr.i, align 4, !tbaa !2
  %call.i1167 = call i32 @patgetglobflags(i8** %str.addr.i, i32* %assert.i, i32* %ignore.i) nounwind
  %tobool34.i = icmp eq i32 %call.i1167, 0
  br i1 %tobool34.i, label %parsepat.exit, label %if.end36.i

if.end36.i:                                       ; preds = %if.then.i, %land.lhs.true22.i, %land.lhs.true15.i, %land.lhs.true11.i, %lor.lhs.false.i
  %205 = load i8** @pathbuf, align 4, !tbaa !2
  %tobool37.i = icmp eq i8* %205, null
  br i1 %tobool37.i, label %if.then38.i, label %if.end42.i

if.then38.i:                                      ; preds = %if.end36.i
  store i32 4096, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  %call41.i = call i8* @zalloc(i32 4096) nounwind
  store i8* %call41.i, i8** @pathbuf, align 4, !tbaa !2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end36.i, %if.then38.i
  %206 = phi i8* [ %call41.i, %if.then38.i ], [ %205, %if.end36.i ]
  %207 = load i8** %str.addr.i, align 4, !tbaa !2
  %208 = load i8* %207, align 1, !tbaa !0
  %cmp44.i = icmp eq i8 %208, 47
  br i1 %cmp44.i, label %if.then46.i, label %cont54.i

if.then46.i:                                      ; preds = %if.end42.i
  %incdec.ptr.i1168 = getelementptr inbounds i8* %207, i32 1
  store i8* %incdec.ptr.i1168, i8** %str.addr.i, align 4, !tbaa !2
  store i8 47, i8* %206, align 1, !tbaa !0
  store i32 1, i32* @pathpos, align 4, !tbaa !3
  %209 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx52.i = getelementptr inbounds i8* %209, i32 1
  store i8 0, i8* %arrayidx52.i, align 1, !tbaa !0
  br label %if.end56.i

cont54.i:                                         ; preds = %if.end42.i
  store i32 0, i32* @pathpos, align 4, !tbaa !3
  store i8 0, i8* %206, align 1, !tbaa !0
  br label %if.end56.i

if.end56.i:                                       ; preds = %cont54.i, %if.then46.i
  %210 = load i8** %str.addr.i, align 4, !tbaa !2
  %call57.i = call fastcc %struct.complist* @parsecomplist(i8* %210) nounwind
  br label %parsepat.exit

parsepat.exit:                                    ; preds = %if.then.i, %if.end56.i
  %retval.0.i1169 = phi %struct.complist* [ %call57.i, %if.end56.i ], [ null, %if.then.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %191) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %192) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %193) nounwind
  %tobool681 = icmp eq %struct.complist* %retval.0.i1169, null
  %211 = load i32* @errflag, align 4, !tbaa !3
  %tobool683 = icmp ne i32 %211, 0
  %or.cond915 = or i1 %tobool681, %tobool683
  br i1 %or.cond915, label %do.body685, label %if.end698

do.body685:                                       ; preds = %parsepat.exit
  %212 = load i8** @pathbuf, align 4, !tbaa !2
  %213 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %212, i32 %213) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  %214 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 16), align 1, !tbaa !0
  %tobool691 = icmp eq i8 %214, 0
  br i1 %tobool691, label %if.then692, label %if.end697

if.then692:                                       ; preds = %do.body685
  %tobool693 = icmp eq i32 %nountok, 0
  br i1 %tobool693, label %if.then694, label %if.end695

if.then694:                                       ; preds = %if.then692
  call void @untokenize(i8* %1) nounwind
  br label %if.end695

if.end695:                                        ; preds = %if.then692, %if.then694
  %call696 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %0, i8* %1) nounwind
  br label %do.end914

if.end697:                                        ; preds = %do.body685
  store i32 0, i32* @errflag, align 4, !tbaa !3
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0), i8* %1) nounwind
  br label %do.end914

if.end698:                                        ; preds = %parsepat.exit
  %215 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %tobool699 = icmp eq i32 %215, 0
  br i1 %tobool699, label %if.then700, label %if.end701

if.then700:                                       ; preds = %if.end698
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4, !tbaa !3
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  br label %if.end701

if.end701:                                        ; preds = %if.end698, %if.then700
  store i32 16, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2), align 4, !tbaa !3
  %call706 = call i8* @zalloc(i32 1280) nounwind
  %216 = bitcast i8* %call706 to %struct.gmatch*
  store %struct.gmatch* %216, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  store %struct.gmatch* %216, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  store i32 0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  call void @pattrystart() nounwind
  call fastcc void @scanner(%struct.complist* %retval.0.i1169)
  %217 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %tobool707 = icmp eq i32 %217, 0
  br i1 %tobool707, label %if.else710, label %if.then708

if.then708:                                       ; preds = %if.end701
  %218 = load i32* @badcshglob, align 4, !tbaa !3
  %or709 = or i32 %218, 2
  store i32 %or709, i32* @badcshglob, align 4, !tbaa !3
  br label %if.end731

if.else710:                                       ; preds = %if.end701
  %219 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 15), align 4, !tbaa !3
  %tobool711 = icmp eq i32 %219, 0
  br i1 %tobool711, label %if.then712, label %if.end731

if.then712:                                       ; preds = %if.else710
  %220 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 43), align 1, !tbaa !0
  %tobool713 = icmp eq i8 %220, 0
  br i1 %tobool713, label %if.else716, label %if.then714

if.then714:                                       ; preds = %if.then712
  %221 = load i32* @badcshglob, align 4, !tbaa !3
  %or715 = or i32 %221, 1
  store i32 %or715, i32* @badcshglob, align 4, !tbaa !3
  br label %if.end731

if.else716:                                       ; preds = %if.then712
  %222 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 112), align 1, !tbaa !0
  %tobool717 = icmp eq i8 %222, 0
  br i1 %tobool717, label %if.else725, label %if.then718

if.then718:                                       ; preds = %if.else716
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([21 x i8]* @.str9, i32 0, i32 0), i8* %1) nounwind
  %223 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %224 = bitcast %struct.gmatch* %223 to i8*
  call void @free(i8* %224) nounwind
  %225 = load i8** @pathbuf, align 4, !tbaa !2
  %226 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %225, i32 %226) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

if.else725:                                       ; preds = %if.else716
  %call726 = call i8* @dupstring(i8* %1) nounwind
  %227 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %name = getelementptr inbounds %struct.gmatch* %227, i32 0, i32 0
  store i8* %call726, i8** %name, align 4, !tbaa !2
  call void @untokenize(i8* %call726) nounwind
  %228 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %incdec.ptr727 = getelementptr inbounds %struct.gmatch* %228, i32 1
  store %struct.gmatch* %incdec.ptr727, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  store i32 1, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  br label %if.end731

if.end731:                                        ; preds = %if.else710, %if.else725, %if.then714, %if.then708
  %229 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4, !tbaa !3
  %and743 = and i32 %229, 16384
  %tobool744 = icmp eq i32 %and743, 0
  br i1 %tobool744, label %if.then745, label %if.end837

if.then745:                                       ; preds = %if.end731
  %230 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %add.ptr746 = getelementptr inbounds %struct.globdata* @curglobdata, i32 0, i32 23, i32 %230
  %cmp7481237 = icmp sgt i32 %230, 0
  br i1 %cmp7481237, label %for.body750, label %if.end832

for.body750:                                      ; preds = %if.then745, %for.inc758.for.body750_crit_edge
  %231 = phi i32 [ %.pre, %for.inc758.for.body750_crit_edge ], [ %229, %if.then745 ]
  %sortp.01239 = phi %struct.globsort* [ %incdec.ptr759, %for.inc758.for.body750_crit_edge ], [ getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %if.then745 ]
  %nexecs.01238 = phi i32 [ %nexecs.1, %for.inc758.for.body750_crit_edge ], [ 0, %if.then745 ]
  %and752 = and i32 %231, 4
  %tobool753 = icmp eq i32 %and752, 0
  br i1 %tobool753, label %for.inc758, label %if.then754

if.then754:                                       ; preds = %for.body750
  %232 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nexecs.01238, i32 1)
  %233 = extractvalue { i32, i1 } %232, 0
  %234 = extractvalue { i32, i1 } %232, 1
  br i1 %234, label %ioc_bb755, label %for.inc758

ioc_bb755:                                        ; preds = %if.then754
  %235 = sext i32 %nexecs.01238 to i64
  call void @__ioc_report_add_overflow(i32 2096, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %235, i64 1, i8 13) nounwind
  br label %for.inc758

for.inc758:                                       ; preds = %ioc_bb755, %if.then754, %for.body750
  %nexecs.1 = phi i32 [ %nexecs.01238, %for.body750 ], [ %233, %if.then754 ], [ %233, %ioc_bb755 ]
  %incdec.ptr759 = getelementptr inbounds %struct.globsort* %sortp.01239, i32 1
  %cmp748 = icmp ult %struct.globsort* %incdec.ptr759, %add.ptr746
  br i1 %cmp748, label %for.inc758.for.body750_crit_edge, label %for.end760

for.inc758.for.body750_crit_edge:                 ; preds = %for.inc758
  %tp751.phi.trans.insert = getelementptr inbounds %struct.globsort* %incdec.ptr759, i32 0, i32 0
  %.pre = load i32* %tp751.phi.trans.insert, align 4, !tbaa !3
  br label %for.body750

for.end760:                                       ; preds = %for.inc758
  %tobool761 = icmp eq i32 %nexecs.1, 0
  br i1 %tobool761, label %if.end832, label %if.then762

if.then762:                                       ; preds = %for.end760
  %236 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %237 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp7641235 = icmp ult %struct.gmatch* %236, %237
  br i1 %cmp7641235, label %for.body766.lr.ph, label %for.cond776.preheader

for.body766.lr.ph:                                ; preds = %if.then762
  %238 = icmp sgt i32 %nexecs.1, -1
  %239 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nexecs.1, i32 4)
  %240 = zext i32 %nexecs.1 to i64
  %241 = sext i32 %nexecs.1 to i64
  %242 = extractvalue { i32, i1 } %239, 1
  br label %for.body766

for.cond776.preheader:                            ; preds = %cont771, %if.then762
  br i1 %cmp7481237, label %for.body779, label %if.end832

for.body766:                                      ; preds = %for.body766.lr.ph, %cont771
  %tmpptr.01236 = phi %struct.gmatch* [ %236, %for.body766.lr.ph ], [ %incdec.ptr774, %cont771 ]
  br i1 %238, label %cont769, label %ioc_bb768

ioc_bb768:                                        ; preds = %for.body766
  call void @__ioc_report_conversion(i32 2103, i32 49, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %241, i8 1) nounwind
  br label %cont769

cont769:                                          ; preds = %ioc_bb768, %for.body766
  %243 = extractvalue { i32, i1 } %239, 0
  br i1 %242, label %ioc_bb770, label %cont771

ioc_bb770:                                        ; preds = %cont769
  call void @__ioc_report_mul_overflow(i32 2103, i32 56, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @21, i32 0, i32 0), i64 %240, i64 4, i8 5) nounwind
  br label %cont771

cont771:                                          ; preds = %cont769, %ioc_bb770
  %call772 = call i8* @zhalloc(i32 %243) nounwind
  %244 = bitcast i8* %call772 to i8**
  %sortstrs = getelementptr inbounds %struct.gmatch* %tmpptr.01236, i32 0, i32 1
  store i8** %244, i8*** %sortstrs, align 4, !tbaa !2
  %incdec.ptr774 = getelementptr inbounds %struct.gmatch* %tmpptr.01236, i32 1
  %245 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp764 = icmp ult %struct.gmatch* %incdec.ptr774, %245
  br i1 %cmp764, label %for.body766, label %for.cond776.preheader

for.body779:                                      ; preds = %for.inc829, %for.cond776.preheader
  %iexec.01232 = phi i32 [ 0, %for.cond776.preheader ], [ %iexec.1, %for.inc829 ]
  %sortp.11231 = phi %struct.globsort* [ getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %for.cond776.preheader ], [ %incdec.ptr830, %for.inc829 ]
  %tp780 = getelementptr inbounds %struct.globsort* %sortp.11231, i32 0, i32 0
  %246 = load i32* %tp780, align 4, !tbaa !3
  %and781 = and i32 %246, 4
  %tobool782 = icmp eq i32 %and781, 0
  br i1 %tobool782, label %for.inc829, label %if.then783

if.then783:                                       ; preds = %for.body779
  %exec784 = getelementptr inbounds %struct.globsort* %sortp.11231, i32 0, i32 1
  %247 = load i8** %exec784, align 4, !tbaa !2
  %call785 = call %struct.eprog* @parse_string(i8* %247, i32 0) nounwind
  %tobool786 = icmp eq %struct.eprog* %call785, null
  br i1 %tobool786, label %if.else814, label %if.then787

if.then787:                                       ; preds = %if.then783
  %248 = load i32* @errflag, align 4, !tbaa !3
  %249 = load i64* @lastval, align 8, !tbaa !5
  %.off = add i64 %249, 2147483648
  %250 = icmp ult i64 %.off, 4294967296
  br i1 %250, label %cont790, label %ioc_bb789

ioc_bb789:                                        ; preds = %if.then787
  call void @__ioc_report_conversion(i32 2111, i32 22, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %249, i8 1) nounwind
  br label %cont790

cont790:                                          ; preds = %ioc_bb789, %if.then787
  %251 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %252 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp7931226 = icmp ult %struct.gmatch* %251, %252
  br i1 %cmp7931226, label %for.body795, label %for.end812

for.body795:                                      ; preds = %cont790, %for.inc810
  %tmpptr.11227 = phi %struct.gmatch* [ %incdec.ptr811, %for.inc810 ], [ %251, %cont790 ]
  %name796 = getelementptr inbounds %struct.gmatch* %tmpptr.11227, i32 0, i32 0
  %253 = load i8** %name796, align 4, !tbaa !2
  %call797 = call i8* @ztrdup(i8* %253) nounwind
  %call798 = call %struct.param* @assignsparam(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* %call797, i32 0) nounwind
  call void @execode(%struct.eprog* %call785, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str11, i32 0, i32 0)) nounwind
  %254 = load i32* @errflag, align 4, !tbaa !3
  %tobool799 = icmp eq i32 %254, 0
  br i1 %tobool799, label %if.then800, label %if.else805

if.then800:                                       ; preds = %for.body795
  %call801 = call i8* @getsparam(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)) nounwind
  %call802 = call i8* @dupstring(i8* %call801) nounwind
  %sortstrs803 = getelementptr inbounds %struct.gmatch* %tmpptr.11227, i32 0, i32 1
  %255 = load i8*** %sortstrs803, align 4, !tbaa !2
  %arrayidx804 = getelementptr inbounds i8** %255, i32 %iexec.01232
  store i8* %call802, i8** %arrayidx804, align 4, !tbaa !2
  br label %for.inc810

if.else805:                                       ; preds = %for.body795
  %256 = load i8** %name796, align 4, !tbaa !2
  %sortstrs807 = getelementptr inbounds %struct.gmatch* %tmpptr.11227, i32 0, i32 1
  %257 = load i8*** %sortstrs807, align 4, !tbaa !2
  %arrayidx808 = getelementptr inbounds i8** %257, i32 %iexec.01232
  store i8* %256, i8** %arrayidx808, align 4, !tbaa !2
  br label %for.inc810

for.inc810:                                       ; preds = %if.then800, %if.else805
  %incdec.ptr811 = getelementptr inbounds %struct.gmatch* %tmpptr.11227, i32 1
  %258 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp793 = icmp ult %struct.gmatch* %incdec.ptr811, %258
  br i1 %cmp793, label %for.body795, label %for.end812

for.end812:                                       ; preds = %for.inc810, %cont790
  store i32 %248, i32* @errflag, align 4, !tbaa !3
  %sext = shl i64 %249, 32
  %conv813 = ashr exact i64 %sext, 32
  store i64 %conv813, i64* @lastval, align 8, !tbaa !5
  br label %if.end825

if.else814:                                       ; preds = %if.then783
  %259 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %260 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp8161228 = icmp ult %struct.gmatch* %259, %260
  br i1 %cmp8161228, label %for.body818, label %if.end825

for.body818:                                      ; preds = %if.else814, %for.body818
  %tmpptr.21229 = phi %struct.gmatch* [ %incdec.ptr823, %for.body818 ], [ %259, %if.else814 ]
  %name819 = getelementptr inbounds %struct.gmatch* %tmpptr.21229, i32 0, i32 0
  %261 = load i8** %name819, align 4, !tbaa !2
  %sortstrs820 = getelementptr inbounds %struct.gmatch* %tmpptr.21229, i32 0, i32 1
  %262 = load i8*** %sortstrs820, align 4, !tbaa !2
  %arrayidx821 = getelementptr inbounds i8** %262, i32 %iexec.01232
  store i8* %261, i8** %arrayidx821, align 4, !tbaa !2
  %incdec.ptr823 = getelementptr inbounds %struct.gmatch* %tmpptr.21229, i32 1
  %263 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %cmp816 = icmp ult %struct.gmatch* %incdec.ptr823, %263
  br i1 %cmp816, label %for.body818, label %if.end825

if.end825:                                        ; preds = %if.else814, %for.body818, %for.end812
  %264 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %iexec.01232, i32 1)
  %265 = extractvalue { i32, i1 } %264, 0
  %266 = extractvalue { i32, i1 } %264, 1
  br i1 %266, label %ioc_bb826, label %for.inc829

ioc_bb826:                                        ; preds = %if.end825
  %267 = sext i32 %iexec.01232 to i64
  call void @__ioc_report_add_overflow(i32 2129, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %267, i64 1, i8 13) nounwind
  br label %for.inc829

for.inc829:                                       ; preds = %ioc_bb826, %if.end825, %for.body779
  %iexec.1 = phi i32 [ %iexec.01232, %for.body779 ], [ %265, %if.end825 ], [ %265, %ioc_bb826 ]
  %incdec.ptr830 = getelementptr inbounds %struct.globsort* %sortp.11231, i32 1
  %cmp777 = icmp ult %struct.globsort* %incdec.ptr830, %add.ptr746
  br i1 %cmp777, label %for.body779, label %if.end832

if.end832:                                        ; preds = %if.then745, %for.cond776.preheader, %for.inc829, %for.end760
  %268 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %269 = bitcast %struct.gmatch* %268 to i8*
  %270 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %cont836, label %ioc_bb835

ioc_bb835:                                        ; preds = %if.end832
  %272 = sext i32 %270 to i64
  call void @__ioc_report_conversion(i32 2135, i32 51, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %272, i8 1) nounwind
  br label %cont836

cont836:                                          ; preds = %ioc_bb835, %if.end832
  call void @qsort(i8* %269, i32 %270, i32 80, i32 (i8*, i8*)* bitcast (i32 (%struct.gmatch*, %struct.gmatch*)* @gmatchcmp to i32 (i8*, i8*)*)) nounwind
  br label %if.end837

if.end837:                                        ; preds = %if.end731, %cont836
  %cmp838 = icmp slt i32 %first.0.lcssa, 0
  br i1 %cmp838, label %if.then840, label %if.end847

if.then840:                                       ; preds = %if.end837
  %273 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %274 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %first.0.lcssa, i32 %273)
  %275 = extractvalue { i32, i1 } %274, 0
  %276 = extractvalue { i32, i1 } %274, 1
  br i1 %276, label %ioc_bb841, label %cont842

ioc_bb841:                                        ; preds = %if.then840
  %277 = sext i32 %273 to i64
  %278 = sext i32 %first.0.lcssa to i64
  call void @__ioc_report_add_overflow(i32 2138, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %278, i64 %277, i8 13) nounwind
  br label %cont842

cont842:                                          ; preds = %if.then840, %ioc_bb841
  %cmp843 = icmp slt i32 %275, 0
  %. = select i1 %cmp843, i32 0, i32 %275
  br label %if.end847

if.end847:                                        ; preds = %if.end837, %cont842
  %first.3 = phi i32 [ %., %cont842 ], [ %first.0.lcssa, %if.end837 ]
  %cmp848 = icmp slt i32 %end.0.lcssa, 0
  %279 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  br i1 %cmp848, label %if.then850, label %if.else855

if.then850:                                       ; preds = %if.end847
  %280 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %279, i32 1)
  %281 = extractvalue { i32, i1 } %280, 0
  %282 = extractvalue { i32, i1 } %280, 1
  br i1 %282, label %ioc_bb851, label %cont852

ioc_bb851:                                        ; preds = %if.then850
  %283 = sext i32 %279 to i64
  call void @__ioc_report_add_overflow(i32 2143, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %283, i64 1, i8 13) nounwind
  br label %cont852

cont852:                                          ; preds = %if.then850, %ioc_bb851
  %284 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %end.0.lcssa, i32 %281)
  %285 = extractvalue { i32, i1 } %284, 0
  %286 = extractvalue { i32, i1 } %284, 1
  br i1 %286, label %ioc_bb853, label %if.end860

ioc_bb853:                                        ; preds = %cont852
  %287 = sext i32 %281 to i64
  %288 = sext i32 %end.0.lcssa to i64
  call void @__ioc_report_add_overflow(i32 2143, i32 9, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %288, i64 %287, i8 13) nounwind
  br label %if.end860

if.else855:                                       ; preds = %if.end847
  %cmp856 = icmp sgt i32 %end.0.lcssa, %279
  %.end.0 = select i1 %cmp856, i32 %279, i32 %end.0.lcssa
  br label %if.end860

if.end860:                                        ; preds = %if.else855, %ioc_bb853, %cont852
  %end.3 = phi i32 [ %285, %cont852 ], [ %285, %ioc_bb853 ], [ %.end.0, %if.else855 ]
  %289 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %end.3, i32 %first.3)
  %290 = extractvalue { i32, i1 } %289, 0
  %291 = extractvalue { i32, i1 } %289, 1
  br i1 %291, label %ioc_bb861, label %cont862

ioc_bb861:                                        ; preds = %if.end860
  %292 = sext i32 %first.3 to i64
  %293 = sext i32 %end.3 to i64
  call void @__ioc_report_sub_overflow(i32 2146, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %293, i64 %292, i8 13) nounwind
  br label %cont862

cont862:                                          ; preds = %if.end860, %ioc_bb861
  %cmp863 = icmp sgt i32 %290, 0
  br i1 %cmp863, label %if.then865, label %if.end908

if.then865:                                       ; preds = %cont862
  %294 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0, i32 0), align 4, !tbaa !3
  %and877 = and i32 %294, 16384
  %tobool878 = icmp eq i32 %and877, 0
  %295 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %296 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %add.ptr880.sum = sub i32 %296, %first.3
  br i1 %tobool878, label %if.else892, label %if.then879

if.then879:                                       ; preds = %if.then865
  %add.ptr881.sum1134 = add i32 %add.ptr880.sum, -1
  %add.ptr882 = getelementptr inbounds %struct.gmatch* %295, i32 %add.ptr881.sum1134
  br label %while.cond883

while.cond883:                                    ; preds = %insert_glob_match.exit, %if.then879
  %storemerge1135 = phi %struct.gmatch* [ %add.ptr882, %if.then879 ], [ %incdec.ptr890, %insert_glob_match.exit ]
  %end.4 = phi i32 [ %290, %if.then879 ], [ %298, %insert_glob_match.exit ]
  store %struct.gmatch* %storemerge1135, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %297 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %end.4, i32 -1)
  %298 = extractvalue { i32, i1 } %297, 0
  %299 = extractvalue { i32, i1 } %297, 1
  br i1 %299, label %ioc_bb884, label %cont885

ioc_bb884:                                        ; preds = %while.cond883
  %300 = sext i32 %end.4 to i64
  call void @__ioc_report_add_overflow(i32 2150, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %300, i64 -1, i8 13) nounwind
  br label %cont885

cont885:                                          ; preds = %while.cond883, %ioc_bb884
  %cmp886 = icmp sgt i32 %end.4, 0
  br i1 %cmp886, label %while.body888, label %if.end908

while.body888:                                    ; preds = %cont885
  %301 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %name889 = getelementptr inbounds %struct.gmatch* %301, i32 0, i32 0
  %302 = load i8** %name889, align 4, !tbaa !2
  %303 = load %union.linkroot** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 24), align 4, !tbaa !2
  %tobool.i1170 = icmp eq %union.linkroot* %303, null
  br i1 %tobool.i1170, label %insert_glob_match.exit, label %if.then.i1171

if.then.i1171:                                    ; preds = %while.body888
  %first.i = getelementptr inbounds %union.linkroot* %303, i32 0, i32 0, i32 0
  %added.010.i = load %struct.linknode** %first.i, align 4
  %tobool211.i = icmp eq %struct.linknode* %added.010.i, null
  br i1 %tobool211.i, label %insert_glob_match.exit, label %for.body.i

for.body.i:                                       ; preds = %if.then.i1171, %for.body.i
  %added.013.i = phi %struct.linknode* [ %added.0.i, %for.body.i ], [ %added.010.i, %if.then.i1171 ]
  %next.addr.012.i = phi %struct.linknode* [ %call3.i, %for.body.i ], [ %0, %if.then.i1171 ]
  %dat.i = getelementptr inbounds %struct.linknode* %added.013.i, i32 0, i32 2
  %304 = load i8** %dat.i, align 4, !tbaa !2
  %call.i1172 = call i8* @dupstring(i8* %304) nounwind
  %call3.i = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %next.addr.012.i, i8* %call.i1172) nounwind
  %next4.i1173 = getelementptr inbounds %struct.linknode* %added.013.i, i32 0, i32 0
  %added.0.i = load %struct.linknode** %next4.i1173, align 4
  %tobool2.i1174 = icmp eq %struct.linknode* %added.0.i, null
  br i1 %tobool2.i1174, label %insert_glob_match.exit, label %for.body.i

insert_glob_match.exit:                           ; preds = %for.body.i, %while.body888, %if.then.i1171
  %next.addr.1.i = phi %struct.linknode* [ %0, %while.body888 ], [ %0, %if.then.i1171 ], [ %call3.i, %for.body.i ]
  %call5.i = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %next.addr.1.i, i8* %302) nounwind
  %305 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %incdec.ptr890 = getelementptr inbounds %struct.gmatch* %305, i32 -1
  br label %while.cond883

if.else892:                                       ; preds = %if.then865
  %add.ptr881.sum = sub i32 %add.ptr880.sum, %290
  %add.ptr897 = getelementptr inbounds %struct.gmatch* %295, i32 %add.ptr881.sum
  br label %while.cond898

while.cond898:                                    ; preds = %insert_glob_match.exit1191, %if.else892
  %storemerge1133 = phi %struct.gmatch* [ %add.ptr897, %if.else892 ], [ %incdec.ptr905, %insert_glob_match.exit1191 ]
  %end.5 = phi i32 [ %290, %if.else892 ], [ %307, %insert_glob_match.exit1191 ]
  store %struct.gmatch* %storemerge1133, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4
  %306 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %end.5, i32 -1)
  %307 = extractvalue { i32, i1 } %306, 0
  %308 = extractvalue { i32, i1 } %306, 1
  br i1 %308, label %ioc_bb899, label %cont900

ioc_bb899:                                        ; preds = %while.cond898
  %309 = sext i32 %end.5 to i64
  call void @__ioc_report_add_overflow(i32 2158, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %309, i64 -1, i8 13) nounwind
  br label %cont900

cont900:                                          ; preds = %while.cond898, %ioc_bb899
  %cmp901 = icmp sgt i32 %end.5, 0
  br i1 %cmp901, label %while.body903, label %if.end908

while.body903:                                    ; preds = %cont900
  %310 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %name904 = getelementptr inbounds %struct.gmatch* %310, i32 0, i32 0
  %311 = load i8** %name904, align 4, !tbaa !2
  %312 = load %union.linkroot** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 24), align 4, !tbaa !2
  %tobool.i1175 = icmp eq %union.linkroot* %312, null
  br i1 %tobool.i1175, label %insert_glob_match.exit1191, label %if.then.i1179

if.then.i1179:                                    ; preds = %while.body903
  %first.i1176 = getelementptr inbounds %union.linkroot* %312, i32 0, i32 0, i32 0
  %added.010.i1177 = load %struct.linknode** %first.i1176, align 4
  %tobool211.i1178 = icmp eq %struct.linknode* %added.010.i1177, null
  br i1 %tobool211.i1178, label %insert_glob_match.exit1191, label %for.body.i1188

for.body.i1188:                                   ; preds = %if.then.i1179, %for.body.i1188
  %added.013.i1180 = phi %struct.linknode* [ %added.0.i1186, %for.body.i1188 ], [ %added.010.i1177, %if.then.i1179 ]
  %next.addr.012.i1181 = phi %struct.linknode* [ %call3.i1184, %for.body.i1188 ], [ %0, %if.then.i1179 ]
  %dat.i1182 = getelementptr inbounds %struct.linknode* %added.013.i1180, i32 0, i32 2
  %313 = load i8** %dat.i1182, align 4, !tbaa !2
  %call.i1183 = call i8* @dupstring(i8* %313) nounwind
  %call3.i1184 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %next.addr.012.i1181, i8* %call.i1183) nounwind
  %next4.i1185 = getelementptr inbounds %struct.linknode* %added.013.i1180, i32 0, i32 0
  %added.0.i1186 = load %struct.linknode** %next4.i1185, align 4
  %tobool2.i1187 = icmp eq %struct.linknode* %added.0.i1186, null
  br i1 %tobool2.i1187, label %insert_glob_match.exit1191, label %for.body.i1188

insert_glob_match.exit1191:                       ; preds = %for.body.i1188, %while.body903, %if.then.i1179
  %next.addr.1.i1189 = phi %struct.linknode* [ %0, %while.body903 ], [ %0, %if.then.i1179 ], [ %call3.i1184, %for.body.i1188 ]
  %call5.i1190 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %next.addr.1.i1189, i8* %311) nounwind
  %314 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %incdec.ptr905 = getelementptr inbounds %struct.gmatch* %314, i32 1
  br label %while.cond898

if.end908:                                        ; preds = %cont885, %cont900, %cont862
  %315 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %316 = bitcast %struct.gmatch* %315 to i8*
  call void @free(i8* %316) nounwind
  %317 = load i8** @pathbuf, align 4, !tbaa !2
  %318 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  call void @zfree(i8* %317, i32 %318) nounwind
  store i32 %5, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 0), align 4
  store i8* %6, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2) to i8*), i8* %saved.sroa.2.8.cast1037, i32 184, i32 4, i1 false)
  store i8* %7, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 25), align 4
  store i8* %8, i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 26), align 4
  store i32 %5, i32* @pathpos, align 4, !tbaa !3
  store i8* %6, i8** @pathbuf, align 4, !tbaa !2
  store i8* %7, i8** @glob_pre, align 4, !tbaa !2
  store i8* %8, i8** @glob_suf, align 4, !tbaa !2
  br label %do.end914

do.end914:                                        ; preds = %if.then, %if.then6, %if.then409, %do.body458, %sw.default, %if.then490, %if.then547, %sw.default569, %do.body600, %if.end695, %if.end697, %if.then718, %if.end908
  ret void
}

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @untokenize(i8*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @dupstring(i8*)

declare i8* @uremnode(%union.linkroot*, %struct.linknode*)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define internal i32 @qualflags(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %mod, i8* nocapture %dummy) nounwind {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %call = tail call i32 @mode_to_octal(i32 %0) nounwind
  %conv = sext i32 %call to i64
  %and = and i64 %conv, %mod
  %and.off = add i64 %and, 2147483648
  %1 = icmp ult i64 %and.off, 4294967296
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3547, i32 10, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %and, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv1 = trunc i64 %and to i32
  ret i32 %conv1
}

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i8* @hcalloc(i32)

declare i8* @dyncat(i8*, i8*)

define internal i32 @qualislnk(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 40960
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualissock(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 49152
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualisfifo(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 4096
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualisdir(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 16384
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualisreg(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 32768
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualisblk(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 24576
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualischr(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 8192
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal i32 @qualisdev(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %junk, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 24576
  %cmp9 = icmp eq i32 %and, 8192
  %.cmp9 = or i1 %cmp, %cmp9
  %lor.ext = zext i1 %.cmp9 to i32
  ret i32 %lor.ext
}

define internal i32 @qualiscom(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %mod, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %and12 = and i32 %0, 73
  %tobool = icmp ne i32 %and12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

define internal i32 @qualdev(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %dv, i8* nocapture %dummy) nounwind {
entry:
  %st_dev = getelementptr inbounds %struct.stat* %buf, i32 0, i32 0
  %0 = load i64* %st_dev, align 4, !tbaa !5
  %1 = icmp sgt i64 %0, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3463, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i64 %0, i8 0) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %cmp = icmp eq i64 %0, %dv
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define internal fastcc i64 @qgetnum(i8** nocapture %s) nounwind {
entry:
  %0 = load i8** %s, align 4, !tbaa !2
  %1 = load i8* %0, align 1, !tbaa !0
  %2 = icmp sgt i8 %1, -1
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %3 = sext i8 %1 to i64
  tail call void @__ioc_report_conversion(i32 826, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %4, 1
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.then, label %while.cond

if.then:                                          ; preds = %cont
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str26, i32 0, i32 0)) nounwind
  br label %return

while.cond:                                       ; preds = %ioc_bb22, %cont21, %cont
  %v.0 = phi i64 [ 0, %cont ], [ %19, %cont21 ], [ %19, %ioc_bb22 ]
  %5 = load i8** %s, align 4, !tbaa !2
  %6 = load i8* %5, align 1, !tbaa !0
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %while.cond
  %8 = sext i8 %6 to i64
  tail call void @__ioc_report_conversion(i32 830, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %while.cond
  %idxprom8 = zext i8 %6 to i32
  %arrayidx9 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom8
  %9 = load i16* %arrayidx9, align 2, !tbaa !4
  %and15 = and i16 %9, 1
  %tobool16 = icmp eq i16 %and15, 0
  br i1 %tobool16, label %return, label %while.body

while.body:                                       ; preds = %cont7
  %10 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %v.0, i64 10)
  %11 = extractvalue { i64, i1 } %10, 0
  %12 = extractvalue { i64, i1 } %10, 1
  br i1 %12, label %ioc_bb17, label %cont18

ioc_bb17:                                         ; preds = %while.body
  tail call void @__ioc_report_mul_overflow(i32 831, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @21, i32 0, i32 0), i64 %v.0, i64 10, i8 14) nounwind
  br label %cont18

cont18:                                           ; preds = %while.body, %ioc_bb17
  %13 = load i8** %s, align 4, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 4, !tbaa !2
  %14 = load i8* %13, align 1, !tbaa !0
  %conv19 = sext i8 %14 to i64
  %15 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %11, i64 %conv19)
  %16 = extractvalue { i64, i1 } %15, 0
  %17 = extractvalue { i64, i1 } %15, 1
  br i1 %17, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont18
  tail call void @__ioc_report_add_overflow(i32 831, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %11, i64 %conv19, i8 14) nounwind
  br label %cont21

cont21:                                           ; preds = %cont18, %ioc_bb20
  %18 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %16, i64 48)
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %ioc_bb22, label %while.cond

ioc_bb22:                                         ; preds = %cont21
  tail call void @__ioc_report_sub_overflow(i32 831, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %16, i64 48, i8 14) nounwind
  br label %while.cond

return:                                           ; preds = %cont7, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %v.0, %cont7 ]
  ret i64 %retval.0
}

define internal i32 @qualnlink(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %ct, i8* nocapture %dummy) nounwind readonly {
entry:
  %0 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %st_nlink = getelementptr inbounds %struct.stat* %buf, i32 0, i32 4
  %1 = load i32* %st_nlink, align 4, !tbaa !3
  %conv = zext i32 %1 to i64
  %cmp1 = icmp slt i64 %conv, %ct
  br label %cond.end15

cond.false:                                       ; preds = %entry
  %cmp3 = icmp sgt i32 %0, 0
  %st_nlink6 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 4
  %2 = load i32* %st_nlink6, align 4, !tbaa !3
  %conv7 = zext i32 %2 to i64
  %cmp8 = icmp sgt i64 %conv7, %ct
  %cmp13 = icmp eq i64 %conv7, %ct
  %cmp8.sink = select i1 %cmp3, i1 %cmp8, i1 %cmp13
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false, %cond.true
  %cmp8.sink.sink = phi i1 [ %cmp8.sink, %cond.false ], [ %cmp1, %cond.true ]
  %conv9 = zext i1 %cmp8.sink.sink to i32
  ret i32 %conv9
}

define internal i32 @qualuid(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %uid, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_uid = getelementptr inbounds %struct.stat* %buf, i32 0, i32 5
  %0 = load i32* %st_uid, align 4, !tbaa !3
  %conv = zext i32 %0 to i64
  %cmp = icmp eq i64 %conv, %uid
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

declare i32 @geteuid() nounwind

define internal i32 @qualgid(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %gid, i8* nocapture %dummy) nounwind readonly {
entry:
  %st_gid = getelementptr inbounds %struct.stat* %buf, i32 0, i32 6
  %0 = load i32* %st_gid, align 4, !tbaa !3
  %conv = zext i32 %0 to i64
  %cmp = icmp eq i64 %conv, %gid
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

declare i32 @getegid() nounwind

declare i8* @get_strarg(i8*, i32*)

declare void @zerr(i8*, ...)

declare %struct.passwd* @getpwnam(i8* nocapture) nounwind

declare %struct.group* @getgrnam(i8*)

define internal i32 @qualmodeflags(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %mod, i8* nocapture %dummy) nounwind {
entry:
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %call = tail call i32 @mode_to_octal(i32 %0) nounwind
  %mod.tr = trunc i64 %mod to i32
  %conv = and i32 %mod.tr, 4095
  %shr = ashr i64 %mod, 12
  %shr.off = add i64 %shr, 2147483648
  %1 = icmp ult i64 %shr.off, 4294967296
  br i1 %1, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 3556, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %shr, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %entry
  %and8 = and i32 %call, %conv
  %cmp = icmp eq i32 %and8, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cont6
  %conv7 = trunc i64 %shr to i32
  %and10 = and i32 %call, %conv7
  %lnot = icmp eq i32 %and10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cont6
  %2 = phi i1 [ false, %cont6 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

define internal i32 @qualnonemptydir(i8* %name, %struct.stat* nocapture %buf, i64 %days, i8* nocapture %str) nounwind {
entry:
  %unamelen = alloca i32, align 4
  %call = call i8* @dupstring(i8* %name) nounwind
  %call1 = call i8* @unmetafy(i8* %call, i32* %unamelen) nounwind
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %0 = load i32* %st_mode, align 4, !tbaa !3
  %and = and i32 %0, 61440
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %cont5, label %return

cont5:                                            ; preds = %entry
  %st_nlink = getelementptr inbounds %struct.stat* %buf, i32 0, i32 4
  %1 = load i32* %st_nlink, align 4, !tbaa !3
  %cmp6 = icmp ugt i32 %1, 2
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %cont5
  %call9 = call %struct.__dirstream* @opendir(i8* %call1) nounwind
  %tobool = icmp eq %struct.__dirstream* %call9, null
  br i1 %tobool, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end8
  %call12174 = call %struct.dirent* @readdir64(%struct.__dirstream* %call9) nounwind
  %tobool13175 = icmp eq %struct.dirent* %call12174, null
  br i1 %tobool13175, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %2 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str14 to i32))
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str15 to i32))
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call12176 = phi %struct.dirent* [ %call12174, %while.body.lr.ph ], [ %call12, %while.cond.backedge ]
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = extractvalue { i32, i1 } %2, 1
  br i1 %5, label %ioc_bb14, label %cont17

ioc_bb14:                                         ; preds = %while.body
  call void @__ioc_report_sub_overflow(i32 3683, i32 9, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str14 to i32) to i64), i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %ioc_bb14, %while.body
  %cmp18 = icmp eq i32 %4, 1
  %arraydecay = getelementptr inbounds %struct.dirent* %call12176, i32 0, i32 4, i32 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont17
  %6 = load i8* %arraydecay, align 1, !tbaa !0
  %conv = zext i8 %6 to i32
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 46)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb23, label %land.lhs.true29

ioc_bb23:                                         ; preds = %cond.true
  %10 = zext i8 %6 to i64
  call void @__ioc_report_sub_overflow(i32 3683, i32 9, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %10, i64 46, i8 13) nounwind
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %cond.true, %ioc_bb23
  %cmp30 = icmp eq i32 %8, 0
  br i1 %cmp30, label %if.then32, label %land.lhs.true71

if.then32:                                        ; preds = %land.lhs.true29
  %arrayidx33 = getelementptr inbounds %struct.dirent* %call12176, i32 0, i32 4, i32 1
  %11 = load i8* %arrayidx33, align 1, !tbaa !0
  %conv34 = zext i8 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont17
  %call69 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then32, %cond.false
  %cond = phi i32 [ %call69, %cond.false ], [ %conv34, %if.then32 ]
  %tobool70 = icmp eq i32 %cond, 0
  br i1 %tobool70, label %while.cond.backedge, label %land.lhs.true71

while.cond.backedge:                              ; preds = %cond.end, %cond.end141
  %call12 = call %struct.dirent* @readdir64(%struct.__dirstream* %call9) nounwind
  %tobool13 = icmp eq %struct.dirent* %call12, null
  br i1 %tobool13, label %while.end, label %while.body

land.lhs.true71:                                  ; preds = %land.lhs.true29, %cond.end
  %12 = extractvalue { i32, i1 } %3, 0
  %13 = extractvalue { i32, i1 } %3, 1
  br i1 %13, label %ioc_bb74, label %cont77

ioc_bb74:                                         ; preds = %land.lhs.true71
  call void @__ioc_report_sub_overflow(i32 3683, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str15 to i32) to i64), i8 5) nounwind
  br label %cont77

cont77:                                           ; preds = %ioc_bb74, %land.lhs.true71
  %cmp78 = icmp eq i32 %12, 1
  br i1 %cmp78, label %cond.true85, label %cond.false137

cond.true85:                                      ; preds = %cont77
  %14 = load i8* %arraydecay, align 1, !tbaa !0
  %conv91 = zext i8 %14 to i32
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv91, i32 46)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb93, label %land.lhs.true99

ioc_bb93:                                         ; preds = %cond.true85
  %18 = zext i8 %14 to i64
  call void @__ioc_report_sub_overflow(i32 3683, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %18, i64 46, i8 13) nounwind
  br label %land.lhs.true99

land.lhs.true99:                                  ; preds = %cond.true85, %ioc_bb93
  %cmp100 = icmp eq i32 %16, 0
  br i1 %cmp100, label %if.then102, label %if.then144

if.then102:                                       ; preds = %land.lhs.true99
  %arrayidx103 = getelementptr inbounds %struct.dirent* %call12176, i32 0, i32 4, i32 1
  %19 = load i8* %arrayidx103, align 1, !tbaa !0
  %conv104 = zext i8 %19 to i32
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv104, i32 46)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb106, label %land.lhs.true112

ioc_bb106:                                        ; preds = %if.then102
  %23 = zext i8 %19 to i64
  call void @__ioc_report_sub_overflow(i32 3683, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %23, i64 46, i8 13) nounwind
  br label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.then102, %ioc_bb106
  %cmp113 = icmp eq i32 %21, 0
  br i1 %cmp113, label %if.then115, label %if.then144

if.then115:                                       ; preds = %land.lhs.true112
  %arrayidx116 = getelementptr inbounds %struct.dirent* %call12176, i32 0, i32 4, i32 2
  %24 = load i8* %arrayidx116, align 1, !tbaa !0
  %conv117 = zext i8 %24 to i32
  br label %cond.end141

cond.false137:                                    ; preds = %cont77
  %call140 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0)) nounwind
  br label %cond.end141

cond.end141:                                      ; preds = %if.then115, %cond.false137
  %cond142 = phi i32 [ %call140, %cond.false137 ], [ %conv117, %if.then115 ]
  %tobool143 = icmp eq i32 %cond142, 0
  br i1 %tobool143, label %while.cond.backedge, label %if.then144

if.then144:                                       ; preds = %land.lhs.true99, %land.lhs.true112, %cond.end141
  %call145 = call i32 @closedir(%struct.__dirstream* %call9) nounwind
  br label %return

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %call147 = call i32 @closedir(%struct.__dirstream* %call9) nounwind
  br label %return

return:                                           ; preds = %if.end8, %cont5, %entry, %while.end, %if.then144
  %retval.0 = phi i32 [ 1, %if.then144 ], [ 0, %while.end ], [ 0, %entry ], [ 1, %cont5 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

define internal i32 @qualtime(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %days, i8* nocapture %dummy) nounwind {
entry:
  %now = alloca i32, align 4
  %call = call i32 @time(i32* %now) nounwind
  %0 = load i32* %now, align 4, !tbaa !7
  %1 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  switch i32 %1, label %cond.false4 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.stat* %buf, i32 0, i32 12, i32 0
  br label %cond.end6

cond.true2:                                       ; preds = %entry
  %tv_sec3 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 13, i32 0
  br label %cond.end6

cond.false4:                                      ; preds = %entry
  %tv_sec5 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 14, i32 0
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true2, %cond.false4, %cond.true
  %cond7.in = phi i32* [ %tv_sec, %cond.true ], [ %tv_sec3, %cond.true2 ], [ %tv_sec5, %cond.false4 ]
  %cond7 = load i32* %cond7.in, align 4
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %cond7)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %cond.end6
  %5 = sext i32 %cond7 to i64
  %6 = sext i32 %0 to i64
  call void @__ioc_report_sub_overflow(i32 3608, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %cond.end6, %ioc_bb
  %7 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  switch i32 %7, label %sw.epilog [
    i32 0, label %cont9
    i32 1, label %cont14
    i32 2, label %cont20
    i32 3, label %cont26
    i32 4, label %cont32
  ]

cont9:                                            ; preds = %cont
  %div = sdiv i32 %3, 86400
  br label %sw.epilog

cont14:                                           ; preds = %cont
  %div15 = sdiv i32 %3, 3600
  br label %sw.epilog

cont20:                                           ; preds = %cont
  %div21 = sdiv i32 %3, 60
  br label %sw.epilog

cont26:                                           ; preds = %cont
  %div27 = sdiv i32 %3, 604800
  br label %sw.epilog

cont32:                                           ; preds = %cont
  %div33 = sdiv i32 %3, 2592000
  br label %sw.epilog

sw.epilog:                                        ; preds = %cont, %cont32, %cont26, %cont20, %cont14, %cont9
  %diff.0 = phi i32 [ %3, %cont ], [ %div33, %cont32 ], [ %div27, %cont26 ], [ %div21, %cont20 ], [ %div15, %cont14 ], [ %div, %cont9 ]
  %8 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  %cmp34 = icmp slt i32 %8, 0
  br i1 %cmp34, label %cond.true35, label %cond.false38

cond.true35:                                      ; preds = %sw.epilog
  %conv = sext i32 %diff.0 to i64
  %cmp36 = icmp slt i64 %conv, %days
  br label %cond.end51

cond.false38:                                     ; preds = %sw.epilog
  %cmp39 = icmp sgt i32 %8, 0
  %conv42 = sext i32 %diff.0 to i64
  %cmp43 = icmp sgt i64 %conv42, %days
  %cmp47 = icmp eq i64 %conv42, %days
  %cmp43.sink = select i1 %cmp39, i1 %cmp43, i1 %cmp47
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false38, %cond.true35
  %cmp43.sink.sink = phi i1 [ %cmp43.sink, %cond.false38 ], [ %cmp36, %cond.true35 ]
  %conv44 = zext i1 %cmp43.sink.sink to i32
  ret i32 %conv44
}

define internal i32 @qualsize(i8* nocapture %name, %struct.stat* nocapture %buf, i64 %size, i8* nocapture %dummy) nounwind {
entry:
  %st_size = getelementptr inbounds %struct.stat* %buf, i32 0, i32 9
  %0 = load i64* %st_size, align 4, !tbaa !5
  %1 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %2 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 511)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = extractvalue { i64, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont2

ioc_bb:                                           ; preds = %sw.bb
  tail call void @__ioc_report_add_overflow(i32 3580, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %0, i64 511, i8 14) nounwind
  br label %cont2

cont2:                                            ; preds = %ioc_bb, %sw.bb
  %div = sdiv i64 %3, 512
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1023)
  %6 = extractvalue { i64, i1 } %5, 0
  %7 = extractvalue { i64, i1 } %5, 1
  br i1 %7, label %ioc_bb4, label %cont9

ioc_bb4:                                          ; preds = %sw.bb3
  tail call void @__ioc_report_add_overflow(i32 3586, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %0, i64 1023, i8 14) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb4, %sw.bb3
  %div10 = sdiv i64 %6, 1024
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 1048575)
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  br i1 %10, label %ioc_bb12, label %cont17

ioc_bb12:                                         ; preds = %sw.bb11
  tail call void @__ioc_report_add_overflow(i32 3592, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %0, i64 1048575, i8 14) nounwind
  br label %cont17

cont17:                                           ; preds = %ioc_bb12, %sw.bb11
  %div18 = sdiv i64 %9, 1048576
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cont17, %cont9, %cont2
  %scaled.0 = phi i64 [ %0, %entry ], [ %div18, %cont17 ], [ %div10, %cont9 ], [ %div, %cont2 ]
  %11 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %cmp19 = icmp slt i64 %scaled.0, %size
  br label %cond.end28

cond.false:                                       ; preds = %sw.epilog
  %cmp20 = icmp sgt i32 %11, 0
  %cmp23 = icmp sgt i64 %scaled.0, %size
  %cmp26 = icmp eq i64 %scaled.0, %size
  %cmp23.sink = select i1 %cmp20, i1 %cmp23, i1 %cmp26
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false, %cond.true
  %cmp23.sink.sink = phi i1 [ %cmp23.sink, %cond.false ], [ %cmp19, %cond.true ]
  %conv24 = zext i1 %cmp23.sink.sink to i32
  ret i32 %conv24
}

declare void @zfree(i8*, i32)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

define internal fastcc i8* @glob_exec_string(i8** nocapture %sp) nounwind {
entry:
  %plus = alloca i32, align 4
  %0 = load i8** %sp, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds i8* %0, i32 -1
  %1 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp = icmp eq i8 %1, 43
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %plus, align 4, !tbaa !3
  %call = call i8* @itype_end(i8* %0, i32 128, i32 0) nounwind
  %cmp6 = icmp eq i8* %call, %0
  br i1 %cmp6, label %if.then8, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  %.pre = load i8* %call, align 1, !tbaa !0
  br label %if.end12

if.then8:                                         ; preds = %if.then
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([29 x i8]* @.str23, i32 0, i32 0)) nounwind
  br label %return

if.else:                                          ; preds = %entry
  %call9 = call i8* @get_strarg(i8* %0, i32* %plus) nounwind
  %2 = load i8* %call9, align 1, !tbaa !0
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([22 x i8]* @.str24, i32 0, i32 0)) nounwind
  br label %return

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %if.else
  %3 = phi i8 [ %.pre, %if.then.if.end12_crit_edge ], [ %2, %if.else ]
  %tt.0 = phi i8* [ %call, %if.then.if.end12_crit_edge ], [ %call9, %if.else ]
  store i8 0, i8* %tt.0, align 1, !tbaa !0
  %4 = load i32* %plus, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %0, i32 %4
  %call15 = call i8* @dupstring(i8* %add.ptr) nounwind
  call void @untokenize(i8* %call15) nounwind
  store i8 %3, i8* %tt.0, align 1, !tbaa !0
  %tobool16 = icmp eq i8 %3, 0
  br i1 %tobool16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end12
  %5 = load i32* %plus, align 4, !tbaa !3
  %add.ptr18 = getelementptr inbounds i8* %tt.0, i32 %5
  br label %if.end20

if.end20:                                         ; preds = %if.end12, %if.then17
  %storemerge = phi i8* [ %add.ptr18, %if.then17 ], [ %tt.0, %if.end12 ]
  store i8* %storemerge, i8** %sp, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then10, %if.then8
  %retval.0 = phi i8* [ null, %if.then8 ], [ %call15, %if.end20 ], [ null, %if.then10 ]
  ret i8* %retval.0
}

define internal i32 @qualsheval(i8* %name, %struct.stat* nocapture %buf, i64 %days, i8* %str) nounwind {
entry:
  %call = tail call %struct.eprog* @parse_string(i8* %str, i32 0) nounwind
  %tobool = icmp eq %struct.eprog* %call, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @errflag, align 4, !tbaa !3
  %1 = load i64* @lastval, align 8, !tbaa !5
  %.off = add i64 %1, 2147483648
  %2 = icmp ult i64 %.off, 4294967296
  br i1 %2, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %if.then
  tail call void @__ioc_report_conversion(i32 3647, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %if.then
  tail call void @unsetparam(i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0)) nounwind
  %call1 = tail call i8* @ztrdup(i8* %name) nounwind
  %call2 = tail call %struct.param* @assignsparam(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* %call1, i32 0) nounwind
  tail call void @execode(%struct.eprog* %call, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str17, i32 0, i32 0)) nounwind
  %3 = load i64* @lastval, align 8, !tbaa !5
  %.off22 = add i64 %3, 2147483648
  %4 = icmp ult i64 %.off22, 4294967296
  br i1 %4, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cont
  tail call void @__ioc_report_conversion(i32 3652, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cont
  %conv7 = trunc i64 %3 to i32
  store i32 %0, i32* @errflag, align 4, !tbaa !3
  %sext = shl i64 %1, 32
  %conv8 = ashr exact i64 %sext, 32
  store i64 %conv8, i64* @lastval, align 8, !tbaa !5
  %call9 = tail call i8** @getaparam(i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0)) nounwind
  store i8** %call9, i8*** @inserts, align 4, !tbaa !2
  %tobool10 = icmp eq i8** %call9, null
  br i1 %tobool10, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %cont6
  %call11 = tail call i8** @gethparam(i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0)) nounwind
  store i8** %call11, i8*** @inserts, align 4, !tbaa !2
  %tobool12 = icmp eq i8** %call11, null
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call i8* @getsparam(i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0)) nounwind
  %tobool15 = icmp eq i8* %call14, null
  br i1 %tobool15, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.then13
  %call16 = tail call i8* @getsparam(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)) nounwind
  %tobool17 = icmp eq i8* %call16, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.then13
  %tmp.0 = phi i8* [ %call14, %if.then13 ], [ %call16, %lor.lhs.false ]
  store i8* %tmp.0, i8** getelementptr inbounds ([2 x i8*]* @qualsheval.tmparr, i32 0, i32 0), align 4, !tbaa !2
  store i8* null, i8** getelementptr inbounds ([2 x i8*]* @qualsheval.tmparr, i32 0, i32 1), align 4, !tbaa !2
  store i8** getelementptr inbounds ([2 x i8*]* @qualsheval.tmparr, i32 0, i32 0), i8*** @inserts, align 4, !tbaa !2
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false, %land.lhs.true, %cont6, %if.then18
  %lnot = icmp eq i32 %conv7, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %return

return:                                           ; preds = %entry, %if.end19
  %retval.0 = phi i32 [ %lnot.ext, %if.end19 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @getindex(i8**, %struct.value*, i32)

declare %union.linkroot* @newlinklist()

declare %struct.linknode* @insertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i8* @zalloc(i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @pattrystart()

define internal fastcc void @scanner(%struct.complist* %q) nounwind {
entry:
  %ds = alloca %struct.dirsav, align 4
  %sc = alloca %struct.stat, align 8
  %sr = alloca %struct.stat, align 8
  %buf = alloca %struct.stat, align 4
  %0 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %1 = load i32* @errsfound, align 4, !tbaa !3
  call void @init_dirsav(%struct.dirsav* %ds) nounwind
  %tobool = icmp eq %struct.complist* %q, null
  br i1 %tobool, label %if.end420, label %if.end

if.end:                                           ; preds = %entry
  %closure1 = getelementptr inbounds %struct.complist* %q, i32 0, i32 2
  %2 = load i32* %closure1, align 4, !tbaa !3
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  store i32 1, i32* %closure1, align 4, !tbaa !3
  br label %if.end8

if.else:                                          ; preds = %if.then3
  %next = getelementptr inbounds %struct.complist* %q, i32 0, i32 0
  %3 = load %struct.complist** %next, align 4, !tbaa !2
  call fastcc void @scanner(%struct.complist* %3)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else, %if.end
  %pat = getelementptr inbounds %struct.complist* %q, i32 0, i32 1
  %4 = load %struct.patprog** %pat, align 4, !tbaa !2
  %flags = getelementptr inbounds %struct.patprog* %4, i32 0, i32 6
  %5 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %5, 32
  %tobool9 = icmp eq i32 %and, 0
  br i1 %tobool9, label %if.else211, label %if.then10

if.then10:                                        ; preds = %if.end8
  %6 = bitcast %struct.patprog* %4 to i8*
  %startoff = getelementptr inbounds %struct.patprog* %4, i32 0, i32 0
  %7 = load i32* %startoff, align 4, !tbaa !7
  %add.ptr = getelementptr inbounds i8* %6, i32 %7
  %patmlen = getelementptr inbounds %struct.patprog* %4, i32 0, i32 3
  %8 = load i32* %patmlen, align 4, !tbaa !7
  %lnot = icmp eq i32 %8, 0
  %lnot.ext = zext i1 %lnot to i32
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %8, i32 %lnot.ext)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.then10
  %12 = zext i1 %lnot to i64
  %13 = sext i32 %8 to i64
  call void @__ioc_report_add_overflow(i32 577, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.then10, %ioc_bb
  %14 = load i32* @pathpos, align 4, !tbaa !3
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 %14)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb12, label %cont13

ioc_bb12:                                         ; preds = %cont
  %18 = sext i32 %14 to i64
  %19 = sext i32 %10 to i64
  call void @__ioc_report_add_overflow(i32 577, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind
  br label %cont13

cont13:                                           ; preds = %cont, %ioc_bb12
  %20 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %16, i32 %20)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb14, label %cont15

ioc_bb14:                                         ; preds = %cont13
  %24 = sext i32 %20 to i64
  %25 = sext i32 %16 to i64
  call void @__ioc_report_sub_overflow(i32 577, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %25, i64 %24, i8 13) nounwind
  br label %cont15

cont15:                                           ; preds = %cont13, %ioc_bb14
  %cmp16 = icmp sgt i32 %22, 4095
  br i1 %cmp16, label %if.then17, label %if.end30

if.then17:                                        ; preds = %cont15
  %cmp18 = icmp sgt i32 %8, 4095
  br i1 %cmp18, label %if.end420, label %if.end20

if.end20:                                         ; preds = %if.then17
  %26 = load i8** @pathbuf, align 4, !tbaa !2
  %27 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %add.ptr21 = getelementptr inbounds i8* %26, i32 %27
  %call = call i32 @lchdir(i8* %add.ptr21, %struct.dirsav* %ds, i32 0) nounwind
  switch i32 %call, label %if.then28 [
    i32 -1, label %if.end420
    i32 0, label %if.end29
  ]

if.then28:                                        ; preds = %if.end20
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([35 x i8]* @.str19, i32 0, i32 0)) nounwind
  br label %if.end420

if.end29:                                         ; preds = %if.end20
  %28 = load i32* @pathpos, align 4, !tbaa !3
  store i32 %28, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %cont15
  %next31 = getelementptr inbounds %struct.complist* %q, i32 0, i32 0
  %29 = load %struct.complist** %next31, align 4, !tbaa !2
  %tobool32 = icmp eq %struct.complist* %29, null
  br i1 %tobool32, label %if.else204, label %if.then33

if.then33:                                        ; preds = %if.end30
  %30 = load i32* @pathpos, align 4, !tbaa !3
  %31 = load i32* @errflag, align 4, !tbaa !3
  %tobool34 = icmp eq i32 %31, 0
  br i1 %tobool34, label %if.then35, label %if.end406

if.then35:                                        ; preds = %if.then33
  %32 = load i32* %closure1, align 4, !tbaa !3
  %tobool37 = icmp eq i32 %32, 0
  br i1 %tobool37, label %if.then185, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then35
  %33 = load i8** @pathbuf, align 4, !tbaa !2
  %34 = load i8* %33, align 1, !tbaa !0
  %tobool38 = icmp eq i8 %34, 0
  br i1 %tobool38, label %if.then185, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str14 to i32))
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb40, label %cont43

ioc_bb40:                                         ; preds = %if.then39
  call void @__ioc_report_sub_overflow(i32 596, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str14 to i32) to i64), i8 5) nounwind
  br label %cont43

cont43:                                           ; preds = %ioc_bb40, %if.then39
  %cmp44 = icmp eq i32 %36, 1
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cont43
  %38 = load i8* %add.ptr, align 1, !tbaa !0
  %conv51 = zext i8 %38 to i32
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv51, i32 46)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb53, label %land.lhs.true59

ioc_bb53:                                         ; preds = %cond.true
  %42 = zext i8 %38 to i64
  call void @__ioc_report_sub_overflow(i32 596, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %42, i64 46, i8 13) nounwind
  br label %land.lhs.true59

land.lhs.true59:                                  ; preds = %cond.true, %ioc_bb53
  %cmp60 = icmp eq i32 %40, 0
  br i1 %cmp60, label %if.then62, label %if.else100

if.then62:                                        ; preds = %land.lhs.true59
  %add.ptr.sum513 = add i32 %7, 1
  %arrayidx63 = getelementptr inbounds i8* %6, i32 %add.ptr.sum513
  %43 = load i8* %arrayidx63, align 1, !tbaa !0
  %conv64 = zext i8 %43 to i32
  br label %cond.end

cond.false:                                       ; preds = %cont43
  %call97 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0)) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then62, %cond.false
  %cond = phi i32 [ %call97, %cond.false ], [ %conv64, %if.then62 ]
  %tobool98 = icmp eq i32 %cond, 0
  br i1 %tobool98, label %if.end406, label %if.else100

if.else100:                                       ; preds = %land.lhs.true59, %cond.end
  %44 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str15 to i32))
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb103, label %cont106

ioc_bb103:                                        ; preds = %if.else100
  call void @__ioc_report_sub_overflow(i32 598, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str15 to i32) to i64), i8 5) nounwind
  br label %cont106

cont106:                                          ; preds = %ioc_bb103, %if.else100
  %cmp107 = icmp eq i32 %45, 1
  br i1 %cmp107, label %cond.true114, label %cond.false164

cond.true114:                                     ; preds = %cont106
  %47 = load i8* %add.ptr, align 1, !tbaa !0
  %conv118 = zext i8 %47 to i32
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv118, i32 46)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb120, label %land.lhs.true126

ioc_bb120:                                        ; preds = %cond.true114
  %51 = zext i8 %47 to i64
  call void @__ioc_report_sub_overflow(i32 598, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %51, i64 46, i8 13) nounwind
  br label %land.lhs.true126

land.lhs.true126:                                 ; preds = %cond.true114, %ioc_bb120
  %cmp127 = icmp eq i32 %49, 0
  br i1 %cmp127, label %if.then129, label %if.then185

if.then129:                                       ; preds = %land.lhs.true126
  %add.ptr.sum511 = add i32 %7, 1
  %arrayidx130 = getelementptr inbounds i8* %6, i32 %add.ptr.sum511
  %52 = load i8* %arrayidx130, align 1, !tbaa !0
  %conv131 = zext i8 %52 to i32
  %53 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv131, i32 46)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb133, label %land.lhs.true139

ioc_bb133:                                        ; preds = %if.then129
  %56 = zext i8 %52 to i64
  call void @__ioc_report_sub_overflow(i32 598, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %56, i64 46, i8 13) nounwind
  br label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.then129, %ioc_bb133
  %cmp140 = icmp eq i32 %54, 0
  br i1 %cmp140, label %if.then142, label %if.then185

if.then142:                                       ; preds = %land.lhs.true139
  %add.ptr.sum512 = add i32 %7, 2
  %arrayidx143 = getelementptr inbounds i8* %6, i32 %add.ptr.sum512
  %57 = load i8* %arrayidx143, align 1, !tbaa !0
  %conv144 = zext i8 %57 to i32
  br label %cond.end166

cond.false164:                                    ; preds = %cont106
  %call165 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0)) nounwind
  br label %cond.end166

cond.end166:                                      ; preds = %if.then142, %cond.false164
  %cond167 = phi i32 [ %call165, %cond.false164 ], [ %conv144, %if.then142 ]
  %tobool168 = icmp eq i32 %cond167, 0
  br i1 %tobool168, label %if.then169, label %if.then185

if.then169:                                       ; preds = %cond.end166
  %58 = bitcast %struct.stat* %sr to %struct.stat64*
  %call.i = call i32 @__xstat64(i32 3, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), %struct.stat64* %58) nounwind
  %tobool171 = icmp eq i32 %call.i, 0
  br i1 %tobool171, label %lor.lhs.false, label %if.then185

lor.lhs.false:                                    ; preds = %if.then169
  %59 = load i8** @pathbuf, align 4, !tbaa !2
  %60 = bitcast %struct.stat* %sc to %struct.stat64*
  %call.i520 = call i32 @__xstat64(i32 3, i8* %59, %struct.stat64* %60) nounwind
  %tobool173 = icmp eq i32 %call.i520, 0
  br i1 %tobool173, label %lor.lhs.false174, label %if.then185

lor.lhs.false174:                                 ; preds = %lor.lhs.false
  %st_ino = getelementptr inbounds %struct.stat* %sr, i32 0, i32 15
  %61 = load i64* %st_ino, align 8, !tbaa !5
  %st_ino175 = getelementptr inbounds %struct.stat* %sc, i32 0, i32 15
  %62 = load i64* %st_ino175, align 8, !tbaa !5
  %cmp176 = icmp eq i64 %61, %62
  br i1 %cmp176, label %lor.rhs, label %if.then185

lor.rhs:                                          ; preds = %lor.lhs.false174
  %st_dev = getelementptr inbounds %struct.stat* %sr, i32 0, i32 0
  %63 = load i64* %st_dev, align 8, !tbaa !5
  %st_dev178 = getelementptr inbounds %struct.stat* %sc, i32 0, i32 0
  %64 = load i64* %st_dev178, align 8, !tbaa !5
  %cmp179 = icmp eq i64 %63, %64
  br i1 %cmp179, label %if.end406, label %if.then185

if.then185:                                       ; preds = %lor.rhs, %land.lhs.true126, %land.lhs.true139, %if.then169, %lor.lhs.false, %lor.lhs.false174, %if.then35, %land.lhs.true, %cond.end166
  call fastcc void @addpath(i8* %add.ptr, i32 %8)
  br i1 %tobool2, label %lor.lhs.false187, label %if.then190

lor.lhs.false187:                                 ; preds = %if.then185
  %call188 = call fastcc i32 @statfullpath(i8* getelementptr inbounds ([1 x i8]* @.str21, i32 0, i32 0), %struct.stat* null, i32 1)
  %tobool189 = icmp eq i32 %call188, 0
  br i1 %tobool189, label %if.then190, label %cont200

if.then190:                                       ; preds = %lor.lhs.false187, %if.then185
  %65 = load i32* %closure1, align 4, !tbaa !3
  %tobool192 = icmp eq i32 %65, 0
  br i1 %tobool192, label %cond.false194, label %cond.end196

cond.false194:                                    ; preds = %if.then190
  %66 = load %struct.complist** %next31, align 4, !tbaa !2
  br label %cond.end196

cond.end196:                                      ; preds = %if.then190, %cond.false194
  %cond197 = phi %struct.complist* [ %66, %cond.false194 ], [ %q, %if.then190 ]
  call fastcc void @scanner(%struct.complist* %cond197)
  br label %cont200

cont200:                                          ; preds = %cond.end196, %lor.lhs.false187
  store i32 %30, i32* @pathpos, align 4, !tbaa !3
  %67 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx201 = getelementptr inbounds i8* %67, i32 %30
  store i8 0, i8* %arrayidx201, align 1, !tbaa !0
  br label %if.end406

if.else204:                                       ; preds = %if.end30
  %add.ptr.sum = add i32 %8, %7
  %arrayidx205 = getelementptr inbounds i8* %6, i32 %add.ptr.sum
  %68 = load i8* %arrayidx205, align 1, !tbaa !0
  %tobool206 = icmp eq i8 %68, 0
  br i1 %tobool206, label %if.end209, label %if.then207

if.then207:                                       ; preds = %if.else204
  %call208 = call i8* @dupstrpfx(i8* %add.ptr, i32 %8) nounwind
  br label %if.end209

if.end209:                                        ; preds = %if.else204, %if.then207
  %str.0 = phi i8* [ %call208, %if.then207 ], [ %add.ptr, %if.else204 ]
  call fastcc void @insert(i8* %str.0, i32 0)
  br label %if.end406

if.else211:                                       ; preds = %if.end8
  %69 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %70 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx212 = getelementptr inbounds i8* %70, i32 %69
  %71 = load i8* %arrayidx212, align 1, !tbaa !0
  %tobool214 = icmp eq i8 %71, 0
  br i1 %tobool214, label %cond.end219, label %cond.true215

cond.true215:                                     ; preds = %if.else211
  %call217 = call i8* @unmeta(i8* %arrayidx212) nounwind
  br label %cond.end219

cond.end219:                                      ; preds = %if.else211, %cond.true215
  %cond220 = phi i8* [ %call217, %cond.true215 ], [ getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), %if.else211 ]
  %next221 = getelementptr inbounds %struct.complist* %q, i32 0, i32 0
  %72 = load %struct.complist** %next221, align 4, !tbaa !2
  %tobool222 = icmp ne %struct.complist* %72, null
  %call227 = call %struct.__dirstream* @opendir(i8* %cond220) nounwind
  %cmp228 = icmp eq %struct.__dirstream* %call227, null
  br i1 %cmp228, label %if.end420, label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end219
  %call232530 = call i8* @zreaddir(%struct.__dirstream* %call227, i32 1) nounwind
  %tobool233531 = icmp ne i8* %call232530, null
  %73 = load i32* @errflag, align 4, !tbaa !3
  %lnot235532 = icmp eq i32 %73, 0
  %or.cond519533 = and i1 %tobool233531, %lnot235532
  br i1 %or.cond519533, label %while.body.lr.ph, label %while.end372.thread

while.end372.thread:                              ; preds = %while.cond.preheader
  %call373545 = call i32 @closedir(%struct.__dirstream* %call227) nounwind
  br label %if.end406

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %follow = getelementptr inbounds %struct.complist* %q, i32 0, i32 3
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call232538 = phi i8* [ %call232530, %while.body.lr.ph ], [ %call232, %while.cond.backedge ]
  %subdirlen.0536 = phi i32 [ 0, %while.body.lr.ph ], [ %subdirlen.0.be, %while.cond.backedge ]
  %subdirs.0534 = phi i8* [ null, %while.body.lr.ph ], [ %subdirs.0.be, %while.cond.backedge ]
  %74 = load i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8), align 4, !tbaa !2
  %tobool239 = icmp ne i8* %74, null
  %or.cond = or i1 %tobool222, %tobool239
  br i1 %or.cond, label %if.end251, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %while.body
  %75 = load i8** @glob_pre, align 4, !tbaa !2
  %tobool241 = icmp eq i8* %75, null
  br i1 %tobool241, label %lor.lhs.false245, label %land.lhs.true242

land.lhs.true242:                                 ; preds = %land.lhs.true240
  %call243 = call i32 @strpfx(i8* %75, i8* %call232538) nounwind
  %tobool244 = icmp eq i32 %call243, 0
  br i1 %tobool244, label %while.cond.backedge, label %lor.lhs.false245

lor.lhs.false245:                                 ; preds = %land.lhs.true242, %land.lhs.true240
  %76 = load i8** @glob_suf, align 4, !tbaa !2
  %tobool246 = icmp eq i8* %76, null
  br i1 %tobool246, label %if.end251, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %lor.lhs.false245
  %call248 = call i32 @strsfx(i8* %76, i8* %call232538) nounwind
  %tobool249 = icmp eq i32 %call248, 0
  br i1 %tobool249, label %while.cond.backedge, label %if.end251

if.end251:                                        ; preds = %land.lhs.true247, %lor.lhs.false245, %while.body
  store i32 %1, i32* @errsfound, align 4, !tbaa !3
  %call252 = call i32 @pattry(%struct.patprog* %4, i8* %call232538) nounwind
  %tobool253 = icmp eq i32 %call252, 0
  br i1 %tobool253, label %while.cond.backedge, label %if.then254

if.then254:                                       ; preds = %if.end251
  %77 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %cmp255 = icmp eq i32 %0, %77
  br i1 %cmp255, label %land.lhs.true257, label %if.end285

land.lhs.true257:                                 ; preds = %if.then254
  %call258 = call i32 @strlen(i8* %call232538) nounwind readonly
  %78 = load i32* @pathpos, align 4, !tbaa !3
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %cont260, label %ioc_bb259

ioc_bb259:                                        ; preds = %land.lhs.true257
  %80 = sext i32 %78 to i64
  call void @__ioc_report_conversion(i32 634, i32 67, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %80, i8 1) nounwind
  br label %cont260

cont260:                                          ; preds = %ioc_bb259, %land.lhs.true257
  %81 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call258, i32 %78)
  %82 = extractvalue { i32, i1 } %81, 0
  %83 = extractvalue { i32, i1 } %81, 1
  br i1 %83, label %ioc_bb261, label %cont262

ioc_bb261:                                        ; preds = %cont260
  %84 = zext i32 %78 to i64
  %85 = zext i32 %call258 to i64
  call void @__ioc_report_add_overflow(i32 634, i32 65, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %85, i64 %84, i8 5) nounwind
  br label %cont262

cont262:                                          ; preds = %cont260, %ioc_bb261
  %86 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %cont265, label %ioc_bb264

ioc_bb264:                                        ; preds = %cont262
  %88 = sext i32 %86 to i64
  call void @__ioc_report_conversion(i32 634, i32 77, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %88, i8 1) nounwind
  br label %cont265

cont265:                                          ; preds = %ioc_bb264, %cont262
  %89 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %82, i32 %86)
  %90 = extractvalue { i32, i1 } %89, 0
  %91 = extractvalue { i32, i1 } %89, 1
  br i1 %91, label %ioc_bb266, label %cont269

ioc_bb266:                                        ; preds = %cont265
  %92 = zext i32 %86 to i64
  %93 = zext i32 %82 to i64
  call void @__ioc_report_sub_overflow(i32 634, i32 75, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %93, i64 %92, i8 5) nounwind
  br label %cont269

cont269:                                          ; preds = %ioc_bb266, %cont265
  %cmp270 = icmp ugt i32 %90, 4095
  br i1 %cmp270, label %if.then272, label %if.end285

if.then272:                                       ; preds = %cont269
  %94 = load i8** @pathbuf, align 4, !tbaa !2
  %95 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %add.ptr274 = getelementptr inbounds i8* %94, i32 %95
  %call275 = call i32 @lchdir(i8* %add.ptr274, %struct.dirsav* %ds, i32 0) nounwind
  switch i32 %call275, label %if.then283 [
    i32 -1, label %while.end372
    i32 0, label %if.end284
  ]

if.then283:                                       ; preds = %if.then272
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([35 x i8]* @.str19, i32 0, i32 0)) nounwind
  br label %while.end372

if.end284:                                        ; preds = %if.then272
  %96 = load i32* @pathpos, align 4, !tbaa !3
  store i32 %96, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %cont269, %if.then254
  br i1 %tobool222, label %if.then287, label %if.else369

if.then287:                                       ; preds = %if.end285
  %97 = load i32* @errsfound, align 4, !tbaa !3
  %cmp289 = icmp sgt i32 %97, %1
  br i1 %cmp289, label %if.then291, label %if.end308

if.then291:                                       ; preds = %if.then287
  %98 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %97, i32 1)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb292, label %while.cond294.preheader

ioc_bb292:                                        ; preds = %if.then291
  %101 = sext i32 %97 to i64
  call void @__ioc_report_sub_overflow(i32 664, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %101, i64 1, i8 13) nounwind
  br label %while.cond294.preheader

while.cond294.preheader:                          ; preds = %if.then291, %ioc_bb292
  store i32 %99, i32* @forceerrs, align 4
  %cmp295525 = icmp slt i32 %99, %1
  br i1 %cmp295525, label %while.end, label %while.body297

while.body297:                                    ; preds = %while.cond294.preheader, %while.cond294.backedge
  store i32 %1, i32* @errsfound, align 4, !tbaa !3
  %call298 = call i32 @pattry(%struct.patprog* %4, i8* %call232538) nounwind
  %tobool299 = icmp eq i32 %call298, 0
  br i1 %tobool299, label %while.endsplit, label %if.end301

if.end301:                                        ; preds = %while.body297
  %102 = load i32* @errsfound, align 4, !tbaa !3
  %103 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %102, i32 1)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb302, label %while.cond294.backedge

while.cond294.backedge:                           ; preds = %if.end301, %ioc_bb302
  store i32 %104, i32* @forceerrs, align 4
  %cmp295 = icmp slt i32 %104, %1
  br i1 %cmp295, label %while.end, label %while.body297

ioc_bb302:                                        ; preds = %if.end301
  %106 = sext i32 %102 to i64
  call void @__ioc_report_sub_overflow(i32 669, i32 37, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %106, i64 1, i8 13) nounwind
  br label %while.cond294.backedge

while.endsplit:                                   ; preds = %while.body297
  %.pre = load i32* @forceerrs, align 4, !tbaa !3
  br label %while.end

while.end:                                        ; preds = %while.cond294.backedge, %while.endsplit, %while.cond294.preheader
  %107 = phi i32 [ %.pre, %while.endsplit ], [ %99, %while.cond294.preheader ], [ %104, %while.cond294.backedge ]
  %108 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %107, i32 1)
  %109 = extractvalue { i32, i1 } %108, 0
  %110 = extractvalue { i32, i1 } %108, 1
  br i1 %110, label %ioc_bb304, label %cont305

ioc_bb304:                                        ; preds = %while.end
  %111 = sext i32 %107 to i64
  call void @__ioc_report_add_overflow(i32 671, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %111, i64 1, i8 13) nounwind
  br label %cont305

cont305:                                          ; preds = %while.end, %ioc_bb304
  store i32 %109, i32* @errsfound, align 4, !tbaa !3
  store i32 -1, i32* @forceerrs, align 4, !tbaa !3
  br label %if.end308

if.end308:                                        ; preds = %cont305, %if.then287
  br i1 %tobool2, label %if.then310, label %if.end343

if.then310:                                       ; preds = %if.end308
  %112 = load i32* %follow, align 4, !tbaa !3
  %lnot312 = icmp eq i32 %112, 0
  %lnot.ext313 = zext i1 %lnot312 to i32
  %call314 = call fastcc i32 @statfullpath(i8* %call232538, %struct.stat* %buf, i32 %lnot.ext313)
  %tobool315 = icmp eq i32 %call314, 0
  br i1 %tobool315, label %cont338, label %if.then316

if.then316:                                       ; preds = %if.then310
  %call317 = call i32* @__errno_location() nounwind readnone
  %113 = load i32* %call317, align 4, !tbaa !3
  switch i32 %113, label %land.lhs.true324 [
    i32 2, label %while.cond.backedge
    i32 4, label %while.cond.backedge
  ]

land.lhs.true324:                                 ; preds = %if.then316
  %cmp326 = icmp eq i32 %113, 20
  %114 = load i32* @errflag, align 4, !tbaa !3
  %tobool329 = icmp ne i32 %114, 0
  %or.cond421 = or i1 %cmp326, %tobool329
  br i1 %or.cond421, label %while.cond.backedge, label %if.then330

while.cond.backedge:                              ; preds = %land.lhs.true324, %if.then330, %cont338, %if.else369, %if.end251, %land.lhs.true247, %land.lhs.true242, %if.then316, %if.then316, %cont365, %ioc_bb367
  %subdirs.0.be = phi i8* [ %subdirs.0534, %land.lhs.true324 ], [ %subdirs.0534, %if.then330 ], [ %subdirs.0534, %if.then316 ], [ %subdirs.0534, %cont338 ], [ %subdirs.0534, %if.else369 ], [ %subdirs.0534, %if.end251 ], [ %subdirs.0534, %land.lhs.true247 ], [ %subdirs.0534, %land.lhs.true242 ], [ %subdirs.0534, %if.then316 ], [ %call361, %cont365 ], [ %call361, %ioc_bb367 ]
  %subdirlen.0.be = phi i32 [ %subdirlen.0536, %land.lhs.true324 ], [ %subdirlen.0536, %if.then330 ], [ %subdirlen.0536, %if.then316 ], [ %subdirlen.0536, %cont338 ], [ %subdirlen.0536, %if.else369 ], [ %subdirlen.0536, %if.end251 ], [ %subdirlen.0536, %land.lhs.true247 ], [ %subdirlen.0536, %land.lhs.true242 ], [ %subdirlen.0536, %if.then316 ], [ %132, %cont365 ], [ %132, %ioc_bb367 ]
  %call232 = call i8* @zreaddir(%struct.__dirstream* %call227, i32 1) nounwind
  %tobool233 = icmp ne i8* %call232, null
  %115 = load i32* @errflag, align 4, !tbaa !3
  %lnot235 = icmp eq i32 %115, 0
  %or.cond519 = and i1 %tobool233, %lnot235
  br i1 %or.cond519, label %while.body, label %while.end372

if.then330:                                       ; preds = %land.lhs.true324
  call void (i8*, ...)* @zwarn(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i32 %113, i8* %call232538) nounwind
  br label %while.cond.backedge

cont338:                                          ; preds = %if.then310
  %116 = load i32* %st_mode, align 4, !tbaa !3
  %and336 = and i32 %116, 61440
  %cmp339 = icmp eq i32 %and336, 16384
  br i1 %cmp339, label %if.end343, label %while.cond.backedge

if.end343:                                        ; preds = %cont338, %if.end308
  %call344 = call i32 @strlen(i8* %call232538) nounwind readonly
  %117 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call344, i32 1)
  %118 = extractvalue { i32, i1 } %117, 0
  %119 = extractvalue { i32, i1 } %117, 1
  br i1 %119, label %ioc_bb347, label %cont348

ioc_bb347:                                        ; preds = %if.end343
  %120 = zext i32 %call344 to i64
  call void @__ioc_report_add_overflow(i32 686, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %120, i64 1, i8 5) nounwind
  br label %cont348

cont348:                                          ; preds = %if.end343, %ioc_bb347
  %121 = icmp sgt i32 %118, -1
  br i1 %121, label %cont350, label %ioc_bb349

ioc_bb349:                                        ; preds = %cont348
  %122 = zext i32 %118 to i64
  call void @__ioc_report_conversion(i32 686, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %122, i8 0) nounwind
  br label %cont350

cont350:                                          ; preds = %ioc_bb349, %cont348
  %123 = sext i32 %subdirlen.0536 to i64
  %124 = icmp sgt i32 %subdirlen.0536, -1
  br i1 %124, label %cont353, label %ioc_bb352

ioc_bb352:                                        ; preds = %cont350
  call void @__ioc_report_conversion(i32 687, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %123, i8 1) nounwind
  br label %cont353

cont353:                                          ; preds = %ioc_bb352, %cont350
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %subdirlen.0536, i32 %118)
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  %128 = sext i32 %118 to i64
  br i1 %127, label %ioc_bb354, label %cont355

ioc_bb354:                                        ; preds = %cont353
  call void @__ioc_report_add_overflow(i32 687, i32 60, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %123, i64 %128, i8 13) nounwind
  br label %cont355

cont355:                                          ; preds = %cont353, %ioc_bb354
  %129 = sext i32 %126 to i64
  %130 = icmp sgt i32 %126, -1
  br i1 %130, label %cont358, label %ioc_bb357

ioc_bb357:                                        ; preds = %cont355
  call void @__ioc_report_conversion(i32 687, i32 49, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %129, i8 1) nounwind
  br label %cont358

cont358:                                          ; preds = %ioc_bb357, %cont355
  %131 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %126, i32 4)
  %132 = extractvalue { i32, i1 } %131, 0
  %133 = extractvalue { i32, i1 } %131, 1
  br i1 %133, label %ioc_bb359, label %cont360

ioc_bb359:                                        ; preds = %cont358
  %134 = zext i32 %126 to i64
  call void @__ioc_report_add_overflow(i32 687, i32 65, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %134, i64 4, i8 5) nounwind
  br label %cont360

cont360:                                          ; preds = %cont358, %ioc_bb359
  %call361 = call i8* @hrealloc(i8* %subdirs.0534, i32 %subdirlen.0536, i32 %132) nounwind
  %add.ptr362 = getelementptr inbounds i8* %call361, i32 %subdirlen.0536
  %call363 = call i8* @strcpy(i8* %add.ptr362, i8* %call232538) nounwind
  br i1 %127, label %ioc_bb364, label %cont365

ioc_bb364:                                        ; preds = %cont360
  call void @__ioc_report_add_overflow(i32 689, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %123, i64 %128, i8 13) nounwind
  br label %cont365

cont365:                                          ; preds = %cont360, %ioc_bb364
  %add.ptr366 = getelementptr inbounds i8* %call361, i32 %126
  %135 = bitcast i8* %add.ptr366 to i32*
  %136 = load i32* @errsfound, align 4
  store i32 %136, i32* %135, align 1
  br i1 %133, label %ioc_bb367, label %while.cond.backedge

ioc_bb367:                                        ; preds = %cont365
  call void @__ioc_report_add_overflow(i32 692, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %129, i64 4, i8 13) nounwind
  br label %while.cond.backedge

if.else369:                                       ; preds = %if.end285
  call fastcc void @insert(i8* %call232538, i32 1)
  br label %while.cond.backedge

while.end372:                                     ; preds = %if.then272, %while.cond.backedge, %if.then283
  %subdirlen.0529 = phi i32 [ %subdirlen.0536, %if.then283 ], [ %subdirlen.0536, %if.then272 ], [ %subdirlen.0.be, %while.cond.backedge ]
  %subdirs.0527 = phi i8* [ %subdirs.0534, %if.then283 ], [ %subdirs.0534, %if.then272 ], [ %subdirs.0.be, %while.cond.backedge ]
  %call373 = call i32 @closedir(%struct.__dirstream* %call227) nounwind
  %tobool374 = icmp eq i8* %subdirs.0527, null
  br i1 %tobool374, label %if.end406, label %if.then375

if.then375:                                       ; preds = %while.end372
  %137 = load i32* @pathpos, align 4, !tbaa !3
  %add.ptr377 = getelementptr inbounds i8* %subdirs.0527, i32 %subdirlen.0529
  %cmp378523 = icmp sgt i32 %subdirlen.0529, 0
  br i1 %cmp378523, label %for.body, label %for.end

for.body:                                         ; preds = %if.then375, %cond.end394
  %fn.0524 = phi i8* [ %add.ptr388, %cond.end394 ], [ %subdirs.0527, %if.then375 ]
  %call381 = call i32 @strlen(i8* %fn.0524) nounwind readonly
  %138 = icmp sgt i32 %call381, -1
  br i1 %138, label %cont384, label %ioc_bb383

ioc_bb383:                                        ; preds = %for.body
  %139 = zext i32 %call381 to i64
  call void @__ioc_report_conversion(i32 703, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %139, i8 0) nounwind
  br label %cont384

cont384:                                          ; preds = %ioc_bb383, %for.body
  call fastcc void @addpath(i8* %fn.0524, i32 %call381)
  %140 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call381, i32 1)
  %141 = extractvalue { i32, i1 } %140, 0
  %142 = extractvalue { i32, i1 } %140, 1
  br i1 %142, label %ioc_bb385, label %cont386

ioc_bb385:                                        ; preds = %cont384
  %143 = sext i32 %call381 to i64
  call void @__ioc_report_add_overflow(i32 705, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %143, i64 1, i8 13) nounwind
  br label %cont386

cont386:                                          ; preds = %cont384, %ioc_bb385
  %add.ptr387 = getelementptr inbounds i8* %fn.0524, i32 %141
  %144 = bitcast i8* %add.ptr387 to i32*
  %145 = load i32* %144, align 1
  store i32 %145, i32* @errsfound, align 4
  %add.ptr387.sum = add i32 %141, 4
  %add.ptr388 = getelementptr inbounds i8* %fn.0524, i32 %add.ptr387.sum
  %146 = load i32* %closure1, align 4, !tbaa !3
  %tobool390 = icmp eq i32 %146, 0
  br i1 %tobool390, label %cond.false392, label %cond.end394

cond.false392:                                    ; preds = %cont386
  %147 = load %struct.complist** %next221, align 4, !tbaa !2
  br label %cond.end394

cond.end394:                                      ; preds = %cont386, %cond.false392
  %cond395 = phi %struct.complist* [ %147, %cond.false392 ], [ %q, %cont386 ]
  call fastcc void @scanner(%struct.complist* %cond395)
  store i32 %137, i32* @pathpos, align 4, !tbaa !3
  %148 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx398 = getelementptr inbounds i8* %148, i32 %137
  store i8 0, i8* %arrayidx398, align 1, !tbaa !0
  %cmp378 = icmp ult i8* %add.ptr388, %add.ptr377
  br i1 %cmp378, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end394, %if.then375
  %149 = icmp sgt i32 %subdirlen.0529, -1
  br i1 %149, label %cont403, label %ioc_bb400

ioc_bb400:                                        ; preds = %for.end
  %150 = sext i32 %subdirlen.0529 to i64
  call void @__ioc_report_conversion(i32 712, i32 24, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %150, i8 1) nounwind
  br label %cont403

cont403:                                          ; preds = %for.end, %ioc_bb400
  %call404 = call i8* @hrealloc(i8* %subdirs.0527, i32 %subdirlen.0529, i32 0) nounwind
  br label %if.end406

if.end406:                                        ; preds = %while.end372, %while.end372.thread, %lor.rhs, %cond.end, %if.then33, %cont403, %if.end209, %cont200
  %151 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %cmp407 = icmp slt i32 %0, %151
  br i1 %cmp407, label %if.then409, label %if.end420

if.then409:                                       ; preds = %if.end406
  %call410 = call i32 @restoredir(%struct.dirsav* %ds) nounwind
  %tobool411 = icmp eq i32 %call410, 0
  br i1 %tobool411, label %if.end413, label %if.then412

if.then412:                                       ; preds = %if.then409
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([35 x i8]* @.str19, i32 0, i32 0)) nounwind
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %if.then412
  %dirname = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 2
  %152 = load i8** %dirname, align 4, !tbaa !2
  call void @zsfree(i8* %152) nounwind
  %dirfd = getelementptr inbounds %struct.dirsav* %ds, i32 0, i32 0
  %153 = load i32* %dirfd, align 4, !tbaa !3
  %cmp414 = icmp sgt i32 %153, -1
  br i1 %cmp414, label %if.then416, label %if.end419

if.then416:                                       ; preds = %if.end413
  %call418 = call i32 @close(i32 %153) nounwind
  br label %if.end419

if.end419:                                        ; preds = %if.then416, %if.end413
  store i32 %0, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  br label %if.end420

if.end420:                                        ; preds = %if.end20, %entry, %cond.end219, %if.then17, %if.then28, %if.end419, %if.end406
  ret void
}

declare void @free(i8* nocapture) nounwind

declare i8* @zhalloc(i32)

declare %struct.eprog* @parse_string(i8*, i32)

declare %struct.param* @assignsparam(i8*, i8*, i32)

declare i8* @ztrdup(i8*)

declare void @execode(%struct.eprog*, i32, i32, i8*)

declare i8* @getsparam(i8*)

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)* nocapture)

define internal i32 @gmatchcmp(%struct.gmatch* nocapture %a, %struct.gmatch* nocapture %b) nounwind {
entry:
  %0 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 22), align 4, !tbaa !3
  %tobool243 = icmp eq i32 %0, 0
  br i1 %tobool243, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 0
  %name5 = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 0
  %sortstrs = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 1
  %sortstrs47 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 1
  %size = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 2
  %size56 = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 2
  %atime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 3
  %atime60 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 3
  %ansec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 12
  %ansec66 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 12
  %mtime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 4
  %mtime72 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 4
  %mnsec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 14
  %mnsec78 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 14
  %ctime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 5
  %ctime84 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 5
  %cnsec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 16
  %cnsec90 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 16
  %links = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 6
  %links96 = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 6
  %_size = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 7
  %_size101 = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 7
  %_atime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 8
  %_atime105 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 8
  %_ansec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 13
  %_ansec111 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 13
  %_mtime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 9
  %_mtime117 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 9
  %_mnsec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 15
  %_mnsec123 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 15
  %_ctime = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 10
  %_ctime129 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 10
  %_cnsec = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 17
  %_cnsec135 = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 17
  %_links = getelementptr inbounds %struct.gmatch* %b, i32 0, i32 11
  %_links141 = getelementptr inbounds %struct.gmatch* %a, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cont173
  %bsortstrp.0248 = phi i8** [ null, %for.body.lr.ph ], [ %bsortstrp.2255, %cont173 ]
  %asortstrp.0247 = phi i8** [ null, %for.body.lr.ph ], [ %asortstrp.2254, %cont173 ]
  %s.0246 = phi %struct.globsort* [ getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 23, i32 0), %for.body.lr.ph ], [ %incdec.ptr174, %cont173 ]
  %i.0244 = phi i32 [ %0, %for.body.lr.ph ], [ %135, %cont173 ]
  %tp = getelementptr inbounds %struct.globsort* %s.0246, i32 0, i32 0
  %1 = load i32* %tp, align 4, !tbaa !3
  %and = and i32 %1, -8193
  switch i32 %and, label %for.inc171 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb44
    i32 8, label %sw.bb55
    i32 16, label %sw.bb59
    i32 32, label %sw.bb71
    i32 64, label %sw.bb83
    i32 128, label %sw.bb95
    i32 256, label %sw.bb100
    i32 512, label %sw.bb104
    i32 1024, label %sw.bb116
    i32 2048, label %sw.bb128
    i32 4096, label %sw.bb140
  ]

sw.bb:                                            ; preds = %for.body
  %2 = load i8** %name, align 4, !tbaa !2
  %3 = load i8** %name5, align 4, !tbaa !2
  %4 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 19), align 4, !tbaa !3
  %tobool6 = icmp ne i32 %4, 0
  %cond = select i1 %tobool6, i32 2, i32 0
  %call = tail call i32 @zstrcmp(i8* %2, i8* %3, i32 %cond) nounwind
  %conv = sext i32 %call to i64
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  %5 = load i8** %name5, align 4, !tbaa !2
  %6 = load i8** %name, align 4, !tbaa !2
  %7 = load i8* %5, align 1, !tbaa !0
  %tobool11239 = icmp eq i8 %7, 0
  br i1 %tobool11239, label %if.end25, label %land.rhs

land.rhs:                                         ; preds = %sw.bb7, %while.body
  %.pr = phi i8 [ %9, %while.body ], [ %7, %sw.bb7 ]
  %bptr.0241 = phi i8* [ %incdec.ptr15, %while.body ], [ %6, %sw.bb7 ]
  %aptr.0240 = phi i8* [ %incdec.ptr, %while.body ], [ %5, %sw.bb7 ]
  %8 = load i8* %bptr.0241, align 1, !tbaa !0
  %cmp = icmp eq i8 %.pr, %8
  br i1 %cmp, label %while.body, label %for.cond17

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %aptr.0240, i32 1
  %incdec.ptr15 = getelementptr inbounds i8* %bptr.0241, i32 1
  %9 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool11 = icmp eq i8 %9, 0
  br i1 %tobool11, label %if.end25, label %land.rhs

for.cond17:                                       ; preds = %land.rhs, %for.body19
  %aptr.1 = phi i8* [ %arrayidx, %for.body19 ], [ %aptr.0240, %land.rhs ]
  %arrayidx = getelementptr inbounds i8* %aptr.1, i32 1
  %10 = load i8* %arrayidx, align 1, !tbaa !0
  %tobool18 = icmp eq i8 %10, 0
  br i1 %tobool18, label %if.end25, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %11 = load i8* %aptr.1, align 1, !tbaa !0
  %cmp21 = icmp eq i8 %11, 47
  br i1 %cmp21, label %if.end25, label %for.cond17

if.end25:                                         ; preds = %for.body19, %for.cond17, %sw.bb7, %while.body
  %bptr.0238 = phi i8* [ %6, %sw.bb7 ], [ %incdec.ptr15, %while.body ], [ %bptr.0241, %for.cond17 ], [ %bptr.0241, %for.body19 ]
  %slasha.0 = phi i32 [ 0, %sw.bb7 ], [ 0, %while.body ], [ 0, %for.cond17 ], [ 1, %for.body19 ]
  %12 = load i8* %bptr.0238, align 1, !tbaa !0
  %tobool26 = icmp eq i8 %12, 0
  br i1 %tobool26, label %if.end40, label %for.cond28

for.cond28:                                       ; preds = %if.end25, %for.body31
  %bptr.1 = phi i8* [ %arrayidx29, %for.body31 ], [ %bptr.0238, %if.end25 ]
  %arrayidx29 = getelementptr inbounds i8* %bptr.1, i32 1
  %13 = load i8* %arrayidx29, align 1, !tbaa !0
  %tobool30 = icmp eq i8 %13, 0
  br i1 %tobool30, label %if.end40, label %for.body31

for.body31:                                       ; preds = %for.cond28
  %14 = load i8* %bptr.1, align 1, !tbaa !0
  %cmp33 = icmp eq i8 %14, 47
  br i1 %cmp33, label %if.end40, label %for.cond28

if.end40:                                         ; preds = %for.body31, %for.cond28, %if.end25
  %slashb.0 = phi i32 [ 0, %if.end25 ], [ 1, %for.body31 ], [ 0, %for.cond28 ]
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %slasha.0, i32 %slashb.0)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb41, label %cont42

ioc_bb41:                                         ; preds = %if.end40
  %18 = zext i32 %slashb.0 to i64
  %19 = zext i32 %slasha.0 to i64
  tail call void @__ioc_report_sub_overflow(i32 1027, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind
  br label %cont42

cont42:                                           ; preds = %if.end40, %ioc_bb41
  %conv43 = sext i32 %16 to i64
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.body
  %tobool45 = icmp eq i8** %asortstrp.0247, null
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %sw.bb44
  %20 = load i8*** %sortstrs, align 4, !tbaa !2
  %21 = load i8*** %sortstrs47, align 4, !tbaa !2
  br label %if.end50

if.else:                                          ; preds = %sw.bb44
  %incdec.ptr48 = getelementptr inbounds i8** %asortstrp.0247, i32 1
  %incdec.ptr49 = getelementptr inbounds i8** %bsortstrp.0248, i32 1
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  %asortstrp.1 = phi i8** [ %incdec.ptr48, %if.else ], [ %20, %if.then46 ]
  %bsortstrp.1 = phi i8** [ %incdec.ptr49, %if.else ], [ %21, %if.then46 ]
  %22 = load i8** %bsortstrp.1, align 4, !tbaa !2
  %23 = load i8** %asortstrp.1, align 4, !tbaa !2
  %24 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 19), align 4, !tbaa !3
  %tobool51 = icmp ne i32 %24, 0
  %cond52 = select i1 %tobool51, i32 2, i32 0
  %call53 = tail call i32 @zstrcmp(i8* %22, i8* %23, i32 %cond52) nounwind
  %conv54 = sext i32 %call53 to i64
  br label %sw.epilog

sw.bb55:                                          ; preds = %for.body
  %25 = load i64* %size, align 4, !tbaa !5
  %26 = load i64* %size56, align 4, !tbaa !5
  %27 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %25, i64 %26)
  %28 = extractvalue { i64, i1 } %27, 0
  %29 = extractvalue { i64, i1 } %27, 1
  br i1 %29, label %ioc_bb57, label %sw.epilog

ioc_bb57:                                         ; preds = %sw.bb55
  tail call void @__ioc_report_sub_overflow(i32 1046, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %25, i64 %26, i8 14) nounwind
  br label %sw.epilog

sw.bb59:                                          ; preds = %for.body
  %30 = load i32* %atime, align 4, !tbaa !7
  %31 = load i32* %atime60, align 4, !tbaa !7
  %32 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %30, i32 %31)
  %33 = extractvalue { i32, i1 } %32, 0
  %34 = extractvalue { i32, i1 } %32, 1
  br i1 %34, label %ioc_bb61, label %cont62

ioc_bb61:                                         ; preds = %sw.bb59
  %35 = sext i32 %31 to i64
  %36 = sext i32 %30 to i64
  tail call void @__ioc_report_sub_overflow(i32 1051, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %36, i64 %35, i8 13) nounwind
  br label %cont62

cont62:                                           ; preds = %sw.bb59, %ioc_bb61
  %conv63 = sext i32 %33 to i64
  %tobool64 = icmp eq i32 %33, 0
  br i1 %tobool64, label %if.then65, label %sw.epilog

if.then65:                                        ; preds = %cont62
  %37 = load i32* %ansec, align 4, !tbaa !7
  %38 = load i32* %ansec66, align 4, !tbaa !7
  %39 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %37, i32 %38)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb67, label %cont68

ioc_bb67:                                         ; preds = %if.then65
  %42 = sext i32 %38 to i64
  %43 = sext i32 %37 to i64
  tail call void @__ioc_report_sub_overflow(i32 1054, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %43, i64 %42, i8 13) nounwind
  br label %cont68

cont68:                                           ; preds = %if.then65, %ioc_bb67
  %conv69 = sext i32 %40 to i64
  br label %sw.epilog

sw.bb71:                                          ; preds = %for.body
  %44 = load i32* %mtime, align 4, !tbaa !7
  %45 = load i32* %mtime72, align 4, !tbaa !7
  %46 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %44, i32 %45)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb73, label %cont74

ioc_bb73:                                         ; preds = %sw.bb71
  %49 = sext i32 %45 to i64
  %50 = sext i32 %44 to i64
  tail call void @__ioc_report_sub_overflow(i32 1060, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %50, i64 %49, i8 13) nounwind
  br label %cont74

cont74:                                           ; preds = %sw.bb71, %ioc_bb73
  %conv75 = sext i32 %47 to i64
  %tobool76 = icmp eq i32 %47, 0
  br i1 %tobool76, label %if.then77, label %sw.epilog

if.then77:                                        ; preds = %cont74
  %51 = load i32* %mnsec, align 4, !tbaa !7
  %52 = load i32* %mnsec78, align 4, !tbaa !7
  %53 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %51, i32 %52)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb79, label %cont80

ioc_bb79:                                         ; preds = %if.then77
  %56 = sext i32 %52 to i64
  %57 = sext i32 %51 to i64
  tail call void @__ioc_report_sub_overflow(i32 1063, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %57, i64 %56, i8 13) nounwind
  br label %cont80

cont80:                                           ; preds = %if.then77, %ioc_bb79
  %conv81 = sext i32 %54 to i64
  br label %sw.epilog

sw.bb83:                                          ; preds = %for.body
  %58 = load i32* %ctime, align 4, !tbaa !7
  %59 = load i32* %ctime84, align 4, !tbaa !7
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %58, i32 %59)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb85, label %cont86

ioc_bb85:                                         ; preds = %sw.bb83
  %63 = sext i32 %59 to i64
  %64 = sext i32 %58 to i64
  tail call void @__ioc_report_sub_overflow(i32 1069, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %64, i64 %63, i8 13) nounwind
  br label %cont86

cont86:                                           ; preds = %sw.bb83, %ioc_bb85
  %conv87 = sext i32 %61 to i64
  %tobool88 = icmp eq i32 %61, 0
  br i1 %tobool88, label %if.then89, label %sw.epilog

if.then89:                                        ; preds = %cont86
  %65 = load i32* %cnsec, align 4, !tbaa !7
  %66 = load i32* %cnsec90, align 4, !tbaa !7
  %67 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %65, i32 %66)
  %68 = extractvalue { i32, i1 } %67, 0
  %69 = extractvalue { i32, i1 } %67, 1
  br i1 %69, label %ioc_bb91, label %cont92

ioc_bb91:                                         ; preds = %if.then89
  %70 = sext i32 %66 to i64
  %71 = sext i32 %65 to i64
  tail call void @__ioc_report_sub_overflow(i32 1072, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %71, i64 %70, i8 13) nounwind
  br label %cont92

cont92:                                           ; preds = %if.then89, %ioc_bb91
  %conv93 = sext i32 %68 to i64
  br label %sw.epilog

sw.bb95:                                          ; preds = %for.body
  %72 = load i32* %links, align 4, !tbaa !7
  %73 = load i32* %links96, align 4, !tbaa !7
  %74 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %72, i32 %73)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb97, label %cont98

ioc_bb97:                                         ; preds = %sw.bb95
  %77 = sext i32 %73 to i64
  %78 = sext i32 %72 to i64
  tail call void @__ioc_report_sub_overflow(i32 1078, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %78, i64 %77, i8 13) nounwind
  br label %cont98

cont98:                                           ; preds = %sw.bb95, %ioc_bb97
  %conv99 = sext i32 %75 to i64
  br label %sw.epilog

sw.bb100:                                         ; preds = %for.body
  %79 = load i64* %_size, align 4, !tbaa !5
  %80 = load i64* %_size101, align 4, !tbaa !5
  %81 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %79, i64 %80)
  %82 = extractvalue { i64, i1 } %81, 0
  %83 = extractvalue { i64, i1 } %81, 1
  br i1 %83, label %ioc_bb102, label %sw.epilog

ioc_bb102:                                        ; preds = %sw.bb100
  tail call void @__ioc_report_sub_overflow(i32 1083, i32 24, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %79, i64 %80, i8 14) nounwind
  br label %sw.epilog

sw.bb104:                                         ; preds = %for.body
  %84 = load i32* %_atime, align 4, !tbaa !7
  %85 = load i32* %_atime105, align 4, !tbaa !7
  %86 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %84, i32 %85)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  br i1 %88, label %ioc_bb106, label %cont107

ioc_bb106:                                        ; preds = %sw.bb104
  %89 = sext i32 %85 to i64
  %90 = sext i32 %84 to i64
  tail call void @__ioc_report_sub_overflow(i32 1088, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %90, i64 %89, i8 13) nounwind
  br label %cont107

cont107:                                          ; preds = %sw.bb104, %ioc_bb106
  %conv108 = sext i32 %87 to i64
  %tobool109 = icmp eq i32 %87, 0
  br i1 %tobool109, label %if.then110, label %sw.epilog

if.then110:                                       ; preds = %cont107
  %91 = load i32* %_ansec, align 4, !tbaa !7
  %92 = load i32* %_ansec111, align 4, !tbaa !7
  %93 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %91, i32 %92)
  %94 = extractvalue { i32, i1 } %93, 0
  %95 = extractvalue { i32, i1 } %93, 1
  br i1 %95, label %ioc_bb112, label %cont113

ioc_bb112:                                        ; preds = %if.then110
  %96 = sext i32 %92 to i64
  %97 = sext i32 %91 to i64
  tail call void @__ioc_report_sub_overflow(i32 1091, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %97, i64 %96, i8 13) nounwind
  br label %cont113

cont113:                                          ; preds = %if.then110, %ioc_bb112
  %conv114 = sext i32 %94 to i64
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body
  %98 = load i32* %_mtime, align 4, !tbaa !7
  %99 = load i32* %_mtime117, align 4, !tbaa !7
  %100 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %98, i32 %99)
  %101 = extractvalue { i32, i1 } %100, 0
  %102 = extractvalue { i32, i1 } %100, 1
  br i1 %102, label %ioc_bb118, label %cont119

ioc_bb118:                                        ; preds = %sw.bb116
  %103 = sext i32 %99 to i64
  %104 = sext i32 %98 to i64
  tail call void @__ioc_report_sub_overflow(i32 1097, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %104, i64 %103, i8 13) nounwind
  br label %cont119

cont119:                                          ; preds = %sw.bb116, %ioc_bb118
  %conv120 = sext i32 %101 to i64
  %tobool121 = icmp eq i32 %101, 0
  br i1 %tobool121, label %if.then122, label %sw.epilog

if.then122:                                       ; preds = %cont119
  %105 = load i32* %_mnsec, align 4, !tbaa !7
  %106 = load i32* %_mnsec123, align 4, !tbaa !7
  %107 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %105, i32 %106)
  %108 = extractvalue { i32, i1 } %107, 0
  %109 = extractvalue { i32, i1 } %107, 1
  br i1 %109, label %ioc_bb124, label %cont125

ioc_bb124:                                        ; preds = %if.then122
  %110 = sext i32 %106 to i64
  %111 = sext i32 %105 to i64
  tail call void @__ioc_report_sub_overflow(i32 1100, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %111, i64 %110, i8 13) nounwind
  br label %cont125

cont125:                                          ; preds = %if.then122, %ioc_bb124
  %conv126 = sext i32 %108 to i64
  br label %sw.epilog

sw.bb128:                                         ; preds = %for.body
  %112 = load i32* %_ctime, align 4, !tbaa !7
  %113 = load i32* %_ctime129, align 4, !tbaa !7
  %114 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %112, i32 %113)
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb130, label %cont131

ioc_bb130:                                        ; preds = %sw.bb128
  %117 = sext i32 %113 to i64
  %118 = sext i32 %112 to i64
  tail call void @__ioc_report_sub_overflow(i32 1106, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %118, i64 %117, i8 13) nounwind
  br label %cont131

cont131:                                          ; preds = %sw.bb128, %ioc_bb130
  %conv132 = sext i32 %115 to i64
  %tobool133 = icmp eq i32 %115, 0
  br i1 %tobool133, label %if.then134, label %sw.epilog

if.then134:                                       ; preds = %cont131
  %119 = load i32* %_cnsec, align 4, !tbaa !7
  %120 = load i32* %_cnsec135, align 4, !tbaa !7
  %121 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %119, i32 %120)
  %122 = extractvalue { i32, i1 } %121, 0
  %123 = extractvalue { i32, i1 } %121, 1
  br i1 %123, label %ioc_bb136, label %cont137

ioc_bb136:                                        ; preds = %if.then134
  %124 = sext i32 %120 to i64
  %125 = sext i32 %119 to i64
  tail call void @__ioc_report_sub_overflow(i32 1109, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %125, i64 %124, i8 13) nounwind
  br label %cont137

cont137:                                          ; preds = %if.then134, %ioc_bb136
  %conv138 = sext i32 %122 to i64
  br label %sw.epilog

sw.bb140:                                         ; preds = %for.body
  %126 = load i32* %_links, align 4, !tbaa !7
  %127 = load i32* %_links141, align 4, !tbaa !7
  %128 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %126, i32 %127)
  %129 = extractvalue { i32, i1 } %128, 0
  %130 = extractvalue { i32, i1 } %128, 1
  br i1 %130, label %ioc_bb142, label %cont143

ioc_bb142:                                        ; preds = %sw.bb140
  %131 = sext i32 %127 to i64
  %132 = sext i32 %126 to i64
  tail call void @__ioc_report_sub_overflow(i32 1115, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %132, i64 %131, i8 13) nounwind
  br label %cont143

cont143:                                          ; preds = %sw.bb140, %ioc_bb142
  %conv144 = sext i32 %129 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %ioc_bb102, %sw.bb100, %ioc_bb57, %sw.bb55, %cont62, %cont74, %cont86, %cont107, %cont119, %cont131, %cont137, %cont125, %cont113, %cont92, %cont80, %cont68, %cont143, %cont98, %if.end50, %cont42, %sw.bb
  %r.1 = phi i64 [ %conv144, %cont143 ], [ %conv132, %cont131 ], [ %conv138, %cont137 ], [ %conv120, %cont119 ], [ %conv126, %cont125 ], [ %conv108, %cont107 ], [ %conv114, %cont113 ], [ %conv99, %cont98 ], [ %conv87, %cont86 ], [ %conv93, %cont92 ], [ %conv75, %cont74 ], [ %conv81, %cont80 ], [ %conv63, %cont62 ], [ %conv69, %cont68 ], [ %conv54, %if.end50 ], [ %conv43, %cont42 ], [ %conv, %sw.bb ], [ %28, %sw.bb55 ], [ %28, %ioc_bb57 ], [ %82, %sw.bb100 ], [ %82, %ioc_bb102 ]
  %asortstrp.2 = phi i8** [ %asortstrp.0247, %cont143 ], [ %asortstrp.0247, %cont131 ], [ %asortstrp.0247, %cont137 ], [ %asortstrp.0247, %cont119 ], [ %asortstrp.0247, %cont125 ], [ %asortstrp.0247, %cont107 ], [ %asortstrp.0247, %cont113 ], [ %asortstrp.0247, %cont98 ], [ %asortstrp.0247, %cont86 ], [ %asortstrp.0247, %cont92 ], [ %asortstrp.0247, %cont74 ], [ %asortstrp.0247, %cont80 ], [ %asortstrp.0247, %cont62 ], [ %asortstrp.0247, %cont68 ], [ %asortstrp.1, %if.end50 ], [ %asortstrp.0247, %cont42 ], [ %asortstrp.0247, %sw.bb ], [ %asortstrp.0247, %sw.bb55 ], [ %asortstrp.0247, %ioc_bb57 ], [ %asortstrp.0247, %sw.bb100 ], [ %asortstrp.0247, %ioc_bb102 ]
  %bsortstrp.2 = phi i8** [ %bsortstrp.0248, %cont143 ], [ %bsortstrp.0248, %cont131 ], [ %bsortstrp.0248, %cont137 ], [ %bsortstrp.0248, %cont119 ], [ %bsortstrp.0248, %cont125 ], [ %bsortstrp.0248, %cont107 ], [ %bsortstrp.0248, %cont113 ], [ %bsortstrp.0248, %cont98 ], [ %bsortstrp.0248, %cont86 ], [ %bsortstrp.0248, %cont92 ], [ %bsortstrp.0248, %cont74 ], [ %bsortstrp.0248, %cont80 ], [ %bsortstrp.0248, %cont62 ], [ %bsortstrp.0248, %cont68 ], [ %bsortstrp.1, %if.end50 ], [ %bsortstrp.0248, %cont42 ], [ %bsortstrp.0248, %sw.bb ], [ %bsortstrp.0248, %sw.bb55 ], [ %bsortstrp.0248, %ioc_bb57 ], [ %bsortstrp.0248, %sw.bb100 ], [ %bsortstrp.0248, %ioc_bb102 ]
  %tobool145 = icmp eq i64 %r.1, 0
  br i1 %tobool145, label %for.inc171, label %if.then146

if.then146:                                       ; preds = %sw.epilog
  %133 = load i32* %tp, align 4, !tbaa !3
  %and157 = and i32 %133, 8192
  %tobool158 = icmp eq i32 %and157, 0
  br i1 %tobool158, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then146
  %cmp159 = icmp slt i64 %r.1, 0
  %cond163 = select i1 %cmp159, i32 1, i32 -1
  br label %return

cond.false:                                       ; preds = %if.then146
  %cmp164 = icmp sgt i64 %r.1, 0
  %cond168 = select i1 %cmp164, i32 1, i32 -1
  br label %return

for.inc171:                                       ; preds = %for.body, %sw.epilog
  %bsortstrp.2255 = phi i8** [ %bsortstrp.2, %sw.epilog ], [ %bsortstrp.0248, %for.body ]
  %asortstrp.2254 = phi i8** [ %asortstrp.2, %sw.epilog ], [ %asortstrp.0247, %for.body ]
  %134 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0244, i32 -1)
  %135 = extractvalue { i32, i1 } %134, 0
  %136 = extractvalue { i32, i1 } %134, 1
  br i1 %136, label %ioc_bb172, label %cont173

ioc_bb172:                                        ; preds = %for.inc171
  %137 = sext i32 %i.0244 to i64
  tail call void @__ioc_report_add_overflow(i32 998, i32 78, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %137, i64 -1, i8 13) nounwind
  br label %cont173

cont173:                                          ; preds = %for.inc171, %ioc_bb172
  %incdec.ptr174 = getelementptr inbounds %struct.globsort* %s.0246, i32 1
  %tobool = icmp eq i32 %135, 0
  br i1 %tobool, label %return, label %for.body

return:                                           ; preds = %entry, %cont173, %cond.true, %cond.false
  %retval.0 = phi i32 [ %cond163, %cond.true ], [ %cond168, %cond.false ], [ 0, %cont173 ], [ 0, %entry ]
  ret i32 %retval.0
}

define signext i8 @file_type(i32 %filemode) nounwind readnone {
entry:
  %and = and i32 %filemode, 61440
  switch i32 %and, label %cont76 [
    i32 24576, label %return
    i32 8192, label %cont13
    i32 16384, label %cont23
    i32 4096, label %cont33
    i32 40960, label %cont43
    i32 32768, label %cont62
    i32 49152, label %cont73
  ]

cont13:                                           ; preds = %entry
  br label %return

cont23:                                           ; preds = %entry
  br label %return

cont33:                                           ; preds = %entry
  br label %return

cont43:                                           ; preds = %entry
  br label %return

cont62:                                           ; preds = %entry
  %and60 = and i32 %filemode, 73
  %tobool = icmp ne i32 %and60, 0
  %conv = select i1 %tobool, i8 42, i8 32
  br label %return

cont73:                                           ; preds = %entry
  br label %return

cont76:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %cont76, %cont73, %cont62, %cont43, %cont33, %cont23, %cont13
  %retval.0 = phi i8 [ 37, %cont13 ], [ 47, %cont23 ], [ 124, %cont33 ], [ 64, %cont43 ], [ %conv, %cont62 ], [ 61, %cont73 ], [ 63, %cont76 ], [ 35, %entry ]
  ret i8 %retval.0
}

define i32 @hasbraces(i8* %str) nounwind {
entry:
  %str.addr = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4, !tbaa !2
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 23), align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %for.cond38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i8* %str, align 1, !tbaa !0
  %tobool1324 = icmp eq i8 %1, 0
  br i1 %tobool1324, label %return, label %ioc_bb

ioc_bb:                                           ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8 [ %17, %for.inc ], [ %1, %for.cond.preheader ]
  %bc.0325 = phi i32 [ %bc.1, %for.inc ], [ 0, %for.cond.preheader ]
  call void @__ioc_report_conversion(i32 2211, i32 24, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp = icmp eq i8 %2, -115
  br i1 %cmp, label %if.then3, label %ioc_bb18

if.then3:                                         ; preds = %ioc_bb
  %tobool4 = icmp eq i32 %bc.0325, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then3
  %3 = load i8** %str.addr, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds i8* %3, i32 1
  %4 = load i8* %arrayidx, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2212, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp8 = icmp eq i8 %4, -114
  br i1 %cmp8, label %cont12, label %if.else

cont12:                                           ; preds = %land.lhs.true
  %5 = load i8** %str.addr, align 4, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 4, !tbaa !2
  store i8 123, i8* %5, align 1, !tbaa !0
  %6 = load i8** %str.addr, align 4, !tbaa !2
  store i8 125, i8* %6, align 1, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %if.then3, %land.lhs.true
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bc.0325, i32 1)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb15, label %for.inc

ioc_bb15:                                         ; preds = %if.else
  %10 = sext i32 %bc.0325 to i64
  call void @__ioc_report_add_overflow(i32 2215, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %10, i64 1, i8 13) nounwind
  br label %for.inc

ioc_bb18:                                         ; preds = %ioc_bb
  call void @__ioc_report_conversion(i32 2217, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp20 = icmp eq i8 %2, -114
  br i1 %cmp20, label %if.then22, label %for.inc

if.then22:                                        ; preds = %ioc_bb18
  %tobool23 = icmp eq i32 %bc.0325, 0
  br i1 %tobool23, label %cont26, label %if.else27

cont26:                                           ; preds = %if.then22
  %11 = load i8** %str.addr, align 4, !tbaa !2
  store i8 125, i8* %11, align 1, !tbaa !0
  br label %for.inc

if.else27:                                        ; preds = %if.then22
  %12 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bc.0325, i32 -1)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb28, label %cont29

ioc_bb28:                                         ; preds = %if.else27
  %15 = sext i32 %bc.0325 to i64
  call void @__ioc_report_add_overflow(i32 2220, i32 20, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %15, i64 -1, i8 13) nounwind
  br label %cont29

cont29:                                           ; preds = %if.else27, %ioc_bb28
  %tobool30 = icmp eq i32 %13, 0
  br i1 %tobool30, label %return, label %for.inc

for.inc:                                          ; preds = %ioc_bb15, %if.else, %cont29, %cont12, %cont26, %ioc_bb18
  %bc.1 = phi i32 [ 0, %cont12 ], [ %13, %cont29 ], [ 0, %cont26 ], [ %bc.0325, %ioc_bb18 ], [ %8, %if.else ], [ %8, %ioc_bb15 ]
  %16 = load i8** %str.addr, align 4, !tbaa !2
  %incdec.ptr36 = getelementptr inbounds i8* %16, i32 1
  store i8* %incdec.ptr36, i8** %str.addr, align 4, !tbaa !2
  %17 = load i8* %incdec.ptr36, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %17, 0
  br i1 %tobool1, label %return, label %ioc_bb

for.cond38:                                       ; preds = %entry, %for.cond38.backedge
  %18 = phi i8* [ %.pre, %for.cond38.backedge ], [ %str, %entry ]
  %mbr.0 = phi i8* [ %mbr.0.be, %for.cond38.backedge ], [ null, %entry ]
  %comma.0 = phi i8* [ %comma.0.be, %for.cond38.backedge ], [ null, %entry ]
  %lbr.0 = phi i8* [ %lbr.0.be, %for.cond38.backedge ], [ null, %entry ]
  %incdec.ptr39 = getelementptr inbounds i8* %18, i32 1
  store i8* %incdec.ptr39, i8** %str.addr, align 4, !tbaa !2
  %19 = load i8* %18, align 1, !tbaa !0
  %conv40 = sext i8 %19 to i32
  switch i32 %conv40, label %for.cond38.backedge [
    i32 -115, label %sw.bb
    i32 -114, label %sw.bb226
    i32 -104, label %sw.bb250
    i32 0, label %sw.bb264
  ]

sw.bb:                                            ; preds = %for.cond38
  %tobool41 = icmp eq i8* %lbr.0, null
  br i1 %tobool41, label %if.then42, label %if.else201

if.then42:                                        ; preds = %sw.bb
  %20 = load i8* %incdec.ptr39, align 1, !tbaa !0
  %cmp44 = icmp eq i8 %20, 45
  br i1 %cmp44, label %if.then46, label %while.cond

if.then46:                                        ; preds = %if.then42
  %incdec.ptr47 = getelementptr inbounds i8* %18, i32 2
  store i8* %incdec.ptr47, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.then42, %if.then46, %while.body
  %21 = phi i8* [ %incdec.ptr58, %while.body ], [ %incdec.ptr47, %if.then46 ], [ %incdec.ptr39, %if.then42 ]
  %22 = load i8* %21, align 1, !tbaa !0
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %cont50, label %ioc_bb49

ioc_bb49:                                         ; preds = %while.cond
  %24 = sext i8 %22 to i64
  call void @__ioc_report_conversion(i32 2235, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %24, i8 1) nounwind
  %.pre328 = load i8** %str.addr, align 4, !tbaa !2
  br label %cont50

cont50:                                           ; preds = %ioc_bb49, %while.cond
  %25 = phi i8* [ %.pre328, %ioc_bb49 ], [ %21, %while.cond ]
  %idxprom = zext i8 %22 to i32
  %arrayidx51 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %26 = load i16* %arrayidx51, align 2, !tbaa !4
  %and = and i16 %26, 1
  %tobool57 = icmp eq i16 %and, 0
  br i1 %tobool57, label %while.end, label %while.body

while.body:                                       ; preds = %cont50
  %incdec.ptr58 = getelementptr inbounds i8* %25, i32 1
  store i8* %incdec.ptr58, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %cont50
  %27 = load i8* %25, align 1, !tbaa !0
  %cmp60 = icmp eq i8 %27, 46
  br i1 %cmp60, label %land.lhs.true62, label %for.cond38.backedge

land.lhs.true62:                                  ; preds = %while.end
  %arrayidx63 = getelementptr inbounds i8* %25, i32 1
  %28 = load i8* %arrayidx63, align 1, !tbaa !0
  %cmp65 = icmp eq i8 %28, 46
  br i1 %cmp65, label %if.then67, label %for.cond38.backedge

if.then67:                                        ; preds = %land.lhs.true62
  %incdec.ptr69 = getelementptr inbounds i8* %25, i32 2
  store i8* %incdec.ptr69, i8** %str.addr, align 4, !tbaa !2
  %29 = load i8* %incdec.ptr69, align 1, !tbaa !0
  %cmp71 = icmp eq i8 %29, 45
  br i1 %cmp71, label %if.then73, label %while.cond76

if.then73:                                        ; preds = %if.then67
  %incdec.ptr74 = getelementptr inbounds i8* %25, i32 3
  store i8* %incdec.ptr74, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond76

while.cond76:                                     ; preds = %if.then67, %if.then73, %while.body89
  %30 = phi i8* [ %incdec.ptr90, %while.body89 ], [ %incdec.ptr74, %if.then73 ], [ %incdec.ptr69, %if.then67 ]
  %31 = load i8* %30, align 1, !tbaa !0
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %cont79, label %ioc_bb78

ioc_bb78:                                         ; preds = %while.cond76
  %33 = sext i8 %31 to i64
  call void @__ioc_report_conversion(i32 2242, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %33, i8 1) nounwind
  %.pre329 = load i8** %str.addr, align 4, !tbaa !2
  br label %cont79

cont79:                                           ; preds = %ioc_bb78, %while.cond76
  %34 = phi i8* [ %.pre329, %ioc_bb78 ], [ %30, %while.cond76 ]
  %idxprom80 = zext i8 %31 to i32
  %arrayidx81 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom80
  %35 = load i16* %arrayidx81, align 2, !tbaa !4
  %and87 = and i16 %35, 1
  %tobool88 = icmp eq i16 %and87, 0
  br i1 %tobool88, label %while.end91, label %while.body89

while.body89:                                     ; preds = %cont79
  %incdec.ptr90 = getelementptr inbounds i8* %34, i32 1
  store i8* %incdec.ptr90, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond76

while.end91:                                      ; preds = %cont79
  %36 = load i8* %34, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2244, i32 36, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp95 = icmp eq i8 %36, -114
  br i1 %cmp95, label %land.lhs.true97, label %if.else127

land.lhs.true97:                                  ; preds = %while.end91
  %37 = load i8* %incdec.ptr39, align 1, !tbaa !0
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %cont101, label %ioc_bb100

ioc_bb100:                                        ; preds = %land.lhs.true97
  %39 = sext i8 %37 to i64
  call void @__ioc_report_conversion(i32 2244, i32 69, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %39, i8 1) nounwind
  br label %cont101

cont101:                                          ; preds = %ioc_bb100, %land.lhs.true97
  %idxprom102 = zext i8 %37 to i32
  %arrayidx103 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom102
  %40 = load i16* %arrayidx103, align 2, !tbaa !4
  %and109 = and i16 %40, 1
  %tobool110 = icmp eq i16 %and109, 0
  br i1 %tobool110, label %cont112, label %return

cont112:                                          ; preds = %cont101
  %41 = load i8** %str.addr, align 4, !tbaa !2
  %arrayidx113 = getelementptr inbounds i8* %41, i32 -1
  %42 = load i8* %arrayidx113, align 1, !tbaa !0
  %43 = icmp sgt i8 %42, -1
  br i1 %43, label %cont116, label %ioc_bb115

ioc_bb115:                                        ; preds = %cont112
  %44 = sext i8 %42 to i64
  call void @__ioc_report_conversion(i32 2244, i32 112, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %44, i8 1) nounwind
  br label %cont116

cont116:                                          ; preds = %ioc_bb115, %cont112
  %idxprom117 = zext i8 %42 to i32
  %arrayidx118 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom117
  %45 = load i16* %arrayidx118, align 2, !tbaa !4
  %and124 = and i16 %45, 1
  %tobool125 = icmp eq i16 %and124, 0
  br i1 %tobool125, label %if.else127, label %return

if.else127:                                       ; preds = %cont116, %while.end91
  %46 = load i8** %str.addr, align 4, !tbaa !2
  %47 = load i8* %46, align 1, !tbaa !0
  %cmp129 = icmp eq i8 %47, 46
  br i1 %cmp129, label %land.lhs.true131, label %for.cond38.backedge

land.lhs.true131:                                 ; preds = %if.else127
  %arrayidx132 = getelementptr inbounds i8* %46, i32 1
  %48 = load i8* %arrayidx132, align 1, !tbaa !0
  %cmp134 = icmp eq i8 %48, 46
  br i1 %cmp134, label %if.then136, label %for.cond38.backedge

if.then136:                                       ; preds = %land.lhs.true131
  %incdec.ptr138 = getelementptr inbounds i8* %46, i32 2
  store i8* %incdec.ptr138, i8** %str.addr, align 4, !tbaa !2
  %49 = load i8* %incdec.ptr138, align 1, !tbaa !0
  %cmp140 = icmp eq i8 %49, 45
  br i1 %cmp140, label %if.then142, label %while.cond145

if.then142:                                       ; preds = %if.then136
  %incdec.ptr143 = getelementptr inbounds i8* %46, i32 3
  store i8* %incdec.ptr143, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond145

while.cond145:                                    ; preds = %if.then136, %if.then142, %while.body158
  %50 = phi i8* [ %incdec.ptr159, %while.body158 ], [ %incdec.ptr143, %if.then142 ], [ %incdec.ptr138, %if.then136 ]
  %51 = load i8* %50, align 1, !tbaa !0
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %cont148, label %ioc_bb147

ioc_bb147:                                        ; preds = %while.cond145
  %53 = sext i8 %51 to i64
  call void @__ioc_report_conversion(i32 2251, i32 44, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %53, i8 1) nounwind
  %.pre330 = load i8** %str.addr, align 4, !tbaa !2
  br label %cont148

cont148:                                          ; preds = %ioc_bb147, %while.cond145
  %54 = phi i8* [ %.pre330, %ioc_bb147 ], [ %50, %while.cond145 ]
  %idxprom149 = zext i8 %51 to i32
  %arrayidx150 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom149
  %55 = load i16* %arrayidx150, align 2, !tbaa !4
  %and156 = and i16 %55, 1
  %tobool157 = icmp eq i16 %and156, 0
  br i1 %tobool157, label %while.end160, label %while.body158

while.body158:                                    ; preds = %cont148
  %incdec.ptr159 = getelementptr inbounds i8* %54, i32 1
  store i8* %incdec.ptr159, i8** %str.addr, align 4, !tbaa !2
  br label %while.cond145

while.end160:                                     ; preds = %cont148
  %56 = load i8* %54, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2253, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp164 = icmp eq i8 %56, -114
  br i1 %cmp164, label %land.lhs.true166, label %for.cond38.backedge

land.lhs.true166:                                 ; preds = %while.end160
  %57 = load i8* %incdec.ptr39, align 1, !tbaa !0
  %58 = icmp sgt i8 %57, -1
  br i1 %58, label %cont170, label %ioc_bb169

ioc_bb169:                                        ; preds = %land.lhs.true166
  %59 = sext i8 %57 to i64
  call void @__ioc_report_conversion(i32 2253, i32 71, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %59, i8 1) nounwind
  br label %cont170

cont170:                                          ; preds = %ioc_bb169, %land.lhs.true166
  %idxprom171 = zext i8 %57 to i32
  %arrayidx172 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom171
  %60 = load i16* %arrayidx172, align 2, !tbaa !4
  %and178 = and i16 %60, 1
  %tobool179 = icmp eq i16 %and178, 0
  br i1 %tobool179, label %cont182, label %return

cont182:                                          ; preds = %cont170
  %61 = load i8** %str.addr, align 4, !tbaa !2
  %arrayidx183 = getelementptr inbounds i8* %61, i32 -1
  %62 = load i8* %arrayidx183, align 1, !tbaa !0
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %cont186, label %ioc_bb185

ioc_bb185:                                        ; preds = %cont182
  %64 = sext i8 %62 to i64
  call void @__ioc_report_conversion(i32 2253, i32 114, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %64, i8 1) nounwind
  br label %cont186

cont186:                                          ; preds = %ioc_bb185, %cont182
  %idxprom187 = zext i8 %62 to i32
  %arrayidx188 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom187
  %65 = load i16* %arrayidx188, align 2, !tbaa !4
  %and194 = and i16 %65, 1
  %tobool195 = icmp eq i16 %and194, 0
  br i1 %tobool195, label %for.cond38.backedge, label %return

if.else201:                                       ; preds = %sw.bb
  store i8* %18, i8** %str.addr, align 4, !tbaa !2
  call void @__ioc_report_conversion(i32 2260, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  call void @__ioc_report_conversion(i32 2260, i32 48, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %call = call i32 @skipparens(i8 signext -115, i8 signext -114, i8** %str.addr) nounwind
  %tobool207 = icmp eq i32 %call, 0
  br i1 %tobool207, label %if.else220, label %cont210

cont210:                                          ; preds = %if.else201
  store i8 123, i8* %18, align 1, !tbaa !0
  store i8 123, i8* %lbr.0, align 1, !tbaa !0
  %tobool211 = icmp eq i8* %comma.0, null
  br i1 %tobool211, label %cont210.if.end213_crit_edge, label %if.then212

cont210.if.end213_crit_edge:                      ; preds = %cont210
  %.pre331 = load i8** %str.addr, align 4, !tbaa !2
  br label %if.end213

if.then212:                                       ; preds = %cont210
  store i8* %comma.0, i8** %str.addr, align 4, !tbaa !2
  br label %if.end213

if.end213:                                        ; preds = %cont210.if.end213_crit_edge, %if.then212
  %66 = phi i8* [ %.pre331, %cont210.if.end213_crit_edge ], [ %comma.0, %if.then212 ]
  %tobool214 = icmp ne i8* %mbr.0, null
  %cmp216 = icmp ult i8* %mbr.0, %66
  %or.cond = and i1 %tobool214, %cmp216
  br i1 %or.cond, label %if.then218, label %for.cond38.backedge

if.then218:                                       ; preds = %if.end213
  store i8* %mbr.0, i8** %str.addr, align 4, !tbaa !2
  br label %for.cond38.backedge

if.else220:                                       ; preds = %if.else201
  %tobool221 = icmp eq i8* %mbr.0, null
  %.mbr.0 = select i1 %tobool221, i8* %18, i8* %mbr.0
  br label %for.cond38.backedge

sw.bb226:                                         ; preds = %for.cond38
  %tobool227 = icmp eq i8* %lbr.0, null
  br i1 %tobool227, label %cont232, label %if.else234

cont232:                                          ; preds = %sw.bb226
  store i8 125, i8* %18, align 1, !tbaa !0
  br label %for.cond38.backedge

if.else234:                                       ; preds = %sw.bb226
  %tobool235 = icmp eq i8* %comma.0, null
  br i1 %tobool235, label %cont239, label %return

cont239:                                          ; preds = %if.else234
  store i8 123, i8* %lbr.0, align 1, !tbaa !0
  %67 = load i8** %str.addr, align 4, !tbaa !2
  %arrayidx244 = getelementptr inbounds i8* %67, i32 -1
  store i8 125, i8* %arrayidx244, align 1, !tbaa !0
  %tobool245 = icmp eq i8* %mbr.0, null
  br i1 %tobool245, label %for.cond38.backedge, label %if.then246

if.then246:                                       ; preds = %cont239
  store i8* %mbr.0, i8** %str.addr, align 4, !tbaa !2
  br label %for.cond38.backedge

sw.bb250:                                         ; preds = %for.cond38
  %tobool251 = icmp eq i8* %lbr.0, null
  br i1 %tobool251, label %cont256, label %if.else258

cont256:                                          ; preds = %sw.bb250
  store i8 44, i8* %18, align 1, !tbaa !0
  br label %for.cond38.backedge

for.cond38.backedge:                              ; preds = %if.end277, %cont239, %cont186, %while.end160, %cont256, %cont232, %land.lhs.true131, %if.else127, %land.lhs.true62, %while.end, %for.cond38, %if.end213, %if.then218, %if.then246, %if.then282, %land.lhs.true279, %if.else220, %if.else258
  %mbr.0.be = phi i8* [ %mbr.0, %for.cond38 ], [ %mbr.0, %cont256 ], [ %mbr.0, %cont232 ], [ %mbr.0, %land.lhs.true131 ], [ %mbr.0, %if.else127 ], [ %mbr.0, %land.lhs.true62 ], [ %mbr.0, %while.end ], [ null, %if.end213 ], [ null, %if.then218 ], [ %.mbr.0, %if.else220 ], [ null, %if.then246 ], [ %mbr.0, %if.else258 ], [ null, %if.then282 ], [ null, %land.lhs.true279 ], [ %mbr.0, %while.end160 ], [ %mbr.0, %cont186 ], [ null, %cont239 ], [ null, %if.end277 ]
  %comma.0.be = phi i8* [ %comma.0, %for.cond38 ], [ %comma.0, %cont256 ], [ %comma.0, %cont232 ], [ %comma.0, %land.lhs.true131 ], [ %comma.0, %if.else127 ], [ %comma.0, %land.lhs.true62 ], [ %comma.0, %while.end ], [ null, %if.end213 ], [ null, %if.then218 ], [ %comma.0, %if.else220 ], [ null, %if.then246 ], [ %.comma.0, %if.else258 ], [ null, %if.then282 ], [ null, %land.lhs.true279 ], [ %comma.0, %while.end160 ], [ %comma.0, %cont186 ], [ null, %cont239 ], [ null, %if.end277 ]
  %lbr.0.be = phi i8* [ %lbr.0, %for.cond38 ], [ null, %cont256 ], [ null, %cont232 ], [ %18, %land.lhs.true131 ], [ %18, %if.else127 ], [ %18, %land.lhs.true62 ], [ %18, %while.end ], [ null, %if.end213 ], [ null, %if.then218 ], [ %lbr.0, %if.else220 ], [ null, %if.then246 ], [ %lbr.0, %if.else258 ], [ null, %if.then282 ], [ null, %land.lhs.true279 ], [ %18, %while.end160 ], [ %18, %cont186 ], [ null, %cont239 ], [ null, %if.end277 ]
  %.pre = load i8** %str.addr, align 4, !tbaa !2
  br label %for.cond38

if.else258:                                       ; preds = %sw.bb250
  %tobool259 = icmp eq i8* %comma.0, null
  %.comma.0 = select i1 %tobool259, i8* %18, i8* %comma.0
  br label %for.cond38.backedge

sw.bb264:                                         ; preds = %for.cond38
  %tobool265 = icmp eq i8* %lbr.0, null
  br i1 %tobool265, label %if.end269, label %cont268

cont268:                                          ; preds = %sw.bb264
  store i8 123, i8* %lbr.0, align 1, !tbaa !0
  br label %if.end269

if.end269:                                        ; preds = %sw.bb264, %cont268
  %tobool270 = icmp ne i8* %mbr.0, null
  %tobool270.not = xor i1 %tobool270, true
  %tobool272 = icmp eq i8* %comma.0, null
  %or.cond319 = and i1 %tobool272, %tobool270.not
  br i1 %or.cond319, label %return, label %if.end274

if.end274:                                        ; preds = %if.end269
  br i1 %tobool272, label %if.end277, label %if.then276

if.then276:                                       ; preds = %if.end274
  store i8* %comma.0, i8** %str.addr, align 4, !tbaa !2
  br label %if.end277

if.end277:                                        ; preds = %if.end274, %if.then276
  br i1 %tobool270, label %land.lhs.true279, label %for.cond38.backedge

land.lhs.true279:                                 ; preds = %if.end277
  %68 = load i8** %str.addr, align 4, !tbaa !2
  %cmp280 = icmp ult i8* %mbr.0, %68
  br i1 %cmp280, label %if.then282, label %for.cond38.backedge

if.then282:                                       ; preds = %land.lhs.true279
  store i8* %mbr.0, i8** %str.addr, align 4, !tbaa !2
  br label %for.cond38.backedge

return:                                           ; preds = %for.cond.preheader, %cont29, %for.inc, %if.end269, %if.else234, %cont170, %cont186, %cont101, %cont116
  %retval.0 = phi i32 [ 0, %if.end269 ], [ 1, %if.else234 ], [ 1, %cont170 ], [ 1, %cont186 ], [ 1, %cont101 ], [ 1, %cont116 ], [ 0, %for.cond.preheader ], [ 1, %cont29 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare i32 @skipparens(i8 signext, i8 signext, i8**)

define i32 @xpandredir(%struct.redir* nocapture %fn, %union.linkroot* %redirtab) nounwind {
entry:
  %fake = alloca %union.linkroot, align 4
  %__n0 = alloca %struct.linknode, align 4
  %first = getelementptr inbounds %union.linkroot* %fake, i32 0, i32 0, i32 0
  store %struct.linknode* %__n0, %struct.linknode** %first, align 4, !tbaa !2
  %last = getelementptr inbounds %union.linkroot* %fake, i32 0, i32 0, i32 1
  store %struct.linknode* %__n0, %struct.linknode** %last, align 4, !tbaa !2
  %flags = getelementptr inbounds %union.linkroot* %fake, i32 0, i32 0, i32 2
  store i32 0, i32* %flags, align 4, !tbaa !3
  %next = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 0
  store %struct.linknode* null, %struct.linknode** %next, align 4, !tbaa !2
  %node = bitcast %union.linkroot* %fake to %struct.linknode*
  %prev = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 1
  store %struct.linknode* %node, %struct.linknode** %prev, align 4, !tbaa !2
  %name = getelementptr inbounds %struct.redir* %fn, i32 0, i32 4
  %0 = load i8** %name, align 4, !tbaa !2
  %dat = getelementptr inbounds %struct.linknode* %__n0, i32 0, i32 2
  store i8* %0, i8** %dat, align 4, !tbaa !2
  %1 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 111), align 1, !tbaa !0
  %tobool = icmp ne i8 %1, 0
  %cond = select i1 %tobool, i32 0, i32 4
  call void @prefork(%union.linkroot* %fake, i32 %cond) nounwind
  %2 = load i32* @errflag, align 4, !tbaa !3
  %tobool3 = icmp ne i32 %2, 0
  %3 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 111), align 1, !tbaa !0
  %tobool5 = icmp eq i8 %3, 0
  %or.cond = or i1 %tobool3, %tobool5
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @globlist(%union.linkroot* %fake, i32 0) nounwind
  %.pr = load i32* @errflag, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi i32 [ %2, %entry ], [ %.pr, %if.then ]
  %tobool6 = icmp eq i32 %4, 0
  br i1 %tobool6, label %if.end8, label %return

if.end8:                                          ; preds = %if.end
  %5 = load %struct.linknode** %first, align 4, !tbaa !2
  %cmp = icmp eq %struct.linknode* %5, null
  br i1 %cmp, label %if.else78, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end8
  %next15 = getelementptr inbounds %struct.linknode* %5, i32 0, i32 0
  %6 = load %struct.linknode** %next15, align 4, !tbaa !2
  %tobool16 = icmp eq %struct.linknode* %6, null
  br i1 %tobool16, label %if.then17, label %if.else78

if.then17:                                        ; preds = %land.lhs.true12
  %dat20 = getelementptr inbounds %struct.linknode* %5, i32 0, i32 2
  %7 = load i8** %dat20, align 4, !tbaa !2
  store i8* %7, i8** %name, align 4, !tbaa !2
  call void @untokenize(i8* %7) nounwind
  %type = getelementptr inbounds %struct.redir* %fn, i32 0, i32 0
  %8 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %8, -13
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then27, label %return

if.then27:                                        ; preds = %if.then17
  %9 = load i8* %7, align 1, !tbaa !0
  switch i8 %9, label %while.cond [
    i8 45, label %land.lhs.true31
    i8 112, label %land.lhs.true40
  ]

land.lhs.true31:                                  ; preds = %if.then27
  %arrayidx32 = getelementptr inbounds i8* %7, i32 1
  %10 = load i8* %arrayidx32, align 1, !tbaa !0
  %tobool33 = icmp eq i8 %10, 0
  br i1 %tobool33, label %if.then34, label %while.cond

if.then34:                                        ; preds = %land.lhs.true31
  store i32 15, i32* %type, align 4, !tbaa !3
  br label %return

land.lhs.true40:                                  ; preds = %if.then27
  %arrayidx41 = getelementptr inbounds i8* %7, i32 1
  %11 = load i8* %arrayidx41, align 1, !tbaa !0
  %tobool42 = icmp eq i8 %11, 0
  br i1 %tobool42, label %cont, label %while.cond

cont:                                             ; preds = %land.lhs.true40
  %fd2 = getelementptr inbounds %struct.redir* %fn, i32 0, i32 3
  store i32 -2, i32* %fd2, align 4, !tbaa !3
  br label %return

while.cond:                                       ; preds = %if.then27, %land.lhs.true31, %land.lhs.true40, %cont46.while.cond_crit_edge
  %12 = phi i8 [ %.pre, %cont46.while.cond_crit_edge ], [ 112, %land.lhs.true40 ], [ 45, %land.lhs.true31 ], [ %9, %if.then27 ]
  %s.0 = phi i8* [ %incdec.ptr, %cont46.while.cond_crit_edge ], [ %7, %land.lhs.true40 ], [ %7, %land.lhs.true31 ], [ %7, %if.then27 ]
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %cont46, label %ioc_bb45

ioc_bb45:                                         ; preds = %while.cond
  %14 = sext i8 %12 to i64
  call void @__ioc_report_conversion(i32 2349, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %14, i8 1) nounwind
  br label %cont46

cont46:                                           ; preds = %ioc_bb45, %while.cond
  %idxprom = zext i8 %12 to i32
  %arrayidx47 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %15 = load i16* %arrayidx47, align 2, !tbaa !4
  %and = and i16 %15, 1
  %tobool53 = icmp eq i16 %and, 0
  %incdec.ptr = getelementptr inbounds i8* %s.0, i32 1
  br i1 %tobool53, label %while.end, label %cont46.while.cond_crit_edge

cont46.while.cond_crit_edge:                      ; preds = %cont46
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %cont46
  %16 = load i8* %s.0, align 1, !tbaa !0
  %tobool54 = icmp eq i8 %16, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.else66

land.lhs.true55:                                  ; preds = %while.end
  %17 = load i8** %name, align 4, !tbaa !2
  %cmp57 = icmp ugt i8* %s.0, %17
  br i1 %cmp57, label %if.then59, label %if.else66

if.then59:                                        ; preds = %land.lhs.true55
  %call = call i64 @zstrtol(i8* %17, i8** null, i32 10) nounwind
  %call.off = add i64 %call, 2147483648
  %18 = icmp ult i64 %call.off, 4294967296
  br i1 %18, label %cont63, label %ioc_bb62

ioc_bb62:                                         ; preds = %if.then59
  call void @__ioc_report_conversion(i32 2352, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call, i8 1) nounwind
  br label %cont63

cont63:                                           ; preds = %ioc_bb62, %if.then59
  %conv64 = trunc i64 %call to i32
  %fd265 = getelementptr inbounds %struct.redir* %fn, i32 0, i32 3
  store i32 %conv64, i32* %fd265, align 4, !tbaa !3
  br label %return

if.else66:                                        ; preds = %land.lhs.true55, %while.end
  %19 = load i32* %type, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %19, 13
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.else66
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([21 x i8]* @.str12, i32 0, i32 0)) nounwind
  br label %return

if.else71:                                        ; preds = %if.else66
  store i32 4, i32* %type, align 4, !tbaa !3
  br label %return

if.else78:                                        ; preds = %land.lhs.true12, %if.end8
  %type79 = getelementptr inbounds %struct.redir* %fn, i32 0, i32 0
  %20 = load i32* %type79, align 4, !tbaa !3
  switch i32 %20, label %while.cond90.preheader [
    i32 13, label %if.then82
    i32 14, label %if.then87
  ]

if.then82:                                        ; preds = %if.else78
  call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([21 x i8]* @.str12, i32 0, i32 0)) nounwind
  br label %return

if.then87:                                        ; preds = %if.else78
  store i32 4, i32* %type79, align 4, !tbaa !3
  br label %while.cond90.preheader

while.cond90.preheader:                           ; preds = %if.then87, %if.else78
  %call91129 = call i8* @ugetnode(%union.linkroot* %fake) nounwind
  %tobool92130 = icmp eq i8* %call91129, null
  br i1 %tobool92130, label %return, label %while.body93.lr.ph

while.body93.lr.ph:                               ; preds = %while.cond90.preheader
  %21 = bitcast %struct.redir* %fn to i8*
  %last97 = getelementptr inbounds %union.linkroot* %redirtab, i32 0, i32 0, i32 1
  br label %while.body93

while.body93:                                     ; preds = %while.body93.lr.ph, %while.body93
  %call91131 = phi i8* [ %call91129, %while.body93.lr.ph ], [ %call91, %while.body93 ]
  %call94 = call i8* @zhalloc(i32 32) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call94, i8* %21, i32 32, i32 4, i1 false), !tbaa.struct !8
  %name95 = getelementptr inbounds i8* %call94, i32 16
  %22 = bitcast i8* %name95 to i8**
  store i8* %call91131, i8** %22, align 4, !tbaa !2
  %23 = load %struct.linknode** %last97, align 4, !tbaa !2
  %call98 = call %struct.linknode* @insertlinknode(%union.linkroot* %redirtab, %struct.linknode* %23, i8* %call94) nounwind
  %call91 = call i8* @ugetnode(%union.linkroot* %fake) nounwind
  %tobool92 = icmp eq i8* %call91, null
  br i1 %tobool92, label %return, label %while.body93

return:                                           ; preds = %while.cond90.preheader, %while.body93, %if.then17, %if.then34, %cont63, %if.else71, %if.then70, %cont, %if.then82, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then82 ], [ 0, %if.then70 ], [ 0, %if.else71 ], [ 0, %cont63 ], [ 0, %cont ], [ 0, %if.then34 ], [ 0, %if.then17 ], [ 0, %while.cond90.preheader ], [ 1, %while.body93 ]
  ret i32 %retval.0
}

declare void @prefork(%union.linkroot*, i32)

declare void @globlist(%union.linkroot*, i32)

declare i64 @zstrtol(i8*, i8**, i32)

declare i8* @ugetnode(%union.linkroot*)

define void @xpandbraces(%union.linkroot* %list, %struct.linknode** nocapture %np) nounwind {
entry:
  %dots = alloca i8*, align 4
  %p = alloca i8*, align 4
  %ccl = alloca [256 x i8], align 1
  %0 = load %struct.linknode** %np, align 4, !tbaa !2
  %prev = getelementptr inbounds %struct.linknode* %0, i32 0, i32 1
  %1 = load %struct.linknode** %prev, align 4, !tbaa !2
  %dat = getelementptr inbounds %struct.linknode* %0, i32 0, i32 2
  %2 = load i8** %dat, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %str.0 = phi i8* [ %2, %entry ], [ %incdec.ptr, %for.cond ]
  %3 = load i8* %str.0, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2391, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp = icmp eq i8 %3, -115
  %incdec.ptr = getelementptr inbounds i8* %str.0, i32 1
  br i1 %cmp, label %for.cond3.preheader, label %for.cond

for.cond3.preheader:                              ; preds = %for.cond
  %4 = load i8* %str.0, align 1, !tbaa !0
  %tobool695 = icmp eq i8 %4, 0
  br i1 %tobool695, label %if.end238, label %ioc_bb6

ioc_bb6:                                          ; preds = %for.cond3.preheader, %for.inc51
  %5 = phi i8 [ %26, %for.inc51 ], [ %4, %for.cond3.preheader ]
  %str2.0699 = phi i8* [ %incdec.ptr52, %for.inc51 ], [ %str.0, %for.cond3.preheader ]
  %bc.0698 = phi i32 [ %bc.1, %for.inc51 ], [ 0, %for.cond3.preheader ]
  %comma.0697 = phi i32 [ %comma.1, %for.inc51 ], [ 0, %for.cond3.preheader ]
  %dotdot.0696 = phi i32 [ %dotdot.1, %for.inc51 ], [ 0, %for.cond3.preheader ]
  call void @__ioc_report_conversion(i32 2395, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp8 = icmp eq i8 %5, -115
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %ioc_bb6
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bc.0698, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb10, label %for.inc51

ioc_bb10:                                         ; preds = %if.then
  %9 = sext i32 %bc.0698 to i64
  call void @__ioc_report_add_overflow(i32 2396, i32 7, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %for.inc51

if.else:                                          ; preds = %ioc_bb6
  %10 = load i8* %str2.0699, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2397, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp15 = icmp eq i8 %10, -114
  br i1 %cmp15, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %bc.0698, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb18, label %cont19

ioc_bb18:                                         ; preds = %if.then17
  %14 = sext i32 %bc.0698 to i64
  call void @__ioc_report_add_overflow(i32 2398, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %14, i64 -1, i8 13) nounwind
  br label %cont19

cont19:                                           ; preds = %if.then17, %ioc_bb18
  %cmp20 = icmp eq i32 %12, 0
  br i1 %cmp20, label %for.end53, label %for.inc51

if.else23:                                        ; preds = %if.else
  %cmp24 = icmp eq i32 %bc.0698, 1
  br i1 %cmp24, label %if.then26, label %for.inc51

if.then26:                                        ; preds = %if.else23
  %15 = load i8* %str2.0699, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2402, i32 31, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 152, i8 1) nounwind
  %cmp30 = icmp eq i8 %15, -104
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then26
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %comma.0697, i32 1)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb33, label %for.inc51

ioc_bb33:                                         ; preds = %if.then32
  %19 = sext i32 %comma.0697 to i64
  call void @__ioc_report_add_overflow(i32 2404, i32 9, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind
  br label %for.inc51

if.else35:                                        ; preds = %if.then26
  %20 = load i8* %str2.0699, align 1, !tbaa !0
  %cmp37 = icmp eq i8 %20, 46
  br i1 %cmp37, label %land.lhs.true, label %for.inc51

land.lhs.true:                                    ; preds = %if.else35
  %arrayidx = getelementptr inbounds i8* %str2.0699, i32 1
  %21 = load i8* %arrayidx, align 1, !tbaa !0
  %cmp40 = icmp eq i8 %21, 46
  br i1 %cmp40, label %if.then42, label %for.inc51

if.then42:                                        ; preds = %land.lhs.true
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %dotdot.0696, i32 1)
  %23 = extractvalue { i32, i1 } %22, 0
  %24 = extractvalue { i32, i1 } %22, 1
  br i1 %24, label %ioc_bb43, label %for.inc51

ioc_bb43:                                         ; preds = %if.then42
  %25 = sext i32 %dotdot.0696 to i64
  call void @__ioc_report_add_overflow(i32 2407, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind
  br label %for.inc51

for.inc51:                                        ; preds = %if.then42, %if.else35, %if.then32, %if.else23, %cont19, %if.then, %ioc_bb43, %ioc_bb33, %ioc_bb10, %land.lhs.true
  %dotdot.1 = phi i32 [ %dotdot.0696, %land.lhs.true ], [ %dotdot.0696, %ioc_bb10 ], [ %dotdot.0696, %ioc_bb33 ], [ %23, %ioc_bb43 ], [ %dotdot.0696, %if.then ], [ %dotdot.0696, %cont19 ], [ %dotdot.0696, %if.else23 ], [ %dotdot.0696, %if.then32 ], [ %dotdot.0696, %if.else35 ], [ %23, %if.then42 ]
  %comma.1 = phi i32 [ %comma.0697, %land.lhs.true ], [ %comma.0697, %ioc_bb10 ], [ %17, %ioc_bb33 ], [ %comma.0697, %ioc_bb43 ], [ %comma.0697, %if.then ], [ %comma.0697, %cont19 ], [ %comma.0697, %if.else23 ], [ %17, %if.then32 ], [ %comma.0697, %if.else35 ], [ %comma.0697, %if.then42 ]
  %bc.1 = phi i32 [ 1, %land.lhs.true ], [ %7, %ioc_bb10 ], [ 1, %ioc_bb33 ], [ 1, %ioc_bb43 ], [ %7, %if.then ], [ %12, %cont19 ], [ %bc.0698, %if.else23 ], [ 1, %if.then32 ], [ 1, %if.else35 ], [ 1, %if.then42 ]
  %str2.1 = phi i8* [ %str2.0699, %land.lhs.true ], [ %str2.0699, %ioc_bb10 ], [ %str2.0699, %ioc_bb33 ], [ %arrayidx, %ioc_bb43 ], [ %str2.0699, %if.then ], [ %str2.0699, %cont19 ], [ %str2.0699, %if.else23 ], [ %str2.0699, %if.then32 ], [ %str2.0699, %if.else35 ], [ %arrayidx, %if.then42 ]
  %incdec.ptr52 = getelementptr inbounds i8* %str2.1, i32 1
  %26 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %tobool = icmp eq i8 %26, 0
  br i1 %tobool, label %for.end53, label %ioc_bb6

for.end53:                                        ; preds = %for.inc51, %cont19
  %str2.0.lcssa = phi i8* [ %str2.0699, %cont19 ], [ %incdec.ptr52, %for.inc51 ]
  %comma.0.lcssa = phi i32 [ %comma.0697, %cont19 ], [ %comma.1, %for.inc51 ]
  %dotdot.0.lcssa = phi i32 [ %dotdot.0696, %cont19 ], [ %dotdot.1, %for.inc51 ]
  %tobool54 = icmp ne i32 %comma.0.lcssa, 0
  %tobool56 = icmp eq i32 %dotdot.0.lcssa, 0
  %or.cond = or i1 %tobool54, %tobool56
  br i1 %or.cond, label %if.end238, label %if.then57

if.then57:                                        ; preds = %for.end53
  %call = call i64 @zstrtol(i8* %incdec.ptr, i8** %dots, i32 10) nounwind
  %27 = load i8** %dots, align 4, !tbaa !2
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %str.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 1)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb58, label %cont59

ioc_bb58:                                         ; preds = %if.then57
  %31 = sext i32 %sub.ptr.sub to i64
  call void @__ioc_report_sub_overflow(i32 2425, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind
  %.pre = load i8** %dots, align 4, !tbaa !2
  br label %cont59

cont59:                                           ; preds = %if.then57, %ioc_bb58
  %32 = phi i8* [ %27, %if.then57 ], [ %.pre, %ioc_bb58 ]
  %sub.ptr.lhs.cast60 = ptrtoint i8* %str2.0.lcssa to i32
  %sub.ptr.rhs.cast61 = ptrtoint i8* %32 to i32
  %sub.ptr.sub62 = sub i32 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub62, i32 2)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb63, label %cont64

ioc_bb63:                                         ; preds = %cont59
  %36 = sext i32 %sub.ptr.sub62 to i64
  call void @__ioc_report_sub_overflow(i32 2426, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %36, i64 2, i8 13) nounwind
  %.pre705 = load i8** %dots, align 4, !tbaa !2
  br label %cont64

cont64:                                           ; preds = %cont59, %ioc_bb63
  %37 = phi i8* [ %32, %cont59 ], [ %.pre705, %ioc_bb63 ]
  %sub.ptr.rhs.cast66 = ptrtoint i8* %2 to i32
  %sub.ptr.sub67 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast66
  %cmp69 = icmp eq i8* %37, %incdec.ptr
  br i1 %cmp69, label %if.end238, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont64
  %38 = load i8* %37, align 1, !tbaa !0
  %cmp72 = icmp eq i8 %38, 46
  br i1 %cmp72, label %lor.lhs.false74, label %if.end238

lor.lhs.false74:                                  ; preds = %lor.lhs.false
  %arrayidx75 = getelementptr inbounds i8* %37, i32 1
  %39 = load i8* %arrayidx75, align 1, !tbaa !0
  %cmp77 = icmp eq i8 %39, 46
  br i1 %cmp77, label %if.else82, label %if.end238

if.else82:                                        ; preds = %lor.lhs.false74
  %add.ptr83 = getelementptr inbounds i8* %37, i32 2
  %call84 = call i64 @zstrtol(i8* %add.ptr83, i8** %p, i32 10) nounwind
  %40 = load i8** %p, align 4, !tbaa !2
  %41 = load i8** %dots, align 4, !tbaa !2
  %add.ptr85 = getelementptr inbounds i8* %41, i32 2
  %cmp86 = icmp eq i8* %40, %add.ptr85
  %err.0 = zext i1 %cmp86 to i32
  %cmp92 = icmp eq i8* %40, %str2.0.lcssa
  br i1 %cmp92, label %if.end135, label %if.then94

if.then94:                                        ; preds = %if.else82
  %sub.ptr.lhs.cast95 = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast96 = ptrtoint i8* %41 to i32
  %sub.ptr.sub97 = sub i32 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub97, i32 2)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb98, label %cont99

ioc_bb98:                                         ; preds = %if.then94
  %45 = sext i32 %sub.ptr.sub97 to i64
  call void @__ioc_report_sub_overflow(i32 2438, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %45, i64 2, i8 13) nounwind
  %.pre706 = load i8** %p, align 4, !tbaa !2
  br label %cont99

cont99:                                           ; preds = %if.then94, %ioc_bb98
  %46 = phi i8* [ %40, %if.then94 ], [ %.pre706, %ioc_bb98 ]
  %cmp100 = icmp eq i32 %dotdot.0.lcssa, 2
  br i1 %cmp100, label %land.lhs.true102, label %if.else130

land.lhs.true102:                                 ; preds = %cont99
  %47 = load i8* %46, align 1, !tbaa !0
  %cmp104 = icmp eq i8 %47, 46
  br i1 %cmp104, label %land.lhs.true106, label %if.else130

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %arrayidx107 = getelementptr inbounds i8* %46, i32 1
  %48 = load i8* %arrayidx107, align 1, !tbaa !0
  %cmp109 = icmp eq i8 %48, 46
  br i1 %cmp109, label %if.then111, label %if.else130

if.then111:                                       ; preds = %land.lhs.true106
  %add.ptr112 = getelementptr inbounds i8* %46, i32 2
  %call113 = call i64 @zstrtol(i8* %add.ptr112, i8** %p, i32 10) nounwind
  %call113.off = add i64 %call113, 2147483648
  %49 = icmp ult i64 %call113.off, 4294967296
  br i1 %49, label %cont115, label %ioc_bb114

ioc_bb114:                                        ; preds = %if.then111
  call void @__ioc_report_conversion(i32 2441, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %call113, i8 1) nounwind
  br label %cont115

cont115:                                          ; preds = %ioc_bb114, %if.then111
  %conv116 = trunc i64 %call113 to i32
  %50 = load i8** %p, align 4, !tbaa !2
  %sub.ptr.lhs.cast117 = ptrtoint i8* %50 to i32
  %sub.ptr.rhs.cast118 = ptrtoint i8* %46 to i32
  %sub.ptr.sub119 = sub i32 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub119, i32 2)
  %52 = extractvalue { i32, i1 } %51, 0
  %53 = extractvalue { i32, i1 } %51, 1
  br i1 %53, label %ioc_bb120, label %cont121

ioc_bb120:                                        ; preds = %cont115
  %54 = sext i32 %sub.ptr.sub119 to i64
  call void @__ioc_report_sub_overflow(i32 2442, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %54, i64 2, i8 13) nounwind
  %.pre707 = load i8** %p, align 4, !tbaa !2
  br label %cont121

cont121:                                          ; preds = %cont115, %ioc_bb120
  %55 = phi i8* [ %50, %cont115 ], [ %.pre707, %ioc_bb120 ]
  %cmp122 = icmp ne i8* %55, %str2.0.lcssa
  %tobool125 = icmp eq i32 %conv116, 0
  %or.cond670 = or i1 %cmp122, %tobool125
  br i1 %or.cond670, label %if.then126, label %if.end135

if.then126:                                       ; preds = %cont121
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %err.0, i32 1)
  %57 = extractvalue { i32, i1 } %56, 0
  %58 = extractvalue { i32, i1 } %56, 1
  br i1 %58, label %ioc_bb127, label %if.end135

ioc_bb127:                                        ; preds = %if.then126
  %59 = zext i1 %cmp86 to i64
  call void @__ioc_report_add_overflow(i32 2444, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %59, i64 1, i8 13) nounwind
  br label %if.end135

if.else130:                                       ; preds = %land.lhs.true106, %land.lhs.true102, %cont99
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %err.0, i32 1)
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %ioc_bb131, label %if.end135

ioc_bb131:                                        ; preds = %if.else130
  %63 = zext i1 %cmp86 to i64
  call void @__ioc_report_add_overflow(i32 2447, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %63, i64 1, i8 13) nounwind
  br label %if.end135

if.end135:                                        ; preds = %ioc_bb131, %if.else130, %ioc_bb127, %if.then126, %cont121, %if.else82
  %err.1 = phi i32 [ %err.0, %if.else82 ], [ %err.0, %cont121 ], [ %57, %if.then126 ], [ %57, %ioc_bb127 ], [ %61, %if.else130 ], [ %61, %ioc_bb131 ]
  %rincr.0 = phi i32 [ 1, %if.else82 ], [ %conv116, %cont121 ], [ %conv116, %if.then126 ], [ %conv116, %ioc_bb127 ], [ 1, %if.else130 ], [ 1, %ioc_bb131 ]
  %dots2.0 = phi i8* [ null, %if.else82 ], [ %46, %cont121 ], [ %46, %if.then126 ], [ %46, %ioc_bb127 ], [ %46, %if.else130 ], [ %46, %ioc_bb131 ]
  %wid2.0 = phi i32 [ %34, %if.else82 ], [ %43, %cont121 ], [ %43, %if.then126 ], [ %43, %ioc_bb127 ], [ %43, %if.else130 ], [ %43, %ioc_bb131 ]
  %wid3.0 = phi i32 [ 0, %if.else82 ], [ %52, %cont121 ], [ %52, %if.then126 ], [ %52, %ioc_bb127 ], [ 0, %if.else130 ], [ 0, %ioc_bb131 ]
  %tobool136 = icmp eq i32 %err.1, 0
  br i1 %tobool136, label %if.then137, label %if.end238

if.then137:                                       ; preds = %if.end135
  %64 = load i8* %incdec.ptr, align 1, !tbaa !0
  switch i8 %64, label %cond.false [
    i8 48, label %cond.end188
    i8 45, label %land.lhs.true147
  ]

land.lhs.true147:                                 ; preds = %if.then137
  %arrayidx148 = getelementptr inbounds i8* %str.0, i32 2
  %65 = load i8* %arrayidx148, align 1, !tbaa !0
  %cmp150 = icmp eq i8 %65, 48
  br i1 %cmp150, label %cond.end188, label %cond.false

cond.false:                                       ; preds = %land.lhs.true147, %if.then137
  %66 = load i8** %dots, align 4, !tbaa !2
  %arrayidx152 = getelementptr inbounds i8* %66, i32 2
  %67 = load i8* %arrayidx152, align 1, !tbaa !0
  switch i8 %67, label %cond.false167 [
    i8 48, label %cond.end188
    i8 45, label %land.lhs.true161
  ]

land.lhs.true161:                                 ; preds = %cond.false
  %arrayidx162 = getelementptr inbounds i8* %66, i32 3
  %68 = load i8* %arrayidx162, align 1, !tbaa !0
  %cmp164 = icmp eq i8 %68, 48
  br i1 %cmp164, label %cond.end188, label %cond.false167

cond.false167:                                    ; preds = %cond.false, %land.lhs.true161
  %tobool168 = icmp eq i8* %dots2.0, null
  br i1 %tobool168, label %cond.end188, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %cond.false167
  %arrayidx170 = getelementptr inbounds i8* %dots2.0, i32 2
  %69 = load i8* %arrayidx170, align 1, !tbaa !0
  switch i8 %69, label %cond.end188 [
    i8 48, label %cond.true184
    i8 45, label %land.lhs.true179
  ]

land.lhs.true179:                                 ; preds = %land.lhs.true169
  %arrayidx180 = getelementptr inbounds i8* %dots2.0, i32 3
  %70 = load i8* %arrayidx180, align 1, !tbaa !0
  %cmp182 = icmp eq i8 %70, 48
  br i1 %cmp182, label %cond.true184, label %cond.end188

cond.true184:                                     ; preds = %land.lhs.true169, %land.lhs.true179
  br label %cond.end188

cond.end188:                                      ; preds = %land.lhs.true169, %land.lhs.true161, %cond.false, %land.lhs.true147, %if.then137, %cond.false167, %land.lhs.true179, %cond.true184
  %cond189 = phi i32 [ %wid3.0, %cond.true184 ], [ 0, %land.lhs.true179 ], [ 0, %cond.false167 ], [ %29, %if.then137 ], [ %29, %land.lhs.true147 ], [ %wid2.0, %cond.false ], [ %wid2.0, %land.lhs.true161 ], [ 0, %land.lhs.true169 ]
  %cmp190 = icmp slt i32 %rincr.0, 0
  br i1 %cmp190, label %if.then192, label %if.end196

if.then192:                                       ; preds = %cond.end188
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %rincr.0)
  %72 = extractvalue { i32, i1 } %71, 0
  %73 = extractvalue { i32, i1 } %71, 1
  br i1 %73, label %ioc_bb193, label %if.end196

ioc_bb193:                                        ; preds = %if.then192
  %74 = sext i32 %rincr.0 to i64
  call void @__ioc_report_sub_overflow(i32 2459, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i64 0, i64 %74, i8 13) nounwind
  br label %if.end196

if.end196:                                        ; preds = %ioc_bb193, %if.then192, %cond.end188
  %rev.0 = phi i32 [ 0, %cond.end188 ], [ 1, %if.then192 ], [ 1, %ioc_bb193 ]
  %rincr.1 = phi i32 [ %rincr.0, %cond.end188 ], [ %72, %if.then192 ], [ %72, %ioc_bb193 ]
  %cmp197 = icmp sgt i64 %call, %call84
  br i1 %cmp197, label %if.then199, label %if.else203

if.then199:                                       ; preds = %if.end196
  %75 = xor i32 %rev.0, 1
  br label %if.end215

if.else203:                                       ; preds = %if.end196
  %cmp204 = icmp sgt i32 %rincr.1, 1
  br i1 %cmp204, label %if.then206, label %if.end215

if.then206:                                       ; preds = %if.else203
  %76 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %call84, i64 %call)
  %77 = extractvalue { i64, i1 } %76, 0
  %78 = extractvalue { i64, i1 } %76, 1
  br i1 %78, label %ioc_bb207, label %cont208

ioc_bb207:                                        ; preds = %if.then206
  call void @__ioc_report_sub_overflow(i32 2472, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %call84, i64 %call, i8 14) nounwind
  br label %cont208

cont208:                                          ; preds = %if.then206, %ioc_bb207
  %conv209 = sext i32 %rincr.1 to i64
  %79 = icmp ne i32 %rincr.1, 0
  %80 = icmp ne i64 %77, -9223372036854775808
  %81 = icmp ne i32 %rincr.1, -1
  %or = or i1 %80, %81
  %and = and i1 %79, %or
  br i1 %and, label %cont211, label %ioc_bb210

ioc_bb210:                                        ; preds = %cont208
  call void @__ioc_report_rem_error(i32 2472, i32 33, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %77, i64 %conv209, i8 14) nounwind
  br label %cont211

cont211:                                          ; preds = %ioc_bb210, %cont208
  %rem = srem i64 %77, %conv209
  %82 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %call84, i64 %rem)
  %83 = extractvalue { i64, i1 } %82, 0
  %84 = extractvalue { i64, i1 } %82, 1
  br i1 %84, label %ioc_bb212, label %if.end215

ioc_bb212:                                        ; preds = %cont211
  call void @__ioc_report_sub_overflow(i32 2472, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %call84, i64 %rem, i8 14) nounwind
  br label %if.end215

if.end215:                                        ; preds = %ioc_bb212, %cont211, %if.else203, %if.then199
  %rstart.0 = phi i64 [ %call84, %if.then199 ], [ %call, %if.else203 ], [ %call, %cont211 ], [ %call, %ioc_bb212 ]
  %rend.1 = phi i64 [ %call, %if.then199 ], [ %call84, %if.else203 ], [ %83, %cont211 ], [ %83, %ioc_bb212 ]
  %rev.1 = phi i32 [ %75, %if.then199 ], [ %rev.0, %if.else203 ], [ %rev.0, %cont211 ], [ %rev.0, %ioc_bb212 ]
  %call216 = call i8* @uremnode(%union.linkroot* %list, %struct.linknode* %0) nounwind
  %cmp218691 = icmp slt i64 %rend.1, %rstart.0
  br i1 %cmp218691, label %for.end235, label %for.body220.lr.ph

for.body220.lr.ph:                                ; preds = %if.end215
  %add.ptr225 = getelementptr inbounds i8* %str2.0.lcssa, i32 1
  %tobool228 = icmp eq i32 %rev.1, 0
  %conv232 = sext i32 %rincr.1 to i64
  br label %for.body220

for.body220:                                      ; preds = %for.body220.lr.ph, %for.cond217.backedge
  %last.0693 = phi %struct.linknode* [ %1, %for.body220.lr.ph ], [ %last.1, %for.cond217.backedge ]
  %rend.2692 = phi i64 [ %rend.1, %for.body220.lr.ph ], [ %89, %for.cond217.backedge ]
  %call221 = call i8* @dupstring(i8* %2) nounwind
  store i8* %call221, i8** %p, align 4, !tbaa !2
  %add.ptr222 = getelementptr inbounds i8* %call221, i32 %sub.ptr.sub67
  %call223 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr222, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0), i32 %cond189, i64 %rend.2692) nounwind
  %85 = load i8** %p, align 4, !tbaa !2
  %add.ptr224 = getelementptr inbounds i8* %85, i32 %sub.ptr.sub67
  %call226 = call i8* @strcat(i8* %add.ptr224, i8* %add.ptr225) nounwind
  %86 = load i8** %p, align 4, !tbaa !2
  %call227 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %last.0693, i8* %86) nounwind
  br i1 %tobool228, label %for.inc231, label %if.then229

if.then229:                                       ; preds = %for.body220
  %next = getelementptr inbounds %struct.linknode* %last.0693, i32 0, i32 0
  %87 = load %struct.linknode** %next, align 4, !tbaa !2
  br label %for.inc231

for.inc231:                                       ; preds = %for.body220, %if.then229
  %last.1 = phi %struct.linknode* [ %87, %if.then229 ], [ %last.0693, %for.body220 ]
  %88 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %rend.2692, i64 %conv232)
  %89 = extractvalue { i64, i1 } %88, 0
  %90 = extractvalue { i64, i1 } %88, 1
  br i1 %90, label %ioc_bb233, label %for.cond217.backedge

for.cond217.backedge:                             ; preds = %for.inc231, %ioc_bb233
  %cmp218 = icmp slt i64 %89, %rstart.0
  br i1 %cmp218, label %for.end235, label %for.body220

ioc_bb233:                                        ; preds = %for.inc231
  call void @__ioc_report_sub_overflow(i32 2475, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %rend.2692, i64 %conv232, i8 14) nounwind
  br label %for.cond217.backedge

for.end235:                                       ; preds = %for.cond217.backedge, %if.end215
  %next236 = getelementptr inbounds %struct.linknode* %1, i32 0, i32 0
  %91 = load %struct.linknode** %next236, align 4, !tbaa !2
  store %struct.linknode* %91, %struct.linknode** %np, align 4, !tbaa !2
  br label %return

if.end238:                                        ; preds = %for.cond3.preheader, %lor.lhs.false74, %lor.lhs.false, %cont64, %if.end135, %for.end53
  %tobool54713 = phi i1 [ %tobool54, %lor.lhs.false74 ], [ %tobool54, %lor.lhs.false ], [ %tobool54, %cont64 ], [ %tobool54, %if.end135 ], [ %tobool54, %for.end53 ], [ false, %for.cond3.preheader ]
  %str2.0.lcssa711 = phi i8* [ %str2.0.lcssa, %lor.lhs.false74 ], [ %str2.0.lcssa, %lor.lhs.false ], [ %str2.0.lcssa, %cont64 ], [ %str2.0.lcssa, %if.end135 ], [ %str2.0.lcssa, %for.end53 ], [ %str.0, %for.cond3.preheader ]
  %92 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 23), align 1, !tbaa !0
  %tobool242 = icmp eq i8 %92, 0
  %or.cond671 = or i1 %tobool54713, %tobool242
  br i1 %or.cond671, label %if.end448, label %cont246

cont246:                                          ; preds = %if.end238
  %call247 = call i8* @uremnode(%union.linkroot* %list, %struct.linknode* %0) nounwind
  %93 = getelementptr inbounds [256 x i8]* %ccl, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %93, i8 0, i32 256, i32 1, i1 false)
  %cmp251688 = icmp ult i8* %incdec.ptr, %str2.0.lcssa711
  br i1 %cmp251688, label %for.body253, label %for.end368

for.body253:                                      ; preds = %cont246, %for.cond250.backedge
  %lastch.0690 = phi i32 [ %lastch.0.be, %for.cond250.backedge ], [ -1, %cont246 ]
  %p244.0689 = phi i8* [ %p244.1, %for.cond250.backedge ], [ %incdec.ptr, %cont246 ]
  %incdec.ptr254 = getelementptr inbounds i8* %p244.0689, i32 1
  %94 = load i8* %p244.0689, align 1, !tbaa !0
  %95 = icmp sgt i8 %94, -1
  br i1 %95, label %cont257, label %ioc_bb256

ioc_bb256:                                        ; preds = %for.body253
  %96 = sext i8 %94 to i64
  call void @__ioc_report_conversion(i32 2508, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %96, i8 1) nounwind
  br label %cont257

cont257:                                          ; preds = %ioc_bb256, %for.body253
  %idxprom = zext i8 %94 to i32
  %arrayidx258 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %97 = load i16* %arrayidx258, align 2, !tbaa !4
  %and264 = and i16 %97, 16
  %tobool265 = icmp eq i16 %and264, 0
  br i1 %tobool265, label %if.end278, label %ioc_bb268

ioc_bb268:                                        ; preds = %cont257
  call void @__ioc_report_conversion(i32 2509, i32 52, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  call void @__ioc_report_conversion(i32 2509, i32 44, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 -124, i8 1) nounwind
  %98 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %idxprom, i32 132)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb272, label %cont273

ioc_bb272:                                        ; preds = %ioc_bb268
  %101 = zext i8 %94 to i64
  call void @__ioc_report_sub_overflow(i32 2509, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %101, i64 132, i8 13) nounwind
  br label %cont273

cont273:                                          ; preds = %ioc_bb268, %ioc_bb272
  %arrayidx274 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %99
  %102 = load i8* %arrayidx274, align 1, !tbaa !0
  %103 = icmp sgt i8 %102, -1
  br i1 %103, label %ioc_bb282.thread, label %if.end278.thread676

if.end278.thread676:                              ; preds = %cont273
  %104 = sext i8 %102 to i64
  call void @__ioc_report_conversion(i32 2509, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %104, i8 1) nounwind
  br label %ioc_bb282

if.end278:                                        ; preds = %cont257
  br i1 %95, label %ioc_bb282.thread, label %ioc_bb282

ioc_bb282.thread:                                 ; preds = %if.end278, %cont273
  %c1.0675.ph = phi i8 [ %94, %if.end278 ], [ %102, %cont273 ]
  call void @__ioc_report_conversion(i32 2510, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  br label %if.end294

ioc_bb282:                                        ; preds = %if.end278, %if.end278.thread676
  %c1.0677 = phi i8 [ %102, %if.end278.thread676 ], [ %94, %if.end278 ]
  %105 = zext i8 %c1.0677 to i64
  call void @__ioc_report_conversion(i32 2510, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 %105, i8 0) nounwind
  call void @__ioc_report_conversion(i32 2510, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp284 = icmp eq i8 %c1.0677, -125
  br i1 %cmp284, label %if.then286, label %if.end294

if.then286:                                       ; preds = %ioc_bb282
  %incdec.ptr287 = getelementptr inbounds i8* %p244.0689, i32 2
  %106 = load i8* %incdec.ptr254, align 1, !tbaa !0
  %conv288 = sext i8 %106 to i32
  %xor = xor i32 %conv288, 32
  %notlhs668 = icmp sgt i8 %106, -1
  %notrhs669 = icmp slt i32 %xor, 256
  %107 = and i1 %notrhs669, %notlhs668
  br i1 %107, label %cont292, label %ioc_bb291

ioc_bb291:                                        ; preds = %if.then286
  %108 = sext i32 %xor to i64
  call void @__ioc_report_conversion(i32 2511, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %108, i8 1) nounwind
  br label %cont292

cont292:                                          ; preds = %ioc_bb291, %if.then286
  %conv293 = trunc i32 %xor to i8
  br label %if.end294

if.end294:                                        ; preds = %ioc_bb282.thread, %cont292, %ioc_bb282
  %p244.1 = phi i8* [ %incdec.ptr287, %cont292 ], [ %incdec.ptr254, %ioc_bb282 ], [ %incdec.ptr254, %ioc_bb282.thread ]
  %c1.1 = phi i8 [ %conv293, %cont292 ], [ %c1.0677, %ioc_bb282 ], [ %c1.0675.ph, %ioc_bb282.thread ]
  %109 = load i8* %p244.1, align 1, !tbaa !0
  %110 = icmp sgt i8 %109, -1
  br i1 %110, label %cont297, label %ioc_bb296

ioc_bb296:                                        ; preds = %if.end294
  %111 = sext i8 %109 to i64
  call void @__ioc_report_conversion(i32 2512, i32 40, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %111, i8 1) nounwind
  br label %cont297

cont297:                                          ; preds = %ioc_bb296, %if.end294
  %idxprom298 = zext i8 %109 to i32
  %arrayidx299 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom298
  %112 = load i16* %arrayidx299, align 2, !tbaa !4
  %and305 = and i16 %112, 16
  %tobool306 = icmp eq i16 %and305, 0
  br i1 %tobool306, label %if.end319, label %ioc_bb309

ioc_bb309:                                        ; preds = %cont297
  call void @__ioc_report_conversion(i32 2513, i32 52, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  call void @__ioc_report_conversion(i32 2513, i32 44, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 -124, i8 1) nounwind
  %113 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %idxprom298, i32 132)
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb313, label %cont314

ioc_bb313:                                        ; preds = %ioc_bb309
  %116 = zext i8 %109 to i64
  call void @__ioc_report_sub_overflow(i32 2513, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %116, i64 132, i8 13) nounwind
  br label %cont314

cont314:                                          ; preds = %ioc_bb309, %ioc_bb313
  %arrayidx315 = getelementptr inbounds [0 x i8]* @ztokens, i32 0, i32 %114
  %117 = load i8* %arrayidx315, align 1, !tbaa !0
  %118 = icmp sgt i8 %117, -1
  br i1 %118, label %ioc_bb324.thread, label %if.end319.thread680

if.end319.thread680:                              ; preds = %cont314
  %119 = sext i8 %117 to i64
  call void @__ioc_report_conversion(i32 2513, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %119, i8 1) nounwind
  br label %ioc_bb324

if.end319:                                        ; preds = %cont297
  br i1 %110, label %ioc_bb324.thread, label %ioc_bb324

ioc_bb324.thread:                                 ; preds = %if.end319, %cont314
  %c2.0679.ph = phi i8 [ %109, %if.end319 ], [ %117, %cont314 ]
  call void @__ioc_report_conversion(i32 2514, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  br label %if.end337

ioc_bb324:                                        ; preds = %if.end319, %if.end319.thread680
  %c2.0681 = phi i8 [ %117, %if.end319.thread680 ], [ %109, %if.end319 ]
  %120 = zext i8 %c2.0681 to i64
  call void @__ioc_report_conversion(i32 2514, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 %120, i8 0) nounwind
  call void @__ioc_report_conversion(i32 2514, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp326 = icmp eq i8 %c2.0681, -125
  br i1 %cmp326, label %if.then328, label %if.end337

if.then328:                                       ; preds = %ioc_bb324
  %arrayidx329 = getelementptr inbounds i8* %p244.1, i32 1
  %121 = load i8* %arrayidx329, align 1, !tbaa !0
  %conv330 = sext i8 %121 to i32
  %xor331 = xor i32 %conv330, 32
  %notlhs = icmp sgt i8 %121, -1
  %notrhs = icmp slt i32 %xor331, 256
  %122 = and i1 %notrhs, %notlhs
  br i1 %122, label %cont335, label %ioc_bb334

ioc_bb334:                                        ; preds = %if.then328
  %123 = sext i32 %xor331 to i64
  call void @__ioc_report_conversion(i32 2515, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %123, i8 1) nounwind
  br label %cont335

cont335:                                          ; preds = %ioc_bb334, %if.then328
  %conv336 = trunc i32 %xor331 to i8
  br label %if.end337

if.end337:                                        ; preds = %ioc_bb324.thread, %cont335, %ioc_bb324
  %c2.1 = phi i8 [ %conv336, %cont335 ], [ %c2.0681, %ioc_bb324 ], [ %c2.0679.ph, %ioc_bb324.thread ]
  %conv338 = zext i8 %c1.1 to i32
  %cmp339 = icmp eq i8 %c1.1, 45
  %cmp342 = icmp sgt i32 %lastch.0690, -1
  %or.cond672 = and i1 %cmp339, %cmp342
  %cmp345 = icmp ult i8* %p244.1, %str2.0.lcssa711
  %or.cond673 = and i1 %or.cond672, %cmp345
  br i1 %or.cond673, label %land.lhs.true347, label %cont364

land.lhs.true347:                                 ; preds = %if.end337
  %conv348 = zext i8 %c2.1 to i32
  %cmp349 = icmp sgt i32 %lastch.0690, %conv348
  br i1 %cmp349, label %cont364, label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.lhs.true347
  %cmp353686 = icmp slt i32 %lastch.0690, %conv348
  br i1 %cmp353686, label %cont356, label %for.cond250.backedge

cont356:                                          ; preds = %while.cond.preheader, %cont358
  %lastch.1687 = phi i32 [ %125, %cont358 ], [ %lastch.0690, %while.cond.preheader ]
  %124 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %lastch.1687, i32 1)
  %125 = extractvalue { i32, i1 } %124, 0
  %126 = extractvalue { i32, i1 } %124, 1
  br i1 %126, label %ioc_bb357, label %cont358

ioc_bb357:                                        ; preds = %cont356
  %127 = sext i32 %lastch.1687 to i64
  call void @__ioc_report_add_overflow(i32 2518, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %127, i64 1, i8 13) nounwind
  br label %cont358

cont358:                                          ; preds = %cont356, %ioc_bb357
  %arrayidx359 = getelementptr inbounds [256 x i8]* %ccl, i32 0, i32 %lastch.1687
  store i8 1, i8* %arrayidx359, align 1, !tbaa !0
  %cmp353 = icmp slt i32 %125, %conv348
  br i1 %cmp353, label %cont356, label %for.cond250.backedge

cont364:                                          ; preds = %if.end337, %land.lhs.true347
  %arrayidx366 = getelementptr inbounds [256 x i8]* %ccl, i32 0, i32 %conv338
  store i8 1, i8* %arrayidx366, align 1, !tbaa !0
  br label %for.cond250.backedge

for.cond250.backedge:                             ; preds = %while.cond.preheader, %cont358, %cont364
  %lastch.0.be = phi i32 [ %conv338, %cont364 ], [ -1, %cont358 ], [ -1, %while.cond.preheader ]
  br i1 %cmp345, label %for.body253, label %for.end368

for.end368:                                       ; preds = %for.cond250.backedge, %cont246
  %sub.ptr.lhs.cast369 = ptrtoint i8* %str.0 to i32
  %sub.ptr.rhs.cast370 = ptrtoint i8* %2 to i32
  %sub.ptr.sub371 = sub i32 %sub.ptr.lhs.cast369, %sub.ptr.rhs.cast370
  %128 = icmp sgt i32 %sub.ptr.sub371, -1
  br i1 %128, label %cont374, label %ioc_bb373

ioc_bb373:                                        ; preds = %for.end368
  %129 = sext i32 %sub.ptr.sub371 to i64
  call void @__ioc_report_conversion(i32 2524, i32 10, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %129, i8 1) nounwind
  br label %cont374

cont374:                                          ; preds = %ioc_bb373, %for.end368
  %incdec.ptr375 = getelementptr inbounds i8* %str2.0.lcssa711, i32 1
  %call376 = call i32 @strlen(i8* %incdec.ptr375) nounwind readonly
  %130 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub371, i32 %call376)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  %133 = zext i32 %sub.ptr.sub371 to i64
  br i1 %132, label %ioc_bb377, label %cont380

ioc_bb377:                                        ; preds = %cont374
  %134 = zext i32 %call376 to i64
  call void @__ioc_report_add_overflow(i32 2525, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %133, i64 %134, i8 5) nounwind
  br label %cont380

cont380:                                          ; preds = %ioc_bb377, %cont374
  %135 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %131, i32 2)
  %136 = extractvalue { i32, i1 } %135, 0
  %137 = extractvalue { i32, i1 } %135, 1
  br i1 %137, label %ioc_bb381, label %for.body389.lr.ph

ioc_bb381:                                        ; preds = %cont380
  %138 = zext i32 %131 to i64
  call void @__ioc_report_add_overflow(i32 2525, i32 33, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %138, i64 2, i8 5) nounwind
  br label %for.body389.lr.ph

for.body389.lr.ph:                                ; preds = %ioc_bb381, %cont380
  %incdec.ptr385683 = getelementptr inbounds [256 x i8]* %ccl, i32 0, i32 255
  %sub.ptr.rhs.cast394 = ptrtoint [256 x i8]* %ccl to i32
  %arrayidx439.sum = add i32 %sub.ptr.sub371, 1
  %139 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %136, i32 1)
  %140 = zext i32 %136 to i64
  %141 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.ptr.sub371, i32 1)
  %arrayidx418.sum = add i32 %sub.ptr.sub371, 2
  %142 = extractvalue { i32, i1 } %139, 1
  %143 = extractvalue { i32, i1 } %141, 1
  br label %for.body389

for.body389:                                      ; preds = %for.cond384.backedge.for.body389_crit_edge, %for.body389.lr.ph
  %incdec.ptr385685 = phi i8* [ %incdec.ptr385683, %for.body389.lr.ph ], [ %incdec.ptr385, %for.cond384.backedge.for.body389_crit_edge ]
  %144 = load i8* %incdec.ptr385685, align 1, !tbaa !0
  %tobool390 = icmp eq i8 %144, 0
  br i1 %tobool390, label %for.cond384.backedge, label %if.then391

if.then391:                                       ; preds = %for.body389
  %sub.ptr.lhs.cast393 = ptrtoint i8* %incdec.ptr385685 to i32
  %sub.ptr.sub395 = sub i32 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast394
  %145 = icmp ult i32 %sub.ptr.sub395, 256
  br i1 %145, label %cont399, label %ioc_bb398

ioc_bb398:                                        ; preds = %if.then391
  %146 = sext i32 %sub.ptr.sub395 to i64
  call void @__ioc_report_conversion(i32 2528, i32 14, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %146, i8 1) nounwind
  br label %cont399

cont399:                                          ; preds = %ioc_bb398, %if.then391
  %conv400 = trunc i32 %sub.ptr.sub395 to i8
  %idxprom401 = and i32 %sub.ptr.sub395, 255
  %arrayidx402 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom401
  %147 = load i16* %arrayidx402, align 2, !tbaa !4
  %and408 = and i16 %147, 4096
  %tobool409 = icmp eq i16 %and408, 0
  br i1 %tobool409, label %if.else434, label %cont412

cont412:                                          ; preds = %cont399
  %148 = extractvalue { i32, i1 } %139, 0
  br i1 %142, label %ioc_bb413, label %cont414

ioc_bb413:                                        ; preds = %cont412
  call void @__ioc_report_add_overflow(i32 2530, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %140, i64 1, i8 5) nounwind
  br label %cont414

cont414:                                          ; preds = %cont412, %ioc_bb413
  %call415 = call i8* @hcalloc(i32 %148) nounwind
  call void @__ioc_report_conversion(i32 2531, i32 29, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  %arrayidx418 = getelementptr inbounds i8* %call415, i32 %sub.ptr.sub371
  store i8 -125, i8* %arrayidx418, align 1, !tbaa !0
  %xor420 = xor i32 %idxprom401, 32
  %149 = icmp ult i32 %xor420, 128
  br i1 %149, label %cont424, label %ioc_bb423

ioc_bb423:                                        ; preds = %cont414
  %150 = zext i32 %xor420 to i64
  call void @__ioc_report_conversion(i32 2532, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 %150, i8 1) nounwind
  br label %cont424

cont424:                                          ; preds = %ioc_bb423, %cont414
  %conv425 = trunc i32 %xor420 to i8
  %151 = extractvalue { i32, i1 } %141, 0
  br i1 %143, label %ioc_bb428, label %cont429

ioc_bb428:                                        ; preds = %cont424
  call void @__ioc_report_add_overflow(i32 2532, i32 18, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %133, i64 1, i8 5) nounwind
  br label %cont429

cont429:                                          ; preds = %cont424, %ioc_bb428
  %arrayidx430 = getelementptr inbounds i8* %call415, i32 %151
  store i8 %conv425, i8* %arrayidx430, align 1, !tbaa !0
  %add.ptr432 = getelementptr inbounds i8* %call415, i32 %arrayidx418.sum
  %call433 = call i8* @strcpy(i8* %add.ptr432, i8* %incdec.ptr375) nounwind
  br label %if.end443

if.else434:                                       ; preds = %cont399
  %call435 = call i8* @hcalloc(i32 %136) nounwind
  %152 = icmp sgt i8 %conv400, -1
  br i1 %152, label %cont438, label %ioc_bb437

ioc_bb437:                                        ; preds = %if.else434
  %153 = zext i32 %idxprom401 to i64
  call void @__ioc_report_conversion(i32 2537, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 %153, i8 0) nounwind
  br label %cont438

cont438:                                          ; preds = %ioc_bb437, %if.else434
  %arrayidx439 = getelementptr inbounds i8* %call435, i32 %sub.ptr.sub371
  store i8 %conv400, i8* %arrayidx439, align 1, !tbaa !0
  %add.ptr441 = getelementptr inbounds i8* %call435, i32 %arrayidx439.sum
  %call442 = call i8* @strcpy(i8* %add.ptr441, i8* %incdec.ptr375) nounwind
  br label %if.end443

if.end443:                                        ; preds = %cont438, %cont429
  %str.1 = phi i8* [ %call415, %cont429 ], [ %call435, %cont438 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %str.1, i8* %2, i32 %sub.ptr.sub371, i32 1, i1 false)
  %call444 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %1, i8* %str.1) nounwind
  br label %for.cond384.backedge

for.cond384.backedge:                             ; preds = %if.end443, %for.body389
  %cmp387 = icmp ugt i8* %incdec.ptr385685, %93
  br i1 %cmp387, label %for.cond384.backedge.for.body389_crit_edge, label %for.end446

for.cond384.backedge.for.body389_crit_edge:       ; preds = %for.cond384.backedge
  %incdec.ptr385 = getelementptr inbounds i8* %incdec.ptr385685, i32 -1
  br label %for.body389

for.end446:                                       ; preds = %for.cond384.backedge
  %next447 = getelementptr inbounds %struct.linknode* %1, i32 0, i32 0
  %154 = load %struct.linknode** %next447, align 4, !tbaa !2
  store %struct.linknode* %154, %struct.linknode** %np, align 4, !tbaa !2
  br label %return

if.end448:                                        ; preds = %if.end238
  %sub.ptr.lhs.cast450 = ptrtoint i8* %str.0 to i32
  %sub.ptr.rhs.cast451 = ptrtoint i8* %2 to i32
  %sub.ptr.sub452 = sub i32 %sub.ptr.lhs.cast450, %sub.ptr.rhs.cast451
  %incdec.ptr453 = getelementptr inbounds i8* %str2.0.lcssa711, i32 1
  %call454 = call i8* @uremnode(%union.linkroot* %list, %struct.linknode* %0) nounwind
  %155 = sext i32 %sub.ptr.sub452 to i64
  br label %for.cond455

for.cond455:                                      ; preds = %cont512, %if.end448
  %str.0.pn = phi i8* [ %str.0, %if.end448 ], [ %str.3, %cont512 ]
  %node.0 = phi %struct.linknode* [ %1, %if.end448 ], [ %184, %cont512 ]
  %str.2 = getelementptr inbounds i8* %str.0.pn, i32 1
  br label %for.cond456

for.cond456:                                      ; preds = %for.inc488, %for.cond455
  %str.3 = phi i8* [ %str.2, %for.cond455 ], [ %incdec.ptr489, %for.inc488 ]
  %cnt.0 = phi i32 [ 0, %for.cond455 ], [ %cnt.1, %for.inc488 ]
  %tobool457 = icmp eq i32 %cnt.0, 0
  br i1 %tobool457, label %lor.rhs, label %for.body468

lor.rhs:                                          ; preds = %for.cond456
  %156 = load i8* %str.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2557, i32 60, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 152, i8 1) nounwind
  %cmp461 = icmp eq i8 %156, -104
  br i1 %cmp461, label %for.end490, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %157 = load i8* %str.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2557, i32 88, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp466 = icmp eq i8 %157, -114
  br i1 %cmp466, label %for.end490, label %for.body468

for.body468:                                      ; preds = %land.rhs, %for.cond456
  %158 = load i8* %str.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2558, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 141, i8 1) nounwind
  %cmp472 = icmp eq i8 %158, -115
  br i1 %cmp472, label %if.then474, label %if.else477

if.then474:                                       ; preds = %for.body468
  %159 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cnt.0, i32 1)
  %160 = extractvalue { i32, i1 } %159, 0
  %161 = extractvalue { i32, i1 } %159, 1
  br i1 %161, label %ioc_bb475, label %for.inc488

ioc_bb475:                                        ; preds = %if.then474
  %162 = sext i32 %cnt.0 to i64
  call void @__ioc_report_add_overflow(i32 2559, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %162, i64 1, i8 13) nounwind
  br label %for.inc488

if.else477:                                       ; preds = %for.body468
  %163 = load i8* %str.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2560, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp481 = icmp eq i8 %163, -114
  br i1 %cmp481, label %if.then483, label %for.inc488

if.then483:                                       ; preds = %if.else477
  %164 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %cnt.0, i32 -1)
  %165 = extractvalue { i32, i1 } %164, 0
  %166 = extractvalue { i32, i1 } %164, 1
  br i1 %166, label %ioc_bb484, label %for.inc488

ioc_bb484:                                        ; preds = %if.then483
  %167 = sext i32 %cnt.0 to i64
  call void @__ioc_report_add_overflow(i32 2561, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %167, i64 -1, i8 13) nounwind
  br label %for.inc488

for.inc488:                                       ; preds = %ioc_bb484, %if.then483, %ioc_bb475, %if.then474, %if.else477
  %cnt.1 = phi i32 [ %cnt.0, %if.else477 ], [ %160, %if.then474 ], [ %160, %ioc_bb475 ], [ %165, %if.then483 ], [ %165, %ioc_bb484 ]
  %incdec.ptr489 = getelementptr inbounds i8* %str.3, i32 1
  br label %for.cond456

for.end490:                                       ; preds = %land.rhs, %lor.rhs
  %sub.ptr.lhs.cast491 = ptrtoint i8* %str.3 to i32
  %sub.ptr.rhs.cast492 = ptrtoint i8* %str.2 to i32
  %sub.ptr.sub493 = sub i32 %sub.ptr.lhs.cast491, %sub.ptr.rhs.cast492
  %168 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub452, i32 %sub.ptr.sub493)
  %169 = extractvalue { i32, i1 } %168, 0
  %170 = extractvalue { i32, i1 } %168, 1
  %171 = sext i32 %sub.ptr.sub493 to i64
  br i1 %170, label %ioc_bb494, label %cont495

ioc_bb494:                                        ; preds = %for.end490
  call void @__ioc_report_add_overflow(i32 2566, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %155, i64 %171, i8 13) nounwind
  br label %cont495

cont495:                                          ; preds = %for.end490, %ioc_bb494
  %172 = icmp sgt i32 %169, -1
  br i1 %172, label %cont498, label %ioc_bb497

ioc_bb497:                                        ; preds = %cont495
  %173 = sext i32 %169 to i64
  call void @__ioc_report_conversion(i32 2566, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %173, i8 1) nounwind
  br label %cont498

cont498:                                          ; preds = %ioc_bb497, %cont495
  %call499 = call i32 @strlen(i8* %incdec.ptr453) nounwind readonly
  %174 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 %call499)
  %175 = extractvalue { i32, i1 } %174, 0
  %176 = extractvalue { i32, i1 } %174, 1
  br i1 %176, label %ioc_bb500, label %cont503

ioc_bb500:                                        ; preds = %cont498
  %177 = zext i32 %call499 to i64
  %178 = zext i32 %169 to i64
  call void @__ioc_report_add_overflow(i32 2566, i32 50, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %178, i64 %177, i8 5) nounwind
  br label %cont503

cont503:                                          ; preds = %ioc_bb500, %cont498
  %179 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %175, i32 1)
  %180 = extractvalue { i32, i1 } %179, 0
  %181 = extractvalue { i32, i1 } %179, 1
  br i1 %181, label %ioc_bb504, label %cont505

ioc_bb504:                                        ; preds = %cont503
  %182 = zext i32 %175 to i64
  call void @__ioc_report_add_overflow(i32 2566, i32 65, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %182, i64 1, i8 5) nounwind
  br label %cont505

cont505:                                          ; preds = %cont503, %ioc_bb504
  %call506 = call i8* @hcalloc(i32 %180) nounwind
  call void @ztrncpy(i8* %call506, i8* %2, i32 %sub.ptr.sub452) nounwind
  %183 = icmp sgt i32 %sub.ptr.sub493, -1
  br i1 %183, label %cont512, label %ioc_bb511

ioc_bb511:                                        ; preds = %cont505
  call void @__ioc_report_conversion(i32 2568, i32 5, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %171, i8 1) nounwind
  br label %cont512

cont512:                                          ; preds = %ioc_bb511, %cont505
  %call513 = call i8* @strncat(i8* %call506, i8* %str.2, i32 %sub.ptr.sub493) nounwind
  %call514 = call i8* @strcat(i8* %call506, i8* %incdec.ptr453) nounwind
  %call515 = call %struct.linknode* @insertlinknode(%union.linkroot* %list, %struct.linknode* %node.0, i8* %call506) nounwind
  %next516 = getelementptr inbounds %struct.linknode* %node.0, i32 0, i32 0
  %184 = load %struct.linknode** %next516, align 4, !tbaa !2
  %185 = load i8* %str.3, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 2573, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 142, i8 1) nounwind
  %cmp520 = icmp eq i8 %185, -114
  br i1 %cmp520, label %for.end526, label %for.cond455

for.end526:                                       ; preds = %cont512
  %next527 = getelementptr inbounds %struct.linknode* %1, i32 0, i32 0
  %186 = load %struct.linknode** %next527, align 4, !tbaa !2
  store %struct.linknode* %186, %struct.linknode** %np, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %for.end526, %for.end446, %for.end235
  ret void
}

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare void @__ioc_report_rem_error(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

declare i8* @strcat(i8*, i8* nocapture) nounwind

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare void @ztrncpy(i8*, i8*, i32)

declare i8* @strncat(i8*, i8* nocapture, i32) nounwind

define i32 @matchpat(i8* %a, i8* %b) nounwind {
entry:
  %call = tail call %struct.patprog* @patcompile(i8* %b, i32 64, i8** null) nounwind
  %tobool = icmp eq %struct.patprog* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0), i8* %b) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pattry(%struct.patprog* %call, i8* %a) nounwind
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.patprog* @patcompile(i8*, i32, i8**)

declare i32 @pattry(%struct.patprog*, i8*)

define i32 @getmatch(i8** %sp, i8* %pat, i32 %fl, i32 %n, i8* %replstr) nounwind {
entry:
  %fl.addr = alloca i32, align 4
  %replstr.addr = alloca i8*, align 4
  store i32 %fl, i32* %fl.addr, align 4, !tbaa !3
  store i8* %replstr, i8** %replstr.addr, align 4, !tbaa !2
  %call = call fastcc %struct.patprog* @compgetmatch(i8* %pat, i32* %fl.addr, i8** %replstr.addr)
  %tobool = icmp eq %struct.patprog* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32* %fl.addr, align 4, !tbaa !3
  %1 = load i8** %replstr.addr, align 4, !tbaa !2
  %call1 = call fastcc i32 @igetmatch(i8** %sp, %struct.patprog* %call, i32 %0, i32 %n, i8* %1, %union.linkroot** null)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

define internal fastcc %struct.patprog* @compgetmatch(i8* %pat, i32* nocapture %flp, i8** %replstrp) nounwind {
entry:
  %0 = load i8** %replstrp, align 4, !tbaa !2
  %tobool = icmp ne i8* %0, null
  %or = select i1 %tobool, i32 136, i32 200
  %1 = load i32* %flp, align 4, !tbaa !3
  %and = and i32 %1, 256
  %tobool1 = icmp ne i32 %and, 0
  %2 = and i32 %1, 5
  %3 = icmp eq i32 %2, 1
  %or.cond = or i1 %tobool1, %3
  %and6 = and i32 %or, 192
  %patflags.0 = select i1 %or.cond, i32 %and6, i32 %or
  %call = tail call %struct.patprog* @patcompile(i8* %pat, i32 %patflags.0, i8** null) nounwind
  %tobool7 = icmp eq %struct.patprog* %call, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %entry
  tail call void (i8*, ...)* @zerr(i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0), i8* %pat) nounwind
  br label %return

if.end9:                                          ; preds = %entry
  %4 = load i8** %replstrp, align 4, !tbaa !2
  %tobool10 = icmp eq i8* %4, null
  br i1 %tobool10, label %return, label %if.then11

if.then11:                                        ; preds = %if.end9
  %patnpar = getelementptr inbounds %struct.patprog* %call, i32 0, i32 7
  %5 = load i32* %patnpar, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %5, 0
  br i1 %tobool12, label %lor.lhs.false13, label %if.then16

lor.lhs.false13:                                  ; preds = %if.then11
  %globend = getelementptr inbounds %struct.patprog* %call, i32 0, i32 5
  %6 = load i32* %globend, align 4, !tbaa !3
  %and14 = and i32 %6, 2048
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %if.else, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13, %if.then11
  %7 = load i32* %flp, align 4, !tbaa !3
  %or17 = or i32 %7, 1024
  store i32 %or17, i32* %flp, align 4, !tbaa !3
  br label %return

if.else:                                          ; preds = %lor.lhs.false13
  tail call void @singsub(i8** %replstrp) nounwind
  %8 = load i8** %replstrp, align 4, !tbaa !2
  tail call void @untokenize(i8* %8) nounwind
  br label %return

return:                                           ; preds = %if.else, %if.then16, %if.end9, %if.then8
  %retval.0 = phi %struct.patprog* [ null, %if.then8 ], [ %call, %if.end9 ], [ %call, %if.then16 ], [ %call, %if.else ]
  ret %struct.patprog* %retval.0
}

define internal fastcc i32 @igetmatch(i8** %sp, %struct.patprog* %p, i32 %fl, i32 %n, i8* %replstr, %union.linkroot** %repllistp) nounwind {
entry:
  %t = alloca i8*, align 4
  %ptr = alloca i8*, align 4
  %0 = load i8** %sp, align 4, !tbaa !2
  %call = call i32 @strlen(i8* %0) nounwind readonly
  %1 = icmp sgt i32 %call, -1
  br i1 %1, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %2 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 2875, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %2, i8 0) nounwind
  %.pre = load i8** %sp, align 4, !tbaa !2
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %3 = phi i8* [ %.pre, %ioc_bb ], [ %0, %entry ]
  %call1 = call i32 @ztrlen(i8* %3) nounwind
  %mustoff = getelementptr inbounds %struct.patprog* %p, i32 0, i32 2
  %4 = load i32* %mustoff, align 4, !tbaa !7
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %cont
  %5 = bitcast %struct.patprog* %p to i8*
  %add.ptr = getelementptr inbounds i8* %5, i32 %4
  %patmlen = getelementptr inbounds %struct.patprog* %p, i32 0, i32 3
  %6 = load i32* %patmlen, align 4, !tbaa !7
  %call3 = call i8* @metafy(i8* %add.ptr, i32 %6, i32 6) nounwind
  %call4 = call i8* @strstr(i8* %0, i8* %call3) nounwind readonly
  %not.tobool5 = icmp ne i8* %call4, null
  br label %if.end7

if.end7:                                          ; preds = %if.then, %cont
  %matched.0 = phi i1 [ true, %cont ], [ %not.tobool5, %if.then ]
  %flags = getelementptr inbounds %struct.patprog* %p, i32 0, i32 6
  %7 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %7, -1537
  store i32 %and, i32* %flags, align 4, !tbaa !3
  %and8 = and i32 %fl, 256
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.end32, label %if.then10

if.then10:                                        ; preds = %if.end7
  br i1 %matched.0, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then10
  %call12 = call i32 @pattry(%struct.patprog* %p, i8* %0) nounwind
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then10
  %8 = phi i1 [ false, %if.then10 ], [ %tobool13, %land.rhs ]
  %9 = load i8** %sp, align 4, !tbaa !2
  %cond = select i1 %8, i32 %call, i32 0
  %cond19 = select i1 %8, i8* %replstr, i8* null
  %call20 = call fastcc i8* @get_match_ret(i8* %9, i32 0, i32 %cond, i32 %fl, i8* %cond19, %union.linkroot* null)
  store i8* %call20, i8** %sp, align 4, !tbaa !2
  %10 = load i8* %call20, align 1, !tbaa !0
  %tobool21 = icmp eq i8 %10, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %land.end
  %and22 = and i32 %fl, 8
  %tobool23 = icmp eq i32 %and22, 0
  %brmerge = or i1 %tobool23, %8
  br i1 %brmerge, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %and26 = and i32 %fl, 16
  %tobool27 = icmp eq i32 %and26, 0
  %.not = xor i1 %8, true
  %brmerge748 = or i1 %tobool27, %.not
  br i1 %brmerge748, label %if.end31, label %return

if.end31:                                         ; preds = %lor.lhs.false, %land.end
  br label %return

if.end32:                                         ; preds = %if.end7
  br i1 %matched.0, label %if.then34, label %if.end462

if.then34:                                        ; preds = %if.end32
  %and35 = and i32 %fl, 7
  switch i32 %and35, label %if.end462 [
    i32 0, label %sw.bb36
    i32 2, label %sw.bb36
    i32 1, label %sw.bb60
    i32 3, label %sw.bb102
    i32 4, label %sw.bb142
    i32 6, label %sw.bb156
    i32 5, label %sw.bb272
    i32 7, label %sw.bb272
  ]

sw.bb36:                                          ; preds = %if.then34, %if.then34
  %call37 = call i32 @pattry(%struct.patprog* %p, i8* %0) nounwind
  %tobool38 = icmp eq i32 %call37, 0
  br i1 %tobool38, label %if.end462, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  %call40 = call i32 @patmatchlen() nounwind
  %and41 = and i32 %fl, 2
  %tobool42 = icmp eq i32 %and41, 0
  br i1 %tobool42, label %land.lhs.true43, label %if.end57

land.lhs.true43:                                  ; preds = %if.then39
  %11 = load i32* %flags, align 4, !tbaa !3
  %and45 = and i32 %11, 32
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end57

if.then47:                                        ; preds = %land.lhs.true43
  call void @mb_metacharinit() nounwind
  store i8* %0, i8** %t, align 4, !tbaa !2
  %add.ptr48 = getelementptr inbounds i8* %0, i32 %call40
  %cmp806 = icmp sgt i32 %call40, 0
  br i1 %cmp806, label %for.body.lr.ph, label %if.end57

for.body.lr.ph:                                   ; preds = %if.then47
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %12 = phi i8* [ %0, %for.body.lr.ph ], [ %18, %for.cond.backedge ]
  %umlen.0807 = phi i32 [ 0, %for.body.lr.ph ], [ %16, %for.cond.backedge ]
  %13 = load i8* %12, align 1, !tbaa !0
  %tobool.i = icmp eq i8 %13, 0
  %14 = load i32* %flags, align 4, !tbaa !3
  %and.i = and i32 %14, -1025
  %or.i = or i32 %14, 1024
  %storemerge.i = select i1 %tobool.i, i32 %and.i, i32 %or.i
  store i32 %storemerge.i, i32* %flags, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call49 = call i32 @pattrylen(%struct.patprog* %p, i8* %0, i32 %sub.ptr.sub, i32 %umlen.0807, i32 0) nounwind
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %if.end53, label %if.then51

if.then51:                                        ; preds = %for.body
  %call52 = call i32 @patmatchlen() nounwind
  br label %if.end57

if.end53:                                         ; preds = %for.body
  %call54 = call fastcc i32 @iincchar(i8** %t)
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %umlen.0807, i32 %call54)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb55, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end53, %ioc_bb55
  %18 = load i8** %t, align 4, !tbaa !2
  %cmp = icmp ult i8* %18, %add.ptr48
  br i1 %cmp, label %for.body, label %if.end57

ioc_bb55:                                         ; preds = %if.end53
  %19 = sext i32 %call54 to i64
  %20 = sext i32 %umlen.0807 to i64
  call void @__ioc_report_add_overflow(i32 2949, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %20, i64 %19, i8 13) nounwind
  br label %for.cond.backedge

if.end57:                                         ; preds = %if.then47, %for.cond.backedge, %land.lhs.true43, %if.then39, %if.then51
  %mlen.0 = phi i32 [ %call40, %if.then39 ], [ %call40, %land.lhs.true43 ], [ %call52, %if.then51 ], [ %call40, %for.cond.backedge ], [ %call40, %if.then47 ]
  %21 = load i8** %sp, align 4, !tbaa !2
  %call58 = call fastcc i8* @get_match_ret(i8* %21, i32 0, i32 %mlen.0, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call58, i8** %sp, align 4, !tbaa !2
  br label %return

sw.bb60:                                          ; preds = %if.then34
  call void @mb_metacharinit() nounwind
  store i8* %0, i8** %t, align 4, !tbaa !2
  %add.ptr62 = getelementptr inbounds i8* %0, i32 %call
  %cmp63808 = icmp sgt i32 %call, 0
  br i1 %cmp63808, label %for.body64.lr.ph, label %if.end92

for.body64.lr.ph:                                 ; preds = %sw.bb60
  %sub.ptr.lhs.cast69 = ptrtoint i8* %add.ptr62 to i32
  %and76 = and i32 %fl, 4096
  %tobool77 = icmp eq i32 %and76, 0
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.cond61.backedge
  %22 = phi i8* [ %0, %for.body64.lr.ph ], [ %33, %for.cond61.backedge ]
  %tmatch.0811 = phi i8* [ null, %for.body64.lr.ph ], [ %tmatch.0., %for.cond61.backedge ]
  %umlen.1810 = phi i32 [ %call1, %for.body64.lr.ph ], [ %26, %for.cond61.backedge ]
  %ioff.0809 = phi i32 [ 0, %for.body64.lr.ph ], [ %31, %for.cond61.backedge ]
  %tobool.i750 = icmp eq i8* %22, %0
  %23 = load i32* %flags, align 4, !tbaa !3
  %and.i752 = and i32 %23, -513
  %or.i753 = or i32 %23, 512
  %storemerge.i754 = select i1 %tobool.i750, i32 %and.i752, i32 %or.i753
  store i32 %storemerge.i754, i32* %flags, align 4
  %sub.ptr.rhs.cast70 = ptrtoint i8* %22 to i32
  %sub.ptr.sub71 = sub i32 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %call72 = call i32 @pattrylen(%struct.patprog* %p, i8* %22, i32 %sub.ptr.sub71, i32 %umlen.1810, i32 %ioff.0809) nounwind
  %tobool73 = icmp eq i32 %call72, 0
  %24 = load i8** %t, align 4, !tbaa !2
  %tmatch.0. = select i1 %tobool73, i8* %tmatch.0811, i8* %24
  br i1 %tobool77, label %if.end79, label %for.end85

if.end79:                                         ; preds = %for.body64
  %call80 = call fastcc i32 @iincchar(i8** %t)
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.1810, i32 %call80)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb81, label %cont82

ioc_bb81:                                         ; preds = %if.end79
  %28 = sext i32 %call80 to i64
  %29 = sext i32 %umlen.1810 to i64
  call void @__ioc_report_sub_overflow(i32 2977, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %29, i64 %28, i8 13) nounwind
  br label %cont82

cont82:                                           ; preds = %if.end79, %ioc_bb81
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.0809, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb83, label %for.cond61.backedge

for.cond61.backedge:                              ; preds = %cont82, %ioc_bb83
  %33 = load i8** %t, align 4, !tbaa !2
  %cmp63 = icmp ult i8* %33, %add.ptr62
  br i1 %cmp63, label %for.body64, label %for.end85

ioc_bb83:                                         ; preds = %cont82
  %34 = sext i32 %ioff.0809 to i64
  call void @__ioc_report_add_overflow(i32 2971, i32 68, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %34, i64 1, i8 13) nounwind
  br label %for.cond61.backedge

for.end85:                                        ; preds = %for.cond61.backedge, %for.body64
  %ioff.0.lcssa = phi i32 [ %ioff.0809, %for.body64 ], [ %31, %for.cond61.backedge ]
  %tobool86 = icmp eq i8* %tmatch.0., null
  br i1 %tobool86, label %if.end92, label %if.then87

if.then87:                                        ; preds = %for.end85
  %35 = load i8** %sp, align 4, !tbaa !2
  %sub.ptr.lhs.cast88 = ptrtoint i8* %tmatch.0. to i32
  %sub.ptr.rhs.cast89 = ptrtoint i8* %0 to i32
  %sub.ptr.sub90 = sub i32 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %call91 = call fastcc i8* @get_match_ret(i8* %35, i32 %sub.ptr.sub90, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call91, i8** %sp, align 4, !tbaa !2
  br label %return

if.end92:                                         ; preds = %sw.bb60, %for.end85
  %ioff.0.lcssa888 = phi i32 [ %ioff.0.lcssa, %for.end85 ], [ 0, %sw.bb60 ]
  %and93 = and i32 %fl, 4096
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end462

land.lhs.true95:                                  ; preds = %if.end92
  %call97 = call i32 @pattrylen(%struct.patprog* %p, i8* %add.ptr62, i32 0, i32 0, i32 %ioff.0.lcssa888) nounwind
  %tobool98 = icmp eq i32 %call97, 0
  br i1 %tobool98, label %if.end462, label %if.then99

if.then99:                                        ; preds = %land.lhs.true95
  %36 = load i8** %sp, align 4, !tbaa !2
  %call100 = call fastcc i8* @get_match_ret(i8* %36, i32 %call, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call100, i8** %sp, align 4, !tbaa !2
  br label %return

sw.bb102:                                         ; preds = %if.then34
  call void @mb_metacharinit() nounwind
  store i8* %0, i8** %t, align 4, !tbaa !2
  %add.ptr104 = getelementptr inbounds i8* %0, i32 %call
  %cmp105816 = icmp sgt i32 %call, 0
  br i1 %cmp105816, label %for.body106.lr.ph, label %for.end132

for.body106.lr.ph:                                ; preds = %sw.bb102
  %sub.ptr.lhs.cast111 = ptrtoint i8* %add.ptr104 to i32
  %and122 = and i32 %fl, 4096
  %tobool123 = icmp eq i32 %and122, 0
  br label %for.body106

for.body106:                                      ; preds = %for.body106.lr.ph, %for.cond103.backedge
  %37 = phi i8* [ %0, %for.body106.lr.ph ], [ %49, %for.cond103.backedge ]
  %umlen.2818 = phi i32 [ %call1, %for.body106.lr.ph ], [ %42, %for.cond103.backedge ]
  %ioff.1817 = phi i32 [ 0, %for.body106.lr.ph ], [ %47, %for.cond103.backedge ]
  %tobool.i755 = icmp eq i8* %37, %0
  %38 = load i32* %flags, align 4, !tbaa !3
  %and.i757 = and i32 %38, -513
  %or.i758 = or i32 %38, 512
  %storemerge.i759 = select i1 %tobool.i755, i32 %and.i757, i32 %or.i758
  store i32 %storemerge.i759, i32* %flags, align 4
  %sub.ptr.rhs.cast112 = ptrtoint i8* %37 to i32
  %sub.ptr.sub113 = sub i32 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %call114 = call i32 @pattrylen(%struct.patprog* %p, i8* %37, i32 %sub.ptr.sub113, i32 %umlen.2818, i32 %ioff.1817) nounwind
  %tobool115 = icmp eq i32 %call114, 0
  br i1 %tobool115, label %if.end121, label %if.then116

if.then116:                                       ; preds = %for.body106
  %sub.ptr.rhs.cast108 = ptrtoint i8* %0 to i32
  %39 = load i8** %sp, align 4, !tbaa !2
  %40 = load i8** %t, align 4, !tbaa !2
  %sub.ptr.lhs.cast117 = ptrtoint i8* %40 to i32
  %sub.ptr.sub119 = sub i32 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast108
  %call120 = call fastcc i8* @get_match_ret(i8* %39, i32 %sub.ptr.sub119, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call120, i8** %sp, align 4, !tbaa !2
  br label %return

if.end121:                                        ; preds = %for.body106
  br i1 %tobool123, label %if.end125, label %if.end462

if.end125:                                        ; preds = %if.end121
  %call126 = call fastcc i32 @iincchar(i8** %t)
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.2818, i32 %call126)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb127, label %cont128

ioc_bb127:                                        ; preds = %if.end125
  %44 = sext i32 %call126 to i64
  %45 = sext i32 %umlen.2818 to i64
  call void @__ioc_report_sub_overflow(i32 3003, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %45, i64 %44, i8 13) nounwind
  br label %cont128

cont128:                                          ; preds = %if.end125, %ioc_bb127
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.1817, i32 1)
  %47 = extractvalue { i32, i1 } %46, 0
  %48 = extractvalue { i32, i1 } %46, 1
  br i1 %48, label %ioc_bb130, label %for.cond103.backedge

for.cond103.backedge:                             ; preds = %cont128, %ioc_bb130
  %49 = load i8** %t, align 4, !tbaa !2
  %cmp105 = icmp ult i8* %49, %add.ptr104
  br i1 %cmp105, label %for.body106, label %land.lhs.true135

ioc_bb130:                                        ; preds = %cont128
  %50 = sext i32 %ioff.1817 to i64
  call void @__ioc_report_add_overflow(i32 2995, i32 68, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %50, i64 1, i8 13) nounwind
  br label %for.cond103.backedge

for.end132:                                       ; preds = %sw.bb102
  %and133.pre = and i32 %fl, 4096
  %tobool134 = icmp eq i32 %and133.pre, 0
  br i1 %tobool134, label %land.lhs.true135, label %if.end462

land.lhs.true135:                                 ; preds = %for.cond103.backedge, %for.end132
  %ioff.1.lcssa890 = phi i32 [ 0, %for.end132 ], [ %47, %for.cond103.backedge ]
  %call137 = call i32 @pattrylen(%struct.patprog* %p, i8* %add.ptr104, i32 0, i32 0, i32 %ioff.1.lcssa890) nounwind
  %tobool138 = icmp eq i32 %call137, 0
  br i1 %tobool138, label %if.end462, label %if.then139

if.then139:                                       ; preds = %land.lhs.true135
  %51 = load i8** %sp, align 4, !tbaa !2
  %call140 = call fastcc i8* @get_match_ret(i8* %51, i32 %call, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call140, i8** %sp, align 4, !tbaa !2
  br label %return

sw.bb142:                                         ; preds = %if.then34
  %tobool.i765 = icmp eq i32 %call, 0
  %or.i768 = or i32 %and, 512
  %storemerge.i769 = select i1 %tobool.i765, i32 %and, i32 %or.i768
  store i32 %storemerge.i769, i32* %flags, align 4
  %and143 = and i32 %fl, 512
  %tobool144 = icmp eq i32 %and143, 0
  br i1 %tobool144, label %land.lhs.true145, label %sw.bb156.thread896

sw.bb156.thread896:                               ; preds = %sw.bb142
  store i8* %0, i8** %t, align 4, !tbaa !2
  br label %if.then159

land.lhs.true145:                                 ; preds = %sw.bb142
  %add.ptr146 = getelementptr inbounds i8* %0, i32 %call
  %call147 = call i32 @pattry(%struct.patprog* %p, i8* %add.ptr146) nounwind
  %tobool148 = icmp eq i32 %call147, 0
  br i1 %tobool148, label %sw.bb156.thread, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %land.lhs.true145
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 -1)
  %53 = extractvalue { i32, i1 } %52, 0
  %54 = extractvalue { i32, i1 } %52, 1
  br i1 %54, label %ioc_bb150, label %cont151

ioc_bb150:                                        ; preds = %land.lhs.true149
  %55 = sext i32 %n to i64
  call void @__ioc_report_add_overflow(i32 3015, i32 51, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %55, i64 -1, i8 13) nounwind
  br label %cont151

cont151:                                          ; preds = %land.lhs.true149, %ioc_bb150
  %tobool152 = icmp eq i32 %53, 0
  br i1 %tobool152, label %if.then153, label %sw.bb156.thread

if.then153:                                       ; preds = %cont151
  %56 = load i8** %sp, align 4, !tbaa !2
  %call154 = call fastcc i8* @get_match_ret(i8* %56, i32 0, i32 0, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call154, i8** %sp, align 4, !tbaa !2
  br label %return

sw.bb156.thread:                                  ; preds = %cont151, %land.lhs.true145
  %n.addr.0.ph = phi i32 [ %53, %cont151 ], [ %n, %land.lhs.true145 ]
  store i8* %0, i8** %t, align 4, !tbaa !2
  br label %if.end171

sw.bb156:                                         ; preds = %if.then34
  %and157.pre = and i32 %fl, 512
  store i8* %0, i8** %t, align 4, !tbaa !2
  %tobool158 = icmp eq i32 %and157.pre, 0
  br i1 %tobool158, label %if.end171, label %if.then159

if.then159:                                       ; preds = %sw.bb156, %sw.bb156.thread896
  %and160 = and i32 %fl, 8192
  %tobool161 = icmp eq i32 %and160, 0
  br i1 %tobool161, label %cond.false164, label %cond.true162

cond.true162:                                     ; preds = %if.then159
  %call163 = call %union.linkroot* @znewlinklist() nounwind
  br label %cond.end166

cond.false164:                                    ; preds = %if.then159
  %call165 = call %union.linkroot* @newlinklist() nounwind
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false164, %cond.true162
  %cond167 = phi %union.linkroot* [ %call163, %cond.true162 ], [ %call165, %cond.false164 ]
  %tobool168 = icmp eq %union.linkroot** %repllistp, null
  br i1 %tobool168, label %if.end171, label %if.then169

if.then169:                                       ; preds = %cond.end166
  store %union.linkroot* %cond167, %union.linkroot** %repllistp, align 4, !tbaa !2
  br label %if.end171

if.end171:                                        ; preds = %sw.bb156, %sw.bb156.thread, %cond.end166, %if.then169
  %tobool158895 = phi i1 [ true, %if.then169 ], [ true, %cond.end166 ], [ false, %sw.bb156 ], [ false, %sw.bb156.thread ]
  %n.addr.0894 = phi i32 [ %n, %if.then169 ], [ %n, %cond.end166 ], [ %n, %sw.bb156 ], [ %n.addr.0.ph, %sw.bb156.thread ]
  %repllist.0 = phi %union.linkroot* [ %cond167, %if.then169 ], [ %cond167, %cond.end166 ], [ null, %sw.bb156 ], [ null, %sw.bb156.thread ]
  call void @mb_metacharinit() nounwind
  %57 = load i8** %t, align 4, !tbaa !2
  %add.ptr173 = getelementptr inbounds i8* %0, i32 %call
  %cmp174843 = icmp ult i8* %57, %add.ptr173
  br i1 %cmp174843, label %for.body175.lr.ph, label %do.end

for.body175.lr.ph:                                ; preds = %if.end171
  %sub.ptr.rhs.cast177 = ptrtoint i8* %0 to i32
  %sub.ptr.lhs.cast180 = ptrtoint i8* %add.ptr173 to i32
  %and188 = and i32 %fl, 2
  %tobool189 = icmp eq i32 %and188, 0
  %tobool158.not = xor i1 %tobool158895, true
  br label %for.body175

for.body175:                                      ; preds = %for.cond172.backedge, %for.body175.lr.ph
  %58 = phi i8* [ %57, %for.body175.lr.ph ], [ %105, %for.cond172.backedge ]
  %n.addr.2847 = phi i32 [ %n.addr.0894, %for.body175.lr.ph ], [ %n.addr.2.be, %for.cond172.backedge ]
  %umlen.4846 = phi i32 [ %call1, %for.body175.lr.ph ], [ %umlen.4.be, %for.cond172.backedge ]
  %ioff.3844 = phi i32 [ 0, %for.body175.lr.ph ], [ %ioff.3.be, %for.cond172.backedge ]
  %tobool.i770 = icmp eq i8* %58, %0
  %59 = load i32* %flags, align 4, !tbaa !3
  %and.i772 = and i32 %59, -513
  %or.i773 = or i32 %59, 512
  %storemerge.i774 = select i1 %tobool.i770, i32 %and.i772, i32 %or.i773
  store i32 %storemerge.i774, i32* %flags, align 4
  %sub.ptr.rhs.cast181 = ptrtoint i8* %58 to i32
  %sub.ptr.sub182 = sub i32 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %call183 = call i32 @pattrylen(%struct.patprog* %p, i8* %58, i32 %sub.ptr.sub182, i32 %umlen.4846, i32 %ioff.3844) nounwind
  %tobool184 = icmp eq i32 %call183, 0
  br i1 %tobool184, label %if.end249, label %if.then185

if.then185:                                       ; preds = %for.body175
  %60 = load i8** %t, align 4, !tbaa !2
  %call186 = call i32 @patmatchlen() nounwind
  %add.ptr187 = getelementptr inbounds i8* %60, i32 %call186
  br i1 %tobool189, label %land.lhs.true190, label %if.end211

land.lhs.true190:                                 ; preds = %if.then185
  %61 = load i32* %flags, align 4, !tbaa !3
  %and192 = and i32 %61, 32
  %tobool193 = icmp eq i32 %and192, 0
  br i1 %tobool193, label %if.then194, label %if.end211

if.then194:                                       ; preds = %land.lhs.true190
  %62 = load i8** %t, align 4, !tbaa !2
  store i8* %62, i8** %ptr, align 4, !tbaa !2
  %cmp196834 = icmp ult i8* %62, %add.ptr187
  br i1 %cmp196834, label %for.body197, label %if.end211

for.body197:                                      ; preds = %if.then194, %for.cond195.backedge.for.body197_crit_edge
  %63 = phi i8* [ %.pre885, %for.cond195.backedge.for.body197_crit_edge ], [ %62, %if.then194 ]
  %64 = phi i32 [ %.pre884, %for.cond195.backedge.for.body197_crit_edge ], [ %61, %if.then194 ]
  %65 = phi i8* [ %71, %for.cond195.backedge.for.body197_crit_edge ], [ %62, %if.then194 ]
  %umlen2.0835 = phi i32 [ %69, %for.cond195.backedge.for.body197_crit_edge ], [ 0, %if.then194 ]
  %66 = load i8* %65, align 1, !tbaa !0
  %tobool.i780 = icmp eq i8 %66, 0
  %and.i782 = and i32 %64, -1025
  %or.i783 = or i32 %64, 1024
  %storemerge.i784 = select i1 %tobool.i780, i32 %and.i782, i32 %or.i783
  store i32 %storemerge.i784, i32* %flags, align 4
  %sub.ptr.lhs.cast198 = ptrtoint i8* %65 to i32
  %sub.ptr.rhs.cast199 = ptrtoint i8* %63 to i32
  %sub.ptr.sub200 = sub i32 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199
  %call201 = call i32 @pattrylen(%struct.patprog* %p, i8* %63, i32 %sub.ptr.sub200, i32 %umlen2.0835, i32 %ioff.3844) nounwind
  %tobool202 = icmp eq i32 %call201, 0
  br i1 %tobool202, label %if.end206, label %if.then203

if.then203:                                       ; preds = %for.body197
  %67 = load i8** %t, align 4, !tbaa !2
  %call204 = call i32 @patmatchlen() nounwind
  %add.ptr205 = getelementptr inbounds i8* %67, i32 %call204
  br label %if.end211

if.end206:                                        ; preds = %for.body197
  %call207 = call fastcc i32 @iincchar(i8** %ptr)
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %umlen2.0835, i32 %call207)
  %69 = extractvalue { i32, i1 } %68, 0
  %70 = extractvalue { i32, i1 } %68, 1
  br i1 %70, label %ioc_bb208, label %for.cond195.backedge

for.cond195.backedge:                             ; preds = %if.end206, %ioc_bb208
  %71 = load i8** %ptr, align 4, !tbaa !2
  %cmp196 = icmp ult i8* %71, %add.ptr187
  br i1 %cmp196, label %for.cond195.backedge.for.body197_crit_edge, label %if.end211

for.cond195.backedge.for.body197_crit_edge:       ; preds = %for.cond195.backedge
  %.pre884 = load i32* %flags, align 4, !tbaa !3
  %.pre885 = load i8** %t, align 4, !tbaa !2
  br label %for.body197

ioc_bb208:                                        ; preds = %if.end206
  %72 = sext i32 %call207 to i64
  %73 = sext i32 %umlen2.0835 to i64
  call void @__ioc_report_add_overflow(i32 3058, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %73, i64 %72, i8 13) nounwind
  br label %for.cond195.backedge

if.end211:                                        ; preds = %if.then194, %for.cond195.backedge, %land.lhs.true190, %if.then185, %if.then203
  %mpos.0 = phi i8* [ %add.ptr187, %if.then185 ], [ %add.ptr187, %land.lhs.true190 ], [ %add.ptr205, %if.then203 ], [ %add.ptr187, %for.cond195.backedge ], [ %add.ptr187, %if.then194 ]
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.2847, i32 -1)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb212, label %cont213

ioc_bb212:                                        ; preds = %if.end211
  %77 = sext i32 %n.addr.2847 to i64
  call void @__ioc_report_add_overflow(i32 3061, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %77, i64 -1, i8 13) nounwind
  br label %cont213

cont213:                                          ; preds = %if.end211, %ioc_bb212
  %tobool214 = icmp ne i32 %75, 0
  %cmp216.not = icmp sgt i32 %75, 0
  %brmerge749 = or i1 %cmp216.not, %tobool158.not
  %or.cond = and i1 %tobool214, %brmerge749
  br i1 %or.cond, label %if.end233, label %if.then220

if.then220:                                       ; preds = %cont213
  %78 = load i8** %sp, align 4, !tbaa !2
  %79 = load i8** %t, align 4, !tbaa !2
  %sub.ptr.lhs.cast221 = ptrtoint i8* %79 to i32
  %sub.ptr.sub223 = sub i32 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast177
  %sub.ptr.lhs.cast224 = ptrtoint i8* %mpos.0 to i32
  %sub.ptr.sub226 = sub i32 %sub.ptr.lhs.cast224, %sub.ptr.rhs.cast177
  %call227 = call fastcc i8* @get_match_ret(i8* %78, i32 %sub.ptr.sub223, i32 %sub.ptr.sub226, i32 %fl, i8* %replstr, %union.linkroot* %repllist.0)
  store i8* %call227, i8** %sp, align 4, !tbaa !2
  %80 = load i8** %t, align 4, !tbaa !2
  %cmp228 = icmp eq i8* %mpos.0, %80
  br i1 %cmp228, label %if.then229, label %if.end233

if.then229:                                       ; preds = %if.then220
  %call230 = call i32 @mb_metacharlenconv(i8* %mpos.0, i32* null) nounwind
  %add.ptr231 = getelementptr inbounds i8* %mpos.0, i32 %call230
  br label %if.end233

if.end233:                                        ; preds = %cont213, %if.then220, %if.then229
  %mpos.1 = phi i8* [ %add.ptr231, %if.then229 ], [ %mpos.0, %if.then220 ], [ %mpos.0, %cont213 ]
  br i1 %tobool158895, label %while.cond.preheader, label %if.then236

while.cond.preheader:                             ; preds = %if.end233
  %81 = load i8** %t, align 4, !tbaa !2
  %cmp243836 = icmp ult i8* %81, %mpos.1
  br i1 %cmp243836, label %while.body, label %for.cond172.backedge

if.then236:                                       ; preds = %if.end233
  br i1 %tobool214, label %if.then238, label %return

if.then238:                                       ; preds = %if.then236
  %call239 = call fastcc i32 @iincchar(i8** %t)
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.4846, i32 %call239)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  br i1 %84, label %ioc_bb240, label %for.inc253

ioc_bb240:                                        ; preds = %if.then238
  %85 = sext i32 %call239 to i64
  %86 = sext i32 %umlen.4846 to i64
  call void @__ioc_report_sub_overflow(i32 3074, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %86, i64 %85, i8 13) nounwind
  br label %for.inc253

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %umlen.5838 = phi i32 [ %92, %while.cond.backedge ], [ %umlen.4846, %while.cond.preheader ]
  %ioff.4837 = phi i32 [ %88, %while.cond.backedge ], [ %ioff.3844, %while.cond.preheader ]
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.4837, i32 1)
  %88 = extractvalue { i32, i1 } %87, 0
  %89 = extractvalue { i32, i1 } %87, 1
  br i1 %89, label %ioc_bb244, label %cont245

ioc_bb244:                                        ; preds = %while.body
  %90 = sext i32 %ioff.4837 to i64
  call void @__ioc_report_add_overflow(i32 3087, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %90, i64 1, i8 13) nounwind
  br label %cont245

cont245:                                          ; preds = %while.body, %ioc_bb244
  %call246 = call fastcc i32 @iincchar(i8** %t)
  %91 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.5838, i32 %call246)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb247, label %while.cond.backedge

while.cond.backedge:                              ; preds = %cont245, %ioc_bb247
  %94 = load i8** %t, align 4, !tbaa !2
  %cmp243 = icmp ult i8* %94, %mpos.1
  br i1 %cmp243, label %while.body, label %for.cond172.backedge

ioc_bb247:                                        ; preds = %cont245
  %95 = sext i32 %call246 to i64
  %96 = sext i32 %umlen.5838 to i64
  call void @__ioc_report_sub_overflow(i32 3088, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %96, i64 %95, i8 13) nounwind
  br label %while.cond.backedge

if.end249:                                        ; preds = %for.body175
  %call250 = call fastcc i32 @iincchar(i8** %t)
  %97 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.4846, i32 %call250)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb251, label %for.inc253

ioc_bb251:                                        ; preds = %if.end249
  %100 = sext i32 %call250 to i64
  %101 = sext i32 %umlen.4846 to i64
  call void @__ioc_report_sub_overflow(i32 3092, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %101, i64 %100, i8 13) nounwind
  br label %for.inc253

for.inc253:                                       ; preds = %ioc_bb251, %if.end249, %ioc_bb240, %if.then238
  %umlen.6 = phi i32 [ %83, %if.then238 ], [ %83, %ioc_bb240 ], [ %98, %if.end249 ], [ %98, %ioc_bb251 ]
  %n.addr.3 = phi i32 [ %75, %if.then238 ], [ %75, %ioc_bb240 ], [ %n.addr.2847, %if.end249 ], [ %n.addr.2847, %ioc_bb251 ]
  %102 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.3844, i32 1)
  %103 = extractvalue { i32, i1 } %102, 0
  %104 = extractvalue { i32, i1 } %102, 1
  br i1 %104, label %ioc_bb254, label %for.cond172.backedge

for.cond172.backedge:                             ; preds = %for.inc253, %while.cond.preheader, %while.cond.backedge, %ioc_bb254
  %ioff.3.be = phi i32 [ %103, %ioc_bb254 ], [ %ioff.3844, %while.cond.preheader ], [ %88, %while.cond.backedge ], [ %103, %for.inc253 ]
  %umlen.4.be = phi i32 [ %umlen.6, %ioc_bb254 ], [ %umlen.4846, %while.cond.preheader ], [ %92, %while.cond.backedge ], [ %umlen.6, %for.inc253 ]
  %n.addr.2.be = phi i32 [ %n.addr.3, %ioc_bb254 ], [ %75, %while.cond.preheader ], [ %75, %while.cond.backedge ], [ %n.addr.3, %for.inc253 ]
  %105 = load i8** %t, align 4, !tbaa !2
  %cmp174 = icmp ult i8* %105, %add.ptr173
  br i1 %cmp174, label %for.body175, label %do.end

ioc_bb254:                                        ; preds = %for.inc253
  %106 = sext i32 %ioff.3844 to i64
  call void @__ioc_report_add_overflow(i32 3037, i32 33, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %106, i64 1, i8 13) nounwind
  br label %for.cond172.backedge

do.end:                                           ; preds = %for.cond172.backedge, %if.end171
  %n.addr.2.lcssa = phi i32 [ %n.addr.0894, %if.end171 ], [ %n.addr.2.be, %for.cond172.backedge ]
  %tobool.i790 = icmp eq i32 %call, 0
  %107 = load i32* %flags, align 4, !tbaa !3
  %and.i792 = and i32 %107, -513
  %or.i793 = or i32 %107, 512
  %storemerge.i794 = select i1 %tobool.i790, i32 %and.i792, i32 %or.i793
  store i32 %storemerge.i794, i32* %flags, align 4
  %and258 = and i32 %fl, 514
  %cmp259 = icmp eq i32 %and258, 2
  br i1 %cmp259, label %land.lhs.true260, label %if.end392

land.lhs.true260:                                 ; preds = %do.end
  %call262 = call i32 @pattry(%struct.patprog* %p, i8* %add.ptr173) nounwind
  %tobool263 = icmp eq i32 %call262, 0
  br i1 %tobool263, label %if.end392, label %land.lhs.true264

land.lhs.true264:                                 ; preds = %land.lhs.true260
  %108 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.2.lcssa, i32 -1)
  %109 = extractvalue { i32, i1 } %108, 0
  %110 = extractvalue { i32, i1 } %108, 1
  br i1 %110, label %ioc_bb265, label %cont266

ioc_bb265:                                        ; preds = %land.lhs.true264
  %111 = sext i32 %n.addr.2.lcssa to i64
  call void @__ioc_report_add_overflow(i32 3101, i32 71, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %111, i64 -1, i8 13) nounwind
  br label %cont266

cont266:                                          ; preds = %land.lhs.true264, %ioc_bb265
  %tobool267 = icmp eq i32 %109, 0
  br i1 %tobool267, label %if.then268, label %if.end392

if.then268:                                       ; preds = %cont266
  %112 = load i8** %sp, align 4, !tbaa !2
  %call269 = call fastcc i8* @get_match_ret(i8* %112, i32 0, i32 0, i32 %fl, i8* %replstr, %union.linkroot* %repllist.0)
  store i8* %call269, i8** %sp, align 4, !tbaa !2
  br label %return

sw.bb272:                                         ; preds = %if.then34, %if.then34
  %and273 = and i32 %fl, 2
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %sw.bb272.if.end286_crit_edge, label %if.then275

sw.bb272.if.end286_crit_edge:                     ; preds = %sw.bb272
  %add.ptr288.pre = getelementptr inbounds i8* %0, i32 %call
  br label %if.end286

if.then275:                                       ; preds = %sw.bb272
  %tobool.i800 = icmp eq i32 %call, 0
  %or.i803 = or i32 %and, 512
  %storemerge.i804 = select i1 %tobool.i800, i32 %and, i32 %or.i803
  store i32 %storemerge.i804, i32* %flags, align 4
  %add.ptr276 = getelementptr inbounds i8* %0, i32 %call
  %call277 = call i32 @pattrylen(%struct.patprog* %p, i8* %add.ptr276, i32 0, i32 0, i32 %call1) nounwind
  %tobool278 = icmp eq i32 %call277, 0
  br i1 %tobool278, label %if.end286, label %land.lhs.true279

land.lhs.true279:                                 ; preds = %if.then275
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n, i32 -1)
  %114 = extractvalue { i32, i1 } %113, 0
  %115 = extractvalue { i32, i1 } %113, 1
  br i1 %115, label %ioc_bb280, label %cont281

ioc_bb280:                                        ; preds = %land.lhs.true279
  %116 = sext i32 %n to i64
  call void @__ioc_report_add_overflow(i32 3115, i32 50, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %116, i64 -1, i8 13) nounwind
  br label %cont281

cont281:                                          ; preds = %land.lhs.true279, %ioc_bb280
  %tobool282 = icmp eq i32 %114, 0
  br i1 %tobool282, label %if.then283, label %if.end286

if.then283:                                       ; preds = %cont281
  %117 = load i8** %sp, align 4, !tbaa !2
  %call284 = call fastcc i8* @get_match_ret(i8* %117, i32 %call, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call284, i8** %sp, align 4, !tbaa !2
  br label %return

if.end286:                                        ; preds = %sw.bb272.if.end286_crit_edge, %cont281, %if.then275
  %add.ptr288.pre-phi = phi i8* [ %add.ptr288.pre, %sw.bb272.if.end286_crit_edge ], [ %add.ptr276, %cont281 ], [ %add.ptr276, %if.then275 ]
  %n.addr.5 = phi i32 [ %n, %sw.bb272.if.end286_crit_edge ], [ %114, %cont281 ], [ %n, %if.then275 ]
  call void @mb_metacharinit() nounwind
  store i8* %0, i8** %t, align 4, !tbaa !2
  %cmp289859 = icmp sgt i32 %call, 0
  br i1 %cmp289859, label %for.body290.lr.ph, label %if.end378

for.body290.lr.ph:                                ; preds = %if.end286
  %sub.ptr.lhs.cast295 = ptrtoint i8* %add.ptr288.pre-phi to i32
  br label %for.body290

for.body290:                                      ; preds = %for.body290.lr.ph, %for.cond287.backedge
  %118 = phi i8* [ %0, %for.body290.lr.ph ], [ %133, %for.cond287.backedge ]
  %tmatch.3863 = phi i8* [ null, %for.body290.lr.ph ], [ %tmatch.4, %for.cond287.backedge ]
  %nmatches.0862 = phi i32 [ 0, %for.body290.lr.ph ], [ %nmatches.1, %for.cond287.backedge ]
  %umlen.8861 = phi i32 [ %call1, %for.body290.lr.ph ], [ %126, %for.cond287.backedge ]
  %ioff.6860 = phi i32 [ 0, %for.body290.lr.ph ], [ %131, %for.cond287.backedge ]
  %tobool.i795 = icmp eq i8* %118, %0
  %119 = load i32* %flags, align 4, !tbaa !3
  %and.i797 = and i32 %119, -513
  %or.i798 = or i32 %119, 512
  %storemerge.i799 = select i1 %tobool.i795, i32 %and.i797, i32 %or.i798
  store i32 %storemerge.i799, i32* %flags, align 4
  %sub.ptr.rhs.cast296 = ptrtoint i8* %118 to i32
  %sub.ptr.sub297 = sub i32 %sub.ptr.lhs.cast295, %sub.ptr.rhs.cast296
  %call298 = call i32 @pattrylen(%struct.patprog* %p, i8* %118, i32 %sub.ptr.sub297, i32 %umlen.8861, i32 %ioff.6860) nounwind
  %tobool299 = icmp eq i32 %call298, 0
  br i1 %tobool299, label %if.end303, label %if.then300

if.then300:                                       ; preds = %for.body290
  %120 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %nmatches.0862, i32 1)
  %121 = extractvalue { i32, i1 } %120, 0
  %122 = extractvalue { i32, i1 } %120, 1
  br i1 %122, label %ioc_bb301, label %cont302

ioc_bb301:                                        ; preds = %if.then300
  %123 = sext i32 %nmatches.0862 to i64
  call void @__ioc_report_add_overflow(i32 3136, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %123, i64 1, i8 13) nounwind
  br label %cont302

cont302:                                          ; preds = %if.then300, %ioc_bb301
  %124 = load i8** %t, align 4, !tbaa !2
  br label %if.end303

if.end303:                                        ; preds = %for.body290, %cont302
  %nmatches.1 = phi i32 [ %121, %cont302 ], [ %nmatches.0862, %for.body290 ]
  %tmatch.4 = phi i8* [ %124, %cont302 ], [ %tmatch.3863, %for.body290 ]
  %call304 = call fastcc i32 @iincchar(i8** %t)
  %125 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.8861, i32 %call304)
  %126 = extractvalue { i32, i1 } %125, 0
  %127 = extractvalue { i32, i1 } %125, 1
  br i1 %127, label %ioc_bb305, label %cont306

ioc_bb305:                                        ; preds = %if.end303
  %128 = sext i32 %call304 to i64
  %129 = sext i32 %umlen.8861 to i64
  call void @__ioc_report_sub_overflow(i32 3139, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %129, i64 %128, i8 13) nounwind
  br label %cont306

cont306:                                          ; preds = %if.end303, %ioc_bb305
  %130 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.6860, i32 1)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb308, label %for.cond287.backedge

for.cond287.backedge:                             ; preds = %cont306, %ioc_bb308
  %133 = load i8** %t, align 4, !tbaa !2
  %cmp289 = icmp ult i8* %133, %add.ptr288.pre-phi
  br i1 %cmp289, label %for.body290, label %for.end310

ioc_bb308:                                        ; preds = %cont306
  %134 = sext i32 %ioff.6860 to i64
  call void @__ioc_report_add_overflow(i32 3133, i32 68, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %134, i64 1, i8 13) nounwind
  br label %for.cond287.backedge

for.end310:                                       ; preds = %for.cond287.backedge
  %tobool311 = icmp eq i32 %nmatches.1, 0
  br i1 %tobool311, label %if.end378, label %if.then312

if.then312:                                       ; preds = %for.end310
  %cmp314 = icmp sgt i32 %n.addr.5, 1
  br i1 %cmp314, label %if.then315, label %if.end344

if.then315:                                       ; preds = %if.then312
  %135 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %nmatches.1, i32 %n.addr.5)
  %136 = extractvalue { i32, i1 } %135, 0
  %137 = extractvalue { i32, i1 } %135, 1
  br i1 %137, label %ioc_bb316, label %cont317

ioc_bb316:                                        ; preds = %if.then315
  %138 = sext i32 %n.addr.5 to i64
  %139 = sext i32 %nmatches.1 to i64
  call void @__ioc_report_sub_overflow(i32 3147, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %139, i64 %138, i8 13) nounwind
  br label %cont317

cont317:                                          ; preds = %if.then315, %ioc_bb316
  call void @mb_metacharinit() nounwind
  store i8* %0, i8** %t, align 4, !tbaa !2
  br i1 %cmp289859, label %for.body321.lr.ph, label %if.end344

for.body321.lr.ph:                                ; preds = %cont317
  %sub.ptr.lhs.cast326 = ptrtoint i8* %add.ptr288.pre-phi to i32
  br label %for.body321

for.body321:                                      ; preds = %for.body321.lr.ph, %for.cond318.backedge
  %140 = phi i8* [ %0, %for.body321.lr.ph ], [ %155, %for.cond318.backedge ]
  %n.addr.6857 = phi i32 [ %136, %for.body321.lr.ph ], [ %n.addr.7, %for.cond318.backedge ]
  %umlen.9856 = phi i32 [ %call1, %for.body321.lr.ph ], [ %148, %for.cond318.backedge ]
  %ioff.7854 = phi i32 [ 0, %for.body321.lr.ph ], [ %153, %for.cond318.backedge ]
  %tobool.i785 = icmp eq i8* %140, %0
  %141 = load i32* %flags, align 4, !tbaa !3
  %and.i787 = and i32 %141, -513
  %or.i788 = or i32 %141, 512
  %storemerge.i789 = select i1 %tobool.i785, i32 %and.i787, i32 %or.i788
  store i32 %storemerge.i789, i32* %flags, align 4
  %sub.ptr.rhs.cast327 = ptrtoint i8* %140 to i32
  %sub.ptr.sub328 = sub i32 %sub.ptr.lhs.cast326, %sub.ptr.rhs.cast327
  %call329 = call i32 @pattrylen(%struct.patprog* %p, i8* %140, i32 %sub.ptr.sub328, i32 %umlen.9856, i32 %ioff.7854) nounwind
  %tobool330 = icmp eq i32 %call329, 0
  br i1 %tobool330, label %if.end336, label %land.lhs.true331

land.lhs.true331:                                 ; preds = %for.body321
  %142 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.6857, i32 -1)
  %143 = extractvalue { i32, i1 } %142, 0
  %144 = extractvalue { i32, i1 } %142, 1
  br i1 %144, label %ioc_bb332, label %cont333

ioc_bb332:                                        ; preds = %land.lhs.true331
  %145 = sext i32 %n.addr.6857 to i64
  call void @__ioc_report_add_overflow(i32 3151, i32 61, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %145, i64 -1, i8 13) nounwind
  br label %cont333

cont333:                                          ; preds = %land.lhs.true331, %ioc_bb332
  %tobool334 = icmp eq i32 %n.addr.6857, 0
  br i1 %tobool334, label %if.then335, label %if.end336

if.then335:                                       ; preds = %cont333
  %146 = load i8** %t, align 4, !tbaa !2
  br label %if.end344

if.end336:                                        ; preds = %cont333, %for.body321
  %n.addr.7 = phi i32 [ %143, %cont333 ], [ %n.addr.6857, %for.body321 ]
  %call337 = call fastcc i32 @iincchar(i8** %t)
  %147 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %umlen.9856, i32 %call337)
  %148 = extractvalue { i32, i1 } %147, 0
  %149 = extractvalue { i32, i1 } %147, 1
  br i1 %149, label %ioc_bb338, label %cont339

ioc_bb338:                                        ; preds = %if.end336
  %150 = sext i32 %call337 to i64
  %151 = sext i32 %umlen.9856 to i64
  call void @__ioc_report_sub_overflow(i32 3155, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %151, i64 %150, i8 13) nounwind
  br label %cont339

cont339:                                          ; preds = %if.end336, %ioc_bb338
  %152 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ioff.7854, i32 1)
  %153 = extractvalue { i32, i1 } %152, 0
  %154 = extractvalue { i32, i1 } %152, 1
  br i1 %154, label %ioc_bb341, label %for.cond318.backedge

for.cond318.backedge:                             ; preds = %cont339, %ioc_bb341
  %155 = load i8** %t, align 4, !tbaa !2
  %cmp320 = icmp ult i8* %155, %add.ptr288.pre-phi
  br i1 %cmp320, label %for.body321, label %if.end344

ioc_bb341:                                        ; preds = %cont339
  %156 = sext i32 %ioff.7854 to i64
  call void @__ioc_report_add_overflow(i32 3149, i32 72, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %156, i64 1, i8 13) nounwind
  br label %for.cond318.backedge

if.end344:                                        ; preds = %cont317, %for.cond318.backedge, %if.then335, %if.then312
  %ioff.8 = phi i32 [ %ioff.7854, %if.then335 ], [ %131, %if.then312 ], [ 0, %cont317 ], [ %153, %for.cond318.backedge ]
  %tmatch.5 = phi i8* [ %146, %if.then335 ], [ %tmatch.4, %if.then312 ], [ %tmatch.4, %cont317 ], [ %tmatch.4, %for.cond318.backedge ]
  %call345 = call i32 @patmatchlen() nounwind
  %add.ptr346 = getelementptr inbounds i8* %tmatch.5, i32 %call345
  br i1 %tobool274, label %if.end370, label %land.lhs.true349

land.lhs.true349:                                 ; preds = %if.end344
  %157 = load i32* %flags, align 4, !tbaa !3
  %and351 = and i32 %157, 32
  %tobool352 = icmp eq i32 %and351, 0
  br i1 %tobool352, label %if.then353, label %if.end370

if.then353:                                       ; preds = %land.lhs.true349
  store i8* %tmatch.5, i8** %t, align 4, !tbaa !2
  %cmp355850 = icmp sgt i32 %call345, 0
  br i1 %cmp355850, label %for.body356.lr.ph, label %if.end370

for.body356.lr.ph:                                ; preds = %if.then353
  %sub.ptr.rhs.cast358 = ptrtoint i8* %tmatch.5 to i32
  br label %for.body356

for.body356:                                      ; preds = %for.cond354.backedge.for.body356_crit_edge, %for.body356.lr.ph
  %158 = phi i32 [ %157, %for.body356.lr.ph ], [ %.pre886, %for.cond354.backedge.for.body356_crit_edge ]
  %159 = phi i8* [ %tmatch.5, %for.body356.lr.ph ], [ %164, %for.cond354.backedge.for.body356_crit_edge ]
  %umlen.10851 = phi i32 [ 0, %for.body356.lr.ph ], [ %162, %for.cond354.backedge.for.body356_crit_edge ]
  %160 = load i8* %159, align 1, !tbaa !0
  %tobool.i775 = icmp eq i8 %160, 0
  %and.i777 = and i32 %158, -1025
  %or.i778 = or i32 %158, 1024
  %storemerge.i779 = select i1 %tobool.i775, i32 %and.i777, i32 %or.i778
  store i32 %storemerge.i779, i32* %flags, align 4
  %sub.ptr.lhs.cast357 = ptrtoint i8* %159 to i32
  %sub.ptr.sub359 = sub i32 %sub.ptr.lhs.cast357, %sub.ptr.rhs.cast358
  %call360 = call i32 @pattrylen(%struct.patprog* %p, i8* %tmatch.5, i32 %sub.ptr.sub359, i32 %umlen.10851, i32 %ioff.8) nounwind
  %tobool361 = icmp eq i32 %call360, 0
  br i1 %tobool361, label %if.end365, label %if.then362

if.then362:                                       ; preds = %for.body356
  %call363 = call i32 @patmatchlen() nounwind
  %add.ptr364 = getelementptr inbounds i8* %tmatch.5, i32 %call363
  br label %if.end370

if.end365:                                        ; preds = %for.body356
  %call366 = call fastcc i32 @iincchar(i8** %t)
  %161 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %umlen.10851, i32 %call366)
  %162 = extractvalue { i32, i1 } %161, 0
  %163 = extractvalue { i32, i1 } %161, 1
  br i1 %163, label %ioc_bb367, label %for.cond354.backedge

for.cond354.backedge:                             ; preds = %if.end365, %ioc_bb367
  %164 = load i8** %t, align 4, !tbaa !2
  %cmp355 = icmp ult i8* %164, %add.ptr346
  br i1 %cmp355, label %for.cond354.backedge.for.body356_crit_edge, label %if.end370

for.cond354.backedge.for.body356_crit_edge:       ; preds = %for.cond354.backedge
  %.pre886 = load i32* %flags, align 4, !tbaa !3
  br label %for.body356

ioc_bb367:                                        ; preds = %if.end365
  %165 = sext i32 %call366 to i64
  %166 = sext i32 %umlen.10851 to i64
  call void @__ioc_report_add_overflow(i32 3167, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %166, i64 %165, i8 13) nounwind
  br label %for.cond354.backedge

if.end370:                                        ; preds = %if.then353, %for.cond354.backedge, %land.lhs.true349, %if.then362, %if.end344
  %mpos313.0 = phi i8* [ %add.ptr346, %if.end344 ], [ %add.ptr346, %land.lhs.true349 ], [ %add.ptr364, %if.then362 ], [ %add.ptr346, %for.cond354.backedge ], [ %add.ptr346, %if.then353 ]
  %167 = load i8** %sp, align 4, !tbaa !2
  %sub.ptr.lhs.cast371 = ptrtoint i8* %tmatch.5 to i32
  %sub.ptr.rhs.cast372 = ptrtoint i8* %0 to i32
  %sub.ptr.sub373 = sub i32 %sub.ptr.lhs.cast371, %sub.ptr.rhs.cast372
  %sub.ptr.lhs.cast374 = ptrtoint i8* %mpos313.0 to i32
  %sub.ptr.sub376 = sub i32 %sub.ptr.lhs.cast374, %sub.ptr.rhs.cast372
  %call377 = call fastcc i8* @get_match_ret(i8* %167, i32 %sub.ptr.sub373, i32 %sub.ptr.sub376, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call377, i8** %sp, align 4, !tbaa !2
  br label %return

if.end378:                                        ; preds = %if.end286, %for.end310
  %tobool.i760 = icmp eq i32 %call, 0
  %168 = load i32* %flags, align 4, !tbaa !3
  %and.i762 = and i32 %168, -513
  %or.i763 = or i32 %168, 512
  %storemerge.i764 = select i1 %tobool.i760, i32 %and.i762, i32 %or.i763
  store i32 %storemerge.i764, i32* %flags, align 4
  br i1 %tobool274, label %land.lhs.true381, label %if.end462

land.lhs.true381:                                 ; preds = %if.end378
  %call383 = call i32 @pattrylen(%struct.patprog* %p, i8* %add.ptr288.pre-phi, i32 0, i32 0, i32 %call1) nounwind
  %tobool384 = icmp eq i32 %call383, 0
  br i1 %tobool384, label %if.end462, label %land.lhs.true385

land.lhs.true385:                                 ; preds = %land.lhs.true381
  %169 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %n.addr.5, i32 -1)
  %170 = extractvalue { i32, i1 } %169, 0
  %171 = extractvalue { i32, i1 } %169, 1
  br i1 %171, label %ioc_bb386, label %cont387

ioc_bb386:                                        ; preds = %land.lhs.true385
  %172 = sext i32 %n.addr.5 to i64
  call void @__ioc_report_add_overflow(i32 3174, i32 63, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %172, i64 -1, i8 13) nounwind
  br label %cont387

cont387:                                          ; preds = %land.lhs.true385, %ioc_bb386
  %tobool388 = icmp eq i32 %170, 0
  br i1 %tobool388, label %if.then389, label %if.end462

if.then389:                                       ; preds = %cont387
  %173 = load i8** %sp, align 4, !tbaa !2
  %call390 = call fastcc i8* @get_match_ret(i8* %173, i32 %call, i32 %call, i32 %fl, i8* %replstr, %union.linkroot* null)
  store i8* %call390, i8** %sp, align 4, !tbaa !2
  br label %return

if.end392:                                        ; preds = %cont266, %land.lhs.true260, %do.end
  %tobool393 = icmp eq %union.linkroot* %repllist.0, null
  br i1 %tobool393, label %if.end462, label %land.lhs.true394

land.lhs.true394:                                 ; preds = %if.end392
  %first = getelementptr inbounds %union.linkroot* %repllist.0, i32 0, i32 0, i32 0
  %174 = load %struct.linknode** %first, align 4, !tbaa !2
  %cmp395 = icmp eq %struct.linknode* %174, null
  br i1 %cmp395, label %if.end462, label %if.then396

if.then396:                                       ; preds = %land.lhs.true394
  %and399 = and i32 %fl, 8192
  %tobool400 = icmp eq i32 %and399, 0
  br i1 %tobool400, label %for.body406, label %return

for.body406:                                      ; preds = %if.then396, %cont414
  %i398.0831 = phi i32 [ %195, %cont414 ], [ 0, %if.then396 ]
  %lleft.0830 = phi i32 [ %190, %cont414 ], [ 0, %if.then396 ]
  %nd.0829 = phi %struct.linknode* [ %196, %cont414 ], [ %174, %if.then396 ]
  %dat = getelementptr inbounds %struct.linknode* %nd.0829, i32 0, i32 2
  %175 = load i8** %dat, align 4, !tbaa !2
  %b = bitcast i8* %175 to i32*
  %176 = load i32* %b, align 4, !tbaa !3
  %177 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %176, i32 %i398.0831)
  %178 = extractvalue { i32, i1 } %177, 0
  %179 = extractvalue { i32, i1 } %177, 1
  br i1 %179, label %ioc_bb407, label %cont408

ioc_bb407:                                        ; preds = %for.body406
  %180 = sext i32 %i398.0831 to i64
  %181 = sext i32 %176 to i64
  call void @__ioc_report_sub_overflow(i32 3198, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %181, i64 %180, i8 13) nounwind
  br label %cont408

cont408:                                          ; preds = %for.body406, %ioc_bb407
  %182 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %lleft.0830, i32 %178)
  %183 = extractvalue { i32, i1 } %182, 0
  %184 = extractvalue { i32, i1 } %182, 1
  br i1 %184, label %ioc_bb409, label %cont410

ioc_bb409:                                        ; preds = %cont408
  %185 = sext i32 %178 to i64
  %186 = sext i32 %lleft.0830 to i64
  call void @__ioc_report_add_overflow(i32 3198, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %186, i64 %185, i8 13) nounwind
  br label %cont410

cont410:                                          ; preds = %cont408, %ioc_bb409
  %replstr411 = getelementptr inbounds i8* %175, i32 8
  %187 = bitcast i8* %replstr411 to i8**
  %188 = load i8** %187, align 4, !tbaa !2
  %call412 = call i32 @strlen(i8* %188) nounwind readonly
  %189 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 %call412)
  %190 = extractvalue { i32, i1 } %189, 0
  %191 = extractvalue { i32, i1 } %189, 1
  br i1 %191, label %ioc_bb413, label %cont414

ioc_bb413:                                        ; preds = %cont410
  %192 = sext i32 %call412 to i64
  %193 = sext i32 %183 to i64
  call void @__ioc_report_add_overflow(i32 3200, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %193, i64 %192, i8 13) nounwind
  br label %cont414

cont414:                                          ; preds = %cont410, %ioc_bb413
  %e = getelementptr inbounds i8* %175, i32 4
  %194 = bitcast i8* %e to i32*
  %195 = load i32* %194, align 4, !tbaa !3
  %next = getelementptr inbounds %struct.linknode* %nd.0829, i32 0, i32 0
  %196 = load %struct.linknode** %next, align 4, !tbaa !2
  %tobool405 = icmp eq %struct.linknode* %196, null
  br i1 %tobool405, label %for.end416, label %for.body406

for.end416:                                       ; preds = %cont414
  %197 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call, i32 %195)
  %198 = extractvalue { i32, i1 } %197, 0
  %199 = extractvalue { i32, i1 } %197, 1
  %200 = sext i32 %call to i64
  br i1 %199, label %ioc_bb417, label %cont418

ioc_bb417:                                        ; preds = %for.end416
  %201 = sext i32 %195 to i64
  call void @__ioc_report_sub_overflow(i32 3205, i32 18, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %200, i64 %201, i8 13) nounwind
  br label %cont418

cont418:                                          ; preds = %for.end416, %ioc_bb417
  %202 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %190, i32 %198)
  %203 = extractvalue { i32, i1 } %202, 0
  %204 = extractvalue { i32, i1 } %202, 1
  br i1 %204, label %ioc_bb419, label %cont420

ioc_bb419:                                        ; preds = %cont418
  %205 = sext i32 %198 to i64
  %206 = sext i32 %190 to i64
  call void @__ioc_report_add_overflow(i32 3205, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %206, i64 %205, i8 13) nounwind
  br label %cont420

cont420:                                          ; preds = %cont418, %ioc_bb419
  %207 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %203, i32 1)
  %208 = extractvalue { i32, i1 } %207, 0
  %209 = extractvalue { i32, i1 } %207, 1
  br i1 %209, label %ioc_bb421, label %cont422

ioc_bb421:                                        ; preds = %cont420
  %210 = sext i32 %203 to i64
  call void @__ioc_report_add_overflow(i32 3206, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %210, i64 1, i8 13) nounwind
  br label %cont422

cont422:                                          ; preds = %cont420, %ioc_bb421
  %211 = icmp sgt i32 %208, -1
  br i1 %211, label %cont424, label %ioc_bb423

ioc_bb423:                                        ; preds = %cont422
  %212 = sext i32 %208 to i64
  call void @__ioc_report_conversion(i32 3206, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %212, i8 1) nounwind
  br label %cont424

cont424:                                          ; preds = %ioc_bb423, %cont422
  %call425 = call i8* @zhalloc(i32 %208) nounwind
  store i8* %call425, i8** %t, align 4, !tbaa !2
  %nd.1823 = load %struct.linknode** %first, align 4
  %tobool429824 = icmp eq %struct.linknode* %nd.1823, null
  br i1 %tobool429824, label %for.end452, label %for.body430

for.body430:                                      ; preds = %while.end448, %cont424
  %213 = phi i8* [ %call425, %cont424 ], [ %.pre881, %while.end448 ]
  %nd.1826 = phi %struct.linknode* [ %nd.1823, %cont424 ], [ %nd.1, %while.end448 ]
  %i398.1825 = phi i32 [ 0, %cont424 ], [ %236, %while.end448 ]
  %dat431 = getelementptr inbounds %struct.linknode* %nd.1826, i32 0, i32 2
  %214 = load i8** %dat431, align 4, !tbaa !2
  %add.ptr432 = getelementptr inbounds i8* %0, i32 %i398.1825
  %b433 = bitcast i8* %214 to i32*
  %215 = load i32* %b433, align 4, !tbaa !3
  %216 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %215, i32 %i398.1825)
  %217 = extractvalue { i32, i1 } %216, 0
  %218 = extractvalue { i32, i1 } %216, 1
  %219 = sext i32 %i398.1825 to i64
  br i1 %218, label %ioc_bb434, label %cont435

ioc_bb434:                                        ; preds = %for.body430
  %220 = sext i32 %215 to i64
  call void @__ioc_report_sub_overflow(i32 3210, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %220, i64 %219, i8 13) nounwind
  br label %cont435

cont435:                                          ; preds = %for.body430, %ioc_bb434
  %221 = icmp sgt i32 %217, -1
  br i1 %221, label %cont438, label %ioc_bb437

ioc_bb437:                                        ; preds = %cont435
  %222 = sext i32 %217 to i64
  call void @__ioc_report_conversion(i32 3210, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %222, i8 1) nounwind
  br label %cont438

cont438:                                          ; preds = %ioc_bb437, %cont435
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %213, i8* %add.ptr432, i32 %217, i32 1, i1 false)
  %223 = load i32* %b433, align 4, !tbaa !3
  %224 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %223, i32 %i398.1825)
  %225 = extractvalue { i32, i1 } %224, 0
  %226 = extractvalue { i32, i1 } %224, 1
  br i1 %226, label %ioc_bb440, label %cont441

ioc_bb440:                                        ; preds = %cont438
  %227 = sext i32 %223 to i64
  call void @__ioc_report_sub_overflow(i32 3211, i32 22, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %227, i64 %219, i8 13) nounwind
  br label %cont441

cont441:                                          ; preds = %cont438, %ioc_bb440
  %228 = load i8** %t, align 4, !tbaa !2
  %add.ptr442 = getelementptr inbounds i8* %228, i32 %225
  store i8* %add.ptr442, i8** %t, align 4, !tbaa !2
  %replstr443 = getelementptr inbounds i8* %214, i32 8
  %229 = bitcast i8* %replstr443 to i8**
  %230 = load i8** %229, align 4, !tbaa !2
  %231 = load i8* %230, align 1, !tbaa !0
  %tobool445821 = icmp eq i8 %231, 0
  br i1 %tobool445821, label %while.end448, label %while.body446

while.body446:                                    ; preds = %cont441, %while.body446.while.body446_crit_edge
  %232 = phi i8* [ %.pre883, %while.body446.while.body446_crit_edge ], [ %add.ptr442, %cont441 ]
  %233 = phi i8 [ %234, %while.body446.while.body446_crit_edge ], [ %231, %cont441 ]
  %ptr397.0822 = phi i8* [ %incdec.ptr, %while.body446.while.body446_crit_edge ], [ %230, %cont441 ]
  %incdec.ptr = getelementptr inbounds i8* %ptr397.0822, i32 1
  %incdec.ptr447 = getelementptr inbounds i8* %232, i32 1
  store i8* %incdec.ptr447, i8** %t, align 4, !tbaa !2
  store i8 %233, i8* %232, align 1, !tbaa !0
  %234 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool445 = icmp eq i8 %234, 0
  br i1 %tobool445, label %while.end448, label %while.body446.while.body446_crit_edge

while.body446.while.body446_crit_edge:            ; preds = %while.body446
  %.pre883 = load i8** %t, align 4, !tbaa !2
  br label %while.body446

while.end448:                                     ; preds = %while.body446, %cont441
  %e449 = getelementptr inbounds i8* %214, i32 4
  %235 = bitcast i8* %e449 to i32*
  %236 = load i32* %235, align 4, !tbaa !3
  %next451 = getelementptr inbounds %struct.linknode* %nd.1826, i32 0, i32 0
  %nd.1 = load %struct.linknode** %next451, align 4
  %tobool429 = icmp eq %struct.linknode* %nd.1, null
  %.pre881 = load i8** %t, align 4, !tbaa !2
  br i1 %tobool429, label %for.end452, label %for.body430

for.end452:                                       ; preds = %while.end448, %cont424
  %237 = phi i8* [ %call425, %cont424 ], [ %.pre881, %while.end448 ]
  %i398.1.lcssa = phi i32 [ 0, %cont424 ], [ %236, %while.end448 ]
  %add.ptr453 = getelementptr inbounds i8* %0, i32 %i398.1.lcssa
  %238 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call, i32 %i398.1.lcssa)
  %239 = extractvalue { i32, i1 } %238, 0
  %240 = extractvalue { i32, i1 } %238, 1
  br i1 %240, label %ioc_bb454, label %cont455

ioc_bb454:                                        ; preds = %for.end452
  %241 = sext i32 %i398.1.lcssa to i64
  call void @__ioc_report_sub_overflow(i32 3217, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %200, i64 %241, i8 13) nounwind
  br label %cont455

cont455:                                          ; preds = %for.end452, %ioc_bb454
  %242 = icmp sgt i32 %239, -1
  br i1 %242, label %cont458, label %ioc_bb457

ioc_bb457:                                        ; preds = %cont455
  %243 = sext i32 %239 to i64
  call void @__ioc_report_conversion(i32 3217, i32 24, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %243, i8 1) nounwind
  br label %cont458

cont458:                                          ; preds = %ioc_bb457, %cont455
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %237, i8* %add.ptr453, i32 %239, i32 1, i1 false)
  %arrayidx = getelementptr inbounds i8* %call425, i32 %203
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  store i8* %call425, i8** %sp, align 4, !tbaa !2
  br label %return

if.end462:                                        ; preds = %if.end121, %if.end32, %sw.bb36, %land.lhs.true95, %if.end92, %land.lhs.true135, %for.end132, %if.end378, %land.lhs.true381, %cont387, %if.then34, %land.lhs.true394, %if.end392
  %and463 = and i32 %fl, 8192
  %tobool464 = icmp eq i32 %and463, 0
  br i1 %tobool464, label %if.end466, label %return

if.end466:                                        ; preds = %if.end462
  %244 = load i8** %sp, align 4, !tbaa !2
  %call467 = call fastcc i8* @get_match_ret(i8* %244, i32 0, i32 0, i32 %fl, i8* null, %union.linkroot* null)
  store i8* %call467, i8** %sp, align 4, !tbaa !2
  %and468 = lshr i32 %fl, 11
  %and468.lobit = and i32 %and468, 1
  %245 = xor i32 %and468.lobit, 1
  br label %return

return:                                           ; preds = %if.then236, %if.end462, %cont458, %if.then396, %land.lhs.true, %lor.lhs.false, %if.end466, %if.then389, %if.end370, %if.then283, %if.then268, %if.then153, %if.then139, %if.then116, %if.then99, %if.then87, %if.end57, %if.end31
  %retval.0 = phi i32 [ 1, %if.end31 ], [ %245, %if.end466 ], [ 1, %if.end370 ], [ 1, %if.then389 ], [ 1, %if.then283 ], [ 1, %if.then268 ], [ 1, %if.then153 ], [ 1, %if.then116 ], [ 1, %if.then139 ], [ 1, %if.then87 ], [ 1, %if.then99 ], [ 1, %if.end57 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 1, %if.then396 ], [ 1, %cont458 ], [ 0, %if.end462 ], [ 1, %if.then236 ]
  ret i32 %retval.0
}

define void @getmatcharr(i8*** nocapture %ap, i8* %pat, i32 %fl, i32 %n, i8* %replstr) nounwind {
entry:
  %fl.addr = alloca i32, align 4
  %replstr.addr = alloca i8*, align 4
  store i32 %fl, i32* %fl.addr, align 4, !tbaa !3
  store i8* %replstr, i8** %replstr.addr, align 4, !tbaa !2
  %0 = load i8*** %ap, align 4, !tbaa !2
  %call = call fastcc %struct.patprog* @compgetmatch(i8* %pat, i32* %fl.addr, i8** %replstr.addr)
  %tobool = icmp eq %struct.patprog* %call, null
  br i1 %tobool, label %while.end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @arrlen(i8** %0) nounwind
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call1, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %if.end
  %4 = sext i32 %call1 to i64
  call void @__ioc_report_add_overflow(i32 2765, i32 54, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %if.end, %ioc_bb
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %cont
  %6 = sext i32 %2 to i64
  call void @__ioc_report_conversion(i32 2765, i32 41, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %cont
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %cont3
  %10 = zext i32 %2 to i64
  call void @__ioc_report_mul_overflow(i32 2765, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @21, i32 0, i32 0), i64 4, i64 %10, i8 5) nounwind
  br label %cont5

cont5:                                            ; preds = %cont3, %ioc_bb4
  %call6 = call i8* @hcalloc(i32 %8) nounwind
  %11 = bitcast i8* %call6 to i8**
  store i8** %11, i8*** %ap, align 4, !tbaa !2
  %12 = load i8** %0, align 4, !tbaa !2
  store i8* %12, i8** %11, align 4, !tbaa !2
  %tobool717 = icmp eq i8* %12, null
  br i1 %tobool717, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cont5
  %13 = load i32* %fl.addr, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %arr.019 = phi i8** [ %0, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %pp.018 = phi i8** [ %11, %while.body.lr.ph ], [ %pp.0.incdec.ptr11, %while.body ]
  %incdec.ptr = getelementptr inbounds i8** %arr.019, i32 1
  %14 = load i8** %replstr.addr, align 4, !tbaa !2
  %call8 = call fastcc i32 @igetmatch(i8** %pp.018, %struct.patprog* %call, i32 %13, i32 %n, i8* %14, %union.linkroot** null)
  %tobool9 = icmp eq i32 %call8, 0
  %incdec.ptr11 = getelementptr inbounds i8** %pp.018, i32 1
  %pp.0.incdec.ptr11 = select i1 %tobool9, i8** %pp.018, i8** %incdec.ptr11
  %15 = load i8** %incdec.ptr, align 4, !tbaa !2
  store i8* %15, i8** %pp.0.incdec.ptr11, align 4, !tbaa !2
  %tobool7 = icmp eq i8* %15, null
  br i1 %tobool7, label %while.end, label %while.body

while.end:                                        ; preds = %cont5, %while.body, %entry
  ret void
}

declare i32 @arrlen(i8**)

define i32 @getmatchlist(i8* %str, %struct.patprog* %p, %union.linkroot** %repllistp) nounwind {
entry:
  %str.addr = alloca i8*, align 4
  store i8* %str, i8** %str.addr, align 4, !tbaa !2
  %call = call fastcc i32 @igetmatch(i8** %str.addr, %struct.patprog* %p, i32 8710, i32 0, i8* null, %union.linkroot** %repllistp)
  ret i32 %call
}

define void @freematchlist(%union.linkroot* %repllist) nounwind {
entry:
  tail call void @freelinklist(%union.linkroot* %repllist, void (i8*)* @freerepldata) nounwind
  ret void
}

declare void @freelinklist(%union.linkroot*, void (i8*)*)

define internal void @freerepldata(i8* %ptr) nounwind {
entry:
  tail call void @zfree(i8* %ptr, i32 12) nounwind
  ret void
}

define void @tokenize(i8* nocapture %s) nounwind {
entry:
  tail call fastcc void @zshtokenize(i8* %s, i32 0)
  ret void
}

define internal fastcc void @zshtokenize(i8* nocapture %s, i32 %flags) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !0
  %tobool165 = icmp eq i8 %0, 0
  br i1 %tobool165, label %for.end131, label %cont.preheader.lr.ph

cont.preheader.lr.ph:                             ; preds = %entry
  %and14 = and i32 %flags, 2
  %tobool15 = icmp eq i32 %and14, 0
  %and = and i32 %flags, 1
  %1 = add i32 %and, 155
  %conv10 = trunc i32 %1 to i8
  br label %cont.preheader

cont.preheader:                                   ; preds = %cont.preheader.lr.ph, %for.inc129
  %2 = phi i8 [ %0, %cont.preheader.lr.ph ], [ %21, %for.inc129 ]
  %bslash.0167 = phi i32 [ 0, %cont.preheader.lr.ph ], [ %bslash.1, %for.inc129 ]
  %s.addr.0166 = phi i8* [ %s, %cont.preheader.lr.ph ], [ %incdec.ptr130, %for.inc129 ]
  %tobool18 = icmp eq i32 %bslash.0167, 0
  br label %cont

cont:                                             ; preds = %while.end66, %while.end, %cont.preheader
  %3 = phi i8 [ %2, %cont.preheader ], [ %8, %while.end ], [ %13, %while.end66 ]
  %s.addr.1 = phi i8* [ %s.addr.0166, %cont.preheader ], [ %incdec.ptr, %while.end ], [ %incdec.ptr52, %while.end66 ]
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %for.inc129 [
    i32 -101, label %sw.bb2
    i32 -100, label %sw.bb2
    i32 92, label %sw.bb2
    i32 60, label %sw.bb13
    i32 40, label %sw.bb78
    i32 124, label %sw.bb78
    i32 41, label %sw.bb78
    i32 62, label %for.cond92
    i32 94, label %for.cond92
    i32 35, label %for.cond92
    i32 126, label %for.cond92
    i32 91, label %for.cond92
    i32 93, label %for.cond92
    i32 42, label %for.cond92
    i32 63, label %for.cond92
    i32 61, label %for.cond92
  ]

sw.bb2:                                           ; preds = %cont, %cont, %cont
  br i1 %tobool18, label %for.inc129, label %if.then

if.then:                                          ; preds = %sw.bb2
  tail call void @__ioc_report_conversion(i32 3349, i32 46, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 156, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3349, i32 62, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 155, i8 1) nounwind
  %arrayidx = getelementptr inbounds i8* %s.addr.1, i32 -1
  store i8 %conv10, i8* %arrayidx, align 1, !tbaa !0
  br label %for.inc129

sw.bb13:                                          ; preds = %cont
  br i1 %tobool15, label %if.end17, label %for.inc129

if.end17:                                         ; preds = %sw.bb13
  br i1 %tobool18, label %while.cond, label %if.then19

if.then19:                                        ; preds = %if.end17
  tail call void @__ioc_report_conversion(i32 3360, i32 46, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 156, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3360, i32 62, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 155, i8 1) nounwind
  %arrayidx34 = getelementptr inbounds i8* %s.addr.1, i32 -1
  store i8 %conv10, i8* %arrayidx34, align 1, !tbaa !0
  br label %for.inc129

while.cond:                                       ; preds = %if.end17, %cont38
  %s.addr.2 = phi i8* [ %incdec.ptr, %cont38 ], [ %s.addr.1, %if.end17 ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.2, i32 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !0
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %cont38, label %ioc_bb37

ioc_bb37:                                         ; preds = %while.cond
  %6 = sext i8 %4 to i64
  tail call void @__ioc_report_conversion(i32 3364, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont38

cont38:                                           ; preds = %ioc_bb37, %while.cond
  %idxprom = zext i8 %4 to i32
  %arrayidx39 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %7 = load i16* %arrayidx39, align 2, !tbaa !4
  %and45 = and i16 %7, 1
  %tobool46 = icmp eq i16 %and45, 0
  br i1 %tobool46, label %while.end, label %while.cond

while.end:                                        ; preds = %cont38
  %8 = load i8* %incdec.ptr, align 1, !tbaa !0
  %cmp = icmp eq i8 %8, 45
  br i1 %cmp, label %while.cond51, label %cont

while.cond51:                                     ; preds = %while.end, %cont55
  %s.addr.3 = phi i8* [ %incdec.ptr52, %cont55 ], [ %incdec.ptr, %while.end ]
  %incdec.ptr52 = getelementptr inbounds i8* %s.addr.3, i32 1
  %9 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %cont55, label %ioc_bb54

ioc_bb54:                                         ; preds = %while.cond51
  %11 = sext i8 %9 to i64
  tail call void @__ioc_report_conversion(i32 3368, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont55

cont55:                                           ; preds = %ioc_bb54, %while.cond51
  %idxprom56 = zext i8 %9 to i32
  %arrayidx57 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom56
  %12 = load i16* %arrayidx57, align 2, !tbaa !4
  %and63 = and i16 %12, 1
  %tobool64 = icmp eq i16 %and63, 0
  br i1 %tobool64, label %while.end66, label %while.cond51

while.end66:                                      ; preds = %cont55
  %13 = load i8* %incdec.ptr52, align 1, !tbaa !0
  %cmp68 = icmp eq i8 %13, 62
  br i1 %cmp68, label %ioc_bb72, label %cont

ioc_bb72:                                         ; preds = %while.end66
  tail call void @__ioc_report_conversion(i32 3372, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 146, i8 1) nounwind
  store i8 -110, i8* %s.addr.1, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 3373, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 147, i8 1) nounwind
  store i8 -109, i8* %incdec.ptr52, align 1, !tbaa !0
  br label %for.inc129

sw.bb78:                                          ; preds = %cont, %cont, %cont
  br i1 %tobool15, label %for.cond92, label %for.inc129

for.cond92:                                       ; preds = %sw.bb78, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %cont, %for.body94
  %t.0 = phi i8* [ %incdec.ptr128, %for.body94 ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %cont ], [ getelementptr inbounds ([0 x i8]* @ztokens, i32 0, i32 0), %sw.bb78 ]
  %14 = load i8* %t.0, align 1, !tbaa !0
  %tobool93 = icmp eq i8 %14, 0
  br i1 %tobool93, label %for.inc129, label %for.body94

for.body94:                                       ; preds = %for.cond92
  %cmp97 = icmp eq i8 %14, %3
  %incdec.ptr128 = getelementptr inbounds i8* %t.0, i32 1
  br i1 %cmp97, label %if.then99, label %for.cond92

if.then99:                                        ; preds = %for.body94
  br i1 %tobool18, label %if.else, label %if.then101

if.then101:                                       ; preds = %if.then99
  tail call void @__ioc_report_conversion(i32 3413, i32 48, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 156, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 3413, i32 64, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 155, i8 1) nounwind
  %arrayidx116 = getelementptr inbounds i8* %s.addr.1, i32 -1
  store i8 %conv10, i8* %arrayidx116, align 1, !tbaa !0
  br label %for.inc129

if.else:                                          ; preds = %if.then99
  %sub.ptr.lhs.cast = ptrtoint i8* %t.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([0 x i8]* @ztokens to i32)
  tail call void @__ioc_report_conversion(i32 3415, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub, i32 -124)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb119, label %cont120

ioc_bb119:                                        ; preds = %if.else
  %18 = sext i32 %sub.ptr.sub to i64
  tail call void @__ioc_report_add_overflow(i32 3415, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %18, i64 -124, i8 13) nounwind
  br label %cont120

cont120:                                          ; preds = %if.else, %ioc_bb119
  %.off = add i32 %16, 128
  %19 = icmp ult i32 %.off, 256
  br i1 %19, label %cont124, label %ioc_bb123

ioc_bb123:                                        ; preds = %cont120
  %20 = sext i32 %16 to i64
  tail call void @__ioc_report_conversion(i32 3415, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 %20, i8 1) nounwind
  br label %cont124

cont124:                                          ; preds = %ioc_bb123, %cont120
  %conv125 = trunc i32 %16 to i8
  store i8 %conv125, i8* %s.addr.1, align 1, !tbaa !0
  br label %for.inc129

for.inc129:                                       ; preds = %for.cond92, %cont, %sw.bb13, %if.then, %if.then19, %ioc_bb72, %if.then101, %cont124, %sw.bb78, %sw.bb2
  %s.addr.5 = phi i8* [ %s.addr.1, %sw.bb2 ], [ %s.addr.1, %if.then101 ], [ %s.addr.1, %cont124 ], [ %s.addr.1, %sw.bb78 ], [ %s.addr.1, %if.then19 ], [ %incdec.ptr52, %ioc_bb72 ], [ %s.addr.1, %if.then ], [ %s.addr.1, %sw.bb13 ], [ %s.addr.1, %cont ], [ %s.addr.1, %for.cond92 ]
  %bslash.1 = phi i32 [ 1, %sw.bb2 ], [ 0, %if.then101 ], [ 0, %cont124 ], [ 0, %sw.bb78 ], [ 0, %if.then19 ], [ 0, %ioc_bb72 ], [ 0, %if.then ], [ 0, %sw.bb13 ], [ 0, %cont ], [ 0, %for.cond92 ]
  %incdec.ptr130 = getelementptr inbounds i8* %s.addr.5, i32 1
  %21 = load i8* %incdec.ptr130, align 1, !tbaa !0
  %tobool = icmp eq i8 %21, 0
  br i1 %tobool, label %for.end131, label %cont.preheader

for.end131:                                       ; preds = %for.inc129, %entry
  ret void
}

define void @shtokenize(i8* nocapture %s) nounwind {
entry:
  %0 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 149), align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  %. = select i1 %tobool, i32 1, i32 3
  tail call fastcc void @zshtokenize(i8* %s, i32 %.)
  ret void
}

define void @remnulargs(i8* nocapture %s) nounwind {
entry:
  %0 = load i8* %s, align 1, !tbaa !0
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end56, label %ioc_bb

ioc_bb:                                           ; preds = %entry, %while.cond.backedge
  %1 = phi i8 [ %2, %while.cond.backedge ], [ %0, %entry ]
  %s.pn = phi i8* [ %incdec.ptr80, %while.cond.backedge ], [ %s, %entry ]
  %incdec.ptr80 = getelementptr inbounds i8* %s.pn, i32 1
  tail call void @__ioc_report_conversion(i32 3431, i32 24, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 156, i8 1) nounwind
  %cmp = icmp eq i8 %1, -100
  br i1 %cmp, label %while.cond.backedge, label %if.else

while.cond.backedge:                              ; preds = %ioc_bb, %cont5
  %2 = load i8* %incdec.ptr80, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %2, 0
  br i1 %tobool1, label %if.end56, label %ioc_bb

if.else:                                          ; preds = %ioc_bb
  %3 = icmp sgt i8 %1, -1
  br i1 %3, label %cont5, label %ioc_bb4

ioc_bb4:                                          ; preds = %if.else
  %4 = sext i8 %1 to i64
  tail call void @__ioc_report_conversion(i32 3440, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont5

cont5:                                            ; preds = %ioc_bb4, %if.else
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom
  %5 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %5, 16384
  %tobool11 = icmp eq i16 %and, 0
  br i1 %tobool11, label %while.cond.backedge, label %while.cond13.outer

while.cond13.outer:                               ; preds = %cont5, %while.cond13.outer.backedge
  %s.addr.1.ph = phi i8* [ %incdec.ptr14, %while.cond13.outer.backedge ], [ %incdec.ptr80, %cont5 ]
  %t.0.ph = phi i8* [ %t.0.ph.be, %while.cond13.outer.backedge ], [ %s.pn, %cont5 ]
  br label %while.cond13

while.cond13:                                     ; preds = %while.cond13.outer, %cont29
  %s.addr.1 = phi i8* [ %incdec.ptr14, %cont29 ], [ %s.addr.1.ph, %while.cond13.outer ]
  %incdec.ptr14 = getelementptr inbounds i8* %s.addr.1, i32 1
  %6 = load i8* %s.addr.1, align 1, !tbaa !0
  %tobool15 = icmp eq i8 %6, 0
  br i1 %tobool15, label %cont43, label %ioc_bb18

ioc_bb18:                                         ; preds = %while.cond13
  tail call void @__ioc_report_conversion(i32 3443, i32 28, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 156, i8 1) nounwind
  %cmp20 = icmp eq i8 %6, -100
  br i1 %cmp20, label %while.cond13.outer.backedge, label %if.else26

while.cond13.outer.backedge:                      ; preds = %cont29, %ioc_bb18
  %storemerge = phi i8 [ 92, %ioc_bb18 ], [ %6, %cont29 ]
  %t.0.ph.be = getelementptr inbounds i8* %t.0.ph, i32 1
  store i8 %storemerge, i8* %t.0.ph, align 1
  br label %while.cond13.outer

if.else26:                                        ; preds = %ioc_bb18
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %cont29, label %ioc_bb28

ioc_bb28:                                         ; preds = %if.else26
  %8 = sext i8 %6 to i64
  tail call void @__ioc_report_conversion(i32 3445, i32 45, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb28, %if.else26
  %idxprom30 = zext i8 %6 to i32
  %arrayidx31 = getelementptr inbounds [256 x i16]* @typtab, i32 0, i32 %idxprom30
  %9 = load i16* %arrayidx31, align 2, !tbaa !4
  %and37 = and i16 %9, 16384
  %tobool38 = icmp eq i16 %and37, 0
  br i1 %tobool38, label %while.cond13.outer.backedge, label %while.cond13

cont43:                                           ; preds = %while.cond13
  store i8 0, i8* %t.0.ph, align 1, !tbaa !0
  %10 = load i8* %s, align 1, !tbaa !0
  %tobool44 = icmp eq i8 %10, 0
  br i1 %tobool44, label %ioc_bb46, label %if.end56

ioc_bb46:                                         ; preds = %cont43
  tail call void @__ioc_report_conversion(i32 3450, i32 26, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 157, i8 1) nounwind
  store i8 -99, i8* %s, align 1, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8* %s, i32 1
  store i8 0, i8* %arrayidx51, align 1, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %while.cond.backedge, %cont43, %entry, %ioc_bb46
  ret void
}

declare i8* @unmetafy(i8*, i32*)

declare noalias %struct.__dirstream* @opendir(i8* nocapture) nounwind

declare %struct.dirent* @readdir64(%struct.__dirstream*)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @closedir(%struct.__dirstream* nocapture) nounwind

declare void @unsetparam(i8*)

declare i8** @getaparam(i8*)

declare i8** @gethparam(i8*)

declare i32 @time(i32*) nounwind

declare i32 @mode_to_octal(i32)

declare i32 @ztrlen(i8*)

declare i8* @metafy(i8*, i32, i32)

declare i8* @strstr(i8*, i8* nocapture) nounwind readonly

define internal fastcc i8* @get_match_ret(i8* %s, i32 %b, i32 %e, i32 %fl, i8* %replstr, %union.linkroot* %repllist) nounwind {
entry:
  %replstr.addr = alloca i8*, align 4
  %buf = alloca [80 x i8], align 1
  store i8* %replstr, i8** %replstr.addr, align 4, !tbaa !2
  %call = call i32 @strlen(i8* %s) nounwind readonly
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = zext i32 %call to i64
  call void @__ioc_report_conversion(i32 2611, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %1, i8 0) nounwind
  %.pr = load i8** %replstr.addr, align 4, !tbaa !2
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %2 = phi i8* [ %.pr, %ioc_bb ], [ %replstr, %entry ]
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cont
  %and = and i32 %fl, 8192
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.end29, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cont
  %and2 = and i32 %fl, 1024
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = call i8* @dupstring(i8* %2) nounwind
  store i8* %call5, i8** %replstr.addr, align 4, !tbaa !2
  call void @singsub(i8** %replstr.addr) nounwind
  %3 = load i8** %replstr.addr, align 4, !tbaa !2
  call void @untokenize(i8* %3) nounwind
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then4
  %and6 = and i32 %fl, 8704
  %tobool7 = icmp eq i32 %and6, 0
  %tobool8 = icmp eq %union.linkroot* %repllist, null
  %or.cond = or i1 %tobool7, %tobool8
  br i1 %or.cond, label %if.end25, label %if.then9

if.then9:                                         ; preds = %if.end
  %and10 = and i32 %fl, 8192
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %call12 = call i8* @zalloc(i32 12) nounwind
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %call13 = call i8* @zhalloc(i32 12) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call12, %cond.true ], [ %call13, %cond.false ]
  %b14 = bitcast i8* %cond to i32*
  store i32 %b, i32* %b14, align 4, !tbaa !3
  %e15 = getelementptr inbounds i8* %cond, i32 4
  %4 = bitcast i8* %e15 to i32*
  store i32 %e, i32* %4, align 4, !tbaa !3
  %5 = load i8** %replstr.addr, align 4, !tbaa !2
  %replstr16 = getelementptr inbounds i8* %cond, i32 8
  %6 = bitcast i8* %replstr16 to i8**
  store i8* %5, i8** %6, align 4, !tbaa !2
  %last = getelementptr inbounds %union.linkroot* %repllist, i32 0, i32 0, i32 1
  %7 = load %struct.linknode** %last, align 4, !tbaa !2
  br i1 %tobool11, label %if.then19, label %if.else

if.then19:                                        ; preds = %cond.end
  %call20 = call %struct.linknode* @zinsertlinknode(%union.linkroot* %repllist, %struct.linknode* %7, i8* %cond) nounwind
  br label %return

if.else:                                          ; preds = %cond.end
  %call23 = call %struct.linknode* @insertlinknode(%union.linkroot* %repllist, %struct.linknode* %7, i8* %cond) nounwind
  br label %return

if.end25:                                         ; preds = %if.end
  %8 = load i8** %replstr.addr, align 4, !tbaa !2
  %call26 = call i32 @strlen(i8* %8) nounwind readonly
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false, %if.end25
  %ll.0 = phi i32 [ %call26, %if.end25 ], [ 0, %lor.lhs.false ]
  %and30 = and i32 %fl, 8
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end29
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %e, i32 %b)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb33, label %cont34

ioc_bb33:                                         ; preds = %if.then32
  %12 = sext i32 %b to i64
  %13 = sext i32 %e to i64
  call void @__ioc_report_sub_overflow(i32 2637, i32 18, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %13, i64 %12, i8 13) nounwind
  br label %cont34

cont34:                                           ; preds = %if.then32, %ioc_bb33
  %14 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 1)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb35, label %cont36

ioc_bb35:                                         ; preds = %cont34
  %17 = sext i32 %10 to i64
  call void @__ioc_report_add_overflow(i32 2637, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 1, i64 %17, i8 13) nounwind
  br label %cont36

cont36:                                           ; preds = %cont34, %ioc_bb35
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.0, i32 %15)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb37, label %if.end39

ioc_bb37:                                         ; preds = %cont36
  %21 = sext i32 %15 to i64
  %22 = sext i32 %ll.0 to i64
  call void @__ioc_report_add_overflow(i32 2637, i32 8, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %22, i64 %21, i8 13) nounwind
  br label %if.end39

if.end39:                                         ; preds = %ioc_bb37, %cont36, %if.end29
  %ll.1 = phi i32 [ %ll.0, %if.end29 ], [ %19, %cont36 ], [ %19, %ioc_bb37 ]
  %and40 = and i32 %fl, 16
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end39
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %e, i32 %b)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb43, label %cont44

ioc_bb43:                                         ; preds = %if.then42
  %26 = sext i32 %b to i64
  %27 = sext i32 %e to i64
  call void @__ioc_report_sub_overflow(i32 2640, i32 23, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %27, i64 %26, i8 13) nounwind
  br label %cont44

cont44:                                           ; preds = %if.then42, %ioc_bb43
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call, i32 %24)
  %29 = extractvalue { i32, i1 } %28, 0
  %30 = extractvalue { i32, i1 } %28, 1
  br i1 %30, label %ioc_bb45, label %cont46

ioc_bb45:                                         ; preds = %cont44
  %31 = sext i32 %24 to i64
  %32 = sext i32 %call to i64
  call void @__ioc_report_sub_overflow(i32 2640, i32 18, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %32, i64 %31, i8 13) nounwind
  br label %cont46

cont46:                                           ; preds = %cont44, %ioc_bb45
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb47, label %cont48

ioc_bb47:                                         ; preds = %cont46
  %36 = sext i32 %29 to i64
  call void @__ioc_report_add_overflow(i32 2640, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 1, i64 %36, i8 13) nounwind
  br label %cont48

cont48:                                           ; preds = %cont46, %ioc_bb47
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.1, i32 %34)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb49, label %if.end51

ioc_bb49:                                         ; preds = %cont48
  %40 = sext i32 %34 to i64
  %41 = sext i32 %ll.1 to i64
  call void @__ioc_report_add_overflow(i32 2640, i32 8, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %41, i64 %40, i8 13) nounwind
  br label %if.end51

if.end51:                                         ; preds = %ioc_bb49, %cont48, %if.end39
  %ll.2 = phi i32 [ %ll.1, %if.end39 ], [ %38, %cont48 ], [ %38, %ioc_bb49 ]
  %and52 = and i32 %fl, 32
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %if.end65, label %if.then54

if.then54:                                        ; preds = %if.end51
  %arraydecay = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %b, i32 1)
  %43 = extractvalue { i32, i1 } %42, 0
  %44 = extractvalue { i32, i1 } %42, 1
  br i1 %44, label %ioc_bb55, label %cont56

ioc_bb55:                                         ; preds = %if.then54
  %45 = sext i32 %b to i64
  call void @__ioc_report_add_overflow(i32 2643, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %45, i64 1, i8 13) nounwind
  br label %cont56

cont56:                                           ; preds = %if.then54, %ioc_bb55
  %call57 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i32 %43) nounwind
  %call59 = call i32 @strlen(i8* %arraydecay) nounwind readonly
  %46 = icmp sgt i32 %call59, -1
  br i1 %46, label %cont62, label %ioc_bb61

ioc_bb61:                                         ; preds = %cont56
  %47 = zext i32 %call59 to i64
  call void @__ioc_report_conversion(i32 2644, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %47, i8 0) nounwind
  br label %cont62

cont62:                                           ; preds = %ioc_bb61, %cont56
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.2, i32 %call59)
  %49 = extractvalue { i32, i1 } %48, 0
  %50 = extractvalue { i32, i1 } %48, 1
  br i1 %50, label %ioc_bb63, label %if.end65

ioc_bb63:                                         ; preds = %cont62
  %51 = sext i32 %call59 to i64
  %52 = sext i32 %ll.2 to i64
  call void @__ioc_report_add_overflow(i32 2644, i32 8, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %52, i64 %51, i8 13) nounwind
  br label %if.end65

if.end65:                                         ; preds = %ioc_bb63, %cont62, %if.end51
  %ll.3 = phi i32 [ %ll.2, %if.end51 ], [ %49, %cont62 ], [ %49, %ioc_bb63 ]
  %bl.0 = phi i32 [ 0, %if.end51 ], [ %call59, %cont62 ], [ %call59, %ioc_bb63 ]
  %and66 = and i32 %fl, 64
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %if.end80, label %if.then68

if.then68:                                        ; preds = %if.end65
  %arraydecay69 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 %bl.0
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %e, i32 1)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb70, label %cont71

ioc_bb70:                                         ; preds = %if.then68
  %56 = sext i32 %e to i64
  call void @__ioc_report_add_overflow(i32 2648, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %56, i64 1, i8 13) nounwind
  br label %cont71

cont71:                                           ; preds = %if.then68, %ioc_bb70
  %call72 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i32 %54) nounwind
  %call74 = call i32 @strlen(i8* %arraydecay69) nounwind readonly
  %57 = icmp sgt i32 %call74, -1
  br i1 %57, label %cont77, label %ioc_bb76

ioc_bb76:                                         ; preds = %cont71
  %58 = zext i32 %call74 to i64
  call void @__ioc_report_conversion(i32 2649, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %58, i8 0) nounwind
  br label %cont77

cont77:                                           ; preds = %ioc_bb76, %cont71
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.3, i32 %call74)
  %60 = extractvalue { i32, i1 } %59, 0
  %61 = extractvalue { i32, i1 } %59, 1
  br i1 %61, label %ioc_bb78, label %if.end80

ioc_bb78:                                         ; preds = %cont77
  %62 = sext i32 %call74 to i64
  %63 = sext i32 %ll.3 to i64
  call void @__ioc_report_add_overflow(i32 2649, i32 8, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %63, i64 %62, i8 13) nounwind
  br label %if.end80

if.end80:                                         ; preds = %ioc_bb78, %cont77, %if.end65
  %ll.4 = phi i32 [ %ll.3, %if.end65 ], [ %60, %cont77 ], [ %60, %ioc_bb78 ]
  %bl.1 = phi i32 [ %bl.0, %if.end65 ], [ %call74, %cont77 ], [ %call74, %ioc_bb78 ]
  %and81 = and i32 %fl, 128
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %if.end96, label %if.then83

if.then83:                                        ; preds = %if.end80
  %arraydecay84 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %add.ptr85 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 %bl.1
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %e, i32 %b)
  %65 = extractvalue { i32, i1 } %64, 0
  %66 = extractvalue { i32, i1 } %64, 1
  br i1 %66, label %ioc_bb86, label %cont87

ioc_bb86:                                         ; preds = %if.then83
  %67 = sext i32 %b to i64
  %68 = sext i32 %e to i64
  call void @__ioc_report_sub_overflow(i32 2653, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %68, i64 %67, i8 13) nounwind
  br label %cont87

cont87:                                           ; preds = %if.then83, %ioc_bb86
  %call88 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr85, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i32 %65) nounwind
  %call90 = call i32 @strlen(i8* %arraydecay84) nounwind readonly
  %69 = icmp sgt i32 %call90, -1
  br i1 %69, label %cont93, label %ioc_bb92

ioc_bb92:                                         ; preds = %cont87
  %70 = zext i32 %call90 to i64
  call void @__ioc_report_conversion(i32 2654, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %70, i8 0) nounwind
  br label %cont93

cont93:                                           ; preds = %ioc_bb92, %cont87
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ll.4, i32 %call90)
  %72 = extractvalue { i32, i1 } %71, 0
  %73 = extractvalue { i32, i1 } %71, 1
  br i1 %73, label %ioc_bb94, label %if.end96

ioc_bb94:                                         ; preds = %cont93
  %74 = sext i32 %call90 to i64
  %75 = sext i32 %ll.4 to i64
  call void @__ioc_report_add_overflow(i32 2654, i32 8, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %75, i64 %74, i8 13) nounwind
  br label %if.end96

if.end96:                                         ; preds = %ioc_bb94, %cont93, %if.end80
  %ll.5 = phi i32 [ %ll.4, %if.end80 ], [ %72, %cont93 ], [ %72, %ioc_bb94 ]
  %bl.2 = phi i32 [ %bl.1, %if.end80 ], [ %call90, %cont93 ], [ %call90, %ioc_bb94 ]
  %tobool97 = icmp ne i32 %bl.2, 0
  br i1 %tobool97, label %cont100, label %if.end103

cont100:                                          ; preds = %if.end96
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %bl.2, i32 1)
  %77 = extractvalue { i32, i1 } %76, 0
  %78 = extractvalue { i32, i1 } %76, 1
  br i1 %78, label %ioc_bb101, label %cont102

ioc_bb101:                                        ; preds = %cont100
  %79 = sext i32 %bl.2 to i64
  call void @__ioc_report_sub_overflow(i32 2657, i32 12, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %79, i64 1, i8 13) nounwind
  br label %cont102

cont102:                                          ; preds = %cont100, %ioc_bb101
  %arrayidx = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 %77
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  br label %if.end103

if.end103:                                        ; preds = %cont102, %if.end96
  %80 = icmp sgt i32 %ll.5, -1
  br i1 %80, label %cont105, label %ioc_bb104

ioc_bb104:                                        ; preds = %if.end103
  %81 = sext i32 %ll.5 to i64
  call void @__ioc_report_conversion(i32 2658, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %81, i8 1) nounwind
  br label %cont105

cont105:                                          ; preds = %ioc_bb104, %if.end103
  %call106 = call i8* @hcalloc(i32 %ll.5) nounwind
  br i1 %tobool31, label %if.then109, label %if.end114

if.then109:                                       ; preds = %cont105
  %cmp241 = icmp slt i32 %b, %e
  br i1 %cmp241, label %for.body.lr.ph, label %if.end114

for.body.lr.ph:                                   ; preds = %if.then109
  %add.ptr110 = getelementptr inbounds i8* %s, i32 %b
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0244 = phi i32 [ %b, %for.body.lr.ph ], [ %84, %for.cond.backedge ]
  %p.0243 = phi i8* [ %add.ptr110, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.backedge ]
  %rr.0242 = phi i8* [ %call106, %for.body.lr.ph ], [ %incdec.ptr111, %for.cond.backedge ]
  %incdec.ptr = getelementptr inbounds i8* %p.0243, i32 1
  %82 = load i8* %p.0243, align 1, !tbaa !0
  %incdec.ptr111 = getelementptr inbounds i8* %rr.0242, i32 1
  store i8 %82, i8* %rr.0242, align 1, !tbaa !0
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0244, i32 1)
  %84 = extractvalue { i32, i1 } %83, 0
  %85 = extractvalue { i32, i1 } %83, 1
  br i1 %85, label %ioc_bb112, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb112
  %cmp = icmp slt i32 %84, %e
  br i1 %cmp, label %for.body, label %if.end114

ioc_bb112:                                        ; preds = %for.body
  %86 = sext i32 %i.0244 to i64
  call void @__ioc_report_add_overflow(i32 2661, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %86, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.end114:                                        ; preds = %if.then109, %for.cond.backedge, %cont105
  %rr.1 = phi i8* [ %call106, %cont105 ], [ %call106, %if.then109 ], [ %incdec.ptr111, %for.cond.backedge ]
  %t.0 = phi i32 [ 0, %cont105 ], [ 1, %if.then109 ], [ 1, %for.cond.backedge ]
  br i1 %tobool41, label %if.then117, label %cont154

if.then117:                                       ; preds = %if.end114
  %tobool118 = icmp eq i32 %t.0, 0
  br i1 %tobool118, label %for.cond124.preheader, label %cont121

cont121:                                          ; preds = %if.then117
  %incdec.ptr122 = getelementptr inbounds i8* %rr.1, i32 1
  store i8 32, i8* %rr.1, align 1, !tbaa !0
  br label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %if.then117, %cont121
  %rr.3.ph = phi i8* [ %incdec.ptr122, %cont121 ], [ %rr.1, %if.then117 ]
  %cmp125236 = icmp sgt i32 %b, 0
  br i1 %cmp125236, label %for.body126, label %for.end132

for.body126:                                      ; preds = %for.cond124.preheader, %for.cond124.backedge
  %i.1239 = phi i32 [ %89, %for.cond124.backedge ], [ 0, %for.cond124.preheader ]
  %p.1238 = phi i8* [ %incdec.ptr127, %for.cond124.backedge ], [ %s, %for.cond124.preheader ]
  %rr.3237 = phi i8* [ %incdec.ptr128, %for.cond124.backedge ], [ %rr.3.ph, %for.cond124.preheader ]
  %incdec.ptr127 = getelementptr inbounds i8* %p.1238, i32 1
  %87 = load i8* %p.1238, align 1, !tbaa !0
  %incdec.ptr128 = getelementptr inbounds i8* %rr.3237, i32 1
  store i8 %87, i8* %rr.3237, align 1, !tbaa !0
  %88 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.1239, i32 1)
  %89 = extractvalue { i32, i1 } %88, 0
  %90 = extractvalue { i32, i1 } %88, 1
  br i1 %90, label %ioc_bb130, label %for.cond124.backedge

for.cond124.backedge:                             ; preds = %for.body126, %ioc_bb130
  %cmp125 = icmp slt i32 %89, %b
  br i1 %cmp125, label %for.body126, label %for.end132

ioc_bb130:                                        ; preds = %for.body126
  %91 = sext i32 %i.1239 to i64
  call void @__ioc_report_add_overflow(i32 2671, i32 35, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %91, i64 1, i8 13) nounwind
  br label %for.cond124.backedge

for.end132:                                       ; preds = %for.cond124.backedge, %for.cond124.preheader
  %rr.3.lcssa = phi i8* [ %rr.3.ph, %for.cond124.preheader ], [ %incdec.ptr128, %for.cond124.backedge ]
  %92 = load i8** %replstr.addr, align 4, !tbaa !2
  %tobool133 = icmp eq i8* %92, null
  br i1 %tobool133, label %if.end141, label %for.cond135.preheader

for.cond135.preheader:                            ; preds = %for.end132
  %93 = load i8* %92, align 1, !tbaa !0
  %tobool136232 = icmp eq i8 %93, 0
  br i1 %tobool136232, label %if.end141, label %for.body137

for.body137:                                      ; preds = %for.cond135.preheader, %for.body137
  %94 = phi i8 [ %95, %for.body137 ], [ %93, %for.cond135.preheader ]
  %p.2234 = phi i8* [ %incdec.ptr138, %for.body137 ], [ %92, %for.cond135.preheader ]
  %rr.4233 = phi i8* [ %incdec.ptr139, %for.body137 ], [ %rr.3.lcssa, %for.cond135.preheader ]
  %incdec.ptr138 = getelementptr inbounds i8* %p.2234, i32 1
  %incdec.ptr139 = getelementptr inbounds i8* %rr.4233, i32 1
  store i8 %94, i8* %rr.4233, align 1, !tbaa !0
  %95 = load i8* %incdec.ptr138, align 1, !tbaa !0
  %tobool136 = icmp eq i8 %95, 0
  br i1 %tobool136, label %if.end141, label %for.body137

if.end141:                                        ; preds = %for.cond135.preheader, %for.body137, %for.end132
  %rr.5 = phi i8* [ %rr.3.lcssa, %for.end132 ], [ %rr.3.lcssa, %for.cond135.preheader ], [ %incdec.ptr139, %for.body137 ]
  %cmp144228 = icmp sgt i32 %call, %e
  br i1 %cmp144228, label %for.body145.lr.ph, label %cont154

for.body145.lr.ph:                                ; preds = %if.end141
  %add.ptr142 = getelementptr inbounds i8* %s, i32 %e
  br label %for.body145

for.body145:                                      ; preds = %for.body145.lr.ph, %for.cond143.backedge
  %i.2231 = phi i32 [ %e, %for.body145.lr.ph ], [ %98, %for.cond143.backedge ]
  %p.3230 = phi i8* [ %add.ptr142, %for.body145.lr.ph ], [ %incdec.ptr146, %for.cond143.backedge ]
  %rr.6229 = phi i8* [ %rr.5, %for.body145.lr.ph ], [ %incdec.ptr147, %for.cond143.backedge ]
  %incdec.ptr146 = getelementptr inbounds i8* %p.3230, i32 1
  %96 = load i8* %p.3230, align 1, !tbaa !0
  %incdec.ptr147 = getelementptr inbounds i8* %rr.6229, i32 1
  store i8 %96, i8* %rr.6229, align 1, !tbaa !0
  %97 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2231, i32 1)
  %98 = extractvalue { i32, i1 } %97, 0
  %99 = extractvalue { i32, i1 } %97, 1
  br i1 %99, label %ioc_bb149, label %for.cond143.backedge

for.cond143.backedge:                             ; preds = %for.body145, %ioc_bb149
  %cmp144 = icmp slt i32 %98, %call
  br i1 %cmp144, label %for.body145, label %cont154

ioc_bb149:                                        ; preds = %for.body145
  %100 = sext i32 %i.2231 to i64
  call void @__ioc_report_add_overflow(i32 2676, i32 39, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %100, i64 1, i8 13) nounwind
  br label %for.cond143.backedge

cont154:                                          ; preds = %if.end141, %for.cond143.backedge, %if.end114
  %rr.7 = phi i8* [ %rr.1, %if.end114 ], [ %rr.5, %if.end141 ], [ %incdec.ptr147, %for.cond143.backedge ]
  %t.1 = phi i32 [ %t.0, %if.end114 ], [ 1, %if.end141 ], [ 1, %for.cond143.backedge ]
  store i8 0, i8* %rr.7, align 1, !tbaa !0
  br i1 %tobool97, label %if.then156, label %return

if.then156:                                       ; preds = %cont154
  %tobool157 = icmp eq i32 %t.1, 0
  br i1 %tobool157, label %if.end162, label %cont160

cont160:                                          ; preds = %if.then156
  %incdec.ptr161 = getelementptr inbounds i8* %rr.7, i32 1
  store i8 32, i8* %rr.7, align 1, !tbaa !0
  br label %if.end162

if.end162:                                        ; preds = %if.then156, %cont160
  %rr.8 = phi i8* [ %incdec.ptr161, %cont160 ], [ %rr.7, %if.then156 ]
  %arraydecay163 = getelementptr inbounds [80 x i8]* %buf, i32 0, i32 0
  %call164 = call i8* @strcpy(i8* %rr.8, i8* %arraydecay163) nounwind
  br label %return

return:                                           ; preds = %cont154, %if.end162, %if.then19, %if.else
  %retval.0 = phi i8* [ %s, %if.else ], [ %s, %if.then19 ], [ %call106, %if.end162 ], [ %call106, %cont154 ]
  ret i8* %retval.0
}

declare i32 @patmatchlen()

declare void @mb_metacharinit()

declare i32 @pattrylen(%struct.patprog*, i8*, i32, i32, i32)

define internal fastcc i32 @iincchar(i8** nocapture %tp) nounwind {
entry:
  %0 = load i8** %tp, align 4, !tbaa !2
  %call = tail call i32 @mb_metacharlenconv(i8* %0, i32* null) nounwind
  br label %while.cond

while.cond:                                       ; preds = %ioc_bb7, %if.then, %cont2, %entry
  %t.0 = phi i8* [ %0, %entry ], [ %incdec.ptr, %cont2 ], [ %incdec.ptr6, %if.then ], [ %incdec.ptr6, %ioc_bb7 ]
  %mbclen.0 = phi i32 [ %call, %entry ], [ %2, %cont2 ], [ %11, %if.then ], [ %11, %ioc_bb7 ]
  %umlen.0 = phi i32 [ 0, %entry ], [ %6, %cont2 ], [ %6, %if.then ], [ %6, %ioc_bb7 ]
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %mbclen.0, i32 -1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.cond
  %4 = sext i32 %mbclen.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2845, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.cond, %ioc_bb
  %tobool = icmp eq i32 %mbclen.0, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %cont
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %umlen.0, i32 1)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %while.body
  %8 = sext i32 %umlen.0 to i64
  tail call void @__ioc_report_add_overflow(i32 2846, i32 10, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %while.body, %ioc_bb1
  %incdec.ptr = getelementptr inbounds i8* %t.0, i32 1
  %9 = load i8* %t.0, align 1, !tbaa !0
  tail call void @__ioc_report_conversion(i32 2847, i32 30, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 131, i8 1) nounwind
  %cmp = icmp eq i8 %9, -125
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %cont2
  %incdec.ptr6 = getelementptr inbounds i8* %t.0, i32 2
  %10 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  br i1 %12, label %ioc_bb7, label %while.cond

ioc_bb7:                                          ; preds = %if.then
  %13 = sext i32 %2 to i64
  tail call void @__ioc_report_add_overflow(i32 2849, i32 13, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %13, i64 -1, i8 13) nounwind
  br label %while.cond

while.end:                                        ; preds = %cont
  store i8* %t.0, i8** %tp, align 4, !tbaa !2
  ret i32 %umlen.0
}

declare %union.linkroot* @znewlinklist()

declare i32 @mb_metacharlenconv(i8*, i32*)

declare void @singsub(i8**)

declare %struct.linknode* @zinsertlinknode(%union.linkroot*, %struct.linknode*, i8*)

declare i32 @zstrcmp(i8*, i8*, i32)

declare void @init_dirsav(%struct.dirsav*)

declare i32 @lchdir(i8*, %struct.dirsav*, i32)

define internal fastcc void @addpath(i8* nocapture %s, i32 %l) nounwind {
entry:
  %0 = sext i32 %l to i64
  br label %while.cond

while.cond:                                       ; preds = %cont6, %entry
  %1 = load i32* @pathpos, align 4, !tbaa !3
  %2 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %l)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %while.cond
  %5 = sext i32 %1 to i64
  tail call void @__ioc_report_add_overflow(i32 258, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %5, i64 %0, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %while.cond, %ioc_bb
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %cont
  %9 = sext i32 %3 to i64
  tail call void @__ioc_report_add_overflow(i32 258, i32 21, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %9, i64 1, i8 13) nounwind
  br label %cont2

cont2:                                            ; preds = %cont, %ioc_bb1
  %10 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  %cmp = icmp slt i32 %7, %10
  br i1 %cmp, label %while.cond7, label %while.body

while.body:                                       ; preds = %cont2
  %11 = load i8** @pathbuf, align 4, !tbaa !2
  %12 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %10, i32 2)
  %13 = extractvalue { i32, i1 } %12, 0
  %14 = extractvalue { i32, i1 } %12, 1
  br i1 %14, label %ioc_bb3, label %cont4

ioc_bb3:                                          ; preds = %while.body
  %15 = sext i32 %10 to i64
  tail call void @__ioc_report_mul_overflow(i32 259, i32 58, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @11, i32 0, i32 0), i64 %15, i64 2, i8 13) nounwind
  br label %cont4

cont4:                                            ; preds = %while.body, %ioc_bb3
  store i32 %13, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 4), align 4, !tbaa !3
  %16 = icmp sgt i32 %13, -1
  br i1 %16, label %cont6, label %ioc_bb5

ioc_bb5:                                          ; preds = %cont4
  %17 = sext i32 %13 to i64
  tail call void @__ioc_report_conversion(i32 259, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %17, i8 1) nounwind
  br label %cont6

cont6:                                            ; preds = %ioc_bb5, %cont4
  %call = tail call i8* @realloc(i8* %11, i32 %13) nounwind
  store i8* %call, i8** @pathbuf, align 4, !tbaa !2
  br label %while.cond

while.cond7:                                      ; preds = %cont2, %cont12
  %s.addr.0 = phi i8* [ %incdec.ptr, %cont12 ], [ %s, %cont2 ]
  %l.addr.0 = phi i32 [ %19, %cont12 ], [ %l, %cont2 ]
  %18 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %l.addr.0, i32 -1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb8, label %cont9

ioc_bb8:                                          ; preds = %while.cond7
  %21 = sext i32 %l.addr.0 to i64
  tail call void @__ioc_report_add_overflow(i32 260, i32 10, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %21, i64 -1, i8 13) nounwind
  br label %cont9

cont9:                                            ; preds = %while.cond7, %ioc_bb8
  %tobool = icmp eq i32 %l.addr.0, 0
  br i1 %tobool, label %cont15, label %while.body10

while.body10:                                     ; preds = %cont9
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i32 1
  %22 = load i8* %s.addr.0, align 1, !tbaa !0
  %23 = load i32* @pathpos, align 4, !tbaa !3
  %24 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %23, i32 1)
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  br i1 %26, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %while.body10
  %27 = sext i32 %23 to i64
  tail call void @__ioc_report_add_overflow(i32 261, i32 20, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %27, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %while.body10, %ioc_bb11
  store i32 %25, i32* @pathpos, align 4, !tbaa !3
  %28 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds i8* %28, i32 %23
  store i8 %22, i8* %arrayidx, align 1, !tbaa !0
  br label %while.cond7

cont15:                                           ; preds = %cont9
  %29 = load i32* @pathpos, align 4, !tbaa !3
  %30 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %29, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %33 = sext i32 %29 to i64
  tail call void @__ioc_report_add_overflow(i32 262, i32 18, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  store i32 %31, i32* @pathpos, align 4, !tbaa !3
  %34 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx18 = getelementptr inbounds i8* %34, i32 %29
  store i8 47, i8* %arrayidx18, align 1, !tbaa !0
  %35 = load i32* @pathpos, align 4, !tbaa !3
  %36 = load i8** @pathbuf, align 4, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8* %36, i32 %35
  store i8 0, i8* %arrayidx21, align 1, !tbaa !0
  ret void
}

define internal fastcc i32 @statfullpath(i8* nocapture %s, %struct.stat* %st, i32 %l) nounwind {
entry:
  %buf = alloca [4096 x i8], align 1
  %lbuf = alloca [1 x i8], align 1
  %arraydecay = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %0 = load i8** @pathbuf, align 4, !tbaa !2
  %1 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %0, i32 %1
  %call = call i8* @strcpy(i8* %arraydecay, i8* %add.ptr) nounwind
  %2 = load i32* @pathpos, align 4, !tbaa !3
  %3 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %add.ptr2.sum = sub i32 %2, %3
  %add.ptr3 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 %add.ptr2.sum
  %call4 = call i8* @strcpy(i8* %add.ptr3, i8* %s) nounwind
  %4 = load i8* %s, align 1, !tbaa !0
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8* %arraydecay, align 1, !tbaa !0
  %tobool6 = icmp eq i8 %5, 0
  br i1 %tobool6, label %if.end, label %cont

cont:                                             ; preds = %land.lhs.true
  %6 = load i32* @pathpos, align 4, !tbaa !3
  %7 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %6, i32 %7)
  %9 = extractvalue { i32, i1 } %8, 0
  %10 = extractvalue { i32, i1 } %8, 1
  br i1 %10, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %cont
  %11 = sext i32 %7 to i64
  %12 = sext i32 %6 to i64
  call void @__ioc_report_sub_overflow(i32 283, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %12, i64 %11, i8 13) nounwind
  %.pre = load i32* @pathpos, align 4, !tbaa !3
  %.pre40 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 5), align 4, !tbaa !3
  br label %cont8

cont8:                                            ; preds = %cont, %ioc_bb7
  %13 = phi i32 [ %7, %cont ], [ %.pre40, %ioc_bb7 ]
  %14 = phi i32 [ %6, %cont ], [ %.pre, %ioc_bb7 ]
  %arrayidx = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 %9
  store i8 46, i8* %arrayidx, align 1, !tbaa !0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %14, i32 %13)
  %16 = extractvalue { i32, i1 } %15, 0
  %17 = extractvalue { i32, i1 } %15, 1
  br i1 %17, label %ioc_bb11, label %cont12

ioc_bb11:                                         ; preds = %cont8
  %18 = sext i32 %13 to i64
  %19 = sext i32 %14 to i64
  call void @__ioc_report_sub_overflow(i32 284, i32 17, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @23, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %cont8, %ioc_bb11
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %cont12
  %23 = sext i32 %16 to i64
  call void @__ioc_report_add_overflow(i32 284, i32 45, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %23, i64 1, i8 13) nounwind
  br label %cont14

cont14:                                           ; preds = %cont12, %ioc_bb13
  %arrayidx15 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 %21
  store i8 0, i8* %arrayidx15, align 1, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %cont14
  %l.addr.0 = phi i32 [ %l, %entry ], [ 0, %cont14 ], [ %l, %land.lhs.true ]
  %call17 = call i8* @unmetafy(i8* %arraydecay, i32* null) nounwind
  %tobool18 = icmp eq %struct.stat* %st, null
  br i1 %tobool18, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.end
  %call21 = call i32 @access(i8* %arraydecay, i32 0) nounwind
  %tobool22 = icmp eq i32 %call21, 0
  br i1 %tobool22, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then19
  %tobool23 = icmp eq i32 %l.addr.0, 0
  br i1 %tobool23, label %land.end, label %cont27

cont27:                                           ; preds = %land.rhs
  %arraydecay25 = getelementptr inbounds [1 x i8]* %lbuf, i32 0, i32 0
  %call28 = call i32 @readlink(i8* %arraydecay, i8* %arraydecay25, i32 1) nounwind
  %cmp = icmp slt i32 %call28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then19, %cont27
  %24 = phi i1 [ false, %if.then19 ], [ true, %land.rhs ], [ %cmp, %cont27 ]
  %land.ext = zext i1 %24 to i32
  br label %return

if.end30:                                         ; preds = %if.end
  %tobool31 = icmp eq i32 %l.addr.0, 0
  %25 = bitcast %struct.stat* %st to %struct.stat64*
  br i1 %tobool31, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end30
  %call.i = call i32 @__lxstat64(i32 3, i8* %arraydecay, %struct.stat64* %25) nounwind
  br label %return

cond.false:                                       ; preds = %if.end30
  %call.i39 = call i32 @__xstat64(i32 3, i8* %arraydecay, %struct.stat64* %25) nounwind
  br label %return

return:                                           ; preds = %cond.true, %cond.false, %land.end
  %retval.0 = phi i32 [ %land.ext, %land.end ], [ %call.i, %cond.true ], [ %call.i39, %cond.false ]
  ret i32 %retval.0
}

declare i8* @dupstrpfx(i8*, i32)

define internal fastcc void @insert(i8* %s, i32 %checked) nounwind {
entry:
  %s.addr = alloca i8*, align 4
  %buf = alloca %struct.stat, align 4
  %buf2 = alloca %struct.stat, align 4
  %news = alloca i8*, align 4
  %oset = alloca %struct.__sigset_t, align 4
  %tmp14 = alloca %struct.__sigset_t, align 4
  %oset81 = alloca %struct.__sigset_t, align 4
  %tmp92 = alloca %struct.__sigset_t, align 4
  %oset144 = alloca %struct.__sigset_t, align 4
  %tmp155 = alloca %struct.__sigset_t, align 4
  %oset177 = alloca %struct.__sigset_t, align 4
  %tmp188 = alloca %struct.__sigset_t, align 4
  %oset342 = alloca %struct.__sigset_t, align 4
  %tmp353 = alloca %struct.__sigset_t, align 4
  store i8* %s, i8** %s.addr, align 4, !tbaa !2
  store i8* %s, i8** %news, align 4, !tbaa !2
  %0 = load i32* @queueing_enabled, align 4, !tbaa !3
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64
  call void @__ioc_report_add_overflow(i32 307, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %entry, %ioc_bb
  store i32 %2, i32* @queueing_enabled, align 4, !tbaa !3
  store i8** null, i8*** @inserts, align 4, !tbaa !2
  %5 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 18), align 4, !tbaa !3
  %6 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 16), align 4, !tbaa !3
  %7 = or i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end60, label %if.then

if.then:                                          ; preds = %cont
  %9 = load i8** %s.addr, align 4, !tbaa !2
  %call = call fastcc i32 @statfullpath(i8* %9, %struct.stat* %buf, i32 1)
  %tobool2 = icmp eq i32 %call, 0
  br i1 %tobool2, label %if.end16, label %do.body

do.body:                                          ; preds = %if.then
  %10 = load i32* @queueing_enabled, align 4, !tbaa !3
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %10, i32 -1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb4, label %cont5

ioc_bb4:                                          ; preds = %do.body
  %14 = sext i32 %10 to i64
  call void @__ioc_report_add_overflow(i32 316, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %14, i64 -1, i8 13) nounwind
  br label %cont5

cont5:                                            ; preds = %do.body, %ioc_bb4
  store i32 %12, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool6 = icmp eq i32 %12, 0
  br i1 %tobool6, label %while.cond.preheader, label %do.end357

while.cond.preheader:                             ; preds = %cont5
  %15 = load i32* @queue_front, align 4, !tbaa !3
  %16 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp400 = icmp eq i32 %15, %16
  br i1 %cmp400, label %do.end357, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cont12
  %17 = phi i32 [ %24, %cont12 ], [ %15, %while.cond.preheader ]
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %17, i32 1)
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb9, label %cont12

ioc_bb9:                                          ; preds = %while.body
  %21 = sext i32 %17 to i64
  call void @__ioc_report_add_overflow(i32 320, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %21, i64 1, i8 13) nounwind
  br label %cont12

cont12:                                           ; preds = %ioc_bb9, %while.body
  %rem = srem i32 %19, 128
  store i32 %rem, i32* @queue_front, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem
  call void @signal_setmask(%struct.__sigset_t* sret %oset, %struct.__sigset_t* byval align 4 %arrayidx) nounwind
  %22 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %22
  %23 = load i32* %arrayidx13, align 4, !tbaa !3
  call void @zhandler(i32 %23) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp14, %struct.__sigset_t* byval align 4 %oset) nounwind
  %24 = load i32* @queue_front, align 4, !tbaa !3
  %25 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp = icmp eq i32 %24, %25
  br i1 %cmp, label %do.end357, label %while.body

if.end16:                                         ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %26 = load i32* %st_mode, align 4, !tbaa !3
  %27 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 20), align 4, !tbaa !3
  %tobool17 = icmp eq i32 %27, 0
  br i1 %tobool17, label %if.end32, label %cont23

cont23:                                           ; preds = %if.end16
  %and21 = and i32 %26, 61440
  %cmp24 = icmp eq i32 %and21, 40960
  br i1 %cmp24, label %lor.lhs.false25, label %if.then28

lor.lhs.false25:                                  ; preds = %cont23
  %28 = load i8** %s.addr, align 4, !tbaa !2
  %call26 = call fastcc i32 @statfullpath(i8* %28, %struct.stat* %buf2, i32 0)
  %tobool27 = icmp eq i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25, %cont23
  %29 = bitcast %struct.stat* %buf2 to i8*
  %30 = bitcast %struct.stat* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 96, i32 4, i1 false)
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false25, %if.then28
  %st_mode31 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 3
  %31 = load i32* %st_mode31, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %if.end16, %if.end29
  %statted.0 = phi i32 [ 3, %if.end29 ], [ 1, %if.end16 ]
  %mode.0 = phi i32 [ %31, %if.end29 ], [ %26, %if.end16 ]
  %32 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 18), align 4, !tbaa !3
  %tobool33 = icmp eq i32 %32, 0
  br i1 %tobool33, label %cont39, label %if.then41

cont39:                                           ; preds = %if.end32
  %and37 = and i32 %mode.0, 61440
  %cmp40 = icmp eq i32 %and37, 16384
  br i1 %cmp40, label %if.then41, label %if.end60

if.then41:                                        ; preds = %if.end32, %cont39
  %33 = load i8** %s.addr, align 4, !tbaa !2
  %call43 = call i32 @strlen(i8* %33) nounwind readonly
  %34 = icmp sgt i32 %call43, -1
  br i1 %34, label %cont45, label %ioc_bb44

ioc_bb44:                                         ; preds = %if.then41
  %35 = zext i32 %call43 to i64
  call void @__ioc_report_conversion(i32 337, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i64 %35, i8 0) nounwind
  br label %cont45

cont45:                                           ; preds = %ioc_bb44, %if.then41
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call43, i32 2)
  %37 = extractvalue { i32, i1 } %36, 0
  %38 = extractvalue { i32, i1 } %36, 1
  %39 = sext i32 %call43 to i64
  br i1 %38, label %ioc_bb46, label %cont47

ioc_bb46:                                         ; preds = %cont45
  call void @__ioc_report_add_overflow(i32 338, i32 36, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %39, i64 2, i8 13) nounwind
  br label %cont47

cont47:                                           ; preds = %cont45, %ioc_bb46
  %40 = icmp sgt i32 %37, -1
  br i1 %40, label %cont49, label %ioc_bb48

ioc_bb48:                                         ; preds = %cont47
  %41 = sext i32 %37 to i64
  call void @__ioc_report_conversion(i32 338, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %41, i8 1) nounwind
  br label %cont49

cont49:                                           ; preds = %ioc_bb48, %cont47
  %call50 = call i8* @hcalloc(i32 %37) nounwind
  store i8* %call50, i8** %news, align 4, !tbaa !2
  %42 = load i8** %s.addr, align 4, !tbaa !2
  %call51 = call i8* @strcpy(i8* %call50, i8* %42) nounwind
  %and.i = and i32 %mode.0, 61440
  switch i32 %and.i, label %cont76.i [
    i32 24576, label %file_type.exit
    i32 8192, label %cont13.i
    i32 16384, label %cont23.i
    i32 4096, label %cont33.i
    i32 40960, label %cont43.i
    i32 32768, label %cont62.i
    i32 49152, label %cont73.i
  ]

cont13.i:                                         ; preds = %cont49
  br label %file_type.exit

cont23.i:                                         ; preds = %cont49
  br label %file_type.exit

cont33.i:                                         ; preds = %cont49
  br label %file_type.exit

cont43.i:                                         ; preds = %cont49
  br label %file_type.exit

cont62.i:                                         ; preds = %cont49
  %and60.i = and i32 %mode.0, 73
  %tobool.i = icmp ne i32 %and60.i, 0
  %conv.i = select i1 %tobool.i, i8 42, i8 32
  br label %file_type.exit

cont73.i:                                         ; preds = %cont49
  br label %file_type.exit

cont76.i:                                         ; preds = %cont49
  br label %file_type.exit

file_type.exit:                                   ; preds = %cont49, %cont13.i, %cont23.i, %cont33.i, %cont43.i, %cont62.i, %cont73.i, %cont76.i
  %retval.0.i = phi i8 [ 37, %cont13.i ], [ 47, %cont23.i ], [ 124, %cont33.i ], [ 64, %cont43.i ], [ %conv.i, %cont62.i ], [ 61, %cont73.i ], [ 63, %cont76.i ], [ 35, %cont49 ]
  %43 = load i8** %news, align 4, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8* %43, i32 %call43
  store i8 %retval.0.i, i8* %arrayidx53, align 1, !tbaa !0
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call43, i32 1)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb56, label %cont57

ioc_bb56:                                         ; preds = %file_type.exit
  call void @__ioc_report_add_overflow(i32 341, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %39, i64 1, i8 13) nounwind
  br label %cont57

cont57:                                           ; preds = %file_type.exit, %ioc_bb56
  %47 = load i8** %news, align 4, !tbaa !2
  %arrayidx58 = getelementptr inbounds i8* %47, i32 %45
  store i8 0, i8* %arrayidx58, align 1, !tbaa !0
  br label %if.end60

if.end60:                                         ; preds = %cont, %cont39, %cont57
  %statted.1 = phi i32 [ %statted.0, %cont57 ], [ %statted.0, %cont39 ], [ 0, %cont ]
  %checked.addr.0 = phi i32 [ 1, %cont57 ], [ 1, %cont39 ], [ %checked, %cont ]
  %48 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 10), align 4, !tbaa !3
  %49 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 11), align 4, !tbaa !3
  %50 = or i32 %49, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end60
  %tobool67 = icmp eq i32 %statted.1, 0
  br i1 %tobool67, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %if.then64
  %52 = load i8** %s.addr, align 4, !tbaa !2
  %call68 = call fastcc i32 @statfullpath(i8* %52, %struct.stat* %buf, i32 1)
  %tobool69 = icmp eq i32 %call68, 0
  br i1 %tobool69, label %if.end97, label %do.body71

do.body71:                                        ; preds = %land.lhs.true
  %53 = load i32* @queueing_enabled, align 4, !tbaa !3
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %53, i32 -1)
  %55 = extractvalue { i32, i1 } %54, 0
  %56 = extractvalue { i32, i1 } %54, 1
  br i1 %56, label %ioc_bb72, label %cont73

ioc_bb72:                                         ; preds = %do.body71
  %57 = sext i32 %53 to i64
  call void @__ioc_report_add_overflow(i32 351, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %57, i64 -1, i8 13) nounwind
  br label %cont73

cont73:                                           ; preds = %do.body71, %ioc_bb72
  store i32 %55, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool74 = icmp eq i32 %55, 0
  br i1 %tobool74, label %while.cond77.preheader, label %do.end357

while.cond77.preheader:                           ; preds = %cont73
  %58 = load i32* @queue_front, align 4, !tbaa !3
  %59 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp78398 = icmp eq i32 %58, %59
  br i1 %cmp78398, label %do.end357, label %while.body79

while.body79:                                     ; preds = %while.cond77.preheader, %cont87
  %60 = phi i32 [ %67, %cont87 ], [ %58, %while.cond77.preheader ]
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %60, i32 1)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb82, label %cont87

ioc_bb82:                                         ; preds = %while.body79
  %64 = sext i32 %60 to i64
  call void @__ioc_report_add_overflow(i32 355, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %64, i64 1, i8 13) nounwind
  br label %cont87

cont87:                                           ; preds = %ioc_bb82, %while.body79
  %rem88 = srem i32 %62, 128
  store i32 %rem88, i32* @queue_front, align 4, !tbaa !3
  %arrayidx89 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem88
  call void @signal_setmask(%struct.__sigset_t* sret %oset81, %struct.__sigset_t* byval align 4 %arrayidx89) nounwind
  %65 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx91 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %65
  %66 = load i32* %arrayidx91, align 4, !tbaa !3
  call void @zhandler(i32 %66) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp92, %struct.__sigset_t* byval align 4 %oset81) nounwind
  %67 = load i32* @queue_front, align 4, !tbaa !3
  %68 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp78 = icmp eq i32 %67, %68
  br i1 %cmp78, label %do.end357, label %while.body79

if.end97:                                         ; preds = %land.lhs.true, %if.then64
  %69 = load i8** @pathbuf, align 4, !tbaa !2
  %70 = load i8** %news, align 4, !tbaa !2
  %call98 = call i8* @dyncat(i8* %69, i8* %70) nounwind
  store i8* %call98, i8** %news, align 4, !tbaa !2
  %71 = load %struct.qual** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 9), align 4, !tbaa !2
  %st_mode107 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %72 = bitcast %struct.stat* %buf2 to i8*
  %73 = bitcast %struct.stat* %buf to i8*
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then130, %if.end97
  %statted.2.ph = phi i32 [ 1, %if.end97 ], [ %statted.3, %if.then130 ]
  %qo.0.ph = phi %struct.qual* [ %71, %if.end97 ], [ %89, %if.then130 ]
  %tobool99394 = icmp eq %struct.qual* %qo.0.ph, null
  br i1 %tobool99394, label %while.cond199thread-pre-split, label %land.rhs

land.rhs:                                         ; preds = %for.cond.outer, %if.end161
  %qn.0396 = phi %struct.qual* [ %106, %if.end161 ], [ %qo.0.ph, %for.cond.outer ]
  %statted.2395 = phi i32 [ %statted.3, %if.end161 ], [ %statted.2.ph, %for.cond.outer ]
  %func = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 2
  %74 = load i32 (i8*, %struct.stat*, i64, i8*)** %func, align 4, !tbaa !2
  %tobool100 = icmp eq i32 (i8*, %struct.stat*, i64, i8*)* %74, null
  br i1 %tobool100, label %while.cond199thread-pre-split, label %for.body

for.body:                                         ; preds = %land.rhs
  %range = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 6
  %75 = load i32* %range, align 4, !tbaa !3
  store i32 %75, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 12), align 4, !tbaa !3
  %amc = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 5
  %76 = load i32* %amc, align 4, !tbaa !3
  store i32 %76, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 13), align 4, !tbaa !3
  %units = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 7
  %77 = load i32* %units, align 4, !tbaa !3
  store i32 %77, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 14), align 4, !tbaa !3
  %sense = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 4
  %78 = load i32* %sense, align 4, !tbaa !3
  %and101 = and i32 %78, 2
  %tobool102 = icmp eq i32 %and101, 0
  br i1 %tobool102, label %if.end120, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %for.body
  %and104 = and i32 %statted.2395, 2
  %tobool105 = icmp eq i32 %and104, 0
  br i1 %tobool105, label %cont112, label %if.end120

cont112:                                          ; preds = %land.lhs.true103
  %79 = load i32* %st_mode107, align 4, !tbaa !3
  %and110 = and i32 %79, 61440
  %cmp113 = icmp eq i32 %and110, 40960
  br i1 %cmp113, label %lor.lhs.false114, label %if.then117

lor.lhs.false114:                                 ; preds = %cont112
  %80 = load i8** %s.addr, align 4, !tbaa !2
  %call115 = call fastcc i32 @statfullpath(i8* %80, %struct.stat* %buf2, i32 0)
  %tobool116 = icmp eq i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %lor.lhs.false114, %cont112
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %73, i32 96, i32 4, i1 false)
  br label %if.end118

if.end118:                                        ; preds = %lor.lhs.false114, %if.then117
  %or119 = or i32 %statted.2395, 2
  %.pre411 = load i32* %sense, align 4, !tbaa !3
  %.pre412 = load i32 (i8*, %struct.stat*, i64, i8*)** %func, align 4, !tbaa !2
  br label %if.end120

if.end120:                                        ; preds = %land.lhs.true103, %for.body, %if.end118
  %81 = phi i32 (i8*, %struct.stat*, i64, i8*)* [ %.pre412, %if.end118 ], [ %74, %for.body ], [ %74, %land.lhs.true103 ]
  %82 = phi i32 [ %.pre411, %if.end118 ], [ %78, %for.body ], [ %78, %land.lhs.true103 ]
  %statted.3 = phi i32 [ %or119, %if.end118 ], [ %statted.2395, %for.body ], [ %statted.2395, %land.lhs.true103 ]
  %and122 = and i32 %82, 2
  %tobool123 = icmp ne i32 %and122, 0
  %buf2.buf = select i1 %tobool123, %struct.stat* %buf2, %struct.stat* %buf
  %83 = load i8** %news, align 4, !tbaa !2
  %data = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 3
  %84 = load i64* %data, align 4, !tbaa !5
  %sdata = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 8
  %85 = load i8** %sdata, align 4, !tbaa !2
  %call125 = call i32 %81(i8* %83, %struct.stat* %buf2.buf, i64 %84, i8* %85) nounwind
  %lnot = icmp eq i32 %call125, 0
  %86 = load i32* %sense, align 4, !tbaa !3
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  %tobool129 = xor i1 %lnot, %88
  br i1 %tobool129, label %if.then130, label %if.end161

if.then130:                                       ; preds = %if.end120
  %or131 = getelementptr inbounds %struct.qual* %qo.0.ph, i32 0, i32 1
  %89 = load %struct.qual** %or131, align 4, !tbaa !2
  %tobool132 = icmp eq %struct.qual* %89, null
  br i1 %tobool132, label %do.body134, label %for.cond.outer

do.body134:                                       ; preds = %if.then130
  %90 = load i32* @queueing_enabled, align 4, !tbaa !3
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %90, i32 -1)
  %92 = extractvalue { i32, i1 } %91, 0
  %93 = extractvalue { i32, i1 } %91, 1
  br i1 %93, label %ioc_bb135, label %cont136

ioc_bb135:                                        ; preds = %do.body134
  %94 = sext i32 %90 to i64
  call void @__ioc_report_add_overflow(i32 386, i32 19, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %94, i64 -1, i8 13) nounwind
  br label %cont136

cont136:                                          ; preds = %do.body134, %ioc_bb135
  store i32 %92, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool137 = icmp eq i32 %92, 0
  br i1 %tobool137, label %while.cond140.preheader, label %do.end357

while.cond140.preheader:                          ; preds = %cont136
  %95 = load i32* @queue_front, align 4, !tbaa !3
  %96 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp141392 = icmp eq i32 %95, %96
  br i1 %cmp141392, label %do.end357, label %while.body142

while.body142:                                    ; preds = %while.cond140.preheader, %cont150
  %97 = phi i32 [ %104, %cont150 ], [ %95, %while.cond140.preheader ]
  %98 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %97, i32 1)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  br i1 %100, label %ioc_bb145, label %cont150

ioc_bb145:                                        ; preds = %while.body142
  %101 = sext i32 %97 to i64
  call void @__ioc_report_add_overflow(i32 390, i32 46, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %101, i64 1, i8 13) nounwind
  br label %cont150

cont150:                                          ; preds = %ioc_bb145, %while.body142
  %rem151 = srem i32 %99, 128
  store i32 %rem151, i32* @queue_front, align 4, !tbaa !3
  %arrayidx152 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem151
  call void @signal_setmask(%struct.__sigset_t* sret %oset144, %struct.__sigset_t* byval align 4 %arrayidx152) nounwind
  %102 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx154 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %102
  %103 = load i32* %arrayidx154, align 4, !tbaa !3
  call void @zhandler(i32 %103) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp155, %struct.__sigset_t* byval align 4 %oset144) nounwind
  %104 = load i32* @queue_front, align 4, !tbaa !3
  %105 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp141 = icmp eq i32 %104, %105
  br i1 %cmp141, label %do.end357, label %while.body142

if.end161:                                        ; preds = %if.end120
  %next = getelementptr inbounds %struct.qual* %qn.0396, i32 0, i32 0
  %106 = load %struct.qual** %next, align 4, !tbaa !2
  %tobool99 = icmp eq %struct.qual* %106, null
  br i1 %tobool99, label %while.cond199thread-pre-split, label %land.rhs

if.else:                                          ; preds = %if.end60
  %tobool162 = icmp eq i32 %checked.addr.0, 0
  br i1 %tobool162, label %if.then163, label %if.else195

if.then163:                                       ; preds = %if.else
  %107 = load i8** %s.addr, align 4, !tbaa !2
  %call164 = call fastcc i32 @statfullpath(i8* %107, %struct.stat* null, i32 1)
  %tobool165 = icmp eq i32 %call164, 0
  br i1 %tobool165, label %if.end193, label %do.body167

do.body167:                                       ; preds = %if.then163
  %108 = load i32* @queueing_enabled, align 4, !tbaa !3
  %109 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %108, i32 -1)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  br i1 %111, label %ioc_bb168, label %cont169

ioc_bb168:                                        ; preds = %do.body167
  %112 = sext i32 %108 to i64
  call void @__ioc_report_add_overflow(i32 409, i32 15, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %112, i64 -1, i8 13) nounwind
  br label %cont169

cont169:                                          ; preds = %do.body167, %ioc_bb168
  store i32 %110, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool170 = icmp eq i32 %110, 0
  br i1 %tobool170, label %while.cond173.preheader, label %do.end357

while.cond173.preheader:                          ; preds = %cont169
  %113 = load i32* @queue_front, align 4, !tbaa !3
  %114 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp174390 = icmp eq i32 %113, %114
  br i1 %cmp174390, label %do.end357, label %while.body175

while.body175:                                    ; preds = %while.cond173.preheader, %cont183
  %115 = phi i32 [ %122, %cont183 ], [ %113, %while.cond173.preheader ]
  %116 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %115, i32 1)
  %117 = extractvalue { i32, i1 } %116, 0
  %118 = extractvalue { i32, i1 } %116, 1
  br i1 %118, label %ioc_bb178, label %cont183

ioc_bb178:                                        ; preds = %while.body175
  %119 = sext i32 %115 to i64
  call void @__ioc_report_add_overflow(i32 413, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %119, i64 1, i8 13) nounwind
  br label %cont183

cont183:                                          ; preds = %ioc_bb178, %while.body175
  %rem184 = srem i32 %117, 128
  store i32 %rem184, i32* @queue_front, align 4, !tbaa !3
  %arrayidx185 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem184
  call void @signal_setmask(%struct.__sigset_t* sret %oset177, %struct.__sigset_t* byval align 4 %arrayidx185) nounwind
  %120 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx187 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %120
  %121 = load i32* %arrayidx187, align 4, !tbaa !3
  call void @zhandler(i32 %121) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp188, %struct.__sigset_t* byval align 4 %oset177) nounwind
  %122 = load i32* @queue_front, align 4, !tbaa !3
  %123 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp174 = icmp eq i32 %122, %123
  br i1 %cmp174, label %do.end357, label %while.body175

if.end193:                                        ; preds = %if.then163
  %124 = load i8** @pathbuf, align 4, !tbaa !2
  %125 = load i8** %news, align 4, !tbaa !2
  %call194 = call i8* @dyncat(i8* %124, i8* %125) nounwind
  store i8* %call194, i8** %news, align 4, !tbaa !2
  br label %while.cond199thread-pre-split

if.else195:                                       ; preds = %if.else
  %126 = load i8** @pathbuf, align 4, !tbaa !2
  %127 = load i8** %news, align 4, !tbaa !2
  %call196 = call i8* @dyncat(i8* %126, i8* %127) nounwind
  store i8* %call196, i8** %news, align 4, !tbaa !2
  br label %while.cond199thread-pre-split

while.cond199thread-pre-split:                    ; preds = %land.rhs, %if.end161, %for.cond.outer, %if.end193, %if.else195
  %statted.4.ph = phi i32 [ %statted.1, %if.else195 ], [ 1, %if.end193 ], [ %statted.2395, %land.rhs ], [ %statted.3, %if.end161 ], [ %statted.2.ph, %for.cond.outer ]
  %.pr = load i8*** @inserts, align 4, !tbaa !2
  %st_mode258 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 3
  %128 = bitcast %struct.stat* %buf2 to i8*
  %129 = bitcast %struct.stat* %buf to i8*
  %st_size296 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 9
  %tv_sec298 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 12, i32 0
  %tv_sec300 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 13, i32 0
  %tv_sec302 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 14, i32 0
  %st_nlink303 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 4
  %tv_nsec308 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 12, i32 1
  %tv_nsec310 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 13, i32 1
  %tv_nsec312 = getelementptr inbounds %struct.stat* %buf2, i32 0, i32 14, i32 1
  %st_size = getelementptr inbounds %struct.stat* %buf, i32 0, i32 9
  %tv_sec = getelementptr inbounds %struct.stat* %buf, i32 0, i32 12, i32 0
  %tv_sec282 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 13, i32 0
  %tv_sec283 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 14, i32 0
  %st_nlink = getelementptr inbounds %struct.stat* %buf, i32 0, i32 4
  %tv_nsec = getelementptr inbounds %struct.stat* %buf, i32 0, i32 12, i32 1
  %tv_nsec289 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 13, i32 1
  %tv_nsec291 = getelementptr inbounds %struct.stat* %buf, i32 0, i32 14, i32 1
  br label %while.cond199

while.cond199:                                    ; preds = %while.cond199thread-pre-split, %if.end327
  %130 = phi i8** [ %.pr, %while.cond199thread-pre-split ], [ %187, %if.end327 ]
  %statted.4 = phi i32 [ %statted.4.ph, %while.cond199thread-pre-split ], [ %statted.6, %if.end327 ]
  %tobool200 = icmp eq i8** %130, null
  br i1 %tobool200, label %while.body203, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond199
  %incdec.ptr = getelementptr inbounds i8** %130, i32 1
  store i8** %incdec.ptr, i8*** @inserts, align 4, !tbaa !2
  %131 = load i8** %130, align 4, !tbaa !2
  %call201 = call i8* @dupstring(i8* %131) nounwind
  store i8* %call201, i8** %news, align 4, !tbaa !2
  %tobool202 = icmp eq i8* %call201, null
  br i1 %tobool202, label %do.body332, label %while.body203

while.body203:                                    ; preds = %lor.rhs, %while.cond199
  %132 = load i8** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 8), align 4, !tbaa !2
  %tobool204 = icmp eq i8* %132, null
  br i1 %tobool204, label %if.end206, label %if.then205

if.then205:                                       ; preds = %while.body203
  store i8* %132, i8** %s.addr, align 4, !tbaa !2
  call void @modify(i8** %news, i8** %s.addr) nounwind
  br label %if.end206

if.end206:                                        ; preds = %while.body203, %if.then205
  %tobool207 = icmp eq i32 %statted.4, 0
  br i1 %tobool207, label %land.lhs.true208, label %if.end229

land.lhs.true208:                                 ; preds = %if.end206
  %133 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  %and225 = and i32 %133, 248
  %tobool226 = icmp eq i32 %and225, 0
  br i1 %tobool226, label %land.lhs.true232, label %if.then227

if.then227:                                       ; preds = %land.lhs.true208
  %134 = load i8** %s.addr, align 4, !tbaa !2
  %call228 = call fastcc i32 @statfullpath(i8* %134, %struct.stat* %buf, i32 1)
  br label %land.lhs.true232

if.end229:                                        ; preds = %if.end206
  %and230 = and i32 %statted.4, 2
  %tobool231 = icmp eq i32 %and230, 0
  br i1 %tobool231, label %land.lhs.true232, label %if.end278

land.lhs.true232:                                 ; preds = %if.end229, %land.lhs.true208, %if.then227
  %statted.5387 = phi i32 [ 1, %if.then227 ], [ 0, %land.lhs.true208 ], [ %statted.4, %if.end229 ]
  %135 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 21), align 4, !tbaa !3
  %and253 = and i32 %135, 7936
  %tobool254 = icmp eq i32 %and253, 0
  br i1 %tobool254, label %if.end278, label %if.then255

if.then255:                                       ; preds = %land.lhs.true232
  %tobool256 = icmp eq i32 %statted.5387, 0
  br i1 %tobool256, label %if.else270, label %cont263

cont263:                                          ; preds = %if.then255
  %136 = load i32* %st_mode258, align 4, !tbaa !3
  %and261 = and i32 %136, 61440
  %cmp264 = icmp eq i32 %and261, 40960
  br i1 %cmp264, label %lor.lhs.false265, label %if.then268

lor.lhs.false265:                                 ; preds = %cont263
  %137 = load i8** %s.addr, align 4, !tbaa !2
  %call266 = call fastcc i32 @statfullpath(i8* %137, %struct.stat* %buf2, i32 0)
  %tobool267 = icmp eq i32 %call266, 0
  br i1 %tobool267, label %if.end276, label %if.then268

if.then268:                                       ; preds = %lor.lhs.false265, %cont263
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %128, i8* %129, i32 96, i32 4, i1 false)
  br label %if.end276

if.else270:                                       ; preds = %if.then255
  %138 = load i8** %s.addr, align 4, !tbaa !2
  %call271 = call fastcc i32 @statfullpath(i8* %138, %struct.stat* %buf2, i32 0)
  %tobool272 = icmp eq i32 %call271, 0
  br i1 %tobool272, label %if.end276, label %if.then273

if.then273:                                       ; preds = %if.else270
  %139 = load i8** %s.addr, align 4, !tbaa !2
  %call274 = call fastcc i32 @statfullpath(i8* %139, %struct.stat* %buf2, i32 1)
  br label %if.end276

if.end276:                                        ; preds = %lor.lhs.false265, %if.else270, %if.then273, %if.then268
  %or277 = or i32 %statted.5387, 2
  br label %if.end278

if.end278:                                        ; preds = %land.lhs.true232, %if.end229, %if.end276
  %statted.6 = phi i32 [ %or277, %if.end276 ], [ %statted.4, %if.end229 ], [ %statted.5387, %land.lhs.true232 ]
  %140 = load i8** %news, align 4, !tbaa !2
  %141 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %name = getelementptr inbounds %struct.gmatch* %141, i32 0, i32 0
  store i8* %140, i8** %name, align 4, !tbaa !2
  %and279 = and i32 %statted.6, 1
  %tobool280 = icmp eq i32 %and279, 0
  br i1 %tobool280, label %if.end292, label %if.then281

if.then281:                                       ; preds = %if.end278
  %142 = load i64* %st_size, align 4, !tbaa !5
  %143 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %size = getelementptr inbounds %struct.gmatch* %143, i32 0, i32 2
  store i64 %142, i64* %size, align 4, !tbaa !5
  %144 = load i32* %tv_sec, align 4, !tbaa !7
  %atime = getelementptr inbounds %struct.gmatch* %143, i32 0, i32 3
  store i32 %144, i32* %atime, align 4, !tbaa !7
  %145 = load i32* %tv_sec282, align 4, !tbaa !7
  %mtime = getelementptr inbounds %struct.gmatch* %143, i32 0, i32 4
  store i32 %145, i32* %mtime, align 4, !tbaa !7
  %146 = load i32* %tv_sec283, align 4, !tbaa !7
  %ctime = getelementptr inbounds %struct.gmatch* %143, i32 0, i32 5
  store i32 %146, i32* %ctime, align 4, !tbaa !7
  %147 = load i32* %st_nlink, align 4, !tbaa !3
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %cont286, label %ioc_bb285

ioc_bb285:                                        ; preds = %if.then281
  %149 = zext i32 %147 to i64
  call void @__ioc_report_conversion(i32 452, i32 42, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %149, i8 0) nounwind
  %.pre410 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  br label %cont286

cont286:                                          ; preds = %ioc_bb285, %if.then281
  %150 = phi %struct.gmatch* [ %.pre410, %ioc_bb285 ], [ %143, %if.then281 ]
  %links = getelementptr inbounds %struct.gmatch* %150, i32 0, i32 6
  store i32 %147, i32* %links, align 4, !tbaa !7
  %151 = load i32* %tv_nsec, align 4, !tbaa !7
  %ansec = getelementptr inbounds %struct.gmatch* %150, i32 0, i32 12
  store i32 %151, i32* %ansec, align 4, !tbaa !7
  %152 = load i32* %tv_nsec289, align 4, !tbaa !7
  %mnsec = getelementptr inbounds %struct.gmatch* %150, i32 0, i32 14
  store i32 %152, i32* %mnsec, align 4, !tbaa !7
  %153 = load i32* %tv_nsec291, align 4, !tbaa !7
  %cnsec = getelementptr inbounds %struct.gmatch* %150, i32 0, i32 16
  store i32 %153, i32* %cnsec, align 4, !tbaa !7
  br label %if.end292

if.end292:                                        ; preds = %if.end278, %cont286
  %and293 = and i32 %statted.6, 2
  %tobool294 = icmp eq i32 %and293, 0
  br i1 %tobool294, label %if.end292.if.end313_crit_edge, label %if.then295

if.end292.if.end313_crit_edge:                    ; preds = %if.end292
  %.pre413 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  br label %if.end313

if.then295:                                       ; preds = %if.end292
  %154 = load i64* %st_size296, align 4, !tbaa !5
  %155 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %_size = getelementptr inbounds %struct.gmatch* %155, i32 0, i32 7
  store i64 %154, i64* %_size, align 4, !tbaa !5
  %156 = load i32* %tv_sec298, align 4, !tbaa !7
  %_atime = getelementptr inbounds %struct.gmatch* %155, i32 0, i32 8
  store i32 %156, i32* %_atime, align 4, !tbaa !7
  %157 = load i32* %tv_sec300, align 4, !tbaa !7
  %_mtime = getelementptr inbounds %struct.gmatch* %155, i32 0, i32 9
  store i32 %157, i32* %_mtime, align 4, !tbaa !7
  %158 = load i32* %tv_sec302, align 4, !tbaa !7
  %_ctime = getelementptr inbounds %struct.gmatch* %155, i32 0, i32 10
  store i32 %158, i32* %_ctime, align 4, !tbaa !7
  %159 = load i32* %st_nlink303, align 4, !tbaa !3
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %cont306, label %ioc_bb305

ioc_bb305:                                        ; preds = %if.then295
  %161 = zext i32 %159 to i64
  call void @__ioc_report_conversion(i32 468, i32 43, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i64 %161, i8 0) nounwind
  %.pre = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  br label %cont306

cont306:                                          ; preds = %ioc_bb305, %if.then295
  %162 = phi %struct.gmatch* [ %.pre, %ioc_bb305 ], [ %155, %if.then295 ]
  %_links = getelementptr inbounds %struct.gmatch* %162, i32 0, i32 11
  store i32 %159, i32* %_links, align 4, !tbaa !7
  %163 = load i32* %tv_nsec308, align 4, !tbaa !7
  %_ansec = getelementptr inbounds %struct.gmatch* %162, i32 0, i32 13
  store i32 %163, i32* %_ansec, align 4, !tbaa !7
  %164 = load i32* %tv_nsec310, align 4, !tbaa !7
  %_mnsec = getelementptr inbounds %struct.gmatch* %162, i32 0, i32 15
  store i32 %164, i32* %_mnsec, align 4, !tbaa !7
  %165 = load i32* %tv_nsec312, align 4, !tbaa !7
  %_cnsec = getelementptr inbounds %struct.gmatch* %162, i32 0, i32 17
  store i32 %165, i32* %_cnsec, align 4, !tbaa !7
  br label %if.end313

if.end313:                                        ; preds = %if.end292.if.end313_crit_edge, %cont306
  %166 = phi %struct.gmatch* [ %.pre413, %if.end292.if.end313_crit_edge ], [ %162, %cont306 ]
  %incdec.ptr314 = getelementptr inbounds %struct.gmatch* %166, i32 1
  store %struct.gmatch* %incdec.ptr314, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  %167 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %168 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %167, i32 1)
  %169 = extractvalue { i32, i1 } %168, 0
  %170 = extractvalue { i32, i1 } %168, 1
  br i1 %170, label %ioc_bb315, label %cont316

ioc_bb315:                                        ; preds = %if.end313
  %171 = sext i32 %167 to i64
  call void @__ioc_report_add_overflow(i32 480, i32 9, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @15, i32 0, i32 0), i64 %171, i64 1, i8 13) nounwind
  br label %cont316

cont316:                                          ; preds = %if.end313, %ioc_bb315
  store i32 %169, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %172 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2), align 4, !tbaa !3
  %cmp317 = icmp eq i32 %169, %172
  br i1 %cmp317, label %if.then318, label %if.end327

if.then318:                                       ; preds = %cont316
  %173 = load %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %174 = bitcast %struct.gmatch* %173 to i8*
  %175 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %169, i32 2)
  %176 = extractvalue { i32, i1 } %175, 0
  %177 = extractvalue { i32, i1 } %175, 1
  br i1 %177, label %ioc_bb319, label %cont320

ioc_bb319:                                        ; preds = %if.then318
  %178 = sext i32 %169 to i64
  call void @__ioc_report_mul_overflow(i32 481, i32 135, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @11, i32 0, i32 0), i64 %178, i64 2, i8 13) nounwind
  br label %cont320

cont320:                                          ; preds = %if.then318, %ioc_bb319
  store i32 %176, i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 2), align 4, !tbaa !3
  %179 = icmp sgt i32 %176, -1
  br i1 %179, label %cont323, label %ioc_bb322

ioc_bb322:                                        ; preds = %cont320
  %180 = sext i32 %176 to i64
  call void @__ioc_report_conversion(i32 481, i32 111, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %180, i8 1) nounwind
  br label %cont323

cont323:                                          ; preds = %ioc_bb322, %cont320
  %181 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %176, i32 80)
  %182 = extractvalue { i32, i1 } %181, 0
  %183 = extractvalue { i32, i1 } %181, 1
  br i1 %183, label %ioc_bb324, label %cont325

ioc_bb324:                                        ; preds = %cont323
  %184 = zext i32 %176 to i64
  call void @__ioc_report_mul_overflow(i32 481, i32 109, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @21, i32 0, i32 0), i64 80, i64 %184, i8 5) nounwind
  br label %cont325

cont325:                                          ; preds = %cont323, %ioc_bb324
  %call326 = call i8* @realloc(i8* %174, i32 %182) nounwind
  %185 = bitcast i8* %call326 to %struct.gmatch*
  store %struct.gmatch* %185, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 6), align 4, !tbaa !2
  %186 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 3), align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.gmatch* %185, i32 %186
  store %struct.gmatch* %add.ptr, %struct.gmatch** getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 7), align 4, !tbaa !2
  br label %if.end327

if.end327:                                        ; preds = %cont325, %cont316
  %187 = load i8*** @inserts, align 4, !tbaa !2
  %tobool328 = icmp eq i8** %187, null
  br i1 %tobool328, label %do.body332, label %while.cond199

do.body332:                                       ; preds = %lor.rhs, %if.end327
  %188 = load i32* @queueing_enabled, align 4, !tbaa !3
  %189 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %188, i32 -1)
  %190 = extractvalue { i32, i1 } %189, 0
  %191 = extractvalue { i32, i1 } %189, 1
  br i1 %191, label %ioc_bb333, label %cont334

ioc_bb333:                                        ; preds = %do.body332
  %192 = sext i32 %188 to i64
  call void @__ioc_report_add_overflow(i32 489, i32 11, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %192, i64 -1, i8 13) nounwind
  br label %cont334

cont334:                                          ; preds = %do.body332, %ioc_bb333
  store i32 %190, i32* @queueing_enabled, align 4, !tbaa !3
  %tobool335 = icmp eq i32 %190, 0
  br i1 %tobool335, label %while.cond338.preheader, label %do.end357

while.cond338.preheader:                          ; preds = %cont334
  %193 = load i32* @queue_front, align 4, !tbaa !3
  %194 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp339388 = icmp eq i32 %193, %194
  br i1 %cmp339388, label %do.end357, label %while.body340

while.body340:                                    ; preds = %while.cond338.preheader, %cont348
  %195 = phi i32 [ %202, %cont348 ], [ %193, %while.cond338.preheader ]
  %196 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %195, i32 1)
  %197 = extractvalue { i32, i1 } %196, 0
  %198 = extractvalue { i32, i1 } %196, 1
  br i1 %198, label %ioc_bb343, label %cont348

ioc_bb343:                                        ; preds = %while.body340
  %199 = sext i32 %195 to i64
  call void @__ioc_report_add_overflow(i32 493, i32 38, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 %199, i64 1, i8 13) nounwind
  br label %cont348

cont348:                                          ; preds = %ioc_bb343, %while.body340
  %rem349 = srem i32 %197, 128
  store i32 %rem349, i32* @queue_front, align 4, !tbaa !3
  %arrayidx350 = getelementptr inbounds [128 x %struct.__sigset_t]* @signal_mask_queue, i32 0, i32 %rem349
  call void @signal_setmask(%struct.__sigset_t* sret %oset342, %struct.__sigset_t* byval align 4 %arrayidx350) nounwind
  %200 = load i32* @queue_front, align 4, !tbaa !3
  %arrayidx352 = getelementptr inbounds [128 x i32]* @signal_queue, i32 0, i32 %200
  %201 = load i32* %arrayidx352, align 4, !tbaa !3
  call void @zhandler(i32 %201) nounwind
  call void @signal_setmask(%struct.__sigset_t* sret %tmp353, %struct.__sigset_t* byval align 4 %oset342) nounwind
  %202 = load i32* @queue_front, align 4, !tbaa !3
  %203 = load i32* @queue_rear, align 4, !tbaa !3
  %cmp339 = icmp eq i32 %202, %203
  br i1 %cmp339, label %do.end357, label %while.body340

do.end357:                                        ; preds = %while.cond.preheader, %cont12, %while.cond77.preheader, %cont87, %while.cond140.preheader, %cont150, %while.cond173.preheader, %cont183, %while.cond338.preheader, %cont348, %cont5, %cont73, %cont136, %cont169, %cont334
  ret void
}

declare i8* @unmeta(i8*)

declare i8* @zreaddir(%struct.__dirstream*, i32)

declare i32 @strpfx(i8*, i8*)

declare i32 @strsfx(i8*, i8*)

declare i32* @__errno_location() nounwind readnone

declare void @zwarn(i8*, ...)

declare i8* @hrealloc(i8*, i32, i32)

declare i32 @restoredir(%struct.dirsav*)

declare void @zsfree(i8*)

declare i32 @close(i32)

declare void @signal_setmask(%struct.__sigset_t* sret, %struct.__sigset_t* byval align 4)

declare void @zhandler(i32)

declare void @modify(i8**, i8**)

declare noalias i8* @realloc(i8* nocapture, i32) nounwind

declare i32 @access(i8* nocapture, i32) nounwind

declare i32 @readlink(i8* nocapture, i8* nocapture, i32) nounwind

declare i32 @__lxstat64(i32, i8*, %struct.stat64*) nounwind

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare void @patcompstart()

declare i32 @patgetglobflags(i8**, i32*, i32*)

define internal fastcc %struct.complist* @parsecomplist(i8* %instr) nounwind {
entry:
  %instr.addr = alloca i8*, align 4
  %str = alloca i8*, align 4
  store i8* %instr, i8** %instr.addr, align 4, !tbaa !2
  %0 = load i32* getelementptr inbounds (%struct.globdata* @curglobdata, i32 0, i32 17), align 4, !tbaa !3
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 17, i32 1
  %1 = load i8* %instr, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 733, i32 27, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp = icmp eq i8 %1, -121
  br i1 %cmp, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %2 = load i8** %instr.addr, align 4, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8* %2, i32 1
  %3 = load i8* %arrayidx2, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 733, i32 56, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp6 = icmp eq i8 %3, -121
  br i1 %cmp6, label %land.lhs.true8, label %if.end38

land.lhs.true8:                                   ; preds = %land.lhs.true
  %4 = load i8** %instr.addr, align 4, !tbaa !2
  %arrayidx9 = getelementptr inbounds i8* %4, i32 2
  %5 = load i8* %arrayidx9, align 1, !tbaa !0
  %cmp11 = icmp eq i8 %5, 47
  br i1 %cmp11, label %if.then, label %ioc_bb15

ioc_bb15:                                         ; preds = %land.lhs.true8
  call void @__ioc_report_conversion(i32 733, i32 105, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 135, i8 1) nounwind
  %cmp17 = icmp eq i8 %5, -121
  br i1 %cmp17, label %land.lhs.true19, label %if.end38

land.lhs.true19:                                  ; preds = %ioc_bb15
  %6 = load i8** %instr.addr, align 4, !tbaa !2
  %arrayidx20 = getelementptr inbounds i8* %6, i32 3
  %7 = load i8* %arrayidx20, align 1, !tbaa !0
  %cmp22 = icmp eq i8 %7, 47
  br i1 %cmp22, label %land.lhs.true19.if.then_crit_edge, label %if.end38

land.lhs.true19.if.then_crit_edge:                ; preds = %land.lhs.true19
  %arrayidx24.phi.trans.insert = getelementptr inbounds i8* %6, i32 2
  %.pre = load i8* %arrayidx24.phi.trans.insert, align 1, !tbaa !0
  %phitmp = icmp eq i8 %.pre, -121
  br label %if.then

if.then:                                          ; preds = %land.lhs.true19.if.then_crit_edge, %land.lhs.true8
  %8 = phi i1 [ %phitmp, %land.lhs.true19.if.then_crit_edge ], [ false, %land.lhs.true8 ]
  call void @__ioc_report_conversion(i32 737, i32 34, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 135, i8 1) nounwind
  %conv29 = zext i1 %8 to i32
  %9 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %conv29, i32 3)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb30, label %cont31

ioc_bb30:                                         ; preds = %if.then
  %12 = zext i1 %8 to i64
  call void @__ioc_report_add_overflow(i32 738, i32 16, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 3, i64 %12, i8 13) nounwind
  br label %cont31

cont31:                                           ; preds = %if.then, %ioc_bb30
  %13 = load i8** %instr.addr, align 4, !tbaa !2
  %add.ptr = getelementptr inbounds i8* %13, i32 %10
  store i8* %add.ptr, i8** %instr.addr, align 4, !tbaa !2
  %call = call i8* @zhalloc(i32 16) nounwind
  %14 = load i8** %instr.addr, align 4, !tbaa !2
  %call32 = call fastcc %struct.complist* @parsecomplist(i8* %14)
  %next = bitcast i8* %call to %struct.complist**
  store %struct.complist* %call32, %struct.complist** %next, align 4, !tbaa !2
  %cmp33 = icmp eq %struct.complist* %call32, null
  br i1 %cmp33, label %if.then35, label %if.end

if.then35:                                        ; preds = %cont31
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %cont31
  %15 = bitcast i8* %call to %struct.complist*
  %or = or i32 %cond, 4
  %call36 = call %struct.patprog* @patcompile(i8* null, i32 %or, i8** null) nounwind
  %pat = getelementptr inbounds i8* %call, i32 4
  %16 = bitcast i8* %pat to %struct.patprog**
  store %struct.patprog* %call36, %struct.patprog** %16, align 4, !tbaa !2
  %closure = getelementptr inbounds i8* %call, i32 8
  %17 = bitcast i8* %closure to i32*
  store i32 1, i32* %17, align 4, !tbaa !3
  %follow37 = getelementptr inbounds i8* %call, i32 12
  %18 = bitcast i8* %follow37 to i32*
  store i32 %conv29, i32* %18, align 4, !tbaa !3
  br label %return

if.end38:                                         ; preds = %ioc_bb15, %land.lhs.true, %entry, %land.lhs.true19
  %19 = load i8** %instr.addr, align 4, !tbaa !2
  store i8* %19, i8** %str, align 4, !tbaa !2
  %20 = load i8* %19, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 752, i32 36, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  %cmp42 = icmp eq i8 %20, -120
  br i1 %cmp42, label %ioc_bb45, label %if.else

ioc_bb45:                                         ; preds = %if.end38
  call void @__ioc_report_conversion(i32 752, i32 65, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 136, i8 1) nounwind
  call void @__ioc_report_conversion(i32 752, i32 79, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 137, i8 1) nounwind
  %call49 = call i32 @skipparens(i8 signext -120, i8 signext -119, i8** %str) nounwind
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %land.lhs.true51, label %if.else

land.lhs.true51:                                  ; preds = %ioc_bb45
  %21 = load i8** %str, align 4, !tbaa !2
  %22 = load i8* %21, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 752, i32 126, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp55 = icmp ne i8 %22, -124
  %23 = load i8* getelementptr inbounds ([169 x i8]* @opts, i32 0, i32 50), align 1, !tbaa !0
  %tobool59 = icmp eq i8 %23, 0
  %or.cond = or i1 %cmp55, %tobool59
  br i1 %or.cond, label %if.else, label %cont62

cont62:                                           ; preds = %land.lhs.true51
  %24 = load i8** %str, align 4, !tbaa !2
  %arrayidx63 = getelementptr inbounds i8* %24, i32 -2
  %25 = load i8* %arrayidx63, align 1, !tbaa !0
  %cmp65 = icmp eq i8 %25, 47
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %cont62
  %26 = load i8** %instr.addr, align 4, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8* %26, i32 1
  store i8* %incdec.ptr, i8** %instr.addr, align 4, !tbaa !2
  %call68 = call %struct.patprog* @patcompile(i8* %incdec.ptr, i32 %cond, i8** %instr.addr) nounwind
  %tobool69 = icmp eq %struct.patprog* %call68, null
  br i1 %tobool69, label %return, label %if.end71

if.end71:                                         ; preds = %if.then67
  %27 = load i8** %instr.addr, align 4, !tbaa !2
  %28 = load i8* %27, align 1, !tbaa !0
  %cmp74 = icmp eq i8 %28, 47
  br i1 %cmp74, label %land.lhs.true76, label %if.end146

land.lhs.true76:                                  ; preds = %if.end71
  %arrayidx77 = getelementptr inbounds i8* %27, i32 1
  %29 = load i8* %arrayidx77, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 756, i32 48, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 137, i8 1) nounwind
  %cmp81 = icmp eq i8 %29, -119
  br i1 %cmp81, label %land.lhs.true83, label %if.end146

land.lhs.true83:                                  ; preds = %land.lhs.true76
  %30 = load i8** %instr.addr, align 4, !tbaa !2
  %arrayidx84 = getelementptr inbounds i8* %30, i32 2
  %31 = load i8* %arrayidx84, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 756, i32 77, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp88 = icmp eq i8 %31, -124
  br i1 %cmp88, label %if.then90, label %if.end146

if.then90:                                        ; preds = %land.lhs.true83
  %32 = load i8** %instr.addr, align 4, !tbaa !2
  %add.ptr91 = getelementptr inbounds i8* %32, i32 3
  store i8* %add.ptr91, i8** %instr.addr, align 4, !tbaa !2
  %33 = load i8* %add.ptr91, align 1, !tbaa !0
  call void @__ioc_report_conversion(i32 759, i32 32, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @19, i32 0, i32 0), i64 132, i8 1) nounwind
  %cmp95 = icmp eq i8 %33, -124
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.then90
  %34 = load i8** %instr.addr, align 4, !tbaa !2
  %incdec.ptr98 = getelementptr inbounds i8* %34, i32 1
  store i8* %incdec.ptr98, i8** %instr.addr, align 4, !tbaa !2
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then90
  %pdflag.0 = phi i32 [ 1, %if.then97 ], [ 0, %if.then90 ]
  %call100 = call i8* @zhalloc(i32 16) nounwind
  %35 = bitcast i8* %call100 to %struct.complist*
  %pat101 = getelementptr inbounds i8* %call100, i32 4
  %36 = bitcast i8* %pat101 to %struct.patprog**
  store %struct.patprog* %call68, %struct.patprog** %36, align 4, !tbaa !2
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pdflag.0, i32 1)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  br i1 %39, label %ioc_bb102, label %cont103

ioc_bb102:                                        ; preds = %if.end99
  %40 = zext i32 %pdflag.0 to i64
  call void @__ioc_report_add_overflow(i32 765, i32 25, i8* getelementptr inbounds ([21 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @22, i32 0, i32 0), i64 1, i64 %40, i8 13) nounwind
  br label %cont103

cont103:                                          ; preds = %if.end99, %ioc_bb102
  %closure104 = getelementptr inbounds i8* %call100, i32 8
  %41 = bitcast i8* %closure104 to i32*
  store i32 %38, i32* %41, align 4, !tbaa !3
  %follow105 = getelementptr inbounds i8* %call100, i32 12
  %42 = bitcast i8* %follow105 to i32*
  store i32 0, i32* %42, align 4, !tbaa !3
  %43 = load i8** %instr.addr, align 4, !tbaa !2
  %call106 = call fastcc %struct.complist* @parsecomplist(i8* %43)
  %next107 = bitcast i8* %call100 to %struct.complist**
  store %struct.complist* %call106, %struct.complist** %next107, align 4, !tbaa !2
  %44 = load %struct.patprog** %36, align 4, !tbaa !2
  %tobool109 = icmp ne %struct.patprog* %44, null
  %cond110 = select i1 %tobool109, %struct.complist* %35, %struct.complist* null
  br label %return

if.else:                                          ; preds = %land.lhs.true51, %ioc_bb45, %cont62, %if.end38
  %45 = load i8** %instr.addr, align 4, !tbaa !2
  %or112 = or i32 %cond, 2
  %call113 = call %struct.patprog* @patcompile(i8* %45, i32 %or112, i8** %instr.addr) nounwind
  %tobool114 = icmp eq %struct.patprog* %call113, null
  br i1 %tobool114, label %return, label %if.end116

if.end116:                                        ; preds = %if.else
  %46 = load i8** %instr.addr, align 4, !tbaa !2
  %47 = load i8* %46, align 1, !tbaa !0
  switch i8 %47, label %if.end146 [
    i8 47, label %if.then122
    i8 0, label %if.then122
  ]

if.then122:                                       ; preds = %if.end116, %if.end116
  %cmp124 = icmp eq i8 %47, 47
  %call126 = call i8* @zhalloc(i32 16) nounwind
  %48 = bitcast i8* %call126 to %struct.complist*
  %pat127 = getelementptr inbounds i8* %call126, i32 4
  %49 = bitcast i8* %pat127 to %struct.patprog**
  store %struct.patprog* %call113, %struct.patprog** %49, align 4, !tbaa !2
  %closure128 = getelementptr inbounds i8* %call126, i32 8
  %50 = bitcast i8* %closure128 to i32*
  store i32 0, i32* %50, align 4, !tbaa !3
  br i1 %cmp124, label %cond.true130, label %cond.end134

cond.true130:                                     ; preds = %if.then122
  %51 = load i8** %instr.addr, align 4, !tbaa !2
  %add.ptr131 = getelementptr inbounds i8* %51, i32 1
  %call132 = call fastcc %struct.complist* @parsecomplist(i8* %add.ptr131)
  br label %cond.end134

cond.end134:                                      ; preds = %if.then122, %cond.true130
  %cond135 = phi %struct.complist* [ %call132, %cond.true130 ], [ null, %if.then122 ]
  %next136 = bitcast i8* %call126 to %struct.complist**
  store %struct.complist* %cond135, %struct.complist** %next136, align 4, !tbaa !2
  %tobool140 = icmp eq %struct.complist* %cond135, null
  %or.cond167 = and i1 %cmp124, %tobool140
  %cond144 = select i1 %or.cond167, %struct.complist* null, %struct.complist* %48
  br label %return

if.end146:                                        ; preds = %if.end116, %if.end71, %land.lhs.true76, %land.lhs.true83
  store i32 1, i32* @errflag, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cond.end134, %if.else, %if.then67, %if.end146, %cont103, %if.end, %if.then35
  %retval.0 = phi %struct.complist* [ null, %if.then35 ], [ %15, %if.end ], [ null, %if.end146 ], [ %cond110, %cont103 ], [ null, %if.then67 ], [ null, %if.else ], [ %cond144, %cond.end134 ]
  ret %struct.complist* %retval.0
}

declare i8* @itype_end(i8*, i32, i32)

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"int", metadata !0}
!4 = metadata !{metadata !"short", metadata !0}
!5 = metadata !{metadata !"long long", metadata !0}
!6 = metadata !{i64 0, i64 4, metadata !2, i64 4, i64 4, metadata !2, i64 8, i64 4, metadata !2, i64 12, i64 8, metadata !5, i64 20, i64 4, metadata !3, i64 24, i64 4, metadata !3, i64 28, i64 4, metadata !3, i64 32, i64 4, metadata !3, i64 36, i64 4, metadata !2}
!7 = metadata !{metadata !"long", metadata !0}
!8 = metadata !{i64 0, i64 4, metadata !3, i64 4, i64 4, metadata !3, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !3, i64 16, i64 4, metadata !2, i64 20, i64 4, metadata !2, i64 24, i64 4, metadata !2, i64 28, i64 4, metadata !2}
