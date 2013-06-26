; ModuleID = 'src/core/ngx_shmtx.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
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
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type opaque
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_shmtx_sh_t = type { i32, i32 }

@ngx_cycle = external global %struct.ngx_cycle_s*
@.str = private unnamed_addr constant [18 x i8] c"sem_init() failed\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"sem_destroy() failed\00", align 1
@ngx_pid = external global i32
@ngx_ncpu = external global i32
@0 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str2 = private unnamed_addr constant [41 x i8] c"sem_wait() failed while waiting on shmtx\00", align 1
@1 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@2 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@3 = internal unnamed_addr constant [10 x i8] c"ngx_pid_t\00"
@4 = internal unnamed_addr constant [4 x i8] c"int\00"
@5 = internal unnamed_addr constant [18 x i8] c"ngx_atomic_uint_t\00"
@6 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@7 = internal unnamed_addr constant [2 x i8] c"-\00"
@8 = internal unnamed_addr constant [21 x i8] c"src/core/ngx_shmtx.c\00"
@.str3 = private unnamed_addr constant [35 x i8] c"sem_post() failed while wake shmtx\00", align 1

define i32 @ngx_shmtx_create(%struct.ngx_shmtx_t* %mtx, %struct.ngx_shmtx_sh_t* %addr, i8* nocapture %name) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !54), !dbg !102
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_sh_t* %addr}, i64 0, metadata !55), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !56), !dbg !102
  %lock = getelementptr inbounds %struct.ngx_shmtx_sh_t* %addr, i32 0, i32 0, !dbg !103
  %lock1 = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 0, !dbg !103
  store i32* %lock, i32** %lock1, align 4, !dbg !103, !tbaa !105
  %spin = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 4, !dbg !108
  %0 = load i32* %spin, align 4, !dbg !108, !tbaa !109
  tail call void @__ioc_report_conversion(i32 13, i32 36, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !108
  %cmp = icmp eq i32 %0, -1, !dbg !108
  br i1 %cmp, label %return, label %cont5, !dbg !108

cont5:                                            ; preds = %entry
  store i32 2048, i32* %spin, align 4, !dbg !110, !tbaa !109
  %wait = getelementptr inbounds %struct.ngx_shmtx_sh_t* %addr, i32 0, i32 1, !dbg !111
  %wait7 = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 1, !dbg !111
  store i32* %wait, i32** %wait7, align 4, !dbg !111, !tbaa !105
  %sem = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 3, !dbg !112
  %call = tail call i32 @sem_init(%union.sem_t* %sem, i32 1, i32 0) nounwind, !dbg !112
  %cmp12 = icmp eq i32 %call, -1, !dbg !112
  br i1 %cmp12, label %if.then13, label %cont24, !dbg !112

if.then13:                                        ; preds = %cont5
  %1 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !113, !tbaa !105
  %log = getelementptr inbounds %struct.ngx_cycle_s* %1, i32 0, i32 2, !dbg !113
  %2 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !113, !tbaa !105
  %log_level = getelementptr inbounds %struct.ngx_log_s* %2, i32 0, i32 0, !dbg !113
  %3 = load i32* %log_level, align 4, !dbg !113, !tbaa !109
  %cmp16 = icmp ugt i32 %3, 1, !dbg !113
  br i1 %cmp16, label %cont19, label %return, !dbg !113

cont19:                                           ; preds = %if.then13
  %4 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !115, !tbaa !105
  %call21 = tail call i32* @__errno_location() nounwind readnone, !dbg !115
  %5 = load i32* %call21, align 4, !dbg !115, !tbaa !109
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %4, i32 %5, i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !115
  br label %return, !dbg !115

cont24:                                           ; preds = %cont5
  %semaphore = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 2, !dbg !116
  store i32 1, i32* %semaphore, align 4, !dbg !116, !tbaa !109
  br label %return

return:                                           ; preds = %cont24, %cont19, %if.then13, %entry
  ret i32 0, !dbg !118
}

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @sem_init(%union.sem_t*, i32, i32) nounwind

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32* @__errno_location() nounwind readnone

