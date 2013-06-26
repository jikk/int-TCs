; ModuleID = 'src/core/ngx_times.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_str_t = type { i32, i8* }
%struct.ngx_time_t = type { i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }

@ngx_cached_err_log_time = common global %struct.ngx_str_t zeroinitializer, align 4
@ngx_cached_http_time = common global %struct.ngx_str_t zeroinitializer, align 4
@ngx_cached_http_log_time = common global %struct.ngx_str_t zeroinitializer, align 4
@ngx_cached_http_log_iso8601 = common global %struct.ngx_str_t zeroinitializer, align 4
@cached_time = internal global [64 x %struct.ngx_time_t] zeroinitializer, align 4
@ngx_cached_time = common global %struct.ngx_time_t* null, align 4
@ngx_time_lock = internal global i32 0, align 4
@0 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@ngx_current_msec = common global i32 0, align 4
@slot = internal unnamed_addr global i32 0, align 4
@cached_http_time = internal global [64 x [30 x i8]] zeroinitializer, align 1
@.str = private unnamed_addr constant [35 x i8] c"%s, %02d %s %4d %02d:%02d:%02d GMT\00", align 1
@week = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0)], align 4
@months = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0)], align 4
@cached_gmtoff = internal unnamed_addr global i32 0, align 4
@cached_err_log_time = internal global [64 x [20 x i8]] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [29 x i8] c"%4d/%02d/%02d %02d:%02d:%02d\00", align 1
@cached_http_log_time = internal global [64 x [27 x i8]] zeroinitializer, align 1
@.str2 = private unnamed_addr constant [37 x i8] c"%02d/%s/%d:%02d:%02d:%02d %c%02d%02d\00", align 1
@cached_http_log_iso8601 = internal global [64 x [26 x i8]] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [40 x i8] c"%4d-%02d-%02dT%02d:%02d:%02d%c%02d:%02d\00", align 1
@1 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str4 = private unnamed_addr constant [34 x i8] c"%s, %02d-%s-%d %02d:%02d:%02d GMT\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"%s, %02d-%s-%02d %02d:%02d:%02d GMT\00", align 1
@2 = internal unnamed_addr constant [7 x i8] c"time_t\00"
@3 = internal unnamed_addr constant [5 x i8] c"long\00"
@4 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@5 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@6 = internal unnamed_addr constant [2 x i8] c"*\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [3 x i8] c"-=\00"
@9 = internal unnamed_addr constant [3 x i8] c"+=\00"
@10 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@11 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@12 = internal unnamed_addr constant [4 x i8] c"int\00"
@13 = internal unnamed_addr constant [2 x i8] c"-\00"
@14 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@15 = internal unnamed_addr constant [21 x i8] c"src/core/ngx_times.c\00"
@.str6 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1

define void @ngx_time_init() nounwind {
entry:
  store volatile i32 19, i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_err_log_time, i32 0, i32 0), align 4, !dbg !181, !tbaa !183
  store volatile i32 29, i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_time, i32 0, i32 0), align 4, !dbg !186, !tbaa !183
  store volatile i32 26, i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_time, i32 0, i32 0), align 4, !dbg !187, !tbaa !183
  store volatile i32 25, i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_iso8601, i32 0, i32 0), align 4, !dbg !188, !tbaa !183
  store %struct.ngx_time_t* getelementptr inbounds ([64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 0), %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !189, !tbaa !190
  tail call void @ngx_time_update(), !dbg !191
  ret void, !dbg !192
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @ngx_time_update() nounwind {
entry:
  %tm = alloca %struct.tm, align 4
  %gmt = alloca %struct.tm, align 4
  %tv = alloca %struct.timeval, align 4
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tm}, metadata !21), !dbg !193
  call void @llvm.dbg.declare(metadata !{%struct.tm* %gmt}, metadata !42), !dbg !194
  call void @llvm.dbg.declare(metadata !{%struct.timeval* %tv}, metadata !62), !dbg !195
  %0 = load volatile i32* @ngx_time_lock, align 4, !dbg !196, !tbaa !197
  %cmp = icmp eq i32 %0, 0, !dbg !196
  br i1 %cmp, label %cont4, label %return, !dbg !196

cont4:                                            ; preds = %entry
  %1 = cmpxchg i32* @ngx_time_lock, i32 0, i32 1 seq_cst, !dbg !196
  %2 = icmp eq i32 %1, 0, !dbg !196
  br i1 %2, label %if.end, label %return, !dbg !196

if.end:                                           ; preds = %cont4
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) nounwind, !dbg !198
  %tv_sec = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !dbg !199
  %3 = load i32* %tv_sec, align 4, !dbg !199, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !43), !dbg !199
  %tv_usec = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1, !dbg !200
  %4 = load i32* %tv_usec, align 4, !dbg !200, !tbaa !197
  %div = sdiv i32 %4, 1000, !dbg !200
  %5 = icmp sgt i32 %4, -1000, !dbg !200
  br i1 %5, label %cont8, label %ioc_bb7, !dbg !200

ioc_bb7:                                          ; preds = %if.end
  %6 = sext i32 %div to i64, !dbg !200
  call void @__ioc_report_conversion(i32 68, i32 10, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !200
  br label %cont8, !dbg !200

cont8:                                            ; preds = %ioc_bb7, %if.end
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !46), !dbg !200
  %7 = icmp sgt i32 %3, -1, !dbg !201
  br i1 %7, label %cont13, label %ioc_bb10, !dbg !201

ioc_bb10:                                         ; preds = %cont8
  %8 = sext i32 %3 to i64, !dbg !201
  call void @__ioc_report_conversion(i32 69, i32 36, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %8, i8 1) nounwind, !dbg !201
  br label %cont13, !dbg !201

cont13:                                           ; preds = %cont8, %ioc_bb10
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 1000), !dbg !201
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !201
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !201
  br i1 %11, label %ioc_bb14, label %cont15, !dbg !201

ioc_bb14:                                         ; preds = %cont13
  %12 = zext i32 %3 to i64, !dbg !201
  call void @__ioc_report_mul_overflow(i32 69, i32 41, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %12, i64 1000, i8 5) nounwind, !dbg !201
  br label %cont15, !dbg !201

cont15:                                           ; preds = %cont13, %ioc_bb14
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %10, i32 %div), !dbg !201
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !201
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !201
  br i1 %15, label %ioc_bb16, label %cont17, !dbg !201

ioc_bb16:                                         ; preds = %cont15
  %16 = zext i32 %div to i64, !dbg !201
  %17 = zext i32 %10 to i64, !dbg !201
  call void @__ioc_report_add_overflow(i32 69, i32 48, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %17, i64 %16, i8 5) nounwind, !dbg !201
  br label %cont17, !dbg !201

cont17:                                           ; preds = %cont15, %ioc_bb16
  store volatile i32 %14, i32* @ngx_current_msec, align 4, !dbg !201, !tbaa !183
  %18 = load i32* @slot, align 4, !dbg !202, !tbaa !183
  %sec18 = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %18, i32 0, !dbg !203
  %19 = load i32* %sec18, align 4, !dbg !203, !tbaa !197
  %cmp19 = icmp eq i32 %19, %3, !dbg !203
  br i1 %cmp19, label %if.then20, label %cont29, !dbg !203

if.then20:                                        ; preds = %cont17
  %msec21 = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %18, i32 1, !dbg !204
  store i32 %div, i32* %msec21, align 4, !dbg !204, !tbaa !183
  store volatile i32 0, i32* @ngx_time_lock, align 4, !dbg !206, !tbaa !197
  br label %return, !dbg !207

cont29:                                           ; preds = %cont17
  %cmp30 = icmp eq i32 %18, 63, !dbg !208
  br i1 %cmp30, label %if.end36, label %if.else, !dbg !208

if.else:                                          ; preds = %cont29
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %18, i32 1), !dbg !209
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !209
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !209
  br i1 %22, label %ioc_bb34, label %if.end36, !dbg !209

ioc_bb34:                                         ; preds = %if.else
  %23 = zext i32 %18 to i64, !dbg !209
  call void @__ioc_report_add_overflow(i32 80, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %23, i64 1, i8 5) nounwind, !dbg !209
  br label %if.end36, !dbg !209

if.end36:                                         ; preds = %ioc_bb34, %if.else, %cont29
  %storemerge = phi i32 [ 0, %cont29 ], [ %21, %if.else ], [ %21, %ioc_bb34 ]
  store i32 %storemerge, i32* @slot, align 4, !dbg !211
  %arrayidx37 = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %storemerge, !dbg !213
  call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %arrayidx37}, i64 0, metadata !50), !dbg !213
  %sec38 = getelementptr inbounds %struct.ngx_time_t* %arrayidx37, i32 0, i32 0, !dbg !214
  store i32 %3, i32* %sec38, align 4, !dbg !214, !tbaa !197
  %msec39 = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %storemerge, i32 1, !dbg !215
  store i32 %div, i32* %msec39, align 4, !dbg !215, !tbaa !183
  call void @ngx_gmtime(i32 %3, %struct.tm* %gmt), !dbg !216
  %24 = load i32* @slot, align 4, !dbg !217, !tbaa !183
  %arrayidx41 = getelementptr inbounds [64 x [30 x i8]]* @cached_http_time, i32 0, i32 %24, i32 0, !dbg !217
  call void @llvm.dbg.value(metadata !{i8* %arrayidx41}, i64 0, metadata !12), !dbg !217
  %tm_wday = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 6, !dbg !218
  %25 = load i32* %tm_wday, align 4, !dbg !218, !tbaa !183
  %arrayidx42 = getelementptr inbounds [7 x i8*]* @week, i32 0, i32 %25, !dbg !218
  %26 = load i8** %arrayidx42, align 4, !dbg !218, !tbaa !190
  %tm_mday = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 3, !dbg !218
  %27 = load i32* %tm_mday, align 4, !dbg !218, !tbaa !183
  %tm_mon = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 4, !dbg !218
  %28 = load i32* %tm_mon, align 4, !dbg !218, !tbaa !183
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %28, i32 1), !dbg !218
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !218
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !218
  br i1 %31, label %ioc_bb43, label %cont44, !dbg !218

ioc_bb43:                                         ; preds = %if.end36
  %32 = sext i32 %28 to i64, !dbg !218
  call void @__ioc_report_sub_overflow(i32 87, i32 111, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %32, i64 1, i8 13) nounwind, !dbg !218
  br label %cont44, !dbg !218

