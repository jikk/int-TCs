; ModuleID = '../../src/src/hash.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.hash_table = type { i32 (i8*)*, i32 (i8*, i8*)*, %struct.cell*, i32, i32, i32, i32 }
%struct.cell = type { i8*, i8* }
%struct.hash_table_iterator = type { i8*, i8*, i8*, i8* }

@0 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@1 = internal unnamed_addr constant [3 x i8] c"+=\00"
@2 = internal unnamed_addr constant [5 x i8] c"char\00"
@3 = internal unnamed_addr constant [2 x i8] c"*\00"
@4 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@5 = internal unnamed_addr constant [2 x i8] c"-\00"
@prime_size.primes = internal unnamed_addr constant [71 x i32] [i32 13, i32 19, i32 29, i32 41, i32 59, i32 79, i32 107, i32 149, i32 197, i32 263, i32 347, i32 457, i32 599, i32 787, i32 1031, i32 1361, i32 1777, i32 2333, i32 3037, i32 3967, i32 5167, i32 6719, i32 8737, i32 11369, i32 14783, i32 19219, i32 24989, i32 32491, i32 42257, i32 54941, i32 71429, i32 92861, i32 120721, i32 156941, i32 204047, i32 265271, i32 344857, i32 448321, i32 582821, i32 757693, i32 985003, i32 1280519, i32 1664681, i32 2164111, i32 2813353, i32 3657361, i32 4754591, i32 6180989, i32 8035301, i32 10445899, i32 13579681, i32 17653589, i32 22949669, i32 29834603, i32 38784989, i32 50420551, i32 65546729, i32 85210757, i32 110774011, i32 144006217, i32 187208107, i32 243370577, i32 316381771, i32 411296309, i32 534685237, i32 695090819, i32 903618083, i32 1174703521, i32 1527114613, i32 1837299131, i32 2147483647], align 4
@6 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@9 = internal unnamed_addr constant [4 x i8] c"int\00"
@10 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@11 = internal unnamed_addr constant [21 x i8] c"../../src/src/hash.c\00"

define noalias %struct.hash_table* @hash_table_new(i32 %items, i32 (i8*)* %hash_function, i32 (i8*, i8*)* %test_function) nounwind {
entry:
  %call = tail call noalias i8* @xmalloc(i32 28) nounwind
  %0 = bitcast i8* %call to %struct.hash_table*
  %tobool = icmp ne i32 (i8*)* %hash_function, null
  %cond = select i1 %tobool, i32 (i8*)* %hash_function, i32 (i8*)* @hash_pointer
  %hash_function1 = bitcast i8* %call to i32 (i8*)**
  store i32 (i8*)* %cond, i32 (i8*)** %hash_function1, align 4, !tbaa !0
  %tobool2 = icmp ne i32 (i8*, i8*)* %test_function, null
  %cond6 = select i1 %tobool2, i32 (i8*, i8*)* %test_function, i32 (i8*, i8*)* @cmp_pointer
  %test_function7 = getelementptr inbounds i8* %call, i32 4
  %1 = bitcast i8* %test_function7 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %cond6, i32 (i8*, i8*)** %1, align 4, !tbaa !0
  %prime_offset = getelementptr inbounds i8* %call, i32 24
  %2 = bitcast i8* %prime_offset to i32*
  store i32 0, i32* %2, align 4, !tbaa !3
  %conv = sitofp i32 %items to double
  %div = fdiv double %conv, 7.500000e-01
  %add = fadd double %div, 1.000000e+00
  %conv8 = fptosi double %add to i32
  %call10 = tail call fastcc i32 @prime_size(i32 %conv8, i32* %2)
  %size11 = getelementptr inbounds i8* %call, i32 12
  %3 = bitcast i8* %size11 to i32*
  store i32 %call10, i32* %3, align 4, !tbaa !3
  %conv12 = sitofp i32 %call10 to double
  %mul = fmul double %conv12, 7.500000e-01
  %conv13 = fptosi double %mul to i32
  %resize_threshold = getelementptr inbounds i8* %call, i32 20
  %4 = bitcast i8* %resize_threshold to i32*
  store i32 %conv13, i32* %4, align 4, !tbaa !3
  %5 = icmp sgt i32 %call10, -1
  br i1 %5, label %cont15, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %6 = sext i32 %call10 to i64
  tail call void @__ioc_report_conversion(i32 240, i32 26, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %6, i8 1) nounwind
  br label %cont15

cont15:                                           ; preds = %ioc_bb, %entry
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call10, i32 8)
  %8 = extractvalue { i32, i1 } %7, 0
  %9 = extractvalue { i32, i1 } %7, 1
  br i1 %9, label %ioc_bb16, label %cont17

ioc_bb16:                                         ; preds = %cont15
  %10 = zext i32 %call10 to i64
  tail call void @__ioc_report_mul_overflow(i32 240, i32 39, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %10, i64 8, i8 5) nounwind
  br label %cont17

cont17:                                           ; preds = %cont15, %ioc_bb16
  %call18 = tail call noalias i8* @xmalloc(i32 %8) nounwind
  %11 = bitcast i8* %call18 to %struct.cell*
  %cells = getelementptr inbounds i8* %call, i32 8
  %12 = bitcast i8* %cells to %struct.cell**
  store %struct.cell* %11, %struct.cell** %12, align 4, !tbaa !0
  br i1 %5, label %cont26, label %ioc_bb25

ioc_bb25:                                         ; preds = %cont17
  %13 = sext i32 %call10 to i64
  tail call void @__ioc_report_conversion(i32 243, i32 36, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %13, i8 1) nounwind
  br label %cont26

cont26:                                           ; preds = %ioc_bb25, %cont17
  br i1 %9, label %ioc_bb27, label %cont28

ioc_bb27:                                         ; preds = %cont26
  %14 = zext i32 %call10 to i64
  tail call void @__ioc_report_mul_overflow(i32 243, i32 41, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %14, i64 8, i8 5) nounwind
  br label %cont28

cont28:                                           ; preds = %cont26, %ioc_bb27
  tail call void @llvm.memset.p0i8.i32(i8* %call18, i8 -1, i32 %8, i32 4, i1 false)
  %count = getelementptr inbounds i8* %call, i32 16
  %15 = bitcast i8* %count to i32*
  store i32 0, i32* %15, align 4, !tbaa !3
  ret %struct.hash_table* %0
}

declare noalias i8* @xmalloc(i32)

define i32 @hash_pointer(i8* %ptr) nounwind {
entry:
  %0 = ptrtoint i8* %ptr to i32
  %shl = shl i32 %0, 12
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 %shl)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  br i1 %3, label %ioc_bb1, label %cont4

ioc_bb1:                                          ; preds = %entry
  %4 = zext i32 %0 to i64
  %5 = zext i32 %shl to i64
  tail call void @__ioc_report_add_overflow(i32 578, i32 7, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %4, i64 %5, i8 5) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb1, %entry
  %shr = lshr i32 %2, 22
  %xor = xor i32 %shr, %2
  %shl7 = shl i32 %xor, 4
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %xor, i32 %shl7)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb8, label %cont11

ioc_bb8:                                          ; preds = %cont4
  %9 = zext i32 %xor to i64
  %10 = zext i32 %shl7 to i64
  tail call void @__ioc_report_add_overflow(i32 580, i32 7, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %9, i64 %10, i8 5) nounwind
  br label %cont11

cont11:                                           ; preds = %ioc_bb8, %cont4
  %shr12 = lshr i32 %7, 9
  %xor13 = xor i32 %shr12, %7
  %shl16 = shl i32 %xor13, 10
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %xor13, i32 %shl16)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb17, label %cont20

