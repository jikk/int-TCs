; ModuleID = '../../src/src/iri.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.options = type { i32, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i8, i8*, i8, i8**, i8**, i8**, i8**, i8, i8*, i8*, i8*, i8*, i32, i8* (i8*)*, i1 (i8*, i8*)*, i8**, i8**, i8, i8**, i8**, i8, i8, i8*, i8*, i8*, i8*, i64, i8, i8, i8, i8, i8**, i8*, i8*, i8, i8, i8*, i8*, i8, i8, i8, i8*, i8*, i8**, i8, i8, i8, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, double, double, double, i8, double, double, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8, i8, i8, i8*, i64, i32, i32, i8, i8, i8, i8*, i32, i8, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8, i8*, i8*, i8, i8*, i8*, i32, i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8*, i8*, i8, i8, i8, i8 }
%struct.iri = type { i8*, i8*, i8*, i8 }

@.str = private unnamed_addr constant [9 x i8] c"charset=\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"Encoding %s isn't valid\0A\00", align 1
@opt = external global %struct.options
@.str2 = private unnamed_addr constant [33 x i8] c"locale_to_utf8: locale is unset\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"Conversion from %s to %s isn't supported\0A\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"idn_encode failed (%d): %s\0A\00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"idn_decode failed (%d): %s\0A\00", align 1
@0 = internal unnamed_addr constant [8 x i8] c"Idna_rc\00"
@1 = internal unnamed_addr constant [2 x i8] c"-\00"
@2 = internal unnamed_addr constant [5 x i8] c"char\00"
@3 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@.str8 = private unnamed_addr constant [19 x i8] c"URI encoding = %s\0A\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"URI content encoding = %s\0A\00", align 1
@4 = internal unnamed_addr constant [4 x i8] c"int\00"
@5 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@6 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str11 = private unnamed_addr constant [54 x i8] c"Incomplete or invalid multibyte sequence encountered\0A\00", align 1
@7 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@8 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@9 = internal unnamed_addr constant [2 x i8] c"*\00"
@10 = internal unnamed_addr constant [2 x i8] c"+\00"
@11 = internal unnamed_addr constant [20 x i8] c"../../src/src/iri.c\00"
@.str12 = private unnamed_addr constant [20 x i8] c"Unhandled errno %d\0A\00", align 1

define i8* @parse_charset(i8* %str) nounwind {
entry:
  %tobool = icmp eq i8* %str, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8* %str, align 1, !tbaa !0
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i8* @rpl_strcasestr(i8* %str, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind readonly
  %tobool2 = icmp eq i8* %call, null
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8* %call, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.critedge, %if.end4
  %charset.0 = phi i8* [ %add.ptr, %if.end4 ], [ %incdec.ptr, %while.body.critedge ]
  %1 = load i8* %charset.0, align 1, !tbaa !0
  switch i8 %1, label %while.body.critedge [
    i8 0, label %while.end
    i8 32, label %while.end
    i8 12, label %while.end
    i8 11, label %while.end
    i8 10, label %while.end
    i8 9, label %while.end
    i8 13, label %while.end
  ]

while.body.critedge:                              ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %charset.0, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  %call22 = tail call i8* @strdupdelim(i8* %add.ptr, i8* %charset.0) nounwind
  %2 = load i8* %call22, align 1, !tbaa !0
  %tobool39.i = icmp eq i8 %2, 0
  br i1 %tobool39.i, label %return, label %while.body.i

while.body.i:                                     ; preds = %while.end, %if.end.i
  %3 = phi i8 [ %4, %if.end.i ], [ %2, %while.end ]
  %s.040.i = phi i8* [ %incdec.ptr.i, %if.end.i ], [ %call22, %while.end ]
  %cmp.i = icmp sgt i8 %3, -1
  br i1 %cmp.i, label %lor.lhs.false.i, label %if.then24

lor.lhs.false.i:                                  ; preds = %while.body.i
  switch i8 %3, label %if.end.i [
    i8 32, label %if.then24
    i8 13, label %if.then24
    i8 12, label %if.then24
    i8 11, label %if.then24
    i8 10, label %if.then24
    i8 9, label %if.then24
  ]

if.end.i:                                         ; preds = %lor.lhs.false.i
  %incdec.ptr.i = getelementptr inbounds i8* %s.040.i, i32 1
  %4 = load i8* %incdec.ptr.i, align 1, !tbaa !0
  %tobool.i = icmp eq i8 %4, 0
  br i1 %tobool.i, label %return, label %while.body.i

if.then24:                                        ; preds = %lor.lhs.false.i, %lor.lhs.false.i, %lor.lhs.false.i, %lor.lhs.false.i, %lor.lhs.false.i, %lor.lhs.false.i, %while.body.i
  %call.i = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 5) nounwind
  %call22.i = tail call i8* @quote(i8* %call22) nounwind
  tail call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call.i, i8* %call22.i) nounwind
  tail call void @free(i8* %call22) nounwind
  br label %return

