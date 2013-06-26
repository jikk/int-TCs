; ModuleID = 'src/core/nginx.c'
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
%struct.ngx_event_s = type opaque
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
%struct.ngx_conf_enum_t = type { %struct.ngx_str_t, i32 }
%struct.ngx_exec_ctx_t = type { i8*, i8*, i8**, i8** }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }

@ngx_core_module_ctx = internal global %struct.ngx_core_module_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str55, i32 0, i32 0) }, i8* (%struct.ngx_cycle_s*)* @ngx_core_module_create_conf, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_core_module_init_conf }, align 4
@ngx_core_commands = internal global [16 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0) }, i32 16843264, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str33, i32 0, i32 0) }, i32 16843264, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 0, i32 4, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str34, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 0, i32 8, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 0, i32 76, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str36, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 0, i32 68, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str37, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 12, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str38, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_enum_slot, i32 0, i32 16, i8* bitcast ([3 x %struct.ngx_conf_enum_t]* @ngx_debug_points to i8*) }, %struct.ngx_command_s { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0) }, i32 16842758, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_user, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str40, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_priority, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str41, i32 0, i32 0) }, i32 16844800, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_cpu_affinity, i32 0, i32 0, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 20, i8* getelementptr inbounds ([21 x i8]* @.str42, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 20, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str43, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_off_slot, i32 0, i32 28, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 24, i8* getelementptr inbounds ([25 x i8]* @.str44, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 24, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str45, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 0, i32 60, i8* null }, %struct.ngx_command_s { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str46, i32 0, i32 0) }, i32 16842754, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_env, i32 0, i32 0, i8* null }, %struct.ngx_command_s zeroinitializer], align 4
@ngx_core_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_core_module_t* @ngx_core_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([16 x %struct.ngx_command_s]* @ngx_core_commands, i32 0, i32 0), i32 1163022147, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@ngx_show_version.b = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [28 x i8] c"nginx version: nginx/1.2.3\0A\00", align 1
@ngx_show_help.b = internal unnamed_addr global i1 false
@.str1 = private unnamed_addr constant [635 x i8] c"Usage: nginx [-?hvVtq] [-s signal] [-c filename] [-p prefix] [-g directives]\0A\0AOptions:\0A  -?,-h         : this help\0A  -v            : show version and exit\0A  -V            : show version and configure options then exit\0A  -t            : test configuration and exit\0A  -q            : suppress non-error messages during configuration testing\0A  -s signal     : send signal to a master process: stop, quit, reopen, reload\0A  -p prefix     : set prefix path (default: /opt/stonesoup/TH-workspace/install/)\0A  -c filename   : set configuration file (default: conf/nginx.conf)\0A  -g directives : set global directives out of configuration file\0A\0A\00", align 1
@ngx_show_configure.b = internal unnamed_addr global i1 false
@.str2 = private unnamed_addr constant [269 x i8] c"configure arguments: --prefix=/opt/stonesoup/TH-workspace/install --with-cc-opt='-DNGX_HAVE_ACCEPT4=0 -I/opt/stonesoup/dependencies/include -I/opt/stonesoup/dependencies/include' --with-ld-opt='-L/opt/stonesoup/dependencies/lib -L/opt/stonesoup/dependencies/lib -ldl'\0A\00", align 1
@ngx_test_config = external global i32
@ngx_max_sockets = external global i32
@ngx_pid = external global i32
@ngx_prefix = internal unnamed_addr global i8* null, align 4
@ngx_cycle = external global %struct.ngx_cycle_s*
@ngx_max_module = common global i32 0, align 4
@ngx_modules = external global [0 x %struct.ngx_module_s*]
@.str3 = private unnamed_addr constant [34 x i8] c"configuration file %s test failed\00", align 1
@ngx_quiet_mode = external global i32
@.str4 = private unnamed_addr constant [41 x i8] c"configuration file %s test is successful\00", align 1
@ngx_signal = internal unnamed_addr global i8* null, align 4
@ngx_process = external global i32
@ngx_inherited = external global i32
@ngx_daemonized = external global i32
@.str5 = private unnamed_addr constant [27 x i8] c"dup2(STDERR_FILENO) failed\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"close() built-in log failed\00", align 1
@ngx_use_stderr = external global i32
@.str7 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"TZ=\00", align 1
@ngx_os_environ = internal unnamed_addr global i8** null, align 4
@environ = external global i8**
@.str9 = private unnamed_addr constant [19 x i8] c"new binary process\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"NGINX=\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%ud;\00", align 1
@.str12 = private unnamed_addr constant [301 x i8] c"SPARE=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\00", align 1
@.str13 = private unnamed_addr constant [66 x i8] c"rename() %s to %s failed before executing new binary process \22%s\22\00", align 1
@.str14 = private unnamed_addr constant [82 x i8] c"rename() %s back to %s failed after an attempt to execute new binary process \22%s\22\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"conf/\00", align 1
@.str16 = private unnamed_addr constant [37 x i8] c"/opt/stonesoup/TH-workspace/install/\00", align 1
@ngx_conf_file = internal unnamed_addr global i8* null, align 4
@.str17 = private unnamed_addr constant [16 x i8] c"conf/nginx.conf\00", align 1
@ngx_conf_params = internal unnamed_addr global i8* null, align 4
@ngx_os_argv = external global i8**
@ngx_argc = external global i32
@ngx_argv = external global i8**
@.str18 = private unnamed_addr constant [21 x i8] c"invalid option: \22%s\22\00", align 1
@.str19 = private unnamed_addr constant [36 x i8] c"option \22-p\22 requires directory name\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"option \22-c\22 requires file name\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"option \22-g\22 requires parameter\00", align 1
@.str22 = private unnamed_addr constant [31 x i8] c"option \22-s\22 requires parameter\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"invalid option: \22-s %s\22\00", align 1
@.str28 = private unnamed_addr constant [21 x i8] c"invalid option: \22%c\22\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"NGINX\00", align 1
@.str30 = private unnamed_addr constant [34 x i8] c"using inherited sockets from \22%s\22\00", align 1
@0 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str31 = private unnamed_addr constant [92 x i8] c"invalid socket number \22%s\22 in NGINX environment variable, ignoring the rest of the variable\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str33 = private unnamed_addr constant [15 x i8] c"master_process\00", align 1
@.str34 = private unnamed_addr constant [17 x i8] c"timer_resolution\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"lock_file\00", align 1
@.str37 = private unnamed_addr constant [17 x i8] c"worker_processes\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"debug_points\00", align 1
@ngx_debug_points = internal global [3 x %struct.ngx_conf_enum_t] [%struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0) }, i32 1 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0) }, i32 2 }, %struct.ngx_conf_enum_t zeroinitializer], align 4
@.str39 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"worker_priority\00", align 1
@.str41 = private unnamed_addr constant [20 x i8] c"worker_cpu_affinity\00", align 1
@.str42 = private unnamed_addr constant [21 x i8] c"worker_rlimit_nofile\00", align 1
@.str43 = private unnamed_addr constant [19 x i8] c"worker_rlimit_core\00", align 1
@.str44 = private unnamed_addr constant [25 x i8] c"worker_rlimit_sigpending\00", align 1
@.str45 = private unnamed_addr constant [18 x i8] c"working_directory\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str47 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@1 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str48 = private unnamed_addr constant [50 x i8] c"\22worker_cpu_affinity\22 supports up to 64 CPUs only\00", align 1
@.str49 = private unnamed_addr constant [48 x i8] c"invalid character \22%c\22 in \22worker_cpu_affinity\22\00", align 1
@2 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@3 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str50 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@4 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str51 = private unnamed_addr constant [101 x i8] c"the \22user\22 directive makes sense only if the master process runs with super-user privileges, ignored\00", align 1
@.str52 = private unnamed_addr constant [22 x i8] c"getpwnam(\22%s\22) failed\00", align 1
@.str53 = private unnamed_addr constant [22 x i8] c"getgrnam(\22%s\22) failed\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@5 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@.str56 = private unnamed_addr constant [139 x i8] c"the number of \22worker_processes\22 is not equal to the number of \22worker_cpu_affinity\22 masks, using last mask for remaining worker processes\00", align 1
@.str57 = private unnamed_addr constant [15 x i8] c"logs/nginx.pid\00", align 1
@.str59 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str60 = private unnamed_addr constant [26 x i8] c"getpwnam(\22nobody\22) failed\00", align 1
@.str61 = private unnamed_addr constant [26 x i8] c"getgrnam(\22nobody\22) failed\00", align 1
@.str62 = private unnamed_addr constant [16 x i8] c"logs/nginx.lock\00", align 1
@6 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str63 = private unnamed_addr constant [42 x i8] c"\22lock_file\22 could not be changed, ignored\00", align 1
@7 = internal unnamed_addr constant [3 x i8] c"+=\00"
@8 = internal unnamed_addr constant [2 x i8] c"+\00"
@9 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@10 = internal unnamed_addr constant [4 x i8] c"int\00"
@11 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@12 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@13 = internal unnamed_addr constant [17 x i8] c"src/core/nginx.c\00"

define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:
  %init_cycle = alloca %struct.ngx_cycle_s, align 4
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !16), !dbg !769
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !17), !dbg !769
  call void @llvm.dbg.declare(metadata !{%struct.ngx_cycle_s* %init_cycle}, metadata !385), !dbg !770
  %call = call i32 @ngx_strerror_init() nounwind, !dbg !771
  %cmp = icmp eq i32 %call, 0, !dbg !771
  br i1 %cmp, label %if.end, label %return, !dbg !771

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !772) nounwind, !dbg !774
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !775) nounwind, !dbg !774
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !777) nounwind, !dbg !778
  %cmp441.i = icmp sgt i32 %argc, 1, !dbg !778
  br i1 %cmp441.i, label %for.body.lr.ph.i, label %if.end4, !dbg !778

for.body.lr.ph.i:                                 ; preds = %if.end
  %0 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str23 to i32)) nounwind, !dbg !779
  %1 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str24 to i32)) nounwind, !dbg !780
  %2 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 1) to i32), i32 ptrtoint ([7 x i8]* @.str25 to i32)) nounwind, !dbg !781
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 1) to i32), i32 ptrtoint ([7 x i8]* @.str26 to i32)) nounwind, !dbg !782
  br label %for.body.i, !dbg !778

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %i.0442.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %42, %for.cond.backedge.i ]
  %arrayidx.i = getelementptr inbounds i8** %argv, i32 %i.0442.i, !dbg !783
  %4 = load i8** %arrayidx.i, align 4, !dbg !783, !tbaa !784
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !787) nounwind, !dbg !783
  %incdec.ptr.i = getelementptr inbounds i8* %4, i32 1, !dbg !788
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !787) nounwind, !dbg !788
  %5 = load i8* %4, align 1, !dbg !788, !tbaa !785
  %cmp1.i = icmp eq i8 %5, 45, !dbg !788
  br i1 %cmp1.i, label %while.cond.preheader.i, label %if.then.i, !dbg !788

while.cond.preheader.i:                           ; preds = %for.body.i
  %6 = load i8* %incdec.ptr.i, align 1, !dbg !789, !tbaa !785
  %tobool432.i = icmp eq i8 %6, 0, !dbg !789
  br i1 %tobool432.i, label %for.inc.i, label %while.body.i, !dbg !789

if.then.i:                                        ; preds = %for.body.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str18, i32 0, i32 0), i8* %4) nounwind, !dbg !790
  br label %return, !dbg !792

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.cond.backedge.i
  %7 = phi i8 [ %8, %while.cond.backedge.i ], [ %6, %while.cond.preheader.i ]
  %p.0433.i = phi i8* [ %incdec.ptr4.i, %while.cond.backedge.i ], [ %incdec.ptr.i, %while.cond.preheader.i ]
  %incdec.ptr4.i = getelementptr inbounds i8* %p.0433.i, i32 1, !dbg !793
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4.i}, i64 0, metadata !787) nounwind, !dbg !793
  %conv5.i = zext i8 %7 to i32, !dbg !793
  switch i32 %conv5.i, label %sw.default.i [
    i32 63, label %cont8.i
    i32 104, label %cont8.i
    i32 118, label %cont13.i
    i32 86, label %cont16.i
    i32 116, label %cont21.i
    i32 113, label %cont24.i
    i32 112, label %sw.bb25.i
    i32 99, label %sw.bb38.i
    i32 103, label %sw.bb51.i
    i32 115, label %sw.bb64.i
  ], !dbg !793

cont8.i:                                          ; preds = %while.body.i, %while.body.i
  store i1 true, i1* @ngx_show_version.b, align 1
  store i1 true, i1* @ngx_show_help.b, align 1
  br label %while.cond.backedge.i, !dbg !794

cont13.i:                                         ; preds = %while.body.i
  store i1 true, i1* @ngx_show_version.b, align 1
  br label %while.cond.backedge.i, !dbg !796

cont16.i:                                         ; preds = %while.body.i
  store i1 true, i1* @ngx_show_version.b, align 1
  store i1 true, i1* @ngx_show_configure.b, align 1
  br label %while.cond.backedge.i, !dbg !798

cont21.i:                                         ; preds = %while.body.i
  store i32 1, i32* @ngx_test_config, align 4, !dbg !800, !tbaa !802
  br label %while.cond.backedge.i, !dbg !803

cont24.i:                                         ; preds = %while.body.i
  store i32 1, i32* @ngx_quiet_mode, align 4, !dbg !804, !tbaa !802
  br label %while.cond.backedge.i, !dbg !806

while.cond.backedge.i:                            ; preds = %cont24.i, %cont21.i, %cont16.i, %cont13.i, %cont8.i
  %8 = load i8* %incdec.ptr4.i, align 1, !dbg !789, !tbaa !785
  %tobool.i = icmp eq i8 %8, 0, !dbg !789
  br i1 %tobool.i, label %for.inc.i, label %while.body.i, !dbg !789

sw.bb25.i:                                        ; preds = %while.body.i
  %9 = load i8* %incdec.ptr4.i, align 1, !dbg !807, !tbaa !785
  %tobool26.i = icmp eq i8 %9, 0, !dbg !807
  br i1 %tobool26.i, label %if.end28.i, label %if.then27.i, !dbg !807

if.then27.i:                                      ; preds = %sw.bb25.i
  store i8* %incdec.ptr4.i, i8** @ngx_prefix, align 4, !dbg !809, !tbaa !784
  br label %for.inc.i, !dbg !811

if.end28.i:                                       ; preds = %sw.bb25.i
  %10 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0442.i, i32 1) nounwind, !dbg !812
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !812
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !812
  br i1 %12, label %ioc_bb29.i, label %cont30.i, !dbg !812

ioc_bb29.i:                                       ; preds = %if.end28.i
  %13 = sext i32 %i.0442.i to i64, !dbg !812
  call void @__ioc_report_add_overflow(i32 401, i32 20, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %13, i64 1, i8 13) nounwind, !dbg !812
  br label %cont30.i, !dbg !812

cont30.i:                                         ; preds = %ioc_bb29.i, %if.end28.i
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !777) nounwind, !dbg !812
  %arrayidx31.i = getelementptr inbounds i8** %argv, i32 %11, !dbg !812
  %14 = load i8** %arrayidx31.i, align 4, !dbg !812, !tbaa !784
  %tobool32.i = icmp eq i8* %14, null, !dbg !812
  br i1 %tobool32.i, label %if.end35.i, label %if.then33.i, !dbg !812

if.then33.i:                                      ; preds = %cont30.i
  store i8* %14, i8** @ngx_prefix, align 4, !dbg !813, !tbaa !784
  br label %for.inc.i, !dbg !815

if.end35.i:                                       ; preds = %cont30.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str19, i32 0, i32 0)) nounwind, !dbg !816
  br label %return, !dbg !817

sw.bb38.i:                                        ; preds = %while.body.i
  %15 = load i8* %incdec.ptr4.i, align 1, !dbg !818, !tbaa !785
  %tobool39.i = icmp eq i8 %15, 0, !dbg !818
  br i1 %tobool39.i, label %if.end41.i, label %if.then40.i, !dbg !818

if.then40.i:                                      ; preds = %sw.bb38.i
  store i8* %incdec.ptr4.i, i8** @ngx_conf_file, align 4, !dbg !820, !tbaa !784
  br label %for.inc.i, !dbg !822

if.end41.i:                                       ; preds = %sw.bb38.i
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0442.i, i32 1) nounwind, !dbg !823
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !823
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !823
  br i1 %18, label %ioc_bb42.i, label %cont43.i, !dbg !823

ioc_bb42.i:                                       ; preds = %if.end41.i
  %19 = sext i32 %i.0442.i to i64, !dbg !823
  call void @__ioc_report_add_overflow(i32 414, i32 20, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %19, i64 1, i8 13) nounwind, !dbg !823
  br label %cont43.i, !dbg !823

cont43.i:                                         ; preds = %ioc_bb42.i, %if.end41.i
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !777) nounwind, !dbg !823
  %arrayidx44.i = getelementptr inbounds i8** %argv, i32 %17, !dbg !823
  %20 = load i8** %arrayidx44.i, align 4, !dbg !823, !tbaa !784
  %tobool45.i = icmp eq i8* %20, null, !dbg !823
  br i1 %tobool45.i, label %if.end48.i, label %if.then46.i, !dbg !823

if.then46.i:                                      ; preds = %cont43.i
  store i8* %20, i8** @ngx_conf_file, align 4, !dbg !824, !tbaa !784
  br label %for.inc.i, !dbg !826

if.end48.i:                                       ; preds = %cont43.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str20, i32 0, i32 0)) nounwind, !dbg !827
  br label %return, !dbg !828

sw.bb51.i:                                        ; preds = %while.body.i
  %21 = load i8* %incdec.ptr4.i, align 1, !dbg !829, !tbaa !785
  %tobool52.i = icmp eq i8 %21, 0, !dbg !829
  br i1 %tobool52.i, label %if.end54.i, label %if.then53.i, !dbg !829

if.then53.i:                                      ; preds = %sw.bb51.i
  store i8* %incdec.ptr4.i, i8** @ngx_conf_params, align 4, !dbg !831, !tbaa !784
  br label %for.inc.i, !dbg !833

if.end54.i:                                       ; preds = %sw.bb51.i
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0442.i, i32 1) nounwind, !dbg !834
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !834
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !834
  br i1 %24, label %ioc_bb55.i, label %cont56.i, !dbg !834

ioc_bb55.i:                                       ; preds = %if.end54.i
  %25 = sext i32 %i.0442.i to i64, !dbg !834
  call void @__ioc_report_add_overflow(i32 427, i32 20, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %25, i64 1, i8 13) nounwind, !dbg !834
  br label %cont56.i, !dbg !834

cont56.i:                                         ; preds = %ioc_bb55.i, %if.end54.i
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !777) nounwind, !dbg !834
  %arrayidx57.i = getelementptr inbounds i8** %argv, i32 %23, !dbg !834
  %26 = load i8** %arrayidx57.i, align 4, !dbg !834, !tbaa !784
  %tobool58.i = icmp eq i8* %26, null, !dbg !834
  br i1 %tobool58.i, label %if.end61.i, label %if.then59.i, !dbg !834

if.then59.i:                                      ; preds = %cont56.i
  store i8* %26, i8** @ngx_conf_params, align 4, !dbg !835, !tbaa !784
  br label %for.inc.i, !dbg !837

if.end61.i:                                       ; preds = %cont56.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str21, i32 0, i32 0)) nounwind, !dbg !838
  br label %return, !dbg !839

sw.bb64.i:                                        ; preds = %while.body.i
  %27 = load i8* %incdec.ptr4.i, align 1, !dbg !840, !tbaa !785
  %tobool65.i = icmp eq i8 %27, 0, !dbg !840
  br i1 %tobool65.i, label %if.else.i, label %if.end77.i, !dbg !840

if.else.i:                                        ; preds = %sw.bb64.i
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0442.i, i32 1) nounwind, !dbg !841
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !841
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !841
  br i1 %30, label %ioc_bb67.i, label %cont68.i, !dbg !841

ioc_bb67.i:                                       ; preds = %if.else.i
  %31 = sext i32 %i.0442.i to i64, !dbg !841
  call void @__ioc_report_add_overflow(i32 439, i32 25, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %31, i64 1, i8 13) nounwind, !dbg !841
  br label %cont68.i, !dbg !841

cont68.i:                                         ; preds = %ioc_bb67.i, %if.else.i
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !777) nounwind, !dbg !841
  %arrayidx69.i = getelementptr inbounds i8** %argv, i32 %29, !dbg !841
  %32 = load i8** %arrayidx69.i, align 4, !dbg !841, !tbaa !784
  %tobool70.i = icmp eq i8* %32, null, !dbg !841
  br i1 %tobool70.i, label %if.else73.i, label %if.end77.i, !dbg !841

if.else73.i:                                      ; preds = %cont68.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str22, i32 0, i32 0)) nounwind, !dbg !842
  br label %return, !dbg !844

if.end77.i:                                       ; preds = %cont68.i, %sw.bb64.i
  %storemerge.i = phi i8* [ %incdec.ptr4.i, %sw.bb64.i ], [ %32, %cont68.i ]
  %i.1.i = phi i32 [ %i.0442.i, %sw.bb64.i ], [ %29, %cont68.i ]
  store i8* %storemerge.i, i8** @ngx_signal, align 4, !dbg !845
  %33 = extractvalue { i32, i1 } %0, 1, !dbg !779
  br i1 %33, label %ioc_bb78.i, label %cont81.i, !dbg !779

ioc_bb78.i:                                       ; preds = %if.end77.i
  call void @__ioc_report_sub_overflow(i32 446, i32 15, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str23 to i32) to i64), i8 5) nounwind, !dbg !779
  %.pre.i = load i8** @ngx_signal, align 4, !dbg !847, !tbaa !784
  br label %cont81.i, !dbg !779

cont81.i:                                         ; preds = %ioc_bb78.i, %if.end77.i
  %34 = phi i8* [ %.pre.i, %ioc_bb78.i ], [ %storemerge.i, %if.end77.i ]
  %call.i = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0)) nounwind, !dbg !847
  %cmp135.i = icmp eq i32 %call.i, 0, !dbg !847
  br i1 %cmp135.i, label %cont348.i, label %lor.lhs.false.i, !dbg !847

lor.lhs.false.i:                                  ; preds = %cont81.i
  %35 = extractvalue { i32, i1 } %1, 1, !dbg !780
  br i1 %35, label %ioc_bb139.i, label %cont142.i, !dbg !780

ioc_bb139.i:                                      ; preds = %lor.lhs.false.i
  call void @__ioc_report_sub_overflow(i32 446, i32 67, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str24 to i32) to i64), i8 5) nounwind, !dbg !780
  %.pre461.i = load i8** @ngx_signal, align 4, !dbg !850, !tbaa !784
  br label %cont142.i, !dbg !780

cont142.i:                                        ; preds = %ioc_bb139.i, %lor.lhs.false.i
  %36 = phi i8* [ %.pre461.i, %ioc_bb139.i ], [ %34, %lor.lhs.false.i ]
  %call201.i = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0)) nounwind, !dbg !850
  %cmp204.i = icmp eq i32 %call201.i, 0, !dbg !850
  br i1 %cmp204.i, label %cont348.i, label %lor.lhs.false206.i, !dbg !850

lor.lhs.false206.i:                               ; preds = %cont142.i
  %37 = extractvalue { i32, i1 } %2, 1, !dbg !781
  br i1 %37, label %ioc_bb209.i, label %cont212.i, !dbg !781

ioc_bb209.i:                                      ; preds = %lor.lhs.false206.i
  call void @__ioc_report_sub_overflow(i32 446, i32 119, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([7 x i8]* @.str25 to i32) to i64), i8 5) nounwind, !dbg !781
  %.pre462.i = load i8** @ngx_signal, align 4, !dbg !853, !tbaa !784
  br label %cont212.i, !dbg !781

cont212.i:                                        ; preds = %ioc_bb209.i, %lor.lhs.false206.i
  %38 = phi i8* [ %.pre462.i, %ioc_bb209.i ], [ %36, %lor.lhs.false206.i ]
  %call271.i = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0)) nounwind, !dbg !853
  %cmp274.i = icmp eq i32 %call271.i, 0, !dbg !853
  br i1 %cmp274.i, label %cont348.i, label %lor.lhs.false276.i, !dbg !853

lor.lhs.false276.i:                               ; preds = %cont212.i
  %39 = extractvalue { i32, i1 } %3, 1, !dbg !782
  br i1 %39, label %ioc_bb279.i, label %cont282.i, !dbg !782

ioc_bb279.i:                                      ; preds = %lor.lhs.false276.i
  call void @__ioc_report_sub_overflow(i32 446, i32 173, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([7 x i8]* @.str26 to i32) to i64), i8 5) nounwind, !dbg !782
  %.pre463.i = load i8** @ngx_signal, align 4, !dbg !856, !tbaa !784
  br label %cont282.i, !dbg !782

cont282.i:                                        ; preds = %ioc_bb279.i, %lor.lhs.false276.i
  %40 = phi i8* [ %.pre463.i, %ioc_bb279.i ], [ %38, %lor.lhs.false276.i ]
  %call341.i = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0)) nounwind, !dbg !856
  %cmp344.i = icmp eq i32 %call341.i, 0, !dbg !856
  br i1 %cmp344.i, label %cont348.i, label %if.end349.i, !dbg !856

cont348.i:                                        ; preds = %cont282.i, %cont212.i, %cont142.i, %cont81.i
  store i32 2, i32* @ngx_process, align 4, !dbg !859, !tbaa !802
  br label %for.inc.i, !dbg !861

if.end349.i:                                      ; preds = %cont282.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str27, i32 0, i32 0), i8* %40) nounwind, !dbg !862
  br label %return, !dbg !863

sw.default.i:                                     ; preds = %while.body.i
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str28, i32 0, i32 0), i32 %conv5.i) nounwind, !dbg !864
  br label %return, !dbg !866

for.inc.i:                                        ; preds = %while.cond.backedge.i, %cont348.i, %if.then59.i, %if.then53.i, %if.then46.i, %if.then40.i, %if.then33.i, %if.then27.i, %while.cond.preheader.i
  %i.2.i = phi i32 [ %i.1.i, %cont348.i ], [ %i.0442.i, %if.then53.i ], [ %23, %if.then59.i ], [ %i.0442.i, %if.then40.i ], [ %17, %if.then46.i ], [ %i.0442.i, %if.then27.i ], [ %11, %if.then33.i ], [ %i.0442.i, %while.cond.preheader.i ], [ %i.0442.i, %while.cond.backedge.i ]
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.2.i, i32 1) nounwind, !dbg !778
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !778
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !778
  br i1 %43, label %ioc_bb355.i, label %for.cond.backedge.i, !dbg !778

for.cond.backedge.i:                              ; preds = %ioc_bb355.i, %for.inc.i
  %cmp.i = icmp slt i32 %42, %argc, !dbg !778
  br i1 %cmp.i, label %for.body.i, label %if.end4, !dbg !778

ioc_bb355.i:                                      ; preds = %for.inc.i
  %44 = sext i32 %i.2.i to i64, !dbg !778
  call void @__ioc_report_add_overflow(i32 357, i32 26, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %44, i64 1, i8 13) nounwind, !dbg !778
  br label %for.cond.backedge.i, !dbg !778

if.end4:                                          ; preds = %for.cond.backedge.i, %if.end
  %.b = load i1* @ngx_show_version.b, align 1
  br i1 %.b, label %if.then5, label %cont, !dbg !867

if.then5:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata !868, i64 0, metadata !869) nounwind, !dbg !872
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !874) nounwind, !dbg !877
  %call.i.i = call i32 @write(i32 2, i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0), i32 27) nounwind, !dbg !878
  %.b192 = load i1* @ngx_show_help.b, align 1
  br i1 %.b192, label %if.then7, label %if.end8, !dbg !880

if.then7:                                         ; preds = %if.then5
  call void @llvm.dbg.value(metadata !881, i64 0, metadata !882) nounwind, !dbg !885
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !886) nounwind, !dbg !888
  %call.i.i196 = call i32 @write(i32 2, i8* getelementptr inbounds ([635 x i8]* @.str1, i32 0, i32 0), i32 634) nounwind, !dbg !889
  br label %if.end8, !dbg !890

if.end8:                                          ; preds = %if.then7, %if.then5
  %.b193 = load i1* @ngx_show_configure.b, align 1
  br i1 %.b193, label %if.then10, label %if.end11, !dbg !891

if.then10:                                        ; preds = %if.end8
  call void @llvm.dbg.value(metadata !892, i64 0, metadata !893) nounwind, !dbg !896
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !897) nounwind, !dbg !899
  %call.i.i198 = call i32 @write(i32 2, i8* getelementptr inbounds ([269 x i8]* @.str2, i32 0, i32 0), i32 268) nounwind, !dbg !900
  br label %if.end11, !dbg !901

if.end11:                                         ; preds = %if.then10, %if.end8
  %45 = load i32* @ngx_test_config, align 4, !dbg !902, !tbaa !802
  %tobool12 = icmp eq i32 %45, 0, !dbg !902
  br i1 %tobool12, label %return, label %cont, !dbg !902

cont:                                             ; preds = %if.end4, %if.end11
  store i32 -1, i32* @ngx_max_sockets, align 4, !dbg !903, !tbaa !802
  call void @ngx_time_init() nounwind, !dbg !904
  call void @ngx_regex_init() nounwind, !dbg !905
  %call16 = call i32 @getpid() nounwind, !dbg !906
  store i32 %call16, i32* @ngx_pid, align 4, !dbg !906, !tbaa !802
  %46 = load i8** @ngx_prefix, align 4, !dbg !907, !tbaa !784
  %call17 = call %struct.ngx_log_s* @ngx_log_init(i8* %46) nounwind, !dbg !907
  call void @llvm.dbg.value(metadata !{%struct.ngx_log_s* %call17}, i64 0, metadata !24), !dbg !907
  %cmp18 = icmp eq %struct.ngx_log_s* %call17, null, !dbg !908
  br i1 %cmp18, label %return, label %if.end20, !dbg !908

if.end20:                                         ; preds = %cont
  %47 = bitcast %struct.ngx_cycle_s* %init_cycle to i8*, !dbg !909
  call void @llvm.memset.p0i8.i32(i8* %47, i8 0, i32 224, i32 4, i1 false), !dbg !909
  %log21 = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 2, !dbg !910
  store %struct.ngx_log_s* %call17, %struct.ngx_log_s** %log21, align 4, !dbg !910, !tbaa !784
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !385), !dbg !911
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !385), !dbg !911
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !385), !dbg !911
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !385), !dbg !911
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !385), !dbg !911
  store %struct.ngx_cycle_s* %init_cycle, %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !911, !tbaa !784
  %call24 = call %struct.ngx_pool_s* @ngx_create_pool(i32 1024, %struct.ngx_log_s* %call17) nounwind, !dbg !912
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 1, !dbg !912
  store %struct.ngx_pool_s* %call24, %struct.ngx_pool_s** %pool, align 4, !dbg !912, !tbaa !784
  %cmp26 = icmp eq %struct.ngx_pool_s* %call24, null, !dbg !913
  br i1 %cmp26, label %return, label %if.end28, !dbg !913

if.end28:                                         ; preds = %if.end20
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !914) nounwind, !dbg !916
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !917) nounwind, !dbg !916
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !918) nounwind, !dbg !916
  store i8** %argv, i8*** @ngx_os_argv, align 4, !dbg !919, !tbaa !784
  store i32 %argc, i32* @ngx_argc, align 4, !dbg !920, !tbaa !802
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %argc, i32 1) nounwind, !dbg !921
  %49 = extractvalue { i32, i1 } %48, 0, !dbg !921
  %50 = extractvalue { i32, i1 } %48, 1, !dbg !921
  br i1 %50, label %ioc_bb.i, label %cont.i, !dbg !921

ioc_bb.i:                                         ; preds = %if.end28
  %51 = sext i32 %argc to i64, !dbg !921
  call void @__ioc_report_add_overflow(i32 474, i32 31, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %51, i64 1, i8 13) nounwind, !dbg !921
  br label %cont.i, !dbg !921

cont.i:                                           ; preds = %ioc_bb.i, %if.end28
  %52 = icmp sgt i32 %49, -1, !dbg !921
  br i1 %52, label %cont2.i, label %ioc_bb1.i, !dbg !921

ioc_bb1.i:                                        ; preds = %cont.i
  %53 = sext i32 %49 to i64, !dbg !921
  call void @__ioc_report_conversion(i32 474, i32 25, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %53, i8 1) nounwind, !dbg !921
  br label %cont2.i, !dbg !921

cont2.i:                                          ; preds = %ioc_bb1.i, %cont.i
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 4) nounwind, !dbg !921
  %55 = extractvalue { i32, i1 } %54, 0, !dbg !921
  %56 = extractvalue { i32, i1 } %54, 1, !dbg !921
  br i1 %56, label %ioc_bb3.i, label %cont4.i, !dbg !921

ioc_bb3.i:                                        ; preds = %cont2.i
  %57 = zext i32 %49 to i64, !dbg !921
  call void @__ioc_report_mul_overflow(i32 474, i32 36, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %57, i64 4, i8 5) nounwind, !dbg !921
  br label %cont4.i, !dbg !921

cont4.i:                                          ; preds = %ioc_bb3.i, %cont2.i
  %58 = load %struct.ngx_log_s** %log21, align 4, !dbg !921, !tbaa !784
  %call.i199 = call i8* @ngx_alloc(i32 %55, %struct.ngx_log_s* %58) nounwind, !dbg !921
  %59 = bitcast i8* %call.i199 to i8**, !dbg !921
  store i8** %59, i8*** @ngx_argv, align 4, !dbg !921, !tbaa !784
  %cmp.i200 = icmp eq i8* %call.i199, null, !dbg !922
  br i1 %cmp.i200, label %return, label %for.cond.preheader.i, !dbg !922

for.cond.preheader.i:                             ; preds = %cont4.i
  %cmp741.i = icmp sgt i32 %argc, 0, !dbg !923
  br i1 %cmp741.i, label %for.body.i202, label %if.end32, !dbg !923

for.body.i202:                                    ; preds = %for.cond.preheader.i, %for.cond.backedge.i203
  %i.042.i = phi i32 [ %71, %for.cond.backedge.i203 ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i201 = getelementptr inbounds i8** %argv, i32 %i.042.i, !dbg !925
  %60 = load i8** %arrayidx.i201, align 4, !dbg !925, !tbaa !784
  %call8.i = call i32 @strlen(i8* %60) nounwind readonly, !dbg !925
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call8.i, i32 1) nounwind, !dbg !925
  %62 = extractvalue { i32, i1 } %61, 0, !dbg !925
  %63 = extractvalue { i32, i1 } %61, 1, !dbg !925
  br i1 %63, label %ioc_bb11.i, label %cont12.i, !dbg !925

ioc_bb11.i:                                       ; preds = %for.body.i202
  %64 = zext i32 %call8.i to i64, !dbg !925
  call void @__ioc_report_add_overflow(i32 479, i32 43, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %64, i64 1, i8 5) nounwind, !dbg !925
  br label %cont12.i, !dbg !925