ioc_bb17:                                         ; preds = %cont11
  %14 = zext i32 %xor13 to i64
  %15 = zext i32 %shl16 to i64
  tail call void @__ioc_report_add_overflow(i32 582, i32 7, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %14, i64 %15, i8 5) nounwind
  br label %cont20

cont20:                                           ; preds = %ioc_bb17, %cont11
  %shr21 = lshr i32 %12, 2
  %xor22 = xor i32 %shr21, %12
  %shl25 = shl i32 %xor22, 7
  %16 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %xor22, i32 %shl25)
  %17 = extractvalue { i32, i1 } %16, 0
  %18 = extractvalue { i32, i1 } %16, 1
  br i1 %18, label %ioc_bb26, label %cont29

ioc_bb26:                                         ; preds = %cont20
  %19 = zext i32 %xor22 to i64
  %20 = zext i32 %shl25 to i64
  tail call void @__ioc_report_add_overflow(i32 584, i32 7, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %19, i64 %20, i8 5) nounwind
  br label %cont29

cont29:                                           ; preds = %ioc_bb26, %cont20
  %shr30 = lshr i32 %17, 12
  %xor31 = xor i32 %shr30, %17
  ret i32 %xor31
}

define internal i32 @cmp_pointer(i8* %ptr1, i8* %ptr2) nounwind readnone {
entry:
  %cmp = icmp eq i8* %ptr1, %ptr2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @llvm.trap() noreturn nounwind

define internal fastcc i32 @prime_size(i32 %size, i32* nocapture %prime_offset) nounwind {
entry:
  %0 = load i32* %prime_offset, align 4, !tbaa !3
  %1 = icmp sgt i32 %0, -1
  br i1 %1, label %for.cond.preheader, label %for.cond.preheader.thread

for.cond.preheader.thread:                        ; preds = %entry
  %2 = sext i32 %0 to i64
  tail call void @__ioc_report_conversion(i32 190, i32 12, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %2, i8 1) nounwind
  br label %for.end

for.cond.preheader:                               ; preds = %entry
  %cmp18 = icmp ult i32 %0, 71
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %i.019 = phi i32 [ %5, %for.cond.backedge ], [ %0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [71 x i32]* @prime_size.primes, i32 0, i32 %i.019
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %3, %size
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.019, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %cmp2, label %for.inc, label %cont4

cont4:                                            ; preds = %for.body
  br i1 %6, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %7 = zext i32 %i.019 to i64
  tail call void @__ioc_report_add_overflow(i32 197, i32 27, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %8 = icmp sgt i32 %5, -1
  br i1 %8, label %cont8, label %ioc_bb7

ioc_bb7:                                          ; preds = %cont6
  %9 = zext i32 %5 to i64
  tail call void @__ioc_report_conversion(i32 197, i32 24, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %9, i8 0) nounwind
  br label %cont8

cont8:                                            ; preds = %ioc_bb7, %cont6
  store i32 %5, i32* %prime_offset, align 4, !tbaa !3
  ret i32 %3

for.inc:                                          ; preds = %for.body
  br i1 %6, label %ioc_bb10, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb10
  %cmp = icmp ult i32 %5, 71
  br i1 %cmp, label %for.body, label %for.end

ioc_bb10:                                         ; preds = %for.inc
  %10 = zext i32 %i.019 to i64
  tail call void @__ioc_report_add_overflow(i32 190, i32 71, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader.thread, %for.cond.preheader
  tail call void @abort() noreturn nounwind
  unreachable
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define void @hash_table_destroy(%struct.hash_table* nocapture %ht) nounwind {
entry:
  %cells = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells, align 4, !tbaa !0
  %1 = bitcast %struct.cell* %0 to i8*
  tail call void @free(i8* %1) nounwind
  %2 = bitcast %struct.hash_table* %ht to i8*
  tail call void @free(i8* %2) nounwind
  ret void
}

declare void @free(i8* nocapture) nounwind

define i8* @hash_table_get(%struct.hash_table* nocapture %ht, i8* %key) nounwind {
entry:
  %cells1.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %size2.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size2.i, align 4, !tbaa !3
  %hash_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 0
  %2 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i = tail call i32 %2(i8* %key) nounwind
  %3 = sext i32 %1 to i64
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont.i, label %cont.thread.i

cont.thread.i:                                    ; preds = %entry
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont3.i

cont.i:                                           ; preds = %entry
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %trap.i, label %cont3.i

trap.i:                                           ; preds = %cont.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i:                                          ; preds = %cont.i, %cont.thread.i
  %rem.i = urem i32 %call.i, %1
  %add.ptr.i = getelementptr inbounds %struct.cell* %0, i32 %rem.i
  %test_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 1
  %6 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i = getelementptr inbounds %struct.cell* %add.ptr.i, i32 0, i32 0
  %7 = load i8** %key425.i, align 4, !tbaa !0
  %cmp26.i = icmp eq i8* %7, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i, label %return, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont3.i
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1) nounwind
  %9 = extractvalue { i32, i1 } %8, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cont10.i, %for.body.lr.ph.i
  %10 = phi i8* [ %7, %for.body.lr.ph.i ], [ %12, %cont10.i ]
  %c.027.i = phi %struct.cell* [ %add.ptr.i, %for.body.lr.ph.i ], [ %cond.i, %cont10.i ]
  %call8.i = tail call i32 %6(i8* %key, i8* %10) nounwind
  %tobool.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.i, label %for.inc.i, label %find_cell.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %for.inc.i
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %for.inc.i
  %add.ptr11.i = getelementptr inbounds %struct.cell* %0, i32 %11
  %cmp12.i = icmp eq %struct.cell* %c.027.i, %add.ptr11.i
  %add.ptr13.i = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond.i = select i1 %cmp12.i, %struct.cell* %0, %struct.cell* %add.ptr13.i
  %key4.i = getelementptr inbounds %struct.cell* %cond.i, i32 0, i32 0
  %12 = load i8** %key4.i, align 4, !tbaa !0
  %cmp.i = icmp eq i8* %12, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i, label %return, label %for.body.i

find_cell.exit:                                   ; preds = %for.body.i
  %key1.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %.pre.pre = load i8** %key1.phi.trans.insert.phi.trans.insert, align 4, !tbaa !0
  %cmp = icmp eq i8* %.pre.pre, inttoptr (i32 -1 to i8*)
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %find_cell.exit
  %value = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 1
  %13 = load i8** %value, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cont10.i, %cont3.i, %find_cell.exit, %if.then
  %retval.0 = phi i8* [ %13, %if.then ], [ null, %find_cell.exit ], [ null, %cont3.i ], [ null, %cont10.i ]
  ret i8* %retval.0
}

define i32 @hash_table_get_pair(%struct.hash_table* nocapture %ht, i8* %lookup_key, i8* %orig_key, i8* %value) nounwind {
entry:
  %cells1.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %size2.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size2.i, align 4, !tbaa !3
  %hash_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 0
  %2 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i = tail call i32 %2(i8* %lookup_key) nounwind
  %3 = sext i32 %1 to i64
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont.i, label %cont.thread.i

cont.thread.i:                                    ; preds = %entry
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont3.i

cont.i:                                           ; preds = %entry
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %trap.i, label %cont3.i

trap.i:                                           ; preds = %cont.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i:                                          ; preds = %cont.i, %cont.thread.i
  %rem.i = urem i32 %call.i, %1
  %add.ptr.i = getelementptr inbounds %struct.cell* %0, i32 %rem.i
  %test_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 1
  %6 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i = getelementptr inbounds %struct.cell* %add.ptr.i, i32 0, i32 0
  %7 = load i8** %key425.i, align 4, !tbaa !0
  %cmp26.i = icmp eq i8* %7, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i, label %return, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont3.i
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1) nounwind
  %9 = extractvalue { i32, i1 } %8, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cont10.i, %for.body.lr.ph.i
  %10 = phi i8* [ %7, %for.body.lr.ph.i ], [ %12, %cont10.i ]
  %c.027.i = phi %struct.cell* [ %add.ptr.i, %for.body.lr.ph.i ], [ %cond.i, %cont10.i ]
  %call8.i = tail call i32 %6(i8* %lookup_key, i8* %10) nounwind
  %tobool.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.i, label %for.inc.i, label %find_cell.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %for.inc.i
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %for.inc.i
  %add.ptr11.i = getelementptr inbounds %struct.cell* %0, i32 %11
  %cmp12.i = icmp eq %struct.cell* %c.027.i, %add.ptr11.i
  %add.ptr13.i = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond.i = select i1 %cmp12.i, %struct.cell* %0, %struct.cell* %add.ptr13.i
  %key4.i = getelementptr inbounds %struct.cell* %cond.i, i32 0, i32 0
  %12 = load i8** %key4.i, align 4, !tbaa !0
  %cmp.i = icmp eq i8* %12, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i, label %return, label %for.body.i

find_cell.exit:                                   ; preds = %for.body.i
  %key.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %.pre.pre = load i8** %key.phi.trans.insert.phi.trans.insert, align 4, !tbaa !0
  %cmp = icmp eq i8* %.pre.pre, inttoptr (i32 -1 to i8*)
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %find_cell.exit
  %tobool = icmp eq i8* %orig_key, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %13 = bitcast i8* %orig_key to i8**
  store i8* %.pre.pre, i8** %13, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %tobool3 = icmp eq i8* %value, null
  br i1 %tobool3, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %value5 = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 1
  %14 = load i8** %value5, align 4, !tbaa !0
  %15 = bitcast i8* %value to i8**
  store i8* %14, i8** %15, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cont10.i, %cont3.i, %find_cell.exit, %if.then4, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %if.then4 ], [ 0, %find_cell.exit ], [ 0, %cont3.i ], [ 0, %cont10.i ]
  ret i32 %retval.0
}

define i32 @hash_table_contains(%struct.hash_table* nocapture %ht, i8* %key) nounwind {
entry:
  %cells1.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %size2.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size2.i, align 4, !tbaa !3
  %hash_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 0
  %2 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i = tail call i32 %2(i8* %key) nounwind
  %3 = sext i32 %1 to i64
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont.i, label %cont.thread.i

cont.thread.i:                                    ; preds = %entry
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont3.i

cont.i:                                           ; preds = %entry
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %trap.i, label %cont3.i

trap.i:                                           ; preds = %cont.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i:                                          ; preds = %cont.i, %cont.thread.i
  %rem.i = urem i32 %call.i, %1
  %add.ptr.i = getelementptr inbounds %struct.cell* %0, i32 %rem.i
  %test_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 1
  %6 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i = getelementptr inbounds %struct.cell* %add.ptr.i, i32 0, i32 0
  %7 = load i8** %key425.i, align 4, !tbaa !0
  %cmp26.i = icmp eq i8* %7, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i, label %find_cell.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont3.i
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1) nounwind
  %9 = extractvalue { i32, i1 } %8, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cont10.i, %for.body.lr.ph.i
  %10 = phi i8* [ %7, %for.body.lr.ph.i ], [ %12, %cont10.i ]
  %c.027.i = phi %struct.cell* [ %add.ptr.i, %for.body.lr.ph.i ], [ %cond.i, %cont10.i ]
  %call8.i = tail call i32 %6(i8* %key, i8* %10) nounwind
  %tobool.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.i, label %for.inc.i, label %for.body.i.find_cell.exit.loopexit_crit_edge

for.body.i.find_cell.exit.loopexit_crit_edge:     ; preds = %for.body.i
  %key1.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %.pre.pre = load i8** %key1.phi.trans.insert.phi.trans.insert, align 4, !tbaa !0
  br label %find_cell.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %for.inc.i
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %for.inc.i
  %add.ptr11.i = getelementptr inbounds %struct.cell* %0, i32 %11
  %cmp12.i = icmp eq %struct.cell* %c.027.i, %add.ptr11.i
  %add.ptr13.i = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond.i = select i1 %cmp12.i, %struct.cell* %0, %struct.cell* %add.ptr13.i
  %key4.i = getelementptr inbounds %struct.cell* %cond.i, i32 0, i32 0
  %12 = load i8** %key4.i, align 4, !tbaa !0
  %cmp.i = icmp eq i8* %12, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i, label %find_cell.exit, label %for.body.i

find_cell.exit:                                   ; preds = %cont10.i, %for.body.i.find_cell.exit.loopexit_crit_edge, %cont3.i
  %13 = phi i8* [ inttoptr (i32 -1 to i8*), %cont3.i ], [ %.pre.pre, %for.body.i.find_cell.exit.loopexit_crit_edge ], [ inttoptr (i32 -1 to i8*), %cont10.i ]
  %cmp = icmp ne i8* %13, inttoptr (i32 -1 to i8*)
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define void @hash_table_put(%struct.hash_table* nocapture %ht, i8* %key, i8* %value) nounwind {
entry:
  %cells1.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %size2.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size2.i, align 4, !tbaa !3
  %hash_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 0
  %2 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i = tail call i32 %2(i8* %key) nounwind
  %3 = sext i32 %1 to i64
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont.i, label %cont.thread.i

cont.thread.i:                                    ; preds = %entry
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont3.i

cont.i:                                           ; preds = %entry
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %trap.i, label %cont3.i

trap.i:                                           ; preds = %cont.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i:                                          ; preds = %cont.i, %cont.thread.i
  %rem.i = urem i32 %call.i, %1
  %add.ptr.i = getelementptr inbounds %struct.cell* %0, i32 %rem.i
  %test_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 1
  %6 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i = getelementptr inbounds %struct.cell* %add.ptr.i, i32 0, i32 0
  %7 = load i8** %key425.i, align 4, !tbaa !0
  %cmp26.i = icmp eq i8* %7, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i, label %if.end, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont3.i
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1) nounwind
  %9 = extractvalue { i32, i1 } %8, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cont10.i, %for.body.lr.ph.i
  %10 = phi i8* [ %7, %for.body.lr.ph.i ], [ %12, %cont10.i ]
  %c.027.i = phi %struct.cell* [ %add.ptr.i, %for.body.lr.ph.i ], [ %cond.i, %cont10.i ]
  %call8.i = tail call i32 %6(i8* %key, i8* %10) nounwind
  %tobool.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.i, label %for.inc.i, label %find_cell.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %for.inc.i
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %for.inc.i
  %add.ptr11.i = getelementptr inbounds %struct.cell* %0, i32 %11
  %cmp12.i = icmp eq %struct.cell* %c.027.i, %add.ptr11.i
  %add.ptr13.i = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond.i = select i1 %cmp12.i, %struct.cell* %0, %struct.cell* %add.ptr13.i
  %key4.i = getelementptr inbounds %struct.cell* %cond.i, i32 0, i32 0
  %12 = load i8** %key4.i, align 4, !tbaa !0
  %cmp.i = icmp eq i8* %12, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i, label %if.end, label %for.body.i

find_cell.exit:                                   ; preds = %for.body.i
  %key1.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %.pre.pre = load i8** %key1.phi.trans.insert.phi.trans.insert, align 4, !tbaa !0
  %cmp = icmp eq i8* %.pre.pre, inttoptr (i32 -1 to i8*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %find_cell.exit
  %key1 = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  store i8* %key, i8** %key1, align 4, !tbaa !0
  %value3 = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 1
  store i8* %value, i8** %value3, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %cont10.i, %cont3.i, %find_cell.exit
  %c.0.lcssa.i69 = phi %struct.cell* [ %c.027.i, %find_cell.exit ], [ %add.ptr.i, %cont3.i ], [ %cond.i, %cont10.i ]
  %count = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 4
  %13 = load i32* %count, align 4, !tbaa !3
  %resize_threshold = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 5
  %14 = load i32* %resize_threshold, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %13, %14
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %15 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %16 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %17 = load i32* %size2.i, align 4, !tbaa !3
  %add.ptr.i27 = getelementptr inbounds %struct.cell* %16, i32 %17
  %18 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %17, i32 2) nounwind
  %19 = extractvalue { i32, i1 } %18, 0
  %20 = extractvalue { i32, i1 } %18, 1
  br i1 %20, label %ioc_bb.i, label %cont.i29

ioc_bb.i:                                         ; preds = %if.then5
  %21 = sext i32 %17 to i64
  tail call void @__ioc_report_mul_overflow(i32 318, i32 35, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %21, i64 2, i8 13) nounwind
  br label %cont.i29

cont.i29:                                         ; preds = %ioc_bb.i, %if.then5
  %prime_offset.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 6
  %call.i28 = tail call fastcc i32 @prime_size(i32 %19, i32* %prime_offset.i) nounwind
  store i32 %call.i28, i32* %size2.i, align 4, !tbaa !3
  %conv.i = sitofp i32 %call.i28 to double
  %mul.i = fmul double %conv.i, 7.500000e-01
  %conv5.i = fptosi double %mul.i to i32
  store i32 %conv5.i, i32* %resize_threshold, align 4, !tbaa !3
  %22 = sext i32 %call.i28 to i64
  %23 = icmp sgt i32 %call.i28, -1
  br i1 %23, label %cont7.i, label %ioc_bb6.i

ioc_bb6.i:                                        ; preds = %cont.i29
  tail call void @__ioc_report_conversion(i32 323, i32 20, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont7.i

cont7.i:                                          ; preds = %ioc_bb6.i, %cont.i29
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i28, i32 8) nounwind
  %25 = extractvalue { i32, i1 } %24, 0
  %26 = extractvalue { i32, i1 } %24, 1
  %27 = zext i32 %call.i28 to i64
  br i1 %26, label %ioc_bb8.i, label %cont9.i

ioc_bb8.i:                                        ; preds = %cont7.i
  tail call void @__ioc_report_mul_overflow(i32 323, i32 28, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %27, i64 8, i8 5) nounwind
  br label %cont9.i

cont9.i:                                          ; preds = %ioc_bb8.i, %cont7.i
  %call10.i = tail call noalias i8* @xmalloc(i32 %25) nounwind
  %28 = bitcast i8* %call10.i to %struct.cell*
  br i1 %23, label %cont17.i, label %ioc_bb16.i

ioc_bb16.i:                                       ; preds = %cont9.i
  tail call void @__ioc_report_conversion(i32 324, i32 28, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont17.i

cont17.i:                                         ; preds = %ioc_bb16.i, %cont9.i
  br i1 %26, label %ioc_bb18.i, label %cont19.i

ioc_bb18.i:                                       ; preds = %cont17.i
  tail call void @__ioc_report_mul_overflow(i32 324, i32 36, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %27, i64 8, i8 5) nounwind
  br label %cont19.i

cont19.i:                                         ; preds = %ioc_bb18.i, %cont17.i
  tail call void @llvm.memset.p0i8.i32(i8* %call10.i, i8 -1, i32 %25, i32 4, i1 false) nounwind
  store %struct.cell* %28, %struct.cell** %cells1.i, align 4, !tbaa !0
  %cmp75.i = icmp sgt i32 %17, 0
  br i1 %cmp75.i, label %for.body.lr.ph.i30, label %grow_hash_table.exit

for.body.lr.ph.i30:                               ; preds = %cont19.i
  %29 = icmp eq i32 %call.i28, 0
  %30 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %call.i28, i32 1) nounwind
  %31 = extractvalue { i32, i1 } %30, 1
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc46.i, %for.body.lr.ph.i30
  %c.076.i = phi %struct.cell* [ %16, %for.body.lr.ph.i30 ], [ %incdec.ptr.i, %for.inc46.i ]
  %key.i = getelementptr inbounds %struct.cell* %c.076.i, i32 0, i32 0
  %32 = load i8** %key.i, align 4, !tbaa !0
  %cmp24.i = icmp eq i8* %32, inttoptr (i32 -1 to i8*)
  br i1 %cmp24.i, label %for.inc46.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i31
  %call27.i = tail call i32 %15(i8* %32) nounwind
  br i1 %23, label %cont30.i, label %ioc_bb29.i

ioc_bb29.i:                                       ; preds = %if.then.i
  tail call void @__ioc_report_conversion(i32 332, i32 44, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %22, i8 1) nounwind
  br label %cont30.i

cont30.i:                                         ; preds = %ioc_bb29.i, %if.then.i
  br i1 %29, label %trap.i32, label %cont31.i

trap.i32:                                         ; preds = %cont30.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont31.i:                                         ; preds = %cont30.i
  %rem.i33 = urem i32 %call27.i, %call.i28
  %add.ptr32.i = getelementptr inbounds %struct.cell* %28, i32 %rem.i33
  %key3472.i = getelementptr inbounds %struct.cell* %add.ptr32.i, i32 0, i32 0
  %33 = load i8** %key3472.i, align 4, !tbaa !0
  %cmp3773.i = icmp eq i8* %33, inttoptr (i32 -1 to i8*)
  br i1 %cmp3773.i, label %for.end.i, label %for.inc.i34

for.inc.i34:                                      ; preds = %cont31.i, %cont41.i
  %new_c.074.i = phi %struct.cell* [ %cond.i35, %cont41.i ], [ %add.ptr32.i, %cont31.i ]
  %34 = extractvalue { i32, i1 } %30, 0
  br i1 %31, label %ioc_bb40.i, label %cont41.i

ioc_bb40.i:                                       ; preds = %for.inc.i34
  tail call void @__ioc_report_sub_overflow(i32 333, i32 95, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %22, i64 1, i8 13) nounwind
  br label %cont41.i

cont41.i:                                         ; preds = %ioc_bb40.i, %for.inc.i34
  %add.ptr42.i = getelementptr inbounds %struct.cell* %28, i32 %34
  %cmp43.i = icmp eq %struct.cell* %new_c.074.i, %add.ptr42.i
  %add.ptr45.i = getelementptr inbounds %struct.cell* %new_c.074.i, i32 1
  %cond.i35 = select i1 %cmp43.i, %struct.cell* %28, %struct.cell* %add.ptr45.i
  %key34.i = getelementptr inbounds %struct.cell* %cond.i35, i32 0, i32 0
  %35 = load i8** %key34.i, align 4, !tbaa !0
  %cmp37.i = icmp eq i8* %35, inttoptr (i32 -1 to i8*)
  br i1 %cmp37.i, label %for.end.i, label %for.inc.i34

for.end.i:                                        ; preds = %cont41.i, %cont31.i
  %new_c.0.lcssa.i = phi %struct.cell* [ %add.ptr32.i, %cont31.i ], [ %cond.i35, %cont41.i ]
  %36 = bitcast %struct.cell* %c.076.i to i64*
  %37 = bitcast %struct.cell* %new_c.0.lcssa.i to i64*
  %38 = load i64* %36, align 4
  store i64 %38, i64* %37, align 4
  br label %for.inc46.i

for.inc46.i:                                      ; preds = %for.end.i, %for.body.i31
  %incdec.ptr.i = getelementptr inbounds %struct.cell* %c.076.i, i32 1
  %cmp.i36 = icmp ult %struct.cell* %incdec.ptr.i, %add.ptr.i27
  br i1 %cmp.i36, label %for.body.i31, label %grow_hash_table.exit

grow_hash_table.exit:                             ; preds = %for.inc46.i, %cont19.i
  %39 = bitcast %struct.cell* %16 to i8*
  tail call void @free(i8* %39) nounwind
  %40 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %41 = load i32* %size2.i, align 4, !tbaa !3
  %42 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i40 = tail call i32 %42(i8* %key) nounwind
  %43 = sext i32 %41 to i64
  %44 = icmp sgt i32 %41, -1
  br i1 %44, label %cont.i42, label %cont.thread.i41

cont.thread.i41:                                  ; preds = %grow_hash_table.exit
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %43, i8 1) nounwind
  br label %cont3.i49

cont.i42:                                         ; preds = %grow_hash_table.exit
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %trap.i43, label %cont3.i49

trap.i43:                                         ; preds = %cont.i42
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i49:                                        ; preds = %cont.i42, %cont.thread.i41
  %rem.i44 = urem i32 %call.i40, %41
  %add.ptr.i45 = getelementptr inbounds %struct.cell* %40, i32 %rem.i44
  %46 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i47 = getelementptr inbounds %struct.cell* %add.ptr.i45, i32 0, i32 0
  %47 = load i8** %key425.i47, align 4, !tbaa !0
  %cmp26.i48 = icmp eq i8* %47, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i48, label %if.end7, label %for.body.lr.ph.i50

for.body.lr.ph.i50:                               ; preds = %cont3.i49
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %41, i32 1) nounwind
  %49 = extractvalue { i32, i1 } %48, 1
  br label %for.body.i54

