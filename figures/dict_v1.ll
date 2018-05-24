; ModuleID = 'dict_v1.c'
source_filename = "dict_v1.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-cygnus"

%struct.kh_str_t = type { i32, i32, i32, i32, i32*, i8**, i32* }
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

@.str = private unnamed_addr constant [7 x i8] c"%u\09%d\0A\00", align 1
@__ac_prime_list = internal constant [32 x i32] [i32 0, i32 3, i32 11, i32 23, i32 53, i32 97, i32 193, i32 389, i32 769, i32 1543, i32 3079, i32 6151, i32 12289, i32 24593, i32 49157, i32 98317, i32 196613, i32 393241, i32 786433, i32 1572869, i32 3145739, i32 6291469, i32 12582917, i32 25165843, i32 50331653, i32 100663319, i32 201326611, i32 402653189, i32 805306457, i32 1610612741, i32 -1073741823, i32 -5], align 16

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kh_str_t*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** null, i8*** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = call i8* @malloc(i64 65536)
  store i8* %15, i8** %6, align 8
  %16 = call %struct.kh_str_t* @kh_init_str()
  store %struct.kh_str_t* %16, %struct.kh_str_t** %13, align 8
  %17 = call i8* @malloc(i64 8)
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %7, align 8
  %19 = call i8* @malloc(i64 1048576)
  %20 = load i8**, i8*** %7, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

; <label>:22:                                     ; preds = %130, %2
  %23 = call %struct._reent* @__getreent()
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %23, i32 0, i32 1
  %25 = load %struct.__sFILE64*, %struct.__sFILE64** %24, align 8
  %26 = getelementptr inbounds %struct.__sFILE64, %struct.__sFILE64* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 8
  %28 = sext i16 %27 to i32
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %131

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct._reent* @__getreent()
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %34, i32 0, i32 1
  %36 = load %struct.__sFILE64*, %struct.__sFILE64** %35, align 8
  %37 = call i8* @fgets(i8* %33, i32 65536, %struct.__sFILE64* %36)
  %38 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @kh_put_str(%struct.kh_str_t* %38, i8* %39, i32* %8)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %103

; <label>:43:                                     ; preds = %32
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sgt i32 %50, 1048576
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %55 = load i8**, i8*** %7, align 8
  %56 = bitcast i8** %55 to i8*
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = call i8* @realloc(i8* %56, i64 %60)
  %62 = bitcast i8* %61 to i8**
  store i8** %62, i8*** %7, align 8
  %63 = call i8* @malloc(i64 1048576)
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

; <label>:68:                                     ; preds = %52, %43
  %69 = load i8**, i8*** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 %79, i32 1, i1 false)
  %80 = load i8**, i8*** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %89 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %88, i32 0, i32 5
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %87, i8** %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %98 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 1, i32* %102, align 4
  br label %130

; <label>:103:                                    ; preds = %32
  %104 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %105 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %113 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %129

; <label>:121:                                    ; preds = %103
  %122 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %123 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %9, align 4
  br label %129

; <label>:129:                                    ; preds = %121, %103
  br label %130

; <label>:130:                                    ; preds = %129, %68
  br label %22

; <label>:131:                                    ; preds = %22
  %132 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  %133 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %134, i32 %135)
  store i32 0, i32* %8, align 4
  br label %137

; <label>:137:                                    ; preds = %147, %131
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %150

; <label>:141:                                    ; preds = %137
  %142 = load i8**, i8*** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  call void @free(i8* %146)
  br label %147

; <label>:147:                                    ; preds = %141
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %137

; <label>:150:                                    ; preds = %137
  %151 = load i8**, i8*** %7, align 8
  %152 = bitcast i8** %151 to i8*
  call void @free(i8* %152)
  %153 = load %struct.kh_str_t*, %struct.kh_str_t** %13, align 8
  call void @kh_destroy_str(%struct.kh_str_t* %153)
  %154 = load i8*, i8** %6, align 8
  call void @free(i8* %154)
  ret i32 0
}

declare i8* @malloc(i64) #1

