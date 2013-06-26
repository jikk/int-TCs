; ModuleID = 'src/event/ngx_event_accept.c'
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
%struct.ngx_event_s = type { i8*, i8, i8, i8, {}*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_module_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.ngx_command_s*, i32, i32 (%struct.ngx_log_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, {}*, i8* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_os_io_t = type { i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, i32 }
%struct.ngx_event_actions_t = type { i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_connection_s*)*, i32 (%struct.ngx_connection_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, void (%struct.ngx_cycle_s*)* }
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }

@ngx_cycle = external global %struct.ngx_cycle_s*
@ngx_event_core_module = external global %struct.ngx_module_s
@ngx_events_module = external global %struct.ngx_module_s
@ngx_event_flags = external global i32
@0 = internal unnamed_addr constant [11 x i8] c"ngx_flag_t\00"
@.str = private unnamed_addr constant [16 x i8] c"accept() failed\00", align 1
@ngx_use_accept_mutex = external global i32
@ngx_accept_mutex_held = external global i32
@ngx_accept_mutex = external global %struct.ngx_shmtx_t
@ngx_accept_disabled = external global i32
@1 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@.str1 = private unnamed_addr constant [22 x i8] c"close() socket failed\00", align 1
@ngx_inherited_nonblocking = external global i32
@.str2 = private unnamed_addr constant [23 x i8] c"ioctl(!FIONBIO) failed\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"ioctl(FIONBIO) failed\00", align 1
@ngx_io = external global %struct.ngx_os_io_t
@ngx_connection_counter = external global i32*
@ngx_event_actions = external global %struct.ngx_event_actions_t
@2 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@ngx_accept_events = external global i32
@.str4 = private unnamed_addr constant [38 x i8] c" while accepting new connection on %V\00", align 1
@3 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@4 = internal unnamed_addr constant [29 x i8] c"src/event/ngx_event_accept.c\00"
@ngx_current_msec = external global i32
@5 = internal unnamed_addr constant [2 x i8] c"+\00"
@6 = internal unnamed_addr constant [2 x i8] c"-\00"
@7 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@8 = internal unnamed_addr constant [15 x i8] c"ngx_msec_int_t\00"
@9 = internal unnamed_addr constant [4 x i8] c"int\00"
@10 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@11 = internal unnamed_addr constant [28 x i8] c"src/event/ngx_event_timer.h\00"
@ngx_event_timer_rbtree = external global %struct.ngx_rbtree_s

define void @ngx_event_accept(%struct.ngx_event_s* %ev) nounwind {
entry:
  %socklen = alloca i32, align 4
  %sa = alloca [110 x i8], align 1
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %ev}, i64 0, metadata !113), !dbg !504
  call void @llvm.dbg.declare(metadata !{i32* %socklen}, metadata !114), !dbg !505
  call void @llvm.dbg.declare(metadata !{[110 x i8]* %sa}, metadata !390), !dbg !506
  %0 = getelementptr %struct.ngx_event_s* %ev, i32 0, i32 1, !dbg !507
  %1 = bitcast i8* %0 to i32*, !dbg !507
  %2 = load i32* %1, align 4, !dbg !507
  %bf.clear = and i32 %2, 1024, !dbg !507
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !507
  br i1 %tobool, label %if.end3, label %if.then, !dbg !507

if.then:                                          ; preds = %entry
  %3 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !508, !tbaa !510
  %call = call fastcc i32 @ngx_enable_accept_events(%struct.ngx_cycle_s* %3), !dbg !508
  %cmp = icmp eq i32 %call, 0, !dbg !508
  br i1 %cmp, label %cont, label %do.end, !dbg !508

cont:                                             ; preds = %if.then
  %4 = load i32* %1, align 4, !dbg !513
  %5 = and i32 %4, -1025, !dbg !513
  store i32 %5, i32* %1, align 4, !dbg !513
  br label %if.end3, !dbg !514

if.end3:                                          ; preds = %entry, %cont
  %6 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_event_core_module, i32 0, i32 0), align 4, !dbg !515, !tbaa !516
  %7 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !515, !tbaa !516
  %8 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !515, !tbaa !510
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %8, i32 0, i32 0, !dbg !515
  %9 = load volatile i8***** %conf_ctx, align 4, !dbg !515, !tbaa !510
  %arrayidx = getelementptr inbounds i8**** %9, i32 %7, !dbg !515
  %10 = load i8**** %arrayidx, align 4, !dbg !515, !tbaa !510
  %11 = load i8*** %10, align 4, !dbg !515, !tbaa !510
  %arrayidx4 = getelementptr inbounds i8** %11, i32 %6, !dbg !515
  %12 = load i8** %arrayidx4, align 4, !dbg !515, !tbaa !510
  %13 = load i32* @ngx_event_flags, align 4, !dbg !517, !tbaa !516
  %and = and i32 %13, 128, !dbg !517
  %tobool7 = icmp eq i32 %and, 0, !dbg !517
  br i1 %tobool7, label %cont13, label %cont10, !dbg !517

cont10:                                           ; preds = %if.end3
  %14 = load i32* %1, align 4, !dbg !518
  %15 = or i32 %14, 262144, !dbg !518
  store i32 %15, i32* %1, align 4, !dbg !518
  br label %if.end21, !dbg !520

cont13:                                           ; preds = %if.end3
  %and14 = and i32 %13, 8, !dbg !521
  %tobool15 = icmp eq i32 %and14, 0, !dbg !521
  br i1 %tobool15, label %if.then16, label %cont13.if.end21_crit_edge, !dbg !521

cont13.if.end21_crit_edge:                        ; preds = %cont13
  %.pre434 = load i32* %1, align 4, !dbg !522
  br label %if.end21, !dbg !521

if.then16:                                        ; preds = %cont13
  %multi_accept = getelementptr inbounds i8* %12, i32 8, !dbg !523
  %16 = bitcast i8* %multi_accept to i32*, !dbg !523
  %17 = load i32* %16, align 4, !dbg !523, !tbaa !516
  %18 = icmp sgt i32 %17, -1, !dbg !523
  br i1 %18, label %cont18, label %ioc_bb17, !dbg !523

ioc_bb17:                                         ; preds = %if.then16
  %19 = sext i32 %17 to i64, !dbg !523
  call void @__ioc_report_conversion(i32 40, i32 23, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %19, i8 1) nounwind, !dbg !523
  br label %cont18, !dbg !523

cont18:                                           ; preds = %ioc_bb17, %if.then16
  %bf.value = shl i32 %17, 18, !dbg !523
  %20 = and i32 %bf.value, 262144, !dbg !523
  %21 = load i32* %1, align 4, !dbg !523
  %22 = and i32 %21, -262145, !dbg !523
  %23 = or i32 %22, %20, !dbg !523
  store i32 %23, i32* %1, align 4, !dbg !523
  br label %if.end21, !dbg !525

if.end21:                                         ; preds = %cont13.if.end21_crit_edge, %cont18, %cont10
  %24 = phi i32 [ %.pre434, %cont13.if.end21_crit_edge ], [ %23, %cont18 ], [ %15, %cont10 ]
  %data = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 0, !dbg !526
  %25 = load i8** %data, align 4, !dbg !526, !tbaa !510
  %listening = getelementptr inbounds i8* %25, i32 32, !dbg !527
  %26 = bitcast i8* %listening to %struct.ngx_listening_s**, !dbg !527
  %27 = load %struct.ngx_listening_s** %26, align 4, !dbg !527, !tbaa !510
  call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %27}, i64 0, metadata !126), !dbg !527
  %28 = and i32 %24, -33, !dbg !522
  store i32 %28, i32* %1, align 4, !dbg !522
  %fd = getelementptr inbounds i8* %25, i32 12, !dbg !528
  %29 = bitcast i8* %fd to i32*, !dbg !528
  %30 = bitcast [110 x i8]* %sa to %struct.sockaddr*, !dbg !528
  %.compoundliteral.sroa.0.0..idx = getelementptr inbounds %union.__SOCKADDR_ARG* %agg.tmp, i32 0, i32 0, !dbg !528
  %log48 = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 6, !dbg !530
  %pool_size = getelementptr inbounds %struct.ngx_listening_s* %27, i32 0, i32 16, !dbg !532
  %31 = getelementptr inbounds [110 x i8]* %sa, i32 0, i32 0, !dbg !533
  %log189 = getelementptr inbounds %struct.ngx_listening_s* %27, i32 0, i32 14, !dbg !534
  %32 = bitcast %struct.ngx_log_s* %log189 to i8*, !dbg !534
  %sockaddr195 = getelementptr inbounds %struct.ngx_listening_s* %27, i32 0, i32 1, !dbg !535
  %33 = getelementptr %struct.ngx_listening_s* %27, i32 0, i32 21, !dbg !536
  %34 = bitcast i8* %33 to i32*, !dbg !536
  %handler282 = getelementptr inbounds %struct.ngx_listening_s* %27, i32 0, i32 12, !dbg !537
  %addr_text_max_len = getelementptr inbounds %struct.ngx_listening_s* %27, i32 0, i32 3, !dbg !538
  br label %do.body, !dbg !540

do.body:                                          ; preds = %do.cond, %if.end21
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !114), !dbg !542
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !114), !dbg !542
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !114), !dbg !542
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !114), !dbg !542
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !114), !dbg !542
  store i32 110, i32* %socklen, align 4, !dbg !542, !tbaa !516
  %35 = load i32* %29, align 4, !dbg !528, !tbaa !516
  store %struct.sockaddr* %30, %struct.sockaddr** %.compoundliteral.sroa.0.0..idx, align 4, !dbg !528
  %call25 = call i32 @accept(i32 %35, %union.__SOCKADDR_ARG* byval align 4 %agg.tmp, i32* %socklen) nounwind, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !122), !dbg !528
  %cmp28 = icmp eq i32 %call25, -1, !dbg !543
  br i1 %cmp28, label %if.then29, label %if.end91, !dbg !543

if.then29:                                        ; preds = %do.body
  %call30 = call i32* @__errno_location() nounwind readnone, !dbg !544
  %36 = load i32* %call30, align 4, !dbg !544, !tbaa !516
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !118), !dbg !544
  %cmp31 = icmp eq i32 %36, 11, !dbg !545
  br i1 %cmp31, label %do.end, label %cont35, !dbg !545

cont35:                                           ; preds = %if.then29
  call void @llvm.dbg.value(metadata !546, i64 0, metadata !121), !dbg !547
  %cmp36 = icmp eq i32 %36, 103, !dbg !548
  br i1 %cmp36, label %if.end47, label %if.else40, !dbg !548

if.else40:                                        ; preds = %cont35
  %.off = add i32 %36, -23, !dbg !549
  %37 = icmp ult i32 %.off, 2, !dbg !549
  %. = select i1 %37, i32 3, i32 2, !dbg !549
  br label %if.end47, !dbg !549

if.end47:                                         ; preds = %if.else40, %cont35
  %level.0 = phi i32 [ 4, %cont35 ], [ %., %if.else40 ]
  %38 = load %struct.ngx_log_s** %log48, align 4, !dbg !530, !tbaa !510
  %log_level = getelementptr inbounds %struct.ngx_log_s* %38, i32 0, i32 0, !dbg !530
  %39 = load i32* %log_level, align 4, !dbg !530, !tbaa !516
  %cmp49 = icmp ult i32 %39, %level.0, !dbg !530
  br i1 %cmp49, label %if.end52, label %if.then50, !dbg !530

if.then50:                                        ; preds = %if.end47
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %level.0, %struct.ngx_log_s* %38, i32 %36, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !550
  br label %if.end52, !dbg !550

if.end52:                                         ; preds = %if.end47, %if.then50
  br i1 %cmp36, label %cont56, label %if.end72, !dbg !551

cont56:                                           ; preds = %if.end52
  %40 = load i32* @ngx_event_flags, align 4, !dbg !552, !tbaa !516
  %and57 = and i32 %40, 8, !dbg !552
  %tobool58 = icmp eq i32 %and57, 0, !dbg !552
  %.pre435 = load i32* %1, align 4, !dbg !554
  br i1 %tobool58, label %if.end66, label %if.then59, !dbg !552

if.then59:                                        ; preds = %cont56
  %41 = lshr i32 %.pre435, 18, !dbg !555
  %bf.clear61 = and i32 %41, 1, !dbg !555
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %bf.clear61, i32 1), !dbg !555
  %43 = extractvalue { i32, i1 } %42, 0, !dbg !555
  %44 = extractvalue { i32, i1 } %42, 1, !dbg !555
  br i1 %44, label %ioc_bb62, label %cont63, !dbg !555

ioc_bb62:                                         ; preds = %if.then59
  %45 = zext i32 %bf.clear61 to i64, !dbg !555
  call void @__ioc_report_sub_overflow(i32 72, i32 26, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %45, i64 1, i8 5) nounwind, !dbg !555
  %.pre = load i32* %1, align 4, !dbg !555
  br label %cont63, !dbg !555

cont63:                                           ; preds = %if.then59, %ioc_bb62
  %46 = phi i32 [ %.pre435, %if.then59 ], [ %.pre, %ioc_bb62 ]
  %bf.value64 = shl i32 %43, 18, !dbg !555
  %47 = and i32 %bf.value64, 262144, !dbg !555
  %48 = and i32 %46, -262145, !dbg !555
  %49 = or i32 %48, %47, !dbg !555
  store i32 %49, i32* %1, align 4, !dbg !555
  br label %if.end66, !dbg !557