for.body.i54:                                     ; preds = %cont10.i63, %for.body.lr.ph.i50
  %50 = phi i8* [ %47, %for.body.lr.ph.i50 ], [ %52, %cont10.i63 ]
  %c.027.i51 = phi %struct.cell* [ %add.ptr.i45, %for.body.lr.ph.i50 ], [ %cond.i60, %cont10.i63 ]
  %call8.i52 = tail call i32 %46(i8* %key, i8* %50) nounwind
  %tobool.i53 = icmp eq i32 %call8.i52, 0
  br i1 %tobool.i53, label %for.inc.i55, label %if.end7

for.inc.i55:                                      ; preds = %for.body.i54
  %51 = extractvalue { i32, i1 } %48, 0
  br i1 %49, label %ioc_bb9.i56, label %cont10.i63

ioc_bb9.i56:                                      ; preds = %for.inc.i55
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %43, i64 1, i8 13) nounwind
  br label %cont10.i63

cont10.i63:                                       ; preds = %ioc_bb9.i56, %for.inc.i55
  %add.ptr11.i57 = getelementptr inbounds %struct.cell* %40, i32 %51
  %cmp12.i58 = icmp eq %struct.cell* %c.027.i51, %add.ptr11.i57
  %add.ptr13.i59 = getelementptr inbounds %struct.cell* %c.027.i51, i32 1
  %cond.i60 = select i1 %cmp12.i58, %struct.cell* %40, %struct.cell* %add.ptr13.i59
  %key4.i61 = getelementptr inbounds %struct.cell* %cond.i60, i32 0, i32 0
  %52 = load i8** %key4.i61, align 4, !tbaa !0
  %cmp.i62 = icmp eq i8* %52, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i62, label %if.end7, label %for.body.i54