return:                                           ; preds = %if.end.i, %while.end, %if.end, %entry, %lor.lhs.false, %if.then24
  %retval.0 = phi i8* [ null, %if.then24 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ %call22, %while.end ], [ %call22, %if.end.i ]
  ret i8* %retval.0
}

declare i8* @rpl_strcasestr(i8*, i8*) nounwind readonly

declare i8* @strdupdelim(i8*, i8*)

define zeroext i1 @check_encoding_name(i8* %encoding) nounwind {
entry:
  %0 = load i8* %encoding, align 1, !tbaa !0
  %tobool39 = icmp eq i8 %0, 0
  br i1 %tobool39, label %return, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = phi i8 [ %2, %if.end ], [ %0, %entry ]
  %s.040 = phi i8* [ %incdec.ptr, %if.end ], [ %encoding, %entry ]
  %cmp = icmp sgt i8 %1, -1
  br i1 %cmp, label %lor.lhs.false, label %cont

lor.lhs.false:                                    ; preds = %while.body
  switch i8 %1, label %if.end [
    i8 32, label %cont
    i8 13, label %cont
    i8 12, label %cont
    i8 11, label %cont
    i8 10, label %cont
    i8 9, label %cont
  ]

cont:                                             ; preds = %while.body, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %call = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 5) nounwind
  %call22 = tail call i8* @quote(i8* %encoding) nounwind
  tail call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call, i8* %call22) nounwind
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8* %s.040, i32 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !0
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %return, label %while.body

return:                                           ; preds = %entry, %if.end, %cont
  %retval.0 = phi i1 [ false, %cont ], [ true, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

declare void @free(i8* nocapture) nounwind

define i8* @find_locale() nounwind {
entry:
  %call = tail call i8* @stringprep_locale_charset() nounwind
  ret i8* %call
}

declare i8* @stringprep_locale_charset()

declare void @logprintf(i32, i8*, ...)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i8* @dcgettext(i8*, i8*, i32) nounwind

declare i8* @quote(i8*)

define i8* @locale_to_utf8(i8* %str) nounwind {
entry:
  %new = alloca i8*, align 4
  %0 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 136), align 4, !tbaa !2
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %lor.lhs.false

if.end:                                           ; preds = %entry
  %call = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8]* @.str2, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call) nounwind
  %call.i = call i8* @stringprep_locale_charset() nounwind
  store i8* %call.i, i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 136), align 4, !tbaa !2
  %tobool2 = icmp eq i8* %call.i, null
  br i1 %tobool2, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end
  %1 = phi i8* [ %call.i, %if.end ], [ %0, %entry ]
  %call3 = call i32 @strcasecmp(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind readonly
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %return, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* %1) nounwind
  %cmp = icmp eq i8* %call7, inttoptr (i32 -1 to i8*)
  br i1 %cmp, label %if.end16, label %cont12

cont12:                                           ; preds = %if.end6
  %call13 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8]* @.str5, i32 0, i32 0), i32 5) nounwind
  %2 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 136), align 4, !tbaa !2
  %call14 = call i8* @quote(i8* %2) nounwind
  %call15 = call i8* @quote(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call13, i8* %call14, i8* %call15) nounwind
  br label %return

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @strlen(i8* %str) nounwind readonly
  %call18 = call fastcc zeroext i1 @do_conversion(i8* inttoptr (i32 -1 to i8*), i8* %str, i32 %call17, i8** %new)
  %3 = load i8** %new, align 4, !tbaa !2
  %.str = select i1 %call18, i8* %3, i8* %str
  ret i8* %.str

return:                                           ; preds = %if.end, %lor.lhs.false, %cont12
  ret i8* %str
}

