; ModuleID = 'src/core/ngx_string.c'
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
%struct.ngx_variable_value_t = type { [4 x i8], i8* }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_str_node_t = type { %struct.ngx_rbtree_node_s, %struct.ngx_str_t }
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }

@0 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@1 = internal unnamed_addr constant [15 x i8] c"ngx_msec_int_t\00"
@2 = internal unnamed_addr constant [3 x i8] c"*=\00"
@3 = internal unnamed_addr constant [7 x i8] c"rlim_t\00"
@4 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@5 = internal unnamed_addr constant [8 x i8] c"int64_t\00"
@6 = internal unnamed_addr constant [10 x i8] c"long long\00"
@7 = internal unnamed_addr constant [9 x i8] c"uint64_t\00"
@8 = internal unnamed_addr constant [19 x i8] c"unsigned long long\00"
@9 = internal unnamed_addr constant [5 x i8] c"char\00"
@10 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@11 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@ngx_encode_base64.basis64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@ngx_decode_base64.basis64 = internal global [256 x i8] c"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM>MMM?456789:;<=MMMMMMM\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19MMMMMM\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", align 1
@ngx_decode_base64url.basis64 = internal global [256 x i8] c"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM>MM456789:;<=MMMMMMM\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19MMMM?M\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM", align 1
@ngx_escape_uri.uri = internal global [8 x i32] [i32 -1, i32 -2147483607, i32 0, i32 -2147483648, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_escape_uri.args = internal global [8 x i32] [i32 -1, i32 -2013263767, i32 0, i32 -2147483648, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_escape_uri.uri_component = internal global [8 x i32] [i32 -1, i32 -67067905, i32 2013265921, i32 -1207959551, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_escape_uri.html = internal global [8 x i32] [i32 -1, i32 173, i32 0, i32 -2147483648, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_escape_uri.refresh = internal global [8 x i32] [i32 -1, i32 133, i32 0, i32 -2147483648, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_escape_uri.memcached = internal global [8 x i32] [i32 -1, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@ngx_escape_uri.map = internal unnamed_addr constant [7 x i32*] [i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.uri, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.args, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.uri_component, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.html, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.refresh, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.memcached, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32]* @ngx_escape_uri.memcached, i32 0, i32 0)], align 4
@12 = internal unnamed_addr constant [3 x i8] c"<<\00"
@13 = internal unnamed_addr constant [2 x i8] c"-\00"
@14 = internal unnamed_addr constant [2 x i8] c"+\00"
@15 = internal unnamed_addr constant [3 x i8] c"+=\00"
@16 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@ngx_cycle = external global %struct.ngx_cycle_s*
@17 = internal unnamed_addr constant [2 x i8] c"*\00"
@18 = internal unnamed_addr constant [3 x i8] c"-=\00"
@19 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@20 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@ngx_sprintf_num.hex = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@ngx_sprintf_num.HEX = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@21 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@22 = internal unnamed_addr constant [4 x i8] c"int\00"
@23 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@24 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@25 = internal unnamed_addr constant [22 x i8] c"src/core/ngx_string.c\00"

define void @ngx_strlow(i8* nocapture %dst, i8* nocapture %src, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !44), !dbg !700
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !45), !dbg !700
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !46), !dbg !700
  %tobool18 = icmp eq i32 %n, 0, !dbg !701
  br i1 %tobool18, label %while.end, label %while.body, !dbg !701

while.body:                                       ; preds = %entry, %while.cond.backedge
  %n.addr.021 = phi i32 [ %3, %while.cond.backedge ], [ %n, %entry ]
  %src.addr.020 = phi i8* [ %incdec.ptr8, %while.cond.backedge ], [ %src, %entry ]
  %dst.addr.019 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %dst, %entry ]
  %0 = load i8* %src.addr.020, align 1, !dbg !703, !tbaa !705
  %.off = add i8 %0, -65, !dbg !703
  %1 = icmp ult i8 %.off, 26, !dbg !703
  %or = or i8 %0, 32, !dbg !703
  %cond17 = select i1 %1, i8 %or, i8 %0, !dbg !703
  store i8 %cond17, i8* %dst.addr.019, align 1, !dbg !703, !tbaa !705
  %incdec.ptr = getelementptr inbounds i8* %dst.addr.019, i32 1, !dbg !707
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !44), !dbg !707
  %incdec.ptr8 = getelementptr inbounds i8* %src.addr.020, i32 1, !dbg !708
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr8}, i64 0, metadata !45), !dbg !708
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.021, i32 1), !dbg !709
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !709
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !709
  br i1 %4, label %ioc_bb9, label %while.cond.backedge, !dbg !709

while.cond.backedge:                              ; preds = %while.body, %ioc_bb9
  %tobool = icmp eq i32 %3, 0, !dbg !701
  br i1 %tobool, label %while.end, label %while.body, !dbg !701

ioc_bb9:                                          ; preds = %while.body
  %5 = zext i32 %n.addr.021 to i64, !dbg !709
  tail call void @__ioc_report_sub_overflow(i32 16, i32 6, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !709
  br label %while.cond.backedge, !dbg !709

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret void, !dbg !710
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i8* @ngx_cpystrn(i8* %dst, i8* nocapture %src, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !52), !dbg !711
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !53), !dbg !711
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !54), !dbg !711
  %cmp = icmp eq i32 %n, 0, !dbg !712
  br i1 %cmp, label %return, label %while.cond, !dbg !712

while.cond:                                       ; preds = %entry, %if.end6
  %dst.addr.0 = phi i8* [ %incdec.ptr, %if.end6 ], [ %dst, %entry ]
  %src.addr.0 = phi i8* [ %incdec.ptr7, %if.end6 ], [ %src, %entry ]
  %n.addr.0 = phi i32 [ %1, %if.end6 ], [ %n, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !714
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !714
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !714
  br i1 %2, label %ioc_bb1, label %cont2, !dbg !714

ioc_bb1:                                          ; preds = %while.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !714
  tail call void @__ioc_report_sub_overflow(i32 25, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !714
  br label %cont2, !dbg !714

cont2:                                            ; preds = %while.cond, %ioc_bb1
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !54), !dbg !714
  %tobool = icmp eq i32 %1, 0, !dbg !714
  br i1 %tobool, label %cont9, label %while.body, !dbg !714

while.body:                                       ; preds = %cont2
  %4 = load i8* %src.addr.0, align 1, !dbg !715, !tbaa !705
  store i8 %4, i8* %dst.addr.0, align 1, !dbg !715, !tbaa !705
  %cmp3 = icmp eq i8 %4, 0, !dbg !717
  br i1 %cmp3, label %return, label %if.end6, !dbg !717

if.end6:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %dst.addr.0, i32 1, !dbg !718
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !52), !dbg !718
  %incdec.ptr7 = getelementptr inbounds i8* %src.addr.0, i32 1, !dbg !719
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr7}, i64 0, metadata !53), !dbg !719
  br label %while.cond, !dbg !720

cont9:                                            ; preds = %cont2
  store i8 0, i8* %dst.addr.0, align 1, !dbg !721, !tbaa !705
  br label %return, !dbg !722

return:                                           ; preds = %while.body, %entry, %cont9
  %retval.0 = phi i8* [ %dst.addr.0, %cont9 ], [ %dst, %entry ], [ %dst.addr.0, %while.body ]
  ret i8* %retval.0, !dbg !723
}

define i8* @ngx_pstrdup(%struct.ngx_pool_s* %pool, %struct.ngx_str_t* nocapture %src) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %pool}, i64 0, metadata !229), !dbg !724
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !230), !dbg !724
  %len = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 0, !dbg !725
  %0 = load i32* %len, align 4, !dbg !725, !tbaa !726
  %call = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %pool, i32 %0) nounwind, !dbg !725
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !231), !dbg !725
  %cmp = icmp eq i8* %call, null, !dbg !727
  br i1 %cmp, label %return, label %if.end, !dbg !727

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !728
  %1 = load i8** %data, align 4, !dbg !728, !tbaa !729
  %2 = load i32* %len, align 4, !dbg !728, !tbaa !726
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call, i8* %1, i32 %2, i32 1, i1 false), !dbg !728
  br label %return, !dbg !730

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !731
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define i8* @ngx_sprintf(i8* %buf, i8* nocapture %fmt, ...) nounwind {
entry:
  %args = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !240), !dbg !732
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !241), !dbg !732
  call void @llvm.dbg.declare(metadata !{i8** %args}, metadata !244), !dbg !733
  %args1 = bitcast i8** %args to i8*, !dbg !734
  call void @llvm.va_start(i8* %args1), !dbg !734
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !244), !dbg !735
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !244), !dbg !735
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !244), !dbg !735
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !244), !dbg !735
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !244), !dbg !735
  %0 = load i8** %args, align 4, !dbg !735, !tbaa !729
  %call = call i8* @ngx_vslprintf(i8* %buf, i8* inttoptr (i32 -1 to i8*), i8* %fmt, i8* %0), !dbg !735
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !242), !dbg !735
  call void @llvm.va_end(i8* %args1), !dbg !736
  ret i8* %call, !dbg !737
}

declare void @llvm.va_start(i8*) nounwind

define i8* @ngx_vslprintf(i8* %buf, i8* %last, i8* nocapture %fmt, i8* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !275), !dbg !738
  tail call void @llvm.dbg.value(metadata !{i8* %last}, i64 0, metadata !276), !dbg !738
  tail call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !277), !dbg !738
  tail call void @llvm.dbg.value(metadata !{i8* %args}, i64 0, metadata !278), !dbg !738
  %0 = load i8* %fmt, align 1, !dbg !739, !tbaa !705
  %tobool674 = icmp ne i8 %0, 0, !dbg !739
  %cmp675 = icmp ult i8* %buf, %last, !dbg !739
  %or.cond676 = and i1 %tobool674, %cmp675, !dbg !739
  br i1 %or.cond676, label %while.body.lr.ph, label %while.end457, !dbg !739

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %last to i32, !dbg !740
  br label %while.body, !dbg !739

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %1 = phi i8 [ %0, %while.body.lr.ph ], [ %56, %while.cond.backedge ]
  %buf.addr.0679 = phi i8* [ %buf, %while.body.lr.ph ], [ %buf.addr.0.be, %while.cond.backedge ]
  %fmt.addr.0678 = phi i8* [ %fmt, %while.body.lr.ph ], [ %fmt.addr.0.be, %while.cond.backedge ]
  %args.addr.0677 = phi i8* [ %args, %while.body.lr.ph ], [ %args.addr.0.be, %while.cond.backedge ]
  %cmp3 = icmp eq i8 %1, 37, !dbg !745
  %incdec.ptr = getelementptr inbounds i8* %fmt.addr.0678, i32 1, !dbg !746
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !277), !dbg !746
  br i1 %cmp3, label %cont, label %if.else450, !dbg !745

cont:                                             ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !287), !dbg !748
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !289), !dbg !749
  %2 = load i8* %incdec.ptr, align 1, !dbg !746, !tbaa !705
  %cmp6 = icmp eq i8 %2, 48, !dbg !746
  %conv10 = select i1 %cmp6, i8 48, i8 32, !dbg !746
  tail call void @llvm.dbg.value(metadata !{i8 %conv10}, i64 0, metadata !281), !dbg !746
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !295), !dbg !750
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !296), !dbg !752
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !297), !dbg !753
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !298), !dbg !754
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !299), !dbg !755
  tail call void @__ioc_report_conversion(i32 143, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !756
  tail call void @llvm.dbg.value(metadata !757, i64 0, metadata !286), !dbg !756
  %3 = load i8* %incdec.ptr, align 1, !dbg !758, !tbaa !705
  %.off625 = add i8 %3, -48, !dbg !758
  %4 = icmp ult i8 %.off625, 10, !dbg !758
  br i1 %4, label %cont37, label %for.cond.loopexit, !dbg !758

cont37:                                           ; preds = %cont, %while.cond26.backedge
  %5 = phi i8 [ %21, %while.cond26.backedge ], [ %3, %cont ]
  %fmt.addr.1627 = phi i8* [ %incdec.ptr40, %while.cond26.backedge ], [ %incdec.ptr, %cont ]
  %width.0626 = phi i32 [ %19, %while.cond26.backedge ], [ 0, %cont ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %width.0626, i32 10), !dbg !759
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !759
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !759
  br i1 %8, label %ioc_bb38, label %cont39, !dbg !759

ioc_bb38:                                         ; preds = %cont37
  %9 = zext i32 %width.0626 to i64, !dbg !759
  tail call void @__ioc_report_mul_overflow(i32 145, i32 23, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 10, i8 5) nounwind, !dbg !759
  %.pre710 = load i8* %fmt.addr.1627, align 1, !dbg !759, !tbaa !705
  br label %cont39, !dbg !759

cont39:                                           ; preds = %cont37, %ioc_bb38
  %10 = phi i8 [ %5, %cont37 ], [ %.pre710, %ioc_bb38 ]
  %incdec.ptr40 = getelementptr inbounds i8* %fmt.addr.1627, i32 1, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr40}, i64 0, metadata !277), !dbg !759
  %11 = icmp sgt i8 %10, -1, !dbg !759
  br i1 %11, label %cont43, label %ioc_bb42, !dbg !759

ioc_bb42:                                         ; preds = %cont39
  %12 = sext i8 %10 to i64, !dbg !759
  tail call void @__ioc_report_conversion(i32 145, i32 30, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !759
  br label %cont43, !dbg !759

cont43:                                           ; preds = %ioc_bb42, %cont39
  %conv44 = sext i8 %10 to i32, !dbg !759
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %conv44), !dbg !759
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !759
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !759
  br i1 %15, label %ioc_bb45, label %cont48, !dbg !759

ioc_bb45:                                         ; preds = %cont43
  %16 = zext i32 %conv44 to i64, !dbg !759
  %17 = zext i32 %7 to i64, !dbg !759
  tail call void @__ioc_report_add_overflow(i32 145, i32 28, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %17, i64 %16, i8 5) nounwind, !dbg !759
  br label %cont48, !dbg !759

cont48:                                           ; preds = %ioc_bb45, %cont43
  %18 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %14, i32 48), !dbg !759
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !759
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !759
  br i1 %20, label %ioc_bb49, label %while.cond26.backedge, !dbg !759

while.cond26.backedge:                            ; preds = %cont48, %ioc_bb49
  %21 = load i8* %incdec.ptr40, align 1, !dbg !758, !tbaa !705
  %.off = add i8 %21, -48, !dbg !758
  %22 = icmp ult i8 %.off, 10, !dbg !758
  br i1 %22, label %cont37, label %for.cond.loopexit, !dbg !758

ioc_bb49:                                         ; preds = %cont48
  %23 = zext i32 %14 to i64, !dbg !759
  tail call void @__ioc_report_sub_overflow(i32 145, i32 42, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %23, i64 48, i8 5) nounwind, !dbg !759
  br label %while.cond26.backedge, !dbg !759

for.cond.loopexit:                                ; preds = %while.cond26.backedge, %cont
  %fmt.addr.1.lcssa = phi i8* [ %incdec.ptr, %cont ], [ %incdec.ptr40, %while.cond26.backedge ]
  %width.0.lcssa = phi i32 [ 0, %cont ], [ %19, %while.cond26.backedge ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.loopexit, %sw.bb99
  %slen.0.ph = phi i32 [ %47, %sw.bb99 ], [ -1, %for.cond.loopexit ]
  %args.addr.1.ph = phi i8* [ %ap.next, %sw.bb99 ], [ %args.addr.0677, %for.cond.loopexit ]
  %sign.0.ph = phi i32 [ %sign.0.ph630, %sw.bb99 ], [ 1, %for.cond.loopexit ]
  %hex.0.ph = phi i32 [ %hex.0.ph631.ph, %sw.bb99 ], [ 0, %for.cond.loopexit ]
  %max_width.0.ph = phi i32 [ %max_width.0, %sw.bb99 ], [ 0, %for.cond.loopexit ]
  %fmt.addr.2.ph = phi i8* [ %incdec.ptr100, %sw.bb99 ], [ %fmt.addr.1.lcssa, %for.cond.loopexit ]
  br label %for.cond.outer629.outer

for.cond.outer629.outer:                          ; preds = %for.cond.outer629.outer.backedge, %for.cond.outer
  %sign.0.ph630.ph = phi i32 [ %sign.0.ph, %for.cond.outer ], [ 0, %for.cond.outer629.outer.backedge ]
  %hex.0.ph631.ph = phi i32 [ %hex.0.ph, %for.cond.outer ], [ %hex.0.ph631.ph.be, %for.cond.outer629.outer.backedge ]
  %max_width.0.ph632.ph = phi i32 [ %max_width.0.ph, %for.cond.outer ], [ %max_width.0, %for.cond.outer629.outer.backedge ]
  %fmt.addr.2.ph633.ph = phi i8* [ %fmt.addr.2.ph, %for.cond.outer ], [ %fmt.addr.2.ph633.ph.be, %for.cond.outer629.outer.backedge ]
  br label %for.cond.outer629

for.cond.outer629:                                ; preds = %for.cond.outer629.outer, %cont53
  %sign.0.ph630 = phi i32 [ 0, %cont53 ], [ %sign.0.ph630.ph, %for.cond.outer629.outer ]
  %max_width.0.ph632 = phi i32 [ %max_width.0, %cont53 ], [ %max_width.0.ph632.ph, %for.cond.outer629.outer ]
  %fmt.addr.2.ph633 = phi i8* [ %incdec.ptr54, %cont53 ], [ %fmt.addr.2.ph633.ph, %for.cond.outer629.outer ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer629, %cont57
  %max_width.0 = phi i32 [ 1, %cont57 ], [ %max_width.0.ph632, %for.cond.outer629 ]
  %fmt.addr.2 = phi i8* [ %incdec.ptr58, %cont57 ], [ %fmt.addr.2.ph633, %for.cond.outer629 ]
  %24 = load i8* %fmt.addr.2, align 1, !dbg !761, !tbaa !705
  %conv51 = sext i8 %24 to i32, !dbg !761
  switch i32 %conv51, label %for.end [
    i32 117, label %cont53
    i32 109, label %cont57
    i32 88, label %for.cond.outer629.outer.backedge
    i32 120, label %cont69
    i32 46, label %while.cond73.loopexit
    i32 42, label %sw.bb99
  ], !dbg !761

cont53:                                           ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !296), !dbg !764
  %incdec.ptr54 = getelementptr inbounds i8* %fmt.addr.2, i32 1, !dbg !767
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr54}, i64 0, metadata !277), !dbg !767
  br label %for.cond.outer629, !dbg !768

cont57:                                           ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !298), !dbg !769
  %incdec.ptr58 = getelementptr inbounds i8* %fmt.addr.2, i32 1, !dbg !771
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr58}, i64 0, metadata !277), !dbg !771
  br label %for.cond, !dbg !772

cont69:                                           ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !297), !dbg !773
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !296), !dbg !775
  br label %for.cond.outer629.outer.backedge, !dbg !776

for.cond.outer629.outer.backedge:                 ; preds = %for.cond, %cont69
  %hex.0.ph631.ph.be = phi i32 [ 1, %cont69 ], [ 2, %for.cond ]
  %fmt.addr.2.ph633.ph.be = getelementptr inbounds i8* %fmt.addr.2, i32 1, !dbg !777
  br label %for.cond.outer629.outer

while.cond73.loopexit:                            ; preds = %for.cond
  %fmt.addr.3646 = getelementptr inbounds i8* %fmt.addr.2, i32 1, !dbg !778
  %25 = load i8* %fmt.addr.3646, align 1, !dbg !780, !tbaa !705
  %.off624647 = add i8 %25, -48, !dbg !780
  %26 = icmp ult i8 %.off624647, 10, !dbg !780
  br i1 %26, label %cont84, label %for.end, !dbg !780

cont84:                                           ; preds = %while.cond73.loopexit, %while.cond73.backedge
  %27 = phi i8 [ %43, %while.cond73.backedge ], [ %25, %while.cond73.loopexit ]
  %fmt.addr.3649 = phi i8* [ %fmt.addr.3, %while.cond73.backedge ], [ %fmt.addr.3646, %while.cond73.loopexit ]
  %frac_width.0648 = phi i32 [ %41, %while.cond73.backedge ], [ 0, %while.cond73.loopexit ]
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %frac_width.0648, i32 10), !dbg !781
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !781
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !781
  br i1 %30, label %ioc_bb85, label %cont86, !dbg !781

ioc_bb85:                                         ; preds = %cont84
  %31 = zext i32 %frac_width.0648 to i64, !dbg !781
  tail call void @__ioc_report_mul_overflow(i32 179, i32 39, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %31, i64 10, i8 5) nounwind, !dbg !781
  %.pre = load i8* %fmt.addr.3649, align 1, !dbg !781, !tbaa !705
  br label %cont86, !dbg !781

cont86:                                           ; preds = %cont84, %ioc_bb85
  %32 = phi i8 [ %27, %cont84 ], [ %.pre, %ioc_bb85 ]
  %33 = icmp sgt i8 %32, -1, !dbg !781
  br i1 %33, label %cont90, label %ioc_bb89, !dbg !781

ioc_bb89:                                         ; preds = %cont86
  %34 = sext i8 %32 to i64, !dbg !781
  tail call void @__ioc_report_conversion(i32 179, i32 46, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %34, i8 1) nounwind, !dbg !781
  br label %cont90, !dbg !781

cont90:                                           ; preds = %ioc_bb89, %cont86
  %conv91 = sext i8 %32 to i32, !dbg !781
  %35 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %conv91), !dbg !781
  %36 = extractvalue { i32, i1 } %35, 0, !dbg !781
  %37 = extractvalue { i32, i1 } %35, 1, !dbg !781
  br i1 %37, label %ioc_bb92, label %cont95, !dbg !781

ioc_bb92:                                         ; preds = %cont90
  %38 = zext i32 %conv91 to i64, !dbg !781
  %39 = zext i32 %29 to i64, !dbg !781
  tail call void @__ioc_report_add_overflow(i32 179, i32 44, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %39, i64 %38, i8 5) nounwind, !dbg !781
  br label %cont95, !dbg !781

cont95:                                           ; preds = %ioc_bb92, %cont90
  %40 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 48), !dbg !781
  %41 = extractvalue { i32, i1 } %40, 0, !dbg !781
  %42 = extractvalue { i32, i1 } %40, 1, !dbg !781
  br i1 %42, label %ioc_bb96, label %while.cond73.backedge, !dbg !781

while.cond73.backedge:                            ; preds = %cont95, %ioc_bb96
  %fmt.addr.3 = getelementptr inbounds i8* %fmt.addr.3649, i32 1, !dbg !778
  %43 = load i8* %fmt.addr.3, align 1, !dbg !780, !tbaa !705
  %.off624 = add i8 %43, -48, !dbg !780
  %44 = icmp ult i8 %.off624, 10, !dbg !780
  br i1 %44, label %cont84, label %for.end, !dbg !780

ioc_bb96:                                         ; preds = %cont95
  %45 = zext i32 %36 to i64, !dbg !781
  tail call void @__ioc_report_sub_overflow(i32 179, i32 58, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %45, i64 48, i8 5) nounwind, !dbg !781
  br label %while.cond73.backedge, !dbg !781

sw.bb99:                                          ; preds = %for.cond
  %46 = bitcast i8* %args.addr.1.ph to i32*, !dbg !783
  %ap.next = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !783
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next}, i64 0, metadata !278), !dbg !783
  %47 = load i32* %46, align 4, !dbg !783
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !286), !dbg !783
  %incdec.ptr100 = getelementptr inbounds i8* %fmt.addr.2, i32 1, !dbg !785
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr100}, i64 0, metadata !277), !dbg !785
  br label %for.cond.outer, !dbg !786

for.end:                                          ; preds = %while.cond73.loopexit, %while.cond73.backedge, %for.cond
  %48 = phi i8 [ %24, %for.cond ], [ %25, %while.cond73.loopexit ], [ %43, %while.cond73.backedge ]
  %frac_width.1 = phi i32 [ 0, %for.cond ], [ 0, %while.cond73.loopexit ], [ %41, %while.cond73.backedge ]
  %fmt.addr.4 = phi i8* [ %fmt.addr.2, %for.cond ], [ %fmt.addr.3646, %while.cond73.loopexit ], [ %fmt.addr.3, %while.cond73.backedge ]
  %conv101 = sext i8 %48 to i32, !dbg !787
  switch i32 %conv101, label %sw.default422 [
    i32 86, label %sw.bb102
    i32 118, label %sw.bb120
    i32 115, label %sw.bb145
    i32 79, label %cont191
    i32 80, label %cont197
    i32 84, label %cont203
    i32 77, label %sw.bb204
    i32 122, label %sw.bb224
    i32 105, label %sw.bb235
    i32 100, label %sw.bb253
    i32 108, label %sw.bb264
    i32 68, label %sw.bb275
    i32 76, label %sw.bb286
    i32 65, label %sw.bb295
    i32 102, label %sw.bb313
    i32 114, label %sw.bb374
    i32 112, label %sw.bb382
    i32 99, label %cont403
    i32 90, label %cont409
    i32 78, label %cont414
    i32 37, label %cont419
  ], !dbg !787

sw.bb102:                                         ; preds = %for.end
  %49 = bitcast i8* %args.addr.1.ph to %struct.ngx_str_t**, !dbg !788
  %ap.next104 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !788
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next104}, i64 0, metadata !278), !dbg !788
  %50 = load %struct.ngx_str_t** %49, align 4, !dbg !788
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %50}, i64 0, metadata !302), !dbg !788
  %sub.ptr.rhs.cast = ptrtoint i8* %buf.addr.0679 to i32, !dbg !740
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !740
  %51 = sext i32 %sub.ptr.sub to i64, !dbg !740
  %52 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !740
  br i1 %52, label %cont107.thread, label %cont107, !dbg !740

cont107.thread:                                   ; preds = %sw.bb102
  %len108590 = getelementptr inbounds %struct.ngx_str_t* %50, i32 0, i32 0, !dbg !740
  %53 = load i32* %len108590, align 4, !dbg !740, !tbaa !726
  %cmp109591 = icmp ugt i32 %sub.ptr.sub, %53, !dbg !740
  %.mux593 = select i1 %cmp109591, i32 %53, i32 %sub.ptr.sub, !dbg !740
  br label %cond.end, !dbg !740

cont107:                                          ; preds = %sw.bb102
  tail call void @__ioc_report_conversion(i32 198, i32 28, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %51, i8 1) nounwind, !dbg !740
  %len108 = getelementptr inbounds %struct.ngx_str_t* %50, i32 0, i32 0, !dbg !740
  %54 = load i32* %len108, align 4, !dbg !740, !tbaa !726
  %cmp109 = icmp ugt i32 %sub.ptr.sub, %54, !dbg !740
  %.mux = select i1 %cmp109, i32 %54, i32 %sub.ptr.sub, !dbg !740
  br i1 %cmp109, label %cond.end, label %ioc_bb116, !dbg !740

ioc_bb116:                                        ; preds = %cont107
  tail call void @__ioc_report_conversion(i32 198, i32 74, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %51, i8 1) nounwind, !dbg !740
  br label %cond.end, !dbg !740

cond.end:                                         ; preds = %cont107.thread, %cont107, %ioc_bb116
  %cond118 = phi i32 [ %sub.ptr.sub, %ioc_bb116 ], [ %.mux, %cont107 ], [ %.mux593, %cont107.thread ], !dbg !740
  tail call void @llvm.dbg.value(metadata !{i32 %cond118}, i64 0, metadata !285), !dbg !740
  %data = getelementptr inbounds %struct.ngx_str_t* %50, i32 0, i32 1, !dbg !789
  %55 = load i8** %data, align 4, !dbg !789, !tbaa !729
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf.addr.0679, i8* %55, i32 %cond118, i32 1, i1 false), !dbg !789
  %add.ptr = getelementptr inbounds i8* %buf.addr.0679, i32 %cond118, !dbg !789
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !275), !dbg !789
  %incdec.ptr119 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !790
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr119}, i64 0, metadata !277), !dbg !790
  br label %while.cond.backedge, !dbg !791

while.cond.backedge:                              ; preds = %cond.end, %cond.end140, %if.end, %if.end372, %cont403, %cont409, %cont414, %cont419, %cont426, %cont454, %if.end447
  %args.addr.0.be = phi i8* [ %args.addr.1.ph, %cont426 ], [ %args.addr.1.ph, %cont419 ], [ %args.addr.1.ph, %cont414 ], [ %args.addr.1.ph, %cont409 ], [ %ap.next399, %cont403 ], [ %args.addr.2604, %if.end447 ], [ %ap.next315, %if.end372 ], [ %ap.next147, %if.end ], [ %ap.next122, %cond.end140 ], [ %ap.next104, %cond.end ], [ %args.addr.0677, %cont454 ]
  %fmt.addr.0.be = phi i8* [ %incdec.ptr423, %cont426 ], [ %incdec.ptr421, %cont419 ], [ %incdec.ptr416, %cont414 ], [ %incdec.ptr411, %cont409 ], [ %incdec.ptr406, %cont403 ], [ %incdec.ptr449, %if.end447 ], [ %incdec.ptr373, %if.end372 ], [ %incdec.ptr186, %if.end ], [ %incdec.ptr144, %cond.end140 ], [ %incdec.ptr119, %cond.end ], [ %incdec.ptr, %cont454 ]
  %buf.addr.0.be = phi i8* [ %incdec.ptr427, %cont426 ], [ %incdec.ptr420, %cont419 ], [ %incdec.ptr415, %cont414 ], [ %incdec.ptr410, %cont409 ], [ %incdec.ptr405, %cont403 ], [ %call448, %if.end447 ], [ %buf.addr.5, %if.end372 ], [ %buf.addr.2, %if.end ], [ %add.ptr143, %cond.end140 ], [ %add.ptr, %cond.end ], [ %incdec.ptr455, %cont454 ]
  %56 = load i8* %fmt.addr.0.be, align 1, !dbg !739, !tbaa !705
  %tobool = icmp ne i8 %56, 0, !dbg !739
  %cmp = icmp ult i8* %buf.addr.0.be, %last, !dbg !739
  %or.cond = and i1 %tobool, %cmp, !dbg !739
  br i1 %or.cond, label %while.body, label %while.end457, !dbg !739

sw.bb120:                                         ; preds = %for.end
  %57 = bitcast i8* %args.addr.1.ph to %struct.ngx_variable_value_t**, !dbg !792
  %ap.next122 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !792
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next122}, i64 0, metadata !278), !dbg !792
  %58 = load %struct.ngx_variable_value_t** %57, align 4, !dbg !792
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %58}, i64 0, metadata !303), !dbg !792
  %sub.ptr.rhs.cast124 = ptrtoint i8* %buf.addr.0679 to i32, !dbg !794
  %sub.ptr.sub125 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast124, !dbg !794
  %59 = sext i32 %sub.ptr.sub125 to i64, !dbg !794
  %60 = icmp sgt i32 %sub.ptr.sub125, -1, !dbg !794
  br i1 %60, label %cont128.thread, label %cont128, !dbg !794

cont128.thread:                                   ; preds = %sw.bb120
  %61 = bitcast %struct.ngx_variable_value_t* %58 to i32*, !dbg !794
  %62 = load i32* %61, align 4, !dbg !794
  %bf.clear594 = and i32 %62, 268435455, !dbg !794
  %cmp129595 = icmp ugt i32 %sub.ptr.sub125, %bf.clear594, !dbg !794
  %bf.clear.mux597 = select i1 %cmp129595, i32 %bf.clear594, i32 %sub.ptr.sub125, !dbg !794
  br label %cond.end140, !dbg !794

cont128:                                          ; preds = %sw.bb120
  tail call void @__ioc_report_conversion(i32 206, i32 28, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %59, i8 1) nounwind, !dbg !794
  %63 = bitcast %struct.ngx_variable_value_t* %58 to i32*, !dbg !794
  %64 = load i32* %63, align 4, !dbg !794
  %bf.clear = and i32 %64, 268435455, !dbg !794
  %cmp129 = icmp ugt i32 %sub.ptr.sub125, %bf.clear, !dbg !794
  %bf.clear.mux = select i1 %cmp129, i32 %bf.clear, i32 %sub.ptr.sub125, !dbg !794
  br i1 %cmp129, label %cond.end140, label %ioc_bb138, !dbg !794

ioc_bb138:                                        ; preds = %cont128
  tail call void @__ioc_report_conversion(i32 206, i32 76, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %59, i8 1) nounwind, !dbg !794
  br label %cond.end140, !dbg !794

cond.end140:                                      ; preds = %cont128.thread, %cont128, %ioc_bb138
  %cond141 = phi i32 [ %sub.ptr.sub125, %ioc_bb138 ], [ %bf.clear.mux, %cont128 ], [ %bf.clear.mux597, %cont128.thread ], !dbg !794
  tail call void @llvm.dbg.value(metadata !{i32 %cond141}, i64 0, metadata !285), !dbg !794
  %data142 = getelementptr inbounds %struct.ngx_variable_value_t* %58, i32 0, i32 1, !dbg !795
  %65 = load i8** %data142, align 4, !dbg !795, !tbaa !729
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf.addr.0679, i8* %65, i32 %cond141, i32 1, i1 false), !dbg !795
  %add.ptr143 = getelementptr inbounds i8* %buf.addr.0679, i32 %cond141, !dbg !795
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr143}, i64 0, metadata !275), !dbg !795
  %incdec.ptr144 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !796
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr144}, i64 0, metadata !277), !dbg !796
  br label %while.cond.backedge, !dbg !797

sw.bb145:                                         ; preds = %for.end
  %66 = bitcast i8* %args.addr.1.ph to i8**, !dbg !798
  %ap.next147 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !798
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next147}, i64 0, metadata !278), !dbg !798
  %67 = load i8** %66, align 4, !dbg !798
  tail call void @llvm.dbg.value(metadata !{i8* %67}, i64 0, metadata !279), !dbg !798
  tail call void @__ioc_report_conversion(i32 214, i32 33, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !800
  %cmp153 = icmp eq i32 %slen.0.ph, -1, !dbg !800
  br i1 %cmp153, label %while.cond156.preheader, label %if.else, !dbg !800

while.cond156.preheader:                          ; preds = %sw.bb145
  %68 = load i8* %67, align 1, !dbg !801, !tbaa !705
  %tobool158656 = icmp ne i8 %68, 0, !dbg !801
  %cmp160657 = icmp ult i8* %buf.addr.0679, %last, !dbg !801
  %or.cond583658 = and i1 %tobool158656, %cmp160657, !dbg !801
  br i1 %or.cond583658, label %while.body163, label %if.end, !dbg !801

while.body163:                                    ; preds = %while.cond156.preheader, %while.body163
  %69 = phi i8 [ %70, %while.body163 ], [ %68, %while.cond156.preheader ]
  %buf.addr.1660 = phi i8* [ %incdec.ptr165, %while.body163 ], [ %buf.addr.0679, %while.cond156.preheader ]
  %p.0659 = phi i8* [ %incdec.ptr164, %while.body163 ], [ %67, %while.cond156.preheader ]
  %incdec.ptr164 = getelementptr inbounds i8* %p.0659, i32 1, !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr164}, i64 0, metadata !279), !dbg !803
  %incdec.ptr165 = getelementptr inbounds i8* %buf.addr.1660, i32 1, !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr165}, i64 0, metadata !275), !dbg !803
  store i8 %69, i8* %buf.addr.1660, align 1, !dbg !803, !tbaa !705
  %70 = load i8* %incdec.ptr164, align 1, !dbg !801, !tbaa !705
  %tobool158 = icmp ne i8 %70, 0, !dbg !801
  %cmp160 = icmp ult i8* %incdec.ptr165, %last, !dbg !801
  %or.cond583 = and i1 %tobool158, %cmp160, !dbg !801
  br i1 %or.cond583, label %while.body163, label %if.end, !dbg !801

if.else:                                          ; preds = %sw.bb145
  %sub.ptr.rhs.cast168 = ptrtoint i8* %buf.addr.0679 to i32, !dbg !805
  %sub.ptr.sub169 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast168, !dbg !805
  %71 = sext i32 %sub.ptr.sub169 to i64, !dbg !805
  %72 = icmp sgt i32 %sub.ptr.sub169, -1, !dbg !805
  br i1 %72, label %cont172.thread, label %cont172, !dbg !805

cont172.thread:                                   ; preds = %if.else
  %cmp173598 = icmp ugt i32 %sub.ptr.sub169, %slen.0.ph, !dbg !805
  %slen.0.mux600 = select i1 %cmp173598, i32 %slen.0.ph, i32 %sub.ptr.sub169, !dbg !805
  br label %cond.end183, !dbg !805

cont172:                                          ; preds = %if.else
  tail call void @__ioc_report_conversion(i32 220, i32 30, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %71, i8 1) nounwind, !dbg !805
  %cmp173 = icmp ugt i32 %sub.ptr.sub169, %slen.0.ph, !dbg !805
  %slen.0.mux = select i1 %cmp173, i32 %slen.0.ph, i32 %sub.ptr.sub169, !dbg !805
  br i1 %cmp173, label %cond.end183, label %ioc_bb181, !dbg !805

ioc_bb181:                                        ; preds = %cont172
  tail call void @__ioc_report_conversion(i32 220, i32 68, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %71, i8 1) nounwind, !dbg !805
  br label %cond.end183, !dbg !805

cond.end183:                                      ; preds = %cont172.thread, %cont172, %ioc_bb181
  %cond184 = phi i32 [ %sub.ptr.sub169, %ioc_bb181 ], [ %slen.0.mux, %cont172 ], [ %slen.0.mux600, %cont172.thread ], !dbg !805
  tail call void @llvm.dbg.value(metadata !{i32 %cond184}, i64 0, metadata !285), !dbg !805
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf.addr.0679, i8* %67, i32 %cond184, i32 1, i1 false), !dbg !807
  %add.ptr185 = getelementptr inbounds i8* %buf.addr.0679, i32 %cond184, !dbg !807
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr185}, i64 0, metadata !275), !dbg !807
  br label %if.end

if.end:                                           ; preds = %while.cond156.preheader, %while.body163, %cond.end183
  %buf.addr.2 = phi i8* [ %add.ptr185, %cond.end183 ], [ %buf.addr.0679, %while.cond156.preheader ], [ %incdec.ptr165, %while.body163 ]
  %incdec.ptr186 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !808
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr186}, i64 0, metadata !277), !dbg !808
  br label %while.cond.backedge, !dbg !809

cont191:                                          ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next189}, i64 0, metadata !278), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i64 %74}, i64 0, metadata !287), !dbg !810
  %73 = bitcast i8* %args.addr.1.ph to i64*, !dbg !810
  %74 = load i64* %73, align 4, !dbg !810
  %ap.next189 = getelementptr i8* %args.addr.1.ph, i32 8, !dbg !810
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !296), !dbg !812
  br label %if.then430, !dbg !813

cont197:                                          ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next194}, i64 0, metadata !278), !dbg !814
  tail call void @llvm.dbg.value(metadata !{i64 %conv195}, i64 0, metadata !287), !dbg !814
  %75 = bitcast i8* %args.addr.1.ph to i32*, !dbg !814
  %76 = load i32* %75, align 4, !dbg !814
  %conv195 = sext i32 %76 to i64, !dbg !814
  %ap.next194 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !814
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !296), !dbg !816
  br label %if.then430, !dbg !817

cont203:                                          ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next200}, i64 0, metadata !278), !dbg !818
  tail call void @llvm.dbg.value(metadata !{i64 %conv201}, i64 0, metadata !287), !dbg !818
  %77 = bitcast i8* %args.addr.1.ph to i32*, !dbg !818
  %78 = load i32* %77, align 4, !dbg !818
  %conv201 = sext i32 %78 to i64, !dbg !818
  %ap.next200 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !818
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !296), !dbg !820
  br label %if.then430, !dbg !821

sw.bb204:                                         ; preds = %for.end
  %79 = bitcast i8* %args.addr.1.ph to i32*, !dbg !822
  %ap.next206 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !822
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next206}, i64 0, metadata !278), !dbg !822
  %80 = load i32* %79, align 4, !dbg !822
  tail call void @llvm.dbg.value(metadata !{i32 %80}, i64 0, metadata !292), !dbg !822
  %81 = zext i32 %80 to i64, !dbg !824
  %82 = icmp sgt i32 %80, -1, !dbg !824
  br i1 %82, label %cont210, label %ioc_bb207, !dbg !824

ioc_bb207:                                        ; preds = %sw.bb204
  tail call void @__ioc_report_conversion(i32 247, i32 33, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i64 %81, i8 0) nounwind, !dbg !824
  br label %cont210, !dbg !824

cont210:                                          ; preds = %sw.bb204, %ioc_bb207
  %cmp211 = icmp eq i32 %80, -1, !dbg !824
  %.586 = sext i1 %cmp211 to i64, !dbg !824
  %.587 = select i1 %cmp211, i64 0, i64 %81, !dbg !824
  %.588 = zext i1 %cmp211 to i32, !dbg !824
  br label %sw.epilog428, !dbg !824

sw.bb224:                                         ; preds = %for.end
  %tobool225 = icmp eq i32 %sign.0.ph630, 0, !dbg !825
  %83 = bitcast i8* %args.addr.1.ph to i32*, !dbg !827
  %ap.next228 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !827
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next228}, i64 0, metadata !278), !dbg !827
  %84 = load i32* %83, align 4, !dbg !827
  br i1 %tobool225, label %if.else230, label %if.then226, !dbg !825

if.then226:                                       ; preds = %sw.bb224
  %conv229 = sext i32 %84 to i64, !dbg !827
  tail call void @llvm.dbg.value(metadata !{i64 %conv229}, i64 0, metadata !287), !dbg !827
  br label %sw.epilog428, !dbg !829

if.else230:                                       ; preds = %sw.bb224
  %conv233 = zext i32 %84 to i64, !dbg !830
  tail call void @llvm.dbg.value(metadata !{i64 %conv233}, i64 0, metadata !289), !dbg !830
  br label %if.end447

sw.bb235:                                         ; preds = %for.end
  %tobool236 = icmp eq i32 %sign.0.ph630, 0, !dbg !832
  %85 = bitcast i8* %args.addr.1.ph to i32*, !dbg !834
  %ap.next239 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !834
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next239}, i64 0, metadata !278), !dbg !834
  %86 = load i32* %85, align 4, !dbg !834
  %conv240 = sext i32 %86 to i64, !dbg !834
  tail call void @llvm.dbg.value(metadata !{i64 %conv240}, i64 0, metadata !287), !dbg !834
  %conv244 = zext i32 %86 to i64, !dbg !836
  tail call void @llvm.dbg.value(metadata !{i64 %conv244}, i64 0, metadata !289), !dbg !836
  %i64.0 = select i1 %tobool236, i64 0, i64 %conv240, !dbg !832
  %ui64.0 = select i1 %tobool236, i64 %conv244, i64 0, !dbg !832
  %tobool246 = icmp eq i32 %max_width.0, 0, !dbg !838
  %width.0. = select i1 %tobool246, i32 %width.0.lcssa, i32 11, !dbg !838
  br label %sw.epilog428, !dbg !838

sw.bb253:                                         ; preds = %for.end
  %tobool254 = icmp eq i32 %sign.0.ph630, 0, !dbg !839
  %87 = bitcast i8* %args.addr.1.ph to i32*, !dbg !841
  %ap.next257 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !841
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next257}, i64 0, metadata !278), !dbg !841
  %88 = load i32* %87, align 4, !dbg !841
  br i1 %tobool254, label %if.else259, label %if.then255, !dbg !839

if.then255:                                       ; preds = %sw.bb253
  %conv258 = sext i32 %88 to i64, !dbg !841
  tail call void @llvm.dbg.value(metadata !{i64 %conv258}, i64 0, metadata !287), !dbg !841
  br label %sw.epilog428, !dbg !843

if.else259:                                       ; preds = %sw.bb253
  %conv262 = zext i32 %88 to i64, !dbg !844
  tail call void @llvm.dbg.value(metadata !{i64 %conv262}, i64 0, metadata !289), !dbg !844
  br label %if.end447

sw.bb264:                                         ; preds = %for.end
  %tobool265 = icmp eq i32 %sign.0.ph630, 0, !dbg !846
  %89 = bitcast i8* %args.addr.1.ph to i32*, !dbg !848
  %ap.next268 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !848
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next268}, i64 0, metadata !278), !dbg !848
  %90 = load i32* %89, align 4, !dbg !848
  br i1 %tobool265, label %if.else270, label %if.then266, !dbg !846

if.then266:                                       ; preds = %sw.bb264
  %conv269 = sext i32 %90 to i64, !dbg !848
  tail call void @llvm.dbg.value(metadata !{i64 %conv269}, i64 0, metadata !287), !dbg !848
  br label %sw.epilog428, !dbg !850

if.else270:                                       ; preds = %sw.bb264
  %conv273 = zext i32 %90 to i64, !dbg !851
  tail call void @llvm.dbg.value(metadata !{i64 %conv273}, i64 0, metadata !289), !dbg !851
  br label %if.end447

sw.bb275:                                         ; preds = %for.end
  %tobool276 = icmp eq i32 %sign.0.ph630, 0, !dbg !853
  %91 = bitcast i8* %args.addr.1.ph to i32*, !dbg !855
  %ap.next279 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !855
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next279}, i64 0, metadata !278), !dbg !855
  %92 = load i32* %91, align 4, !dbg !855
  br i1 %tobool276, label %if.else281, label %if.then277, !dbg !853

if.then277:                                       ; preds = %sw.bb275
  %conv280 = sext i32 %92 to i64, !dbg !855
  tail call void @llvm.dbg.value(metadata !{i64 %conv280}, i64 0, metadata !287), !dbg !855
  br label %sw.epilog428, !dbg !857

if.else281:                                       ; preds = %sw.bb275
  %conv284 = zext i32 %92 to i64, !dbg !858
  tail call void @llvm.dbg.value(metadata !{i64 %conv284}, i64 0, metadata !289), !dbg !858
  br label %if.end447

sw.bb286:                                         ; preds = %for.end
  %tobool287 = icmp eq i32 %sign.0.ph630, 0, !dbg !860
  %93 = bitcast i8* %args.addr.1.ph to i64*, !dbg !862
  %ap.next290 = getelementptr i8* %args.addr.1.ph, i32 8, !dbg !862
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next290}, i64 0, metadata !278), !dbg !862
  %94 = load i64* %93, align 4, !dbg !862
  %. = select i1 %tobool287, i64 0, i64 %94
  %.585 = select i1 %tobool287, i64 %94, i64 0
  br label %sw.epilog428

sw.bb295:                                         ; preds = %for.end
  %tobool296 = icmp eq i32 %sign.0.ph630, 0, !dbg !864
  %95 = bitcast i8* %args.addr.1.ph to i32*, !dbg !866
  %ap.next299 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next299}, i64 0, metadata !278), !dbg !866
  %96 = load i32* %95, align 4, !dbg !866
  %conv300 = sext i32 %96 to i64, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i64 %conv300}, i64 0, metadata !287), !dbg !866
  %conv304 = zext i32 %96 to i64, !dbg !868
  tail call void @llvm.dbg.value(metadata !{i64 %conv304}, i64 0, metadata !289), !dbg !868
  %i64.1 = select i1 %tobool296, i64 0, i64 %conv300, !dbg !864
  %ui64.1 = select i1 %tobool296, i64 %conv304, i64 0, !dbg !864
  %tobool306 = icmp eq i32 %max_width.0, 0, !dbg !870
  %width.0.589 = select i1 %tobool306, i32 %width.0.lcssa, i32 11, !dbg !870
  br label %sw.epilog428, !dbg !870

sw.bb313:                                         ; preds = %for.end
  %97 = bitcast i8* %args.addr.1.ph to double*, !dbg !871
  %ap.next315 = getelementptr i8* %args.addr.1.ph, i32 8, !dbg !871
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next315}, i64 0, metadata !278), !dbg !871
  %98 = load double* %97, align 4, !dbg !871
  tail call void @llvm.dbg.value(metadata !{double %98}, i64 0, metadata !283), !dbg !871
  %cmp316 = fcmp olt double %98, 0.000000e+00, !dbg !873
  br i1 %cmp316, label %cont320, label %if.end322, !dbg !873

cont320:                                          ; preds = %sw.bb313
  %incdec.ptr321 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !874
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr321}, i64 0, metadata !275), !dbg !874
  store i8 45, i8* %buf.addr.0679, align 1, !dbg !874, !tbaa !705
  %sub = fsub double -0.000000e+00, %98, !dbg !876
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !283), !dbg !876
  br label %if.end322, !dbg !877

if.end322:                                        ; preds = %cont320, %sw.bb313
  %f.0 = phi double [ %sub, %cont320 ], [ %98, %sw.bb313 ]
  %buf.addr.3 = phi i8* [ %incdec.ptr321, %cont320 ], [ %buf.addr.0679, %sw.bb313 ]
  %conv323 = fptosi double %f.0 to i64, !dbg !878
  %99 = icmp sgt i64 %conv323, -1, !dbg !878
  br i1 %99, label %cont328, label %ioc_bb325, !dbg !878

ioc_bb325:                                        ; preds = %if.end322
  tail call void @__ioc_report_conversion(i32 340, i32 18, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @8, i32 0, i32 0), i64 %conv323, i8 1) nounwind, !dbg !878
  br label %cont328, !dbg !878

cont328:                                          ; preds = %if.end322, %ioc_bb325
  tail call void @llvm.dbg.value(metadata !{i64 %conv323}, i64 0, metadata !289), !dbg !878
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !291), !dbg !879
  %tobool329 = icmp eq i32 %frac_width.1, 0, !dbg !880
  br i1 %tobool329, label %cont357.thread, label %cont336, !dbg !880

cont357.thread:                                   ; preds = %cont328
  %call601 = tail call fastcc i8* @ngx_sprintf_num(i8* %buf.addr.3, i8* %last, i64 %conv323, i8 zeroext %conv10, i32 0, i32 %width.0.lcssa), !dbg !881
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !275), !dbg !881
  br label %if.end372, !dbg !882

cont336:                                          ; preds = %cont328, %for.cond333.backedge
  %n.0654 = phi i32 [ %105, %for.cond333.backedge ], [ %frac_width.1, %cont328 ]
  %scale.0653 = phi i32 [ %101, %for.cond333.backedge ], [ 1, %cont328 ]
  %100 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %scale.0653, i32 10), !dbg !883
  %101 = extractvalue { i32, i1 } %100, 0, !dbg !883
  %102 = extractvalue { i32, i1 } %100, 1, !dbg !883
  br i1 %102, label %ioc_bb337, label %cont338, !dbg !883

ioc_bb337:                                        ; preds = %cont336
  %103 = zext i32 %scale.0653 to i64, !dbg !883
  tail call void @__ioc_report_mul_overflow(i32 345, i32 21, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %103, i64 10, i8 5) nounwind, !dbg !883
  br label %cont338, !dbg !883

cont338:                                          ; preds = %cont336, %ioc_bb337
  tail call void @llvm.dbg.value(metadata !{i32 %101}, i64 0, metadata !300), !dbg !883
  %104 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.0654, i32 1), !dbg !887
  %105 = extractvalue { i32, i1 } %104, 0, !dbg !887
  %106 = extractvalue { i32, i1 } %104, 1, !dbg !887
  br i1 %106, label %ioc_bb339, label %for.cond333.backedge, !dbg !887

for.cond333.backedge:                             ; preds = %cont338, %ioc_bb339
  %tobool334 = icmp eq i32 %105, 0, !dbg !887
  br i1 %tobool334, label %for.end341, label %cont336, !dbg !887

ioc_bb339:                                        ; preds = %cont338
  %107 = zext i32 %n.0654 to i64, !dbg !887
  tail call void @__ioc_report_sub_overflow(i32 344, i32 38, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %107, i64 1, i8 5) nounwind, !dbg !887
  br label %for.cond333.backedge, !dbg !887

for.end341:                                       ; preds = %for.cond333.backedge
  %conv342 = uitofp i64 %conv323 to double, !dbg !888
  %sub343 = fsub double %f.0, %conv342, !dbg !888
  %conv344 = uitofp i32 %101 to double, !dbg !888
  %mul = fmul double %sub343, %conv344, !dbg !888
  %add = fadd double %mul, 5.000000e-01, !dbg !888
  %conv345 = fptoui double %add to i64, !dbg !888
  tail call void @llvm.dbg.value(metadata !{i64 %conv345}, i64 0, metadata !291), !dbg !888
  %conv346 = zext i32 %101 to i64, !dbg !889
  %cmp347 = icmp eq i64 %conv345, %conv346, !dbg !889
  br i1 %cmp347, label %if.then349, label %if.then359, !dbg !889

if.then349:                                       ; preds = %for.end341
  %108 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %conv323, i64 1), !dbg !890
  %109 = extractvalue { i64, i1 } %108, 0, !dbg !890
  %110 = extractvalue { i64, i1 } %108, 1, !dbg !890
  br i1 %110, label %ioc_bb350, label %if.then359, !dbg !890

ioc_bb350:                                        ; preds = %if.then349
  tail call void @__ioc_report_add_overflow(i32 349, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %conv323, i64 1, i8 6) nounwind, !dbg !890
  br label %if.then359, !dbg !890

if.then359:                                       ; preds = %if.then349, %ioc_bb350, %for.end341
  %ui64.2 = phi i64 [ %conv323, %for.end341 ], [ %109, %ioc_bb350 ], [ %109, %if.then349 ]
  %frac.0 = phi i64 [ %conv345, %for.end341 ], [ 0, %ioc_bb350 ], [ 0, %if.then349 ]
  %call = tail call fastcc i8* @ngx_sprintf_num(i8* %buf.addr.3, i8* %last, i64 %ui64.2, i8 zeroext %conv10, i32 0, i32 %width.0.lcssa), !dbg !881
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !275), !dbg !881
  %cmp360 = icmp ult i8* %call, %last, !dbg !892
  br i1 %cmp360, label %cont364, label %cont370, !dbg !892

cont364:                                          ; preds = %if.then359
  %incdec.ptr365 = getelementptr inbounds i8* %call, i32 1, !dbg !894
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr365}, i64 0, metadata !275), !dbg !894
  store i8 46, i8* %call, align 1, !dbg !894, !tbaa !705
  br label %cont370, !dbg !896

cont370:                                          ; preds = %cont364, %if.then359
  %buf.addr.4 = phi i8* [ %incdec.ptr365, %cont364 ], [ %call, %if.then359 ]
  %call371 = tail call fastcc i8* @ngx_sprintf_num(i8* %buf.addr.4, i8* %last, i64 %frac.0, i8 zeroext 48, i32 0, i32 %frac_width.1), !dbg !897
  tail call void @llvm.dbg.value(metadata !{i8* %call371}, i64 0, metadata !275), !dbg !897
  br label %if.end372, !dbg !898

if.end372:                                        ; preds = %cont357.thread, %cont370
  %buf.addr.5 = phi i8* [ %call371, %cont370 ], [ %call601, %cont357.thread ]
  %incdec.ptr373 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !899
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr373}, i64 0, metadata !277), !dbg !899
  br label %while.cond.backedge, !dbg !900

sw.bb374:                                         ; preds = %for.end
  %111 = bitcast i8* %args.addr.1.ph to i64*, !dbg !901
  %ap.next376 = getelementptr i8* %args.addr.1.ph, i32 8, !dbg !901
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next376}, i64 0, metadata !278), !dbg !901
  %112 = load i64* %111, align 4, !dbg !901
  %113 = icmp sgt i64 %112, -1, !dbg !901
  br i1 %113, label %if.end447, label %if.then430.thread, !dbg !901

if.then430.thread:                                ; preds = %sw.bb374
  tail call void @__ioc_report_conversion(i32 366, i32 28, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i64 %112, i8 0) nounwind, !dbg !901
  br label %cont435, !dbg !903

sw.bb382:                                         ; preds = %for.end
  %114 = bitcast i8* %args.addr.1.ph to i8**, !dbg !905
  %ap.next384 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !905
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next384}, i64 0, metadata !278), !dbg !905
  %115 = load i8** %114, align 4, !dbg !905
  %116 = ptrtoint i8* %115 to i32, !dbg !905
  %conv385 = zext i32 %116 to i64, !dbg !905
  tail call void @llvm.dbg.value(metadata !{i64 %conv385}, i64 0, metadata !289), !dbg !905
  tail call void @llvm.dbg.value(metadata !907, i64 0, metadata !297), !dbg !908
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !296), !dbg !909
  tail call void @llvm.dbg.value(metadata !910, i64 0, metadata !281), !dbg !911
  tail call void @llvm.dbg.value(metadata !912, i64 0, metadata !295), !dbg !913
  br label %if.end447, !dbg !914

cont403:                                          ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i8* %ap.next399}, i64 0, metadata !278), !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %118}, i64 0, metadata !282), !dbg !915
  %117 = bitcast i8* %args.addr.1.ph to i32*, !dbg !915
  %118 = load i32* %117, align 4, !dbg !915
  %ap.next399 = getelementptr i8* %args.addr.1.ph, i32 4, !dbg !915
  %conv404 = trunc i32 %118 to i8, !dbg !917
  %incdec.ptr405 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !917
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr405}, i64 0, metadata !275), !dbg !917
  store i8 %conv404, i8* %buf.addr.0679, align 1, !dbg !917, !tbaa !705
  %incdec.ptr406 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !918
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr406}, i64 0, metadata !277), !dbg !918
  br label %while.cond.backedge, !dbg !919

cont409:                                          ; preds = %for.end
  %incdec.ptr410 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !920
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr410}, i64 0, metadata !275), !dbg !920
  store i8 0, i8* %buf.addr.0679, align 1, !dbg !920, !tbaa !705
  %incdec.ptr411 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !922
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr411}, i64 0, metadata !277), !dbg !922
  br label %while.cond.backedge, !dbg !923

cont414:                                          ; preds = %for.end
  %incdec.ptr415 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !924
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr415}, i64 0, metadata !275), !dbg !924
  store i8 10, i8* %buf.addr.0679, align 1, !dbg !924, !tbaa !705
  %incdec.ptr416 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !926
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr416}, i64 0, metadata !277), !dbg !926
  br label %while.cond.backedge, !dbg !927

cont419:                                          ; preds = %for.end
  %incdec.ptr420 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !928
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr420}, i64 0, metadata !275), !dbg !928
  store i8 37, i8* %buf.addr.0679, align 1, !dbg !928, !tbaa !705
  %incdec.ptr421 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !930
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr421}, i64 0, metadata !277), !dbg !930
  br label %while.cond.backedge, !dbg !931

sw.default422:                                    ; preds = %for.end
  %incdec.ptr423 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !932
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr423}, i64 0, metadata !277), !dbg !932
  %119 = icmp sgt i8 %48, -1, !dbg !932
  br i1 %119, label %cont426, label %ioc_bb425, !dbg !932

ioc_bb425:                                        ; preds = %sw.default422
  %120 = sext i8 %48 to i64, !dbg !932
  tail call void @__ioc_report_conversion(i32 409, i32 23, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %120, i8 1) nounwind, !dbg !932
  br label %cont426, !dbg !932

cont426:                                          ; preds = %ioc_bb425, %sw.default422
  %incdec.ptr427 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !932
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr427}, i64 0, metadata !275), !dbg !932
  store i8 %48, i8* %buf.addr.0679, align 1, !dbg !932, !tbaa !705
  br label %while.cond.backedge, !dbg !934

sw.epilog428:                                     ; preds = %sw.bb295, %sw.bb235, %cont210, %sw.bb286, %if.then277, %if.then266, %if.then255, %if.then226
  %i64.2 = phi i64 [ %conv280, %if.then277 ], [ %conv269, %if.then266 ], [ %conv258, %if.then255 ], [ %conv229, %if.then226 ], [ %., %sw.bb286 ], [ %.586, %cont210 ], [ %i64.0, %sw.bb235 ], [ %i64.1, %sw.bb295 ]
  %ui64.3 = phi i64 [ 0, %if.then277 ], [ 0, %if.then266 ], [ 0, %if.then255 ], [ 0, %if.then226 ], [ %.585, %sw.bb286 ], [ %.587, %cont210 ], [ %ui64.0, %sw.bb235 ], [ %ui64.1, %sw.bb295 ]
  %args.addr.2 = phi i8* [ %ap.next279, %if.then277 ], [ %ap.next268, %if.then266 ], [ %ap.next257, %if.then255 ], [ %ap.next228, %if.then226 ], [ %ap.next290, %sw.bb286 ], [ %ap.next206, %cont210 ], [ %ap.next239, %sw.bb235 ], [ %ap.next299, %sw.bb295 ]
  %width.1 = phi i32 [ %width.0.lcssa, %if.then277 ], [ %width.0.lcssa, %if.then266 ], [ %width.0.lcssa, %if.then255 ], [ %width.0.lcssa, %if.then226 ], [ %width.0.lcssa, %sw.bb286 ], [ %width.0.lcssa, %cont210 ], [ %width.0., %sw.bb235 ], [ %width.0.589, %sw.bb295 ]
  %sign.1 = phi i32 [ %sign.0.ph630, %if.then277 ], [ %sign.0.ph630, %if.then266 ], [ %sign.0.ph630, %if.then255 ], [ %sign.0.ph630, %if.then226 ], [ %sign.0.ph630, %sw.bb286 ], [ %.588, %cont210 ], [ %sign.0.ph630, %sw.bb235 ], [ %sign.0.ph630, %sw.bb295 ]
  %tobool429 = icmp eq i32 %sign.1, 0, !dbg !935
  br i1 %tobool429, label %if.end447, label %if.then430, !dbg !935

if.then430:                                       ; preds = %cont191, %cont197, %cont203, %sw.epilog428
  %width.1614 = phi i32 [ %width.1, %sw.epilog428 ], [ %width.0.lcssa, %cont203 ], [ %width.0.lcssa, %cont197 ], [ %width.0.lcssa, %cont191 ]
  %args.addr.2613 = phi i8* [ %args.addr.2, %sw.epilog428 ], [ %ap.next200, %cont203 ], [ %ap.next194, %cont197 ], [ %ap.next189, %cont191 ]
  %i64.2612 = phi i64 [ %i64.2, %sw.epilog428 ], [ %conv201, %cont203 ], [ %conv195, %cont197 ], [ %74, %cont191 ]
  %cmp431 = icmp slt i64 %i64.2612, 0, !dbg !903
  br i1 %cmp431, label %cont435, label %if.end447, !dbg !903

cont435:                                          ; preds = %if.then430.thread, %if.then430
  %i64.2612620 = phi i64 [ %112, %if.then430.thread ], [ %i64.2612, %if.then430 ]
  %args.addr.2613619 = phi i8* [ %ap.next376, %if.then430.thread ], [ %args.addr.2613, %if.then430 ]
  %width.1614618 = phi i32 [ %width.0.lcssa, %if.then430.thread ], [ %width.1614, %if.then430 ]
  %incdec.ptr436 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !936
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr436}, i64 0, metadata !275), !dbg !936
  store i8 45, i8* %buf.addr.0679, align 1, !dbg !936, !tbaa !705
  %121 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 0, i64 %i64.2612620), !dbg !938
  %122 = extractvalue { i64, i1 } %121, 0, !dbg !938
  %123 = extractvalue { i64, i1 } %121, 1, !dbg !938
  br i1 %123, label %ioc_bb437, label %cont438, !dbg !938

ioc_bb437:                                        ; preds = %cont435
  tail call void @__ioc_report_sub_overflow(i32 416, i32 31, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @4, i32 0, i32 0), i64 0, i64 %i64.2612620, i8 14) nounwind, !dbg !938
  br label %cont438, !dbg !938

cont438:                                          ; preds = %cont435, %ioc_bb437
  %124 = icmp sgt i64 %122, -1, !dbg !938
  br i1 %124, label %if.end447, label %ioc_bb440, !dbg !938

ioc_bb440:                                        ; preds = %cont438
  tail call void @__ioc_report_conversion(i32 416, i32 30, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @8, i32 0, i32 0), i64 %122, i8 1) nounwind, !dbg !938
  br label %if.end447, !dbg !938

if.end447:                                        ; preds = %sw.bb374, %if.else230, %if.else259, %if.else270, %if.else281, %sw.bb382, %if.then430, %cont438, %ioc_bb440, %sw.epilog428
  %hex.1606 = phi i32 [ %hex.0.ph631.ph, %sw.epilog428 ], [ %hex.0.ph631.ph, %ioc_bb440 ], [ %hex.0.ph631.ph, %cont438 ], [ %hex.0.ph631.ph, %if.then430 ], [ 2, %sw.bb382 ], [ %hex.0.ph631.ph, %if.else281 ], [ %hex.0.ph631.ph, %if.else270 ], [ %hex.0.ph631.ph, %if.else259 ], [ %hex.0.ph631.ph, %if.else230 ], [ %hex.0.ph631.ph, %sw.bb374 ]
  %width.1605 = phi i32 [ %width.1, %sw.epilog428 ], [ %width.1614618, %ioc_bb440 ], [ %width.1614618, %cont438 ], [ %width.1614, %if.then430 ], [ 8, %sw.bb382 ], [ %width.0.lcssa, %if.else281 ], [ %width.0.lcssa, %if.else270 ], [ %width.0.lcssa, %if.else259 ], [ %width.0.lcssa, %if.else230 ], [ %width.0.lcssa, %sw.bb374 ]
  %args.addr.2604 = phi i8* [ %args.addr.2, %sw.epilog428 ], [ %args.addr.2613619, %ioc_bb440 ], [ %args.addr.2613619, %cont438 ], [ %args.addr.2613, %if.then430 ], [ %ap.next384, %sw.bb382 ], [ %ap.next279, %if.else281 ], [ %ap.next268, %if.else270 ], [ %ap.next257, %if.else259 ], [ %ap.next228, %if.else230 ], [ %ap.next376, %sw.bb374 ]
  %zero.0603 = phi i8 [ %conv10, %sw.epilog428 ], [ %conv10, %ioc_bb440 ], [ %conv10, %cont438 ], [ %conv10, %if.then430 ], [ 48, %sw.bb382 ], [ %conv10, %if.else281 ], [ %conv10, %if.else270 ], [ %conv10, %if.else259 ], [ %conv10, %if.else230 ], [ %conv10, %sw.bb374 ]
  %ui64.4 = phi i64 [ %ui64.3, %sw.epilog428 ], [ %122, %ioc_bb440 ], [ %122, %cont438 ], [ %i64.2612, %if.then430 ], [ %conv385, %sw.bb382 ], [ %conv284, %if.else281 ], [ %conv273, %if.else270 ], [ %conv262, %if.else259 ], [ %conv233, %if.else230 ], [ %112, %sw.bb374 ]
  %buf.addr.6 = phi i8* [ %buf.addr.0679, %sw.epilog428 ], [ %incdec.ptr436, %ioc_bb440 ], [ %incdec.ptr436, %cont438 ], [ %buf.addr.0679, %if.then430 ], [ %buf.addr.0679, %sw.bb382 ], [ %buf.addr.0679, %if.else281 ], [ %buf.addr.0679, %if.else270 ], [ %buf.addr.0679, %if.else259 ], [ %buf.addr.0679, %if.else230 ], [ %buf.addr.0679, %sw.bb374 ]
  %call448 = tail call fastcc i8* @ngx_sprintf_num(i8* %buf.addr.6, i8* %last, i64 %ui64.4, i8 zeroext %zero.0603, i32 %hex.1606, i32 %width.1605), !dbg !939
  tail call void @llvm.dbg.value(metadata !{i8* %call448}, i64 0, metadata !275), !dbg !939
  %incdec.ptr449 = getelementptr inbounds i8* %fmt.addr.4, i32 1, !dbg !940
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr449}, i64 0, metadata !277), !dbg !940
  br label %while.cond.backedge, !dbg !941

if.else450:                                       ; preds = %while.body
  %125 = icmp sgt i8 %1, -1, !dbg !942
  br i1 %125, label %cont454, label %ioc_bb453, !dbg !942

ioc_bb453:                                        ; preds = %if.else450
  %126 = sext i8 %1 to i64, !dbg !942
  tail call void @__ioc_report_conversion(i32 426, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %126, i8 1) nounwind, !dbg !942
  br label %cont454, !dbg !942

cont454:                                          ; preds = %ioc_bb453, %if.else450
  %incdec.ptr455 = getelementptr inbounds i8* %buf.addr.0679, i32 1, !dbg !942
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr455}, i64 0, metadata !275), !dbg !942
  store i8 %1, i8* %buf.addr.0679, align 1, !dbg !942, !tbaa !705
  br label %while.cond.backedge

while.end457:                                     ; preds = %while.cond.backedge, %entry
  %buf.addr.0.lcssa = phi i8* [ %buf, %entry ], [ %buf.addr.0.be, %while.cond.backedge ]
  ret i8* %buf.addr.0.lcssa, !dbg !944
}

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.va_end(i8*) nounwind

define i8* @ngx_snprintf(i8* %buf, i32 %max, i8* nocapture %fmt, ...) nounwind {
entry:
  %args = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !253), !dbg !945
  call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !254), !dbg !945
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !255), !dbg !945
  call void @llvm.dbg.declare(metadata !{i8** %args}, metadata !258), !dbg !946
  %args1 = bitcast i8** %args to i8*, !dbg !947
  call void @llvm.va_start(i8* %args1), !dbg !947
  %add.ptr = getelementptr inbounds i8* %buf, i32 %max, !dbg !948
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !258), !dbg !948
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !258), !dbg !948
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !258), !dbg !948
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !258), !dbg !948
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !258), !dbg !948
  %0 = load i8** %args, align 4, !dbg !948, !tbaa !729
  %call = call i8* @ngx_vslprintf(i8* %buf, i8* %add.ptr, i8* %fmt, i8* %0), !dbg !948
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !256), !dbg !948
  call void @llvm.va_end(i8* %args1), !dbg !949
  ret i8* %call, !dbg !950
}

define i8* @ngx_slprintf(i8* %buf, i8* %last, i8* nocapture %fmt, ...) nounwind {
entry:
  %args = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !264), !dbg !951
  call void @llvm.dbg.value(metadata !{i8* %last}, i64 0, metadata !265), !dbg !951
  call void @llvm.dbg.value(metadata !{i8* %fmt}, i64 0, metadata !266), !dbg !951
  call void @llvm.dbg.declare(metadata !{i8** %args}, metadata !269), !dbg !952
  %args1 = bitcast i8** %args to i8*, !dbg !953
  call void @llvm.va_start(i8* %args1), !dbg !953
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !269), !dbg !954
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !269), !dbg !954
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !269), !dbg !954
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !269), !dbg !954
  call void @llvm.dbg.value(metadata !{i8** %args}, i64 0, metadata !269), !dbg !954
  %0 = load i8** %args, align 4, !dbg !954, !tbaa !729
  %call = call i8* @ngx_vslprintf(i8* %buf, i8* %last, i8* %fmt, i8* %0), !dbg !954
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !267), !dbg !954
  call void @llvm.va_end(i8* %args1), !dbg !955
  ret i8* %call, !dbg !956
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) nounwind readnone

define internal fastcc i8* @ngx_sprintf_num(i8* %buf, i8* %last, i64 %ui64, i8 zeroext %zero, i32 %hexadecimal, i32 %width) nounwind {
entry:
  %temp = alloca [21 x i8], align 1
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !655), !dbg !957
  call void @llvm.dbg.value(metadata !{i8* %last}, i64 0, metadata !656), !dbg !957
  call void @llvm.dbg.value(metadata !{i64 %ui64}, i64 0, metadata !657), !dbg !957
  call void @llvm.dbg.value(metadata !{i8 %zero}, i64 0, metadata !658), !dbg !957
  call void @llvm.dbg.value(metadata !{i32 %hexadecimal}, i64 0, metadata !659), !dbg !957
  call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !660), !dbg !957
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %temp}, metadata !663), !dbg !958
  %add.ptr1 = getelementptr inbounds [21 x i8]* %temp, i32 0, i32 20, !dbg !959
  call void @llvm.dbg.value(metadata !{i8* %add.ptr1}, i64 0, metadata !661), !dbg !959
  switch i32 %hexadecimal, label %cont67 [
    i32 0, label %if.then
    i32 1, label %cont52
  ], !dbg !960

if.then:                                          ; preds = %entry
  %cmp2 = icmp ult i64 %ui64, 4294967296, !dbg !961
  br i1 %cmp2, label %cont5, label %cont26, !dbg !961

cont5:                                            ; preds = %if.then
  %conv = trunc i64 %ui64 to i32, !dbg !963
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !668), !dbg !963
  br label %cont10, !dbg !965

cont10:                                           ; preds = %cont10, %cont5
  %p.0 = phi i8* [ %add.ptr1, %cont5 ], [ %incdec.ptr, %cont10 ]
  %ui32.0 = phi i32 [ %conv, %cont5 ], [ %div, %cont10 ]
  %rem = urem i32 %ui32.0, 10, !dbg !966
  %0 = or i32 %rem, 48, !dbg !966
  %conv16 = trunc i32 %0 to i8, !dbg !966
  %incdec.ptr = getelementptr inbounds i8* %p.0, i32 -1, !dbg !966
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !661), !dbg !966
  store i8 %conv16, i8* %incdec.ptr, align 1, !dbg !966, !tbaa !705
  %div = udiv i32 %ui32.0, 10, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !668), !dbg !968
  %1 = icmp ugt i32 %ui32.0, 9, !dbg !968
  br i1 %1, label %cont10, label %if.end78, !dbg !968

cont26:                                           ; preds = %if.then, %cont26
  %ui64.addr.0 = phi i64 [ %div38, %cont26 ], [ %ui64, %if.then ]
  %p.1 = phi i8* [ %incdec.ptr33, %cont26 ], [ %add.ptr1, %if.then ]
  %rem24 = urem i64 %ui64.addr.0, 10, !dbg !969
  %2 = or i64 %rem24, 48, !dbg !969
  %conv32 = trunc i64 %2 to i8, !dbg !969
  %incdec.ptr33 = getelementptr inbounds i8* %p.1, i32 -1, !dbg !969
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr33}, i64 0, metadata !661), !dbg !969
  store i8 %conv32, i8* %incdec.ptr33, align 1, !dbg !969, !tbaa !705
  %div38 = udiv i64 %ui64.addr.0, 10, !dbg !972
  call void @llvm.dbg.value(metadata !{i64 %div38}, i64 0, metadata !657), !dbg !972
  %3 = icmp ugt i64 %ui64.addr.0, 9, !dbg !972
  br i1 %3, label %cont26, label %if.end78, !dbg !972

cont52:                                           ; preds = %entry, %cont52
  %ui64.addr.1 = phi i64 [ %shr, %cont52 ], [ %ui64, %entry ]
  %p.2 = phi i8* [ %incdec.ptr54, %cont52 ], [ %add.ptr1, %entry ]
  %ui64.addr.1.tr = trunc i64 %ui64.addr.1 to i32, !dbg !973
  %conv53 = and i32 %ui64.addr.1.tr, 15, !dbg !973
  %arrayidx = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.hex, i32 0, i32 %conv53, !dbg !973
  %4 = load i8* %arrayidx, align 1, !dbg !973, !tbaa !705
  %incdec.ptr54 = getelementptr inbounds i8* %p.2, i32 -1, !dbg !973
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr54}, i64 0, metadata !661), !dbg !973
  store i8 %4, i8* %incdec.ptr54, align 1, !dbg !973, !tbaa !705
  %shr = lshr i64 %ui64.addr.1, 4, !dbg !976
  call void @llvm.dbg.value(metadata !{i64 %shr}, i64 0, metadata !657), !dbg !976
  %tobool58 = icmp eq i64 %shr, 0, !dbg !976
  br i1 %tobool58, label %if.end78, label %cont52, !dbg !976

cont67:                                           ; preds = %entry, %cont67
  %ui64.addr.2 = phi i64 [ %shr74, %cont67 ], [ %ui64, %entry ]
  %p.3 = phi i8* [ %incdec.ptr70, %cont67 ], [ %add.ptr1, %entry ]
  %ui64.addr.2.tr = trunc i64 %ui64.addr.2 to i32, !dbg !977
  %conv68 = and i32 %ui64.addr.2.tr, 15, !dbg !977
  %arrayidx69 = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.HEX, i32 0, i32 %conv68, !dbg !977
  %5 = load i8* %arrayidx69, align 1, !dbg !977, !tbaa !705
  %incdec.ptr70 = getelementptr inbounds i8* %p.3, i32 -1, !dbg !977
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr70}, i64 0, metadata !661), !dbg !977
  store i8 %5, i8* %incdec.ptr70, align 1, !dbg !977, !tbaa !705
  %shr74 = lshr i64 %ui64.addr.2, 4, !dbg !980
  call void @llvm.dbg.value(metadata !{i64 %shr74}, i64 0, metadata !657), !dbg !980
  %tobool75 = icmp eq i64 %shr74, 0, !dbg !980
  br i1 %tobool75, label %if.end78, label %cont67, !dbg !980

if.end78:                                         ; preds = %cont52, %cont26, %cont10, %cont67
  %p.4 = phi i8* [ %incdec.ptr70, %cont67 ], [ %incdec.ptr, %cont10 ], [ %incdec.ptr33, %cont26 ], [ %incdec.ptr54, %cont52 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr1 to i32, !dbg !981
  %sub.ptr.rhs.cast = ptrtoint i8* %p.4 to i32, !dbg !981
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !981
  %6 = sext i32 %sub.ptr.sub to i64, !dbg !981
  %7 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !981
  br i1 %7, label %while.cond, label %ioc_bb82, !dbg !981

ioc_bb82:                                         ; preds = %if.end78
  call void @__ioc_report_conversion(i32 486, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !981
  br label %while.cond, !dbg !981

while.cond:                                       ; preds = %if.end78, %ioc_bb82, %while.body
  %buf.addr.0 = phi i8* [ %incdec.ptr90, %while.body ], [ %buf, %ioc_bb82 ], [ %buf, %if.end78 ]
  %len.0 = phi i32 [ %9, %while.body ], [ %sub.ptr.sub, %ioc_bb82 ], [ %sub.ptr.sub, %if.end78 ]
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0, i32 1), !dbg !982
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !982
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !982
  br i1 %10, label %ioc_bb84, label %cont85, !dbg !982

ioc_bb84:                                         ; preds = %while.cond
  %11 = zext i32 %len.0 to i64, !dbg !982
  call void @__ioc_report_add_overflow(i32 487, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %11, i64 1, i8 5) nounwind, !dbg !982
  br label %cont85, !dbg !982

cont85:                                           ; preds = %while.cond, %ioc_bb84
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !667), !dbg !982
  %cmp86 = icmp ult i32 %len.0, %width, !dbg !982
  %cmp88 = icmp ult i8* %buf.addr.0, %last, !dbg !982
  %or.cond = and i1 %cmp86, %cmp88, !dbg !982
  br i1 %or.cond, label %while.body, label %while.end, !dbg !982

while.body:                                       ; preds = %cont85
  %incdec.ptr90 = getelementptr inbounds i8* %buf.addr.0, i32 1, !dbg !983
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr90}, i64 0, metadata !655), !dbg !983
  store i8 %zero, i8* %buf.addr.0, align 1, !dbg !983, !tbaa !705
  br label %while.cond, !dbg !985

while.end:                                        ; preds = %cont85
  br i1 %7, label %cont99, label %ioc_bb98, !dbg !986

ioc_bb98:                                         ; preds = %while.end
  call void @__ioc_report_conversion(i32 491, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !986
  br label %cont99, !dbg !986

cont99:                                           ; preds = %ioc_bb98, %while.end
  call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub}, i64 0, metadata !667), !dbg !986
  %add.ptr100 = getelementptr inbounds i8* %buf.addr.0, i32 %sub.ptr.sub, !dbg !987
  %cmp101 = icmp ugt i8* %add.ptr100, %last, !dbg !987
  br i1 %cmp101, label %if.then103, label %if.end110, !dbg !987

if.then103:                                       ; preds = %cont99
  %sub.ptr.lhs.cast104 = ptrtoint i8* %last to i32, !dbg !988
  %sub.ptr.rhs.cast105 = ptrtoint i8* %buf.addr.0 to i32, !dbg !988
  %sub.ptr.sub106 = sub i32 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105, !dbg !988
  %12 = icmp sgt i32 %sub.ptr.sub106, -1, !dbg !988
  br i1 %12, label %if.end110, label %ioc_bb108, !dbg !988

ioc_bb108:                                        ; preds = %if.then103
  %13 = sext i32 %sub.ptr.sub106 to i64, !dbg !988
  call void @__ioc_report_conversion(i32 493, i32 11, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !988
  br label %if.end110, !dbg !988

if.end110:                                        ; preds = %if.then103, %ioc_bb108, %cont99
  %len.1 = phi i32 [ %sub.ptr.sub, %cont99 ], [ %sub.ptr.sub106, %ioc_bb108 ], [ %sub.ptr.sub106, %if.then103 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf.addr.0, i8* %p.4, i32 %len.1, i32 1, i1 false), !dbg !990
  %add.ptr111 = getelementptr inbounds i8* %buf.addr.0, i32 %len.1, !dbg !990
  ret i8* %add.ptr111, !dbg !990
}

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

define i32 @ngx_strcasecmp(i8* nocapture %s1, i8* nocapture %s2) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !322), !dbg !991
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !323), !dbg !991
  br label %for.cond, !dbg !992

for.cond:                                         ; preds = %if.then, %entry
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %if.then ]
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr1, %if.then ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !322), !dbg !994
  %0 = load i8* %s1.addr.0, align 1, !dbg !994, !tbaa !705
  %conv = zext i8 %0 to i32, !dbg !994
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !324), !dbg !994
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1}, i64 0, metadata !323), !dbg !996
  %1 = load i8* %s2.addr.0, align 1, !dbg !996, !tbaa !705
  %conv2 = zext i8 %1 to i32, !dbg !996
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !326), !dbg !996
  %.off = add i8 %0, -65, !dbg !997
  %2 = icmp ult i8 %.off, 26, !dbg !997
  %or = or i32 %conv, 32, !dbg !997
  %cond = select i1 %2, i32 %or, i32 %conv, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !324), !dbg !997
  %.off45 = add i8 %1, -65, !dbg !998
  %3 = icmp ult i8 %.off45, 26, !dbg !998
  %or22 = or i32 %conv2, 32, !dbg !998
  %cond25 = select i1 %3, i32 %or22, i32 %conv2, !dbg !998
  tail call void @llvm.dbg.value(metadata !{i32 %cond25}, i64 0, metadata !326), !dbg !998
  %cmp26 = icmp eq i32 %cond, %cond25, !dbg !999
  br i1 %cmp26, label %if.then, label %if.end29, !dbg !999

if.then:                                          ; preds = %for.cond
  %incdec.ptr1 = getelementptr inbounds i8* %s2.addr.0, i32 1, !dbg !996
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.0, i32 1, !dbg !994
  %tobool = icmp eq i32 %cond, 0, !dbg !1000
  br i1 %tobool, label %return, label %for.cond, !dbg !1000

if.end29:                                         ; preds = %for.cond
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %cond, i32 %cond25), !dbg !1002
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1002
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1002
  br i1 %6, label %ioc_bb30, label %cont31, !dbg !1002

ioc_bb30:                                         ; preds = %if.end29
  %7 = zext i32 %cond25 to i64, !dbg !1002
  %8 = zext i32 %cond to i64, !dbg !1002
  tail call void @__ioc_report_sub_overflow(i32 519, i32 16, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %8, i64 %7, i8 5) nounwind, !dbg !1002
  br label %cont31, !dbg !1002

cont31:                                           ; preds = %if.end29, %ioc_bb30
  %9 = icmp sgt i32 %5, -1, !dbg !1002
  br i1 %9, label %return, label %ioc_bb32, !dbg !1002

ioc_bb32:                                         ; preds = %cont31
  %10 = zext i32 %5 to i64, !dbg !1002
  tail call void @__ioc_report_conversion(i32 519, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i64 %10, i8 0) nounwind, !dbg !1002
  br label %return, !dbg !1002

return:                                           ; preds = %if.then, %cont31, %ioc_bb32
  %retval.0 = phi i32 [ %5, %ioc_bb32 ], [ %5, %cont31 ], [ 0, %if.then ]
  ret i32 %retval.0, !dbg !1003
}

define i32 @ngx_strncasecmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !332), !dbg !1004
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !333), !dbg !1004
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !334), !dbg !1004
  %tobool50 = icmp eq i32 %n, 0, !dbg !1005
  br i1 %tobool50, label %return, label %while.body, !dbg !1005

while.body:                                       ; preds = %entry, %while.cond.backedge
  %n.addr.053 = phi i32 [ %5, %while.cond.backedge ], [ %n, %entry ]
  %s2.addr.052 = phi i8* [ %incdec.ptr1, %while.cond.backedge ], [ %s2, %entry ]
  %s1.addr.051 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %s1, %entry ]
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.051, i32 1, !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !332), !dbg !1006
  %0 = load i8* %s1.addr.051, align 1, !dbg !1006, !tbaa !705
  %conv = zext i8 %0 to i32, !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !335), !dbg !1006
  %incdec.ptr1 = getelementptr inbounds i8* %s2.addr.052, i32 1, !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1}, i64 0, metadata !333), !dbg !1008
  %1 = load i8* %s2.addr.052, align 1, !dbg !1008, !tbaa !705
  %conv2 = zext i8 %1 to i32, !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !337), !dbg !1008
  %.off = add i8 %0, -65, !dbg !1009
  %2 = icmp ult i8 %.off, 26, !dbg !1009
  %or = or i32 %conv, 32, !dbg !1009
  %cond = select i1 %2, i32 %or, i32 %conv, !dbg !1009
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !335), !dbg !1009
  %.off49 = add i8 %1, -65, !dbg !1010
  %3 = icmp ult i8 %.off49, 26, !dbg !1010
  %or22 = or i32 %conv2, 32, !dbg !1010
  %cond25 = select i1 %3, i32 %or22, i32 %conv2, !dbg !1010
  tail call void @llvm.dbg.value(metadata !{i32 %cond25}, i64 0, metadata !337), !dbg !1010
  %cmp26 = icmp eq i32 %cond, %cond25, !dbg !1011
  br i1 %cmp26, label %if.then, label %if.end32, !dbg !1011

if.then:                                          ; preds = %while.body
  %tobool28 = icmp eq i32 %cond, 0, !dbg !1012
  br i1 %tobool28, label %return, label %if.then29, !dbg !1012

if.then29:                                        ; preds = %if.then
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.053, i32 1), !dbg !1014
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1014
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1014
  br i1 %6, label %ioc_bb30, label %while.cond.backedge, !dbg !1014

while.cond.backedge:                              ; preds = %if.then29, %ioc_bb30
  %tobool = icmp eq i32 %5, 0, !dbg !1005
  br i1 %tobool, label %return, label %while.body, !dbg !1005

ioc_bb30:                                         ; preds = %if.then29
  %7 = zext i32 %n.addr.053 to i64, !dbg !1014
  tail call void @__ioc_report_sub_overflow(i32 534, i32 10, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind, !dbg !1014
  br label %while.cond.backedge, !dbg !1014

if.end32:                                         ; preds = %while.body
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %cond, i32 %cond25), !dbg !1016
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !1016
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !1016
  br i1 %10, label %ioc_bb33, label %cont34, !dbg !1016

ioc_bb33:                                         ; preds = %if.end32
  %11 = zext i32 %cond25 to i64, !dbg !1016
  %12 = zext i32 %cond to i64, !dbg !1016
  tail call void @__ioc_report_sub_overflow(i32 539, i32 16, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %12, i64 %11, i8 5) nounwind, !dbg !1016
  br label %cont34, !dbg !1016

cont34:                                           ; preds = %if.end32, %ioc_bb33
  %13 = icmp sgt i32 %9, -1, !dbg !1016
  br i1 %13, label %return, label %ioc_bb35, !dbg !1016

ioc_bb35:                                         ; preds = %cont34
  %14 = zext i32 %9 to i64, !dbg !1016
  tail call void @__ioc_report_conversion(i32 539, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i64 %14, i8 0) nounwind, !dbg !1016
  br label %return, !dbg !1016

return:                                           ; preds = %entry, %if.then, %while.cond.backedge, %cont34, %ioc_bb35
  %retval.0 = phi i32 [ %9, %ioc_bb35 ], [ %9, %cont34 ], [ 0, %while.cond.backedge ], [ 0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1017
}

define i8* @ngx_strnstr(i8* %s1, i8* nocapture %s2, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !343), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !344), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !345), !dbg !1018
  %incdec.ptr = getelementptr inbounds i8* %s2, i32 1, !dbg !1019
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !344), !dbg !1019
  %0 = load i8* %s2, align 1, !dbg !1019, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !348), !dbg !1019
  %call = tail call i32 @strlen(i8* %incdec.ptr) nounwind readonly, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !349), !dbg !1020
  br label %do.body1, !dbg !1021

do.body1:                                         ; preds = %do.cond17, %do.cond, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %2, %do.cond ], [ %2, %do.cond17 ]
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr4, %do.cond ], [ %incdec.ptr4, %do.cond17 ]
  %1 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0, i32 1), !dbg !1022
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !1022
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !1022
  br i1 %3, label %ioc_bb, label %cont3, !dbg !1022

ioc_bb:                                           ; preds = %do.body1
  %4 = zext i32 %len.addr.0 to i64, !dbg !1022
  tail call void @__ioc_report_sub_overflow(i32 553, i32 14, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %4, i64 1, i8 5) nounwind, !dbg !1022
  br label %cont3, !dbg !1022

cont3:                                            ; preds = %ioc_bb, %do.body1
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !345), !dbg !1022
  %cmp = icmp eq i32 %len.addr.0, 0, !dbg !1022
  br i1 %cmp, label %return, label %if.end, !dbg !1022

if.end:                                           ; preds = %cont3
  %incdec.ptr4 = getelementptr inbounds i8* %s1.addr.0, i32 1, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4}, i64 0, metadata !343), !dbg !1025
  %5 = load i8* %s1.addr.0, align 1, !dbg !1025, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !346), !dbg !1025
  %cmp5 = icmp eq i8 %5, 0, !dbg !1026
  br i1 %cmp5, label %return, label %do.cond, !dbg !1026

do.cond:                                          ; preds = %if.end
  %cmp11 = icmp eq i8 %5, %0, !dbg !1027
  br i1 %cmp11, label %do.end, label %do.body1, !dbg !1027

do.end:                                           ; preds = %do.cond
  %cmp13 = icmp ugt i32 %call, %2, !dbg !1028
  br i1 %cmp13, label %return, label %do.cond17, !dbg !1028

do.cond17:                                        ; preds = %do.end
  %call18 = tail call i32 @strncmp(i8* %incdec.ptr4, i8* %incdec.ptr, i32 %call) nounwind readonly, !dbg !1029
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1029
  br i1 %cmp19, label %return, label %do.body1, !dbg !1029

return:                                           ; preds = %do.cond17, %do.end, %if.end, %cont3
  %retval.0 = phi i8* [ null, %cont3 ], [ null, %if.end ], [ null, %do.end ], [ %s1.addr.0, %do.cond17 ]
  ret i8* %retval.0, !dbg !1030
}

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define i8* @ngx_strstrn(i8* %s1, i8* nocapture %s2, i32 %n) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !353), !dbg !1031
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !354), !dbg !1031
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !355), !dbg !1031
  %incdec.ptr = getelementptr inbounds i8* %s2, i32 1, !dbg !1032
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !354), !dbg !1032
  %0 = load i8* %s2, align 1, !dbg !1032, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !358), !dbg !1032
  %1 = load i8* %s1, align 1, !dbg !1033, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !356), !dbg !1033
  %cmp18 = icmp eq i8 %1, 0, !dbg !1036
  br i1 %cmp18, label %return, label %do.cond, !dbg !1036

do.cond:                                          ; preds = %entry, %do.body1.backedge
  %2 = phi i8 [ %3, %do.body1.backedge ], [ %1, %entry ]
  %s1.pn = phi i8* [ %incdec.ptr220, %do.body1.backedge ], [ %s1, %entry ]
  %incdec.ptr220 = getelementptr inbounds i8* %s1.pn, i32 1, !dbg !1033
  %cmp6 = icmp eq i8 %2, %0, !dbg !1037
  br i1 %cmp6, label %do.cond8, label %do.body1.backedge, !dbg !1037

do.body1.backedge:                                ; preds = %do.cond, %do.cond8
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr220}, i64 0, metadata !353), !dbg !1033
  %3 = load i8* %incdec.ptr220, align 1, !dbg !1033, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %2}, i64 0, metadata !356), !dbg !1033
  %cmp = icmp eq i8 %3, 0, !dbg !1036
  br i1 %cmp, label %return, label %do.cond, !dbg !1036

do.cond8:                                         ; preds = %do.cond
  %call = tail call i32 @strncmp(i8* %incdec.ptr220, i8* %incdec.ptr, i32 %n) nounwind readonly, !dbg !1038
  %cmp9 = icmp eq i32 %call, 0, !dbg !1038
  br i1 %cmp9, label %return, label %do.body1.backedge, !dbg !1038

return:                                           ; preds = %do.body1.backedge, %do.cond8, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %s1.pn, %do.cond8 ], [ null, %do.body1.backedge ]
  ret i8* %retval.0, !dbg !1039
}

define i8* @ngx_strcasestrn(i8* %s1, i8* nocapture %s2, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !362), !dbg !1040
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !363), !dbg !1040
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !364), !dbg !1040
  %incdec.ptr = getelementptr inbounds i8* %s2, i32 1, !dbg !1041
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !363), !dbg !1041
  %0 = load i8* %s2, align 1, !dbg !1041, !tbaa !705
  %1 = icmp sgt i8 %0, -1, !dbg !1041
  br i1 %1, label %cont, label %ioc_bb, !dbg !1041

ioc_bb:                                           ; preds = %entry
  %2 = sext i8 %0 to i64, !dbg !1041
  tail call void @__ioc_report_conversion(i32 593, i32 22, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %2, i8 1) nounwind, !dbg !1041
  br label %cont, !dbg !1041

cont:                                             ; preds = %ioc_bb, %entry
  %conv = sext i8 %0 to i32, !dbg !1041
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !367), !dbg !1041
  %.off = add i8 %0, -65, !dbg !1042
  %3 = icmp ult i8 %.off, 26, !dbg !1042
  %or = or i32 %conv, 32, !dbg !1042
  %cond = select i1 %3, i32 %or, i32 %conv, !dbg !1042
  %4 = load i8* %s1, align 1, !dbg !1043, !tbaa !705
  %cmp1556 = icmp eq i8 %4, 0, !dbg !1046
  br i1 %cmp1556, label %return, label %cont18, !dbg !1046

cont18:                                           ; preds = %cont, %do.body10.backedge
  %conv1259.in = phi i8 [ %6, %do.body10.backedge ], [ %4, %cont ]
  %s1.pn = phi i8* [ %incdec.ptr1158, %do.body10.backedge ], [ %s1, %cont ]
  %incdec.ptr1158 = getelementptr inbounds i8* %s1.pn, i32 1, !dbg !1043
  %conv1259 = zext i8 %conv1259.in to i32, !dbg !1043
  %.off53 = add i8 %conv1259.in, -65, !dbg !1047
  %5 = icmp ult i8 %.off53, 26, !dbg !1047
  %or29 = or i32 %conv1259, 32, !dbg !1047
  %cond32 = select i1 %5, i32 %or29, i32 %conv1259, !dbg !1047
  tail call void @llvm.dbg.value(metadata !{i32 %cond32}, i64 0, metadata !365), !dbg !1047
  %cmp33 = icmp eq i32 %cond32, %cond, !dbg !1048
  br i1 %cmp33, label %do.cond35, label %do.body10.backedge, !dbg !1048

do.body10.backedge:                               ; preds = %cont18, %do.cond35
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1158}, i64 0, metadata !362), !dbg !1043
  %6 = load i8* %incdec.ptr1158, align 1, !dbg !1043, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i32 %conv1259}, i64 0, metadata !365), !dbg !1043
  %cmp15 = icmp eq i8 %6, 0, !dbg !1046
  br i1 %cmp15, label %return, label %cont18, !dbg !1046

do.cond35:                                        ; preds = %cont18
  %call = tail call i32 @ngx_strncasecmp(i8* %incdec.ptr1158, i8* %incdec.ptr, i32 %n), !dbg !1049
  %cmp36 = icmp eq i32 %call, 0, !dbg !1049
  br i1 %cmp36, label %return, label %do.body10.backedge, !dbg !1049

return:                                           ; preds = %do.body10.backedge, %do.cond35, %cont
  %retval.0 = phi i8* [ null, %cont ], [ %s1.pn, %do.cond35 ], [ null, %do.body10.backedge ]
  ret i8* %retval.0, !dbg !1050
}

define i8* @ngx_strlcasestrn(i8* %s1, i8* %last, i8* nocapture %s2, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !373), !dbg !1051
  tail call void @llvm.dbg.value(metadata !{i8* %last}, i64 0, metadata !374), !dbg !1051
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !375), !dbg !1051
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !376), !dbg !1051
  %incdec.ptr = getelementptr inbounds i8* %s2, i32 1, !dbg !1052
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !375), !dbg !1052
  %0 = load i8* %s2, align 1, !dbg !1052, !tbaa !705
  %conv = zext i8 %0 to i32, !dbg !1052
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !379), !dbg !1052
  %.off = add i8 %0, -65, !dbg !1053
  %1 = icmp ult i8 %.off, 26, !dbg !1053
  %or = or i32 %conv, 32, !dbg !1053
  %cond = select i1 %1, i32 %or, i32 %conv, !dbg !1053
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !379), !dbg !1053
  %idx.neg = sub i32 0, %n, !dbg !1054
  %add.ptr = getelementptr inbounds i8* %last, i32 %idx.neg, !dbg !1054
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !374), !dbg !1054
  %cmp952 = icmp ugt i8* %add.ptr, %s1, !dbg !1055
  br i1 %cmp952, label %if.end, label %return, !dbg !1055

if.end:                                           ; preds = %entry, %do.body8.backedge
  %s1.addr.053 = phi i8* [ %incdec.ptr11, %do.body8.backedge ], [ %s1, %entry ]
  %incdec.ptr11 = getelementptr inbounds i8* %s1.addr.053, i32 1, !dbg !1058
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !373), !dbg !1058
  %2 = load i8* %s1.addr.053, align 1, !dbg !1058, !tbaa !705
  %conv12 = zext i8 %2 to i32, !dbg !1058
  tail call void @llvm.dbg.value(metadata !{i32 %conv12}, i64 0, metadata !377), !dbg !1058
  %.off51 = add i8 %2, -65, !dbg !1059
  %3 = icmp ult i8 %.off51, 26, !dbg !1059
  %or25 = or i32 %conv12, 32, !dbg !1059
  %cond28 = select i1 %3, i32 %or25, i32 %conv12, !dbg !1059
  tail call void @llvm.dbg.value(metadata !{i32 %cond28}, i64 0, metadata !377), !dbg !1059
  %cmp29 = icmp eq i32 %cond28, %cond, !dbg !1060
  br i1 %cmp29, label %do.cond31, label %do.body8.backedge, !dbg !1060

do.body8.backedge:                                ; preds = %if.end, %do.cond31
  %cmp9 = icmp ult i8* %incdec.ptr11, %add.ptr, !dbg !1055
  br i1 %cmp9, label %if.end, label %return, !dbg !1055

do.cond31:                                        ; preds = %if.end
  %call = tail call i32 @ngx_strncasecmp(i8* %incdec.ptr11, i8* %incdec.ptr, i32 %n), !dbg !1061
  %cmp32 = icmp eq i32 %call, 0, !dbg !1061
  br i1 %cmp32, label %return, label %do.body8.backedge, !dbg !1061

return:                                           ; preds = %do.body8.backedge, %do.cond31, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %s1.addr.053, %do.cond31 ], [ null, %do.body8.backedge ]
  ret i8* %retval.0, !dbg !1062
}

define i32 @ngx_rstrncmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !383), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !384), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !385), !dbg !1063
  %cmp = icmp eq i32 %n, 0, !dbg !1064
  br i1 %cmp, label %return, label %if.end, !dbg !1064

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n, i32 1), !dbg !1066
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1066
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1066
  br i1 %2, label %ioc_bb1, label %for.cond.preheader, !dbg !1066

ioc_bb1:                                          ; preds = %if.end
  %3 = zext i32 %n to i64, !dbg !1066
  tail call void @__ioc_report_sub_overflow(i32 636, i32 4, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1066
  br label %for.cond.preheader, !dbg !1066

for.cond.preheader:                               ; preds = %if.end, %ioc_bb1
  %arrayidx34 = getelementptr inbounds i8* %s1, i32 %1, !dbg !1067
  %4 = load i8* %arrayidx34, align 1, !dbg !1067, !tbaa !705
  %arrayidx335 = getelementptr inbounds i8* %s2, i32 %1, !dbg !1067
  %5 = load i8* %arrayidx335, align 1, !dbg !1067, !tbaa !705
  %cmp536 = icmp eq i8 %4, %5, !dbg !1067
  br i1 %cmp536, label %cont16, label %if.then7, !dbg !1067

if.then7:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %.lcssa32 = phi i8 [ %5, %for.cond.preheader ], [ %15, %for.cond.backedge ]
  %.lcssa = phi i8 [ %4, %for.cond.preheader ], [ %14, %for.cond.backedge ]
  %conv4 = zext i8 %.lcssa32 to i32, !dbg !1067
  %conv = zext i8 %.lcssa to i32, !dbg !1067
  %6 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 %conv4), !dbg !1070
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1070
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1070
  br i1 %8, label %ioc_bb12, label %return, !dbg !1070

ioc_bb12:                                         ; preds = %if.then7
  %9 = zext i8 %.lcssa32 to i64, !dbg !1070
  %10 = zext i8 %.lcssa to i64, !dbg !1070
  tail call void @__ioc_report_sub_overflow(i32 639, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %10, i64 %9, i8 13) nounwind, !dbg !1070
  br label %return, !dbg !1070

cont16:                                           ; preds = %for.cond.preheader, %for.cond.backedge
  %n.addr.037 = phi i32 [ %12, %for.cond.backedge ], [ %1, %for.cond.preheader ]
  %cmp17 = icmp eq i32 %n.addr.037, 0, !dbg !1072
  br i1 %cmp17, label %return, label %if.end20, !dbg !1072

if.end20:                                         ; preds = %cont16
  %11 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.037, i32 1), !dbg !1073
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1073
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1073
  br i1 %13, label %ioc_bb21, label %for.cond.backedge, !dbg !1073

for.cond.backedge:                                ; preds = %if.end20, %ioc_bb21
  %arrayidx = getelementptr inbounds i8* %s1, i32 %12, !dbg !1067
  %14 = load i8* %arrayidx, align 1, !dbg !1067, !tbaa !705
  %arrayidx3 = getelementptr inbounds i8* %s2, i32 %12, !dbg !1067
  %15 = load i8* %arrayidx3, align 1, !dbg !1067, !tbaa !705
  %cmp5 = icmp eq i8 %14, %15, !dbg !1067
  br i1 %cmp5, label %cont16, label %if.then7, !dbg !1067

ioc_bb21:                                         ; preds = %if.end20
  %16 = zext i32 %n.addr.037 to i64, !dbg !1073
  tail call void @__ioc_report_sub_overflow(i32 644, i32 6, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !1073
  br label %for.cond.backedge, !dbg !1073

return:                                           ; preds = %cont16, %ioc_bb12, %if.then7, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %7, %if.then7 ], [ %7, %ioc_bb12 ], [ 0, %cont16 ]
  ret i32 %retval.0, !dbg !1074
}

define i32 @ngx_rstrncasecmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !389), !dbg !1075
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !390), !dbg !1075
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !391), !dbg !1075
  %cmp = icmp eq i32 %n, 0, !dbg !1076
  br i1 %cmp, label %return, label %if.end, !dbg !1076

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n, i32 1), !dbg !1077
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1077
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1077
  br i1 %2, label %ioc_bb1, label %for.cond, !dbg !1077

ioc_bb1:                                          ; preds = %if.end
  %3 = zext i32 %n to i64, !dbg !1077
  tail call void @__ioc_report_sub_overflow(i32 655, i32 4, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1077
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %ioc_bb48, %if.end47, %ioc_bb1, %if.end
  %n.addr.0 = phi i32 [ %1, %if.end ], [ %1, %ioc_bb1 ], [ %22, %if.end47 ], [ %22, %ioc_bb48 ]
  %arrayidx = getelementptr inbounds i8* %s1, i32 %n.addr.0, !dbg !1078
  %4 = load i8* %arrayidx, align 1, !dbg !1078, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !392), !dbg !1078
  %.off = add i8 %4, -97, !dbg !1081
  %5 = icmp ult i8 %.off, 26, !dbg !1081
  br i1 %5, label %cont10, label %if.end15, !dbg !1081

cont10:                                           ; preds = %for.cond
  %conv = zext i8 %4 to i32, !dbg !1081
  %6 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 32), !dbg !1082
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1082
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1082
  br i1 %8, label %ioc_bb12, label %cont13, !dbg !1082

ioc_bb12:                                         ; preds = %cont10
  %9 = zext i8 %4 to i64, !dbg !1082
  tail call void @__ioc_report_sub_overflow(i32 659, i32 10, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %9, i64 32, i8 5) nounwind, !dbg !1082
  br label %cont13, !dbg !1082

cont13:                                           ; preds = %cont10, %ioc_bb12
  %conv14 = trunc i32 %7 to i8, !dbg !1082
  tail call void @llvm.dbg.value(metadata !{i8 %conv14}, i64 0, metadata !392), !dbg !1082
  br label %if.end15, !dbg !1084

if.end15:                                         ; preds = %cont13, %for.cond
  %c1.0 = phi i8 [ %conv14, %cont13 ], [ %4, %for.cond ]
  %arrayidx16 = getelementptr inbounds i8* %s2, i32 %n.addr.0, !dbg !1085
  %10 = load i8* %arrayidx16, align 1, !dbg !1085, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %10}, i64 0, metadata !394), !dbg !1085
  %.off64 = add i8 %10, -97, !dbg !1086
  %11 = icmp ult i8 %.off64, 26, !dbg !1086
  br i1 %11, label %cont26, label %if.end31, !dbg !1086

cont26:                                           ; preds = %if.end15
  %conv17 = zext i8 %10 to i32, !dbg !1086
  %12 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv17, i32 32), !dbg !1087
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !1087
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !1087
  br i1 %14, label %ioc_bb28, label %cont29, !dbg !1087

ioc_bb28:                                         ; preds = %cont26
  %15 = zext i8 %10 to i64, !dbg !1087
  tail call void @__ioc_report_sub_overflow(i32 663, i32 10, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %15, i64 32, i8 5) nounwind, !dbg !1087
  br label %cont29, !dbg !1087

cont29:                                           ; preds = %cont26, %ioc_bb28
  %conv30 = trunc i32 %13 to i8, !dbg !1087
  tail call void @llvm.dbg.value(metadata !{i8 %conv30}, i64 0, metadata !394), !dbg !1087
  br label %if.end31, !dbg !1089

if.end31:                                         ; preds = %cont29, %if.end15
  %c2.0 = phi i8 [ %conv30, %cont29 ], [ %10, %if.end15 ]
  %cmp34 = icmp eq i8 %c1.0, %c2.0, !dbg !1090
  br i1 %cmp34, label %cont43, label %if.then36, !dbg !1090

if.then36:                                        ; preds = %if.end31
  %conv33 = zext i8 %c2.0 to i32, !dbg !1090
  %conv32 = zext i8 %c1.0 to i32, !dbg !1090
  %16 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv32, i32 %conv33), !dbg !1091
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !1091
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !1091
  br i1 %18, label %ioc_bb39, label %return, !dbg !1091

ioc_bb39:                                         ; preds = %if.then36
  %19 = zext i8 %c2.0 to i64, !dbg !1091
  %20 = zext i8 %c1.0 to i64, !dbg !1091
  tail call void @__ioc_report_sub_overflow(i32 666, i32 17, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %20, i64 %19, i8 13) nounwind, !dbg !1091
  br label %return, !dbg !1091

cont43:                                           ; preds = %if.end31
  %cmp44 = icmp eq i32 %n.addr.0, 0, !dbg !1093
  br i1 %cmp44, label %return, label %if.end47, !dbg !1093

if.end47:                                         ; preds = %cont43
  %21 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1094
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1094
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !1094
  br i1 %23, label %ioc_bb48, label %for.cond, !dbg !1094

ioc_bb48:                                         ; preds = %if.end47
  %24 = zext i32 %n.addr.0 to i64, !dbg !1094
  tail call void @__ioc_report_sub_overflow(i32 671, i32 6, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !1094
  br label %for.cond, !dbg !1094

return:                                           ; preds = %cont43, %ioc_bb39, %if.then36, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %17, %if.then36 ], [ %17, %ioc_bb39 ], [ 0, %cont43 ]
  ret i32 %retval.0, !dbg !1095
}

define i32 @ngx_memn2cmp(i8* nocapture %s1, i8* nocapture %s2, i32 %n1, i32 %n2) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !400), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !401), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %n1}, i64 0, metadata !402), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32 %n2}, i64 0, metadata !403), !dbg !1096
  %cmp = icmp ugt i32 %n1, %n2, !dbg !1097
  tail call void @llvm.dbg.value(metadata !{i32 %n2}, i64 0, metadata !404), !dbg !1098
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !407), !dbg !1100
  %n.0 = select i1 %cmp, i32 %n2, i32 %n1, !dbg !1097
  %z.0 = select i1 %cmp, i32 1, i32 -1, !dbg !1097
  %call = tail call i32 @memcmp(i8* %s1, i8* %s2, i32 %n.0) nounwind readonly, !dbg !1101
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !406), !dbg !1101
  %tobool = icmp ne i32 %call, 0, !dbg !1102
  %cmp1 = icmp eq i32 %n1, %n2, !dbg !1102
  %or.cond = or i1 %tobool, %cmp1, !dbg !1102
  %retval.0 = select i1 %or.cond, i32 %call, i32 %z.0, !dbg !1102
  ret i32 %retval.0, !dbg !1103
}

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define i32 @ngx_dns_strcmp(i8* nocapture %s1, i8* nocapture %s2) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !411), !dbg !1104
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !412), !dbg !1104
  br label %for.cond, !dbg !1105

for.cond:                                         ; preds = %if.then, %entry
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %if.then ]
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr1, %if.then ]
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !411), !dbg !1107
  %0 = load i8* %s1.addr.0, align 1, !dbg !1107, !tbaa !705
  %conv = zext i8 %0 to i32, !dbg !1107
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !413), !dbg !1107
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr1}, i64 0, metadata !412), !dbg !1109
  %1 = load i8* %s2.addr.0, align 1, !dbg !1109, !tbaa !705
  %conv2 = zext i8 %1 to i32, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !415), !dbg !1109
  %.off = add i8 %0, -65, !dbg !1110
  %2 = icmp ult i8 %.off, 26, !dbg !1110
  %or = or i32 %conv, 32, !dbg !1110
  %cond = select i1 %2, i32 %or, i32 %conv, !dbg !1110
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !413), !dbg !1110
  %.off69 = add i8 %1, -65, !dbg !1111
  %3 = icmp ult i8 %.off69, 26, !dbg !1111
  %or22 = or i32 %conv2, 32, !dbg !1111
  %cond25 = select i1 %3, i32 %or22, i32 %conv2, !dbg !1111
  tail call void @llvm.dbg.value(metadata !{i32 %cond25}, i64 0, metadata !415), !dbg !1111
  %cmp26 = icmp eq i32 %cond, %cond25, !dbg !1112
  br i1 %cmp26, label %if.then, label %cont31, !dbg !1112

if.then:                                          ; preds = %for.cond
  %incdec.ptr1 = getelementptr inbounds i8* %s2.addr.0, i32 1, !dbg !1109
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.0, i32 1, !dbg !1107
  %tobool = icmp eq i32 %cond, 0, !dbg !1113
  br i1 %tobool, label %return, label %for.cond, !dbg !1113

cont31:                                           ; preds = %for.cond
  %cmp32 = icmp eq i32 %cond, 46, !dbg !1115
  %.cond = select i1 %cmp32, i32 32, i32 %cond, !dbg !1115
  tail call void @llvm.dbg.value(metadata !{i32 %.cond}, i64 0, metadata !413), !dbg !1115
  %cmp42 = icmp eq i32 %cond25, 46, !dbg !1116
  %cond49 = select i1 %cmp42, i32 32, i32 %cond25, !dbg !1116
  tail call void @llvm.dbg.value(metadata !{i32 %cond49}, i64 0, metadata !415), !dbg !1116
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.cond, i32 %cond49), !dbg !1117
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1117
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1117
  br i1 %6, label %ioc_bb50, label %cont51, !dbg !1117

ioc_bb50:                                         ; preds = %cont31
  %7 = zext i32 %cond49 to i64, !dbg !1117
  %8 = zext i32 %.cond to i64, !dbg !1117
  tail call void @__ioc_report_sub_overflow(i32 713, i32 16, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %8, i64 %7, i8 5) nounwind, !dbg !1117
  br label %cont51, !dbg !1117

cont51:                                           ; preds = %cont31, %ioc_bb50
  %9 = icmp sgt i32 %5, -1, !dbg !1117
  br i1 %9, label %return, label %ioc_bb52, !dbg !1117

ioc_bb52:                                         ; preds = %cont51
  %10 = zext i32 %5 to i64, !dbg !1117
  tail call void @__ioc_report_conversion(i32 713, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i64 %10, i8 0) nounwind, !dbg !1117
  br label %return, !dbg !1117

return:                                           ; preds = %if.then, %cont51, %ioc_bb52
  %retval.0 = phi i32 [ %5, %ioc_bb52 ], [ %5, %cont51 ], [ 0, %if.then ]
  ret i32 %retval.0, !dbg !1118
}

define i32 @ngx_atoi(i8* nocapture %line, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !421), !dbg !1119
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !422), !dbg !1119
  %cmp = icmp eq i32 %n, 0, !dbg !1120
  br i1 %cmp, label %return, label %for.cond, !dbg !1120

for.cond:                                         ; preds = %entry, %cont20
  %line.addr.0 = phi i8* [ %incdec.ptr, %cont20 ], [ %line, %entry ]
  %n.addr.0 = phi i32 [ %1, %cont20 ], [ %n, %entry ]
  %value.0 = phi i32 [ %16, %cont20 ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1121
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1121
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1121
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !1121

ioc_bb3:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1121
  tail call void @__ioc_report_sub_overflow(i32 723, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1121
  br label %cont4, !dbg !1121

cont4:                                            ; preds = %for.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !422), !dbg !1121
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1121
  br i1 %tobool, label %for.end, label %for.body, !dbg !1121

for.body:                                         ; preds = %cont4
  %4 = load i8* %line.addr.0, align 1, !dbg !1123, !tbaa !705
  %.off = add i8 %4, -48, !dbg !1123
  %5 = icmp ugt i8 %.off, 9, !dbg !1123
  br i1 %5, label %return, label %if.end13, !dbg !1123

if.end13:                                         ; preds = %for.body
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 10), !dbg !1125
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1125
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1125
  br i1 %8, label %ioc_bb14, label %cont15, !dbg !1125

ioc_bb14:                                         ; preds = %if.end13
  %9 = sext i32 %value.0 to i64, !dbg !1125
  tail call void @__ioc_report_mul_overflow(i32 727, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 10, i8 13) nounwind, !dbg !1125
  %.pre = load i8* %line.addr.0, align 1, !dbg !1125, !tbaa !705
  br label %cont15, !dbg !1125

cont15:                                           ; preds = %if.end13, %ioc_bb14
  %10 = phi i8 [ %4, %if.end13 ], [ %.pre, %ioc_bb14 ]
  %conv16 = zext i8 %10 to i32, !dbg !1125
  %11 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv16, i32 48), !dbg !1125
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1125
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1125
  br i1 %13, label %ioc_bb17, label %cont18, !dbg !1125

ioc_bb17:                                         ; preds = %cont15
  %14 = zext i8 %10 to i64, !dbg !1125
  tail call void @__ioc_report_sub_overflow(i32 727, i32 36, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %14, i64 48, i8 13) nounwind, !dbg !1125
  br label %cont18, !dbg !1125

cont18:                                           ; preds = %cont15, %ioc_bb17
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %12), !dbg !1125
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1125
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1125
  br i1 %17, label %ioc_bb19, label %cont20, !dbg !1125

ioc_bb19:                                         ; preds = %cont18
  %18 = sext i32 %12 to i64, !dbg !1125
  %19 = sext i32 %7 to i64, !dbg !1125
  tail call void @__ioc_report_add_overflow(i32 727, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind, !dbg !1125
  br label %cont20, !dbg !1125

cont20:                                           ; preds = %cont18, %ioc_bb19
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !423), !dbg !1125
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1121
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !421), !dbg !1121
  br label %for.cond, !dbg !1121

for.end:                                          ; preds = %cont4
  %cmp21 = icmp sgt i32 %value.0, -1, !dbg !1126
  %.value.0 = select i1 %cmp21, i32 %value.0, i32 -1, !dbg !1126
  ret i32 %.value.0, !dbg !1126

return:                                           ; preds = %for.body, %entry
  ret i32 -1, !dbg !1127
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

define i32 @ngx_atofp(i8* nocapture %line, i32 %n, i32 %point) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !430), !dbg !1128
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !431), !dbg !1128
  tail call void @llvm.dbg.value(metadata !{i32 %point}, i64 0, metadata !432), !dbg !1128
  %cmp = icmp eq i32 %n, 0, !dbg !1129
  br i1 %cmp, label %return, label %for.cond, !dbg !1129

for.cond:                                         ; preds = %entry, %for.inc
  %line.addr.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %line, %entry ]
  %n.addr.0 = phi i32 [ %1, %for.inc ], [ %n, %entry ]
  %point.addr.0 = phi i32 [ %point.addr.1, %for.inc ], [ %point, %entry ]
  %value.0 = phi i32 [ %value.1, %for.inc ], [ 0, %entry ]
  %dot.0 = phi i32 [ %dot.1, %for.inc ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1130
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1130
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1130
  br i1 %2, label %ioc_bb5, label %cont6, !dbg !1130

ioc_bb5:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1130
  tail call void @__ioc_report_sub_overflow(i32 746, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1130
  br label %cont6, !dbg !1130

cont6:                                            ; preds = %for.cond, %ioc_bb5
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !431), !dbg !1130
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1130
  br i1 %tobool, label %while.cond, label %cont8, !dbg !1130

cont8:                                            ; preds = %cont6
  %cmp9 = icmp eq i32 %point.addr.0, 0, !dbg !1132
  br i1 %cmp9, label %return, label %if.end13, !dbg !1132

if.end13:                                         ; preds = %cont8
  %4 = load i8* %line.addr.0, align 1, !dbg !1134, !tbaa !705
  %cmp14 = icmp eq i8 %4, 46, !dbg !1134
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !1134

if.then16:                                        ; preds = %if.end13
  %tobool17 = icmp eq i32 %dot.0, 0, !dbg !1135
  br i1 %tobool17, label %for.inc, label %return, !dbg !1135

if.end24:                                         ; preds = %if.end13
  %.off = add i8 %4, -48, !dbg !1137
  %5 = icmp ugt i8 %.off, 9, !dbg !1137
  br i1 %5, label %return, label %if.end34, !dbg !1137

if.end34:                                         ; preds = %if.end24
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 10), !dbg !1138
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1138
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1138
  br i1 %8, label %ioc_bb35, label %cont36, !dbg !1138

ioc_bb35:                                         ; preds = %if.end34
  %9 = sext i32 %value.0 to i64, !dbg !1138
  tail call void @__ioc_report_mul_overflow(i32 760, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 10, i8 13) nounwind, !dbg !1138
  %.pre = load i8* %line.addr.0, align 1, !dbg !1138, !tbaa !705
  br label %cont36, !dbg !1138

cont36:                                           ; preds = %if.end34, %ioc_bb35
  %10 = phi i8 [ %4, %if.end34 ], [ %.pre, %ioc_bb35 ]
  %conv37 = zext i8 %10 to i32, !dbg !1138
  %11 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv37, i32 48), !dbg !1138
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1138
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1138
  br i1 %13, label %ioc_bb38, label %cont39, !dbg !1138

ioc_bb38:                                         ; preds = %cont36
  %14 = zext i8 %10 to i64, !dbg !1138
  tail call void @__ioc_report_sub_overflow(i32 760, i32 36, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %14, i64 48, i8 13) nounwind, !dbg !1138
  br label %cont39, !dbg !1138

cont39:                                           ; preds = %cont36, %ioc_bb38
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %12), !dbg !1138
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1138
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1138
  br i1 %17, label %ioc_bb40, label %cont41, !dbg !1138

ioc_bb40:                                         ; preds = %cont39
  %18 = sext i32 %12 to i64, !dbg !1138
  %19 = sext i32 %7 to i64, !dbg !1138
  tail call void @__ioc_report_add_overflow(i32 760, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind, !dbg !1138
  br label %cont41, !dbg !1138

cont41:                                           ; preds = %cont39, %ioc_bb40
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !433), !dbg !1138
  %20 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %point.addr.0, i32 %dot.0), !dbg !1139
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1139
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1139
  br i1 %22, label %ioc_bb42, label %for.inc, !dbg !1139

ioc_bb42:                                         ; preds = %cont41
  %23 = zext i32 %dot.0 to i64, !dbg !1139
  %24 = zext i32 %point.addr.0 to i64, !dbg !1139
  tail call void @__ioc_report_sub_overflow(i32 761, i32 11, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %24, i64 %23, i8 5) nounwind, !dbg !1139
  br label %for.inc, !dbg !1139

for.inc:                                          ; preds = %ioc_bb42, %cont41, %if.then16
  %point.addr.1 = phi i32 [ %point.addr.0, %if.then16 ], [ %21, %cont41 ], [ %21, %ioc_bb42 ]
  %value.1 = phi i32 [ %value.0, %if.then16 ], [ %16, %cont41 ], [ %16, %ioc_bb42 ]
  %dot.1 = phi i32 [ 1, %if.then16 ], [ %dot.0, %cont41 ], [ %dot.0, %ioc_bb42 ]
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1130
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !430), !dbg !1130
  br label %for.cond, !dbg !1130

while.cond:                                       ; preds = %ioc_bb47, %while.body, %cont6
  %point.addr.2 = phi i32 [ %point.addr.0, %cont6 ], [ %26, %while.body ], [ %26, %ioc_bb47 ]
  %value.2 = phi i32 [ %value.0, %cont6 ], [ %30, %while.body ], [ %30, %ioc_bb47 ]
  %25 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %point.addr.2, i32 1), !dbg !1140
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1140
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !1140
  br i1 %27, label %ioc_bb44, label %cont45, !dbg !1140

ioc_bb44:                                         ; preds = %while.cond
  %28 = zext i32 %point.addr.2 to i64, !dbg !1140
  tail call void @__ioc_report_sub_overflow(i32 763, i32 14, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %28, i64 1, i8 5) nounwind, !dbg !1140
  br label %cont45, !dbg !1140

cont45:                                           ; preds = %while.cond, %ioc_bb44
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !432), !dbg !1140
  %tobool46 = icmp eq i32 %point.addr.2, 0, !dbg !1140
  br i1 %tobool46, label %while.end, label %while.body, !dbg !1140

while.body:                                       ; preds = %cont45
  %29 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.2, i32 10), !dbg !1141
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !1141
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !1141
  br i1 %31, label %ioc_bb47, label %while.cond, !dbg !1141

ioc_bb47:                                         ; preds = %while.body
  %32 = sext i32 %value.2 to i64, !dbg !1141
  tail call void @__ioc_report_mul_overflow(i32 764, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %32, i64 10, i8 13) nounwind, !dbg !1141
  br label %while.cond, !dbg !1141

while.end:                                        ; preds = %cont45
  %cmp49 = icmp sgt i32 %value.2, -1, !dbg !1143
  %.value.2 = select i1 %cmp49, i32 %value.2, i32 -1, !dbg !1143
  ret i32 %.value.2, !dbg !1143

return:                                           ; preds = %if.end24, %if.then16, %cont8, %entry
  ret i32 -1, !dbg !1144
}

define i32 @ngx_atosz(i8* nocapture %line, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !443), !dbg !1145
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !444), !dbg !1145
  %cmp = icmp eq i32 %n, 0, !dbg !1146
  br i1 %cmp, label %return, label %for.cond, !dbg !1146

for.cond:                                         ; preds = %entry, %cont20
  %line.addr.0 = phi i8* [ %incdec.ptr, %cont20 ], [ %line, %entry ]
  %n.addr.0 = phi i32 [ %1, %cont20 ], [ %n, %entry ]
  %value.0 = phi i32 [ %16, %cont20 ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1147
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1147
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1147
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !1147

ioc_bb3:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1147
  tail call void @__ioc_report_sub_overflow(i32 780, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1147
  br label %cont4, !dbg !1147

cont4:                                            ; preds = %for.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !444), !dbg !1147
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1147
  br i1 %tobool, label %for.end, label %for.body, !dbg !1147

for.body:                                         ; preds = %cont4
  %4 = load i8* %line.addr.0, align 1, !dbg !1149, !tbaa !705
  %.off = add i8 %4, -48, !dbg !1149
  %5 = icmp ugt i8 %.off, 9, !dbg !1149
  br i1 %5, label %return, label %if.end13, !dbg !1149

if.end13:                                         ; preds = %for.body
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 10), !dbg !1151
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1151
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1151
  br i1 %8, label %ioc_bb14, label %cont15, !dbg !1151

ioc_bb14:                                         ; preds = %if.end13
  %9 = sext i32 %value.0 to i64, !dbg !1151
  tail call void @__ioc_report_mul_overflow(i32 784, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 10, i8 13) nounwind, !dbg !1151
  %.pre = load i8* %line.addr.0, align 1, !dbg !1151, !tbaa !705
  br label %cont15, !dbg !1151

cont15:                                           ; preds = %if.end13, %ioc_bb14
  %10 = phi i8 [ %4, %if.end13 ], [ %.pre, %ioc_bb14 ]
  %conv16 = zext i8 %10 to i32, !dbg !1151
  %11 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv16, i32 48), !dbg !1151
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1151
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1151
  br i1 %13, label %ioc_bb17, label %cont18, !dbg !1151

ioc_bb17:                                         ; preds = %cont15
  %14 = zext i8 %10 to i64, !dbg !1151
  tail call void @__ioc_report_sub_overflow(i32 784, i32 36, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %14, i64 48, i8 13) nounwind, !dbg !1151
  br label %cont18, !dbg !1151

cont18:                                           ; preds = %cont15, %ioc_bb17
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %12), !dbg !1151
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1151
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1151
  br i1 %17, label %ioc_bb19, label %cont20, !dbg !1151

ioc_bb19:                                         ; preds = %cont18
  %18 = sext i32 %12 to i64, !dbg !1151
  %19 = sext i32 %7 to i64, !dbg !1151
  tail call void @__ioc_report_add_overflow(i32 784, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind, !dbg !1151
  br label %cont20, !dbg !1151

cont20:                                           ; preds = %cont18, %ioc_bb19
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !445), !dbg !1151
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1147
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !443), !dbg !1147
  br label %for.cond, !dbg !1147

for.end:                                          ; preds = %cont4
  %cmp21 = icmp sgt i32 %value.0, -1, !dbg !1152
  %.value.0 = select i1 %cmp21, i32 %value.0, i32 -1, !dbg !1152
  ret i32 %.value.0, !dbg !1152

return:                                           ; preds = %for.body, %entry
  ret i32 -1, !dbg !1153
}

define i64 @ngx_atoof(i8* nocapture %line, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !452), !dbg !1154
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !453), !dbg !1154
  %cmp = icmp eq i32 %n, 0, !dbg !1155
  br i1 %cmp, label %return, label %for.cond, !dbg !1155

for.cond:                                         ; preds = %entry, %cont23
  %line.addr.0 = phi i8* [ %incdec.ptr, %cont23 ], [ %line, %entry ]
  %n.addr.0 = phi i32 [ %1, %cont23 ], [ %n, %entry ]
  %value.0 = phi i64 [ %15, %cont23 ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1156
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1156
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1156
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !1156

ioc_bb3:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1156
  tail call void @__ioc_report_sub_overflow(i32 800, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1156
  br label %cont4, !dbg !1156

cont4:                                            ; preds = %for.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !453), !dbg !1156
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1156
  br i1 %tobool, label %for.end, label %for.body, !dbg !1156

for.body:                                         ; preds = %cont4
  %4 = load i8* %line.addr.0, align 1, !dbg !1158, !tbaa !705
  %.off = add i8 %4, -48, !dbg !1158
  %5 = icmp ugt i8 %.off, 9, !dbg !1158
  br i1 %5, label %return, label %if.end15, !dbg !1158

if.end15:                                         ; preds = %for.body
  %6 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %value.0, i64 10), !dbg !1160
  %7 = extractvalue { i64, i1 } %6, 0, !dbg !1160
  %8 = extractvalue { i64, i1 } %6, 1, !dbg !1160
  br i1 %8, label %ioc_bb16, label %cont17, !dbg !1160

ioc_bb16:                                         ; preds = %if.end15
  tail call void @__ioc_report_mul_overflow(i32 804, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %value.0, i64 10, i8 14) nounwind, !dbg !1160
  %.pre = load i8* %line.addr.0, align 1, !dbg !1160, !tbaa !705
  br label %cont17, !dbg !1160

cont17:                                           ; preds = %if.end15, %ioc_bb16
  %9 = phi i8 [ %4, %if.end15 ], [ %.pre, %ioc_bb16 ]
  %conv18 = zext i8 %9 to i32, !dbg !1160
  %10 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv18, i32 48), !dbg !1160
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1160
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1160
  br i1 %12, label %ioc_bb19, label %cont20, !dbg !1160

ioc_bb19:                                         ; preds = %cont17
  %13 = zext i8 %9 to i64, !dbg !1160
  tail call void @__ioc_report_sub_overflow(i32 804, i32 36, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %13, i64 48, i8 13) nounwind, !dbg !1160
  br label %cont20, !dbg !1160

cont20:                                           ; preds = %cont17, %ioc_bb19
  %conv21 = sext i32 %11 to i64, !dbg !1160
  %14 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 %conv21), !dbg !1160
  %15 = extractvalue { i64, i1 } %14, 0, !dbg !1160
  %16 = extractvalue { i64, i1 } %14, 1, !dbg !1160
  br i1 %16, label %ioc_bb22, label %cont23, !dbg !1160

ioc_bb22:                                         ; preds = %cont20
  tail call void @__ioc_report_add_overflow(i32 804, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %7, i64 %conv21, i8 14) nounwind, !dbg !1160
  br label %cont23, !dbg !1160

cont23:                                           ; preds = %cont20, %ioc_bb22
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !454), !dbg !1160
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1156
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !452), !dbg !1156
  br label %for.cond, !dbg !1156

for.end:                                          ; preds = %cont4
  %cmp24 = icmp sgt i64 %value.0, -1, !dbg !1161
  %.value.0 = select i1 %cmp24, i64 %value.0, i64 -1, !dbg !1161
  ret i64 %.value.0, !dbg !1161

return:                                           ; preds = %for.body, %entry
  ret i64 -1, !dbg !1162
}

declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

define i32 @ngx_atotm(i8* nocapture %line, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !462), !dbg !1163
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !463), !dbg !1163
  %cmp = icmp eq i32 %n, 0, !dbg !1164
  br i1 %cmp, label %return, label %for.cond, !dbg !1164

for.cond:                                         ; preds = %entry, %cont20
  %line.addr.0 = phi i8* [ %incdec.ptr, %cont20 ], [ %line, %entry ]
  %n.addr.0 = phi i32 [ %1, %cont20 ], [ %n, %entry ]
  %value.0 = phi i32 [ %16, %cont20 ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1165
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1165
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1165
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !1165

ioc_bb3:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1165
  tail call void @__ioc_report_sub_overflow(i32 820, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1165
  br label %cont4, !dbg !1165

cont4:                                            ; preds = %for.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !463), !dbg !1165
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1165
  br i1 %tobool, label %for.end, label %for.body, !dbg !1165

for.body:                                         ; preds = %cont4
  %4 = load i8* %line.addr.0, align 1, !dbg !1167, !tbaa !705
  %.off = add i8 %4, -48, !dbg !1167
  %5 = icmp ugt i8 %.off, 9, !dbg !1167
  br i1 %5, label %return, label %if.end13, !dbg !1167

if.end13:                                         ; preds = %for.body
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 10), !dbg !1169
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1169
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1169
  br i1 %8, label %ioc_bb14, label %cont15, !dbg !1169

ioc_bb14:                                         ; preds = %if.end13
  %9 = sext i32 %value.0 to i64, !dbg !1169
  tail call void @__ioc_report_mul_overflow(i32 824, i32 19, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 10, i8 13) nounwind, !dbg !1169
  %.pre = load i8* %line.addr.0, align 1, !dbg !1169, !tbaa !705
  br label %cont15, !dbg !1169

cont15:                                           ; preds = %if.end13, %ioc_bb14
  %10 = phi i8 [ %4, %if.end13 ], [ %.pre, %ioc_bb14 ]
  %conv16 = zext i8 %10 to i32, !dbg !1169
  %11 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv16, i32 48), !dbg !1169
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1169
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1169
  br i1 %13, label %ioc_bb17, label %cont18, !dbg !1169

ioc_bb17:                                         ; preds = %cont15
  %14 = zext i8 %10 to i64, !dbg !1169
  tail call void @__ioc_report_sub_overflow(i32 824, i32 36, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %14, i64 48, i8 13) nounwind, !dbg !1169
  br label %cont18, !dbg !1169

cont18:                                           ; preds = %cont15, %ioc_bb17
  %15 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %12), !dbg !1169
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1169
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1169
  br i1 %17, label %ioc_bb19, label %cont20, !dbg !1169

ioc_bb19:                                         ; preds = %cont18
  %18 = sext i32 %12 to i64, !dbg !1169
  %19 = sext i32 %7 to i64, !dbg !1169
  tail call void @__ioc_report_add_overflow(i32 824, i32 24, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %19, i64 %18, i8 13) nounwind, !dbg !1169
  br label %cont20, !dbg !1169

cont20:                                           ; preds = %cont18, %ioc_bb19
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !464), !dbg !1169
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1165
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !462), !dbg !1165
  br label %for.cond, !dbg !1165

for.end:                                          ; preds = %cont4
  %cmp21 = icmp sgt i32 %value.0, -1, !dbg !1170
  %.value.0 = select i1 %cmp21, i32 %value.0, i32 -1, !dbg !1170
  ret i32 %.value.0, !dbg !1170

return:                                           ; preds = %for.body, %entry
  ret i32 -1, !dbg !1171
}

define i32 @ngx_hextoi(i8* nocapture %line, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !469), !dbg !1172
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !470), !dbg !1172
  %cmp = icmp eq i32 %n, 0, !dbg !1173
  br i1 %cmp, label %return, label %for.cond, !dbg !1173

for.cond:                                         ; preds = %entry, %for.inc
  %n.addr.0 = phi i32 [ %1, %for.inc ], [ %n, %entry ]
  %line.addr.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %line, %entry ]
  %value.0 = phi i32 [ %value.1, %for.inc ], [ 0, %entry ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1174
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1174
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1174
  br i1 %2, label %ioc_bb3, label %cont4, !dbg !1174

ioc_bb3:                                          ; preds = %for.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1174
  tail call void @__ioc_report_sub_overflow(i32 842, i32 20, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1174
  br label %cont4, !dbg !1174

cont4:                                            ; preds = %for.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !470), !dbg !1174
  %tobool = icmp eq i32 %n.addr.0, 0, !dbg !1174
  br i1 %tobool, label %for.end, label %for.body, !dbg !1174

for.body:                                         ; preds = %cont4
  %4 = load i8* %line.addr.0, align 1, !dbg !1176, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !473), !dbg !1176
  %conv = zext i8 %4 to i32, !dbg !1178
  %.off = add i8 %4, -48, !dbg !1178
  %5 = icmp ult i8 %.off, 10, !dbg !1178
  br i1 %5, label %if.then10, label %if.end18, !dbg !1178

if.then10:                                        ; preds = %for.body
  %6 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 16), !dbg !1179
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1179
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1179
  br i1 %8, label %ioc_bb11, label %cont12, !dbg !1179

ioc_bb11:                                         ; preds = %if.then10
  %9 = sext i32 %value.0 to i64, !dbg !1179
  tail call void @__ioc_report_mul_overflow(i32 845, i32 21, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %9, i64 16, i8 13) nounwind, !dbg !1179
  br label %cont12, !dbg !1179

cont12:                                           ; preds = %if.then10, %ioc_bb11
  %10 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 48), !dbg !1179
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1179
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1179
  br i1 %12, label %ioc_bb14, label %cont15, !dbg !1179

ioc_bb14:                                         ; preds = %cont12
  %13 = zext i8 %4 to i64, !dbg !1179
  tail call void @__ioc_report_sub_overflow(i32 845, i32 32, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %13, i64 48, i8 13) nounwind, !dbg !1179
  br label %cont15, !dbg !1179

cont15:                                           ; preds = %cont12, %ioc_bb14
  %14 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %7, i32 %11), !dbg !1179
  %15 = extractvalue { i32, i1 } %14, 0, !dbg !1179
  %16 = extractvalue { i32, i1 } %14, 1, !dbg !1179
  br i1 %16, label %ioc_bb16, label %for.inc, !dbg !1179

ioc_bb16:                                         ; preds = %cont15
  %17 = sext i32 %11 to i64, !dbg !1179
  %18 = sext i32 %7 to i64, !dbg !1179
  tail call void @__ioc_report_add_overflow(i32 845, i32 26, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %18, i64 %17, i8 13) nounwind, !dbg !1179
  br label %for.inc, !dbg !1179

if.end18:                                         ; preds = %for.body
  %or = or i32 %conv, 32, !dbg !1181
  %or.off = add i32 %or, -97, !dbg !1182
  %19 = icmp ult i32 %or.off, 6, !dbg !1182
  br i1 %19, label %if.then30, label %return, !dbg !1182

if.then30:                                        ; preds = %if.end18
  %20 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %value.0, i32 16), !dbg !1183
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1183
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1183
  br i1 %22, label %ioc_bb31, label %cont32, !dbg !1183

ioc_bb31:                                         ; preds = %if.then30
  %23 = sext i32 %value.0 to i64, !dbg !1183
  tail call void @__ioc_report_mul_overflow(i32 850, i32 21, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %23, i64 16, i8 13) nounwind, !dbg !1183
  br label %cont32, !dbg !1183

cont32:                                           ; preds = %if.then30, %ioc_bb31
  %24 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %or, i32 97), !dbg !1183
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !1183
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !1183
  br i1 %26, label %ioc_bb34, label %cont35, !dbg !1183

ioc_bb34:                                         ; preds = %cont32
  %27 = zext i32 %or to i64, !dbg !1183
  tail call void @__ioc_report_sub_overflow(i32 850, i32 31, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %27, i64 97, i8 13) nounwind, !dbg !1183
  br label %cont35, !dbg !1183

cont35:                                           ; preds = %cont32, %ioc_bb34
  %28 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 10), !dbg !1183
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !1183
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !1183
  br i1 %30, label %ioc_bb36, label %cont37, !dbg !1183

ioc_bb36:                                         ; preds = %cont35
  %31 = sext i32 %25 to i64, !dbg !1183
  tail call void @__ioc_report_add_overflow(i32 850, i32 37, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %31, i64 10, i8 13) nounwind, !dbg !1183
  br label %cont37, !dbg !1183

cont37:                                           ; preds = %cont35, %ioc_bb36
  %32 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 %29), !dbg !1183
  %33 = extractvalue { i32, i1 } %32, 0, !dbg !1183
  %34 = extractvalue { i32, i1 } %32, 1, !dbg !1183
  br i1 %34, label %ioc_bb38, label %for.inc, !dbg !1183

ioc_bb38:                                         ; preds = %cont37
  %35 = sext i32 %29 to i64, !dbg !1183
  %36 = sext i32 %21 to i64, !dbg !1183
  tail call void @__ioc_report_add_overflow(i32 850, i32 26, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %36, i64 %35, i8 13) nounwind, !dbg !1183
  br label %for.inc, !dbg !1183

for.inc:                                          ; preds = %ioc_bb38, %cont37, %ioc_bb16, %cont15
  %value.1 = phi i32 [ %15, %cont15 ], [ %15, %ioc_bb16 ], [ %33, %cont37 ], [ %33, %ioc_bb38 ]
  %incdec.ptr = getelementptr inbounds i8* %line.addr.0, i32 1, !dbg !1174
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !469), !dbg !1174
  br label %for.cond, !dbg !1174

for.end:                                          ; preds = %cont4
  %cmp43 = icmp sgt i32 %value.0, -1, !dbg !1185
  %.value.0 = select i1 %cmp43, i32 %value.0, i32 -1, !dbg !1185
  ret i32 %.value.0, !dbg !1185

return:                                           ; preds = %if.end18, %entry
  ret i32 -1, !dbg !1186
}

define i8* @ngx_hex_dump(i8* %dst, i8* nocapture %src, i32 %len) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !478), !dbg !1187
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !479), !dbg !1187
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !480), !dbg !1187
  br label %while.cond, !dbg !1188

while.cond:                                       ; preds = %cont2, %entry
  %dst.addr.0 = phi i8* [ %dst, %entry ], [ %incdec.ptr6, %cont2 ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr3, %cont2 ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %1, %cont2 ]
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0, i32 1), !dbg !1188
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1188
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1188
  br i1 %2, label %ioc_bb, label %cont, !dbg !1188

ioc_bb:                                           ; preds = %while.cond
  %3 = zext i32 %len.addr.0 to i64, !dbg !1188
  tail call void @__ioc_report_sub_overflow(i32 866, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1188
  br label %cont, !dbg !1188

cont:                                             ; preds = %while.cond, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !480), !dbg !1188
  %tobool = icmp eq i32 %len.addr.0, 0, !dbg !1188
  br i1 %tobool, label %while.end, label %cont2, !dbg !1188

cont2:                                            ; preds = %cont
  %4 = load i8* %src.addr.0, align 1, !dbg !1190, !tbaa !705
  %conv = zext i8 %4 to i32, !dbg !1190
  %shr10 = lshr i32 %conv, 4, !dbg !1190
  %arrayidx = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.hex, i32 0, i32 %shr10, !dbg !1190
  %5 = load i8* %arrayidx, align 1, !dbg !1190, !tbaa !705
  %incdec.ptr = getelementptr inbounds i8* %dst.addr.0, i32 1, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !478), !dbg !1190
  store i8 %5, i8* %dst.addr.0, align 1, !dbg !1190, !tbaa !705
  %incdec.ptr3 = getelementptr inbounds i8* %src.addr.0, i32 1, !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3}, i64 0, metadata !479), !dbg !1192
  %6 = load i8* %src.addr.0, align 1, !dbg !1192, !tbaa !705
  %conv4 = zext i8 %6 to i32, !dbg !1192
  %and = and i32 %conv4, 15, !dbg !1192
  %arrayidx5 = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.hex, i32 0, i32 %and, !dbg !1192
  %7 = load i8* %arrayidx5, align 1, !dbg !1192, !tbaa !705
  %incdec.ptr6 = getelementptr inbounds i8* %dst.addr.0, i32 2, !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr6}, i64 0, metadata !478), !dbg !1192
  store i8 %7, i8* %incdec.ptr, align 1, !dbg !1192, !tbaa !705
  br label %while.cond, !dbg !1193

while.end:                                        ; preds = %cont
  ret i8* %dst.addr.0, !dbg !1194
}

define void @ngx_encode_base64(%struct.ngx_str_t* nocapture %dst, %struct.ngx_str_t* nocapture %src) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %dst}, i64 0, metadata !486), !dbg !1195
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !487), !dbg !1195
  %len1 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 0, !dbg !1196
  %0 = load i32* %len1, align 4, !dbg !1196, !tbaa !726
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !491), !dbg !1196
  %data = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1197
  %1 = load i8** %data, align 4, !dbg !1197, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !490), !dbg !1197
  %data2 = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 1, !dbg !1198
  %2 = load i8** %data2, align 4, !dbg !1198, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !488), !dbg !1198
  %cmp140 = icmp ugt i32 %0, 2, !dbg !1199
  br i1 %cmp140, label %cont4, label %while.end, !dbg !1199

cont4:                                            ; preds = %entry, %cont.backedge
  %len.0143 = phi i32 [ %14, %cont.backedge ], [ %0, %entry ]
  %s.0142 = phi i8* [ %add.ptr, %cont.backedge ], [ %1, %entry ]
  %d.0141 = phi i8* [ %incdec.ptr41, %cont.backedge ], [ %2, %entry ]
  %3 = load i8* %s.0142, align 1, !dbg !1200, !tbaa !705
  %conv = zext i8 %3 to i32, !dbg !1200
  %shr137 = lshr i32 %conv, 2, !dbg !1200
  %arrayidx5 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %shr137, !dbg !1200
  %4 = load i8* %arrayidx5, align 1, !dbg !1200, !tbaa !705
  %incdec.ptr = getelementptr inbounds i8* %d.0141, i32 1, !dbg !1200
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !488), !dbg !1200
  store i8 %4, i8* %d.0141, align 1, !dbg !1200, !tbaa !705
  %5 = load i8* %s.0142, align 1, !dbg !1202, !tbaa !705
  %conv7 = zext i8 %5 to i32, !dbg !1202
  %arrayidx13 = getelementptr inbounds i8* %s.0142, i32 1, !dbg !1202
  %6 = load i8* %arrayidx13, align 1, !dbg !1202, !tbaa !705
  %conv14 = zext i8 %6 to i32, !dbg !1202
  %and8 = shl nuw nsw i32 %conv7, 4, !dbg !1202
  %shl = and i32 %and8, 48, !dbg !1202
  %shr17138 = lshr i32 %conv14, 4, !dbg !1202
  %or = or i32 %shl, %shr17138, !dbg !1202
  %arrayidx18 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %or, !dbg !1202
  %7 = load i8* %arrayidx18, align 1, !dbg !1202, !tbaa !705
  %incdec.ptr19 = getelementptr inbounds i8* %d.0141, i32 2, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr19}, i64 0, metadata !488), !dbg !1202
  store i8 %7, i8* %incdec.ptr, align 1, !dbg !1202, !tbaa !705
  %8 = load i8* %arrayidx13, align 1, !dbg !1203, !tbaa !705
  %conv21 = zext i8 %8 to i32, !dbg !1203
  %arrayidx29 = getelementptr inbounds i8* %s.0142, i32 2, !dbg !1203
  %9 = load i8* %arrayidx29, align 1, !dbg !1203, !tbaa !705
  %conv30 = zext i8 %9 to i32, !dbg !1203
  %and22 = shl nuw nsw i32 %conv21, 2, !dbg !1203
  %shl28 = and i32 %and22, 60, !dbg !1203
  %shr33139 = lshr i32 %conv30, 6, !dbg !1203
  %or34 = or i32 %shl28, %shr33139, !dbg !1203
  %arrayidx35 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %or34, !dbg !1203
  %10 = load i8* %arrayidx35, align 1, !dbg !1203, !tbaa !705
  %incdec.ptr36 = getelementptr inbounds i8* %d.0141, i32 3, !dbg !1203
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr36}, i64 0, metadata !488), !dbg !1203
  store i8 %10, i8* %incdec.ptr19, align 1, !dbg !1203, !tbaa !705
  %11 = load i8* %arrayidx29, align 1, !dbg !1204, !tbaa !705
  %conv38 = zext i8 %11 to i32, !dbg !1204
  %and39 = and i32 %conv38, 63, !dbg !1204
  %arrayidx40 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %and39, !dbg !1204
  %12 = load i8* %arrayidx40, align 1, !dbg !1204, !tbaa !705
  %incdec.ptr41 = getelementptr inbounds i8* %d.0141, i32 4, !dbg !1204
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr41}, i64 0, metadata !488), !dbg !1204
  store i8 %12, i8* %incdec.ptr36, align 1, !dbg !1204, !tbaa !705
  %add.ptr = getelementptr inbounds i8* %s.0142, i32 3, !dbg !1205
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !490), !dbg !1205
  %13 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0143, i32 3), !dbg !1206
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !1206
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !1206
  br i1 %15, label %ioc_bb44, label %cont.backedge, !dbg !1206

cont.backedge:                                    ; preds = %cont4, %ioc_bb44
  %cmp = icmp ugt i32 %14, 2, !dbg !1199
  br i1 %cmp, label %cont4, label %while.end, !dbg !1199

ioc_bb44:                                         ; preds = %cont4
  %16 = zext i32 %len.0143 to i64, !dbg !1206
  tail call void @__ioc_report_sub_overflow(i32 888, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %16, i64 3, i8 5) nounwind, !dbg !1206
  br label %cont.backedge, !dbg !1206

while.end:                                        ; preds = %cont.backedge, %entry
  %len.0.lcssa = phi i32 [ %0, %entry ], [ %14, %cont.backedge ]
  %s.0.lcssa = phi i8* [ %1, %entry ], [ %add.ptr, %cont.backedge ]
  %d.0.lcssa = phi i8* [ %2, %entry ], [ %incdec.ptr41, %cont.backedge ]
  %tobool = icmp eq i32 %len.0.lcssa, 0, !dbg !1207
  br i1 %tobool, label %if.end104, label %cont49, !dbg !1207

cont49:                                           ; preds = %while.end
  %17 = load i8* %s.0.lcssa, align 1, !dbg !1208, !tbaa !705
  %conv47 = zext i8 %17 to i32, !dbg !1208
  %shr50135 = lshr i32 %conv47, 2, !dbg !1208
  %arrayidx52 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %shr50135, !dbg !1208
  %18 = load i8* %arrayidx52, align 1, !dbg !1208, !tbaa !705
  %incdec.ptr53 = getelementptr inbounds i8* %d.0.lcssa, i32 1, !dbg !1208
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr53}, i64 0, metadata !488), !dbg !1208
  store i8 %18, i8* %d.0.lcssa, align 1, !dbg !1208, !tbaa !705
  %cmp56 = icmp eq i32 %len.0.lcssa, 1, !dbg !1210
  %19 = load i8* %s.0.lcssa, align 1, !dbg !1211, !tbaa !705
  %conv60 = zext i8 %19 to i32, !dbg !1211
  %and61 = and i32 %conv60, 3, !dbg !1211
  br i1 %cmp56, label %cont66, label %cont80, !dbg !1210

cont66:                                           ; preds = %cont49
  %shl67 = shl nuw nsw i32 %and61, 4, !dbg !1211
  %arrayidx68 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %shl67, !dbg !1211
  %20 = load i8* %arrayidx68, align 1, !dbg !1211, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr69}, i64 0, metadata !488), !dbg !1211
  store i8 %20, i8* %incdec.ptr53, align 1, !dbg !1211, !tbaa !705
  %incdec.ptr69 = getelementptr inbounds i8* %d.0.lcssa, i32 2, !dbg !1211
  store i8 61, i8* %incdec.ptr69, align 1, !dbg !1213, !tbaa !705
  br label %cont102, !dbg !1214

cont80:                                           ; preds = %cont49
  %arrayidx82 = getelementptr inbounds i8* %s.0.lcssa, i32 1, !dbg !1215
  %21 = load i8* %arrayidx82, align 1, !dbg !1215, !tbaa !705
  %conv83 = zext i8 %21 to i32, !dbg !1215
  %shl81 = shl nuw nsw i32 %and61, 4, !dbg !1215
  %shr86136 = lshr i32 %conv83, 4, !dbg !1215
  %or87 = or i32 %shr86136, %shl81, !dbg !1215
  %arrayidx88 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %or87, !dbg !1215
  %22 = load i8* %arrayidx88, align 1, !dbg !1215, !tbaa !705
  %incdec.ptr89 = getelementptr inbounds i8* %d.0.lcssa, i32 2, !dbg !1215
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr89}, i64 0, metadata !488), !dbg !1215
  store i8 %22, i8* %incdec.ptr53, align 1, !dbg !1215, !tbaa !705
  %23 = load i8* %arrayidx82, align 1, !dbg !1217, !tbaa !705
  %conv91 = zext i8 %23 to i32, !dbg !1217
  %and92 = shl nuw nsw i32 %conv91, 2, !dbg !1217
  %shl98 = and i32 %and92, 60, !dbg !1217
  %arrayidx99 = getelementptr inbounds [65 x i8]* @ngx_encode_base64.basis64, i32 0, i32 %shl98, !dbg !1217
  %24 = load i8* %arrayidx99, align 1, !dbg !1217, !tbaa !705
  store i8 %24, i8* %incdec.ptr89, align 1, !dbg !1217, !tbaa !705
  br label %cont102

cont102:                                          ; preds = %cont66, %cont80
  %d.1 = getelementptr inbounds i8* %d.0.lcssa, i32 3, !dbg !1213
  %incdec.ptr103 = getelementptr inbounds i8* %d.0.lcssa, i32 4, !dbg !1218
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr103}, i64 0, metadata !488), !dbg !1218
  store i8 61, i8* %d.1, align 1, !dbg !1218, !tbaa !705
  br label %if.end104, !dbg !1219

if.end104:                                        ; preds = %while.end, %cont102
  %d.2 = phi i8* [ %incdec.ptr103, %cont102 ], [ %d.0.lcssa, %while.end ]
  %25 = load i8** %data2, align 4, !dbg !1220, !tbaa !729
  %sub.ptr.lhs.cast = ptrtoint i8* %d.2 to i32, !dbg !1220
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i32, !dbg !1220
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1220
  %26 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1220
  br i1 %26, label %cont107, label %ioc_bb106, !dbg !1220

ioc_bb106:                                        ; preds = %if.end104
  %27 = sext i32 %sub.ptr.sub to i64, !dbg !1220
  tail call void @__ioc_report_conversion(i32 902, i32 16, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %27, i8 1) nounwind, !dbg !1220
  br label %cont107, !dbg !1220

cont107:                                          ; preds = %ioc_bb106, %if.end104
  %len108 = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 0, !dbg !1220
  store i32 %sub.ptr.sub, i32* %len108, align 4, !dbg !1220, !tbaa !726
  ret void, !dbg !1221
}

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @ngx_decode_base64(%struct.ngx_str_t* nocapture %dst, %struct.ngx_str_t* nocapture %src) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %dst}, i64 0, metadata !497), !dbg !1222
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !498), !dbg !1222
  %call = tail call fastcc i32 @ngx_decode_base64_internal(%struct.ngx_str_t* %dst, %struct.ngx_str_t* %src, i8* getelementptr inbounds ([256 x i8]* @ngx_decode_base64.basis64, i32 0, i32 0)), !dbg !1223
  ret i32 %call, !dbg !1223
}

define internal fastcc i32 @ngx_decode_base64_internal(%struct.ngx_str_t* nocapture %dst, %struct.ngx_str_t* nocapture %src, i8* nocapture %basis) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %dst}, i64 0, metadata !643), !dbg !1225
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !644), !dbg !1225
  tail call void @llvm.dbg.value(metadata !{i8* %basis}, i64 0, metadata !645), !dbg !1225
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !646), !dbg !1226
  %len1 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 0, !dbg !1226
  %0 = load i32* %len1, align 4, !dbg !1226, !tbaa !726
  %cmp214 = icmp eq i32 %0, 0, !dbg !1226
  br i1 %cmp214, label %cont100.thread, label %for.body.lr.ph, !dbg !1226

cont100.thread:                                   ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !649), !dbg !1228
  %data28224 = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 1, !dbg !1229
  %1 = load i8** %data28224, align 4, !dbg !1229, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !648), !dbg !1229
  br label %if.end158, !dbg !1230

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1231
  br label %for.body, !dbg !1226

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %2 = phi i32 [ %0, %for.body.lr.ph ], [ %9, %for.cond.backedge ]
  %len.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %3 = load i8** %data, align 4, !dbg !1231, !tbaa !729
  %arrayidx = getelementptr inbounds i8* %3, i32 %len.0215, !dbg !1231
  %4 = load i8* %arrayidx, align 1, !dbg !1231, !tbaa !705
  %cmp2 = icmp eq i8 %4, 61, !dbg !1231
  br i1 %cmp2, label %cont20, label %if.end, !dbg !1231

if.end:                                           ; preds = %for.body
  %conv = zext i8 %4 to i32, !dbg !1231
  %arrayidx6 = getelementptr inbounds i8* %basis, i32 %conv, !dbg !1233
  %5 = load i8* %arrayidx6, align 1, !dbg !1233, !tbaa !705
  %cmp8 = icmp eq i8 %5, 77, !dbg !1233
  br i1 %cmp8, label %return, label %for.inc, !dbg !1233

for.inc:                                          ; preds = %if.end
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0215, i32 1), !dbg !1226
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1226
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1226
  br i1 %8, label %ioc_bb14, label %for.cond.backedge, !dbg !1226

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb14
  %9 = phi i32 [ %2, %for.inc ], [ %.pre, %ioc_bb14 ], !dbg !1226
  %cmp = icmp ult i32 %7, %9, !dbg !1226
  br i1 %cmp, label %for.body, label %cont20, !dbg !1226

ioc_bb14:                                         ; preds = %for.inc
  %10 = zext i32 %len.0215 to i64, !dbg !1226
  tail call void @__ioc_report_add_overflow(i32 922, i32 38, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !1226
  %.pre = load i32* %len1, align 4, !dbg !1226, !tbaa !726
  br label %for.cond.backedge, !dbg !1226

cont20:                                           ; preds = %for.cond.backedge, %for.body
  %len.0.lcssa = phi i32 [ %len.0215, %for.body ], [ %7, %for.cond.backedge ]
  %rem = and i32 %len.0.lcssa, 3, !dbg !1234
  %cmp21 = icmp eq i32 %rem, 1, !dbg !1234
  br i1 %cmp21, label %return, label %if.end26, !dbg !1234

if.end26:                                         ; preds = %cont20
  %data27 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 1, !dbg !1228
  %11 = load i8** %data27, align 4, !dbg !1228, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !649), !dbg !1228
  %data28 = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 1, !dbg !1229
  %12 = load i8** %data28, align 4, !dbg !1229, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !648), !dbg !1229
  %cmp31207 = icmp ugt i32 %len.0.lcssa, 3, !dbg !1235
  br i1 %cmp31207, label %while.body, label %cont100, !dbg !1235

while.body:                                       ; preds = %if.end26, %cont30.backedge
  %s.0210 = phi i8* [ %add.ptr, %cont30.backedge ], [ %11, %if.end26 ]
  %d.0209 = phi i8* [ %incdec.ptr94, %cont30.backedge ], [ %12, %if.end26 ]
  %len.1208 = phi i32 [ %32, %cont30.backedge ], [ %len.0.lcssa, %if.end26 ]
  %13 = load i8* %s.0210, align 1, !dbg !1236, !tbaa !705
  %idxprom34 = zext i8 %13 to i32, !dbg !1236
  %arrayidx35 = getelementptr inbounds i8* %basis, i32 %idxprom34, !dbg !1236
  %14 = load i8* %arrayidx35, align 1, !dbg !1236, !tbaa !705
  %conv36 = zext i8 %14 to i32, !dbg !1236
  %arrayidx41 = getelementptr inbounds i8* %s.0210, i32 1, !dbg !1236
  %15 = load i8* %arrayidx41, align 1, !dbg !1236, !tbaa !705
  %idxprom42 = zext i8 %15 to i32, !dbg !1236
  %arrayidx43 = getelementptr inbounds i8* %basis, i32 %idxprom42, !dbg !1236
  %16 = load i8* %arrayidx43, align 1, !dbg !1236, !tbaa !705
  %conv44 = zext i8 %16 to i32, !dbg !1236
  %shl = shl nuw nsw i32 %conv36, 2, !dbg !1236
  %shr204 = lshr i32 %conv44, 4, !dbg !1236
  %or = or i32 %shr204, %shl, !dbg !1236
  %17 = icmp ult i32 %or, 256, !dbg !1236
  br i1 %17, label %cont48, label %ioc_bb47, !dbg !1236

ioc_bb47:                                         ; preds = %while.body
  %18 = zext i32 %or to i64, !dbg !1236
  tail call void @__ioc_report_conversion(i32 936, i32 25, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %18, i8 1) nounwind, !dbg !1236
  br label %cont48, !dbg !1236

cont48:                                           ; preds = %ioc_bb47, %while.body
  %conv49 = trunc i32 %or to i8, !dbg !1236
  %incdec.ptr = getelementptr inbounds i8* %d.0209, i32 1, !dbg !1236
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !648), !dbg !1236
  store i8 %conv49, i8* %d.0209, align 1, !dbg !1236, !tbaa !705
  %19 = load i8* %arrayidx41, align 1, !dbg !1238, !tbaa !705
  %idxprom51 = zext i8 %19 to i32, !dbg !1238
  %arrayidx52 = getelementptr inbounds i8* %basis, i32 %idxprom51, !dbg !1238
  %20 = load i8* %arrayidx52, align 1, !dbg !1238, !tbaa !705
  %conv53 = zext i8 %20 to i32, !dbg !1238
  %arrayidx60 = getelementptr inbounds i8* %s.0210, i32 2, !dbg !1238
  %21 = load i8* %arrayidx60, align 1, !dbg !1238, !tbaa !705
  %idxprom61 = zext i8 %21 to i32, !dbg !1238
  %arrayidx62 = getelementptr inbounds i8* %basis, i32 %idxprom61, !dbg !1238
  %22 = load i8* %arrayidx62, align 1, !dbg !1238, !tbaa !705
  %conv63 = zext i8 %22 to i32, !dbg !1238
  %shl59 = shl nuw nsw i32 %conv53, 4, !dbg !1238
  %shr66205 = lshr i32 %conv63, 2, !dbg !1238
  %or67 = or i32 %shr66205, %shl59, !dbg !1238
  %23 = icmp ult i32 %or67, 256, !dbg !1238
  br i1 %23, label %cont71, label %ioc_bb70, !dbg !1238

ioc_bb70:                                         ; preds = %cont48
  %24 = zext i32 %or67 to i64, !dbg !1238
  tail call void @__ioc_report_conversion(i32 937, i32 25, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %24, i8 1) nounwind, !dbg !1238
  br label %cont71, !dbg !1238

cont71:                                           ; preds = %ioc_bb70, %cont48
  %conv72 = trunc i32 %or67 to i8, !dbg !1238
  %incdec.ptr73 = getelementptr inbounds i8* %d.0209, i32 2, !dbg !1238
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr73}, i64 0, metadata !648), !dbg !1238
  store i8 %conv72, i8* %incdec.ptr, align 1, !dbg !1238, !tbaa !705
  %25 = load i8* %arrayidx60, align 1, !dbg !1239, !tbaa !705
  %idxprom75 = zext i8 %25 to i32, !dbg !1239
  %arrayidx76 = getelementptr inbounds i8* %basis, i32 %idxprom75, !dbg !1239
  %26 = load i8* %arrayidx76, align 1, !dbg !1239, !tbaa !705
  %conv77 = zext i8 %26 to i32, !dbg !1239
  %shl83 = shl nuw nsw i32 %conv77, 6, !dbg !1239
  %arrayidx84 = getelementptr inbounds i8* %s.0210, i32 3, !dbg !1239
  %27 = load i8* %arrayidx84, align 1, !dbg !1239, !tbaa !705
  %idxprom85 = zext i8 %27 to i32, !dbg !1239
  %arrayidx86 = getelementptr inbounds i8* %basis, i32 %idxprom85, !dbg !1239
  %28 = load i8* %arrayidx86, align 1, !dbg !1239, !tbaa !705
  %conv87 = zext i8 %28 to i32, !dbg !1239
  %or88 = or i32 %conv87, %shl83, !dbg !1239
  %29 = icmp ult i32 %or88, 256, !dbg !1239
  br i1 %29, label %cont92, label %ioc_bb91, !dbg !1239

ioc_bb91:                                         ; preds = %cont71
  %30 = zext i32 %or88 to i64, !dbg !1239
  tail call void @__ioc_report_conversion(i32 938, i32 25, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %30, i8 1) nounwind, !dbg !1239
  br label %cont92, !dbg !1239

cont92:                                           ; preds = %ioc_bb91, %cont71
  %conv93 = trunc i32 %or88 to i8, !dbg !1239
  %incdec.ptr94 = getelementptr inbounds i8* %d.0209, i32 3, !dbg !1239
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr94}, i64 0, metadata !648), !dbg !1239
  store i8 %conv93, i8* %incdec.ptr73, align 1, !dbg !1239, !tbaa !705
  %add.ptr = getelementptr inbounds i8* %s.0210, i32 4, !dbg !1240
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !649), !dbg !1240
  %31 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.1208, i32 4), !dbg !1241
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !1241
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !1241
  br i1 %33, label %ioc_bb97, label %cont30.backedge, !dbg !1241

cont30.backedge:                                  ; preds = %cont92, %ioc_bb97
  %cmp31 = icmp ugt i32 %32, 3, !dbg !1235
  br i1 %cmp31, label %while.body, label %cont100, !dbg !1235

ioc_bb97:                                         ; preds = %cont92
  %34 = zext i32 %len.1208 to i64, !dbg !1241
  tail call void @__ioc_report_sub_overflow(i32 940, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @18, i32 0, i32 0), i64 %34, i64 4, i8 5) nounwind, !dbg !1241
  br label %cont30.backedge, !dbg !1241

cont100:                                          ; preds = %cont30.backedge, %if.end26
  %s.0.lcssa = phi i8* [ %11, %if.end26 ], [ %add.ptr, %cont30.backedge ]
  %d.0.lcssa = phi i8* [ %12, %if.end26 ], [ %incdec.ptr94, %cont30.backedge ]
  %len.1.lcssa = phi i32 [ %len.0.lcssa, %if.end26 ], [ %32, %cont30.backedge ]
  %cmp101 = icmp ugt i32 %len.1.lcssa, 1, !dbg !1230
  br i1 %cmp101, label %if.then103, label %if.end158, !dbg !1230

if.then103:                                       ; preds = %cont100
  %35 = load i8* %s.0.lcssa, align 1, !dbg !1242, !tbaa !705
  %idxprom105 = zext i8 %35 to i32, !dbg !1242
  %arrayidx106 = getelementptr inbounds i8* %basis, i32 %idxprom105, !dbg !1242
  %36 = load i8* %arrayidx106, align 1, !dbg !1242, !tbaa !705
  %conv107 = zext i8 %36 to i32, !dbg !1242
  %arrayidx114 = getelementptr inbounds i8* %s.0.lcssa, i32 1, !dbg !1242
  %37 = load i8* %arrayidx114, align 1, !dbg !1242, !tbaa !705
  %idxprom115 = zext i8 %37 to i32, !dbg !1242
  %arrayidx116 = getelementptr inbounds i8* %basis, i32 %idxprom115, !dbg !1242
  %38 = load i8* %arrayidx116, align 1, !dbg !1242, !tbaa !705
  %conv117 = zext i8 %38 to i32, !dbg !1242
  %shl113 = shl nuw nsw i32 %conv107, 2, !dbg !1242
  %shr120203 = lshr i32 %conv117, 4, !dbg !1242
  %or121 = or i32 %shr120203, %shl113, !dbg !1242
  %39 = icmp ult i32 %or121, 256, !dbg !1242
  br i1 %39, label %cont130, label %ioc_bb124, !dbg !1242

ioc_bb124:                                        ; preds = %if.then103
  %40 = zext i32 %or121 to i64, !dbg !1242
  tail call void @__ioc_report_conversion(i32 943, i32 25, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %40, i8 1) nounwind, !dbg !1242
  br label %cont130, !dbg !1242

cont130:                                          ; preds = %if.then103, %ioc_bb124
  %conv126 = trunc i32 %or121 to i8, !dbg !1242
  %incdec.ptr127 = getelementptr inbounds i8* %d.0.lcssa, i32 1, !dbg !1242
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr127}, i64 0, metadata !648), !dbg !1242
  store i8 %conv126, i8* %d.0.lcssa, align 1, !dbg !1242, !tbaa !705
  %cmp131 = icmp ugt i32 %len.1.lcssa, 2, !dbg !1244
  br i1 %cmp131, label %if.then133, label %if.end158, !dbg !1244

if.then133:                                       ; preds = %cont130
  %41 = load i8* %arrayidx114, align 1, !dbg !1245, !tbaa !705
  %idxprom135 = zext i8 %41 to i32, !dbg !1245
  %arrayidx136 = getelementptr inbounds i8* %basis, i32 %idxprom135, !dbg !1245
  %42 = load i8* %arrayidx136, align 1, !dbg !1245, !tbaa !705
  %conv137 = zext i8 %42 to i32, !dbg !1245
  %arrayidx144 = getelementptr inbounds i8* %s.0.lcssa, i32 2, !dbg !1245
  %43 = load i8* %arrayidx144, align 1, !dbg !1245, !tbaa !705
  %idxprom145 = zext i8 %43 to i32, !dbg !1245
  %arrayidx146 = getelementptr inbounds i8* %basis, i32 %idxprom145, !dbg !1245
  %44 = load i8* %arrayidx146, align 1, !dbg !1245, !tbaa !705
  %conv147 = zext i8 %44 to i32, !dbg !1245
  %shl143 = shl nuw nsw i32 %conv137, 4, !dbg !1245
  %shr150202 = lshr i32 %conv147, 2, !dbg !1245
  %or151 = or i32 %shr150202, %shl143, !dbg !1245
  %45 = icmp ult i32 %or151, 256, !dbg !1245
  br i1 %45, label %cont155, label %ioc_bb154, !dbg !1245

ioc_bb154:                                        ; preds = %if.then133
  %46 = zext i32 %or151 to i64, !dbg !1245
  tail call void @__ioc_report_conversion(i32 946, i32 25, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %46, i8 1) nounwind, !dbg !1245
  br label %cont155, !dbg !1245

cont155:                                          ; preds = %ioc_bb154, %if.then133
  %conv156 = trunc i32 %or151 to i8, !dbg !1245
  %incdec.ptr157 = getelementptr inbounds i8* %d.0.lcssa, i32 2, !dbg !1245
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr157}, i64 0, metadata !648), !dbg !1245
  store i8 %conv156, i8* %incdec.ptr127, align 1, !dbg !1245, !tbaa !705
  br label %if.end158, !dbg !1247

if.end158:                                        ; preds = %cont130, %cont100, %cont100.thread, %cont155
  %data28226228 = phi i8** [ %data28, %cont155 ], [ %data28224, %cont100.thread ], [ %data28, %cont100 ], [ %data28, %cont130 ]
  %d.2 = phi i8* [ %incdec.ptr157, %cont155 ], [ %1, %cont100.thread ], [ %d.0.lcssa, %cont100 ], [ %incdec.ptr127, %cont130 ]
  %47 = load i8** %data28226228, align 4, !dbg !1248, !tbaa !729
  %sub.ptr.lhs.cast = ptrtoint i8* %d.2 to i32, !dbg !1248
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i32, !dbg !1248
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1248
  %48 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1248
  br i1 %48, label %cont162, label %ioc_bb161, !dbg !1248

ioc_bb161:                                        ; preds = %if.end158
  %49 = sext i32 %sub.ptr.sub to i64, !dbg !1248
  tail call void @__ioc_report_conversion(i32 948, i32 16, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %49, i8 1) nounwind, !dbg !1248
  br label %cont162, !dbg !1248

cont162:                                          ; preds = %ioc_bb161, %if.end158
  %len163 = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 0, !dbg !1248
  store i32 %sub.ptr.sub, i32* %len163, align 4, !dbg !1248, !tbaa !726
  br label %return, !dbg !1249

return:                                           ; preds = %if.end, %cont20, %cont162
  %retval.0 = phi i32 [ 0, %cont162 ], [ -1, %cont20 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !1250
}

define i32 @ngx_decode_base64url(%struct.ngx_str_t* nocapture %dst, %struct.ngx_str_t* nocapture %src) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %dst}, i64 0, metadata !502), !dbg !1251
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %src}, i64 0, metadata !503), !dbg !1251
  %call = tail call fastcc i32 @ngx_decode_base64_internal(%struct.ngx_str_t* %dst, %struct.ngx_str_t* %src, i8* getelementptr inbounds ([256 x i8]* @ngx_decode_base64url.basis64, i32 0, i32 0)), !dbg !1252
  ret i32 %call, !dbg !1252
}

define i32 @ngx_utf8_decode(i8** nocapture %p, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %p}, i64 0, metadata !510), !dbg !1254
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !511), !dbg !1254
  %0 = load i8** %p, align 4, !dbg !1255, !tbaa !729
  %1 = load i8* %0, align 1, !dbg !1255, !tbaa !705
  %conv = zext i8 %1 to i32, !dbg !1255
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !514), !dbg !1255
  %cmp = icmp ugt i8 %1, -17, !dbg !1256
  br i1 %cmp, label %cont3, label %cont9, !dbg !1256

cont3:                                            ; preds = %entry
  %and = and i32 %conv, 7, !dbg !1257
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !514), !dbg !1257
  tail call void @llvm.dbg.value(metadata !1259, i64 0, metadata !516), !dbg !1260
  tail call void @llvm.dbg.value(metadata !1261, i64 0, metadata !512), !dbg !1262
  br label %cont37, !dbg !1263

cont9:                                            ; preds = %entry
  %cmp10 = icmp ugt i8 %1, -33, !dbg !1264
  br i1 %cmp10, label %cont14, label %cont22, !dbg !1264

cont14:                                           ; preds = %cont9
  %and15 = and i32 %conv, 15, !dbg !1265
  tail call void @llvm.dbg.value(metadata !{i32 %and15}, i64 0, metadata !514), !dbg !1265
  tail call void @llvm.dbg.value(metadata !1267, i64 0, metadata !516), !dbg !1268
  tail call void @llvm.dbg.value(metadata !907, i64 0, metadata !512), !dbg !1269
  br label %cont37, !dbg !1270

cont22:                                           ; preds = %cont9
  %cmp23 = icmp ugt i8 %1, -63, !dbg !1271
  br i1 %cmp23, label %cont27, label %if.else33, !dbg !1271

cont27:                                           ; preds = %cont22
  %and28 = and i32 %conv, 31, !dbg !1272
  tail call void @llvm.dbg.value(metadata !{i32 %and28}, i64 0, metadata !514), !dbg !1272
  tail call void @llvm.dbg.value(metadata !1274, i64 0, metadata !516), !dbg !1275
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !512), !dbg !1276
  br label %cont37

if.else33:                                        ; preds = %cont22
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1, !dbg !1277
  store i8* %incdec.ptr, i8** %p, align 4, !dbg !1277, !tbaa !729
  br label %return, !dbg !1279

cont37:                                           ; preds = %cont3, %cont27, %cont14
  %len.0 = phi i32 [ 3, %cont3 ], [ 2, %cont14 ], [ 1, %cont27 ]
  %u.0 = phi i32 [ %and, %cont3 ], [ %and15, %cont14 ], [ %and28, %cont27 ]
  %valid.0 = phi i32 [ 65535, %cont3 ], [ 2047, %cont14 ], [ 127, %cont27 ]
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n, i32 1), !dbg !1280
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !1280
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !1280
  br i1 %4, label %ioc_bb38, label %cont39, !dbg !1280

ioc_bb38:                                         ; preds = %cont37
  %5 = zext i32 %n to i64, !dbg !1280
  tail call void @__ioc_report_sub_overflow(i32 986, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !1280
  br label %cont39, !dbg !1280

cont39:                                           ; preds = %cont37, %ioc_bb38
  %cmp40 = icmp ult i32 %3, %len.0, !dbg !1280
  br i1 %cmp40, label %return, label %if.end43, !dbg !1280

if.end43:                                         ; preds = %cont39
  %6 = load i8** %p, align 4, !dbg !1281, !tbaa !729
  %incdec.ptr44 = getelementptr inbounds i8* %6, i32 1, !dbg !1281
  store i8* %incdec.ptr44, i8** %p, align 4, !dbg !1281, !tbaa !729
  br label %while.body, !dbg !1282

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end43
  %7 = phi i8* [ %incdec.ptr44, %if.end43 ], [ %.pre, %while.cond.backedge.while.body_crit_edge ], !dbg !1283
  %u.180 = phi i32 [ %u.0, %if.end43 ], [ %or, %while.cond.backedge.while.body_crit_edge ]
  %len.179 = phi i32 [ %len.0, %if.end43 ], [ %10, %while.cond.backedge.while.body_crit_edge ]
  %incdec.ptr45 = getelementptr inbounds i8* %7, i32 1, !dbg !1283
  store i8* %incdec.ptr45, i8** %p, align 4, !dbg !1283, !tbaa !729
  %8 = load i8* %7, align 1, !dbg !1283, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i32 %conv46}, i64 0, metadata !515), !dbg !1283
  %cmp49 = icmp sgt i8 %8, -1, !dbg !1285
  br i1 %cmp49, label %return, label %cont56, !dbg !1285

cont56:                                           ; preds = %while.body
  %conv46 = zext i8 %8 to i32, !dbg !1283
  %shl = shl i32 %u.180, 6, !dbg !1286
  %and57 = and i32 %conv46, 63, !dbg !1286
  %or = or i32 %and57, %shl, !dbg !1286
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !514), !dbg !1286
  %9 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.179, i32 1), !dbg !1287
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !1287
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !1287
  br i1 %11, label %ioc_bb58, label %while.cond.backedge, !dbg !1287

while.cond.backedge:                              ; preds = %cont56, %ioc_bb58
  %tobool = icmp eq i32 %10, 0, !dbg !1282
  br i1 %tobool, label %while.end, label %while.cond.backedge.while.body_crit_edge, !dbg !1282

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  %.pre = load i8** %p, align 4, !dbg !1283, !tbaa !729
  br label %while.body, !dbg !1282

ioc_bb58:                                         ; preds = %cont56
  %12 = zext i32 %len.179 to i64, !dbg !1287
  tail call void @__ioc_report_sub_overflow(i32 996, i32 8, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %12, i64 1, i8 5) nounwind, !dbg !1287
  br label %while.cond.backedge, !dbg !1287

while.end:                                        ; preds = %while.cond.backedge
  %cmp60 = icmp ugt i32 %or, %valid.0, !dbg !1288
  %u.1. = select i1 %cmp60, i32 %or, i32 -1, !dbg !1289
  br label %return, !dbg !1289

return:                                           ; preds = %while.body, %while.end, %cont39, %if.else33
  %retval.0 = phi i32 [ -1, %if.else33 ], [ -2, %cont39 ], [ %u.1., %while.end ], [ -1, %while.body ]
  ret i32 %retval.0, !dbg !1291
}

define i32 @ngx_utf8_length(i8* %p, i32 %n) nounwind {
entry:
  %p.addr = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !522), !dbg !1292
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !522), !dbg !1292
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !522), !dbg !1292
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !522), !dbg !1292
  call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !522), !dbg !1292
  store i8* %p, i8** %p.addr, align 4, !tbaa !729
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !522), !dbg !1292
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !523), !dbg !1292
  %add.ptr = getelementptr inbounds i8* %p, i32 %n, !dbg !1293
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !526), !dbg !1293
  call void @llvm.dbg.value(metadata !36, i64 0, metadata !527), !dbg !1294
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  %cmp14 = icmp sgt i32 %n, 0, !dbg !1294
  br i1 %cmp14, label %for.body, label %return, !dbg !1294

for.body:                                         ; preds = %entry, %for.cond.backedge
  %0 = phi i8* [ %5, %for.cond.backedge ], [ %p, %entry ]
  %len.015 = phi i32 [ %3, %for.cond.backedge ], [ 0, %entry ]
  %1 = load i8* %0, align 1, !dbg !1296, !tbaa !705
  call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !524), !dbg !1296
  %cmp1 = icmp sgt i8 %1, -1, !dbg !1298
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1298

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1, !dbg !1299
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !522), !dbg !1299
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !522), !dbg !1299
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !522), !dbg !1299
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !522), !dbg !1299
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !522), !dbg !1299
  store i8* %incdec.ptr, i8** %p.addr, align 4, !dbg !1299, !tbaa !729
  br label %for.inc, !dbg !1301

if.end:                                           ; preds = %for.body
  %call = call i32 @ngx_utf8_decode(i8** %p.addr, i32 %n), !dbg !1302
  %cmp5 = icmp ugt i32 %call, 1114111, !dbg !1302
  br i1 %cmp5, label %return, label %for.inc, !dbg !1302

for.inc:                                          ; preds = %if.end, %if.then
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.015, i32 1), !dbg !1294
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !1294
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !1294
  br i1 %4, label %ioc_bb9, label %for.cond.backedge, !dbg !1294

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb9
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  call void @llvm.dbg.value(metadata !{i8** %p.addr}, i64 0, metadata !522), !dbg !1294
  %5 = load i8** %p.addr, align 4, !dbg !1294, !tbaa !729
  %cmp = icmp ult i8* %5, %add.ptr, !dbg !1294
  br i1 %cmp, label %for.body, label %return, !dbg !1294

ioc_bb9:                                          ; preds = %for.inc
  %6 = zext i32 %len.015 to i64, !dbg !1294
  call void @__ioc_report_add_overflow(i32 1010, i32 30, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %6, i64 1, i8 5) nounwind, !dbg !1294
  br label %for.cond.backedge, !dbg !1294

return:                                           ; preds = %for.cond.backedge, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %n, %if.end ], [ %3, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !1303
}

define i8* @ngx_utf8_cpystrn(i8* %dst, i8* %src, i32 %n, i32 %len) nounwind {
entry:
  %next = alloca i8*, align 4
  call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !533), !dbg !1304
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !534), !dbg !1304
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !535), !dbg !1304
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !536), !dbg !1304
  call void @llvm.dbg.declare(metadata !{i8** %next}, metadata !539), !dbg !1305
  %cmp = icmp eq i32 %n, 0, !dbg !1306
  br i1 %cmp, label %return, label %while.cond, !dbg !1306

while.cond:                                       ; preds = %ioc_bb11, %if.then9, %while.cond21.backedge, %while.cond21.preheader, %entry
  %dst.addr.0 = phi i8* [ %dst, %entry ], [ %incdec.ptr, %if.then9 ], [ %incdec.ptr, %ioc_bb11 ], [ %dst.addr.0, %while.cond21.preheader ], [ %incdec.ptr26, %while.cond21.backedge ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr10, %if.then9 ], [ %incdec.ptr10, %ioc_bb11 ], [ %src.addr.0, %while.cond21.preheader ], [ %incdec.ptr25, %while.cond21.backedge ]
  %n.addr.0 = phi i32 [ %n, %entry ], [ %1, %if.then9 ], [ %1, %ioc_bb11 ], [ %1, %while.cond21.preheader ], [ %1, %while.cond21.backedge ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %6, %if.then9 ], [ %6, %ioc_bb11 ], [ %len.addr.0, %while.cond21.preheader ], [ %12, %while.cond21.backedge ]
  %0 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0, i32 1), !dbg !1307
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !1307
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !1307
  br i1 %2, label %ioc_bb1, label %cont2, !dbg !1307

ioc_bb1:                                          ; preds = %while.cond
  %3 = zext i32 %n.addr.0 to i64, !dbg !1307
  call void @__ioc_report_sub_overflow(i32 1031, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !1307
  br label %cont2, !dbg !1307

cont2:                                            ; preds = %while.cond, %ioc_bb1
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !535), !dbg !1307
  %tobool = icmp eq i32 %1, 0, !dbg !1307
  br i1 %tobool, label %cont31, label %while.body, !dbg !1307

while.body:                                       ; preds = %cont2
  %4 = load i8* %src.addr.0, align 1, !dbg !1308, !tbaa !705
  call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !537), !dbg !1308
  store i8 %4, i8* %dst.addr.0, align 1, !dbg !1310, !tbaa !705
  %cmp3 = icmp sgt i8 %4, -1, !dbg !1311
  br i1 %cmp3, label %if.then5, label %if.end14, !dbg !1311

if.then5:                                         ; preds = %while.body
  %cmp7 = icmp eq i8 %4, 0, !dbg !1312
  br i1 %cmp7, label %return, label %if.then9, !dbg !1312

if.then9:                                         ; preds = %if.then5
  %incdec.ptr = getelementptr inbounds i8* %dst.addr.0, i32 1, !dbg !1314
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !533), !dbg !1314
  %incdec.ptr10 = getelementptr inbounds i8* %src.addr.0, i32 1, !dbg !1316
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr10}, i64 0, metadata !534), !dbg !1316
  %5 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0, i32 1), !dbg !1317
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !1317
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !1317
  br i1 %7, label %ioc_bb11, label %while.cond, !dbg !1317

ioc_bb11:                                         ; preds = %if.then9
  %8 = zext i32 %len.addr.0 to i64, !dbg !1317
  call void @__ioc_report_sub_overflow(i32 1038, i32 12, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %8, i64 1, i8 5) nounwind, !dbg !1317
  br label %while.cond, !dbg !1317

if.end14:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i8* %src.addr.0}, i64 0, metadata !539), !dbg !1318
  call void @llvm.dbg.value(metadata !{i8* %src.addr.0}, i64 0, metadata !539), !dbg !1318
  call void @llvm.dbg.value(metadata !{i8* %src.addr.0}, i64 0, metadata !539), !dbg !1318
  call void @llvm.dbg.value(metadata !{i8* %src.addr.0}, i64 0, metadata !539), !dbg !1318
  call void @llvm.dbg.value(metadata !{i8* %src.addr.0}, i64 0, metadata !539), !dbg !1318
  store i8* %src.addr.0, i8** %next, align 4, !dbg !1318, !tbaa !729
  %call = call i32 @ngx_utf8_decode(i8** %next, i32 %len.addr.0), !dbg !1319
  %cmp17 = icmp ugt i32 %call, 1114111, !dbg !1319
  br i1 %cmp17, label %cont31, label %while.cond21.preheader, !dbg !1319

while.cond21.preheader:                           ; preds = %if.end14
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  %9 = load i8** %next, align 4, !dbg !1320, !tbaa !729
  %cmp2246 = icmp ult i8* %src.addr.0, %9, !dbg !1320
  br i1 %cmp2246, label %while.body24, label %while.cond, !dbg !1320

while.body24:                                     ; preds = %while.cond21.preheader, %while.cond21.backedge
  %len.addr.149 = phi i32 [ %12, %while.cond21.backedge ], [ %len.addr.0, %while.cond21.preheader ]
  %src.addr.148 = phi i8* [ %incdec.ptr25, %while.cond21.backedge ], [ %src.addr.0, %while.cond21.preheader ]
  %dst.addr.147 = phi i8* [ %incdec.ptr26, %while.cond21.backedge ], [ %dst.addr.0, %while.cond21.preheader ]
  %incdec.ptr25 = getelementptr inbounds i8* %src.addr.148, i32 1, !dbg !1321
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr25}, i64 0, metadata !534), !dbg !1321
  %10 = load i8* %src.addr.148, align 1, !dbg !1321, !tbaa !705
  %incdec.ptr26 = getelementptr inbounds i8* %dst.addr.147, i32 1, !dbg !1321
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr26}, i64 0, metadata !533), !dbg !1321
  store i8 %10, i8* %dst.addr.147, align 1, !dbg !1321, !tbaa !705
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.149, i32 1), !dbg !1323
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !1323
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !1323
  br i1 %13, label %ioc_bb27, label %while.cond21.backedge, !dbg !1323

while.cond21.backedge:                            ; preds = %while.body24, %ioc_bb27
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  call void @llvm.dbg.value(metadata !{i8** %next}, i64 0, metadata !539), !dbg !1320
  %14 = load i8** %next, align 4, !dbg !1320, !tbaa !729
  %cmp22 = icmp ult i8* %incdec.ptr25, %14, !dbg !1320
  br i1 %cmp22, label %while.body24, label %while.cond, !dbg !1320

ioc_bb27:                                         ; preds = %while.body24
  %15 = zext i32 %len.addr.149 to i64, !dbg !1323
  call void @__ioc_report_sub_overflow(i32 1050, i32 10, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !1323
  br label %while.cond21.backedge, !dbg !1323

cont31:                                           ; preds = %if.end14, %cont2
  store i8 0, i8* %dst.addr.0, align 1, !dbg !1324, !tbaa !705
  br label %return, !dbg !1325

return:                                           ; preds = %if.then5, %entry, %cont31
  %retval.0 = phi i8* [ %dst.addr.0, %cont31 ], [ %dst, %entry ], [ %dst.addr.0, %if.then5 ]
  ret i8* %retval.0, !dbg !1326
}

define i32 @ngx_escape_uri(i8* %dst, i8* nocapture %src, i32 %size, i32 %type) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !545), !dbg !1327
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !546), !dbg !1327
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !547), !dbg !1327
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !548), !dbg !1327
  %arrayidx = getelementptr inbounds [7 x i32*]* @ngx_escape_uri.map, i32 0, i32 %type, !dbg !1328
  %0 = load i32** %arrayidx, align 4, !dbg !1328, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !551), !dbg !1328
  %cmp = icmp eq i8* %dst, null, !dbg !1329
  %tobool83 = icmp eq i32 %size, 0, !dbg !1330
  br i1 %cmp, label %while.cond.preheader, label %while.cond19.preheader, !dbg !1329

while.cond19.preheader:                           ; preds = %entry
  br i1 %tobool83, label %while.end61, label %cont24, !dbg !1332

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool83, label %return, label %cont2, !dbg !1330

cont2:                                            ; preds = %while.cond.preheader, %while.cond.backedge
  %n.086 = phi i32 [ %n.1, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %size.addr.085 = phi i32 [ %13, %while.cond.backedge ], [ %size, %while.cond.preheader ]
  %src.addr.084 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %src, %while.cond.preheader ]
  %1 = load i8* %src.addr.084, align 1, !dbg !1333, !tbaa !705
  %conv = zext i8 %1 to i32, !dbg !1333
  %shr82 = lshr i32 %conv, 5, !dbg !1333
  %arrayidx3 = getelementptr inbounds i32* %0, i32 %shr82, !dbg !1333
  %2 = load i32* %arrayidx3, align 4, !dbg !1333, !tbaa !726
  %and = and i32 %conv, 31, !dbg !1333
  %3 = xor i32 %and, 31, !dbg !1333
  %shl.check = lshr i32 1, %3, !dbg !1333
  %4 = icmp eq i32 %shl.check, 0, !dbg !1333
  br i1 %4, label %cont8, label %ioc_bb7, !dbg !1333

ioc_bb7:                                          ; preds = %cont2
  %5 = zext i32 %and to i64, !dbg !1333
  tail call void @__ioc_report_shl_strict(i32 1147, i32 37, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @12, i32 0, i32 0), i64 1, i64 %5, i8 13) nounwind, !dbg !1333
  br label %cont8, !dbg !1333

cont8:                                            ; preds = %ioc_bb7, %cont2
  %shl = shl i32 1, %and, !dbg !1333
  %6 = icmp sgt i32 %shl, -1, !dbg !1333
  br i1 %6, label %cont10, label %ioc_bb9, !dbg !1333

ioc_bb9:                                          ; preds = %cont8
  %7 = sext i32 %shl to i64, !dbg !1333
  tail call void @__ioc_report_conversion(i32 1147, i32 34, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %7, i8 1) nounwind, !dbg !1333
  br label %cont10, !dbg !1333

cont10:                                           ; preds = %ioc_bb9, %cont8
  %and11 = and i32 %shl, %2, !dbg !1333
  %tobool12 = icmp eq i32 %and11, 0, !dbg !1333
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !1333

if.then13:                                        ; preds = %cont10
  %8 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.086, i32 1), !dbg !1335
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !1335
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !1335
  br i1 %10, label %ioc_bb14, label %if.end, !dbg !1335

ioc_bb14:                                         ; preds = %if.then13
  %11 = zext i32 %n.086 to i64, !dbg !1335
  tail call void @__ioc_report_add_overflow(i32 1148, i32 10, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @21, i32 0, i32 0), i64 %11, i64 1, i8 5) nounwind, !dbg !1335
  br label %if.end, !dbg !1335

if.end:                                           ; preds = %ioc_bb14, %if.then13, %cont10
  %n.1 = phi i32 [ %n.086, %cont10 ], [ %9, %if.then13 ], [ %9, %ioc_bb14 ]
  %incdec.ptr = getelementptr inbounds i8* %src.addr.084, i32 1, !dbg !1337
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !546), !dbg !1337
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.085, i32 1), !dbg !1338
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !1338
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !1338
  br i1 %14, label %ioc_bb16, label %while.cond.backedge, !dbg !1338

while.cond.backedge:                              ; preds = %if.end, %ioc_bb16
  %tobool = icmp eq i32 %13, 0, !dbg !1330
  br i1 %tobool, label %return, label %cont2, !dbg !1330

ioc_bb16:                                         ; preds = %if.end
  %15 = zext i32 %size.addr.085 to i64, !dbg !1338
  tail call void @__ioc_report_sub_overflow(i32 1151, i32 11, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !1338
  br label %while.cond.backedge, !dbg !1338

cont24:                                           ; preds = %while.cond19.preheader, %while.cond19.backedge
  %dst.addr.090 = phi i8* [ %dst.addr.1, %while.cond19.backedge ], [ %dst, %while.cond19.preheader ]
  %size.addr.189 = phi i32 [ %29, %while.cond19.backedge ], [ %size, %while.cond19.preheader ]
  %src.addr.188 = phi i8* [ %src.addr.2, %while.cond19.backedge ], [ %src, %while.cond19.preheader ]
  %16 = load i8* %src.addr.188, align 1, !dbg !1339, !tbaa !705
  %conv22 = zext i8 %16 to i32, !dbg !1339
  %shr2580 = lshr i32 %conv22, 5, !dbg !1339
  %arrayidx26 = getelementptr inbounds i32* %0, i32 %shr2580, !dbg !1339
  %17 = load i32* %arrayidx26, align 4, !dbg !1339, !tbaa !726
  %and28 = and i32 %conv22, 31, !dbg !1339
  %18 = xor i32 %and28, 31, !dbg !1339
  %shl.check32 = lshr i32 1, %18, !dbg !1339
  %19 = icmp eq i32 %shl.check32, 0, !dbg !1339
  br i1 %19, label %cont34, label %ioc_bb33, !dbg !1339

ioc_bb33:                                         ; preds = %cont24
  %20 = zext i32 %and28 to i64, !dbg !1339
  tail call void @__ioc_report_shl_strict(i32 1156, i32 35, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @12, i32 0, i32 0), i64 1, i64 %20, i8 13) nounwind, !dbg !1339
  br label %cont34, !dbg !1339

cont34:                                           ; preds = %ioc_bb33, %cont24
  %shl35 = shl i32 1, %and28, !dbg !1339
  %21 = icmp sgt i32 %shl35, -1, !dbg !1339
  br i1 %21, label %cont38, label %ioc_bb37, !dbg !1339

ioc_bb37:                                         ; preds = %cont34
  %22 = sext i32 %shl35 to i64, !dbg !1339
  tail call void @__ioc_report_conversion(i32 1156, i32 32, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @24, i32 0, i32 0), i64 %22, i8 1) nounwind, !dbg !1339
  br label %cont38, !dbg !1339

cont38:                                           ; preds = %ioc_bb37, %cont34
  %and39 = and i32 %shl35, %17, !dbg !1339
  %tobool40 = icmp eq i32 %and39, 0, !dbg !1339
  br i1 %tobool40, label %if.else, label %cont43, !dbg !1339

cont43:                                           ; preds = %cont38
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr44}, i64 0, metadata !545), !dbg !1341
  store i8 37, i8* %dst.addr.090, align 1, !dbg !1341, !tbaa !705
  %23 = load i8* %src.addr.188, align 1, !dbg !1343, !tbaa !705
  %incdec.ptr44 = getelementptr inbounds i8* %dst.addr.090, i32 1, !dbg !1341
  %conv45 = zext i8 %23 to i32, !dbg !1343
  %shr4881 = lshr i32 %conv45, 4, !dbg !1343
  %arrayidx49 = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.hex, i32 0, i32 %shr4881, !dbg !1343
  %24 = load i8* %arrayidx49, align 1, !dbg !1343, !tbaa !705
  %incdec.ptr50 = getelementptr inbounds i8* %dst.addr.090, i32 2, !dbg !1343
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr50}, i64 0, metadata !545), !dbg !1343
  store i8 %24, i8* %incdec.ptr44, align 1, !dbg !1343, !tbaa !705
  %25 = load i8* %src.addr.188, align 1, !dbg !1344, !tbaa !705
  %conv51 = zext i8 %25 to i32, !dbg !1344
  %and52 = and i32 %conv51, 15, !dbg !1344
  %arrayidx53 = getelementptr inbounds [17 x i8]* @ngx_sprintf_num.hex, i32 0, i32 %and52, !dbg !1344
  %26 = load i8* %arrayidx53, align 1, !dbg !1344, !tbaa !705
  store i8 %26, i8* %incdec.ptr50, align 1, !dbg !1344, !tbaa !705
  br label %if.end58, !dbg !1345

if.else:                                          ; preds = %cont38
  %27 = load i8* %src.addr.188, align 1, !dbg !1346, !tbaa !705
  store i8 %27, i8* %dst.addr.090, align 1, !dbg !1346, !tbaa !705
  br label %if.end58

if.end58:                                         ; preds = %if.else, %cont43
  %incdec.ptr50.pn = phi i8* [ %incdec.ptr50, %cont43 ], [ %dst.addr.090, %if.else ]
  %dst.addr.1 = getelementptr inbounds i8* %incdec.ptr50.pn, i32 1, !dbg !1344
  %src.addr.2 = getelementptr inbounds i8* %src.addr.188, i32 1, !dbg !1348
  %28 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.189, i32 1), !dbg !1349
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !1349
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !1349
  br i1 %30, label %ioc_bb59, label %while.cond19.backedge, !dbg !1349

while.cond19.backedge:                            ; preds = %if.end58, %ioc_bb59
  %tobool20 = icmp eq i32 %29, 0, !dbg !1332
  br i1 %tobool20, label %while.end61, label %cont24, !dbg !1332

ioc_bb59:                                         ; preds = %if.end58
  %31 = zext i32 %size.addr.189 to i64, !dbg !1349
  tail call void @__ioc_report_sub_overflow(i32 1165, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !1349
  br label %while.cond19.backedge, !dbg !1349

while.end61:                                      ; preds = %while.cond19.backedge, %while.cond19.preheader
  %dst.addr.0.lcssa = phi i8* [ %dst, %while.cond19.preheader ], [ %dst.addr.1, %while.cond19.backedge ]
  %32 = ptrtoint i8* %dst.addr.0.lcssa to i32, !dbg !1350
  br label %return, !dbg !1350

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %while.end61
  %retval.0 = phi i32 [ %32, %while.end61 ], [ 0, %while.cond.preheader ], [ %n.1, %while.cond.backedge ]
  ret i32 %retval.0, !dbg !1351
}

define void @ngx_unescape_uri(i8** nocapture %dst, i8** nocapture %src, i32 %size, i32 %type) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %dst}, i64 0, metadata !20), !dbg !1352
  tail call void @llvm.dbg.value(metadata !{i8** %src}, i64 0, metadata !21), !dbg !1352
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !22), !dbg !1352
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !23), !dbg !1352
  %0 = load i8** %dst, align 4, !dbg !1353, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !24), !dbg !1353
  %1 = load i8** %src, align 4, !dbg !1354, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !26), !dbg !1354
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !30), !dbg !1355
  tail call void @llvm.dbg.value(metadata !1356, i64 0, metadata !29), !dbg !1357
  %and = and i32 %type, 3, !dbg !1358
  %tobool8 = icmp eq i32 %and, 0, !dbg !1358
  %and94 = and i32 %type, 2, !dbg !1362
  %tobool95 = icmp eq i32 %and94, 0, !dbg !1362
  %and152 = and i32 %type, 1, !dbg !1365
  %tobool153 = icmp eq i32 %and152, 0, !dbg !1365
  br label %while.cond, !dbg !1367

while.cond:                                       ; preds = %sw.bb, %if.end16, %cont34, %cont61, %cont64, %if.then104, %cont108, %if.end113, %if.then181, %cont185, %if.end191, %while.body, %if.then154, %if.end115, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %3, %if.end115 ], [ %3, %if.then154 ], [ %3, %while.body ], [ %3, %if.end191 ], [ %3, %cont185 ], [ %3, %if.then181 ], [ %3, %if.end113 ], [ %3, %cont108 ], [ %3, %if.then104 ], [ %3, %cont64 ], [ %3, %cont61 ], [ %3, %cont34 ], [ %3, %if.end16 ], [ %3, %sw.bb ]
  %d.0 = phi i8* [ %0, %entry ], [ %d.0, %if.end115 ], [ %incdec.ptr159, %if.then154 ], [ %d.0, %while.body ], [ %incdec.ptr192, %if.end191 ], [ %incdec.ptr190, %cont185 ], [ %incdec.ptr182, %if.then181 ], [ %incdec.ptr114, %if.end113 ], [ %incdec.ptr112, %cont108 ], [ %incdec.ptr105, %if.then104 ], [ %incdec.ptr65, %cont64 ], [ %d.0, %cont61 ], [ %d.0, %cont34 ], [ %incdec.ptr17, %if.end16 ], [ %d.0, %sw.bb ]
  %s.0 = phi i8* [ %1, %entry ], [ %incdec.ptr, %if.end115 ], [ %incdec.ptr, %if.then154 ], [ %incdec.ptr, %while.body ], [ %incdec.ptr, %if.end191 ], [ %incdec.ptr, %cont185 ], [ %incdec.ptr, %if.then181 ], [ %incdec.ptr, %if.end113 ], [ %incdec.ptr, %cont108 ], [ %incdec.ptr, %if.then104 ], [ %incdec.ptr, %cont64 ], [ %incdec.ptr, %cont61 ], [ %incdec.ptr, %cont34 ], [ %incdec.ptr, %if.end16 ], [ %incdec.ptr, %sw.bb ]
  %decoded.0 = phi i8 [ 0, %entry ], [ %decoded.0, %if.end115 ], [ %decoded.0, %if.then154 ], [ %decoded.0, %while.body ], [ %decoded.0, %if.end191 ], [ %decoded.0, %cont185 ], [ %decoded.0, %if.then181 ], [ %decoded.0, %if.end113 ], [ %decoded.0, %cont108 ], [ %decoded.0, %if.then104 ], [ %decoded.0, %cont64 ], [ %conv59, %cont61 ], [ %conv32, %cont34 ], [ %decoded.0, %if.end16 ], [ %decoded.0, %sw.bb ]
  %state.0 = phi i32 [ 0, %entry ], [ 0, %if.end115 ], [ 0, %if.then154 ], [ %state.0, %while.body ], [ 0, %if.end191 ], [ 0, %cont185 ], [ 0, %if.then181 ], [ 0, %if.end113 ], [ 0, %cont108 ], [ 0, %if.then104 ], [ 0, %cont64 ], [ 2, %cont61 ], [ 2, %cont34 ], [ 0, %if.end16 ], [ 1, %sw.bb ]
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.0, i32 1), !dbg !1367
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !1367
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !1367
  br i1 %4, label %ioc_bb3, label %cont4, !dbg !1367

ioc_bb3:                                          ; preds = %while.cond
  %5 = zext i32 %size.addr.0 to i64, !dbg !1367
  tail call void @__ioc_report_sub_overflow(i32 1182, i32 13, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !1367
  br label %cont4, !dbg !1367

cont4:                                            ; preds = %while.cond, %ioc_bb3
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !22), !dbg !1367
  %tobool = icmp eq i32 %size.addr.0, 0, !dbg !1367
  br i1 %tobool, label %done, label %while.body, !dbg !1367

while.body:                                       ; preds = %cont4
  %incdec.ptr = getelementptr inbounds i8* %s.0, i32 1, !dbg !1368
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !26), !dbg !1368
  %6 = load i8* %s.0, align 1, !dbg !1368, !tbaa !705
  tail call void @llvm.dbg.value(metadata !1369, i64 0, metadata !27), !dbg !1368
  switch i32 %state.0, label %while.cond [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %cont68
  ], !dbg !1370

sw.bb:                                            ; preds = %while.body
  switch i8 %6, label %if.end16 [
    i8 63, label %cont7
    i8 37, label %while.cond
  ], !dbg !1358

cont7:                                            ; preds = %sw.bb
  br i1 %tobool8, label %if.end16, label %if.then, !dbg !1358

if.then:                                          ; preds = %cont7
  %incdec.ptr9 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1371
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr9}, i64 0, metadata !24), !dbg !1371
  store i8 63, i8* %d.0, align 1, !dbg !1371, !tbaa !705
  br label %done, !dbg !1373

if.end16:                                         ; preds = %cont7, %sw.bb
  %incdec.ptr17 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1374
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr17}, i64 0, metadata !24), !dbg !1374
  store i8 %6, i8* %d.0, align 1, !dbg !1374, !tbaa !705
  br label %while.cond, !dbg !1375

sw.bb18:                                          ; preds = %while.body
  %conv19 = zext i8 %6 to i32, !dbg !1376
  %.off251 = add i8 %6, -48, !dbg !1376
  %7 = icmp ult i8 %.off251, 10, !dbg !1376
  br i1 %7, label %if.then26, label %if.end35, !dbg !1376

if.then26:                                        ; preds = %sw.bb18
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv19, i32 48), !dbg !1378
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !1378
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !1378
  br i1 %10, label %ioc_bb28, label %cont29, !dbg !1378

ioc_bb28:                                         ; preds = %if.then26
  %11 = zext i8 %6 to i64, !dbg !1378
  tail call void @__ioc_report_sub_overflow(i32 1201, i32 35, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %11, i64 48, i8 13) nounwind, !dbg !1378
  br label %cont29, !dbg !1378

cont29:                                           ; preds = %if.then26, %ioc_bb28
  %12 = icmp ult i32 %9, 256, !dbg !1378
  br i1 %12, label %cont34, label %ioc_bb30, !dbg !1378

ioc_bb30:                                         ; preds = %cont29
  %13 = sext i32 %9 to i64, !dbg !1378
  tail call void @__ioc_report_conversion(i32 1201, i32 31, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !1378
  br label %cont34, !dbg !1378

cont34:                                           ; preds = %cont29, %ioc_bb30
  tail call void @llvm.dbg.value(metadata !{i8 %conv32}, i64 0, metadata !29), !dbg !1378
  %conv32 = trunc i32 %9 to i8, !dbg !1378
  tail call void @llvm.dbg.value(metadata !907, i64 0, metadata !30), !dbg !1380
  br label %while.cond, !dbg !1381

if.end35:                                         ; preds = %sw.bb18
  %or = or i32 %conv19, 32, !dbg !1382
  %or.off = add i32 %or, -97, !dbg !1383
  %14 = icmp ult i32 %or.off, 6, !dbg !1383
  br i1 %14, label %if.then49, label %cont64, !dbg !1383

if.then49:                                        ; preds = %if.end35
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %or, i32 97), !dbg !1384
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1384
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1384
  br i1 %17, label %ioc_bb51, label %cont52, !dbg !1384

ioc_bb51:                                         ; preds = %if.then49
  %18 = zext i32 %or to i64, !dbg !1384
  tail call void @__ioc_report_sub_overflow(i32 1207, i32 34, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %18, i64 97, i8 13) nounwind, !dbg !1384
  br label %cont52, !dbg !1384

cont52:                                           ; preds = %if.then49, %ioc_bb51
  %19 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 10), !dbg !1384
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !1384
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !1384
  br i1 %21, label %ioc_bb53, label %cont54, !dbg !1384

ioc_bb53:                                         ; preds = %cont52
  %22 = sext i32 %16 to i64, !dbg !1384
  tail call void @__ioc_report_add_overflow(i32 1207, i32 40, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %22, i64 10, i8 13) nounwind, !dbg !1384
  br label %cont54, !dbg !1384

cont54:                                           ; preds = %cont52, %ioc_bb53
  %23 = icmp ult i32 %20, 256, !dbg !1384
  br i1 %23, label %cont61, label %ioc_bb57, !dbg !1384

ioc_bb57:                                         ; preds = %cont54
  %24 = sext i32 %20 to i64, !dbg !1384
  tail call void @__ioc_report_conversion(i32 1207, i32 31, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %24, i8 1) nounwind, !dbg !1384
  br label %cont61, !dbg !1384

cont61:                                           ; preds = %cont54, %ioc_bb57
  tail call void @llvm.dbg.value(metadata !{i8 %conv59}, i64 0, metadata !29), !dbg !1384
  %conv59 = trunc i32 %20 to i8, !dbg !1384
  tail call void @llvm.dbg.value(metadata !907, i64 0, metadata !30), !dbg !1386
  br label %while.cond, !dbg !1387

cont64:                                           ; preds = %if.end35
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !30), !dbg !1388
  %incdec.ptr65 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1389
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr65}, i64 0, metadata !24), !dbg !1389
  store i8 %6, i8* %d.0, align 1, !dbg !1389, !tbaa !705
  br label %while.cond, !dbg !1390

cont68:                                           ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !36, i64 0, metadata !30), !dbg !1391
  %conv69 = zext i8 %6 to i32, !dbg !1392
  %.off = add i8 %6, -48, !dbg !1392
  %25 = icmp ult i8 %.off, 10, !dbg !1392
  br i1 %25, label %if.then76, label %if.end115, !dbg !1392

if.then76:                                        ; preds = %cont68
  %conv77 = zext i8 %decoded.0 to i32, !dbg !1393
  %shl = shl nuw nsw i32 %conv77, 4, !dbg !1393
  %26 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shl, i32 %conv69), !dbg !1393
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !1393
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !1393
  br i1 %28, label %ioc_bb83, label %cont84, !dbg !1393

ioc_bb83:                                         ; preds = %if.then76
  %29 = zext i8 %6 to i64, !dbg !1393
  %30 = zext i32 %shl to i64, !dbg !1393
  tail call void @__ioc_report_add_overflow(i32 1220, i32 42, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %30, i64 %29, i8 13) nounwind, !dbg !1393
  br label %cont84, !dbg !1393

cont84:                                           ; preds = %if.then76, %ioc_bb83
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %27, i32 48), !dbg !1393
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !1393
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !1393
  br i1 %33, label %ioc_bb85, label %cont86, !dbg !1393

ioc_bb85:                                         ; preds = %cont84
  %34 = sext i32 %27 to i64, !dbg !1393
  tail call void @__ioc_report_sub_overflow(i32 1220, i32 47, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %34, i64 48, i8 13) nounwind, !dbg !1393
  br label %cont86, !dbg !1393

cont86:                                           ; preds = %cont84, %ioc_bb85
  %35 = icmp ult i32 %32, 256, !dbg !1393
  br i1 %35, label %cont90, label %ioc_bb89, !dbg !1393

ioc_bb89:                                         ; preds = %cont86
  %36 = sext i32 %32 to i64, !dbg !1393
  tail call void @__ioc_report_conversion(i32 1220, i32 26, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %36, i8 1) nounwind, !dbg !1393
  br label %cont90, !dbg !1393

cont90:                                           ; preds = %ioc_bb89, %cont86
  %conv91 = trunc i32 %32 to i8, !dbg !1393
  tail call void @llvm.dbg.value(metadata !{i8 %conv91}, i64 0, metadata !27), !dbg !1393
  br i1 %tobool95, label %if.end113, label %if.then96, !dbg !1362

if.then96:                                        ; preds = %cont90
  %conv97 = and i32 %32, 255, !dbg !1394
  %conv97.off = add i32 %conv97, -38, !dbg !1394
  %37 = icmp ult i32 %conv97.off, 89, !dbg !1394
  %incdec.ptr105 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1396
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr105}, i64 0, metadata !24), !dbg !1396
  br i1 %37, label %if.then104, label %cont108, !dbg !1394

if.then104:                                       ; preds = %if.then96
  store i8 %conv91, i8* %d.0, align 1, !dbg !1396, !tbaa !705
  br label %while.cond, !dbg !1398

cont108:                                          ; preds = %if.then96
  store i8 37, i8* %d.0, align 1, !dbg !1399, !tbaa !705
  %add.ptr = getelementptr inbounds i8* %s.0, i32 -1, !dbg !1400
  %38 = load i8* %add.ptr, align 1, !dbg !1400, !tbaa !705
  %incdec.ptr110 = getelementptr inbounds i8* %d.0, i32 2, !dbg !1400
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr110}, i64 0, metadata !24), !dbg !1400
  store i8 %38, i8* %incdec.ptr105, align 1, !dbg !1400, !tbaa !705
  %39 = load i8* %s.0, align 1, !dbg !1401, !tbaa !705
  %incdec.ptr112 = getelementptr inbounds i8* %d.0, i32 3, !dbg !1401
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr112}, i64 0, metadata !24), !dbg !1401
  store i8 %39, i8* %incdec.ptr110, align 1, !dbg !1401, !tbaa !705
  br label %while.cond, !dbg !1402

if.end113:                                        ; preds = %cont90
  %incdec.ptr114 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1403
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr114}, i64 0, metadata !24), !dbg !1403
  store i8 %conv91, i8* %d.0, align 1, !dbg !1403, !tbaa !705
  br label %while.cond, !dbg !1404

if.end115:                                        ; preds = %cont68
  %or117 = or i32 %conv69, 32, !dbg !1405
  %or117.off = add i32 %or117, -97, !dbg !1406
  %40 = icmp ult i32 %or117.off, 6, !dbg !1406
  br i1 %40, label %if.then130, label %while.cond, !dbg !1406

if.then130:                                       ; preds = %if.end115
  %conv131 = zext i8 %decoded.0 to i32, !dbg !1407
  %shl137 = shl nuw nsw i32 %conv131, 4, !dbg !1407
  %41 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shl137, i32 %or117), !dbg !1407
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1407
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !1407
  br i1 %43, label %ioc_bb139, label %cont140, !dbg !1407

ioc_bb139:                                        ; preds = %if.then130
  %44 = zext i32 %or117 to i64, !dbg !1407
  %45 = zext i32 %shl137 to i64, !dbg !1407
  tail call void @__ioc_report_add_overflow(i32 1236, i32 42, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %45, i64 %44, i8 13) nounwind, !dbg !1407
  br label %cont140, !dbg !1407

cont140:                                          ; preds = %if.then130, %ioc_bb139
  %46 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %42, i32 97), !dbg !1407
  %47 = extractvalue { i32, i1 } %46, 0, !dbg !1407
  %48 = extractvalue { i32, i1 } %46, 1, !dbg !1407
  br i1 %48, label %ioc_bb141, label %cont142, !dbg !1407

ioc_bb141:                                        ; preds = %cont140
  %49 = sext i32 %42 to i64, !dbg !1407
  tail call void @__ioc_report_sub_overflow(i32 1236, i32 46, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %49, i64 97, i8 13) nounwind, !dbg !1407
  br label %cont142, !dbg !1407

cont142:                                          ; preds = %cont140, %ioc_bb141
  %50 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 10), !dbg !1407
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !1407
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !1407
  br i1 %52, label %ioc_bb143, label %cont144, !dbg !1407

ioc_bb143:                                        ; preds = %cont142
  %53 = sext i32 %47 to i64, !dbg !1407
  tail call void @__ioc_report_add_overflow(i32 1236, i32 52, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %53, i64 10, i8 13) nounwind, !dbg !1407
  br label %cont144, !dbg !1407

cont144:                                          ; preds = %cont142, %ioc_bb143
  %54 = icmp ult i32 %51, 256, !dbg !1407
  br i1 %54, label %cont148, label %ioc_bb147, !dbg !1407

ioc_bb147:                                        ; preds = %cont144
  %55 = sext i32 %51 to i64, !dbg !1407
  tail call void @__ioc_report_conversion(i32 1236, i32 26, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @20, i32 0, i32 0), i64 %55, i8 1) nounwind, !dbg !1407
  br label %cont148, !dbg !1407

cont148:                                          ; preds = %ioc_bb147, %cont144
  %conv149 = trunc i32 %51 to i8, !dbg !1407
  tail call void @llvm.dbg.value(metadata !{i8 %conv149}, i64 0, metadata !27), !dbg !1407
  br i1 %tobool153, label %cont164, label %if.then154, !dbg !1365

if.then154:                                       ; preds = %cont148
  %conv155 = and i32 %51, 255, !dbg !1408
  %cmp156 = icmp eq i32 %conv155, 63, !dbg !1408
  %incdec.ptr159 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1410
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr159}, i64 0, metadata !24), !dbg !1410
  store i8 %conv149, i8* %d.0, align 1, !dbg !1410, !tbaa !705
  br i1 %cmp156, label %done, label %while.cond, !dbg !1408

cont164:                                          ; preds = %cont148
  br i1 %tobool95, label %if.end191, label %if.then167, !dbg !1412

if.then167:                                       ; preds = %cont164
  %conv168 = and i32 %51, 255, !dbg !1413
  %cmp169 = icmp eq i32 %conv168, 63, !dbg !1413
  br i1 %cmp169, label %if.then171, label %if.end173, !dbg !1413

if.then171:                                       ; preds = %if.then167
  %incdec.ptr172 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1415
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr172}, i64 0, metadata !24), !dbg !1415
  store i8 %conv149, i8* %d.0, align 1, !dbg !1415, !tbaa !705
  br label %done, !dbg !1417

if.end173:                                        ; preds = %if.then167
  %conv168.off = add i32 %conv168, -38, !dbg !1418
  %56 = icmp ult i32 %conv168.off, 89, !dbg !1418
  %incdec.ptr182 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1419
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr182}, i64 0, metadata !24), !dbg !1419
  br i1 %56, label %if.then181, label %cont185, !dbg !1418

if.then181:                                       ; preds = %if.end173
  store i8 %conv149, i8* %d.0, align 1, !dbg !1419, !tbaa !705
  br label %while.cond, !dbg !1421

cont185:                                          ; preds = %if.end173
  store i8 37, i8* %d.0, align 1, !dbg !1422, !tbaa !705
  %add.ptr187 = getelementptr inbounds i8* %s.0, i32 -1, !dbg !1423
  %57 = load i8* %add.ptr187, align 1, !dbg !1423, !tbaa !705
  %incdec.ptr188 = getelementptr inbounds i8* %d.0, i32 2, !dbg !1423
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr188}, i64 0, metadata !24), !dbg !1423
  store i8 %57, i8* %incdec.ptr182, align 1, !dbg !1423, !tbaa !705
  %58 = load i8* %s.0, align 1, !dbg !1424, !tbaa !705
  %incdec.ptr190 = getelementptr inbounds i8* %d.0, i32 3, !dbg !1424
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr190}, i64 0, metadata !24), !dbg !1424
  store i8 %58, i8* %incdec.ptr188, align 1, !dbg !1424, !tbaa !705
  br label %while.cond, !dbg !1425

if.end191:                                        ; preds = %cont164
  %incdec.ptr192 = getelementptr inbounds i8* %d.0, i32 1, !dbg !1426
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr192}, i64 0, metadata !24), !dbg !1426
  store i8 %conv149, i8* %d.0, align 1, !dbg !1426, !tbaa !705
  br label %while.cond, !dbg !1427

done:                                             ; preds = %cont4, %if.then154, %if.then171, %if.then
  %d.1 = phi i8* [ %incdec.ptr172, %if.then171 ], [ %incdec.ptr9, %if.then ], [ %d.0, %cont4 ], [ %incdec.ptr159, %if.then154 ]
  %s.1 = phi i8* [ %incdec.ptr, %if.then171 ], [ %incdec.ptr, %if.then ], [ %s.0, %cont4 ], [ %incdec.ptr, %if.then154 ]
  store i8* %d.1, i8** %dst, align 4, !dbg !1428, !tbaa !729
  store i8* %s.1, i8** %src, align 4, !dbg !1429, !tbaa !729
  ret void, !dbg !1430
}

define i32 @ngx_escape_html(i8* %dst, i8* nocapture %src, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !558), !dbg !1431
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !559), !dbg !1431
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !560), !dbg !1431
  %cmp = icmp eq i8* %dst, null, !dbg !1432
  %tobool132 = icmp eq i32 %size, 0, !dbg !1433
  br i1 %cmp, label %while.cond.preheader, label %while.cond30.preheader, !dbg !1432

while.cond30.preheader:                           ; preds = %entry
  br i1 %tobool132, label %while.end101, label %while.body32, !dbg !1435

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool132, label %return, label %while.body, !dbg !1433

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %len.0135 = phi i32 [ %len.1, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %size.addr.0134 = phi i32 [ %18, %while.cond.backedge ], [ %size, %while.cond.preheader ]
  %src.addr.0133 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %src, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %src.addr.0133, i32 1, !dbg !1436
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !559), !dbg !1436
  %0 = load i8* %src.addr.0133, align 1, !dbg !1436, !tbaa !705
  %conv = zext i8 %0 to i32, !dbg !1436
  switch i32 %conv, label %sw.epilog [
    i32 60, label %cont4
    i32 62, label %cont11
    i32 38, label %cont18
    i32 34, label %cont25
  ], !dbg !1436

cont4:                                            ; preds = %while.body
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0135, i32 3), !dbg !1438
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !1438
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !1438
  br i1 %3, label %ioc_bb5, label %sw.epilog, !dbg !1438

ioc_bb5:                                          ; preds = %cont4
  %4 = zext i32 %len.0135 to i64, !dbg !1438
  tail call void @__ioc_report_add_overflow(i32 1282, i32 15, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %4, i64 3, i8 5) nounwind, !dbg !1438
  br label %sw.epilog, !dbg !1438

cont11:                                           ; preds = %while.body
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0135, i32 3), !dbg !1441
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !1441
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !1441
  br i1 %7, label %ioc_bb12, label %sw.epilog, !dbg !1441

ioc_bb12:                                         ; preds = %cont11
  %8 = zext i32 %len.0135 to i64, !dbg !1441
  tail call void @__ioc_report_add_overflow(i32 1287, i32 15, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %8, i64 3, i8 5) nounwind, !dbg !1441
  br label %sw.epilog, !dbg !1441

cont18:                                           ; preds = %while.body
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0135, i32 4), !dbg !1443
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !1443
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !1443
  br i1 %11, label %ioc_bb19, label %sw.epilog, !dbg !1443

ioc_bb19:                                         ; preds = %cont18
  %12 = zext i32 %len.0135 to i64, !dbg !1443
  tail call void @__ioc_report_add_overflow(i32 1292, i32 15, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %12, i64 4, i8 5) nounwind, !dbg !1443
  br label %sw.epilog, !dbg !1443

cont25:                                           ; preds = %while.body
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0135, i32 5), !dbg !1445
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !1445
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !1445
  br i1 %15, label %ioc_bb26, label %sw.epilog, !dbg !1445

ioc_bb26:                                         ; preds = %cont25
  %16 = zext i32 %len.0135 to i64, !dbg !1445
  tail call void @__ioc_report_add_overflow(i32 1297, i32 15, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @15, i32 0, i32 0), i64 %16, i64 5, i8 5) nounwind, !dbg !1445
  br label %sw.epilog, !dbg !1445

sw.epilog:                                        ; preds = %ioc_bb26, %cont25, %ioc_bb19, %cont18, %ioc_bb12, %cont11, %ioc_bb5, %cont4, %while.body
  %len.1 = phi i32 [ %len.0135, %while.body ], [ %2, %cont4 ], [ %2, %ioc_bb5 ], [ %6, %cont11 ], [ %6, %ioc_bb12 ], [ %10, %cont18 ], [ %10, %ioc_bb19 ], [ %14, %cont25 ], [ %14, %ioc_bb26 ]
  %17 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.0134, i32 1), !dbg !1447
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !1447
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !1447
  br i1 %19, label %ioc_bb28, label %while.cond.backedge, !dbg !1447

while.cond.backedge:                              ; preds = %sw.epilog, %ioc_bb28
  %tobool = icmp eq i32 %18, 0, !dbg !1433
  br i1 %tobool, label %return, label %while.body, !dbg !1433

ioc_bb28:                                         ; preds = %sw.epilog
  %20 = zext i32 %size.addr.0134 to i64, !dbg !1447
  tail call void @__ioc_report_sub_overflow(i32 1303, i32 11, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %20, i64 1, i8 5) nounwind, !dbg !1447
  br label %while.cond.backedge, !dbg !1447

while.body32:                                     ; preds = %while.cond30.preheader, %while.cond30.backedge
  %size.addr.1139 = phi i32 [ %23, %while.cond30.backedge ], [ %size, %while.cond30.preheader ]
  %src.addr.1138 = phi i8* [ %incdec.ptr33, %while.cond30.backedge ], [ %src, %while.cond30.preheader ]
  %dst.addr.0137 = phi i8* [ %dst.addr.1, %while.cond30.backedge ], [ %dst, %while.cond30.preheader ]
  %incdec.ptr33 = getelementptr inbounds i8* %src.addr.1138, i32 1, !dbg !1448
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr33}, i64 0, metadata !559), !dbg !1448
  %21 = load i8* %src.addr.1138, align 1, !dbg !1448, !tbaa !705
  tail call void @llvm.dbg.value(metadata !{i8 %21}, i64 0, metadata !561), !dbg !1448
  %conv34 = zext i8 %21 to i32, !dbg !1450
  switch i32 %conv34, label %sw.default96 [
    i32 60, label %cont37
    i32 62, label %cont50
    i32 38, label %cont63
    i32 34, label %cont79
  ], !dbg !1450

cont37:                                           ; preds = %while.body32
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr38}, i64 0, metadata !558), !dbg !1451
  store i8 38, i8* %dst.addr.0137, align 1, !dbg !1451, !tbaa !705
  %incdec.ptr38 = getelementptr inbounds i8* %dst.addr.0137, i32 1, !dbg !1451
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr41}, i64 0, metadata !558), !dbg !1454
  store i8 108, i8* %incdec.ptr38, align 1, !dbg !1454, !tbaa !705
  %incdec.ptr41 = getelementptr inbounds i8* %dst.addr.0137, i32 2, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr44}, i64 0, metadata !558), !dbg !1455
  store i8 116, i8* %incdec.ptr41, align 1, !dbg !1455, !tbaa !705
  %incdec.ptr44 = getelementptr inbounds i8* %dst.addr.0137, i32 3, !dbg !1455
  %incdec.ptr47 = getelementptr inbounds i8* %dst.addr.0137, i32 4, !dbg !1456
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr47}, i64 0, metadata !558), !dbg !1456
  store i8 59, i8* %incdec.ptr44, align 1, !dbg !1456, !tbaa !705
  br label %sw.epilog98, !dbg !1457

cont50:                                           ; preds = %while.body32
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr51}, i64 0, metadata !558), !dbg !1458
  store i8 38, i8* %dst.addr.0137, align 1, !dbg !1458, !tbaa !705
  %incdec.ptr51 = getelementptr inbounds i8* %dst.addr.0137, i32 1, !dbg !1458
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr54}, i64 0, metadata !558), !dbg !1460
  store i8 103, i8* %incdec.ptr51, align 1, !dbg !1460, !tbaa !705
  %incdec.ptr54 = getelementptr inbounds i8* %dst.addr.0137, i32 2, !dbg !1460
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr57}, i64 0, metadata !558), !dbg !1461
  store i8 116, i8* %incdec.ptr54, align 1, !dbg !1461, !tbaa !705
  %incdec.ptr57 = getelementptr inbounds i8* %dst.addr.0137, i32 3, !dbg !1461
  %incdec.ptr60 = getelementptr inbounds i8* %dst.addr.0137, i32 4, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr60}, i64 0, metadata !558), !dbg !1462
  store i8 59, i8* %incdec.ptr57, align 1, !dbg !1462, !tbaa !705
  br label %sw.epilog98, !dbg !1463

cont63:                                           ; preds = %while.body32
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr64}, i64 0, metadata !558), !dbg !1464
  store i8 38, i8* %dst.addr.0137, align 1, !dbg !1464, !tbaa !705
  %incdec.ptr64 = getelementptr inbounds i8* %dst.addr.0137, i32 1, !dbg !1464
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr67}, i64 0, metadata !558), !dbg !1466
  store i8 97, i8* %incdec.ptr64, align 1, !dbg !1466, !tbaa !705
  %incdec.ptr67 = getelementptr inbounds i8* %dst.addr.0137, i32 2, !dbg !1466
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr70}, i64 0, metadata !558), !dbg !1467
  store i8 109, i8* %incdec.ptr67, align 1, !dbg !1467, !tbaa !705
  %incdec.ptr70 = getelementptr inbounds i8* %dst.addr.0137, i32 3, !dbg !1467
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr73}, i64 0, metadata !558), !dbg !1468
  store i8 112, i8* %incdec.ptr70, align 1, !dbg !1468, !tbaa !705
  %incdec.ptr73 = getelementptr inbounds i8* %dst.addr.0137, i32 4, !dbg !1468
  %incdec.ptr76 = getelementptr inbounds i8* %dst.addr.0137, i32 5, !dbg !1469
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr76}, i64 0, metadata !558), !dbg !1469
  store i8 59, i8* %incdec.ptr73, align 1, !dbg !1469, !tbaa !705
  br label %sw.epilog98, !dbg !1470

cont79:                                           ; preds = %while.body32
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr80}, i64 0, metadata !558), !dbg !1471
  store i8 38, i8* %dst.addr.0137, align 1, !dbg !1471, !tbaa !705
  %incdec.ptr80 = getelementptr inbounds i8* %dst.addr.0137, i32 1, !dbg !1471
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr83}, i64 0, metadata !558), !dbg !1473
  store i8 113, i8* %incdec.ptr80, align 1, !dbg !1473, !tbaa !705
  %incdec.ptr83 = getelementptr inbounds i8* %dst.addr.0137, i32 2, !dbg !1473
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr86}, i64 0, metadata !558), !dbg !1474
  store i8 117, i8* %incdec.ptr83, align 1, !dbg !1474, !tbaa !705
  %incdec.ptr86 = getelementptr inbounds i8* %dst.addr.0137, i32 3, !dbg !1474
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr89}, i64 0, metadata !558), !dbg !1475
  store i8 111, i8* %incdec.ptr86, align 1, !dbg !1475, !tbaa !705
  %incdec.ptr89 = getelementptr inbounds i8* %dst.addr.0137, i32 4, !dbg !1475
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr92}, i64 0, metadata !558), !dbg !1476
  store i8 116, i8* %incdec.ptr89, align 1, !dbg !1476, !tbaa !705
  %incdec.ptr92 = getelementptr inbounds i8* %dst.addr.0137, i32 5, !dbg !1476
  %incdec.ptr95 = getelementptr inbounds i8* %dst.addr.0137, i32 6, !dbg !1477
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr95}, i64 0, metadata !558), !dbg !1477
  store i8 59, i8* %incdec.ptr92, align 1, !dbg !1477, !tbaa !705
  br label %sw.epilog98, !dbg !1478

sw.default96:                                     ; preds = %while.body32
  %incdec.ptr97 = getelementptr inbounds i8* %dst.addr.0137, i32 1, !dbg !1479
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr97}, i64 0, metadata !558), !dbg !1479
  store i8 %21, i8* %dst.addr.0137, align 1, !dbg !1479, !tbaa !705
  br label %sw.epilog98, !dbg !1481

sw.epilog98:                                      ; preds = %sw.default96, %cont79, %cont63, %cont50, %cont37
  %dst.addr.1 = phi i8* [ %incdec.ptr97, %sw.default96 ], [ %incdec.ptr95, %cont79 ], [ %incdec.ptr76, %cont63 ], [ %incdec.ptr60, %cont50 ], [ %incdec.ptr47, %cont37 ]
  %22 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.1139, i32 1), !dbg !1482
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !1482
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !1482
  br i1 %24, label %ioc_bb99, label %while.cond30.backedge, !dbg !1482

while.cond30.backedge:                            ; preds = %sw.epilog98, %ioc_bb99
  %tobool31 = icmp eq i32 %23, 0, !dbg !1435
  br i1 %tobool31, label %while.end101, label %while.body32, !dbg !1435

ioc_bb99:                                         ; preds = %sw.epilog98
  %25 = zext i32 %size.addr.1139 to i64, !dbg !1482
  tail call void @__ioc_report_sub_overflow(i32 1351, i32 9, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @16, i32 0, i32 0), i64 %25, i64 1, i8 5) nounwind, !dbg !1482
  br label %while.cond30.backedge, !dbg !1482

while.end101:                                     ; preds = %while.cond30.backedge, %while.cond30.preheader
  %dst.addr.0.lcssa = phi i8* [ %dst, %while.cond30.preheader ], [ %dst.addr.1, %while.cond30.backedge ]
  %26 = ptrtoint i8* %dst.addr.0.lcssa to i32, !dbg !1483
  br label %return, !dbg !1483

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %while.end101
  %retval.0 = phi i32 [ %26, %while.end101 ], [ 0, %while.cond.preheader ], [ %len.1, %while.cond.backedge ]
  ret i32 %retval.0, !dbg !1484
}

define void @ngx_str_rbtree_insert_value(%struct.ngx_rbtree_node_s* %temp, %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s* %sentinel) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %temp}, i64 0, metadata !582), !dbg !1485
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node}, i64 0, metadata !583), !dbg !1485
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %sentinel}, i64 0, metadata !584), !dbg !1485
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 0, !dbg !1486
  %0 = load i32* %key, align 4, !dbg !1486, !tbaa !726
  %len = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 1, i32 0, !dbg !1489
  %data = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 1, i32 1, !dbg !1490
  br label %for.cond, !dbg !1492

for.cond:                                         ; preds = %if.end33, %entry
  %temp.addr.0 = phi %struct.ngx_rbtree_node_s* [ %temp, %entry ], [ %8, %if.end33 ]
  %key1 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 0, !dbg !1486
  %1 = load i32* %key1, align 4, !dbg !1486, !tbaa !726
  %cmp = icmp eq i32 %0, %1, !dbg !1486
  br i1 %cmp, label %if.else, label %if.then, !dbg !1486

if.then:                                          ; preds = %for.cond
  %cmp4 = icmp ult i32 %0, %1, !dbg !1493
  %left = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !1493
  %right = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !1493
  %cond = select i1 %cmp4, %struct.ngx_rbtree_node_s** %left, %struct.ngx_rbtree_node_s** %right, !dbg !1493
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %cond}, i64 0, metadata !594), !dbg !1493
  br label %if.end33, !dbg !1495

if.else:                                          ; preds = %for.cond
  %2 = load i32* %len, align 4, !dbg !1489, !tbaa !726
  %len6 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 1, i32 0, !dbg !1489
  %3 = load i32* %len6, align 4, !dbg !1489, !tbaa !726
  %cmp7 = icmp eq i32 %2, %3, !dbg !1489
  br i1 %cmp7, label %if.else20, label %if.then8, !dbg !1489

if.then8:                                         ; preds = %if.else
  %cmp13 = icmp ult i32 %2, %3, !dbg !1496
  %left15 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !1496
  %right17 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !1496
  %cond19 = select i1 %cmp13, %struct.ngx_rbtree_node_s** %left15, %struct.ngx_rbtree_node_s** %right17, !dbg !1496
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %cond19}, i64 0, metadata !594), !dbg !1496
  br label %if.end33, !dbg !1498

if.else20:                                        ; preds = %if.else
  %4 = load %struct.ngx_rbtree_node_s** %data, align 4, !dbg !1490
  %5 = bitcast %struct.ngx_rbtree_node_s* %4 to i8*, !dbg !1490
  %data23 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 1, i32 1, !dbg !1490
  %6 = load %struct.ngx_rbtree_node_s** %data23, align 4, !dbg !1490
  %7 = bitcast %struct.ngx_rbtree_node_s* %6 to i8*, !dbg !1490
  %call = tail call i32 @memcmp(i8* %5, i8* %7, i32 %2) nounwind readonly, !dbg !1490
  %cmp26 = icmp slt i32 %call, 0, !dbg !1490
  %left28 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !1490
  %right30 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !1490
  %cond32 = select i1 %cmp26, %struct.ngx_rbtree_node_s** %left28, %struct.ngx_rbtree_node_s** %right30, !dbg !1490
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %cond32}, i64 0, metadata !594), !dbg !1490
  br label %if.end33

if.end33:                                         ; preds = %if.then8, %if.else20, %if.then
  %p.0 = phi %struct.ngx_rbtree_node_s** [ %cond, %if.then ], [ %cond19, %if.then8 ], [ %cond32, %if.else20 ]
  %8 = load %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !1499, !tbaa !729
  %cmp34 = icmp eq %struct.ngx_rbtree_node_s* %8, %sentinel, !dbg !1499
  br i1 %cmp34, label %for.end, label %for.cond, !dbg !1499

for.end:                                          ; preds = %if.end33
  store %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !1500, !tbaa !729
  %parent = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 3, !dbg !1501
  store %struct.ngx_rbtree_node_s* %temp.addr.0, %struct.ngx_rbtree_node_s** %parent, align 4, !dbg !1501, !tbaa !729
  %left37 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 1, !dbg !1502
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %left37, align 4, !dbg !1502, !tbaa !729
  %right38 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 2, !dbg !1503
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %right38, align 4, !dbg !1503, !tbaa !729
  %color = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 4, !dbg !1504
  store i8 1, i8* %color, align 1, !dbg !1504, !tbaa !705
  ret void, !dbg !1505
}

define %struct.ngx_str_node_t* @ngx_str_rbtree_lookup(%struct.ngx_rbtree_s* nocapture %rbtree, %struct.ngx_str_t* nocapture %val, i32 %hash) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_s* %rbtree}, i64 0, metadata !610), !dbg !1506
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %val}, i64 0, metadata !611), !dbg !1506
  tail call void @llvm.dbg.value(metadata !{i32 %hash}, i64 0, metadata !612), !dbg !1506
  %root = getelementptr inbounds %struct.ngx_rbtree_s* %rbtree, i32 0, i32 0, !dbg !1507
  %sentinel1 = getelementptr inbounds %struct.ngx_rbtree_s* %rbtree, i32 0, i32 1, !dbg !1508
  %0 = load %struct.ngx_rbtree_node_s** %sentinel1, align 4, !dbg !1508, !tbaa !729
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %0}, i64 0, metadata !617), !dbg !1508
  %node.045 = load %struct.ngx_rbtree_node_s** %root, align 4, !dbg !1507
  %cmp46 = icmp eq %struct.ngx_rbtree_node_s* %node.045, %0, !dbg !1509
  br i1 %cmp46, label %return, label %while.body.lr.ph, !dbg !1509

while.body.lr.ph:                                 ; preds = %entry
  %len = getelementptr inbounds %struct.ngx_str_t* %val, i32 0, i32 0, !dbg !1510
  %data = getelementptr inbounds %struct.ngx_str_t* %val, i32 0, i32 1, !dbg !1512
  br label %while.body, !dbg !1509

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %node.047 = phi %struct.ngx_rbtree_node_s* [ %node.045, %while.body.lr.ph ], [ %node.0, %while.cond.backedge ]
  %1 = bitcast %struct.ngx_rbtree_node_s* %node.047 to %struct.ngx_str_node_t*, !dbg !1513
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_node_t* %1}, i64 0, metadata !615), !dbg !1513
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 0, !dbg !1514
  %2 = load i32* %key, align 4, !dbg !1514, !tbaa !726
  %cmp2 = icmp eq i32 %2, %hash, !dbg !1514
  br i1 %cmp2, label %if.end, label %if.then, !dbg !1514

if.then:                                          ; preds = %while.body
  %cmp4 = icmp ugt i32 %2, %hash, !dbg !1515
  %left = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 1, !dbg !1515
  %right = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 2, !dbg !1515
  %cond.in = select i1 %cmp4, %struct.ngx_rbtree_node_s** %left, %struct.ngx_rbtree_node_s** %right, !dbg !1515
  br label %while.cond.backedge, !dbg !1515

if.end:                                           ; preds = %while.body
  %3 = load i32* %len, align 4, !dbg !1510, !tbaa !726
  %len5 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 1, i32 0, !dbg !1510
  %4 = load i32* %len5, align 4, !dbg !1510, !tbaa !726
  %cmp6 = icmp eq i32 %3, %4, !dbg !1510
  br i1 %cmp6, label %if.end18, label %if.then7, !dbg !1510

if.then7:                                         ; preds = %if.end
  %cmp11 = icmp ult i32 %3, %4, !dbg !1517
  %left13 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 1, !dbg !1517
  %right15 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 2, !dbg !1517
  %cond17.in = select i1 %cmp11, %struct.ngx_rbtree_node_s** %left13, %struct.ngx_rbtree_node_s** %right15, !dbg !1517
  br label %while.cond.backedge, !dbg !1517

if.end18:                                         ; preds = %if.end
  %5 = load i8** %data, align 4, !dbg !1512, !tbaa !729
  %data20 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 1, i32 1, !dbg !1512
  %6 = load %struct.ngx_rbtree_node_s** %data20, align 4, !dbg !1512
  %7 = bitcast %struct.ngx_rbtree_node_s* %6 to i8*, !dbg !1512
  %call = tail call i32 @memcmp(i8* %5, i8* %7, i32 %3) nounwind readonly, !dbg !1512
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !613), !dbg !1512
  %cmp22 = icmp slt i32 %call, 0, !dbg !1519
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !1519

if.then23:                                        ; preds = %if.end18
  %left24 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 1, !dbg !1520
  br label %while.cond.backedge, !dbg !1522

while.cond.backedge:                              ; preds = %if.then23, %if.then27, %if.then, %if.then7
  %node.0.in.be = phi %struct.ngx_rbtree_node_s** [ %left24, %if.then23 ], [ %right28, %if.then27 ], [ %cond.in, %if.then ], [ %cond17.in, %if.then7 ]
  %node.0 = load %struct.ngx_rbtree_node_s** %node.0.in.be, align 4, !dbg !1507
  %cmp = icmp eq %struct.ngx_rbtree_node_s* %node.0, %0, !dbg !1509
  br i1 %cmp, label %return, label %while.body, !dbg !1509

if.end25:                                         ; preds = %if.end18
  %cmp26 = icmp sgt i32 %call, 0, !dbg !1523
  br i1 %cmp26, label %if.then27, label %return, !dbg !1523

if.then27:                                        ; preds = %if.end25
  %right28 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.047, i32 0, i32 2, !dbg !1524
  br label %while.cond.backedge, !dbg !1526

return:                                           ; preds = %while.cond.backedge, %if.end25, %entry
  %retval.0 = phi %struct.ngx_str_node_t* [ null, %entry ], [ %1, %if.end25 ], [ null, %while.cond.backedge ]
  ret %struct.ngx_str_node_t* %retval.0, !dbg !1527
}

define void @ngx_sort(i8* %base, i32 %n, i32 %size, i32 (i8*, i8*)* nocapture %cmp) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !628), !dbg !1528
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !629), !dbg !1528
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !630), !dbg !1528
  tail call void @llvm.dbg.value(metadata !{i32 (i8*, i8*)* %cmp}, i64 0, metadata !631), !dbg !1528
  %0 = load %struct.ngx_cycle_s** @ngx_cycle, align 4, !dbg !1529, !tbaa !729
  %log = getelementptr inbounds %struct.ngx_cycle_s* %0, i32 0, i32 2, !dbg !1529
  %1 = load volatile %struct.ngx_log_s** %log, align 4, !dbg !1529, !tbaa !729
  %call = tail call i8* @ngx_alloc(i32 %size, %struct.ngx_log_s* %1) nounwind, !dbg !1529
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !635), !dbg !1529
  %cmp1 = icmp eq i8* %call, null, !dbg !1530
  br i1 %cmp1, label %return, label %for.cond.preheader, !dbg !1530

for.cond.preheader:                               ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 %size), !dbg !1531
  %3 = zext i32 %size to i64, !dbg !1531
  %4 = zext i32 %n to i64, !dbg !1531
  %idx.neg = sub i32 0, %size, !dbg !1533
  %5 = extractvalue { i32, i1 } %2, 1, !dbg !1531
  br label %for.cond, !dbg !1531

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %base.pn = phi i8* [ %p1.0, %for.end ], [ %base, %for.cond.preheader ]
  %p1.0 = getelementptr inbounds i8* %base.pn, i32 %size, !dbg !1531
  %6 = extractvalue { i32, i1 } %2, 0, !dbg !1531
  br i1 %5, label %ioc_bb, label %cont, !dbg !1531

ioc_bb:                                           ; preds = %for.cond
  tail call void @__ioc_report_mul_overflow(i32 1427, i32 64, i8* getelementptr inbounds ([22 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @17, i32 0, i32 0), i64 %4, i64 %3, i8 5) nounwind, !dbg !1531
  br label %cont, !dbg !1531

cont:                                             ; preds = %for.cond, %ioc_bb
  %add.ptr2 = getelementptr inbounds i8* %base, i32 %6, !dbg !1531
  %cmp3 = icmp ult i8* %p1.0, %add.ptr2, !dbg !1531
  br i1 %cmp3, label %for.body, label %for.end16, !dbg !1531

for.body:                                         ; preds = %cont
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call, i8* %p1.0, i32 %size, i32 1, i1 false), !dbg !1536
  tail call void @llvm.dbg.value(metadata !{i8* %p1.0}, i64 0, metadata !634), !dbg !1533
  %cmp538 = icmp ugt i8* %p1.0, %base, !dbg !1533
  br i1 %cmp538, label %land.rhs, label %for.end, !dbg !1533

land.rhs:                                         ; preds = %for.body, %for.body9
  %p2.039 = phi i8* [ %add.ptr6, %for.body9 ], [ %p1.0, %for.body ]
  %add.ptr6 = getelementptr inbounds i8* %p2.039, i32 %idx.neg, !dbg !1533
  %call7 = tail call i32 %cmp(i8* %add.ptr6, i8* %call) nounwind, !dbg !1533
  %cmp8 = icmp sgt i32 %call7, 0, !dbg !1533
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %land.rhs
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p2.039, i8* %add.ptr6, i32 %size, i32 1, i1 false), !dbg !1537
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr6}, i64 0, metadata !634), !dbg !1533
  %cmp5 = icmp ugt i8* %add.ptr6, %base, !dbg !1533
  br i1 %cmp5, label %land.rhs, label %for.end, !dbg !1533

for.end:                                          ; preds = %for.body9, %land.rhs, %for.body
  %p2.0.lcssa = phi i8* [ %p1.0, %for.body ], [ %p2.039, %land.rhs ], [ %add.ptr6, %for.body9 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p2.0.lcssa, i8* %call, i32 %size, i32 1, i1 false), !dbg !1539
  br label %for.cond, !dbg !1531

for.end16:                                        ; preds = %cont
  tail call void @free(i8* %call) nounwind, !dbg !1540
  br label %return, !dbg !1541

return:                                           ; preds = %entry, %for.end16
  ret void, !dbg !1541
}

declare i8* @ngx_alloc(i32, %struct.ngx_log_s*)

declare void @free(i8* nocapture) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/core/ngx_string.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !35, metadata !37, metadata !669} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, metadata !"__anonymous_0x9d13b6c", metadata !5, i32 1177, i64 32, i64 32, i32 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__anonymous_0x9d13b6c] [line 1177, size 32, align 32, offset 0] [from ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_unescape_uri", metadata !"ngx_unescape_uri", metadata !"", metadata !5, i32 1170, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i8**, i32, i32)* @ngx_unescape_uri, null, null, metadata !18, i32 1171} ; [ DW_TAG_subprogram ] [line 1170] [def] [scope 1171] [ngx_unescape_uri]
!5 = metadata !{i32 786473, metadata !"src/core/ngx_string.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !13, metadata !15}
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!10 = metadata !{i32 786454, null, metadata !"u_char", metadata !5, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!11 = metadata !{i32 786454, null, metadata !"__u_char", metadata !5, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!12 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786454, null, metadata !"size_t", metadata !5, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!14 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!15 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !16, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!16 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !16, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!20 = metadata !{i32 786689, metadata !4, metadata !"dst", metadata !5, i32 16778386, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 1170]
!21 = metadata !{i32 786689, metadata !4, metadata !"src", metadata !5, i32 33555602, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1170]
!22 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 50332818, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1170]
!23 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 67110034, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1170]
!24 = metadata !{i32 786688, metadata !25, metadata !"d", metadata !5, i32 1172, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 1172]
!25 = metadata !{i32 786443, metadata !4, i32 1171, i32 0, metadata !5, i32 214} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!26 = metadata !{i32 786688, metadata !25, metadata !"s", metadata !5, i32 1173, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1173]
!27 = metadata !{i32 786688, metadata !25, metadata !"ch", metadata !5, i32 1174, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1174]
!28 = metadata !{i32 786688, metadata !25, metadata !"c", metadata !5, i32 1175, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1175]
!29 = metadata !{i32 786688, metadata !25, metadata !"decoded", metadata !5, i32 1176, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decoded] [line 1176]
!30 = metadata !{i32 786688, metadata !25, metadata !"state", metadata !5, i32 1177, metadata !3, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 1177]
!31 = metadata !{metadata !32, metadata !33, metadata !34}
!32 = metadata !{i32 786472, metadata !"sw_usual", i64 0} ; [ DW_TAG_enumerator ] [sw_usual :: 0]
!33 = metadata !{i32 786472, metadata !"sw_quoted", i64 1} ; [ DW_TAG_enumerator ] [sw_quoted :: 1]
!34 = metadata !{i32 786472, metadata !"sw_quoted_second", i64 2} ; [ DW_TAG_enumerator ] [sw_quoted_second :: 2]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !39, metadata !47, metadata !55, metadata !233, metadata !248, metadata !259, metadata !270, metadata !314, metadata !327, metadata !338, metadata !350, metadata !359, metadata !368, metadata !380, metadata !386, metadata !395, metadata !408, metadata !416, metadata !425, metadata !436, metadata !447, metadata !456, metadata !466, metadata !475, metadata !481, metadata !492, metadata !499, metadata !504, metadata !517, metadata !528, metadata !540, metadata !4, metadata !553, metadata !564, metadata !596, metadata !618, metadata !636, metadata !650}
!39 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strlow", metadata !"ngx_strlow", metadata !"", metadata !5, i32 10, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32)* @ngx_strlow, null, null, metadata !42, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ngx_strlow]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !9, metadata !9, metadata !13}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44, metadata !45, metadata !46}
!44 = metadata !{i32 786689, metadata !39, metadata !"dst", metadata !5, i32 16777226, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 10]
!45 = metadata !{i32 786689, metadata !39, metadata !"src", metadata !5, i32 33554442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 10]
!46 = metadata !{i32 786689, metadata !39, metadata !"n", metadata !5, i32 50331658, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 10]
!47 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_cpystrn", metadata !"ngx_cpystrn", metadata !"", metadata !5, i32 20, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ngx_cpystrn, null, null, metadata !50, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [ngx_cpystrn]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !9, metadata !9, metadata !9, metadata !13}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !52, metadata !53, metadata !54}
!52 = metadata !{i32 786689, metadata !47, metadata !"dst", metadata !5, i32 16777236, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 20]
!53 = metadata !{i32 786689, metadata !47, metadata !"src", metadata !5, i32 33554452, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 20]
!54 = metadata !{i32 786689, metadata !47, metadata !"n", metadata !5, i32 50331668, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 20]
!55 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_pstrdup", metadata !"ngx_pstrdup", metadata !"", metadata !5, i32 37, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_pool_s*, %struct.ngx_str_t*)* @ngx_pstrdup, null, null, metadata !227, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [ngx_pstrdup]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !9, metadata !58, metadata !226}
!58 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!59 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !5, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!60 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !16, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !72, metadata !73, metadata !74, metadata !206, metadata !213, metadata !225}
!62 = metadata !{i32 786445, metadata !60, metadata !"d", metadata !16, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!63 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !16, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, null, metadata !"", metadata !16, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !71}
!66 = metadata !{i32 786445, metadata !64, metadata !"last", metadata !16, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!67 = metadata !{i32 786445, metadata !64, metadata !"end", metadata !16, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!68 = metadata !{i32 786445, metadata !64, metadata !"next", metadata !16, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!70 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !16, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!71 = metadata !{i32 786445, metadata !64, metadata !"failed", metadata !16, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!72 = metadata !{i32 786445, metadata !60, metadata !"max", metadata !16, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!73 = metadata !{i32 786445, metadata !60, metadata !"current", metadata !16, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!74 = metadata !{i32 786445, metadata !60, metadata !"chain", metadata !16, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!76 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !16, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!77 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !78, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!78 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!79 = metadata !{metadata !80, metadata !203}
!80 = metadata !{i32 786445, metadata !77, metadata !"buf", metadata !78, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!82 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !78, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!83 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !78, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !92, metadata !93, metadata !94, metadata !95, metadata !98, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!85 = metadata !{i32 786445, metadata !83, metadata !"pos", metadata !78, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!86 = metadata !{i32 786445, metadata !83, metadata !"last", metadata !78, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!87 = metadata !{i32 786445, metadata !83, metadata !"file_pos", metadata !78, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!88 = metadata !{i32 786454, null, metadata !"off_t", metadata !78, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!89 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !78, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!90 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !78, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!91 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!92 = metadata !{i32 786445, metadata !83, metadata !"file_last", metadata !78, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!93 = metadata !{i32 786445, metadata !83, metadata !"start", metadata !78, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!94 = metadata !{i32 786445, metadata !83, metadata !"end", metadata !78, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!95 = metadata !{i32 786445, metadata !83, metadata !"tag", metadata !78, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !96} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!96 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !78, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!97 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!98 = metadata !{i32 786445, metadata !83, metadata !"file", metadata !78, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !99} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!99 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!100 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !78, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!101 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !102, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!102 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!103 = metadata !{metadata !104, metadata !107, metadata !114, metadata !155, metadata !156, metadata !157, metadata !188, metadata !189}
!104 = metadata !{i32 786445, metadata !101, metadata !"fd", metadata !102, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !105} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!105 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !102, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!106 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!107 = metadata !{i32 786445, metadata !101, metadata !"name", metadata !102, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!108 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !102, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!109 = metadata !{i32 786451, null, metadata !"", metadata !110, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!110 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786445, metadata !109, metadata !"len", metadata !110, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!113 = metadata !{i32 786445, metadata !109, metadata !"data", metadata !110, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!114 = metadata !{i32 786445, metadata !101, metadata !"info", metadata !102, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !115} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!115 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !102, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!116 = metadata !{i32 786451, null, metadata !"stat", metadata !117, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!117 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!118 = metadata !{metadata !119, metadata !123, metadata !125, metadata !128, metadata !130, metadata !132, metadata !134, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142, metadata !144, metadata !151, metadata !152, metadata !153}
!119 = metadata !{i32 786445, metadata !116, metadata !"st_dev", metadata !117, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!120 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !117, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!121 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !117, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!122 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!123 = metadata !{i32 786445, metadata !116, metadata !"__pad1", metadata !117, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!124 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!125 = metadata !{i32 786445, metadata !116, metadata !"__st_ino", metadata !117, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !126} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!126 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !117, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!127 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!128 = metadata !{i32 786445, metadata !116, metadata !"st_mode", metadata !117, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !129} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!129 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !117, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!130 = metadata !{i32 786445, metadata !116, metadata !"st_nlink", metadata !117, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !131} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!131 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !117, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!132 = metadata !{i32 786445, metadata !116, metadata !"st_uid", metadata !117, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !133} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!133 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !117, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!134 = metadata !{i32 786445, metadata !116, metadata !"st_gid", metadata !117, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !135} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!135 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !117, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!136 = metadata !{i32 786445, metadata !116, metadata !"st_rdev", metadata !117, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !120} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!137 = metadata !{i32 786445, metadata !116, metadata !"__pad2", metadata !117, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!138 = metadata !{i32 786445, metadata !116, metadata !"st_size", metadata !117, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !89} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!139 = metadata !{i32 786445, metadata !116, metadata !"st_blksize", metadata !117, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !140} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!140 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !117, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!141 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!142 = metadata !{i32 786445, metadata !116, metadata !"st_blocks", metadata !117, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !143} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!143 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !117, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!144 = metadata !{i32 786445, metadata !116, metadata !"st_atim", metadata !117, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !145} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!145 = metadata !{i32 786451, null, metadata !"timespec", metadata !146, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!146 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!147 = metadata !{metadata !148, metadata !150}
!148 = metadata !{i32 786445, metadata !145, metadata !"tv_sec", metadata !146, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !149} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!149 = metadata !{i32 786454, null, metadata !"__time_t", metadata !146, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!150 = metadata !{i32 786445, metadata !145, metadata !"tv_nsec", metadata !146, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!151 = metadata !{i32 786445, metadata !116, metadata !"st_mtim", metadata !117, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !145} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!152 = metadata !{i32 786445, metadata !116, metadata !"st_ctim", metadata !117, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !145} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!153 = metadata !{i32 786445, metadata !116, metadata !"st_ino", metadata !117, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !154} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!154 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !117, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!155 = metadata !{i32 786445, metadata !101, metadata !"offset", metadata !102, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !88} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!156 = metadata !{i32 786445, metadata !101, metadata !"sys_offset", metadata !102, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !88} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!157 = metadata !{i32 786445, metadata !101, metadata !"log", metadata !102, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !158} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!159 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !102, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!160 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !161, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!161 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!162 = metadata !{metadata !163, metadata !164, metadata !175, metadata !177, metadata !184, metadata !185}
!163 = metadata !{i32 786445, metadata !160, metadata !"log_level", metadata !161, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!164 = metadata !{i32 786445, metadata !160, metadata !"file", metadata !161, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !165} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!165 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!166 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !161, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!167 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !168, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!168 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!170 = metadata !{i32 786445, metadata !167, metadata !"fd", metadata !168, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !105} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!171 = metadata !{i32 786445, metadata !167, metadata !"name", metadata !168, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!172 = metadata !{i32 786445, metadata !167, metadata !"buffer", metadata !168, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!173 = metadata !{i32 786445, metadata !167, metadata !"pos", metadata !168, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!174 = metadata !{i32 786445, metadata !167, metadata !"last", metadata !168, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!175 = metadata !{i32 786445, metadata !160, metadata !"connection", metadata !161, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!176 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !161, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!177 = metadata !{i32 786445, metadata !160, metadata !"handler", metadata !161, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !178} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!178 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !161, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !9, metadata !182, metadata !9, metadata !13}
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!183 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !161, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!184 = metadata !{i32 786445, metadata !160, metadata !"data", metadata !161, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!185 = metadata !{i32 786445, metadata !160, metadata !"action", metadata !161, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !186} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!187 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!188 = metadata !{i32 786445, metadata !101, metadata !"valid_info", metadata !102, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !14} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!189 = metadata !{i32 786445, metadata !101, metadata !"directio", metadata !102, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !14} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!190 = metadata !{i32 786445, metadata !83, metadata !"shadow", metadata !78, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !81} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!191 = metadata !{i32 786445, metadata !83, metadata !"temporary", metadata !78, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!192 = metadata !{i32 786445, metadata !83, metadata !"memory", metadata !78, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !14} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!193 = metadata !{i32 786445, metadata !83, metadata !"mmap", metadata !78, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !14} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!194 = metadata !{i32 786445, metadata !83, metadata !"recycled", metadata !78, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !14} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!195 = metadata !{i32 786445, metadata !83, metadata !"in_file", metadata !78, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !14} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!196 = metadata !{i32 786445, metadata !83, metadata !"flush", metadata !78, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !14} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!197 = metadata !{i32 786445, metadata !83, metadata !"sync", metadata !78, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !14} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!198 = metadata !{i32 786445, metadata !83, metadata !"last_buf", metadata !78, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !14} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!199 = metadata !{i32 786445, metadata !83, metadata !"last_in_chain", metadata !78, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !14} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!200 = metadata !{i32 786445, metadata !83, metadata !"last_shadow", metadata !78, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !14} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!201 = metadata !{i32 786445, metadata !83, metadata !"temp_file", metadata !78, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !14} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!202 = metadata !{i32 786445, metadata !83, metadata !"num", metadata !78, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !106} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!203 = metadata !{i32 786445, metadata !77, metadata !"next", metadata !78, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !204} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!205 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !78, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!206 = metadata !{i32 786445, metadata !60, metadata !"large", metadata !16, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !207} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!207 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!208 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !16, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !209} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!209 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !16, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786445, metadata !209, metadata !"next", metadata !16, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!212 = metadata !{i32 786445, metadata !209, metadata !"alloc", metadata !16, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !97} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!213 = metadata !{i32 786445, metadata !60, metadata !"cleanup", metadata !16, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !214} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!215 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !16, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!216 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !16, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !223, metadata !224}
!218 = metadata !{i32 786445, metadata !216, metadata !"handler", metadata !16, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!219 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !16, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{null, metadata !97}
!223 = metadata !{i32 786445, metadata !216, metadata !"data", metadata !16, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !97} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!224 = metadata !{i32 786445, metadata !216, metadata !"next", metadata !16, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!225 = metadata !{i32 786445, metadata !60, metadata !"log", metadata !16, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !158} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!226 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!227 = metadata !{metadata !228}
!228 = metadata !{metadata !229, metadata !230, metadata !231}
!229 = metadata !{i32 786689, metadata !55, metadata !"pool", metadata !5, i32 16777253, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 37]
!230 = metadata !{i32 786689, metadata !55, metadata !"src", metadata !5, i32 33554469, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 37]
!231 = metadata !{i32 786688, metadata !232, metadata !"dst", metadata !5, i32 39, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 39]
!232 = metadata !{i32 786443, metadata !55, i32 38, i32 0, metadata !5, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!233 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_sprintf", metadata !"ngx_sprintf", metadata !"", metadata !5, i32 78, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, ...)* @ngx_sprintf, null, null, metadata !238, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [ngx_sprintf]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{metadata !9, metadata !9, metadata !236}
!236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!237 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!238 = metadata !{metadata !239}
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !244}
!240 = metadata !{i32 786689, metadata !233, metadata !"buf", metadata !5, i32 16777294, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 78]
!241 = metadata !{i32 786689, metadata !233, metadata !"fmt", metadata !5, i32 33554510, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 78]
!242 = metadata !{i32 786688, metadata !243, metadata !"p", metadata !5, i32 80, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 80]
!243 = metadata !{i32 786443, metadata !233, i32 79, i32 0, metadata !5, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!244 = metadata !{i32 786688, metadata !243, metadata !"args", metadata !5, i32 81, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 81]
!245 = metadata !{i32 786454, null, metadata !"va_list", metadata !5, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [va_list] [line 80, size 0, align 0, offset 0] [from __gnuc_va_list]
!246 = metadata !{i32 786454, null, metadata !"__gnuc_va_list", metadata !5, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!247 = metadata !{i32 786454, null, metadata !"__builtin_va_list", metadata !5, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 81, size 0, align 0, offset 0] [from ]
!248 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_snprintf", metadata !"ngx_snprintf", metadata !"", metadata !5, i32 88, metadata !249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i8*, ...)* @ngx_snprintf, null, null, metadata !251, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [ngx_snprintf]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{metadata !9, metadata !9, metadata !13, metadata !236}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !253, metadata !254, metadata !255, metadata !256, metadata !258}
!253 = metadata !{i32 786689, metadata !248, metadata !"buf", metadata !5, i32 16777304, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 88]
!254 = metadata !{i32 786689, metadata !248, metadata !"max", metadata !5, i32 33554520, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 88]
!255 = metadata !{i32 786689, metadata !248, metadata !"fmt", metadata !5, i32 50331736, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 88]
!256 = metadata !{i32 786688, metadata !257, metadata !"p", metadata !5, i32 90, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 90]
!257 = metadata !{i32 786443, metadata !248, i32 89, i32 0, metadata !5, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!258 = metadata !{i32 786688, metadata !257, metadata !"args", metadata !5, i32 91, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 91]
!259 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_slprintf", metadata !"ngx_slprintf", metadata !"", metadata !5, i32 98, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i8*, ...)* @ngx_slprintf, null, null, metadata !262, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [ngx_slprintf]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!261 = metadata !{metadata !9, metadata !9, metadata !9, metadata !236}
!262 = metadata !{metadata !263}
!263 = metadata !{metadata !264, metadata !265, metadata !266, metadata !267, metadata !269}
!264 = metadata !{i32 786689, metadata !259, metadata !"buf", metadata !5, i32 16777314, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 98]
!265 = metadata !{i32 786689, metadata !259, metadata !"last", metadata !5, i32 33554530, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 98]
!266 = metadata !{i32 786689, metadata !259, metadata !"fmt", metadata !5, i32 50331746, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 98]
!267 = metadata !{i32 786688, metadata !268, metadata !"p", metadata !5, i32 100, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 100]
!268 = metadata !{i32 786443, metadata !259, i32 99, i32 0, metadata !5, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!269 = metadata !{i32 786688, metadata !268, metadata !"args", metadata !5, i32 101, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 101]
!270 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_vslprintf", metadata !"ngx_vslprintf", metadata !"", metadata !5, i32 108, metadata !271, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i8*, i8*)* @ngx_vslprintf, null, null, metadata !273, i32 109} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 109] [ngx_vslprintf]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{metadata !9, metadata !9, metadata !9, metadata !236, metadata !245}
!273 = metadata !{metadata !274}
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !281, metadata !282, metadata !283, metadata !285, metadata !286, metadata !287, metadata !289, metadata !291, metadata !292, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!275 = metadata !{i32 786689, metadata !270, metadata !"buf", metadata !5, i32 16777324, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 108]
!276 = metadata !{i32 786689, metadata !270, metadata !"last", metadata !5, i32 33554540, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 108]
!277 = metadata !{i32 786689, metadata !270, metadata !"fmt", metadata !5, i32 50331756, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 108]
!278 = metadata !{i32 786689, metadata !270, metadata !"args", metadata !5, i32 67108972, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 108]
!279 = metadata !{i32 786688, metadata !280, metadata !"p", metadata !5, i32 110, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 110]
!280 = metadata !{i32 786443, metadata !270, i32 109, i32 0, metadata !5, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!281 = metadata !{i32 786688, metadata !280, metadata !"zero", metadata !5, i32 111, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zero] [line 111]
!282 = metadata !{i32 786688, metadata !280, metadata !"d", metadata !5, i32 112, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 112]
!283 = metadata !{i32 786688, metadata !280, metadata !"f", metadata !5, i32 113, metadata !284, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 113]
!284 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 32, offset 0, enc DW_ATE_float]
!285 = metadata !{i32 786688, metadata !280, metadata !"len", metadata !5, i32 114, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 114]
!286 = metadata !{i32 786688, metadata !280, metadata !"slen", metadata !5, i32 115, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 115]
!287 = metadata !{i32 786688, metadata !280, metadata !"i64", metadata !5, i32 116, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i64] [line 116]
!288 = metadata !{i32 786454, null, metadata !"int64_t", metadata !5, i32 198, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [int64_t] [line 198, size 0, align 0, offset 0] [from long long int]
!289 = metadata !{i32 786688, metadata !280, metadata !"ui64", metadata !5, i32 117, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui64] [line 117]
!290 = metadata !{i32 786454, null, metadata !"uint64_t", metadata !5, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [uint64_t] [line 59, size 0, align 0, offset 0] [from long long unsigned int]
!291 = metadata !{i32 786688, metadata !280, metadata !"frac", metadata !5, i32 118, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frac] [line 118]
!292 = metadata !{i32 786688, metadata !280, metadata !"ms", metadata !5, i32 119, metadata !293, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 119]
!293 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !5, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!294 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !5, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!295 = metadata !{i32 786688, metadata !280, metadata !"width", metadata !5, i32 120, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width] [line 120]
!296 = metadata !{i32 786688, metadata !280, metadata !"sign", metadata !5, i32 121, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 121]
!297 = metadata !{i32 786688, metadata !280, metadata !"hex", metadata !5, i32 122, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hex] [line 122]
!298 = metadata !{i32 786688, metadata !280, metadata !"max_width", metadata !5, i32 123, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_width] [line 123]
!299 = metadata !{i32 786688, metadata !280, metadata !"frac_width", metadata !5, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frac_width] [line 124]
!300 = metadata !{i32 786688, metadata !280, metadata !"scale", metadata !5, i32 125, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scale] [line 125]
!301 = metadata !{i32 786688, metadata !280, metadata !"n", metadata !5, i32 126, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 126]
!302 = metadata !{i32 786688, metadata !280, metadata !"v", metadata !5, i32 127, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 127]
!303 = metadata !{i32 786688, metadata !280, metadata !"vv", metadata !5, i32 128, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 128]
!304 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_variable_value_t]
!305 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !5, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!306 = metadata !{i32 786451, null, metadata !"", metadata !110, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!307 = metadata !{metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313}
!308 = metadata !{i32 786445, metadata !306, metadata !"len", metadata !110, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!309 = metadata !{i32 786445, metadata !306, metadata !"valid", metadata !110, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !14} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!310 = metadata !{i32 786445, metadata !306, metadata !"no_cacheable", metadata !110, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !14} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!311 = metadata !{i32 786445, metadata !306, metadata !"not_found", metadata !110, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !14} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!312 = metadata !{i32 786445, metadata !306, metadata !"escape", metadata !110, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !14} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!313 = metadata !{i32 786445, metadata !306, metadata !"data", metadata !110, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!314 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strcasecmp", metadata !"ngx_strcasecmp", metadata !"", metadata !5, i32 504, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_strcasecmp, null, null, metadata !320, i32 505} ; [ DW_TAG_subprogram ] [line 504] [def] [scope 505] [ngx_strcasecmp]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{metadata !317, metadata !9, metadata !9}
!317 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !5, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!318 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !5, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !319} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!319 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !5, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!320 = metadata !{metadata !321}
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !326}
!322 = metadata !{i32 786689, metadata !314, metadata !"s1", metadata !5, i32 16777720, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 504]
!323 = metadata !{i32 786689, metadata !314, metadata !"s2", metadata !5, i32 33554936, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 504]
!324 = metadata !{i32 786688, metadata !325, metadata !"c1", metadata !5, i32 506, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 506]
!325 = metadata !{i32 786443, metadata !314, i32 505, i32 0, metadata !5, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!326 = metadata !{i32 786688, metadata !325, metadata !"c2", metadata !5, i32 507, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 507]
!327 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strncasecmp", metadata !"ngx_strncasecmp", metadata !"", metadata !5, i32 523, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_strncasecmp, null, null, metadata !330, i32 524} ; [ DW_TAG_subprogram ] [line 523] [def] [scope 524] [ngx_strncasecmp]
!328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{metadata !317, metadata !9, metadata !9, metadata !13}
!330 = metadata !{metadata !331}
!331 = metadata !{metadata !332, metadata !333, metadata !334, metadata !335, metadata !337}
!332 = metadata !{i32 786689, metadata !327, metadata !"s1", metadata !5, i32 16777739, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 523]
!333 = metadata !{i32 786689, metadata !327, metadata !"s2", metadata !5, i32 33554955, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 523]
!334 = metadata !{i32 786689, metadata !327, metadata !"n", metadata !5, i32 50332171, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 523]
!335 = metadata !{i32 786688, metadata !336, metadata !"c1", metadata !5, i32 525, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 525]
!336 = metadata !{i32 786443, metadata !327, i32 524, i32 0, metadata !5, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!337 = metadata !{i32 786688, metadata !336, metadata !"c2", metadata !5, i32 526, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 526]
!338 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strnstr", metadata !"ngx_strnstr", metadata !"", metadata !5, i32 544, metadata !339, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ngx_strnstr, null, null, metadata !341, i32 545} ; [ DW_TAG_subprogram ] [line 544] [def] [scope 545] [ngx_strnstr]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!340 = metadata !{metadata !9, metadata !9, metadata !186, metadata !13}
!341 = metadata !{metadata !342}
!342 = metadata !{metadata !343, metadata !344, metadata !345, metadata !346, metadata !348, metadata !349}
!343 = metadata !{i32 786689, metadata !338, metadata !"s1", metadata !5, i32 16777760, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 544]
!344 = metadata !{i32 786689, metadata !338, metadata !"s2", metadata !5, i32 33554976, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 544]
!345 = metadata !{i32 786689, metadata !338, metadata !"len", metadata !5, i32 50332192, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 544]
!346 = metadata !{i32 786688, metadata !347, metadata !"c1", metadata !5, i32 546, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 546]
!347 = metadata !{i32 786443, metadata !338, i32 545, i32 0, metadata !5, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!348 = metadata !{i32 786688, metadata !347, metadata !"c2", metadata !5, i32 547, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 547]
!349 = metadata !{i32 786688, metadata !347, metadata !"n", metadata !5, i32 548, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 548]
!350 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strstrn", metadata !"ngx_strstrn", metadata !"", metadata !5, i32 573, metadata !339, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ngx_strstrn, null, null, metadata !351, i32 574} ; [ DW_TAG_subprogram ] [line 573] [def] [scope 574] [ngx_strstrn]
!351 = metadata !{metadata !352}
!352 = metadata !{metadata !353, metadata !354, metadata !355, metadata !356, metadata !358}
!353 = metadata !{i32 786689, metadata !350, metadata !"s1", metadata !5, i32 16777789, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 573]
!354 = metadata !{i32 786689, metadata !350, metadata !"s2", metadata !5, i32 33555005, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 573]
!355 = metadata !{i32 786689, metadata !350, metadata !"n", metadata !5, i32 50332221, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 573]
!356 = metadata !{i32 786688, metadata !357, metadata !"c1", metadata !5, i32 575, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 575]
!357 = metadata !{i32 786443, metadata !350, i32 574, i32 0, metadata !5, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!358 = metadata !{i32 786688, metadata !357, metadata !"c2", metadata !5, i32 576, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 576]
!359 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strcasestrn", metadata !"ngx_strcasestrn", metadata !"", metadata !5, i32 589, metadata !339, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ngx_strcasestrn, null, null, metadata !360, i32 590} ; [ DW_TAG_subprogram ] [line 589] [def] [scope 590] [ngx_strcasestrn]
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !362, metadata !363, metadata !364, metadata !365, metadata !367}
!362 = metadata !{i32 786689, metadata !359, metadata !"s1", metadata !5, i32 16777805, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 589]
!363 = metadata !{i32 786689, metadata !359, metadata !"s2", metadata !5, i32 33555021, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 589]
!364 = metadata !{i32 786689, metadata !359, metadata !"n", metadata !5, i32 50332237, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 589]
!365 = metadata !{i32 786688, metadata !366, metadata !"c1", metadata !5, i32 591, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 591]
!366 = metadata !{i32 786443, metadata !359, i32 590, i32 0, metadata !5, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!367 = metadata !{i32 786688, metadata !366, metadata !"c2", metadata !5, i32 592, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 592]
!368 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_strlcasestrn", metadata !"ngx_strlcasestrn", metadata !"", metadata !5, i32 612, metadata !369, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i8*, i32)* @ngx_strlcasestrn, null, null, metadata !371, i32 613} ; [ DW_TAG_subprogram ] [line 612] [def] [scope 613] [ngx_strlcasestrn]
!369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9, metadata !13}
!371 = metadata !{metadata !372}
!372 = metadata !{metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !379}
!373 = metadata !{i32 786689, metadata !368, metadata !"s1", metadata !5, i32 16777828, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 612]
!374 = metadata !{i32 786689, metadata !368, metadata !"last", metadata !5, i32 33555044, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 612]
!375 = metadata !{i32 786689, metadata !368, metadata !"s2", metadata !5, i32 50332260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 612]
!376 = metadata !{i32 786689, metadata !368, metadata !"n", metadata !5, i32 67109476, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 612]
!377 = metadata !{i32 786688, metadata !378, metadata !"c1", metadata !5, i32 614, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 614]
!378 = metadata !{i32 786443, metadata !368, i32 613, i32 0, metadata !5, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!379 = metadata !{i32 786688, metadata !378, metadata !"c2", metadata !5, i32 615, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 615]
!380 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_rstrncmp", metadata !"ngx_rstrncmp", metadata !"", metadata !5, i32 631, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_rstrncmp, null, null, metadata !381, i32 632} ; [ DW_TAG_subprogram ] [line 631] [def] [scope 632] [ngx_rstrncmp]
!381 = metadata !{metadata !382}
!382 = metadata !{metadata !383, metadata !384, metadata !385}
!383 = metadata !{i32 786689, metadata !380, metadata !"s1", metadata !5, i32 16777847, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 631]
!384 = metadata !{i32 786689, metadata !380, metadata !"s2", metadata !5, i32 33555063, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 631]
!385 = metadata !{i32 786689, metadata !380, metadata !"n", metadata !5, i32 50332279, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 631]
!386 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_rstrncasecmp", metadata !"ngx_rstrncasecmp", metadata !"", metadata !5, i32 648, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_rstrncasecmp, null, null, metadata !387, i32 649} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 649] [ngx_rstrncasecmp]
!387 = metadata !{metadata !388}
!388 = metadata !{metadata !389, metadata !390, metadata !391, metadata !392, metadata !394}
!389 = metadata !{i32 786689, metadata !386, metadata !"s1", metadata !5, i32 16777864, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 648]
!390 = metadata !{i32 786689, metadata !386, metadata !"s2", metadata !5, i32 33555080, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 648]
!391 = metadata !{i32 786689, metadata !386, metadata !"n", metadata !5, i32 50332296, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 648]
!392 = metadata !{i32 786688, metadata !393, metadata !"c1", metadata !5, i32 650, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 650]
!393 = metadata !{i32 786443, metadata !386, i32 649, i32 0, metadata !5, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!394 = metadata !{i32 786688, metadata !393, metadata !"c2", metadata !5, i32 651, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 651]
!395 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_memn2cmp", metadata !"ngx_memn2cmp", metadata !"", metadata !5, i32 675, metadata !396, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32, i32)* @ngx_memn2cmp, null, null, metadata !398, i32 676} ; [ DW_TAG_subprogram ] [line 675] [def] [scope 676] [ngx_memn2cmp]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!397 = metadata !{metadata !317, metadata !9, metadata !9, metadata !13, metadata !13}
!398 = metadata !{metadata !399}
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !406, metadata !407}
!400 = metadata !{i32 786689, metadata !395, metadata !"s1", metadata !5, i32 16777891, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 675]
!401 = metadata !{i32 786689, metadata !395, metadata !"s2", metadata !5, i32 33555107, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 675]
!402 = metadata !{i32 786689, metadata !395, metadata !"n1", metadata !5, i32 50332323, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n1] [line 675]
!403 = metadata !{i32 786689, metadata !395, metadata !"n2", metadata !5, i32 67109539, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n2] [line 675]
!404 = metadata !{i32 786688, metadata !405, metadata !"n", metadata !5, i32 677, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 677]
!405 = metadata !{i32 786443, metadata !395, i32 676, i32 0, metadata !5, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!406 = metadata !{i32 786688, metadata !405, metadata !"m", metadata !5, i32 678, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 678]
!407 = metadata !{i32 786688, metadata !405, metadata !"z", metadata !5, i32 679, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 679]
!408 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_dns_strcmp", metadata !"ngx_dns_strcmp", metadata !"", metadata !5, i32 695, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_dns_strcmp, null, null, metadata !409, i32 696} ; [ DW_TAG_subprogram ] [line 695] [def] [scope 696] [ngx_dns_strcmp]
!409 = metadata !{metadata !410}
!410 = metadata !{metadata !411, metadata !412, metadata !413, metadata !415}
!411 = metadata !{i32 786689, metadata !408, metadata !"s1", metadata !5, i32 16777911, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 695]
!412 = metadata !{i32 786689, metadata !408, metadata !"s2", metadata !5, i32 33555127, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 695]
!413 = metadata !{i32 786688, metadata !414, metadata !"c1", metadata !5, i32 697, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 697]
!414 = metadata !{i32 786443, metadata !408, i32 696, i32 0, metadata !5, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!415 = metadata !{i32 786688, metadata !414, metadata !"c2", metadata !5, i32 698, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 698]
!416 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_atoi", metadata !"ngx_atoi", metadata !"", metadata !5, i32 717, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_atoi, null, null, metadata !419, i32 718} ; [ DW_TAG_subprogram ] [line 717] [def] [scope 718] [ngx_atoi]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!418 = metadata !{metadata !317, metadata !9, metadata !13}
!419 = metadata !{metadata !420}
!420 = metadata !{metadata !421, metadata !422, metadata !423}
!421 = metadata !{i32 786689, metadata !416, metadata !"line", metadata !5, i32 16777933, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 717]
!422 = metadata !{i32 786689, metadata !416, metadata !"n", metadata !5, i32 33555149, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 717]
!423 = metadata !{i32 786688, metadata !424, metadata !"value", metadata !5, i32 719, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 719]
!424 = metadata !{i32 786443, metadata !416, i32 718, i32 0, metadata !5, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!425 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_atofp", metadata !"ngx_atofp", metadata !"", metadata !5, i32 738, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @ngx_atofp, null, null, metadata !428, i32 739} ; [ DW_TAG_subprogram ] [line 738] [def] [scope 739] [ngx_atofp]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!427 = metadata !{metadata !317, metadata !9, metadata !13, metadata !13}
!428 = metadata !{metadata !429}
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433, metadata !435}
!430 = metadata !{i32 786689, metadata !425, metadata !"line", metadata !5, i32 16777954, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 738]
!431 = metadata !{i32 786689, metadata !425, metadata !"n", metadata !5, i32 33555170, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 738]
!432 = metadata !{i32 786689, metadata !425, metadata !"point", metadata !5, i32 50332386, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [point] [line 738]
!433 = metadata !{i32 786688, metadata !434, metadata !"value", metadata !5, i32 740, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 740]
!434 = metadata !{i32 786443, metadata !425, i32 739, i32 0, metadata !5, i32 137} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!435 = metadata !{i32 786688, metadata !434, metadata !"dot", metadata !5, i32 741, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dot] [line 741]
!436 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_atosz", metadata !"ngx_atosz", metadata !"", metadata !5, i32 774, metadata !437, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_atosz, null, null, metadata !441, i32 775} ; [ DW_TAG_subprogram ] [line 774] [def] [scope 775] [ngx_atosz]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!438 = metadata !{metadata !439, metadata !9, metadata !13}
!439 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !5, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!440 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !5, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !443, metadata !444, metadata !445}
!443 = metadata !{i32 786689, metadata !436, metadata !"line", metadata !5, i32 16777990, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 774]
!444 = metadata !{i32 786689, metadata !436, metadata !"n", metadata !5, i32 33555206, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 774]
!445 = metadata !{i32 786688, metadata !446, metadata !"value", metadata !5, i32 776, metadata !439, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 776]
!446 = metadata !{i32 786443, metadata !436, i32 775, i32 0, metadata !5, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!447 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_atoof", metadata !"ngx_atoof", metadata !"", metadata !5, i32 794, metadata !448, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i32)* @ngx_atoof, null, null, metadata !450, i32 795} ; [ DW_TAG_subprogram ] [line 794] [def] [scope 795] [ngx_atoof]
!448 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!449 = metadata !{metadata !88, metadata !9, metadata !13}
!450 = metadata !{metadata !451}
!451 = metadata !{metadata !452, metadata !453, metadata !454}
!452 = metadata !{i32 786689, metadata !447, metadata !"line", metadata !5, i32 16778010, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 794]
!453 = metadata !{i32 786689, metadata !447, metadata !"n", metadata !5, i32 33555226, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 794]
!454 = metadata !{i32 786688, metadata !455, metadata !"value", metadata !5, i32 796, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 796]
!455 = metadata !{i32 786443, metadata !447, i32 795, i32 0, metadata !5, i32 155} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!456 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_atotm", metadata !"ngx_atotm", metadata !"", metadata !5, i32 814, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_atotm, null, null, metadata !460, i32 815} ; [ DW_TAG_subprogram ] [line 814] [def] [scope 815] [ngx_atotm]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!458 = metadata !{metadata !459, metadata !9, metadata !13}
!459 = metadata !{i32 786454, null, metadata !"time_t", metadata !5, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!460 = metadata !{metadata !461}
!461 = metadata !{metadata !462, metadata !463, metadata !464}
!462 = metadata !{i32 786689, metadata !456, metadata !"line", metadata !5, i32 16778030, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 814]
!463 = metadata !{i32 786689, metadata !456, metadata !"n", metadata !5, i32 33555246, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 814]
!464 = metadata !{i32 786688, metadata !465, metadata !"value", metadata !5, i32 816, metadata !459, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 816]
!465 = metadata !{i32 786443, metadata !456, i32 815, i32 0, metadata !5, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!466 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_hextoi", metadata !"ngx_hextoi", metadata !"", metadata !5, i32 834, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_hextoi, null, null, metadata !467, i32 835} ; [ DW_TAG_subprogram ] [line 834] [def] [scope 835] [ngx_hextoi]
!467 = metadata !{metadata !468}
!468 = metadata !{metadata !469, metadata !470, metadata !471, metadata !473, metadata !474}
!469 = metadata !{i32 786689, metadata !466, metadata !"line", metadata !5, i32 16778050, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 834]
!470 = metadata !{i32 786689, metadata !466, metadata !"n", metadata !5, i32 33555266, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 834]
!471 = metadata !{i32 786688, metadata !472, metadata !"c", metadata !5, i32 836, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 836]
!472 = metadata !{i32 786443, metadata !466, i32 835, i32 0, metadata !5, i32 169} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!473 = metadata !{i32 786688, metadata !472, metadata !"ch", metadata !5, i32 837, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 837]
!474 = metadata !{i32 786688, metadata !472, metadata !"value", metadata !5, i32 838, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 838]
!475 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_hex_dump", metadata !"ngx_hex_dump", metadata !"", metadata !5, i32 863, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @ngx_hex_dump, null, null, metadata !476, i32 864} ; [ DW_TAG_subprogram ] [line 863] [def] [scope 864] [ngx_hex_dump]
!476 = metadata !{metadata !477}
!477 = metadata !{metadata !478, metadata !479, metadata !480}
!478 = metadata !{i32 786689, metadata !475, metadata !"dst", metadata !5, i32 16778079, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 863]
!479 = metadata !{i32 786689, metadata !475, metadata !"src", metadata !5, i32 33555295, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 863]
!480 = metadata !{i32 786689, metadata !475, metadata !"len", metadata !5, i32 50332511, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 863]
!481 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_encode_base64", metadata !"ngx_encode_base64", metadata !"", metadata !5, i32 873, metadata !482, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_encode_base64, null, null, metadata !484, i32 874} ; [ DW_TAG_subprogram ] [line 873] [def] [scope 874] [ngx_encode_base64]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!483 = metadata !{null, metadata !226, metadata !226}
!484 = metadata !{metadata !485}
!485 = metadata !{metadata !486, metadata !487, metadata !488, metadata !490, metadata !491}
!486 = metadata !{i32 786689, metadata !481, metadata !"dst", metadata !5, i32 16778089, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 873]
!487 = metadata !{i32 786689, metadata !481, metadata !"src", metadata !5, i32 33555305, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 873]
!488 = metadata !{i32 786688, metadata !489, metadata !"d", metadata !5, i32 875, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 875]
!489 = metadata !{i32 786443, metadata !481, i32 874, i32 0, metadata !5, i32 179} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!490 = metadata !{i32 786688, metadata !489, metadata !"s", metadata !5, i32 876, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 876]
!491 = metadata !{i32 786688, metadata !489, metadata !"len", metadata !5, i32 877, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 877]
!492 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_decode_base64", metadata !"ngx_decode_base64", metadata !"", metadata !5, i32 905, metadata !493, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_decode_base64, null, null, metadata !495, i32 906} ; [ DW_TAG_subprogram ] [line 905] [def] [scope 906] [ngx_decode_base64]
!493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{metadata !317, metadata !226, metadata !226}
!495 = metadata !{metadata !496}
!496 = metadata !{metadata !497, metadata !498}
!497 = metadata !{i32 786689, metadata !492, metadata !"dst", metadata !5, i32 16778121, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 905]
!498 = metadata !{i32 786689, metadata !492, metadata !"src", metadata !5, i32 33555337, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 905]
!499 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_decode_base64url", metadata !"ngx_decode_base64url", metadata !"", metadata !5, i32 911, metadata !493, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_decode_base64url, null, null, metadata !500, i32 912} ; [ DW_TAG_subprogram ] [line 911] [def] [scope 912] [ngx_decode_base64url]
!500 = metadata !{metadata !501}
!501 = metadata !{metadata !502, metadata !503}
!502 = metadata !{i32 786689, metadata !499, metadata !"dst", metadata !5, i32 16778127, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 911]
!503 = metadata !{i32 786689, metadata !499, metadata !"src", metadata !5, i32 33555343, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 911]
!504 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_utf8_decode", metadata !"ngx_utf8_decode", metadata !"", metadata !5, i32 960, metadata !505, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i32)* @ngx_utf8_decode, null, null, metadata !508, i32 961} ; [ DW_TAG_subprogram ] [line 960] [def] [scope 961] [ngx_utf8_decode]
!505 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!506 = metadata !{metadata !507, metadata !8, metadata !13}
!507 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !5, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!508 = metadata !{metadata !509}
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !514, metadata !515, metadata !516}
!510 = metadata !{i32 786689, metadata !504, metadata !"p", metadata !5, i32 16778176, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 960]
!511 = metadata !{i32 786689, metadata !504, metadata !"n", metadata !5, i32 33555392, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 960]
!512 = metadata !{i32 786688, metadata !513, metadata !"len", metadata !5, i32 962, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 962]
!513 = metadata !{i32 786443, metadata !504, i32 961, i32 0, metadata !5, i32 186} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!514 = metadata !{i32 786688, metadata !513, metadata !"u", metadata !5, i32 963, metadata !507, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 963]
!515 = metadata !{i32 786688, metadata !513, metadata !"i", metadata !5, i32 964, metadata !507, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 964]
!516 = metadata !{i32 786688, metadata !513, metadata !"valid", metadata !5, i32 965, metadata !507, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valid] [line 965]
!517 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_utf8_length", metadata !"ngx_utf8_length", metadata !"", metadata !5, i32 1004, metadata !518, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_utf8_length, null, null, metadata !520, i32 1005} ; [ DW_TAG_subprogram ] [line 1004] [def] [scope 1005] [ngx_utf8_length]
!518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!519 = metadata !{metadata !13, metadata !9, metadata !13}
!520 = metadata !{metadata !521}
!521 = metadata !{metadata !522, metadata !523, metadata !524, metadata !526, metadata !527}
!522 = metadata !{i32 786689, metadata !517, metadata !"p", metadata !5, i32 16778220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1004]
!523 = metadata !{i32 786689, metadata !517, metadata !"n", metadata !5, i32 33555436, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1004]
!524 = metadata !{i32 786688, metadata !525, metadata !"c", metadata !5, i32 1006, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1006]
!525 = metadata !{i32 786443, metadata !517, i32 1005, i32 0, metadata !5, i32 195} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!526 = metadata !{i32 786688, metadata !525, metadata !"last", metadata !5, i32 1007, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1007]
!527 = metadata !{i32 786688, metadata !525, metadata !"len", metadata !5, i32 1008, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1008]
!528 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_utf8_cpystrn", metadata !"ngx_utf8_cpystrn", metadata !"", metadata !5, i32 1024, metadata !529, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32, i32)* @ngx_utf8_cpystrn, null, null, metadata !531, i32 1025} ; [ DW_TAG_subprogram ] [line 1024] [def] [scope 1025] [ngx_utf8_cpystrn]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!530 = metadata !{metadata !9, metadata !9, metadata !9, metadata !13, metadata !13}
!531 = metadata !{metadata !532}
!532 = metadata !{metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !539}
!533 = metadata !{i32 786689, metadata !528, metadata !"dst", metadata !5, i32 16778240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 1024]
!534 = metadata !{i32 786689, metadata !528, metadata !"src", metadata !5, i32 33555456, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1024]
!535 = metadata !{i32 786689, metadata !528, metadata !"n", metadata !5, i32 50332672, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1024]
!536 = metadata !{i32 786689, metadata !528, metadata !"len", metadata !5, i32 67109888, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1024]
!537 = metadata !{i32 786688, metadata !538, metadata !"c", metadata !5, i32 1026, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1026]
!538 = metadata !{i32 786443, metadata !528, i32 1025, i32 0, metadata !5, i32 200} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!539 = metadata !{i32 786688, metadata !538, metadata !"next", metadata !5, i32 1027, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 1027]
!540 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_escape_uri", metadata !"ngx_escape_uri", metadata !"", metadata !5, i32 1057, metadata !541, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32, i32)* @ngx_escape_uri, null, null, metadata !543, i32 1058} ; [ DW_TAG_subprogram ] [line 1057] [def] [scope 1058] [ngx_escape_uri]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!542 = metadata !{metadata !17, metadata !9, metadata !9, metadata !13, metadata !15}
!543 = metadata !{metadata !544}
!544 = metadata !{metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !551}
!545 = metadata !{i32 786689, metadata !540, metadata !"dst", metadata !5, i32 16778273, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 1057]
!546 = metadata !{i32 786689, metadata !540, metadata !"src", metadata !5, i32 33555489, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1057]
!547 = metadata !{i32 786689, metadata !540, metadata !"size", metadata !5, i32 50332705, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1057]
!548 = metadata !{i32 786689, metadata !540, metadata !"type", metadata !5, i32 67109921, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1057]
!549 = metadata !{i32 786688, metadata !550, metadata !"n", metadata !5, i32 1059, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1059]
!550 = metadata !{i32 786443, metadata !540, i32 1058, i32 0, metadata !5, i32 207} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!551 = metadata !{i32 786688, metadata !550, metadata !"escape", metadata !5, i32 1060, metadata !552, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [escape] [line 1060]
!552 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !507} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint32_t]
!553 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_escape_html", metadata !"ngx_escape_html", metadata !"", metadata !5, i32 1272, metadata !554, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_escape_html, null, null, metadata !556, i32 1273} ; [ DW_TAG_subprogram ] [line 1272] [def] [scope 1273] [ngx_escape_html]
!554 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!555 = metadata !{metadata !17, metadata !9, metadata !9, metadata !13}
!556 = metadata !{metadata !557}
!557 = metadata !{metadata !558, metadata !559, metadata !560, metadata !561, metadata !563}
!558 = metadata !{i32 786689, metadata !553, metadata !"dst", metadata !5, i32 16778488, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 1272]
!559 = metadata !{i32 786689, metadata !553, metadata !"src", metadata !5, i32 33555704, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1272]
!560 = metadata !{i32 786689, metadata !553, metadata !"size", metadata !5, i32 50332920, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1272]
!561 = metadata !{i32 786688, metadata !562, metadata !"ch", metadata !5, i32 1274, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1274]
!562 = metadata !{i32 786443, metadata !553, i32 1273, i32 0, metadata !5, i32 233} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!563 = metadata !{i32 786688, metadata !562, metadata !"len", metadata !5, i32 1275, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1275]
!564 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_str_rbtree_insert_value", metadata !"ngx_str_rbtree_insert_value", metadata !"", metadata !5, i32 1356, metadata !565, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_str_rbtree_insert_value, null, null, metadata !580, i32 1357} ; [ DW_TAG_subprogram ] [line 1356] [def] [scope 1357] [ngx_str_rbtree_insert_value]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!566 = metadata !{null, metadata !567, metadata !567, metadata !567}
!567 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !568} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!568 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !5, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!569 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !570, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !571, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!570 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!571 = metadata !{metadata !572, metadata !573, metadata !576, metadata !577, metadata !578, metadata !579}
!572 = metadata !{i32 786445, metadata !569, metadata !"key", metadata !570, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !294} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!573 = metadata !{i32 786445, metadata !569, metadata !"left", metadata !570, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !574} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!574 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !575} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!575 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !570, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!576 = metadata !{i32 786445, metadata !569, metadata !"right", metadata !570, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !574} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!577 = metadata !{i32 786445, metadata !569, metadata !"parent", metadata !570, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !574} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!578 = metadata !{i32 786445, metadata !569, metadata !"color", metadata !570, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!579 = metadata !{i32 786445, metadata !569, metadata !"data", metadata !570, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !10} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!580 = metadata !{metadata !581}
!581 = metadata !{metadata !582, metadata !583, metadata !584, metadata !585, metadata !593, metadata !594}
!582 = metadata !{i32 786689, metadata !564, metadata !"temp", metadata !5, i32 16778572, metadata !567, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [temp] [line 1356]
!583 = metadata !{i32 786689, metadata !564, metadata !"node", metadata !5, i32 33555788, metadata !567, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 1356]
!584 = metadata !{i32 786689, metadata !564, metadata !"sentinel", metadata !5, i32 50333004, metadata !567, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sentinel] [line 1356]
!585 = metadata !{i32 786688, metadata !586, metadata !"n", metadata !5, i32 1358, metadata !587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1358]
!586 = metadata !{i32 786443, metadata !564, i32 1357, i32 0, metadata !5, i32 248} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!587 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !588} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_node_t]
!588 = metadata !{i32 786454, null, metadata !"ngx_str_node_t", metadata !5, i32 213, i64 0, i64 0, i64 0, i32 0, metadata !589} ; [ DW_TAG_typedef ] [ngx_str_node_t] [line 213, size 0, align 0, offset 0] [from ]
!589 = metadata !{i32 786451, null, metadata !"", metadata !110, i32 210, i64 224, i64 32, i32 0, i32 0, null, metadata !590, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 210, size 224, align 32, offset 0] [from ]
!590 = metadata !{metadata !591, metadata !592}
!591 = metadata !{i32 786445, metadata !589, metadata !"node", metadata !110, i32 211, i64 160, i64 32, i64 0, i32 0, metadata !568} ; [ DW_TAG_member ] [node] [line 211, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!592 = metadata !{i32 786445, metadata !589, metadata !"str", metadata !110, i32 212, i64 64, i64 32, i64 160, i32 0, metadata !108} ; [ DW_TAG_member ] [str] [line 212, size 64, align 32, offset 160] [from ngx_str_t]
!593 = metadata !{i32 786688, metadata !586, metadata !"t", metadata !5, i32 1359, metadata !587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 1359]
!594 = metadata !{i32 786688, metadata !586, metadata !"p", metadata !5, i32 1360, metadata !595, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1360]
!595 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!596 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_str_rbtree_lookup", metadata !"ngx_str_rbtree_lookup", metadata !"", metadata !5, i32 1385, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ngx_str_node_t* (%struct.ngx_rbtree_s*, %struct.ngx_str_t*, i32)* @ngx_str_rbtree_lookup, null, null, metadata !608, i32 1386} ; [ DW_TAG_subprogram ] [line 1385] [def] [scope 1386] [ngx_str_rbtree_lookup]
!597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!598 = metadata !{metadata !587, metadata !599, metadata !226, metadata !507}
!599 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !600} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_t]
!600 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !5, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !601} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!601 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !570, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!602 = metadata !{metadata !603, metadata !604, metadata !605}
!603 = metadata !{i32 786445, metadata !601, metadata !"root", metadata !570, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!604 = metadata !{i32 786445, metadata !601, metadata !"sentinel", metadata !570, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !567} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!605 = metadata !{i32 786445, metadata !601, metadata !"insert", metadata !570, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !606} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!606 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !570, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!608 = metadata !{metadata !609}
!609 = metadata !{metadata !610, metadata !611, metadata !612, metadata !613, metadata !615, metadata !616, metadata !617}
!610 = metadata !{i32 786689, metadata !596, metadata !"rbtree", metadata !5, i32 16778601, metadata !599, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rbtree] [line 1385]
!611 = metadata !{i32 786689, metadata !596, metadata !"val", metadata !5, i32 33555817, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 1385]
!612 = metadata !{i32 786689, metadata !596, metadata !"hash", metadata !5, i32 50333033, metadata !507, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 1385]
!613 = metadata !{i32 786688, metadata !614, metadata !"rc", metadata !5, i32 1387, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1387]
!614 = metadata !{i32 786443, metadata !596, i32 1386, i32 0, metadata !5, i32 255} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!615 = metadata !{i32 786688, metadata !614, metadata !"n", metadata !5, i32 1388, metadata !587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1388]
!616 = metadata !{i32 786688, metadata !614, metadata !"node", metadata !5, i32 1389, metadata !567, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 1389]
!617 = metadata !{i32 786688, metadata !614, metadata !"sentinel", metadata !5, i32 1390, metadata !567, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 1390]
!618 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_sort", metadata !"ngx_sort", metadata !"", metadata !5, i32 1418, metadata !619, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32 (i8*, i8*)*)* @ngx_sort, null, null, metadata !626, i32 1419} ; [ DW_TAG_subprogram ] [line 1418] [def] [scope 1419] [ngx_sort]
!619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!620 = metadata !{null, metadata !97, metadata !13, metadata !13, metadata !621}
!621 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !622} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!623 = metadata !{metadata !317, metadata !624, metadata !624}
!624 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!625 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!626 = metadata !{metadata !627}
!627 = metadata !{metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !634, metadata !635}
!628 = metadata !{i32 786689, metadata !618, metadata !"base", metadata !5, i32 16778634, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 1418]
!629 = metadata !{i32 786689, metadata !618, metadata !"n", metadata !5, i32 33555850, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1418]
!630 = metadata !{i32 786689, metadata !618, metadata !"size", metadata !5, i32 50333066, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1418]
!631 = metadata !{i32 786689, metadata !618, metadata !"cmp", metadata !5, i32 67110282, metadata !621, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmp] [line 1418]
!632 = metadata !{i32 786688, metadata !633, metadata !"p1", metadata !5, i32 1420, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 1420]
!633 = metadata !{i32 786443, metadata !618, i32 1419, i32 0, metadata !5, i32 261} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!634 = metadata !{i32 786688, metadata !633, metadata !"p2", metadata !5, i32 1421, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 1421]
!635 = metadata !{i32 786688, metadata !633, metadata !"p", metadata !5, i32 1422, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1422]
!636 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_decode_base64_internal", metadata !"ngx_decode_base64_internal", metadata !"", metadata !5, i32 917, metadata !637, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_str_t*, %struct.ngx_str_t*, i8*)* @ngx_decode_base64_internal, null, null, metadata !641, i32 918} ; [ DW_TAG_subprogram ] [line 917] [local] [def] [scope 918] [ngx_decode_base64_internal]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!638 = metadata !{metadata !317, metadata !226, metadata !226, metadata !639}
!639 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!640 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from u_char]
!641 = metadata !{metadata !642}
!642 = metadata !{metadata !643, metadata !644, metadata !645, metadata !646, metadata !648, metadata !649}
!643 = metadata !{i32 786689, metadata !636, metadata !"dst", metadata !5, i32 16778133, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 917]
!644 = metadata !{i32 786689, metadata !636, metadata !"src", metadata !5, i32 33555349, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 917]
!645 = metadata !{i32 786689, metadata !636, metadata !"basis", metadata !5, i32 50332565, metadata !639, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basis] [line 917]
!646 = metadata !{i32 786688, metadata !647, metadata !"len", metadata !5, i32 919, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 919]
!647 = metadata !{i32 786443, metadata !636, i32 918, i32 0, metadata !5, i32 267} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!648 = metadata !{i32 786688, metadata !647, metadata !"d", metadata !5, i32 920, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 920]
!649 = metadata !{i32 786688, metadata !647, metadata !"s", metadata !5, i32 921, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 921]
!650 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_sprintf_num", metadata !"ngx_sprintf_num", metadata !"", metadata !5, i32 432, metadata !651, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64, i8, i32, i32)* @ngx_sprintf_num, null, null, metadata !653, i32 433} ; [ DW_TAG_subprogram ] [line 432] [local] [def] [scope 433] [ngx_sprintf_num]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!652 = metadata !{metadata !9, metadata !9, metadata !9, metadata !290, metadata !10, metadata !15, metadata !15}
!653 = metadata !{metadata !654}
!654 = metadata !{metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !663, metadata !667, metadata !668}
!655 = metadata !{i32 786689, metadata !650, metadata !"buf", metadata !5, i32 16777648, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 432]
!656 = metadata !{i32 786689, metadata !650, metadata !"last", metadata !5, i32 33554864, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 432]
!657 = metadata !{i32 786689, metadata !650, metadata !"ui64", metadata !5, i32 50332080, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ui64] [line 432]
!658 = metadata !{i32 786689, metadata !650, metadata !"zero", metadata !5, i32 67109296, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zero] [line 432]
!659 = metadata !{i32 786689, metadata !650, metadata !"hexadecimal", metadata !5, i32 83886512, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hexadecimal] [line 432]
!660 = metadata !{i32 786689, metadata !650, metadata !"width", metadata !5, i32 100663728, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 432]
!661 = metadata !{i32 786688, metadata !662, metadata !"p", metadata !5, i32 434, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 434]
!662 = metadata !{i32 786443, metadata !650, i32 433, i32 0, metadata !5, i32 276} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!663 = metadata !{i32 786688, metadata !662, metadata !"temp", metadata !5, i32 435, metadata !664, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 435]
!664 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 168, i64 8, i32 0, i32 0, metadata !10, metadata !665, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 168, align 8, offset 0] [from u_char]
!665 = metadata !{metadata !666}
!666 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 20]
!667 = metadata !{i32 786688, metadata !662, metadata !"len", metadata !5, i32 440, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 440]
!668 = metadata !{i32 786688, metadata !662, metadata !"ui32", metadata !5, i32 441, metadata !507, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui32] [line 441]
!669 = metadata !{metadata !670}
!670 = metadata !{metadata !671, metadata !675, metadata !679, metadata !683, metadata !684, metadata !685, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !698, metadata !699}
!671 = metadata !{i32 786484, i32 0, metadata !475, metadata !"hex", metadata !"hex", metadata !"", metadata !5, i32 865, metadata !672, i32 1, i32 1, [17 x i8]* @ngx_sprintf_num.hex} ; [ DW_TAG_variable ] [hex] [line 865] [local] [def]
!672 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 136, i64 8, i32 0, i32 0, metadata !10, metadata !673, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 136, align 8, offset 0] [from u_char]
!673 = metadata !{metadata !674}
!674 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 16]
!675 = metadata !{i32 786484, i32 0, metadata !481, metadata !"basis64", metadata !"basis64", metadata !"", metadata !5, i32 878, metadata !676, i32 1, i32 1, [65 x i8]* @ngx_encode_base64.basis64} ; [ DW_TAG_variable ] [basis64] [line 878] [local] [def]
!676 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 520, i64 8, i32 0, i32 0, metadata !10, metadata !677, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 520, align 8, offset 0] [from u_char]
!677 = metadata !{metadata !678}
!678 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 64]
!679 = metadata !{i32 786484, i32 0, metadata !492, metadata !"basis64", metadata !"basis64", metadata !"", metadata !5, i32 907, metadata !680, i32 1, i32 1, [256 x i8]* @ngx_decode_base64.basis64} ; [ DW_TAG_variable ] [basis64] [line 907] [local] [def]
!680 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !681, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from u_char]
!681 = metadata !{metadata !682}
!682 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ] [0, 255]
!683 = metadata !{i32 786484, i32 0, metadata !499, metadata !"basis64", metadata !"basis64", metadata !"", metadata !5, i32 913, metadata !680, i32 1, i32 1, [256 x i8]* @ngx_decode_base64url.basis64} ; [ DW_TAG_variable ] [basis64] [line 913] [local] [def]
!684 = metadata !{i32 786484, i32 0, metadata !540, metadata !"hex", metadata !"hex", metadata !"", metadata !5, i32 1061, metadata !672, i32 1, i32 1, [17 x i8]* @ngx_sprintf_num.hex} ; [ DW_TAG_variable ] [hex] [line 1061] [local] [def]
!685 = metadata !{i32 786484, i32 0, metadata !540, metadata !"uri", metadata !"uri", metadata !"", metadata !5, i32 1063, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.uri} ; [ DW_TAG_variable ] [uri] [line 1063] [local] [def]
!686 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !507, metadata !687, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from uint32_t]
!687 = metadata !{metadata !688}
!688 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 7]
!689 = metadata !{i32 786484, i32 0, metadata !540, metadata !"args", metadata !"args", metadata !"", metadata !5, i32 1076, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.args} ; [ DW_TAG_variable ] [args] [line 1076] [local] [def]
!690 = metadata !{i32 786484, i32 0, metadata !540, metadata !"uri_component", metadata !"uri_component", metadata !"", metadata !5, i32 1089, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.uri_component} ; [ DW_TAG_variable ] [uri_component] [line 1089] [local] [def]
!691 = metadata !{i32 786484, i32 0, metadata !540, metadata !"html", metadata !"html", metadata !"", metadata !5, i32 1102, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.html} ; [ DW_TAG_variable ] [html] [line 1102] [local] [def]
!692 = metadata !{i32 786484, i32 0, metadata !540, metadata !"refresh", metadata !"refresh", metadata !"", metadata !5, i32 1115, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.refresh} ; [ DW_TAG_variable ] [refresh] [line 1115] [local] [def]
!693 = metadata !{i32 786484, i32 0, metadata !540, metadata !"memcached", metadata !"memcached", metadata !"", metadata !5, i32 1128, metadata !686, i32 1, i32 1, [8 x i32]* @ngx_escape_uri.memcached} ; [ DW_TAG_variable ] [memcached] [line 1128] [local] [def]
!694 = metadata !{i32 786484, i32 0, metadata !540, metadata !"map", metadata !"map", metadata !"", metadata !5, i32 1141, metadata !695, i32 1, i32 1, [7 x i32*]* @ngx_escape_uri.map} ; [ DW_TAG_variable ] [map] [line 1141] [local] [def]
!695 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 32, i32 0, i32 0, metadata !552, metadata !696, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!696 = metadata !{metadata !697}
!697 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 6]
!698 = metadata !{i32 786484, i32 0, metadata !650, metadata !"hex", metadata !"hex", metadata !"", metadata !5, i32 442, metadata !672, i32 1, i32 1, [17 x i8]* @ngx_sprintf_num.hex} ; [ DW_TAG_variable ] [hex] [line 442] [local] [def]
!699 = metadata !{i32 786484, i32 0, metadata !650, metadata !"HEX", metadata !"HEX", metadata !"", metadata !5, i32 443, metadata !672, i32 1, i32 1, [17 x i8]* @ngx_sprintf_num.HEX} ; [ DW_TAG_variable ] [HEX] [line 443] [local] [def]
!700 = metadata !{i32 10, i32 0, metadata !39, null}
!701 = metadata !{i32 12, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !39, i32 11, i32 0, metadata !5, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!703 = metadata !{i32 13, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !702, i32 12, i32 0, metadata !5, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!705 = metadata !{metadata !"omnipotent char", metadata !706}
!706 = metadata !{metadata !"Simple C/C++ TBAA"}
!707 = metadata !{i32 14, i32 0, metadata !704, null}
!708 = metadata !{i32 15, i32 0, metadata !704, null}
!709 = metadata !{i32 16, i32 0, metadata !704, null}
!710 = metadata !{i32 18, i32 0, metadata !702, null}
!711 = metadata !{i32 20, i32 0, metadata !47, null}
!712 = metadata !{i32 22, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !47, i32 21, i32 0, metadata !5, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!714 = metadata !{i32 25, i32 0, metadata !713, null}
!715 = metadata !{i32 26, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !713, i32 25, i32 0, metadata !5, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!717 = metadata !{i32 27, i32 0, metadata !716, null}
!718 = metadata !{i32 30, i32 0, metadata !716, null}
!719 = metadata !{i32 31, i32 0, metadata !716, null}
!720 = metadata !{i32 32, i32 0, metadata !716, null}
!721 = metadata !{i32 33, i32 0, metadata !713, null}
!722 = metadata !{i32 34, i32 0, metadata !713, null}
!723 = metadata !{i32 35, i32 0, metadata !713, null}
!724 = metadata !{i32 37, i32 0, metadata !55, null}
!725 = metadata !{i32 40, i32 0, metadata !232, null}
!726 = metadata !{metadata !"int", metadata !705}
!727 = metadata !{i32 41, i32 0, metadata !232, null}
!728 = metadata !{i32 44, i32 0, metadata !232, null}
!729 = metadata !{metadata !"any pointer", metadata !705}
!730 = metadata !{i32 45, i32 0, metadata !232, null}
!731 = metadata !{i32 46, i32 0, metadata !232, null}
!732 = metadata !{i32 78, i32 0, metadata !233, null}
!733 = metadata !{i32 81, i32 0, metadata !243, null}
!734 = metadata !{i32 82, i32 0, metadata !243, null}
!735 = metadata !{i32 83, i32 0, metadata !243, null}
!736 = metadata !{i32 84, i32 0, metadata !243, null}
!737 = metadata !{i32 85, i32 0, metadata !243, null}
!738 = metadata !{i32 108, i32 0, metadata !270, null}
!739 = metadata !{i32 129, i32 0, metadata !280, null}
!740 = metadata !{i32 198, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !742, i32 196, i32 0, metadata !5, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!742 = metadata !{i32 786443, metadata !743, i32 194, i32 0, metadata !5, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!743 = metadata !{i32 786443, metadata !744, i32 134, i32 0, metadata !5, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!744 = metadata !{i32 786443, metadata !280, i32 129, i32 0, metadata !5, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!745 = metadata !{i32 134, i32 0, metadata !744, null}
!746 = metadata !{i32 137, i32 0, metadata !743, null}
!747 = metadata !{i64 0}
!748 = metadata !{i32 135, i32 0, metadata !743, null}
!749 = metadata !{i32 136, i32 0, metadata !743, null}
!750 = metadata !{i32 138, i32 0, metadata !743, null}
!751 = metadata !{i32 1}
!752 = metadata !{i32 139, i32 0, metadata !743, null}
!753 = metadata !{i32 140, i32 0, metadata !743, null}
!754 = metadata !{i32 141, i32 0, metadata !743, null}
!755 = metadata !{i32 142, i32 0, metadata !743, null}
!756 = metadata !{i32 143, i32 0, metadata !743, null}
!757 = metadata !{i32 -1}                         ; [ DW_TAG_hi_user ]
!758 = metadata !{i32 144, i32 0, metadata !743, null}
!759 = metadata !{i32 145, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !743, i32 144, i32 0, metadata !5, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!761 = metadata !{i32 148, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !763, i32 147, i32 0, metadata !5, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!763 = metadata !{i32 786443, metadata !743, i32 147, i32 0, metadata !5, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!764 = metadata !{i32 151, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !766, i32 150, i32 0, metadata !5, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!766 = metadata !{i32 786443, metadata !762, i32 148, i32 0, metadata !5, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!767 = metadata !{i32 152, i32 0, metadata !765, null}
!768 = metadata !{i32 153, i32 0, metadata !765, null}
!769 = metadata !{i32 157, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !766, i32 156, i32 0, metadata !5, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!771 = metadata !{i32 158, i32 0, metadata !770, null}
!772 = metadata !{i32 159, i32 0, metadata !770, null}
!773 = metadata !{i32 170, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !766, i32 169, i32 0, metadata !5, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!775 = metadata !{i32 171, i32 0, metadata !774, null}
!776 = metadata !{i32 173, i32 0, metadata !774, null}
!777 = metadata !{i32 172, i32 0, metadata !774, null}
!778 = metadata !{i32 177, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !766, i32 176, i32 0, metadata !5, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!780 = metadata !{i32 178, i32 0, metadata !779, null}
!781 = metadata !{i32 179, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !779, i32 178, i32 0, metadata !5, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!783 = metadata !{i32 185, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !766, i32 184, i32 0, metadata !5, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!785 = metadata !{i32 186, i32 0, metadata !784, null}
!786 = metadata !{i32 187, i32 0, metadata !784, null}
!787 = metadata !{i32 194, i32 0, metadata !743, null}
!788 = metadata !{i32 197, i32 0, metadata !741, null}
!789 = metadata !{i32 199, i32 0, metadata !741, null}
!790 = metadata !{i32 200, i32 0, metadata !741, null}
!791 = metadata !{i32 201, i32 0, metadata !741, null}
!792 = metadata !{i32 205, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !742, i32 204, i32 0, metadata !5, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!794 = metadata !{i32 206, i32 0, metadata !793, null}
!795 = metadata !{i32 207, i32 0, metadata !793, null}
!796 = metadata !{i32 208, i32 0, metadata !793, null}
!797 = metadata !{i32 209, i32 0, metadata !793, null}
!798 = metadata !{i32 213, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !742, i32 212, i32 0, metadata !5, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!800 = metadata !{i32 214, i32 0, metadata !799, null}
!801 = metadata !{i32 215, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !799, i32 214, i32 0, metadata !5, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!803 = metadata !{i32 216, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !802, i32 215, i32 0, metadata !5, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!805 = metadata !{i32 220, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !799, i32 219, i32 0, metadata !5, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!807 = metadata !{i32 221, i32 0, metadata !806, null}
!808 = metadata !{i32 223, i32 0, metadata !799, null}
!809 = metadata !{i32 224, i32 0, metadata !799, null}
!810 = metadata !{i32 228, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !742, i32 227, i32 0, metadata !5, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!812 = metadata !{i32 229, i32 0, metadata !811, null}
!813 = metadata !{i32 230, i32 0, metadata !811, null}
!814 = metadata !{i32 234, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !742, i32 233, i32 0, metadata !5, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!816 = metadata !{i32 235, i32 0, metadata !815, null}
!817 = metadata !{i32 236, i32 0, metadata !815, null}
!818 = metadata !{i32 240, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !742, i32 239, i32 0, metadata !5, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!820 = metadata !{i32 241, i32 0, metadata !819, null}
!821 = metadata !{i32 242, i32 0, metadata !819, null}
!822 = metadata !{i32 246, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !742, i32 245, i32 0, metadata !5, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!824 = metadata !{i32 247, i32 0, metadata !823, null}
!825 = metadata !{i32 259, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !742, i32 258, i32 0, metadata !5, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!827 = metadata !{i32 260, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !826, i32 259, i32 0, metadata !5, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!829 = metadata !{i32 261, i32 0, metadata !828, null}
!830 = metadata !{i32 263, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !826, i32 262, i32 0, metadata !5, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!832 = metadata !{i32 269, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !742, i32 268, i32 0, metadata !5, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!834 = metadata !{i32 270, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !833, i32 269, i32 0, metadata !5, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!836 = metadata !{i32 273, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !833, i32 272, i32 0, metadata !5, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!838 = metadata !{i32 275, i32 0, metadata !833, null}
!839 = metadata !{i32 282, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !742, i32 281, i32 0, metadata !5, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!841 = metadata !{i32 283, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !840, i32 282, i32 0, metadata !5, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!843 = metadata !{i32 284, i32 0, metadata !842, null}
!844 = metadata !{i32 286, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !840, i32 285, i32 0, metadata !5, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!846 = metadata !{i32 292, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !742, i32 291, i32 0, metadata !5, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!848 = metadata !{i32 293, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !847, i32 292, i32 0, metadata !5, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!850 = metadata !{i32 294, i32 0, metadata !849, null}
!851 = metadata !{i32 296, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !847, i32 295, i32 0, metadata !5, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!853 = metadata !{i32 302, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !742, i32 301, i32 0, metadata !5, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!855 = metadata !{i32 303, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !854, i32 302, i32 0, metadata !5, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!857 = metadata !{i32 304, i32 0, metadata !856, null}
!858 = metadata !{i32 306, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !854, i32 305, i32 0, metadata !5, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!860 = metadata !{i32 312, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !742, i32 311, i32 0, metadata !5, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!862 = metadata !{i32 313, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !861, i32 312, i32 0, metadata !5, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!864 = metadata !{i32 322, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !742, i32 321, i32 0, metadata !5, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!866 = metadata !{i32 323, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !865, i32 322, i32 0, metadata !5, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!868 = metadata !{i32 326, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !865, i32 325, i32 0, metadata !5, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!870 = metadata !{i32 328, i32 0, metadata !865, null}
!871 = metadata !{i32 335, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !742, i32 334, i32 0, metadata !5, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!873 = metadata !{i32 336, i32 0, metadata !872, null}
!874 = metadata !{i32 337, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !872, i32 336, i32 0, metadata !5, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!876 = metadata !{i32 338, i32 0, metadata !875, null}
!877 = metadata !{i32 339, i32 0, metadata !875, null}
!878 = metadata !{i32 340, i32 0, metadata !872, null}
!879 = metadata !{i32 341, i32 0, metadata !872, null}
!880 = metadata !{i32 342, i32 0, metadata !872, null}
!881 = metadata !{i32 353, i32 0, metadata !872, null}
!882 = metadata !{i32 354, i32 0, metadata !872, null}
!883 = metadata !{i32 345, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !885, i32 344, i32 0, metadata !5, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!885 = metadata !{i32 786443, metadata !886, i32 344, i32 0, metadata !5, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!886 = metadata !{i32 786443, metadata !872, i32 342, i32 0, metadata !5, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!887 = metadata !{i32 344, i32 0, metadata !885, null}
!888 = metadata !{i32 347, i32 0, metadata !886, null}
!889 = metadata !{i32 348, i32 0, metadata !886, null}
!890 = metadata !{i32 349, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !886, i32 348, i32 0, metadata !5, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!892 = metadata !{i32 355, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !872, i32 354, i32 0, metadata !5, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!894 = metadata !{i32 356, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !893, i32 355, i32 0, metadata !5, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!896 = metadata !{i32 357, i32 0, metadata !895, null}
!897 = metadata !{i32 358, i32 0, metadata !893, null}
!898 = metadata !{i32 359, i32 0, metadata !893, null}
!899 = metadata !{i32 360, i32 0, metadata !872, null}
!900 = metadata !{i32 361, i32 0, metadata !872, null}
!901 = metadata !{i32 366, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !742, i32 364, i32 0, metadata !5, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!903 = metadata !{i32 414, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !743, i32 413, i32 0, metadata !5, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!905 = metadata !{i32 373, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !742, i32 371, i32 0, metadata !5, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!907 = metadata !{i32 2}
!908 = metadata !{i32 374, i32 0, metadata !906, null}
!909 = metadata !{i32 375, i32 0, metadata !906, null}
!910 = metadata !{i8 48}
!911 = metadata !{i32 376, i32 0, metadata !906, null}
!912 = metadata !{i32 8}
!913 = metadata !{i32 377, i32 0, metadata !906, null}
!914 = metadata !{i32 378, i32 0, metadata !906, null}
!915 = metadata !{i32 382, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !742, i32 381, i32 0, metadata !5, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!917 = metadata !{i32 383, i32 0, metadata !916, null}
!918 = metadata !{i32 384, i32 0, metadata !916, null}
!919 = metadata !{i32 385, i32 0, metadata !916, null}
!920 = metadata !{i32 389, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !742, i32 388, i32 0, metadata !5, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!922 = metadata !{i32 390, i32 0, metadata !921, null}
!923 = metadata !{i32 391, i32 0, metadata !921, null}
!924 = metadata !{i32 397, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !742, i32 394, i32 0, metadata !5, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!926 = metadata !{i32 398, i32 0, metadata !925, null}
!927 = metadata !{i32 399, i32 0, metadata !925, null}
!928 = metadata !{i32 403, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !742, i32 402, i32 0, metadata !5, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!930 = metadata !{i32 404, i32 0, metadata !929, null}
!931 = metadata !{i32 405, i32 0, metadata !929, null}
!932 = metadata !{i32 409, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !742, i32 408, i32 0, metadata !5, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!934 = metadata !{i32 410, i32 0, metadata !933, null}
!935 = metadata !{i32 413, i32 0, metadata !743, null}
!936 = metadata !{i32 415, i32 0, metadata !937, null}
!937 = metadata !{i32 786443, metadata !904, i32 414, i32 0, metadata !5, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!938 = metadata !{i32 416, i32 0, metadata !937, null}
!939 = metadata !{i32 422, i32 0, metadata !743, null}
!940 = metadata !{i32 423, i32 0, metadata !743, null}
!941 = metadata !{i32 424, i32 0, metadata !743, null}
!942 = metadata !{i32 426, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !744, i32 425, i32 0, metadata !5, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!944 = metadata !{i32 429, i32 0, metadata !280, null}
!945 = metadata !{i32 88, i32 0, metadata !248, null}
!946 = metadata !{i32 91, i32 0, metadata !257, null}
!947 = metadata !{i32 92, i32 0, metadata !257, null}
!948 = metadata !{i32 93, i32 0, metadata !257, null}
!949 = metadata !{i32 94, i32 0, metadata !257, null}
!950 = metadata !{i32 95, i32 0, metadata !257, null}
!951 = metadata !{i32 98, i32 0, metadata !259, null}
!952 = metadata !{i32 101, i32 0, metadata !268, null}
!953 = metadata !{i32 102, i32 0, metadata !268, null}
!954 = metadata !{i32 103, i32 0, metadata !268, null}
!955 = metadata !{i32 104, i32 0, metadata !268, null}
!956 = metadata !{i32 105, i32 0, metadata !268, null}
!957 = metadata !{i32 432, i32 0, metadata !650, null}
!958 = metadata !{i32 435, i32 0, metadata !662, null}
!959 = metadata !{i32 444, i32 0, metadata !662, null}
!960 = metadata !{i32 445, i32 0, metadata !662, null}
!961 = metadata !{i32 446, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !662, i32 445, i32 0, metadata !5, i32 277} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!963 = metadata !{i32 461, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !962, i32 446, i32 0, metadata !5, i32 278} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!965 = metadata !{i32 462, i32 0, metadata !964, null}
!966 = metadata !{i32 463, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !964, i32 462, i32 0, metadata !5, i32 279} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!968 = metadata !{i32 464, i32 0, metadata !967, null}
!969 = metadata !{i32 468, i32 0, metadata !970, null}
!970 = metadata !{i32 786443, metadata !971, i32 467, i32 0, metadata !5, i32 281} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!971 = metadata !{i32 786443, metadata !962, i32 466, i32 0, metadata !5, i32 280} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!972 = metadata !{i32 469, i32 0, metadata !970, null}
!973 = metadata !{i32 475, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !975, i32 473, i32 0, metadata !5, i32 283} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!975 = metadata !{i32 786443, metadata !662, i32 472, i32 0, metadata !5, i32 282} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!976 = metadata !{i32 476, i32 0, metadata !974, null}
!977 = metadata !{i32 482, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !979, i32 480, i32 0, metadata !5, i32 285} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!979 = metadata !{i32 786443, metadata !662, i32 479, i32 0, metadata !5, i32 284} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!980 = metadata !{i32 483, i32 0, metadata !978, null}
!981 = metadata !{i32 486, i32 0, metadata !662, null}
!982 = metadata !{i32 487, i32 0, metadata !662, null}
!983 = metadata !{i32 488, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !662, i32 487, i32 0, metadata !5, i32 286} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!985 = metadata !{i32 489, i32 0, metadata !984, null}
!986 = metadata !{i32 491, i32 0, metadata !662, null}
!987 = metadata !{i32 492, i32 0, metadata !662, null}
!988 = metadata !{i32 493, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !662, i32 492, i32 0, metadata !5, i32 287} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!990 = metadata !{i32 495, i32 0, metadata !662, null}
!991 = metadata !{i32 504, i32 0, metadata !314, null}
!992 = metadata !{i32 508, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !325, i32 508, i32 0, metadata !5, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!994 = metadata !{i32 509, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !993, i32 508, i32 0, metadata !5, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!996 = metadata !{i32 510, i32 0, metadata !995, null}
!997 = metadata !{i32 511, i32 0, metadata !995, null}
!998 = metadata !{i32 512, i32 0, metadata !995, null}
!999 = metadata !{i32 513, i32 0, metadata !995, null}
!1000 = metadata !{i32 514, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !995, i32 513, i32 0, metadata !5, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1002 = metadata !{i32 519, i32 0, metadata !995, null}
!1003 = metadata !{i32 521, i32 0, metadata !325, null}
!1004 = metadata !{i32 523, i32 0, metadata !327, null}
!1005 = metadata !{i32 527, i32 0, metadata !336, null}
!1006 = metadata !{i32 528, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !336, i32 527, i32 0, metadata !5, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1008 = metadata !{i32 529, i32 0, metadata !1007, null}
!1009 = metadata !{i32 530, i32 0, metadata !1007, null}
!1010 = metadata !{i32 531, i32 0, metadata !1007, null}
!1011 = metadata !{i32 532, i32 0, metadata !1007, null}
!1012 = metadata !{i32 533, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1007, i32 532, i32 0, metadata !5, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1014 = metadata !{i32 534, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1013, i32 533, i32 0, metadata !5, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1016 = metadata !{i32 539, i32 0, metadata !1007, null}
!1017 = metadata !{i32 542, i32 0, metadata !336, null}
!1018 = metadata !{i32 544, i32 0, metadata !338, null}
!1019 = metadata !{i32 549, i32 0, metadata !347, null}
!1020 = metadata !{i32 550, i32 0, metadata !347, null}
!1021 = metadata !{i32 551, i32 0, metadata !347, null}
!1022 = metadata !{i32 553, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1024, i32 552, i32 0, metadata !5, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1024 = metadata !{i32 786443, metadata !347, i32 551, i32 0, metadata !5, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1025 = metadata !{i32 556, i32 0, metadata !1023, null}
!1026 = metadata !{i32 557, i32 0, metadata !1023, null}
!1027 = metadata !{i32 560, i32 0, metadata !1023, null}
!1028 = metadata !{i32 561, i32 0, metadata !1024, null}
!1029 = metadata !{i32 564, i32 0, metadata !347, null}
!1030 = metadata !{i32 566, i32 0, metadata !347, null}
!1031 = metadata !{i32 573, i32 0, metadata !350, null}
!1032 = metadata !{i32 577, i32 0, metadata !357, null}
!1033 = metadata !{i32 580, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1035, i32 579, i32 0, metadata !5, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1035 = metadata !{i32 786443, metadata !357, i32 578, i32 0, metadata !5, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1036 = metadata !{i32 581, i32 0, metadata !1034, null}
!1037 = metadata !{i32 584, i32 0, metadata !1034, null}
!1038 = metadata !{i32 585, i32 0, metadata !357, null}
!1039 = metadata !{i32 587, i32 0, metadata !357, null}
!1040 = metadata !{i32 589, i32 0, metadata !359, null}
!1041 = metadata !{i32 593, i32 0, metadata !366, null}
!1042 = metadata !{i32 594, i32 0, metadata !366, null}
!1043 = metadata !{i32 597, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1045, i32 596, i32 0, metadata !5, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1045 = metadata !{i32 786443, metadata !366, i32 595, i32 0, metadata !5, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1046 = metadata !{i32 598, i32 0, metadata !1044, null}
!1047 = metadata !{i32 601, i32 0, metadata !1044, null}
!1048 = metadata !{i32 602, i32 0, metadata !1044, null}
!1049 = metadata !{i32 603, i32 0, metadata !366, null}
!1050 = metadata !{i32 605, i32 0, metadata !366, null}
!1051 = metadata !{i32 612, i32 0, metadata !368, null}
!1052 = metadata !{i32 616, i32 0, metadata !378, null}
!1053 = metadata !{i32 617, i32 0, metadata !378, null}
!1054 = metadata !{i32 618, i32 0, metadata !378, null}
!1055 = metadata !{i32 621, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1057, i32 620, i32 0, metadata !5, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1057 = metadata !{i32 786443, metadata !378, i32 619, i32 0, metadata !5, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1058 = metadata !{i32 624, i32 0, metadata !1056, null}
!1059 = metadata !{i32 625, i32 0, metadata !1056, null}
!1060 = metadata !{i32 626, i32 0, metadata !1056, null}
!1061 = metadata !{i32 627, i32 0, metadata !378, null}
!1062 = metadata !{i32 629, i32 0, metadata !378, null}
!1063 = metadata !{i32 631, i32 0, metadata !380, null}
!1064 = metadata !{i32 633, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !380, i32 632, i32 0, metadata !5, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1066 = metadata !{i32 636, i32 0, metadata !1065, null}
!1067 = metadata !{i32 638, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1069, i32 637, i32 0, metadata !5, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1069 = metadata !{i32 786443, metadata !1065, i32 637, i32 0, metadata !5, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1070 = metadata !{i32 639, i32 0, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !1068, i32 638, i32 0, metadata !5, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1072 = metadata !{i32 641, i32 0, metadata !1068, null}
!1073 = metadata !{i32 644, i32 0, metadata !1068, null}
!1074 = metadata !{i32 646, i32 0, metadata !1065, null}
!1075 = metadata !{i32 648, i32 0, metadata !386, null}
!1076 = metadata !{i32 652, i32 0, metadata !393, null}
!1077 = metadata !{i32 655, i32 0, metadata !393, null}
!1078 = metadata !{i32 657, i32 0, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1080, i32 656, i32 0, metadata !5, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1080 = metadata !{i32 786443, metadata !393, i32 656, i32 0, metadata !5, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1081 = metadata !{i32 658, i32 0, metadata !1079, null}
!1082 = metadata !{i32 659, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1079, i32 658, i32 0, metadata !5, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1084 = metadata !{i32 660, i32 0, metadata !1083, null}
!1085 = metadata !{i32 661, i32 0, metadata !1079, null}
!1086 = metadata !{i32 662, i32 0, metadata !1079, null}
!1087 = metadata !{i32 663, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1079, i32 662, i32 0, metadata !5, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1089 = metadata !{i32 664, i32 0, metadata !1088, null}
!1090 = metadata !{i32 665, i32 0, metadata !1079, null}
!1091 = metadata !{i32 666, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1079, i32 665, i32 0, metadata !5, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1093 = metadata !{i32 668, i32 0, metadata !1079, null}
!1094 = metadata !{i32 671, i32 0, metadata !1079, null}
!1095 = metadata !{i32 673, i32 0, metadata !393, null}
!1096 = metadata !{i32 675, i32 0, metadata !395, null}
!1097 = metadata !{i32 680, i32 0, metadata !405, null}
!1098 = metadata !{i32 685, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !405, i32 684, i32 0, metadata !5, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1100 = metadata !{i32 686, i32 0, metadata !1099, null}
!1101 = metadata !{i32 688, i32 0, metadata !405, null}
!1102 = metadata !{i32 689, i32 0, metadata !405, null}
!1103 = metadata !{i32 693, i32 0, metadata !405, null}
!1104 = metadata !{i32 695, i32 0, metadata !408, null}
!1105 = metadata !{i32 699, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !414, i32 699, i32 0, metadata !5, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1107 = metadata !{i32 700, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1106, i32 699, i32 0, metadata !5, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1109 = metadata !{i32 701, i32 0, metadata !1108, null}
!1110 = metadata !{i32 702, i32 0, metadata !1108, null}
!1111 = metadata !{i32 703, i32 0, metadata !1108, null}
!1112 = metadata !{i32 704, i32 0, metadata !1108, null}
!1113 = metadata !{i32 705, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1108, i32 704, i32 0, metadata !5, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1115 = metadata !{i32 711, i32 0, metadata !1108, null}
!1116 = metadata !{i32 712, i32 0, metadata !1108, null}
!1117 = metadata !{i32 713, i32 0, metadata !1108, null}
!1118 = metadata !{i32 715, i32 0, metadata !414, null}
!1119 = metadata !{i32 717, i32 0, metadata !416, null}
!1120 = metadata !{i32 720, i32 0, metadata !424, null}
!1121 = metadata !{i32 723, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !424, i32 723, i32 0, metadata !5, i32 132} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1123 = metadata !{i32 724, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1122, i32 723, i32 0, metadata !5, i32 133} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1125 = metadata !{i32 727, i32 0, metadata !1124, null}
!1126 = metadata !{i32 729, i32 0, metadata !424, null}
!1127 = metadata !{i32 735, i32 0, metadata !424, null}
!1128 = metadata !{i32 738, i32 0, metadata !425, null}
!1129 = metadata !{i32 742, i32 0, metadata !434, null}
!1130 = metadata !{i32 746, i32 0, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !434, i32 746, i32 0, metadata !5, i32 139} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1132 = metadata !{i32 747, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1131, i32 746, i32 0, metadata !5, i32 140} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1134 = metadata !{i32 750, i32 0, metadata !1133, null}
!1135 = metadata !{i32 751, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1133, i32 750, i32 0, metadata !5, i32 142} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1137 = metadata !{i32 757, i32 0, metadata !1133, null}
!1138 = metadata !{i32 760, i32 0, metadata !1133, null}
!1139 = metadata !{i32 761, i32 0, metadata !1133, null}
!1140 = metadata !{i32 763, i32 0, metadata !434, null}
!1141 = metadata !{i32 764, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !434, i32 763, i32 0, metadata !5, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1143 = metadata !{i32 766, i32 0, metadata !434, null}
!1144 = metadata !{i32 772, i32 0, metadata !434, null}
!1145 = metadata !{i32 774, i32 0, metadata !436, null}
!1146 = metadata !{i32 777, i32 0, metadata !446, null}
!1147 = metadata !{i32 780, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !446, i32 780, i32 0, metadata !5, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1149 = metadata !{i32 781, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1148, i32 780, i32 0, metadata !5, i32 151} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1151 = metadata !{i32 784, i32 0, metadata !1150, null}
!1152 = metadata !{i32 786, i32 0, metadata !446, null}
!1153 = metadata !{i32 792, i32 0, metadata !446, null}
!1154 = metadata !{i32 794, i32 0, metadata !447, null}
!1155 = metadata !{i32 797, i32 0, metadata !455, null}
!1156 = metadata !{i32 800, i32 0, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !455, i32 800, i32 0, metadata !5, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1158 = metadata !{i32 801, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !1157, i32 800, i32 0, metadata !5, i32 158} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1160 = metadata !{i32 804, i32 0, metadata !1159, null}
!1161 = metadata !{i32 806, i32 0, metadata !455, null}
!1162 = metadata !{i32 812, i32 0, metadata !455, null}
!1163 = metadata !{i32 814, i32 0, metadata !456, null}
!1164 = metadata !{i32 817, i32 0, metadata !465, null}
!1165 = metadata !{i32 820, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !465, i32 820, i32 0, metadata !5, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1167 = metadata !{i32 821, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1166, i32 820, i32 0, metadata !5, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1169 = metadata !{i32 824, i32 0, metadata !1168, null}
!1170 = metadata !{i32 826, i32 0, metadata !465, null}
!1171 = metadata !{i32 832, i32 0, metadata !465, null}
!1172 = metadata !{i32 834, i32 0, metadata !466, null}
!1173 = metadata !{i32 839, i32 0, metadata !472, null}
!1174 = metadata !{i32 842, i32 0, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !472, i32 842, i32 0, metadata !5, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1176 = metadata !{i32 843, i32 0, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !1175, i32 842, i32 0, metadata !5, i32 172} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1178 = metadata !{i32 844, i32 0, metadata !1177, null}
!1179 = metadata !{i32 845, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1177, i32 844, i32 0, metadata !5, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1181 = metadata !{i32 848, i32 0, metadata !1177, null}
!1182 = metadata !{i32 849, i32 0, metadata !1177, null}
!1183 = metadata !{i32 850, i32 0, metadata !1184, null}
!1184 = metadata !{i32 786443, metadata !1177, i32 849, i32 0, metadata !5, i32 174} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1185 = metadata !{i32 855, i32 0, metadata !472, null}
!1186 = metadata !{i32 861, i32 0, metadata !472, null}
!1187 = metadata !{i32 863, i32 0, metadata !475, null}
!1188 = metadata !{i32 866, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !475, i32 864, i32 0, metadata !5, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1190 = metadata !{i32 867, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1189, i32 866, i32 0, metadata !5, i32 178} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1192 = metadata !{i32 868, i32 0, metadata !1191, null}
!1193 = metadata !{i32 869, i32 0, metadata !1191, null}
!1194 = metadata !{i32 870, i32 0, metadata !1189, null}
!1195 = metadata !{i32 873, i32 0, metadata !481, null}
!1196 = metadata !{i32 879, i32 0, metadata !489, null}
!1197 = metadata !{i32 880, i32 0, metadata !489, null}
!1198 = metadata !{i32 881, i32 0, metadata !489, null}
!1199 = metadata !{i32 882, i32 0, metadata !489, null}
!1200 = metadata !{i32 883, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !489, i32 882, i32 0, metadata !5, i32 180} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1202 = metadata !{i32 884, i32 0, metadata !1201, null}
!1203 = metadata !{i32 885, i32 0, metadata !1201, null}
!1204 = metadata !{i32 886, i32 0, metadata !1201, null}
!1205 = metadata !{i32 887, i32 0, metadata !1201, null}
!1206 = metadata !{i32 888, i32 0, metadata !1201, null}
!1207 = metadata !{i32 890, i32 0, metadata !489, null}
!1208 = metadata !{i32 891, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !489, i32 890, i32 0, metadata !5, i32 181} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1210 = metadata !{i32 892, i32 0, metadata !1209, null}
!1211 = metadata !{i32 893, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1209, i32 892, i32 0, metadata !5, i32 182} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1213 = metadata !{i32 894, i32 0, metadata !1212, null}
!1214 = metadata !{i32 895, i32 0, metadata !1212, null}
!1215 = metadata !{i32 897, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1209, i32 896, i32 0, metadata !5, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1217 = metadata !{i32 898, i32 0, metadata !1216, null}
!1218 = metadata !{i32 900, i32 0, metadata !1209, null}
!1219 = metadata !{i32 901, i32 0, metadata !1209, null}
!1220 = metadata !{i32 902, i32 0, metadata !489, null}
!1221 = metadata !{i32 903, i32 0, metadata !489, null}
!1222 = metadata !{i32 905, i32 0, metadata !492, null}
!1223 = metadata !{i32 908, i32 0, metadata !1224, null}
!1224 = metadata !{i32 786443, metadata !492, i32 906, i32 0, metadata !5, i32 184} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1225 = metadata !{i32 917, i32 0, metadata !636, null}
!1226 = metadata !{i32 922, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !647, i32 922, i32 0, metadata !5, i32 268} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1228 = metadata !{i32 933, i32 0, metadata !647, null}
!1229 = metadata !{i32 934, i32 0, metadata !647, null}
!1230 = metadata !{i32 942, i32 0, metadata !647, null}
!1231 = metadata !{i32 923, i32 0, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !1227, i32 922, i32 0, metadata !5, i32 269} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1233 = metadata !{i32 926, i32 0, metadata !1232, null}
!1234 = metadata !{i32 930, i32 0, metadata !647, null}
!1235 = metadata !{i32 935, i32 0, metadata !647, null}
!1236 = metadata !{i32 936, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !647, i32 935, i32 0, metadata !5, i32 273} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1238 = metadata !{i32 937, i32 0, metadata !1237, null}
!1239 = metadata !{i32 938, i32 0, metadata !1237, null}
!1240 = metadata !{i32 939, i32 0, metadata !1237, null}
!1241 = metadata !{i32 940, i32 0, metadata !1237, null}
!1242 = metadata !{i32 943, i32 0, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !647, i32 942, i32 0, metadata !5, i32 274} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1244 = metadata !{i32 945, i32 0, metadata !647, null}
!1245 = metadata !{i32 946, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !647, i32 945, i32 0, metadata !5, i32 275} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1247 = metadata !{i32 947, i32 0, metadata !1246, null}
!1248 = metadata !{i32 948, i32 0, metadata !647, null}
!1249 = metadata !{i32 949, i32 0, metadata !647, null}
!1250 = metadata !{i32 950, i32 0, metadata !647, null}
!1251 = metadata !{i32 911, i32 0, metadata !499, null}
!1252 = metadata !{i32 914, i32 0, metadata !1253, null}
!1253 = metadata !{i32 786443, metadata !499, i32 912, i32 0, metadata !5, i32 185} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1254 = metadata !{i32 960, i32 0, metadata !504, null}
!1255 = metadata !{i32 966, i32 0, metadata !513, null}
!1256 = metadata !{i32 967, i32 0, metadata !513, null}
!1257 = metadata !{i32 968, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !513, i32 967, i32 0, metadata !5, i32 187} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1259 = metadata !{i32 65535}
!1260 = metadata !{i32 969, i32 0, metadata !1258, null}
!1261 = metadata !{i32 3}
!1262 = metadata !{i32 970, i32 0, metadata !1258, null}
!1263 = metadata !{i32 971, i32 0, metadata !1258, null}
!1264 = metadata !{i32 972, i32 0, metadata !513, null}
!1265 = metadata !{i32 973, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !513, i32 972, i32 0, metadata !5, i32 188} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1267 = metadata !{i32 2047}
!1268 = metadata !{i32 974, i32 0, metadata !1266, null}
!1269 = metadata !{i32 975, i32 0, metadata !1266, null}
!1270 = metadata !{i32 976, i32 0, metadata !1266, null}
!1271 = metadata !{i32 977, i32 0, metadata !513, null}
!1272 = metadata !{i32 978, i32 0, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !513, i32 977, i32 0, metadata !5, i32 189} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1274 = metadata !{i32 127}
!1275 = metadata !{i32 979, i32 0, metadata !1273, null}
!1276 = metadata !{i32 980, i32 0, metadata !1273, null}
!1277 = metadata !{i32 983, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !513, i32 982, i32 0, metadata !5, i32 190} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1279 = metadata !{i32 984, i32 0, metadata !1278, null}
!1280 = metadata !{i32 986, i32 0, metadata !513, null}
!1281 = metadata !{i32 989, i32 0, metadata !513, null}
!1282 = metadata !{i32 990, i32 0, metadata !513, null}
!1283 = metadata !{i32 991, i32 0, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !513, i32 990, i32 0, metadata !5, i32 192} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1285 = metadata !{i32 992, i32 0, metadata !1284, null}
!1286 = metadata !{i32 995, i32 0, metadata !1284, null}
!1287 = metadata !{i32 996, i32 0, metadata !1284, null}
!1288 = metadata !{i32 998, i32 0, metadata !513, null}
!1289 = metadata !{i32 999, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !513, i32 998, i32 0, metadata !5, i32 194} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1291 = metadata !{i32 1002, i32 0, metadata !513, null}
!1292 = metadata !{i32 1004, i32 0, metadata !517, null}
!1293 = metadata !{i32 1009, i32 0, metadata !525, null}
!1294 = metadata !{i32 1010, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !525, i32 1010, i32 0, metadata !5, i32 196} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1296 = metadata !{i32 1011, i32 0, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !1295, i32 1010, i32 0, metadata !5, i32 197} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1298 = metadata !{i32 1012, i32 0, metadata !1297, null}
!1299 = metadata !{i32 1013, i32 0, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !1297, i32 1012, i32 0, metadata !5, i32 198} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1301 = metadata !{i32 1014, i32 0, metadata !1300, null}
!1302 = metadata !{i32 1016, i32 0, metadata !1297, null}
!1303 = metadata !{i32 1022, i32 0, metadata !525, null}
!1304 = metadata !{i32 1024, i32 0, metadata !528, null}
!1305 = metadata !{i32 1027, i32 0, metadata !538, null}
!1306 = metadata !{i32 1028, i32 0, metadata !538, null}
!1307 = metadata !{i32 1031, i32 0, metadata !538, null}
!1308 = metadata !{i32 1032, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !538, i32 1031, i32 0, metadata !5, i32 202} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1310 = metadata !{i32 1033, i32 0, metadata !1309, null}
!1311 = metadata !{i32 1034, i32 0, metadata !1309, null}
!1312 = metadata !{i32 1035, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1309, i32 1034, i32 0, metadata !5, i32 203} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1314 = metadata !{i32 1036, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !1313, i32 1035, i32 0, metadata !5, i32 204} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1316 = metadata !{i32 1037, i32 0, metadata !1315, null}
!1317 = metadata !{i32 1038, i32 0, metadata !1315, null}
!1318 = metadata !{i32 1043, i32 0, metadata !1309, null}
!1319 = metadata !{i32 1044, i32 0, metadata !1309, null}
!1320 = metadata !{i32 1048, i32 0, metadata !1309, null}
!1321 = metadata !{i32 1049, i32 0, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1309, i32 1048, i32 0, metadata !5, i32 206} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1323 = metadata !{i32 1050, i32 0, metadata !1322, null}
!1324 = metadata !{i32 1053, i32 0, metadata !538, null}
!1325 = metadata !{i32 1054, i32 0, metadata !538, null}
!1326 = metadata !{i32 1055, i32 0, metadata !538, null}
!1327 = metadata !{i32 1057, i32 0, metadata !540, null}
!1328 = metadata !{i32 1142, i32 0, metadata !550, null}
!1329 = metadata !{i32 1143, i32 0, metadata !550, null}
!1330 = metadata !{i32 1146, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !550, i32 1143, i32 0, metadata !5, i32 208} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1332 = metadata !{i32 1155, i32 0, metadata !550, null}
!1333 = metadata !{i32 1147, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1331, i32 1146, i32 0, metadata !5, i32 209} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1335 = metadata !{i32 1148, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !1334, i32 1147, i32 0, metadata !5, i32 210} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1337 = metadata !{i32 1150, i32 0, metadata !1334, null}
!1338 = metadata !{i32 1151, i32 0, metadata !1334, null}
!1339 = metadata !{i32 1156, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !550, i32 1155, i32 0, metadata !5, i32 211} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1341 = metadata !{i32 1157, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1340, i32 1156, i32 0, metadata !5, i32 212} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1343 = metadata !{i32 1158, i32 0, metadata !1342, null}
!1344 = metadata !{i32 1159, i32 0, metadata !1342, null}
!1345 = metadata !{i32 1161, i32 0, metadata !1342, null}
!1346 = metadata !{i32 1163, i32 0, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !1340, i32 1162, i32 0, metadata !5, i32 213} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1348 = metadata !{i32 1160, i32 0, metadata !1342, null}
!1349 = metadata !{i32 1165, i32 0, metadata !1340, null}
!1350 = metadata !{i32 1167, i32 0, metadata !550, null}
!1351 = metadata !{i32 1168, i32 0, metadata !550, null}
!1352 = metadata !{i32 1170, i32 0, metadata !4, null}
!1353 = metadata !{i32 1178, i32 0, metadata !25, null}
!1354 = metadata !{i32 1179, i32 0, metadata !25, null}
!1355 = metadata !{i32 1180, i32 0, metadata !25, null}
!1356 = metadata !{i8 0}
!1357 = metadata !{i32 1181, i32 0, metadata !25, null}
!1358 = metadata !{i32 1187, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1360, i32 1186, i32 0, metadata !5, i32 217} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1360 = metadata !{i32 786443, metadata !1361, i32 1184, i32 0, metadata !5, i32 216} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1361 = metadata !{i32 786443, metadata !25, i32 1182, i32 0, metadata !5, i32 215} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1362 = metadata !{i32 1221, i32 0, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !1364, i32 1219, i32 0, metadata !5, i32 224} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1364 = metadata !{i32 786443, metadata !1360, i32 1217, i32 0, metadata !5, i32 223} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1365 = metadata !{i32 1237, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1364, i32 1235, i32 0, metadata !5, i32 227} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1367 = metadata !{i32 1182, i32 0, metadata !25, null}
!1368 = metadata !{i32 1183, i32 0, metadata !1361, null}
!1369 = metadata !{i8 63}
!1370 = metadata !{i32 1184, i32 0, metadata !1361, null}
!1371 = metadata !{i32 1188, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1359, i32 1187, i32 0, metadata !5, i32 218} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1373 = metadata !{i32 1189, i32 0, metadata !1372, null}
!1374 = metadata !{i32 1195, i32 0, metadata !1359, null}
!1375 = metadata !{i32 1196, i32 0, metadata !1359, null}
!1376 = metadata !{i32 1200, i32 0, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !1360, i32 1199, i32 0, metadata !5, i32 220} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1378 = metadata !{i32 1201, i32 0, metadata !1379, null}
!1379 = metadata !{i32 786443, metadata !1377, i32 1200, i32 0, metadata !5, i32 221} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1380 = metadata !{i32 1202, i32 0, metadata !1379, null}
!1381 = metadata !{i32 1203, i32 0, metadata !1379, null}
!1382 = metadata !{i32 1205, i32 0, metadata !1377, null}
!1383 = metadata !{i32 1206, i32 0, metadata !1377, null}
!1384 = metadata !{i32 1207, i32 0, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !1377, i32 1206, i32 0, metadata !5, i32 222} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1386 = metadata !{i32 1208, i32 0, metadata !1385, null}
!1387 = metadata !{i32 1209, i32 0, metadata !1385, null}
!1388 = metadata !{i32 1212, i32 0, metadata !1377, null}
!1389 = metadata !{i32 1213, i32 0, metadata !1377, null}
!1390 = metadata !{i32 1214, i32 0, metadata !1377, null}
!1391 = metadata !{i32 1218, i32 0, metadata !1364, null}
!1392 = metadata !{i32 1219, i32 0, metadata !1364, null}
!1393 = metadata !{i32 1220, i32 0, metadata !1363, null}
!1394 = metadata !{i32 1222, i32 0, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !1363, i32 1221, i32 0, metadata !5, i32 225} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1396 = metadata !{i32 1223, i32 0, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !1395, i32 1222, i32 0, metadata !5, i32 226} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1398 = metadata !{i32 1224, i32 0, metadata !1397, null}
!1399 = metadata !{i32 1226, i32 0, metadata !1395, null}
!1400 = metadata !{i32 1227, i32 0, metadata !1395, null}
!1401 = metadata !{i32 1228, i32 0, metadata !1395, null}
!1402 = metadata !{i32 1229, i32 0, metadata !1395, null}
!1403 = metadata !{i32 1231, i32 0, metadata !1363, null}
!1404 = metadata !{i32 1232, i32 0, metadata !1363, null}
!1405 = metadata !{i32 1234, i32 0, metadata !1364, null}
!1406 = metadata !{i32 1235, i32 0, metadata !1364, null}
!1407 = metadata !{i32 1236, i32 0, metadata !1366, null}
!1408 = metadata !{i32 1238, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !1366, i32 1237, i32 0, metadata !5, i32 228} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1410 = metadata !{i32 1239, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1409, i32 1238, i32 0, metadata !5, i32 229} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1412 = metadata !{i32 1245, i32 0, metadata !1366, null}
!1413 = metadata !{i32 1246, i32 0, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !1366, i32 1245, i32 0, metadata !5, i32 230} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1415 = metadata !{i32 1247, i32 0, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !1414, i32 1246, i32 0, metadata !5, i32 231} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1417 = metadata !{i32 1248, i32 0, metadata !1416, null}
!1418 = metadata !{i32 1250, i32 0, metadata !1414, null}
!1419 = metadata !{i32 1251, i32 0, metadata !1420, null}
!1420 = metadata !{i32 786443, metadata !1414, i32 1250, i32 0, metadata !5, i32 232} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1421 = metadata !{i32 1252, i32 0, metadata !1420, null}
!1422 = metadata !{i32 1254, i32 0, metadata !1414, null}
!1423 = metadata !{i32 1255, i32 0, metadata !1414, null}
!1424 = metadata !{i32 1256, i32 0, metadata !1414, null}
!1425 = metadata !{i32 1257, i32 0, metadata !1414, null}
!1426 = metadata !{i32 1259, i32 0, metadata !1366, null}
!1427 = metadata !{i32 1260, i32 0, metadata !1366, null}
!1428 = metadata !{i32 1268, i32 0, metadata !25, null}
!1429 = metadata !{i32 1269, i32 0, metadata !25, null}
!1430 = metadata !{i32 1270, i32 0, metadata !25, null}
!1431 = metadata !{i32 1272, i32 0, metadata !553, null}
!1432 = metadata !{i32 1276, i32 0, metadata !562, null}
!1433 = metadata !{i32 1278, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !562, i32 1276, i32 0, metadata !5, i32 234} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1435 = metadata !{i32 1307, i32 0, metadata !562, null}
!1436 = metadata !{i32 1279, i32 0, metadata !1437, null}
!1437 = metadata !{i32 786443, metadata !1434, i32 1278, i32 0, metadata !5, i32 235} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1438 = metadata !{i32 1282, i32 0, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !1440, i32 1281, i32 0, metadata !5, i32 237} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1440 = metadata !{i32 786443, metadata !1437, i32 1279, i32 0, metadata !5, i32 236} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1441 = metadata !{i32 1287, i32 0, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1440, i32 1286, i32 0, metadata !5, i32 238} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1443 = metadata !{i32 1292, i32 0, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !1440, i32 1291, i32 0, metadata !5, i32 239} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1445 = metadata !{i32 1297, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1440, i32 1296, i32 0, metadata !5, i32 240} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1447 = metadata !{i32 1303, i32 0, metadata !1437, null}
!1448 = metadata !{i32 1308, i32 0, metadata !1449, null}
!1449 = metadata !{i32 786443, metadata !562, i32 1307, i32 0, metadata !5, i32 241} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1450 = metadata !{i32 1309, i32 0, metadata !1449, null}
!1451 = metadata !{i32 1312, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1453, i32 1311, i32 0, metadata !5, i32 243} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1453 = metadata !{i32 786443, metadata !1449, i32 1309, i32 0, metadata !5, i32 242} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1454 = metadata !{i32 1313, i32 0, metadata !1452, null}
!1455 = metadata !{i32 1314, i32 0, metadata !1452, null}
!1456 = metadata !{i32 1315, i32 0, metadata !1452, null}
!1457 = metadata !{i32 1316, i32 0, metadata !1452, null}
!1458 = metadata !{i32 1320, i32 0, metadata !1459, null}
!1459 = metadata !{i32 786443, metadata !1453, i32 1319, i32 0, metadata !5, i32 244} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1460 = metadata !{i32 1321, i32 0, metadata !1459, null}
!1461 = metadata !{i32 1322, i32 0, metadata !1459, null}
!1462 = metadata !{i32 1323, i32 0, metadata !1459, null}
!1463 = metadata !{i32 1324, i32 0, metadata !1459, null}
!1464 = metadata !{i32 1328, i32 0, metadata !1465, null}
!1465 = metadata !{i32 786443, metadata !1453, i32 1327, i32 0, metadata !5, i32 245} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1466 = metadata !{i32 1329, i32 0, metadata !1465, null}
!1467 = metadata !{i32 1330, i32 0, metadata !1465, null}
!1468 = metadata !{i32 1331, i32 0, metadata !1465, null}
!1469 = metadata !{i32 1332, i32 0, metadata !1465, null}
!1470 = metadata !{i32 1333, i32 0, metadata !1465, null}
!1471 = metadata !{i32 1337, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !1453, i32 1336, i32 0, metadata !5, i32 246} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1473 = metadata !{i32 1338, i32 0, metadata !1472, null}
!1474 = metadata !{i32 1339, i32 0, metadata !1472, null}
!1475 = metadata !{i32 1340, i32 0, metadata !1472, null}
!1476 = metadata !{i32 1341, i32 0, metadata !1472, null}
!1477 = metadata !{i32 1342, i32 0, metadata !1472, null}
!1478 = metadata !{i32 1343, i32 0, metadata !1472, null}
!1479 = metadata !{i32 1347, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !1453, i32 1346, i32 0, metadata !5, i32 247} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1481 = metadata !{i32 1348, i32 0, metadata !1480, null}
!1482 = metadata !{i32 1351, i32 0, metadata !1449, null}
!1483 = metadata !{i32 1353, i32 0, metadata !562, null}
!1484 = metadata !{i32 1354, i32 0, metadata !562, null}
!1485 = metadata !{i32 1356, i32 0, metadata !564, null}
!1486 = metadata !{i32 1364, i32 0, metadata !1487, null}
!1487 = metadata !{i32 786443, metadata !1488, i32 1361, i32 0, metadata !5, i32 250} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1488 = metadata !{i32 786443, metadata !586, i32 1361, i32 0, metadata !5, i32 249} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1489 = metadata !{i32 1367, i32 0, metadata !1487, null}
!1490 = metadata !{i32 1371, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !1487, i32 1370, i32 0, metadata !5, i32 253} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1492 = metadata !{i32 1361, i32 0, metadata !1488, null}
!1493 = metadata !{i32 1365, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !1487, i32 1364, i32 0, metadata !5, i32 251} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1495 = metadata !{i32 1366, i32 0, metadata !1494, null}
!1496 = metadata !{i32 1368, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1487, i32 1367, i32 0, metadata !5, i32 252} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1498 = metadata !{i32 1369, i32 0, metadata !1497, null}
!1499 = metadata !{i32 1373, i32 0, metadata !1487, null}
!1500 = metadata !{i32 1378, i32 0, metadata !586, null}
!1501 = metadata !{i32 1379, i32 0, metadata !586, null}
!1502 = metadata !{i32 1380, i32 0, metadata !586, null}
!1503 = metadata !{i32 1381, i32 0, metadata !586, null}
!1504 = metadata !{i32 1382, i32 0, metadata !586, null}
!1505 = metadata !{i32 1383, i32 0, metadata !586, null}
!1506 = metadata !{i32 1385, i32 0, metadata !596, null}
!1507 = metadata !{i32 1391, i32 0, metadata !614, null}
!1508 = metadata !{i32 1392, i32 0, metadata !614, null}
!1509 = metadata !{i32 1393, i32 0, metadata !614, null}
!1510 = metadata !{i32 1399, i32 0, metadata !1511, null}
!1511 = metadata !{i32 786443, metadata !614, i32 1393, i32 0, metadata !5, i32 256} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1512 = metadata !{i32 1403, i32 0, metadata !1511, null}
!1513 = metadata !{i32 1394, i32 0, metadata !1511, null}
!1514 = metadata !{i32 1395, i32 0, metadata !1511, null}
!1515 = metadata !{i32 1396, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !1511, i32 1395, i32 0, metadata !5, i32 257} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1517 = metadata !{i32 1400, i32 0, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !1511, i32 1399, i32 0, metadata !5, i32 258} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1519 = metadata !{i32 1404, i32 0, metadata !1511, null}
!1520 = metadata !{i32 1405, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !1511, i32 1404, i32 0, metadata !5, i32 259} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1522 = metadata !{i32 1406, i32 0, metadata !1521, null}
!1523 = metadata !{i32 1408, i32 0, metadata !1511, null}
!1524 = metadata !{i32 1409, i32 0, metadata !1525, null}
!1525 = metadata !{i32 786443, metadata !1511, i32 1408, i32 0, metadata !5, i32 260} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1526 = metadata !{i32 1410, i32 0, metadata !1525, null}
!1527 = metadata !{i32 1415, i32 0, metadata !614, null}
!1528 = metadata !{i32 1418, i32 0, metadata !618, null}
!1529 = metadata !{i32 1423, i32 0, metadata !633, null}
!1530 = metadata !{i32 1424, i32 0, metadata !633, null}
!1531 = metadata !{i32 1427, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !633, i32 1427, i32 0, metadata !5, i32 263} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1533 = metadata !{i32 1429, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1535, i32 1429, i32 0, metadata !5, i32 265} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1535 = metadata !{i32 786443, metadata !1532, i32 1427, i32 0, metadata !5, i32 264} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1536 = metadata !{i32 1428, i32 0, metadata !1535, null}
!1537 = metadata !{i32 1430, i32 0, metadata !1538, null}
!1538 = metadata !{i32 786443, metadata !1534, i32 1429, i32 0, metadata !5, i32 266} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.c]
!1539 = metadata !{i32 1432, i32 0, metadata !1535, null}
!1540 = metadata !{i32 1434, i32 0, metadata !633, null}
!1541 = metadata !{i32 1435, i32 0, metadata !633, null}
