; ModuleID = 'src/event/ngx_event.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_core_module_t = type { %struct.ngx_str_t, i8* (%struct.ngx_cycle_s*)*, i8* (%struct.ngx_cycle_s*, i8*)* }
%struct.ngx_str_t = type { i32, i8* }
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
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, {}*, i8* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_module_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.ngx_command_s*, i32, i32 (%struct.ngx_log_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ngx_event_module_t = type { %struct.ngx_str_t*, i8* (%struct.ngx_cycle_s*)*, i8* (%struct.ngx_cycle_s*, i8*)*, %struct.ngx_event_actions_t }
%struct.ngx_event_actions_t = type { i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_event_s*, i32, i32)*, i32 (%struct.ngx_connection_s*)*, i32 (%struct.ngx_connection_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, i32 (%struct.ngx_cycle_s*, i32, i32)*, i32 (%struct.ngx_cycle_s*, i32)*, void (%struct.ngx_cycle_s*)* }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_time_t = type { i32, i32, i32 }
%struct.ngx_shm_t = type { i8*, i32, %struct.ngx_str_t, %struct.ngx_log_s*, i32 }
%struct.rlimit = type { i64, i64 }
%struct.ngx_shmtx_sh_t = type { i32, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [32 x i32] }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i32, i32 }
%struct.ngx_event_conf_t = type { i32, i32, i32, i32, i32, i8* }

@connection_counter = internal global i32 1, align 4
@ngx_connection_counter = global i32* @connection_counter, align 4
@ngx_events_module_ctx = internal global %struct.ngx_core_module_t { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0) }, i8* (%struct.ngx_cycle_s*)* null, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_event_init_conf }, align 4
@ngx_events_commands = internal global [2 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0) }, i32 16777473, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_events_block, i32 0, i32 0, i8* null }, %struct.ngx_command_s zeroinitializer], align 4
@ngx_events_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_core_module_t* @ngx_events_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([2 x %struct.ngx_command_s]* @ngx_events_commands, i32 0, i32 0), i32 1163022147, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@event_core_name = internal global %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0) }, align 4
@ngx_event_core_module_ctx = global %struct.ngx_event_module_t { %struct.ngx_str_t* @event_core_name, i8* (%struct.ngx_cycle_s*)* @ngx_event_core_create_conf, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_event_core_init_conf, %struct.ngx_event_actions_t zeroinitializer }, align 4
@ngx_event_core_commands = internal global [8 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str9, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_connections, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_connections, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_use, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0) }, i32 33554944, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 0, i32 8, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0) }, i32 33554944, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 0, i32 12, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str14, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 0, i32 16, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_debug_connection, i32 0, i32 0, i8* null }, %struct.ngx_command_s zeroinitializer], align 4
@ngx_event_core_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_event_module_t* @ngx_event_core_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([8 x %struct.ngx_command_s]* @ngx_event_core_commands, i32 0, i32 0), i32 1414420037, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* @ngx_event_module_init, i32 (%struct.ngx_cycle_s*)* @ngx_event_process_init, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@ngx_timer_resolution = internal unnamed_addr global i32 0, align 4
@ngx_use_accept_mutex = common global i32 0, align 4
@ngx_accept_disabled = common global i32 0, align 4
@ngx_accept_mutex_held = common global i32 0, align 4
@ngx_accept_mutex_delay = common global i32 0, align 4
@ngx_current_msec = external global i32
@ngx_event_actions = common global %struct.ngx_event_actions_t zeroinitializer, align 4
@ngx_posted_accept_events = external global %struct.ngx_event_s*
@ngx_accept_mutex = common global %struct.ngx_shmtx_t zeroinitializer, align 4
@ngx_posted_events = external global %struct.ngx_event_s*
@ngx_threaded = external global i32
@ngx_event_flags = common global i32 0, align 4
@0 = internal unnamed_addr constant [3 x i8] c"<<\00"
@1 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str = private unnamed_addr constant [31 x i8] c"setsockopt(SO_SNDLOWAT) failed\00", align 1
@ngx_event_timer_alarm = common global i32 0, align 4
@ngx_accept_mutex_ptr = common global i32* null, align 4
@ngx_accept_events = common global i32 0, align 4
@ngx_accept_mutex_lock_file = common global %struct.ngx_file_s zeroinitializer, align 4
@ngx_epoll_module = external global %struct.ngx_module_s
@ngx_modules = external global [0 x %struct.ngx_module_s*]
@.str1 = private unnamed_addr constant [23 x i8] c"no events module found\00", align 1
@2 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@ngx_core_module = external global %struct.ngx_module_s
@.str2 = private unnamed_addr constant [26 x i8] c"sigaction(SIGALRM) failed\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"setitimer() failed\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"getrlimit(RLIMIT_NOFILE) failed\00", align 1
@3 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@ngx_test_config = external global i32
@ngx_process = external global i32
@.str5 = private unnamed_addr constant [28 x i8] c"using the \22%s\22 event method\00", align 1
@.str6 = private unnamed_addr constant [41 x i8] c"getrlimit(RLIMIT_NOFILE) failed, ignored\00", align 1
@4 = internal unnamed_addr constant [7 x i8] c"rlim_t\00"
@5 = internal unnamed_addr constant [19 x i8] c"unsigned long long\00"
@.str7 = private unnamed_addr constant [59 x i8] c"%ui worker_connections exceed open file resource limit: %i\00", align 1
@.str8 = private unnamed_addr constant [18 x i8] c"nginx_shared_zone\00", align 1
@ngx_temp_number = external global i32*
@ngx_cached_time = external global %struct.ngx_time_t*
@ngx_pid = external global i32
@6 = internal unnamed_addr constant [10 x i8] c"ngx_pid_t\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [17 x i8] c"ngx_atomic_int_t\00"
@9 = internal unnamed_addr constant [5 x i8] c"long\00"
@ngx_random_number = external global i32
@.str9 = private unnamed_addr constant [19 x i8] c"worker_connections\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"connections\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"multi_accept\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"accept_mutex\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"accept_mutex_delay\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"debug_connection\00", align 1
@.str16 = private unnamed_addr constant [96 x i8] c"\22debug_connection\22 is ignored, you need to rebuild nginx using --with-debug option to enable it\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str18 = private unnamed_addr constant [212 x i8] c"when the server runs without a master process the \22%V\22 event type must be the same as in previous configuration - \22%s\22 and it cannot be changed on the fly, to change it you need to stop server and start it again\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"invalid event type \22%V\22\00", align 1
@10 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str20 = private unnamed_addr constant [90 x i8] c"the \22connections\22 directive is deprecated, use the \22worker_connections\22 directive instead\00", align 1
@11 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@12 = internal unnamed_addr constant [4 x i8] c"int\00"
@13 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@14 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str21 = private unnamed_addr constant [20 x i8] c"invalid number \22%V\22\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"event_core\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@ngx_event_max_module = internal unnamed_addr global i32 0, align 4
@15 = internal unnamed_addr constant [2 x i8] c"*\00"
@16 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@17 = internal unnamed_addr constant [22 x i8] c"src/event/ngx_event.c\00"
@.str24 = private unnamed_addr constant [37 x i8] c"no \22events\22 section in configuration\00", align 1

define internal i8* @ngx_event_core_create_conf(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !636), !dbg !947
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 1, !dbg !948
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !948, !tbaa !949
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %0, i32 24) nounwind, !dbg !948
  %cmp = icmp eq i8* %call, null, !dbg !952
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !952

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 666, i32 38, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !953
  %connections = bitcast i8* %call to i32*, !dbg !953
  store i32 -1, i32* %connections, align 4, !dbg !953, !tbaa !954
  tail call void @__ioc_report_conversion(i32 667, i32 30, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !955
  %use = getelementptr inbounds i8* %call, i32 4, !dbg !955
  %1 = bitcast i8* %use to i32*, !dbg !955
  store i32 -1, i32* %1, align 4, !dbg !955, !tbaa !954
  %multi_accept = getelementptr inbounds i8* %call, i32 8, !dbg !956
  %2 = bitcast i8* %multi_accept to i32*, !dbg !956
  store i32 -1, i32* %2, align 4, !dbg !956, !tbaa !954
  %accept_mutex = getelementptr inbounds i8* %call, i32 12, !dbg !957
  %3 = bitcast i8* %accept_mutex to i32*, !dbg !957
  store i32 -1, i32* %3, align 4, !dbg !957, !tbaa !954
  tail call void @__ioc_report_conversion(i32 670, i32 45, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !958
  %accept_mutex_delay = getelementptr inbounds i8* %call, i32 16, !dbg !958
  %4 = bitcast i8* %accept_mutex_delay to i32*, !dbg !958
  store i32 -1, i32* %4, align 4, !dbg !958, !tbaa !954
  %name = getelementptr inbounds i8* %call, i32 20, !dbg !959
  %5 = bitcast i8* %name to i8**, !dbg !959
  store i8* inttoptr (i32 -1 to i8*), i8** %5, align 4, !dbg !959, !tbaa !949
  br label %return, !dbg !960

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !961
}

define internal i8* @ngx_event_core_init_conf(%struct.ngx_cycle_s* nocapture %cycle, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !490), !dbg !962
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !491), !dbg !962
  tail call void @llvm.dbg.value(metadata !963, i64 0, metadata !507), !dbg !964
  %call = tail call i32 @epoll_create(i32 100) nounwind, !dbg !965
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !505), !dbg !965
  %cmp = icmp eq i32 %call, -1, !dbg !966
  br i1 %cmp, label %if.end5, label %if.end22.thread, !dbg !966

if.end22.thread:                                  ; preds = %entry
  %call1 = tail call i32 @close(i32 %call) nounwind, !dbg !967
  tail call void @llvm.dbg.value(metadata !969, i64 0, metadata !507), !dbg !970
  br label %if.end35, !dbg !971

if.end5:                                          ; preds = %entry
  %call2 = tail call i32* @__errno_location() nounwind readnone, !dbg !972
  %0 = load i32* %call2, align 4, !dbg !972, !tbaa !954
  %cmp3 = icmp eq i32 %0, 38, !dbg !972
  %.ngx_epoll_module = select i1 %cmp3, %struct.ngx_module_s* null, %struct.ngx_module_s* @ngx_epoll_module, !dbg !972
  br i1 %cmp3, label %for.cond.preheader, label %if.end22, !dbg !973

for.cond.preheader:                               ; preds = %if.end5
  %1 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !974, !tbaa !949
  %tobool115 = icmp eq %struct.ngx_module_s* %1, null, !dbg !974
  br i1 %tobool115, label %if.end22, label %cont10, !dbg !974

cont10:                                           ; preds = %for.cond.preheader, %for.cond.backedge
  %2 = phi %struct.ngx_module_s* [ %11, %for.cond.backedge ], [ %1, %for.cond.preheader ]
  %i.0116 = phi i32 [ %9, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.ngx_module_s* %2, i32 0, i32 9, !dbg !975
  %3 = load i32* %type, align 4, !dbg !975, !tbaa !954
  %cmp11 = icmp eq i32 %3, 1414420037, !dbg !975
  br i1 %cmp11, label %if.end13, label %for.inc, !dbg !975

if.end13:                                         ; preds = %cont10
  %ctx = getelementptr inbounds %struct.ngx_module_s* %2, i32 0, i32 7, !dbg !976
  %4 = load i8** %ctx, align 4, !dbg !976, !tbaa !949
  %name = bitcast i8* %4 to %struct.ngx_str_t**, !dbg !977
  %5 = load %struct.ngx_str_t** %name, align 4, !dbg !977, !tbaa !949
  %data = getelementptr inbounds %struct.ngx_str_t* %5, i32 0, i32 1, !dbg !977
  %6 = load i8** %data, align 4, !dbg !977, !tbaa !949
  %7 = load i8** getelementptr inbounds (%struct.ngx_str_t* @event_core_name, i32 0, i32 1), align 4, !dbg !977, !tbaa !949
  %call15 = tail call i32 @strcmp(i8* %6, i8* %7) nounwind, !dbg !977
  %cmp16 = icmp eq i32 %call15, 0, !dbg !977
  br i1 %cmp16, label %for.inc, label %if.end22, !dbg !977

for.inc:                                          ; preds = %cont10, %if.end13
  %8 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0116, i32 1), !dbg !974
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !974
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !974
  br i1 %10, label %ioc_bb20, label %for.cond.backedge, !dbg !974

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb20
  %arrayidx = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %9, !dbg !974
  %11 = load %struct.ngx_module_s** %arrayidx, align 4, !dbg !974, !tbaa !949
  %tobool = icmp eq %struct.ngx_module_s* %11, null, !dbg !974
  br i1 %tobool, label %if.end22, label %cont10, !dbg !974

ioc_bb20:                                         ; preds = %for.inc
  %12 = sext i32 %i.0116 to i64, !dbg !974
  tail call void @__ioc_report_add_overflow(i32 708, i32 34, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %12, i64 1, i8 13) nounwind, !dbg !974
  br label %for.cond.backedge, !dbg !974

if.end22:                                         ; preds = %for.cond.preheader, %if.end13, %for.cond.backedge, %if.end5
  %module.1 = phi %struct.ngx_module_s* [ %.ngx_epoll_module, %if.end5 ], [ %.ngx_epoll_module, %for.cond.preheader ], [ %2, %if.end13 ], [ %.ngx_epoll_module, %for.cond.backedge ]
  %cmp23 = icmp eq %struct.ngx_module_s* %module.1, null, !dbg !971
  br i1 %cmp23, label %if.then24, label %if.end35, !dbg !971

if.then24:                                        ; preds = %if.end22
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !978
  %13 = load %struct.ngx_log_s** %log, align 4, !dbg !978, !tbaa !949
  %log_level = getelementptr inbounds %struct.ngx_log_s* %13, i32 0, i32 0, !dbg !978
  %14 = load i32* %log_level, align 4, !dbg !978, !tbaa !954
  %cmp27 = icmp eq i32 %14, 0, !dbg !978
  br i1 %cmp27, label %return, label %cont30, !dbg !978

cont30:                                           ; preds = %if.then24
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %13, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !980
  br label %return, !dbg !980

if.end35:                                         ; preds = %if.end22.thread, %if.end22
  %module.1114 = phi %struct.ngx_module_s* [ @ngx_epoll_module, %if.end22.thread ], [ %module.1, %if.end22 ]
  %connections = bitcast i8* %conf to i32*, !dbg !981
  %15 = load i32* %connections, align 4, !dbg !981, !tbaa !954
  tail call void @__ioc_report_conversion(i32 725, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !981
  %cmp40 = icmp eq i32 %15, -1, !dbg !981
  br i1 %cmp40, label %cont43, label %if.end35.if.end45_crit_edge, !dbg !981

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  %.pre = load i32* %connections, align 4, !dbg !982, !tbaa !954
  br label %if.end45, !dbg !981

cont43:                                           ; preds = %if.end35
  store i32 512, i32* %connections, align 4, !dbg !983, !tbaa !954
  br label %if.end45, !dbg !985

if.end45:                                         ; preds = %if.end35.if.end45_crit_edge, %cont43
  %16 = phi i32 [ %.pre, %if.end35.if.end45_crit_edge ], [ 512, %cont43 ]
  %connection_n = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 12, !dbg !982
  store i32 %16, i32* %connection_n, align 4, !dbg !982, !tbaa !954
  %use = getelementptr inbounds i8* %conf, i32 4, !dbg !986
  %17 = bitcast i8* %use to i32*, !dbg !986
  %18 = load i32* %17, align 4, !dbg !986, !tbaa !954
  tail call void @__ioc_report_conversion(i32 730, i32 35, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !986
  %cmp52 = icmp eq i32 %18, -1, !dbg !986
  br i1 %cmp52, label %if.then53, label %if.end55, !dbg !986

if.then53:                                        ; preds = %if.end45
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %module.1114, i32 0, i32 0, !dbg !987
  %19 = load i32* %ctx_index, align 4, !dbg !987, !tbaa !954
  store i32 %19, i32* %17, align 4, !dbg !987, !tbaa !954
  br label %if.end55, !dbg !989

if.end55:                                         ; preds = %if.then53, %if.end45
  %name57 = getelementptr inbounds i8* %conf, i32 20, !dbg !990
  %20 = bitcast i8* %name57 to i8**, !dbg !990
  %21 = load i8** %20, align 4, !dbg !990, !tbaa !949
  %cmp60 = icmp eq i8* %21, inttoptr (i32 -1 to i8*), !dbg !990
  br i1 %cmp60, label %if.then61, label %if.end65, !dbg !990

if.then61:                                        ; preds = %if.end55
  %ctx56 = getelementptr inbounds %struct.ngx_module_s* %module.1114, i32 0, i32 7, !dbg !991
  %22 = load i8** %ctx56, align 4, !dbg !991, !tbaa !949
  %name62 = bitcast i8* %22 to %struct.ngx_str_t**, !dbg !992
  %23 = load %struct.ngx_str_t** %name62, align 4, !dbg !992, !tbaa !949
  %data63 = getelementptr inbounds %struct.ngx_str_t* %23, i32 0, i32 1, !dbg !992
  %24 = load i8** %data63, align 4, !dbg !992, !tbaa !949
  store i8* %24, i8** %20, align 4, !dbg !992, !tbaa !949
  br label %if.end65, !dbg !994

if.end65:                                         ; preds = %if.then61, %if.end55
  %multi_accept = getelementptr inbounds i8* %conf, i32 8, !dbg !995
  %25 = bitcast i8* %multi_accept to i32*, !dbg !995
  %26 = load i32* %25, align 4, !dbg !995, !tbaa !954
  %cmp68 = icmp eq i32 %26, -1, !dbg !995
  br i1 %cmp68, label %if.then69, label %if.end71, !dbg !995

if.then69:                                        ; preds = %if.end65
  store i32 0, i32* %25, align 4, !dbg !996, !tbaa !954
  br label %if.end71, !dbg !998

if.end71:                                         ; preds = %if.then69, %if.end65
  %accept_mutex = getelementptr inbounds i8* %conf, i32 12, !dbg !999
  %27 = bitcast i8* %accept_mutex to i32*, !dbg !999
  %28 = load i32* %27, align 4, !dbg !999, !tbaa !954
  %cmp74 = icmp eq i32 %28, -1, !dbg !999
  br i1 %cmp74, label %if.then75, label %if.end77, !dbg !999

if.then75:                                        ; preds = %if.end71
  store i32 1, i32* %27, align 4, !dbg !1000, !tbaa !954
  br label %if.end77, !dbg !1002

if.end77:                                         ; preds = %if.then75, %if.end71
  %accept_mutex_delay = getelementptr inbounds i8* %conf, i32 16, !dbg !1003
  %29 = bitcast i8* %accept_mutex_delay to i32*, !dbg !1003
  %30 = load i32* %29, align 4, !dbg !1003, !tbaa !954
  tail call void @__ioc_report_conversion(i32 747, i32 50, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1003
  %cmp83 = icmp eq i32 %30, -1, !dbg !1003
  br i1 %cmp83, label %cont86, label %return, !dbg !1003

cont86:                                           ; preds = %if.end77
  store i32 500, i32* %29, align 4, !dbg !1004, !tbaa !954
  br label %return, !dbg !1006

return:                                           ; preds = %if.end77, %cont86, %if.then24, %cont30
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont30 ], [ inttoptr (i32 -1 to i8*), %if.then24 ], [ null, %cont86 ], [ null, %if.end77 ]
  ret i8* %retval.0, !dbg !1007
}

define internal i32 @ngx_event_module_init(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  %shm = alloca %struct.ngx_shm_t, align 4
  %rlmt = alloca %struct.rlimit, align 8
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !799), !dbg !1008
  call void @llvm.dbg.declare(metadata !{%struct.ngx_shm_t* %shm}, metadata !805), !dbg !1009
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !1010, !tbaa !954
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !1010
  %1 = load i8***** %conf_ctx, align 4, !dbg !1010, !tbaa !949
  %arrayidx = getelementptr inbounds i8**** %1, i32 %0, !dbg !1010
  %2 = load i8**** %arrayidx, align 4, !dbg !1010, !tbaa !949
  call void @llvm.dbg.value(metadata !{i8*** %2}, i64 0, metadata !800), !dbg !1010
  %3 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_event_core_module, i32 0, i32 0), align 4, !dbg !1011, !tbaa !954
  %4 = load i8*** %2, align 4, !dbg !1011, !tbaa !949
  %arrayidx1 = getelementptr inbounds i8** %4, i32 %3, !dbg !1011
  %5 = load i8** %arrayidx1, align 4, !dbg !1011, !tbaa !949
  %6 = load i32* @ngx_test_config, align 4, !dbg !1012, !tbaa !954
  %tobool = icmp eq i32 %6, 0, !dbg !1012
  %7 = load i32* @ngx_process, align 4, !dbg !1012, !tbaa !954
  %cmp = icmp ult i32 %7, 2, !dbg !1012
  %or.cond = and i1 %tobool, %cmp, !dbg !1012
  br i1 %or.cond, label %if.then, label %if.end9, !dbg !1012

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1013
  %8 = load %struct.ngx_log_s** %log, align 4, !dbg !1013, !tbaa !949
  %log_level = getelementptr inbounds %struct.ngx_log_s* %8, i32 0, i32 0, !dbg !1013
  %9 = load i32* %log_level, align 4, !dbg !1013, !tbaa !954
  %cmp4 = icmp ugt i32 %9, 5, !dbg !1013
  br i1 %cmp4, label %cont7, label %if.end9, !dbg !1013

cont7:                                            ; preds = %if.then
  %name = getelementptr inbounds i8* %5, i32 20, !dbg !1015
  %10 = bitcast i8* %name to i8**, !dbg !1015
  %11 = load i8** %10, align 4, !dbg !1015, !tbaa !949
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 6, %struct.ngx_log_s* %8, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str5, i32 0, i32 0), i8* %11) nounwind, !dbg !1015
  %.pre = load i8***** %conf_ctx, align 4, !dbg !1016, !tbaa !949
  br label %if.end9, !dbg !1015

if.end9:                                          ; preds = %entry, %if.then, %cont7
  %12 = phi i8**** [ %1, %entry ], [ %1, %if.then ], [ %.pre, %cont7 ]
  %13 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1016, !tbaa !954
  %arrayidx11 = getelementptr inbounds i8**** %12, i32 %13, !dbg !1016
  %14 = load i8**** %arrayidx11, align 4, !dbg !1016, !tbaa !949
  %timer_resolution = getelementptr inbounds i8*** %14, i32 2, !dbg !1017
  %15 = bitcast i8*** %timer_resolution to i32*, !dbg !1017
  %16 = load i32* %15, align 4, !dbg !1017, !tbaa !954
  store i32 %16, i32* @ngx_timer_resolution, align 4, !dbg !1017, !tbaa !954
  call void @llvm.dbg.declare(metadata !{%struct.rlimit* %rlmt}, metadata !829), !dbg !1018
  %call = call i32 @getrlimit64(i32 7, %struct.rlimit* %rlmt) nounwind, !dbg !1019
  %cmp16 = icmp eq i32 %call, -1, !dbg !1019
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1019

if.then17:                                        ; preds = %if.end9
  %log18 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1020
  %17 = load %struct.ngx_log_s** %log18, align 4, !dbg !1020, !tbaa !949
  %log_level19 = getelementptr inbounds %struct.ngx_log_s* %17, i32 0, i32 0, !dbg !1020
  %18 = load i32* %log_level19, align 4, !dbg !1020, !tbaa !954
  %cmp22 = icmp ugt i32 %18, 1, !dbg !1020
  br i1 %cmp22, label %cont25, label %if.end69, !dbg !1020

cont25:                                           ; preds = %if.then17
  %call27 = call i32* @__errno_location() nounwind readnone, !dbg !1022
  %19 = load i32* %call27, align 4, !dbg !1022, !tbaa !954
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %17, i32 %19, i8* getelementptr inbounds ([41 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !1022
  br label %if.end69, !dbg !1022

if.else:                                          ; preds = %if.end9
  %connections = bitcast i8* %5 to i32*, !dbg !1023
  %20 = load i32* %connections, align 4, !dbg !1023, !tbaa !954
  %rlim_cur = getelementptr inbounds %struct.rlimit* %rlmt, i32 0, i32 0, !dbg !1023
  %21 = load i64* %rlim_cur, align 8, !dbg !1023, !tbaa !1025
  %22 = icmp ult i64 %21, 4294967296, !dbg !1023
  br i1 %22, label %cont30, label %ioc_bb29, !dbg !1023

ioc_bb29:                                         ; preds = %if.else
  call void @__ioc_report_conversion(i32 263, i32 46, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %21, i8 0) nounwind, !dbg !1023
  br label %cont30, !dbg !1023

cont30:                                           ; preds = %ioc_bb29, %if.else
  %conv = trunc i64 %21 to i32, !dbg !1023
  %cmp31 = icmp ugt i32 %20, %conv, !dbg !1023
  br i1 %cmp31, label %land.lhs.true33, label %if.end69, !dbg !1023

land.lhs.true33:                                  ; preds = %cont30
  %rlimit_nofile = getelementptr inbounds i8*** %14, i32 5, !dbg !1023
  %23 = bitcast i8*** %rlimit_nofile to i32*, !dbg !1023
  %24 = load i32* %23, align 4, !dbg !1023, !tbaa !954
  %cmp36 = icmp eq i32 %24, -1, !dbg !1023
  br i1 %cmp36, label %cond.true, label %lor.lhs.false, !dbg !1023

lor.lhs.false:                                    ; preds = %land.lhs.true33
  %25 = load i32* %connections, align 4, !dbg !1023, !tbaa !954
  %26 = icmp sgt i32 %24, -1, !dbg !1023
  br i1 %26, label %cont41, label %ioc_bb40, !dbg !1023

ioc_bb40:                                         ; preds = %lor.lhs.false
  %27 = sext i32 %24 to i64, !dbg !1023
  call void @__ioc_report_conversion(i32 263, i32 130, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %27, i8 1) nounwind, !dbg !1023
  br label %cont41, !dbg !1023

cont41:                                           ; preds = %ioc_bb40, %lor.lhs.false
  %cmp42 = icmp ugt i32 %25, %24, !dbg !1023
  br i1 %cmp42, label %if.then44, label %if.end69, !dbg !1023

if.then44:                                        ; preds = %cont41
  %.pr = load i32* %23, align 4, !dbg !1026, !tbaa !954
  %cmp48 = icmp eq i32 %.pr, -1, !dbg !1026
  br i1 %cmp48, label %cond.true, label %cond.end, !dbg !1026

cond.true:                                        ; preds = %if.then44, %land.lhs.true33
  %28 = load i64* %rlim_cur, align 8, !dbg !1026, !tbaa !1025
  %29 = icmp ult i64 %28, 2147483648, !dbg !1026
  br i1 %29, label %cont53, label %ioc_bb52, !dbg !1026

ioc_bb52:                                         ; preds = %cond.true
  call void @__ioc_report_conversion(i32 264, i32 58, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %28, i8 0) nounwind, !dbg !1026
  br label %cont53, !dbg !1026

cont53:                                           ; preds = %ioc_bb52, %cond.true
  %conv54 = trunc i64 %28 to i32, !dbg !1026
  br label %cond.end, !dbg !1026

cond.end:                                         ; preds = %if.then44, %cont53
  %cond = phi i32 [ %conv54, %cont53 ], [ %.pr, %if.then44 ], !dbg !1026
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !827), !dbg !1026
  %log56 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1028
  %30 = load %struct.ngx_log_s** %log56, align 4, !dbg !1028, !tbaa !949
  %log_level57 = getelementptr inbounds %struct.ngx_log_s* %30, i32 0, i32 0, !dbg !1028
  %31 = load i32* %log_level57, align 4, !dbg !1028, !tbaa !954
  %cmp60 = icmp ugt i32 %31, 4, !dbg !1028
  br i1 %cmp60, label %cont64, label %if.end69, !dbg !1028

cont64:                                           ; preds = %cond.end
  %32 = load i32* %connections, align 4, !dbg !1029, !tbaa !954
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 5, %struct.ngx_log_s* %30, i32 0, i8* getelementptr inbounds ([59 x i8]* @.str7, i32 0, i32 0), i32 %32, i32 %cond) nounwind, !dbg !1029
  br label %if.end69, !dbg !1029

if.end69:                                         ; preds = %cont30, %cont41, %cont64, %cond.end, %if.then17, %cont25
  %master = getelementptr inbounds i8*** %14, i32 1, !dbg !1030
  %33 = bitcast i8*** %master to i32*, !dbg !1030
  %34 = load i32* %33, align 4, !dbg !1030, !tbaa !954
  %cmp70 = icmp ne i32 %34, 0, !dbg !1030
  %35 = load i32** @ngx_accept_mutex_ptr, align 4, !dbg !1031, !tbaa !949
  %tobool74 = icmp eq i32* %35, null, !dbg !1031
  %or.cond155 = and i1 %cmp70, %tobool74, !dbg !1030
  br i1 %or.cond155, label %cont82, label %return, !dbg !1030

cont82:                                           ; preds = %if.end69
  call void @llvm.dbg.value(metadata !1032, i64 0, metadata !804), !dbg !1033
  call void @llvm.dbg.value(metadata !1034, i64 0, metadata !803), !dbg !1035
  %size83 = getelementptr inbounds %struct.ngx_shm_t* %shm, i32 0, i32 1, !dbg !1036
  store i32 384, i32* %size83, align 4, !dbg !1036, !tbaa !954
  %len = getelementptr inbounds %struct.ngx_shm_t* %shm, i32 0, i32 2, i32 0, !dbg !1037
  store i32 18, i32* %len, align 4, !dbg !1037, !tbaa !954
  %data = getelementptr inbounds %struct.ngx_shm_t* %shm, i32 0, i32 2, i32 1, !dbg !1038
  store i8* getelementptr inbounds ([18 x i8]* @.str8, i32 0, i32 0), i8** %data, align 4, !dbg !1038, !tbaa !949
  %log86 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1039
  %36 = load %struct.ngx_log_s** %log86, align 4, !dbg !1039, !tbaa !949
  %log87 = getelementptr inbounds %struct.ngx_shm_t* %shm, i32 0, i32 3, !dbg !1039
  store %struct.ngx_log_s* %36, %struct.ngx_log_s** %log87, align 4, !dbg !1039, !tbaa !949
  %call88 = call i32 @ngx_shm_alloc(%struct.ngx_shm_t* %shm) nounwind, !dbg !1040
  %cmp89 = icmp eq i32 %call88, 0, !dbg !1040
  br i1 %cmp89, label %if.end94, label %return, !dbg !1040

