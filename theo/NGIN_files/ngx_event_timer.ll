; ModuleID = 'src/event/ngx_event_timer.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_str_t = type { i32, i8* }
%struct.ngx_event_s = type { i8*, i8, i8, i8, void (%struct.ngx_event_s*)*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }

@ngx_event_timer_sentinel = internal global %struct.ngx_rbtree_node_s zeroinitializer, align 4
@ngx_event_timer_rbtree = common global %struct.ngx_rbtree_s zeroinitializer, align 4
@0 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@ngx_current_msec = external global i32
@1 = internal unnamed_addr constant [2 x i8] c"-\00"
@2 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@3 = internal unnamed_addr constant [15 x i8] c"ngx_msec_int_t\00"
@4 = internal unnamed_addr constant [4 x i8] c"int\00"
@5 = internal unnamed_addr constant [28 x i8] c"src/event/ngx_event_timer.c\00"

define i32 @ngx_event_timer_init(%struct.ngx_log_s* nocapture %log) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_log_s* %log}, i64 0, metadata !62), !dbg !161
  store i8 0, i8* getelementptr inbounds (%struct.ngx_rbtree_node_s* @ngx_event_timer_sentinel, i32 0, i32 4), align 4, !dbg !162, !tbaa !164
  store %struct.ngx_rbtree_node_s* @ngx_event_timer_sentinel, %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 0), align 4, !dbg !166, !tbaa !167
  store %struct.ngx_rbtree_node_s* @ngx_event_timer_sentinel, %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 1), align 4, !dbg !168, !tbaa !167
  store void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_rbtree_insert_timer_value, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 2), align 4, !dbg !169, !tbaa !167
  ret i32 0, !dbg !170
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @ngx_rbtree_insert_timer_value(%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)

define i32 @ngx_event_find_timer() nounwind {
entry:
  %0 = load %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 0), align 4, !dbg !171, !tbaa !167
  %cmp = icmp eq %struct.ngx_rbtree_node_s* %0, @ngx_event_timer_sentinel, !dbg !171
  br i1 %cmp, label %ioc_bb1, label %if.end, !dbg !171

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 36, i32 25, i8* getelementptr inbounds ([28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !172
  br label %return, !dbg !172

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %0}, i64 0, metadata !87), !dbg !174
  %1 = load %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 1), align 4, !dbg !175, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %1}, i64 0, metadata !88), !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %0}, i64 0, metadata !176), !dbg !178
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %1}, i64 0, metadata !179), !dbg !178
  br label %while.cond.i, !dbg !180

while.cond.i:                                     ; preds = %while.cond.i, %if.end
  %node.addr.0.i = phi %struct.ngx_rbtree_node_s* [ %0, %if.end ], [ %2, %while.cond.i ]
  %left.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 0, i32 1, !dbg !180
  %2 = load %struct.ngx_rbtree_node_s** %left.i, align 4, !dbg !180, !tbaa !167
  %cmp.i = icmp eq %struct.ngx_rbtree_node_s* %2, %1, !dbg !180
  br i1 %cmp.i, label %ngx_rbtree_min.exit, label %while.cond.i, !dbg !180

ngx_rbtree_min.exit:                              ; preds = %while.cond.i
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node.addr.0.i}, i64 0, metadata !72), !dbg !177
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 0, i32 0, !dbg !182
  %3 = load i32* %key, align 4, !dbg !182, !tbaa !183
  %4 = load volatile i32* @ngx_current_msec, align 4, !dbg !182, !tbaa !183
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3, i32 %4), !dbg !182
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !182
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !182
  br i1 %7, label %ioc_bb3, label %cont4, !dbg !182

