; ModuleID = '../../../src/Library/src/HTInet.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct._HTHost = type { i32, i8*, i16, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct._HTList*, %struct._HTList*, %struct._HTNet*, %struct._HTNet*, %struct._HTNet*, i8, i32, %struct._HTTimer*, i8, i32, i8, i8, %struct._HTChannel*, %struct._HTdns*, i32, %struct.sockaddr_in, i32, i32, i32, [3 x %struct._HTEvent*], i32, i32, i32, i8*, i32, i32 }
%struct._HTList = type { i8*, %struct._HTList* }
%struct._HTNet = type { i32, %struct._HTRequest*, %struct._HTHost*, %struct._HTProtocol*, %struct._HTTransport*, i32, i8, i32, i32, i32, i32, i32, i8, %struct._HTEvent, %struct._HTStream*, i8*, i32 }
%struct._HTRequest = type opaque
%struct._HTProtocol = type opaque
%struct._HTTransport = type { i8*, i32, %struct._HTInputStream* (%struct._HTHost*, %struct._HTChannel*, i8*, i32)*, %struct._HTOutputStream* (%struct._HTHost*, %struct._HTChannel*, i8*, i32)* }
%struct._HTInputStream = type opaque
%struct._HTChannel = type opaque
%struct._HTOutputStream = type opaque
%struct._HTEvent = type { i32, i32, i32 (i32, i8*, i32)*, i8*, %struct._HTRequest* }
%struct._HTStream = type opaque
%struct._HTTimer = type opaque
%struct._HTdns = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }

@WWW_TraceFlag = external global i32
@.str = private unnamed_addr constant [59 x i8] c"System Error %d after call to %s() failed\0A............ %s\0A\00", align 1
@HTInetString.string = internal global [16 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str2 = private unnamed_addr constant [45 x i8] c"ParseInet... as port %d on %s with %d homes\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"HostName.... gethostname says `%s'\0A\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"HostName.... Can't get domain name\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@1 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str11 = private unnamed_addr constant [27 x i8] c"HostName.... FQDN is `%s'\0A\00", align 1
@.str12 = private unnamed_addr constant [36 x i8] c"MailAddress. getlogin returns NULL\0A\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"MailAddress. LOGNAME not found\0A\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"MailAddress. USER not found\0A\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"libwww\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"NNTPSERVER\00", align 1
@.str20 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/rn/server\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"news\00", align 1
@2 = internal unnamed_addr constant [4 x i8] c"int\00"
@3 = internal unnamed_addr constant [5 x i8] c"char\00"
@HTGetTimeZoneOffset.HTTimeZone = internal unnamed_addr global i32 -1, align 4
@daylight = external global i32
@timezone = external global i32
@4 = internal unnamed_addr constant [2 x i8] c"-\00"
@5 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str22 = private unnamed_addr constant [49 x i8] c"TimeZone.... GMT + (%02d) hours (including DST)\0A\00", align 1
@HTGetTmpFileName.envtmpdir = internal unnamed_addr global i8* null, align 4
@.str23 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"HTGetTmpFileName\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"HTInet.c\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"TMPDIR=\00", align 1
@6 = internal unnamed_addr constant [2 x i8] c"*\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [5 x i8] c"long\00"
@9 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@10 = internal unnamed_addr constant [34 x i8] c"../../../src/Library/src/HTInet.c\00"

define i8* @HTErrnoString(i32 %errornumber) nounwind {
entry:
  %msg = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i32 %errornumber}, i64 0, metadata !72), !dbg !494
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !73), !dbg !495
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !495
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !495
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !495
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !495
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !495
  store i8* null, i8** %msg, align 4, !dbg !495, !tbaa !497
  %call = call i8* @strerror(i32 %errornumber) nounwind, !dbg !500
  %call1 = call i8* @HTSACopy(i8** %msg, i8* %call) nounwind, !dbg !500
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !73), !dbg !501
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !73), !dbg !501
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !73), !dbg !501
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !73), !dbg !501
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !73), !dbg !501
  %0 = load i8** %msg, align 4, !dbg !501, !tbaa !497
  ret i8* %0, !dbg !501
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i8* @HTSACopy(i8**, i8*)

declare i8* @strerror(i32) nounwind

define i32 @HTInetStatus(i32 %errnum, i8* %where) nounwind {
entry:
  %msg.i = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i32 %errnum}, i64 0, metadata !80), !dbg !502
  call void @llvm.dbg.value(metadata !{i8* %where}, i64 0, metadata !81), !dbg !502
  %0 = load i32* @WWW_TraceFlag, align 4, !dbg !503, !tbaa !504
  %and = and i32 %0, 8192, !dbg !503
  %tobool = icmp eq i32 %and, 0, !dbg !503
  br i1 %tobool, label %if.end8, label %if.then, !dbg !503

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %msg.i to i8*, !dbg !505
  call void @llvm.lifetime.start(i64 -1, i8* %1) nounwind, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %errnum}, i64 0, metadata !507) nounwind, !dbg !505
  call void @llvm.dbg.declare(metadata !{i8** %msg.i}, metadata !73) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !509) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !509) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !509) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !509) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !509) nounwind, !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !508
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !73), !dbg !508
  store i8* null, i8** %msg.i, align 4, !dbg !508, !tbaa !497
  %call.i = call i8* @strerror(i32 %errnum) nounwind, !dbg !510
  %call1.i = call i8* @HTSACopy(i8** %msg.i, i8* %call.i) nounwind, !dbg !510
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !509) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !509) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !509) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !509) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !509) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !73), !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !73), !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !73), !dbg !511
  call void @llvm.dbg.value(metadata !{i8** %msg.i}, i64 0, metadata !73), !dbg !511
  %2 = load i8** %msg.i, align 4, !dbg !511, !tbaa !497
  call void @llvm.lifetime.end(i64 -1, i8* %1) nounwind, !dbg !511
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !82), !dbg !506
  %3 = load i32* @WWW_TraceFlag, align 4, !dbg !512, !tbaa !504
  %and3 = and i32 %3, 8192, !dbg !512
  %tobool4 = icmp eq i32 %and3, 0, !dbg !512
  br i1 %tobool4, label %do.end, label %if.then5, !dbg !512

if.then5:                                         ; preds = %if.then
  %call6 = call i32* @__errno_location() nounwind readnone, !dbg !514
  %4 = load i32* %call6, align 4, !dbg !514, !tbaa !504
  %call7 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([59 x i8]* @.str, i32 0, i32 0), i32 %4, i8* %where, i8* %2) nounwind, !dbg !514
  br label %do.end, !dbg !514

do.end:                                           ; preds = %if.then, %if.then5
  call void @HTMemory_free(i8* %2) nounwind, !dbg !515
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !82), !dbg !517
  br label %if.end8, !dbg !518

if.end8:                                          ; preds = %entry, %do.end
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %errnum), !dbg !519
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !519
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !519
  br i1 %7, label %ioc_bb9, label %cont10, !dbg !519

ioc_bb9:                                          ; preds = %if.end8
  %8 = sext i32 %errnum to i64, !dbg !519
  call void @__ioc_report_sub_overflow(i32 79, i32 10, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i64 0, i64 %8, i8 13) nounwind, !dbg !519
  br label %cont10, !dbg !519

cont10:                                           ; preds = %if.end8, %ioc_bb9
  ret i32 %6, !dbg !519
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @HTTrace(i8*, ...)

declare i32* @__errno_location() nounwind readnone

declare void @HTMemory_free(i8*)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @HTCardinal(i32* nocapture %pstatus, i8** nocapture %pp, i32 %max_value) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %pstatus}, i64 0, metadata !93), !dbg !520
  tail call void @llvm.dbg.value(metadata !{i8** %pp}, i64 0, metadata !94), !dbg !520
  tail call void @llvm.dbg.value(metadata !{i32 %max_value}, i64 0, metadata !95), !dbg !520
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !96), !dbg !521
  %0 = load i8** %pp, align 4, !dbg !522, !tbaa !497
  %1 = load i8* %0, align 1, !dbg !522, !tbaa !498
  %.off = add i8 %1, -48, !dbg !522
  %2 = icmp ugt i8 %.off, 9, !dbg !522
  br i1 %2, label %cont6, label %cont16, !dbg !522

cont6:                                            ; preds = %entry
  store i32 -3, i32* %pstatus, align 4, !dbg !523, !tbaa !504
  br label %return, !dbg !525

cont16:                                           ; preds = %entry, %while.cond.backedge
  %3 = phi i8* [ %20, %while.cond.backedge ], [ %0, %entry ]
  %n.044 = phi i32 [ %18, %while.cond.backedge ], [ 0, %entry ]
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.044, i32 10), !dbg !526
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !526
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !526
  br i1 %6, label %ioc_bb17, label %cont18, !dbg !526

ioc_bb17:                                         ; preds = %cont16
  %7 = zext i32 %n.044 to i64, !dbg !526
  tail call void @__ioc_report_mul_overflow(i32 107, i32 11, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %7, i64 10, i8 5) nounwind, !dbg !526
  %.pre = load i8** %pp, align 4, !dbg !526, !tbaa !497
  br label %cont18, !dbg !526

cont18:                                           ; preds = %cont16, %ioc_bb17
  %8 = phi i8* [ %3, %cont16 ], [ %.pre, %ioc_bb17 ]
  %incdec.ptr = getelementptr inbounds i8* %8, i32 1, !dbg !526
  store i8* %incdec.ptr, i8** %pp, align 4, !dbg !526, !tbaa !497
  %9 = load i8* %8, align 1, !dbg !526, !tbaa !498
  %10 = icmp sgt i8 %9, -1, !dbg !526
  br i1 %10, label %cont20, label %ioc_bb19, !dbg !526

ioc_bb19:                                         ; preds = %cont18
  %11 = sext i8 %9 to i64, !dbg !526
  tail call void @__ioc_report_conversion(i32 107, i32 18, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !526
  br label %cont20, !dbg !526

cont20:                                           ; preds = %ioc_bb19, %cont18
  %conv21 = sext i8 %9 to i32, !dbg !526
  %12 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %5, i32 %conv21), !dbg !526
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !526
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !526
  br i1 %14, label %ioc_bb22, label %cont25, !dbg !526

ioc_bb22:                                         ; preds = %cont20
  %15 = zext i32 %conv21 to i64, !dbg !526
  %16 = zext i32 %5 to i64, !dbg !526
  tail call void @__ioc_report_add_overflow(i32 107, i32 16, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %16, i64 %15, i8 5) nounwind, !dbg !526
  br label %cont25, !dbg !526

cont25:                                           ; preds = %ioc_bb22, %cont20
  %17 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 48), !dbg !526
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !526
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !526
  br i1 %19, label %ioc_bb26, label %while.cond.backedge, !dbg !526

while.cond.backedge:                              ; preds = %cont25, %ioc_bb26
  %20 = load i8** %pp, align 4, !dbg !527, !tbaa !497
  %21 = load i8* %20, align 1, !dbg !527, !tbaa !498
  %.off42 = add i8 %21, -48, !dbg !527
  %22 = icmp ult i8 %.off42, 10, !dbg !527
  br i1 %22, label %cont16, label %while.end

ioc_bb26:                                         ; preds = %cont25
  %23 = zext i32 %13 to i64, !dbg !526
  tail call void @__ioc_report_sub_overflow(i32 107, i32 33, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %23, i64 48, i8 5) nounwind, !dbg !526
  br label %while.cond.backedge, !dbg !526

while.end:                                        ; preds = %while.cond.backedge
  %cmp28 = icmp ugt i32 %18, %max_value, !dbg !528
  br i1 %cmp28, label %cont32, label %return, !dbg !528

cont32:                                           ; preds = %while.end
  store i32 -4, i32* %pstatus, align 4, !dbg !529, !tbaa !504
  br label %return, !dbg !531

return:                                           ; preds = %while.end, %cont32, %cont6
  %retval.0 = phi i32 [ 0, %cont6 ], [ 0, %cont32 ], [ %18, %while.end ]
  ret i32 %retval.0, !dbg !532
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

define void @HTSetSignal() nounwind readnone {
entry:
  ret void, !dbg !533
}

define i8* @HTInetString(%struct.sockaddr_in* nocapture %sin) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr_in* %sin}, i64 0, metadata !130), !dbg !535
  %sin_addr = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 2, !dbg !536
  %0 = bitcast %struct.in_addr* %sin_addr to i8*, !dbg !536
  %1 = load i8* %0, align 1, !dbg !536, !tbaa !498
  %conv = zext i8 %1 to i32, !dbg !536
  %add.ptr2 = getelementptr inbounds i8* %0, i32 1, !dbg !536
  %2 = load i8* %add.ptr2, align 1, !dbg !536, !tbaa !498
  %conv3 = zext i8 %2 to i32, !dbg !536
  %add.ptr5 = getelementptr inbounds i8* %0, i32 2, !dbg !536
  %3 = load i8* %add.ptr5, align 1, !dbg !536, !tbaa !498
  %conv6 = zext i8 %3 to i32, !dbg !536
  %add.ptr8 = getelementptr inbounds i8* %0, i32 3, !dbg !536
  %4 = load i8* %add.ptr8, align 1, !dbg !536, !tbaa !498
  %conv9 = zext i8 %4 to i32, !dbg !536
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([16 x i8]* @HTInetString.string, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9) nounwind, !dbg !536
  ret i8* getelementptr inbounds ([16 x i8]* @HTInetString.string, i32 0, i32 0), !dbg !538
}

declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) nounwind

define i32 @HTParseInet(%struct._HTHost* %host, i8* %hostname, %struct._HTRequest* %request) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._HTHost* %host}, i64 0, metadata !289), !dbg !539
  tail call void @llvm.dbg.value(metadata !{i8* %hostname}, i64 0, metadata !290), !dbg !539
  tail call void @llvm.dbg.value(metadata !{%struct._HTRequest* %request}, i64 0, metadata !291), !dbg !539
  tail call void @llvm.dbg.value(metadata !540, i64 0, metadata !292), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i8* %hostname}, i64 0, metadata !295), !dbg !542
  br label %while.cond, !dbg !543

while.cond:                                       ; preds = %if.end, %entry
  %strptr.0 = phi i8* [ %hostname, %entry ], [ %incdec.ptr, %if.end ]
  %0 = load i8* %strptr.0, align 1, !dbg !543, !tbaa !498
  switch i8 %0, label %if.end [
    i8 0, label %if.end30.thread
    i8 58, label %cont
  ], !dbg !543

cont:                                             ; preds = %while.cond
  store i8 0, i8* %strptr.0, align 1, !dbg !544, !tbaa !498
  br label %if.end30.thread, !dbg !547

if.end:                                           ; preds = %while.cond
  %conv = sext i8 %0 to i32, !dbg !548
  %call = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !549
  %1 = load i16** %call, align 4, !dbg !549, !tbaa !497
  %arrayidx = getelementptr inbounds i16* %1, i32 %conv, !dbg !549
  %2 = load i16* %arrayidx, align 2, !dbg !549, !tbaa !550
  %and = and i16 %2, 2048, !dbg !549
  %tobool14 = icmp ne i16 %and, 0, !dbg !549
  %cmp16 = icmp eq i8 %0, 46, !dbg !549
  %or.cond = or i1 %tobool14, %cmp16, !dbg !549
  %incdec.ptr = getelementptr inbounds i8* %strptr.0, i32 1, !dbg !551
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !295), !dbg !551
  br i1 %or.cond, label %while.cond, label %while.end, !dbg !549

while.end:                                        ; preds = %if.end
  %tobool20 = icmp eq i8 %0, 0, !dbg !552
  br i1 %tobool20, label %if.end30.thread, label %if.else, !dbg !552

if.end30.thread:                                  ; preds = %while.cond, %while.end, %cont
  %call22 = tail call i32 @inet_addr(i8* %hostname) nounwind, !dbg !553
  %s_addr = getelementptr inbounds %struct._HTHost* %host, i32 0, i32 28, i32 2, i32 0, !dbg !553
  store i32 %call22, i32* %s_addr, align 4, !dbg !553, !tbaa !504
  br label %cont35, !dbg !555

if.else:                                          ; preds = %while.end
  %call23 = tail call i8* @strchr(i8* %hostname, i32 58) nounwind, !dbg !556
  tail call void @llvm.dbg.value(metadata !{i8* %call23}, i64 0, metadata !297), !dbg !556
  %tobool24 = icmp eq i8* %call23, null, !dbg !557
  br i1 %tobool24, label %if.end30, label %cont27, !dbg !557

cont27:                                           ; preds = %if.else
  store i8 0, i8* %call23, align 1, !dbg !558, !tbaa !498
  br label %if.end30, !dbg !558

if.end30:                                         ; preds = %cont27, %if.else
  %call29 = tail call i32 @HTGetHostByName(%struct._HTHost* %host, i8* %hostname, %struct._HTRequest* %request) nounwind, !dbg !559
  tail call void @llvm.dbg.value(metadata !{i32 %call29}, i64 0, metadata !292), !dbg !559
  %cmp31 = icmp sgt i32 %call29, 0, !dbg !555
  br i1 %cmp31, label %cont35, label %if.end43, !dbg !555

cont35:                                           ; preds = %if.end30.thread, %if.end30
  %status.060 = phi i32 [ 1, %if.end30.thread ], [ %call29, %if.end30 ]
  %3 = load i32* @WWW_TraceFlag, align 4, !dbg !560, !tbaa !504
  %and36 = and i32 %3, 8192, !dbg !560
  %tobool37 = icmp eq i32 %and36, 0, !dbg !560
  br i1 %tobool37, label %if.end43, label %if.then38, !dbg !560

