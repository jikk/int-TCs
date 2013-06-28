; ModuleID = '../../src/lib/quotearg.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i32, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0), i8* null], align 4
@quoting_style_vals = constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 4
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i32 256, i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = global %struct.quoting_options { i32 6, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 4
@0 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str8 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@1 = internal unnamed_addr constant [2 x i8] c"-\00"
@2 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@3 = internal unnamed_addr constant [8 x i8] c"wchar_t\00"
@4 = internal unnamed_addr constant [7 x i8] c"wint_t\00"
@5 = internal unnamed_addr constant [3 x i8] c"+=\00"
@6 = internal unnamed_addr constant [2 x i8] c"+\00"
@7 = internal unnamed_addr constant [3 x i8] c"<<\00"
@8 = internal unnamed_addr constant [4 x i8] c"int\00"
@9 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@10 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@11 = internal unnamed_addr constant [5 x i8] c"char\00"
@12 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@13 = internal unnamed_addr constant [25 x i8] c"../../src/lib/quotearg.c\00"
@.str11 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1

define noalias %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) nounwind {
entry:
  %call = tail call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call, align 4, !tbaa !0
  %tobool = icmp ne %struct.quoting_options* %o, null
  %1 = bitcast %struct.quoting_options* %o to i8*
  %2 = select i1 %tobool, i8* %1, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %call1 = tail call noalias i8* @xmemdup(i8* %2, i32 48) nounwind
  %3 = bitcast i8* %call1 to %struct.quoting_options*
  store i32 %0, i32* %call, align 4, !tbaa !0
  ret %struct.quoting_options* %3
}

declare i32* @__errno_location() nounwind readnone

declare noalias i8* @xmemdup(i8*, i32)

define i32 @get_quoting_style(%struct.quoting_options* %o) nounwind readonly {
entry:
  %tobool = icmp ne %struct.quoting_options* %o, null
  %cond = select i1 %tobool, %struct.quoting_options* %o, %struct.quoting_options* @default_quoting_options
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0
  %0 = load i32* %style, align 4, !tbaa !3
  ret i32 %0
}

define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) nounwind {
entry:
  %tobool = icmp ne %struct.quoting_options* %o, null
  %cond = select i1 %tobool, %struct.quoting_options* %o, %struct.quoting_options* @default_quoting_options
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0
  store i32 %s, i32* %style, align 4, !tbaa !3
  ret void
}

define i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) nounwind {
entry:
  %0 = icmp sgt i8 %c, -1
  br i1 %0, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  %1 = sext i8 %c to i64
  tail call void @__ioc_report_conversion(i32 94, i32 22, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i64 %1, i8 1) nounwind
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %tobool = icmp ne %struct.quoting_options* %o, null
  %cond = select i1 %tobool, %struct.quoting_options* %o, %struct.quoting_options* @default_quoting_options
  %conv = zext i8 %c to i32
  %div = lshr i32 %conv, 5
  %add.ptr = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 2, i32 %div
  %rem = and i32 %conv, 31
  %2 = load i32* %add.ptr, align 4, !tbaa !0
  %shr = lshr i32 %2, %rem
  %and = and i32 %shr, 1
  %and21 = and i32 %i, 1
  %xor = xor i32 %and, %and21
  %3 = xor i32 %rem, 31
  %shl.check = lshr i32 %xor, %3
  %4 = icmp eq i32 %shl.check, 0
  br i1 %4, label %cont25, label %ioc_bb24

ioc_bb24:                                         ; preds = %cont
  %5 = zext i32 %rem to i64
  %6 = zext i32 %xor to i64
  tail call void @__ioc_report_shl_strict(i32 98, i32 23, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %6, i64 %5, i8 13) nounwind
  br label %cont25

cont25:                                           ; preds = %ioc_bb24, %cont
  %shl = shl i32 %xor, %rem
  %7 = icmp sgt i32 %shl, -1
  br i1 %7, label %cont28, label %ioc_bb27

ioc_bb27:                                         ; preds = %cont25
  %8 = sext i32 %shl to i64
  tail call void @__ioc_report_conversion(i32 98, i32 10, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %8, i8 1) nounwind
  br label %cont28

cont28:                                           ; preds = %cont25, %ioc_bb27
  %9 = load i32* %add.ptr, align 4, !tbaa !0
  %xor29 = xor i32 %9, %shl
  store i32 %xor29, i32* %add.ptr, align 4, !tbaa !0
  ret i32 %and
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) nounwind {
entry:
  %tobool = icmp eq %struct.quoting_options* %o, null
  %default_quoting_options.o = select i1 %tobool, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %o
  %flags = getelementptr inbounds %struct.quoting_options* %default_quoting_options.o, i32 0, i32 1
  %0 = load i32* %flags, align 4, !tbaa !0
  store i32 %i, i32* %flags, align 4, !tbaa !0
  ret i32 %0
}

define void @set_custom_quoting(%struct.quoting_options* %o, i8* %left_quote, i8* %right_quote) nounwind {
entry:
  %tobool = icmp eq %struct.quoting_options* %o, null
  %default_quoting_options.o = select i1 %tobool, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %o
  %style = getelementptr inbounds %struct.quoting_options* %default_quoting_options.o, i32 0, i32 0
  store i32 8, i32* %style, align 4, !tbaa !3
  %tobool1 = icmp eq i8* %left_quote, null
  %tobool2 = icmp eq i8* %right_quote, null
  %or.cond = or i1 %tobool1, %tobool2
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  tail call void @abort() noreturn nounwind
  unreachable

if.end4:                                          ; preds = %entry
  %left_quote5 = getelementptr inbounds %struct.quoting_options* %default_quoting_options.o, i32 0, i32 3
  store i8* %left_quote, i8** %left_quote5, align 4, !tbaa !4
  %right_quote6 = getelementptr inbounds %struct.quoting_options* %default_quoting_options.o, i32 0, i32 4
  store i8* %right_quote, i8** %right_quote6, align 4, !tbaa !4
  ret void
}

declare void @abort() noreturn nounwind

define i32 @quotearg_buffer(i8* %buffer, i32 %buffersize, i8* %arg, i32 %argsize, %struct.quoting_options* %o) nounwind {
entry:
  %tobool = icmp ne %struct.quoting_options* %o, null
  %cond = select i1 %tobool, %struct.quoting_options* %o, %struct.quoting_options* @default_quoting_options
  %call = tail call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call, align 4, !tbaa !0
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0
  %1 = load i32* %style, align 4, !tbaa !3
  %flags = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1
  %2 = load i32* %flags, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 2, i32 0
  %left_quote = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 3
  %3 = load i8** %left_quote, align 4, !tbaa !4
  %right_quote = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 4
  %4 = load i8** %right_quote, align 4, !tbaa !4
  %call1 = tail call fastcc i32 @quotearg_buffer_restyled(i8* %buffer, i32 %buffersize, i8* %arg, i32 %argsize, i32 %1, i32 %2, i32* %arraydecay, i8* %3, i8* %4)
  store i32 %0, i32* %call, align 4, !tbaa !0
  ret i32 %call1
}

define internal fastcc i32 @quotearg_buffer_restyled(i8* %buffer, i32 %buffersize, i8* %arg, i32 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too, i8* nocapture %left_quote, i8* %right_quote) nounwind {
entry:
  %mbstate = alloca %struct.__mbstate_t, align 8
  %w = alloca i32, align 4
  %call = call i32 @__ctype_get_mb_cur_max() nounwind
  %cmp = icmp eq i32 %call, 1
  %and = lshr i32 %flags, 1
  %and.tr = trunc i32 %and to i8
  %frombool6 = and i8 %and.tr, 1
  switch i32 %quoting_style, label %sw.default [
    i32 4, label %sw.bb9.thread
    i32 3, label %sw.bb9
    i32 5, label %cont64
    i32 0, label %sw.bb62
    i32 2, label %sw.bb46
    i32 1, label %sw.bb46.thread
    i32 8, label %if.end29
    i32 6, label %if.then26
    i32 7, label %if.then26
  ]

sw.bb9.thread:                                    ; preds = %entry
  br label %cont64

sw.bb9:                                           ; preds = %entry
  %tobool = icmp eq i8 %frombool6, 0
  br i1 %tobool, label %do.body, label %cont64

do.body:                                          ; preds = %sw.bb9
  %cmp10 = icmp eq i32 %buffersize, 0
  br i1 %cmp10, label %cont64, label %cont13

cont13:                                           ; preds = %do.body
  store i8 34, i8* %buffer, align 1, !tbaa !1
  br label %cont64

if.then26:                                        ; preds = %entry, %entry
  %call27 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i32 %quoting_style)
  %call28 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i32 %quoting_style)
  br label %if.end29

if.end29:                                         ; preds = %entry, %if.then26
  %left_quote.addr.0 = phi i8* [ %call27, %if.then26 ], [ %left_quote, %entry ]
  %right_quote.addr.0 = phi i8* [ %call28, %if.then26 ], [ %right_quote, %entry ]
  %0 = and i32 %and, 1
  %tobool30 = icmp eq i32 %0, 0
  br i1 %tobool30, label %for.cond.preheader, label %if.end41

for.cond.preheader:                               ; preds = %if.end29
  %1 = load i8* %left_quote.addr.0, align 1, !tbaa !1
  %tobool321151 = icmp eq i8 %1, 0
  br i1 %tobool321151, label %if.end41, label %do.body33

do.body33:                                        ; preds = %for.cond.preheader, %cont39
  %2 = phi i8 [ %7, %cont39 ], [ %1, %for.cond.preheader ]
  %quote_string.01153 = phi i8* [ %incdec.ptr, %cont39 ], [ %left_quote.addr.0, %for.cond.preheader ]
  %len.11152 = phi i32 [ %4, %cont39 ], [ 0, %for.cond.preheader ]
  %cmp34 = icmp ult i32 %len.11152, %buffersize
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %do.body33
  %arrayidx36 = getelementptr inbounds i8* %buffer, i32 %len.11152
  store i8 %2, i8* %arrayidx36, align 1, !tbaa !1
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body33
  %3 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.11152, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb38, label %cont39

ioc_bb38:                                         ; preds = %if.end37
  %6 = zext i32 %len.11152 to i64
  call void @__ioc_report_add_overflow(i32 262, i32 18, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %6, i64 1, i8 5) nounwind
  br label %cont39

cont39:                                           ; preds = %if.end37, %ioc_bb38
  %incdec.ptr = getelementptr inbounds i8* %quote_string.01153, i32 1
  %7 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool32 = icmp eq i8 %7, 0
  br i1 %tobool32, label %if.end41, label %do.body33

if.end41:                                         ; preds = %for.cond.preheader, %cont39, %if.end29
  %len.2 = phi i32 [ 0, %if.end29 ], [ 0, %for.cond.preheader ], [ %4, %cont39 ]
  %call42 = call i32 @strlen(i8* %right_quote.addr.0) nounwind readonly
  br label %cont64

sw.bb46.thread:                                   ; preds = %entry
  br label %cont64

sw.bb46:                                          ; preds = %entry
  %tobool47 = icmp eq i8 %frombool6, 0
  br i1 %tobool47, label %do.body49, label %cont64

do.body49:                                        ; preds = %sw.bb46
  %cmp50 = icmp eq i32 %buffersize, 0
  br i1 %cmp50, label %cont64, label %cont53

cont53:                                           ; preds = %do.body49
  store i8 39, i8* %buffer, align 1, !tbaa !1
  br label %cont64

sw.bb62:                                          ; preds = %entry
  br label %cont64

sw.default:                                       ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

cont64:                                           ; preds = %sw.bb46.thread, %sw.bb9.thread, %if.end41, %sw.bb62, %sw.bb9, %cont13, %do.body, %entry, %sw.bb46, %cont53, %do.body49
  %left_quote.addr.1 = phi i8* [ %left_quote, %sw.bb62 ], [ %left_quote.addr.0, %if.end41 ], [ %left_quote, %sw.bb9 ], [ %left_quote, %cont13 ], [ %left_quote, %do.body ], [ %left_quote, %entry ], [ %left_quote, %sw.bb46 ], [ %left_quote, %cont53 ], [ %left_quote, %do.body49 ], [ %left_quote, %sw.bb9.thread ], [ %left_quote, %sw.bb46.thread ]
  %right_quote.addr.1 = phi i8* [ %right_quote, %sw.bb62 ], [ %right_quote.addr.0, %if.end41 ], [ %right_quote, %sw.bb9 ], [ %right_quote, %cont13 ], [ %right_quote, %do.body ], [ %right_quote, %entry ], [ %right_quote, %sw.bb46 ], [ %right_quote, %cont53 ], [ %right_quote, %do.body49 ], [ %right_quote, %sw.bb9.thread ], [ %right_quote, %sw.bb46.thread ]
  %len.4 = phi i32 [ 0, %sw.bb62 ], [ %len.2, %if.end41 ], [ 0, %sw.bb9 ], [ 1, %cont13 ], [ 1, %do.body ], [ 0, %entry ], [ 0, %sw.bb46 ], [ 1, %cont53 ], [ 1, %do.body49 ], [ 0, %sw.bb9.thread ], [ 0, %sw.bb46.thread ]
  %quote_string.1 = phi i8* [ null, %sw.bb62 ], [ %right_quote.addr.0, %if.end41 ], [ getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %sw.bb9 ], [ getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %cont13 ], [ getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %do.body ], [ null, %entry ], [ getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), %sw.bb46 ], [ getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), %cont53 ], [ getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), %do.body49 ], [ getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %sw.bb9.thread ], [ getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), %sw.bb46.thread ]
  %quote_string_len.0 = phi i32 [ 0, %sw.bb62 ], [ %call42, %if.end41 ], [ 1, %sw.bb9 ], [ 1, %cont13 ], [ 1, %do.body ], [ 0, %entry ], [ 1, %sw.bb46 ], [ 1, %cont53 ], [ 1, %do.body49 ], [ 1, %sw.bb9.thread ], [ 1, %sw.bb46.thread ]
  %backslash_escapes.0 = phi i1 [ false, %sw.bb62 ], [ true, %if.end41 ], [ true, %sw.bb9 ], [ true, %cont13 ], [ true, %do.body ], [ true, %entry ], [ false, %sw.bb46 ], [ false, %cont53 ], [ false, %do.body49 ], [ true, %sw.bb9.thread ], [ false, %sw.bb46.thread ]
  %quoting_style.addr.2 = phi i32 [ 0, %sw.bb62 ], [ %quoting_style, %if.end41 ], [ 3, %sw.bb9 ], [ 3, %cont13 ], [ 3, %do.body ], [ 5, %entry ], [ 2, %sw.bb46 ], [ 2, %cont53 ], [ 2, %do.body49 ], [ 3, %sw.bb9.thread ], [ 2, %sw.bb46.thread ]
  %elide_outer_quotes.2 = phi i8 [ 0, %sw.bb62 ], [ %frombool6, %if.end41 ], [ %frombool6, %sw.bb9 ], [ 0, %cont13 ], [ 0, %do.body ], [ 0, %entry ], [ %frombool6, %sw.bb46 ], [ 0, %cont53 ], [ 0, %do.body49 ], [ 1, %sw.bb9.thread ], [ 1, %sw.bb46.thread ]
  %backslash_escapes.0.not = xor i1 %backslash_escapes.0, true
  %tobool80 = icmp eq i32 %quote_string_len.0, 0
  %or.cond = or i1 %tobool80, %backslash_escapes.0.not
  %tobool632 = icmp eq i8 %elide_outer_quotes.2, 0
  %8 = bitcast %struct.__mbstate_t* %mbstate to i64*
  %tobool566 = icmp ne i8 %elide_outer_quotes.2, 0
  %cmp571 = icmp eq i32 %quoting_style.addr.2, 2
  %or.cond1091 = and i1 %tobool566, %cmp571
  %tobool749.old = icmp eq i32* %quote_these_too, null
  %or.cond1092 = or i1 %tobool632, %tobool749.old
  %and167 = and i32 %flags, 1
  %tobool168 = icmp eq i32 %and167, 0
  %and178 = and i32 %flags, 4
  %tobool179 = icmp eq i32 %and178, 0
  %cmp309 = icmp ne i32 %quoting_style.addr.2, 2
  %or.cond1126 = or i1 %cmp309, %tobool632
  %or.cond1085 = or i1 %tobool632, %tobool80
  %arrayidx329 = getelementptr inbounds i8* %arg, i32 1
  %9 = zext i32 %quote_string_len.0 to i64
  br label %ioc_bb68

