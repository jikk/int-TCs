; ModuleID = 'src/core/ngx_hash.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_hash_t = type { %struct.ngx_hash_elt_t**, i32 }
%struct.ngx_hash_elt_t = type { i8*, i16, [1 x i8] }
%struct.ngx_hash_wildcard_t = type { %struct.ngx_hash_t, i8* }
%struct.ngx_hash_combined_t = type { %struct.ngx_hash_t, %struct.ngx_hash_wildcard_t*, %struct.ngx_hash_wildcard_t* }
%struct.ngx_hash_init_t = type { %struct.ngx_hash_t*, i32 (i8*, i32)*, i32, i32, i8*, %struct.ngx_pool_s*, %struct.ngx_pool_s* }
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
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i32, i8* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_hash_keys_arrays_t = type { i32, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s* }

@0 = internal unnamed_addr constant [4 x i8] c"int\00"
@1 = internal unnamed_addr constant [10 x i8] c"uintptr_t\00"
@.str = private unnamed_addr constant [63 x i8] c"could not build the %s, you should increase %s_bucket_size: %i\00", align 1
@2 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@.str1 = private unnamed_addr constant [89 x i8] c"could not build the %s, you should increase either %s_max_size: %i or %s_bucket_size: %i\00", align 1
@ngx_cacheline_size = external global i32
@3 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@4 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@5 = internal unnamed_addr constant [8 x i8] c"u_short\00"
@6 = internal unnamed_addr constant [15 x i8] c"unsigned short\00"
@7 = internal unnamed_addr constant [3 x i8] c"-=\00"
@8 = internal unnamed_addr constant [2 x i8] c"+\00"
@9 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@10 = internal unnamed_addr constant [3 x i8] c"+=\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@12 = internal unnamed_addr constant [2 x i8] c"-\00"
@13 = internal unnamed_addr constant [20 x i8] c"src/core/ngx_hash.c\00"
@14 = internal unnamed_addr constant [2 x i8] c"*\00"
@15 = internal unnamed_addr constant [21 x i8] c"src/core/ngx_array.h\00"

define i8* @ngx_hash_find(%struct.ngx_hash_t* nocapture %hash, i32 %key, i8* nocapture %name, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_t* %hash}, i64 0, metadata !41), !dbg !415
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !42), !dbg !415
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !43), !dbg !415
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !44), !dbg !415
  %size = getelementptr inbounds %struct.ngx_hash_t* %hash, i32 0, i32 1, !dbg !416
  %0 = load i32* %size, align 4, !dbg !416, !tbaa !417
  %1 = icmp eq i32 %0, 0, !dbg !416
  br i1 %1, label %trap, label %cont, !dbg !416

trap:                                             ; preds = %entry
  tail call void @llvm.trap() noreturn nounwind, !dbg !416
  unreachable, !dbg !416

cont:                                             ; preds = %entry
  %rem = urem i32 %key, %0, !dbg !416
  %buckets = getelementptr inbounds %struct.ngx_hash_t* %hash, i32 0, i32 0, !dbg !416
  %2 = load %struct.ngx_hash_elt_t*** %buckets, align 4, !dbg !416, !tbaa !420
  %arrayidx = getelementptr inbounds %struct.ngx_hash_elt_t** %2, i32 %rem, !dbg !416
  %3 = load %struct.ngx_hash_elt_t** %arrayidx, align 4, !dbg !416, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_elt_t* %3}, i64 0, metadata !47), !dbg !416
  %cmp = icmp eq %struct.ngx_hash_elt_t* %3, null, !dbg !421
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !421

while.cond.preheader:                             ; preds = %cont
  %value51 = getelementptr inbounds %struct.ngx_hash_elt_t* %3, i32 0, i32 0, !dbg !422
  %4 = load i8** %value51, align 4, !dbg !422, !tbaa !420
  %tobool52 = icmp eq i8* %4, null, !dbg !422
  br i1 %tobool52, label %return, label %while.body.lr.ph, !dbg !422

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp746 = icmp eq i32 %len, 0, !dbg !423
  br label %while.body, !dbg !422

while.body:                                       ; preds = %while.body.lr.ph, %cont34
  %5 = phi i8* [ %4, %while.body.lr.ph ], [ %20, %cont34 ]
  %value54 = phi i8** [ %value51, %while.body.lr.ph ], [ %value, %cont34 ]
  %elt.053 = phi %struct.ngx_hash_elt_t* [ %3, %while.body.lr.ph ], [ %19, %cont34 ]
  %len1 = getelementptr inbounds %struct.ngx_hash_elt_t* %elt.053, i32 0, i32 1, !dbg !426
  %6 = load i16* %len1, align 2, !dbg !426, !tbaa !427
  %conv = zext i16 %6 to i32, !dbg !426
  %cmp2 = icmp eq i32 %conv, %len, !dbg !426
  br i1 %cmp2, label %for.cond.preheader, label %next, !dbg !426

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp746, label %return, label %for.body, !dbg !423

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %i.047 = phi i32 [ %10, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx9 = getelementptr inbounds i8* %name, i32 %i.047, !dbg !428
  %7 = load i8* %arrayidx9, align 1, !dbg !428, !tbaa !418
  %arrayidx12 = getelementptr inbounds %struct.ngx_hash_elt_t* %elt.053, i32 0, i32 2, i32 %i.047, !dbg !428
  %8 = load i8* %arrayidx12, align 1, !dbg !428, !tbaa !418
  %cmp14 = icmp eq i8 %7, %8, !dbg !428
  br i1 %cmp14, label %for.inc, label %next.loopexit, !dbg !428

for.inc:                                          ; preds = %for.body
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.047, i32 1), !dbg !423
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !423
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !423
  br i1 %11, label %ioc_bb18, label %for.cond.backedge, !dbg !423

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb18
  %cmp7 = icmp ult i32 %10, %len, !dbg !423
  br i1 %cmp7, label %for.body, label %for.cond.for.end_crit_edge, !dbg !423

ioc_bb18:                                         ; preds = %for.inc
  %12 = zext i32 %i.047 to i64, !dbg !423
  tail call void @__ioc_report_add_overflow(i32 22, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !423
  br label %for.cond.backedge, !dbg !423

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre58 = load i8** %value54, align 4, !dbg !430, !tbaa !420
  br label %return, !dbg !423

next.loopexit:                                    ; preds = %for.body
  %.pre = load i16* %len1, align 2, !dbg !431, !tbaa !427
  br label %next

next:                                             ; preds = %next.loopexit, %while.body
  %13 = phi i16 [ %.pre, %next.loopexit ], [ %6, %while.body ]
  %conv24 = zext i16 %13 to i32, !dbg !431
  %add.ptr = getelementptr inbounds %struct.ngx_hash_elt_t* %elt.053, i32 0, i32 2, i32 %conv24, !dbg !431
  %14 = ptrtoint i8* %add.ptr to i32, !dbg !431
  %15 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %14, i32 3), !dbg !431
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !431
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !431
  br i1 %17, label %ioc_bb29, label %cont34, !dbg !431

ioc_bb29:                                         ; preds = %next
  %18 = zext i32 %14 to i64, !dbg !431
  tail call void @__ioc_report_add_overflow(i32 29, i32 87, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %18, i64 3, i8 5) nounwind, !dbg !431
  br label %cont34, !dbg !431

cont34:                                           ; preds = %next, %ioc_bb29
  %and = and i32 %16, -4, !dbg !431
  %19 = inttoptr i32 %and to %struct.ngx_hash_elt_t*, !dbg !431
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_elt_t* %19}, i64 0, metadata !47), !dbg !431
  %value = getelementptr inbounds %struct.ngx_hash_elt_t* %19, i32 0, i32 0, !dbg !422
  %20 = load i8** %value, align 4, !dbg !422, !tbaa !420
  %tobool = icmp eq i8* %20, null, !dbg !422
  br i1 %tobool, label %return, label %while.body, !dbg !422

return:                                           ; preds = %while.cond.preheader, %cont34, %for.cond.for.end_crit_edge, %for.cond.preheader, %cont
  %retval.0 = phi i8* [ null, %cont ], [ %.pre58, %for.cond.for.end_crit_edge ], [ %5, %for.cond.preheader ], [ null, %cont34 ], [ null, %while.cond.preheader ]
  ret i8* %retval.0, !dbg !432
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.trap() noreturn nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i8* @ngx_hash_find_wc_head(%struct.ngx_hash_wildcard_t* nocapture %hwc, i8* nocapture %name, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_wildcard_t* %hwc}, i64 0, metadata !59), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !60), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !61), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !65), !dbg !434
  %tobool106 = icmp eq i32 %len, 0, !dbg !435
  br i1 %tobool106, label %for.cond.preheader, label %cont, !dbg !435

for.cond.preheader:                               ; preds = %while.cond.backedge, %cont2, %entry
  %tobool.lcssa = phi i1 [ true, %entry ], [ false, %cont2 ], [ true, %while.cond.backedge ]
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %n.0107, %cont2 ], [ 0, %while.cond.backedge ]
  %cmp8103 = icmp ult i32 %n.0.lcssa, %len, !dbg !436
  br i1 %cmp8103, label %cont11, label %for.end, !dbg !436

cont:                                             ; preds = %entry, %while.cond.backedge
  %n.0107 = phi i32 [ %1, %while.cond.backedge ], [ %len, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.0107, i32 1), !dbg !438
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !438
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !438
  %3 = zext i32 %n.0107 to i64, !dbg !438
  br i1 %2, label %ioc_bb1, label %cont2, !dbg !438

ioc_bb1:                                          ; preds = %cont
  tail call void @__ioc_report_sub_overflow(i32 45, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !438
  br label %cont2, !dbg !438

cont2:                                            ; preds = %cont, %ioc_bb1
  %arrayidx = getelementptr inbounds i8* %name, i32 %1, !dbg !438
  %4 = load i8* %arrayidx, align 1, !dbg !438, !tbaa !418
  %cmp = icmp eq i8 %4, 46, !dbg !438
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !438

if.end:                                           ; preds = %cont2
  br i1 %2, label %ioc_bb4, label %while.cond.backedge, !dbg !440

while.cond.backedge:                              ; preds = %if.end, %ioc_bb4
  %tobool = icmp eq i32 %1, 0, !dbg !435
  br i1 %tobool, label %for.cond.preheader, label %cont, !dbg !435

ioc_bb4:                                          ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 48, i32 6, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !440
  br label %while.cond.backedge, !dbg !440

cont11:                                           ; preds = %for.cond.preheader, %for.cond.backedge
  %key.0105 = phi i32 [ %11, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %i.0104 = phi i32 [ %16, %for.cond.backedge ], [ %n.0.lcssa, %for.cond.preheader ]
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.0105, i32 31), !dbg !441
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !441
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !441
  br i1 %7, label %ioc_bb12, label %cont13, !dbg !441

ioc_bb12:                                         ; preds = %cont11
  %8 = zext i32 %key.0105 to i64, !dbg !441
  tail call void @__ioc_report_mul_overflow(i32 52, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %8, i64 31, i8 5) nounwind, !dbg !441
  br label %cont13, !dbg !441

cont13:                                           ; preds = %cont11, %ioc_bb12
  %arrayidx14 = getelementptr inbounds i8* %name, i32 %i.0104, !dbg !441
  %9 = load i8* %arrayidx14, align 1, !dbg !441, !tbaa !418
  %conv15 = zext i8 %9 to i32, !dbg !441
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 %conv15), !dbg !441
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !441
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !441
  br i1 %12, label %ioc_bb16, label %cont17, !dbg !441

ioc_bb16:                                         ; preds = %cont13
  %13 = zext i8 %9 to i64, !dbg !441
  %14 = zext i32 %6 to i64, !dbg !441
  tail call void @__ioc_report_add_overflow(i32 52, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %14, i64 %13, i8 5) nounwind, !dbg !441
  br label %cont17, !dbg !441

cont17:                                           ; preds = %cont13, %ioc_bb16
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !66), !dbg !441
  %15 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0104, i32 1), !dbg !436
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !436
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !436
  br i1 %17, label %ioc_bb18, label %for.cond.backedge, !dbg !436

for.cond.backedge:                                ; preds = %cont17, %ioc_bb18
  %cmp8 = icmp ult i32 %16, %len, !dbg !436
  br i1 %cmp8, label %cont11, label %for.end, !dbg !436

ioc_bb18:                                         ; preds = %cont17
  %18 = zext i32 %i.0104 to i64, !dbg !436
  tail call void @__ioc_report_add_overflow(i32 51, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %18, i64 1, i8 5) nounwind, !dbg !436
  br label %for.cond.backedge, !dbg !436

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %key.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %11, %for.cond.backedge ]
  %hash = getelementptr inbounds %struct.ngx_hash_wildcard_t* %hwc, i32 0, i32 0, !dbg !443
  %arrayidx20 = getelementptr inbounds i8* %name, i32 %n.0.lcssa, !dbg !443
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len, i32 %n.0.lcssa), !dbg !443
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !443
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !443
  %22 = zext i32 %n.0.lcssa to i64, !dbg !443
  br i1 %21, label %ioc_bb21, label %cont22, !dbg !443

ioc_bb21:                                         ; preds = %for.end
  %23 = zext i32 %len to i64, !dbg !443
  tail call void @__ioc_report_sub_overflow(i32 56, i32 55, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %23, i64 %22, i8 5) nounwind, !dbg !443
  br label %cont22, !dbg !443

cont22:                                           ; preds = %for.end, %ioc_bb21
  %call = tail call i8* @ngx_hash_find(%struct.ngx_hash_t* %hash, i32 %key.0.lcssa, i8* %arrayidx20, i32 %20), !dbg !443
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !62), !dbg !443
  %tobool23 = icmp eq i8* %call, null, !dbg !444
  br i1 %tobool23, label %if.end73, label %if.then24, !dbg !444

if.then24:                                        ; preds = %cont22
  %24 = ptrtoint i8* %call to i32, !dbg !445
  %and = and i32 %24, 2, !dbg !445
  %tobool27 = icmp eq i32 %and, 0, !dbg !445
  br i1 %tobool27, label %cont59, label %cont30, !dbg !445

cont30:                                           ; preds = %if.then24
  br i1 %tobool.lcssa, label %cont35, label %ioc_bb45, !dbg !447

cont35:                                           ; preds = %cont30
  %and36 = and i32 %24, 1, !dbg !449
  %tobool37 = icmp eq i32 %and36, 0, !dbg !449
  br i1 %tobool37, label %ioc_bb40, label %return, !dbg !449

ioc_bb40:                                         ; preds = %cont35
  tail call void @__ioc_report_conversion(i32 76, i32 75, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i64 -4, i8 1) nounwind, !dbg !451
  %and42 = and i32 %24, -4, !dbg !451
  %25 = inttoptr i32 %and42 to %struct.ngx_hash_wildcard_t*, !dbg !451
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_wildcard_t* %25}, i64 0, metadata !59), !dbg !451
  %value43 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %25, i32 0, i32 1, !dbg !452
  %26 = load i8** %value43, align 4, !dbg !452, !tbaa !420
  br label %return, !dbg !452

ioc_bb45:                                         ; preds = %cont30
  tail call void @__ioc_report_conversion(i32 79, i32 73, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i64 -4, i8 1) nounwind, !dbg !453
  %and47 = and i32 %24, -4, !dbg !453
  %27 = inttoptr i32 %and47 to %struct.ngx_hash_wildcard_t*, !dbg !453
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_wildcard_t* %27}, i64 0, metadata !59), !dbg !453
  %28 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.0.lcssa, i32 1), !dbg !454
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !454
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !454
  br i1 %30, label %ioc_bb50, label %cont51, !dbg !454

ioc_bb50:                                         ; preds = %ioc_bb45
  tail call void @__ioc_report_sub_overflow(i32 80, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %22, i64 1, i8 5) nounwind, !dbg !454
  br label %cont51, !dbg !454

cont51:                                           ; preds = %ioc_bb45, %ioc_bb50
  %call52 = tail call i8* @ngx_hash_find_wc_head(%struct.ngx_hash_wildcard_t* %27, i8* %name, i32 %29), !dbg !454
  tail call void @llvm.dbg.value(metadata !{i8* %call52}, i64 0, metadata !62), !dbg !454
  %tobool53 = icmp eq i8* %call52, null, !dbg !455
  br i1 %tobool53, label %if.end55, label %return, !dbg !455

if.end55:                                         ; preds = %cont51
  %value56 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %27, i32 0, i32 1, !dbg !456
  %31 = load i8** %value56, align 4, !dbg !456, !tbaa !420
  br label %return, !dbg !456

cont59:                                           ; preds = %if.then24
  %and60 = and i32 %24, 1, !dbg !457
  %tobool61 = icmp eq i32 %and60, 0, !dbg !457
  %brmerge = or i1 %tobool61, %tobool.lcssa, !dbg !457
  %call.mux = select i1 %tobool61, i8* %call, i8* null, !dbg !457
  br i1 %brmerge, label %return, label %ioc_bb69, !dbg !457

ioc_bb69:                                         ; preds = %cont59
  tail call void @__ioc_report_conversion(i32 91, i32 58, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i64 -4, i8 1) nounwind, !dbg !458
  %and71 = and i32 %24, -4, !dbg !458
  %32 = inttoptr i32 %and71 to i8*, !dbg !458
  br label %return, !dbg !458

if.end73:                                         ; preds = %cont22
  %value74 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %hwc, i32 0, i32 1, !dbg !460
  %33 = load i8** %value74, align 4, !dbg !460, !tbaa !420
  br label %return, !dbg !460

return:                                           ; preds = %cont59, %cont51, %cont35, %if.end73, %ioc_bb69, %if.end55, %ioc_bb40
  %retval.0 = phi i8* [ %26, %ioc_bb40 ], [ %31, %if.end55 ], [ %32, %ioc_bb69 ], [ %33, %if.end73 ], [ null, %cont35 ], [ %call52, %cont51 ], [ %call.mux, %cont59 ]
  ret i8* %retval.0, !dbg !461
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i8* @ngx_hash_find_wc_tail(%struct.ngx_hash_wildcard_t* nocapture %hwc, i8* nocapture %name, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_wildcard_t* %hwc}, i64 0, metadata !70), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !71), !dbg !462
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !72), !dbg !462
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !463
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !464
  %cmp62 = icmp eq i32 %len, 0, !dbg !464
  br i1 %cmp62, label %for.end, label %for.body, !dbg !464

for.body:                                         ; preds = %entry, %for.cond.backedge
  %key.064 = phi i32 [ %7, %for.cond.backedge ], [ 0, %entry ]
  %i.063 = phi i32 [ %12, %for.cond.backedge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %name, i32 %i.063, !dbg !466
  %0 = load i8* %arrayidx, align 1, !dbg !466, !tbaa !418
  %cmp3 = icmp eq i8 %0, 46, !dbg !466
  br i1 %cmp3, label %for.end, label %cont6, !dbg !466

cont6:                                            ; preds = %for.body
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.064, i32 31), !dbg !468
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !468
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !468
  br i1 %3, label %ioc_bb7, label %cont8, !dbg !468

ioc_bb7:                                          ; preds = %cont6
  %4 = zext i32 %key.064 to i64, !dbg !468
  tail call void @__ioc_report_mul_overflow(i32 110, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %4, i64 31, i8 5) nounwind, !dbg !468
  %.pre = load i8* %arrayidx, align 1, !dbg !468, !tbaa !418
  br label %cont8, !dbg !468

cont8:                                            ; preds = %cont6, %ioc_bb7
  %5 = phi i8 [ %0, %cont6 ], [ %.pre, %ioc_bb7 ]
  %conv10 = zext i8 %5 to i32, !dbg !468
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %conv10), !dbg !468
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !468
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !468
  br i1 %8, label %ioc_bb11, label %cont12, !dbg !468

ioc_bb11:                                         ; preds = %cont8
  %9 = zext i8 %5 to i64, !dbg !468
  %10 = zext i32 %2 to i64, !dbg !468
  tail call void @__ioc_report_add_overflow(i32 110, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %10, i64 %9, i8 5) nounwind, !dbg !468
  br label %cont12, !dbg !468

cont12:                                           ; preds = %cont8, %ioc_bb11
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !76), !dbg !468
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.063, i32 1), !dbg !464
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !464
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !464
  br i1 %13, label %ioc_bb13, label %for.cond.backedge, !dbg !464

for.cond.backedge:                                ; preds = %cont12, %ioc_bb13
  %cmp = icmp ult i32 %12, %len, !dbg !464
  br i1 %cmp, label %for.body, label %for.end, !dbg !464

ioc_bb13:                                         ; preds = %cont12
  %14 = zext i32 %i.063 to i64, !dbg !464
  tail call void @__ioc_report_add_overflow(i32 106, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %14, i64 1, i8 5) nounwind, !dbg !464
  br label %for.cond.backedge, !dbg !464

for.end:                                          ; preds = %for.cond.backedge, %for.body, %entry
  %key.0.lcssa = phi i32 [ 0, %entry ], [ %key.064, %for.body ], [ %7, %for.cond.backedge ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.063, %for.body ], [ %12, %for.cond.backedge ]
  %cmp15 = icmp eq i32 %i.0.lcssa, %len, !dbg !469
  br i1 %cmp15, label %return, label %if.end18, !dbg !469

if.end18:                                         ; preds = %for.end
  %hash = getelementptr inbounds %struct.ngx_hash_wildcard_t* %hwc, i32 0, i32 0, !dbg !470
  %call = tail call i8* @ngx_hash_find(%struct.ngx_hash_t* %hash, i32 %key.0.lcssa, i8* %name, i32 %i.0.lcssa), !dbg !470
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !73), !dbg !470
  %tobool = icmp eq i8* %call, null, !dbg !471
  br i1 %tobool, label %if.end38, label %if.then19, !dbg !471

if.then19:                                        ; preds = %if.end18
  %15 = ptrtoint i8* %call to i32, !dbg !472
  %and = and i32 %15, 2, !dbg !472
  %tobool22 = icmp eq i32 %and, 0, !dbg !472
  br i1 %tobool22, label %return, label %if.then23, !dbg !472

if.then23:                                        ; preds = %if.then19
  %16 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0.lcssa, i32 1), !dbg !474
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !474
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !474
  br i1 %18, label %ioc_bb24, label %ioc_bb26, !dbg !474

ioc_bb24:                                         ; preds = %if.then23
  %19 = zext i32 %i.0.lcssa to i64, !dbg !474
  tail call void @__ioc_report_add_overflow(i32 127, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %19, i64 1, i8 5) nounwind, !dbg !474
  br label %ioc_bb26, !dbg !474

ioc_bb26:                                         ; preds = %ioc_bb24, %if.then23
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !75), !dbg !474
  tail call void @__ioc_report_conversion(i32 128, i32 73, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i64 -4, i8 1) nounwind, !dbg !476
  %and28 = and i32 %15, -4, !dbg !476
  %20 = inttoptr i32 %and28 to %struct.ngx_hash_wildcard_t*, !dbg !476
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_wildcard_t* %20}, i64 0, metadata !70), !dbg !476
  %arrayidx29 = getelementptr inbounds i8* %name, i32 %17, !dbg !477
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len, i32 %17), !dbg !477
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !477
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !477
  br i1 %23, label %ioc_bb30, label %cont31, !dbg !477

ioc_bb30:                                         ; preds = %ioc_bb26
  %24 = zext i32 %17 to i64, !dbg !477
  %25 = zext i32 %len to i64, !dbg !477
  tail call void @__ioc_report_sub_overflow(i32 129, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %25, i64 %24, i8 5) nounwind, !dbg !477
  br label %cont31, !dbg !477

cont31:                                           ; preds = %ioc_bb26, %ioc_bb30
  %call32 = tail call i8* @ngx_hash_find_wc_tail(%struct.ngx_hash_wildcard_t* %20, i8* %arrayidx29, i32 %22), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %call32}, i64 0, metadata !73), !dbg !477
  %tobool33 = icmp eq i8* %call32, null, !dbg !478
  br i1 %tobool33, label %if.end35, label %return, !dbg !478

if.end35:                                         ; preds = %cont31
  %value36 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %20, i32 0, i32 1, !dbg !479
  %26 = load i8** %value36, align 4, !dbg !479, !tbaa !420
  br label %return, !dbg !479

if.end38:                                         ; preds = %if.end18
  %value39 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %hwc, i32 0, i32 1, !dbg !480
  %27 = load i8** %value39, align 4, !dbg !480, !tbaa !420
  br label %return, !dbg !480

return:                                           ; preds = %if.then19, %cont31, %for.end, %if.end38, %if.end35
  %retval.0 = phi i8* [ %26, %if.end35 ], [ %27, %if.end38 ], [ null, %for.end ], [ %call32, %cont31 ], [ %call, %if.then19 ]
  ret i8* %retval.0, !dbg !481
}

define i8* @ngx_hash_find_combined(%struct.ngx_hash_combined_t* nocapture %hash, i32 %key, i8* nocapture %name, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_combined_t* %hash}, i64 0, metadata !89), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %key}, i64 0, metadata !90), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !91), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !92), !dbg !482
  %buckets = getelementptr inbounds %struct.ngx_hash_combined_t* %hash, i32 0, i32 0, i32 0, !dbg !483
  %0 = load %struct.ngx_hash_elt_t*** %buckets, align 4, !dbg !483, !tbaa !420
  %tobool = icmp eq %struct.ngx_hash_elt_t** %0, null, !dbg !483
  br i1 %tobool, label %cont, label %if.then, !dbg !483

if.then:                                          ; preds = %entry
  %hash1 = getelementptr inbounds %struct.ngx_hash_combined_t* %hash, i32 0, i32 0, !dbg !483
  %call = tail call i8* @ngx_hash_find(%struct.ngx_hash_t* %hash1, i32 %key, i8* %name, i32 %len), !dbg !484
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !93), !dbg !484
  %tobool3 = icmp eq i8* %call, null, !dbg !486
  br i1 %tobool3, label %cont, label %return, !dbg !486

cont:                                             ; preds = %entry, %if.then
  %cmp = icmp eq i32 %len, 0, !dbg !487
  br i1 %cmp, label %return, label %if.end7, !dbg !487

if.end7:                                          ; preds = %cont
  %wc_head = getelementptr inbounds %struct.ngx_hash_combined_t* %hash, i32 0, i32 1, !dbg !488
  %1 = load %struct.ngx_hash_wildcard_t** %wc_head, align 4, !dbg !488, !tbaa !420
  %tobool8 = icmp eq %struct.ngx_hash_wildcard_t* %1, null, !dbg !488
  br i1 %tobool8, label %if.end19, label %land.lhs.true, !dbg !488

land.lhs.true:                                    ; preds = %if.end7
  %buckets11 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %1, i32 0, i32 0, i32 0, !dbg !488
  %2 = load %struct.ngx_hash_elt_t*** %buckets11, align 4, !dbg !488, !tbaa !420
  %tobool12 = icmp eq %struct.ngx_hash_elt_t** %2, null, !dbg !488
  br i1 %tobool12, label %if.end19, label %if.then13, !dbg !488

if.then13:                                        ; preds = %land.lhs.true
  %call15 = tail call i8* @ngx_hash_find_wc_head(%struct.ngx_hash_wildcard_t* %1, i8* %name, i32 %len), !dbg !489
  tail call void @llvm.dbg.value(metadata !{i8* %call15}, i64 0, metadata !93), !dbg !489
  %tobool16 = icmp eq i8* %call15, null, !dbg !491
  br i1 %tobool16, label %if.end19, label %return, !dbg !491

if.end19:                                         ; preds = %if.then13, %land.lhs.true, %if.end7
  %wc_tail = getelementptr inbounds %struct.ngx_hash_combined_t* %hash, i32 0, i32 2, !dbg !492
  %3 = load %struct.ngx_hash_wildcard_t** %wc_tail, align 4, !dbg !492, !tbaa !420
  %tobool20 = icmp eq %struct.ngx_hash_wildcard_t* %3, null, !dbg !492
  br i1 %tobool20, label %if.end32, label %land.lhs.true21, !dbg !492

land.lhs.true21:                                  ; preds = %if.end19
  %buckets24 = getelementptr inbounds %struct.ngx_hash_wildcard_t* %3, i32 0, i32 0, i32 0, !dbg !492
  %4 = load %struct.ngx_hash_elt_t*** %buckets24, align 4, !dbg !492, !tbaa !420
  %tobool25 = icmp eq %struct.ngx_hash_elt_t** %4, null, !dbg !492
  br i1 %tobool25, label %if.end32, label %if.then26, !dbg !492

if.then26:                                        ; preds = %land.lhs.true21
  %call28 = tail call i8* @ngx_hash_find_wc_tail(%struct.ngx_hash_wildcard_t* %3, i8* %name, i32 %len), !dbg !493
  tail call void @llvm.dbg.value(metadata !{i8* %call28}, i64 0, metadata !93), !dbg !493
  %tobool29 = icmp eq i8* %call28, null, !dbg !495
  br i1 %tobool29, label %if.end32, label %return, !dbg !495

if.end32:                                         ; preds = %if.then26, %land.lhs.true21, %if.end19
  br label %return, !dbg !496

return:                                           ; preds = %if.then26, %if.then13, %cont, %if.then, %if.end32
  %retval.0 = phi i8* [ null, %if.end32 ], [ %call, %if.then ], [ null, %cont ], [ %call15, %if.then13 ], [ %call28, %if.then26 ]
  ret i8* %retval.0, !dbg !497
}

define i32 @ngx_hash_init(%struct.ngx_hash_init_t* nocapture %hinit, %struct.ngx_hash_key_t* nocapture %names, i32 %nelts) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_init_t* %hinit}, i64 0, metadata !292), !dbg !498
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_key_t* %names}, i64 0, metadata !293), !dbg !498
  tail call void @llvm.dbg.value(metadata !{i32 %nelts}, i64 0, metadata !294), !dbg !498
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !301), !dbg !499
  %cmp627 = icmp eq i32 %nelts, 0, !dbg !499
  br i1 %cmp627, label %for.end, label %for.body.lr.ph, !dbg !499