define void @ngx_shmtx_destroy(%struct.ngx_shmtx_t* %mtx) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !62), !dbg !119
  %semaphore = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 2, !dbg !120
  %0 = load i32* %semaphore, align 4, !dbg !120, !tbaa !109
  %tobool = icmp eq i32 %0, 0, !dbg !120
  br i1 %tobool, label %if.end11, label %if.then, !dbg !120

if.then:                                          ; preds = %entry
  %sem = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 3, !dbg !122
  %call = tail call i32 @sem_destroy(%union.sem_t* %sem) nounwind, !dbg !122
  %cmp = icmp eq i32 %call, -1, !dbg !122
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !122

if.then1:                                         ; preds = %if.then
  %1 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !124, !tbaa !105
  %log = getelementptr inbounds %struct.ngx_cycle_s* %1, i32 0, i32 2, !dbg !124
  %2 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !124, !tbaa !105
  %log_level = getelementptr inbounds %struct.ngx_log_s* %2, i32 0, i32 0, !dbg !124
  %3 = load i32* %log_level, align 4, !dbg !124, !tbaa !109
  %cmp4 = icmp ugt i32 %3, 1, !dbg !124
  br i1 %cmp4, label %cont7, label %if.end11, !dbg !124

cont7:                                            ; preds = %if.then1
  %4 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !126, !tbaa !105
  %call9 = tail call i32* @__errno_location() nounwind readnone, !dbg !126
  %5 = load i32* %call9, align 4, !dbg !126, !tbaa !109
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %4, i32 %5, i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !126
  br label %if.end11, !dbg !126

if.end11:                                         ; preds = %entry, %if.then, %cont7, %if.then1
  ret void, !dbg !127
}

declare i32 @sem_destroy(%union.sem_t*) nounwind

define i32 @ngx_shmtx_trylock(%struct.ngx_shmtx_t* nocapture %mtx) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !68), !dbg !128
  %lock = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 0, !dbg !129
  %0 = load i32** %lock, align 4, !dbg !129, !tbaa !105
  %1 = load volatile i32* %0, align 4, !dbg !129, !tbaa !131
  %cmp = icmp eq i32 %1, 0, !dbg !129
  br i1 %cmp, label %land.rhs, label %cont8, !dbg !129

land.rhs:                                         ; preds = %entry
  %2 = load i32* @ngx_pid, align 4, !dbg !129, !tbaa !109
  %3 = icmp sgt i32 %2, -1, !dbg !129
  br i1 %3, label %cont5, label %ioc_bb4, !dbg !129

ioc_bb4:                                          ; preds = %land.rhs
  %4 = sext i32 %2 to i64, !dbg !129
  tail call void @__ioc_report_conversion(i32 44, i32 33, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %4, i8 1) nounwind, !dbg !129
  br label %cont5, !dbg !129

cont5:                                            ; preds = %ioc_bb4, %land.rhs
  %5 = cmpxchg i32* %0, i32 0, i32 %2 seq_cst, !dbg !129
  %6 = icmp eq i32 %5, 0, !dbg !129
  br label %cont8

cont8:                                            ; preds = %entry, %cont5
  %7 = phi i1 [ false, %entry ], [ %6, %cont5 ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext, !dbg !132
}

define void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %mtx) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !72), !dbg !133
  %lock = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 0, !dbg !134
  %semaphore = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 2, !dbg !135
  %wait = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 1, !dbg !136
  %sem = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 3, !dbg !137
  %spin = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 4, !dbg !138
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %cont64, %if.then58, %if.end68, %while.cond, %entry
  %0 = load i32** %lock, align 4, !dbg !134, !tbaa !105
  %1 = load volatile i32* %0, align 4, !dbg !134, !tbaa !131
  %cmp = icmp eq i32 %1, 0, !dbg !134
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !134

land.lhs.true:                                    ; preds = %for.cond
  %2 = load i32* @ngx_pid, align 4, !dbg !134, !tbaa !109
  %3 = icmp sgt i32 %2, -1, !dbg !134
  br i1 %3, label %cont5, label %ioc_bb4, !dbg !134

