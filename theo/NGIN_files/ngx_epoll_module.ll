; ModuleID = 'src/event/modules/ngx_epoll_module.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_str_t = type { i32, i8* }
%struct.ngx_event_module_t = type { %struct.ngx_str_t*, i8* (%struct.ngx_cycle_s*)*, i8* (%struct.ngx_cycle_s*, i8*)*, %struct.ngx_event_actions_t }
%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type { i8*, i8, i8, i8, void (%struct.ngx_event_s*)*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_event_actions_t = type { i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_connection_s*)*, i32 (%struct.ngx_connection_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, void (%struct.ngx_cycle_s*)* }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, {}*, i8* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_module_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.ngx_command_s*, i32, i32 (%struct.ngx_log_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i64 }
%struct.ngx_os_io_t = type { i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, i32 }

@epoll_name = internal global %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0) }, align 4
@ngx_epoll_module_ctx = global %struct.ngx_event_module_t { %struct.ngx_str_t* @epoll_name, i8* (%struct.ngx_cycle_s*)* @ngx_epoll_create_conf, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_epoll_init_conf, %struct.ngx_event_actions_t { i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_add_event, i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_del_event, i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_add_event, i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_del_event, i32 (%struct.ngx_connection_s*)* @ngx_epoll_add_connection, i32 (%struct.ngx_connection_s*, i32)* @ngx_epoll_del_connection, i32 (%struct.ngx_cycle_s*, i32)* null, i32 (%struct.ngx_cycle_s*, i32, i32)* @ngx_epoll_process_events, i32 (%struct.ngx_cycle_s*, i32)* @ngx_epoll_init, void (%struct.ngx_cycle_s*)* @ngx_epoll_done } }, align 4
@ngx_epoll_commands = internal global [3 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str7, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 4, i8* null }, %struct.ngx_command_s zeroinitializer], align 4
@ngx_epoll_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_event_module_t* @ngx_epoll_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([3 x %struct.ngx_command_s]* @ngx_epoll_commands, i32 0, i32 0), i32 1414420037, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@ep = internal unnamed_addr global i32 -1, align 4
@event_list = internal unnamed_addr global %struct.epoll_event* null, align 4
@nevents = internal unnamed_addr global i32 0, align 4
@0 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@ngx_event_timer_alarm = external global i32
@.str = private unnamed_addr constant [20 x i8] c"epoll_wait() failed\00", align 1
@1 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@.str1 = private unnamed_addr constant [48 x i8] c"epoll_wait() returned no events without timeout\00", align 1
@2 = internal unnamed_addr constant [10 x i8] c"uintptr_t\00"
@ngx_posted_accept_events = external global %struct.ngx_event_s*
@ngx_posted_events = external global %struct.ngx_event_s*
@3 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str2 = private unnamed_addr constant [25 x i8] c"epoll_ctl(%d, %d) failed\00", align 1
@4 = internal unnamed_addr constant [3 x i8] c"<<\00"
@.str3 = private unnamed_addr constant [36 x i8] c"epoll_ctl(EPOLL_CTL_ADD, %d) failed\00", align 1
@5 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@6 = internal unnamed_addr constant [4 x i8] c"int\00"
@7 = internal unnamed_addr constant [9 x i8] c"uint32_t\00"
@8 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str4 = private unnamed_addr constant [21 x i8] c"epoll close() failed\00", align 1
@ngx_events_module = external global %struct.ngx_module_s
@.str5 = private unnamed_addr constant [22 x i8] c"epoll_create() failed\00", align 1
@9 = internal unnamed_addr constant [2 x i8] c"*\00"
@10 = internal unnamed_addr constant [37 x i8] c"src/event/modules/ngx_epoll_module.c\00"
@ngx_io = external global %struct.ngx_os_io_t
@ngx_os_io = external global %struct.ngx_os_io_t
@ngx_event_actions = external global %struct.ngx_event_actions_t
@ngx_event_flags = external global i32
@.str6 = private unnamed_addr constant [13 x i8] c"epoll_events\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"worker_aio_requests\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"epoll\00", align 1

define internal i8* @ngx_epoll_create_conf(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !438), !dbg !655
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 1, !dbg !656
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !656, !tbaa !657
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %0, i32 8) nounwind, !dbg !656
  %cmp = icmp eq i8* %call, null, !dbg !660
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !660

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 422, i32 20, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !661
  %events = bitcast i8* %call to i32*, !dbg !661
  store i32 -1, i32* %events, align 4, !dbg !661, !tbaa !662
  tail call void @__ioc_report_conversion(i32 423, i32 26, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !663
  %aio_requests = getelementptr inbounds i8* %call, i32 4, !dbg !663
  %1 = bitcast i8* %aio_requests to i32*, !dbg !663
  store i32 -1, i32* %1, align 4, !dbg !663, !tbaa !662
  br label %return, !dbg !664

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !665
}

define internal noalias i8* @ngx_epoll_init_conf(%struct.ngx_cycle_s* nocapture %cycle, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !423), !dbg !666
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !424), !dbg !666
  %events = bitcast i8* %conf to i32*, !dbg !667
  %0 = load i32* %events, align 4, !dbg !667, !tbaa !662
  tail call void @__ioc_report_conversion(i32 430, i32 39, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !667
  %cmp = icmp eq i32 %0, -1, !dbg !667
  br i1 %cmp, label %cont4, label %if.end, !dbg !667

cont4:                                            ; preds = %entry
  store i32 512, i32* %events, align 4, !dbg !668, !tbaa !662
  br label %if.end, !dbg !670

if.end:                                           ; preds = %cont4, %entry
  %aio_requests = getelementptr inbounds i8* %conf, i32 4, !dbg !671
  %1 = bitcast i8* %aio_requests to i32*, !dbg !671
  %2 = load i32* %1, align 4, !dbg !671, !tbaa !662
  tail call void @__ioc_report_conversion(i32 434, i32 45, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !671
  %cmp11 = icmp eq i32 %2, -1, !dbg !671
  br i1 %cmp11, label %cont14, label %if.end16, !dbg !671

cont14:                                           ; preds = %if.end
  store i32 32, i32* %1, align 4, !dbg !672, !tbaa !662
  br label %if.end16, !dbg !674

if.end16:                                         ; preds = %cont14, %if.end
  ret i8* null, !dbg !675
}

define internal i32 @ngx_epoll_add_event(%struct.ngx_event_s* nocapture %ev, i32 %event, i32 %flags) nounwind {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %ev}, i64 0, metadata !513), !dbg !676
  call void @llvm.dbg.value(metadata !{i32 %event}, i64 0, metadata !514), !dbg !676
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !515), !dbg !676
  call void @llvm.dbg.declare(metadata !{%struct.epoll_event* %ee}, metadata !522), !dbg !677
  %data = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 0, !dbg !678
  %0 = load i8** %data, align 4, !dbg !678, !tbaa !657
  %1 = icmp sgt i32 %event, -1, !dbg !679
  br i1 %1, label %cont, label %ioc_bb, !dbg !679

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %event to i64, !dbg !679
  call void @__ioc_report_conversion(i32 151, i32 24, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !679
  br label %cont, !dbg !679

cont:                                             ; preds = %ioc_bb, %entry
  call void @llvm.dbg.value(metadata !{i32 %event}, i64 0, metadata !518), !dbg !679
  %cmp = icmp eq i32 %event, 1, !dbg !680
  %write = getelementptr inbounds i8* %0, i32 8, !dbg !681
  call void @llvm.dbg.value(metadata !683, i64 0, metadata !519), !dbg !684
  %read = getelementptr inbounds i8* %0, i32 4, !dbg !685
  call void @llvm.dbg.value(metadata !687, i64 0, metadata !519), !dbg !688
  %prev.0 = select i1 %cmp, i32 4, i32 1, !dbg !680
  %e.0.in.in = select i1 %cmp, i8* %write, i8* %read, !dbg !680
  %e.0.in = bitcast i8* %e.0.in.in to %struct.ngx_event_s**, !dbg !681
  %e.0 = load %struct.ngx_event_s** %e.0.in, align 4, !dbg !681
  %3 = getelementptr %struct.ngx_event_s* %e.0, i32 0, i32 1, !dbg !689
  %4 = bitcast i8* %3 to i32*, !dbg !689
  %5 = load i32* %4, align 4, !dbg !689
  %bf.clear = and i32 %5, 8, !dbg !689
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !689
  call void @llvm.dbg.value(metadata !690, i64 0, metadata !516), !dbg !691
  %6 = lshr exact i32 %bf.clear, 2, !dbg !689
  %7 = or i32 %6, 1, !dbg !689
  %or = select i1 %tobool, i32 0, i32 %prev.0, !dbg !689
  %events.0 = or i32 %flags, %event, !dbg !689
  %or8 = or i32 %events.0, %or, !dbg !693
  %events9 = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 0, !dbg !693
  store i32 %or8, i32* %events9, align 4, !dbg !693, !tbaa !662
  %8 = ptrtoint i8* %0 to i32, !dbg !694
  %9 = getelementptr %struct.ngx_event_s* %ev, i32 0, i32 1, !dbg !694
  %10 = bitcast i8* %9 to i32*, !dbg !694
  %11 = load i32* %10, align 4, !dbg !694
  %12 = lshr i32 %11, 2, !dbg !694
  %bf.clear11 = and i32 %12, 1, !dbg !694
  %or12 = or i32 %bf.clear11, %8, !dbg !694
  %13 = inttoptr i32 %or12 to i8*, !dbg !694
  %data13 = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 1, !dbg !694
  %ptr = bitcast %union.epoll_data* %data13 to i8**, !dbg !694
  store i8* %13, i8** %ptr, align 4, !dbg !694, !tbaa !657
  %14 = load i32* @ep, align 4, !dbg !695, !tbaa !662
  %fd = getelementptr inbounds i8* %0, i32 12, !dbg !695
  %15 = bitcast i8* %fd to i32*, !dbg !695
  %16 = load i32* %15, align 4, !dbg !695, !tbaa !662
  %call = call i32 @epoll_ctl(i32 %14, i32 %7, i32 %16, %struct.epoll_event* %ee) nounwind, !dbg !695
  %cmp16 = icmp eq i32 %call, -1, !dbg !695
  br i1 %cmp16, label %if.then17, label %cont32, !dbg !695

if.then17:                                        ; preds = %cont
  %log = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 6, !dbg !696
  %17 = load %struct.ngx_log_s** %log, align 4, !dbg !696, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %17, i32 0, i32 0, !dbg !696
  %18 = load i32* %log_level, align 4, !dbg !696, !tbaa !662
  %cmp20 = icmp ugt i32 %18, 1, !dbg !696
  br i1 %cmp20, label %cont23, label %return, !dbg !696

cont23:                                           ; preds = %if.then17
  %call25 = call i32* @__errno_location() nounwind readnone, !dbg !698
  %19 = load i32* %call25, align 4, !dbg !698, !tbaa !662
  %20 = load i32* %15, align 4, !dbg !698, !tbaa !662
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %17, i32 %19, i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i32 %7, i32 %20) nounwind, !dbg !698
  br label %return, !dbg !698

cont32:                                           ; preds = %cont
  %21 = load i32* %10, align 4, !dbg !699
  %22 = or i32 %21, 8, !dbg !699
  store i32 %22, i32* %10, align 4, !dbg !699
  br label %return, !dbg !700

return:                                           ; preds = %cont23, %if.then17, %cont32
  %retval.0 = phi i32 [ 0, %cont32 ], [ -1, %if.then17 ], [ -1, %cont23 ]
  ret i32 %retval.0, !dbg !701
}

define internal i32 @ngx_epoll_del_event(%struct.ngx_event_s* nocapture %ev, i32 %event, i32 %flags) nounwind {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %ev}, i64 0, metadata !501), !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %event}, i64 0, metadata !502), !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !503), !dbg !702
  call void @llvm.dbg.declare(metadata !{%struct.epoll_event* %ee}, metadata !509), !dbg !703
  %and = and i32 %flags, 1, !dbg !704
  %tobool = icmp eq i32 %and, 0, !dbg !704
  br i1 %tobool, label %if.end, label %cont2, !dbg !704

cont2:                                            ; preds = %entry
  %0 = getelementptr %struct.ngx_event_s* %ev, i32 0, i32 1, !dbg !705
  %1 = bitcast i8* %0 to i32*, !dbg !705
  %2 = load i32* %1, align 4, !dbg !705
  %3 = and i32 %2, -9, !dbg !705
  store i32 %3, i32* %1, align 4, !dbg !705
  br label %return, !dbg !707

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 0, !dbg !708
  %4 = load i8** %data, align 4, !dbg !708, !tbaa !657
  %cmp = icmp eq i32 %event, 1, !dbg !709
  %write = getelementptr inbounds i8* %4, i32 8, !dbg !710
  call void @llvm.dbg.value(metadata !683, i64 0, metadata !506), !dbg !712
  %read = getelementptr inbounds i8* %4, i32 4, !dbg !713
  call void @llvm.dbg.value(metadata !687, i64 0, metadata !506), !dbg !715
  %e.0.in.in = select i1 %cmp, i8* %write, i8* %read, !dbg !709
  %e.0.in = bitcast i8* %e.0.in.in to %struct.ngx_event_s**, !dbg !710
  %e.0 = load %struct.ngx_event_s** %e.0.in, align 4, !dbg !710
  %5 = getelementptr %struct.ngx_event_s* %e.0, i32 0, i32 1, !dbg !716
  %6 = bitcast i8* %5 to i32*, !dbg !716
  %7 = load i32* %6, align 4, !dbg !716
  %bf.clear = and i32 %7, 8, !dbg !716
  %tobool10 = icmp eq i32 %bf.clear, 0, !dbg !716
  br i1 %tobool10, label %cont18, label %if.then11, !dbg !716

if.then11:                                        ; preds = %if.end
  %prev.0 = select i1 %cmp, i32 4, i32 1, !dbg !709
  call void @llvm.dbg.value(metadata !690, i64 0, metadata !504), !dbg !717
  %or = or i32 %prev.0, %flags, !dbg !719
  %events = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 0, !dbg !719
  store i32 %or, i32* %events, align 4, !dbg !719, !tbaa !662
  %8 = ptrtoint i8* %4 to i32, !dbg !720
  %9 = getelementptr %struct.ngx_event_s* %ev, i32 0, i32 1, !dbg !720
  %10 = bitcast i8* %9 to i32*, !dbg !720
  %11 = load i32* %10, align 4, !dbg !720
  %12 = lshr i32 %11, 2, !dbg !720
  %bf.clear13 = and i32 %12, 1, !dbg !720
  %or14 = or i32 %bf.clear13, %8, !dbg !720
  %13 = inttoptr i32 %or14 to i8*, !dbg !720
  %data15 = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 1, !dbg !720
  %ptr = bitcast %union.epoll_data* %data15 to i8**, !dbg !720
  store i8* %13, i8** %ptr, align 4, !dbg !720, !tbaa !657
  br label %if.end22, !dbg !721