cont12.i:                                         ; preds = %ioc_bb11.i, %for.body.i202
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !927) nounwind, !dbg !925
  %65 = load %struct.ngx_log_s** %log21, align 4, !dbg !928, !tbaa !784
  %call14.i = call i8* @ngx_alloc(i32 %62, %struct.ngx_log_s* %65) nounwind, !dbg !928
  %66 = load i8*** @ngx_argv, align 4, !dbg !928, !tbaa !784
  %arrayidx15.i = getelementptr inbounds i8** %66, i32 %i.042.i, !dbg !928
  store i8* %call14.i, i8** %arrayidx15.i, align 4, !dbg !928, !tbaa !784
  %67 = load i8*** @ngx_argv, align 4, !dbg !929, !tbaa !784
  %arrayidx16.i = getelementptr inbounds i8** %67, i32 %i.042.i, !dbg !929
  %68 = load i8** %arrayidx16.i, align 4, !dbg !929, !tbaa !784
  %cmp17.i = icmp eq i8* %68, null, !dbg !929
  br i1 %cmp17.i, label %return, label %if.end21.i, !dbg !929

if.end21.i:                                       ; preds = %cont12.i
  %69 = load i8** %arrayidx.i201, align 4, !dbg !930, !tbaa !784
  %call24.i = call i8* @ngx_cpystrn(i8* %68, i8* %69, i32 %62) nounwind, !dbg !930
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.042.i, i32 1) nounwind, !dbg !923
  %71 = extractvalue { i32, i1 } %70, 0, !dbg !923
  %72 = extractvalue { i32, i1 } %70, 1, !dbg !923
  br i1 %72, label %ioc_bb25.i, label %for.cond.backedge.i203, !dbg !923

for.cond.backedge.i203:                           ; preds = %ioc_bb25.i, %if.end21.i
  %cmp7.i = icmp slt i32 %71, %argc, !dbg !923
  br i1 %cmp7.i, label %for.body.i202, label %for.cond.for.end_crit_edge.i, !dbg !923

ioc_bb25.i:                                       ; preds = %if.end21.i
  %73 = sext i32 %i.042.i to i64, !dbg !923
  call void @__ioc_report_add_overflow(i32 478, i32 26, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %73, i64 1, i8 13) nounwind, !dbg !923
  br label %for.cond.backedge.i203, !dbg !923

for.cond.for.end_crit_edge.i:                     ; preds = %for.cond.backedge.i203
  %.pre.i204 = load i8*** @ngx_argv, align 4, !dbg !931, !tbaa !784
  br label %if.end32, !dbg !923

if.end32:                                         ; preds = %for.cond.for.end_crit_edge.i, %for.cond.preheader.i
  %74 = phi i8** [ %.pre.i204, %for.cond.for.end_crit_edge.i ], [ %59, %for.cond.preheader.i ]
  %i.0.lcssa.i = phi i32 [ %71, %for.cond.for.end_crit_edge.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx27.i = getelementptr inbounds i8** %74, i32 %i.0.lcssa.i, !dbg !931
  store i8* null, i8** %arrayidx27.i, align 4, !dbg !931, !tbaa !784
  %75 = load i8*** @environ, align 4, !dbg !932, !tbaa !784
  store i8** %75, i8*** @ngx_os_environ, align 4, !dbg !932, !tbaa !784
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !933) nounwind, !dbg !935
  %76 = load i8** @ngx_prefix, align 4, !dbg !936, !tbaa !784
  %tobool.i206 = icmp eq i8* %76, null, !dbg !936
  br i1 %tobool.i206, label %cont24.i213, label %if.then.i209, !dbg !936

if.then.i209:                                     ; preds = %if.end32
  %call.i207 = call i32 @strlen(i8* %76) nounwind readonly, !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %call.i207}, i64 0, metadata !939) nounwind, !dbg !937
  call void @llvm.dbg.value(metadata !{i8* %76}, i64 0, metadata !940) nounwind, !dbg !941
  %77 = load i8* %76, align 1, !dbg !942, !tbaa !785
  %cmp.i208 = icmp eq i8 %77, 47, !dbg !942
  br i1 %cmp.i208, label %if.end15.i, label %if.then2.i, !dbg !942

if.then2.i:                                       ; preds = %if.then.i209
  %78 = load %struct.ngx_pool_s** %pool, align 4, !dbg !943, !tbaa !784
  %79 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call.i207, i32 1) nounwind, !dbg !943
  %80 = extractvalue { i32, i1 } %79, 0, !dbg !943
  %81 = extractvalue { i32, i1 } %79, 1, !dbg !943
  %82 = zext i32 %call.i207 to i64, !dbg !943
  br i1 %81, label %ioc_bb3.i210, label %cont4.i211, !dbg !943

ioc_bb3.i210:                                     ; preds = %if.then2.i
  call void @__ioc_report_add_overflow(i32 500, i32 42, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %82, i64 1, i8 5) nounwind, !dbg !943
  br label %cont4.i211, !dbg !943

cont4.i211:                                       ; preds = %ioc_bb3.i210, %if.then2.i
  %call5.i = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %78, i32 %80) nounwind, !dbg !943
  call void @llvm.dbg.value(metadata !{i8* %call5.i}, i64 0, metadata !940) nounwind, !dbg !943
  %cmp6.i = icmp eq i8* %call5.i, null, !dbg !945
  br i1 %cmp6.i, label %return, label %if.end.i, !dbg !945

if.end.i:                                         ; preds = %cont4.i211
  %83 = load i8** @ngx_prefix, align 4, !dbg !946, !tbaa !784
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call5.i, i8* %83, i32 %call.i207, i32 1, i1 false) nounwind, !dbg !946
  br i1 %81, label %ioc_bb13.i, label %cont14.i, !dbg !947

ioc_bb13.i:                                       ; preds = %if.end.i
  call void @__ioc_report_add_overflow(i32 505, i32 12, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %82, i64 1, i8 5) nounwind, !dbg !947
  br label %cont14.i, !dbg !947

cont14.i:                                         ; preds = %ioc_bb13.i, %if.end.i
  call void @llvm.dbg.value(metadata !{i32 %80}, i64 0, metadata !939) nounwind, !dbg !947
  %arrayidx.i212 = getelementptr inbounds i8* %call5.i, i32 %call.i207, !dbg !947
  store i8 47, i8* %arrayidx.i212, align 1, !dbg !947, !tbaa !785
  br label %if.end15.i, !dbg !948

if.end15.i:                                       ; preds = %cont14.i, %if.then.i209
  %p.0.i = phi i8* [ %76, %if.then.i209 ], [ %call5.i, %cont14.i ]
  %len.0.i = phi i32 [ %call.i207, %if.then.i209 ], [ %80, %cont14.i ]
  %len16.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 0, !dbg !949
  store i32 %len.0.i, i32* %len16.i, align 4, !dbg !949, !tbaa !802
  %data.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 1, !dbg !950
  store i8* %p.0.i, i8** %data.i, align 4, !dbg !950, !tbaa !784
  %len18.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 21, i32 0, !dbg !951
  store i32 %len.0.i, i32* %len18.i, align 4, !dbg !951, !tbaa !802
  %data20.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 21, i32 1, !dbg !952
  store i8* %p.0.i, i8** %data20.i, align 4, !dbg !952, !tbaa !784
  br label %if.end37.i, !dbg !953

cont24.i213:                                      ; preds = %if.end32
  %len26.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 0, !dbg !954
  store i32 5, i32* %len26.i, align 4, !dbg !954, !tbaa !802
  %data28.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 1, !dbg !956
  store i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0), i8** %data28.i, align 4, !dbg !956, !tbaa !784
  %len34.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 21, i32 0, !dbg !957
  store i32 36, i32* %len34.i, align 4, !dbg !957, !tbaa !802
  %data36.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 21, i32 1, !dbg !958
  store i8* getelementptr inbounds ([37 x i8]* @.str16, i32 0, i32 0), i8** %data36.i, align 4, !dbg !958, !tbaa !784
  br label %if.end37.i

if.end37.i:                                       ; preds = %cont24.i213, %if.end15.i
  %84 = load i8** @ngx_conf_file, align 4, !dbg !959, !tbaa !784
  %tobool38.i = icmp eq i8* %84, null, !dbg !959
  br i1 %tobool38.i, label %cont48.i, label %if.then39.i, !dbg !959

if.then39.i:                                      ; preds = %if.end37.i
  %call40.i = call i32 @strlen(i8* %84) nounwind readonly, !dbg !960
  %len41.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, i32 0, !dbg !960
  store i32 %call40.i, i32* %len41.i, align 4, !dbg !960, !tbaa !802
  %data43.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, i32 1, !dbg !962
  store i8* %84, i8** %data43.i, align 4, !dbg !962, !tbaa !784
  br label %if.end53.i, !dbg !963

cont48.i:                                         ; preds = %if.end37.i
  %len50.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, i32 0, !dbg !964
  store i32 15, i32* %len50.i, align 4, !dbg !964, !tbaa !802
  %data52.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, i32 1, !dbg !966
  store i8* getelementptr inbounds ([16 x i8]* @.str17, i32 0, i32 0), i8** %data52.i, align 4, !dbg !966, !tbaa !784
  br label %if.end53.i

if.end53.i:                                       ; preds = %cont48.i, %if.then39.i
  %conf_file54.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, !dbg !967
  %call57.i = call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %init_cycle, %struct.ngx_str_t* %conf_file54.i, i32 0) nounwind, !dbg !967
  %cmp58.i = icmp eq i32 %call57.i, 0, !dbg !967
  br i1 %cmp58.i, label %if.end63.i, label %return, !dbg !967

if.end63.i:                                       ; preds = %if.end53.i
  %data65.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 18, i32 1, !dbg !968
  %85 = load i8** %data65.i, align 4, !dbg !968, !tbaa !784
  %len67.i = getelementptr inbounds %struct.ngx_str_t* %conf_file54.i, i32 0, i32 0, !dbg !968
  %86 = load i32* %len67.i, align 4, !dbg !968, !tbaa !802
  %add.ptr.sum.i = add i32 %86, -1, !dbg !968
  %add.ptr68.i = getelementptr inbounds i8* %85, i32 %add.ptr.sum.i, !dbg !968
  call void @llvm.dbg.value(metadata !{i8* %add.ptr68.i}, i64 0, metadata !940) nounwind, !dbg !968
  br label %for.cond.i, !dbg !968

for.cond.i:                                       ; preds = %for.body.i215, %if.end63.i
  %p.1.i = phi i8* [ %add.ptr68.i, %if.end63.i ], [ %incdec.ptr.i214, %for.body.i215 ]
  %cmp71.i = icmp ugt i8* %p.1.i, %85, !dbg !968
  br i1 %cmp71.i, label %for.body.i215, label %for.end.i216, !dbg !968

for.body.i215:                                    ; preds = %for.cond.i
  %87 = load i8* %p.1.i, align 1, !dbg !970, !tbaa !785
  %cmp74.i = icmp eq i8 %87, 47, !dbg !970
  %incdec.ptr.i214 = getelementptr inbounds i8* %p.1.i, i32 -1, !dbg !968
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i214}, i64 0, metadata !940) nounwind, !dbg !968
  br i1 %cmp74.i, label %if.then76.i, label %for.cond.i, !dbg !970

if.then76.i:                                      ; preds = %for.body.i215
  %88 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !972, !tbaa !784
  %data78.i = getelementptr inbounds %struct.ngx_cycle_s* %88, i32 0, i32 18, i32 1, !dbg !972
  %89 = load volatile i8** %data78.i, align 4, !dbg !972, !tbaa !784
  %sub.ptr.lhs.cast.i = ptrtoint i8* %p.1.i to i32, !dbg !972
  %sub.ptr.rhs.cast.i = ptrtoint i8* %89 to i32, !dbg !972
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !972
  %90 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %sub.ptr.sub.i, i32 1) nounwind, !dbg !972
  %91 = extractvalue { i32, i1 } %90, 0, !dbg !972
  %92 = extractvalue { i32, i1 } %90, 1, !dbg !972
  br i1 %92, label %ioc_bb79.i, label %cont80.i, !dbg !972

ioc_bb79.i:                                       ; preds = %if.then76.i
  %93 = sext i32 %sub.ptr.sub.i to i64, !dbg !972
  call void @__ioc_report_add_overflow(i32 537, i32 67, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %93, i64 1, i8 13) nounwind, !dbg !972
  br label %cont80.i, !dbg !972

cont80.i:                                         ; preds = %ioc_bb79.i, %if.then76.i
  %94 = icmp sgt i32 %91, -1, !dbg !972
  br i1 %94, label %cont82.i, label %ioc_bb81.i, !dbg !972

ioc_bb81.i:                                       ; preds = %cont80.i
  %95 = sext i32 %91 to i64, !dbg !972
  call void @__ioc_report_conversion(i32 537, i32 34, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %95, i8 1) nounwind, !dbg !972
  br label %cont82.i, !dbg !972

cont82.i:                                         ; preds = %ioc_bb81.i, %cont80.i
  %len84.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 0, !dbg !972
  store i32 %91, i32* %len84.i, align 4, !dbg !972, !tbaa !802
  %96 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !974, !tbaa !784
  %data86.i = getelementptr inbounds %struct.ngx_cycle_s* %96, i32 0, i32 18, i32 1, !dbg !974
  %97 = load volatile i8** %data86.i, align 4, !dbg !974, !tbaa !784
  %data88.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 20, i32 1, !dbg !974
  store i8* %97, i8** %data88.i, align 4, !dbg !974, !tbaa !784
  br label %for.end.i216, !dbg !975

for.end.i216:                                     ; preds = %for.cond.i, %cont82.i
  %98 = load i8** @ngx_conf_params, align 4, !dbg !976, !tbaa !784
  %tobool90.i = icmp eq i8* %98, null, !dbg !976
  br i1 %tobool90.i, label %if.end96.i, label %if.then91.i, !dbg !976

if.then91.i:                                      ; preds = %for.end.i216
  %call92.i = call i32 @strlen(i8* %98) nounwind readonly, !dbg !977
  %len93.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 19, i32 0, !dbg !977
  store i32 %call92.i, i32* %len93.i, align 4, !dbg !977, !tbaa !802
  %data95.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 19, i32 1, !dbg !979
  store i8* %98, i8** %data95.i, align 4, !dbg !979, !tbaa !784
  br label %if.end96.i, !dbg !980

if.end96.i:                                       ; preds = %if.then91.i, %for.end.i216
  %99 = load i32* @ngx_test_config, align 4, !dbg !981, !tbaa !802
  %tobool97.i = icmp eq i32 %99, 0, !dbg !981
  br i1 %tobool97.i, label %if.end36, label %cont100.i, !dbg !981

cont100.i:                                        ; preds = %if.end96.i
  %100 = load %struct.ngx_log_s** %log21, align 4, !dbg !982, !tbaa !784
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %100, i32 0, i32 0, !dbg !982
  store i32 7, i32* %log_level.i, align 4, !dbg !982, !tbaa !802
  br label %if.end36, !dbg !984

if.end36:                                         ; preds = %if.end96.i, %cont100.i
  %call37 = call i32 @ngx_os_init(%struct.ngx_log_s* %call17) nounwind, !dbg !985
  %cmp38 = icmp eq i32 %call37, 0, !dbg !985
  br i1 %cmp38, label %if.end40, label %return, !dbg !985

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @ngx_crc32_table_init() nounwind, !dbg !986
  %cmp42 = icmp eq i32 %call41, 0, !dbg !986
  br i1 %cmp42, label %if.end44, label %return, !dbg !986

if.end44:                                         ; preds = %if.end40
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %init_cycle}, i64 0, metadata !987) nounwind, !dbg !989
  %call.i219 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0)) nounwind, !dbg !990
  call void @llvm.dbg.value(metadata !{i8* %call.i219}, i64 0, metadata !991) nounwind, !dbg !990
  %cmp.i220 = icmp eq i8* %call.i219, null, !dbg !992
  br i1 %cmp.i220, label %cont50, label %if.end.i224, !dbg !992

if.end.i224:                                      ; preds = %if.end44
  %101 = load %struct.ngx_log_s** %log21, align 4, !dbg !993, !tbaa !784
  %log_level.i222 = getelementptr inbounds %struct.ngx_log_s* %101, i32 0, i32 0, !dbg !993
  %102 = load i32* %log_level.i222, align 4, !dbg !993, !tbaa !802
  %cmp1.i223 = icmp ugt i32 %102, 5, !dbg !993
  br i1 %cmp1.i223, label %cont4.i225, label %if.end6.i, !dbg !993

cont4.i225:                                       ; preds = %if.end.i224
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 6, %struct.ngx_log_s* %101, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0), i8* %call.i219) nounwind, !dbg !994
  br label %if.end6.i, !dbg !994

if.end6.i:                                        ; preds = %cont4.i225, %if.end.i224
  %listening.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 8, !dbg !995
  %103 = load %struct.ngx_pool_s** %pool, align 4, !dbg !995, !tbaa !784
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %listening.i}, i64 0, metadata !996) nounwind, !dbg !997
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %103}, i64 0, metadata !998) nounwind, !dbg !997
  call void @llvm.dbg.value(metadata !999, i64 0, metadata !1000) nounwind, !dbg !997
  call void @llvm.dbg.value(metadata !1001, i64 0, metadata !1002) nounwind, !dbg !997
  %nelts.i.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 8, i32 1, !dbg !1003
  store i32 0, i32* %nelts.i.i, align 4, !dbg !1003, !tbaa !802
  %size1.i.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 8, i32 2, !dbg !1005
  store i32 112, i32* %size1.i.i, align 4, !dbg !1005, !tbaa !802
  %nalloc.i.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 8, i32 3, !dbg !1006
  store i32 10, i32* %nalloc.i.i, align 4, !dbg !1006, !tbaa !802
  %pool2.i.i = getelementptr inbounds %struct.ngx_cycle_s* %init_cycle, i32 0, i32 8, i32 4, !dbg !1007
  store %struct.ngx_pool_s* %103, %struct.ngx_pool_s** %pool2.i.i, align 4, !dbg !1007, !tbaa !784
  %call.i.i227 = call i8* @ngx_palloc(%struct.ngx_pool_s* %103, i32 1120) nounwind, !dbg !1008
  %elts.i.i = getelementptr inbounds %struct.ngx_array_s* %listening.i, i32 0, i32 0, !dbg !1008
  store i8* %call.i.i227, i8** %elts.i.i, align 4, !dbg !1008, !tbaa !784
  %cmp.i.i = icmp eq i8* %call.i.i227, null, !dbg !1009
  br i1 %cmp.i.i, label %return, label %for.cond.i229.outer, !dbg !995

for.cond.i229.outer:                              ; preds = %if.end6.i, %if.end48.i233
  %v.0.i.ph = phi i8* [ %add.ptr.i, %if.end48.i233 ], [ %call.i219, %if.end6.i ]
  br label %for.cond.i229

for.cond.i229:                                    ; preds = %for.cond.i229.outer, %for.cond.for.inc_crit_edge.i
  %p.0.i228 = phi i8* [ %incdec.ptr.pre.i, %for.cond.for.inc_crit_edge.i ], [ %v.0.i.ph, %for.cond.i229.outer ]
  %104 = load i8* %p.0.i228, align 1, !dbg !1010, !tbaa !785
  switch i8 %104, label %for.cond.for.inc_crit_edge.i [
    i8 0, label %ngx_add_inherited_sockets.exit
    i8 58, label %if.then20.i
    i8 59, label %if.then20.i
  ], !dbg !1010

for.cond.for.inc_crit_edge.i:                     ; preds = %for.cond.i229
  %incdec.ptr.pre.i = getelementptr inbounds i8* %p.0.i228, i32 1, !dbg !1010
  br label %for.cond.i229, !dbg !1010

if.then20.i:                                      ; preds = %for.cond.i229, %for.cond.i229
  %sub.ptr.lhs.cast.i230 = ptrtoint i8* %p.0.i228 to i32, !dbg !1012
  %sub.ptr.rhs.cast.i231 = ptrtoint i8* %v.0.i.ph to i32, !dbg !1012
  %sub.ptr.sub.i232 = sub i32 %sub.ptr.lhs.cast.i230, %sub.ptr.rhs.cast.i231, !dbg !1012
  %105 = icmp sgt i32 %sub.ptr.sub.i232, -1, !dbg !1012
  br i1 %105, label %cont22.i, label %ioc_bb21.i, !dbg !1012

ioc_bb21.i:                                       ; preds = %if.then20.i
  %106 = sext i32 %sub.ptr.sub.i232 to i64, !dbg !1012
  call void @__ioc_report_conversion(i32 208, i32 22, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %106, i8 1) nounwind, !dbg !1012
  br label %cont22.i, !dbg !1012

cont22.i:                                         ; preds = %ioc_bb21.i, %if.then20.i
  %call23.i = call i32 @ngx_atoi(i8* %v.0.i.ph, i32 %sub.ptr.sub.i232) nounwind, !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %call23.i}, i64 0, metadata !1015) nounwind, !dbg !1012
  %cmp26.i = icmp eq i32 %call23.i, -1, !dbg !1016
  br i1 %cmp26.i, label %cont32.i, label %if.end40.i, !dbg !1016

cont32.i:                                         ; preds = %cont22.i
  %107 = load %struct.ngx_log_s** %log21, align 4, !dbg !1017, !tbaa !784
  %log_level30.i = getelementptr inbounds %struct.ngx_log_s* %107, i32 0, i32 0, !dbg !1017
  %108 = load i32* %log_level30.i, align 4, !dbg !1017, !tbaa !802
  %cmp33.i = icmp eq i32 %108, 0, !dbg !1017
  br i1 %cmp33.i, label %ngx_add_inherited_sockets.exit, label %cont37.i, !dbg !1017

cont37.i:                                         ; preds = %cont32.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %107, i32 0, i8* getelementptr inbounds ([92 x i8]* @.str31, i32 0, i32 0), i8* %v.0.i.ph) nounwind, !dbg !1019
  br label %ngx_add_inherited_sockets.exit, !dbg !1019

if.end40.i:                                       ; preds = %cont22.i
  %call42.i = call i8* @ngx_array_push(%struct.ngx_array_s* %listening.i) nounwind, !dbg !1020
  %cmp43.i = icmp eq i8* %call42.i, null, !dbg !1021
  br i1 %cmp43.i, label %return, label %if.end48.i233, !dbg !1021

if.end48.i233:                                    ; preds = %if.end40.i
  %add.ptr.i = getelementptr inbounds i8* %p.0.i228, i32 1, !dbg !1022
  call void @llvm.memset.p0i8.i32(i8* %call42.i, i8 0, i32 112, i32 4, i1 false) nounwind, !dbg !1023
  %fd.i = bitcast i8* %call42.i to i32*, !dbg !1024
  store i32 %call23.i, i32* %fd.i, align 4, !dbg !1024, !tbaa !802
  br label %for.cond.i229.outer, !dbg !1025

ngx_add_inherited_sockets.exit:                   ; preds = %for.cond.i229, %cont32.i, %cont37.i
  store i32 1, i32* @ngx_inherited, align 4, !dbg !1026, !tbaa !802
  %call52.i = call i32 @ngx_set_inherited_sockets(%struct.ngx_cycle_s* %init_cycle) nounwind, !dbg !1027
  %cmp46 = icmp eq i32 %call52.i, 0, !dbg !988
  br i1 %cmp46, label %cont50, label %return, !dbg !988

cont50:                                           ; preds = %if.end44, %ngx_add_inherited_sockets.exit
  store i32 0, i32* @ngx_max_module, align 4, !dbg !1028, !tbaa !802
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !1029
  %109 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !1029, !tbaa !784
  %tobool51248 = icmp eq %struct.ngx_module_s* %109, null, !dbg !1029
  br i1 %tobool51248, label %for.end, label %for.body, !dbg !1029

for.body:                                         ; preds = %cont50, %for.cond.backedge.for.body_crit_edge
  %110 = phi i32 [ %.pre299, %for.cond.backedge.for.body_crit_edge ], [ 0, %cont50 ]
  %111 = phi %struct.ngx_module_s* [ %120, %for.cond.backedge.for.body_crit_edge ], [ %109, %cont50 ]
  %arrayidx250 = phi %struct.ngx_module_s** [ %arrayidx, %for.cond.backedge.for.body_crit_edge ], [ getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), %cont50 ]
  %i.0249 = phi i32 [ %118, %for.cond.backedge.for.body_crit_edge ], [ 0, %cont50 ]
  %112 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 1), !dbg !1031
  %113 = extractvalue { i32, i1 } %112, 0, !dbg !1031
  %114 = extractvalue { i32, i1 } %112, 1, !dbg !1031
  br i1 %114, label %ioc_bb52, label %cont53, !dbg !1031

ioc_bb52:                                         ; preds = %for.body
  %115 = zext i32 %110 to i64, !dbg !1031
  call void @__ioc_report_add_overflow(i32 126, i32 45, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %115, i64 1, i8 5) nounwind, !dbg !1031
  %.pre = load %struct.ngx_module_s** %arrayidx250, align 4, !dbg !1031, !tbaa !784
  br label %cont53, !dbg !1031

cont53:                                           ; preds = %for.body, %ioc_bb52
  %116 = phi %struct.ngx_module_s* [ %111, %for.body ], [ %.pre, %ioc_bb52 ]
  store i32 %113, i32* @ngx_max_module, align 4, !dbg !1031, !tbaa !802
  %index = getelementptr inbounds %struct.ngx_module_s* %116, i32 0, i32 1, !dbg !1031
  store i32 %110, i32* %index, align 4, !dbg !1031, !tbaa !802
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.0249, i32 1), !dbg !1029
  %118 = extractvalue { i32, i1 } %117, 0, !dbg !1029
  %119 = extractvalue { i32, i1 } %117, 1, !dbg !1029
  br i1 %119, label %ioc_bb55, label %for.cond.backedge, !dbg !1029

for.cond.backedge:                                ; preds = %cont53, %ioc_bb55
  %arrayidx = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %118, !dbg !1029
  %120 = load %struct.ngx_module_s** %arrayidx, align 4, !dbg !1029, !tbaa !784
  %tobool51 = icmp eq %struct.ngx_module_s* %120, null, !dbg !1029
  br i1 %tobool51, label %for.end, label %for.cond.backedge.for.body_crit_edge, !dbg !1029

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  %.pre299 = load i32* @ngx_max_module, align 4, !dbg !1031, !tbaa !802
  br label %for.body, !dbg !1029

ioc_bb55:                                         ; preds = %cont53
  %121 = sext i32 %i.0249 to i64, !dbg !1029
  call void @__ioc_report_add_overflow(i32 125, i32 32, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %121, i64 1, i8 13) nounwind, !dbg !1029
  br label %for.cond.backedge, !dbg !1029

for.end:                                          ; preds = %for.cond.backedge, %cont50
  %call57 = call %struct.ngx_cycle_s* @ngx_init_cycle(%struct.ngx_cycle_s* %init_cycle) nounwind, !dbg !1033
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %call57}, i64 0, metadata !70), !dbg !1033
  %cmp58 = icmp eq %struct.ngx_cycle_s* %call57, null, !dbg !1034
  %122 = load i32* @ngx_test_config, align 4, !dbg !1035, !tbaa !802
  %tobool60 = icmp ne i32 %122, 0, !dbg !1035
  br i1 %cmp58, label %if.then59, label %if.end63, !dbg !1034

if.then59:                                        ; preds = %for.end
  br i1 %tobool60, label %if.then61, label %return, !dbg !1035

if.then61:                                        ; preds = %if.then59
  %123 = load i8** %data65.i, align 4, !dbg !1037, !tbaa !784
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i32 0, i32 0), i8* %123) nounwind, !dbg !1037
  br label %return, !dbg !1039

if.end63:                                         ; preds = %for.end
  br i1 %tobool60, label %if.then65, label %if.end71, !dbg !1040

if.then65:                                        ; preds = %if.end63
  %124 = load i32* @ngx_quiet_mode, align 4, !dbg !1041, !tbaa !802
  %tobool66 = icmp eq i32 %124, 0, !dbg !1041
  br i1 %tobool66, label %if.then67, label %return, !dbg !1041

if.then67:                                        ; preds = %if.then65
  %data69 = getelementptr inbounds %struct.ngx_cycle_s* %call57, i32 0, i32 18, i32 1, !dbg !1043
  %125 = load i8** %data69, align 4, !dbg !1043, !tbaa !784
  call void (i32, i8*, ...)* @ngx_log_stderr(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0), i8* %125) nounwind, !dbg !1043
  br label %return, !dbg !1045

if.end71:                                         ; preds = %if.end63
  %126 = load i8** @ngx_signal, align 4, !dbg !1046, !tbaa !784
  %tobool72 = icmp eq i8* %126, null, !dbg !1046
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !1046

if.then73:                                        ; preds = %if.end71
  %call74 = call i32 @ngx_signal_process(%struct.ngx_cycle_s* %call57, i8* %126) nounwind, !dbg !1047
  br label %return, !dbg !1047

if.end75:                                         ; preds = %if.end71
  %log76 = getelementptr inbounds %struct.ngx_cycle_s* %call57, i32 0, i32 2, !dbg !1049
  %127 = load %struct.ngx_log_s** %log76, align 4, !dbg !1049, !tbaa !784
  call void @ngx_os_status(%struct.ngx_log_s* %127) nounwind, !dbg !1049
  store %struct.ngx_cycle_s* %call57, %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !1050, !tbaa !784
  %128 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1051, !tbaa !802
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %call57, i32 0, i32 0, !dbg !1051
  %129 = load i8***** %conf_ctx, align 4, !dbg !1051, !tbaa !784
  %arrayidx77 = getelementptr inbounds i8**** %129, i32 %128, !dbg !1051
  %130 = load i8**** %arrayidx77, align 4, !dbg !1051, !tbaa !784
  %master = getelementptr inbounds i8*** %130, i32 1, !dbg !1052
  %131 = bitcast i8*** %master to i32*, !dbg !1052
  %132 = load i32* %131, align 4, !dbg !1052, !tbaa !802
  %tobool78 = icmp ne i32 %132, 0, !dbg !1052
  %133 = load i32* @ngx_process, align 4, !dbg !1052, !tbaa !802
  %cmp81 = icmp eq i32 %133, 0, !dbg !1052
  %or.cond = and i1 %tobool78, %cmp81, !dbg !1052
  br i1 %or.cond, label %cont84, label %if.end85, !dbg !1052

cont84:                                           ; preds = %if.end75
  store i32 1, i32* @ngx_process, align 4, !dbg !1053, !tbaa !802
  br label %if.end85, !dbg !1055

if.end85:                                         ; preds = %if.end75, %cont84
  %134 = load %struct.ngx_log_s** %log76, align 4, !dbg !1056, !tbaa !784
  %call87 = call i32 @ngx_init_signals(%struct.ngx_log_s* %134) nounwind, !dbg !1056
  %cmp88 = icmp eq i32 %call87, 0, !dbg !1056
  br i1 %cmp88, label %if.end90, label %return, !dbg !1056

if.end90:                                         ; preds = %if.end85
  %135 = load i32* @ngx_inherited, align 4, !dbg !1057, !tbaa !802
  %tobool91 = icmp eq i32 %135, 0, !dbg !1057
  br i1 %tobool91, label %land.lhs.true92, label %cont106, !dbg !1057

land.lhs.true92:                                  ; preds = %if.end90
  %daemon = bitcast i8*** %130 to i32*, !dbg !1057
  %136 = load i32* %daemon, align 4, !dbg !1057, !tbaa !802
  %tobool93 = icmp eq i32 %136, 0, !dbg !1057
  br i1 %tobool93, label %if.end107, label %if.then94, !dbg !1057

if.then94:                                        ; preds = %land.lhs.true92
  %137 = load %struct.ngx_log_s** %log76, align 4, !dbg !1058, !tbaa !784
  %call96 = call i32 @ngx_daemon(%struct.ngx_log_s* %137) nounwind, !dbg !1058
  %cmp97 = icmp eq i32 %call96, 0, !dbg !1058
  br i1 %cmp97, label %if.end102, label %return, !dbg !1058

if.end102:                                        ; preds = %if.then94
  store i32 1, i32* @ngx_daemonized, align 4, !dbg !1060, !tbaa !802
  %.pr.pre = load i32* @ngx_inherited, align 4, !dbg !1061, !tbaa !802
  %phitmp = icmp eq i32 %.pr.pre, 0, !dbg !1062
  br i1 %phitmp, label %if.end107, label %cont106, !dbg !1061

cont106:                                          ; preds = %if.end90, %if.end102
  store i32 1, i32* @ngx_daemonized, align 4, !dbg !1063, !tbaa !802
  br label %if.end107, !dbg !1065

if.end107:                                        ; preds = %land.lhs.true92, %if.end102, %cont106
  %pid = getelementptr inbounds i8*** %130, i32 19, !dbg !1066
  %138 = bitcast i8*** %pid to %struct.ngx_str_t*, !dbg !1066
  %139 = load %struct.ngx_log_s** %log76, align 4, !dbg !1066, !tbaa !784
  %call109 = call i32 @ngx_create_pidfile(%struct.ngx_str_t* %138, %struct.ngx_log_s* %139) nounwind, !dbg !1066
  %cmp110 = icmp eq i32 %call109, 0, !dbg !1066
  br i1 %cmp110, label %if.end112, label %return, !dbg !1066

if.end112:                                        ; preds = %if.end107
  %140 = load %struct.ngx_log_s** %log76, align 4, !dbg !1067, !tbaa !784
  %file = getelementptr inbounds %struct.ngx_log_s* %140, i32 0, i32 1, !dbg !1067
  %141 = load %struct.ngx_open_file_s** %file, align 4, !dbg !1067, !tbaa !784
  %fd = getelementptr inbounds %struct.ngx_open_file_s* %141, i32 0, i32 0, !dbg !1067
  %142 = load i32* %fd, align 4, !dbg !1067, !tbaa !802
  %cmp114 = icmp eq i32 %142, 2, !dbg !1067
  br i1 %cmp114, label %if.end135, label %if.then115, !dbg !1067

if.then115:                                       ; preds = %if.end112
  %call119 = call i32 @dup2(i32 %142, i32 2) nounwind, !dbg !1068
  %cmp122 = icmp eq i32 %call119, -1, !dbg !1068
  br i1 %cmp122, label %cont126, label %if.end135, !dbg !1068

cont126:                                          ; preds = %if.then115
  %143 = load %struct.ngx_log_s** %log76, align 4, !dbg !1070, !tbaa !784
  %log_level = getelementptr inbounds %struct.ngx_log_s* %143, i32 0, i32 0, !dbg !1070
  %144 = load i32* %log_level, align 4, !dbg !1070, !tbaa !802
  %cmp127 = icmp eq i32 %144, 0, !dbg !1070
  br i1 %cmp127, label %return, label %cont130, !dbg !1070

