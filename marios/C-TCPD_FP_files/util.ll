; ModuleID = '../src/util.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.netdissect_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.sa_list*, %struct.sa_list*, i8*, %struct.esp_algorithm*, i8*, i32, i8*, i32, i32, i8*, i8*, i32, void (%struct.netdissect_options*, i8*, i32)*, void (%struct.netdissect_options*, i32)*, i32 (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)*, void (%struct.netdissect_options*, i8*, ...)* }
%struct.sa_list = type opaque
%struct.esp_algorithm = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.tok = type { i32, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32, i32 }

@ts_format.buf = internal global [16 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [20 x i8] c"%02d:%02d:%02d.%06u\00", align 1
@ts_print.b_sec = internal unnamed_addr global i32 0, align 4
@ts_print.b_usec = internal unnamed_addr global i32 0, align 4
@gndo = external global %struct.netdissect_options*
@thiszone = external global i32
@.str1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"%u.%06u \00", align 1
@0 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@1 = internal unnamed_addr constant [9 x i8] c"__time_t\00"
@2 = internal unnamed_addr constant [14 x i8] c"__suseconds_t\00"
@.str3 = private unnamed_addr constant [12 x i8] c"Date fail  \00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"%04d-%02d-%02d %s \00", align 1
@relts_print.lengths = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0)], align 4
@.str5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@relts_print.seconds = internal unnamed_addr constant [6 x i32] [i32 31536000, i32 604800, i32 86400, i32 3600, i32 60, i32 1], align 4
@.str11 = private unnamed_addr constant [3 x i8] c"0s\00", align 1
@3 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str13 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@4 = internal unnamed_addr constant [2 x i8] c"/\00"
@5 = internal unnamed_addr constant [2 x i8] c"*\00"
@6 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str14 = private unnamed_addr constant [66 x i8] c"%sDissector error: print_unknown_data called with negative length\00", align 1
@.str15 = private unnamed_addr constant [77 x i8] c"%sDissector error: print_unknown_data called with pointer past end of packet\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@tok2str.buf = internal global [4 x [128 x i8]] zeroinitializer, align 1
@tok2str.idx = internal unnamed_addr global i32 0, align 4
@tok2strary_internal.buf = internal global [128 x i8] zeroinitializer, align 1
@mask2plen.bitmasks = private unnamed_addr constant [33 x i32] [i32 0, i32 -2147483648, i32 -1073741824, i32 -536870912, i32 -268435456, i32 -134217728, i32 -67108864, i32 -33554432, i32 -16777216, i32 -8388608, i32 -4194304, i32 -2097152, i32 -1048576, i32 -524288, i32 -262144, i32 -131072, i32 -65536, i32 -32768, i32 -16384, i32 -8192, i32 -4096, i32 -2048, i32 -1024, i32 -512, i32 -256, i32 -128, i32 -64, i32 -32, i32 -16, i32 -8, i32 -4, i32 -2, i32 -1], align 4
@7 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@stderr = external global %struct._IO_FILE*
@.str17 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = external global i8*
@.str18 = private unnamed_addr constant [14 x i8] c"%s: WARNING: \00", align 1
@.str19 = private unnamed_addr constant [18 x i8] c"copy_argv: malloc\00", align 1
@.str20 = private unnamed_addr constant [18 x i8] c"can't open %s: %s\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"can't stat %s: %s\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"malloc(%d) for %s: %s\00", align 1
@8 = internal unnamed_addr constant [2 x i8] c"+\00"
@9 = internal unnamed_addr constant [8 x i8] c"__off_t\00"
@10 = internal unnamed_addr constant [5 x i8] c"long\00"
@11 = internal unnamed_addr constant [6 x i8] c"u_int\00"
@.str23 = private unnamed_addr constant [12 x i8] c"read %s: %s\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"short read %s (%d != %d)\00", align 1
@12 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str26 = private unnamed_addr constant [8 x i8] c"\5C0x%02x\00", align 1
@bittok2str_internal.buf = internal global [256 x i8] zeroinitializer, align 1
@13 = internal unnamed_addr constant [4 x i8] c"int\00"
@14 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str27 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@15 = internal unnamed_addr constant [3 x i8] c"+=\00"
@16 = internal unnamed_addr constant [3 x i8] c"<<\00"
@17 = internal unnamed_addr constant [2 x i8] c"-\00"
@18 = internal unnamed_addr constant [14 x i8] c"../src/util.c\00"
@stdout = external global %struct._IO_FILE*

define i32 @fn_print(i8* %s, i8* %ep) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !17), !dbg !327
  tail call void @llvm.dbg.value(metadata !{i8* %ep}, i64 0, metadata !18), !dbg !327
  tail call void @llvm.dbg.value(metadata !328, i64 0, metadata !19), !dbg !329
  %cmp = icmp eq i8* %ep, null, !dbg !330
  %cmp144 = icmp ult i8* %s, %ep, !dbg !330
  %or.cond45 = or i1 %cmp, %cmp144, !dbg !330
  br i1 %or.cond45, label %while.body, label %while.end, !dbg !330

while.body:                                       ; preds = %entry, %if.end31
  %s.addr.046 = phi i8* [ %incdec.ptr, %if.end31 ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s.addr.046, i32 1, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !17), !dbg !331
  %0 = load i8* %s.addr.046, align 1, !dbg !331, !tbaa !333
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !21), !dbg !331
  %cmp2 = icmp eq i8 %0, 0, !dbg !335
  br i1 %cmp2, label %while.end, label %if.end, !dbg !335

if.end:                                           ; preds = %while.body
  %cmp5 = icmp sgt i8 %0, -1, !dbg !336
  br i1 %cmp5, label %if.end12, label %cont, !dbg !336

cont:                                             ; preds = %if.end
  %and9 = and i8 %0, 127, !dbg !337
  tail call void @llvm.dbg.value(metadata !{i8 %and9}, i64 0, metadata !21), !dbg !337
  tail call void @llvm.dbg.value(metadata !339, i64 0, metadata !340) nounwind, !dbg !342
  %1 = load %struct._IO_FILE** @stdout, align 4, !dbg !343, !tbaa !345
  %call.i = tail call i32 @_IO_putc(i32 77, %struct._IO_FILE* %1) nounwind, !dbg !343
  tail call void @llvm.dbg.value(metadata !346, i64 0, metadata !347) nounwind, !dbg !349
  %2 = load %struct._IO_FILE** @stdout, align 4, !dbg !350, !tbaa !345
  %call.i41 = tail call i32 @_IO_putc(i32 45, %struct._IO_FILE* %2) nounwind, !dbg !350
  br label %if.end12, !dbg !351

if.end12:                                         ; preds = %cont, %if.end
  %c.0 = phi i8 [ %0, %if.end ], [ %and9, %cont ]
  %conv13 = zext i8 %c.0 to i32, !dbg !352
  %call14 = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !352
  %3 = load i16** %call14, align 4, !dbg !352, !tbaa !345
  %arrayidx = getelementptr inbounds i16* %3, i32 %conv13, !dbg !352
  %4 = load i16* %arrayidx, align 2, !dbg !352, !tbaa !353
  %and26 = and i16 %4, 16384, !dbg !352
  %tobool = icmp eq i16 %and26, 0, !dbg !352
  br i1 %tobool, label %if.then27, label %if.end31, !dbg !352

if.then27:                                        ; preds = %if.end12
  %xor = xor i8 %c.0, 64, !dbg !354
  tail call void @llvm.dbg.value(metadata !{i8 %xor}, i64 0, metadata !21), !dbg !354
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !357) nounwind, !dbg !359
  %5 = load %struct._IO_FILE** @stdout, align 4, !dbg !360, !tbaa !345
  %call.i42 = tail call i32 @_IO_putc(i32 94, %struct._IO_FILE* %5) nounwind, !dbg !360
  br label %if.end31, !dbg !361

if.end31:                                         ; preds = %if.end12, %if.then27
  %c.1 = phi i8 [ %c.0, %if.end12 ], [ %xor, %if.then27 ]
  %conv32 = zext i8 %c.1 to i32, !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %conv32}, i64 0, metadata !363) nounwind, !dbg !364
  %6 = load %struct._IO_FILE** @stdout, align 4, !dbg !365, !tbaa !345
  %call.i43 = tail call i32 @_IO_putc(i32 %conv32, %struct._IO_FILE* %6) nounwind, !dbg !365
  %cmp1 = icmp ult i8* %incdec.ptr, %ep, !dbg !330
  %or.cond = or i1 %cmp, %cmp1, !dbg !330
  br i1 %or.cond, label %while.body, label %while.end, !dbg !330

while.end:                                        ; preds = %if.end31, %while.body, %entry
  %ret.0 = phi i32 [ 1, %entry ], [ 0, %while.body ], [ 1, %if.end31 ]
  ret i32 %ret.0, !dbg !366
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define available_externally i32 @putchar(i32 %__c) nounwind inlinehint {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %__c}, i64 0, metadata !299), !dbg !367
  %0 = load %struct._IO_FILE** @stdout, align 4, !dbg !368, !tbaa !345
  %call = tail call i32 @_IO_putc(i32 %__c, %struct._IO_FILE* %0) nounwind, !dbg !368
  ret i32 %call, !dbg !368
}

declare i16** @__ctype_b_loc() nounwind readnone

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @fn_printn(i8* %s, i32 %n, i8* %ep) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !30), !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !31), !dbg !369
  tail call void @llvm.dbg.value(metadata !{i8* %ep}, i64 0, metadata !32), !dbg !369
  %cmp48 = icmp eq i32 %n, 0, !dbg !370
  br i1 %cmp48, label %cont35, label %land.rhs.lr.ph, !dbg !370

land.rhs.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i8* %ep, null, !dbg !370
  br label %land.rhs, !dbg !370

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end31
  %s.addr.050 = phi i8* [ %s, %land.rhs.lr.ph ], [ %incdec.ptr, %if.end31 ]
  %n.addr.049 = phi i32 [ %n, %land.rhs.lr.ph ], [ %1, %if.end31 ]
  %cmp2 = icmp ult i8* %s.addr.050, %ep, !dbg !370
  %.cmp2 = or i1 %cmp1, %cmp2, !dbg !370
  br i1 %.cmp2, label %while.body, label %cont35

while.body:                                       ; preds = %land.rhs
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.049, i32 1), !dbg !371
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !371
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !371
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !371

ioc_bb3:                                          ; preds = %while.body
  %3 = zext i32 %n.addr.049 to i64, !dbg !371
  tail call void @__ioc_report_sub_overflow(i32 82, i32 6, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !371
  br label %cont4, !dbg !371

cont4:                                            ; preds = %while.body, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !371
  %incdec.ptr = getelementptr inbounds i8* %s.addr.050, i32 1, !dbg !373
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !30), !dbg !373
  %4 = load i8* %s.addr.050, align 1, !dbg !373, !tbaa !333
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !33), !dbg !373
  %cmp5 = icmp sgt i8 %4, -1, !dbg !374
  br i1 %cmp5, label %if.end, label %cont10, !dbg !374

cont10:                                           ; preds = %cont4
  %and8 = and i8 %4, 127, !dbg !375
  tail call void @llvm.dbg.value(metadata !{i8 %and8}, i64 0, metadata !33), !dbg !375
  tail call void @llvm.dbg.value(metadata !339, i64 0, metadata !377) nounwind, !dbg !379
  %5 = load %struct._IO_FILE** @stdout, align 4, !dbg !380, !tbaa !345
  %call.i = tail call i32 @_IO_putc(i32 77, %struct._IO_FILE* %5) nounwind, !dbg !380
  tail call void @llvm.dbg.value(metadata !346, i64 0, metadata !381) nounwind, !dbg !383
  %6 = load %struct._IO_FILE** @stdout, align 4, !dbg !384, !tbaa !345
  %call.i45 = tail call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6) nounwind, !dbg !384
  br label %if.end, !dbg !385

if.end:                                           ; preds = %cont10, %cont4
  %c.0 = phi i8 [ %4, %cont4 ], [ %and8, %cont10 ]
  %conv13 = zext i8 %c.0 to i32, !dbg !386
  %call14 = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !386
  %7 = load i16** %call14, align 4, !dbg !386, !tbaa !345
  %arrayidx = getelementptr inbounds i16* %7, i32 %conv13, !dbg !386
  %8 = load i16* %arrayidx, align 2, !dbg !386, !tbaa !353
  %and26 = and i16 %8, 16384, !dbg !386
  %tobool = icmp eq i16 %and26, 0, !dbg !386
  br i1 %tobool, label %if.then27, label %if.end31, !dbg !386

if.then27:                                        ; preds = %if.end
  %xor = xor i8 %c.0, 64, !dbg !387
  tail call void @llvm.dbg.value(metadata !{i8 %xor}, i64 0, metadata !33), !dbg !387
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !389) nounwind, !dbg !391
  %9 = load %struct._IO_FILE** @stdout, align 4, !dbg !392, !tbaa !345
  %call.i46 = tail call i32 @_IO_putc(i32 94, %struct._IO_FILE* %9) nounwind, !dbg !392
  br label %if.end31, !dbg !393

if.end31:                                         ; preds = %if.end, %if.then27
  %c.1 = phi i8 [ %c.0, %if.end ], [ %xor, %if.then27 ]
  %conv32 = zext i8 %c.1 to i32, !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32 %conv32}, i64 0, metadata !395) nounwind, !dbg !396
  %10 = load %struct._IO_FILE** @stdout, align 4, !dbg !397, !tbaa !345
  %call.i47 = tail call i32 @_IO_putc(i32 %conv32, %struct._IO_FILE* %10) nounwind, !dbg !397
  %cmp = icmp eq i32 %1, 0, !dbg !370
  br i1 %cmp, label %cont35, label %land.rhs, !dbg !370

cont35:                                           ; preds = %if.end31, %land.rhs, %entry
  %n.addr.0.lcssa = phi i32 [ 0, %entry ], [ %n.addr.049, %land.rhs ], [ 0, %if.end31 ]
  %not.cmp36 = icmp ne i32 %n.addr.0.lcssa, 0, !dbg !398
  %cond = zext i1 %not.cmp36 to i32, !dbg !398
  ret i32 %cond, !dbg !398
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @fn_printzp(i8* %s, i32 %n, i8* %ep) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !38), !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !39), !dbg !399
  tail call void @llvm.dbg.value(metadata !{i8* %ep}, i64 0, metadata !40), !dbg !399
  tail call void @llvm.dbg.value(metadata !328, i64 0, metadata !41), !dbg !400
  %cmp55 = icmp eq i32 %n, 0, !dbg !401
  br i1 %cmp55, label %cont40, label %land.rhs.lr.ph, !dbg !401

land.rhs.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i8* %ep, null, !dbg !401
  br label %land.rhs, !dbg !401

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end36
  %s.addr.057 = phi i8* [ %s, %land.rhs.lr.ph ], [ %incdec.ptr, %if.end36 ]
  %n.addr.056 = phi i32 [ %n, %land.rhs.lr.ph ], [ %1, %if.end36 ]
  %cmp2 = icmp ult i8* %s.addr.057, %ep, !dbg !401
  %or.cond = or i1 %cmp1, %cmp2, !dbg !401
  br i1 %or.cond, label %while.body, label %cont40, !dbg !401

while.body:                                       ; preds = %land.rhs
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.056, i32 1), !dbg !402
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !402
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !402
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !402

ioc_bb3:                                          ; preds = %while.body
  %3 = zext i32 %n.addr.056 to i64, !dbg !402
  tail call void @__ioc_report_sub_overflow(i32 111, i32 6, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !402
  br label %cont4, !dbg !402

cont4:                                            ; preds = %while.body, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !39), !dbg !402
  %incdec.ptr = getelementptr inbounds i8* %s.addr.057, i32 1, !dbg !404
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !38), !dbg !404
  %4 = load i8* %s.addr.057, align 1, !dbg !404, !tbaa !333
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !43), !dbg !404
  %cmp5 = icmp eq i8 %4, 0, !dbg !405
  br i1 %cmp5, label %cont40, label %if.end, !dbg !405

if.end:                                           ; preds = %cont4
  %cmp8 = icmp sgt i8 %4, -1, !dbg !406
  br i1 %cmp8, label %if.end17, label %cont14, !dbg !406

cont14:                                           ; preds = %if.end
  %and12 = and i8 %4, 127, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i8 %and12}, i64 0, metadata !43), !dbg !407
  tail call void @llvm.dbg.value(metadata !339, i64 0, metadata !409) nounwind, !dbg !411
  %5 = load %struct._IO_FILE** @stdout, align 4, !dbg !412, !tbaa !345
  %call.i = tail call i32 @_IO_putc(i32 77, %struct._IO_FILE* %5) nounwind, !dbg !412
  tail call void @llvm.dbg.value(metadata !346, i64 0, metadata !413) nounwind, !dbg !415
  %6 = load %struct._IO_FILE** @stdout, align 4, !dbg !416, !tbaa !345
  %call.i52 = tail call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6) nounwind, !dbg !416
  br label %if.end17, !dbg !417

if.end17:                                         ; preds = %cont14, %if.end
  %c.0 = phi i8 [ %4, %if.end ], [ %and12, %cont14 ]
  %conv18 = zext i8 %c.0 to i32, !dbg !418
  %call19 = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !418
  %7 = load i16** %call19, align 4, !dbg !418, !tbaa !345
  %arrayidx = getelementptr inbounds i16* %7, i32 %conv18, !dbg !418
  %8 = load i16* %arrayidx, align 2, !dbg !418, !tbaa !353
  %and31 = and i16 %8, 16384, !dbg !418
  %tobool = icmp eq i16 %and31, 0, !dbg !418
  br i1 %tobool, label %if.then32, label %if.end36, !dbg !418

if.then32:                                        ; preds = %if.end17
  %xor = xor i8 %c.0, 64, !dbg !419
  tail call void @llvm.dbg.value(metadata !{i8 %xor}, i64 0, metadata !43), !dbg !419
  tail call void @llvm.dbg.value(metadata !356, i64 0, metadata !421) nounwind, !dbg !423
  %9 = load %struct._IO_FILE** @stdout, align 4, !dbg !424, !tbaa !345
  %call.i53 = tail call i32 @_IO_putc(i32 94, %struct._IO_FILE* %9) nounwind, !dbg !424
  br label %if.end36, !dbg !425