for.body.lr.ph:                                   ; preds = %entry
  %bucket_size1 = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 3, !dbg !501
  br label %for.body, !dbg !499

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %n.0628 = phi i32 [ 0, %for.body.lr.ph ], [ %24, %for.cond.backedge ]
  %0 = load i32* %bucket_size1, align 4, !dbg !501, !tbaa !417
  %len3 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.0628, i32 0, i32 0, !dbg !501
  %1 = load i32* %len3, align 4, !dbg !501, !tbaa !417
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 2), !dbg !501
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !501
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !501
  br i1 %4, label %ioc_bb6, label %cont11, !dbg !501

ioc_bb6:                                          ; preds = %for.body
  %5 = zext i32 %1 to i64, !dbg !501
  tail call void @__ioc_report_add_overflow(i32 183, i32 73, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %5, i64 2, i8 5) nounwind, !dbg !501
  br label %cont11, !dbg !501

cont11:                                           ; preds = %for.body, %ioc_bb6
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 3), !dbg !501
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !501
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !501
  br i1 %8, label %ioc_bb12, label %cont17, !dbg !501

ioc_bb12:                                         ; preds = %cont11
  %9 = zext i32 %3 to i64, !dbg !501
  tail call void @__ioc_report_add_overflow(i32 183, i32 77, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %9, i64 3, i8 5) nounwind, !dbg !501
  br label %cont17, !dbg !501

cont17:                                           ; preds = %cont11, %ioc_bb12
  %and = and i32 %7, -4, !dbg !501
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and, i32 4), !dbg !501
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !501
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !501
  br i1 %12, label %ioc_bb18, label %cont19, !dbg !501

ioc_bb18:                                         ; preds = %cont17
  %13 = zext i32 %and to i64, !dbg !501
  tail call void @__ioc_report_add_overflow(i32 183, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 4, i64 %13, i8 5) nounwind, !dbg !501
  br label %cont19, !dbg !501

cont19:                                           ; preds = %cont17, %ioc_bb18
  %14 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %11, i32 4), !dbg !501
  %15 = extractvalue { i32, i1 } %14, 0, !dbg !501
  %16 = extractvalue { i32, i1 } %14, 1, !dbg !501
  br i1 %16, label %ioc_bb20, label %cont21, !dbg !501

ioc_bb20:                                         ; preds = %cont19
  %17 = zext i32 %11 to i64, !dbg !501
  tail call void @__ioc_report_add_overflow(i32 183, i32 125, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %17, i64 4, i8 5) nounwind, !dbg !501
  br label %cont21, !dbg !501

cont21:                                           ; preds = %cont19, %ioc_bb20
  %cmp22 = icmp ult i32 %0, %15, !dbg !501
  br i1 %cmp22, label %if.then, label %for.inc, !dbg !501

if.then:                                          ; preds = %cont21
  %pool = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 5, !dbg !503
  %18 = load %struct.ngx_pool_s** %pool, align 4, !dbg !503, !tbaa !420
  %log = getelementptr inbounds %struct.ngx_pool_s* %18, i32 0, i32 6, !dbg !503
  %19 = load %struct.ngx_log_s** %log, align 4, !dbg !503, !tbaa !420
  %log_level = getelementptr inbounds %struct.ngx_log_s* %19, i32 0, i32 0, !dbg !503
  %20 = load i32* %log_level, align 4, !dbg !503, !tbaa !417
  %cmp25 = icmp eq i32 %20, 0, !dbg !503
  br i1 %cmp25, label %return, label %cont28, !dbg !503

cont28:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 4, !dbg !505
  %21 = load i8** %name, align 4, !dbg !505, !tbaa !420
  %22 = load i32* %bucket_size1, align 4, !dbg !505, !tbaa !417
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %19, i32 0, i8* getelementptr inbounds ([63 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %21, i32 %22) nounwind, !dbg !505
  br label %return, !dbg !505

for.inc:                                          ; preds = %cont21
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0628, i32 1), !dbg !499
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !499
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !499
  br i1 %25, label %ioc_bb36, label %for.cond.backedge, !dbg !499

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb36
  %cmp = icmp ult i32 %24, %nelts, !dbg !499
  br i1 %cmp, label %for.body, label %for.end, !dbg !499

ioc_bb36:                                         ; preds = %for.inc
  %26 = zext i32 %n.0628 to i64, !dbg !499
  tail call void @__ioc_report_add_overflow(i32 182, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind, !dbg !499
  br label %for.cond.backedge, !dbg !499

for.end:                                          ; preds = %for.cond.backedge, %entry
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 2, !dbg !506
  %27 = load i32* %max_size, align 4, !dbg !506, !tbaa !417
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 2), !dbg !506
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !506
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !506
  br i1 %30, label %ioc_bb38, label %cont39, !dbg !506

ioc_bb38:                                         ; preds = %for.end
  %31 = zext i32 %27 to i64, !dbg !506
  tail call void @__ioc_report_mul_overflow(i32 189, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %31, i64 2, i8 5) nounwind, !dbg !506
  br label %cont39, !dbg !506

cont39:                                           ; preds = %for.end, %ioc_bb38
  %pool40 = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 5, !dbg !506
  %32 = load %struct.ngx_pool_s** %pool40, align 4, !dbg !506, !tbaa !420
  %log41 = getelementptr inbounds %struct.ngx_pool_s* %32, i32 0, i32 6, !dbg !506
  %33 = load %struct.ngx_log_s** %log41, align 4, !dbg !506, !tbaa !420
  %call = tail call i8* @ngx_alloc(i32 %29, %struct.ngx_log_s* %33) nounwind, !dbg !506
  %34 = bitcast i8* %call to i16*, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i16* %34}, i64 0, metadata !298), !dbg !506
  %cmp42 = icmp eq i8* %call, null, !dbg !507
  br i1 %cmp42, label %return, label %if.end46, !dbg !507

if.end46:                                         ; preds = %cont39
  %bucket_size47 = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 3, !dbg !508
  %35 = load i32* %bucket_size47, align 4, !dbg !508, !tbaa !417
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %35, i32 4), !dbg !508
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !508
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !508
  br i1 %38, label %ioc_bb48, label %cont54, !dbg !508

ioc_bb48:                                         ; preds = %if.end46
  %39 = zext i32 %35 to i64, !dbg !508
  tail call void @__ioc_report_sub_overflow(i32 193, i32 38, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %39, i64 4, i8 5) nounwind, !dbg !508
  br label %cont54, !dbg !508

trap:                                             ; preds = %if.end93, %if.end188, %if.end364, %cont54
  tail call void @llvm.trap() noreturn nounwind, !dbg !509
  unreachable, !dbg !509

cont54:                                           ; preds = %ioc_bb48, %if.end46
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !305), !dbg !508
  %div = lshr i32 %37, 3, !dbg !509
  %40 = icmp eq i32 %div, 0, !dbg !509
  br i1 %40, label %trap, label %cont55, !dbg !509

cont55:                                           ; preds = %cont54
  %div56 = udiv i32 %nelts, %div, !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32 %div56}, i64 0, metadata !304), !dbg !509
  %tobool = icmp eq i32 %div56, 0, !dbg !510
  %.div56 = select i1 %tobool, i32 1, i32 %div56, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %.div56}, i64 0, metadata !304), !dbg !510
  %41 = load i32* %max_size, align 4, !dbg !511, !tbaa !417
  %cmp62 = icmp ugt i32 %41, 10000, !dbg !511
  %tobool63 = icmp ne i32 %nelts, 0, !dbg !511
  %or.cond = and i1 %cmp62, %tobool63, !dbg !511
  br i1 %or.cond, label %cont69, label %for.cond78.preheader, !dbg !511

cont69:                                           ; preds = %cont55
  %div67 = udiv i32 %41, %nelts, !dbg !511
  %cmp70 = icmp ult i32 %div67, 100, !dbg !511
  br i1 %cmp70, label %if.then71, label %for.cond78.preheader, !dbg !511

if.then71:                                        ; preds = %cont69
  %42 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %41, i32 1000), !dbg !512
  %43 = extractvalue { i32, i1 } %42, 0, !dbg !512
  %44 = extractvalue { i32, i1 } %42, 1, !dbg !512
  br i1 %44, label %ioc_bb75, label %for.cond78.preheader, !dbg !512

ioc_bb75:                                         ; preds = %if.then71
  %45 = zext i32 %41 to i64, !dbg !512
  tail call void @__ioc_report_sub_overflow(i32 197, i32 31, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %45, i64 1000, i8 5) nounwind, !dbg !512
  %.pre = load i32* %max_size, align 4, !dbg !514, !tbaa !417
  br label %for.cond78.preheader, !dbg !512

for.cond78.preheader:                             ; preds = %ioc_bb75, %if.then71, %cont69, %cont55
  %46 = phi i32 [ %41, %cont55 ], [ %41, %cont69 ], [ %41, %if.then71 ], [ %.pre, %ioc_bb75 ]
  %size.0.ph = phi i32 [ %.div56, %cont55 ], [ %.div56, %cont69 ], [ %43, %if.then71 ], [ %43, %ioc_bb75 ]
  %cmp80624 = icmp ult i32 %size.0.ph, %46, !dbg !514
  br i1 %cmp80624, label %for.body81.lr.ph, label %cont147, !dbg !514

for.body81.lr.ph:                                 ; preds = %for.cond78.preheader
  %47 = icmp ult i32 %37, 65536, !dbg !516
  %conv130 = and i32 %37, 65535, !dbg !516
  %48 = zext i32 %37 to i64, !dbg !516
  br label %for.body81, !dbg !514

for.body81:                                       ; preds = %for.body81.lr.ph, %for.cond78.backedge
  %size.0625 = phi i32 [ %size.0.ph, %for.body81.lr.ph ], [ %82, %for.cond78.backedge ]
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size.0625, i32 2), !dbg !520
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !520
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !520
  %52 = zext i32 %size.0625 to i64, !dbg !520
  br i1 %51, label %ioc_bb82, label %cont83, !dbg !520

ioc_bb82:                                         ; preds = %for.body81
  tail call void @__ioc_report_mul_overflow(i32 200, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %52, i64 2, i8 5) nounwind, !dbg !520
  br label %cont83, !dbg !520

cont83:                                           ; preds = %for.body81, %ioc_bb82
  tail call void @llvm.memset.p0i8.i32(i8* %call, i8 0, i32 %50, i32 2, i1 false), !dbg !520
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !301), !dbg !521
  br i1 %cmp627, label %for.cond165.preheader, label %for.body88.lr.ph, !dbg !521

for.body88.lr.ph:                                 ; preds = %cont83
  %53 = icmp eq i32 %size.0625, 0, !dbg !522
  br label %for.body88, !dbg !521

for.cond165.preheader:                            ; preds = %cont83, %for.cond86.backedge
  %cmp166609 = icmp eq i32 %size.0625, 0, !dbg !523
  br i1 %cmp166609, label %for.cond178.preheader, label %cont170, !dbg !523

for.body88:                                       ; preds = %for.body88.lr.ph, %for.cond86.backedge
  %n.1613 = phi i32 [ 0, %for.body88.lr.ph ], [ %78, %for.cond86.backedge ]
  %data = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.1613, i32 0, i32 1, !dbg !525
  %54 = load i8** %data, align 4, !dbg !525, !tbaa !420
  %cmp91 = icmp eq i8* %54, null, !dbg !525
  br i1 %cmp91, label %for.inc135, label %if.end93, !dbg !525

if.end93:                                         ; preds = %for.body88
  br i1 %53, label %trap, label %cont95, !dbg !522

cont95:                                           ; preds = %if.end93
  %key_hash = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.1613, i32 1, !dbg !522
  %55 = load i32* %key_hash, align 4, !dbg !522, !tbaa !417
  %rem = urem i32 %55, %size.0625, !dbg !522
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !302), !dbg !522
  %arrayidx96 = getelementptr inbounds i16* %34, i32 %rem, !dbg !526
  %56 = load i16* %arrayidx96, align 2, !dbg !526, !tbaa !427
  %conv = zext i16 %56 to i32, !dbg !526
  %len99 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.1613, i32 0, i32 0, !dbg !526
  %57 = load i32* %len99, align 4, !dbg !526, !tbaa !417
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %57, i32 2), !dbg !526
  %59 = extractvalue { i32, i1 } %58, 0, !dbg !526
  %60 = extractvalue { i32, i1 } %58, 1, !dbg !526
  br i1 %60, label %ioc_bb102, label %cont107, !dbg !526

ioc_bb102:                                        ; preds = %cont95
  %61 = zext i32 %57 to i64, !dbg !526
  tail call void @__ioc_report_add_overflow(i32 206, i32 85, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %61, i64 2, i8 5) nounwind, !dbg !526
  br label %cont107, !dbg !526

cont107:                                          ; preds = %cont95, %ioc_bb102
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %59, i32 3), !dbg !526
  %63 = extractvalue { i32, i1 } %62, 0, !dbg !526
  %64 = extractvalue { i32, i1 } %62, 1, !dbg !526
  br i1 %64, label %ioc_bb108, label %cont113, !dbg !526

ioc_bb108:                                        ; preds = %cont107
  %65 = zext i32 %59 to i64, !dbg !526
  tail call void @__ioc_report_add_overflow(i32 206, i32 89, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %65, i64 3, i8 5) nounwind, !dbg !526
  br label %cont113, !dbg !526

cont113:                                          ; preds = %cont107, %ioc_bb108
  %and115 = and i32 %63, -4, !dbg !526
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and115, i32 4), !dbg !526
  %67 = extractvalue { i32, i1 } %66, 0, !dbg !526
  %68 = extractvalue { i32, i1 } %66, 1, !dbg !526
  br i1 %68, label %ioc_bb116, label %cont117, !dbg !526

ioc_bb116:                                        ; preds = %cont113
  %69 = zext i32 %and115 to i64, !dbg !526
  tail call void @__ioc_report_add_overflow(i32 206, i32 59, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 4, i64 %69, i8 5) nounwind, !dbg !526
  br label %cont117, !dbg !526

cont117:                                          ; preds = %cont113, %ioc_bb116
  %70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv, i32 %67), !dbg !526
  %71 = extractvalue { i32, i1 } %70, 0, !dbg !526
  %72 = extractvalue { i32, i1 } %70, 1, !dbg !526
  br i1 %72, label %ioc_bb118, label %cont119, !dbg !526

ioc_bb118:                                        ; preds = %cont117
  %73 = zext i32 %67 to i64, !dbg !526
  %74 = zext i16 %56 to i64, !dbg !526
  tail call void @__ioc_report_add_overflow(i32 206, i32 41, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %74, i64 %73, i8 5) nounwind, !dbg !526
  br label %cont119, !dbg !526

cont119:                                          ; preds = %cont117, %ioc_bb118
  %75 = icmp ult i32 %71, 65536, !dbg !526
  br i1 %75, label %cont121, label %ioc_bb120, !dbg !526

ioc_bb120:                                        ; preds = %cont119
  %76 = zext i32 %71 to i64, !dbg !526
  tail call void @__ioc_report_conversion(i32 206, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %76, i8 0) nounwind, !dbg !526
  br label %cont121, !dbg !526

cont121:                                          ; preds = %ioc_bb120, %cont119
  %conv122 = trunc i32 %71 to i16, !dbg !526
  store i16 %conv122, i16* %arrayidx96, align 2, !dbg !526, !tbaa !427
  %conv125 = and i32 %71, 65535, !dbg !516
  br i1 %47, label %cont128, label %ioc_bb127, !dbg !516

ioc_bb127:                                        ; preds = %cont121
  tail call void @__ioc_report_conversion(i32 209, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %48, i8 0) nounwind, !dbg !516
  br label %cont128, !dbg !516

cont128:                                          ; preds = %ioc_bb127, %cont121
  %cmp131 = icmp ugt i32 %conv125, %conv130, !dbg !516
  br i1 %cmp131, label %for.inc139, label %for.inc135, !dbg !516

for.inc135:                                       ; preds = %cont128, %for.body88
  %77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1613, i32 1), !dbg !521
  %78 = extractvalue { i32, i1 } %77, 0, !dbg !521
  %79 = extractvalue { i32, i1 } %77, 1, !dbg !521
  br i1 %79, label %ioc_bb136, label %for.cond86.backedge, !dbg !521

for.cond86.backedge:                              ; preds = %for.inc135, %ioc_bb136
  %cmp87 = icmp ult i32 %78, %nelts, !dbg !521
  br i1 %cmp87, label %for.body88, label %for.cond165.preheader, !dbg !521

ioc_bb136:                                        ; preds = %for.inc135
  %80 = zext i32 %n.1613 to i64, !dbg !521
  tail call void @__ioc_report_add_overflow(i32 201, i32 29, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %80, i64 1, i8 5) nounwind, !dbg !521
  br label %for.cond86.backedge, !dbg !521

for.inc139:                                       ; preds = %cont128
  %81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %size.0625, i32 1), !dbg !514
  %82 = extractvalue { i32, i1 } %81, 0, !dbg !514
  %83 = extractvalue { i32, i1 } %81, 1, !dbg !514
  br i1 %83, label %ioc_bb140, label %for.cond78.backedge, !dbg !514

for.cond78.backedge:                              ; preds = %for.inc139, %ioc_bb140
  %84 = load i32* %max_size, align 4, !dbg !514, !tbaa !417
  %cmp80 = icmp ult i32 %82, %84, !dbg !514
  br i1 %cmp80, label %for.body81, label %cont147, !dbg !514

ioc_bb140:                                        ; preds = %for.inc139
  tail call void @__ioc_report_add_overflow(i32 199, i32 52, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %52, i64 1, i8 5) nounwind, !dbg !514
  br label %for.cond78.backedge, !dbg !514

cont147:                                          ; preds = %for.cond78.backedge, %for.cond78.preheader
  %.lcssa = phi i32 [ %46, %for.cond78.preheader ], [ %84, %for.cond78.backedge ]
  %85 = load %struct.ngx_pool_s** %pool40, align 4, !dbg !527, !tbaa !420
  %log144 = getelementptr inbounds %struct.ngx_pool_s* %85, i32 0, i32 6, !dbg !527
  %86 = load %struct.ngx_log_s** %log144, align 4, !dbg !527, !tbaa !420
  %log_level145 = getelementptr inbounds %struct.ngx_log_s* %86, i32 0, i32 0, !dbg !527
  %87 = load i32* %log_level145, align 4, !dbg !527, !tbaa !417
  %cmp148 = icmp eq i32 %87, 0, !dbg !527
  br i1 %cmp148, label %if.end160, label %cont152, !dbg !527

cont152:                                          ; preds = %cont147
  %name155 = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 4, !dbg !528
  %88 = load i8** %name155, align 4, !dbg !528, !tbaa !420
  %89 = load i32* %bucket_size47, align 4, !dbg !528, !tbaa !417
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %86, i32 0, i8* getelementptr inbounds ([89 x i8]* @.str1, i32 0, i32 0), i8* %88, i8* %88, i32 %.lcssa, i8* %88, i32 %89) nounwind, !dbg !528
  br label %if.end160, !dbg !528

if.end160:                                        ; preds = %cont147, %cont152
  tail call void @free(i8* %call) nounwind, !dbg !529
  br label %return, !dbg !530

for.cond178.preheader:                            ; preds = %for.cond165.backedge, %for.cond165.preheader
  br i1 %cmp627, label %for.cond231.preheader, label %for.body181, !dbg !531

cont170:                                          ; preds = %for.cond165.preheader, %for.cond165.backedge
  %i.0610 = phi i32 [ %91, %for.cond165.backedge ], [ 0, %for.cond165.preheader ]
  %arrayidx171 = getelementptr inbounds i16* %34, i32 %i.0610, !dbg !533
  store i16 4, i16* %arrayidx171, align 2, !dbg !533, !tbaa !427
  %90 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0610, i32 1), !dbg !523
  %91 = extractvalue { i32, i1 } %90, 0, !dbg !523
  %92 = extractvalue { i32, i1 } %90, 1, !dbg !523
  br i1 %92, label %ioc_bb173, label %for.cond165.backedge, !dbg !523

for.cond165.backedge:                             ; preds = %cont170, %ioc_bb173
  %cmp166 = icmp ult i32 %91, %size.0625, !dbg !523
  br i1 %cmp166, label %cont170, label %for.cond178.preheader, !dbg !523

ioc_bb173:                                        ; preds = %cont170
  %93 = zext i32 %i.0610 to i64, !dbg !523
  tail call void @__ioc_report_add_overflow(i32 222, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %93, i64 1, i8 5) nounwind, !dbg !523
  br label %for.cond165.backedge, !dbg !523

for.cond231.preheader:                            ; preds = %for.cond178.backedge, %for.cond178.preheader
  br i1 %cmp166609, label %for.end267, label %for.body234, !dbg !535

for.body181:                                      ; preds = %for.cond178.preheader, %for.cond178.backedge
  %n.2608 = phi i32 [ %118, %for.cond178.backedge ], [ 0, %for.cond178.preheader ]
  %data184 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.2608, i32 0, i32 1, !dbg !537
  %94 = load i8** %data184, align 4, !dbg !537, !tbaa !420
  %cmp185 = icmp eq i8* %94, null, !dbg !537
  br i1 %cmp185, label %for.inc223, label %if.end188, !dbg !537

if.end188:                                        ; preds = %for.body181
  br i1 %cmp166609, label %trap, label %cont191, !dbg !539

cont191:                                          ; preds = %if.end188
  %key_hash190 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.2608, i32 1, !dbg !539
  %95 = load i32* %key_hash190, align 4, !dbg !539, !tbaa !417
  %rem192 = urem i32 %95, %size.0625, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32 %rem192}, i64 0, metadata !302), !dbg !539
  %arrayidx193 = getelementptr inbounds i16* %34, i32 %rem192, !dbg !540
  %96 = load i16* %arrayidx193, align 2, !dbg !540, !tbaa !427
  %conv194 = zext i16 %96 to i32, !dbg !540
  %len197 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.2608, i32 0, i32 0, !dbg !540
  %97 = load i32* %len197, align 4, !dbg !540, !tbaa !417
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !dbg !540
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !540
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !540
  br i1 %100, label %ioc_bb200, label %cont205, !dbg !540

ioc_bb200:                                        ; preds = %cont191
  %101 = zext i32 %97 to i64, !dbg !540
  tail call void @__ioc_report_add_overflow(i32 230, i32 83, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %101, i64 2, i8 5) nounwind, !dbg !540
  br label %cont205, !dbg !540

cont205:                                          ; preds = %cont191, %ioc_bb200
  %102 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %99, i32 3), !dbg !540
  %103 = extractvalue { i32, i1 } %102, 0, !dbg !540
  %104 = extractvalue { i32, i1 } %102, 1, !dbg !540
  br i1 %104, label %ioc_bb206, label %cont211, !dbg !540

ioc_bb206:                                        ; preds = %cont205
  %105 = zext i32 %99 to i64, !dbg !540
  tail call void @__ioc_report_add_overflow(i32 230, i32 87, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %105, i64 3, i8 5) nounwind, !dbg !540
  br label %cont211, !dbg !540

cont211:                                          ; preds = %cont205, %ioc_bb206
  %and213 = and i32 %103, -4, !dbg !540
  %106 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and213, i32 4), !dbg !540
  %107 = extractvalue { i32, i1 } %106, 0, !dbg !540
  %108 = extractvalue { i32, i1 } %106, 1, !dbg !540
  br i1 %108, label %ioc_bb214, label %cont215, !dbg !540

ioc_bb214:                                        ; preds = %cont211
  %109 = zext i32 %and213 to i64, !dbg !540
  tail call void @__ioc_report_add_overflow(i32 230, i32 57, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 4, i64 %109, i8 5) nounwind, !dbg !540
  br label %cont215, !dbg !540

cont215:                                          ; preds = %cont211, %ioc_bb214
  %110 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv194, i32 %107), !dbg !540
  %111 = extractvalue { i32, i1 } %110, 0, !dbg !540
  %112 = extractvalue { i32, i1 } %110, 1, !dbg !540
  br i1 %112, label %ioc_bb216, label %cont217, !dbg !540

ioc_bb216:                                        ; preds = %cont215
  %113 = zext i32 %107 to i64, !dbg !540
  %114 = zext i16 %96 to i64, !dbg !540
  tail call void @__ioc_report_add_overflow(i32 230, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %114, i64 %113, i8 5) nounwind, !dbg !540
  br label %cont217, !dbg !540

cont217:                                          ; preds = %cont215, %ioc_bb216
  %115 = icmp ult i32 %111, 65536, !dbg !540
  br i1 %115, label %cont220, label %ioc_bb219, !dbg !540

ioc_bb219:                                        ; preds = %cont217
  %116 = zext i32 %111 to i64, !dbg !540
  tail call void @__ioc_report_conversion(i32 230, i32 28, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %116, i8 0) nounwind, !dbg !540
  br label %cont220, !dbg !540

cont220:                                          ; preds = %ioc_bb219, %cont217
  %conv221 = trunc i32 %111 to i16, !dbg !540
  store i16 %conv221, i16* %arrayidx193, align 2, !dbg !540, !tbaa !427
  br label %for.inc223, !dbg !541

for.inc223:                                       ; preds = %for.body181, %cont220
  %117 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2608, i32 1), !dbg !531
  %118 = extractvalue { i32, i1 } %117, 0, !dbg !531
  %119 = extractvalue { i32, i1 } %117, 1, !dbg !531
  br i1 %119, label %ioc_bb224, label %for.cond178.backedge, !dbg !531

for.cond178.backedge:                             ; preds = %for.inc223, %ioc_bb224
  %cmp179 = icmp ult i32 %118, %nelts, !dbg !531
  br i1 %cmp179, label %for.body181, label %for.cond231.preheader, !dbg !531

ioc_bb224:                                        ; preds = %for.inc223
  %120 = zext i32 %n.2608 to i64, !dbg !531
  tail call void @__ioc_report_add_overflow(i32 225, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %120, i64 1, i8 5) nounwind, !dbg !531
  br label %for.cond178.backedge, !dbg !531

for.body234:                                      ; preds = %for.cond231.preheader, %for.cond231.backedge
  %i.1605 = phi i32 [ %145, %for.cond231.backedge ], [ 0, %for.cond231.preheader ]
  %len.0604 = phi i32 [ %len.1, %for.cond231.backedge ], [ 0, %for.cond231.preheader ]
  %arrayidx235 = getelementptr inbounds i16* %34, i32 %i.1605, !dbg !542
  %121 = load i16* %arrayidx235, align 2, !dbg !542, !tbaa !427
  %conv236 = zext i16 %121 to i32, !dbg !542
  %cmp237 = icmp eq i16 %121, 4, !dbg !542
  br i1 %cmp237, label %for.inc264, label %if.end240, !dbg !542

if.end240:                                        ; preds = %for.body234
  %122 = load i32* @ngx_cacheline_size, align 4, !dbg !544, !tbaa !417
  %123 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %122, i32 1), !dbg !544
  %124 = extractvalue { i32, i1 } %123, 0, !dbg !544
  %125 = extractvalue { i32, i1 } %123, 1, !dbg !544
  br i1 %125, label %ioc_bb245, label %cont246, !dbg !544

ioc_bb245:                                        ; preds = %if.end240
  %126 = zext i32 %122 to i64, !dbg !544
  tail call void @__ioc_report_sub_overflow(i32 237, i32 57, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %126, i64 1, i8 5) nounwind, !dbg !544
  br label %cont246, !dbg !544

cont246:                                          ; preds = %if.end240, %ioc_bb245
  %127 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv236, i32 %124), !dbg !544
  %128 = extractvalue { i32, i1 } %127, 0, !dbg !544
  %129 = extractvalue { i32, i1 } %127, 1, !dbg !544
  br i1 %129, label %ioc_bb247, label %cont248, !dbg !544

ioc_bb247:                                        ; preds = %cont246
  %130 = zext i32 %124 to i64, !dbg !544
  %131 = zext i16 %121 to i64, !dbg !544
  tail call void @__ioc_report_add_overflow(i32 237, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %131, i64 %130, i8 5) nounwind, !dbg !544
  br label %cont248, !dbg !544

cont248:                                          ; preds = %cont246, %ioc_bb247
  %132 = load i32* @ngx_cacheline_size, align 4, !dbg !544, !tbaa !417
  %133 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %132, i32 1), !dbg !544
  %134 = extractvalue { i32, i1 } %133, 0, !dbg !544
  %135 = extractvalue { i32, i1 } %133, 1, !dbg !544
  br i1 %135, label %ioc_bb251, label %cont252, !dbg !544

ioc_bb251:                                        ; preds = %cont248
  %136 = zext i32 %132 to i64, !dbg !544
  tail call void @__ioc_report_sub_overflow(i32 237, i32 85, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %136, i64 1, i8 5) nounwind, !dbg !544
  br label %cont252, !dbg !544

cont252:                                          ; preds = %cont248, %ioc_bb251
  %neg253 = xor i32 %134, -1, !dbg !544
  %and254 = and i32 %128, %neg253, !dbg !544
  %137 = icmp ult i32 %and254, 65536, !dbg !544
  br i1 %137, label %cont257, label %ioc_bb256, !dbg !544

ioc_bb256:                                        ; preds = %cont252
  %138 = zext i32 %and254 to i64, !dbg !544
  tail call void @__ioc_report_conversion(i32 237, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %138, i8 0) nounwind, !dbg !544
  br label %cont257, !dbg !544

cont257:                                          ; preds = %ioc_bb256, %cont252
  %conv258 = trunc i32 %and254 to i16, !dbg !544
  store i16 %conv258, i16* %arrayidx235, align 2, !dbg !544, !tbaa !427
  %conv261 = and i32 %and254, 65535, !dbg !545
  %139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0604, i32 %conv261), !dbg !545
  %140 = extractvalue { i32, i1 } %139, 0, !dbg !545
  %141 = extractvalue { i32, i1 } %139, 1, !dbg !545
  br i1 %141, label %ioc_bb262, label %for.inc264, !dbg !545