cont130:                                          ; preds = %cont126
  %call132 = call i32* @__errno_location() nounwind readnone, !dbg !1072
  %145 = load i32* %call132, align 4, !dbg !1072, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %143, i32 %145, i8* getelementptr inbounds ([27 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !1072
  br label %return, !dbg !1072

if.end135:                                        ; preds = %if.end112, %if.then115
  %file136 = getelementptr inbounds %struct.ngx_log_s* %call17, i32 0, i32 1, !dbg !1073
  %146 = load %struct.ngx_open_file_s** %file136, align 4, !dbg !1073, !tbaa !784
  %fd137 = getelementptr inbounds %struct.ngx_open_file_s* %146, i32 0, i32 0, !dbg !1073
  %147 = load i32* %fd137, align 4, !dbg !1073, !tbaa !802
  %cmp138 = icmp eq i32 %147, 2, !dbg !1073
  br i1 %cmp138, label %cont161, label %if.then139, !dbg !1073

if.then139:                                       ; preds = %if.end135
  %call142 = call i32 @close(i32 %147) nounwind, !dbg !1074
  %cmp145 = icmp eq i32 %call142, -1, !dbg !1074
  br i1 %cmp145, label %cont150, label %cont161, !dbg !1074

cont150:                                          ; preds = %if.then139
  %148 = load %struct.ngx_log_s** %log76, align 4, !dbg !1076, !tbaa !784
  %log_level148 = getelementptr inbounds %struct.ngx_log_s* %148, i32 0, i32 0, !dbg !1076
  %149 = load i32* %log_level148, align 4, !dbg !1076, !tbaa !802
  %cmp151 = icmp ugt i32 %149, 1, !dbg !1076
  br i1 %cmp151, label %cont154, label %cont161, !dbg !1076

cont154:                                          ; preds = %cont150
  %call156 = call i32* @__errno_location() nounwind readnone, !dbg !1078
  %150 = load i32* %call156, align 4, !dbg !1078, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %148, i32 %150, i8* getelementptr inbounds ([28 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !1078
  br label %cont161, !dbg !1078

cont161:                                          ; preds = %cont150, %cont154, %if.then139, %if.end135
  store i32 0, i32* @ngx_use_stderr, align 4, !dbg !1079, !tbaa !802
  %151 = load i32* @ngx_process, align 4, !dbg !1080, !tbaa !802
  %cmp164 = icmp eq i32 %151, 0, !dbg !1080
  br i1 %cmp164, label %if.then165, label %if.else, !dbg !1080

if.then165:                                       ; preds = %cont161
  call void @ngx_single_process_cycle(%struct.ngx_cycle_s* %call57) nounwind, !dbg !1081
  br label %return, !dbg !1083

if.else:                                          ; preds = %cont161
  call void @ngx_master_process_cycle(%struct.ngx_cycle_s* %call57) nounwind, !dbg !1084
  br label %return

return:                                           ; preds = %cont12.i, %if.end40.i, %if.end6.i, %if.end53.i, %cont4.i211, %cont4.i, %if.end35.i, %if.end48.i, %if.end61.i, %if.else73.i, %if.end349.i, %sw.default.i, %if.then.i, %if.then165, %if.else, %cont130, %cont126, %if.end107, %if.then94, %if.end85, %if.then67, %if.then65, %if.then59, %if.then61, %ngx_add_inherited_sockets.exit, %if.end40, %if.end36, %if.end20, %cont, %if.end11, %entry, %if.then73
  %retval.0 = phi i32 [ %call74, %if.then73 ], [ 1, %entry ], [ 0, %if.end11 ], [ 1, %cont ], [ 1, %if.end20 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %ngx_add_inherited_sockets.exit ], [ 1, %if.then61 ], [ 1, %if.then59 ], [ 0, %if.then65 ], [ 0, %if.then67 ], [ 1, %if.end85 ], [ 1, %if.then94 ], [ 1, %if.end107 ], [ 1, %cont126 ], [ 1, %cont130 ], [ 0, %if.else ], [ 0, %if.then165 ], [ 1, %if.then.i ], [ 1, %sw.default.i ], [ 1, %if.end349.i ], [ 1, %if.else73.i ], [ 1, %if.end61.i ], [ 1, %if.end48.i ], [ 1, %if.end35.i ], [ 1, %cont4.i ], [ 1, %cont4.i211 ], [ 1, %if.end53.i ], [ 1, %if.end6.i ], [ 1, %if.end40.i ], [ 1, %cont12.i ]
  ret i32 %retval.0, !dbg !1086
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @ngx_strerror_init()

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @ngx_time_init()

declare void @ngx_regex_init()

declare i32 @getpid() nounwind

declare %struct.ngx_log_s* @ngx_log_init(i8*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare %struct.ngx_pool_s* @ngx_create_pool(i32, %struct.ngx_log_s*)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @ngx_os_init(%struct.ngx_log_s*)

declare i32 @ngx_crc32_table_init()

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare %struct.ngx_cycle_s* @ngx_init_cycle(%struct.ngx_cycle_s*)

declare void @ngx_log_stderr(i32, i8*, ...)

declare i32 @ngx_signal_process(%struct.ngx_cycle_s*, i8*)

declare void @ngx_os_status(%struct.ngx_log_s*)

declare i32 @ngx_init_signals(%struct.ngx_log_s*)

declare i32 @ngx_daemon(%struct.ngx_log_s*)

declare i32 @ngx_create_pidfile(%struct.ngx_str_t*, %struct.ngx_log_s*)

declare i32 @dup2(i32, i32) nounwind

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32* @__errno_location() nounwind readnone

declare i32 @close(i32)

declare void @ngx_single_process_cycle(%struct.ngx_cycle_s*)

declare void @ngx_master_process_cycle(%struct.ngx_cycle_s*)

define i8** @ngx_set_environment(%struct.ngx_cycle_s* nocapture %cycle, i32* %last) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !425), !dbg !1087
  tail call void @llvm.dbg.value(metadata !{i32* %last}, i64 0, metadata !426), !dbg !1087
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1088, !tbaa !802
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !1088
  %1 = load i8***** %conf_ctx, align 4, !dbg !1088, !tbaa !784
  %arrayidx = getelementptr inbounds i8**** %1, i32 %0, !dbg !1088
  %2 = load i8**** %arrayidx, align 4, !dbg !1088, !tbaa !784
  %cmp = icmp eq i32* %last, null, !dbg !1089
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1089

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds i8*** %2, i32 28, !dbg !1089
  %4 = load i8*** %3, align 4, !dbg !1089, !tbaa !784
  %tobool = icmp eq i8** %4, null, !dbg !1089
  br i1 %tobool, label %if.end, label %return, !dbg !1089

if.end:                                           ; preds = %land.lhs.true, %entry
  %env2 = getelementptr inbounds i8*** %2, i32 23, !dbg !1090
  %5 = bitcast i8*** %env2 to %struct.ngx_array_s*, !dbg !1090
  %elts298 = load i8*** %env2, align 4, !dbg !1090
  %6 = bitcast i8** %elts298 to %struct.ngx_str_t*, !dbg !1090
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %6}, i64 0, metadata !430), !dbg !1090
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !432), !dbg !1091
  %nelts = getelementptr inbounds i8*** %2, i32 24, !dbg !1091
  %7 = bitcast i8*** %nelts to i32*, !dbg !1091
  %8 = load i32* %7, align 4, !dbg !1091, !tbaa !802
  %cmp4314 = icmp eq i32 %8, 0, !dbg !1091
  br i1 %cmp4314, label %for.end, label %for.body.lr.ph, !dbg !1091

for.body.lr.ph:                                   ; preds = %if.end
  %9 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str7 to i32)), !dbg !1092
  %10 = extractvalue { i32, i1 } %9, 1, !dbg !1092
  %11 = extractvalue { i32, i1 } %9, 0, !dbg !1092
  %cmp9 = icmp eq i32 %11, 1, !dbg !1092
  br label %for.body, !dbg !1091

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0315 = phi i32 [ 0, %for.body.lr.ph ], [ %26, %for.cond.backedge ]
  br i1 %10, label %ioc_bb5, label %cont8, !dbg !1092

ioc_bb5:                                          ; preds = %for.body
  tail call void @__ioc_report_sub_overflow(i32 241, i32 9, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str7 to i32) to i64), i8 5) nounwind, !dbg !1092
  br label %cont8, !dbg !1092

cont8:                                            ; preds = %ioc_bb5, %for.body
  %data = getelementptr inbounds %struct.ngx_str_t* %6, i32 %i.0315, i32 1, !dbg !1093
  %12 = load i8** %data, align 4, !dbg !1093, !tbaa !784
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !1092

cond.true:                                        ; preds = %cont8
  tail call void @llvm.dbg.value(metadata !873, i64 0, metadata !439), !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !440), !dbg !1093
  %13 = load i8* %12, align 1, !dbg !1093, !tbaa !785
  %conv = zext i8 %13 to i32, !dbg !1093
  %14 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 84), !dbg !1093
  %15 = extractvalue { i32, i1 } %14, 0, !dbg !1093
  %16 = extractvalue { i32, i1 } %14, 1, !dbg !1093
  br i1 %16, label %ioc_bb17, label %land.lhs.true23, !dbg !1093

ioc_bb17:                                         ; preds = %cond.true
  %17 = zext i8 %13 to i64, !dbg !1093
  tail call void @__ioc_report_sub_overflow(i32 241, i32 9, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %17, i64 84, i8 13) nounwind, !dbg !1093
  br label %land.lhs.true23, !dbg !1093

land.lhs.true23:                                  ; preds = %cond.true, %ioc_bb17
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !444), !dbg !1093
  %cmp24 = icmp eq i32 %15, 0, !dbg !1093
  br i1 %cmp24, label %if.then26, label %cont68, !dbg !1093

if.then26:                                        ; preds = %land.lhs.true23
  %arrayidx27 = getelementptr inbounds i8* %12, i32 1, !dbg !1094
  %18 = load i8* %arrayidx27, align 1, !dbg !1094, !tbaa !785
  %conv28 = zext i8 %18 to i32, !dbg !1094
  %19 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv28, i32 90), !dbg !1094
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !1094
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !1094
  br i1 %21, label %ioc_bb30, label %land.lhs.true36, !dbg !1094

ioc_bb30:                                         ; preds = %if.then26
  %22 = zext i8 %18 to i64, !dbg !1094
  tail call void @__ioc_report_sub_overflow(i32 241, i32 9, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %22, i64 90, i8 13) nounwind, !dbg !1094
  br label %land.lhs.true36, !dbg !1094

land.lhs.true36:                                  ; preds = %if.then26, %ioc_bb30
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !444), !dbg !1094
  %cmp37 = icmp eq i32 %20, 0, !dbg !1094
  br i1 %cmp37, label %if.then39, label %cont68, !dbg !1094

if.then39:                                        ; preds = %land.lhs.true36
  %arrayidx40 = getelementptr inbounds i8* %12, i32 2, !dbg !1096
  %23 = load i8* %arrayidx40, align 1, !dbg !1096, !tbaa !785
  %conv41 = zext i8 %23 to i32, !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %conv41}, i64 0, metadata !444), !dbg !1096
  br label %cond.end, !dbg !1096

cond.false:                                       ; preds = %cont8
  %call = tail call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !1096
  br label %cond.end, !dbg !1096

cond.end:                                         ; preds = %if.then39, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv41, %if.then39 ], !dbg !1096
  %cmp63 = icmp eq i32 %cond, 0, !dbg !1096
  br i1 %cmp63, label %cont90, label %cont68, !dbg !1096

cont68:                                           ; preds = %cond.end, %land.lhs.true36, %land.lhs.true23
  %24 = load i8** %data, align 4, !dbg !1098, !tbaa !784
  %call69 = tail call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i32 3) nounwind readonly, !dbg !1098
  %cmp70 = icmp eq i32 %call69, 0, !dbg !1098
  br i1 %cmp70, label %cont90, label %for.inc, !dbg !1098

for.inc:                                          ; preds = %cont68
  %25 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0315, i32 1), !dbg !1091
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1091
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !1091
  br i1 %27, label %ioc_bb74, label %for.cond.backedge, !dbg !1091

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb74
  %28 = load i32* %7, align 4, !dbg !1091, !tbaa !802
  %cmp4 = icmp ult i32 %26, %28, !dbg !1091
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1091

ioc_bb74:                                         ; preds = %for.inc
  %29 = zext i32 %i.0315 to i64, !dbg !1091
  tail call void @__ioc_report_add_overflow(i32 240, i32 38, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1091
  br label %for.cond.backedge, !dbg !1091

for.end:                                          ; preds = %for.cond.backedge, %if.end
  %call77 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %5) nounwind, !dbg !1099
  %cmp78 = icmp eq i8* %call77, null, !dbg !1100
  br i1 %cmp78, label %return, label %cont83, !dbg !1100

cont83:                                           ; preds = %for.end
  %len = bitcast i8* %call77 to i32*, !dbg !1101
  store i32 2, i32* %len, align 4, !dbg !1101, !tbaa !802
  %data84 = getelementptr inbounds i8* %call77, i32 4, !dbg !1102
  %30 = bitcast i8* %data84 to i8**, !dbg !1102
  store i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i8** %30, align 4, !dbg !1102, !tbaa !784
  %elts299 = load i8*** %env2, align 4, !dbg !1103
  %31 = bitcast i8** %elts299 to %struct.ngx_str_t*, !dbg !1103
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %31}, i64 0, metadata !430), !dbg !1103
  br label %cont90, !dbg !1103

cont90:                                           ; preds = %cond.end, %cont68, %cont83
  %var.0 = phi %struct.ngx_str_t* [ %31, %cont83 ], [ %6, %cont68 ], [ %6, %cond.end ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !433), !dbg !1104
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !432), !dbg !1105
  %32 = load i32* %7, align 4, !dbg !1105, !tbaa !802
  %cmp94309 = icmp eq i32 %32, 0, !dbg !1105
  br i1 %cmp94309, label %for.end135, label %for.body96, !dbg !1105

for.body96:                                       ; preds = %cont90, %for.cond91.backedge
  %n.0311 = phi i32 [ %n.1, %for.cond91.backedge ], [ 0, %cont90 ]
  %i.1310 = phi i32 [ %50, %for.cond91.backedge ], [ 0, %cont90 ]
  %len98 = getelementptr inbounds %struct.ngx_str_t* %var.0, i32 %i.1310, i32 0, !dbg !1107
  %33 = load i32* %len98, align 4, !dbg !1107, !tbaa !802
  %data100 = getelementptr inbounds %struct.ngx_str_t* %var.0, i32 %i.1310, i32 1, !dbg !1107
  %34 = load i8** %data100, align 4, !dbg !1107, !tbaa !784
  %arrayidx101 = getelementptr inbounds i8* %34, i32 %33, !dbg !1107
  %35 = load i8* %arrayidx101, align 1, !dbg !1107, !tbaa !785
  %cmp103 = icmp eq i8 %35, 61, !dbg !1107
  br i1 %cmp103, label %if.then105, label %if.end108, !dbg !1107

if.then105:                                       ; preds = %for.body96
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0311, i32 1), !dbg !1109
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !1109
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !1109
  br i1 %38, label %ioc_bb106, label %for.inc132, !dbg !1109

ioc_bb106:                                        ; preds = %if.then105
  %39 = zext i32 %n.0311 to i64, !dbg !1109
  tail call void @__ioc_report_add_overflow(i32 256, i32 8, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %39, i64 1, i8 5) nounwind, !dbg !1109
  br label %for.inc132, !dbg !1109

if.end108:                                        ; preds = %for.body96
  %40 = load i8*** @ngx_os_environ, align 4, !dbg !1111, !tbaa !784
  tail call void @llvm.dbg.value(metadata !{i8** %40}, i64 0, metadata !427), !dbg !1111
  %41 = load i8** %40, align 4, !dbg !1111, !tbaa !784
  %tobool110307 = icmp eq i8* %41, null, !dbg !1111
  br i1 %tobool110307, label %for.inc132, label %for.body111, !dbg !1111

for.body111:                                      ; preds = %if.end108, %for.inc130
  %42 = phi i8* [ %48, %for.inc130 ], [ %41, %if.end108 ]
  %p.0308 = phi i8** [ %incdec.ptr, %for.inc130 ], [ %40, %if.end108 ]
  %call116 = tail call i32 @strncmp(i8* %42, i8* %34, i32 %33) nounwind readonly, !dbg !1113
  %cmp117 = icmp eq i32 %call116, 0, !dbg !1113
  br i1 %cmp117, label %land.lhs.true119, label %for.inc130, !dbg !1113

land.lhs.true119:                                 ; preds = %for.body111
  %arrayidx122 = getelementptr inbounds i8* %42, i32 %33, !dbg !1113
  %43 = load i8* %arrayidx122, align 1, !dbg !1113, !tbaa !785
  %cmp124 = icmp eq i8 %43, 61, !dbg !1113
  br i1 %cmp124, label %if.then126, label %for.inc130, !dbg !1113

if.then126:                                       ; preds = %land.lhs.true119
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0311, i32 1), !dbg !1115
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !1115
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !1115
  br i1 %46, label %ioc_bb127, label %for.inc132, !dbg !1115

ioc_bb127:                                        ; preds = %if.then126
  %47 = zext i32 %n.0311 to i64, !dbg !1115
  tail call void @__ioc_report_add_overflow(i32 261, i32 10, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %47, i64 1, i8 5) nounwind, !dbg !1115
  br label %for.inc132, !dbg !1115

for.inc130:                                       ; preds = %for.body111, %land.lhs.true119
  %incdec.ptr = getelementptr inbounds i8** %p.0308, i32 1, !dbg !1111
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr}, i64 0, metadata !427), !dbg !1111
  %48 = load i8** %incdec.ptr, align 4, !dbg !1111, !tbaa !784
  %tobool110 = icmp eq i8* %48, null, !dbg !1111
  br i1 %tobool110, label %for.inc132, label %for.body111, !dbg !1111

for.inc132:                                       ; preds = %if.end108, %for.inc130, %ioc_bb127, %if.then126, %ioc_bb106, %if.then105
  %n.1 = phi i32 [ %37, %if.then105 ], [ %37, %ioc_bb106 ], [ %45, %if.then126 ], [ %45, %ioc_bb127 ], [ %n.0311, %for.inc130 ], [ %n.0311, %if.end108 ]
  %49 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1310, i32 1), !dbg !1105
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !1105
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !1105
  br i1 %51, label %ioc_bb133, label %for.cond91.backedge, !dbg !1105

for.cond91.backedge:                              ; preds = %for.inc132, %ioc_bb133
  %52 = load i32* %7, align 4, !dbg !1105, !tbaa !802
  %cmp94 = icmp ult i32 %50, %52, !dbg !1105
  br i1 %cmp94, label %for.body96, label %for.end135, !dbg !1105

ioc_bb133:                                        ; preds = %for.inc132
  %53 = zext i32 %i.1310 to i64, !dbg !1105
  tail call void @__ioc_report_add_overflow(i32 254, i32 38, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !1105
  br label %for.cond91.backedge, !dbg !1105

for.end135:                                       ; preds = %for.cond91.backedge, %cont90
  %n.0.lcssa = phi i32 [ 0, %cont90 ], [ %n.1, %for.cond91.backedge ]
  br i1 %cmp, label %if.else, label %if.then137, !dbg !1117

if.then137:                                       ; preds = %for.end135
  %54 = load i32* %last, align 4, !dbg !1118, !tbaa !802
  %55 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 %n.0.lcssa), !dbg !1118
  %56 = extractvalue { i32, i1 } %55, 0, !dbg !1118
  %57 = extractvalue { i32, i1 } %55, 1, !dbg !1118
  br i1 %57, label %ioc_bb138, label %cont141, !dbg !1118

ioc_bb138:                                        ; preds = %if.then137
  %58 = zext i32 %n.0.lcssa to i64, !dbg !1118
  %59 = zext i32 %54 to i64, !dbg !1118
  tail call void @__ioc_report_add_overflow(i32 267, i32 30, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %59, i64 %58, i8 5) nounwind, !dbg !1118
  br label %cont141, !dbg !1118

cont141:                                          ; preds = %ioc_bb138, %if.then137
  %60 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %56, i32 1), !dbg !1118
  %61 = extractvalue { i32, i1 } %60, 0, !dbg !1118
  %62 = extractvalue { i32, i1 } %60, 1, !dbg !1118
  br i1 %62, label %ioc_bb142, label %cont143, !dbg !1118

ioc_bb142:                                        ; preds = %cont141
  %63 = zext i32 %56 to i64, !dbg !1118
  tail call void @__ioc_report_add_overflow(i32 267, i32 34, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %63, i64 1, i8 5) nounwind, !dbg !1118
  br label %cont143, !dbg !1118

cont143:                                          ; preds = %cont141, %ioc_bb142
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 4), !dbg !1118
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !1118
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !1118
  br i1 %66, label %ioc_bb144, label %cont145, !dbg !1118

ioc_bb144:                                        ; preds = %cont143
  %67 = zext i32 %61 to i64, !dbg !1118
  tail call void @__ioc_report_mul_overflow(i32 267, i32 39, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %67, i64 4, i8 5) nounwind, !dbg !1118
  br label %cont145, !dbg !1118

cont145:                                          ; preds = %cont143, %ioc_bb144
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1118
  %68 = load %struct.ngx_log_s** %log, align 4, !dbg !1118, !tbaa !784
  %call146 = tail call i8* @ngx_alloc(i32 %65, %struct.ngx_log_s* %68) nounwind, !dbg !1118
  store i32 %n.0.lcssa, i32* %last, align 4, !dbg !1120, !tbaa !802
  br label %if.end154, !dbg !1121

if.else:                                          ; preds = %for.end135
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 1, !dbg !1122
  %69 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1122, !tbaa !784
  %70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0.lcssa, i32 1), !dbg !1122
  %71 = extractvalue { i32, i1 } %70, 0, !dbg !1122
  %72 = extractvalue { i32, i1 } %70, 1, !dbg !1122
  br i1 %72, label %ioc_bb149, label %cont150, !dbg !1122

ioc_bb149:                                        ; preds = %if.else
  %73 = zext i32 %n.0.lcssa to i64, !dbg !1122
  tail call void @__ioc_report_add_overflow(i32 271, i32 40, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %73, i64 1, i8 5) nounwind, !dbg !1122
  br label %cont150, !dbg !1122

cont150:                                          ; preds = %if.else, %ioc_bb149
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 4), !dbg !1122
  %75 = extractvalue { i32, i1 } %74, 0, !dbg !1122
  %76 = extractvalue { i32, i1 } %74, 1, !dbg !1122
  br i1 %76, label %ioc_bb151, label %cont152, !dbg !1122

ioc_bb151:                                        ; preds = %cont150
  %77 = zext i32 %71 to i64, !dbg !1122
  tail call void @__ioc_report_mul_overflow(i32 271, i32 45, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %77, i64 4, i8 5) nounwind, !dbg !1122
  br label %cont152, !dbg !1122

cont152:                                          ; preds = %cont150, %ioc_bb151
  %call153 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %69, i32 %75) nounwind, !dbg !1122
  br label %if.end154

if.end154:                                        ; preds = %cont152, %cont145
  %env.0.in = phi i8* [ %call146, %cont145 ], [ %call153, %cont152 ]
  %env.0 = bitcast i8* %env.0.in to i8**, !dbg !1118
  %cmp155 = icmp eq i8* %env.0.in, null, !dbg !1124
  br i1 %cmp155, label %return, label %for.cond163.preheader, !dbg !1124

for.cond163.preheader:                            ; preds = %if.end154
  %78 = load i32* %7, align 4, !dbg !1125, !tbaa !802
  %cmp166304 = icmp eq i32 %78, 0, !dbg !1125
  br i1 %cmp166304, label %for.end212, label %for.body168, !dbg !1125

for.body168:                                      ; preds = %for.cond163.preheader, %for.cond163.backedge
  %n.2306 = phi i32 [ %n.3, %for.cond163.backedge ], [ 0, %for.cond163.preheader ]
  %i.2305 = phi i32 [ %96, %for.cond163.backedge ], [ 0, %for.cond163.preheader ]
  %len170 = getelementptr inbounds %struct.ngx_str_t* %var.0, i32 %i.2305, i32 0, !dbg !1127
  %79 = load i32* %len170, align 4, !dbg !1127, !tbaa !802
  %data172 = getelementptr inbounds %struct.ngx_str_t* %var.0, i32 %i.2305, i32 1, !dbg !1127
  %80 = load i8** %data172, align 4, !dbg !1127, !tbaa !784
  %arrayidx173 = getelementptr inbounds i8* %80, i32 %79, !dbg !1127
  %81 = load i8* %arrayidx173, align 1, !dbg !1127, !tbaa !785
  %cmp175 = icmp eq i8 %81, 61, !dbg !1127
  br i1 %cmp175, label %if.then177, label %if.end183, !dbg !1127

if.then177:                                       ; preds = %for.body168
  %82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2306, i32 1), !dbg !1129
  %83 = extractvalue { i32, i1 } %82, 0, !dbg !1129
  %84 = extractvalue { i32, i1 } %82, 1, !dbg !1129
  br i1 %84, label %ioc_bb180, label %cont181, !dbg !1129

ioc_bb180:                                        ; preds = %if.then177
  %85 = zext i32 %n.2306 to i64, !dbg !1129
  tail call void @__ioc_report_add_overflow(i32 279, i32 12, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %85, i64 1, i8 5) nounwind, !dbg !1129
  br label %cont181, !dbg !1129

cont181:                                          ; preds = %if.then177, %ioc_bb180
  tail call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !433), !dbg !1129
  %arrayidx182 = getelementptr inbounds i8** %env.0, i32 %n.2306, !dbg !1129
  store i8* %80, i8** %arrayidx182, align 4, !dbg !1129, !tbaa !784
  br label %for.inc209, !dbg !1131

if.end183:                                        ; preds = %for.body168
  %86 = load i8*** @ngx_os_environ, align 4, !dbg !1132, !tbaa !784
  tail call void @llvm.dbg.value(metadata !{i8** %86}, i64 0, metadata !427), !dbg !1132
  %87 = load i8** %86, align 4, !dbg !1132, !tbaa !784
  %tobool185302 = icmp eq i8* %87, null, !dbg !1132
  br i1 %tobool185302, label %for.inc209, label %for.body186, !dbg !1132

for.body186:                                      ; preds = %if.end183, %for.inc206
  %88 = phi i8* [ %94, %for.inc206 ], [ %87, %if.end183 ]
  %p.1303 = phi i8** [ %incdec.ptr207, %for.inc206 ], [ %86, %if.end183 ]
  %call191 = tail call i32 @strncmp(i8* %88, i8* %80, i32 %79) nounwind readonly, !dbg !1134
  %cmp192 = icmp eq i32 %call191, 0, !dbg !1134
  br i1 %cmp192, label %land.lhs.true194, label %for.inc206, !dbg !1134

land.lhs.true194:                                 ; preds = %for.body186
  %arrayidx197 = getelementptr inbounds i8* %88, i32 %79, !dbg !1134
  %89 = load i8* %arrayidx197, align 1, !dbg !1134, !tbaa !785
  %cmp199 = icmp eq i8 %89, 61, !dbg !1134
  br i1 %cmp199, label %if.then201, label %for.inc206, !dbg !1134

if.then201:                                       ; preds = %land.lhs.true194
  %90 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2306, i32 1), !dbg !1136
  %91 = extractvalue { i32, i1 } %90, 0, !dbg !1136
  %92 = extractvalue { i32, i1 } %90, 1, !dbg !1136
  br i1 %92, label %ioc_bb202, label %cont203, !dbg !1136

ioc_bb202:                                        ; preds = %if.then201
  %93 = zext i32 %n.2306 to i64, !dbg !1136
  tail call void @__ioc_report_add_overflow(i32 284, i32 14, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %93, i64 1, i8 5) nounwind, !dbg !1136
  br label %cont203, !dbg !1136

cont203:                                          ; preds = %if.then201, %ioc_bb202
  tail call void @llvm.dbg.value(metadata !{i32 %91}, i64 0, metadata !433), !dbg !1136
  %arrayidx204 = getelementptr inbounds i8** %env.0, i32 %n.2306, !dbg !1136
  store i8* %88, i8** %arrayidx204, align 4, !dbg !1136, !tbaa !784
  br label %for.inc209, !dbg !1138

for.inc206:                                       ; preds = %for.body186, %land.lhs.true194
  %incdec.ptr207 = getelementptr inbounds i8** %p.1303, i32 1, !dbg !1132
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr207}, i64 0, metadata !427), !dbg !1132
  %94 = load i8** %incdec.ptr207, align 4, !dbg !1132, !tbaa !784
  %tobool185 = icmp eq i8* %94, null, !dbg !1132
  br i1 %tobool185, label %for.inc209, label %for.body186, !dbg !1132

for.inc209:                                       ; preds = %if.end183, %for.inc206, %cont203, %cont181
  %n.3 = phi i32 [ %83, %cont181 ], [ %91, %cont203 ], [ %n.2306, %for.inc206 ], [ %n.2306, %if.end183 ]
  %95 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2305, i32 1), !dbg !1125
  %96 = extractvalue { i32, i1 } %95, 0, !dbg !1125
  %97 = extractvalue { i32, i1 } %95, 1, !dbg !1125
  br i1 %97, label %ioc_bb210, label %for.cond163.backedge, !dbg !1125

for.cond163.backedge:                             ; preds = %for.inc209, %ioc_bb210
  %98 = load i32* %7, align 4, !dbg !1125, !tbaa !802
  %cmp166 = icmp ult i32 %96, %98, !dbg !1125
  br i1 %cmp166, label %for.body168, label %for.end212, !dbg !1125

ioc_bb210:                                        ; preds = %for.inc209
  %99 = zext i32 %i.2305 to i64, !dbg !1125
  tail call void @__ioc_report_add_overflow(i32 277, i32 38, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %99, i64 1, i8 5) nounwind, !dbg !1125
  br label %for.cond163.backedge, !dbg !1125

for.end212:                                       ; preds = %for.cond163.backedge, %for.cond163.preheader
  %n.2.lcssa = phi i32 [ 0, %for.cond163.preheader ], [ %n.3, %for.cond163.backedge ]
  %arrayidx213 = getelementptr inbounds i8** %env.0, i32 %n.2.lcssa, !dbg !1139
  store i8* null, i8** %arrayidx213, align 4, !dbg !1139, !tbaa !784
  br i1 %cmp, label %if.then216, label %return, !dbg !1140

if.then216:                                       ; preds = %for.end212
  %100 = getelementptr inbounds i8*** %2, i32 28, !dbg !1141
  store i8** %env.0, i8*** %100, align 4, !dbg !1141, !tbaa !784
  store i8** %env.0, i8*** @environ, align 4, !dbg !1143, !tbaa !784
  br label %return, !dbg !1144

return:                                           ; preds = %for.end212, %if.then216, %if.end154, %for.end, %land.lhs.true
  %retval.0 = phi i8** [ %4, %land.lhs.true ], [ null, %for.end ], [ null, %if.end154 ], [ %env.0, %if.then216 ], [ %env.0, %for.end212 ]
  ret i8** %retval.0, !dbg !1145
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

define i32 @ngx_exec_new_binary(%struct.ngx_cycle_s* %cycle, i8** %argv) nounwind {
entry:
  %n = alloca i32, align 4
  %ctx = alloca %struct.ngx_exec_ctx_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !453), !dbg !1146
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !454), !dbg !1146
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !460), !dbg !1147
  call void @llvm.dbg.declare(metadata !{%struct.ngx_exec_ctx_t* %ctx}, metadata !462), !dbg !1148
  %0 = bitcast %struct.ngx_exec_ctx_t* %ctx to i8*, !dbg !1149
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 16, i32 4, i1 false), !dbg !1149
  %1 = load i8** %argv, align 4, !dbg !1150, !tbaa !784
  %path = getelementptr inbounds %struct.ngx_exec_ctx_t* %ctx, i32 0, i32 0, !dbg !1150
  store i8* %1, i8** %path, align 4, !dbg !1150, !tbaa !784
  %name = getelementptr inbounds %struct.ngx_exec_ctx_t* %ctx, i32 0, i32 1, !dbg !1151
  store i8* getelementptr inbounds ([19 x i8]* @.str9, i32 0, i32 0), i8** %name, align 4, !dbg !1151, !tbaa !784
  %argv1 = getelementptr inbounds %struct.ngx_exec_ctx_t* %ctx, i32 0, i32 2, !dbg !1152
  store i8** %argv, i8*** %argv1, align 4, !dbg !1152, !tbaa !784
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !460), !dbg !1153
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !460), !dbg !1153
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !460), !dbg !1153
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !460), !dbg !1153
  call void @llvm.dbg.value(metadata !873, i64 0, metadata !460), !dbg !1153
  store i32 2, i32* %n, align 4, !dbg !1153, !tbaa !802
  %call = call i8** @ngx_set_environment(%struct.ngx_cycle_s* %cycle, i32* %n), !dbg !1154
  call void @llvm.dbg.value(metadata !{i8** %call}, i64 0, metadata !455), !dbg !1154
  %cmp = icmp eq i8** %call, null, !dbg !1155
  br i1 %cmp, label %return, label %if.end, !dbg !1155

if.end:                                           ; preds = %entry
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 1, !dbg !1156
  %2 = load i32* %nelts, align 4, !dbg !1156, !tbaa !802
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 12), !dbg !1156
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !1156
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !1156
  br i1 %5, label %ioc_bb12, label %cont13, !dbg !1156

ioc_bb12:                                         ; preds = %if.end
  %6 = zext i32 %2 to i64, !dbg !1156
  call void @__ioc_report_mul_overflow(i32 317, i32 63, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %6, i64 12, i8 5) nounwind, !dbg !1156
  br label %cont13, !dbg !1156

cont13:                                           ; preds = %if.end, %ioc_bb12
  %7 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 6), !dbg !1156
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !1156
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !1156
  br i1 %9, label %ioc_bb14, label %cont17, !dbg !1156

ioc_bb14:                                         ; preds = %cont13
  %10 = zext i32 %4 to i64, !dbg !1156
  call void @__ioc_report_add_overflow(i32 317, i32 36, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 6, i64 %10, i8 5) nounwind, !dbg !1156
  br label %cont17, !dbg !1156

cont17:                                           ; preds = %ioc_bb14, %cont13
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %8, i32 2), !dbg !1156
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1156
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1156
  br i1 %13, label %ioc_bb18, label %cont19, !dbg !1156

ioc_bb18:                                         ; preds = %cont17
  %14 = zext i32 %8 to i64, !dbg !1156
  call void @__ioc_report_add_overflow(i32 317, i32 97, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %14, i64 2, i8 5) nounwind, !dbg !1156
  br label %cont19, !dbg !1156

cont19:                                           ; preds = %cont17, %ioc_bb18
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1156
  %15 = load %struct.ngx_log_s** %log, align 4, !dbg !1156, !tbaa !784
  %call20 = call i8* @ngx_alloc(i32 %12, %struct.ngx_log_s* %15) nounwind, !dbg !1156
  call void @llvm.dbg.value(metadata !{i8* %call20}, i64 0, metadata !457), !dbg !1156
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call20, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i32 6, i32 1, i1 false), !dbg !1157
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !458), !dbg !1157
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 8, i32 0, !dbg !1158
  %16 = load i8** %elts, align 4, !dbg !1158, !tbaa !784
  %17 = bitcast i8* %16 to %struct.ngx_listening_s*, !dbg !1158
  call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %17}, i64 0, metadata !472), !dbg !1158
  %add.ptr = getelementptr inbounds i8* %call20, i32 6, !dbg !1157
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !459), !dbg !1159
  %18 = load i32* %nelts, align 4, !dbg !1159, !tbaa !802
  %cmp26126 = icmp eq i32 %18, 0, !dbg !1159
  br i1 %cmp26126, label %cont32, label %for.body, !dbg !1159

for.body:                                         ; preds = %cont19, %for.cond.backedge
  %p.0128 = phi i8* [ %call28, %for.cond.backedge ], [ %add.ptr, %cont19 ]
  %i.0127 = phi i32 [ %21, %for.cond.backedge ], [ 0, %cont19 ]
  %fd = getelementptr inbounds %struct.ngx_listening_s* %17, i32 %i.0127, i32 0, !dbg !1161
  %19 = load i32* %fd, align 4, !dbg !1161, !tbaa !802
  %call28 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %p.0128, i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 %19) nounwind, !dbg !1161
  call void @llvm.dbg.value(metadata !{i8* %call28}, i64 0, metadata !458), !dbg !1161
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0127, i32 1), !dbg !1159
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1159
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1159
  br i1 %22, label %ioc_bb29, label %for.cond.backedge, !dbg !1159