ioc_bb68:                                         ; preds = %ioc_bb806, %for.inc805, %cont64
  %i.0 = phi i32 [ 0, %cont64 ], [ %185, %for.inc805 ], [ %185, %ioc_bb806 ]
  %len.5 = phi i32 [ %len.4, %cont64 ], [ %len.12, %for.inc805 ], [ %len.12, %ioc_bb806 ]
  %argsize.addr.0 = phi i32 [ %argsize, %cont64 ], [ %argsize.addr.6, %for.inc805 ], [ %argsize.addr.6, %ioc_bb806 ]
  call void @__ioc_report_conversion(i32 296, i32 39, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp70 = icmp eq i32 %argsize.addr.0, -1
  br i1 %cmp70, label %cond.true, label %cond.end

cond.true:                                        ; preds = %ioc_bb68
  %arrayidx71 = getelementptr inbounds i8* %arg, i32 %i.0
  %10 = load i8* %arrayidx71, align 1, !tbaa !1
  %cmp72 = icmp eq i8 %10, 0
  br i1 %cmp72, label %cont810, label %for.body77

cond.end:                                         ; preds = %ioc_bb68
  %cmp74 = icmp eq i32 %i.0, %argsize.addr.0
  br i1 %cmp74, label %cont810, label %for.body77

for.body77:                                       ; preds = %cond.true, %cond.end
  br i1 %or.cond, label %if.end94, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %for.body77
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 %quote_string_len.0)
  %12 = extractvalue { i32, i1 } %11, 0
  %13 = extractvalue { i32, i1 } %11, 1
  br i1 %13, label %ioc_bb82, label %cont83

ioc_bb82:                                         ; preds = %land.lhs.true81
  %14 = zext i32 %i.0 to i64
  call void @__ioc_report_add_overflow(i32 300, i32 52, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %14, i64 %9, i8 5) nounwind
  br label %cont83

cont83:                                           ; preds = %land.lhs.true81, %ioc_bb82
  %cmp84 = icmp ugt i32 %12, %argsize.addr.0
  br i1 %cmp84, label %if.end94, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %cont83
  %add.ptr = getelementptr inbounds i8* %arg, i32 %i.0
  %call87 = call i32 @memcmp(i8* %add.ptr, i8* %quote_string.1, i32 %quote_string_len.0) nounwind readonly
  %cmp88.not = icmp ne i32 %call87, 0
  %brmerge = or i1 %cmp88.not, %tobool632
  %15 = zext i1 %cmp88.not to i8
  %.mux = xor i8 %15, 1
  br i1 %brmerge, label %if.end94, label %force_outer_quoting_style

if.end94:                                         ; preds = %land.lhs.true86, %cont83, %for.body77
  %is_right_quote.0 = phi i8 [ 0, %for.body77 ], [ 0, %cont83 ], [ %.mux, %land.lhs.true86 ]
  %arrayidx95 = getelementptr inbounds i8* %arg, i32 %i.0
  %16 = load i8* %arrayidx95, align 1, !tbaa !1
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %cont98, label %ioc_bb97

ioc_bb97:                                         ; preds = %if.end94
  %18 = sext i8 %16 to i64
  call void @__ioc_report_conversion(i32 305, i32 9, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i64 %18, i8 1) nounwind
  br label %cont98

cont98:                                           ; preds = %ioc_bb97, %if.end94
  %conv99 = zext i8 %16 to i32
  switch i32 %conv99, label %sw.default486 [
    i32 0, label %sw.bb100
    i32 63, label %sw.bb172
    i32 7, label %c_escape
    i32 8, label %cont281
    i32 12, label %cont284
    i32 10, label %cont308
    i32 13, label %cont290
    i32 9, label %cont293
    i32 11, label %cont296
    i32 92, label %sw.bb297
    i32 123, label %ioc_bb324
    i32 125, label %ioc_bb324
    i32 35, label %cont343
    i32 126, label %cont343
    i32 32, label %cont365
    i32 33, label %cont365
    i32 34, label %cont365
    i32 36, label %cont365
    i32 38, label %cont365
    i32 40, label %cont365
    i32 41, label %cont365
    i32 42, label %cont365
    i32 59, label %cont365
    i32 60, label %cont365
    i32 61, label %cont365
    i32 62, label %cont365
    i32 91, label %cont365
    i32 94, label %cont365
    i32 96, label %cont365
    i32 124, label %cont365
    i32 39, label %cont375
    i32 37, label %sw.epilog742
    i32 43, label %sw.epilog742
    i32 44, label %sw.epilog742
    i32 45, label %sw.epilog742
    i32 46, label %sw.epilog742
    i32 47, label %sw.epilog742
    i32 48, label %sw.epilog742
    i32 49, label %sw.epilog742
    i32 50, label %sw.epilog742
    i32 51, label %sw.epilog742
    i32 52, label %sw.epilog742
    i32 53, label %sw.epilog742
    i32 54, label %sw.epilog742
    i32 55, label %sw.epilog742
    i32 56, label %sw.epilog742
    i32 57, label %sw.epilog742
    i32 58, label %sw.epilog742
    i32 65, label %sw.epilog742
    i32 66, label %sw.epilog742
    i32 67, label %sw.epilog742
    i32 68, label %sw.epilog742
    i32 69, label %sw.epilog742
    i32 70, label %sw.epilog742
    i32 71, label %sw.epilog742
    i32 72, label %sw.epilog742
    i32 73, label %sw.epilog742
    i32 74, label %sw.epilog742
    i32 75, label %sw.epilog742
    i32 76, label %sw.epilog742
    i32 77, label %sw.epilog742
    i32 78, label %sw.epilog742
    i32 79, label %sw.epilog742
    i32 80, label %sw.epilog742
    i32 81, label %sw.epilog742
    i32 82, label %sw.epilog742
    i32 83, label %sw.epilog742
    i32 84, label %sw.epilog742
    i32 85, label %sw.epilog742
    i32 86, label %sw.epilog742
    i32 87, label %sw.epilog742
    i32 88, label %sw.epilog742
    i32 89, label %sw.epilog742
    i32 90, label %sw.epilog742
    i32 93, label %sw.epilog742
    i32 95, label %sw.epilog742
    i32 97, label %sw.epilog742
    i32 98, label %sw.epilog742
    i32 99, label %sw.epilog742
    i32 100, label %sw.epilog742
    i32 101, label %sw.epilog742
    i32 102, label %sw.epilog742
    i32 103, label %sw.epilog742
    i32 104, label %sw.epilog742
    i32 105, label %sw.epilog742
    i32 106, label %sw.epilog742
    i32 107, label %sw.epilog742
    i32 108, label %sw.epilog742
    i32 109, label %sw.epilog742
    i32 110, label %sw.epilog742
    i32 111, label %sw.epilog742
    i32 112, label %sw.epilog742
    i32 113, label %sw.epilog742
    i32 114, label %sw.epilog742
    i32 115, label %sw.epilog742
    i32 116, label %sw.epilog742
    i32 117, label %sw.epilog742
    i32 118, label %sw.epilog742
    i32 119, label %sw.epilog742
    i32 120, label %sw.epilog742
    i32 121, label %sw.epilog742
    i32 122, label %sw.epilog742
  ]

sw.bb100:                                         ; preds = %cont98
  br i1 %backslash_escapes.0, label %if.then102, label %if.else

if.then102:                                       ; preds = %sw.bb100
  br i1 %tobool632, label %do.body106, label %force_outer_quoting_style

do.body106:                                       ; preds = %if.then102
  %cmp107 = icmp ult i32 %len.5, %buffersize
  br i1 %cmp107, label %cont111, label %if.end113

cont111:                                          ; preds = %do.body106
  %arrayidx112 = getelementptr inbounds i8* %buffer, i32 %len.5
  store i8 92, i8* %arrayidx112, align 1, !tbaa !1
  br label %if.end113

if.end113:                                        ; preds = %cont111, %do.body106
  %19 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.5, i32 1)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb114, label %cont118

ioc_bb114:                                        ; preds = %if.end113
  %22 = zext i32 %len.5 to i64
  call void @__ioc_report_add_overflow(i32 315, i32 16, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %22, i64 1, i8 5) nounwind
  br label %cont118

cont118:                                          ; preds = %ioc_bb114, %if.end113
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 1)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  %26 = zext i32 %i.0 to i64
  br i1 %25, label %ioc_bb119, label %cont120