ioc_bb262:                                        ; preds = %cont257
  %142 = zext i32 %conv261 to i64, !dbg !545
  %143 = zext i32 %len.0604 to i64, !dbg !545
  tail call void @__ioc_report_add_overflow(i32 238, i32 9, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %143, i64 %142, i8 5) nounwind, !dbg !545
  br label %for.inc264, !dbg !545

for.inc264:                                       ; preds = %ioc_bb262, %cont257, %for.body234
  %len.1 = phi i32 [ %len.0604, %for.body234 ], [ %140, %cont257 ], [ %140, %ioc_bb262 ]
  %144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1605, i32 1), !dbg !535
  %145 = extractvalue { i32, i1 } %144, 0, !dbg !535
  %146 = extractvalue { i32, i1 } %144, 1, !dbg !535
  br i1 %146, label %ioc_bb265, label %for.cond231.backedge, !dbg !535

for.cond231.backedge:                             ; preds = %for.inc264, %ioc_bb265
  %cmp232 = icmp ult i32 %145, %size.0625, !dbg !535
  br i1 %cmp232, label %for.body234, label %for.end267, !dbg !535

ioc_bb265:                                        ; preds = %for.inc264
  %147 = zext i32 %i.1605 to i64, !dbg !535
  tail call void @__ioc_report_add_overflow(i32 233, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %147, i64 1, i8 5) nounwind, !dbg !535
  br label %for.cond231.backedge, !dbg !535

for.end267:                                       ; preds = %for.cond231.backedge, %for.cond231.preheader
  %len.0.lcssa = phi i32 [ 0, %for.cond231.preheader ], [ %len.1, %for.cond231.backedge ]
  %hash = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 0, !dbg !546
  %148 = load %struct.ngx_hash_t** %hash, align 4, !dbg !546, !tbaa !420
  %cmp268 = icmp eq %struct.ngx_hash_t* %148, null, !dbg !546
  %149 = load %struct.ngx_pool_s** %pool40, align 4, !dbg !547, !tbaa !420
  %150 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size.0625, i32 4), !dbg !547
  %151 = extractvalue { i32, i1 } %150, 0, !dbg !547
  %152 = extractvalue { i32, i1 } %150, 1, !dbg !547
  br i1 %cmp268, label %if.then270, label %if.else, !dbg !546

if.then270:                                       ; preds = %for.end267
  br i1 %152, label %ioc_bb272, label %cont273, !dbg !547

ioc_bb272:                                        ; preds = %if.then270
  tail call void @__ioc_report_mul_overflow(i32 241, i32 84, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %52, i64 4, i8 5) nounwind, !dbg !547
  br label %cont273, !dbg !547

cont273:                                          ; preds = %if.then270, %ioc_bb272
  %153 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %151, i32 12), !dbg !547
  %154 = extractvalue { i32, i1 } %153, 0, !dbg !547
  %155 = extractvalue { i32, i1 } %153, 1, !dbg !547
  br i1 %155, label %ioc_bb274, label %cont275, !dbg !547

ioc_bb274:                                        ; preds = %cont273
  %156 = zext i32 %151 to i64, !dbg !547
  tail call void @__ioc_report_add_overflow(i32 241, i32 77, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 12, i64 %156, i8 5) nounwind, !dbg !547
  br label %cont275, !dbg !547

cont275:                                          ; preds = %cont273, %ioc_bb274
  %call276 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %149, i32 %154) nounwind, !dbg !547
  %157 = bitcast i8* %call276 to %struct.ngx_hash_t*, !dbg !547
  store %struct.ngx_hash_t* %157, %struct.ngx_hash_t** %hash, align 4, !dbg !547, !tbaa !420
  %cmp279 = icmp eq i8* %call276, null, !dbg !549
  br i1 %cmp279, label %if.then281, label %if.end284, !dbg !549

if.then281:                                       ; preds = %cont275
  tail call void @free(i8* %call) nounwind, !dbg !550
  br label %return, !dbg !552

if.end284:                                        ; preds = %cont275
  %add.ptr = getelementptr inbounds i8* %call276, i32 12, !dbg !553
  br label %if.end296, !dbg !554

if.else:                                          ; preds = %for.end267
  br i1 %152, label %ioc_bb287, label %cont288, !dbg !555

ioc_bb287:                                        ; preds = %if.else
  tail call void @__ioc_report_mul_overflow(i32 249, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %52, i64 4, i8 5) nounwind, !dbg !555
  br label %cont288, !dbg !555

cont288:                                          ; preds = %if.else, %ioc_bb287
  %call289 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %149, i32 %151) nounwind, !dbg !555
  %cmp290 = icmp eq i8* %call289, null, !dbg !557
  br i1 %cmp290, label %if.then292, label %if.end296, !dbg !557

if.then292:                                       ; preds = %cont288
  tail call void @free(i8* %call) nounwind, !dbg !558
  br label %return, !dbg !560

if.end296:                                        ; preds = %cont288, %if.end284
  %buckets.0.in = phi i8* [ %add.ptr, %if.end284 ], [ %call289, %cont288 ]
  %buckets.0 = bitcast i8* %buckets.0.in to %struct.ngx_hash_elt_t**, !dbg !553
  %158 = load %struct.ngx_pool_s** %pool40, align 4, !dbg !561, !tbaa !420
  %159 = load i32* @ngx_cacheline_size, align 4, !dbg !561, !tbaa !417
  %160 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.lcssa, i32 %159), !dbg !561
  %161 = extractvalue { i32, i1 } %160, 0, !dbg !561
  %162 = extractvalue { i32, i1 } %160, 1, !dbg !561
  br i1 %162, label %ioc_bb298, label %cont299, !dbg !561

ioc_bb298:                                        ; preds = %if.end296
  %163 = zext i32 %159 to i64, !dbg !561
  %164 = zext i32 %len.0.lcssa to i64, !dbg !561
  tail call void @__ioc_report_add_overflow(i32 255, i32 40, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %164, i64 %163, i8 5) nounwind, !dbg !561
  br label %cont299, !dbg !561

cont299:                                          ; preds = %if.end296, %ioc_bb298
  %call300 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %158, i32 %161) nounwind, !dbg !561
  tail call void @llvm.dbg.value(metadata !{i8* %call300}, i64 0, metadata !295), !dbg !561
  %cmp301 = icmp eq i8* %call300, null, !dbg !562
  br i1 %cmp301, label %if.then303, label %if.end306, !dbg !562

if.then303:                                       ; preds = %cont299
  tail call void @free(i8* %call) nounwind, !dbg !563
  br label %return, !dbg !565

if.end306:                                        ; preds = %cont299
  %165 = ptrtoint i8* %call300 to i32, !dbg !566
  %166 = load i32* @ngx_cacheline_size, align 4, !dbg !566, !tbaa !417
  %167 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %166, i32 1), !dbg !566
  %168 = extractvalue { i32, i1 } %167, 0, !dbg !566
  %169 = extractvalue { i32, i1 } %167, 1, !dbg !566
  br i1 %169, label %ioc_bb309, label %cont310, !dbg !566

ioc_bb309:                                        ; preds = %if.end306
  %170 = zext i32 %166 to i64, !dbg !566
  tail call void @__ioc_report_sub_overflow(i32 260, i32 77, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %170, i64 1, i8 5) nounwind, !dbg !566
  br label %cont310, !dbg !566

cont310:                                          ; preds = %if.end306, %ioc_bb309
  %171 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %165, i32 %168), !dbg !566
  %172 = extractvalue { i32, i1 } %171, 0, !dbg !566
  %173 = extractvalue { i32, i1 } %171, 1, !dbg !566
  br i1 %173, label %ioc_bb311, label %cont312, !dbg !566

ioc_bb311:                                        ; preds = %cont310
  %174 = zext i32 %168 to i64, !dbg !566
  %175 = zext i32 %165 to i64, !dbg !566
  tail call void @__ioc_report_add_overflow(i32 260, i32 41, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %175, i64 %174, i8 5) nounwind, !dbg !566
  br label %cont312, !dbg !566

cont312:                                          ; preds = %cont310, %ioc_bb311
  %176 = load i32* @ngx_cacheline_size, align 4, !dbg !566, !tbaa !417
  %177 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %176, i32 1), !dbg !566
  %178 = extractvalue { i32, i1 } %177, 0, !dbg !566
  %179 = extractvalue { i32, i1 } %177, 1, !dbg !566
  br i1 %179, label %ioc_bb315, label %cont320, !dbg !566

ioc_bb315:                                        ; preds = %cont312
  %180 = zext i32 %176 to i64, !dbg !566
  tail call void @__ioc_report_sub_overflow(i32 260, i32 119, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %180, i64 1, i8 5) nounwind, !dbg !566
  br label %cont320, !dbg !566

cont320:                                          ; preds = %ioc_bb315, %cont312
  tail call void @llvm.dbg.value(metadata !{i8* %181}, i64 0, metadata !295), !dbg !566
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !300), !dbg !567
  br i1 %cmp166609, label %for.cond354.preheader, label %for.body324.lr.ph, !dbg !567

for.body324.lr.ph:                                ; preds = %cont320
  %neg317 = xor i32 %178, -1, !dbg !566
  %and318 = and i32 %172, %neg317, !dbg !566
  %181 = inttoptr i32 %and318 to i8*, !dbg !566
  br label %for.body324, !dbg !567

for.cond341.preheader:                            ; preds = %for.cond321.backedge
  br i1 %cmp166609, label %for.cond354.preheader, label %cont346, !dbg !569

for.body324:                                      ; preds = %for.body324.lr.ph, %for.cond321.backedge
  %i.2602 = phi i32 [ 0, %for.body324.lr.ph ], [ %185, %for.cond321.backedge ]
  %elts.0601 = phi i8* [ %181, %for.body324.lr.ph ], [ %elts.1, %for.cond321.backedge ]
  %arrayidx325 = getelementptr inbounds i16* %34, i32 %i.2602, !dbg !571
  %182 = load i16* %arrayidx325, align 2, !dbg !571, !tbaa !427
  %cmp327 = icmp eq i16 %182, 4, !dbg !571
  br i1 %cmp327, label %for.inc335, label %if.end330, !dbg !571

if.end330:                                        ; preds = %for.body324
  %183 = bitcast i8* %elts.0601 to %struct.ngx_hash_elt_t*, !dbg !573
  %arrayidx331 = getelementptr inbounds %struct.ngx_hash_elt_t** %buckets.0, i32 %i.2602, !dbg !573
  store %struct.ngx_hash_elt_t* %183, %struct.ngx_hash_elt_t** %arrayidx331, align 4, !dbg !573, !tbaa !420
  %conv333 = zext i16 %182 to i32, !dbg !574
  %add.ptr334 = getelementptr inbounds i8* %elts.0601, i32 %conv333, !dbg !574
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr334}, i64 0, metadata !295), !dbg !574
  br label %for.inc335, !dbg !575

for.inc335:                                       ; preds = %for.body324, %if.end330
  %elts.1 = phi i8* [ %elts.0601, %for.body324 ], [ %add.ptr334, %if.end330 ]
  %184 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2602, i32 1), !dbg !567
  %185 = extractvalue { i32, i1 } %184, 0, !dbg !567
  %186 = extractvalue { i32, i1 } %184, 1, !dbg !567
  br i1 %186, label %ioc_bb336, label %for.cond321.backedge, !dbg !567

for.cond321.backedge:                             ; preds = %for.inc335, %ioc_bb336
  %cmp322 = icmp ult i32 %185, %size.0625, !dbg !567
  br i1 %cmp322, label %for.body324, label %for.cond341.preheader, !dbg !567

ioc_bb336:                                        ; preds = %for.inc335
  %187 = zext i32 %i.2602 to i64, !dbg !567
  tail call void @__ioc_report_add_overflow(i32 261, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %187, i64 1, i8 5) nounwind, !dbg !567
  br label %for.cond321.backedge, !dbg !567

for.cond354.preheader:                            ; preds = %cont320, %for.cond341.backedge, %for.cond341.preheader
  br i1 %cmp627, label %for.cond426.preheader, label %for.body357, !dbg !576

cont346:                                          ; preds = %for.cond341.preheader, %for.cond341.backedge
  %i.3599 = phi i32 [ %189, %for.cond341.backedge ], [ 0, %for.cond341.preheader ]
  %arrayidx347 = getelementptr inbounds i16* %34, i32 %i.3599, !dbg !578
  store i16 0, i16* %arrayidx347, align 2, !dbg !578, !tbaa !427
  %188 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.3599, i32 1), !dbg !569
  %189 = extractvalue { i32, i1 } %188, 0, !dbg !569
  %190 = extractvalue { i32, i1 } %188, 1, !dbg !569
  br i1 %190, label %ioc_bb349, label %for.cond341.backedge, !dbg !569

for.cond341.backedge:                             ; preds = %cont346, %ioc_bb349
  %cmp342 = icmp ult i32 %189, %size.0625, !dbg !569
  br i1 %cmp342, label %cont346, label %for.cond354.preheader, !dbg !569

ioc_bb349:                                        ; preds = %cont346
  %191 = zext i32 %i.3599 to i64, !dbg !569
  tail call void @__ioc_report_add_overflow(i32 268, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %191, i64 1, i8 5) nounwind, !dbg !569
  br label %for.cond341.backedge, !dbg !569

for.cond426.preheader:                            ; preds = %for.cond354.backedge, %for.cond354.preheader
  br i1 %cmp166609, label %for.end443, label %for.body429, !dbg !580

for.body357:                                      ; preds = %for.cond354.preheader, %for.cond354.backedge
  %n.3597 = phi i32 [ %226, %for.cond354.backedge ], [ 0, %for.cond354.preheader ]
  %data360 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.3597, i32 0, i32 1, !dbg !582
  %192 = load i8** %data360, align 4, !dbg !582, !tbaa !420
  %cmp361 = icmp eq i8* %192, null, !dbg !582
  br i1 %cmp361, label %for.inc420, label %if.end364, !dbg !582

if.end364:                                        ; preds = %for.body357
  br i1 %cmp166609, label %trap, label %cont367, !dbg !584

cont367:                                          ; preds = %if.end364
  %key_hash366 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.3597, i32 1, !dbg !584
  %193 = load i32* %key_hash366, align 4, !dbg !584, !tbaa !417
  %rem368 = urem i32 %193, %size.0625, !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %rem368}, i64 0, metadata !302), !dbg !584
  %arrayidx369 = getelementptr inbounds %struct.ngx_hash_elt_t** %buckets.0, i32 %rem368, !dbg !585
  %194 = load %struct.ngx_hash_elt_t** %arrayidx369, align 4, !dbg !585, !tbaa !420
  %195 = bitcast %struct.ngx_hash_elt_t* %194 to i8*, !dbg !585
  %arrayidx370 = getelementptr inbounds i16* %34, i32 %rem368, !dbg !585
  %196 = load i16* %arrayidx370, align 2, !dbg !585, !tbaa !427
  %conv371 = zext i16 %196 to i32, !dbg !585
  %add.ptr372 = getelementptr inbounds i8* %195, i32 %conv371, !dbg !585
  %value = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.3597, i32 2, !dbg !586
  %197 = load i8** %value, align 4, !dbg !586, !tbaa !420
  %value374 = bitcast i8* %add.ptr372 to i8**, !dbg !586
  store i8* %197, i8** %value374, align 4, !dbg !586, !tbaa !420
  %len377 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.3597, i32 0, i32 0, !dbg !587
  %198 = load i32* %len377, align 4, !dbg !587, !tbaa !417
  %199 = icmp ult i32 %198, 65536, !dbg !587
  br i1 %199, label %cont380, label %ioc_bb379, !dbg !587

ioc_bb379:                                        ; preds = %cont367
  %200 = zext i32 %198 to i64, !dbg !587
  tail call void @__ioc_report_conversion(i32 278, i32 29, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %200, i8 0) nounwind, !dbg !587
  %.pre638 = load i32* %len377, align 4, !dbg !588, !tbaa !417
  br label %cont380, !dbg !587

cont380:                                          ; preds = %ioc_bb379, %cont367
  %201 = phi i32 [ %.pre638, %ioc_bb379 ], [ %198, %cont367 ]
  %conv381 = trunc i32 %198 to i16, !dbg !587
  %add.ptr372.sum = add i32 %conv371, 4, !dbg !587
  %len382 = getelementptr inbounds i8* %195, i32 %add.ptr372.sum, !dbg !587
  %202 = bitcast i8* %len382 to i16*, !dbg !587
  store i16 %conv381, i16* %202, align 2, !dbg !587, !tbaa !427
  %add.ptr372.sum593 = add i32 %conv371, 6, !dbg !588
  %name383 = getelementptr inbounds i8* %195, i32 %add.ptr372.sum593, !dbg !588
  %203 = load i8** %data360, align 4, !dbg !588, !tbaa !420
  tail call void @ngx_strlow(i8* %name383, i8* %203, i32 %201) nounwind, !dbg !588
  %204 = load i16* %arrayidx370, align 2, !dbg !589, !tbaa !427
  %conv391 = zext i16 %204 to i32, !dbg !589
  %205 = load i32* %len377, align 4, !dbg !589, !tbaa !417
  %206 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %205, i32 2), !dbg !589
  %207 = extractvalue { i32, i1 } %206, 0, !dbg !589
  %208 = extractvalue { i32, i1 } %206, 1, !dbg !589
  br i1 %208, label %ioc_bb397, label %cont402, !dbg !589

ioc_bb397:                                        ; preds = %cont380
  %209 = zext i32 %205 to i64, !dbg !589
  tail call void @__ioc_report_add_overflow(i32 280, i32 83, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %209, i64 2, i8 5) nounwind, !dbg !589
  br label %cont402, !dbg !589

cont402:                                          ; preds = %cont380, %ioc_bb397
  %210 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %207, i32 3), !dbg !589
  %211 = extractvalue { i32, i1 } %210, 0, !dbg !589
  %212 = extractvalue { i32, i1 } %210, 1, !dbg !589
  br i1 %212, label %ioc_bb403, label %cont408, !dbg !589

ioc_bb403:                                        ; preds = %cont402
  %213 = zext i32 %207 to i64, !dbg !589
  tail call void @__ioc_report_add_overflow(i32 280, i32 87, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %213, i64 3, i8 5) nounwind, !dbg !589
  br label %cont408, !dbg !589

cont408:                                          ; preds = %cont402, %ioc_bb403
  %and410 = and i32 %211, -4, !dbg !589
  %214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and410, i32 4), !dbg !589
  %215 = extractvalue { i32, i1 } %214, 0, !dbg !589
  %216 = extractvalue { i32, i1 } %214, 1, !dbg !589
  br i1 %216, label %ioc_bb411, label %cont412, !dbg !589

ioc_bb411:                                        ; preds = %cont408
  %217 = zext i32 %and410 to i64, !dbg !589
  tail call void @__ioc_report_add_overflow(i32 280, i32 57, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 4, i64 %217, i8 5) nounwind, !dbg !589
  br label %cont412, !dbg !589

cont412:                                          ; preds = %cont408, %ioc_bb411
  %218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %conv391, i32 %215), !dbg !589
  %219 = extractvalue { i32, i1 } %218, 0, !dbg !589
  %220 = extractvalue { i32, i1 } %218, 1, !dbg !589
  br i1 %220, label %ioc_bb413, label %cont414, !dbg !589

ioc_bb413:                                        ; preds = %cont412
  %221 = zext i32 %215 to i64, !dbg !589
  %222 = zext i16 %204 to i64, !dbg !589
  tail call void @__ioc_report_add_overflow(i32 280, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %222, i64 %221, i8 5) nounwind, !dbg !589
  br label %cont414, !dbg !589

cont414:                                          ; preds = %cont412, %ioc_bb413
  %223 = icmp ult i32 %219, 65536, !dbg !589
  br i1 %223, label %cont417, label %ioc_bb416, !dbg !589

ioc_bb416:                                        ; preds = %cont414
  %224 = zext i32 %219 to i64, !dbg !589
  tail call void @__ioc_report_conversion(i32 280, i32 28, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @6, i32 0, i32 0), i64 %224, i8 0) nounwind, !dbg !589
  br label %cont417, !dbg !589

cont417:                                          ; preds = %ioc_bb416, %cont414
  %conv418 = trunc i32 %219 to i16, !dbg !589
  store i16 %conv418, i16* %arrayidx370, align 2, !dbg !589, !tbaa !427
  br label %for.inc420, !dbg !590

for.inc420:                                       ; preds = %for.body357, %cont417
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.3597, i32 1), !dbg !576
  %226 = extractvalue { i32, i1 } %225, 0, !dbg !576
  %227 = extractvalue { i32, i1 } %225, 1, !dbg !576
  br i1 %227, label %ioc_bb421, label %for.cond354.backedge, !dbg !576

for.cond354.backedge:                             ; preds = %for.inc420, %ioc_bb421
  %cmp355 = icmp ult i32 %226, %nelts, !dbg !576
  br i1 %cmp355, label %for.body357, label %for.cond426.preheader, !dbg !576

ioc_bb421:                                        ; preds = %for.inc420
  %228 = zext i32 %n.3597 to i64, !dbg !576
  tail call void @__ioc_report_add_overflow(i32 271, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %228, i64 1, i8 5) nounwind, !dbg !576
  br label %for.cond354.backedge, !dbg !576

for.body429:                                      ; preds = %for.cond426.preheader, %for.cond426.backedge
  %i.4595 = phi i32 [ %233, %for.cond426.backedge ], [ 0, %for.cond426.preheader ]
  %arrayidx430 = getelementptr inbounds %struct.ngx_hash_elt_t** %buckets.0, i32 %i.4595, !dbg !591
  %229 = load %struct.ngx_hash_elt_t** %arrayidx430, align 4, !dbg !591, !tbaa !420
  %cmp431 = icmp eq %struct.ngx_hash_elt_t* %229, null, !dbg !591
  br i1 %cmp431, label %for.inc440, label %if.end434, !dbg !591

if.end434:                                        ; preds = %for.body429
  %230 = bitcast %struct.ngx_hash_elt_t* %229 to i8*, !dbg !593
  %arrayidx436 = getelementptr inbounds i16* %34, i32 %i.4595, !dbg !593
  %231 = load i16* %arrayidx436, align 2, !dbg !593, !tbaa !427
  %conv437 = zext i16 %231 to i32, !dbg !593
  %add.ptr438 = getelementptr inbounds i8* %230, i32 %conv437, !dbg !593
  %value439 = bitcast i8* %add.ptr438 to i8**, !dbg !594
  store i8* null, i8** %value439, align 4, !dbg !594, !tbaa !420
  br label %for.inc440, !dbg !595

for.inc440:                                       ; preds = %for.body429, %if.end434
  %232 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.4595, i32 1), !dbg !580
  %233 = extractvalue { i32, i1 } %232, 0, !dbg !580
  %234 = extractvalue { i32, i1 } %232, 1, !dbg !580
  br i1 %234, label %ioc_bb441, label %for.cond426.backedge, !dbg !580

for.cond426.backedge:                             ; preds = %for.inc440, %ioc_bb441
  %cmp427 = icmp ult i32 %233, %size.0625, !dbg !580
  br i1 %cmp427, label %for.body429, label %for.end443, !dbg !580

ioc_bb441:                                        ; preds = %for.inc440
  %235 = zext i32 %i.4595 to i64, !dbg !580
  tail call void @__ioc_report_add_overflow(i32 282, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %235, i64 1, i8 5) nounwind, !dbg !580
  br label %for.cond426.backedge, !dbg !580

for.end443:                                       ; preds = %for.cond426.backedge, %for.cond426.preheader
  tail call void @free(i8* %call) nounwind, !dbg !596
  %236 = load %struct.ngx_hash_t** %hash, align 4, !dbg !597, !tbaa !420
  %buckets445 = getelementptr inbounds %struct.ngx_hash_t* %236, i32 0, i32 0, !dbg !597
  store %struct.ngx_hash_elt_t** %buckets.0, %struct.ngx_hash_elt_t*** %buckets445, align 4, !dbg !597, !tbaa !420
  %237 = load %struct.ngx_hash_t** %hash, align 4, !dbg !598, !tbaa !420
  %size447 = getelementptr inbounds %struct.ngx_hash_t* %237, i32 0, i32 1, !dbg !598
  store i32 %size.0625, i32* %size447, align 4, !dbg !598, !tbaa !417
  br label %return, !dbg !599

return:                                           ; preds = %cont39, %if.then, %cont28, %for.end443, %if.then303, %if.then292, %if.then281, %if.end160
  %retval.0 = phi i32 [ -1, %if.then281 ], [ -1, %if.then303 ], [ 0, %for.end443 ], [ -1, %if.then292 ], [ -1, %if.end160 ], [ -1, %cont28 ], [ -1, %if.then ], [ -1, %cont39 ]
  ret i32 %retval.0, !dbg !600
}

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare void @free(i8* nocapture) nounwind

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare void @ngx_strlow(i8*, i8*, i32)

define i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* nocapture %hinit, %struct.ngx_hash_key_t* nocapture %names, i32 %nelts) nounwind {
entry:
  %curr_names = alloca %struct.ngx_array_s, align 4
  %next_names = alloca %struct.ngx_array_s, align 4
  %h = alloca %struct.ngx_hash_init_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_hash_init_t* %hinit}, i64 0, metadata !311), !dbg !601
  call void @llvm.dbg.value(metadata !{%struct.ngx_hash_key_t* %names}, i64 0, metadata !312), !dbg !601
  call void @llvm.dbg.value(metadata !{i32 %nelts}, i64 0, metadata !313), !dbg !601
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %curr_names}, metadata !320), !dbg !602
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %next_names}, metadata !330), !dbg !603
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %h}, metadata !333), !dbg !604
  %temp_pool = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 6, !dbg !605
  %0 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !605, !tbaa !420
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %curr_names}, i64 0, metadata !606) nounwind, !dbg !607
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %0}, i64 0, metadata !608) nounwind, !dbg !607
  call void @llvm.dbg.value(metadata !{i32 %nelts}, i64 0, metadata !609) nounwind, !dbg !607
  call void @llvm.dbg.value(metadata !610, i64 0, metadata !611) nounwind, !dbg !607
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %curr_names, i32 0, i32 1, !dbg !612
  store i32 0, i32* %nelts.i, align 4, !dbg !612, !tbaa !417
  %size1.i = getelementptr inbounds %struct.ngx_array_s* %curr_names, i32 0, i32 2, !dbg !614
  store i32 16, i32* %size1.i, align 4, !dbg !614, !tbaa !417
  %nalloc.i = getelementptr inbounds %struct.ngx_array_s* %curr_names, i32 0, i32 3, !dbg !615
  store i32 %nelts, i32* %nalloc.i, align 4, !dbg !615, !tbaa !417
  %pool2.i = getelementptr inbounds %struct.ngx_array_s* %curr_names, i32 0, i32 4, !dbg !616
  store %struct.ngx_pool_s* %0, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !616, !tbaa !420
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nelts, i32 16) nounwind, !dbg !617
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !617
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !617
  br i1 %3, label %ioc_bb3.i, label %ngx_array_init.exit, !dbg !617

ioc_bb3.i:                                        ; preds = %entry
  %4 = zext i32 %nelts to i64, !dbg !617
  call void @__ioc_report_mul_overflow(i32 44, i32 38, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %4, i64 16, i8 5) nounwind, !dbg !617
  br label %ngx_array_init.exit, !dbg !617

ngx_array_init.exit:                              ; preds = %entry, %ioc_bb3.i
  %call.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %0, i32 %2) nounwind, !dbg !617
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %curr_names, i32 0, i32 0, !dbg !617
  store i8* %call.i, i8** %elts.i, align 4, !dbg !617, !tbaa !420
  %cmp.i = icmp eq i8* %call.i, null, !dbg !618
  br i1 %cmp.i, label %return, label %if.end, !dbg !605

if.end:                                           ; preds = %ngx_array_init.exit
  %5 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !619, !tbaa !420
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %next_names}, i64 0, metadata !620) nounwind, !dbg !621
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %5}, i64 0, metadata !622) nounwind, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %nelts}, i64 0, metadata !623) nounwind, !dbg !621
  call void @llvm.dbg.value(metadata !610, i64 0, metadata !624) nounwind, !dbg !621
  %nelts.i284 = getelementptr inbounds %struct.ngx_array_s* %next_names, i32 0, i32 1, !dbg !625
  store i32 0, i32* %nelts.i284, align 4, !dbg !625, !tbaa !417
  %size1.i285 = getelementptr inbounds %struct.ngx_array_s* %next_names, i32 0, i32 2, !dbg !626
  store i32 16, i32* %size1.i285, align 4, !dbg !626, !tbaa !417
  %nalloc.i286 = getelementptr inbounds %struct.ngx_array_s* %next_names, i32 0, i32 3, !dbg !627
  store i32 %nelts, i32* %nalloc.i286, align 4, !dbg !627, !tbaa !417
  %pool2.i287 = getelementptr inbounds %struct.ngx_array_s* %next_names, i32 0, i32 4, !dbg !628
  store %struct.ngx_pool_s* %5, %struct.ngx_pool_s** %pool2.i287, align 4, !dbg !628, !tbaa !420
  br i1 %3, label %ioc_bb3.i288, label %ngx_array_init.exit293, !dbg !629

ioc_bb3.i288:                                     ; preds = %if.end
  %6 = zext i32 %nelts to i64, !dbg !629
  call void @__ioc_report_mul_overflow(i32 44, i32 38, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %6, i64 16, i8 5) nounwind, !dbg !629
  br label %ngx_array_init.exit293, !dbg !629

ngx_array_init.exit293:                           ; preds = %if.end, %ioc_bb3.i288
  %call.i289 = call i8* @ngx_palloc(%struct.ngx_pool_s* %5, i32 %2) nounwind, !dbg !629
  %elts.i290 = getelementptr inbounds %struct.ngx_array_s* %next_names, i32 0, i32 0, !dbg !629
  store i8* %call.i289, i8** %elts.i290, align 4, !dbg !629, !tbaa !420
  %cmp.i291 = icmp eq i8* %call.i289, null, !dbg !630
  br i1 %cmp.i291, label %return, label %for.cond.preheader, !dbg !619

