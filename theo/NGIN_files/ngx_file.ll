; ModuleID = 'src/core/ngx_file.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_temp_file_t = type { %struct.ngx_file_s, i64, %struct.ngx_path_t*, %struct.ngx_pool_s*, i8*, i32, i8, i8 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.ngx_str_t = type { i32, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_path_t = type { %struct.ngx_str_t, i32, [3 x i32], i32 (i8*)*, void (i8*)*, i8*, i8*, i32 }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, {}*, i8* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type opaque
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, {}*, i32, i32, i8* }
%struct.ngx_path_init_t = type { %struct.ngx_str_t, [3 x i32] }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.ngx_ext_rename_file_t = type { i32, i32, i32, i32, i8, %struct.ngx_log_s* }
%struct.ngx_copy_file_t = type { i64, i32, i32, i32, %struct.ngx_log_s* }
%struct.ngx_tree_ctx_s = type { i64, i64, i32, i32, i32 (i8*, i8*)*, {}*, {}*, {}*, {}*, i8*, i32, %struct.ngx_log_s* }
%struct.ngx_dir_t = type { %struct.__dirstream*, %struct.dirent*, %struct.stat, i8, i8 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@temp_number = internal global i32 0, align 4
@ngx_temp_number = global i32* @temp_number, align 4
@ngx_random_number = global i32 123456, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %V\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"%010uD%Z\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"open() \22%s\22 failed\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"mkdir() \22%s\22 failed\00", align 1
@0 = internal unnamed_addr constant [17 x i8] c"ngx_atomic_int_t\00"
@1 = internal unnamed_addr constant [5 x i8] c"long\00"
@2 = internal unnamed_addr constant [18 x i8] c"ngx_atomic_uint_t\00"
@3 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@.str4 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@4 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str5 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@5 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str6 = private unnamed_addr constant [6 x i8] c"user:\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"group:\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"all:\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@6 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str11 = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1
@.str12 = private unnamed_addr constant [145 x i8] c"the default path name \22%V\22 has the same name as another default path, but the different levels, you need to redefine one of them in http section\00", align 1
@.str13 = private unnamed_addr constant [138 x i8] c"the path name \22%V\22 in %s:%ui has the same name as default path, but the different levels, you need to define default path in http section\00", align 1
@.str14 = private unnamed_addr constant [64 x i8] c"the same path name \22%V\22 in %s:%ui has the different levels than\00", align 1
@7 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@.str15 = private unnamed_addr constant [19 x i8] c"stat() \22%s\22 failed\00", align 1
@8 = internal unnamed_addr constant [8 x i8] c"__gid_t\00"
@.str16 = private unnamed_addr constant [23 x i8] c"chown(\22%s\22, %d) failed\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"chmod() \22%s\22 failed\00", align 1
@9 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str18 = private unnamed_addr constant [21 x i8] c"utimes() \22%s\22 failed\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"%*s.%010uD%Z\00", align 1
@.str20 = private unnamed_addr constant [21 x i8] c"unlink() \22%s\22 failed\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"rename() \22%s\22 to \22%s\22 failed\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"fstat() \22%s\22 failed\00", align 1
@10 = internal unnamed_addr constant [6 x i8] c"off_t\00"
@11 = internal unnamed_addr constant [10 x i8] c"long long\00"
@.str23 = private unnamed_addr constant [19 x i8] c"read() \22%s\22 failed\00", align 1
@.str24 = private unnamed_addr constant [39 x i8] c"read() has read only %z of %uz from %s\00", align 1
@.str25 = private unnamed_addr constant [20 x i8] c"write() \22%s\22 failed\00", align 1
@12 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@13 = internal unnamed_addr constant [4 x i8] c"int\00"
@14 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@15 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str26 = private unnamed_addr constant [41 x i8] c"write() has written only %z of %uz to %s\00", align 1
@16 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str27 = private unnamed_addr constant [20 x i8] c"close() \22%s\22 failed\00", align 1
@.str28 = private unnamed_addr constant [22 x i8] c"opendir() \22%s\22 failed\00", align 1
@.str29 = private unnamed_addr constant [22 x i8] c"readdir() \22%s\22 failed\00", align 1
@17 = internal unnamed_addr constant [2 x i8] c"+\00"
@18 = internal unnamed_addr constant [2 x i8] c"*\00"
@19 = internal unnamed_addr constant [20 x i8] c"src/core/ngx_file.c\00"
@.str30 = private unnamed_addr constant [23 x i8] c"closedir() \22%s\22 failed\00", align 1

define i32 @ngx_write_chain_to_temp_file(%struct.ngx_temp_file_t* %tf, %struct.ngx_chain_s* %chain) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_temp_file_t* %tf}, i64 0, metadata !224), !dbg !800
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %chain}, i64 0, metadata !225), !dbg !800
  %file = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 0, !dbg !801
  %fd = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 0, i32 0, !dbg !801
  %0 = load i32* %fd, align 4, !dbg !801, !tbaa !802
  %cmp = icmp eq i32 %0, -1, !dbg !801
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge, !dbg !801

entry.if.end26_crit_edge:                         ; preds = %entry
  %pool28.pre = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 3, !dbg !805
  br label %if.end26, !dbg !801

if.then:                                          ; preds = %entry
  %path = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 2, !dbg !806
  %1 = load %struct.ngx_path_t** %path, align 4, !dbg !806, !tbaa !808
  %pool = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 3, !dbg !806
  %2 = load %struct.ngx_pool_s** %pool, align 4, !dbg !806, !tbaa !808
  %3 = getelementptr %struct.ngx_temp_file_t* %tf, i32 0, i32 6, !dbg !806
  %4 = bitcast i8* %3 to i32*, !dbg !806
  %5 = load i32* %4, align 4, !dbg !806
  %6 = lshr i32 %5, 8, !dbg !806
  %bf.clear = and i32 %6, 1, !dbg !806
  %7 = lshr i32 %5, 9, !dbg !806
  %bf.clear3 = and i32 %7, 1, !dbg !806
  %access = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 5, !dbg !806
  %8 = load i32* %access, align 4, !dbg !806, !tbaa !802
  %call = tail call i32 @ngx_create_temp_file(%struct.ngx_file_s* %file, %struct.ngx_path_t* %1, %struct.ngx_pool_s* %2, i32 %bf.clear, i32 %bf.clear3, i32 %8), !dbg !806
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !226), !dbg !806
  %switch = icmp ugt i32 %call, -3, !dbg !809
  br i1 %switch, label %return, label %if.end, !dbg !809

if.end:                                           ; preds = %if.then
  %9 = load i32* %4, align 4, !dbg !810
  %bf.clear12 = and i32 %9, 255, !dbg !810
  %tobool = icmp eq i32 %bf.clear12, 0, !dbg !810
  br i1 %tobool, label %if.end26, label %if.then13, !dbg !810

if.then13:                                        ; preds = %if.end
  %log = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 0, i32 5, !dbg !811
  %10 = load %struct.ngx_log_s** %log, align 4, !dbg !811, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %10, i32 0, i32 0, !dbg !811
  %11 = load i32* %log_level, align 4, !dbg !811, !tbaa !802
  %cmp17 = icmp ult i32 %11, %bf.clear12, !dbg !811
  br i1 %cmp17, label %if.end26, label %if.then18, !dbg !811

if.then18:                                        ; preds = %if.then13
  %warn = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 4, !dbg !813
  %12 = load i8** %warn, align 4, !dbg !813, !tbaa !808
  %name = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 0, i32 1, !dbg !813
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %bf.clear12, %struct.ngx_log_s* %10, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* %12, %struct.ngx_str_t* %name) nounwind, !dbg !813
  br label %if.end26, !dbg !813

if.end26:                                         ; preds = %entry.if.end26_crit_edge, %if.then13, %if.end, %if.then18
  %pool28.pre-phi = phi %struct.ngx_pool_s** [ %pool28.pre, %entry.if.end26_crit_edge ], [ %pool, %if.then13 ], [ %pool, %if.end ], [ %pool, %if.then18 ], !dbg !805
  %offset = getelementptr inbounds %struct.ngx_temp_file_t* %tf, i32 0, i32 1, !dbg !805
  %13 = load i64* %offset, align 4, !dbg !805, !tbaa !814
  %14 = load %struct.ngx_pool_s** %pool28.pre-phi, align 4, !dbg !805, !tbaa !808
  %call29 = tail call i32 @ngx_write_chain_to_file(%struct.ngx_file_s* %file, %struct.ngx_chain_s* %chain, i64 %13, %struct.ngx_pool_s* %14) nounwind, !dbg !805
  br label %return, !dbg !805

return:                                           ; preds = %if.then, %if.end26
  %retval.0 = phi i32 [ %call29, %if.end26 ], [ %call, %if.then ]
  ret i32 %retval.0, !dbg !815
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @ngx_create_temp_file(%struct.ngx_file_s* nocapture %file, %struct.ngx_path_t* nocapture %path, %struct.ngx_pool_s* %pool, i32 %persistent, i32 %clean, i32 %access) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_file_s* %file}, i64 0, metadata !236), !dbg !816
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %path}, i64 0, metadata !237), !dbg !816
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !238), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %persistent}, i64 0, metadata !239), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %clean}, i64 0, metadata !240), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %access}, i64 0, metadata !241), !dbg !816
  %len = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 0, i32 0, !dbg !817
  %0 = load i32* %len, align 4, !dbg !817, !tbaa !802
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 1), !dbg !817
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !817
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !817
  br i1 %3, label %ioc_bb1, label %cont2, !dbg !817

ioc_bb1:                                          ; preds = %entry
  %4 = zext i32 %0 to i64, !dbg !817
  tail call void @__ioc_report_add_overflow(i32 33, i32 39, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind, !dbg !817
  br label %cont2, !dbg !817

cont2:                                            ; preds = %entry, %ioc_bb1
  %len3 = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 1, !dbg !817
  %5 = load i32* %len3, align 4, !dbg !817, !tbaa !802
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %5), !dbg !817
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !817
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !817
  br i1 %8, label %ioc_bb4, label %cont7, !dbg !817

ioc_bb4:                                          ; preds = %cont2
  %9 = zext i32 %5 to i64, !dbg !817
  %10 = zext i32 %2 to i64, !dbg !817
  tail call void @__ioc_report_add_overflow(i32 33, i32 43, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %10, i64 %9, i8 5) nounwind, !dbg !817
  br label %cont7, !dbg !817

cont7:                                            ; preds = %ioc_bb4, %cont2
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 10), !dbg !817
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !817
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !817
  br i1 %13, label %ioc_bb8, label %cont9, !dbg !817

ioc_bb8:                                          ; preds = %cont7
  %14 = zext i32 %7 to i64, !dbg !817
  tail call void @__ioc_report_add_overflow(i32 33, i32 57, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %14, i64 10, i8 5) nounwind, !dbg !817
  br label %cont9, !dbg !817

cont9:                                            ; preds = %cont7, %ioc_bb8
  %len11 = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 1, i32 0, !dbg !817
  store i32 %12, i32* %len11, align 4, !dbg !817, !tbaa !802
  %15 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 1), !dbg !818
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !818
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !818
  br i1 %17, label %ioc_bb16, label %cont17, !dbg !818

ioc_bb16:                                         ; preds = %cont9
  %18 = zext i32 %12 to i64, !dbg !818
  tail call void @__ioc_report_add_overflow(i32 34, i32 58, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %18, i64 1, i8 5) nounwind, !dbg !818
  br label %cont17, !dbg !818

cont17:                                           ; preds = %cont9, %ioc_bb16
  %call = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %pool, i32 %16) nounwind, !dbg !818
  %data = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 1, i32 1, !dbg !818
  store i8* %call, i8** %data, align 4, !dbg !818, !tbaa !808
  %cmp = icmp eq i8* %call, null, !dbg !819
  br i1 %cmp, label %return, label %if.end, !dbg !819

if.end:                                           ; preds = %cont17
  %data26 = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 0, i32 1, !dbg !820
  %19 = load i8** %data26, align 4, !dbg !820, !tbaa !808
  %20 = load i32* %len, align 4, !dbg !820, !tbaa !802
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call, i8* %19, i32 %20, i32 1, i1 false), !dbg !820
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !821) nounwind, !dbg !823
  tail call void @llvm.dbg.value(metadata !824, i64 0, metadata !825) nounwind, !dbg !826
  %21 = load i32** @ngx_temp_number, align 4, !dbg !827, !tbaa !808
  %22 = atomicrmw add i32* %21, i32 1 seq_cst, !dbg !827
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !828) nounwind, !dbg !827
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %22, i32 1) nounwind, !dbg !829
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !829
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !829
  br i1 %25, label %ioc_bb1.i, label %ngx_next_temp_number.exit, !dbg !829

ioc_bb1.i:                                        ; preds = %if.end
  %26 = zext i32 %22 to i64, !dbg !829
  tail call void @__ioc_report_add_overflow(i32 160, i32 12, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind, !dbg !829
  br label %ngx_next_temp_number.exit, !dbg !829

ngx_next_temp_number.exit:                        ; preds = %if.end, %ioc_bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !242), !dbg !822
  %call32 = tail call %struct.ngx_pool_cleanup_s* @ngx_pool_cleanup_add(%struct.ngx_pool_s* %pool, i32 12) nounwind, !dbg !830
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_cleanup_s* %call32}, i64 0, metadata !247), !dbg !830
  %cmp33 = icmp eq %struct.ngx_pool_cleanup_s* %call32, null, !dbg !831
  br i1 %cmp33, label %return, label %for.cond.preheader, !dbg !831

for.cond.preheader:                               ; preds = %ngx_next_temp_number.exit
  %fd = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 0, !dbg !832
  %arrayidx = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 2, i32 0, !dbg !835
  br label %for.cond.outer, !dbg !836

for.cond.outer:                                   ; preds = %ioc_bb1.i132, %cont.i, %for.cond.preheader
  %n.0.ph = phi i32 [ %24, %for.cond.preheader ], [ %45, %cont.i ], [ %45, %ioc_bb1.i132 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end91
  %27 = load i8** %data, align 4, !dbg !836, !tbaa !808
  %28 = load i32* %len, align 4, !dbg !836, !tbaa !802
  %add.ptr.sum = add i32 %28, 1, !dbg !836
  %29 = load i32* %len3, align 4, !dbg !836, !tbaa !802
  %add.ptr42.sum = add i32 %add.ptr.sum, %29, !dbg !836
  %add.ptr44 = getelementptr inbounds i8* %27, i32 %add.ptr42.sum, !dbg !836
  %call45 = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %add.ptr44, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %n.0.ph) nounwind, !dbg !836
  %30 = load i8** %data, align 4, !dbg !837, !tbaa !808
  %31 = load i32* %len11, align 4, !dbg !837, !tbaa !802
  tail call void @ngx_create_hashed_filename(%struct.ngx_path_t* %path, i8* %30, i32 %31), !dbg !837
  %32 = load i8** %data, align 4, !dbg !832, !tbaa !808
  %call52 = tail call i32 @ngx_open_tempfile(i8* %32, i32 %persistent, i32 %access) nounwind, !dbg !832
  store i32 %call52, i32* %fd, align 4, !dbg !832, !tbaa !802
  %cmp56 = icmp eq i32 %call52, -1, !dbg !838
  br i1 %cmp56, label %if.end65, label %if.then57, !dbg !838

if.then57:                                        ; preds = %for.cond
  %tobool = icmp ne i32 %clean, 0, !dbg !839
  %cond = select i1 %tobool, void (i8*)* @ngx_pool_delete_file, void (i8*)* @ngx_pool_cleanup_file, !dbg !839
  %handler = getelementptr inbounds %struct.ngx_pool_cleanup_s* %call32, i32 0, i32 0, !dbg !839
  store void (i8*)* %cond, void (i8*)** %handler, align 4, !dbg !839, !tbaa !808
  %data58 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %call32, i32 0, i32 1, !dbg !841
  %33 = load i8** %data58, align 4, !dbg !841, !tbaa !808
  %fd60 = bitcast i8* %33 to i32*, !dbg !842
  store i32 %call52, i32* %fd60, align 4, !dbg !842, !tbaa !802
  %34 = load i8** %data, align 4, !dbg !843, !tbaa !808
  %name63 = getelementptr inbounds i8* %33, i32 4, !dbg !843
  %35 = bitcast i8* %name63 to i8**, !dbg !843
  store i8* %34, i8** %35, align 4, !dbg !843, !tbaa !808
  %log = getelementptr inbounds %struct.ngx_pool_s* %pool, i32 0, i32 6, !dbg !844
  %36 = load %struct.ngx_log_s** %log, align 4, !dbg !844, !tbaa !808
  %log64 = getelementptr inbounds i8* %33, i32 8, !dbg !844
  %37 = bitcast i8* %log64 to %struct.ngx_log_s**, !dbg !844
  store %struct.ngx_log_s* %36, %struct.ngx_log_s** %37, align 4, !dbg !844, !tbaa !808
  br label %return, !dbg !845

if.end65:                                         ; preds = %for.cond
  %call66 = tail call i32* @__errno_location() nounwind readnone, !dbg !846
  %38 = load i32* %call66, align 4, !dbg !846, !tbaa !802
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !245), !dbg !846
  %cmp67 = icmp eq i32 %38, 17, !dbg !847
  br i1 %cmp67, label %cont70, label %cont74, !dbg !847

cont70:                                           ; preds = %if.end65
  tail call void @llvm.dbg.value(metadata !824, i64 0, metadata !848) nounwind, !dbg !851
  %39 = load i32* @ngx_random_number, align 4, !dbg !852, !tbaa !853
  %40 = icmp sgt i32 %39, -1, !dbg !852
  br i1 %40, label %cont.i, label %ioc_bb.i, !dbg !852

ioc_bb.i:                                         ; preds = %cont70
  %41 = sext i32 %39 to i64, !dbg !852
  tail call void @__ioc_report_conversion(i32 158, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i64 %41, i8 1) nounwind, !dbg !852
  br label %cont.i, !dbg !852

cont.i:                                           ; preds = %ioc_bb.i, %cont70
  tail call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !854) nounwind, !dbg !852
  %42 = load i32** @ngx_temp_number, align 4, !dbg !855, !tbaa !808
  %43 = atomicrmw add i32* %42, i32 %39 seq_cst, !dbg !855
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !856) nounwind, !dbg !855
  %44 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %39) nounwind, !dbg !857
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !857
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !857
  br i1 %46, label %ioc_bb1.i132, label %for.cond.outer, !dbg !857

ioc_bb1.i132:                                     ; preds = %cont.i
  %47 = zext i32 %39 to i64, !dbg !857
  %48 = zext i32 %43 to i64, !dbg !857
  tail call void @__ioc_report_add_overflow(i32 160, i32 12, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %48, i64 %47, i8 5) nounwind, !dbg !857
  br label %for.cond.outer, !dbg !857

cont74:                                           ; preds = %if.end65
  %49 = load i32* %arrayidx, align 4, !dbg !835, !tbaa !802
  %cmp75 = icmp ne i32 %49, 0, !dbg !835
  %cmp76 = icmp eq i32 %38, 2, !dbg !835
  %or.cond = and i1 %cmp75, %cmp76, !dbg !835
  br i1 %or.cond, label %if.end91, label %if.then77, !dbg !835

if.then77:                                        ; preds = %cont74
  %log78 = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 5, !dbg !858
  %50 = load %struct.ngx_log_s** %log78, align 4, !dbg !858, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %50, i32 0, i32 0, !dbg !858
  %51 = load i32* %log_level, align 4, !dbg !858, !tbaa !802
  %cmp81 = icmp ugt i32 %51, 2, !dbg !858
  br i1 %cmp81, label %cont84, label %return, !dbg !858

cont84:                                           ; preds = %if.then77
  %52 = load i8** %data, align 4, !dbg !860, !tbaa !808
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %50, i32 %38, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i8* %52) nounwind, !dbg !860
  br label %return, !dbg !860

if.end91:                                         ; preds = %cont74
  %call92 = tail call i32 @ngx_create_path(%struct.ngx_file_s* %file, %struct.ngx_path_t* %path), !dbg !861
  %cmp95 = icmp eq i32 %call92, -1, !dbg !861
  br i1 %cmp95, label %return, label %for.cond, !dbg !861

return:                                           ; preds = %if.end91, %cont84, %if.then77, %ngx_next_temp_number.exit, %cont17, %if.then57
  %retval.0 = phi i32 [ 0, %if.then57 ], [ -1, %cont17 ], [ -1, %ngx_next_temp_number.exit ], [ -1, %if.then77 ], [ -1, %cont84 ], [ -1, %if.end91 ]
  ret i32 %retval.0, !dbg !862
}

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32 @ngx_write_chain_to_file(%struct.ngx_file_s*, %struct.ngx_chain_s*, i64, %struct.ngx_pool_s*)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define i32 @ngx_next_temp_number(i32 %collision) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %collision}, i64 0, metadata !295), !dbg !863
  %tobool = icmp ne i32 %collision, 0, !dbg !864
  %0 = load i32* @ngx_random_number, align 4, !dbg !864, !tbaa !853
  %cond = select i1 %tobool, i32 %0, i32 1, !dbg !864
  %1 = icmp sgt i32 %cond, -1, !dbg !864
  br i1 %1, label %cont, label %ioc_bb, !dbg !864

ioc_bb:                                           ; preds = %entry
  %2 = sext i32 %cond to i64, !dbg !864
  tail call void @__ioc_report_conversion(i32 158, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !864
  br label %cont, !dbg !864

cont:                                             ; preds = %ioc_bb, %entry
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !298), !dbg !864
  %3 = load i32** @ngx_temp_number, align 4, !dbg !865, !tbaa !808
  %4 = atomicrmw add i32* %3, i32 %cond seq_cst, !dbg !865
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !296), !dbg !865
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 %cond), !dbg !866
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !866
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !866
  br i1 %7, label %ioc_bb1, label %cont2, !dbg !866

ioc_bb1:                                          ; preds = %cont
  %8 = zext i32 %cond to i64, !dbg !866
  %9 = zext i32 %4 to i64, !dbg !866
  tail call void @__ioc_report_add_overflow(i32 160, i32 12, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind, !dbg !866
  br label %cont2, !dbg !866

cont2:                                            ; preds = %cont, %ioc_bb1
  ret i32 %6, !dbg !866
}

declare %struct.ngx_pool_cleanup_s* @ngx_pool_cleanup_add(%struct.ngx_pool_s*, i32)

declare i8* @ngx_sprintf(i8*, i8*, ...)

define void @ngx_create_hashed_filename(%struct.ngx_path_t* nocapture %path, i8* nocapture %file, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %path}, i64 0, metadata !261), !dbg !867
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !262), !dbg !867
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !263), !dbg !867
  %len1 = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 0, i32 0, !dbg !868
  %0 = load i32* %len1, align 4, !dbg !868, !tbaa !802
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 1), !dbg !868
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !868
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !868
  br i1 %3, label %ioc_bb2, label %cont5, !dbg !868

ioc_bb2:                                          ; preds = %entry
  %4 = zext i32 %0 to i64, !dbg !868
  tail call void @__ioc_report_add_overflow(i32 81, i32 24, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind, !dbg !868
  %.pre = load i32* %len1, align 4, !dbg !869, !tbaa !802
  br label %cont5, !dbg !868

cont5:                                            ; preds = %ioc_bb2, %entry
  %5 = phi i32 [ %.pre, %ioc_bb2 ], [ %0, %entry ]
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !264), !dbg !868
  %len8 = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 1, !dbg !869
  %6 = load i32* %len8, align 4, !dbg !869, !tbaa !802
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %5, i32 %6), !dbg !869
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !869
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !869
  br i1 %9, label %ioc_bb9, label %cont10, !dbg !869

ioc_bb9:                                          ; preds = %cont5
  %10 = zext i32 %6 to i64, !dbg !869
  %11 = zext i32 %5 to i64, !dbg !869
  tail call void @__ioc_report_add_overflow(i32 82, i32 25, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %11, i64 %10, i8 5) nounwind, !dbg !869
  br label %cont10, !dbg !869

cont10:                                           ; preds = %cont5, %ioc_bb9
  %arrayidx = getelementptr inbounds i8* %file, i32 %8, !dbg !869
  store i8 47, i8* %arrayidx, align 1, !dbg !869, !tbaa !803
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !267), !dbg !870
  br label %for.body, !dbg !870

for.body:                                         ; preds = %cont10, %cont14.backedge
  %n.055 = phi i32 [ 0, %cont10 ], [ %30, %cont14.backedge ]
  %len.addr.054 = phi i32 [ %len, %cont10 ], [ %14, %cont14.backedge ]
  %i.053 = phi i32 [ %2, %cont10 ], [ %26, %cont14.backedge ]
  %arrayidx16 = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 2, i32 %n.055, !dbg !872
  %12 = load i32* %arrayidx16, align 4, !dbg !872, !tbaa !802
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !266), !dbg !872
  %cmp19 = icmp eq i32 %12, 0, !dbg !874
  br i1 %cmp19, label %for.end, label %if.end, !dbg !874

if.end:                                           ; preds = %for.body
  %13 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.054, i32 %12), !dbg !875
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !875
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !875
  %16 = zext i32 %12 to i64, !dbg !875
  br i1 %15, label %ioc_bb20, label %cont25, !dbg !875

ioc_bb20:                                         ; preds = %if.end
  %17 = zext i32 %len.addr.054 to i64, !dbg !875
  tail call void @__ioc_report_sub_overflow(i32 88, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @16, i32 0, i32 0), i64 %17, i64 %16, i8 5) nounwind, !dbg !875
  br label %cont25, !dbg !875

cont25:                                           ; preds = %if.end, %ioc_bb20
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !263), !dbg !875
  %18 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.053, i32 1), !dbg !876
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !876
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !876
  %21 = zext i32 %i.053 to i64, !dbg !876
  br i1 %20, label %ioc_bb26, label %cont27, !dbg !876

ioc_bb26:                                         ; preds = %cont25
  tail call void @__ioc_report_sub_overflow(i32 89, i32 12, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %21, i64 1, i8 5) nounwind, !dbg !876
  br label %cont27, !dbg !876

cont27:                                           ; preds = %cont25, %ioc_bb26
  %arrayidx28 = getelementptr inbounds i8* %file, i32 %19, !dbg !876
  store i8 47, i8* %arrayidx28, align 1, !dbg !876, !tbaa !803
  %arrayidx29 = getelementptr inbounds i8* %file, i32 %i.053, !dbg !877
  %arrayidx30 = getelementptr inbounds i8* %file, i32 %14, !dbg !877
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx29, i8* %arrayidx30, i32 %12, i32 1, i1 false), !dbg !877
  %22 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 1), !dbg !878
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !878
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !878
  br i1 %24, label %ioc_bb33, label %cont34, !dbg !878

ioc_bb33:                                         ; preds = %cont27
  tail call void @__ioc_report_add_overflow(i32 91, i32 16, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !878
  br label %cont34, !dbg !878

cont34:                                           ; preds = %cont27, %ioc_bb33
  %25 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.053, i32 %23), !dbg !878
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !878
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !878
  br i1 %27, label %ioc_bb35, label %cont36, !dbg !878

ioc_bb35:                                         ; preds = %cont34
  %28 = zext i32 %23 to i64, !dbg !878
  tail call void @__ioc_report_add_overflow(i32 91, i32 7, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %21, i64 %28, i8 5) nounwind, !dbg !878
  br label %cont36, !dbg !878

cont36:                                           ; preds = %cont34, %ioc_bb35
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !264), !dbg !878
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.055, i32 1), !dbg !870
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !870
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !870
  br i1 %31, label %ioc_bb37, label %cont14.backedge, !dbg !870

cont14.backedge:                                  ; preds = %cont36, %ioc_bb37
  %cmp = icmp ult i32 %30, 3, !dbg !870
  br i1 %cmp, label %for.body, label %for.end, !dbg !870

ioc_bb37:                                         ; preds = %cont36
  %32 = zext i32 %n.055 to i64, !dbg !870
  tail call void @__ioc_report_add_overflow(i32 83, i32 23, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind, !dbg !870
  br label %cont14.backedge, !dbg !870

for.end:                                          ; preds = %for.body, %cont14.backedge
  ret void, !dbg !879
}

declare i32 @ngx_open_tempfile(i8*, i32, i32)

declare void @ngx_pool_delete_file(i8*)

declare void @ngx_pool_cleanup_file(i8*)

declare i32* @__errno_location() nounwind readnone

define i32 @ngx_create_path(%struct.ngx_file_s* nocapture %file, %struct.ngx_path_t* nocapture %path) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_file_s* %file}, i64 0, metadata !273), !dbg !880
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %path}, i64 0, metadata !274), !dbg !880
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !275), !dbg !881
  %len = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 0, i32 0, !dbg !881
  %0 = load i32* %len, align 4, !dbg !881, !tbaa !802
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !278), !dbg !882
  %data = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 1, i32 1, !dbg !884
  br label %for.body, !dbg !882

for.body:                                         ; preds = %entry, %cont2.backedge
  %i.064 = phi i32 [ 0, %entry ], [ %19, %cont2.backedge ]
  %pos.063 = phi i32 [ %0, %entry ], [ %7, %cont2.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_path_t* %path, i32 0, i32 2, i32 %i.064, !dbg !886
  %1 = load i32* %arrayidx, align 4, !dbg !886, !tbaa !802
  %cmp5 = icmp eq i32 %1, 0, !dbg !886
  br i1 %cmp5, label %return, label %if.end, !dbg !886

if.end:                                           ; preds = %for.body
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 1), !dbg !887
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !887
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !887
  br i1 %4, label %ioc_bb10, label %cont11, !dbg !887

ioc_bb10:                                         ; preds = %if.end
  %5 = zext i32 %1 to i64, !dbg !887
  tail call void @__ioc_report_add_overflow(i32 105, i32 29, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !887
  br label %cont11, !dbg !887

cont11:                                           ; preds = %if.end, %ioc_bb10
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %pos.063, i32 %3), !dbg !887
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !887
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !887
  br i1 %8, label %ioc_bb12, label %cont15, !dbg !887

ioc_bb12:                                         ; preds = %cont11
  %9 = zext i32 %3 to i64, !dbg !887
  %10 = zext i32 %pos.063 to i64, !dbg !887
  tail call void @__ioc_report_add_overflow(i32 105, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %10, i64 %9, i8 5) nounwind, !dbg !887
  br label %cont15, !dbg !887

cont15:                                           ; preds = %ioc_bb12, %cont11
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !275), !dbg !887
  %11 = load i8** %data, align 4, !dbg !884, !tbaa !808
  %arrayidx17 = getelementptr inbounds i8* %11, i32 %7, !dbg !884
  store i8 0, i8* %arrayidx17, align 1, !dbg !884, !tbaa !803
  %12 = load i8** %data, align 4, !dbg !888, !tbaa !808
  %call = tail call i32 @mkdir(i8* %12, i32 448) nounwind, !dbg !888
  %cmp24 = icmp eq i32 %call, -1, !dbg !888
  br i1 %cmp24, label %if.then25, label %cont44, !dbg !888

if.then25:                                        ; preds = %cont15
  %call26 = tail call i32* @__errno_location() nounwind readnone, !dbg !889
  %13 = load i32* %call26, align 4, !dbg !889, !tbaa !802
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !277), !dbg !889
  %cmp27 = icmp eq i32 %13, 17, !dbg !891
  br i1 %cmp27, label %cont44, label %if.then28, !dbg !891

if.then28:                                        ; preds = %if.then25
  %log = getelementptr inbounds %struct.ngx_file_s* %file, i32 0, i32 5, !dbg !892
  %14 = load %struct.ngx_log_s** %log, align 4, !dbg !892, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %14, i32 0, i32 0, !dbg !892
  %15 = load i32* %log_level, align 4, !dbg !892, !tbaa !802
  %cmp31 = icmp ugt i32 %15, 2, !dbg !892
  br i1 %cmp31, label %cont34, label %return, !dbg !892

cont34:                                           ; preds = %if.then28
  %16 = load i8** %data, align 4, !dbg !894, !tbaa !808
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %14, i32 %13, i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0), i8* %16) nounwind, !dbg !894
  br label %return, !dbg !894

cont44:                                           ; preds = %cont15, %if.then25
  %17 = load i8** %data, align 4, !dbg !895, !tbaa !808
  %arrayidx47 = getelementptr inbounds i8* %17, i32 %7, !dbg !895
  store i8 47, i8* %arrayidx47, align 1, !dbg !895, !tbaa !803
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.064, i32 1), !dbg !882
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !882
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !882
  br i1 %20, label %ioc_bb48, label %cont2.backedge, !dbg !882

cont2.backedge:                                   ; preds = %cont44, %ioc_bb48
  %cmp = icmp ult i32 %19, 3, !dbg !882
  br i1 %cmp, label %for.body, label %return, !dbg !882

ioc_bb48:                                         ; preds = %cont44
  %21 = zext i32 %i.064 to i64, !dbg !882
  tail call void @__ioc_report_add_overflow(i32 101, i32 23, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %21, i64 1, i8 5) nounwind, !dbg !882
  br label %cont2.backedge, !dbg !882

return:                                           ; preds = %cont2.backedge, %for.body, %cont34, %if.then28
  %retval.0 = phi i32 [ -1, %if.then28 ], [ -1, %cont34 ], [ 0, %for.body ], [ 0, %cont2.backedge ]
  ret i32 %retval.0, !dbg !896
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @mkdir(i8* nocapture, i32) nounwind

define i32 @ngx_create_full_path(i8* nocapture %dir, i32 %access) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dir}, i64 0, metadata !284), !dbg !897
  tail call void @llvm.dbg.value(metadata !{i32 %access}, i64 0, metadata !285), !dbg !897
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !289), !dbg !898
  br label %for.cond.outer, !dbg !899

for.cond.outer:                                   ; preds = %cont10, %entry
  %dir.pn.ph = phi i8* [ %dir, %entry ], [ %p.0, %cont10 ]
  %err.0.ph = phi i32 [ 0, %entry ], [ %err.1, %cont10 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  %dir.pn = phi i8* [ %p.0, %for.cond ], [ %dir.pn.ph, %for.cond.outer ]
  %p.0 = getelementptr inbounds i8* %dir.pn, i32 1, !dbg !901
  %0 = load i8* %p.0, align 1, !dbg !899, !tbaa !803
  switch i8 %0, label %for.cond [
    i8 0, label %return
    i8 47, label %cont
  ], !dbg !899

cont:                                             ; preds = %for.cond
  store i8 0, i8* %p.0, align 1, !dbg !902, !tbaa !803
  %call = tail call i32 @mkdir(i8* %dir, i32 %access) nounwind, !dbg !904
  %cmp4 = icmp eq i32 %call, -1, !dbg !904
  br i1 %cmp4, label %if.then6, label %cont10, !dbg !904

if.then6:                                         ; preds = %cont
  %call7 = tail call i32* @__errno_location() nounwind readnone, !dbg !905
  %1 = load i32* %call7, align 4, !dbg !905, !tbaa !802
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !289), !dbg !905
  switch i32 %1, label %return [
    i32 17, label %sw.bb
    i32 13, label %cont10
  ], !dbg !907