ioc_bb119:                                        ; preds = %cont118
  call void @__ioc_report_add_overflow(i32 322, i32 17, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind
  br label %cont120

cont120:                                          ; preds = %cont118, %ioc_bb119
  %cmp121 = icmp ult i32 %24, %argsize.addr.0
  br i1 %cmp121, label %cont125, label %sw.epilog742

cont125:                                          ; preds = %cont120
  br i1 %25, label %ioc_bb126, label %cont127

ioc_bb126:                                        ; preds = %cont125
  call void @__ioc_report_add_overflow(i32 322, i32 46, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind
  br label %cont127

cont127:                                          ; preds = %cont125, %ioc_bb126
  %arrayidx128 = getelementptr inbounds i8* %arg, i32 %24
  %27 = load i8* %arrayidx128, align 1, !tbaa !1
  %cmp130 = icmp sgt i8 %27, 47
  br i1 %cmp130, label %cont134, label %sw.epilog742

cont134:                                          ; preds = %cont127
  br i1 %25, label %ioc_bb135, label %cont136

ioc_bb135:                                        ; preds = %cont134
  call void @__ioc_report_add_overflow(i32 322, i32 60, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind
  %.pre = load i8* %arrayidx128, align 1, !tbaa !1
  br label %cont136

cont136:                                          ; preds = %cont134, %ioc_bb135
  %28 = phi i8 [ %27, %cont134 ], [ %.pre, %ioc_bb135 ]
  %cmp139 = icmp slt i8 %28, 58
  br i1 %cmp139, label %do.body142, label %sw.epilog742

do.body142:                                       ; preds = %cont136
  %cmp143 = icmp ult i32 %20, %buffersize
  br i1 %cmp143, label %cont147, label %if.end149

cont147:                                          ; preds = %do.body142
  %arrayidx148 = getelementptr inbounds i8* %buffer, i32 %20
  store i8 48, i8* %arrayidx148, align 1, !tbaa !1
  br label %if.end149

if.end149:                                        ; preds = %cont147, %do.body142
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 1)
  %30 = extractvalue { i32, i1 } %29, 0
  %31 = extractvalue { i32, i1 } %29, 1
  br i1 %31, label %ioc_bb150, label %cont151

ioc_bb150:                                        ; preds = %if.end149
  %32 = zext i32 %20 to i64
  call void @__ioc_report_add_overflow(i32 326, i32 18, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind
  br label %cont151

cont151:                                          ; preds = %if.end149, %ioc_bb150
  %cmp154 = icmp ult i32 %30, %buffersize
  br i1 %cmp154, label %cont158, label %if.end160

cont158:                                          ; preds = %cont151
  %arrayidx159 = getelementptr inbounds i8* %buffer, i32 %30
  store i8 48, i8* %arrayidx159, align 1, !tbaa !1
  br label %if.end160

if.end160:                                        ; preds = %cont158, %cont151
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %30, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb161, label %sw.epilog742

ioc_bb161:                                        ; preds = %if.end160
  %36 = zext i32 %30 to i64
  call void @__ioc_report_add_overflow(i32 331, i32 18, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %36, i64 1, i8 5) nounwind
  br label %sw.epilog742

if.else:                                          ; preds = %sw.bb100
  br i1 %tobool168, label %lor.lhs.false745, label %for.inc805

sw.bb172:                                         ; preds = %cont98
  switch i32 %quoting_style.addr.2, label %sw.epilog742 [
    i32 2, label %sw.bb173
    i32 3, label %sw.bb177
  ]

sw.bb173:                                         ; preds = %sw.bb172
  br i1 %tobool632, label %sw.epilog742, label %force_outer_quoting_style

sw.bb177:                                         ; preds = %sw.bb172
  br i1 %tobool179, label %sw.epilog742, label %cont182

cont182:                                          ; preds = %sw.bb177
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 2)
  %38 = extractvalue { i32, i1 } %37, 0
  %39 = extractvalue { i32, i1 } %37, 1
  %40 = zext i32 %i.0 to i64
  br i1 %39, label %ioc_bb183, label %cont184

ioc_bb183:                                        ; preds = %cont182
  call void @__ioc_report_add_overflow(i32 355, i32 35, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %40, i64 2, i8 5) nounwind
  br label %cont184

cont184:                                          ; preds = %cont182, %ioc_bb183
  %cmp185 = icmp ult i32 %38, %argsize.addr.0
  br i1 %cmp185, label %cont189, label %sw.epilog742

cont189:                                          ; preds = %cont184
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 1)
  %42 = extractvalue { i32, i1 } %41, 0
  %43 = extractvalue { i32, i1 } %41, 1
  br i1 %43, label %ioc_bb190, label %cont191

ioc_bb190:                                        ; preds = %cont189
  call void @__ioc_report_add_overflow(i32 355, i32 58, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %40, i64 1, i8 5) nounwind
  br label %cont191

cont191:                                          ; preds = %cont189, %ioc_bb190
  %arrayidx192 = getelementptr inbounds i8* %arg, i32 %42
  %44 = load i8* %arrayidx192, align 1, !tbaa !1
  %cmp194 = icmp eq i8 %44, 63
  br i1 %cmp194, label %cont198, label %sw.epilog742

cont198:                                          ; preds = %cont191
  br i1 %39, label %ioc_bb199, label %cont200

ioc_bb199:                                        ; preds = %cont198
  call void @__ioc_report_add_overflow(i32 356, i32 28, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %40, i64 2, i8 5) nounwind
  br label %cont200

cont200:                                          ; preds = %cont198, %ioc_bb199
  %arrayidx201 = getelementptr inbounds i8* %arg, i32 %38
  %45 = load i8* %arrayidx201, align 1, !tbaa !1
  %conv202 = sext i8 %45 to i32
  switch i32 %conv202, label %sw.epilog742 [
    i32 33, label %sw.bb211
    i32 39, label %sw.bb211
    i32 40, label %sw.bb211
    i32 41, label %sw.bb211
    i32 45, label %sw.bb211
    i32 47, label %sw.bb211
    i32 60, label %sw.bb211
    i32 61, label %sw.bb211
    i32 62, label %sw.bb211
  ]

sw.bb211:                                         ; preds = %cont200, %cont200, %cont200, %cont200, %cont200, %cont200, %cont200, %cont200, %cont200
  br i1 %tobool632, label %cont216, label %force_outer_quoting_style

cont216:                                          ; preds = %sw.bb211
  br i1 %39, label %ioc_bb217, label %cont218

ioc_bb217:                                        ; preds = %cont216
  call void @__ioc_report_add_overflow(i32 387, i32 29, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %40, i64 2, i8 5) nounwind
  %.pre1167 = load i8* %arrayidx201, align 1, !tbaa !1
  br label %cont218

cont218:                                          ; preds = %cont216, %ioc_bb217
  %46 = phi i8 [ %45, %cont216 ], [ %.pre1167, %ioc_bb217 ]
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %cont224, label %ioc_bb221

ioc_bb221:                                        ; preds = %cont218
  %48 = sext i8 %46 to i64
  call void @__ioc_report_conversion(i32 387, i32 23, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i64 %48, i8 1) nounwind
  br label %cont224

cont224:                                          ; preds = %cont218, %ioc_bb221
  br i1 %39, label %ioc_bb225, label %cont226

ioc_bb225:                                        ; preds = %cont224
  call void @__ioc_report_add_overflow(i32 388, i32 21, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %40, i64 2, i8 5) nounwind
  br label %cont226

cont226:                                          ; preds = %cont224, %ioc_bb225
  %cmp228 = icmp ult i32 %len.5, %buffersize
  br i1 %cmp228, label %cont232, label %if.end234

cont232:                                          ; preds = %cont226
  %arrayidx233 = getelementptr inbounds i8* %buffer, i32 %len.5
  store i8 63, i8* %arrayidx233, align 1, !tbaa !1
  br label %if.end234

if.end234:                                        ; preds = %cont232, %cont226
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.5, i32 1)
  %50 = extractvalue { i32, i1 } %49, 0
  %51 = extractvalue { i32, i1 } %49, 1
  br i1 %51, label %ioc_bb235, label %cont236

ioc_bb235:                                        ; preds = %if.end234
  %52 = zext i32 %len.5 to i64
  call void @__ioc_report_add_overflow(i32 392, i32 24, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %52, i64 1, i8 5) nounwind
  br label %cont236

cont236:                                          ; preds = %if.end234, %ioc_bb235
  %cmp239 = icmp ult i32 %50, %buffersize
  br i1 %cmp239, label %cont243, label %if.end245

cont243:                                          ; preds = %cont236
  %arrayidx244 = getelementptr inbounds i8* %buffer, i32 %50
  store i8 34, i8* %arrayidx244, align 1, !tbaa !1
  br label %if.end245

if.end245:                                        ; preds = %cont243, %cont236
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %50, i32 1)
  %54 = extractvalue { i32, i1 } %53, 0
  %55 = extractvalue { i32, i1 } %53, 1
  br i1 %55, label %ioc_bb246, label %cont247

ioc_bb246:                                        ; preds = %if.end245
  %56 = zext i32 %50 to i64
  call void @__ioc_report_add_overflow(i32 397, i32 24, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %56, i64 1, i8 5) nounwind
  br label %cont247

cont247:                                          ; preds = %if.end245, %ioc_bb246
  %cmp250 = icmp ult i32 %54, %buffersize
  br i1 %cmp250, label %cont254, label %if.end256

cont254:                                          ; preds = %cont247
  %arrayidx255 = getelementptr inbounds i8* %buffer, i32 %54
  store i8 34, i8* %arrayidx255, align 1, !tbaa !1
  br label %if.end256

if.end256:                                        ; preds = %cont254, %cont247
  %57 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %54, i32 1)
  %58 = extractvalue { i32, i1 } %57, 0
  %59 = extractvalue { i32, i1 } %57, 1
  br i1 %59, label %ioc_bb257, label %cont258

ioc_bb257:                                        ; preds = %if.end256
  %60 = zext i32 %54 to i64
  call void @__ioc_report_add_overflow(i32 402, i32 24, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %60, i64 1, i8 5) nounwind
  br label %cont258

cont258:                                          ; preds = %if.end256, %ioc_bb257
  %cmp261 = icmp ult i32 %58, %buffersize
  br i1 %cmp261, label %cont265, label %if.end267

cont265:                                          ; preds = %cont258
  %arrayidx266 = getelementptr inbounds i8* %buffer, i32 %58
  store i8 63, i8* %arrayidx266, align 1, !tbaa !1
  br label %if.end267

if.end267:                                        ; preds = %cont265, %cont258
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %58, i32 1)
  %62 = extractvalue { i32, i1 } %61, 0
  %63 = extractvalue { i32, i1 } %61, 1
  br i1 %63, label %ioc_bb268, label %sw.epilog742

ioc_bb268:                                        ; preds = %if.end267
  %64 = zext i32 %58 to i64
  call void @__ioc_report_add_overflow(i32 407, i32 24, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %64, i64 1, i8 5) nounwind
  br label %sw.epilog742

cont281:                                          ; preds = %cont98
  br label %c_escape

cont284:                                          ; preds = %cont98
  br label %c_escape

cont290:                                          ; preds = %cont98
  br label %cont308

cont293:                                          ; preds = %cont98
  br label %cont308

cont296:                                          ; preds = %cont98
  br label %c_escape

sw.bb297:                                         ; preds = %cont98
  %backslash_escapes.0.not1168 = xor i1 %backslash_escapes.0, true
  %brmerge1169 = or i1 %or.cond1085, %backslash_escapes.0.not1168
  br i1 %brmerge1169, label %cont308, label %do.body792

cont308:                                          ; preds = %sw.bb297, %cont290, %cont293, %cont98
  %esc.0 = phi i8 [ %16, %sw.bb297 ], [ 116, %cont293 ], [ 114, %cont290 ], [ 110, %cont98 ]
  br i1 %or.cond1126, label %c_escape, label %force_outer_quoting_style

c_escape:                                         ; preds = %cont308, %cont98, %cont296, %cont284, %cont281
  %esc.1 = phi i8 [ %esc.0, %cont308 ], [ 118, %cont296 ], [ 102, %cont284 ], [ 98, %cont281 ], [ 97, %cont98 ]
  br i1 %backslash_escapes.0, label %store_escape, label %lor.lhs.false745

ioc_bb324:                                        ; preds = %cont98, %cont98
  call void @__ioc_report_conversion(i32 479, i32 35, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  br i1 %cmp70, label %cond.true328, label %cont335

cond.true328:                                     ; preds = %ioc_bb324
  %65 = load i8* %arrayidx329, align 1, !tbaa !1
  %cmp331 = icmp eq i8 %65, 0
  %cmp344 = icmp eq i32 %i.0, 0
  %or.cond1086 = and i1 %cmp331, %cmp344
  %or.cond1089 = and i1 %or.cond1086, %cmp571
  br i1 %or.cond1089, label %land.lhs.true368, label %sw.epilog742

cont335:                                          ; preds = %ioc_bb324
  %cmp336 = icmp eq i32 %argsize.addr.0, 1
  %cmp344.old = icmp eq i32 %i.0, 0
  %or.cond1087 = and i1 %cmp336, %cmp344.old
  %or.cond1090 = and i1 %or.cond1087, %cmp571
  %or.cond1090.not = xor i1 %or.cond1090, true
  %or.cond1127 = or i1 %tobool632, %or.cond1090.not
  br i1 %or.cond1127, label %sw.epilog742, label %force_outer_quoting_style

cont343:                                          ; preds = %cont98, %cont98
  %notlhs = icmp ne i32 %i.0, 0
  %or.cond1088.not = or i1 %cmp309, %notlhs
  %or.cond1128 = or i1 %or.cond1088.not, %tobool632
  br i1 %or.cond1128, label %sw.epilog742, label %force_outer_quoting_style

cont365:                                          ; preds = %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98
  br i1 %or.cond1126, label %sw.epilog742, label %force_outer_quoting_style

land.lhs.true368:                                 ; preds = %cond.true328
  br i1 %tobool632, label %sw.epilog742, label %force_outer_quoting_style

cont375:                                          ; preds = %cont98
  br i1 %cmp571, label %if.then378, label %sw.epilog742

if.then378:                                       ; preds = %cont375
  br i1 %tobool632, label %do.body382, label %force_outer_quoting_style

do.body382:                                       ; preds = %if.then378
  %cmp383 = icmp ult i32 %len.5, %buffersize
  br i1 %cmp383, label %cont387, label %if.end389

cont387:                                          ; preds = %do.body382
  %arrayidx388 = getelementptr inbounds i8* %buffer, i32 %len.5
  store i8 39, i8* %arrayidx388, align 1, !tbaa !1
  br label %if.end389

if.end389:                                        ; preds = %cont387, %do.body382
  %66 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.5, i32 1)
  %67 = extractvalue { i32, i1 } %66, 0
  %68 = extractvalue { i32, i1 } %66, 1
  br i1 %68, label %ioc_bb390, label %cont391

ioc_bb390:                                        ; preds = %if.end389
  %69 = zext i32 %len.5 to i64
  call void @__ioc_report_add_overflow(i32 555, i32 16, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %69, i64 1, i8 5) nounwind
  br label %cont391

cont391:                                          ; preds = %if.end389, %ioc_bb390
  %cmp394 = icmp ult i32 %67, %buffersize
  br i1 %cmp394, label %cont398, label %if.end400

cont398:                                          ; preds = %cont391
  %arrayidx399 = getelementptr inbounds i8* %buffer, i32 %67
  store i8 92, i8* %arrayidx399, align 1, !tbaa !1
  br label %if.end400

if.end400:                                        ; preds = %cont398, %cont391
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %67, i32 1)
  %71 = extractvalue { i32, i1 } %70, 0
  %72 = extractvalue { i32, i1 } %70, 1
  br i1 %72, label %ioc_bb401, label %cont402

ioc_bb401:                                        ; preds = %if.end400
  %73 = zext i32 %67 to i64
  call void @__ioc_report_add_overflow(i32 560, i32 16, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %73, i64 1, i8 5) nounwind
  br label %cont402

cont402:                                          ; preds = %if.end400, %ioc_bb401
  %cmp405 = icmp ult i32 %71, %buffersize
  br i1 %cmp405, label %cont409, label %if.end411

cont409:                                          ; preds = %cont402
  %arrayidx410 = getelementptr inbounds i8* %buffer, i32 %71
  store i8 39, i8* %arrayidx410, align 1, !tbaa !1
  br label %if.end411

if.end411:                                        ; preds = %cont409, %cont402
  %74 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 1)
  %75 = extractvalue { i32, i1 } %74, 0
  %76 = extractvalue { i32, i1 } %74, 1
  br i1 %76, label %ioc_bb412, label %sw.epilog742

ioc_bb412:                                        ; preds = %if.end411
  %77 = zext i32 %71 to i64
  call void @__ioc_report_add_overflow(i32 565, i32 16, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %77, i64 1, i8 5) nounwind
  br label %sw.epilog742

sw.default486:                                    ; preds = %cont98
  br i1 %cmp, label %cont616.thread, label %if.else509