if.end36:                                         ; preds = %if.end17, %if.then32
  %c.1 = phi i8 [ %c.0, %if.end17 ], [ %xor, %if.then32 ]
  %conv37 = zext i8 %c.1 to i32, !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %conv37}, i64 0, metadata !427) nounwind, !dbg !428
  %10 = load %struct._IO_FILE** @stdout, align 4, !dbg !429, !tbaa !345
  %call.i54 = tail call i32 @_IO_putc(i32 %conv37, %struct._IO_FILE* %10) nounwind, !dbg !429
  %cmp = icmp eq i32 %1, 0, !dbg !401
  br i1 %cmp, label %cont40, label %land.rhs, !dbg !401

cont40:                                           ; preds = %if.end36, %land.rhs, %cont4, %entry
  %n.addr.1 = phi i32 [ 0, %entry ], [ %n.addr.056, %land.rhs ], [ %1, %cont4 ], [ 0, %if.end36 ]
  %ret.0 = phi i32 [ 1, %entry ], [ 1, %land.rhs ], [ 0, %cont4 ], [ 1, %if.end36 ]
  %cmp41 = icmp eq i32 %n.addr.1, 0, !dbg !430
  %cond = select i1 %cmp41, i32 0, i32 %ret.0, !dbg !430
  ret i32 %cond, !dbg !430
}

define i8* @ts_format(i32 %sec, i32 %usec) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sec}, i64 0, metadata !51), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32 %usec}, i64 0, metadata !52), !dbg !431
  %div = sdiv i32 %sec, 3600, !dbg !432
  %rem = srem i32 %sec, 3600, !dbg !432
  %div9 = sdiv i32 %rem, 60, !dbg !432
  %rem14 = srem i32 %sec, 60, !dbg !432
  %call = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i32 %div, i32 %div9, i32 %rem14, i32 %usec) nounwind, !dbg !432
  ret i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0), !dbg !434
}

declare i32 @snprintf(i8* nocapture, i32, i8* nocapture, ...) nounwind

declare void @__ioc_report_div_error(i32, i32, i8*, i8*, i64, i64, i8)

define void @ts_print(%struct.timeval* nocapture %tvp) nounwind {
entry:
  %Time = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.timeval* %tvp}, i64 0, metadata !68), !dbg !435
  call void @llvm.dbg.declare(metadata !{i32* %Time}, metadata !89), !dbg !436
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !437, !tbaa !345
  %ndo_tflag = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 11, !dbg !437
  %1 = load i32* %ndo_tflag, align 4, !dbg !437, !tbaa !438
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb61
    i32 2, label %sw.bb4
    i32 3, label %cont16
    i32 5, label %cont16
  ], !dbg !437

sw.bb:                                            ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 0, !dbg !439
  %2 = load i32* %tv_sec, align 4, !dbg !439, !tbaa !442
  %3 = load i32* @thiszone, align 4, !dbg !439, !tbaa !438
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %3), !dbg !439
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !439
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !439
  br i1 %6, label %ioc_bb, label %cont2, !dbg !439

ioc_bb:                                           ; preds = %sw.bb
  %7 = sext i32 %3 to i64, !dbg !439
  %8 = sext i32 %2 to i64, !dbg !439
  call void @__ioc_report_add_overflow(i32 158, i32 27, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %8, i64 %7, i8 13) nounwind, !dbg !439
  br label %cont2, !dbg !439

cont2:                                            ; preds = %ioc_bb, %sw.bb
  %rem = srem i32 %5, 86400, !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !69), !dbg !439
  %tv_usec = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 1, !dbg !443
  %9 = load i32* %tv_usec, align 4, !dbg !443, !tbaa !442
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !444) nounwind, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !446) nounwind, !dbg !445
  %div.i = sdiv i32 %rem, 3600, !dbg !447
  %rem.i = srem i32 %rem, 3600, !dbg !447
  %div9.i = sdiv i32 %rem.i, 60, !dbg !447
  %rem14.i = srem i32 %rem, 60, !dbg !447
  %call.i = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i32 %div.i, i32 %div9.i, i32 %rem14.i, i32 %9) nounwind, !dbg !447
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0)) nounwind, !dbg !443
  br label %sw.epilog, !dbg !448

sw.bb4:                                           ; preds = %entry
  %tv_sec5 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 0, !dbg !449
  %10 = load i32* %tv_sec5, align 4, !dbg !449, !tbaa !442
  %11 = icmp sgt i32 %10, -1, !dbg !449
  br i1 %11, label %cont7, label %ioc_bb6, !dbg !449

ioc_bb6:                                          ; preds = %sw.bb4
  %12 = sext i32 %10 to i64, !dbg !449
  call void @__ioc_report_conversion(i32 168, i32 49, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !449
  br label %cont7, !dbg !449

cont7:                                            ; preds = %ioc_bb6, %sw.bb4
  %tv_usec8 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 1, !dbg !449
  %13 = load i32* %tv_usec8, align 4, !dbg !449, !tbaa !442
  %14 = icmp sgt i32 %13, -1, !dbg !449
  br i1 %14, label %cont11, label %ioc_bb10, !dbg !449

ioc_bb10:                                         ; preds = %cont7
  %15 = sext i32 %13 to i64, !dbg !449
  call void @__ioc_report_conversion(i32 168, i32 82, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %15, i8 1) nounwind, !dbg !449
  br label %cont11, !dbg !449

cont11:                                           ; preds = %ioc_bb10, %cont7
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i32 %10, i32 %13) nounwind, !dbg !449
  br label %sw.epilog, !dbg !451

cont16:                                           ; preds = %entry, %entry
  %16 = load i32* @ts_print.b_sec, align 4, !dbg !452, !tbaa !438
  %cmp = icmp eq i32 %16, 0, !dbg !452
  %tv_usec17 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 1, !dbg !454
  br i1 %cmp, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %cont16
  %17 = load i32* %tv_usec17, align 4, !dbg !454, !tbaa !442
  %18 = icmp sgt i32 %17, -1, !dbg !454
  br i1 %18, label %cont20, label %ioc_bb19, !dbg !454

ioc_bb19:                                         ; preds = %if.then
  %19 = sext i32 %17 to i64, !dbg !454
  call void @__ioc_report_conversion(i32 180, i32 18, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %19, i8 1) nounwind, !dbg !454
  br label %cont20, !dbg !454

cont20:                                           ; preds = %ioc_bb19, %if.then
  store i32 %17, i32* @ts_print.b_usec, align 4, !dbg !454, !tbaa !438
  %tv_sec21 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 0, !dbg !456
  %20 = load i32* %tv_sec21, align 4, !dbg !456, !tbaa !442
  %21 = icmp sgt i32 %20, -1, !dbg !456
  br i1 %21, label %cont24, label %ioc_bb23, !dbg !456

ioc_bb23:                                         ; preds = %cont20
  %22 = sext i32 %20 to i64, !dbg !456
  call void @__ioc_report_conversion(i32 181, i32 17, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %22, i8 1) nounwind, !dbg !456
  br label %cont24, !dbg !456

cont24:                                           ; preds = %ioc_bb23, %cont20
  store i32 %20, i32* @ts_print.b_sec, align 4, !dbg !456, !tbaa !438
  br label %if.end, !dbg !457

if.end:                                           ; preds = %cont16, %cont24
  %23 = load i32* %tv_usec17, align 4, !dbg !458, !tbaa !442
  %24 = icmp sgt i32 %23, -1, !dbg !458
  br i1 %24, label %cont28, label %ioc_bb27, !dbg !458

ioc_bb27:                                         ; preds = %if.end
  %25 = sext i32 %23 to i64, !dbg !458
  call void @__ioc_report_conversion(i32 183, i32 17, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i64 %25, i8 1) nounwind, !dbg !458
  br label %cont28, !dbg !458

cont28:                                           ; preds = %if.end, %ioc_bb27
  %26 = load i32* @ts_print.b_usec, align 4, !dbg !458, !tbaa !438
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %23, i32 %26), !dbg !458
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !458
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !458
  br i1 %29, label %ioc_bb29, label %cont30, !dbg !458

ioc_bb29:                                         ; preds = %cont28
  %30 = zext i32 %26 to i64, !dbg !458
  %31 = zext i32 %23 to i64, !dbg !458
  call void @__ioc_report_sub_overflow(i32 183, i32 34, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %31, i64 %30, i8 5) nounwind, !dbg !458
  br label %cont30, !dbg !458

cont30:                                           ; preds = %cont28, %ioc_bb29
  %32 = icmp sgt i32 %28, -1, !dbg !458
  br i1 %32, label %cont32, label %ioc_bb31, !dbg !458

ioc_bb31:                                         ; preds = %cont30
  %33 = zext i32 %28 to i64, !dbg !458
  call void @__ioc_report_conversion(i32 183, i32 16, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %33, i8 0) nounwind, !dbg !458
  br label %cont32, !dbg !458

cont32:                                           ; preds = %cont30, %ioc_bb31
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !91), !dbg !458
  %tv_sec33 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 0, !dbg !459
  %34 = load i32* %tv_sec33, align 4, !dbg !459, !tbaa !442
  %35 = icmp sgt i32 %34, -1, !dbg !459
  br i1 %35, label %cont36, label %ioc_bb35, !dbg !459

ioc_bb35:                                         ; preds = %cont32
  %36 = sext i32 %34 to i64, !dbg !459
  call void @__ioc_report_conversion(i32 184, i32 16, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i64 %36, i8 1) nounwind, !dbg !459
  br label %cont36, !dbg !459

cont36:                                           ; preds = %cont32, %ioc_bb35
  %37 = load i32* @ts_print.b_sec, align 4, !dbg !459, !tbaa !438
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %34, i32 %37), !dbg !459
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !459
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !459
  br i1 %40, label %ioc_bb37, label %cont38, !dbg !459

ioc_bb37:                                         ; preds = %cont36
  %41 = zext i32 %37 to i64, !dbg !459
  %42 = zext i32 %34 to i64, !dbg !459
  call void @__ioc_report_sub_overflow(i32 184, i32 32, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %42, i64 %41, i8 5) nounwind, !dbg !459
  br label %cont38, !dbg !459

cont38:                                           ; preds = %cont36, %ioc_bb37
  %43 = icmp sgt i32 %39, -1, !dbg !459
  br i1 %43, label %while.cond.preheader, label %ioc_bb40, !dbg !459

ioc_bb40:                                         ; preds = %cont38
  %44 = zext i32 %39 to i64, !dbg !459
  call void @__ioc_report_conversion(i32 184, i32 15, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i64 %44, i8 0) nounwind, !dbg !459
  br label %while.cond.preheader, !dbg !459

while.cond.preheader:                             ; preds = %ioc_bb40, %cont38
  %cmp42116 = icmp slt i32 %28, 0, !dbg !460
  br i1 %cmp42116, label %while.body, label %while.end, !dbg !460

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %d_sec.0118 = phi i32 [ %50, %while.cond.backedge ], [ %39, %while.cond.preheader ]
  %d_usec.0117 = phi i32 [ %46, %while.cond.backedge ], [ %28, %while.cond.preheader ]
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %d_usec.0117, i32 1000000), !dbg !461
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !461
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !461
  br i1 %47, label %ioc_bb43, label %cont44, !dbg !461

ioc_bb43:                                         ; preds = %while.body
  %48 = sext i32 %d_usec.0117 to i64, !dbg !461
  call void @__ioc_report_add_overflow(i32 186, i32 16, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %48, i64 1000000, i8 13) nounwind, !dbg !461
  br label %cont44, !dbg !461

cont44:                                           ; preds = %while.body, %ioc_bb43
  call void @llvm.dbg.value(metadata !{i32 %46}, i64 0, metadata !91), !dbg !461
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %d_sec.0118, i32 -1), !dbg !463
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !463
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !463
  br i1 %51, label %ioc_bb45, label %while.cond.backedge, !dbg !463

while.cond.backedge:                              ; preds = %cont44, %ioc_bb45
  %cmp42 = icmp slt i32 %46, 0, !dbg !460
  br i1 %cmp42, label %while.body, label %while.end, !dbg !460

ioc_bb45:                                         ; preds = %cont44
  %52 = sext i32 %d_sec.0118 to i64, !dbg !463
  call void @__ioc_report_add_overflow(i32 187, i32 14, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %52, i64 -1, i8 13) nounwind, !dbg !463
  br label %while.cond.backedge, !dbg !463

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %d_sec.0.lcssa = phi i32 [ %39, %while.cond.preheader ], [ %50, %while.cond.backedge ]
  %d_usec.0.lcssa = phi i32 [ %28, %while.cond.preheader ], [ %46, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32 %d_sec.0.lcssa}, i64 0, metadata !464) nounwind, !dbg !466
  call void @llvm.dbg.value(metadata !{i32 %d_usec.0.lcssa}, i64 0, metadata !467) nounwind, !dbg !466
  %div.i106 = sdiv i32 %d_sec.0.lcssa, 3600, !dbg !468
  %rem.i107 = srem i32 %d_sec.0.lcssa, 3600, !dbg !468
  %div9.i108 = sdiv i32 %rem.i107, 60, !dbg !468
  %rem14.i109 = srem i32 %d_sec.0.lcssa, 60, !dbg !468
  %call.i110 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i32 %div.i106, i32 %div9.i108, i32 %rem14.i109, i32 %d_usec.0.lcssa) nounwind, !dbg !468
  %call48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0)) nounwind, !dbg !465
  %53 = load %struct.netdissect_options** @gndo, align 4, !dbg !469, !tbaa !345
  %ndo_tflag49 = getelementptr inbounds %struct.netdissect_options* %53, i32 0, i32 11, !dbg !469
  %54 = load i32* %ndo_tflag49, align 4, !dbg !469, !tbaa !438
  %cmp50 = icmp eq i32 %54, 3, !dbg !469
  br i1 %cmp50, label %if.then51, label %sw.epilog, !dbg !469

if.then51:                                        ; preds = %while.end
  %55 = load i32* %tv_sec33, align 4, !dbg !470, !tbaa !442
  %56 = icmp sgt i32 %55, -1, !dbg !470
  br i1 %56, label %cont55, label %ioc_bb54, !dbg !470

ioc_bb54:                                         ; preds = %if.then51
  %57 = sext i32 %55 to i64, !dbg !470
  call void @__ioc_report_conversion(i32 192, i32 17, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %57, i8 1) nounwind, !dbg !470
  br label %cont55, !dbg !470

cont55:                                           ; preds = %ioc_bb54, %if.then51
  store i32 %55, i32* @ts_print.b_sec, align 4, !dbg !470, !tbaa !438
  %58 = load i32* %tv_usec17, align 4, !dbg !472, !tbaa !442
  %59 = icmp sgt i32 %58, -1, !dbg !472
  br i1 %59, label %cont59, label %ioc_bb58, !dbg !472

ioc_bb58:                                         ; preds = %cont55
  %60 = sext i32 %58 to i64, !dbg !472
  call void @__ioc_report_conversion(i32 193, i32 18, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %60, i8 1) nounwind, !dbg !472
  br label %cont59, !dbg !472

cont59:                                           ; preds = %ioc_bb58, %cont55
  store i32 %58, i32* @ts_print.b_usec, align 4, !dbg !472, !tbaa !438
  br label %sw.epilog, !dbg !473

sw.bb61:                                          ; preds = %entry
  %tv_sec62 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 0, !dbg !474
  %61 = load i32* %tv_sec62, align 4, !dbg !474, !tbaa !442
  %62 = load i32* @thiszone, align 4, !dbg !474, !tbaa !438
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %61, i32 %62), !dbg !474
  %64 = extractvalue { i32, i1 } %63, 0, !dbg !474
  %65 = extractvalue { i32, i1 } %63, 1, !dbg !474
  br i1 %65, label %ioc_bb63, label %cont68, !dbg !474

ioc_bb63:                                         ; preds = %sw.bb61
  %66 = sext i32 %62 to i64, !dbg !474
  %67 = sext i32 %61 to i64, !dbg !474
  call void @__ioc_report_add_overflow(i32 200, i32 27, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %67, i64 %66, i8 13) nounwind, !dbg !474
  %.pre = load i32* %tv_sec62, align 4, !dbg !476, !tbaa !442
  %.pre121 = load i32* @thiszone, align 4, !dbg !476, !tbaa !438
  br label %cont68, !dbg !474

cont68:                                           ; preds = %ioc_bb63, %sw.bb61
  %68 = phi i32 [ %.pre121, %ioc_bb63 ], [ %62, %sw.bb61 ]
  %69 = phi i32 [ %.pre, %ioc_bb63 ], [ %61, %sw.bb61 ]
  %rem69 = srem i32 %64, 86400, !dbg !474
  call void @llvm.dbg.value(metadata !{i32 %rem69}, i64 0, metadata !69), !dbg !474
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %69, i32 %68), !dbg !476
  %71 = extractvalue { i32, i1 } %70, 0, !dbg !476
  %72 = extractvalue { i32, i1 } %70, 1, !dbg !476
  br i1 %72, label %ioc_bb71, label %cont72, !dbg !476

ioc_bb71:                                         ; preds = %cont68
  %73 = sext i32 %68 to i64, !dbg !476
  %74 = sext i32 %69 to i64, !dbg !476
  call void @__ioc_report_add_overflow(i32 201, i32 28, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %74, i64 %73, i8 13) nounwind, !dbg !476
  br label %cont72, !dbg !476

cont72:                                           ; preds = %cont68, %ioc_bb71
  %75 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %71, i32 %rem69), !dbg !476
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !476
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !476
  br i1 %77, label %ioc_bb73, label %cont74, !dbg !476

ioc_bb73:                                         ; preds = %cont72
  %78 = sext i32 %rem69 to i64, !dbg !476
  %79 = sext i32 %71 to i64, !dbg !476
  call void @__ioc_report_sub_overflow(i32 201, i32 39, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %79, i64 %78, i8 13) nounwind, !dbg !476
  br label %cont74, !dbg !476