cont44:                                           ; preds = %if.end36, %ioc_bb43
  %arrayidx45 = getelementptr inbounds [12 x i8*]* @months, i32 0, i32 %30, !dbg !218
  %33 = load i8** %arrayidx45, align 4, !dbg !218, !tbaa !190
  %tm_year = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 5, !dbg !218
  %34 = load i32* %tm_year, align 4, !dbg !218, !tbaa !183
  %tm_hour = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 2, !dbg !218
  %35 = load i32* %tm_hour, align 4, !dbg !218, !tbaa !183
  %tm_min = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 1, !dbg !218
  %36 = load i32* %tm_min, align 4, !dbg !218, !tbaa !183
  %tm_sec = getelementptr inbounds %struct.tm* %gmt, i32 0, i32 0, !dbg !218
  %37 = load i32* %tm_sec, align 4, !dbg !218, !tbaa !183
  %call46 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %arrayidx41, i8* getelementptr inbounds ([35 x i8]* @.str, i32 0, i32 0), i8* %26, i32 %27, i8* %33, i32 %34, i32 %35, i32 %36, i32 %37) nounwind, !dbg !218
  call void @ngx_localtime(i32 %3, %struct.tm* %tm) nounwind, !dbg !219
  %tm_gmtoff = getelementptr inbounds %struct.tm* %tm, i32 0, i32 9, !dbg !220
  %38 = load i32* %tm_gmtoff, align 4, !dbg !220, !tbaa !197
  %div51 = sdiv i32 %38, 60, !dbg !220
  store i32 %div51, i32* @cached_gmtoff, align 4, !dbg !220, !tbaa !183
  %gmtoff = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %storemerge, i32 2, !dbg !221
  store i32 %div51, i32* %gmtoff, align 4, !dbg !221, !tbaa !183
  %39 = load i32* @slot, align 4, !dbg !222, !tbaa !183
  %arrayidx53 = getelementptr inbounds [64 x [20 x i8]]* @cached_err_log_time, i32 0, i32 %39, i32 0, !dbg !222
  call void @llvm.dbg.value(metadata !{i8* %arrayidx53}, i64 0, metadata !18), !dbg !222
  %tm_year54 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 5, !dbg !223
  %40 = load i32* %tm_year54, align 4, !dbg !223, !tbaa !183
  %tm_mon55 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 4, !dbg !223
  %41 = load i32* %tm_mon55, align 4, !dbg !223, !tbaa !183
  %tm_mday56 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3, !dbg !223
  %42 = load i32* %tm_mday56, align 4, !dbg !223, !tbaa !183
  %tm_hour57 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2, !dbg !223
  %43 = load i32* %tm_hour57, align 4, !dbg !223, !tbaa !183
  %tm_min58 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1, !dbg !223
  %44 = load i32* %tm_min58, align 4, !dbg !223, !tbaa !183
  %tm_sec59 = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0, !dbg !223
  %45 = load i32* %tm_sec59, align 4, !dbg !223, !tbaa !183
  %call60 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %arrayidx53, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45) nounwind, !dbg !223
  %46 = load i32* @slot, align 4, !dbg !224, !tbaa !183
  %arrayidx62 = getelementptr inbounds [64 x [27 x i8]]* @cached_http_log_time, i32 0, i32 %46, i32 0, !dbg !224
  call void @llvm.dbg.value(metadata !{i8* %arrayidx62}, i64 0, metadata !19), !dbg !224
  %47 = load i32* %tm_mday56, align 4, !dbg !225, !tbaa !183
  %48 = load i32* %tm_mon55, align 4, !dbg !225, !tbaa !183
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %48, i32 1), !dbg !225
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !225
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !225
  br i1 %51, label %ioc_bb65, label %cont66, !dbg !225

ioc_bb65:                                         ; preds = %cont44
  %52 = sext i32 %48 to i64, !dbg !225
  call void @__ioc_report_sub_overflow(i32 98, i32 93, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %52, i64 1, i8 13) nounwind, !dbg !225
  br label %cont66, !dbg !225

cont66:                                           ; preds = %cont44, %ioc_bb65
  %arrayidx67 = getelementptr inbounds [12 x i8*]* @months, i32 0, i32 %50, !dbg !225
  %53 = load i8** %arrayidx67, align 4, !dbg !225, !tbaa !190
  %54 = load i32* %tm_year54, align 4, !dbg !225, !tbaa !183
  %55 = load i32* %tm_hour57, align 4, !dbg !225, !tbaa !183
  %56 = load i32* %tm_min58, align 4, !dbg !225, !tbaa !183
  %57 = load i32* %tm_sec59, align 4, !dbg !225, !tbaa !183
  %58 = load i32* %gmtoff, align 4, !dbg !225, !tbaa !183
  %59 = ashr i32 %58, 31, !dbg !225
  %60 = and i32 %59, 2, !dbg !225
  %61 = add i32 %60, 43, !dbg !225
  %cmp80 = icmp sgt i32 %58, -60, !dbg !225
  %div86 = sdiv i32 %58, 60, !dbg !225
  br i1 %cmp80, label %cont100, label %cont91, !dbg !225

cont91:                                           ; preds = %cont66
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %div86), !dbg !225
  %63 = extractvalue { i32, i1 } %62, 0, !dbg !225
  %64 = extractvalue { i32, i1 } %62, 1, !dbg !225
  br i1 %64, label %ioc_bb93, label %cont100, !dbg !225

ioc_bb93:                                         ; preds = %cont91
  %65 = sext i32 %div86 to i64, !dbg !225
  call void @__ioc_report_sub_overflow(i32 98, i32 213, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i64 0, i64 %65, i8 13) nounwind, !dbg !225
  %.pre = load i32* %gmtoff, align 4, !dbg !225, !tbaa !183
  br label %cont100, !dbg !225

cont100:                                          ; preds = %cont66, %ioc_bb93, %cont91
  %66 = phi i32 [ %.pre, %ioc_bb93 ], [ %58, %cont91 ], [ %58, %cont66 ]
  %cond95 = phi i32 [ %63, %ioc_bb93 ], [ %63, %cont91 ], [ %div86, %cont66 ], !dbg !225
  %rem = srem i32 %66, 60, !dbg !225
  %cmp101 = icmp sgt i32 %rem, -1, !dbg !225
  br i1 %cmp101, label %cond.end118, label %cont114, !dbg !225

cont114:                                          ; preds = %cont100
  %67 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %rem), !dbg !225
  %68 = extractvalue { i32, i1 } %67, 0, !dbg !225
  %69 = extractvalue { i32, i1 } %67, 1, !dbg !225
  br i1 %69, label %ioc_bb116, label %cond.end118, !dbg !225

ioc_bb116:                                        ; preds = %cont114
  %70 = sext i32 %rem to i64, !dbg !225
  call void @__ioc_report_sub_overflow(i32 98, i32 279, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i64 0, i64 %70, i8 13) nounwind, !dbg !225
  br label %cond.end118, !dbg !225

cond.end118:                                      ; preds = %cont100, %cont114, %ioc_bb116
  %cond119 = phi i32 [ %68, %ioc_bb116 ], [ %68, %cont114 ], [ %rem, %cont100 ], !dbg !225
  %call120 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %arrayidx62, i8* getelementptr inbounds ([37 x i8]* @.str2, i32 0, i32 0), i32 %47, i8* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %61, i32 %cond95, i32 %cond119) nounwind, !dbg !225
  %71 = load i32* @slot, align 4, !dbg !226, !tbaa !183
  %arrayidx122 = getelementptr inbounds [64 x [26 x i8]]* @cached_http_log_iso8601, i32 0, i32 %71, i32 0, !dbg !226
  call void @llvm.dbg.value(metadata !{i8* %arrayidx122}, i64 0, metadata !20), !dbg !226
  %72 = load i32* %tm_year54, align 4, !dbg !227, !tbaa !183
  %73 = load i32* %tm_mon55, align 4, !dbg !227, !tbaa !183
  %74 = load i32* %tm_mday56, align 4, !dbg !227, !tbaa !183
  %75 = load i32* %tm_hour57, align 4, !dbg !227, !tbaa !183
  %76 = load i32* %tm_min58, align 4, !dbg !227, !tbaa !183
  %77 = load i32* %tm_sec59, align 4, !dbg !227, !tbaa !183
  %78 = load i32* %gmtoff, align 4, !dbg !227, !tbaa !183
  %79 = ashr i32 %78, 31, !dbg !227
  %80 = and i32 %79, 2, !dbg !227
  %81 = add i32 %80, 43, !dbg !227
  %cmp138 = icmp sgt i32 %78, -60, !dbg !227
  %div145 = sdiv i32 %78, 60, !dbg !227
  br i1 %cmp138, label %cont161, label %cont151, !dbg !227

cont151:                                          ; preds = %cond.end118
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %div145), !dbg !227
  %83 = extractvalue { i32, i1 } %82, 0, !dbg !227
  %84 = extractvalue { i32, i1 } %82, 1, !dbg !227
  br i1 %84, label %ioc_bb153, label %cont161, !dbg !227

ioc_bb153:                                        ; preds = %cont151
  %85 = sext i32 %div145 to i64, !dbg !227
  call void @__ioc_report_sub_overflow(i32 100, i32 204, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i64 0, i64 %85, i8 13) nounwind, !dbg !227
  %.pre210 = load i32* %gmtoff, align 4, !dbg !227, !tbaa !183
  br label %cont161, !dbg !227

cont161:                                          ; preds = %cond.end118, %ioc_bb153, %cont151
  %86 = phi i32 [ %.pre210, %ioc_bb153 ], [ %78, %cont151 ], [ %78, %cond.end118 ]
  %cond156 = phi i32 [ %83, %ioc_bb153 ], [ %83, %cont151 ], [ %div145, %cond.end118 ], !dbg !227
  %rem162 = srem i32 %86, 60, !dbg !227
  %cmp163 = icmp sgt i32 %rem162, -1, !dbg !227
  br i1 %cmp163, label %cond.end180, label %cont176, !dbg !227

cont176:                                          ; preds = %cont161
  %87 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %rem162), !dbg !227
  %88 = extractvalue { i32, i1 } %87, 0, !dbg !227
  %89 = extractvalue { i32, i1 } %87, 1, !dbg !227
  br i1 %89, label %ioc_bb178, label %cond.end180, !dbg !227

