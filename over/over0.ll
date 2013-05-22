; ModuleID = 'over0.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.8.0"

; Function Attrs: nounwind ssp
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 2147483647, i32* %i, align 4
  %0 = load i32* %i, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %j, align 4
  %1 = load i32* %j, align 4
  %call = call i8* @malloc(i32 %1)
  store i8* %call, i8** %p, align 4
  %2 = load i8** %p, align 4
  call void @free(i8* %2)
  ret i32 0
}

declare i8* @malloc(i32) #1

declare void @free(i8*) #1

attributes #0 = { nounwind ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
