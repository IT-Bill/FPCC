; ModuleID = 'gegenbauer.ll'
source_filename = "gegenbauer.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"gegenbauer.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"gsl_sf_gegenpoly_1_e(lambda, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_gegenpoly_2_e(lambda, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"gsl_sf_gegenpoly_3_e(lambda, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"gsl_sf_gegenpoly_n_e(n, lambda, x, &result)\00", align 1
@0 = private unnamed_addr constant [21 x i8] c"gsl_sf_gegenpoly_1_e\00"
@1 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@2 = private unnamed_addr constant [21 x i8] c"gsl_sf_gegenpoly_2_e\00"
@3 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@4 = private unnamed_addr constant [21 x i8] c"gsl_sf_gegenpoly_3_e\00"
@5 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@6 = private unnamed_addr constant [21 x i8] c"gsl_sf_gegenpoly_n_e\00"
@7 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@8 = private unnamed_addr constant [23 x i8] c"gsl_sf_gegenpoly_array\00"
@9 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@10 = private unnamed_addr constant [19 x i8] c"gsl_sf_gegenpoly_1\00"
@11 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@12 = private unnamed_addr constant [19 x i8] c"gsl_sf_gegenpoly_2\00"
@13 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@14 = private unnamed_addr constant [19 x i8] c"gsl_sf_gegenpoly_3\00"
@15 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"
@16 = private unnamed_addr constant [19 x i8] c"gsl_sf_gegenpoly_n\00"
@17 = private unnamed_addr constant [14 x i8] c"gegenbauer.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gegenpoly_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !58, metadata !59), !dbg !60
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !61, metadata !59), !dbg !62
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !63, metadata !59), !dbg !64
  %8 = load double, double* %5, align 8, !dbg !65
  %9 = fcmp oeq double %8, 0.000000e+00, !dbg !67
  %10 = call i1 @fCmpInstHandler(double %8, double 0.000000e+00, i1 %9, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523300112, i32 37, i32 13), !dbg !68
  br i1 %10, label %11, label %23, !dbg !68

; <label>:11:                                     ; preds = %3
  %12 = load double, double* %6, align 8, !dbg !69
  %13 = fmul double 2.000000e+00, %12, !dbg !71
  call void @fMulHandler(double 2.000000e+00, double %12, double %13, i64 0, i64 94840523301144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523301584, i32 38, i32 22), !dbg !72
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !72
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !73
  store double %13, double* %15, align 8, !dbg !74
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !75
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !76
  %18 = load double, double* %17, align 8, !dbg !76
  %19 = call double @fabs(double %18) #1, !dbg !77
  %20 = fmul double 0x3CC0000000000000, %19, !dbg !78
  call void @fMulHandler(double 0x3CC0000000000000, double %19, double %20, i64 0, i64 94840523297840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523306528, i32 39, i32 41), !dbg !79
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !79
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !80
  store double %20, double* %22, align 8, !dbg !81
  store i32 0, i32* %4, align 4, !dbg !82
  br label %37, !dbg !82

; <label>:23:                                     ; preds = %3
  %24 = load double, double* %5, align 8, !dbg !83
  %25 = fmul double 2.000000e+00, %24, !dbg !85
  call void @fMulHandler(double 2.000000e+00, double %24, double %25, i64 0, i64 94840523310376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523310752, i32 43, i32 22), !dbg !86
  %26 = load double, double* %6, align 8, !dbg !86
  %27 = fmul double %25, %26, !dbg !87
  call void @fMulHandler(double %25, double %26, double %27, i64 94840523310752, i64 94840523311112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523311520, i32 43, i32 29), !dbg !88
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !88
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !89
  store double %27, double* %29, align 8, !dbg !90
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !91
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !92
  %32 = load double, double* %31, align 8, !dbg !92
  %33 = call double @fabs(double %32) #1, !dbg !93
  %34 = fmul double 0x3CD0000000000000, %33, !dbg !94
  call void @fMulHandler(double 0x3CD0000000000000, double %33, double %34, i64 0, i64 94840523315728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94840523316800, i32 44, i32 41), !dbg !95
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !95
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !96
  store double %34, double* %36, align 8, !dbg !97
  store i32 0, i32* %4, align 4, !dbg !98
  br label %37, !dbg !98

; <label>:37:                                     ; preds = %23, %11
  %38 = load i32, i32* %4, align 4, !dbg !99
  ret i32 %38, !dbg !99
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gegenpoly_2_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !100 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !101, metadata !59), !dbg !102
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !103, metadata !59), !dbg !104
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !105, metadata !59), !dbg !106
  %9 = load double, double* %5, align 8, !dbg !107
  %10 = fcmp oeq double %9, 0.000000e+00, !dbg !109
  %11 = call i1 @fCmpInstHandler(double %9, double 0.000000e+00, i1 %10, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523328576, i32 54, i32 13), !dbg !110
  br i1 %11, label %12, label %35, !dbg !110

; <label>:12:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !111, metadata !59), !dbg !114
  %13 = load double, double* %6, align 8, !dbg !115
  %14 = fmul double 2.000000e+00, %13, !dbg !116
  call void @fMulHandler(double 2.000000e+00, double %13, double %14, i64 0, i64 94840523294264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523331056, i32 55, i32 27), !dbg !117
  %15 = load double, double* %6, align 8, !dbg !117
  %16 = fmul double %14, %15, !dbg !118
  call void @fMulHandler(double %14, double %15, double %16, i64 94840523331056, i64 94840523331416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523331824, i32 55, i32 29), !dbg !114
  store double %16, double* %8, align 8, !dbg !114
  %17 = load double, double* %8, align 8, !dbg !119
  %18 = fadd double -1.000000e+00, %17, !dbg !120
  call void @fAddHandler(double -1.000000e+00, double %17, double %18, i64 0, i64 94840523333896, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523334400, i32 56, i32 25), !dbg !121
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !121
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !122
  store double %18, double* %20, align 8, !dbg !123
  %21 = load double, double* %8, align 8, !dbg !124
  %22 = call double @fabs(double %21) #1, !dbg !125
  %23 = fmul double 0x3CC0000000000000, %22, !dbg !126
  call void @fMulHandler(double 0x3CC0000000000000, double %22, double %23, i64 0, i64 94840523324704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523336816, i32 57, i32 42), !dbg !127
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !127
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !128
  store double %23, double* %25, align 8, !dbg !129
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !130
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !131
  %28 = load double, double* %27, align 8, !dbg !131
  %29 = call double @fabs(double %28) #1, !dbg !132
  %30 = fmul double 0x3CC0000000000000, %29, !dbg !133
  call void @fMulHandler(double 0x3CC0000000000000, double %29, double %30, i64 0, i64 94840523341024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523341504, i32 58, i32 42), !dbg !134
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !134
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !135
  %33 = load double, double* %32, align 8, !dbg !136
  %34 = fadd double %33, %30, !dbg !136
  call void @fAddHandler(double %33, double %30, double %34, i64 94840523342728, i64 94840523341504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523343136, i32 58, i32 17), !dbg !136
  store double %34, double* %32, align 8, !dbg !136
  store i32 0, i32* %4, align 4, !dbg !137
  br label %59, !dbg !137

; <label>:35:                                     ; preds = %3
  %36 = load double, double* %5, align 8, !dbg !138
  %37 = load double, double* %5, align 8, !dbg !140
  %38 = fadd double 1.000000e+00, %37, !dbg !141
  call void @fAddHandler(double 1.000000e+00, double %37, double %38, i64 0, i64 94840523347448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523347952, i32 62, i32 42), !dbg !142
  %39 = fmul double 2.000000e+00, %38, !dbg !142
  call void @fMulHandler(double 2.000000e+00, double %38, double %39, i64 0, i64 94840523347952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523348368, i32 62, i32 37), !dbg !143
  %40 = load double, double* %6, align 8, !dbg !143
  %41 = fmul double %39, %40, !dbg !144
  call void @fMulHandler(double %39, double %40, double %41, i64 94840523348368, i64 94840523348728, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523349136, i32 62, i32 50), !dbg !145
  %42 = load double, double* %6, align 8, !dbg !145
  %43 = fmul double %41, %42, !dbg !146
  call void @fMulHandler(double %41, double %42, double %43, i64 94840523349136, i64 94840523349528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523349936, i32 62, i32 52), !dbg !147
  %44 = fadd double -1.000000e+00, %43, !dbg !147
  call void @fAddHandler(double -1.000000e+00, double %43, double %44, i64 0, i64 94840523349936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523350384, i32 62, i32 32), !dbg !148
  %45 = fmul double %36, %44, !dbg !148
  call void @fMulHandler(double %36, double %44, double %45, i64 94840523347128, i64 94840523350384, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523350768, i32 62, i32 25), !dbg !149
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !149
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !150
  store double %45, double* %47, align 8, !dbg !151
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !152
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !153
  %50 = load double, double* %49, align 8, !dbg !153
  %51 = call double @fabs(double %50) #1, !dbg !154
  %52 = fmul double 2.000000e+00, %51, !dbg !155
  call void @fMulHandler(double 2.000000e+00, double %51, double %52, i64 0, i64 94840523354976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523355488, i32 63, i32 42), !dbg !156
  %53 = load double, double* %5, align 8, !dbg !156
  %54 = call double @fabs(double %53) #1, !dbg !157
  %55 = fadd double %52, %54, !dbg !159
  call void @fAddHandler(double %52, double %54, double %55, i64 94840523355488, i64 94840523356320, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523356800, i32 63, i32 62), !dbg !160
  %56 = fmul double 0x3CB0000000000000, %55, !dbg !160
  call void @fMulHandler(double 0x3CB0000000000000, double %55, double %56, i64 0, i64 94840523356800, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94840523357280, i32 63, i32 35), !dbg !161
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !161
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !162
  store double %56, double* %58, align 8, !dbg !163
  store i32 0, i32* %4, align 4, !dbg !164
  br label %59, !dbg !164

; <label>:59:                                     ; preds = %35, %12
  %60 = load i32, i32* %4, align 4, !dbg !165
  ret i32 %60, !dbg !165
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gegenpoly_3_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !166 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !167, metadata !59), !dbg !168
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !169, metadata !59), !dbg !170
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !171, metadata !59), !dbg !172
  %9 = load double, double* %5, align 8, !dbg !173
  %10 = fcmp oeq double %9, 0.000000e+00, !dbg !175
  %11 = call i1 @fCmpInstHandler(double %9, double 0.000000e+00, i1 %10, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523368656, i32 73, i32 13), !dbg !176
  br i1 %11, label %12, label %33, !dbg !176