cont18:                                           ; preds = %if.end
  call void @llvm.dbg.value(metadata !722, i64 0, metadata !504), !dbg !723
  %events19 = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 0, !dbg !725
  store i32 0, i32* %events19, align 4, !dbg !725, !tbaa !662
  %data20 = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 1, !dbg !726
  %ptr21 = bitcast %union.epoll_data* %data20 to i8**, !dbg !726
  store i8* null, i8** %ptr21, align 4, !dbg !726, !tbaa !657
  br label %if.end22

if.end22:                                         ; preds = %cont18, %if.then11
  %op.0 = phi i32 [ 3, %if.then11 ], [ 2, %cont18 ]
  %14 = load i32* @ep, align 4, !dbg !727, !tbaa !662
  %fd = getelementptr inbounds i8* %4, i32 12, !dbg !727
  %15 = bitcast i8* %fd to i32*, !dbg !727
  %16 = load i32* %15, align 4, !dbg !727, !tbaa !662
  %call = call i32 @epoll_ctl(i32 %14, i32 %op.0, i32 %16, %struct.epoll_event* %ee) nounwind, !dbg !727
  %cmp25 = icmp eq i32 %call, -1, !dbg !727
  br i1 %cmp25, label %if.then26, label %cont41, !dbg !727

if.then26:                                        ; preds = %if.end22
  %log = getelementptr inbounds %struct.ngx_event_s* %ev, i32 0, i32 6, !dbg !728
  %17 = load %struct.ngx_log_s** %log, align 4, !dbg !728, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %17, i32 0, i32 0, !dbg !728
  %18 = load i32* %log_level, align 4, !dbg !728, !tbaa !662
  %cmp29 = icmp ugt i32 %18, 1, !dbg !728
  br i1 %cmp29, label %cont32, label %return, !dbg !728

cont32:                                           ; preds = %if.then26
  %call34 = call i32* @__errno_location() nounwind readnone, !dbg !730
  %19 = load i32* %call34, align 4, !dbg !730, !tbaa !662
  %20 = load i32* %15, align 4, !dbg !730, !tbaa !662
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %17, i32 %19, i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i32 %op.0, i32 %20) nounwind, !dbg !730
  br label %return, !dbg !730

cont41:                                           ; preds = %if.end22
  %21 = getelementptr %struct.ngx_event_s* %ev, i32 0, i32 1, !dbg !731
  %22 = bitcast i8* %21 to i32*, !dbg !731
  %23 = load i32* %22, align 4, !dbg !731
  %24 = and i32 %23, -9, !dbg !731
  store i32 %24, i32* %22, align 4, !dbg !731
  br label %return, !dbg !732

return:                                           ; preds = %cont32, %if.then26, %cont41, %cont2
  %retval.0 = phi i32 [ 0, %cont2 ], [ 0, %cont41 ], [ -1, %if.then26 ], [ -1, %cont32 ]
  ret i32 %retval.0, !dbg !733
}

define internal i32 @ngx_epoll_add_connection(%struct.ngx_connection_s* %c) nounwind {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %c}, i64 0, metadata !493), !dbg !734
  call void @llvm.dbg.declare(metadata !{%struct.epoll_event* %ee}, metadata !494), !dbg !735
  call void @__ioc_report_shl_strict(i32 233, i32 35, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 31, i8 13) nounwind, !dbg !736
  call void @__ioc_report_conversion(i32 233, i32 15, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -2147483643, i8 1) nounwind, !dbg !736
  %events = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 0, !dbg !736
  store i32 -2147483643, i32* %events, align 4, !dbg !736, !tbaa !662
  %0 = ptrtoint %struct.ngx_connection_s* %c to i32, !dbg !737
  %read = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 1, !dbg !737
  %1 = load %struct.ngx_event_s** %read, align 4, !dbg !737, !tbaa !657
  %2 = getelementptr %struct.ngx_event_s* %1, i32 0, i32 1, !dbg !737
  %3 = bitcast i8* %2 to i32*, !dbg !737
  %4 = load i32* %3, align 4, !dbg !737
  %5 = lshr i32 %4, 2, !dbg !737
  %bf.clear = and i32 %5, 1, !dbg !737
  %or = or i32 %bf.clear, %0, !dbg !737
  %6 = inttoptr i32 %or to i8*, !dbg !737
  %data = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 1, !dbg !737
  %ptr = bitcast %union.epoll_data* %data to i8**, !dbg !737
  store i8* %6, i8** %ptr, align 4, !dbg !737, !tbaa !657
  %7 = load i32* @ep, align 4, !dbg !738, !tbaa !662
  %fd = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 3, !dbg !738
  %8 = load i32* %fd, align 4, !dbg !738, !tbaa !662
  %call = call i32 @epoll_ctl(i32 %7, i32 1, i32 %8, %struct.epoll_event* %ee) nounwind, !dbg !738
  %cmp = icmp eq i32 %call, -1, !dbg !738
  br i1 %cmp, label %if.then, label %cont20, !dbg !738

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 10, !dbg !739
  %9 = load %struct.ngx_log_s** %log, align 4, !dbg !739, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %9, i32 0, i32 0, !dbg !739
  %10 = load i32* %log_level, align 4, !dbg !739, !tbaa !662
  %cmp9 = icmp ugt i32 %10, 1, !dbg !739
  br i1 %cmp9, label %cont12, label %return, !dbg !739

cont12:                                           ; preds = %if.then
  %call14 = call i32* @__errno_location() nounwind readnone, !dbg !741
  %11 = load i32* %call14, align 4, !dbg !741, !tbaa !662
  %12 = load i32* %fd, align 4, !dbg !741, !tbaa !662
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %9, i32 %11, i8* getelementptr inbounds ([36 x i8]* @.str3, i32 0, i32 0), i32 %12) nounwind, !dbg !741
  br label %return, !dbg !741

cont20:                                           ; preds = %entry
  %13 = load %struct.ngx_event_s** %read, align 4, !dbg !742, !tbaa !657
  %14 = getelementptr %struct.ngx_event_s* %13, i32 0, i32 1, !dbg !742
  %15 = bitcast i8* %14 to i32*, !dbg !742
  %16 = load i32* %15, align 4, !dbg !742
  %17 = or i32 %16, 8, !dbg !742
  store i32 %17, i32* %15, align 4, !dbg !742
  %write = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 2, !dbg !743
  %18 = load %struct.ngx_event_s** %write, align 4, !dbg !743, !tbaa !657
  %19 = getelementptr %struct.ngx_event_s* %18, i32 0, i32 1, !dbg !743
  %20 = bitcast i8* %19 to i32*, !dbg !743
  %21 = load i32* %20, align 4, !dbg !743
  %22 = or i32 %21, 8, !dbg !743
  store i32 %22, i32* %20, align 4, !dbg !743
  br label %return, !dbg !744

return:                                           ; preds = %cont12, %if.then, %cont20
  %retval.0 = phi i32 [ 0, %cont20 ], [ -1, %if.then ], [ -1, %cont12 ]
  ret i32 %retval.0, !dbg !745
}

define internal i32 @ngx_epoll_del_connection(%struct.ngx_connection_s* nocapture %c, i32 %flags) nounwind {
entry:
  %ee = alloca %struct.epoll_event, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %c}, i64 0, metadata !470), !dbg !746
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !471), !dbg !746
  call void @llvm.dbg.declare(metadata !{%struct.epoll_event* %ee}, metadata !474), !dbg !747
  %and = and i32 %flags, 1, !dbg !748
  %tobool = icmp eq i32 %and, 0, !dbg !748
  br i1 %tobool, label %cont7, label %cont2, !dbg !748

cont2:                                            ; preds = %entry
  %read = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 1, !dbg !749
  %0 = load %struct.ngx_event_s** %read, align 4, !dbg !749, !tbaa !657
  %1 = getelementptr %struct.ngx_event_s* %0, i32 0, i32 1, !dbg !749
  %2 = bitcast i8* %1 to i32*, !dbg !749
  %3 = load i32* %2, align 4, !dbg !749
  %4 = and i32 %3, -9, !dbg !749
  store i32 %4, i32* %2, align 4, !dbg !749
  %write = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 2, !dbg !751
  %5 = load %struct.ngx_event_s** %write, align 4, !dbg !751, !tbaa !657
  %6 = getelementptr %struct.ngx_event_s* %5, i32 0, i32 1, !dbg !751
  %7 = bitcast i8* %6 to i32*, !dbg !751
  %8 = load i32* %7, align 4, !dbg !751
  %9 = and i32 %8, -9, !dbg !751
  store i32 %9, i32* %7, align 4, !dbg !751
  br label %return, !dbg !752

cont7:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata !722, i64 0, metadata !472), !dbg !753
  %events = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 0, !dbg !754
  store i32 0, i32* %events, align 4, !dbg !754, !tbaa !662
  %data = getelementptr inbounds %struct.epoll_event* %ee, i32 0, i32 1, !dbg !755
  %ptr = bitcast %union.epoll_data* %data to i8**, !dbg !755
  store i8* null, i8** %ptr, align 4, !dbg !755, !tbaa !657
  %10 = load i32* @ep, align 4, !dbg !756, !tbaa !662
  %fd = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 3, !dbg !756
  %11 = load i32* %fd, align 4, !dbg !756, !tbaa !662
  %call = call i32 @epoll_ctl(i32 %10, i32 2, i32 %11, %struct.epoll_event* %ee) nounwind, !dbg !756
  %cmp = icmp eq i32 %call, -1, !dbg !756
  br i1 %cmp, label %if.then10, label %cont25, !dbg !756

if.then10:                                        ; preds = %cont7
  %log = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 10, !dbg !757
  %12 = load %struct.ngx_log_s** %log, align 4, !dbg !757, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %12, i32 0, i32 0, !dbg !757
  %13 = load i32* %log_level, align 4, !dbg !757, !tbaa !662
  %cmp13 = icmp ugt i32 %13, 1, !dbg !757
  br i1 %cmp13, label %cont16, label %return, !dbg !757

cont16:                                           ; preds = %if.then10
  %call18 = call i32* @__errno_location() nounwind readnone, !dbg !759
  %14 = load i32* %call18, align 4, !dbg !759, !tbaa !662
  %15 = load i32* %fd, align 4, !dbg !759, !tbaa !662
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %12, i32 %14, i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0), i32 2, i32 %15) nounwind, !dbg !759
  br label %return, !dbg !759

cont25:                                           ; preds = %cont7
  %read26 = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 1, !dbg !760
  %16 = load %struct.ngx_event_s** %read26, align 4, !dbg !760, !tbaa !657
  %17 = getelementptr %struct.ngx_event_s* %16, i32 0, i32 1, !dbg !760
  %18 = bitcast i8* %17 to i32*, !dbg !760
  %19 = load i32* %18, align 4, !dbg !760
  %20 = and i32 %19, -9, !dbg !760
  store i32 %20, i32* %18, align 4, !dbg !760
  %write30 = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 2, !dbg !761
  %21 = load %struct.ngx_event_s** %write30, align 4, !dbg !761, !tbaa !657
  %22 = getelementptr %struct.ngx_event_s* %21, i32 0, i32 1, !dbg !761
  %23 = bitcast i8* %22 to i32*, !dbg !761
  %24 = load i32* %23, align 4, !dbg !761
  %25 = and i32 %24, -9, !dbg !761
  store i32 %25, i32* %23, align 4, !dbg !761
  br label %return, !dbg !762

return:                                           ; preds = %cont16, %if.then10, %cont25, %cont2
  %retval.0 = phi i32 [ 0, %cont2 ], [ 0, %cont25 ], [ -1, %if.then10 ], [ -1, %cont16 ]
  ret i32 %retval.0, !dbg !763
}

define internal i32 @ngx_epoll_process_events(%struct.ngx_cycle_s* nocapture %cycle, i32 %timer, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !449), !dbg !764
  tail call void @llvm.dbg.value(metadata !{i32 %timer}, i64 0, metadata !450), !dbg !764
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !451), !dbg !764
  %0 = load i32* @ep, align 4, !dbg !765, !tbaa !662
  %1 = load %struct.epoll_event** @event_list, align 4, !dbg !765, !tbaa !657
  %2 = load i32* @nevents, align 4, !dbg !765, !tbaa !662
  %3 = icmp sgt i32 %2, -1, !dbg !765
  br i1 %3, label %cont, label %ioc_bb, !dbg !765

ioc_bb:                                           ; preds = %entry
  %4 = zext i32 %2 to i64, !dbg !765
  tail call void @__ioc_report_conversion(i32 288, i32 44, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i64 %4, i8 0) nounwind, !dbg !765
  br label %cont, !dbg !765

cont:                                             ; preds = %ioc_bb, %entry
  %5 = icmp sgt i32 %timer, -1, !dbg !765
  br i1 %5, label %cont3, label %ioc_bb2, !dbg !765

ioc_bb2:                                          ; preds = %cont
  %6 = zext i32 %timer to i64, !dbg !765
  tail call void @__ioc_report_conversion(i32 288, i32 53, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i64 %6, i8 0) nounwind, !dbg !765
  br label %cont3, !dbg !765

cont3:                                            ; preds = %ioc_bb2, %cont
  %call = tail call i32 @epoll_wait(i32 %0, %struct.epoll_event* %1, i32 %2, i32 %timer) nounwind, !dbg !765
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !452), !dbg !765
  %cmp = icmp eq i32 %call, -1, !dbg !766
  br i1 %cmp, label %cond.true, label %cont8, !dbg !766

cond.true:                                        ; preds = %cont3
  %call6 = tail call i32* @__errno_location() nounwind readnone, !dbg !766
  %7 = load i32* %call6, align 4, !dbg !766, !tbaa !662
  br label %cont8, !dbg !766

cont8:                                            ; preds = %cond.true, %cont3
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cont3 ], !dbg !766
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !459), !dbg !766
  %and = and i32 %flags, 1, !dbg !767
  %8 = load i32* @ngx_event_timer_alarm, align 4, !dbg !767, !tbaa !662
  %9 = or i32 %8, %and, !dbg !767
  %10 = icmp eq i32 %9, 0, !dbg !767
  br i1 %10, label %if.end, label %if.then, !dbg !767

if.then:                                          ; preds = %cont8
  tail call void @ngx_time_update() nounwind, !dbg !768
  br label %if.end, !dbg !770

if.end:                                           ; preds = %cont8, %if.then
  switch i32 %cond, label %if.end21 [
    i32 0, label %if.end28
    i32 4, label %if.then13
  ], !dbg !771