if.end94:                                         ; preds = %cont82
  %addr = getelementptr inbounds %struct.ngx_shm_t* %shm, i32 0, i32 0, !dbg !1041
  %37 = load i8** %addr, align 4, !dbg !1041, !tbaa !949
  call void @llvm.dbg.value(metadata !{i8* %37}, i64 0, metadata !802), !dbg !1041
  %38 = bitcast i8* %37 to i32*, !dbg !1042
  store i32* %38, i32** @ngx_accept_mutex_ptr, align 4, !dbg !1042, !tbaa !949
  call void @__ioc_report_conversion(i32 300, i32 41, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1043
  store i32 -1, i32* getelementptr inbounds (%struct.ngx_shmtx_t* @ngx_accept_mutex, i32 0, i32 4), align 4, !dbg !1043, !tbaa !954
  %39 = bitcast i8* %37 to %struct.ngx_shmtx_sh_t*, !dbg !1044
  %data100 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 22, i32 1, !dbg !1044
  %40 = load i8** %data100, align 4, !dbg !1044, !tbaa !949
  %call101 = call i32 @ngx_shmtx_create(%struct.ngx_shmtx_t* @ngx_accept_mutex, %struct.ngx_shmtx_sh_t* %39, i8* %40) nounwind, !dbg !1044
  %cmp102 = icmp eq i32 %call101, 0, !dbg !1044
  br i1 %cmp102, label %cont111, label %return, !dbg !1044

cont111:                                          ; preds = %if.end94
  %add.ptr = getelementptr inbounds i8* %37, i32 128, !dbg !1045
  %41 = bitcast i8* %add.ptr to i32*, !dbg !1045
  store i32* %41, i32** @ngx_connection_counter, align 4, !dbg !1045, !tbaa !949
  %42 = cmpxchg i32* %41, i32 0, i32 1 seq_cst, !dbg !1046
  %add.ptr120 = getelementptr inbounds i8* %37, i32 256, !dbg !1047
  %43 = bitcast i8* %add.ptr120 to i32*, !dbg !1047
  store i32* %43, i32** @ngx_temp_number, align 4, !dbg !1047, !tbaa !949
  call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %44}, i64 0, metadata !815), !dbg !1048
  %44 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !1048, !tbaa !949
  %msec = getelementptr inbounds %struct.ngx_time_t* %44, i32 0, i32 1, !dbg !1049
  %45 = load i32* %msec, align 4, !dbg !1049, !tbaa !954
  %shl = shl i32 %45, 16, !dbg !1049
  %46 = load i32* @ngx_pid, align 4, !dbg !1049, !tbaa !954
  %47 = icmp sgt i32 %46, -1, !dbg !1049
  br i1 %47, label %cont125, label %ioc_bb124, !dbg !1049

ioc_bb124:                                        ; preds = %cont111
  %48 = sext i32 %46 to i64, !dbg !1049
  call void @__ioc_report_conversion(i32 309, i32 45, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %48, i8 1) nounwind, !dbg !1049
  br label %cont125, !dbg !1049

cont125:                                          ; preds = %ioc_bb124, %cont111
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %shl, i32 %46), !dbg !1049
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !1049
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !1049
  br i1 %51, label %ioc_bb126, label %cont127, !dbg !1049

ioc_bb126:                                        ; preds = %cont125
  %52 = zext i32 %46 to i64, !dbg !1049
  %53 = zext i32 %shl to i64, !dbg !1049
  call void @__ioc_report_add_overflow(i32 309, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %53, i64 %52, i8 5) nounwind, !dbg !1049
  br label %cont127, !dbg !1049

cont127:                                          ; preds = %cont125, %ioc_bb126
  %54 = icmp sgt i32 %50, -1, !dbg !1049
  br i1 %54, label %cont130, label %ioc_bb129, !dbg !1049

ioc_bb129:                                        ; preds = %cont127
  %55 = zext i32 %50 to i64, !dbg !1049
  call void @__ioc_report_conversion(i32 309, i32 23, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i64 %55, i8 0) nounwind, !dbg !1049
  br label %cont130, !dbg !1049

cont130:                                          ; preds = %ioc_bb129, %cont127
  store i32 %50, i32* @ngx_random_number, align 4, !dbg !1049, !tbaa !1050
  br label %return, !dbg !1051

return:                                           ; preds = %if.end69, %if.end94, %cont82, %cont130
  %retval.0 = phi i32 [ 0, %cont130 ], [ 0, %if.end69 ], [ -1, %cont82 ], [ -1, %if.end94 ]
  ret i32 %retval.0, !dbg !1052
}

define internal i32 @ngx_event_process_init(%struct.ngx_cycle_s* %cycle) nounwind {
entry:
  %sa = alloca %struct.sigaction, align 4
  %itv = alloca %struct.itimerval, align 4
  %rlmt = alloca %struct.rlimit, align 8
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !642), !dbg !1053
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1054, !tbaa !954
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !1054
  %1 = load i8***** %conf_ctx, align 4, !dbg !1054, !tbaa !949
  %arrayidx = getelementptr inbounds i8**** %1, i32 %0, !dbg !1054
  %2 = load i8**** %arrayidx, align 4, !dbg !1054, !tbaa !949
  %3 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_event_core_module, i32 0, i32 0), align 4, !dbg !1055, !tbaa !954
  %4 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !1055, !tbaa !954
  %arrayidx2 = getelementptr inbounds i8**** %1, i32 %4, !dbg !1055
  %5 = load i8**** %arrayidx2, align 4, !dbg !1055, !tbaa !949
  %6 = load i8*** %5, align 4, !dbg !1055, !tbaa !949
  %arrayidx3 = getelementptr inbounds i8** %6, i32 %3, !dbg !1055
  %7 = load i8** %arrayidx3, align 4, !dbg !1055, !tbaa !949
  %master = getelementptr inbounds i8*** %2, i32 1, !dbg !1056
  %8 = bitcast i8*** %master to i32*, !dbg !1056
  %9 = load i32* %8, align 4, !dbg !1056, !tbaa !954
  %tobool = icmp eq i32 %9, 0, !dbg !1056
  br i1 %tobool, label %cont9, label %land.lhs.true, !dbg !1056

land.lhs.true:                                    ; preds = %entry
  %worker_processes = getelementptr inbounds i8*** %2, i32 3, !dbg !1056
  %10 = bitcast i8*** %worker_processes to i32*, !dbg !1056
  %11 = load i32* %10, align 4, !dbg !1056, !tbaa !954
  %cmp = icmp sgt i32 %11, 1, !dbg !1056
  br i1 %cmp, label %land.lhs.true4, label %cont9, !dbg !1056

land.lhs.true4:                                   ; preds = %land.lhs.true
  %accept_mutex = getelementptr inbounds i8* %7, i32 12, !dbg !1056
  %12 = bitcast i8* %accept_mutex to i32*, !dbg !1056
  %13 = load i32* %12, align 4, !dbg !1056, !tbaa !954
  %tobool5 = icmp eq i32 %13, 0, !dbg !1056
  br i1 %tobool5, label %cont9, label %cont, !dbg !1056

cont:                                             ; preds = %land.lhs.true4
  store i32 1, i32* @ngx_use_accept_mutex, align 4, !dbg !1057, !tbaa !954
  store i32 0, i32* @ngx_accept_mutex_held, align 4, !dbg !1059, !tbaa !954
  %accept_mutex_delay = getelementptr inbounds i8* %7, i32 16, !dbg !1060
  %14 = bitcast i8* %accept_mutex_delay to i32*, !dbg !1060
  %15 = load i32* %14, align 4, !dbg !1060, !tbaa !954
  store i32 %15, i32* @ngx_accept_mutex_delay, align 4, !dbg !1060, !tbaa !954
  br label %if.end, !dbg !1061

cont9:                                            ; preds = %land.lhs.true, %entry, %land.lhs.true4
  store i32 0, i32* @ngx_use_accept_mutex, align 4, !dbg !1062, !tbaa !954
  br label %if.end

if.end:                                           ; preds = %cont9, %cont
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1064
  %16 = load %struct.ngx_log_s** %log, align 4, !dbg !1064, !tbaa !949
  %call = call i32 @ngx_event_timer_init(%struct.ngx_log_s* %16) nounwind, !dbg !1064
  %cmp12 = icmp eq i32 %call, -1, !dbg !1064
  br i1 %cmp12, label %return, label %for.cond.preheader, !dbg !1064

for.cond.preheader:                               ; preds = %if.end
  %17 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1065, !tbaa !949
  %tobool20451 = icmp eq %struct.ngx_module_s* %17, null, !dbg !1065
  br i1 %tobool20451, label %for.end, label %cont23.lr.ph, !dbg !1065

cont23.lr.ph:                                     ; preds = %for.cond.preheader
  %use = getelementptr inbounds i8* %7, i32 4, !dbg !1067
  %18 = bitcast i8* %use to i32*, !dbg !1067
  br label %cont23, !dbg !1065

cont23:                                           ; preds = %cont23.lr.ph, %for.cond.backedge
  %19 = phi %struct.ngx_module_s* [ %17, %cont23.lr.ph ], [ %30, %for.cond.backedge ]
  %m.0452 = phi i32 [ 0, %cont23.lr.ph ], [ %28, %for.cond.backedge ]
  %type = getelementptr inbounds %struct.ngx_module_s* %19, i32 0, i32 9, !dbg !1069
  %20 = load i32* %type, align 4, !dbg !1069, !tbaa !954
  %cmp24 = icmp eq i32 %20, 1414420037, !dbg !1069
  br i1 %cmp24, label %if.end26, label %for.inc, !dbg !1069

if.end26:                                         ; preds = %cont23
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %19, i32 0, i32 0, !dbg !1067
  %21 = load i32* %ctx_index, align 4, !dbg !1067, !tbaa !954
  %22 = load i32* %18, align 4, !dbg !1067, !tbaa !954
  %cmp28 = icmp eq i32 %21, %22, !dbg !1067
  br i1 %cmp28, label %if.end30, label %for.inc, !dbg !1067

if.end30:                                         ; preds = %if.end26
  %ctx = getelementptr inbounds %struct.ngx_module_s* %19, i32 0, i32 7, !dbg !1070
  %23 = load i8** %ctx, align 4, !dbg !1070, !tbaa !949
  %init = getelementptr inbounds i8* %23, i32 44, !dbg !1071
  %24 = bitcast i8* %init to i32 (%struct.ngx_cycle_s*, i32)**, !dbg !1071
  %25 = load i32 (%struct.ngx_cycle_s*, i32)** %24, align 4, !dbg !1071, !tbaa !949
  %26 = load i32* @ngx_timer_resolution, align 4, !dbg !1071, !tbaa !954
  %call32 = call i32 %25(%struct.ngx_cycle_s* %cycle, i32 %26) nounwind, !dbg !1071
  %cmp33 = icmp eq i32 %call32, 0, !dbg !1071
  br i1 %cmp33, label %for.end, label %if.then34, !dbg !1071

if.then34:                                        ; preds = %if.end30
  call void @exit(i32 2) noreturn nounwind, !dbg !1072
  unreachable, !dbg !1072

for.inc:                                          ; preds = %if.end26, %cont23
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.0452, i32 1), !dbg !1065
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !1065
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !1065
  br i1 %29, label %ioc_bb36, label %for.cond.backedge, !dbg !1065

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb36
  %arrayidx19 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %28, !dbg !1065
  %30 = load %struct.ngx_module_s** %arrayidx19, align 4, !dbg !1065, !tbaa !949
  %tobool20 = icmp eq %struct.ngx_module_s* %30, null, !dbg !1065
  br i1 %tobool20, label %for.end, label %cont23, !dbg !1065

ioc_bb36:                                         ; preds = %for.inc
  %31 = zext i32 %m.0452 to i64, !dbg !1065
  call void @__ioc_report_add_overflow(i32 354, i32 32, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !1065
  br label %for.cond.backedge, !dbg !1065

for.end:                                          ; preds = %for.cond.preheader, %for.cond.backedge, %if.end30
  %32 = load i32* @ngx_timer_resolution, align 4, !dbg !1074, !tbaa !954
  %tobool38 = icmp eq i32 %32, 0, !dbg !1074
  br i1 %tobool38, label %cont121, label %cont41, !dbg !1074

cont41:                                           ; preds = %for.end
  %33 = load i32* @ngx_event_flags, align 4, !dbg !1074, !tbaa !954
  %and = and i32 %33, 2048, !dbg !1074
  %tobool42 = icmp eq i32 %and, 0, !dbg !1074
  br i1 %tobool42, label %if.then43, label %cont121, !dbg !1074

if.then43:                                        ; preds = %cont41
  call void @llvm.dbg.declare(metadata !{%struct.sigaction* %sa}, metadata !686), !dbg !1075
  call void @llvm.dbg.declare(metadata !{%struct.itimerval* %itv}, metadata !773), !dbg !1076
  %34 = bitcast %struct.sigaction* %sa to i8*, !dbg !1077
  call void @llvm.memset.p0i8.i32(i8* %34, i8 0, i32 140, i32 4, i1 false), !dbg !1077
  %sa_handler = getelementptr inbounds %struct.sigaction* %sa, i32 0, i32 0, i32 0, !dbg !1078
  store void (i32)* @ngx_timer_signal_handler, void (i32)** %sa_handler, align 4, !dbg !1078, !tbaa !949
  %sa_mask = getelementptr inbounds %struct.sigaction* %sa, i32 0, i32 1, !dbg !1079
  %call44 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) nounwind, !dbg !1079
  %call45 = call i32 @sigaction(i32 14, %struct.sigaction* %sa, %struct.sigaction* null) nounwind, !dbg !1080
  %cmp48 = icmp eq i32 %call45, -1, !dbg !1080
  br i1 %cmp48, label %cont52, label %cont67, !dbg !1080

cont52:                                           ; preds = %if.then43
  %35 = load %struct.ngx_log_s** %log, align 4, !dbg !1081, !tbaa !949
  %log_level = getelementptr inbounds %struct.ngx_log_s* %35, i32 0, i32 0, !dbg !1081
  %36 = load i32* %log_level, align 4, !dbg !1081, !tbaa !954
  %cmp53 = icmp ugt i32 %36, 1, !dbg !1081
  br i1 %cmp53, label %cont56, label %return, !dbg !1081

cont56:                                           ; preds = %cont52
  %call58 = call i32* @__errno_location() nounwind readnone, !dbg !1083
  %37 = load i32* %call58, align 4, !dbg !1083, !tbaa !954
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %35, i32 %37, i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !1083
  br label %return, !dbg !1083

cont67:                                           ; preds = %if.then43
  %38 = load i32* @ngx_timer_resolution, align 4, !dbg !1084, !tbaa !954
  %div = udiv i32 %38, 1000, !dbg !1084
  %tv_sec = getelementptr inbounds %struct.itimerval* %itv, i32 0, i32 0, i32 0, !dbg !1084
  store i32 %div, i32* %tv_sec, align 4, !dbg !1084, !tbaa !1050
  %rem = urem i32 %38, 1000, !dbg !1085
  %umul_with_overflow = mul nuw i32 %rem, 1000, !dbg !1085
  %tv_usec = getelementptr inbounds %struct.itimerval* %itv, i32 0, i32 0, i32 1, !dbg !1085
  store i32 %umul_with_overflow, i32* %tv_usec, align 4, !dbg !1085, !tbaa !1050
  %tv_sec86 = getelementptr inbounds %struct.itimerval* %itv, i32 0, i32 1, i32 0, !dbg !1086
  store i32 %div, i32* %tv_sec86, align 4, !dbg !1086, !tbaa !1050
  %tv_usec99 = getelementptr inbounds %struct.itimerval* %itv, i32 0, i32 1, i32 1, !dbg !1087
  store i32 %umul_with_overflow, i32* %tv_usec99, align 4, !dbg !1087, !tbaa !1050
  %call102 = call i32 @setitimer(i32 0, %struct.itimerval* %itv, %struct.itimerval* null) nounwind, !dbg !1088
  %cmp105 = icmp eq i32 %call102, -1, !dbg !1088
  br i1 %cmp105, label %cont110, label %cont121, !dbg !1088

cont110:                                          ; preds = %cont67
  %39 = load %struct.ngx_log_s** %log, align 4, !dbg !1089, !tbaa !949
  %log_level108 = getelementptr inbounds %struct.ngx_log_s* %39, i32 0, i32 0, !dbg !1089
  %40 = load i32* %log_level108, align 4, !dbg !1089, !tbaa !954
  %cmp111 = icmp ugt i32 %40, 1, !dbg !1089
  br i1 %cmp111, label %cont114, label %cont121, !dbg !1089

cont114:                                          ; preds = %cont110
  %call116 = call i32* @__errno_location() nounwind readnone, !dbg !1091
  %41 = load i32* %call116, align 4, !dbg !1091, !tbaa !954
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %39, i32 %41, i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !1091
  br label %cont121, !dbg !1091

cont121:                                          ; preds = %cont110, %cont67, %for.end, %cont114, %cont41
  %42 = load i32* @ngx_event_flags, align 4, !dbg !1092, !tbaa !954
  %and122 = and i32 %42, 1024, !dbg !1092
  %tobool123 = icmp eq i32 %and122, 0, !dbg !1092
  br i1 %tobool123, label %if.end161, label %cont126, !dbg !1092

cont126:                                          ; preds = %cont121
  call void @llvm.dbg.declare(metadata !{%struct.rlimit* %rlmt}, metadata !784), !dbg !1093
  %call127 = call i32 @getrlimit64(i32 7, %struct.rlimit* %rlmt) nounwind, !dbg !1094
  %cmp130 = icmp eq i32 %call127, -1, !dbg !1094
  br i1 %cmp130, label %cont135, label %if.end145, !dbg !1094

cont135:                                          ; preds = %cont126
  %43 = load %struct.ngx_log_s** %log, align 4, !dbg !1095, !tbaa !949
  %log_level133 = getelementptr inbounds %struct.ngx_log_s* %43, i32 0, i32 0, !dbg !1095
  %44 = load i32* %log_level133, align 4, !dbg !1095, !tbaa !954
  %cmp136 = icmp ugt i32 %44, 1, !dbg !1095
  br i1 %cmp136, label %cont139, label %return, !dbg !1095

cont139:                                          ; preds = %cont135
  %call141 = call i32* @__errno_location() nounwind readnone, !dbg !1097
  %45 = load i32* %call141, align 4, !dbg !1097, !tbaa !954
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %43, i32 %45, i8* getelementptr inbounds ([32 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !1097
  br label %return, !dbg !1097

if.end145:                                        ; preds = %cont126
  %rlim_cur = getelementptr inbounds %struct.rlimit* %rlmt, i32 0, i32 0, !dbg !1098
  %46 = load i64* %rlim_cur, align 8, !dbg !1098, !tbaa !1025
  %47 = icmp ult i64 %46, 4294967296, !dbg !1098
  br i1 %47, label %cont148, label %ioc_bb147, !dbg !1098

ioc_bb147:                                        ; preds = %if.end145
  call void @__ioc_report_conversion(i32 411, i32 38, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %46, i8 0) nounwind, !dbg !1098
  br label %cont148, !dbg !1098

cont148:                                          ; preds = %ioc_bb147, %if.end145
  %conv = trunc i64 %46 to i32, !dbg !1098
  %files_n = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 13, !dbg !1098
  store i32 %conv, i32* %files_n, align 4, !dbg !1098, !tbaa !954
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 4), !dbg !1099
  %49 = extractvalue { i32, i1 } %48, 0, !dbg !1099
  %50 = extractvalue { i32, i1 } %48, 1, !dbg !1099
  br i1 %50, label %ioc_bb150, label %cont151, !dbg !1099

ioc_bb150:                                        ; preds = %cont148
  %51 = and i64 %46, 4294967295, !dbg !1099
  call void @__ioc_report_mul_overflow(i32 412, i32 61, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 4, i64 %51, i8 5) nounwind, !dbg !1099
  br label %cont151, !dbg !1099

cont151:                                          ; preds = %cont148, %ioc_bb150
  %52 = load %struct.ngx_log_s** %log, align 4, !dbg !1099, !tbaa !949
  %call153 = call i8* @ngx_calloc(i32 %49, %struct.ngx_log_s* %52) nounwind, !dbg !1099
  %53 = bitcast i8* %call153 to %struct.ngx_connection_s**, !dbg !1099
  %files = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 4, !dbg !1099
  store %struct.ngx_connection_s** %53, %struct.ngx_connection_s*** %files, align 4, !dbg !1099, !tbaa !949
  %cmp155 = icmp eq i8* %call153, null, !dbg !1100
  br i1 %cmp155, label %return, label %if.end161, !dbg !1100

if.end161:                                        ; preds = %cont121, %cont151
  %connection_n = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 12, !dbg !1101
  %54 = load i32* %connection_n, align 4, !dbg !1101, !tbaa !954
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 96), !dbg !1101
  %56 = extractvalue { i32, i1 } %55, 0, !dbg !1101
  %57 = extractvalue { i32, i1 } %55, 1, !dbg !1101
  br i1 %57, label %ioc_bb162, label %cont163, !dbg !1101

ioc_bb162:                                        ; preds = %if.end161
  %58 = zext i32 %54 to i64, !dbg !1101
  call void @__ioc_report_mul_overflow(i32 418, i32 63, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 96, i64 %58, i8 5) nounwind, !dbg !1101
  br label %cont163, !dbg !1101

cont163:                                          ; preds = %if.end161, %ioc_bb162
  %59 = load %struct.ngx_log_s** %log, align 4, !dbg !1101, !tbaa !949
  %call165 = call i8* @ngx_alloc(i32 %56, %struct.ngx_log_s* %59) nounwind, !dbg !1101
  %60 = bitcast i8* %call165 to %struct.ngx_connection_s*, !dbg !1101
  %connections = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 14, !dbg !1101
  store %struct.ngx_connection_s* %60, %struct.ngx_connection_s** %connections, align 4, !dbg !1101, !tbaa !949
  %cmp167 = icmp eq i8* %call165, null, !dbg !1102
  br i1 %cmp167, label %return, label %if.end172, !dbg !1102

if.end172:                                        ; preds = %cont163
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %60}, i64 0, metadata !649), !dbg !1103
  %61 = load i32* %connection_n, align 4, !dbg !1104, !tbaa !954
  %62 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 52), !dbg !1104
  %63 = extractvalue { i32, i1 } %62, 0, !dbg !1104
  %64 = extractvalue { i32, i1 } %62, 1, !dbg !1104
  br i1 %64, label %ioc_bb175, label %cont176, !dbg !1104

ioc_bb175:                                        ; preds = %if.end172
  %65 = zext i32 %61 to i64, !dbg !1104
  call void @__ioc_report_mul_overflow(i32 423, i32 58, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 52, i64 %65, i8 5) nounwind, !dbg !1104
  br label %cont176, !dbg !1104

cont176:                                          ; preds = %if.end172, %ioc_bb175
  %66 = load %struct.ngx_log_s** %log, align 4, !dbg !1104, !tbaa !949
  %call178 = call i8* @ngx_alloc(i32 %63, %struct.ngx_log_s* %66) nounwind, !dbg !1104
  %67 = bitcast i8* %call178 to %struct.ngx_event_s*, !dbg !1104
  %read_events = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 15, !dbg !1104
  store %struct.ngx_event_s* %67, %struct.ngx_event_s** %read_events, align 4, !dbg !1104, !tbaa !949
  %cmp180 = icmp eq i8* %call178, null, !dbg !1105
  br i1 %cmp180, label %return, label %for.cond189.preheader, !dbg !1105

for.cond189.preheader:                            ; preds = %cont176
  %68 = load i32* %connection_n, align 4, !dbg !1106, !tbaa !954
  %cmp191446 = icmp eq i32 %68, 0, !dbg !1106
  br i1 %cmp191446, label %for.end204, label %cont195, !dbg !1106

cont195:                                          ; preds = %for.cond189.preheader, %for.cond189.backedge
  %i.0447 = phi i32 [ %78, %for.cond189.backedge ], [ 0, %for.cond189.preheader ]
  %69 = getelementptr %struct.ngx_event_s* %67, i32 %i.0447, i32 8, !dbg !1108
  %70 = bitcast i8* %69 to i32*, !dbg !1108
  %71 = load i32* %70, align 4, !dbg !1108
  %72 = or i32 %71, 1, !dbg !1108
  store i32 %72, i32* %70, align 4, !dbg !1108
  %73 = getelementptr %struct.ngx_event_s* %67, i32 %i.0447, i32 1, !dbg !1110
  %74 = bitcast i8* %73 to i32*, !dbg !1110
  %75 = load i32* %74, align 4, !dbg !1110
  %76 = or i32 %75, 4, !dbg !1110
  store i32 %76, i32* %74, align 4, !dbg !1110
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0447, i32 1), !dbg !1106
  %78 = extractvalue { i32, i1 } %77, 0, !dbg !1106
  %79 = extractvalue { i32, i1 } %77, 1, !dbg !1106
  br i1 %79, label %ioc_bb202, label %for.cond189.backedge, !dbg !1106

for.cond189.backedge:                             ; preds = %cont195, %ioc_bb202
  %80 = load i32* %connection_n, align 4, !dbg !1106, !tbaa !954
  %cmp191 = icmp ult i32 %78, %80, !dbg !1106
  br i1 %cmp191, label %cont195, label %for.end204, !dbg !1106

ioc_bb202:                                        ; preds = %cont195
  %81 = zext i32 %i.0447 to i64, !dbg !1106
  call void @__ioc_report_add_overflow(i32 428, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %81, i64 1, i8 5) nounwind, !dbg !1106
  br label %for.cond189.backedge, !dbg !1106

for.end204:                                       ; preds = %for.cond189.backedge, %for.cond189.preheader
  %.lcssa445 = phi i32 [ 0, %for.cond189.preheader ], [ %80, %for.cond189.backedge ]
  %82 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.lcssa445, i32 52), !dbg !1111
  %83 = extractvalue { i32, i1 } %82, 0, !dbg !1111
  %84 = extractvalue { i32, i1 } %82, 1, !dbg !1111
  br i1 %84, label %ioc_bb206, label %cont207, !dbg !1111

ioc_bb206:                                        ; preds = %for.end204
  %85 = zext i32 %.lcssa445 to i64, !dbg !1111
  call void @__ioc_report_mul_overflow(i32 434, i32 59, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 52, i64 %85, i8 5) nounwind, !dbg !1111
  br label %cont207, !dbg !1111

cont207:                                          ; preds = %for.end204, %ioc_bb206
  %86 = load %struct.ngx_log_s** %log, align 4, !dbg !1111, !tbaa !949
  %call209 = call i8* @ngx_alloc(i32 %83, %struct.ngx_log_s* %86) nounwind, !dbg !1111
  %87 = bitcast i8* %call209 to %struct.ngx_event_s*, !dbg !1111
  %write_events = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 16, !dbg !1111
  store %struct.ngx_event_s* %87, %struct.ngx_event_s** %write_events, align 4, !dbg !1111, !tbaa !949
  %cmp211 = icmp eq i8* %call209, null, !dbg !1112
  br i1 %cmp211, label %return, label %for.cond220.preheader, !dbg !1112

for.cond220.preheader:                            ; preds = %cont207
  %88 = load i32* %connection_n, align 4, !dbg !1113, !tbaa !954
  %cmp222442 = icmp eq i32 %88, 0, !dbg !1113
  br i1 %cmp222442, label %do.body, label %cont226, !dbg !1113

cont226:                                          ; preds = %for.cond220.preheader, %for.cond220.backedge
  %i.1443 = phi i32 [ %94, %for.cond220.backedge ], [ 0, %for.cond220.preheader ]
  %89 = getelementptr %struct.ngx_event_s* %87, i32 %i.1443, i32 8, !dbg !1115
  %90 = bitcast i8* %89 to i32*, !dbg !1115
  %91 = load i32* %90, align 4, !dbg !1115
  %92 = or i32 %91, 1, !dbg !1115
  store i32 %92, i32* %90, align 4, !dbg !1115
  %93 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1443, i32 1), !dbg !1113
  %94 = extractvalue { i32, i1 } %93, 0, !dbg !1113
  %95 = extractvalue { i32, i1 } %93, 1, !dbg !1113
  br i1 %95, label %ioc_bb230, label %for.cond220.backedge, !dbg !1113

for.cond220.backedge:                             ; preds = %cont226, %ioc_bb230
  %96 = load i32* %connection_n, align 4, !dbg !1113, !tbaa !954
  %cmp222 = icmp ult i32 %94, %96, !dbg !1113
  br i1 %cmp222, label %cont226, label %do.body, !dbg !1113

ioc_bb230:                                        ; preds = %cont226
  %97 = zext i32 %i.1443 to i64, !dbg !1113
  call void @__ioc_report_add_overflow(i32 439, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %97, i64 1, i8 5) nounwind, !dbg !1113
  br label %for.cond220.backedge, !dbg !1113

do.body:                                          ; preds = %for.cond220.preheader, %for.cond220.backedge, %cont235
  %next.0 = phi %struct.ngx_connection_s* [ %arrayidx236, %cont235 ], [ null, %for.cond220.backedge ], [ null, %for.cond220.preheader ]
  %i.2 = phi i32 [ %99, %cont235 ], [ %96, %for.cond220.backedge ], [ 0, %for.cond220.preheader ]
  %98 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.2, i32 1), !dbg !1117
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !1117
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !1117
  br i1 %100, label %ioc_bb234, label %cont235, !dbg !1117

ioc_bb234:                                        ; preds = %do.body
  %101 = zext i32 %i.2 to i64, !dbg !1117
  call void @__ioc_report_sub_overflow(i32 447, i32 6, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %101, i64 1, i8 5) nounwind, !dbg !1117
  br label %cont235, !dbg !1117

cont235:                                          ; preds = %do.body, %ioc_bb234
  call void @llvm.dbg.value(metadata !{i32 %99}, i64 0, metadata !645), !dbg !1117
  %102 = bitcast %struct.ngx_connection_s* %next.0 to i8*, !dbg !1119
  %arrayidx236 = getelementptr inbounds %struct.ngx_connection_s* %60, i32 %99, !dbg !1119
  %data = getelementptr inbounds %struct.ngx_connection_s* %arrayidx236, i32 0, i32 0, !dbg !1119
  store i8* %102, i8** %data, align 4, !dbg !1119, !tbaa !949
  %103 = load %struct.ngx_event_s** %read_events, align 4, !dbg !1120, !tbaa !949
  %arrayidx238 = getelementptr inbounds %struct.ngx_event_s* %103, i32 %99, !dbg !1120
  %read = getelementptr inbounds %struct.ngx_connection_s* %60, i32 %99, i32 1, !dbg !1120
  store %struct.ngx_event_s* %arrayidx238, %struct.ngx_event_s** %read, align 4, !dbg !1120, !tbaa !949
  %104 = load %struct.ngx_event_s** %write_events, align 4, !dbg !1121, !tbaa !949
  %arrayidx241 = getelementptr inbounds %struct.ngx_event_s* %104, i32 %99, !dbg !1121
  %write = getelementptr inbounds %struct.ngx_connection_s* %60, i32 %99, i32 2, !dbg !1121
  store %struct.ngx_event_s* %arrayidx241, %struct.ngx_event_s** %write, align 4, !dbg !1121, !tbaa !949
  %fd = getelementptr inbounds %struct.ngx_connection_s* %60, i32 %99, i32 3, !dbg !1122
  store i32 -1, i32* %fd, align 4, !dbg !1122, !tbaa !954
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %arrayidx236}, i64 0, metadata !650), !dbg !1123
  %tobool247 = icmp eq i32 %99, 0, !dbg !1124
  br i1 %tobool247, label %do.end, label %do.body, !dbg !1124