ioc_bb178:                                        ; preds = %cont176
  %90 = sext i32 %rem162 to i64, !dbg !227
  call void @__ioc_report_sub_overflow(i32 100, i32 270, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i64 0, i64 %90, i8 13) nounwind, !dbg !227
  br label %cond.end180, !dbg !227

cond.end180:                                      ; preds = %cont161, %cont176, %ioc_bb178
  %cond181 = phi i32 [ %88, %ioc_bb178 ], [ %88, %cont176 ], [ %rem162, %cont161 ], !dbg !227
  %call182 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %arrayidx122, i8* getelementptr inbounds ([40 x i8]* @.str3, i32 0, i32 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %81, i32 %cond156, i32 %cond181) nounwind, !dbg !227
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind, !dbg !228, !srcloc !229
  store %struct.ngx_time_t* %arrayidx37, %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !230, !tbaa !190
  store volatile i8* %arrayidx41, i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_time, i32 0, i32 1), align 4, !dbg !231, !tbaa !190
  store volatile i8* %arrayidx53, i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_err_log_time, i32 0, i32 1), align 4, !dbg !232, !tbaa !190
  store volatile i8* %arrayidx62, i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_time, i32 0, i32 1), align 4, !dbg !233, !tbaa !190
  store volatile i8* %arrayidx122, i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_iso8601, i32 0, i32 1), align 4, !dbg !234, !tbaa !190
  store volatile i32 0, i32* @ngx_time_lock, align 4, !dbg !235, !tbaa !197
  br label %return, !dbg !236

return:                                           ; preds = %entry, %cont4, %cond.end180, %if.then20
  ret void, !dbg !236
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

define void @ngx_gmtime(i32 %t, %struct.tm* nocapture %tp) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !100), !dbg !237
  tail call void @llvm.dbg.value(metadata !{%struct.tm* %tp}, i64 0, metadata !101), !dbg !237
  %0 = icmp sgt i32 %t, -1, !dbg !238
  br i1 %0, label %cont3, label %ioc_bb, !dbg !238

ioc_bb:                                           ; preds = %entry
  %1 = sext i32 %t to i64, !dbg !238
  tail call void @__ioc_report_conversion(i32 176, i32 21, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %1, i8 1) nounwind, !dbg !238
  br label %cont3, !dbg !238

cont3:                                            ; preds = %entry, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !104), !dbg !238
  %div = udiv i32 %t, 86400, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !112), !dbg !239
  %2 = add nuw i32 %div, 4, !dbg !240
  %rem = urem i32 %2, 7, !dbg !240
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !111), !dbg !240
  %rem14 = urem i32 %t, 86400, !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32 %rem14}, i64 0, metadata !104), !dbg !241
  %div18 = udiv i32 %rem14, 3600, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %div18}, i64 0, metadata !107), !dbg !242
  %rem22 = urem i32 %rem14, 3600, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %rem22}, i64 0, metadata !104), !dbg !243
  %div26 = udiv i32 %rem22, 60, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %div26}, i64 0, metadata !106), !dbg !244
  %rem30 = urem i32 %rem22, 60, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %rem30}, i64 0, metadata !105), !dbg !245
  %3 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %div, i32 59), !dbg !246
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !246
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !246
  br i1 %5, label %ioc_bb36, label %cont39, !dbg !246

ioc_bb36:                                         ; preds = %cont3
  %6 = zext i32 %div to i64, !dbg !240
  tail call void @__ioc_report_sub_overflow(i32 190, i32 15, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %6, i64 59, i8 5) nounwind, !dbg !246
  br label %cont39, !dbg !246

cont39:                                           ; preds = %ioc_bb36, %cont3
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 719527), !dbg !246
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !246
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !246
  br i1 %9, label %ioc_bb40, label %cont43, !dbg !246

ioc_bb40:                                         ; preds = %cont39
  %10 = zext i32 %4 to i64, !dbg !246
  tail call void @__ioc_report_add_overflow(i32 190, i32 27, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %10, i64 719527, i8 5) nounwind, !dbg !246
  br label %cont43, !dbg !246

cont43:                                           ; preds = %ioc_bb40, %cont39
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !112), !dbg !246
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %8, i32 2), !dbg !247
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !247
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !247
  %14 = zext i32 %8 to i64, !dbg !247
  br i1 %13, label %ioc_bb44, label %cont47, !dbg !247

ioc_bb44:                                         ; preds = %cont43
  tail call void @__ioc_report_add_overflow(i32 197, i32 16, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %14, i64 2, i8 5) nounwind, !dbg !247
  br label %cont47, !dbg !247

cont47:                                           ; preds = %ioc_bb44, %cont43
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 400), !dbg !247
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !247
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !247
  br i1 %17, label %ioc_bb48, label %cont61, !dbg !247

ioc_bb48:                                         ; preds = %cont47
  %18 = zext i32 %12 to i64, !dbg !247
  tail call void @__ioc_report_mul_overflow(i32 197, i32 21, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %18, i64 400, i8 5) nounwind, !dbg !247
  br label %cont61, !dbg !247

cont61:                                           ; preds = %cont47, %ioc_bb48
  %div62 = udiv i32 %16, 146097, !dbg !247
  tail call void @llvm.dbg.value(metadata !{i32 %div62}, i64 0, metadata !110), !dbg !247
  %umul_with_overflow = mul nuw i32 %div62, 365, !dbg !248
  %19 = zext i32 %div62 to i64, !dbg !248
  %div70 = udiv i32 %16, 584388, !dbg !248
  %20 = add nuw i32 %umul_with_overflow, %div70, !dbg !248
  %div76 = udiv i32 %16, 14609700, !dbg !248
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %20, i32 %div76), !dbg !248
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !248
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !248
  br i1 %23, label %ioc_bb77, label %cont81, !dbg !248

ioc_bb77:                                         ; preds = %cont61
  %24 = zext i32 %div76 to i64, !dbg !248
  %25 = zext i32 %20 to i64, !dbg !248
  tail call void @__ioc_report_sub_overflow(i32 198, i32 41, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %25, i64 %24, i8 5) nounwind, !dbg !248
  br label %cont81, !dbg !248

cont81:                                           ; preds = %ioc_bb77, %cont61
  %div82 = udiv i32 %16, 58438800, !dbg !248
  %26 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %22, i32 %div82), !dbg !248
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !248
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !248
  br i1 %28, label %ioc_bb83, label %cont84, !dbg !248

ioc_bb83:                                         ; preds = %cont81
  %29 = zext i32 %div82 to i64, !dbg !248
  %30 = zext i32 %22 to i64, !dbg !248
  tail call void @__ioc_report_add_overflow(i32 198, i32 54, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %30, i64 %29, i8 5) nounwind, !dbg !248
  br label %cont84, !dbg !248

cont84:                                           ; preds = %cont81, %ioc_bb83
  %31 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %8, i32 %27), !dbg !248
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !248
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !248
  br i1 %33, label %ioc_bb85, label %cont86, !dbg !248

ioc_bb85:                                         ; preds = %cont84
  %34 = zext i32 %27 to i64, !dbg !248
  tail call void @__ioc_report_sub_overflow(i32 198, i32 16, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %14, i64 %34, i8 5) nounwind, !dbg !248
  br label %cont86, !dbg !248

cont86:                                           ; preds = %cont84, %ioc_bb85
  %35 = zext i32 %32 to i64, !dbg !248
  %36 = icmp sgt i32 %32, -1, !dbg !248
  br i1 %36, label %if.end, label %cont94, !dbg !248

cont94:                                           ; preds = %cont86
  tail call void @__ioc_report_conversion(i32 198, i32 10, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %35, i8 0) nounwind, !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !102), !dbg !248
  %rem92 = and i32 %div62, 3, !dbg !249
  %cmp95 = icmp eq i32 %rem92, 0, !dbg !249
  br i1 %cmp95, label %cont98, label %ioc_bb115, !dbg !249

cont98:                                           ; preds = %cont94
  %rem99 = urem i32 %div62, 100, !dbg !249
  %tobool = icmp eq i32 %rem99, 0, !dbg !249
  br i1 %tobool, label %cont105, label %ioc_bb115, !dbg !249

cont105:                                          ; preds = %cont98
  %rem103 = urem i32 %div62, 400, !dbg !249
  %cmp106 = icmp eq i32 %rem103, 0, !dbg !249
  %phitmp = select i1 %cmp106, i32 366, i32 365, !dbg !249
  br label %ioc_bb115, !dbg !249

ioc_bb115:                                        ; preds = %cont98, %cont105, %cont94
  %37 = phi i32 [ 365, %cont94 ], [ 366, %cont98 ], [ %phitmp, %cont105 ]
  %38 = sext i32 %32 to i64, !dbg !251
  tail call void @__ioc_report_conversion(i32 201, i32 26, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %38, i8 1) nounwind, !dbg !251
  %39 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %37, i32 %32), !dbg !251
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !251
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !251
  br i1 %41, label %ioc_bb117, label %cont118, !dbg !251

ioc_bb117:                                        ; preds = %ioc_bb115
  %42 = zext i32 %37 to i64, !dbg !251
  tail call void @__ioc_report_add_overflow(i32 201, i32 24, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %42, i64 %35, i8 5) nounwind, !dbg !251
  br label %cont118, !dbg !251

cont118:                                          ; preds = %ioc_bb115, %ioc_bb117
  %43 = icmp sgt i32 %40, -1, !dbg !251
  br i1 %43, label %cont121, label %ioc_bb120, !dbg !251

ioc_bb120:                                        ; preds = %cont118
  %44 = zext i32 %40 to i64, !dbg !251
  tail call void @__ioc_report_conversion(i32 201, i32 12, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %44, i8 0) nounwind, !dbg !251
  br label %cont121, !dbg !251

cont121:                                          ; preds = %ioc_bb120, %cont118
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !102), !dbg !251
  %45 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %div62, i32 1), !dbg !252
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !252
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !252
  br i1 %47, label %ioc_bb122, label %if.end, !dbg !252

ioc_bb122:                                        ; preds = %cont121
  tail call void @__ioc_report_sub_overflow(i32 202, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %19, i64 1, i8 5) nounwind, !dbg !252
  br label %if.end, !dbg !252