if.end66:                                         ; preds = %cont56, %cont63
  %50 = phi i32 [ %49, %cont63 ], [ %.pre435, %cont56 ]
  %bf.clear68 = and i32 %50, 262144, !dbg !554
  %tobool69 = icmp eq i32 %bf.clear68, 0, !dbg !554
  br i1 %tobool69, label %do.end, label %do.cond, !dbg !554

if.end72:                                         ; preds = %if.end52
  %.off388 = add i32 %36, -23, !dbg !558
  %51 = icmp ult i32 %.off388, 2, !dbg !558
  br i1 %51, label %if.then76, label %do.end, !dbg !558

if.then76:                                        ; preds = %if.end72
  %52 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !559, !tbaa !510
  %call77 = call fastcc i32 @ngx_disable_accept_events(%struct.ngx_cycle_s* %52), !dbg !559
  %cmp78 = icmp eq i32 %call77, 0, !dbg !559
  br i1 %cmp78, label %if.end80, label %do.end, !dbg !559

if.end80:                                         ; preds = %if.then76
  %53 = load i32* @ngx_use_accept_mutex, align 4, !dbg !561, !tbaa !516
  %tobool81 = icmp eq i32 %53, 0, !dbg !561
  br i1 %tobool81, label %if.else88, label %if.then82, !dbg !561

if.then82:                                        ; preds = %if.end80
  %54 = load i32* @ngx_accept_mutex_held, align 4, !dbg !562, !tbaa !516
  %tobool83 = icmp eq i32 %54, 0, !dbg !562
  br i1 %tobool83, label %if.end87, label %if.then84, !dbg !562

if.then84:                                        ; preds = %if.then82
  call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* @ngx_accept_mutex) nounwind, !dbg !564
  store i32 0, i32* @ngx_accept_mutex_held, align 4, !dbg !566, !tbaa !516
  br label %if.end87, !dbg !567

if.end87:                                         ; preds = %if.then82, %if.then84
  store i32 1, i32* @ngx_accept_disabled, align 4, !dbg !568, !tbaa !516
  br label %do.end, !dbg !569

if.else88:                                        ; preds = %if.end80
  %accept_mutex_delay = getelementptr inbounds i8* %12, i32 16, !dbg !570
  %55 = bitcast i8* %accept_mutex_delay to i32*, !dbg !570
  %56 = load i32* %55, align 4, !dbg !570, !tbaa !516
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %ev}, i64 0, metadata !572) nounwind, !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !574) nounwind, !dbg !573
  %57 = load volatile i32* @ngx_current_msec, align 4, !dbg !575, !tbaa !516
  %58 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %57, i32 %56) nounwind, !dbg !575
  %59 = extractvalue { i32, i1 } %58, 0, !dbg !575
  %60 = extractvalue { i32, i1 } %58, 1, !dbg !575
  br i1 %60, label %ioc_bb.i, label %cont.i, !dbg !575

ioc_bb.i:                                         ; preds = %if.else88
  %61 = zext i32 %56 to i64, !dbg !575
  %62 = zext i32 %57 to i64, !dbg !575
  call void @__ioc_report_add_overflow(i32 64, i32 28, i8* getelementptr inbounds ([28 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %62, i64 %61, i8 5) nounwind, !dbg !575
  br label %cont.i, !dbg !575

cont.i:                                           ; preds = %ioc_bb.i, %if.else88
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !576) nounwind, !dbg !575
  %63 = load i32* %1, align 4, !dbg !577
  %bf.clear.i = and i32 %63, 2048, !dbg !577
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !577
  br i1 %tobool.i, label %cont.if.end11_crit_edge.i, label %if.then.i, !dbg !577

cont.if.end11_crit_edge.i:                        ; preds = %cont.i
  %timer12.pre.i = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 7, !dbg !578
  br label %if.end11.i, !dbg !577

if.then.i:                                        ; preds = %cont.i
  %key2.i = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 7, i32 0, !dbg !579
  %64 = load i32* %key2.i, align 4, !dbg !579, !tbaa !516
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %64) nounwind, !dbg !579
  %66 = extractvalue { i32, i1 } %65, 0, !dbg !579
  %67 = extractvalue { i32, i1 } %65, 1, !dbg !579
  br i1 %67, label %ioc_bb3.i, label %cont4.i, !dbg !579

ioc_bb3.i:                                        ; preds = %if.then.i
  %68 = zext i32 %64 to i64, !dbg !579
  %69 = zext i32 %59 to i64, !dbg !579
  call void @__ioc_report_sub_overflow(i32 74, i32 38, i8* getelementptr inbounds ([28 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %69, i64 %68, i8 5) nounwind, !dbg !579
  br label %cont4.i, !dbg !579

cont4.i:                                          ; preds = %ioc_bb3.i, %if.then.i
  %70 = icmp sgt i32 %66, -1, !dbg !579
  br i1 %70, label %cond.end.i, label %cond.false.i, !dbg !579

cond.false.i:                                     ; preds = %cont4.i
  %71 = zext i32 %66 to i64, !dbg !579
  call void @__ioc_report_conversion(i32 74, i32 33, i8* getelementptr inbounds ([28 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %71, i8 0) nounwind, !dbg !579
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !581) nounwind, !dbg !579
  %72 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %66) nounwind, !dbg !582
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !582
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !582
  br i1 %74, label %ioc_bb7.i, label %cond.end.i, !dbg !582

ioc_bb7.i:                                        ; preds = %cond.false.i
  %75 = sext i32 %66 to i64, !dbg !582
  call void @__ioc_report_sub_overflow(i32 76, i32 13, i8* getelementptr inbounds ([28 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @10, i32 0, i32 0), i64 0, i64 %75, i8 13) nounwind, !dbg !582
  br label %cond.end.i, !dbg !582

cond.end.i:                                       ; preds = %ioc_bb7.i, %cond.false.i, %cont4.i
  %cond.i = phi i32 [ %73, %ioc_bb7.i ], [ %73, %cond.false.i ], [ %66, %cont4.i ], !dbg !582
  %cmp9.i = icmp slt i32 %cond.i, 300, !dbg !582
  br i1 %cmp9.i, label %do.end, label %if.end.i, !dbg !582

if.end.i:                                         ; preds = %cond.end.i
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %ev}, i64 0, metadata !583) nounwind, !dbg !585
  %timer.i.i = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 7, !dbg !586
  call void @ngx_rbtree_delete(%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, %struct.ngx_rbtree_node_s* %timer.i.i) nounwind, !dbg !586
  %76 = load i32* %1, align 4, !dbg !588
  %77 = and i32 %76, -2049, !dbg !588
  store i32 %77, i32* %1, align 4, !dbg !588
  br label %if.end11.i, !dbg !589

if.end11.i:                                       ; preds = %if.end.i, %cont.if.end11_crit_edge.i
  %timer12.pre-phi.i = phi %struct.ngx_rbtree_node_s* [ %timer12.pre.i, %cont.if.end11_crit_edge.i ], [ %timer.i.i, %if.end.i ], !dbg !578
  %key13.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %timer12.pre-phi.i, i32 0, i32 0, !dbg !578
  store i32 %59, i32* %key13.i, align 4, !dbg !578, !tbaa !516
  call void @ngx_rbtree_insert(%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, %struct.ngx_rbtree_node_s* %timer12.pre-phi.i) nounwind, !dbg !590
  %78 = load i32* %1, align 4, !dbg !591
  %79 = or i32 %78, 2048, !dbg !591
  store i32 %79, i32* %1, align 4, !dbg !591
  br label %do.end, !dbg !592

if.end91:                                         ; preds = %do.body
  %80 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !593, !tbaa !510
  %connection_n = getelementptr inbounds %struct.ngx_cycle_s* %80, i32 0, i32 12, !dbg !593
  %81 = load volatile i32* %connection_n, align 4, !dbg !593, !tbaa !516
  %div = lshr i32 %81, 3, !dbg !593
  %free_connection_n = getelementptr inbounds %struct.ngx_cycle_s* %80, i32 0, i32 6, !dbg !593
  %82 = load volatile i32* %free_connection_n, align 4, !dbg !593, !tbaa !516
  %83 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %div, i32 %82), !dbg !593
  %84 = extractvalue { i32, i1 } %83, 0, !dbg !593
  %85 = extractvalue { i32, i1 } %83, 1, !dbg !593
  br i1 %85, label %ioc_bb95, label %cont96, !dbg !593

ioc_bb95:                                         ; preds = %if.end91
  %86 = zext i32 %82 to i64, !dbg !593
  %87 = zext i32 %div to i64, !dbg !593
  call void @__ioc_report_sub_overflow(i32 97, i32 58, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %87, i64 %86, i8 5) nounwind, !dbg !593
  br label %cont96, !dbg !593

cont96:                                           ; preds = %if.end91, %ioc_bb95
  %88 = icmp sgt i32 %84, -1, !dbg !593
  br i1 %88, label %cont98, label %ioc_bb97, !dbg !593

ioc_bb97:                                         ; preds = %cont96
  %89 = zext i32 %84 to i64, !dbg !593
  call void @__ioc_report_conversion(i32 97, i32 27, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %89, i8 0) nounwind, !dbg !593
  br label %cont98, !dbg !593

cont98:                                           ; preds = %ioc_bb97, %cont96
  store i32 %84, i32* @ngx_accept_disabled, align 4, !dbg !593, !tbaa !516
  %90 = load %struct.ngx_log_s** %log48, align 4, !dbg !594, !tbaa !510
  %call100 = call %struct.ngx_connection_s* @ngx_get_connection(i32 %call25, %struct.ngx_log_s* %90) nounwind, !dbg !594
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %call100}, i64 0, metadata !374), !dbg !594
  %cmp101 = icmp eq %struct.ngx_connection_s* %call100, null, !dbg !595
  br i1 %cmp101, label %if.then102, label %if.end120, !dbg !595

if.then102:                                       ; preds = %cont98
  %call103 = call i32 @close(i32 %call25) nounwind, !dbg !596
  %cmp106 = icmp eq i32 %call103, -1, !dbg !596
  br i1 %cmp106, label %cont111, label %do.end, !dbg !596

cont111:                                          ; preds = %if.then102
  %91 = load %struct.ngx_log_s** %log48, align 4, !dbg !598, !tbaa !510
  %log_level109 = getelementptr inbounds %struct.ngx_log_s* %91, i32 0, i32 0, !dbg !598
  %92 = load i32* %log_level109, align 4, !dbg !598, !tbaa !516
  %cmp112 = icmp ugt i32 %92, 1, !dbg !598
  br i1 %cmp112, label %cont115, label %do.end, !dbg !598

cont115:                                          ; preds = %cont111
  %call117 = call i32* @__errno_location() nounwind readnone, !dbg !600
  %93 = load i32* %call117, align 4, !dbg !600, !tbaa !516
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %91, i32 %93, i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !600
  br label %do.end, !dbg !600

if.end120:                                        ; preds = %cont98
  %94 = load i32* %pool_size, align 4, !dbg !532, !tbaa !516
  %95 = load %struct.ngx_log_s** %log48, align 4, !dbg !532, !tbaa !510
  %call122 = call %struct.ngx_pool_s* @ngx_create_pool(i32 %94, %struct.ngx_log_s* %95) nounwind, !dbg !532
  %pool = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 11, !dbg !532
  store %struct.ngx_pool_s* %call122, %struct.ngx_pool_s** %pool, align 4, !dbg !532, !tbaa !510
  %cmp124 = icmp eq %struct.ngx_pool_s* %call122, null, !dbg !601
  br i1 %cmp124, label %if.then125, label %if.end126, !dbg !601

if.then125:                                       ; preds = %if.end120
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !602
  br label %do.end, !dbg !604

if.end126:                                        ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !605
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !605
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !605
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !605
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !605
  %96 = load i32* %socklen, align 4, !dbg !605, !tbaa !516
  %call128 = call i8* @ngx_palloc(%struct.ngx_pool_s* %call122, i32 %96) nounwind, !dbg !605
  %97 = bitcast i8* %call128 to %struct.sockaddr*, !dbg !605
  %sockaddr = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 12, !dbg !605
  store %struct.sockaddr* %97, %struct.sockaddr** %sockaddr, align 4, !dbg !605, !tbaa !510
  %cmp130 = icmp eq i8* %call128, null, !dbg !606
  br i1 %cmp130, label %if.then131, label %if.end132, !dbg !606

if.then131:                                       ; preds = %if.end126
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !607
  br label %do.end, !dbg !609

if.end132:                                        ; preds = %if.end126
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !533
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !533
  %98 = load i32* %socklen, align 4, !dbg !533, !tbaa !516
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call128, i8* %31, i32 %98, i32 1, i1 false), !dbg !533
  %99 = load %struct.ngx_pool_s** %pool, align 4, !dbg !610, !tbaa !510
  %call135 = call i8* @ngx_palloc(%struct.ngx_pool_s* %99, i32 24) nounwind, !dbg !610
  %100 = bitcast i8* %call135 to %struct.ngx_log_s*, !dbg !610
  call void @llvm.dbg.value(metadata !{%struct.ngx_log_s* %100}, i64 0, metadata !120), !dbg !610
  %cmp136 = icmp eq i8* %call135, null, !dbg !611
  br i1 %cmp136, label %if.then137, label %if.end138, !dbg !611

if.then137:                                       ; preds = %if.end132
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !612
  br label %do.end, !dbg !614

if.end138:                                        ; preds = %if.end132
  %101 = load i32* @ngx_inherited_nonblocking, align 4, !dbg !615, !tbaa !516
  %tobool139 = icmp eq i32 %101, 0, !dbg !615
  %102 = load i32* @ngx_event_flags, align 4, !dbg !616, !tbaa !516
  br i1 %tobool139, label %cont166, label %cont142, !dbg !615