cont616.thread:                                   ; preds = %sw.default486
  %call492 = call i16** @__ctype_b_loc() nounwind readnone
  %78 = load i16** %call492, align 4, !tbaa !4
  %arrayidx493 = getelementptr inbounds i16* %78, i32 %conv99
  %79 = load i16* %arrayidx493, align 2, !tbaa !5
  %and505 = lshr i16 %79, 14
  %and505.tr = trunc i16 %and505 to i8
  %frombool508 = and i8 %and505.tr, 1
  br label %lor.lhs.false

if.else509:                                       ; preds = %sw.default486
  store i64 0, i64* %8, align 8
  call void @__ioc_report_conversion(i32 811, i32 36, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  br i1 %cmp70, label %if.then519, label %do.body522.preheader

if.then519:                                       ; preds = %if.else509
  %call520 = call i32 @strlen(i8* %arg) nounwind readonly
  br label %do.body522.preheader

do.body522.preheader:                             ; preds = %if.then519, %if.else509
  %argsize.addr.1.ph = phi i32 [ %argsize.addr.0, %if.else509 ], [ %call520, %if.then519 ]
  %80 = zext i32 %i.0 to i64
  %81 = zext i32 %argsize.addr.1.ph to i64
  br label %do.body522

do.body522:                                       ; preds = %do.body522.preheader, %cont606
  %m.0 = phi i32 [ %110, %cont606 ], [ 0, %do.body522.preheader ]
  %printable.0 = phi i8 [ %.printable.0, %cont606 ], [ 1, %do.body522.preheader ]
  %82 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 %m.0)
  %83 = extractvalue { i32, i1 } %82, 0
  %84 = extractvalue { i32, i1 } %82, 1
  %85 = zext i32 %m.0 to i64
  br i1 %84, label %ioc_bb526, label %cont527

ioc_bb526:                                        ; preds = %do.body522
  call void @__ioc_report_add_overflow(i32 815, i32 46, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %80, i64 %85, i8 5) nounwind
  call void @__ioc_report_add_overflow(i32 815, i32 64, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %80, i64 %85, i8 5) nounwind
  br label %cont527

cont527:                                          ; preds = %do.body522, %ioc_bb526
  %arrayidx5251098 = getelementptr inbounds i8* %arg, i32 %83
  %86 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %argsize.addr.1.ph, i32 %83)
  %87 = extractvalue { i32, i1 } %86, 0
  %88 = extractvalue { i32, i1 } %86, 1
  %89 = zext i32 %83 to i64
  br i1 %88, label %ioc_bb528, label %cont529

ioc_bb528:                                        ; preds = %cont527
  call void @__ioc_report_sub_overflow(i32 815, i32 59, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %81, i64 %89, i8 5) nounwind
  br label %cont529

cont529:                                          ; preds = %cont527, %ioc_bb528
  %call530 = call i32 @mbrtowc(i32* %w, i8* %arrayidx5251098, i32 %87, %struct.__mbstate_t* %mbstate) nounwind
  %cmp533 = icmp eq i32 %call530, 0
  br i1 %cmp533, label %cont616, label %ioc_bb540

ioc_bb540:                                        ; preds = %cont529
  call void @__ioc_report_conversion(i32 818, i32 41, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp542 = icmp eq i32 %call530, -1
  br i1 %cmp542, label %cont616, label %ioc_bb549

ioc_bb549:                                        ; preds = %ioc_bb540
  call void @__ioc_report_conversion(i32 822, i32 41, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -2, i8 1) nounwind
  %cmp551 = icmp eq i32 %call530, -2
  br i1 %cmp551, label %while.cond, label %if.else565

while.cond:                                       ; preds = %ioc_bb563, %while.body, %ioc_bb549
  %m.1 = phi i32 [ %m.0, %ioc_bb549 ], [ %96, %while.body ], [ %96, %ioc_bb563 ]
  %90 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 %m.1)
  %91 = extractvalue { i32, i1 } %90, 0
  %92 = extractvalue { i32, i1 } %90, 1
  %93 = zext i32 %m.1 to i64
  br i1 %92, label %ioc_bb554, label %cont555

ioc_bb554:                                        ; preds = %while.cond
  call void @__ioc_report_add_overflow(i32 824, i32 23, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %80, i64 %93, i8 5) nounwind
  br label %cont555

cont555:                                          ; preds = %while.cond, %ioc_bb554
  %cmp556 = icmp ult i32 %91, %argsize.addr.1.ph
  br i1 %cmp556, label %land.rhs, label %cont616

land.rhs:                                         ; preds = %cont555
  br i1 %92, label %ioc_bb558, label %cont559

ioc_bb558:                                        ; preds = %land.rhs
  call void @__ioc_report_add_overflow(i32 824, i32 46, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %80, i64 %93, i8 5) nounwind
  br label %cont559

cont559:                                          ; preds = %land.rhs, %ioc_bb558
  %arrayidx560 = getelementptr inbounds i8* %arg, i32 %91
  %94 = load i8* %arrayidx560, align 1, !tbaa !1
  %tobool562 = icmp eq i8 %94, 0
  br i1 %tobool562, label %cont616, label %while.body

while.body:                                       ; preds = %cont559
  %95 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.1, i32 1)
  %96 = extractvalue { i32, i1 } %95, 0
  %97 = extractvalue { i32, i1 } %95, 1
  br i1 %97, label %ioc_bb563, label %while.cond

ioc_bb563:                                        ; preds = %while.body
  call void @__ioc_report_add_overflow(i32 825, i32 18, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %93, i64 1, i8 5) nounwind
  br label %while.cond

if.else565:                                       ; preds = %ioc_bb549
  %cmp5771135 = icmp ugt i32 %call530, 1
  %or.cond1170 = and i1 %or.cond1091, %cmp5771135
  br i1 %or.cond1170, label %for.body579, label %if.end597

for.body579:                                      ; preds = %if.else565, %for.cond576.backedge
  %j.01136 = phi i32 [ %104, %for.cond576.backedge ], [ 1, %if.else565 ]
  br i1 %84, label %ioc_bb580, label %cont581

ioc_bb580:                                        ; preds = %for.body579
  call void @__ioc_report_add_overflow(i32 836, i32 32, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %80, i64 %85, i8 5) nounwind
  br label %cont581

cont581:                                          ; preds = %for.body579, %ioc_bb580
  %98 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %83, i32 %j.01136)
  %99 = extractvalue { i32, i1 } %98, 0
  %100 = extractvalue { i32, i1 } %98, 1
  %101 = zext i32 %j.01136 to i64
  br i1 %100, label %ioc_bb582, label %cont583

ioc_bb582:                                        ; preds = %cont581
  call void @__ioc_report_add_overflow(i32 836, i32 36, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %89, i64 %101, i8 5) nounwind
  br label %cont583

cont583:                                          ; preds = %cont581, %ioc_bb582
  %arrayidx584 = getelementptr inbounds i8* %arg, i32 %99
  %102 = load i8* %arrayidx584, align 1, !tbaa !1
  %conv585 = sext i8 %102 to i32
  switch i32 %conv585, label %for.inc593 [
    i32 91, label %force_outer_quoting_style
    i32 92, label %force_outer_quoting_style
    i32 94, label %force_outer_quoting_style
    i32 96, label %force_outer_quoting_style
    i32 124, label %force_outer_quoting_style
  ]

for.inc593:                                       ; preds = %cont583
  %103 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %j.01136, i32 1)
  %104 = extractvalue { i32, i1 } %103, 0
  %105 = extractvalue { i32, i1 } %103, 1
  br i1 %105, label %ioc_bb594, label %for.cond576.backedge

for.cond576.backedge:                             ; preds = %for.inc593, %ioc_bb594
  %cmp577 = icmp ult i32 %104, %call530
  br i1 %cmp577, label %for.body579, label %if.end597

ioc_bb594:                                        ; preds = %for.inc593
  call void @__ioc_report_add_overflow(i32 835, i32 41, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %101, i64 1, i8 5) nounwind
  br label %for.cond576.backedge

if.end597:                                        ; preds = %for.cond576.backedge, %if.else565
  %106 = load i32* %w, align 4, !tbaa !0
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %cont600, label %ioc_bb599

ioc_bb599:                                        ; preds = %if.end597
  %108 = sext i32 %106 to i64
  call void @__ioc_report_conversion(i32 855, i32 29, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %108, i8 1) nounwind
  br label %cont600

cont600:                                          ; preds = %ioc_bb599, %if.end597
  %call601 = call i32 @iswprint(i32 %106) nounwind
  %tobool602 = icmp eq i32 %call601, 0
  %.printable.0 = select i1 %tobool602, i8 0, i8 %printable.0
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.0, i32 %call530)
  %110 = extractvalue { i32, i1 } %109, 0
  %111 = extractvalue { i32, i1 } %109, 1
  br i1 %111, label %ioc_bb605, label %cont606

ioc_bb605:                                        ; preds = %cont600
  %112 = zext i32 %call530 to i64
  call void @__ioc_report_add_overflow(i32 857, i32 17, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %85, i64 %112, i8 5) nounwind
  br label %cont606

cont606:                                          ; preds = %cont600, %ioc_bb605
  %call610 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) nounwind readonly
  %lnot612 = icmp eq i32 %call610, 0
  br i1 %lnot612, label %do.body522, label %cont616

cont616:                                          ; preds = %cont555, %cont559, %cont529, %cont606, %ioc_bb540
  %m.2 = phi i32 [ %m.0, %cont529 ], [ %110, %cont606 ], [ %m.0, %ioc_bb540 ], [ %m.1, %cont559 ], [ %m.1, %cont555 ]
  %printable.2 = phi i8 [ %printable.0, %cont529 ], [ %.printable.0, %cont606 ], [ 0, %ioc_bb540 ], [ 0, %cont559 ], [ 0, %cont555 ]
  %cmp617 = icmp ugt i32 %m.2, 1
  br i1 %cmp617, label %if.then623, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cont616.thread, %cont616
  %argsize.addr.21107 = phi i32 [ %argsize.addr.0, %cont616.thread ], [ %argsize.addr.1.ph, %cont616 ]
  %printable.21105 = phi i8 [ %frombool508, %cont616.thread ], [ %printable.2, %cont616 ]
  %m.21103 = phi i32 [ 1, %cont616.thread ], [ %m.2, %cont616 ]
  br i1 %backslash_escapes.0, label %land.lhs.true621, label %lor.lhs.false745

land.lhs.true621:                                 ; preds = %lor.lhs.false
  %113 = and i8 %printable.21105, 1
  %tobool622 = icmp eq i8 %113, 0
  br i1 %tobool622, label %if.then623, label %land.lhs.true748

if.then623:                                       ; preds = %land.lhs.true621, %cont616
  %argsize.addr.21108 = phi i32 [ %argsize.addr.21107, %land.lhs.true621 ], [ %argsize.addr.1.ph, %cont616 ]
  %printable.21106 = phi i8 [ %printable.21105, %land.lhs.true621 ], [ %printable.2, %cont616 ]
  %m.21104 = phi i32 [ %m.21103, %land.lhs.true621 ], [ %m.2, %cont616 ]
  %114 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 %m.21104)
  %115 = extractvalue { i32, i1 } %114, 0
  %116 = extractvalue { i32, i1 } %114, 1
  br i1 %116, label %ioc_bb624, label %for.cond626.preheader

ioc_bb624:                                        ; preds = %if.then623
  %117 = zext i32 %m.21104 to i64
  %118 = zext i32 %i.0 to i64
  call void @__ioc_report_add_overflow(i32 864, i32 27, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %118, i64 %117, i8 5) nounwind
  br label %for.cond626.preheader

for.cond626.preheader:                            ; preds = %if.then623, %ioc_bb624
  %119 = and i8 %printable.21106, 1
  br label %for.cond626

for.cond626:                                      ; preds = %cont735, %ioc_bb738, %for.cond626.preheader
  %i.1 = phi i32 [ %i.0, %for.cond626.preheader ], [ %156, %ioc_bb738 ], [ %156, %cont735 ]
  %len.7 = phi i32 [ %len.5, %for.cond626.preheader ], [ %162, %ioc_bb738 ], [ %162, %cont735 ]
  %c.0 = phi i8 [ %16, %for.cond626.preheader ], [ %165, %ioc_bb738 ], [ %165, %cont735 ]
  %is_right_quote.1 = phi i8 [ %is_right_quote.0, %for.cond626.preheader ], [ %is_right_quote.2, %ioc_bb738 ], [ %is_right_quote.2, %cont735 ]
  %backslash_escapes.0.not1171 = xor i1 %backslash_escapes.0, true
  %tobool630.not = icmp ne i8 %119, 0
  %brmerge1172 = or i1 %tobool630.not, %backslash_escapes.0.not1171
  br i1 %brmerge1172, label %if.else697, label %if.then631

if.then631:                                       ; preds = %for.cond626
  br i1 %tobool632, label %do.body635, label %force_outer_quoting_style

do.body635:                                       ; preds = %if.then631
  %cmp636 = icmp ult i32 %len.7, %buffersize
  br i1 %cmp636, label %cont640, label %if.end642

cont640:                                          ; preds = %do.body635
  %arrayidx641 = getelementptr inbounds i8* %buffer, i32 %len.7
  store i8 92, i8* %arrayidx641, align 1, !tbaa !1
  br label %if.end642

if.end642:                                        ; preds = %cont640, %do.body635
  %120 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.7, i32 1)
  %121 = extractvalue { i32, i1 } %120, 0
  %122 = extractvalue { i32, i1 } %120, 1
  br i1 %122, label %ioc_bb643, label %cont644

ioc_bb643:                                        ; preds = %if.end642
  %123 = zext i32 %len.7 to i64
  call void @__ioc_report_add_overflow(i32 872, i32 20, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %123, i64 1, i8 5) nounwind
  br label %cont644

cont644:                                          ; preds = %if.end642, %ioc_bb643
  %cmp648 = icmp ult i32 %121, %buffersize
  br i1 %cmp648, label %cont653, label %if.end661

cont653:                                          ; preds = %cont644
  %conv651 = zext i8 %c.0 to i32
  %shr1083 = lshr i32 %conv651, 6
  %124 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shr1083, i32 48)
  %125 = extractvalue { i32, i1 } %124, 0
  %126 = extractvalue { i32, i1 } %124, 1
  br i1 %126, label %ioc_bb654, label %cont655