cont74:                                           ; preds = %cont72, %ioc_bb73
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !89), !dbg !476
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !89), !dbg !476
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !89), !dbg !476
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !89), !dbg !476
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !89), !dbg !476
  store i32 %76, i32* %Time, align 4, !dbg !476, !tbaa !442
  %call75 = call %struct.tm* @gmtime(i32* %Time) nounwind, !dbg !477
  call void @llvm.dbg.value(metadata !{%struct.tm* %call75}, i64 0, metadata !71), !dbg !477
  %tobool = icmp eq %struct.tm* %call75, null, !dbg !478
  br i1 %tobool, label %if.then76, label %if.else, !dbg !478

if.then76:                                        ; preds = %cont74
  %call77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !479
  br label %sw.epilog, !dbg !479

if.else:                                          ; preds = %cont74
  %tm_year = getelementptr inbounds %struct.tm* %call75, i32 0, i32 5, !dbg !480
  %80 = load i32* %tm_year, align 4, !dbg !480, !tbaa !438
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %80, i32 1900), !dbg !480
  %82 = extractvalue { i32, i1 } %81, 0, !dbg !480
  %83 = extractvalue { i32, i1 } %81, 1, !dbg !480
  br i1 %83, label %ioc_bb78, label %cont79, !dbg !480

ioc_bb78:                                         ; preds = %if.else
  %84 = sext i32 %80 to i64, !dbg !480
  call void @__ioc_report_add_overflow(i32 206, i32 51, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %84, i64 1900, i8 13) nounwind, !dbg !480
  br label %cont79, !dbg !480

cont79:                                           ; preds = %if.else, %ioc_bb78
  %tm_mon = getelementptr inbounds %struct.tm* %call75, i32 0, i32 4, !dbg !480
  %85 = load i32* %tm_mon, align 4, !dbg !480, !tbaa !438
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %85, i32 1), !dbg !480
  %87 = extractvalue { i32, i1 } %86, 0, !dbg !480
  %88 = extractvalue { i32, i1 } %86, 1, !dbg !480
  br i1 %88, label %ioc_bb80, label %cont81, !dbg !480

ioc_bb80:                                         ; preds = %cont79
  %89 = sext i32 %85 to i64, !dbg !480
  call void @__ioc_report_add_overflow(i32 206, i32 71, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %89, i64 1, i8 13) nounwind, !dbg !480
  br label %cont81, !dbg !480

cont81:                                           ; preds = %cont79, %ioc_bb80
  %tm_mday = getelementptr inbounds %struct.tm* %call75, i32 0, i32 3, !dbg !480
  %90 = load i32* %tm_mday, align 4, !dbg !480, !tbaa !438
  %tv_usec82 = getelementptr inbounds %struct.timeval* %tvp, i32 0, i32 1, !dbg !480
  %91 = load i32* %tv_usec82, align 4, !dbg !480, !tbaa !442
  call void @llvm.dbg.value(metadata !{i32 %rem69}, i64 0, metadata !481) nounwind, !dbg !482
  call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !483) nounwind, !dbg !482
  %div.i111 = sdiv i32 %rem69, 3600, !dbg !484
  %rem.i112 = srem i32 %rem69, 3600, !dbg !484
  %div9.i113 = sdiv i32 %rem.i112, 60, !dbg !484
  %rem14.i114 = srem i32 %rem69, 60, !dbg !484
  %call.i115 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i32 %div.i111, i32 %div9.i113, i32 %rem14.i114, i32 %91) nounwind, !dbg !484
  %call84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0), i32 %82, i32 %87, i32 %90, i8* getelementptr inbounds ([16 x i8]* @ts_format.buf, i32 0, i32 0)) nounwind, !dbg !480
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then76, %cont81, %while.end, %cont59, %entry, %cont11, %cont2
  ret void, !dbg !485
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @printf(i8* nocapture, ...) nounwind

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare %struct.tm* @gmtime(i32*) nounwind

define void @relts_print(i32 %secs) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %secs}, i64 0, metadata !98), !dbg !486
  tail call void @llvm.dbg.value(metadata !487, i64 0, metadata !99), !dbg !488
  tail call void @llvm.dbg.value(metadata !489, i64 0, metadata !102), !dbg !490
  %cmp = icmp eq i32 %secs, 0, !dbg !491
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !492
  br label %while.end, !dbg !494

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %secs, 0, !dbg !495
  br i1 %cmp1, label %if.then2, label %while.body, !dbg !495

if.then2:                                         ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 45), !dbg !496
  %0 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %secs), !dbg !498
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !498
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !498
  br i1 %2, label %ioc_bb, label %while.cond.preheader, !dbg !498

ioc_bb:                                           ; preds = %if.then2
  %3 = sext i32 %secs to i64, !dbg !498
  tail call void @__ioc_report_sub_overflow(i32 229, i32 12, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i64 0, i64 %3, i8 13) nounwind, !dbg !498
  br label %while.cond.preheader, !dbg !498

while.cond.preheader:                             ; preds = %if.then2, %ioc_bb
  %cmp534 = icmp sgt i32 %1, 0, !dbg !499
  br i1 %cmp534, label %while.body, label %while.end, !dbg !499

while.body:                                       ; preds = %if.end, %while.cond.preheader, %if.end20
  %s.037 = phi i32* [ %incdec.ptr, %if.end20 ], [ getelementptr inbounds ([6 x i32]* @relts_print.seconds, i32 0, i32 0), %while.cond.preheader ], [ getelementptr inbounds ([6 x i32]* @relts_print.seconds, i32 0, i32 0), %if.end ]
  %l.036 = phi i8** [ %incdec.ptr21, %if.end20 ], [ getelementptr inbounds ([6 x i8*]* @relts_print.lengths, i32 0, i32 0), %while.cond.preheader ], [ getelementptr inbounds ([6 x i8*]* @relts_print.lengths, i32 0, i32 0), %if.end ]
  %secs.addr.035 = phi i32 [ %secs.addr.1, %if.end20 ], [ %1, %while.cond.preheader ], [ %secs, %if.end ]
  %4 = load i32* %s.037, align 4, !dbg !500, !tbaa !438
  %cmp6 = icmp slt i32 %secs.addr.035, %4, !dbg !500
  br i1 %cmp6, label %if.end20, label %if.then7, !dbg !500

if.then7:                                         ; preds = %while.body
  %5 = icmp ne i32 %4, 0, !dbg !502
  %6 = icmp ne i32 %secs.addr.035, -2147483648, !dbg !502
  %7 = icmp ne i32 %4, -1, !dbg !502
  %or = or i1 %6, %7, !dbg !502
  %and = and i1 %5, %or, !dbg !502
  %8 = sext i32 %secs.addr.035 to i64, !dbg !502
  br i1 %and, label %cont9, label %ioc_bb8, !dbg !502

ioc_bb8:                                          ; preds = %if.then7
  %9 = sext i32 %4 to i64, !dbg !502
  tail call void @__ioc_report_div_error(i32 233, i32 34, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %8, i64 %9, i8 13) nounwind, !dbg !502
  br label %cont9, !dbg !502

cont9:                                            ; preds = %ioc_bb8, %if.then7
  %div = sdiv i32 %secs.addr.035, %4, !dbg !502
  %10 = load i8** %l.036, align 4, !dbg !502, !tbaa !345
  %call10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), i32 %div, i8* %10) nounwind, !dbg !502
  %11 = load i32* %s.037, align 4, !dbg !504, !tbaa !438
  %12 = icmp ne i32 %11, 0, !dbg !504
  %13 = icmp ne i32 %11, -1, !dbg !504
  %or11 = or i1 %6, %13, !dbg !504
  %and12 = and i1 %12, %or11, !dbg !504
  br i1 %and12, label %cont14, label %ioc_bb13, !dbg !504

ioc_bb13:                                         ; preds = %cont9
  %14 = sext i32 %11 to i64, !dbg !504
  tail call void @__ioc_report_div_error(i32 234, i32 20, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %8, i64 %14, i8 13) nounwind, !dbg !504
  %.pre = load i32* %s.037, align 4, !dbg !504, !tbaa !438
  br label %cont14, !dbg !504

cont14:                                           ; preds = %ioc_bb13, %cont9
  %15 = phi i32 [ %.pre, %ioc_bb13 ], [ %11, %cont9 ]
  %div15 = sdiv i32 %secs.addr.035, %11, !dbg !504
  %16 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %div15, i32 %15), !dbg !504
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !504
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !504
  br i1 %18, label %ioc_bb16, label %cont17, !dbg !504

ioc_bb16:                                         ; preds = %cont14
  %19 = sext i32 %15 to i64, !dbg !504
  %20 = sext i32 %div15 to i64, !dbg !504
  tail call void @__ioc_report_mul_overflow(i32 234, i32 26, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %20, i64 %19, i8 13) nounwind, !dbg !504
  br label %cont17, !dbg !504

cont17:                                           ; preds = %cont14, %ioc_bb16
  %21 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %secs.addr.035, i32 %17), !dbg !504
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !504
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !504
  br i1 %23, label %ioc_bb18, label %if.end20, !dbg !504

ioc_bb18:                                         ; preds = %cont17
  %24 = sext i32 %17 to i64, !dbg !504
  tail call void @__ioc_report_sub_overflow(i32 234, i32 12, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @6, i32 0, i32 0), i64 %8, i64 %24, i8 13) nounwind, !dbg !504
  br label %if.end20, !dbg !504

if.end20:                                         ; preds = %ioc_bb18, %cont17, %while.body
  %secs.addr.1 = phi i32 [ %secs.addr.035, %while.body ], [ %22, %cont17 ], [ %22, %ioc_bb18 ]
  %incdec.ptr = getelementptr inbounds i32* %s.037, i32 1, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !102), !dbg !505
  %incdec.ptr21 = getelementptr inbounds i8** %l.036, i32 1, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr21}, i64 0, metadata !99), !dbg !506
  %cmp5 = icmp sgt i32 %secs.addr.1, 0, !dbg !499
  br i1 %cmp5, label %while.body, label %while.end, !dbg !499

while.end:                                        ; preds = %while.cond.preheader, %if.end20, %if.then
  ret void, !dbg !507
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @print_unknown_data(i8* %cp, i8* %ident, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !110), !dbg !508
  tail call void @llvm.dbg.value(metadata !{i8* %ident}, i64 0, metadata !111), !dbg !508
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !112), !dbg !508
  %cmp = icmp slt i32 %len, 0, !dbg !509
  br i1 %cmp, label %if.then, label %if.end, !dbg !509

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str14, i32 0, i32 0), i8* %ident) nounwind, !dbg !511
  br label %return, !dbg !513

if.end:                                           ; preds = %entry
  %0 = load %struct.netdissect_options** @gndo, align 4, !dbg !514, !tbaa !345
  %ndo_snapend = getelementptr inbounds %struct.netdissect_options* %0, i32 0, i32 45, !dbg !514
  %1 = load i8** %ndo_snapend, align 4, !dbg !514, !tbaa !345
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i32, !dbg !514
  %sub.ptr.rhs.cast = ptrtoint i8* %cp to i32, !dbg !514
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !514
  %cmp1 = icmp slt i32 %sub.ptr.sub, %len, !dbg !514
  %sub.ptr.sub.len = select i1 %cmp1, i32 %sub.ptr.sub, i32 %len, !dbg !514
  %cmp8 = icmp slt i32 %sub.ptr.sub.len, 0, !dbg !515
  br i1 %cmp8, label %if.then9, label %cont, !dbg !515

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str15, i32 0, i32 0), i8* %ident) nounwind, !dbg !516
  br label %return, !dbg !518

cont:                                             ; preds = %if.end
  tail call void @hex_print(i8* %ident, i8* %cp, i32 %sub.ptr.sub.len) nounwind, !dbg !519
  br label %return, !dbg !520

return:                                           ; preds = %cont, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 1, %cont ]
  ret i32 %retval.0, !dbg !521
}

declare void @hex_print(i8*, i8*, i32)

define i8* @tok2strbuf(%struct.tok* %lp, i8* %fmt, i32 %v, i8* %buf, i32 %bufsize) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %lp}, i64 0, metadata !126), !dbg !522
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !127), !dbg !522
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !128), !dbg !522
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !129), !dbg !522
  tail call void @llvm.dbg.value(metadata !{i32 %bufsize}, i64 0, metadata !130), !dbg !522
  %cmp = icmp eq %struct.tok* %lp, null, !dbg !523
  br i1 %cmp, label %if.end6, label %while.cond, !dbg !523

while.cond:                                       ; preds = %entry, %while.body
  %lp.addr.0 = phi %struct.tok* [ %incdec.ptr, %while.body ], [ %lp, %entry ]
  %s = getelementptr inbounds %struct.tok* %lp.addr.0, i32 0, i32 1, !dbg !525
  %0 = load i8** %s, align 4, !dbg !525, !tbaa !345
  %cmp1 = icmp eq i8* %0, null, !dbg !525
  br i1 %cmp1, label %if.end6, label %while.body, !dbg !525

while.body:                                       ; preds = %while.cond
  %v2 = getelementptr inbounds %struct.tok* %lp.addr.0, i32 0, i32 0, !dbg !527
  %1 = load i32* %v2, align 4, !dbg !527, !tbaa !438
  %cmp3 = icmp eq i32 %1, %v, !dbg !527
  %incdec.ptr = getelementptr inbounds %struct.tok* %lp.addr.0, i32 1, !dbg !529
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %incdec.ptr}, i64 0, metadata !126), !dbg !529
  br i1 %cmp3, label %return, label %while.cond, !dbg !527

if.end6:                                          ; preds = %while.cond, %entry
  %cmp7 = icmp eq i8* %fmt, null, !dbg !530
  %.fmt = select i1 %cmp7, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* %fmt, !dbg !530
  %call = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %buf, i32 %bufsize, i8* %.fmt, i32 %v) nounwind, !dbg !531
  br label %return, !dbg !532

return:                                           ; preds = %while.body, %if.end6
  %retval.0 = phi i8* [ %buf, %if.end6 ], [ %0, %while.body ]
  ret i8* %retval.0, !dbg !533
}

define i8* @tok2str(%struct.tok* %lp, i8* %fmt, i32 %v) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %lp}, i64 0, metadata !136), !dbg !534
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !137), !dbg !534
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !138), !dbg !534
  %0 = load i32* @tok2str.idx, align 4, !dbg !535, !tbaa !438
  %arraydecay = getelementptr inbounds [4 x [128 x i8]]* @tok2str.buf, i32 0, i32 %0, i32 0, !dbg !535
  tail call void @llvm.dbg.value(metadata !{i8* %arraydecay}, i64 0, metadata !139), !dbg !535
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1), !dbg !536
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !536
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !536
  br i1 %3, label %ioc_bb, label %cont, !dbg !536

ioc_bb:                                           ; preds = %entry
  %4 = sext i32 %0 to i64, !dbg !536
  tail call void @__ioc_report_add_overflow(i32 290, i32 13, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %4, i64 1, i8 13) nounwind, !dbg !536
  br label %cont, !dbg !536

cont:                                             ; preds = %entry, %ioc_bb
  %and = and i32 %2, 3, !dbg !536
  store i32 %and, i32* @tok2str.idx, align 4, !dbg !536, !tbaa !438
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %lp}, i64 0, metadata !537) nounwind, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !540) nounwind, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !541) nounwind, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i8* %arraydecay}, i64 0, metadata !542) nounwind, !dbg !539
  tail call void @llvm.dbg.value(metadata !543, i64 0, metadata !544) nounwind, !dbg !539
  %cmp.i = icmp eq %struct.tok* %lp, null, !dbg !545
  br i1 %cmp.i, label %if.end6.i, label %while.cond.i, !dbg !545

while.cond.i:                                     ; preds = %cont, %while.body.i
  %lp.addr.0.i = phi %struct.tok* [ %incdec.ptr.i, %while.body.i ], [ %lp, %cont ]
  %s.i = getelementptr inbounds %struct.tok* %lp.addr.0.i, i32 0, i32 1, !dbg !546
  %5 = load i8** %s.i, align 4, !dbg !546, !tbaa !345
  %cmp1.i = icmp eq i8* %5, null, !dbg !546
  br i1 %cmp1.i, label %if.end6.i, label %while.body.i, !dbg !546

while.body.i:                                     ; preds = %while.cond.i
  %v2.i = getelementptr inbounds %struct.tok* %lp.addr.0.i, i32 0, i32 0, !dbg !547
  %6 = load i32* %v2.i, align 4, !dbg !547, !tbaa !438
  %cmp3.i = icmp eq i32 %6, %v, !dbg !547
  %incdec.ptr.i = getelementptr inbounds %struct.tok* %lp.addr.0.i, i32 1, !dbg !548
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %incdec.ptr.i}, i64 0, metadata !537) nounwind, !dbg !548
  br i1 %cmp3.i, label %tok2strbuf.exit, label %while.cond.i, !dbg !547

if.end6.i:                                        ; preds = %while.cond.i, %cont
  %cmp7.i = icmp eq i8* %fmt, null, !dbg !549
  %.fmt.i = select i1 %cmp7.i, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* %fmt, !dbg !549
  %call.i = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %arraydecay, i32 128, i8* %.fmt.i, i32 %v) nounwind, !dbg !550
  br label %tok2strbuf.exit, !dbg !551

tok2strbuf.exit:                                  ; preds = %while.body.i, %if.end6.i
  %retval.0.i = phi i8* [ %arraydecay, %if.end6.i ], [ %5, %while.body.i ]
  ret i8* %retval.0.i, !dbg !538
}

define i8* @bittok2str_nosep(%struct.tok* %lp, i8* %fmt, i32 %v) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %lp}, i64 0, metadata !146), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !147), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !148), !dbg !552
  tail call fastcc void @bittok2str_internal(%struct.tok* %lp, i8* %fmt, i32 %v, i32 0), !dbg !553
  ret i8* getelementptr inbounds ([256 x i8]* @bittok2str_internal.buf, i32 0, i32 0), !dbg !553
}

