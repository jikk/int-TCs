; ModuleID = 'src/core/ngx_palloc.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.ngx_str_t = type { i32, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }

@ngx_pagesize = external global i32
@0 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str = private unnamed_addr constant [20 x i8] c"close() \22%s\22 failed\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"unlink() \22%s\22 failed\00", align 1
@1 = internal unnamed_addr constant [4 x i8] c"int\00"
@2 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@3 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@4 = internal unnamed_addr constant [2 x i8] c"+\00"
@5 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@6 = internal unnamed_addr constant [22 x i8] c"src/core/ngx_palloc.c\00"

define %struct.ngx_pool_s* @ngx_create_pool(i32 %size, %struct.ngx_log_s* %log) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !188), !dbg !318
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_log_s* %log}, i64 0, metadata !189), !dbg !318
  %call = tail call i8* @ngx_memalign(i32 16, i32 %size, %struct.ngx_log_s* %log) nounwind, !dbg !319
  %0 = bitcast i8* %call to %struct.ngx_pool_s*, !dbg !319
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %0}, i64 0, metadata !190), !dbg !319
  %cmp = icmp eq i8* %call, null, !dbg !320
  br i1 %cmp, label %return, label %if.end, !dbg !320

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %call, i32 40, !dbg !321
  %last = bitcast i8* %call to i8**, !dbg !321
  store i8* %add.ptr, i8** %last, align 4, !dbg !321, !tbaa !322
  %add.ptr1 = getelementptr inbounds i8* %call, i32 %size, !dbg !325
  %end = getelementptr inbounds i8* %call, i32 4, !dbg !325
  %1 = bitcast i8* %end to i8**, !dbg !325
  store i8* %add.ptr1, i8** %1, align 4, !dbg !325, !tbaa !322
  %next = getelementptr inbounds i8* %call, i32 8, !dbg !326
  %2 = bitcast i8* %next to %struct.ngx_pool_s**, !dbg !326
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %2, align 4, !dbg !326, !tbaa !322
  %failed = getelementptr inbounds i8* %call, i32 12, !dbg !327
  %3 = bitcast i8* %failed to i32*, !dbg !327
  store i32 0, i32* %3, align 4, !dbg !327, !tbaa !328
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size, i32 40), !dbg !329
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !329
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !329
  br i1 %6, label %ioc_bb7, label %cont8, !dbg !329

ioc_bb7:                                          ; preds = %if.end
  %7 = zext i32 %size to i64, !dbg !329
  tail call void @__ioc_report_sub_overflow(i32 21, i32 15, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %7, i64 40, i8 5) nounwind, !dbg !329
  br label %cont8, !dbg !329

cont8:                                            ; preds = %if.end, %ioc_bb7
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !188), !dbg !329
  %8 = load i32* @ngx_pagesize, align 4, !dbg !330, !tbaa !328
  %9 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %8, i32 1), !dbg !330
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !330
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !330
  br i1 %11, label %ioc_bb11, label %cont12, !dbg !330

ioc_bb11:                                         ; preds = %cont8
  %12 = zext i32 %8 to i64, !dbg !330
  tail call void @__ioc_report_sub_overflow(i32 22, i32 35, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !330
  br label %cont12, !dbg !330

cont12:                                           ; preds = %cont8, %ioc_bb11
  %cmp13 = icmp ult i32 %5, %10, !dbg !330
  br i1 %cmp13, label %cond.end, label %cond.false, !dbg !330

cond.false:                                       ; preds = %cont12
  %13 = load i32* @ngx_pagesize, align 4, !dbg !330, !tbaa !328
  %14 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 1), !dbg !330
  %15 = extractvalue { i32, i1 } %14, 0, !dbg !330
  %16 = extractvalue { i32, i1 } %14, 1, !dbg !330
  br i1 %16, label %ioc_bb16, label %cond.end, !dbg !330

ioc_bb16:                                         ; preds = %cond.false
  %17 = zext i32 %13 to i64, !dbg !330
  tail call void @__ioc_report_sub_overflow(i32 22, i32 59, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %17, i64 1, i8 5) nounwind, !dbg !330
  br label %cond.end, !dbg !330

cond.end:                                         ; preds = %cont12, %cond.false, %ioc_bb16
  %cond = phi i32 [ %15, %ioc_bb16 ], [ %15, %cond.false ], [ %5, %cont12 ], !dbg !330
  %max = getelementptr inbounds i8* %call, i32 16, !dbg !330
  %18 = bitcast i8* %max to i32*, !dbg !330
  store i32 %cond, i32* %18, align 4, !dbg !330, !tbaa !328
  %current = getelementptr inbounds i8* %call, i32 20, !dbg !331
  %19 = bitcast i8* %current to %struct.ngx_pool_s**, !dbg !331
  store %struct.ngx_pool_s* %0, %struct.ngx_pool_s** %19, align 4, !dbg !331, !tbaa !322
  %chain = getelementptr inbounds i8* %call, i32 24, !dbg !332
  %20 = bitcast i8* %chain to %struct.ngx_chain_s**, !dbg !332
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %20, align 4, !dbg !332, !tbaa !322
  %large = getelementptr inbounds i8* %call, i32 28, !dbg !333
  %21 = bitcast i8* %large to %struct.ngx_pool_large_s**, !dbg !333
  store %struct.ngx_pool_large_s* null, %struct.ngx_pool_large_s** %21, align 4, !dbg !333, !tbaa !322
  %cleanup = getelementptr inbounds i8* %call, i32 32, !dbg !334
  %22 = bitcast i8* %cleanup to %struct.ngx_pool_cleanup_s**, !dbg !334
  store %struct.ngx_pool_cleanup_s* null, %struct.ngx_pool_cleanup_s** %22, align 4, !dbg !334, !tbaa !322
  %log18 = getelementptr inbounds i8* %call, i32 36, !dbg !335
  %23 = bitcast i8* %log18 to %struct.ngx_log_s**, !dbg !335
  store %struct.ngx_log_s* %log, %struct.ngx_log_s** %23, align 4, !dbg !335, !tbaa !322
  br label %return, !dbg !336

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi %struct.ngx_pool_s* [ %0, %cond.end ], [ null, %entry ]
  ret %struct.ngx_pool_s* %retval.0, !dbg !337
}

declare i8* @ngx_memalign(i32, i32, %struct.ngx_log_s*)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @ngx_destroy_pool(%struct.ngx_pool_s* nocapture %pool) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !197), !dbg !338
  %cleanup = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 5, !dbg !339
  %c.036 = load %struct.ngx_pool_cleanup_s** %cleanup, align 4, !dbg !339
  %tobool37 = icmp eq %struct.ngx_pool_cleanup_s* %c.036, null, !dbg !339
  br i1 %tobool37, label %for.end, label %for.body, !dbg !339

for.body:                                         ; preds = %entry, %for.inc
  %c.038 = phi %struct.ngx_pool_cleanup_s* [ %c.0, %for.inc ], [ %c.036, %entry ]
  %handler = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.038, i32 0, i32 0, !dbg !341
  %0 = load void (i8*)** %handler, align 4, !dbg !341, !tbaa !322
  %tobool1 = icmp eq void (i8*)* %0, null, !dbg !341
  br i1 %tobool1, label %for.inc, label %if.then, !dbg !341

if.then:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.038, i32 0, i32 1, !dbg !343
  %1 = load i8** %data, align 4, !dbg !343, !tbaa !322
  tail call void %0(i8* %1) nounwind, !dbg !343
  br label %for.inc, !dbg !345

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.038, i32 0, i32 2, !dbg !339
  %c.0 = load %struct.ngx_pool_cleanup_s** %next, align 4, !dbg !339
  %tobool = icmp eq %struct.ngx_pool_cleanup_s* %c.0, null, !dbg !339
  br i1 %tobool, label %for.end, label %for.body, !dbg !339

for.end:                                          ; preds = %for.inc, %entry
  %large = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 4, !dbg !346
  %l.033 = load %struct.ngx_pool_large_s** %large, align 4, !dbg !346
  %tobool434 = icmp eq %struct.ngx_pool_large_s* %l.033, null, !dbg !346
  br i1 %tobool434, label %for.cond14, label %for.body5, !dbg !346

for.body5:                                        ; preds = %for.end, %for.inc10
  %l.035 = phi %struct.ngx_pool_large_s* [ %l.0, %for.inc10 ], [ %l.033, %for.end ]
  %alloc = getelementptr inbounds %struct.ngx_pool_large_s* %l.035, i32 0, i32 1, !dbg !348
  %2 = load i8** %alloc, align 4, !dbg !348, !tbaa !322
  %tobool6 = icmp eq i8* %2, null, !dbg !348
  br i1 %tobool6, label %for.inc10, label %if.then7, !dbg !348

if.then7:                                         ; preds = %for.body5
  tail call void @free(i8* %2) nounwind, !dbg !350
  br label %for.inc10, !dbg !352

for.inc10:                                        ; preds = %for.body5, %if.then7
  %next11 = getelementptr inbounds %struct.ngx_pool_large_s* %l.035, i32 0, i32 0, !dbg !346
  %l.0 = load %struct.ngx_pool_large_s** %next11, align 4, !dbg !346
  %tobool4 = icmp eq %struct.ngx_pool_large_s* %l.0, null, !dbg !346
  br i1 %tobool4, label %for.cond14, label %for.body5, !dbg !346

for.cond14:                                       ; preds = %for.end, %for.inc10, %for.cond14
  %p.0 = phi %struct.ngx_pool_s* [ %n.0, %for.cond14 ], [ %pool, %for.inc10 ], [ %pool, %for.end ]
  %n.0.in = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 2, !dbg !353
  %n.0 = load %struct.ngx_pool_s** %n.0.in, align 4, !dbg !353
  %3 = bitcast %struct.ngx_pool_s* %p.0 to i8*, !dbg !355
  tail call void @free(i8* %3) nounwind, !dbg !355
  %cmp = icmp eq %struct.ngx_pool_s* %n.0, null, !dbg !357
  br i1 %cmp, label %for.end20, label %for.cond14, !dbg !357

for.end20:                                        ; preds = %for.cond14
  ret void, !dbg !358
}

declare void @free(i8* nocapture) nounwind