if.end:                                           ; preds = %cont86, %ioc_bb122, %cont121
  %year.0 = phi i32 [ %46, %cont121 ], [ %46, %ioc_bb122 ], [ %div62, %cont86 ]
  %yday.0 = phi i32 [ %40, %cont121 ], [ %40, %ioc_bb122 ], [ %32, %cont86 ]
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %yday.0, i32 31), !dbg !253
  %49 = extractvalue { i32, i1 } %48, 0, !dbg !253
  %50 = extractvalue { i32, i1 } %48, 1, !dbg !253
  %51 = sext i32 %yday.0 to i64, !dbg !253
  br i1 %50, label %ioc_bb124, label %cont125, !dbg !253

ioc_bb124:                                        ; preds = %if.end
  tail call void @__ioc_report_add_overflow(i32 211, i32 16, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %51, i64 31, i8 13) nounwind, !dbg !253
  br label %cont125, !dbg !253

cont125:                                          ; preds = %if.end, %ioc_bb124
  %52 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %49, i32 10), !dbg !253
  %53 = extractvalue { i32, i1 } %52, 0, !dbg !253
  %54 = extractvalue { i32, i1 } %52, 1, !dbg !253
  br i1 %54, label %ioc_bb126, label %cont129, !dbg !253

ioc_bb126:                                        ; preds = %cont125
  %55 = sext i32 %49 to i64, !dbg !253
  tail call void @__ioc_report_mul_overflow(i32 211, i32 22, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %55, i64 10, i8 13) nounwind, !dbg !253
  br label %cont129, !dbg !253

cont129:                                          ; preds = %ioc_bb126, %cont125
  %div130 = sdiv i32 %53, 306, !dbg !253
  %56 = icmp sgt i32 %53, -306, !dbg !253
  br i1 %56, label %cont133, label %ioc_bb132, !dbg !253

ioc_bb132:                                        ; preds = %cont129
  %57 = sext i32 %div130 to i64, !dbg !253
  tail call void @__ioc_report_conversion(i32 211, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %57, i8 1) nounwind, !dbg !253
  br label %cont133, !dbg !253

cont133:                                          ; preds = %ioc_bb132, %cont129
  tail call void @llvm.dbg.value(metadata !{i32 %div130}, i64 0, metadata !109), !dbg !253
  %58 = icmp sgt i32 %yday.0, -1, !dbg !254
  br i1 %58, label %cont138, label %ioc_bb135, !dbg !254

ioc_bb135:                                        ; preds = %cont133
  tail call void @__ioc_report_conversion(i32 213, i32 10, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %51, i8 1) nounwind, !dbg !254
  br label %cont138, !dbg !254

cont138:                                          ; preds = %cont133, %ioc_bb135
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div130, i32 367), !dbg !254
  %60 = extractvalue { i32, i1 } %59, 0, !dbg !254
  %61 = extractvalue { i32, i1 } %59, 1, !dbg !254
  %62 = zext i32 %div130 to i64, !dbg !254
  br i1 %61, label %ioc_bb139, label %cont143, !dbg !254

ioc_bb139:                                        ; preds = %cont138
  tail call void @__ioc_report_mul_overflow(i32 213, i32 22, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 367, i64 %62, i8 5) nounwind, !dbg !254
  br label %cont143, !dbg !254

cont143:                                          ; preds = %ioc_bb139, %cont138
  %div144 = udiv i32 %60, 12, !dbg !254
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %div144, i32 30), !dbg !254
  %64 = extractvalue { i32, i1 } %63, 0, !dbg !254
  %65 = extractvalue { i32, i1 } %63, 1, !dbg !254
  br i1 %65, label %ioc_bb147, label %cont148, !dbg !254

ioc_bb147:                                        ; preds = %cont143
  %66 = zext i32 %div144 to i64, !dbg !254
  tail call void @__ioc_report_sub_overflow(i32 213, i32 33, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %66, i64 30, i8 5) nounwind, !dbg !254
  br label %cont148, !dbg !254

cont148:                                          ; preds = %cont143, %ioc_bb147
  %67 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %yday.0, i32 %64), !dbg !254
  %68 = extractvalue { i32, i1 } %67, 0, !dbg !254
  %69 = extractvalue { i32, i1 } %67, 1, !dbg !254
  br i1 %69, label %ioc_bb149, label %cont152, !dbg !254

ioc_bb149:                                        ; preds = %cont148
  %70 = zext i32 %64 to i64, !dbg !254
  %71 = zext i32 %yday.0 to i64, !dbg !254
  tail call void @__ioc_report_sub_overflow(i32 213, i32 15, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %71, i64 %70, i8 5) nounwind, !dbg !254
  br label %cont152, !dbg !254

cont152:                                          ; preds = %ioc_bb149, %cont148
  %72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %68, i32 1), !dbg !254
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !254
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !254
  br i1 %74, label %ioc_bb153, label %cont154, !dbg !254

ioc_bb153:                                        ; preds = %cont152
  %75 = zext i32 %68 to i64, !dbg !254
  tail call void @__ioc_report_add_overflow(i32 213, i32 39, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %75, i64 1, i8 5) nounwind, !dbg !254
  br label %cont154, !dbg !254

cont154:                                          ; preds = %cont152, %ioc_bb153
  tail call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !108), !dbg !254
  %cmp155 = icmp sgt i32 %yday.0, 305, !dbg !255
  br i1 %cmp155, label %if.then156, label %cont164, !dbg !255

if.then156:                                       ; preds = %cont154
  %76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %year.0, i32 1), !dbg !256
  %77 = extractvalue { i32, i1 } %76, 0, !dbg !256
  %78 = extractvalue { i32, i1 } %76, 1, !dbg !256
  br i1 %78, label %ioc_bb157, label %cont160, !dbg !256

ioc_bb157:                                        ; preds = %if.then156
  %79 = zext i32 %year.0 to i64, !dbg !256
  tail call void @__ioc_report_add_overflow(i32 215, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %79, i64 1, i8 5) nounwind, !dbg !256
  br label %cont160, !dbg !256

cont160:                                          ; preds = %ioc_bb157, %if.then156
  tail call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !110), !dbg !256
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %div130, i32 10), !dbg !258
  %81 = extractvalue { i32, i1 } %80, 0, !dbg !258
  %82 = extractvalue { i32, i1 } %80, 1, !dbg !258
  br i1 %82, label %ioc_bb161, label %cont170, !dbg !258

ioc_bb161:                                        ; preds = %cont160
  tail call void @__ioc_report_sub_overflow(i32 216, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @8, i32 0, i32 0), i64 %62, i64 10, i8 5) nounwind, !dbg !258
  br label %cont170, !dbg !258

cont164:                                          ; preds = %cont154
  %83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %div130, i32 2), !dbg !259
  %84 = extractvalue { i32, i1 } %83, 0, !dbg !259
  %85 = extractvalue { i32, i1 } %83, 1, !dbg !259
  br i1 %85, label %ioc_bb165, label %cont170, !dbg !259

ioc_bb165:                                        ; preds = %cont164
  tail call void @__ioc_report_add_overflow(i32 224, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @9, i32 0, i32 0), i64 %62, i64 2, i8 5) nounwind, !dbg !259
  br label %cont170, !dbg !259

cont170:                                          ; preds = %cont160, %ioc_bb161, %cont164, %ioc_bb165
  %mon.0 = phi i32 [ %81, %cont160 ], [ %81, %ioc_bb161 ], [ %84, %cont164 ], [ %84, %ioc_bb165 ]
  %year.1 = phi i32 [ %77, %cont160 ], [ %77, %ioc_bb161 ], [ %year.0, %cont164 ], [ %year.0, %ioc_bb165 ]
  %tm_sec = getelementptr inbounds %struct.tm* %tp, i32 0, i32 0, !dbg !261
  store i32 %rem30, i32* %tm_sec, align 4, !dbg !261, !tbaa !183
  %tm_min = getelementptr inbounds %struct.tm* %tp, i32 0, i32 1, !dbg !262
  store i32 %div26, i32* %tm_min, align 4, !dbg !262, !tbaa !183
  %tm_hour = getelementptr inbounds %struct.tm* %tp, i32 0, i32 2, !dbg !263
  store i32 %div18, i32* %tm_hour, align 4, !dbg !263, !tbaa !183
  %86 = icmp sgt i32 %73, -1, !dbg !264
  br i1 %86, label %cont179, label %ioc_bb178, !dbg !264

ioc_bb178:                                        ; preds = %cont170
  %87 = zext i32 %73 to i64, !dbg !264
  tail call void @__ioc_report_conversion(i32 234, i32 26, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %87, i8 0) nounwind, !dbg !264
  br label %cont179, !dbg !264

cont179:                                          ; preds = %ioc_bb178, %cont170
  %tm_mday = getelementptr inbounds %struct.tm* %tp, i32 0, i32 3, !dbg !264
  store i32 %73, i32* %tm_mday, align 4, !dbg !264, !tbaa !183
  %88 = icmp sgt i32 %mon.0, -1, !dbg !265
  br i1 %88, label %cont182, label %ioc_bb181, !dbg !265

ioc_bb181:                                        ; preds = %cont179
  %89 = zext i32 %mon.0 to i64, !dbg !265
  tail call void @__ioc_report_conversion(i32 235, i32 25, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %89, i8 0) nounwind, !dbg !265
  br label %cont182, !dbg !265

cont182:                                          ; preds = %ioc_bb181, %cont179
  %tm_mon = getelementptr inbounds %struct.tm* %tp, i32 0, i32 4, !dbg !265
  store i32 %mon.0, i32* %tm_mon, align 4, !dbg !265, !tbaa !183
  %90 = icmp sgt i32 %year.1, -1, !dbg !266
  br i1 %90, label %cont185, label %ioc_bb184, !dbg !266

ioc_bb184:                                        ; preds = %cont182
  %91 = zext i32 %year.1 to i64, !dbg !266
  tail call void @__ioc_report_conversion(i32 236, i32 26, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %91, i8 0) nounwind, !dbg !266
  br label %cont185, !dbg !266

cont185:                                          ; preds = %ioc_bb184, %cont182
  %tm_year = getelementptr inbounds %struct.tm* %tp, i32 0, i32 5, !dbg !266
  store i32 %year.1, i32* %tm_year, align 4, !dbg !266, !tbaa !183
  %tm_wday = getelementptr inbounds %struct.tm* %tp, i32 0, i32 6, !dbg !267
  store i32 %rem, i32* %tm_wday, align 4, !dbg !267, !tbaa !183
  ret void, !dbg !268
}

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare void @ngx_localtime(i32, %struct.tm*)