define internal fastcc void @bittok2str_internal(%struct.tok* %lp, i8* %fmt, i32 %v, i32 %sep) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !289), !dbg !555
  %cmp2 = icmp eq %struct.tok* %lp, null, !dbg !556
  br i1 %cmp2, label %while.end16, label %land.rhs.lr.ph, !dbg !556

land.rhs.lr.ph:                                   ; preds = %entry
  %tobool = icmp ne i32 %sep, 0, !dbg !557
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str29, i32 0, i32 0), !dbg !557
  br label %land.rhs, !dbg !556

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.end
  %buflen.04 = phi i32 [ 0, %land.rhs.lr.ph ], [ %buflen.1, %while.end ]
  %lp.addr.03 = phi %struct.tok* [ %lp, %land.rhs.lr.ph ], [ %incdec.ptr, %while.end ]
  %s = getelementptr inbounds %struct.tok* %lp.addr.03, i32 0, i32 1, !dbg !556
  %0 = load i8** %s, align 4, !dbg !556, !tbaa !345
  %cmp1 = icmp eq i8* %0, null, !dbg !556
  br i1 %cmp1, label %while.end16, label %while.body

while.body:                                       ; preds = %land.rhs
  %v2 = getelementptr inbounds %struct.tok* %lp.addr.03, i32 0, i32 0, !dbg !561
  %1 = load i32* %v2, align 4, !dbg !561, !tbaa !438
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !292), !dbg !561
  tail call void @llvm.dbg.value(metadata !328, i64 0, metadata !291), !dbg !562
  br label %while.body5, !dbg !563

while.body5:                                      ; preds = %while.body, %cont15
  %rotbit.01 = phi i32 [ 1, %while.body ], [ %shl, %cont15 ]
  %and = and i32 %rotbit.01, %v, !dbg !564
  %cmp6 = icmp eq i32 %1, %and, !dbg !564
  br i1 %cmp6, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %while.body5
  %add.ptr = getelementptr inbounds [256 x i8]* @bittok2str_internal.buf, i32 0, i32 %buflen.04, !dbg !557
  %2 = sext i32 %buflen.04 to i64, !dbg !557
  %3 = icmp sgt i32 %buflen.04, -1, !dbg !557
  br i1 %3, label %cont, label %ioc_bb, !dbg !557

ioc_bb:                                           ; preds = %if.then
  tail call void @__ioc_report_conversion(i32 318, i32 55, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !557
  br label %cont, !dbg !557

cont:                                             ; preds = %ioc_bb, %if.then
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 256, i32 %buflen.04), !dbg !557
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !557
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !557
  br i1 %6, label %ioc_bb7, label %cont8, !dbg !557

ioc_bb7:                                          ; preds = %cont
  %7 = zext i32 %buflen.04 to i64, !dbg !557
  tail call void @__ioc_report_sub_overflow(i32 318, i32 53, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 256, i64 %7, i8 5) nounwind, !dbg !557
  br label %cont8, !dbg !557

cont8:                                            ; preds = %cont, %ioc_bb7
  %8 = load i8** %s, align 4, !dbg !557, !tbaa !345
  %call = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %add.ptr, i32 %5, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0), i8* %8, i8* %cond) nounwind, !dbg !557
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %buflen.04, i32 %call), !dbg !557
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !557
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !557
  br i1 %11, label %ioc_bb10, label %while.end, !dbg !557

ioc_bb10:                                         ; preds = %cont8
  %12 = sext i32 %call to i64, !dbg !557
  tail call void @__ioc_report_add_overflow(i32 318, i32 16, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %2, i64 %12, i8 13) nounwind, !dbg !557
  br label %while.end, !dbg !557

if.end:                                           ; preds = %while.body5
  %13 = icmp ult i32 %rotbit.01, 1073741824, !dbg !565
  br i1 %13, label %cont15, label %ioc_bb14, !dbg !565

ioc_bb14:                                         ; preds = %if.end
  %14 = sext i32 %rotbit.01 to i64, !dbg !565
  tail call void @__ioc_report_shl_strict(i32 322, i32 23, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @16, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind, !dbg !565
  br label %cont15, !dbg !565

cont15:                                           ; preds = %ioc_bb14, %if.end
  %shl = shl i32 %rotbit.01, 1, !dbg !565
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !291), !dbg !565
  %cmp4 = icmp eq i32 %shl, 0, !dbg !563
  br i1 %cmp4, label %while.end, label %while.body5, !dbg !563

while.end:                                        ; preds = %cont15, %ioc_bb10, %cont8
  %buflen.1 = phi i32 [ %10, %cont8 ], [ %10, %ioc_bb10 ], [ %buflen.04, %cont15 ]
  %incdec.ptr = getelementptr inbounds %struct.tok* %lp.addr.03, i32 1, !dbg !566
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %incdec.ptr}, i64 0, metadata !285), !dbg !566
  %cmp = icmp eq %struct.tok* %incdec.ptr, null, !dbg !556
  br i1 %cmp, label %while.end16, label %land.rhs, !dbg !556

while.end16:                                      ; preds = %while.end, %land.rhs, %entry
  %buflen.0.lcssa = phi i32 [ 0, %entry ], [ %buflen.04, %land.rhs ], [ %buflen.1, %while.end ]
  %tobool17 = icmp eq i32 %sep, 0, !dbg !567
  br i1 %tobool17, label %return, label %if.end19, !dbg !567

if.end19:                                         ; preds = %while.end16
  %cmp20 = icmp eq i32 %buflen.0.lcssa, 0, !dbg !568
  br i1 %cmp20, label %if.else, label %cont23, !dbg !568

cont23:                                           ; preds = %if.end19
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %buflen.0.lcssa, i32 2), !dbg !569
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !569
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !569
  br i1 %17, label %ioc_bb24, label %cont25, !dbg !569

ioc_bb24:                                         ; preds = %cont23
  %18 = sext i32 %buflen.0.lcssa to i64, !dbg !569
  tail call void @__ioc_report_sub_overflow(i32 333, i32 16, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %18, i64 2, i8 13) nounwind, !dbg !569
  br label %cont25, !dbg !569

cont25:                                           ; preds = %cont23, %ioc_bb24
  %arrayidx = getelementptr inbounds [256 x i8]* @bittok2str_internal.buf, i32 0, i32 %16, !dbg !569
  store i8 0, i8* %arrayidx, align 1, !dbg !569, !tbaa !333
  br label %return, !dbg !571

if.else:                                          ; preds = %if.end19
  %cmp26 = icmp eq i8* %fmt, null, !dbg !572
  %.fmt = select i1 %cmp26, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* %fmt, !dbg !572
  %call29 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([256 x i8]* @bittok2str_internal.buf, i32 0, i32 0), i32 256, i8* %.fmt, i32 %v) nounwind, !dbg !574
  br label %return, !dbg !575

return:                                           ; preds = %while.end16, %if.else, %cont25
  ret void
}

define i8* @bittok2str(%struct.tok* %lp, i8* %fmt, i32 %v) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tok* %lp}, i64 0, metadata !152), !dbg !576
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !153), !dbg !576
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !154), !dbg !576
  tail call fastcc void @bittok2str_internal(%struct.tok* %lp, i8* %fmt, i32 %v, i32 1), !dbg !577
  ret i8* getelementptr inbounds ([256 x i8]* @bittok2str_internal.buf, i32 0, i32 0), !dbg !577
}

define i8* @tok2strary_internal(i8** nocapture %lp, i32 %n, i8* %fmt, i32 %v) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %lp}, i64 0, metadata !160), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !161), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !162), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !163), !dbg !579
  %cmp = icmp sgt i32 %v, -1, !dbg !580
  %cmp1 = icmp slt i32 %v, %n, !dbg !580
  %or.cond = and i1 %cmp, %cmp1, !dbg !580
  br i1 %or.cond, label %land.lhs.true2, label %if.end, !dbg !580

land.lhs.true2:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %lp, i32 %v, !dbg !580
  %0 = load i8** %arrayidx, align 4, !dbg !580, !tbaa !345
  %cmp3 = icmp eq i8* %0, null, !dbg !580
  br i1 %cmp3, label %if.end, label %return, !dbg !580

if.end:                                           ; preds = %land.lhs.true2, %entry
  %cmp5 = icmp eq i8* %fmt, null, !dbg !582
  %.fmt = select i1 %cmp5, i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* %fmt, !dbg !582
  %call = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* getelementptr inbounds ([128 x i8]* @tok2strary_internal.buf, i32 0, i32 0), i32 128, i8* %.fmt, i32 %v) nounwind, !dbg !583
  br label %return, !dbg !584

return:                                           ; preds = %land.lhs.true2, %if.end
  %retval.0 = phi i8* [ getelementptr inbounds ([128 x i8]* @tok2strary_internal.buf, i32 0, i32 0), %if.end ], [ %0, %land.lhs.true2 ]
  ret i8* %retval.0, !dbg !585
}

define i32 @mask2plen(i32 %mask) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !170), !dbg !586
  tail call void @llvm.dbg.declare(metadata !587, metadata !171), !dbg !588
  tail call void @llvm.dbg.value(metadata !589, i64 0, metadata !176), !dbg !590
  br label %while.body, !dbg !591

while.body:                                       ; preds = %entry, %while.cond.backedge
  %prefix_len.05 = phi i32 [ 32, %entry ], [ %2, %while.cond.backedge ]
  %arrayidx = getelementptr inbounds [33 x i32]* @mask2plen.bitmasks, i32 0, i32 %prefix_len.05, !dbg !592
  %0 = load i32* %arrayidx, align 4, !dbg !592, !tbaa !438
  %cmp1 = icmp eq i32 %0, %mask, !dbg !592
  br i1 %cmp1, label %while.end, label %if.end, !dbg !592

if.end:                                           ; preds = %while.body
  %1 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %prefix_len.05, i32 -1), !dbg !594
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !594
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !594
  br i1 %3, label %ioc_bb, label %while.cond.backedge, !dbg !594

while.cond.backedge:                              ; preds = %if.end, %ioc_bb
  %cmp = icmp sgt i32 %2, -1, !dbg !591
  br i1 %cmp, label %while.body, label %while.end, !dbg !591

ioc_bb:                                           ; preds = %if.end
  %4 = sext i32 %prefix_len.05 to i64, !dbg !594
  tail call void @__ioc_report_add_overflow(i32 393, i32 15, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %4, i64 -1, i8 13) nounwind, !dbg !594
  br label %while.cond.backedge, !dbg !594

while.end:                                        ; preds = %while.body, %while.cond.backedge
  %prefix_len.0.lcssa = phi i32 [ %prefix_len.05, %while.body ], [ %2, %while.cond.backedge ]
  ret i32 %prefix_len.0.lcssa, !dbg !595
}

define void @error(i8* nocapture %fmt, ...) noreturn nounwind {
entry:
  %ap = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !182), !dbg !596
  call void @llvm.dbg.declare(metadata !{i8** %ap}, metadata !183), !dbg !597
  %0 = load %struct._IO_FILE** @stderr, align 4, !dbg !598, !tbaa !345
  %1 = load i8** @program_name, align 4, !dbg !598, !tbaa !345
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i8* %1) nounwind, !dbg !598
  %ap1 = bitcast i8** %ap to i8*, !dbg !599
  call void @llvm.va_start(i8* %ap1), !dbg !599
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !600, !tbaa !345
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !183), !dbg !600
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !183), !dbg !600
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !183), !dbg !600
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !183), !dbg !600
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !183), !dbg !600
  %3 = load i8** %ap, align 4, !dbg !600, !tbaa !345
  %call2 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %fmt, i8* %3) nounwind, !dbg !600
  call void @llvm.va_end(i8* %ap1), !dbg !601
  %4 = load i8* %fmt, align 1, !dbg !602, !tbaa !333
  %tobool = icmp eq i8 %4, 0, !dbg !602
  br i1 %tobool, label %if.end8, label %if.then, !dbg !602

if.then:                                          ; preds = %entry
  %call4 = call i32 @strlen(i8* %fmt) nounwind readonly, !dbg !603
  %add.ptr.sum = add i32 %call4, -1, !dbg !605
  %arrayidx = getelementptr inbounds i8* %fmt, i32 %add.ptr.sum, !dbg !605
  %5 = load i8* %arrayidx, align 1, !dbg !605, !tbaa !333
  %cmp = icmp eq i8 %5, 10, !dbg !605
  br i1 %cmp, label %if.end8, label %if.then6, !dbg !605

if.then6:                                         ; preds = %if.then
  %6 = load %struct._IO_FILE** @stderr, align 4, !dbg !606, !tbaa !345
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %6) nounwind, !dbg !606
  br label %if.end8, !dbg !606

if.end8:                                          ; preds = %if.then, %entry, %if.then6
  call void @exit(i32 1) noreturn nounwind, !dbg !607
  unreachable, !dbg !607
}

declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) nounwind

declare void @llvm.va_start(i8*) nounwind

declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @fputc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @exit(i32) noreturn nounwind

define void @warning(i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !191), !dbg !608
  call void @llvm.dbg.declare(metadata !{i8** %ap}, metadata !192), !dbg !609
  %0 = load %struct._IO_FILE** @stderr, align 4, !dbg !610, !tbaa !345
  %1 = load i8** @program_name, align 4, !dbg !610, !tbaa !345
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8]* @.str18, i32 0, i32 0), i8* %1) nounwind, !dbg !610
  %ap1 = bitcast i8** %ap to i8*, !dbg !611
  call void @llvm.va_start(i8* %ap1), !dbg !611
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !612, !tbaa !345
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !192), !dbg !612
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !192), !dbg !612
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !192), !dbg !612
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !192), !dbg !612
  call void @llvm.dbg.value(metadata !{i8** %ap}, i64 0, metadata !192), !dbg !612
  %3 = load i8** %ap, align 4, !dbg !612, !tbaa !345
  %call2 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %fmt, i8* %3) nounwind, !dbg !612
  call void @llvm.va_end(i8* %ap1), !dbg !613
  %4 = load i8* %fmt, align 1, !dbg !614, !tbaa !333
  %tobool = icmp eq i8 %4, 0, !dbg !614
  br i1 %tobool, label %if.end8, label %if.then, !dbg !614

if.then:                                          ; preds = %entry
  %call4 = call i32 @strlen(i8* %fmt) nounwind readonly, !dbg !615
  %add.ptr.sum = add i32 %call4, -1, !dbg !617
  %arrayidx = getelementptr inbounds i8* %fmt, i32 %add.ptr.sum, !dbg !617
  %5 = load i8* %arrayidx, align 1, !dbg !617, !tbaa !333
  %cmp = icmp eq i8 %5, 10, !dbg !617
  br i1 %cmp, label %if.end8, label %if.then6, !dbg !617

if.then6:                                         ; preds = %if.then
  %6 = load %struct._IO_FILE** @stderr, align 4, !dbg !618, !tbaa !345
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %6) nounwind, !dbg !618
  br label %if.end8, !dbg !618

if.end8:                                          ; preds = %if.then, %entry, %if.then6
  ret void, !dbg !619
}

define noalias i8* @copy_argv(i8** nocapture %argv) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !200), !dbg !620
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !203), !dbg !621
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !201), !dbg !622
  %0 = load i8** %argv, align 4, !dbg !623, !tbaa !345
  %cmp = icmp eq i8* %0, null, !dbg !623
  br i1 %cmp, label %return, label %while.body, !dbg !623

while.body:                                       ; preds = %entry, %while.cond.backedge
  %1 = phi i8* [ %9, %while.cond.backedge ], [ %0, %entry ]
  %len.047 = phi i32 [ %7, %while.cond.backedge ], [ 0, %entry ]
  %p.046 = phi i8** [ %incdec.ptr, %while.cond.backedge ], [ %argv, %entry ]
  %incdec.ptr = getelementptr inbounds i8** %p.046, i32 1, !dbg !624
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr}, i64 0, metadata !201), !dbg !624
  %call = tail call i32 @strlen(i8* %1) nounwind readonly, !dbg !624
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 1), !dbg !624
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !624
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !624
  br i1 %4, label %ioc_bb3, label %cont4, !dbg !624

ioc_bb3:                                          ; preds = %while.body
  %5 = zext i32 %call to i64, !dbg !624
  tail call void @__ioc_report_add_overflow(i32 446, i32 30, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !624
  br label %cont4, !dbg !624

cont4:                                            ; preds = %while.body, %ioc_bb3
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.047, i32 %3), !dbg !624
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !624
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !624
  br i1 %8, label %ioc_bb5, label %while.cond.backedge, !dbg !624

while.cond.backedge:                              ; preds = %cont4, %ioc_bb5
  %9 = load i8** %incdec.ptr, align 4, !dbg !625, !tbaa !345
  %tobool = icmp eq i8* %9, null, !dbg !625
  br i1 %tobool, label %while.end, label %while.body, !dbg !625

ioc_bb5:                                          ; preds = %cont4
  %10 = zext i32 %3 to i64, !dbg !624
  %11 = zext i32 %len.047 to i64, !dbg !624
  tail call void @__ioc_report_add_overflow(i32 446, i32 9, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %11, i64 %10, i8 5) nounwind, !dbg !624
  br label %while.cond.backedge, !dbg !624

while.end:                                        ; preds = %while.cond.backedge
  %call7 = tail call noalias i8* @malloc(i32 %7) nounwind, !dbg !626
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !204), !dbg !626
  %cmp8 = icmp eq i8* %call7, null, !dbg !627
  br i1 %cmp8, label %if.then9, label %while.cond11.preheader, !dbg !627

while.cond11.preheader:                           ; preds = %while.end
  %12 = load i8** %argv, align 4, !dbg !628, !tbaa !345
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !205), !dbg !628
  %cmp1342 = icmp eq i8* %12, null, !dbg !628
  br i1 %cmp1342, label %cont30, label %while.cond15.preheader, !dbg !628

if.then9:                                         ; preds = %while.end
  tail call void (i8*, ...)* @error(i8* getelementptr inbounds ([18 x i8]* @.str19, i32 0, i32 0)) noreturn, !dbg !629
  unreachable, !dbg !629