define void @ngx_reset_pool(%struct.ngx_pool_s* %pool) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !206), !dbg !359
  %large = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 4, !dbg !360
  %l.022 = load %struct.ngx_pool_large_s** %large, align 4, !dbg !360
  %tobool23 = icmp eq %struct.ngx_pool_large_s* %l.022, null, !dbg !360
  br i1 %tobool23, label %for.end.thread, label %for.body, !dbg !360

for.end.thread:                                   ; preds = %entry
  store %struct.ngx_pool_large_s* null, %struct.ngx_pool_large_s** %large, align 4, !dbg !362, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !207), !dbg !363
  br label %for.body6, !dbg !363

for.body:                                         ; preds = %entry, %for.inc
  %l.024 = phi %struct.ngx_pool_large_s* [ %l.0, %for.inc ], [ %l.022, %entry ]
  %alloc = getelementptr inbounds %struct.ngx_pool_large_s* %l.024, i32 0, i32 1, !dbg !365
  %0 = load i8** %alloc, align 4, !dbg !365, !tbaa !322
  %tobool1 = icmp eq i8* %0, null, !dbg !365
  br i1 %tobool1, label %for.inc, label %if.then, !dbg !365

if.then:                                          ; preds = %for.body
  tail call void @free(i8* %0) nounwind, !dbg !367
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.ngx_pool_large_s* %l.024, i32 0, i32 0, !dbg !360
  %l.0 = load %struct.ngx_pool_large_s** %next, align 4, !dbg !360
  %tobool = icmp eq %struct.ngx_pool_large_s* %l.0, null, !dbg !360
  br i1 %tobool, label %for.end, label %for.body, !dbg !360

for.end:                                          ; preds = %for.inc
  store %struct.ngx_pool_large_s* null, %struct.ngx_pool_large_s** %large, align 4, !dbg !362, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !207), !dbg !363
  %tobool520 = icmp eq %struct.ngx_pool_s* %pool, null, !dbg !363
  br i1 %tobool520, label %for.end10, label %for.body6, !dbg !363

for.body6:                                        ; preds = %for.end, %for.end.thread, %for.body6
  %p.021 = phi %struct.ngx_pool_s* [ %1, %for.body6 ], [ %pool, %for.end.thread ], [ %pool, %for.end ]
  %add.ptr19 = getelementptr inbounds %struct.ngx_pool_s* %p.021, i32 1, !dbg !370
  %add.ptr = bitcast %struct.ngx_pool_s* %add.ptr19 to i8*, !dbg !370
  %last = getelementptr inbounds %struct.ngx_pool_s* %p.021, i32 0, i32 0, i32 0, !dbg !370
  store i8* %add.ptr, i8** %last, align 4, !dbg !370, !tbaa !322
  %next9 = getelementptr inbounds %struct.ngx_pool_s* %p.021, i32 0, i32 0, i32 2, !dbg !363
  %1 = load %struct.ngx_pool_s** %next9, align 4, !dbg !363, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !207), !dbg !363
  %tobool5 = icmp eq %struct.ngx_pool_s* %1, null, !dbg !363
  br i1 %tobool5, label %for.end10, label %for.body6, !dbg !363

for.end10:                                        ; preds = %for.body6, %for.end
  ret void, !dbg !372
}

define i8* @ngx_palloc(%struct.ngx_pool_s* %pool, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !215), !dbg !373
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !216), !dbg !373
  %max = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 1, !dbg !374
  %0 = load i32* %max, align 4, !dbg !374, !tbaa !328
  %cmp = icmp ult i32 %0, %size, !dbg !374
  br i1 %cmp, label %if.end17, label %if.then, !dbg !374

if.then:                                          ; preds = %entry
  %current = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 2, !dbg !375
  %1 = load %struct.ngx_pool_s** %current, align 4, !dbg !375, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !219), !dbg !375
  br label %do.body, !dbg !377

do.body:                                          ; preds = %if.end, %if.then
  %p.0 = phi %struct.ngx_pool_s* [ %1, %if.then ], [ %12, %if.end ]
  %last = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 0, !dbg !378
  %2 = load i8** %last, align 4, !dbg !378, !tbaa !322
  %3 = ptrtoint i8* %2 to i32, !dbg !378
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 3), !dbg !378
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !378
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !378
  br i1 %6, label %ioc_bb3, label %cont8, !dbg !378

ioc_bb3:                                          ; preds = %do.body
  %7 = zext i32 %3 to i64, !dbg !378
  tail call void @__ioc_report_add_overflow(i32 87, i32 49, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %7, i64 3, i8 5) nounwind, !dbg !378
  br label %cont8, !dbg !378

cont8:                                            ; preds = %do.body, %ioc_bb3
  %and = and i32 %5, -4, !dbg !378
  %8 = inttoptr i32 %and to i8*, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !217), !dbg !378
  %end = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 1, !dbg !380
  %9 = load i8** %end, align 4, !dbg !380, !tbaa !322
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i32, !dbg !380
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %and, !dbg !380
  %10 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !380
  br i1 %10, label %cont11, label %ioc_bb10, !dbg !380

ioc_bb10:                                         ; preds = %cont8
  %11 = sext i32 %sub.ptr.sub to i64, !dbg !380
  tail call void @__ioc_report_conversion(i32 88, i32 21, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !380
  br label %cont11, !dbg !380

cont11:                                           ; preds = %ioc_bb10, %cont8
  %cmp12 = icmp ult i32 %sub.ptr.sub, %size, !dbg !380
  br i1 %cmp12, label %if.end, label %if.then13, !dbg !380

if.then13:                                        ; preds = %cont11
  %add.ptr = getelementptr inbounds i8* %8, i32 %size, !dbg !381
  store i8* %add.ptr, i8** %last, align 4, !dbg !381, !tbaa !322
  br label %return, !dbg !383

if.end:                                           ; preds = %cont11
  %next = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 2, !dbg !384
  %12 = load %struct.ngx_pool_s** %next, align 4, !dbg !384, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %12}, i64 0, metadata !219), !dbg !384
  %tobool = icmp eq %struct.ngx_pool_s* %12, null, !dbg !385
  br i1 %tobool, label %do.end, label %do.body, !dbg !385

do.end:                                           ; preds = %if.end
  %call = tail call fastcc i8* @ngx_palloc_block(%struct.ngx_pool_s* %pool, i32 %size), !dbg !386
  br label %return, !dbg !386

if.end17:                                         ; preds = %entry
  %call18 = tail call fastcc i8* @ngx_palloc_large(%struct.ngx_pool_s* %pool, i32 %size), !dbg !387
  br label %return, !dbg !387

return:                                           ; preds = %if.end17, %do.end, %if.then13
  %retval.0 = phi i8* [ %8, %if.then13 ], [ %call, %do.end ], [ %call18, %if.end17 ]
  ret i8* %retval.0, !dbg !388
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal fastcc i8* @ngx_palloc_block(%struct.ngx_pool_s* %pool, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !310), !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !311), !dbg !389
  %end = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 0, i32 1, !dbg !390
  %0 = load i8** %end, align 4, !dbg !390, !tbaa !322
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i32, !dbg !390
  %sub.ptr.rhs.cast = ptrtoint %struct.ngx_pool_s* %pool to i32, !dbg !390
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !390
  %1 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !390
  br i1 %1, label %cont2, label %ioc_bb, !dbg !390

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %sub.ptr.sub to i64, !dbg !390
  tail call void @__ioc_report_conversion(i32 125, i32 21, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !390
  br label %cont2, !dbg !390

cont2:                                            ; preds = %entry, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub}, i64 0, metadata !314), !dbg !390
  %log = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 6, !dbg !391
  %3 = load %struct.ngx_log_s** %log, align 4, !dbg !391, !tbaa !322
  %call = tail call i8* @ngx_memalign(i32 16, i32 %sub.ptr.sub, %struct.ngx_log_s* %3) nounwind, !dbg !391
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !312), !dbg !391
  %cmp = icmp eq i8* %call, null, !dbg !392
  br i1 %cmp, label %return, label %if.end, !dbg !392

if.end:                                           ; preds = %cont2
  %4 = bitcast i8* %call to %struct.ngx_pool_s*, !dbg !393
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %4}, i64 0, metadata !316), !dbg !393
  %add.ptr = getelementptr inbounds i8* %call, i32 %sub.ptr.sub, !dbg !394
  %end4 = getelementptr inbounds i8* %call, i32 4, !dbg !394
  %5 = bitcast i8* %end4 to i8**, !dbg !394
  store i8* %add.ptr, i8** %5, align 4, !dbg !394, !tbaa !322
  %next = getelementptr inbounds i8* %call, i32 8, !dbg !395
  %6 = bitcast i8* %next to %struct.ngx_pool_s**, !dbg !395
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %6, align 4, !dbg !395, !tbaa !322
  %failed = getelementptr inbounds i8* %call, i32 12, !dbg !396
  %7 = bitcast i8* %failed to i32*, !dbg !396
  store i32 0, i32* %7, align 4, !dbg !396, !tbaa !328
  %add.ptr9 = getelementptr inbounds i8* %call, i32 16, !dbg !397
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr9}, i64 0, metadata !312), !dbg !397
  %8 = ptrtoint i8* %add.ptr9 to i32, !dbg !398
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %8, i32 3), !dbg !398
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !398
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !398
  br i1 %11, label %ioc_bb14, label %cont19, !dbg !398

ioc_bb14:                                         ; preds = %if.end
  %12 = zext i32 %8 to i64, !dbg !398
  tail call void @__ioc_report_add_overflow(i32 135, i32 35, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %12, i64 3, i8 5) nounwind, !dbg !398
  br label %cont19, !dbg !398