define void @ngx_time_sigsafe_update() nounwind {
entry:
  %tm = alloca %struct.tm, align 4
  %tv = alloca %struct.timeval, align 4
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tm}, metadata !74), !dbg !269
  call void @llvm.dbg.declare(metadata !{%struct.timeval* %tv}, metadata !77), !dbg !270
  %0 = load volatile i32* @ngx_time_lock, align 4, !dbg !271, !tbaa !197
  %cmp = icmp eq i32 %0, 0, !dbg !271
  br i1 %cmp, label %cont4, label %return, !dbg !271

cont4:                                            ; preds = %entry
  %1 = cmpxchg i32* @ngx_time_lock, i32 0, i32 1 seq_cst, !dbg !271
  %2 = icmp eq i32 %1, 0, !dbg !271
  br i1 %2, label %if.end, label %return, !dbg !271

if.end:                                           ; preds = %cont4
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) nounwind, !dbg !272
  %tv_sec = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !dbg !273
  %3 = load i32* %tv_sec, align 4, !dbg !273, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !75), !dbg !273
  %4 = load i32* @slot, align 4, !dbg !274, !tbaa !183
  %sec5 = getelementptr inbounds [64 x %struct.ngx_time_t]* @cached_time, i32 0, i32 %4, i32 0, !dbg !275
  %5 = load i32* %sec5, align 4, !dbg !275, !tbaa !197
  %cmp6 = icmp eq i32 %5, %3, !dbg !275
  br i1 %cmp6, label %cont9, label %cont14, !dbg !275

cont9:                                            ; preds = %if.end
  store volatile i32 0, i32* @ngx_time_lock, align 4, !dbg !276, !tbaa !197
  br label %return, !dbg !278

cont14:                                           ; preds = %if.end
  %cmp15 = icmp eq i32 %4, 63, !dbg !279
  br i1 %cmp15, label %if.end21, label %if.else, !dbg !279

if.else:                                          ; preds = %cont14
  %6 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 1), !dbg !280
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !280
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !280
  br i1 %8, label %ioc_bb19, label %if.end21, !dbg !280

ioc_bb19:                                         ; preds = %if.else
  %9 = zext i32 %4 to i64, !dbg !280
  call void @__ioc_report_add_overflow(i32 133, i32 9, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !280
  br label %if.end21, !dbg !280

if.end21:                                         ; preds = %ioc_bb19, %if.else, %cont14
  %storemerge = phi i32 [ 0, %cont14 ], [ %7, %if.else ], [ %7, %ioc_bb19 ]
  store i32 %storemerge, i32* @slot, align 4, !dbg !282
  %10 = load i32* @cached_gmtoff, align 4, !dbg !284, !tbaa !183
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %10, i32 60), !dbg !284
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !284
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !284
  br i1 %13, label %ioc_bb22, label %cont23, !dbg !284

ioc_bb22:                                         ; preds = %if.end21
  %14 = sext i32 %10 to i64, !dbg !284
  call void @__ioc_report_mul_overflow(i32 135, i32 35, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %14, i64 60, i8 13) nounwind, !dbg !284
  br label %cont23, !dbg !284

cont23:                                           ; preds = %if.end21, %ioc_bb22
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %12), !dbg !284
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !284
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !284
  br i1 %17, label %ioc_bb24, label %cont25, !dbg !284

ioc_bb24:                                         ; preds = %cont23
  %18 = sext i32 %12 to i64, !dbg !284
  %19 = sext i32 %3 to i64, !dbg !284
  call void @__ioc_report_add_overflow(i32 135, i32 18, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind, !dbg !284
  br label %cont25, !dbg !284

cont25:                                           ; preds = %cont23, %ioc_bb24
  call void @ngx_gmtime(i32 %16, %struct.tm* %tm), !dbg !284
  %20 = load i32* @slot, align 4, !dbg !285, !tbaa !183
  %arrayidx27 = getelementptr inbounds [64 x [20 x i8]]* @cached_err_log_time, i32 0, i32 %20, i32 0, !dbg !285
  call void @llvm.dbg.value(metadata !{i8* %arrayidx27}, i64 0, metadata !72), !dbg !285
  %tm_year = getelementptr inbounds %struct.tm* %tm, i32 0, i32 5, !dbg !286
  %21 = load i32* %tm_year, align 4, !dbg !286, !tbaa !183
  %tm_mon = getelementptr inbounds %struct.tm* %tm, i32 0, i32 4, !dbg !286
  %22 = load i32* %tm_mon, align 4, !dbg !286, !tbaa !183
  %tm_mday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3, !dbg !286
  %23 = load i32* %tm_mday, align 4, !dbg !286, !tbaa !183
  %tm_hour = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2, !dbg !286
  %24 = load i32* %tm_hour, align 4, !dbg !286, !tbaa !183
  %tm_min = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1, !dbg !286
  %25 = load i32* %tm_min, align 4, !dbg !286, !tbaa !183
  %tm_sec = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0, !dbg !286
  %26 = load i32* %tm_sec, align 4, !dbg !286, !tbaa !183
  %call28 = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %arrayidx27, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26) nounwind, !dbg !286
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind, !dbg !287, !srcloc !288
  store volatile i8* %arrayidx27, i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_err_log_time, i32 0, i32 1), align 4, !dbg !289, !tbaa !190
  store volatile i32 0, i32* @ngx_time_lock, align 4, !dbg !290, !tbaa !197
  br label %return, !dbg !291

return:                                           ; preds = %entry, %cont4, %cont25, %cont9
  ret void, !dbg !291
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

define i8* @ngx_http_time(i8* %buf, i32 %t) nounwind {
entry:
  %tm = alloca %struct.tm, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !83), !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !84), !dbg !292
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tm}, metadata !85), !dbg !293
  call void @ngx_gmtime(i32 %t, %struct.tm* %tm), !dbg !294
  %tm_wday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 6, !dbg !295
  %0 = load i32* %tm_wday, align 4, !dbg !295, !tbaa !183
  %arrayidx = getelementptr inbounds [7 x i8*]* @week, i32 0, i32 %0, !dbg !295
  %1 = load i8** %arrayidx, align 4, !dbg !295, !tbaa !190
  %tm_mday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3, !dbg !295
  %2 = load i32* %tm_mday, align 4, !dbg !295, !tbaa !183
  %tm_mon = getelementptr inbounds %struct.tm* %tm, i32 0, i32 4, !dbg !295
  %3 = load i32* %tm_mon, align 4, !dbg !295, !tbaa !183
  %4 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %3, i32 1), !dbg !295
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !295
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !295
  br i1 %6, label %ioc_bb, label %cont, !dbg !295

ioc_bb:                                           ; preds = %entry
  %7 = sext i32 %3 to i64, !dbg !295
  call void @__ioc_report_sub_overflow(i32 148, i32 108, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %7, i64 1, i8 13) nounwind, !dbg !295
  br label %cont, !dbg !295

cont:                                             ; preds = %entry, %ioc_bb
  %arrayidx1 = getelementptr inbounds [12 x i8*]* @months, i32 0, i32 %5, !dbg !295
  %8 = load i8** %arrayidx1, align 4, !dbg !295, !tbaa !190
  %tm_year = getelementptr inbounds %struct.tm* %tm, i32 0, i32 5, !dbg !295
  %9 = load i32* %tm_year, align 4, !dbg !295, !tbaa !183
  %tm_hour = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2, !dbg !295
  %10 = load i32* %tm_hour, align 4, !dbg !295, !tbaa !183
  %tm_min = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1, !dbg !295
  %11 = load i32* %tm_min, align 4, !dbg !295, !tbaa !183
  %tm_sec = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0, !dbg !295
  %12 = load i32* %tm_sec, align 4, !dbg !295, !tbaa !183
  %call = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([35 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %2, i8* %8, i32 %9, i32 %10, i32 %11, i32 %12) nounwind, !dbg !295
  ret i8* %call, !dbg !295
}

define i8* @ngx_http_cookie_time(i8* %buf, i32 %t) nounwind {
entry:
  %tm = alloca %struct.tm, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !90), !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !91), !dbg !296
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tm}, metadata !92), !dbg !297
  call void @ngx_gmtime(i32 %t, %struct.tm* %tm), !dbg !298
  %tm_year = getelementptr inbounds %struct.tm* %tm, i32 0, i32 5, !dbg !299
  %0 = load i32* %tm_year, align 4, !dbg !299, !tbaa !183
  %cmp = icmp sgt i32 %0, 2037, !dbg !299
  %cond = select i1 %cmp, i8* getelementptr inbounds ([34 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), !dbg !299
  %tm_wday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 6, !dbg !299
  %1 = load i32* %tm_wday, align 4, !dbg !299, !tbaa !183
  %arrayidx = getelementptr inbounds [7 x i8*]* @week, i32 0, i32 %1, !dbg !299
  %2 = load i8** %arrayidx, align 4, !dbg !299, !tbaa !190
  %tm_mday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3, !dbg !299
  %3 = load i32* %tm_mday, align 4, !dbg !299, !tbaa !183
  %tm_mon = getelementptr inbounds %struct.tm* %tm, i32 0, i32 4, !dbg !299
  %4 = load i32* %tm_mon, align 4, !dbg !299, !tbaa !183
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %4, i32 1), !dbg !299
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !299
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !299
  br i1 %7, label %ioc_bb, label %cont, !dbg !299

ioc_bb:                                           ; preds = %entry
  %8 = sext i32 %4 to i64, !dbg !299
  call void @__ioc_report_sub_overflow(i32 159, i32 167, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind, !dbg !299
  br label %cont, !dbg !299

cont:                                             ; preds = %entry, %ioc_bb
  %arrayidx1 = getelementptr inbounds [12 x i8*]* @months, i32 0, i32 %6, !dbg !299
  %9 = load i8** %arrayidx1, align 4, !dbg !299, !tbaa !190
  br i1 %cmp, label %cond.end, label %cont7, !dbg !299

cont7:                                            ; preds = %cont
  %rem = srem i32 %0, 100, !dbg !299
  br label %cond.end, !dbg !299

cond.end:                                         ; preds = %cont, %cont7
  %cond8 = phi i32 [ %rem, %cont7 ], [ %0, %cont ], !dbg !299
  %tm_hour = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2, !dbg !299
  %10 = load i32* %tm_hour, align 4, !dbg !299, !tbaa !183
  %tm_min = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1, !dbg !299
  %11 = load i32* %tm_min, align 4, !dbg !299, !tbaa !183
  %tm_sec = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0, !dbg !299
  %12 = load i32* %tm_sec, align 4, !dbg !299, !tbaa !183
  %call = call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* %cond, i8* %2, i32 %3, i8* %9, i32 %cond8, i32 %10, i32 %11, i32 %12) nounwind, !dbg !299
  ret i8* %call, !dbg !299
}