cont142:                                          ; preds = %if.end138
  %and143 = and i32 %102, 256, !dbg !616
  %tobool144 = icmp eq i32 %and143, 0, !dbg !616
  br i1 %tobool144, label %if.end188, label %if.then145, !dbg !616

if.then145:                                       ; preds = %cont142
  %call146 = call i32 @ngx_blocking(i32 %call25) nounwind, !dbg !618
  %cmp149 = icmp eq i32 %call146, -1, !dbg !618
  br i1 %cmp149, label %cont154, label %if.end188, !dbg !618

cont154:                                          ; preds = %if.then145
  %103 = load %struct.ngx_log_s** %log48, align 4, !dbg !620, !tbaa !510
  %log_level152 = getelementptr inbounds %struct.ngx_log_s* %103, i32 0, i32 0, !dbg !620
  %104 = load i32* %log_level152, align 4, !dbg !620, !tbaa !516
  %cmp155 = icmp ugt i32 %104, 1, !dbg !620
  br i1 %cmp155, label %cont158, label %if.end161, !dbg !620

cont158:                                          ; preds = %cont154
  %call160 = call i32* @__errno_location() nounwind readnone, !dbg !622
  %105 = load i32* %call160, align 4, !dbg !622, !tbaa !516
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %103, i32 %105, i8* getelementptr inbounds ([23 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !622
  br label %if.end161, !dbg !622

if.end161:                                        ; preds = %cont158, %cont154
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !623
  br label %do.end, !dbg !624

cont166:                                          ; preds = %if.end138
  %and167 = and i32 %102, 384, !dbg !625
  %tobool168 = icmp eq i32 %and167, 0, !dbg !625
  br i1 %tobool168, label %if.then169, label %if.end188, !dbg !625

if.then169:                                       ; preds = %cont166
  %call170 = call i32 @ngx_nonblocking(i32 %call25) nounwind, !dbg !627
  %cmp173 = icmp eq i32 %call170, -1, !dbg !627
  br i1 %cmp173, label %cont178, label %if.end188, !dbg !627

cont178:                                          ; preds = %if.then169
  %106 = load %struct.ngx_log_s** %log48, align 4, !dbg !629, !tbaa !510
  %log_level176 = getelementptr inbounds %struct.ngx_log_s* %106, i32 0, i32 0, !dbg !629
  %107 = load i32* %log_level176, align 4, !dbg !629, !tbaa !516
  %cmp179 = icmp ugt i32 %107, 1, !dbg !629
  br i1 %cmp179, label %cont182, label %if.end185, !dbg !629

cont182:                                          ; preds = %cont178
  %call184 = call i32* @__errno_location() nounwind readnone, !dbg !631
  %108 = load i32* %call184, align 4, !dbg !631, !tbaa !516
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %106, i32 %108, i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !631
  br label %if.end185, !dbg !631

if.end185:                                        ; preds = %cont182, %cont178
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !632
  br label %do.end, !dbg !633

if.end188:                                        ; preds = %cont142, %cont166, %if.then169, %if.then145
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call135, i8* %32, i32 24, i32 4, i1 false), !dbg !534, !tbaa.struct !634
  %109 = load i32 (%struct.ngx_connection_s*, i8*, i32)** getelementptr inbounds (%struct.ngx_os_io_t* @ngx_io, i32 0, i32 0), align 4, !dbg !636, !tbaa !510
  %recv = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 4, !dbg !636
  store i32 (%struct.ngx_connection_s*, i8*, i32)* %109, i32 (%struct.ngx_connection_s*, i8*, i32)** %recv, align 4, !dbg !636, !tbaa !510
  %110 = load i32 (%struct.ngx_connection_s*, i8*, i32)** getelementptr inbounds (%struct.ngx_os_io_t* @ngx_io, i32 0, i32 3), align 4, !dbg !637, !tbaa !510
  %send = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 5, !dbg !637
  store i32 (%struct.ngx_connection_s*, i8*, i32)* %110, i32 (%struct.ngx_connection_s*, i8*, i32)** %send, align 4, !dbg !637, !tbaa !510
  %111 = load i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)** getelementptr inbounds (%struct.ngx_os_io_t* @ngx_io, i32 0, i32 1), align 4, !dbg !638, !tbaa !510
  %recv_chain = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 6, !dbg !638
  store i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)* %111, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)** %recv_chain, align 4, !dbg !638, !tbaa !510
  %112 = load %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)** getelementptr inbounds (%struct.ngx_os_io_t* @ngx_io, i32 0, i32 4), align 4, !dbg !639, !tbaa !510
  %send_chain = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 7, !dbg !639
  store %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)* %112, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)** %send_chain, align 4, !dbg !639, !tbaa !510
  %log190 = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 10, !dbg !640
  store %struct.ngx_log_s* %100, %struct.ngx_log_s** %log190, align 4, !dbg !640, !tbaa !510
  %113 = load %struct.ngx_pool_s** %pool, align 4, !dbg !641, !tbaa !510
  %log192 = getelementptr inbounds %struct.ngx_pool_s* %113, i32 0, i32 6, !dbg !641
  store %struct.ngx_log_s* %100, %struct.ngx_log_s** %log192, align 4, !dbg !641, !tbaa !510
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !642
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !642
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !642
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !642
  call void @llvm.dbg.value(metadata !{i32* %socklen}, i64 0, metadata !114), !dbg !642
  %114 = load i32* %socklen, align 4, !dbg !642, !tbaa !516
  %socklen193 = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 13, !dbg !642
  store i32 %114, i32* %socklen193, align 4, !dbg !642, !tbaa !516
  %listening194 = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 8, !dbg !643
  store %struct.ngx_listening_s* %27, %struct.ngx_listening_s** %listening194, align 4, !dbg !643, !tbaa !510
  %115 = load %struct.sockaddr** %sockaddr195, align 4, !dbg !535, !tbaa !510
  %local_sockaddr = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 15, !dbg !535
  store %struct.sockaddr* %115, %struct.sockaddr** %local_sockaddr, align 4, !dbg !535, !tbaa !510
  %116 = getelementptr %struct.ngx_connection_s* %call100, i32 0, i32 20, !dbg !644
  %117 = bitcast i8* %116 to i32*, !dbg !644
  %118 = load i32* %117, align 4, !dbg !644
  %119 = or i32 %118, 4096, !dbg !644
  store i32 %119, i32* %117, align 4, !dbg !644
  %120 = load %struct.sockaddr** %sockaddr, align 4, !dbg !645, !tbaa !510
  %sa_family = getelementptr inbounds %struct.sockaddr* %120, i32 0, i32 0, !dbg !645
  %121 = load i16* %sa_family, align 2, !dbg !645, !tbaa !646
  %cmp200 = icmp eq i16 %121, 1, !dbg !645
  br i1 %cmp200, label %cont204, label %if.end209, !dbg !645

cont204:                                          ; preds = %if.end188
  %122 = and i32 %119, -31457281, !dbg !647
  %123 = or i32 %122, 20971520, !dbg !649
  store i32 %123, i32* %117, align 4, !dbg !649
  br label %if.end209, !dbg !650

if.end209:                                        ; preds = %cont204, %if.end188
  %read = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 1, !dbg !651
  %124 = load %struct.ngx_event_s** %read, align 4, !dbg !651, !tbaa !510
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %124}, i64 0, metadata !124), !dbg !651
  %write = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 2, !dbg !652
  %125 = load %struct.ngx_event_s** %write, align 4, !dbg !652, !tbaa !510
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %125}, i64 0, metadata !125), !dbg !652
  %126 = getelementptr %struct.ngx_event_s* %125, i32 0, i32 1, !dbg !653
  %127 = bitcast i8* %126 to i32*, !dbg !653
  %128 = load i32* %127, align 4, !dbg !653
  %129 = or i32 %128, 32, !dbg !653
  store i32 %129, i32* %127, align 4, !dbg !653
  %130 = load i32* @ngx_event_flags, align 4, !dbg !654, !tbaa !516
  %and215 = and i32 %130, 384, !dbg !654
  %tobool216 = icmp eq i32 %and215, 0, !dbg !654
  br i1 %tobool216, label %if.end221, label %cont219, !dbg !654

cont219:                                          ; preds = %if.end209
  %131 = getelementptr %struct.ngx_event_s* %124, i32 0, i32 1, !dbg !655
  %132 = bitcast i8* %131 to i32*, !dbg !655
  %133 = load i32* %132, align 4, !dbg !655
  %134 = or i32 %133, 32, !dbg !655
  store i32 %134, i32* %132, align 4, !dbg !655
  br label %if.end221, !dbg !657

if.end221:                                        ; preds = %if.end209, %cont219
  %135 = load i32* %1, align 4, !dbg !658
  %bf.clear223 = and i32 %135, 32768, !dbg !658
  %tobool224 = icmp eq i32 %bf.clear223, 0, !dbg !658
  br i1 %tobool224, label %if.end229, label %cont227, !dbg !658

cont227:                                          ; preds = %if.end221
  %136 = getelementptr %struct.ngx_event_s* %124, i32 0, i32 1, !dbg !659
  %137 = bitcast i8* %136 to i32*, !dbg !659
  %138 = load i32* %137, align 4, !dbg !659
  %139 = or i32 %138, 32, !dbg !659
  store i32 %139, i32* %137, align 4, !dbg !659
  br label %if.end229, !dbg !661

if.end229:                                        ; preds = %if.end221, %cont227
  %log230 = getelementptr inbounds %struct.ngx_event_s* %124, i32 0, i32 6, !dbg !662
  store %struct.ngx_log_s* %100, %struct.ngx_log_s** %log230, align 4, !dbg !662, !tbaa !510
  %log231 = getelementptr inbounds %struct.ngx_event_s* %125, i32 0, i32 6, !dbg !663
  store %struct.ngx_log_s* %100, %struct.ngx_log_s** %log231, align 4, !dbg !663, !tbaa !510
  %140 = load i32** @ngx_connection_counter, align 4, !dbg !664, !tbaa !510
  %141 = atomicrmw add i32* %140, i32 1 seq_cst, !dbg !664
  %number = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 18, !dbg !664
  store i32 %141, i32* %number, align 4, !dbg !664, !tbaa !635
  %142 = load i32* %34, align 4, !dbg !536
  %bf.clear235 = and i32 %142, 512, !dbg !536
  %tobool236 = icmp eq i32 %bf.clear235, 0, !dbg !536
  br i1 %tobool236, label %if.end263, label %if.then237, !dbg !536

if.then237:                                       ; preds = %if.end229
  %143 = load %struct.ngx_pool_s** %pool, align 4, !dbg !538, !tbaa !510
  %144 = load i32* %addr_text_max_len, align 4, !dbg !538, !tbaa !516
  %call239 = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %143, i32 %144) nounwind, !dbg !538
  %data240 = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 14, i32 1, !dbg !538
  store i8* %call239, i8** %data240, align 4, !dbg !538, !tbaa !510
  %cmp243 = icmp eq i8* %call239, null, !dbg !665
  br i1 %cmp243, label %if.then245, label %cont252, !dbg !665

if.then245:                                       ; preds = %if.then237
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !666
  br label %do.end, !dbg !668

cont252:                                          ; preds = %if.then237
  %145 = load i32* %addr_text_max_len, align 4, !dbg !669, !tbaa !516
  %146 = load %struct.sockaddr** %sockaddr, align 4, !dbg !669, !tbaa !510
  %call253 = call i32 @ngx_sock_ntop(%struct.sockaddr* %146, i8* %call239, i32 %145, i32 0) nounwind, !dbg !669
  %len = getelementptr inbounds %struct.ngx_connection_s* %call100, i32 0, i32 14, i32 0, !dbg !669
  store i32 %call253, i32* %len, align 4, !dbg !669, !tbaa !516
  %cmp259 = icmp eq i32 %call253, 0, !dbg !670
  br i1 %cmp259, label %if.then261, label %if.end263, !dbg !670

if.then261:                                       ; preds = %cont252
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !671
  br label %do.end, !dbg !673

if.end263:                                        ; preds = %if.end229, %cont252
  %147 = load i32 (%struct.ngx_connection_s*)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 4), align 4, !dbg !674, !tbaa !510
  %tobool264 = icmp eq i32 (%struct.ngx_connection_s*)* %147, null, !dbg !674
  br i1 %tobool264, label %if.end280, label %cont269, !dbg !674

cont269:                                          ; preds = %if.end263
  %148 = load i32* @ngx_event_flags, align 4, !dbg !674, !tbaa !516
  %and267 = and i32 %148, 64, !dbg !674
  %cmp270 = icmp eq i32 %and267, 0, !dbg !674
  br i1 %cmp270, label %if.then272, label %if.end280, !dbg !674

if.then272:                                       ; preds = %cont269
  %call273 = call i32 %147(%struct.ngx_connection_s* %call100) nounwind, !dbg !675
  %cmp276 = icmp eq i32 %call273, -1, !dbg !675
  br i1 %cmp276, label %if.then278, label %if.end280, !dbg !675

if.then278:                                       ; preds = %if.then272
  call fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %call100), !dbg !677
  br label %do.end, !dbg !679