; <label>:12:                                     ; preds = %3
  %13 = load double, double* %6, align 8, !dbg !177
  %14 = load double, double* %6, align 8, !dbg !179
  %15 = fmul double 0x3FF5555555555555, %14, !dbg !180
  call void @fMulHandler(double 0x3FF5555555555555, double %14, double %15, i64 0, i64 94840523370088, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523370560, i32 74, i32 36), !dbg !181
  %16 = load double, double* %6, align 8, !dbg !181
  %17 = fmul double %15, %16, !dbg !182
  call void @fMulHandler(double %15, double %16, double %17, i64 94840523370560, i64 94840523370952, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523371360, i32 74, i32 38), !dbg !183
  %18 = fadd double -2.000000e+00, %17, !dbg !183
  call void @fAddHandler(double -2.000000e+00, double %17, double %18, i64 0, i64 94840523371360, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523371872, i32 74, i32 27), !dbg !184
  %19 = fmul double %13, %18, !dbg !184
  call void @fMulHandler(double %13, double %18, double %19, i64 94840523369768, i64 94840523371872, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523372256, i32 74, i32 20), !dbg !185
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !185
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !186
  store double %19, double* %21, align 8, !dbg !187
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !188
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !189
  %24 = load double, double* %23, align 8, !dbg !189
  %25 = call double @fabs(double %24) #1, !dbg !190
  %26 = fmul double 2.000000e+00, %25, !dbg !191
  call void @fMulHandler(double 2.000000e+00, double %25, double %26, i64 0, i64 94840523364688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523376832, i32 75, i32 42), !dbg !192
  %27 = load double, double* %6, align 8, !dbg !192
  %28 = call double @fabs(double %27) #1, !dbg !193
  %29 = fadd double %26, %28, !dbg !195
  call void @fAddHandler(double %26, double %28, double %29, i64 94840523376832, i64 94840523377664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523378144, i32 75, i32 62), !dbg !196
  %30 = fmul double 0x3CB0000000000000, %29, !dbg !196
  call void @fMulHandler(double 0x3CB0000000000000, double %29, double %30, i64 0, i64 94840523378144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523378560, i32 75, i32 35), !dbg !197
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !197
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !198
  store double %30, double* %32, align 8, !dbg !199
  store i32 0, i32* %4, align 4, !dbg !200
  br label %69, !dbg !200

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !201, metadata !59), !dbg !203
  %34 = load double, double* %5, align 8, !dbg !204
  %35 = load double, double* %5, align 8, !dbg !205
  %36 = fmul double 2.000000e+00, %35, !dbg !206
  call void @fMulHandler(double 2.000000e+00, double %35, double %36, i64 0, i64 94840523383816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523384256, i32 79, i32 39), !dbg !207
  %37 = fadd double 6.000000e+00, %36, !dbg !207
  call void @fAddHandler(double 6.000000e+00, double %36, double %37, i64 0, i64 94840523384256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523384736, i32 79, i32 34), !dbg !208
  %38 = fmul double %34, %37, !dbg !208
  call void @fMulHandler(double %34, double %37, double %38, i64 94840523383464, i64 94840523384736, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523385120, i32 79, i32 28), !dbg !209
  %39 = fadd double 4.000000e+00, %38, !dbg !209
  call void @fAddHandler(double 4.000000e+00, double %38, double %39, i64 0, i64 94840523385120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523385632, i32 79, i32 20), !dbg !203
  store double %39, double* %8, align 8, !dbg !203
  %40 = load double, double* %5, align 8, !dbg !210
  %41 = fmul double 2.000000e+00, %40, !dbg !211
  call void @fMulHandler(double 2.000000e+00, double %40, double %41, i64 0, i64 94840523387672, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523388112, i32 80, i32 22), !dbg !212
  %42 = load double, double* %6, align 8, !dbg !212
  %43 = fmul double %41, %42, !dbg !213
  call void @fMulHandler(double %41, double %42, double %43, i64 94840523388112, i64 94840523388472, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523388880, i32 80, i32 30), !dbg !214
  %44 = load double, double* %5, align 8, !dbg !214
  %45 = fsub double -1.000000e+00, %44, !dbg !215
  call void @fSubHandler(double -1.000000e+00, double %44, double %45, i64 0, i64 94840523389272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523389712, i32 80, i32 43), !dbg !216
  %46 = load double, double* %8, align 8, !dbg !216
  %47 = load double, double* %6, align 8, !dbg !217
  %48 = fmul double %46, %47, !dbg !218
  call void @fMulHandler(double %46, double %47, double %48, i64 94840523390072, i64 94840523390456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523390864, i32 80, i32 55), !dbg !219
  %49 = load double, double* %6, align 8, !dbg !219
  %50 = fmul double %48, %49, !dbg !220
  call void @fMulHandler(double %48, double %49, double %50, i64 94840523390864, i64 94840523391256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523391664, i32 80, i32 57), !dbg !221
  %51 = fdiv double %50, 3.000000e+00, !dbg !221
  call void @fDivHandler(double %50, double 3.000000e+00, double %51, i64 94840523391664, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523392176, i32 80, i32 59), !dbg !222
  %52 = fadd double %45, %51, !dbg !222
  call void @fAddHandler(double %45, double %51, double %52, i64 94840523389712, i64 94840523392176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523392560, i32 80, i32 52), !dbg !223
  %53 = fmul double %43, %52, !dbg !223
  call void @fMulHandler(double %43, double %52, double %53, i64 94840523388880, i64 94840523392560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523392976, i32 80, i32 34), !dbg !224
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !224
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !225
  store double %53, double* %55, align 8, !dbg !226
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !227
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !228
  %58 = load double, double* %57, align 8, !dbg !228
  %59 = call double @fabs(double %58) #1, !dbg !229
  %60 = fmul double 2.000000e+00, %59, !dbg !230
  call void @fMulHandler(double 2.000000e+00, double %59, double %60, i64 0, i64 94840523397184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523397696, i32 81, i32 42), !dbg !231
  %61 = load double, double* %5, align 8, !dbg !231
  %62 = load double, double* %6, align 8, !dbg !232
  %63 = fmul double %61, %62, !dbg !233
  call void @fMulHandler(double %61, double %62, double %63, i64 94840523398056, i64 94840523398440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523398848, i32 81, i32 76), !dbg !234
  %64 = call double @fabs(double %63) #1, !dbg !234
  %65 = fadd double %60, %64, !dbg !236
  call void @fAddHandler(double %60, double %64, double %65, i64 94840523397696, i64 94840523399328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523399808, i32 81, i32 62), !dbg !237
  %66 = fmul double 0x3CB0000000000000, %65, !dbg !237
  call void @fMulHandler(double 0x3CB0000000000000, double %65, double %66, i64 0, i64 94840523399808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94840523401264, i32 81, i32 35), !dbg !238
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !238
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !239
  store double %66, double* %68, align 8, !dbg !240
  store i32 0, i32* %4, align 4, !dbg !241
  br label %69, !dbg !241

; <label>:69:                                     ; preds = %33, %12
  %70 = load i32, i32* %4, align 4, !dbg !242
  ret i32 %70, !dbg !242
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gegenpoly_n_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !243 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !246, metadata !59), !dbg !247
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !248, metadata !59), !dbg !249
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !250, metadata !59), !dbg !251
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !252, metadata !59), !dbg !253
  %20 = load double, double* %7, align 8, !dbg !254
  %21 = fcmp ole double %20, -5.000000e-01, !dbg !256
  %22 = call i1 @fCmpInstHandler(double %20, double -5.000000e-01, i1 %21, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523414992, i32 92, i32 13), !dbg !257
  br i1 %22, label %28, label %23, !dbg !257

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %6, align 4, !dbg !258
  %25 = icmp slt i32 %24, 0, !dbg !260
  %26 = sext i32 %24 to i64, !dbg !261
  %27 = call i1 @iCmpInstHandler(i64 %26, i64 0, i1 %25, i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523416416, i32 92, i32 26), !dbg !261
  br i1 %27, label %28, label %37, !dbg !261

; <label>:28:                                     ; preds = %23, %4
  br label %29, !dbg !262, !llvm.loop !264

; <label>:29:                                     ; preds = %28
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !265
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !265
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !265
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !265
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !265
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !265
  br label %34, !dbg !265, !llvm.loop !268

; <label>:34:                                     ; preds = %29
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 93, i32 1), !dbg !270
  store i32 1, i32* %5, align 4, !dbg !270
  br label %189, !dbg !270
                                                  ; No predecessors!
  br label %36, !dbg !273

; <label>:36:                                     ; preds = %35
  br label %189, !dbg !275

; <label>:37:                                     ; preds = %23
  %38 = load i32, i32* %6, align 4, !dbg !276
  %39 = icmp eq i32 %38, 0, !dbg !278
  %40 = sext i32 %38 to i64, !dbg !279
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523430624, i32 95, i32 13), !dbg !279
  br i1 %41, label %42, label %47, !dbg !279

; <label>:42:                                     ; preds = %37
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !280
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !282
  store double 1.000000e+00, double* %44, align 8, !dbg !283
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !284
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !285
  store double 0.000000e+00, double* %46, align 8, !dbg !286
  store i32 0, i32* %5, align 4, !dbg !287
  br label %189, !dbg !287

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* %6, align 4, !dbg !288
  %49 = icmp eq i32 %48, 1, !dbg !290
  %50 = sext i32 %48 to i64, !dbg !291
  %51 = call i1 @iCmpInstHandler(i64 %50, i64 1, i1 %49, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523436576, i32 100, i32 13), !dbg !291
  br i1 %51, label %52, label %57, !dbg !291

; <label>:52:                                     ; preds = %47
  %53 = load double, double* %7, align 8, !dbg !292
  %54 = load double, double* %8, align 8, !dbg !294
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !295
  %56 = call i32 @gsl_sf_gegenpoly_1_e(double %53, double %54, %struct.gsl_sf_result_struct* %55), !dbg !296
  store i32 %56, i32* %5, align 4, !dbg !297
  br label %189, !dbg !297

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %6, align 4, !dbg !298
  %59 = icmp eq i32 %58, 2, !dbg !300
  %60 = sext i32 %58 to i64, !dbg !301
  %61 = call i1 @iCmpInstHandler(i64 %60, i64 2, i1 %59, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523441904, i32 103, i32 13), !dbg !301
  br i1 %61, label %62, label %67, !dbg !301

; <label>:62:                                     ; preds = %57
  %63 = load double, double* %7, align 8, !dbg !302
  %64 = load double, double* %8, align 8, !dbg !304
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !305
  %66 = call i32 @gsl_sf_gegenpoly_2_e(double %63, double %64, %struct.gsl_sf_result_struct* %65), !dbg !306
  store i32 %66, i32* %5, align 4, !dbg !307
  br label %189, !dbg !307

; <label>:67:                                     ; preds = %57
  %68 = load i32, i32* %6, align 4, !dbg !308
  %69 = icmp eq i32 %68, 3, !dbg !310
  %70 = sext i32 %68 to i64, !dbg !311
  %71 = call i1 @iCmpInstHandler(i64 %70, i64 3, i1 %69, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523447136, i32 106, i32 13), !dbg !311
  br i1 %71, label %72, label %77, !dbg !311

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %7, align 8, !dbg !312
  %74 = load double, double* %8, align 8, !dbg !314
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !315
  %76 = call i32 @gsl_sf_gegenpoly_3_e(double %73, double %74, %struct.gsl_sf_result_struct* %75), !dbg !316
  store i32 %76, i32* %5, align 4, !dbg !317
  br label %189, !dbg !317