declare %struct._reent* @__getreent() #1

declare i8* @fgets(i8*, i32, %struct.__sFILE64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kh_put_str(%struct.kh_str_t*, i8*, i32*) #0 {
  %4 = alloca %struct.kh_str_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kh_str_t* %0, %struct.kh_str_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %14 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %17 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %42

; <label>:20:                                     ; preds = %3
  %21 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %22 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %25 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  %28 = icmp ugt i32 %23, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %20
  %30 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %31 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %32 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %33, 1
  call void @kh_resize_str(%struct.kh_str_t* %30, i32 %34)
  br label %41

; <label>:35:                                     ; preds = %20
  %36 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %37 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %38 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, 1
  call void @kh_resize_str(%struct.kh_str_t* %36, i32 %40)
  br label %41

; <label>:41:                                     ; preds = %35, %29
  br label %42

; <label>:42:                                     ; preds = %41, %3
  %43 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %44 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @__ac_X31_hash_string(i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %50 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = urem i32 %48, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %54 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = lshr i32 %56, 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 1
  %64 = lshr i32 %60, %63
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %42
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %7, align 4
  br label %201

; <label>:69:                                     ; preds = %42
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %72 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub i32 %73, 1
  %75 = urem i32 %70, %74
  %76 = add i32 1, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %12, align 4
  br label %78

; <label>:78:                                     ; preds = %167, %69
  %79 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %80 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = lshr i32 %82, 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 15
  %89 = shl i32 %88, 1
  %90 = lshr i32 %86, %89
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %122, label %93

; <label>:93:                                     ; preds = %78
  %94 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %95 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = lshr i32 %97, 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 15
  %104 = shl i32 %103, 1
  %105 = lshr i32 %101, %104
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

; <label>:108:                                    ; preds = %93
  %109 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %110 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %109, i32 0, i32 5
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strcmp(i8* %115, i8* %116)
  %118 = icmp eq i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

; <label>:120:                                    ; preds = %108, %93
  %121 = phi i1 [ true, %93 ], [ %119, %108 ]
  br label %122

; <label>:122:                                    ; preds = %120, %78
  %123 = phi i1 [ false, %78 ], [ %121, %120 ]
  br i1 %123, label %124, label %168

; <label>:124:                                    ; preds = %122
  %125 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %126 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = lshr i32 %128, 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 15
  %135 = shl i32 %134, 1
  %136 = lshr i32 %132, %135
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

; <label>:139:                                    ; preds = %124
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %11, align 4
  br label %141

; <label>:141:                                    ; preds = %139, %124
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %142, %143
  %145 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %146 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp uge i32 %144, %147
  br i1 %148, label %149, label %157

; <label>:149:                                    ; preds = %141
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = add i32 %150, %151
  %153 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %154 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub i32 %152, %155
  store i32 %156, i32* %10, align 4
  br label %161

; <label>:157:                                    ; preds = %141
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

; <label>:161:                                    ; preds = %157, %149
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

; <label>:165:                                    ; preds = %161
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %7, align 4
  br label %168

; <label>:167:                                    ; preds = %161
  br label %78

; <label>:168:                                    ; preds = %165, %122
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %171 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %200

; <label>:174:                                    ; preds = %168
  %175 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %176 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = lshr i32 %178, 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = and i32 %183, 15
  %185 = shl i32 %184, 1
  %186 = lshr i32 %182, %185
  %187 = and i32 %186, 2
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

; <label>:189:                                    ; preds = %174
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %192 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %190, %193
  br i1 %194, label %195, label %197

; <label>:195:                                    ; preds = %189
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %7, align 4
  br label %199

; <label>:197:                                    ; preds = %189, %174
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %7, align 4
  br label %199

; <label>:199:                                    ; preds = %197, %195
  br label %200

; <label>:200:                                    ; preds = %199, %168
  br label %201

; <label>:201:                                    ; preds = %200, %67
  %202 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %203 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = lshr i32 %205, 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, 15
  %212 = shl i32 %211, 1
  %213 = lshr i32 %209, %212
  %214 = and i32 %213, 2
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %250

; <label>:216:                                    ; preds = %201
  %217 = load i8*, i8** %5, align 8
  %218 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %219 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %218, i32 0, i32 5
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %217, i8** %223, align 8
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, 15
  %226 = shl i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = shl i64 3, %227
  %229 = xor i64 %228, -1
  %230 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %231 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = lshr i32 %233, 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  %239 = and i64 %238, %229
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %242 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %246 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add i32 %247, 1
  store i32 %248, i32* %246, align 8
  %249 = load i32*, i32** %6, align 8
  store i32 1, i32* %249, align 4
  br label %298

; <label>:250:                                    ; preds = %201
  %251 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %252 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = lshr i32 %254, 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %7, align 4
  %260 = and i32 %259, 15
  %261 = shl i32 %260, 1
  %262 = lshr i32 %258, %261
  %263 = and i32 %262, 1
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %295

; <label>:265:                                    ; preds = %250
  %266 = load i8*, i8** %5, align 8
  %267 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %268 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %267, i32 0, i32 5
  %269 = load i8**, i8*** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %269, i64 %271
  store i8* %266, i8** %272, align 8
  %273 = load i32, i32* %7, align 4
  %274 = and i32 %273, 15
  %275 = shl i32 %274, 1
  %276 = zext i32 %275 to i64
  %277 = shl i64 3, %276
  %278 = xor i64 %277, -1
  %279 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %280 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = lshr i32 %282, 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  %288 = and i64 %287, %278
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  %290 = load %struct.kh_str_t*, %struct.kh_str_t** %4, align 8
  %291 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load i32*, i32** %6, align 8
  store i32 2, i32* %294, align 4
  br label %297

; <label>:295:                                    ; preds = %250
  %296 = load i32*, i32** %6, align 8
  store i32 0, i32* %296, align 4
  br label %297

; <label>:297:                                    ; preds = %295, %265
  br label %298

; <label>:298:                                    ; preds = %297, %216
  %299 = load i32, i32* %7, align 4
  ret i32 %299
}

declare i64 @strlen(i8*) #1

declare i8* @realloc(i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_destroy_str(%struct.kh_str_t*) #0 {
  %2 = alloca %struct.kh_str_t*, align 8
  store %struct.kh_str_t* %0, %struct.kh_str_t** %2, align 8
  %3 = load %struct.kh_str_t*, %struct.kh_str_t** %2, align 8
  %4 = icmp ne %struct.kh_str_t* %3, null
  br i1 %4, label %5, label %20

; <label>:5:                                      ; preds = %1
  %6 = load %struct.kh_str_t*, %struct.kh_str_t** %2, align 8
  %7 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %6, i32 0, i32 5
  %8 = load i8**, i8*** %7, align 8
  %9 = bitcast i8** %8 to i8*
  call void @free(i8* %9)
  %10 = load %struct.kh_str_t*, %struct.kh_str_t** %2, align 8
  %11 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* %13)
  %14 = load %struct.kh_str_t*, %struct.kh_str_t** %2, align 8
  %15 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17)
  %18 = load %struct.kh_str_t*, %struct.kh_str_t** %2, align 8
  %19 = bitcast %struct.kh_str_t* %18 to i8*
  call void @free(i8* %19)
  br label %20