for.cond.backedge:                                ; preds = %for.body, %ioc_bb29
  %23 = load i32* %nelts, align 4, !dbg !1159, !tbaa !802
  %cmp26 = icmp ult i32 %21, %23, !dbg !1159
  br i1 %cmp26, label %for.body, label %cont32, !dbg !1159

ioc_bb29:                                         ; preds = %for.body
  %24 = zext i32 %i.0127 to i64, !dbg !1159
  call void @__ioc_report_add_overflow(i32 320, i32 46, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !1159
  br label %for.cond.backedge, !dbg !1159

cont32:                                           ; preds = %for.cond.backedge, %cont19
  %p.0.lcssa = phi i8* [ %add.ptr, %cont19 ], [ %call28, %for.cond.backedge ]
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !1163, !tbaa !785
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1164
  %25 = load i32* %n, align 4, !dbg !1164, !tbaa !802
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %25, i32 1), !dbg !1164
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !1164
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !1164
  br i1 %28, label %ioc_bb33, label %cont34, !dbg !1164

ioc_bb33:                                         ; preds = %cont32
  %29 = zext i32 %25 to i64, !dbg !1164
  call void @__ioc_report_add_overflow(i32 324, i32 8, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1164
  br label %cont34, !dbg !1164

cont34:                                           ; preds = %cont32, %ioc_bb33
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !460), !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !460), !dbg !1164
  store i32 %27, i32* %n, align 4, !dbg !1164, !tbaa !802
  %arrayidx35 = getelementptr inbounds i8** %call, i32 %25, !dbg !1164
  store i8* %call20, i8** %arrayidx35, align 4, !dbg !1164, !tbaa !784
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1165
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 1), !dbg !1165
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !1165
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !1165
  br i1 %32, label %ioc_bb36, label %cont37, !dbg !1165

ioc_bb36:                                         ; preds = %cont34
  %33 = zext i32 %27 to i64, !dbg !1165
  call void @__ioc_report_add_overflow(i32 327, i32 8, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind, !dbg !1165
  br label %cont37, !dbg !1165

cont37:                                           ; preds = %cont34, %ioc_bb36
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !460), !dbg !1165
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !460), !dbg !1165
  store i32 %31, i32* %n, align 4, !dbg !1165, !tbaa !802
  %arrayidx38 = getelementptr inbounds i8** %call, i32 %27, !dbg !1165
  store i8* getelementptr inbounds ([301 x i8]* @.str12, i32 0, i32 0), i8** %arrayidx38, align 4, !dbg !1165, !tbaa !784
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1166
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1166
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !460), !dbg !1166
  %arrayidx39 = getelementptr inbounds i8** %call, i32 %31, !dbg !1166
  store i8* null, i8** %arrayidx39, align 4, !dbg !1166, !tbaa !784
  %envp = getelementptr inbounds %struct.ngx_exec_ctx_t* %ctx, i32 0, i32 3, !dbg !1167
  store i8** %call, i8*** %envp, align 4, !dbg !1167, !tbaa !784
  %34 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1168, !tbaa !802
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 0, !dbg !1168
  %35 = load i8***** %conf_ctx, align 4, !dbg !1168, !tbaa !784
  %arrayidx40 = getelementptr inbounds i8**** %35, i32 %34, !dbg !1168
  %36 = load i8**** %arrayidx40, align 4, !dbg !1168, !tbaa !784
  %data = getelementptr inbounds i8*** %36, i32 20, !dbg !1169
  %37 = load i8*** %data, align 4, !dbg !1169
  %38 = bitcast i8** %37 to i8*, !dbg !1169
  %data42 = getelementptr inbounds i8*** %36, i32 22, !dbg !1169
  %39 = load i8*** %data42, align 4, !dbg !1169
  %40 = bitcast i8** %39 to i8*, !dbg !1169
  %call43 = call i32 @rename(i8* %38, i8* %40) nounwind, !dbg !1169
  %cmp44 = icmp eq i32 %call43, 0, !dbg !1169
  br i1 %cmp44, label %if.end63, label %cont48, !dbg !1169

cont48:                                           ; preds = %cont37
  %41 = load %struct.ngx_log_s** %log, align 4, !dbg !1170, !tbaa !784
  %log_level = getelementptr inbounds %struct.ngx_log_s* %41, i32 0, i32 0, !dbg !1170
  %42 = load i32* %log_level, align 4, !dbg !1170, !tbaa !802
  %cmp49 = icmp ugt i32 %42, 1, !dbg !1170
  br i1 %cmp49, label %cont52, label %if.end60, !dbg !1170

cont52:                                           ; preds = %cont48
  %call54 = call i32* @__errno_location() nounwind readnone, !dbg !1172
  %43 = load i32* %call54, align 4, !dbg !1172, !tbaa !802
  %44 = load i8*** %data, align 4, !dbg !1172
  %45 = load i8*** %data42, align 4, !dbg !1172
  %46 = load i8** %argv, align 4, !dbg !1172, !tbaa !784
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %41, i32 %43, i8* getelementptr inbounds ([66 x i8]* @.str13, i32 0, i32 0), i8** %44, i8** %45, i8* %46) nounwind, !dbg !1172
  br label %if.end60, !dbg !1172

if.end60:                                         ; preds = %cont52, %cont48
  %47 = bitcast i8** %call to i8*, !dbg !1173
  call void @free(i8* %47) nounwind, !dbg !1173
  call void @free(i8* %call20) nounwind, !dbg !1174
  br label %return, !dbg !1175

if.end63:                                         ; preds = %cont37
  %call64 = call i32 @ngx_execute(%struct.ngx_cycle_s* %cycle, %struct.ngx_exec_ctx_t* %ctx) nounwind, !dbg !1176
  call void @llvm.dbg.value(metadata !{i32 %call64}, i64 0, metadata !461), !dbg !1176
  %cmp67 = icmp eq i32 %call64, -1, !dbg !1177
  br i1 %cmp67, label %if.then68, label %if.end93, !dbg !1177

if.then68:                                        ; preds = %if.end63
  %48 = load i8*** %data42, align 4, !dbg !1178
  %49 = bitcast i8** %48 to i8*, !dbg !1178
  %50 = load i8*** %data, align 4, !dbg !1178
  %51 = bitcast i8** %50 to i8*, !dbg !1178
  %call73 = call i32 @rename(i8* %49, i8* %51) nounwind, !dbg !1178
  %cmp74 = icmp eq i32 %call73, 0, !dbg !1178
  br i1 %cmp74, label %if.end93, label %cont79, !dbg !1178

cont79:                                           ; preds = %if.then68
  %52 = load %struct.ngx_log_s** %log, align 4, !dbg !1180, !tbaa !784
  %log_level77 = getelementptr inbounds %struct.ngx_log_s* %52, i32 0, i32 0, !dbg !1180
  %53 = load i32* %log_level77, align 4, !dbg !1180, !tbaa !802
  %cmp80 = icmp ugt i32 %53, 1, !dbg !1180
  br i1 %cmp80, label %cont83, label %if.end93, !dbg !1180

cont83:                                           ; preds = %cont79
  %call85 = call i32* @__errno_location() nounwind readnone, !dbg !1182
  %54 = load i32* %call85, align 4, !dbg !1182, !tbaa !802
  %55 = load i8*** %data42, align 4, !dbg !1182
  %56 = load i8*** %data, align 4, !dbg !1182
  %57 = load i8** %argv, align 4, !dbg !1182, !tbaa !784
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %52, i32 %54, i8* getelementptr inbounds ([82 x i8]* @.str14, i32 0, i32 0), i8** %55, i8** %56, i8* %57) nounwind, !dbg !1182
  br label %if.end93, !dbg !1182

if.end93:                                         ; preds = %if.then68, %cont83, %cont79, %if.end63
  %58 = bitcast i8** %call to i8*, !dbg !1183
  call void @free(i8* %58) nounwind, !dbg !1183
  call void @free(i8* %call20) nounwind, !dbg !1184
  br label %return, !dbg !1185

return:                                           ; preds = %entry, %if.end93, %if.end60
  %retval.0 = phi i32 [ -1, %if.end60 ], [ %call64, %if.end93 ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !1186
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare i32 @rename(i8* nocapture, i8* nocapture) nounwind

declare void @free(i8* nocapture) nounwind

declare i32 @ngx_execute(%struct.ngx_cycle_s*, %struct.ngx_exec_ctx_t*)

define i64 @ngx_get_cpu_affinity(i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !478), !dbg !1187
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_core_module, i32 0, i32 1), align 4, !dbg !1188, !tbaa !802
  %1 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !1188, !tbaa !784
  %conf_ctx = getelementptr inbounds %struct.ngx_cycle_s* %1, i32 0, i32 0, !dbg !1188
  %2 = load volatile i8***** %conf_ctx, align 4, !dbg !1188, !tbaa !784
  %arrayidx = getelementptr inbounds i8**** %2, i32 %0, !dbg !1188
  %3 = load i8**** %arrayidx, align 4, !dbg !1188, !tbaa !784
  %cpu_affinity = getelementptr inbounds i8*** %3, i32 11, !dbg !1189
  %4 = load i8*** %cpu_affinity, align 4, !dbg !1189
  %5 = bitcast i8** %4 to i64*, !dbg !1189
  %cmp = icmp eq i8** %4, null, !dbg !1189
  br i1 %cmp, label %return, label %if.end, !dbg !1189

if.end:                                           ; preds = %entry
  %cpu_affinity_n = getelementptr inbounds i8*** %3, i32 10, !dbg !1190
  %6 = bitcast i8*** %cpu_affinity_n to i32*, !dbg !1190
  %7 = load i32* %6, align 4, !dbg !1190, !tbaa !802
  %cmp1 = icmp ugt i32 %7, %n, !dbg !1190
  br i1 %cmp1, label %if.then2, label %cont8, !dbg !1190

if.then2:                                         ; preds = %if.end
  %arrayidx4 = getelementptr inbounds i64* %5, i32 %n, !dbg !1191
  %8 = load i64* %arrayidx4, align 4, !dbg !1191, !tbaa !1193
  br label %return, !dbg !1191

cont8:                                            ; preds = %if.end
  %9 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 1), !dbg !1194
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !1194
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !1194
  br i1 %11, label %ioc_bb9, label %cont10, !dbg !1194

ioc_bb9:                                          ; preds = %cont8
  %12 = zext i32 %7 to i64, !dbg !1194
  tail call void @__ioc_report_sub_overflow(i32 835, i32 52, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !1194
  %.pre = load i8*** %cpu_affinity, align 4, !dbg !1194
  br label %cont10, !dbg !1194

cont10:                                           ; preds = %cont8, %ioc_bb9
  %13 = phi i8** [ %4, %cont8 ], [ %.pre, %ioc_bb9 ]
  %14 = bitcast i8** %13 to i64*, !dbg !1194
  %arrayidx12 = getelementptr inbounds i64* %14, i32 %10, !dbg !1194
  %15 = load i64* %arrayidx12, align 4, !dbg !1194, !tbaa !1193
  br label %return, !dbg !1194

return:                                           ; preds = %entry, %cont10, %if.then2
  %retval.0 = phi i64 [ %8, %if.then2 ], [ %15, %cont10 ], [ 0, %entry ]
  ret i64 %retval.0, !dbg !1195
}

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_conf_full_name(%struct.ngx_cycle_s*, %struct.ngx_str_t*, i32)

declare i8* @ngx_cpystrn(i8*, i8*, i32)

declare i8* @getenv(i8* nocapture) nounwind readonly

declare i32 @ngx_atoi(i8*, i32)

declare i32 @ngx_set_inherited_sockets(%struct.ngx_cycle_s*)

declare i32 @write(i32, i8* nocapture, i32)

declare i8* @ngx_conf_set_flag_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_msec_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_str_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_enum_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal i8* @ngx_set_user(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !650), !dbg !1196
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !651), !dbg !1196
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !652), !dbg !1196
  %user = getelementptr inbounds i8* %conf, i32 52, !dbg !1197
  %0 = bitcast i8* %user to i32*, !dbg !1197
  %1 = load i32* %0, align 4, !dbg !1197, !tbaa !802
  tail call void @__ioc_report_conversion(i32 697, i32 45, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1197
  %cmp = icmp eq i32 %1, -1, !dbg !1197
  br i1 %cmp, label %if.end, label %return, !dbg !1197

if.end:                                           ; preds = %entry
  %call = tail call i32 @geteuid() nounwind, !dbg !1198
  %cmp5 = icmp eq i32 %call, 0, !dbg !1198
  br i1 %cmp5, label %if.end9, label %cont8, !dbg !1198

cont8:                                            ; preds = %if.end
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([101 x i8]* @.str51, i32 0, i32 0)) nounwind, !dbg !1199
  br label %return, !dbg !1201

if.end9:                                          ; preds = %if.end
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1202
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !1202, !tbaa !784
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !1202
  %3 = load i8** %elts, align 4, !dbg !1202, !tbaa !784
  %data = getelementptr inbounds i8* %3, i32 12, !dbg !1203
  %4 = bitcast i8* %data to i8**, !dbg !1203
  %5 = load i8** %4, align 4, !dbg !1203, !tbaa !784
  %username = getelementptr inbounds i8* %conf, i32 48, !dbg !1203
  %6 = bitcast i8* %username to i8**, !dbg !1203
  store i8* %5, i8** %6, align 4, !dbg !1203, !tbaa !784
  %call10 = tail call i32* @__errno_location() nounwind readnone, !dbg !1204
  store i32 0, i32* %call10, align 4, !dbg !1204, !tbaa !802
  %7 = load i8** %4, align 4, !dbg !1205, !tbaa !784
  %call13 = tail call %struct.passwd* @getpwnam(i8* %7) nounwind, !dbg !1205
  tail call void @llvm.dbg.value(metadata !{%struct.passwd* %call13}, i64 0, metadata !656), !dbg !1205
  %cmp14 = icmp eq %struct.passwd* %call13, null, !dbg !1206
  br i1 %cmp14, label %cont17, label %if.end23, !dbg !1206

cont17:                                           ; preds = %if.end9
  %8 = load i32* %call10, align 4, !dbg !1207, !tbaa !802
  %9 = load i8** %4, align 4, !dbg !1207, !tbaa !784
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 %8, i8* getelementptr inbounds ([22 x i8]* @.str52, i32 0, i32 0), i8* %9) nounwind, !dbg !1207
  br label %return, !dbg !1209

if.end23:                                         ; preds = %if.end9
  %pw_uid = getelementptr inbounds %struct.passwd* %call13, i32 0, i32 2, !dbg !1210
  %10 = load i32* %pw_uid, align 4, !dbg !1210, !tbaa !802
  store i32 %10, i32* %0, align 4, !dbg !1210, !tbaa !802
  %11 = load %struct.ngx_array_s** %args, align 4, !dbg !1211, !tbaa !784
  %nelts = getelementptr inbounds %struct.ngx_array_s* %11, i32 0, i32 1, !dbg !1211
  %12 = load i32* %nelts, align 4, !dbg !1211, !tbaa !802
  %cmp28 = icmp eq i32 %12, 2, !dbg !1211
  br i1 %cmp28, label %cond.end, label %cond.false, !dbg !1211

cond.false:                                       ; preds = %if.end23
  %data32 = getelementptr inbounds i8* %3, i32 20, !dbg !1211
  %13 = bitcast i8* %data32 to i8**, !dbg !1211
  br label %cond.end, !dbg !1211

cond.end:                                         ; preds = %if.end23, %cond.false
  %cond.in = phi i8** [ %13, %cond.false ], [ %4, %if.end23 ]
  %cond = load i8** %cond.in, align 4, !dbg !1211
  tail call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !655), !dbg !1211
  store i32 0, i32* %call10, align 4, !dbg !1212, !tbaa !802
  %call34 = tail call %struct.group* @getgrnam(i8* %cond) nounwind, !dbg !1213
  tail call void @llvm.dbg.value(metadata !{%struct.group* %call34}, i64 0, metadata !668), !dbg !1213
  %cmp35 = icmp eq %struct.group* %call34, null, !dbg !1214
  br i1 %cmp35, label %cont38, label %if.end42, !dbg !1214

cont38:                                           ; preds = %cond.end
  %14 = load i32* %call10, align 4, !dbg !1215, !tbaa !802
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 %14, i8* getelementptr inbounds ([22 x i8]* @.str53, i32 0, i32 0), i8* %cond) nounwind, !dbg !1215
  br label %return, !dbg !1217

if.end42:                                         ; preds = %cond.end
  %gr_gid = getelementptr inbounds %struct.group* %call34, i32 0, i32 2, !dbg !1218
  %15 = load i32* %gr_gid, align 4, !dbg !1218, !tbaa !802
  %group43 = getelementptr inbounds i8* %conf, i32 56, !dbg !1218
  %16 = bitcast i8* %group43 to i32*, !dbg !1218
  store i32 %15, i32* %16, align 4, !dbg !1218, !tbaa !802
  br label %return, !dbg !1219

return:                                           ; preds = %entry, %if.end42, %cont38, %cont17, %cont8
  %retval.0 = phi i8* [ null, %cont8 ], [ inttoptr (i32 -1 to i8*), %cont17 ], [ inttoptr (i32 -1 to i8*), %cont38 ], [ null, %if.end42 ], [ getelementptr inbounds ([13 x i8]* @.str47, i32 0, i32 0), %entry ]
  ret i8* %retval.0, !dbg !1220
}

define internal i8* @ngx_set_priority(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !639), !dbg !1221
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !640), !dbg !1221
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !641), !dbg !1221
  %priority = getelementptr inbounds i8* %conf, i32 36, !dbg !1222
  %0 = bitcast i8* %priority to i32*, !dbg !1222
  %1 = load i32* %0, align 4, !dbg !1222, !tbaa !802
  %cmp = icmp eq i32 %1, 0, !dbg !1222
  br i1 %cmp, label %if.end, label %return, !dbg !1222

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1223
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !1223, !tbaa !784
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !1223
  %3 = load i8** %elts, align 4, !dbg !1223, !tbaa !784
  %arrayidx = getelementptr inbounds i8* %3, i32 8, !dbg !1224
  %data = getelementptr inbounds i8* %3, i32 12, !dbg !1224
  %4 = bitcast i8* %data to i8**, !dbg !1224
  %5 = load i8** %4, align 4, !dbg !1224, !tbaa !784
  %6 = load i8* %5, align 1, !dbg !1224, !tbaa !785
  switch i8 %6, label %cont22 [
    i8 45, label %if.end24
    i8 43, label %cont17
  ], !dbg !1224

cont17:                                           ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !776, i64 0, metadata !645), !dbg !1225
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !646), !dbg !1227
  br label %if.end24, !dbg !1228

cont22:                                           ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !645), !dbg !1229
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !646), !dbg !1231
  br label %if.end24

if.end24:                                         ; preds = %if.end, %cont17, %cont22
  %n.0 = phi i32 [ 1, %cont17 ], [ 0, %cont22 ], [ 1, %if.end ]
  %minus.0 = phi i32 [ 0, %cont17 ], [ 0, %cont22 ], [ 1, %if.end ]
  %arrayidx27 = getelementptr inbounds i8* %5, i32 %n.0, !dbg !1232
  %len = bitcast i8* %arrayidx to i32*, !dbg !1232
  %7 = load i32* %len, align 4, !dbg !1232, !tbaa !802
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 %n.0), !dbg !1232
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !1232
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !1232
  br i1 %10, label %ioc_bb29, label %cont30, !dbg !1232

ioc_bb29:                                         ; preds = %if.end24
  %11 = zext i32 %n.0 to i64, !dbg !1232
  %12 = zext i32 %7 to i64, !dbg !1232
  tail call void @__ioc_report_sub_overflow(i32 768, i32 61, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %12, i64 %11, i8 5) nounwind, !dbg !1232
  br label %cont30, !dbg !1232

cont30:                                           ; preds = %if.end24, %ioc_bb29
  %call = tail call i32 @ngx_atoi(i8* %arrayidx27, i32 %9) nounwind, !dbg !1232
  store i32 %call, i32* %0, align 4, !dbg !1232, !tbaa !802
  %cmp35 = icmp eq i32 %call, -1, !dbg !1233
  br i1 %cmp35, label %return, label %if.end38, !dbg !1233

if.end38:                                         ; preds = %cont30
  %tobool = icmp eq i32 %minus.0, 0, !dbg !1234
  br i1 %tobool, label %return, label %if.then39, !dbg !1234

if.then39:                                        ; preds = %if.end38
  %13 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %call), !dbg !1235
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !1235
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !1235
  br i1 %15, label %ioc_bb41, label %cont42, !dbg !1235

ioc_bb41:                                         ; preds = %if.then39
  %16 = sext i32 %call to i64, !dbg !1235
  tail call void @__ioc_report_sub_overflow(i32 773, i32 23, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i64 0, i64 %16, i8 13) nounwind, !dbg !1235
  br label %cont42, !dbg !1235

cont42:                                           ; preds = %if.then39, %ioc_bb41
  store i32 %14, i32* %0, align 4, !dbg !1235, !tbaa !802
  br label %return, !dbg !1237

return:                                           ; preds = %cont42, %if.end38, %cont30, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([13 x i8]* @.str47, i32 0, i32 0), %entry ], [ getelementptr inbounds ([15 x i8]* @.str50, i32 0, i32 0), %cont30 ], [ null, %if.end38 ], [ null, %cont42 ]
  ret i8* %retval.0, !dbg !1238
}

define internal i8* @ngx_set_cpu_affinity(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !626), !dbg !1239
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !627), !dbg !1239
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !628), !dbg !1239
  %cpu_affinity = getelementptr inbounds i8* %conf, i32 44, !dbg !1240
  %0 = bitcast i8* %cpu_affinity to i64**, !dbg !1240
  %1 = load i64** %0, align 4, !dbg !1240, !tbaa !784
  %tobool = icmp eq i64* %1, null, !dbg !1240
  br i1 %tobool, label %if.end, label %return, !dbg !1240

if.end:                                           ; preds = %entry
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1241
  %2 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1241, !tbaa !784
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1241
  %3 = load %struct.ngx_array_s** %args, align 4, !dbg !1241, !tbaa !784
  %nelts = getelementptr inbounds %struct.ngx_array_s* %3, i32 0, i32 1, !dbg !1241
  %4 = load i32* %nelts, align 4, !dbg !1241, !tbaa !802
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %4, i32 1), !dbg !1241
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !1241
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !1241
  br i1 %7, label %ioc_bb1, label %cont2, !dbg !1241

ioc_bb1:                                          ; preds = %if.end
  %8 = zext i32 %4 to i64, !dbg !1241
  tail call void @__ioc_report_sub_overflow(i32 790, i32 54, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %8, i64 1, i8 5) nounwind, !dbg !1241
  br label %cont2, !dbg !1241

cont2:                                            ; preds = %if.end, %ioc_bb1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8), !dbg !1241
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !1241
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !1241
  br i1 %11, label %ioc_bb3, label %cont4, !dbg !1241

ioc_bb3:                                          ; preds = %cont2
  %12 = zext i32 %6 to i64, !dbg !1241
  tail call void @__ioc_report_mul_overflow(i32 790, i32 59, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %12, i64 8, i8 5) nounwind, !dbg !1241
  br label %cont4, !dbg !1241

cont4:                                            ; preds = %cont2, %ioc_bb3
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %2, i32 %10) nounwind, !dbg !1241
  %13 = bitcast i8* %call to i64*, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{i64* %13}, i64 0, metadata !632), !dbg !1241
  %cmp = icmp eq i8* %call, null, !dbg !1242
  br i1 %cmp, label %return, label %if.end8, !dbg !1242

if.end8:                                          ; preds = %cont4
  %14 = load %struct.ngx_array_s** %args, align 4, !dbg !1243, !tbaa !784
  %nelts10 = getelementptr inbounds %struct.ngx_array_s* %14, i32 0, i32 1, !dbg !1243
  %15 = load i32* %nelts10, align 4, !dbg !1243, !tbaa !802
  %16 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %15, i32 1), !dbg !1243
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !1243
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !1243
  br i1 %18, label %ioc_bb13, label %cont14, !dbg !1243

ioc_bb13:                                         ; preds = %if.end8
  %19 = zext i32 %15 to i64, !dbg !1243
  tail call void @__ioc_report_sub_overflow(i32 794, i32 47, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %19, i64 1, i8 5) nounwind, !dbg !1243
  br label %cont14, !dbg !1243

cont14:                                           ; preds = %if.end8, %ioc_bb13
  %cpu_affinity_n = getelementptr inbounds i8* %conf, i32 40, !dbg !1243
  %20 = bitcast i8* %cpu_affinity_n to i32*, !dbg !1243
  store i32 %17, i32* %20, align 4, !dbg !1243, !tbaa !802
  store i64* %13, i64** %0, align 4, !dbg !1244, !tbaa !784
  %21 = load %struct.ngx_array_s** %args, align 4, !dbg !1245, !tbaa !784
  %elts = getelementptr inbounds %struct.ngx_array_s* %21, i32 0, i32 0, !dbg !1245
  %22 = load i8** %elts, align 4, !dbg !1245, !tbaa !784
  %23 = bitcast i8* %22 to %struct.ngx_str_t*, !dbg !1245
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %23}, i64 0, metadata !633), !dbg !1245
  tail call void @llvm.dbg.value(metadata !776, i64 0, metadata !635), !dbg !1246
  %nelts20114 = getelementptr inbounds %struct.ngx_array_s* %21, i32 0, i32 1, !dbg !1246
  %24 = load i32* %nelts20114, align 4, !dbg !1246, !tbaa !802
  %cmp21115 = icmp ugt i32 %24, 1, !dbg !1246
  br i1 %cmp21115, label %for.body, label %return, !dbg !1246

for.body:                                         ; preds = %cont14, %for.cond.backedge
  %n.0116 = phi i32 [ %41, %for.cond.backedge ], [ 1, %cont14 ]
  %len = getelementptr inbounds %struct.ngx_str_t* %23, i32 %n.0116, i32 0, !dbg !1248
  %25 = load i32* %len, align 4, !dbg !1248, !tbaa !802
  %cmp24 = icmp ugt i32 %25, 64, !dbg !1248
  br i1 %cmp24, label %cont27, label %cont34, !dbg !1248

cont27:                                           ; preds = %for.body
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([50 x i8]* @.str48, i32 0, i32 0)) nounwind, !dbg !1250
  br label %return, !dbg !1252

cont34:                                           ; preds = %for.body
  %26 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.0116, i32 1), !dbg !1253
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !1253
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !1253
  %29 = zext i32 %n.0116 to i64, !dbg !1253
  br i1 %28, label %ioc_bb35, label %cont36, !dbg !1253

ioc_bb35:                                         ; preds = %cont34
  tail call void @__ioc_report_sub_overflow(i32 802, i32 12, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1253
  %.pre = load i32* %len, align 4, !dbg !1254, !tbaa !802
  br label %cont36, !dbg !1253

cont36:                                           ; preds = %cont34, %ioc_bb35
  %30 = phi i32 [ %25, %cont34 ], [ %.pre, %ioc_bb35 ]
  %arrayidx37 = getelementptr inbounds i64* %13, i32 %27, !dbg !1253
  store i64 0, i64* %arrayidx37, align 4, !dbg !1253, !tbaa !1193
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !634), !dbg !1254
  %cmp43112 = icmp eq i32 %30, 0, !dbg !1254
  br i1 %cmp43112, label %for.inc82, label %for.body44.lr.ph, !dbg !1254

for.body44.lr.ph:                                 ; preds = %cont36
  %data = getelementptr inbounds %struct.ngx_str_t* %23, i32 %n.0116, i32 1, !dbg !1256
  br label %for.body44, !dbg !1254

for.body44:                                       ; preds = %for.cond40.backedge, %for.body44.lr.ph
  %i.0113 = phi i32 [ 0, %for.body44.lr.ph ], [ %36, %for.cond40.backedge ]
  %31 = load i8** %data, align 4, !dbg !1256, !tbaa !784
  %arrayidx46 = getelementptr inbounds i8* %31, i32 %i.0113, !dbg !1256
  %32 = load i8* %arrayidx46, align 1, !dbg !1256, !tbaa !785
  tail call void @llvm.dbg.value(metadata !{i8 %32}, i64 0, metadata !631), !dbg !1256
  %conv = zext i8 %32 to i32, !dbg !1258
  %cmp47 = icmp eq i8 %32, 32, !dbg !1258
  br i1 %cmp47, label %for.inc, label %cont52, !dbg !1258

cont52:                                           ; preds = %for.body44
  br i1 %28, label %ioc_bb53, label %cont57, !dbg !1259

ioc_bb53:                                         ; preds = %cont52
  tail call void @__ioc_report_sub_overflow(i32 808, i32 14, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1259
  br label %cont57, !dbg !1259

cont57:                                           ; preds = %cont52, %ioc_bb53
  %33 = load i64* %arrayidx37, align 4, !dbg !1259, !tbaa !1193
  %shl = shl i64 %33, 1, !dbg !1259
  store i64 %shl, i64* %arrayidx37, align 4, !dbg !1259, !tbaa !1193
  switch i8 %32, label %cont76 [
    i8 48, label %for.inc
    i8 49, label %cont70
  ], !dbg !1260

cont70:                                           ; preds = %cont57
  br i1 %28, label %ioc_bb71, label %cont72, !dbg !1261

ioc_bb71:                                         ; preds = %cont70
  tail call void @__ioc_report_sub_overflow(i32 813, i32 16, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1261
  %.pre118 = load i64* %arrayidx37, align 4, !dbg !1261, !tbaa !1193
  br label %cont72, !dbg !1261

cont72:                                           ; preds = %cont70, %ioc_bb71
  %34 = phi i64 [ %shl, %cont70 ], [ %.pre118, %ioc_bb71 ]
  %or = or i64 %34, 1, !dbg !1261
  store i64 %or, i64* %arrayidx37, align 4, !dbg !1261, !tbaa !1193
  br label %for.inc, !dbg !1263

cont76:                                           ; preds = %cont57
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([48 x i8]* @.str49, i32 0, i32 0), i32 %conv) nounwind, !dbg !1264
  br label %return, !dbg !1265

for.inc:                                          ; preds = %cont57, %for.body44, %cont72
  %35 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0113, i32 1), !dbg !1254
  %36 = extractvalue { i32, i1 } %35, 0, !dbg !1254
  %37 = extractvalue { i32, i1 } %35, 1, !dbg !1254
  br i1 %37, label %ioc_bb80, label %for.cond40.backedge, !dbg !1254

for.cond40.backedge:                              ; preds = %for.inc, %ioc_bb80
  %38 = load i32* %len, align 4, !dbg !1254, !tbaa !802
  %cmp43 = icmp ult i32 %36, %38, !dbg !1254
  br i1 %cmp43, label %for.body44, label %for.inc82, !dbg !1254

ioc_bb80:                                         ; preds = %for.inc
  %39 = zext i32 %i.0113 to i64, !dbg !1254
  tail call void @__ioc_report_add_overflow(i32 803, i32 36, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %39, i64 1, i8 5) nounwind, !dbg !1254
  br label %for.cond40.backedge, !dbg !1254

for.inc82:                                        ; preds = %for.cond40.backedge, %cont36
  %40 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0116, i32 1), !dbg !1246
  %41 = extractvalue { i32, i1 } %40, 0, !dbg !1246
  %42 = extractvalue { i32, i1 } %40, 1, !dbg !1246
  br i1 %42, label %ioc_bb83, label %for.cond.backedge, !dbg !1246

for.cond.backedge:                                ; preds = %for.inc82, %ioc_bb83
  %43 = load %struct.ngx_array_s** %args, align 4, !dbg !1246, !tbaa !784
  %nelts20 = getelementptr inbounds %struct.ngx_array_s* %43, i32 0, i32 1, !dbg !1246
  %44 = load i32* %nelts20, align 4, !dbg !1246, !tbaa !802
  %cmp21 = icmp ult i32 %41, %44, !dbg !1246
  br i1 %cmp21, label %for.body, label %return, !dbg !1246

ioc_bb83:                                         ; preds = %for.inc82
  tail call void @__ioc_report_add_overflow(i32 797, i32 41, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind, !dbg !1246
  br label %for.cond.backedge, !dbg !1246

return:                                           ; preds = %cont14, %for.cond.backedge, %cont4, %entry, %cont76, %cont27
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont27 ], [ inttoptr (i32 -1 to i8*), %cont76 ], [ getelementptr inbounds ([13 x i8]* @.str47, i32 0, i32 0), %entry ], [ inttoptr (i32 -1 to i8*), %cont4 ], [ null, %for.cond.backedge ], [ null, %cont14 ]
  ret i8* %retval.0, !dbg !1266
}

declare i8* @ngx_conf_set_off_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal i8* @ngx_set_env(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !615), !dbg !1267
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !616), !dbg !1267
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !617), !dbg !1267
  %env = getelementptr inbounds i8* %conf, i32 92, !dbg !1268
  %0 = bitcast i8* %env to %struct.ngx_array_s*, !dbg !1268
  %call = tail call i8* @ngx_array_push(%struct.ngx_array_s* %0) nounwind, !dbg !1268
  %cmp = icmp eq i8* %call, null, !dbg !1269
  br i1 %cmp, label %return, label %if.end, !dbg !1269

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1270
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !1270, !tbaa !784
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !1270
  %2 = load i8** %elts, align 4, !dbg !1270, !tbaa !784
  %arrayidx = getelementptr inbounds i8* %2, i32 8, !dbg !1271
  %3 = bitcast i8* %arrayidx to i64*, !dbg !1271
  %4 = bitcast i8* %call to i64*, !dbg !1271
  %5 = load i64* %3, align 4, !dbg !1271
  store i64 %5, i64* %4, align 4, !dbg !1271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !622), !dbg !1272
  %len = bitcast i8* %arrayidx to i32*, !dbg !1272
  %6 = load i32* %len, align 4, !dbg !1272, !tbaa !802
  %cmp421 = icmp eq i32 %6, 0, !dbg !1272
  br i1 %cmp421, label %return, label %for.body.lr.ph, !dbg !1272

for.body.lr.ph:                                   ; preds = %if.end
  %data = getelementptr inbounds i8* %2, i32 12, !dbg !1274
  %7 = bitcast i8* %data to i8**, !dbg !1274
  br label %for.body, !dbg !1272

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %8 = phi i32 [ %6, %for.body.lr.ph ], [ %14, %for.cond.backedge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %12, %for.cond.backedge ]
  %9 = load i8** %7, align 4, !dbg !1274, !tbaa !784
  %arrayidx6 = getelementptr inbounds i8* %9, i32 %i.022, !dbg !1274
  %10 = load i8* %arrayidx6, align 1, !dbg !1274, !tbaa !785
  %cmp7 = icmp eq i8 %10, 61, !dbg !1274
  br i1 %cmp7, label %if.then9, label %for.inc, !dbg !1274

if.then9:                                         ; preds = %for.body
  %len10 = bitcast i8* %call to i32*, !dbg !1276
  store i32 %i.022, i32* %len10, align 4, !dbg !1276, !tbaa !802
  br label %return, !dbg !1278

