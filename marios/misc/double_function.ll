; ModuleID = 'double_function.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@0 = private unnamed_addr constant [4 x i8] c"int\00"
@1 = private unnamed_addr constant [4 x i8] c"int\00"
@2 = private unnamed_addr constant [5 x i8] c"char\00"
@3 = private unnamed_addr constant [5 x i8] c"char\00"
@4 = private unnamed_addr constant [18 x i8] c"double_function.c\00"
@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@stdin = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @bar(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b = alloca i8, align 1
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  %smincheck = icmp slt i32 %0, -128
  %smaxcheck = icmp sgt i32 %0, 127
  %1 = or i1 %smincheck, %smaxcheck
  %2 = sext i32 %0 to i64
  %3 = xor i1 %1, true
  %4 = call i1 @llvm.expect.i1(i1 %3, i1 true)
  br i1 %4, label %cont, label %ioc_bb

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_conversion(i32 5, i32 18, i8* getelementptr inbounds ([18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @3, i32 0, i32 0), i64 %2, i8 1)
  br label %cont

cont:                                             ; preds = %ioc_bb, %entry
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %b, align 1
  %5 = load i8* %b, align 1
  %conv1 = sext i8 %5 to i32
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %conv1)
  ret void
}

declare i1 @llvm.expect.i1(i1, i1) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @printf(i8*, ...)

define void @foo1(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  call void @bar(i32 %0)
  ret void
}

define void @foo(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32* %a.addr, align 4
  call void @foo1(i32 %0)
  ret void
}

define i32 @main() nounwind {
entry:
  %retval = alloca i32, align 4
  %s = alloca [4 x i8], align 1
  %a = alloca i32, align 4
  store i32 0, i32* %retval
  %arraydecay = getelementptr inbounds [4 x i8]* %s, i32 0, i32 0
  %0 = load %struct._IO_FILE** @stdin, align 4
  %call = call i8* @fgets(i8* %arraydecay, i32 4, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [4 x i8]* %s, i32 0, i32 0
  %call2 = call i32 @atoi(i8* %arraydecay1) nounwind readonly
  store i32 %call2, i32* %a, align 4
  %1 = load i32* %a, align 4
  call void @foo(i32 %1)
  %2 = load i32* %a, align 4
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %2)
  ret i32 0
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*)

declare i32 @atoi(i8*) nounwind readonly