; <label>:20:                                     ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kh_str_t* @kh_init_str() #0 {
  %1 = call i8* @calloc(i64 1, i64 40)
  %2 = bitcast i8* %1 to %struct.kh_str_t*
  ret %struct.kh_str_t* %2
}

declare i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kh_resize_str(%struct.kh_str_t*, i32) #0 {
  %3 = alloca %struct.kh_str_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.kh_str_t* %0, %struct.kh_str_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 31, i32* %7, align 4
  br label %15

; <label>:15:                                     ; preds = %22, %2
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* @__ac_prime_list, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %7, align 4
  br label %15

; <label>:25:                                     ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* @__ac_prime_list, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %32 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = uitofp i32 %34 to double
  %36 = fmul double %35, 7.700000e-01
  %37 = fadd double %36, 5.000000e-01
  %38 = fptoui double %37 to i32
  %39 = icmp uge i32 %33, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %25
  store i32 0, i32* %6, align 4
  br label %85

; <label>:41:                                     ; preds = %25
  %42 = load i32, i32* %4, align 4
  %43 = lshr i32 %42, 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = call i8* @malloc(i64 %46)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %4, align 4
  %52 = lshr i32 %51, 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 4
  call void @llvm.memset.p0i8.i64(i8* %50, i8 -86, i64 %55, i32 4, i1 false)
  %56 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %57 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %84