declare i32 @strcasecmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i8* @iconv_open(i8*, i8*)

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal fastcc zeroext i1 @do_conversion(i8* %cd, i8* %in, i32 %inlen, i8** %out) nounwind {
entry:
  %in.addr = alloca i8*, align 4
  %inlen.addr = alloca i32, align 4
  %outlen = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 4, !tbaa !2
  store i32 %inlen, i32* %inlen.addr, align 4, !tbaa !3
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inlen, i32 2)
  %1 = extractvalue { i32, i1 } %0, 0
  %2 = extractvalue { i32, i1 } %0, 1
  br i1 %2, label %ioc_bb1, label %cont2

ioc_bb1:                                          ; preds = %entry
  %3 = zext i32 %inlen to i64
  call void @__ioc_report_mul_overflow(i32 114, i32 25, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %3, i64 2, i8 5) nounwind
  br label %cont2

cont2:                                            ; preds = %entry, %ioc_bb1
  store i32 %1, i32* %outlen, align 4, !tbaa !3
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont2
  %7 = zext i32 %1 to i64
  call void @__ioc_report_add_overflow(i32 118, i32 23, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind
  %.pre = load i32* %outlen, align 4, !tbaa !3
  br label %cont6

cont6:                                            ; preds = %cont2, %ioc_bb5
  %8 = phi i32 [ %1, %cont2 ], [ %.pre, %ioc_bb5 ]
  %call = call noalias i8* @xmalloc(i32 %5) nounwind
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %cont50, %cont6
  %storemerge = phi i8* [ %call, %cont6 ], [ %add.ptr52, %cont50 ]
  %len.0.ph = phi i32 [ %8, %cont6 ], [ %48, %cont50 ]
  %done.0.ph = phi i32 [ 0, %cont6 ], [ %len.0.ph, %cont50 ]
  %invalid.0.ph = phi i32 [ 0, %cont6 ], [ %invalid.0, %cont50 ]
  %tooshort.0.ph = phi i32 [ 0, %cont6 ], [ %31, %cont50 ]
  %s.0.ph = phi i8* [ %call, %cont6 ], [ %call51, %cont50 ]
  store i8* %storemerge, i8** %out, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %cont35
  %invalid.0 = phi i32 [ %12, %cont35 ], [ %invalid.0.ph, %for.cond.outer ]
  %call9 = call i32 @iconv(i8* %cd, i8** %in.addr, i32* %inlen.addr, i8** %out, i32* %outlen) nounwind
  call void @__ioc_report_conversion(i32 123, i32 55, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @6, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp = icmp eq i32 %call9, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  store i8* %s.0.ph, i8** %out, align 4, !tbaa !2
  %9 = load i32* %outlen, align 4, !tbaa !3
  %add.ptr.sum = sub i32 %len.0.ph, %done.0.ph
  %add.ptr16.sum = sub i32 %add.ptr.sum, %9
  %add.ptr18 = getelementptr inbounds i8* %s.0.ph, i32 %add.ptr16.sum
  store i8 0, i8* %add.ptr18, align 1, !tbaa !0
  br label %return

if.end:                                           ; preds = %for.cond
  %call19 = call i32* @__errno_location() nounwind readnone
  %10 = load i32* %call19, align 4, !tbaa !3
  switch i32 %10, label %cont55 [
    i32 22, label %if.then23
    i32 84, label %if.then23
    i32 7, label %if.then38
  ]

if.then23:                                        ; preds = %if.end, %if.end
  %tobool = icmp eq i32 %invalid.0, 0
  br i1 %tobool, label %cont26, label %if.end28

cont26:                                           ; preds = %if.then23
  %call27 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8]* @.str11, i32 0, i32 0), i32 5) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call27) nounwind
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %cont26
  %11 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %invalid.0, i32 1)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb29, label %cont30

ioc_bb29:                                         ; preds = %if.end28
  %14 = sext i32 %invalid.0 to i64
  call void @__ioc_report_add_overflow(i32 132, i32 14, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %14, i64 1, i8 13) nounwind
  br label %cont30

cont30:                                           ; preds = %if.end28, %ioc_bb29
  %15 = load i8** %in.addr, align 4, !tbaa !2
  %16 = load i8* %15, align 1, !tbaa !0
  %17 = load i8** %out, align 4, !tbaa !2
  store i8 %16, i8* %17, align 1, !tbaa !0
  %18 = load i8** %in.addr, align 4, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8* %18, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 4, !tbaa !2
  %19 = load i32* %inlen.addr, align 4, !tbaa !3
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 1)
  %21 = extractvalue { i32, i1 } %20, 0
  %22 = extractvalue { i32, i1 } %20, 1
  br i1 %22, label %ioc_bb31, label %cont32

