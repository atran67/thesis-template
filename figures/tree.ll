; ModuleID = 'tree.c'
source_filename = "tree.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-cygnus"

%struct.treeNode = type { [26 x %struct.treeNode*], i32, i8* }
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

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate more space\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Usage: tree <file>\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"File Not Found\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.treeNode* @initTree() #0 {
  %1 = alloca %struct.treeNode*, align 8
  %2 = alloca %struct.treeNode*, align 8
  %3 = alloca i32, align 4
  %4 = call i8* @malloc(i64 224)
  %5 = bitcast i8* %4 to %struct.treeNode*
  store %struct.treeNode* %5, %struct.treeNode** %2, align 8
  %6 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %7 = icmp eq %struct.treeNode* %6, null
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %0
  %9 = call %struct._reent* @__getreent()
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i32 0, i32 3
  %11 = load %struct.__sFILE64*, %struct.__sFILE64** %10, align 8
  %12 = call i32 (%struct.__sFILE64*, i8*, ...) @fprintf(%struct.__sFILE64* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  store %struct.treeNode* null, %struct.treeNode** %1, align 8
  br label %37

; <label>:13:                                     ; preds = %0
  %14 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %15 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = call i8* @malloc(i64 1)
  %17 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %18 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %20 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  store i32 0, i32* %3, align 4
  br label %23

; <label>:23:                                     ; preds = %32, %13
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 26
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %23
  %27 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %28 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %27, i32 0, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %28, i64 0, i64 %30
  store %struct.treeNode* null, %struct.treeNode** %31, align 8
  br label %32

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %23

; <label>:35:                                     ; preds = %23
  %36 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  store %struct.treeNode* %36, %struct.treeNode** %1, align 8
  br label %37

; <label>:37:                                     ; preds = %35, %8
  %38 = load %struct.treeNode*, %struct.treeNode** %1, align 8
  ret %struct.treeNode* %38
}

declare i8* @malloc(i64) #1

declare i32 @fprintf(%struct.__sFILE64*, i8*, ...) #1

declare %struct._reent* @__getreent() #1

; Function Attrs: noinline nounwind optnone uwtable
define void @destroyTree(%struct.treeNode*) #0 {
  %2 = alloca %struct.treeNode*, align 8
  %3 = alloca i32, align 4
  store %struct.treeNode* %0, %struct.treeNode** %2, align 8
  %4 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %5 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %4, i32 0, i32 2
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* %6)
  store i32 0, i32* %3, align 4
  br label %7

; <label>:7:                                      ; preds = %26, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 26
  br i1 %9, label %10, label %29

; <label>:10:                                     ; preds = %7
  %11 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %12 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %12, i64 0, i64 %14
  %16 = load %struct.treeNode*, %struct.treeNode** %15, align 8
  %17 = icmp ne %struct.treeNode* %16, null
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %10
  %19 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %20 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %19, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %20, i64 0, i64 %22
  %24 = load %struct.treeNode*, %struct.treeNode** %23, align 8
  call void @destroyTree(%struct.treeNode* %24)
  br label %25

; <label>:25:                                     ; preds = %18, %10
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

; <label>:29:                                     ; preds = %7
  %30 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  %31 = bitcast %struct.treeNode* %30 to i8*
  call void @free(i8* %31)
  ret void
}

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.treeNode* @addToTree(%struct.treeNode*, i8*) #0 {
  %3 = alloca %struct.treeNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.treeNode*, align 8
  %6 = alloca %struct.treeNode*, align 8
  %7 = alloca %struct.treeNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.treeNode* %0, %struct.treeNode** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.treeNode*, %struct.treeNode** %3, align 8
  store %struct.treeNode* %14, %struct.treeNode** %5, align 8
  store %struct.treeNode* null, %struct.treeNode** %6, align 8
  br label %15

; <label>:15:                                     ; preds = %49, %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %15
  %21 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %22 = icmp ne %struct.treeNode* %21, null
  br label %23