if.end7:                                          ; preds = %cont10.i63, %for.body.i54, %cont3.i49, %if.end
  %c.0 = phi %struct.cell* [ %c.0.lcssa.i69, %if.end ], [ %add.ptr.i45, %cont3.i49 ], [ %cond.i60, %cont10.i63 ], [ %c.027.i51, %for.body.i54 ]
  %53 = load i32* %count, align 4, !tbaa !3
  %54 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %53, i32 1)
  %55 = extractvalue { i32, i1 } %54, 0
  %56 = extractvalue { i32, i1 } %54, 1
  br i1 %56, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %if.end7
  %57 = sext i32 %53 to i64
  tail call void @__ioc_report_add_overflow(i32 359, i32 3, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %57, i64 1, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %if.end7, %ioc_bb9
  store i32 %55, i32* %count, align 4, !tbaa !3
  %key11 = getelementptr inbounds %struct.cell* %c.0, i32 0, i32 0
  store i8* %key, i8** %key11, align 4, !tbaa !0
  %value12 = getelementptr inbounds %struct.cell* %c.0, i32 0, i32 1
  store i8* %value, i8** %value12, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cont10, %if.then
  ret void
}

define i32 @hash_table_remove(%struct.hash_table* nocapture %ht, i8* %key) nounwind {
entry:
  %cells1.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %size2.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size2.i, align 4, !tbaa !3
  %hash_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 0
  %2 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  %call.i = tail call i32 %2(i8* %key) nounwind
  %3 = sext i32 %1 to i64
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %cont.i, label %cont.thread.i

cont.thread.i:                                    ; preds = %entry
  tail call void @__ioc_report_conversion(i32 262, i32 59, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont3.i

cont.i:                                           ; preds = %entry
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %trap.i, label %cont3.i

trap.i:                                           ; preds = %cont.i
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont3.i:                                          ; preds = %cont.i, %cont.thread.i
  %rem.i = urem i32 %call.i, %1
  %add.ptr.i = getelementptr inbounds %struct.cell* %0, i32 %rem.i
  %test_function.i = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 1
  %6 = load i32 (i8*, i8*)** %test_function.i, align 4, !tbaa !0
  %key425.i = getelementptr inbounds %struct.cell* %add.ptr.i, i32 0, i32 0
  %7 = load i8** %key425.i, align 4, !tbaa !0
  %cmp26.i = icmp eq i8* %7, inttoptr (i32 -1 to i8*)
  br i1 %cmp26.i, label %return, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cont3.i
  %8 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 1) nounwind
  %9 = extractvalue { i32, i1 } %8, 1
  br label %for.body.i

for.body.i:                                       ; preds = %cont10.i, %for.body.lr.ph.i
  %10 = phi i8* [ %7, %for.body.lr.ph.i ], [ %12, %cont10.i ]
  %c.027.i = phi %struct.cell* [ %add.ptr.i, %for.body.lr.ph.i ], [ %cond.i, %cont10.i ]
  %call8.i = tail call i32 %6(i8* %key, i8* %10) nounwind
  %tobool.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.i, label %for.inc.i, label %find_cell.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %ioc_bb9.i, label %cont10.i

ioc_bb9.i:                                        ; preds = %for.inc.i
  tail call void @__ioc_report_sub_overflow(i32 264, i32 76, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %3, i64 1, i8 13) nounwind
  br label %cont10.i

cont10.i:                                         ; preds = %ioc_bb9.i, %for.inc.i
  %add.ptr11.i = getelementptr inbounds %struct.cell* %0, i32 %11
  %cmp12.i = icmp eq %struct.cell* %c.027.i, %add.ptr11.i
  %add.ptr13.i = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond.i = select i1 %cmp12.i, %struct.cell* %0, %struct.cell* %add.ptr13.i
  %key4.i = getelementptr inbounds %struct.cell* %cond.i, i32 0, i32 0
  %12 = load i8** %key4.i, align 4, !tbaa !0
  %cmp.i = icmp eq i8* %12, inttoptr (i32 -1 to i8*)
  br i1 %cmp.i, label %return, label %for.body.i

find_cell.exit:                                   ; preds = %for.body.i
  %key1.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %.pre.pre = load i8** %key1.phi.trans.insert.phi.trans.insert, align 4, !tbaa !0
  %cmp = icmp eq i8* %.pre.pre, inttoptr (i32 -1 to i8*)
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %find_cell.exit
  %key1 = getelementptr inbounds %struct.cell* %c.027.i, i32 0, i32 0
  %13 = load i32* %size2.i, align 4, !tbaa !3
  %14 = load %struct.cell** %cells1.i, align 4, !tbaa !0
  %15 = load i32 (i8*)** %hash_function.i, align 4, !tbaa !0
  store i8* inttoptr (i32 -1 to i8*), i8** %key1, align 4, !tbaa !0
  %count = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 4
  %16 = load i32* %count, align 4, !tbaa !3
  %17 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %16, i32 -1)
  %18 = extractvalue { i32, i1 } %17, 0
  %19 = extractvalue { i32, i1 } %17, 1
  br i1 %19, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %if.else
  %20 = sext i32 %16 to i64
  tail call void @__ioc_report_add_overflow(i32 377, i32 5, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %20, i64 -1, i8 13) nounwind
  br label %cont8