ioc_bb31:                                         ; preds = %cont30
  %23 = zext i32 %19 to i64
  call void @__ioc_report_sub_overflow(i32 135, i32 12, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %23, i64 1, i8 5) nounwind
  br label %cont32

cont32:                                           ; preds = %cont30, %ioc_bb31
  store i32 %21, i32* %inlen.addr, align 4, !tbaa !3
  %24 = load i8** %out, align 4, !tbaa !2
  %incdec.ptr33 = getelementptr inbounds i8* %24, i32 1
  store i8* %incdec.ptr33, i8** %out, align 4, !tbaa !2
  %25 = load i32* %outlen, align 4, !tbaa !3
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %25, i32 1)
  %27 = extractvalue { i32, i1 } %26, 0
  %28 = extractvalue { i32, i1 } %26, 1
  br i1 %28, label %ioc_bb34, label %cont35

ioc_bb34:                                         ; preds = %cont32
  %29 = zext i32 %25 to i64
  call void @__ioc_report_sub_overflow(i32 137, i32 13, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @7, i32 0, i32 0), i64 %29, i64 1, i8 5) nounwind
  br label %cont35

cont35:                                           ; preds = %cont32, %ioc_bb34
  store i32 %27, i32* %outlen, align 4, !tbaa !3
  br label %for.cond

if.then38:                                        ; preds = %if.end
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %tooshort.0.ph, i32 1)
  %31 = extractvalue { i32, i1 } %30, 0
  %32 = extractvalue { i32, i1 } %30, 1
  br i1 %32, label %ioc_bb39, label %cont40

ioc_bb39:                                         ; preds = %if.then38
  %33 = sext i32 %tooshort.0.ph to i64
  call void @__ioc_report_add_overflow(i32 143, i32 15, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %33, i64 1, i8 13) nounwind
  br label %cont40

cont40:                                           ; preds = %if.then38, %ioc_bb39
  %34 = load i32* %inlen.addr, align 4, !tbaa !3
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 2)
  %36 = extractvalue { i32, i1 } %35, 0
  %37 = extractvalue { i32, i1 } %35, 1
  br i1 %37, label %ioc_bb43, label %cont44

ioc_bb43:                                         ; preds = %cont40
  %38 = zext i32 %34 to i64
  call void @__ioc_report_mul_overflow(i32 145, i32 29, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @9, i32 0, i32 0), i64 %38, i64 2, i8 5) nounwind
  br label %cont44

cont44:                                           ; preds = %cont40, %ioc_bb43
  %39 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.ph, i32 %36)
  %40 = extractvalue { i32, i1 } %39, 0
  %41 = extractvalue { i32, i1 } %39, 1
  br i1 %41, label %ioc_bb45, label %cont46

ioc_bb45:                                         ; preds = %cont44
  %42 = zext i32 %36 to i64
  %43 = zext i32 %len.0.ph to i64
  call void @__ioc_report_add_overflow(i32 145, i32 21, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %43, i64 %42, i8 5) nounwind
  br label %cont46

cont46:                                           ; preds = %cont44, %ioc_bb45
  store i32 %40, i32* %outlen, align 4, !tbaa !3
  %44 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %40, i32 1)
  %45 = extractvalue { i32, i1 } %44, 0
  %46 = extractvalue { i32, i1 } %44, 1
  br i1 %46, label %ioc_bb49, label %cont50

ioc_bb49:                                         ; preds = %cont46
  %47 = zext i32 %40 to i64
  call void @__ioc_report_add_overflow(i32 146, i32 29, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %47, i64 1, i8 5) nounwind
  br label %cont50

cont50:                                           ; preds = %cont46, %ioc_bb49
  %call51 = call noalias i8* @xmalloc(i32 %45) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call51, i8* %s.0.ph, i32 %len.0.ph, i32 1, i1 false)
  call void @free(i8* %s.0.ph) nounwind
  %48 = load i32* %outlen, align 4, !tbaa !3
  %add.ptr52 = getelementptr inbounds i8* %call51, i32 %len.0.ph
  br label %for.cond.outer

cont55:                                           ; preds = %if.end
  %call56 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8]* @.str12, i32 0, i32 0), i32 5) nounwind
  %49 = load i32* %call19, align 4, !tbaa !3
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call56, i32 %49) nounwind
  br label %return