for.cond.preheader:                               ; preds = %ngx_array_init.exit293
  %cmp10309 = icmp eq i32 %nelts, 0, !dbg !631
  br i1 %cmp10309, label %for.end196, label %for.cond15.preheader.lr.ph, !dbg !631

for.cond15.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %key44 = getelementptr inbounds %struct.ngx_hash_init_t* %hinit, i32 0, i32 1, !dbg !633
  %7 = bitcast %struct.ngx_hash_init_t* %h to i8*, !dbg !635
  %8 = bitcast %struct.ngx_hash_init_t* %hinit to i8*, !dbg !635
  %hash = getelementptr inbounds %struct.ngx_hash_init_t* %h, i32 0, i32 0, !dbg !637
  br label %for.cond15.preheader, !dbg !631

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.cond.backedge
  %n.0310 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %i.0.lcssa, %for.cond.backedge ]
  %data = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.0310, i32 0, i32 1, !dbg !638
  %len16 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.0310, i32 0, i32 0, !dbg !641
  %9 = load i32* %len16, align 4, !dbg !641, !tbaa !417
  %cmp17300 = icmp eq i32 %9, 0, !dbg !641
  br i1 %cmp17300, label %for.end, label %for.body18, !dbg !641

for.body18:                                       ; preds = %for.cond15.backedge, %for.cond15.preheader
  %10 = phi i32 [ %9, %for.cond15.preheader ], [ %16, %for.cond15.backedge ]
  %len.0301 = phi i32 [ 0, %for.cond15.preheader ], [ %14, %for.cond15.backedge ]
  %11 = load i8** %data, align 4, !dbg !638, !tbaa !420
  %arrayidx21 = getelementptr inbounds i8* %11, i32 %len.0301, !dbg !638
  %12 = load i8* %arrayidx21, align 1, !dbg !638, !tbaa !418
  %cmp22 = icmp eq i8 %12, 46, !dbg !638
  br i1 %cmp22, label %for.end, label %for.inc, !dbg !638

for.inc:                                          ; preds = %for.body18
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0301, i32 1), !dbg !641
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !641
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !641
  br i1 %15, label %ioc_bb28, label %for.cond15.backedge, !dbg !641

for.cond15.backedge:                              ; preds = %for.inc, %ioc_bb28
  %16 = phi i32 [ %10, %for.inc ], [ %.pre, %ioc_bb28 ], !dbg !641
  %cmp17 = icmp ult i32 %14, %16, !dbg !641
  br i1 %cmp17, label %for.body18, label %for.end, !dbg !641

ioc_bb28:                                         ; preds = %for.inc
  %17 = zext i32 %len.0301 to i64, !dbg !641
  call void @__ioc_report_add_overflow(i32 320, i32 46, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 5) nounwind, !dbg !641
  %.pre = load i32* %len16, align 4, !dbg !641, !tbaa !417
  br label %for.cond15.backedge, !dbg !641

for.end:                                          ; preds = %for.cond15.backedge, %for.body18, %for.cond15.preheader
  %len.0.lcssa = phi i32 [ 0, %for.cond15.preheader ], [ %len.0301, %for.body18 ], [ %14, %for.cond15.backedge ]
  %dot.0 = phi i32 [ 0, %for.cond15.preheader ], [ 1, %for.body18 ], [ 0, %for.cond15.backedge ]
  %call30 = call i8* @ngx_array_push(%struct.ngx_array_s* %curr_names) nounwind, !dbg !642
  %cmp31 = icmp eq i8* %call30, null, !dbg !643
  br i1 %cmp31, label %return, label %if.end36, !dbg !643

if.end36:                                         ; preds = %for.end
  %len38 = bitcast i8* %call30 to i32*, !dbg !644
  store i32 %len.0.lcssa, i32* %len38, align 4, !dbg !644, !tbaa !417
  %18 = load i8** %data, align 4, !dbg !645, !tbaa !420
  %data43 = getelementptr inbounds i8* %call30, i32 4, !dbg !645
  %19 = bitcast i8* %data43 to i8**, !dbg !645
  store i8* %18, i8** %19, align 4, !dbg !645, !tbaa !420
  %20 = load i32 (i8*, i32)** %key44, align 4, !dbg !633, !tbaa !420
  %call49 = call i32 %20(i8* %18, i32 %len.0.lcssa) nounwind, !dbg !633
  %key_hash = getelementptr inbounds i8* %call30, i32 8, !dbg !633
  %21 = bitcast i8* %key_hash to i32*, !dbg !633
  store i32 %call49, i32* %21, align 4, !dbg !633, !tbaa !417
  %value = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %n.0310, i32 2, !dbg !646
  %22 = load i8** %value, align 4, !dbg !646, !tbaa !420
  %value51 = getelementptr inbounds i8* %call30, i32 12, !dbg !646
  %23 = bitcast i8* %value51 to i8**, !dbg !646
  store i8* %22, i8** %23, align 4, !dbg !646, !tbaa !420
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.lcssa, i32 1), !dbg !647
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !647
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !647
  %27 = zext i32 %len.0.lcssa to i64, !dbg !647
  br i1 %26, label %cont55, label %cont55.thread, !dbg !647

cont55.thread:                                    ; preds = %if.end36
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !316), !dbg !647
  %tobool294 = icmp ne i32 %dot.0, 0, !dbg !648
  %len.0.mux298 = select i1 %tobool294, i32 %25, i32 %len.0.lcssa, !dbg !648
  br label %cont61, !dbg !648

cont55:                                           ; preds = %if.end36
  call void @__ioc_report_add_overflow(i32 336, i32 19, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !647
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !316), !dbg !647
  %tobool = icmp ne i32 %dot.0, 0, !dbg !648
  %len.0.mux = select i1 %tobool, i32 %25, i32 %len.0.lcssa, !dbg !648
  br i1 %tobool, label %ioc_bb57, label %cont61, !dbg !648

ioc_bb57:                                         ; preds = %cont55
  call void @__ioc_report_add_overflow(i32 338, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !649
  br label %cont61, !dbg !649

cont61:                                           ; preds = %cont55, %cont55.thread, %ioc_bb57
  %tobool299 = phi i1 [ false, %cont55 ], [ true, %ioc_bb57 ], [ %tobool294, %cont55.thread ]
  %len.1 = phi i32 [ %len.0.mux, %cont55 ], [ %25, %ioc_bb57 ], [ %len.0.mux298, %cont55.thread ]
  store i32 0, i32* %nelts.i284, align 4, !dbg !651, !tbaa !417
  %28 = load i32* %len16, align 4, !dbg !652, !tbaa !417
  %cmp66 = icmp eq i32 %28, %len.1, !dbg !652
  br i1 %cmp66, label %cont96, label %if.then68, !dbg !652

if.then68:                                        ; preds = %cont61
  %call69 = call i8* @ngx_array_push(%struct.ngx_array_s* %next_names) nounwind, !dbg !653
  %cmp70 = icmp eq i8* %call69, null, !dbg !655
  br i1 %cmp70, label %return, label %if.end75, !dbg !655

if.end75:                                         ; preds = %if.then68
  %29 = load i32* %len16, align 4, !dbg !656, !tbaa !417
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %29, i32 %len.1), !dbg !656
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !656
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !656
  br i1 %32, label %ioc_bb79, label %cont80, !dbg !656

ioc_bb79:                                         ; preds = %if.end75
  %33 = zext i32 %len.1 to i64, !dbg !656
  %34 = zext i32 %29 to i64, !dbg !656
  call void @__ioc_report_sub_overflow(i32 346, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %34, i64 %33, i8 5) nounwind, !dbg !656
  br label %cont80, !dbg !656

cont80:                                           ; preds = %if.end75, %ioc_bb79
  %len82 = bitcast i8* %call69 to i32*, !dbg !656
  store i32 %31, i32* %len82, align 4, !dbg !656, !tbaa !417
  %35 = load i8** %data, align 4, !dbg !657, !tbaa !420
  %add.ptr = getelementptr inbounds i8* %35, i32 %len.1, !dbg !657
  %data87 = getelementptr inbounds i8* %call69, i32 4, !dbg !657
  %36 = bitcast i8* %data87 to i8**, !dbg !657
  store i8* %add.ptr, i8** %36, align 4, !dbg !657, !tbaa !420
  %key_hash90 = getelementptr inbounds i8* %call69, i32 8, !dbg !658
  %37 = bitcast i8* %key_hash90 to i32*, !dbg !658
  store i32 0, i32* %37, align 4, !dbg !658, !tbaa !417
  %38 = load i8** %value, align 4, !dbg !659, !tbaa !420
  %value93 = getelementptr inbounds i8* %call69, i32 12, !dbg !659
  %39 = bitcast i8* %value93 to i8**, !dbg !659
  store i8* %38, i8** %39, align 4, !dbg !659, !tbaa !420
  br label %cont96, !dbg !660

cont96:                                           ; preds = %cont80, %cont61
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0310, i32 1), !dbg !661
  %41 = extractvalue { i32, i1 } %40, 0, !dbg !661
  %42 = extractvalue { i32, i1 } %40, 1, !dbg !661
  br i1 %42, label %ioc_bb97, label %for.cond99.preheader, !dbg !661

ioc_bb97:                                         ; preds = %cont96
  %43 = zext i32 %n.0310 to i64, !dbg !661
  call void @__ioc_report_add_overflow(i32 353, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %43, i64 1, i8 5) nounwind, !dbg !661
  br label %for.cond99.preheader, !dbg !661

for.cond99.preheader:                             ; preds = %cont96, %ioc_bb97
  %cmp100305 = icmp ult i32 %41, %nelts, !dbg !661
  br i1 %cmp100305, label %for.body102.lr.ph, label %for.end159, !dbg !661

for.body102.lr.ph:                                ; preds = %for.cond99.preheader
  %44 = zext i32 %25 to i64, !dbg !663
  br label %for.body102, !dbg !661

for.body102:                                      ; preds = %for.body102.lr.ph, %for.cond99.backedge
  %i.0306 = phi i32 [ %41, %for.body102.lr.ph ], [ %60, %for.cond99.backedge ]
  %45 = load i8** %data, align 4, !dbg !665, !tbaa !420
  %arrayidx106 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %i.0306, !dbg !665
  %data108 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %i.0306, i32 0, i32 1, !dbg !665
  %46 = load i8** %data108, align 4, !dbg !665, !tbaa !420
  %call109 = call i32 @strncmp(i8* %45, i8* %46, i32 %len.1) nounwind readonly, !dbg !665
  %cmp110 = icmp eq i32 %call109, 0, !dbg !665
  br i1 %cmp110, label %if.end113, label %for.end159, !dbg !665

if.end113:                                        ; preds = %for.body102
  br i1 %tobool299, label %if.end129, label %land.lhs.true, !dbg !666

land.lhs.true:                                    ; preds = %if.end113
  %len117 = getelementptr inbounds %struct.ngx_hash_key_t* %arrayidx106, i32 0, i32 0, i32 0, !dbg !666
  %47 = load i32* %len117, align 4, !dbg !666, !tbaa !417
  %cmp118 = icmp ugt i32 %47, %len.1, !dbg !666
  br i1 %cmp118, label %land.lhs.true120, label %if.end129, !dbg !666

land.lhs.true120:                                 ; preds = %land.lhs.true
  %arrayidx124 = getelementptr inbounds i8* %46, i32 %len.1, !dbg !666
  %48 = load i8* %arrayidx124, align 1, !dbg !666, !tbaa !418
  %cmp126 = icmp eq i8 %48, 46, !dbg !666
  br i1 %cmp126, label %if.end129, label %for.end159, !dbg !666

if.end129:                                        ; preds = %land.lhs.true120, %land.lhs.true, %if.end113
  %call130 = call i8* @ngx_array_push(%struct.ngx_array_s* %next_names) nounwind, !dbg !667
  %cmp131 = icmp eq i8* %call130, null, !dbg !668
  br i1 %cmp131, label %return, label %if.end136, !dbg !668

if.end136:                                        ; preds = %if.end129
  %len139 = getelementptr inbounds %struct.ngx_hash_key_t* %arrayidx106, i32 0, i32 0, i32 0, !dbg !663
  %49 = load i32* %len139, align 4, !dbg !663, !tbaa !417
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %49, i32 %25), !dbg !663
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !663
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !663
  br i1 %52, label %ioc_bb140, label %cont141, !dbg !663

ioc_bb140:                                        ; preds = %if.end136
  %53 = zext i32 %49 to i64, !dbg !663
  call void @__ioc_report_sub_overflow(i32 364, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %53, i64 %44, i8 5) nounwind, !dbg !663
  br label %cont141, !dbg !663

cont141:                                          ; preds = %if.end136, %ioc_bb140
  %len143 = bitcast i8* %call130 to i32*, !dbg !663
  store i32 %51, i32* %len143, align 4, !dbg !663, !tbaa !417
  %54 = load i8** %data108, align 4, !dbg !669, !tbaa !420
  %add.ptr147 = getelementptr inbounds i8* %54, i32 %25, !dbg !669
  %data149 = getelementptr inbounds i8* %call130, i32 4, !dbg !669
  %55 = bitcast i8* %data149 to i8**, !dbg !669
  store i8* %add.ptr147, i8** %55, align 4, !dbg !669, !tbaa !420
  %key_hash152 = getelementptr inbounds i8* %call130, i32 8, !dbg !670
  %56 = bitcast i8* %key_hash152 to i32*, !dbg !670
  store i32 0, i32* %56, align 4, !dbg !670, !tbaa !417
  %value154 = getelementptr inbounds %struct.ngx_hash_key_t* %names, i32 %i.0306, i32 2, !dbg !671
  %57 = load i8** %value154, align 4, !dbg !671, !tbaa !420
  %value155 = getelementptr inbounds i8* %call130, i32 12, !dbg !671
  %58 = bitcast i8* %value155 to i8**, !dbg !671
  store i8* %57, i8** %58, align 4, !dbg !671, !tbaa !420
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0306, i32 1), !dbg !661
  %60 = extractvalue { i32, i1 } %59, 0, !dbg !661
  %61 = extractvalue { i32, i1 } %59, 1, !dbg !661
  br i1 %61, label %ioc_bb157, label %for.cond99.backedge, !dbg !661

for.cond99.backedge:                              ; preds = %cont141, %ioc_bb157
  %cmp100 = icmp ult i32 %60, %nelts, !dbg !661
  br i1 %cmp100, label %for.body102, label %for.end159, !dbg !661

ioc_bb157:                                        ; preds = %cont141
  %62 = zext i32 %i.0306 to i64, !dbg !661
  call void @__ioc_report_add_overflow(i32 353, i32 33, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %62, i64 1, i8 5) nounwind, !dbg !661
  br label %for.cond99.backedge, !dbg !661

for.end159:                                       ; preds = %for.cond99.backedge, %land.lhs.true120, %for.body102, %for.cond99.preheader
  %i.0.lcssa = phi i32 [ %41, %for.cond99.preheader ], [ %i.0306, %for.body102 ], [ %i.0306, %land.lhs.true120 ], [ %60, %for.cond99.backedge ]
  %63 = load i32* %nelts.i284, align 4, !dbg !672, !tbaa !417
  %tobool161 = icmp eq i32 %63, 0, !dbg !672
  br i1 %tobool161, label %if.else, label %if.then162, !dbg !672

if.then162:                                       ; preds = %for.end159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 28, i32 4, i1 false), !dbg !635, !tbaa.struct !673
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash, align 4, !dbg !637, !tbaa !420
  %64 = load i8** %elts.i290, align 4, !dbg !674, !tbaa !420
  %65 = bitcast i8* %64 to %struct.ngx_hash_key_t*, !dbg !674
  %call164 = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %h, %struct.ngx_hash_key_t* %65, i32 %63), !dbg !674
  %cmp165 = icmp eq i32 %call164, 0, !dbg !674
  br i1 %cmp165, label %if.end170, label %return, !dbg !674

if.end170:                                        ; preds = %if.then162
  %66 = load %struct.ngx_hash_t** %hash, align 4, !dbg !675, !tbaa !420
  %67 = load i32* %len16, align 4, !dbg !676, !tbaa !417
  %cmp175 = icmp eq i32 %67, %len.1, !dbg !676
  br i1 %cmp175, label %if.then177, label %cont184, !dbg !676

if.then177:                                       ; preds = %if.end170
  %68 = load i8** %value, align 4, !dbg !677, !tbaa !420
  %69 = getelementptr inbounds %struct.ngx_hash_t* %66, i32 1, i32 0, !dbg !677
  %.c = bitcast i8* %68 to %struct.ngx_hash_elt_t**, !dbg !677
  store %struct.ngx_hash_elt_t** %.c, %struct.ngx_hash_elt_t*** %69, align 4, !dbg !677, !tbaa !420
  br label %cont184, !dbg !679

cont184:                                          ; preds = %if.end170, %if.then177
  %cond = select i1 %tobool299, i32 3, i32 2, !dbg !680
  %70 = ptrtoint %struct.ngx_hash_t* %66 to i32, !dbg !680
  %or = or i32 %70, %cond, !dbg !680
  %71 = inttoptr i32 %or to i8*, !dbg !680
  store i8* %71, i8** %23, align 4, !dbg !680, !tbaa !420
  br label %for.cond.backedge, !dbg !681

for.cond.backedge:                                ; preds = %cont184, %cont190, %if.else
  %cmp10 = icmp ult i32 %i.0.lcssa, %nelts, !dbg !631
  br i1 %cmp10, label %for.cond15.preheader, label %for.end196, !dbg !631

if.else:                                          ; preds = %for.end159
  br i1 %tobool299, label %cont190, label %for.cond.backedge, !dbg !682

cont190:                                          ; preds = %if.else
  %72 = load i8** %23, align 4, !dbg !683, !tbaa !420
  %73 = ptrtoint i8* %72 to i32, !dbg !683
  %or191 = or i32 %73, 1, !dbg !683
  %74 = inttoptr i32 %or191 to i8*, !dbg !683
  store i8* %74, i8** %23, align 4, !dbg !683, !tbaa !420
  br label %for.cond.backedge, !dbg !685

for.end196:                                       ; preds = %for.cond.backedge, %for.cond.preheader
  %75 = load i8** %elts.i, align 4, !dbg !686, !tbaa !420
  %76 = bitcast i8* %75 to %struct.ngx_hash_key_t*, !dbg !686
  %77 = load i32* %nelts.i, align 4, !dbg !686, !tbaa !417
  %call199 = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hinit, %struct.ngx_hash_key_t* %76, i32 %77), !dbg !686
  %not.cmp200 = icmp ne i32 %call199, 0, !dbg !686
  %. = sext i1 %not.cmp200 to i32, !dbg !686
  ret i32 %., !dbg !686

return:                                           ; preds = %if.then162, %if.then68, %for.end, %if.end129, %ngx_array_init.exit293, %ngx_array_init.exit
  ret i32 -1, !dbg !687
}

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define i32 @ngx_hash_key(i8* nocapture %data, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !338), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !339), !dbg !688
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !342), !dbg !689
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !340), !dbg !690
  %cmp13 = icmp eq i32 %len, 0, !dbg !690
  br i1 %cmp13, label %for.end, label %cont4, !dbg !690

cont4:                                            ; preds = %entry, %for.cond.backedge
  %key.015 = phi i32 [ %6, %for.cond.backedge ], [ 0, %entry ]
  %i.014 = phi i32 [ %11, %for.cond.backedge ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.015, i32 31), !dbg !692
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !692
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !692
  br i1 %2, label %ioc_bb5, label %cont6, !dbg !692

ioc_bb5:                                          ; preds = %cont4
  %3 = zext i32 %key.015 to i64, !dbg !692
  tail call void @__ioc_report_mul_overflow(i32 399, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %3, i64 31, i8 5) nounwind, !dbg !692
  br label %cont6, !dbg !692

cont6:                                            ; preds = %cont4, %ioc_bb5
  %arrayidx = getelementptr inbounds i8* %data, i32 %i.014, !dbg !692
  %4 = load i8* %arrayidx, align 1, !dbg !692, !tbaa !418
  %conv = zext i8 %4 to i32, !dbg !692
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %conv), !dbg !692
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !692
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !692
  br i1 %7, label %ioc_bb7, label %cont8, !dbg !692

ioc_bb7:                                          ; preds = %cont6
  %8 = zext i8 %4 to i64, !dbg !692
  %9 = zext i32 %1 to i64, !dbg !692
  tail call void @__ioc_report_add_overflow(i32 399, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind, !dbg !692
  br label %cont8, !dbg !692

cont8:                                            ; preds = %cont6, %ioc_bb7
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !342), !dbg !692
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.014, i32 1), !dbg !690
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !690
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !690
  br i1 %12, label %ioc_bb9, label %for.cond.backedge, !dbg !690

for.cond.backedge:                                ; preds = %cont8, %ioc_bb9
  %cmp = icmp ult i32 %11, %len, !dbg !690
  br i1 %cmp, label %cont4, label %for.end, !dbg !690

ioc_bb9:                                          ; preds = %cont8
  %13 = zext i32 %i.014 to i64, !dbg !690
  tail call void @__ioc_report_add_overflow(i32 398, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %13, i64 1, i8 5) nounwind, !dbg !690
  br label %for.cond.backedge, !dbg !690

for.end:                                          ; preds = %for.cond.backedge, %entry
  %key.0.lcssa = phi i32 [ 0, %entry ], [ %6, %for.cond.backedge ]
  ret i32 %key.0.lcssa, !dbg !694
}

define i32 @ngx_hash_key_lc(i8* nocapture %data, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !346), !dbg !695
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !347), !dbg !695
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !350), !dbg !696
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !348), !dbg !697
  %cmp34 = icmp eq i32 %len, 0, !dbg !697
  br i1 %cmp34, label %for.end, label %cont4, !dbg !697

cont4:                                            ; preds = %entry, %for.cond.backedge
  %key.036 = phi i32 [ %7, %for.cond.backedge ], [ 0, %entry ]
  %i.035 = phi i32 [ %12, %for.cond.backedge ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.036, i32 31), !dbg !699
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !699
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !699
  br i1 %2, label %ioc_bb5, label %cont6, !dbg !699

ioc_bb5:                                          ; preds = %cont4
  %3 = zext i32 %key.036 to i64, !dbg !699
  tail call void @__ioc_report_mul_overflow(i32 410, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %3, i64 31, i8 5) nounwind, !dbg !699
  br label %cont6, !dbg !699

cont6:                                            ; preds = %cont4, %ioc_bb5
  %arrayidx = getelementptr inbounds i8* %data, i32 %i.035, !dbg !699
  %4 = load i8* %arrayidx, align 1, !dbg !699, !tbaa !418
  %conv = zext i8 %4 to i32, !dbg !699
  %.off = add i8 %4, -65, !dbg !699
  %5 = icmp ult i8 %.off, 26, !dbg !699
  %or = or i32 %conv, 32, !dbg !699
  %cond33 = select i1 %5, i32 %or, i32 %conv, !dbg !699
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %cond33), !dbg !699
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !699
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !699
  br i1 %8, label %ioc_bb21, label %cont22, !dbg !699

ioc_bb21:                                         ; preds = %cont6
  %9 = zext i32 %cond33 to i64, !dbg !699
  %10 = zext i32 %1 to i64, !dbg !699
  tail call void @__ioc_report_add_overflow(i32 410, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %10, i64 %9, i8 5) nounwind, !dbg !699
  br label %cont22, !dbg !699

cont22:                                           ; preds = %cont6, %ioc_bb21
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !350), !dbg !699
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.035, i32 1), !dbg !697
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !697
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !697
  br i1 %13, label %ioc_bb23, label %for.cond.backedge, !dbg !697

for.cond.backedge:                                ; preds = %cont22, %ioc_bb23
  %cmp = icmp ult i32 %12, %len, !dbg !697
  br i1 %cmp, label %cont4, label %for.end, !dbg !697

ioc_bb23:                                         ; preds = %cont22
  %14 = zext i32 %i.035 to i64, !dbg !697
  tail call void @__ioc_report_add_overflow(i32 409, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %14, i64 1, i8 5) nounwind, !dbg !697
  br label %for.cond.backedge, !dbg !697

for.end:                                          ; preds = %for.cond.backedge, %entry
  %key.0.lcssa = phi i32 [ 0, %entry ], [ %7, %for.cond.backedge ]
  ret i32 %key.0.lcssa, !dbg !701
}

define i32 @ngx_hash_strlow(i8* nocapture %dst, i8* nocapture %src, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !356), !dbg !702
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !357), !dbg !702
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !358), !dbg !702
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !359), !dbg !703
  br label %while.cond, !dbg !704

while.cond:                                       ; preds = %cont18, %entry
  %dst.addr.0 = phi i8* [ %dst, %entry ], [ %incdec.ptr, %cont18 ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr19, %cont18 ]
  %n.addr.0 = phi i32 [ %n, %entry ], [ %1, %cont18 ]
  %key.0 = phi i32 [ 0, %entry ], [ %12, %cont18 ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !704
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !704
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !704
  br i1 %2, label %ioc_bb1, label %cont2, !dbg !704

ioc_bb1:                                          ; preds = %while.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !704
  tail call void @__ioc_report_sub_overflow(i32 419, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !704
  br label %cont2, !dbg !704

cont2:                                            ; preds = %while.cond, %ioc_bb1
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !358), !dbg !704
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !704
  br i1 %tobool, label %while.end, label %while.body, !dbg !704

while.body:                                       ; preds = %cont2
  %4 = load i8* %src.addr.0, align 1, !dbg !705, !tbaa !418
  %.off = add i8 %4, -65, !dbg !705
  %5 = icmp ult i8 %.off, 26, !dbg !705
  %or = or i8 %4, 32, !dbg !705
  %cond27 = select i1 %5, i8 %or, i8 %4, !dbg !705
  store i8 %cond27, i8* %dst.addr.0, align 1, !dbg !705, !tbaa !418
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.0, i32 31), !dbg !707
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !707
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !707
  br i1 %8, label %ioc_bb14, label %cont15, !dbg !707

ioc_bb14:                                         ; preds = %while.body
  %9 = zext i32 %key.0 to i64, !dbg !707
  tail call void @__ioc_report_mul_overflow(i32 421, i32 30, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %9, i64 31, i8 5) nounwind, !dbg !707
  %.pre = load i8* %dst.addr.0, align 1, !dbg !707, !tbaa !418
  br label %cont15, !dbg !707

cont15:                                           ; preds = %while.body, %ioc_bb14
  %10 = phi i8 [ %cond27, %while.body ], [ %.pre, %ioc_bb14 ]
  %conv16 = zext i8 %10 to i32, !dbg !707
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %conv16), !dbg !707
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !707
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !707
  br i1 %13, label %ioc_bb17, label %cont18, !dbg !707

ioc_bb17:                                         ; preds = %cont15
  %14 = zext i8 %10 to i64, !dbg !707
  %15 = zext i32 %7 to i64, !dbg !707
  tail call void @__ioc_report_add_overflow(i32 421, i32 35, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %15, i64 %14, i8 5) nounwind, !dbg !707
  br label %cont18, !dbg !707

cont18:                                           ; preds = %cont15, %ioc_bb17
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !359), !dbg !707
  %incdec.ptr = getelementptr inbounds i8* %dst.addr.0, i32 1, !dbg !708
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !356), !dbg !708
  %incdec.ptr19 = getelementptr inbounds i8* %src.addr.0, i32 1, !dbg !709
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr19}, i64 0, metadata !357), !dbg !709
  br label %while.cond, !dbg !710

while.end:                                        ; preds = %cont2
  ret i32 %key.0, !dbg !711
}

define i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t* nocapture %ha, i32 %type) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_keys_arrays_t* %ha}, i64 0, metadata !380), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !381), !dbg !712
  %cmp = icmp eq i32 %type, 1, !dbg !713
  %hsize = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 0, !dbg !714
  %.103 = select i1 %cmp, i32 107, i32 10007, !dbg !716
  %.104 = select i1 %cmp, i32 4, i32 16384, !dbg !716
  store i32 %.103, i32* %hsize, align 4, !dbg !714
  %temp_pool = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !717
  %0 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !717, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %0}, i64 0, metadata !718) nounwind, !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %.104}, i64 0, metadata !720) nounwind, !dbg !719
  tail call void @llvm.dbg.value(metadata !610, i64 0, metadata !721) nounwind, !dbg !719
  %nelts.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, i32 1, !dbg !722
  store i32 0, i32* %nelts.i, align 4, !dbg !722, !tbaa !417
  %size1.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, i32 2, !dbg !723
  store i32 16, i32* %size1.i, align 4, !dbg !723, !tbaa !417
  %nalloc.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, i32 3, !dbg !724
  store i32 %.104, i32* %nalloc.i, align 4, !dbg !724, !tbaa !417
  %pool2.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, i32 4, !dbg !725
  store %struct.ngx_pool_s* %0, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !725, !tbaa !420
  %umul_with_overflow = shl nuw nsw i32 %.104, 4, !dbg !726
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %0, i32 %umul_with_overflow) nounwind, !dbg !726
  %elts.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, i32 0, !dbg !726
  store i8* %call.i, i8** %elts.i, align 4, !dbg !726, !tbaa !420
  %cmp.i = icmp eq i8* %call.i, null, !dbg !727
  br i1 %cmp.i, label %return, label %if.end14, !dbg !717

if.end14:                                         ; preds = %entry
  %1 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !728, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !729) nounwind, !dbg !730
  tail call void @llvm.dbg.value(metadata !{i32 %.104}, i64 0, metadata !731) nounwind, !dbg !730
  tail call void @llvm.dbg.value(metadata !610, i64 0, metadata !732) nounwind, !dbg !730
  %nelts.i83 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, i32 1, !dbg !733
  store i32 0, i32* %nelts.i83, align 4, !dbg !733, !tbaa !417
  %size1.i84 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, i32 2, !dbg !734
  store i32 16, i32* %size1.i84, align 4, !dbg !734, !tbaa !417
  %nalloc.i85 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, i32 3, !dbg !735
  store i32 %.104, i32* %nalloc.i85, align 4, !dbg !735, !tbaa !417
  %pool2.i86 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, i32 4, !dbg !736
  store %struct.ngx_pool_s* %1, %struct.ngx_pool_s** %pool2.i86, align 4, !dbg !736, !tbaa !420
  %call.i88 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 %umul_with_overflow) nounwind, !dbg !737
  %elts.i89 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, i32 0, !dbg !737
  store i8* %call.i88, i8** %elts.i89, align 4, !dbg !737, !tbaa !420
  %cmp.i90 = icmp eq i8* %call.i88, null, !dbg !738
  br i1 %cmp.i90, label %return, label %if.end21, !dbg !728