do.end:                                           ; preds = %cont235
  %free_connections = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 5, !dbg !1125
  store %struct.ngx_connection_s* %arrayidx236, %struct.ngx_connection_s** %free_connections, align 4, !dbg !1125, !tbaa !949
  %105 = load i32* %connection_n, align 4, !dbg !1126, !tbaa !954
  %free_connection_n = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 6, !dbg !1126
  store i32 %105, i32* %free_connection_n, align 4, !dbg !1126, !tbaa !954
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 0, !dbg !1127
  %106 = load i8** %elts, align 4, !dbg !1127, !tbaa !949
  %107 = bitcast i8* %106 to %struct.ngx_listening_s*, !dbg !1127
  call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %107}, i64 0, metadata !648), !dbg !1127
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !645), !dbg !1128
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 1, !dbg !1128
  %108 = load i32* %nelts, align 4, !dbg !1128, !tbaa !954
  %cmp253440 = icmp eq i32 %108, 0, !dbg !1128
  br i1 %cmp253440, label %return, label %for.body255, !dbg !1128

for.body255:                                      ; preds = %do.end, %for.cond251.backedge
  %i.3441 = phi i32 [ %134, %for.cond251.backedge ], [ 0, %do.end ]
  %arrayidx256 = getelementptr inbounds %struct.ngx_listening_s* %107, i32 %i.3441, !dbg !1130
  %fd257 = getelementptr inbounds %struct.ngx_listening_s* %arrayidx256, i32 0, i32 0, !dbg !1130
  %109 = load i32* %fd257, align 4, !dbg !1130, !tbaa !954
  %110 = load %struct.ngx_log_s** %log, align 4, !dbg !1130, !tbaa !949
  %call259 = call %struct.ngx_connection_s* @ngx_get_connection(i32 %109, %struct.ngx_log_s* %110) nounwind, !dbg !1130
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %call259}, i64 0, metadata !649), !dbg !1130
  %cmp260 = icmp eq %struct.ngx_connection_s* %call259, null, !dbg !1132
  br i1 %cmp260, label %return, label %if.end265, !dbg !1132

if.end265:                                        ; preds = %for.body255
  %log267 = getelementptr inbounds %struct.ngx_listening_s* %107, i32 %i.3441, i32 14, !dbg !1133
  %log268 = getelementptr inbounds %struct.ngx_connection_s* %call259, i32 0, i32 10, !dbg !1133
  store %struct.ngx_log_s* %log267, %struct.ngx_log_s** %log268, align 4, !dbg !1133, !tbaa !949
  %listening270 = getelementptr inbounds %struct.ngx_connection_s* %call259, i32 0, i32 8, !dbg !1134
  store %struct.ngx_listening_s* %arrayidx256, %struct.ngx_listening_s** %listening270, align 4, !dbg !1134, !tbaa !949
  %connection = getelementptr inbounds %struct.ngx_listening_s* %107, i32 %i.3441, i32 20, !dbg !1135
  store %struct.ngx_connection_s* %call259, %struct.ngx_connection_s** %connection, align 4, !dbg !1135, !tbaa !949
  %read272 = getelementptr inbounds %struct.ngx_connection_s* %call259, i32 0, i32 1, !dbg !1136
  %111 = load %struct.ngx_event_s** %read272, align 4, !dbg !1136, !tbaa !949
  call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %111}, i64 0, metadata !646), !dbg !1136
  %112 = load %struct.ngx_log_s** %log268, align 4, !dbg !1137, !tbaa !949
  %log274 = getelementptr inbounds %struct.ngx_event_s* %111, i32 0, i32 6, !dbg !1137
  store %struct.ngx_log_s* %112, %struct.ngx_log_s** %log274, align 4, !dbg !1137, !tbaa !949
  %113 = getelementptr %struct.ngx_event_s* %111, i32 0, i32 1, !dbg !1138
  %114 = bitcast i8* %113 to i32*, !dbg !1138
  %115 = load i32* %114, align 4, !dbg !1138
  %116 = or i32 %115, 2, !dbg !1138
  store i32 %116, i32* %114, align 4, !dbg !1138
  %117 = getelementptr %struct.ngx_listening_s* %107, i32 %i.3441, i32 21, !dbg !1139
  %118 = bitcast i8* %117 to i32*, !dbg !1139
  %119 = load i32* %118, align 4, !dbg !1139
  %120 = lshr i32 %119, 12, !dbg !1139
  %bf.clear = shl i32 %120, 15, !dbg !1139
  %121 = and i32 %bf.clear, 32768, !dbg !1139
  %122 = and i32 %116, -32769, !dbg !1139
  %123 = or i32 %121, %122, !dbg !1139
  store i32 %123, i32* %114, align 4, !dbg !1139
  %124 = load i32* @ngx_event_flags, align 4, !dbg !1140, !tbaa !954
  %and283 = and i32 %124, 512, !dbg !1140
  %tobool284 = icmp eq i32 %and283, 0, !dbg !1140
  br i1 %tobool284, label %if.then285, label %if.end308, !dbg !1140

if.then285:                                       ; preds = %if.end265
  %previous = getelementptr inbounds %struct.ngx_listening_s* %107, i32 %i.3441, i32 19, !dbg !1141
  %125 = load %struct.ngx_listening_s** %previous, align 4, !dbg !1141, !tbaa !949
  %tobool287 = icmp eq %struct.ngx_listening_s* %125, null, !dbg !1141
  br i1 %tobool287, label %if.end308, label %if.then288, !dbg !1141

if.then288:                                       ; preds = %if.then285
  %connection291 = getelementptr inbounds %struct.ngx_listening_s* %125, i32 0, i32 20, !dbg !1143
  %126 = load %struct.ngx_connection_s** %connection291, align 4, !dbg !1143, !tbaa !949
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %126}, i64 0, metadata !651), !dbg !1143
  %read292 = getelementptr inbounds %struct.ngx_connection_s* %126, i32 0, i32 1, !dbg !1145
  %127 = load %struct.ngx_event_s** %read292, align 4, !dbg !1145, !tbaa !949
  %128 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !1145, !tbaa !949
  %call295 = call i32 %128(%struct.ngx_event_s* %127, i32 1, i32 1) nounwind, !dbg !1145
  %cmp298 = icmp eq i32 %call295, -1, !dbg !1145
  br i1 %cmp298, label %return, label %cont305, !dbg !1145

cont305:                                          ; preds = %if.then288
  %fd306 = getelementptr inbounds %struct.ngx_connection_s* %126, i32 0, i32 3, !dbg !1146
  store i32 -1, i32* %fd306, align 4, !dbg !1146, !tbaa !954
  br label %if.end308, !dbg !1147

if.end308:                                        ; preds = %if.then285, %if.end265, %cont305
  %handler = getelementptr inbounds %struct.ngx_event_s* %111, i32 0, i32 4, !dbg !1148
  store void (%struct.ngx_event_s*)* @ngx_event_accept, void (%struct.ngx_event_s*)** %handler, align 4, !dbg !1148, !tbaa !949
  %129 = load i32* @ngx_use_accept_mutex, align 4, !dbg !1149, !tbaa !954
  %tobool309 = icmp eq i32 %129, 0, !dbg !1149
  br i1 %tobool309, label %cont313, label %for.inc339, !dbg !1149

cont313:                                          ; preds = %if.end308
  %130 = load i32* @ngx_event_flags, align 4, !dbg !1150, !tbaa !954
  %and314 = and i32 %130, 128, !dbg !1150
  %tobool315 = icmp eq i32 %and314, 0, !dbg !1150
  br i1 %tobool315, label %cont328, label %if.then316, !dbg !1150

if.then316:                                       ; preds = %cont313
  %131 = load i32 (%struct.ngx_connection_s*)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 4), align 4, !dbg !1151, !tbaa !949
  %call317 = call i32 %131(%struct.ngx_connection_s* %call259) nounwind, !dbg !1151
  %cmp320 = icmp eq i32 %call317, -1, !dbg !1151
  br i1 %cmp320, label %return, label %for.inc339, !dbg !1151

cont328:                                          ; preds = %cont313
  %132 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1153, !tbaa !949
  %call329 = call i32 %132(%struct.ngx_event_s* %111, i32 1, i32 0) nounwind, !dbg !1153
  %cmp332 = icmp eq i32 %call329, -1, !dbg !1153
  br i1 %cmp332, label %return, label %for.inc339, !dbg !1153

for.inc339:                                       ; preds = %if.end308, %if.then316, %cont328
  %133 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.3441, i32 1), !dbg !1128
  %134 = extractvalue { i32, i1 } %133, 0, !dbg !1128
  %135 = extractvalue { i32, i1 } %133, 1, !dbg !1128
  br i1 %135, label %ioc_bb340, label %for.cond251.backedge, !dbg !1128

for.cond251.backedge:                             ; preds = %for.inc339, %ioc_bb340
  %136 = load i32* %nelts, align 4, !dbg !1128, !tbaa !954
  %cmp253 = icmp ult i32 %134, %136, !dbg !1128
  br i1 %cmp253, label %for.body255, label %return, !dbg !1128

ioc_bb340:                                        ; preds = %for.inc339
  %137 = zext i32 %i.3441 to i64, !dbg !1128
  call void @__ioc_report_add_overflow(i32 460, i32 46, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %137, i64 1, i8 5) nounwind, !dbg !1128
  br label %for.cond251.backedge, !dbg !1128

return:                                           ; preds = %do.end, %cont328, %if.then316, %if.then288, %for.body255, %for.cond251.backedge, %cont207, %cont176, %cont163, %cont151, %cont139, %cont135, %cont56, %cont52, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ -1, %cont52 ], [ -1, %cont56 ], [ -1, %cont135 ], [ -1, %cont139 ], [ -1, %cont151 ], [ -1, %cont163 ], [ -1, %cont176 ], [ -1, %cont207 ], [ 0, %do.end ], [ -1, %cont328 ], [ -1, %if.then316 ], [ -1, %if.then288 ], [ -1, %for.body255 ], [ 0, %for.cond251.backedge ]
  ret i32 %retval.0, !dbg !1155
}

define void @ngx_process_events_and_timers(%struct.ngx_cycle_s* %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !452), !dbg !1156
  %0 = load i32* @ngx_timer_resolution, align 4, !dbg !1157, !tbaa !954
  %tobool = icmp eq i32 %0, 0, !dbg !1157
  br i1 %tobool, label %if.else, label %ioc_bb1, !dbg !1157

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 78, i32 27, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1158
  tail call void @llvm.dbg.value(metadata !1160, i64 0, metadata !455), !dbg !1158
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !453), !dbg !1161
  br label %if.end, !dbg !1162

if.else:                                          ; preds = %entry
  %call = tail call i32 @ngx_event_find_timer() nounwind, !dbg !1163
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !455), !dbg !1163
  tail call void @llvm.dbg.value(metadata !1165, i64 0, metadata !453), !dbg !1166
  br label %if.end

if.end:                                           ; preds = %if.else, %ioc_bb1
  %flags.0 = phi i32 [ 0, %ioc_bb1 ], [ 1, %if.else ]
  %timer.0 = phi i32 [ -1, %ioc_bb1 ], [ %call, %if.else ]
  %1 = load i32* @ngx_use_accept_mutex, align 4, !dbg !1167, !tbaa !954
  %tobool7 = icmp eq i32 %1, 0, !dbg !1167
  br i1 %tobool7, label %if.end35, label %if.then8, !dbg !1167

if.then8:                                         ; preds = %if.end
  %2 = load i32* @ngx_accept_disabled, align 4, !dbg !1168, !tbaa !954
  %cmp = icmp sgt i32 %2, 0, !dbg !1168
  br i1 %cmp, label %if.then9, label %if.else12, !dbg !1168

if.then9:                                         ; preds = %if.then8
  %3 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 -1), !dbg !1170
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !1170
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !1170
  br i1 %5, label %ioc_bb10, label %cont11, !dbg !1170

ioc_bb10:                                         ; preds = %if.then9
  %6 = sext i32 %2 to i64, !dbg !1170
  tail call void @__ioc_report_add_overflow(i32 89, i32 26, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @3, i32 0, i32 0), i64 %6, i64 -1, i8 13) nounwind, !dbg !1170
  br label %cont11, !dbg !1170

cont11:                                           ; preds = %if.then9, %ioc_bb10
  store i32 %4, i32* @ngx_accept_disabled, align 4, !dbg !1170, !tbaa !954
  br label %if.end35, !dbg !1172

if.else12:                                        ; preds = %if.then8
  %call13 = tail call i32 @ngx_trylock_accept_mutex(%struct.ngx_cycle_s* %cycle) nounwind, !dbg !1173
  %cmp16 = icmp eq i32 %call13, -1, !dbg !1173
  br i1 %cmp16, label %if.end54, label %if.end18, !dbg !1173

if.end18:                                         ; preds = %if.else12
  %7 = load i32* @ngx_accept_mutex_held, align 4, !dbg !1175, !tbaa !954
  %tobool19 = icmp eq i32 %7, 0, !dbg !1175
  br i1 %tobool19, label %ioc_bb27, label %cont22, !dbg !1175

cont22:                                           ; preds = %if.end18
  %or = or i32 %flags.0, 2, !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !453), !dbg !1176
  br label %if.end35, !dbg !1178

ioc_bb27:                                         ; preds = %if.end18
  tail call void @__ioc_report_conversion(i32 99, i32 36, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1179
  %cmp29 = icmp eq i32 %timer.0, -1, !dbg !1179
  %8 = load i32* @ngx_accept_mutex_delay, align 4, !dbg !1179, !tbaa !954
  %cmp30 = icmp ugt i32 %timer.0, %8, !dbg !1179
  %or.cond = or i1 %cmp29, %cmp30, !dbg !1179
  %.timer.0 = select i1 %or.cond, i32 %8, i32 %timer.0, !dbg !1179
  br label %if.end35, !dbg !1179

if.end35:                                         ; preds = %ioc_bb27, %if.end, %cont11, %cont22
  %flags.1 = phi i32 [ %flags.0, %cont11 ], [ %or, %cont22 ], [ %flags.0, %if.end ], [ %flags.0, %ioc_bb27 ]
  %timer.1 = phi i32 [ %timer.0, %cont11 ], [ %timer.0, %cont22 ], [ %timer.0, %if.end ], [ %.timer.0, %ioc_bb27 ]
  %9 = load volatile i32* @ngx_current_msec, align 4, !dbg !1181, !tbaa !954
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !456), !dbg !1181
  %10 = load i32 (%struct.ngx_cycle_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 7), align 4, !dbg !1182, !tbaa !949
  %call36 = tail call i32 %10(%struct.ngx_cycle_s* %cycle, i32 %timer.1, i32 %flags.1) nounwind, !dbg !1182
  %11 = load volatile i32* @ngx_current_msec, align 4, !dbg !1183, !tbaa !954
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %11, i32 %9), !dbg !1183
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !1183
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !1183
  br i1 %14, label %ioc_bb37, label %cont38, !dbg !1183

ioc_bb37:                                         ; preds = %if.end35
  %15 = zext i32 %9 to i64, !dbg !1183
  %16 = zext i32 %11 to i64, !dbg !1183
  tail call void @__ioc_report_sub_overflow(i32 107, i32 28, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %16, i64 %15, i8 5) nounwind, !dbg !1183
  br label %cont38, !dbg !1183

cont38:                                           ; preds = %if.end35, %ioc_bb37
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !456), !dbg !1183
  %17 = load %struct.ngx_event_s** @ngx_posted_accept_events, align 4, !dbg !1184, !tbaa !949
  %tobool39 = icmp eq %struct.ngx_event_s* %17, null, !dbg !1184
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1184

if.then40:                                        ; preds = %cont38
  tail call void @ngx_event_process_posted(%struct.ngx_cycle_s* %cycle, %struct.ngx_event_s** @ngx_posted_accept_events) nounwind, !dbg !1185
  br label %if.end41, !dbg !1187

if.end41:                                         ; preds = %cont38, %if.then40
  %18 = load i32* @ngx_accept_mutex_held, align 4, !dbg !1188, !tbaa !954
  %tobool42 = icmp eq i32 %18, 0, !dbg !1188
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1188

if.then43:                                        ; preds = %if.end41
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* @ngx_accept_mutex) nounwind, !dbg !1189
  br label %if.end44, !dbg !1191

if.end44:                                         ; preds = %if.end41, %if.then43
  %tobool45 = icmp eq i32 %13, 0, !dbg !1192
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !1192

if.then46:                                        ; preds = %if.end44
  tail call void @ngx_event_expire_timers() nounwind, !dbg !1193
  br label %if.end47, !dbg !1195

if.end47:                                         ; preds = %if.end44, %if.then46
  %19 = load %struct.ngx_event_s** @ngx_posted_events, align 4, !dbg !1196, !tbaa !949
  %tobool48 = icmp eq %struct.ngx_event_s* %19, null, !dbg !1196
  br i1 %tobool48, label %if.end54, label %if.then49, !dbg !1196

if.then49:                                        ; preds = %if.end47
  %20 = load i32* @ngx_threaded, align 4, !dbg !1197, !tbaa !954
  %tobool50 = icmp eq i32 %20, 0, !dbg !1197
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !1197

if.then51:                                        ; preds = %if.then49
  tail call void @ngx_wakeup_worker_thread(%struct.ngx_cycle_s* %cycle) nounwind, !dbg !1199
  br label %if.end54, !dbg !1201

if.else52:                                        ; preds = %if.then49
  tail call void @ngx_event_process_posted(%struct.ngx_cycle_s* %cycle, %struct.ngx_event_s** @ngx_posted_events) nounwind, !dbg !1202
  br label %if.end54

if.end54:                                         ; preds = %if.end47, %if.then51, %if.else52, %if.else12
  ret void, !dbg !1204
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @ngx_event_find_timer()

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @ngx_trylock_accept_mutex(%struct.ngx_cycle_s*)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @ngx_event_process_posted(%struct.ngx_cycle_s*, %struct.ngx_event_s**)

declare void @ngx_shmtx_unlock(%struct.ngx_shmtx_t*)

declare void @ngx_event_expire_timers()

declare void @ngx_wakeup_worker_thread(%struct.ngx_cycle_s*)

define i32 @ngx_handle_read_event(%struct.ngx_event_s* %rev, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %rev}, i64 0, metadata !465), !dbg !1205
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !466), !dbg !1205
  %0 = load i32* @ngx_event_flags, align 4, !dbg !1206, !tbaa !954
  %and = and i32 %0, 4, !dbg !1206
  %tobool = icmp eq i32 %and, 0, !dbg !1206
  br i1 %tobool, label %cont19, label %if.then, !dbg !1206

if.then:                                          ; preds = %entry
  %1 = getelementptr %struct.ngx_event_s* %rev, i32 0, i32 1, !dbg !1208
  %2 = bitcast i8* %1 to i32*, !dbg !1208
  %3 = load i32* %2, align 4, !dbg !1208
  %4 = and i32 %3, 40, !dbg !1208
  %5 = icmp eq i32 %4, 0, !dbg !1208
  br i1 %5, label %if.then5, label %if.end17, !dbg !1208

if.then5:                                         ; preds = %if.then
  %6 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1210, !tbaa !949
  tail call void @__ioc_report_shl_strict(i32 134, i32 47, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 1, i64 31, i8 13) nounwind, !dbg !1210
  tail call void @__ioc_report_conversion(i32 134, i32 44, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -2147483648, i8 1) nounwind, !dbg !1210
  %call = tail call i32 %6(%struct.ngx_event_s* %rev, i32 1, i32 -2147483648) nounwind, !dbg !1210
  %cmp = icmp eq i32 %call, -1, !dbg !1210
  br i1 %cmp, label %return, label %if.end17, !dbg !1210

if.end17:                                         ; preds = %if.then, %if.then5
  br label %return, !dbg !1212

cont19:                                           ; preds = %entry
  %and20 = and i32 %0, 1, !dbg !1213
  %tobool21 = icmp eq i32 %and20, 0, !dbg !1213
  br i1 %tobool21, label %cont72, label %if.then22, !dbg !1213

if.then22:                                        ; preds = %cont19
  %7 = getelementptr %struct.ngx_event_s* %rev, i32 0, i32 1, !dbg !1214
  %8 = bitcast i8* %7 to i32*, !dbg !1214
  %9 = load i32* %8, align 4, !dbg !1214
  %bf.clear28 = and i32 %9, 32, !dbg !1214
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !1214
  %10 = and i32 %9, 40, !dbg !1214
  %11 = icmp eq i32 %10, 0, !dbg !1214
  br i1 %11, label %cont32, label %cont45, !dbg !1214

cont32:                                           ; preds = %if.then22
  %12 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1216, !tbaa !949
  %call33 = tail call i32 %12(%struct.ngx_event_s* %rev, i32 1, i32 0) nounwind, !dbg !1216
  %cmp36 = icmp eq i32 %call33, -1, !dbg !1216
  %. = sext i1 %cmp36 to i32, !dbg !1216
  ret i32 %., !dbg !1216

cont45:                                           ; preds = %if.then22
  %bf.clear24 = and i32 %9, 8, !dbg !1214
  %tobool25 = icmp eq i32 %bf.clear24, 0, !dbg !1214
  br i1 %tobool25, label %return, label %cont52, !dbg !1218

cont52:                                           ; preds = %cont45
  br i1 %tobool29, label %cont55, label %cont60, !dbg !1218

cont55:                                           ; preds = %cont52
  %and56 = and i32 %flags, 1, !dbg !1218
  %tobool57 = icmp eq i32 %and56, 0, !dbg !1218
  br i1 %tobool57, label %return, label %cont60, !dbg !1218

cont60:                                           ; preds = %cont52, %cont55
  %13 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !1219, !tbaa !949
  %call61 = tail call i32 %13(%struct.ngx_event_s* %rev, i32 1, i32 %flags) nounwind, !dbg !1219
  %cmp64 = icmp eq i32 %call61, -1, !dbg !1219
  %.137 = sext i1 %cmp64 to i32, !dbg !1219
  br label %return, !dbg !1219

cont72:                                           ; preds = %cont19
  %and73 = and i32 %0, 4096, !dbg !1221
  %tobool74 = icmp eq i32 %and73, 0, !dbg !1221
  br i1 %tobool74, label %return, label %if.then75, !dbg !1221

if.then75:                                        ; preds = %cont72
  %14 = getelementptr %struct.ngx_event_s* %rev, i32 0, i32 1, !dbg !1222
  %15 = bitcast i8* %14 to i32*, !dbg !1222
  %16 = load i32* %15, align 4, !dbg !1222
  %17 = and i32 %16, 40, !dbg !1222
  %18 = icmp eq i32 %17, 0, !dbg !1222
  br i1 %18, label %cont85, label %cont99, !dbg !1222

cont85:                                           ; preds = %if.then75
  %19 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1224, !tbaa !949
  %call86 = tail call i32 %19(%struct.ngx_event_s* %rev, i32 1, i32 0) nounwind, !dbg !1224
  %cmp89 = icmp eq i32 %call86, -1, !dbg !1224
  %.138 = sext i1 %cmp89 to i32, !dbg !1224
  br label %return, !dbg !1224

cont99:                                           ; preds = %if.then75
  %20 = and i32 %16, 96, !dbg !1226
  %21 = icmp eq i32 %20, 64, !dbg !1226
  br i1 %21, label %cont107, label %return, !dbg !1226

cont107:                                          ; preds = %cont99
  %22 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !1227, !tbaa !949
  %call108 = tail call i32 %22(%struct.ngx_event_s* %rev, i32 1, i32 0) nounwind, !dbg !1227
  %cmp111 = icmp eq i32 %call108, -1, !dbg !1227
  %.139 = sext i1 %cmp111 to i32, !dbg !1227
  br label %return, !dbg !1227

return:                                           ; preds = %cont99, %cont107, %cont85, %cont60, %cont72, %cont45, %cont55, %if.then5, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -1, %if.then5 ], [ 0, %cont55 ], [ 0, %cont45 ], [ 0, %cont99 ], [ 0, %cont72 ], [ %.137, %cont60 ], [ %.138, %cont85 ], [ %.139, %cont107 ]
  ret i32 %retval.0, !dbg !1229
}

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @ngx_handle_write_event(%struct.ngx_event_s* %wev, i32 %lowat) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %wev}, i64 0, metadata !472), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !473), !dbg !1230
  %tobool = icmp eq i32 %lowat, 0, !dbg !1231
  br i1 %tobool, label %cont6, label %if.then, !dbg !1231

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_event_s* %wev, i32 0, i32 0, !dbg !1232
  %0 = load i8** %data, align 4, !dbg !1232, !tbaa !949
  %1 = bitcast i8* %0 to %struct.ngx_connection_s*, !dbg !1232
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %1}, i64 0, metadata !474), !dbg !1232
  %call = tail call i32 @ngx_send_lowat(%struct.ngx_connection_s* %1, i32 %lowat), !dbg !1234
  %cmp = icmp eq i32 %call, -1, !dbg !1234
  br i1 %cmp, label %return, label %cont6, !dbg !1234

cont6:                                            ; preds = %if.then, %entry
  %2 = load i32* @ngx_event_flags, align 4, !dbg !1235, !tbaa !954
  %and = and i32 %2, 4, !dbg !1235
  %tobool7 = icmp eq i32 %and, 0, !dbg !1235
  br i1 %tobool7, label %cont31, label %if.then8, !dbg !1235

if.then8:                                         ; preds = %cont6
  %3 = getelementptr %struct.ngx_event_s* %wev, i32 0, i32 1, !dbg !1236
  %4 = bitcast i8* %3 to i32*, !dbg !1236
  %5 = load i32* %4, align 4, !dbg !1236
  %6 = and i32 %5, 40, !dbg !1236
  %7 = icmp eq i32 %6, 0, !dbg !1236
  br i1 %7, label %if.then13, label %if.end29, !dbg !1236

if.then13:                                        ; preds = %if.then8
  %8 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1238, !tbaa !949
  tail call void @__ioc_report_shl_strict(i32 186, i32 48, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 1, i64 31, i8 13) nounwind, !dbg !1238
  tail call void @__ioc_report_conversion(i32 186, i32 44, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -2147483648, i8 1) nounwind, !dbg !1238
  %call21 = tail call i32 %8(%struct.ngx_event_s* %wev, i32 4, i32 -2147483648) nounwind, !dbg !1238
  %cmp24 = icmp eq i32 %call21, -1, !dbg !1238
  br i1 %cmp24, label %return, label %if.end29, !dbg !1238

if.end29:                                         ; preds = %if.then8, %if.then13
  br label %return, !dbg !1240

cont31:                                           ; preds = %cont6
  %and32 = and i32 %2, 1, !dbg !1241
  %tobool33 = icmp eq i32 %and32, 0, !dbg !1241
  br i1 %tobool33, label %cont80, label %if.then34, !dbg !1241

if.then34:                                        ; preds = %cont31
  %9 = getelementptr %struct.ngx_event_s* %wev, i32 0, i32 1, !dbg !1242
  %10 = bitcast i8* %9 to i32*, !dbg !1242
  %11 = load i32* %10, align 4, !dbg !1242
  %12 = and i32 %11, 40, !dbg !1242
  switch i32 %12, label %return [
    i32 0, label %cont44
    i32 40, label %cont68
  ], !dbg !1242

cont44:                                           ; preds = %if.then34
  %13 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1244, !tbaa !949
  %call45 = tail call i32 %13(%struct.ngx_event_s* %wev, i32 4, i32 0) nounwind, !dbg !1244
  %cmp48 = icmp eq i32 %call45, -1, !dbg !1244
  %. = sext i1 %cmp48 to i32, !dbg !1244
  ret i32 %., !dbg !1244

cont68:                                           ; preds = %if.then34
  %14 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !1246, !tbaa !949
  %call69 = tail call i32 %14(%struct.ngx_event_s* %wev, i32 4, i32 0) nounwind, !dbg !1246
  %cmp72 = icmp eq i32 %call69, -1, !dbg !1246
  %.150 = sext i1 %cmp72 to i32, !dbg !1246
  br label %return, !dbg !1246

cont80:                                           ; preds = %cont31
  %and81 = and i32 %2, 4096, !dbg !1248
  %tobool82 = icmp eq i32 %and81, 0, !dbg !1248
  br i1 %tobool82, label %return, label %if.then83, !dbg !1248

if.then83:                                        ; preds = %cont80
  %15 = getelementptr %struct.ngx_event_s* %wev, i32 0, i32 1, !dbg !1249
  %16 = bitcast i8* %15 to i32*, !dbg !1249
  %17 = load i32* %16, align 4, !dbg !1249
  %18 = and i32 %17, 40, !dbg !1249
  %19 = icmp eq i32 %18, 0, !dbg !1249
  br i1 %19, label %cont93, label %cont107, !dbg !1249

cont93:                                           ; preds = %if.then83
  %20 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 0), align 4, !dbg !1251, !tbaa !949
  %call94 = tail call i32 %20(%struct.ngx_event_s* %wev, i32 4, i32 0) nounwind, !dbg !1251
  %cmp97 = icmp eq i32 %call94, -1, !dbg !1251
  %.151 = sext i1 %cmp97 to i32, !dbg !1251
  br label %return, !dbg !1251

cont107:                                          ; preds = %if.then83
  %21 = and i32 %17, 96, !dbg !1253
  %22 = icmp eq i32 %21, 96, !dbg !1253
  br i1 %22, label %cont118, label %return, !dbg !1253

cont118:                                          ; preds = %cont107
  %23 = load i32 (%struct.ngx_event_s*, i32, i32)** getelementptr inbounds (%struct.ngx_event_actions_t* @ngx_event_actions, i32 0, i32 1), align 4, !dbg !1254, !tbaa !949
  %call119 = tail call i32 %23(%struct.ngx_event_s* %wev, i32 4, i32 0) nounwind, !dbg !1254
  %cmp122 = icmp eq i32 %call119, -1, !dbg !1254
  %.152 = sext i1 %cmp122 to i32, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %if.then34, %cont107, %cont118, %cont93, %cont68, %cont80, %if.then13, %if.then, %if.end29
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -1, %if.then ], [ -1, %if.then13 ], [ 0, %cont107 ], [ 0, %cont80 ], [ %.150, %cont68 ], [ %.151, %cont93 ], [ %.152, %cont118 ], [ 0, %if.then34 ]
  ret i32 %retval.0, !dbg !1256
}

define i32 @ngx_send_lowat(%struct.ngx_connection_s* %c, i32 %lowat) nounwind {
entry:
  %sndlowat = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %c}, i64 0, metadata !481), !dbg !1257
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !482), !dbg !1257
  call void @llvm.dbg.declare(metadata !{i32* %sndlowat}, metadata !483), !dbg !1258
  %cmp = icmp eq i32 %lowat, 0, !dbg !1259
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !1259

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr %struct.ngx_connection_s* %c, i32 0, i32 20, !dbg !1259
  %1 = bitcast i8* %0 to i32*, !dbg !1259
  %2 = load i32* %1, align 4, !dbg !1259
  %bf.clear = and i32 %2, 1048576, !dbg !1259
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1259
  br i1 %tobool, label %if.end, label %return, !dbg !1259

if.end:                                           ; preds = %lor.lhs.false
  %3 = icmp sgt i32 %lowat, -1, !dbg !1260
  br i1 %3, label %cont5, label %ioc_bb4, !dbg !1260

ioc_bb4:                                          ; preds = %if.end
  %4 = zext i32 %lowat to i64, !dbg !1260
  call void @__ioc_report_conversion(i32 516, i32 21, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %4, i8 0) nounwind, !dbg !1260
  br label %cont5, !dbg !1260