define i32 @ngx_next_time(i32 %when) nounwind {
entry:
  %tm = alloca %struct.tm, align 4
  call void @llvm.dbg.value(metadata !{i32 %when}, i64 0, metadata !119), !dbg !300
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tm}, metadata !123), !dbg !301
  %0 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !302, !tbaa !190
  %sec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 0, !dbg !302
  %1 = load volatile i32* %sec, align 4, !dbg !302, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !120), !dbg !302
  call void @ngx_libc_localtime(i32 %1, %struct.tm* %tm) nounwind, !dbg !303
  %div = sdiv i32 %when, 3600, !dbg !304
  %tm_hour = getelementptr inbounds %struct.tm* %tm, i32 0, i32 2, !dbg !304
  store i32 %div, i32* %tm_hour, align 4, !dbg !304, !tbaa !183
  %rem = srem i32 %when, 3600, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !119), !dbg !305
  %div9 = sdiv i32 %rem, 60, !dbg !306
  %tm_min = getelementptr inbounds %struct.tm* %tm, i32 0, i32 1, !dbg !306
  store i32 %div9, i32* %tm_min, align 4, !dbg !306, !tbaa !183
  %rem14 = srem i32 %rem, 60, !dbg !307
  %tm_sec = getelementptr inbounds %struct.tm* %tm, i32 0, i32 0, !dbg !307
  store i32 %rem14, i32* %tm_sec, align 4, !dbg !307, !tbaa !183
  %call = call i32 @mktime(%struct.tm* %tm) nounwind, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !122), !dbg !308
  %cmp = icmp eq i32 %call, -1, !dbg !309
  br i1 %cmp, label %return, label %if.end, !dbg !309

if.end:                                           ; preds = %entry
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call, i32 %1), !dbg !310
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !310
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !310
  br i1 %4, label %ioc_bb19, label %cont20, !dbg !310

ioc_bb19:                                         ; preds = %if.end
  %5 = sext i32 %1 to i64, !dbg !310
  %6 = sext i32 %call to i64, !dbg !310
  call void @__ioc_report_sub_overflow(i32 255, i32 12, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind, !dbg !310
  br label %cont20, !dbg !310

cont20:                                           ; preds = %if.end, %ioc_bb19
  %cmp21 = icmp sgt i32 %3, 0, !dbg !310
  br i1 %cmp21, label %return, label %if.end23, !dbg !310

if.end23:                                         ; preds = %cont20
  %tm_mday = getelementptr inbounds %struct.tm* %tm, i32 0, i32 3, !dbg !311
  %7 = load i32* %tm_mday, align 4, !dbg !311, !tbaa !183
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 1), !dbg !311
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !311
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !311
  br i1 %10, label %ioc_bb24, label %cont25, !dbg !311

ioc_bb24:                                         ; preds = %if.end23
  %11 = sext i32 %7 to i64, !dbg !311
  call void @__ioc_report_add_overflow(i32 258, i32 13, i8* getelementptr inbounds ([21 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @14, i32 0, i32 0), i64 %11, i64 1, i8 13) nounwind, !dbg !311
  br label %cont25, !dbg !311

cont25:                                           ; preds = %if.end23, %ioc_bb24
  store i32 %9, i32* %tm_mday, align 4, !dbg !311, !tbaa !183
  %call26 = call i32 @mktime(%struct.tm* %tm) nounwind, !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !122), !dbg !312
  ret i32 %call26, !dbg !313

return:                                           ; preds = %cont20, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call, %cont20 ]
  ret i32 %retval.0, !dbg !314
}

declare void @ngx_libc_localtime(i32, %struct.tm*)