cont19:                                           ; preds = %if.end, %ioc_bb14
  %and = and i32 %10, -4, !dbg !398
  %13 = inttoptr i32 %and to i8*, !dbg !398
  tail call void @llvm.dbg.value(metadata !{i8* %13}, i64 0, metadata !312), !dbg !398
  %add.ptr20 = getelementptr inbounds i8* %13, i32 %size, !dbg !399
  %last = bitcast i8* %call to i8**, !dbg !399
  store i8* %add.ptr20, i8** %last, align 4, !dbg !399, !tbaa !322
  %current22 = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 2, !dbg !400
  %14 = load %struct.ngx_pool_s** %current22, align 4, !dbg !400, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %14}, i64 0, metadata !317), !dbg !400
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %14}, i64 0, metadata !315), !dbg !401
  %next2464 = getelementptr inbounds %struct.ngx_pool_s* %14, i32 0, i32 0, i32 2, !dbg !401
  %15 = load %struct.ngx_pool_s** %next2464, align 4, !dbg !401, !tbaa !322
  %tobool65 = icmp eq %struct.ngx_pool_s* %15, null, !dbg !401
  br i1 %tobool65, label %for.end, label %for.body, !dbg !401

for.body:                                         ; preds = %cont19, %cont28
  %next2468 = phi %struct.ngx_pool_s** [ %next24, %cont28 ], [ %next2464, %cont19 ]
  %current.067 = phi %struct.ngx_pool_s* [ %.current.067, %cont28 ], [ %14, %cont19 ]
  %p.066 = phi %struct.ngx_pool_s* [ %21, %cont28 ], [ %14, %cont19 ]
  %failed26 = getelementptr inbounds %struct.ngx_pool_s* %p.066, i32 0, i32 0, i32 3, !dbg !403
  %16 = load i32* %failed26, align 4, !dbg !403, !tbaa !328
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !dbg !403
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !403
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !403
  br i1 %19, label %ioc_bb27, label %cont28, !dbg !403

ioc_bb27:                                         ; preds = %for.body
  %20 = zext i32 %16 to i64, !dbg !403
  tail call void @__ioc_report_add_overflow(i32 139, i32 22, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %20, i64 1, i8 5) nounwind, !dbg !403
  br label %cont28, !dbg !403

cont28:                                           ; preds = %for.body, %ioc_bb27
  store i32 %18, i32* %failed26, align 4, !dbg !403, !tbaa !328
  %cmp31 = icmp ugt i32 %16, 4, !dbg !403
  %21 = load %struct.ngx_pool_s** %next2468, align 4, !dbg !405, !tbaa !322
  %.current.067 = select i1 %cmp31, %struct.ngx_pool_s* %21, %struct.ngx_pool_s* %current.067, !dbg !407
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %21}, i64 0, metadata !315), !dbg !401
  %next24 = getelementptr inbounds %struct.ngx_pool_s* %21, i32 0, i32 0, i32 2, !dbg !401
  %22 = load %struct.ngx_pool_s** %next24, align 4, !dbg !401, !tbaa !322
  %tobool = icmp eq %struct.ngx_pool_s* %22, null, !dbg !401
  br i1 %tobool, label %for.end, label %for.body, !dbg !401

for.end:                                          ; preds = %cont28, %cont19
  %next24.lcssa = phi %struct.ngx_pool_s** [ %next2464, %cont19 ], [ %next24, %cont28 ]
  %current.0.lcssa = phi %struct.ngx_pool_s* [ %14, %cont19 ], [ %.current.067, %cont28 ]
  store %struct.ngx_pool_s* %4, %struct.ngx_pool_s** %next24.lcssa, align 4, !dbg !408, !tbaa !322
  %tobool40 = icmp ne %struct.ngx_pool_s* %current.0.lcssa, null, !dbg !409
  %cond = select i1 %tobool40, %struct.ngx_pool_s* %current.0.lcssa, %struct.ngx_pool_s* %4, !dbg !409
  store %struct.ngx_pool_s* %cond, %struct.ngx_pool_s** %current22, align 4, !dbg !409, !tbaa !322
  br label %return, !dbg !410

return:                                           ; preds = %cont2, %for.end
  %retval.0 = phi i8* [ %13, %for.end ], [ null, %cont2 ]
  ret i8* %retval.0, !dbg !411
}

define internal fastcc i8* @ngx_palloc_large(%struct.ngx_pool_s* %pool, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !301), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !302), !dbg !412
  %log = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 6, !dbg !413
  %0 = load %struct.ngx_log_s** %log, align 4, !dbg !413, !tbaa !322
  %call = tail call i8* @ngx_alloc(i32 %size, %struct.ngx_log_s* %0) nounwind, !dbg !413
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !303), !dbg !413
  %cmp = icmp eq i8* %call, null, !dbg !414
  br i1 %cmp, label %return, label %cont, !dbg !414

cont:                                             ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !305), !dbg !415
  %large1 = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 4, !dbg !416
  br label %for.cond, !dbg !416

for.cond:                                         ; preds = %cont9, %cont
  %n.0 = phi i32 [ 0, %cont ], [ %3, %cont9 ]
  %large.0.in = phi %struct.ngx_pool_large_s** [ %large1, %cont ], [ %next, %cont9 ]
  %large.0 = load %struct.ngx_pool_large_s** %large.0.in, align 4, !dbg !416
  %tobool = icmp eq %struct.ngx_pool_large_s* %large.0, null, !dbg !416
  br i1 %tobool, label %for.end, label %for.body, !dbg !416

for.body:                                         ; preds = %for.cond
  %alloc = getelementptr inbounds %struct.ngx_pool_large_s* %large.0, i32 0, i32 1, !dbg !418
  %1 = load i8** %alloc, align 4, !dbg !418, !tbaa !322
  %cmp2 = icmp eq i8* %1, null, !dbg !418
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !418

if.then3:                                         ; preds = %for.body
  store i8* %call, i8** %alloc, align 4, !dbg !420, !tbaa !322
  br label %return, !dbg !422

if.end5:                                          ; preds = %for.body
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0, i32 1), !dbg !423
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !423
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !423
  br i1 %4, label %ioc_bb6, label %cont9, !dbg !423

ioc_bb6:                                          ; preds = %if.end5
  %5 = zext i32 %n.0 to i64, !dbg !423
  tail call void @__ioc_report_add_overflow(i32 163, i32 10, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @5, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !423
  br label %cont9, !dbg !423

cont9:                                            ; preds = %ioc_bb6, %if.end5
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !305), !dbg !423
  %cmp10 = icmp ugt i32 %n.0, 3, !dbg !423
  %next = getelementptr inbounds %struct.ngx_pool_large_s* %large.0, i32 0, i32 0, !dbg !416
  br i1 %cmp10, label %for.end, label %for.cond, !dbg !423

for.end:                                          ; preds = %for.cond, %cont9
  %call13 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %pool, i32 8), !dbg !424
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_large_s* %6}, i64 0, metadata !306), !dbg !424
  %cmp14 = icmp eq i8* %call13, null, !dbg !425
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !425

if.then15:                                        ; preds = %for.end
  tail call void @free(i8* %call) nounwind, !dbg !426
  br label %return, !dbg !428

if.end16:                                         ; preds = %for.end
  %6 = bitcast i8* %call13 to %struct.ngx_pool_large_s*, !dbg !424
  %alloc17 = getelementptr inbounds i8* %call13, i32 4, !dbg !429
  %7 = bitcast i8* %alloc17 to i8**, !dbg !429
  store i8* %call, i8** %7, align 4, !dbg !429, !tbaa !322
  %8 = load %struct.ngx_pool_large_s** %large1, align 4, !dbg !430, !tbaa !322
  %next19 = bitcast i8* %call13 to %struct.ngx_pool_large_s**, !dbg !430
  store %struct.ngx_pool_large_s* %8, %struct.ngx_pool_large_s** %next19, align 4, !dbg !430, !tbaa !322
  store %struct.ngx_pool_large_s* %6, %struct.ngx_pool_large_s** %large1, align 4, !dbg !431, !tbaa !322
  br label %return, !dbg !432

return:                                           ; preds = %entry, %if.end16, %if.then15, %if.then3
  %retval.0 = phi i8* [ %call, %if.then3 ], [ null, %if.then15 ], [ %call, %if.end16 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !433
}

define i8* @ngx_pnalloc(%struct.ngx_pool_s* %pool, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !223), !dbg !434
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !224), !dbg !434
  %max = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 1, !dbg !435
  %0 = load i32* %max, align 4, !dbg !435, !tbaa !328
  %cmp = icmp ult i32 %0, %size, !dbg !435
  br i1 %cmp, label %if.end7, label %if.then, !dbg !435

if.then:                                          ; preds = %entry
  %current = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 2, !dbg !436
  %1 = load %struct.ngx_pool_s** %current, align 4, !dbg !436, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !227), !dbg !436
  br label %do.body, !dbg !438

do.body:                                          ; preds = %if.end, %if.then
  %p.0 = phi %struct.ngx_pool_s* [ %1, %if.then ], [ %6, %if.end ]
  %last = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 0, !dbg !439
  %2 = load i8** %last, align 4, !dbg !439, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !225), !dbg !439
  %end = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 1, !dbg !441
  %3 = load i8** %end, align 4, !dbg !441, !tbaa !322
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i32, !dbg !441
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i32, !dbg !441
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !441
  %4 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !441
  br i1 %4, label %cont, label %ioc_bb, !dbg !441

ioc_bb:                                           ; preds = %do.body
  %5 = sext i32 %sub.ptr.sub to i64, !dbg !441
  tail call void @__ioc_report_conversion(i32 107, i32 21, i8* getelementptr inbounds ([22 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @3, i32 0, i32 0), i64 %5, i8 1) nounwind, !dbg !441
  br label %cont, !dbg !441

cont:                                             ; preds = %ioc_bb, %do.body
  %cmp2 = icmp ult i32 %sub.ptr.sub, %size, !dbg !441
  br i1 %cmp2, label %if.end, label %if.then3, !dbg !441

if.then3:                                         ; preds = %cont
  %add.ptr = getelementptr inbounds i8* %2, i32 %size, !dbg !442
  store i8* %add.ptr, i8** %last, align 4, !dbg !442, !tbaa !322
  br label %return, !dbg !444

if.end:                                           ; preds = %cont
  %next = getelementptr inbounds %struct.ngx_pool_s* %p.0, i32 0, i32 0, i32 2, !dbg !445
  %6 = load %struct.ngx_pool_s** %next, align 4, !dbg !445, !tbaa !322
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %6}, i64 0, metadata !227), !dbg !445
  %tobool = icmp eq %struct.ngx_pool_s* %6, null, !dbg !446
  br i1 %tobool, label %do.end, label %do.body, !dbg !446