return:                                           ; preds = %cont55, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ false, %cont55 ]
  ret i1 %retval.0
}

declare i32 @strlen(i8* nocapture) nounwind readonly

define i8* @idn_encode(%struct.iri* nocapture %i, i8* %host) nounwind {
entry:
  %new = alloca i8*, align 4
  %utf8_encode = getelementptr inbounds %struct.iri* %i, i32 0, i32 3
  %0 = load i8* %utf8_encode, align 1, !tbaa !4, !range !5
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @remote_to_utf8(%struct.iri* %i, i8* %host, i8** %new)
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %1 = load i8** %new, align 4, !tbaa !2
  br label %if.end2

if.end2:                                          ; preds = %entry, %if.end
  %host.addr.0 = phi i8* [ %host, %entry ], [ %1, %if.end ]
  %call3 = call i32 @idna_to_ascii_8z(i8* %host.addr.0, i8** %new, i32 2) nounwind
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.end10, label %cont

cont:                                             ; preds = %if.end2
  %call5 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8]* @.str6, i32 0, i32 0), i32 5) nounwind
  %2 = icmp sgt i32 %call3, -1
  br i1 %2, label %cont7, label %ioc_bb6

ioc_bb6:                                          ; preds = %cont
  %3 = sext i32 %call3 to i64
  call void @__ioc_report_conversion(i32 180, i32 93, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i64 %3, i8 1) nounwind
  br label %cont7

cont7:                                            ; preds = %ioc_bb6, %cont
  %call8 = call i8* @idna_strerror(i32 %call3) nounwind
  %call9 = call i8* @quote(i8* %call8) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call5, i32 %call3, i8* %call9) nounwind
  br label %return

if.end10:                                         ; preds = %if.end2
  %4 = load i8** %new, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.then, %if.end10, %cont7
  %retval.0 = phi i8* [ null, %cont7 ], [ %4, %if.end10 ], [ null, %if.then ]
  ret i8* %retval.0
}

define zeroext i1 @remote_to_utf8(%struct.iri* nocapture %i, i8* %str, i8** %new) nounwind {
entry:
  %uri_encoding = getelementptr inbounds %struct.iri* %i, i32 0, i32 0
  %0 = load i8** %uri_encoding, align 4, !tbaa !2
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 1) to i32), i32 ptrtoint ([6 x i8]* @.str4 to i32))
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %ioc_bb, label %cont2

ioc_bb:                                           ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 211, i32 8, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([6 x i8]* @.str4 to i32) to i64), i8 5) nounwind
  %.pre = load i8** %uri_encoding, align 4, !tbaa !2
  br label %cont2

cont2:                                            ; preds = %ioc_bb, %if.end
  %3 = phi i8* [ %.pre, %ioc_bb ], [ %0, %if.end ]
  %call = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) nounwind
  %tobool53 = icmp eq i32 %call, 0
  br i1 %tobool53, label %if.then54, label %if.end74

if.then54:                                        ; preds = %cont2
  %call56 = tail call i32 @strlen(i8* %str) nounwind readonly
  %4 = icmp sgt i32 %call56, -1
  br i1 %4, label %for.cond.preheader, label %for.cond.preheader.thread

for.cond.preheader.thread:                        ; preds = %if.then54
  %5 = zext i32 %call56 to i64
  tail call void @__ioc_report_conversion(i32 213, i32 15, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i64 %5, i8 0) nounwind
  br label %return

for.cond.preheader:                               ; preds = %if.then54
  %cmp59120 = icmp sgt i32 %call56, 0
  br i1 %cmp59120, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %i55.0121 = phi i32 [ %10, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx61 = getelementptr inbounds i8* %str, i32 %i55.0121
  %6 = load i8* %arrayidx61, align 1, !tbaa !0
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %for.inc, label %if.then69

if.then69:                                        ; preds = %for.body
  %8 = sext i8 %6 to i64
  tail call void @__ioc_report_conversion(i32 215, i32 28, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i64 %8, i8 1) nounwind
  tail call void @__ioc_report_conversion(i32 215, i32 56, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i64 -128, i8 1) nounwind
  %call70 = tail call noalias i8* @__strdup(i8* %str) nounwind
  store i8* %call70, i8** %new, align 4, !tbaa !2
  br label %return

for.inc:                                          ; preds = %for.body
  tail call void @__ioc_report_conversion(i32 215, i32 56, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @3, i32 0, i32 0), i64 -128, i8 1) nounwind
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i55.0121, i32 1)
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %ioc_bb72, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb72
  %cmp59 = icmp slt i32 %10, %call56
  br i1 %cmp59, label %for.body, label %return