cont8:                                            ; preds = %if.else, %ioc_bb7
  store i32 %18, i32* %count, align 4, !tbaa !3
  %21 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %13, i32 1)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  %24 = sext i32 %13 to i64
  br i1 %23, label %ioc_bb9, label %cont10

ioc_bb9:                                          ; preds = %cont8
  tail call void @__ioc_report_sub_overflow(i32 382, i32 29, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont10

cont10:                                           ; preds = %cont8, %ioc_bb9
  %add.ptr = getelementptr inbounds %struct.cell* %14, i32 %22
  %cmp11 = icmp eq %struct.cell* %c.027.i, %add.ptr
  %add.ptr12 = getelementptr inbounds %struct.cell* %c.027.i, i32 1
  %cond = select i1 %cmp11, %struct.cell* %14, %struct.cell* %add.ptr12
  %key1386 = getelementptr inbounds %struct.cell* %cond, i32 0, i32 0
  %25 = load i8** %key1386, align 4, !tbaa !0
  %cmp1687 = icmp eq i8* %25, inttoptr (i32 -1 to i8*)
  br i1 %cmp1687, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cont10
  %26 = icmp sgt i32 %13, -1
  %27 = icmp eq i32 %13, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cont46
  %28 = phi i8* [ %25, %for.body.lr.ph ], [ %35, %cont46 ]
  %key1390 = phi i8** [ %key1386, %for.body.lr.ph ], [ %key13, %cont46 ]
  %c.088 = phi %struct.cell* [ %cond, %for.body.lr.ph ], [ %cond53, %cont46 ]
  %call18 = tail call i32 %15(i8* %28) nounwind
  br i1 %26, label %cont20, label %cont20.thread

cont20.thread:                                    ; preds = %for.body
  tail call void @__ioc_report_conversion(i32 387, i32 38, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @4, i32 0, i32 0), i64 %24, i8 1) nounwind
  br label %cont21