if.end21:                                         ; preds = %if.end14
  %2 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !739, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %2}, i64 0, metadata !740) nounwind, !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %.104}, i64 0, metadata !742) nounwind, !dbg !741
  tail call void @llvm.dbg.value(metadata !610, i64 0, metadata !743) nounwind, !dbg !741
  %nelts.i93 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, i32 1, !dbg !744
  store i32 0, i32* %nelts.i93, align 4, !dbg !744, !tbaa !417
  %size1.i94 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, i32 2, !dbg !745
  store i32 16, i32* %size1.i94, align 4, !dbg !745, !tbaa !417
  %nalloc.i95 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, i32 3, !dbg !746
  store i32 %.104, i32* %nalloc.i95, align 4, !dbg !746, !tbaa !417
  %pool2.i96 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, i32 4, !dbg !747
  store %struct.ngx_pool_s* %2, %struct.ngx_pool_s** %pool2.i96, align 4, !dbg !747, !tbaa !420
  %call.i98 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %2, i32 %umul_with_overflow) nounwind, !dbg !748
  %elts.i99 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, i32 0, !dbg !748
  store i8* %call.i98, i8** %elts.i99, align 4, !dbg !748, !tbaa !420
  %cmp.i100 = icmp eq i8* %call.i98, null, !dbg !749
  br i1 %cmp.i100, label %return, label %if.end28, !dbg !739

if.end28:                                         ; preds = %if.end21
  %3 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !750, !tbaa !420
  %4 = load i32* %hsize, align 4, !dbg !750, !tbaa !417
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 20), !dbg !750
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !750
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !750
  br i1 %7, label %ioc_bb31, label %cont32, !dbg !750

ioc_bb31:                                         ; preds = %if.end28
  %8 = zext i32 %4 to i64, !dbg !750
  tail call void @__ioc_report_mul_overflow(i32 448, i32 71, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 20, i64 %8, i8 5) nounwind, !dbg !750
  br label %cont32, !dbg !750

cont32:                                           ; preds = %if.end28, %ioc_bb31
  %call33 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %3, i32 %6) nounwind, !dbg !750
  %9 = bitcast i8* %call33 to %struct.ngx_array_s*, !dbg !750
  %keys_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 4, !dbg !750
  store %struct.ngx_array_s* %9, %struct.ngx_array_s** %keys_hash, align 4, !dbg !750, !tbaa !420
  %cmp35 = icmp eq i8* %call33, null, !dbg !751
  br i1 %cmp35, label %return, label %if.end39, !dbg !751

if.end39:                                         ; preds = %cont32
  %10 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !752, !tbaa !420
  %11 = load i32* %hsize, align 4, !dbg !752, !tbaa !417
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 20), !dbg !752
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !752
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !752
  br i1 %14, label %ioc_bb42, label %cont43, !dbg !752

ioc_bb42:                                         ; preds = %if.end39
  %15 = zext i32 %11 to i64, !dbg !752
  tail call void @__ioc_report_mul_overflow(i32 452, i32 78, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 20, i64 %15, i8 5) nounwind, !dbg !752
  br label %cont43, !dbg !752

cont43:                                           ; preds = %if.end39, %ioc_bb42
  %call44 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %10, i32 %13) nounwind, !dbg !752
  %16 = bitcast i8* %call44 to %struct.ngx_array_s*, !dbg !752
  %dns_wc_head_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 6, !dbg !752
  store %struct.ngx_array_s* %16, %struct.ngx_array_s** %dns_wc_head_hash, align 4, !dbg !752, !tbaa !420
  %cmp46 = icmp eq i8* %call44, null, !dbg !753
  br i1 %cmp46, label %return, label %if.end50, !dbg !753

if.end50:                                         ; preds = %cont43
  %17 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !754, !tbaa !420
  %18 = load i32* %hsize, align 4, !dbg !754, !tbaa !417
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 20), !dbg !754
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !754
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !754
  br i1 %21, label %ioc_bb53, label %cont54, !dbg !754

ioc_bb53:                                         ; preds = %if.end50
  %22 = zext i32 %18 to i64, !dbg !754
  tail call void @__ioc_report_mul_overflow(i32 456, i32 78, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 20, i64 %22, i8 5) nounwind, !dbg !754
  br label %cont54, !dbg !754

cont54:                                           ; preds = %if.end50, %ioc_bb53
  %call55 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %17, i32 %20) nounwind, !dbg !754
  %23 = bitcast i8* %call55 to %struct.ngx_array_s*, !dbg !754
  %dns_wc_tail_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 8, !dbg !754
  store %struct.ngx_array_s* %23, %struct.ngx_array_s** %dns_wc_tail_hash, align 4, !dbg !754, !tbaa !420
  %cmp57 = icmp eq i8* %call55, null, !dbg !755
  %. = sext i1 %cmp57 to i32, !dbg !755
  ret i32 %., !dbg !755

return:                                           ; preds = %if.end21, %if.end14, %entry, %cont43, %cont32
  ret i32 -1, !dbg !756
}

define i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t* %ha, %struct.ngx_str_t* nocapture %key, i8* %value, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_keys_arrays_t* %ha}, i64 0, metadata !390), !dbg !757
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %key}, i64 0, metadata !391), !dbg !757
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !392), !dbg !757
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !393), !dbg !757
  %len1 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 0, !dbg !758
  %0 = load i32* %len1, align 4, !dbg !758, !tbaa !417
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !402), !dbg !758
  %and = and i32 %flags, 1, !dbg !759
  %tobool = icmp eq i32 %and, 0, !dbg !759
  br i1 %tobool, label %for.cond114.preheader, label %for.cond.preheader, !dbg !759

for.cond.preheader:                               ; preds = %entry
  %cmp706 = icmp eq i32 %0, 0, !dbg !760
  br i1 %cmp706, label %for.end158, label %for.body.lr.ph, !dbg !760

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !763
  br label %for.body, !dbg !760

for.condthread-pre-split:                         ; preds = %for.inc, %if.end19.for.inc_crit_edge, %ioc_bb38
  %.pr = load i32* %len1, align 4, !dbg !760, !tbaa !417
  %cmp = icmp ult i32 %10, %.pr, !dbg !760
  br i1 %cmp, label %for.body, label %cont42, !dbg !760

for.body:                                         ; preds = %for.condthread-pre-split, %for.body.lr.ph
  %n.0708 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.condthread-pre-split ]
  %i.0707 = phi i32 [ 0, %for.body.lr.ph ], [ %10, %for.condthread-pre-split ]
  %1 = load i8** %data, align 4, !dbg !763, !tbaa !420
  %arrayidx = getelementptr inbounds i8* %1, i32 %i.0707, !dbg !763
  %2 = load i8* %arrayidx, align 1, !dbg !763, !tbaa !418
  %cmp7 = icmp eq i8 %2, 42, !dbg !763
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !763

if.then9:                                         ; preds = %for.body
  %3 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0708, i32 1), !dbg !765
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !765
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !765
  br i1 %5, label %ioc_bb10, label %cont13, !dbg !765

ioc_bb10:                                         ; preds = %if.then9
  %6 = zext i32 %n.0708 to i64, !dbg !765
  tail call void @__ioc_report_add_overflow(i32 485, i32 13, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %6, i64 1, i8 5) nounwind, !dbg !765
  br label %cont13, !dbg !765

cont13:                                           ; preds = %ioc_bb10, %if.then9
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !400), !dbg !765
  %cmp14 = icmp ugt i32 %4, 1, !dbg !765
  br i1 %cmp14, label %return, label %cont13.if.end19_crit_edge, !dbg !765

cont13.if.end19_crit_edge:                        ; preds = %cont13
  %.pre724 = load i8** %data, align 4, !dbg !767, !tbaa !420
  %arrayidx21.phi.trans.insert = getelementptr inbounds i8* %.pre724, i32 %i.0707
  %.pre725 = load i8* %arrayidx21.phi.trans.insert, align 1, !dbg !767, !tbaa !418
  br label %if.end19, !dbg !765

if.end19:                                         ; preds = %cont13.if.end19_crit_edge, %for.body
  %7 = phi i8 [ %.pre725, %cont13.if.end19_crit_edge ], [ %2, %for.body ]
  %8 = phi i8* [ %.pre724, %cont13.if.end19_crit_edge ], [ %1, %for.body ]
  %n.1 = phi i32 [ %4, %cont13.if.end19_crit_edge ], [ %n.0708, %for.body ]
  %cmp23 = icmp eq i8 %7, 46, !dbg !767
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0707, i32 1), !dbg !767
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !767
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !767
  br i1 %cmp23, label %cont26, label %if.end19.for.inc_crit_edge, !dbg !767

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  br i1 %11, label %ioc_bb38, label %for.condthread-pre-split, !dbg !760

cont26:                                           ; preds = %if.end19
  br i1 %11, label %ioc_bb27, label %cont28, !dbg !767

ioc_bb27:                                         ; preds = %cont26
  %12 = zext i32 %i.0707 to i64, !dbg !767
  tail call void @__ioc_report_add_overflow(i32 489, i32 50, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !767
  %.pre721 = load i8** %data, align 4, !dbg !767, !tbaa !420
  br label %cont28, !dbg !767

cont28:                                           ; preds = %cont26, %ioc_bb27
  %13 = phi i8* [ %8, %cont26 ], [ %.pre721, %ioc_bb27 ]
  %arrayidx30 = getelementptr inbounds i8* %13, i32 %10, !dbg !767
  %14 = load i8* %arrayidx30, align 1, !dbg !767, !tbaa !418
  %cmp32 = icmp eq i8 %14, 46, !dbg !767
  br i1 %cmp32, label %return, label %for.inc, !dbg !767

for.inc:                                          ; preds = %cont28
  br i1 %11, label %ioc_bb38, label %for.condthread-pre-split, !dbg !760

ioc_bb38:                                         ; preds = %if.end19.for.inc_crit_edge, %for.inc
  %15 = zext i32 %i.0707 to i64, !dbg !760
  tail call void @__ioc_report_add_overflow(i32 483, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !760
  br label %for.condthread-pre-split, !dbg !760

cont42:                                           ; preds = %for.condthread-pre-split
  %phitmp = icmp ugt i32 %.pr, 1, !dbg !760
  br i1 %phitmp, label %land.lhs.true45, label %if.end103, !dbg !768

land.lhs.true45:                                  ; preds = %cont42
  %data46 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !768
  %16 = load i8** %data46, align 4, !dbg !768, !tbaa !420
  %17 = load i8* %16, align 1, !dbg !768, !tbaa !418
  %cmp49 = icmp eq i8 %17, 46, !dbg !768
  br i1 %cmp49, label %wildcard, label %cont57, !dbg !768

cont57:                                           ; preds = %land.lhs.true45
  %cmp58 = icmp ugt i32 %.pr, 2, !dbg !769
  br i1 %cmp58, label %if.then60, label %if.end103, !dbg !769

if.then60:                                        ; preds = %cont57
  %data61 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !770
  %18 = load i8** %data61, align 4, !dbg !770, !tbaa !420
  %19 = load i8* %18, align 1, !dbg !770, !tbaa !418
  %cmp64 = icmp eq i8 %19, 42, !dbg !770
  br i1 %cmp64, label %land.lhs.true66, label %cont77, !dbg !770

land.lhs.true66:                                  ; preds = %if.then60
  %arrayidx68 = getelementptr inbounds i8* %18, i32 1, !dbg !770
  %20 = load i8* %arrayidx68, align 1, !dbg !770, !tbaa !418
  %cmp70 = icmp eq i8 %20, 46, !dbg !770
  br i1 %cmp70, label %wildcard, label %cont77, !dbg !770

cont77:                                           ; preds = %if.then60, %land.lhs.true66
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %10, i32 2), !dbg !772
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !772
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !772
  %24 = zext i32 %10 to i64, !dbg !772
  br i1 %23, label %ioc_bb78, label %cont79, !dbg !772

ioc_bb78:                                         ; preds = %cont77
  tail call void @__ioc_report_sub_overflow(i32 502, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %24, i64 2, i8 5) nounwind, !dbg !772
  %.pre719 = load i8** %data61, align 4, !dbg !772, !tbaa !420
  br label %cont79, !dbg !772

cont79:                                           ; preds = %cont77, %ioc_bb78
  %25 = phi i8* [ %18, %cont77 ], [ %.pre719, %ioc_bb78 ]
  %arrayidx81 = getelementptr inbounds i8* %25, i32 %22, !dbg !772
  %26 = load i8* %arrayidx81, align 1, !dbg !772, !tbaa !418
  %cmp83 = icmp eq i8 %26, 46, !dbg !772
  br i1 %cmp83, label %cont87, label %if.end103, !dbg !772

cont87:                                           ; preds = %cont79
  %27 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %10, i32 1), !dbg !772
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !772
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !772
  br i1 %29, label %ioc_bb88, label %cont89, !dbg !772

ioc_bb88:                                         ; preds = %cont87
  tail call void @__ioc_report_sub_overflow(i32 502, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !772
  %.pre720 = load i8** %data61, align 4, !dbg !772, !tbaa !420
  br label %cont89, !dbg !772

cont89:                                           ; preds = %cont87, %ioc_bb88
  %30 = phi i8* [ %25, %cont87 ], [ %.pre720, %ioc_bb88 ]
  %arrayidx91 = getelementptr inbounds i8* %30, i32 %28, !dbg !772
  %31 = load i8* %arrayidx91, align 1, !dbg !772, !tbaa !418
  %cmp93 = icmp eq i8 %31, 42, !dbg !772
  br i1 %cmp93, label %cont99, label %if.end103, !dbg !772

cont99:                                           ; preds = %cont89
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !401), !dbg !773
  %32 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %0, i32 2), !dbg !775
  %33 = extractvalue { i32, i1 } %32, 0, !dbg !775
  %34 = extractvalue { i32, i1 } %32, 1, !dbg !775
  br i1 %34, label %ioc_bb100, label %wildcard, !dbg !775

ioc_bb100:                                        ; preds = %cont99
  %35 = zext i32 %0 to i64, !dbg !775
  tail call void @__ioc_report_sub_overflow(i32 504, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %35, i64 2, i8 5) nounwind, !dbg !775
  %.pre714 = load i8** %data61, align 4, !dbg !776, !tbaa !420
  br label %wildcard, !dbg !775

if.end103:                                        ; preds = %cont42, %cont79, %cont89, %cont57
  %tobool104 = icmp eq i32 %n.1, 0, !dbg !777
  br i1 %tobool104, label %for.cond114.preheader, label %return, !dbg !777

for.cond114.preheader:                            ; preds = %if.end103, %entry
  %cmp115686 = icmp eq i32 %0, 0, !dbg !778
  br i1 %cmp115686, label %for.end158, label %cont119.lr.ph, !dbg !778

cont119.lr.ph:                                    ; preds = %for.cond114.preheader
  %and120 = and i32 %flags, 2, !dbg !780
  %tobool121 = icmp eq i32 %and120, 0, !dbg !780
  %data123 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !782
  br label %cont119, !dbg !778

cont119:                                          ; preds = %cont119.lr.ph, %for.cond114.backedge
  %k.0688 = phi i32 [ 0, %cont119.lr.ph ], [ %46, %for.cond114.backedge ]
  %i.1687 = phi i32 [ 0, %cont119.lr.ph ], [ %51, %for.cond114.backedge ]
  br i1 %tobool121, label %if.then122, label %cont147, !dbg !780

if.then122:                                       ; preds = %cont119
  %36 = load i8** %data123, align 4, !dbg !782, !tbaa !420
  %arrayidx124 = getelementptr inbounds i8* %36, i32 %i.1687, !dbg !782
  %37 = load i8* %arrayidx124, align 1, !dbg !782, !tbaa !418
  %.off = add i8 %37, -65, !dbg !782
  %38 = icmp ult i8 %.off, 26, !dbg !782
  %or = or i8 %37, 32, !dbg !782
  %cond682 = select i1 %38, i8 %or, i8 %37, !dbg !782
  store i8 %cond682, i8* %arrayidx124, align 1, !dbg !782, !tbaa !418
  br label %cont147, !dbg !784

cont147:                                          ; preds = %if.then122, %cont119
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %k.0688, i32 31), !dbg !785
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !785
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !785
  br i1 %41, label %ioc_bb148, label %cont149, !dbg !785

ioc_bb148:                                        ; preds = %cont147
  %42 = zext i32 %k.0688 to i64, !dbg !785
  tail call void @__ioc_report_mul_overflow(i32 518, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %42, i64 31, i8 5) nounwind, !dbg !785
  br label %cont149, !dbg !785

cont149:                                          ; preds = %cont147, %ioc_bb148
  %43 = load i8** %data123, align 4, !dbg !785, !tbaa !420
  %arrayidx151 = getelementptr inbounds i8* %43, i32 %i.1687, !dbg !785
  %44 = load i8* %arrayidx151, align 1, !dbg !785, !tbaa !418
  %conv152 = zext i8 %44 to i32, !dbg !785
  %45 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 %conv152), !dbg !785
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !785
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !785
  br i1 %47, label %ioc_bb153, label %cont154, !dbg !785

ioc_bb153:                                        ; preds = %cont149
  %48 = zext i8 %44 to i64, !dbg !785
  %49 = zext i32 %40 to i64, !dbg !785
  tail call void @__ioc_report_add_overflow(i32 518, i32 31, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %49, i64 %48, i8 5) nounwind, !dbg !785
  br label %cont154, !dbg !785

cont154:                                          ; preds = %cont149, %ioc_bb153
  tail call void @llvm.dbg.value(metadata !{i32 %46}, i64 0, metadata !399), !dbg !785
  %50 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1687, i32 1), !dbg !778
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !778
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !778
  br i1 %52, label %ioc_bb156, label %for.cond114.backedge, !dbg !778

for.cond114.backedge:                             ; preds = %cont154, %ioc_bb156
  %cmp115 = icmp ult i32 %51, %0, !dbg !778
  br i1 %cmp115, label %cont119, label %for.end158, !dbg !778

ioc_bb156:                                        ; preds = %cont154
  %53 = zext i32 %i.1687 to i64, !dbg !778
  tail call void @__ioc_report_add_overflow(i32 514, i32 26, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !778
  br label %for.cond114.backedge, !dbg !778

for.end158:                                       ; preds = %for.cond.preheader, %for.cond114.backedge, %for.cond114.preheader
  %k.0.lcssa = phi i32 [ 0, %for.cond114.preheader ], [ %46, %for.cond114.backedge ], [ 0, %for.cond.preheader ]
  %hsize = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 0, !dbg !786
  %54 = load i32* %hsize, align 4, !dbg !786, !tbaa !417
  %55 = icmp eq i32 %54, 0, !dbg !786
  br i1 %55, label %trap, label %cont159, !dbg !786

trap:                                             ; preds = %cont228, %for.end158
  tail call void @llvm.trap() noreturn nounwind, !dbg !786
  unreachable, !dbg !786

cont159:                                          ; preds = %for.end158
  %rem = urem i32 %k.0.lcssa, %54, !dbg !786
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !399), !dbg !786
  %keys_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 4, !dbg !787
  %56 = load %struct.ngx_array_s** %keys_hash, align 4, !dbg !787, !tbaa !420
  %elts = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 0, !dbg !787
  %57 = load i8** %elts, align 4, !dbg !787, !tbaa !420
  %58 = bitcast i8* %57 to %struct.ngx_str_t*, !dbg !787
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %58}, i64 0, metadata !397), !dbg !787
  %tobool161 = icmp eq i8* %57, null, !dbg !788
  br i1 %tobool161, label %cont193, label %for.cond165.preheader, !dbg !788

for.cond165.preheader:                            ; preds = %cont159
  %nelts683 = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 1, !dbg !789
  %59 = load i32* %nelts683, align 4, !dbg !789, !tbaa !417
  %cmp168684 = icmp eq i32 %59, 0, !dbg !789
  br i1 %cmp168684, label %if.end201, label %for.body170.lr.ph, !dbg !789

for.body170.lr.ph:                                ; preds = %for.cond165.preheader
  %data177 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !792
  br label %for.body170, !dbg !789

for.body170:                                      ; preds = %for.body170.lr.ph, %for.cond165.backedge
  %60 = phi %struct.ngx_array_s* [ %56, %for.body170.lr.ph ], [ %67, %for.cond165.backedge ]
  %i.2685 = phi i32 [ 0, %for.body170.lr.ph ], [ %65, %for.cond165.backedge ]
  %len172 = getelementptr inbounds %struct.ngx_str_t* %58, i32 %i.2685, i32 0, !dbg !794
  %61 = load i32* %len172, align 4, !dbg !794, !tbaa !417
  %cmp173 = icmp eq i32 %0, %61, !dbg !794
  br i1 %cmp173, label %if.end176, label %for.inc186, !dbg !794

if.end176:                                        ; preds = %for.body170
  %62 = load i8** %data177, align 4, !dbg !792, !tbaa !420
  %data179 = getelementptr inbounds %struct.ngx_str_t* %58, i32 %i.2685, i32 1, !dbg !792
  %63 = load i8** %data179, align 4, !dbg !792, !tbaa !420
  %call = tail call i32 @strncmp(i8* %62, i8* %63, i32 %0) nounwind readonly, !dbg !792
  %cmp180 = icmp eq i32 %call, 0, !dbg !792
  br i1 %cmp180, label %return, label %for.inc186, !dbg !792

for.inc186:                                       ; preds = %for.body170, %if.end176
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2685, i32 1), !dbg !789
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !789
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !789
  br i1 %66, label %ioc_bb187, label %for.cond165.backedge, !dbg !789

for.cond165.backedge:                             ; preds = %for.inc186, %ioc_bb187
  %67 = phi %struct.ngx_array_s* [ %60, %for.inc186 ], [ %.pre, %ioc_bb187 ], !dbg !789
  %nelts = getelementptr inbounds %struct.ngx_array_s* %67, i32 %rem, i32 1, !dbg !789
  %68 = load i32* %nelts, align 4, !dbg !789, !tbaa !417
  %cmp168 = icmp ult i32 %65, %68, !dbg !789
  br i1 %cmp168, label %for.body170, label %if.end201, !dbg !789

ioc_bb187:                                        ; preds = %for.inc186
  %69 = zext i32 %i.2685 to i64, !dbg !789
  tail call void @__ioc_report_add_overflow(i32 524, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %69, i64 1, i8 5) nounwind, !dbg !789
  %.pre = load %struct.ngx_array_s** %keys_hash, align 4, !dbg !789, !tbaa !420
  br label %for.cond165.backedge, !dbg !789

cont193:                                          ; preds = %cont159
  %temp_pool = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !795
  %70 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !795, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %70}, i64 0, metadata !797) nounwind, !dbg !798
  tail call void @llvm.dbg.value(metadata !799, i64 0, metadata !800) nounwind, !dbg !798
  tail call void @llvm.dbg.value(metadata !801, i64 0, metadata !802) nounwind, !dbg !798
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 1, !dbg !803
  store i32 0, i32* %nelts.i, align 4, !dbg !803, !tbaa !417
  %size1.i = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 2, !dbg !804
  store i32 8, i32* %size1.i, align 4, !dbg !804, !tbaa !417
  %nalloc.i = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 3, !dbg !805
  store i32 4, i32* %nalloc.i, align 4, !dbg !805, !tbaa !417
  %pool2.i = getelementptr inbounds %struct.ngx_array_s* %56, i32 %rem, i32 4, !dbg !806
  store %struct.ngx_pool_s* %70, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !806, !tbaa !420
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %70, i32 32) nounwind, !dbg !807
  store i8* %call.i, i8** %elts, align 4, !dbg !807, !tbaa !420
  %cmp.i = icmp eq i8* %call.i, null, !dbg !808
  br i1 %cmp.i, label %return, label %cont193.if.end201_crit_edge, !dbg !795

cont193.if.end201_crit_edge:                      ; preds = %cont193
  %.pre722 = load %struct.ngx_array_s** %keys_hash, align 4, !dbg !809, !tbaa !420
  br label %if.end201, !dbg !795

if.end201:                                        ; preds = %for.cond165.preheader, %for.cond165.backedge, %cont193.if.end201_crit_edge
  %71 = phi %struct.ngx_array_s* [ %.pre722, %cont193.if.end201_crit_edge ], [ %56, %for.cond165.preheader ], [ %67, %for.cond165.backedge ]
  %arrayidx203 = getelementptr inbounds %struct.ngx_array_s* %71, i32 %rem, !dbg !809
  %call204 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %arrayidx203) nounwind, !dbg !809
  %cmp205 = icmp eq i8* %call204, null, !dbg !810
  br i1 %cmp205, label %return, label %if.end210, !dbg !810

if.end210:                                        ; preds = %if.end201
  %72 = bitcast %struct.ngx_str_t* %key to i64*, !dbg !811
  %73 = bitcast i8* %call204 to i64*, !dbg !811
  %74 = load i64* %72, align 4, !dbg !811
  store i64 %74, i64* %73, align 4, !dbg !811
  %keys211 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 3, !dbg !812
  %call212 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %keys211) nounwind, !dbg !812
  %cmp213 = icmp eq i8* %call212, null, !dbg !813
  br i1 %cmp213, label %return, label %if.end218, !dbg !813

if.end218:                                        ; preds = %if.end210
  %75 = bitcast i8* %call212 to i64*, !dbg !814
  %76 = load i64* %72, align 4, !dbg !814
  store i64 %76, i64* %75, align 4, !dbg !814
  %data220 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !815
  %77 = load i8** %data220, align 4, !dbg !815, !tbaa !420
  %call221 = tail call i32 @ngx_hash_key(i8* %77, i32 %0), !dbg !815
  %key_hash = getelementptr inbounds i8* %call212, i32 8, !dbg !815
  %78 = bitcast i8* %key_hash to i32*, !dbg !815
  store i32 %call221, i32* %78, align 4, !dbg !815, !tbaa !417
  %value222 = getelementptr inbounds i8* %call212, i32 12, !dbg !816
  %79 = bitcast i8* %value222 to i8**, !dbg !816
  store i8* %value, i8** %79, align 4, !dbg !816, !tbaa !420
  br label %return, !dbg !817

wildcard:                                         ; preds = %ioc_bb100, %cont99, %land.lhs.true66, %land.lhs.true45
  %80 = phi i8* [ %16, %land.lhs.true45 ], [ %18, %land.lhs.true66 ], [ %30, %cont99 ], [ %.pre714, %ioc_bb100 ]
  %skip.0 = phi i32 [ 1, %land.lhs.true45 ], [ 2, %land.lhs.true66 ], [ 0, %cont99 ], [ 0, %ioc_bb100 ]
  %last.0 = phi i32 [ %0, %land.lhs.true45 ], [ %0, %land.lhs.true66 ], [ %33, %cont99 ], [ %33, %ioc_bb100 ]
  %data223 = getelementptr inbounds %struct.ngx_str_t* %key, i32 0, i32 1, !dbg !776
  %arrayidx224 = getelementptr inbounds i8* %80, i32 %skip.0, !dbg !776
  %81 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.0, i32 %skip.0), !dbg !776
  %82 = extractvalue { i32, i1 } %81, 0, !dbg !776
  %83 = extractvalue { i32, i1 } %81, 1, !dbg !776
  %84 = zext i32 %last.0 to i64, !dbg !776
  %85 = zext i32 %skip.0 to i64, !dbg !776
  br i1 %83, label %ioc_bb227, label %cont228, !dbg !776

ioc_bb227:                                        ; preds = %wildcard
  tail call void @__ioc_report_sub_overflow(i32 552, i32 66, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %84, i64 %85, i8 5) nounwind, !dbg !776
  br label %cont228, !dbg !776

cont228:                                          ; preds = %wildcard, %ioc_bb227
  %call229 = tail call i32 @ngx_hash_strlow(i8* %arrayidx224, i8* %arrayidx224, i32 %82), !dbg !776
  tail call void @llvm.dbg.value(metadata !{i32 %call229}, i64 0, metadata !399), !dbg !776
  %hsize230 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 0, !dbg !818
  %86 = load i32* %hsize230, align 4, !dbg !818, !tbaa !417
  %87 = icmp eq i32 %86, 0, !dbg !818
  br i1 %87, label %trap, label %cont231, !dbg !818

cont231:                                          ; preds = %cont228
  %rem232 = urem i32 %call229, %86, !dbg !818
  tail call void @llvm.dbg.value(metadata !{i32 %rem232}, i64 0, metadata !399), !dbg !818
  switch i32 %skip.0, label %cont231.if.then320_crit_edge [
    i32 1, label %if.then237
    i32 0, label %if.else381
  ], !dbg !819

cont231.if.then320_crit_edge:                     ; preds = %cont231
  %temp_pool321.pre = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !820
  br label %if.then320, !dbg !819

if.then237:                                       ; preds = %cont231
  %keys_hash238 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 4, !dbg !822
  %88 = load %struct.ngx_array_s** %keys_hash238, align 4, !dbg !822, !tbaa !420
  %elts240 = getelementptr inbounds %struct.ngx_array_s* %88, i32 %rem232, i32 0, !dbg !822
  %89 = load i8** %elts240, align 4, !dbg !822, !tbaa !420
  %90 = bitcast i8* %89 to %struct.ngx_str_t*, !dbg !822
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %90}, i64 0, metadata !397), !dbg !822
  %tobool241 = icmp eq i8* %89, null, !dbg !824
  br i1 %tobool241, label %cont280, label %if.then242, !dbg !824