ioc_bb4:                                          ; preds = %land.lhs.true
  %4 = sext i32 %2 to i64, !dbg !134
  tail call void @__ioc_report_conversion(i32 53, i32 31, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %4, i8 1) nounwind, !dbg !134
  br label %cont5, !dbg !134

cont5:                                            ; preds = %ioc_bb4, %land.lhs.true
  %5 = cmpxchg i32* %0, i32 0, i32 %2 seq_cst, !dbg !134
  %6 = icmp eq i32 %5, 0, !dbg !134
  br i1 %6, label %return, label %if.end, !dbg !134

if.end:                                           ; preds = %cont5, %for.cond
  %7 = load i32* @ngx_ncpu, align 4, !dbg !142, !tbaa !109
  %cmp6 = icmp sgt i32 %7, 1, !dbg !142
  br i1 %cmp6, label %for.cond10.preheader, label %if.end36, !dbg !142

for.cond10.preheader:                             ; preds = %if.end
  %8 = load i32* %spin, align 4, !dbg !138, !tbaa !109
  %cmp1185 = icmp ugt i32 %8, 1, !dbg !138
  br i1 %cmp1185, label %for.cond14.preheader, label %if.end36, !dbg !138

for.cond14.preheader:                             ; preds = %for.cond10.preheader, %cont34
  %n.086 = phi i32 [ %shl, %cont34 ], [ 1, %for.cond10.preheader ]
  %cmp1583 = icmp eq i32 %n.086, 0, !dbg !143
  br i1 %cmp1583, label %for.end, label %for.body16, !dbg !143

for.body16:                                       ; preds = %for.cond14.preheader, %for.cond14.backedge
  %i.084 = phi i32 [ %10, %for.cond14.backedge ], [ 0, %for.cond14.preheader ]
  tail call void asm sideeffect ".byte 0xf3, 0x90", "~{dirflag},~{fpsr},~{flags}"() nounwind, !dbg !146, !srcloc !148
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.084, i32 1), !dbg !143
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !143
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !143
  br i1 %11, label %ioc_bb17, label %for.cond14.backedge, !dbg !143

for.cond14.backedge:                              ; preds = %for.body16, %ioc_bb17
  %cmp15 = icmp ult i32 %10, %n.086, !dbg !143
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !143

ioc_bb17:                                         ; preds = %for.body16
  %12 = zext i32 %i.084 to i64, !dbg !143
  tail call void @__ioc_report_add_overflow(i32 58, i32 29, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !143
  br label %for.cond14.backedge, !dbg !143

for.end:                                          ; preds = %for.cond14.backedge, %for.cond14.preheader
  %13 = load i32** %lock, align 4, !dbg !149, !tbaa !105
  %14 = load volatile i32* %13, align 4, !dbg !149, !tbaa !131
  %cmp22 = icmp eq i32 %14, 0, !dbg !149
  br i1 %cmp22, label %land.lhs.true23, label %cont34, !dbg !149

land.lhs.true23:                                  ; preds = %for.end
  %15 = load i32* @ngx_pid, align 4, !dbg !149, !tbaa !109
  %16 = icmp sgt i32 %15, -1, !dbg !149
  br i1 %16, label %cont29, label %ioc_bb28, !dbg !149

ioc_bb28:                                         ; preds = %land.lhs.true23
  %17 = sext i32 %15 to i64, !dbg !149
  tail call void @__ioc_report_conversion(i32 61, i32 35, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %17, i8 1) nounwind, !dbg !149
  br label %cont29, !dbg !149

cont29:                                           ; preds = %ioc_bb28, %land.lhs.true23
  %18 = cmpxchg i32* %13, i32 0, i32 %15 seq_cst, !dbg !149
  %19 = icmp eq i32 %18, 0, !dbg !149
  br i1 %19, label %return, label %cont34, !dbg !149

cont34:                                           ; preds = %cont29, %for.end
  %shl = shl i32 %n.086, 1, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !75), !dbg !138
  %20 = load i32* %spin, align 4, !dbg !138, !tbaa !109
  %cmp11 = icmp ult i32 %shl, %20, !dbg !138
  br i1 %cmp11, label %for.cond14.preheader, label %if.end36, !dbg !138