; <label>:77:                                     ; preds = %67
  %78 = load double, double* %7, align 8, !dbg !318
  %79 = fcmp oeq double %78, 0.000000e+00, !dbg !321
  %80 = call i1 @fCmpInstHandler(double %78, double 0.000000e+00, i1 %79, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523452304, i32 110, i32 15), !dbg !322
  br i1 %80, label %81, label %112, !dbg !322

; <label>:81:                                     ; preds = %77
  %82 = load double, double* %8, align 8, !dbg !323
  %83 = fcmp oge double %82, -1.000000e+00, !dbg !325
  %84 = call i1 @fCmpInstHandler(double %82, double -1.000000e+00, i1 %83, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523453792, i32 110, i32 28), !dbg !326
  br i1 %84, label %85, label %112, !dbg !326

; <label>:85:                                     ; preds = %81
  %86 = load double, double* %8, align 8, !dbg !327
  %87 = fcmp ole double %86, 1.000000e+00, !dbg !329
  %88 = call i1 @fCmpInstHandler(double %86, double 1.000000e+00, i1 %87, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523455104, i32 110, i32 41), !dbg !330
  br i1 %88, label %89, label %112, !dbg !330

; <label>:89:                                     ; preds = %85
  call void @llvm.dbg.declare(metadata double* %10, metadata !331, metadata !59), !dbg !333
  %90 = load i32, i32* %6, align 4, !dbg !334
  %91 = sitofp i32 %90 to double, !dbg !334
  %92 = load double, double* %8, align 8, !dbg !335
  %93 = call double @acos(double %92) #5, !dbg !336
  call void @callOneArgHandler(i32 5, double %92, double %93, i64 94840523459096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523459840, i32 112, i32 28), !dbg !337
  %94 = fmul double %91, %93, !dbg !337
  call void @fMulHandler(double %91, double %93, double %94, i64 94840523457448, i64 94840523459840, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523460352, i32 112, i32 26), !dbg !333
  store double %94, double* %10, align 8, !dbg !333
  %95 = load double, double* %10, align 8, !dbg !338
  %96 = call double @cos(double %95) #5, !dbg !339
  call void @callOneArgHandler(i32 2, double %95, double %96, i64 94840523462424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523463168, i32 113, i32 27), !dbg !340
  %97 = fmul double 2.000000e+00, %96, !dbg !340
  call void @fMulHandler(double 2.000000e+00, double %96, double %97, i64 0, i64 94840523463168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523463712, i32 113, i32 25), !dbg !341
  %98 = load i32, i32* %6, align 4, !dbg !341
  %99 = sitofp i32 %98 to double, !dbg !341
  %100 = fdiv double %97, %99, !dbg !342
  call void @fDivHandler(double %97, double %99, double %100, i64 94840523463712, i64 94840523464456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523466128, i32 113, i32 34), !dbg !343
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !343
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !344
  store double %100, double* %102, align 8, !dbg !345
  %103 = load double, double* %10, align 8, !dbg !346
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !347
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !348
  %106 = load double, double* %105, align 8, !dbg !348
  %107 = fmul double %103, %106, !dbg !349
  call void @fMulHandler(double %103, double %106, double %107, i64 94840523467768, i64 94840523468984, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523470656, i32 114, i32 52), !dbg !350
  %108 = call double @fabs(double %107) #1, !dbg !350
  %109 = fmul double 0x3CC0000000000000, %108, !dbg !351
  call void @fMulHandler(double 0x3CC0000000000000, double %108, double %109, i64 0, i64 94840523471136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523471616, i32 114, i32 43), !dbg !352
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !352
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !353
  store double %109, double* %111, align 8, !dbg !354
  store i32 0, i32* %5, align 4, !dbg !355
  br label %189, !dbg !355

; <label>:112:                                    ; preds = %85, %81, %77
  call void @llvm.dbg.declare(metadata i32* %11, metadata !356, metadata !59), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !359, metadata !59), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !361, metadata !59), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %14, metadata !363, metadata !59), !dbg !364
  %113 = load double, double* %7, align 8, !dbg !365
  %114 = load double, double* %8, align 8, !dbg !366
  %115 = call i32 @gsl_sf_gegenpoly_2_e(double %113, double %114, %struct.gsl_sf_result_struct* %12), !dbg !367
  store i32 %115, i32* %14, align 4, !dbg !364
  call void @llvm.dbg.declare(metadata i32* %15, metadata !368, metadata !59), !dbg !369
  %116 = load double, double* %7, align 8, !dbg !370
  %117 = load double, double* %8, align 8, !dbg !371
  %118 = call i32 @gsl_sf_gegenpoly_3_e(double %116, double %117, %struct.gsl_sf_result_struct* %13), !dbg !372
  store i32 %118, i32* %15, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata i32* %16, metadata !373, metadata !59), !dbg !374
  %119 = load i32, i32* %14, align 4, !dbg !375
  %120 = icmp ne i32 %119, 0, !dbg !375
  %121 = sext i32 %119 to i64, !dbg !375
  %122 = call i1 @iCmpInstHandler(i64 %121, i64 0, i1 %120, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523488304, i32 123, i32 21), !dbg !375
  br i1 %122, label %123, label %125, !dbg !375

; <label>:123:                                    ; preds = %112
  %124 = load i32, i32* %14, align 4, !dbg !376
  br label %135, !dbg !376

; <label>:125:                                    ; preds = %112
  %126 = load i32, i32* %15, align 4, !dbg !378
  %127 = icmp ne i32 %126, 0, !dbg !378
  %128 = sext i32 %126 to i64, !dbg !378
  %129 = call i1 @iCmpInstHandler(i64 %128, i64 0, i1 %127, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523492848, i32 123, i32 21), !dbg !378
  br i1 %129, label %130, label %132, !dbg !378

; <label>:130:                                    ; preds = %125
  %131 = load i32, i32* %15, align 4, !dbg !380
  br label %133, !dbg !380

; <label>:132:                                    ; preds = %125
  br label %133, !dbg !382

; <label>:133:                                    ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ], !dbg !384
  br label %135, !dbg !384

; <label>:135:                                    ; preds = %133, %123
  %136 = phi i32 [ %124, %123 ], [ %134, %133 ], !dbg !386
  store i32 %136, i32* %16, align 4, !dbg !388
  call void @llvm.dbg.declare(metadata double* %17, metadata !389, metadata !59), !dbg !390
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !391
  %138 = load double, double* %137, align 8, !dbg !391
  store double %138, double* %17, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %18, metadata !392, metadata !59), !dbg !393
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !394
  %140 = load double, double* %139, align 8, !dbg !394
  store double %140, double* %18, align 8, !dbg !393
  call void @llvm.dbg.declare(metadata double* %19, metadata !395, metadata !59), !dbg !396
  store double 0.000000e+00, double* %19, align 8, !dbg !396
  store i32 4, i32* %11, align 4, !dbg !397
  br label %141, !dbg !399

; <label>:141:                                    ; preds = %173, %135
  %142 = load i32, i32* %11, align 4, !dbg !400
  %143 = load i32, i32* %6, align 4, !dbg !403
  %144 = icmp sle i32 %142, %143, !dbg !404
  %145 = sext i32 %142 to i64, !dbg !405
  %146 = sext i32 %143 to i64, !dbg !405
  %147 = call i1 @iCmpInstHandler(i64 %145, i64 %146, i1 %144, i32 41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523516528, i32 127, i32 17), !dbg !405
  br i1 %147, label %148, label %176, !dbg !405

; <label>:148:                                    ; preds = %141
  %149 = load i32, i32* %11, align 4, !dbg !406
  %150 = sitofp i32 %149 to double, !dbg !406
  %151 = load double, double* %7, align 8, !dbg !408
  %152 = fadd double %150, %151, !dbg !409
  call void @fAddHandler(double %150, double %151, double %152, i64 94840523520024, i64 94840523521672, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523522080, i32 128, i32 21), !dbg !410
  %153 = fsub double %152, 1.000000e+00, !dbg !410
  call void @fSubHandler(double %152, double 1.000000e+00, double %153, i64 94840523522080, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523522528, i32 128, i32 28), !dbg !411
  %154 = fmul double 2.000000e+00, %153, !dbg !411
  call void @fMulHandler(double 2.000000e+00, double %153, double %154, i64 0, i64 94840523522528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523522944, i32 128, i32 18), !dbg !412
  %155 = load double, double* %8, align 8, !dbg !412
  %156 = fmul double %154, %155, !dbg !413
  call void @fMulHandler(double %154, double %155, double %156, i64 94840523522944, i64 94840523523304, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523523712, i32 128, i32 33), !dbg !414
  %157 = load double, double* %18, align 8, !dbg !414
  %158 = fmul double %156, %157, !dbg !415
  call void @fMulHandler(double %156, double %157, double %158, i64 94840523523712, i64 94840523524104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523524512, i32 128, i32 35), !dbg !416
  %159 = load i32, i32* %11, align 4, !dbg !416
  %160 = sitofp i32 %159 to double, !dbg !416
  %161 = load double, double* %7, align 8, !dbg !417
  %162 = fmul double 2.000000e+00, %161, !dbg !418
  call void @fMulHandler(double 2.000000e+00, double %161, double %162, i64 0, i64 94840523526936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523527376, i32 128, i32 49), !dbg !419
  %163 = fadd double %160, %162, !dbg !419
  call void @fAddHandler(double %160, double %162, double %163, i64 94840523525288, i64 94840523527376, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523527760, i32 128, i32 45), !dbg !420
  %164 = fsub double %163, 2.000000e+00, !dbg !420
  call void @fSubHandler(double %163, double 2.000000e+00, double %164, i64 94840523527760, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523528208, i32 128, i32 56), !dbg !421
  %165 = load double, double* %17, align 8, !dbg !421
  %166 = fmul double %164, %165, !dbg !422
  call void @fMulHandler(double %164, double %165, double %166, i64 94840523528208, i64 94840523528568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523528976, i32 128, i32 61), !dbg !423
  %167 = fsub double %158, %166, !dbg !423
  call void @fSubHandler(double %158, double %166, double %167, i64 94840523524512, i64 94840523528976, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523529392, i32 128, i32 41), !dbg !424
  %168 = load i32, i32* %11, align 4, !dbg !424
  %169 = sitofp i32 %168 to double, !dbg !424
  %170 = fdiv double %167, %169, !dbg !425
  call void @fDivHandler(double %167, double %169, double %170, i64 94840523529392, i64 94840523530168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523531840, i32 128, i32 68), !dbg !426
  store double %170, double* %19, align 8, !dbg !426
  %171 = load double, double* %18, align 8, !dbg !427
  store double %171, double* %17, align 8, !dbg !428
  %172 = load double, double* %19, align 8, !dbg !429
  store double %172, double* %18, align 8, !dbg !430
  br label %173, !dbg !431

; <label>:173:                                    ; preds = %148
  %174 = load i32, i32* %11, align 4, !dbg !432
  %175 = add nsw i32 %174, 1, !dbg !432
  store i32 %175, i32* %11, align 4, !dbg !432
  br label %141, !dbg !434, !llvm.loop !435