; <label>:23:                                     ; preds = %20, %15
  %24 = phi i1 [ false, %15 ], [ %22, %20 ]
  br i1 %24, label %25, label %50

; <label>:25:                                     ; preds = %23
  %26 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  store %struct.treeNode* %26, %struct.treeNode** %6, align 8
  %27 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %28 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %27, i32 0, i32 0
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %10, align 1
  %31 = call i8* @__locale_ctype_ptr()
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 @tolower(i32 %37) #4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, 97
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %28, i64 0, i64 %41
  %43 = load %struct.treeNode*, %struct.treeNode** %42, align 8
  store %struct.treeNode* %43, %struct.treeNode** %5, align 8
  %44 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %45 = icmp ne %struct.treeNode* %44, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %25
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %46, %25
  br label %15

; <label>:50:                                     ; preds = %23
  br label %51

; <label>:51:                                     ; preds = %94, %50
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %102

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %12, align 1
  %58 = call i8* @__locale_ctype_ptr()
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 @tolower(i32 %64) #4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 97
  store i32 %67, i32* %8, align 4
  %68 = call i8* @malloc(i64 224)
  %69 = bitcast i8* %68 to %struct.treeNode*
  store %struct.treeNode* %69, %struct.treeNode** %7, align 8
  %70 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %71 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = call i8* @malloc(i64 1)
  %73 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %74 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %79 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 %77, i8* %81, align 1
  store i32 0, i32* %9, align 4
  br label %82

; <label>:82:                                     ; preds = %91, %55
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 26
  br i1 %84, label %85, label %94

; <label>:85:                                     ; preds = %82
  %86 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %87 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %87, i64 0, i64 %89
  store %struct.treeNode* null, %struct.treeNode** %90, align 8
  br label %91

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %82

; <label>:94:                                     ; preds = %82
  %95 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  %96 = load %struct.treeNode*, %struct.treeNode** %6, align 8
  %97 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %97, i64 0, i64 %99
  store %struct.treeNode* %95, %struct.treeNode** %100, align 8
  %101 = load %struct.treeNode*, %struct.treeNode** %7, align 8
  store %struct.treeNode* %101, %struct.treeNode** %6, align 8
  br label %51

; <label>:102:                                    ; preds = %51
  %103 = load %struct.treeNode*, %struct.treeNode** %3, align 8
  ret %struct.treeNode* %103
}

declare i8* @__locale_ctype_ptr() #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @findString(%struct.treeNode*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.treeNode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.treeNode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.treeNode* %0, %struct.treeNode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  store %struct.treeNode* %12, %struct.treeNode** %8, align 8
  br label %13

; <label>:13:                                     ; preds = %69, %3
  %14 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %15 = icmp ne %struct.treeNode* %14, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

; <label>:21:                                     ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %70

; <label>:23:                                     ; preds = %21
  %24 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %25 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %24, i32 0, i32 0
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %10, align 1
  %28 = call i8* @__locale_ctype_ptr()
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @tolower(i32 %34) #4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 97
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %25, i64 0, i64 %38
  %40 = load %struct.treeNode*, %struct.treeNode** %39, align 8
  store %struct.treeNode* %40, %struct.treeNode** %8, align 8
  %41 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %42 = icmp eq %struct.treeNode* %41, null
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %23
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %46)
  store i32 1, i32* %4, align 4
  br label %77

; <label>:48:                                     ; preds = %23
  %49 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %50 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  br label %52

; <label>:52:                                     ; preds = %63, %48
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %61

; <label>:56:                                     ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

; <label>:61:                                     ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %69

; <label>:63:                                     ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  br label %52

; <label>:69:                                     ; preds = %61
  br label %13

; <label>:70:                                     ; preds = %21
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %70
  store i32 1, i32* %4, align 4
  br label %77

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %7, align 8
  store i8 0, i8* %76, align 1
  store i32 0, i32* %4, align 4
  br label %77