ioc_bb654:                                        ; preds = %cont653
  %127 = zext i32 %shr1083 to i64
  call void @__ioc_report_add_overflow(i32 876, i32 37, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 48, i64 %127, i8 13) nounwind
  br label %cont655

cont655:                                          ; preds = %cont653, %ioc_bb654
  %.off1084 = add i32 %125, 128
  %128 = icmp ult i32 %.off1084, 256
  br i1 %128, label %cont658, label %ioc_bb657

ioc_bb657:                                        ; preds = %cont655
  %129 = sext i32 %125 to i64
  call void @__ioc_report_conversion(i32 876, i32 33, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %129, i8 1) nounwind
  br label %cont658

cont658:                                          ; preds = %ioc_bb657, %cont655
  %conv659 = trunc i32 %125 to i8
  %arrayidx660 = getelementptr inbounds i8* %buffer, i32 %121
  store i8 %conv659, i8* %arrayidx660, align 1, !tbaa !1
  br label %if.end661

if.end661:                                        ; preds = %cont658, %cont644
  %130 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %121, i32 1)
  %131 = extractvalue { i32, i1 } %130, 0
  %132 = extractvalue { i32, i1 } %130, 1
  br i1 %132, label %ioc_bb662, label %cont663

ioc_bb662:                                        ; preds = %if.end661
  %133 = zext i32 %121 to i64
  call void @__ioc_report_add_overflow(i32 877, i32 20, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %133, i64 1, i8 5) nounwind
  br label %cont663

cont663:                                          ; preds = %if.end661, %ioc_bb662
  %cmp667 = icmp ult i32 %131, %buffersize
  br i1 %cmp667, label %cont672, label %if.end683

cont672:                                          ; preds = %cont663
  %conv670 = zext i8 %c.0 to i32
  %shr6731082 = lshr i32 %conv670, 3
  %and674 = and i32 %shr6731082, 7
  %134 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %and674, i32 48)
  %135 = extractvalue { i32, i1 } %134, 0
  %136 = extractvalue { i32, i1 } %134, 1
  br i1 %136, label %ioc_bb675, label %cont676

ioc_bb675:                                        ; preds = %cont672
  %137 = zext i32 %and674 to i64
  call void @__ioc_report_add_overflow(i32 881, i32 37, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 48, i64 %137, i8 13) nounwind
  br label %cont676

cont676:                                          ; preds = %cont672, %ioc_bb675
  %.off = add i32 %135, 128
  %138 = icmp ult i32 %.off, 256
  br i1 %138, label %cont680, label %ioc_bb679

ioc_bb679:                                        ; preds = %cont676
  %139 = sext i32 %135 to i64
  call void @__ioc_report_conversion(i32 881, i32 33, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %139, i8 1) nounwind
  br label %cont680

cont680:                                          ; preds = %ioc_bb679, %cont676
  %conv681 = trunc i32 %135 to i8
  %arrayidx682 = getelementptr inbounds i8* %buffer, i32 %131
  store i8 %conv681, i8* %arrayidx682, align 1, !tbaa !1
  br label %if.end683

if.end683:                                        ; preds = %cont680, %cont663
  %140 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %131, i32 1)
  %141 = extractvalue { i32, i1 } %140, 0
  %142 = extractvalue { i32, i1 } %140, 1
  br i1 %142, label %ioc_bb684, label %cont685

ioc_bb684:                                        ; preds = %if.end683
  %143 = zext i32 %131 to i64
  call void @__ioc_report_add_overflow(i32 882, i32 20, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %143, i64 1, i8 5) nounwind
  br label %cont685

cont685:                                          ; preds = %if.end683, %ioc_bb684
  %conv688 = zext i8 %c.0 to i32
  %and689 = and i32 %conv688, 7
  %144 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %and689, i32 48)
  %145 = extractvalue { i32, i1 } %144, 0
  %146 = extractvalue { i32, i1 } %144, 1
  br i1 %146, label %ioc_bb690, label %cont691

ioc_bb690:                                        ; preds = %cont685
  %147 = zext i32 %and689 to i64
  call void @__ioc_report_add_overflow(i32 884, i32 23, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 48, i64 %147, i8 13) nounwind
  br label %cont691

cont691:                                          ; preds = %cont685, %ioc_bb690
  %148 = icmp ult i32 %145, 256
  br i1 %148, label %cont695, label %ioc_bb694

ioc_bb694:                                        ; preds = %cont691
  %149 = sext i32 %145 to i64
  call void @__ioc_report_conversion(i32 884, i32 19, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i64 %149, i8 1) nounwind
  br label %cont695

cont695:                                          ; preds = %ioc_bb694, %cont691
  %conv696 = trunc i32 %145 to i8
  br label %cont715

if.else697:                                       ; preds = %for.cond626
  %150 = and i8 %is_right_quote.1, 1
  %tobool698 = icmp eq i8 %150, 0
  br i1 %tobool698, label %cont715, label %do.body700

do.body700:                                       ; preds = %if.else697
  %cmp701 = icmp ult i32 %len.7, %buffersize
  br i1 %cmp701, label %cont705, label %if.end707

cont705:                                          ; preds = %do.body700
  %arrayidx706 = getelementptr inbounds i8* %buffer, i32 %len.7
  store i8 92, i8* %arrayidx706, align 1, !tbaa !1
  br label %if.end707

if.end707:                                        ; preds = %cont705, %do.body700
  %151 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.7, i32 1)
  %152 = extractvalue { i32, i1 } %151, 0
  %153 = extractvalue { i32, i1 } %151, 1
  br i1 %153, label %ioc_bb708, label %cont715

ioc_bb708:                                        ; preds = %if.end707
  %154 = zext i32 %len.7 to i64
  call void @__ioc_report_add_overflow(i32 890, i32 20, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %154, i64 1, i8 5) nounwind
  br label %cont715

cont715:                                          ; preds = %cont695, %if.else697, %if.end707, %ioc_bb708
  %len.8 = phi i32 [ %len.7, %if.else697 ], [ %141, %cont695 ], [ %152, %if.end707 ], [ %152, %ioc_bb708 ]
  %c.1 = phi i8 [ %c.0, %if.else697 ], [ %conv696, %cont695 ], [ %c.0, %if.end707 ], [ %c.0, %ioc_bb708 ]
  %is_right_quote.2 = phi i8 [ %is_right_quote.1, %if.else697 ], [ %is_right_quote.1, %cont695 ], [ 0, %if.end707 ], [ 0, %ioc_bb708 ]
  %155 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1, i32 1)
  %156 = extractvalue { i32, i1 } %155, 0
  %157 = extractvalue { i32, i1 } %155, 1
  %158 = zext i32 %i.1 to i64
  br i1 %157, label %ioc_bb716, label %cont717

ioc_bb716:                                        ; preds = %cont715
  call void @__ioc_report_add_overflow(i32 894, i32 27, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %158, i64 1, i8 5) nounwind
  br label %cont717

cont717:                                          ; preds = %cont715, %ioc_bb716
  %cmp718 = icmp ugt i32 %115, %156
  br i1 %cmp718, label %do.body722, label %do.body792

do.body722:                                       ; preds = %cont717
  %cmp723 = icmp ult i32 %len.8, %buffersize
  br i1 %cmp723, label %if.then725, label %if.end729

if.then725:                                       ; preds = %do.body722
  %159 = icmp sgt i8 %c.1, -1
  br i1 %159, label %cont727, label %ioc_bb726

ioc_bb726:                                        ; preds = %if.then725
  %160 = zext i8 %c.1 to i64
  call void @__ioc_report_conversion(i32 898, i32 31, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %160, i8 0) nounwind
  br label %cont727

cont727:                                          ; preds = %ioc_bb726, %if.then725
  %arrayidx728 = getelementptr inbounds i8* %buffer, i32 %len.8
  store i8 %c.1, i8* %arrayidx728, align 1, !tbaa !1
  br label %if.end729

if.end729:                                        ; preds = %cont727, %do.body722
  %161 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.8, i32 1)
  %162 = extractvalue { i32, i1 } %161, 0
  %163 = extractvalue { i32, i1 } %161, 1
  br i1 %163, label %ioc_bb730, label %cont731

ioc_bb730:                                        ; preds = %if.end729
  %164 = zext i32 %len.8 to i64
  call void @__ioc_report_add_overflow(i32 899, i32 18, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %164, i64 1, i8 5) nounwind
  br label %cont731

cont731:                                          ; preds = %if.end729, %ioc_bb730
  br i1 %157, label %ioc_bb734, label %cont735

ioc_bb734:                                        ; preds = %cont731
  call void @__ioc_report_add_overflow(i32 901, i32 21, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %158, i64 1, i8 5) nounwind
  br label %cont735

cont735:                                          ; preds = %cont731, %ioc_bb734
  %arrayidx736 = getelementptr inbounds i8* %arg, i32 %156
  %165 = load i8* %arrayidx736, align 1, !tbaa !1
  %166 = icmp sgt i8 %165, -1
  br i1 %166, label %for.cond626, label %ioc_bb738

ioc_bb738:                                        ; preds = %cont735
  %167 = sext i8 %165 to i64
  call void @__ioc_report_conversion(i32 901, i32 17, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i64 %167, i8 1) nounwind
  br label %for.cond626

sw.epilog742:                                     ; preds = %cont365, %cont343, %cont335, %ioc_bb412, %if.end411, %ioc_bb268, %if.end267, %ioc_bb161, %if.end160, %cont136, %cont127, %cont120, %sw.bb173, %sw.bb177, %land.lhs.true368, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont98, %cont375, %cond.true328, %cont200, %cont191, %cont184, %sw.bb172, %cont98
  %i.2 = phi i32 [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont98 ], [ %i.0, %cont375 ], [ 0, %land.lhs.true368 ], [ %i.0, %cont365 ], [ %i.0, %cont343 ], [ %i.0, %cond.true328 ], [ %i.0, %cont335 ], [ %i.0, %sw.bb172 ], [ %i.0, %cont200 ], [ %i.0, %cont191 ], [ %i.0, %cont184 ], [ %i.0, %sw.bb177 ], [ %i.0, %sw.bb173 ], [ %i.0, %cont120 ], [ %i.0, %cont127 ], [ %i.0, %cont136 ], [ %i.0, %if.end160 ], [ %i.0, %ioc_bb161 ], [ %38, %if.end267 ], [ %38, %ioc_bb268 ], [ %i.0, %if.end411 ], [ %i.0, %ioc_bb412 ]
  %len.9 = phi i32 [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont98 ], [ %len.5, %cont375 ], [ %len.5, %land.lhs.true368 ], [ %len.5, %cont365 ], [ %len.5, %cont343 ], [ %len.5, %cond.true328 ], [ %len.5, %cont335 ], [ %len.5, %sw.bb172 ], [ %len.5, %cont200 ], [ %len.5, %cont191 ], [ %len.5, %cont184 ], [ %len.5, %sw.bb177 ], [ %len.5, %sw.bb173 ], [ %20, %cont120 ], [ %20, %cont127 ], [ %20, %cont136 ], [ %34, %if.end160 ], [ %34, %ioc_bb161 ], [ %62, %if.end267 ], [ %62, %ioc_bb268 ], [ %75, %if.end411 ], [ %75, %ioc_bb412 ]
  %c.2 = phi i8 [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont98 ], [ %16, %cont375 ], [ %16, %land.lhs.true368 ], [ %16, %cont365 ], [ %16, %cont343 ], [ %16, %cond.true328 ], [ %16, %cont335 ], [ %16, %sw.bb172 ], [ %16, %cont200 ], [ %16, %cont191 ], [ %16, %cont184 ], [ %16, %sw.bb177 ], [ %16, %sw.bb173 ], [ 48, %cont120 ], [ 48, %cont127 ], [ 48, %cont136 ], [ 48, %if.end160 ], [ 48, %ioc_bb161 ], [ %46, %if.end267 ], [ %46, %ioc_bb268 ], [ %16, %if.end411 ], [ %16, %ioc_bb412 ]
  %argsize.addr.3 = phi i32 [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont98 ], [ %argsize.addr.0, %cont375 ], [ -1, %land.lhs.true368 ], [ %argsize.addr.0, %cont365 ], [ %argsize.addr.0, %cont343 ], [ -1, %cond.true328 ], [ %argsize.addr.0, %cont335 ], [ %argsize.addr.0, %sw.bb172 ], [ %argsize.addr.0, %cont200 ], [ %argsize.addr.0, %cont191 ], [ %argsize.addr.0, %cont184 ], [ %argsize.addr.0, %sw.bb177 ], [ %argsize.addr.0, %sw.bb173 ], [ %argsize.addr.0, %cont120 ], [ %argsize.addr.0, %cont127 ], [ %argsize.addr.0, %cont136 ], [ %argsize.addr.0, %if.end160 ], [ %argsize.addr.0, %ioc_bb161 ], [ %argsize.addr.0, %if.end267 ], [ %argsize.addr.0, %ioc_bb268 ], [ %argsize.addr.0, %if.end411 ], [ %argsize.addr.0, %ioc_bb412 ]
  br i1 %backslash_escapes.0, label %land.lhs.true748, label %lor.lhs.false745

lor.lhs.false745:                                 ; preds = %c_escape, %lor.lhs.false, %if.else, %sw.epilog742
  %argsize.addr.31119 = phi i32 [ %argsize.addr.3, %sw.epilog742 ], [ %argsize.addr.0, %if.else ], [ %argsize.addr.21107, %lor.lhs.false ], [ %argsize.addr.0, %c_escape ]
  %c.21116 = phi i8 [ %c.2, %sw.epilog742 ], [ %16, %if.else ], [ %16, %lor.lhs.false ], [ %16, %c_escape ]
  %len.91113 = phi i32 [ %len.9, %sw.epilog742 ], [ %len.5, %if.else ], [ %len.5, %lor.lhs.false ], [ %len.5, %c_escape ]
  %i.21110 = phi i32 [ %i.2, %sw.epilog742 ], [ %i.0, %if.else ], [ %i.0, %lor.lhs.false ], [ %i.0, %c_escape ]
  br i1 %or.cond1092, label %land.lhs.true773, label %land.lhs.true750