for.inc:                                          ; preds = %for.body
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.022, i32 1), !dbg !1272
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1272
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1272
  br i1 %13, label %ioc_bb12, label %for.cond.backedge, !dbg !1272

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb12
  %14 = phi i32 [ %8, %for.inc ], [ %.pre, %ioc_bb12 ], !dbg !1272
  %cmp4 = icmp ult i32 %12, %14, !dbg !1272
  br i1 %cmp4, label %for.body, label %return, !dbg !1272

ioc_bb12:                                         ; preds = %for.inc
  %15 = zext i32 %i.022 to i64, !dbg !1272
  tail call void @__ioc_report_add_overflow(i32 737, i32 34, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !1272
  %.pre = load i32* %len, align 4, !dbg !1272, !tbaa !802
  br label %for.cond.backedge, !dbg !1272

return:                                           ; preds = %if.end, %for.cond.backedge, %entry, %if.then9
  %retval.0 = phi i8* [ null, %if.then9 ], [ inttoptr (i32 -1 to i8*), %entry ], [ null, %for.cond.backedge ], [ null, %if.end ]
  ret i8* %retval.0, !dbg !1279
}

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i32 @geteuid() nounwind

declare %struct.passwd* @getpwnam(i8* nocapture) nounwind

declare %struct.group* @getgrnam(i8*)

define internal i8* @ngx_core_module_create_conf(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !697), !dbg !1280
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 1, !dbg !1281
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1281, !tbaa !784
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 116) nounwind, !dbg !1281
  %cmp = icmp eq i8* %call, null, !dbg !1282
  br i1 %cmp, label %return, label %cont, !dbg !1282

cont:                                             ; preds = %entry
  %daemon = bitcast i8* %call to i32*, !dbg !1283
  store i32 -1, i32* %daemon, align 4, !dbg !1283, !tbaa !802
  %master = getelementptr inbounds i8* %call, i32 4, !dbg !1284
  %1 = bitcast i8* %master to i32*, !dbg !1284
  store i32 -1, i32* %1, align 4, !dbg !1284, !tbaa !802
  tail call void @__ioc_report_conversion(i32 570, i32 43, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1285
  %timer_resolution = getelementptr inbounds i8* %call, i32 8, !dbg !1285
  call void @llvm.memset.p0i8.i64(i8* %timer_resolution, i8 -1, i64 28, i32 4, i1 false), !dbg !1286
  tail call void @__ioc_report_conversion(i32 576, i32 44, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1287
  %user = getelementptr inbounds i8* %call, i32 52, !dbg !1287
  %2 = bitcast i8* %user to i32*, !dbg !1287
  store i32 -1, i32* %2, align 4, !dbg !1287, !tbaa !802
  tail call void @__ioc_report_conversion(i32 577, i32 45, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1288
  %group = getelementptr inbounds i8* %call, i32 56, !dbg !1288
  %3 = bitcast i8* %group to i32*, !dbg !1288
  store i32 -1, i32* %3, align 4, !dbg !1288, !tbaa !802
  %4 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1289, !tbaa !784
  %env = getelementptr inbounds i8* %call, i32 92, !dbg !1289
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %4}, i64 0, metadata !1290) nounwind, !dbg !1291
  tail call void @llvm.dbg.value(metadata !776, i64 0, metadata !1292) nounwind, !dbg !1291
  tail call void @llvm.dbg.value(metadata !1293, i64 0, metadata !1294) nounwind, !dbg !1291
  %nelts.i = getelementptr inbounds i8* %call, i32 96, !dbg !1295
  %5 = bitcast i8* %nelts.i to i32*, !dbg !1295
  store i32 0, i32* %5, align 4, !dbg !1295, !tbaa !802
  %size1.i = getelementptr inbounds i8* %call, i32 100, !dbg !1296
  %6 = bitcast i8* %size1.i to i32*, !dbg !1296
  store i32 8, i32* %6, align 4, !dbg !1296, !tbaa !802
  %nalloc.i = getelementptr inbounds i8* %call, i32 104, !dbg !1297
  %7 = bitcast i8* %nalloc.i to i32*, !dbg !1297
  store i32 1, i32* %7, align 4, !dbg !1297, !tbaa !802
  %pool2.i = getelementptr inbounds i8* %call, i32 108, !dbg !1298
  %8 = bitcast i8* %pool2.i to %struct.ngx_pool_s**, !dbg !1298
  store %struct.ngx_pool_s* %4, %struct.ngx_pool_s** %8, align 4, !dbg !1298, !tbaa !784
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %4, i32 8) nounwind, !dbg !1299
  %elts.i = bitcast i8* %env to i8**, !dbg !1299
  store i8* %call.i, i8** %elts.i, align 4, !dbg !1299, !tbaa !784
  %cmp.i = icmp eq i8* %call.i, null, !dbg !1300
  %call. = select i1 %cmp.i, i8* null, i8* %call, !dbg !1289
  ret i8* %call., !dbg !1289

return:                                           ; preds = %entry
  ret i8* null, !dbg !1301
}

define internal i8* @ngx_core_module_init_conf(%struct.ngx_cycle_s* %cycle, i8* %conf) nounwind {
entry:
  %lock_file169 = alloca %struct.ngx_str_t, align 8
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !683), !dbg !1302
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !684), !dbg !1302
  %daemon = bitcast i8* %conf to i32*, !dbg !1303
  %0 = load i32* %daemon, align 4, !dbg !1303, !tbaa !802
  %cmp = icmp eq i32 %0, -1, !dbg !1303
  br i1 %cmp, label %if.then, label %if.end, !dbg !1303

if.then:                                          ; preds = %entry
  store i32 1, i32* %daemon, align 4, !dbg !1304, !tbaa !802
  br label %if.end, !dbg !1306

if.end:                                           ; preds = %if.then, %entry
  %master = getelementptr inbounds i8* %conf, i32 4, !dbg !1307
  %1 = bitcast i8* %master to i32*, !dbg !1307
  %2 = load i32* %1, align 4, !dbg !1307, !tbaa !802
  %cmp4 = icmp eq i32 %2, -1, !dbg !1307
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1307

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %1, align 4, !dbg !1308, !tbaa !802
  br label %if.end7, !dbg !1310

if.end7:                                          ; preds = %if.then5, %if.end
  %timer_resolution = getelementptr inbounds i8* %conf, i32 8, !dbg !1311
  %3 = bitcast i8* %timer_resolution to i32*, !dbg !1311
  %4 = load i32* %3, align 4, !dbg !1311, !tbaa !802
  call void @__ioc_report_conversion(i32 597, i32 48, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1311
  %cmp12 = icmp eq i32 %4, -1, !dbg !1311
  br i1 %cmp12, label %cont15, label %if.end17, !dbg !1311

cont15:                                           ; preds = %if.end7
  store i32 0, i32* %3, align 4, !dbg !1312, !tbaa !802
  br label %if.end17, !dbg !1314

if.end17:                                         ; preds = %cont15, %if.end7
  %worker_processes = getelementptr inbounds i8* %conf, i32 12, !dbg !1315
  %5 = bitcast i8* %worker_processes to i32*, !dbg !1315
  %6 = load i32* %5, align 4, !dbg !1315, !tbaa !802
  %cmp20 = icmp eq i32 %6, -1, !dbg !1315
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !1315

if.then21:                                        ; preds = %if.end17
  store i32 1, i32* %5, align 4, !dbg !1316, !tbaa !802
  br label %if.end23, !dbg !1318

if.end23:                                         ; preds = %if.then21, %if.end17
  %7 = phi i32 [ 1, %if.then21 ], [ %6, %if.end17 ]
  %debug_points = getelementptr inbounds i8* %conf, i32 16, !dbg !1319
  %8 = bitcast i8* %debug_points to i32*, !dbg !1319
  %9 = load i32* %8, align 4, !dbg !1319, !tbaa !802
  %cmp26 = icmp eq i32 %9, -1, !dbg !1319
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !1319

if.then27:                                        ; preds = %if.end23
  store i32 0, i32* %8, align 4, !dbg !1320, !tbaa !802
  br label %if.end29, !dbg !1322

if.end29:                                         ; preds = %if.then27, %if.end23
  %cpu_affinity_n = getelementptr inbounds i8* %conf, i32 40, !dbg !1323
  %10 = bitcast i8* %cpu_affinity_n to i32*, !dbg !1323
  %11 = load i32* %10, align 4, !dbg !1323, !tbaa !802
  %switch = icmp ult i32 %11, 2, !dbg !1323
  br i1 %switch, label %if.end50, label %land.lhs.true34, !dbg !1323

land.lhs.true34:                                  ; preds = %if.end29
  %12 = icmp sgt i32 %7, -1, !dbg !1323
  br i1 %12, label %cont39, label %ioc_bb38, !dbg !1323

ioc_bb38:                                         ; preds = %land.lhs.true34
  %13 = sext i32 %7 to i64, !dbg !1323
  call void @__ioc_report_conversion(i32 610, i32 101, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !1323
  br label %cont39, !dbg !1323

cont39:                                           ; preds = %ioc_bb38, %land.lhs.true34
  %cmp40 = icmp eq i32 %11, %7, !dbg !1323
  br i1 %cmp40, label %if.end50, label %if.then41, !dbg !1323

if.then41:                                        ; preds = %cont39
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1324
  %14 = load %struct.ngx_log_s** %log, align 4, !dbg !1324, !tbaa !784
  %log_level = getelementptr inbounds %struct.ngx_log_s* %14, i32 0, i32 0, !dbg !1324
  %15 = load i32* %log_level, align 4, !dbg !1324, !tbaa !802
  %cmp44 = icmp ugt i32 %15, 4, !dbg !1324
  br i1 %cmp44, label %cont47, label %if.end50, !dbg !1324

cont47:                                           ; preds = %if.then41
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 5, %struct.ngx_log_s* %14, i32 0, i8* getelementptr inbounds ([139 x i8]* @.str56, i32 0, i32 0)) nounwind, !dbg !1326
  br label %if.end50, !dbg !1326

if.end50:                                         ; preds = %if.end29, %cont39, %if.then41, %cont47
  %pid = getelementptr inbounds i8* %conf, i32 76, !dbg !1327
  %16 = bitcast i8* %pid to %struct.ngx_str_t*, !dbg !1327
  %len = bitcast i8* %pid to i32*, !dbg !1327
  %17 = load i32* %len, align 4, !dbg !1327, !tbaa !802
  %cmp53 = icmp eq i32 %17, 0, !dbg !1327
  br i1 %cmp53, label %cont58, label %cont65, !dbg !1327

cont58:                                           ; preds = %if.end50
  store i32 14, i32* %len, align 4, !dbg !1328, !tbaa !802
  %data = getelementptr inbounds i8* %conf, i32 80, !dbg !1330
  %18 = bitcast i8* %data to i8**, !dbg !1330
  store i8* getelementptr inbounds ([15 x i8]* @.str57, i32 0, i32 0), i8** %18, align 4, !dbg !1330, !tbaa !784
  br label %cont65, !dbg !1331

cont65:                                           ; preds = %if.end50, %cont58
  %call = call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %cycle, %struct.ngx_str_t* %16, i32 0) nounwind, !dbg !1332
  %cmp66 = icmp eq i32 %call, 0, !dbg !1332
  br i1 %cmp66, label %if.end70, label %return, !dbg !1332

if.end70:                                         ; preds = %cont65
  %19 = load i32* %len, align 4, !dbg !1333, !tbaa !802
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %19, i32 8), !dbg !1333
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1333
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1333
  br i1 %22, label %ioc_bb73, label %cont74, !dbg !1333

ioc_bb73:                                         ; preds = %if.end70
  %23 = zext i32 %19 to i64, !dbg !1333
  call void @__ioc_report_add_overflow(i32 624, i32 38, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %23, i64 8, i8 5) nounwind, !dbg !1333
  br label %cont74, !dbg !1333

cont74:                                           ; preds = %if.end70, %ioc_bb73
  %oldpid = getelementptr inbounds i8* %conf, i32 84, !dbg !1333
  %len75 = bitcast i8* %oldpid to i32*, !dbg !1333
  store i32 %21, i32* %len75, align 4, !dbg !1333, !tbaa !802
  %pool = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 1, !dbg !1334
  %24 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1334, !tbaa !784
  %call78 = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %24, i32 %21) nounwind, !dbg !1334
  %data80 = getelementptr inbounds i8* %conf, i32 88, !dbg !1334
  %25 = bitcast i8* %data80 to i8**, !dbg !1334
  store i8* %call78, i8** %25, align 4, !dbg !1334, !tbaa !784
  %cmp83 = icmp eq i8* %call78, null, !dbg !1335
  br i1 %cmp83, label %return, label %if.end87, !dbg !1335

if.end87:                                         ; preds = %cont74
  %data91 = getelementptr inbounds i8* %conf, i32 80, !dbg !1336
  %26 = bitcast i8* %data91 to i8**, !dbg !1336
  %27 = load i8** %26, align 4, !dbg !1336, !tbaa !784
  %28 = load i32* %len, align 4, !dbg !1336, !tbaa !802
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call78, i8* %27, i32 %28, i32 1, i1 false), !dbg !1336
  %29 = load i32* %len, align 4, !dbg !1336, !tbaa !802
  %add.ptr = getelementptr inbounds i8* %call78, i32 %29, !dbg !1336
  %30 = bitcast i8* %add.ptr to i64*, !dbg !1336
  store i64 31078118750711598, i64* %30, align 1, !dbg !1336
  %user = getelementptr inbounds i8* %conf, i32 52, !dbg !1337
  %31 = bitcast i8* %user to i32*, !dbg !1337
  %32 = load i32* %31, align 4, !dbg !1337, !tbaa !802
  call void @__ioc_report_conversion(i32 631, i32 45, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1337
  %cmp101 = icmp eq i32 %32, -1, !dbg !1337
  br i1 %cmp101, label %land.lhs.true102, label %if.end145, !dbg !1337

land.lhs.true102:                                 ; preds = %if.end87
  %call103 = call i32 @geteuid() nounwind, !dbg !1337
  %cmp106 = icmp eq i32 %call103, 0, !dbg !1337
  br i1 %cmp106, label %if.then107, label %if.end145, !dbg !1337

if.then107:                                       ; preds = %land.lhs.true102
  %call108 = call i32* @__errno_location() nounwind readnone, !dbg !1338
  store i32 0, i32* %call108, align 4, !dbg !1338, !tbaa !802
  %call109 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8]* @.str59, i32 0, i32 0)) nounwind, !dbg !1339
  call void @llvm.dbg.value(metadata !{%struct.passwd* %call109}, i64 0, metadata !689), !dbg !1339
  %cmp110 = icmp eq %struct.passwd* %call109, null, !dbg !1340
  br i1 %cmp110, label %if.then111, label %if.end125, !dbg !1340

if.then111:                                       ; preds = %if.then107
  %log112 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1341
  %33 = load %struct.ngx_log_s** %log112, align 4, !dbg !1341, !tbaa !784
  %log_level113 = getelementptr inbounds %struct.ngx_log_s* %33, i32 0, i32 0, !dbg !1341
  %34 = load i32* %log_level113, align 4, !dbg !1341, !tbaa !802
  %cmp116 = icmp eq i32 %34, 0, !dbg !1341
  br i1 %cmp116, label %return, label %cont119, !dbg !1341

cont119:                                          ; preds = %if.then111
  %35 = load i32* %call108, align 4, !dbg !1343, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %33, i32 %35, i8* getelementptr inbounds ([26 x i8]* @.str60, i32 0, i32 0)) nounwind, !dbg !1343
  br label %return, !dbg !1343

if.end125:                                        ; preds = %if.then107
  %username = getelementptr inbounds i8* %conf, i32 48, !dbg !1344
  %36 = bitcast i8* %username to i8**, !dbg !1344
  store i8* getelementptr inbounds ([7 x i8]* @.str59, i32 0, i32 0), i8** %36, align 4, !dbg !1344, !tbaa !784
  %pw_uid = getelementptr inbounds %struct.passwd* %call109, i32 0, i32 2, !dbg !1345
  %37 = load i32* %pw_uid, align 4, !dbg !1345, !tbaa !802
  store i32 %37, i32* %31, align 4, !dbg !1345, !tbaa !802
  store i32 0, i32* %call108, align 4, !dbg !1346, !tbaa !802
  %call128 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([7 x i8]* @.str59, i32 0, i32 0)) nounwind, !dbg !1347
  call void @llvm.dbg.value(metadata !{%struct.group* %call128}, i64 0, metadata !687), !dbg !1347
  %cmp129 = icmp eq %struct.group* %call128, null, !dbg !1348
  br i1 %cmp129, label %if.then130, label %if.end144, !dbg !1348

if.then130:                                       ; preds = %if.end125
  %log131 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1349
  %38 = load %struct.ngx_log_s** %log131, align 4, !dbg !1349, !tbaa !784
  %log_level132 = getelementptr inbounds %struct.ngx_log_s* %38, i32 0, i32 0, !dbg !1349
  %39 = load i32* %log_level132, align 4, !dbg !1349, !tbaa !802
  %cmp135 = icmp eq i32 %39, 0, !dbg !1349
  br i1 %cmp135, label %return, label %cont138, !dbg !1349

cont138:                                          ; preds = %if.then130
  %40 = load i32* %call108, align 4, !dbg !1351, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %38, i32 %40, i8* getelementptr inbounds ([26 x i8]* @.str61, i32 0, i32 0)) nounwind, !dbg !1351
  br label %return, !dbg !1351

if.end144:                                        ; preds = %if.end125
  %gr_gid = getelementptr inbounds %struct.group* %call128, i32 0, i32 2, !dbg !1352
  %41 = load i32* %gr_gid, align 4, !dbg !1352, !tbaa !802
  %group = getelementptr inbounds i8* %conf, i32 56, !dbg !1352
  %42 = bitcast i8* %group to i32*, !dbg !1352
  store i32 %41, i32* %42, align 4, !dbg !1352, !tbaa !802
  br label %if.end145, !dbg !1353

if.end145:                                        ; preds = %if.end144, %land.lhs.true102, %if.end87
  %lock_file = getelementptr inbounds i8* %conf, i32 68, !dbg !1354
  %43 = bitcast i8* %lock_file to %struct.ngx_str_t*, !dbg !1354
  %len146 = bitcast i8* %lock_file to i32*, !dbg !1354
  %44 = load i32* %len146, align 4, !dbg !1354, !tbaa !802
  %cmp149 = icmp eq i32 %44, 0, !dbg !1354
  br i1 %cmp149, label %cont154, label %cont162, !dbg !1354

cont154:                                          ; preds = %if.end145
  store i32 15, i32* %len146, align 4, !dbg !1355, !tbaa !802
  %data158 = getelementptr inbounds i8* %conf, i32 72, !dbg !1357
  %45 = bitcast i8* %data158 to i8**, !dbg !1357
  store i8* getelementptr inbounds ([16 x i8]* @.str62, i32 0, i32 0), i8** %45, align 4, !dbg !1357, !tbaa !784
  br label %cont162, !dbg !1358

cont162:                                          ; preds = %if.end145, %cont154
  %call163 = call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %cycle, %struct.ngx_str_t* %43, i32 0) nounwind, !dbg !1359
  %cmp164 = icmp eq i32 %call163, 0, !dbg !1359
  br i1 %cmp164, label %if.end168, label %return, !dbg !1359

if.end168:                                        ; preds = %cont162
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %lock_file169}, metadata !690), !dbg !1360
  %old_cycle = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 17, !dbg !1361
  %46 = load %struct.ngx_cycle_s** %old_cycle, align 4, !dbg !1361, !tbaa !784
  %lock_file170 = getelementptr inbounds %struct.ngx_cycle_s* %46, i32 0, i32 22, !dbg !1361
  %47 = bitcast %struct.ngx_str_t* %lock_file170 to i64*, !dbg !1361
  %48 = bitcast %struct.ngx_str_t* %lock_file169 to i64*, !dbg !1361
  %49 = load i64* %47, align 4, !dbg !1361
  store i64 %49, i64* %48, align 8, !dbg !1361
  %len171 = getelementptr inbounds %struct.ngx_str_t* %lock_file169, i32 0, i32 0, !dbg !1362
  %trunc = trunc i64 %49 to i32
  %tobool172 = icmp eq i32 %trunc, 0, !dbg !1362
  br i1 %tobool172, label %if.else, label %if.then173, !dbg !1362

if.then173:                                       ; preds = %if.end168
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %trunc, i32 1), !dbg !1363
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !1363
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !1363
  br i1 %52, label %ioc_bb175, label %cont176, !dbg !1363

ioc_bb175:                                        ; preds = %if.then173
  %53 = and i64 %49, 4294967295, !dbg !1363
  call void @__ioc_report_sub_overflow(i32 663, i32 20, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !1363
  br label %cont176, !dbg !1363

cont176:                                          ; preds = %if.then173, %ioc_bb175
  store i32 %51, i32* %len171, align 8, !dbg !1363, !tbaa !802
  %54 = load i32* %len146, align 4, !dbg !1365, !tbaa !802
  %cmp180 = icmp eq i32 %54, %51, !dbg !1365
  br i1 %cmp180, label %lor.lhs.false, label %if.then187, !dbg !1365

lor.lhs.false:                                    ; preds = %cont176
  %data182 = getelementptr inbounds i8* %conf, i32 72, !dbg !1365
  %55 = bitcast i8* %data182 to i8**, !dbg !1365
  %56 = load i8** %55, align 4, !dbg !1365, !tbaa !784
  %data183 = getelementptr inbounds %struct.ngx_str_t* %lock_file169, i32 0, i32 1, !dbg !1365
  %57 = load i8** %data183, align 4, !dbg !1365, !tbaa !784
  %call185 = call i32 @strncmp(i8* %56, i8* %57, i32 %51) nounwind readonly, !dbg !1365
  %cmp186 = icmp eq i32 %call185, 0, !dbg !1365
  br i1 %cmp186, label %if.end198, label %if.then187, !dbg !1365

if.then187:                                       ; preds = %lor.lhs.false, %cont176
  %log188 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1366
  %58 = load %struct.ngx_log_s** %log188, align 4, !dbg !1366, !tbaa !784
  %log_level189 = getelementptr inbounds %struct.ngx_log_s* %58, i32 0, i32 0, !dbg !1366
  %59 = load i32* %log_level189, align 4, !dbg !1366, !tbaa !802
  %cmp192 = icmp eq i32 %59, 0, !dbg !1366
  br i1 %cmp192, label %if.end198, label %cont195, !dbg !1366

cont195:                                          ; preds = %if.then187
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %58, i32 0, i8* getelementptr inbounds ([42 x i8]* @.str63, i32 0, i32 0)) nounwind, !dbg !1368
  %.pre = load i32* %len171, align 8, !dbg !1369, !tbaa !802
  br label %if.end198, !dbg !1368

if.end198:                                        ; preds = %if.then187, %lor.lhs.false, %cont195
  %60 = phi i32 [ %51, %if.then187 ], [ %51, %lor.lhs.false ], [ %.pre, %cont195 ]
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %60, i32 1), !dbg !1369
  %62 = extractvalue { i32, i1 } %61, 0, !dbg !1369
  %63 = extractvalue { i32, i1 } %61, 1, !dbg !1369
  br i1 %63, label %ioc_bb202, label %cont203, !dbg !1369

ioc_bb202:                                        ; preds = %if.end198
  %64 = zext i32 %60 to i64, !dbg !1369
  call void @__ioc_report_add_overflow(i32 668, i32 46, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %64, i64 1, i8 5) nounwind, !dbg !1369
  %.pre316 = load i32* %len171, align 8, !dbg !1370, !tbaa !802
  br label %cont203, !dbg !1369

cont203:                                          ; preds = %if.end198, %ioc_bb202
  %65 = phi i32 [ %60, %if.end198 ], [ %.pre316, %ioc_bb202 ]
  %len205 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 22, i32 0, !dbg !1369
  store i32 %62, i32* %len205, align 4, !dbg !1369, !tbaa !802
  %66 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %65, i32 8), !dbg !1370
  %67 = extractvalue { i32, i1 } %66, 0, !dbg !1370
  %68 = extractvalue { i32, i1 } %66, 1, !dbg !1370
  br i1 %68, label %ioc_bb207, label %cont208, !dbg !1370

ioc_bb207:                                        ; preds = %cont203
  %69 = zext i32 %65 to i64, !dbg !1370
  call void @__ioc_report_add_overflow(i32 669, i32 21, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %69, i64 8, i8 5) nounwind, !dbg !1370
  br label %cont208, !dbg !1370

cont208:                                          ; preds = %cont203, %ioc_bb207
  store i32 %67, i32* %len171, align 8, !dbg !1370, !tbaa !802
  %70 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1371, !tbaa !784
  %call210 = call i8* @ngx_pstrdup(%struct.ngx_pool_s* %70, %struct.ngx_str_t* %lock_file169) nounwind, !dbg !1371
  %data212 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 22, i32 1, !dbg !1371
  store i8* %call210, i8** %data212, align 4, !dbg !1371, !tbaa !784
  %cmp215 = icmp eq i8* %call210, null, !dbg !1372
  br i1 %cmp215, label %return, label %if.end252, !dbg !1372

if.else:                                          ; preds = %if.end168
  %71 = load i32* %len146, align 4, !dbg !1373, !tbaa !802
  %72 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 1), !dbg !1373
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !1373
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !1373
  br i1 %74, label %ioc_bb224, label %cont225, !dbg !1373

ioc_bb224:                                        ; preds = %if.else
  %75 = zext i32 %71 to i64, !dbg !1373
  call void @__ioc_report_add_overflow(i32 676, i32 53, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %75, i64 1, i8 5) nounwind, !dbg !1373
  br label %cont225, !dbg !1373

cont225:                                          ; preds = %if.else, %ioc_bb224
  %len227 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 22, i32 0, !dbg !1373
  store i32 %73, i32* %len227, align 4, !dbg !1373, !tbaa !802
  %76 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1375, !tbaa !784
  %77 = load i32* %len146, align 4, !dbg !1375, !tbaa !802
  %78 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %77, i32 8), !dbg !1375
  %79 = extractvalue { i32, i1 } %78, 0, !dbg !1375
  %80 = extractvalue { i32, i1 } %78, 1, !dbg !1375
  br i1 %80, label %ioc_bb231, label %cont232, !dbg !1375

ioc_bb231:                                        ; preds = %cont225
  %81 = zext i32 %77 to i64, !dbg !1375
  call void @__ioc_report_add_overflow(i32 677, i32 81, i8* getelementptr inbounds ([17 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %81, i64 8, i8 5) nounwind, !dbg !1375
  br label %cont232, !dbg !1375

cont232:                                          ; preds = %cont225, %ioc_bb231
  %call233 = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %76, i32 %79) nounwind, !dbg !1375
  %data235 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 22, i32 1, !dbg !1375
  store i8* %call233, i8** %data235, align 4, !dbg !1375, !tbaa !784
  %cmp238 = icmp eq i8* %call233, null, !dbg !1376
  br i1 %cmp238, label %return, label %if.end242, !dbg !1376

if.end242:                                        ; preds = %cont232
  %data246 = getelementptr inbounds i8* %conf, i32 72, !dbg !1377
  %82 = bitcast i8* %data246 to i8**, !dbg !1377
  %83 = load i8** %82, align 4, !dbg !1377, !tbaa !784
  %84 = load i32* %len146, align 4, !dbg !1377, !tbaa !802
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call233, i8* %83, i32 %84, i32 1, i1 false), !dbg !1377
  %85 = load i32* %len146, align 4, !dbg !1377, !tbaa !802
  %add.ptr251 = getelementptr inbounds i8* %call233, i32 %85, !dbg !1377
  %86 = bitcast i8* %add.ptr251 to i64*, !dbg !1377
  store i64 32774678059901230, i64* %86, align 1, !dbg !1377
  br label %if.end252

if.end252:                                        ; preds = %cont208, %if.end242
  br label %return, !dbg !1378

return:                                           ; preds = %cont232, %cont208, %cont162, %if.then130, %cont138, %if.then111, %cont119, %cont74, %cont65, %if.end252
  %retval.0 = phi i8* [ null, %if.end252 ], [ inttoptr (i32 -1 to i8*), %cont65 ], [ inttoptr (i32 -1 to i8*), %cont74 ], [ inttoptr (i32 -1 to i8*), %cont119 ], [ inttoptr (i32 -1 to i8*), %if.then111 ], [ inttoptr (i32 -1 to i8*), %cont138 ], [ inttoptr (i32 -1 to i8*), %if.then130 ], [ inttoptr (i32 -1 to i8*), %cont162 ], [ inttoptr (i32 -1 to i8*), %cont208 ], [ inttoptr (i32 -1 to i8*), %cont232 ]
  ret i8* %retval.0, !dbg !1379
}