sw.bb:                                            ; preds = %if.then6
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !289), !dbg !908
  br label %cont10, !dbg !908

cont10:                                           ; preds = %cont, %sw.bb, %if.then6
  %err.1 = phi i32 [ 13, %if.then6 ], [ 0, %sw.bb ], [ %err.0.ph, %cont ]
  store i8 47, i8* %p.0, align 1, !dbg !910, !tbaa !803
  br label %for.cond.outer, !dbg !911

return:                                           ; preds = %if.then6, %for.cond
  %retval.0 = phi i32 [ %err.0.ph, %for.cond ], [ %1, %if.then6 ]
  ret i32 %retval.0, !dbg !912
}

define i8* @ngx_conf_set_path_slot(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !528), !dbg !913
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !529), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !530), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !531), !dbg !914
  %offset = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 4, !dbg !915
  %0 = load i32* %offset, align 4, !dbg !915, !tbaa !802
  %add.ptr = getelementptr inbounds i8* %conf, i32 %0, !dbg !915
  %1 = bitcast i8* %add.ptr to %struct.ngx_path_t**, !dbg !915
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %1}, i64 0, metadata !539), !dbg !915
  %2 = load %struct.ngx_path_t** %1, align 4, !dbg !916, !tbaa !808
  %tobool = icmp eq %struct.ngx_path_t* %2, null, !dbg !916
  br i1 %tobool, label %if.end, label %return, !dbg !916

if.end:                                           ; preds = %entry
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !917
  %3 = load %struct.ngx_pool_s** %pool, align 4, !dbg !917, !tbaa !808
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %3, i32 44) nounwind, !dbg !917
  %4 = bitcast i8* %call to %struct.ngx_path_t*, !dbg !917
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %4}, i64 0, metadata !538), !dbg !917
  %cmp = icmp eq i8* %call, null, !dbg !918
  br i1 %cmp, label %return, label %if.end2, !dbg !918

if.end2:                                          ; preds = %if.end
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !919
  %5 = load %struct.ngx_array_s** %args, align 4, !dbg !919, !tbaa !808
  %elts = getelementptr inbounds %struct.ngx_array_s* %5, i32 0, i32 0, !dbg !919
  %6 = load i8** %elts, align 4, !dbg !919, !tbaa !808
  %7 = bitcast i8* %6 to %struct.ngx_str_t*, !dbg !919
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %7}, i64 0, metadata !534), !dbg !919
  %name = bitcast i8* %call to %struct.ngx_str_t*, !dbg !920
  %arrayidx = getelementptr inbounds i8* %6, i32 8, !dbg !920
  %8 = bitcast i8* %arrayidx to i64*, !dbg !920
  %9 = bitcast i8* %call to i64*, !dbg !920
  %10 = load i64* %8, align 4, !dbg !920
  store i64 %10, i64* %9, align 4, !dbg !920
  %len = bitcast i8* %call to i32*, !dbg !921
  %trunc = trunc i64 %10 to i32
  %11 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %trunc, i32 1), !dbg !921
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !921
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !921
  br i1 %13, label %ioc_bb6, label %if.end2.cont7_crit_edge, !dbg !921

if.end2.cont7_crit_edge:                          ; preds = %if.end2
  %14 = lshr i64 %10, 32
  %15 = trunc i64 %14 to i32
  %16 = inttoptr i32 %15 to i8*
  br label %cont7, !dbg !921

ioc_bb6:                                          ; preds = %if.end2
  %17 = and i64 %10, 4294967295, !dbg !921
  tail call void @__ioc_report_sub_overflow(i32 182, i32 42, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %17, i64 1, i8 5) nounwind, !dbg !921
  %data.phi.trans.insert = getelementptr inbounds i8* %call, i32 4
  %.phi.trans.insert = bitcast i8* %data.phi.trans.insert to i8**
  %.pre = load i8** %.phi.trans.insert, align 4, !dbg !921, !tbaa !808
  br label %cont7, !dbg !921

cont7:                                            ; preds = %if.end2.cont7_crit_edge, %ioc_bb6
  %18 = phi i8* [ %16, %if.end2.cont7_crit_edge ], [ %.pre, %ioc_bb6 ]
  %arrayidx9 = getelementptr inbounds i8* %18, i32 %12, !dbg !921
  %19 = load i8* %arrayidx9, align 1, !dbg !921, !tbaa !803
  %cmp10 = icmp eq i8 %19, 47, !dbg !921
  br i1 %cmp10, label %if.then12, label %cont20, !dbg !921

if.then12:                                        ; preds = %cont7
  %20 = load i32* %len, align 4, !dbg !922, !tbaa !802
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %20, i32 1), !dbg !922
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !922
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !922
  br i1 %23, label %ioc_bb15, label %cont16, !dbg !922

ioc_bb15:                                         ; preds = %if.then12
  %24 = zext i32 %20 to i64, !dbg !922
  tail call void @__ioc_report_sub_overflow(i32 183, i32 21, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !922
  br label %cont16, !dbg !922

cont16:                                           ; preds = %if.then12, %ioc_bb15
  store i32 %22, i32* %len, align 4, !dbg !922, !tbaa !802
  br label %cont20, !dbg !924

cont20:                                           ; preds = %cont7, %cont16
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !925
  %25 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !925, !tbaa !808
  %call21 = tail call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %25, %struct.ngx_str_t* %name, i32 0) nounwind, !dbg !925
  %cmp22 = icmp eq i32 %call21, 0, !dbg !925
  br i1 %cmp22, label %cont27, label %return, !dbg !925

cont27:                                           ; preds = %cont20
  %len28 = getelementptr inbounds i8* %call, i32 8, !dbg !926
  %26 = bitcast i8* %len28 to i32*, !dbg !926
  store i32 0, i32* %26, align 4, !dbg !926, !tbaa !802
  %manager = getelementptr inbounds i8* %call, i32 24, !dbg !927
  %27 = bitcast i8* %manager to i32 (i8*)**, !dbg !927
  store i32 (i8*)* null, i32 (i8*)** %27, align 4, !dbg !927, !tbaa !808
  %loader = getelementptr inbounds i8* %call, i32 28, !dbg !928
  %28 = bitcast i8* %loader to void (i8*)**, !dbg !928
  store void (i8*)* null, void (i8*)** %28, align 4, !dbg !928, !tbaa !808
  %conf_file = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 5, !dbg !929
  %29 = load %struct.ngx_conf_file_t** %conf_file, align 4, !dbg !929, !tbaa !808
  %data30 = getelementptr inbounds %struct.ngx_conf_file_t* %29, i32 0, i32 0, i32 1, i32 1, !dbg !929
  %30 = load i8** %data30, align 4, !dbg !929, !tbaa !808
  %conf_file31 = getelementptr inbounds i8* %call, i32 36, !dbg !929
  %31 = bitcast i8* %conf_file31 to i8**, !dbg !929
  store i8* %30, i8** %31, align 4, !dbg !929, !tbaa !808
  %32 = load %struct.ngx_conf_file_t** %conf_file, align 4, !dbg !930, !tbaa !808
  %line = getelementptr inbounds %struct.ngx_conf_file_t* %32, i32 0, i32 2, !dbg !930
  %33 = load i32* %line, align 4, !dbg !930, !tbaa !802
  %line33 = getelementptr inbounds i8* %call, i32 40, !dbg !930
  %34 = bitcast i8* %line33 to i32*, !dbg !930
  store i32 %33, i32* %34, align 4, !dbg !930, !tbaa !802
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !536), !dbg !931
  tail call void @llvm.dbg.value(metadata !933, i64 0, metadata !537), !dbg !931
  %35 = load %struct.ngx_array_s** %args, align 4, !dbg !931, !tbaa !808
  %nelts125 = getelementptr inbounds %struct.ngx_array_s* %35, i32 0, i32 1, !dbg !931
  %36 = load i32* %nelts125, align 4, !dbg !931, !tbaa !802
  %cmp39126 = icmp ugt i32 %36, 2, !dbg !931
  br i1 %cmp39126, label %for.body.lr.ph, label %cont75.lr.ph, !dbg !931

for.body.lr.ph:                                   ; preds = %cont27
  %level56 = getelementptr inbounds i8* %call, i32 12, !dbg !934
  %37 = bitcast i8* %level56 to [3 x i32]*, !dbg !934
  br label %for.body, !dbg !931

cont71.preheader:                                 ; preds = %for.cond.backedge
  %cmp72122 = icmp ult i32 %55, 3, !dbg !936
  br i1 %cmp72122, label %cont75.lr.ph, label %while.end, !dbg !936

cont75.lr.ph:                                     ; preds = %cont27, %cont71.preheader
  %i.0.lcssa131 = phi i32 [ %55, %cont71.preheader ], [ 0, %cont27 ]
  %level78 = getelementptr inbounds i8* %call, i32 12, !dbg !937
  %38 = bitcast i8* %level78 to [3 x i32]*, !dbg !937
  br label %cont75, !dbg !936

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %55, %for.cond.backedge ]
  %n.0127 = phi i32 [ 2, %for.body.lr.ph ], [ %59, %for.cond.backedge ]
  %data42 = getelementptr inbounds %struct.ngx_str_t* %7, i32 %n.0127, i32 1, !dbg !939
  %39 = load i8** %data42, align 4, !dbg !939, !tbaa !808
  %len44 = getelementptr inbounds %struct.ngx_str_t* %7, i32 %n.0127, i32 0, !dbg !939
  %40 = load i32* %len44, align 4, !dbg !939, !tbaa !802
  %call45 = tail call i32 @ngx_atoi(i8* %39, i32 %40) nounwind, !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32 %call45}, i64 0, metadata !533), !dbg !939
  switch i32 %call45, label %if.end53 [
    i32 -1, label %return
    i32 0, label %return
  ], !dbg !940

if.end53:                                         ; preds = %for.body
  %41 = sext i32 %call45 to i64, !dbg !934
  %42 = icmp sgt i32 %call45, -1, !dbg !934
  br i1 %42, label %cont55, label %ioc_bb54, !dbg !934

ioc_bb54:                                         ; preds = %if.end53
  tail call void @__ioc_report_conversion(i32 198, i32 24, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %41, i8 1) nounwind, !dbg !934
  br label %cont55, !dbg !934

cont55:                                           ; preds = %ioc_bb54, %if.end53
  %arrayidx57 = getelementptr inbounds [3 x i32]* %37, i32 0, i32 %i.0128, !dbg !934
  store i32 %call45, i32* %arrayidx57, align 4, !dbg !934, !tbaa !802
  %43 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %call45, i32 1), !dbg !941
  %44 = extractvalue { i32, i1 } %43, 0, !dbg !941
  %45 = extractvalue { i32, i1 } %43, 1, !dbg !941
  br i1 %45, label %ioc_bb58, label %cont59, !dbg !941

ioc_bb58:                                         ; preds = %cont55
  tail call void @__ioc_report_add_overflow(i32 199, i32 27, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %41, i64 1, i8 13) nounwind, !dbg !941
  br label %cont59, !dbg !941

cont59:                                           ; preds = %cont55, %ioc_bb58
  %46 = icmp sgt i32 %44, -1, !dbg !941
  br i1 %46, label %cont62, label %ioc_bb61, !dbg !941

ioc_bb61:                                         ; preds = %cont59
  %47 = sext i32 %44 to i64, !dbg !941
  tail call void @__ioc_report_conversion(i32 199, i32 20, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %47, i8 1) nounwind, !dbg !941
  br label %cont62, !dbg !941

cont62:                                           ; preds = %ioc_bb61, %cont59
  %48 = load i32* %26, align 4, !dbg !941, !tbaa !802
  %49 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %48, i32 %44), !dbg !941
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !941
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !941
  br i1 %51, label %ioc_bb64, label %cont65, !dbg !941

ioc_bb64:                                         ; preds = %cont62
  %52 = zext i32 %44 to i64, !dbg !941
  %53 = zext i32 %48 to i64, !dbg !941
  tail call void @__ioc_report_add_overflow(i32 199, i32 17, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %53, i64 %52, i8 5) nounwind, !dbg !941
  br label %cont65, !dbg !941

cont65:                                           ; preds = %cont62, %ioc_bb64
  store i32 %50, i32* %26, align 4, !dbg !941, !tbaa !802
  %54 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0128, i32 1), !dbg !931
  %55 = extractvalue { i32, i1 } %54, 0, !dbg !931
  %56 = extractvalue { i32, i1 } %54, 1, !dbg !931
  br i1 %56, label %ioc_bb66, label %cont67, !dbg !931

ioc_bb66:                                         ; preds = %cont65
  %57 = zext i32 %i.0128 to i64, !dbg !931
  tail call void @__ioc_report_add_overflow(i32 193, i32 52, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %57, i64 1, i8 5) nounwind, !dbg !931
  br label %cont67, !dbg !931

cont67:                                           ; preds = %cont65, %ioc_bb66
  tail call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !536), !dbg !931
  %58 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0127, i32 1), !dbg !931
  %59 = extractvalue { i32, i1 } %58, 0, !dbg !931
  %60 = extractvalue { i32, i1 } %58, 1, !dbg !931
  br i1 %60, label %ioc_bb68, label %for.cond.backedge, !dbg !931

for.cond.backedge:                                ; preds = %cont67, %ioc_bb68
  %61 = load %struct.ngx_array_s** %args, align 4, !dbg !931, !tbaa !808
  %nelts = getelementptr inbounds %struct.ngx_array_s* %61, i32 0, i32 1, !dbg !931
  %62 = load i32* %nelts, align 4, !dbg !931, !tbaa !802
  %cmp39 = icmp ult i32 %59, %62, !dbg !931
  br i1 %cmp39, label %for.body, label %cont71.preheader, !dbg !931

ioc_bb68:                                         ; preds = %cont67
  %63 = zext i32 %n.0127 to i64, !dbg !931
  tail call void @__ioc_report_add_overflow(i32 193, i32 58, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %63, i64 1, i8 5) nounwind, !dbg !931
  br label %for.cond.backedge, !dbg !931

cont75:                                           ; preds = %cont75.lr.ph, %cont77
  %i.1123 = phi i32 [ %i.0.lcssa131, %cont75.lr.ph ], [ %65, %cont77 ]
  %64 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1123, i32 1), !dbg !937
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !937
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !937
  br i1 %66, label %ioc_bb76, label %cont77, !dbg !937

ioc_bb76:                                         ; preds = %cont75
  %67 = zext i32 %i.1123 to i64, !dbg !937
  tail call void @__ioc_report_add_overflow(i32 202, i32 20, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %67, i64 1, i8 5) nounwind, !dbg !937
  br label %cont77, !dbg !937

cont77:                                           ; preds = %cont75, %ioc_bb76
  tail call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !536), !dbg !937
  %arrayidx79 = getelementptr inbounds [3 x i32]* %38, i32 0, i32 %i.1123, !dbg !937
  store i32 0, i32* %arrayidx79, align 4, !dbg !937, !tbaa !802
  %cmp72 = icmp ult i32 %65, 3, !dbg !936
  br i1 %cmp72, label %cont75, label %while.end, !dbg !936

while.end:                                        ; preds = %cont77, %cont71.preheader
  store %struct.ngx_path_t* %4, %struct.ngx_path_t** %1, align 4, !dbg !942, !tbaa !808
  %call80 = tail call i32 @ngx_add_path(%struct.ngx_conf_s* %cf, %struct.ngx_path_t** %1), !dbg !943
  %cmp83 = icmp eq i32 %call80, -1, !dbg !943
  %. = select i1 %cmp83, i8* inttoptr (i32 -1 to i8*), i8* null, !dbg !943
  ret i8* %., !dbg !943

return:                                           ; preds = %for.body, %for.body, %cont20, %if.end, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), %entry ], [ inttoptr (i32 -1 to i8*), %if.end ], [ null, %cont20 ], [ getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), %for.body ], [ getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), %for.body ]
  ret i8* %retval.0, !dbg !944
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_conf_full_name(%struct.ngx_cycle_s*, %struct.ngx_str_t*, i32)

declare i32 @ngx_atoi(i8*, i32)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

define i32 @ngx_add_path(%struct.ngx_conf_s* %cf, %struct.ngx_path_t** nocapture %slot) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !592), !dbg !945
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %slot}, i64 0, metadata !593), !dbg !945
  %0 = load %struct.ngx_path_t** %slot, align 4, !dbg !946, !tbaa !808
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %0}, i64 0, metadata !597), !dbg !946
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !947
  %1 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !947, !tbaa !808
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %1, i32 0, i32 9, i32 0, !dbg !947
  %2 = load i8** %elts, align 4, !dbg !947, !tbaa !808
  %3 = bitcast i8* %2 to %struct.ngx_path_t**, !dbg !947
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %3}, i64 0, metadata !598), !dbg !947
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !594), !dbg !948
  %nelts141 = getelementptr inbounds %struct.ngx_cycle_s* %1, i32 0, i32 9, i32 1, !dbg !948
  %4 = load i32* %nelts141, align 4, !dbg !948, !tbaa !802
  %cmp142 = icmp eq i32 %4, 0, !dbg !948
  br i1 %cmp142, label %for.end86, label %for.body.lr.ph, !dbg !948

for.body.lr.ph:                                   ; preds = %entry
  %len4 = getelementptr inbounds %struct.ngx_path_t* %0, i32 0, i32 0, i32 0, !dbg !949
  %data9 = getelementptr inbounds %struct.ngx_path_t* %0, i32 0, i32 0, i32 1, !dbg !950
  br label %for.body, !dbg !948

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %5 = phi %struct.ngx_cycle_s* [ %1, %for.body.lr.ph ], [ %29, %for.cond.backedge ]
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %27, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_path_t** %3, i32 %i.0143, !dbg !949
  %6 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !949, !tbaa !808
  %len = getelementptr inbounds %struct.ngx_path_t* %6, i32 0, i32 0, i32 0, !dbg !949
  %7 = load i32* %len, align 4, !dbg !949, !tbaa !802
  %8 = load i32* %len4, align 4, !dbg !949, !tbaa !802
  %cmp5 = icmp eq i32 %7, %8, !dbg !949
  br i1 %cmp5, label %land.lhs.true, label %for.inc83, !dbg !949

land.lhs.true:                                    ; preds = %for.body
  %data = getelementptr inbounds %struct.ngx_path_t* %6, i32 0, i32 0, i32 1, !dbg !950
  %9 = load i8** %data, align 4, !dbg !950, !tbaa !808
  %10 = load i8** %data9, align 4, !dbg !950, !tbaa !808
  %call = tail call i32 @strcmp(i8* %9, i8* %10) nounwind, !dbg !950
  %cmp10 = icmp eq i32 %call, 0, !dbg !950
  br i1 %cmp10, label %for.body17, label %for.inc83, !dbg !950

for.body17:                                       ; preds = %cont15.backedge, %land.lhs.true
  %11 = phi %struct.ngx_path_t* [ %6, %land.lhs.true ], [ %.pre147, %cont15.backedge ], !dbg !951
  %n.0138 = phi i32 [ 0, %land.lhs.true ], [ %22, %cont15.backedge ]
  %arrayidx19 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 2, i32 %n.0138, !dbg !951
  %12 = load i32* %arrayidx19, align 4, !dbg !951, !tbaa !802
  %arrayidx21 = getelementptr inbounds %struct.ngx_path_t* %0, i32 0, i32 2, i32 %n.0138, !dbg !951
  %13 = load i32* %arrayidx21, align 4, !dbg !951, !tbaa !802
  %cmp22 = icmp eq i32 %12, %13, !dbg !951
  br i1 %cmp22, label %cont75, label %if.then23, !dbg !951

if.then23:                                        ; preds = %for.body17
  %conf_file = getelementptr inbounds %struct.ngx_path_t* %0, i32 0, i32 6, !dbg !955
  %14 = load i8** %conf_file, align 4, !dbg !955, !tbaa !808
  %cmp24 = icmp eq i8* %14, null, !dbg !955
  br i1 %cmp24, label %if.then25, label %cont61, !dbg !955

if.then25:                                        ; preds = %if.then23
  %conf_file27 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 6, !dbg !957
  %15 = load i8** %conf_file27, align 4, !dbg !957, !tbaa !808
  %cmp28 = icmp eq i8* %15, null, !dbg !957
  %log = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 6, !dbg !959
  %16 = load %struct.ngx_log_s** %log, align 4, !dbg !959, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %16, i32 0, i32 0, !dbg !959
  %17 = load i32* %log_level, align 4, !dbg !959, !tbaa !802
  %cmp32 = icmp eq i32 %17, 0, !dbg !959
  br i1 %cmp28, label %cont31, label %cont45, !dbg !957

cont31:                                           ; preds = %if.then25
  br i1 %cmp32, label %return, label %cont35, !dbg !959

cont35:                                           ; preds = %cont31
  %name38 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 0, !dbg !961
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %16, i32 0, i8* getelementptr inbounds ([145 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %name38) nounwind, !dbg !961
  br label %return, !dbg !961

cont45:                                           ; preds = %if.then25
  br i1 %cmp32, label %return, label %cont49, !dbg !962

cont49:                                           ; preds = %cont45
  %name52 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 0, !dbg !963
  %line = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 7, !dbg !963
  %18 = load i32* %line, align 4, !dbg !963, !tbaa !802
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %16, i32 0, i8* getelementptr inbounds ([138 x i8]* @.str13, i32 0, i32 0), %struct.ngx_str_t* %name52, i8* %15, i32 %18) nounwind, !dbg !963
  br label %return, !dbg !963

cont61:                                           ; preds = %if.then23
  %name63 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 0, !dbg !964
  %conf_file65 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 6, !dbg !964
  %19 = load i8** %conf_file65, align 4, !dbg !964, !tbaa !808
  %line67 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 7, !dbg !964
  %20 = load i32* %line67, align 4, !dbg !964, !tbaa !802
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([64 x i8]* @.str14, i32 0, i32 0), %struct.ngx_str_t* %name63, i8* %19, i32 %20) nounwind, !dbg !964
  br label %return, !dbg !965

cont75:                                           ; preds = %for.body17
  %cmp76 = icmp eq i32 %12, 0, !dbg !966
  br i1 %cmp76, label %for.end, label %for.inc, !dbg !966

for.inc:                                          ; preds = %cont75
  %21 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0138, i32 1), !dbg !967
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !967
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !967
  br i1 %23, label %ioc_bb79, label %cont15.backedge, !dbg !967

cont15.backedge:                                  ; preds = %for.inc, %ioc_bb79
  %cmp16 = icmp ult i32 %22, 3, !dbg !967
  %.pre147 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !951, !tbaa !808
  br i1 %cmp16, label %for.body17, label %for.end, !dbg !967

ioc_bb79:                                         ; preds = %for.inc
  %24 = zext i32 %n.0138 to i64, !dbg !967
  tail call void @__ioc_report_add_overflow(i32 300, i32 27, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !967
  br label %cont15.backedge, !dbg !967

for.end:                                          ; preds = %cont15.backedge, %cont75
  %25 = phi %struct.ngx_path_t* [ %11, %cont75 ], [ %.pre147, %cont15.backedge ]
  store %struct.ngx_path_t* %25, %struct.ngx_path_t** %slot, align 4, !dbg !968, !tbaa !808
  br label %return, !dbg !969

for.inc83:                                        ; preds = %for.body, %land.lhs.true
  %26 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0143, i32 1), !dbg !948
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !948
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !948
  br i1 %28, label %ioc_bb84, label %for.cond.backedge, !dbg !948

for.cond.backedge:                                ; preds = %for.inc83, %ioc_bb84
  %29 = phi %struct.ngx_cycle_s* [ %5, %for.inc83 ], [ %.pre, %ioc_bb84 ], !dbg !948
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %29, i32 0, i32 9, i32 1, !dbg !948
  %30 = load i32* %nelts, align 4, !dbg !948, !tbaa !802
  %cmp = icmp ult i32 %27, %30, !dbg !948
  br i1 %cmp, label %for.body, label %for.end86, !dbg !948

ioc_bb84:                                         ; preds = %for.inc83
  %31 = zext i32 %i.0143 to i64, !dbg !948
  tail call void @__ioc_report_add_overflow(i32 298, i32 49, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !948
  %.pre = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !948, !tbaa !808
  br label %for.cond.backedge, !dbg !948

for.end86:                                        ; preds = %for.cond.backedge, %entry
  %.lcssa139 = phi %struct.ngx_cycle_s* [ %1, %entry ], [ %29, %for.cond.backedge ]
  %pathes2 = getelementptr inbounds %struct.ngx_cycle_s* %.lcssa139, i32 0, i32 9, !dbg !948
  %call89 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %pathes2) nounwind, !dbg !970
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %32}, i64 0, metadata !598), !dbg !970
  %cmp90 = icmp eq i8* %call89, null, !dbg !971
  br i1 %cmp90, label %return, label %if.end94, !dbg !971

if.end94:                                         ; preds = %for.end86
  %32 = bitcast i8* %call89 to %struct.ngx_path_t**, !dbg !970
  store %struct.ngx_path_t* %0, %struct.ngx_path_t** %32, align 4, !dbg !972, !tbaa !808
  br label %return, !dbg !973

return:                                           ; preds = %for.end86, %cont45, %cont49, %cont31, %cont35, %if.end94, %for.end, %cont61
  %retval.0 = phi i32 [ -1, %cont61 ], [ 0, %for.end ], [ 0, %if.end94 ], [ -1, %cont35 ], [ -1, %cont31 ], [ -1, %cont49 ], [ -1, %cont45 ], [ -1, %for.end86 ]
  ret i32 %retval.0, !dbg !974
}

define i8* @ngx_conf_merge_path_value(%struct.ngx_conf_s* %cf, %struct.ngx_path_t** nocapture %path, %struct.ngx_path_t* %prev, %struct.ngx_path_init_t* nocapture %init) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !552), !dbg !975
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %path}, i64 0, metadata !553), !dbg !975
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_t* %prev}, i64 0, metadata !554), !dbg !975
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_path_init_t* %init}, i64 0, metadata !555), !dbg !975
  %0 = load %struct.ngx_path_t** %path, align 4, !dbg !976, !tbaa !808
  %tobool = icmp eq %struct.ngx_path_t* %0, null, !dbg !976
  br i1 %tobool, label %if.end, label %return, !dbg !976

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %struct.ngx_path_t* %prev, null, !dbg !978
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !978

if.then2:                                         ; preds = %if.end
  store %struct.ngx_path_t* %prev, %struct.ngx_path_t** %path, align 4, !dbg !979, !tbaa !808
  br label %return, !dbg !981

if.end3:                                          ; preds = %if.end
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !982
  %1 = load %struct.ngx_pool_s** %pool, align 4, !dbg !982, !tbaa !808
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 44) nounwind, !dbg !982
  %2 = bitcast i8* %call to %struct.ngx_path_t*, !dbg !982
  store %struct.ngx_path_t* %2, %struct.ngx_path_t** %path, align 4, !dbg !982, !tbaa !808
  %cmp = icmp eq i8* %call, null, !dbg !983
  br i1 %cmp, label %return, label %if.end5, !dbg !983

if.end5:                                          ; preds = %if.end3
  %3 = bitcast %struct.ngx_path_init_t* %init to i64*, !dbg !984
  %4 = bitcast i8* %call to i64*, !dbg !984
  %5 = load i64* %3, align 4, !dbg !984
  store i64 %5, i64* %4, align 4, !dbg !984
  %6 = load %struct.ngx_path_t** %path, align 4, !dbg !985, !tbaa !808
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !985
  %name7 = getelementptr inbounds %struct.ngx_path_t* %6, i32 0, i32 0, !dbg !985
  %7 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !985, !tbaa !808
  %call10 = tail call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %7, %struct.ngx_str_t* %name7, i32 0) nounwind, !dbg !985
  %cmp11 = icmp eq i32 %call10, 0, !dbg !985
  br i1 %cmp11, label %if.end15, label %return, !dbg !985

if.end15:                                         ; preds = %if.end5
  %arrayidx = getelementptr inbounds %struct.ngx_path_init_t* %init, i32 0, i32 1, i32 0, !dbg !986
  %8 = load i32* %arrayidx, align 4, !dbg !986, !tbaa !802
  %9 = load %struct.ngx_path_t** %path, align 4, !dbg !986, !tbaa !808
  %arrayidx17 = getelementptr inbounds %struct.ngx_path_t* %9, i32 0, i32 2, i32 0, !dbg !986
  store i32 %8, i32* %arrayidx17, align 4, !dbg !986, !tbaa !802
  %arrayidx19 = getelementptr inbounds %struct.ngx_path_init_t* %init, i32 0, i32 1, i32 1, !dbg !987
  %10 = load i32* %arrayidx19, align 4, !dbg !987, !tbaa !802
  %arrayidx21 = getelementptr inbounds %struct.ngx_path_t* %9, i32 0, i32 2, i32 1, !dbg !987
  store i32 %10, i32* %arrayidx21, align 4, !dbg !987, !tbaa !802
  %arrayidx23 = getelementptr inbounds %struct.ngx_path_init_t* %init, i32 0, i32 1, i32 2, !dbg !988
  %11 = load i32* %arrayidx23, align 4, !dbg !988, !tbaa !802
  %arrayidx25 = getelementptr inbounds %struct.ngx_path_t* %9, i32 0, i32 2, i32 2, !dbg !988
  store i32 %11, i32* %arrayidx25, align 4, !dbg !988, !tbaa !802
  %12 = load i32* %arrayidx, align 4, !dbg !989, !tbaa !802
  %tobool30 = icmp ne i32 %12, 0, !dbg !989
  %cond = zext i1 %tobool30 to i32, !dbg !989
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 %cond), !dbg !989
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !989
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !989
  br i1 %15, label %ioc_bb33, label %cont34, !dbg !989

ioc_bb33:                                         ; preds = %if.end15
  %16 = zext i1 %tobool30 to i64, !dbg !989
  %17 = zext i32 %12 to i64, !dbg !989
  tail call void @__ioc_report_add_overflow(i32 231, i32 38, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %17, i64 %16, i8 5) nounwind, !dbg !989
  br label %cont34, !dbg !989

cont34:                                           ; preds = %if.end15, %ioc_bb33
  %18 = load i32* %arrayidx19, align 4, !dbg !989, !tbaa !802
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %14, i32 %18), !dbg !989
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !989
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !989
  br i1 %21, label %ioc_bb37, label %cont38, !dbg !989

ioc_bb37:                                         ; preds = %cont34
  %22 = zext i32 %18 to i64, !dbg !989
  %23 = zext i32 %14 to i64, !dbg !989
  tail call void @__ioc_report_add_overflow(i32 231, i32 67, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %23, i64 %22, i8 5) nounwind, !dbg !989
  %.pre = load i32* %arrayidx19, align 4, !dbg !989, !tbaa !802
  br label %cont38, !dbg !989

cont38:                                           ; preds = %cont34, %ioc_bb37
  %24 = phi i32 [ %18, %cont34 ], [ %.pre, %ioc_bb37 ]
  %tobool41 = icmp ne i32 %24, 0, !dbg !989
  %cond42 = zext i1 %tobool41 to i32, !dbg !989
  %25 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 %cond42), !dbg !989
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !989
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !989
  br i1 %27, label %ioc_bb46, label %cont47, !dbg !989

ioc_bb46:                                         ; preds = %cont38
  %28 = zext i1 %tobool41 to i64, !dbg !989
  %29 = zext i32 %20 to i64, !dbg !989
  tail call void @__ioc_report_add_overflow(i32 231, i32 86, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %29, i64 %28, i8 5) nounwind, !dbg !989
  br label %cont47, !dbg !989

cont47:                                           ; preds = %cont38, %ioc_bb46
  %30 = load i32* %arrayidx23, align 4, !dbg !989, !tbaa !802
  %31 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 %30), !dbg !989
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !989
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !989
  br i1 %33, label %ioc_bb50, label %cont51, !dbg !989

ioc_bb50:                                         ; preds = %cont47
  %34 = zext i32 %30 to i64, !dbg !989
  %35 = zext i32 %26 to i64, !dbg !989
  tail call void @__ioc_report_add_overflow(i32 231, i32 115, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %35, i64 %34, i8 5) nounwind, !dbg !989
  %.pre92 = load i32* %arrayidx23, align 4, !dbg !989, !tbaa !802
  br label %cont51, !dbg !989

cont51:                                           ; preds = %cont47, %ioc_bb50
  %36 = phi i32 [ %30, %cont47 ], [ %.pre92, %ioc_bb50 ]
  %tobool54 = icmp ne i32 %36, 0, !dbg !989
  %cond55 = zext i1 %tobool54 to i32, !dbg !989
  %37 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 %cond55), !dbg !989
  %38 = extractvalue { i32, i1 } %37, 0, !dbg !989
  %39 = extractvalue { i32, i1 } %37, 1, !dbg !989
  br i1 %39, label %ioc_bb59, label %cont60, !dbg !989

ioc_bb59:                                         ; preds = %cont51
  %40 = zext i1 %tobool54 to i64, !dbg !989
  %41 = zext i32 %32 to i64, !dbg !989
  tail call void @__ioc_report_add_overflow(i32 231, i32 134, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %41, i64 %40, i8 5) nounwind, !dbg !989
  br label %cont60, !dbg !989

cont60:                                           ; preds = %cont51, %ioc_bb59
  %42 = load %struct.ngx_path_t** %path, align 4, !dbg !989, !tbaa !808
  %len = getelementptr inbounds %struct.ngx_path_t* %42, i32 0, i32 1, !dbg !989
  store i32 %38, i32* %len, align 4, !dbg !989, !tbaa !802
  %manager = getelementptr inbounds %struct.ngx_path_t* %42, i32 0, i32 3, !dbg !990
  store i32 (i8*)* null, i32 (i8*)** %manager, align 4, !dbg !990, !tbaa !808
  %43 = load %struct.ngx_path_t** %path, align 4, !dbg !991, !tbaa !808
  %loader = getelementptr inbounds %struct.ngx_path_t* %43, i32 0, i32 4, !dbg !991
  store void (i8*)* null, void (i8*)** %loader, align 4, !dbg !991, !tbaa !808
  %44 = load %struct.ngx_path_t** %path, align 4, !dbg !992, !tbaa !808
  %conf_file = getelementptr inbounds %struct.ngx_path_t* %44, i32 0, i32 6, !dbg !992
  store i8* null, i8** %conf_file, align 4, !dbg !992, !tbaa !808
  %call61 = tail call i32 @ngx_add_path(%struct.ngx_conf_s* %cf, %struct.ngx_path_t** %path), !dbg !993
  %cmp62 = icmp eq i32 %call61, 0, !dbg !993
  %. = select i1 %cmp62, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !993
  ret i8* %., !dbg !993