if.end36:                                         ; preds = %for.cond10.preheader, %cont34, %if.end
  %21 = load i32* %semaphore, align 4, !dbg !135, !tbaa !109
  %tobool = icmp eq i32 %21, 0, !dbg !135
  br i1 %tobool, label %if.end68, label %cont39, !dbg !135

cont39:                                           ; preds = %if.end36
  %22 = load i32** %wait, align 4, !dbg !136, !tbaa !105
  %23 = atomicrmw add i32* %22, i32 1 seq_cst, !dbg !136
  %24 = load i32** %lock, align 4, !dbg !150, !tbaa !105
  %25 = load volatile i32* %24, align 4, !dbg !150, !tbaa !131
  %cmp43 = icmp eq i32 %25, 0, !dbg !150
  br i1 %cmp43, label %land.lhs.true44, label %while.cond, !dbg !150

land.lhs.true44:                                  ; preds = %cont39
  %26 = load i32* @ngx_pid, align 4, !dbg !150, !tbaa !109
  %27 = icmp sgt i32 %26, -1, !dbg !150
  br i1 %27, label %cont50, label %ioc_bb49, !dbg !150

ioc_bb49:                                         ; preds = %land.lhs.true44
  %28 = sext i32 %26 to i64, !dbg !150
  tail call void @__ioc_report_conversion(i32 69, i32 33, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %28, i8 1) nounwind, !dbg !150
  br label %cont50, !dbg !150

cont50:                                           ; preds = %ioc_bb49, %land.lhs.true44
  %29 = cmpxchg i32* %24, i32 0, i32 %26 seq_cst, !dbg !150
  %30 = icmp eq i32 %29, 0, !dbg !150
  br i1 %30, label %return, label %while.cond, !dbg !150

while.cond:                                       ; preds = %cont39, %cont50, %while.body
  %call = tail call i32 @sem_wait(%union.sem_t* %sem) nounwind, !dbg !137
  %cmp55 = icmp eq i32 %call, -1, !dbg !137
  br i1 %cmp55, label %while.body, label %for.cond, !dbg !137

while.body:                                       ; preds = %while.cond
  %call56 = tail call i32* @__errno_location() nounwind readnone, !dbg !151
  %31 = load i32* %call56, align 4, !dbg !151, !tbaa !109
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !76), !dbg !151
  %cmp57 = icmp eq i32 %31, 4, !dbg !152
  br i1 %cmp57, label %while.cond, label %if.then58, !dbg !152

if.then58:                                        ; preds = %while.body
  %32 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !153, !tbaa !105
  %log = getelementptr inbounds %struct.ngx_cycle_s* %32, i32 0, i32 2, !dbg !153
  %33 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !153, !tbaa !105
  %log_level = getelementptr inbounds %struct.ngx_log_s* %33, i32 0, i32 0, !dbg !153
  %34 = load i32* %log_level, align 4, !dbg !153, !tbaa !109
  %cmp61 = icmp ugt i32 %34, 1, !dbg !153
  br i1 %cmp61, label %cont64, label %for.cond, !dbg !153