if.end280:                                        ; preds = %if.end263, %if.then272, %cont269
  %data281 = getelementptr inbounds i8* %call135, i32 16, !dbg !680
  %149 = bitcast i8* %data281 to i8**, !dbg !680
  store i8* null, i8** %149, align 4, !dbg !680, !tbaa !510
  %handler = getelementptr inbounds i8* %call135, i32 12, !dbg !681
  %150 = bitcast i8* %handler to i8* (%struct.ngx_log_s*, i8*, i32)**, !dbg !681
  store i8* (%struct.ngx_log_s*, i8*, i32)* null, i8* (%struct.ngx_log_s*, i8*, i32)** %150, align 4, !dbg !681, !tbaa !510
  %151 = load void (%struct.ngx_connection_s*)** %handler282, align 4, !dbg !537, !tbaa !510
  call void %151(%struct.ngx_connection_s* %call100) nounwind, !dbg !537
  %152 = load i32* @ngx_event_flags, align 4, !dbg !682, !tbaa !516
  %and285 = and i32 %152, 8, !dbg !682
  %tobool286 = icmp eq i32 %and285, 0, !dbg !682
  %.pre436 = load i32* %1, align 4, !dbg !683
  br i1 %tobool286, label %do.cond, label %if.then287, !dbg !682

if.then287:                                       ; preds = %if.end280
  %153 = lshr i32 %.pre436, 18, !dbg !684
  %bf.clear289 = and i32 %153, 1, !dbg !684
  %154 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %bf.clear289, i32 1), !dbg !684
  %155 = extractvalue { i32, i1 } %154, 0, !dbg !684
  %156 = extractvalue { i32, i1 } %154, 1, !dbg !684
  br i1 %156, label %ioc_bb290, label %cont291, !dbg !684

ioc_bb290:                                        ; preds = %if.then287
  %157 = zext i32 %bf.clear289 to i64, !dbg !684
  call void @__ioc_report_sub_overflow(i32 224, i32 22, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %157, i64 1, i8 5) nounwind, !dbg !684
  %.pre433 = load i32* %1, align 4, !dbg !684
  br label %cont291, !dbg !684

cont291:                                          ; preds = %if.then287, %ioc_bb290
  %158 = phi i32 [ %.pre436, %if.then287 ], [ %.pre433, %ioc_bb290 ]
  %bf.value292 = shl i32 %155, 18, !dbg !684
  %159 = and i32 %bf.value292, 262144, !dbg !684
  %160 = and i32 %158, -262145, !dbg !684
  %161 = or i32 %160, %159, !dbg !684
  store i32 %161, i32* %1, align 4, !dbg !684
  br label %do.cond, !dbg !686

do.cond:                                          ; preds = %if.end280, %if.end66, %cont291
  %162 = phi i32 [ %50, %if.end66 ], [ %161, %cont291 ], [ %.pre436, %if.end280 ]
  %bf.clear296 = and i32 %162, 262144, !dbg !683
  %tobool297 = icmp eq i32 %bf.clear296, 0, !dbg !683
  br i1 %tobool297, label %do.end, label %do.body, !dbg !683

do.end:                                           ; preds = %if.end66, %do.cond, %if.then29, %if.end11.i, %cond.end.i, %if.then, %if.then76, %if.then102, %cont115, %cont111, %if.end72, %if.end87, %if.then125, %if.then131, %if.then137, %if.end161, %if.end185, %if.then245, %if.then261, %if.then278
  ret void, !dbg !687
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i32 @ngx_enable_accept_events(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !482), !dbg !688
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 0, !dbg !689
  %0 = load i8** %elts, align 4, !dbg !689, !tbaa !510
  %1 = bitcast i8* %0 to %struct.ngx_listening_s*, !dbg !689
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %1}, i64 0, metadata !485), !dbg !689
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !483), !dbg !690
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 1, !dbg !690
  %2 = load i32* %nelts, align 4, !dbg !690, !tbaa !516
  %cmp32 = icmp eq i32 %2, 0, !dbg !690
  br i1 %cmp32, label %return, label %for.body, !dbg !690

for.body:                                         ; preds = %entry, %for.cond.backedge
  %i.033 = phi i32 [ %12, %for.cond.backedge ], [ 0, %entry ]
  %connection = getelementptr inbounds %struct.ngx_listening_s* %1, i32 %i.033, i32 20, !dbg !692
  %3 = load %struct.ngx_connection_s** %connection, align 4, !dbg !692, !tbaa !510
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %3}, i64 0, metadata !486), !dbg !692
  %read = getelementptr inbounds %struct.ngx_connection_s* %3, i32 0, i32 1, !dbg !694
  %4 = load %struct.ngx_event_s** %read, align 4, !dbg !694, !tbaa !510
  %5 = getelementptr %struct.ngx_event_s* %4, i32 0, i32 1, !dbg !694
  %6 = bitcast i8* %5 to i32*, !dbg !694
  %7 = load i32* %6, align 4, !dbg !694
  %bf.clear = and i32 %7, 8, !dbg !694
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !694
  br i1 %tobool, label %cont3, label %for.inc, !dbg !694

cont3:                                            ; preds = %for.body
  %8 = load i32* @ngx_event_flags, align 4, !dbg !695, !tbaa !516
  %and = and i32 %8, 128, !dbg !695
  %tobool4 = icmp eq i32 %and, 0, !dbg !695
  br i1 %tobool4, label %cont15, label %if.then5, !dbg !695

if.then5:                                         ; preds = %cont3
  %9 = load i32 (%struct.ngx_connection_s*)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 4), align 4, !dbg !696, !tbaa !510
  %call = tail call i32 %9(%struct.ngx_connection_s* %3) nounwind, !dbg !696
  %cmp8 = icmp eq i32 %call, -1, !dbg !696
  br i1 %cmp8, label %return, label %for.inc, !dbg !696

cont15:                                           ; preds = %cont3
  %10 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !698, !tbaa !510
  %call16 = tail call i32 %10(%struct.ngx_event_s* %4, i32 1, i32 0) nounwind, !dbg !698
  %cmp19 = icmp eq i32 %call16, -1, !dbg !698
  br i1 %cmp19, label %return, label %for.inc, !dbg !698

for.inc:                                          ; preds = %for.body, %if.then5, %cont15
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.033, i32 1), !dbg !690
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !690
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !690
  br i1 %13, label %ioc_bb25, label %for.cond.backedge, !dbg !690

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb25
  %14 = load i32* %nelts, align 4, !dbg !690, !tbaa !516
  %cmp = icmp ult i32 %12, %14, !dbg !690
  br i1 %cmp, label %for.body, label %return, !dbg !690

ioc_bb25:                                         ; preds = %for.inc
  %15 = zext i32 %i.033 to i64, !dbg !690
  tail call void @__ioc_report_add_overflow(i32 260, i32 46, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !690
  br label %for.cond.backedge, !dbg !690

return:                                           ; preds = %for.cond.backedge, %cont15, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.then5 ], [ -1, %cont15 ], [ 0, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !700
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @accept(i32, %union.__SOCKADDR_ARG* byval align 4, i32*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32* @__errno_location() nounwind readnone

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

define internal fastcc i32 @ngx_disable_accept_events(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !474), !dbg !701
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 0, !dbg !702
  %0 = load i8** %elts, align 4, !dbg !702, !tbaa !510
  %1 = bitcast i8* %0 to %struct.ngx_listening_s*, !dbg !702
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %1}, i64 0, metadata !477), !dbg !702
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !475), !dbg !703
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 1, !dbg !703
  %2 = load i32* %nelts, align 4, !dbg !703, !tbaa !516
  %cmp34 = icmp eq i32 %2, 0, !dbg !703
  br i1 %cmp34, label %return, label %for.body, !dbg !703

for.body:                                         ; preds = %entry, %for.cond.backedge
  %i.035 = phi i32 [ %12, %for.cond.backedge ], [ 0, %entry ]
  %connection = getelementptr inbounds %struct.ngx_listening_s* %1, i32 %i.035, i32 20, !dbg !705
  %3 = load %struct.ngx_connection_s** %connection, align 4, !dbg !705, !tbaa !510
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %3}, i64 0, metadata !478), !dbg !705
  %read = getelementptr inbounds %struct.ngx_connection_s* %3, i32 0, i32 1, !dbg !707
  %4 = load %struct.ngx_event_s** %read, align 4, !dbg !707, !tbaa !510
  %5 = getelementptr %struct.ngx_event_s* %4, i32 0, i32 1, !dbg !707
  %6 = bitcast i8* %5 to i32*, !dbg !707
  %7 = load i32* %6, align 4, !dbg !707
  %bf.clear = and i32 %7, 8, !dbg !707
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !707
  br i1 %tobool, label %for.inc, label %cont3, !dbg !707

cont3:                                            ; preds = %for.body
  %8 = load i32* @ngx_event_flags, align 4, !dbg !708, !tbaa !516
  %and = and i32 %8, 128, !dbg !708
  %tobool4 = icmp eq i32 %and, 0, !dbg !708
  br i1 %tobool4, label %cont17, label %cont7, !dbg !708

cont7:                                            ; preds = %cont3
  %9 = load i32 (%struct.ngx_connection_s*, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 5), align 4, !dbg !709, !tbaa !510
  %call = tail call i32 %9(%struct.ngx_connection_s* %3, i32 2) nounwind, !dbg !709
  %cmp10 = icmp eq i32 %call, -1, !dbg !709
  br i1 %cmp10, label %return, label %for.inc, !dbg !709

cont17:                                           ; preds = %cont3
  %10 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !711, !tbaa !510
  %call18 = tail call i32 %10(%struct.ngx_event_s* %4, i32 1, i32 2) nounwind, !dbg !711
  %cmp21 = icmp eq i32 %call18, -1, !dbg !711
  br i1 %cmp21, label %return, label %for.inc, !dbg !711

for.inc:                                          ; preds = %for.body, %cont7, %cont17
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.035, i32 1), !dbg !703
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !703
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !703
  br i1 %13, label %ioc_bb27, label %for.cond.backedge, !dbg !703

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb27
  %14 = load i32* %nelts, align 4, !dbg !703, !tbaa !516
  %cmp = icmp ult i32 %12, %14, !dbg !703
  br i1 %cmp, label %for.body, label %return, !dbg !703

ioc_bb27:                                         ; preds = %for.inc
  %15 = zext i32 %i.035 to i64, !dbg !703
  tail call void @__ioc_report_add_overflow(i32 285, i32 46, i8* getelementptr inbounds ([29 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !703
  br label %for.cond.backedge, !dbg !703

return:                                           ; preds = %for.cond.backedge, %cont17, %cont7, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %cont7 ], [ -1, %cont17 ], [ 0, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !713
}

declare void @ngx_shmtx_unlock(%struct.ngx_shmtx_t*)

declare %struct.ngx_connection_s* @ngx_get_connection(i32, %struct.ngx_log_s*)

declare i32 @close(i32)

declare %struct.ngx_pool_s* @ngx_create_pool(i32, %struct.ngx_log_s*)

define internal fastcc void @ngx_close_accepted_connection(%struct.ngx_connection_s* %c) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %c}, i64 0, metadata !468), !dbg !714
  tail call void @ngx_free_connection(%struct.ngx_connection_s* %c) nounwind, !dbg !715
  %fd1 = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 3, !dbg !716
  %0 = load i32* %fd1, align 4, !dbg !716, !tbaa !516
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !469), !dbg !716
  store i32 -1, i32* %fd1, align 4, !dbg !717, !tbaa !516
  %call = tail call i32 @close(i32 %0) nounwind, !dbg !718
  %cmp = icmp eq i32 %call, -1, !dbg !718
  br i1 %cmp, label %if.then, label %if.end13, !dbg !718

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 10, !dbg !719
  %1 = load %struct.ngx_log_s** %log, align 4, !dbg !719, !tbaa !510
  %log_level = getelementptr inbounds %struct.ngx_log_s* %1, i32 0, i32 0, !dbg !719
  %2 = load i32* %log_level, align 4, !dbg !719, !tbaa !516
  %cmp7 = icmp ugt i32 %2, 1, !dbg !719
  br i1 %cmp7, label %cont10, label %if.end13, !dbg !719

cont10:                                           ; preds = %if.then
  %call12 = tail call i32* @__errno_location() nounwind readnone, !dbg !721
  %3 = load i32* %call12, align 4, !dbg !721, !tbaa !516
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %1, i32 %3, i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !721
  br label %if.end13, !dbg !721

if.end13:                                         ; preds = %if.then, %cont10, %entry
  %pool = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 11, !dbg !722
  %4 = load %struct.ngx_pool_s** %pool, align 4, !dbg !722, !tbaa !510
  %tobool = icmp eq %struct.ngx_pool_s* %4, null, !dbg !722
  br i1 %tobool, label %if.end16, label %if.then14, !dbg !722

if.then14:                                        ; preds = %if.end13
  tail call void @ngx_destroy_pool(%struct.ngx_pool_s* %4) nounwind, !dbg !723
  br label %if.end16, !dbg !725

if.end16:                                         ; preds = %if.end13, %if.then14
  ret void, !dbg !726
}

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_blocking(i32)

declare i32 @ngx_nonblocking(i32)

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_sock_ntop(%struct.sockaddr*, i8*, i32, i32)

define i32 @ngx_trylock_accept_mutex(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !458), !dbg !727
  %call = tail call i32 @ngx_shmtx_trylock(%struct.ngx_shmtx_t* @ngx_accept_mutex) nounwind, !dbg !728
  %tobool = icmp eq i32 %call, 0, !dbg !728
  %0 = load i32* @ngx_accept_mutex_held, align 4, !dbg !730, !tbaa !516
  %tobool1 = icmp ne i32 %0, 0, !dbg !730
  br i1 %tobool, label %if.end19, label %if.then, !dbg !728

if.then:                                          ; preds = %entry
  %1 = load i32* @ngx_accept_events, align 4, !dbg !730, !tbaa !516
  %cmp = icmp eq i32 %1, 0, !dbg !730
  %or.cond = and i1 %tobool1, %cmp, !dbg !730
  br i1 %or.cond, label %cont4, label %if.end, !dbg !730