land.lhs.true748:                                 ; preds = %land.lhs.true621, %sw.epilog742
  %argsize.addr.31125 = phi i32 [ %argsize.addr.3, %sw.epilog742 ], [ %argsize.addr.21107, %land.lhs.true621 ]
  %c.21124 = phi i8 [ %c.2, %sw.epilog742 ], [ %16, %land.lhs.true621 ]
  %len.91123 = phi i32 [ %len.9, %sw.epilog742 ], [ %len.5, %land.lhs.true621 ]
  %i.21122 = phi i32 [ %i.2, %sw.epilog742 ], [ %i.0, %land.lhs.true621 ]
  br i1 %tobool749.old, label %land.lhs.true773, label %land.lhs.true750

land.lhs.true750:                                 ; preds = %lor.lhs.false745, %land.lhs.true748
  %argsize.addr.31118 = phi i32 [ %argsize.addr.31119, %lor.lhs.false745 ], [ %argsize.addr.31125, %land.lhs.true748 ]
  %c.21115 = phi i8 [ %c.21116, %lor.lhs.false745 ], [ %c.21124, %land.lhs.true748 ]
  %len.91112 = phi i32 [ %len.91113, %lor.lhs.false745 ], [ %len.91123, %land.lhs.true748 ]
  %i.21109 = phi i32 [ %i.21110, %lor.lhs.false745 ], [ %i.21122, %land.lhs.true748 ]
  %conv751 = zext i8 %c.21115 to i32
  %div = lshr i32 %conv751, 5
  %arrayidx757 = getelementptr inbounds i32* %quote_these_too, i32 %div
  %168 = load i32* %arrayidx757, align 4, !tbaa !0
  %rem = and i32 %conv751, 31
  %169 = xor i32 %rem, 31
  %shl.check = lshr i32 1, %169
  %170 = icmp eq i32 %shl.check, 0
  br i1 %170, label %cont767, label %ioc_bb766

ioc_bb766:                                        ; preds = %land.lhs.true750
  %171 = zext i32 %rem to i64
  call void @__ioc_report_shl_strict(i32 907, i32 120, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %171, i8 13) nounwind
  br label %cont767

cont767:                                          ; preds = %ioc_bb766, %land.lhs.true750
  %shl = shl i32 1, %rem
  %172 = icmp sgt i32 %shl, -1
  br i1 %172, label %cont770, label %ioc_bb769

ioc_bb769:                                        ; preds = %cont767
  %173 = sext i32 %shl to i64
  call void @__ioc_report_conversion(i32 907, i32 117, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %173, i8 1) nounwind
  br label %cont770

cont770:                                          ; preds = %ioc_bb769, %cont767
  %and771 = and i32 %168, %shl
  %tobool772 = icmp eq i32 %and771, 0
  %tobool774 = icmp eq i8 %is_right_quote.0, 0
  %or.cond1093 = and i1 %tobool772, %tobool774
  br i1 %or.cond1093, label %do.body792, label %store_escape

land.lhs.true773:                                 ; preds = %land.lhs.true748, %lor.lhs.false745
  %argsize.addr.31120 = phi i32 [ %argsize.addr.31125, %land.lhs.true748 ], [ %argsize.addr.31119, %lor.lhs.false745 ]
  %c.21117 = phi i8 [ %c.21124, %land.lhs.true748 ], [ %c.21116, %lor.lhs.false745 ]
  %len.91114 = phi i32 [ %len.91123, %land.lhs.true748 ], [ %len.91113, %lor.lhs.false745 ]
  %i.21111 = phi i32 [ %i.21122, %land.lhs.true748 ], [ %i.21110, %lor.lhs.false745 ]
  %tobool774.old = icmp eq i8 %is_right_quote.0, 0
  br i1 %tobool774.old, label %do.body792, label %store_escape

store_escape:                                     ; preds = %c_escape, %cont770, %land.lhs.true773
  %i.3 = phi i32 [ %i.21109, %cont770 ], [ %i.21111, %land.lhs.true773 ], [ %i.0, %c_escape ]
  %len.10 = phi i32 [ %len.91112, %cont770 ], [ %len.91114, %land.lhs.true773 ], [ %len.5, %c_escape ]
  %c.3 = phi i8 [ %c.21115, %cont770 ], [ %c.21117, %land.lhs.true773 ], [ %esc.1, %c_escape ]
  %argsize.addr.4 = phi i32 [ %argsize.addr.31118, %cont770 ], [ %argsize.addr.31120, %land.lhs.true773 ], [ %argsize.addr.0, %c_escape ]
  br i1 %tobool632, label %do.body780, label %force_outer_quoting_style

do.body780:                                       ; preds = %store_escape
  %cmp781 = icmp ult i32 %len.10, %buffersize
  br i1 %cmp781, label %cont785, label %if.end787

cont785:                                          ; preds = %do.body780
  %arrayidx786 = getelementptr inbounds i8* %buffer, i32 %len.10
  store i8 92, i8* %arrayidx786, align 1, !tbaa !1
  br label %if.end787

if.end787:                                        ; preds = %cont785, %do.body780
  %174 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.10, i32 1)
  %175 = extractvalue { i32, i1 } %174, 0
  %176 = extractvalue { i32, i1 } %174, 1
  br i1 %176, label %ioc_bb788, label %do.body792

ioc_bb788:                                        ; preds = %if.end787
  %177 = zext i32 %len.10 to i64
  call void @__ioc_report_add_overflow(i32 915, i32 10, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %177, i64 1, i8 5) nounwind
  br label %do.body792

do.body792:                                       ; preds = %sw.bb297, %cont717, %ioc_bb788, %if.end787, %cont770, %land.lhs.true773
  %i.4 = phi i32 [ %i.21111, %land.lhs.true773 ], [ %i.21109, %cont770 ], [ %i.3, %if.end787 ], [ %i.3, %ioc_bb788 ], [ %i.1, %cont717 ], [ %i.0, %sw.bb297 ]
  %len.11 = phi i32 [ %len.91114, %land.lhs.true773 ], [ %len.91112, %cont770 ], [ %175, %if.end787 ], [ %175, %ioc_bb788 ], [ %len.8, %cont717 ], [ %len.5, %sw.bb297 ]
  %c.4 = phi i8 [ %c.21117, %land.lhs.true773 ], [ %c.21115, %cont770 ], [ %c.3, %if.end787 ], [ %c.3, %ioc_bb788 ], [ %c.1, %cont717 ], [ %16, %sw.bb297 ]
  %argsize.addr.5 = phi i32 [ %argsize.addr.31120, %land.lhs.true773 ], [ %argsize.addr.31118, %cont770 ], [ %argsize.addr.4, %if.end787 ], [ %argsize.addr.4, %ioc_bb788 ], [ %argsize.addr.21108, %cont717 ], [ %argsize.addr.0, %sw.bb297 ]
  %cmp793 = icmp ult i32 %len.11, %buffersize
  br i1 %cmp793, label %if.then795, label %if.end800

if.then795:                                       ; preds = %do.body792
  %178 = icmp sgt i8 %c.4, -1
  br i1 %178, label %cont798, label %ioc_bb797

ioc_bb797:                                        ; preds = %if.then795
  %179 = zext i8 %c.4 to i64
  call void @__ioc_report_conversion(i32 920, i32 23, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @11, i32 0, i32 0), i64 %179, i8 0) nounwind
  br label %cont798

cont798:                                          ; preds = %ioc_bb797, %if.then795
  %arrayidx799 = getelementptr inbounds i8* %buffer, i32 %len.11
  store i8 %c.4, i8* %arrayidx799, align 1, !tbaa !1
  br label %if.end800

if.end800:                                        ; preds = %cont798, %do.body792
  %180 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.11, i32 1)
  %181 = extractvalue { i32, i1 } %180, 0
  %182 = extractvalue { i32, i1 } %180, 1
  br i1 %182, label %ioc_bb801, label %for.inc805

ioc_bb801:                                        ; preds = %if.end800
  %183 = zext i32 %len.11 to i64
  call void @__ioc_report_add_overflow(i32 921, i32 10, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %183, i64 1, i8 5) nounwind
  br label %for.inc805

for.inc805:                                       ; preds = %ioc_bb801, %if.end800, %if.else
  %i.5 = phi i32 [ %i.0, %if.else ], [ %i.4, %if.end800 ], [ %i.4, %ioc_bb801 ]
  %len.12 = phi i32 [ %len.5, %if.else ], [ %181, %if.end800 ], [ %181, %ioc_bb801 ]
  %argsize.addr.6 = phi i32 [ %argsize.addr.0, %if.else ], [ %argsize.addr.5, %if.end800 ], [ %argsize.addr.5, %ioc_bb801 ]
  %184 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.5, i32 1)
  %185 = extractvalue { i32, i1 } %184, 0
  %186 = extractvalue { i32, i1 } %184, 1
  br i1 %186, label %ioc_bb806, label %ioc_bb68

ioc_bb806:                                        ; preds = %for.inc805
  %187 = zext i32 %i.5 to i64
  call void @__ioc_report_add_overflow(i32 296, i32 79, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %187, i64 1, i8 5) nounwind
  br label %ioc_bb68

cont810:                                          ; preds = %cond.true, %cond.end
  %argsize.addr.0.lcssa = phi i32 [ -1, %cond.true ], [ %i.0, %cond.end ]
  %notlhs1155 = icmp ne i32 %len.5, 0
  %or.cond1094.not = or i1 %cmp309, %notlhs1155
  %or.cond1130 = or i1 %or.cond1094.not, %tobool632
  br i1 %or.cond1130, label %if.end822, label %force_outer_quoting_style

if.end822:                                        ; preds = %cont810
  %tobool823 = icmp ne i8* %quote_string.1, null
  %or.cond1131 = and i1 %tobool823, %tobool632
  br i1 %or.cond1131, label %for.cond827.preheader, label %if.end843

for.cond827.preheader:                            ; preds = %if.end822
  %188 = load i8* %quote_string.1, align 1, !tbaa !1
  %tobool8281132 = icmp eq i8 %188, 0
  br i1 %tobool8281132, label %if.end843, label %do.body830

do.body830:                                       ; preds = %for.cond827.preheader, %cont837
  %189 = phi i8 [ %194, %cont837 ], [ %188, %for.cond827.preheader ]
  %quote_string.21134 = phi i8* [ %incdec.ptr841, %cont837 ], [ %quote_string.1, %for.cond827.preheader ]
  %len.131133 = phi i32 [ %191, %cont837 ], [ %len.5, %for.cond827.preheader ]
  %cmp831 = icmp ult i32 %len.131133, %buffersize
  br i1 %cmp831, label %if.then833, label %if.end835

if.then833:                                       ; preds = %do.body830
  %arrayidx834 = getelementptr inbounds i8* %buffer, i32 %len.131133
  store i8 %189, i8* %arrayidx834, align 1, !tbaa !1
  br label %if.end835

if.end835:                                        ; preds = %if.then833, %do.body830
  %190 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.131133, i32 1)
  %191 = extractvalue { i32, i1 } %190, 0
  %192 = extractvalue { i32, i1 } %190, 1
  br i1 %192, label %ioc_bb836, label %cont837

ioc_bb836:                                        ; preds = %if.end835
  %193 = zext i32 %len.131133 to i64
  call void @__ioc_report_add_overflow(i32 931, i32 12, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %193, i64 1, i8 5) nounwind
  br label %cont837

cont837:                                          ; preds = %if.end835, %ioc_bb836
  %incdec.ptr841 = getelementptr inbounds i8* %quote_string.21134, i32 1
  %194 = load i8* %incdec.ptr841, align 1, !tbaa !1
  %tobool828 = icmp eq i8 %194, 0
  br i1 %tobool828, label %if.end843, label %do.body830

if.end843:                                        ; preds = %for.cond827.preheader, %cont837, %if.end822
  %len.14 = phi i32 [ %len.5, %if.end822 ], [ %len.5, %for.cond827.preheader ], [ %191, %cont837 ]
  %cmp844 = icmp ult i32 %len.14, %buffersize
  br i1 %cmp844, label %cont848, label %return

cont848:                                          ; preds = %if.end843
  %arrayidx849 = getelementptr inbounds i8* %buffer, i32 %len.14
  store i8 0, i8* %arrayidx849, align 1, !tbaa !1
  br label %return

force_outer_quoting_style:                        ; preds = %land.lhs.true86, %cont365, %cont343, %cont335, %cont308, %if.then102, %sw.bb173, %sw.bb211, %land.lhs.true368, %if.then378, %store_escape, %if.then631, %cont583, %cont583, %cont583, %cont583, %cont583, %cont810
  %argsize.addr.7 = phi i32 [ %argsize.addr.0.lcssa, %cont810 ], [ %argsize.addr.1.ph, %cont583 ], [ %argsize.addr.1.ph, %cont583 ], [ %argsize.addr.1.ph, %cont583 ], [ %argsize.addr.1.ph, %cont583 ], [ %argsize.addr.1.ph, %cont583 ], [ %argsize.addr.21108, %if.then631 ], [ %argsize.addr.0, %cont365 ], [ %argsize.addr.0, %cont343 ], [ %argsize.addr.0, %cont335 ], [ %argsize.addr.0, %cont308 ], [ %argsize.addr.0, %if.then102 ], [ %argsize.addr.0, %sw.bb173 ], [ %argsize.addr.0, %sw.bb211 ], [ -1, %land.lhs.true368 ], [ %argsize.addr.0, %if.then378 ], [ %argsize.addr.4, %store_escape ], [ %argsize.addr.0, %land.lhs.true86 ]
  %and851 = and i32 %flags, -3
  %call852 = call fastcc i32 @quotearg_buffer_restyled(i8* %buffer, i32 %buffersize, i8* %arg, i32 %argsize.addr.7, i32 %quoting_style.addr.2, i32 %and851, i32* null, i8* %left_quote.addr.1, i8* %right_quote.addr.1)
  br label %return