if.then13:                                        ; preds = %if.end
  %11 = load i32* @ngx_event_timer_alarm, align 4, !dbg !772, !tbaa !662
  %tobool14 = icmp eq i32 %11, 0, !dbg !772
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !772

if.then15:                                        ; preds = %if.then13
  store i32 0, i32* @ngx_event_timer_alarm, align 4, !dbg !775, !tbaa !662
  br label %return, !dbg !777

if.end21:                                         ; preds = %if.end, %if.then13
  %level.0 = phi i32 [ 7, %if.then13 ], [ 2, %if.end ]
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !778
  %12 = load %struct.ngx_log_s** %log, align 4, !dbg !778, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %12, i32 0, i32 0, !dbg !778
  %13 = load i32* %log_level, align 4, !dbg !778, !tbaa !662
  %cmp22 = icmp ult i32 %13, %level.0, !dbg !778
  br i1 %cmp22, label %return, label %if.then23, !dbg !778

if.then23:                                        ; preds = %if.end21
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %level.0, %struct.ngx_log_s* %12, i32 %cond, i8* getelementptr inbounds ([20 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !779
  br label %return, !dbg !779

if.end28:                                         ; preds = %if.end
  %cmp29 = icmp eq i32 %call, 0, !dbg !780
  br i1 %cmp29, label %ioc_bb33, label %for.cond.preheader, !dbg !780

for.cond.preheader:                               ; preds = %if.end28
  %cmp51266 = icmp sgt i32 %call, 0, !dbg !781
  br i1 %cmp51266, label %for.body.lr.ph, label %return, !dbg !781

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and176 = and i32 %flags, 4, !dbg !783
  %tobool177 = icmp eq i32 %and176, 0, !dbg !783
  %storemerge.v = select i1 %tobool177, i32 32, i32 131072, !dbg !783
  %and189 = and i32 %flags, 2, !dbg !786
  %tobool190 = icmp eq i32 %and189, 0, !dbg !786
  br label %for.body, !dbg !781

ioc_bb33:                                         ; preds = %if.end28
  tail call void @__ioc_report_conversion(i32 309, i32 32, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !787
  %cmp35 = icmp eq i32 %timer, -1, !dbg !787
  br i1 %cmp35, label %if.end37, label %return, !dbg !787

if.end37:                                         ; preds = %ioc_bb33
  %log38 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !789
  %14 = load %struct.ngx_log_s** %log38, align 4, !dbg !789, !tbaa !657
  %log_level39 = getelementptr inbounds %struct.ngx_log_s* %14, i32 0, i32 0, !dbg !789
  %15 = load i32* %log_level39, align 4, !dbg !789, !tbaa !662
  %cmp42 = icmp ugt i32 %15, 1, !dbg !789
  br i1 %cmp42, label %cont45, label %return, !dbg !789

cont45:                                           ; preds = %if.end37
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %14, i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !790
  br label %return, !dbg !790

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %i.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %45, %for.cond.backedge ]
  %16 = load %struct.epoll_event** @event_list, align 4, !dbg !791, !tbaa !657
  %data = getelementptr inbounds %struct.epoll_event* %16, i32 %i.0267, i32 1, !dbg !791
  %ptr = bitcast %union.epoll_data* %data to i8**, !dbg !791
  %17 = load i8** %ptr, align 1, !dbg !791, !tbaa !657
  %18 = ptrtoint i8* %17 to i32, !dbg !792
  %and54 = and i32 %18, 1, !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %and54}, i64 0, metadata !456), !dbg !792
  tail call void @__ioc_report_conversion(i32 320, i32 62, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -2, i8 1) nounwind, !dbg !793
  %and60 = and i32 %18, -2, !dbg !793
  %19 = inttoptr i32 %and60 to %struct.ngx_connection_s*, !dbg !793
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %19}, i64 0, metadata !464), !dbg !793
  %read = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 1, !dbg !794
  %20 = load %struct.ngx_event_s** %read, align 4, !dbg !794, !tbaa !657
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %20}, i64 0, metadata !461), !dbg !794
  %fd = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 3, !dbg !795
  %21 = load i32* %fd, align 4, !dbg !795, !tbaa !662
  %cmp63 = icmp eq i32 %21, -1, !dbg !795
  br i1 %cmp63, label %for.inc, label %lor.lhs.false64, !dbg !795

lor.lhs.false64:                                  ; preds = %for.body
  %22 = getelementptr %struct.ngx_event_s* %20, i32 0, i32 1, !dbg !795
  %23 = bitcast i8* %22 to i32*, !dbg !795
  %24 = load i32* %23, align 4, !dbg !795
  %25 = lshr i32 %24, 2, !dbg !795
  %bf.clear = and i32 %25, 1, !dbg !795
  %cmp68 = icmp eq i32 %bf.clear, %and54, !dbg !795
  br i1 %cmp68, label %if.end70, label %for.inc, !dbg !795

if.end70:                                         ; preds = %lor.lhs.false64
  %26 = load %struct.epoll_event** @event_list, align 4, !dbg !796, !tbaa !657
  %events72 = getelementptr inbounds %struct.epoll_event* %26, i32 %i.0267, i32 0, !dbg !796
  %27 = load i32* %events72, align 1, !dbg !796, !tbaa !662
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !454), !dbg !796
  %and75 = and i32 %27, 24, !dbg !797
  %tobool82 = icmp ne i32 %and75, 0, !dbg !798
  %and85 = and i32 %27, 5, !dbg !798
  %cmp88 = icmp eq i32 %and85, 0, !dbg !798
  %or.cond = and i1 %tobool82, %cmp88, !dbg !798
  %or = or i32 %27, 5, !dbg !799
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !454), !dbg !799
  %revents.0 = select i1 %or.cond, i32 %or, i32 %27, !dbg !798
  %and95 = and i32 %revents.0, 1, !dbg !801
  %tobool96 = icmp eq i32 %and95, 0, !dbg !801
  br i1 %tobool96, label %if.end148, label %cont102, !dbg !801

cont102:                                          ; preds = %if.end70
  %bf.clear99 = and i32 %24, 8, !dbg !801
  %tobool103 = icmp eq i32 %bf.clear99, 0, !dbg !801
  br i1 %tobool103, label %if.end148, label %cont106, !dbg !801

cont106:                                          ; preds = %cont102
  br i1 %tobool177, label %cont119, label %land.lhs.true109, !dbg !802

land.lhs.true109:                                 ; preds = %cont106
  %bf.clear111 = and i32 %24, 2, !dbg !802
  %tobool112 = icmp eq i32 %bf.clear111, 0, !dbg !802
  br i1 %tobool112, label %cont115, label %cont119, !dbg !802

cont115:                                          ; preds = %land.lhs.true109
  %28 = or i32 %24, 131072, !dbg !804
  br label %if.end121, !dbg !806

cont119:                                          ; preds = %cont106, %land.lhs.true109
  %29 = or i32 %24, 32, !dbg !807
  br label %if.end121

if.end121:                                        ; preds = %cont119, %cont115
  %storemerge265 = phi i32 [ %29, %cont119 ], [ %28, %cont115 ]
  store i32 %storemerge265, i32* %23, align 4, !dbg !804
  br i1 %tobool190, label %if.else146, label %cont131, !dbg !809

cont131:                                          ; preds = %if.end121
  %bf.clear128 = and i32 %storemerge265, 2, !dbg !810
  %tobool132 = icmp ne i32 %bf.clear128, 0, !dbg !810
  %cond133 = select i1 %tobool132, %struct.ngx_event_s** @ngx_posted_accept_events, %struct.ngx_event_s** @ngx_posted_events, !dbg !810
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s** %cond133}, i64 0, metadata !463), !dbg !810
  %prev = getelementptr inbounds %struct.ngx_event_s* %20, i32 0, i32 10, !dbg !812
  %30 = load %struct.ngx_event_s*** %prev, align 4, !dbg !812, !tbaa !657
  %cmp134 = icmp eq %struct.ngx_event_s** %30, null, !dbg !812
  br i1 %cmp134, label %if.then135, label %if.end148, !dbg !812

if.then135:                                       ; preds = %cont131
  %31 = load %struct.ngx_event_s** %cond133, align 4, !dbg !813, !tbaa !657
  %next = getelementptr inbounds %struct.ngx_event_s* %20, i32 0, i32 9, !dbg !813
  store %struct.ngx_event_s* %31, %struct.ngx_event_s** %next, align 4, !dbg !813, !tbaa !657
  store %struct.ngx_event_s** %cond133, %struct.ngx_event_s*** %prev, align 4, !dbg !815, !tbaa !657
  store %struct.ngx_event_s* %20, %struct.ngx_event_s** %cond133, align 4, !dbg !816, !tbaa !657
  %32 = load %struct.ngx_event_s** %next, align 4, !dbg !817, !tbaa !657
  %tobool138 = icmp eq %struct.ngx_event_s* %32, null, !dbg !817
  br i1 %tobool138, label %if.end148, label %if.then139, !dbg !817

if.then139:                                       ; preds = %if.then135
  %prev142 = getelementptr inbounds %struct.ngx_event_s* %32, i32 0, i32 10, !dbg !818
  store %struct.ngx_event_s** %next, %struct.ngx_event_s*** %prev142, align 4, !dbg !818, !tbaa !657
  br label %if.end148, !dbg !820

if.else146:                                       ; preds = %if.end121
  %handler = getelementptr inbounds %struct.ngx_event_s* %20, i32 0, i32 4, !dbg !821
  %33 = load void (%struct.ngx_event_s*)** %handler, align 4, !dbg !821, !tbaa !657
  tail call void %33(%struct.ngx_event_s* %20) nounwind, !dbg !821
  br label %if.end148

if.end148:                                        ; preds = %if.then135, %cont102, %if.end70, %if.else146, %cont131, %if.then139
  %write = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 2, !dbg !823
  %34 = load %struct.ngx_event_s** %write, align 4, !dbg !823, !tbaa !657
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %34}, i64 0, metadata !462), !dbg !823
  %and151 = and i32 %revents.0, 4, !dbg !824
  %tobool152 = icmp eq i32 %and151, 0, !dbg !824
  br i1 %tobool152, label %for.inc, label %land.lhs.true153, !dbg !824

land.lhs.true153:                                 ; preds = %if.end148
  %35 = getelementptr %struct.ngx_event_s* %34, i32 0, i32 1, !dbg !824
  %36 = bitcast i8* %35 to i32*, !dbg !824
  %37 = load i32* %36, align 4, !dbg !824
  %bf.clear155 = and i32 %37, 8, !dbg !824
  %tobool159 = icmp eq i32 %bf.clear155, 0, !dbg !824
  br i1 %tobool159, label %for.inc, label %if.then160, !dbg !824

if.then160:                                       ; preds = %land.lhs.true153
  %38 = load i32* %fd, align 4, !dbg !825, !tbaa !662
  %cmp164 = icmp eq i32 %38, -1, !dbg !825
  br i1 %cmp164, label %for.inc, label %cont170, !dbg !825

cont170:                                          ; preds = %if.then160
  %39 = lshr i32 %37, 2, !dbg !825
  %bf.clear167 = and i32 %39, 1, !dbg !825
  %cmp171 = icmp eq i32 %bf.clear167, %and54, !dbg !825
  br i1 %cmp171, label %cont175, label %for.inc, !dbg !825

cont175:                                          ; preds = %cont170
  %storemerge = or i32 %37, %storemerge.v, !dbg !783
  store i32 %storemerge, i32* %36, align 4, !dbg !826
  br i1 %tobool190, label %if.else206, label %if.then191, !dbg !786

if.then191:                                       ; preds = %cont175
  %prev192 = getelementptr inbounds %struct.ngx_event_s* %34, i32 0, i32 10, !dbg !828
  %40 = load %struct.ngx_event_s*** %prev192, align 4, !dbg !828, !tbaa !657
  %cmp193 = icmp eq %struct.ngx_event_s** %40, null, !dbg !828
  br i1 %cmp193, label %if.then194, label %for.inc, !dbg !828

if.then194:                                       ; preds = %if.then191
  %41 = load %struct.ngx_event_s** @ngx_posted_events, align 4, !dbg !830, !tbaa !657
  %next195 = getelementptr inbounds %struct.ngx_event_s* %34, i32 0, i32 9, !dbg !830
  store %struct.ngx_event_s* %41, %struct.ngx_event_s** %next195, align 4, !dbg !830, !tbaa !657
  store %struct.ngx_event_s** @ngx_posted_events, %struct.ngx_event_s*** %prev192, align 4, !dbg !832, !tbaa !657
  store %struct.ngx_event_s* %34, %struct.ngx_event_s** @ngx_posted_events, align 4, !dbg !833, !tbaa !657
  %42 = load %struct.ngx_event_s** %next195, align 4, !dbg !834, !tbaa !657
  %tobool198 = icmp eq %struct.ngx_event_s* %42, null, !dbg !834
  br i1 %tobool198, label %for.inc, label %if.then199, !dbg !834

if.then199:                                       ; preds = %if.then194
  %prev202 = getelementptr inbounds %struct.ngx_event_s* %42, i32 0, i32 10, !dbg !835
  store %struct.ngx_event_s** %next195, %struct.ngx_event_s*** %prev202, align 4, !dbg !835, !tbaa !657
  br label %for.inc, !dbg !837

if.else206:                                       ; preds = %cont175
  %handler207 = getelementptr inbounds %struct.ngx_event_s* %34, i32 0, i32 4, !dbg !838
  %43 = load void (%struct.ngx_event_s*)** %handler207, align 4, !dbg !838, !tbaa !657
  tail call void %43(%struct.ngx_event_s* %34) nounwind, !dbg !838
  br label %for.inc

for.inc:                                          ; preds = %if.then194, %cont170, %land.lhs.true153, %if.end148, %lor.lhs.false64, %if.then199, %if.then191, %if.else206, %if.then160, %for.body
  %44 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0267, i32 1), !dbg !781
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !781
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !781
  br i1 %46, label %ioc_bb210, label %for.cond.backedge, !dbg !781

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb210
  %cmp51 = icmp slt i32 %45, %call, !dbg !781
  br i1 %cmp51, label %for.body, label %return, !dbg !781

ioc_bb210:                                        ; preds = %for.inc
  %47 = sext i32 %i.0267 to i64, !dbg !781
  tail call void @__ioc_report_add_overflow(i32 317, i32 28, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %47, i64 1, i8 13) nounwind, !dbg !781
  br label %for.cond.backedge, !dbg !781

return:                                           ; preds = %for.cond.preheader, %for.cond.backedge, %cont45, %if.end37, %ioc_bb33, %if.end21, %if.then23, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ -1, %if.then23 ], [ -1, %if.end21 ], [ 0, %ioc_bb33 ], [ -1, %if.end37 ], [ -1, %cont45 ], [ 0, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0, !dbg !840
}