cont4:                                            ; preds = %if.then
  %2 = load i32* @ngx_event_flags, align 4, !dbg !730, !tbaa !516
  %and = and i32 %2, 128, !dbg !730
  %tobool5 = icmp eq i32 %and, 0, !dbg !730
  br i1 %tobool5, label %return, label %if.end, !dbg !730

if.end:                                           ; preds = %cont4, %if.then
  %call7 = tail call fastcc i32 @ngx_enable_accept_events(%struct.ngx_cycle_s* %cycle), !dbg !732
  %cmp10 = icmp eq i32 %call7, -1, !dbg !732
  br i1 %cmp10, label %if.then11, label %cont16, !dbg !732

if.then11:                                        ; preds = %if.end
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* @ngx_accept_mutex) nounwind, !dbg !733
  br label %return, !dbg !735

cont16:                                           ; preds = %if.end
  store i32 0, i32* @ngx_accept_events, align 4, !dbg !736, !tbaa !516
  store i32 1, i32* @ngx_accept_mutex_held, align 4, !dbg !737, !tbaa !516
  br label %return, !dbg !738

if.end19:                                         ; preds = %entry
  br i1 %tobool1, label %if.then21, label %return, !dbg !739

if.then21:                                        ; preds = %if.end19
  %call22 = tail call fastcc i32 @ngx_disable_accept_events(%struct.ngx_cycle_s* %cycle), !dbg !740
  %cmp25 = icmp eq i32 %call22, -1, !dbg !740
  br i1 %cmp25, label %return, label %cont31, !dbg !740

cont31:                                           ; preds = %if.then21
  store i32 0, i32* @ngx_accept_mutex_held, align 4, !dbg !742, !tbaa !516
  br label %return, !dbg !743

return:                                           ; preds = %if.end19, %cont31, %if.then21, %cont4, %cont16, %if.then11
  %retval.0 = phi i32 [ -1, %if.then11 ], [ 0, %cont16 ], [ 0, %cont4 ], [ -1, %if.then21 ], [ 0, %cont31 ], [ 0, %if.end19 ]
  ret i32 %retval.0, !dbg !744
}

declare i32 @ngx_shmtx_trylock(%struct.ngx_shmtx_t*)

define i8* @ngx_accept_log_error(%struct.ngx_log_s* nocapture %log, i8* %buf, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_log_s* %log}, i64 0, metadata !462), !dbg !745
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !463), !dbg !745
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !464), !dbg !745
  %data = getelementptr inbounds %struct.ngx_log_s* %log, i32 0, i32 4, !dbg !746
  %0 = load i8** %data, align 4, !dbg !746, !tbaa !510
  %call = tail call i8* (i8*, i32, i8*, ...)* @ngx_snprintf(i8* %buf, i32 %len, i8* getelementptr inbounds ([38 x i8]* @.str4, i32 0, i32 0), i8* %0) nounwind, !dbg !746
  ret i8* %call, !dbg !746
}

declare i8* @ngx_snprintf(i8*, i32, i8*, ...)

declare void @ngx_free_connection(%struct.ngx_connection_s*)