do.end:                                           ; preds = %if.end
  %call = tail call fastcc i8* @ngx_palloc_block(%struct.ngx_pool_s* %pool, i32 %size), !dbg !447
  br label %return, !dbg !447

if.end7:                                          ; preds = %entry
  %call8 = tail call fastcc i8* @ngx_palloc_large(%struct.ngx_pool_s* %pool, i32 %size), !dbg !448
  br label %return, !dbg !448

return:                                           ; preds = %if.end7, %do.end, %if.then3
  %retval.0 = phi i8* [ %2, %if.then3 ], [ %call, %do.end ], [ %call8, %if.end7 ]
  ret i8* %retval.0, !dbg !449
}

define i8* @ngx_pmemalign(%struct.ngx_pool_s* %pool, i32 %size, i32 %alignment) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !233), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !234), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %alignment}, i64 0, metadata !235), !dbg !450
  %log = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 6, !dbg !451
  %0 = load %struct.ngx_log_s** %log, align 4, !dbg !451, !tbaa !322
  %call = tail call i8* @ngx_memalign(i32 %alignment, i32 %size, %struct.ngx_log_s* %0) nounwind, !dbg !451
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !236), !dbg !451
  %cmp = icmp eq i8* %call, null, !dbg !452
  br i1 %cmp, label %return, label %if.end, !dbg !452

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %pool, i32 8), !dbg !453
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_large_s* %1}, i64 0, metadata !238), !dbg !453
  %cmp2 = icmp eq i8* %call1, null, !dbg !454
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !454

if.then3:                                         ; preds = %if.end
  tail call void @free(i8* %call) nounwind, !dbg !455
  br label %return, !dbg !457

if.end4:                                          ; preds = %if.end
  %1 = bitcast i8* %call1 to %struct.ngx_pool_large_s*, !dbg !453
  %alloc = getelementptr inbounds i8* %call1, i32 4, !dbg !458
  %2 = bitcast i8* %alloc to i8**, !dbg !458
  store i8* %call, i8** %2, align 4, !dbg !458, !tbaa !322
  %large5 = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 4, !dbg !459
  %3 = load %struct.ngx_pool_large_s** %large5, align 4, !dbg !459, !tbaa !322
  %next = bitcast i8* %call1 to %struct.ngx_pool_large_s**, !dbg !459
  store %struct.ngx_pool_large_s* %3, %struct.ngx_pool_large_s** %next, align 4, !dbg !459, !tbaa !322
  store %struct.ngx_pool_large_s* %1, %struct.ngx_pool_large_s** %large5, align 4, !dbg !460, !tbaa !322
  br label %return, !dbg !461

return:                                           ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ %call, %if.end4 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !462
}

define i32 @ngx_pfree(%struct.ngx_pool_s* nocapture %pool, i8* %p) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !247), !dbg !463
  tail call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !248), !dbg !463
  %large = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 4, !dbg !464
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.body, %entry
  %l.0.in = phi %struct.ngx_pool_large_s** [ %large, %entry ], [ %next, %for.body ]
  %l.0 = load %struct.ngx_pool_large_s** %l.0.in, align 4, !dbg !464
  %tobool = icmp eq %struct.ngx_pool_large_s* %l.0, null, !dbg !464
  br i1 %tobool, label %return, label %for.body, !dbg !464

for.body:                                         ; preds = %for.cond
  %alloc = getelementptr inbounds %struct.ngx_pool_large_s* %l.0, i32 0, i32 1, !dbg !466
  %0 = load i8** %alloc, align 4, !dbg !466, !tbaa !322
  %cmp = icmp eq i8* %0, %p, !dbg !466
  %next = getelementptr inbounds %struct.ngx_pool_large_s* %l.0, i32 0, i32 0, !dbg !464
  br i1 %cmp, label %if.then, label %for.cond, !dbg !466

if.then:                                          ; preds = %for.body
  tail call void @free(i8* %p) nounwind, !dbg !468
  store i8* null, i8** %alloc, align 4, !dbg !470, !tbaa !322
  br label %return, !dbg !471

return:                                           ; preds = %for.cond, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %for.cond ]
  ret i32 %retval.0, !dbg !472
}

define i8* @ngx_pcalloc(%struct.ngx_pool_s* %pool, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !254), !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !255), !dbg !473
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %pool, i32 %size), !dbg !474
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !256), !dbg !474
  %tobool = icmp eq i8* %call, null, !dbg !475
  br i1 %tobool, label %if.end, label %if.then, !dbg !475

if.then:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i32(i8* %call, i8 0, i32 %size, i32 1, i1 false), !dbg !476
  br label %if.end, !dbg !478

if.end:                                           ; preds = %entry, %if.then
  ret i8* %call, !dbg !479
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define %struct.ngx_pool_cleanup_s* @ngx_pool_cleanup_add(%struct.ngx_pool_s* %p, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %p}, i64 0, metadata !263), !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !264), !dbg !480
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %p, i32 12), !dbg !481
  %0 = bitcast i8* %call to %struct.ngx_pool_cleanup_s*, !dbg !481
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_cleanup_s* %0}, i64 0, metadata !265), !dbg !481
  %cmp = icmp eq i8* %call, null, !dbg !482
  br i1 %cmp, label %return, label %if.end, !dbg !482

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32 %size, 0, !dbg !483
  br i1 %tobool, label %if.else, label %if.then1, !dbg !483

if.then1:                                         ; preds = %if.end
  %call2 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %p, i32 %size), !dbg !484
  %data = getelementptr inbounds i8* %call, i32 4, !dbg !484
  %1 = bitcast i8* %data to i8**, !dbg !484
  store i8* %call2, i8** %1, align 4, !dbg !484, !tbaa !322
  %cmp4 = icmp eq i8* %call2, null, !dbg !486
  br i1 %cmp4, label %return, label %if.end8, !dbg !486

if.else:                                          ; preds = %if.end
  %data7 = getelementptr inbounds i8* %call, i32 4, !dbg !487
  %2 = bitcast i8* %data7 to i8**, !dbg !487
  store i8* null, i8** %2, align 4, !dbg !487, !tbaa !322
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.else
  %handler = bitcast i8* %call to void (i8*)**, !dbg !489
  store void (i8*)* null, void (i8*)** %handler, align 4, !dbg !489, !tbaa !322
  %cleanup = getelementptr inbounds %struct.ngx_pool_s* %p, i32 0, i32 5, !dbg !490
  %3 = load %struct.ngx_pool_cleanup_s** %cleanup, align 4, !dbg !490, !tbaa !322
  %next = getelementptr inbounds i8* %call, i32 8, !dbg !490
  %4 = bitcast i8* %next to %struct.ngx_pool_cleanup_s**, !dbg !490
  store %struct.ngx_pool_cleanup_s* %3, %struct.ngx_pool_cleanup_s** %4, align 4, !dbg !490, !tbaa !322
  store %struct.ngx_pool_cleanup_s* %0, %struct.ngx_pool_cleanup_s** %cleanup, align 4, !dbg !491, !tbaa !322
  br label %return, !dbg !492

return:                                           ; preds = %if.then1, %entry, %if.end8
  %retval.0 = phi %struct.ngx_pool_cleanup_s* [ %0, %if.end8 ], [ null, %entry ], [ null, %if.then1 ]
  ret %struct.ngx_pool_cleanup_s* %retval.0, !dbg !493
}

define void @ngx_pool_run_cleanup_file(%struct.ngx_pool_s* nocapture %p, i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %p}, i64 0, metadata !272), !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !494
  %cleanup = getelementptr inbounds %struct.ngx_pool_s* %p, i32 0, i32 5, !dbg !495
  %c.014 = load %struct.ngx_pool_cleanup_s** %cleanup, align 4, !dbg !495
  %tobool15 = icmp eq %struct.ngx_pool_cleanup_s* %c.014, null, !dbg !495
  br i1 %tobool15, label %for.end, label %for.body, !dbg !495

for.body:                                         ; preds = %entry, %for.inc
  %c.016 = phi %struct.ngx_pool_cleanup_s* [ %c.0, %for.inc ], [ %c.014, %entry ]
  %handler = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.016, i32 0, i32 0, !dbg !497
  %0 = load void (i8*)** %handler, align 4, !dbg !497, !tbaa !322
  %cmp = icmp eq void (i8*)* %0, @ngx_pool_cleanup_file, !dbg !497
  br i1 %cmp, label %if.then, label %for.inc, !dbg !497

if.then:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.016, i32 0, i32 1, !dbg !499
  %1 = load i8** %data, align 4, !dbg !499, !tbaa !322
  %fd1 = bitcast i8* %1 to i32*, !dbg !501
  %2 = load i32* %fd1, align 4, !dbg !501, !tbaa !328
  %cmp2 = icmp eq i32 %2, %fd, !dbg !501
  br i1 %cmp2, label %if.then3, label %for.inc, !dbg !501

if.then3:                                         ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !502) nounwind, !dbg !505
  %call.i = tail call i32 @close(i32 %fd) nounwind, !dbg !506
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !506
  br i1 %cmp.i, label %if.then.i, label %ngx_pool_cleanup_file.exit, !dbg !506

if.then.i:                                        ; preds = %if.then3
  %log.i = getelementptr inbounds i8* %1, i32 8, !dbg !507
  %3 = bitcast i8* %log.i to %struct.ngx_log_s**, !dbg !507
  %4 = load %struct.ngx_log_s** %3, align 4, !dbg !507, !tbaa !322
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %4, i32 0, i32 0, !dbg !507
  %5 = load i32* %log_level.i, align 4, !dbg !507, !tbaa !328
  %cmp3.i = icmp ugt i32 %5, 1, !dbg !507
  br i1 %cmp3.i, label %cont6.i, label %ngx_pool_cleanup_file.exit, !dbg !507

cont6.i:                                          ; preds = %if.then.i
  %call8.i = tail call i32* @__errno_location() nounwind readnone, !dbg !509
  %6 = load i32* %call8.i, align 4, !dbg !509, !tbaa !328
  %name.i = getelementptr inbounds i8* %1, i32 4, !dbg !509
  %7 = bitcast i8* %name.i to i8**, !dbg !509
  %8 = load i8** %7, align 4, !dbg !509, !tbaa !322
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %4, i32 %6, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* %8) nounwind, !dbg !509
  br label %ngx_pool_cleanup_file.exit, !dbg !509