if.then38:                                        ; preds = %cont35
  %sin_port = getelementptr inbounds %struct._HTHost* %host, i32 0, i32 28, i32 1, !dbg !561
  %4 = load i16* %sin_port, align 2, !dbg !561, !tbaa !550
  tail call void @llvm.dbg.value(metadata !{i16 %4}, i64 0, metadata !302), !dbg !561
  %5 = tail call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %4) nounwind, !dbg !561, !srcloc !562
  tail call void @llvm.dbg.value(metadata !{i16 %5}, i64 0, metadata !299), !dbg !561
  %conv39 = zext i16 %5 to i32, !dbg !561
  %sin_addr.i = getelementptr inbounds %struct._HTHost* %host, i32 0, i32 28, i32 2, !dbg !563
  %6 = bitcast %struct.in_addr* %sin_addr.i to i8*, !dbg !563
  %7 = load i8* %6, align 1, !dbg !563, !tbaa !498
  %conv.i = zext i8 %7 to i32, !dbg !563
  %add.ptr2.i = getelementptr inbounds i8* %6, i32 1, !dbg !563
  %8 = load i8* %add.ptr2.i, align 1, !dbg !563, !tbaa !498
  %conv3.i = zext i8 %8 to i32, !dbg !563
  %add.ptr5.i = getelementptr inbounds i8* %6, i32 2, !dbg !563
  %9 = load i8* %add.ptr5.i, align 1, !dbg !563, !tbaa !498
  %conv6.i = zext i8 %9 to i32, !dbg !563
  %add.ptr8.i = getelementptr inbounds i8* %6, i32 3, !dbg !563
  %10 = load i8* %add.ptr8.i, align 1, !dbg !563, !tbaa !498
  %conv9.i = zext i8 %10 to i32, !dbg !563
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([16 x i8]* @HTInetString.string, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %conv.i, i32 %conv3.i, i32 %conv6.i, i32 %conv9.i) nounwind, !dbg !563
  %call41 = tail call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([45 x i8]* @.str2, i32 0, i32 0), i32 %conv39, i8* getelementptr inbounds ([16 x i8]* @HTInetString.string, i32 0, i32 0), i32 %status.060) nounwind, !dbg !564
  br label %if.end43, !dbg !564

if.end43:                                         ; preds = %cont35, %if.then38, %if.end30
  %status.061 = phi i32 [ %status.060, %cont35 ], [ %status.060, %if.then38 ], [ %call29, %if.end30 ]
  ret i32 %status.061, !dbg !565
}

declare i16** @__ctype_b_loc() nounwind readnone

declare i32 @inet_addr(i8*) nounwind

declare i8* @strchr(i8*, i32) nounwind readonly

declare i32 @HTGetHostByName(%struct._HTHost*, i8*, %struct._HTRequest*)

define i8* @HTGetHostName() nounwind {
entry:
  %hostname = alloca i8*, align 4
  %name = alloca [65 x i8], align 1
  %buffer = alloca [80 x i8], align 1
  call void @llvm.dbg.declare(metadata !{i8** %hostname}, metadata !308), !dbg !566
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !308), !dbg !566
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !308), !dbg !566
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !308), !dbg !566
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !308), !dbg !566
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !308), !dbg !566
  store i8* null, i8** %hostname, align 4, !dbg !566, !tbaa !497
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !310), !dbg !567
  call void @llvm.dbg.declare(metadata !{[65 x i8]* %name}, metadata !311), !dbg !568
  %arraydecay = getelementptr inbounds [65 x i8]* %name, i32 0, i32 0, !dbg !569
  %add.ptr = getelementptr inbounds [65 x i8]* %name, i32 0, i32 64, !dbg !569
  store i8 0, i8* %add.ptr, align 1, !dbg !569, !tbaa !498
  %call = call i32 @gethostname(i8* %arraydecay, i32 64) nounwind, !dbg !570
  %cmp = icmp eq i32 %call, 0, !dbg !570
  br i1 %cmp, label %if.then, label %if.end128, !dbg !570

if.then:                                          ; preds = %entry
  %call5 = call i8* @strchr(i8* %arraydecay, i32 46) nounwind, !dbg !571
  call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !315), !dbg !571
  %0 = load i32* @WWW_TraceFlag, align 4, !dbg !572, !tbaa !504
  %and = and i32 %0, 8192, !dbg !572
  %tobool8 = icmp eq i32 %and, 0, !dbg !572
  br i1 %tobool8, label %if.end15, label %if.then9, !dbg !572

if.then9:                                         ; preds = %if.then
  %call11 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([36 x i8]* @.str3, i32 0, i32 0), i8* %arraydecay) nounwind, !dbg !574
  br label %if.end15, !dbg !574

if.end15:                                         ; preds = %if.then9, %if.then
  %call13 = call i8* @HTSACopy(i8** %hostname, i8* %arraydecay) nounwind, !dbg !575
  %tobool14 = icmp eq i8* %call5, null, !dbg !576
  br i1 %tobool14, label %land.lhs.true17, label %if.end128, !dbg !577

land.lhs.true17:                                  ; preds = %if.end15
  %call18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !577
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call18}, i64 0, metadata !317), !dbg !577
  %cmp19 = icmp eq %struct._IO_FILE* %call18, null, !dbg !577
  br i1 %cmp19, label %cont81, label %cont22, !dbg !577

cont22:                                           ; preds = %land.lhs.true17
  call void @llvm.dbg.declare(metadata !{[80 x i8]* %buffer}, metadata !371), !dbg !578
  %arraydecay23 = getelementptr inbounds [80 x i8]* %buffer, i32 0, i32 0, !dbg !579
  %add.ptr24 = getelementptr inbounds [80 x i8]* %buffer, i32 0, i32 79, !dbg !579
  store i8 0, i8* %add.ptr24, align 1, !dbg !579, !tbaa !498
  %call26189 = call i8* @fgets(i8* %arraydecay23, i32 79, %struct._IO_FILE* %call18) nounwind, !dbg !580
  %tobool27190 = icmp eq i8* %call26189, null, !dbg !580
  br i1 %tobool27190, label %if.end75, label %while.body.lr.ph, !dbg !580

while.body.lr.ph:                                 ; preds = %cont22
  %add.ptr36 = getelementptr inbounds [80 x i8]* %buffer, i32 0, i32 6, !dbg !581
  br label %while.body, !dbg !580

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call29 = call i32 @strncasecomp(i8* %arraydecay23, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i32 6) nounwind, !dbg !582
  %tobool30 = icmp eq i32 %call29, 0, !dbg !582
  br i1 %tobool30, label %while.cond37, label %lor.lhs.false, !dbg !582

lor.lhs.false:                                    ; preds = %while.body
  %call32 = call i32 @strncasecomp(i8* %arraydecay23, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 6) nounwind, !dbg !582
  %tobool33 = icmp eq i32 %call32, 0, !dbg !582
  br i1 %tobool33, label %while.cond37, label %while.cond.backedge, !dbg !582

while.cond37:                                     ; preds = %while.body, %lor.lhs.false, %while.body43
  %domainstr.0 = phi i8* [ %incdec.ptr, %while.body43 ], [ %add.ptr36, %lor.lhs.false ], [ %add.ptr36, %while.body ]
  %1 = load i8* %domainstr.0, align 1, !dbg !583, !tbaa !498
  switch i8 %1, label %while.cond44 [
    i8 32, label %while.body43
    i8 9, label %while.body43
  ], !dbg !583

while.body43:                                     ; preds = %while.cond37, %while.cond37
  %incdec.ptr = getelementptr inbounds i8* %domainstr.0, i32 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !376), !dbg !584
  br label %while.cond37, !dbg !584

while.cond44:                                     ; preds = %while.cond37, %land.rhs.while.cond44_crit_edge
  %2 = phi i8 [ %.pre191, %land.rhs.while.cond44_crit_edge ], [ %1, %while.cond37 ]
  %end.0 = phi i8* [ %incdec.ptr63, %land.rhs.while.cond44_crit_edge ], [ %domainstr.0, %while.cond37 ]
  %tobool46 = icmp eq i8 %2, 0, !dbg !585
  br i1 %tobool46, label %cont66, label %land.rhs, !dbg !585

land.rhs:                                         ; preds = %while.cond44
  %conv45 = sext i8 %2 to i32, !dbg !585
  %call48 = call i16** @__ctype_b_loc() nounwind readnone, !dbg !585
  %3 = load i16** %call48, align 4, !dbg !585, !tbaa !497
  %arrayidx = getelementptr inbounds i16* %3, i32 %conv45, !dbg !585
  %4 = load i16* %arrayidx, align 2, !dbg !585, !tbaa !550
  %and60 = and i16 %4, 8192, !dbg !585
  %lnot = icmp eq i16 %and60, 0, !dbg !585
  %incdec.ptr63 = getelementptr inbounds i8* %end.0, i32 1, !dbg !586
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr63}, i64 0, metadata !379), !dbg !586
  br i1 %lnot, label %land.rhs.while.cond44_crit_edge, label %cont66

land.rhs.while.cond44_crit_edge:                  ; preds = %land.rhs
  %.pre191 = load i8* %incdec.ptr63, align 1, !dbg !585, !tbaa !498
  br label %while.cond44

cont66:                                           ; preds = %land.rhs, %while.cond44
  store i8 0, i8* %end.0, align 1, !dbg !587, !tbaa !498
  %5 = load i8* %domainstr.0, align 1, !dbg !588, !tbaa !498
  %tobool67 = icmp eq i8 %5, 0, !dbg !588
  br i1 %tobool67, label %while.cond.backedge, label %if.end75.thread183, !dbg !588

while.cond.backedge:                              ; preds = %cont66, %lor.lhs.false
  %call26 = call i8* @fgets(i8* %arraydecay23, i32 79, %struct._IO_FILE* %call18) nounwind, !dbg !580
  %tobool27 = icmp eq i8* %call26, null, !dbg !580
  br i1 %tobool27, label %if.end75, label %while.body, !dbg !580

if.end75.thread183:                               ; preds = %cont66
  %call69 = call i8* @HTSACat(i8** %hostname, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !589
  %call70 = call i8* @HTSACat(i8** %hostname, i8* %domainstr.0) nounwind, !dbg !591
  call void @llvm.dbg.value(metadata !592, i64 0, metadata !310), !dbg !593
  %call74184 = call i32 @fclose(%struct._IO_FILE* %call18) nounwind, !dbg !594
  br label %if.end128, !dbg !595

if.end75:                                         ; preds = %while.cond.backedge, %cont22
  %call74 = call i32 @fclose(%struct._IO_FILE* %call18) nounwind, !dbg !594
  br label %cont81, !dbg !595

cont81:                                           ; preds = %if.end75, %land.lhs.true17
  %call82 = call i32 @getdomainname(i8* %arraydecay, i32 64) nounwind, !dbg !596
  %tobool83 = icmp eq i32 %call82, 0, !dbg !596
  br i1 %tobool83, label %cond.false, label %cont87, !dbg !596

cont87:                                           ; preds = %cont81
  %6 = load i32* @WWW_TraceFlag, align 4, !dbg !597, !tbaa !504
  %and88 = and i32 %6, 8192, !dbg !597
  %tobool89 = icmp eq i32 %and88, 0, !dbg !597
  br i1 %tobool89, label %do.end93, label %if.then90, !dbg !597

if.then90:                                        ; preds = %cont87
  %call91 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([36 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !600
  br label %do.end93, !dbg !600

do.end93:                                         ; preds = %cont87, %if.then90
  %call94 = call i8* @HTSACopy(i8** %hostname, i8* getelementptr inbounds ([1 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !601
  br label %return, !dbg !602

cond.false:                                       ; preds = %cont81
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !603
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !603
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !603
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !603
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !603
  %7 = load i8** %hostname, align 4, !dbg !603, !tbaa !497
  %call110 = call i32 @strlen(i8* %7) nounwind readonly, !dbg !603
  %8 = icmp sgt i32 %call110, -1, !dbg !603
  br i1 %8, label %cont116, label %ioc_bb115, !dbg !603

ioc_bb115:                                        ; preds = %cond.false
  %9 = zext i32 %call110 to i64, !dbg !603
  call void @__ioc_report_conversion(i32 309, i32 9, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i64 %9, i8 0) nounwind, !dbg !603
  %10 = sext i32 %call110 to i64, !dbg !603
  call void @__ioc_report_conversion(i32 309, i32 9, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @1, i32 0, i32 0), i64 %10, i8 1) nounwind, !dbg !603
  br label %cont116, !dbg !603

cont116:                                          ; preds = %cond.false, %ioc_bb115
  %call117 = call i32 @strncmp(i8* %arraydecay, i8* %7, i32 %call110) nounwind readonly, !dbg !603
  %tobool118 = icmp eq i32 %call117, 0, !dbg !603
  br i1 %tobool118, label %if.end128, label %if.then119, !dbg !603

if.then119:                                       ; preds = %cont116
  %call121 = call i8* @strchr(i8* %arraydecay, i32 46) nounwind, !dbg !604
  call void @llvm.dbg.value(metadata !{i8* %call121}, i64 0, metadata !384), !dbg !604
  %tobool122 = icmp eq i8* %call121, null, !dbg !605
  %arraydecay.call121 = select i1 %tobool122, i8* %arraydecay, i8* %call121, !dbg !605
  %call126 = call i8* @HTSACat(i8** %hostname, i8* %arraydecay.call121) nounwind, !dbg !606
  br label %if.end128, !dbg !607

if.end128:                                        ; preds = %cont116, %if.end15, %entry, %if.end75.thread183, %if.then119
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !608
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !608
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !608
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !608
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !608
  %11 = load i8** %hostname, align 4, !dbg !608, !tbaa !497
  %tobool129 = icmp eq i8* %11, null, !dbg !608
  br i1 %tobool129, label %if.end164, label %while.cond131.preheader, !dbg !608

while.cond131.preheader:                          ; preds = %if.end128
  %12 = load i8* %11, align 1, !dbg !609, !tbaa !498
  %tobool132187 = icmp eq i8 %12, 0, !dbg !609
  br i1 %tobool132187, label %while.end141, label %while.body133, !dbg !609

while.body133:                                    ; preds = %while.cond131.preheader, %cont138
  %13 = phi i8 [ %19, %cont138 ], [ %12, %while.cond131.preheader ]
  %strptr.0188 = phi i8* [ %incdec.ptr140, %cont138 ], [ %11, %while.cond131.preheader ]
  %conv134 = sext i8 %13 to i32, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %conv134}, i64 0, metadata !612) nounwind, !dbg !613
  %__c.off.i = add i32 %conv134, 128, !dbg !614
  %14 = icmp ult i32 %__c.off.i, 384, !dbg !614
  br i1 %14, label %cond.true.i, label %tolower.exit, !dbg !614

cond.true.i:                                      ; preds = %while.body133
  %call.i = call i32** @__ctype_tolower_loc() nounwind readnone, !dbg !614
  %15 = load i32** %call.i, align 4, !dbg !614, !tbaa !497
  %arrayidx.i = getelementptr inbounds i32* %15, i32 %conv134, !dbg !614
  %16 = load i32* %arrayidx.i, align 4, !dbg !614, !tbaa !504
  br label %tolower.exit, !dbg !614

tolower.exit:                                     ; preds = %while.body133, %cond.true.i
  %cond.i = phi i32 [ %16, %cond.true.i ], [ %conv134, %while.body133 ], !dbg !614
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !388), !dbg !610
  %call135.off = add i32 %cond.i, 128, !dbg !610
  %17 = icmp ult i32 %call135.off, 256, !dbg !610
  br i1 %17, label %cont138, label %ioc_bb137, !dbg !610

ioc_bb137:                                        ; preds = %tolower.exit
  %18 = sext i32 %cond.i to i64, !dbg !610
  call void @__ioc_report_conversion(i32 320, i32 18, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %18, i8 1) nounwind, !dbg !610
  br label %cont138, !dbg !610

cont138:                                          ; preds = %ioc_bb137, %tolower.exit
  %conv139 = trunc i32 %cond.i to i8, !dbg !610
  store i8 %conv139, i8* %strptr.0188, align 1, !dbg !610, !tbaa !498
  %incdec.ptr140 = getelementptr inbounds i8* %strptr.0188, i32 1, !dbg !616
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr140}, i64 0, metadata !386), !dbg !616
  %19 = load i8* %incdec.ptr140, align 1, !dbg !609, !tbaa !498
  %tobool132 = icmp eq i8 %19, 0, !dbg !609
  br i1 %tobool132, label %while.cond131.while.end141_crit_edge, label %while.body133, !dbg !609

while.cond131.while.end141_crit_edge:             ; preds = %cont138
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !617
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !617
  %.pre = load i8** %hostname, align 4, !dbg !617, !tbaa !497
  br label %while.end141, !dbg !609

while.end141:                                     ; preds = %while.cond131.while.end141_crit_edge, %while.cond131.preheader
  %20 = phi i8* [ %.pre, %while.cond131.while.end141_crit_edge ], [ %11, %while.cond131.preheader ]
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !617
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !617
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !617
  %call142 = call i32 @strlen(i8* %20) nounwind readonly, !dbg !617
  %add.ptr143.sum = add i32 %call142, -1, !dbg !617
  %add.ptr144 = getelementptr inbounds i8* %20, i32 %add.ptr143.sum, !dbg !617
  %21 = load i8* %add.ptr144, align 1, !dbg !617, !tbaa !498
  %cmp146 = icmp eq i8 %21, 46, !dbg !617
  br i1 %cmp146, label %cont150, label %cont157, !dbg !617

cont150:                                          ; preds = %while.end141
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !618
  store i8 0, i8* %add.ptr144, align 1, !dbg !618, !tbaa !498
  br label %cont157, !dbg !618

cont157:                                          ; preds = %cont150, %while.end141
  %22 = load i32* @WWW_TraceFlag, align 4, !dbg !619, !tbaa !504
  %and158 = and i32 %22, 8192, !dbg !619
  %tobool159 = icmp eq i32 %and158, 0, !dbg !619
  br i1 %tobool159, label %if.end164, label %if.then160, !dbg !619

if.then160:                                       ; preds = %cont157
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !621
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !621
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !621
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !621
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !621
  %23 = load i8** %hostname, align 4, !dbg !621, !tbaa !497
  %call161 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([27 x i8]* @.str11, i32 0, i32 0), i8* %23) nounwind, !dbg !621
  br label %if.end164, !dbg !621