return:                                           ; preds = %if.end5, %if.end3, %entry, %if.then2
  %retval.0 = phi i8* [ null, %if.then2 ], [ null, %entry ], [ inttoptr (i32 -1 to i8*), %if.end3 ], [ inttoptr (i32 -1 to i8*), %if.end5 ]
  ret i8* %retval.0, !dbg !994
}

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

define i8* @ngx_conf_set_access_slot(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !559), !dbg !995
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !560), !dbg !995
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !561), !dbg !995
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !562), !dbg !996
  %offset = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 4, !dbg !997
  %0 = load i32* %offset, align 4, !dbg !997, !tbaa !802
  %add.ptr = getelementptr inbounds i8* %conf, i32 %0, !dbg !997
  %1 = bitcast i8* %add.ptr to i32*, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !569), !dbg !997
  %2 = load i32* %1, align 4, !dbg !998, !tbaa !802
  tail call void @__ioc_report_conversion(i32 251, i32 33, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !998
  %cmp = icmp eq i32 %2, -1, !dbg !998
  br i1 %cmp, label %if.end, label %return, !dbg !998

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !999
  %3 = load %struct.ngx_array_s** %args, align 4, !dbg !999, !tbaa !808
  %elts = getelementptr inbounds %struct.ngx_array_s* %3, i32 0, i32 0, !dbg !999
  %4 = load i8** %elts, align 4, !dbg !999, !tbaa !808
  %5 = bitcast i8* %4 to %struct.ngx_str_t*, !dbg !999
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %5}, i64 0, metadata !565), !dbg !999
  store i32 384, i32* %1, align 4, !dbg !1000, !tbaa !802
  tail call void @llvm.dbg.value(metadata !824, i64 0, metadata !566), !dbg !1001
  %nelts237 = getelementptr inbounds %struct.ngx_array_s* %3, i32 0, i32 1, !dbg !1001
  %6 = load i32* %nelts237, align 4, !dbg !1001, !tbaa !802
  %cmp8238 = icmp ugt i32 %6, 1, !dbg !1001
  br i1 %cmp8238, label %for.body.lr.ph, label %return, !dbg !1001

for.body.lr.ph:                                   ; preds = %if.end
  %7 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str9 to i32)), !dbg !1002
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 1) to i32), i32 ptrtoint ([2 x i8]* @.str10 to i32)), !dbg !1003
  br label %for.body, !dbg !1001

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0239 = phi i32 [ 1, %for.body.lr.ph ], [ %33, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %5, i32 %i.0239, !dbg !1004
  %data = getelementptr inbounds %struct.ngx_str_t* %5, i32 %i.0239, i32 1, !dbg !1004
  %9 = load i8** %data, align 4, !dbg !1004, !tbaa !808
  tail call void @llvm.dbg.value(metadata !{i8* %9}, i64 0, metadata !564), !dbg !1004
  %call = tail call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 5) nounwind readonly, !dbg !1005
  %cmp13 = icmp eq i32 %call, 0, !dbg !1005
  br i1 %cmp13, label %cont20, label %cont25, !dbg !1005

cont20:                                           ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !1006, i64 0, metadata !568), !dbg !1007
  %add.ptr21 = getelementptr inbounds i8* %9, i32 5, !dbg !1009
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr21}, i64 0, metadata !564), !dbg !1009
  br label %if.end54, !dbg !1010

cont25:                                           ; preds = %for.body
  %call26 = tail call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 6) nounwind readonly, !dbg !1011
  %cmp27 = icmp eq i32 %call26, 0, !dbg !1011
  br i1 %cmp27, label %cont34, label %cont40, !dbg !1011

cont34:                                           ; preds = %cont25
  tail call void @llvm.dbg.value(metadata !1012, i64 0, metadata !568), !dbg !1013
  %add.ptr35 = getelementptr inbounds i8* %9, i32 6, !dbg !1015
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr35}, i64 0, metadata !564), !dbg !1015
  br label %if.end54, !dbg !1016

cont40:                                           ; preds = %cont25
  %call41 = tail call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 4) nounwind readonly, !dbg !1017
  %cmp42 = icmp eq i32 %call41, 0, !dbg !1017
  br i1 %cmp42, label %cont49, label %cont196, !dbg !1017

cont49:                                           ; preds = %cont40
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !568), !dbg !1018
  %add.ptr50 = getelementptr inbounds i8* %9, i32 4, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr50}, i64 0, metadata !564), !dbg !1020
  br label %if.end54

if.end54:                                         ; preds = %cont34, %cont49, %cont20
  %shift.0 = phi i32 [ 6, %cont20 ], [ 3, %cont34 ], [ 0, %cont49 ]
  %p.0 = phi i8* [ %add.ptr21, %cont20 ], [ %add.ptr35, %cont34 ], [ %add.ptr50, %cont49 ]
  %10 = extractvalue { i32, i1 } %7, 0, !dbg !1002
  %11 = extractvalue { i32, i1 } %7, 1, !dbg !1002
  br i1 %11, label %ioc_bb55, label %cont58, !dbg !1002

ioc_bb55:                                         ; preds = %if.end54
  tail call void @__ioc_report_sub_overflow(i32 273, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str9 to i32) to i64), i8 5) nounwind, !dbg !1002
  br label %cont58, !dbg !1002

cont58:                                           ; preds = %ioc_bb55, %if.end54
  %cmp59 = icmp eq i32 %10, 1, !dbg !1002
  br i1 %cmp59, label %cond.true, label %cond.false, !dbg !1002

cond.true:                                        ; preds = %cont58
  tail call void @llvm.dbg.value(metadata !933, i64 0, metadata !575), !dbg !1002
  tail call void @llvm.dbg.value(metadata !{i8* %p.0}, i64 0, metadata !576), !dbg !1021
  %12 = load i8* %p.0, align 1, !dbg !1021, !tbaa !803
  %conv = zext i8 %12 to i32, !dbg !1021
  %13 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 114), !dbg !1021
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !1021
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !1021
  br i1 %15, label %ioc_bb65, label %land.lhs.true71, !dbg !1021

ioc_bb65:                                         ; preds = %cond.true
  %16 = zext i8 %12 to i64, !dbg !1021
  tail call void @__ioc_report_sub_overflow(i32 273, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %16, i64 114, i8 13) nounwind, !dbg !1021
  br label %land.lhs.true71, !dbg !1021

land.lhs.true71:                                  ; preds = %cond.true, %ioc_bb65
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !580), !dbg !1021
  %cmp72 = icmp eq i32 %14, 0, !dbg !1021
  br i1 %cmp72, label %if.then74, label %if.else115, !dbg !1021

if.then74:                                        ; preds = %land.lhs.true71
  %arrayidx75 = getelementptr inbounds i8* %p.0, i32 1, !dbg !1022
  %17 = load i8* %arrayidx75, align 1, !dbg !1022, !tbaa !803
  %conv76 = zext i8 %17 to i32, !dbg !1022
  %18 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv76, i32 119), !dbg !1022
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !1022
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !1022
  br i1 %20, label %ioc_bb78, label %land.lhs.true84, !dbg !1022

ioc_bb78:                                         ; preds = %if.then74
  %21 = zext i8 %17 to i64, !dbg !1022
  tail call void @__ioc_report_sub_overflow(i32 273, i32 9, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %21, i64 119, i8 13) nounwind, !dbg !1022
  br label %land.lhs.true84, !dbg !1022

land.lhs.true84:                                  ; preds = %if.then74, %ioc_bb78
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !580), !dbg !1022
  %cmp85 = icmp eq i32 %19, 0, !dbg !1022
  br i1 %cmp85, label %if.then87, label %if.else115, !dbg !1022

if.then87:                                        ; preds = %land.lhs.true84
  %arrayidx88 = getelementptr inbounds i8* %p.0, i32 2, !dbg !1024
  %22 = load i8* %arrayidx88, align 1, !dbg !1024, !tbaa !803
  %conv89 = zext i8 %22 to i32, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i32 %conv89}, i64 0, metadata !580), !dbg !1024
  br label %cond.end, !dbg !1024

cond.false:                                       ; preds = %cont58
  %call109 = tail call i32 @strcmp(i8* %p.0, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !1024
  br label %cond.end, !dbg !1024

cond.end:                                         ; preds = %if.then87, %cond.false
  %cond = phi i32 [ %call109, %cond.false ], [ %conv89, %if.then87 ], !dbg !1024
  %cmp110 = icmp eq i32 %cond, 0, !dbg !1024
  br i1 %cmp110, label %cont192, label %if.else115, !dbg !1024

if.else115:                                       ; preds = %land.lhs.true71, %land.lhs.true84, %cond.end
  %23 = extractvalue { i32, i1 } %8, 0, !dbg !1003
  %24 = extractvalue { i32, i1 } %8, 1, !dbg !1003
  br i1 %24, label %ioc_bb118, label %cont121, !dbg !1003

ioc_bb118:                                        ; preds = %if.else115
  tail call void @__ioc_report_sub_overflow(i32 276, i32 14, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([2 x i8]* @.str10 to i32) to i64), i8 5) nounwind, !dbg !1003
  br label %cont121, !dbg !1003

cont121:                                          ; preds = %ioc_bb118, %if.else115
  %cmp122 = icmp eq i32 %23, 1, !dbg !1003
  br i1 %cmp122, label %cond.true129, label %cond.false179, !dbg !1003

cond.true129:                                     ; preds = %cont121
  tail call void @llvm.dbg.value(metadata !824, i64 0, metadata !583), !dbg !1003
  tail call void @llvm.dbg.value(metadata !{i8* %p.0}, i64 0, metadata !584), !dbg !1026
  %25 = load i8* %p.0, align 1, !dbg !1026, !tbaa !803
  %conv133 = zext i8 %25 to i32, !dbg !1026
  %26 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv133, i32 114), !dbg !1026
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !1026
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !1026
  br i1 %28, label %ioc_bb135, label %land.lhs.true141, !dbg !1026

ioc_bb135:                                        ; preds = %cond.true129
  %29 = zext i8 %25 to i64, !dbg !1026
  tail call void @__ioc_report_sub_overflow(i32 276, i32 14, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %29, i64 114, i8 13) nounwind, !dbg !1026
  br label %land.lhs.true141, !dbg !1026

land.lhs.true141:                                 ; preds = %cond.true129, %ioc_bb135
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !586), !dbg !1026
  %cmp142 = icmp eq i32 %27, 0, !dbg !1026
  br i1 %cmp142, label %if.then144, label %cont196, !dbg !1026

if.then144:                                       ; preds = %land.lhs.true141
  %arrayidx145 = getelementptr inbounds i8* %p.0, i32 1, !dbg !1027
  %30 = load i8* %arrayidx145, align 1, !dbg !1027, !tbaa !803
  %conv146 = zext i8 %30 to i32, !dbg !1027
  tail call void @llvm.dbg.value(metadata !{i32 %conv146}, i64 0, metadata !586), !dbg !1027
  br label %cond.end181, !dbg !1027

cond.false179:                                    ; preds = %cont121
  %call180 = tail call i32 @strcmp(i8* %p.0, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !1029
  br label %cond.end181, !dbg !1029

cond.end181:                                      ; preds = %if.then144, %cond.false179
  %cond182 = phi i32 [ %call180, %cond.false179 ], [ %conv146, %if.then144 ], !dbg !1029
  %cmp183 = icmp eq i32 %cond182, 0, !dbg !1029
  br i1 %cmp183, label %cont192, label %cont196, !dbg !1029

cont192:                                          ; preds = %cond.end181, %cond.end
  %right.0 = phi i32 [ 6, %cond.end ], [ 4, %cond.end181 ]
  %shl = shl i32 %right.0, %shift.0, !dbg !1031
  %31 = load i32* %1, align 4, !dbg !1031, !tbaa !802
  %or = or i32 %31, %shl, !dbg !1031
  store i32 %or, i32* %1, align 4, !dbg !1031, !tbaa !802
  %32 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0239, i32 1), !dbg !1001
  %33 = extractvalue { i32, i1 } %32, 0, !dbg !1001
  %34 = extractvalue { i32, i1 } %32, 1, !dbg !1001
  br i1 %34, label %ioc_bb193, label %for.cond.backedge, !dbg !1001

for.cond.backedge:                                ; preds = %cont192, %ioc_bb193
  %35 = load %struct.ngx_array_s** %args, align 4, !dbg !1001, !tbaa !808
  %nelts = getelementptr inbounds %struct.ngx_array_s* %35, i32 0, i32 1, !dbg !1001
  %36 = load i32* %nelts, align 4, !dbg !1001, !tbaa !802
  %cmp8 = icmp ult i32 %33, %36, !dbg !1001
  br i1 %cmp8, label %for.body, label %return, !dbg !1001

ioc_bb193:                                        ; preds = %cont192
  %37 = zext i32 %i.0239 to i64, !dbg !1001
  tail call void @__ioc_report_add_overflow(i32 256, i32 41, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind, !dbg !1001
  br label %for.cond.backedge, !dbg !1001

cont196:                                          ; preds = %land.lhs.true141, %cont40, %cond.end181
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1032
  br label %return, !dbg !1033

return:                                           ; preds = %if.end, %for.cond.backedge, %entry, %cont196
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont196 ], [ getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), %entry ], [ null, %for.cond.backedge ], [ null, %if.end ]
  ret i8* %retval.0, !dbg !1034
}

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

define i32 @ngx_create_pathes(%struct.ngx_cycle_s* nocapture %cycle, i32 %user) nounwind {
entry:
  %fi = alloca %struct.stat, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !611), !dbg !1035
  call void @llvm.dbg.value(metadata !{i32 %user}, i64 0, metadata !612), !dbg !1035
  %elts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 9, i32 0, !dbg !1036
  %0 = load i8** %elts, align 4, !dbg !1036, !tbaa !808
  %1 = bitcast i8* %0 to %struct.ngx_path_t**, !dbg !1036
  call void @llvm.dbg.value(metadata !{%struct.ngx_path_t** %1}, i64 0, metadata !616), !dbg !1036
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !615), !dbg !1037
  %nelts = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 9, i32 1, !dbg !1037
  %2 = load i32* %nelts, align 4, !dbg !1037, !tbaa !802
  %cmp159 = icmp eq i32 %2, 0, !dbg !1037
  br i1 %cmp159, label %return, label %for.body.lr.ph, !dbg !1037

for.body.lr.ph:                                   ; preds = %entry
  %cmp28 = icmp eq i32 %user, -1, !dbg !1038
  %3 = bitcast %struct.stat* %fi to %struct.stat64*, !dbg !1039
  %st_uid = getelementptr inbounds %struct.stat* %fi, i32 0, i32 5, !dbg !1040
  %st_mode = getelementptr inbounds %struct.stat* %fi, i32 0, i32 3, !dbg !1041
  br label %for.body, !dbg !1037

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %35, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_path_t** %1, i32 %i.0160, !dbg !1042
  %4 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1042, !tbaa !808
  %data = getelementptr inbounds %struct.ngx_path_t* %4, i32 0, i32 0, i32 1, !dbg !1042
  %5 = load i8** %data, align 4, !dbg !1042, !tbaa !808
  %call = call i32 @mkdir(i8* %5, i32 448) nounwind, !dbg !1042
  %cmp6 = icmp eq i32 %call, -1, !dbg !1042
  br i1 %cmp6, label %if.then, label %ioc_bb26, !dbg !1042

if.then:                                          ; preds = %for.body
  %call7 = call i32* @__errno_location() nounwind readnone, !dbg !1043
  %6 = load i32* %call7, align 4, !dbg !1043, !tbaa !802
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !613), !dbg !1043
  %cmp8 = icmp eq i32 %6, 17, !dbg !1045
  br i1 %cmp8, label %ioc_bb26, label %if.then9, !dbg !1045

if.then9:                                         ; preds = %if.then
  %log = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1046
  %7 = load %struct.ngx_log_s** %log, align 4, !dbg !1046, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %7, i32 0, i32 0, !dbg !1046
  %8 = load i32* %log_level, align 4, !dbg !1046, !tbaa !802
  %cmp12 = icmp eq i32 %8, 0, !dbg !1046
  br i1 %cmp12, label %return, label %cont15, !dbg !1046

cont15:                                           ; preds = %if.then9
  %9 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1048, !tbaa !808
  %data19 = getelementptr inbounds %struct.ngx_path_t* %9, i32 0, i32 0, i32 1, !dbg !1048
  %10 = load i8** %data19, align 4, !dbg !1048, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %7, i32 %6, i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0), i8* %10) nounwind, !dbg !1048
  br label %return, !dbg !1048

ioc_bb26:                                         ; preds = %if.then, %for.body
  call void @__ioc_report_conversion(i32 346, i32 44, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1038
  br i1 %cmp28, label %for.inc, label %if.end30, !dbg !1038

if.end30:                                         ; preds = %ioc_bb26
  call void @llvm.dbg.declare(metadata !{%struct.stat* %fi}, metadata !617), !dbg !1049
  %11 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1039, !tbaa !808
  %data33 = getelementptr inbounds %struct.ngx_path_t* %11, i32 0, i32 0, i32 1, !dbg !1039
  %12 = load i8** %data33, align 4, !dbg !1039, !tbaa !808
  call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !1050) nounwind, !dbg !1051
  call void @llvm.dbg.value(metadata !{%struct.stat64* %3}, i64 0, metadata !1052) nounwind, !dbg !1051
  %call.i = call i32 @__xstat64(i32 3, i8* %12, %struct.stat64* %3) nounwind, !dbg !1053
  %cmp37 = icmp eq i32 %call.i, -1, !dbg !1039
  br i1 %cmp37, label %if.then38, label %if.end55, !dbg !1039

if.then38:                                        ; preds = %if.end30
  %log39 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1055
  %13 = load %struct.ngx_log_s** %log39, align 4, !dbg !1055, !tbaa !808
  %log_level40 = getelementptr inbounds %struct.ngx_log_s* %13, i32 0, i32 0, !dbg !1055
  %14 = load i32* %log_level40, align 4, !dbg !1055, !tbaa !802
  %cmp43 = icmp eq i32 %14, 0, !dbg !1055
  br i1 %cmp43, label %return, label %cont46, !dbg !1055

cont46:                                           ; preds = %if.then38
  %call48 = call i32* @__errno_location() nounwind readnone, !dbg !1057
  %15 = load i32* %call48, align 4, !dbg !1057, !tbaa !802
  %16 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1057, !tbaa !808
  %data51 = getelementptr inbounds %struct.ngx_path_t* %16, i32 0, i32 0, i32 1, !dbg !1057
  %17 = load i8** %data51, align 4, !dbg !1057, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %13, i32 %15, i8* getelementptr inbounds ([19 x i8]* @.str15, i32 0, i32 0), i8* %17) nounwind, !dbg !1057
  br label %return, !dbg !1057

if.end55:                                         ; preds = %if.end30
  %18 = load i32* %st_uid, align 4, !dbg !1040, !tbaa !802
  %cmp56 = icmp eq i32 %18, %user, !dbg !1040
  br i1 %cmp56, label %if.end88, label %if.then57, !dbg !1040

if.then57:                                        ; preds = %if.end55
  %19 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1058, !tbaa !808
  %data60 = getelementptr inbounds %struct.ngx_path_t* %19, i32 0, i32 0, i32 1, !dbg !1058
  %20 = load i8** %data60, align 4, !dbg !1058, !tbaa !808
  call void @__ioc_report_conversion(i32 358, i32 61, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1058
  %call66 = call i32 @chown(i8* %20, i32 %user, i32 -1) nounwind, !dbg !1058
  %cmp69 = icmp eq i32 %call66, -1, !dbg !1058
  br i1 %cmp69, label %if.then70, label %if.end88, !dbg !1058

if.then70:                                        ; preds = %if.then57
  %log71 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1060
  %21 = load %struct.ngx_log_s** %log71, align 4, !dbg !1060, !tbaa !808
  %log_level72 = getelementptr inbounds %struct.ngx_log_s* %21, i32 0, i32 0, !dbg !1060
  %22 = load i32* %log_level72, align 4, !dbg !1060, !tbaa !802
  %cmp75 = icmp eq i32 %22, 0, !dbg !1060
  br i1 %cmp75, label %return, label %cont78, !dbg !1060

cont78:                                           ; preds = %if.then70
  %call80 = call i32* @__errno_location() nounwind readnone, !dbg !1062
  %23 = load i32* %call80, align 4, !dbg !1062, !tbaa !802
  %24 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1062, !tbaa !808
  %data83 = getelementptr inbounds %struct.ngx_path_t* %24, i32 0, i32 0, i32 1, !dbg !1062
  %25 = load i8** %data83, align 4, !dbg !1062, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %21, i32 %23, i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %25, i32 %user) nounwind, !dbg !1062
  br label %return, !dbg !1062

if.end88:                                         ; preds = %if.end55, %if.then57
  %26 = load i32* %st_mode, align 4, !dbg !1041, !tbaa !802
  %and = and i32 %26, 448, !dbg !1041
  %cmp93 = icmp eq i32 %and, 448, !dbg !1041
  br i1 %cmp93, label %for.inc, label %cont96, !dbg !1041

cont96:                                           ; preds = %if.end88
  %or = or i32 %26, 448, !dbg !1063
  store i32 %or, i32* %st_mode, align 4, !dbg !1063, !tbaa !802
  %27 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1065, !tbaa !808
  %data100 = getelementptr inbounds %struct.ngx_path_t* %27, i32 0, i32 0, i32 1, !dbg !1065
  %28 = load i8** %data100, align 4, !dbg !1065, !tbaa !808
  %call102 = call i32 @chmod(i8* %28, i32 %or) nounwind, !dbg !1065
  %cmp105 = icmp eq i32 %call102, -1, !dbg !1065
  br i1 %cmp105, label %if.then106, label %for.inc, !dbg !1065

if.then106:                                       ; preds = %cont96
  %log107 = getelementptr inbounds %struct.ngx_cycle_s* %cycle, i32 0, i32 2, !dbg !1066
  %29 = load %struct.ngx_log_s** %log107, align 4, !dbg !1066, !tbaa !808
  %log_level108 = getelementptr inbounds %struct.ngx_log_s* %29, i32 0, i32 0, !dbg !1066
  %30 = load i32* %log_level108, align 4, !dbg !1066, !tbaa !802
  %cmp111 = icmp eq i32 %30, 0, !dbg !1066
  br i1 %cmp111, label %return, label %cont114, !dbg !1066

cont114:                                          ; preds = %if.then106
  %call116 = call i32* @__errno_location() nounwind readnone, !dbg !1068
  %31 = load i32* %call116, align 4, !dbg !1068, !tbaa !802
  %32 = load %struct.ngx_path_t** %arrayidx, align 4, !dbg !1068, !tbaa !808
  %data119 = getelementptr inbounds %struct.ngx_path_t* %32, i32 0, i32 0, i32 1, !dbg !1068
  %33 = load i8** %data119, align 4, !dbg !1068, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %29, i32 %31, i8* getelementptr inbounds ([20 x i8]* @.str17, i32 0, i32 0), i8* %33) nounwind, !dbg !1068
  br label %return, !dbg !1068

for.inc:                                          ; preds = %if.end88, %cont96, %ioc_bb26
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0160, i32 1), !dbg !1037
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !1037
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !1037
  br i1 %36, label %ioc_bb125, label %for.cond.backedge, !dbg !1037

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb125
  %37 = load i32* %nelts, align 4, !dbg !1037, !tbaa !802
  %cmp = icmp ult i32 %35, %37, !dbg !1037
  br i1 %cmp, label %for.body, label %return, !dbg !1037

ioc_bb125:                                        ; preds = %for.inc
  %38 = zext i32 %i.0160 to i64, !dbg !1037
  call void @__ioc_report_add_overflow(i32 337, i32 43, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %38, i64 1, i8 5) nounwind, !dbg !1037
  br label %for.cond.backedge, !dbg !1037

return:                                           ; preds = %entry, %for.cond.backedge, %if.then106, %cont114, %if.then70, %cont78, %if.then38, %cont46, %if.then9, %cont15
  %retval.0 = phi i32 [ -1, %cont15 ], [ -1, %if.then9 ], [ -1, %cont46 ], [ -1, %if.then38 ], [ -1, %cont78 ], [ -1, %if.then70 ], [ -1, %cont114 ], [ -1, %if.then106 ], [ 0, %for.cond.backedge ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1069
}

declare i32 @chown(i8* nocapture, i32, i32) nounwind

declare i32 @chmod(i8* nocapture, i32) nounwind

define i32 @ngx_ext_rename_file(%struct.ngx_str_t* nocapture %src, %struct.ngx_str_t* nocapture %to, %struct.ngx_ext_rename_file_t* nocapture %ext) nounwind {
entry:
  %cf = alloca %struct.ngx_copy_file_t, align 8
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !637), !dbg !1070
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %to}, i64 0, metadata !638), !dbg !1070
  call void @llvm.dbg.value(metadata !{%struct.ngx_ext_rename_file_t* %ext}, i64 0, metadata !639), !dbg !1070
  call void @llvm.dbg.declare(metadata !{%struct.ngx_copy_file_t* %cf}, metadata !643), !dbg !1071
  %access = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 0, !dbg !1072
  %0 = load i32* %access, align 4, !dbg !1072, !tbaa !802
  %tobool = icmp eq i32 %0, 0, !dbg !1072
  br i1 %tobool, label %if.end13, label %if.then, !dbg !1072

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1073
  %1 = load i8** %data, align 4, !dbg !1073, !tbaa !808
  %call = call i32 @chmod(i8* %1, i32 %0) nounwind, !dbg !1073
  %cmp = icmp eq i32 %call, -1, !dbg !1073
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !1073

if.then2:                                         ; preds = %if.then
  %log = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1075
  %2 = load %struct.ngx_log_s** %log, align 4, !dbg !1075, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %2, i32 0, i32 0, !dbg !1075
  %3 = load i32* %log_level, align 4, !dbg !1075, !tbaa !802
  %cmp5 = icmp ugt i32 %3, 2, !dbg !1075
  br i1 %cmp5, label %cont8, label %failed, !dbg !1075

cont8:                                            ; preds = %if.then2
  %call10 = call i32* @__errno_location() nounwind readnone, !dbg !1077
  %4 = load i32* %call10, align 4, !dbg !1077, !tbaa !802
  %5 = load i8** %data, align 4, !dbg !1077, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %2, i32 %4, i8* getelementptr inbounds ([20 x i8]* @.str17, i32 0, i32 0), i8* %5) nounwind, !dbg !1077
  br label %failed, !dbg !1077

if.end13:                                         ; preds = %entry, %if.then
  %time = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 2, !dbg !1078
  %6 = load i32* %time, align 4, !dbg !1078, !tbaa !853
  %cmp16 = icmp eq i32 %6, -1, !dbg !1078
  %data37.pre = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1079
  br i1 %cmp16, label %if.end36, label %if.then17, !dbg !1078

if.then17:                                        ; preds = %if.end13
  %7 = load i8** %data37.pre, align 4, !dbg !1080, !tbaa !808
  %fd = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 3, !dbg !1080
  %8 = load i32* %fd, align 4, !dbg !1080, !tbaa !802
  %call20 = call i32 @ngx_set_file_time(i8* %7, i32 %8, i32 %6) nounwind, !dbg !1080
  %cmp21 = icmp eq i32 %call20, 0, !dbg !1080
  br i1 %cmp21, label %if.end36, label %if.then22, !dbg !1080

if.then22:                                        ; preds = %if.then17
  %log23 = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1082
  %9 = load %struct.ngx_log_s** %log23, align 4, !dbg !1082, !tbaa !808
  %log_level24 = getelementptr inbounds %struct.ngx_log_s* %9, i32 0, i32 0, !dbg !1082
  %10 = load i32* %log_level24, align 4, !dbg !1082, !tbaa !802
  %cmp27 = icmp ugt i32 %10, 2, !dbg !1082
  br i1 %cmp27, label %cont30, label %failed, !dbg !1082

cont30:                                           ; preds = %if.then22
  %call32 = call i32* @__errno_location() nounwind readnone, !dbg !1084
  %11 = load i32* %call32, align 4, !dbg !1084, !tbaa !802
  %12 = load i8** %data37.pre, align 4, !dbg !1084, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %9, i32 %11, i8* getelementptr inbounds ([21 x i8]* @.str18, i32 0, i32 0), i8* %12) nounwind, !dbg !1084
  br label %failed, !dbg !1084

if.end36:                                         ; preds = %if.end13, %if.then17
  %13 = load i8** %data37.pre, align 4, !dbg !1079, !tbaa !808
  %data38 = getelementptr inbounds %struct.ngx_str_t* %to, i32 0, i32 1, !dbg !1079
  %14 = load i8** %data38, align 4, !dbg !1079, !tbaa !808
  %call39 = call i32 @rename(i8* %13, i8* %14) nounwind, !dbg !1079
  %cmp42 = icmp eq i32 %call39, -1, !dbg !1079
  br i1 %cmp42, label %if.end44, label %return, !dbg !1079

if.end44:                                         ; preds = %if.end36
  %call45 = call i32* @__errno_location() nounwind readnone, !dbg !1085
  %15 = load i32* %call45, align 4, !dbg !1085, !tbaa !802
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !642), !dbg !1085
  %cmp46 = icmp eq i32 %15, 2, !dbg !1086
  br i1 %cmp46, label %if.then47, label %if.end81, !dbg !1086

if.then47:                                        ; preds = %if.end44
  %16 = getelementptr %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 4, !dbg !1087
  %17 = bitcast i8* %16 to i32*, !dbg !1087
  %18 = load i32* %17, align 4, !dbg !1087
  %bf.clear = and i32 %18, 1, !dbg !1087
  %tobool48 = icmp eq i32 %bf.clear, 0, !dbg !1087
  br i1 %tobool48, label %failed, label %if.end50, !dbg !1087

if.end50:                                         ; preds = %if.then47
  %19 = load i8** %data38, align 4, !dbg !1089, !tbaa !808
  %path_access = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 1, !dbg !1089
  %20 = load i32* %path_access, align 4, !dbg !1089, !tbaa !802
  %and = lshr i32 %20, 2, !dbg !1089
  %shr = and i32 %and, 73, !dbg !1089
  %or = or i32 %shr, %20, !dbg !1089
  call void @llvm.dbg.value(metadata !{i8* %19}, i64 0, metadata !1090) nounwind, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !1092) nounwind, !dbg !1091
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1093) nounwind, !dbg !1094
  br label %for.cond.outer.i, !dbg !1095

for.cond.outer.i:                                 ; preds = %cont10.i, %if.end50
  %dir.pn.ph.i = phi i8* [ %19, %if.end50 ], [ %p.0.i, %cont10.i ]
  %err.0.ph.i = phi i32 [ 0, %if.end50 ], [ %err.1.i, %cont10.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %for.cond.outer.i
  %dir.pn.i = phi i8* [ %p.0.i, %for.cond.i ], [ %dir.pn.ph.i, %for.cond.outer.i ]
  %p.0.i = getelementptr inbounds i8* %dir.pn.i, i32 1, !dbg !1096
  %21 = load i8* %p.0.i, align 1, !dbg !1095, !tbaa !803
  switch i8 %21, label %for.cond.i [
    i8 0, label %ngx_create_full_path.exit
    i8 47, label %cont.i
  ], !dbg !1095

cont.i:                                           ; preds = %for.cond.i
  store i8 0, i8* %p.0.i, align 1, !dbg !1097, !tbaa !803
  %call.i = call i32 @mkdir(i8* %19, i32 %or) nounwind, !dbg !1098
  %cmp4.i = icmp eq i32 %call.i, -1, !dbg !1098
  br i1 %cmp4.i, label %if.then6.i, label %cont10.i, !dbg !1098

if.then6.i:                                       ; preds = %cont.i
  %22 = load i32* %call45, align 4, !dbg !1099, !tbaa !802
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !1093) nounwind, !dbg !1099
  switch i32 %22, label %ngx_create_full_path.exit [
    i32 17, label %sw.bb.i
    i32 13, label %cont10.i
  ], !dbg !1100

sw.bb.i:                                          ; preds = %if.then6.i
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1093) nounwind, !dbg !1101
  br label %cont10.i, !dbg !1101

cont10.i:                                         ; preds = %sw.bb.i, %if.then6.i, %cont.i
  %err.1.i = phi i32 [ 13, %if.then6.i ], [ 0, %sw.bb.i ], [ %err.0.ph.i, %cont.i ]
  store i8 47, i8* %p.0.i, align 1, !dbg !1102, !tbaa !803
  br label %for.cond.outer.i, !dbg !1103

ngx_create_full_path.exit:                        ; preds = %if.then6.i, %for.cond.i
  %retval.0.i = phi i32 [ %err.0.ph.i, %for.cond.i ], [ %22, %if.then6.i ]
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !642), !dbg !1089
  %tobool58 = icmp eq i32 %retval.0.i, 0, !dbg !1104
  br i1 %tobool58, label %if.end71, label %if.then59, !dbg !1104

if.then59:                                        ; preds = %ngx_create_full_path.exit
  %log60 = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1105
  %23 = load %struct.ngx_log_s** %log60, align 4, !dbg !1105, !tbaa !808
  %log_level61 = getelementptr inbounds %struct.ngx_log_s* %23, i32 0, i32 0, !dbg !1105
  %24 = load i32* %log_level61, align 4, !dbg !1105, !tbaa !802
  %cmp64 = icmp ugt i32 %24, 2, !dbg !1105
  br i1 %cmp64, label %cont67, label %failed, !dbg !1105

cont67:                                           ; preds = %if.then59
  %25 = load i8** %data38, align 4, !dbg !1107, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %23, i32 %retval.0.i, i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0), i8* %25) nounwind, !dbg !1107
  br label %failed, !dbg !1107

if.end71:                                         ; preds = %ngx_create_full_path.exit
  %26 = load i8** %data37.pre, align 4, !dbg !1108, !tbaa !808
  %27 = load i8** %data38, align 4, !dbg !1108, !tbaa !808
  %call74 = call i32 @rename(i8* %26, i8* %27) nounwind, !dbg !1108
  %cmp77 = icmp eq i32 %call74, -1, !dbg !1108
  br i1 %cmp77, label %if.end79, label %return, !dbg !1108

if.end79:                                         ; preds = %if.end71
  %28 = load i32* %call45, align 4, !dbg !1109, !tbaa !802
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !642), !dbg !1109
  br label %if.end81, !dbg !1110