ngx_pool_cleanup_file.exit:                       ; preds = %if.then3, %if.then.i, %cont6.i
  store void (i8*)* null, void (i8*)** %handler, align 4, !dbg !510, !tbaa !322
  br label %for.end, !dbg !511

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.ngx_pool_cleanup_s* %c.016, i32 0, i32 2, !dbg !495
  %c.0 = load %struct.ngx_pool_cleanup_s** %next, align 4, !dbg !495
  %tobool = icmp eq %struct.ngx_pool_cleanup_s* %c.0, null, !dbg !495
  br i1 %tobool, label %for.end, label %for.body, !dbg !495

for.end:                                          ; preds = %for.inc, %entry, %ngx_pool_cleanup_file.exit
  ret void, !dbg !512
}

define void @ngx_pool_cleanup_file(i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !287), !dbg !513
  %fd = bitcast i8* %data to i32*, !dbg !514
  %0 = load i32* %fd, align 4, !dbg !514, !tbaa !328
  %call = tail call i32 @close(i32 %0) nounwind, !dbg !514
  %cmp = icmp eq i32 %call, -1, !dbg !514
  br i1 %cmp, label %if.then, label %if.end9, !dbg !514

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds i8* %data, i32 8, !dbg !515
  %1 = bitcast i8* %log to %struct.ngx_log_s**, !dbg !515
  %2 = load %struct.ngx_log_s** %1, align 4, !dbg !515, !tbaa !322
  %log_level = getelementptr inbounds %struct.ngx_log_s* %2, i32 0, i32 0, !dbg !515
  %3 = load i32* %log_level, align 4, !dbg !515, !tbaa !328
  %cmp3 = icmp ugt i32 %3, 1, !dbg !515
  br i1 %cmp3, label %cont6, label %if.end9, !dbg !515

cont6:                                            ; preds = %if.then
  %call8 = tail call i32* @__errno_location() nounwind readnone, !dbg !516
  %4 = load i32* %call8, align 4, !dbg !516, !tbaa !328
  %name = getelementptr inbounds i8* %data, i32 4, !dbg !516
  %5 = bitcast i8* %name to i8**, !dbg !516
  %6 = load i8** %5, align 4, !dbg !516, !tbaa !322
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %2, i32 %4, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* %6) nounwind, !dbg !516
  br label %if.end9, !dbg !516

if.end9:                                          ; preds = %if.then, %cont6, %entry
  ret void, !dbg !517
}

declare i32 @close(i32)

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32* @__errno_location() nounwind readnone

define void @ngx_pool_delete_file(i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !293), !dbg !518
  %name = getelementptr inbounds i8* %data, i32 4, !dbg !519
  %0 = bitcast i8* %name to i8**, !dbg !519
  %1 = load i8** %0, align 4, !dbg !519, !tbaa !322
  %call = tail call i32 @unlink(i8* %1) nounwind, !dbg !519
  %cmp = icmp eq i32 %call, -1, !dbg !519
  br i1 %cmp, label %if.then, label %if.end13, !dbg !519

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() nounwind readnone, !dbg !520
  %2 = load i32* %call1, align 4, !dbg !520, !tbaa !328
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !296), !dbg !520
  %cmp2 = icmp eq i32 %2, 2, !dbg !522
  br i1 %cmp2, label %if.end13, label %if.then3, !dbg !522

if.then3:                                         ; preds = %if.then
  %log = getelementptr inbounds i8* %data, i32 8, !dbg !523
  %3 = bitcast i8* %log to %struct.ngx_log_s**, !dbg !523
  %4 = load %struct.ngx_log_s** %3, align 4, !dbg !523, !tbaa !322
  %log_level = getelementptr inbounds %struct.ngx_log_s* %4, i32 0, i32 0, !dbg !523
  %5 = load i32* %log_level, align 4, !dbg !523, !tbaa !328
  %cmp6 = icmp ugt i32 %5, 2, !dbg !523
  br i1 %cmp6, label %cont9, label %if.end13, !dbg !523

cont9:                                            ; preds = %if.then3
  %6 = load i8** %0, align 4, !dbg !525, !tbaa !322
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %4, i32 %2, i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i8* %6) nounwind, !dbg !525
  br label %if.end13, !dbg !525

if.end13:                                         ; preds = %if.then, %cont9, %if.then3, %entry
  %fd = bitcast i8* %data to i32*, !dbg !526
  %7 = load i32* %fd, align 4, !dbg !526, !tbaa !328
  %call14 = tail call i32 @close(i32 %7) nounwind, !dbg !526
  %cmp17 = icmp eq i32 %call14, -1, !dbg !526
  br i1 %cmp17, label %if.then18, label %if.end31, !dbg !526

if.then18:                                        ; preds = %if.end13
  %log19 = getelementptr inbounds i8* %data, i32 8, !dbg !527
  %8 = bitcast i8* %log19 to %struct.ngx_log_s**, !dbg !527
  %9 = load %struct.ngx_log_s** %8, align 4, !dbg !527, !tbaa !322
  %log_level20 = getelementptr inbounds %struct.ngx_log_s* %9, i32 0, i32 0, !dbg !527
  %10 = load i32* %log_level20, align 4, !dbg !527, !tbaa !328
  %cmp23 = icmp ugt i32 %10, 1, !dbg !527
  br i1 %cmp23, label %cont26, label %if.end31, !dbg !527

cont26:                                           ; preds = %if.then18
  %call28 = tail call i32* @__errno_location() nounwind readnone, !dbg !529
  %11 = load i32* %call28, align 4, !dbg !529, !tbaa !328
  %12 = load i8** %0, align 4, !dbg !529, !tbaa !322
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %9, i32 %11, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0), i8* %12) nounwind, !dbg !529
  br label %if.end31, !dbg !529

if.end31:                                         ; preds = %if.then18, %cont26, %if.end13
  ret void, !dbg !530
}