; <label>:176:                                    ; preds = %141
  %177 = load double, double* %19, align 8, !dbg !437
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !438
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !439
  store double %177, double* %179, align 8, !dbg !440
  %180 = load i32, i32* %6, align 4, !dbg !441
  %181 = sitofp i32 %180 to double, !dbg !441
  %182 = fmul double 0x3CB0000000000000, %181, !dbg !442
  call void @fMulHandler(double 0x3CB0000000000000, double %181, double %182, i64 0, i64 94840523539528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523541200, i32 133, i32 49), !dbg !443
  %183 = load double, double* %19, align 8, !dbg !443
  %184 = call double @fabs(double %183) #1, !dbg !444
  %185 = fmul double %182, %184, !dbg !445
  call void @fMulHandler(double %182, double %184, double %185, i64 94840523541200, i64 94840523542064, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94840523542544, i32 133, i32 53), !dbg !446
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !446
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !447
  store double %185, double* %187, align 8, !dbg !448
  %188 = load i32, i32* %16, align 4, !dbg !449
  store i32 %188, i32* %5, align 4, !dbg !450
  br label %189, !dbg !450

; <label>:189:                                    ; preds = %176, %89, %72, %62, %52, %42, %36, %34
  %190 = load i32, i32* %5, align 4, !dbg !451
  ret i32 %190, !dbg !451
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare double @acos(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_gegenpoly_array(i32, double, double, double*) #0 !dbg !452 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !456, metadata !59), !dbg !457
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !458, metadata !59), !dbg !459
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !460, metadata !59), !dbg !461
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !462, metadata !59), !dbg !463
  call void @llvm.dbg.declare(metadata i32* %10, metadata !464, metadata !59), !dbg !465
  %13 = load double, double* %7, align 8, !dbg !466
  %14 = fcmp ole double %13, -5.000000e-01, !dbg !468
  %15 = call i1 @fCmpInstHandler(double %13, double -5.000000e-01, i1 %14, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523555616, i32 147, i32 13), !dbg !469
  br i1 %15, label %21, label %16, !dbg !469

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %6, align 4, !dbg !470
  %18 = icmp slt i32 %17, 0, !dbg !472
  %19 = sext i32 %17 to i64, !dbg !473
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523556944, i32 147, i32 29), !dbg !473
  br i1 %20, label %21, label %24, !dbg !473

; <label>:21:                                     ; preds = %16, %4
  br label %22, !dbg !474, !llvm.loop !476

; <label>:22:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 148, i32 1), !dbg !477
  store i32 1, i32* %5, align 4, !dbg !477
  br label %99, !dbg !477
                                                  ; No predecessors!
  br label %24, !dbg !480

; <label>:24:                                     ; preds = %23, %16
  %25 = load double*, double** %9, align 8, !dbg !481
  %26 = getelementptr inbounds double, double* %25, i64 0, !dbg !481
  store double 1.000000e+00, double* %26, align 8, !dbg !482
  %27 = load i32, i32* %6, align 4, !dbg !483
  %28 = icmp eq i32 %27, 0, !dbg !485
  %29 = sext i32 %27 to i64, !dbg !486
  %30 = call i1 @iCmpInstHandler(i64 %29, i64 0, i1 %28, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523564288, i32 153, i32 11), !dbg !486
  br i1 %30, label %31, label %32, !dbg !486

; <label>:31:                                     ; preds = %24
  store i32 0, i32* %5, align 4, !dbg !487
  br label %99, !dbg !487

; <label>:32:                                     ; preds = %24
  %33 = load double, double* %7, align 8, !dbg !489
  %34 = fcmp oeq double %33, 0.000000e+00, !dbg !491
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523567744, i32 156, i32 13), !dbg !492
  br i1 %35, label %36, label %41, !dbg !492

; <label>:36:                                     ; preds = %32
  %37 = load double, double* %8, align 8, !dbg !493
  %38 = fmul double 2.000000e+00, %37, !dbg !494
  call void @fMulHandler(double 2.000000e+00, double %37, double %38, i64 0, i64 94840523568856, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523569232, i32 157, i32 26), !dbg !495
  %39 = load double*, double** %9, align 8, !dbg !495
  %40 = getelementptr inbounds double, double* %39, i64 1, !dbg !495
  store double %38, double* %40, align 8, !dbg !496
  br label %48, !dbg !495

; <label>:41:                                     ; preds = %32
  %42 = load double, double* %7, align 8, !dbg !497
  %43 = fmul double 2.000000e+00, %42, !dbg !498
  call void @fMulHandler(double 2.000000e+00, double %42, double %43, i64 0, i64 94840523572392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523572768, i32 159, i32 26), !dbg !499
  %44 = load double, double* %8, align 8, !dbg !499
  %45 = fmul double %43, %44, !dbg !500
  call void @fMulHandler(double %43, double %44, double %45, i64 94840523572768, i64 94840523573128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523573536, i32 159, i32 33), !dbg !501
  %46 = load double*, double** %9, align 8, !dbg !501
  %47 = getelementptr inbounds double, double* %46, i64 1, !dbg !501
  store double %45, double* %47, align 8, !dbg !502
  br label %48

; <label>:48:                                     ; preds = %41, %36
  store i32 2, i32* %10, align 4, !dbg !503
  br label %49, !dbg !505

; <label>:49:                                     ; preds = %95, %48
  %50 = load i32, i32* %10, align 4, !dbg !506
  %51 = load i32, i32* %6, align 4, !dbg !509
  %52 = icmp sle i32 %50, %51, !dbg !510
  %53 = sext i32 %50 to i64, !dbg !511
  %54 = sext i32 %51 to i64, !dbg !511
  %55 = call i1 @iCmpInstHandler(i64 %53, i64 %54, i1 %52, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523578128, i32 162, i32 13), !dbg !511
  br i1 %55, label %56, label %98, !dbg !511

; <label>:56:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %11, metadata !512, metadata !59), !dbg !514
  %57 = load i32, i32* %10, align 4, !dbg !515
  %58 = sitofp i32 %57 to double, !dbg !515
  %59 = load double, double* %7, align 8, !dbg !516
  %60 = fadd double %58, %59, !dbg !517
  call void @fAddHandler(double %58, double %59, double %60, i64 94840523580648, i64 94840523582296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523582704, i32 163, i32 26), !dbg !518
  %61 = fsub double %60, 1.000000e+00, !dbg !518
  call void @fSubHandler(double %60, double 1.000000e+00, double %61, i64 94840523582704, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523583152, i32 163, i32 33), !dbg !519
  %62 = fmul double 2.000000e+00, %61, !dbg !519
  call void @fMulHandler(double 2.000000e+00, double %61, double %62, i64 0, i64 94840523583152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523583568, i32 163, i32 23), !dbg !520
  %63 = load double, double* %8, align 8, !dbg !520
  %64 = fmul double %62, %63, !dbg !521
  call void @fMulHandler(double %62, double %63, double %64, i64 94840523583568, i64 94840523583928, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523584336, i32 163, i32 39), !dbg !522
  %65 = load i32, i32* %10, align 4, !dbg !522
  %66 = sub nsw i32 %65, 1, !dbg !523
  %67 = sext i32 %66 to i64, !dbg !524
  %68 = load double*, double** %9, align 8, !dbg !524
  %69 = getelementptr inbounds double, double* %68, i64 %67, !dbg !524
  %70 = load double, double* %69, align 8, !dbg !524
  %71 = fmul double %64, %70, !dbg !525
  call void @fMulHandler(double %64, double %70, double %71, i64 94840523584336, i64 94840523587704, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523587824, i32 163, i32 43), !dbg !514
  store double %71, double* %11, align 8, !dbg !514
  call void @llvm.dbg.declare(metadata double* %12, metadata !526, metadata !59), !dbg !527
  %72 = load i32, i32* %10, align 4, !dbg !528
  %73 = sitofp i32 %72 to double, !dbg !528
  %74 = load double, double* %7, align 8, !dbg !529
  %75 = fmul double 2.000000e+00, %74, !dbg !530
  call void @fMulHandler(double 2.000000e+00, double %74, double %75, i64 0, i64 94840523593016, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523593456, i32 164, i32 26), !dbg !531
  %76 = fadd double %73, %75, !dbg !531
  call void @fAddHandler(double %73, double %75, double %76, i64 94840523591368, i64 94840523593456, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523593840, i32 164, i32 22), !dbg !532
  %77 = fsub double %76, 2.000000e+00, !dbg !532
  call void @fSubHandler(double %76, double 2.000000e+00, double %77, i64 94840523593840, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523594288, i32 164, i32 33), !dbg !533
  %78 = load i32, i32* %10, align 4, !dbg !533
  %79 = sub nsw i32 %78, 2, !dbg !534
  %80 = sext i32 %79 to i64, !dbg !535
  %81 = load double*, double** %9, align 8, !dbg !535
  %82 = getelementptr inbounds double, double* %81, i64 %80, !dbg !535
  %83 = load double, double* %82, align 8, !dbg !535
  %84 = fmul double %77, %83, !dbg !536
  call void @fMulHandler(double %77, double %83, double %84, i64 94840523594288, i64 94840523597624, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523597744, i32 164, i32 43), !dbg !527
  store double %84, double* %12, align 8, !dbg !527
  %85 = load double, double* %11, align 8, !dbg !537
  %86 = load double, double* %12, align 8, !dbg !538
  %87 = fsub double %85, %86, !dbg !539
  call void @fSubHandler(double %85, double %86, double %87, i64 94840523599816, i64 94840523600200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523600608, i32 165, i32 30), !dbg !540
  %88 = load i32, i32* %10, align 4, !dbg !540
  %89 = sitofp i32 %88 to double, !dbg !540
  %90 = fdiv double %87, %89, !dbg !541
  call void @fDivHandler(double %87, double %89, double %90, i64 94840523600608, i64 94840523601384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0), i64 94840523603056, i32 165, i32 39), !dbg !542
  %91 = load i32, i32* %10, align 4, !dbg !542
  %92 = sext i32 %91 to i64, !dbg !543
  %93 = load double*, double** %9, align 8, !dbg !543
  %94 = getelementptr inbounds double, double* %93, i64 %92, !dbg !543
  store double %90, double* %94, align 8, !dbg !544
  br label %95, !dbg !545

; <label>:95:                                     ; preds = %56
  %96 = load i32, i32* %10, align 4, !dbg !546
  %97 = add nsw i32 %96, 1, !dbg !546
  store i32 %97, i32* %10, align 4, !dbg !546
  br label %49, !dbg !548, !llvm.loop !549

; <label>:98:                                     ; preds = %49
  store i32 0, i32* %5, align 4, !dbg !551
  br label %99, !dbg !551