if.end81:                                         ; preds = %if.end79, %if.end44
  %err.0 = phi i32 [ %28, %if.end79 ], [ %15, %if.end44 ]
  %cmp82 = icmp eq i32 %err.0, 18, !dbg !1111
  br i1 %cmp82, label %cont85, label %failed, !dbg !1111

cont85:                                           ; preds = %if.end81
  %size = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 0, !dbg !1112
  store i64 -1, i64* %size, align 8, !dbg !1112, !tbaa !814
  %buf_size = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 1, !dbg !1114
  store i32 0, i32* %buf_size, align 8, !dbg !1114, !tbaa !802
  %29 = load i32* %access, align 4, !dbg !1115, !tbaa !802
  %access89 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 2, !dbg !1115
  store i32 %29, i32* %access89, align 4, !dbg !1115, !tbaa !802
  %30 = load i32* %time, align 4, !dbg !1116, !tbaa !853
  %time91 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 3, !dbg !1116
  store i32 %30, i32* %time91, align 8, !dbg !1116, !tbaa !853
  %log92 = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1117
  %31 = load %struct.ngx_log_s** %log92, align 4, !dbg !1117, !tbaa !808
  %log93 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 4, !dbg !1117
  store %struct.ngx_log_s* %31, %struct.ngx_log_s** %log93, align 4, !dbg !1117, !tbaa !808
  %len = getelementptr inbounds %struct.ngx_str_t* %to, i32 0, i32 0, !dbg !1118
  %32 = load i32* %len, align 4, !dbg !1118, !tbaa !802
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 1), !dbg !1118
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !1118
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !1118
  br i1 %35, label %ioc_bb96, label %cont99, !dbg !1118

ioc_bb96:                                         ; preds = %cont85
  %36 = zext i32 %32 to i64, !dbg !1118
  call void @__ioc_report_add_overflow(i32 429, i32 33, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %36, i64 1, i8 5) nounwind, !dbg !1118
  br label %cont99, !dbg !1118

cont99:                                           ; preds = %ioc_bb96, %cont85
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 10), !dbg !1118
  %38 = extractvalue { i32, i1 } %37, 0, !dbg !1118
  %39 = extractvalue { i32, i1 } %37, 1, !dbg !1118
  br i1 %39, label %ioc_bb100, label %cont103, !dbg !1118

ioc_bb100:                                        ; preds = %cont99
  %40 = zext i32 %34 to i64, !dbg !1118
  call void @__ioc_report_add_overflow(i32 429, i32 37, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %40, i64 10, i8 5) nounwind, !dbg !1118
  br label %cont103, !dbg !1118

cont103:                                          ; preds = %ioc_bb100, %cont99
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %38, i32 1), !dbg !1118
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1118
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !1118
  br i1 %43, label %ioc_bb104, label %cont105, !dbg !1118

ioc_bb104:                                        ; preds = %cont103
  %44 = zext i32 %38 to i64, !dbg !1118
  call void @__ioc_report_add_overflow(i32 429, i32 42, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %44, i64 1, i8 5) nounwind, !dbg !1118
  br label %cont105, !dbg !1118

cont105:                                          ; preds = %cont103, %ioc_bb104
  %45 = load %struct.ngx_log_s** %log92, align 4, !dbg !1118, !tbaa !808
  %call107 = call i8* @ngx_alloc(i32 %42, %struct.ngx_log_s* %45) nounwind, !dbg !1118
  call void @llvm.dbg.value(metadata !{i8* %call107}, i64 0, metadata !640), !dbg !1118
  %cmp108 = icmp eq i8* %call107, null, !dbg !1119
  br i1 %cmp108, label %return, label %cont117, !dbg !1119

cont117:                                          ; preds = %cont105
  %46 = load i8** %data38, align 4, !dbg !1120, !tbaa !808
  %47 = load i32* %len, align 4, !dbg !1120, !tbaa !802
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1121) nounwind, !dbg !1122
  call void @llvm.dbg.value(metadata !824, i64 0, metadata !1123) nounwind, !dbg !1124
  %48 = load i32** @ngx_temp_number, align 4, !dbg !1125, !tbaa !808
  %49 = atomicrmw add i32* %48, i32 1 seq_cst, !dbg !1125
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !1126) nounwind, !dbg !1125
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 1) nounwind, !dbg !1127
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !1127
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !1127
  br i1 %52, label %ioc_bb1.i, label %ngx_next_temp_number.exit, !dbg !1127

ioc_bb1.i:                                        ; preds = %cont117
  %53 = zext i32 %49 to i64, !dbg !1127
  call void @__ioc_report_add_overflow(i32 160, i32 12, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !1127
  br label %ngx_next_temp_number.exit, !dbg !1127

ngx_next_temp_number.exit:                        ; preds = %cont117, %ioc_bb1.i
  %call119 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %call107, i8* getelementptr inbounds ([13 x i8]* @.str19, i32 0, i32 0), i32 %47, i8* %46, i32 %51) nounwind, !dbg !1120
  %54 = load i8** %data37.pre, align 4, !dbg !1128, !tbaa !808
  %call121 = call i32 @ngx_copy_file(i8* %54, i8* %call107, %struct.ngx_copy_file_t* %cf), !dbg !1128
  %cmp122 = icmp eq i32 %call121, 0, !dbg !1128
  br i1 %cmp122, label %if.then124, label %if.end188, !dbg !1128

if.then124:                                       ; preds = %ngx_next_temp_number.exit
  %55 = load i8** %data38, align 4, !dbg !1129, !tbaa !808
  %call126 = call i32 @rename(i8* %call107, i8* %55) nounwind, !dbg !1129
  %cmp129 = icmp eq i32 %call126, -1, !dbg !1129
  br i1 %cmp129, label %cont159, label %if.then131, !dbg !1129

if.then131:                                       ; preds = %if.then124
  call void @free(i8* %call107) nounwind, !dbg !1131
  %56 = load i8** %data37.pre, align 4, !dbg !1133, !tbaa !808
  %call133 = call i32 @unlink(i8* %56) nounwind, !dbg !1133
  %cmp136 = icmp eq i32 %call133, -1, !dbg !1133
  br i1 %cmp136, label %cont142, label %return, !dbg !1133

cont142:                                          ; preds = %if.then131
  %57 = load %struct.ngx_log_s** %log92, align 4, !dbg !1134, !tbaa !808
  %log_level140 = getelementptr inbounds %struct.ngx_log_s* %57, i32 0, i32 0, !dbg !1134
  %58 = load i32* %log_level140, align 4, !dbg !1134, !tbaa !802
  %cmp143 = icmp ugt i32 %58, 2, !dbg !1134
  br i1 %cmp143, label %cont147, label %return, !dbg !1134

cont147:                                          ; preds = %cont142
  %59 = load i32* %call45, align 4, !dbg !1136, !tbaa !802
  %60 = load i8** %data37.pre, align 4, !dbg !1136, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %57, i32 %59, i8* getelementptr inbounds ([21 x i8]* @.str20, i32 0, i32 0), i8* %60) nounwind, !dbg !1136
  br label %return, !dbg !1136

cont159:                                          ; preds = %if.then124
  %61 = load %struct.ngx_log_s** %log92, align 4, !dbg !1137, !tbaa !808
  %log_level157 = getelementptr inbounds %struct.ngx_log_s* %61, i32 0, i32 0, !dbg !1137
  %62 = load i32* %log_level157, align 4, !dbg !1137, !tbaa !802
  %cmp160 = icmp ugt i32 %62, 2, !dbg !1137
  br i1 %cmp160, label %cont164, label %if.end168, !dbg !1137

cont164:                                          ; preds = %cont159
  %63 = load i32* %call45, align 4, !dbg !1138, !tbaa !802
  %64 = load i8** %data38, align 4, !dbg !1138, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %61, i32 %63, i8* getelementptr inbounds ([29 x i8]* @.str21, i32 0, i32 0), i8* %call107, i8* %64) nounwind, !dbg !1138
  br label %if.end168, !dbg !1138

if.end168:                                        ; preds = %cont164, %cont159
  %call169 = call i32 @unlink(i8* %call107) nounwind, !dbg !1139
  %cmp172 = icmp eq i32 %call169, -1, !dbg !1139
  br i1 %cmp172, label %cont178, label %if.end188, !dbg !1139

cont178:                                          ; preds = %if.end168
  %65 = load %struct.ngx_log_s** %log92, align 4, !dbg !1140, !tbaa !808
  %log_level176 = getelementptr inbounds %struct.ngx_log_s* %65, i32 0, i32 0, !dbg !1140
  %66 = load i32* %log_level176, align 4, !dbg !1140, !tbaa !802
  %cmp179 = icmp ugt i32 %66, 2, !dbg !1140
  br i1 %cmp179, label %cont183, label %if.end188, !dbg !1140

cont183:                                          ; preds = %cont178
  %67 = load i32* %call45, align 4, !dbg !1142, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %65, i32 %67, i8* getelementptr inbounds ([21 x i8]* @.str20, i32 0, i32 0), i8* %call107) nounwind, !dbg !1142
  br label %if.end188, !dbg !1142

if.end188:                                        ; preds = %if.end168, %cont183, %cont178, %ngx_next_temp_number.exit
  call void @free(i8* %call107) nounwind, !dbg !1143
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !642), !dbg !1144
  br label %failed, !dbg !1145

failed:                                           ; preds = %if.end81, %if.then59, %if.then22, %if.then2, %cont67, %cont30, %cont8, %if.then47, %if.end188
  %err.1 = phi i32 [ 0, %if.end188 ], [ 2, %if.then47 ], [ 0, %cont8 ], [ 0, %cont30 ], [ 0, %cont67 ], [ 0, %if.then2 ], [ 0, %if.then22 ], [ 0, %if.then59 ], [ %err.0, %if.end81 ]
  %68 = getelementptr %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 4, !dbg !1146
  %69 = bitcast i8* %68 to i32*, !dbg !1146
  %70 = load i32* %69, align 4, !dbg !1146
  %bf.clear191 = and i32 %70, 2, !dbg !1146
  %tobool192 = icmp eq i32 %bf.clear191, 0, !dbg !1146
  br i1 %tobool192, label %if.end215, label %if.then193, !dbg !1146

if.then193:                                       ; preds = %failed
  %data194 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1147
  %71 = load i8** %data194, align 4, !dbg !1147, !tbaa !808
  %call195 = call i32 @unlink(i8* %71) nounwind, !dbg !1147
  %cmp198 = icmp eq i32 %call195, -1, !dbg !1147
  br i1 %cmp198, label %if.then200, label %if.end215, !dbg !1147

if.then200:                                       ; preds = %if.then193
  %log201 = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1149
  %72 = load %struct.ngx_log_s** %log201, align 4, !dbg !1149, !tbaa !808
  %log_level202 = getelementptr inbounds %struct.ngx_log_s* %72, i32 0, i32 0, !dbg !1149
  %73 = load i32* %log_level202, align 4, !dbg !1149, !tbaa !802
  %cmp205 = icmp ugt i32 %73, 2, !dbg !1149
  br i1 %cmp205, label %cont209, label %if.end215, !dbg !1149

cont209:                                          ; preds = %if.then200
  %call211 = call i32* @__errno_location() nounwind readnone, !dbg !1151
  %74 = load i32* %call211, align 4, !dbg !1151, !tbaa !802
  %75 = load i8** %data194, align 4, !dbg !1151, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %72, i32 %74, i8* getelementptr inbounds ([21 x i8]* @.str20, i32 0, i32 0), i8* %75) nounwind, !dbg !1151
  br label %if.end215, !dbg !1151

if.end215:                                        ; preds = %failed, %if.then193, %cont209, %if.then200
  %tobool216 = icmp eq i32 %err.1, 0, !dbg !1152
  br i1 %tobool216, label %return, label %if.then217, !dbg !1152

if.then217:                                       ; preds = %if.end215
  %log218 = getelementptr inbounds %struct.ngx_ext_rename_file_t* %ext, i32 0, i32 5, !dbg !1153
  %76 = load %struct.ngx_log_s** %log218, align 4, !dbg !1153, !tbaa !808
  %log_level219 = getelementptr inbounds %struct.ngx_log_s* %76, i32 0, i32 0, !dbg !1153
  %77 = load i32* %log_level219, align 4, !dbg !1153, !tbaa !802
  %cmp222 = icmp ugt i32 %77, 2, !dbg !1153
  br i1 %cmp222, label %cont226, label %return, !dbg !1153

cont226:                                          ; preds = %if.then217
  %data228 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1155
  %78 = load i8** %data228, align 4, !dbg !1155, !tbaa !808
  %data229 = getelementptr inbounds %struct.ngx_str_t* %to, i32 0, i32 1, !dbg !1155
  %79 = load i8** %data229, align 4, !dbg !1155, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %76, i32 %err.1, i8* getelementptr inbounds ([29 x i8]* @.str21, i32 0, i32 0), i8* %78, i8* %79) nounwind, !dbg !1155
  br label %return, !dbg !1155

return:                                           ; preds = %if.end215, %if.then217, %cont226, %if.then131, %cont147, %cont142, %cont105, %if.end71, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ 0, %if.end71 ], [ -1, %cont105 ], [ -1, %cont142 ], [ -1, %cont147 ], [ 0, %if.then131 ], [ -1, %cont226 ], [ -1, %if.then217 ], [ -1, %if.end215 ]
  ret i32 %retval.0, !dbg !1156
}

declare i32 @ngx_set_file_time(i8*, i32, i32)

declare i32 @rename(i8* nocapture, i8* nocapture) nounwind

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

define i32 @ngx_copy_file(i8* %from, i8* %to, %struct.ngx_copy_file_t* nocapture %cf) nounwind {
entry:
  %fi = alloca %struct.stat, align 4
  call void @llvm.dbg.value(metadata !{i8* %from}, i64 0, metadata !658), !dbg !1157
  call void @llvm.dbg.value(metadata !{i8* %to}, i64 0, metadata !659), !dbg !1157
  call void @llvm.dbg.value(metadata !{%struct.ngx_copy_file_t* %cf}, i64 0, metadata !660), !dbg !1157
  call void @llvm.dbg.declare(metadata !{%struct.stat* %fi}, metadata !669), !dbg !1158
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !668), !dbg !1160
  call void @llvm.dbg.value(metadata !1161, i64 0, metadata !661), !dbg !1162
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !667), !dbg !1163
  %call = call i32 (i8*, i32, ...)* @open64(i8* %from, i32 0, i32 0) nounwind, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !666), !dbg !1164
  %cmp = icmp eq i32 %call, -1, !dbg !1165
  br i1 %cmp, label %if.then, label %if.end13, !dbg !1165

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 4, !dbg !1166
  %0 = load %struct.ngx_log_s** %log, align 4, !dbg !1166, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %0, i32 0, i32 0, !dbg !1166
  %1 = load i32* %log_level, align 4, !dbg !1166, !tbaa !802
  %cmp7 = icmp ugt i32 %1, 2, !dbg !1166
  br i1 %cmp7, label %cont10, label %if.end244, !dbg !1166

cont10:                                           ; preds = %if.then
  %call12 = call i32* @__errno_location() nounwind readnone, !dbg !1168
  %2 = load i32* %call12, align 4, !dbg !1168, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %0, i32 %2, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i8* %from) nounwind, !dbg !1168
  br label %cont218, !dbg !1168

if.end13:                                         ; preds = %entry
  %size14 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 0, !dbg !1169
  %3 = load i64* %size14, align 4, !dbg !1169, !tbaa !814
  %cmp17 = icmp eq i64 %3, -1, !dbg !1169
  br i1 %cmp17, label %if.else, label %if.end40, !dbg !1169

if.else:                                          ; preds = %if.end13
  %4 = bitcast %struct.stat* %fi to %struct.stat64*, !dbg !1170
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1172) nounwind, !dbg !1173
  call void @llvm.dbg.value(metadata !{%struct.stat64* %4}, i64 0, metadata !1174) nounwind, !dbg !1173
  %call.i = call i32 @__fxstat64(i32 3, i32 %call, %struct.stat64* %4) nounwind, !dbg !1175
  %cmp24 = icmp eq i32 %call.i, -1, !dbg !1170
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !1170

if.then26:                                        ; preds = %if.else
  %log27 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 4, !dbg !1177
  %5 = load %struct.ngx_log_s** %log27, align 4, !dbg !1177, !tbaa !808
  %log_level28 = getelementptr inbounds %struct.ngx_log_s* %5, i32 0, i32 0, !dbg !1177
  %6 = load i32* %log_level28, align 4, !dbg !1177, !tbaa !802
  %cmp31 = icmp ugt i32 %6, 1, !dbg !1177
  br i1 %cmp31, label %cont35, label %cont218, !dbg !1177

cont35:                                           ; preds = %if.then26
  %call37 = call i32* @__errno_location() nounwind readnone, !dbg !1179
  %7 = load i32* %call37, align 4, !dbg !1179, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %5, i32 %7, i8* getelementptr inbounds ([20 x i8]* @.str22, i32 0, i32 0), i8* %from) nounwind, !dbg !1179
  br label %cont218, !dbg !1179

if.end39:                                         ; preds = %if.else
  %st_size = getelementptr inbounds %struct.stat* %fi, i32 0, i32 9, !dbg !1180
  %8 = load i64* %st_size, align 4, !dbg !1180, !tbaa !814
  call void @llvm.dbg.value(metadata !{i64 %8}, i64 0, metadata !663), !dbg !1180
  br label %if.end40

if.end40:                                         ; preds = %if.end13, %if.end39
  %size.0 = phi i64 [ %8, %if.end39 ], [ %3, %if.end13 ]
  %buf_size = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 1, !dbg !1181
  %9 = load i32* %buf_size, align 4, !dbg !1181, !tbaa !802
  %tobool = icmp eq i32 %9, 0, !dbg !1181
  %. = select i1 %tobool, i32 65536, i32 %9, !dbg !1181
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !664), !dbg !1181
  %conv44 = zext i32 %. to i64, !dbg !1182
  %cmp45 = icmp sgt i64 %conv44, %size.0, !dbg !1182
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !1182

if.then47:                                        ; preds = %if.end40
  %10 = icmp ult i64 %size.0, 4294967296, !dbg !1183
  br i1 %10, label %cont49, label %ioc_bb48, !dbg !1183

ioc_bb48:                                         ; preds = %if.then47
  call void @__ioc_report_conversion(i32 500, i32 21, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %size.0, i8 1) nounwind, !dbg !1183
  br label %cont49, !dbg !1183

cont49:                                           ; preds = %ioc_bb48, %if.then47
  %conv50 = trunc i64 %size.0 to i32, !dbg !1183
  call void @llvm.dbg.value(metadata !{i32 %conv50}, i64 0, metadata !664), !dbg !1183
  br label %if.end51, !dbg !1185

if.end51:                                         ; preds = %cont49, %if.end40
  %len.0 = phi i32 [ %conv50, %cont49 ], [ %., %if.end40 ]
  %log52 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 4, !dbg !1186
  %11 = load %struct.ngx_log_s** %log52, align 4, !dbg !1186, !tbaa !808
  %call53 = call i8* @ngx_alloc(i32 %len.0, %struct.ngx_log_s* %11) nounwind, !dbg !1186
  call void @llvm.dbg.value(metadata !{i8* %call53}, i64 0, metadata !661), !dbg !1186
  %cmp54 = icmp eq i8* %call53, null, !dbg !1187
  br i1 %cmp54, label %cont218, label %if.end57, !dbg !1187

if.end57:                                         ; preds = %if.end51
  %access = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 2, !dbg !1188
  %12 = load i32* %access, align 4, !dbg !1188, !tbaa !802
  %call58 = call i32 (i8*, i32, ...)* @open64(i8* %to, i32 65, i32 %12) nounwind, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !667), !dbg !1188
  %cmp61 = icmp eq i32 %call58, -1, !dbg !1189
  br i1 %cmp61, label %cont67, label %while.cond.preheader, !dbg !1189

while.cond.preheader:                             ; preds = %if.end57
  %cmp77329 = icmp sgt i64 %size.0, 0, !dbg !1190
  br i1 %cmp77329, label %while.body, label %while.end, !dbg !1190

cont67:                                           ; preds = %if.end57
  %13 = load %struct.ngx_log_s** %log52, align 4, !dbg !1191, !tbaa !808
  %log_level65 = getelementptr inbounds %struct.ngx_log_s* %13, i32 0, i32 0, !dbg !1191
  %14 = load i32* %log_level65, align 4, !dbg !1191, !tbaa !802
  %cmp68 = icmp ugt i32 %14, 2, !dbg !1191
  br i1 %cmp68, label %cont72, label %cont218, !dbg !1191

cont72:                                           ; preds = %cont67
  %call74 = call i32* @__errno_location() nounwind readnone, !dbg !1193
  %15 = load i32* %call74, align 4, !dbg !1193, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %13, i32 %15, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i8* %to) nounwind, !dbg !1193
  br label %cont193, !dbg !1193

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %len.1331 = phi i32 [ %len.2, %while.cond.backedge ], [ %len.0, %while.cond.preheader ]
  %size.1330 = phi i64 [ %34, %while.cond.backedge ], [ %size.0, %while.cond.preheader ]
  %conv79 = zext i32 %len.1331 to i64, !dbg !1194
  %cmp80 = icmp sgt i64 %conv79, %size.1330, !dbg !1194
  br i1 %cmp80, label %if.then82, label %if.end88, !dbg !1194

if.then82:                                        ; preds = %while.body
  %16 = icmp ult i64 %size.1330, 4294967296, !dbg !1196
  br i1 %16, label %cont86, label %ioc_bb85, !dbg !1196

ioc_bb85:                                         ; preds = %if.then82
  call void @__ioc_report_conversion(i32 514, i32 23, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %size.1330, i8 1) nounwind, !dbg !1196
  br label %cont86, !dbg !1196

cont86:                                           ; preds = %ioc_bb85, %if.then82
  %conv87 = trunc i64 %size.1330 to i32, !dbg !1196
  call void @llvm.dbg.value(metadata !{i32 %conv87}, i64 0, metadata !664), !dbg !1196
  br label %if.end88, !dbg !1198

if.end88:                                         ; preds = %cont86, %while.body
  %len.2 = phi i32 [ %conv87, %cont86 ], [ %len.1331, %while.body ]
  %call89 = call i32 @read(i32 %call, i8* %call53, i32 %len.2) nounwind, !dbg !1199
  call void @llvm.dbg.value(metadata !{i32 %call89}, i64 0, metadata !665), !dbg !1199
  %cmp92 = icmp eq i32 %call89, -1, !dbg !1200
  br i1 %cmp92, label %cont98, label %if.end107, !dbg !1200

cont98:                                           ; preds = %if.end88
  %17 = load %struct.ngx_log_s** %log52, align 4, !dbg !1201, !tbaa !808
  %log_level96 = getelementptr inbounds %struct.ngx_log_s* %17, i32 0, i32 0, !dbg !1201
  %18 = load i32* %log_level96, align 4, !dbg !1201, !tbaa !802
  %cmp99 = icmp ugt i32 %18, 1, !dbg !1201
  br i1 %cmp99, label %cont103, label %cont193, !dbg !1201

cont103:                                          ; preds = %cont98
  %call105 = call i32* @__errno_location() nounwind readnone, !dbg !1203
  %19 = load i32* %call105, align 4, !dbg !1203, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %17, i32 %19, i8* getelementptr inbounds ([19 x i8]* @.str23, i32 0, i32 0), i8* %from) nounwind, !dbg !1203
  br label %cont193, !dbg !1203

if.end107:                                        ; preds = %if.end88
  %20 = icmp sgt i32 %call89, -1, !dbg !1204
  br i1 %20, label %cont110, label %ioc_bb109, !dbg !1204

ioc_bb109:                                        ; preds = %if.end107
  %21 = sext i32 %call89 to i64, !dbg !1204
  call void @__ioc_report_conversion(i32 522, i32 19, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %21, i8 1) nounwind, !dbg !1204
  br label %cont110, !dbg !1204

cont110:                                          ; preds = %ioc_bb109, %if.end107
  %cmp111 = icmp eq i32 %call89, %len.2, !dbg !1204
  br i1 %cmp111, label %if.end126, label %cont117, !dbg !1204

cont117:                                          ; preds = %cont110
  %22 = load %struct.ngx_log_s** %log52, align 4, !dbg !1205, !tbaa !808
  %log_level115 = getelementptr inbounds %struct.ngx_log_s* %22, i32 0, i32 0, !dbg !1205
  %23 = load i32* %log_level115, align 4, !dbg !1205, !tbaa !802
  %cmp118 = icmp ugt i32 %23, 1, !dbg !1205
  br i1 %cmp118, label %cont122, label %cont193, !dbg !1205

cont122:                                          ; preds = %cont117
  %call124 = call i32* @__errno_location() nounwind readnone, !dbg !1207
  %24 = load i32* %call124, align 4, !dbg !1207, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %22, i32 %24, i8* getelementptr inbounds ([39 x i8]* @.str24, i32 0, i32 0), i32 %call89, i64 %size.1330, i8* %from) nounwind, !dbg !1207
  br label %cont193, !dbg !1207

if.end126:                                        ; preds = %cont110
  call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !1208) nounwind, !dbg !1210
  call void @llvm.dbg.value(metadata !{i8* %call53}, i64 0, metadata !1211) nounwind, !dbg !1210
  call void @llvm.dbg.value(metadata !{i32 %len.2}, i64 0, metadata !1212) nounwind, !dbg !1210
  %call.i313 = call i32 @write(i32 %call58, i8* %call53, i32 %len.2) nounwind, !dbg !1213
  call void @llvm.dbg.value(metadata !{i32 %call.i313}, i64 0, metadata !665), !dbg !1209
  %cmp130 = icmp eq i32 %call.i313, -1, !dbg !1215
  br i1 %cmp130, label %cont136, label %if.end145, !dbg !1215

cont136:                                          ; preds = %if.end126
  %25 = load %struct.ngx_log_s** %log52, align 4, !dbg !1216, !tbaa !808
  %log_level134 = getelementptr inbounds %struct.ngx_log_s* %25, i32 0, i32 0, !dbg !1216
  %26 = load i32* %log_level134, align 4, !dbg !1216, !tbaa !802
  %cmp137 = icmp ugt i32 %26, 1, !dbg !1216
  br i1 %cmp137, label %cont141, label %cont193, !dbg !1216

cont141:                                          ; preds = %cont136
  %call143 = call i32* @__errno_location() nounwind readnone, !dbg !1218
  %27 = load i32* %call143, align 4, !dbg !1218, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %25, i32 %27, i8* getelementptr inbounds ([20 x i8]* @.str25, i32 0, i32 0), i8* %to) nounwind, !dbg !1218
  br label %cont193, !dbg !1218

if.end145:                                        ; preds = %if.end126
  %28 = sext i32 %call.i313 to i64, !dbg !1219
  %29 = icmp sgt i32 %call.i313, -1, !dbg !1219
  br i1 %29, label %cont148, label %ioc_bb147, !dbg !1219

ioc_bb147:                                        ; preds = %if.end145
  call void @__ioc_report_conversion(i32 533, i32 19, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %28, i8 1) nounwind, !dbg !1219
  br label %cont148, !dbg !1219

cont148:                                          ; preds = %ioc_bb147, %if.end145
  %cmp149 = icmp eq i32 %call.i313, %len.2, !dbg !1219
  br i1 %cmp149, label %if.end164, label %cont155, !dbg !1219

cont155:                                          ; preds = %cont148
  %30 = load %struct.ngx_log_s** %log52, align 4, !dbg !1220, !tbaa !808
  %log_level153 = getelementptr inbounds %struct.ngx_log_s* %30, i32 0, i32 0, !dbg !1220
  %31 = load i32* %log_level153, align 4, !dbg !1220, !tbaa !802
  %cmp156 = icmp ugt i32 %31, 1, !dbg !1220
  br i1 %cmp156, label %cont160, label %cont193, !dbg !1220

cont160:                                          ; preds = %cont155
  %call162 = call i32* @__errno_location() nounwind readnone, !dbg !1222
  %32 = load i32* %call162, align 4, !dbg !1222, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %30, i32 %32, i8* getelementptr inbounds ([41 x i8]* @.str26, i32 0, i32 0), i32 %call.i313, i64 %size.1330, i8* %to) nounwind, !dbg !1222
  br label %cont193, !dbg !1222

if.end164:                                        ; preds = %cont148
  %33 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %size.1330, i64 %28), !dbg !1223
  %34 = extractvalue { i64, i1 } %33, 0, !dbg !1223
  %35 = extractvalue { i64, i1 } %33, 1, !dbg !1223
  br i1 %35, label %ioc_bb166, label %while.cond.backedge, !dbg !1223

while.cond.backedge:                              ; preds = %if.end164, %ioc_bb166
  %cmp77 = icmp sgt i64 %34, 0, !dbg !1190
  br i1 %cmp77, label %while.body, label %while.end, !dbg !1190

ioc_bb166:                                        ; preds = %if.end164
  call void @__ioc_report_sub_overflow(i32 538, i32 10, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @16, i32 0, i32 0), i64 %size.1330, i64 %28, i8 14) nounwind, !dbg !1223
  br label %while.cond.backedge, !dbg !1223

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %time = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 3, !dbg !1224
  %36 = load i32* %time, align 4, !dbg !1224, !tbaa !853
  %cmp170 = icmp eq i32 %36, -1, !dbg !1224
  br i1 %cmp170, label %cont193, label %if.then172, !dbg !1224

if.then172:                                       ; preds = %while.end
  %call174 = call i32 @ngx_set_file_time(i8* %to, i32 %call58, i32 %36) nounwind, !dbg !1225
  %cmp175 = icmp eq i32 %call174, 0, !dbg !1225
  br i1 %cmp175, label %cont193, label %cont181, !dbg !1225

cont181:                                          ; preds = %if.then172
  %37 = load %struct.ngx_log_s** %log52, align 4, !dbg !1227, !tbaa !808
  %log_level179 = getelementptr inbounds %struct.ngx_log_s* %37, i32 0, i32 0, !dbg !1227
  %38 = load i32* %log_level179, align 4, !dbg !1227, !tbaa !802
  %cmp182 = icmp ugt i32 %38, 1, !dbg !1227
  br i1 %cmp182, label %cont186, label %cont193, !dbg !1227

cont186:                                          ; preds = %cont181
  %call188 = call i32* @__errno_location() nounwind readnone, !dbg !1229
  %39 = load i32* %call188, align 4, !dbg !1229, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %37, i32 %39, i8* getelementptr inbounds ([21 x i8]* @.str18, i32 0, i32 0), i8* %to) nounwind, !dbg !1229
  br label %cont193, !dbg !1229

cont193:                                          ; preds = %cont72, %cont103, %cont98, %cont122, %cont117, %cont141, %cont136, %cont160, %cont155, %cont186, %cont181, %if.then172, %while.end
  %rc.0 = phi i32 [ -1, %cont72 ], [ -1, %cont103 ], [ -1, %cont98 ], [ -1, %cont122 ], [ -1, %cont117 ], [ -1, %cont141 ], [ -1, %cont136 ], [ -1, %cont160 ], [ -1, %cont155 ], [ -1, %cont186 ], [ -1, %cont181 ], [ 0, %if.then172 ], [ 0, %while.end ]
  br i1 %cmp61, label %cont218, label %if.then196, !dbg !1230

if.then196:                                       ; preds = %cont193
  %call197 = call i32 @close(i32 %call58) nounwind, !dbg !1231
  %cmp200 = icmp eq i32 %call197, -1, !dbg !1231
  br i1 %cmp200, label %if.then202, label %cont218, !dbg !1231

if.then202:                                       ; preds = %if.then196
  %40 = load %struct.ngx_log_s** %log52, align 4, !dbg !1233, !tbaa !808
  %log_level204 = getelementptr inbounds %struct.ngx_log_s* %40, i32 0, i32 0, !dbg !1233
  %41 = load i32* %log_level204, align 4, !dbg !1233, !tbaa !802
  %cmp207 = icmp ugt i32 %41, 1, !dbg !1233
  br i1 %cmp207, label %cont211, label %cont218, !dbg !1233

cont211:                                          ; preds = %if.then202
  %call213 = call i32* @__errno_location() nounwind readnone, !dbg !1235
  %42 = load i32* %call213, align 4, !dbg !1235, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %40, i32 %42, i8* getelementptr inbounds ([20 x i8]* @.str27, i32 0, i32 0), i8* %to) nounwind, !dbg !1235
  br label %cont218, !dbg !1235

cont218:                                          ; preds = %if.then26, %cont35, %cont67, %if.end51, %cont10, %if.then202, %cont211, %if.then196, %cont193
  %rc.0316 = phi i32 [ %rc.0, %if.then202 ], [ %rc.0, %cont211 ], [ %rc.0, %if.then196 ], [ %rc.0, %cont193 ], [ -1, %cont10 ], [ -1, %if.end51 ], [ -1, %cont67 ], [ -1, %cont35 ], [ -1, %if.then26 ]
  %buf.0315 = phi i8* [ %call53, %if.then202 ], [ %call53, %cont211 ], [ %call53, %if.then196 ], [ %call53, %cont193 ], [ null, %cont10 ], [ null, %if.end51 ], [ %call53, %cont67 ], [ null, %cont35 ], [ null, %if.then26 ]
  br i1 %cmp, label %if.end241, label %if.then221, !dbg !1236

if.then221:                                       ; preds = %cont218
  %call222 = call i32 @close(i32 %call) nounwind, !dbg !1237
  %cmp225 = icmp eq i32 %call222, -1, !dbg !1237
  br i1 %cmp225, label %if.then227, label %if.end241, !dbg !1237

if.then227:                                       ; preds = %if.then221
  %log228 = getelementptr inbounds %struct.ngx_copy_file_t* %cf, i32 0, i32 4, !dbg !1239
  %43 = load %struct.ngx_log_s** %log228, align 4, !dbg !1239, !tbaa !808
  %log_level229 = getelementptr inbounds %struct.ngx_log_s* %43, i32 0, i32 0, !dbg !1239
  %44 = load i32* %log_level229, align 4, !dbg !1239, !tbaa !802
  %cmp232 = icmp ugt i32 %44, 1, !dbg !1239
  br i1 %cmp232, label %cont236, label %if.end241, !dbg !1239

cont236:                                          ; preds = %if.then227
  %call238 = call i32* @__errno_location() nounwind readnone, !dbg !1241
  %45 = load i32* %call238, align 4, !dbg !1241, !tbaa !802
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %43, i32 %45, i8* getelementptr inbounds ([20 x i8]* @.str27, i32 0, i32 0), i8* %from) nounwind, !dbg !1241
  br label %if.end241, !dbg !1241

