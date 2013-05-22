; ModuleID = 'over0.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.8.0"

@0 = private unnamed_addr constant [8 x i8] c"over0.c\00"
@1 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@2 = private unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([8 x i8]* @0, i32 0, i32 0), i32 10, i32 9 }, { i16, i16, [6 x i8] }* @1 }

; Function Attrs: nounwind ssp
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 2147483647, i32* %i, align 4
  %0 = load i32* %i, align 4
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1)
  %2 = extractvalue { i32, i1 } %1, 0
  %3 = extractvalue { i32, i1 } %1, 1
  %4 = xor i1 %3, true
  br i1 %4, label %cont, label %handler.add_overflow, !prof !0

handler.add_overflow:                             ; preds = %entry
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @2 to i8*), i32 %0, i32 1) #4
  br label %cont

cont:                                             ; preds = %handler.add_overflow, %entry
  store i32 %2, i32* %j, align 4
  %5 = load i32* %j, align 4
  %call = call i8* @malloc(i32 %5)
  store i8* %call, i8** %p, align 4
  %6 = load i8** %p, align 4
  call void @free(i8* %6)
  %7 = load i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(i8*, i32, i32) #2

declare i8* @malloc(i32) #3

declare void @free(i8*) #3

attributes #0 = { nounwind ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { uwtable }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!0 = metadata !{metadata !"branch_weights", i32 1048575, i32 1}