cont20:                                           ; preds = %for.body
  br i1 %27, label %trap, label %cont21

trap:                                             ; preds = %cont20
  tail call void @llvm.trap() noreturn nounwind
  unreachable

cont21:                                           ; preds = %cont20.thread, %cont20
  %rem = urem i32 %call18, %13
  %add.ptr22 = getelementptr inbounds %struct.cell* %14, i32 %rem
  %key2483 = getelementptr inbounds %struct.cell* %add.ptr22, i32 0, i32 0
  %29 = load i8** %key2483, align 4, !tbaa !0
  %cmp2784 = icmp eq i8* %29, inttoptr (i32 -1 to i8*)
  br i1 %cmp2784, label %for.end, label %for.body28

for.body28:                                       ; preds = %cont21, %cont33
  %30 = phi i8* [ %31, %cont33 ], [ %29, %cont21 ]
  %c_new.085 = phi %struct.cell* [ %cond40, %cont33 ], [ %add.ptr22, %cont21 ]
  %cmp30 = icmp eq i8* %28, %30
  br i1 %cmp30, label %for.inc44, label %for.inc

for.inc:                                          ; preds = %for.body28
  br i1 %23, label %ioc_bb32, label %cont33

ioc_bb32:                                         ; preds = %for.inc
  tail call void @__ioc_report_sub_overflow(i32 388, i32 92, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont33

cont33:                                           ; preds = %for.inc, %ioc_bb32
  %cmp35 = icmp eq %struct.cell* %c_new.085, %add.ptr
  %add.ptr37 = getelementptr inbounds %struct.cell* %c_new.085, i32 1
  %cond40 = select i1 %cmp35, %struct.cell* %14, %struct.cell* %add.ptr37
  %key24 = getelementptr inbounds %struct.cell* %cond40, i32 0, i32 0
  %31 = load i8** %key24, align 4, !tbaa !0
  %cmp27 = icmp eq i8* %31, inttoptr (i32 -1 to i8*)
  br i1 %cmp27, label %for.end, label %for.body28

for.end:                                          ; preds = %cont33, %cont21
  %c_new.0.lcssa = phi %struct.cell* [ %add.ptr22, %cont21 ], [ %cond40, %cont33 ]
  %32 = bitcast %struct.cell* %c.088 to i64*
  %33 = bitcast %struct.cell* %c_new.0.lcssa to i64*
  %34 = load i64* %32, align 4
  store i64 %34, i64* %33, align 4
  store i8* inttoptr (i32 -1 to i8*), i8** %key1390, align 4, !tbaa !0
  br label %for.inc44

for.inc44:                                        ; preds = %for.body28, %for.end
  br i1 %23, label %ioc_bb45, label %cont46

ioc_bb45:                                         ; preds = %for.inc44
  tail call void @__ioc_report_sub_overflow(i32 383, i32 78, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %24, i64 1, i8 13) nounwind
  br label %cont46

cont46:                                           ; preds = %for.inc44, %ioc_bb45
  %cmp48 = icmp eq %struct.cell* %c.088, %add.ptr
  %add.ptr50 = getelementptr inbounds %struct.cell* %c.088, i32 1
  %cond53 = select i1 %cmp48, %struct.cell* %14, %struct.cell* %add.ptr50
  %key13 = getelementptr inbounds %struct.cell* %cond53, i32 0, i32 0
  %35 = load i8** %key13, align 4, !tbaa !0
  %cmp16 = icmp eq i8* %35, inttoptr (i32 -1 to i8*)
  br i1 %cmp16, label %return, label %for.body

return:                                           ; preds = %cont10.i, %cont3.i, %cont10, %cont46, %find_cell.exit
  %retval.0 = phi i32 [ 0, %find_cell.exit ], [ 1, %cont46 ], [ 1, %cont10 ], [ 0, %cont3.i ], [ 0, %cont10.i ]
  ret i32 %retval.0
}

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @hash_table_clear(%struct.hash_table* nocapture %ht) nounwind {
entry:
  %cells = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells, align 4, !tbaa !0
  %1 = bitcast %struct.cell* %0 to i8*
  %size = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %2 = load i32* %size, align 4, !tbaa !3
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %cont4, label %ioc_bb3

ioc_bb3:                                          ; preds = %entry
  %4 = sext i32 %2 to i64
  tail call void @__ioc_report_conversion(i32 407, i32 36, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %4, i8 1) nounwind
  br label %cont4

cont4:                                            ; preds = %ioc_bb3, %entry
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 8)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %8 = zext i32 %2 to i64
  tail call void @__ioc_report_mul_overflow(i32 407, i32 49, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %8, i64 8, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  tail call void @llvm.memset.p0i8.i32(i8* %1, i8 -1, i32 %6, i32 4, i1 false)
  %count = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 4
  store i32 0, i32* %count, align 4, !tbaa !3
  ret void
}