cont64:                                           ; preds = %if.then58
  %35 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !155, !tbaa !105
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %35, i32 %31, i8* getelementptr inbounds ([41 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !155
  br label %for.cond, !dbg !155

if.end68:                                         ; preds = %if.end36
  %call69 = tail call i32 @sched_yield() nounwind, !dbg !156
  br label %for.cond, !dbg !157

return:                                           ; preds = %cont50, %cont5, %cont29
  ret void, !dbg !158
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @sem_wait(%union.sem_t*)

declare i32 @sched_yield() nounwind

define void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %mtx) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !85), !dbg !159
  tail call void @__ioc_report_conversion(i32 92, i32 36, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !160
  %lock = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 0, !dbg !162
  %0 = load i32** %lock, align 4, !dbg !162, !tbaa !105
  %1 = load i32* @ngx_pid, align 4, !dbg !162, !tbaa !109
  %2 = icmp sgt i32 %1, -1, !dbg !162
  br i1 %2, label %cont7, label %ioc_bb4, !dbg !162

ioc_bb4:                                          ; preds = %entry
  %3 = sext i32 %1 to i64, !dbg !162
  tail call void @__ioc_report_conversion(i32 95, i32 7, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %3, i8 1) nounwind, !dbg !162
  br label %cont7, !dbg !162

cont7:                                            ; preds = %entry, %ioc_bb4
  %4 = cmpxchg i32* %0, i32 %1, i32 0 seq_cst, !dbg !162
  %5 = icmp eq i32 %4, %1, !dbg !162
  br i1 %5, label %if.then8, label %if.end9, !dbg !162

if.then8:                                         ; preds = %cont7
  tail call fastcc void @ngx_shmtx_wakeup(%struct.ngx_shmtx_t* %mtx), !dbg !163
  br label %if.end9, !dbg !165

if.end9:                                          ; preds = %if.then8, %cont7
  ret void, !dbg !166
}

define internal fastcc void @ngx_shmtx_wakeup(%struct.ngx_shmtx_t* %mtx) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !99), !dbg !167
  %semaphore = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 2, !dbg !168
  %0 = load i32* %semaphore, align 4, !dbg !168, !tbaa !109
  %tobool = icmp eq i32 %0, 0, !dbg !168
  br i1 %tobool, label %if.end24, label %for.cond.preheader, !dbg !168

for.cond.preheader:                               ; preds = %entry
  %wait1 = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 1, !dbg !169
  br label %for.cond, !dbg !169

for.cond:                                         ; preds = %for.cond.preheader, %cont8
  %1 = load i32** %wait1, align 4, !dbg !169, !tbaa !105
  %2 = load volatile i32* %1, align 4, !dbg !169, !tbaa !131
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !100), !dbg !169
  %cmp = icmp eq i32 %2, 0, !dbg !172
  br i1 %cmp, label %if.end24, label %if.end3, !dbg !172

if.end3:                                          ; preds = %for.cond
  %3 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 1), !dbg !173
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !173
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !173
  br i1 %5, label %ioc_bb7, label %cont8, !dbg !173

ioc_bb7:                                          ; preds = %if.end3
  %6 = zext i32 %2 to i64, !dbg !173
  tail call void @__ioc_report_sub_overflow(i32 122, i32 9, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %6, i64 1, i8 5) nounwind, !dbg !173
  br label %cont8, !dbg !173

cont8:                                            ; preds = %if.end3, %ioc_bb7
  %7 = cmpxchg i32* %1, i32 %2, i32 %4 seq_cst, !dbg !173
  %8 = icmp eq i32 %7, %2, !dbg !173
  br i1 %8, label %for.end, label %for.cond, !dbg !173

for.end:                                          ; preds = %cont8
  %sem = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 3, !dbg !174
  %call = tail call i32 @sem_post(%union.sem_t* %sem) nounwind, !dbg !174
  %cmp13 = icmp eq i32 %call, -1, !dbg !174
  br i1 %cmp13, label %if.then14, label %if.end24, !dbg !174

if.then14:                                        ; preds = %for.end
  %9 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !175, !tbaa !105
  %log = getelementptr inbounds %struct.ngx_cycle_s* %9, i32 0, i32 2, !dbg !175
  %10 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !175, !tbaa !105
  %log_level = getelementptr inbounds %struct.ngx_log_s* %10, i32 0, i32 0, !dbg !175
  %11 = load i32* %log_level, align 4, !dbg !175, !tbaa !109
  %cmp17 = icmp ugt i32 %11, 1, !dbg !175
  br i1 %cmp17, label %cont20, label %if.end24, !dbg !175