; <label>:99:                                     ; preds = %98, %31, %22
  %100 = load i32, i32* %5, align 4, !dbg !552
  ret i32 %100, !dbg !552
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gegenpoly_1(double, double) #0 !dbg !553 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !556, metadata !59), !dbg !557
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !558, metadata !59), !dbg !559
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !560, metadata !59), !dbg !561
  call void @llvm.dbg.declare(metadata i32* %7, metadata !562, metadata !59), !dbg !561
  %8 = load double, double* %4, align 8, !dbg !561
  %9 = load double, double* %5, align 8, !dbg !561
  %10 = call i32 @gsl_sf_gegenpoly_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !561
  store i32 %10, i32* %7, align 4, !dbg !561
  %11 = load i32, i32* %7, align 4, !dbg !563
  %12 = icmp ne i32 %11, 0, !dbg !563
  %13 = sext i32 %11 to i64, !dbg !561
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @11, i32 0, i32 0), i64 94840523622208, i32 178, i32 3), !dbg !561
  br i1 %14, label %15, label %21, !dbg !561

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !565, !llvm.loop !568

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !570
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 178, i32 %17), !dbg !570
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !570
  %19 = load double, double* %18, align 8, !dbg !570
  store double %19, double* %3, align 8, !dbg !570
  br label %24, !dbg !570
                                                  ; No predecessors!
  br label %21, !dbg !573

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !575
  %23 = load double, double* %22, align 8, !dbg !575
  store double %23, double* %3, align 8, !dbg !575
  br label %24, !dbg !575

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !577
  ret double %25, !dbg !577
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gegenpoly_2(double, double) #0 !dbg !578 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !579, metadata !59), !dbg !580
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !581, metadata !59), !dbg !582
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !583, metadata !59), !dbg !584
  call void @llvm.dbg.declare(metadata i32* %7, metadata !585, metadata !59), !dbg !584
  %8 = load double, double* %4, align 8, !dbg !584
  %9 = load double, double* %5, align 8, !dbg !584
  %10 = call i32 @gsl_sf_gegenpoly_2_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !584
  store i32 %10, i32* %7, align 4, !dbg !584
  %11 = load i32, i32* %7, align 4, !dbg !586
  %12 = icmp ne i32 %11, 0, !dbg !586
  %13 = sext i32 %11 to i64, !dbg !584
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0), i64 94840523641024, i32 183, i32 3), !dbg !584
  br i1 %14, label %15, label %21, !dbg !584

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !588, !llvm.loop !591

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !593
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 183, i32 %17), !dbg !593
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !593
  %19 = load double, double* %18, align 8, !dbg !593
  store double %19, double* %3, align 8, !dbg !593
  br label %24, !dbg !593
                                                  ; No predecessors!
  br label %21, !dbg !596

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !598
  %23 = load double, double* %22, align 8, !dbg !598
  store double %23, double* %3, align 8, !dbg !598
  br label %24, !dbg !598

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !600
  ret double %25, !dbg !600
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gegenpoly_3(double, double) #0 !dbg !601 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !602, metadata !59), !dbg !603
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !604, metadata !59), !dbg !605
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !606, metadata !59), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %7, metadata !608, metadata !59), !dbg !607
  %8 = load double, double* %4, align 8, !dbg !607
  %9 = load double, double* %5, align 8, !dbg !607
  %10 = call i32 @gsl_sf_gegenpoly_3_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !607
  store i32 %10, i32* %7, align 4, !dbg !607
  %11 = load i32, i32* %7, align 4, !dbg !609
  %12 = icmp ne i32 %11, 0, !dbg !609
  %13 = sext i32 %11 to i64, !dbg !607
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @15, i32 0, i32 0), i64 94840523659840, i32 188, i32 3), !dbg !607
  br i1 %14, label %15, label %21, !dbg !607

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !611, !llvm.loop !614

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !616
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 188, i32 %17), !dbg !616
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !616
  %19 = load double, double* %18, align 8, !dbg !616
  store double %19, double* %3, align 8, !dbg !616
  br label %24, !dbg !616
                                                  ; No predecessors!
  br label %21, !dbg !619

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !621
  %23 = load double, double* %22, align 8, !dbg !621
  store double %23, double* %3, align 8, !dbg !621
  br label %24, !dbg !621

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !623
  ret double %25, !dbg !623
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_gegenpoly_n(i32, double, double) #0 !dbg !624 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !627, metadata !59), !dbg !628
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !629, metadata !59), !dbg !630
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !631, metadata !59), !dbg !632
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !633, metadata !59), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %9, metadata !635, metadata !59), !dbg !634
  %10 = load i32, i32* %5, align 4, !dbg !634
  %11 = load double, double* %6, align 8, !dbg !634
  %12 = load double, double* %7, align 8, !dbg !634
  %13 = call i32 @gsl_sf_gegenpoly_n_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !634
  store i32 %13, i32* %9, align 4, !dbg !634
  %14 = load i32, i32* %9, align 4, !dbg !636
  %15 = icmp ne i32 %14, 0, !dbg !636
  %16 = sext i32 %14 to i64, !dbg !634
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @17, i32 0, i32 0), i64 94840523684272, i32 193, i32 3), !dbg !634
  br i1 %17, label %18, label %24, !dbg !634

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !638, !llvm.loop !641

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !643
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 193, i32 %20), !dbg !643
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !643
  %22 = load double, double* %21, align 8, !dbg !643
  store double %22, double* %4, align 8, !dbg !643
  br label %27, !dbg !643
                                                  ; No predecessors!
  br label %24, !dbg !646

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !648
  %26 = load double, double* %25, align 8, !dbg !648
  store double %26, double* %4, align 8, !dbg !648
  br label %27, !dbg !648

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !650
  ret double %28, !dbg !650
}

declare i1 @fCmpInstHandler(double, double, i1, i32, i8*, i8*, i64, i32, i32)

declare i1 @iCmpInstHandler(i64, i64, i1, i32, i8*, i8*, i64, i32, i32)

declare void @fAddHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fSubHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fMulHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fDivHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @callOneArgHandler(i32, double, double, i64, i8*, i8*, i64, i32, i32)