ioc_bb3:                                          ; preds = %ngx_rbtree_min.exit
  %8 = zext i32 %4 to i64, !dbg !182
  %9 = zext i32 %3 to i64, !dbg !182
  tail call void @__ioc_report_sub_overflow(i32 43, i32 42, i8* getelementptr inbounds ([28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind, !dbg !182
  br label %cont4, !dbg !182

cont4:                                            ; preds = %ngx_rbtree_min.exit, %ioc_bb3
  %10 = icmp sgt i32 %6, -1, !dbg !182
  br i1 %10, label %cont10, label %ioc_bb5, !dbg !182

ioc_bb5:                                          ; preds = %cont4
  %11 = zext i32 %6 to i64, !dbg !182
  tail call void @__ioc_report_conversion(i32 43, i32 29, i8* getelementptr inbounds ([28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i64 %11, i8 0) nounwind, !dbg !182
  br label %cont10, !dbg !182

cont10:                                           ; preds = %cont4, %ioc_bb5
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !68), !dbg !182
  %cmp7 = icmp sgt i32 %6, 0, !dbg !184
  %cond = select i1 %cmp7, i32 %6, i32 0, !dbg !184
  br label %return, !dbg !184

return:                                           ; preds = %cont10, %ioc_bb1
  %retval.0 = phi i32 [ -1, %ioc_bb1 ], [ %cond, %cont10 ]
  ret i32 %retval.0, !dbg !185
}

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

define void @ngx_event_expire_timers() nounwind {
entry:
  %0 = load %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 1), align 4, !dbg !186, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %0}, i64 0, metadata !139), !dbg !186
  %1 = load %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 0), align 4, !dbg !187, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %1}, i64 0, metadata !138), !dbg !187
  %cmp20 = icmp eq %struct.ngx_rbtree_node_s* %1, %0, !dbg !190
  br i1 %cmp20, label %for.end, label %while.cond.i, !dbg !190

while.cond.i:                                     ; preds = %if.then4, %entry, %while.cond.i
  %node.addr.0.i = phi %struct.ngx_rbtree_node_s* [ %2, %while.cond.i ], [ %19, %if.then4 ], [ %1, %entry ]
  %left.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 0, i32 1, !dbg !191
  %2 = load %struct.ngx_rbtree_node_s** %left.i, align 4, !dbg !191, !tbaa !167
  %cmp.i = icmp eq %struct.ngx_rbtree_node_s* %2, %0, !dbg !191
  br i1 %cmp.i, label %ngx_rbtree_min.exit, label %while.cond.i, !dbg !191

ngx_rbtree_min.exit:                              ; preds = %while.cond.i
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node.addr.0.i}, i64 0, metadata !137), !dbg !192
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 0, i32 0, !dbg !193
  %3 = load i32* %key, align 4, !dbg !193, !tbaa !183
  %4 = load volatile i32* @ngx_current_msec, align 4, !dbg !193, !tbaa !183
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %3, i32 %4), !dbg !193
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !193
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !193
  br i1 %7, label %ioc_bb, label %cont, !dbg !193