; <label>:77:                                     ; preds = %75, %74, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.treeNode* @collapseTree(%struct.treeNode*) #0 {
  %2 = alloca %struct.treeNode*, align 8
  %3 = alloca %struct.treeNode*, align 8
  %4 = alloca %struct.treeNode*, align 8
  %5 = alloca %struct.treeNode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.treeNode* %0, %struct.treeNode** %3, align 8
  %8 = load %struct.treeNode*, %struct.treeNode** %3, align 8
  store %struct.treeNode* %8, %struct.treeNode** %4, align 8
  store %struct.treeNode* null, %struct.treeNode** %5, align 8
  %9 = load %struct.treeNode*, %struct.treeNode** %3, align 8
  %10 = icmp ne %struct.treeNode* %9, null
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %1
  store %struct.treeNode* null, %struct.treeNode** %2, align 8
  br label %163

; <label>:12:                                     ; preds = %1
  %13 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %14 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %29, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 26
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %18
  %22 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %23 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %23, i64 0, i64 %25
  %27 = load %struct.treeNode*, %struct.treeNode** %26, align 8
  %28 = call %struct.treeNode* @collapseTree(%struct.treeNode* %27)
  br label %29

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %18

; <label>:32:                                     ; preds = %18
  br label %161

; <label>:33:                                     ; preds = %12
  store i32 0, i32* %6, align 4
  br label %34

; <label>:34:                                     ; preds = %75, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 26
  br i1 %36, label %37, label %78

; <label>:37:                                     ; preds = %34
  %38 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %39 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %39, i64 0, i64 %41
  %43 = load %struct.treeNode*, %struct.treeNode** %42, align 8
  %44 = icmp ne %struct.treeNode* %43, null
  br i1 %44, label %45, label %74

; <label>:45:                                     ; preds = %37
  %46 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %47 = icmp eq %struct.treeNode* %46, null
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %45
  %49 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %50 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %50, i64 0, i64 %52
  %54 = load %struct.treeNode*, %struct.treeNode** %53, align 8
  store %struct.treeNode* %54, %struct.treeNode** %5, align 8
  br label %73

; <label>:55:                                     ; preds = %45
  %56 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %57 = call %struct.treeNode* @collapseTree(%struct.treeNode* %56)
  br label %58

; <label>:58:                                     ; preds = %61, %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 26
  br i1 %60, label %61, label %71

; <label>:61:                                     ; preds = %58
  %62 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %63 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %63, i64 0, i64 %65
  %67 = load %struct.treeNode*, %struct.treeNode** %66, align 8
  %68 = call %struct.treeNode* @collapseTree(%struct.treeNode* %67)
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %58

; <label>:71:                                     ; preds = %58
  %72 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  store %struct.treeNode* %72, %struct.treeNode** %2, align 8
  br label %163

; <label>:73:                                     ; preds = %48
  br label %74

; <label>:74:                                     ; preds = %73, %37
  br label %75

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %34

; <label>:78:                                     ; preds = %34
  %79 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %80 = icmp ne %struct.treeNode* %79, null
  br i1 %80, label %81, label %160

; <label>:81:                                     ; preds = %78
  %82 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %83 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  %85 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %86 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %89 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %93 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %96 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = call i8* @realloc(i8* %94, i64 %98)
  %100 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %101 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %6, align 4
  br label %103

; <label>:103:                                    ; preds = %125, %81
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %106 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %128

; <label>:109:                                    ; preds = %103
  %110 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %111 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %120 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %118, i8* %124, align 1
  br label %125

; <label>:125:                                    ; preds = %109
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %103

; <label>:128:                                    ; preds = %103
  store i32 0, i32* %6, align 4
  br label %129

; <label>:129:                                    ; preds = %151, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 26
  br i1 %131, label %132, label %154