define internal i32 @ngx_epoll_init(%struct.ngx_cycle_s* nocapture %cycle, i32 %timer) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !534), !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32 %timer}, i64 0, metadata !535), !dbg !841
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_epoll_module, i32 0, i32 0), align 4, !dbg !842, !tbaa !662
  %1 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !842, !tbaa !662
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !842
  %2 = load i8***** %conf_ctx, align 4, !dbg !842, !tbaa !657
  %arrayidx = getelementptr inbounds i8**** %2, i32 %1, !dbg !842
  %3 = load i8**** %arrayidx, align 4, !dbg !842, !tbaa !657
  %4 = load i8*** %3, align 4, !dbg !842, !tbaa !657
  %arrayidx1 = getelementptr inbounds i8** %4, i32 %0, !dbg !842
  %5 = load i8** %arrayidx1, align 4, !dbg !842, !tbaa !657
  %6 = load i32* @ep, align 4, !dbg !843, !tbaa !662
  %cmp = icmp eq i32 %6, -1, !dbg !843
  br i1 %cmp, label %if.then, label %if.end22, !dbg !843

if.then:                                          ; preds = %entry
  %connection_n = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 12, !dbg !844
  %7 = load i32* %connection_n, align 4, !dbg !844, !tbaa !662
  %div = lshr i32 %7, 1, !dbg !844
  %call = tail call i32 @epoll_create(i32 %div) nounwind, !dbg !844
  store i32 %call, i32* @ep, align 4, !dbg !844, !tbaa !662
  %cmp9 = icmp eq i32 %call, -1, !dbg !846
  br i1 %cmp9, label %if.then10, label %if.end22, !dbg !846

if.then10:                                        ; preds = %if.then
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !847
  %8 = load %struct.ngx_log_s** %log, align 4, !dbg !847, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %8, i32 0, i32 0, !dbg !847
  %9 = load i32* %log_level, align 4, !dbg !847, !tbaa !662
  %cmp13 = icmp eq i32 %9, 0, !dbg !847
  br i1 %cmp13, label %return, label %cont16, !dbg !847

cont16:                                           ; preds = %if.then10
  %call18 = tail call i32* @__errno_location() nounwind readnone, !dbg !849
  %10 = load i32* %call18, align 4, !dbg !849, !tbaa !662
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %8, i32 %10, i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !849
  br label %return, !dbg !849

if.end22:                                         ; preds = %if.then, %entry
  %11 = load i32* @nevents, align 4, !dbg !850, !tbaa !662
  %events = bitcast i8* %5 to i32*, !dbg !850
  %12 = load i32* %events, align 4, !dbg !850, !tbaa !662
  %cmp23 = icmp ult i32 %11, %12, !dbg !850
  br i1 %cmp23, label %if.then24, label %if.end37, !dbg !850

if.then24:                                        ; preds = %if.end22
  %13 = load %struct.epoll_event** @event_list, align 4, !dbg !851, !tbaa !657
  %tobool = icmp eq %struct.epoll_event* %13, null, !dbg !851
  br i1 %tobool, label %if.end26, label %if.then25, !dbg !851

if.then25:                                        ; preds = %if.then24
  %14 = bitcast %struct.epoll_event* %13 to i8*, !dbg !853
  tail call void @free(i8* %14) nounwind, !dbg !853
  %.pre = load i32* %events, align 4, !dbg !855, !tbaa !662
  br label %if.end26, !dbg !856

if.end26:                                         ; preds = %if.then24, %if.then25
  %15 = phi i32 [ %12, %if.then24 ], [ %.pre, %if.then25 ]
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 12), !dbg !855
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !855
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !855
  br i1 %18, label %ioc_bb28, label %cont29, !dbg !855

ioc_bb28:                                         ; preds = %if.end26
  %19 = zext i32 %15 to i64, !dbg !855
  tail call void @__ioc_report_mul_overflow(i32 113, i32 57, i8* getelementptr inbounds ([37 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 12, i64 %19, i8 5) nounwind, !dbg !855
  br label %cont29, !dbg !855

cont29:                                           ; preds = %if.end26, %ioc_bb28
  %log30 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !855
  %20 = load %struct.ngx_log_s** %log30, align 4, !dbg !855, !tbaa !657
  %call31 = tail call i8* @ngx_alloc(i32 %17, %struct.ngx_log_s* %20) nounwind, !dbg !855
  %21 = bitcast i8* %call31 to %struct.epoll_event*, !dbg !855
  store %struct.epoll_event* %21, %struct.epoll_event** @event_list, align 4, !dbg !855, !tbaa !657
  %cmp32 = icmp eq i8* %call31, null, !dbg !857
  br i1 %cmp32, label %return, label %cont29.if.end37_crit_edge, !dbg !857

cont29.if.end37_crit_edge:                        ; preds = %cont29
  %.pre47 = load i32* %events, align 4, !dbg !858, !tbaa !662
  br label %if.end37, !dbg !857

if.end37:                                         ; preds = %cont29.if.end37_crit_edge, %if.end22
  %22 = phi i32 [ %.pre47, %cont29.if.end37_crit_edge ], [ %12, %if.end22 ]
  store i32 %22, i32* @nevents, align 4, !dbg !858, !tbaa !662
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.ngx_os_io_t* @ngx_io to i8*), i8* bitcast (%struct.ngx_os_io_t* @ngx_os_io to i8*), i32 24, i32 4, i1 false), !dbg !859, !tbaa.struct !860
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* bitcast (%struct.ngx_event_actions_t* @ngx_event_actions to i8*), i8* bitcast (%struct.ngx_event_actions_t* getelementptr inbounds (%struct.ngx_event_module_t* @ngx_epoll_module_ctx, i32 0, i32 3) to i8*), i32 40, i32 4, i1 false), !dbg !861, !tbaa.struct !862
  store i32 100, i32* @ngx_event_flags, align 4, !dbg !863, !tbaa !662
  br label %return, !dbg !864

return:                                           ; preds = %cont29, %if.then10, %cont16, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -1, %cont16 ], [ -1, %if.then10 ], [ -1, %cont29 ]
  ret i32 %retval.0, !dbg !865
}

define internal void @ngx_epoll_done(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !528), !dbg !866
  %0 = load i32* @ep, align 4, !dbg !867, !tbaa !662
  %call = tail call i32 @close(i32 %0) nounwind, !dbg !867
  %cmp = icmp eq i32 %call, -1, !dbg !867
  br i1 %cmp, label %if.then, label %cont11, !dbg !867

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !869
  %1 = load %struct.ngx_log_s** %log, align 4, !dbg !869, !tbaa !657
  %log_level = getelementptr inbounds %struct.ngx_log_s* %1, i32 0, i32 0, !dbg !869
  %2 = load i32* %log_level, align 4, !dbg !869, !tbaa !662
  %cmp3 = icmp ugt i32 %2, 1, !dbg !869
  br i1 %cmp3, label %cont6, label %cont11, !dbg !869

cont6:                                            ; preds = %if.then
  %call8 = tail call i32* @__errno_location() nounwind readnone, !dbg !871
  %3 = load i32* %call8, align 4, !dbg !871, !tbaa !662
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %1, i32 %3, i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !871
  br label %cont11, !dbg !871

cont11:                                           ; preds = %entry, %cont6, %if.then
  store i32 -1, i32* @ep, align 4, !dbg !872, !tbaa !662
  %4 = load %struct.epoll_event** @event_list, align 4, !dbg !873, !tbaa !657
  %5 = bitcast %struct.epoll_event* %4 to i8*, !dbg !873
  tail call void @free(i8* %5) nounwind, !dbg !873
  store %struct.epoll_event* null, %struct.epoll_event** @event_list, align 4, !dbg !874, !tbaa !657
  store i32 0, i32* @nevents, align 4, !dbg !875, !tbaa !662
  ret void, !dbg !876
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32)

declare i32* @__errno_location() nounwind readnone

declare void @ngx_time_update()

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) nounwind

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @close(i32)

declare void @free(i8* nocapture) nounwind