return:                                           ; preds = %if.end843, %cont848, %force_outer_quoting_style
  %retval.0 = phi i32 [ %call852, %force_outer_quoting_style ], [ %len.14, %cont848 ], [ %len.14, %if.end843 ]
  ret i32 %retval.0
}

define i8* @quotearg_alloc(i8* %arg, i32 %argsize, %struct.quoting_options* %o) nounwind {
entry:
  %call = tail call i8* @quotearg_alloc_mem(i8* %arg, i32 %argsize, i32* null, %struct.quoting_options* %o)
  ret i8* %call
}

define i8* @quotearg_alloc_mem(i8* %arg, i32 %argsize, i32* %size, %struct.quoting_options* %o) nounwind {
entry:
  %tobool = icmp ne %struct.quoting_options* %o, null
  %cond = select i1 %tobool, %struct.quoting_options* %o, %struct.quoting_options* @default_quoting_options
  %call = tail call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call, align 4, !tbaa !0
  %flags1 = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1
  %1 = load i32* %flags1, align 4, !tbaa !0
  %tobool2 = icmp ne i32* %size, null
  %2 = zext i1 %tobool2 to i32
  %cond3 = xor i32 %2, 1
  %or = or i32 %1, %cond3
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0
  %3 = load i32* %style, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 2, i32 0
  %left_quote = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 3
  %4 = load i8** %left_quote, align 4, !tbaa !4
  %right_quote = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 4
  %5 = load i8** %right_quote, align 4, !tbaa !4
  %call4 = tail call fastcc i32 @quotearg_buffer_restyled(i8* null, i32 0, i8* %arg, i32 %argsize, i32 %3, i32 %or, i32* %arraydecay, i8* %4, i8* %5)
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call4, i32 1)
  %7 = extractvalue { i32, i1 } %6, 0
  %8 = extractvalue { i32, i1 } %6, 1
  br i1 %8, label %ioc_bb7, label %cont8

ioc_bb7:                                          ; preds = %entry
  %9 = zext i32 %call4 to i64
  tail call void @__ioc_report_add_overflow(i32 978, i32 133, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind
  br label %cont8

cont8:                                            ; preds = %entry, %ioc_bb7
  %call.i = tail call noalias i8* @xmalloc(i32 %7) nounwind
  %10 = load i32* %style, align 4, !tbaa !3
  %11 = load i8** %left_quote, align 4, !tbaa !4
  %12 = load i8** %right_quote, align 4, !tbaa !4
  %call15 = tail call fastcc i32 @quotearg_buffer_restyled(i8* %call.i, i32 %7, i8* %arg, i32 %argsize, i32 %10, i32 %or, i32* %arraydecay, i8* %11, i8* %12)
  store i32 %0, i32* %call, align 4, !tbaa !0
  br i1 %tobool2, label %cont19, label %if.end

cont19:                                           ; preds = %cont8
  %13 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 1)
  %14 = extractvalue { i32, i1 } %13, 0
  %15 = extractvalue { i32, i1 } %13, 1
  br i1 %15, label %ioc_bb20, label %cont21

ioc_bb20:                                         ; preds = %cont19
  %16 = zext i32 %7 to i64
  tail call void @__ioc_report_sub_overflow(i32 983, i32 22, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind
  br label %cont21

cont21:                                           ; preds = %cont19, %ioc_bb20
  store i32 %14, i32* %size, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cont21, %cont8
  ret i8* %call.i
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define void @quotearg_free() nounwind {
entry:
  %0 = load %struct.slotvec** @slotvec, align 4, !tbaa !4
  %1 = load i32* @nslots, align 4, !tbaa !0
  %cmp19 = icmp ugt i32 %1, 1
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond.backedge
  %i.020 = phi i32 [ %4, %for.cond.backedge ], [ 1, %entry ]
  %val = getelementptr inbounds %struct.slotvec* %0, i32 %i.020, i32 1
  %2 = load i8** %val, align 4, !tbaa !4
  tail call void @free(i8* %2) nounwind
  %3 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.020, i32 1)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %ioc_bb1, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %ioc_bb1
  %6 = load i32* @nslots, align 4, !tbaa !0
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

ioc_bb1:                                          ; preds = %for.body
  %7 = zext i32 %i.020 to i64
  tail call void @__ioc_report_add_overflow(i32 1005, i32 28, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %entry
  %val4 = getelementptr inbounds %struct.slotvec* %0, i32 0, i32 1
  %8 = load i8** %val4, align 4, !tbaa !4
  %cmp5 = icmp eq i8* %8, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0)
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @free(i8* %8) nounwind
  store i32 256, i32* getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !tbaa !0
  store i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 1), align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %cmp8 = icmp eq %struct.slotvec* %0, @slotvec0
  br i1 %cmp8, label %cont12, label %if.then9

if.then9:                                         ; preds = %if.end
  %9 = bitcast %struct.slotvec* %0 to i8*
  tail call void @free(i8* %9) nounwind
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 4, !tbaa !4
  br label %cont12

cont12:                                           ; preds = %if.then9, %if.end
  store i32 1, i32* @nslots, align 4, !tbaa !0
  ret void
}

declare void @free(i8* nocapture) nounwind

define i8* @quotearg_n(i32 %n, i8* %arg) nounwind {
entry:
  tail call void @__ioc_report_conversion(i32 1070, i32 45, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call = tail call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 -1, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

define internal fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 %argsize, %struct.quoting_options* %options) nounwind {
entry:
  %call = tail call i32* @__errno_location() nounwind readnone
  %0 = load i32* %call, align 4, !tbaa !0
  %smincheck = icmp slt i32 %n, 0
  br i1 %smincheck, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = sext i32 %n to i64
  tail call void @__ioc_report_conversion(i32 1030, i32 21, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 %1, i8 1) nounwind
  tail call void @abort() noreturn nounwind
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.slotvec** @slotvec, align 4, !tbaa !4
  %3 = load i32* @nslots, align 4, !tbaa !0
  %cmp1 = icmp ugt i32 %3, %n
  br i1 %cmp1, label %if.end27, label %cont4

cont4:                                            ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n, i32 1)
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  br i1 %6, label %ioc_bb5, label %cont6

ioc_bb5:                                          ; preds = %cont4
  %7 = zext i32 %n to i64
  tail call void @__ioc_report_add_overflow(i32 1040, i32 20, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %7, i64 1, i8 5) nounwind
  br label %cont6

cont6:                                            ; preds = %cont4, %ioc_bb5
  %cmp7 = icmp eq %struct.slotvec* %2, @slotvec0
  tail call void @__ioc_report_conversion(i32 1042, i32 19, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %cmp14 = icmp ugt i32 %5, 536870911
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cont6
  tail call void @xalloc_die() noreturn nounwind
  unreachable

if.end16:                                         ; preds = %cont6
  %8 = bitcast %struct.slotvec* %2 to i8*
  %9 = select i1 %cmp7, i8* null, i8* %8
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8)
  %11 = extractvalue { i32, i1 } %10, 0
  %12 = extractvalue { i32, i1 } %10, 1
  %13 = zext i32 %5 to i64
  br i1 %12, label %ioc_bb17, label %cont18

ioc_bb17:                                         ; preds = %if.end16
  tail call void @__ioc_report_mul_overflow(i32 1044, i32 67, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %13, i64 8, i8 5) nounwind
  br label %cont18

cont18:                                           ; preds = %if.end16, %ioc_bb17
  %call19 = tail call i8* @xrealloc(i8* %9, i32 %11) nounwind
  %14 = bitcast i8* %call19 to %struct.slotvec*
  store %struct.slotvec* %14, %struct.slotvec** @slotvec, align 4, !tbaa !4
  br i1 %cmp7, label %if.then21, label %if.end22

if.then21:                                        ; preds = %cont18
  %15 = bitcast i8* %call19 to i64*
  %16 = load i64* bitcast (%struct.slotvec* @slotvec0 to i64*), align 8
  store i64 %16, i64* %15, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cont18
  %17 = load i32* @nslots, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds %struct.slotvec* %14, i32 %17
  %18 = bitcast %struct.slotvec* %add.ptr to i8*
  %19 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %5, i32 %17)
  %20 = extractvalue { i32, i1 } %19, 0
  %21 = extractvalue { i32, i1 } %19, 1
  br i1 %21, label %ioc_bb23, label %cont24

ioc_bb23:                                         ; preds = %if.end22
  %22 = zext i32 %17 to i64
  tail call void @__ioc_report_sub_overflow(i32 1047, i32 32, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %13, i64 %22, i8 5) nounwind
  br label %cont24

cont24:                                           ; preds = %if.end22, %ioc_bb23
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 8)
  %24 = extractvalue { i32, i1 } %23, 0
  %25 = extractvalue { i32, i1 } %23, 1
  br i1 %25, label %ioc_bb25, label %cont26

ioc_bb25:                                         ; preds = %cont24
  %26 = zext i32 %20 to i64
  tail call void @__ioc_report_mul_overflow(i32 1047, i32 42, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %26, i64 8, i8 5) nounwind
  br label %cont26

cont26:                                           ; preds = %cont24, %ioc_bb25
  tail call void @llvm.memset.p0i8.i32(i8* %18, i8 0, i32 %24, i32 4, i1 false)
  store i32 %5, i32* @nslots, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end, %cont26
  %sv.0 = phi %struct.slotvec* [ %14, %cont26 ], [ %2, %if.end ]
  %size28 = getelementptr inbounds %struct.slotvec* %sv.0, i32 %n, i32 0
  %27 = load i32* %size28, align 4, !tbaa !0
  %val30 = getelementptr inbounds %struct.slotvec* %sv.0, i32 %n, i32 1
  %28 = load i8** %val30, align 4, !tbaa !4
  %flags31 = getelementptr inbounds %struct.quoting_options* %options, i32 0, i32 1
  %29 = load i32* %flags31, align 4, !tbaa !0
  %or = or i32 %29, 1
  %style = getelementptr inbounds %struct.quoting_options* %options, i32 0, i32 0
  %30 = load i32* %style, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.quoting_options* %options, i32 0, i32 2, i32 0
  %left_quote = getelementptr inbounds %struct.quoting_options* %options, i32 0, i32 3
  %31 = load i8** %left_quote, align 4, !tbaa !4
  %right_quote = getelementptr inbounds %struct.quoting_options* %options, i32 0, i32 4
  %32 = load i8** %right_quote, align 4, !tbaa !4
  %call32 = tail call fastcc i32 @quotearg_buffer_restyled(i8* %28, i32 %27, i8* %arg, i32 %argsize, i32 %30, i32 %or, i32* %arraydecay, i8* %31, i8* %32)
  %cmp33 = icmp ugt i32 %27, %call32
  br i1 %cmp33, label %if.end53, label %cont36

cont36:                                           ; preds = %if.end27
  %33 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call32, i32 1)
  %34 = extractvalue { i32, i1 } %33, 0
  %35 = extractvalue { i32, i1 } %33, 1
  br i1 %35, label %ioc_bb37, label %cont38

ioc_bb37:                                         ; preds = %cont36
  %36 = zext i32 %call32 to i64
  tail call void @__ioc_report_add_overflow(i32 1057, i32 33, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 %36, i64 1, i8 5) nounwind
  br label %cont38

cont38:                                           ; preds = %cont36, %ioc_bb37
  store i32 %34, i32* %size28, align 4, !tbaa !0
  %cmp41 = icmp eq i8* %28, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0)
  br i1 %cmp41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %cont38
  tail call void @free(i8* %28) nounwind
  br label %if.end43

if.end43:                                         ; preds = %cont38, %if.then42
  %call.i = tail call noalias i8* @xmalloc(i32 %34) nounwind
  store i8* %call.i, i8** %val30, align 4, !tbaa !4
  %37 = load i32* %style, align 4, !tbaa !3
  %38 = load i8** %left_quote, align 4, !tbaa !4
  %39 = load i8** %right_quote, align 4, !tbaa !4
  %call52 = tail call fastcc i32 @quotearg_buffer_restyled(i8* %call.i, i32 %34, i8* %arg, i32 %argsize, i32 %37, i32 %or, i32* %arraydecay, i8* %38, i8* %39)
  br label %if.end53

if.end53:                                         ; preds = %if.end27, %if.end43
  %val.0 = phi i8* [ %call.i, %if.end43 ], [ %28, %if.end27 ]
  store i32 %0, i32* %call, align 4, !tbaa !0
  ret i8* %val.0
}

define i8* @quotearg_n_mem(i32 %n, i8* %arg, i32 %argsize) nounwind {
entry:
  %call = tail call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 %argsize, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

define i8* @quotearg(i8* %arg) nounwind {
entry:
  tail call void @__ioc_report_conversion(i32 1070, i32 45, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call.i = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 -1, %struct.quoting_options* @default_quoting_options) nounwind
  ret i8* %call.i
}

define i8* @quotearg_mem(i8* %arg, i32 %argsize) nounwind {
entry:
  %call.i = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 %argsize, %struct.quoting_options* @default_quoting_options) nounwind
  ret i8* %call.i
}

define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) nounwind {
entry:
  %o.sroa.1.i = alloca { i32, [8 x i32], i8*, i8* }, align 8
  %o = alloca %struct.quoting_options, align 4
  %o.sroa.1.i.0.cast3 = bitcast { i32, [8 x i32], i8*, i8* }* %o.sroa.1.i to i8*
  call void @llvm.lifetime.start(i64 44, i8* %o.sroa.1.i.0.cast3)
  call void @llvm.memset.p0i8.i32(i8* %o.sroa.1.i.0.cast3, i8 0, i32 44, i32 8, i1 false)
  %cmp.i = icmp eq i32 %s, 8
  br i1 %cmp.i, label %if.then.i, label %quoting_options_from_style.exit

if.then.i:                                        ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quoting_options_from_style.exit:                  ; preds = %entry
  %o.sroa.0.0..idx.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0
  store i32 %s, i32* %o.sroa.0.0..idx.i, align 4
  %o.sroa.1.4..idx.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1
  %o.sroa.1.4..cast.i = bitcast i32* %o.sroa.1.4..idx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %o.sroa.1.4..cast.i, i8* %o.sroa.1.i.0.cast3, i32 44, i32 4, i1 false) nounwind
  call void @llvm.lifetime.end(i64 44, i8* %o.sroa.1.i.0.cast3)
  call void @__ioc_report_conversion(i32 1091, i32 45, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call = call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 -1, %struct.quoting_options* %o)
  ret i8* %call
}