while.cond15.preheader:                           ; preds = %while.cond11.preheader, %cont25
  %13 = phi i8* [ %15, %cont25 ], [ %12, %while.cond11.preheader ]
  %argv.pn = phi i8** [ %incdec.ptr1244, %cont25 ], [ %argv, %while.cond11.preheader ]
  %dst.043 = phi i8* [ %incdec.ptr17, %cont25 ], [ %call7, %while.cond11.preheader ]
  br label %while.cond15, !dbg !630

while.cond15:                                     ; preds = %while.cond15.preheader, %while.cond15
  %src.0 = phi i8* [ %incdec.ptr16, %while.cond15 ], [ %13, %while.cond15.preheader ]
  %dst.1 = phi i8* [ %incdec.ptr17, %while.cond15 ], [ %dst.043, %while.cond15.preheader ]
  %incdec.ptr16 = getelementptr inbounds i8* %src.0, i32 1, !dbg !630
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr16}, i64 0, metadata !205), !dbg !630
  %14 = load i8* %src.0, align 1, !dbg !630, !tbaa !333
  %incdec.ptr17 = getelementptr inbounds i8* %dst.1, i32 1, !dbg !630
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr17}, i64 0, metadata !206), !dbg !630
  store i8 %14, i8* %dst.1, align 1, !dbg !630, !tbaa !333
  %cmp18 = icmp eq i8 %14, 0, !dbg !630
  br i1 %cmp18, label %cont25, label %while.cond15, !dbg !630

cont25:                                           ; preds = %while.cond15
  %incdec.ptr1244 = getelementptr inbounds i8** %argv.pn, i32 1, !dbg !628
  store i8 32, i8* %dst.1, align 1, !dbg !632, !tbaa !333
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr1244}, i64 0, metadata !201), !dbg !628
  %15 = load i8** %incdec.ptr1244, align 4, !dbg !628, !tbaa !345
  tail call void @llvm.dbg.value(metadata !{i8* %13}, i64 0, metadata !205), !dbg !628
  %cmp13 = icmp eq i8* %15, null, !dbg !628
  br i1 %cmp13, label %cont30, label %while.cond15.preheader, !dbg !628

cont30:                                           ; preds = %cont25, %while.cond11.preheader
  %dst.0.lcssa = phi i8* [ %call7, %while.cond11.preheader ], [ %incdec.ptr17, %cont25 ]
  %arrayidx31 = getelementptr inbounds i8* %dst.0.lcssa, i32 -1, !dbg !633
  store i8 0, i8* %arrayidx31, align 1, !dbg !633, !tbaa !333
  br label %return, !dbg !634

return:                                           ; preds = %entry, %cont30
  %retval.0 = phi i8* [ %call7, %cont30 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !635
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare noalias i8* @malloc(i32) nounwind

define noalias i8* @read_infile(i8* %fname) nounwind {
entry:
  %buf = alloca %struct.stat, align 4
  call void @llvm.dbg.value(metadata !{i8* %fname}, i64 0, metadata !212), !dbg !636
  call void @llvm.dbg.declare(metadata !{%struct.stat* %buf}, metadata !218), !dbg !637
  %call = call i32 (i8*, i32, ...)* @open(i8* %fname, i32 0) nounwind, !dbg !638
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !215), !dbg !638
  %cmp = icmp slt i32 %call, 0, !dbg !639
  br i1 %cmp, label %if.then, label %if.end, !dbg !639

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() nounwind readnone, !dbg !640
  %0 = load i32* %call1, align 4, !dbg !640, !tbaa !438
  %call2 = call i8* @pcap_strerror(i32 %0) nounwind, !dbg !640
  call void (i8*, ...)* @error(i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), i8* %fname, i8* %call2) noreturn, !dbg !640
  unreachable, !dbg !640

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !641) nounwind, !dbg !643
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !644) nounwind, !dbg !643
  %call.i = call i32 @__fxstat(i32 3, i32 %call, %struct.stat* %buf) nounwind, !dbg !645
  %cmp4 = icmp slt i32 %call.i, 0, !dbg !642
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !642

if.then5:                                         ; preds = %if.end
  %call6 = call i32* @__errno_location() nounwind readnone, !dbg !647
  %1 = load i32* %call6, align 4, !dbg !647, !tbaa !438
  %call7 = call i8* @pcap_strerror(i32 %1) nounwind, !dbg !647
  call void (i8*, ...)* @error(i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0), i8* %fname, i8* %call7) noreturn, !dbg !647
  unreachable, !dbg !647

if.end8:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat* %buf, i32 0, i32 9, !dbg !648
  %2 = load i32* %st_size, align 4, !dbg !648, !tbaa !442
  %3 = icmp sgt i32 %2, -1, !dbg !648
  br i1 %3, label %cont10, label %ioc_bb, !dbg !648

ioc_bb:                                           ; preds = %if.end8
  %4 = sext i32 %2 to i64, !dbg !648
  call void @__ioc_report_conversion(i32 482, i32 25, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %4, i8 1) nounwind, !dbg !648
  br label %cont10, !dbg !648

cont10:                                           ; preds = %if.end8, %ioc_bb
  %5 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 1), !dbg !648
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !648
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !648
  br i1 %7, label %ioc_bb11, label %cont12, !dbg !648

ioc_bb11:                                         ; preds = %cont10
  %8 = zext i32 %2 to i64, !dbg !648
  call void @__ioc_report_add_overflow(i32 482, i32 38, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %8, i64 1, i8 5) nounwind, !dbg !648
  br label %cont12, !dbg !648

cont12:                                           ; preds = %cont10, %ioc_bb11
  %call13 = call noalias i8* @malloc(i32 %6) nounwind, !dbg !648
  call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !217), !dbg !648
  %cmp14 = icmp eq i8* %call13, null, !dbg !649
  %9 = load i32* %st_size, align 4, !dbg !650, !tbaa !442
  %10 = icmp sgt i32 %9, -1, !dbg !650
  br i1 %cmp14, label %if.then15, label %if.end26, !dbg !649

if.then15:                                        ; preds = %cont12
  br i1 %10, label %cont21, label %ioc_bb18, !dbg !650

ioc_bb18:                                         ; preds = %if.then15
  %11 = sext i32 %9 to i64, !dbg !650
  call void @__ioc_report_conversion(i32 484, i32 44, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !650
  br label %cont21, !dbg !650

cont21:                                           ; preds = %if.then15, %ioc_bb18
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 1), !dbg !650
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !650
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !650
  br i1 %14, label %ioc_bb22, label %cont23, !dbg !650

ioc_bb22:                                         ; preds = %cont21
  %15 = zext i32 %9 to i64, !dbg !650
  call void @__ioc_report_add_overflow(i32 484, i32 57, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !650
  br label %cont23, !dbg !650

cont23:                                           ; preds = %cont21, %ioc_bb22
  %call24 = call i32* @__errno_location() nounwind readnone, !dbg !650
  %16 = load i32* %call24, align 4, !dbg !650, !tbaa !438
  %call25 = call i8* @pcap_strerror(i32 %16) nounwind, !dbg !650
  call void (i8*, ...)* @error(i8* getelementptr inbounds ([22 x i8]* @.str22, i32 0, i32 0), i32 %13, i8* %fname, i8* %call25) noreturn, !dbg !650
  unreachable, !dbg !650

if.end26:                                         ; preds = %cont12
  br i1 %10, label %cont30, label %ioc_bb29, !dbg !651

ioc_bb29:                                         ; preds = %if.end26
  %17 = sext i32 %9 to i64, !dbg !651
  call void @__ioc_report_conversion(i32 485, i32 28, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %17, i8 1) nounwind, !dbg !651
  br label %cont30, !dbg !651

cont30:                                           ; preds = %ioc_bb29, %if.end26
  %call31 = call i32 @read(i32 %call, i8* %call13, i32 %9) nounwind, !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %call31}, i64 0, metadata !216), !dbg !651
  %cmp32 = icmp slt i32 %call31, 0, !dbg !652
  br i1 %cmp32, label %if.then33, label %if.end36, !dbg !652

if.then33:                                        ; preds = %cont30
  %call34 = call i32* @__errno_location() nounwind readnone, !dbg !653
  %18 = load i32* %call34, align 4, !dbg !653, !tbaa !438
  %call35 = call i8* @pcap_strerror(i32 %18) nounwind, !dbg !653
  call void (i8*, ...)* @error(i8* getelementptr inbounds ([12 x i8]* @.str23, i32 0, i32 0), i8* %fname, i8* %call35) noreturn, !dbg !653
  unreachable, !dbg !653

if.end36:                                         ; preds = %cont30
  %19 = load i32* %st_size, align 4, !dbg !654, !tbaa !442
  %cmp38 = icmp eq i32 %call31, %19, !dbg !654
  br i1 %cmp38, label %if.end41, label %if.then39, !dbg !654

if.then39:                                        ; preds = %if.end36
  call void (i8*, ...)* @error(i8* getelementptr inbounds ([25 x i8]* @.str24, i32 0, i32 0), i8* %fname, i32 %call31, i32 %19) noreturn, !dbg !655
  unreachable, !dbg !655

if.end41:                                         ; preds = %if.end36
  %call42 = call i32 @close(i32 %call) nounwind, !dbg !656
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !213), !dbg !657
  %cmp4390 = icmp sgt i32 %call31, 0, !dbg !657
  br i1 %cmp4390, label %for.body, label %cont62, !dbg !657

for.body:                                         ; preds = %if.end41, %for.cond.backedge
  %i.091 = phi i32 [ %27, %for.cond.backedge ], [ 0, %if.end41 ]
  %arrayidx = getelementptr inbounds i8* %call13, i32 %i.091, !dbg !659
  %20 = load i8* %arrayidx, align 1, !dbg !659, !tbaa !333
  %cmp44 = icmp eq i8 %20, 35, !dbg !659
  %cmp4788 = icmp slt i32 %i.091, %call31, !dbg !661
  %or.cond = and i1 %cmp44, %cmp4788, !dbg !659
  br i1 %or.cond, label %land.rhs, label %for.inc, !dbg !659

land.rhs:                                         ; preds = %for.body, %cont56.land.rhs_crit_edge
  %21 = phi i1 [ %phitmp, %cont56.land.rhs_crit_edge ], [ false, %for.body ]
  %i.189 = phi i32 [ %23, %cont56.land.rhs_crit_edge ], [ %i.091, %for.body ]
  %arrayidx49 = getelementptr inbounds i8* %call13, i32 %i.189, !dbg !661
  br i1 %21, label %for.inc, label %cont54

cont54:                                           ; preds = %land.rhs
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.189, i32 1), !dbg !662
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !662
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !662
  br i1 %24, label %ioc_bb55, label %cont56, !dbg !662

ioc_bb55:                                         ; preds = %cont54
  %25 = sext i32 %i.189 to i64, !dbg !662
  call void @__ioc_report_add_overflow(i32 495, i32 13, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind, !dbg !662
  br label %cont56, !dbg !662

cont56:                                           ; preds = %cont54, %ioc_bb55
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !213), !dbg !662
  store i8 32, i8* %arrayidx49, align 1, !dbg !662, !tbaa !333
  %cmp47 = icmp slt i32 %23, %call31, !dbg !661
  br i1 %cmp47, label %cont56.land.rhs_crit_edge, label %for.inc, !dbg !661

cont56.land.rhs_crit_edge:                        ; preds = %cont56
  %arrayidx49.phi.trans.insert = getelementptr inbounds i8* %call13, i32 %23
  %.pre = load i8* %arrayidx49.phi.trans.insert, align 1, !dbg !661, !tbaa !333
  %phitmp = icmp eq i8 %.pre, 10, !dbg !661
  br label %land.rhs, !dbg !661

for.inc:                                          ; preds = %land.rhs, %cont56, %for.body
  %i.2 = phi i32 [ %i.091, %for.body ], [ %i.189, %land.rhs ], [ %23, %cont56 ]
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2, i32 1), !dbg !657
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !657
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !657
  br i1 %28, label %ioc_bb59, label %for.cond.backedge, !dbg !657

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb59
  %cmp43 = icmp slt i32 %27, %call31, !dbg !657
  br i1 %cmp43, label %for.body, label %cont62, !dbg !657

ioc_bb59:                                         ; preds = %for.inc
  %29 = sext i32 %i.2 to i64, !dbg !657
  call void @__ioc_report_add_overflow(i32 492, i32 24, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %29, i64 1, i8 13) nounwind, !dbg !657
  br label %for.cond.backedge, !dbg !657

cont62:                                           ; preds = %for.cond.backedge, %if.end41
  %arrayidx63 = getelementptr inbounds i8* %call13, i32 %call31, !dbg !663
  store i8 0, i8* %arrayidx63, align 1, !dbg !663, !tbaa !333
  ret i8* %call13, !dbg !664
}

declare i32 @open(i8* nocapture, i32, ...)

declare i8* @pcap_strerror(i32)

declare i32* @__errno_location() nounwind readnone

declare i32 @read(i32, i8* nocapture, i32)

declare i32 @close(i32)

define void @safeputs(i8* nocapture %s, i32 %maxlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !261), !dbg !665
  tail call void @llvm.dbg.value(metadata !{i32 %maxlen}, i64 0, metadata !262), !dbg !665
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !263), !dbg !666
  %0 = load i8* %s, align 1, !dbg !667, !tbaa !333
  %tobool8 = icmp ne i8 %0, 0, !dbg !667
  %cmp9 = icmp sgt i32 %maxlen, 0, !dbg !667
  %or.cond10 = and i1 %tobool8, %cmp9, !dbg !667
  br i1 %or.cond10, label %while.body, label %while.end, !dbg !667

while.body:                                       ; preds = %entry, %cont
  %1 = phi i8 [ %9, %cont ], [ %0, %entry ]
  %idx.012 = phi i32 [ %6, %cont ], [ 0, %entry ]
  %s.addr.011 = phi i8* [ %incdec.ptr, %cont ], [ %s, %entry ]
  %conv7 = zext i8 %1 to i32, !dbg !667
  %cmp.i = icmp sgt i8 %1, -1, !dbg !668
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.i, !dbg !668

land.lhs.true.i:                                  ; preds = %while.body
  %call.i = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !668
  %2 = load i16** %call.i, align 4, !dbg !668, !tbaa !345
  %arrayidx.i = getelementptr inbounds i16* %2, i32 %conv7, !dbg !668
  %3 = load i16* %arrayidx.i, align 2, !dbg !668, !tbaa !353
  %and15.i = and i16 %3, 16384, !dbg !668
  %tobool.i = icmp eq i16 %and15.i, 0, !dbg !668
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !668

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @llvm.dbg.value(metadata !{i32 %conv7}, i64 0, metadata !671) nounwind, !dbg !673
  %4 = load %struct._IO_FILE** @stdout, align 4, !dbg !674, !tbaa !345
  %call.i6 = tail call i32 @_IO_putc(i32 %conv7, %struct._IO_FILE* %4) nounwind, !dbg !674
  br label %safeputchar.exit, !dbg !672

if.else.i:                                        ; preds = %land.lhs.true.i, %while.body
  %call19.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0), i32 %conv7) nounwind, !dbg !675
  br label %safeputchar.exit

safeputchar.exit:                                 ; preds = %if.then.i, %if.else.i
  %5 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %idx.012, i32 1), !dbg !676
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !676
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !676
  br i1 %7, label %ioc_bb, label %cont, !dbg !676

ioc_bb:                                           ; preds = %safeputchar.exit
  %8 = sext i32 %idx.012 to i64, !dbg !676
  tail call void @__ioc_report_add_overflow(i32 506, i32 8, i8* getelementptr inbounds ([14 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind, !dbg !676
  br label %cont, !dbg !676

cont:                                             ; preds = %safeputchar.exit, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !263), !dbg !676
  %incdec.ptr = getelementptr inbounds i8* %s.addr.011, i32 1, !dbg !677
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !261), !dbg !677
  %9 = load i8* %incdec.ptr, align 1, !dbg !667, !tbaa !333
  %tobool = icmp ne i8 %9, 0, !dbg !667
  %cmp = icmp slt i32 %6, %maxlen, !dbg !667
  %or.cond = and i1 %tobool, %cmp, !dbg !667
  br i1 %or.cond, label %while.body, label %while.end, !dbg !667

while.end:                                        ; preds = %cont, %entry
  ret void, !dbg !678
}

define void @safeputchar(i32 %c) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !268), !dbg !679
  %conv1 = and i32 %c, 255, !dbg !680
  %cmp = icmp ult i32 %conv1, 128, !dbg !680
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !680

land.lhs.true:                                    ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() nounwind readnone, !dbg !680
  %0 = load i16** %call, align 4, !dbg !680, !tbaa !345
  %arrayidx = getelementptr inbounds i16* %0, i32 %conv1, !dbg !680
  %1 = load i16* %arrayidx, align 2, !dbg !680, !tbaa !353
  %and15 = and i16 %1, 16384, !dbg !680
  %tobool = icmp eq i16 %and15, 0, !dbg !680
  br i1 %tobool, label %if.else, label %if.then, !dbg !680

if.then:                                          ; preds = %land.lhs.true
  %putchar = tail call i32 @putchar(i32 %conv1), !dbg !681
  br label %if.end, !dbg !681

if.else:                                          ; preds = %land.lhs.true, %entry
  %call19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0), i32 %conv1) nounwind, !dbg !682
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !683
}

declare i32 @__fxstat(i32, i32, %struct.stat*) nounwind

declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"../src/util.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", metadata !"clang version 3.2  (https://github.com/jikk/ioc-llvm.git 05d0e47f00295acc4df8088f9c0d935861988ed4)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !300} ; [ DW_TAG_compile_unit ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !22, metadata !35, metadata !44, metadata !53, metadata !93, metadata !105, metadata !113, metadata !131, metadata !141, metadata !149, metadata !155, metadata !164, metadata !177, metadata !188, metadata !194, metadata !207, metadata !256, metadata !265, metadata !271, metadata !280, metadata !293}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fn_print", metadata !"fn_print", metadata !"", metadata !6, i32 46, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @fn_print, null, null, metadata !15, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [fn_print]
!6 = metadata !{i32 786473, metadata !"../src/util.c", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u_char]
!12 = metadata !{i32 786454, null, metadata !"u_char", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!13 = metadata !{i32 786454, null, metadata !"__u_char", metadata !6, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!14 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !21}
!17 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 16777262, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 46]
!18 = metadata !{i32 786689, metadata !5, metadata !"ep", metadata !6, i32 33554478, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 46]
!19 = metadata !{i32 786688, metadata !20, metadata !"ret", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 48]
!20 = metadata !{i32 786443, metadata !5, i32 47, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!21 = metadata !{i32 786688, metadata !20, metadata !"c", metadata !6, i32 49, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 49]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fn_printn", metadata !"fn_printn", metadata !"", metadata !6, i32 78, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8*)* @fn_printn, null, null, metadata !28, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [fn_printn]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !9, metadata !10, metadata !25, metadata !10}
!25 = metadata !{i32 786454, null, metadata !"u_int", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [u_int] [line 36, size 0, align 0, offset 0] [from __u_int]
!26 = metadata !{i32 786454, null, metadata !"__u_int", metadata !6, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__u_int] [line 33, size 0, align 0, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33}
!30 = metadata !{i32 786689, metadata !22, metadata !"s", metadata !6, i32 16777294, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 78]
!31 = metadata !{i32 786689, metadata !22, metadata !"n", metadata !6, i32 33554510, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 78]
!32 = metadata !{i32 786689, metadata !22, metadata !"ep", metadata !6, i32 50331726, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 78]
!33 = metadata !{i32 786688, metadata !34, metadata !"c", metadata !6, i32 80, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 80]
!34 = metadata !{i32 786443, metadata !22, i32 79, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fn_printzp", metadata !"fn_printzp", metadata !"", metadata !6, i32 104, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8*)* @fn_printzp, null, null, metadata !36, i32 105} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 105] [fn_printzp]
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !43}
!38 = metadata !{i32 786689, metadata !35, metadata !"s", metadata !6, i32 16777320, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 104]
!39 = metadata !{i32 786689, metadata !35, metadata !"n", metadata !6, i32 33554536, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 104]
!40 = metadata !{i32 786689, metadata !35, metadata !"ep", metadata !6, i32 50331752, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 104]
!41 = metadata !{i32 786688, metadata !42, metadata !"ret", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 106]
!42 = metadata !{i32 786443, metadata !35, i32 105, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!43 = metadata !{i32 786688, metadata !42, metadata !"c", metadata !6, i32 107, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 107]
!44 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ts_format", metadata !"ts_format", metadata !"", metadata !6, i32 135, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i32)* @ts_format, null, null, metadata !49, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [ts_format]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !9, metadata !9}
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!48 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786689, metadata !44, metadata !"sec", metadata !6, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sec] [line 135]
!52 = metadata !{i32 786689, metadata !44, metadata !"usec", metadata !6, i32 33554567, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [usec] [line 135]
!53 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ts_print", metadata !"ts_print", metadata !"", metadata !6, i32 145, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.timeval*)* @ts_print, null, null, metadata !66, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [ts_print]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!57 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from timeval]
!58 = metadata !{i32 786451, null, metadata !"timeval", metadata !59, i32 31, i64 64, i64 32, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timeval] [line 31, size 64, align 32, offset 0] [from ]
!59 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/time.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!60 = metadata !{metadata !61, metadata !64}
!61 = metadata !{i32 786445, metadata !58, metadata !"tv_sec", metadata !59, i32 33, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [tv_sec] [line 33, size 32, align 32, offset 0] [from __time_t]
!62 = metadata !{i32 786454, null, metadata !"__time_t", metadata !59, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!63 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!64 = metadata !{i32 786445, metadata !58, metadata !"tv_usec", metadata !59, i32 34, i64 32, i64 32, i64 32, i32 0, metadata !65} ; [ DW_TAG_member ] [tv_usec] [line 34, size 32, align 32, offset 32] [from __suseconds_t]
!65 = metadata !{i32 786454, null, metadata !"__suseconds_t", metadata !59, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__suseconds_t] [line 151, size 0, align 0, offset 0] [from long int]
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !68, metadata !69, metadata !71, metadata !89, metadata !91, metadata !92}
!68 = metadata !{i32 786689, metadata !53, metadata !"tvp", metadata !6, i32 16777361, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tvp] [line 145]
!69 = metadata !{i32 786688, metadata !70, metadata !"s", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 147]
!70 = metadata !{i32 786443, metadata !53, i32 146, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!71 = metadata !{i32 786688, metadata !70, metadata !"tm", metadata !6, i32 148, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 148]
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from tm]
!73 = metadata !{i32 786451, null, metadata !"tm", metadata !74, i32 133, i64 352, i64 32, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tm] [line 133, size 352, align 32, offset 0] [from ]
!74 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!76 = metadata !{i32 786445, metadata !73, metadata !"tm_sec", metadata !74, i32 135, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!77 = metadata !{i32 786445, metadata !73, metadata !"tm_min", metadata !74, i32 136, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!78 = metadata !{i32 786445, metadata !73, metadata !"tm_hour", metadata !74, i32 137, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!79 = metadata !{i32 786445, metadata !73, metadata !"tm_mday", metadata !74, i32 138, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!80 = metadata !{i32 786445, metadata !73, metadata !"tm_mon", metadata !74, i32 139, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!81 = metadata !{i32 786445, metadata !73, metadata !"tm_year", metadata !74, i32 140, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!82 = metadata !{i32 786445, metadata !73, metadata !"tm_wday", metadata !74, i32 141, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!83 = metadata !{i32 786445, metadata !73, metadata !"tm_yday", metadata !74, i32 142, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!84 = metadata !{i32 786445, metadata !73, metadata !"tm_isdst", metadata !74, i32 143, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!85 = metadata !{i32 786445, metadata !73, metadata !"tm_gmtoff", metadata !74, i32 146, i64 32, i64 32, i64 288, i32 0, metadata !63} ; [ DW_TAG_member ] [tm_gmtoff] [line 146, size 32, align 32, offset 288] [from long int]
!86 = metadata !{i32 786445, metadata !73, metadata !"tm_zone", metadata !74, i32 147, i64 32, i64 32, i64 320, i32 0, metadata !87} ; [ DW_TAG_member ] [tm_zone] [line 147, size 32, align 32, offset 320] [from ]
!87 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!88 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!89 = metadata !{i32 786688, metadata !70, metadata !"Time", metadata !6, i32 149, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Time] [line 149]
!90 = metadata !{i32 786454, null, metadata !"time_t", metadata !6, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!91 = metadata !{i32 786688, metadata !70, metadata !"d_usec", metadata !6, i32 152, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d_usec] [line 152]
!92 = metadata !{i32 786688, metadata !70, metadata !"d_sec", metadata !6, i32 153, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d_sec] [line 153]
!93 = metadata !{i32 786478, i32 0, metadata !6, metadata !"relts_print", metadata !"relts_print", metadata !"", metadata !6, i32 217, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @relts_print, null, null, metadata !96, i32 218} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 218] [relts_print]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !9}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !98, metadata !99, metadata !102}
!98 = metadata !{i32 786689, metadata !93, metadata !"secs", metadata !6, i32 16777433, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [secs] [line 217]
!99 = metadata !{i32 786688, metadata !100, metadata !"l", metadata !6, i32 221, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 221]
!100 = metadata !{i32 786443, metadata !93, i32 218, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!101 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!102 = metadata !{i32 786688, metadata !100, metadata !"s", metadata !6, i32 222, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 222]
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!104 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!105 = metadata !{i32 786478, i32 0, metadata !6, metadata !"print_unknown_data", metadata !"print_unknown_data", metadata !"", metadata !6, i32 246, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @print_unknown_data, null, null, metadata !108, i32 247} ; [ DW_TAG_subprogram ] [line 246] [def] [scope 247] [print_unknown_data]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{metadata !9, metadata !10, metadata !87, metadata !9}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !110, metadata !111, metadata !112}
!110 = metadata !{i32 786689, metadata !105, metadata !"cp", metadata !6, i32 16777462, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 246]
!111 = metadata !{i32 786689, metadata !105, metadata !"ident", metadata !6, i32 33554678, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ident] [line 246]
!112 = metadata !{i32 786689, metadata !105, metadata !"len", metadata !6, i32 50331894, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 246]
!113 = metadata !{i32 786478, i32 0, metadata !6, metadata !"tok2strbuf", metadata !"tok2strbuf", metadata !"", metadata !6, i32 266, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tok*, i8*, i32, i8*, i32)* @tok2strbuf, null, null, metadata !124, i32 267} ; [ DW_TAG_subprogram ] [line 266] [def] [scope 267] [tok2strbuf]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !87, metadata !116, metadata !87, metadata !9, metadata !47, metadata !123}
!116 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!117 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from tok]
!118 = metadata !{i32 786451, null, metadata !"tok", metadata !119, i32 68, i64 64, i64 32, i32 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tok] [line 68, size 64, align 32, offset 0] [from ]
!119 = metadata !{i32 786473, metadata !"../src/netdissect.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!120 = metadata !{metadata !121, metadata !122}
!121 = metadata !{i32 786445, metadata !118, metadata !"v", metadata !119, i32 69, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [v] [line 69, size 32, align 32, offset 0] [from int]
!122 = metadata !{i32 786445, metadata !118, metadata !"s", metadata !119, i32 70, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [s] [line 70, size 32, align 32, offset 32] [from ]
!123 = metadata !{i32 786454, null, metadata !"size_t", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from unsigned int]
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130}
!126 = metadata !{i32 786689, metadata !113, metadata !"lp", metadata !6, i32 16777482, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 266]
!127 = metadata !{i32 786689, metadata !113, metadata !"fmt", metadata !6, i32 33554698, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 266]
!128 = metadata !{i32 786689, metadata !113, metadata !"v", metadata !6, i32 50331914, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 266]
!129 = metadata !{i32 786689, metadata !113, metadata !"buf", metadata !6, i32 67109130, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 266]
!130 = metadata !{i32 786689, metadata !113, metadata !"bufsize", metadata !6, i32 83886346, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 266]
!131 = metadata !{i32 786478, i32 0, metadata !6, metadata !"tok2str", metadata !"tok2str", metadata !"", metadata !6, i32 284, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tok*, i8*, i32)* @tok2str, null, null, metadata !134, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [tok2str]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !87, metadata !116, metadata !87, metadata !9}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !131, metadata !"lp", metadata !6, i32 16777500, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 284]
!137 = metadata !{i32 786689, metadata !131, metadata !"fmt", metadata !6, i32 33554716, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 284]
!138 = metadata !{i32 786689, metadata !131, metadata !"v", metadata !6, i32 50331932, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 284]
!139 = metadata !{i32 786688, metadata !140, metadata !"ret", metadata !6, i32 288, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 288]
!140 = metadata !{i32 786443, metadata !131, i32 285, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!141 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bittok2str_nosep", metadata !"bittok2str_nosep", metadata !"", metadata !6, i32 349, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tok*, i8*, i32)* @bittok2str_nosep, null, null, metadata !144, i32 350} ; [ DW_TAG_subprogram ] [line 349] [def] [scope 350] [bittok2str_nosep]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !47, metadata !116, metadata !87, metadata !9}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !146, metadata !147, metadata !148}
!146 = metadata !{i32 786689, metadata !141, metadata !"lp", metadata !6, i32 16777565, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 349]
!147 = metadata !{i32 786689, metadata !141, metadata !"fmt", metadata !6, i32 33554781, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 349]
!148 = metadata !{i32 786689, metadata !141, metadata !"v", metadata !6, i32 50331997, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 349]
!149 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bittok2str", metadata !"bittok2str", metadata !"", metadata !6, i32 358, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.tok*, i8*, i32)* @bittok2str, null, null, metadata !150, i32 359} ; [ DW_TAG_subprogram ] [line 358] [def] [scope 359] [bittok2str]
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !152, metadata !153, metadata !154}
!152 = metadata !{i32 786689, metadata !149, metadata !"lp", metadata !6, i32 16777574, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 358]
!153 = metadata !{i32 786689, metadata !149, metadata !"fmt", metadata !6, i32 33554790, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 358]
!154 = metadata !{i32 786689, metadata !149, metadata !"v", metadata !6, i32 50332006, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 358]
!155 = metadata !{i32 786478, i32 0, metadata !6, metadata !"tok2strary_internal", metadata !"tok2strary_internal", metadata !"", metadata !6, i32 369, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i32, i8*, i32)* @tok2strary_internal, null, null, metadata !158, i32 370} ; [ DW_TAG_subprogram ] [line 369] [def] [scope 370] [tok2strary_internal]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !87, metadata !101, metadata !9, metadata !87, metadata !9}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163}
!160 = metadata !{i32 786689, metadata !155, metadata !"lp", metadata !6, i32 16777585, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 369]
!161 = metadata !{i32 786689, metadata !155, metadata !"n", metadata !6, i32 33554801, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 369]
!162 = metadata !{i32 786689, metadata !155, metadata !"fmt", metadata !6, i32 50332017, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 369]
!163 = metadata !{i32 786689, metadata !155, metadata !"v", metadata !6, i32 67109233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 369]
!164 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mask2plen", metadata !"mask2plen", metadata !"", metadata !6, i32 385, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @mask2plen, null, null, metadata !168, i32 386} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 386] [mask2plen]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !9, metadata !167}
!167 = metadata !{i32 786454, null, metadata !"u_int32_t", metadata !6, i32 203, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [u_int32_t] [line 203, size 0, align 0, offset 0] [from unsigned int]
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !170, metadata !171, metadata !176}
!170 = metadata !{i32 786689, metadata !164, metadata !"mask", metadata !6, i32 16777601, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 385]
!171 = metadata !{i32 786688, metadata !172, metadata !"bitmasks", metadata !6, i32 387, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitmasks] [line 387]
!172 = metadata !{i32 786443, metadata !164, i32 386, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!173 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1056, i64 32, i32 0, i32 0, metadata !167, metadata !174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1056, align 32, offset 0] [from u_int32_t]
!174 = metadata !{metadata !175}
!175 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 32]
!176 = metadata !{i32 786688, metadata !172, metadata !"prefix_len", metadata !6, i32 388, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prefix_len] [line 388]
!177 = metadata !{i32 786478, i32 0, metadata !6, metadata !"error", metadata !"error", metadata !"", metadata !6, i32 401, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @error, null, null, metadata !180, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [error]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{null, metadata !87}
!180 = metadata !{metadata !181}
!181 = metadata !{metadata !182, metadata !183}
!182 = metadata !{i32 786689, metadata !177, metadata !"fmt", metadata !6, i32 16777617, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 401]
!183 = metadata !{i32 786688, metadata !184, metadata !"ap", metadata !6, i32 403, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 403]
!184 = metadata !{i32 786443, metadata !177, i32 402, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!185 = metadata !{i32 786454, null, metadata !"va_list", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_typedef ] [va_list] [line 80, size 0, align 0, offset 0] [from __gnuc_va_list]
!186 = metadata !{i32 786454, null, metadata !"__gnuc_va_list", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!187 = metadata !{i32 786454, null, metadata !"__builtin_va_list", metadata !6, i32 403, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 403, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786478, i32 0, metadata !6, metadata !"warning", metadata !"warning", metadata !"", metadata !6, i32 418, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, ...)* @warning, null, null, metadata !189, i32 419} ; [ DW_TAG_subprogram ] [line 418] [def] [scope 419] [warning]
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786689, metadata !188, metadata !"fmt", metadata !6, i32 16777634, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 418]
!192 = metadata !{i32 786688, metadata !193, metadata !"ap", metadata !6, i32 420, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 420]
!193 = metadata !{i32 786443, metadata !188, i32 419, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!194 = metadata !{i32 786478, i32 0, metadata !6, metadata !"copy_argv", metadata !"copy_argv", metadata !"", metadata !6, i32 435, metadata !195, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**)* @copy_argv, null, null, metadata !198, i32 436} ; [ DW_TAG_subprogram ] [line 435] [def] [scope 436] [copy_argv]
!195 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{metadata !47, metadata !197}
!197 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !200, metadata !201, metadata !203, metadata !204, metadata !205, metadata !206}
!200 = metadata !{i32 786689, metadata !194, metadata !"argv", metadata !6, i32 16777651, metadata !197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 435]
!201 = metadata !{i32 786688, metadata !202, metadata !"p", metadata !6, i32 437, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 437]
!202 = metadata !{i32 786443, metadata !194, i32 436, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!203 = metadata !{i32 786688, metadata !202, metadata !"len", metadata !6, i32 438, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 438]
!204 = metadata !{i32 786688, metadata !202, metadata !"buf", metadata !6, i32 439, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 439]
!205 = metadata !{i32 786688, metadata !202, metadata !"src", metadata !6, i32 440, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 440]
!206 = metadata !{i32 786688, metadata !202, metadata !"dst", metadata !6, i32 441, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 441]
!207 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_infile", metadata !"read_infile", metadata !"", metadata !6, i32 470, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @read_infile, null, null, metadata !210, i32 471} ; [ DW_TAG_subprogram ] [line 470] [def] [scope 471] [read_infile]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !47, metadata !47}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !212, metadata !213, metadata !215, metadata !216, metadata !217, metadata !218}
!212 = metadata !{i32 786689, metadata !207, metadata !"fname", metadata !6, i32 16777686, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 470]
!213 = metadata !{i32 786688, metadata !214, metadata !"i", metadata !6, i32 472, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 472]
!214 = metadata !{i32 786443, metadata !207, i32 471, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!215 = metadata !{i32 786688, metadata !214, metadata !"fd", metadata !6, i32 473, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 473]
!216 = metadata !{i32 786688, metadata !214, metadata !"cc", metadata !6, i32 474, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 474]
!217 = metadata !{i32 786688, metadata !214, metadata !"cp", metadata !6, i32 475, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 475]
!218 = metadata !{i32 786688, metadata !214, metadata !"buf", metadata !6, i32 476, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 476]
!219 = metadata !{i32 786451, null, metadata !"stat", metadata !220, i32 39, i64 704, i64 32, i32 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 39, size 704, align 32, offset 0] [from ]
!220 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/stat.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!221 = metadata !{metadata !222, metadata !226, metadata !228, metadata !231, metadata !233, metadata !235, metadata !237, metadata !239, metadata !240, metadata !241, metadata !243, metadata !245, metadata !247, metadata !252, metadata !253, metadata !254, metadata !255}
!222 = metadata !{i32 786445, metadata !219, metadata !"st_dev", metadata !220, i32 41, i64 64, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [st_dev] [line 41, size 64, align 32, offset 0] [from __dev_t]
!223 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !220, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!224 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !220, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!225 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!226 = metadata !{i32 786445, metadata !219, metadata !"__pad1", metadata !220, i32 42, i64 16, i64 16, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [__pad1] [line 42, size 16, align 16, offset 64] [from unsigned short]
!227 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!228 = metadata !{i32 786445, metadata !219, metadata !"st_ino", metadata !220, i32 44, i64 32, i64 32, i64 96, i32 0, metadata !229} ; [ DW_TAG_member ] [st_ino] [line 44, size 32, align 32, offset 96] [from __ino_t]
!229 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !220, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!230 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!231 = metadata !{i32 786445, metadata !219, metadata !"st_mode", metadata !220, i32 48, i64 32, i64 32, i64 128, i32 0, metadata !232} ; [ DW_TAG_member ] [st_mode] [line 48, size 32, align 32, offset 128] [from __mode_t]
!232 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !220, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!233 = metadata !{i32 786445, metadata !219, metadata !"st_nlink", metadata !220, i32 49, i64 32, i64 32, i64 160, i32 0, metadata !234} ; [ DW_TAG_member ] [st_nlink] [line 49, size 32, align 32, offset 160] [from __nlink_t]
!234 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !220, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!235 = metadata !{i32 786445, metadata !219, metadata !"st_uid", metadata !220, i32 50, i64 32, i64 32, i64 192, i32 0, metadata !236} ; [ DW_TAG_member ] [st_uid] [line 50, size 32, align 32, offset 192] [from __uid_t]
!236 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !220, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!237 = metadata !{i32 786445, metadata !219, metadata !"st_gid", metadata !220, i32 51, i64 32, i64 32, i64 224, i32 0, metadata !238} ; [ DW_TAG_member ] [st_gid] [line 51, size 32, align 32, offset 224] [from __gid_t]
!238 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !220, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!239 = metadata !{i32 786445, metadata !219, metadata !"st_rdev", metadata !220, i32 52, i64 64, i64 32, i64 256, i32 0, metadata !223} ; [ DW_TAG_member ] [st_rdev] [line 52, size 64, align 32, offset 256] [from __dev_t]
!240 = metadata !{i32 786445, metadata !219, metadata !"__pad2", metadata !220, i32 53, i64 16, i64 16, i64 320, i32 0, metadata !227} ; [ DW_TAG_member ] [__pad2] [line 53, size 16, align 16, offset 320] [from unsigned short]
!241 = metadata !{i32 786445, metadata !219, metadata !"st_size", metadata !220, i32 55, i64 32, i64 32, i64 352, i32 0, metadata !242} ; [ DW_TAG_member ] [st_size] [line 55, size 32, align 32, offset 352] [from __off_t]
!242 = metadata !{i32 786454, null, metadata !"__off_t", metadata !220, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off_t] [line 141, size 0, align 0, offset 0] [from long int]
!243 = metadata !{i32 786445, metadata !219, metadata !"st_blksize", metadata !220, i32 59, i64 32, i64 32, i64 384, i32 0, metadata !244} ; [ DW_TAG_member ] [st_blksize] [line 59, size 32, align 32, offset 384] [from __blksize_t]
!244 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !220, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!245 = metadata !{i32 786445, metadata !219, metadata !"st_blocks", metadata !220, i32 62, i64 32, i64 32, i64 416, i32 0, metadata !246} ; [ DW_TAG_member ] [st_blocks] [line 62, size 32, align 32, offset 416] [from __blkcnt_t]
!246 = metadata !{i32 786454, null, metadata !"__blkcnt_t", metadata !220, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 169, size 0, align 0, offset 0] [from long int]
!247 = metadata !{i32 786445, metadata !219, metadata !"st_atim", metadata !220, i32 73, i64 64, i64 32, i64 448, i32 0, metadata !248} ; [ DW_TAG_member ] [st_atim] [line 73, size 64, align 32, offset 448] [from timespec]
!248 = metadata !{i32 786451, null, metadata !"timespec", metadata !74, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!249 = metadata !{metadata !250, metadata !251}
!250 = metadata !{i32 786445, metadata !248, metadata !"tv_sec", metadata !74, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!251 = metadata !{i32 786445, metadata !248, metadata !"tv_nsec", metadata !74, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !63} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!252 = metadata !{i32 786445, metadata !219, metadata !"st_mtim", metadata !220, i32 74, i64 64, i64 32, i64 512, i32 0, metadata !248} ; [ DW_TAG_member ] [st_mtim] [line 74, size 64, align 32, offset 512] [from timespec]
!253 = metadata !{i32 786445, metadata !219, metadata !"st_ctim", metadata !220, i32 75, i64 64, i64 32, i64 576, i32 0, metadata !248} ; [ DW_TAG_member ] [st_ctim] [line 75, size 64, align 32, offset 576] [from timespec]
!254 = metadata !{i32 786445, metadata !219, metadata !"__unused4", metadata !220, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !230} ; [ DW_TAG_member ] [__unused4] [line 88, size 32, align 32, offset 640] [from long unsigned int]
!255 = metadata !{i32 786445, metadata !219, metadata !"__unused5", metadata !220, i32 89, i64 32, i64 32, i64 672, i32 0, metadata !230} ; [ DW_TAG_member ] [__unused5] [line 89, size 32, align 32, offset 672] [from long unsigned int]
!256 = metadata !{i32 786478, i32 0, metadata !6, metadata !"safeputs", metadata !"safeputs", metadata !"", metadata !6, i32 501, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @safeputs, null, null, metadata !259, i32 502} ; [ DW_TAG_subprogram ] [line 501] [def] [scope 502] [safeputs]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !87, metadata !9}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !261, metadata !262, metadata !263}
!261 = metadata !{i32 786689, metadata !256, metadata !"s", metadata !6, i32 16777717, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 501]
!262 = metadata !{i32 786689, metadata !256, metadata !"maxlen", metadata !6, i32 33554933, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 501]
!263 = metadata !{i32 786688, metadata !264, metadata !"idx", metadata !6, i32 503, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 503]
!264 = metadata !{i32 786443, metadata !256, i32 502, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!265 = metadata !{i32 786478, i32 0, metadata !6, metadata !"safeputchar", metadata !"safeputchar", metadata !"", metadata !6, i32 511, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @safeputchar, null, null, metadata !266, i32 512} ; [ DW_TAG_subprogram ] [line 511] [def] [scope 512] [safeputchar]
!266 = metadata !{metadata !267}
!267 = metadata !{metadata !268, metadata !269}
!268 = metadata !{i32 786689, metadata !265, metadata !"c", metadata !6, i32 16777727, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 511]
!269 = metadata !{i32 786688, metadata !270, metadata !"ch", metadata !6, i32 513, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 513]
!270 = metadata !{i32 786443, metadata !265, i32 512, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!271 = metadata !{i32 786478, i32 0, metadata !272, metadata !"fstat", metadata !"fstat", metadata !"", metadata !272, i32 469, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !276, i32 470} ; [ DW_TAG_subprogram ] [line 469] [def] [scope 470] [fstat]
!272 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/sys/stat.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{metadata !9, metadata !9, metadata !275}
!275 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from stat]
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !278, metadata !279}
!278 = metadata !{i32 786689, metadata !271, metadata !"__fd", metadata !272, i32 16777685, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__fd] [line 469]
!279 = metadata !{i32 786689, metadata !271, metadata !"__statbuf", metadata !272, i32 33554901, metadata !275, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 469]
!280 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bittok2str_internal", metadata !"bittok2str_internal", metadata !"", metadata !6, i32 299, metadata !281, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tok*, i8*, i32, i32)* @bittok2str_internal, null, null, metadata !283, i32 300} ; [ DW_TAG_subprogram ] [line 299] [local] [def] [scope 300] [bittok2str_internal]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !47, metadata !116, metadata !87, metadata !9, metadata !9}
!283 = metadata !{metadata !284}
!284 = metadata !{metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !291, metadata !292}
!285 = metadata !{i32 786689, metadata !280, metadata !"lp", metadata !6, i32 16777515, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 299]
!286 = metadata !{i32 786689, metadata !280, metadata !"fmt", metadata !6, i32 33554731, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 299]
!287 = metadata !{i32 786689, metadata !280, metadata !"v", metadata !6, i32 50331947, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 299]
!288 = metadata !{i32 786689, metadata !280, metadata !"sep", metadata !6, i32 67109163, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sep] [line 299]
!289 = metadata !{i32 786688, metadata !290, metadata !"buflen", metadata !6, i32 303, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buflen] [line 303]
!290 = metadata !{i32 786443, metadata !280, i32 300, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!291 = metadata !{i32 786688, metadata !290, metadata !"rotbit", metadata !6, i32 305, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotbit] [line 305]
!292 = metadata !{i32 786688, metadata !290, metadata !"tokval", metadata !6, i32 306, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tokval] [line 306]
!293 = metadata !{i32 786478, i32 0, metadata !294, metadata !"putchar", metadata !"putchar", metadata !"", metadata !294, i32 80, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @putchar, null, null, metadata !297, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [putchar]
!294 = metadata !{i32 786473, metadata !"/usr/include/i386-linux-gnu/bits/stdio.h", metadata !"/home/mariuska/Desktop/C-TCPD/install", null} ; [ DW_TAG_file_type ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{metadata !9, metadata !9}
!297 = metadata !{metadata !298}
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!300 = metadata !{metadata !301}
!301 = metadata !{metadata !302, metadata !306, metadata !307, metadata !308, metadata !312, metadata !314, metadata !319, metadata !320, metadata !323}
!302 = metadata !{i32 786484, i32 0, metadata !44, metadata !"buf", metadata !"buf", metadata !"", metadata !6, i32 137, metadata !303, i32 1, i32 1, [16 x i8]* @ts_format.buf} ; [ DW_TAG_variable ] [buf] [line 137] [local] [def]
!303 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !48, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!304 = metadata !{metadata !305}
!305 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!306 = metadata !{i32 786484, i32 0, metadata !53, metadata !"b_sec", metadata !"b_sec", metadata !"", metadata !6, i32 150, metadata !27, i32 1, i32 1, i32* @ts_print.b_sec} ; [ DW_TAG_variable ] [b_sec] [line 150] [local] [def]
!307 = metadata !{i32 786484, i32 0, metadata !53, metadata !"b_usec", metadata !"b_usec", metadata !"", metadata !6, i32 151, metadata !27, i32 1, i32 1, i32* @ts_print.b_usec} ; [ DW_TAG_variable ] [b_usec] [line 151] [local] [def]
!308 = metadata !{i32 786484, i32 0, metadata !93, metadata !"lengths", metadata !"lengths", metadata !"", metadata !6, i32 219, metadata !309, i32 1, i32 1, [6 x i8*]* @relts_print.lengths} ; [ DW_TAG_variable ] [lengths] [line 219] [local] [def]
!309 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !87, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from ]
!310 = metadata !{metadata !311}
!311 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 5]
!312 = metadata !{i32 786484, i32 0, metadata !93, metadata !"seconds", metadata !"seconds", metadata !"", metadata !6, i32 220, metadata !313, i32 1, i32 1, [6 x i32]* @relts_print.seconds} ; [ DW_TAG_variable ] [seconds] [line 220] [local] [def]
!313 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !104, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from ]
!314 = metadata !{i32 786484, i32 0, metadata !131, metadata !"buf", metadata !"buf", metadata !"", metadata !6, i32 286, metadata !315, i32 1, i32 1, [4 x [128 x i8]]* @tok2str.buf} ; [ DW_TAG_variable ] [buf] [line 286] [local] [def]
!315 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !48, metadata !316, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 3]
!318 = metadata !{i32 786465, i64 0, i64 127}     ; [ DW_TAG_subrange_type ] [0, 127]
!319 = metadata !{i32 786484, i32 0, metadata !131, metadata !"idx", metadata !"idx", metadata !"", metadata !6, i32 287, metadata !9, i32 1, i32 1, i32* @tok2str.idx} ; [ DW_TAG_variable ] [idx] [line 287] [local] [def]
!320 = metadata !{i32 786484, i32 0, metadata !155, metadata !"buf", metadata !"buf", metadata !"", metadata !6, i32 371, metadata !321, i32 1, i32 1, [128 x i8]* @tok2strary_internal.buf} ; [ DW_TAG_variable ] [buf] [line 371] [local] [def]
!321 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !48, metadata !322, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!322 = metadata !{metadata !318}
!323 = metadata !{i32 786484, i32 0, metadata !280, metadata !"buf", metadata !"buf", metadata !"", metadata !6, i32 302, metadata !324, i32 1, i32 1, [256 x i8]* @bittok2str_internal.buf} ; [ DW_TAG_variable ] [buf] [line 302] [local] [def]
!324 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !48, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ] [0, 255]
!327 = metadata !{i32 46, i32 0, metadata !5, null}
!328 = metadata !{i32 1}
!329 = metadata !{i32 51, i32 0, metadata !20, null}
!330 = metadata !{i32 52, i32 0, metadata !20, null}
!331 = metadata !{i32 53, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !20, i32 52, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!333 = metadata !{metadata !"omnipotent char", metadata !334}
!334 = metadata !{metadata !"Simple C/C++ TBAA"}
!335 = metadata !{i32 54, i32 0, metadata !332, null}
!336 = metadata !{i32 58, i32 0, metadata !332, null}
!337 = metadata !{i32 59, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !332, i32 58, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!339 = metadata !{i32 77}
!340 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!341 = metadata !{i32 60, i32 0, metadata !338, null}
!342 = metadata !{i32 80, i32 0, metadata !293, metadata !341}
!343 = metadata !{i32 82, i32 0, metadata !344, metadata !341}
!344 = metadata !{i32 786443, metadata !293, i32 81, i32 0, metadata !294, i32 62} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install//usr/include/i386-linux-gnu/bits/stdio.h]
!345 = metadata !{metadata !"any pointer", metadata !333}
!346 = metadata !{i32 45}
!347 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !348} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!348 = metadata !{i32 61, i32 0, metadata !338, null}
!349 = metadata !{i32 80, i32 0, metadata !293, metadata !348}
!350 = metadata !{i32 82, i32 0, metadata !344, metadata !348}
!351 = metadata !{i32 62, i32 0, metadata !338, null}
!352 = metadata !{i32 63, i32 0, metadata !332, null}
!353 = metadata !{metadata !"short", metadata !333}
!354 = metadata !{i32 65, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !332, i32 63, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!356 = metadata !{i32 94}
!357 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !358} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!358 = metadata !{i32 66, i32 0, metadata !355, null}
!359 = metadata !{i32 80, i32 0, metadata !293, metadata !358}
!360 = metadata !{i32 82, i32 0, metadata !344, metadata !358}
!361 = metadata !{i32 67, i32 0, metadata !355, null}
!362 = metadata !{i32 68, i32 0, metadata !332, null}
!363 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !362} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!364 = metadata !{i32 80, i32 0, metadata !293, metadata !362}
!365 = metadata !{i32 82, i32 0, metadata !344, metadata !362}
!366 = metadata !{i32 70, i32 0, metadata !20, null}
!367 = metadata !{i32 80, i32 0, metadata !293, null}
!368 = metadata !{i32 82, i32 0, metadata !344, null}
!369 = metadata !{i32 78, i32 0, metadata !22, null}
!370 = metadata !{i32 81, i32 0, metadata !34, null}
!371 = metadata !{i32 82, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !34, i32 81, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!373 = metadata !{i32 83, i32 0, metadata !372, null}
!374 = metadata !{i32 84, i32 0, metadata !372, null}
!375 = metadata !{i32 85, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !372, i32 84, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!377 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !378} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!378 = metadata !{i32 86, i32 0, metadata !376, null}
!379 = metadata !{i32 80, i32 0, metadata !293, metadata !378}
!380 = metadata !{i32 82, i32 0, metadata !344, metadata !378}
!381 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !382} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!382 = metadata !{i32 87, i32 0, metadata !376, null}
!383 = metadata !{i32 80, i32 0, metadata !293, metadata !382}
!384 = metadata !{i32 82, i32 0, metadata !344, metadata !382}
!385 = metadata !{i32 88, i32 0, metadata !376, null}
!386 = metadata !{i32 89, i32 0, metadata !372, null}
!387 = metadata !{i32 91, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !372, i32 89, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!389 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !390} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!390 = metadata !{i32 92, i32 0, metadata !388, null}
!391 = metadata !{i32 80, i32 0, metadata !293, metadata !390}
!392 = metadata !{i32 82, i32 0, metadata !344, metadata !390}
!393 = metadata !{i32 93, i32 0, metadata !388, null}
!394 = metadata !{i32 94, i32 0, metadata !372, null}
!395 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !394} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!396 = metadata !{i32 80, i32 0, metadata !293, metadata !394}
!397 = metadata !{i32 82, i32 0, metadata !344, metadata !394}
!398 = metadata !{i32 96, i32 0, metadata !34, null}
!399 = metadata !{i32 104, i32 0, metadata !35, null}
!400 = metadata !{i32 109, i32 0, metadata !42, null}
!401 = metadata !{i32 110, i32 0, metadata !42, null}
!402 = metadata !{i32 111, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !42, i32 110, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!404 = metadata !{i32 112, i32 0, metadata !403, null}
!405 = metadata !{i32 113, i32 0, metadata !403, null}
!406 = metadata !{i32 117, i32 0, metadata !403, null}
!407 = metadata !{i32 118, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !403, i32 117, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!409 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!410 = metadata !{i32 119, i32 0, metadata !408, null}
!411 = metadata !{i32 80, i32 0, metadata !293, metadata !410}
!412 = metadata !{i32 82, i32 0, metadata !344, metadata !410}
!413 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !414} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!414 = metadata !{i32 120, i32 0, metadata !408, null}
!415 = metadata !{i32 80, i32 0, metadata !293, metadata !414}
!416 = metadata !{i32 82, i32 0, metadata !344, metadata !414}
!417 = metadata !{i32 121, i32 0, metadata !408, null}
!418 = metadata !{i32 122, i32 0, metadata !403, null}
!419 = metadata !{i32 124, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !403, i32 122, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!421 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !422} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!422 = metadata !{i32 125, i32 0, metadata !420, null}
!423 = metadata !{i32 80, i32 0, metadata !293, metadata !422}
!424 = metadata !{i32 82, i32 0, metadata !344, metadata !422}
!425 = metadata !{i32 126, i32 0, metadata !420, null}
!426 = metadata !{i32 127, i32 0, metadata !403, null}
!427 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !426} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!428 = metadata !{i32 80, i32 0, metadata !293, metadata !426}
!429 = metadata !{i32 82, i32 0, metadata !344, metadata !426}
!430 = metadata !{i32 129, i32 0, metadata !42, null}
!431 = metadata !{i32 135, i32 0, metadata !44, null}
!432 = metadata !{i32 138, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !44, i32 136, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!434 = metadata !{i32 139, i32 0, metadata !433, null}
!435 = metadata !{i32 145, i32 0, metadata !53, null}
!436 = metadata !{i32 149, i32 0, metadata !70, null}
!437 = metadata !{i32 154, i32 0, metadata !70, null}
!438 = metadata !{metadata !"int", metadata !333}
!439 = metadata !{i32 158, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !441, i32 156, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!441 = metadata !{i32 786443, metadata !70, i32 154, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!442 = metadata !{metadata !"long", metadata !333}
!443 = metadata !{i32 159, i32 0, metadata !440, null}
!444 = metadata !{i32 786689, metadata !44, metadata !"sec", metadata !6, i32 16777351, metadata !9, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [sec] [line 135]
!445 = metadata !{i32 135, i32 0, metadata !44, metadata !443}
!446 = metadata !{i32 786689, metadata !44, metadata !"usec", metadata !6, i32 33554567, metadata !9, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [usec] [line 135]
!447 = metadata !{i32 138, i32 0, metadata !433, metadata !443}
!448 = metadata !{i32 160, i32 0, metadata !440, null}
!449 = metadata !{i32 168, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !441, i32 166, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!451 = metadata !{i32 169, i32 0, metadata !450, null}
!452 = metadata !{i32 178, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !441, i32 175, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!454 = metadata !{i32 180, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !453, i32 178, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!456 = metadata !{i32 181, i32 0, metadata !455, null}
!457 = metadata !{i32 182, i32 0, metadata !455, null}
!458 = metadata !{i32 183, i32 0, metadata !453, null}
!459 = metadata !{i32 184, i32 0, metadata !453, null}
!460 = metadata !{i32 185, i32 0, metadata !453, null}
!461 = metadata !{i32 186, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !453, i32 185, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!463 = metadata !{i32 187, i32 0, metadata !462, null}
!464 = metadata !{i32 786689, metadata !44, metadata !"sec", metadata !6, i32 16777351, metadata !9, i32 0, metadata !465} ; [ DW_TAG_arg_variable ] [sec] [line 135]
!465 = metadata !{i32 189, i32 0, metadata !453, null}
!466 = metadata !{i32 135, i32 0, metadata !44, metadata !465}
!467 = metadata !{i32 786689, metadata !44, metadata !"usec", metadata !6, i32 33554567, metadata !9, i32 0, metadata !465} ; [ DW_TAG_arg_variable ] [usec] [line 135]
!468 = metadata !{i32 138, i32 0, metadata !433, metadata !465}
!469 = metadata !{i32 191, i32 0, metadata !453, null}
!470 = metadata !{i32 192, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !453, i32 191, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!472 = metadata !{i32 193, i32 0, metadata !471, null}
!473 = metadata !{i32 194, i32 0, metadata !471, null}
!474 = metadata !{i32 200, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !441, i32 198, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!476 = metadata !{i32 201, i32 0, metadata !475, null}
!477 = metadata !{i32 202, i32 0, metadata !475, null}
!478 = metadata !{i32 203, i32 0, metadata !475, null}
!479 = metadata !{i32 204, i32 0, metadata !475, null}
!480 = metadata !{i32 206, i32 0, metadata !475, null}
!481 = metadata !{i32 786689, metadata !44, metadata !"sec", metadata !6, i32 16777351, metadata !9, i32 0, metadata !480} ; [ DW_TAG_arg_variable ] [sec] [line 135]
!482 = metadata !{i32 135, i32 0, metadata !44, metadata !480}
!483 = metadata !{i32 786689, metadata !44, metadata !"usec", metadata !6, i32 33554567, metadata !9, i32 0, metadata !480} ; [ DW_TAG_arg_variable ] [usec] [line 135]
!484 = metadata !{i32 138, i32 0, metadata !433, metadata !480}
!485 = metadata !{i32 210, i32 0, metadata !70, null}
!486 = metadata !{i32 217, i32 0, metadata !93, null}
!487 = metadata !{i8** getelementptr inbounds ([6 x i8*]* @relts_print.lengths, i32 0, i32 0)}
!488 = metadata !{i32 221, i32 0, metadata !100, null}
!489 = metadata !{i32* getelementptr inbounds ([6 x i32]* @relts_print.seconds, i32 0, i32 0)}
!490 = metadata !{i32 222, i32 0, metadata !100, null}
!491 = metadata !{i32 223, i32 0, metadata !100, null}
!492 = metadata !{i32 224, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !100, i32 223, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!494 = metadata !{i32 225, i32 0, metadata !493, null}
!495 = metadata !{i32 227, i32 0, metadata !100, null}
!496 = metadata !{i32 228, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !100, i32 227, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!498 = metadata !{i32 229, i32 0, metadata !497, null}
!499 = metadata !{i32 231, i32 0, metadata !100, null}
!500 = metadata !{i32 232, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !100, i32 231, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!502 = metadata !{i32 233, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !501, i32 232, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!504 = metadata !{i32 234, i32 0, metadata !503, null}
!505 = metadata !{i32 236, i32 0, metadata !501, null}
!506 = metadata !{i32 237, i32 0, metadata !501, null}
!507 = metadata !{i32 239, i32 0, metadata !100, null}
!508 = metadata !{i32 246, i32 0, metadata !105, null}
!509 = metadata !{i32 248, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !105, i32 247, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!511 = metadata !{i32 249, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !510, i32 248, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!513 = metadata !{i32 250, i32 0, metadata !512, null}
!514 = metadata !{i32 252, i32 0, metadata !510, null}
!515 = metadata !{i32 254, i32 0, metadata !510, null}
!516 = metadata !{i32 255, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !510, i32 254, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!518 = metadata !{i32 256, i32 0, metadata !517, null}
!519 = metadata !{i32 258, i32 0, metadata !510, null}
!520 = metadata !{i32 260, i32 0, metadata !510, null}
!521 = metadata !{i32 261, i32 0, metadata !510, null}
!522 = metadata !{i32 266, i32 0, metadata !113, null}
!523 = metadata !{i32 268, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !113, i32 267, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!525 = metadata !{i32 269, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !524, i32 268, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!527 = metadata !{i32 270, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !526, i32 269, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!529 = metadata !{i32 272, i32 0, metadata !528, null}
!530 = metadata !{i32 275, i32 0, metadata !524, null}
!531 = metadata !{i32 277, i32 0, metadata !524, null}
!532 = metadata !{i32 278, i32 0, metadata !524, null}
!533 = metadata !{i32 279, i32 0, metadata !524, null}
!534 = metadata !{i32 284, i32 0, metadata !131, null}
!535 = metadata !{i32 289, i32 0, metadata !140, null}
!536 = metadata !{i32 290, i32 0, metadata !140, null}
!537 = metadata !{i32 786689, metadata !113, metadata !"lp", metadata !6, i32 16777482, metadata !116, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [lp] [line 266]
!538 = metadata !{i32 291, i32 0, metadata !140, null}
!539 = metadata !{i32 266, i32 0, metadata !113, metadata !538}
!540 = metadata !{i32 786689, metadata !113, metadata !"fmt", metadata !6, i32 33554698, metadata !87, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [fmt] [line 266]
!541 = metadata !{i32 786689, metadata !113, metadata !"v", metadata !6, i32 50331914, metadata !9, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [v] [line 266]
!542 = metadata !{i32 786689, metadata !113, metadata !"buf", metadata !6, i32 67109130, metadata !47, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [buf] [line 266]
!543 = metadata !{i32 128}
!544 = metadata !{i32 786689, metadata !113, metadata !"bufsize", metadata !6, i32 83886346, metadata !123, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [bufsize] [line 266]
!545 = metadata !{i32 268, i32 0, metadata !524, metadata !538}
!546 = metadata !{i32 269, i32 0, metadata !526, metadata !538}
!547 = metadata !{i32 270, i32 0, metadata !528, metadata !538}
!548 = metadata !{i32 272, i32 0, metadata !528, metadata !538}
!549 = metadata !{i32 275, i32 0, metadata !524, metadata !538}
!550 = metadata !{i32 277, i32 0, metadata !524, metadata !538}
!551 = metadata !{i32 278, i32 0, metadata !524, metadata !538}
!552 = metadata !{i32 349, i32 0, metadata !141, null}
!553 = metadata !{i32 351, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !141, i32 350, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!555 = metadata !{i32 303, i32 0, metadata !290, null}
!556 = metadata !{i32 307, i32 0, metadata !290, null}
!557 = metadata !{i32 318, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !559, i32 316, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!559 = metadata !{i32 786443, metadata !560, i32 311, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!560 = metadata !{i32 786443, metadata !290, i32 307, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!561 = metadata !{i32 309, i32 0, metadata !560, null}
!562 = metadata !{i32 310, i32 0, metadata !560, null}
!563 = metadata !{i32 311, i32 0, metadata !560, null}
!564 = metadata !{i32 316, i32 0, metadata !559, null}
!565 = metadata !{i32 322, i32 0, metadata !559, null}
!566 = metadata !{i32 324, i32 0, metadata !560, null}
!567 = metadata !{i32 327, i32 0, metadata !290, null}
!568 = metadata !{i32 331, i32 0, metadata !290, null}
!569 = metadata !{i32 333, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !290, i32 331, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!571 = metadata !{i32 334, i32 0, metadata !570, null}
!572 = metadata !{i32 338, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !290, i32 336, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!574 = metadata !{i32 340, i32 0, metadata !573, null}
!575 = metadata !{i32 341, i32 0, metadata !573, null}
!576 = metadata !{i32 358, i32 0, metadata !149, null}
!577 = metadata !{i32 360, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !149, i32 359, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!579 = metadata !{i32 369, i32 0, metadata !155, null}
!580 = metadata !{i32 372, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !155, i32 370, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!582 = metadata !{i32 374, i32 0, metadata !581, null}
!583 = metadata !{i32 376, i32 0, metadata !581, null}
!584 = metadata !{i32 377, i32 0, metadata !581, null}
!585 = metadata !{i32 378, i32 0, metadata !581, null}
!586 = metadata !{i32 385, i32 0, metadata !164, null}
!587 = metadata !{[33 x i32]* @mask2plen.bitmasks}
!588 = metadata !{i32 387, i32 0, metadata !172, null}
!589 = metadata !{i32 32}
!590 = metadata !{i32 388, i32 0, metadata !172, null}
!591 = metadata !{i32 390, i32 0, metadata !172, null}
!592 = metadata !{i32 391, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !172, i32 390, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!594 = metadata !{i32 393, i32 0, metadata !593, null}
!595 = metadata !{i32 395, i32 0, metadata !172, null}
!596 = metadata !{i32 401, i32 0, metadata !177, null}
!597 = metadata !{i32 403, i32 0, metadata !184, null}
!598 = metadata !{i32 404, i32 0, metadata !184, null}
!599 = metadata !{i32 405, i32 0, metadata !184, null}
!600 = metadata !{i32 406, i32 0, metadata !184, null}
!601 = metadata !{i32 407, i32 0, metadata !184, null}
!602 = metadata !{i32 408, i32 0, metadata !184, null}
!603 = metadata !{i32 409, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !184, i32 408, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!605 = metadata !{i32 410, i32 0, metadata !604, null}
!606 = metadata !{i32 411, i32 0, metadata !604, null}
!607 = metadata !{i32 413, i32 0, metadata !184, null}
!608 = metadata !{i32 418, i32 0, metadata !188, null}
!609 = metadata !{i32 420, i32 0, metadata !193, null}
!610 = metadata !{i32 421, i32 0, metadata !193, null}
!611 = metadata !{i32 422, i32 0, metadata !193, null}
!612 = metadata !{i32 423, i32 0, metadata !193, null}
!613 = metadata !{i32 424, i32 0, metadata !193, null}
!614 = metadata !{i32 425, i32 0, metadata !193, null}
!615 = metadata !{i32 426, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !193, i32 425, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!617 = metadata !{i32 427, i32 0, metadata !616, null}
!618 = metadata !{i32 428, i32 0, metadata !616, null}
!619 = metadata !{i32 430, i32 0, metadata !193, null}
!620 = metadata !{i32 435, i32 0, metadata !194, null}
!621 = metadata !{i32 438, i32 0, metadata !202, null}
!622 = metadata !{i32 442, i32 0, metadata !202, null}
!623 = metadata !{i32 443, i32 0, metadata !202, null}
!624 = metadata !{i32 446, i32 0, metadata !202, null}
!625 = metadata !{i32 445, i32 0, metadata !202, null}
!626 = metadata !{i32 447, i32 0, metadata !202, null}
!627 = metadata !{i32 448, i32 0, metadata !202, null}
!628 = metadata !{i32 452, i32 0, metadata !202, null}
!629 = metadata !{i32 449, i32 0, metadata !202, null}
!630 = metadata !{i32 453, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !202, i32 452, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!632 = metadata !{i32 455, i32 0, metadata !631, null}
!633 = metadata !{i32 457, i32 0, metadata !202, null}
!634 = metadata !{i32 458, i32 0, metadata !202, null}
!635 = metadata !{i32 459, i32 0, metadata !202, null}
!636 = metadata !{i32 470, i32 0, metadata !207, null}
!637 = metadata !{i32 476, i32 0, metadata !214, null}
!638 = metadata !{i32 477, i32 0, metadata !214, null}
!639 = metadata !{i32 478, i32 0, metadata !214, null}
!640 = metadata !{i32 479, i32 0, metadata !214, null}
!641 = metadata !{i32 786689, metadata !271, metadata !"__fd", metadata !272, i32 16777685, metadata !9, i32 0, metadata !642} ; [ DW_TAG_arg_variable ] [__fd] [line 469]
!642 = metadata !{i32 480, i32 0, metadata !214, null}
!643 = metadata !{i32 469, i32 0, metadata !271, metadata !642}
!644 = metadata !{i32 786689, metadata !271, metadata !"__statbuf", metadata !272, i32 33554901, metadata !275, i32 0, metadata !642} ; [ DW_TAG_arg_variable ] [__statbuf] [line 469]
!645 = metadata !{i32 471, i32 0, metadata !646, metadata !642}
!646 = metadata !{i32 786443, metadata !271, i32 470, i32 0, metadata !272, i32 54} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install//usr/include/i386-linux-gnu/sys/stat.h]
!647 = metadata !{i32 481, i32 0, metadata !214, null}
!648 = metadata !{i32 482, i32 0, metadata !214, null}
!649 = metadata !{i32 483, i32 0, metadata !214, null}
!650 = metadata !{i32 484, i32 0, metadata !214, null}
!651 = metadata !{i32 485, i32 0, metadata !214, null}
!652 = metadata !{i32 486, i32 0, metadata !214, null}
!653 = metadata !{i32 487, i32 0, metadata !214, null}
!654 = metadata !{i32 488, i32 0, metadata !214, null}
!655 = metadata !{i32 489, i32 0, metadata !214, null}
!656 = metadata !{i32 490, i32 0, metadata !214, null}
!657 = metadata !{i32 492, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !214, i32 492, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!659 = metadata !{i32 493, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !658, i32 492, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!661 = metadata !{i32 494, i32 0, metadata !660, null}
!662 = metadata !{i32 495, i32 0, metadata !660, null}
!663 = metadata !{i32 497, i32 0, metadata !214, null}
!664 = metadata !{i32 498, i32 0, metadata !214, null}
!665 = metadata !{i32 501, i32 0, metadata !256, null}
!666 = metadata !{i32 503, i32 0, metadata !264, null}
!667 = metadata !{i32 504, i32 0, metadata !264, null}
!668 = metadata !{i32 515, i32 0, metadata !270, metadata !669}
!669 = metadata !{i32 505, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !264, i32 504, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/mariuska/Desktop/C-TCPD/install/../src/util.c]
!671 = metadata !{i32 786689, metadata !293, metadata !"__c", metadata !294, i32 16777296, metadata !9, i32 0, metadata !672} ; [ DW_TAG_arg_variable ] [__c] [line 80]
!672 = metadata !{i32 516, i32 0, metadata !270, metadata !669}
!673 = metadata !{i32 80, i32 0, metadata !293, metadata !672}
!674 = metadata !{i32 82, i32 0, metadata !344, metadata !672}
!675 = metadata !{i32 518, i32 0, metadata !270, metadata !669}
!676 = metadata !{i32 506, i32 0, metadata !670, null}
!677 = metadata !{i32 507, i32 0, metadata !670, null}
!678 = metadata !{i32 509, i32 0, metadata !264, null}
!679 = metadata !{i32 511, i32 0, metadata !265, null}
!680 = metadata !{i32 515, i32 0, metadata !270, null}
!681 = metadata !{i32 516, i32 0, metadata !270, null}
!682 = metadata !{i32 518, i32 0, metadata !270, null}
!683 = metadata !{i32 519, i32 0, metadata !270, null}