if.end241:                                        ; preds = %cont218, %if.then221, %cont236, %if.then227
  %tobool242 = icmp eq i8* %buf.0315, null, !dbg !1242
  br i1 %tobool242, label %if.end244, label %if.then243, !dbg !1242

if.then243:                                       ; preds = %if.end241
  call void @free(i8* %buf.0315) nounwind, !dbg !1243
  br label %if.end244, !dbg !1245

if.end244:                                        ; preds = %if.then, %if.end241, %if.then243
  %rc.0316317320 = phi i32 [ %rc.0316, %if.end241 ], [ %rc.0316, %if.then243 ], [ -1, %if.then ]
  ret i32 %rc.0316317320, !dbg !1246
}

declare void @free(i8* nocapture) nounwind

declare i32 @unlink(i8* nocapture) nounwind

declare i32 @open64(i8*, i32, ...)

declare i32 @read(i32, i8* nocapture, i32)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare i32 @close(i32)

define i32 @ngx_walk_tree(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %tree) nounwind {
entry:
  %file = alloca %struct.ngx_str_t, align 4
  %dir = alloca %struct.ngx_dir_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_tree_ctx_s* %ctx}, i64 0, metadata !701), !dbg !1247
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %tree}, i64 0, metadata !702), !dbg !1247
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %file}, metadata !711), !dbg !1248
  call void @llvm.dbg.declare(metadata !1249, metadata !712), !dbg !1250
  call void @llvm.dbg.declare(metadata !{%struct.ngx_dir_t* %dir}, metadata !713), !dbg !1251
  %call = call i32 @ngx_open_dir(%struct.ngx_str_t* %tree, %struct.ngx_dir_t* %dir) nounwind, !dbg !1252
  %cmp = icmp eq i32 %call, -1, !dbg !1252
  br i1 %cmp, label %if.then, label %if.end16, !dbg !1252

if.then:                                          ; preds = %entry
  %log = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 11, !dbg !1253
  %0 = load %struct.ngx_log_s** %log, align 4, !dbg !1253, !tbaa !808
  %log_level = getelementptr inbounds %struct.ngx_log_s* %0, i32 0, i32 0, !dbg !1253
  %1 = load i32* %log_level, align 4, !dbg !1253, !tbaa !802
  %cmp7 = icmp ugt i32 %1, 2, !dbg !1253
  br i1 %cmp7, label %cont10, label %return, !dbg !1253

cont10:                                           ; preds = %if.then
  %call12 = call i32* @__errno_location() nounwind readnone, !dbg !1255
  %2 = load i32* %call12, align 4, !dbg !1255, !tbaa !802
  %data13 = getelementptr inbounds %struct.ngx_str_t* %tree, i32 0, i32 1, !dbg !1255
  %3 = load i8** %data13, align 4, !dbg !1255, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %0, i32 %2, i8* getelementptr inbounds ([22 x i8]* @.str28, i32 0, i32 0), i8* %3) nounwind, !dbg !1255
  br label %return, !dbg !1255

if.end16:                                         ; preds = %entry
  %data17 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 9, !dbg !1256
  %4 = load i8** %data17, align 4, !dbg !1256, !tbaa !808
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !705), !dbg !1256
  %alloc = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 10, !dbg !1257
  %5 = load i32* %alloc, align 4, !dbg !1257, !tbaa !802
  %tobool = icmp eq i32 %5, 0, !dbg !1257
  br i1 %tobool, label %for.cond.preheader, label %if.then18, !dbg !1257

if.then18:                                        ; preds = %if.end16
  %log20 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 11, !dbg !1258
  %6 = load %struct.ngx_log_s** %log20, align 4, !dbg !1258, !tbaa !808
  %call21 = call i8* @ngx_alloc(i32 %5, %struct.ngx_log_s* %6) nounwind, !dbg !1258
  call void @llvm.dbg.value(metadata !{i8* %call21}, i64 0, metadata !703), !dbg !1258
  %cmp22 = icmp eq i8* %call21, null, !dbg !1260
  br i1 %cmp22, label %if.end308, label %if.end24, !dbg !1260

if.end24:                                         ; preds = %if.then18
  %init_handler = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 4, !dbg !1261
  %7 = load i32 (i8*, i8*)** %init_handler, align 4, !dbg !1261, !tbaa !808
  %call25 = call i32 %7(i8* %call21, i8* %4) nounwind, !dbg !1261
  %cmp28 = icmp eq i32 %call25, -6, !dbg !1261
  br i1 %cmp28, label %if.then306, label %if.end30, !dbg !1261

if.end30:                                         ; preds = %if.end24
  store i8* %call21, i8** %data17, align 4, !dbg !1262, !tbaa !808
  br label %for.cond.preheader, !dbg !1263

for.cond.preheader:                               ; preds = %if.end30, %if.end16
  %data.0.ph = phi i8* [ null, %if.end16 ], [ %call21, %if.end30 ]
  %call33 = call i32* @__errno_location() nounwind readnone, !dbg !1264
  store i32 0, i32* %call33, align 4, !dbg !1264, !tbaa !802
  %call34404415 = call i32 @ngx_read_dir(%struct.ngx_dir_t* %dir) nounwind, !dbg !1267
  %cmp37405416 = icmp eq i32 %call34404415, -1, !dbg !1267
  br i1 %cmp37405416, label %if.then38, label %if.end57.lr.ph.lr.ph, !dbg !1267

if.end57.lr.ph.lr.ph:                             ; preds = %for.cond.preheader
  %de = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 1, !dbg !1268
  %len85 = getelementptr inbounds %struct.ngx_str_t* %tree, i32 0, i32 0, !dbg !1269
  %len92 = getelementptr inbounds %struct.ngx_str_t* %file, i32 0, i32 0, !dbg !1269
  %log124 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 11, !dbg !1270
  %data134 = getelementptr inbounds %struct.ngx_str_t* %tree, i32 0, i32 1, !dbg !1272
  %data144 = getelementptr inbounds %struct.ngx_str_t* %file, i32 0, i32 1, !dbg !1273
  %8 = getelementptr %struct.ngx_dir_t* %dir, i32 0, i32 3, !dbg !1274
  %9 = bitcast i8* %8 to i32*, !dbg !1274
  %info.i = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 2, !dbg !1275
  %10 = bitcast %struct.stat* %info.i to %struct.stat64*, !dbg !1275
  %spec_handler = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 8, !dbg !1279
  %st_mode235 = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 2, i32 3, !dbg !1281
  %access249 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 2, !dbg !1282
  %tv_sec252 = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 2, i32 13, i32 0, !dbg !1284
  %mtime253 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 3, !dbg !1284
  %pre_tree_handler = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 6, !dbg !1285
  %post_tree_handler = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 7, !dbg !1286
  %st_size = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 2, i32 9, !dbg !1287
  %size = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 0, !dbg !1287
  %st_blocks = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 2, i32 11, !dbg !1289
  %fs_size = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 1, !dbg !1289
  %file_handler = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 5, !dbg !1290
  br label %if.end57.lr.ph, !dbg !1267

if.end57.lr.ph:                                   ; preds = %if.end57.lr.ph.lr.ph, %for.cond.outer.backedge
  %buf.sroa.0.0.ph418 = phi i32 [ 0, %if.end57.lr.ph.lr.ph ], [ %buf.sroa.0.1, %for.cond.outer.backedge ]
  %buf.sroa.1.0.ph417 = phi i8* [ null, %if.end57.lr.ph.lr.ph ], [ %buf.sroa.1.1, %for.cond.outer.backedge ]
  br label %if.end57, !dbg !1267

if.then38:                                        ; preds = %for.cond.preheader, %for.cond.outer.backedge, %for.cond.backedge
  %buf.sroa.0.0.ph411 = phi i32 [ %buf.sroa.0.0.ph418, %for.cond.backedge ], [ 0, %for.cond.preheader ], [ %buf.sroa.0.1, %for.cond.outer.backedge ]
  %buf.sroa.1.0.ph408 = phi i8* [ %buf.sroa.1.0.ph417, %for.cond.backedge ], [ null, %for.cond.preheader ], [ %buf.sroa.1.1, %for.cond.outer.backedge ]
  %11 = load i32* %call33, align 4, !dbg !1291, !tbaa !802
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !710), !dbg !1291
  %cmp40 = icmp eq i32 %11, 0, !dbg !1293
  br i1 %cmp40, label %done, label %if.else42, !dbg !1293

if.else42:                                        ; preds = %if.then38
  %log43 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 11, !dbg !1294
  %12 = load %struct.ngx_log_s** %log43, align 4, !dbg !1294, !tbaa !808
  %log_level44 = getelementptr inbounds %struct.ngx_log_s* %12, i32 0, i32 0, !dbg !1294
  %13 = load i32* %log_level44, align 4, !dbg !1294, !tbaa !802
  %cmp47 = icmp ugt i32 %13, 2, !dbg !1294
  br i1 %cmp47, label %cont50, label %done, !dbg !1294

cont50:                                           ; preds = %if.else42
  %data52 = getelementptr inbounds %struct.ngx_str_t* %tree, i32 0, i32 1, !dbg !1296
  %14 = load i8** %data52, align 4, !dbg !1296, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %12, i32 %11, i8* getelementptr inbounds ([22 x i8]* @.str29, i32 0, i32 0), i8* %14) nounwind, !dbg !1296
  br label %done, !dbg !1296

if.end57:                                         ; preds = %if.end57.lr.ph, %for.cond.backedge
  %15 = load %struct.dirent** %de, align 4, !dbg !1268, !tbaa !808
  %arraydecay = getelementptr inbounds %struct.dirent* %15, i32 0, i32 4, i32 0, !dbg !1268
  %call58 = call i32 @strlen(i8* %arraydecay) nounwind readonly, !dbg !1268
  call void @llvm.dbg.value(metadata !{i32 %call58.lcssa}, i64 0, metadata !708), !dbg !1268
  call void @llvm.dbg.value(metadata !{i8* %arraydecay}, i64 0, metadata !707), !dbg !1297
  switch i32 %call58, label %if.end84 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true73
  ], !dbg !1298

land.lhs.true:                                    ; preds = %if.end57
  %16 = load i8* %arraydecay, align 1, !dbg !1298, !tbaa !803
  %cmp65 = icmp eq i8 %16, 46, !dbg !1298
  br i1 %cmp65, label %for.cond.backedge, label %if.end84, !dbg !1298

for.cond.backedge:                                ; preds = %land.lhs.true, %land.lhs.true78
  store i32 0, i32* %call33, align 4, !dbg !1264, !tbaa !802
  %call34 = call i32 @ngx_read_dir(%struct.ngx_dir_t* %dir) nounwind, !dbg !1267
  %cmp37 = icmp eq i32 %call34, -1, !dbg !1267
  br i1 %cmp37, label %if.then38, label %if.end57, !dbg !1267

land.lhs.true73:                                  ; preds = %if.end57
  %17 = load i8* %arraydecay, align 1, !dbg !1299, !tbaa !803
  %cmp76 = icmp eq i8 %17, 46, !dbg !1299
  br i1 %cmp76, label %land.lhs.true78, label %if.end84, !dbg !1299

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %arrayidx79 = getelementptr inbounds %struct.dirent* %15, i32 0, i32 4, i32 1, !dbg !1299
  %18 = load i8* %arrayidx79, align 1, !dbg !1299, !tbaa !803
  %cmp81 = icmp eq i8 %18, 46, !dbg !1299
  br i1 %cmp81, label %for.cond.backedge, label %if.end84, !dbg !1299

if.end84:                                         ; preds = %land.lhs.true, %if.end57, %land.lhs.true78, %land.lhs.true73
  %call58.lcssa = phi i32 [ 1, %land.lhs.true ], [ %call58, %if.end57 ], [ 2, %land.lhs.true78 ], [ 2, %land.lhs.true73 ]
  %19 = load i32* %len85, align 4, !dbg !1269, !tbaa !802
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %19, i32 1), !dbg !1269
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1269
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1269
  br i1 %22, label %ioc_bb88, label %cont89, !dbg !1269

ioc_bb88:                                         ; preds = %if.end84
  %23 = zext i32 %19 to i64, !dbg !1269
  call void @__ioc_report_add_overflow(i32 641, i32 28, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %23, i64 1, i8 5) nounwind, !dbg !1269
  br label %cont89, !dbg !1269

cont89:                                           ; preds = %if.end84, %ioc_bb88
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %21, i32 %call58.lcssa), !dbg !1269
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !1269
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !1269
  %27 = zext i32 %call58.lcssa to i64, !dbg !1269
  br i1 %26, label %ioc_bb90, label %cont91, !dbg !1269

ioc_bb90:                                         ; preds = %cont89
  %28 = zext i32 %21 to i64, !dbg !1269
  call void @__ioc_report_add_overflow(i32 641, i32 32, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %28, i64 %27, i8 5) nounwind, !dbg !1269
  br label %cont91, !dbg !1269

cont91:                                           ; preds = %cont89, %ioc_bb90
  store i32 %25, i32* %len92, align 4, !dbg !1269, !tbaa !802
  %cmp99 = icmp ugt i32 %25, %buf.sroa.0.0.ph418, !dbg !1300
  br i1 %cmp99, label %if.then101, label %if.end132, !dbg !1300

if.then101:                                       ; preds = %cont91
  %tobool103 = icmp eq i32 %buf.sroa.0.0.ph418, 0, !dbg !1301
  br i1 %tobool103, label %if.end106, label %if.then104, !dbg !1301

if.then104:                                       ; preds = %if.then101
  call void @free(i8* %buf.sroa.1.0.ph417) nounwind, !dbg !1302
  br label %if.end106, !dbg !1304

if.end106:                                        ; preds = %if.then101, %if.then104
  %29 = load i32* %len85, align 4, !dbg !1305, !tbaa !802
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 1), !dbg !1305
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !1305
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !1305
  br i1 %32, label %ioc_bb110, label %cont111, !dbg !1305

ioc_bb110:                                        ; preds = %if.end106
  %33 = zext i32 %29 to i64, !dbg !1305
  call void @__ioc_report_add_overflow(i32 646, i32 29, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind, !dbg !1305
  br label %cont111, !dbg !1305

cont111:                                          ; preds = %if.end106, %ioc_bb110
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %31, i32 %call58.lcssa), !dbg !1305
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !1305
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !1305
  br i1 %36, label %ioc_bb112, label %cont121, !dbg !1305

ioc_bb112:                                        ; preds = %cont111
  %37 = zext i32 %31 to i64, !dbg !1305
  call void @__ioc_report_add_overflow(i32 646, i32 33, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %37, i64 %27, i8 5) nounwind, !dbg !1305
  br label %cont121, !dbg !1305

cont121:                                          ; preds = %ioc_bb112, %cont111
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 1), !dbg !1270
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !1270
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !1270
  br i1 %40, label %ioc_bb122, label %cont123, !dbg !1270

ioc_bb122:                                        ; preds = %cont121
  %41 = zext i32 %35 to i64, !dbg !1270
  call void @__ioc_report_add_overflow(i32 647, i32 37, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %41, i64 1, i8 5) nounwind, !dbg !1270
  br label %cont123, !dbg !1270

cont123:                                          ; preds = %cont121, %ioc_bb122
  %42 = load %struct.ngx_log_s** %log124, align 4, !dbg !1270, !tbaa !808
  %call125 = call i8* @ngx_alloc(i32 %39, %struct.ngx_log_s* %42) nounwind, !dbg !1270
  %cmp128 = icmp eq i8* %call125, null, !dbg !1306
  br i1 %cmp128, label %done, label %if.end132, !dbg !1306

if.end132:                                        ; preds = %cont123, %cont91
  %buf.sroa.1.1 = phi i8* [ %buf.sroa.1.0.ph417, %cont91 ], [ %call125, %cont123 ]
  %buf.sroa.0.1 = phi i32 [ %buf.sroa.0.0.ph418, %cont91 ], [ %35, %cont123 ]
  %43 = load i8** %data134, align 4, !dbg !1272, !tbaa !808
  %44 = load i32* %len85, align 4, !dbg !1272, !tbaa !802
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf.sroa.1.1, i8* %43, i32 %44, i32 1, i1 false), !dbg !1272
  %45 = load i32* %len85, align 4, !dbg !1272, !tbaa !802
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !706), !dbg !1272
  %add.ptr = getelementptr inbounds i8* %buf.sroa.1.1, i32 %45, !dbg !1272
  %add.ptr.sum = add i32 %45, 1, !dbg !1307
  %incdec.ptr = getelementptr inbounds i8* %buf.sroa.1.1, i32 %add.ptr.sum, !dbg !1307
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !706), !dbg !1307
  store i8 47, i8* %add.ptr, align 1, !dbg !1307, !tbaa !803
  %46 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call58.lcssa, i32 1), !dbg !1308
  %47 = extractvalue { i32, i1 } %46, 0, !dbg !1308
  %48 = extractvalue { i32, i1 } %46, 1, !dbg !1308
  br i1 %48, label %ioc_bb141, label %cont142, !dbg !1308

ioc_bb141:                                        ; preds = %if.end132
  call void @__ioc_report_add_overflow(i32 654, i32 31, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !1308
  br label %cont142, !dbg !1308

cont142:                                          ; preds = %if.end132, %ioc_bb141
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %incdec.ptr, i8* %arraydecay, i32 %47, i32 1, i1 false), !dbg !1308
  store i8* %buf.sroa.1.1, i8** %data144, align 4, !dbg !1273, !tbaa !808
  %49 = load i32* %9, align 4, !dbg !1274
  %bf.clear = and i32 %49, 256, !dbg !1274
  %tobool145 = icmp eq i32 %bf.clear, 0, !dbg !1274
  br i1 %tobool145, label %if.then146, label %cont172, !dbg !1274

if.then146:                                       ; preds = %cont142
  call void @llvm.dbg.value(metadata !{i8* %buf.sroa.1.1}, i64 0, metadata !1309) nounwind, !dbg !1310
  call void @llvm.dbg.value(metadata !{%struct.ngx_dir_t* %dir}, i64 0, metadata !1311) nounwind, !dbg !1310
  %50 = and i32 %49, -256, !dbg !1312
  store i32 %50, i32* %9, align 4, !dbg !1312
  call void @llvm.dbg.value(metadata !{i8* %buf.sroa.1.1}, i64 0, metadata !1313) nounwind, !dbg !1314
  call void @llvm.dbg.value(metadata !{%struct.stat64* %10}, i64 0, metadata !1315) nounwind, !dbg !1314
  %call.i.i = call i32 @__xstat64(i32 3, i8* %buf.sroa.1.1, %struct.stat64* %10) nounwind, !dbg !1316
  %cmp151 = icmp eq i32 %call.i.i, -1, !dbg !1277
  br i1 %cmp151, label %if.then153, label %if.then146.cont172_crit_edge, !dbg !1277

if.then146.cont172_crit_edge:                     ; preds = %if.then146
  %.pre = load i32* %9, align 4, !dbg !1317
  br label %cont172, !dbg !1277

if.then153:                                       ; preds = %if.then146
  %51 = load %struct.ngx_log_s** %log124, align 4, !dbg !1318, !tbaa !808
  %log_level155 = getelementptr inbounds %struct.ngx_log_s* %51, i32 0, i32 0, !dbg !1318
  %52 = load i32* %log_level155, align 4, !dbg !1318, !tbaa !802
  %cmp158 = icmp ugt i32 %52, 2, !dbg !1318
  br i1 %cmp158, label %cont162, label %for.cond.outer.backedge, !dbg !1318

cont162:                                          ; preds = %if.then153
  %53 = load i32* %call33, align 4, !dbg !1320, !tbaa !802
  %54 = load i8** %data144, align 4, !dbg !1320, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %51, i32 %53, i8* getelementptr inbounds ([19 x i8]* @.str15, i32 0, i32 0), i8* %54) nounwind, !dbg !1320
  br label %for.cond.outer.backedge, !dbg !1320

cont172:                                          ; preds = %if.then146.cont172_crit_edge, %cont142
  %55 = phi i32 [ %.pre, %if.then146.cont172_crit_edge ], [ %49, %cont142 ]
  %bf.clear170 = and i32 %55, 255, !dbg !1317
  switch i32 %bf.clear170, label %if.else287 [
    i32 0, label %cont184
    i32 8, label %if.then187
    i32 4, label %cont223.if.then243_crit_edge
  ], !dbg !1317

cont184:                                          ; preds = %cont172
  %56 = load i32* %st_mode235, align 4, !dbg !1317, !tbaa !802
  %and = and i32 %56, 61440, !dbg !1317
  %cmp185 = icmp eq i32 %and, 32768, !dbg !1317
  br i1 %cmp185, label %if.then187, label %cont240, !dbg !1317

if.then187:                                       ; preds = %cont172, %cont184
  %57 = load i64* %st_size, align 4, !dbg !1287, !tbaa !814
  store i64 %57, i64* %size, align 4, !dbg !1287, !tbaa !814
  %58 = load i64* %st_blocks, align 4, !dbg !1289, !tbaa !814
  %59 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %58, i64 512), !dbg !1289
  %60 = extractvalue { i64, i1 } %59, 0, !dbg !1289
  %61 = extractvalue { i64, i1 } %59, 1, !dbg !1289
  br i1 %61, label %ioc_bb192, label %cont193, !dbg !1289

ioc_bb192:                                        ; preds = %if.then187
  call void @__ioc_report_mul_overflow(i32 667, i32 75, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %58, i64 512, i8 14) nounwind, !dbg !1289
  br label %cont193, !dbg !1289

cont193:                                          ; preds = %if.then187, %ioc_bb192
  %cmp194 = icmp slt i64 %57, %60, !dbg !1289
  br i1 %cmp194, label %cond.true196, label %cond.false201, !dbg !1289

cond.true196:                                     ; preds = %cont193
  %62 = load i64* %st_blocks, align 4, !dbg !1289, !tbaa !814
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 512), !dbg !1289
  %64 = extractvalue { i64, i1 } %63, 0, !dbg !1289
  %65 = extractvalue { i64, i1 } %63, 1, !dbg !1289
  br i1 %65, label %ioc_bb199, label %cond.end, !dbg !1289

ioc_bb199:                                        ; preds = %cond.true196
  call void @__ioc_report_mul_overflow(i32 667, i32 106, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @18, i32 0, i32 0), i64 %62, i64 512, i8 14) nounwind, !dbg !1289
  br label %cond.end, !dbg !1289

cond.false201:                                    ; preds = %cont193
  %66 = load i64* %st_size, align 4, !dbg !1289, !tbaa !814
  br label %cond.end, !dbg !1289

cond.end:                                         ; preds = %cond.true196, %ioc_bb199, %cond.false201
  %cond = phi i64 [ %66, %cond.false201 ], [ %64, %ioc_bb199 ], [ %64, %cond.true196 ], !dbg !1289
  store i64 %cond, i64* %fs_size, align 4, !dbg !1289, !tbaa !814
  %67 = load i32* %st_mode235, align 4, !dbg !1321, !tbaa !802
  %and208 = and i32 %67, 511, !dbg !1321
  store i32 %and208, i32* %access249, align 4, !dbg !1321, !tbaa !802
  %68 = load i32* %tv_sec252, align 4, !dbg !1322, !tbaa !853
  store i32 %68, i32* %mtime253, align 4, !dbg !1322, !tbaa !853
  %file_handler210393 = load {}** %file_handler, align 4, !dbg !1290
  %69 = bitcast {}* %file_handler210393 to i32 (%struct.ngx_tree_ctx_s*, %struct.ngx_str_t*)*, !dbg !1290
  %call211 = call i32 %69(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %file) nounwind, !dbg !1290
  %cmp214 = icmp eq i32 %call211, -6, !dbg !1290
  br i1 %cmp214, label %done, label %for.cond.outer.backedge, !dbg !1290

for.cond.outer.backedge:                          ; preds = %cond.end, %cont272, %if.else287, %cont162, %if.then153
  store i32 0, i32* %call33, align 4, !dbg !1264, !tbaa !802
  %call34404 = call i32 @ngx_read_dir(%struct.ngx_dir_t* %dir) nounwind, !dbg !1267
  %cmp37405 = icmp eq i32 %call34404, -1, !dbg !1267
  br i1 %cmp37405, label %if.then38, label %if.end57.lr.ph, !dbg !1267

cont223.if.then243_crit_edge:                     ; preds = %cont172
  %.pre428 = load i32* %st_mode235, align 4, !dbg !1282, !tbaa !802
  br label %if.then243, !dbg !1281

cont240:                                          ; preds = %cont184
  %70 = load i32* %st_mode235, align 4, !dbg !1281, !tbaa !802
  %and238 = and i32 %70, 61440, !dbg !1281
  %cmp241 = icmp eq i32 %and238, 16384, !dbg !1281
  br i1 %cmp241, label %if.then243, label %if.else287, !dbg !1281

if.then243:                                       ; preds = %cont223.if.then243_crit_edge, %cont240
  %71 = phi i32 [ %.pre428, %cont223.if.then243_crit_edge ], [ %70, %cont240 ]
  %and248 = and i32 %71, 511, !dbg !1282
  store i32 %and248, i32* %access249, align 4, !dbg !1282, !tbaa !802
  %72 = load i32* %tv_sec252, align 4, !dbg !1284, !tbaa !853
  store i32 %72, i32* %mtime253, align 4, !dbg !1284, !tbaa !853
  %pre_tree_handler254391 = load {}** %pre_tree_handler, align 4, !dbg !1285
  %73 = bitcast {}* %pre_tree_handler254391 to i32 (%struct.ngx_tree_ctx_s*, %struct.ngx_str_t*)*, !dbg !1285
  %call255 = call i32 %73(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %file) nounwind, !dbg !1285
  %cmp258 = icmp eq i32 %call255, -6, !dbg !1285
  br i1 %cmp258, label %done, label %if.end261, !dbg !1285

if.end261:                                        ; preds = %if.then243
  %call262 = call i32 @ngx_walk_tree(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %file), !dbg !1323
  %cmp265 = icmp eq i32 %call262, -6, !dbg !1323
  br i1 %cmp265, label %done, label %cont272, !dbg !1323

cont272:                                          ; preds = %if.end261
  %74 = load i32* %st_mode235, align 4, !dbg !1324, !tbaa !802
  %and273 = and i32 %74, 511, !dbg !1324
  store i32 %and273, i32* %access249, align 4, !dbg !1324, !tbaa !802
  %75 = load i32* %tv_sec252, align 4, !dbg !1325, !tbaa !853
  store i32 %75, i32* %mtime253, align 4, !dbg !1325, !tbaa !853
  %post_tree_handler279392 = load {}** %post_tree_handler, align 4, !dbg !1286
  %76 = bitcast {}* %post_tree_handler279392 to i32 (%struct.ngx_tree_ctx_s*, %struct.ngx_str_t*)*, !dbg !1286
  %call280 = call i32 %76(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %file) nounwind, !dbg !1286
  %cmp283 = icmp eq i32 %call280, -6, !dbg !1286
  br i1 %cmp283, label %done, label %for.cond.outer.backedge, !dbg !1286

if.else287:                                       ; preds = %cont172, %cont240
  %spec_handler288390 = load {}** %spec_handler, align 4, !dbg !1279
  %77 = bitcast {}* %spec_handler288390 to i32 (%struct.ngx_tree_ctx_s*, %struct.ngx_str_t*)*, !dbg !1279
  %call289 = call i32 %77(%struct.ngx_tree_ctx_s* %ctx, %struct.ngx_str_t* %file) nounwind, !dbg !1279
  %cmp292 = icmp eq i32 %call289, -6, !dbg !1279
  br i1 %cmp292, label %done, label %for.cond.outer.backedge, !dbg !1279

done:                                             ; preds = %if.else287, %cont272, %if.end261, %if.then243, %cond.end, %cont123, %cont50, %if.else42, %if.then38
  %rc.0 = phi i32 [ 0, %if.then38 ], [ -1, %if.else42 ], [ -1, %cont50 ], [ -6, %cont123 ], [ -6, %cond.end ], [ -6, %if.then243 ], [ -6, %if.end261 ], [ -6, %cont272 ], [ -6, %if.else287 ]
  %buf.sroa.1.3 = phi i8* [ %buf.sroa.1.0.ph408, %if.then38 ], [ %buf.sroa.1.0.ph408, %if.else42 ], [ %buf.sroa.1.0.ph408, %cont50 ], [ null, %cont123 ], [ %buf.sroa.1.1, %cond.end ], [ %buf.sroa.1.1, %if.then243 ], [ %buf.sroa.1.1, %if.end261 ], [ %buf.sroa.1.1, %cont272 ], [ %buf.sroa.1.1, %if.else287 ]
  %buf.sroa.0.3 = phi i32 [ %buf.sroa.0.0.ph411, %if.then38 ], [ %buf.sroa.0.0.ph411, %if.else42 ], [ %buf.sroa.0.0.ph411, %cont50 ], [ %35, %cont123 ], [ %buf.sroa.0.1, %cond.end ], [ %buf.sroa.0.1, %if.then243 ], [ %buf.sroa.0.1, %if.end261 ], [ %buf.sroa.0.1, %cont272 ], [ %buf.sroa.0.1, %if.else287 ]
  %tobool301 = icmp eq i32 %buf.sroa.0.3, 0, !dbg !1326
  br i1 %tobool301, label %if.end304, label %if.then302, !dbg !1326

if.then302:                                       ; preds = %done
  call void @free(i8* %buf.sroa.1.3) nounwind, !dbg !1327
  br label %if.end304, !dbg !1329

if.end304:                                        ; preds = %done, %if.then302
  %tobool305 = icmp eq i8* %data.0.ph, null, !dbg !1330
  br i1 %tobool305, label %if.end308, label %if.then306, !dbg !1330

if.then306:                                       ; preds = %if.end24, %if.end304
  %data.2395402 = phi i8* [ %data.0.ph, %if.end304 ], [ %call21, %if.end24 ]
  %rc.0396401 = phi i32 [ %rc.0, %if.end304 ], [ -6, %if.end24 ]
  call void @free(i8* %data.2395402) nounwind, !dbg !1331
  store i8* %4, i8** %data17, align 4, !dbg !1333, !tbaa !808
  br label %if.end308, !dbg !1334

if.end308:                                        ; preds = %if.then18, %if.end304, %if.then306
  %rc.0396398 = phi i32 [ %rc.0, %if.end304 ], [ %rc.0396401, %if.then306 ], [ -6, %if.then18 ]
  %dir309 = getelementptr inbounds %struct.ngx_dir_t* %dir, i32 0, i32 0, !dbg !1335
  %78 = load %struct.__dirstream** %dir309, align 4, !dbg !1335, !tbaa !808
  %call310 = call i32 @closedir(%struct.__dirstream* %78) nounwind, !dbg !1335
  %cmp313 = icmp eq i32 %call310, -1, !dbg !1335
  br i1 %cmp313, label %if.then315, label %return, !dbg !1335

if.then315:                                       ; preds = %if.end308
  %log316 = getelementptr inbounds %struct.ngx_tree_ctx_s* %ctx, i32 0, i32 11, !dbg !1336
  %79 = load %struct.ngx_log_s** %log316, align 4, !dbg !1336, !tbaa !808
  %log_level317 = getelementptr inbounds %struct.ngx_log_s* %79, i32 0, i32 0, !dbg !1336
  %80 = load i32* %log_level317, align 4, !dbg !1336, !tbaa !802
  %cmp320 = icmp ugt i32 %80, 2, !dbg !1336
  br i1 %cmp320, label %cont324, label %return, !dbg !1336

cont324:                                          ; preds = %if.then315
  %call326 = call i32* @__errno_location() nounwind readnone, !dbg !1338
  %81 = load i32* %call326, align 4, !dbg !1338, !tbaa !802
  %data327 = getelementptr inbounds %struct.ngx_str_t* %tree, i32 0, i32 1, !dbg !1338
  %82 = load i8** %data327, align 4, !dbg !1338, !tbaa !808
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %79, i32 %81, i8* getelementptr inbounds ([23 x i8]* @.str30, i32 0, i32 0), i8* %82) nounwind, !dbg !1338
  br label %return, !dbg !1338

return:                                           ; preds = %if.end308, %cont324, %if.then315, %cont10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %cont10 ], [ %rc.0396398, %if.then315 ], [ %rc.0396398, %cont324 ], [ %rc.0396398, %if.end308 ]
  ret i32 %retval.0, !dbg !1339
}

declare i32 @ngx_open_dir(%struct.ngx_str_t*, %struct.ngx_dir_t*)

declare i32 @ngx_read_dir(%struct.ngx_dir_t*)

declare i32 @strlen(i8* nocapture) nounwind readonly

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @closedir(%struct.__dirstream* nocapture) nounwind

declare i32 @write(i32, i8* nocapture, i32)