define i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i32 %argsize) nounwind {
entry:
  %o.sroa.1.i = alloca { i32, [8 x i32], i8*, i8* }, align 8
  %o = alloca %struct.quoting_options, align 4
  %o.sroa.1.i.0.cast1 = bitcast { i32, [8 x i32], i8*, i8* }* %o.sroa.1.i to i8*
  call void @llvm.lifetime.start(i64 44, i8* %o.sroa.1.i.0.cast1)
  call void @llvm.memset.p0i8.i32(i8* %o.sroa.1.i.0.cast1, i8 0, i32 44, i32 8, i1 false)
  %cmp.i = icmp eq i32 %s, 8
  br i1 %cmp.i, label %if.then.i, label %quoting_options_from_style.exit

if.then.i:                                        ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quoting_options_from_style.exit:                  ; preds = %entry
  %o.sroa.0.0..idx.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0
  store i32 %s, i32* %o.sroa.0.0..idx.i, align 4
  %o.sroa.1.4..idx.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1
  %o.sroa.1.4..cast.i = bitcast i32* %o.sroa.1.4..idx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %o.sroa.1.4..cast.i, i8* %o.sroa.1.i.0.cast1, i32 44, i32 4, i1 false) nounwind
  call void @llvm.lifetime.end(i64 44, i8* %o.sroa.1.i.0.cast1)
  %call = call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 %argsize, %struct.quoting_options* %o)
  ret i8* %call
}

define i8* @quotearg_style(i32 %s, i8* %arg) nounwind {
entry:
  %o.sroa.1.i.i = alloca { i32, [8 x i32], i8*, i8* }, align 8
  %o.i = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %o.sroa.1.i.0.cast3.i = bitcast { i32, [8 x i32], i8*, i8* }* %o.sroa.1.i.i to i8*
  call void @llvm.lifetime.start(i64 44, i8* %o.sroa.1.i.0.cast3.i)
  call void @llvm.memset.p0i8.i32(i8* %o.sroa.1.i.0.cast3.i, i8 0, i32 44, i32 8, i1 false)
  %cmp.i.i = icmp eq i32 %s, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %quotearg_n_style.exit

if.then.i.i:                                      ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quotearg_n_style.exit:                            ; preds = %entry
  %o.sroa.0.0..idx.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 0
  store i32 %s, i32* %o.sroa.0.0..idx.i.i, align 4
  %o.sroa.1.4..idx.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 1
  %o.sroa.1.4..cast.i.i = bitcast i32* %o.sroa.1.4..idx.i.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %o.sroa.1.4..cast.i.i, i8* %o.sroa.1.i.0.cast3.i, i32 44, i32 4, i1 false) nounwind
  call void @llvm.lifetime.end(i64 44, i8* %o.sroa.1.i.0.cast3.i)
  call void @__ioc_report_conversion(i32 1091, i32 45, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 -1, %struct.quoting_options* %o.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call.i
}

define i8* @quotearg_style_mem(i32 %s, i8* %arg, i32 %argsize) nounwind {
entry:
  %o.sroa.1.i.i = alloca { i32, [8 x i32], i8*, i8* }, align 8
  %o.i = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  %o.sroa.1.i.0.cast1.i = bitcast { i32, [8 x i32], i8*, i8* }* %o.sroa.1.i.i to i8*
  call void @llvm.lifetime.start(i64 44, i8* %o.sroa.1.i.0.cast1.i)
  call void @llvm.memset.p0i8.i32(i8* %o.sroa.1.i.0.cast1.i, i8 0, i32 44, i32 8, i1 false)
  %cmp.i.i = icmp eq i32 %s, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %quotearg_n_style_mem.exit

if.then.i.i:                                      ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quotearg_n_style_mem.exit:                        ; preds = %entry
  %o.sroa.0.0..idx.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 0
  store i32 %s, i32* %o.sroa.0.0..idx.i.i, align 4
  %o.sroa.1.4..idx.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 1
  %o.sroa.1.4..cast.i.i = bitcast i32* %o.sroa.1.4..idx.i.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %o.sroa.1.4..cast.i.i, i8* %o.sroa.1.i.0.cast1.i, i32 44, i32 4, i1 false) nounwind
  call void @llvm.lifetime.end(i64 44, i8* %o.sroa.1.i.0.cast1.i)
  %call.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 %argsize, %struct.quoting_options* %o.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call.i
}

define i8* @quotearg_char_mem(i8* %arg, i32 %argsize, i8 signext %ch) nounwind {
entry:
  %options = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false), !tbaa.struct !6
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %ch, i32 1)
  %call1 = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 %argsize, %struct.quoting_options* %options)
  ret i8* %call1
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define i8* @quotearg_char(i8* %arg, i8 signext %ch) nounwind {
entry:
  %options.i = alloca %struct.quoting_options, align 4
  call void @__ioc_report_conversion(i32 1120, i32 42, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %0 = bitcast %struct.quoting_options* %options.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %call.i = call i32 @set_char_quoting(%struct.quoting_options* %options.i, i8 signext %ch, i32 1) nounwind
  %call1.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 -1, %struct.quoting_options* %options.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call1.i
}

define i8* @quotearg_colon(i8* %arg) nounwind {
entry:
  %options.i.i = alloca %struct.quoting_options, align 4
  call void @__ioc_report_conversion(i32 1120, i32 42, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %0 = bitcast %struct.quoting_options* %options.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %call.i.i = call i32 @set_char_quoting(%struct.quoting_options* %options.i.i, i8 signext 58, i32 1) nounwind
  %call1.i.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 -1, %struct.quoting_options* %options.i.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call1.i.i
}

define i8* @quotearg_colon_mem(i8* %arg, i32 %argsize) nounwind {
entry:
  %options.i = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %options.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %call.i = call i32 @set_char_quoting(%struct.quoting_options* %options.i, i8 signext 58, i32 1) nounwind
  %call1.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 %argsize, %struct.quoting_options* %options.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call1.i
}

define i8* @quotearg_n_custom(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg) nounwind {
entry:
  %o.i = alloca %struct.quoting_options, align 4
  call void @__ioc_report_conversion(i32 1135, i32 71, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %0 = bitcast %struct.quoting_options* %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %style.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 0
  store i32 8, i32* %style.i.i, align 4, !tbaa !3
  %tobool1.i.i = icmp eq i8* %left_quote, null
  %tobool2.i.i = icmp eq i8* %right_quote, null
  %or.cond.i.i = or i1 %tobool1.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i, label %quotearg_n_custom_mem.exit

if.then3.i.i:                                     ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quotearg_n_custom_mem.exit:                       ; preds = %entry
  %left_quote5.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 3
  store i8* %left_quote, i8** %left_quote5.i.i, align 4, !tbaa !4
  %right_quote6.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 4
  store i8* %right_quote, i8** %right_quote6.i.i, align 4, !tbaa !4
  %call.i = call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 -1, %struct.quoting_options* %o.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call.i
}

define i8* @quotearg_n_custom_mem(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg, i32 %argsize) nounwind {
entry:
  %o = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false), !tbaa.struct !6
  %style.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0
  store i32 8, i32* %style.i, align 4, !tbaa !3
  %tobool1.i = icmp eq i8* %left_quote, null
  %tobool2.i = icmp eq i8* %right_quote, null
  %or.cond.i = or i1 %tobool1.i, %tobool2.i
  br i1 %or.cond.i, label %if.then3.i, label %set_custom_quoting.exit

if.then3.i:                                       ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

set_custom_quoting.exit:                          ; preds = %entry
  %left_quote5.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 3
  store i8* %left_quote, i8** %left_quote5.i, align 4, !tbaa !4
  %right_quote6.i = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 4
  store i8* %right_quote, i8** %right_quote6.i, align 4, !tbaa !4
  %call = call fastcc i8* @quotearg_n_options(i32 %n, i8* %arg, i32 %argsize, %struct.quoting_options* %o)
  ret i8* %call
}

define i8* @quotearg_custom(i8* %left_quote, i8* %right_quote, i8* %arg) nounwind {
entry:
  %o.i.i = alloca %struct.quoting_options, align 4
  call void @__ioc_report_conversion(i32 1135, i32 71, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %0 = bitcast %struct.quoting_options* %o.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %style.i.i.i = getelementptr inbounds %struct.quoting_options* %o.i.i, i32 0, i32 0
  store i32 8, i32* %style.i.i.i, align 4, !tbaa !3
  %tobool1.i.i.i = icmp eq i8* %left_quote, null
  %tobool2.i.i.i = icmp eq i8* %right_quote, null
  %or.cond.i.i.i = or i1 %tobool1.i.i.i, %tobool2.i.i.i
  br i1 %or.cond.i.i.i, label %if.then3.i.i.i, label %quotearg_n_custom.exit

if.then3.i.i.i:                                   ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quotearg_n_custom.exit:                           ; preds = %entry
  %left_quote5.i.i.i = getelementptr inbounds %struct.quoting_options* %o.i.i, i32 0, i32 3
  store i8* %left_quote, i8** %left_quote5.i.i.i, align 4, !tbaa !4
  %right_quote6.i.i.i = getelementptr inbounds %struct.quoting_options* %o.i.i, i32 0, i32 4
  store i8* %right_quote, i8** %right_quote6.i.i.i, align 4, !tbaa !4
  %call.i.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 -1, %struct.quoting_options* %o.i.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call.i.i
}

define i8* @quotearg_custom_mem(i8* %left_quote, i8* %right_quote, i8* %arg, i32 %argsize) nounwind {
entry:
  %o.i = alloca %struct.quoting_options, align 4
  %0 = bitcast %struct.quoting_options* %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) nounwind
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i32 48, i32 4, i1 false) nounwind, !tbaa.struct !6
  %style.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 0
  store i32 8, i32* %style.i.i, align 4, !tbaa !3
  %tobool1.i.i = icmp eq i8* %left_quote, null
  %tobool2.i.i = icmp eq i8* %right_quote, null
  %or.cond.i.i = or i1 %tobool1.i.i, %tobool2.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i, label %quotearg_n_custom_mem.exit

if.then3.i.i:                                     ; preds = %entry
  call void @abort() noreturn nounwind
  unreachable

quotearg_n_custom_mem.exit:                       ; preds = %entry
  %left_quote5.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 3
  store i8* %left_quote, i8** %left_quote5.i.i, align 4, !tbaa !4
  %right_quote6.i.i = getelementptr inbounds %struct.quoting_options* %o.i, i32 0, i32 4
  store i8* %right_quote, i8** %right_quote6.i.i, align 4, !tbaa !4
  %call.i = call fastcc i8* @quotearg_n_options(i32 0, i8* %arg, i32 %argsize, %struct.quoting_options* %o.i) nounwind
  call void @llvm.lifetime.end(i64 -1, i8* %0) nounwind
  ret i8* %call.i
}

define i8* @quote_n(i32 %n, i8* %name) nounwind {
entry:
  tail call void @__ioc_report_conversion(i32 1159, i32 47, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call = tail call fastcc i8* @quotearg_n_options(i32 %n, i8* %name, i32 -1, %struct.quoting_options* @quote_quoting_options)
  ret i8* %call
}

define i8* @quote(i8* %name) nounwind {
entry:
  tail call void @__ioc_report_conversion(i32 1159, i32 47, i8* getelementptr inbounds ([25 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @9, i32 0, i32 0), i64 -1, i8 1) nounwind
  %call.i = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %name, i32 -1, %struct.quoting_options* @quote_quoting_options) nounwind
  ret i8* %call.i
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare void @xalloc_die() noreturn

declare i8* @xrealloc(i8*, i32)

declare noalias i8* @xmalloc(i32)

declare i32 @__ctype_get_mb_cur_max() nounwind

define internal fastcc i8* @gettext_quote(i8* %msgid, i32 %s) nounwind {
entry:
  %call = tail call i8* @dcgettext(i8* null, i8* %msgid, i32 5) nounwind
  %cmp = icmp eq i8* %call, %msgid
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @locale_charset() nounwind
  %call2 = tail call i32 @c_strcasecmp(i8* %call1, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)) nounwind readonly
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %0 = load i8* %msgid, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %0, 96
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0)
  br label %return

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @c_strcasecmp(i8* %call1, i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0)) nounwind readonly
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %cont

if.then11:                                        ; preds = %if.end7
  %1 = load i8* %msgid, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %1, 96
  %cond16 = select i1 %cmp14, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0)
  br label %return

cont:                                             ; preds = %if.end7
  %cmp18 = icmp eq i32 %s, 7
  %cond20 = select i1 %cmp18, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0)
  br label %return

return:                                           ; preds = %entry, %cont, %if.then11, %if.then4
  %retval.0 = phi i8* [ %cond, %if.then4 ], [ %cond16, %if.then11 ], [ %cond20, %cont ], [ %call, %entry ]
  ret i8* %retval.0
}

declare i32 @strlen(i8* nocapture) nounwind readonly

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i16** @__ctype_b_loc() nounwind readnone

declare i32 @mbrtowc(i32*, i8*, i32, %struct.__mbstate_t*) nounwind

declare i32 @iswprint(i32) nounwind

declare i32 @mbsinit(%struct.__mbstate_t*) nounwind readonly

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @dcgettext(i8*, i8*, i32) nounwind

declare i8* @locale_charset()

declare i32 @c_strcasecmp(i8*, i8*) nounwind readonly

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"_ZTS13quoting_style", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{i64 0, i64 4, metadata !3, i64 4, i64 4, metadata !0, i64 8, i64 32, metadata !1, i64 40, i64 4, metadata !4, i64 44, i64 4, metadata !4}
