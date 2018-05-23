; ModuleID = 'matmul_v1.c'
source_filename = "matmul_v1.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-cygnus"

%struct._reent = type { i32, %struct.__sFILE64*, %struct.__sFILE64*, %struct.__sFILE64*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE64] }
%struct.__sFILE64 = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, %struct._reent*, i8*, i64 (%struct._reent*, i8*, i8*, i64)*, i64 (%struct._reent*, i8*, i8*, i64)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, i64, i64 (%struct._reent*, i8*, i64, i32)*, i8*, %struct._mbstate_t }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE64* }

@.str = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define double** @mm_init(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = call i8* @malloc(i64 %7)
  %9 = bitcast i8* %8 to double**
  store double** %9, double*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %23, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = call i8* @calloc(i64 %16, i64 8)
  %18 = bitcast i8* %17 to double*
  %19 = load double**, double*** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double*, double** %19, i64 %21
  store double* %18, double** %22, align 8
  br label %23

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %10

; <label>:26:                                     ; preds = %10
  %27 = load double**, double*** %3, align 8
  ret double** %27
}

declare i8* @malloc(i64) #1

declare i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @mm_destroy(i32, double**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double** %1, double*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %6
  %11 = load double**, double*** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double*, double** %11, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = bitcast double* %15 to i8*
  call void @free(i8* %16)
  br label %17

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6

; <label>:20:                                     ; preds = %6
  %21 = load double**, double*** %4, align 8
  %22 = bitcast double** %21 to i8*
  call void @free(i8* %22)
  ret void
}

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double** @mm_gen(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double**, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sitofp i32 %7 to double
  %9 = fdiv double 1.000000e+00, %8
  %10 = load i32, i32* %2, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %9, %11
  store double %12, double* %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call double** @mm_init(i32 %13)
  store double** %14, double*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %48, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %6, align 4
  br label %20

; <label>:20:                                     ; preds = %44, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

; <label>:24:                                     ; preds = %20
  %25 = load double, double* %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sitofp i32 %28 to double
  %30 = fmul double %25, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = sitofp i32 %33 to double
  %35 = fmul double %30, %34
  %36 = load double**, double*** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double*, double** %36, i64 %38
  %40 = load double*, double** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  store double %35, double* %43, align 8
  br label %44

; <label>:44:                                     ; preds = %24
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %20

; <label>:47:                                     ; preds = %20
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

; <label>:51:                                     ; preds = %15
  %52 = load double**, double*** %3, align 8
  ret double** %52
}

; Function Attrs: noinline nounwind optnone uwtable
define double** @mm_mul(i32, double**, double**) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double**, align 8
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double**, align 8
  %11 = alloca double**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca double*, align 8
  store i32 %0, i32* %4, align 4
  store double** %1, double*** %5, align 8
  store double** %2, double*** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call double** @mm_init(i32 %16)
  store double** %17, double*** %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call double** @mm_init(i32 %18)
  store double** %19, double*** %11, align 8
  store i32 0, i32* %7, align 4
  br label %20

; <label>:20:                                     ; preds = %51, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

; <label>:24:                                     ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

; <label>:25:                                     ; preds = %47, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

; <label>:29:                                     ; preds = %25
  %30 = load double**, double*** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double %38, double* %46, align 8
  br label %47

; <label>:47:                                     ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %25

; <label>:50:                                     ; preds = %25
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %20

; <label>:54:                                     ; preds = %20
  store i32 0, i32* %7, align 4
  br label %55

; <label>:55:                                     ; preds = %111, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %114

; <label>:59:                                     ; preds = %55
  %60 = load double**, double*** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double*, double** %60, i64 %62
  %64 = load double*, double** %63, align 8
  store double* %64, double** %12, align 8
  %65 = load double**, double*** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double*, double** %65, i64 %67
  %69 = load double*, double** %68, align 8
  store double* %69, double** %13, align 8
  store i32 0, i32* %8, align 4
  br label %70

; <label>:70:                                     ; preds = %107, %59
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

; <label>:74:                                     ; preds = %70
  store double 0.000000e+00, double* %14, align 8
  %75 = load double**, double*** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double*, double** %75, i64 %77
  %79 = load double*, double** %78, align 8
  store double* %79, double** %15, align 8
  store i32 0, i32* %9, align 4
  br label %80

; <label>:80:                                     ; preds = %98, %74
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %101

; <label>:84:                                     ; preds = %80
  %85 = load double*, double** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %15, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %89, %94
  %96 = load double, double* %14, align 8
  %97 = fadd double %96, %95
  store double %97, double* %14, align 8
  br label %98

; <label>:98:                                     ; preds = %84
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %80

; <label>:101:                                    ; preds = %80
  %102 = load double, double* %14, align 8
  %103 = load double*, double** %13, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  store double %102, double* %106, align 8
  br label %107

; <label>:107:                                    ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %70

; <label>:110:                                    ; preds = %70
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %55

; <label>:114:                                    ; preds = %55
  %115 = load i32, i32* %4, align 4
  %116 = load double**, double*** %11, align 8
  call void @mm_destroy(i32 %115, double** %116)
  %117 = load double**, double*** %10, align 8
  ret double** %117
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca double**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %6, align 4
  br label %17

; <label>:17:                                     ; preds = %12, %2
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 2
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call double** @mm_gen(i32 %21)
  store double** %22, double*** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call double** @mm_gen(i32 %23)
  store double** %24, double*** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load double**, double*** %7, align 8
  %27 = load double**, double*** %8, align 8
  %28 = call double** @mm_mul(i32 %25, double** %26, double** %27)
  store double** %28, double*** %9, align 8
  %29 = call %struct._reent* @__getreent()
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 3
  %31 = load %struct.__sFILE64*, %struct.__sFILE64** %30, align 8
  %32 = load double**, double*** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double*, double** %32, i64 %35
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %37, i64 %40
  %42 = load double, double* %41, align 8
  %43 = call i32 (%struct.__sFILE64*, i8*, ...) @fprintf(%struct.__sFILE64* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), double %42)
  %44 = load i32, i32* %6, align 4
  %45 = load double**, double*** %7, align 8
  call void @mm_destroy(i32 %44, double** %45)
  %46 = load i32, i32* %6, align 4
  %47 = load double**, double*** %8, align 8
  call void @mm_destroy(i32 %46, double** %47)
  %48 = load i32, i32* %6, align 4
  %49 = load double**, double*** %9, align 8
  call void @mm_destroy(i32 %48, double** %49)
  ret i32 0
}

declare i32 @atoi(i8*) #1

declare i32 @fprintf(%struct.__sFILE64*, i8*, ...) #1

declare %struct._reent* @__getreent() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