; <label>:132:                                    ; preds = %129
  %133 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %134 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %133, i32 0, i32 0
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %134, i64 0, i64 %136
  %138 = load %struct.treeNode*, %struct.treeNode** %137, align 8
  %139 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %140 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %139, i32 0, i32 0
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %140, i64 0, i64 %142
  store %struct.treeNode* %138, %struct.treeNode** %143, align 8
  %144 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  %145 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [26 x %struct.treeNode*], [26 x %struct.treeNode*]* %145, i64 0, i64 %147
  %149 = load %struct.treeNode*, %struct.treeNode** %148, align 8
  %150 = call %struct.treeNode* @collapseTree(%struct.treeNode* %149)
  br label %151

; <label>:151:                                    ; preds = %132
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %129

; <label>:154:                                    ; preds = %129
  %155 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %156 = getelementptr inbounds %struct.treeNode, %struct.treeNode* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  call void @free(i8* %157)
  %158 = load %struct.treeNode*, %struct.treeNode** %5, align 8
  %159 = bitcast %struct.treeNode* %158 to i8*
  call void @free(i8* %159)
  br label %160

; <label>:160:                                    ; preds = %154, %78
  br label %161

; <label>:161:                                    ; preds = %160, %32
  %162 = load %struct.treeNode*, %struct.treeNode** %4, align 8
  store %struct.treeNode* %162, %struct.treeNode** %2, align 8
  br label %163

; <label>:163:                                    ; preds = %161, %71, %11
  %164 = load %struct.treeNode*, %struct.treeNode** %2, align 8
  ret %struct.treeNode* %164
}

declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.treeNode*, align 8
  %9 = alloca %struct.__sFILE64*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %2
  %13 = call %struct._reent* @__getreent()
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %13, i32 0, i32 3
  %15 = load %struct.__sFILE64*, %struct.__sFILE64** %14, align 8
  %16 = call i32 (%struct.__sFILE64*, i8*, ...) @fprintf(%struct.__sFILE64* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:17:                                     ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call %struct.__sFILE64* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct.__sFILE64* %21, %struct.__sFILE64** %9, align 8
  %22 = load %struct.__sFILE64*, %struct.__sFILE64** %9, align 8
  %23 = icmp eq %struct.__sFILE64* %22, null
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %17
  %25 = call %struct._reent* @__getreent()
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %25, i32 0, i32 3
  %27 = load %struct.__sFILE64*, %struct.__sFILE64** %26, align 8
  %28 = call i32 (%struct.__sFILE64*, i8*, ...) @fprintf(%struct.__sFILE64* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:29:                                     ; preds = %17
  %30 = call %struct.treeNode* @initTree()
  store %struct.treeNode* %30, %struct.treeNode** %8, align 8
  br label %31

; <label>:31:                                     ; preds = %36, %29
  %32 = load %struct.__sFILE64*, %struct.__sFILE64** %9, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %34 = call i32 (%struct.__sFILE64*, i8*, ...) @fscanf(%struct.__sFILE64* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %33)
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %31
  %37 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %39 = call %struct.treeNode* @addToTree(%struct.treeNode* %37, i8* %38)
  br label %31

; <label>:40:                                     ; preds = %31
  %41 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %42 = call %struct.treeNode* @collapseTree(%struct.treeNode* %41)
  br label %43

; <label>:43:                                     ; preds = %56, %40
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %45 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %44)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %57

; <label>:47:                                     ; preds = %43
  %48 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0
  %51 = call i32 @findString(%struct.treeNode* %48, i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %54)
  br label %56

; <label>:56:                                     ; preds = %53, %47
  br label %43

; <label>:57:                                     ; preds = %43
  %58 = load %struct.treeNode*, %struct.treeNode** %8, align 8
  call void @destroyTree(%struct.treeNode* %58)
  ret i32 0
}

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE64* @fopen(i8*, i8*) #1

declare i32 @fscanf(%struct.__sFILE64*, i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