declare i32 @epoll_create(i32) nounwind

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/event/modules/ngx_epoll_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !538} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !433, metadata !441, metadata !465, metadata !488, metadata !496, metadata !510, metadata !523, metadata !529}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_init_conf", metadata !"ngx_epoll_init_conf", metadata !"", metadata !6, i32 427, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_epoll_init_conf, null, null, metadata !421, i32 428} ; [ DW_TAG_subprogram ] [line 427] [local] [def] [scope 428] [ngx_epoll_init_conf]
!6 = metadata !{i32 786473, metadata !"src/event/modules/ngx_epoll_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !11, metadata !21}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!10 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!12 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !13, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!13 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !15, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!15 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!16 = metadata !{metadata !17, metadata !22, metadata !197, metadata !198, metadata !199, metadata !375, metadata !376, metadata !377, metadata !378, metadata !388, metadata !389, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420}
!17 = metadata !{i32 786445, metadata !14, metadata !"conf_ctx", metadata !15, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !14, metadata !"pool", metadata !15, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!24 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !15, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!25 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !26, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!26 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28, metadata !46, metadata !48, metadata !49, metadata !177, metadata !184, metadata !196}
!28 = metadata !{i32 786445, metadata !25, metadata !"d", metadata !26, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!29 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !26, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786451, null, metadata !"", metadata !26, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !38, metadata !39, metadata !42}
!32 = metadata !{i32 786445, metadata !30, metadata !"last", metadata !26, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!34 = metadata !{i32 786454, null, metadata !"u_char", metadata !35, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!35 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786454, null, metadata !"__u_char", metadata !35, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!37 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!38 = metadata !{i32 786445, metadata !30, metadata !"end", metadata !26, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !"next", metadata !26, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!41 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !26, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!42 = metadata !{i32 786445, metadata !30, metadata !"failed", metadata !26, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !43} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!43 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !26, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!44 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !26, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!45 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!46 = metadata !{i32 786445, metadata !25, metadata !"max", metadata !26, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!47 = metadata !{i32 786454, null, metadata !"size_t", metadata !35, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!48 = metadata !{i32 786445, metadata !25, metadata !"current", metadata !26, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !40} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!49 = metadata !{i32 786445, metadata !25, metadata !"chain", metadata !26, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!51 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !26, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!52 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !53, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!53 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!54 = metadata !{metadata !55, metadata !174}
!55 = metadata !{i32 786445, metadata !52, metadata !"buf", metadata !53, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!57 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !53, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!58 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !53, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !67, metadata !68, metadata !69, metadata !70, metadata !72, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!60 = metadata !{i32 786445, metadata !58, metadata !"pos", metadata !53, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!61 = metadata !{i32 786445, metadata !58, metadata !"last", metadata !53, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!62 = metadata !{i32 786445, metadata !58, metadata !"file_pos", metadata !53, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!63 = metadata !{i32 786454, null, metadata !"off_t", metadata !53, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!64 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !53, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!65 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !53, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!66 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!67 = metadata !{i32 786445, metadata !58, metadata !"file_last", metadata !53, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !63} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!68 = metadata !{i32 786445, metadata !58, metadata !"start", metadata !53, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!69 = metadata !{i32 786445, metadata !58, metadata !"end", metadata !53, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!70 = metadata !{i32 786445, metadata !58, metadata !"tag", metadata !53, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !71} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!71 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !53, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !58, metadata !"file", metadata !53, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !73} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!74 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !53, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!75 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !76, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!76 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!77 = metadata !{metadata !78, metadata !81, metadata !87, metadata !128, metadata !129, metadata !130, metadata !159, metadata !160}
!78 = metadata !{i32 786445, metadata !75, metadata !"fd", metadata !76, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!79 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !76, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!80 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!81 = metadata !{i32 786445, metadata !75, metadata !"name", metadata !76, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!82 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !13, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!83 = metadata !{i32 786451, null, metadata !"", metadata !35, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86}
!85 = metadata !{i32 786445, metadata !83, metadata !"len", metadata !35, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!86 = metadata !{i32 786445, metadata !83, metadata !"data", metadata !35, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!87 = metadata !{i32 786445, metadata !75, metadata !"info", metadata !76, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!88 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !76, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!89 = metadata !{i32 786451, null, metadata !"stat", metadata !90, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!90 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!91 = metadata !{metadata !92, metadata !96, metadata !98, metadata !101, metadata !103, metadata !105, metadata !107, metadata !109, metadata !110, metadata !111, metadata !112, metadata !115, metadata !117, metadata !124, metadata !125, metadata !126}
!92 = metadata !{i32 786445, metadata !89, metadata !"st_dev", metadata !90, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!93 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !90, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!94 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !90, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!95 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!96 = metadata !{i32 786445, metadata !89, metadata !"__pad1", metadata !90, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!97 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !89, metadata !"__st_ino", metadata !90, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !99} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!99 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !90, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!100 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!101 = metadata !{i32 786445, metadata !89, metadata !"st_mode", metadata !90, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!102 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !90, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!103 = metadata !{i32 786445, metadata !89, metadata !"st_nlink", metadata !90, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !104} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!104 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !90, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!105 = metadata !{i32 786445, metadata !89, metadata !"st_uid", metadata !90, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !106} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!106 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !90, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!107 = metadata !{i32 786445, metadata !89, metadata !"st_gid", metadata !90, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !108} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!108 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !90, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!109 = metadata !{i32 786445, metadata !89, metadata !"st_rdev", metadata !90, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !93} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!110 = metadata !{i32 786445, metadata !89, metadata !"__pad2", metadata !90, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!111 = metadata !{i32 786445, metadata !89, metadata !"st_size", metadata !90, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !64} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!112 = metadata !{i32 786445, metadata !89, metadata !"st_blksize", metadata !90, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !113} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!113 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !90, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!114 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!115 = metadata !{i32 786445, metadata !89, metadata !"st_blocks", metadata !90, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !116} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!116 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !90, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!117 = metadata !{i32 786445, metadata !89, metadata !"st_atim", metadata !90, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !118} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!118 = metadata !{i32 786451, null, metadata !"timespec", metadata !119, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!119 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!120 = metadata !{metadata !121, metadata !123}
!121 = metadata !{i32 786445, metadata !118, metadata !"tv_sec", metadata !119, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !122} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!122 = metadata !{i32 786454, null, metadata !"__time_t", metadata !119, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!123 = metadata !{i32 786445, metadata !118, metadata !"tv_nsec", metadata !119, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !114} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!124 = metadata !{i32 786445, metadata !89, metadata !"st_mtim", metadata !90, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !118} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!125 = metadata !{i32 786445, metadata !89, metadata !"st_ctim", metadata !90, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !118} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!126 = metadata !{i32 786445, metadata !89, metadata !"st_ino", metadata !90, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !127} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!127 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !90, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!128 = metadata !{i32 786445, metadata !75, metadata !"offset", metadata !76, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !63} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!129 = metadata !{i32 786445, metadata !75, metadata !"sys_offset", metadata !76, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !63} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!130 = metadata !{i32 786445, metadata !75, metadata !"log", metadata !76, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!131 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!132 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !76, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!133 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !134, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!134 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!135 = metadata !{metadata !136, metadata !137, metadata !148, metadata !150, metadata !157, metadata !158}
!136 = metadata !{i32 786445, metadata !133, metadata !"log_level", metadata !134, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!137 = metadata !{i32 786445, metadata !133, metadata !"file", metadata !134, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !138} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!139 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !134, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!140 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !141, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!141 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!143 = metadata !{i32 786445, metadata !140, metadata !"fd", metadata !141, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!144 = metadata !{i32 786445, metadata !140, metadata !"name", metadata !141, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!145 = metadata !{i32 786445, metadata !140, metadata !"buffer", metadata !141, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!146 = metadata !{i32 786445, metadata !140, metadata !"pos", metadata !141, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!147 = metadata !{i32 786445, metadata !140, metadata !"last", metadata !141, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !33} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!148 = metadata !{i32 786445, metadata !133, metadata !"connection", metadata !134, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !149} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!149 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !134, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!150 = metadata !{i32 786445, metadata !133, metadata !"handler", metadata !134, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !151} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!151 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !134, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!152 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !33, metadata !155, metadata !33, metadata !47}
!155 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!156 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !134, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!157 = metadata !{i32 786445, metadata !133, metadata !"data", metadata !134, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!158 = metadata !{i32 786445, metadata !133, metadata !"action", metadata !134, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!159 = metadata !{i32 786445, metadata !75, metadata !"valid_info", metadata !76, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !45} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!160 = metadata !{i32 786445, metadata !75, metadata !"directio", metadata !76, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !45} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!161 = metadata !{i32 786445, metadata !58, metadata !"shadow", metadata !53, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !56} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!162 = metadata !{i32 786445, metadata !58, metadata !"temporary", metadata !53, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !45} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!163 = metadata !{i32 786445, metadata !58, metadata !"memory", metadata !53, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !45} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!164 = metadata !{i32 786445, metadata !58, metadata !"mmap", metadata !53, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !45} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!165 = metadata !{i32 786445, metadata !58, metadata !"recycled", metadata !53, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !45} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!166 = metadata !{i32 786445, metadata !58, metadata !"in_file", metadata !53, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !45} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!167 = metadata !{i32 786445, metadata !58, metadata !"flush", metadata !53, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !45} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!168 = metadata !{i32 786445, metadata !58, metadata !"sync", metadata !53, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !45} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!169 = metadata !{i32 786445, metadata !58, metadata !"last_buf", metadata !53, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !45} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!170 = metadata !{i32 786445, metadata !58, metadata !"last_in_chain", metadata !53, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !45} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!171 = metadata !{i32 786445, metadata !58, metadata !"last_shadow", metadata !53, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !45} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!172 = metadata !{i32 786445, metadata !58, metadata !"temp_file", metadata !53, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !45} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!173 = metadata !{i32 786445, metadata !58, metadata !"num", metadata !53, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !80} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!174 = metadata !{i32 786445, metadata !52, metadata !"next", metadata !53, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !175} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!175 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!176 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !53, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!177 = metadata !{i32 786445, metadata !25, metadata !"large", metadata !26, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !178} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!178 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!179 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !26, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!180 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !26, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!181 = metadata !{metadata !182, metadata !183}
!182 = metadata !{i32 786445, metadata !180, metadata !"next", metadata !26, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !178} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!183 = metadata !{i32 786445, metadata !180, metadata !"alloc", metadata !26, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!184 = metadata !{i32 786445, metadata !25, metadata !"cleanup", metadata !26, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !185} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!185 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!186 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !26, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!187 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !26, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!188 = metadata !{metadata !189, metadata !194, metadata !195}
!189 = metadata !{i32 786445, metadata !187, metadata !"handler", metadata !26, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !190} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!190 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !26, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !191} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!191 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{null, metadata !21}
!194 = metadata !{i32 786445, metadata !187, metadata !"data", metadata !26, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!195 = metadata !{i32 786445, metadata !187, metadata !"next", metadata !26, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !185} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!196 = metadata !{i32 786445, metadata !25, metadata !"log", metadata !26, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!197 = metadata !{i32 786445, metadata !14, metadata !"log", metadata !15, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!198 = metadata !{i32 786445, metadata !14, metadata !"new_log", metadata !15, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !132} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!199 = metadata !{i32 786445, metadata !14, metadata !"files", metadata !15, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !200} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!200 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!201 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!202 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !15, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!203 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !204, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!204 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!205 = metadata !{metadata !206, metadata !207, metadata !261, metadata !262, metadata !264, metadata !273, metadata !275, metadata !280, metadata !285, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374}
!206 = metadata !{i32 786445, metadata !203, metadata !"data", metadata !204, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!207 = metadata !{i32 786445, metadata !203, metadata !"read", metadata !204, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !208} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!208 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!209 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !204, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!210 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !13, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!211 = metadata !{metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !239, metadata !240, metadata !241, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259}
!212 = metadata !{i32 786445, metadata !210, metadata !"data", metadata !13, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!213 = metadata !{i32 786445, metadata !210, metadata !"write", metadata !13, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!214 = metadata !{i32 786445, metadata !210, metadata !"accept", metadata !13, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !45} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!215 = metadata !{i32 786445, metadata !210, metadata !"instance", metadata !13, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !45} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!216 = metadata !{i32 786445, metadata !210, metadata !"active", metadata !13, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !45} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!217 = metadata !{i32 786445, metadata !210, metadata !"disabled", metadata !13, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !45} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!218 = metadata !{i32 786445, metadata !210, metadata !"ready", metadata !13, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !45} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!219 = metadata !{i32 786445, metadata !210, metadata !"oneshot", metadata !13, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !45} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!220 = metadata !{i32 786445, metadata !210, metadata !"complete", metadata !13, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !45} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!221 = metadata !{i32 786445, metadata !210, metadata !"eof", metadata !13, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !45} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!222 = metadata !{i32 786445, metadata !210, metadata !"error", metadata !13, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !45} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!223 = metadata !{i32 786445, metadata !210, metadata !"timedout", metadata !13, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !45} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!224 = metadata !{i32 786445, metadata !210, metadata !"timer_set", metadata !13, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !45} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!225 = metadata !{i32 786445, metadata !210, metadata !"delayed", metadata !13, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !45} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!226 = metadata !{i32 786445, metadata !210, metadata !"read_discarded", metadata !13, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !45} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!227 = metadata !{i32 786445, metadata !210, metadata !"unexpected_eof", metadata !13, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !45} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!228 = metadata !{i32 786445, metadata !210, metadata !"deferred_accept", metadata !13, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !45} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!229 = metadata !{i32 786445, metadata !210, metadata !"pending_eof", metadata !13, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !45} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!230 = metadata !{i32 786445, metadata !210, metadata !"posted_ready", metadata !13, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !45} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!231 = metadata !{i32 786445, metadata !210, metadata !"available", metadata !13, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !45} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!232 = metadata !{i32 786445, metadata !210, metadata !"handler", metadata !13, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!233 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !13, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!234 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!236 = metadata !{null, metadata !237}
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!238 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !13, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!239 = metadata !{i32 786445, metadata !210, metadata !"index", metadata !13, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !43} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!240 = metadata !{i32 786445, metadata !210, metadata !"log", metadata !13, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!241 = metadata !{i32 786445, metadata !210, metadata !"timer", metadata !13, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !242} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!242 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !13, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!243 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !244, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!244 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!245 = metadata !{metadata !246, metadata !248, metadata !251, metadata !252, metadata !253, metadata !254}
!246 = metadata !{i32 786445, metadata !243, metadata !"key", metadata !244, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!247 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !244, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!248 = metadata !{i32 786445, metadata !243, metadata !"left", metadata !244, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !249} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!249 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!250 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !244, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!251 = metadata !{i32 786445, metadata !243, metadata !"right", metadata !244, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !249} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!252 = metadata !{i32 786445, metadata !243, metadata !"parent", metadata !244, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !249} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!253 = metadata !{i32 786445, metadata !243, metadata !"color", metadata !244, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!254 = metadata !{i32 786445, metadata !243, metadata !"data", metadata !244, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !34} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!255 = metadata !{i32 786445, metadata !210, metadata !"closed", metadata !13, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!256 = metadata !{i32 786445, metadata !210, metadata !"channel", metadata !13, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !45} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!257 = metadata !{i32 786445, metadata !210, metadata !"resolver", metadata !13, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !45} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!258 = metadata !{i32 786445, metadata !210, metadata !"next", metadata !13, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !237} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!259 = metadata !{i32 786445, metadata !210, metadata !"prev", metadata !13, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !260} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!260 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!261 = metadata !{i32 786445, metadata !203, metadata !"write", metadata !204, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !208} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!262 = metadata !{i32 786445, metadata !203, metadata !"fd", metadata !204, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !263} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!263 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !204, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!264 = metadata !{i32 786445, metadata !203, metadata !"recv", metadata !204, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !265} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!265 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !204, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!266 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!268 = metadata !{metadata !269, metadata !271, metadata !33, metadata !47}
!269 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !204, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!270 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !204, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!271 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !272} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!272 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !204, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!273 = metadata !{i32 786445, metadata !203, metadata !"send", metadata !204, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !274} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!274 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !204, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!275 = metadata !{i32 786445, metadata !203, metadata !"recv_chain", metadata !204, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !276} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!276 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !204, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !269, metadata !271, metadata !50}
!280 = metadata !{i32 786445, metadata !203, metadata !"send_chain", metadata !204, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !281} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!281 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !204, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!282 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = metadata !{metadata !50, metadata !271, metadata !50, metadata !63}
!285 = metadata !{i32 786445, metadata !203, metadata !"listening", metadata !204, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !286} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!286 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !287} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!287 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !204, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!288 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !204, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!289 = metadata !{metadata !290, metadata !291, metadata !302, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341}
!290 = metadata !{i32 786445, metadata !288, metadata !"fd", metadata !204, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!291 = metadata !{i32 786445, metadata !288, metadata !"sockaddr", metadata !204, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !292} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!292 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!293 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !294, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!294 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!295 = metadata !{metadata !296, metadata !298}
!296 = metadata !{i32 786445, metadata !293, metadata !"sa_family", metadata !294, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !297} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!297 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !294, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!298 = metadata !{i32 786445, metadata !293, metadata !"sa_data", metadata !294, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !299} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!299 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !10, metadata !300, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!300 = metadata !{metadata !301}
!301 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!302 = metadata !{i32 786445, metadata !288, metadata !"socklen", metadata !204, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !303} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!303 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !204, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!304 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !204, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!305 = metadata !{i32 786445, metadata !288, metadata !"addr_text_max_len", metadata !204, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !47} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!306 = metadata !{i32 786445, metadata !288, metadata !"addr_text", metadata !204, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!307 = metadata !{i32 786445, metadata !288, metadata !"type", metadata !204, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!308 = metadata !{i32 786445, metadata !288, metadata !"backlog", metadata !204, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !80} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!309 = metadata !{i32 786445, metadata !288, metadata !"rcvbuf", metadata !204, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!310 = metadata !{i32 786445, metadata !288, metadata !"sndbuf", metadata !204, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !80} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!311 = metadata !{i32 786445, metadata !288, metadata !"keepidle", metadata !204, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !80} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!312 = metadata !{i32 786445, metadata !288, metadata !"keepintvl", metadata !204, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !80} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!313 = metadata !{i32 786445, metadata !288, metadata !"keepcnt", metadata !204, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !80} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!314 = metadata !{i32 786445, metadata !288, metadata !"handler", metadata !204, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !315} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!315 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !204, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !316} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!316 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{null, metadata !271}
!319 = metadata !{i32 786445, metadata !288, metadata !"servers", metadata !204, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!320 = metadata !{i32 786445, metadata !288, metadata !"log", metadata !204, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !132} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!321 = metadata !{i32 786445, metadata !288, metadata !"logp", metadata !204, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !131} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!322 = metadata !{i32 786445, metadata !288, metadata !"pool_size", metadata !204, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!323 = metadata !{i32 786445, metadata !288, metadata !"post_accept_buffer_size", metadata !204, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !47} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!324 = metadata !{i32 786445, metadata !288, metadata !"post_accept_timeout", metadata !204, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !325} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!325 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !204, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!326 = metadata !{i32 786445, metadata !288, metadata !"previous", metadata !204, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !286} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!327 = metadata !{i32 786445, metadata !288, metadata !"connection", metadata !204, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !271} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!328 = metadata !{i32 786445, metadata !288, metadata !"open", metadata !204, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !45} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!329 = metadata !{i32 786445, metadata !288, metadata !"remain", metadata !204, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !45} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!330 = metadata !{i32 786445, metadata !288, metadata !"ignore", metadata !204, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !45} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!331 = metadata !{i32 786445, metadata !288, metadata !"bound", metadata !204, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !45} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!332 = metadata !{i32 786445, metadata !288, metadata !"inherited", metadata !204, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !45} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!333 = metadata !{i32 786445, metadata !288, metadata !"nonblocking_accept", metadata !204, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !45} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!334 = metadata !{i32 786445, metadata !288, metadata !"listen", metadata !204, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !45} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!335 = metadata !{i32 786445, metadata !288, metadata !"nonblocking", metadata !204, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !45} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!336 = metadata !{i32 786445, metadata !288, metadata !"shared", metadata !204, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !45} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!337 = metadata !{i32 786445, metadata !288, metadata !"addr_ntop", metadata !204, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !45} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!338 = metadata !{i32 786445, metadata !288, metadata !"keepalive", metadata !204, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !45} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!339 = metadata !{i32 786445, metadata !288, metadata !"deferred_accept", metadata !204, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !45} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!340 = metadata !{i32 786445, metadata !288, metadata !"delete_deferred", metadata !204, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !45} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!341 = metadata !{i32 786445, metadata !288, metadata !"add_deferred", metadata !204, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !45} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!342 = metadata !{i32 786445, metadata !203, metadata !"sent", metadata !204, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !63} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!343 = metadata !{i32 786445, metadata !203, metadata !"log", metadata !204, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!344 = metadata !{i32 786445, metadata !203, metadata !"pool", metadata !204, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!345 = metadata !{i32 786445, metadata !203, metadata !"sockaddr", metadata !204, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !292} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!346 = metadata !{i32 786445, metadata !203, metadata !"socklen", metadata !204, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !303} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!347 = metadata !{i32 786445, metadata !203, metadata !"addr_text", metadata !204, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !82} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!348 = metadata !{i32 786445, metadata !203, metadata !"local_sockaddr", metadata !204, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !292} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!349 = metadata !{i32 786445, metadata !203, metadata !"buffer", metadata !204, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!350 = metadata !{i32 786445, metadata !203, metadata !"queue", metadata !204, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !351} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!351 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !204, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!352 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !353, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!353 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!354 = metadata !{metadata !355, metadata !358}
!355 = metadata !{i32 786445, metadata !352, metadata !"prev", metadata !353, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !356} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!356 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !357} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!357 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !353, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!358 = metadata !{i32 786445, metadata !352, metadata !"next", metadata !353, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !356} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!359 = metadata !{i32 786445, metadata !203, metadata !"number", metadata !204, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !149} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!360 = metadata !{i32 786445, metadata !203, metadata !"requests", metadata !204, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !43} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!361 = metadata !{i32 786445, metadata !203, metadata !"buffered", metadata !204, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !45} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!362 = metadata !{i32 786445, metadata !203, metadata !"log_error", metadata !204, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !45} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!363 = metadata !{i32 786445, metadata !203, metadata !"single_connection", metadata !204, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !45} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!364 = metadata !{i32 786445, metadata !203, metadata !"unexpected_eof", metadata !204, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !45} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!365 = metadata !{i32 786445, metadata !203, metadata !"timedout", metadata !204, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !45} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!366 = metadata !{i32 786445, metadata !203, metadata !"error", metadata !204, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !45} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!367 = metadata !{i32 786445, metadata !203, metadata !"destroyed", metadata !204, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !45} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!368 = metadata !{i32 786445, metadata !203, metadata !"idle", metadata !204, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !45} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!369 = metadata !{i32 786445, metadata !203, metadata !"reusable", metadata !204, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !45} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!370 = metadata !{i32 786445, metadata !203, metadata !"close", metadata !204, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !45} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!371 = metadata !{i32 786445, metadata !203, metadata !"sendfile", metadata !204, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !45} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!372 = metadata !{i32 786445, metadata !203, metadata !"sndlowat", metadata !204, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !45} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!373 = metadata !{i32 786445, metadata !203, metadata !"tcp_nodelay", metadata !204, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !45} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!374 = metadata !{i32 786445, metadata !203, metadata !"tcp_nopush", metadata !204, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !45} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!375 = metadata !{i32 786445, metadata !14, metadata !"free_connections", metadata !15, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !201} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!376 = metadata !{i32 786445, metadata !14, metadata !"free_connection_n", metadata !15, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !43} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!377 = metadata !{i32 786445, metadata !14, metadata !"reusable_connections_queue", metadata !15, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !351} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!378 = metadata !{i32 786445, metadata !14, metadata !"listening", metadata !15, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !379} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!379 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !15, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !380} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!380 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !381, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!381 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!382 = metadata !{metadata !383, metadata !384, metadata !385, metadata !386, metadata !387}
!383 = metadata !{i32 786445, metadata !380, metadata !"elts", metadata !381, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!384 = metadata !{i32 786445, metadata !380, metadata !"nelts", metadata !381, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!385 = metadata !{i32 786445, metadata !380, metadata !"size", metadata !381, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!386 = metadata !{i32 786445, metadata !380, metadata !"nalloc", metadata !381, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !43} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!387 = metadata !{i32 786445, metadata !380, metadata !"pool", metadata !381, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!388 = metadata !{i32 786445, metadata !14, metadata !"pathes", metadata !15, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !379} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!389 = metadata !{i32 786445, metadata !14, metadata !"open_files", metadata !15, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !390} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!390 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !15, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !391} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!391 = metadata !{i32 786451, null, metadata !"", metadata !392, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!392 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!393 = metadata !{metadata !394, metadata !402, metadata !403, metadata !404, metadata !405}
!394 = metadata !{i32 786445, metadata !391, metadata !"last", metadata !392, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !395} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!395 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !396} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!396 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !392, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!397 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !392, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!398 = metadata !{metadata !399, metadata !400, metadata !401}
!399 = metadata !{i32 786445, metadata !397, metadata !"elts", metadata !392, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!400 = metadata !{i32 786445, metadata !397, metadata !"nelts", metadata !392, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!401 = metadata !{i32 786445, metadata !397, metadata !"next", metadata !392, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !395} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!402 = metadata !{i32 786445, metadata !391, metadata !"part", metadata !392, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !396} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!403 = metadata !{i32 786445, metadata !391, metadata !"size", metadata !392, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!404 = metadata !{i32 786445, metadata !391, metadata !"nalloc", metadata !392, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !43} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!405 = metadata !{i32 786445, metadata !391, metadata !"pool", metadata !392, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!406 = metadata !{i32 786445, metadata !14, metadata !"shared_memory", metadata !15, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !390} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!407 = metadata !{i32 786445, metadata !14, metadata !"connection_n", metadata !15, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !43} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!408 = metadata !{i32 786445, metadata !14, metadata !"files_n", metadata !15, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !43} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!409 = metadata !{i32 786445, metadata !14, metadata !"connections", metadata !15, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !201} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!410 = metadata !{i32 786445, metadata !14, metadata !"read_events", metadata !15, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !208} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!411 = metadata !{i32 786445, metadata !14, metadata !"write_events", metadata !15, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !208} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!412 = metadata !{i32 786445, metadata !14, metadata !"old_cycle", metadata !15, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !413} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!413 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !414} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!414 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !15, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!415 = metadata !{i32 786445, metadata !14, metadata !"conf_file", metadata !15, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !82} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!416 = metadata !{i32 786445, metadata !14, metadata !"conf_param", metadata !15, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !82} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!417 = metadata !{i32 786445, metadata !14, metadata !"conf_prefix", metadata !15, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !82} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!418 = metadata !{i32 786445, metadata !14, metadata !"prefix", metadata !15, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !82} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!419 = metadata !{i32 786445, metadata !14, metadata !"lock_file", metadata !15, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !82} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!420 = metadata !{i32 786445, metadata !14, metadata !"hostname", metadata !15, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !82} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!421 = metadata !{metadata !422}
!422 = metadata !{metadata !423, metadata !424, metadata !425}
!423 = metadata !{i32 786689, metadata !5, metadata !"cycle", metadata !6, i32 16777643, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 427]
!424 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 33554859, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 427]
!425 = metadata !{i32 786688, metadata !426, metadata !"epcf", metadata !6, i32 429, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [epcf] [line 429]
!426 = metadata !{i32 786443, metadata !5, i32 428, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!427 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !428} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_epoll_conf_t]
!428 = metadata !{i32 786454, null, metadata !"ngx_epoll_conf_t", metadata !6, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !429} ; [ DW_TAG_typedef ] [ngx_epoll_conf_t] [line 38, size 0, align 0, offset 0] [from ]
!429 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 36, i64 64, i64 32, i32 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 64, align 32, offset 0] [from ]
!430 = metadata !{metadata !431, metadata !432}
!431 = metadata !{i32 786445, metadata !429, metadata !"events", metadata !6, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [events] [line 37, size 32, align 32, offset 0] [from ngx_uint_t]
!432 = metadata !{i32 786445, metadata !429, metadata !"aio_requests", metadata !6, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [aio_requests] [line 38, size 32, align 32, offset 32] [from ngx_uint_t]
!433 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_create_conf", metadata !"ngx_epoll_create_conf", metadata !"", metadata !6, i32 415, metadata !434, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*)* @ngx_epoll_create_conf, null, null, metadata !436, i32 416} ; [ DW_TAG_subprogram ] [line 415] [local] [def] [scope 416] [ngx_epoll_create_conf]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!435 = metadata !{metadata !21, metadata !11}
!436 = metadata !{metadata !437}
!437 = metadata !{metadata !438, metadata !439}
!438 = metadata !{i32 786689, metadata !433, metadata !"cycle", metadata !6, i32 16777631, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 415]
!439 = metadata !{i32 786688, metadata !440, metadata !"epcf", metadata !6, i32 417, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [epcf] [line 417]
!440 = metadata !{i32 786443, metadata !433, i32 416, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!441 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_process_events", metadata !"ngx_epoll_process_events", metadata !"", metadata !6, i32 274, metadata !442, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*, i32, i32)* @ngx_epoll_process_events, null, null, metadata !447, i32 275} ; [ DW_TAG_subprogram ] [line 274] [local] [def] [scope 275] [ngx_epoll_process_events]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !11, metadata !325, metadata !43}
!444 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !445} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!445 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !446} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!446 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!447 = metadata !{metadata !448}
!448 = metadata !{metadata !449, metadata !450, metadata !451, metadata !452, metadata !454, metadata !456, metadata !457, metadata !458, metadata !459, metadata !461, metadata !462, metadata !463, metadata !464}
!449 = metadata !{i32 786689, metadata !441, metadata !"cycle", metadata !6, i32 16777490, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 274]
!450 = metadata !{i32 786689, metadata !441, metadata !"timer", metadata !6, i32 33554706, metadata !325, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 274]
!451 = metadata !{i32 786689, metadata !441, metadata !"flags", metadata !6, i32 50331922, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 274]
!452 = metadata !{i32 786688, metadata !453, metadata !"events", metadata !6, i32 276, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [events] [line 276]
!453 = metadata !{i32 786443, metadata !441, i32 275, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!454 = metadata !{i32 786688, metadata !453, metadata !"revents", metadata !6, i32 277, metadata !455, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [revents] [line 277]
!455 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!456 = metadata !{i32 786688, metadata !453, metadata !"instance", metadata !6, i32 278, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [instance] [line 278]
!457 = metadata !{i32 786688, metadata !453, metadata !"i", metadata !6, i32 279, metadata !444, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 279]
!458 = metadata !{i32 786688, metadata !453, metadata !"level", metadata !6, i32 280, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 280]
!459 = metadata !{i32 786688, metadata !453, metadata !"err", metadata !6, i32 281, metadata !460, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 281]
!460 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!461 = metadata !{i32 786688, metadata !453, metadata !"rev", metadata !6, i32 282, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rev] [line 282]
!462 = metadata !{i32 786688, metadata !453, metadata !"wev", metadata !6, i32 283, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wev] [line 283]
!463 = metadata !{i32 786688, metadata !453, metadata !"queue", metadata !6, i32 284, metadata !260, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [queue] [line 284]
!464 = metadata !{i32 786688, metadata !453, metadata !"c", metadata !6, i32 285, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 285]
!465 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_del_connection", metadata !"ngx_epoll_del_connection", metadata !"", metadata !6, i32 246, metadata !466, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_connection_s*, i32)* @ngx_epoll_del_connection, null, null, metadata !468, i32 247} ; [ DW_TAG_subprogram ] [line 246] [local] [def] [scope 247] [ngx_epoll_del_connection]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!467 = metadata !{metadata !444, metadata !201, metadata !43}
!468 = metadata !{metadata !469}
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !474}
!470 = metadata !{i32 786689, metadata !465, metadata !"c", metadata !6, i32 16777462, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 246]
!471 = metadata !{i32 786689, metadata !465, metadata !"flags", metadata !6, i32 33554678, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 246]
!472 = metadata !{i32 786688, metadata !473, metadata !"op", metadata !6, i32 248, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 248]
!473 = metadata !{i32 786443, metadata !465, i32 247, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!474 = metadata !{i32 786688, metadata !473, metadata !"ee", metadata !6, i32 249, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee] [line 249]
!475 = metadata !{i32 786451, null, metadata !"epoll_event", metadata !476, i32 89, i64 96, i64 8, i32 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_structure_type ] [epoll_event] [line 89, size 96, align 8, offset 0] [from ]
!476 = metadata !{i32 786473, metadata !"/usr/include/sys/epoll.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!477 = metadata !{metadata !478, metadata !479}
!478 = metadata !{i32 786445, metadata !475, metadata !"events", metadata !476, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !455} ; [ DW_TAG_member ] [events] [line 91, size 32, align 32, offset 0] [from uint32_t]
!479 = metadata !{i32 786445, metadata !475, metadata !"data", metadata !476, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !480} ; [ DW_TAG_member ] [data] [line 92, size 64, align 32, offset 32] [from epoll_data_t]
!480 = metadata !{i32 786454, null, metadata !"epoll_data_t", metadata !476, i32 87, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_typedef ] [epoll_data_t] [line 87, size 0, align 0, offset 0] [from epoll_data]
!481 = metadata !{i32 786455, null, metadata !"epoll_data", metadata !476, i32 81, i64 64, i64 32, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_union_type ] [epoll_data] [line 81, size 64, align 32, offset 0] [from ]
!482 = metadata !{metadata !483, metadata !484, metadata !485, metadata !486}
!483 = metadata !{i32 786445, metadata !481, metadata !"ptr", metadata !476, i32 83, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [ptr] [line 83, size 32, align 32, offset 0] [from ]
!484 = metadata !{i32 786445, metadata !481, metadata !"fd", metadata !476, i32 84, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [fd] [line 84, size 32, align 32, offset 0] [from int]
!485 = metadata !{i32 786445, metadata !481, metadata !"u32", metadata !476, i32 85, i64 32, i64 32, i64 0, i32 0, metadata !455} ; [ DW_TAG_member ] [u32] [line 85, size 32, align 32, offset 0] [from uint32_t]
!486 = metadata !{i32 786445, metadata !481, metadata !"u64", metadata !476, i32 86, i64 64, i64 32, i64 0, i32 0, metadata !487} ; [ DW_TAG_member ] [u64] [line 86, size 64, align 32, offset 0] [from uint64_t]
!487 = metadata !{i32 786454, null, metadata !"uint64_t", metadata !476, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [uint64_t] [line 59, size 0, align 0, offset 0] [from long long unsigned int]
!488 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_add_connection", metadata !"ngx_epoll_add_connection", metadata !"", metadata !6, i32 230, metadata !489, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_connection_s*)* @ngx_epoll_add_connection, null, null, metadata !491, i32 231} ; [ DW_TAG_subprogram ] [line 230] [local] [def] [scope 231] [ngx_epoll_add_connection]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{metadata !444, metadata !201}
!491 = metadata !{metadata !492}
!492 = metadata !{metadata !493, metadata !494}
!493 = metadata !{i32 786689, metadata !488, metadata !"c", metadata !6, i32 16777446, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 230]
!494 = metadata !{i32 786688, metadata !495, metadata !"ee", metadata !6, i32 232, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee] [line 232]
!495 = metadata !{i32 786443, metadata !488, i32 231, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!496 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_del_event", metadata !"ngx_epoll_del_event", metadata !"", metadata !6, i32 185, metadata !497, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_del_event, null, null, metadata !499, i32 186} ; [ DW_TAG_subprogram ] [line 185] [local] [def] [scope 186] [ngx_epoll_del_event]
!497 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!498 = metadata !{metadata !444, metadata !208, metadata !444, metadata !43}
!499 = metadata !{metadata !500}
!500 = metadata !{metadata !501, metadata !502, metadata !503, metadata !504, metadata !506, metadata !507, metadata !508, metadata !509}
!501 = metadata !{i32 786689, metadata !496, metadata !"ev", metadata !6, i32 16777401, metadata !208, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 185]
!502 = metadata !{i32 786689, metadata !496, metadata !"event", metadata !6, i32 33554617, metadata !444, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 185]
!503 = metadata !{i32 786689, metadata !496, metadata !"flags", metadata !6, i32 50331833, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 185]
!504 = metadata !{i32 786688, metadata !505, metadata !"op", metadata !6, i32 187, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 187]
!505 = metadata !{i32 786443, metadata !496, i32 186, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!506 = metadata !{i32 786688, metadata !505, metadata !"prev", metadata !6, i32 188, metadata !455, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 188]
!507 = metadata !{i32 786688, metadata !505, metadata !"e", metadata !6, i32 189, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 189]
!508 = metadata !{i32 786688, metadata !505, metadata !"c", metadata !6, i32 190, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 190]
!509 = metadata !{i32 786688, metadata !505, metadata !"ee", metadata !6, i32 191, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee] [line 191]
!510 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_add_event", metadata !"ngx_epoll_add_event", metadata !"", metadata !6, i32 142, metadata !497, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_event_s*, i32, i32)* @ngx_epoll_add_event, null, null, metadata !511, i32 143} ; [ DW_TAG_subprogram ] [line 142] [local] [def] [scope 143] [ngx_epoll_add_event]
!511 = metadata !{metadata !512}
!512 = metadata !{metadata !513, metadata !514, metadata !515, metadata !516, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!513 = metadata !{i32 786689, metadata !510, metadata !"ev", metadata !6, i32 16777358, metadata !208, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 142]
!514 = metadata !{i32 786689, metadata !510, metadata !"event", metadata !6, i32 33554574, metadata !444, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 142]
!515 = metadata !{i32 786689, metadata !510, metadata !"flags", metadata !6, i32 50331790, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 142]
!516 = metadata !{i32 786688, metadata !517, metadata !"op", metadata !6, i32 144, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 144]
!517 = metadata !{i32 786443, metadata !510, i32 143, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!518 = metadata !{i32 786688, metadata !517, metadata !"events", metadata !6, i32 145, metadata !455, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [events] [line 145]
!519 = metadata !{i32 786688, metadata !517, metadata !"prev", metadata !6, i32 146, metadata !455, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 146]
!520 = metadata !{i32 786688, metadata !517, metadata !"e", metadata !6, i32 147, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 147]
!521 = metadata !{i32 786688, metadata !517, metadata !"c", metadata !6, i32 148, metadata !201, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 148]
!522 = metadata !{i32 786688, metadata !517, metadata !"ee", metadata !6, i32 149, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee] [line 149]
!523 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_done", metadata !"ngx_epoll_done", metadata !"", metadata !6, i32 128, metadata !524, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_cycle_s*)* @ngx_epoll_done, null, null, metadata !526, i32 129} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [scope 129] [ngx_epoll_done]
!524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!525 = metadata !{null, metadata !11}
!526 = metadata !{metadata !527}
!527 = metadata !{metadata !528}
!528 = metadata !{i32 786689, metadata !523, metadata !"cycle", metadata !6, i32 16777344, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 128]
!529 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_epoll_init", metadata !"ngx_epoll_init", metadata !"", metadata !6, i32 94, metadata !530, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*, i32)* @ngx_epoll_init, null, null, metadata !532, i32 95} ; [ DW_TAG_subprogram ] [line 94] [local] [def] [scope 95] [ngx_epoll_init]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!531 = metadata !{metadata !444, metadata !11, metadata !325}
!532 = metadata !{metadata !533}
!533 = metadata !{metadata !534, metadata !535, metadata !536}
!534 = metadata !{i32 786689, metadata !529, metadata !"cycle", metadata !6, i32 16777310, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 94]
!535 = metadata !{i32 786689, metadata !529, metadata !"timer", metadata !6, i32 33554526, metadata !325, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 94]
!536 = metadata !{i32 786688, metadata !537, metadata !"epcf", metadata !6, i32 96, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [epcf] [line 96]
!537 = metadata !{i32 786443, metadata !529, i32 95, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!538 = metadata !{metadata !539}
!539 = metadata !{metadata !540, metadata !573, metadata !646, metadata !647, metadata !649, metadata !650, metadata !654}
!540 = metadata !{i32 786484, i32 0, null, metadata !"ngx_epoll_module_ctx", metadata !"ngx_epoll_module_ctx", metadata !"", metadata !6, i32 57, metadata !541, i32 0, i32 1, %struct.ngx_event_module_t* @ngx_epoll_module_ctx} ; [ DW_TAG_variable ] [ngx_epoll_module_ctx] [line 57] [def]
!541 = metadata !{i32 786454, null, metadata !"ngx_event_module_t", metadata !6, i32 492, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [ngx_event_module_t] [line 492, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 485, i64 416, i64 32, i32 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 485, size 416, align 32, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !546, metadata !548, metadata !550}
!544 = metadata !{i32 786445, metadata !542, metadata !"name", metadata !13, i32 486, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_member ] [name] [line 486, size 32, align 32, offset 0] [from ]
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!546 = metadata !{i32 786445, metadata !542, metadata !"create_conf", metadata !13, i32 488, i64 32, i64 32, i64 32, i32 0, metadata !547} ; [ DW_TAG_member ] [create_conf] [line 488, size 32, align 32, offset 32] [from ]
!547 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !434} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!548 = metadata !{i32 786445, metadata !542, metadata !"init_conf", metadata !13, i32 489, i64 32, i64 32, i64 64, i32 0, metadata !549} ; [ DW_TAG_member ] [init_conf] [line 489, size 32, align 32, offset 64] [from ]
!549 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!550 = metadata !{i32 786445, metadata !542, metadata !"actions", metadata !13, i32 491, i64 320, i64 32, i64 96, i32 0, metadata !551} ; [ DW_TAG_member ] [actions] [line 491, size 320, align 32, offset 96] [from ngx_event_actions_t]
!551 = metadata !{i32 786454, null, metadata !"ngx_event_actions_t", metadata !13, i32 240, i64 0, i64 0, i64 0, i32 0, metadata !552} ; [ DW_TAG_typedef ] [ngx_event_actions_t] [line 240, size 0, align 0, offset 0] [from ]
!552 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 224, i64 320, i64 32, i32 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 224, size 320, align 32, offset 0] [from ]
!553 = metadata !{metadata !554, metadata !556, metadata !557, metadata !558, metadata !559, metadata !561, metadata !563, metadata !567, metadata !569, metadata !571}
!554 = metadata !{i32 786445, metadata !552, metadata !"add", metadata !13, i32 225, i64 32, i64 32, i64 0, i32 0, metadata !555} ; [ DW_TAG_member ] [add] [line 225, size 32, align 32, offset 0] [from ]
!555 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!556 = metadata !{i32 786445, metadata !552, metadata !"del", metadata !13, i32 226, i64 32, i64 32, i64 32, i32 0, metadata !555} ; [ DW_TAG_member ] [del] [line 226, size 32, align 32, offset 32] [from ]
!557 = metadata !{i32 786445, metadata !552, metadata !"enable", metadata !13, i32 228, i64 32, i64 32, i64 64, i32 0, metadata !555} ; [ DW_TAG_member ] [enable] [line 228, size 32, align 32, offset 64] [from ]
!558 = metadata !{i32 786445, metadata !552, metadata !"disable", metadata !13, i32 229, i64 32, i64 32, i64 96, i32 0, metadata !555} ; [ DW_TAG_member ] [disable] [line 229, size 32, align 32, offset 96] [from ]
!559 = metadata !{i32 786445, metadata !552, metadata !"add_conn", metadata !13, i32 231, i64 32, i64 32, i64 128, i32 0, metadata !560} ; [ DW_TAG_member ] [add_conn] [line 231, size 32, align 32, offset 128] [from ]
!560 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!561 = metadata !{i32 786445, metadata !552, metadata !"del_conn", metadata !13, i32 232, i64 32, i64 32, i64 160, i32 0, metadata !562} ; [ DW_TAG_member ] [del_conn] [line 232, size 32, align 32, offset 160] [from ]
!562 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!563 = metadata !{i32 786445, metadata !552, metadata !"process_changes", metadata !13, i32 234, i64 32, i64 32, i64 192, i32 0, metadata !564} ; [ DW_TAG_member ] [process_changes] [line 234, size 32, align 32, offset 192] [from ]
!564 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!566 = metadata !{metadata !444, metadata !11, metadata !43}
!567 = metadata !{i32 786445, metadata !552, metadata !"process_events", metadata !13, i32 235, i64 32, i64 32, i64 224, i32 0, metadata !568} ; [ DW_TAG_member ] [process_events] [line 235, size 32, align 32, offset 224] [from ]
!568 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!569 = metadata !{i32 786445, metadata !552, metadata !"init", metadata !13, i32 238, i64 32, i64 32, i64 256, i32 0, metadata !570} ; [ DW_TAG_member ] [init] [line 238, size 32, align 32, offset 256] [from ]
!570 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !530} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!571 = metadata !{i32 786445, metadata !552, metadata !"done", metadata !13, i32 239, i64 32, i64 32, i64 288, i32 0, metadata !572} ; [ DW_TAG_member ] [done] [line 239, size 32, align 32, offset 288] [from ]
!572 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !524} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!573 = metadata !{i32 786484, i32 0, null, metadata !"ngx_epoll_module", metadata !"ngx_epoll_module", metadata !"", metadata !6, i32 71, metadata !574, i32 0, i32 1, %struct.ngx_module_s* @ngx_epoll_module} ; [ DW_TAG_variable ] [ngx_epoll_module] [line 71] [def]
!574 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !575} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!575 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !141, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!576 = metadata !{metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !624, metadata !625, metadata !629, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645}
!577 = metadata !{i32 786445, metadata !575, metadata !"ctx_index", metadata !141, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!578 = metadata !{i32 786445, metadata !575, metadata !"index", metadata !141, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!579 = metadata !{i32 786445, metadata !575, metadata !"spare0", metadata !141, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!580 = metadata !{i32 786445, metadata !575, metadata !"spare1", metadata !141, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !43} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!581 = metadata !{i32 786445, metadata !575, metadata !"spare2", metadata !141, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!582 = metadata !{i32 786445, metadata !575, metadata !"spare3", metadata !141, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !43} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!583 = metadata !{i32 786445, metadata !575, metadata !"version", metadata !141, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!584 = metadata !{i32 786445, metadata !575, metadata !"ctx", metadata !141, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!585 = metadata !{i32 786445, metadata !575, metadata !"commands", metadata !141, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !586} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!586 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !587} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!587 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !141, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !588} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!588 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !141, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !589, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!589 = metadata !{metadata !590, metadata !591, metadata !592, metadata !621, metadata !622, metadata !623}
!590 = metadata !{i32 786445, metadata !588, metadata !"name", metadata !141, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!591 = metadata !{i32 786445, metadata !588, metadata !"type", metadata !141, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!592 = metadata !{i32 786445, metadata !588, metadata !"set", metadata !141, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !593} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!593 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!595 = metadata !{metadata !9, metadata !596, metadata !586, metadata !21}
!596 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !597} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!597 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !141, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !598} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!598 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !141, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !599, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!599 = metadata !{metadata !600, metadata !601, metadata !603, metadata !604, metadata !605, metadata !606, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !620}
!600 = metadata !{i32 786445, metadata !598, metadata !"name", metadata !141, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!601 = metadata !{i32 786445, metadata !598, metadata !"args", metadata !141, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !602} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!602 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !379} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!603 = metadata !{i32 786445, metadata !598, metadata !"cycle", metadata !141, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!604 = metadata !{i32 786445, metadata !598, metadata !"pool", metadata !141, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !23} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!605 = metadata !{i32 786445, metadata !598, metadata !"temp_pool", metadata !141, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!606 = metadata !{i32 786445, metadata !598, metadata !"conf_file", metadata !141, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !607} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!608 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !141, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !609} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!609 = metadata !{i32 786451, null, metadata !"", metadata !141, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!610 = metadata !{metadata !611, metadata !612, metadata !613}
!611 = metadata !{i32 786445, metadata !609, metadata !"file", metadata !141, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!612 = metadata !{i32 786445, metadata !609, metadata !"buffer", metadata !141, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !56} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!613 = metadata !{i32 786445, metadata !609, metadata !"line", metadata !141, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!614 = metadata !{i32 786445, metadata !598, metadata !"log", metadata !141, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !131} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!615 = metadata !{i32 786445, metadata !598, metadata !"ctx", metadata !141, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!616 = metadata !{i32 786445, metadata !598, metadata !"module_type", metadata !141, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !43} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!617 = metadata !{i32 786445, metadata !598, metadata !"cmd_type", metadata !141, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !43} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!618 = metadata !{i32 786445, metadata !598, metadata !"handler", metadata !141, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !619} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!619 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !141, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !593} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!620 = metadata !{i32 786445, metadata !598, metadata !"handler_conf", metadata !141, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !9} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!621 = metadata !{i32 786445, metadata !588, metadata !"conf", metadata !141, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!622 = metadata !{i32 786445, metadata !588, metadata !"offset", metadata !141, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !43} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!623 = metadata !{i32 786445, metadata !588, metadata !"post", metadata !141, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!624 = metadata !{i32 786445, metadata !575, metadata !"type", metadata !141, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !43} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!625 = metadata !{i32 786445, metadata !575, metadata !"init_master", metadata !141, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !626} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!626 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !627} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!628 = metadata !{metadata !444, metadata !131}
!629 = metadata !{i32 786445, metadata !575, metadata !"init_module", metadata !141, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !630} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!630 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !631} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!631 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!632 = metadata !{metadata !444, metadata !11}
!633 = metadata !{i32 786445, metadata !575, metadata !"init_process", metadata !141, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !630} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!634 = metadata !{i32 786445, metadata !575, metadata !"init_thread", metadata !141, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !630} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!635 = metadata !{i32 786445, metadata !575, metadata !"exit_thread", metadata !141, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !572} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!636 = metadata !{i32 786445, metadata !575, metadata !"exit_process", metadata !141, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !572} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!637 = metadata !{i32 786445, metadata !575, metadata !"exit_master", metadata !141, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !572} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!638 = metadata !{i32 786445, metadata !575, metadata !"spare_hook0", metadata !141, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!639 = metadata !{i32 786445, metadata !575, metadata !"spare_hook1", metadata !141, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!640 = metadata !{i32 786445, metadata !575, metadata !"spare_hook2", metadata !141, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!641 = metadata !{i32 786445, metadata !575, metadata !"spare_hook3", metadata !141, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!642 = metadata !{i32 786445, metadata !575, metadata !"spare_hook4", metadata !141, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!643 = metadata !{i32 786445, metadata !575, metadata !"spare_hook5", metadata !141, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!644 = metadata !{i32 786445, metadata !575, metadata !"spare_hook6", metadata !141, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!645 = metadata !{i32 786445, metadata !575, metadata !"spare_hook7", metadata !141, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!646 = metadata !{i32 786484, i32 0, null, metadata !"nevents", metadata !"nevents", metadata !"", metadata !6, i32 52, metadata !43, i32 1, i32 1, i32* @nevents} ; [ DW_TAG_variable ] [nevents] [line 52] [local] [def]
!647 = metadata !{i32 786484, i32 0, null, metadata !"event_list", metadata !"event_list", metadata !"", metadata !6, i32 51, metadata !648, i32 1, i32 1, %struct.epoll_event** @event_list} ; [ DW_TAG_variable ] [event_list] [line 51] [local] [def]
!648 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from epoll_event]
!649 = metadata !{i32 786484, i32 0, null, metadata !"ep", metadata !"ep", metadata !"", metadata !6, i32 50, metadata !80, i32 1, i32 1, i32* @ep} ; [ DW_TAG_variable ] [ep] [line 50] [local] [def]
!650 = metadata !{i32 786484, i32 0, null, metadata !"ngx_epoll_commands", metadata !"ngx_epoll_commands", metadata !"", metadata !6, i32 56, metadata !651, i32 1, i32 1, [3 x %struct.ngx_command_s]* @ngx_epoll_commands} ; [ DW_TAG_variable ] [ngx_epoll_commands] [line 56] [local] [def]
!651 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 672, i64 32, i32 0, i32 0, metadata !587, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 672, align 32, offset 0] [from ngx_command_t]
!652 = metadata !{metadata !653}
!653 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!654 = metadata !{i32 786484, i32 0, null, metadata !"epoll_name", metadata !"epoll_name", metadata !"", metadata !6, i32 55, metadata !82, i32 1, i32 1, %struct.ngx_str_t* @epoll_name} ; [ DW_TAG_variable ] [epoll_name] [line 55] [local] [def]
!655 = metadata !{i32 415, i32 0, metadata !433, null}
!656 = metadata !{i32 418, i32 0, metadata !440, null}
!657 = metadata !{metadata !"any pointer", metadata !658}
!658 = metadata !{metadata !"omnipotent char", metadata !659}
!659 = metadata !{metadata !"Simple C/C++ TBAA"}
!660 = metadata !{i32 419, i32 0, metadata !440, null}
!661 = metadata !{i32 422, i32 0, metadata !440, null}
!662 = metadata !{metadata !"int", metadata !658}
!663 = metadata !{i32 423, i32 0, metadata !440, null}
!664 = metadata !{i32 424, i32 0, metadata !440, null}
!665 = metadata !{i32 425, i32 0, metadata !440, null}
!666 = metadata !{i32 427, i32 0, metadata !5, null}
!667 = metadata !{i32 430, i32 0, metadata !426, null}
!668 = metadata !{i32 431, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !426, i32 430, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!670 = metadata !{i32 432, i32 0, metadata !669, null}
!671 = metadata !{i32 434, i32 0, metadata !426, null}
!672 = metadata !{i32 435, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !426, i32 434, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!674 = metadata !{i32 436, i32 0, metadata !673, null}
!675 = metadata !{i32 438, i32 0, metadata !426, null}
!676 = metadata !{i32 142, i32 0, metadata !510, null}
!677 = metadata !{i32 149, i32 0, metadata !517, null}
!678 = metadata !{i32 150, i32 0, metadata !517, null}
!679 = metadata !{i32 151, i32 0, metadata !517, null}
!680 = metadata !{i32 152, i32 0, metadata !517, null}
!681 = metadata !{i32 153, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !517, i32 152, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!683 = metadata !{i32 4}
!684 = metadata !{i32 154, i32 0, metadata !682, null}
!685 = metadata !{i32 159, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !517, i32 158, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!687 = metadata !{i32 1}
!688 = metadata !{i32 160, i32 0, metadata !686, null}
!689 = metadata !{i32 164, i32 0, metadata !517, null}
!690 = metadata !{i32 3}
!691 = metadata !{i32 165, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !517, i32 164, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!693 = metadata !{i32 171, i32 0, metadata !517, null}
!694 = metadata !{i32 172, i32 0, metadata !517, null}
!695 = metadata !{i32 174, i32 0, metadata !517, null}
!696 = metadata !{i32 175, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !517, i32 174, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!698 = metadata !{i32 176, i32 0, metadata !697, null}
!699 = metadata !{i32 179, i32 0, metadata !517, null}
!700 = metadata !{i32 182, i32 0, metadata !517, null}
!701 = metadata !{i32 183, i32 0, metadata !517, null}
!702 = metadata !{i32 185, i32 0, metadata !496, null}
!703 = metadata !{i32 191, i32 0, metadata !505, null}
!704 = metadata !{i32 197, i32 0, metadata !505, null}
!705 = metadata !{i32 198, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !505, i32 197, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!707 = metadata !{i32 199, i32 0, metadata !706, null}
!708 = metadata !{i32 201, i32 0, metadata !505, null}
!709 = metadata !{i32 202, i32 0, metadata !505, null}
!710 = metadata !{i32 203, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !505, i32 202, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!712 = metadata !{i32 204, i32 0, metadata !711, null}
!713 = metadata !{i32 207, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !505, i32 206, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!715 = metadata !{i32 208, i32 0, metadata !714, null}
!716 = metadata !{i32 210, i32 0, metadata !505, null}
!717 = metadata !{i32 211, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !505, i32 210, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!719 = metadata !{i32 212, i32 0, metadata !718, null}
!720 = metadata !{i32 213, i32 0, metadata !718, null}
!721 = metadata !{i32 214, i32 0, metadata !718, null}
!722 = metadata !{i32 2}
!723 = metadata !{i32 216, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !505, i32 215, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!725 = metadata !{i32 217, i32 0, metadata !724, null}
!726 = metadata !{i32 218, i32 0, metadata !724, null}
!727 = metadata !{i32 221, i32 0, metadata !505, null}
!728 = metadata !{i32 222, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !505, i32 221, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!730 = metadata !{i32 223, i32 0, metadata !729, null}
!731 = metadata !{i32 226, i32 0, metadata !505, null}
!732 = metadata !{i32 227, i32 0, metadata !505, null}
!733 = metadata !{i32 228, i32 0, metadata !505, null}
!734 = metadata !{i32 230, i32 0, metadata !488, null}
!735 = metadata !{i32 232, i32 0, metadata !495, null}
!736 = metadata !{i32 233, i32 0, metadata !495, null}
!737 = metadata !{i32 234, i32 0, metadata !495, null}
!738 = metadata !{i32 236, i32 0, metadata !495, null}
!739 = metadata !{i32 237, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !495, i32 236, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!741 = metadata !{i32 238, i32 0, metadata !740, null}
!742 = metadata !{i32 241, i32 0, metadata !495, null}
!743 = metadata !{i32 242, i32 0, metadata !495, null}
!744 = metadata !{i32 243, i32 0, metadata !495, null}
!745 = metadata !{i32 244, i32 0, metadata !495, null}
!746 = metadata !{i32 246, i32 0, metadata !465, null}
!747 = metadata !{i32 249, i32 0, metadata !473, null}
!748 = metadata !{i32 255, i32 0, metadata !473, null}
!749 = metadata !{i32 256, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !473, i32 255, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!751 = metadata !{i32 257, i32 0, metadata !750, null}
!752 = metadata !{i32 258, i32 0, metadata !750, null}
!753 = metadata !{i32 261, i32 0, metadata !473, null}
!754 = metadata !{i32 262, i32 0, metadata !473, null}
!755 = metadata !{i32 263, i32 0, metadata !473, null}
!756 = metadata !{i32 264, i32 0, metadata !473, null}
!757 = metadata !{i32 265, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !473, i32 264, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!759 = metadata !{i32 266, i32 0, metadata !758, null}
!760 = metadata !{i32 269, i32 0, metadata !473, null}
!761 = metadata !{i32 270, i32 0, metadata !473, null}
!762 = metadata !{i32 271, i32 0, metadata !473, null}
!763 = metadata !{i32 272, i32 0, metadata !473, null}
!764 = metadata !{i32 274, i32 0, metadata !441, null}
!765 = metadata !{i32 288, i32 0, metadata !453, null}
!766 = metadata !{i32 289, i32 0, metadata !453, null}
!767 = metadata !{i32 290, i32 0, metadata !453, null}
!768 = metadata !{i32 291, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !453, i32 290, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!770 = metadata !{i32 292, i32 0, metadata !769, null}
!771 = metadata !{i32 293, i32 0, metadata !453, null}
!772 = metadata !{i32 295, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !774, i32 294, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!774 = metadata !{i32 786443, metadata !453, i32 293, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!775 = metadata !{i32 296, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !773, i32 295, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!777 = metadata !{i32 297, i32 0, metadata !776, null}
!778 = metadata !{i32 304, i32 0, metadata !774, null}
!779 = metadata !{i32 305, i32 0, metadata !774, null}
!780 = metadata !{i32 308, i32 0, metadata !453, null}
!781 = metadata !{i32 317, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !453, i32 317, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!783 = metadata !{i32 382, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !785, i32 373, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!785 = metadata !{i32 786443, metadata !782, i32 317, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!786 = metadata !{i32 388, i32 0, metadata !784, null}
!787 = metadata !{i32 309, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !453, i32 308, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!789 = metadata !{i32 312, i32 0, metadata !788, null}
!790 = metadata !{i32 313, i32 0, metadata !788, null}
!791 = metadata !{i32 318, i32 0, metadata !785, null}
!792 = metadata !{i32 319, i32 0, metadata !785, null}
!793 = metadata !{i32 320, i32 0, metadata !785, null}
!794 = metadata !{i32 321, i32 0, metadata !785, null}
!795 = metadata !{i32 322, i32 0, metadata !785, null}
!796 = metadata !{i32 330, i32 0, metadata !785, null}
!797 = metadata !{i32 332, i32 0, metadata !785, null}
!798 = metadata !{i32 337, i32 0, metadata !785, null}
!799 = metadata !{i32 343, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !785, i32 337, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!801 = metadata !{i32 345, i32 0, metadata !785, null}
!802 = metadata !{i32 346, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !785, i32 345, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!804 = metadata !{i32 347, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !803, i32 346, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!806 = metadata !{i32 348, i32 0, metadata !805, null}
!807 = metadata !{i32 350, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !803, i32 349, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!809 = metadata !{i32 352, i32 0, metadata !803, null}
!810 = metadata !{i32 353, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !803, i32 352, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!812 = metadata !{i32 354, i32 0, metadata !811, null}
!813 = metadata !{i32 355, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !811, i32 354, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!815 = metadata !{i32 356, i32 0, metadata !814, null}
!816 = metadata !{i32 357, i32 0, metadata !814, null}
!817 = metadata !{i32 358, i32 0, metadata !814, null}
!818 = metadata !{i32 359, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !814, i32 358, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!820 = metadata !{i32 360, i32 0, metadata !819, null}
!821 = metadata !{i32 369, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !803, i32 368, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!823 = metadata !{i32 372, i32 0, metadata !785, null}
!824 = metadata !{i32 373, i32 0, metadata !785, null}
!825 = metadata !{i32 374, i32 0, metadata !784, null}
!826 = metadata !{i32 383, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !784, i32 382, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!828 = metadata !{i32 389, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !784, i32 388, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!830 = metadata !{i32 390, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !829, i32 389, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!832 = metadata !{i32 391, i32 0, metadata !831, null}
!833 = metadata !{i32 392, i32 0, metadata !831, null}
!834 = metadata !{i32 393, i32 0, metadata !831, null}
!835 = metadata !{i32 394, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !831, i32 393, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!837 = metadata !{i32 395, i32 0, metadata !836, null}
!838 = metadata !{i32 404, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !784, i32 403, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!840 = metadata !{i32 410, i32 0, metadata !453, null}
!841 = metadata !{i32 94, i32 0, metadata !529, null}
!842 = metadata !{i32 97, i32 0, metadata !537, null}
!843 = metadata !{i32 99, i32 0, metadata !537, null}
!844 = metadata !{i32 100, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !537, i32 99, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!846 = metadata !{i32 101, i32 0, metadata !845, null}
!847 = metadata !{i32 102, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !845, i32 101, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!849 = metadata !{i32 103, i32 0, metadata !848, null}
!850 = metadata !{i32 109, i32 0, metadata !537, null}
!851 = metadata !{i32 110, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !537, i32 109, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!853 = metadata !{i32 111, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !852, i32 110, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!855 = metadata !{i32 113, i32 0, metadata !852, null}
!856 = metadata !{i32 112, i32 0, metadata !854, null}
!857 = metadata !{i32 114, i32 0, metadata !852, null}
!858 = metadata !{i32 118, i32 0, metadata !537, null}
!859 = metadata !{i32 119, i32 0, metadata !537, null}
!860 = metadata !{i64 0, i64 4, metadata !657, i64 4, i64 4, metadata !657, i64 8, i64 4, metadata !657, i64 12, i64 4, metadata !657, i64 16, i64 4, metadata !657, i64 20, i64 4, metadata !662}
!861 = metadata !{i32 120, i32 0, metadata !537, null}
!862 = metadata !{i64 0, i64 4, metadata !657, i64 4, i64 4, metadata !657, i64 8, i64 4, metadata !657, i64 12, i64 4, metadata !657, i64 16, i64 4, metadata !657, i64 20, i64 4, metadata !657, i64 24, i64 4, metadata !657, i64 28, i64 4, metadata !657, i64 32, i64 4, metadata !657, i64 36, i64 4, metadata !657}
!863 = metadata !{i32 122, i32 0, metadata !537, null}
!864 = metadata !{i32 125, i32 0, metadata !537, null}
!865 = metadata !{i32 126, i32 0, metadata !537, null}
!866 = metadata !{i32 128, i32 0, metadata !523, null}
!867 = metadata !{i32 130, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !523, i32 129, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!869 = metadata !{i32 131, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !868, i32 130, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/modules/ngx_epoll_module.c]
!871 = metadata !{i32 132, i32 0, metadata !870, null}
!872 = metadata !{i32 134, i32 0, metadata !868, null}
!873 = metadata !{i32 137, i32 0, metadata !868, null}
!874 = metadata !{i32 138, i32 0, metadata !868, null}
!875 = metadata !{i32 139, i32 0, metadata !868, null}
!876 = metadata !{i32 140, i32 0, metadata !868, null}