cont5:                                            ; preds = %ioc_bb4, %if.end
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !483), !dbg !1260
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !483), !dbg !1260
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !483), !dbg !1260
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !483), !dbg !1260
  call void @llvm.dbg.value(metadata !{i32 %lowat}, i64 0, metadata !483), !dbg !1260
  store i32 %lowat, i32* %sndlowat, align 4, !dbg !1260, !tbaa !954
  %fd = getelementptr inbounds %struct.ngx_connection_s* %c, i32 0, i32 3, !dbg !1261
  %5 = load i32* %fd, align 4, !dbg !1261, !tbaa !954
  %6 = bitcast i32* %sndlowat to i8*, !dbg !1261
  %call = call i32 @setsockopt(i32 %5, i32 1, i32 19, i8* %6, i32 4) nounwind, !dbg !1261
  %cmp8 = icmp eq i32 %call, -1, !dbg !1261
  br i1 %cmp8, label %if.then9, label %cont16, !dbg !1261

if.then9:                                         ; preds = %cont5
  %call10 = call i32* @__errno_location() nounwind readnone, !dbg !1262
  %7 = load i32* %call10, align 4, !dbg !1262, !tbaa !954
  %call11 = call i32 @ngx_connection_error(%struct.ngx_connection_s* %c, i32 %7, i8* getelementptr inbounds ([31 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !1262
  br label %return, !dbg !1264

cont16:                                           ; preds = %cont5
  %8 = load i32* %1, align 4, !dbg !1265
  %9 = or i32 %8, 1048576, !dbg !1265
  store i32 %9, i32* %1, align 4, !dbg !1265
  br label %return, !dbg !1266

return:                                           ; preds = %entry, %lor.lhs.false, %cont16, %if.then9
  %retval.0 = phi i32 [ -1, %if.then9 ], [ 0, %cont16 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1267
}

declare i32 @setsockopt(i32, i32, i32, i8*, i32) nounwind

declare i32 @ngx_connection_error(%struct.ngx_connection_s*, i32, i8*)

declare i32* @__errno_location() nounwind readnone

declare i32 @epoll_create(i32) nounwind

declare i32 @close(i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_event_timer_init(%struct.ngx_log_s*)

declare void @exit(i32) noreturn nounwind

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define internal void @ngx_timer_signal_handler(i32 %signo) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %signo}, i64 0, metadata !795), !dbg !1268
  store i32 1, i32* @ngx_event_timer_alarm, align 4, !dbg !1269, !tbaa !954
  ret void, !dbg !1271
}

declare i32 @sigemptyset(%struct.__sigset_t*) nounwind

declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) nounwind

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @setitimer(i32, %struct.itimerval* nocapture, %struct.itimerval* nocapture) nounwind

declare i32 @getrlimit64(i32, %struct.rlimit*) nounwind

declare i8* @ngx_calloc(i32, %struct.ngx_log_s*)

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare %struct.ngx_connection_s* @ngx_get_connection(i32, %struct.ngx_log_s*)

declare void @ngx_event_accept(%struct.ngx_event_s*)

declare i32 @ngx_shm_alloc(%struct.ngx_shm_t*)

declare i32 @ngx_shmtx_create(%struct.ngx_shmtx_t*, %struct.ngx_shmtx_sh_t*, i8*)

define internal i8* @ngx_event_connections(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !857), !dbg !1272
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !858), !dbg !1272
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !859), !dbg !1272
  %connections = bitcast i8* %conf to i32*, !dbg !1273
  %0 = load i32* %connections, align 4, !dbg !1273, !tbaa !954
  tail call void @__ioc_report_conversion(i32 588, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1273
  %cmp = icmp eq i32 %0, -1, !dbg !1273
  br i1 %cmp, label %if.end, label %return, !dbg !1273

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 1) to i32), i32 ptrtoint ([12 x i8]* @.str10 to i32)), !dbg !1274
  %2 = extractvalue { i32, i1 } %1, 1, !dbg !1274
  br i1 %2, label %ioc_bb3, label %cont6, !dbg !1274

ioc_bb3:                                          ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 591, i32 7, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([12 x i8]* @.str10 to i32) to i64), i8 5) nounwind, !dbg !1274
  br label %cont6, !dbg !1274

cont6:                                            ; preds = %ioc_bb3, %if.end
  %data57 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, i32 1, !dbg !1275
  %3 = load i8** %data57, align 4, !dbg !1275, !tbaa !949
  %call = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !1275
  %cmp58 = icmp eq i32 %call, 0, !dbg !1275
  br i1 %cmp58, label %cont62, label %if.end63, !dbg !1275

cont62:                                           ; preds = %cont6
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([90 x i8]* @.str20, i32 0, i32 0)) nounwind, !dbg !1278
  br label %if.end63, !dbg !1280

if.end63:                                         ; preds = %cont62, %cont6
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1281
  %4 = load %struct.ngx_array_s** %args, align 4, !dbg !1281, !tbaa !949
  %elts = getelementptr inbounds %struct.ngx_array_s* %4, i32 0, i32 0, !dbg !1281
  %5 = load i8** %elts, align 4, !dbg !1281, !tbaa !949
  %arrayidx64 = getelementptr inbounds i8* %5, i32 8, !dbg !1282
  %data65 = getelementptr inbounds i8* %5, i32 12, !dbg !1282
  %6 = bitcast i8* %data65 to i8**, !dbg !1282
  %7 = load i8** %6, align 4, !dbg !1282, !tbaa !949
  %len = bitcast i8* %arrayidx64 to i32*, !dbg !1282
  %8 = load i32* %len, align 4, !dbg !1282, !tbaa !954
  %call67 = tail call i32 @ngx_atoi(i8* %7, i32 %8) nounwind, !dbg !1282
  %9 = icmp sgt i32 %call67, -1, !dbg !1282
  br i1 %9, label %cont70.thread, label %cont70, !dbg !1282

cont70.thread:                                    ; preds = %if.end63
  store i32 %call67, i32* %connections, align 4, !dbg !1282, !tbaa !954
  tail call void @__ioc_report_conversion(i32 596, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1283
  br label %if.end86, !dbg !1283

cont70:                                           ; preds = %if.end63
  %10 = sext i32 %call67 to i64, !dbg !1282
  tail call void @__ioc_report_conversion(i32 595, i32 24, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 %10, i8 1) nounwind, !dbg !1282
  store i32 %call67, i32* %connections, align 4, !dbg !1282, !tbaa !954
  tail call void @__ioc_report_conversion(i32 596, i32 43, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1283
  %cmp78 = icmp eq i32 %call67, -1, !dbg !1283
  br i1 %cmp78, label %cont82, label %if.end86, !dbg !1283

cont82:                                           ; preds = %cont70
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str21, i32 0, i32 0), i8* %arrayidx64) nounwind, !dbg !1284
  br label %return, !dbg !1286

if.end86:                                         ; preds = %cont70.thread, %cont70
  %11 = load i32* %connections, align 4, !dbg !1287, !tbaa !954
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !1287
  %12 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !1287, !tbaa !949
  %connection_n = getelementptr inbounds %struct.ngx_cycle_s* %12, i32 0, i32 12, !dbg !1287
  store i32 %11, i32* %connection_n, align 4, !dbg !1287, !tbaa !954
  br label %return, !dbg !1288

return:                                           ; preds = %entry, %if.end86, %cont82
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont82 ], [ null, %if.end86 ], [ getelementptr inbounds ([13 x i8]* @.str17, i32 0, i32 0), %entry ]
  ret i8* %retval.0, !dbg !1289
}

define internal i8* @ngx_event_use(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !839), !dbg !1290
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !840), !dbg !1290
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !841), !dbg !1290
  %use = getelementptr inbounds i8* %conf, i32 4, !dbg !1291
  %0 = bitcast i8* %use to i32*, !dbg !1291
  %1 = load i32* %0, align 4, !dbg !1291, !tbaa !954
  tail call void @__ioc_report_conversion(i32 611, i32 35, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @14, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1291
  %cmp = icmp eq i32 %1, -1, !dbg !1291
  br i1 %cmp, label %if.end, label %return, !dbg !1291

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1292
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !1292, !tbaa !949
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !1292
  %3 = load i8** %elts, align 4, !dbg !1292, !tbaa !949
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !1293
  %4 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !1293, !tbaa !949
  %old_cycle = getelementptr inbounds %struct.ngx_cycle_s* %4, i32 0, i32 17, !dbg !1293
  %5 = load %struct.ngx_cycle_s** %old_cycle, align 4, !dbg !1293, !tbaa !949
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %5, i32 0, i32 0, !dbg !1293
  %6 = load i8***** %conf_ctx, align 4, !dbg !1293, !tbaa !949
  %tobool = icmp eq i8**** %6, null, !dbg !1293
  br i1 %tobool, label %if.end8, label %if.then3, !dbg !1293

if.then3:                                         ; preds = %if.end
  %7 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_event_core_module, i32 0, i32 0), align 4, !dbg !1294, !tbaa !954
  %8 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !1294, !tbaa !954
  %arrayidx = getelementptr inbounds i8**** %6, i32 %8, !dbg !1294
  %9 = load i8**** %arrayidx, align 4, !dbg !1294, !tbaa !949
  %10 = load i8*** %9, align 4, !dbg !1294, !tbaa !949
  %arrayidx7 = getelementptr inbounds i8** %10, i32 %7, !dbg !1294
  %11 = load i8** %arrayidx7, align 4, !dbg !1294, !tbaa !949
  %12 = bitcast i8* %11 to %struct.ngx_event_conf_t*, !dbg !1294
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_conf_t* %12}, i64 0, metadata !846), !dbg !1294
  br label %if.end8, !dbg !1296

if.end8:                                          ; preds = %if.end, %if.then3
  %old_ecf.0 = phi %struct.ngx_event_conf_t* [ %12, %if.then3 ], [ null, %if.end ]
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !844), !dbg !1297
  %13 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1297, !tbaa !949
  %tobool1076 = icmp eq %struct.ngx_module_s* %13, null, !dbg !1297
  %arrayidx54.pre = getelementptr inbounds i8* %3, i32 8, !dbg !1298
  br i1 %tobool1076, label %cont53, label %cont13.lr.ph, !dbg !1297

cont13.lr.ph:                                     ; preds = %if.end8
  %len19 = bitcast i8* %arrayidx54.pre to i32*, !dbg !1299
  %data24 = getelementptr inbounds i8* %3, i32 12, !dbg !1300
  %14 = bitcast i8* %data24 to i8**, !dbg !1300
  br label %cont13, !dbg !1297

cont13:                                           ; preds = %cont13.lr.ph, %for.cond.backedge
  %15 = phi %struct.ngx_module_s* [ %13, %cont13.lr.ph ], [ %31, %for.cond.backedge ]
  %m.077 = phi i32 [ 0, %cont13.lr.ph ], [ %29, %for.cond.backedge ]
  %type = getelementptr inbounds %struct.ngx_module_s* %15, i32 0, i32 9, !dbg !1301
  %16 = load i32* %type, align 4, !dbg !1301, !tbaa !954
  %cmp14 = icmp eq i32 %16, 1414420037, !dbg !1301
  br i1 %cmp14, label %if.end16, label %for.inc, !dbg !1301

if.end16:                                         ; preds = %cont13
  %ctx = getelementptr inbounds %struct.ngx_module_s* %15, i32 0, i32 7, !dbg !1302
  %17 = load i8** %ctx, align 4, !dbg !1302, !tbaa !949
  %name = bitcast i8* %17 to %struct.ngx_str_t**, !dbg !1299
  %18 = load %struct.ngx_str_t** %name, align 4, !dbg !1299, !tbaa !949
  %len = getelementptr inbounds %struct.ngx_str_t* %18, i32 0, i32 0, !dbg !1299
  %19 = load i32* %len, align 4, !dbg !1299, !tbaa !954
  %20 = load i32* %len19, align 4, !dbg !1299, !tbaa !954
  %cmp20 = icmp eq i32 %19, %20, !dbg !1299
  br i1 %cmp20, label %if.then21, label %for.inc, !dbg !1299

if.then21:                                        ; preds = %if.end16
  %data = getelementptr inbounds %struct.ngx_str_t* %18, i32 0, i32 1, !dbg !1300
  %21 = load i8** %data, align 4, !dbg !1300, !tbaa !949
  %22 = load i8** %14, align 4, !dbg !1300, !tbaa !949
  %call = tail call i32 @strcmp(i8* %21, i8* %22) nounwind, !dbg !1300
  %cmp25 = icmp eq i32 %call, 0, !dbg !1300
  br i1 %cmp25, label %if.then26, label %for.inc, !dbg !1300

if.then26:                                        ; preds = %if.then21
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %15, i32 0, i32 0, !dbg !1303
  %23 = load i32* %ctx_index, align 4, !dbg !1303, !tbaa !954
  store i32 %23, i32* %0, align 4, !dbg !1303, !tbaa !954
  %name31 = getelementptr inbounds i8* %conf, i32 20, !dbg !1305
  %24 = bitcast i8* %name31 to i8**, !dbg !1305
  store i8* %21, i8** %24, align 4, !dbg !1305, !tbaa !949
  %25 = load i32* @ngx_process, align 4, !dbg !1306, !tbaa !954
  %cmp34 = icmp ne i32 %25, 0, !dbg !1306
  %tobool35 = icmp eq %struct.ngx_event_conf_t* %old_ecf.0, null, !dbg !1306
  %or.cond = or i1 %cmp34, %tobool35, !dbg !1306
  br i1 %or.cond, label %return, label %land.lhs.true36, !dbg !1306

land.lhs.true36:                                  ; preds = %if.then26
  %use37 = getelementptr inbounds %struct.ngx_event_conf_t* %old_ecf.0, i32 0, i32 1, !dbg !1306
  %26 = load i32* %use37, align 4, !dbg !1306, !tbaa !954
  %cmp39 = icmp eq i32 %26, %23, !dbg !1306
  br i1 %cmp39, label %return, label %cont42, !dbg !1306

cont42:                                           ; preds = %land.lhs.true36
  %name44 = getelementptr inbounds %struct.ngx_event_conf_t* %old_ecf.0, i32 0, i32 5, !dbg !1307
  %27 = load i8** %name44, align 4, !dbg !1307, !tbaa !949
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([212 x i8]* @.str18, i32 0, i32 0), i8* %arrayidx54.pre, i8* %27) nounwind, !dbg !1307
  br label %return, !dbg !1309

for.inc:                                          ; preds = %cont13, %if.end16, %if.then21
  %28 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %m.077, i32 1), !dbg !1297
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !1297
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !1297
  br i1 %30, label %ioc_bb50, label %for.cond.backedge, !dbg !1297

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb50
  %arrayidx9 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %29, !dbg !1297
  %31 = load %struct.ngx_module_s** %arrayidx9, align 4, !dbg !1297, !tbaa !949
  %tobool10 = icmp eq %struct.ngx_module_s* %31, null, !dbg !1297
  br i1 %tobool10, label %cont53, label %cont13, !dbg !1297

ioc_bb50:                                         ; preds = %for.inc
  %32 = sext i32 %m.077 to i64, !dbg !1297
  tail call void @__ioc_report_add_overflow(i32 622, i32 32, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind, !dbg !1297
  br label %for.cond.backedge, !dbg !1297

cont53:                                           ; preds = %if.end8, %for.cond.backedge
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str19, i32 0, i32 0), i8* %arrayidx54.pre) nounwind, !dbg !1298
  br label %return, !dbg !1310

return:                                           ; preds = %land.lhs.true36, %if.then26, %entry, %cont53, %cont42
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont42 ], [ inttoptr (i32 -1 to i8*), %cont53 ], [ getelementptr inbounds ([13 x i8]* @.str17, i32 0, i32 0), %entry ], [ null, %if.then26 ], [ null, %land.lhs.true36 ]
  ret i8* %retval.0, !dbg !1311
}

declare i8* @ngx_conf_set_flag_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_msec_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal noalias i8* @ngx_event_debug_connection(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !833), !dbg !1312
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !834), !dbg !1312
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !835), !dbg !1312
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([96 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !1313
  ret i8* null, !dbg !1315
}

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i32 @ngx_atoi(i8*, i32)

define internal i8* @ngx_events_block(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %pcf = alloca %struct.ngx_conf_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !874), !dbg !1316
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !875), !dbg !1316
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !876), !dbg !1316
  call void @llvm.dbg.declare(metadata !{%struct.ngx_conf_s* %pcf}, metadata !881), !dbg !1317
  store i32 0, i32* @ngx_event_max_module, align 4, !dbg !1318, !tbaa !954
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !880), !dbg !1319
  %0 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1319, !tbaa !949
  %tobool142 = icmp eq %struct.ngx_module_s* %0, null, !dbg !1319
  br i1 %tobool142, label %for.end, label %cont5, !dbg !1319

cont5:                                            ; preds = %entry, %for.cond.backedge
  %1 = phi %struct.ngx_module_s* [ %12, %for.cond.backedge ], [ %0, %entry ]
  %arrayidx144 = phi %struct.ngx_module_s** [ %arrayidx, %for.cond.backedge ], [ getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), %entry ]
  %i.0143 = phi i32 [ %10, %for.cond.backedge ], [ 0, %entry ]
  %type = getelementptr inbounds %struct.ngx_module_s* %1, i32 0, i32 9, !dbg !1321
  %2 = load i32* %type, align 4, !dbg !1321, !tbaa !954
  %cmp = icmp eq i32 %2, 1414420037, !dbg !1321
  br i1 %cmp, label %if.end, label %for.inc, !dbg !1321

if.end:                                           ; preds = %cont5
  %3 = load i32* @ngx_event_max_module, align 4, !dbg !1323, !tbaa !954
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 1), !dbg !1323
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1323
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1323
  br i1 %6, label %ioc_bb6, label %cont7, !dbg !1323

ioc_bb6:                                          ; preds = %if.end
  %7 = zext i32 %3 to i64, !dbg !1323
  call void @__ioc_report_add_overflow(i32 538, i32 55, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind, !dbg !1323
  %.pre = load %struct.ngx_module_s** %arrayidx144, align 4, !dbg !1323, !tbaa !949
  br label %cont7, !dbg !1323

cont7:                                            ; preds = %if.end, %ioc_bb6
  %8 = phi %struct.ngx_module_s* [ %1, %if.end ], [ %.pre, %ioc_bb6 ]
  store i32 %5, i32* @ngx_event_max_module, align 4, !dbg !1323, !tbaa !954
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %8, i32 0, i32 0, !dbg !1323
  store i32 %3, i32* %ctx_index, align 4, !dbg !1323, !tbaa !954
  br label %for.inc, !dbg !1324

for.inc:                                          ; preds = %cont5, %cont7
  %9 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0143, i32 1), !dbg !1319
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !1319
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !1319
  br i1 %11, label %ioc_bb9, label %for.cond.backedge, !dbg !1319

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb9
  %arrayidx = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %10, !dbg !1319
  %12 = load %struct.ngx_module_s** %arrayidx, align 4, !dbg !1319, !tbaa !949
  %tobool = icmp eq %struct.ngx_module_s* %12, null, !dbg !1319
  br i1 %tobool, label %for.end, label %cont5, !dbg !1319

ioc_bb9:                                          ; preds = %for.inc
  %13 = zext i32 %i.0143 to i64, !dbg !1319
  call void @__ioc_report_add_overflow(i32 534, i32 32, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %13, i64 1, i8 5) nounwind, !dbg !1319
  br label %for.cond.backedge, !dbg !1319

for.end:                                          ; preds = %for.cond.backedge, %entry
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1325
  %14 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1325, !tbaa !949
  %call = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %14, i32 4) nounwind, !dbg !1325
  %15 = bitcast i8* %call to i8***, !dbg !1325
  call void @llvm.dbg.value(metadata !{i8*** %15}, i64 0, metadata !879), !dbg !1325
  %cmp11 = icmp eq i8* %call, null, !dbg !1326
  br i1 %cmp11, label %return, label %if.end15, !dbg !1326

if.end15:                                         ; preds = %for.end
  %16 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1327, !tbaa !949
  %17 = load i32* @ngx_event_max_module, align 4, !dbg !1327, !tbaa !954
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4), !dbg !1327
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !1327
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !1327
  br i1 %20, label %ioc_bb17, label %cont18, !dbg !1327

ioc_bb17:                                         ; preds = %if.end15
  %21 = zext i32 %17 to i64, !dbg !1327
  call void @__ioc_report_mul_overflow(i32 544, i32 56, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %21, i64 4, i8 5) nounwind, !dbg !1327
  br label %cont18, !dbg !1327

cont18:                                           ; preds = %if.end15, %ioc_bb17
  %call19 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %16, i32 %19) nounwind, !dbg !1327
  %22 = bitcast i8* %call19 to i8**, !dbg !1327
  store i8** %22, i8*** %15, align 4, !dbg !1327, !tbaa !949
  %cmp20 = icmp eq i8* %call19, null, !dbg !1328
  br i1 %cmp20, label %return, label %if.end24, !dbg !1328

if.end24:                                         ; preds = %cont18
  %23 = bitcast i8* %conf to i8**, !dbg !1329
  store i8* %call, i8** %23, align 4, !dbg !1329, !tbaa !949
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !880), !dbg !1330
  %24 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1330, !tbaa !949
  %tobool29139 = icmp eq %struct.ngx_module_s* %24, null, !dbg !1330
  br i1 %tobool29139, label %for.end59, label %cont34.lr.ph, !dbg !1330

cont34.lr.ph:                                     ; preds = %if.end24
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !1332
  br label %cont34, !dbg !1330

cont34:                                           ; preds = %cont34.lr.ph, %for.cond27.backedge
  %25 = phi %struct.ngx_module_s* [ %24, %cont34.lr.ph ], [ %41, %for.cond27.backedge ]
  %arrayidx28141 = phi %struct.ngx_module_s** [ getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), %cont34.lr.ph ], [ %arrayidx28, %for.cond27.backedge ]
  %i.1140 = phi i32 [ 0, %cont34.lr.ph ], [ %39, %for.cond27.backedge ]
  %type32 = getelementptr inbounds %struct.ngx_module_s* %25, i32 0, i32 9, !dbg !1335
  %26 = load i32* %type32, align 4, !dbg !1335, !tbaa !954
  %cmp35 = icmp eq i32 %26, 1414420037, !dbg !1335
  br i1 %cmp35, label %if.end37, label %for.inc56, !dbg !1335

if.end37:                                         ; preds = %cont34
  %ctx39 = getelementptr inbounds %struct.ngx_module_s* %25, i32 0, i32 7, !dbg !1336
  %27 = load i8** %ctx39, align 4, !dbg !1336, !tbaa !949
  %create_conf = getelementptr inbounds i8* %27, i32 4, !dbg !1337
  %28 = bitcast i8* %create_conf to i8* (%struct.ngx_cycle_s*)**, !dbg !1337
  %29 = load i8* (%struct.ngx_cycle_s*)** %28, align 4, !dbg !1337, !tbaa !949
  %tobool40 = icmp eq i8* (%struct.ngx_cycle_s*)* %29, null, !dbg !1337
  br i1 %tobool40, label %for.inc56, label %if.then41, !dbg !1337

if.then41:                                        ; preds = %if.end37
  %30 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !1332, !tbaa !949
  %call43 = call i8* %29(%struct.ngx_cycle_s* %30) nounwind, !dbg !1332
  %31 = load %struct.ngx_module_s** %arrayidx28141, align 4, !dbg !1332, !tbaa !949
  %ctx_index45 = getelementptr inbounds %struct.ngx_module_s* %31, i32 0, i32 0, !dbg !1332
  %32 = load i32* %ctx_index45, align 4, !dbg !1332, !tbaa !954
  %33 = load i8*** %15, align 4, !dbg !1332, !tbaa !949
  %arrayidx46 = getelementptr inbounds i8** %33, i32 %32, !dbg !1332
  store i8* %call43, i8** %arrayidx46, align 4, !dbg !1332, !tbaa !949
  %34 = load %struct.ngx_module_s** %arrayidx28141, align 4, !dbg !1338, !tbaa !949
  %ctx_index48 = getelementptr inbounds %struct.ngx_module_s* %34, i32 0, i32 0, !dbg !1338
  %35 = load i32* %ctx_index48, align 4, !dbg !1338, !tbaa !954
  %36 = load i8*** %15, align 4, !dbg !1338, !tbaa !949
  %arrayidx49 = getelementptr inbounds i8** %36, i32 %35, !dbg !1338
  %37 = load i8** %arrayidx49, align 4, !dbg !1338, !tbaa !949
  %cmp50 = icmp eq i8* %37, null, !dbg !1338
  br i1 %cmp50, label %return, label %for.inc56, !dbg !1338

for.inc56:                                        ; preds = %if.end37, %cont34, %if.then41
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1140, i32 1), !dbg !1330
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !1330
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !1330
  br i1 %40, label %ioc_bb57, label %for.cond27.backedge, !dbg !1330

for.cond27.backedge:                              ; preds = %for.inc56, %ioc_bb57
  %arrayidx28 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %39, !dbg !1330
  %41 = load %struct.ngx_module_s** %arrayidx28, align 4, !dbg !1330, !tbaa !949
  %tobool29 = icmp eq %struct.ngx_module_s* %41, null, !dbg !1330
  br i1 %tobool29, label %for.end59, label %cont34, !dbg !1330

ioc_bb57:                                         ; preds = %for.inc56
  %42 = zext i32 %i.1140 to i64, !dbg !1330
  call void @__ioc_report_add_overflow(i32 549, i32 32, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %42, i64 1, i8 5) nounwind, !dbg !1330
  br label %for.cond27.backedge, !dbg !1330

for.end59:                                        ; preds = %for.cond27.backedge, %if.end24
  %43 = bitcast %struct.ngx_conf_s* %pcf to i8*, !dbg !1339
  %44 = bitcast %struct.ngx_conf_s* %cf to i8*, !dbg !1339
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 48, i32 4, i1 false), !dbg !1339, !tbaa.struct !1340
  %ctx60 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !1341
  store i8* %call, i8** %ctx60, align 4, !dbg !1341, !tbaa !949
  %module_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 8, !dbg !1342
  store i32 1414420037, i32* %module_type, align 4, !dbg !1342, !tbaa !954
  %cmd_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 9, !dbg !1343
  store i32 33554432, i32* %cmd_type, align 4, !dbg !1343, !tbaa !954
  %call65 = call i8* @ngx_conf_parse(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* null) nounwind, !dbg !1344
  call void @llvm.dbg.value(metadata !{i8* %call65}, i64 0, metadata !877), !dbg !1344
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %43, i32 48, i32 4, i1 false), !dbg !1345, !tbaa.struct !1340
  %cmp66 = icmp eq i8* %call65, null, !dbg !1346
  br i1 %cmp66, label %for.cond71.preheader, label %return, !dbg !1346

for.cond71.preheader:                             ; preds = %for.end59
  %cycle87 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !1347
  %45 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1351, !tbaa !949
  %tobool73136 = icmp eq %struct.ngx_module_s* %45, null, !dbg !1351
  br i1 %tobool73136, label %return, label %cont78, !dbg !1351

cont78:                                           ; preds = %for.cond71.preheader, %for.cond71.backedge
  %46 = phi %struct.ngx_module_s* [ %58, %for.cond71.backedge ], [ %45, %for.cond71.preheader ]
  %i.2137 = phi i32 [ %56, %for.cond71.backedge ], [ 0, %for.cond71.preheader ]
  %type76 = getelementptr inbounds %struct.ngx_module_s* %46, i32 0, i32 9, !dbg !1352
  %47 = load i32* %type76, align 4, !dbg !1352, !tbaa !954
  %cmp79 = icmp eq i32 %47, 1414420037, !dbg !1352
  br i1 %cmp79, label %if.end81, label %for.inc96, !dbg !1352

if.end81:                                         ; preds = %cont78
  %ctx83 = getelementptr inbounds %struct.ngx_module_s* %46, i32 0, i32 7, !dbg !1353
  %48 = load i8** %ctx83, align 4, !dbg !1353, !tbaa !949
  %init_conf = getelementptr inbounds i8* %48, i32 8, !dbg !1354
  %49 = bitcast i8* %init_conf to i8* (%struct.ngx_cycle_s*, i8*)**, !dbg !1354
  %50 = load i8* (%struct.ngx_cycle_s*, i8*)** %49, align 4, !dbg !1354, !tbaa !949
  %tobool84 = icmp eq i8* (%struct.ngx_cycle_s*, i8*)* %50, null, !dbg !1354
  br i1 %tobool84, label %for.inc96, label %if.then85, !dbg !1354

if.then85:                                        ; preds = %if.end81
  %51 = load %struct.ngx_cycle_s** %cycle87, align 4, !dbg !1347, !tbaa !949
  %ctx_index89 = getelementptr inbounds %struct.ngx_module_s* %46, i32 0, i32 0, !dbg !1347
  %52 = load i32* %ctx_index89, align 4, !dbg !1347, !tbaa !954
  %53 = load i8*** %15, align 4, !dbg !1347, !tbaa !949
  %arrayidx90 = getelementptr inbounds i8** %53, i32 %52, !dbg !1347
  %54 = load i8** %arrayidx90, align 4, !dbg !1347, !tbaa !949
  %call91 = call i8* %50(%struct.ngx_cycle_s* %51, i8* %54) nounwind, !dbg !1347
  call void @llvm.dbg.value(metadata !{i8* %call91}, i64 0, metadata !877), !dbg !1347
  %cmp92 = icmp eq i8* %call91, null, !dbg !1355
  br i1 %cmp92, label %for.inc96, label %return, !dbg !1355

for.inc96:                                        ; preds = %if.then85, %if.end81, %cont78
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2137, i32 1), !dbg !1351
  %56 = extractvalue { i32, i1 } %55, 0, !dbg !1351
  %57 = extractvalue { i32, i1 } %55, 1, !dbg !1351
  br i1 %57, label %ioc_bb97, label %for.cond71.backedge, !dbg !1351

for.cond71.backedge:                              ; preds = %for.inc96, %ioc_bb97
  %arrayidx72 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %56, !dbg !1351
  %58 = load %struct.ngx_module_s** %arrayidx72, align 4, !dbg !1351, !tbaa !949
  %tobool73 = icmp eq %struct.ngx_module_s* %58, null, !dbg !1351
  br i1 %tobool73, label %return, label %cont78, !dbg !1351

ioc_bb97:                                         ; preds = %for.inc96
  %59 = zext i32 %i.2137 to i64, !dbg !1351
  call void @__ioc_report_add_overflow(i32 569, i32 32, i8* getelementptr inbounds ([22 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %59, i64 1, i8 5) nounwind, !dbg !1351
  br label %for.cond71.backedge, !dbg !1351

return:                                           ; preds = %if.then41, %for.cond71.preheader, %if.then85, %for.cond71.backedge, %for.end59, %cont18, %for.end
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %for.end ], [ inttoptr (i32 -1 to i8*), %cont18 ], [ %call65, %for.end59 ], [ null, %for.cond71.preheader ], [ %call91, %if.then85 ], [ null, %for.cond71.backedge ], [ inttoptr (i32 -1 to i8*), %if.then41 ]
  ret i8* %retval.0, !dbg !1356
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @ngx_conf_parse(%struct.ngx_conf_s*, %struct.ngx_str_t*)

define internal i8* @ngx_event_init_conf(%struct.ngx_cycle_s* nocapture %cycle, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !886), !dbg !1357
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !887), !dbg !1357
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_events_module, i32 0, i32 1), align 4, !dbg !1358, !tbaa !954
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !1358
  %1 = load i8***** %conf_ctx, align 4, !dbg !1358, !tbaa !949
  %arrayidx = getelementptr inbounds i8**** %1, i32 %0, !dbg !1358
  %2 = load i8**** %arrayidx, align 4, !dbg !1358, !tbaa !949
  %cmp = icmp eq i8*** %2, null, !dbg !1358
  br i1 %cmp, label %if.then, label %return, !dbg !1358

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1360
  %3 = load %struct.ngx_log_s** %log, align 4, !dbg !1360, !tbaa !949
  %log_level = getelementptr inbounds %struct.ngx_log_s* %3, i32 0, i32 0, !dbg !1360
  %4 = load i32* %log_level, align 4, !dbg !1360, !tbaa !954
  %cmp1 = icmp eq i32 %4, 0, !dbg !1360
  br i1 %cmp1, label %return, label %cont4, !dbg !1360