ioc_bb72:                                         ; preds = %for.inc
  %12 = sext i32 %i55.0121 to i64
  tail call void @__ioc_report_add_overflow(i32 214, i32 27, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %12, i64 1, i8 13) nounwind
  br label %for.cond.backedge

if.end74:                                         ; preds = %cont2
  %call76 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* %3) nounwind
  %cmp79 = icmp eq i8* %call76, inttoptr (i32 -1 to i8*)
  br i1 %cmp79, label %return, label %if.end82

if.end82:                                         ; preds = %if.end74
  %call83 = tail call i32 @strlen(i8* %str) nounwind readonly
  %call84 = tail call fastcc zeroext i1 @do_conversion(i8* %call76, i8* %str, i32 %call83, i8** %new)
  %call87 = tail call i32 @iconv_close(i8* %call76) nounwind
  %13 = load i8** %new, align 4, !tbaa !2
  %call90 = tail call i32 @strcmp(i8* %str, i8* %13) nounwind
  %tobool91 = icmp eq i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %return

if.then92:                                        ; preds = %if.end82
  tail call void @free(i8* %13) nounwind
  br label %return

return:                                           ; preds = %for.cond.preheader, %for.cond.preheader.thread, %for.cond.backedge, %if.end82, %if.end74, %entry, %if.then92, %if.then69
  %retval.0 = phi i1 [ false, %if.then92 ], [ true, %if.then69 ], [ false, %entry ], [ false, %if.end74 ], [ %call84, %if.end82 ], [ false, %for.cond.backedge ], [ false, %for.cond.preheader.thread ], [ false, %for.cond.preheader ]
  ret i1 %retval.0
}

declare i32 @idna_to_ascii_8z(i8*, i8**, i32)

declare i8* @idna_strerror(i32)

define i8* @idn_decode(i8* %host) nounwind {
entry:
  %new = alloca i8*, align 4
  %call = call i32 @idna_to_unicode_8zlz(i8* %host, i8** %new, i32 2) nounwind
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cont

cont:                                             ; preds = %entry
  %call1 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8]* @.str7, i32 0, i32 0), i32 5) nounwind
  %0 = icmp sgt i32 %call, -1
  br i1 %0, label %cont3, label %ioc_bb2

ioc_bb2:                                          ; preds = %cont
  %1 = sext i32 %call to i64
  call void @__ioc_report_conversion(i32 194, i32 93, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont3

cont3:                                            ; preds = %ioc_bb2, %cont
  %call4 = call i8* @idna_strerror(i32 %call) nounwind
  %call5 = call i8* @quote(i8* %call4) nounwind
  call void (i32, i8*, ...)* @logprintf(i32 0, i8* %call1, i32 %call, i8* %call5) nounwind
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8** %new, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.end, %cont3
  %retval.0 = phi i8* [ null, %cont3 ], [ %2, %if.end ]
  ret i8* %retval.0
}

declare i32 @idna_to_unicode_8zlz(i8*, i8**, i32)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare noalias i8* @__strdup(i8* nocapture) nounwind

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @iconv_close(i8*)

define noalias %struct.iri* @iri_new() nounwind {
entry:
  %call = tail call noalias i8* @xmalloc(i32 16) nounwind
  %0 = bitcast i8* %call to %struct.iri*
  %1 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 135), align 4, !tbaa !2
  %tobool = icmp eq i8* %1, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = tail call noalias i8* @xstrdup(i8* %1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ null, %entry ]
  %uri_encoding = bitcast i8* %call to i8**
  store i8* %cond, i8** %uri_encoding, align 4, !tbaa !2
  %content_encoding = getelementptr inbounds i8* %call, i32 4
  %2 = bitcast i8* %content_encoding to i8**
  store i8* null, i8** %2, align 4, !tbaa !2
  %orig_url = getelementptr inbounds i8* %call, i32 8
  %3 = bitcast i8* %orig_url to i8**
  store i8* null, i8** %3, align 4, !tbaa !2
  %4 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 134), align 2, !tbaa !4, !range !5
  %5 = getelementptr inbounds i8* %call, i32 12
  store i8 %4, i8* %5, align 1, !tbaa !4
  ret %struct.iri* %0
}