if.end164:                                        ; preds = %cont157, %if.end128, %if.then160
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !622
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !622
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !622
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !622
  call void @llvm.dbg.value(metadata !{i8** %hostname}, i64 0, metadata !308), !dbg !622
  %24 = load i8** %hostname, align 4, !dbg !622, !tbaa !497
  br label %return, !dbg !622

return:                                           ; preds = %if.end164, %do.end93
  %retval.0 = phi i8* [ null, %do.end93 ], [ %24, %if.end164 ]
  ret i8* %retval.0, !dbg !623
}

declare i32 @gethostname(i8*, i32) nounwind

declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) nounwind

declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) nounwind

declare i32 @strncasecomp(i8*, i8*, i32)

declare i8* @HTSACat(i8**, i8*)

declare i32 @fclose(%struct._IO_FILE* nocapture) nounwind

declare i32 @getdomainname(i8*, i32) nounwind

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define i8* @HTGetMailAddress() nounwind {
entry:
  %mailaddress = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !624, i64 0, metadata !394), !dbg !625
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !409), !dbg !626
  %call = call i8* @getlogin() nounwind, !dbg !627
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !409), !dbg !627
  %cond = icmp eq i8* %call, null, !dbg !627
  br i1 %cond, label %cont, label %if.then46, !dbg !627

cont:                                             ; preds = %entry
  %0 = load i32* @WWW_TraceFlag, align 4, !dbg !628, !tbaa !504
  %and = and i32 %0, 8192, !dbg !628
  %tobool1 = icmp eq i32 %and, 0, !dbg !628
  br i1 %tobool1, label %land.lhs.true6, label %if.then2, !dbg !628

if.then2:                                         ; preds = %cont
  %call3 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !630
  br label %land.lhs.true6, !dbg !630

land.lhs.true6:                                   ; preds = %if.then2, %cont
  %call7 = call i32 @getuid() nounwind, !dbg !631
  %call8 = call %struct.passwd* @getpwuid(i32 %call7) nounwind, !dbg !631
  call void @llvm.dbg.value(metadata !{%struct.passwd* %call8}, i64 0, metadata !394), !dbg !631
  %cmp9 = icmp eq %struct.passwd* %call8, null, !dbg !631
  br i1 %cmp9, label %land.lhs.true13, label %if.end11, !dbg !631

if.end11:                                         ; preds = %land.lhs.true6
  %pw_name = getelementptr inbounds %struct.passwd* %call8, i32 0, i32 0, !dbg !632
  %1 = load i8** %pw_name, align 4, !dbg !632, !tbaa !497
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !409), !dbg !632
  %tobool12 = icmp eq i8* %1, null, !dbg !633
  br i1 %tobool12, label %land.lhs.true13, label %if.then46, !dbg !633

land.lhs.true13:                                  ; preds = %land.lhs.true6, %if.end11
  %call14 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !633
  call void @llvm.dbg.value(metadata !{i8* %call14}, i64 0, metadata !409), !dbg !633
  %cmp15 = icmp eq i8* %call14, null, !dbg !633
  br i1 %cmp15, label %cont19, label %if.then46, !dbg !633

cont19:                                           ; preds = %land.lhs.true13
  %2 = load i32* @WWW_TraceFlag, align 4, !dbg !634, !tbaa !504
  %and20 = and i32 %2, 8192, !dbg !634
  %tobool21 = icmp eq i32 %and20, 0, !dbg !634
  br i1 %tobool21, label %land.lhs.true28, label %if.end26, !dbg !634

if.end26:                                         ; preds = %cont19
  %call23 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([32 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !636
  br label %land.lhs.true28

land.lhs.true28:                                  ; preds = %cont19, %if.end26
  %call29 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !637
  call void @llvm.dbg.value(metadata !{i8* %call29}, i64 0, metadata !409), !dbg !637
  %cmp30 = icmp eq i8* %call29, null, !dbg !637
  br i1 %cmp30, label %cont34, label %if.then46, !dbg !637

cont34:                                           ; preds = %land.lhs.true28
  %3 = load i32* @WWW_TraceFlag, align 4, !dbg !638, !tbaa !504
  %and35 = and i32 %3, 8192, !dbg !638
  %tobool36 = icmp eq i32 %and35, 0, !dbg !638
  br i1 %tobool36, label %if.then46, label %if.then37, !dbg !638

if.then37:                                        ; preds = %cont34
  %call38 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !640
  br label %if.then46, !dbg !640

if.then46:                                        ; preds = %entry, %land.lhs.true13, %if.end11, %land.lhs.true28, %if.then37, %cont34
  %login.3 = phi i8* [ null, %if.then37 ], [ null, %cont34 ], [ %call29, %land.lhs.true28 ], [ %1, %if.end11 ], [ %call14, %land.lhs.true13 ], [ %call, %entry ]
  %tobool42 = icmp eq i8* %login.3, null, !dbg !641
  %.login.3 = select i1 %tobool42, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), i8* %login.3, !dbg !641
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !410), !dbg !642
  call void @llvm.dbg.declare(metadata !{i8** %mailaddress}, metadata !412), !dbg !643
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !412), !dbg !643
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !412), !dbg !643
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !412), !dbg !643
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !412), !dbg !643
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !412), !dbg !643
  store i8* null, i8** %mailaddress, align 4, !dbg !643, !tbaa !497
  %call47 = call i8* @HTSACopy(i8** %mailaddress, i8* %.login.3) nounwind, !dbg !644
  %call48 = call i8* @HTSACat(i8** %mailaddress, i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !645
  %call49 = call i8* @HTGetHostName(), !dbg !646
  call void @llvm.dbg.value(metadata !{i8* %call49}, i64 0, metadata !410), !dbg !646
  %cmp50 = icmp eq i8* %call49, null, !dbg !646
  br i1 %cmp50, label %return, label %if.then51, !dbg !646

if.then51:                                        ; preds = %if.then46
  %call52 = call i8* @HTSACat(i8** %mailaddress, i8* %call49) nounwind, !dbg !647
  call void @HTMemory_free(i8* %call49) nounwind, !dbg !649
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !410), !dbg !651
  br label %return, !dbg !652

return:                                           ; preds = %if.then51, %if.then46
  call void @llvm.dbg.value(metadata !{i8** %mailaddress}, i64 0, metadata !412), !dbg !653
  call void @llvm.dbg.value(metadata !{i8** %mailaddress}, i64 0, metadata !412), !dbg !653
  call void @llvm.dbg.value(metadata !{i8** %mailaddress}, i64 0, metadata !412), !dbg !653
  call void @llvm.dbg.value(metadata !{i8** %mailaddress}, i64 0, metadata !412), !dbg !653
  call void @llvm.dbg.value(metadata !{i8** %mailaddress}, i64 0, metadata !412), !dbg !653
  %4 = load i8** %mailaddress, align 4, !dbg !653, !tbaa !497
  ret i8* %4, !dbg !654
}

declare i8* @getlogin()

declare %struct.passwd* @getpwuid(i32)

declare i32 @getuid() nounwind

declare i8* @getenv(i8* nocapture) nounwind readonly

define i8* @HTGetNewsServer() nounwind {
entry:
  %buffer = alloca [80 x i8], align 1
  %result = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !416), !dbg !655
  call void @llvm.dbg.declare(metadata !{[80 x i8]* %buffer}, metadata !418), !dbg !656
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8]* @.str19, i32 0, i32 0)) nounwind, !dbg !657
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !416), !dbg !657
  %cmp = icmp eq i8* %call, null, !dbg !657
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !657

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !658
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !419), !dbg !658
  %arraydecay = getelementptr inbounds [80 x i8]* %buffer, i32 0, i32 0, !dbg !659
  %add.ptr = getelementptr inbounds [80 x i8]* %buffer, i32 0, i32 79, !dbg !659
  store i8 0, i8* %add.ptr, align 1, !dbg !659, !tbaa !498
  %tobool = icmp eq %struct._IO_FILE* %call1, null, !dbg !660
  br i1 %tobool, label %if.then40, label %if.then2, !dbg !660

if.then2:                                         ; preds = %if.then
  %call4 = call i8* @fgets(i8* %arraydecay, i32 79, %struct._IO_FILE* %call1) nounwind, !dbg !661
  %tobool5 = icmp eq i8* %call4, null, !dbg !661
  br i1 %tobool5, label %if.end37.thread, label %while.cond, !dbg !661

if.end37.thread:                                  ; preds = %if.then2
  %call3573 = call i32 @fclose(%struct._IO_FILE* %call1) nounwind, !dbg !662
  br label %if.then40, !dbg !663

while.cond:                                       ; preds = %if.then2, %while.body
  %newshost.0 = phi i8* [ %incdec.ptr, %while.body ], [ %arraydecay, %if.then2 ]
  %0 = load i8* %newshost.0, align 1, !dbg !664, !tbaa !498
  switch i8 %0, label %while.cond13 [
    i8 32, label %while.body
    i8 9, label %while.body
  ], !dbg !664

while.body:                                       ; preds = %while.cond, %while.cond
  %incdec.ptr = getelementptr inbounds i8* %newshost.0, i32 1, !dbg !665
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !416), !dbg !665
  br label %while.cond, !dbg !665

while.cond13:                                     ; preds = %while.cond, %land.rhs.while.cond13_crit_edge
  %1 = phi i8 [ %.pre72, %land.rhs.while.cond13_crit_edge ], [ %0, %while.cond ]
  %end.0 = phi i8* [ %incdec.ptr31, %land.rhs.while.cond13_crit_edge ], [ %newshost.0, %while.cond ]
  %tobool15 = icmp eq i8 %1, 0, !dbg !666
  br i1 %tobool15, label %if.end37, label %land.rhs, !dbg !666

land.rhs:                                         ; preds = %while.cond13
  %conv14 = sext i8 %1 to i32, !dbg !666
  %call17 = call i16** @__ctype_b_loc() nounwind readnone, !dbg !666
  %2 = load i16** %call17, align 4, !dbg !666, !tbaa !497
  %arrayidx = getelementptr inbounds i16* %2, i32 %conv14, !dbg !666
  %3 = load i16* %arrayidx, align 2, !dbg !666, !tbaa !550
  %and = and i16 %3, 8192, !dbg !666
  %lnot = icmp eq i16 %and, 0, !dbg !666
  %incdec.ptr31 = getelementptr inbounds i8* %end.0, i32 1, !dbg !667
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr31}, i64 0, metadata !421), !dbg !667
  br i1 %lnot, label %land.rhs.while.cond13_crit_edge, label %if.end37

land.rhs.while.cond13_crit_edge:                  ; preds = %land.rhs
  %.pre72 = load i8* %incdec.ptr31, align 1, !dbg !666, !tbaa !498
  br label %while.cond13

if.end37:                                         ; preds = %while.cond13, %land.rhs
  store i8 0, i8* %end.0, align 1, !dbg !668, !tbaa !498
  %call35 = call i32 @fclose(%struct._IO_FILE* %call1) nounwind, !dbg !662
  %tobool38 = icmp eq i8* %newshost.0, null, !dbg !663
  br i1 %tobool38, label %if.then40, label %lor.lhs.false, !dbg !663

lor.lhs.false:                                    ; preds = %entry, %if.end37
  %newshost.269 = phi i8* [ %newshost.0, %if.end37 ], [ %call, %entry ]
  %4 = load i8* %newshost.269, align 1, !dbg !663, !tbaa !498
  %tobool39 = icmp eq i8 %4, 0, !dbg !663
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !663

if.then40:                                        ; preds = %if.end37.thread, %if.then, %lor.lhs.false, %if.end37
  call void @llvm.dbg.value(metadata !669, i64 0, metadata !416), !dbg !670
  br label %if.end41, !dbg !670

if.end41:                                         ; preds = %lor.lhs.false, %if.then40
  %newshost.3 = phi i8* [ %newshost.269, %lor.lhs.false ], [ getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), %if.then40 ]
  call void @llvm.dbg.declare(metadata !{i8** %result}, metadata !424), !dbg !671
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !424), !dbg !671
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !424), !dbg !671
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !424), !dbg !671
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !424), !dbg !671
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !424), !dbg !671
  store i8* null, i8** %result, align 4, !dbg !671, !tbaa !497
  %call42 = call i8* @HTSACopy(i8** %result, i8* %newshost.3) nounwind, !dbg !672
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !673
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !673
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !673
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !673
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !673
  %5 = load i8** %result, align 4, !dbg !673, !tbaa !497
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !426), !dbg !673
  %6 = load i8* %5, align 1, !dbg !674, !tbaa !498
  %tobool4470 = icmp eq i8 %6, 0, !dbg !674
  br i1 %tobool4470, label %while.end52, label %while.body45, !dbg !674

while.body45:                                     ; preds = %if.end41, %cont49
  %7 = phi i8 [ %13, %cont49 ], [ %6, %if.end41 ]
  %strptr.071 = phi i8* [ %incdec.ptr51, %cont49 ], [ %5, %if.end41 ]
  %conv46 = sext i8 %7 to i32, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %conv46}, i64 0, metadata !677) nounwind, !dbg !678
  %__c.off.i = add i32 %conv46, 128, !dbg !679
  %8 = icmp ult i32 %__c.off.i, 384, !dbg !679
  br i1 %8, label %cond.true.i, label %tolower.exit, !dbg !679

cond.true.i:                                      ; preds = %while.body45
  %call.i = call i32** @__ctype_tolower_loc() nounwind readnone, !dbg !679
  %9 = load i32** %call.i, align 4, !dbg !679, !tbaa !497
  %arrayidx.i = getelementptr inbounds i32* %9, i32 %conv46, !dbg !679
  %10 = load i32* %arrayidx.i, align 4, !dbg !679, !tbaa !504
  br label %tolower.exit, !dbg !679

tolower.exit:                                     ; preds = %while.body45, %cond.true.i
  %cond.i = phi i32 [ %10, %cond.true.i ], [ %conv46, %while.body45 ], !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !428), !dbg !675
  %call47.off = add i32 %cond.i, 128, !dbg !675
  %11 = icmp ult i32 %call47.off, 256, !dbg !675
  br i1 %11, label %cont49, label %ioc_bb48, !dbg !675

ioc_bb48:                                         ; preds = %tolower.exit
  %12 = sext i32 %cond.i to i64, !dbg !675
  call void @__ioc_report_conversion(i32 465, i32 20, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !675
  br label %cont49, !dbg !675

cont49:                                           ; preds = %ioc_bb48, %tolower.exit
  %conv50 = trunc i32 %cond.i to i8, !dbg !675
  store i8 %conv50, i8* %strptr.071, align 1, !dbg !675, !tbaa !498
  %incdec.ptr51 = getelementptr inbounds i8* %strptr.071, i32 1, !dbg !680
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr51}, i64 0, metadata !426), !dbg !680
  %13 = load i8* %incdec.ptr51, align 1, !dbg !674, !tbaa !498
  %tobool44 = icmp eq i8 %13, 0, !dbg !674
  br i1 %tobool44, label %while.cond43.while.end52_crit_edge, label %while.body45, !dbg !674

while.cond43.while.end52_crit_edge:               ; preds = %cont49
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !681
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !681
  %.pre = load i8** %result, align 4, !dbg !681, !tbaa !497
  br label %while.end52, !dbg !674

while.end52:                                      ; preds = %while.cond43.while.end52_crit_edge, %if.end41
  %14 = phi i8* [ %.pre, %while.cond43.while.end52_crit_edge ], [ %5, %if.end41 ]
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !681
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !681
  call void @llvm.dbg.value(metadata !{i8** %result}, i64 0, metadata !424), !dbg !681
  ret i8* %14, !dbg !681
}

define i32 @HTGetTimeZoneOffset() nounwind {
entry:
  %cur_t = alloca i32, align 4
  %0 = load i32* @HTGetTimeZoneOffset.HTTimeZone, align 4, !dbg !682, !tbaa !683
  %cmp = icmp eq i32 %0, -1, !dbg !682
  br i1 %cmp, label %if.end, label %return, !dbg !682

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %cur_t}, metadata !436), !dbg !684
  %call = call i32 @time(i32* null) nounwind, !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !436), !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !436), !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !436), !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !436), !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !436), !dbg !684
  store i32 %call, i32* %cur_t, align 4, !dbg !684, !tbaa !683
  %call1 = call %struct.tm* @localtime(i32* %cur_t) nounwind, !dbg !685
  call void @llvm.dbg.value(metadata !{%struct.tm* %call1}, i64 0, metadata !439), !dbg !685
  %1 = load i32* @daylight, align 4, !dbg !686, !tbaa !504
  %tobool = icmp eq i32 %1, 0, !dbg !686
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !686

land.lhs.true:                                    ; preds = %if.end
  %tm_isdst = getelementptr inbounds %struct.tm* %call1, i32 0, i32 8, !dbg !686
  %2 = load i32* %tm_isdst, align 4, !dbg !686, !tbaa !504
  %cmp2 = icmp sgt i32 %2, 0, !dbg !686
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !686

if.then3:                                         ; preds = %land.lhs.true
  %3 = load i32* @timezone, align 4, !dbg !687, !tbaa !683
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 3600), !dbg !687
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !687
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !687
  br i1 %6, label %ioc_bb4, label %if.end6, !dbg !687

ioc_bb4:                                          ; preds = %if.then3
  %7 = sext i32 %3 to i64, !dbg !687
  call void @__ioc_report_sub_overflow(i32 502, i32 29, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %7, i64 3600, i8 13) nounwind, !dbg !687
  br label %if.end6, !dbg !687

if.else:                                          ; preds = %if.end, %land.lhs.true
  %8 = load i32* @timezone, align 4, !dbg !689, !tbaa !683
  br label %if.end6

if.end6:                                          ; preds = %ioc_bb4, %if.then3, %if.else
  %storemerge = phi i32 [ %8, %if.else ], [ %5, %if.then3 ], [ %5, %ioc_bb4 ]
  store i32 %storemerge, i32* @HTGetTimeZoneOffset.HTTimeZone, align 4, !dbg !687
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %storemerge), !dbg !691
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !691
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !691
  br i1 %11, label %ioc_bb7, label %cont8, !dbg !691