declare i32 @unlink(i8* nocapture) nounwind

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_palloc.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !192, metadata !203, metadata !210, metadata !220, metadata !228, metadata !239, metadata !251, metadata !258, metadata !267, metadata !284, metadata !290, metadata !298, metadata !307}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_pool", metadata !"ngx_create_pool", metadata !"", metadata !6, i32 10, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ngx_pool_s* (i32, %struct.ngx_log_s*)* @ngx_create_pool, null, null, metadata !186, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ngx_create_pool]
!6 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !32, metadata !118}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!10 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!11 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !12, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!12 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !31, metadata !33, metadata !34, metadata !166, metadata !173, metadata !185}
!14 = metadata !{i32 786445, metadata !11, metadata !"d", metadata !12, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!15 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !12, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !23, metadata !24, metadata !27}
!18 = metadata !{i32 786445, metadata !16, metadata !"last", metadata !12, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!20 = metadata !{i32 786454, null, metadata !"u_char", metadata !12, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!21 = metadata !{i32 786454, null, metadata !"__u_char", metadata !12, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!22 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!23 = metadata !{i32 786445, metadata !16, metadata !"end", metadata !12, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!24 = metadata !{i32 786445, metadata !16, metadata !"next", metadata !12, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!26 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !12, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!27 = metadata !{i32 786445, metadata !16, metadata !"failed", metadata !12, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!28 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !12, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!29 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !12, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!30 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{i32 786445, metadata !11, metadata !"max", metadata !12, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!32 = metadata !{i32 786454, null, metadata !"size_t", metadata !12, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!33 = metadata !{i32 786445, metadata !11, metadata !"current", metadata !12, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !25} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!34 = metadata !{i32 786445, metadata !11, metadata !"chain", metadata !12, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!36 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !12, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!37 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !38, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!38 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!39 = metadata !{metadata !40, metadata !163}
!40 = metadata !{i32 786445, metadata !37, metadata !"buf", metadata !38, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!42 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !38, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!43 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !38, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !52, metadata !53, metadata !54, metadata !55, metadata !58, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162}
!45 = metadata !{i32 786445, metadata !43, metadata !"pos", metadata !38, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786445, metadata !43, metadata !"last", metadata !38, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!47 = metadata !{i32 786445, metadata !43, metadata !"file_pos", metadata !38, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!48 = metadata !{i32 786454, null, metadata !"off_t", metadata !38, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!49 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !38, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!50 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !38, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!51 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!52 = metadata !{i32 786445, metadata !43, metadata !"file_last", metadata !38, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!53 = metadata !{i32 786445, metadata !43, metadata !"start", metadata !38, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!54 = metadata !{i32 786445, metadata !43, metadata !"end", metadata !38, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !19} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!55 = metadata !{i32 786445, metadata !43, metadata !"tag", metadata !38, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !56} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!56 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !38, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !43, metadata !"file", metadata !38, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !59} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!59 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!60 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !38, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!61 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !62, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!62 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!63 = metadata !{metadata !64, metadata !67, metadata !74, metadata !115, metadata !116, metadata !117, metadata !148, metadata !149}
!64 = metadata !{i32 786445, metadata !61, metadata !"fd", metadata !62, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!65 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !62, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!66 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!67 = metadata !{i32 786445, metadata !61, metadata !"name", metadata !62, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!68 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !62, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!69 = metadata !{i32 786451, null, metadata !"", metadata !70, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!70 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786445, metadata !69, metadata !"len", metadata !70, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!73 = metadata !{i32 786445, metadata !69, metadata !"data", metadata !70, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!74 = metadata !{i32 786445, metadata !61, metadata !"info", metadata !62, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!75 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !62, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!76 = metadata !{i32 786451, null, metadata !"stat", metadata !77, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!77 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!78 = metadata !{metadata !79, metadata !83, metadata !85, metadata !88, metadata !90, metadata !92, metadata !94, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !104, metadata !111, metadata !112, metadata !113}
!79 = metadata !{i32 786445, metadata !76, metadata !"st_dev", metadata !77, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!80 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !77, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!81 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !77, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!82 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !76, metadata !"__pad1", metadata !77, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!84 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{i32 786445, metadata !76, metadata !"__st_ino", metadata !77, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !86} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!86 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !77, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!87 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!88 = metadata !{i32 786445, metadata !76, metadata !"st_mode", metadata !77, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!89 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !77, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!90 = metadata !{i32 786445, metadata !76, metadata !"st_nlink", metadata !77, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !91} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!91 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !77, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!92 = metadata !{i32 786445, metadata !76, metadata !"st_uid", metadata !77, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !93} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!93 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !77, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!94 = metadata !{i32 786445, metadata !76, metadata !"st_gid", metadata !77, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !95} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!95 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !77, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!96 = metadata !{i32 786445, metadata !76, metadata !"st_rdev", metadata !77, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!97 = metadata !{i32 786445, metadata !76, metadata !"__pad2", metadata !77, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!98 = metadata !{i32 786445, metadata !76, metadata !"st_size", metadata !77, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !49} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!99 = metadata !{i32 786445, metadata !76, metadata !"st_blksize", metadata !77, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !100} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!100 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !77, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!101 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!102 = metadata !{i32 786445, metadata !76, metadata !"st_blocks", metadata !77, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !103} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!103 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !77, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!104 = metadata !{i32 786445, metadata !76, metadata !"st_atim", metadata !77, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !105} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!105 = metadata !{i32 786451, null, metadata !"timespec", metadata !106, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!106 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!107 = metadata !{metadata !108, metadata !110}
!108 = metadata !{i32 786445, metadata !105, metadata !"tv_sec", metadata !106, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!109 = metadata !{i32 786454, null, metadata !"__time_t", metadata !106, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!110 = metadata !{i32 786445, metadata !105, metadata !"tv_nsec", metadata !106, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !101} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!111 = metadata !{i32 786445, metadata !76, metadata !"st_mtim", metadata !77, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !105} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!112 = metadata !{i32 786445, metadata !76, metadata !"st_ctim", metadata !77, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !105} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!113 = metadata !{i32 786445, metadata !76, metadata !"st_ino", metadata !77, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !114} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!114 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !77, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!115 = metadata !{i32 786445, metadata !61, metadata !"offset", metadata !62, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !48} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!116 = metadata !{i32 786445, metadata !61, metadata !"sys_offset", metadata !62, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !48} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!117 = metadata !{i32 786445, metadata !61, metadata !"log", metadata !62, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !118} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!118 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!119 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !62, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!120 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !121, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!121 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!122 = metadata !{metadata !123, metadata !124, metadata !135, metadata !137, metadata !144, metadata !145}
!123 = metadata !{i32 786445, metadata !120, metadata !"log_level", metadata !121, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!124 = metadata !{i32 786445, metadata !120, metadata !"file", metadata !121, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!126 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !121, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!127 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !128, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!128 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!130 = metadata !{i32 786445, metadata !127, metadata !"fd", metadata !128, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!131 = metadata !{i32 786445, metadata !127, metadata !"name", metadata !128, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!132 = metadata !{i32 786445, metadata !127, metadata !"buffer", metadata !128, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!133 = metadata !{i32 786445, metadata !127, metadata !"pos", metadata !128, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!134 = metadata !{i32 786445, metadata !127, metadata !"last", metadata !128, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !19} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!135 = metadata !{i32 786445, metadata !120, metadata !"connection", metadata !121, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!136 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !121, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!137 = metadata !{i32 786445, metadata !120, metadata !"handler", metadata !121, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !138} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!138 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !121, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !19, metadata !142, metadata !19, metadata !32}
!142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!143 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !121, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!144 = metadata !{i32 786445, metadata !120, metadata !"data", metadata !121, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!145 = metadata !{i32 786445, metadata !120, metadata !"action", metadata !121, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !146} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!147 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!148 = metadata !{i32 786445, metadata !61, metadata !"valid_info", metadata !62, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!149 = metadata !{i32 786445, metadata !61, metadata !"directio", metadata !62, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !30} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!150 = metadata !{i32 786445, metadata !43, metadata !"shadow", metadata !38, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !41} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!151 = metadata !{i32 786445, metadata !43, metadata !"temporary", metadata !38, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!152 = metadata !{i32 786445, metadata !43, metadata !"memory", metadata !38, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !30} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!153 = metadata !{i32 786445, metadata !43, metadata !"mmap", metadata !38, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !30} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!154 = metadata !{i32 786445, metadata !43, metadata !"recycled", metadata !38, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !30} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!155 = metadata !{i32 786445, metadata !43, metadata !"in_file", metadata !38, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !30} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!156 = metadata !{i32 786445, metadata !43, metadata !"flush", metadata !38, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !30} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!157 = metadata !{i32 786445, metadata !43, metadata !"sync", metadata !38, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !30} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!158 = metadata !{i32 786445, metadata !43, metadata !"last_buf", metadata !38, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !30} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!159 = metadata !{i32 786445, metadata !43, metadata !"last_in_chain", metadata !38, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !30} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!160 = metadata !{i32 786445, metadata !43, metadata !"last_shadow", metadata !38, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !30} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!161 = metadata !{i32 786445, metadata !43, metadata !"temp_file", metadata !38, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!162 = metadata !{i32 786445, metadata !43, metadata !"num", metadata !38, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!163 = metadata !{i32 786445, metadata !37, metadata !"next", metadata !38, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !164} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!164 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!165 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !38, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!166 = metadata !{i32 786445, metadata !11, metadata !"large", metadata !12, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !167} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!167 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!168 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !12, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!169 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !12, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786445, metadata !169, metadata !"next", metadata !12, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!172 = metadata !{i32 786445, metadata !169, metadata !"alloc", metadata !12, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !57} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!173 = metadata !{i32 786445, metadata !11, metadata !"cleanup", metadata !12, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !174} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!174 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!175 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !12, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!176 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !12, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !183, metadata !184}
!178 = metadata !{i32 786445, metadata !176, metadata !"handler", metadata !12, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!179 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !12, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!180 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!182 = metadata !{null, metadata !57}
!183 = metadata !{i32 786445, metadata !176, metadata !"data", metadata !12, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !57} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!184 = metadata !{i32 786445, metadata !176, metadata !"next", metadata !12, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !174} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!185 = metadata !{i32 786445, metadata !11, metadata !"log", metadata !12, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !118} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !188, metadata !189, metadata !190}
!188 = metadata !{i32 786689, metadata !5, metadata !"size", metadata !6, i32 16777226, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 10]
!189 = metadata !{i32 786689, metadata !5, metadata !"log", metadata !6, i32 33554442, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 10]
!190 = metadata !{i32 786688, metadata !191, metadata !"p", metadata !6, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 12]
!191 = metadata !{i32 786443, metadata !5, i32 11, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!192 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_destroy_pool", metadata !"ngx_destroy_pool", metadata !"", metadata !6, i32 31, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_pool_s*)* @ngx_destroy_pool, null, null, metadata !195, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [ngx_destroy_pool]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{null, metadata !9}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !197, metadata !198, metadata !200, metadata !201, metadata !202}
!197 = metadata !{i32 786689, metadata !192, metadata !"pool", metadata !6, i32 16777247, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 31]
!198 = metadata !{i32 786688, metadata !199, metadata !"p", metadata !6, i32 33, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 33]
!199 = metadata !{i32 786443, metadata !192, i32 32, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!200 = metadata !{i32 786688, metadata !199, metadata !"n", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 34]
!201 = metadata !{i32 786688, metadata !199, metadata !"l", metadata !6, i32 35, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 35]
!202 = metadata !{i32 786688, metadata !199, metadata !"c", metadata !6, i32 36, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 36]
!203 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_reset_pool", metadata !"ngx_reset_pool", metadata !"", metadata !6, i32 65, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_pool_s*)* @ngx_reset_pool, null, null, metadata !204, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [ngx_reset_pool]
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !206, metadata !207, metadata !209}
!206 = metadata !{i32 786689, metadata !203, metadata !"pool", metadata !6, i32 16777281, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 65]
!207 = metadata !{i32 786688, metadata !208, metadata !"p", metadata !6, i32 67, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 67]
!208 = metadata !{i32 786443, metadata !203, i32 66, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!209 = metadata !{i32 786688, metadata !208, metadata !"l", metadata !6, i32 68, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 68]
!210 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_palloc", metadata !"ngx_palloc", metadata !"", metadata !6, i32 80, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32)* @ngx_palloc, null, null, metadata !213, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [ngx_palloc]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!212 = metadata !{metadata !57, metadata !9, metadata !32}
!213 = metadata !{metadata !214}
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !219}
!215 = metadata !{i32 786689, metadata !210, metadata !"pool", metadata !6, i32 16777296, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 80]
!216 = metadata !{i32 786689, metadata !210, metadata !"size", metadata !6, i32 33554512, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 80]
!217 = metadata !{i32 786688, metadata !218, metadata !"m", metadata !6, i32 82, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 82]
!218 = metadata !{i32 786443, metadata !210, i32 81, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!219 = metadata !{i32 786688, metadata !218, metadata !"p", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 83]
!220 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pnalloc", metadata !"ngx_pnalloc", metadata !"", metadata !6, i32 99, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32)* @ngx_pnalloc, null, null, metadata !221, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [ngx_pnalloc]
!221 = metadata !{metadata !222}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !227}
!223 = metadata !{i32 786689, metadata !220, metadata !"pool", metadata !6, i32 16777315, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 99]
!224 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !6, i32 33554531, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 99]
!225 = metadata !{i32 786688, metadata !226, metadata !"m", metadata !6, i32 101, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 101]
!226 = metadata !{i32 786443, metadata !220, i32 100, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!227 = metadata !{i32 786688, metadata !226, metadata !"p", metadata !6, i32 102, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 102]
!228 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pmemalign", metadata !"ngx_pmemalign", metadata !"", metadata !6, i32 178, metadata !229, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32, i32)* @ngx_pmemalign, null, null, metadata !231, i32 179} ; [ DW_TAG_subprogram ] [line 178] [def] [scope 179] [ngx_pmemalign]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!230 = metadata !{metadata !57, metadata !9, metadata !32, metadata !32}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !233, metadata !234, metadata !235, metadata !236, metadata !238}
!233 = metadata !{i32 786689, metadata !228, metadata !"pool", metadata !6, i32 16777394, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 178]
!234 = metadata !{i32 786689, metadata !228, metadata !"size", metadata !6, i32 33554610, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 178]
!235 = metadata !{i32 786689, metadata !228, metadata !"alignment", metadata !6, i32 50331826, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alignment] [line 178]
!236 = metadata !{i32 786688, metadata !237, metadata !"p", metadata !6, i32 180, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 180]
!237 = metadata !{i32 786443, metadata !228, i32 179, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!238 = metadata !{i32 786688, metadata !237, metadata !"large", metadata !6, i32 181, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [large] [line 181]
!239 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pfree", metadata !"ngx_pfree", metadata !"", metadata !6, i32 197, metadata !240, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_pool_s*, i8*)* @ngx_pfree, null, null, metadata !245, i32 198} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 198] [ngx_pfree]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = metadata !{metadata !242, metadata !9, metadata !57}
!242 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!243 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!244 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!245 = metadata !{metadata !246}
!246 = metadata !{metadata !247, metadata !248, metadata !249}
!247 = metadata !{i32 786689, metadata !239, metadata !"pool", metadata !6, i32 16777413, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 197]
!248 = metadata !{i32 786689, metadata !239, metadata !"p", metadata !6, i32 33554629, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 197]
!249 = metadata !{i32 786688, metadata !250, metadata !"l", metadata !6, i32 199, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 199]
!250 = metadata !{i32 786443, metadata !239, i32 198, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!251 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pcalloc", metadata !"ngx_pcalloc", metadata !"", metadata !6, i32 211, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32)* @ngx_pcalloc, null, null, metadata !252, i32 212} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 212] [ngx_pcalloc]
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !254, metadata !255, metadata !256}
!254 = metadata !{i32 786689, metadata !251, metadata !"pool", metadata !6, i32 16777427, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 211]
!255 = metadata !{i32 786689, metadata !251, metadata !"size", metadata !6, i32 33554643, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 211]
!256 = metadata !{i32 786688, metadata !257, metadata !"p", metadata !6, i32 213, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 213]
!257 = metadata !{i32 786443, metadata !251, i32 212, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!258 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pool_cleanup_add", metadata !"ngx_pool_cleanup_add", metadata !"", metadata !6, i32 221, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ngx_pool_cleanup_s* (%struct.ngx_pool_s*, i32)* @ngx_pool_cleanup_add, null, null, metadata !261, i32 222} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 222] [ngx_pool_cleanup_add]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{metadata !174, metadata !9, metadata !32}
!261 = metadata !{metadata !262}
!262 = metadata !{metadata !263, metadata !264, metadata !265}
!263 = metadata !{i32 786689, metadata !258, metadata !"p", metadata !6, i32 16777437, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 221]
!264 = metadata !{i32 786689, metadata !258, metadata !"size", metadata !6, i32 33554653, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 221]
!265 = metadata !{i32 786688, metadata !266, metadata !"c", metadata !6, i32 223, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 223]
!266 = metadata !{i32 786443, metadata !258, i32 222, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!267 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pool_run_cleanup_file", metadata !"ngx_pool_run_cleanup_file", metadata !"", metadata !6, i32 244, metadata !268, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_pool_s*, i32)* @ngx_pool_run_cleanup_file, null, null, metadata !270, i32 245} ; [ DW_TAG_subprogram ] [line 244] [def] [scope 245] [ngx_pool_run_cleanup_file]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!269 = metadata !{null, metadata !9, metadata !65}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !276}
!272 = metadata !{i32 786689, metadata !267, metadata !"p", metadata !6, i32 16777460, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 244]
!273 = metadata !{i32 786689, metadata !267, metadata !"fd", metadata !6, i32 33554676, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 244]
!274 = metadata !{i32 786688, metadata !275, metadata !"c", metadata !6, i32 246, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 246]
!275 = metadata !{i32 786443, metadata !267, i32 245, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!276 = metadata !{i32 786688, metadata !275, metadata !"cf", metadata !6, i32 247, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 247]
!277 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_file_t]
!278 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_file_t", metadata !6, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !279} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_file_t] [line 72, size 0, align 0, offset 0] [from ]
!279 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 68, i64 96, i64 32, i32 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 68, size 96, align 32, offset 0] [from ]
!280 = metadata !{metadata !281, metadata !282, metadata !283}
!281 = metadata !{i32 786445, metadata !279, metadata !"fd", metadata !12, i32 69, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [fd] [line 69, size 32, align 32, offset 0] [from ngx_fd_t]
!282 = metadata !{i32 786445, metadata !279, metadata !"name", metadata !12, i32 70, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [name] [line 70, size 32, align 32, offset 32] [from ]
!283 = metadata !{i32 786445, metadata !279, metadata !"log", metadata !12, i32 71, i64 32, i64 32, i64 64, i32 0, metadata !118} ; [ DW_TAG_member ] [log] [line 71, size 32, align 32, offset 64] [from ]
!284 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pool_cleanup_file", metadata !"ngx_pool_cleanup_file", metadata !"", metadata !6, i32 260, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ngx_pool_cleanup_file, null, null, metadata !285, i32 261} ; [ DW_TAG_subprogram ] [line 260] [def] [scope 261] [ngx_pool_cleanup_file]
!285 = metadata !{metadata !286}
!286 = metadata !{metadata !287, metadata !288}
!287 = metadata !{i32 786689, metadata !284, metadata !"data", metadata !6, i32 16777476, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 260]
!288 = metadata !{i32 786688, metadata !289, metadata !"c", metadata !6, i32 262, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 262]
!289 = metadata !{i32 786443, metadata !284, i32 261, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!290 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_pool_delete_file", metadata !"ngx_pool_delete_file", metadata !"", metadata !6, i32 270, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ngx_pool_delete_file, null, null, metadata !291, i32 271} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 271] [ngx_pool_delete_file]
!291 = metadata !{metadata !292}
!292 = metadata !{metadata !293, metadata !294, metadata !296}
!293 = metadata !{i32 786689, metadata !290, metadata !"data", metadata !6, i32 16777486, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 270]
!294 = metadata !{i32 786688, metadata !295, metadata !"c", metadata !6, i32 272, metadata !277, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 272]
!295 = metadata !{i32 786443, metadata !290, i32 271, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!296 = metadata !{i32 786688, metadata !295, metadata !"err", metadata !6, i32 273, metadata !297, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 273]
!297 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!298 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_palloc_large", metadata !"ngx_palloc_large", metadata !"", metadata !6, i32 148, metadata !211, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32)* @ngx_palloc_large, null, null, metadata !299, i32 149} ; [ DW_TAG_subprogram ] [line 148] [local] [def] [scope 149] [ngx_palloc_large]
!299 = metadata !{metadata !300}
!300 = metadata !{metadata !301, metadata !302, metadata !303, metadata !305, metadata !306}
!301 = metadata !{i32 786689, metadata !298, metadata !"pool", metadata !6, i32 16777364, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 148]
!302 = metadata !{i32 786689, metadata !298, metadata !"size", metadata !6, i32 33554580, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 148]
!303 = metadata !{i32 786688, metadata !304, metadata !"p", metadata !6, i32 150, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 150]
!304 = metadata !{i32 786443, metadata !298, i32 149, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!305 = metadata !{i32 786688, metadata !304, metadata !"n", metadata !6, i32 151, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 151]
!306 = metadata !{i32 786688, metadata !304, metadata !"large", metadata !6, i32 152, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [large] [line 152]
!307 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_palloc_block", metadata !"ngx_palloc_block", metadata !"", metadata !6, i32 118, metadata !211, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, i32)* @ngx_palloc_block, null, null, metadata !308, i32 119} ; [ DW_TAG_subprogram ] [line 118] [local] [def] [scope 119] [ngx_palloc_block]
!308 = metadata !{metadata !309}
!309 = metadata !{metadata !310, metadata !311, metadata !312, metadata !314, metadata !315, metadata !316, metadata !317}
!310 = metadata !{i32 786689, metadata !307, metadata !"pool", metadata !6, i32 16777334, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 118]
!311 = metadata !{i32 786689, metadata !307, metadata !"size", metadata !6, i32 33554550, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 118]
!312 = metadata !{i32 786688, metadata !313, metadata !"m", metadata !6, i32 120, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 120]
!313 = metadata !{i32 786443, metadata !307, i32 119, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!314 = metadata !{i32 786688, metadata !313, metadata !"psize", metadata !6, i32 121, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psize] [line 121]
!315 = metadata !{i32 786688, metadata !313, metadata !"p", metadata !6, i32 122, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 122]
!316 = metadata !{i32 786688, metadata !313, metadata !"new", metadata !6, i32 123, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 123]
!317 = metadata !{i32 786688, metadata !313, metadata !"current", metadata !6, i32 124, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 124]
!318 = metadata !{i32 10, i32 0, metadata !5, null}
!319 = metadata !{i32 13, i32 0, metadata !191, null}
!320 = metadata !{i32 14, i32 0, metadata !191, null}
!321 = metadata !{i32 17, i32 0, metadata !191, null}
!322 = metadata !{metadata !"any pointer", metadata !323}
!323 = metadata !{metadata !"omnipotent char", metadata !324}
!324 = metadata !{metadata !"Simple C/C++ TBAA"}
!325 = metadata !{i32 18, i32 0, metadata !191, null}
!326 = metadata !{i32 19, i32 0, metadata !191, null}
!327 = metadata !{i32 20, i32 0, metadata !191, null}
!328 = metadata !{metadata !"int", metadata !323}
!329 = metadata !{i32 21, i32 0, metadata !191, null}
!330 = metadata !{i32 22, i32 0, metadata !191, null}
!331 = metadata !{i32 23, i32 0, metadata !191, null}
!332 = metadata !{i32 24, i32 0, metadata !191, null}
!333 = metadata !{i32 25, i32 0, metadata !191, null}
!334 = metadata !{i32 26, i32 0, metadata !191, null}
!335 = metadata !{i32 27, i32 0, metadata !191, null}
!336 = metadata !{i32 28, i32 0, metadata !191, null}
!337 = metadata !{i32 29, i32 0, metadata !191, null}
!338 = metadata !{i32 31, i32 0, metadata !192, null}
!339 = metadata !{i32 37, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !199, i32 37, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!341 = metadata !{i32 38, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !340, i32 37, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!343 = metadata !{i32 40, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !342, i32 38, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!345 = metadata !{i32 41, i32 0, metadata !344, null}
!346 = metadata !{i32 43, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !199, i32 43, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!348 = metadata !{i32 45, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !347, i32 43, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!350 = metadata !{i32 46, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !349, i32 45, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!352 = metadata !{i32 47, i32 0, metadata !351, null}
!353 = metadata !{i32 57, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !199, i32 57, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!355 = metadata !{i32 58, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !354, i32 57, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!357 = metadata !{i32 59, i32 0, metadata !356, null}
!358 = metadata !{i32 63, i32 0, metadata !199, null}
!359 = metadata !{i32 65, i32 0, metadata !203, null}
!360 = metadata !{i32 69, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !208, i32 69, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!362 = metadata !{i32 74, i32 0, metadata !208, null}
!363 = metadata !{i32 75, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !208, i32 75, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!365 = metadata !{i32 70, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !361, i32 69, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!367 = metadata !{i32 71, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !366, i32 70, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!369 = metadata !{i32 72, i32 0, metadata !368, null}
!370 = metadata !{i32 76, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !364, i32 75, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!372 = metadata !{i32 78, i32 0, metadata !208, null}
!373 = metadata !{i32 80, i32 0, metadata !210, null}
!374 = metadata !{i32 84, i32 0, metadata !218, null}
!375 = metadata !{i32 85, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !218, i32 84, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!377 = metadata !{i32 86, i32 0, metadata !376, null}
!378 = metadata !{i32 87, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !376, i32 86, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!380 = metadata !{i32 88, i32 0, metadata !379, null}
!381 = metadata !{i32 89, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !379, i32 88, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!383 = metadata !{i32 90, i32 0, metadata !382, null}
!384 = metadata !{i32 92, i32 0, metadata !379, null}
!385 = metadata !{i32 93, i32 0, metadata !379, null}
!386 = metadata !{i32 94, i32 0, metadata !376, null}
!387 = metadata !{i32 96, i32 0, metadata !218, null}
!388 = metadata !{i32 97, i32 0, metadata !218, null}
!389 = metadata !{i32 118, i32 0, metadata !307, null}
!390 = metadata !{i32 125, i32 0, metadata !313, null}
!391 = metadata !{i32 126, i32 0, metadata !313, null}
!392 = metadata !{i32 127, i32 0, metadata !313, null}
!393 = metadata !{i32 130, i32 0, metadata !313, null}
!394 = metadata !{i32 131, i32 0, metadata !313, null}
!395 = metadata !{i32 132, i32 0, metadata !313, null}
!396 = metadata !{i32 133, i32 0, metadata !313, null}
!397 = metadata !{i32 134, i32 0, metadata !313, null}
!398 = metadata !{i32 135, i32 0, metadata !313, null}
!399 = metadata !{i32 136, i32 0, metadata !313, null}
!400 = metadata !{i32 137, i32 0, metadata !313, null}
!401 = metadata !{i32 138, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !313, i32 138, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!403 = metadata !{i32 139, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !402, i32 138, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!405 = metadata !{i32 140, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !404, i32 139, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!407 = metadata !{i32 141, i32 0, metadata !406, null}
!408 = metadata !{i32 143, i32 0, metadata !313, null}
!409 = metadata !{i32 144, i32 0, metadata !313, null}
!410 = metadata !{i32 145, i32 0, metadata !313, null}
!411 = metadata !{i32 146, i32 0, metadata !313, null}
!412 = metadata !{i32 148, i32 0, metadata !298, null}
!413 = metadata !{i32 153, i32 0, metadata !304, null}
!414 = metadata !{i32 154, i32 0, metadata !304, null}
!415 = metadata !{i32 157, i32 0, metadata !304, null}
!416 = metadata !{i32 158, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !304, i32 158, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!418 = metadata !{i32 159, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !417, i32 158, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!420 = metadata !{i32 160, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !419, i32 159, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!422 = metadata !{i32 161, i32 0, metadata !421, null}
!423 = metadata !{i32 163, i32 0, metadata !419, null}
!424 = metadata !{i32 167, i32 0, metadata !304, null}
!425 = metadata !{i32 168, i32 0, metadata !304, null}
!426 = metadata !{i32 169, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !304, i32 168, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!428 = metadata !{i32 170, i32 0, metadata !427, null}
!429 = metadata !{i32 172, i32 0, metadata !304, null}
!430 = metadata !{i32 173, i32 0, metadata !304, null}
!431 = metadata !{i32 174, i32 0, metadata !304, null}
!432 = metadata !{i32 175, i32 0, metadata !304, null}
!433 = metadata !{i32 176, i32 0, metadata !304, null}
!434 = metadata !{i32 99, i32 0, metadata !220, null}
!435 = metadata !{i32 103, i32 0, metadata !226, null}
!436 = metadata !{i32 104, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !226, i32 103, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!438 = metadata !{i32 105, i32 0, metadata !437, null}
!439 = metadata !{i32 106, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !437, i32 105, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!441 = metadata !{i32 107, i32 0, metadata !440, null}
!442 = metadata !{i32 108, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !440, i32 107, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!444 = metadata !{i32 109, i32 0, metadata !443, null}
!445 = metadata !{i32 111, i32 0, metadata !440, null}
!446 = metadata !{i32 112, i32 0, metadata !440, null}
!447 = metadata !{i32 113, i32 0, metadata !437, null}
!448 = metadata !{i32 115, i32 0, metadata !226, null}
!449 = metadata !{i32 116, i32 0, metadata !226, null}
!450 = metadata !{i32 178, i32 0, metadata !228, null}
!451 = metadata !{i32 182, i32 0, metadata !237, null}
!452 = metadata !{i32 183, i32 0, metadata !237, null}
!453 = metadata !{i32 186, i32 0, metadata !237, null}
!454 = metadata !{i32 187, i32 0, metadata !237, null}
!455 = metadata !{i32 188, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !237, i32 187, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!457 = metadata !{i32 189, i32 0, metadata !456, null}
!458 = metadata !{i32 191, i32 0, metadata !237, null}
!459 = metadata !{i32 192, i32 0, metadata !237, null}
!460 = metadata !{i32 193, i32 0, metadata !237, null}
!461 = metadata !{i32 194, i32 0, metadata !237, null}
!462 = metadata !{i32 195, i32 0, metadata !237, null}
!463 = metadata !{i32 197, i32 0, metadata !239, null}
!464 = metadata !{i32 200, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !250, i32 200, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!466 = metadata !{i32 201, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !465, i32 200, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!468 = metadata !{i32 203, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !467, i32 201, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!470 = metadata !{i32 204, i32 0, metadata !469, null}
!471 = metadata !{i32 205, i32 0, metadata !469, null}
!472 = metadata !{i32 209, i32 0, metadata !250, null}
!473 = metadata !{i32 211, i32 0, metadata !251, null}
!474 = metadata !{i32 214, i32 0, metadata !257, null}
!475 = metadata !{i32 215, i32 0, metadata !257, null}
!476 = metadata !{i32 216, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !257, i32 215, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!478 = metadata !{i32 217, i32 0, metadata !477, null}
!479 = metadata !{i32 218, i32 0, metadata !257, null}
!480 = metadata !{i32 221, i32 0, metadata !258, null}
!481 = metadata !{i32 224, i32 0, metadata !266, null}
!482 = metadata !{i32 225, i32 0, metadata !266, null}
!483 = metadata !{i32 228, i32 0, metadata !266, null}
!484 = metadata !{i32 229, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !266, i32 228, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!486 = metadata !{i32 230, i32 0, metadata !485, null}
!487 = metadata !{i32 235, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !266, i32 234, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!489 = metadata !{i32 237, i32 0, metadata !266, null}
!490 = metadata !{i32 238, i32 0, metadata !266, null}
!491 = metadata !{i32 239, i32 0, metadata !266, null}
!492 = metadata !{i32 241, i32 0, metadata !266, null}
!493 = metadata !{i32 242, i32 0, metadata !266, null}
!494 = metadata !{i32 244, i32 0, metadata !267, null}
!495 = metadata !{i32 248, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !275, i32 248, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!497 = metadata !{i32 249, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !496, i32 248, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!499 = metadata !{i32 250, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !498, i32 249, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!501 = metadata !{i32 251, i32 0, metadata !500, null}
!502 = metadata !{i32 786689, metadata !284, metadata !"data", metadata !6, i32 16777476, metadata !57, i32 0, metadata !503} ; [ DW_TAG_arg_variable ] [data] [line 260]
!503 = metadata !{i32 252, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !500, i32 251, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!505 = metadata !{i32 260, i32 0, metadata !284, metadata !503}
!506 = metadata !{i32 264, i32 0, metadata !289, metadata !503}
!507 = metadata !{i32 265, i32 0, metadata !508, metadata !503}
!508 = metadata !{i32 786443, metadata !289, i32 264, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!509 = metadata !{i32 266, i32 0, metadata !508, metadata !503}
!510 = metadata !{i32 253, i32 0, metadata !504, null}
!511 = metadata !{i32 254, i32 0, metadata !504, null}
!512 = metadata !{i32 258, i32 0, metadata !275, null}
!513 = metadata !{i32 260, i32 0, metadata !284, null}
!514 = metadata !{i32 264, i32 0, metadata !289, null}
!515 = metadata !{i32 265, i32 0, metadata !508, null}
!516 = metadata !{i32 266, i32 0, metadata !508, null}
!517 = metadata !{i32 268, i32 0, metadata !289, null}
!518 = metadata !{i32 270, i32 0, metadata !290, null}
!519 = metadata !{i32 275, i32 0, metadata !295, null}
!520 = metadata !{i32 276, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !295, i32 275, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!522 = metadata !{i32 277, i32 0, metadata !521, null}
!523 = metadata !{i32 278, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !521, i32 277, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!525 = metadata !{i32 279, i32 0, metadata !524, null}
!526 = metadata !{i32 282, i32 0, metadata !295, null}
!527 = metadata !{i32 283, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !295, i32 282, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_palloc.c]
!529 = metadata !{i32 284, i32 0, metadata !528, null}
!530 = metadata !{i32 286, i32 0, metadata !295, null}