declare noalias i8* @xmalloc(i32)

declare noalias i8* @xstrdup(i8*)

define noalias %struct.iri* @iri_dup(%struct.iri* nocapture %src) nounwind {
entry:
  %call = tail call noalias i8* @xmalloc(i32 16) nounwind
  %0 = bitcast i8* %call to %struct.iri*
  %uri_encoding = getelementptr inbounds %struct.iri* %src, i32 0, i32 0
  %1 = load i8** %uri_encoding, align 4, !tbaa !2
  %tobool = icmp eq i8* %1, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call2 = tail call noalias i8* @xstrdup(i8* %1) nounwind
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ null, %entry ]
  %uri_encoding3 = bitcast i8* %call to i8**
  store i8* %cond, i8** %uri_encoding3, align 4, !tbaa !2
  %content_encoding = getelementptr inbounds %struct.iri* %src, i32 0, i32 1
  %2 = load i8** %content_encoding, align 4, !tbaa !2
  %tobool4 = icmp eq i8* %2, null
  br i1 %tobool4, label %cond.end9, label %cond.true5

cond.true5:                                       ; preds = %cond.end
  %call7 = tail call noalias i8* @xstrdup(i8* %2) nounwind
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end, %cond.true5
  %cond10 = phi i8* [ %call7, %cond.true5 ], [ null, %cond.end ]
  %content_encoding11 = getelementptr inbounds i8* %call, i32 4
  %3 = bitcast i8* %content_encoding11 to i8**
  store i8* %cond10, i8** %3, align 4, !tbaa !2
  %orig_url = getelementptr inbounds %struct.iri* %src, i32 0, i32 2
  %4 = load i8** %orig_url, align 4, !tbaa !2
  %tobool12 = icmp eq i8* %4, null
  br i1 %tobool12, label %cond.end17, label %cond.true13

cond.true13:                                      ; preds = %cond.end9
  %call15 = tail call noalias i8* @xstrdup(i8* %4) nounwind
  br label %cond.end17

cond.end17:                                       ; preds = %cond.end9, %cond.true13
  %cond18 = phi i8* [ %call15, %cond.true13 ], [ null, %cond.end9 ]
  %orig_url19 = getelementptr inbounds i8* %call, i32 8
  %5 = bitcast i8* %orig_url19 to i8**
  store i8* %cond18, i8** %5, align 4, !tbaa !2
  %utf8_encode = getelementptr inbounds %struct.iri* %src, i32 0, i32 3
  %6 = load i8* %utf8_encode, align 1, !tbaa !4, !range !5
  %7 = getelementptr inbounds i8* %call, i32 12
  store i8 %6, i8* %7, align 1, !tbaa !4
  ret %struct.iri* %0
}

define void @iri_free(%struct.iri* nocapture %i) nounwind {
entry:
  %uri_encoding = getelementptr inbounds %struct.iri* %i, i32 0, i32 0
  %0 = load i8** %uri_encoding, align 4, !tbaa !2
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @free(i8* %0) nounwind
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %content_encoding = getelementptr inbounds %struct.iri* %i, i32 0, i32 1
  %1 = load i8** %content_encoding, align 4, !tbaa !2
  %tobool2 = icmp eq i8* %1, null
  br i1 %tobool2, label %if.end6, label %if.else4

if.else4:                                         ; preds = %if.end
  tail call void @free(i8* %1) nounwind
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.else4
  %orig_url = getelementptr inbounds %struct.iri* %i, i32 0, i32 2
  %2 = load i8** %orig_url, align 4, !tbaa !2
  %tobool7 = icmp eq i8* %2, null
  br i1 %tobool7, label %if.end11, label %if.else9

if.else9:                                         ; preds = %if.end6
  tail call void @free(i8* %2) nounwind
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.else9
  %3 = bitcast %struct.iri* %i to i8*
  tail call void @free(i8* %3) nounwind
  ret void
}

define void @set_uri_encoding(%struct.iri* nocapture %i, i8* %charset, i1 zeroext %force) nounwind {
entry:
  %0 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !4, !range !5
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %do.end, label %if.then, !prof !6

if.then:                                          ; preds = %entry
  %tobool2 = icmp eq i8* %charset, null
  br i1 %tobool2, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call = tail call i8* @quote(i8* %charset) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), %if.then ]
  tail call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([19 x i8]* @.str8, i32 0, i32 0), i8* %cond) nounwind
  br label %do.end