cont20:                                           ; preds = %if.then14
  %12 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !177, !tbaa !105
  %call22 = tail call i32* @__errno_location() nounwind readnone, !dbg !177
  %13 = load i32* %call22, align 4, !dbg !177, !tbaa !109
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %12, i32 %13, i8* getelementptr inbounds ([35 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !177
  br label %if.end24, !dbg !177

if.end24:                                         ; preds = %for.cond, %entry, %if.then14, %cont20, %for.end
  ret void, !dbg !178
}

define i32 @ngx_shmtx_force_unlock(%struct.ngx_shmtx_t* %mtx, i32 %pid) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shmtx_t* %mtx}, i64 0, metadata !94), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %pid}, i64 0, metadata !95), !dbg !179
  %lock = getelementptr inbounds %struct.ngx_shmtx_t* %mtx, i32 0, i32 0, !dbg !180
  %0 = load i32** %lock, align 4, !dbg !180, !tbaa !105
  %1 = icmp sgt i32 %pid, -1, !dbg !180
  br i1 %1, label %cont2, label %ioc_bb, !dbg !180

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %pid to i64, !dbg !180
  tail call void @__ioc_report_conversion(i32 103, i32 7, i8* getelementptr inbounds ([21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @6, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !180
  br label %cont2, !dbg !180

cont2:                                            ; preds = %entry, %ioc_bb
  %3 = cmpxchg i32* %0, i32 %pid, i32 0 seq_cst, !dbg !180
  %4 = icmp eq i32 %3, %pid, !dbg !180
  br i1 %4, label %if.then, label %return, !dbg !180

if.then:                                          ; preds = %cont2
  tail call fastcc void @ngx_shmtx_wakeup(%struct.ngx_shmtx_t* %mtx), !dbg !182
  br label %return, !dbg !184

return:                                           ; preds = %cont2, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %cont2 ]
  ret i32 %retval.0, !dbg !185
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @sem_post(%union.sem_t*) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_shmtx.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !57, metadata !63, metadata !69, metadata !82, metadata !86, metadata !96}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_create", metadata !"ngx_shmtx_create", metadata !"", metadata !6, i32 10, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_shmtx_t*, %struct.ngx_shmtx_sh_t*, i8*)* @ngx_shmtx_create, null, null, metadata !52, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ngx_shmtx_create]
!6 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !13, metadata !42, metadata !48}
!9 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!10 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!11 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shmtx_t]
!14 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !6, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786451, null, metadata !"", metadata !16, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!16 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!17 = metadata !{metadata !18, metadata !24, metadata !25, metadata !29, metadata !41}
!18 = metadata !{i32 786445, metadata !15, metadata !"lock", metadata !16, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!20 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !16, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!21 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!22 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !16, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!23 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!24 = metadata !{i32 786445, metadata !15, metadata !"wait", metadata !16, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!25 = metadata !{i32 786445, metadata !15, metadata !"semaphore", metadata !16, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!26 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !16, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!27 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !16, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!28 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!29 = metadata !{i32 786445, metadata !15, metadata !"sem", metadata !16, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!30 = metadata !{i32 786454, null, metadata !"sem_t", metadata !16, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786455, null, metadata !"", metadata !32, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!32 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!33 = metadata !{metadata !34, metadata !39}
!34 = metadata !{i32 786445, metadata !31, metadata !"__size", metadata !32, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !36, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!36 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ] [0, 15]
!39 = metadata !{i32 786445, metadata !31, metadata !"__align", metadata !32, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!40 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!41 = metadata !{i32 786445, metadata !15, metadata !"spin", metadata !16, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shmtx_sh_t]
!43 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786451, null, metadata !"", metadata !16, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786445, metadata !44, metadata !"lock", metadata !16, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!47 = metadata !{i32 786445, metadata !44, metadata !"wait", metadata !16, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!49 = metadata !{i32 786454, null, metadata !"u_char", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!50 = metadata !{i32 786454, null, metadata !"__u_char", metadata !6, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!51 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !54, metadata !55, metadata !56}
!54 = metadata !{i32 786689, metadata !5, metadata !"mtx", metadata !6, i32 16777226, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 10]
!55 = metadata !{i32 786689, metadata !5, metadata !"addr", metadata !6, i32 33554442, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 10]
!56 = metadata !{i32 786689, metadata !5, metadata !"name", metadata !6, i32 50331658, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 10]
!57 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_destroy", metadata !"ngx_shmtx_destroy", metadata !"", metadata !6, i32 30, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_shmtx_t*)* @ngx_shmtx_destroy, null, null, metadata !60, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [ngx_shmtx_destroy]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !13}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786689, metadata !57, metadata !"mtx", metadata !6, i32 16777246, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 30]
!63 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_trylock", metadata !"ngx_shmtx_trylock", metadata !"", metadata !6, i32 42, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_shmtx_t*)* @ngx_shmtx_trylock, null, null, metadata !66, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [ngx_shmtx_trylock]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !26, metadata !13}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786689, metadata !63, metadata !"mtx", metadata !6, i32 16777258, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 42]
!69 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_lock", metadata !"ngx_shmtx_lock", metadata !"", metadata !6, i32 47, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_shmtx_t*)* @ngx_shmtx_lock, null, null, metadata !70, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [ngx_shmtx_lock]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !73, metadata !75, metadata !76}
!72 = metadata !{i32 786689, metadata !69, metadata !"mtx", metadata !6, i32 16777263, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 47]
!73 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 49, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 49]
!74 = metadata !{i32 786443, metadata !69, i32 48, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!75 = metadata !{i32 786688, metadata !74, metadata !"n", metadata !6, i32 50, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 50]
!76 = metadata !{i32 786688, metadata !77, metadata !"err", metadata !6, i32 74, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 74]
!77 = metadata !{i32 786443, metadata !78, i32 73, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!78 = metadata !{i32 786443, metadata !79, i32 67, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!79 = metadata !{i32 786443, metadata !80, i32 52, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!80 = metadata !{i32 786443, metadata !74, i32 52, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!81 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!82 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_unlock", metadata !"ngx_shmtx_unlock", metadata !"", metadata !6, i32 90, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_shmtx_t*)* @ngx_shmtx_unlock, null, null, metadata !83, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [ngx_shmtx_unlock]
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786689, metadata !82, metadata !"mtx", metadata !6, i32 16777306, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 90]
!86 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_force_unlock", metadata !"ngx_shmtx_force_unlock", metadata !"", metadata !6, i32 100, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_shmtx_t*, i32)* @ngx_shmtx_force_unlock, null, null, metadata !92, i32 101} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 101] [ngx_shmtx_force_unlock]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !26, metadata !13, metadata !89}
!89 = metadata !{i32 786454, null, metadata !"ngx_pid_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [ngx_pid_t] [line 16, size 0, align 0, offset 0] [from pid_t]
!90 = metadata !{i32 786454, null, metadata !"pid_t", metadata !6, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [pid_t] [line 99, size 0, align 0, offset 0] [from __pid_t]
!91 = metadata !{i32 786454, null, metadata !"__pid_t", metadata !6, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__pid_t] [line 143, size 0, align 0, offset 0] [from int]
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786689, metadata !86, metadata !"mtx", metadata !6, i32 16777316, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 100]
!95 = metadata !{i32 786689, metadata !86, metadata !"pid", metadata !6, i32 33554532, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pid] [line 100]
!96 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_shmtx_wakeup", metadata !"ngx_shmtx_wakeup", metadata !"", metadata !6, i32 110, metadata !58, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_shmtx_t*)* @ngx_shmtx_wakeup, null, null, metadata !97, i32 111} ; [ DW_TAG_subprogram ] [line 110] [local] [def] [scope 111] [ngx_shmtx_wakeup]
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786689, metadata !96, metadata !"mtx", metadata !6, i32 16777326, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 110]
!100 = metadata !{i32 786688, metadata !101, metadata !"wait", metadata !6, i32 113, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wait] [line 113]
!101 = metadata !{i32 786443, metadata !96, i32 111, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!102 = metadata !{i32 10, i32 0, metadata !5, null}
!103 = metadata !{i32 12, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !5, i32 11, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!105 = metadata !{metadata !"any pointer", metadata !106}
!106 = metadata !{metadata !"omnipotent char", metadata !107}
!107 = metadata !{metadata !"Simple C/C++ TBAA"}
!108 = metadata !{i32 13, i32 0, metadata !104, null}
!109 = metadata !{metadata !"int", metadata !106}
!110 = metadata !{i32 16, i32 0, metadata !104, null}
!111 = metadata !{i32 18, i32 0, metadata !104, null}
!112 = metadata !{i32 19, i32 0, metadata !104, null}
!113 = metadata !{i32 20, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !104, i32 19, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!115 = metadata !{i32 21, i32 0, metadata !114, null}
!116 = metadata !{i32 24, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !104, i32 23, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!118 = metadata !{i32 28, i32 0, metadata !104, null}
!119 = metadata !{i32 30, i32 0, metadata !57, null}
!120 = metadata !{i32 33, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !57, i32 31, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!122 = metadata !{i32 34, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !121, i32 33, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!124 = metadata !{i32 35, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !123, i32 34, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!126 = metadata !{i32 36, i32 0, metadata !125, null}
!127 = metadata !{i32 40, i32 0, metadata !121, null}
!128 = metadata !{i32 42, i32 0, metadata !63, null}
!129 = metadata !{i32 44, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !63, i32 43, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!131 = metadata !{metadata !"long", metadata !106}
!132 = metadata !{i32 45, i32 0, metadata !63, null}
!133 = metadata !{i32 47, i32 0, metadata !69, null}
!134 = metadata !{i32 53, i32 0, metadata !79, null}
!135 = metadata !{i32 67, i32 0, metadata !79, null}
!136 = metadata !{i32 68, i32 0, metadata !78, null}
!137 = metadata !{i32 73, i32 0, metadata !78, null}
!138 = metadata !{i32 57, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !140, i32 57, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!140 = metadata !{i32 786443, metadata !79, i32 56, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!141 = metadata !{i32 52, i32 0, metadata !80, null}
!142 = metadata !{i32 56, i32 0, metadata !79, null}
!143 = metadata !{i32 58, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !145, i32 58, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!145 = metadata !{i32 786443, metadata !139, i32 57, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!146 = metadata !{i32 59, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !144, i32 58, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!148 = metadata !{i32 1416}
!149 = metadata !{i32 61, i32 0, metadata !145, null}
!150 = metadata !{i32 69, i32 0, metadata !78, null}
!151 = metadata !{i32 75, i32 0, metadata !77, null}
!152 = metadata !{i32 76, i32 0, metadata !77, null}
!153 = metadata !{i32 77, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !77, i32 76, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!155 = metadata !{i32 78, i32 0, metadata !154, null}
!156 = metadata !{i32 86, i32 0, metadata !79, null}
!157 = metadata !{i32 87, i32 0, metadata !79, null}
!158 = metadata !{i32 88, i32 0, metadata !74, null}
!159 = metadata !{i32 90, i32 0, metadata !82, null}
!160 = metadata !{i32 92, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !82, i32 91, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!162 = metadata !{i32 95, i32 0, metadata !161, null}
!163 = metadata !{i32 96, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !161, i32 95, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!165 = metadata !{i32 97, i32 0, metadata !164, null}
!166 = metadata !{i32 98, i32 0, metadata !161, null}
!167 = metadata !{i32 110, i32 0, metadata !96, null}
!168 = metadata !{i32 114, i32 0, metadata !101, null}
!169 = metadata !{i32 118, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !171, i32 117, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!171 = metadata !{i32 786443, metadata !101, i32 117, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!172 = metadata !{i32 119, i32 0, metadata !170, null}
!173 = metadata !{i32 122, i32 0, metadata !170, null}
!174 = metadata !{i32 127, i32 0, metadata !101, null}
!175 = metadata !{i32 128, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !101, i32 127, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!177 = metadata !{i32 129, i32 0, metadata !176, null}
!178 = metadata !{i32 132, i32 0, metadata !101, null}
!179 = metadata !{i32 100, i32 0, metadata !86, null}
!180 = metadata !{i32 103, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !86, i32 101, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!182 = metadata !{i32 104, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !181, i32 103, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_shmtx.c]
!184 = metadata !{i32 105, i32 0, metadata !183, null}
!185 = metadata !{i32 108, i32 0, metadata !181, null}