cont4:                                            ; preds = %if.then
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %3, i32 0, i8* getelementptr inbounds ([37 x i8]* @.str24, i32 0, i32 0)) nounwind, !dbg !1362
  br label %return, !dbg !1362

return:                                           ; preds = %entry, %if.then, %cont4
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont4 ], [ inttoptr (i32 -1 to i8*), %if.then ], [ null, %entry ]
  ret i8* %retval.0, !dbg !1363
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/event/ngx_event.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !30, metadata !32, metadata !888} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !9}
!3 = metadata !{i32 786436, null, metadata !"__itimer_which", metadata !4, i32 93, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__itimer_which] [line 93, size 32, align 32, offset 0] [from ]
!4 = metadata !{i32 786473, metadata !"/usr/include/sys/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"ITIMER_REAL", i64 0} ; [ DW_TAG_enumerator ] [ITIMER_REAL :: 0]
!7 = metadata !{i32 786472, metadata !"ITIMER_VIRTUAL", i64 1} ; [ DW_TAG_enumerator ] [ITIMER_VIRTUAL :: 1]
!8 = metadata !{i32 786472, metadata !"ITIMER_PROF", i64 2} ; [ DW_TAG_enumerator ] [ITIMER_PROF :: 2]
!9 = metadata !{i32 786436, null, metadata !"__rlimit_resource", metadata !10, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__rlimit_resource] [line 33, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786473, metadata !"/usr/include/bits/resource.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!12 = metadata !{i32 786472, metadata !"RLIMIT_CPU", i64 0} ; [ DW_TAG_enumerator ] [RLIMIT_CPU :: 0]
!13 = metadata !{i32 786472, metadata !"RLIMIT_FSIZE", i64 1} ; [ DW_TAG_enumerator ] [RLIMIT_FSIZE :: 1]
!14 = metadata !{i32 786472, metadata !"RLIMIT_DATA", i64 2} ; [ DW_TAG_enumerator ] [RLIMIT_DATA :: 2]
!15 = metadata !{i32 786472, metadata !"RLIMIT_STACK", i64 3} ; [ DW_TAG_enumerator ] [RLIMIT_STACK :: 3]
!16 = metadata !{i32 786472, metadata !"RLIMIT_CORE", i64 4} ; [ DW_TAG_enumerator ] [RLIMIT_CORE :: 4]
!17 = metadata !{i32 786472, metadata !"__RLIMIT_RSS", i64 5} ; [ DW_TAG_enumerator ] [__RLIMIT_RSS :: 5]
!18 = metadata !{i32 786472, metadata !"RLIMIT_NOFILE", i64 7} ; [ DW_TAG_enumerator ] [RLIMIT_NOFILE :: 7]
!19 = metadata !{i32 786472, metadata !"__RLIMIT_OFILE", i64 7} ; [ DW_TAG_enumerator ] [__RLIMIT_OFILE :: 7]
!20 = metadata !{i32 786472, metadata !"RLIMIT_AS", i64 9} ; [ DW_TAG_enumerator ] [RLIMIT_AS :: 9]
!21 = metadata !{i32 786472, metadata !"__RLIMIT_NPROC", i64 6} ; [ DW_TAG_enumerator ] [__RLIMIT_NPROC :: 6]
!22 = metadata !{i32 786472, metadata !"__RLIMIT_MEMLOCK", i64 8} ; [ DW_TAG_enumerator ] [__RLIMIT_MEMLOCK :: 8]
!23 = metadata !{i32 786472, metadata !"__RLIMIT_LOCKS", i64 10} ; [ DW_TAG_enumerator ] [__RLIMIT_LOCKS :: 10]
!24 = metadata !{i32 786472, metadata !"__RLIMIT_SIGPENDING", i64 11} ; [ DW_TAG_enumerator ] [__RLIMIT_SIGPENDING :: 11]
!25 = metadata !{i32 786472, metadata !"__RLIMIT_MSGQUEUE", i64 12} ; [ DW_TAG_enumerator ] [__RLIMIT_MSGQUEUE :: 12]
!26 = metadata !{i32 786472, metadata !"__RLIMIT_NICE", i64 13} ; [ DW_TAG_enumerator ] [__RLIMIT_NICE :: 13]
!27 = metadata !{i32 786472, metadata !"__RLIMIT_RTPRIO", i64 14} ; [ DW_TAG_enumerator ] [__RLIMIT_RTPRIO :: 14]
!28 = metadata !{i32 786472, metadata !"__RLIMIT_NLIMITS", i64 15} ; [ DW_TAG_enumerator ] [__RLIMIT_NLIMITS :: 15]
!29 = metadata !{i32 786472, metadata !"__RLIM_NLIMITS", i64 15} ; [ DW_TAG_enumerator ] [__RLIM_NLIMITS :: 15]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !457, metadata !467, metadata !476, metadata !485, metadata !633, metadata !639, metadata !792, metadata !796, metadata !830, metadata !836, metadata !854, metadata !871, metadata !883}
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_process_events_and_timers", metadata !"ngx_process_events_and_timers", metadata !"", metadata !35, i32 72, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_cycle_s*)* @ngx_process_events_and_timers, null, null, metadata !450, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [ngx_process_events_and_timers]
!35 = metadata !{i32 786473, metadata !"src/event/ngx_event.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !38}
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!39 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !40, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!40 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!41 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !42, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!42 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!43 = metadata !{metadata !44, metadata !49, metadata !226, metadata !227, metadata !228, metadata !405, metadata !406, metadata !407, metadata !408, metadata !417, metadata !418, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449}
!44 = metadata !{i32 786445, metadata !41, metadata !"conf_ctx", metadata !42, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!45 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !41, metadata !"pool", metadata !42, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!51 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !52, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!52 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!53 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !54, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!54 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!55 = metadata !{metadata !56, metadata !74, metadata !76, metadata !77, metadata !206, metadata !213, metadata !225}
!56 = metadata !{i32 786445, metadata !53, metadata !"d", metadata !54, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!57 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !54, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!58 = metadata !{i32 786451, null, metadata !"", metadata !54, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !66, metadata !67, metadata !70}
!60 = metadata !{i32 786445, metadata !58, metadata !"last", metadata !54, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!62 = metadata !{i32 786454, null, metadata !"u_char", metadata !63, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!63 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!64 = metadata !{i32 786454, null, metadata !"__u_char", metadata !63, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!65 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!66 = metadata !{i32 786445, metadata !58, metadata !"end", metadata !54, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!67 = metadata !{i32 786445, metadata !58, metadata !"next", metadata !54, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!69 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !54, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!70 = metadata !{i32 786445, metadata !58, metadata !"failed", metadata !54, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !71} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!71 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !40, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!72 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !40, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!73 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 786445, metadata !53, metadata !"max", metadata !54, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!75 = metadata !{i32 786454, null, metadata !"size_t", metadata !63, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!76 = metadata !{i32 786445, metadata !53, metadata !"current", metadata !54, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !68} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!77 = metadata !{i32 786445, metadata !53, metadata !"chain", metadata !54, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !78} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!79 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !54, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!80 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !81, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!81 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!82 = metadata !{metadata !83, metadata !203}
!83 = metadata !{i32 786445, metadata !80, metadata !"buf", metadata !81, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!84 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!85 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !81, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!86 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !81, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!88 = metadata !{i32 786445, metadata !86, metadata !"pos", metadata !81, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!89 = metadata !{i32 786445, metadata !86, metadata !"last", metadata !81, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!90 = metadata !{i32 786445, metadata !86, metadata !"file_pos", metadata !81, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!91 = metadata !{i32 786454, null, metadata !"off_t", metadata !81, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!92 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !81, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!93 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !81, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!94 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!95 = metadata !{i32 786445, metadata !86, metadata !"file_last", metadata !81, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!96 = metadata !{i32 786445, metadata !86, metadata !"start", metadata !81, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !61} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!97 = metadata !{i32 786445, metadata !86, metadata !"end", metadata !81, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !61} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!98 = metadata !{i32 786445, metadata !86, metadata !"tag", metadata !81, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !99} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!99 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !81, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786445, metadata !86, metadata !"file", metadata !81, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !101} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!101 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!102 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !81, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!103 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !104, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!104 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!105 = metadata !{metadata !106, metadata !109, metadata !115, metadata !156, metadata !157, metadata !158, metadata !188, metadata !189}
!106 = metadata !{i32 786445, metadata !103, metadata !"fd", metadata !104, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!107 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !104, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!108 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!109 = metadata !{i32 786445, metadata !103, metadata !"name", metadata !104, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !110} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!110 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !40, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!111 = metadata !{i32 786451, null, metadata !"", metadata !63, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786445, metadata !111, metadata !"len", metadata !63, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!114 = metadata !{i32 786445, metadata !111, metadata !"data", metadata !63, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!115 = metadata !{i32 786445, metadata !103, metadata !"info", metadata !104, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !116} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!116 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !104, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!117 = metadata !{i32 786451, null, metadata !"stat", metadata !118, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!118 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!119 = metadata !{metadata !120, metadata !124, metadata !126, metadata !129, metadata !131, metadata !133, metadata !135, metadata !137, metadata !138, metadata !139, metadata !140, metadata !143, metadata !145, metadata !152, metadata !153, metadata !154}
!120 = metadata !{i32 786445, metadata !117, metadata !"st_dev", metadata !118, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!121 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !118, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!122 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !118, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!123 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!124 = metadata !{i32 786445, metadata !117, metadata !"__pad1", metadata !118, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!125 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!126 = metadata !{i32 786445, metadata !117, metadata !"__st_ino", metadata !118, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !127} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!127 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !118, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!128 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!129 = metadata !{i32 786445, metadata !117, metadata !"st_mode", metadata !118, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !130} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!130 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !118, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!131 = metadata !{i32 786445, metadata !117, metadata !"st_nlink", metadata !118, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !132} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!132 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !118, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!133 = metadata !{i32 786445, metadata !117, metadata !"st_uid", metadata !118, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !134} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!134 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !118, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!135 = metadata !{i32 786445, metadata !117, metadata !"st_gid", metadata !118, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !136} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!136 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !118, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!137 = metadata !{i32 786445, metadata !117, metadata !"st_rdev", metadata !118, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !121} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!138 = metadata !{i32 786445, metadata !117, metadata !"__pad2", metadata !118, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!139 = metadata !{i32 786445, metadata !117, metadata !"st_size", metadata !118, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !92} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!140 = metadata !{i32 786445, metadata !117, metadata !"st_blksize", metadata !118, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !141} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!141 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !118, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!142 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!143 = metadata !{i32 786445, metadata !117, metadata !"st_blocks", metadata !118, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !144} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!144 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !118, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!145 = metadata !{i32 786445, metadata !117, metadata !"st_atim", metadata !118, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !146} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!146 = metadata !{i32 786451, null, metadata !"timespec", metadata !147, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!147 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!148 = metadata !{metadata !149, metadata !151}
!149 = metadata !{i32 786445, metadata !146, metadata !"tv_sec", metadata !147, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!150 = metadata !{i32 786454, null, metadata !"__time_t", metadata !147, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!151 = metadata !{i32 786445, metadata !146, metadata !"tv_nsec", metadata !147, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !142} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!152 = metadata !{i32 786445, metadata !117, metadata !"st_mtim", metadata !118, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !146} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!153 = metadata !{i32 786445, metadata !117, metadata !"st_ctim", metadata !118, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !146} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!154 = metadata !{i32 786445, metadata !117, metadata !"st_ino", metadata !118, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !155} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!155 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !118, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!156 = metadata !{i32 786445, metadata !103, metadata !"offset", metadata !104, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !91} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!157 = metadata !{i32 786445, metadata !103, metadata !"sys_offset", metadata !104, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !91} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!158 = metadata !{i32 786445, metadata !103, metadata !"log", metadata !104, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!159 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!160 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !104, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!161 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !162, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!162 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!163 = metadata !{metadata !164, metadata !165, metadata !175, metadata !177, metadata !184, metadata !185}
!164 = metadata !{i32 786445, metadata !161, metadata !"log_level", metadata !162, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!165 = metadata !{i32 786445, metadata !161, metadata !"file", metadata !162, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !166} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!167 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !162, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!168 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !40, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!170 = metadata !{i32 786445, metadata !168, metadata !"fd", metadata !40, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!171 = metadata !{i32 786445, metadata !168, metadata !"name", metadata !40, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !110} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!172 = metadata !{i32 786445, metadata !168, metadata !"buffer", metadata !40, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !61} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!173 = metadata !{i32 786445, metadata !168, metadata !"pos", metadata !40, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!174 = metadata !{i32 786445, metadata !168, metadata !"last", metadata !40, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !61} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!175 = metadata !{i32 786445, metadata !161, metadata !"connection", metadata !162, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!176 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !35, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!177 = metadata !{i32 786445, metadata !161, metadata !"handler", metadata !162, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !178} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!178 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !162, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !61, metadata !182, metadata !61, metadata !75}
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!183 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !162, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!184 = metadata !{i32 786445, metadata !161, metadata !"data", metadata !162, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!185 = metadata !{i32 786445, metadata !161, metadata !"action", metadata !162, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !186} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!187 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!188 = metadata !{i32 786445, metadata !103, metadata !"valid_info", metadata !104, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !73} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!189 = metadata !{i32 786445, metadata !103, metadata !"directio", metadata !104, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !73} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!190 = metadata !{i32 786445, metadata !86, metadata !"shadow", metadata !81, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !84} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!191 = metadata !{i32 786445, metadata !86, metadata !"temporary", metadata !81, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !73} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!192 = metadata !{i32 786445, metadata !86, metadata !"memory", metadata !81, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !73} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!193 = metadata !{i32 786445, metadata !86, metadata !"mmap", metadata !81, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !73} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!194 = metadata !{i32 786445, metadata !86, metadata !"recycled", metadata !81, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !73} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!195 = metadata !{i32 786445, metadata !86, metadata !"in_file", metadata !81, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !73} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!196 = metadata !{i32 786445, metadata !86, metadata !"flush", metadata !81, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !73} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!197 = metadata !{i32 786445, metadata !86, metadata !"sync", metadata !81, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !73} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!198 = metadata !{i32 786445, metadata !86, metadata !"last_buf", metadata !81, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !73} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!199 = metadata !{i32 786445, metadata !86, metadata !"last_in_chain", metadata !81, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !73} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!200 = metadata !{i32 786445, metadata !86, metadata !"last_shadow", metadata !81, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !73} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!201 = metadata !{i32 786445, metadata !86, metadata !"temp_file", metadata !81, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !73} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!202 = metadata !{i32 786445, metadata !86, metadata !"num", metadata !81, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!203 = metadata !{i32 786445, metadata !80, metadata !"next", metadata !81, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !204} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!205 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !81, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!206 = metadata !{i32 786445, metadata !53, metadata !"large", metadata !54, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !207} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!207 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!208 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !54, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !209} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!209 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !54, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786445, metadata !209, metadata !"next", metadata !54, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!212 = metadata !{i32 786445, metadata !209, metadata !"alloc", metadata !54, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!213 = metadata !{i32 786445, metadata !53, metadata !"cleanup", metadata !54, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !214} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!215 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !54, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!216 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !54, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !223, metadata !224}
!218 = metadata !{i32 786445, metadata !216, metadata !"handler", metadata !54, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!219 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !54, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{null, metadata !48}
!223 = metadata !{i32 786445, metadata !216, metadata !"data", metadata !54, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!224 = metadata !{i32 786445, metadata !216, metadata !"next", metadata !54, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!225 = metadata !{i32 786445, metadata !53, metadata !"log", metadata !54, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!226 = metadata !{i32 786445, metadata !41, metadata !"log", metadata !42, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!227 = metadata !{i32 786445, metadata !41, metadata !"new_log", metadata !42, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !160} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!228 = metadata !{i32 786445, metadata !41, metadata !"files", metadata !42, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !229} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!229 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!230 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!231 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !42, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!232 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !233, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !234, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!233 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!234 = metadata !{metadata !235, metadata !236, metadata !291, metadata !292, metadata !294, metadata !303, metadata !305, metadata !310, metadata !315, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404}
!235 = metadata !{i32 786445, metadata !232, metadata !"data", metadata !233, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!236 = metadata !{i32 786445, metadata !232, metadata !"read", metadata !233, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !237} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!238 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !233, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!239 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !240, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!240 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !269, metadata !270, metadata !271, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289}
!242 = metadata !{i32 786445, metadata !239, metadata !"data", metadata !240, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!243 = metadata !{i32 786445, metadata !239, metadata !"write", metadata !240, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !73} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!244 = metadata !{i32 786445, metadata !239, metadata !"accept", metadata !240, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !73} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!245 = metadata !{i32 786445, metadata !239, metadata !"instance", metadata !240, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !73} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!246 = metadata !{i32 786445, metadata !239, metadata !"active", metadata !240, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !73} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!247 = metadata !{i32 786445, metadata !239, metadata !"disabled", metadata !240, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !73} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!248 = metadata !{i32 786445, metadata !239, metadata !"ready", metadata !240, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !73} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!249 = metadata !{i32 786445, metadata !239, metadata !"oneshot", metadata !240, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !73} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!250 = metadata !{i32 786445, metadata !239, metadata !"complete", metadata !240, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !73} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!251 = metadata !{i32 786445, metadata !239, metadata !"eof", metadata !240, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !73} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!252 = metadata !{i32 786445, metadata !239, metadata !"error", metadata !240, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !73} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!253 = metadata !{i32 786445, metadata !239, metadata !"timedout", metadata !240, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !73} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!254 = metadata !{i32 786445, metadata !239, metadata !"timer_set", metadata !240, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !73} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!255 = metadata !{i32 786445, metadata !239, metadata !"delayed", metadata !240, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !73} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!256 = metadata !{i32 786445, metadata !239, metadata !"read_discarded", metadata !240, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !73} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!257 = metadata !{i32 786445, metadata !239, metadata !"unexpected_eof", metadata !240, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !73} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!258 = metadata !{i32 786445, metadata !239, metadata !"deferred_accept", metadata !240, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !73} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!259 = metadata !{i32 786445, metadata !239, metadata !"pending_eof", metadata !240, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !73} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!260 = metadata !{i32 786445, metadata !239, metadata !"posted_ready", metadata !240, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !73} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!261 = metadata !{i32 786445, metadata !239, metadata !"available", metadata !240, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !73} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!262 = metadata !{i32 786445, metadata !239, metadata !"handler", metadata !240, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !263} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!263 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !240, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!264 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{null, metadata !267}
!267 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!268 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !240, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!269 = metadata !{i32 786445, metadata !239, metadata !"index", metadata !240, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !71} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!270 = metadata !{i32 786445, metadata !239, metadata !"log", metadata !240, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!271 = metadata !{i32 786445, metadata !239, metadata !"timer", metadata !240, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !272} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!272 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !240, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !273} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!273 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !274, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!274 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!275 = metadata !{metadata !276, metadata !278, metadata !281, metadata !282, metadata !283, metadata !284}
!276 = metadata !{i32 786445, metadata !273, metadata !"key", metadata !274, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !277} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!277 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !274, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!278 = metadata !{i32 786445, metadata !273, metadata !"left", metadata !274, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !279} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!279 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!280 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !274, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !273} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!281 = metadata !{i32 786445, metadata !273, metadata !"right", metadata !274, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!282 = metadata !{i32 786445, metadata !273, metadata !"parent", metadata !274, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !279} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!283 = metadata !{i32 786445, metadata !273, metadata !"color", metadata !274, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!284 = metadata !{i32 786445, metadata !273, metadata !"data", metadata !274, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !62} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!285 = metadata !{i32 786445, metadata !239, metadata !"closed", metadata !240, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!286 = metadata !{i32 786445, metadata !239, metadata !"channel", metadata !240, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !73} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!287 = metadata !{i32 786445, metadata !239, metadata !"resolver", metadata !240, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !73} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!288 = metadata !{i32 786445, metadata !239, metadata !"next", metadata !240, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !267} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!289 = metadata !{i32 786445, metadata !239, metadata !"prev", metadata !240, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !290} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!290 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!291 = metadata !{i32 786445, metadata !232, metadata !"write", metadata !233, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !237} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!292 = metadata !{i32 786445, metadata !232, metadata !"fd", metadata !233, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !293} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!293 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !233, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!294 = metadata !{i32 786445, metadata !232, metadata !"recv", metadata !233, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !295} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!295 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !233, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!296 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!298 = metadata !{metadata !299, metadata !301, metadata !61, metadata !75}
!299 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !233, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !300} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!300 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !233, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!301 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!302 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !233, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!303 = metadata !{i32 786445, metadata !232, metadata !"send", metadata !233, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !304} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!304 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !233, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!305 = metadata !{i32 786445, metadata !232, metadata !"recv_chain", metadata !233, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !306} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!306 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !233, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!307 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = metadata !{metadata !299, metadata !301, metadata !78}
!310 = metadata !{i32 786445, metadata !232, metadata !"send_chain", metadata !233, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !311} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!311 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !233, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !312} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!312 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!313 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!314 = metadata !{metadata !78, metadata !301, metadata !78, metadata !91}
!315 = metadata !{i32 786445, metadata !232, metadata !"listening", metadata !233, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !316} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!316 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!317 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !233, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!318 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !233, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!319 = metadata !{metadata !320, metadata !321, metadata !332, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371}
!320 = metadata !{i32 786445, metadata !318, metadata !"fd", metadata !233, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!321 = metadata !{i32 786445, metadata !318, metadata !"sockaddr", metadata !233, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !322} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!322 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!323 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !324, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!324 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!325 = metadata !{metadata !326, metadata !328}
!326 = metadata !{i32 786445, metadata !323, metadata !"sa_family", metadata !324, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !327} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!327 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !324, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!328 = metadata !{i32 786445, metadata !323, metadata !"sa_data", metadata !324, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !329} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!329 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !187, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!332 = metadata !{i32 786445, metadata !318, metadata !"socklen", metadata !233, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !333} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!333 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !233, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !334} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!334 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !233, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!335 = metadata !{i32 786445, metadata !318, metadata !"addr_text_max_len", metadata !233, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!336 = metadata !{i32 786445, metadata !318, metadata !"addr_text", metadata !233, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !110} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!337 = metadata !{i32 786445, metadata !318, metadata !"type", metadata !233, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !108} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!338 = metadata !{i32 786445, metadata !318, metadata !"backlog", metadata !233, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !108} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!339 = metadata !{i32 786445, metadata !318, metadata !"rcvbuf", metadata !233, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!340 = metadata !{i32 786445, metadata !318, metadata !"sndbuf", metadata !233, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !108} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!341 = metadata !{i32 786445, metadata !318, metadata !"keepidle", metadata !233, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !108} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!342 = metadata !{i32 786445, metadata !318, metadata !"keepintvl", metadata !233, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !108} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!343 = metadata !{i32 786445, metadata !318, metadata !"keepcnt", metadata !233, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!344 = metadata !{i32 786445, metadata !318, metadata !"handler", metadata !233, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !345} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!345 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !233, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!346 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{null, metadata !301}
!349 = metadata !{i32 786445, metadata !318, metadata !"servers", metadata !233, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !48} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!350 = metadata !{i32 786445, metadata !318, metadata !"log", metadata !233, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !160} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!351 = metadata !{i32 786445, metadata !318, metadata !"logp", metadata !233, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !159} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!352 = metadata !{i32 786445, metadata !318, metadata !"pool_size", metadata !233, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !75} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!353 = metadata !{i32 786445, metadata !318, metadata !"post_accept_buffer_size", metadata !233, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !75} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!354 = metadata !{i32 786445, metadata !318, metadata !"post_accept_timeout", metadata !233, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !355} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!355 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !233, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!356 = metadata !{i32 786445, metadata !318, metadata !"previous", metadata !233, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !316} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!357 = metadata !{i32 786445, metadata !318, metadata !"connection", metadata !233, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !301} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!358 = metadata !{i32 786445, metadata !318, metadata !"open", metadata !233, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !73} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!359 = metadata !{i32 786445, metadata !318, metadata !"remain", metadata !233, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !73} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!360 = metadata !{i32 786445, metadata !318, metadata !"ignore", metadata !233, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !73} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!361 = metadata !{i32 786445, metadata !318, metadata !"bound", metadata !233, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !73} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!362 = metadata !{i32 786445, metadata !318, metadata !"inherited", metadata !233, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !73} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!363 = metadata !{i32 786445, metadata !318, metadata !"nonblocking_accept", metadata !233, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !73} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!364 = metadata !{i32 786445, metadata !318, metadata !"listen", metadata !233, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !73} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!365 = metadata !{i32 786445, metadata !318, metadata !"nonblocking", metadata !233, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !73} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!366 = metadata !{i32 786445, metadata !318, metadata !"shared", metadata !233, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !73} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!367 = metadata !{i32 786445, metadata !318, metadata !"addr_ntop", metadata !233, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !73} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!368 = metadata !{i32 786445, metadata !318, metadata !"keepalive", metadata !233, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !73} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!369 = metadata !{i32 786445, metadata !318, metadata !"deferred_accept", metadata !233, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !73} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!370 = metadata !{i32 786445, metadata !318, metadata !"delete_deferred", metadata !233, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !73} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!371 = metadata !{i32 786445, metadata !318, metadata !"add_deferred", metadata !233, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !73} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!372 = metadata !{i32 786445, metadata !232, metadata !"sent", metadata !233, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !91} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!373 = metadata !{i32 786445, metadata !232, metadata !"log", metadata !233, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!374 = metadata !{i32 786445, metadata !232, metadata !"pool", metadata !233, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !50} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!375 = metadata !{i32 786445, metadata !232, metadata !"sockaddr", metadata !233, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !322} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!376 = metadata !{i32 786445, metadata !232, metadata !"socklen", metadata !233, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !333} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!377 = metadata !{i32 786445, metadata !232, metadata !"addr_text", metadata !233, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !110} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!378 = metadata !{i32 786445, metadata !232, metadata !"local_sockaddr", metadata !233, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !322} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!379 = metadata !{i32 786445, metadata !232, metadata !"buffer", metadata !233, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !84} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!380 = metadata !{i32 786445, metadata !232, metadata !"queue", metadata !233, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !381} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!381 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !233, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !382} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!382 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !383, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!383 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!384 = metadata !{metadata !385, metadata !388}
!385 = metadata !{i32 786445, metadata !382, metadata !"prev", metadata !383, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !386} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!386 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !387} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!387 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !383, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !382} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!388 = metadata !{i32 786445, metadata !382, metadata !"next", metadata !383, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !386} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!389 = metadata !{i32 786445, metadata !232, metadata !"number", metadata !233, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !176} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!390 = metadata !{i32 786445, metadata !232, metadata !"requests", metadata !233, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !71} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!391 = metadata !{i32 786445, metadata !232, metadata !"buffered", metadata !233, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !73} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!392 = metadata !{i32 786445, metadata !232, metadata !"log_error", metadata !233, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !73} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!393 = metadata !{i32 786445, metadata !232, metadata !"single_connection", metadata !233, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !73} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!394 = metadata !{i32 786445, metadata !232, metadata !"unexpected_eof", metadata !233, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !73} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!395 = metadata !{i32 786445, metadata !232, metadata !"timedout", metadata !233, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !73} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!396 = metadata !{i32 786445, metadata !232, metadata !"error", metadata !233, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !73} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!397 = metadata !{i32 786445, metadata !232, metadata !"destroyed", metadata !233, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !73} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!398 = metadata !{i32 786445, metadata !232, metadata !"idle", metadata !233, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !73} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!399 = metadata !{i32 786445, metadata !232, metadata !"reusable", metadata !233, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !73} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!400 = metadata !{i32 786445, metadata !232, metadata !"close", metadata !233, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !73} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!401 = metadata !{i32 786445, metadata !232, metadata !"sendfile", metadata !233, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !73} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!402 = metadata !{i32 786445, metadata !232, metadata !"sndlowat", metadata !233, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !73} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!403 = metadata !{i32 786445, metadata !232, metadata !"tcp_nodelay", metadata !233, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !73} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!404 = metadata !{i32 786445, metadata !232, metadata !"tcp_nopush", metadata !233, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !73} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!405 = metadata !{i32 786445, metadata !41, metadata !"free_connections", metadata !42, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !230} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!406 = metadata !{i32 786445, metadata !41, metadata !"free_connection_n", metadata !42, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !71} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!407 = metadata !{i32 786445, metadata !41, metadata !"reusable_connections_queue", metadata !42, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !381} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!408 = metadata !{i32 786445, metadata !41, metadata !"listening", metadata !42, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !409} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!409 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !40, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !410} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!410 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !52, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!411 = metadata !{metadata !412, metadata !413, metadata !414, metadata !415, metadata !416}
!412 = metadata !{i32 786445, metadata !410, metadata !"elts", metadata !52, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!413 = metadata !{i32 786445, metadata !410, metadata !"nelts", metadata !52, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!414 = metadata !{i32 786445, metadata !410, metadata !"size", metadata !52, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!415 = metadata !{i32 786445, metadata !410, metadata !"nalloc", metadata !52, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !71} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!416 = metadata !{i32 786445, metadata !410, metadata !"pool", metadata !52, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!417 = metadata !{i32 786445, metadata !41, metadata !"pathes", metadata !42, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !409} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!418 = metadata !{i32 786445, metadata !41, metadata !"open_files", metadata !42, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !419} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!419 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !42, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !420} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!420 = metadata !{i32 786451, null, metadata !"", metadata !421, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!421 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!422 = metadata !{metadata !423, metadata !431, metadata !432, metadata !433, metadata !434}
!423 = metadata !{i32 786445, metadata !420, metadata !"last", metadata !421, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !424} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!424 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !425} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!425 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !421, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !426} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!426 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !421, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!427 = metadata !{metadata !428, metadata !429, metadata !430}
!428 = metadata !{i32 786445, metadata !426, metadata !"elts", metadata !421, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!429 = metadata !{i32 786445, metadata !426, metadata !"nelts", metadata !421, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!430 = metadata !{i32 786445, metadata !426, metadata !"next", metadata !421, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !424} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!431 = metadata !{i32 786445, metadata !420, metadata !"part", metadata !421, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !425} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!432 = metadata !{i32 786445, metadata !420, metadata !"size", metadata !421, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!433 = metadata !{i32 786445, metadata !420, metadata !"nalloc", metadata !421, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !71} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!434 = metadata !{i32 786445, metadata !420, metadata !"pool", metadata !421, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!435 = metadata !{i32 786445, metadata !41, metadata !"shared_memory", metadata !42, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !419} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!436 = metadata !{i32 786445, metadata !41, metadata !"connection_n", metadata !42, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !71} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!437 = metadata !{i32 786445, metadata !41, metadata !"files_n", metadata !42, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !71} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!438 = metadata !{i32 786445, metadata !41, metadata !"connections", metadata !42, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !230} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!439 = metadata !{i32 786445, metadata !41, metadata !"read_events", metadata !42, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !237} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!440 = metadata !{i32 786445, metadata !41, metadata !"write_events", metadata !42, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !237} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!441 = metadata !{i32 786445, metadata !41, metadata !"old_cycle", metadata !42, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !442} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!442 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!443 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !42, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!444 = metadata !{i32 786445, metadata !41, metadata !"conf_file", metadata !42, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !110} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!445 = metadata !{i32 786445, metadata !41, metadata !"conf_param", metadata !42, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !110} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!446 = metadata !{i32 786445, metadata !41, metadata !"conf_prefix", metadata !42, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !110} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!447 = metadata !{i32 786445, metadata !41, metadata !"prefix", metadata !42, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !110} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!448 = metadata !{i32 786445, metadata !41, metadata !"lock_file", metadata !42, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !110} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!449 = metadata !{i32 786445, metadata !41, metadata !"hostname", metadata !42, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !110} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!450 = metadata !{metadata !451}
!451 = metadata !{metadata !452, metadata !453, metadata !455, metadata !456}
!452 = metadata !{i32 786689, metadata !34, metadata !"cycle", metadata !35, i32 16777288, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 72]
!453 = metadata !{i32 786688, metadata !454, metadata !"flags", metadata !35, i32 74, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 74]
!454 = metadata !{i32 786443, metadata !34, i32 73, i32 0, metadata !35, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!455 = metadata !{i32 786688, metadata !454, metadata !"timer", metadata !35, i32 75, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 75]
!456 = metadata !{i32 786688, metadata !454, metadata !"delta", metadata !35, i32 76, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 76]
!457 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_handle_read_event", metadata !"ngx_handle_read_event", metadata !"", metadata !35, i32 129, metadata !458, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_event_s*, i32)* @ngx_handle_read_event, null, null, metadata !463, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [ngx_handle_read_event]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!459 = metadata !{metadata !460, metadata !237, metadata !71}
!460 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !40, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !461} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!461 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !40, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !462} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!462 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !40, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!463 = metadata !{metadata !464}
!464 = metadata !{metadata !465, metadata !466}
!465 = metadata !{i32 786689, metadata !457, metadata !"rev", metadata !35, i32 16777345, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rev] [line 129]
!466 = metadata !{i32 786689, metadata !457, metadata !"flags", metadata !35, i32 33554561, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 129]
!467 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_handle_write_event", metadata !"ngx_handle_write_event", metadata !"", metadata !35, i32 174, metadata !468, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_event_s*, i32)* @ngx_handle_write_event, null, null, metadata !470, i32 175} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 175] [ngx_handle_write_event]
!468 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!469 = metadata !{metadata !460, metadata !237, metadata !75}
!470 = metadata !{metadata !471}
!471 = metadata !{metadata !472, metadata !473, metadata !474}
!472 = metadata !{i32 786689, metadata !467, metadata !"wev", metadata !35, i32 16777390, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wev] [line 174]
!473 = metadata !{i32 786689, metadata !467, metadata !"lowat", metadata !35, i32 33554606, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lowat] [line 174]
!474 = metadata !{i32 786688, metadata !475, metadata !"c", metadata !35, i32 176, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 176]
!475 = metadata !{i32 786443, metadata !467, i32 175, i32 0, metadata !35, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!476 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_send_lowat", metadata !"ngx_send_lowat", metadata !"", metadata !35, i32 508, metadata !477, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_connection_s*, i32)* @ngx_send_lowat, null, null, metadata !479, i32 509} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 509] [ngx_send_lowat]
!477 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{metadata !460, metadata !230, metadata !75}
!479 = metadata !{metadata !480}
!480 = metadata !{metadata !481, metadata !482, metadata !483}
!481 = metadata !{i32 786689, metadata !476, metadata !"c", metadata !35, i32 16777724, metadata !230, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 508]
!482 = metadata !{i32 786689, metadata !476, metadata !"lowat", metadata !35, i32 33554940, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lowat] [line 508]
!483 = metadata !{i32 786688, metadata !484, metadata !"sndlowat", metadata !35, i32 510, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sndlowat] [line 510]
!484 = metadata !{i32 786443, metadata !476, i32 509, i32 0, metadata !35, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!485 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_core_init_conf", metadata !"ngx_event_core_init_conf", metadata !"", metadata !35, i32 677, metadata !486, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_event_core_init_conf, null, null, metadata !488, i32 678} ; [ DW_TAG_subprogram ] [line 677] [local] [def] [scope 678] [ngx_event_core_init_conf]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!487 = metadata !{metadata !186, metadata !38, metadata !48}
!488 = metadata !{metadata !489}
!489 = metadata !{metadata !490, metadata !491, metadata !492, metadata !505, metadata !506, metadata !507, metadata !582, metadata !627, metadata !632}
!490 = metadata !{i32 786689, metadata !485, metadata !"cycle", metadata !35, i32 16777893, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 677]
!491 = metadata !{i32 786689, metadata !485, metadata !"conf", metadata !35, i32 33555109, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 677]
!492 = metadata !{i32 786688, metadata !493, metadata !"ecf", metadata !35, i32 679, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 679]
!493 = metadata !{i32 786443, metadata !485, i32 678, i32 0, metadata !35, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!494 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !495} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_conf_t]
!495 = metadata !{i32 786454, null, metadata !"ngx_event_conf_t", metadata !35, i32 482, i64 0, i64 0, i64 0, i32 0, metadata !496} ; [ DW_TAG_typedef ] [ngx_event_conf_t] [line 482, size 0, align 0, offset 0] [from ]
!496 = metadata !{i32 786451, null, metadata !"", metadata !240, i32 468, i64 192, i64 32, i32 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 468, size 192, align 32, offset 0] [from ]
!497 = metadata !{metadata !498, metadata !499, metadata !500, metadata !502, metadata !503, metadata !504}
!498 = metadata !{i32 786445, metadata !496, metadata !"connections", metadata !240, i32 469, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [connections] [line 469, size 32, align 32, offset 0] [from ngx_uint_t]
!499 = metadata !{i32 786445, metadata !496, metadata !"use", metadata !240, i32 470, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [use] [line 470, size 32, align 32, offset 32] [from ngx_uint_t]
!500 = metadata !{i32 786445, metadata !496, metadata !"multi_accept", metadata !240, i32 472, i64 32, i64 32, i64 64, i32 0, metadata !501} ; [ DW_TAG_member ] [multi_accept] [line 472, size 32, align 32, offset 64] [from ngx_flag_t]
!501 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !240, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !461} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!502 = metadata !{i32 786445, metadata !496, metadata !"accept_mutex", metadata !240, i32 473, i64 32, i64 32, i64 96, i32 0, metadata !501} ; [ DW_TAG_member ] [accept_mutex] [line 473, size 32, align 32, offset 96] [from ngx_flag_t]
!503 = metadata !{i32 786445, metadata !496, metadata !"accept_mutex_delay", metadata !240, i32 475, i64 32, i64 32, i64 128, i32 0, metadata !355} ; [ DW_TAG_member ] [accept_mutex_delay] [line 475, size 32, align 32, offset 128] [from ngx_msec_t]
!504 = metadata !{i32 786445, metadata !496, metadata !"name", metadata !240, i32 477, i64 32, i64 32, i64 160, i32 0, metadata !61} ; [ DW_TAG_member ] [name] [line 477, size 32, align 32, offset 160] [from ]
!505 = metadata !{i32 786688, metadata !493, metadata !"fd", metadata !35, i32 681, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 681]
!506 = metadata !{i32 786688, metadata !493, metadata !"i", metadata !35, i32 685, metadata !460, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 685]
!507 = metadata !{i32 786688, metadata !493, metadata !"module", metadata !35, i32 686, metadata !508, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [module] [line 686]
!508 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !509} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_module_t]
!509 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !35, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !510} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!510 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !40, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!511 = metadata !{metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !559, metadata !560, metadata !564, metadata !568, metadata !569, metadata !570, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581}
!512 = metadata !{i32 786445, metadata !510, metadata !"ctx_index", metadata !40, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!513 = metadata !{i32 786445, metadata !510, metadata !"index", metadata !40, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!514 = metadata !{i32 786445, metadata !510, metadata !"spare0", metadata !40, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!515 = metadata !{i32 786445, metadata !510, metadata !"spare1", metadata !40, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !71} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!516 = metadata !{i32 786445, metadata !510, metadata !"spare2", metadata !40, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !71} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!517 = metadata !{i32 786445, metadata !510, metadata !"spare3", metadata !40, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !71} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!518 = metadata !{i32 786445, metadata !510, metadata !"version", metadata !40, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !71} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!519 = metadata !{i32 786445, metadata !510, metadata !"ctx", metadata !40, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !48} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!520 = metadata !{i32 786445, metadata !510, metadata !"commands", metadata !40, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !521} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!521 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !522} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!522 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !40, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !523} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!523 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !40, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!524 = metadata !{metadata !525, metadata !526, metadata !527, metadata !556, metadata !557, metadata !558}
!525 = metadata !{i32 786445, metadata !523, metadata !"name", metadata !40, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!526 = metadata !{i32 786445, metadata !523, metadata !"type", metadata !40, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!527 = metadata !{i32 786445, metadata !523, metadata !"set", metadata !40, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !528} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!528 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !529} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!530 = metadata !{metadata !186, metadata !531, metadata !521, metadata !48}
!531 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !532} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!532 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !40, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!533 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !40, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!534 = metadata !{metadata !535, metadata !536, metadata !538, metadata !539, metadata !540, metadata !541, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !555}
!535 = metadata !{i32 786445, metadata !533, metadata !"name", metadata !40, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!536 = metadata !{i32 786445, metadata !533, metadata !"args", metadata !40, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !537} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!537 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !409} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!538 = metadata !{i32 786445, metadata !533, metadata !"cycle", metadata !40, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!539 = metadata !{i32 786445, metadata !533, metadata !"pool", metadata !40, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !50} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!540 = metadata !{i32 786445, metadata !533, metadata !"temp_pool", metadata !40, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!541 = metadata !{i32 786445, metadata !533, metadata !"conf_file", metadata !40, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !542} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!542 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !543} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!543 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !40, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !544} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!544 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !545, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!545 = metadata !{metadata !546, metadata !547, metadata !548}
!546 = metadata !{i32 786445, metadata !544, metadata !"file", metadata !40, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!547 = metadata !{i32 786445, metadata !544, metadata !"buffer", metadata !40, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !84} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!548 = metadata !{i32 786445, metadata !544, metadata !"line", metadata !40, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !71} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!549 = metadata !{i32 786445, metadata !533, metadata !"log", metadata !40, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!550 = metadata !{i32 786445, metadata !533, metadata !"ctx", metadata !40, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !48} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!551 = metadata !{i32 786445, metadata !533, metadata !"module_type", metadata !40, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !71} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!552 = metadata !{i32 786445, metadata !533, metadata !"cmd_type", metadata !40, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !71} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!553 = metadata !{i32 786445, metadata !533, metadata !"handler", metadata !40, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !554} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!554 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !40, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !528} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!555 = metadata !{i32 786445, metadata !533, metadata !"handler_conf", metadata !40, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !186} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!556 = metadata !{i32 786445, metadata !523, metadata !"conf", metadata !40, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !71} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!557 = metadata !{i32 786445, metadata !523, metadata !"offset", metadata !40, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !71} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!558 = metadata !{i32 786445, metadata !523, metadata !"post", metadata !40, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!559 = metadata !{i32 786445, metadata !510, metadata !"type", metadata !40, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !71} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!560 = metadata !{i32 786445, metadata !510, metadata !"init_master", metadata !40, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !561} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!561 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!563 = metadata !{metadata !460, metadata !159}
!564 = metadata !{i32 786445, metadata !510, metadata !"init_module", metadata !40, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !565} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!565 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !566} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!566 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!567 = metadata !{metadata !460, metadata !38}
!568 = metadata !{i32 786445, metadata !510, metadata !"init_process", metadata !40, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !565} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!569 = metadata !{i32 786445, metadata !510, metadata !"init_thread", metadata !40, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !565} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!570 = metadata !{i32 786445, metadata !510, metadata !"exit_thread", metadata !40, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !571} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!571 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!572 = metadata !{i32 786445, metadata !510, metadata !"exit_process", metadata !40, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !571} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!573 = metadata !{i32 786445, metadata !510, metadata !"exit_master", metadata !40, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !571} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!574 = metadata !{i32 786445, metadata !510, metadata !"spare_hook0", metadata !40, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!575 = metadata !{i32 786445, metadata !510, metadata !"spare_hook1", metadata !40, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!576 = metadata !{i32 786445, metadata !510, metadata !"spare_hook2", metadata !40, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!577 = metadata !{i32 786445, metadata !510, metadata !"spare_hook3", metadata !40, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!578 = metadata !{i32 786445, metadata !510, metadata !"spare_hook4", metadata !40, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!579 = metadata !{i32 786445, metadata !510, metadata !"spare_hook5", metadata !40, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!580 = metadata !{i32 786445, metadata !510, metadata !"spare_hook6", metadata !40, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!581 = metadata !{i32 786445, metadata !510, metadata !"spare_hook7", metadata !40, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !72} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!582 = metadata !{i32 786688, metadata !493, metadata !"event_module", metadata !35, i32 687, metadata !583, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [event_module] [line 687]
!583 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !584} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_module_t]
!584 = metadata !{i32 786454, null, metadata !"ngx_event_module_t", metadata !35, i32 492, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ] [ngx_event_module_t] [line 492, size 0, align 0, offset 0] [from ]
!585 = metadata !{i32 786451, null, metadata !"", metadata !240, i32 485, i64 416, i64 32, i32 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 485, size 416, align 32, offset 0] [from ]
!586 = metadata !{metadata !587, metadata !589, metadata !593, metadata !595}
!587 = metadata !{i32 786445, metadata !585, metadata !"name", metadata !240, i32 486, i64 32, i64 32, i64 0, i32 0, metadata !588} ; [ DW_TAG_member ] [name] [line 486, size 32, align 32, offset 0] [from ]
!588 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!589 = metadata !{i32 786445, metadata !585, metadata !"create_conf", metadata !240, i32 488, i64 32, i64 32, i64 32, i32 0, metadata !590} ; [ DW_TAG_member ] [create_conf] [line 488, size 32, align 32, offset 32] [from ]
!590 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !591} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!592 = metadata !{metadata !48, metadata !38}
!593 = metadata !{i32 786445, metadata !585, metadata !"init_conf", metadata !240, i32 489, i64 32, i64 32, i64 64, i32 0, metadata !594} ; [ DW_TAG_member ] [init_conf] [line 489, size 32, align 32, offset 64] [from ]
!594 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !486} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!595 = metadata !{i32 786445, metadata !585, metadata !"actions", metadata !240, i32 491, i64 320, i64 32, i64 96, i32 0, metadata !596} ; [ DW_TAG_member ] [actions] [line 491, size 320, align 32, offset 96] [from ngx_event_actions_t]
!596 = metadata !{i32 786454, null, metadata !"ngx_event_actions_t", metadata !240, i32 240, i64 0, i64 0, i64 0, i32 0, metadata !597} ; [ DW_TAG_typedef ] [ngx_event_actions_t] [line 240, size 0, align 0, offset 0] [from ]
!597 = metadata !{i32 786451, null, metadata !"", metadata !240, i32 224, i64 320, i64 32, i32 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 224, size 320, align 32, offset 0] [from ]
!598 = metadata !{metadata !599, metadata !603, metadata !604, metadata !605, metadata !606, metadata !610, metadata !614, metadata !618, metadata !622, metadata !626}
!599 = metadata !{i32 786445, metadata !597, metadata !"add", metadata !240, i32 225, i64 32, i64 32, i64 0, i32 0, metadata !600} ; [ DW_TAG_member ] [add] [line 225, size 32, align 32, offset 0] [from ]
!600 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !601} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!601 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!602 = metadata !{metadata !460, metadata !237, metadata !460, metadata !71}
!603 = metadata !{i32 786445, metadata !597, metadata !"del", metadata !240, i32 226, i64 32, i64 32, i64 32, i32 0, metadata !600} ; [ DW_TAG_member ] [del] [line 226, size 32, align 32, offset 32] [from ]
!604 = metadata !{i32 786445, metadata !597, metadata !"enable", metadata !240, i32 228, i64 32, i64 32, i64 64, i32 0, metadata !600} ; [ DW_TAG_member ] [enable] [line 228, size 32, align 32, offset 64] [from ]
!605 = metadata !{i32 786445, metadata !597, metadata !"disable", metadata !240, i32 229, i64 32, i64 32, i64 96, i32 0, metadata !600} ; [ DW_TAG_member ] [disable] [line 229, size 32, align 32, offset 96] [from ]
!606 = metadata !{i32 786445, metadata !597, metadata !"add_conn", metadata !240, i32 231, i64 32, i64 32, i64 128, i32 0, metadata !607} ; [ DW_TAG_member ] [add_conn] [line 231, size 32, align 32, offset 128] [from ]
!607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!609 = metadata !{metadata !460, metadata !230}
!610 = metadata !{i32 786445, metadata !597, metadata !"del_conn", metadata !240, i32 232, i64 32, i64 32, i64 160, i32 0, metadata !611} ; [ DW_TAG_member ] [del_conn] [line 232, size 32, align 32, offset 160] [from ]
!611 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !612} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!612 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!613 = metadata !{metadata !460, metadata !230, metadata !71}
!614 = metadata !{i32 786445, metadata !597, metadata !"process_changes", metadata !240, i32 234, i64 32, i64 32, i64 192, i32 0, metadata !615} ; [ DW_TAG_member ] [process_changes] [line 234, size 32, align 32, offset 192] [from ]
!615 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !616} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!617 = metadata !{metadata !460, metadata !38, metadata !71}
!618 = metadata !{i32 786445, metadata !597, metadata !"process_events", metadata !240, i32 235, i64 32, i64 32, i64 224, i32 0, metadata !619} ; [ DW_TAG_member ] [process_events] [line 235, size 32, align 32, offset 224] [from ]
!619 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !620} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!621 = metadata !{metadata !460, metadata !38, metadata !355, metadata !71}
!622 = metadata !{i32 786445, metadata !597, metadata !"init", metadata !240, i32 238, i64 32, i64 32, i64 256, i32 0, metadata !623} ; [ DW_TAG_member ] [init] [line 238, size 32, align 32, offset 256] [from ]
!623 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !624} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!625 = metadata !{metadata !460, metadata !38, metadata !355}
!626 = metadata !{i32 786445, metadata !597, metadata !"done", metadata !240, i32 239, i64 32, i64 32, i64 288, i32 0, metadata !571} ; [ DW_TAG_member ] [done] [line 239, size 32, align 32, offset 288] [from ]
!627 = metadata !{i32 786688, metadata !628, metadata !"__s1_len", metadata !35, i32 713, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 713]
!628 = metadata !{i32 786443, metadata !629, i32 713, i32 0, metadata !35, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!629 = metadata !{i32 786443, metadata !630, i32 708, i32 0, metadata !35, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!630 = metadata !{i32 786443, metadata !631, i32 708, i32 0, metadata !35, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!631 = metadata !{i32 786443, metadata !493, i32 707, i32 0, metadata !35, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!632 = metadata !{i32 786688, metadata !628, metadata !"__s2_len", metadata !35, i32 713, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 713]
!633 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_core_create_conf", metadata !"ngx_event_core_create_conf", metadata !"", metadata !35, i32 659, metadata !591, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*)* @ngx_event_core_create_conf, null, null, metadata !634, i32 660} ; [ DW_TAG_subprogram ] [line 659] [local] [def] [scope 660] [ngx_event_core_create_conf]
!634 = metadata !{metadata !635}
!635 = metadata !{metadata !636, metadata !637}
!636 = metadata !{i32 786689, metadata !633, metadata !"cycle", metadata !35, i32 16777875, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 659]
!637 = metadata !{i32 786688, metadata !638, metadata !"ecf", metadata !35, i32 661, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 661]
!638 = metadata !{i32 786443, metadata !633, i32 660, i32 0, metadata !35, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!639 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_process_init", metadata !"ngx_event_process_init", metadata !"", metadata !35, i32 325, metadata !566, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_event_process_init, null, null, metadata !640, i32 326} ; [ DW_TAG_subprogram ] [line 325] [local] [def] [scope 326] [ngx_event_process_init]
!640 = metadata !{metadata !641}
!641 = metadata !{metadata !642, metadata !643, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !684, metadata !685, metadata !686, metadata !773, metadata !784}
!642 = metadata !{i32 786689, metadata !639, metadata !"cycle", metadata !35, i32 16777541, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 325]
!643 = metadata !{i32 786688, metadata !644, metadata !"m", metadata !35, i32 327, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 327]
!644 = metadata !{i32 786443, metadata !639, i32 326, i32 0, metadata !35, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!645 = metadata !{i32 786688, metadata !644, metadata !"i", metadata !35, i32 328, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 328]
!646 = metadata !{i32 786688, metadata !644, metadata !"rev", metadata !35, i32 329, metadata !237, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rev] [line 329]
!647 = metadata !{i32 786688, metadata !644, metadata !"wev", metadata !35, i32 330, metadata !237, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wev] [line 330]
!648 = metadata !{i32 786688, metadata !644, metadata !"ls", metadata !35, i32 331, metadata !316, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 331]
!649 = metadata !{i32 786688, metadata !644, metadata !"c", metadata !35, i32 332, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 332]
!650 = metadata !{i32 786688, metadata !644, metadata !"next", metadata !35, i32 333, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 333]
!651 = metadata !{i32 786688, metadata !644, metadata !"old", metadata !35, i32 334, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 334]
!652 = metadata !{i32 786688, metadata !644, metadata !"ccf", metadata !35, i32 335, metadata !653, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 335]
!653 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !654} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_core_conf_t]
!654 = metadata !{i32 786454, null, metadata !"ngx_core_conf_t", metadata !35, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !655} ; [ DW_TAG_typedef ] [ngx_core_conf_t] [line 109, size 0, align 0, offset 0] [from ]
!655 = metadata !{i32 786451, null, metadata !"", metadata !42, i32 73, i64 928, i64 32, i32 0, i32 0, null, metadata !656, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 73, size 928, align 32, offset 0] [from ]
!656 = metadata !{metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !670, metadata !671, metadata !674, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682}
!657 = metadata !{i32 786445, metadata !655, metadata !"daemon", metadata !42, i32 74, i64 32, i64 32, i64 0, i32 0, metadata !501} ; [ DW_TAG_member ] [daemon] [line 74, size 32, align 32, offset 0] [from ngx_flag_t]
!658 = metadata !{i32 786445, metadata !655, metadata !"master", metadata !42, i32 75, i64 32, i64 32, i64 32, i32 0, metadata !501} ; [ DW_TAG_member ] [master] [line 75, size 32, align 32, offset 32] [from ngx_flag_t]
!659 = metadata !{i32 786445, metadata !655, metadata !"timer_resolution", metadata !42, i32 77, i64 32, i64 32, i64 64, i32 0, metadata !355} ; [ DW_TAG_member ] [timer_resolution] [line 77, size 32, align 32, offset 64] [from ngx_msec_t]
!660 = metadata !{i32 786445, metadata !655, metadata !"worker_processes", metadata !42, i32 79, i64 32, i64 32, i64 96, i32 0, metadata !460} ; [ DW_TAG_member ] [worker_processes] [line 79, size 32, align 32, offset 96] [from ngx_int_t]
!661 = metadata !{i32 786445, metadata !655, metadata !"debug_points", metadata !42, i32 80, i64 32, i64 32, i64 128, i32 0, metadata !460} ; [ DW_TAG_member ] [debug_points] [line 80, size 32, align 32, offset 128] [from ngx_int_t]
!662 = metadata !{i32 786445, metadata !655, metadata !"rlimit_nofile", metadata !42, i32 82, i64 32, i64 32, i64 160, i32 0, metadata !460} ; [ DW_TAG_member ] [rlimit_nofile] [line 82, size 32, align 32, offset 160] [from ngx_int_t]
!663 = metadata !{i32 786445, metadata !655, metadata !"rlimit_sigpending", metadata !42, i32 83, i64 32, i64 32, i64 192, i32 0, metadata !460} ; [ DW_TAG_member ] [rlimit_sigpending] [line 83, size 32, align 32, offset 192] [from ngx_int_t]
!664 = metadata !{i32 786445, metadata !655, metadata !"rlimit_core", metadata !42, i32 84, i64 64, i64 32, i64 224, i32 0, metadata !91} ; [ DW_TAG_member ] [rlimit_core] [line 84, size 64, align 32, offset 224] [from off_t]
!665 = metadata !{i32 786445, metadata !655, metadata !"priority", metadata !42, i32 86, i64 32, i64 32, i64 288, i32 0, metadata !108} ; [ DW_TAG_member ] [priority] [line 86, size 32, align 32, offset 288] [from int]
!666 = metadata !{i32 786445, metadata !655, metadata !"cpu_affinity_n", metadata !42, i32 88, i64 32, i64 32, i64 320, i32 0, metadata !71} ; [ DW_TAG_member ] [cpu_affinity_n] [line 88, size 32, align 32, offset 320] [from ngx_uint_t]
!667 = metadata !{i32 786445, metadata !655, metadata !"cpu_affinity", metadata !42, i32 89, i64 32, i64 32, i64 352, i32 0, metadata !668} ; [ DW_TAG_member ] [cpu_affinity] [line 89, size 32, align 32, offset 352] [from ]
!668 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !669} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint64_t]
!669 = metadata !{i32 786454, null, metadata !"uint64_t", metadata !42, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [uint64_t] [line 59, size 0, align 0, offset 0] [from long long unsigned int]
!670 = metadata !{i32 786445, metadata !655, metadata !"username", metadata !42, i32 91, i64 32, i64 32, i64 384, i32 0, metadata !186} ; [ DW_TAG_member ] [username] [line 91, size 32, align 32, offset 384] [from ]
!671 = metadata !{i32 786445, metadata !655, metadata !"user", metadata !42, i32 92, i64 32, i64 32, i64 416, i32 0, metadata !672} ; [ DW_TAG_member ] [user] [line 92, size 32, align 32, offset 416] [from ngx_uid_t]
!672 = metadata !{i32 786454, null, metadata !"ngx_uid_t", metadata !42, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_typedef ] [ngx_uid_t] [line 16, size 0, align 0, offset 0] [from uid_t]
!673 = metadata !{i32 786454, null, metadata !"uid_t", metadata !42, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [uid_t] [line 81, size 0, align 0, offset 0] [from __uid_t]
!674 = metadata !{i32 786445, metadata !655, metadata !"group", metadata !42, i32 93, i64 32, i64 32, i64 448, i32 0, metadata !675} ; [ DW_TAG_member ] [group] [line 93, size 32, align 32, offset 448] [from ngx_gid_t]
!675 = metadata !{i32 786454, null, metadata !"ngx_gid_t", metadata !42, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_typedef ] [ngx_gid_t] [line 17, size 0, align 0, offset 0] [from gid_t]
!676 = metadata !{i32 786454, null, metadata !"gid_t", metadata !42, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [gid_t] [line 66, size 0, align 0, offset 0] [from __gid_t]
!677 = metadata !{i32 786445, metadata !655, metadata !"working_directory", metadata !42, i32 95, i64 64, i64 32, i64 480, i32 0, metadata !110} ; [ DW_TAG_member ] [working_directory] [line 95, size 64, align 32, offset 480] [from ngx_str_t]
!678 = metadata !{i32 786445, metadata !655, metadata !"lock_file", metadata !42, i32 96, i64 64, i64 32, i64 544, i32 0, metadata !110} ; [ DW_TAG_member ] [lock_file] [line 96, size 64, align 32, offset 544] [from ngx_str_t]
!679 = metadata !{i32 786445, metadata !655, metadata !"pid", metadata !42, i32 98, i64 64, i64 32, i64 608, i32 0, metadata !110} ; [ DW_TAG_member ] [pid] [line 98, size 64, align 32, offset 608] [from ngx_str_t]
!680 = metadata !{i32 786445, metadata !655, metadata !"oldpid", metadata !42, i32 99, i64 64, i64 32, i64 672, i32 0, metadata !110} ; [ DW_TAG_member ] [oldpid] [line 99, size 64, align 32, offset 672] [from ngx_str_t]
!681 = metadata !{i32 786445, metadata !655, metadata !"env", metadata !42, i32 101, i64 160, i64 32, i64 736, i32 0, metadata !409} ; [ DW_TAG_member ] [env] [line 101, size 160, align 32, offset 736] [from ngx_array_t]
!682 = metadata !{i32 786445, metadata !655, metadata !"environment", metadata !42, i32 102, i64 32, i64 32, i64 896, i32 0, metadata !683} ; [ DW_TAG_member ] [environment] [line 102, size 32, align 32, offset 896] [from ]
!683 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!684 = metadata !{i32 786688, metadata !644, metadata !"ecf", metadata !35, i32 336, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 336]
!685 = metadata !{i32 786688, metadata !644, metadata !"module", metadata !35, i32 337, metadata !583, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [module] [line 337]
!686 = metadata !{i32 786688, metadata !687, metadata !"sa", metadata !35, i32 385, metadata !688, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 385]
!687 = metadata !{i32 786443, metadata !644, i32 369, i32 0, metadata !35, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!688 = metadata !{i32 786451, null, metadata !"sigaction", metadata !689, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !690, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sigaction] [line 25, size 1120, align 32, offset 0] [from ]
!689 = metadata !{i32 786473, metadata !"/usr/include/bits/sigaction.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!690 = metadata !{metadata !691, metadata !759, metadata !768, metadata !769}
!691 = metadata !{i32 786445, metadata !688, metadata !"__sigaction_handler", metadata !689, i32 36, i64 32, i64 32, i64 0, i32 0, metadata !692} ; [ DW_TAG_member ] [__sigaction_handler] [line 36, size 32, align 32, offset 0] [from ]
!692 = metadata !{i32 786455, metadata !688, metadata !"", metadata !689, i32 29, i64 32, i64 32, i64 0, i32 0, null, metadata !693, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 29, size 32, align 32, offset 0] [from ]
!693 = metadata !{metadata !694, metadata !699}
!694 = metadata !{i32 786445, metadata !692, metadata !"sa_handler", metadata !689, i32 32, i64 32, i64 32, i64 0, i32 0, metadata !695} ; [ DW_TAG_member ] [sa_handler] [line 32, size 32, align 32, offset 0] [from __sighandler_t]
!695 = metadata !{i32 786454, null, metadata !"__sighandler_t", metadata !689, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_typedef ] [__sighandler_t] [line 84, size 0, align 0, offset 0] [from ]
!696 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !697} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!698 = metadata !{null, metadata !108}
!699 = metadata !{i32 786445, metadata !692, metadata !"sa_sigaction", metadata !689, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !700} ; [ DW_TAG_member ] [sa_sigaction] [line 34, size 32, align 32, offset 0] [from ]
!700 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!701 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !702, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!702 = metadata !{null, metadata !108, metadata !703, metadata !48}
!703 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !704} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from siginfo_t]
!704 = metadata !{i32 786454, null, metadata !"siginfo_t", metadata !689, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !705} ; [ DW_TAG_typedef ] [siginfo_t] [line 108, size 0, align 0, offset 0] [from siginfo]
!705 = metadata !{i32 786451, null, metadata !"siginfo", metadata !706, i32 51, i64 1024, i64 32, i32 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_structure_type ] [siginfo] [line 51, size 1024, align 32, offset 0] [from ]
!706 = metadata !{i32 786473, metadata !"/usr/include/bits/siginfo.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!707 = metadata !{metadata !708, metadata !709, metadata !710, metadata !711}
!708 = metadata !{i32 786445, metadata !705, metadata !"si_signo", metadata !706, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [si_signo] [line 53, size 32, align 32, offset 0] [from int]
!709 = metadata !{i32 786445, metadata !705, metadata !"si_errno", metadata !706, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [si_errno] [line 54, size 32, align 32, offset 32] [from int]
!710 = metadata !{i32 786445, metadata !705, metadata !"si_code", metadata !706, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [si_code] [line 56, size 32, align 32, offset 64] [from int]
!711 = metadata !{i32 786445, metadata !705, metadata !"_sifields", metadata !706, i32 107, i64 928, i64 32, i64 96, i32 0, metadata !712} ; [ DW_TAG_member ] [_sifields] [line 107, size 928, align 32, offset 96] [from ]
!712 = metadata !{i32 786455, metadata !705, metadata !"", metadata !706, i32 58, i64 928, i64 32, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 58, size 928, align 32, offset 0] [from ]
!713 = metadata !{metadata !714, metadata !718, metadata !724, metadata !735, metadata !741, metadata !750, metadata !754}
!714 = metadata !{i32 786445, metadata !712, metadata !"_pad", metadata !706, i32 60, i64 928, i64 32, i64 0, i32 0, metadata !715} ; [ DW_TAG_member ] [_pad] [line 60, size 928, align 32, offset 0] [from ]
!715 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 928, i64 32, i32 0, i32 0, metadata !108, metadata !716, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 928, align 32, offset 0] [from int]
!716 = metadata !{metadata !717}
!717 = metadata !{i32 786465, i64 0, i64 28}      ; [ DW_TAG_subrange_type ] [0, 28]
!718 = metadata !{i32 786445, metadata !712, metadata !"_kill", metadata !706, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !719} ; [ DW_TAG_member ] [_kill] [line 67, size 64, align 32, offset 0] [from ]
!719 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 63, i64 64, i64 32, i32 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 63, size 64, align 32, offset 0] [from ]
!720 = metadata !{metadata !721, metadata !723}
!721 = metadata !{i32 786445, metadata !719, metadata !"si_pid", metadata !706, i32 65, i64 32, i64 32, i64 0, i32 0, metadata !722} ; [ DW_TAG_member ] [si_pid] [line 65, size 32, align 32, offset 0] [from __pid_t]
!722 = metadata !{i32 786454, null, metadata !"__pid_t", metadata !706, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [__pid_t] [line 143, size 0, align 0, offset 0] [from int]
!723 = metadata !{i32 786445, metadata !719, metadata !"si_uid", metadata !706, i32 66, i64 32, i64 32, i64 32, i32 0, metadata !134} ; [ DW_TAG_member ] [si_uid] [line 66, size 32, align 32, offset 32] [from __uid_t]
!724 = metadata !{i32 786445, metadata !712, metadata !"_timer", metadata !706, i32 75, i64 96, i64 32, i64 0, i32 0, metadata !725} ; [ DW_TAG_member ] [_timer] [line 75, size 96, align 32, offset 0] [from ]
!725 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 70, i64 96, i64 32, i32 0, i32 0, null, metadata !726, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 96, align 32, offset 0] [from ]
!726 = metadata !{metadata !727, metadata !728, metadata !729}
!727 = metadata !{i32 786445, metadata !725, metadata !"si_tid", metadata !706, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [si_tid] [line 72, size 32, align 32, offset 0] [from int]
!728 = metadata !{i32 786445, metadata !725, metadata !"si_overrun", metadata !706, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [si_overrun] [line 73, size 32, align 32, offset 32] [from int]
!729 = metadata !{i32 786445, metadata !725, metadata !"si_sigval", metadata !706, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !730} ; [ DW_TAG_member ] [si_sigval] [line 74, size 32, align 32, offset 64] [from sigval_t]
!730 = metadata !{i32 786454, null, metadata !"sigval_t", metadata !706, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !731} ; [ DW_TAG_typedef ] [sigval_t] [line 37, size 0, align 0, offset 0] [from sigval]
!731 = metadata !{i32 786455, null, metadata !"sigval", metadata !706, i32 33, i64 32, i64 32, i64 0, i32 0, null, metadata !732, i32 0, i32 0} ; [ DW_TAG_union_type ] [sigval] [line 33, size 32, align 32, offset 0] [from ]
!732 = metadata !{metadata !733, metadata !734}
!733 = metadata !{i32 786445, metadata !731, metadata !"sival_int", metadata !706, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [sival_int] [line 35, size 32, align 32, offset 0] [from int]
!734 = metadata !{i32 786445, metadata !731, metadata !"sival_ptr", metadata !706, i32 36, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [sival_ptr] [line 36, size 32, align 32, offset 0] [from ]
!735 = metadata !{i32 786445, metadata !712, metadata !"_rt", metadata !706, i32 83, i64 96, i64 32, i64 0, i32 0, metadata !736} ; [ DW_TAG_member ] [_rt] [line 83, size 96, align 32, offset 0] [from ]
!736 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 78, i64 96, i64 32, i32 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 96, align 32, offset 0] [from ]
!737 = metadata !{metadata !738, metadata !739, metadata !740}
!738 = metadata !{i32 786445, metadata !736, metadata !"si_pid", metadata !706, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !722} ; [ DW_TAG_member ] [si_pid] [line 80, size 32, align 32, offset 0] [from __pid_t]
!739 = metadata !{i32 786445, metadata !736, metadata !"si_uid", metadata !706, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !134} ; [ DW_TAG_member ] [si_uid] [line 81, size 32, align 32, offset 32] [from __uid_t]
!740 = metadata !{i32 786445, metadata !736, metadata !"si_sigval", metadata !706, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !730} ; [ DW_TAG_member ] [si_sigval] [line 82, size 32, align 32, offset 64] [from sigval_t]
!741 = metadata !{i32 786445, metadata !712, metadata !"_sigchld", metadata !706, i32 93, i64 160, i64 32, i64 0, i32 0, metadata !742} ; [ DW_TAG_member ] [_sigchld] [line 93, size 160, align 32, offset 0] [from ]
!742 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 86, i64 160, i64 32, i32 0, i32 0, null, metadata !743, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 86, size 160, align 32, offset 0] [from ]
!743 = metadata !{metadata !744, metadata !745, metadata !746, metadata !747, metadata !749}
!744 = metadata !{i32 786445, metadata !742, metadata !"si_pid", metadata !706, i32 88, i64 32, i64 32, i64 0, i32 0, metadata !722} ; [ DW_TAG_member ] [si_pid] [line 88, size 32, align 32, offset 0] [from __pid_t]
!745 = metadata !{i32 786445, metadata !742, metadata !"si_uid", metadata !706, i32 89, i64 32, i64 32, i64 32, i32 0, metadata !134} ; [ DW_TAG_member ] [si_uid] [line 89, size 32, align 32, offset 32] [from __uid_t]
!746 = metadata !{i32 786445, metadata !742, metadata !"si_status", metadata !706, i32 90, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [si_status] [line 90, size 32, align 32, offset 64] [from int]
!747 = metadata !{i32 786445, metadata !742, metadata !"si_utime", metadata !706, i32 91, i64 32, i64 32, i64 96, i32 0, metadata !748} ; [ DW_TAG_member ] [si_utime] [line 91, size 32, align 32, offset 96] [from __clock_t]
!748 = metadata !{i32 786454, null, metadata !"__clock_t", metadata !706, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__clock_t] [line 145, size 0, align 0, offset 0] [from long int]
!749 = metadata !{i32 786445, metadata !742, metadata !"si_stime", metadata !706, i32 92, i64 32, i64 32, i64 128, i32 0, metadata !748} ; [ DW_TAG_member ] [si_stime] [line 92, size 32, align 32, offset 128] [from __clock_t]
!750 = metadata !{i32 786445, metadata !712, metadata !"_sigfault", metadata !706, i32 99, i64 32, i64 32, i64 0, i32 0, metadata !751} ; [ DW_TAG_member ] [_sigfault] [line 99, size 32, align 32, offset 0] [from ]
!751 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 96, i64 32, i64 32, i32 0, i32 0, null, metadata !752, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 96, size 32, align 32, offset 0] [from ]
!752 = metadata !{metadata !753}
!753 = metadata !{i32 786445, metadata !751, metadata !"si_addr", metadata !706, i32 98, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [si_addr] [line 98, size 32, align 32, offset 0] [from ]
!754 = metadata !{i32 786445, metadata !712, metadata !"_sigpoll", metadata !706, i32 106, i64 64, i64 32, i64 0, i32 0, metadata !755} ; [ DW_TAG_member ] [_sigpoll] [line 106, size 64, align 32, offset 0] [from ]
!755 = metadata !{i32 786451, metadata !712, metadata !"", metadata !706, i32 102, i64 64, i64 32, i32 0, i32 0, null, metadata !756, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 102, size 64, align 32, offset 0] [from ]
!756 = metadata !{metadata !757, metadata !758}
!757 = metadata !{i32 786445, metadata !755, metadata !"si_band", metadata !706, i32 104, i64 32, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [si_band] [line 104, size 32, align 32, offset 0] [from long int]
!758 = metadata !{i32 786445, metadata !755, metadata !"si_fd", metadata !706, i32 105, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [si_fd] [line 105, size 32, align 32, offset 32] [from int]
!759 = metadata !{i32 786445, metadata !688, metadata !"sa_mask", metadata !689, i32 44, i64 1024, i64 32, i64 32, i32 0, metadata !760} ; [ DW_TAG_member ] [sa_mask] [line 44, size 1024, align 32, offset 32] [from __sigset_t]
!760 = metadata !{i32 786454, null, metadata !"__sigset_t", metadata !689, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !761} ; [ DW_TAG_typedef ] [__sigset_t] [line 32, size 0, align 0, offset 0] [from ]
!761 = metadata !{i32 786451, null, metadata !"", metadata !762, i32 29, i64 1024, i64 32, i32 0, i32 0, null, metadata !763, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 1024, align 32, offset 0] [from ]
!762 = metadata !{i32 786473, metadata !"/usr/include/bits/sigset.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!763 = metadata !{metadata !764}
!764 = metadata !{i32 786445, metadata !761, metadata !"__val", metadata !762, i32 31, i64 1024, i64 32, i64 0, i32 0, metadata !765} ; [ DW_TAG_member ] [__val] [line 31, size 1024, align 32, offset 0] [from ]
!765 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !128, metadata !766, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from long unsigned int]
!766 = metadata !{metadata !767}
!767 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ] [0, 31]
!768 = metadata !{i32 786445, metadata !688, metadata !"sa_flags", metadata !689, i32 47, i64 32, i64 32, i64 1056, i32 0, metadata !108} ; [ DW_TAG_member ] [sa_flags] [line 47, size 32, align 32, offset 1056] [from int]
!769 = metadata !{i32 786445, metadata !688, metadata !"sa_restorer", metadata !689, i32 50, i64 32, i64 32, i64 1088, i32 0, metadata !770} ; [ DW_TAG_member ] [sa_restorer] [line 50, size 32, align 32, offset 1088] [from ]
!770 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !771} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!772 = metadata !{null}
!773 = metadata !{i32 786688, metadata !687, metadata !"itv", metadata !35, i32 386, metadata !774, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itv] [line 386]
!774 = metadata !{i32 786451, null, metadata !"itimerval", metadata !4, i32 109, i64 128, i64 32, i32 0, i32 0, null, metadata !775, i32 0, i32 0} ; [ DW_TAG_structure_type ] [itimerval] [line 109, size 128, align 32, offset 0] [from ]
!775 = metadata !{metadata !776, metadata !783}
!776 = metadata !{i32 786445, metadata !774, metadata !"it_interval", metadata !4, i32 112, i64 64, i64 32, i64 0, i32 0, metadata !777} ; [ DW_TAG_member ] [it_interval] [line 112, size 64, align 32, offset 0] [from timeval]
!777 = metadata !{i32 786451, null, metadata !"timeval", metadata !778, i32 75, i64 64, i64 32, i32 0, i32 0, null, metadata !779, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timeval] [line 75, size 64, align 32, offset 0] [from ]
!778 = metadata !{i32 786473, metadata !"/usr/include/bits/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!779 = metadata !{metadata !780, metadata !781}
!780 = metadata !{i32 786445, metadata !777, metadata !"tv_sec", metadata !778, i32 77, i64 32, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_member ] [tv_sec] [line 77, size 32, align 32, offset 0] [from __time_t]
!781 = metadata !{i32 786445, metadata !777, metadata !"tv_usec", metadata !778, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !782} ; [ DW_TAG_member ] [tv_usec] [line 78, size 32, align 32, offset 32] [from __suseconds_t]
!782 = metadata !{i32 786454, null, metadata !"__suseconds_t", metadata !778, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [__suseconds_t] [line 151, size 0, align 0, offset 0] [from long int]
!783 = metadata !{i32 786445, metadata !774, metadata !"it_value", metadata !4, i32 114, i64 64, i64 32, i64 64, i32 0, metadata !777} ; [ DW_TAG_member ] [it_value] [line 114, size 64, align 32, offset 64] [from timeval]
!784 = metadata !{i32 786688, metadata !785, metadata !"rlmt", metadata !35, i32 405, metadata !786, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlmt] [line 405]
!785 = metadata !{i32 786443, metadata !644, i32 404, i32 0, metadata !35, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!786 = metadata !{i32 786451, null, metadata !"rlimit", metadata !10, i32 135, i64 128, i64 32, i32 0, i32 0, null, metadata !787, i32 0, i32 0} ; [ DW_TAG_structure_type ] [rlimit] [line 135, size 128, align 32, offset 0] [from ]
!787 = metadata !{metadata !788, metadata !791}
!788 = metadata !{i32 786445, metadata !786, metadata !"rlim_cur", metadata !10, i32 138, i64 64, i64 32, i64 0, i32 0, metadata !789} ; [ DW_TAG_member ] [rlim_cur] [line 138, size 64, align 32, offset 0] [from rlim_t]
!789 = metadata !{i32 786454, null, metadata !"rlim_t", metadata !10, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !790} ; [ DW_TAG_typedef ] [rlim_t] [line 129, size 0, align 0, offset 0] [from __rlim64_t]
!790 = metadata !{i32 786454, null, metadata !"__rlim64_t", metadata !10, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__rlim64_t] [line 147, size 0, align 0, offset 0] [from __u_quad_t]
!791 = metadata !{i32 786445, metadata !786, metadata !"rlim_max", metadata !10, i32 140, i64 64, i64 32, i64 64, i32 0, metadata !789} ; [ DW_TAG_member ] [rlim_max] [line 140, size 64, align 32, offset 64] [from rlim_t]
!792 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_timer_signal_handler", metadata !"ngx_timer_signal_handler", metadata !"", metadata !35, i32 316, metadata !697, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @ngx_timer_signal_handler, null, null, metadata !793, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [ngx_timer_signal_handler]
!793 = metadata !{metadata !794}
!794 = metadata !{metadata !795}
!795 = metadata !{i32 786689, metadata !792, metadata !"signo", metadata !35, i32 16777532, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signo] [line 316]
!796 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_module_init", metadata !"ngx_event_module_init", metadata !"", metadata !35, i32 236, metadata !566, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_event_module_init, null, null, metadata !797, i32 237} ; [ DW_TAG_subprogram ] [line 236] [local] [def] [scope 237] [ngx_event_module_init]
!797 = metadata !{metadata !798}
!798 = metadata !{metadata !799, metadata !800, metadata !802, metadata !803, metadata !804, metadata !805, metadata !815, metadata !825, metadata !826, metadata !827, metadata !829}
!799 = metadata !{i32 786689, metadata !796, metadata !"cycle", metadata !35, i32 16777452, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 236]
!800 = metadata !{i32 786688, metadata !801, metadata !"cf", metadata !35, i32 238, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 238]
!801 = metadata !{i32 786443, metadata !796, i32 237, i32 0, metadata !35, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!802 = metadata !{i32 786688, metadata !801, metadata !"shared", metadata !35, i32 239, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shared] [line 239]
!803 = metadata !{i32 786688, metadata !801, metadata !"size", metadata !35, i32 240, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 240]
!804 = metadata !{i32 786688, metadata !801, metadata !"cl", metadata !35, i32 241, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 241]
!805 = metadata !{i32 786688, metadata !801, metadata !"shm", metadata !35, i32 242, metadata !806, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm] [line 242]
!806 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !35, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !807} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!807 = metadata !{i32 786451, null, metadata !"", metadata !808, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!808 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!809 = metadata !{metadata !810, metadata !811, metadata !812, metadata !813, metadata !814}
!810 = metadata !{i32 786445, metadata !807, metadata !"addr", metadata !808, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!811 = metadata !{i32 786445, metadata !807, metadata !"size", metadata !808, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!812 = metadata !{i32 786445, metadata !807, metadata !"name", metadata !808, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !110} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!813 = metadata !{i32 786445, metadata !807, metadata !"log", metadata !808, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!814 = metadata !{i32 786445, metadata !807, metadata !"exists", metadata !808, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !71} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!815 = metadata !{i32 786688, metadata !801, metadata !"tp", metadata !35, i32 243, metadata !816, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 243]
!816 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !817} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_time_t]
!817 = metadata !{i32 786454, null, metadata !"ngx_time_t", metadata !35, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !818} ; [ DW_TAG_typedef ] [ngx_time_t] [line 20, size 0, align 0, offset 0] [from ]
!818 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 16, i64 96, i64 32, i32 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 96, align 32, offset 0] [from ]
!819 = metadata !{i32 786473, metadata !"src/core/ngx_times.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!820 = metadata !{metadata !821, metadata !823, metadata !824}
!821 = metadata !{i32 786445, metadata !818, metadata !"sec", metadata !819, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !822} ; [ DW_TAG_member ] [sec] [line 17, size 32, align 32, offset 0] [from time_t]
!822 = metadata !{i32 786454, null, metadata !"time_t", metadata !819, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!823 = metadata !{i32 786445, metadata !818, metadata !"msec", metadata !819, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [msec] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!824 = metadata !{i32 786445, metadata !818, metadata !"gmtoff", metadata !819, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !460} ; [ DW_TAG_member ] [gmtoff] [line 19, size 32, align 32, offset 64] [from ngx_int_t]
!825 = metadata !{i32 786688, metadata !801, metadata !"ccf", metadata !35, i32 244, metadata !653, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 244]
!826 = metadata !{i32 786688, metadata !801, metadata !"ecf", metadata !35, i32 245, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 245]
!827 = metadata !{i32 786688, metadata !828, metadata !"limit", metadata !35, i32 256, metadata !460, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 256]
!828 = metadata !{i32 786443, metadata !801, i32 255, i32 0, metadata !35, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!829 = metadata !{i32 786688, metadata !828, metadata !"rlmt", metadata !35, i32 257, metadata !786, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlmt] [line 257]
!830 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_debug_connection", metadata !"ngx_event_debug_connection", metadata !"", metadata !35, i32 643, metadata !529, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_debug_connection, null, null, metadata !831, i32 644} ; [ DW_TAG_subprogram ] [line 643] [local] [def] [scope 644] [ngx_event_debug_connection]
!831 = metadata !{metadata !832}
!832 = metadata !{metadata !833, metadata !834, metadata !835}
!833 = metadata !{i32 786689, metadata !830, metadata !"cf", metadata !35, i32 16777859, metadata !531, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 643]
!834 = metadata !{i32 786689, metadata !830, metadata !"cmd", metadata !35, i32 33555075, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 643]
!835 = metadata !{i32 786689, metadata !830, metadata !"conf", metadata !35, i32 50332291, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 643]
!836 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_use", metadata !"ngx_event_use", metadata !"", metadata !35, i32 604, metadata !529, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_use, null, null, metadata !837, i32 605} ; [ DW_TAG_subprogram ] [line 604] [local] [def] [scope 605] [ngx_event_use]
!837 = metadata !{metadata !838}
!838 = metadata !{metadata !839, metadata !840, metadata !841, metadata !842, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !853}
!839 = metadata !{i32 786689, metadata !836, metadata !"cf", metadata !35, i32 16777820, metadata !531, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 604]
!840 = metadata !{i32 786689, metadata !836, metadata !"cmd", metadata !35, i32 33555036, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 604]
!841 = metadata !{i32 786689, metadata !836, metadata !"conf", metadata !35, i32 50332252, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 604]
!842 = metadata !{i32 786688, metadata !843, metadata !"ecf", metadata !35, i32 606, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 606]
!843 = metadata !{i32 786443, metadata !836, i32 605, i32 0, metadata !35, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!844 = metadata !{i32 786688, metadata !843, metadata !"m", metadata !35, i32 607, metadata !460, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 607]
!845 = metadata !{i32 786688, metadata !843, metadata !"value", metadata !35, i32 608, metadata !588, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 608]
!846 = metadata !{i32 786688, metadata !843, metadata !"old_ecf", metadata !35, i32 609, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_ecf] [line 609]
!847 = metadata !{i32 786688, metadata !843, metadata !"module", metadata !35, i32 610, metadata !583, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [module] [line 610]
!848 = metadata !{i32 786688, metadata !849, metadata !"__s1_len", metadata !35, i32 628, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 628]
!849 = metadata !{i32 786443, metadata !850, i32 628, i32 0, metadata !35, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!850 = metadata !{i32 786443, metadata !851, i32 627, i32 0, metadata !35, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!851 = metadata !{i32 786443, metadata !852, i32 622, i32 0, metadata !35, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!852 = metadata !{i32 786443, metadata !843, i32 622, i32 0, metadata !35, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!853 = metadata !{i32 786688, metadata !849, metadata !"__s2_len", metadata !35, i32 628, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 628]
!854 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_connections", metadata !"ngx_event_connections", metadata !"", metadata !35, i32 584, metadata !529, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_event_connections, null, null, metadata !855, i32 585} ; [ DW_TAG_subprogram ] [line 584] [local] [def] [scope 585] [ngx_event_connections]
!855 = metadata !{metadata !856}
!856 = metadata !{metadata !857, metadata !858, metadata !859, metadata !860, metadata !862, metadata !863, metadata !865, metadata !866, metadata !870}
!857 = metadata !{i32 786689, metadata !854, metadata !"cf", metadata !35, i32 16777800, metadata !531, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 584]
!858 = metadata !{i32 786689, metadata !854, metadata !"cmd", metadata !35, i32 33555016, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 584]
!859 = metadata !{i32 786689, metadata !854, metadata !"conf", metadata !35, i32 50332232, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 584]
!860 = metadata !{i32 786688, metadata !861, metadata !"ecf", metadata !35, i32 586, metadata !494, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecf] [line 586]
!861 = metadata !{i32 786443, metadata !854, i32 585, i32 0, metadata !35, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!862 = metadata !{i32 786688, metadata !861, metadata !"value", metadata !35, i32 587, metadata !588, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 587]
!863 = metadata !{i32 786688, metadata !864, metadata !"__s1_len", metadata !35, i32 591, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 591]
!864 = metadata !{i32 786443, metadata !861, i32 591, i32 0, metadata !35, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!865 = metadata !{i32 786688, metadata !864, metadata !"__s2_len", metadata !35, i32 591, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 591]
!866 = metadata !{i32 786688, metadata !867, metadata !"__s1", metadata !35, i32 591, metadata !868, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 591]
!867 = metadata !{i32 786443, metadata !864, i32 591, i32 0, metadata !35, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!868 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !869} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!869 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!870 = metadata !{i32 786688, metadata !867, metadata !"__result", metadata !35, i32 591, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 591]
!871 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_events_block", metadata !"ngx_events_block", metadata !"", metadata !35, i32 525, metadata !529, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_events_block, null, null, metadata !872, i32 526} ; [ DW_TAG_subprogram ] [line 525] [local] [def] [scope 526] [ngx_events_block]
!872 = metadata !{metadata !873}
!873 = metadata !{metadata !874, metadata !875, metadata !876, metadata !877, metadata !879, metadata !880, metadata !881, metadata !882}
!874 = metadata !{i32 786689, metadata !871, metadata !"cf", metadata !35, i32 16777741, metadata !531, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 525]
!875 = metadata !{i32 786689, metadata !871, metadata !"cmd", metadata !35, i32 33554957, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 525]
!876 = metadata !{i32 786689, metadata !871, metadata !"conf", metadata !35, i32 50332173, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 525]
!877 = metadata !{i32 786688, metadata !878, metadata !"rv", metadata !35, i32 527, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 527]
!878 = metadata !{i32 786443, metadata !871, i32 526, i32 0, metadata !35, i32 132} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!879 = metadata !{i32 786688, metadata !878, metadata !"ctx", metadata !35, i32 528, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 528]
!880 = metadata !{i32 786688, metadata !878, metadata !"i", metadata !35, i32 529, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 529]
!881 = metadata !{i32 786688, metadata !878, metadata !"pcf", metadata !35, i32 530, metadata !532, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pcf] [line 530]
!882 = metadata !{i32 786688, metadata !878, metadata !"m", metadata !35, i32 531, metadata !583, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 531]
!883 = metadata !{i32 786478, i32 0, metadata !35, metadata !"ngx_event_init_conf", metadata !"ngx_event_init_conf", metadata !"", metadata !35, i32 226, metadata !486, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_event_init_conf, null, null, metadata !884, i32 227} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [scope 227] [ngx_event_init_conf]
!884 = metadata !{metadata !885}
!885 = metadata !{metadata !886, metadata !887}
!886 = metadata !{i32 786689, metadata !883, metadata !"cycle", metadata !35, i32 16777442, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 226]
!887 = metadata !{i32 786689, metadata !883, metadata !"conf", metadata !35, i32 33554658, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 226]
!888 = metadata !{metadata !889}
!889 = metadata !{metadata !890, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !901, metadata !902, metadata !903, metadata !904, metadata !923, metadata !924, metadata !925, metadata !926, metadata !927, metadata !928, metadata !929, metadata !933, metadata !934, metadata !938, metadata !939, metadata !946}
!890 = metadata !{i32 786484, i32 0, null, metadata !"ngx_connection_counter", metadata !"ngx_connection_counter", metadata !"", metadata !35, i32 30, metadata !891, i32 0, i32 1, i32** @ngx_connection_counter} ; [ DW_TAG_variable ] [ngx_connection_counter] [line 30] [def]
!891 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !892} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!892 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !35, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !893} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!893 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!894 = metadata !{i32 786484, i32 0, null, metadata !"ngx_events_module", metadata !"ngx_events_module", metadata !"", metadata !35, i32 43, metadata !509, i32 0, i32 1, %struct.ngx_module_s* @ngx_events_module} ; [ DW_TAG_variable ] [ngx_events_module] [line 43] [def]
!895 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_core_module_ctx", metadata !"ngx_event_core_module_ctx", metadata !"", metadata !35, i32 56, metadata !584, i32 0, i32 1, %struct.ngx_event_module_t* @ngx_event_core_module_ctx} ; [ DW_TAG_variable ] [ngx_event_core_module_ctx] [line 56] [def]
!896 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_core_module", metadata !"ngx_event_core_module", metadata !"", metadata !35, i32 60, metadata !509, i32 0, i32 1, %struct.ngx_module_s* @ngx_event_core_module} ; [ DW_TAG_variable ] [ngx_event_core_module] [line 60] [def]
!897 = metadata !{i32 786484, i32 0, null, metadata !"ngx_timer_resolution", metadata !"ngx_timer_resolution", metadata !"", metadata !35, i32 24, metadata !71, i32 1, i32 1, i32* @ngx_timer_resolution} ; [ DW_TAG_variable ] [ngx_timer_resolution] [line 24] [local] [def]
!898 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_timer_alarm", metadata !"ngx_event_timer_alarm", metadata !"", metadata !35, i32 25, metadata !899, i32 0, i32 1, i32* @ngx_event_timer_alarm} ; [ DW_TAG_variable ] [ngx_event_timer_alarm] [line 25] [def]
!899 = metadata !{i32 786454, null, metadata !"sig_atomic_t", metadata !35, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !900} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 41, size 0, align 0, offset 0] [from __sig_atomic_t]
!900 = metadata !{i32 786454, null, metadata !"__sig_atomic_t", metadata !35, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 24, size 0, align 0, offset 0] [from int]
!901 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_flags", metadata !"ngx_event_flags", metadata !"", metadata !35, i32 27, metadata !71, i32 0, i32 1, i32* @ngx_event_flags} ; [ DW_TAG_variable ] [ngx_event_flags] [line 27] [def]
!902 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_actions", metadata !"ngx_event_actions", metadata !"", metadata !35, i32 28, metadata !596, i32 0, i32 1, %struct.ngx_event_actions_t* @ngx_event_actions} ; [ DW_TAG_variable ] [ngx_event_actions] [line 28] [def]
!903 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_mutex_ptr", metadata !"ngx_accept_mutex_ptr", metadata !"", metadata !35, i32 31, metadata !891, i32 0, i32 1, i32** @ngx_accept_mutex_ptr} ; [ DW_TAG_variable ] [ngx_accept_mutex_ptr] [line 31] [def]
!904 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_mutex", metadata !"ngx_accept_mutex", metadata !"", metadata !35, i32 32, metadata !905, i32 0, i32 1, %struct.ngx_shmtx_t* @ngx_accept_mutex} ; [ DW_TAG_variable ] [ngx_accept_mutex] [line 32] [def]
!905 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !35, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !906} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!906 = metadata !{i32 786451, null, metadata !"", metadata !907, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !908, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!907 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!908 = metadata !{metadata !909, metadata !910, metadata !911, metadata !912, metadata !922}
!909 = metadata !{i32 786445, metadata !906, metadata !"lock", metadata !907, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !891} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!910 = metadata !{i32 786445, metadata !906, metadata !"wait", metadata !907, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !891} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!911 = metadata !{i32 786445, metadata !906, metadata !"semaphore", metadata !907, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!912 = metadata !{i32 786445, metadata !906, metadata !"sem", metadata !907, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !913} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!913 = metadata !{i32 786454, null, metadata !"sem_t", metadata !907, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!914 = metadata !{i32 786455, null, metadata !"", metadata !915, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !916, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!915 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!916 = metadata !{metadata !917, metadata !921}
!917 = metadata !{i32 786445, metadata !914, metadata !"__size", metadata !915, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !918} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!918 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !187, metadata !919, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!919 = metadata !{metadata !920}
!920 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!921 = metadata !{i32 786445, metadata !914, metadata !"__align", metadata !915, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!922 = metadata !{i32 786445, metadata !906, metadata !"spin", metadata !907, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !71} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!923 = metadata !{i32 786484, i32 0, null, metadata !"ngx_use_accept_mutex", metadata !"ngx_use_accept_mutex", metadata !"", metadata !35, i32 33, metadata !71, i32 0, i32 1, i32* @ngx_use_accept_mutex} ; [ DW_TAG_variable ] [ngx_use_accept_mutex] [line 33] [def]
!924 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_events", metadata !"ngx_accept_events", metadata !"", metadata !35, i32 34, metadata !71, i32 0, i32 1, i32* @ngx_accept_events} ; [ DW_TAG_variable ] [ngx_accept_events] [line 34] [def]
!925 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_mutex_held", metadata !"ngx_accept_mutex_held", metadata !"", metadata !35, i32 35, metadata !71, i32 0, i32 1, i32* @ngx_accept_mutex_held} ; [ DW_TAG_variable ] [ngx_accept_mutex_held] [line 35] [def]
!926 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_mutex_delay", metadata !"ngx_accept_mutex_delay", metadata !"", metadata !35, i32 36, metadata !355, i32 0, i32 1, i32* @ngx_accept_mutex_delay} ; [ DW_TAG_variable ] [ngx_accept_mutex_delay] [line 36] [def]
!927 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_disabled", metadata !"ngx_accept_disabled", metadata !"", metadata !35, i32 37, metadata !460, i32 0, i32 1, i32* @ngx_accept_disabled} ; [ DW_TAG_variable ] [ngx_accept_disabled] [line 37] [def]
!928 = metadata !{i32 786484, i32 0, null, metadata !"ngx_accept_mutex_lock_file", metadata !"ngx_accept_mutex_lock_file", metadata !"", metadata !35, i32 38, metadata !102, i32 0, i32 1, %struct.ngx_file_s* @ngx_accept_mutex_lock_file} ; [ DW_TAG_variable ] [ngx_accept_mutex_lock_file] [line 38] [def]
!929 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_core_commands", metadata !"ngx_event_core_commands", metadata !"", metadata !35, i32 55, metadata !930, i32 1, i32 1, [8 x %struct.ngx_command_s]* @ngx_event_core_commands} ; [ DW_TAG_variable ] [ngx_event_core_commands] [line 55] [local] [def]
!930 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1792, i64 32, i32 0, i32 0, metadata !522, metadata !931, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1792, align 32, offset 0] [from ngx_command_t]
!931 = metadata !{metadata !932}
!932 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 7]
!933 = metadata !{i32 786484, i32 0, null, metadata !"event_core_name", metadata !"event_core_name", metadata !"", metadata !35, i32 54, metadata !110, i32 1, i32 1, %struct.ngx_str_t* @event_core_name} ; [ DW_TAG_variable ] [event_core_name] [line 54] [local] [def]
!934 = metadata !{i32 786484, i32 0, null, metadata !"ngx_events_commands", metadata !"ngx_events_commands", metadata !"", metadata !35, i32 41, metadata !935, i32 1, i32 1, [2 x %struct.ngx_command_s]* @ngx_events_commands} ; [ DW_TAG_variable ] [ngx_events_commands] [line 41] [local] [def]
!935 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !522, metadata !936, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ngx_command_t]
!936 = metadata !{metadata !937}
!937 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 1]
!938 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_max_module", metadata !"ngx_event_max_module", metadata !"", metadata !35, i32 26, metadata !71, i32 1, i32 1, i32* @ngx_event_max_module} ; [ DW_TAG_variable ] [ngx_event_max_module] [line 26] [local] [def]
!939 = metadata !{i32 786484, i32 0, null, metadata !"ngx_events_module_ctx", metadata !"ngx_events_module_ctx", metadata !"", metadata !35, i32 42, metadata !940, i32 1, i32 1, %struct.ngx_core_module_t* @ngx_events_module_ctx} ; [ DW_TAG_variable ] [ngx_events_module_ctx] [line 42] [local] [def]
!940 = metadata !{i32 786454, null, metadata !"ngx_core_module_t", metadata !35, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !941} ; [ DW_TAG_typedef ] [ngx_core_module_t] [line 152, size 0, align 0, offset 0] [from ]
!941 = metadata !{i32 786451, null, metadata !"", metadata !40, i32 148, i64 128, i64 32, i32 0, i32 0, null, metadata !942, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 148, size 128, align 32, offset 0] [from ]
!942 = metadata !{metadata !943, metadata !944, metadata !945}
!943 = metadata !{i32 786445, metadata !941, metadata !"name", metadata !40, i32 149, i64 64, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [name] [line 149, size 64, align 32, offset 0] [from ngx_str_t]
!944 = metadata !{i32 786445, metadata !941, metadata !"create_conf", metadata !40, i32 150, i64 32, i64 32, i64 64, i32 0, metadata !590} ; [ DW_TAG_member ] [create_conf] [line 150, size 32, align 32, offset 64] [from ]
!945 = metadata !{i32 786445, metadata !941, metadata !"init_conf", metadata !40, i32 151, i64 32, i64 32, i64 96, i32 0, metadata !594} ; [ DW_TAG_member ] [init_conf] [line 151, size 32, align 32, offset 96] [from ]
!946 = metadata !{i32 786484, i32 0, null, metadata !"connection_counter", metadata !"connection_counter", metadata !"", metadata !35, i32 29, metadata !892, i32 1, i32 1, i32* @connection_counter} ; [ DW_TAG_variable ] [connection_counter] [line 29] [local] [def]
!947 = metadata !{i32 659, i32 0, metadata !633, null}
!948 = metadata !{i32 662, i32 0, metadata !638, null}
!949 = metadata !{metadata !"any pointer", metadata !950}
!950 = metadata !{metadata !"omnipotent char", metadata !951}
!951 = metadata !{metadata !"Simple C/C++ TBAA"}
!952 = metadata !{i32 663, i32 0, metadata !638, null}
!953 = metadata !{i32 666, i32 0, metadata !638, null}
!954 = metadata !{metadata !"int", metadata !950}
!955 = metadata !{i32 667, i32 0, metadata !638, null}
!956 = metadata !{i32 668, i32 0, metadata !638, null}
!957 = metadata !{i32 669, i32 0, metadata !638, null}
!958 = metadata !{i32 670, i32 0, metadata !638, null}
!959 = metadata !{i32 671, i32 0, metadata !638, null}
!960 = metadata !{i32 674, i32 0, metadata !638, null}
!961 = metadata !{i32 675, i32 0, metadata !638, null}
!962 = metadata !{i32 677, i32 0, metadata !485, null}
!963 = metadata !{%struct.ngx_module_s* null}
!964 = metadata !{i32 688, i32 0, metadata !493, null}
!965 = metadata !{i32 690, i32 0, metadata !493, null}
!966 = metadata !{i32 691, i32 0, metadata !493, null}
!967 = metadata !{i32 692, i32 0, metadata !968, null}
!968 = metadata !{i32 786443, metadata !493, i32 691, i32 0, metadata !35, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!969 = metadata !{%struct.ngx_module_s* @ngx_epoll_module}
!970 = metadata !{i32 693, i32 0, metadata !968, null}
!971 = metadata !{i32 720, i32 0, metadata !493, null}
!972 = metadata !{i32 695, i32 0, metadata !493, null}
!973 = metadata !{i32 707, i32 0, metadata !493, null}
!974 = metadata !{i32 708, i32 0, metadata !630, null}
!975 = metadata !{i32 709, i32 0, metadata !629, null}
!976 = metadata !{i32 712, i32 0, metadata !629, null}
!977 = metadata !{i32 713, i32 0, metadata !628, null}
!978 = metadata !{i32 721, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !493, i32 720, i32 0, metadata !35, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!980 = metadata !{i32 722, i32 0, metadata !979, null}
!981 = metadata !{i32 725, i32 0, metadata !493, null}
!982 = metadata !{i32 729, i32 0, metadata !493, null}
!983 = metadata !{i32 726, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !493, i32 725, i32 0, metadata !35, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!985 = metadata !{i32 727, i32 0, metadata !984, null}
!986 = metadata !{i32 730, i32 0, metadata !493, null}
!987 = metadata !{i32 731, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !493, i32 730, i32 0, metadata !35, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!989 = metadata !{i32 732, i32 0, metadata !988, null}
!990 = metadata !{i32 735, i32 0, metadata !493, null}
!991 = metadata !{i32 734, i32 0, metadata !493, null}
!992 = metadata !{i32 736, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !493, i32 735, i32 0, metadata !35, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!994 = metadata !{i32 737, i32 0, metadata !993, null}
!995 = metadata !{i32 739, i32 0, metadata !493, null}
!996 = metadata !{i32 740, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !493, i32 739, i32 0, metadata !35, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!998 = metadata !{i32 741, i32 0, metadata !997, null}
!999 = metadata !{i32 743, i32 0, metadata !493, null}
!1000 = metadata !{i32 744, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !493, i32 743, i32 0, metadata !35, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1002 = metadata !{i32 745, i32 0, metadata !1001, null}
!1003 = metadata !{i32 747, i32 0, metadata !493, null}
!1004 = metadata !{i32 748, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !493, i32 747, i32 0, metadata !35, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1006 = metadata !{i32 749, i32 0, metadata !1005, null}
!1007 = metadata !{i32 755, i32 0, metadata !493, null}
!1008 = metadata !{i32 236, i32 0, metadata !796, null}
!1009 = metadata !{i32 242, i32 0, metadata !801, null}
!1010 = metadata !{i32 246, i32 0, metadata !801, null}
!1011 = metadata !{i32 247, i32 0, metadata !801, null}
!1012 = metadata !{i32 248, i32 0, metadata !801, null}
!1013 = metadata !{i32 249, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !801, i32 248, i32 0, metadata !35, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1015 = metadata !{i32 250, i32 0, metadata !1014, null}
!1016 = metadata !{i32 252, i32 0, metadata !801, null}
!1017 = metadata !{i32 253, i32 0, metadata !801, null}
!1018 = metadata !{i32 257, i32 0, metadata !828, null}
!1019 = metadata !{i32 258, i32 0, metadata !828, null}
!1020 = metadata !{i32 259, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !828, i32 258, i32 0, metadata !35, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1022 = metadata !{i32 260, i32 0, metadata !1021, null}
!1023 = metadata !{i32 263, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !828, i32 262, i32 0, metadata !35, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1025 = metadata !{metadata !"long long", metadata !950}
!1026 = metadata !{i32 264, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1024, i32 263, i32 0, metadata !35, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1028 = metadata !{i32 265, i32 0, metadata !1027, null}
!1029 = metadata !{i32 266, i32 0, metadata !1027, null}
!1030 = metadata !{i32 271, i32 0, metadata !801, null}
!1031 = metadata !{i32 274, i32 0, metadata !801, null}
!1032 = metadata !{i32 128}
!1033 = metadata !{i32 278, i32 0, metadata !801, null}
!1034 = metadata !{i32 384}
!1035 = metadata !{i32 280, i32 0, metadata !801, null}
!1036 = metadata !{i32 291, i32 0, metadata !801, null}
!1037 = metadata !{i32 292, i32 0, metadata !801, null}
!1038 = metadata !{i32 293, i32 0, metadata !801, null}
!1039 = metadata !{i32 294, i32 0, metadata !801, null}
!1040 = metadata !{i32 295, i32 0, metadata !801, null}
!1041 = metadata !{i32 298, i32 0, metadata !801, null}
!1042 = metadata !{i32 299, i32 0, metadata !801, null}
!1043 = metadata !{i32 300, i32 0, metadata !801, null}
!1044 = metadata !{i32 301, i32 0, metadata !801, null}
!1045 = metadata !{i32 304, i32 0, metadata !801, null}
!1046 = metadata !{i32 305, i32 0, metadata !801, null}
!1047 = metadata !{i32 307, i32 0, metadata !801, null}
!1048 = metadata !{i32 308, i32 0, metadata !801, null}
!1049 = metadata !{i32 309, i32 0, metadata !801, null}
!1050 = metadata !{metadata !"long", metadata !950}
!1051 = metadata !{i32 312, i32 0, metadata !801, null}
!1052 = metadata !{i32 313, i32 0, metadata !801, null}
!1053 = metadata !{i32 325, i32 0, metadata !639, null}
!1054 = metadata !{i32 338, i32 0, metadata !644, null}
!1055 = metadata !{i32 339, i32 0, metadata !644, null}
!1056 = metadata !{i32 341, i32 0, metadata !644, null}
!1057 = metadata !{i32 342, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !644, i32 341, i32 0, metadata !35, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1059 = metadata !{i32 343, i32 0, metadata !1058, null}
!1060 = metadata !{i32 344, i32 0, metadata !1058, null}
!1061 = metadata !{i32 345, i32 0, metadata !1058, null}
!1062 = metadata !{i32 347, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !644, i32 346, i32 0, metadata !35, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1064 = metadata !{i32 351, i32 0, metadata !644, null}
!1065 = metadata !{i32 354, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !644, i32 354, i32 0, metadata !35, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1067 = metadata !{i32 358, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1066, i32 354, i32 0, metadata !35, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1069 = metadata !{i32 355, i32 0, metadata !1068, null}
!1070 = metadata !{i32 361, i32 0, metadata !1068, null}
!1071 = metadata !{i32 362, i32 0, metadata !1068, null}
!1072 = metadata !{i32 364, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1068, i32 362, i32 0, metadata !35, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1074 = metadata !{i32 369, i32 0, metadata !644, null}
!1075 = metadata !{i32 385, i32 0, metadata !687, null}
!1076 = metadata !{i32 386, i32 0, metadata !687, null}
!1077 = metadata !{i32 387, i32 0, metadata !687, null}
!1078 = metadata !{i32 388, i32 0, metadata !687, null}
!1079 = metadata !{i32 389, i32 0, metadata !687, null}
!1080 = metadata !{i32 390, i32 0, metadata !687, null}
!1081 = metadata !{i32 391, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !687, i32 390, i32 0, metadata !35, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1083 = metadata !{i32 392, i32 0, metadata !1082, null}
!1084 = metadata !{i32 395, i32 0, metadata !687, null}
!1085 = metadata !{i32 396, i32 0, metadata !687, null}
!1086 = metadata !{i32 397, i32 0, metadata !687, null}
!1087 = metadata !{i32 398, i32 0, metadata !687, null}
!1088 = metadata !{i32 399, i32 0, metadata !687, null}
!1089 = metadata !{i32 400, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !687, i32 399, i32 0, metadata !35, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1091 = metadata !{i32 401, i32 0, metadata !1090, null}
!1092 = metadata !{i32 404, i32 0, metadata !644, null}
!1093 = metadata !{i32 405, i32 0, metadata !785, null}
!1094 = metadata !{i32 406, i32 0, metadata !785, null}
!1095 = metadata !{i32 407, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !785, i32 406, i32 0, metadata !35, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1097 = metadata !{i32 408, i32 0, metadata !1096, null}
!1098 = metadata !{i32 411, i32 0, metadata !785, null}
!1099 = metadata !{i32 412, i32 0, metadata !785, null}
!1100 = metadata !{i32 413, i32 0, metadata !785, null}
!1101 = metadata !{i32 418, i32 0, metadata !644, null}
!1102 = metadata !{i32 419, i32 0, metadata !644, null}
!1103 = metadata !{i32 422, i32 0, metadata !644, null}
!1104 = metadata !{i32 423, i32 0, metadata !644, null}
!1105 = metadata !{i32 424, i32 0, metadata !644, null}
!1106 = metadata !{i32 428, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !644, i32 428, i32 0, metadata !35, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1108 = metadata !{i32 429, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1107, i32 428, i32 0, metadata !35, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1110 = metadata !{i32 430, i32 0, metadata !1109, null}
!1111 = metadata !{i32 434, i32 0, metadata !644, null}
!1112 = metadata !{i32 435, i32 0, metadata !644, null}
!1113 = metadata !{i32 439, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !644, i32 439, i32 0, metadata !35, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1115 = metadata !{i32 440, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1114, i32 439, i32 0, metadata !35, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1117 = metadata !{i32 447, i32 0, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !644, i32 446, i32 0, metadata !35, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1119 = metadata !{i32 448, i32 0, metadata !1118, null}
!1120 = metadata !{i32 449, i32 0, metadata !1118, null}
!1121 = metadata !{i32 450, i32 0, metadata !1118, null}
!1122 = metadata !{i32 451, i32 0, metadata !1118, null}
!1123 = metadata !{i32 452, i32 0, metadata !1118, null}
!1124 = metadata !{i32 455, i32 0, metadata !1118, null}
!1125 = metadata !{i32 456, i32 0, metadata !644, null}
!1126 = metadata !{i32 457, i32 0, metadata !644, null}
!1127 = metadata !{i32 459, i32 0, metadata !644, null}
!1128 = metadata !{i32 460, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !644, i32 460, i32 0, metadata !35, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1130 = metadata !{i32 461, i32 0, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !1129, i32 460, i32 0, metadata !35, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1132 = metadata !{i32 462, i32 0, metadata !1131, null}
!1133 = metadata !{i32 465, i32 0, metadata !1131, null}
!1134 = metadata !{i32 466, i32 0, metadata !1131, null}
!1135 = metadata !{i32 467, i32 0, metadata !1131, null}
!1136 = metadata !{i32 468, i32 0, metadata !1131, null}
!1137 = metadata !{i32 469, i32 0, metadata !1131, null}
!1138 = metadata !{i32 470, i32 0, metadata !1131, null}
!1139 = metadata !{i32 472, i32 0, metadata !1131, null}
!1140 = metadata !{i32 474, i32 0, metadata !1131, null}
!1141 = metadata !{i32 475, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1131, i32 474, i32 0, metadata !35, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1143 = metadata !{i32 480, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1142, i32 475, i32 0, metadata !35, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1145 = metadata !{i32 481, i32 0, metadata !1144, null}
!1146 = metadata !{i32 484, i32 0, metadata !1144, null}
!1147 = metadata !{i32 485, i32 0, metadata !1144, null}
!1148 = metadata !{i32 489, i32 0, metadata !1131, null}
!1149 = metadata !{i32 490, i32 0, metadata !1131, null}
!1150 = metadata !{i32 493, i32 0, metadata !1131, null}
!1151 = metadata !{i32 494, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1131, i32 493, i32 0, metadata !35, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1153 = metadata !{i32 499, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1131, i32 498, i32 0, metadata !35, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1155 = metadata !{i32 506, i32 0, metadata !644, null}
!1156 = metadata !{i32 72, i32 0, metadata !34, null}
!1157 = metadata !{i32 77, i32 0, metadata !454, null}
!1158 = metadata !{i32 78, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !454, i32 77, i32 0, metadata !35, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1160 = metadata !{i32 -1}                        ; [ DW_TAG_hi_user ]
!1161 = metadata !{i32 79, i32 0, metadata !1159, null}
!1162 = metadata !{i32 80, i32 0, metadata !1159, null}
!1163 = metadata !{i32 82, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !454, i32 81, i32 0, metadata !35, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1165 = metadata !{i32 1}
!1166 = metadata !{i32 83, i32 0, metadata !1164, null}
!1167 = metadata !{i32 87, i32 0, metadata !454, null}
!1168 = metadata !{i32 88, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !454, i32 87, i32 0, metadata !35, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1170 = metadata !{i32 89, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1169, i32 88, i32 0, metadata !35, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1172 = metadata !{i32 90, i32 0, metadata !1171, null}
!1173 = metadata !{i32 92, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1169, i32 91, i32 0, metadata !35, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1175 = metadata !{i32 95, i32 0, metadata !1174, null}
!1176 = metadata !{i32 96, i32 0, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !1174, i32 95, i32 0, metadata !35, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1178 = metadata !{i32 97, i32 0, metadata !1177, null}
!1179 = metadata !{i32 99, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1174, i32 98, i32 0, metadata !35, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1181 = metadata !{i32 105, i32 0, metadata !454, null}
!1182 = metadata !{i32 106, i32 0, metadata !454, null}
!1183 = metadata !{i32 107, i32 0, metadata !454, null}
!1184 = metadata !{i32 109, i32 0, metadata !454, null}
!1185 = metadata !{i32 110, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !454, i32 109, i32 0, metadata !35, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1187 = metadata !{i32 111, i32 0, metadata !1186, null}
!1188 = metadata !{i32 112, i32 0, metadata !454, null}
!1189 = metadata !{i32 113, i32 0, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !454, i32 112, i32 0, metadata !35, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1191 = metadata !{i32 114, i32 0, metadata !1190, null}
!1192 = metadata !{i32 115, i32 0, metadata !454, null}
!1193 = metadata !{i32 116, i32 0, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !454, i32 115, i32 0, metadata !35, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1195 = metadata !{i32 117, i32 0, metadata !1194, null}
!1196 = metadata !{i32 119, i32 0, metadata !454, null}
!1197 = metadata !{i32 120, i32 0, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !454, i32 119, i32 0, metadata !35, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1199 = metadata !{i32 121, i32 0, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !1198, i32 120, i32 0, metadata !35, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1201 = metadata !{i32 122, i32 0, metadata !1200, null}
!1202 = metadata !{i32 124, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1198, i32 123, i32 0, metadata !35, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1204 = metadata !{i32 127, i32 0, metadata !454, null}
!1205 = metadata !{i32 129, i32 0, metadata !457, null}
!1206 = metadata !{i32 131, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !457, i32 130, i32 0, metadata !35, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1208 = metadata !{i32 133, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !1207, i32 131, i32 0, metadata !35, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1210 = metadata !{i32 134, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1209, i32 133, i32 0, metadata !35, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1212 = metadata !{i32 138, i32 0, metadata !1209, null}
!1213 = metadata !{i32 140, i32 0, metadata !1207, null}
!1214 = metadata !{i32 142, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1207, i32 140, i32 0, metadata !35, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1216 = metadata !{i32 143, i32 0, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !1215, i32 142, i32 0, metadata !35, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1218 = metadata !{i32 148, i32 0, metadata !1215, null}
!1219 = metadata !{i32 149, i32 0, metadata !1220, null}
!1220 = metadata !{i32 786443, metadata !1215, i32 148, i32 0, metadata !35, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1221 = metadata !{i32 155, i32 0, metadata !1207, null}
!1222 = metadata !{i32 157, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1207, i32 155, i32 0, metadata !35, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1224 = metadata !{i32 158, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1223, i32 157, i32 0, metadata !35, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1226 = metadata !{i32 163, i32 0, metadata !1223, null}
!1227 = metadata !{i32 164, i32 0, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !1223, i32 163, i32 0, metadata !35, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1229 = metadata !{i32 172, i32 0, metadata !1207, null}
!1230 = metadata !{i32 174, i32 0, metadata !467, null}
!1231 = metadata !{i32 177, i32 0, metadata !475, null}
!1232 = metadata !{i32 178, i32 0, metadata !1233, null}
!1233 = metadata !{i32 786443, metadata !475, i32 177, i32 0, metadata !35, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1234 = metadata !{i32 179, i32 0, metadata !1233, null}
!1235 = metadata !{i32 183, i32 0, metadata !475, null}
!1236 = metadata !{i32 185, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !475, i32 183, i32 0, metadata !35, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1238 = metadata !{i32 186, i32 0, metadata !1239, null}
!1239 = metadata !{i32 786443, metadata !1237, i32 185, i32 0, metadata !35, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1240 = metadata !{i32 190, i32 0, metadata !1237, null}
!1241 = metadata !{i32 192, i32 0, metadata !475, null}
!1242 = metadata !{i32 194, i32 0, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !475, i32 192, i32 0, metadata !35, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1244 = metadata !{i32 195, i32 0, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !1243, i32 194, i32 0, metadata !35, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1246 = metadata !{i32 201, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1243, i32 200, i32 0, metadata !35, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1248 = metadata !{i32 207, i32 0, metadata !475, null}
!1249 = metadata !{i32 209, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !475, i32 207, i32 0, metadata !35, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1251 = metadata !{i32 210, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1250, i32 209, i32 0, metadata !35, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1253 = metadata !{i32 215, i32 0, metadata !1250, null}
!1254 = metadata !{i32 216, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1250, i32 215, i32 0, metadata !35, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1256 = metadata !{i32 224, i32 0, metadata !475, null}
!1257 = metadata !{i32 508, i32 0, metadata !476, null}
!1258 = metadata !{i32 510, i32 0, metadata !484, null}
!1259 = metadata !{i32 513, i32 0, metadata !484, null}
!1260 = metadata !{i32 516, i32 0, metadata !484, null}
!1261 = metadata !{i32 517, i32 0, metadata !484, null}
!1262 = metadata !{i32 518, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !484, i32 517, i32 0, metadata !35, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1264 = metadata !{i32 519, i32 0, metadata !1263, null}
!1265 = metadata !{i32 521, i32 0, metadata !484, null}
!1266 = metadata !{i32 522, i32 0, metadata !484, null}
!1267 = metadata !{i32 523, i32 0, metadata !484, null}
!1268 = metadata !{i32 316, i32 0, metadata !792, null}
!1269 = metadata !{i32 318, i32 0, metadata !1270, null}
!1270 = metadata !{i32 786443, metadata !792, i32 317, i32 0, metadata !35, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1271 = metadata !{i32 322, i32 0, metadata !1270, null}
!1272 = metadata !{i32 584, i32 0, metadata !854, null}
!1273 = metadata !{i32 588, i32 0, metadata !861, null}
!1274 = metadata !{i32 591, i32 0, metadata !864, null}
!1275 = metadata !{i32 591, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1277, i32 591, i32 0, metadata !35, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1277 = metadata !{i32 786443, metadata !867, i32 591, i32 0, metadata !35, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1278 = metadata !{i32 592, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !861, i32 591, i32 0, metadata !35, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1280 = metadata !{i32 593, i32 0, metadata !1279, null}
!1281 = metadata !{i32 594, i32 0, metadata !861, null}
!1282 = metadata !{i32 595, i32 0, metadata !861, null}
!1283 = metadata !{i32 596, i32 0, metadata !861, null}
!1284 = metadata !{i32 597, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !861, i32 596, i32 0, metadata !35, i32 131} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1286 = metadata !{i32 598, i32 0, metadata !1285, null}
!1287 = metadata !{i32 600, i32 0, metadata !861, null}
!1288 = metadata !{i32 601, i32 0, metadata !861, null}
!1289 = metadata !{i32 602, i32 0, metadata !861, null}
!1290 = metadata !{i32 604, i32 0, metadata !836, null}
!1291 = metadata !{i32 611, i32 0, metadata !843, null}
!1292 = metadata !{i32 614, i32 0, metadata !843, null}
!1293 = metadata !{i32 615, i32 0, metadata !843, null}
!1294 = metadata !{i32 616, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !843, i32 615, i32 0, metadata !35, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1296 = metadata !{i32 618, i32 0, metadata !1295, null}
!1297 = metadata !{i32 622, i32 0, metadata !852, null}
!1298 = metadata !{i32 639, i32 0, metadata !843, null}
!1299 = metadata !{i32 627, i32 0, metadata !851, null}
!1300 = metadata !{i32 628, i32 0, metadata !849, null}
!1301 = metadata !{i32 623, i32 0, metadata !851, null}
!1302 = metadata !{i32 626, i32 0, metadata !851, null}
!1303 = metadata !{i32 629, i32 0, metadata !1304, null}
!1304 = metadata !{i32 786443, metadata !850, i32 628, i32 0, metadata !35, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1305 = metadata !{i32 630, i32 0, metadata !1304, null}
!1306 = metadata !{i32 631, i32 0, metadata !1304, null}
!1307 = metadata !{i32 632, i32 0, metadata !1308, null}
!1308 = metadata !{i32 786443, metadata !1304, i32 631, i32 0, metadata !35, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1309 = metadata !{i32 633, i32 0, metadata !1308, null}
!1310 = metadata !{i32 640, i32 0, metadata !843, null}
!1311 = metadata !{i32 641, i32 0, metadata !843, null}
!1312 = metadata !{i32 643, i32 0, metadata !830, null}
!1313 = metadata !{i32 654, i32 0, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !830, i32 644, i32 0, metadata !35, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1315 = metadata !{i32 656, i32 0, metadata !1314, null}
!1316 = metadata !{i32 525, i32 0, metadata !871, null}
!1317 = metadata !{i32 530, i32 0, metadata !878, null}
!1318 = metadata !{i32 533, i32 0, metadata !878, null}
!1319 = metadata !{i32 534, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !878, i32 534, i32 0, metadata !35, i32 133} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1321 = metadata !{i32 535, i32 0, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1320, i32 534, i32 0, metadata !35, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1323 = metadata !{i32 538, i32 0, metadata !1322, null}
!1324 = metadata !{i32 539, i32 0, metadata !1322, null}
!1325 = metadata !{i32 540, i32 0, metadata !878, null}
!1326 = metadata !{i32 541, i32 0, metadata !878, null}
!1327 = metadata !{i32 544, i32 0, metadata !878, null}
!1328 = metadata !{i32 545, i32 0, metadata !878, null}
!1329 = metadata !{i32 548, i32 0, metadata !878, null}
!1330 = metadata !{i32 549, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !878, i32 549, i32 0, metadata !35, i32 138} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1332 = metadata !{i32 555, i32 0, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1334, i32 554, i32 0, metadata !35, i32 141} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1334 = metadata !{i32 786443, metadata !1331, i32 549, i32 0, metadata !35, i32 139} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1335 = metadata !{i32 550, i32 0, metadata !1334, null}
!1336 = metadata !{i32 553, i32 0, metadata !1334, null}
!1337 = metadata !{i32 554, i32 0, metadata !1334, null}
!1338 = metadata !{i32 556, i32 0, metadata !1333, null}
!1339 = metadata !{i32 561, i32 0, metadata !878, null}
!1340 = metadata !{i64 0, i64 4, metadata !949, i64 4, i64 4, metadata !949, i64 8, i64 4, metadata !949, i64 12, i64 4, metadata !949, i64 16, i64 4, metadata !949, i64 20, i64 4, metadata !949, i64 24, i64 4, metadata !949, i64 28, i64 4, metadata !949, i64 32, i64 4, metadata !954, i64 36, i64 4, metadata !954, i64 40, i64 4, metadata !949, i64 44, i64 4, metadata !949}
!1341 = metadata !{i32 562, i32 0, metadata !878, null}
!1342 = metadata !{i32 563, i32 0, metadata !878, null}
!1343 = metadata !{i32 564, i32 0, metadata !878, null}
!1344 = metadata !{i32 565, i32 0, metadata !878, null}
!1345 = metadata !{i32 566, i32 0, metadata !878, null}
!1346 = metadata !{i32 567, i32 0, metadata !878, null}
!1347 = metadata !{i32 575, i32 0, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !1349, i32 574, i32 0, metadata !35, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1349 = metadata !{i32 786443, metadata !1350, i32 569, i32 0, metadata !35, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1350 = metadata !{i32 786443, metadata !878, i32 569, i32 0, metadata !35, i32 143} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1351 = metadata !{i32 569, i32 0, metadata !1350, null}
!1352 = metadata !{i32 570, i32 0, metadata !1349, null}
!1353 = metadata !{i32 573, i32 0, metadata !1349, null}
!1354 = metadata !{i32 574, i32 0, metadata !1349, null}
!1355 = metadata !{i32 576, i32 0, metadata !1348, null}
!1356 = metadata !{i32 582, i32 0, metadata !878, null}
!1357 = metadata !{i32 226, i32 0, metadata !883, null}
!1358 = metadata !{i32 228, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !883, i32 227, i32 0, metadata !35, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1360 = metadata !{i32 229, i32 0, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !1359, i32 228, i32 0, metadata !35, i32 149} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event.c]
!1362 = metadata !{i32 230, i32 0, metadata !1361, null}
!1363 = metadata !{i32 234, i32 0, metadata !1359, null}