do.end:                                           ; preds = %entry, %cond.end
  %tobool3.not = xor i1 %force, true
  %1 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 135), align 4, !tbaa !2
  %tobool4 = icmp ne i8* %1, null
  %or.cond = and i1 %tobool4, %tobool3.not
  br i1 %or.cond, label %return, label %if.end6

if.end6:                                          ; preds = %do.end
  %uri_encoding = getelementptr inbounds %struct.iri* %i, i32 0, i32 0
  %2 = load i8** %uri_encoding, align 4, !tbaa !2
  %tobool7 = icmp eq i8* %2, null
  br i1 %tobool7, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.end6
  %tobool9 = icmp eq i8* %charset, null
  br i1 %tobool9, label %if.end15, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then8
  %call12 = tail call i32 @strcasecmp(i8* %2, i8* %charset) nounwind readonly
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %return, label %if.end15

if.end15:                                         ; preds = %land.lhs.true10, %if.then8
  tail call void @free(i8* %2) nounwind
  br label %if.end17

if.end17:                                         ; preds = %if.end6, %if.end15
  %tobool18 = icmp eq i8* %charset, null
  br i1 %tobool18, label %cond.end22, label %cond.true19

cond.true19:                                      ; preds = %if.end17
  %call20 = tail call noalias i8* @xstrdup(i8* %charset) nounwind
  br label %cond.end22

cond.end22:                                       ; preds = %if.end17, %cond.true19
  %cond23 = phi i8* [ %call20, %cond.true19 ], [ null, %if.end17 ]
  store i8* %cond23, i8** %uri_encoding, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %land.lhs.true10, %do.end, %cond.end22
  ret void
}

declare void @debug_logprintf(i8*, ...)

define void @set_content_encoding(%struct.iri* nocapture %i, i8* %charset) nounwind {
entry:
  %0 = load i8* getelementptr inbounds (%struct.options* @opt, i32 0, i32 90), align 1, !tbaa !4, !range !5
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %do.end, label %if.then, !prof !6

if.then:                                          ; preds = %entry
  %tobool2 = icmp eq i8* %charset, null
  br i1 %tobool2, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call = tail call i8* @quote(i8* %charset) nounwind
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), %if.then ]
  tail call void (i8*, ...)* @debug_logprintf(i8* getelementptr inbounds ([27 x i8]* @.str10, i32 0, i32 0), i8* %cond) nounwind
  br label %do.end

do.end:                                           ; preds = %entry, %cond.end
  %1 = load i8** getelementptr inbounds (%struct.options* @opt, i32 0, i32 135), align 4, !tbaa !2
  %tobool3 = icmp eq i8* %1, null
  br i1 %tobool3, label %if.end5, label %return

if.end5:                                          ; preds = %do.end
  %content_encoding = getelementptr inbounds %struct.iri* %i, i32 0, i32 1
  %2 = load i8** %content_encoding, align 4, !tbaa !2
  %tobool6 = icmp eq i8* %2, null
  br i1 %tobool6, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end5
  %tobool8 = icmp eq i8* %charset, null
  br i1 %tobool8, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then7
  %call10 = tail call i32 @strcasecmp(i8* %2, i8* %charset) nounwind readonly
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %return, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.then7
  tail call void @free(i8* %2) nounwind
  br label %if.end15

if.end15:                                         ; preds = %if.end5, %if.end13
  %tobool16 = icmp eq i8* %charset, null
  br i1 %tobool16, label %cond.end20, label %cond.true17

cond.true17:                                      ; preds = %if.end15
  %call18 = tail call noalias i8* @xstrdup(i8* %charset) nounwind
  br label %cond.end20

cond.end20:                                       ; preds = %if.end15, %cond.true17
  %cond21 = phi i8* [ %call18, %cond.true17 ], [ null, %if.end15 ]
  store i8* %cond21, i8** %content_encoding, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %land.lhs.true, %do.end, %cond.end20
  ret void
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @iconv(i8*, i8**, i32*, i8**, i32*)

declare i32* @__errno_location() nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"int", metadata !0}
!4 = metadata !{metadata !"_Bool", metadata !0}
!5 = metadata !{i8 0, i8 2}
!6 = metadata !{metadata !"branch_weights", i32 64, i32 4}