declare i32 @mktime(%struct.tm* nocapture) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_times.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !124} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !9, metadata !69, metadata !78, metadata !87, metadata !94, metadata !114}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_time_init", metadata !"ngx_time_init", metadata !"", metadata !6, i32 40, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ngx_time_init, null, null, metadata !1, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [ngx_time_init]
!6 = metadata !{i32 786473, metadata !"src/core/ngx_times.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null}
!9 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_time_update", metadata !"ngx_time_update", metadata !"", metadata !6, i32 50, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ngx_time_update, null, null, metadata !10, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [ngx_time_update]
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !12, metadata !18, metadata !19, metadata !20, metadata !21, metadata !42, metadata !43, metadata !46, metadata !50, metadata !62}
!12 = metadata !{i32 786688, metadata !13, metadata !"p0", metadata !6, i32 52, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p0] [line 52]
!13 = metadata !{i32 786443, metadata !9, i32 51, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!15 = metadata !{i32 786454, null, metadata !"u_char", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!16 = metadata !{i32 786454, null, metadata !"__u_char", metadata !6, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!17 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!18 = metadata !{i32 786688, metadata !13, metadata !"p1", metadata !6, i32 53, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 53]
!19 = metadata !{i32 786688, metadata !13, metadata !"p2", metadata !6, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 54]
!20 = metadata !{i32 786688, metadata !13, metadata !"p3", metadata !6, i32 55, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p3] [line 55]
!21 = metadata !{i32 786688, metadata !13, metadata !"tm", metadata !6, i32 56, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 56]
!22 = metadata !{i32 786454, null, metadata !"ngx_tm_t", metadata !6, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [ngx_tm_t] [line 19, size 0, align 0, offset 0] [from tm]
!23 = metadata !{i32 786451, null, metadata !"tm", metadata !24, i32 133, i64 352, i64 32, i32 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_structure_type ] [tm] [line 133, size 352, align 32, offset 0] [from ]
!24 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !38}
!26 = metadata !{i32 786445, metadata !23, metadata !"tm_sec", metadata !24, i32 135, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!28 = metadata !{i32 786445, metadata !23, metadata !"tm_min", metadata !24, i32 136, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!29 = metadata !{i32 786445, metadata !23, metadata !"tm_hour", metadata !24, i32 137, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!30 = metadata !{i32 786445, metadata !23, metadata !"tm_mday", metadata !24, i32 138, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!31 = metadata !{i32 786445, metadata !23, metadata !"tm_mon", metadata !24, i32 139, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!32 = metadata !{i32 786445, metadata !23, metadata !"tm_year", metadata !24, i32 140, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!33 = metadata !{i32 786445, metadata !23, metadata !"tm_wday", metadata !24, i32 141, i64 32, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!34 = metadata !{i32 786445, metadata !23, metadata !"tm_yday", metadata !24, i32 142, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!35 = metadata !{i32 786445, metadata !23, metadata !"tm_isdst", metadata !24, i32 143, i64 32, i64 32, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!36 = metadata !{i32 786445, metadata !23, metadata !"tm_gmtoff", metadata !24, i32 146, i64 32, i64 32, i64 288, i32 0, metadata !37} ; [ DW_TAG_member ] [tm_gmtoff] [line 146, size 32, align 32, offset 288] [from long int]
!37 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 786445, metadata !23, metadata !"tm_zone", metadata !24, i32 147, i64 32, i64 32, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [tm_zone] [line 147, size 32, align 32, offset 320] [from ]
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!40 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!41 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!42 = metadata !{i32 786688, metadata !13, metadata !"gmt", metadata !6, i32 57, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gmt] [line 57]
!43 = metadata !{i32 786688, metadata !13, metadata !"sec", metadata !6, i32 58, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sec] [line 58]
!44 = metadata !{i32 786454, null, metadata !"time_t", metadata !6, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!45 = metadata !{i32 786454, null, metadata !"__time_t", metadata !6, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!46 = metadata !{i32 786688, metadata !13, metadata !"msec", metadata !6, i32 59, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msec] [line 59]
!47 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !6, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!48 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !6, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!49 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786688, metadata !13, metadata !"tp", metadata !6, i32 60, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 60]
!51 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_time_t]
!52 = metadata !{i32 786454, null, metadata !"ngx_time_t", metadata !6, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [ngx_time_t] [line 20, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786451, null, metadata !"", metadata !54, i32 16, i64 96, i64 32, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 96, align 32, offset 0] [from ]
!54 = metadata !{i32 786473, metadata !"src/core/ngx_times.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786445, metadata !53, metadata !"sec", metadata !54, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [sec] [line 17, size 32, align 32, offset 0] [from time_t]
!57 = metadata !{i32 786445, metadata !53, metadata !"msec", metadata !54, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [msec] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!58 = metadata !{i32 786445, metadata !53, metadata !"gmtoff", metadata !54, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [gmtoff] [line 19, size 32, align 32, offset 64] [from ngx_int_t]
!59 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !54, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!60 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !54, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!61 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !54, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!62 = metadata !{i32 786688, metadata !13, metadata !"tv", metadata !6, i32 61, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 61]
!63 = metadata !{i32 786451, null, metadata !"timeval", metadata !64, i32 75, i64 64, i64 32, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timeval] [line 75, size 64, align 32, offset 0] [from ]
!64 = metadata !{i32 786473, metadata !"/usr/include/bits/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786445, metadata !63, metadata !"tv_sec", metadata !64, i32 77, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [tv_sec] [line 77, size 32, align 32, offset 0] [from __time_t]
!67 = metadata !{i32 786445, metadata !63, metadata !"tv_usec", metadata !64, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [tv_usec] [line 78, size 32, align 32, offset 32] [from __suseconds_t]
!68 = metadata !{i32 786454, null, metadata !"__suseconds_t", metadata !64, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__suseconds_t] [line 151, size 0, align 0, offset 0] [from long int]
!69 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_time_sigsafe_update", metadata !"ngx_time_sigsafe_update", metadata !"", metadata !6, i32 111, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ngx_time_sigsafe_update, null, null, metadata !70, i32 112} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 112] [ngx_time_sigsafe_update]
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !72, metadata !74, metadata !75, metadata !76, metadata !77}
!72 = metadata !{i32 786688, metadata !73, metadata !"p", metadata !6, i32 113, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 113]
!73 = metadata !{i32 786443, metadata !69, i32 112, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!74 = metadata !{i32 786688, metadata !73, metadata !"tm", metadata !6, i32 114, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 114]
!75 = metadata !{i32 786688, metadata !73, metadata !"sec", metadata !6, i32 115, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sec] [line 115]
!76 = metadata !{i32 786688, metadata !73, metadata !"tp", metadata !6, i32 116, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 116]
!77 = metadata !{i32 786688, metadata !73, metadata !"tv", metadata !6, i32 117, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tv] [line 117]
!78 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_time", metadata !"ngx_http_time", metadata !"", metadata !6, i32 144, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @ngx_http_time, null, null, metadata !81, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [ngx_http_time]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !14, metadata !14, metadata !44}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !83, metadata !84, metadata !85}
!83 = metadata !{i32 786689, metadata !78, metadata !"buf", metadata !6, i32 16777360, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 144]
!84 = metadata !{i32 786689, metadata !78, metadata !"t", metadata !6, i32 33554576, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 144]
!85 = metadata !{i32 786688, metadata !86, metadata !"tm", metadata !6, i32 146, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 146]
!86 = metadata !{i32 786443, metadata !78, i32 145, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!87 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_cookie_time", metadata !"ngx_http_cookie_time", metadata !"", metadata !6, i32 151, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @ngx_http_cookie_time, null, null, metadata !88, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [ngx_http_cookie_time]
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !90, metadata !91, metadata !92}
!90 = metadata !{i32 786689, metadata !87, metadata !"buf", metadata !6, i32 16777367, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 151]
!91 = metadata !{i32 786689, metadata !87, metadata !"t", metadata !6, i32 33554583, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 151]
!92 = metadata !{i32 786688, metadata !93, metadata !"tm", metadata !6, i32 153, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 153]
!93 = metadata !{i32 786443, metadata !87, i32 152, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!94 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_gmtime", metadata !"ngx_gmtime", metadata !"", metadata !6, i32 162, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.tm*)* @ngx_gmtime, null, null, metadata !98, i32 163} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 163] [ngx_gmtime]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !44, metadata !97}
!97 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_tm_t]
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113}
!100 = metadata !{i32 786689, metadata !94, metadata !"t", metadata !6, i32 16777378, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 162]
!101 = metadata !{i32 786689, metadata !94, metadata !"tp", metadata !6, i32 33554594, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tp] [line 162]
!102 = metadata !{i32 786688, metadata !103, metadata !"yday", metadata !6, i32 164, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yday] [line 164]
!103 = metadata !{i32 786443, metadata !94, i32 163, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!104 = metadata !{i32 786688, metadata !103, metadata !"n", metadata !6, i32 165, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 165]
!105 = metadata !{i32 786688, metadata !103, metadata !"sec", metadata !6, i32 166, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sec] [line 166]
!106 = metadata !{i32 786688, metadata !103, metadata !"min", metadata !6, i32 167, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 167]
!107 = metadata !{i32 786688, metadata !103, metadata !"hour", metadata !6, i32 168, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hour] [line 168]
!108 = metadata !{i32 786688, metadata !103, metadata !"mday", metadata !6, i32 169, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mday] [line 169]
!109 = metadata !{i32 786688, metadata !103, metadata !"mon", metadata !6, i32 170, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mon] [line 170]
!110 = metadata !{i32 786688, metadata !103, metadata !"year", metadata !6, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [year] [line 171]
!111 = metadata !{i32 786688, metadata !103, metadata !"wday", metadata !6, i32 172, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wday] [line 172]
!112 = metadata !{i32 786688, metadata !103, metadata !"days", metadata !6, i32 173, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [days] [line 173]
!113 = metadata !{i32 786688, metadata !103, metadata !"leap", metadata !6, i32 174, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leap] [line 174]
!114 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_next_time", metadata !"ngx_next_time", metadata !"", metadata !6, i32 240, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @ngx_next_time, null, null, metadata !117, i32 241} ; [ DW_TAG_subprogram ] [line 240] [def] [scope 241] [ngx_next_time]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !44, metadata !44}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !119, metadata !120, metadata !122, metadata !123}
!119 = metadata !{i32 786689, metadata !114, metadata !"when", metadata !6, i32 16777456, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [when] [line 240]
!120 = metadata !{i32 786688, metadata !121, metadata !"now", metadata !6, i32 242, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 242]
!121 = metadata !{i32 786443, metadata !114, i32 241, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!122 = metadata !{i32 786688, metadata !121, metadata !"next", metadata !6, i32 243, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 243]
!123 = metadata !{i32 786688, metadata !121, metadata !"tm", metadata !6, i32 244, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 244]
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !126, metadata !127, metadata !132, metadata !136, metadata !139, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !156, metadata !160, metadata !164, metadata !168, metadata !172, metadata !177}
!126 = metadata !{i32 786484, i32 0, null, metadata !"slot", metadata !"slot", metadata !"", metadata !6, i32 16, metadata !47, i32 1, i32 1, i32* @slot} ; [ DW_TAG_variable ] [slot] [line 16] [local] [def]
!127 = metadata !{i32 786484, i32 0, null, metadata !"ngx_time_lock", metadata !"ngx_time_lock", metadata !"", metadata !6, i32 17, metadata !128, i32 1, i32 1, i32* @ngx_time_lock} ; [ DW_TAG_variable ] [ngx_time_lock] [line 17] [local] [def]
!128 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !6, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!130 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !6, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786484, i32 0, null, metadata !"ngx_current_msec", metadata !"ngx_current_msec", metadata !"", metadata !6, i32 18, metadata !133, i32 0, i32 1, i32* @ngx_current_msec} ; [ DW_TAG_variable ] [ngx_current_msec] [line 18] [def]
!133 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_msec_t]
!134 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!135 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!136 = metadata !{i32 786484, i32 0, null, metadata !"ngx_cached_time", metadata !"ngx_cached_time", metadata !"", metadata !6, i32 19, metadata !137, i32 0, i32 1, %struct.ngx_time_t** @ngx_cached_time} ; [ DW_TAG_variable ] [ngx_cached_time] [line 19] [def]
!137 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!138 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_time_t]
!139 = metadata !{i32 786484, i32 0, null, metadata !"ngx_cached_err_log_time", metadata !"ngx_cached_err_log_time", metadata !"", metadata !6, i32 20, metadata !140, i32 0, i32 1, %struct.ngx_str_t* @ngx_cached_err_log_time} ; [ DW_TAG_variable ] [ngx_cached_err_log_time] [line 20] [def]
!140 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_str_t]
!141 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !6, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786451, null, metadata !"", metadata !143, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!143 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!144 = metadata !{metadata !145, metadata !147}
!145 = metadata !{i32 786445, metadata !142, metadata !"len", metadata !143, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!146 = metadata !{i32 786454, null, metadata !"size_t", metadata !143, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!147 = metadata !{i32 786445, metadata !142, metadata !"data", metadata !143, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!148 = metadata !{i32 786484, i32 0, null, metadata !"ngx_cached_http_time", metadata !"ngx_cached_http_time", metadata !"", metadata !6, i32 21, metadata !140, i32 0, i32 1, %struct.ngx_str_t* @ngx_cached_http_time} ; [ DW_TAG_variable ] [ngx_cached_http_time] [line 21] [def]
!149 = metadata !{i32 786484, i32 0, null, metadata !"ngx_cached_http_log_time", metadata !"ngx_cached_http_log_time", metadata !"", metadata !6, i32 22, metadata !140, i32 0, i32 1, %struct.ngx_str_t* @ngx_cached_http_log_time} ; [ DW_TAG_variable ] [ngx_cached_http_log_time] [line 22] [def]
!150 = metadata !{i32 786484, i32 0, null, metadata !"ngx_cached_http_log_iso8601", metadata !"ngx_cached_http_log_iso8601", metadata !"", metadata !6, i32 23, metadata !140, i32 0, i32 1, %struct.ngx_str_t* @ngx_cached_http_log_iso8601} ; [ DW_TAG_variable ] [ngx_cached_http_log_iso8601] [line 23] [def]
!151 = metadata !{i32 786484, i32 0, null, metadata !"cached_gmtoff", metadata !"cached_gmtoff", metadata !"", metadata !6, i32 30, metadata !59, i32 1, i32 1, i32* @cached_gmtoff} ; [ DW_TAG_variable ] [cached_gmtoff] [line 30] [local] [def]
!152 = metadata !{i32 786484, i32 0, null, metadata !"cached_time", metadata !"cached_time", metadata !"", metadata !6, i32 32, metadata !153, i32 1, i32 1, [64 x %struct.ngx_time_t]* @cached_time} ; [ DW_TAG_variable ] [cached_time] [line 32] [local] [def]
!153 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 6144, i64 32, i32 0, i32 0, metadata !52, metadata !154, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6144, align 32, offset 0] [from ngx_time_t]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ] [0, 63]
!156 = metadata !{i32 786484, i32 0, null, metadata !"cached_err_log_time", metadata !"cached_err_log_time", metadata !"", metadata !6, i32 33, metadata !157, i32 1, i32 1, [64 x [20 x i8]]* @cached_err_log_time} ; [ DW_TAG_variable ] [cached_err_log_time] [line 33] [local] [def]
!157 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 10240, i64 8, i32 0, i32 0, metadata !15, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 10240, align 8, offset 0] [from u_char]
!158 = metadata !{metadata !155, metadata !159}
!159 = metadata !{i32 786465, i64 0, i64 19}      ; [ DW_TAG_subrange_type ] [0, 19]
!160 = metadata !{i32 786484, i32 0, null, metadata !"cached_http_time", metadata !"cached_http_time", metadata !"", metadata !6, i32 34, metadata !161, i32 1, i32 1, [64 x [30 x i8]]* @cached_http_time} ; [ DW_TAG_variable ] [cached_http_time] [line 34] [local] [def]
!161 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !15, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 15360, align 8, offset 0] [from u_char]
!162 = metadata !{metadata !155, metadata !163}
!163 = metadata !{i32 786465, i64 0, i64 29}      ; [ DW_TAG_subrange_type ] [0, 29]
!164 = metadata !{i32 786484, i32 0, null, metadata !"cached_http_log_time", metadata !"cached_http_log_time", metadata !"", metadata !6, i32 35, metadata !165, i32 1, i32 1, [64 x [27 x i8]]* @cached_http_log_time} ; [ DW_TAG_variable ] [cached_http_log_time] [line 35] [local] [def]
!165 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 13824, i64 8, i32 0, i32 0, metadata !15, metadata !166, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 13824, align 8, offset 0] [from u_char]
!166 = metadata !{metadata !155, metadata !167}
!167 = metadata !{i32 786465, i64 0, i64 26}      ; [ DW_TAG_subrange_type ] [0, 26]
!168 = metadata !{i32 786484, i32 0, null, metadata !"cached_http_log_iso8601", metadata !"cached_http_log_iso8601", metadata !"", metadata !6, i32 36, metadata !169, i32 1, i32 1, [64 x [26 x i8]]* @cached_http_log_iso8601} ; [ DW_TAG_variable ] [cached_http_log_iso8601] [line 36] [local] [def]
!169 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 13312, i64 8, i32 0, i32 0, metadata !15, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 13312, align 8, offset 0] [from u_char]
!170 = metadata !{metadata !155, metadata !171}
!171 = metadata !{i32 786465, i64 0, i64 25}      ; [ DW_TAG_subrange_type ] [0, 25]
!172 = metadata !{i32 786484, i32 0, null, metadata !"months", metadata !"months", metadata !"", metadata !6, i32 38, metadata !173, i32 1, i32 1, [12 x i8*]* @months} ; [ DW_TAG_variable ] [months] [line 38] [local] [def]
!173 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 384, i64 32, i32 0, i32 0, metadata !174, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 32, offset 0] [from ]
!174 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!177 = metadata !{i32 786484, i32 0, null, metadata !"week", metadata !"week", metadata !"", metadata !6, i32 37, metadata !178, i32 1, i32 1, [7 x i8*]* @week} ; [ DW_TAG_variable ] [week] [line 37] [local] [def]
!178 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 32, i32 0, i32 0, metadata !174, metadata !179, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 6]
!181 = metadata !{i32 42, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !5, i32 41, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!183 = metadata !{metadata !"int", metadata !184}
!184 = metadata !{metadata !"omnipotent char", metadata !185}
!185 = metadata !{metadata !"Simple C/C++ TBAA"}
!186 = metadata !{i32 43, i32 0, metadata !182, null}
!187 = metadata !{i32 44, i32 0, metadata !182, null}
!188 = metadata !{i32 45, i32 0, metadata !182, null}
!189 = metadata !{i32 46, i32 0, metadata !182, null}
!190 = metadata !{metadata !"any pointer", metadata !184}
!191 = metadata !{i32 47, i32 0, metadata !182, null}
!192 = metadata !{i32 48, i32 0, metadata !182, null}
!193 = metadata !{i32 56, i32 0, metadata !13, null}
!194 = metadata !{i32 57, i32 0, metadata !13, null}
!195 = metadata !{i32 61, i32 0, metadata !13, null}
!196 = metadata !{i32 62, i32 0, metadata !13, null}
!197 = metadata !{metadata !"long", metadata !184}
!198 = metadata !{i32 65, i32 0, metadata !13, null}
!199 = metadata !{i32 67, i32 0, metadata !13, null}
!200 = metadata !{i32 68, i32 0, metadata !13, null}
!201 = metadata !{i32 69, i32 0, metadata !13, null}
!202 = metadata !{i32 70, i32 0, metadata !13, null}
!203 = metadata !{i32 71, i32 0, metadata !13, null}
!204 = metadata !{i32 72, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !13, i32 71, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!206 = metadata !{i32 73, i32 0, metadata !205, null}
!207 = metadata !{i32 74, i32 0, metadata !205, null}
!208 = metadata !{i32 76, i32 0, metadata !13, null}
!209 = metadata !{i32 80, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !13, i32 79, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!211 = metadata !{i32 77, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !13, i32 76, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!213 = metadata !{i32 82, i32 0, metadata !13, null}
!214 = metadata !{i32 83, i32 0, metadata !13, null}
!215 = metadata !{i32 84, i32 0, metadata !13, null}
!216 = metadata !{i32 85, i32 0, metadata !13, null}
!217 = metadata !{i32 86, i32 0, metadata !13, null}
!218 = metadata !{i32 87, i32 0, metadata !13, null}
!219 = metadata !{i32 90, i32 0, metadata !13, null}
!220 = metadata !{i32 91, i32 0, metadata !13, null}
!221 = metadata !{i32 92, i32 0, metadata !13, null}
!222 = metadata !{i32 95, i32 0, metadata !13, null}
!223 = metadata !{i32 96, i32 0, metadata !13, null}
!224 = metadata !{i32 97, i32 0, metadata !13, null}
!225 = metadata !{i32 98, i32 0, metadata !13, null}
!226 = metadata !{i32 99, i32 0, metadata !13, null}
!227 = metadata !{i32 100, i32 0, metadata !13, null}
!228 = metadata !{i32 101, i32 0, metadata !13, null}
!229 = metadata !{i32 4054}
!230 = metadata !{i32 102, i32 0, metadata !13, null}
!231 = metadata !{i32 103, i32 0, metadata !13, null}
!232 = metadata !{i32 104, i32 0, metadata !13, null}
!233 = metadata !{i32 105, i32 0, metadata !13, null}
!234 = metadata !{i32 106, i32 0, metadata !13, null}
!235 = metadata !{i32 107, i32 0, metadata !13, null}
!236 = metadata !{i32 108, i32 0, metadata !13, null}
!237 = metadata !{i32 162, i32 0, metadata !94, null}
!238 = metadata !{i32 176, i32 0, metadata !103, null}
!239 = metadata !{i32 177, i32 0, metadata !103, null}
!240 = metadata !{i32 179, i32 0, metadata !103, null}
!241 = metadata !{i32 180, i32 0, metadata !103, null}
!242 = metadata !{i32 181, i32 0, metadata !103, null}
!243 = metadata !{i32 182, i32 0, metadata !103, null}
!244 = metadata !{i32 183, i32 0, metadata !103, null}
!245 = metadata !{i32 184, i32 0, metadata !103, null}
!246 = metadata !{i32 190, i32 0, metadata !103, null}
!247 = metadata !{i32 197, i32 0, metadata !103, null}
!248 = metadata !{i32 198, i32 0, metadata !103, null}
!249 = metadata !{i32 200, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !103, i32 199, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!251 = metadata !{i32 201, i32 0, metadata !250, null}
!252 = metadata !{i32 202, i32 0, metadata !250, null}
!253 = metadata !{i32 211, i32 0, metadata !103, null}
!254 = metadata !{i32 213, i32 0, metadata !103, null}
!255 = metadata !{i32 214, i32 0, metadata !103, null}
!256 = metadata !{i32 215, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !103, i32 214, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!258 = metadata !{i32 216, i32 0, metadata !257, null}
!259 = metadata !{i32 224, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !103, i32 223, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!261 = metadata !{i32 231, i32 0, metadata !103, null}
!262 = metadata !{i32 232, i32 0, metadata !103, null}
!263 = metadata !{i32 233, i32 0, metadata !103, null}
!264 = metadata !{i32 234, i32 0, metadata !103, null}
!265 = metadata !{i32 235, i32 0, metadata !103, null}
!266 = metadata !{i32 236, i32 0, metadata !103, null}
!267 = metadata !{i32 237, i32 0, metadata !103, null}
!268 = metadata !{i32 238, i32 0, metadata !103, null}
!269 = metadata !{i32 114, i32 0, metadata !73, null}
!270 = metadata !{i32 117, i32 0, metadata !73, null}
!271 = metadata !{i32 118, i32 0, metadata !73, null}
!272 = metadata !{i32 121, i32 0, metadata !73, null}
!273 = metadata !{i32 123, i32 0, metadata !73, null}
!274 = metadata !{i32 124, i32 0, metadata !73, null}
!275 = metadata !{i32 125, i32 0, metadata !73, null}
!276 = metadata !{i32 126, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !73, i32 125, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!278 = metadata !{i32 127, i32 0, metadata !277, null}
!279 = metadata !{i32 129, i32 0, metadata !73, null}
!280 = metadata !{i32 133, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !73, i32 132, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!282 = metadata !{i32 130, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !73, i32 129, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_times.c]
!284 = metadata !{i32 135, i32 0, metadata !73, null}
!285 = metadata !{i32 136, i32 0, metadata !73, null}
!286 = metadata !{i32 137, i32 0, metadata !73, null}
!287 = metadata !{i32 138, i32 0, metadata !73, null}
!288 = metadata !{i32 4957}
!289 = metadata !{i32 139, i32 0, metadata !73, null}
!290 = metadata !{i32 140, i32 0, metadata !73, null}
!291 = metadata !{i32 141, i32 0, metadata !73, null}
!292 = metadata !{i32 144, i32 0, metadata !78, null}
!293 = metadata !{i32 146, i32 0, metadata !86, null}
!294 = metadata !{i32 147, i32 0, metadata !86, null}
!295 = metadata !{i32 148, i32 0, metadata !86, null}
!296 = metadata !{i32 151, i32 0, metadata !87, null}
!297 = metadata !{i32 153, i32 0, metadata !93, null}
!298 = metadata !{i32 154, i32 0, metadata !93, null}
!299 = metadata !{i32 159, i32 0, metadata !93, null}
!300 = metadata !{i32 240, i32 0, metadata !114, null}
!301 = metadata !{i32 244, i32 0, metadata !121, null}
!302 = metadata !{i32 245, i32 0, metadata !121, null}
!303 = metadata !{i32 246, i32 0, metadata !121, null}
!304 = metadata !{i32 247, i32 0, metadata !121, null}
!305 = metadata !{i32 248, i32 0, metadata !121, null}
!306 = metadata !{i32 249, i32 0, metadata !121, null}
!307 = metadata !{i32 250, i32 0, metadata !121, null}
!308 = metadata !{i32 251, i32 0, metadata !121, null}
!309 = metadata !{i32 252, i32 0, metadata !121, null}
!310 = metadata !{i32 255, i32 0, metadata !121, null}
!311 = metadata !{i32 258, i32 0, metadata !121, null}
!312 = metadata !{i32 260, i32 0, metadata !121, null}
!313 = metadata !{i32 261, i32 0, metadata !121, null}
!314 = metadata !{i32 265, i32 0, metadata !121, null}