ioc_bb7:                                          ; preds = %if.end6
  %12 = sext i32 %storemerge to i64, !dbg !691
  call void @__ioc_report_sub_overflow(i32 513, i32 18, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i64 0, i64 %12, i8 13) nounwind, !dbg !691
  br label %cont8, !dbg !691

cont8:                                            ; preds = %if.end6, %ioc_bb7
  store i32 %10, i32* @HTGetTimeZoneOffset.HTTimeZone, align 4, !dbg !691, !tbaa !683
  %13 = load i32* @WWW_TraceFlag, align 4, !dbg !692, !tbaa !504
  %and = and i32 %13, 8192, !dbg !692
  %tobool11 = icmp eq i32 %and, 0, !dbg !692
  br i1 %tobool11, label %return, label %cont15, !dbg !692

cont15:                                           ; preds = %cont8
  %div = sdiv i32 %10, 3600, !dbg !694
  %call16 = call i32 (i8*, ...)* @HTTrace(i8* getelementptr inbounds ([49 x i8]* @.str22, i32 0, i32 0), i32 %div) nounwind, !dbg !694
  %retval.0.pre = load i32* @HTGetTimeZoneOffset.HTTimeZone, align 4, !dbg !695
  br label %return, !dbg !694

return:                                           ; preds = %cont15, %cont8, %entry
  %retval.0 = phi i32 [ %retval.0.pre, %cont15 ], [ %10, %cont8 ], [ %0, %entry ]
  ret i32 %retval.0, !dbg !696
}

declare i32 @time(i32*) nounwind

declare %struct.tm* @localtime(i32*) nounwind

define noalias i8* @HTGetTmpFileName(i8* %abs_dir) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %abs_dir}, i64 0, metadata !460), !dbg !697
  tail call void @llvm.dbg.value(metadata !496, i64 0, metadata !461), !dbg !698
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !463), !dbg !699
  %tobool = icmp eq i8* %abs_dir, null, !dbg !700
  br i1 %tobool, label %if.end21.thread, label %land.lhs.true, !dbg !700

land.lhs.true:                                    ; preds = %entry
  %0 = load i8* %abs_dir, align 1, !dbg !700, !tbaa !498
  %tobool1 = icmp eq i8 %0, 0, !dbg !700
  br i1 %tobool1, label %if.end21.thread, label %if.then, !dbg !700

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0)) nounwind, !dbg !701
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !464), !dbg !701
  %tobool2 = icmp eq i8* %call, null, !dbg !702
  br i1 %tobool2, label %if.end21.thread, label %if.end, !dbg !702

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @strlen(i8* %call) nounwind readonly, !dbg !703
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !463), !dbg !703
  %tobool5 = icmp eq i32 %call4, 0, !dbg !704
  br i1 %tobool5, label %if.end21.thread, label %if.then6, !dbg !704

if.then6:                                         ; preds = %if.end
  %1 = load i8** @HTGetTmpFileName.envtmpdir, align 4, !dbg !705, !tbaa !497
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call4, i32 8), !dbg !705
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !705
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !705
  br i1 %4, label %ioc_bb9, label %cont10, !dbg !705

ioc_bb9:                                          ; preds = %if.then6
  %5 = zext i32 %call4 to i64, !dbg !705
  tail call void @__ioc_report_add_overflow(i32 547, i32 66, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %5, i64 8, i8 5) nounwind, !dbg !705
  br label %cont10, !dbg !705

cont10:                                           ; preds = %if.then6, %ioc_bb9
  %call11 = tail call i8* @HTMemory_realloc(i8* %1, i32 %3) nounwind, !dbg !705
  store i8* %call11, i8** @HTGetTmpFileName.envtmpdir, align 4, !dbg !705, !tbaa !497
  %tobool12 = icmp eq i8* %call11, null, !dbg !705
  br i1 %tobool12, label %cont15, label %if.then24, !dbg !705

cont15:                                           ; preds = %cont10
  tail call void @HTMemory_outofmem(i8* getelementptr inbounds ([17 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0), i32 612) nounwind, !dbg !707
  %.pre = load i8** @HTGetTmpFileName.envtmpdir, align 4, !dbg !708, !tbaa !497
  br label %if.then24, !dbg !707

if.end21.thread:                                  ; preds = %if.end, %land.lhs.true, %entry, %if.then
  %call2234 = tail call noalias i8* @tempnam(i8* %abs_dir, i8* null) nounwind, !dbg !709
  tail call void @llvm.dbg.value(metadata !{i8* %call2236}, i64 0, metadata !461), !dbg !709
  br label %if.end26, !dbg !710

if.then24:                                        ; preds = %cont10, %cont15
  %6 = phi i8* [ %.pre, %cont15 ], [ %call11, %cont10 ]
  %7 = bitcast i8* %6 to i64*, !dbg !708
  store i64 17260448211553620, i64* %7, align 1, !dbg !708
  %add.ptr = getelementptr inbounds i8* %6, i32 7, !dbg !711
  %call18 = tail call i8* @strcpy(i8* %add.ptr, i8* %call) nounwind, !dbg !711
  %call19 = tail call i32 @putenv(i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0)) nounwind, !dbg !712
  %call22 = tail call noalias i8* @tempnam(i8* %abs_dir, i8* null) nounwind, !dbg !709
  tail call void @llvm.dbg.value(metadata !{i8* %call2236}, i64 0, metadata !461), !dbg !709
  %8 = load i8** @HTGetTmpFileName.envtmpdir, align 4, !dbg !713, !tbaa !497
  %call25 = tail call i32 @putenv(i8* %8) nounwind, !dbg !713
  br label %if.end26, !dbg !713

if.end26:                                         ; preds = %if.end21.thread, %if.then24
  %call2236 = phi i8* [ %call2234, %if.end21.thread ], [ %call22, %if.then24 ]
  ret i8* %call2236, !dbg !714
}

declare i8* @HTMemory_realloc(i8*, i32)

declare void @HTMemory_outofmem(i8*, i8*, i32)

declare i8* @strcpy(i8*, i8* nocapture) nounwind

declare i32 @putenv(i8*) nounwind

declare noalias i8* @tempnam(i8*, i8*) nounwind

define i32 @HTGetTimeInMillis() nounwind {
entry:
  %tp = alloca %struct.timeval, align 4
  call void @llvm.dbg.declare(metadata !{%struct.timeval* %tp}, metadata !471), !dbg !715
  %call = call i32 @gettimeofday(%struct.timeval* %tp, %struct.timezone* null) nounwind, !dbg !716
  %tv_sec = getelementptr inbounds %struct.timeval* %tp, i32 0, i32 0, !dbg !717
  %0 = load i32* %tv_sec, align 4, !dbg !717, !tbaa !683
  %1 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 1000), !dbg !717
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !717
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !717
  br i1 %3, label %ioc_bb, label %cont2, !dbg !717

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64, !dbg !717
  call void @__ioc_report_mul_overflow(i32 589, i32 21, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %4, i64 1000, i8 13) nounwind, !dbg !717
  br label %cont2, !dbg !717

cont2:                                            ; preds = %ioc_bb, %entry
  %tv_usec = getelementptr inbounds %struct.timeval* %tp, i32 0, i32 1, !dbg !717
  %5 = load i32* %tv_usec, align 4, !dbg !717, !tbaa !683
  %div = sdiv i32 %5, 1000, !dbg !717
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %div), !dbg !717
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !717
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !717
  br i1 %8, label %ioc_bb3, label %cont4, !dbg !717

ioc_bb3:                                          ; preds = %cont2
  %9 = sext i32 %div to i64, !dbg !717
  %10 = sext i32 %2 to i64, !dbg !717
  call void @__ioc_report_add_overflow(i32 589, i32 28, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %10, i64 %9, i8 13) nounwind, !dbg !717
  br label %cont4, !dbg !717

cont4:                                            ; preds = %cont2, %ioc_bb3
  %11 = icmp sgt i32 %7, -1, !dbg !717
  br i1 %11, label %cont6, label %ioc_bb5, !dbg !717