ioc_bb:                                           ; preds = %ngx_rbtree_min.exit
  %8 = zext i32 %4 to i64, !dbg !193
  %9 = zext i32 %3 to i64, !dbg !193
  tail call void @__ioc_report_sub_overflow(i32 62, i32 40, i8* getelementptr inbounds ([28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind, !dbg !193
  br label %cont, !dbg !193

cont:                                             ; preds = %ngx_rbtree_min.exit, %ioc_bb
  %10 = icmp sgt i32 %6, -1, !dbg !193
  br i1 %10, label %cont2, label %ioc_bb1, !dbg !193

ioc_bb1:                                          ; preds = %cont
  %11 = zext i32 %6 to i64, !dbg !193
  tail call void @__ioc_report_conversion(i32 62, i32 27, i8* getelementptr inbounds ([28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i64 %11, i8 0) nounwind, !dbg !193
  br label %cont2, !dbg !193

cont2:                                            ; preds = %ioc_bb1, %cont
  %cmp3 = icmp slt i32 %6, 1, !dbg !193
  br i1 %cmp3, label %if.then4, label %for.end, !dbg !193

if.then4:                                         ; preds = %cont2
  %add.ptr18 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 -1, !dbg !194
  %12 = bitcast %struct.ngx_rbtree_node_s* %add.ptr18 to %struct.ngx_event_s*, !dbg !194
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %12}, i64 0, metadata !94), !dbg !194
  tail call void @ngx_rbtree_delete(%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, %struct.ngx_rbtree_node_s* %node.addr.0.i) nounwind, !dbg !196
  %bf.field.offs = getelementptr %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 -1, i32 1, !dbg !197
  %13 = bitcast %struct.ngx_rbtree_node_s** %bf.field.offs to i32*, !dbg !197
  %14 = load i32* %13, align 4, !dbg !197
  %15 = and i32 %14, -3073, !dbg !197
  %16 = or i32 %15, 1024, !dbg !198
  %.c19 = inttoptr i32 %16 to %struct.ngx_rbtree_node_s*, !dbg !198
  store %struct.ngx_rbtree_node_s* %.c19, %struct.ngx_rbtree_node_s** %bf.field.offs, align 4, !dbg !198
  %handler = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.addr.0.i, i32 -1, i32 2, !dbg !199
  %17 = load %struct.ngx_rbtree_node_s** %handler, align 4, !dbg !199
  %18 = bitcast %struct.ngx_rbtree_node_s* %17 to void (%struct.ngx_event_s*)*, !dbg !199
  tail call void %18(%struct.ngx_event_s* %12) nounwind, !dbg !199
  %19 = load %struct.ngx_rbtree_node_s** getelementptr inbounds (%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, i32 0, i32 0), align 4, !dbg !187, !tbaa !167
  %cmp = icmp eq %struct.ngx_rbtree_node_s* %19, %0, !dbg !190
  br i1 %cmp, label %for.end, label %while.cond.i, !dbg !190

for.end:                                          ; preds = %if.then4, %cont2, %entry
  ret void, !dbg !200
}

declare void @ngx_rbtree_delete(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/event/ngx_event_timer.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !147} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !63, metadata !89, metadata !140}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_event_timer_init", metadata !"ngx_event_timer_init", metadata !"", metadata !6, i32 18, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_log_s*)* @ngx_event_timer_init, null, null, metadata !60, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [ngx_event_timer_init]
!6 = metadata !{i32 786473, metadata !"src/event/ngx_event_timer.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !13}
!9 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !6, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!10 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!11 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!14 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!15 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !16, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!16 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!17 = metadata !{metadata !18, metadata !22, metadata !45, metadata !48, metadata !55, metadata !57}
!18 = metadata !{i32 786445, metadata !15, metadata !"log_level", metadata !16, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!19 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !16, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!20 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !16, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!21 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786445, metadata !15, metadata !"file", metadata !16, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!24 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !16, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!25 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !26, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!26 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28, metadata !30, metadata !42, metadata !43, metadata !44}
!28 = metadata !{i32 786445, metadata !25, metadata !"fd", metadata !26, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!29 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !26, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !25, metadata !"name", metadata !26, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!31 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !26, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786451, null, metadata !"", metadata !33, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!33 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!34 = metadata !{metadata !35, metadata !37}
!35 = metadata !{i32 786445, metadata !32, metadata !"len", metadata !33, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!36 = metadata !{i32 786454, null, metadata !"size_t", metadata !33, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!37 = metadata !{i32 786445, metadata !32, metadata !"data", metadata !33, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !38} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!39 = metadata !{i32 786454, null, metadata !"u_char", metadata !33, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!40 = metadata !{i32 786454, null, metadata !"__u_char", metadata !33, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!41 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!42 = metadata !{i32 786445, metadata !25, metadata !"buffer", metadata !26, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!43 = metadata !{i32 786445, metadata !25, metadata !"pos", metadata !26, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !25, metadata !"last", metadata !26, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !38} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!45 = metadata !{i32 786445, metadata !15, metadata !"connection", metadata !16, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!46 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !16, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!47 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!48 = metadata !{i32 786445, metadata !15, metadata !"handler", metadata !16, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!49 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !16, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !38, metadata !53, metadata !38, metadata !36}
!53 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!54 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !16, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!55 = metadata !{i32 786445, metadata !15, metadata !"data", metadata !16, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !56} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!57 = metadata !{i32 786445, metadata !15, metadata !"action", metadata !16, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !58} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!58 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!59 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786689, metadata !5, metadata !"log", metadata !6, i32 16777234, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 18]
!63 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_event_find_timer", metadata !"ngx_event_find_timer", metadata !"", metadata !6, i32 29, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @ngx_event_find_timer, null, null, metadata !66, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [ngx_event_find_timer]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !21}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !68, metadata !72, metadata !87, metadata !88}
!68 = metadata !{i32 786688, metadata !69, metadata !"timer", metadata !6, i32 31, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer] [line 31]
!69 = metadata !{i32 786443, metadata !63, i32 30, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!70 = metadata !{i32 786454, null, metadata !"ngx_msec_int_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [ngx_msec_int_t] [line 17, size 0, align 0, offset 0] [from ngx_rbtree_key_int_t]
!71 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_int_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_rbtree_key_int_t] [line 17, size 0, align 0, offset 0] [from ngx_int_t]
!72 = metadata !{i32 786688, metadata !69, metadata !"node", metadata !6, i32 32, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 32]
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!74 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !6, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!75 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !76, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!76 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!77 = metadata !{metadata !78, metadata !80, metadata !83, metadata !84, metadata !85, metadata !86}
!78 = metadata !{i32 786445, metadata !75, metadata !"key", metadata !76, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!79 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !76, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!80 = metadata !{i32 786445, metadata !75, metadata !"left", metadata !76, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !81} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!82 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !76, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!83 = metadata !{i32 786445, metadata !75, metadata !"right", metadata !76, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!84 = metadata !{i32 786445, metadata !75, metadata !"parent", metadata !76, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !81} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!85 = metadata !{i32 786445, metadata !75, metadata !"color", metadata !76, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!86 = metadata !{i32 786445, metadata !75, metadata !"data", metadata !76, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !39} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!87 = metadata !{i32 786688, metadata !69, metadata !"root", metadata !6, i32 33, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 33]
!88 = metadata !{i32 786688, metadata !69, metadata !"sentinel", metadata !6, i32 34, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 34]
!89 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_event_expire_timers", metadata !"ngx_event_expire_timers", metadata !"", metadata !6, i32 47, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ngx_event_expire_timers, null, null, metadata !92, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [ngx_event_expire_timers]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{null}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !94, metadata !137, metadata !138, metadata !139}
!94 = metadata !{i32 786688, metadata !95, metadata !"ev", metadata !6, i32 49, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ev] [line 49]
!95 = metadata !{i32 786443, metadata !89, i32 48, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!96 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!97 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!98 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !99, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!99 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!101 = metadata !{i32 786445, metadata !98, metadata !"data", metadata !99, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!102 = metadata !{i32 786445, metadata !98, metadata !"write", metadata !99, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!103 = metadata !{i32 786445, metadata !98, metadata !"accept", metadata !99, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !21} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!104 = metadata !{i32 786445, metadata !98, metadata !"instance", metadata !99, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !21} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!105 = metadata !{i32 786445, metadata !98, metadata !"active", metadata !99, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !21} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!106 = metadata !{i32 786445, metadata !98, metadata !"disabled", metadata !99, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !21} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!107 = metadata !{i32 786445, metadata !98, metadata !"ready", metadata !99, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !21} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!108 = metadata !{i32 786445, metadata !98, metadata !"oneshot", metadata !99, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !21} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!109 = metadata !{i32 786445, metadata !98, metadata !"complete", metadata !99, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !21} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!110 = metadata !{i32 786445, metadata !98, metadata !"eof", metadata !99, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!111 = metadata !{i32 786445, metadata !98, metadata !"error", metadata !99, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !21} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!112 = metadata !{i32 786445, metadata !98, metadata !"timedout", metadata !99, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !21} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!113 = metadata !{i32 786445, metadata !98, metadata !"timer_set", metadata !99, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !21} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!114 = metadata !{i32 786445, metadata !98, metadata !"delayed", metadata !99, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !21} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!115 = metadata !{i32 786445, metadata !98, metadata !"read_discarded", metadata !99, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !21} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!116 = metadata !{i32 786445, metadata !98, metadata !"unexpected_eof", metadata !99, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !21} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!117 = metadata !{i32 786445, metadata !98, metadata !"deferred_accept", metadata !99, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !21} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!118 = metadata !{i32 786445, metadata !98, metadata !"pending_eof", metadata !99, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!119 = metadata !{i32 786445, metadata !98, metadata !"posted_ready", metadata !99, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !21} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!120 = metadata !{i32 786445, metadata !98, metadata !"available", metadata !99, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !21} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!121 = metadata !{i32 786445, metadata !98, metadata !"handler", metadata !99, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!122 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !99, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!123 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{null, metadata !126}
!126 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!127 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !99, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!128 = metadata !{i32 786445, metadata !98, metadata !"index", metadata !99, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!129 = metadata !{i32 786445, metadata !98, metadata !"log", metadata !99, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!130 = metadata !{i32 786445, metadata !98, metadata !"timer", metadata !99, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !74} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!131 = metadata !{i32 786445, metadata !98, metadata !"closed", metadata !99, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!132 = metadata !{i32 786445, metadata !98, metadata !"channel", metadata !99, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !21} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!133 = metadata !{i32 786445, metadata !98, metadata !"resolver", metadata !99, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !21} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!134 = metadata !{i32 786445, metadata !98, metadata !"next", metadata !99, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !126} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!135 = metadata !{i32 786445, metadata !98, metadata !"prev", metadata !99, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !136} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!137 = metadata !{i32 786688, metadata !95, metadata !"node", metadata !6, i32 50, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 50]
!138 = metadata !{i32 786688, metadata !95, metadata !"root", metadata !6, i32 51, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 51]
!139 = metadata !{i32 786688, metadata !95, metadata !"sentinel", metadata !6, i32 52, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 52]
!140 = metadata !{i32 786478, i32 0, metadata !76, metadata !"ngx_rbtree_min", metadata !"ngx_rbtree_min", metadata !"", metadata !76, i32 74, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !143, i32 75} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [scope 75] [ngx_rbtree_min]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !73, metadata !73, metadata !73}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786689, metadata !140, metadata !"node", metadata !76, i32 16777290, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 74]
!146 = metadata !{i32 786689, metadata !140, metadata !"sentinel", metadata !76, i32 33554506, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sentinel] [line 74]
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !149, metadata !160}
!149 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_timer_rbtree", metadata !"ngx_event_timer_rbtree", metadata !"", metadata !6, i32 10, metadata !150, i32 0, i32 1, %struct.ngx_rbtree_s* @ngx_event_timer_rbtree} ; [ DW_TAG_variable ] [ngx_event_timer_rbtree] [line 10] [def]
!150 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!151 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !76, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!152 = metadata !{metadata !153, metadata !154, metadata !155}
!153 = metadata !{i32 786445, metadata !151, metadata !"root", metadata !76, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!154 = metadata !{i32 786445, metadata !151, metadata !"sentinel", metadata !76, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !73} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!155 = metadata !{i32 786445, metadata !151, metadata !"insert", metadata !76, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!156 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !76, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!157 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{null, metadata !73, metadata !73, metadata !73}
!160 = metadata !{i32 786484, i32 0, null, metadata !"ngx_event_timer_sentinel", metadata !"ngx_event_timer_sentinel", metadata !"", metadata !6, i32 11, metadata !74, i32 1, i32 1, %struct.ngx_rbtree_node_s* @ngx_event_timer_sentinel} ; [ DW_TAG_variable ] [ngx_event_timer_sentinel] [line 11] [local] [def]
!161 = metadata !{i32 18, i32 0, metadata !5, null}
!162 = metadata !{i32 20, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !5, i32 19, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!164 = metadata !{metadata !"omnipotent char", metadata !165}
!165 = metadata !{metadata !"Simple C/C++ TBAA"}
!166 = metadata !{i32 21, i32 0, metadata !163, null}
!167 = metadata !{metadata !"any pointer", metadata !164}
!168 = metadata !{i32 22, i32 0, metadata !163, null}
!169 = metadata !{i32 23, i32 0, metadata !163, null}
!170 = metadata !{i32 26, i32 0, metadata !163, null}
!171 = metadata !{i32 35, i32 0, metadata !69, null}
!172 = metadata !{i32 36, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !69, i32 35, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!174 = metadata !{i32 39, i32 0, metadata !69, null}
!175 = metadata !{i32 40, i32 0, metadata !69, null}
!176 = metadata !{i32 786689, metadata !140, metadata !"node", metadata !76, i32 16777290, metadata !73, i32 0, metadata !177} ; [ DW_TAG_arg_variable ] [node] [line 74]
!177 = metadata !{i32 41, i32 0, metadata !69, null}
!178 = metadata !{i32 74, i32 0, metadata !140, metadata !177}
!179 = metadata !{i32 786689, metadata !140, metadata !"sentinel", metadata !76, i32 33554506, metadata !73, i32 0, metadata !177} ; [ DW_TAG_arg_variable ] [sentinel] [line 74]
!180 = metadata !{i32 76, i32 0, metadata !181, metadata !177}
!181 = metadata !{i32 786443, metadata !140, i32 75, i32 0, metadata !76, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_rbtree.h]
!182 = metadata !{i32 43, i32 0, metadata !69, null}
!183 = metadata !{metadata !"int", metadata !164}
!184 = metadata !{i32 44, i32 0, metadata !69, null}
!185 = metadata !{i32 45, i32 0, metadata !69, null}
!186 = metadata !{i32 53, i32 0, metadata !95, null}
!187 = metadata !{i32 56, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !189, i32 54, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!189 = metadata !{i32 786443, metadata !95, i32 54, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!190 = metadata !{i32 57, i32 0, metadata !188, null}
!191 = metadata !{i32 76, i32 0, metadata !181, metadata !192}
!192 = metadata !{i32 60, i32 0, metadata !188, null}
!193 = metadata !{i32 62, i32 0, metadata !188, null}
!194 = metadata !{i32 63, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !188, i32 62, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.c]
!196 = metadata !{i32 74, i32 0, metadata !195, null}
!197 = metadata !{i32 78, i32 0, metadata !195, null}
!198 = metadata !{i32 81, i32 0, metadata !195, null}
!199 = metadata !{i32 82, i32 0, metadata !195, null}
!200 = metadata !{i32 88, i32 0, metadata !95, null}