; <label>:61:                                     ; preds = %41
  %62 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %63 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %62, i32 0, i32 5
  %64 = load i8**, i8*** %63, align 8
  %65 = bitcast i8** %64 to i8*
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = call i8* @realloc(i8* %65, i64 %68)
  %70 = bitcast i8* %69 to i8**
  %71 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %72 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %71, i32 0, i32 5
  store i8** %70, i8*** %72, align 8
  %73 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %74 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = call i8* @realloc(i8* %76, i64 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %83 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %82, i32 0, i32 6
  store i32* %81, i32** %83, align 8
  br label %84

; <label>:84:                                     ; preds = %61, %41
  br label %85

; <label>:85:                                     ; preds = %84, %40
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %341

; <label>:88:                                     ; preds = %85
  store i32 0, i32* %6, align 4
  br label %89

; <label>:89:                                     ; preds = %284, %88
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %92 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %287

; <label>:95:                                     ; preds = %89
  %96 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %97 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = lshr i32 %99, 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 1
  %107 = lshr i32 %103, %106
  %108 = and i32 %107, 3
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %283

; <label>:110:                                    ; preds = %95
  %111 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %112 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %111, i32 0, i32 5
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %8, align 8
  %118 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %119 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 15
  %127 = shl i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = shl i64 1, %128
  %130 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %131 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = lshr i32 %133, 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  %139 = or i64 %138, %129
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  br label %141

; <label>:141:                                    ; preds = %110, %281
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @__ac_X31_hash_string(i8* %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %4, align 4
  %146 = urem i32 %144, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %4, align 4
  %149 = sub i32 %148, 1
  %150 = urem i32 %147, %149
  %151 = add i32 1, %150
  store i32 %151, i32* %10, align 4
  br label %152

; <label>:152:                                    ; preds = %182, %141
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %12, align 4
  %155 = lshr i32 %154, 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = and i32 %159, 15
  %161 = shl i32 %160, 1
  %162 = lshr i32 %158, %161
  %163 = and i32 %162, 2
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br i1 %165, label %166, label %183

; <label>:166:                                    ; preds = %152
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %167, %168
  %170 = load i32, i32* %4, align 4
  %171 = icmp uge i32 %169, %170
  br i1 %171, label %172, label %178

; <label>:172:                                    ; preds = %166
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %173, %174
  %176 = load i32, i32* %4, align 4
  %177 = sub i32 %175, %176
  store i32 %177, i32* %12, align 4
  br label %182

; <label>:178:                                    ; preds = %166
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %12, align 4
  br label %182

; <label>:182:                                    ; preds = %178, %172
  br label %152

; <label>:183:                                    ; preds = %152
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %184, 15
  %186 = shl i32 %185, 1
  %187 = zext i32 %186 to i64
  %188 = shl i64 2, %187
  %189 = xor i64 %188, -1
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = lshr i32 %191, 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  %197 = and i64 %196, %189
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %201 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ult i32 %199, %202
  br i1 %203, label %204, label %266

; <label>:204:                                    ; preds = %183
  %205 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %206 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = lshr i32 %208, 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %12, align 4
  %214 = and i32 %213, 15
  %215 = shl i32 %214, 1
  %216 = lshr i32 %212, %215
  %217 = and i32 %216, 3
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %266

; <label>:219:                                    ; preds = %204
  %220 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %221 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %220, i32 0, i32 5
  %222 = load i8**, i8*** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %13, align 8
  %227 = load i8*, i8** %8, align 8
  %228 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %229 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %228, i32 0, i32 5
  %230 = load i8**, i8*** %229, align 8
  %231 = load i32, i32* %12, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  store i8* %227, i8** %233, align 8
  %234 = load i8*, i8** %13, align 8
  store i8* %234, i8** %8, align 8
  %235 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %236 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %244 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %243, i32 0, i32 6
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %242, i32* %248, align 4
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %12, align 4
  %251 = and i32 %250, 15
  %252 = shl i32 %251, 1
  %253 = zext i32 %252 to i64
  %254 = shl i64 1, %253
  %255 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %256 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %12, align 4
  %259 = lshr i32 %258, 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  %264 = or i64 %263, %254
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4
  br label %281

; <label>:266:                                    ; preds = %204, %183
  %267 = load i8*, i8** %8, align 8
  %268 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %269 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %268, i32 0, i32 5
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  store i8* %267, i8** %273, align 8
  %274 = load i32, i32* %9, align 4
  %275 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %276 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %275, i32 0, i32 6
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %12, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %274, i32* %280, align 4
  br label %282

; <label>:281:                                    ; preds = %219
  br label %141

; <label>:282:                                    ; preds = %266
  br label %283

; <label>:283:                                    ; preds = %282, %95
  br label %284

; <label>:284:                                    ; preds = %283
  %285 = load i32, i32* %6, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %6, align 4
  br label %89

; <label>:287:                                    ; preds = %89
  %288 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %289 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %4, align 4
  %292 = icmp ugt i32 %290, %291
  br i1 %292, label %293, label %316

; <label>:293:                                    ; preds = %287
  %294 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %295 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %294, i32 0, i32 5
  %296 = load i8**, i8*** %295, align 8
  %297 = bitcast i8** %296 to i8*
  %298 = load i32, i32* %4, align 4
  %299 = zext i32 %298 to i64
  %300 = mul i64 %299, 8
  %301 = call i8* @realloc(i8* %297, i64 %300)
  %302 = bitcast i8* %301 to i8**
  %303 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %304 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %303, i32 0, i32 5
  store i8** %302, i8*** %304, align 8
  %305 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %306 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %305, i32 0, i32 6
  %307 = load i32*, i32** %306, align 8
  %308 = bitcast i32* %307 to i8*
  %309 = load i32, i32* %4, align 4
  %310 = zext i32 %309 to i64
  %311 = mul i64 %310, 4
  %312 = call i8* @realloc(i8* %308, i64 %311)
  %313 = bitcast i8* %312 to i32*
  %314 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %315 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %314, i32 0, i32 6
  store i32* %313, i32** %315, align 8
  br label %316

; <label>:316:                                    ; preds = %293, %287
  %317 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %318 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = bitcast i32* %319 to i8*
  call void @free(i8* %320)
  %321 = load i32*, i32** %5, align 8
  %322 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %323 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %322, i32 0, i32 4
  store i32* %321, i32** %323, align 8
  %324 = load i32, i32* %4, align 4
  %325 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %326 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %328 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %331 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %330, i32 0, i32 2
  store i32 %329, i32* %331, align 8
  %332 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %333 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = uitofp i32 %334 to double
  %336 = fmul double %335, 7.700000e-01
  %337 = fadd double %336, 5.000000e-01
  %338 = fptoui double %337 to i32
  %339 = load %struct.kh_str_t*, %struct.kh_str_t** %3, align 8
  %340 = getelementptr inbounds %struct.kh_str_t, %struct.kh_str_t* %339, i32 0, i32 3
  store i32 %338, i32* %340, align 4
  br label %341

; <label>:341:                                    ; preds = %316, %85
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ac_X31_hash_string(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %12

; <label>:12:                                     ; preds = %25, %9
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 5
  %19 = load i32, i32* %3, align 4
  %20 = sub i32 %18, %19
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = add i32 %20, %23
  store i32 %24, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %16
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  br label %12

; <label>:28:                                     ; preds = %12
  br label %29

; <label>:29:                                     ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