define void @hash_table_for_each(%struct.hash_table* nocapture %ht, i32 (i8*, i8*, i8*)* nocapture %fn, i8* %arg) nounwind {
entry:
  %cells = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells, align 4, !tbaa !0
  %size = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %1 = load i32* %size, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.cell* %0, i32 %1
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %c.026 = phi %struct.cell* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %key = getelementptr inbounds %struct.cell* %c.026, i32 0, i32 0
  %2 = load i8** %key, align 4, !tbaa !0
  %cmp2 = icmp eq i8* %2, inttoptr (i32 -1 to i8*)
  br i1 %cmp2, label %for.inc, label %repeat.preheader

repeat.preheader:                                 ; preds = %for.body
  %value = getelementptr inbounds %struct.cell* %c.026, i32 0, i32 1
  br label %repeat

repeat:                                           ; preds = %repeat.preheader, %if.end
  %3 = phi i8* [ %2, %repeat.preheader ], [ %5, %if.end ]
  %4 = load i8** %value, align 4, !tbaa !0
  %call = tail call i32 %fn(i8* %3, i8* %4, i8* %arg) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %for.end

if.end:                                           ; preds = %repeat
  %5 = load i8** %key, align 4, !tbaa !0
  %cmp7 = icmp eq i8* %5, %3
  %cmp11 = icmp eq i8* %5, inttoptr (i32 -1 to i8*)
  %or.cond = or i1 %cmp7, %cmp11
  br i1 %or.cond, label %for.inc, label %repeat

for.inc:                                          ; preds = %if.end, %for.body
  %incdec.ptr = getelementptr inbounds %struct.cell* %c.026, i32 1
  %cmp = icmp ult %struct.cell* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.inc, %repeat
  ret void
}

define void @hash_table_iterate(%struct.hash_table* nocapture %ht, %struct.hash_table_iterator* nocapture %iter) nounwind {
entry:
  %cells = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 2
  %0 = load %struct.cell** %cells, align 4, !tbaa !0
  %1 = bitcast %struct.cell* %0 to i8*
  %pos = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 2
  store i8* %1, i8** %pos, align 4, !tbaa !0
  %2 = load %struct.cell** %cells, align 4, !tbaa !0
  %size = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 3
  %3 = load i32* %size, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds %struct.cell* %2, i32 %3
  %4 = bitcast %struct.cell* %add.ptr to i8*
  %end = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 3
  store i8* %4, i8** %end, align 4, !tbaa !0
  ret void
}

define i32 @hash_table_iter_next(%struct.hash_table_iterator* nocapture %iter) nounwind {
entry:
  %pos = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 2
  %0 = load i8** %pos, align 4, !tbaa !0
  %1 = bitcast i8* %0 to %struct.cell*
  %end1 = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 3
  %2 = load i8** %end1, align 4, !tbaa !0
  %3 = bitcast i8* %2 to %struct.cell*
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %c.0 = phi %struct.cell* [ %1, %entry ], [ %incdec.ptr, %for.body ]
  %cmp = icmp ult %struct.cell* %c.0, %3
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond
  %key = getelementptr inbounds %struct.cell* %c.0, i32 0, i32 0
  %4 = load i8** %key, align 4, !tbaa !0
  %cmp2 = icmp eq i8* %4, inttoptr (i32 -1 to i8*)
  %incdec.ptr = getelementptr inbounds %struct.cell* %c.0, i32 1
  br i1 %cmp2, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  %key4 = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 0
  store i8* %4, i8** %key4, align 4, !tbaa !0
  %value = getelementptr inbounds %struct.cell* %c.0, i32 0, i32 1
  %5 = load i8** %value, align 4, !tbaa !0
  %value5 = getelementptr inbounds %struct.hash_table_iterator* %iter, i32 0, i32 1
  store i8* %5, i8** %value5, align 4, !tbaa !0
  %6 = bitcast %struct.cell* %incdec.ptr to i8*
  store i8* %6, i8** %pos, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.cond, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.cond ]
  ret i32 %retval.0
}

define i32 @hash_table_count(%struct.hash_table* nocapture %ht) nounwind readonly {
entry:
  %count = getelementptr inbounds %struct.hash_table* %ht, i32 0, i32 4
  %0 = load i32* %count, align 4, !tbaa !3
  ret i32 %0
}

define noalias %struct.hash_table* @make_string_hash_table(i32 %items) nounwind {
entry:
  %call = tail call %struct.hash_table* @hash_table_new(i32 %items, i32 (i8*)* @hash_string, i32 (i8*, i8*)* @cmp_string)
  ret %struct.hash_table* %call
}

define internal i32 @hash_string(i8* nocapture %key) nounwind {
entry:
  %0 = load i8* %key, align 1, !tbaa !1
  %1 = icmp sgt i8 %0, -1
  br i1 %1, label %cont, label %cont.thread

cont.thread:                                      ; preds = %entry
  %2 = sext i8 %0 to i64
  tail call void @__ioc_report_conversion(i32 520, i32 20, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %2, i8 1) nounwind
  %conv20 = sext i8 %0 to i32
  br label %for.cond.preheader

cont:                                             ; preds = %entry
  %conv = sext i8 %0 to i32
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cont, %cont.thread
  %h.0.ph = phi i32 [ %conv20, %cont.thread ], [ %conv, %cont ]
  %p.022 = getelementptr inbounds i8* %key, i32 1
  %3 = load i8* %p.022, align 1, !tbaa !1
  %cmp23 = icmp eq i8 %3, 0
  br i1 %cmp23, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %4 = phi i8 [ %16, %for.cond.backedge ], [ %3, %for.cond.preheader ]
  %p.025 = phi i8* [ %p.0, %for.cond.backedge ], [ %p.022, %for.cond.preheader ]
  %h.024 = phi i32 [ %14, %for.cond.backedge ], [ %h.0.ph, %for.cond.preheader ]
  %shl = shl i32 %h.024, 5
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %shl, i32 %h.024)
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = extractvalue { i32, i1 } %5, 1
  br i1 %7, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %for.body
  %8 = zext i32 %h.024 to i64
  %9 = zext i32 %shl to i64
  tail call void @__ioc_report_sub_overflow(i32 523, i32 20, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %9, i64 %8, i8 5) nounwind
  %.pre = load i8* %p.025, align 1, !tbaa !1
  br label %cont6

cont6:                                            ; preds = %for.body, %ioc_bb5
  %10 = phi i8 [ %4, %for.body ], [ %.pre, %ioc_bb5 ]
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %cont9, label %ioc_bb8