declare void @ngx_destroy_pool(%struct.ngx_pool_s*)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @ngx_rbtree_insert(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare void @ngx_rbtree_delete(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/event/ngx_event_accept.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !394, metadata !459, metadata !465, metadata !471, metadata !479, metadata !487, metadata !500}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_event_accept", metadata !"ngx_event_accept", metadata !"", metadata !6, i32 12, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_event_s*)* @ngx_event_accept, null, null, metadata !111, i32 13} ; [ DW_TAG_subprogram ] [line 12] [def] [scope 13] [ngx_event_accept]
!6 = metadata !{i32 786473, metadata !"src/event/ngx_event_accept.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!10 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!11 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !12, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!12 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !43, metadata !46, metadata !91, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!14 = metadata !{i32 786445, metadata !11, metadata !"data", metadata !12, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!16 = metadata !{i32 786445, metadata !11, metadata !"write", metadata !12, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!17 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!18 = metadata !{i32 786445, metadata !11, metadata !"accept", metadata !12, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !17} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!19 = metadata !{i32 786445, metadata !11, metadata !"instance", metadata !12, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !17} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!20 = metadata !{i32 786445, metadata !11, metadata !"active", metadata !12, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !17} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!21 = metadata !{i32 786445, metadata !11, metadata !"disabled", metadata !12, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !17} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!22 = metadata !{i32 786445, metadata !11, metadata !"ready", metadata !12, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !17} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!23 = metadata !{i32 786445, metadata !11, metadata !"oneshot", metadata !12, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !17} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!24 = metadata !{i32 786445, metadata !11, metadata !"complete", metadata !12, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !17} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!25 = metadata !{i32 786445, metadata !11, metadata !"eof", metadata !12, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !17} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!26 = metadata !{i32 786445, metadata !11, metadata !"error", metadata !12, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !17} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!27 = metadata !{i32 786445, metadata !11, metadata !"timedout", metadata !12, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !17} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!28 = metadata !{i32 786445, metadata !11, metadata !"timer_set", metadata !12, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !17} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!29 = metadata !{i32 786445, metadata !11, metadata !"delayed", metadata !12, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !17} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!30 = metadata !{i32 786445, metadata !11, metadata !"read_discarded", metadata !12, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !17} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!31 = metadata !{i32 786445, metadata !11, metadata !"unexpected_eof", metadata !12, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !17} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!32 = metadata !{i32 786445, metadata !11, metadata !"deferred_accept", metadata !12, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !17} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!33 = metadata !{i32 786445, metadata !11, metadata !"pending_eof", metadata !12, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !17} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!34 = metadata !{i32 786445, metadata !11, metadata !"posted_ready", metadata !12, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !17} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!35 = metadata !{i32 786445, metadata !11, metadata !"available", metadata !12, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !17} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!36 = metadata !{i32 786445, metadata !11, metadata !"handler", metadata !12, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!37 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !12, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!42 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !12, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!43 = metadata !{i32 786445, metadata !11, metadata !"index", metadata !12, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!44 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !12, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!45 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !12, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!46 = metadata !{i32 786445, metadata !11, metadata !"log", metadata !12, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!48 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !12, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!49 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !50, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!50 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!51 = metadata !{metadata !52, metadata !53, metadata !77, metadata !80, metadata !87, metadata !88}
!52 = metadata !{i32 786445, metadata !49, metadata !"log_level", metadata !50, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!53 = metadata !{i32 786445, metadata !49, metadata !"file", metadata !50, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !54} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!55 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !50, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!56 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !57, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!57 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!58 = metadata !{metadata !59, metadata !62, metadata !74, metadata !75, metadata !76}
!59 = metadata !{i32 786445, metadata !56, metadata !"fd", metadata !57, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!60 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !57, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786445, metadata !56, metadata !"name", metadata !57, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !63} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!63 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !57, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, null, metadata !"", metadata !65, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!65 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!66 = metadata !{metadata !67, metadata !69}
!67 = metadata !{i32 786445, metadata !64, metadata !"len", metadata !65, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!68 = metadata !{i32 786454, null, metadata !"size_t", metadata !65, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!69 = metadata !{i32 786445, metadata !64, metadata !"data", metadata !65, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!70 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!71 = metadata !{i32 786454, null, metadata !"u_char", metadata !65, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!72 = metadata !{i32 786454, null, metadata !"__u_char", metadata !65, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!73 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!74 = metadata !{i32 786445, metadata !56, metadata !"buffer", metadata !57, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!75 = metadata !{i32 786445, metadata !56, metadata !"pos", metadata !57, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!76 = metadata !{i32 786445, metadata !56, metadata !"last", metadata !57, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !70} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!77 = metadata !{i32 786445, metadata !49, metadata !"connection", metadata !50, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!78 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !50, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!79 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!80 = metadata !{i32 786445, metadata !49, metadata !"handler", metadata !50, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !81} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!81 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !50, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !70, metadata !85, metadata !70, metadata !68}
!85 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!86 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !50, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!87 = metadata !{i32 786445, metadata !49, metadata !"data", metadata !50, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!88 = metadata !{i32 786445, metadata !49, metadata !"action", metadata !50, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!89 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!90 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!91 = metadata !{i32 786445, metadata !11, metadata !"timer", metadata !12, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !92} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!92 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !12, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!93 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !94, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!94 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!95 = metadata !{metadata !96, metadata !98, metadata !101, metadata !102, metadata !103, metadata !104}
!96 = metadata !{i32 786445, metadata !93, metadata !"key", metadata !94, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!97 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !94, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!98 = metadata !{i32 786445, metadata !93, metadata !"left", metadata !94, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !99} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!99 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!100 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !94, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!101 = metadata !{i32 786445, metadata !93, metadata !"right", metadata !94, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !99} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!102 = metadata !{i32 786445, metadata !93, metadata !"parent", metadata !94, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !99} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!103 = metadata !{i32 786445, metadata !93, metadata !"color", metadata !94, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !71} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!104 = metadata !{i32 786445, metadata !93, metadata !"data", metadata !94, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !71} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!105 = metadata !{i32 786445, metadata !11, metadata !"closed", metadata !12, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!106 = metadata !{i32 786445, metadata !11, metadata !"channel", metadata !12, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !17} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!107 = metadata !{i32 786445, metadata !11, metadata !"resolver", metadata !12, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !17} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!108 = metadata !{i32 786445, metadata !11, metadata !"next", metadata !12, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !41} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!109 = metadata !{i32 786445, metadata !11, metadata !"prev", metadata !12, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !110} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !113, metadata !114, metadata !118, metadata !120, metadata !121, metadata !122, metadata !124, metadata !125, metadata !126, metadata !374, metadata !375, metadata !376, metadata !390}
!113 = metadata !{i32 786689, metadata !5, metadata !"ev", metadata !6, i32 16777228, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 12]
!114 = metadata !{i32 786688, metadata !115, metadata !"socklen", metadata !6, i32 14, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [socklen] [line 14]
!115 = metadata !{i32 786443, metadata !5, i32 13, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!116 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !6, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!117 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !6, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!118 = metadata !{i32 786688, metadata !115, metadata !"err", metadata !6, i32 15, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 15]
!119 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!120 = metadata !{i32 786688, metadata !115, metadata !"log", metadata !6, i32 16, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 16]
!121 = metadata !{i32 786688, metadata !115, metadata !"level", metadata !6, i32 17, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 17]
!122 = metadata !{i32 786688, metadata !115, metadata !"s", metadata !6, i32 18, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 18]
!123 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!124 = metadata !{i32 786688, metadata !115, metadata !"rev", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rev] [line 19]
!125 = metadata !{i32 786688, metadata !115, metadata !"wev", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wev] [line 20]
!126 = metadata !{i32 786688, metadata !115, metadata !"ls", metadata !6, i32 21, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 21]
!127 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!128 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!129 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !130, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!130 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!131 = metadata !{metadata !132, metadata !133, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373}
!132 = metadata !{i32 786445, metadata !129, metadata !"fd", metadata !130, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!133 = metadata !{i32 786445, metadata !129, metadata !"sockaddr", metadata !130, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !134} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!135 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !136, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!136 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!137 = metadata !{metadata !138, metadata !141}
!138 = metadata !{i32 786445, metadata !135, metadata !"sa_family", metadata !136, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!139 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !136, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!140 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!141 = metadata !{i32 786445, metadata !135, metadata !"sa_data", metadata !136, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !142} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!142 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !90, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!145 = metadata !{i32 786445, metadata !129, metadata !"socklen", metadata !130, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !116} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!146 = metadata !{i32 786445, metadata !129, metadata !"addr_text_max_len", metadata !130, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!147 = metadata !{i32 786445, metadata !129, metadata !"addr_text", metadata !130, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !63} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!148 = metadata !{i32 786445, metadata !129, metadata !"type", metadata !130, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !61} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!149 = metadata !{i32 786445, metadata !129, metadata !"backlog", metadata !130, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !61} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!150 = metadata !{i32 786445, metadata !129, metadata !"rcvbuf", metadata !130, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !61} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!151 = metadata !{i32 786445, metadata !129, metadata !"sndbuf", metadata !130, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !61} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!152 = metadata !{i32 786445, metadata !129, metadata !"keepidle", metadata !130, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !61} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!153 = metadata !{i32 786445, metadata !129, metadata !"keepintvl", metadata !130, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !61} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!154 = metadata !{i32 786445, metadata !129, metadata !"keepcnt", metadata !130, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !61} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!155 = metadata !{i32 786445, metadata !129, metadata !"handler", metadata !130, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !156} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!156 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !130, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!157 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{null, metadata !160}
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!161 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !130, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!162 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !130, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !175, metadata !177, metadata !272, metadata !277, metadata !280, metadata !281, metadata !282, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350}
!164 = metadata !{i32 786445, metadata !162, metadata !"data", metadata !130, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!165 = metadata !{i32 786445, metadata !162, metadata !"read", metadata !130, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!166 = metadata !{i32 786445, metadata !162, metadata !"write", metadata !130, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!167 = metadata !{i32 786445, metadata !162, metadata !"fd", metadata !130, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !123} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!168 = metadata !{i32 786445, metadata !162, metadata !"recv", metadata !130, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !169} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!169 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !130, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !160, metadata !70, metadata !68}
!173 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !130, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!174 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !130, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !162, metadata !"send", metadata !130, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !176} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!176 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !130, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!177 = metadata !{i32 786445, metadata !162, metadata !"recv_chain", metadata !130, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !178} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!178 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !130, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !173, metadata !160, metadata !182}
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!183 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !130, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!184 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !185, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!185 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!186 = metadata !{metadata !187, metadata !269}
!187 = metadata !{i32 786445, metadata !184, metadata !"buf", metadata !185, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!189 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !185, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!190 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !185, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !199, metadata !200, metadata !201, metadata !202, metadata !204, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268}
!192 = metadata !{i32 786445, metadata !190, metadata !"pos", metadata !185, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!193 = metadata !{i32 786445, metadata !190, metadata !"last", metadata !185, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!194 = metadata !{i32 786445, metadata !190, metadata !"file_pos", metadata !185, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !195} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!195 = metadata !{i32 786454, null, metadata !"off_t", metadata !185, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!196 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !185, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!197 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !185, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!198 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!199 = metadata !{i32 786445, metadata !190, metadata !"file_last", metadata !185, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !195} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!200 = metadata !{i32 786445, metadata !190, metadata !"start", metadata !185, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!201 = metadata !{i32 786445, metadata !190, metadata !"end", metadata !185, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!202 = metadata !{i32 786445, metadata !190, metadata !"tag", metadata !185, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !203} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!203 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !185, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!204 = metadata !{i32 786445, metadata !190, metadata !"file", metadata !185, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !205} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!205 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!206 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !185, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!207 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !208, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!208 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255}
!210 = metadata !{i32 786445, metadata !207, metadata !"fd", metadata !208, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!211 = metadata !{i32 786445, metadata !207, metadata !"name", metadata !208, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !63} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!212 = metadata !{i32 786445, metadata !207, metadata !"info", metadata !208, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !213} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!213 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !208, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!214 = metadata !{i32 786451, null, metadata !"stat", metadata !215, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!215 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!216 = metadata !{metadata !217, metadata !221, metadata !222, metadata !224, metadata !226, metadata !228, metadata !230, metadata !232, metadata !233, metadata !234, metadata !235, metadata !238, metadata !240, metadata !247, metadata !248, metadata !249}
!217 = metadata !{i32 786445, metadata !214, metadata !"st_dev", metadata !215, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!218 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !215, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!219 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !215, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!220 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!221 = metadata !{i32 786445, metadata !214, metadata !"__pad1", metadata !215, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!222 = metadata !{i32 786445, metadata !214, metadata !"__st_ino", metadata !215, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !223} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!223 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !215, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!224 = metadata !{i32 786445, metadata !214, metadata !"st_mode", metadata !215, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!225 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !215, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!226 = metadata !{i32 786445, metadata !214, metadata !"st_nlink", metadata !215, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !227} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!227 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !215, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!228 = metadata !{i32 786445, metadata !214, metadata !"st_uid", metadata !215, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !229} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!229 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !215, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!230 = metadata !{i32 786445, metadata !214, metadata !"st_gid", metadata !215, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !231} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!231 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !215, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!232 = metadata !{i32 786445, metadata !214, metadata !"st_rdev", metadata !215, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !218} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!233 = metadata !{i32 786445, metadata !214, metadata !"__pad2", metadata !215, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!234 = metadata !{i32 786445, metadata !214, metadata !"st_size", metadata !215, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !196} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!235 = metadata !{i32 786445, metadata !214, metadata !"st_blksize", metadata !215, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !236} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!236 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !215, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!237 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!238 = metadata !{i32 786445, metadata !214, metadata !"st_blocks", metadata !215, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !239} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!239 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !215, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!240 = metadata !{i32 786445, metadata !214, metadata !"st_atim", metadata !215, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !241} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!241 = metadata !{i32 786451, null, metadata !"timespec", metadata !242, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!242 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!243 = metadata !{metadata !244, metadata !246}
!244 = metadata !{i32 786445, metadata !241, metadata !"tv_sec", metadata !242, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!245 = metadata !{i32 786454, null, metadata !"__time_t", metadata !242, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!246 = metadata !{i32 786445, metadata !241, metadata !"tv_nsec", metadata !242, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !237} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!247 = metadata !{i32 786445, metadata !214, metadata !"st_mtim", metadata !215, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !241} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!248 = metadata !{i32 786445, metadata !214, metadata !"st_ctim", metadata !215, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !241} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!249 = metadata !{i32 786445, metadata !214, metadata !"st_ino", metadata !215, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !250} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!250 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !215, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!251 = metadata !{i32 786445, metadata !207, metadata !"offset", metadata !208, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !195} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!252 = metadata !{i32 786445, metadata !207, metadata !"sys_offset", metadata !208, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !195} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!253 = metadata !{i32 786445, metadata !207, metadata !"log", metadata !208, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !47} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!254 = metadata !{i32 786445, metadata !207, metadata !"valid_info", metadata !208, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !17} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!255 = metadata !{i32 786445, metadata !207, metadata !"directio", metadata !208, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !17} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!256 = metadata !{i32 786445, metadata !190, metadata !"shadow", metadata !185, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !188} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!257 = metadata !{i32 786445, metadata !190, metadata !"temporary", metadata !185, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !17} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!258 = metadata !{i32 786445, metadata !190, metadata !"memory", metadata !185, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !17} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!259 = metadata !{i32 786445, metadata !190, metadata !"mmap", metadata !185, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !17} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!260 = metadata !{i32 786445, metadata !190, metadata !"recycled", metadata !185, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !17} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!261 = metadata !{i32 786445, metadata !190, metadata !"in_file", metadata !185, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !17} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!262 = metadata !{i32 786445, metadata !190, metadata !"flush", metadata !185, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !17} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!263 = metadata !{i32 786445, metadata !190, metadata !"sync", metadata !185, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !17} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!264 = metadata !{i32 786445, metadata !190, metadata !"last_buf", metadata !185, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !17} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!265 = metadata !{i32 786445, metadata !190, metadata !"last_in_chain", metadata !185, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !17} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!266 = metadata !{i32 786445, metadata !190, metadata !"last_shadow", metadata !185, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !17} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!267 = metadata !{i32 786445, metadata !190, metadata !"temp_file", metadata !185, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !17} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!268 = metadata !{i32 786445, metadata !190, metadata !"num", metadata !185, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !61} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!269 = metadata !{i32 786445, metadata !184, metadata !"next", metadata !185, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !270} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!271 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !185, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!272 = metadata !{i32 786445, metadata !162, metadata !"send_chain", metadata !130, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !273} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!273 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !130, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{metadata !182, metadata !160, metadata !182, metadata !195}
!277 = metadata !{i32 786445, metadata !162, metadata !"listening", metadata !130, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !278} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!278 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!279 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !130, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!280 = metadata !{i32 786445, metadata !162, metadata !"sent", metadata !130, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !195} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!281 = metadata !{i32 786445, metadata !162, metadata !"log", metadata !130, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !47} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!282 = metadata !{i32 786445, metadata !162, metadata !"pool", metadata !130, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !283} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!283 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!284 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !130, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!285 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !286, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!286 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!287 = metadata !{metadata !288, metadata !298, metadata !299, metadata !300, metadata !301, metadata !308, metadata !320}
!288 = metadata !{i32 786445, metadata !285, metadata !"d", metadata !286, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!289 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !286, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !290} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!290 = metadata !{i32 786451, null, metadata !"", metadata !286, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!291 = metadata !{metadata !292, metadata !293, metadata !294, metadata !297}
!292 = metadata !{i32 786445, metadata !290, metadata !"last", metadata !286, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!293 = metadata !{i32 786445, metadata !290, metadata !"end", metadata !286, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!294 = metadata !{i32 786445, metadata !290, metadata !"next", metadata !286, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !295} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!295 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!296 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !286, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !285} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!297 = metadata !{i32 786445, metadata !290, metadata !"failed", metadata !286, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!298 = metadata !{i32 786445, metadata !285, metadata !"max", metadata !286, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!299 = metadata !{i32 786445, metadata !285, metadata !"current", metadata !286, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !295} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!300 = metadata !{i32 786445, metadata !285, metadata !"chain", metadata !286, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !182} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!301 = metadata !{i32 786445, metadata !285, metadata !"large", metadata !286, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !302} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!302 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!303 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !286, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!304 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !286, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!305 = metadata !{metadata !306, metadata !307}
!306 = metadata !{i32 786445, metadata !304, metadata !"next", metadata !286, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !302} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!307 = metadata !{i32 786445, metadata !304, metadata !"alloc", metadata !286, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!308 = metadata !{i32 786445, metadata !285, metadata !"cleanup", metadata !286, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !309} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!309 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!310 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !286, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !311} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!311 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !286, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!312 = metadata !{metadata !313, metadata !318, metadata !319}
!313 = metadata !{i32 786445, metadata !311, metadata !"handler", metadata !286, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!314 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !286, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{null, metadata !15}
!318 = metadata !{i32 786445, metadata !311, metadata !"data", metadata !286, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!319 = metadata !{i32 786445, metadata !311, metadata !"next", metadata !286, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !309} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!320 = metadata !{i32 786445, metadata !285, metadata !"log", metadata !286, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !47} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!321 = metadata !{i32 786445, metadata !162, metadata !"sockaddr", metadata !130, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !134} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!322 = metadata !{i32 786445, metadata !162, metadata !"socklen", metadata !130, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !116} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!323 = metadata !{i32 786445, metadata !162, metadata !"addr_text", metadata !130, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !63} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!324 = metadata !{i32 786445, metadata !162, metadata !"local_sockaddr", metadata !130, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !134} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!325 = metadata !{i32 786445, metadata !162, metadata !"buffer", metadata !130, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !188} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!326 = metadata !{i32 786445, metadata !162, metadata !"queue", metadata !130, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !327} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!327 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !130, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!328 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !329, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!329 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!330 = metadata !{metadata !331, metadata !334}
!331 = metadata !{i32 786445, metadata !328, metadata !"prev", metadata !329, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !332} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!332 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !333} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!333 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !329, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!334 = metadata !{i32 786445, metadata !328, metadata !"next", metadata !329, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !332} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!335 = metadata !{i32 786445, metadata !162, metadata !"number", metadata !130, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !78} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!336 = metadata !{i32 786445, metadata !162, metadata !"requests", metadata !130, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!337 = metadata !{i32 786445, metadata !162, metadata !"buffered", metadata !130, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !17} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!338 = metadata !{i32 786445, metadata !162, metadata !"log_error", metadata !130, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !17} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!339 = metadata !{i32 786445, metadata !162, metadata !"single_connection", metadata !130, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !17} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!340 = metadata !{i32 786445, metadata !162, metadata !"unexpected_eof", metadata !130, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !17} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!341 = metadata !{i32 786445, metadata !162, metadata !"timedout", metadata !130, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !17} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!342 = metadata !{i32 786445, metadata !162, metadata !"error", metadata !130, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !17} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!343 = metadata !{i32 786445, metadata !162, metadata !"destroyed", metadata !130, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !17} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!344 = metadata !{i32 786445, metadata !162, metadata !"idle", metadata !130, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !17} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!345 = metadata !{i32 786445, metadata !162, metadata !"reusable", metadata !130, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !17} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!346 = metadata !{i32 786445, metadata !162, metadata !"close", metadata !130, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !17} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!347 = metadata !{i32 786445, metadata !162, metadata !"sendfile", metadata !130, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !17} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!348 = metadata !{i32 786445, metadata !162, metadata !"sndlowat", metadata !130, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !17} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!349 = metadata !{i32 786445, metadata !162, metadata !"tcp_nodelay", metadata !130, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !17} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!350 = metadata !{i32 786445, metadata !162, metadata !"tcp_nopush", metadata !130, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !17} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!351 = metadata !{i32 786445, metadata !129, metadata !"servers", metadata !130, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!352 = metadata !{i32 786445, metadata !129, metadata !"log", metadata !130, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !48} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!353 = metadata !{i32 786445, metadata !129, metadata !"logp", metadata !130, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !47} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!354 = metadata !{i32 786445, metadata !129, metadata !"pool_size", metadata !130, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !68} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!355 = metadata !{i32 786445, metadata !129, metadata !"post_accept_buffer_size", metadata !130, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !68} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!356 = metadata !{i32 786445, metadata !129, metadata !"post_accept_timeout", metadata !130, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !357} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!357 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !130, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!358 = metadata !{i32 786445, metadata !129, metadata !"previous", metadata !130, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !278} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!359 = metadata !{i32 786445, metadata !129, metadata !"connection", metadata !130, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !160} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!360 = metadata !{i32 786445, metadata !129, metadata !"open", metadata !130, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !17} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!361 = metadata !{i32 786445, metadata !129, metadata !"remain", metadata !130, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !17} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!362 = metadata !{i32 786445, metadata !129, metadata !"ignore", metadata !130, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !17} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!363 = metadata !{i32 786445, metadata !129, metadata !"bound", metadata !130, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !17} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!364 = metadata !{i32 786445, metadata !129, metadata !"inherited", metadata !130, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !17} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!365 = metadata !{i32 786445, metadata !129, metadata !"nonblocking_accept", metadata !130, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !17} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!366 = metadata !{i32 786445, metadata !129, metadata !"listen", metadata !130, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !17} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!367 = metadata !{i32 786445, metadata !129, metadata !"nonblocking", metadata !130, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !17} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!368 = metadata !{i32 786445, metadata !129, metadata !"shared", metadata !130, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !17} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!369 = metadata !{i32 786445, metadata !129, metadata !"addr_ntop", metadata !130, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !17} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!370 = metadata !{i32 786445, metadata !129, metadata !"keepalive", metadata !130, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !17} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!371 = metadata !{i32 786445, metadata !129, metadata !"deferred_accept", metadata !130, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !17} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!372 = metadata !{i32 786445, metadata !129, metadata !"delete_deferred", metadata !130, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !17} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!373 = metadata !{i32 786445, metadata !129, metadata !"add_deferred", metadata !130, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !17} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!374 = metadata !{i32 786688, metadata !115, metadata !"c", metadata !6, i32 22, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 22]
!375 = metadata !{i32 786688, metadata !115, metadata !"lc", metadata !6, i32 23, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 23]
!376 = metadata !{i32 786688, metadata !115, metadata !"ecf", metadata !6, i32 24, metadata !377, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 24]
!377 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_conf_t]
!378 = metadata !{i32 786454, null, metadata !"ngx_event_conf_t", metadata !6, i32 482, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_typedef ] [ngx_event_conf_t] [line 482, size 0, align 0, offset 0] [from ]
!379 = metadata !{i32 786451, null, metadata !"", metadata !12, i32 468, i64 192, i64 32, i32 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 468, size 192, align 32, offset 0] [from ]
!380 = metadata !{metadata !381, metadata !382, metadata !383, metadata !387, metadata !388, metadata !389}
!381 = metadata !{i32 786445, metadata !379, metadata !"connections", metadata !12, i32 469, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [connections] [line 469, size 32, align 32, offset 0] [from ngx_uint_t]
!382 = metadata !{i32 786445, metadata !379, metadata !"use", metadata !12, i32 470, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [use] [line 470, size 32, align 32, offset 32] [from ngx_uint_t]
!383 = metadata !{i32 786445, metadata !379, metadata !"multi_accept", metadata !12, i32 472, i64 32, i64 32, i64 64, i32 0, metadata !384} ; [ DW_TAG_member ] [multi_accept] [line 472, size 32, align 32, offset 64] [from ngx_flag_t]
!384 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !12, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!385 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !12, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!386 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !12, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!387 = metadata !{i32 786445, metadata !379, metadata !"accept_mutex", metadata !12, i32 473, i64 32, i64 32, i64 96, i32 0, metadata !384} ; [ DW_TAG_member ] [accept_mutex] [line 473, size 32, align 32, offset 96] [from ngx_flag_t]
!388 = metadata !{i32 786445, metadata !379, metadata !"accept_mutex_delay", metadata !12, i32 475, i64 32, i64 32, i64 128, i32 0, metadata !357} ; [ DW_TAG_member ] [accept_mutex_delay] [line 475, size 32, align 32, offset 128] [from ngx_msec_t]
!389 = metadata !{i32 786445, metadata !379, metadata !"name", metadata !12, i32 477, i64 32, i64 32, i64 160, i32 0, metadata !70} ; [ DW_TAG_member ] [name] [line 477, size 32, align 32, offset 160] [from ]
!390 = metadata !{i32 786688, metadata !115, metadata !"sa", metadata !6, i32 25, metadata !391, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 25]
!391 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 880, i64 8, i32 0, i32 0, metadata !71, metadata !392, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 880, align 8, offset 0] [from u_char]
!392 = metadata !{metadata !393}
!393 = metadata !{i32 786465, i64 0, i64 109}     ; [ DW_TAG_subrange_type ] [0, 109]
!394 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_trylock_accept_mutex", metadata !"ngx_trylock_accept_mutex", metadata !"", metadata !6, i32 229, metadata !395, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_trylock_accept_mutex, null, null, metadata !456, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [ngx_trylock_accept_mutex]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{metadata !397, metadata !398}
!397 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!398 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !399} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!399 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !400, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !401} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!400 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!401 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !400, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!402 = metadata !{metadata !403, metadata !407, metadata !408, metadata !409, metadata !410, metadata !412, metadata !413, metadata !414, metadata !415, metadata !425, metadata !426, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455}
!403 = metadata !{i32 786445, metadata !401, metadata !"conf_ctx", metadata !400, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !404} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!404 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!405 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !406} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!406 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!407 = metadata !{i32 786445, metadata !401, metadata !"pool", metadata !400, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !283} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!408 = metadata !{i32 786445, metadata !401, metadata !"log", metadata !400, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!409 = metadata !{i32 786445, metadata !401, metadata !"new_log", metadata !400, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!410 = metadata !{i32 786445, metadata !401, metadata !"files", metadata !400, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !411} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!411 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!412 = metadata !{i32 786445, metadata !401, metadata !"free_connections", metadata !400, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !160} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!413 = metadata !{i32 786445, metadata !401, metadata !"free_connection_n", metadata !400, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !44} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!414 = metadata !{i32 786445, metadata !401, metadata !"reusable_connections_queue", metadata !400, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !327} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!415 = metadata !{i32 786445, metadata !401, metadata !"listening", metadata !400, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !416} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!416 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !400, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!417 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !418, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!418 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!419 = metadata !{metadata !420, metadata !421, metadata !422, metadata !423, metadata !424}
!420 = metadata !{i32 786445, metadata !417, metadata !"elts", metadata !418, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!421 = metadata !{i32 786445, metadata !417, metadata !"nelts", metadata !418, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!422 = metadata !{i32 786445, metadata !417, metadata !"size", metadata !418, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!423 = metadata !{i32 786445, metadata !417, metadata !"nalloc", metadata !418, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!424 = metadata !{i32 786445, metadata !417, metadata !"pool", metadata !418, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !283} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!425 = metadata !{i32 786445, metadata !401, metadata !"pathes", metadata !400, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !416} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!426 = metadata !{i32 786445, metadata !401, metadata !"open_files", metadata !400, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !427} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!427 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !400, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!428 = metadata !{i32 786451, null, metadata !"", metadata !429, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!429 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!430 = metadata !{metadata !431, metadata !439, metadata !440, metadata !441, metadata !442}
!431 = metadata !{i32 786445, metadata !428, metadata !"last", metadata !429, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !432} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!432 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !433} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!433 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !429, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!434 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !429, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!435 = metadata !{metadata !436, metadata !437, metadata !438}
!436 = metadata !{i32 786445, metadata !434, metadata !"elts", metadata !429, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!437 = metadata !{i32 786445, metadata !434, metadata !"nelts", metadata !429, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!438 = metadata !{i32 786445, metadata !434, metadata !"next", metadata !429, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !432} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!439 = metadata !{i32 786445, metadata !428, metadata !"part", metadata !429, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !433} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!440 = metadata !{i32 786445, metadata !428, metadata !"size", metadata !429, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!441 = metadata !{i32 786445, metadata !428, metadata !"nalloc", metadata !429, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!442 = metadata !{i32 786445, metadata !428, metadata !"pool", metadata !429, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !283} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!443 = metadata !{i32 786445, metadata !401, metadata !"shared_memory", metadata !400, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !427} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!444 = metadata !{i32 786445, metadata !401, metadata !"connection_n", metadata !400, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !44} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!445 = metadata !{i32 786445, metadata !401, metadata !"files_n", metadata !400, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !44} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!446 = metadata !{i32 786445, metadata !401, metadata !"connections", metadata !400, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !160} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!447 = metadata !{i32 786445, metadata !401, metadata !"read_events", metadata !400, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !9} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!448 = metadata !{i32 786445, metadata !401, metadata !"write_events", metadata !400, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !9} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!449 = metadata !{i32 786445, metadata !401, metadata !"old_cycle", metadata !400, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !398} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!450 = metadata !{i32 786445, metadata !401, metadata !"conf_file", metadata !400, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!451 = metadata !{i32 786445, metadata !401, metadata !"conf_param", metadata !400, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !63} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!452 = metadata !{i32 786445, metadata !401, metadata !"conf_prefix", metadata !400, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !63} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!453 = metadata !{i32 786445, metadata !401, metadata !"prefix", metadata !400, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !63} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!454 = metadata !{i32 786445, metadata !401, metadata !"lock_file", metadata !400, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !63} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!455 = metadata !{i32 786445, metadata !401, metadata !"hostname", metadata !400, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !63} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!456 = metadata !{metadata !457}
!457 = metadata !{metadata !458}
!458 = metadata !{i32 786689, metadata !394, metadata !"cycle", metadata !6, i32 16777445, metadata !398, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 229]
!459 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_accept_log_error", metadata !"ngx_accept_log_error", metadata !"", metadata !6, i32 321, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_log_s*, i8*, i32)* @ngx_accept_log_error, null, null, metadata !460, i32 322} ; [ DW_TAG_subprogram ] [line 321] [def] [scope 322] [ngx_accept_log_error]
!460 = metadata !{metadata !461}
!461 = metadata !{metadata !462, metadata !463, metadata !464}
!462 = metadata !{i32 786689, metadata !459, metadata !"log", metadata !6, i32 16777537, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 321]
!463 = metadata !{i32 786689, metadata !459, metadata !"buf", metadata !6, i32 33554753, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 321]
!464 = metadata !{i32 786689, metadata !459, metadata !"len", metadata !6, i32 50331969, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 321]
!465 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_close_accepted_connection", metadata !"ngx_close_accepted_connection", metadata !"", metadata !6, i32 304, metadata !158, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_connection_s*)* @ngx_close_accepted_connection, null, null, metadata !466, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [ngx_close_accepted_connection]
!466 = metadata !{metadata !467}
!467 = metadata !{metadata !468, metadata !469}
!468 = metadata !{i32 786689, metadata !465, metadata !"c", metadata !6, i32 16777520, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 304]
!469 = metadata !{i32 786688, metadata !470, metadata !"fd", metadata !6, i32 306, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 306]
!470 = metadata !{i32 786443, metadata !465, i32 305, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!471 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_disable_accept_events", metadata !"ngx_disable_accept_events", metadata !"", metadata !6, i32 279, metadata !395, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_disable_accept_events, null, null, metadata !472, i32 280} ; [ DW_TAG_subprogram ] [line 279] [local] [def] [scope 280] [ngx_disable_accept_events]
!472 = metadata !{metadata !473}
!473 = metadata !{metadata !474, metadata !475, metadata !477, metadata !478}
!474 = metadata !{i32 786689, metadata !471, metadata !"cycle", metadata !6, i32 16777495, metadata !398, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 279]
!475 = metadata !{i32 786688, metadata !476, metadata !"i", metadata !6, i32 281, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 281]
!476 = metadata !{i32 786443, metadata !471, i32 280, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!477 = metadata !{i32 786688, metadata !476, metadata !"ls", metadata !6, i32 282, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 282]
!478 = metadata !{i32 786688, metadata !476, metadata !"c", metadata !6, i32 283, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 283]
!479 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_enable_accept_events", metadata !"ngx_enable_accept_events", metadata !"", metadata !6, i32 254, metadata !395, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_enable_accept_events, null, null, metadata !480, i32 255} ; [ DW_TAG_subprogram ] [line 254] [local] [def] [scope 255] [ngx_enable_accept_events]
!480 = metadata !{metadata !481}
!481 = metadata !{metadata !482, metadata !483, metadata !485, metadata !486}
!482 = metadata !{i32 786689, metadata !479, metadata !"cycle", metadata !6, i32 16777470, metadata !398, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 254]
!483 = metadata !{i32 786688, metadata !484, metadata !"i", metadata !6, i32 256, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 256]
!484 = metadata !{i32 786443, metadata !479, i32 255, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!485 = metadata !{i32 786688, metadata !484, metadata !"ls", metadata !6, i32 257, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 257]
!486 = metadata !{i32 786688, metadata !484, metadata !"c", metadata !6, i32 258, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 258]
!487 = metadata !{i32 786478, i32 0, metadata !488, metadata !"ngx_event_add_timer", metadata !"ngx_event_add_timer", metadata !"", metadata !488, i32 59, metadata !489, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !491, i32 60} ; [ DW_TAG_subprogram ] [line 59] [local] [def] [scope 60] [ngx_event_add_timer]
!488 = metadata !{i32 786473, metadata !"src/event/ngx_event_timer.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{null, metadata !9, metadata !357}
!491 = metadata !{metadata !492}
!492 = metadata !{metadata !493, metadata !494, metadata !495, metadata !497}
!493 = metadata !{i32 786689, metadata !487, metadata !"ev", metadata !488, i32 16777275, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 59]
!494 = metadata !{i32 786689, metadata !487, metadata !"timer", metadata !488, i32 33554491, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 59]
!495 = metadata !{i32 786688, metadata !496, metadata !"key", metadata !488, i32 61, metadata !357, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 61]
!496 = metadata !{i32 786443, metadata !487, i32 60, i32 0, metadata !488, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!497 = metadata !{i32 786688, metadata !496, metadata !"diff", metadata !488, i32 62, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 62]
!498 = metadata !{i32 786454, null, metadata !"ngx_msec_int_t", metadata !488, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !499} ; [ DW_TAG_typedef ] [ngx_msec_int_t] [line 17, size 0, align 0, offset 0] [from ngx_rbtree_key_int_t]
!499 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_int_t", metadata !488, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_typedef ] [ngx_rbtree_key_int_t] [line 17, size 0, align 0, offset 0] [from ngx_int_t]
!500 = metadata !{i32 786478, i32 0, metadata !488, metadata !"ngx_event_del_timer", metadata !"ngx_event_del_timer", metadata !"", metadata !488, i32 36, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !501, i32 37} ; [ DW_TAG_subprogram ] [line 36] [local] [def] [scope 37] [ngx_event_del_timer]
!501 = metadata !{metadata !502}
!502 = metadata !{metadata !503}
!503 = metadata !{i32 786689, metadata !500, metadata !"ev", metadata !488, i32 16777252, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 36]
!504 = metadata !{i32 12, i32 0, metadata !5, null}
!505 = metadata !{i32 14, i32 0, metadata !115, null}
!506 = metadata !{i32 25, i32 0, metadata !115, null}
!507 = metadata !{i32 28, i32 0, metadata !115, null}
!508 = metadata !{i32 29, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !115, i32 28, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!510 = metadata !{metadata !"any pointer", metadata !511}
!511 = metadata !{metadata !"omnipotent char", metadata !512}
!512 = metadata !{metadata !"Simple C/C++ TBAA"}
!513 = metadata !{i32 32, i32 0, metadata !509, null}
!514 = metadata !{i32 33, i32 0, metadata !509, null}
!515 = metadata !{i32 34, i32 0, metadata !115, null}
!516 = metadata !{metadata !"int", metadata !511}
!517 = metadata !{i32 36, i32 0, metadata !115, null}
!518 = metadata !{i32 37, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !115, i32 36, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!520 = metadata !{i32 38, i32 0, metadata !519, null}
!521 = metadata !{i32 39, i32 0, metadata !115, null}
!522 = metadata !{i32 44, i32 0, metadata !115, null}
!523 = metadata !{i32 40, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !115, i32 39, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!525 = metadata !{i32 41, i32 0, metadata !524, null}
!526 = metadata !{i32 42, i32 0, metadata !115, null}
!527 = metadata !{i32 43, i32 0, metadata !115, null}
!528 = metadata !{i32 50, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !115, i32 46, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!530 = metadata !{i32 67, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !529, i32 52, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!532 = metadata !{i32 108, i32 0, metadata !529, null}
!533 = metadata !{i32 118, i32 0, metadata !529, null}
!534 = metadata !{i32 145, i32 0, metadata !529, null}
!535 = metadata !{i32 154, i32 0, metadata !529, null}
!536 = metadata !{i32 192, i32 0, metadata !529, null}
!537 = metadata !{i32 222, i32 0, metadata !529, null}
!538 = metadata !{i32 193, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !529, i32 192, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!540 = metadata !{i32 46, i32 0, metadata !115, null}
!541 = metadata !{i32 110}
!542 = metadata !{i32 47, i32 0, metadata !529, null}
!543 = metadata !{i32 52, i32 0, metadata !529, null}
!544 = metadata !{i32 53, i32 0, metadata !531, null}
!545 = metadata !{i32 54, i32 0, metadata !531, null}
!546 = metadata !{i32 2}
!547 = metadata !{i32 58, i32 0, metadata !531, null}
!548 = metadata !{i32 59, i32 0, metadata !531, null}
!549 = metadata !{i32 62, i32 0, metadata !531, null}
!550 = metadata !{i32 68, i32 0, metadata !531, null}
!551 = metadata !{i32 70, i32 0, metadata !531, null}
!552 = metadata !{i32 71, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !531, i32 70, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!554 = metadata !{i32 74, i32 0, metadata !553, null}
!555 = metadata !{i32 72, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !553, i32 71, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!557 = metadata !{i32 73, i32 0, metadata !556, null}
!558 = metadata !{i32 78, i32 0, metadata !531, null}
!559 = metadata !{i32 79, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !531, i32 78, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!561 = metadata !{i32 82, i32 0, metadata !560, null}
!562 = metadata !{i32 83, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !560, i32 82, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!564 = metadata !{i32 84, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !563, i32 83, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!566 = metadata !{i32 85, i32 0, metadata !565, null}
!567 = metadata !{i32 86, i32 0, metadata !565, null}
!568 = metadata !{i32 87, i32 0, metadata !563, null}
!569 = metadata !{i32 88, i32 0, metadata !563, null}
!570 = metadata !{i32 90, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !560, i32 89, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!572 = metadata !{i32 786689, metadata !487, metadata !"ev", metadata !488, i32 16777275, metadata !9, i32 0, metadata !570} ; [ DW_TAG_arg_variable ] [ev] [line 59]
!573 = metadata !{i32 59, i32 0, metadata !487, metadata !570}
!574 = metadata !{i32 786689, metadata !487, metadata !"timer", metadata !488, i32 33554491, metadata !357, i32 0, metadata !570} ; [ DW_TAG_arg_variable ] [timer] [line 59]
!575 = metadata !{i32 64, i32 0, metadata !496, metadata !570}
!576 = metadata !{i32 786688, metadata !496, metadata !"key", metadata !488, i32 61, metadata !357, i32 0, metadata !570} ; [ DW_TAG_auto_variable ] [key] [line 61]
!577 = metadata !{i32 66, i32 0, metadata !496, metadata !570}
!578 = metadata !{i32 86, i32 0, metadata !496, metadata !570}
!579 = metadata !{i32 74, i32 0, metadata !580, metadata !570}
!580 = metadata !{i32 786443, metadata !496, i32 66, i32 0, metadata !488, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!581 = metadata !{i32 786688, metadata !496, metadata !"diff", metadata !488, i32 62, metadata !498, i32 0, metadata !570} ; [ DW_TAG_auto_variable ] [diff] [line 62]
!582 = metadata !{i32 76, i32 0, metadata !580, metadata !570}
!583 = metadata !{i32 786689, metadata !500, metadata !"ev", metadata !488, i32 16777252, metadata !9, i32 0, metadata !584} ; [ DW_TAG_arg_variable ] [ev] [line 36]
!584 = metadata !{i32 83, i32 0, metadata !580, metadata !570}
!585 = metadata !{i32 36, i32 0, metadata !500, metadata !584}
!586 = metadata !{i32 44, i32 0, metadata !587, metadata !584}
!587 = metadata !{i32 786443, metadata !500, i32 37, i32 0, metadata !488, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!588 = metadata !{i32 54, i32 0, metadata !587, metadata !584}
!589 = metadata !{i32 84, i32 0, metadata !580, metadata !570}
!590 = metadata !{i32 94, i32 0, metadata !496, metadata !570}
!591 = metadata !{i32 98, i32 0, metadata !496, metadata !570}
!592 = metadata !{i32 99, i32 0, metadata !496, metadata !570}
!593 = metadata !{i32 97, i32 0, metadata !529, null}
!594 = metadata !{i32 98, i32 0, metadata !529, null}
!595 = metadata !{i32 99, i32 0, metadata !529, null}
!596 = metadata !{i32 100, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !529, i32 99, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!598 = metadata !{i32 101, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !597, i32 100, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!600 = metadata !{i32 102, i32 0, metadata !599, null}
!601 = metadata !{i32 109, i32 0, metadata !529, null}
!602 = metadata !{i32 110, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !529, i32 109, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!604 = metadata !{i32 111, i32 0, metadata !603, null}
!605 = metadata !{i32 113, i32 0, metadata !529, null}
!606 = metadata !{i32 114, i32 0, metadata !529, null}
!607 = metadata !{i32 115, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !529, i32 114, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!609 = metadata !{i32 116, i32 0, metadata !608, null}
!610 = metadata !{i32 119, i32 0, metadata !529, null}
!611 = metadata !{i32 120, i32 0, metadata !529, null}
!612 = metadata !{i32 121, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !529, i32 120, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!614 = metadata !{i32 122, i32 0, metadata !613, null}
!615 = metadata !{i32 125, i32 0, metadata !529, null}
!616 = metadata !{i32 126, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !529, i32 125, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!618 = metadata !{i32 127, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !617, i32 126, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!620 = metadata !{i32 128, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !619, i32 127, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!622 = metadata !{i32 129, i32 0, metadata !621, null}
!623 = metadata !{i32 130, i32 0, metadata !621, null}
!624 = metadata !{i32 131, i32 0, metadata !621, null}
!625 = metadata !{i32 136, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !529, i32 135, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!627 = metadata !{i32 137, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !626, i32 136, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!629 = metadata !{i32 138, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !628, i32 137, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!631 = metadata !{i32 139, i32 0, metadata !630, null}
!632 = metadata !{i32 140, i32 0, metadata !630, null}
!633 = metadata !{i32 141, i32 0, metadata !630, null}
!634 = metadata !{i64 0, i64 4, metadata !516, i64 4, i64 4, metadata !510, i64 8, i64 4, metadata !635, i64 12, i64 4, metadata !510, i64 16, i64 4, metadata !510, i64 20, i64 4, metadata !510}
!635 = metadata !{metadata !"long", metadata !511}
!636 = metadata !{i32 146, i32 0, metadata !529, null}
!637 = metadata !{i32 147, i32 0, metadata !529, null}
!638 = metadata !{i32 148, i32 0, metadata !529, null}
!639 = metadata !{i32 149, i32 0, metadata !529, null}
!640 = metadata !{i32 150, i32 0, metadata !529, null}
!641 = metadata !{i32 151, i32 0, metadata !529, null}
!642 = metadata !{i32 152, i32 0, metadata !529, null}
!643 = metadata !{i32 153, i32 0, metadata !529, null}
!644 = metadata !{i32 155, i32 0, metadata !529, null}
!645 = metadata !{i32 157, i32 0, metadata !529, null}
!646 = metadata !{metadata !"short", metadata !511}
!647 = metadata !{i32 158, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !529, i32 157, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!649 = metadata !{i32 159, i32 0, metadata !648, null}
!650 = metadata !{i32 163, i32 0, metadata !648, null}
!651 = metadata !{i32 165, i32 0, metadata !529, null}
!652 = metadata !{i32 166, i32 0, metadata !529, null}
!653 = metadata !{i32 167, i32 0, metadata !529, null}
!654 = metadata !{i32 168, i32 0, metadata !529, null}
!655 = metadata !{i32 170, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !529, i32 168, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!657 = metadata !{i32 171, i32 0, metadata !656, null}
!658 = metadata !{i32 172, i32 0, metadata !529, null}
!659 = metadata !{i32 173, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !529, i32 172, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!661 = metadata !{i32 176, i32 0, metadata !660, null}
!662 = metadata !{i32 177, i32 0, metadata !529, null}
!663 = metadata !{i32 178, i32 0, metadata !529, null}
!664 = metadata !{i32 187, i32 0, metadata !529, null}
!665 = metadata !{i32 194, i32 0, metadata !539, null}
!666 = metadata !{i32 195, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !539, i32 194, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!668 = metadata !{i32 196, i32 0, metadata !667, null}
!669 = metadata !{i32 198, i32 0, metadata !539, null}
!670 = metadata !{i32 199, i32 0, metadata !539, null}
!671 = metadata !{i32 200, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !539, i32 199, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!673 = metadata !{i32 201, i32 0, metadata !672, null}
!674 = metadata !{i32 214, i32 0, metadata !529, null}
!675 = metadata !{i32 215, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !529, i32 214, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!677 = metadata !{i32 216, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !676, i32 215, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!679 = metadata !{i32 217, i32 0, metadata !678, null}
!680 = metadata !{i32 220, i32 0, metadata !529, null}
!681 = metadata !{i32 221, i32 0, metadata !529, null}
!682 = metadata !{i32 223, i32 0, metadata !529, null}
!683 = metadata !{i32 226, i32 0, metadata !529, null}
!684 = metadata !{i32 224, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !529, i32 223, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!686 = metadata !{i32 225, i32 0, metadata !685, null}
!687 = metadata !{i32 227, i32 0, metadata !115, null}
!688 = metadata !{i32 254, i32 0, metadata !479, null}
!689 = metadata !{i32 259, i32 0, metadata !484, null}
!690 = metadata !{i32 260, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !484, i32 260, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!692 = metadata !{i32 261, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !691, i32 260, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!694 = metadata !{i32 262, i32 0, metadata !693, null}
!695 = metadata !{i32 265, i32 0, metadata !693, null}
!696 = metadata !{i32 266, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !693, i32 265, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!698 = metadata !{i32 271, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !693, i32 270, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!700 = metadata !{i32 277, i32 0, metadata !484, null}
!701 = metadata !{i32 279, i32 0, metadata !471, null}
!702 = metadata !{i32 284, i32 0, metadata !476, null}
!703 = metadata !{i32 285, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !476, i32 285, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!705 = metadata !{i32 286, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !704, i32 285, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!707 = metadata !{i32 287, i32 0, metadata !706, null}
!708 = metadata !{i32 290, i32 0, metadata !706, null}
!709 = metadata !{i32 291, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !706, i32 290, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!711 = metadata !{i32 296, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !706, i32 295, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!713 = metadata !{i32 302, i32 0, metadata !476, null}
!714 = metadata !{i32 304, i32 0, metadata !465, null}
!715 = metadata !{i32 307, i32 0, metadata !470, null}
!716 = metadata !{i32 308, i32 0, metadata !470, null}
!717 = metadata !{i32 309, i32 0, metadata !470, null}
!718 = metadata !{i32 310, i32 0, metadata !470, null}
!719 = metadata !{i32 311, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !470, i32 310, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!721 = metadata !{i32 312, i32 0, metadata !720, null}
!722 = metadata !{i32 314, i32 0, metadata !470, null}
!723 = metadata !{i32 315, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !470, i32 314, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!725 = metadata !{i32 316, i32 0, metadata !724, null}
!726 = metadata !{i32 319, i32 0, metadata !470, null}
!727 = metadata !{i32 229, i32 0, metadata !394, null}
!728 = metadata !{i32 231, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !394, i32 230, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!730 = metadata !{i32 233, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !729, i32 231, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!732 = metadata !{i32 236, i32 0, metadata !731, null}
!733 = metadata !{i32 237, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !731, i32 236, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!735 = metadata !{i32 238, i32 0, metadata !734, null}
!736 = metadata !{i32 240, i32 0, metadata !731, null}
!737 = metadata !{i32 241, i32 0, metadata !731, null}
!738 = metadata !{i32 242, i32 0, metadata !731, null}
!739 = metadata !{i32 245, i32 0, metadata !729, null}
!740 = metadata !{i32 246, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !729, i32 245, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
!742 = metadata !{i32 249, i32 0, metadata !741, null}
!743 = metadata !{i32 250, i32 0, metadata !741, null}
!744 = metadata !{i32 252, i32 0, metadata !729, null}
!745 = metadata !{i32 321, i32 0, metadata !459, null}
!746 = metadata !{i32 323, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !459, i32 322, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_accept.c]