declare i32 @__fxstat64(i32, i32, %struct.stat64*) nounwind

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_file.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !791} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !231, metadata !256, metadata !268, metadata !279, metadata !290, metadata !299, metadata !541, metadata !556, metadata !587, metadata !604, metadata !621, metadata !652, metadata !670, metadata !739, metadata !747, metadata !755, metadata !782}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_write_chain_to_temp_file", metadata !"ngx_write_chain_to_temp_file", metadata !"", metadata !6, i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_temp_file_t*, %struct.ngx_chain_s*)* @ngx_write_chain_to_temp_file, null, null, metadata !222, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [ngx_write_chain_to_temp_file]
!6 = metadata !{i32 786473, metadata !"src/core/ngx_file.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !12, metadata !164}
!9 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !6, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!10 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !6, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!13 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !6, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!14 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!15 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!16 = metadata !{metadata !17, metadata !119, metadata !120, metadata !145, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!17 = metadata !{i32 786445, metadata !14, metadata !"file", metadata !15, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!18 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !15, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!19 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !15, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !23, metadata !36, metadata !80, metadata !82, metadata !83, metadata !117, metadata !118}
!21 = metadata !{i32 786445, metadata !19, metadata !"fd", metadata !15, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!22 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !15, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !"name", metadata !15, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!24 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !15, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 786451, null, metadata !"", metadata !26, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!26 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28, metadata !31}
!28 = metadata !{i32 786445, metadata !25, metadata !"len", metadata !26, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!29 = metadata !{i32 786454, null, metadata !"size_t", metadata !26, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!30 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{i32 786445, metadata !25, metadata !"data", metadata !26, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!33 = metadata !{i32 786454, null, metadata !"u_char", metadata !26, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!34 = metadata !{i32 786454, null, metadata !"__u_char", metadata !26, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!35 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!36 = metadata !{i32 786445, metadata !19, metadata !"info", metadata !15, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!37 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !15, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!38 = metadata !{i32 786451, null, metadata !"stat", metadata !39, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!39 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!40 = metadata !{metadata !41, metadata !45, metadata !47, metadata !50, metadata !52, metadata !54, metadata !56, metadata !58, metadata !59, metadata !60, metadata !64, metadata !67, metadata !69, metadata !76, metadata !77, metadata !78}
!41 = metadata !{i32 786445, metadata !38, metadata !"st_dev", metadata !39, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!42 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !39, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!43 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !39, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!44 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!45 = metadata !{i32 786445, metadata !38, metadata !"__pad1", metadata !39, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!46 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!47 = metadata !{i32 786445, metadata !38, metadata !"__st_ino", metadata !39, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!48 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !39, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!49 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786445, metadata !38, metadata !"st_mode", metadata !39, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!51 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !39, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!52 = metadata !{i32 786445, metadata !38, metadata !"st_nlink", metadata !39, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !53} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!53 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !39, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!54 = metadata !{i32 786445, metadata !38, metadata !"st_uid", metadata !39, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!55 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !39, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!56 = metadata !{i32 786445, metadata !38, metadata !"st_gid", metadata !39, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !57} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!57 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !39, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!58 = metadata !{i32 786445, metadata !38, metadata !"st_rdev", metadata !39, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!59 = metadata !{i32 786445, metadata !38, metadata !"__pad2", metadata !39, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!60 = metadata !{i32 786445, metadata !38, metadata !"st_size", metadata !39, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !61} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!61 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !39, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!62 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !39, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!63 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!64 = metadata !{i32 786445, metadata !38, metadata !"st_blksize", metadata !39, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !65} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!65 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !39, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!67 = metadata !{i32 786445, metadata !38, metadata !"st_blocks", metadata !39, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !68} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!68 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !39, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!69 = metadata !{i32 786445, metadata !38, metadata !"st_atim", metadata !39, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !70} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!70 = metadata !{i32 786451, null, metadata !"timespec", metadata !71, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!71 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!72 = metadata !{metadata !73, metadata !75}
!73 = metadata !{i32 786445, metadata !70, metadata !"tv_sec", metadata !71, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!74 = metadata !{i32 786454, null, metadata !"__time_t", metadata !71, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!75 = metadata !{i32 786445, metadata !70, metadata !"tv_nsec", metadata !71, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!76 = metadata !{i32 786445, metadata !38, metadata !"st_mtim", metadata !39, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !70} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!77 = metadata !{i32 786445, metadata !38, metadata !"st_ctim", metadata !39, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !70} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!78 = metadata !{i32 786445, metadata !38, metadata !"st_ino", metadata !39, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !79} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!79 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !39, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!80 = metadata !{i32 786445, metadata !19, metadata !"offset", metadata !15, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !81} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!81 = metadata !{i32 786454, null, metadata !"off_t", metadata !15, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!82 = metadata !{i32 786445, metadata !19, metadata !"sys_offset", metadata !15, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !81} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!83 = metadata !{i32 786445, metadata !19, metadata !"log", metadata !15, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!84 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!85 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !15, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!86 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !87, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!87 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!88 = metadata !{metadata !89, metadata !92, metadata !103, metadata !105, metadata !112, metadata !114}
!89 = metadata !{i32 786445, metadata !86, metadata !"log_level", metadata !87, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!90 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !87, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!91 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !87, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!92 = metadata !{i32 786445, metadata !86, metadata !"file", metadata !87, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !93} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!93 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!94 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !87, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!95 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !96, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!96 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786445, metadata !95, metadata !"fd", metadata !96, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!99 = metadata !{i32 786445, metadata !95, metadata !"name", metadata !96, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!100 = metadata !{i32 786445, metadata !95, metadata !"buffer", metadata !96, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!101 = metadata !{i32 786445, metadata !95, metadata !"pos", metadata !96, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!102 = metadata !{i32 786445, metadata !95, metadata !"last", metadata !96, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!103 = metadata !{i32 786445, metadata !86, metadata !"connection", metadata !87, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !104} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!104 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !6, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!105 = metadata !{i32 786445, metadata !86, metadata !"handler", metadata !87, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !106} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!106 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !87, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !32, metadata !110, metadata !32, metadata !29}
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!111 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !87, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!112 = metadata !{i32 786445, metadata !86, metadata !"data", metadata !87, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !113} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!113 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!114 = metadata !{i32 786445, metadata !86, metadata !"action", metadata !87, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !115} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!116 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786445, metadata !19, metadata !"valid_info", metadata !15, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!118 = metadata !{i32 786445, metadata !19, metadata !"directio", metadata !15, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !30} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!119 = metadata !{i32 786445, metadata !14, metadata !"offset", metadata !15, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !81} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!120 = metadata !{i32 786445, metadata !14, metadata !"path", metadata !15, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !121} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!122 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !15, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!123 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !131, metadata !137, metadata !142, metadata !143, metadata !144}
!125 = metadata !{i32 786445, metadata !123, metadata !"name", metadata !15, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!126 = metadata !{i32 786445, metadata !123, metadata !"len", metadata !15, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!127 = metadata !{i32 786445, metadata !123, metadata !"level", metadata !15, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !128} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!128 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !29, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!131 = metadata !{i32 786445, metadata !123, metadata !"manager", metadata !15, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!132 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !15, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !113}
!136 = metadata !{i32 786454, null, metadata !"time_t", metadata !15, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!137 = metadata !{i32 786445, metadata !123, metadata !"loader", metadata !15, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !138} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!138 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !15, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!139 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !113}
!142 = metadata !{i32 786445, metadata !123, metadata !"data", metadata !15, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !113} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!143 = metadata !{i32 786445, metadata !123, metadata !"conf_file", metadata !15, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !32} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!144 = metadata !{i32 786445, metadata !123, metadata !"line", metadata !15, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !90} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!145 = metadata !{i32 786445, metadata !14, metadata !"pool", metadata !15, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!147 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !15, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!148 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !149, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!149 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!150 = metadata !{metadata !151, metadata !161, metadata !162, metadata !163, metadata !200, metadata !207, metadata !216}
!151 = metadata !{i32 786445, metadata !148, metadata !"d", metadata !149, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!152 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !149, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!153 = metadata !{i32 786451, null, metadata !"", metadata !149, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !160}
!155 = metadata !{i32 786445, metadata !153, metadata !"last", metadata !149, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!156 = metadata !{i32 786445, metadata !153, metadata !"end", metadata !149, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!157 = metadata !{i32 786445, metadata !153, metadata !"next", metadata !149, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !158} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!159 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !149, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!160 = metadata !{i32 786445, metadata !153, metadata !"failed", metadata !149, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !90} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!161 = metadata !{i32 786445, metadata !148, metadata !"max", metadata !149, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!162 = metadata !{i32 786445, metadata !148, metadata !"current", metadata !149, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !158} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!163 = metadata !{i32 786445, metadata !148, metadata !"chain", metadata !149, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !164} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!164 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!165 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !149, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!166 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !167, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!167 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!168 = metadata !{metadata !169, metadata !197}
!169 = metadata !{i32 786445, metadata !166, metadata !"buf", metadata !167, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !170} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!171 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !167, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!172 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !167, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !182, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!174 = metadata !{i32 786445, metadata !172, metadata !"pos", metadata !167, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!175 = metadata !{i32 786445, metadata !172, metadata !"last", metadata !167, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!176 = metadata !{i32 786445, metadata !172, metadata !"file_pos", metadata !167, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!177 = metadata !{i32 786445, metadata !172, metadata !"file_last", metadata !167, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!178 = metadata !{i32 786445, metadata !172, metadata !"start", metadata !167, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!179 = metadata !{i32 786445, metadata !172, metadata !"end", metadata !167, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !32} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!180 = metadata !{i32 786445, metadata !172, metadata !"tag", metadata !167, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!181 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !167, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!182 = metadata !{i32 786445, metadata !172, metadata !"file", metadata !167, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !183} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!184 = metadata !{i32 786445, metadata !172, metadata !"shadow", metadata !167, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !170} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!185 = metadata !{i32 786445, metadata !172, metadata !"temporary", metadata !167, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!186 = metadata !{i32 786445, metadata !172, metadata !"memory", metadata !167, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !30} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!187 = metadata !{i32 786445, metadata !172, metadata !"mmap", metadata !167, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !30} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!188 = metadata !{i32 786445, metadata !172, metadata !"recycled", metadata !167, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !30} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!189 = metadata !{i32 786445, metadata !172, metadata !"in_file", metadata !167, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !30} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!190 = metadata !{i32 786445, metadata !172, metadata !"flush", metadata !167, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !30} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!191 = metadata !{i32 786445, metadata !172, metadata !"sync", metadata !167, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !30} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!192 = metadata !{i32 786445, metadata !172, metadata !"last_buf", metadata !167, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !30} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!193 = metadata !{i32 786445, metadata !172, metadata !"last_in_chain", metadata !167, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !30} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!194 = metadata !{i32 786445, metadata !172, metadata !"last_shadow", metadata !167, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !30} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!195 = metadata !{i32 786445, metadata !172, metadata !"temp_file", metadata !167, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!196 = metadata !{i32 786445, metadata !172, metadata !"num", metadata !167, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !11} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!197 = metadata !{i32 786445, metadata !166, metadata !"next", metadata !167, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !198} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!198 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!199 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !167, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!200 = metadata !{i32 786445, metadata !148, metadata !"large", metadata !149, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !201} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!201 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!202 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !149, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!203 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !149, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786445, metadata !203, metadata !"next", metadata !149, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!206 = metadata !{i32 786445, metadata !203, metadata !"alloc", metadata !149, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!207 = metadata !{i32 786445, metadata !148, metadata !"cleanup", metadata !149, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !208} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!208 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!209 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !149, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!210 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !149, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!211 = metadata !{metadata !212, metadata !214, metadata !215}
!212 = metadata !{i32 786445, metadata !210, metadata !"handler", metadata !149, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !213} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!213 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !149, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!214 = metadata !{i32 786445, metadata !210, metadata !"data", metadata !149, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !113} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!215 = metadata !{i32 786445, metadata !210, metadata !"next", metadata !149, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !208} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!216 = metadata !{i32 786445, metadata !148, metadata !"log", metadata !149, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!217 = metadata !{i32 786445, metadata !14, metadata !"warn", metadata !15, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !115} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!218 = metadata !{i32 786445, metadata !14, metadata !"access", metadata !15, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !90} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!219 = metadata !{i32 786445, metadata !14, metadata !"log_level", metadata !15, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !30} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!220 = metadata !{i32 786445, metadata !14, metadata !"persistent", metadata !15, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !30} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!221 = metadata !{i32 786445, metadata !14, metadata !"clean", metadata !15, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !30} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !224, metadata !225, metadata !226}
!224 = metadata !{i32 786689, metadata !5, metadata !"tf", metadata !6, i32 16777227, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tf] [line 11]
!225 = metadata !{i32 786689, metadata !5, metadata !"chain", metadata !6, i32 33554443, metadata !164, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chain] [line 11]
!226 = metadata !{i32 786688, metadata !227, metadata !"rc", metadata !6, i32 13, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 13]
!227 = metadata !{i32 786443, metadata !5, i32 12, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!228 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!229 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!230 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!231 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_temp_file", metadata !"ngx_create_temp_file", metadata !"", metadata !6, i32 27, metadata !232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_file_s*, %struct.ngx_path_t*, %struct.ngx_pool_s*, i32, i32, i32)* @ngx_create_temp_file, null, null, metadata !234, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [ngx_create_temp_file]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!233 = metadata !{metadata !228, metadata !183, metadata !121, metadata !146, metadata !90, metadata !90, metadata !90}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !245, metadata !247, metadata !248}
!236 = metadata !{i32 786689, metadata !231, metadata !"file", metadata !6, i32 16777243, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 27]
!237 = metadata !{i32 786689, metadata !231, metadata !"path", metadata !6, i32 33554459, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 27]
!238 = metadata !{i32 786689, metadata !231, metadata !"pool", metadata !6, i32 50331675, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 27]
!239 = metadata !{i32 786689, metadata !231, metadata !"persistent", metadata !6, i32 67108891, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [persistent] [line 27]
!240 = metadata !{i32 786689, metadata !231, metadata !"clean", metadata !6, i32 83886107, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clean] [line 27]
!241 = metadata !{i32 786689, metadata !231, metadata !"access", metadata !6, i32 100663323, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [access] [line 27]
!242 = metadata !{i32 786688, metadata !243, metadata !"n", metadata !6, i32 29, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 29]
!243 = metadata !{i32 786443, metadata !231, i32 28, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!244 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!245 = metadata !{i32 786688, metadata !243, metadata !"err", metadata !6, i32 30, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 30]
!246 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!247 = metadata !{i32 786688, metadata !243, metadata !"cln", metadata !6, i32 31, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cln] [line 31]
!248 = metadata !{i32 786688, metadata !243, metadata !"clnf", metadata !6, i32 32, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clnf] [line 32]
!249 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_file_t]
!250 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_file_t", metadata !6, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_file_t] [line 72, size 0, align 0, offset 0] [from ]
!251 = metadata !{i32 786451, null, metadata !"", metadata !149, i32 68, i64 96, i64 32, i32 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 68, size 96, align 32, offset 0] [from ]
!252 = metadata !{metadata !253, metadata !254, metadata !255}
!253 = metadata !{i32 786445, metadata !251, metadata !"fd", metadata !149, i32 69, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [fd] [line 69, size 32, align 32, offset 0] [from ngx_fd_t]
!254 = metadata !{i32 786445, metadata !251, metadata !"name", metadata !149, i32 70, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 70, size 32, align 32, offset 32] [from ]
!255 = metadata !{i32 786445, metadata !251, metadata !"log", metadata !149, i32 71, i64 32, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 71, size 32, align 32, offset 64] [from ]
!256 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_hashed_filename", metadata !"ngx_create_hashed_filename", metadata !"", metadata !6, i32 76, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_path_t*, i8*, i32)* @ngx_create_hashed_filename, null, null, metadata !259, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [ngx_create_hashed_filename]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !121, metadata !32, metadata !29}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !266, metadata !267}
!261 = metadata !{i32 786689, metadata !256, metadata !"path", metadata !6, i32 16777292, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 76]
!262 = metadata !{i32 786689, metadata !256, metadata !"file", metadata !6, i32 33554508, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 76]
!263 = metadata !{i32 786689, metadata !256, metadata !"len", metadata !6, i32 50331724, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 76]
!264 = metadata !{i32 786688, metadata !265, metadata !"i", metadata !6, i32 78, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 78]
!265 = metadata !{i32 786443, metadata !256, i32 77, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!266 = metadata !{i32 786688, metadata !265, metadata !"level", metadata !6, i32 79, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 79]
!267 = metadata !{i32 786688, metadata !265, metadata !"n", metadata !6, i32 80, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 80]
!268 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_path", metadata !"ngx_create_path", metadata !"", metadata !6, i32 95, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_file_s*, %struct.ngx_path_t*)* @ngx_create_path, null, null, metadata !271, i32 96} ; [ DW_TAG_subprogram ] [line 95] [def] [scope 96] [ngx_create_path]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !228, metadata !183, metadata !121}
!271 = metadata !{metadata !272}
!272 = metadata !{metadata !273, metadata !274, metadata !275, metadata !277, metadata !278}
!273 = metadata !{i32 786689, metadata !268, metadata !"file", metadata !6, i32 16777311, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 95]
!274 = metadata !{i32 786689, metadata !268, metadata !"path", metadata !6, i32 33554527, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 95]
!275 = metadata !{i32 786688, metadata !276, metadata !"pos", metadata !6, i32 97, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 97]
!276 = metadata !{i32 786443, metadata !268, i32 96, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!277 = metadata !{i32 786688, metadata !276, metadata !"err", metadata !6, i32 98, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 98]
!278 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !6, i32 99, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 99]
!279 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_full_path", metadata !"ngx_create_full_path", metadata !"", metadata !6, i32 121, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_create_full_path, null, null, metadata !282, i32 122} ; [ DW_TAG_subprogram ] [line 121] [def] [scope 122] [ngx_create_full_path]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !246, metadata !32, metadata !90}
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !288, metadata !289}
!284 = metadata !{i32 786689, metadata !279, metadata !"dir", metadata !6, i32 16777337, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 121]
!285 = metadata !{i32 786689, metadata !279, metadata !"access", metadata !6, i32 33554553, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [access] [line 121]
!286 = metadata !{i32 786688, metadata !287, metadata !"p", metadata !6, i32 123, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 123]
!287 = metadata !{i32 786443, metadata !279, i32 122, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!288 = metadata !{i32 786688, metadata !287, metadata !"ch", metadata !6, i32 124, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 124]
!289 = metadata !{i32 786688, metadata !287, metadata !"err", metadata !6, i32 125, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 125]
!290 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_next_temp_number", metadata !"ngx_next_temp_number", metadata !"", metadata !6, i32 154, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @ngx_next_temp_number, null, null, metadata !293, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [ngx_next_temp_number]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{metadata !104, metadata !90}
!293 = metadata !{metadata !294}
!294 = metadata !{metadata !295, metadata !296, metadata !298}
!295 = metadata !{i32 786689, metadata !290, metadata !"collision", metadata !6, i32 16777370, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [collision] [line 154]
!296 = metadata !{i32 786688, metadata !297, metadata !"n", metadata !6, i32 156, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 156]
!297 = metadata !{i32 786443, metadata !290, i32 155, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!298 = metadata !{i32 786688, metadata !297, metadata !"add", metadata !6, i32 157, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [add] [line 157]
!299 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_conf_set_path_slot", metadata !"ngx_conf_set_path_slot", metadata !"", metadata !6, i32 163, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_path_slot, null, null, metadata !526, i32 164} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 164] [ngx_conf_set_path_slot]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !115, metadata !302, metadata !515, metadata !113}
!302 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!303 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !6, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!304 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !96, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!305 = metadata !{metadata !306, metadata !307, metadata !318, metadata !494, metadata !495, metadata !496, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !525}
!306 = metadata !{i32 786445, metadata !304, metadata !"name", metadata !96, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!307 = metadata !{i32 786445, metadata !304, metadata !"args", metadata !96, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !308} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!308 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!309 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !96, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!310 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !311, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!311 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316, metadata !317}
!313 = metadata !{i32 786445, metadata !310, metadata !"elts", metadata !311, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!314 = metadata !{i32 786445, metadata !310, metadata !"nelts", metadata !311, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !90} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!315 = metadata !{i32 786445, metadata !310, metadata !"size", metadata !311, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!316 = metadata !{i32 786445, metadata !310, metadata !"nalloc", metadata !311, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !90} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!317 = metadata !{i32 786445, metadata !310, metadata !"pool", metadata !311, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!318 = metadata !{i32 786445, metadata !304, metadata !"cycle", metadata !96, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !319} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!319 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !320} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!320 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !96, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!321 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !322, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!322 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!323 = metadata !{metadata !324, metadata !328, metadata !329, metadata !330, metadata !331, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493}
!324 = metadata !{i32 786445, metadata !321, metadata !"conf_ctx", metadata !322, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!325 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !326} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!326 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!327 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!328 = metadata !{i32 786445, metadata !321, metadata !"pool", metadata !322, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!329 = metadata !{i32 786445, metadata !321, metadata !"log", metadata !322, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!330 = metadata !{i32 786445, metadata !321, metadata !"new_log", metadata !322, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!331 = metadata !{i32 786445, metadata !321, metadata !"files", metadata !322, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !332} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!332 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !333} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!333 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!334 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !322, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!335 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !336, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!336 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!337 = metadata !{metadata !338, metadata !339, metadata !344, metadata !345, metadata !347, metadata !354, metadata !356, metadata !361, metadata !366, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456}
!338 = metadata !{i32 786445, metadata !335, metadata !"data", metadata !336, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!339 = metadata !{i32 786445, metadata !335, metadata !"read", metadata !336, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !340} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!340 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!341 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !336, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!342 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !343, i32 22, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 22, size 0, align 0, offset 0] [fwd] [from ]
!343 = metadata !{i32 786473, metadata !"src/core/ngx_core.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!344 = metadata !{i32 786445, metadata !335, metadata !"write", metadata !336, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !340} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!345 = metadata !{i32 786445, metadata !335, metadata !"fd", metadata !336, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !346} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!346 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !336, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!347 = metadata !{i32 786445, metadata !335, metadata !"recv", metadata !336, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !348} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!348 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !336, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!349 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{metadata !9, metadata !352, metadata !32, metadata !29}
!352 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!353 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !336, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!354 = metadata !{i32 786445, metadata !335, metadata !"send", metadata !336, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !355} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!355 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !336, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!356 = metadata !{i32 786445, metadata !335, metadata !"recv_chain", metadata !336, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !357} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!357 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !336, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !358} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!358 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!360 = metadata !{metadata !9, metadata !352, metadata !164}
!361 = metadata !{i32 786445, metadata !335, metadata !"send_chain", metadata !336, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !362} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!362 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !336, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!363 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !364} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{metadata !164, metadata !352, metadata !164, metadata !81}
!366 = metadata !{i32 786445, metadata !335, metadata !"listening", metadata !336, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !367} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!367 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!368 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !336, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!369 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !336, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!370 = metadata !{metadata !371, metadata !372, metadata !383, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423}
!371 = metadata !{i32 786445, metadata !369, metadata !"fd", metadata !336, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !346} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!372 = metadata !{i32 786445, metadata !369, metadata !"sockaddr", metadata !336, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !373} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!373 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!374 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !375, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!375 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!376 = metadata !{metadata !377, metadata !379}
!377 = metadata !{i32 786445, metadata !374, metadata !"sa_family", metadata !375, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !378} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!378 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !375, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!379 = metadata !{i32 786445, metadata !374, metadata !"sa_data", metadata !375, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !380} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!380 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !116, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!383 = metadata !{i32 786445, metadata !369, metadata !"socklen", metadata !336, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !384} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!384 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !336, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!385 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !336, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!386 = metadata !{i32 786445, metadata !369, metadata !"addr_text_max_len", metadata !336, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!387 = metadata !{i32 786445, metadata !369, metadata !"addr_text", metadata !336, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!388 = metadata !{i32 786445, metadata !369, metadata !"type", metadata !336, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!389 = metadata !{i32 786445, metadata !369, metadata !"backlog", metadata !336, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !11} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!390 = metadata !{i32 786445, metadata !369, metadata !"rcvbuf", metadata !336, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !11} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!391 = metadata !{i32 786445, metadata !369, metadata !"sndbuf", metadata !336, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !11} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!392 = metadata !{i32 786445, metadata !369, metadata !"keepidle", metadata !336, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!393 = metadata !{i32 786445, metadata !369, metadata !"keepintvl", metadata !336, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !11} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!394 = metadata !{i32 786445, metadata !369, metadata !"keepcnt", metadata !336, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !11} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!395 = metadata !{i32 786445, metadata !369, metadata !"handler", metadata !336, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !396} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!396 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !336, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!397 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{null, metadata !352}
!400 = metadata !{i32 786445, metadata !369, metadata !"servers", metadata !336, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !113} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!401 = metadata !{i32 786445, metadata !369, metadata !"log", metadata !336, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !85} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!402 = metadata !{i32 786445, metadata !369, metadata !"logp", metadata !336, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !84} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!403 = metadata !{i32 786445, metadata !369, metadata !"pool_size", metadata !336, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!404 = metadata !{i32 786445, metadata !369, metadata !"post_accept_buffer_size", metadata !336, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !29} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!405 = metadata !{i32 786445, metadata !369, metadata !"post_accept_timeout", metadata !336, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !406} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!406 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !336, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !407} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!407 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !336, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!408 = metadata !{i32 786445, metadata !369, metadata !"previous", metadata !336, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !367} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!409 = metadata !{i32 786445, metadata !369, metadata !"connection", metadata !336, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !352} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!410 = metadata !{i32 786445, metadata !369, metadata !"open", metadata !336, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !30} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!411 = metadata !{i32 786445, metadata !369, metadata !"remain", metadata !336, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !30} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!412 = metadata !{i32 786445, metadata !369, metadata !"ignore", metadata !336, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !30} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!413 = metadata !{i32 786445, metadata !369, metadata !"bound", metadata !336, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !30} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!414 = metadata !{i32 786445, metadata !369, metadata !"inherited", metadata !336, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !30} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!415 = metadata !{i32 786445, metadata !369, metadata !"nonblocking_accept", metadata !336, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !30} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!416 = metadata !{i32 786445, metadata !369, metadata !"listen", metadata !336, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !30} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!417 = metadata !{i32 786445, metadata !369, metadata !"nonblocking", metadata !336, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !30} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!418 = metadata !{i32 786445, metadata !369, metadata !"shared", metadata !336, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !30} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!419 = metadata !{i32 786445, metadata !369, metadata !"addr_ntop", metadata !336, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !30} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!420 = metadata !{i32 786445, metadata !369, metadata !"keepalive", metadata !336, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !30} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!421 = metadata !{i32 786445, metadata !369, metadata !"deferred_accept", metadata !336, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !30} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!422 = metadata !{i32 786445, metadata !369, metadata !"delete_deferred", metadata !336, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !30} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!423 = metadata !{i32 786445, metadata !369, metadata !"add_deferred", metadata !336, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !30} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!424 = metadata !{i32 786445, metadata !335, metadata !"sent", metadata !336, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !81} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!425 = metadata !{i32 786445, metadata !335, metadata !"log", metadata !336, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!426 = metadata !{i32 786445, metadata !335, metadata !"pool", metadata !336, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!427 = metadata !{i32 786445, metadata !335, metadata !"sockaddr", metadata !336, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !373} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!428 = metadata !{i32 786445, metadata !335, metadata !"socklen", metadata !336, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !384} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!429 = metadata !{i32 786445, metadata !335, metadata !"addr_text", metadata !336, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !24} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!430 = metadata !{i32 786445, metadata !335, metadata !"local_sockaddr", metadata !336, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !373} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!431 = metadata !{i32 786445, metadata !335, metadata !"buffer", metadata !336, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !170} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!432 = metadata !{i32 786445, metadata !335, metadata !"queue", metadata !336, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !433} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!433 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !336, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!434 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !435, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!435 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!436 = metadata !{metadata !437, metadata !440}
!437 = metadata !{i32 786445, metadata !434, metadata !"prev", metadata !435, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !438} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!438 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !439} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!439 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !435, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!440 = metadata !{i32 786445, metadata !434, metadata !"next", metadata !435, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !438} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!441 = metadata !{i32 786445, metadata !335, metadata !"number", metadata !336, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !104} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!442 = metadata !{i32 786445, metadata !335, metadata !"requests", metadata !336, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !90} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!443 = metadata !{i32 786445, metadata !335, metadata !"buffered", metadata !336, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!444 = metadata !{i32 786445, metadata !335, metadata !"log_error", metadata !336, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !30} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!445 = metadata !{i32 786445, metadata !335, metadata !"single_connection", metadata !336, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !30} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!446 = metadata !{i32 786445, metadata !335, metadata !"unexpected_eof", metadata !336, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !30} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!447 = metadata !{i32 786445, metadata !335, metadata !"timedout", metadata !336, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !30} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!448 = metadata !{i32 786445, metadata !335, metadata !"error", metadata !336, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !30} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!449 = metadata !{i32 786445, metadata !335, metadata !"destroyed", metadata !336, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !30} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!450 = metadata !{i32 786445, metadata !335, metadata !"idle", metadata !336, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !30} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!451 = metadata !{i32 786445, metadata !335, metadata !"reusable", metadata !336, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !30} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!452 = metadata !{i32 786445, metadata !335, metadata !"close", metadata !336, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !30} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!453 = metadata !{i32 786445, metadata !335, metadata !"sendfile", metadata !336, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!454 = metadata !{i32 786445, metadata !335, metadata !"sndlowat", metadata !336, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !30} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!455 = metadata !{i32 786445, metadata !335, metadata !"tcp_nodelay", metadata !336, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !30} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!456 = metadata !{i32 786445, metadata !335, metadata !"tcp_nopush", metadata !336, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !30} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!457 = metadata !{i32 786445, metadata !321, metadata !"free_connections", metadata !322, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !333} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!458 = metadata !{i32 786445, metadata !321, metadata !"free_connection_n", metadata !322, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !90} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!459 = metadata !{i32 786445, metadata !321, metadata !"reusable_connections_queue", metadata !322, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !433} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!460 = metadata !{i32 786445, metadata !321, metadata !"listening", metadata !322, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !309} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!461 = metadata !{i32 786445, metadata !321, metadata !"pathes", metadata !322, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !309} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!462 = metadata !{i32 786445, metadata !321, metadata !"open_files", metadata !322, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !463} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!463 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !322, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !464} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!464 = metadata !{i32 786451, null, metadata !"", metadata !465, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!465 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!466 = metadata !{metadata !467, metadata !475, metadata !476, metadata !477, metadata !478}
!467 = metadata !{i32 786445, metadata !464, metadata !"last", metadata !465, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !468} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!468 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !469} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!469 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !465, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !470} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!470 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !465, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!471 = metadata !{metadata !472, metadata !473, metadata !474}
!472 = metadata !{i32 786445, metadata !470, metadata !"elts", metadata !465, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!473 = metadata !{i32 786445, metadata !470, metadata !"nelts", metadata !465, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !90} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!474 = metadata !{i32 786445, metadata !470, metadata !"next", metadata !465, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !468} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!475 = metadata !{i32 786445, metadata !464, metadata !"part", metadata !465, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !469} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!476 = metadata !{i32 786445, metadata !464, metadata !"size", metadata !465, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!477 = metadata !{i32 786445, metadata !464, metadata !"nalloc", metadata !465, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !90} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!478 = metadata !{i32 786445, metadata !464, metadata !"pool", metadata !465, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!479 = metadata !{i32 786445, metadata !321, metadata !"shared_memory", metadata !322, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !463} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!480 = metadata !{i32 786445, metadata !321, metadata !"connection_n", metadata !322, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !90} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!481 = metadata !{i32 786445, metadata !321, metadata !"files_n", metadata !322, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !90} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!482 = metadata !{i32 786445, metadata !321, metadata !"connections", metadata !322, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !333} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!483 = metadata !{i32 786445, metadata !321, metadata !"read_events", metadata !322, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !340} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!484 = metadata !{i32 786445, metadata !321, metadata !"write_events", metadata !322, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !340} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!485 = metadata !{i32 786445, metadata !321, metadata !"old_cycle", metadata !322, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !486} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!486 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !487} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!487 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !322, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!488 = metadata !{i32 786445, metadata !321, metadata !"conf_file", metadata !322, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !24} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!489 = metadata !{i32 786445, metadata !321, metadata !"conf_param", metadata !322, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !24} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!490 = metadata !{i32 786445, metadata !321, metadata !"conf_prefix", metadata !322, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!491 = metadata !{i32 786445, metadata !321, metadata !"prefix", metadata !322, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !24} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!492 = metadata !{i32 786445, metadata !321, metadata !"lock_file", metadata !322, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !24} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!493 = metadata !{i32 786445, metadata !321, metadata !"hostname", metadata !322, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !24} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!494 = metadata !{i32 786445, metadata !304, metadata !"pool", metadata !96, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !146} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!495 = metadata !{i32 786445, metadata !304, metadata !"temp_pool", metadata !96, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !146} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!496 = metadata !{i32 786445, metadata !304, metadata !"conf_file", metadata !96, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !497} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!497 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !498} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!498 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !96, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !499} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!499 = metadata !{i32 786451, null, metadata !"", metadata !96, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!500 = metadata !{metadata !501, metadata !502, metadata !503}
!501 = metadata !{i32 786445, metadata !499, metadata !"file", metadata !96, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!502 = metadata !{i32 786445, metadata !499, metadata !"buffer", metadata !96, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !170} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!503 = metadata !{i32 786445, metadata !499, metadata !"line", metadata !96, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !90} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!504 = metadata !{i32 786445, metadata !304, metadata !"log", metadata !96, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!505 = metadata !{i32 786445, metadata !304, metadata !"ctx", metadata !96, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !113} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!506 = metadata !{i32 786445, metadata !304, metadata !"module_type", metadata !96, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!507 = metadata !{i32 786445, metadata !304, metadata !"cmd_type", metadata !96, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !90} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!508 = metadata !{i32 786445, metadata !304, metadata !"handler", metadata !96, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !509} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!509 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !96, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !510} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!510 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !511} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!511 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!512 = metadata !{metadata !115, metadata !513, metadata !515, metadata !113}
!513 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !514} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!514 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !96, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!515 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !516} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!516 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !96, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !517} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!517 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !96, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!518 = metadata !{metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524}
!519 = metadata !{i32 786445, metadata !517, metadata !"name", metadata !96, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!520 = metadata !{i32 786445, metadata !517, metadata !"type", metadata !96, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!521 = metadata !{i32 786445, metadata !517, metadata !"set", metadata !96, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !510} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!522 = metadata !{i32 786445, metadata !517, metadata !"conf", metadata !96, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!523 = metadata !{i32 786445, metadata !517, metadata !"offset", metadata !96, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !90} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!524 = metadata !{i32 786445, metadata !517, metadata !"post", metadata !96, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !113} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!525 = metadata !{i32 786445, metadata !304, metadata !"handler_conf", metadata !96, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !115} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!526 = metadata !{metadata !527}
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531, metadata !533, metadata !534, metadata !536, metadata !537, metadata !538, metadata !539}
!528 = metadata !{i32 786689, metadata !299, metadata !"cf", metadata !6, i32 16777379, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 163]
!529 = metadata !{i32 786689, metadata !299, metadata !"cmd", metadata !6, i32 33554595, metadata !515, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 163]
!530 = metadata !{i32 786689, metadata !299, metadata !"conf", metadata !6, i32 50331811, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 163]
!531 = metadata !{i32 786688, metadata !532, metadata !"p", metadata !6, i32 165, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 165]
!532 = metadata !{i32 786443, metadata !299, i32 164, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!533 = metadata !{i32 786688, metadata !532, metadata !"level", metadata !6, i32 166, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 166]
!534 = metadata !{i32 786688, metadata !532, metadata !"value", metadata !6, i32 167, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 167]
!535 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!536 = metadata !{i32 786688, metadata !532, metadata !"i", metadata !6, i32 168, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 168]
!537 = metadata !{i32 786688, metadata !532, metadata !"n", metadata !6, i32 169, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 169]
!538 = metadata !{i32 786688, metadata !532, metadata !"path", metadata !6, i32 170, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 170]
!539 = metadata !{i32 786688, metadata !532, metadata !"slot", metadata !6, i32 171, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 171]
!540 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!541 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_conf_merge_path_value", metadata !"ngx_conf_merge_path_value", metadata !"", metadata !6, i32 211, metadata !542, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_path_t**, %struct.ngx_path_t*, %struct.ngx_path_init_t*)* @ngx_conf_merge_path_value, null, null, metadata !550, i32 212} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 212] [ngx_conf_merge_path_value]
!542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!543 = metadata !{metadata !115, metadata !302, metadata !540, metadata !121, metadata !544}
!544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_init_t]
!545 = metadata !{i32 786454, null, metadata !"ngx_path_init_t", metadata !6, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [ngx_path_init_t] [line 59, size 0, align 0, offset 0] [from ]
!546 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 56, i64 160, i64 32, i32 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 56, size 160, align 32, offset 0] [from ]
!547 = metadata !{metadata !548, metadata !549}
!548 = metadata !{i32 786445, metadata !546, metadata !"name", metadata !15, i32 57, i64 64, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [name] [line 57, size 64, align 32, offset 0] [from ngx_str_t]
!549 = metadata !{i32 786445, metadata !546, metadata !"level", metadata !15, i32 58, i64 96, i64 32, i64 64, i32 0, metadata !128} ; [ DW_TAG_member ] [level] [line 58, size 96, align 32, offset 64] [from ]
!550 = metadata !{metadata !551}
!551 = metadata !{metadata !552, metadata !553, metadata !554, metadata !555}
!552 = metadata !{i32 786689, metadata !541, metadata !"cf", metadata !6, i32 16777427, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 211]
!553 = metadata !{i32 786689, metadata !541, metadata !"path", metadata !6, i32 33554643, metadata !540, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 211]
!554 = metadata !{i32 786689, metadata !541, metadata !"prev", metadata !6, i32 50331859, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prev] [line 211]
!555 = metadata !{i32 786689, metadata !541, metadata !"init", metadata !6, i32 67109075, metadata !544, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [init] [line 211]
!556 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_conf_set_access_slot", metadata !"ngx_conf_set_access_slot", metadata !"", metadata !6, i32 241, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_access_slot, null, null, metadata !557, i32 242} ; [ DW_TAG_subprogram ] [line 241] [def] [scope 242] [ngx_conf_set_access_slot]
!557 = metadata !{metadata !558}
!558 = metadata !{metadata !559, metadata !560, metadata !561, metadata !562, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !571, metadata !575, metadata !576, metadata !580, metadata !581, metadata !583, metadata !584, metadata !586}
!559 = metadata !{i32 786689, metadata !556, metadata !"cf", metadata !6, i32 16777457, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 241]
!560 = metadata !{i32 786689, metadata !556, metadata !"cmd", metadata !6, i32 33554673, metadata !515, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 241]
!561 = metadata !{i32 786689, metadata !556, metadata !"conf", metadata !6, i32 50331889, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 241]
!562 = metadata !{i32 786688, metadata !563, metadata !"confp", metadata !6, i32 243, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [confp] [line 243]
!563 = metadata !{i32 786443, metadata !556, i32 242, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!564 = metadata !{i32 786688, metadata !563, metadata !"p", metadata !6, i32 244, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 244]
!565 = metadata !{i32 786688, metadata !563, metadata !"value", metadata !6, i32 245, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 245]
!566 = metadata !{i32 786688, metadata !563, metadata !"i", metadata !6, i32 246, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 246]
!567 = metadata !{i32 786688, metadata !563, metadata !"right", metadata !6, i32 247, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 247]
!568 = metadata !{i32 786688, metadata !563, metadata !"shift", metadata !6, i32 248, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 248]
!569 = metadata !{i32 786688, metadata !563, metadata !"access", metadata !6, i32 249, metadata !570, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [access] [line 249]
!570 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!571 = metadata !{i32 786688, metadata !572, metadata !"__s1_len", metadata !6, i32 273, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 273]
!572 = metadata !{i32 786443, metadata !573, i32 273, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!573 = metadata !{i32 786443, metadata !574, i32 256, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!574 = metadata !{i32 786443, metadata !563, i32 256, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!575 = metadata !{i32 786688, metadata !572, metadata !"__s2_len", metadata !6, i32 273, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 273]
!576 = metadata !{i32 786688, metadata !577, metadata !"__s1", metadata !6, i32 273, metadata !578, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 273]
!577 = metadata !{i32 786443, metadata !572, i32 273, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!578 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !579} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!579 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!580 = metadata !{i32 786688, metadata !577, metadata !"__result", metadata !6, i32 273, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 273]
!581 = metadata !{i32 786688, metadata !582, metadata !"__s1_len", metadata !6, i32 276, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 276]
!582 = metadata !{i32 786443, metadata !573, i32 276, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!583 = metadata !{i32 786688, metadata !582, metadata !"__s2_len", metadata !6, i32 276, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 276]
!584 = metadata !{i32 786688, metadata !585, metadata !"__s1", metadata !6, i32 276, metadata !578, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 276]
!585 = metadata !{i32 786443, metadata !582, i32 276, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!586 = metadata !{i32 786688, metadata !585, metadata !"__result", metadata !6, i32 276, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 276]
!587 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_add_path", metadata !"ngx_add_path", metadata !"", metadata !6, i32 290, metadata !588, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_path_t**)* @ngx_add_path, null, null, metadata !590, i32 291} ; [ DW_TAG_subprogram ] [line 290] [def] [scope 291] [ngx_add_path]
!588 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !589, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!589 = metadata !{metadata !228, metadata !302, metadata !540}
!590 = metadata !{metadata !591}
!591 = metadata !{metadata !592, metadata !593, metadata !594, metadata !596, metadata !597, metadata !598, metadata !599, metadata !603}
!592 = metadata !{i32 786689, metadata !587, metadata !"cf", metadata !6, i32 16777506, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 290]
!593 = metadata !{i32 786689, metadata !587, metadata !"slot", metadata !6, i32 33554722, metadata !540, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slot] [line 290]
!594 = metadata !{i32 786688, metadata !595, metadata !"i", metadata !6, i32 292, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 292]
!595 = metadata !{i32 786443, metadata !587, i32 291, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!596 = metadata !{i32 786688, metadata !595, metadata !"n", metadata !6, i32 293, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 293]
!597 = metadata !{i32 786688, metadata !595, metadata !"path", metadata !6, i32 294, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 294]
!598 = metadata !{i32 786688, metadata !595, metadata !"p", metadata !6, i32 295, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 295]
!599 = metadata !{i32 786688, metadata !600, metadata !"__s1_len", metadata !6, i32 299, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 299]
!600 = metadata !{i32 786443, metadata !601, i32 299, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!601 = metadata !{i32 786443, metadata !602, i32 298, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!602 = metadata !{i32 786443, metadata !595, i32 298, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!603 = metadata !{i32 786688, metadata !600, metadata !"__s2_len", metadata !6, i32 299, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 299]
!604 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_create_pathes", metadata !"ngx_create_pathes", metadata !"", metadata !6, i32 331, metadata !605, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*, i32)* @ngx_create_pathes, null, null, metadata !609, i32 332} ; [ DW_TAG_subprogram ] [line 331] [def] [scope 332] [ngx_create_pathes]
!605 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !606, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!606 = metadata !{metadata !228, metadata !319, metadata !607}
!607 = metadata !{i32 786454, null, metadata !"ngx_uid_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !608} ; [ DW_TAG_typedef ] [ngx_uid_t] [line 16, size 0, align 0, offset 0] [from uid_t]
!608 = metadata !{i32 786454, null, metadata !"uid_t", metadata !6, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [uid_t] [line 81, size 0, align 0, offset 0] [from __uid_t]
!609 = metadata !{metadata !610}
!610 = metadata !{metadata !611, metadata !612, metadata !613, metadata !615, metadata !616, metadata !617}
!611 = metadata !{i32 786689, metadata !604, metadata !"cycle", metadata !6, i32 16777547, metadata !319, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 331]
!612 = metadata !{i32 786689, metadata !604, metadata !"user", metadata !6, i32 33554763, metadata !607, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [user] [line 331]
!613 = metadata !{i32 786688, metadata !614, metadata !"err", metadata !6, i32 333, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 333]
!614 = metadata !{i32 786443, metadata !604, i32 332, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!615 = metadata !{i32 786688, metadata !614, metadata !"i", metadata !6, i32 334, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 334]
!616 = metadata !{i32 786688, metadata !614, metadata !"path", metadata !6, i32 335, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 335]
!617 = metadata !{i32 786688, metadata !618, metadata !"fi", metadata !6, i32 351, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fi] [line 351]
!618 = metadata !{i32 786443, metadata !619, i32 350, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!619 = metadata !{i32 786443, metadata !620, i32 337, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!620 = metadata !{i32 786443, metadata !614, i32 337, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!621 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_ext_rename_file", metadata !"ngx_ext_rename_file", metadata !"", metadata !6, i32 378, metadata !622, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_str_t*, %struct.ngx_str_t*, %struct.ngx_ext_rename_file_t*)* @ngx_ext_rename_file, null, null, metadata !635, i32 379} ; [ DW_TAG_subprogram ] [line 378] [def] [scope 379] [ngx_ext_rename_file]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!623 = metadata !{metadata !228, metadata !535, metadata !535, metadata !624}
!624 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_ext_rename_file_t]
!625 = metadata !{i32 786454, null, metadata !"ngx_ext_rename_file_t", metadata !6, i32 87, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_typedef ] [ngx_ext_rename_file_t] [line 87, size 0, align 0, offset 0] [from ]
!626 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 77, i64 192, i64 32, i32 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 77, size 192, align 32, offset 0] [from ]
!627 = metadata !{metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634}
!628 = metadata !{i32 786445, metadata !626, metadata !"access", metadata !15, i32 78, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [access] [line 78, size 32, align 32, offset 0] [from ngx_uint_t]
!629 = metadata !{i32 786445, metadata !626, metadata !"path_access", metadata !15, i32 79, i64 32, i64 32, i64 32, i32 0, metadata !90} ; [ DW_TAG_member ] [path_access] [line 79, size 32, align 32, offset 32] [from ngx_uint_t]
!630 = metadata !{i32 786445, metadata !626, metadata !"time", metadata !15, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [time] [line 80, size 32, align 32, offset 64] [from time_t]
!631 = metadata !{i32 786445, metadata !626, metadata !"fd", metadata !15, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [fd] [line 81, size 32, align 32, offset 96] [from ngx_fd_t]
!632 = metadata !{i32 786445, metadata !626, metadata !"create_path", metadata !15, i32 83, i64 1, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [create_path] [line 83, size 1, align 32, offset 128] [from unsigned int]
!633 = metadata !{i32 786445, metadata !626, metadata !"delete_file", metadata !15, i32 84, i64 1, i64 32, i64 129, i32 0, metadata !30} ; [ DW_TAG_member ] [delete_file] [line 84, size 1, align 32, offset 129] [from unsigned int]
!634 = metadata !{i32 786445, metadata !626, metadata !"log", metadata !15, i32 86, i64 32, i64 32, i64 160, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 86, size 32, align 32, offset 160] [from ]
!635 = metadata !{metadata !636}
!636 = metadata !{metadata !637, metadata !638, metadata !639, metadata !640, metadata !642, metadata !643}
!637 = metadata !{i32 786689, metadata !621, metadata !"src", metadata !6, i32 16777594, metadata !535, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 378]
!638 = metadata !{i32 786689, metadata !621, metadata !"to", metadata !6, i32 33554810, metadata !535, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 378]
!639 = metadata !{i32 786689, metadata !621, metadata !"ext", metadata !6, i32 50332026, metadata !624, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ext] [line 378]
!640 = metadata !{i32 786688, metadata !641, metadata !"name", metadata !6, i32 380, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 380]
!641 = metadata !{i32 786443, metadata !621, i32 379, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!642 = metadata !{i32 786688, metadata !641, metadata !"err", metadata !6, i32 381, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 381]
!643 = metadata !{i32 786688, metadata !641, metadata !"cf", metadata !6, i32 382, metadata !644, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 382]
!644 = metadata !{i32 786454, null, metadata !"ngx_copy_file_t", metadata !6, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !645} ; [ DW_TAG_typedef ] [ngx_copy_file_t] [line 98, size 0, align 0, offset 0] [from ]
!645 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 90, size 192, align 32, offset 0] [from ]
!646 = metadata !{metadata !647, metadata !648, metadata !649, metadata !650, metadata !651}
!647 = metadata !{i32 786445, metadata !645, metadata !"size", metadata !15, i32 91, i64 64, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [size] [line 91, size 64, align 32, offset 0] [from off_t]
!648 = metadata !{i32 786445, metadata !645, metadata !"buf_size", metadata !15, i32 92, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [buf_size] [line 92, size 32, align 32, offset 64] [from size_t]
!649 = metadata !{i32 786445, metadata !645, metadata !"access", metadata !15, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !90} ; [ DW_TAG_member ] [access] [line 94, size 32, align 32, offset 96] [from ngx_uint_t]
!650 = metadata !{i32 786445, metadata !645, metadata !"time", metadata !15, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [time] [line 95, size 32, align 32, offset 128] [from time_t]
!651 = metadata !{i32 786445, metadata !645, metadata !"log", metadata !15, i32 97, i64 32, i64 32, i64 160, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 97, size 32, align 32, offset 160] [from ]
!652 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_copy_file", metadata !"ngx_copy_file", metadata !"", metadata !6, i32 468, metadata !653, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, %struct.ngx_copy_file_t*)* @ngx_copy_file, null, null, metadata !656, i32 469} ; [ DW_TAG_subprogram ] [line 468] [def] [scope 469] [ngx_copy_file]
!653 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!654 = metadata !{metadata !228, metadata !32, metadata !32, metadata !655}
!655 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !644} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_copy_file_t]
!656 = metadata !{metadata !657}
!657 = metadata !{metadata !658, metadata !659, metadata !660, metadata !661, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669}
!658 = metadata !{i32 786689, metadata !652, metadata !"from", metadata !6, i32 16777684, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 468]
!659 = metadata !{i32 786689, metadata !652, metadata !"to", metadata !6, i32 33554900, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 468]
!660 = metadata !{i32 786689, metadata !652, metadata !"cf", metadata !6, i32 50332116, metadata !655, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 468]
!661 = metadata !{i32 786688, metadata !662, metadata !"buf", metadata !6, i32 470, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 470]
!662 = metadata !{i32 786443, metadata !652, i32 469, i32 0, metadata !6, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!663 = metadata !{i32 786688, metadata !662, metadata !"size", metadata !6, i32 471, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 471]
!664 = metadata !{i32 786688, metadata !662, metadata !"len", metadata !6, i32 472, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 472]
!665 = metadata !{i32 786688, metadata !662, metadata !"n", metadata !6, i32 473, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 473]
!666 = metadata !{i32 786688, metadata !662, metadata !"fd", metadata !6, i32 474, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 474]
!667 = metadata !{i32 786688, metadata !662, metadata !"nfd", metadata !6, i32 475, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfd] [line 475]
!668 = metadata !{i32 786688, metadata !662, metadata !"rc", metadata !6, i32 476, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 476]
!669 = metadata !{i32 786688, metadata !662, metadata !"fi", metadata !6, i32 477, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fi] [line 477]
!670 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_walk_tree", metadata !"ngx_walk_tree", metadata !"", metadata !6, i32 584, metadata !671, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_tree_ctx_s*, %struct.ngx_str_t*)* @ngx_walk_tree, null, null, metadata !699, i32 585} ; [ DW_TAG_subprogram ] [line 584] [def] [scope 585] [ngx_walk_tree]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!672 = metadata !{metadata !228, metadata !673, metadata !535}
!673 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !674} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_tree_ctx_t]
!674 = metadata !{i32 786454, null, metadata !"ngx_tree_ctx_t", metadata !6, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !675} ; [ DW_TAG_typedef ] [ngx_tree_ctx_t] [line 101, size 0, align 0, offset 0] [from ngx_tree_ctx_s]
!675 = metadata !{i32 786451, null, metadata !"ngx_tree_ctx_s", metadata !15, i32 106, i64 448, i64 32, i32 0, i32 0, null, metadata !676, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_tree_ctx_s] [line 106, size 448, align 32, offset 0] [from ]
!676 = metadata !{metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !686, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698}
!677 = metadata !{i32 786445, metadata !675, metadata !"size", metadata !15, i32 107, i64 64, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [size] [line 107, size 64, align 32, offset 0] [from off_t]
!678 = metadata !{i32 786445, metadata !675, metadata !"fs_size", metadata !15, i32 108, i64 64, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [fs_size] [line 108, size 64, align 32, offset 64] [from off_t]
!679 = metadata !{i32 786445, metadata !675, metadata !"access", metadata !15, i32 109, i64 32, i64 32, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [access] [line 109, size 32, align 32, offset 128] [from ngx_uint_t]
!680 = metadata !{i32 786445, metadata !675, metadata !"mtime", metadata !15, i32 110, i64 32, i64 32, i64 160, i32 0, metadata !136} ; [ DW_TAG_member ] [mtime] [line 110, size 32, align 32, offset 160] [from time_t]
!681 = metadata !{i32 786445, metadata !675, metadata !"init_handler", metadata !15, i32 112, i64 32, i64 32, i64 192, i32 0, metadata !682} ; [ DW_TAG_member ] [init_handler] [line 112, size 32, align 32, offset 192] [from ngx_tree_init_handler_pt]
!682 = metadata !{i32 786454, null, metadata !"ngx_tree_init_handler_pt", metadata !15, i32 103, i64 0, i64 0, i64 0, i32 0, metadata !683} ; [ DW_TAG_typedef ] [ngx_tree_init_handler_pt] [line 103, size 0, align 0, offset 0] [from ]
!683 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !684} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!684 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !685, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!685 = metadata !{metadata !228, metadata !113, metadata !113}
!686 = metadata !{i32 786445, metadata !675, metadata !"file_handler", metadata !15, i32 113, i64 32, i64 32, i64 224, i32 0, metadata !687} ; [ DW_TAG_member ] [file_handler] [line 113, size 32, align 32, offset 224] [from ngx_tree_handler_pt]
!687 = metadata !{i32 786454, null, metadata !"ngx_tree_handler_pt", metadata !15, i32 104, i64 0, i64 0, i64 0, i32 0, metadata !688} ; [ DW_TAG_typedef ] [ngx_tree_handler_pt] [line 104, size 0, align 0, offset 0] [from ]
!688 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !689} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!689 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !690, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!690 = metadata !{metadata !228, metadata !691, metadata !535}
!691 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !692} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_tree_ctx_t]
!692 = metadata !{i32 786454, null, metadata !"ngx_tree_ctx_t", metadata !15, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !675} ; [ DW_TAG_typedef ] [ngx_tree_ctx_t] [line 101, size 0, align 0, offset 0] [from ngx_tree_ctx_s]
!693 = metadata !{i32 786445, metadata !675, metadata !"pre_tree_handler", metadata !15, i32 114, i64 32, i64 32, i64 256, i32 0, metadata !687} ; [ DW_TAG_member ] [pre_tree_handler] [line 114, size 32, align 32, offset 256] [from ngx_tree_handler_pt]
!694 = metadata !{i32 786445, metadata !675, metadata !"post_tree_handler", metadata !15, i32 115, i64 32, i64 32, i64 288, i32 0, metadata !687} ; [ DW_TAG_member ] [post_tree_handler] [line 115, size 32, align 32, offset 288] [from ngx_tree_handler_pt]
!695 = metadata !{i32 786445, metadata !675, metadata !"spec_handler", metadata !15, i32 116, i64 32, i64 32, i64 320, i32 0, metadata !687} ; [ DW_TAG_member ] [spec_handler] [line 116, size 32, align 32, offset 320] [from ngx_tree_handler_pt]
!696 = metadata !{i32 786445, metadata !675, metadata !"data", metadata !15, i32 118, i64 32, i64 32, i64 352, i32 0, metadata !113} ; [ DW_TAG_member ] [data] [line 118, size 32, align 32, offset 352] [from ]
!697 = metadata !{i32 786445, metadata !675, metadata !"alloc", metadata !15, i32 119, i64 32, i64 32, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [alloc] [line 119, size 32, align 32, offset 384] [from size_t]
!698 = metadata !{i32 786445, metadata !675, metadata !"log", metadata !15, i32 121, i64 32, i64 32, i64 416, i32 0, metadata !84} ; [ DW_TAG_member ] [log] [line 121, size 32, align 32, offset 416] [from ]
!699 = metadata !{metadata !700}
!700 = metadata !{metadata !701, metadata !702, metadata !703, metadata !705, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713}
!701 = metadata !{i32 786689, metadata !670, metadata !"ctx", metadata !6, i32 16777800, metadata !673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 584]
!702 = metadata !{i32 786689, metadata !670, metadata !"tree", metadata !6, i32 33555016, metadata !535, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 584]
!703 = metadata !{i32 786688, metadata !704, metadata !"data", metadata !6, i32 586, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 586]
!704 = metadata !{i32 786443, metadata !670, i32 585, i32 0, metadata !6, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!705 = metadata !{i32 786688, metadata !704, metadata !"prev", metadata !6, i32 587, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 587]
!706 = metadata !{i32 786688, metadata !704, metadata !"p", metadata !6, i32 588, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 588]
!707 = metadata !{i32 786688, metadata !704, metadata !"name", metadata !6, i32 589, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 589]
!708 = metadata !{i32 786688, metadata !704, metadata !"len", metadata !6, i32 590, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 590]
!709 = metadata !{i32 786688, metadata !704, metadata !"rc", metadata !6, i32 591, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 591]
!710 = metadata !{i32 786688, metadata !704, metadata !"err", metadata !6, i32 592, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 592]
!711 = metadata !{i32 786688, metadata !704, metadata !"file", metadata !6, i32 593, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 593]
!712 = metadata !{i32 786688, metadata !704, metadata !"buf", metadata !6, i32 594, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 594]
!713 = metadata !{i32 786688, metadata !704, metadata !"dir", metadata !6, i32 595, metadata !714, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 595]
!714 = metadata !{i32 786454, null, metadata !"ngx_dir_t", metadata !6, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_typedef ] [ngx_dir_t] [line 37, size 0, align 0, offset 0] [from ]
!715 = metadata !{i32 786451, null, metadata !"", metadata !716, i32 30, i64 864, i64 32, i32 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 30, size 864, align 32, offset 0] [from ]
!716 = metadata !{i32 786473, metadata !"src/os/unix/ngx_files.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!717 = metadata !{metadata !718, metadata !723, metadata !736, metadata !737, metadata !738}
!718 = metadata !{i32 786445, metadata !715, metadata !"dir", metadata !716, i32 31, i64 32, i64 32, i64 0, i32 0, metadata !719} ; [ DW_TAG_member ] [dir] [line 31, size 32, align 32, offset 0] [from ]
!719 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !720} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from DIR]
!720 = metadata !{i32 786454, null, metadata !"DIR", metadata !716, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !721} ; [ DW_TAG_typedef ] [DIR] [line 128, size 0, align 0, offset 0] [from __dirstream]
!721 = metadata !{i32 786451, null, metadata !"__dirstream", metadata !722, i32 128, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [__dirstream] [line 128, size 0, align 0, offset 0] [fwd] [from ]
!722 = metadata !{i32 786473, metadata !"/usr/include/dirent.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!723 = metadata !{i32 786445, metadata !715, metadata !"de", metadata !716, i32 32, i64 32, i64 32, i64 32, i32 0, metadata !724} ; [ DW_TAG_member ] [de] [line 32, size 32, align 32, offset 32] [from ]
!724 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !725} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from dirent]
!725 = metadata !{i32 786451, null, metadata !"dirent", metadata !726, i32 23, i64 2208, i64 32, i32 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_structure_type ] [dirent] [line 23, size 2208, align 32, offset 0] [from ]
!726 = metadata !{i32 786473, metadata !"/usr/include/bits/dirent.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!727 = metadata !{metadata !728, metadata !729, metadata !730, metadata !731, metadata !732}
!728 = metadata !{i32 786445, metadata !725, metadata !"d_ino", metadata !726, i32 29, i64 64, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [d_ino] [line 29, size 64, align 32, offset 0] [from __ino64_t]
!729 = metadata !{i32 786445, metadata !725, metadata !"d_off", metadata !726, i32 30, i64 64, i64 32, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [d_off] [line 30, size 64, align 32, offset 64] [from __off64_t]
!730 = metadata !{i32 786445, metadata !725, metadata !"d_reclen", metadata !726, i32 32, i64 16, i64 16, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [d_reclen] [line 32, size 16, align 16, offset 128] [from unsigned short]
!731 = metadata !{i32 786445, metadata !725, metadata !"d_type", metadata !726, i32 33, i64 8, i64 8, i64 144, i32 0, metadata !35} ; [ DW_TAG_member ] [d_type] [line 33, size 8, align 8, offset 144] [from unsigned char]
!732 = metadata !{i32 786445, metadata !725, metadata !"d_name", metadata !726, i32 34, i64 2048, i64 8, i64 152, i32 0, metadata !733} ; [ DW_TAG_member ] [d_name] [line 34, size 2048, align 8, offset 152] [from ]
!733 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !116, metadata !734, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!734 = metadata !{metadata !735}
!735 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ] [0, 255]
!736 = metadata !{i32 786445, metadata !715, metadata !"info", metadata !716, i32 33, i64 768, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [info] [line 33, size 768, align 32, offset 64] [from stat]
!737 = metadata !{i32 786445, metadata !715, metadata !"type", metadata !716, i32 35, i64 8, i64 32, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [type] [line 35, size 8, align 32, offset 832] [from unsigned int]
!738 = metadata !{i32 786445, metadata !715, metadata !"valid_info", metadata !716, i32 36, i64 1, i64 32, i64 840, i32 0, metadata !30} ; [ DW_TAG_member ] [valid_info] [line 36, size 1, align 32, offset 840] [from unsigned int]
!739 = metadata !{i32 786478, i32 0, metadata !716, metadata !"ngx_de_info", metadata !"ngx_de_info", metadata !"", metadata !716, i32 256, metadata !740, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !743, i32 257} ; [ DW_TAG_subprogram ] [line 256] [local] [def] [scope 257] [ngx_de_info]
!740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!741 = metadata !{metadata !228, metadata !32, metadata !742}
!742 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !714} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_dir_t]
!743 = metadata !{metadata !744}
!744 = metadata !{metadata !745, metadata !746}
!745 = metadata !{i32 786689, metadata !739, metadata !"name", metadata !716, i32 16777472, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 256]
!746 = metadata !{i32 786689, metadata !739, metadata !"dir", metadata !716, i32 33554688, metadata !742, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 256]
!747 = metadata !{i32 786478, i32 0, metadata !716, metadata !"ngx_write_fd", metadata !"ngx_write_fd", metadata !"", metadata !716, i32 140, metadata !748, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !750, i32 141} ; [ DW_TAG_subprogram ] [line 140] [local] [def] [scope 141] [ngx_write_fd]
!748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!749 = metadata !{metadata !9, metadata !22, metadata !113, metadata !29}
!750 = metadata !{metadata !751}
!751 = metadata !{metadata !752, metadata !753, metadata !754}
!752 = metadata !{i32 786689, metadata !747, metadata !"fd", metadata !716, i32 16777356, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!753 = metadata !{i32 786689, metadata !747, metadata !"buf", metadata !716, i32 33554572, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!754 = metadata !{i32 786689, metadata !747, metadata !"n", metadata !716, i32 50331788, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 140]
!755 = metadata !{i32 786478, i32 0, metadata !756, metadata !"fstat64", metadata !"fstat64", metadata !"", metadata !756, i32 518, metadata !757, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !778, i32 519} ; [ DW_TAG_subprogram ] [line 518] [def] [scope 519] [fstat64]
!756 = metadata !{i32 786473, metadata !"/usr/include/sys/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!758 = metadata !{metadata !11, metadata !11, metadata !759}
!759 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !760} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from stat64]
!760 = metadata !{i32 786451, null, metadata !"stat64", metadata !39, i32 119, i64 768, i64 32, i32 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat64] [line 119, size 768, align 32, offset 0] [from ]
!761 = metadata !{metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777}
!762 = metadata !{i32 786445, metadata !760, metadata !"st_dev", metadata !39, i32 121, i64 64, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [st_dev] [line 121, size 64, align 32, offset 0] [from __dev_t]
!763 = metadata !{i32 786445, metadata !760, metadata !"__pad1", metadata !39, i32 127, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [__pad1] [line 127, size 32, align 32, offset 64] [from unsigned int]
!764 = metadata !{i32 786445, metadata !760, metadata !"__st_ino", metadata !39, i32 128, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [__st_ino] [line 128, size 32, align 32, offset 96] [from __ino_t]
!765 = metadata !{i32 786445, metadata !760, metadata !"st_mode", metadata !39, i32 129, i64 32, i64 32, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [st_mode] [line 129, size 32, align 32, offset 128] [from __mode_t]
!766 = metadata !{i32 786445, metadata !760, metadata !"st_nlink", metadata !39, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !53} ; [ DW_TAG_member ] [st_nlink] [line 130, size 32, align 32, offset 160] [from __nlink_t]
!767 = metadata !{i32 786445, metadata !760, metadata !"st_uid", metadata !39, i32 132, i64 32, i64 32, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [st_uid] [line 132, size 32, align 32, offset 192] [from __uid_t]
!768 = metadata !{i32 786445, metadata !760, metadata !"st_gid", metadata !39, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !57} ; [ DW_TAG_member ] [st_gid] [line 133, size 32, align 32, offset 224] [from __gid_t]
!769 = metadata !{i32 786445, metadata !760, metadata !"st_rdev", metadata !39, i32 139, i64 64, i64 32, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [st_rdev] [line 139, size 64, align 32, offset 256] [from __dev_t]
!770 = metadata !{i32 786445, metadata !760, metadata !"__pad2", metadata !39, i32 140, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [__pad2] [line 140, size 32, align 32, offset 320] [from unsigned int]
!771 = metadata !{i32 786445, metadata !760, metadata !"st_size", metadata !39, i32 141, i64 64, i64 32, i64 352, i32 0, metadata !61} ; [ DW_TAG_member ] [st_size] [line 141, size 64, align 32, offset 352] [from __off64_t]
!772 = metadata !{i32 786445, metadata !760, metadata !"st_blksize", metadata !39, i32 143, i64 32, i64 32, i64 416, i32 0, metadata !65} ; [ DW_TAG_member ] [st_blksize] [line 143, size 32, align 32, offset 416] [from __blksize_t]
!773 = metadata !{i32 786445, metadata !760, metadata !"st_blocks", metadata !39, i32 144, i64 64, i64 32, i64 448, i32 0, metadata !68} ; [ DW_TAG_member ] [st_blocks] [line 144, size 64, align 32, offset 448] [from __blkcnt64_t]
!774 = metadata !{i32 786445, metadata !760, metadata !"st_atim", metadata !39, i32 152, i64 64, i64 32, i64 512, i32 0, metadata !70} ; [ DW_TAG_member ] [st_atim] [line 152, size 64, align 32, offset 512] [from timespec]
!775 = metadata !{i32 786445, metadata !760, metadata !"st_mtim", metadata !39, i32 153, i64 64, i64 32, i64 576, i32 0, metadata !70} ; [ DW_TAG_member ] [st_mtim] [line 153, size 64, align 32, offset 576] [from timespec]
!776 = metadata !{i32 786445, metadata !760, metadata !"st_ctim", metadata !39, i32 154, i64 64, i64 32, i64 640, i32 0, metadata !70} ; [ DW_TAG_member ] [st_ctim] [line 154, size 64, align 32, offset 640] [from timespec]
!777 = metadata !{i32 786445, metadata !760, metadata !"st_ino", metadata !39, i32 169, i64 64, i64 32, i64 704, i32 0, metadata !79} ; [ DW_TAG_member ] [st_ino] [line 169, size 64, align 32, offset 704] [from __ino64_t]
!778 = metadata !{metadata !779}
!779 = metadata !{metadata !780, metadata !781}
!780 = metadata !{i32 786689, metadata !755, metadata !"__fd", metadata !756, i32 16777734, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__fd] [line 518]
!781 = metadata !{i32 786689, metadata !755, metadata !"__statbuf", metadata !756, i32 33554950, metadata !759, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 518]
!782 = metadata !{i32 786478, i32 0, metadata !756, metadata !"stat64", metadata !"stat64", metadata !"", metadata !756, i32 504, metadata !783, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !787, i32 505} ; [ DW_TAG_subprogram ] [line 504] [def] [scope 505] [stat64]
!783 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!784 = metadata !{metadata !11, metadata !785, metadata !759}
!785 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !786} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!786 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!787 = metadata !{metadata !788}
!788 = metadata !{metadata !789, metadata !790}
!789 = metadata !{i32 786689, metadata !782, metadata !"__path", metadata !756, i32 16777720, metadata !785, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__path] [line 504]
!790 = metadata !{i32 786689, metadata !782, metadata !"__statbuf", metadata !756, i32 33554936, metadata !759, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__statbuf] [line 504]
!791 = metadata !{metadata !792}
!792 = metadata !{metadata !793, metadata !797, metadata !799}
!793 = metadata !{i32 786484, i32 0, null, metadata !"ngx_temp_number", metadata !"ngx_temp_number", metadata !"", metadata !6, i32 8, metadata !794, i32 0, i32 1, i32** @ngx_temp_number} ; [ DW_TAG_variable ] [ngx_temp_number] [line 8] [def]
!794 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !795} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!795 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !6, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!796 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!797 = metadata !{i32 786484, i32 0, null, metadata !"ngx_random_number", metadata !"ngx_random_number", metadata !"", metadata !6, i32 9, metadata !798, i32 0, i32 1, i32* @ngx_random_number} ; [ DW_TAG_variable ] [ngx_random_number] [line 9] [def]
!798 = metadata !{i32 786454, null, metadata !"ngx_atomic_int_t", metadata !6, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [ngx_atomic_int_t] [line 97, size 0, align 0, offset 0] [from long int]
!799 = metadata !{i32 786484, i32 0, null, metadata !"temp_number", metadata !"temp_number", metadata !"", metadata !6, i32 7, metadata !795, i32 1, i32 1, i32* @temp_number} ; [ DW_TAG_variable ] [temp_number] [line 7] [local] [def]
!800 = metadata !{i32 11, i32 0, metadata !5, null}
!801 = metadata !{i32 14, i32 0, metadata !227, null}
!802 = metadata !{metadata !"int", metadata !803}
!803 = metadata !{metadata !"omnipotent char", metadata !804}
!804 = metadata !{metadata !"Simple C/C++ TBAA"}
!805 = metadata !{i32 24, i32 0, metadata !227, null}
!806 = metadata !{i32 15, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !227, i32 14, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!808 = metadata !{metadata !"any pointer", metadata !803}
!809 = metadata !{i32 16, i32 0, metadata !807, null}
!810 = metadata !{i32 19, i32 0, metadata !807, null}
!811 = metadata !{i32 20, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !807, i32 19, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!813 = metadata !{i32 21, i32 0, metadata !812, null}
!814 = metadata !{metadata !"long long", metadata !803}
!815 = metadata !{i32 25, i32 0, metadata !227, null}
!816 = metadata !{i32 27, i32 0, metadata !231, null}
!817 = metadata !{i32 33, i32 0, metadata !243, null}
!818 = metadata !{i32 34, i32 0, metadata !243, null}
!819 = metadata !{i32 35, i32 0, metadata !243, null}
!820 = metadata !{i32 40, i32 0, metadata !243, null}
!821 = metadata !{i32 786689, metadata !290, metadata !"collision", metadata !6, i32 16777370, metadata !90, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [collision] [line 154]
!822 = metadata !{i32 41, i32 0, metadata !243, null}
!823 = metadata !{i32 154, i32 0, metadata !290, metadata !822}
!824 = metadata !{i32 1}
!825 = metadata !{i32 786688, metadata !297, metadata !"add", metadata !6, i32 157, metadata !104, i32 0, metadata !822} ; [ DW_TAG_auto_variable ] [add] [line 157]
!826 = metadata !{i32 158, i32 0, metadata !297, metadata !822}
!827 = metadata !{i32 159, i32 0, metadata !297, metadata !822}
!828 = metadata !{i32 786688, metadata !297, metadata !"n", metadata !6, i32 156, metadata !104, i32 0, metadata !822} ; [ DW_TAG_auto_variable ] [n] [line 156]
!829 = metadata !{i32 160, i32 0, metadata !297, metadata !822}
!830 = metadata !{i32 42, i32 0, metadata !243, null}
!831 = metadata !{i32 43, i32 0, metadata !243, null}
!832 = metadata !{i32 50, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !834, i32 46, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!834 = metadata !{i32 786443, metadata !243, i32 46, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!835 = metadata !{i32 65, i32 0, metadata !833, null}
!836 = metadata !{i32 47, i32 0, metadata !833, null}
!837 = metadata !{i32 48, i32 0, metadata !833, null}
!838 = metadata !{i32 52, i32 0, metadata !833, null}
!839 = metadata !{i32 53, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !833, i32 52, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!841 = metadata !{i32 54, i32 0, metadata !840, null}
!842 = metadata !{i32 55, i32 0, metadata !840, null}
!843 = metadata !{i32 56, i32 0, metadata !840, null}
!844 = metadata !{i32 57, i32 0, metadata !840, null}
!845 = metadata !{i32 58, i32 0, metadata !840, null}
!846 = metadata !{i32 60, i32 0, metadata !833, null}
!847 = metadata !{i32 61, i32 0, metadata !833, null}
!848 = metadata !{i32 786689, metadata !290, metadata !"collision", metadata !6, i32 16777370, metadata !90, i32 0, metadata !849} ; [ DW_TAG_arg_variable ] [collision] [line 154]
!849 = metadata !{i32 62, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !833, i32 61, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!851 = metadata !{i32 154, i32 0, metadata !290, metadata !849}
!852 = metadata !{i32 158, i32 0, metadata !297, metadata !849}
!853 = metadata !{metadata !"long", metadata !803}
!854 = metadata !{i32 786688, metadata !297, metadata !"add", metadata !6, i32 157, metadata !104, i32 0, metadata !849} ; [ DW_TAG_auto_variable ] [add] [line 157]
!855 = metadata !{i32 159, i32 0, metadata !297, metadata !849}
!856 = metadata !{i32 786688, metadata !297, metadata !"n", metadata !6, i32 156, metadata !104, i32 0, metadata !849} ; [ DW_TAG_auto_variable ] [n] [line 156]
!857 = metadata !{i32 160, i32 0, metadata !297, metadata !849}
!858 = metadata !{i32 66, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !833, i32 65, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!860 = metadata !{i32 67, i32 0, metadata !859, null}
!861 = metadata !{i32 70, i32 0, metadata !833, null}
!862 = metadata !{i32 74, i32 0, metadata !243, null}
!863 = metadata !{i32 154, i32 0, metadata !290, null}
!864 = metadata !{i32 158, i32 0, metadata !297, null}
!865 = metadata !{i32 159, i32 0, metadata !297, null}
!866 = metadata !{i32 160, i32 0, metadata !297, null}
!867 = metadata !{i32 76, i32 0, metadata !256, null}
!868 = metadata !{i32 81, i32 0, metadata !265, null}
!869 = metadata !{i32 82, i32 0, metadata !265, null}
!870 = metadata !{i32 83, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !265, i32 83, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!872 = metadata !{i32 84, i32 0, metadata !873, null}
!873 = metadata !{i32 786443, metadata !871, i32 83, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!874 = metadata !{i32 85, i32 0, metadata !873, null}
!875 = metadata !{i32 88, i32 0, metadata !873, null}
!876 = metadata !{i32 89, i32 0, metadata !873, null}
!877 = metadata !{i32 90, i32 0, metadata !873, null}
!878 = metadata !{i32 91, i32 0, metadata !873, null}
!879 = metadata !{i32 93, i32 0, metadata !265, null}
!880 = metadata !{i32 95, i32 0, metadata !268, null}
!881 = metadata !{i32 100, i32 0, metadata !276, null}
!882 = metadata !{i32 101, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !276, i32 101, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!884 = metadata !{i32 106, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !883, i32 101, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!886 = metadata !{i32 102, i32 0, metadata !885, null}
!887 = metadata !{i32 105, i32 0, metadata !885, null}
!888 = metadata !{i32 108, i32 0, metadata !885, null}
!889 = metadata !{i32 109, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !885, i32 108, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!891 = metadata !{i32 110, i32 0, metadata !890, null}
!892 = metadata !{i32 111, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !890, i32 110, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!894 = metadata !{i32 112, i32 0, metadata !893, null}
!895 = metadata !{i32 116, i32 0, metadata !885, null}
!896 = metadata !{i32 119, i32 0, metadata !276, null}
!897 = metadata !{i32 121, i32 0, metadata !279, null}
!898 = metadata !{i32 126, i32 0, metadata !287, null}
!899 = metadata !{i32 132, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !287, i32 132, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!901 = metadata !{i32 129, i32 0, metadata !287, null}
!902 = metadata !{i32 137, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !900, i32 132, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!904 = metadata !{i32 138, i32 0, metadata !903, null}
!905 = metadata !{i32 139, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !903, i32 138, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!907 = metadata !{i32 140, i32 0, metadata !906, null}
!908 = metadata !{i32 142, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !906, i32 140, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!910 = metadata !{i32 149, i32 0, metadata !903, null}
!911 = metadata !{i32 150, i32 0, metadata !903, null}
!912 = metadata !{i32 152, i32 0, metadata !287, null}
!913 = metadata !{i32 163, i32 0, metadata !299, null}
!914 = metadata !{i32 165, i32 0, metadata !532, null}
!915 = metadata !{i32 172, i32 0, metadata !532, null}
!916 = metadata !{i32 173, i32 0, metadata !532, null}
!917 = metadata !{i32 176, i32 0, metadata !532, null}
!918 = metadata !{i32 177, i32 0, metadata !532, null}
!919 = metadata !{i32 180, i32 0, metadata !532, null}
!920 = metadata !{i32 181, i32 0, metadata !532, null}
!921 = metadata !{i32 182, i32 0, metadata !532, null}
!922 = metadata !{i32 183, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !532, i32 182, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!924 = metadata !{i32 184, i32 0, metadata !923, null}
!925 = metadata !{i32 185, i32 0, metadata !532, null}
!926 = metadata !{i32 188, i32 0, metadata !532, null}
!927 = metadata !{i32 189, i32 0, metadata !532, null}
!928 = metadata !{i32 190, i32 0, metadata !532, null}
!929 = metadata !{i32 191, i32 0, metadata !532, null}
!930 = metadata !{i32 192, i32 0, metadata !532, null}
!931 = metadata !{i32 193, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !532, i32 193, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!933 = metadata !{i32 2}
!934 = metadata !{i32 198, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !932, i32 193, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!936 = metadata !{i32 201, i32 0, metadata !532, null}
!937 = metadata !{i32 202, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !532, i32 201, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!939 = metadata !{i32 194, i32 0, metadata !935, null}
!940 = metadata !{i32 195, i32 0, metadata !935, null}
!941 = metadata !{i32 199, i32 0, metadata !935, null}
!942 = metadata !{i32 204, i32 0, metadata !532, null}
!943 = metadata !{i32 205, i32 0, metadata !532, null}
!944 = metadata !{i32 209, i32 0, metadata !532, null}
!945 = metadata !{i32 290, i32 0, metadata !587, null}
!946 = metadata !{i32 296, i32 0, metadata !595, null}
!947 = metadata !{i32 297, i32 0, metadata !595, null}
!948 = metadata !{i32 298, i32 0, metadata !602, null}
!949 = metadata !{i32 299, i32 0, metadata !601, null}
!950 = metadata !{i32 299, i32 0, metadata !600, null}
!951 = metadata !{i32 301, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !953, i32 300, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!953 = metadata !{i32 786443, metadata !954, i32 300, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!954 = metadata !{i32 786443, metadata !601, i32 299, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!955 = metadata !{i32 302, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !952, i32 301, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!957 = metadata !{i32 303, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !956, i32 302, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!959 = metadata !{i32 304, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !958, i32 303, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!961 = metadata !{i32 305, i32 0, metadata !960, null}
!962 = metadata !{i32 308, i32 0, metadata !958, null}
!963 = metadata !{i32 309, i32 0, metadata !958, null}
!964 = metadata !{i32 312, i32 0, metadata !956, null}
!965 = metadata !{i32 313, i32 0, metadata !956, null}
!966 = metadata !{i32 315, i32 0, metadata !952, null}
!967 = metadata !{i32 300, i32 0, metadata !953, null}
!968 = metadata !{i32 319, i32 0, metadata !954, null}
!969 = metadata !{i32 320, i32 0, metadata !954, null}
!970 = metadata !{i32 323, i32 0, metadata !595, null}
!971 = metadata !{i32 324, i32 0, metadata !595, null}
!972 = metadata !{i32 327, i32 0, metadata !595, null}
!973 = metadata !{i32 328, i32 0, metadata !595, null}
!974 = metadata !{i32 329, i32 0, metadata !595, null}
!975 = metadata !{i32 211, i32 0, metadata !541, null}
!976 = metadata !{i32 213, i32 0, metadata !977, null}
!977 = metadata !{i32 786443, metadata !541, i32 212, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!978 = metadata !{i32 216, i32 0, metadata !977, null}
!979 = metadata !{i32 217, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !977, i32 216, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!981 = metadata !{i32 218, i32 0, metadata !980, null}
!982 = metadata !{i32 220, i32 0, metadata !977, null}
!983 = metadata !{i32 221, i32 0, metadata !977, null}
!984 = metadata !{i32 224, i32 0, metadata !977, null}
!985 = metadata !{i32 225, i32 0, metadata !977, null}
!986 = metadata !{i32 228, i32 0, metadata !977, null}
!987 = metadata !{i32 229, i32 0, metadata !977, null}
!988 = metadata !{i32 230, i32 0, metadata !977, null}
!989 = metadata !{i32 231, i32 0, metadata !977, null}
!990 = metadata !{i32 232, i32 0, metadata !977, null}
!991 = metadata !{i32 233, i32 0, metadata !977, null}
!992 = metadata !{i32 234, i32 0, metadata !977, null}
!993 = metadata !{i32 235, i32 0, metadata !977, null}
!994 = metadata !{i32 239, i32 0, metadata !977, null}
!995 = metadata !{i32 241, i32 0, metadata !556, null}
!996 = metadata !{i32 243, i32 0, metadata !563, null}
!997 = metadata !{i32 250, i32 0, metadata !563, null}
!998 = metadata !{i32 251, i32 0, metadata !563, null}
!999 = metadata !{i32 254, i32 0, metadata !563, null}
!1000 = metadata !{i32 255, i32 0, metadata !563, null}
!1001 = metadata !{i32 256, i32 0, metadata !574, null}
!1002 = metadata !{i32 273, i32 0, metadata !572, null}
!1003 = metadata !{i32 276, i32 0, metadata !582, null}
!1004 = metadata !{i32 257, i32 0, metadata !573, null}
!1005 = metadata !{i32 258, i32 0, metadata !573, null}
!1006 = metadata !{i32 6}
!1007 = metadata !{i32 259, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !573, i32 258, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1009 = metadata !{i32 260, i32 0, metadata !1008, null}
!1010 = metadata !{i32 261, i32 0, metadata !1008, null}
!1011 = metadata !{i32 262, i32 0, metadata !573, null}
!1012 = metadata !{i32 3}
!1013 = metadata !{i32 263, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !573, i32 262, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1015 = metadata !{i32 264, i32 0, metadata !1014, null}
!1016 = metadata !{i32 265, i32 0, metadata !1014, null}
!1017 = metadata !{i32 266, i32 0, metadata !573, null}
!1018 = metadata !{i32 267, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !573, i32 266, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1020 = metadata !{i32 268, i32 0, metadata !1019, null}
!1021 = metadata !{i32 273, i32 0, metadata !577, null}
!1022 = metadata !{i32 273, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !577, i32 273, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1024 = metadata !{i32 273, i32 0, metadata !1025, null}
!1025 = metadata !{i32 786443, metadata !1023, i32 273, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1026 = metadata !{i32 276, i32 0, metadata !585, null}
!1027 = metadata !{i32 276, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !585, i32 276, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1029 = metadata !{i32 276, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1028, i32 276, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1031 = metadata !{i32 282, i32 0, metadata !573, null}
!1032 = metadata !{i32 286, i32 0, metadata !563, null}
!1033 = metadata !{i32 287, i32 0, metadata !563, null}
!1034 = metadata !{i32 288, i32 0, metadata !563, null}
!1035 = metadata !{i32 331, i32 0, metadata !604, null}
!1036 = metadata !{i32 336, i32 0, metadata !614, null}
!1037 = metadata !{i32 337, i32 0, metadata !620, null}
!1038 = metadata !{i32 346, i32 0, metadata !619, null}
!1039 = metadata !{i32 352, i32 0, metadata !618, null}
!1040 = metadata !{i32 357, i32 0, metadata !618, null}
!1041 = metadata !{i32 364, i32 0, metadata !618, null}
!1042 = metadata !{i32 338, i32 0, metadata !619, null}
!1043 = metadata !{i32 339, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !619, i32 338, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1045 = metadata !{i32 340, i32 0, metadata !1044, null}
!1046 = metadata !{i32 341, i32 0, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !1044, i32 340, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1048 = metadata !{i32 342, i32 0, metadata !1047, null}
!1049 = metadata !{i32 351, i32 0, metadata !618, null}
!1050 = metadata !{i32 786689, metadata !782, metadata !"__path", metadata !756, i32 16777720, metadata !785, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [__path] [line 504]
!1051 = metadata !{i32 504, i32 0, metadata !782, metadata !1039}
!1052 = metadata !{i32 786689, metadata !782, metadata !"__statbuf", metadata !756, i32 33554936, metadata !759, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [__statbuf] [line 504]
!1053 = metadata !{i32 506, i32 0, metadata !1054, metadata !1039}
!1054 = metadata !{i32 786443, metadata !782, i32 505, i32 0, metadata !756, i32 161} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src//usr/include/sys/stat.h]
!1055 = metadata !{i32 353, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !618, i32 352, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1057 = metadata !{i32 354, i32 0, metadata !1056, null}
!1058 = metadata !{i32 358, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !618, i32 357, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1060 = metadata !{i32 359, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1059, i32 358, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1062 = metadata !{i32 360, i32 0, metadata !1061, null}
!1063 = metadata !{i32 365, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !618, i32 364, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1065 = metadata !{i32 366, i32 0, metadata !1064, null}
!1066 = metadata !{i32 367, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1064, i32 366, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1068 = metadata !{i32 368, i32 0, metadata !1067, null}
!1069 = metadata !{i32 376, i32 0, metadata !614, null}
!1070 = metadata !{i32 378, i32 0, metadata !621, null}
!1071 = metadata !{i32 382, i32 0, metadata !641, null}
!1072 = metadata !{i32 384, i32 0, metadata !641, null}
!1073 = metadata !{i32 385, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !641, i32 384, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1075 = metadata !{i32 386, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1074, i32 385, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1077 = metadata !{i32 387, i32 0, metadata !1076, null}
!1078 = metadata !{i32 393, i32 0, metadata !641, null}
!1079 = metadata !{i32 401, i32 0, metadata !641, null}
!1080 = metadata !{i32 394, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !641, i32 393, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1082 = metadata !{i32 395, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1081, i32 394, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1084 = metadata !{i32 396, i32 0, metadata !1083, null}
!1085 = metadata !{i32 404, i32 0, metadata !641, null}
!1086 = metadata !{i32 405, i32 0, metadata !641, null}
!1087 = metadata !{i32 406, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !641, i32 405, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1089 = metadata !{i32 409, i32 0, metadata !1088, null}
!1090 = metadata !{i32 786689, metadata !279, metadata !"dir", metadata !6, i32 16777337, metadata !32, i32 0, metadata !1089} ; [ DW_TAG_arg_variable ] [dir] [line 121]
!1091 = metadata !{i32 121, i32 0, metadata !279, metadata !1089}
!1092 = metadata !{i32 786689, metadata !279, metadata !"access", metadata !6, i32 33554553, metadata !90, i32 0, metadata !1089} ; [ DW_TAG_arg_variable ] [access] [line 121]
!1093 = metadata !{i32 786688, metadata !287, metadata !"err", metadata !6, i32 125, metadata !246, i32 0, metadata !1089} ; [ DW_TAG_auto_variable ] [err] [line 125]
!1094 = metadata !{i32 126, i32 0, metadata !287, metadata !1089}
!1095 = metadata !{i32 132, i32 0, metadata !900, metadata !1089}
!1096 = metadata !{i32 129, i32 0, metadata !287, metadata !1089}
!1097 = metadata !{i32 137, i32 0, metadata !903, metadata !1089}
!1098 = metadata !{i32 138, i32 0, metadata !903, metadata !1089}
!1099 = metadata !{i32 139, i32 0, metadata !906, metadata !1089}
!1100 = metadata !{i32 140, i32 0, metadata !906, metadata !1089}
!1101 = metadata !{i32 142, i32 0, metadata !909, metadata !1089}
!1102 = metadata !{i32 149, i32 0, metadata !903, metadata !1089}
!1103 = metadata !{i32 150, i32 0, metadata !903, metadata !1089}
!1104 = metadata !{i32 410, i32 0, metadata !1088, null}
!1105 = metadata !{i32 411, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1088, i32 410, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1107 = metadata !{i32 412, i32 0, metadata !1106, null}
!1108 = metadata !{i32 416, i32 0, metadata !1088, null}
!1109 = metadata !{i32 419, i32 0, metadata !1088, null}
!1110 = metadata !{i32 420, i32 0, metadata !1088, null}
!1111 = metadata !{i32 423, i32 0, metadata !641, null}
!1112 = metadata !{i32 424, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !641, i32 423, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1114 = metadata !{i32 425, i32 0, metadata !1113, null}
!1115 = metadata !{i32 426, i32 0, metadata !1113, null}
!1116 = metadata !{i32 427, i32 0, metadata !1113, null}
!1117 = metadata !{i32 428, i32 0, metadata !1113, null}
!1118 = metadata !{i32 429, i32 0, metadata !1113, null}
!1119 = metadata !{i32 430, i32 0, metadata !1113, null}
!1120 = metadata !{i32 433, i32 0, metadata !1113, null}
!1121 = metadata !{i32 786689, metadata !290, metadata !"collision", metadata !6, i32 16777370, metadata !90, i32 0, metadata !1120} ; [ DW_TAG_arg_variable ] [collision] [line 154]
!1122 = metadata !{i32 154, i32 0, metadata !290, metadata !1120}
!1123 = metadata !{i32 786688, metadata !297, metadata !"add", metadata !6, i32 157, metadata !104, i32 0, metadata !1120} ; [ DW_TAG_auto_variable ] [add] [line 157]
!1124 = metadata !{i32 158, i32 0, metadata !297, metadata !1120}
!1125 = metadata !{i32 159, i32 0, metadata !297, metadata !1120}
!1126 = metadata !{i32 786688, metadata !297, metadata !"n", metadata !6, i32 156, metadata !104, i32 0, metadata !1120} ; [ DW_TAG_auto_variable ] [n] [line 156]
!1127 = metadata !{i32 160, i32 0, metadata !297, metadata !1120}
!1128 = metadata !{i32 434, i32 0, metadata !1113, null}
!1129 = metadata !{i32 435, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1113, i32 434, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1131 = metadata !{i32 436, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1130, i32 435, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1133 = metadata !{i32 437, i32 0, metadata !1132, null}
!1134 = metadata !{i32 438, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1132, i32 437, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1136 = metadata !{i32 439, i32 0, metadata !1135, null}
!1137 = metadata !{i32 444, i32 0, metadata !1130, null}
!1138 = metadata !{i32 445, i32 0, metadata !1130, null}
!1139 = metadata !{i32 446, i32 0, metadata !1130, null}
!1140 = metadata !{i32 447, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1130, i32 446, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1142 = metadata !{i32 448, i32 0, metadata !1141, null}
!1143 = metadata !{i32 451, i32 0, metadata !1113, null}
!1144 = metadata !{i32 452, i32 0, metadata !1113, null}
!1145 = metadata !{i32 453, i32 0, metadata !1113, null}
!1146 = metadata !{i32 455, i32 0, metadata !641, null}
!1147 = metadata !{i32 456, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !641, i32 455, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1149 = metadata !{i32 457, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1148, i32 456, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1151 = metadata !{i32 458, i32 0, metadata !1150, null}
!1152 = metadata !{i32 461, i32 0, metadata !641, null}
!1153 = metadata !{i32 462, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !641, i32 461, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1155 = metadata !{i32 463, i32 0, metadata !1154, null}
!1156 = metadata !{i32 466, i32 0, metadata !641, null}
!1157 = metadata !{i32 468, i32 0, metadata !652, null}
!1158 = metadata !{i32 477, i32 0, metadata !662, null}
!1159 = metadata !{i32 -1}                        ; [ DW_TAG_hi_user ]
!1160 = metadata !{i32 478, i32 0, metadata !662, null}
!1161 = metadata !{i8* null}
!1162 = metadata !{i32 479, i32 0, metadata !662, null}
!1163 = metadata !{i32 480, i32 0, metadata !662, null}
!1164 = metadata !{i32 481, i32 0, metadata !662, null}
!1165 = metadata !{i32 482, i32 0, metadata !662, null}
!1166 = metadata !{i32 483, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !662, i32 482, i32 0, metadata !6, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1168 = metadata !{i32 484, i32 0, metadata !1167, null}
!1169 = metadata !{i32 487, i32 0, metadata !662, null}
!1170 = metadata !{i32 491, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !662, i32 490, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1172 = metadata !{i32 786689, metadata !755, metadata !"__fd", metadata !756, i32 16777734, metadata !11, i32 0, metadata !1170} ; [ DW_TAG_arg_variable ] [__fd] [line 518]
!1173 = metadata !{i32 518, i32 0, metadata !755, metadata !1170}
!1174 = metadata !{i32 786689, metadata !755, metadata !"__statbuf", metadata !756, i32 33554950, metadata !759, i32 0, metadata !1170} ; [ DW_TAG_arg_variable ] [__statbuf] [line 518]
!1175 = metadata !{i32 520, i32 0, metadata !1176, metadata !1170}
!1176 = metadata !{i32 786443, metadata !755, i32 519, i32 0, metadata !756, i32 160} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src//usr/include/sys/stat.h]
!1177 = metadata !{i32 492, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1171, i32 491, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1179 = metadata !{i32 493, i32 0, metadata !1178, null}
!1180 = metadata !{i32 496, i32 0, metadata !1171, null}
!1181 = metadata !{i32 498, i32 0, metadata !662, null}
!1182 = metadata !{i32 499, i32 0, metadata !662, null}
!1183 = metadata !{i32 500, i32 0, metadata !1184, null}
!1184 = metadata !{i32 786443, metadata !662, i32 499, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1185 = metadata !{i32 501, i32 0, metadata !1184, null}
!1186 = metadata !{i32 502, i32 0, metadata !662, null}
!1187 = metadata !{i32 503, i32 0, metadata !662, null}
!1188 = metadata !{i32 506, i32 0, metadata !662, null}
!1189 = metadata !{i32 507, i32 0, metadata !662, null}
!1190 = metadata !{i32 512, i32 0, metadata !662, null}
!1191 = metadata !{i32 508, i32 0, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !662, i32 507, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1193 = metadata !{i32 509, i32 0, metadata !1192, null}
!1194 = metadata !{i32 513, i32 0, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !662, i32 512, i32 0, metadata !6, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1196 = metadata !{i32 514, i32 0, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !1195, i32 513, i32 0, metadata !6, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1198 = metadata !{i32 515, i32 0, metadata !1197, null}
!1199 = metadata !{i32 516, i32 0, metadata !1195, null}
!1200 = metadata !{i32 517, i32 0, metadata !1195, null}
!1201 = metadata !{i32 518, i32 0, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1195, i32 517, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1203 = metadata !{i32 519, i32 0, metadata !1202, null}
!1204 = metadata !{i32 522, i32 0, metadata !1195, null}
!1205 = metadata !{i32 523, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1195, i32 522, i32 0, metadata !6, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1207 = metadata !{i32 524, i32 0, metadata !1206, null}
!1208 = metadata !{i32 786689, metadata !747, metadata !"fd", metadata !716, i32 16777356, metadata !22, i32 0, metadata !1209} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!1209 = metadata !{i32 527, i32 0, metadata !1195, null}
!1210 = metadata !{i32 140, i32 0, metadata !747, metadata !1209}
!1211 = metadata !{i32 786689, metadata !747, metadata !"buf", metadata !716, i32 33554572, metadata !113, i32 0, metadata !1209} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!1212 = metadata !{i32 786689, metadata !747, metadata !"n", metadata !716, i32 50331788, metadata !29, i32 0, metadata !1209} ; [ DW_TAG_arg_variable ] [n] [line 140]
!1213 = metadata !{i32 142, i32 0, metadata !1214, metadata !1209}
!1214 = metadata !{i32 786443, metadata !747, i32 141, i32 0, metadata !716, i32 159} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/os/unix/ngx_files.h]
!1215 = metadata !{i32 528, i32 0, metadata !1195, null}
!1216 = metadata !{i32 529, i32 0, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !1195, i32 528, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1218 = metadata !{i32 530, i32 0, metadata !1217, null}
!1219 = metadata !{i32 533, i32 0, metadata !1195, null}
!1220 = metadata !{i32 534, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1195, i32 533, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1222 = metadata !{i32 535, i32 0, metadata !1221, null}
!1223 = metadata !{i32 538, i32 0, metadata !1195, null}
!1224 = metadata !{i32 540, i32 0, metadata !662, null}
!1225 = metadata !{i32 541, i32 0, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !662, i32 540, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1227 = metadata !{i32 542, i32 0, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !1226, i32 541, i32 0, metadata !6, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1229 = metadata !{i32 543, i32 0, metadata !1228, null}
!1230 = metadata !{i32 549, i32 0, metadata !662, null}
!1231 = metadata !{i32 550, i32 0, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !662, i32 549, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1233 = metadata !{i32 551, i32 0, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !1232, i32 550, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1235 = metadata !{i32 552, i32 0, metadata !1234, null}
!1236 = metadata !{i32 555, i32 0, metadata !662, null}
!1237 = metadata !{i32 556, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !662, i32 555, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1239 = metadata !{i32 557, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1238, i32 556, i32 0, metadata !6, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1241 = metadata !{i32 558, i32 0, metadata !1240, null}
!1242 = metadata !{i32 561, i32 0, metadata !662, null}
!1243 = metadata !{i32 562, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !662, i32 561, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1245 = metadata !{i32 563, i32 0, metadata !1244, null}
!1246 = metadata !{i32 564, i32 0, metadata !662, null}
!1247 = metadata !{i32 584, i32 0, metadata !670, null}
!1248 = metadata !{i32 593, i32 0, metadata !704, null}
!1249 = metadata !{%struct.ngx_str_t* undef}
!1250 = metadata !{i32 594, i32 0, metadata !704, null}
!1251 = metadata !{i32 595, i32 0, metadata !704, null}
!1252 = metadata !{i32 599, i32 0, metadata !704, null}
!1253 = metadata !{i32 600, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !704, i32 599, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1255 = metadata !{i32 601, i32 0, metadata !1254, null}
!1256 = metadata !{i32 604, i32 0, metadata !704, null}
!1257 = metadata !{i32 605, i32 0, metadata !704, null}
!1258 = metadata !{i32 606, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !704, i32 605, i32 0, metadata !6, i32 131} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1260 = metadata !{i32 607, i32 0, metadata !1259, null}
!1261 = metadata !{i32 610, i32 0, metadata !1259, null}
!1262 = metadata !{i32 613, i32 0, metadata !1259, null}
!1263 = metadata !{i32 614, i32 0, metadata !1259, null}
!1264 = metadata !{i32 619, i32 0, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !1266, i32 618, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1266 = metadata !{i32 786443, metadata !704, i32 618, i32 0, metadata !6, i32 135} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1267 = metadata !{i32 620, i32 0, metadata !1265, null}
!1268 = metadata !{i32 632, i32 0, metadata !1265, null}
!1269 = metadata !{i32 641, i32 0, metadata !1265, null}
!1270 = metadata !{i32 647, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1265, i32 642, i32 0, metadata !6, i32 142} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1272 = metadata !{i32 652, i32 0, metadata !1265, null}
!1273 = metadata !{i32 655, i32 0, metadata !1265, null}
!1274 = metadata !{i32 657, i32 0, metadata !1265, null}
!1275 = metadata !{i32 259, i32 0, metadata !1276, metadata !1277}
!1276 = metadata !{i32 786443, metadata !739, i32 257, i32 0, metadata !716, i32 158} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/os/unix/ngx_files.h]
!1277 = metadata !{i32 658, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1265, i32 657, i32 0, metadata !6, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1279 = metadata !{i32 692, i32 0, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !1265, i32 690, i32 0, metadata !6, i32 153} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1281 = metadata !{i32 674, i32 0, metadata !1265, null}
!1282 = metadata !{i32 676, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1265, i32 674, i32 0, metadata !6, i32 149} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1284 = metadata !{i32 677, i32 0, metadata !1283, null}
!1285 = metadata !{i32 678, i32 0, metadata !1283, null}
!1286 = metadata !{i32 686, i32 0, metadata !1283, null}
!1287 = metadata !{i32 666, i32 0, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !1265, i32 664, i32 0, metadata !6, i32 147} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1289 = metadata !{i32 667, i32 0, metadata !1288, null}
!1290 = metadata !{i32 670, i32 0, metadata !1288, null}
!1291 = metadata !{i32 621, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1265, i32 620, i32 0, metadata !6, i32 137} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1293 = metadata !{i32 622, i32 0, metadata !1292, null}
!1294 = metadata !{i32 626, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1292, i32 625, i32 0, metadata !6, i32 139} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1296 = metadata !{i32 627, i32 0, metadata !1295, null}
!1297 = metadata !{i32 633, i32 0, metadata !1265, null}
!1298 = metadata !{i32 635, i32 0, metadata !1265, null}
!1299 = metadata !{i32 638, i32 0, metadata !1265, null}
!1300 = metadata !{i32 642, i32 0, metadata !1265, null}
!1301 = metadata !{i32 643, i32 0, metadata !1271, null}
!1302 = metadata !{i32 644, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1271, i32 643, i32 0, metadata !6, i32 143} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1304 = metadata !{i32 645, i32 0, metadata !1303, null}
!1305 = metadata !{i32 646, i32 0, metadata !1271, null}
!1306 = metadata !{i32 648, i32 0, metadata !1271, null}
!1307 = metadata !{i32 653, i32 0, metadata !1265, null}
!1308 = metadata !{i32 654, i32 0, metadata !1265, null}
!1309 = metadata !{i32 786689, metadata !739, metadata !"name", metadata !716, i32 16777472, metadata !32, i32 0, metadata !1277} ; [ DW_TAG_arg_variable ] [name] [line 256]
!1310 = metadata !{i32 256, i32 0, metadata !739, metadata !1277}
!1311 = metadata !{i32 786689, metadata !739, metadata !"dir", metadata !716, i32 33554688, metadata !742, i32 0, metadata !1277} ; [ DW_TAG_arg_variable ] [dir] [line 256]
!1312 = metadata !{i32 258, i32 0, metadata !1276, metadata !1277}
!1313 = metadata !{i32 786689, metadata !782, metadata !"__path", metadata !756, i32 16777720, metadata !785, i32 0, metadata !1275} ; [ DW_TAG_arg_variable ] [__path] [line 504]
!1314 = metadata !{i32 504, i32 0, metadata !782, metadata !1275}
!1315 = metadata !{i32 786689, metadata !782, metadata !"__statbuf", metadata !756, i32 33554936, metadata !759, i32 0, metadata !1275} ; [ DW_TAG_arg_variable ] [__statbuf] [line 504]
!1316 = metadata !{i32 506, i32 0, metadata !1054, metadata !1275}
!1317 = metadata !{i32 664, i32 0, metadata !1265, null}
!1318 = metadata !{i32 659, i32 0, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !1278, i32 658, i32 0, metadata !6, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1320 = metadata !{i32 660, i32 0, metadata !1319, null}
!1321 = metadata !{i32 668, i32 0, metadata !1288, null}
!1322 = metadata !{i32 669, i32 0, metadata !1288, null}
!1323 = metadata !{i32 681, i32 0, metadata !1283, null}
!1324 = metadata !{i32 684, i32 0, metadata !1283, null}
!1325 = metadata !{i32 685, i32 0, metadata !1283, null}
!1326 = metadata !{i32 700, i32 0, metadata !704, null}
!1327 = metadata !{i32 701, i32 0, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !704, i32 700, i32 0, metadata !6, i32 155} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1329 = metadata !{i32 702, i32 0, metadata !1328, null}
!1330 = metadata !{i32 703, i32 0, metadata !704, null}
!1331 = metadata !{i32 704, i32 0, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !704, i32 703, i32 0, metadata !6, i32 156} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1333 = metadata !{i32 705, i32 0, metadata !1332, null}
!1334 = metadata !{i32 706, i32 0, metadata !1332, null}
!1335 = metadata !{i32 707, i32 0, metadata !704, null}
!1336 = metadata !{i32 708, i32 0, metadata !1337, null}
!1337 = metadata !{i32 786443, metadata !704, i32 707, i32 0, metadata !6, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_file.c]
!1338 = metadata !{i32 709, i32 0, metadata !1337, null}
!1339 = metadata !{i32 712, i32 0, metadata !704, null}