if.then242:                                       ; preds = %if.then237
  br i1 %83, label %ioc_bb243, label %for.cond247.preheader, !dbg !825

ioc_bb243:                                        ; preds = %if.then242
  tail call void @__ioc_report_sub_overflow(i32 559, i32 18, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %84, i64 %85, i8 5) nounwind, !dbg !825
  %.pre717 = load %struct.ngx_array_s** %keys_hash238, align 4, !dbg !827, !tbaa !420
  br label %for.cond247.preheader, !dbg !825

for.cond247.preheader:                            ; preds = %ioc_bb243, %if.then242
  %91 = phi %struct.ngx_array_s* [ %.pre717, %ioc_bb243 ], [ %88, %if.then242 ]
  %nelts250699 = getelementptr inbounds %struct.ngx_array_s* %91, i32 %rem232, i32 1, !dbg !827
  %92 = load i32* %nelts250699, align 4, !dbg !827, !tbaa !417
  %cmp251700 = icmp eq i32 %92, 0, !dbg !827
  br i1 %cmp251700, label %if.end288, label %for.body253, !dbg !827

for.body253:                                      ; preds = %for.cond247.preheader, %for.cond247.backedge
  %93 = phi %struct.ngx_array_s* [ %100, %for.cond247.backedge ], [ %91, %for.cond247.preheader ]
  %i.3701 = phi i32 [ %98, %for.cond247.backedge ], [ 0, %for.cond247.preheader ]
  %len255 = getelementptr inbounds %struct.ngx_str_t* %90, i32 %i.3701, i32 0, !dbg !829
  %94 = load i32* %len255, align 4, !dbg !829, !tbaa !417
  %cmp256 = icmp eq i32 %82, %94, !dbg !829
  br i1 %cmp256, label %if.end259, label %for.inc271, !dbg !829

if.end259:                                        ; preds = %for.body253
  %95 = load i8** %data223, align 4, !dbg !831, !tbaa !420
  %arrayidx261 = getelementptr inbounds i8* %95, i32 1, !dbg !831
  %data263 = getelementptr inbounds %struct.ngx_str_t* %90, i32 %i.3701, i32 1, !dbg !831
  %96 = load i8** %data263, align 4, !dbg !831, !tbaa !420
  %call264 = tail call i32 @strncmp(i8* %arrayidx261, i8* %96, i32 %82) nounwind readonly, !dbg !831
  %cmp265 = icmp eq i32 %call264, 0, !dbg !831
  br i1 %cmp265, label %return, label %for.inc271, !dbg !831

for.inc271:                                       ; preds = %for.body253, %if.end259
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.3701, i32 1), !dbg !827
  %98 = extractvalue { i32, i1 } %97, 0, !dbg !827
  %99 = extractvalue { i32, i1 } %97, 1, !dbg !827
  br i1 %99, label %ioc_bb272, label %for.cond247.backedge, !dbg !827

for.cond247.backedge:                             ; preds = %for.inc271, %ioc_bb272
  %100 = phi %struct.ngx_array_s* [ %93, %for.inc271 ], [ %.pre718, %ioc_bb272 ], !dbg !827
  %nelts250 = getelementptr inbounds %struct.ngx_array_s* %100, i32 %rem232, i32 1, !dbg !827
  %101 = load i32* %nelts250, align 4, !dbg !827, !tbaa !417
  %cmp251 = icmp ult i32 %98, %101, !dbg !827
  br i1 %cmp251, label %for.body253, label %if.end288, !dbg !827

ioc_bb272:                                        ; preds = %for.inc271
  %102 = zext i32 %i.3701 to i64, !dbg !827
  tail call void @__ioc_report_add_overflow(i32 560, i32 50, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %102, i64 1, i8 5) nounwind, !dbg !827
  %.pre718 = load %struct.ngx_array_s** %keys_hash238, align 4, !dbg !827, !tbaa !420
  br label %for.cond247.backedge, !dbg !827

cont280:                                          ; preds = %if.then237
  %temp_pool278 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !832
  %103 = load %struct.ngx_pool_s** %temp_pool278, align 4, !dbg !832, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %103}, i64 0, metadata !834) nounwind, !dbg !835
  tail call void @llvm.dbg.value(metadata !799, i64 0, metadata !836) nounwind, !dbg !835
  tail call void @llvm.dbg.value(metadata !801, i64 0, metadata !837) nounwind, !dbg !835
  %nelts.i662 = getelementptr inbounds %struct.ngx_array_s* %88, i32 %rem232, i32 1, !dbg !838
  store i32 0, i32* %nelts.i662, align 4, !dbg !838, !tbaa !417
  %size1.i663 = getelementptr inbounds %struct.ngx_array_s* %88, i32 %rem232, i32 2, !dbg !839
  store i32 8, i32* %size1.i663, align 4, !dbg !839, !tbaa !417
  %nalloc.i664 = getelementptr inbounds %struct.ngx_array_s* %88, i32 %rem232, i32 3, !dbg !840
  store i32 4, i32* %nalloc.i664, align 4, !dbg !840, !tbaa !417
  %pool2.i665 = getelementptr inbounds %struct.ngx_array_s* %88, i32 %rem232, i32 4, !dbg !841
  store %struct.ngx_pool_s* %103, %struct.ngx_pool_s** %pool2.i665, align 4, !dbg !841, !tbaa !420
  %call.i667 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %103, i32 32) nounwind, !dbg !842
  store i8* %call.i667, i8** %elts240, align 4, !dbg !842, !tbaa !420
  %cmp.i669 = icmp eq i8* %call.i667, null, !dbg !843
  br i1 %cmp.i669, label %return, label %cont280.if.end288_crit_edge, !dbg !832

cont280.if.end288_crit_edge:                      ; preds = %cont280
  %.pre723 = load %struct.ngx_array_s** %keys_hash238, align 4, !dbg !844, !tbaa !420
  br label %if.end288, !dbg !832

if.end288:                                        ; preds = %for.cond247.preheader, %for.cond247.backedge, %cont280.if.end288_crit_edge
  %104 = phi %struct.ngx_array_s* [ %.pre723, %cont280.if.end288_crit_edge ], [ %91, %for.cond247.preheader ], [ %100, %for.cond247.backedge ]
  %arrayidx290 = getelementptr inbounds %struct.ngx_array_s* %104, i32 %rem232, !dbg !844
  %call291 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %arrayidx290) nounwind, !dbg !844
  %cmp292 = icmp eq i8* %call291, null, !dbg !845
  br i1 %cmp292, label %return, label %cont299, !dbg !845

cont299:                                          ; preds = %if.end288
  %105 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.0, i32 1), !dbg !846
  %106 = extractvalue { i32, i1 } %105, 0, !dbg !846
  %107 = extractvalue { i32, i1 } %105, 1, !dbg !846
  br i1 %107, label %ioc_bb300, label %cont301, !dbg !846

ioc_bb300:                                        ; preds = %cont299
  tail call void @__ioc_report_sub_overflow(i32 578, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %84, i64 1, i8 5) nounwind, !dbg !846
  br label %cont301, !dbg !846

cont301:                                          ; preds = %cont299, %ioc_bb300
  %len302 = bitcast i8* %call291 to i32*, !dbg !846
  store i32 %106, i32* %len302, align 4, !dbg !846, !tbaa !417
  %temp_pool303 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !847
  %108 = load %struct.ngx_pool_s** %temp_pool303, align 4, !dbg !847, !tbaa !420
  %call305 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %108, i32 %106) nounwind, !dbg !847
  %data306 = getelementptr inbounds i8* %call291, i32 4, !dbg !847
  %109 = bitcast i8* %data306 to i8**, !dbg !847
  store i8* %call305, i8** %109, align 4, !dbg !847, !tbaa !420
  %cmp308 = icmp eq i8* %call305, null, !dbg !848
  br i1 %cmp308, label %return, label %if.end313, !dbg !848

if.end313:                                        ; preds = %cont301
  %110 = load i8** %data223, align 4, !dbg !849, !tbaa !420
  %arrayidx316 = getelementptr inbounds i8* %110, i32 1, !dbg !849
  %111 = load i32* %len302, align 4, !dbg !849, !tbaa !417
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call305, i8* %arrayidx316, i32 %111, i32 1, i1 false), !dbg !849
  br label %if.then320, !dbg !850

if.then320:                                       ; preds = %if.end313, %cont231.if.then320_crit_edge
  %temp_pool321.pre-phi = phi %struct.ngx_pool_s** [ %temp_pool321.pre, %cont231.if.then320_crit_edge ], [ %temp_pool303, %if.end313 ], !dbg !820
  %112 = load %struct.ngx_pool_s** %temp_pool321.pre-phi, align 4, !dbg !820, !tbaa !420
  %call322 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %112, i32 %last.0) nounwind, !dbg !820
  tail call void @llvm.dbg.value(metadata !{i8* %call322}, i64 0, metadata !396), !dbg !820
  %cmp323 = icmp eq i8* %call322, null, !dbg !851
  br i1 %cmp323, label %return, label %cont334, !dbg !851

cont334:                                          ; preds = %if.then320
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !394), !dbg !852
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !400), !dbg !853
  %113 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.0, i32 1), !dbg !854
  %114 = extractvalue { i32, i1 } %113, 0, !dbg !854
  %115 = extractvalue { i32, i1 } %113, 1, !dbg !854
  br i1 %115, label %ioc_bb335, label %for.cond337.preheader, !dbg !854

ioc_bb335:                                        ; preds = %cont334
  tail call void @__ioc_report_sub_overflow(i32 596, i32 19, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %84, i64 1, i8 5) nounwind, !dbg !854
  br label %for.cond337.preheader, !dbg !854

for.cond337.preheader:                            ; preds = %cont334, %ioc_bb335
  %tobool338692 = icmp eq i32 %114, 0, !dbg !854
  br i1 %tobool338692, label %cont378, label %for.body339, !dbg !854

for.body339:                                      ; preds = %for.cond337.backedge, %for.cond337.preheader
  %n.2695 = phi i32 [ 0, %for.cond337.preheader ], [ %n.3, %for.cond337.backedge ]
  %i.4694 = phi i32 [ %114, %for.cond337.preheader ], [ %137, %for.cond337.backedge ]
  %len.0693 = phi i32 [ 0, %for.cond337.preheader ], [ %len.1, %for.cond337.backedge ]
  %116 = load i8** %data223, align 4, !dbg !856, !tbaa !420
  %arrayidx341 = getelementptr inbounds i8* %116, i32 %i.4694, !dbg !856
  %117 = load i8* %arrayidx341, align 1, !dbg !856, !tbaa !418
  %cmp343 = icmp eq i8 %117, 46, !dbg !856
  br i1 %cmp343, label %if.then345, label %if.end362, !dbg !856

if.then345:                                       ; preds = %for.body339
  %arrayidx346 = getelementptr inbounds i8* %call322, i32 %n.2695, !dbg !858
  %118 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.4694, i32 1), !dbg !858
  %119 = extractvalue { i32, i1 } %118, 0, !dbg !858
  %120 = extractvalue { i32, i1 } %118, 1, !dbg !858
  br i1 %120, label %ioc_bb349, label %cont350, !dbg !858

ioc_bb349:                                        ; preds = %if.then345
  %121 = zext i32 %i.4694 to i64, !dbg !858
  tail call void @__ioc_report_add_overflow(i32 598, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %121, i64 1, i8 5) nounwind, !dbg !858
  %.pre715 = load i8** %data223, align 4, !dbg !858, !tbaa !420
  br label %cont350, !dbg !858

cont350:                                          ; preds = %if.then345, %ioc_bb349
  %122 = phi i8* [ %116, %if.then345 ], [ %.pre715, %ioc_bb349 ]
  %arrayidx352 = getelementptr inbounds i8* %122, i32 %119, !dbg !858
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx346, i8* %arrayidx352, i32 %len.0693, i32 1, i1 false), !dbg !858
  %123 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2695, i32 %len.0693), !dbg !860
  %124 = extractvalue { i32, i1 } %123, 0, !dbg !860
  %125 = extractvalue { i32, i1 } %123, 1, !dbg !860
  br i1 %125, label %ioc_bb353, label %cont356, !dbg !860

ioc_bb353:                                        ; preds = %cont350
  %126 = zext i32 %len.0693 to i64, !dbg !860
  %127 = zext i32 %n.2695 to i64, !dbg !860
  tail call void @__ioc_report_add_overflow(i32 599, i32 11, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %127, i64 %126, i8 5) nounwind, !dbg !860
  br label %cont356, !dbg !860

cont356:                                          ; preds = %ioc_bb353, %cont350
  tail call void @llvm.dbg.value(metadata !{i32 %124}, i64 0, metadata !400), !dbg !860
  %128 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 1), !dbg !861
  %129 = extractvalue { i32, i1 } %128, 0, !dbg !861
  %130 = extractvalue { i32, i1 } %128, 1, !dbg !861
  br i1 %130, label %ioc_bb357, label %cont358, !dbg !861

ioc_bb357:                                        ; preds = %cont356
  %131 = zext i32 %124 to i64, !dbg !861
  tail call void @__ioc_report_add_overflow(i32 600, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %131, i64 1, i8 5) nounwind, !dbg !861
  br label %cont358, !dbg !861

cont358:                                          ; preds = %cont356, %ioc_bb357
  tail call void @llvm.dbg.value(metadata !{i32 %129}, i64 0, metadata !400), !dbg !861
  %arrayidx359 = getelementptr inbounds i8* %call322, i32 %124, !dbg !861
  store i8 46, i8* %arrayidx359, align 1, !dbg !861, !tbaa !418
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !394), !dbg !862
  br label %for.inc365, !dbg !863

if.end362:                                        ; preds = %for.body339
  %132 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0693, i32 1), !dbg !864
  %133 = extractvalue { i32, i1 } %132, 0, !dbg !864
  %134 = extractvalue { i32, i1 } %132, 1, !dbg !864
  br i1 %134, label %ioc_bb363, label %for.inc365, !dbg !864

ioc_bb363:                                        ; preds = %if.end362
  %135 = zext i32 %len.0693 to i64, !dbg !864
  tail call void @__ioc_report_add_overflow(i32 604, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %135, i64 1, i8 5) nounwind, !dbg !864
  br label %for.inc365, !dbg !864

for.inc365:                                       ; preds = %ioc_bb363, %if.end362, %cont358
  %len.1 = phi i32 [ 0, %cont358 ], [ %133, %if.end362 ], [ %133, %ioc_bb363 ]
  %n.3 = phi i32 [ %129, %cont358 ], [ %n.2695, %if.end362 ], [ %n.2695, %ioc_bb363 ]
  %136 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.4694, i32 1), !dbg !854
  %137 = extractvalue { i32, i1 } %136, 0, !dbg !854
  %138 = extractvalue { i32, i1 } %136, 1, !dbg !854
  br i1 %138, label %ioc_bb366, label %for.cond337.backedge, !dbg !854

for.cond337.backedge:                             ; preds = %for.inc365, %ioc_bb366
  %tobool338 = icmp eq i32 %137, 0, !dbg !854
  br i1 %tobool338, label %for.end368, label %for.body339, !dbg !854

ioc_bb366:                                        ; preds = %for.inc365
  %139 = zext i32 %i.4694 to i64, !dbg !854
  tail call void @__ioc_report_sub_overflow(i32 596, i32 28, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %139, i64 1, i8 5) nounwind, !dbg !854
  br label %for.cond337.backedge, !dbg !854

for.end368:                                       ; preds = %for.cond337.backedge
  %tobool369 = icmp eq i32 %len.1, 0, !dbg !865
  br i1 %tobool369, label %cont378, label %if.then370, !dbg !865

if.then370:                                       ; preds = %for.end368
  %arrayidx371 = getelementptr inbounds i8* %call322, i32 %n.3, !dbg !866
  %140 = load i8** %data223, align 4, !dbg !866, !tbaa !420
  %arrayidx373 = getelementptr inbounds i8* %140, i32 1, !dbg !866
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx371, i8* %arrayidx373, i32 %len.1, i32 1, i1 false), !dbg !866
  %141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.3, i32 %len.1), !dbg !868
  %142 = extractvalue { i32, i1 } %141, 0, !dbg !868
  %143 = extractvalue { i32, i1 } %141, 1, !dbg !868
  br i1 %143, label %ioc_bb374, label %cont378, !dbg !868

ioc_bb374:                                        ; preds = %if.then370
  %144 = zext i32 %len.1 to i64, !dbg !868
  %145 = zext i32 %n.3 to i64, !dbg !868
  tail call void @__ioc_report_add_overflow(i32 608, i32 9, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %145, i64 %144, i8 5) nounwind, !dbg !868
  br label %cont378, !dbg !868

cont378:                                          ; preds = %for.cond337.preheader, %for.end368, %if.then370, %ioc_bb374
  %n.4 = phi i32 [ %n.3, %for.end368 ], [ %142, %if.then370 ], [ %142, %ioc_bb374 ], [ 0, %for.cond337.preheader ]
  %arrayidx379 = getelementptr inbounds i8* %call322, i32 %n.4, !dbg !869
  store i8 0, i8* %arrayidx379, align 1, !dbg !869, !tbaa !418
  %dns_wc_head = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 5, !dbg !870
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %dns_wc_head}, i64 0, metadata !404), !dbg !870
  %dns_wc_head_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 6, !dbg !871
  br label %if.end395, !dbg !872

if.else381:                                       ; preds = %cont231
  %146 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %last.0, i32 1), !dbg !873
  %147 = extractvalue { i32, i1 } %146, 0, !dbg !873
  %148 = extractvalue { i32, i1 } %146, 1, !dbg !873
  br i1 %148, label %ioc_bb382, label %cont383, !dbg !873

ioc_bb382:                                        ; preds = %if.else381
  tail call void @__ioc_report_add_overflow(i32 616, i32 9, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %84, i64 1, i8 5) nounwind, !dbg !873
  br label %cont383, !dbg !873

cont383:                                          ; preds = %if.else381, %ioc_bb382
  tail call void @llvm.dbg.value(metadata !{i32 %147}, i64 0, metadata !402), !dbg !873
  %temp_pool384 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !875
  %149 = load %struct.ngx_pool_s** %temp_pool384, align 4, !dbg !875, !tbaa !420
  %call385 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %149, i32 %147) nounwind, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i8* %call385}, i64 0, metadata !396), !dbg !875
  %cmp386 = icmp eq i8* %call385, null, !dbg !876
  br i1 %cmp386, label %return, label %if.end391, !dbg !876

if.end391:                                        ; preds = %cont383
  %150 = load i8** %data223, align 4, !dbg !877, !tbaa !420
  %call393 = tail call i8* @ngx_cpystrn(i8* %call385, i8* %150, i32 %147) nounwind, !dbg !877
  %dns_wc_tail = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 7, !dbg !878
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %dns_wc_tail}, i64 0, metadata !404), !dbg !878
  %dns_wc_tail_hash = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 8, !dbg !879
  br label %if.end395

if.end395:                                        ; preds = %if.end391, %cont378
  %p.0 = phi i8* [ %call322, %cont378 ], [ %call385, %if.end391 ]
  %last.1 = phi i32 [ %last.0, %cont378 ], [ %147, %if.end391 ]
  %.pn.in = phi %struct.ngx_array_s** [ %dns_wc_head_hash, %cont378 ], [ %dns_wc_tail_hash, %if.end391 ]
  %hwc.0 = phi %struct.ngx_array_s* [ %dns_wc_head, %cont378 ], [ %dns_wc_tail, %if.end391 ]
  %.pn = load %struct.ngx_array_s** %.pn.in, align 4, !dbg !871
  %keys.0 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, !dbg !871
  %elts396 = getelementptr inbounds %struct.ngx_array_s* %keys.0, i32 0, i32 0, !dbg !880
  %151 = load i8** %elts396, align 4, !dbg !880, !tbaa !420
  %152 = bitcast i8* %151 to %struct.ngx_str_t*, !dbg !880
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %152}, i64 0, metadata !397), !dbg !880
  %tobool397 = icmp eq i8* %151, null, !dbg !881
  br i1 %tobool397, label %cont431, label %if.then398, !dbg !881

if.then398:                                       ; preds = %if.end395
  %153 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.1, i32 %skip.0), !dbg !882
  %154 = extractvalue { i32, i1 } %153, 0, !dbg !882
  %155 = extractvalue { i32, i1 } %153, 1, !dbg !882
  br i1 %155, label %ioc_bb399, label %for.cond403.preheader, !dbg !882

ioc_bb399:                                        ; preds = %if.then398
  %156 = zext i32 %last.1 to i64, !dbg !882
  tail call void @__ioc_report_sub_overflow(i32 628, i32 16, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %156, i64 %85, i8 5) nounwind, !dbg !882
  br label %for.cond403.preheader, !dbg !882

for.cond403.preheader:                            ; preds = %ioc_bb399, %if.then398
  %nelts404 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, i32 1, !dbg !884
  %157 = load i32* %nelts404, align 4, !dbg !884, !tbaa !417
  %cmp405690 = icmp eq i32 %157, 0, !dbg !884
  br i1 %cmp405690, label %if.end439, label %for.body407, !dbg !884

for.body407:                                      ; preds = %for.cond403.preheader, %for.cond403.backedge
  %158 = phi i32 [ %165, %for.cond403.backedge ], [ %157, %for.cond403.preheader ]
  %i.5691 = phi i32 [ %163, %for.cond403.backedge ], [ 0, %for.cond403.preheader ]
  %len409 = getelementptr inbounds %struct.ngx_str_t* %152, i32 %i.5691, i32 0, !dbg !886
  %159 = load i32* %len409, align 4, !dbg !886, !tbaa !417
  %cmp410 = icmp eq i32 %154, %159, !dbg !886
  br i1 %cmp410, label %if.end413, label %for.inc424, !dbg !886

if.end413:                                        ; preds = %for.body407
  %160 = load i8** %data223, align 4, !dbg !888, !tbaa !420
  %add.ptr = getelementptr inbounds i8* %160, i32 %skip.0, !dbg !888
  %data416 = getelementptr inbounds %struct.ngx_str_t* %152, i32 %i.5691, i32 1, !dbg !888
  %161 = load i8** %data416, align 4, !dbg !888, !tbaa !420
  %call417 = tail call i32 @strncmp(i8* %add.ptr, i8* %161, i32 %154) nounwind readonly, !dbg !888
  %cmp418 = icmp eq i32 %call417, 0, !dbg !888
  br i1 %cmp418, label %return, label %for.inc424, !dbg !888

for.inc424:                                       ; preds = %for.body407, %if.end413
  %162 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.5691, i32 1), !dbg !884
  %163 = extractvalue { i32, i1 } %162, 0, !dbg !884
  %164 = extractvalue { i32, i1 } %162, 1, !dbg !884
  br i1 %164, label %ioc_bb425, label %for.cond403.backedge, !dbg !884

for.cond403.backedge:                             ; preds = %for.inc424, %ioc_bb425
  %165 = phi i32 [ %158, %for.inc424 ], [ %.pre716, %ioc_bb425 ], !dbg !884
  %cmp405 = icmp ult i32 %163, %165, !dbg !884
  br i1 %cmp405, label %for.body407, label %if.end439, !dbg !884

ioc_bb425:                                        ; preds = %for.inc424
  %166 = zext i32 %i.5691 to i64, !dbg !884
  tail call void @__ioc_report_add_overflow(i32 629, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %166, i64 1, i8 5) nounwind, !dbg !884
  %.pre716 = load i32* %nelts404, align 4, !dbg !884, !tbaa !417
  br label %for.cond403.backedge, !dbg !884

cont431:                                          ; preds = %if.end395
  %temp_pool429 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !889
  %167 = load %struct.ngx_pool_s** %temp_pool429, align 4, !dbg !889, !tbaa !420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %keys.0}, i64 0, metadata !891) nounwind, !dbg !892
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %167}, i64 0, metadata !893) nounwind, !dbg !892
  tail call void @llvm.dbg.value(metadata !799, i64 0, metadata !894) nounwind, !dbg !892
  tail call void @llvm.dbg.value(metadata !801, i64 0, metadata !895) nounwind, !dbg !892
  %nelts.i672 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, i32 1, !dbg !896
  store i32 0, i32* %nelts.i672, align 4, !dbg !896, !tbaa !417
  %size1.i673 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, i32 2, !dbg !897
  store i32 8, i32* %size1.i673, align 4, !dbg !897, !tbaa !417
  %nalloc.i674 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, i32 3, !dbg !898
  store i32 4, i32* %nalloc.i674, align 4, !dbg !898, !tbaa !417
  %pool2.i675 = getelementptr inbounds %struct.ngx_array_s* %.pn, i32 %rem232, i32 4, !dbg !899
  store %struct.ngx_pool_s* %167, %struct.ngx_pool_s** %pool2.i675, align 4, !dbg !899, !tbaa !420
  %call.i677 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %167, i32 32) nounwind, !dbg !900
  store i8* %call.i677, i8** %elts396, align 4, !dbg !900, !tbaa !420
  %cmp.i679 = icmp eq i8* %call.i677, null, !dbg !901
  br i1 %cmp.i679, label %return, label %if.end439, !dbg !889

if.end439:                                        ; preds = %for.cond403.preheader, %for.cond403.backedge, %cont431
  %call440 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %keys.0) nounwind, !dbg !902
  %cmp441 = icmp eq i8* %call440, null, !dbg !903
  br i1 %cmp441, label %return, label %if.end446, !dbg !903

if.end446:                                        ; preds = %if.end439
  %168 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.1, i32 %skip.0), !dbg !904
  %169 = extractvalue { i32, i1 } %168, 0, !dbg !904
  %170 = extractvalue { i32, i1 } %168, 1, !dbg !904
  %171 = zext i32 %last.1 to i64, !dbg !904
  br i1 %170, label %ioc_bb447, label %cont448, !dbg !904

ioc_bb447:                                        ; preds = %if.end446
  tail call void @__ioc_report_sub_overflow(i32 647, i32 22, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %171, i64 %85, i8 5) nounwind, !dbg !904
  br label %cont448, !dbg !904

cont448:                                          ; preds = %if.end446, %ioc_bb447
  %len449 = bitcast i8* %call440 to i32*, !dbg !904
  store i32 %169, i32* %len449, align 4, !dbg !904, !tbaa !417
  %temp_pool450 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha, i32 0, i32 2, !dbg !905
  %172 = load %struct.ngx_pool_s** %temp_pool450, align 4, !dbg !905, !tbaa !420
  %call452 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %172, i32 %169) nounwind, !dbg !905
  %data453 = getelementptr inbounds i8* %call440, i32 4, !dbg !905
  %173 = bitcast i8* %data453 to i8**, !dbg !905
  store i8* %call452, i8** %173, align 4, !dbg !905, !tbaa !420
  %cmp455 = icmp eq i8* %call452, null, !dbg !906
  br i1 %cmp455, label %return, label %if.end460, !dbg !906

if.end460:                                        ; preds = %cont448
  %174 = load i8** %data223, align 4, !dbg !907, !tbaa !420
  %add.ptr463 = getelementptr inbounds i8* %174, i32 %skip.0, !dbg !907
  %175 = load i32* %len449, align 4, !dbg !907, !tbaa !417
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call452, i8* %add.ptr463, i32 %175, i32 1, i1 false), !dbg !907
  %call465 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %hwc.0) nounwind, !dbg !908
  %cmp466 = icmp eq i8* %call465, null, !dbg !909
  br i1 %cmp466, label %return, label %cont473, !dbg !909

cont473:                                          ; preds = %if.end460
  %176 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.1, i32 1), !dbg !910
  %177 = extractvalue { i32, i1 } %176, 0, !dbg !910
  %178 = extractvalue { i32, i1 } %176, 1, !dbg !910
  br i1 %178, label %ioc_bb474, label %cont475, !dbg !910

ioc_bb474:                                        ; preds = %cont473
  tail call void @__ioc_report_sub_overflow(i32 658, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %171, i64 1, i8 5) nounwind, !dbg !910
  br label %cont475, !dbg !910

cont475:                                          ; preds = %cont473, %ioc_bb474
  %len477 = bitcast i8* %call465 to i32*, !dbg !910
  store i32 %177, i32* %len477, align 4, !dbg !910, !tbaa !417
  %data479 = getelementptr inbounds i8* %call465, i32 4, !dbg !911
  %179 = bitcast i8* %data479 to i8**, !dbg !911
  store i8* %p.0, i8** %179, align 4, !dbg !911, !tbaa !420
  %key_hash482 = getelementptr inbounds i8* %call465, i32 8, !dbg !912
  %180 = bitcast i8* %key_hash482 to i32*, !dbg !912
  store i32 0, i32* %180, align 4, !dbg !912, !tbaa !417
  %value483 = getelementptr inbounds i8* %call465, i32 12, !dbg !913
  %181 = bitcast i8* %value483 to i8**, !dbg !913
  store i8* %value, i8** %181, align 4, !dbg !913, !tbaa !420
  br label %return, !dbg !914