ioc_bb8:                                          ; preds = %cont6
  %12 = sext i8 %10 to i64
  tail call void @__ioc_report_conversion(i32 523, i32 26, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %12, i8 1) nounwind
  br label %cont9

cont9:                                            ; preds = %ioc_bb8, %cont6
  %conv10 = sext i8 %10 to i32
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 %conv10)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb11, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont9, %ioc_bb11
  %p.0 = getelementptr inbounds i8* %p.025, i32 1
  %16 = load i8* %p.0, align 1, !tbaa !1
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %if.end, label %for.body

ioc_bb11:                                         ; preds = %cont9
  %17 = zext i32 %conv10 to i64
  %18 = zext i32 %6 to i64
  tail call void @__ioc_report_add_overflow(i32 523, i32 24, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %18, i64 %17, i8 5) nounwind
  br label %for.cond.backedge

if.end:                                           ; preds = %for.cond.preheader, %for.cond.backedge, %cont
  %h.1 = phi i32 [ %conv, %cont ], [ %h.0.ph, %for.cond.preheader ], [ %14, %for.cond.backedge ]
  ret i32 %h.1
}

define internal i32 @cmp_string(i8* nocapture %s1, i8* nocapture %s2) nounwind readonly {
entry:
  %call = tail call i32 @strcmp(i8* %s1, i8* %s2) nounwind
  %lnot = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

define noalias %struct.hash_table* @make_nocase_string_hash_table(i32 %items) nounwind {
entry:
  %call = tail call %struct.hash_table* @hash_table_new(i32 %items, i32 (i8*)* @hash_string_nocase, i32 (i8*, i8*)* @string_cmp_nocase)
  ret %struct.hash_table* %call
}

define internal i32 @hash_string_nocase(i8* nocapture %key) nounwind {
entry:
  %0 = load i8* %key, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  %.off = add i8 %0, -65
  %1 = icmp ult i8 %.off, 26
  br i1 %1, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 65)
  %3 = extractvalue { i32, i1 } %2, 0
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %ioc_bb, label %cont

ioc_bb:                                           ; preds = %cond.true
  %5 = sext i8 %0 to i64
  tail call void @__ioc_report_sub_overflow(i32 549, i32 21, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %5, i64 65, i8 13) nounwind
  br label %cont

cont:                                             ; preds = %cond.true, %ioc_bb
  %6 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 97)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb4, label %cond.end

ioc_bb4:                                          ; preds = %cont
  %9 = sext i32 %3 to i64
  tail call void @__ioc_report_add_overflow(i32 549, i32 21, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %9, i64 97, i8 13) nounwind
  br label %cond.end

cond.end:                                         ; preds = %cont, %entry, %ioc_bb4
  %cond = phi i32 [ %7, %ioc_bb4 ], [ %7, %cont ], [ %conv, %entry ]
  %10 = icmp sgt i32 %cond, -1
  br i1 %10, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cond.end
  %11 = sext i32 %cond to i64
  tail call void @__ioc_report_conversion(i32 549, i32 20, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %11, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cond.end
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cont7
  %p.048 = getelementptr inbounds i8* %key, i32 1
  %12 = load i8* %p.048, align 1, !tbaa !1
  %cmp949 = icmp eq i8 %12, 0
  br i1 %cmp949, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %13 = phi i8 [ %34, %for.cond.backedge ], [ %12, %for.cond.preheader ]
  %p.051 = phi i8* [ %p.0, %for.cond.backedge ], [ %p.048, %for.cond.preheader ]
  %h.050 = phi i32 [ %32, %for.cond.backedge ], [ %cond, %for.cond.preheader ]
  %shl = shl i32 %h.050, 5
  %14 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %shl, i32 %h.050)
  %15 = extractvalue { i32, i1 } %14, 0
  %16 = extractvalue { i32, i1 } %14, 1
  br i1 %16, label %ioc_bb13, label %cont14

ioc_bb13:                                         ; preds = %for.body
  %17 = zext i32 %h.050 to i64
  %18 = zext i32 %shl to i64
  tail call void @__ioc_report_sub_overflow(i32 552, i32 20, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %18, i64 %17, i8 5) nounwind
  %.pre = load i8* %p.051, align 1, !tbaa !1
  br label %cont14

cont14:                                           ; preds = %for.body, %ioc_bb13
  %19 = phi i8 [ %13, %for.body ], [ %.pre, %ioc_bb13 ]
  %conv16 = sext i8 %19 to i32
  %.off47 = add i8 %19, -65
  %20 = icmp ult i8 %.off47, 26
  br i1 %20, label %cond.true22, label %cond.end28

cond.true22:                                      ; preds = %cont14
  %21 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv16, i32 65)
  %22 = extractvalue { i32, i1 } %21, 0
  %23 = extractvalue { i32, i1 } %21, 1
  br i1 %23, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %cond.true22
  %24 = sext i8 %19 to i64
  tail call void @__ioc_report_sub_overflow(i32 552, i32 27, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %24, i64 65, i8 13) nounwind
  br label %cont24

cont24:                                           ; preds = %cond.true22, %ioc_bb23
  %25 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %22, i32 97)
  %26 = extractvalue { i32, i1 } %25, 0
  %27 = extractvalue { i32, i1 } %25, 1
  br i1 %27, label %ioc_bb25, label %cond.end28

ioc_bb25:                                         ; preds = %cont24
  %28 = sext i32 %22 to i64
  tail call void @__ioc_report_add_overflow(i32 552, i32 27, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %28, i64 97, i8 13) nounwind
  br label %cond.end28

cond.end28:                                       ; preds = %cont24, %cont14, %ioc_bb25
  %cond29 = phi i32 [ %26, %ioc_bb25 ], [ %26, %cont24 ], [ %conv16, %cont14 ]
  %29 = icmp sgt i32 %cond29, -1
  br i1 %29, label %cont32, label %ioc_bb31

ioc_bb31:                                         ; preds = %cond.end28
  %30 = sext i32 %cond29 to i64
  tail call void @__ioc_report_conversion(i32 552, i32 26, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %30, i8 1) nounwind
  br label %cont32

cont32:                                           ; preds = %ioc_bb31, %cond.end28
  %31 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %15, i32 %cond29)
  %32 = extractvalue { i32, i1 } %31, 0
  %33 = extractvalue { i32, i1 } %31, 1
  br i1 %33, label %ioc_bb33, label %for.cond.backedge

for.cond.backedge:                                ; preds = %cont32, %ioc_bb33
  %p.0 = getelementptr inbounds i8* %p.051, i32 1
  %34 = load i8* %p.0, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %34, 0
  br i1 %cmp9, label %if.end, label %for.body

ioc_bb33:                                         ; preds = %cont32
  %35 = zext i32 %cond29 to i64
  %36 = zext i32 %15 to i64
  tail call void @__ioc_report_add_overflow(i32 552, i32 24, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %36, i64 %35, i8 5) nounwind
  br label %for.cond.backedge

if.end:                                           ; preds = %for.cond.preheader, %for.cond.backedge, %cont7
  %h.1 = phi i32 [ 0, %cont7 ], [ %cond, %for.cond.preheader ], [ %32, %for.cond.backedge ]
  ret i32 %h.1
}

define internal i32 @string_cmp_nocase(i8* nocapture %s1, i8* nocapture %s2) nounwind readonly {
entry:
  %call = tail call i32 @strcasecmp(i8* %s1, i8* %s2) nounwind readonly
  %lnot = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcasecmp(i8* nocapture, i8* nocapture) nounwind readonly

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @abort() noreturn nounwind

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