declare i8* @ngx_pstrdup(%struct.ngx_pool_s*, %struct.ngx_str_t*)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/nginx.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !700} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !419, metadata !445, metadata !473, metadata !481, metadata !490, metadata !501, metadata !540, metadata !550, metadata !560, metadata !566, metadata !575, metadata !623, metadata !636, metadata !647, metadata !678, metadata !692}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 45, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !14, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [main]
!6 = metadata !{i32 786473, metadata !"src/core/nginx.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!11 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!13 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !24, metadata !70, metadata !385, metadata !386}
!16 = metadata !{i32 786689, metadata !5, metadata !"argc", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 45]
!17 = metadata !{i32 786689, metadata !5, metadata !"argv", metadata !6, i32 33554477, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 45]
!18 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !6, i32 47, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 47]
!19 = metadata !{i32 786443, metadata !5, i32 46, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!20 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !21, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!21 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !21, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!23 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !21, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!24 = metadata !{i32 786688, metadata !19, metadata !"log", metadata !6, i32 48, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 48]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!26 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !27, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!27 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !29, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!29 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!30 = metadata !{metadata !31, metadata !35, metadata !57, metadata !60, metadata !67, metadata !69}
!31 = metadata !{i32 786445, metadata !28, metadata !"log_level", metadata !29, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!32 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !21, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!33 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !21, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!34 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!35 = metadata !{i32 786445, metadata !28, metadata !"file", metadata !29, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!37 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !29, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!38 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !21, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !42, metadata !54, metadata !55, metadata !56}
!40 = metadata !{i32 786445, metadata !38, metadata !"fd", metadata !21, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!41 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !27, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !38, metadata !"name", metadata !21, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!43 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !21, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!44 = metadata !{i32 786451, null, metadata !"", metadata !45, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!45 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!46 = metadata !{metadata !47, metadata !49}
!47 = metadata !{i32 786445, metadata !44, metadata !"len", metadata !45, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!48 = metadata !{i32 786454, null, metadata !"size_t", metadata !45, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!49 = metadata !{i32 786445, metadata !44, metadata !"data", metadata !45, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!51 = metadata !{i32 786454, null, metadata !"u_char", metadata !45, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!52 = metadata !{i32 786454, null, metadata !"__u_char", metadata !45, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!53 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!54 = metadata !{i32 786445, metadata !38, metadata !"buffer", metadata !21, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !50} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!55 = metadata !{i32 786445, metadata !38, metadata !"pos", metadata !21, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !38, metadata !"last", metadata !21, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !50} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!57 = metadata !{i32 786445, metadata !28, metadata !"connection", metadata !29, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!58 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !29, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!59 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !28, metadata !"handler", metadata !29, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !61} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!61 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !29, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!62 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !50, metadata !65, metadata !50, metadata !48}
!65 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!66 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !29, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!67 = metadata !{i32 786445, metadata !28, metadata !"data", metadata !29, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !28, metadata !"action", metadata !29, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!70 = metadata !{i32 786688, metadata !19, metadata !"cycle", metadata !6, i32 49, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cycle] [line 49]
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!72 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !21, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!73 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !74, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!74 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!75 = metadata !{metadata !76, metadata !80, metadata !210, metadata !211, metadata !212, metadata !340, metadata !341, metadata !342, metadata !343, metadata !352, metadata !353, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384}
!76 = metadata !{i32 786445, metadata !73, metadata !"conf_ctx", metadata !74, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!77 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!79 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !73, metadata !"pool", metadata !74, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !81} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!82 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !83, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!83 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!84 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !85, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!85 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!86 = metadata !{metadata !87, metadata !97, metadata !98, metadata !99, metadata !190, metadata !197, metadata !209}
!87 = metadata !{i32 786445, metadata !84, metadata !"d", metadata !85, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!88 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !85, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!89 = metadata !{i32 786451, null, metadata !"", metadata !85, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !96}
!91 = metadata !{i32 786445, metadata !89, metadata !"last", metadata !85, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !89, metadata !"end", metadata !85, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!93 = metadata !{i32 786445, metadata !89, metadata !"next", metadata !85, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !94} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!95 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !85, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!96 = metadata !{i32 786445, metadata !89, metadata !"failed", metadata !85, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!97 = metadata !{i32 786445, metadata !84, metadata !"max", metadata !85, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!98 = metadata !{i32 786445, metadata !84, metadata !"current", metadata !85, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !94} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!99 = metadata !{i32 786445, metadata !84, metadata !"chain", metadata !85, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !100} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!101 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !85, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!102 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !103, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!103 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!104 = metadata !{metadata !105, metadata !187}
!105 = metadata !{i32 786445, metadata !102, metadata !"buf", metadata !103, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!107 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !103, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!108 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !103, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !117, metadata !118, metadata !119, metadata !120, metadata !122, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!110 = metadata !{i32 786445, metadata !108, metadata !"pos", metadata !103, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!111 = metadata !{i32 786445, metadata !108, metadata !"last", metadata !103, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!112 = metadata !{i32 786445, metadata !108, metadata !"file_pos", metadata !103, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!113 = metadata !{i32 786454, null, metadata !"off_t", metadata !103, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!114 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !103, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!115 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !103, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!116 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!117 = metadata !{i32 786445, metadata !108, metadata !"file_last", metadata !103, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!118 = metadata !{i32 786445, metadata !108, metadata !"start", metadata !103, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!119 = metadata !{i32 786445, metadata !108, metadata !"end", metadata !103, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !50} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!120 = metadata !{i32 786445, metadata !108, metadata !"tag", metadata !103, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !121} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!121 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !103, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!122 = metadata !{i32 786445, metadata !108, metadata !"file", metadata !103, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !123} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!123 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!124 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !103, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!125 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !27, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!127 = metadata !{i32 786445, metadata !125, metadata !"fd", metadata !27, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!128 = metadata !{i32 786445, metadata !125, metadata !"name", metadata !27, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!129 = metadata !{i32 786445, metadata !125, metadata !"info", metadata !27, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !130} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!130 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !27, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!131 = metadata !{i32 786451, null, metadata !"stat", metadata !132, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!132 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!133 = metadata !{metadata !134, metadata !138, metadata !140, metadata !142, metadata !144, metadata !146, metadata !148, metadata !150, metadata !151, metadata !152, metadata !153, metadata !156, metadata !158, metadata !165, metadata !166, metadata !167}
!134 = metadata !{i32 786445, metadata !131, metadata !"st_dev", metadata !132, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!135 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !132, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!136 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !132, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!137 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!138 = metadata !{i32 786445, metadata !131, metadata !"__pad1", metadata !132, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!139 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!140 = metadata !{i32 786445, metadata !131, metadata !"__st_ino", metadata !132, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!141 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !132, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!142 = metadata !{i32 786445, metadata !131, metadata !"st_mode", metadata !132, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!143 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !132, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!144 = metadata !{i32 786445, metadata !131, metadata !"st_nlink", metadata !132, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !145} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!145 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !132, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!146 = metadata !{i32 786445, metadata !131, metadata !"st_uid", metadata !132, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !147} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!147 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !132, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!148 = metadata !{i32 786445, metadata !131, metadata !"st_gid", metadata !132, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !149} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!149 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !132, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!150 = metadata !{i32 786445, metadata !131, metadata !"st_rdev", metadata !132, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !135} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!151 = metadata !{i32 786445, metadata !131, metadata !"__pad2", metadata !132, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !139} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!152 = metadata !{i32 786445, metadata !131, metadata !"st_size", metadata !132, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !114} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!153 = metadata !{i32 786445, metadata !131, metadata !"st_blksize", metadata !132, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !154} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!154 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !132, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!155 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!156 = metadata !{i32 786445, metadata !131, metadata !"st_blocks", metadata !132, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !157} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!157 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !132, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!158 = metadata !{i32 786445, metadata !131, metadata !"st_atim", metadata !132, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !159} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!159 = metadata !{i32 786451, null, metadata !"timespec", metadata !160, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!160 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!161 = metadata !{metadata !162, metadata !164}
!162 = metadata !{i32 786445, metadata !159, metadata !"tv_sec", metadata !160, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!163 = metadata !{i32 786454, null, metadata !"__time_t", metadata !160, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!164 = metadata !{i32 786445, metadata !159, metadata !"tv_nsec", metadata !160, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!165 = metadata !{i32 786445, metadata !131, metadata !"st_mtim", metadata !132, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !159} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!166 = metadata !{i32 786445, metadata !131, metadata !"st_ctim", metadata !132, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !159} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!167 = metadata !{i32 786445, metadata !131, metadata !"st_ino", metadata !132, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !168} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!168 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !132, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!169 = metadata !{i32 786445, metadata !125, metadata !"offset", metadata !27, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !113} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!170 = metadata !{i32 786445, metadata !125, metadata !"sys_offset", metadata !27, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !113} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!171 = metadata !{i32 786445, metadata !125, metadata !"log", metadata !27, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !25} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!172 = metadata !{i32 786445, metadata !125, metadata !"valid_info", metadata !27, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !34} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!173 = metadata !{i32 786445, metadata !125, metadata !"directio", metadata !27, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !34} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!174 = metadata !{i32 786445, metadata !108, metadata !"shadow", metadata !103, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !106} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!175 = metadata !{i32 786445, metadata !108, metadata !"temporary", metadata !103, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!176 = metadata !{i32 786445, metadata !108, metadata !"memory", metadata !103, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !34} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!177 = metadata !{i32 786445, metadata !108, metadata !"mmap", metadata !103, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !34} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!178 = metadata !{i32 786445, metadata !108, metadata !"recycled", metadata !103, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !34} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!179 = metadata !{i32 786445, metadata !108, metadata !"in_file", metadata !103, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !34} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!180 = metadata !{i32 786445, metadata !108, metadata !"flush", metadata !103, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !34} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!181 = metadata !{i32 786445, metadata !108, metadata !"sync", metadata !103, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !34} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!182 = metadata !{i32 786445, metadata !108, metadata !"last_buf", metadata !103, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !34} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!183 = metadata !{i32 786445, metadata !108, metadata !"last_in_chain", metadata !103, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !34} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!184 = metadata !{i32 786445, metadata !108, metadata !"last_shadow", metadata !103, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !34} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!185 = metadata !{i32 786445, metadata !108, metadata !"temp_file", metadata !103, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!186 = metadata !{i32 786445, metadata !108, metadata !"num", metadata !103, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!187 = metadata !{i32 786445, metadata !102, metadata !"next", metadata !103, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !188} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!189 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !103, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!190 = metadata !{i32 786445, metadata !84, metadata !"large", metadata !85, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !191} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!191 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!192 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !85, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!193 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !85, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786445, metadata !193, metadata !"next", metadata !85, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!196 = metadata !{i32 786445, metadata !193, metadata !"alloc", metadata !85, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!197 = metadata !{i32 786445, metadata !84, metadata !"cleanup", metadata !85, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !198} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!198 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!199 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !85, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!200 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !85, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !207, metadata !208}
!202 = metadata !{i32 786445, metadata !200, metadata !"handler", metadata !85, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!203 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !85, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{null, metadata !68}
!207 = metadata !{i32 786445, metadata !200, metadata !"data", metadata !85, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!208 = metadata !{i32 786445, metadata !200, metadata !"next", metadata !85, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !198} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!209 = metadata !{i32 786445, metadata !84, metadata !"log", metadata !85, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !25} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!210 = metadata !{i32 786445, metadata !73, metadata !"log", metadata !74, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!211 = metadata !{i32 786445, metadata !73, metadata !"new_log", metadata !74, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!212 = metadata !{i32 786445, metadata !73, metadata !"files", metadata !74, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !213} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!213 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!215 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !74, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!216 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !217, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!217 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!218 = metadata !{metadata !219, metadata !220, metadata !225, metadata !226, metadata !228, metadata !237, metadata !239, metadata !244, metadata !249, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339}
!219 = metadata !{i32 786445, metadata !216, metadata !"data", metadata !217, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!220 = metadata !{i32 786445, metadata !216, metadata !"read", metadata !217, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !221} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!221 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !222} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!222 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !217, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!223 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !224, i32 22, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 22, size 0, align 0, offset 0] [fwd] [from ]
!224 = metadata !{i32 786473, metadata !"src/core/ngx_core.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!225 = metadata !{i32 786445, metadata !216, metadata !"write", metadata !217, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !221} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!226 = metadata !{i32 786445, metadata !216, metadata !"fd", metadata !217, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !227} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!227 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !217, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!228 = metadata !{i32 786445, metadata !216, metadata !"recv", metadata !217, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !229} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!229 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !217, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!230 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{metadata !233, metadata !235, metadata !50, metadata !48}
!233 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !217, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!234 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !217, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!235 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!236 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !217, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!237 = metadata !{i32 786445, metadata !216, metadata !"send", metadata !217, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !238} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!238 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !217, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !216, metadata !"recv_chain", metadata !217, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !240} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!240 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !217, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !233, metadata !235, metadata !100}
!244 = metadata !{i32 786445, metadata !216, metadata !"send_chain", metadata !217, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !245} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!245 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !217, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!246 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{metadata !100, metadata !235, metadata !100, metadata !113}
!249 = metadata !{i32 786445, metadata !216, metadata !"listening", metadata !217, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !250} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!250 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!251 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !217, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!252 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !217, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!253 = metadata !{metadata !254, metadata !255, metadata !266, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306}
!254 = metadata !{i32 786445, metadata !252, metadata !"fd", metadata !217, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!255 = metadata !{i32 786445, metadata !252, metadata !"sockaddr", metadata !217, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !256} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!256 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!257 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !258, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!258 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!259 = metadata !{metadata !260, metadata !262}
!260 = metadata !{i32 786445, metadata !257, metadata !"sa_family", metadata !258, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !261} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!261 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !258, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!262 = metadata !{i32 786445, metadata !257, metadata !"sa_data", metadata !258, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !263} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!263 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !13, metadata !264, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!264 = metadata !{metadata !265}
!265 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!266 = metadata !{i32 786445, metadata !252, metadata !"socklen", metadata !217, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !267} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!267 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !217, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!268 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !217, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!269 = metadata !{i32 786445, metadata !252, metadata !"addr_text_max_len", metadata !217, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!270 = metadata !{i32 786445, metadata !252, metadata !"addr_text", metadata !217, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!271 = metadata !{i32 786445, metadata !252, metadata !"type", metadata !217, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!272 = metadata !{i32 786445, metadata !252, metadata !"backlog", metadata !217, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!273 = metadata !{i32 786445, metadata !252, metadata !"rcvbuf", metadata !217, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!274 = metadata !{i32 786445, metadata !252, metadata !"sndbuf", metadata !217, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !9} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!275 = metadata !{i32 786445, metadata !252, metadata !"keepidle", metadata !217, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!276 = metadata !{i32 786445, metadata !252, metadata !"keepintvl", metadata !217, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !9} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!277 = metadata !{i32 786445, metadata !252, metadata !"keepcnt", metadata !217, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!278 = metadata !{i32 786445, metadata !252, metadata !"handler", metadata !217, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !279} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!279 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !217, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !280} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!280 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{null, metadata !235}
!283 = metadata !{i32 786445, metadata !252, metadata !"servers", metadata !217, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !68} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!284 = metadata !{i32 786445, metadata !252, metadata !"log", metadata !217, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!285 = metadata !{i32 786445, metadata !252, metadata !"logp", metadata !217, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !25} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!286 = metadata !{i32 786445, metadata !252, metadata !"pool_size", metadata !217, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !48} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!287 = metadata !{i32 786445, metadata !252, metadata !"post_accept_buffer_size", metadata !217, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !48} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!288 = metadata !{i32 786445, metadata !252, metadata !"post_accept_timeout", metadata !217, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !289} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!289 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !217, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !290} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!290 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !217, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!291 = metadata !{i32 786445, metadata !252, metadata !"previous", metadata !217, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !250} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!292 = metadata !{i32 786445, metadata !252, metadata !"connection", metadata !217, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !235} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!293 = metadata !{i32 786445, metadata !252, metadata !"open", metadata !217, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !34} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!294 = metadata !{i32 786445, metadata !252, metadata !"remain", metadata !217, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !34} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!295 = metadata !{i32 786445, metadata !252, metadata !"ignore", metadata !217, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !34} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!296 = metadata !{i32 786445, metadata !252, metadata !"bound", metadata !217, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !34} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!297 = metadata !{i32 786445, metadata !252, metadata !"inherited", metadata !217, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !34} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!298 = metadata !{i32 786445, metadata !252, metadata !"nonblocking_accept", metadata !217, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !34} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!299 = metadata !{i32 786445, metadata !252, metadata !"listen", metadata !217, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !34} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!300 = metadata !{i32 786445, metadata !252, metadata !"nonblocking", metadata !217, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !34} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!301 = metadata !{i32 786445, metadata !252, metadata !"shared", metadata !217, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !34} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!302 = metadata !{i32 786445, metadata !252, metadata !"addr_ntop", metadata !217, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !34} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!303 = metadata !{i32 786445, metadata !252, metadata !"keepalive", metadata !217, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !34} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!304 = metadata !{i32 786445, metadata !252, metadata !"deferred_accept", metadata !217, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !34} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!305 = metadata !{i32 786445, metadata !252, metadata !"delete_deferred", metadata !217, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !34} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!306 = metadata !{i32 786445, metadata !252, metadata !"add_deferred", metadata !217, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !34} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!307 = metadata !{i32 786445, metadata !216, metadata !"sent", metadata !217, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !113} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!308 = metadata !{i32 786445, metadata !216, metadata !"log", metadata !217, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !25} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!309 = metadata !{i32 786445, metadata !216, metadata !"pool", metadata !217, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !81} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!310 = metadata !{i32 786445, metadata !216, metadata !"sockaddr", metadata !217, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !256} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!311 = metadata !{i32 786445, metadata !216, metadata !"socklen", metadata !217, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !267} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!312 = metadata !{i32 786445, metadata !216, metadata !"addr_text", metadata !217, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !43} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!313 = metadata !{i32 786445, metadata !216, metadata !"local_sockaddr", metadata !217, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !256} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!314 = metadata !{i32 786445, metadata !216, metadata !"buffer", metadata !217, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !106} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!315 = metadata !{i32 786445, metadata !216, metadata !"queue", metadata !217, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !316} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!316 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !217, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !317} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!317 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !318, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!318 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!319 = metadata !{metadata !320, metadata !323}
!320 = metadata !{i32 786445, metadata !317, metadata !"prev", metadata !318, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!321 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !322} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!322 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !318, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !317} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!323 = metadata !{i32 786445, metadata !317, metadata !"next", metadata !318, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !321} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!324 = metadata !{i32 786445, metadata !216, metadata !"number", metadata !217, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !58} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!325 = metadata !{i32 786445, metadata !216, metadata !"requests", metadata !217, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!326 = metadata !{i32 786445, metadata !216, metadata !"buffered", metadata !217, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !34} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!327 = metadata !{i32 786445, metadata !216, metadata !"log_error", metadata !217, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !34} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!328 = metadata !{i32 786445, metadata !216, metadata !"single_connection", metadata !217, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !34} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!329 = metadata !{i32 786445, metadata !216, metadata !"unexpected_eof", metadata !217, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !34} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!330 = metadata !{i32 786445, metadata !216, metadata !"timedout", metadata !217, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !34} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!331 = metadata !{i32 786445, metadata !216, metadata !"error", metadata !217, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !34} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!332 = metadata !{i32 786445, metadata !216, metadata !"destroyed", metadata !217, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !34} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!333 = metadata !{i32 786445, metadata !216, metadata !"idle", metadata !217, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !34} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!334 = metadata !{i32 786445, metadata !216, metadata !"reusable", metadata !217, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !34} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!335 = metadata !{i32 786445, metadata !216, metadata !"close", metadata !217, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !34} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!336 = metadata !{i32 786445, metadata !216, metadata !"sendfile", metadata !217, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !34} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!337 = metadata !{i32 786445, metadata !216, metadata !"sndlowat", metadata !217, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !34} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!338 = metadata !{i32 786445, metadata !216, metadata !"tcp_nodelay", metadata !217, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !34} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!339 = metadata !{i32 786445, metadata !216, metadata !"tcp_nopush", metadata !217, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !34} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!340 = metadata !{i32 786445, metadata !73, metadata !"free_connections", metadata !74, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !214} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!341 = metadata !{i32 786445, metadata !73, metadata !"free_connection_n", metadata !74, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !32} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!342 = metadata !{i32 786445, metadata !73, metadata !"reusable_connections_queue", metadata !74, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !316} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!343 = metadata !{i32 786445, metadata !73, metadata !"listening", metadata !74, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !344} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!344 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !21, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !345} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!345 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !83, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!346 = metadata !{metadata !347, metadata !348, metadata !349, metadata !350, metadata !351}
!347 = metadata !{i32 786445, metadata !345, metadata !"elts", metadata !83, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!348 = metadata !{i32 786445, metadata !345, metadata !"nelts", metadata !83, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!349 = metadata !{i32 786445, metadata !345, metadata !"size", metadata !83, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!350 = metadata !{i32 786445, metadata !345, metadata !"nalloc", metadata !83, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!351 = metadata !{i32 786445, metadata !345, metadata !"pool", metadata !83, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!352 = metadata !{i32 786445, metadata !73, metadata !"pathes", metadata !74, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !344} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!353 = metadata !{i32 786445, metadata !73, metadata !"open_files", metadata !74, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !354} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!354 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !74, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !355} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!355 = metadata !{i32 786451, null, metadata !"", metadata !356, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!356 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!357 = metadata !{metadata !358, metadata !366, metadata !367, metadata !368, metadata !369}
!358 = metadata !{i32 786445, metadata !355, metadata !"last", metadata !356, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !359} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!359 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!360 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !356, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !361} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!361 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !356, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!362 = metadata !{metadata !363, metadata !364, metadata !365}
!363 = metadata !{i32 786445, metadata !361, metadata !"elts", metadata !356, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!364 = metadata !{i32 786445, metadata !361, metadata !"nelts", metadata !356, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!365 = metadata !{i32 786445, metadata !361, metadata !"next", metadata !356, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !359} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!366 = metadata !{i32 786445, metadata !355, metadata !"part", metadata !356, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !360} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!367 = metadata !{i32 786445, metadata !355, metadata !"size", metadata !356, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!368 = metadata !{i32 786445, metadata !355, metadata !"nalloc", metadata !356, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!369 = metadata !{i32 786445, metadata !355, metadata !"pool", metadata !356, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!370 = metadata !{i32 786445, metadata !73, metadata !"shared_memory", metadata !74, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !354} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!371 = metadata !{i32 786445, metadata !73, metadata !"connection_n", metadata !74, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !32} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!372 = metadata !{i32 786445, metadata !73, metadata !"files_n", metadata !74, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !32} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!373 = metadata !{i32 786445, metadata !73, metadata !"connections", metadata !74, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !214} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!374 = metadata !{i32 786445, metadata !73, metadata !"read_events", metadata !74, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !221} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!375 = metadata !{i32 786445, metadata !73, metadata !"write_events", metadata !74, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !221} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!376 = metadata !{i32 786445, metadata !73, metadata !"old_cycle", metadata !74, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !377} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!377 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!378 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !74, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!379 = metadata !{i32 786445, metadata !73, metadata !"conf_file", metadata !74, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !43} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!380 = metadata !{i32 786445, metadata !73, metadata !"conf_param", metadata !74, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !43} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!381 = metadata !{i32 786445, metadata !73, metadata !"conf_prefix", metadata !74, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !43} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!382 = metadata !{i32 786445, metadata !73, metadata !"prefix", metadata !74, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !43} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!383 = metadata !{i32 786445, metadata !73, metadata !"lock_file", metadata !74, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !43} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!384 = metadata !{i32 786445, metadata !73, metadata !"hostname", metadata !74, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !43} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!385 = metadata !{i32 786688, metadata !19, metadata !"init_cycle", metadata !6, i32 50, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init_cycle] [line 50]
!386 = metadata !{i32 786688, metadata !19, metadata !"ccf", metadata !6, i32 51, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 51]
!387 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !388} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_core_conf_t]
!388 = metadata !{i32 786454, null, metadata !"ngx_core_conf_t", metadata !6, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !389} ; [ DW_TAG_typedef ] [ngx_core_conf_t] [line 109, size 0, align 0, offset 0] [from ]
!389 = metadata !{i32 786451, null, metadata !"", metadata !74, i32 73, i64 928, i64 32, i32 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 73, size 928, align 32, offset 0] [from ]
!390 = metadata !{metadata !391, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !405, metadata !406, metadata !409, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417}
!391 = metadata !{i32 786445, metadata !389, metadata !"daemon", metadata !74, i32 74, i64 32, i64 32, i64 0, i32 0, metadata !392} ; [ DW_TAG_member ] [daemon] [line 74, size 32, align 32, offset 0] [from ngx_flag_t]
!392 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !74, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!393 = metadata !{i32 786445, metadata !389, metadata !"master", metadata !74, i32 75, i64 32, i64 32, i64 32, i32 0, metadata !392} ; [ DW_TAG_member ] [master] [line 75, size 32, align 32, offset 32] [from ngx_flag_t]
!394 = metadata !{i32 786445, metadata !389, metadata !"timer_resolution", metadata !74, i32 77, i64 32, i64 32, i64 64, i32 0, metadata !289} ; [ DW_TAG_member ] [timer_resolution] [line 77, size 32, align 32, offset 64] [from ngx_msec_t]
!395 = metadata !{i32 786445, metadata !389, metadata !"worker_processes", metadata !74, i32 79, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [worker_processes] [line 79, size 32, align 32, offset 96] [from ngx_int_t]
!396 = metadata !{i32 786445, metadata !389, metadata !"debug_points", metadata !74, i32 80, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [debug_points] [line 80, size 32, align 32, offset 128] [from ngx_int_t]
!397 = metadata !{i32 786445, metadata !389, metadata !"rlimit_nofile", metadata !74, i32 82, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [rlimit_nofile] [line 82, size 32, align 32, offset 160] [from ngx_int_t]
!398 = metadata !{i32 786445, metadata !389, metadata !"rlimit_sigpending", metadata !74, i32 83, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [rlimit_sigpending] [line 83, size 32, align 32, offset 192] [from ngx_int_t]
!399 = metadata !{i32 786445, metadata !389, metadata !"rlimit_core", metadata !74, i32 84, i64 64, i64 32, i64 224, i32 0, metadata !113} ; [ DW_TAG_member ] [rlimit_core] [line 84, size 64, align 32, offset 224] [from off_t]
!400 = metadata !{i32 786445, metadata !389, metadata !"priority", metadata !74, i32 86, i64 32, i64 32, i64 288, i32 0, metadata !9} ; [ DW_TAG_member ] [priority] [line 86, size 32, align 32, offset 288] [from int]
!401 = metadata !{i32 786445, metadata !389, metadata !"cpu_affinity_n", metadata !74, i32 88, i64 32, i64 32, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [cpu_affinity_n] [line 88, size 32, align 32, offset 320] [from ngx_uint_t]
!402 = metadata !{i32 786445, metadata !389, metadata !"cpu_affinity", metadata !74, i32 89, i64 32, i64 32, i64 352, i32 0, metadata !403} ; [ DW_TAG_member ] [cpu_affinity] [line 89, size 32, align 32, offset 352] [from ]
!403 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint64_t]
!404 = metadata !{i32 786454, null, metadata !"uint64_t", metadata !74, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [uint64_t] [line 59, size 0, align 0, offset 0] [from long long unsigned int]
!405 = metadata !{i32 786445, metadata !389, metadata !"username", metadata !74, i32 91, i64 32, i64 32, i64 384, i32 0, metadata !12} ; [ DW_TAG_member ] [username] [line 91, size 32, align 32, offset 384] [from ]
!406 = metadata !{i32 786445, metadata !389, metadata !"user", metadata !74, i32 92, i64 32, i64 32, i64 416, i32 0, metadata !407} ; [ DW_TAG_member ] [user] [line 92, size 32, align 32, offset 416] [from ngx_uid_t]
!407 = metadata !{i32 786454, null, metadata !"ngx_uid_t", metadata !74, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_typedef ] [ngx_uid_t] [line 16, size 0, align 0, offset 0] [from uid_t]
!408 = metadata !{i32 786454, null, metadata !"uid_t", metadata !74, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [uid_t] [line 81, size 0, align 0, offset 0] [from __uid_t]
!409 = metadata !{i32 786445, metadata !389, metadata !"group", metadata !74, i32 93, i64 32, i64 32, i64 448, i32 0, metadata !410} ; [ DW_TAG_member ] [group] [line 93, size 32, align 32, offset 448] [from ngx_gid_t]
!410 = metadata !{i32 786454, null, metadata !"ngx_gid_t", metadata !74, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !411} ; [ DW_TAG_typedef ] [ngx_gid_t] [line 17, size 0, align 0, offset 0] [from gid_t]
!411 = metadata !{i32 786454, null, metadata !"gid_t", metadata !74, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [gid_t] [line 66, size 0, align 0, offset 0] [from __gid_t]
!412 = metadata !{i32 786445, metadata !389, metadata !"working_directory", metadata !74, i32 95, i64 64, i64 32, i64 480, i32 0, metadata !43} ; [ DW_TAG_member ] [working_directory] [line 95, size 64, align 32, offset 480] [from ngx_str_t]
!413 = metadata !{i32 786445, metadata !389, metadata !"lock_file", metadata !74, i32 96, i64 64, i64 32, i64 544, i32 0, metadata !43} ; [ DW_TAG_member ] [lock_file] [line 96, size 64, align 32, offset 544] [from ngx_str_t]
!414 = metadata !{i32 786445, metadata !389, metadata !"pid", metadata !74, i32 98, i64 64, i64 32, i64 608, i32 0, metadata !43} ; [ DW_TAG_member ] [pid] [line 98, size 64, align 32, offset 608] [from ngx_str_t]
!415 = metadata !{i32 786445, metadata !389, metadata !"oldpid", metadata !74, i32 99, i64 64, i64 32, i64 672, i32 0, metadata !43} ; [ DW_TAG_member ] [oldpid] [line 99, size 64, align 32, offset 672] [from ngx_str_t]
!416 = metadata !{i32 786445, metadata !389, metadata !"env", metadata !74, i32 101, i64 160, i64 32, i64 736, i32 0, metadata !344} ; [ DW_TAG_member ] [env] [line 101, size 160, align 32, offset 736] [from ngx_array_t]
!417 = metadata !{i32 786445, metadata !389, metadata !"environment", metadata !74, i32 102, i64 32, i64 32, i64 896, i32 0, metadata !418} ; [ DW_TAG_member ] [environment] [line 102, size 32, align 32, offset 896] [from ]
!418 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!419 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_set_environment", metadata !"ngx_set_environment", metadata !"", metadata !6, i32 227, metadata !420, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8** (%struct.ngx_cycle_s*, i32*)* @ngx_set_environment, null, null, metadata !423, i32 228} ; [ DW_TAG_subprogram ] [line 227] [def] [scope 228] [ngx_set_environment]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!421 = metadata !{metadata !418, metadata !71, metadata !422}
!422 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!423 = metadata !{metadata !424}
!424 = metadata !{metadata !425, metadata !426, metadata !427, metadata !429, metadata !430, metadata !432, metadata !433, metadata !434, metadata !435, metadata !439, metadata !440, metadata !444}
!425 = metadata !{i32 786689, metadata !419, metadata !"cycle", metadata !6, i32 16777443, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 227]
!426 = metadata !{i32 786689, metadata !419, metadata !"last", metadata !6, i32 33554659, metadata !422, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 227]
!427 = metadata !{i32 786688, metadata !428, metadata !"p", metadata !6, i32 229, metadata !418, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 229]
!428 = metadata !{i32 786443, metadata !419, i32 228, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!429 = metadata !{i32 786688, metadata !428, metadata !"env", metadata !6, i32 230, metadata !418, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 230]
!430 = metadata !{i32 786688, metadata !428, metadata !"var", metadata !6, i32 231, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 231]
!431 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!432 = metadata !{i32 786688, metadata !428, metadata !"i", metadata !6, i32 232, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 232]
!433 = metadata !{i32 786688, metadata !428, metadata !"n", metadata !6, i32 233, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 233]
!434 = metadata !{i32 786688, metadata !428, metadata !"ccf", metadata !6, i32 234, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 234]
!435 = metadata !{i32 786688, metadata !436, metadata !"__s1_len", metadata !6, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 241]
!436 = metadata !{i32 786443, metadata !437, i32 241, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!437 = metadata !{i32 786443, metadata !438, i32 240, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!438 = metadata !{i32 786443, metadata !428, i32 240, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!439 = metadata !{i32 786688, metadata !436, metadata !"__s2_len", metadata !6, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 241]
!440 = metadata !{i32 786688, metadata !441, metadata !"__s1", metadata !6, i32 241, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 241]
!441 = metadata !{i32 786443, metadata !436, i32 241, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!442 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!443 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!444 = metadata !{i32 786688, metadata !441, metadata !"__result", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 241]
!445 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_exec_new_binary", metadata !"ngx_exec_new_binary", metadata !"", metadata !6, i32 297, metadata !446, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*, i8**)* @ngx_exec_new_binary, null, null, metadata !451, i32 298} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 298] [ngx_exec_new_binary]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{metadata !448, metadata !71, metadata !10}
!448 = metadata !{i32 786454, null, metadata !"ngx_pid_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ] [ngx_pid_t] [line 16, size 0, align 0, offset 0] [from pid_t]
!449 = metadata !{i32 786454, null, metadata !"pid_t", metadata !6, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !450} ; [ DW_TAG_typedef ] [pid_t] [line 99, size 0, align 0, offset 0] [from __pid_t]
!450 = metadata !{i32 786454, null, metadata !"__pid_t", metadata !6, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__pid_t] [line 143, size 0, align 0, offset 0] [from int]
!451 = metadata !{metadata !452}
!452 = metadata !{metadata !453, metadata !454, metadata !455, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !471, metadata !472}
!453 = metadata !{i32 786689, metadata !445, metadata !"cycle", metadata !6, i32 16777513, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 297]
!454 = metadata !{i32 786689, metadata !445, metadata !"argv", metadata !6, i32 33554729, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 297]
!455 = metadata !{i32 786688, metadata !456, metadata !"env", metadata !6, i32 299, metadata !418, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 299]
!456 = metadata !{i32 786443, metadata !445, i32 298, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!457 = metadata !{i32 786688, metadata !456, metadata !"var", metadata !6, i32 300, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 300]
!458 = metadata !{i32 786688, metadata !456, metadata !"p", metadata !6, i32 301, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 301]
!459 = metadata !{i32 786688, metadata !456, metadata !"i", metadata !6, i32 302, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 302]
!460 = metadata !{i32 786688, metadata !456, metadata !"n", metadata !6, i32 303, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 303]
!461 = metadata !{i32 786688, metadata !456, metadata !"pid", metadata !6, i32 304, metadata !448, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pid] [line 304]
!462 = metadata !{i32 786688, metadata !456, metadata !"ctx", metadata !6, i32 305, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 305]
!463 = metadata !{i32 786454, null, metadata !"ngx_exec_ctx_t", metadata !6, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !464} ; [ DW_TAG_typedef ] [ngx_exec_ctx_t] [line 44, size 0, align 0, offset 0] [from ]
!464 = metadata !{i32 786451, null, metadata !"", metadata !465, i32 39, i64 128, i64 32, i32 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 39, size 128, align 32, offset 0] [from ]
!465 = metadata !{i32 786473, metadata !"src/os/unix/ngx_process.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!466 = metadata !{metadata !467, metadata !468, metadata !469, metadata !470}
!467 = metadata !{i32 786445, metadata !464, metadata !"path", metadata !465, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [path] [line 40, size 32, align 32, offset 0] [from ]
!468 = metadata !{i32 786445, metadata !464, metadata !"name", metadata !465, i32 41, i64 32, i64 32, i64 32, i32 0, metadata !12} ; [ DW_TAG_member ] [name] [line 41, size 32, align 32, offset 32] [from ]
!469 = metadata !{i32 786445, metadata !464, metadata !"argv", metadata !465, i32 42, i64 32, i64 32, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [argv] [line 42, size 32, align 32, offset 64] [from ]
!470 = metadata !{i32 786445, metadata !464, metadata !"envp", metadata !465, i32 43, i64 32, i64 32, i64 96, i32 0, metadata !10} ; [ DW_TAG_member ] [envp] [line 43, size 32, align 32, offset 96] [from ]
!471 = metadata !{i32 786688, metadata !456, metadata !"ccf", metadata !6, i32 306, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 306]
!472 = metadata !{i32 786688, metadata !456, metadata !"ls", metadata !6, i32 307, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 307]
!473 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_get_cpu_affinity", metadata !"ngx_get_cpu_affinity", metadata !"", metadata !6, i32 825, metadata !474, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32)* @ngx_get_cpu_affinity, null, null, metadata !476, i32 826} ; [ DW_TAG_subprogram ] [line 825] [def] [scope 826] [ngx_get_cpu_affinity]
!474 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!475 = metadata !{metadata !404, metadata !32}
!476 = metadata !{metadata !477}
!477 = metadata !{metadata !478, metadata !479}
!478 = metadata !{i32 786689, metadata !473, metadata !"n", metadata !6, i32 16778041, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 825]
!479 = metadata !{i32 786688, metadata !480, metadata !"ccf", metadata !6, i32 827, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 827]
!480 = metadata !{i32 786443, metadata !473, i32 826, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!481 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_process_options", metadata !"ngx_process_options", metadata !"", metadata !6, i32 492, metadata !482, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !484, i32 493} ; [ DW_TAG_subprogram ] [line 492] [local] [def] [scope 493] [ngx_process_options]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!483 = metadata !{metadata !20, metadata !71}
!484 = metadata !{metadata !485}
!485 = metadata !{metadata !486, metadata !487, metadata !489}
!486 = metadata !{i32 786689, metadata !481, metadata !"cycle", metadata !6, i32 16777708, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 492]
!487 = metadata !{i32 786688, metadata !488, metadata !"p", metadata !6, i32 494, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 494]
!488 = metadata !{i32 786443, metadata !481, i32 493, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!489 = metadata !{i32 786688, metadata !488, metadata !"len", metadata !6, i32 495, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 495]
!490 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_save_argv", metadata !"ngx_save_argv", metadata !"", metadata !6, i32 466, metadata !491, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !493, i32 467} ; [ DW_TAG_subprogram ] [line 466] [local] [def] [scope 467] [ngx_save_argv]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!492 = metadata !{metadata !20, metadata !71, metadata !9, metadata !10}
!493 = metadata !{metadata !494}
!494 = metadata !{metadata !495, metadata !496, metadata !497, metadata !498, metadata !500}
!495 = metadata !{i32 786689, metadata !490, metadata !"cycle", metadata !6, i32 16777682, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 466]
!496 = metadata !{i32 786689, metadata !490, metadata !"argc", metadata !6, i32 33554898, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 466]
!497 = metadata !{i32 786689, metadata !490, metadata !"argv", metadata !6, i32 50332114, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 466]
!498 = metadata !{i32 786688, metadata !499, metadata !"len", metadata !6, i32 470, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 470]
!499 = metadata !{i32 786443, metadata !490, i32 467, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!500 = metadata !{i32 786688, metadata !499, metadata !"i", metadata !6, i32 471, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 471]
!501 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_get_options", metadata !"ngx_get_options", metadata !"", metadata !6, i32 353, metadata !502, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !504, i32 354} ; [ DW_TAG_subprogram ] [line 353] [local] [def] [scope 354] [ngx_get_options]
!502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!503 = metadata !{metadata !20, metadata !9, metadata !10}
!504 = metadata !{metadata !505}
!505 = metadata !{metadata !506, metadata !507, metadata !508, metadata !510, metadata !511, metadata !518, metadata !519, metadata !521, metadata !522, metadata !524, metadata !525, metadata !527, metadata !528, metadata !530, metadata !531, metadata !533, metadata !534, metadata !536, metadata !537, metadata !539}
!506 = metadata !{i32 786689, metadata !501, metadata !"argc", metadata !6, i32 16777569, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 353]
!507 = metadata !{i32 786689, metadata !501, metadata !"argv", metadata !6, i32 33554785, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 353]
!508 = metadata !{i32 786688, metadata !509, metadata !"p", metadata !6, i32 355, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 355]
!509 = metadata !{i32 786443, metadata !501, i32 354, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!510 = metadata !{i32 786688, metadata !509, metadata !"i", metadata !6, i32 356, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 356]
!511 = metadata !{i32 786688, metadata !512, metadata !"__s1_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 446]
!512 = metadata !{i32 786443, metadata !513, i32 446, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!513 = metadata !{i32 786443, metadata !514, i32 435, i32 0, metadata !6, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!514 = metadata !{i32 786443, metadata !515, i32 364, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!515 = metadata !{i32 786443, metadata !516, i32 363, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!516 = metadata !{i32 786443, metadata !517, i32 357, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!517 = metadata !{i32 786443, metadata !509, i32 357, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!518 = metadata !{i32 786688, metadata !512, metadata !"__s2_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 446]
!519 = metadata !{i32 786688, metadata !520, metadata !"__s1", metadata !6, i32 446, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 446]
!520 = metadata !{i32 786443, metadata !512, i32 446, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!521 = metadata !{i32 786688, metadata !520, metadata !"__result", metadata !6, i32 446, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 446]
!522 = metadata !{i32 786688, metadata !523, metadata !"__s1_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 446]
!523 = metadata !{i32 786443, metadata !513, i32 446, i32 0, metadata !6, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!524 = metadata !{i32 786688, metadata !523, metadata !"__s2_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 446]
!525 = metadata !{i32 786688, metadata !526, metadata !"__s1", metadata !6, i32 446, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 446]
!526 = metadata !{i32 786443, metadata !523, i32 446, i32 0, metadata !6, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!527 = metadata !{i32 786688, metadata !526, metadata !"__result", metadata !6, i32 446, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 446]
!528 = metadata !{i32 786688, metadata !529, metadata !"__s1_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 446]
!529 = metadata !{i32 786443, metadata !513, i32 446, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!530 = metadata !{i32 786688, metadata !529, metadata !"__s2_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 446]
!531 = metadata !{i32 786688, metadata !532, metadata !"__s1", metadata !6, i32 446, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 446]
!532 = metadata !{i32 786443, metadata !529, i32 446, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!533 = metadata !{i32 786688, metadata !532, metadata !"__result", metadata !6, i32 446, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 446]
!534 = metadata !{i32 786688, metadata !535, metadata !"__s1_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 446]
!535 = metadata !{i32 786443, metadata !513, i32 446, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!536 = metadata !{i32 786688, metadata !535, metadata !"__s2_len", metadata !6, i32 446, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 446]
!537 = metadata !{i32 786688, metadata !538, metadata !"__s1", metadata !6, i32 446, metadata !442, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 446]
!538 = metadata !{i32 786443, metadata !535, i32 446, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!539 = metadata !{i32 786688, metadata !538, metadata !"__result", metadata !6, i32 446, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 446]
!540 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_add_inherited_sockets", metadata !"ngx_add_inherited_sockets", metadata !"", metadata !6, i32 190, metadata !482, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !541, i32 191} ; [ DW_TAG_subprogram ] [line 190] [local] [def] [scope 191] [ngx_add_inherited_sockets]
!541 = metadata !{metadata !542}
!542 = metadata !{metadata !543, metadata !544, metadata !546, metadata !547, metadata !548, metadata !549}
!543 = metadata !{i32 786689, metadata !540, metadata !"cycle", metadata !6, i32 16777406, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 190]
!544 = metadata !{i32 786688, metadata !545, metadata !"p", metadata !6, i32 192, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 192]
!545 = metadata !{i32 786443, metadata !540, i32 191, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!546 = metadata !{i32 786688, metadata !545, metadata !"v", metadata !6, i32 193, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 193]
!547 = metadata !{i32 786688, metadata !545, metadata !"inherited", metadata !6, i32 194, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inherited] [line 194]
!548 = metadata !{i32 786688, metadata !545, metadata !"s", metadata !6, i32 195, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 195]
!549 = metadata !{i32 786688, metadata !545, metadata !"ls", metadata !6, i32 196, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 196]
!550 = metadata !{i32 786478, i32 0, metadata !83, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !83, i32 32, metadata !551, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !554, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!551 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!552 = metadata !{metadata !20, metadata !553, metadata !81, metadata !32, metadata !48}
!553 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !344} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!554 = metadata !{metadata !555}
!555 = metadata !{metadata !556, metadata !557, metadata !558, metadata !559}
!556 = metadata !{i32 786689, metadata !550, metadata !"array", metadata !83, i32 16777248, metadata !553, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!557 = metadata !{i32 786689, metadata !550, metadata !"pool", metadata !83, i32 33554464, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!558 = metadata !{i32 786689, metadata !550, metadata !"n", metadata !83, i32 50331680, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!559 = metadata !{i32 786689, metadata !550, metadata !"size", metadata !83, i32 67108896, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!560 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ngx_write_stderr", metadata !"ngx_write_stderr", metadata !"", metadata !29, i32 240, metadata !561, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !563, i32 241} ; [ DW_TAG_subprogram ] [line 240] [local] [def] [scope 241] [ngx_write_stderr]
!561 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{null, metadata !12}
!563 = metadata !{metadata !564}
!564 = metadata !{metadata !565}
!565 = metadata !{i32 786689, metadata !560, metadata !"text", metadata !29, i32 16777456, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [text] [line 240]
!566 = metadata !{i32 786478, i32 0, metadata !567, metadata !"ngx_write_fd", metadata !"ngx_write_fd", metadata !"", metadata !567, i32 140, metadata !568, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !570, i32 141} ; [ DW_TAG_subprogram ] [line 140] [local] [def] [scope 141] [ngx_write_fd]
!567 = metadata !{i32 786473, metadata !"src/os/unix/ngx_files.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!569 = metadata !{metadata !233, metadata !41, metadata !68, metadata !48}
!570 = metadata !{metadata !571}
!571 = metadata !{metadata !572, metadata !573, metadata !574}
!572 = metadata !{i32 786689, metadata !566, metadata !"fd", metadata !567, i32 16777356, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!573 = metadata !{i32 786689, metadata !566, metadata !"buf", metadata !567, i32 33554572, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!574 = metadata !{i32 786689, metadata !566, metadata !"n", metadata !567, i32 50331788, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 140]
!575 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_set_env", metadata !"ngx_set_env", metadata !"", metadata !6, i32 725, metadata !576, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_env, null, null, metadata !613, i32 726} ; [ DW_TAG_subprogram ] [line 725] [local] [def] [scope 726] [ngx_set_env]
!576 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !577, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!577 = metadata !{metadata !12, metadata !578, metadata !603, metadata !68}
!578 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !579} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!579 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !21, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !580} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!580 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !21, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!581 = metadata !{metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !602}
!582 = metadata !{i32 786445, metadata !580, metadata !"name", metadata !21, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!583 = metadata !{i32 786445, metadata !580, metadata !"args", metadata !21, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !553} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!584 = metadata !{i32 786445, metadata !580, metadata !"cycle", metadata !21, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!585 = metadata !{i32 786445, metadata !580, metadata !"pool", metadata !21, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !81} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!586 = metadata !{i32 786445, metadata !580, metadata !"temp_pool", metadata !21, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!587 = metadata !{i32 786445, metadata !580, metadata !"conf_file", metadata !21, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !588} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!588 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !589} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!589 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !21, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !590} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!590 = metadata !{i32 786451, null, metadata !"", metadata !21, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!591 = metadata !{metadata !592, metadata !593, metadata !594}
!592 = metadata !{i32 786445, metadata !590, metadata !"file", metadata !21, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!593 = metadata !{i32 786445, metadata !590, metadata !"buffer", metadata !21, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !106} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!594 = metadata !{i32 786445, metadata !590, metadata !"line", metadata !21, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !32} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!595 = metadata !{i32 786445, metadata !580, metadata !"log", metadata !21, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!596 = metadata !{i32 786445, metadata !580, metadata !"ctx", metadata !21, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !68} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!597 = metadata !{i32 786445, metadata !580, metadata !"module_type", metadata !21, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!598 = metadata !{i32 786445, metadata !580, metadata !"cmd_type", metadata !21, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !32} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!599 = metadata !{i32 786445, metadata !580, metadata !"handler", metadata !21, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !600} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!600 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !21, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !601} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!601 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !576} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!602 = metadata !{i32 786445, metadata !580, metadata !"handler_conf", metadata !21, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !12} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!603 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !604} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!604 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !21, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !605} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!605 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !21, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !606, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!606 = metadata !{metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612}
!607 = metadata !{i32 786445, metadata !605, metadata !"name", metadata !21, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!608 = metadata !{i32 786445, metadata !605, metadata !"type", metadata !21, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!609 = metadata !{i32 786445, metadata !605, metadata !"set", metadata !21, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !601} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!610 = metadata !{i32 786445, metadata !605, metadata !"conf", metadata !21, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!611 = metadata !{i32 786445, metadata !605, metadata !"offset", metadata !21, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!612 = metadata !{i32 786445, metadata !605, metadata !"post", metadata !21, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!613 = metadata !{metadata !614}
!614 = metadata !{metadata !615, metadata !616, metadata !617, metadata !618, metadata !620, metadata !621, metadata !622}
!615 = metadata !{i32 786689, metadata !575, metadata !"cf", metadata !6, i32 16777941, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 725]
!616 = metadata !{i32 786689, metadata !575, metadata !"cmd", metadata !6, i32 33555157, metadata !603, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 725]
!617 = metadata !{i32 786689, metadata !575, metadata !"conf", metadata !6, i32 50332373, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 725]
!618 = metadata !{i32 786688, metadata !619, metadata !"ccf", metadata !6, i32 727, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 727]
!619 = metadata !{i32 786443, metadata !575, i32 726, i32 0, metadata !6, i32 142} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!620 = metadata !{i32 786688, metadata !619, metadata !"value", metadata !6, i32 728, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 728]
!621 = metadata !{i32 786688, metadata !619, metadata !"var", metadata !6, i32 729, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 729]
!622 = metadata !{i32 786688, metadata !619, metadata !"i", metadata !6, i32 730, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 730]
!623 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_set_cpu_affinity", metadata !"ngx_set_cpu_affinity", metadata !"", metadata !6, i32 778, metadata !576, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_cpu_affinity, null, null, metadata !624, i32 779} ; [ DW_TAG_subprogram ] [line 778] [local] [def] [scope 779] [ngx_set_cpu_affinity]
!624 = metadata !{metadata !625}
!625 = metadata !{metadata !626, metadata !627, metadata !628, metadata !629, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635}
!626 = metadata !{i32 786689, metadata !623, metadata !"cf", metadata !6, i32 16777994, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 778]
!627 = metadata !{i32 786689, metadata !623, metadata !"cmd", metadata !6, i32 33555210, metadata !603, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 778]
!628 = metadata !{i32 786689, metadata !623, metadata !"conf", metadata !6, i32 50332426, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 778]
!629 = metadata !{i32 786688, metadata !630, metadata !"ccf", metadata !6, i32 781, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 781]
!630 = metadata !{i32 786443, metadata !623, i32 779, i32 0, metadata !6, i32 147} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!631 = metadata !{i32 786688, metadata !630, metadata !"ch", metadata !6, i32 782, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 782]
!632 = metadata !{i32 786688, metadata !630, metadata !"mask", metadata !6, i32 783, metadata !403, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 783]
!633 = metadata !{i32 786688, metadata !630, metadata !"value", metadata !6, i32 784, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 784]
!634 = metadata !{i32 786688, metadata !630, metadata !"i", metadata !6, i32 785, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 785]
!635 = metadata !{i32 786688, metadata !630, metadata !"n", metadata !6, i32 786, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 786]
!636 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_set_priority", metadata !"ngx_set_priority", metadata !"", metadata !6, i32 746, metadata !576, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_priority, null, null, metadata !637, i32 747} ; [ DW_TAG_subprogram ] [line 746] [local] [def] [scope 747] [ngx_set_priority]
!637 = metadata !{metadata !638}
!638 = metadata !{metadata !639, metadata !640, metadata !641, metadata !642, metadata !644, metadata !645, metadata !646}
!639 = metadata !{i32 786689, metadata !636, metadata !"cf", metadata !6, i32 16777962, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 746]
!640 = metadata !{i32 786689, metadata !636, metadata !"cmd", metadata !6, i32 33555178, metadata !603, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 746]
!641 = metadata !{i32 786689, metadata !636, metadata !"conf", metadata !6, i32 50332394, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 746]
!642 = metadata !{i32 786688, metadata !643, metadata !"ccf", metadata !6, i32 748, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 748]
!643 = metadata !{i32 786443, metadata !636, i32 747, i32 0, metadata !6, i32 158} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!644 = metadata !{i32 786688, metadata !643, metadata !"value", metadata !6, i32 749, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 749]
!645 = metadata !{i32 786688, metadata !643, metadata !"n", metadata !6, i32 750, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 750]
!646 = metadata !{i32 786688, metadata !643, metadata !"minus", metadata !6, i32 751, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minus] [line 751]
!647 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_set_user", metadata !"ngx_set_user", metadata !"", metadata !6, i32 688, metadata !576, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_set_user, null, null, metadata !648, i32 689} ; [ DW_TAG_subprogram ] [line 688] [local] [def] [scope 689] [ngx_set_user]
!648 = metadata !{metadata !649}
!649 = metadata !{metadata !650, metadata !651, metadata !652, metadata !653, metadata !655, metadata !656, metadata !668, metadata !677}
!650 = metadata !{i32 786689, metadata !647, metadata !"cf", metadata !6, i32 16777904, metadata !578, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 688]
!651 = metadata !{i32 786689, metadata !647, metadata !"cmd", metadata !6, i32 33555120, metadata !603, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 688]
!652 = metadata !{i32 786689, metadata !647, metadata !"conf", metadata !6, i32 50332336, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 688]
!653 = metadata !{i32 786688, metadata !654, metadata !"ccf", metadata !6, i32 692, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 692]
!654 = metadata !{i32 786443, metadata !647, i32 689, i32 0, metadata !6, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!655 = metadata !{i32 786688, metadata !654, metadata !"group", metadata !6, i32 693, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 693]
!656 = metadata !{i32 786688, metadata !654, metadata !"pwd", metadata !6, i32 694, metadata !657, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pwd] [line 694]
!657 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !658} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from passwd]
!658 = metadata !{i32 786451, null, metadata !"passwd", metadata !659, i32 50, i64 224, i64 32, i32 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_structure_type ] [passwd] [line 50, size 224, align 32, offset 0] [from ]
!659 = metadata !{i32 786473, metadata !"/usr/include/pwd.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!660 = metadata !{metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667}
!661 = metadata !{i32 786445, metadata !658, metadata !"pw_name", metadata !659, i32 52, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [pw_name] [line 52, size 32, align 32, offset 0] [from ]
!662 = metadata !{i32 786445, metadata !658, metadata !"pw_passwd", metadata !659, i32 53, i64 32, i64 32, i64 32, i32 0, metadata !12} ; [ DW_TAG_member ] [pw_passwd] [line 53, size 32, align 32, offset 32] [from ]
!663 = metadata !{i32 786445, metadata !658, metadata !"pw_uid", metadata !659, i32 54, i64 32, i64 32, i64 64, i32 0, metadata !147} ; [ DW_TAG_member ] [pw_uid] [line 54, size 32, align 32, offset 64] [from __uid_t]
!664 = metadata !{i32 786445, metadata !658, metadata !"pw_gid", metadata !659, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !149} ; [ DW_TAG_member ] [pw_gid] [line 55, size 32, align 32, offset 96] [from __gid_t]
!665 = metadata !{i32 786445, metadata !658, metadata !"pw_gecos", metadata !659, i32 56, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [pw_gecos] [line 56, size 32, align 32, offset 128] [from ]
!666 = metadata !{i32 786445, metadata !658, metadata !"pw_dir", metadata !659, i32 57, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [pw_dir] [line 57, size 32, align 32, offset 160] [from ]
!667 = metadata !{i32 786445, metadata !658, metadata !"pw_shell", metadata !659, i32 58, i64 32, i64 32, i64 192, i32 0, metadata !12} ; [ DW_TAG_member ] [pw_shell] [line 58, size 32, align 32, offset 192] [from ]
!668 = metadata !{i32 786688, metadata !654, metadata !"grp", metadata !6, i32 695, metadata !669, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 695]
!669 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from group]
!670 = metadata !{i32 786451, null, metadata !"group", metadata !671, i32 44, i64 128, i64 32, i32 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_structure_type ] [group] [line 44, size 128, align 32, offset 0] [from ]
!671 = metadata !{i32 786473, metadata !"/usr/include/grp.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!672 = metadata !{metadata !673, metadata !674, metadata !675, metadata !676}
!673 = metadata !{i32 786445, metadata !670, metadata !"gr_name", metadata !671, i32 46, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [gr_name] [line 46, size 32, align 32, offset 0] [from ]
!674 = metadata !{i32 786445, metadata !670, metadata !"gr_passwd", metadata !671, i32 47, i64 32, i64 32, i64 32, i32 0, metadata !12} ; [ DW_TAG_member ] [gr_passwd] [line 47, size 32, align 32, offset 32] [from ]
!675 = metadata !{i32 786445, metadata !670, metadata !"gr_gid", metadata !671, i32 48, i64 32, i64 32, i64 64, i32 0, metadata !149} ; [ DW_TAG_member ] [gr_gid] [line 48, size 32, align 32, offset 64] [from __gid_t]
!676 = metadata !{i32 786445, metadata !670, metadata !"gr_mem", metadata !671, i32 49, i64 32, i64 32, i64 96, i32 0, metadata !418} ; [ DW_TAG_member ] [gr_mem] [line 49, size 32, align 32, offset 96] [from ]
!677 = metadata !{i32 786688, metadata !654, metadata !"value", metadata !6, i32 696, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 696]
!678 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_core_module_init_conf", metadata !"ngx_core_module_init_conf", metadata !"", metadata !6, i32 586, metadata !679, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*, i8*)* @ngx_core_module_init_conf, null, null, metadata !681, i32 587} ; [ DW_TAG_subprogram ] [line 586] [local] [def] [scope 587] [ngx_core_module_init_conf]
!679 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !680, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!680 = metadata !{metadata !12, metadata !71, metadata !68}
!681 = metadata !{metadata !682}
!682 = metadata !{metadata !683, metadata !684, metadata !685, metadata !687, metadata !689, metadata !690}
!683 = metadata !{i32 786689, metadata !678, metadata !"cycle", metadata !6, i32 16777802, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 586]
!684 = metadata !{i32 786689, metadata !678, metadata !"conf", metadata !6, i32 33555018, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 586]
!685 = metadata !{i32 786688, metadata !686, metadata !"ccf", metadata !6, i32 588, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 588]
!686 = metadata !{i32 786443, metadata !678, i32 587, i32 0, metadata !6, i32 170} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!687 = metadata !{i32 786688, metadata !688, metadata !"grp", metadata !6, i32 632, metadata !669, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 632]
!688 = metadata !{i32 786443, metadata !686, i32 631, i32 0, metadata !6, i32 180} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!689 = metadata !{i32 786688, metadata !688, metadata !"pwd", metadata !6, i32 633, metadata !657, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pwd] [line 633]
!690 = metadata !{i32 786688, metadata !691, metadata !"lock_file", metadata !6, i32 660, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lock_file] [line 660]
!691 = metadata !{i32 786443, metadata !686, i32 659, i32 0, metadata !6, i32 185} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!692 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_core_module_create_conf", metadata !"ngx_core_module_create_conf", metadata !"", metadata !6, i32 552, metadata !693, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_cycle_s*)* @ngx_core_module_create_conf, null, null, metadata !695, i32 553} ; [ DW_TAG_subprogram ] [line 552] [local] [def] [scope 553] [ngx_core_module_create_conf]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!694 = metadata !{metadata !68, metadata !71}
!695 = metadata !{metadata !696}
!696 = metadata !{metadata !697, metadata !698}
!697 = metadata !{i32 786689, metadata !692, metadata !"cycle", metadata !6, i32 16777768, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 552]
!698 = metadata !{i32 786688, metadata !699, metadata !"ccf", metadata !6, i32 554, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccf] [line 554]
!699 = metadata !{i32 786443, metadata !692, i32 553, i32 0, metadata !6, i32 191} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!700 = metadata !{metadata !701}
!701 = metadata !{metadata !702, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !751, metadata !760}
!702 = metadata !{i32 786484, i32 0, null, metadata !"ngx_core_module", metadata !"ngx_core_module", metadata !"", metadata !6, i32 24, metadata !703, i32 0, i32 1, %struct.ngx_module_s* @ngx_core_module} ; [ DW_TAG_variable ] [ngx_core_module] [line 24] [def]
!703 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!704 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !21, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !705, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!705 = metadata !{metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !720, metadata !722, metadata !723, metadata !724, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737}
!706 = metadata !{i32 786445, metadata !704, metadata !"ctx_index", metadata !21, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!707 = metadata !{i32 786445, metadata !704, metadata !"index", metadata !21, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!708 = metadata !{i32 786445, metadata !704, metadata !"spare0", metadata !21, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!709 = metadata !{i32 786445, metadata !704, metadata !"spare1", metadata !21, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!710 = metadata !{i32 786445, metadata !704, metadata !"spare2", metadata !21, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!711 = metadata !{i32 786445, metadata !704, metadata !"spare3", metadata !21, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!712 = metadata !{i32 786445, metadata !704, metadata !"version", metadata !21, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!713 = metadata !{i32 786445, metadata !704, metadata !"ctx", metadata !21, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !68} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!714 = metadata !{i32 786445, metadata !704, metadata !"commands", metadata !21, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !603} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!715 = metadata !{i32 786445, metadata !704, metadata !"type", metadata !21, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !32} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!716 = metadata !{i32 786445, metadata !704, metadata !"init_master", metadata !21, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !717} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!717 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !718} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!719 = metadata !{metadata !20, metadata !25}
!720 = metadata !{i32 786445, metadata !704, metadata !"init_module", metadata !21, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !721} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!721 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!722 = metadata !{i32 786445, metadata !704, metadata !"init_process", metadata !21, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !721} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!723 = metadata !{i32 786445, metadata !704, metadata !"init_thread", metadata !21, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !721} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!724 = metadata !{i32 786445, metadata !704, metadata !"exit_thread", metadata !21, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !725} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!725 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !726} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!726 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!727 = metadata !{null, metadata !71}
!728 = metadata !{i32 786445, metadata !704, metadata !"exit_process", metadata !21, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !725} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!729 = metadata !{i32 786445, metadata !704, metadata !"exit_master", metadata !21, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !725} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!730 = metadata !{i32 786445, metadata !704, metadata !"spare_hook0", metadata !21, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!731 = metadata !{i32 786445, metadata !704, metadata !"spare_hook1", metadata !21, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!732 = metadata !{i32 786445, metadata !704, metadata !"spare_hook2", metadata !21, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!733 = metadata !{i32 786445, metadata !704, metadata !"spare_hook3", metadata !21, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!734 = metadata !{i32 786445, metadata !704, metadata !"spare_hook4", metadata !21, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!735 = metadata !{i32 786445, metadata !704, metadata !"spare_hook5", metadata !21, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!736 = metadata !{i32 786445, metadata !704, metadata !"spare_hook6", metadata !21, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!737 = metadata !{i32 786445, metadata !704, metadata !"spare_hook7", metadata !21, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!738 = metadata !{i32 786484, i32 0, null, metadata !"ngx_max_module", metadata !"ngx_max_module", metadata !"", metadata !6, i32 35, metadata !32, i32 0, i32 1, i32* @ngx_max_module} ; [ DW_TAG_variable ] [ngx_max_module] [line 35] [def]
!739 = metadata !{i32 786484, i32 0, null, metadata !"ngx_show_help", metadata !"ngx_show_help", metadata !"", metadata !6, i32 36, metadata !32, i32 1, i32 1, null} ; [ DW_TAG_variable ] [ngx_show_help] [line 36] [local] [def]
!740 = metadata !{i32 786484, i32 0, null, metadata !"ngx_show_version", metadata !"ngx_show_version", metadata !"", metadata !6, i32 37, metadata !32, i32 1, i32 1, null} ; [ DW_TAG_variable ] [ngx_show_version] [line 37] [local] [def]
!741 = metadata !{i32 786484, i32 0, null, metadata !"ngx_show_configure", metadata !"ngx_show_configure", metadata !"", metadata !6, i32 38, metadata !32, i32 1, i32 1, null} ; [ DW_TAG_variable ] [ngx_show_configure] [line 38] [local] [def]
!742 = metadata !{i32 786484, i32 0, null, metadata !"ngx_prefix", metadata !"ngx_prefix", metadata !"", metadata !6, i32 39, metadata !50, i32 1, i32 1, i8** @ngx_prefix} ; [ DW_TAG_variable ] [ngx_prefix] [line 39] [local] [def]
!743 = metadata !{i32 786484, i32 0, null, metadata !"ngx_signal", metadata !"ngx_signal", metadata !"", metadata !6, i32 42, metadata !12, i32 1, i32 1, i8** @ngx_signal} ; [ DW_TAG_variable ] [ngx_signal] [line 42] [local] [def]
!744 = metadata !{i32 786484, i32 0, null, metadata !"ngx_os_environ", metadata !"ngx_os_environ", metadata !"", metadata !6, i32 43, metadata !418, i32 1, i32 1, i8*** @ngx_os_environ} ; [ DW_TAG_variable ] [ngx_os_environ] [line 43] [local] [def]
!745 = metadata !{i32 786484, i32 0, null, metadata !"ngx_conf_params", metadata !"ngx_conf_params", metadata !"", metadata !6, i32 41, metadata !50, i32 1, i32 1, i8** @ngx_conf_params} ; [ DW_TAG_variable ] [ngx_conf_params] [line 41] [local] [def]
!746 = metadata !{i32 786484, i32 0, null, metadata !"ngx_conf_file", metadata !"ngx_conf_file", metadata !"", metadata !6, i32 40, metadata !50, i32 1, i32 1, i8** @ngx_conf_file} ; [ DW_TAG_variable ] [ngx_conf_file] [line 40] [local] [def]
!747 = metadata !{i32 786484, i32 0, null, metadata !"ngx_core_commands", metadata !"ngx_core_commands", metadata !"", metadata !6, i32 19, metadata !748, i32 1, i32 1, [16 x %struct.ngx_command_s]* @ngx_core_commands} ; [ DW_TAG_variable ] [ngx_core_commands] [line 19] [local] [def]
!748 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3584, i64 32, i32 0, i32 0, metadata !604, metadata !749, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3584, align 32, offset 0] [from ngx_command_t]
!749 = metadata !{metadata !750}
!750 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!751 = metadata !{i32 786484, i32 0, null, metadata !"ngx_debug_points", metadata !"ngx_debug_points", metadata !"", metadata !6, i32 18, metadata !752, i32 1, i32 1, [3 x %struct.ngx_conf_enum_t]* @ngx_debug_points} ; [ DW_TAG_variable ] [ngx_debug_points] [line 18] [local] [def]
!752 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !753, metadata !758, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ngx_conf_enum_t]
!753 = metadata !{i32 786454, null, metadata !"ngx_conf_enum_t", metadata !6, i32 210, i64 0, i64 0, i64 0, i32 0, metadata !754} ; [ DW_TAG_typedef ] [ngx_conf_enum_t] [line 210, size 0, align 0, offset 0] [from ]
!754 = metadata !{i32 786451, null, metadata !"", metadata !21, i32 207, i64 96, i64 32, i32 0, i32 0, null, metadata !755, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 207, size 96, align 32, offset 0] [from ]
!755 = metadata !{metadata !756, metadata !757}
!756 = metadata !{i32 786445, metadata !754, metadata !"name", metadata !21, i32 208, i64 64, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 208, size 64, align 32, offset 0] [from ngx_str_t]
!757 = metadata !{i32 786445, metadata !754, metadata !"value", metadata !21, i32 209, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [value] [line 209, size 32, align 32, offset 64] [from ngx_uint_t]
!758 = metadata !{metadata !759}
!759 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!760 = metadata !{i32 786484, i32 0, null, metadata !"ngx_core_module_ctx", metadata !"ngx_core_module_ctx", metadata !"", metadata !6, i32 23, metadata !761, i32 1, i32 1, %struct.ngx_core_module_t* @ngx_core_module_ctx} ; [ DW_TAG_variable ] [ngx_core_module_ctx] [line 23] [local] [def]
!761 = metadata !{i32 786454, null, metadata !"ngx_core_module_t", metadata !6, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !762} ; [ DW_TAG_typedef ] [ngx_core_module_t] [line 152, size 0, align 0, offset 0] [from ]
!762 = metadata !{i32 786451, null, metadata !"", metadata !21, i32 148, i64 128, i64 32, i32 0, i32 0, null, metadata !763, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 148, size 128, align 32, offset 0] [from ]
!763 = metadata !{metadata !764, metadata !765, metadata !767}
!764 = metadata !{i32 786445, metadata !762, metadata !"name", metadata !21, i32 149, i64 64, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 149, size 64, align 32, offset 0] [from ngx_str_t]
!765 = metadata !{i32 786445, metadata !762, metadata !"create_conf", metadata !21, i32 150, i64 32, i64 32, i64 64, i32 0, metadata !766} ; [ DW_TAG_member ] [create_conf] [line 150, size 32, align 32, offset 64] [from ]
!766 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !693} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!767 = metadata !{i32 786445, metadata !762, metadata !"init_conf", metadata !21, i32 151, i64 32, i64 32, i64 96, i32 0, metadata !768} ; [ DW_TAG_member ] [init_conf] [line 151, size 32, align 32, offset 96] [from ]
!768 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !679} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!769 = metadata !{i32 45, i32 0, metadata !5, null}
!770 = metadata !{i32 50, i32 0, metadata !19, null}
!771 = metadata !{i32 53, i32 0, metadata !19, null}
!772 = metadata !{i32 786689, metadata !501, metadata !"argc", metadata !6, i32 16777569, metadata !9, i32 0, metadata !773} ; [ DW_TAG_arg_variable ] [argc] [line 353]
!773 = metadata !{i32 56, i32 0, metadata !19, null}
!774 = metadata !{i32 353, i32 0, metadata !501, metadata !773}
!775 = metadata !{i32 786689, metadata !501, metadata !"argv", metadata !6, i32 33554785, metadata !10, i32 0, metadata !773} ; [ DW_TAG_arg_variable ] [argv] [line 353]
!776 = metadata !{i32 1}
!777 = metadata !{i32 786688, metadata !509, metadata !"i", metadata !6, i32 356, metadata !20, i32 0, metadata !773} ; [ DW_TAG_auto_variable ] [i] [line 356]
!778 = metadata !{i32 357, i32 0, metadata !517, metadata !773}
!779 = metadata !{i32 446, i32 0, metadata !512, metadata !773}
!780 = metadata !{i32 446, i32 0, metadata !523, metadata !773}
!781 = metadata !{i32 446, i32 0, metadata !529, metadata !773}
!782 = metadata !{i32 446, i32 0, metadata !535, metadata !773}
!783 = metadata !{i32 358, i32 0, metadata !516, metadata !773}
!784 = metadata !{metadata !"any pointer", metadata !785}
!785 = metadata !{metadata !"omnipotent char", metadata !786}
!786 = metadata !{metadata !"Simple C/C++ TBAA"}
!787 = metadata !{i32 786688, metadata !509, metadata !"p", metadata !6, i32 355, metadata !50, i32 0, metadata !773} ; [ DW_TAG_auto_variable ] [p] [line 355]
!788 = metadata !{i32 359, i32 0, metadata !516, metadata !773}
!789 = metadata !{i32 363, i32 0, metadata !516, metadata !773}
!790 = metadata !{i32 360, i32 0, metadata !791, metadata !773}
!791 = metadata !{i32 786443, metadata !516, i32 359, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!792 = metadata !{i32 361, i32 0, metadata !791, metadata !773}
!793 = metadata !{i32 364, i32 0, metadata !515, metadata !773}
!794 = metadata !{i32 372, i32 0, metadata !795, metadata !773}
!795 = metadata !{i32 786443, metadata !514, i32 369, i32 0, metadata !6, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!796 = metadata !{i32 377, i32 0, metadata !797, metadata !773}
!797 = metadata !{i32 786443, metadata !514, i32 375, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!798 = metadata !{i32 383, i32 0, metadata !799, metadata !773}
!799 = metadata !{i32 786443, metadata !514, i32 380, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!800 = metadata !{i32 387, i32 0, metadata !801, metadata !773}
!801 = metadata !{i32 786443, metadata !514, i32 386, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!802 = metadata !{metadata !"int", metadata !785}
!803 = metadata !{i32 388, i32 0, metadata !801, metadata !773}
!804 = metadata !{i32 392, i32 0, metadata !805, metadata !773}
!805 = metadata !{i32 786443, metadata !514, i32 391, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!806 = metadata !{i32 393, i32 0, metadata !805, metadata !773}
!807 = metadata !{i32 397, i32 0, metadata !808, metadata !773}
!808 = metadata !{i32 786443, metadata !514, i32 396, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!809 = metadata !{i32 398, i32 0, metadata !810, metadata !773}
!810 = metadata !{i32 786443, metadata !808, i32 397, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!811 = metadata !{i32 399, i32 0, metadata !810, metadata !773}
!812 = metadata !{i32 401, i32 0, metadata !808, metadata !773}
!813 = metadata !{i32 402, i32 0, metadata !814, metadata !773}
!814 = metadata !{i32 786443, metadata !808, i32 401, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!815 = metadata !{i32 403, i32 0, metadata !814, metadata !773}
!816 = metadata !{i32 405, i32 0, metadata !808, metadata !773}
!817 = metadata !{i32 406, i32 0, metadata !808, metadata !773}
!818 = metadata !{i32 410, i32 0, metadata !819, metadata !773}
!819 = metadata !{i32 786443, metadata !514, i32 409, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!820 = metadata !{i32 411, i32 0, metadata !821, metadata !773}
!821 = metadata !{i32 786443, metadata !819, i32 410, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!822 = metadata !{i32 412, i32 0, metadata !821, metadata !773}
!823 = metadata !{i32 414, i32 0, metadata !819, metadata !773}
!824 = metadata !{i32 415, i32 0, metadata !825, metadata !773}
!825 = metadata !{i32 786443, metadata !819, i32 414, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!826 = metadata !{i32 416, i32 0, metadata !825, metadata !773}
!827 = metadata !{i32 418, i32 0, metadata !819, metadata !773}
!828 = metadata !{i32 419, i32 0, metadata !819, metadata !773}
!829 = metadata !{i32 423, i32 0, metadata !830, metadata !773}
!830 = metadata !{i32 786443, metadata !514, i32 422, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!831 = metadata !{i32 424, i32 0, metadata !832, metadata !773}
!832 = metadata !{i32 786443, metadata !830, i32 423, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!833 = metadata !{i32 425, i32 0, metadata !832, metadata !773}
!834 = metadata !{i32 427, i32 0, metadata !830, metadata !773}
!835 = metadata !{i32 428, i32 0, metadata !836, metadata !773}
!836 = metadata !{i32 786443, metadata !830, i32 427, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!837 = metadata !{i32 429, i32 0, metadata !836, metadata !773}
!838 = metadata !{i32 431, i32 0, metadata !830, metadata !773}
!839 = metadata !{i32 432, i32 0, metadata !830, metadata !773}
!840 = metadata !{i32 436, i32 0, metadata !513, metadata !773}
!841 = metadata !{i32 439, i32 0, metadata !513, metadata !773}
!842 = metadata !{i32 443, i32 0, metadata !843, metadata !773}
!843 = metadata !{i32 786443, metadata !513, i32 442, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!844 = metadata !{i32 444, i32 0, metadata !843, metadata !773}
!845 = metadata !{i32 437, i32 0, metadata !846, metadata !773}
!846 = metadata !{i32 786443, metadata !513, i32 436, i32 0, metadata !6, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!847 = metadata !{i32 446, i32 0, metadata !848, metadata !773}
!848 = metadata !{i32 786443, metadata !849, i32 446, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!849 = metadata !{i32 786443, metadata !520, i32 446, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!850 = metadata !{i32 446, i32 0, metadata !851, metadata !773}
!851 = metadata !{i32 786443, metadata !852, i32 446, i32 0, metadata !6, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!852 = metadata !{i32 786443, metadata !526, i32 446, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!853 = metadata !{i32 446, i32 0, metadata !854, metadata !773}
!854 = metadata !{i32 786443, metadata !855, i32 446, i32 0, metadata !6, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!855 = metadata !{i32 786443, metadata !532, i32 446, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!856 = metadata !{i32 446, i32 0, metadata !857, metadata !773}
!857 = metadata !{i32 786443, metadata !858, i32 446, i32 0, metadata !6, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!858 = metadata !{i32 786443, metadata !538, i32 446, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!859 = metadata !{i32 447, i32 0, metadata !860, metadata !773}
!860 = metadata !{i32 786443, metadata !513, i32 446, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!861 = metadata !{i32 448, i32 0, metadata !860, metadata !773}
!862 = metadata !{i32 450, i32 0, metadata !513, metadata !773}
!863 = metadata !{i32 451, i32 0, metadata !513, metadata !773}
!864 = metadata !{i32 455, i32 0, metadata !865, metadata !773}
!865 = metadata !{i32 786443, metadata !514, i32 454, i32 0, metadata !6, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!866 = metadata !{i32 456, i32 0, metadata !865, metadata !773}
!867 = metadata !{i32 59, i32 0, metadata !19, null}
!868 = metadata !{i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0)}
!869 = metadata !{i32 786689, metadata !560, metadata !"text", metadata !29, i32 16777456, metadata !12, i32 0, metadata !870} ; [ DW_TAG_arg_variable ] [text] [line 240]
!870 = metadata !{i32 60, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !19, i32 59, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!872 = metadata !{i32 240, i32 0, metadata !560, metadata !870}
!873 = metadata !{i32 2}
!874 = metadata !{i32 786689, metadata !566, metadata !"fd", metadata !567, i32 16777356, metadata !41, i32 0, metadata !875} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!875 = metadata !{i32 242, i32 0, metadata !876, metadata !870}
!876 = metadata !{i32 786443, metadata !560, i32 241, i32 0, metadata !29, i32 140} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_log.h]
!877 = metadata !{i32 140, i32 0, metadata !566, metadata !875}
!878 = metadata !{i32 142, i32 0, metadata !879, metadata !875}
!879 = metadata !{i32 786443, metadata !566, i32 141, i32 0, metadata !567, i32 141} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/os/unix/ngx_files.h]
!880 = metadata !{i32 61, i32 0, metadata !871, null}
!881 = metadata !{i8* getelementptr inbounds ([635 x i8]* @.str1, i32 0, i32 0)}
!882 = metadata !{i32 786689, metadata !560, metadata !"text", metadata !29, i32 16777456, metadata !12, i32 0, metadata !883} ; [ DW_TAG_arg_variable ] [text] [line 240]
!883 = metadata !{i32 62, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !871, i32 61, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!885 = metadata !{i32 240, i32 0, metadata !560, metadata !883}
!886 = metadata !{i32 786689, metadata !566, metadata !"fd", metadata !567, i32 16777356, metadata !41, i32 0, metadata !887} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!887 = metadata !{i32 242, i32 0, metadata !876, metadata !883}
!888 = metadata !{i32 140, i32 0, metadata !566, metadata !887}
!889 = metadata !{i32 142, i32 0, metadata !879, metadata !887}
!890 = metadata !{i32 66, i32 0, metadata !884, null}
!891 = metadata !{i32 67, i32 0, metadata !871, null}
!892 = metadata !{i8* getelementptr inbounds ([269 x i8]* @.str2, i32 0, i32 0)}
!893 = metadata !{i32 786689, metadata !560, metadata !"text", metadata !29, i32 16777456, metadata !12, i32 0, metadata !894} ; [ DW_TAG_arg_variable ] [text] [line 240]
!894 = metadata !{i32 68, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !871, i32 67, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!896 = metadata !{i32 240, i32 0, metadata !560, metadata !894}
!897 = metadata !{i32 786689, metadata !566, metadata !"fd", metadata !567, i32 16777356, metadata !41, i32 0, metadata !898} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!898 = metadata !{i32 242, i32 0, metadata !876, metadata !894}
!899 = metadata !{i32 140, i32 0, metadata !566, metadata !898}
!900 = metadata !{i32 142, i32 0, metadata !879, metadata !898}
!901 = metadata !{i32 76, i32 0, metadata !895, null}
!902 = metadata !{i32 77, i32 0, metadata !871, null}
!903 = metadata !{i32 82, i32 0, metadata !19, null}
!904 = metadata !{i32 83, i32 0, metadata !19, null}
!905 = metadata !{i32 85, i32 0, metadata !19, null}
!906 = metadata !{i32 87, i32 0, metadata !19, null}
!907 = metadata !{i32 88, i32 0, metadata !19, null}
!908 = metadata !{i32 89, i32 0, metadata !19, null}
!909 = metadata !{i32 99, i32 0, metadata !19, null}
!910 = metadata !{i32 100, i32 0, metadata !19, null}
!911 = metadata !{i32 101, i32 0, metadata !19, null}
!912 = metadata !{i32 102, i32 0, metadata !19, null}
!913 = metadata !{i32 103, i32 0, metadata !19, null}
!914 = metadata !{i32 786689, metadata !490, metadata !"cycle", metadata !6, i32 16777682, metadata !71, i32 0, metadata !915} ; [ DW_TAG_arg_variable ] [cycle] [line 466]
!915 = metadata !{i32 106, i32 0, metadata !19, null}
!916 = metadata !{i32 466, i32 0, metadata !490, metadata !915}
!917 = metadata !{i32 786689, metadata !490, metadata !"argc", metadata !6, i32 33554898, metadata !9, i32 0, metadata !915} ; [ DW_TAG_arg_variable ] [argc] [line 466]
!918 = metadata !{i32 786689, metadata !490, metadata !"argv", metadata !6, i32 50332114, metadata !10, i32 0, metadata !915} ; [ DW_TAG_arg_variable ] [argv] [line 466]
!919 = metadata !{i32 472, i32 0, metadata !499, metadata !915}
!920 = metadata !{i32 473, i32 0, metadata !499, metadata !915}
!921 = metadata !{i32 474, i32 0, metadata !499, metadata !915}
!922 = metadata !{i32 475, i32 0, metadata !499, metadata !915}
!923 = metadata !{i32 478, i32 0, metadata !924, metadata !915}
!924 = metadata !{i32 786443, metadata !499, i32 478, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!925 = metadata !{i32 479, i32 0, metadata !926, metadata !915}
!926 = metadata !{i32 786443, metadata !924, i32 478, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!927 = metadata !{i32 786688, metadata !499, metadata !"len", metadata !6, i32 470, metadata !48, i32 0, metadata !915} ; [ DW_TAG_auto_variable ] [len] [line 470]
!928 = metadata !{i32 480, i32 0, metadata !926, metadata !915}
!929 = metadata !{i32 481, i32 0, metadata !926, metadata !915}
!930 = metadata !{i32 484, i32 0, metadata !926, metadata !915}
!931 = metadata !{i32 486, i32 0, metadata !499, metadata !915}
!932 = metadata !{i32 488, i32 0, metadata !499, metadata !915}
!933 = metadata !{i32 786689, metadata !481, metadata !"cycle", metadata !6, i32 16777708, metadata !71, i32 0, metadata !934} ; [ DW_TAG_arg_variable ] [cycle] [line 492]
!934 = metadata !{i32 109, i32 0, metadata !19, null}
!935 = metadata !{i32 492, i32 0, metadata !481, metadata !934}
!936 = metadata !{i32 496, i32 0, metadata !488, metadata !934}
!937 = metadata !{i32 497, i32 0, metadata !938, metadata !934}
!938 = metadata !{i32 786443, metadata !488, i32 496, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!939 = metadata !{i32 786688, metadata !488, metadata !"len", metadata !6, i32 495, metadata !48, i32 0, metadata !934} ; [ DW_TAG_auto_variable ] [len] [line 495]
!940 = metadata !{i32 786688, metadata !488, metadata !"p", metadata !6, i32 494, metadata !50, i32 0, metadata !934} ; [ DW_TAG_auto_variable ] [p] [line 494]
!941 = metadata !{i32 498, i32 0, metadata !938, metadata !934}
!942 = metadata !{i32 499, i32 0, metadata !938, metadata !934}
!943 = metadata !{i32 500, i32 0, metadata !944, metadata !934}
!944 = metadata !{i32 786443, metadata !938, i32 499, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!945 = metadata !{i32 501, i32 0, metadata !944, metadata !934}
!946 = metadata !{i32 504, i32 0, metadata !944, metadata !934}
!947 = metadata !{i32 505, i32 0, metadata !944, metadata !934}
!948 = metadata !{i32 506, i32 0, metadata !944, metadata !934}
!949 = metadata !{i32 507, i32 0, metadata !938, metadata !934}
!950 = metadata !{i32 508, i32 0, metadata !938, metadata !934}
!951 = metadata !{i32 509, i32 0, metadata !938, metadata !934}
!952 = metadata !{i32 510, i32 0, metadata !938, metadata !934}
!953 = metadata !{i32 511, i32 0, metadata !938, metadata !934}
!954 = metadata !{i32 516, i32 0, metadata !955, metadata !934}
!955 = metadata !{i32 786443, metadata !488, i32 512, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!956 = metadata !{i32 517, i32 0, metadata !955, metadata !934}
!957 = metadata !{i32 520, i32 0, metadata !955, metadata !934}
!958 = metadata !{i32 521, i32 0, metadata !955, metadata !934}
!959 = metadata !{i32 524, i32 0, metadata !488, metadata !934}
!960 = metadata !{i32 525, i32 0, metadata !961, metadata !934}
!961 = metadata !{i32 786443, metadata !488, i32 524, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!962 = metadata !{i32 526, i32 0, metadata !961, metadata !934}
!963 = metadata !{i32 527, i32 0, metadata !961, metadata !934}
!964 = metadata !{i32 529, i32 0, metadata !965, metadata !934}
!965 = metadata !{i32 786443, metadata !488, i32 528, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!966 = metadata !{i32 530, i32 0, metadata !965, metadata !934}
!967 = metadata !{i32 532, i32 0, metadata !488, metadata !934}
!968 = metadata !{i32 535, i32 0, metadata !969, metadata !934}
!969 = metadata !{i32 786443, metadata !488, i32 535, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!970 = metadata !{i32 536, i32 0, metadata !971, metadata !934}
!971 = metadata !{i32 786443, metadata !969, i32 535, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!972 = metadata !{i32 537, i32 0, metadata !973, metadata !934}
!973 = metadata !{i32 786443, metadata !971, i32 536, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!974 = metadata !{i32 538, i32 0, metadata !973, metadata !934}
!975 = metadata !{i32 539, i32 0, metadata !973, metadata !934}
!976 = metadata !{i32 542, i32 0, metadata !488, metadata !934}
!977 = metadata !{i32 543, i32 0, metadata !978, metadata !934}
!978 = metadata !{i32 786443, metadata !488, i32 542, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!979 = metadata !{i32 544, i32 0, metadata !978, metadata !934}
!980 = metadata !{i32 545, i32 0, metadata !978, metadata !934}
!981 = metadata !{i32 546, i32 0, metadata !488, metadata !934}
!982 = metadata !{i32 547, i32 0, metadata !983, metadata !934}
!983 = metadata !{i32 786443, metadata !488, i32 546, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!984 = metadata !{i32 548, i32 0, metadata !983, metadata !934}
!985 = metadata !{i32 112, i32 0, metadata !19, null}
!986 = metadata !{i32 118, i32 0, metadata !19, null}
!987 = metadata !{i32 786689, metadata !540, metadata !"cycle", metadata !6, i32 16777406, metadata !71, i32 0, metadata !988} ; [ DW_TAG_arg_variable ] [cycle] [line 190]
!988 = metadata !{i32 121, i32 0, metadata !19, null}
!989 = metadata !{i32 190, i32 0, metadata !540, metadata !988}
!990 = metadata !{i32 197, i32 0, metadata !545, metadata !988}
!991 = metadata !{i32 786688, metadata !545, metadata !"inherited", metadata !6, i32 194, metadata !50, i32 0, metadata !988} ; [ DW_TAG_auto_variable ] [inherited] [line 194]
!992 = metadata !{i32 198, i32 0, metadata !545, metadata !988}
!993 = metadata !{i32 201, i32 0, metadata !545, metadata !988}
!994 = metadata !{i32 202, i32 0, metadata !545, metadata !988}
!995 = metadata !{i32 203, i32 0, metadata !545, metadata !988}
!996 = metadata !{i32 786689, metadata !550, metadata !"array", metadata !83, i32 16777248, metadata !553, i32 0, metadata !995} ; [ DW_TAG_arg_variable ] [array] [line 32]
!997 = metadata !{i32 32, i32 0, metadata !550, metadata !995}
!998 = metadata !{i32 786689, metadata !550, metadata !"pool", metadata !83, i32 33554464, metadata !81, i32 0, metadata !995} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!999 = metadata !{i32 10}
!1000 = metadata !{i32 786689, metadata !550, metadata !"n", metadata !83, i32 50331680, metadata !32, i32 0, metadata !995} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1001 = metadata !{i32 112}
!1002 = metadata !{i32 786689, metadata !550, metadata !"size", metadata !83, i32 67108896, metadata !48, i32 0, metadata !995} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1003 = metadata !{i32 39, i32 0, metadata !1004, metadata !995}
!1004 = metadata !{i32 786443, metadata !550, i32 33, i32 0, metadata !83, i32 138} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!1005 = metadata !{i32 40, i32 0, metadata !1004, metadata !995}
!1006 = metadata !{i32 41, i32 0, metadata !1004, metadata !995}
!1007 = metadata !{i32 42, i32 0, metadata !1004, metadata !995}
!1008 = metadata !{i32 44, i32 0, metadata !1004, metadata !995}
!1009 = metadata !{i32 45, i32 0, metadata !1004, metadata !995}
!1010 = metadata !{i32 206, i32 0, metadata !1011, metadata !988}
!1011 = metadata !{i32 786443, metadata !545, i32 206, i32 0, metadata !6, i32 133} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1012 = metadata !{i32 208, i32 0, metadata !1013, metadata !988}
!1013 = metadata !{i32 786443, metadata !1014, i32 207, i32 0, metadata !6, i32 135} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1014 = metadata !{i32 786443, metadata !1011, i32 206, i32 0, metadata !6, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1015 = metadata !{i32 786688, metadata !545, metadata !"s", metadata !6, i32 195, metadata !20, i32 0, metadata !988} ; [ DW_TAG_auto_variable ] [s] [line 195]
!1016 = metadata !{i32 209, i32 0, metadata !1013, metadata !988}
!1017 = metadata !{i32 210, i32 0, metadata !1018, metadata !988}
!1018 = metadata !{i32 786443, metadata !1013, i32 209, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1019 = metadata !{i32 211, i32 0, metadata !1018, metadata !988}
!1020 = metadata !{i32 215, i32 0, metadata !1013, metadata !988}
!1021 = metadata !{i32 216, i32 0, metadata !1013, metadata !988}
!1022 = metadata !{i32 214, i32 0, metadata !1013, metadata !988}
!1023 = metadata !{i32 219, i32 0, metadata !1013, metadata !988}
!1024 = metadata !{i32 220, i32 0, metadata !1013, metadata !988}
!1025 = metadata !{i32 221, i32 0, metadata !1013, metadata !988}
!1026 = metadata !{i32 223, i32 0, metadata !545, metadata !988}
!1027 = metadata !{i32 224, i32 0, metadata !545, metadata !988}
!1028 = metadata !{i32 124, i32 0, metadata !19, null}
!1029 = metadata !{i32 125, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !19, i32 125, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1031 = metadata !{i32 126, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1030, i32 125, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1033 = metadata !{i32 128, i32 0, metadata !19, null}
!1034 = metadata !{i32 129, i32 0, metadata !19, null}
!1035 = metadata !{i32 130, i32 0, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !19, i32 129, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1037 = metadata !{i32 131, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1036, i32 130, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1039 = metadata !{i32 132, i32 0, metadata !1038, null}
!1040 = metadata !{i32 135, i32 0, metadata !19, null}
!1041 = metadata !{i32 136, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !19, i32 135, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1043 = metadata !{i32 137, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1042, i32 136, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1045 = metadata !{i32 138, i32 0, metadata !1044, null}
!1046 = metadata !{i32 141, i32 0, metadata !19, null}
!1047 = metadata !{i32 142, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !19, i32 141, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1049 = metadata !{i32 144, i32 0, metadata !19, null}
!1050 = metadata !{i32 145, i32 0, metadata !19, null}
!1051 = metadata !{i32 146, i32 0, metadata !19, null}
!1052 = metadata !{i32 147, i32 0, metadata !19, null}
!1053 = metadata !{i32 148, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !19, i32 147, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1055 = metadata !{i32 149, i32 0, metadata !1054, null}
!1056 = metadata !{i32 151, i32 0, metadata !19, null}
!1057 = metadata !{i32 154, i32 0, metadata !19, null}
!1058 = metadata !{i32 155, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !19, i32 154, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1060 = metadata !{i32 158, i32 0, metadata !1059, null}
!1061 = metadata !{i32 160, i32 0, metadata !19, null}
!1062 = metadata !{i32 159, i32 0, metadata !1059, null}
!1063 = metadata !{i32 161, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !19, i32 160, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1065 = metadata !{i32 162, i32 0, metadata !1064, null}
!1066 = metadata !{i32 164, i32 0, metadata !19, null}
!1067 = metadata !{i32 167, i32 0, metadata !19, null}
!1068 = metadata !{i32 168, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !19, i32 167, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1070 = metadata !{i32 169, i32 0, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !1069, i32 168, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1072 = metadata !{i32 170, i32 0, metadata !1071, null}
!1073 = metadata !{i32 174, i32 0, metadata !19, null}
!1074 = metadata !{i32 175, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !19, i32 174, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1076 = metadata !{i32 176, i32 0, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !1075, i32 175, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1078 = metadata !{i32 177, i32 0, metadata !1077, null}
!1079 = metadata !{i32 180, i32 0, metadata !19, null}
!1080 = metadata !{i32 181, i32 0, metadata !19, null}
!1081 = metadata !{i32 182, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !19, i32 181, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1083 = metadata !{i32 183, i32 0, metadata !1082, null}
!1084 = metadata !{i32 185, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !19, i32 184, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1086 = metadata !{i32 188, i32 0, metadata !19, null}
!1087 = metadata !{i32 227, i32 0, metadata !419, null}
!1088 = metadata !{i32 235, i32 0, metadata !428, null}
!1089 = metadata !{i32 236, i32 0, metadata !428, null}
!1090 = metadata !{i32 239, i32 0, metadata !428, null}
!1091 = metadata !{i32 240, i32 0, metadata !438, null}
!1092 = metadata !{i32 241, i32 0, metadata !436, null}
!1093 = metadata !{i32 241, i32 0, metadata !441, null}
!1094 = metadata !{i32 241, i32 0, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !441, i32 241, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1096 = metadata !{i32 241, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1095, i32 241, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1098 = metadata !{i32 241, i32 0, metadata !437, null}
!1099 = metadata !{i32 245, i32 0, metadata !428, null}
!1100 = metadata !{i32 246, i32 0, metadata !428, null}
!1101 = metadata !{i32 249, i32 0, metadata !428, null}
!1102 = metadata !{i32 250, i32 0, metadata !428, null}
!1103 = metadata !{i32 251, i32 0, metadata !428, null}
!1104 = metadata !{i32 253, i32 0, metadata !428, null}
!1105 = metadata !{i32 254, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !428, i32 254, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1107 = metadata !{i32 255, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1106, i32 254, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1109 = metadata !{i32 256, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1108, i32 255, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1111 = metadata !{i32 259, i32 0, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !1108, i32 259, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1113 = metadata !{i32 260, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1112, i32 259, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1115 = metadata !{i32 261, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1114, i32 260, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1117 = metadata !{i32 266, i32 0, metadata !428, null}
!1118 = metadata !{i32 267, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !428, i32 266, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1120 = metadata !{i32 268, i32 0, metadata !1119, null}
!1121 = metadata !{i32 269, i32 0, metadata !1119, null}
!1122 = metadata !{i32 271, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !428, i32 270, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1124 = metadata !{i32 273, i32 0, metadata !428, null}
!1125 = metadata !{i32 277, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !428, i32 277, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1127 = metadata !{i32 278, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1126, i32 277, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1129 = metadata !{i32 279, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1128, i32 278, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1131 = metadata !{i32 280, i32 0, metadata !1130, null}
!1132 = metadata !{i32 282, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1128, i32 282, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1134 = metadata !{i32 283, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1133, i32 282, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1136 = metadata !{i32 284, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1135, i32 283, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1138 = metadata !{i32 285, i32 0, metadata !1137, null}
!1139 = metadata !{i32 289, i32 0, metadata !428, null}
!1140 = metadata !{i32 290, i32 0, metadata !428, null}
!1141 = metadata !{i32 291, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !428, i32 290, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1143 = metadata !{i32 292, i32 0, metadata !1142, null}
!1144 = metadata !{i32 293, i32 0, metadata !1142, null}
!1145 = metadata !{i32 295, i32 0, metadata !428, null}
!1146 = metadata !{i32 297, i32 0, metadata !445, null}
!1147 = metadata !{i32 303, i32 0, metadata !456, null}
!1148 = metadata !{i32 305, i32 0, metadata !456, null}
!1149 = metadata !{i32 308, i32 0, metadata !456, null}
!1150 = metadata !{i32 309, i32 0, metadata !456, null}
!1151 = metadata !{i32 310, i32 0, metadata !456, null}
!1152 = metadata !{i32 311, i32 0, metadata !456, null}
!1153 = metadata !{i32 312, i32 0, metadata !456, null}
!1154 = metadata !{i32 313, i32 0, metadata !456, null}
!1155 = metadata !{i32 314, i32 0, metadata !456, null}
!1156 = metadata !{i32 317, i32 0, metadata !456, null}
!1157 = metadata !{i32 318, i32 0, metadata !456, null}
!1158 = metadata !{i32 319, i32 0, metadata !456, null}
!1159 = metadata !{i32 320, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !456, i32 320, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1161 = metadata !{i32 321, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1160, i32 320, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1163 = metadata !{i32 323, i32 0, metadata !456, null}
!1164 = metadata !{i32 324, i32 0, metadata !456, null}
!1165 = metadata !{i32 327, i32 0, metadata !456, null}
!1166 = metadata !{i32 329, i32 0, metadata !456, null}
!1167 = metadata !{i32 332, i32 0, metadata !456, null}
!1168 = metadata !{i32 333, i32 0, metadata !456, null}
!1169 = metadata !{i32 334, i32 0, metadata !456, null}
!1170 = metadata !{i32 335, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !456, i32 334, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1172 = metadata !{i32 336, i32 0, metadata !1171, null}
!1173 = metadata !{i32 337, i32 0, metadata !1171, null}
!1174 = metadata !{i32 338, i32 0, metadata !1171, null}
!1175 = metadata !{i32 339, i32 0, metadata !1171, null}
!1176 = metadata !{i32 341, i32 0, metadata !456, null}
!1177 = metadata !{i32 342, i32 0, metadata !456, null}
!1178 = metadata !{i32 343, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !456, i32 342, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1180 = metadata !{i32 344, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1179, i32 343, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1182 = metadata !{i32 345, i32 0, metadata !1181, null}
!1183 = metadata !{i32 348, i32 0, metadata !456, null}
!1184 = metadata !{i32 349, i32 0, metadata !456, null}
!1185 = metadata !{i32 350, i32 0, metadata !456, null}
!1186 = metadata !{i32 351, i32 0, metadata !456, null}
!1187 = metadata !{i32 825, i32 0, metadata !473, null}
!1188 = metadata !{i32 828, i32 0, metadata !480, null}
!1189 = metadata !{i32 829, i32 0, metadata !480, null}
!1190 = metadata !{i32 832, i32 0, metadata !480, null}
!1191 = metadata !{i32 833, i32 0, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !480, i32 832, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1193 = metadata !{metadata !"long long", metadata !785}
!1194 = metadata !{i32 835, i32 0, metadata !480, null}
!1195 = metadata !{i32 836, i32 0, metadata !480, null}
!1196 = metadata !{i32 688, i32 0, metadata !647, null}
!1197 = metadata !{i32 697, i32 0, metadata !654, null}
!1198 = metadata !{i32 700, i32 0, metadata !654, null}
!1199 = metadata !{i32 701, i32 0, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !654, i32 700, i32 0, metadata !6, i32 167} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1201 = metadata !{i32 702, i32 0, metadata !1200, null}
!1202 = metadata !{i32 704, i32 0, metadata !654, null}
!1203 = metadata !{i32 705, i32 0, metadata !654, null}
!1204 = metadata !{i32 706, i32 0, metadata !654, null}
!1205 = metadata !{i32 707, i32 0, metadata !654, null}
!1206 = metadata !{i32 708, i32 0, metadata !654, null}
!1207 = metadata !{i32 709, i32 0, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !654, i32 708, i32 0, metadata !6, i32 168} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1209 = metadata !{i32 710, i32 0, metadata !1208, null}
!1210 = metadata !{i32 712, i32 0, metadata !654, null}
!1211 = metadata !{i32 713, i32 0, metadata !654, null}
!1212 = metadata !{i32 714, i32 0, metadata !654, null}
!1213 = metadata !{i32 715, i32 0, metadata !654, null}
!1214 = metadata !{i32 716, i32 0, metadata !654, null}
!1215 = metadata !{i32 717, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !654, i32 716, i32 0, metadata !6, i32 169} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1217 = metadata !{i32 718, i32 0, metadata !1216, null}
!1218 = metadata !{i32 720, i32 0, metadata !654, null}
!1219 = metadata !{i32 721, i32 0, metadata !654, null}
!1220 = metadata !{i32 723, i32 0, metadata !654, null}
!1221 = metadata !{i32 746, i32 0, metadata !636, null}
!1222 = metadata !{i32 752, i32 0, metadata !643, null}
!1223 = metadata !{i32 755, i32 0, metadata !643, null}
!1224 = metadata !{i32 756, i32 0, metadata !643, null}
!1225 = metadata !{i32 761, i32 0, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !643, i32 760, i32 0, metadata !6, i32 161} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1227 = metadata !{i32 762, i32 0, metadata !1226, null}
!1228 = metadata !{i32 763, i32 0, metadata !1226, null}
!1229 = metadata !{i32 765, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !643, i32 764, i32 0, metadata !6, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1231 = metadata !{i32 766, i32 0, metadata !1230, null}
!1232 = metadata !{i32 768, i32 0, metadata !643, null}
!1233 = metadata !{i32 769, i32 0, metadata !643, null}
!1234 = metadata !{i32 772, i32 0, metadata !643, null}
!1235 = metadata !{i32 773, i32 0, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !643, i32 772, i32 0, metadata !6, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1237 = metadata !{i32 774, i32 0, metadata !1236, null}
!1238 = metadata !{i32 776, i32 0, metadata !643, null}
!1239 = metadata !{i32 778, i32 0, metadata !623, null}
!1240 = metadata !{i32 787, i32 0, metadata !630, null}
!1241 = metadata !{i32 790, i32 0, metadata !630, null}
!1242 = metadata !{i32 791, i32 0, metadata !630, null}
!1243 = metadata !{i32 794, i32 0, metadata !630, null}
!1244 = metadata !{i32 795, i32 0, metadata !630, null}
!1245 = metadata !{i32 796, i32 0, metadata !630, null}
!1246 = metadata !{i32 797, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !630, i32 797, i32 0, metadata !6, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1248 = metadata !{i32 798, i32 0, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1247, i32 797, i32 0, metadata !6, i32 151} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1250 = metadata !{i32 799, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1249, i32 798, i32 0, metadata !6, i32 152} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1252 = metadata !{i32 800, i32 0, metadata !1251, null}
!1253 = metadata !{i32 802, i32 0, metadata !1249, null}
!1254 = metadata !{i32 803, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1249, i32 803, i32 0, metadata !6, i32 153} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1256 = metadata !{i32 804, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1255, i32 803, i32 0, metadata !6, i32 154} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1258 = metadata !{i32 805, i32 0, metadata !1257, null}
!1259 = metadata !{i32 808, i32 0, metadata !1257, null}
!1260 = metadata !{i32 809, i32 0, metadata !1257, null}
!1261 = metadata !{i32 813, i32 0, metadata !1262, null}
!1262 = metadata !{i32 786443, metadata !1257, i32 812, i32 0, metadata !6, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1263 = metadata !{i32 814, i32 0, metadata !1262, null}
!1264 = metadata !{i32 816, i32 0, metadata !1257, null}
!1265 = metadata !{i32 817, i32 0, metadata !1257, null}
!1266 = metadata !{i32 823, i32 0, metadata !630, null}
!1267 = metadata !{i32 725, i32 0, metadata !575, null}
!1268 = metadata !{i32 731, i32 0, metadata !619, null}
!1269 = metadata !{i32 732, i32 0, metadata !619, null}
!1270 = metadata !{i32 735, i32 0, metadata !619, null}
!1271 = metadata !{i32 736, i32 0, metadata !619, null}
!1272 = metadata !{i32 737, i32 0, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !619, i32 737, i32 0, metadata !6, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1274 = metadata !{i32 738, i32 0, metadata !1275, null}
!1275 = metadata !{i32 786443, metadata !1273, i32 737, i32 0, metadata !6, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1276 = metadata !{i32 739, i32 0, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1275, i32 738, i32 0, metadata !6, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1278 = metadata !{i32 740, i32 0, metadata !1277, null}
!1279 = metadata !{i32 744, i32 0, metadata !619, null}
!1280 = metadata !{i32 552, i32 0, metadata !692, null}
!1281 = metadata !{i32 555, i32 0, metadata !699, null}
!1282 = metadata !{i32 556, i32 0, metadata !699, null}
!1283 = metadata !{i32 568, i32 0, metadata !699, null}
!1284 = metadata !{i32 569, i32 0, metadata !699, null}
!1285 = metadata !{i32 570, i32 0, metadata !699, null}
!1286 = metadata !{i32 571, i32 0, metadata !699, null}
!1287 = metadata !{i32 576, i32 0, metadata !699, null}
!1288 = metadata !{i32 577, i32 0, metadata !699, null}
!1289 = metadata !{i32 580, i32 0, metadata !699, null}
!1290 = metadata !{i32 786689, metadata !550, metadata !"pool", metadata !83, i32 33554464, metadata !81, i32 0, metadata !1289} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1291 = metadata !{i32 32, i32 0, metadata !550, metadata !1289}
!1292 = metadata !{i32 786689, metadata !550, metadata !"n", metadata !83, i32 50331680, metadata !32, i32 0, metadata !1289} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1293 = metadata !{i32 8}
!1294 = metadata !{i32 786689, metadata !550, metadata !"size", metadata !83, i32 67108896, metadata !48, i32 0, metadata !1289} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1295 = metadata !{i32 39, i32 0, metadata !1004, metadata !1289}
!1296 = metadata !{i32 40, i32 0, metadata !1004, metadata !1289}
!1297 = metadata !{i32 41, i32 0, metadata !1004, metadata !1289}
!1298 = metadata !{i32 42, i32 0, metadata !1004, metadata !1289}
!1299 = metadata !{i32 44, i32 0, metadata !1004, metadata !1289}
!1300 = metadata !{i32 45, i32 0, metadata !1004, metadata !1289}
!1301 = metadata !{i32 584, i32 0, metadata !699, null}
!1302 = metadata !{i32 586, i32 0, metadata !678, null}
!1303 = metadata !{i32 589, i32 0, metadata !686, null}
!1304 = metadata !{i32 590, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !686, i32 589, i32 0, metadata !6, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1306 = metadata !{i32 591, i32 0, metadata !1305, null}
!1307 = metadata !{i32 593, i32 0, metadata !686, null}
!1308 = metadata !{i32 594, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !686, i32 593, i32 0, metadata !6, i32 172} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1310 = metadata !{i32 595, i32 0, metadata !1309, null}
!1311 = metadata !{i32 597, i32 0, metadata !686, null}
!1312 = metadata !{i32 598, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !686, i32 597, i32 0, metadata !6, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1314 = metadata !{i32 599, i32 0, metadata !1313, null}
!1315 = metadata !{i32 601, i32 0, metadata !686, null}
!1316 = metadata !{i32 602, i32 0, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !686, i32 601, i32 0, metadata !6, i32 174} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1318 = metadata !{i32 603, i32 0, metadata !1317, null}
!1319 = metadata !{i32 605, i32 0, metadata !686, null}
!1320 = metadata !{i32 606, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !686, i32 605, i32 0, metadata !6, i32 175} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1322 = metadata !{i32 607, i32 0, metadata !1321, null}
!1323 = metadata !{i32 610, i32 0, metadata !686, null}
!1324 = metadata !{i32 611, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !686, i32 610, i32 0, metadata !6, i32 176} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1326 = metadata !{i32 612, i32 0, metadata !1325, null}
!1327 = metadata !{i32 617, i32 0, metadata !686, null}
!1328 = metadata !{i32 618, i32 0, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !686, i32 617, i32 0, metadata !6, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1330 = metadata !{i32 619, i32 0, metadata !1329, null}
!1331 = metadata !{i32 620, i32 0, metadata !1329, null}
!1332 = metadata !{i32 621, i32 0, metadata !686, null}
!1333 = metadata !{i32 624, i32 0, metadata !686, null}
!1334 = metadata !{i32 625, i32 0, metadata !686, null}
!1335 = metadata !{i32 626, i32 0, metadata !686, null}
!1336 = metadata !{i32 629, i32 0, metadata !686, null}
!1337 = metadata !{i32 631, i32 0, metadata !686, null}
!1338 = metadata !{i32 634, i32 0, metadata !688, null}
!1339 = metadata !{i32 635, i32 0, metadata !688, null}
!1340 = metadata !{i32 636, i32 0, metadata !688, null}
!1341 = metadata !{i32 637, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !688, i32 636, i32 0, metadata !6, i32 181} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1343 = metadata !{i32 638, i32 0, metadata !1342, null}
!1344 = metadata !{i32 641, i32 0, metadata !688, null}
!1345 = metadata !{i32 642, i32 0, metadata !688, null}
!1346 = metadata !{i32 643, i32 0, metadata !688, null}
!1347 = metadata !{i32 644, i32 0, metadata !688, null}
!1348 = metadata !{i32 645, i32 0, metadata !688, null}
!1349 = metadata !{i32 646, i32 0, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !688, i32 645, i32 0, metadata !6, i32 182} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1351 = metadata !{i32 647, i32 0, metadata !1350, null}
!1352 = metadata !{i32 650, i32 0, metadata !688, null}
!1353 = metadata !{i32 651, i32 0, metadata !688, null}
!1354 = metadata !{i32 652, i32 0, metadata !686, null}
!1355 = metadata !{i32 653, i32 0, metadata !1356, null}
!1356 = metadata !{i32 786443, metadata !686, i32 652, i32 0, metadata !6, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1357 = metadata !{i32 654, i32 0, metadata !1356, null}
!1358 = metadata !{i32 655, i32 0, metadata !1356, null}
!1359 = metadata !{i32 656, i32 0, metadata !686, null}
!1360 = metadata !{i32 660, i32 0, metadata !691, null}
!1361 = metadata !{i32 661, i32 0, metadata !691, null}
!1362 = metadata !{i32 662, i32 0, metadata !691, null}
!1363 = metadata !{i32 663, i32 0, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !691, i32 662, i32 0, metadata !6, i32 186} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1365 = metadata !{i32 664, i32 0, metadata !1364, null}
!1366 = metadata !{i32 665, i32 0, metadata !1367, null}
!1367 = metadata !{i32 786443, metadata !1364, i32 664, i32 0, metadata !6, i32 187} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1368 = metadata !{i32 666, i32 0, metadata !1367, null}
!1369 = metadata !{i32 668, i32 0, metadata !1364, null}
!1370 = metadata !{i32 669, i32 0, metadata !1364, null}
!1371 = metadata !{i32 670, i32 0, metadata !1364, null}
!1372 = metadata !{i32 671, i32 0, metadata !1364, null}
!1373 = metadata !{i32 676, i32 0, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !691, i32 675, i32 0, metadata !6, i32 189} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/nginx.c]
!1375 = metadata !{i32 677, i32 0, metadata !1374, null}
!1376 = metadata !{i32 678, i32 0, metadata !1374, null}
!1377 = metadata !{i32 681, i32 0, metadata !1374, null}
!1378 = metadata !{i32 685, i32 0, metadata !686, null}
!1379 = metadata !{i32 686, i32 0, metadata !686, null}