return:                                           ; preds = %cont28, %cont13, %if.end259, %if.end413, %if.end176, %cont280, %cont431, %cont193, %if.end460, %cont448, %if.end439, %cont383, %if.then320, %cont301, %if.end288, %if.end210, %if.end201, %if.end103, %cont475, %if.end218
  %retval.0 = phi i32 [ 0, %cont475 ], [ 0, %if.end218 ], [ -5, %if.end103 ], [ -1, %cont193 ], [ -1, %if.end201 ], [ -1, %if.end210 ], [ -1, %cont280 ], [ -1, %if.end288 ], [ -1, %cont301 ], [ -1, %if.then320 ], [ -1, %cont383 ], [ -1, %cont431 ], [ -1, %if.end439 ], [ -1, %cont448 ], [ -1, %if.end460 ], [ -3, %if.end176 ], [ -3, %if.end413 ], [ -3, %if.end259 ], [ -5, %cont13 ], [ -5, %cont28 ]
  ret i32 %retval.0, !dbg !915
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i8* @ngx_cpystrn(i8*, i8*, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_hash.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !48, metadata !67, metadata !77, metadata !95, metadata !308, metadata !335, metadata !343, metadata !351, metadata !361, metadata !384, metadata !406}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_find", metadata !"ngx_hash_find", metadata !"", metadata !6, i32 8, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_hash_t*, i32, i8*, i32)* @ngx_hash_find, null, null, metadata !39, i32 9} ; [ DW_TAG_subprogram ] [line 8] [def] [scope 9] [ngx_hash_find]
!6 = metadata !{i32 786473, metadata !"src/core/ngx_hash.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !34, metadata !37, metadata !38}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_t]
!11 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !6, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!12 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!13 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!14 = metadata !{metadata !15, metadata !33}
!15 = metadata !{i32 786445, metadata !12, metadata !"buckets", metadata !13, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!18 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !13, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !22, metadata !26}
!21 = metadata !{i32 786445, metadata !19, metadata !"value", metadata !13, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !19, metadata !"len", metadata !13, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!23 = metadata !{i32 786454, null, metadata !"u_short", metadata !13, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!24 = metadata !{i32 786454, null, metadata !"__u_short", metadata !13, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!25 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!26 = metadata !{i32 786445, metadata !19, metadata !"name", metadata !13, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !27} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !28, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!28 = metadata !{i32 786454, null, metadata !"u_char", metadata !13, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!29 = metadata !{i32 786454, null, metadata !"__u_char", metadata !13, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!30 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 0}        ; [ DW_TAG_subrange_type ] [0, 0]
!33 = metadata !{i32 786445, metadata !12, metadata !"size", metadata !13, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!34 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !13, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!35 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !13, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!36 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!38 = metadata !{i32 786454, null, metadata !"size_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47}
!41 = metadata !{i32 786689, metadata !5, metadata !"hash", metadata !6, i32 16777224, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 8]
!42 = metadata !{i32 786689, metadata !5, metadata !"key", metadata !6, i32 33554440, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 8]
!43 = metadata !{i32 786689, metadata !5, metadata !"name", metadata !6, i32 50331656, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 8]
!44 = metadata !{i32 786689, metadata !5, metadata !"len", metadata !6, i32 67108872, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 8]
!45 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 10, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 10]
!46 = metadata !{i32 786443, metadata !5, i32 9, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!47 = metadata !{i32 786688, metadata !46, metadata !"elt", metadata !6, i32 11, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elt] [line 11]
!48 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_find_wc_head", metadata !"ngx_hash_find_wc_head", metadata !"", metadata !6, i32 35, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_hash_wildcard_t*, i8*, i32)* @ngx_hash_find_wc_head, null, null, metadata !57, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [ngx_hash_find_wc_head]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !9, metadata !51, metadata !37, metadata !38}
!51 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!52 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56}
!55 = metadata !{i32 786445, metadata !53, metadata !"hash", metadata !13, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!56 = metadata !{i32 786445, metadata !53, metadata !"value", metadata !13, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66}
!59 = metadata !{i32 786689, metadata !48, metadata !"hwc", metadata !6, i32 16777251, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hwc] [line 35]
!60 = metadata !{i32 786689, metadata !48, metadata !"name", metadata !6, i32 33554467, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 35]
!61 = metadata !{i32 786689, metadata !48, metadata !"len", metadata !6, i32 50331683, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 35]
!62 = metadata !{i32 786688, metadata !63, metadata !"value", metadata !6, i32 37, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 37]
!63 = metadata !{i32 786443, metadata !48, i32 36, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!64 = metadata !{i32 786688, metadata !63, metadata !"i", metadata !6, i32 38, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 38]
!65 = metadata !{i32 786688, metadata !63, metadata !"n", metadata !6, i32 39, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 39]
!66 = metadata !{i32 786688, metadata !63, metadata !"key", metadata !6, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 40]
!67 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_find_wc_tail", metadata !"ngx_hash_find_wc_tail", metadata !"", metadata !6, i32 98, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_hash_wildcard_t*, i8*, i32)* @ngx_hash_find_wc_tail, null, null, metadata !68, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [ngx_hash_find_wc_tail]
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !76}
!70 = metadata !{i32 786689, metadata !67, metadata !"hwc", metadata !6, i32 16777314, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hwc] [line 98]
!71 = metadata !{i32 786689, metadata !67, metadata !"name", metadata !6, i32 33554530, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 98]
!72 = metadata !{i32 786689, metadata !67, metadata !"len", metadata !6, i32 50331746, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 98]
!73 = metadata !{i32 786688, metadata !74, metadata !"value", metadata !6, i32 100, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 100]
!74 = metadata !{i32 786443, metadata !67, i32 99, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!75 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 101, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 101]
!76 = metadata !{i32 786688, metadata !74, metadata !"key", metadata !6, i32 102, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 102]
!77 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_find_combined", metadata !"ngx_hash_find_combined", metadata !"", metadata !6, i32 140, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_hash_combined_t*, i32, i8*, i32)* @ngx_hash_find_combined, null, null, metadata !87, i32 141} ; [ DW_TAG_subprogram ] [line 140] [def] [scope 141] [ngx_hash_find_combined]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !9, metadata !80, metadata !34, metadata !37, metadata !38}
!80 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_combined_t]
!81 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !6, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!83 = metadata !{metadata !84, metadata !85, metadata !86}
!84 = metadata !{i32 786445, metadata !82, metadata !"hash", metadata !13, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!85 = metadata !{i32 786445, metadata !82, metadata !"wc_head", metadata !13, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !51} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!86 = metadata !{i32 786445, metadata !82, metadata !"wc_tail", metadata !13, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !51} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!89 = metadata !{i32 786689, metadata !77, metadata !"hash", metadata !6, i32 16777356, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 140]
!90 = metadata !{i32 786689, metadata !77, metadata !"key", metadata !6, i32 33554572, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 140]
!91 = metadata !{i32 786689, metadata !77, metadata !"name", metadata !6, i32 50331788, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 140]
!92 = metadata !{i32 786689, metadata !77, metadata !"len", metadata !6, i32 67109004, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 140]
!93 = metadata !{i32 786688, metadata !94, metadata !"value", metadata !6, i32 142, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 142]
!94 = metadata !{i32 786443, metadata !77, i32 141, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!95 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_init", metadata !"ngx_hash_init", metadata !"", metadata !6, i32 169, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)* @ngx_hash_init, null, null, metadata !290, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [ngx_hash_init]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !98, metadata !102, metadata !283, metadata !34}
!98 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!99 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!100 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!101 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!102 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_init_t]
!103 = metadata !{i32 786454, null, metadata !"ngx_hash_init_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [ngx_hash_init_t] [line 62, size 0, align 0, offset 0] [from ]
!104 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 52, i64 224, i64 32, i32 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 52, size 224, align 32, offset 0] [from ]
!105 = metadata !{metadata !106, metadata !107, metadata !112, metadata !113, metadata !114, metadata !117, metadata !282}
!106 = metadata !{i32 786445, metadata !104, metadata !"hash", metadata !13, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [hash] [line 53, size 32, align 32, offset 0] [from ]
!107 = metadata !{i32 786445, metadata !104, metadata !"key", metadata !13, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [key] [line 54, size 32, align 32, offset 32] [from ngx_hash_key_pt]
!108 = metadata !{i32 786454, null, metadata !"ngx_hash_key_pt", metadata !13, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [ngx_hash_key_pt] [line 42, size 0, align 0, offset 0] [from ]
!109 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !34, metadata !37, metadata !38}
!112 = metadata !{i32 786445, metadata !104, metadata !"max_size", metadata !13, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [max_size] [line 56, size 32, align 32, offset 64] [from ngx_uint_t]
!113 = metadata !{i32 786445, metadata !104, metadata !"bucket_size", metadata !13, i32 57, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [bucket_size] [line 57, size 32, align 32, offset 96] [from ngx_uint_t]
!114 = metadata !{i32 786445, metadata !104, metadata !"name", metadata !13, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !115} ; [ DW_TAG_member ] [name] [line 59, size 32, align 32, offset 128] [from ]
!115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!116 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786445, metadata !104, metadata !"pool", metadata !13, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !118} ; [ DW_TAG_member ] [pool] [line 60, size 32, align 32, offset 160] [from ]
!118 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!119 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !13, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!120 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !121, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!121 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!122 = metadata !{metadata !123, metadata !133, metadata !134, metadata !135, metadata !262, metadata !269, metadata !281}
!123 = metadata !{i32 786445, metadata !120, metadata !"d", metadata !121, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!124 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !121, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!125 = metadata !{i32 786451, null, metadata !"", metadata !121, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !132}
!127 = metadata !{i32 786445, metadata !125, metadata !"last", metadata !121, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !125, metadata !"end", metadata !121, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!129 = metadata !{i32 786445, metadata !125, metadata !"next", metadata !121, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !130} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!130 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!131 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !121, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!132 = metadata !{i32 786445, metadata !125, metadata !"failed", metadata !121, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!133 = metadata !{i32 786445, metadata !120, metadata !"max", metadata !121, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!134 = metadata !{i32 786445, metadata !120, metadata !"current", metadata !121, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !130} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!135 = metadata !{i32 786445, metadata !120, metadata !"chain", metadata !121, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !136} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!137 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !121, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!138 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !139, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!139 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!140 = metadata !{metadata !141, metadata !259}
!141 = metadata !{i32 786445, metadata !138, metadata !"buf", metadata !139, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!143 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !139, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!144 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !139, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !153, metadata !154, metadata !155, metadata !156, metadata !158, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258}
!146 = metadata !{i32 786445, metadata !144, metadata !"pos", metadata !139, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!147 = metadata !{i32 786445, metadata !144, metadata !"last", metadata !139, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!148 = metadata !{i32 786445, metadata !144, metadata !"file_pos", metadata !139, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !149} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!149 = metadata !{i32 786454, null, metadata !"off_t", metadata !139, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!150 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !139, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!151 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !139, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!152 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!153 = metadata !{i32 786445, metadata !144, metadata !"file_last", metadata !139, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !149} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!154 = metadata !{i32 786445, metadata !144, metadata !"start", metadata !139, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!155 = metadata !{i32 786445, metadata !144, metadata !"end", metadata !139, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !37} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!156 = metadata !{i32 786445, metadata !144, metadata !"tag", metadata !139, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!157 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !139, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !144, metadata !"file", metadata !139, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !159} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!159 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!160 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !139, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!161 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !162, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!162 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!163 = metadata !{metadata !164, metadata !166, metadata !173, metadata !213, metadata !214, metadata !215, metadata !244, metadata !245}
!164 = metadata !{i32 786445, metadata !161, metadata !"fd", metadata !162, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!165 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !162, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!166 = metadata !{i32 786445, metadata !161, metadata !"name", metadata !162, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!167 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !162, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!168 = metadata !{i32 786451, null, metadata !"", metadata !169, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!169 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786445, metadata !168, metadata !"len", metadata !169, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!172 = metadata !{i32 786445, metadata !168, metadata !"data", metadata !169, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!173 = metadata !{i32 786445, metadata !161, metadata !"info", metadata !162, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !174} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!174 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !162, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!175 = metadata !{i32 786451, null, metadata !"stat", metadata !176, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!176 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!177 = metadata !{metadata !178, metadata !182, metadata !183, metadata !186, metadata !188, metadata !190, metadata !192, metadata !194, metadata !195, metadata !196, metadata !197, metadata !200, metadata !202, metadata !209, metadata !210, metadata !211}
!178 = metadata !{i32 786445, metadata !175, metadata !"st_dev", metadata !176, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!179 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !176, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!180 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !176, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!181 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!182 = metadata !{i32 786445, metadata !175, metadata !"__pad1", metadata !176, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!183 = metadata !{i32 786445, metadata !175, metadata !"__st_ino", metadata !176, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !184} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!184 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !176, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!185 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!186 = metadata !{i32 786445, metadata !175, metadata !"st_mode", metadata !176, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !187} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!187 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !176, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!188 = metadata !{i32 786445, metadata !175, metadata !"st_nlink", metadata !176, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !189} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!189 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !176, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!190 = metadata !{i32 786445, metadata !175, metadata !"st_uid", metadata !176, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !191} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!191 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !176, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!192 = metadata !{i32 786445, metadata !175, metadata !"st_gid", metadata !176, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !193} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!193 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !176, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!194 = metadata !{i32 786445, metadata !175, metadata !"st_rdev", metadata !176, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !179} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!195 = metadata !{i32 786445, metadata !175, metadata !"__pad2", metadata !176, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!196 = metadata !{i32 786445, metadata !175, metadata !"st_size", metadata !176, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !150} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!197 = metadata !{i32 786445, metadata !175, metadata !"st_blksize", metadata !176, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !198} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!198 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !176, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!199 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!200 = metadata !{i32 786445, metadata !175, metadata !"st_blocks", metadata !176, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !201} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!201 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !176, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!202 = metadata !{i32 786445, metadata !175, metadata !"st_atim", metadata !176, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !203} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!203 = metadata !{i32 786451, null, metadata !"timespec", metadata !204, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!204 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!205 = metadata !{metadata !206, metadata !208}
!206 = metadata !{i32 786445, metadata !203, metadata !"tv_sec", metadata !204, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!207 = metadata !{i32 786454, null, metadata !"__time_t", metadata !204, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!208 = metadata !{i32 786445, metadata !203, metadata !"tv_nsec", metadata !204, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !199} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!209 = metadata !{i32 786445, metadata !175, metadata !"st_mtim", metadata !176, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !203} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!210 = metadata !{i32 786445, metadata !175, metadata !"st_ctim", metadata !176, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !203} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!211 = metadata !{i32 786445, metadata !175, metadata !"st_ino", metadata !176, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !212} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!212 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !176, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!213 = metadata !{i32 786445, metadata !161, metadata !"offset", metadata !162, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !149} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!214 = metadata !{i32 786445, metadata !161, metadata !"sys_offset", metadata !162, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !149} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!215 = metadata !{i32 786445, metadata !161, metadata !"log", metadata !162, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !216} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!216 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!217 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !162, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!218 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !219, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!219 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!220 = metadata !{metadata !221, metadata !222, metadata !233, metadata !235, metadata !242, metadata !243}
!221 = metadata !{i32 786445, metadata !218, metadata !"log_level", metadata !219, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!222 = metadata !{i32 786445, metadata !218, metadata !"file", metadata !219, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !223} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!223 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!224 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !219, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!225 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !226, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!226 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!228 = metadata !{i32 786445, metadata !225, metadata !"fd", metadata !226, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!229 = metadata !{i32 786445, metadata !225, metadata !"name", metadata !226, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !167} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!230 = metadata !{i32 786445, metadata !225, metadata !"buffer", metadata !226, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!231 = metadata !{i32 786445, metadata !225, metadata !"pos", metadata !226, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!232 = metadata !{i32 786445, metadata !225, metadata !"last", metadata !226, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !37} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!233 = metadata !{i32 786445, metadata !218, metadata !"connection", metadata !219, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !234} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!234 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !219, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!235 = metadata !{i32 786445, metadata !218, metadata !"handler", metadata !219, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !236} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!236 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !219, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!239 = metadata !{metadata !37, metadata !240, metadata !37, metadata !38}
!240 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!241 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !219, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!242 = metadata !{i32 786445, metadata !218, metadata !"data", metadata !219, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!243 = metadata !{i32 786445, metadata !218, metadata !"action", metadata !219, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !115} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!244 = metadata !{i32 786445, metadata !161, metadata !"valid_info", metadata !162, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !36} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!245 = metadata !{i32 786445, metadata !161, metadata !"directio", metadata !162, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !36} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!246 = metadata !{i32 786445, metadata !144, metadata !"shadow", metadata !139, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !142} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!247 = metadata !{i32 786445, metadata !144, metadata !"temporary", metadata !139, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !36} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!248 = metadata !{i32 786445, metadata !144, metadata !"memory", metadata !139, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !36} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!249 = metadata !{i32 786445, metadata !144, metadata !"mmap", metadata !139, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !36} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!250 = metadata !{i32 786445, metadata !144, metadata !"recycled", metadata !139, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !36} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!251 = metadata !{i32 786445, metadata !144, metadata !"in_file", metadata !139, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !36} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!252 = metadata !{i32 786445, metadata !144, metadata !"flush", metadata !139, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !36} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!253 = metadata !{i32 786445, metadata !144, metadata !"sync", metadata !139, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !36} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!254 = metadata !{i32 786445, metadata !144, metadata !"last_buf", metadata !139, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !36} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!255 = metadata !{i32 786445, metadata !144, metadata !"last_in_chain", metadata !139, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !36} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!256 = metadata !{i32 786445, metadata !144, metadata !"last_shadow", metadata !139, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !36} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!257 = metadata !{i32 786445, metadata !144, metadata !"temp_file", metadata !139, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !36} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!258 = metadata !{i32 786445, metadata !144, metadata !"num", metadata !139, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !101} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!259 = metadata !{i32 786445, metadata !138, metadata !"next", metadata !139, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !260} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!260 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !261} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!261 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !139, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!262 = metadata !{i32 786445, metadata !120, metadata !"large", metadata !121, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !263} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!263 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!264 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !121, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!265 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !121, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!266 = metadata !{metadata !267, metadata !268}
!267 = metadata !{i32 786445, metadata !265, metadata !"next", metadata !121, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!268 = metadata !{i32 786445, metadata !265, metadata !"alloc", metadata !121, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!269 = metadata !{i32 786445, metadata !120, metadata !"cleanup", metadata !121, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !270} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!271 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !121, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !272} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!272 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !121, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !279, metadata !280}
!274 = metadata !{i32 786445, metadata !272, metadata !"handler", metadata !121, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!275 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !121, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!276 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !277} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !9}
!279 = metadata !{i32 786445, metadata !272, metadata !"data", metadata !121, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!280 = metadata !{i32 786445, metadata !272, metadata !"next", metadata !121, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !270} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!281 = metadata !{i32 786445, metadata !120, metadata !"log", metadata !121, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !216} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!282 = metadata !{i32 786445, metadata !104, metadata !"temp_pool", metadata !13, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !118} ; [ DW_TAG_member ] [temp_pool] [line 61, size 32, align 32, offset 192] [from ]
!283 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_key_t]
!284 = metadata !{i32 786454, null, metadata !"ngx_hash_key_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_typedef ] [ngx_hash_key_t] [line 39, size 0, align 0, offset 0] [from ]
!285 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 35, i64 128, i64 32, i32 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 35, size 128, align 32, offset 0] [from ]
!286 = metadata !{metadata !287, metadata !288, metadata !289}
!287 = metadata !{i32 786445, metadata !285, metadata !"key", metadata !13, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_member ] [key] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!288 = metadata !{i32 786445, metadata !285, metadata !"key_hash", metadata !13, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [key_hash] [line 37, size 32, align 32, offset 64] [from ngx_uint_t]
!289 = metadata !{i32 786445, metadata !285, metadata !"value", metadata !13, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [value] [line 38, size 32, align 32, offset 96] [from ]
!290 = metadata !{metadata !291}
!291 = metadata !{metadata !292, metadata !293, metadata !294, metadata !295, metadata !297, metadata !298, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307}
!292 = metadata !{i32 786689, metadata !95, metadata !"hinit", metadata !6, i32 16777385, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hinit] [line 169]
!293 = metadata !{i32 786689, metadata !95, metadata !"names", metadata !6, i32 33554601, metadata !283, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [names] [line 169]
!294 = metadata !{i32 786689, metadata !95, metadata !"nelts", metadata !6, i32 50331817, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelts] [line 169]
!295 = metadata !{i32 786688, metadata !296, metadata !"elts", metadata !6, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elts] [line 171]
!296 = metadata !{i32 786443, metadata !95, i32 170, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!297 = metadata !{i32 786688, metadata !296, metadata !"len", metadata !6, i32 172, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 172]
!298 = metadata !{i32 786688, metadata !296, metadata !"test", metadata !6, i32 173, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test] [line 173]
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_short]
!300 = metadata !{i32 786688, metadata !296, metadata !"i", metadata !6, i32 174, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 174]
!301 = metadata !{i32 786688, metadata !296, metadata !"n", metadata !6, i32 175, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 175]
!302 = metadata !{i32 786688, metadata !296, metadata !"key", metadata !6, i32 176, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 176]
!303 = metadata !{i32 786688, metadata !296, metadata !"size", metadata !6, i32 177, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 177]
!304 = metadata !{i32 786688, metadata !296, metadata !"start", metadata !6, i32 178, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 178]
!305 = metadata !{i32 786688, metadata !296, metadata !"bucket_size", metadata !6, i32 179, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket_size] [line 179]
!306 = metadata !{i32 786688, metadata !296, metadata !"elt", metadata !6, i32 180, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elt] [line 180]
!307 = metadata !{i32 786688, metadata !296, metadata !"buckets", metadata !6, i32 181, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buckets] [line 181]
!308 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_wildcard_init", metadata !"ngx_hash_wildcard_init", metadata !"", metadata !6, i32 297, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)* @ngx_hash_wildcard_init, null, null, metadata !309, i32 298} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 298] [ngx_hash_wildcard_init]
!309 = metadata !{metadata !310}
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334}
!311 = metadata !{i32 786689, metadata !308, metadata !"hinit", metadata !6, i32 16777513, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hinit] [line 297]
!312 = metadata !{i32 786689, metadata !308, metadata !"names", metadata !6, i32 33554729, metadata !283, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [names] [line 297]
!313 = metadata !{i32 786689, metadata !308, metadata !"nelts", metadata !6, i32 50331945, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelts] [line 297]
!314 = metadata !{i32 786688, metadata !315, metadata !"len", metadata !6, i32 299, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 299]
!315 = metadata !{i32 786443, metadata !308, i32 298, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!316 = metadata !{i32 786688, metadata !315, metadata !"dot_len", metadata !6, i32 300, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dot_len] [line 300]
!317 = metadata !{i32 786688, metadata !315, metadata !"i", metadata !6, i32 301, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 301]
!318 = metadata !{i32 786688, metadata !315, metadata !"n", metadata !6, i32 302, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 302]
!319 = metadata !{i32 786688, metadata !315, metadata !"dot", metadata !6, i32 303, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dot] [line 303]
!320 = metadata !{i32 786688, metadata !315, metadata !"curr_names", metadata !6, i32 304, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_names] [line 304]
!321 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !6, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!322 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !323, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!323 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!324 = metadata !{metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!325 = metadata !{i32 786445, metadata !322, metadata !"elts", metadata !323, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!326 = metadata !{i32 786445, metadata !322, metadata !"nelts", metadata !323, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!327 = metadata !{i32 786445, metadata !322, metadata !"size", metadata !323, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!328 = metadata !{i32 786445, metadata !322, metadata !"nalloc", metadata !323, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!329 = metadata !{i32 786445, metadata !322, metadata !"pool", metadata !323, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !118} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!330 = metadata !{i32 786688, metadata !315, metadata !"next_names", metadata !6, i32 305, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next_names] [line 305]
!331 = metadata !{i32 786688, metadata !315, metadata !"name", metadata !6, i32 306, metadata !283, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 306]
!332 = metadata !{i32 786688, metadata !315, metadata !"next_name", metadata !6, i32 307, metadata !283, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next_name] [line 307]
!333 = metadata !{i32 786688, metadata !315, metadata !"h", metadata !6, i32 308, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 308]
!334 = metadata !{i32 786688, metadata !315, metadata !"wdc", metadata !6, i32 309, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wdc] [line 309]
!335 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_key", metadata !"ngx_hash_key", metadata !"", metadata !6, i32 393, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_hash_key, null, null, metadata !336, i32 394} ; [ DW_TAG_subprogram ] [line 393] [def] [scope 394] [ngx_hash_key]
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !342}
!338 = metadata !{i32 786689, metadata !335, metadata !"data", metadata !6, i32 16777609, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 393]
!339 = metadata !{i32 786689, metadata !335, metadata !"len", metadata !6, i32 33554825, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 393]
!340 = metadata !{i32 786688, metadata !341, metadata !"i", metadata !6, i32 395, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 395]
!341 = metadata !{i32 786443, metadata !335, i32 394, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!342 = metadata !{i32 786688, metadata !341, metadata !"key", metadata !6, i32 396, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 396]
!343 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_key_lc", metadata !"ngx_hash_key_lc", metadata !"", metadata !6, i32 404, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_hash_key_lc, null, null, metadata !344, i32 405} ; [ DW_TAG_subprogram ] [line 404] [def] [scope 405] [ngx_hash_key_lc]
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !346, metadata !347, metadata !348, metadata !350}
!346 = metadata !{i32 786689, metadata !343, metadata !"data", metadata !6, i32 16777620, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 404]
!347 = metadata !{i32 786689, metadata !343, metadata !"len", metadata !6, i32 33554836, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 404]
!348 = metadata !{i32 786688, metadata !349, metadata !"i", metadata !6, i32 406, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 406]
!349 = metadata !{i32 786443, metadata !343, i32 405, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!350 = metadata !{i32 786688, metadata !349, metadata !"key", metadata !6, i32 407, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 407]
!351 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_strlow", metadata !"ngx_hash_strlow", metadata !"", metadata !6, i32 415, metadata !352, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_hash_strlow, null, null, metadata !354, i32 416} ; [ DW_TAG_subprogram ] [line 415] [def] [scope 416] [ngx_hash_strlow]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!353 = metadata !{metadata !34, metadata !37, metadata !37, metadata !38}
!354 = metadata !{metadata !355}
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359}
!356 = metadata !{i32 786689, metadata !351, metadata !"dst", metadata !6, i32 16777631, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 415]
!357 = metadata !{i32 786689, metadata !351, metadata !"src", metadata !6, i32 33554847, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 415]
!358 = metadata !{i32 786689, metadata !351, metadata !"n", metadata !6, i32 50332063, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 415]
!359 = metadata !{i32 786688, metadata !360, metadata !"key", metadata !6, i32 417, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 417]
!360 = metadata !{i32 786443, metadata !351, i32 416, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!361 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_keys_array_init", metadata !"ngx_hash_keys_array_init", metadata !"", metadata !6, i32 428, metadata !362, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_hash_keys_arrays_t*, i32)* @ngx_hash_keys_array_init, null, null, metadata !378, i32 429} ; [ DW_TAG_subprogram ] [line 428] [def] [scope 429] [ngx_hash_keys_array_init]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!363 = metadata !{metadata !98, metadata !364, metadata !34}
!364 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!365 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !6, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !366} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!366 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!367 = metadata !{metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !374, metadata !375, metadata !376, metadata !377}
!368 = metadata !{i32 786445, metadata !366, metadata !"hsize", metadata !13, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!369 = metadata !{i32 786445, metadata !366, metadata !"pool", metadata !13, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !118} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!370 = metadata !{i32 786445, metadata !366, metadata !"temp_pool", metadata !13, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !118} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!371 = metadata !{i32 786445, metadata !366, metadata !"keys", metadata !13, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !321} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!372 = metadata !{i32 786445, metadata !366, metadata !"keys_hash", metadata !13, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !373} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!373 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!374 = metadata !{i32 786445, metadata !366, metadata !"dns_wc_head", metadata !13, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !321} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!375 = metadata !{i32 786445, metadata !366, metadata !"dns_wc_head_hash", metadata !13, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !373} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!376 = metadata !{i32 786445, metadata !366, metadata !"dns_wc_tail", metadata !13, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !321} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!377 = metadata !{i32 786445, metadata !366, metadata !"dns_wc_tail_hash", metadata !13, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !373} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!378 = metadata !{metadata !379}
!379 = metadata !{metadata !380, metadata !381, metadata !382}
!380 = metadata !{i32 786689, metadata !361, metadata !"ha", metadata !6, i32 16777644, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ha] [line 428]
!381 = metadata !{i32 786689, metadata !361, metadata !"type", metadata !6, i32 33554860, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 428]
!382 = metadata !{i32 786688, metadata !383, metadata !"asize", metadata !6, i32 430, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [asize] [line 430]
!383 = metadata !{i32 786443, metadata !361, i32 429, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!384 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_hash_add_key", metadata !"ngx_hash_add_key", metadata !"", metadata !6, i32 463, metadata !385, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_hash_keys_arrays_t*, %struct.ngx_str_t*, i8*, i32)* @ngx_hash_add_key, null, null, metadata !388, i32 464} ; [ DW_TAG_subprogram ] [line 463] [def] [scope 464] [ngx_hash_add_key]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!386 = metadata !{metadata !98, metadata !364, metadata !387, metadata !9, metadata !34}
!387 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!388 = metadata !{metadata !389}
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405}
!390 = metadata !{i32 786689, metadata !384, metadata !"ha", metadata !6, i32 16777679, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ha] [line 463]
!391 = metadata !{i32 786689, metadata !384, metadata !"key", metadata !6, i32 33554895, metadata !387, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 463]
!392 = metadata !{i32 786689, metadata !384, metadata !"value", metadata !6, i32 50332111, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 463]
!393 = metadata !{i32 786689, metadata !384, metadata !"flags", metadata !6, i32 67109327, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 463]
!394 = metadata !{i32 786688, metadata !395, metadata !"len", metadata !6, i32 465, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 465]
!395 = metadata !{i32 786443, metadata !384, i32 464, i32 0, metadata !6, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!396 = metadata !{i32 786688, metadata !395, metadata !"p", metadata !6, i32 466, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 466]
!397 = metadata !{i32 786688, metadata !395, metadata !"name", metadata !6, i32 467, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 467]
!398 = metadata !{i32 786688, metadata !395, metadata !"i", metadata !6, i32 468, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 468]
!399 = metadata !{i32 786688, metadata !395, metadata !"k", metadata !6, i32 469, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 469]
!400 = metadata !{i32 786688, metadata !395, metadata !"n", metadata !6, i32 470, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 470]
!401 = metadata !{i32 786688, metadata !395, metadata !"skip", metadata !6, i32 471, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skip] [line 471]
!402 = metadata !{i32 786688, metadata !395, metadata !"last", metadata !6, i32 472, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 472]
!403 = metadata !{i32 786688, metadata !395, metadata !"keys", metadata !6, i32 473, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [keys] [line 473]
!404 = metadata !{i32 786688, metadata !395, metadata !"hwc", metadata !6, i32 474, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hwc] [line 474]
!405 = metadata !{i32 786688, metadata !395, metadata !"hk", metadata !6, i32 475, metadata !283, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hk] [line 475]
!406 = metadata !{i32 786478, i32 0, metadata !323, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !323, i32 32, metadata !407, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !409, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{metadata !98, metadata !373, metadata !118, metadata !34, metadata !38}
!409 = metadata !{metadata !410}
!410 = metadata !{metadata !411, metadata !412, metadata !413, metadata !414}
!411 = metadata !{i32 786689, metadata !406, metadata !"array", metadata !323, i32 16777248, metadata !373, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!412 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!413 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!414 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!415 = metadata !{i32 8, i32 0, metadata !5, null}
!416 = metadata !{i32 14, i32 0, metadata !46, null}
!417 = metadata !{metadata !"int", metadata !418}
!418 = metadata !{metadata !"omnipotent char", metadata !419}
!419 = metadata !{metadata !"Simple C/C++ TBAA"}
!420 = metadata !{metadata !"any pointer", metadata !418}
!421 = metadata !{i32 15, i32 0, metadata !46, null}
!422 = metadata !{i32 18, i32 0, metadata !46, null}
!423 = metadata !{i32 22, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !425, i32 22, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!425 = metadata !{i32 786443, metadata !46, i32 18, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!426 = metadata !{i32 19, i32 0, metadata !425, null}
!427 = metadata !{metadata !"short", metadata !418}
!428 = metadata !{i32 23, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !424, i32 22, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!430 = metadata !{i32 27, i32 0, metadata !425, null}
!431 = metadata !{i32 29, i32 0, metadata !425, null}
!432 = metadata !{i32 33, i32 0, metadata !46, null}
!433 = metadata !{i32 35, i32 0, metadata !48, null}
!434 = metadata !{i32 43, i32 0, metadata !63, null}
!435 = metadata !{i32 44, i32 0, metadata !63, null}
!436 = metadata !{i32 51, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !63, i32 51, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!438 = metadata !{i32 45, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !63, i32 44, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!440 = metadata !{i32 48, i32 0, metadata !439, null}
!441 = metadata !{i32 52, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !437, i32 51, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!443 = metadata !{i32 56, i32 0, metadata !63, null}
!444 = metadata !{i32 59, i32 0, metadata !63, null}
!445 = metadata !{i32 70, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !63, i32 59, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!447 = metadata !{i32 71, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !446, i32 70, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!449 = metadata !{i32 73, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !448, i32 71, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!451 = metadata !{i32 76, i32 0, metadata !450, null}
!452 = metadata !{i32 77, i32 0, metadata !450, null}
!453 = metadata !{i32 79, i32 0, metadata !448, null}
!454 = metadata !{i32 80, i32 0, metadata !448, null}
!455 = metadata !{i32 81, i32 0, metadata !448, null}
!456 = metadata !{i32 84, i32 0, metadata !448, null}
!457 = metadata !{i32 86, i32 0, metadata !446, null}
!458 = metadata !{i32 91, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !446, i32 86, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!460 = metadata !{i32 95, i32 0, metadata !63, null}
!461 = metadata !{i32 96, i32 0, metadata !63, null}
!462 = metadata !{i32 98, i32 0, metadata !67, null}
!463 = metadata !{i32 105, i32 0, metadata !74, null}
!464 = metadata !{i32 106, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !74, i32 106, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!466 = metadata !{i32 107, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !465, i32 106, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!468 = metadata !{i32 110, i32 0, metadata !467, null}
!469 = metadata !{i32 112, i32 0, metadata !74, null}
!470 = metadata !{i32 117, i32 0, metadata !74, null}
!471 = metadata !{i32 120, i32 0, metadata !74, null}
!472 = metadata !{i32 126, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !74, i32 120, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!474 = metadata !{i32 127, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !473, i32 126, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!476 = metadata !{i32 128, i32 0, metadata !475, null}
!477 = metadata !{i32 129, i32 0, metadata !475, null}
!478 = metadata !{i32 130, i32 0, metadata !475, null}
!479 = metadata !{i32 133, i32 0, metadata !475, null}
!480 = metadata !{i32 137, i32 0, metadata !74, null}
!481 = metadata !{i32 138, i32 0, metadata !74, null}
!482 = metadata !{i32 140, i32 0, metadata !77, null}
!483 = metadata !{i32 143, i32 0, metadata !94, null}
!484 = metadata !{i32 144, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !94, i32 143, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!486 = metadata !{i32 145, i32 0, metadata !485, null}
!487 = metadata !{i32 149, i32 0, metadata !94, null}
!488 = metadata !{i32 152, i32 0, metadata !94, null}
!489 = metadata !{i32 153, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !94, i32 152, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!491 = metadata !{i32 154, i32 0, metadata !490, null}
!492 = metadata !{i32 158, i32 0, metadata !94, null}
!493 = metadata !{i32 159, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !94, i32 158, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!495 = metadata !{i32 160, i32 0, metadata !494, null}
!496 = metadata !{i32 164, i32 0, metadata !94, null}
!497 = metadata !{i32 165, i32 0, metadata !94, null}
!498 = metadata !{i32 169, i32 0, metadata !95, null}
!499 = metadata !{i32 182, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !296, i32 182, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!501 = metadata !{i32 183, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !500, i32 182, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!503 = metadata !{i32 184, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !502, i32 183, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!505 = metadata !{i32 185, i32 0, metadata !504, null}
!506 = metadata !{i32 189, i32 0, metadata !296, null}
!507 = metadata !{i32 190, i32 0, metadata !296, null}
!508 = metadata !{i32 193, i32 0, metadata !296, null}
!509 = metadata !{i32 194, i32 0, metadata !296, null}
!510 = metadata !{i32 195, i32 0, metadata !296, null}
!511 = metadata !{i32 196, i32 0, metadata !296, null}
!512 = metadata !{i32 197, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !296, i32 196, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!514 = metadata !{i32 199, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !296, i32 199, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!516 = metadata !{i32 209, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !518, i32 201, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!518 = metadata !{i32 786443, metadata !519, i32 201, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!519 = metadata !{i32 786443, metadata !515, i32 199, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!520 = metadata !{i32 200, i32 0, metadata !519, null}
!521 = metadata !{i32 201, i32 0, metadata !518, null}
!522 = metadata !{i32 205, i32 0, metadata !517, null}
!523 = metadata !{i32 222, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !296, i32 222, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!525 = metadata !{i32 202, i32 0, metadata !517, null}
!526 = metadata !{i32 206, i32 0, metadata !517, null}
!527 = metadata !{i32 217, i32 0, metadata !296, null}
!528 = metadata !{i32 218, i32 0, metadata !296, null}
!529 = metadata !{i32 219, i32 0, metadata !296, null}
!530 = metadata !{i32 220, i32 0, metadata !296, null}
!531 = metadata !{i32 225, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !296, i32 225, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!533 = metadata !{i32 223, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !524, i32 222, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!535 = metadata !{i32 233, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !296, i32 233, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!537 = metadata !{i32 226, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !532, i32 225, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!539 = metadata !{i32 229, i32 0, metadata !538, null}
!540 = metadata !{i32 230, i32 0, metadata !538, null}
!541 = metadata !{i32 231, i32 0, metadata !538, null}
!542 = metadata !{i32 234, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !536, i32 233, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!544 = metadata !{i32 237, i32 0, metadata !543, null}
!545 = metadata !{i32 238, i32 0, metadata !543, null}
!546 = metadata !{i32 240, i32 0, metadata !296, null}
!547 = metadata !{i32 241, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !296, i32 240, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!549 = metadata !{i32 242, i32 0, metadata !548, null}
!550 = metadata !{i32 243, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !548, i32 242, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!552 = metadata !{i32 244, i32 0, metadata !551, null}
!553 = metadata !{i32 246, i32 0, metadata !548, null}
!554 = metadata !{i32 247, i32 0, metadata !548, null}
!555 = metadata !{i32 249, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !296, i32 248, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!557 = metadata !{i32 250, i32 0, metadata !556, null}
!558 = metadata !{i32 251, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !556, i32 250, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!560 = metadata !{i32 252, i32 0, metadata !559, null}
!561 = metadata !{i32 255, i32 0, metadata !296, null}
!562 = metadata !{i32 256, i32 0, metadata !296, null}
!563 = metadata !{i32 257, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !296, i32 256, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!565 = metadata !{i32 258, i32 0, metadata !564, null}
!566 = metadata !{i32 260, i32 0, metadata !296, null}
!567 = metadata !{i32 261, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !296, i32 261, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!569 = metadata !{i32 268, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !296, i32 268, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!571 = metadata !{i32 262, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !568, i32 261, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!573 = metadata !{i32 265, i32 0, metadata !572, null}
!574 = metadata !{i32 266, i32 0, metadata !572, null}
!575 = metadata !{i32 267, i32 0, metadata !572, null}
!576 = metadata !{i32 271, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !296, i32 271, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!578 = metadata !{i32 269, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !570, i32 268, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!580 = metadata !{i32 282, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !296, i32 282, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!582 = metadata !{i32 272, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !577, i32 271, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!584 = metadata !{i32 275, i32 0, metadata !583, null}
!585 = metadata !{i32 276, i32 0, metadata !583, null}
!586 = metadata !{i32 277, i32 0, metadata !583, null}
!587 = metadata !{i32 278, i32 0, metadata !583, null}
!588 = metadata !{i32 279, i32 0, metadata !583, null}
!589 = metadata !{i32 280, i32 0, metadata !583, null}
!590 = metadata !{i32 281, i32 0, metadata !583, null}
!591 = metadata !{i32 283, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !581, i32 282, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!593 = metadata !{i32 286, i32 0, metadata !592, null}
!594 = metadata !{i32 287, i32 0, metadata !592, null}
!595 = metadata !{i32 288, i32 0, metadata !592, null}
!596 = metadata !{i32 289, i32 0, metadata !296, null}
!597 = metadata !{i32 290, i32 0, metadata !296, null}
!598 = metadata !{i32 291, i32 0, metadata !296, null}
!599 = metadata !{i32 294, i32 0, metadata !296, null}
!600 = metadata !{i32 295, i32 0, metadata !296, null}
!601 = metadata !{i32 297, i32 0, metadata !308, null}
!602 = metadata !{i32 304, i32 0, metadata !315, null}
!603 = metadata !{i32 305, i32 0, metadata !315, null}
!604 = metadata !{i32 308, i32 0, metadata !315, null}
!605 = metadata !{i32 310, i32 0, metadata !315, null}
!606 = metadata !{i32 786689, metadata !406, metadata !"array", metadata !323, i32 16777248, metadata !373, i32 0, metadata !605} ; [ DW_TAG_arg_variable ] [array] [line 32]
!607 = metadata !{i32 32, i32 0, metadata !406, metadata !605}
!608 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !605} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!609 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !605} ; [ DW_TAG_arg_variable ] [n] [line 32]
!610 = metadata !{i32 16}
!611 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !605} ; [ DW_TAG_arg_variable ] [size] [line 32]
!612 = metadata !{i32 39, i32 0, metadata !613, metadata !605}
!613 = metadata !{i32 786443, metadata !406, i32 33, i32 0, metadata !323, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!614 = metadata !{i32 40, i32 0, metadata !613, metadata !605}
!615 = metadata !{i32 41, i32 0, metadata !613, metadata !605}
!616 = metadata !{i32 42, i32 0, metadata !613, metadata !605}
!617 = metadata !{i32 44, i32 0, metadata !613, metadata !605}
!618 = metadata !{i32 45, i32 0, metadata !613, metadata !605}
!619 = metadata !{i32 313, i32 0, metadata !315, null}
!620 = metadata !{i32 786689, metadata !406, metadata !"array", metadata !323, i32 16777248, metadata !373, i32 0, metadata !619} ; [ DW_TAG_arg_variable ] [array] [line 32]
!621 = metadata !{i32 32, i32 0, metadata !406, metadata !619}
!622 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !619} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!623 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !619} ; [ DW_TAG_arg_variable ] [n] [line 32]
!624 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !619} ; [ DW_TAG_arg_variable ] [size] [line 32]
!625 = metadata !{i32 39, i32 0, metadata !613, metadata !619}
!626 = metadata !{i32 40, i32 0, metadata !613, metadata !619}
!627 = metadata !{i32 41, i32 0, metadata !613, metadata !619}
!628 = metadata !{i32 42, i32 0, metadata !613, metadata !619}
!629 = metadata !{i32 44, i32 0, metadata !613, metadata !619}
!630 = metadata !{i32 45, i32 0, metadata !613, metadata !619}
!631 = metadata !{i32 316, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !315, i32 316, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!633 = metadata !{i32 332, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !632, i32 316, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!635 = metadata !{i32 372, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !634, i32 371, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!637 = metadata !{i32 373, i32 0, metadata !636, null}
!638 = metadata !{i32 321, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !640, i32 320, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!640 = metadata !{i32 786443, metadata !634, i32 320, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!641 = metadata !{i32 320, i32 0, metadata !640, null}
!642 = metadata !{i32 326, i32 0, metadata !634, null}
!643 = metadata !{i32 327, i32 0, metadata !634, null}
!644 = metadata !{i32 330, i32 0, metadata !634, null}
!645 = metadata !{i32 331, i32 0, metadata !634, null}
!646 = metadata !{i32 333, i32 0, metadata !634, null}
!647 = metadata !{i32 336, i32 0, metadata !634, null}
!648 = metadata !{i32 337, i32 0, metadata !634, null}
!649 = metadata !{i32 338, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !634, i32 337, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!651 = metadata !{i32 340, i32 0, metadata !634, null}
!652 = metadata !{i32 341, i32 0, metadata !634, null}
!653 = metadata !{i32 342, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !634, i32 341, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!655 = metadata !{i32 343, i32 0, metadata !654, null}
!656 = metadata !{i32 346, i32 0, metadata !654, null}
!657 = metadata !{i32 347, i32 0, metadata !654, null}
!658 = metadata !{i32 348, i32 0, metadata !654, null}
!659 = metadata !{i32 349, i32 0, metadata !654, null}
!660 = metadata !{i32 352, i32 0, metadata !654, null}
!661 = metadata !{i32 353, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !634, i32 353, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!663 = metadata !{i32 364, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !662, i32 353, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!665 = metadata !{i32 354, i32 0, metadata !664, null}
!666 = metadata !{i32 357, i32 0, metadata !664, null}
!667 = metadata !{i32 360, i32 0, metadata !664, null}
!668 = metadata !{i32 361, i32 0, metadata !664, null}
!669 = metadata !{i32 365, i32 0, metadata !664, null}
!670 = metadata !{i32 366, i32 0, metadata !664, null}
!671 = metadata !{i32 367, i32 0, metadata !664, null}
!672 = metadata !{i32 371, i32 0, metadata !634, null}
!673 = metadata !{i64 0, i64 4, metadata !420, i64 4, i64 4, metadata !420, i64 8, i64 4, metadata !417, i64 12, i64 4, metadata !417, i64 16, i64 4, metadata !420, i64 20, i64 4, metadata !420, i64 24, i64 4, metadata !420}
!674 = metadata !{i32 374, i32 0, metadata !636, null}
!675 = metadata !{i32 377, i32 0, metadata !636, null}
!676 = metadata !{i32 378, i32 0, metadata !636, null}
!677 = metadata !{i32 379, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !636, i32 378, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!679 = metadata !{i32 380, i32 0, metadata !678, null}
!680 = metadata !{i32 381, i32 0, metadata !636, null}
!681 = metadata !{i32 382, i32 0, metadata !636, null}
!682 = metadata !{i32 383, i32 0, metadata !634, null}
!683 = metadata !{i32 384, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !634, i32 383, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!685 = metadata !{i32 385, i32 0, metadata !684, null}
!686 = metadata !{i32 387, i32 0, metadata !315, null}
!687 = metadata !{i32 391, i32 0, metadata !315, null}
!688 = metadata !{i32 393, i32 0, metadata !335, null}
!689 = metadata !{i32 397, i32 0, metadata !341, null}
!690 = metadata !{i32 398, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !341, i32 398, i32 0, metadata !6, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!692 = metadata !{i32 399, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !691, i32 398, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!694 = metadata !{i32 401, i32 0, metadata !341, null}
!695 = metadata !{i32 404, i32 0, metadata !343, null}
!696 = metadata !{i32 408, i32 0, metadata !349, null}
!697 = metadata !{i32 409, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !349, i32 409, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!699 = metadata !{i32 410, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !698, i32 409, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!701 = metadata !{i32 412, i32 0, metadata !349, null}
!702 = metadata !{i32 415, i32 0, metadata !351, null}
!703 = metadata !{i32 418, i32 0, metadata !360, null}
!704 = metadata !{i32 419, i32 0, metadata !360, null}
!705 = metadata !{i32 420, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !360, i32 419, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!707 = metadata !{i32 421, i32 0, metadata !706, null}
!708 = metadata !{i32 422, i32 0, metadata !706, null}
!709 = metadata !{i32 423, i32 0, metadata !706, null}
!710 = metadata !{i32 424, i32 0, metadata !706, null}
!711 = metadata !{i32 425, i32 0, metadata !360, null}
!712 = metadata !{i32 428, i32 0, metadata !361, null}
!713 = metadata !{i32 431, i32 0, metadata !383, null}
!714 = metadata !{i32 433, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !383, i32 431, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!716 = metadata !{i32 434, i32 0, metadata !715, null}
!717 = metadata !{i32 439, i32 0, metadata !383, null}
!718 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !717} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!719 = metadata !{i32 32, i32 0, metadata !406, metadata !717}
!720 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !717} ; [ DW_TAG_arg_variable ] [n] [line 32]
!721 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !717} ; [ DW_TAG_arg_variable ] [size] [line 32]
!722 = metadata !{i32 39, i32 0, metadata !613, metadata !717}
!723 = metadata !{i32 40, i32 0, metadata !613, metadata !717}
!724 = metadata !{i32 41, i32 0, metadata !613, metadata !717}
!725 = metadata !{i32 42, i32 0, metadata !613, metadata !717}
!726 = metadata !{i32 44, i32 0, metadata !613, metadata !717}
!727 = metadata !{i32 45, i32 0, metadata !613, metadata !717}
!728 = metadata !{i32 442, i32 0, metadata !383, null}
!729 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !728} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!730 = metadata !{i32 32, i32 0, metadata !406, metadata !728}
!731 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !728} ; [ DW_TAG_arg_variable ] [n] [line 32]
!732 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !728} ; [ DW_TAG_arg_variable ] [size] [line 32]
!733 = metadata !{i32 39, i32 0, metadata !613, metadata !728}
!734 = metadata !{i32 40, i32 0, metadata !613, metadata !728}
!735 = metadata !{i32 41, i32 0, metadata !613, metadata !728}
!736 = metadata !{i32 42, i32 0, metadata !613, metadata !728}
!737 = metadata !{i32 44, i32 0, metadata !613, metadata !728}
!738 = metadata !{i32 45, i32 0, metadata !613, metadata !728}
!739 = metadata !{i32 445, i32 0, metadata !383, null}
!740 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!741 = metadata !{i32 32, i32 0, metadata !406, metadata !739}
!742 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [n] [line 32]
!743 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !739} ; [ DW_TAG_arg_variable ] [size] [line 32]
!744 = metadata !{i32 39, i32 0, metadata !613, metadata !739}
!745 = metadata !{i32 40, i32 0, metadata !613, metadata !739}
!746 = metadata !{i32 41, i32 0, metadata !613, metadata !739}
!747 = metadata !{i32 42, i32 0, metadata !613, metadata !739}
!748 = metadata !{i32 44, i32 0, metadata !613, metadata !739}
!749 = metadata !{i32 45, i32 0, metadata !613, metadata !739}
!750 = metadata !{i32 448, i32 0, metadata !383, null}
!751 = metadata !{i32 449, i32 0, metadata !383, null}
!752 = metadata !{i32 452, i32 0, metadata !383, null}
!753 = metadata !{i32 453, i32 0, metadata !383, null}
!754 = metadata !{i32 456, i32 0, metadata !383, null}
!755 = metadata !{i32 457, i32 0, metadata !383, null}
!756 = metadata !{i32 461, i32 0, metadata !383, null}
!757 = metadata !{i32 463, i32 0, metadata !384, null}
!758 = metadata !{i32 476, i32 0, metadata !395, null}
!759 = metadata !{i32 477, i32 0, metadata !395, null}
!760 = metadata !{i32 483, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !762, i32 483, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!762 = metadata !{i32 786443, metadata !395, i32 477, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!763 = metadata !{i32 484, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !761, i32 483, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!765 = metadata !{i32 485, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !764, i32 484, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!767 = metadata !{i32 489, i32 0, metadata !764, null}
!768 = metadata !{i32 493, i32 0, metadata !762, null}
!769 = metadata !{i32 497, i32 0, metadata !762, null}
!770 = metadata !{i32 498, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !762, i32 497, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!772 = metadata !{i32 502, i32 0, metadata !771, null}
!773 = metadata !{i32 503, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !771, i32 502, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!775 = metadata !{i32 504, i32 0, metadata !774, null}
!776 = metadata !{i32 552, i32 0, metadata !395, null}
!777 = metadata !{i32 508, i32 0, metadata !762, null}
!778 = metadata !{i32 514, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !395, i32 514, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!780 = metadata !{i32 515, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !779, i32 514, i32 0, metadata !6, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!782 = metadata !{i32 516, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !781, i32 515, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!784 = metadata !{i32 517, i32 0, metadata !783, null}
!785 = metadata !{i32 518, i32 0, metadata !781, null}
!786 = metadata !{i32 520, i32 0, metadata !395, null}
!787 = metadata !{i32 522, i32 0, metadata !395, null}
!788 = metadata !{i32 523, i32 0, metadata !395, null}
!789 = metadata !{i32 524, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !791, i32 524, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!791 = metadata !{i32 786443, metadata !395, i32 523, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!792 = metadata !{i32 528, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !790, i32 524, i32 0, metadata !6, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!794 = metadata !{i32 525, i32 0, metadata !793, null}
!795 = metadata !{i32 534, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !395, i32 533, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!797 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !795} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!798 = metadata !{i32 32, i32 0, metadata !406, metadata !795}
!799 = metadata !{i32 4}
!800 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !795} ; [ DW_TAG_arg_variable ] [n] [line 32]
!801 = metadata !{i32 8}
!802 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !795} ; [ DW_TAG_arg_variable ] [size] [line 32]
!803 = metadata !{i32 39, i32 0, metadata !613, metadata !795}
!804 = metadata !{i32 40, i32 0, metadata !613, metadata !795}
!805 = metadata !{i32 41, i32 0, metadata !613, metadata !795}
!806 = metadata !{i32 42, i32 0, metadata !613, metadata !795}
!807 = metadata !{i32 44, i32 0, metadata !613, metadata !795}
!808 = metadata !{i32 45, i32 0, metadata !613, metadata !795}
!809 = metadata !{i32 538, i32 0, metadata !395, null}
!810 = metadata !{i32 539, i32 0, metadata !395, null}
!811 = metadata !{i32 542, i32 0, metadata !395, null}
!812 = metadata !{i32 543, i32 0, metadata !395, null}
!813 = metadata !{i32 544, i32 0, metadata !395, null}
!814 = metadata !{i32 547, i32 0, metadata !395, null}
!815 = metadata !{i32 548, i32 0, metadata !395, null}
!816 = metadata !{i32 549, i32 0, metadata !395, null}
!817 = metadata !{i32 550, i32 0, metadata !395, null}
!818 = metadata !{i32 554, i32 0, metadata !395, null}
!819 = metadata !{i32 555, i32 0, metadata !395, null}
!820 = metadata !{i32 590, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !395, i32 585, i32 0, metadata !6, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!822 = metadata !{i32 557, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !395, i32 555, i32 0, metadata !6, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!824 = metadata !{i32 558, i32 0, metadata !823, null}
!825 = metadata !{i32 559, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !823, i32 558, i32 0, metadata !6, i32 135} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!827 = metadata !{i32 560, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !826, i32 560, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!829 = metadata !{i32 561, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !828, i32 560, i32 0, metadata !6, i32 137} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!831 = metadata !{i32 564, i32 0, metadata !830, null}
!832 = metadata !{i32 570, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !823, i32 569, i32 0, metadata !6, i32 140} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!834 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!835 = metadata !{i32 32, i32 0, metadata !406, metadata !832}
!836 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [n] [line 32]
!837 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !832} ; [ DW_TAG_arg_variable ] [size] [line 32]
!838 = metadata !{i32 39, i32 0, metadata !613, metadata !832}
!839 = metadata !{i32 40, i32 0, metadata !613, metadata !832}
!840 = metadata !{i32 41, i32 0, metadata !613, metadata !832}
!841 = metadata !{i32 42, i32 0, metadata !613, metadata !832}
!842 = metadata !{i32 44, i32 0, metadata !613, metadata !832}
!843 = metadata !{i32 45, i32 0, metadata !613, metadata !832}
!844 = metadata !{i32 574, i32 0, metadata !823, null}
!845 = metadata !{i32 575, i32 0, metadata !823, null}
!846 = metadata !{i32 578, i32 0, metadata !823, null}
!847 = metadata !{i32 579, i32 0, metadata !823, null}
!848 = metadata !{i32 580, i32 0, metadata !823, null}
!849 = metadata !{i32 583, i32 0, metadata !823, null}
!850 = metadata !{i32 585, i32 0, metadata !395, null}
!851 = metadata !{i32 591, i32 0, metadata !821, null}
!852 = metadata !{i32 594, i32 0, metadata !821, null}
!853 = metadata !{i32 595, i32 0, metadata !821, null}
!854 = metadata !{i32 596, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !821, i32 596, i32 0, metadata !6, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!856 = metadata !{i32 597, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !855, i32 596, i32 0, metadata !6, i32 147} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!858 = metadata !{i32 598, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !857, i32 597, i32 0, metadata !6, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!860 = metadata !{i32 599, i32 0, metadata !859, null}
!861 = metadata !{i32 600, i32 0, metadata !859, null}
!862 = metadata !{i32 601, i32 0, metadata !859, null}
!863 = metadata !{i32 602, i32 0, metadata !859, null}
!864 = metadata !{i32 604, i32 0, metadata !857, null}
!865 = metadata !{i32 606, i32 0, metadata !821, null}
!866 = metadata !{i32 607, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !821, i32 606, i32 0, metadata !6, i32 149} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!868 = metadata !{i32 608, i32 0, metadata !867, null}
!869 = metadata !{i32 610, i32 0, metadata !821, null}
!870 = metadata !{i32 611, i32 0, metadata !821, null}
!871 = metadata !{i32 612, i32 0, metadata !821, null}
!872 = metadata !{i32 613, i32 0, metadata !821, null}
!873 = metadata !{i32 616, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !395, i32 614, i32 0, metadata !6, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!875 = metadata !{i32 617, i32 0, metadata !874, null}
!876 = metadata !{i32 618, i32 0, metadata !874, null}
!877 = metadata !{i32 621, i32 0, metadata !874, null}
!878 = metadata !{i32 622, i32 0, metadata !874, null}
!879 = metadata !{i32 623, i32 0, metadata !874, null}
!880 = metadata !{i32 626, i32 0, metadata !395, null}
!881 = metadata !{i32 627, i32 0, metadata !395, null}
!882 = metadata !{i32 628, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !395, i32 627, i32 0, metadata !6, i32 152} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!884 = metadata !{i32 629, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !883, i32 629, i32 0, metadata !6, i32 153} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!886 = metadata !{i32 630, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !885, i32 629, i32 0, metadata !6, i32 154} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!888 = metadata !{i32 633, i32 0, metadata !887, null}
!889 = metadata !{i32 639, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !395, i32 638, i32 0, metadata !6, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_hash.c]
!891 = metadata !{i32 786689, metadata !406, metadata !"array", metadata !323, i32 16777248, metadata !373, i32 0, metadata !889} ; [ DW_TAG_arg_variable ] [array] [line 32]
!892 = metadata !{i32 32, i32 0, metadata !406, metadata !889}
!893 = metadata !{i32 786689, metadata !406, metadata !"pool", metadata !323, i32 33554464, metadata !118, i32 0, metadata !889} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!894 = metadata !{i32 786689, metadata !406, metadata !"n", metadata !323, i32 50331680, metadata !34, i32 0, metadata !889} ; [ DW_TAG_arg_variable ] [n] [line 32]
!895 = metadata !{i32 786689, metadata !406, metadata !"size", metadata !323, i32 67108896, metadata !38, i32 0, metadata !889} ; [ DW_TAG_arg_variable ] [size] [line 32]
!896 = metadata !{i32 39, i32 0, metadata !613, metadata !889}
!897 = metadata !{i32 40, i32 0, metadata !613, metadata !889}
!898 = metadata !{i32 41, i32 0, metadata !613, metadata !889}
!899 = metadata !{i32 42, i32 0, metadata !613, metadata !889}
!900 = metadata !{i32 44, i32 0, metadata !613, metadata !889}
!901 = metadata !{i32 45, i32 0, metadata !613, metadata !889}
!902 = metadata !{i32 643, i32 0, metadata !395, null}
!903 = metadata !{i32 644, i32 0, metadata !395, null}
!904 = metadata !{i32 647, i32 0, metadata !395, null}
!905 = metadata !{i32 648, i32 0, metadata !395, null}
!906 = metadata !{i32 649, i32 0, metadata !395, null}
!907 = metadata !{i32 652, i32 0, metadata !395, null}
!908 = metadata !{i32 654, i32 0, metadata !395, null}
!909 = metadata !{i32 655, i32 0, metadata !395, null}
!910 = metadata !{i32 658, i32 0, metadata !395, null}
!911 = metadata !{i32 659, i32 0, metadata !395, null}
!912 = metadata !{i32 660, i32 0, metadata !395, null}
!913 = metadata !{i32 661, i32 0, metadata !395, null}
!914 = metadata !{i32 662, i32 0, metadata !395, null}
!915 = metadata !{i32 663, i32 0, metadata !395, null}