declare void @callTwoArgsHandler(i32, double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "gegenbauer.c", directory: "/fpcc/gsl-2.5/specfunc")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/fpcc/gsl-2.5/specfunc")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!6 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!8 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!9 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!10 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!11 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!12 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!13 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!14 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!15 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!16 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!17 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!18 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!19 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!20 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!21 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!22 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!23 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!24 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!25 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!26 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!27 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!28 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!29 = !DIEnumerator(name: "GSL_ESING", value: 21)
!30 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!31 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!32 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!33 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!34 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!35 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!36 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!37 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!38 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!39 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!40 = !DIEnumerator(name: "GSL_EOF", value: 32)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!45 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1_e", scope: !1, file: !1, line: 33, type: !46, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !50}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !49, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "lambda", arg: 1, scope: !45, file: !1, line: 33, type: !49)
!59 = !DIExpression()
!60 = !DILocation(line: 33, column: 29, scope: !45)
!61 = !DILocalVariable(name: "x", arg: 2, scope: !45, file: !1, line: 33, type: !49)
!62 = !DILocation(line: 33, column: 44, scope: !45)
!63 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 33, type: !50)
!64 = !DILocation(line: 33, column: 63, scope: !45)
!65 = !DILocation(line: 37, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !45, file: !1, line: 37, column: 6)
!67 = !DILocation(line: 37, column: 13, scope: !66)
!68 = !DILocation(line: 37, column: 6, scope: !45)
!69 = !DILocation(line: 38, column: 23, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 37, column: 21)
!71 = !DILocation(line: 38, column: 22, scope: !70)
!72 = !DILocation(line: 38, column: 5, scope: !70)
!73 = !DILocation(line: 38, column: 13, scope: !70)
!74 = !DILocation(line: 38, column: 17, scope: !70)
!75 = !DILocation(line: 39, column: 48, scope: !70)
!76 = !DILocation(line: 39, column: 56, scope: !70)
!77 = !DILocation(line: 39, column: 43, scope: !70)
!78 = !DILocation(line: 39, column: 41, scope: !70)
!79 = !DILocation(line: 39, column: 5, scope: !70)
!80 = !DILocation(line: 39, column: 13, scope: !70)
!81 = !DILocation(line: 39, column: 17, scope: !70)
!82 = !DILocation(line: 40, column: 5, scope: !70)
!83 = !DILocation(line: 43, column: 23, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !1, line: 42, column: 8)
!85 = !DILocation(line: 43, column: 22, scope: !84)
!86 = !DILocation(line: 43, column: 30, scope: !84)
!87 = !DILocation(line: 43, column: 29, scope: !84)
!88 = !DILocation(line: 43, column: 5, scope: !84)
!89 = !DILocation(line: 43, column: 13, scope: !84)
!90 = !DILocation(line: 43, column: 17, scope: !84)
!91 = !DILocation(line: 44, column: 48, scope: !84)
!92 = !DILocation(line: 44, column: 56, scope: !84)
!93 = !DILocation(line: 44, column: 43, scope: !84)
!94 = !DILocation(line: 44, column: 41, scope: !84)
!95 = !DILocation(line: 44, column: 5, scope: !84)
!96 = !DILocation(line: 44, column: 13, scope: !84)
!97 = !DILocation(line: 44, column: 17, scope: !84)
!98 = !DILocation(line: 45, column: 5, scope: !84)
!99 = !DILocation(line: 47, column: 1, scope: !45)
!100 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2_e", scope: !1, file: !1, line: 50, type: !46, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!101 = !DILocalVariable(name: "lambda", arg: 1, scope: !100, file: !1, line: 50, type: !49)
!102 = !DILocation(line: 50, column: 29, scope: !100)
!103 = !DILocalVariable(name: "x", arg: 2, scope: !100, file: !1, line: 50, type: !49)
!104 = !DILocation(line: 50, column: 44, scope: !100)
!105 = !DILocalVariable(name: "result", arg: 3, scope: !100, file: !1, line: 50, type: !50)
!106 = !DILocation(line: 50, column: 63, scope: !100)
!107 = !DILocation(line: 54, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 54, column: 6)
!109 = !DILocation(line: 54, column: 13, scope: !108)
!110 = !DILocation(line: 54, column: 6, scope: !100)
!111 = !DILocalVariable(name: "txx", scope: !112, file: !1, line: 55, type: !113)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 54, column: 21)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!114 = !DILocation(line: 55, column: 18, scope: !112)
!115 = !DILocation(line: 55, column: 28, scope: !112)
!116 = !DILocation(line: 55, column: 27, scope: !112)
!117 = !DILocation(line: 55, column: 30, scope: !112)
!118 = !DILocation(line: 55, column: 29, scope: !112)
!119 = !DILocation(line: 56, column: 27, scope: !112)
!120 = !DILocation(line: 56, column: 25, scope: !112)
!121 = !DILocation(line: 56, column: 5, scope: !112)
!122 = !DILocation(line: 56, column: 13, scope: !112)
!123 = !DILocation(line: 56, column: 18, scope: !112)
!124 = !DILocation(line: 57, column: 49, scope: !112)
!125 = !DILocation(line: 57, column: 44, scope: !112)
!126 = !DILocation(line: 57, column: 42, scope: !112)
!127 = !DILocation(line: 57, column: 5, scope: !112)
!128 = !DILocation(line: 57, column: 13, scope: !112)
!129 = !DILocation(line: 57, column: 18, scope: !112)
!130 = !DILocation(line: 58, column: 49, scope: !112)
!131 = !DILocation(line: 58, column: 57, scope: !112)
!132 = !DILocation(line: 58, column: 44, scope: !112)
!133 = !DILocation(line: 58, column: 42, scope: !112)
!134 = !DILocation(line: 58, column: 5, scope: !112)
!135 = !DILocation(line: 58, column: 13, scope: !112)
!136 = !DILocation(line: 58, column: 17, scope: !112)
!137 = !DILocation(line: 59, column: 5, scope: !112)
!138 = !DILocation(line: 62, column: 19, scope: !139)
!139 = distinct !DILexicalBlock(scope: !108, file: !1, line: 61, column: 8)
!140 = !DILocation(line: 62, column: 43, scope: !139)
!141 = !DILocation(line: 62, column: 42, scope: !139)
!142 = !DILocation(line: 62, column: 37, scope: !139)
!143 = !DILocation(line: 62, column: 51, scope: !139)
!144 = !DILocation(line: 62, column: 50, scope: !139)
!145 = !DILocation(line: 62, column: 53, scope: !139)
!146 = !DILocation(line: 62, column: 52, scope: !139)
!147 = !DILocation(line: 62, column: 32, scope: !139)
!148 = !DILocation(line: 62, column: 25, scope: !139)
!149 = !DILocation(line: 62, column: 5, scope: !139)
!150 = !DILocation(line: 62, column: 13, scope: !139)
!151 = !DILocation(line: 62, column: 17, scope: !139)
!152 = !DILocation(line: 63, column: 49, scope: !139)
!153 = !DILocation(line: 63, column: 57, scope: !139)
!154 = !DILocation(line: 63, column: 44, scope: !139)
!155 = !DILocation(line: 63, column: 42, scope: !139)
!156 = !DILocation(line: 63, column: 69, scope: !139)
!157 = !DILocation(line: 63, column: 64, scope: !158)
!158 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 1)
!159 = !DILocation(line: 63, column: 62, scope: !139)
!160 = !DILocation(line: 63, column: 35, scope: !139)
!161 = !DILocation(line: 63, column: 5, scope: !139)
!162 = !DILocation(line: 63, column: 13, scope: !139)
!163 = !DILocation(line: 63, column: 17, scope: !139)
!164 = !DILocation(line: 64, column: 5, scope: !139)
!165 = !DILocation(line: 66, column: 1, scope: !100)
!166 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3_e", scope: !1, file: !1, line: 69, type: !46, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!167 = !DILocalVariable(name: "lambda", arg: 1, scope: !166, file: !1, line: 69, type: !49)
!168 = !DILocation(line: 69, column: 29, scope: !166)
!169 = !DILocalVariable(name: "x", arg: 2, scope: !166, file: !1, line: 69, type: !49)
!170 = !DILocation(line: 69, column: 44, scope: !166)
!171 = !DILocalVariable(name: "result", arg: 3, scope: !166, file: !1, line: 69, type: !50)
!172 = !DILocation(line: 69, column: 63, scope: !166)
!173 = !DILocation(line: 73, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !1, line: 73, column: 6)
!175 = !DILocation(line: 73, column: 13, scope: !174)
!176 = !DILocation(line: 73, column: 6, scope: !166)
!177 = !DILocation(line: 74, column: 19, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 73, column: 21)
!179 = !DILocation(line: 74, column: 37, scope: !178)
!180 = !DILocation(line: 74, column: 36, scope: !178)
!181 = !DILocation(line: 74, column: 39, scope: !178)
!182 = !DILocation(line: 74, column: 38, scope: !178)
!183 = !DILocation(line: 74, column: 27, scope: !178)
!184 = !DILocation(line: 74, column: 20, scope: !178)
!185 = !DILocation(line: 74, column: 5, scope: !178)
!186 = !DILocation(line: 74, column: 13, scope: !178)
!187 = !DILocation(line: 74, column: 17, scope: !178)
!188 = !DILocation(line: 75, column: 49, scope: !178)
!189 = !DILocation(line: 75, column: 57, scope: !178)
!190 = !DILocation(line: 75, column: 44, scope: !178)
!191 = !DILocation(line: 75, column: 42, scope: !178)
!192 = !DILocation(line: 75, column: 69, scope: !178)
!193 = !DILocation(line: 75, column: 64, scope: !194)
!194 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 1)
!195 = !DILocation(line: 75, column: 62, scope: !178)
!196 = !DILocation(line: 75, column: 35, scope: !178)
!197 = !DILocation(line: 75, column: 5, scope: !178)
!198 = !DILocation(line: 75, column: 13, scope: !178)
!199 = !DILocation(line: 75, column: 17, scope: !178)
!200 = !DILocation(line: 76, column: 5, scope: !178)
!201 = !DILocalVariable(name: "c", scope: !202, file: !1, line: 79, type: !49)
!202 = distinct !DILexicalBlock(scope: !174, file: !1, line: 78, column: 8)
!203 = !DILocation(line: 79, column: 12, scope: !202)
!204 = !DILocation(line: 79, column: 22, scope: !202)
!205 = !DILocation(line: 79, column: 40, scope: !202)
!206 = !DILocation(line: 79, column: 39, scope: !202)
!207 = !DILocation(line: 79, column: 34, scope: !202)
!208 = !DILocation(line: 79, column: 28, scope: !202)
!209 = !DILocation(line: 79, column: 20, scope: !202)
!210 = !DILocation(line: 80, column: 23, scope: !202)
!211 = !DILocation(line: 80, column: 22, scope: !202)
!212 = !DILocation(line: 80, column: 32, scope: !202)
!213 = !DILocation(line: 80, column: 30, scope: !202)
!214 = !DILocation(line: 80, column: 45, scope: !202)
!215 = !DILocation(line: 80, column: 43, scope: !202)
!216 = !DILocation(line: 80, column: 54, scope: !202)
!217 = !DILocation(line: 80, column: 56, scope: !202)
!218 = !DILocation(line: 80, column: 55, scope: !202)
!219 = !DILocation(line: 80, column: 58, scope: !202)
!220 = !DILocation(line: 80, column: 57, scope: !202)
!221 = !DILocation(line: 80, column: 59, scope: !202)
!222 = !DILocation(line: 80, column: 52, scope: !202)
!223 = !DILocation(line: 80, column: 34, scope: !202)
!224 = !DILocation(line: 80, column: 5, scope: !202)
!225 = !DILocation(line: 80, column: 13, scope: !202)
!226 = !DILocation(line: 80, column: 17, scope: !202)
!227 = !DILocation(line: 81, column: 49, scope: !202)
!228 = !DILocation(line: 81, column: 57, scope: !202)
!229 = !DILocation(line: 81, column: 44, scope: !202)
!230 = !DILocation(line: 81, column: 42, scope: !202)
!231 = !DILocation(line: 81, column: 69, scope: !202)
!232 = !DILocation(line: 81, column: 78, scope: !202)
!233 = !DILocation(line: 81, column: 76, scope: !202)
!234 = !DILocation(line: 81, column: 64, scope: !235)
!235 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 1)
!236 = !DILocation(line: 81, column: 62, scope: !202)
!237 = !DILocation(line: 81, column: 35, scope: !202)
!238 = !DILocation(line: 81, column: 5, scope: !202)
!239 = !DILocation(line: 81, column: 13, scope: !202)
!240 = !DILocation(line: 81, column: 17, scope: !202)
!241 = !DILocation(line: 82, column: 5, scope: !202)
!242 = !DILocation(line: 84, column: 1, scope: !166)
!243 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n_e", scope: !1, file: !1, line: 88, type: !244, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!244 = !DISubroutineType(types: !245)
!245 = !{!48, !48, !49, !49, !50}
!246 = !DILocalVariable(name: "n", arg: 1, scope: !243, file: !1, line: 88, type: !48)
!247 = !DILocation(line: 88, column: 26, scope: !243)
!248 = !DILocalVariable(name: "lambda", arg: 2, scope: !243, file: !1, line: 88, type: !49)
!249 = !DILocation(line: 88, column: 36, scope: !243)
!250 = !DILocalVariable(name: "x", arg: 3, scope: !243, file: !1, line: 88, type: !49)
!251 = !DILocation(line: 88, column: 51, scope: !243)
!252 = !DILocalVariable(name: "result", arg: 4, scope: !243, file: !1, line: 88, type: !50)
!253 = !DILocation(line: 88, column: 70, scope: !243)
!254 = !DILocation(line: 92, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !1, line: 92, column: 6)
!256 = !DILocation(line: 92, column: 13, scope: !255)
!257 = !DILocation(line: 92, column: 21, scope: !255)
!258 = !DILocation(line: 92, column: 24, scope: !259)
!259 = !DILexicalBlockFile(scope: !255, file: !1, discriminator: 1)
!260 = !DILocation(line: 92, column: 26, scope: !259)
!261 = !DILocation(line: 92, column: 6, scope: !259)
!262 = !DILocation(line: 93, column: 5, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !1, line: 92, column: 31)
!264 = distinct !{!264, !262}
!265 = !DILocation(line: 93, column: 5, scope: !266)
!266 = !DILexicalBlockFile(scope: !267, file: !1, discriminator: 1)
!267 = distinct !DILexicalBlock(scope: !263, file: !1, line: 93, column: 5)
!268 = distinct !{!268, !269}
!269 = !DILocation(line: 93, column: 5, scope: !267)
!270 = !DILocation(line: 93, column: 5, scope: !271)
!271 = !DILexicalBlockFile(scope: !272, file: !1, discriminator: 2)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 93, column: 5)
!273 = !DILocation(line: 93, column: 5, scope: !274)
!274 = !DILexicalBlockFile(scope: !267, file: !1, discriminator: 3)
!275 = !DILocation(line: 94, column: 3, scope: !263)
!276 = !DILocation(line: 95, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !255, file: !1, line: 95, column: 11)
!278 = !DILocation(line: 95, column: 13, scope: !277)
!279 = !DILocation(line: 95, column: 11, scope: !255)
!280 = !DILocation(line: 96, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 95, column: 19)
!282 = !DILocation(line: 96, column: 13, scope: !281)
!283 = !DILocation(line: 96, column: 17, scope: !281)
!284 = !DILocation(line: 97, column: 5, scope: !281)
!285 = !DILocation(line: 97, column: 13, scope: !281)
!286 = !DILocation(line: 97, column: 17, scope: !281)
!287 = !DILocation(line: 98, column: 5, scope: !281)
!288 = !DILocation(line: 100, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !277, file: !1, line: 100, column: 11)
!290 = !DILocation(line: 100, column: 13, scope: !289)
!291 = !DILocation(line: 100, column: 11, scope: !277)
!292 = !DILocation(line: 101, column: 33, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 100, column: 19)
!294 = !DILocation(line: 101, column: 41, scope: !293)
!295 = !DILocation(line: 101, column: 44, scope: !293)
!296 = !DILocation(line: 101, column: 12, scope: !293)
!297 = !DILocation(line: 101, column: 5, scope: !293)
!298 = !DILocation(line: 103, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !289, file: !1, line: 103, column: 11)
!300 = !DILocation(line: 103, column: 13, scope: !299)
!301 = !DILocation(line: 103, column: 11, scope: !289)
!302 = !DILocation(line: 104, column: 33, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !1, line: 103, column: 19)
!304 = !DILocation(line: 104, column: 41, scope: !303)
!305 = !DILocation(line: 104, column: 44, scope: !303)
!306 = !DILocation(line: 104, column: 12, scope: !303)
!307 = !DILocation(line: 104, column: 5, scope: !303)
!308 = !DILocation(line: 106, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !1, line: 106, column: 11)
!310 = !DILocation(line: 106, column: 13, scope: !309)
!311 = !DILocation(line: 106, column: 11, scope: !299)
!312 = !DILocation(line: 107, column: 33, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !1, line: 106, column: 19)
!314 = !DILocation(line: 107, column: 41, scope: !313)
!315 = !DILocation(line: 107, column: 44, scope: !313)
!316 = !DILocation(line: 107, column: 12, scope: !313)
!317 = !DILocation(line: 107, column: 5, scope: !313)
!318 = !DILocation(line: 110, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 110, column: 8)
!320 = distinct !DILexicalBlock(scope: !309, file: !1, line: 109, column: 8)
!321 = !DILocation(line: 110, column: 15, scope: !319)
!322 = !DILocation(line: 110, column: 22, scope: !319)
!323 = !DILocation(line: 110, column: 26, scope: !324)
!324 = !DILexicalBlockFile(scope: !319, file: !1, discriminator: 1)
!325 = !DILocation(line: 110, column: 28, scope: !324)
!326 = !DILocation(line: 110, column: 36, scope: !324)
!327 = !DILocation(line: 110, column: 39, scope: !328)
!328 = !DILexicalBlockFile(scope: !319, file: !1, discriminator: 2)
!329 = !DILocation(line: 110, column: 41, scope: !328)
!330 = !DILocation(line: 110, column: 8, scope: !328)
!331 = !DILocalVariable(name: "z", scope: !332, file: !1, line: 112, type: !113)
!332 = distinct !DILexicalBlock(scope: !319, file: !1, line: 110, column: 50)
!333 = !DILocation(line: 112, column: 20, scope: !332)
!334 = !DILocation(line: 112, column: 24, scope: !332)
!335 = !DILocation(line: 112, column: 33, scope: !332)
!336 = !DILocation(line: 112, column: 28, scope: !332)
!337 = !DILocation(line: 112, column: 26, scope: !332)
!338 = !DILocation(line: 113, column: 31, scope: !332)
!339 = !DILocation(line: 113, column: 27, scope: !332)
!340 = !DILocation(line: 113, column: 25, scope: !332)
!341 = !DILocation(line: 113, column: 36, scope: !332)
!342 = !DILocation(line: 113, column: 34, scope: !332)
!343 = !DILocation(line: 113, column: 7, scope: !332)
!344 = !DILocation(line: 113, column: 15, scope: !332)
!345 = !DILocation(line: 113, column: 19, scope: !332)
!346 = !DILocation(line: 114, column: 50, scope: !332)
!347 = !DILocation(line: 114, column: 54, scope: !332)
!348 = !DILocation(line: 114, column: 62, scope: !332)
!349 = !DILocation(line: 114, column: 52, scope: !332)
!350 = !DILocation(line: 114, column: 45, scope: !332)
!351 = !DILocation(line: 114, column: 43, scope: !332)
!352 = !DILocation(line: 114, column: 7, scope: !332)
!353 = !DILocation(line: 114, column: 15, scope: !332)
!354 = !DILocation(line: 114, column: 19, scope: !332)
!355 = !DILocation(line: 115, column: 7, scope: !332)
!356 = !DILocalVariable(name: "k", scope: !357, file: !1, line: 118, type: !48)
!357 = distinct !DILexicalBlock(scope: !319, file: !1, line: 117, column: 10)
!358 = !DILocation(line: 118, column: 11, scope: !357)
!359 = !DILocalVariable(name: "g2", scope: !357, file: !1, line: 119, type: !51)
!360 = !DILocation(line: 119, column: 21, scope: !357)
!361 = !DILocalVariable(name: "g3", scope: !357, file: !1, line: 120, type: !51)
!362 = !DILocation(line: 120, column: 21, scope: !357)
!363 = !DILocalVariable(name: "stat_g2", scope: !357, file: !1, line: 121, type: !48)
!364 = !DILocation(line: 121, column: 11, scope: !357)
!365 = !DILocation(line: 121, column: 42, scope: !357)
!366 = !DILocation(line: 121, column: 50, scope: !357)
!367 = !DILocation(line: 121, column: 21, scope: !357)
!368 = !DILocalVariable(name: "stat_g3", scope: !357, file: !1, line: 122, type: !48)
!369 = !DILocation(line: 122, column: 11, scope: !357)
!370 = !DILocation(line: 122, column: 42, scope: !357)
!371 = !DILocation(line: 122, column: 50, scope: !357)
!372 = !DILocation(line: 122, column: 21, scope: !357)
!373 = !DILocalVariable(name: "stat_g", scope: !357, file: !1, line: 123, type: !48)
!374 = !DILocation(line: 123, column: 11, scope: !357)
!375 = !DILocation(line: 123, column: 21, scope: !357)
!376 = !DILocation(line: 123, column: 21, scope: !377)
!377 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 1)
!378 = !DILocation(line: 123, column: 21, scope: !379)
!379 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 2)
!380 = !DILocation(line: 123, column: 21, scope: !381)
!381 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 3)
!382 = !DILocation(line: 123, column: 21, scope: !383)
!383 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 4)
!384 = !DILocation(line: 123, column: 21, scope: !385)
!385 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 5)
!386 = !DILocation(line: 123, column: 21, scope: !387)
!387 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 6)
!388 = !DILocation(line: 123, column: 11, scope: !387)
!389 = !DILocalVariable(name: "gkm2", scope: !357, file: !1, line: 124, type: !49)
!390 = !DILocation(line: 124, column: 14, scope: !357)
!391 = !DILocation(line: 124, column: 24, scope: !357)
!392 = !DILocalVariable(name: "gkm1", scope: !357, file: !1, line: 125, type: !49)
!393 = !DILocation(line: 125, column: 14, scope: !357)
!394 = !DILocation(line: 125, column: 24, scope: !357)
!395 = !DILocalVariable(name: "gk", scope: !357, file: !1, line: 126, type: !49)
!396 = !DILocation(line: 126, column: 14, scope: !357)
!397 = !DILocation(line: 127, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !357, file: !1, line: 127, column: 7)
!399 = !DILocation(line: 127, column: 11, scope: !398)
!400 = !DILocation(line: 127, column: 16, scope: !401)
!401 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 1)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 127, column: 7)
!403 = !DILocation(line: 127, column: 19, scope: !401)
!404 = !DILocation(line: 127, column: 17, scope: !401)
!405 = !DILocation(line: 127, column: 7, scope: !401)
!406 = !DILocation(line: 128, column: 20, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !1, line: 127, column: 27)
!408 = !DILocation(line: 128, column: 22, scope: !407)
!409 = !DILocation(line: 128, column: 21, scope: !407)
!410 = !DILocation(line: 128, column: 28, scope: !407)
!411 = !DILocation(line: 128, column: 18, scope: !407)
!412 = !DILocation(line: 128, column: 34, scope: !407)
!413 = !DILocation(line: 128, column: 33, scope: !407)
!414 = !DILocation(line: 128, column: 36, scope: !407)
!415 = !DILocation(line: 128, column: 35, scope: !407)
!416 = !DILocation(line: 128, column: 44, scope: !407)
!417 = !DILocation(line: 128, column: 50, scope: !407)
!418 = !DILocation(line: 128, column: 49, scope: !407)
!419 = !DILocation(line: 128, column: 45, scope: !407)
!420 = !DILocation(line: 128, column: 56, scope: !407)
!421 = !DILocation(line: 128, column: 62, scope: !407)
!422 = !DILocation(line: 128, column: 61, scope: !407)
!423 = !DILocation(line: 128, column: 41, scope: !407)
!424 = !DILocation(line: 128, column: 70, scope: !407)
!425 = !DILocation(line: 128, column: 68, scope: !407)
!426 = !DILocation(line: 128, column: 12, scope: !407)
!427 = !DILocation(line: 129, column: 16, scope: !407)
!428 = !DILocation(line: 129, column: 14, scope: !407)
!429 = !DILocation(line: 130, column: 16, scope: !407)
!430 = !DILocation(line: 130, column: 14, scope: !407)
!431 = !DILocation(line: 131, column: 7, scope: !407)
!432 = !DILocation(line: 127, column: 23, scope: !433)
!433 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 2)
!434 = !DILocation(line: 127, column: 7, scope: !433)
!435 = distinct !{!435, !436}
!436 = !DILocation(line: 127, column: 7, scope: !357)
!437 = !DILocation(line: 132, column: 21, scope: !357)
!438 = !DILocation(line: 132, column: 7, scope: !357)
!439 = !DILocation(line: 132, column: 15, scope: !357)
!440 = !DILocation(line: 132, column: 19, scope: !357)
!441 = !DILocation(line: 133, column: 51, scope: !357)
!442 = !DILocation(line: 133, column: 49, scope: !357)
!443 = !DILocation(line: 133, column: 60, scope: !357)
!444 = !DILocation(line: 133, column: 55, scope: !357)
!445 = !DILocation(line: 133, column: 53, scope: !357)
!446 = !DILocation(line: 133, column: 7, scope: !357)
!447 = !DILocation(line: 133, column: 15, scope: !357)
!448 = !DILocation(line: 133, column: 19, scope: !357)
!449 = !DILocation(line: 134, column: 14, scope: !357)
!450 = !DILocation(line: 134, column: 7, scope: !357)
!451 = !DILocation(line: 137, column: 1, scope: !243)
!452 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_array", scope: !1, file: !1, line: 141, type: !453, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!453 = !DISubroutineType(types: !454)
!454 = !{!48, !48, !49, !49, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!456 = !DILocalVariable(name: "nmax", arg: 1, scope: !452, file: !1, line: 141, type: !48)
!457 = !DILocation(line: 141, column: 28, scope: !452)
!458 = !DILocalVariable(name: "lambda", arg: 2, scope: !452, file: !1, line: 141, type: !49)
!459 = !DILocation(line: 141, column: 41, scope: !452)
!460 = !DILocalVariable(name: "x", arg: 3, scope: !452, file: !1, line: 141, type: !49)
!461 = !DILocation(line: 141, column: 56, scope: !452)
!462 = !DILocalVariable(name: "result_array", arg: 4, scope: !452, file: !1, line: 141, type: !455)
!463 = !DILocation(line: 141, column: 68, scope: !452)
!464 = !DILocalVariable(name: "k", scope: !452, file: !1, line: 143, type: !48)
!465 = !DILocation(line: 143, column: 7, scope: !452)
!466 = !DILocation(line: 147, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !452, file: !1, line: 147, column: 6)
!468 = !DILocation(line: 147, column: 13, scope: !467)
!469 = !DILocation(line: 147, column: 21, scope: !467)
!470 = !DILocation(line: 147, column: 24, scope: !471)
!471 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 1)
!472 = !DILocation(line: 147, column: 29, scope: !471)
!473 = !DILocation(line: 147, column: 6, scope: !471)
!474 = !DILocation(line: 148, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !1, line: 147, column: 34)
!476 = distinct !{!476, !474}
!477 = !DILocation(line: 148, column: 5, scope: !478)
!478 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!479 = distinct !DILexicalBlock(scope: !475, file: !1, line: 148, column: 5)
!480 = !DILocation(line: 149, column: 3, scope: !475)
!481 = !DILocation(line: 152, column: 3, scope: !452)
!482 = !DILocation(line: 152, column: 19, scope: !452)
!483 = !DILocation(line: 153, column: 6, scope: !484)
!484 = distinct !DILexicalBlock(scope: !452, file: !1, line: 153, column: 6)
!485 = !DILocation(line: 153, column: 11, scope: !484)
!486 = !DILocation(line: 153, column: 6, scope: !452)
!487 = !DILocation(line: 153, column: 17, scope: !488)
!488 = !DILexicalBlockFile(scope: !484, file: !1, discriminator: 1)
!489 = !DILocation(line: 156, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !452, file: !1, line: 156, column: 6)
!491 = !DILocation(line: 156, column: 13, scope: !490)
!492 = !DILocation(line: 156, column: 6, scope: !452)
!493 = !DILocation(line: 157, column: 27, scope: !490)
!494 = !DILocation(line: 157, column: 26, scope: !490)
!495 = !DILocation(line: 157, column: 5, scope: !490)
!496 = !DILocation(line: 157, column: 21, scope: !490)
!497 = !DILocation(line: 159, column: 27, scope: !490)
!498 = !DILocation(line: 159, column: 26, scope: !490)
!499 = !DILocation(line: 159, column: 34, scope: !490)
!500 = !DILocation(line: 159, column: 33, scope: !490)
!501 = !DILocation(line: 159, column: 5, scope: !490)
!502 = !DILocation(line: 159, column: 21, scope: !490)
!503 = !DILocation(line: 162, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !452, file: !1, line: 162, column: 3)
!505 = !DILocation(line: 162, column: 7, scope: !504)
!506 = !DILocation(line: 162, column: 12, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 1)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 162, column: 3)
!509 = !DILocation(line: 162, column: 15, scope: !507)
!510 = !DILocation(line: 162, column: 13, scope: !507)
!511 = !DILocation(line: 162, column: 3, scope: !507)
!512 = !DILocalVariable(name: "term1", scope: !513, file: !1, line: 163, type: !49)
!513 = distinct !DILexicalBlock(scope: !508, file: !1, line: 162, column: 26)
!514 = !DILocation(line: 163, column: 12, scope: !513)
!515 = !DILocation(line: 163, column: 25, scope: !513)
!516 = !DILocation(line: 163, column: 27, scope: !513)
!517 = !DILocation(line: 163, column: 26, scope: !513)
!518 = !DILocation(line: 163, column: 33, scope: !513)
!519 = !DILocation(line: 163, column: 23, scope: !513)
!520 = !DILocation(line: 163, column: 41, scope: !513)
!521 = !DILocation(line: 163, column: 39, scope: !513)
!522 = !DILocation(line: 163, column: 58, scope: !513)
!523 = !DILocation(line: 163, column: 59, scope: !513)
!524 = !DILocation(line: 163, column: 45, scope: !513)
!525 = !DILocation(line: 163, column: 43, scope: !513)
!526 = !DILocalVariable(name: "term2", scope: !513, file: !1, line: 164, type: !49)
!527 = !DILocation(line: 164, column: 12, scope: !513)
!528 = !DILocation(line: 164, column: 21, scope: !513)
!529 = !DILocation(line: 164, column: 27, scope: !513)
!530 = !DILocation(line: 164, column: 26, scope: !513)
!531 = !DILocation(line: 164, column: 22, scope: !513)
!532 = !DILocation(line: 164, column: 33, scope: !513)
!533 = !DILocation(line: 164, column: 58, scope: !513)
!534 = !DILocation(line: 164, column: 59, scope: !513)
!535 = !DILocation(line: 164, column: 45, scope: !513)
!536 = !DILocation(line: 164, column: 43, scope: !513)
!537 = !DILocation(line: 165, column: 24, scope: !513)
!538 = !DILocation(line: 165, column: 32, scope: !513)
!539 = !DILocation(line: 165, column: 30, scope: !513)
!540 = !DILocation(line: 165, column: 41, scope: !513)
!541 = !DILocation(line: 165, column: 39, scope: !513)
!542 = !DILocation(line: 165, column: 18, scope: !513)
!543 = !DILocation(line: 165, column: 5, scope: !513)
!544 = !DILocation(line: 165, column: 21, scope: !513)
!545 = !DILocation(line: 166, column: 3, scope: !513)
!546 = !DILocation(line: 162, column: 22, scope: !547)
!547 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 2)
!548 = !DILocation(line: 162, column: 3, scope: !547)
!549 = distinct !{!549, !550}
!550 = !DILocation(line: 162, column: 3, scope: !452)
!551 = !DILocation(line: 168, column: 3, scope: !452)
!552 = !DILocation(line: 169, column: 1, scope: !452)
!553 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_1", scope: !1, file: !1, line: 176, type: !554, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!554 = !DISubroutineType(types: !555)
!555 = !{!49, !49, !49}
!556 = !DILocalVariable(name: "lambda", arg: 1, scope: !553, file: !1, line: 176, type: !49)
!557 = !DILocation(line: 176, column: 34, scope: !553)
!558 = !DILocalVariable(name: "x", arg: 2, scope: !553, file: !1, line: 176, type: !49)
!559 = !DILocation(line: 176, column: 49, scope: !553)
!560 = !DILocalVariable(name: "result", scope: !553, file: !1, line: 178, type: !51)
!561 = !DILocation(line: 178, column: 3, scope: !553)
!562 = !DILocalVariable(name: "status", scope: !553, file: !1, line: 178, type: !48)
!563 = !DILocation(line: 178, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !1, line: 178, column: 3)
!565 = !DILocation(line: 178, column: 3, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!567 = distinct !DILexicalBlock(scope: !564, file: !1, line: 178, column: 3)
!568 = distinct !{!568, !569}
!569 = !DILocation(line: 178, column: 3, scope: !567)
!570 = !DILocation(line: 178, column: 3, scope: !571)
!571 = !DILexicalBlockFile(scope: !572, file: !1, discriminator: 2)
!572 = distinct !DILexicalBlock(scope: !567, file: !1, line: 178, column: 3)
!573 = !DILocation(line: 178, column: 3, scope: !574)
!574 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 3)
!575 = !DILocation(line: 178, column: 3, scope: !576)
!576 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 4)
!577 = !DILocation(line: 179, column: 1, scope: !553)
!578 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_2", scope: !1, file: !1, line: 181, type: !554, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!579 = !DILocalVariable(name: "lambda", arg: 1, scope: !578, file: !1, line: 181, type: !49)
!580 = !DILocation(line: 181, column: 34, scope: !578)
!581 = !DILocalVariable(name: "x", arg: 2, scope: !578, file: !1, line: 181, type: !49)
!582 = !DILocation(line: 181, column: 49, scope: !578)
!583 = !DILocalVariable(name: "result", scope: !578, file: !1, line: 183, type: !51)
!584 = !DILocation(line: 183, column: 3, scope: !578)
!585 = !DILocalVariable(name: "status", scope: !578, file: !1, line: 183, type: !48)
!586 = !DILocation(line: 183, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !1, line: 183, column: 3)
!588 = !DILocation(line: 183, column: 3, scope: !589)
!589 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 1)
!590 = distinct !DILexicalBlock(scope: !587, file: !1, line: 183, column: 3)
!591 = distinct !{!591, !592}
!592 = !DILocation(line: 183, column: 3, scope: !590)
!593 = !DILocation(line: 183, column: 3, scope: !594)
!594 = !DILexicalBlockFile(scope: !595, file: !1, discriminator: 2)
!595 = distinct !DILexicalBlock(scope: !590, file: !1, line: 183, column: 3)
!596 = !DILocation(line: 183, column: 3, scope: !597)
!597 = !DILexicalBlockFile(scope: !590, file: !1, discriminator: 3)
!598 = !DILocation(line: 183, column: 3, scope: !599)
!599 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 4)
!600 = !DILocation(line: 184, column: 1, scope: !578)
!601 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_3", scope: !1, file: !1, line: 186, type: !554, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!602 = !DILocalVariable(name: "lambda", arg: 1, scope: !601, file: !1, line: 186, type: !49)
!603 = !DILocation(line: 186, column: 34, scope: !601)
!604 = !DILocalVariable(name: "x", arg: 2, scope: !601, file: !1, line: 186, type: !49)
!605 = !DILocation(line: 186, column: 49, scope: !601)
!606 = !DILocalVariable(name: "result", scope: !601, file: !1, line: 188, type: !51)
!607 = !DILocation(line: 188, column: 3, scope: !601)
!608 = !DILocalVariable(name: "status", scope: !601, file: !1, line: 188, type: !48)
!609 = !DILocation(line: 188, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !601, file: !1, line: 188, column: 3)
!611 = !DILocation(line: 188, column: 3, scope: !612)
!612 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 1)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 188, column: 3)
!614 = distinct !{!614, !615}
!615 = !DILocation(line: 188, column: 3, scope: !613)
!616 = !DILocation(line: 188, column: 3, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!618 = distinct !DILexicalBlock(scope: !613, file: !1, line: 188, column: 3)
!619 = !DILocation(line: 188, column: 3, scope: !620)
!620 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 3)
!621 = !DILocation(line: 188, column: 3, scope: !622)
!622 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 4)
!623 = !DILocation(line: 189, column: 1, scope: !601)
!624 = distinct !DISubprogram(name: "gsl_sf_gegenpoly_n", scope: !1, file: !1, line: 191, type: !625, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!625 = !DISubroutineType(types: !626)
!626 = !{!49, !48, !49, !49}
!627 = !DILocalVariable(name: "n", arg: 1, scope: !624, file: !1, line: 191, type: !48)
!628 = !DILocation(line: 191, column: 31, scope: !624)
!629 = !DILocalVariable(name: "lambda", arg: 2, scope: !624, file: !1, line: 191, type: !49)
!630 = !DILocation(line: 191, column: 41, scope: !624)
!631 = !DILocalVariable(name: "x", arg: 3, scope: !624, file: !1, line: 191, type: !49)
!632 = !DILocation(line: 191, column: 56, scope: !624)
!633 = !DILocalVariable(name: "result", scope: !624, file: !1, line: 193, type: !51)
!634 = !DILocation(line: 193, column: 3, scope: !624)
!635 = !DILocalVariable(name: "status", scope: !624, file: !1, line: 193, type: !48)
!636 = !DILocation(line: 193, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !624, file: !1, line: 193, column: 3)
!638 = !DILocation(line: 193, column: 3, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 1)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 193, column: 3)
!641 = distinct !{!641, !642}
!642 = !DILocation(line: 193, column: 3, scope: !640)
!643 = !DILocation(line: 193, column: 3, scope: !644)
!644 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 2)
!645 = distinct !DILexicalBlock(scope: !640, file: !1, line: 193, column: 3)
!646 = !DILocation(line: 193, column: 3, scope: !647)
!647 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 3)
!648 = !DILocation(line: 193, column: 3, scope: !649)
!649 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 4)
!650 = !DILocation(line: 194, column: 1, scope: !624)