ioc_bb5:                                          ; preds = %cont4
  %12 = sext i32 %7 to i64, !dbg !717
  call void @__ioc_report_conversion(i32 589, i32 10, i8* getelementptr inbounds ([34 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !717
  br label %cont6, !dbg !717

cont6:                                            ; preds = %ioc_bb5, %cont4
  ret i32 %7, !dbg !717
}

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32** @__ctype_tolower_loc() nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"../../../src/Library/src/HTInet.c", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", metadata !"clang version 3.2  (https://github.com/jikk/ioc-llvm.git 33aa441c8636cd3770bfaa4e5831d80f7f42736e)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !59, metadata !61, metadata !486} ; [ DW_TAG_compile_unit ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !17, metadata !23, metadata !30, metadata !45}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 40, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 40, size 32, align 32, offset 0] [from ]
!4 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTMethod.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16}
!6 = metadata !{i32 786472, metadata !"METHOD_INVALID", i64 0} ; [ DW_TAG_enumerator ] [METHOD_INVALID :: 0]
!7 = metadata !{i32 786472, metadata !"METHOD_GET", i64 1} ; [ DW_TAG_enumerator ] [METHOD_GET :: 1]
!8 = metadata !{i32 786472, metadata !"METHOD_HEAD", i64 2} ; [ DW_TAG_enumerator ] [METHOD_HEAD :: 2]
!9 = metadata !{i32 786472, metadata !"METHOD_POST", i64 4} ; [ DW_TAG_enumerator ] [METHOD_POST :: 4]
!10 = metadata !{i32 786472, metadata !"METHOD_PUT", i64 8} ; [ DW_TAG_enumerator ] [METHOD_PUT :: 8]
!11 = metadata !{i32 786472, metadata !"METHOD_PATCH", i64 16} ; [ DW_TAG_enumerator ] [METHOD_PATCH :: 16]
!12 = metadata !{i32 786472, metadata !"METHOD_DELETE", i64 32} ; [ DW_TAG_enumerator ] [METHOD_DELETE :: 32]
!13 = metadata !{i32 786472, metadata !"METHOD_TRACE", i64 64} ; [ DW_TAG_enumerator ] [METHOD_TRACE :: 64]
!14 = metadata !{i32 786472, metadata !"METHOD_OPTIONS", i64 128} ; [ DW_TAG_enumerator ] [METHOD_OPTIONS :: 128]
!15 = metadata !{i32 786472, metadata !"METHOD_LINK", i64 256} ; [ DW_TAG_enumerator ] [METHOD_LINK :: 256]
!16 = metadata !{i32 786472, metadata !"METHOD_UNLINK", i64 512} ; [ DW_TAG_enumerator ] [METHOD_UNLINK :: 512]
!17 = metadata !{i32 786436, null, metadata !"_HTTransportMode", metadata !18, i32 54, i64 32, i64 32, i32 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [_HTTransportMode] [line 54, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTTrans.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!19 = metadata !{metadata !20, metadata !21, metadata !22}
!20 = metadata !{i32 786472, metadata !"HT_TP_SINGLE", i64 0} ; [ DW_TAG_enumerator ] [HT_TP_SINGLE :: 0]
!21 = metadata !{i32 786472, metadata !"HT_TP_PIPELINE", i64 1} ; [ DW_TAG_enumerator ] [HT_TP_PIPELINE :: 1]
!22 = metadata !{i32 786472, metadata !"HT_TP_INTERLEAVE", i64 2} ; [ DW_TAG_enumerator ] [HT_TP_INTERLEAVE :: 2]
!23 = metadata !{i32 786436, null, metadata !"_HTPriority", metadata !24, i32 56, i64 32, i64 32, i32 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [_HTPriority] [line 56, size 32, align 32, offset 0] [from ]
!24 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTEvent.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786472, metadata !"HT_PRIORITY_INV", i64 4294967295} ; [ DW_TAG_enumerator ] [HT_PRIORITY_INV :: 4294967295]
!27 = metadata !{i32 786472, metadata !"HT_PRIORITY_OFF", i64 0} ; [ DW_TAG_enumerator ] [HT_PRIORITY_OFF :: 0]
!28 = metadata !{i32 786472, metadata !"HT_PRIORITY_MIN", i64 1} ; [ DW_TAG_enumerator ] [HT_PRIORITY_MIN :: 1]
!29 = metadata !{i32 786472, metadata !"HT_PRIORITY_MAX", i64 20} ; [ DW_TAG_enumerator ] [HT_PRIORITY_MAX :: 20]
!30 = metadata !{i32 786436, null, metadata !"", metadata !24, i32 64, i64 32, i64 32, i32 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 64, size 32, align 32, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!32 = metadata !{i32 786472, metadata !"HTEvent_READ", i64 1} ; [ DW_TAG_enumerator ] [HTEvent_READ :: 1]
!33 = metadata !{i32 786472, metadata !"HTEvent_ACCEPT", i64 2} ; [ DW_TAG_enumerator ] [HTEvent_ACCEPT :: 2]
!34 = metadata !{i32 786472, metadata !"HTEvent_CLOSE", i64 4} ; [ DW_TAG_enumerator ] [HTEvent_CLOSE :: 4]
!35 = metadata !{i32 786472, metadata !"HTEvent_WRITE", i64 65544} ; [ DW_TAG_enumerator ] [HTEvent_WRITE :: 65544]
!36 = metadata !{i32 786472, metadata !"HTEvent_CONNECT", i64 65552} ; [ DW_TAG_enumerator ] [HTEvent_CONNECT :: 65552]
!37 = metadata !{i32 786472, metadata !"HTEvent_OOB", i64 131104} ; [ DW_TAG_enumerator ] [HTEvent_OOB :: 131104]
!38 = metadata !{i32 786472, metadata !"HTEvent_TYPES", i64 3} ; [ DW_TAG_enumerator ] [HTEvent_TYPES :: 3]
!39 = metadata !{i32 786472, metadata !"HTEvent_TIMEOUT", i64 196672} ; [ DW_TAG_enumerator ] [HTEvent_TIMEOUT :: 196672]
!40 = metadata !{i32 786472, metadata !"HTEvent_BEGIN", i64 196608} ; [ DW_TAG_enumerator ] [HTEvent_BEGIN :: 196608]
!41 = metadata !{i32 786472, metadata !"HTEvent_END", i64 196736} ; [ DW_TAG_enumerator ] [HTEvent_END :: 196736]
!42 = metadata !{i32 786472, metadata !"HTEvent_FLUSH", i64 196864} ; [ DW_TAG_enumerator ] [HTEvent_FLUSH :: 196864]
!43 = metadata !{i32 786472, metadata !"HTEvent_RESET", i64 197120} ; [ DW_TAG_enumerator ] [HTEvent_RESET :: 197120]
!44 = metadata !{i32 786472, metadata !"HTEvent_ALL", i64 65535} ; [ DW_TAG_enumerator ] [HTEvent_ALL :: 65535]
!45 = metadata !{i32 786436, null, metadata !"_TCPState", metadata !46, i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [_TCPState] [line 41, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTHstMan.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!48 = metadata !{i32 786472, metadata !"TCP_DNS_ERROR", i64 4294967293} ; [ DW_TAG_enumerator ] [TCP_DNS_ERROR :: 4294967293]
!49 = metadata !{i32 786472, metadata !"TCP_ERROR", i64 4294967294} ; [ DW_TAG_enumerator ] [TCP_ERROR :: 4294967294]
!50 = metadata !{i32 786472, metadata !"TCP_CONNECTED", i64 4294967295} ; [ DW_TAG_enumerator ] [TCP_CONNECTED :: 4294967295]
!51 = metadata !{i32 786472, metadata !"TCP_BEGIN", i64 0} ; [ DW_TAG_enumerator ] [TCP_BEGIN :: 0]
!52 = metadata !{i32 786472, metadata !"TCP_CHANNEL", i64 1} ; [ DW_TAG_enumerator ] [TCP_CHANNEL :: 1]
!53 = metadata !{i32 786472, metadata !"TCP_DNS", i64 2} ; [ DW_TAG_enumerator ] [TCP_DNS :: 2]
!54 = metadata !{i32 786472, metadata !"TCP_NEED_SOCKET", i64 3} ; [ DW_TAG_enumerator ] [TCP_NEED_SOCKET :: 3]
!55 = metadata !{i32 786472, metadata !"TCP_NEED_BIND", i64 4} ; [ DW_TAG_enumerator ] [TCP_NEED_BIND :: 4]
!56 = metadata !{i32 786472, metadata !"TCP_NEED_LISTEN", i64 5} ; [ DW_TAG_enumerator ] [TCP_NEED_LISTEN :: 5]
!57 = metadata !{i32 786472, metadata !"TCP_NEED_CONNECT", i64 6} ; [ DW_TAG_enumerator ] [TCP_NEED_CONNECT :: 6]
!58 = metadata !{i32 786472, metadata !"TCP_IN_USE", i64 7} ; [ DW_TAG_enumerator ] [TCP_IN_USE :: 7]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !63, metadata !75, metadata !85, metadata !98, metadata !101, metadata !131, metadata !303, metadata !391, metadata !413, metadata !431, metadata !455, metadata !466, metadata !479}
!63 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTErrnoString", metadata !"HTErrnoString", metadata !"", metadata !64, i32 34, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @HTErrnoString, null, null, metadata !70, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [HTErrnoString]
!64 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTInet.c", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !69}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!68 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!69 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786689, metadata !63, metadata !"errornumber", metadata !64, i32 16777250, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errornumber] [line 34]
!73 = metadata !{i32 786688, metadata !74, metadata !"msg", metadata !64, i32 36, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 36]
!74 = metadata !{i32 786443, metadata !63, i32 35, i32 0, metadata !64, i32 0} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!75 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTInetStatus", metadata !"HTInetStatus", metadata !"", metadata !64, i32 58, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @HTInetStatus, null, null, metadata !78, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [HTInetStatus]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !69, metadata !69, metadata !67}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786689, metadata !75, metadata !"errnum", metadata !64, i32 16777274, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errnum] [line 58]
!81 = metadata !{i32 786689, metadata !75, metadata !"where", metadata !64, i32 33554490, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [where] [line 58]
!82 = metadata !{i32 786688, metadata !83, metadata !"errmsg", metadata !64, i32 66, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errmsg] [line 66]
!83 = metadata !{i32 786443, metadata !84, i32 65, i32 0, metadata !64, i32 2} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!84 = metadata !{i32 786443, metadata !75, i32 59, i32 0, metadata !64, i32 1} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!85 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTCardinal", metadata !"HTCardinal", metadata !"", metadata !64, i32 97, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8**, i32)* @HTCardinal, null, null, metadata !91, i32 98} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 98] [HTCardinal]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !88}
!88 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96}
!93 = metadata !{i32 786689, metadata !85, metadata !"pstatus", metadata !64, i32 16777313, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pstatus] [line 97]
!94 = metadata !{i32 786689, metadata !85, metadata !"pp", metadata !64, i32 33554529, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pp] [line 97]
!95 = metadata !{i32 786689, metadata !85, metadata !"max_value", metadata !64, i32 50331745, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_value] [line 97]
!96 = metadata !{i32 786688, metadata !97, metadata !"n", metadata !64, i32 99, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 99]
!97 = metadata !{i32 786443, metadata !85, i32 98, i32 0, metadata !64, i32 5} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!98 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTSetSignal", metadata !"HTSetSignal", metadata !"", metadata !64, i32 130, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @HTSetSignal, null, null, metadata !59, i32 131} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 131] [HTSetSignal]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{null}
!101 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTInetString", metadata !"HTInetString", metadata !"", metadata !64, i32 145, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.sockaddr_in*)* @HTInetString, null, null, metadata !128, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [HTInetString]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !104, metadata !106}
!104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!105 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from SockA]
!107 = metadata !{i32 786454, null, metadata !"SockA", metadata !64, i32 1283, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [SockA] [line 1283, size 0, align 0, offset 0] [from sockaddr_in]
!108 = metadata !{i32 786451, null, metadata !"sockaddr_in", metadata !109, i32 225, i64 128, i64 32, i32 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr_in] [line 225, size 128, align 32, offset 0] [from ]
!109 = metadata !{i32 786473, metadata !"/usr/include/netinet/in.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!110 = metadata !{metadata !111, metadata !114, metadata !117, metadata !123}
!111 = metadata !{i32 786445, metadata !108, metadata !"sin_family", metadata !109, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [sin_family] [line 227, size 16, align 16, offset 0] [from sa_family_t]
!112 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !109, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!113 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!114 = metadata !{i32 786445, metadata !108, metadata !"sin_port", metadata !109, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !115} ; [ DW_TAG_member ] [sin_port] [line 228, size 16, align 16, offset 16] [from in_port_t]
!115 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !109, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!116 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !109, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!117 = metadata !{i32 786445, metadata !108, metadata !"sin_addr", metadata !109, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !118} ; [ DW_TAG_member ] [sin_addr] [line 229, size 32, align 32, offset 32] [from in_addr]
!118 = metadata !{i32 786451, null, metadata !"in_addr", metadata !109, i32 142, i64 32, i64 32, i32 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_structure_type ] [in_addr] [line 142, size 32, align 32, offset 0] [from ]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786445, metadata !118, metadata !"s_addr", metadata !109, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [s_addr] [line 144, size 32, align 32, offset 0] [from in_addr_t]
!121 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !109, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!122 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !109, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!123 = metadata !{i32 786445, metadata !108, metadata !"sin_zero", metadata !109, i32 232, i64 64, i64 8, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [sin_zero] [line 232, size 64, align 8, offset 64] [from ]
!124 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 8, i32 0, i32 0, metadata !125, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from unsigned char]
!125 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 7]
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786689, metadata !101, metadata !"sin", metadata !64, i32 16777361, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sin] [line 145]
!131 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTParseInet", metadata !"HTParseInet", metadata !"", metadata !64, i32 170, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._HTHost*, i8*, %struct._HTRequest*)* @HTParseInet, null, null, metadata !287, i32 171} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 171] [HTParseInet]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !69, metadata !134, metadata !67, metadata !177}
!134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTHost]
!135 = metadata !{i32 786454, null, metadata !"HTHost", metadata !64, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [HTHost] [line 32, size 0, align 0, offset 0] [from _HTHost]
!136 = metadata !{i32 786451, null, metadata !"_HTHost", metadata !46, i32 55, i64 1376, i64 32, i32 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_HTHost] [line 55, size 1376, align 32, offset 0] [from ]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !143, metadata !147, metadata !148, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !168, metadata !169, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !267, metadata !269, metadata !270, metadata !271, metadata !272, metadata !275, metadata !280, metadata !281, metadata !283, metadata !284, metadata !285, metadata !286}
!138 = metadata !{i32 786445, metadata !136, metadata !"hash", metadata !46, i32 56, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [hash] [line 56, size 32, align 32, offset 0] [from int]
!139 = metadata !{i32 786445, metadata !136, metadata !"hostname", metadata !46, i32 59, i64 32, i64 32, i64 32, i32 0, metadata !67} ; [ DW_TAG_member ] [hostname] [line 59, size 32, align 32, offset 32] [from ]
!140 = metadata !{i32 786445, metadata !136, metadata !"u_port", metadata !46, i32 60, i64 16, i64 16, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [u_port] [line 60, size 16, align 16, offset 64] [from u_short]
!141 = metadata !{i32 786454, null, metadata !"u_short", metadata !46, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!142 = metadata !{i32 786454, null, metadata !"__u_short", metadata !46, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!143 = metadata !{i32 786445, metadata !136, metadata !"ntime", metadata !46, i32 61, i64 32, i64 32, i64 96, i32 0, metadata !144} ; [ DW_TAG_member ] [ntime] [line 61, size 32, align 32, offset 96] [from time_t]
!144 = metadata !{i32 786454, null, metadata !"time_t", metadata !46, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!145 = metadata !{i32 786454, null, metadata !"__time_t", metadata !46, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!146 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!147 = metadata !{i32 786445, metadata !136, metadata !"type", metadata !46, i32 62, i64 32, i64 32, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [type] [line 62, size 32, align 32, offset 128] [from ]
!148 = metadata !{i32 786445, metadata !136, metadata !"version", metadata !46, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [version] [line 63, size 32, align 32, offset 160] [from int]
!149 = metadata !{i32 786445, metadata !136, metadata !"methods", metadata !46, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !150} ; [ DW_TAG_member ] [methods] [line 64, size 32, align 32, offset 192] [from HTMethod]
!150 = metadata !{i32 786454, null, metadata !"HTMethod", metadata !46, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [HTMethod] [line 74, size 0, align 0, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !136, metadata !"server", metadata !46, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !67} ; [ DW_TAG_member ] [server] [line 65, size 32, align 32, offset 224] [from ]
!152 = metadata !{i32 786445, metadata !136, metadata !"user_agent", metadata !46, i32 66, i64 32, i64 32, i64 256, i32 0, metadata !67} ; [ DW_TAG_member ] [user_agent] [line 66, size 32, align 32, offset 256] [from ]
!153 = metadata !{i32 786445, metadata !136, metadata !"range_units", metadata !46, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !67} ; [ DW_TAG_member ] [range_units] [line 67, size 32, align 32, offset 288] [from ]
!154 = metadata !{i32 786445, metadata !136, metadata !"expires", metadata !46, i32 70, i64 32, i64 32, i64 320, i32 0, metadata !144} ; [ DW_TAG_member ] [expires] [line 70, size 32, align 32, offset 320] [from time_t]
!155 = metadata !{i32 786445, metadata !136, metadata !"reqsPerConnection", metadata !46, i32 71, i64 32, i64 32, i64 352, i32 0, metadata !69} ; [ DW_TAG_member ] [reqsPerConnection] [line 71, size 32, align 32, offset 352] [from int]
!156 = metadata !{i32 786445, metadata !136, metadata !"reqsMade", metadata !46, i32 72, i64 32, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [reqsMade] [line 72, size 32, align 32, offset 384] [from int]
!157 = metadata !{i32 786445, metadata !136, metadata !"pipeline", metadata !46, i32 75, i64 32, i64 32, i64 416, i32 0, metadata !158} ; [ DW_TAG_member ] [pipeline] [line 75, size 32, align 32, offset 416] [from ]
!158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTList]
!159 = metadata !{i32 786454, null, metadata !"HTList", metadata !46, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [HTList] [line 33, size 0, align 0, offset 0] [from _HTList]
!160 = metadata !{i32 786451, null, metadata !"_HTList", metadata !161, i32 35, i64 64, i64 32, i32 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_HTList] [line 35, size 64, align 32, offset 0] [from ]
!161 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTList.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!162 = metadata !{metadata !163, metadata !165}
!163 = metadata !{i32 786445, metadata !160, metadata !"object", metadata !161, i32 36, i64 32, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [object] [line 36, size 32, align 32, offset 0] [from ]
!164 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!165 = metadata !{i32 786445, metadata !160, metadata !"next", metadata !161, i32 37, i64 32, i64 32, i64 32, i32 0, metadata !166} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 32] [from ]
!166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTList]
!167 = metadata !{i32 786454, null, metadata !"HTList", metadata !161, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [HTList] [line 33, size 0, align 0, offset 0] [from _HTList]
!168 = metadata !{i32 786445, metadata !136, metadata !"pending", metadata !46, i32 76, i64 32, i64 32, i64 448, i32 0, metadata !158} ; [ DW_TAG_member ] [pending] [line 76, size 32, align 32, offset 448] [from ]
!169 = metadata !{i32 786445, metadata !136, metadata !"doit", metadata !46, i32 77, i64 32, i64 32, i64 480, i32 0, metadata !170} ; [ DW_TAG_member ] [doit] [line 77, size 32, align 32, offset 480] [from ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTNet]
!171 = metadata !{i32 786454, null, metadata !"HTNet", metadata !46, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [HTNet] [line 52, size 0, align 0, offset 0] [from _HTNet]
!172 = metadata !{i32 786451, null, metadata !"_HTNet", metadata !173, i32 40, i64 672, i64 32, i32 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_HTNet] [line 40, size 672, align 32, offset 0] [from ]
!173 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTNetMan.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!174 = metadata !{metadata !175, metadata !176, metadata !181, metadata !184, metadata !189, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !241, metadata !246, metadata !247}
!175 = metadata !{i32 786445, metadata !172, metadata !"hash", metadata !173, i32 41, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [hash] [line 41, size 32, align 32, offset 0] [from int]
!176 = metadata !{i32 786445, metadata !172, metadata !"request", metadata !173, i32 44, i64 32, i64 32, i64 32, i32 0, metadata !177} ; [ DW_TAG_member ] [request] [line 44, size 32, align 32, offset 32] [from ]
!177 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTRequest]
!178 = metadata !{i32 786454, null, metadata !"HTRequest", metadata !173, i32 67, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [HTRequest] [line 67, size 0, align 0, offset 0] [from _HTRequest]
!179 = metadata !{i32 786451, null, metadata !"_HTRequest", metadata !180, i32 67, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTRequest] [line 67, size 0, align 0, offset 0] [fwd] [from ]
!180 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTReq.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!181 = metadata !{i32 786445, metadata !172, metadata !"host", metadata !173, i32 45, i64 32, i64 32, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [host] [line 45, size 32, align 32, offset 64] [from ]
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTHost]
!183 = metadata !{i32 786454, null, metadata !"HTHost", metadata !173, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [HTHost] [line 32, size 0, align 0, offset 0] [from _HTHost]
!184 = metadata !{i32 786445, metadata !172, metadata !"protocol", metadata !173, i32 46, i64 32, i64 32, i64 96, i32 0, metadata !185} ; [ DW_TAG_member ] [protocol] [line 46, size 32, align 32, offset 96] [from ]
!185 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTProtocol]
!186 = metadata !{i32 786454, null, metadata !"HTProtocol", metadata !173, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [HTProtocol] [line 57, size 0, align 0, offset 0] [from _HTProtocol]
!187 = metadata !{i32 786451, null, metadata !"_HTProtocol", metadata !188, i32 57, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTProtocol] [line 57, size 0, align 0, offset 0] [fwd] [from ]
!188 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTProt.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!189 = metadata !{i32 786445, metadata !172, metadata !"transport", metadata !173, i32 47, i64 32, i64 32, i64 128, i32 0, metadata !190} ; [ DW_TAG_member ] [transport] [line 47, size 32, align 32, offset 128] [from ]
!190 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTTransport]
!191 = metadata !{i32 786454, null, metadata !"HTTransport", metadata !173, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [HTTransport] [line 52, size 0, align 0, offset 0] [from _HTTransport]
!192 = metadata !{i32 786451, null, metadata !"_HTTransport", metadata !18, i32 135, i64 128, i64 32, i32 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_HTTransport] [line 135, size 128, align 32, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !195, metadata !197, metadata !210}
!194 = metadata !{i32 786445, metadata !192, metadata !"name", metadata !18, i32 136, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [name] [line 136, size 32, align 32, offset 0] [from ]
!195 = metadata !{i32 786445, metadata !192, metadata !"mode", metadata !18, i32 137, i64 32, i64 32, i64 32, i32 0, metadata !196} ; [ DW_TAG_member ] [mode] [line 137, size 32, align 32, offset 32] [from HTTransportMode]
!196 = metadata !{i32 786454, null, metadata !"HTTransportMode", metadata !18, i32 58, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [HTTransportMode] [line 58, size 0, align 0, offset 0] [from _HTTransportMode]
!197 = metadata !{i32 786445, metadata !192, metadata !"input_new", metadata !18, i32 138, i64 32, i64 32, i64 64, i32 0, metadata !198} ; [ DW_TAG_member ] [input_new] [line 138, size 32, align 32, offset 64] [from ]
!198 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTInput_new]
!199 = metadata !{i32 786454, null, metadata !"HTInput_new", metadata !18, i32 182, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [HTInput_new] [line 182, size 0, align 0, offset 0] [from ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !182, metadata !206, metadata !164, metadata !69}
!202 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTInputStream]
!203 = metadata !{i32 786454, null, metadata !"HTInputStream", metadata !18, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [HTInputStream] [line 33, size 0, align 0, offset 0] [from _HTInputStream]
!204 = metadata !{i32 786451, null, metadata !"_HTInputStream", metadata !205, i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTInputStream] [line 33, size 0, align 0, offset 0] [fwd] [from ]
!205 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTIOStream.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!206 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTChannel]
!207 = metadata !{i32 786454, null, metadata !"HTChannel", metadata !18, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [HTChannel] [line 41, size 0, align 0, offset 0] [from _HTChannel]
!208 = metadata !{i32 786451, null, metadata !"_HTChannel", metadata !209, i32 41, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTChannel] [line 41, size 0, align 0, offset 0] [fwd] [from ]
!209 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTChannl.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!210 = metadata !{i32 786445, metadata !192, metadata !"output_new", metadata !18, i32 139, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [output_new] [line 139, size 32, align 32, offset 96] [from ]
!211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTOutput_new]
!212 = metadata !{i32 786454, null, metadata !"HTOutput_new", metadata !18, i32 193, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [HTOutput_new] [line 193, size 0, align 0, offset 0] [from ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!214 = metadata !{metadata !215, metadata !182, metadata !206, metadata !164, metadata !69}
!215 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !216} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTOutputStream]
!216 = metadata !{i32 786454, null, metadata !"HTOutputStream", metadata !18, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !217} ; [ DW_TAG_typedef ] [HTOutputStream] [line 34, size 0, align 0, offset 0] [from _HTOutputStream]
!217 = metadata !{i32 786451, null, metadata !"_HTOutputStream", metadata !205, i32 34, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTOutputStream] [line 34, size 0, align 0, offset 0] [fwd] [from ]
!218 = metadata !{i32 786445, metadata !172, metadata !"session", metadata !173, i32 48, i64 32, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [session] [line 48, size 32, align 32, offset 160] [from int]
!219 = metadata !{i32 786445, metadata !172, metadata !"countRawBytes", metadata !173, i32 51, i64 8, i64 8, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [countRawBytes] [line 51, size 8, align 8, offset 192] [from char]
!220 = metadata !{i32 786445, metadata !172, metadata !"bytesRead", metadata !173, i32 52, i64 32, i64 32, i64 224, i32 0, metadata !146} ; [ DW_TAG_member ] [bytesRead] [line 52, size 32, align 32, offset 224] [from long int]
!221 = metadata !{i32 786445, metadata !172, metadata !"headerBytesRead", metadata !173, i32 53, i64 32, i64 32, i64 256, i32 0, metadata !146} ; [ DW_TAG_member ] [headerBytesRead] [line 53, size 32, align 32, offset 256] [from long int]
!222 = metadata !{i32 786445, metadata !172, metadata !"bytesWritten", metadata !173, i32 54, i64 32, i64 32, i64 288, i32 0, metadata !146} ; [ DW_TAG_member ] [bytesWritten] [line 54, size 32, align 32, offset 288] [from long int]
!223 = metadata !{i32 786445, metadata !172, metadata !"headerBytesWritten", metadata !173, i32 55, i64 32, i64 32, i64 320, i32 0, metadata !146} ; [ DW_TAG_member ] [headerBytesWritten] [line 55, size 32, align 32, offset 320] [from long int]
!224 = metadata !{i32 786445, metadata !172, metadata !"connecttime", metadata !173, i32 62, i64 32, i64 32, i64 352, i32 0, metadata !144} ; [ DW_TAG_member ] [connecttime] [line 62, size 32, align 32, offset 352] [from time_t]
!225 = metadata !{i32 786445, metadata !172, metadata !"preemptive", metadata !173, i32 63, i64 8, i64 8, i64 384, i32 0, metadata !68} ; [ DW_TAG_member ] [preemptive] [line 63, size 8, align 8, offset 384] [from char]
!226 = metadata !{i32 786445, metadata !172, metadata !"event", metadata !173, i32 65, i64 160, i64 32, i64 416, i32 0, metadata !227} ; [ DW_TAG_member ] [event] [line 65, size 160, align 32, offset 416] [from HTEvent]
!227 = metadata !{i32 786454, null, metadata !"HTEvent", metadata !173, i32 125, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ] [HTEvent] [line 125, size 0, align 0, offset 0] [from _HTEvent]
!228 = metadata !{i32 786451, null, metadata !"_HTEvent", metadata !24, i32 221, i64 160, i64 32, i32 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_HTEvent] [line 221, size 160, align 32, offset 0] [from ]
!229 = metadata !{metadata !230, metadata !232, metadata !233, metadata !239, metadata !240}
!230 = metadata !{i32 786445, metadata !228, metadata !"priority", metadata !24, i32 222, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [priority] [line 222, size 32, align 32, offset 0] [from HTPriority]
!231 = metadata !{i32 786454, null, metadata !"HTPriority", metadata !24, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [HTPriority] [line 61, size 0, align 0, offset 0] [from _HTPriority]
!232 = metadata !{i32 786445, metadata !228, metadata !"millis", metadata !24, i32 223, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [millis] [line 223, size 32, align 32, offset 32] [from int]
!233 = metadata !{i32 786445, metadata !228, metadata !"cbf", metadata !24, i32 227, i64 32, i64 32, i64 64, i32 0, metadata !234} ; [ DW_TAG_member ] [cbf] [line 227, size 32, align 32, offset 64] [from ]
!234 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTEventCallback]
!235 = metadata !{i32 786454, null, metadata !"HTEventCallback", metadata !24, i32 124, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [HTEventCallback] [line 124, size 0, align 0, offset 0] [from ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !69, metadata !69, metadata !164, metadata !238}
!238 = metadata !{i32 786454, null, metadata !"HTEventType", metadata !24, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [HTEventType] [line 94, size 0, align 0, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !228, metadata !"param", metadata !24, i32 228, i64 32, i64 32, i64 96, i32 0, metadata !164} ; [ DW_TAG_member ] [param] [line 228, size 32, align 32, offset 96] [from ]
!240 = metadata !{i32 786445, metadata !228, metadata !"request", metadata !24, i32 229, i64 32, i64 32, i64 128, i32 0, metadata !177} ; [ DW_TAG_member ] [request] [line 229, size 32, align 32, offset 128] [from ]
!241 = metadata !{i32 786445, metadata !172, metadata !"readStream", metadata !173, i32 66, i64 32, i64 32, i64 576, i32 0, metadata !242} ; [ DW_TAG_member ] [readStream] [line 66, size 32, align 32, offset 576] [from ]
!242 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTStream]
!243 = metadata !{i32 786454, null, metadata !"HTStream", metadata !173, i32 70, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ] [HTStream] [line 70, size 0, align 0, offset 0] [from _HTStream]
!244 = metadata !{i32 786451, null, metadata !"_HTStream", metadata !245, i32 70, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTStream] [line 70, size 0, align 0, offset 0] [fwd] [from ]
!245 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTStream.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!246 = metadata !{i32 786445, metadata !172, metadata !"context", metadata !173, i32 69, i64 32, i64 32, i64 608, i32 0, metadata !164} ; [ DW_TAG_member ] [context] [line 69, size 32, align 32, offset 608] [from ]
!247 = metadata !{i32 786445, metadata !172, metadata !"registeredFor", metadata !173, i32 72, i64 32, i64 32, i64 640, i32 0, metadata !238} ; [ DW_TAG_member ] [registeredFor] [line 72, size 32, align 32, offset 640] [from HTEventType]
!248 = metadata !{i32 786445, metadata !136, metadata !"lock", metadata !46, i32 78, i64 32, i64 32, i64 512, i32 0, metadata !170} ; [ DW_TAG_member ] [lock] [line 78, size 32, align 32, offset 512] [from ]
!249 = metadata !{i32 786445, metadata !136, metadata !"listening", metadata !46, i32 79, i64 32, i64 32, i64 544, i32 0, metadata !170} ; [ DW_TAG_member ] [listening] [line 79, size 32, align 32, offset 544] [from ]
!250 = metadata !{i32 786445, metadata !136, metadata !"persistent", metadata !46, i32 80, i64 8, i64 8, i64 576, i32 0, metadata !68} ; [ DW_TAG_member ] [persistent] [line 80, size 8, align 8, offset 576] [from char]
!251 = metadata !{i32 786445, metadata !136, metadata !"mode", metadata !46, i32 81, i64 32, i64 32, i64 608, i32 0, metadata !196} ; [ DW_TAG_member ] [mode] [line 81, size 32, align 32, offset 608] [from HTTransportMode]
!252 = metadata !{i32 786445, metadata !136, metadata !"timer", metadata !46, i32 82, i64 32, i64 32, i64 640, i32 0, metadata !253} ; [ DW_TAG_member ] [timer] [line 82, size 32, align 32, offset 640] [from ]
!253 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTTimer]
!254 = metadata !{i32 786454, null, metadata !"HTTimer", metadata !46, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !255} ; [ DW_TAG_typedef ] [HTTimer] [line 52, size 0, align 0, offset 0] [from _HTTimer]
!255 = metadata !{i32 786451, null, metadata !"_HTTimer", metadata !256, i32 52, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTTimer] [line 52, size 0, align 0, offset 0] [fwd] [from ]
!256 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTTimer.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!257 = metadata !{i32 786445, metadata !136, metadata !"do_recover", metadata !46, i32 83, i64 8, i64 8, i64 672, i32 0, metadata !68} ; [ DW_TAG_member ] [do_recover] [line 83, size 8, align 8, offset 672] [from char]
!258 = metadata !{i32 786445, metadata !136, metadata !"recovered", metadata !46, i32 84, i64 32, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [recovered] [line 84, size 32, align 32, offset 704] [from int]
!259 = metadata !{i32 786445, metadata !136, metadata !"close_notification", metadata !46, i32 85, i64 8, i64 8, i64 736, i32 0, metadata !68} ; [ DW_TAG_member ] [close_notification] [line 85, size 8, align 8, offset 736] [from char]
!260 = metadata !{i32 786445, metadata !136, metadata !"broken_pipe", metadata !46, i32 86, i64 8, i64 8, i64 744, i32 0, metadata !68} ; [ DW_TAG_member ] [broken_pipe] [line 86, size 8, align 8, offset 744] [from char]
!261 = metadata !{i32 786445, metadata !136, metadata !"channel", metadata !46, i32 89, i64 32, i64 32, i64 768, i32 0, metadata !206} ; [ DW_TAG_member ] [channel] [line 89, size 32, align 32, offset 768] [from ]
!262 = metadata !{i32 786445, metadata !136, metadata !"dns", metadata !46, i32 92, i64 32, i64 32, i64 800, i32 0, metadata !263} ; [ DW_TAG_member ] [dns] [line 92, size 32, align 32, offset 800] [from ]
!263 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTdns]
!264 = metadata !{i32 786454, null, metadata !"HTdns", metadata !46, i32 43, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [HTdns] [line 43, size 0, align 0, offset 0] [from _HTdns]
!265 = metadata !{i32 786451, null, metadata !"_HTdns", metadata !266, i32 43, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [_HTdns] [line 43, size 0, align 0, offset 0] [fwd] [from ]
!266 = metadata !{i32 786473, metadata !"../../../src/Library/src/HTDNS.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!267 = metadata !{i32 786445, metadata !136, metadata !"tcpstate", metadata !46, i32 93, i64 32, i64 32, i64 832, i32 0, metadata !268} ; [ DW_TAG_member ] [tcpstate] [line 93, size 32, align 32, offset 832] [from TCPState]
!268 = metadata !{i32 786454, null, metadata !"TCPState", metadata !46, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [TCPState] [line 53, size 0, align 0, offset 0] [from _TCPState]
!269 = metadata !{i32 786445, metadata !136, metadata !"sock_addr", metadata !46, i32 94, i64 128, i64 32, i64 864, i32 0, metadata !107} ; [ DW_TAG_member ] [sock_addr] [line 94, size 128, align 32, offset 864] [from SockA]
!270 = metadata !{i32 786445, metadata !136, metadata !"retry", metadata !46, i32 95, i64 32, i64 32, i64 992, i32 0, metadata !69} ; [ DW_TAG_member ] [retry] [line 95, size 32, align 32, offset 992] [from int]
!271 = metadata !{i32 786445, metadata !136, metadata !"home", metadata !46, i32 96, i64 32, i64 32, i64 1024, i32 0, metadata !69} ; [ DW_TAG_member ] [home] [line 96, size 32, align 32, offset 1024] [from int]
!272 = metadata !{i32 786445, metadata !136, metadata !"connecttime", metadata !46, i32 97, i64 32, i64 32, i64 1056, i32 0, metadata !273} ; [ DW_TAG_member ] [connecttime] [line 97, size 32, align 32, offset 1056] [from ms_t]
!273 = metadata !{i32 786454, null, metadata !"ms_t", metadata !46, i32 1570, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [ms_t] [line 1570, size 0, align 0, offset 0] [from long unsigned int]
!274 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!275 = metadata !{i32 786445, metadata !136, metadata !"events", metadata !46, i32 100, i64 96, i64 32, i64 1088, i32 0, metadata !276} ; [ DW_TAG_member ] [events] [line 100, size 96, align 32, offset 1088] [from ]
!276 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !277, metadata !278, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!277 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from HTEvent]
!278 = metadata !{metadata !279}
!279 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!280 = metadata !{i32 786445, metadata !136, metadata !"registeredFor", metadata !46, i32 101, i64 32, i64 32, i64 1184, i32 0, metadata !238} ; [ DW_TAG_member ] [registeredFor] [line 101, size 32, align 32, offset 1184] [from HTEventType]
!281 = metadata !{i32 786445, metadata !136, metadata !"remainingRead", metadata !46, i32 102, i64 32, i64 32, i64 1216, i32 0, metadata !282} ; [ DW_TAG_member ] [remainingRead] [line 102, size 32, align 32, offset 1216] [from size_t]
!282 = metadata !{i32 786454, null, metadata !"size_t", metadata !46, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from unsigned int]
!283 = metadata !{i32 786445, metadata !136, metadata !"delay", metadata !46, i32 105, i64 32, i64 32, i64 1248, i32 0, metadata !273} ; [ DW_TAG_member ] [delay] [line 105, size 32, align 32, offset 1248] [from ms_t]
!284 = metadata !{i32 786445, metadata !136, metadata !"context", metadata !46, i32 106, i64 32, i64 32, i64 1280, i32 0, metadata !164} ; [ DW_TAG_member ] [context] [line 106, size 32, align 32, offset 1280] [from ]
!285 = metadata !{i32 786445, metadata !136, metadata !"forceWriteFlush", metadata !46, i32 107, i64 32, i64 32, i64 1312, i32 0, metadata !69} ; [ DW_TAG_member ] [forceWriteFlush] [line 107, size 32, align 32, offset 1312] [from int]
!286 = metadata !{i32 786445, metadata !136, metadata !"inFlush", metadata !46, i32 108, i64 32, i64 32, i64 1344, i32 0, metadata !69} ; [ DW_TAG_member ] [inFlush] [line 108, size 32, align 32, offset 1344] [from int]
!287 = metadata !{metadata !288}
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292, metadata !294, metadata !295, metadata !297, metadata !299, metadata !302}
!289 = metadata !{i32 786689, metadata !131, metadata !"host", metadata !64, i32 16777386, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [host] [line 170]
!290 = metadata !{i32 786689, metadata !131, metadata !"hostname", metadata !64, i32 33554602, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hostname] [line 170]
!291 = metadata !{i32 786689, metadata !131, metadata !"request", metadata !64, i32 50331818, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [request] [line 170]
!292 = metadata !{i32 786688, metadata !293, metadata !"status", metadata !64, i32 172, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 172]
!293 = metadata !{i32 786443, metadata !131, i32 171, i32 0, metadata !64, i32 10} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!294 = metadata !{i32 786688, metadata !293, metadata !"sin", metadata !64, i32 173, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sin] [line 173]
!295 = metadata !{i32 786688, metadata !296, metadata !"strptr", metadata !64, i32 180, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strptr] [line 180]
!296 = metadata !{i32 786443, metadata !293, i32 179, i32 0, metadata !64, i32 11} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!297 = metadata !{i32 786688, metadata !298, metadata !"port", metadata !64, i32 201, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [port] [line 201]
!298 = metadata !{i32 786443, metadata !296, i32 199, i32 0, metadata !64, i32 15} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!299 = metadata !{i32 786688, metadata !300, metadata !"__v", metadata !64, i32 210, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 210]
!300 = metadata !{i32 786443, metadata !301, i32 210, i32 0, metadata !64, i32 17} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!301 = metadata !{i32 786443, metadata !296, i32 208, i32 0, metadata !64, i32 16} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!302 = metadata !{i32 786688, metadata !300, metadata !"__x", metadata !64, i32 210, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 210]
!303 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetHostName", metadata !"HTGetHostName", metadata !"", metadata !64, i32 245, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @HTGetHostName, null, null, metadata !306, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [HTGetHostName]
!304 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = metadata !{metadata !67}
!306 = metadata !{metadata !307}
!307 = metadata !{metadata !308, metadata !310, metadata !311, metadata !315, metadata !317, metadata !371, metadata !376, metadata !379, metadata !380, metadata !383, metadata !384, metadata !386, metadata !388}
!308 = metadata !{i32 786688, metadata !309, metadata !"hostname", metadata !64, i32 247, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hostname] [line 247]
!309 = metadata !{i32 786443, metadata !303, i32 246, i32 0, metadata !64, i32 18} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!310 = metadata !{i32 786688, metadata !309, metadata !"fqdn", metadata !64, i32 249, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fqdn] [line 249]
!311 = metadata !{i32 786688, metadata !309, metadata !"name", metadata !64, i32 250, metadata !312, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 250]
!312 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 520, i64 8, i32 0, i32 0, metadata !68, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 520, align 8, offset 0] [from char]
!313 = metadata !{metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 64]
!315 = metadata !{i32 786688, metadata !316, metadata !"dot", metadata !64, i32 256, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dot] [line 256]
!316 = metadata !{i32 786443, metadata !309, i32 255, i32 0, metadata !64, i32 19} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!317 = metadata !{i32 786688, metadata !318, metadata !"fp", metadata !64, i32 269, metadata !319, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 269]
!318 = metadata !{i32 786443, metadata !309, i32 268, i32 0, metadata !64, i32 21} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!319 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !320} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!320 = metadata !{i32 786454, null, metadata !"FILE", metadata !64, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [FILE] [line 49, size 0, align 0, offset 0] [from _IO_FILE]
!321 = metadata !{i32 786451, null, metadata !"_IO_FILE", metadata !322, i32 273, i64 1184, i64 32, i32 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 273, size 1184, align 32, offset 0] [from ]
!322 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!323 = metadata !{metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !344, metadata !345, metadata !346, metadata !347, metadata !349, metadata !350, metadata !352, metadata !356, metadata !357, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367}
!324 = metadata !{i32 786445, metadata !321, metadata !"_flags", metadata !322, i32 274, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [_flags] [line 274, size 32, align 32, offset 0] [from int]
!325 = metadata !{i32 786445, metadata !321, metadata !"_IO_read_ptr", metadata !322, i32 279, i64 32, i64 32, i64 32, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_ptr] [line 279, size 32, align 32, offset 32] [from ]
!326 = metadata !{i32 786445, metadata !321, metadata !"_IO_read_end", metadata !322, i32 280, i64 32, i64 32, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_end] [line 280, size 32, align 32, offset 64] [from ]
!327 = metadata !{i32 786445, metadata !321, metadata !"_IO_read_base", metadata !322, i32 281, i64 32, i64 32, i64 96, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_base] [line 281, size 32, align 32, offset 96] [from ]
!328 = metadata !{i32 786445, metadata !321, metadata !"_IO_write_base", metadata !322, i32 282, i64 32, i64 32, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_base] [line 282, size 32, align 32, offset 128] [from ]
!329 = metadata !{i32 786445, metadata !321, metadata !"_IO_write_ptr", metadata !322, i32 283, i64 32, i64 32, i64 160, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_ptr] [line 283, size 32, align 32, offset 160] [from ]
!330 = metadata !{i32 786445, metadata !321, metadata !"_IO_write_end", metadata !322, i32 284, i64 32, i64 32, i64 192, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_end] [line 284, size 32, align 32, offset 192] [from ]
!331 = metadata !{i32 786445, metadata !321, metadata !"_IO_buf_base", metadata !322, i32 285, i64 32, i64 32, i64 224, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_buf_base] [line 285, size 32, align 32, offset 224] [from ]
!332 = metadata !{i32 786445, metadata !321, metadata !"_IO_buf_end", metadata !322, i32 286, i64 32, i64 32, i64 256, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_buf_end] [line 286, size 32, align 32, offset 256] [from ]
!333 = metadata !{i32 786445, metadata !321, metadata !"_IO_save_base", metadata !322, i32 288, i64 32, i64 32, i64 288, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_save_base] [line 288, size 32, align 32, offset 288] [from ]
!334 = metadata !{i32 786445, metadata !321, metadata !"_IO_backup_base", metadata !322, i32 289, i64 32, i64 32, i64 320, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_backup_base] [line 289, size 32, align 32, offset 320] [from ]
!335 = metadata !{i32 786445, metadata !321, metadata !"_IO_save_end", metadata !322, i32 290, i64 32, i64 32, i64 352, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_save_end] [line 290, size 32, align 32, offset 352] [from ]
!336 = metadata !{i32 786445, metadata !321, metadata !"_markers", metadata !322, i32 292, i64 32, i64 32, i64 384, i32 0, metadata !337} ; [ DW_TAG_member ] [_markers] [line 292, size 32, align 32, offset 384] [from ]
!337 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_marker]
!338 = metadata !{i32 786451, null, metadata !"_IO_marker", metadata !322, i32 188, i64 96, i64 32, i32 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_structure_type ] [_IO_marker] [line 188, size 96, align 32, offset 0] [from ]
!339 = metadata !{metadata !340, metadata !341, metadata !343}
!340 = metadata !{i32 786445, metadata !338, metadata !"_next", metadata !322, i32 189, i64 32, i64 32, i64 0, i32 0, metadata !337} ; [ DW_TAG_member ] [_next] [line 189, size 32, align 32, offset 0] [from ]
!341 = metadata !{i32 786445, metadata !338, metadata !"_sbuf", metadata !322, i32 190, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [_sbuf] [line 190, size 32, align 32, offset 32] [from ]
!342 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_FILE]
!343 = metadata !{i32 786445, metadata !338, metadata !"_pos", metadata !322, i32 194, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [_pos] [line 194, size 32, align 32, offset 64] [from int]
!344 = metadata !{i32 786445, metadata !321, metadata !"_chain", metadata !322, i32 294, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [_chain] [line 294, size 32, align 32, offset 416] [from ]
!345 = metadata !{i32 786445, metadata !321, metadata !"_fileno", metadata !322, i32 296, i64 32, i64 32, i64 448, i32 0, metadata !69} ; [ DW_TAG_member ] [_fileno] [line 296, size 32, align 32, offset 448] [from int]
!346 = metadata !{i32 786445, metadata !321, metadata !"_flags2", metadata !322, i32 300, i64 32, i64 32, i64 480, i32 0, metadata !69} ; [ DW_TAG_member ] [_flags2] [line 300, size 32, align 32, offset 480] [from int]
!347 = metadata !{i32 786445, metadata !321, metadata !"_old_offset", metadata !322, i32 302, i64 32, i64 32, i64 512, i32 0, metadata !348} ; [ DW_TAG_member ] [_old_offset] [line 302, size 32, align 32, offset 512] [from __off_t]
!348 = metadata !{i32 786454, null, metadata !"__off_t", metadata !322, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [__off_t] [line 141, size 0, align 0, offset 0] [from long int]
!349 = metadata !{i32 786445, metadata !321, metadata !"_cur_column", metadata !322, i32 306, i64 16, i64 16, i64 544, i32 0, metadata !113} ; [ DW_TAG_member ] [_cur_column] [line 306, size 16, align 16, offset 544] [from unsigned short]
!350 = metadata !{i32 786445, metadata !321, metadata !"_vtable_offset", metadata !322, i32 307, i64 8, i64 8, i64 560, i32 0, metadata !351} ; [ DW_TAG_member ] [_vtable_offset] [line 307, size 8, align 8, offset 560] [from signed char]
!351 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!352 = metadata !{i32 786445, metadata !321, metadata !"_shortbuf", metadata !322, i32 308, i64 8, i64 8, i64 568, i32 0, metadata !353} ; [ DW_TAG_member ] [_shortbuf] [line 308, size 8, align 8, offset 568] [from ]
!353 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !68, metadata !354, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!354 = metadata !{metadata !355}
!355 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!356 = metadata !{i32 786445, metadata !321, metadata !"_lock", metadata !322, i32 312, i64 32, i64 32, i64 576, i32 0, metadata !164} ; [ DW_TAG_member ] [_lock] [line 312, size 32, align 32, offset 576] [from ]
!357 = metadata !{i32 786445, metadata !321, metadata !"_offset", metadata !322, i32 321, i64 64, i64 32, i64 608, i32 0, metadata !358} ; [ DW_TAG_member ] [_offset] [line 321, size 64, align 32, offset 608] [from __off64_t]
!358 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !322, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!359 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !322, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!360 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!361 = metadata !{i32 786445, metadata !321, metadata !"__pad1", metadata !322, i32 330, i64 32, i64 32, i64 672, i32 0, metadata !164} ; [ DW_TAG_member ] [__pad1] [line 330, size 32, align 32, offset 672] [from ]
!362 = metadata !{i32 786445, metadata !321, metadata !"__pad2", metadata !322, i32 331, i64 32, i64 32, i64 704, i32 0, metadata !164} ; [ DW_TAG_member ] [__pad2] [line 331, size 32, align 32, offset 704] [from ]
!363 = metadata !{i32 786445, metadata !321, metadata !"__pad3", metadata !322, i32 332, i64 32, i64 32, i64 736, i32 0, metadata !164} ; [ DW_TAG_member ] [__pad3] [line 332, size 32, align 32, offset 736] [from ]
!364 = metadata !{i32 786445, metadata !321, metadata !"__pad4", metadata !322, i32 333, i64 32, i64 32, i64 768, i32 0, metadata !164} ; [ DW_TAG_member ] [__pad4] [line 333, size 32, align 32, offset 768] [from ]
!365 = metadata !{i32 786445, metadata !321, metadata !"__pad5", metadata !322, i32 334, i64 32, i64 32, i64 800, i32 0, metadata !282} ; [ DW_TAG_member ] [__pad5] [line 334, size 32, align 32, offset 800] [from size_t]
!366 = metadata !{i32 786445, metadata !321, metadata !"_mode", metadata !322, i32 336, i64 32, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [_mode] [line 336, size 32, align 32, offset 832] [from int]
!367 = metadata !{i32 786445, metadata !321, metadata !"_unused2", metadata !322, i32 338, i64 320, i64 8, i64 864, i32 0, metadata !368} ; [ DW_TAG_member ] [_unused2] [line 338, size 320, align 8, offset 864] [from ]
!368 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 8, i32 0, i32 0, metadata !68, metadata !369, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!369 = metadata !{metadata !370}
!370 = metadata !{i32 786465, i64 0, i64 39}      ; [ DW_TAG_subrange_type ] [0, 39]
!371 = metadata !{i32 786688, metadata !372, metadata !"buffer", metadata !64, i32 271, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 271]
!372 = metadata !{i32 786443, metadata !318, i32 270, i32 0, metadata !64, i32 22} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!373 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 640, i64 8, i32 0, i32 0, metadata !68, metadata !374, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 8, offset 0] [from char]
!374 = metadata !{metadata !375}
!375 = metadata !{i32 786465, i64 0, i64 79}      ; [ DW_TAG_subrange_type ] [0, 79]
!376 = metadata !{i32 786688, metadata !377, metadata !"domainstr", metadata !64, i32 275, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domainstr] [line 275]
!377 = metadata !{i32 786443, metadata !378, i32 274, i32 0, metadata !64, i32 24} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!378 = metadata !{i32 786443, metadata !372, i32 273, i32 0, metadata !64, i32 23} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!379 = metadata !{i32 786688, metadata !377, metadata !"end", metadata !64, i32 276, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 276]
!380 = metadata !{i32 786688, metadata !381, metadata !"__s1_len", metadata !64, i32 309, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 309]
!381 = metadata !{i32 786443, metadata !382, i32 309, i32 0, metadata !64, i32 29} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!382 = metadata !{i32 786443, metadata !309, i32 297, i32 0, metadata !64, i32 26} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!383 = metadata !{i32 786688, metadata !381, metadata !"__s2_len", metadata !64, i32 309, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 309]
!384 = metadata !{i32 786688, metadata !385, metadata !"domain", metadata !64, i32 310, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 310]
!385 = metadata !{i32 786443, metadata !382, i32 309, i32 0, metadata !64, i32 30} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!386 = metadata !{i32 786688, metadata !387, metadata !"strptr", metadata !64, i32 318, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strptr] [line 318]
!387 = metadata !{i32 786443, metadata !309, i32 317, i32 0, metadata !64, i32 31} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!388 = metadata !{i32 786688, metadata !389, metadata !"__res", metadata !64, i32 320, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 320]
!389 = metadata !{i32 786443, metadata !390, i32 320, i32 0, metadata !64, i32 33} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!390 = metadata !{i32 786443, metadata !387, i32 319, i32 0, metadata !64, i32 32} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!391 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetMailAddress", metadata !"HTGetMailAddress", metadata !"", metadata !64, i32 352, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @HTGetMailAddress, null, null, metadata !392, i32 353} ; [ DW_TAG_subprogram ] [line 352] [def] [scope 353] [HTGetMailAddress]
!392 = metadata !{metadata !393}
!393 = metadata !{metadata !394, metadata !409, metadata !410, metadata !412}
!394 = metadata !{i32 786688, metadata !395, metadata !"pw_info", metadata !64, i32 361, metadata !396, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pw_info] [line 361]
!395 = metadata !{i32 786443, metadata !391, i32 353, i32 0, metadata !64, i32 36} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!396 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !397} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from passwd]
!397 = metadata !{i32 786451, null, metadata !"passwd", metadata !398, i32 50, i64 224, i64 32, i32 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_structure_type ] [passwd] [line 50, size 224, align 32, offset 0] [from ]
!398 = metadata !{i32 786473, metadata !"/usr/include/pwd.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !404, metadata !406, metadata !407, metadata !408}
!400 = metadata !{i32 786445, metadata !397, metadata !"pw_name", metadata !398, i32 52, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [pw_name] [line 52, size 32, align 32, offset 0] [from ]
!401 = metadata !{i32 786445, metadata !397, metadata !"pw_passwd", metadata !398, i32 53, i64 32, i64 32, i64 32, i32 0, metadata !67} ; [ DW_TAG_member ] [pw_passwd] [line 53, size 32, align 32, offset 32] [from ]
!402 = metadata !{i32 786445, metadata !397, metadata !"pw_uid", metadata !398, i32 54, i64 32, i64 32, i64 64, i32 0, metadata !403} ; [ DW_TAG_member ] [pw_uid] [line 54, size 32, align 32, offset 64] [from __uid_t]
!403 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !398, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!404 = metadata !{i32 786445, metadata !397, metadata !"pw_gid", metadata !398, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !405} ; [ DW_TAG_member ] [pw_gid] [line 55, size 32, align 32, offset 96] [from __gid_t]
!405 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !398, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!406 = metadata !{i32 786445, metadata !397, metadata !"pw_gecos", metadata !398, i32 56, i64 32, i64 32, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [pw_gecos] [line 56, size 32, align 32, offset 128] [from ]
!407 = metadata !{i32 786445, metadata !397, metadata !"pw_dir", metadata !398, i32 57, i64 32, i64 32, i64 160, i32 0, metadata !67} ; [ DW_TAG_member ] [pw_dir] [line 57, size 32, align 32, offset 160] [from ]
!408 = metadata !{i32 786445, metadata !397, metadata !"pw_shell", metadata !398, i32 58, i64 32, i64 32, i64 192, i32 0, metadata !67} ; [ DW_TAG_member ] [pw_shell] [line 58, size 32, align 32, offset 192] [from ]
!409 = metadata !{i32 786688, metadata !395, metadata !"login", metadata !64, i32 363, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [login] [line 363]
!410 = metadata !{i32 786688, metadata !411, metadata !"domain", metadata !64, i32 399, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 399]
!411 = metadata !{i32 786443, metadata !395, i32 398, i32 0, metadata !64, i32 40} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!412 = metadata !{i32 786688, metadata !411, metadata !"mailaddress", metadata !64, i32 400, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mailaddress] [line 400]
!413 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetNewsServer", metadata !"HTGetNewsServer", metadata !"", metadata !64, i32 431, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @HTGetNewsServer, null, null, metadata !414, i32 432} ; [ DW_TAG_subprogram ] [line 431] [def] [scope 432] [HTGetNewsServer]
!414 = metadata !{metadata !415}
!415 = metadata !{metadata !416, metadata !418, metadata !419, metadata !421, metadata !424, metadata !426, metadata !428}
!416 = metadata !{i32 786688, metadata !417, metadata !"newshost", metadata !64, i32 433, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newshost] [line 433]
!417 = metadata !{i32 786443, metadata !413, i32 432, i32 0, metadata !64, i32 43} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!418 = metadata !{i32 786688, metadata !417, metadata !"buffer", metadata !64, i32 434, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 434]
!419 = metadata !{i32 786688, metadata !420, metadata !"fp", metadata !64, i32 438, metadata !319, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 438]
!420 = metadata !{i32 786443, metadata !417, i32 437, i32 0, metadata !64, i32 44} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!421 = metadata !{i32 786688, metadata !422, metadata !"end", metadata !64, i32 442, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 442]
!422 = metadata !{i32 786443, metadata !423, i32 441, i32 0, metadata !64, i32 46} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!423 = metadata !{i32 786443, metadata !420, i32 440, i32 0, metadata !64, i32 45} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!424 = metadata !{i32 786688, metadata !425, metadata !"result", metadata !64, i32 460, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 460]
!425 = metadata !{i32 786443, metadata !417, i32 459, i32 0, metadata !64, i32 47} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!426 = metadata !{i32 786688, metadata !427, metadata !"strptr", metadata !64, i32 463, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strptr] [line 463]
!427 = metadata !{i32 786443, metadata !425, i32 462, i32 0, metadata !64, i32 48} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!428 = metadata !{i32 786688, metadata !429, metadata !"__res", metadata !64, i32 465, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 465]
!429 = metadata !{i32 786443, metadata !430, i32 465, i32 0, metadata !64, i32 50} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!430 = metadata !{i32 786443, metadata !427, i32 464, i32 0, metadata !64, i32 49} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!431 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetTimeZoneOffset", metadata !"HTGetTimeZoneOffset", metadata !"", metadata !64, i32 477, metadata !432, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @HTGetTimeZoneOffset, null, null, metadata !434, i32 478} ; [ DW_TAG_subprogram ] [line 477] [def] [scope 478] [HTGetTimeZoneOffset]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!433 = metadata !{metadata !146}
!434 = metadata !{metadata !435}
!435 = metadata !{metadata !436, metadata !439}
!436 = metadata !{i32 786688, metadata !437, metadata !"cur_t", metadata !64, i32 486, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur_t] [line 486]
!437 = metadata !{i32 786443, metadata !438, i32 485, i32 0, metadata !64, i32 53} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!438 = metadata !{i32 786443, metadata !431, i32 478, i32 0, metadata !64, i32 52} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!439 = metadata !{i32 786688, metadata !437, metadata !"local", metadata !64, i32 489, metadata !440, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local] [line 489]
!440 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from tm]
!441 = metadata !{i32 786451, null, metadata !"tm", metadata !442, i32 133, i64 352, i64 32, i32 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tm] [line 133, size 352, align 32, offset 0] [from ]
!442 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!443 = metadata !{metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454}
!444 = metadata !{i32 786445, metadata !441, metadata !"tm_sec", metadata !442, i32 135, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!445 = metadata !{i32 786445, metadata !441, metadata !"tm_min", metadata !442, i32 136, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!446 = metadata !{i32 786445, metadata !441, metadata !"tm_hour", metadata !442, i32 137, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!447 = metadata !{i32 786445, metadata !441, metadata !"tm_mday", metadata !442, i32 138, i64 32, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!448 = metadata !{i32 786445, metadata !441, metadata !"tm_mon", metadata !442, i32 139, i64 32, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!449 = metadata !{i32 786445, metadata !441, metadata !"tm_year", metadata !442, i32 140, i64 32, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!450 = metadata !{i32 786445, metadata !441, metadata !"tm_wday", metadata !442, i32 141, i64 32, i64 32, i64 192, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!451 = metadata !{i32 786445, metadata !441, metadata !"tm_yday", metadata !442, i32 142, i64 32, i64 32, i64 224, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!452 = metadata !{i32 786445, metadata !441, metadata !"tm_isdst", metadata !442, i32 143, i64 32, i64 32, i64 256, i32 0, metadata !69} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!453 = metadata !{i32 786445, metadata !441, metadata !"tm_gmtoff", metadata !442, i32 146, i64 32, i64 32, i64 288, i32 0, metadata !146} ; [ DW_TAG_member ] [tm_gmtoff] [line 146, size 32, align 32, offset 288] [from long int]
!454 = metadata !{i32 786445, metadata !441, metadata !"tm_zone", metadata !442, i32 147, i64 32, i64 32, i64 320, i32 0, metadata !104} ; [ DW_TAG_member ] [tm_zone] [line 147, size 32, align 32, offset 320] [from ]
!455 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetTmpFileName", metadata !"HTGetTmpFileName", metadata !"", metadata !64, i32 536, metadata !456, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @HTGetTmpFileName, null, null, metadata !458, i32 537} ; [ DW_TAG_subprogram ] [line 536] [def] [scope 537] [HTGetTmpFileName]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{metadata !67, metadata !104}
!458 = metadata !{metadata !459}
!459 = metadata !{metadata !460, metadata !461, metadata !463, metadata !464}
!460 = metadata !{i32 786689, metadata !455, metadata !"abs_dir", metadata !64, i32 16777752, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [abs_dir] [line 536]
!461 = metadata !{i32 786688, metadata !462, metadata !"result", metadata !64, i32 538, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 538]
!462 = metadata !{i32 786443, metadata !455, i32 537, i32 0, metadata !64, i32 57} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!463 = metadata !{i32 786688, metadata !462, metadata !"len", metadata !64, i32 541, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 541]
!464 = metadata !{i32 786688, metadata !465, metadata !"tmpdir", metadata !64, i32 543, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpdir] [line 543]
!465 = metadata !{i32 786443, metadata !462, i32 542, i32 0, metadata !64, i32 58} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!466 = metadata !{i32 786478, i32 0, metadata !64, metadata !"HTGetTimeInMillis", metadata !"HTGetTimeInMillis", metadata !"", metadata !64, i32 582, metadata !467, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @HTGetTimeInMillis, null, null, metadata !469, i32 583} ; [ DW_TAG_subprogram ] [line 582] [def] [scope 583] [HTGetTimeInMillis]
!467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{metadata !274}
!469 = metadata !{metadata !470}
!470 = metadata !{metadata !471}
!471 = metadata !{i32 786688, metadata !472, metadata !"tp", metadata !64, i32 587, metadata !473, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 587]
!472 = metadata !{i32 786443, metadata !466, i32 583, i32 0, metadata !64, i32 60} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!473 = metadata !{i32 786451, null, metadata !"timeval", metadata !474, i32 31, i64 64, i64 32, i32 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timeval] [line 31, size 64, align 32, offset 0] [from ]
!474 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/time.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!475 = metadata !{metadata !476, metadata !477}
!476 = metadata !{i32 786445, metadata !473, metadata !"tv_sec", metadata !474, i32 33, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [tv_sec] [line 33, size 32, align 32, offset 0] [from __time_t]
!477 = metadata !{i32 786445, metadata !473, metadata !"tv_usec", metadata !474, i32 34, i64 32, i64 32, i64 32, i32 0, metadata !478} ; [ DW_TAG_member ] [tv_usec] [line 34, size 32, align 32, offset 32] [from __suseconds_t]
!478 = metadata !{i32 786454, null, metadata !"__suseconds_t", metadata !474, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [__suseconds_t] [line 151, size 0, align 0, offset 0] [from long int]
!479 = metadata !{i32 786478, i32 0, metadata !480, metadata !"tolower", metadata !"tolower", metadata !"", metadata !480, i32 217, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !483, i32 218} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 218] [tolower]
!480 = metadata !{i32 786473, metadata !"/usr/include/ctype.h", metadata !"/home/mariospomonis/Desktop/C-WWWX2/install/Library/src", null} ; [ DW_TAG_file_type ]
!481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!482 = metadata !{metadata !69, metadata !69}
!483 = metadata !{metadata !484}
!484 = metadata !{metadata !485}
!485 = metadata !{i32 786689, metadata !479, metadata !"__c", metadata !480, i32 16777433, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__c] [line 217]
!486 = metadata !{metadata !487}
!487 = metadata !{metadata !488, metadata !492, metadata !493}
!488 = metadata !{i32 786484, i32 0, metadata !101, metadata !"string", metadata !"string", metadata !"", metadata !64, i32 153, metadata !489, i32 1, i32 1, [16 x i8]* @HTInetString.string} ; [ DW_TAG_variable ] [string] [line 153] [local] [def]
!489 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !68, metadata !490, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!490 = metadata !{metadata !491}
!491 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!492 = metadata !{i32 786484, i32 0, metadata !431, metadata !"HTTimeZone", metadata !"HTTimeZone", metadata !"", metadata !64, i32 480, metadata !144, i32 1, i32 1, i32* @HTGetTimeZoneOffset.HTTimeZone} ; [ DW_TAG_variable ] [HTTimeZone] [line 480] [local] [def]
!493 = metadata !{i32 786484, i32 0, metadata !455, metadata !"envtmpdir", metadata !"envtmpdir", metadata !"", metadata !64, i32 540, metadata !67, i32 1, i32 1, i8** @HTGetTmpFileName.envtmpdir} ; [ DW_TAG_variable ] [envtmpdir] [line 540] [local] [def]
!494 = metadata !{i32 34, i32 0, metadata !63, null}
!495 = metadata !{i32 36, i32 0, metadata !74, null}
!496 = metadata !{i8* null}
!497 = metadata !{metadata !"any pointer", metadata !498}
!498 = metadata !{metadata !"omnipotent char", metadata !499}
!499 = metadata !{metadata !"Simple C/C++ TBAA"}
!500 = metadata !{i32 40, i32 0, metadata !74, null}
!501 = metadata !{i32 53, i32 0, metadata !74, null}
!502 = metadata !{i32 58, i32 0, metadata !75, null}
!503 = metadata !{i32 65, i32 0, metadata !84, null}
!504 = metadata !{metadata !"int", metadata !498}
!505 = metadata !{i32 34, i32 0, metadata !63, metadata !506}
!506 = metadata !{i32 66, i32 0, metadata !83, null}
!507 = metadata !{i32 786689, metadata !63, metadata !"errornumber", metadata !64, i32 16777250, metadata !69, i32 0, metadata !506} ; [ DW_TAG_arg_variable ] [errornumber] [line 34]
!508 = metadata !{i32 36, i32 0, metadata !74, metadata !506}
!509 = metadata !{i32 786688, metadata !74, metadata !"msg", metadata !64, i32 36, metadata !67, i32 0, metadata !506} ; [ DW_TAG_auto_variable ] [msg] [line 36]
!510 = metadata !{i32 40, i32 0, metadata !74, metadata !506}
!511 = metadata !{i32 53, i32 0, metadata !74, metadata !506}
!512 = metadata !{i32 68, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !83, i32 67, i32 0, metadata !64, i32 3} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!514 = metadata !{i32 69, i32 0, metadata !513, null}
!515 = metadata !{i32 73, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !83, i32 72, i32 0, metadata !64, i32 4} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!517 = metadata !{i32 74, i32 0, metadata !516, null}
!518 = metadata !{i32 77, i32 0, metadata !83, null}
!519 = metadata !{i32 79, i32 0, metadata !84, null}
!520 = metadata !{i32 97, i32 0, metadata !85, null}
!521 = metadata !{i32 99, i32 0, metadata !97, null}
!522 = metadata !{i32 101, i32 0, metadata !97, null}
!523 = metadata !{i32 103, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !97, i32 101, i32 0, metadata !64, i32 6} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!525 = metadata !{i32 104, i32 0, metadata !524, null}
!526 = metadata !{i32 107, i32 0, metadata !97, null}
!527 = metadata !{i32 106, i32 0, metadata !97, null}
!528 = metadata !{i32 108, i32 0, metadata !97, null}
!529 = metadata !{i32 110, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !97, i32 108, i32 0, metadata !64, i32 7} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!531 = metadata !{i32 111, i32 0, metadata !530, null}
!532 = metadata !{i32 114, i32 0, metadata !97, null}
!533 = metadata !{i32 132, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !98, i32 131, i32 0, metadata !64, i32 8} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!535 = metadata !{i32 145, i32 0, metadata !101, null}
!536 = metadata !{i32 154, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !101, i32 146, i32 0, metadata !64, i32 9} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!538 = metadata !{i32 155, i32 0, metadata !537, null}
!539 = metadata !{i32 170, i32 0, metadata !131, null}
!540 = metadata !{i32 1}
!541 = metadata !{i32 172, i32 0, metadata !293, null}
!542 = metadata !{i32 180, i32 0, metadata !296, null}
!543 = metadata !{i32 181, i32 0, metadata !296, null}
!544 = metadata !{i32 184, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !546, i32 182, i32 0, metadata !64, i32 13} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!546 = metadata !{i32 786443, metadata !296, i32 181, i32 0, metadata !64, i32 12} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!547 = metadata !{i32 185, i32 0, metadata !545, null}
!548 = metadata !{i32 182, i32 0, metadata !546, null}
!549 = metadata !{i32 187, i32 0, metadata !546, null}
!550 = metadata !{metadata !"short", metadata !498}
!551 = metadata !{i32 189, i32 0, metadata !546, null}
!552 = metadata !{i32 191, i32 0, metadata !296, null}
!553 = metadata !{i32 196, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !296, i32 191, i32 0, metadata !64, i32 14} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!555 = metadata !{i32 207, i32 0, metadata !296, null}
!556 = metadata !{i32 201, i32 0, metadata !298, null}
!557 = metadata !{i32 202, i32 0, metadata !298, null}
!558 = metadata !{i32 203, i32 0, metadata !298, null}
!559 = metadata !{i32 204, i32 0, metadata !298, null}
!560 = metadata !{i32 209, i32 0, metadata !301, null}
!561 = metadata !{i32 210, i32 0, metadata !300, null}
!562 = metadata !{i32 -2145686216}                
!563 = metadata !{i32 154, i32 0, metadata !537, metadata !564}
!564 = metadata !{i32 210, i32 0, metadata !301, null}
!565 = metadata !{i32 216, i32 0, metadata !293, null}
!566 = metadata !{i32 247, i32 0, metadata !309, null}
!567 = metadata !{i32 249, i32 0, metadata !309, null}
!568 = metadata !{i32 250, i32 0, metadata !309, null}
!569 = metadata !{i32 251, i32 0, metadata !309, null}
!570 = metadata !{i32 255, i32 0, metadata !309, null}
!571 = metadata !{i32 256, i32 0, metadata !316, null}
!572 = metadata !{i32 258, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !316, i32 257, i32 0, metadata !64, i32 20} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!574 = metadata !{i32 259, i32 0, metadata !573, null}
!575 = metadata !{i32 262, i32 0, metadata !316, null}
!576 = metadata !{i32 263, i32 0, metadata !316, null}
!577 = metadata !{i32 270, i32 0, metadata !318, null}
!578 = metadata !{i32 271, i32 0, metadata !372, null}
!579 = metadata !{i32 272, i32 0, metadata !372, null}
!580 = metadata !{i32 273, i32 0, metadata !372, null}
!581 = metadata !{i32 275, i32 0, metadata !377, null}
!582 = metadata !{i32 274, i32 0, metadata !378, null}
!583 = metadata !{i32 277, i32 0, metadata !377, null}
!584 = metadata !{i32 278, i32 0, metadata !377, null}
!585 = metadata !{i32 280, i32 0, metadata !377, null}
!586 = metadata !{i32 281, i32 0, metadata !377, null}
!587 = metadata !{i32 282, i32 0, metadata !377, null}
!588 = metadata !{i32 283, i32 0, metadata !377, null}
!589 = metadata !{i32 284, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !377, i32 283, i32 0, metadata !64, i32 25} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!591 = metadata !{i32 285, i32 0, metadata !590, null}
!592 = metadata !{i32 2}
!593 = metadata !{i32 286, i32 0, metadata !590, null}
!594 = metadata !{i32 291, i32 0, metadata !372, null}
!595 = metadata !{i32 297, i32 0, metadata !309, null}
!596 = metadata !{i32 298, i32 0, metadata !382, null}
!597 = metadata !{i32 300, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !599, i32 299, i32 0, metadata !64, i32 28} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!599 = metadata !{i32 786443, metadata !382, i32 298, i32 0, metadata !64, i32 27} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!600 = metadata !{i32 301, i32 0, metadata !598, null}
!601 = metadata !{i32 304, i32 0, metadata !599, null}
!602 = metadata !{i32 305, i32 0, metadata !599, null}
!603 = metadata !{i32 309, i32 0, metadata !381, null}
!604 = metadata !{i32 310, i32 0, metadata !385, null}
!605 = metadata !{i32 311, i32 0, metadata !385, null}
!606 = metadata !{i32 313, i32 0, metadata !385, null}
!607 = metadata !{i32 314, i32 0, metadata !385, null}
!608 = metadata !{i32 317, i32 0, metadata !309, null}
!609 = metadata !{i32 319, i32 0, metadata !387, null}
!610 = metadata !{i32 320, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !389, i32 320, i32 0, metadata !64, i32 34} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!612 = metadata !{i32 786689, metadata !479, metadata !"__c", metadata !480, i32 16777433, metadata !69, i32 0, metadata !610} ; [ DW_TAG_arg_variable ] [__c] [line 217]
!613 = metadata !{i32 217, i32 0, metadata !479, metadata !610}
!614 = metadata !{i32 219, i32 0, metadata !615, metadata !610}
!615 = metadata !{i32 786443, metadata !479, i32 218, i32 0, metadata !480, i32 61} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src//usr/include/ctype.h]
!616 = metadata !{i32 321, i32 0, metadata !390, null}
!617 = metadata !{i32 324, i32 0, metadata !387, null}
!618 = metadata !{i32 325, i32 0, metadata !387, null}
!619 = metadata !{i32 327, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !387, i32 326, i32 0, metadata !64, i32 35} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!621 = metadata !{i32 328, i32 0, metadata !620, null}
!622 = metadata !{i32 332, i32 0, metadata !309, null}
!623 = metadata !{i32 333, i32 0, metadata !309, null}
!624 = metadata !{%struct.passwd* null}
!625 = metadata !{i32 361, i32 0, metadata !395, null}
!626 = metadata !{i32 363, i32 0, metadata !395, null}
!627 = metadata !{i32 372, i32 0, metadata !395, null}
!628 = metadata !{i32 375, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !395, i32 374, i32 0, metadata !64, i32 37} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!630 = metadata !{i32 376, i32 0, metadata !629, null}
!631 = metadata !{i32 381, i32 0, metadata !395, null}
!632 = metadata !{i32 382, i32 0, metadata !395, null}
!633 = metadata !{i32 384, i32 0, metadata !395, null}
!634 = metadata !{i32 386, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !395, i32 385, i32 0, metadata !64, i32 38} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!636 = metadata !{i32 387, i32 0, metadata !635, null}
!637 = metadata !{i32 390, i32 0, metadata !395, null}
!638 = metadata !{i32 392, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !395, i32 391, i32 0, metadata !64, i32 39} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!640 = metadata !{i32 393, i32 0, metadata !639, null}
!641 = metadata !{i32 396, i32 0, metadata !395, null}
!642 = metadata !{i32 399, i32 0, metadata !411, null}
!643 = metadata !{i32 400, i32 0, metadata !411, null}
!644 = metadata !{i32 401, i32 0, metadata !411, null}
!645 = metadata !{i32 402, i32 0, metadata !411, null}
!646 = metadata !{i32 403, i32 0, metadata !411, null}
!647 = metadata !{i32 404, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !411, i32 403, i32 0, metadata !64, i32 41} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!649 = metadata !{i32 406, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !648, i32 405, i32 0, metadata !64, i32 42} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!651 = metadata !{i32 407, i32 0, metadata !650, null}
!652 = metadata !{i32 410, i32 0, metadata !648, null}
!653 = metadata !{i32 411, i32 0, metadata !411, null}
!654 = metadata !{i32 414, i32 0, metadata !395, null}
!655 = metadata !{i32 433, i32 0, metadata !417, null}
!656 = metadata !{i32 434, i32 0, metadata !417, null}
!657 = metadata !{i32 437, i32 0, metadata !417, null}
!658 = metadata !{i32 438, i32 0, metadata !420, null}
!659 = metadata !{i32 439, i32 0, metadata !420, null}
!660 = metadata !{i32 440, i32 0, metadata !420, null}
!661 = metadata !{i32 441, i32 0, metadata !423, null}
!662 = metadata !{i32 451, i32 0, metadata !423, null}
!663 = metadata !{i32 456, i32 0, metadata !417, null}
!664 = metadata !{i32 444, i32 0, metadata !422, null}
!665 = metadata !{i32 445, i32 0, metadata !422, null}
!666 = metadata !{i32 447, i32 0, metadata !422, null}
!667 = metadata !{i32 448, i32 0, metadata !422, null}
!668 = metadata !{i32 449, i32 0, metadata !422, null}
!669 = metadata !{i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0)}
!670 = metadata !{i32 457, i32 0, metadata !417, null}
!671 = metadata !{i32 460, i32 0, metadata !425, null}
!672 = metadata !{i32 461, i32 0, metadata !425, null}
!673 = metadata !{i32 463, i32 0, metadata !427, null}
!674 = metadata !{i32 464, i32 0, metadata !427, null}
!675 = metadata !{i32 465, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !429, i32 465, i32 0, metadata !64, i32 51} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!677 = metadata !{i32 786689, metadata !479, metadata !"__c", metadata !480, i32 16777433, metadata !69, i32 0, metadata !675} ; [ DW_TAG_arg_variable ] [__c] [line 217]
!678 = metadata !{i32 217, i32 0, metadata !479, metadata !675}
!679 = metadata !{i32 219, i32 0, metadata !615, metadata !675}
!680 = metadata !{i32 466, i32 0, metadata !430, null}
!681 = metadata !{i32 469, i32 0, metadata !425, null}
!682 = metadata !{i32 482, i32 0, metadata !438, null}
!683 = metadata !{metadata !"long", metadata !498}
!684 = metadata !{i32 486, i32 0, metadata !437, null}
!685 = metadata !{i32 489, i32 0, metadata !437, null}
!686 = metadata !{i32 493, i32 0, metadata !437, null}
!687 = metadata !{i32 502, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !437, i32 493, i32 0, metadata !64, i32 54} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!689 = metadata !{i32 510, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !437, i32 507, i32 0, metadata !64, i32 55} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!691 = metadata !{i32 513, i32 0, metadata !437, null}
!692 = metadata !{i32 515, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !437, i32 514, i32 0, metadata !64, i32 56} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!694 = metadata !{i32 516, i32 0, metadata !693, null}
!695 = metadata !{i32 483, i32 0, metadata !438, null}
!696 = metadata !{i32 529, i32 0, metadata !438, null}
!697 = metadata !{i32 536, i32 0, metadata !455, null}
!698 = metadata !{i32 538, i32 0, metadata !462, null}
!699 = metadata !{i32 541, i32 0, metadata !462, null}
!700 = metadata !{i32 542, i32 0, metadata !462, null}
!701 = metadata !{i32 543, i32 0, metadata !465, null}
!702 = metadata !{i32 544, i32 0, metadata !465, null}
!703 = metadata !{i32 545, i32 0, metadata !465, null}
!704 = metadata !{i32 546, i32 0, metadata !465, null}
!705 = metadata !{i32 547, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !465, i32 546, i32 0, metadata !64, i32 59} ; [ DW_TAG_lexical_block ] [/home/mariospomonis/Desktop/C-WWWX2/install/Library/src/../../../src/Library/src/HTInet.c]
!707 = metadata !{i32 548, i32 0, metadata !706, null}
!708 = metadata !{i32 549, i32 0, metadata !706, null}
!709 = metadata !{i32 556, i32 0, metadata !462, null}
!710 = metadata !{i32 558, i32 0, metadata !462, null}
!711 = metadata !{i32 550, i32 0, metadata !706, null}
!712 = metadata !{i32 551, i32 0, metadata !706, null}
!713 = metadata !{i32 559, i32 0, metadata !462, null}
!714 = metadata !{i32 576, i32 0, metadata !462, null}
!715 = metadata !{i32 587, i32 0, metadata !472, null}
!716 = metadata !{i32 588, i32 0, metadata !472, null}
!717 = metadata !{i32 589, i32 0, metadata !472, null}
