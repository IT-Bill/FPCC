; ModuleID = 'laguerre.ll'
source_filename = "laguerre.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"laguerre.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"gsl_sf_laguerre_1_e(a, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"gsl_sf_laguerre_2_e(a, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"gsl_sf_laguerre_3_e(a, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_laguerre_n_e(n, a, x, &result)\00", align 1
@0 = private unnamed_addr constant [20 x i8] c"gsl_sf_laguerre_1_e\00"
@1 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_laguerre_2_e\00"
@3 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@4 = private unnamed_addr constant [20 x i8] c"gsl_sf_laguerre_3_e\00"
@5 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@6 = private unnamed_addr constant [20 x i8] c"gsl_sf_laguerre_n_e\00"
@7 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@8 = private unnamed_addr constant [14 x i8] c"laguerre_n_cp\00"
@9 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@10 = private unnamed_addr constant [21 x i8] c"laguerre_n_poly_safe\00"
@11 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@12 = private unnamed_addr constant [17 x i8] c"laguerre_large_n\00"
@13 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@14 = private unnamed_addr constant [18 x i8] c"gsl_sf_laguerre_1\00"
@15 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@16 = private unnamed_addr constant [18 x i8] c"gsl_sf_laguerre_2\00"
@17 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@18 = private unnamed_addr constant [18 x i8] c"gsl_sf_laguerre_3\00"
@19 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"
@20 = private unnamed_addr constant [18 x i8] c"gsl_sf_laguerre_n\00"
@21 = private unnamed_addr constant [12 x i8] c"laguerre.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_laguerre_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !64, metadata !60), !dbg !65
  %7 = load double, double* %4, align 8, !dbg !66
  %8 = fadd double 1.000000e+00, %7, !dbg !68
  call void @fAddHandler(double 1.000000e+00, double %7, double %8, i64 0, i64 94379978707464, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94379978710000, i32 179, i32 23), !dbg !69
  %9 = load double, double* %5, align 8, !dbg !69
  %10 = fsub double %8, %9, !dbg !70
  call void @fSubHandler(double %8, double %9, double %10, i64 94379978710000, i64 94379978710504, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94379978710912, i32 179, i32 27), !dbg !71
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !71
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !72
  store double %10, double* %12, align 8, !dbg !73
  %13 = load double, double* %4, align 8, !dbg !74
  %14 = call double @fabs(double %13) #1, !dbg !75
  %15 = fadd double 1.000000e+00, %14, !dbg !76
  call void @fAddHandler(double 1.000000e+00, double %14, double %15, i64 0, i64 94379978713360, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94379978713824, i32 180, i32 48), !dbg !77
  %16 = load double, double* %5, align 8, !dbg !77
  %17 = call double @fabs(double %16) #1, !dbg !78
  %18 = fadd double %15, %17, !dbg !80
  call void @fAddHandler(double %15, double %17, double %18, i64 94379978713824, i64 94379978710384, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94379978714992, i32 180, i32 58), !dbg !81
  %19 = fmul double 0x3CC0000000000000, %18, !dbg !81
  call void @fMulHandler(double 0x3CC0000000000000, double %18, double %19, i64 0, i64 94379978714992, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94379978715472, i32 180, i32 41), !dbg !82
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !82
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !83
  store double %19, double* %21, align 8, !dbg !84
  ret i32 0, !dbg !85
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_laguerre_2_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !86 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !87, metadata !60), !dbg !88
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !89, metadata !60), !dbg !90
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !91, metadata !60), !dbg !92
  %11 = load double, double* %5, align 8, !dbg !93
  %12 = fcmp oeq double %11, -2.000000e+00, !dbg !95
  %13 = call i1 @fCmpInstHandler(double %11, double -2.000000e+00, i1 %12, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978723920, i32 190, i32 8), !dbg !96
  br i1 %13, label %14, label %28, !dbg !96

; <label>:14:                                     ; preds = %3
  %15 = load double, double* %6, align 8, !dbg !97
  %16 = fmul double 5.000000e-01, %15, !dbg !99
  call void @fMulHandler(double 5.000000e-01, double %15, double %16, i64 0, i64 94379978704264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978725344, i32 191, i32 22), !dbg !100
  %17 = load double, double* %6, align 8, !dbg !100
  %18 = fmul double %16, %17, !dbg !101
  call void @fMulHandler(double %16, double %17, double %18, i64 94379978725344, i64 94379978725704, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978726112, i32 191, i32 24), !dbg !102
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !102
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !103
  store double %18, double* %20, align 8, !dbg !104
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !105
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !106
  %23 = load double, double* %22, align 8, !dbg !106
  %24 = call double @fabs(double %23) #1, !dbg !107
  %25 = fmul double 0x3CC0000000000000, %24, !dbg !108
  call void @fMulHandler(double 0x3CC0000000000000, double %24, double %25, i64 0, i64 94379978719728, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978730656, i32 192, i32 41), !dbg !109
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !109
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !110
  store double %25, double* %27, align 8, !dbg !111
  store i32 0, i32* %4, align 4, !dbg !112
  br label %80, !dbg !112

; <label>:28:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !113, metadata !60), !dbg !115
  %29 = load double, double* %5, align 8, !dbg !116
  %30 = fadd double 2.000000e+00, %29, !dbg !117
  call void @fAddHandler(double 2.000000e+00, double %29, double %30, i64 0, i64 94379978735560, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978736032, i32 196, i32 27), !dbg !118
  %31 = fmul double 5.000000e-01, %30, !dbg !118
  call void @fMulHandler(double 5.000000e-01, double %30, double %31, i64 0, i64 94379978736032, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978736448, i32 196, i32 21), !dbg !119
  %32 = load double, double* %5, align 8, !dbg !119
  %33 = fadd double 1.000000e+00, %32, !dbg !120
  call void @fAddHandler(double 1.000000e+00, double %32, double %33, i64 0, i64 94379978736808, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978737248, i32 196, i32 35), !dbg !121
  %34 = fmul double %31, %33, !dbg !121
  call void @fMulHandler(double %31, double %33, double %34, i64 94379978736448, i64 94379978737248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978738160, i32 196, i32 30), !dbg !115
  store double %34, double* %8, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata double* %9, metadata !122, metadata !60), !dbg !123
  %35 = load double, double* %5, align 8, !dbg !124
  %36 = fadd double 2.000000e+00, %35, !dbg !125
  call void @fAddHandler(double 2.000000e+00, double %35, double %36, i64 0, i64 94379978741352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978741760, i32 197, i32 22), !dbg !126
  %37 = fsub double -0.000000e+00, %36, !dbg !126
  call void @fSubHandler(double -0.000000e+00, double %36, double %37, i64 0, i64 94379978741760, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978742208, i32 197, i32 17), !dbg !123
  store double %37, double* %9, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata double* %10, metadata !127, metadata !60), !dbg !128
  %38 = load double, double* %5, align 8, !dbg !129
  %39 = fadd double 2.000000e+00, %38, !dbg !130
  call void @fAddHandler(double 2.000000e+00, double %38, double %39, i64 0, i64 94379978745400, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978745808, i32 198, i32 26), !dbg !131
  %40 = fdiv double -5.000000e-01, %39, !dbg !131
  call void @fDivHandler(double -5.000000e-01, double %39, double %40, i64 0, i64 94379978745808, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978746288, i32 198, i32 21), !dbg !128
  store double %40, double* %10, align 8, !dbg !128
  %41 = load double, double* %8, align 8, !dbg !132
  %42 = load double, double* %9, align 8, !dbg !133
  %43 = load double, double* %6, align 8, !dbg !134
  %44 = fmul double %42, %43, !dbg !135
  call void @fMulHandler(double %42, double %43, double %44, i64 94379978748712, i64 94379978749096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978749504, i32 199, i32 27), !dbg !136
  %45 = load double, double* %10, align 8, !dbg !136
  %46 = load double, double* %6, align 8, !dbg !137
  %47 = fmul double %45, %46, !dbg !138
  call void @fMulHandler(double %45, double %46, double %47, i64 94379978749896, i64 94379978750280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978750688, i32 199, i32 39), !dbg !139
  %48 = fadd double 1.000000e+00, %47, !dbg !139
  call void @fAddHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94379978750688, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978751136, i32 199, i32 35), !dbg !140
  %49 = fmul double %44, %48, !dbg !140
  call void @fMulHandler(double %44, double %48, double %49, i64 94379978749504, i64 94379978751136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978751520, i32 199, i32 29), !dbg !141
  %50 = fadd double %41, %49, !dbg !141
  call void @fAddHandler(double %41, double %49, double %50, i64 94379978748328, i64 94379978751520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978751936, i32 199, i32 23), !dbg !142
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !142
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !143
  store double %50, double* %52, align 8, !dbg !144
  %53 = load double, double* %8, align 8, !dbg !145
  %54 = call double @fabs(double %53) #1, !dbg !146
  %55 = load double, double* %9, align 8, !dbg !147
  %56 = load double, double* %6, align 8, !dbg !148
  %57 = fmul double %55, %56, !dbg !149
  call void @fMulHandler(double %55, double %56, double %57, i64 94379978754504, i64 94379978754888, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978755296, i32 200, i32 69), !dbg !150
  %58 = call double @fabs(double %57) #1, !dbg !150
  %59 = fmul double 2.000000e+00, %58, !dbg !152
  call void @fMulHandler(double 2.000000e+00, double %58, double %59, i64 0, i64 94379978755776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978756288, i32 200, i32 60), !dbg !153
  %60 = load double, double* %10, align 8, !dbg !153
  %61 = load double, double* %6, align 8, !dbg !154
  %62 = fmul double %60, %61, !dbg !155
  call void @fMulHandler(double %60, double %61, double %62, i64 94379978756648, i64 94379978757032, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978757440, i32 200, i32 95), !dbg !156
  %63 = call double @fabs(double %62) #1, !dbg !156
  %64 = fmul double 2.000000e+00, %63, !dbg !158
  call void @fMulHandler(double 2.000000e+00, double %63, double %64, i64 0, i64 94379978757920, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978758432, i32 200, i32 86), !dbg !159
  %65 = fadd double 1.000000e+00, %64, !dbg !159
  call void @fAddHandler(double 1.000000e+00, double %64, double %65, i64 0, i64 94379978758432, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978758848, i32 200, i32 80), !dbg !160
  %66 = fmul double %59, %65, !dbg !160
  call void @fMulHandler(double %59, double %65, double %66, i64 94379978756288, i64 94379978758848, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978760272, i32 200, i32 73), !dbg !161
  %67 = fadd double %54, %66, !dbg !161
  call void @fAddHandler(double %54, double %66, double %67, i64 94379978754048, i64 94379978760272, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978760688, i32 200, i32 54), !dbg !162
  %68 = fmul double 0x3CC0000000000000, %67, !dbg !162
  call void @fMulHandler(double 0x3CC0000000000000, double %67, double %68, i64 0, i64 94379978760688, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978761104, i32 200, i32 42), !dbg !163
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !163
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !164
  store double %68, double* %70, align 8, !dbg !165
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !166
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !167
  %73 = load double, double* %72, align 8, !dbg !167
  %74 = call double @fabs(double %73) #1, !dbg !168
  %75 = fmul double 0x3CC0000000000000, %74, !dbg !169
  call void @fMulHandler(double 0x3CC0000000000000, double %74, double %75, i64 0, i64 94379978765312, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978765792, i32 201, i32 42), !dbg !170
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !170
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !171
  %78 = load double, double* %77, align 8, !dbg !172
  %79 = fadd double %78, %75, !dbg !172
  call void @fAddHandler(double %78, double %75, double %79, i64 94379978767016, i64 94379978765792, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94379978767424, i32 201, i32 17), !dbg !172
  store double %79, double* %77, align 8, !dbg !172
  store i32 0, i32* %4, align 4, !dbg !173
  br label %80, !dbg !173

; <label>:80:                                     ; preds = %28, %14
  %81 = load i32, i32* %4, align 4, !dbg !174
  ret i32 %81, !dbg !174
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_laguerre_3_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !175 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !176, metadata !60), !dbg !177
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !178, metadata !60), !dbg !179
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !180, metadata !60), !dbg !181
  %13 = load double, double* %5, align 8, !dbg !182
  %14 = fcmp oeq double %13, -2.000000e+00, !dbg !184
  %15 = call i1 @fCmpInstHandler(double %13, double -2.000000e+00, i1 %14, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978779424, i32 211, i32 8), !dbg !185
  br i1 %15, label %16, label %45, !dbg !185

; <label>:16:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !186, metadata !60), !dbg !188
  %17 = load double, double* %6, align 8, !dbg !189
  %18 = load double, double* %6, align 8, !dbg !190
  %19 = fmul double %17, %18, !dbg !191
  call void @fMulHandler(double %17, double %18, double %19, i64 94379978781560, i64 94379978781912, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978782320, i32 212, i32 21), !dbg !192
  %20 = fdiv double %19, 6.000000e+00, !dbg !192
  call void @fDivHandler(double %19, double 6.000000e+00, double %20, i64 94379978782320, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978782832, i32 212, i32 23), !dbg !188
  store double %20, double* %8, align 8, !dbg !188
  %21 = load double, double* %8, align 8, !dbg !193
  %22 = load double, double* %6, align 8, !dbg !194
  %23 = fsub double 3.000000e+00, %22, !dbg !195
  call void @fSubHandler(double 3.000000e+00, double %22, double %23, i64 0, i64 94379978785256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978785760, i32 213, i32 32), !dbg !196
  %24 = fmul double %21, %23, !dbg !196
  call void @fMulHandler(double %21, double %23, double %24, i64 94379978784872, i64 94379978785760, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978786144, i32 213, i32 25), !dbg !197
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !197
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !198
  store double %24, double* %26, align 8, !dbg !199
  %27 = load double, double* %8, align 8, !dbg !200
  %28 = load double, double* %6, align 8, !dbg !201
  %29 = call double @fabs(double %28) #1, !dbg !202
  %30 = fadd double 3.000000e+00, %29, !dbg !203
  call void @fAddHandler(double 3.000000e+00, double %29, double %30, i64 0, i64 94379978774976, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978789008, i32 214, i32 32), !dbg !204
  %31 = fmul double %27, %30, !dbg !204
  call void @fMulHandler(double %27, double %30, double %31, i64 94379978787784, i64 94379978789008, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978789392, i32 214, i32 25), !dbg !205
  %32 = fmul double %31, 2.000000e+00, !dbg !205
  call void @fMulHandler(double %31, double 2.000000e+00, double %32, i64 94379978789392, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978789840, i32 214, i32 43), !dbg !206
  %33 = fmul double %32, 0x3CB0000000000000, !dbg !206
  call void @fMulHandler(double %32, double 0x3CB0000000000000, double %33, i64 94379978789840, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978790288, i32 214, i32 49), !dbg !207
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !207
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !208
  store double %33, double* %35, align 8, !dbg !209
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !211
  %38 = load double, double* %37, align 8, !dbg !211
  %39 = call double @fabs(double %38) #1, !dbg !212
  %40 = fmul double 0x3CC0000000000000, %39, !dbg !213
  call void @fMulHandler(double 0x3CC0000000000000, double %39, double %40, i64 0, i64 94379978794496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978794976, i32 215, i32 42), !dbg !214
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !214
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !215
  %43 = load double, double* %42, align 8, !dbg !216
  %44 = fadd double %43, %40, !dbg !216
  call void @fAddHandler(double %43, double %40, double %44, i64 94379978796200, i64 94379978794976, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978796608, i32 215, i32 17), !dbg !216
  store double %44, double* %42, align 8, !dbg !216
  store i32 0, i32* %4, align 4, !dbg !217
  br label %148, !dbg !217

; <label>:45:                                     ; preds = %3
  %46 = load double, double* %5, align 8, !dbg !218
  %47 = fcmp oeq double %46, -3.000000e+00, !dbg !220
  %48 = call i1 @fCmpInstHandler(double %46, double -3.000000e+00, i1 %47, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978801040, i32 218, i32 13), !dbg !221
  br i1 %48, label %49, label %64, !dbg !221

; <label>:49:                                     ; preds = %45
  %50 = load double, double* %6, align 8, !dbg !222
  %51 = fsub double -0.000000e+00, %50, !dbg !224
  call void @fSubHandler(double -0.000000e+00, double %50, double %51, i64 0, i64 94379978802120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978802464, i32 219, i32 19), !dbg !225
  %52 = load double, double* %6, align 8, !dbg !225
  %53 = fmul double %51, %52, !dbg !226
  call void @fMulHandler(double %51, double %52, double %53, i64 94379978802464, i64 94379978802856, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978803264, i32 219, i32 21), !dbg !227
  %54 = fdiv double %53, 6.000000e+00, !dbg !227
  call void @fDivHandler(double %53, double 6.000000e+00, double %54, i64 94379978803264, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978803712, i32 219, i32 23), !dbg !228
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !228
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !229
  store double %54, double* %56, align 8, !dbg !230
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !231
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !232
  %59 = load double, double* %58, align 8, !dbg !232
  %60 = call double @fabs(double %59) #1, !dbg !233
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !234
  call void @fMulHandler(double 0x3CC0000000000000, double %60, double %61, i64 0, i64 94379978807888, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978808368, i32 220, i32 41), !dbg !235
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !236
  store double %61, double* %63, align 8, !dbg !237
  store i32 0, i32* %4, align 4, !dbg !238
  br label %148, !dbg !238

; <label>:64:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %9, metadata !239, metadata !60), !dbg !241
  %65 = load double, double* %5, align 8, !dbg !242
  %66 = fadd double 3.000000e+00, %65, !dbg !243
  call void @fAddHandler(double 3.000000e+00, double %65, double %66, i64 0, i64 94379978813128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978813536, i32 224, i32 21), !dbg !244
  %67 = load double, double* %5, align 8, !dbg !244
  %68 = fadd double 2.000000e+00, %67, !dbg !245
  call void @fAddHandler(double 2.000000e+00, double %67, double %68, i64 0, i64 94379978813896, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978814336, i32 224, i32 29), !dbg !246
  %69 = fmul double %66, %68, !dbg !246
  call void @fMulHandler(double %66, double %68, double %69, i64 94379978813536, i64 94379978814336, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978814720, i32 224, i32 24), !dbg !247
  %70 = load double, double* %5, align 8, !dbg !247
  %71 = fadd double 1.000000e+00, %70, !dbg !248
  call void @fAddHandler(double 1.000000e+00, double %70, double %71, i64 0, i64 94379978815112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978815552, i32 224, i32 37), !dbg !249
  %72 = fmul double %69, %71, !dbg !249
  call void @fMulHandler(double %69, double %71, double %72, i64 94379978814720, i64 94379978815552, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978815936, i32 224, i32 32), !dbg !250
  %73 = fdiv double %72, 6.000000e+00, !dbg !250
  call void @fDivHandler(double %72, double 6.000000e+00, double %73, i64 94379978815936, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978816384, i32 224, i32 41), !dbg !241
  store double %73, double* %9, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata double* %10, metadata !251, metadata !60), !dbg !252
  %74 = load double, double* %9, align 8, !dbg !253
  %75 = fsub double -0.000000e+00, %74, !dbg !254
  call void @fSubHandler(double -0.000000e+00, double %74, double %75, i64 0, i64 94379978819544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978819920, i32 225, i32 17), !dbg !255
  %76 = fmul double %75, 3.000000e+00, !dbg !255
  call void @fMulHandler(double %75, double 3.000000e+00, double %76, i64 94379978819920, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978820368, i32 225, i32 21), !dbg !256
  %77 = load double, double* %5, align 8, !dbg !256
  %78 = fadd double 1.000000e+00, %77, !dbg !257
  call void @fAddHandler(double 1.000000e+00, double %77, double %78, i64 0, i64 94379978820728, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978821168, i32 225, i32 33), !dbg !258
  %79 = fdiv double %76, %78, !dbg !258
  call void @fDivHandler(double %76, double %78, double %79, i64 94379978820368, i64 94379978821168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978821552, i32 225, i32 27), !dbg !252
  store double %79, double* %10, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %11, metadata !259, metadata !60), !dbg !260
  %80 = load double, double* %5, align 8, !dbg !261
  %81 = fadd double 2.000000e+00, %80, !dbg !262
  call void @fAddHandler(double 2.000000e+00, double %80, double %81, i64 0, i64 94379978824744, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978825152, i32 226, i32 26), !dbg !263
  %82 = fdiv double -1.000000e+00, %81, !dbg !263
  call void @fDivHandler(double -1.000000e+00, double %81, double %82, i64 0, i64 94379978825152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978825632, i32 226, i32 21), !dbg !260
  store double %82, double* %11, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata double* %12, metadata !264, metadata !60), !dbg !265
  %83 = load double, double* %5, align 8, !dbg !266
  %84 = fadd double 3.000000e+00, %83, !dbg !267
  call void @fAddHandler(double 3.000000e+00, double %83, double %84, i64 0, i64 94379978828792, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978829200, i32 227, i32 31), !dbg !268
  %85 = fmul double 3.000000e+00, %84, !dbg !268
  call void @fMulHandler(double 3.000000e+00, double %84, double %85, i64 0, i64 94379978829200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978829616, i32 227, i32 26), !dbg !269
  %86 = fdiv double -1.000000e+00, %85, !dbg !269
  call void @fDivHandler(double -1.000000e+00, double %85, double %86, i64 0, i64 94379978829616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978830032, i32 227, i32 21), !dbg !265
  store double %86, double* %12, align 8, !dbg !265
  %87 = load double, double* %9, align 8, !dbg !270
  %88 = load double, double* %10, align 8, !dbg !271
  %89 = load double, double* %6, align 8, !dbg !272
  %90 = fmul double %88, %89, !dbg !273
  call void @fMulHandler(double %88, double %89, double %90, i64 94379978832456, i64 94379978832840, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978833248, i32 228, i32 27), !dbg !274
  %91 = load double, double* %11, align 8, !dbg !274
  %92 = load double, double* %6, align 8, !dbg !275
  %93 = fmul double %91, %92, !dbg !276
  call void @fMulHandler(double %91, double %92, double %93, i64 94379978833640, i64 94379978834024, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978834432, i32 228, i32 39), !dbg !277
  %94 = load double, double* %12, align 8, !dbg !277
  %95 = load double, double* %6, align 8, !dbg !278
  %96 = fmul double %94, %95, !dbg !279
  call void @fMulHandler(double %94, double %95, double %96, i64 94379978834824, i64 94379978835208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978835616, i32 228, i32 51), !dbg !280
  %97 = fadd double 1.000000e+00, %96, !dbg !280
  call void @fAddHandler(double 1.000000e+00, double %96, double %97, i64 0, i64 94379978835616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978836064, i32 228, i32 47), !dbg !281
  %98 = fmul double %93, %97, !dbg !281
  call void @fMulHandler(double %93, double %97, double %98, i64 94379978834432, i64 94379978836064, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978836448, i32 228, i32 41), !dbg !282
  %99 = fadd double 1.000000e+00, %98, !dbg !282
  call void @fAddHandler(double 1.000000e+00, double %98, double %99, i64 0, i64 94379978836448, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978836896, i32 228, i32 35), !dbg !283
  %100 = fmul double %90, %99, !dbg !283
  call void @fMulHandler(double %90, double %99, double %100, i64 94379978833248, i64 94379978836896, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978837280, i32 228, i32 29), !dbg !284
  %101 = fadd double %87, %100, !dbg !284
  call void @fAddHandler(double %87, double %100, double %101, i64 94379978832072, i64 94379978837280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978837696, i32 228, i32 23), !dbg !285
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !285
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !286
  store double %101, double* %103, align 8, !dbg !287
  %104 = load double, double* %12, align 8, !dbg !288
  %105 = load double, double* %6, align 8, !dbg !289
  %106 = fmul double %104, %105, !dbg !290
  call void @fMulHandler(double %104, double %105, double %106, i64 94379978839336, i64 94379978839720, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978840128, i32 229, i32 39), !dbg !291
  %107 = call double @fabs(double %106) #1, !dbg !291
  %108 = fmul double 2.000000e+00, %107, !dbg !292
  call void @fMulHandler(double 2.000000e+00, double %107, double %108, i64 0, i64 94379978840608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978841120, i32 229, i32 30), !dbg !293
  %109 = fadd double 1.000000e+00, %108, !dbg !293
  call void @fAddHandler(double 1.000000e+00, double %108, double %109, i64 0, i64 94379978841120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978841536, i32 229, i32 24), !dbg !294
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !294
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !295
  store double %109, double* %111, align 8, !dbg !296
  %112 = load double, double* %11, align 8, !dbg !297
  %113 = load double, double* %6, align 8, !dbg !298
  %114 = fmul double %112, %113, !dbg !299
  call void @fMulHandler(double %112, double %113, double %114, i64 94379978843144, i64 94379978843528, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978843936, i32 230, i32 39), !dbg !300
  %115 = call double @fabs(double %114) #1, !dbg !300
  %116 = fmul double 2.000000e+00, %115, !dbg !301
  call void @fMulHandler(double 2.000000e+00, double %115, double %116, i64 0, i64 94379978844416, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978844928, i32 230, i32 30), !dbg !302
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !302
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !303
  %119 = load double, double* %118, align 8, !dbg !303
  %120 = fmul double %116, %119, !dbg !304
  call void @fMulHandler(double %116, double %119, double %120, i64 94379978844928, i64 94379978846120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978847792, i32 230, i32 43), !dbg !305
  %121 = fadd double 1.000000e+00, %120, !dbg !305
  call void @fAddHandler(double 1.000000e+00, double %120, double %121, i64 0, i64 94379978847792, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978848240, i32 230, i32 24), !dbg !306
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !306
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 1, !dbg !307
  store double %121, double* %123, align 8, !dbg !308
  %124 = load double, double* %9, align 8, !dbg !309
  %125 = call double @fabs(double %124) #1, !dbg !310
  %126 = load double, double* %10, align 8, !dbg !311
  %127 = load double, double* %6, align 8, !dbg !312
  %128 = fmul double %126, %127, !dbg !313
  call void @fMulHandler(double %126, double %127, double %128, i64 94379978850776, i64 94379978851160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978851568, i32 231, i32 69), !dbg !314
  %129 = call double @fabs(double %128) #1, !dbg !314
  %130 = fmul double 2.000000e+00, %129, !dbg !316
  call void @fMulHandler(double 2.000000e+00, double %129, double %130, i64 0, i64 94379978852048, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978852560, i32 231, i32 60), !dbg !317
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !317
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !318
  %133 = load double, double* %132, align 8, !dbg !318
  %134 = fmul double %130, %133, !dbg !319
  call void @fMulHandler(double %130, double %133, double %134, i64 94379978852560, i64 94379978855816, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978857488, i32 231, i32 73), !dbg !320
  %135 = fadd double %125, %134, !dbg !320
  call void @fAddHandler(double %125, double %134, double %135, i64 94379978850320, i64 94379978857488, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978857904, i32 231, i32 54), !dbg !321
  %136 = fmul double 0x3CC0000000000000, %135, !dbg !321
  call void @fMulHandler(double 0x3CC0000000000000, double %135, double %136, i64 0, i64 94379978857904, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978858320, i32 231, i32 42), !dbg !322
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !322
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !323
  store double %136, double* %138, align 8, !dbg !324
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !325
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !326
  %141 = load double, double* %140, align 8, !dbg !326
  %142 = call double @fabs(double %141) #1, !dbg !327
  %143 = fmul double 0x3CC0000000000000, %142, !dbg !328
  call void @fMulHandler(double 0x3CC0000000000000, double %142, double %143, i64 0, i64 94379978862528, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978863008, i32 232, i32 42), !dbg !329
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !329
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !330
  %146 = load double, double* %145, align 8, !dbg !331
  %147 = fadd double %146, %143, !dbg !331
  call void @fAddHandler(double %146, double %143, double %147, i64 94379978864232, i64 94379978863008, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94379978864640, i32 232, i32 17), !dbg !331
  store double %147, double* %145, align 8, !dbg !331
  store i32 0, i32* %4, align 4, !dbg !332
  br label %148, !dbg !332

; <label>:148:                                    ; preds = %64, %49, %16
  %149 = load i32, i32* %4, align 4, !dbg !333
  ret i32 %149, !dbg !333
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_laguerre_n_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !334 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !338, metadata !60), !dbg !339
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !340, metadata !60), !dbg !341
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !342, metadata !60), !dbg !343
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !344, metadata !60), !dbg !345
  %18 = load i32, i32* %6, align 4, !dbg !346
  %19 = icmp slt i32 %18, 0, !dbg !348
  %20 = sext i32 %18 to i64, !dbg !349
  %21 = call i1 @iCmpInstHandler(i64 %20, i64 0, i1 %19, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978876128, i32 243, i32 8), !dbg !349
  br i1 %21, label %22, label %31, !dbg !349

; <label>:22:                                     ; preds = %4
  br label %23, !dbg !350, !llvm.loop !352

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !353
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !353
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !353
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !353
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !353
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !353
  br label %28, !dbg !353, !llvm.loop !356

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 244, i32 1), !dbg !358
  store i32 1, i32* %5, align 4, !dbg !358
  br label %268, !dbg !358
                                                  ; No predecessors!
  br label %30, !dbg !361

; <label>:30:                                     ; preds = %29
  br label %268, !dbg !363

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* %6, align 4, !dbg !364
  %33 = icmp eq i32 %32, 0, !dbg !366
  %34 = sext i32 %32 to i64, !dbg !367
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 0, i1 %33, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978889952, i32 246, i32 13), !dbg !367
  br i1 %35, label %36, label %41, !dbg !367

; <label>:36:                                     ; preds = %31
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !368
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !370
  store double 1.000000e+00, double* %38, align 8, !dbg !371
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !372
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !373
  store double 0.000000e+00, double* %40, align 8, !dbg !374
  store i32 0, i32* %5, align 4, !dbg !375
  br label %268, !dbg !375

; <label>:41:                                     ; preds = %31
  %42 = load i32, i32* %6, align 4, !dbg !376
  %43 = icmp eq i32 %42, 1, !dbg !378
  %44 = sext i32 %42 to i64, !dbg !379
  %45 = call i1 @iCmpInstHandler(i64 %44, i64 1, i1 %43, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978896496, i32 251, i32 13), !dbg !379
  br i1 %45, label %46, label %62, !dbg !379

; <label>:46:                                     ; preds = %41
  %47 = load double, double* %7, align 8, !dbg !380
  %48 = fadd double 1.000000e+00, %47, !dbg !382
  call void @fAddHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94379978897608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978897984, i32 252, i32 23), !dbg !383
  %49 = load double, double* %8, align 8, !dbg !383
  %50 = fsub double %48, %49, !dbg !384
  call void @fSubHandler(double %48, double %49, double %50, i64 94379978897984, i64 94379978898344, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978898752, i32 252, i32 27), !dbg !385
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !385
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !386
  store double %50, double* %52, align 8, !dbg !387
  %53 = load double, double* %7, align 8, !dbg !388
  %54 = call double @fabs(double %53) #1, !dbg !389
  %55 = fadd double 1.000000e+00, %54, !dbg !390
  call void @fAddHandler(double 1.000000e+00, double %54, double %55, i64 0, i64 94379978900864, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978901376, i32 253, i32 48), !dbg !391
  %56 = load double, double* %8, align 8, !dbg !391
  %57 = call double @fabs(double %56) #1, !dbg !392
  %58 = fadd double %55, %57, !dbg !394
  call void @fAddHandler(double %55, double %57, double %58, i64 94379978901376, i64 94379978902208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978902688, i32 253, i32 58), !dbg !395
  %59 = fmul double 0x3CC0000000000000, %58, !dbg !395
  call void @fMulHandler(double 0x3CC0000000000000, double %58, double %59, i64 0, i64 94379978902688, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978903104, i32 253, i32 41), !dbg !396
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !396
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !397
  store double %59, double* %61, align 8, !dbg !398
  store i32 0, i32* %5, align 4, !dbg !399
  br label %268, !dbg !399

; <label>:62:                                     ; preds = %41
  %63 = load double, double* %8, align 8, !dbg !400
  %64 = fcmp oeq double %63, 0.000000e+00, !dbg !402
  %65 = call i1 @fCmpInstHandler(double %63, double 0.000000e+00, i1 %64, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978907152, i32 256, i32 13), !dbg !403
  br i1 %65, label %66, label %104, !dbg !403

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %10, metadata !404, metadata !60), !dbg !406
  %67 = load double, double* %7, align 8, !dbg !407
  %68 = fadd double %67, 1.000000e+00, !dbg !408
  call void @fAddHandler(double %67, double 1.000000e+00, double %68, i64 94379978909416, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978909824, i32 257, i32 24), !dbg !406
  store double %68, double* %10, align 8, !dbg !406
  call void @llvm.dbg.declare(metadata i32* %11, metadata !409, metadata !60), !dbg !410
  store i32 2, i32* %11, align 4, !dbg !411
  br label %69, !dbg !413

; <label>:69:                                     ; preds = %86, %66
  %70 = load i32, i32* %11, align 4, !dbg !414
  %71 = load i32, i32* %6, align 4, !dbg !417
  %72 = icmp sle i32 %70, %71, !dbg !418
  %73 = sext i32 %70 to i64, !dbg !419
  %74 = sext i32 %71 to i64, !dbg !419
  %75 = call i1 @iCmpInstHandler(i64 %73, i64 %74, i1 %72, i32 41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978914688, i32 259, i32 15), !dbg !419
  br i1 %75, label %76, label %89, !dbg !419

; <label>:76:                                     ; preds = %69
  %77 = load double, double* %7, align 8, !dbg !420
  %78 = load i32, i32* %11, align 4, !dbg !422
  %79 = sitofp i32 %78 to double, !dbg !422
  %80 = fadd double %77, %79, !dbg !423
  call void @fAddHandler(double %77, double %79, double %80, i64 94379978915800, i64 94379978916504, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978918176, i32 260, i32 21), !dbg !424
  %81 = load i32, i32* %11, align 4, !dbg !424
  %82 = sitofp i32 %81 to double, !dbg !424
  %83 = fdiv double %80, %82, !dbg !425
  call void @fDivHandler(double %80, double %82, double %83, i64 94379978918176, i64 94379978918952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978920624, i32 260, i32 25), !dbg !426
  %84 = load double, double* %10, align 8, !dbg !426
  %85 = fmul double %84, %83, !dbg !426
  call void @fMulHandler(double %84, double %83, double %85, i64 94379978921016, i64 94379978920624, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978921424, i32 260, i32 15), !dbg !426
  store double %85, double* %10, align 8, !dbg !426
  br label %86, !dbg !427

; <label>:86:                                     ; preds = %76
  %87 = load i32, i32* %11, align 4, !dbg !428
  %88 = add nsw i32 %87, 1, !dbg !428
  store i32 %88, i32* %11, align 4, !dbg !428
  br label %69, !dbg !430, !llvm.loop !431

; <label>:89:                                     ; preds = %69
  %90 = load double, double* %10, align 8, !dbg !433
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !434
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !435
  store double %90, double* %92, align 8, !dbg !436
  %93 = load i32, i32* %6, align 4, !dbg !437
  %94 = sitofp i32 %93 to double, !dbg !437
  %95 = fadd double %94, 1.000000e+00, !dbg !438
  call void @fAddHandler(double %94, double 1.000000e+00, double %95, i64 94379978928488, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978930192, i32 263, i32 28), !dbg !439
  %96 = fmul double 2.000000e+00, %95, !dbg !439
  call void @fMulHandler(double 2.000000e+00, double %95, double %96, i64 0, i64 94379978930192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978930608, i32 263, i32 23), !dbg !440
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !440
  call void @fMulHandler(double %96, double 0x3CB0000000000000, double %97, i64 94379978930608, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978930992, i32 263, i32 35), !dbg !441
  %98 = load double, double* %10, align 8, !dbg !441
  %99 = call double @fabs(double %98) #1, !dbg !442
  %100 = fmul double %97, %99, !dbg !443
  call void @fMulHandler(double %97, double %99, double %100, i64 94379978930992, i64 94379978931856, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978932336, i32 263, i32 53), !dbg !444
  %101 = fadd double %100, 0x3CB0000000000000, !dbg !444
  call void @fAddHandler(double %100, double 0x3CB0000000000000, double %101, i64 94379978932336, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978932752, i32 263, i32 69), !dbg !445
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !445
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !446
  store double %101, double* %103, align 8, !dbg !447
  store i32 0, i32* %5, align 4, !dbg !448
  br label %268, !dbg !448

; <label>:104:                                    ; preds = %62
  %105 = load double, double* %8, align 8, !dbg !449
  %106 = fcmp olt double %105, 0.000000e+00, !dbg !451
  %107 = call i1 @fCmpInstHandler(double %105, double 0.000000e+00, i1 %106, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978936800, i32 266, i32 13), !dbg !452
  br i1 %107, label %108, label %118, !dbg !452

; <label>:108:                                    ; preds = %104
  %109 = load double, double* %7, align 8, !dbg !453
  %110 = fcmp ogt double %109, -1.000000e+00, !dbg !455
  %111 = call i1 @fCmpInstHandler(double %109, double -1.000000e+00, i1 %110, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978938288, i32 266, i32 24), !dbg !456
  br i1 %111, label %112, label %118, !dbg !456

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %6, align 4, !dbg !457
  %114 = load double, double* %7, align 8, !dbg !459
  %115 = load double, double* %8, align 8, !dbg !460
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !461
  %117 = call i32 @laguerre_n_cp(i32 %113, double %114, double %115, %struct.gsl_sf_result_struct* %116), !dbg !462
  store i32 %117, i32* %5, align 4, !dbg !463
  br label %268, !dbg !463

; <label>:118:                                    ; preds = %108, %104
  %119 = load i32, i32* %6, align 4, !dbg !464
  %120 = icmp slt i32 %119, 5, !dbg !466
  %121 = sext i32 %119 to i64, !dbg !467
  %122 = call i1 @iCmpInstHandler(i64 %121, i64 5, i1 %120, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978944016, i32 273, i32 13), !dbg !467
  br i1 %122, label %135, label %123, !dbg !467

; <label>:123:                                    ; preds = %118
  %124 = load double, double* %8, align 8, !dbg !468
  %125 = fcmp ogt double %124, 0.000000e+00, !dbg !470
  %126 = call i1 @fCmpInstHandler(double %124, double 0.000000e+00, i1 %125, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978945472, i32 273, i32 23), !dbg !471
  br i1 %126, label %127, label %151, !dbg !471

; <label>:127:                                    ; preds = %123
  %128 = load double, double* %7, align 8, !dbg !472
  %129 = load i32, i32* %6, align 4, !dbg !474
  %130 = sub nsw i32 0, %129, !dbg !475
  %131 = sub nsw i32 %130, 1, !dbg !476
  %132 = sitofp i32 %131 to double, !dbg !475
  %133 = fcmp olt double %128, %132, !dbg !477
  %134 = call i1 @fCmpInstHandler(double %128, double %132, i1 %133, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978949792, i32 273, i32 34), !dbg !478
  br i1 %134, label %135, label %151, !dbg !478

; <label>:135:                                    ; preds = %127, %118
  %136 = load i32, i32* %6, align 4, !dbg !479
  %137 = load double, double* %7, align 8, !dbg !482
  %138 = load double, double* %8, align 8, !dbg !483
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !484
  %140 = call i32 @laguerre_n_cp(i32 %136, double %137, double %138, %struct.gsl_sf_result_struct* %139), !dbg !485
  %141 = icmp eq i32 %140, 0, !dbg !486
  %142 = sext i32 %140 to i64, !dbg !487
  %143 = call i1 @iCmpInstHandler(i64 %142, i64 0, i1 %141, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978952768, i32 281, i32 39), !dbg !487
  br i1 %143, label %144, label %145, !dbg !487

; <label>:144:                                    ; preds = %135
  store i32 0, i32* %5, align 4, !dbg !488
  br label %268, !dbg !488

; <label>:145:                                    ; preds = %135
  %146 = load i32, i32* %6, align 4, !dbg !489
  %147 = load double, double* %7, align 8, !dbg !490
  %148 = load double, double* %8, align 8, !dbg !491
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !492
  %150 = call i32 @laguerre_n_poly_safe(i32 %146, double %147, double %148, %struct.gsl_sf_result_struct* %149), !dbg !493
  store i32 %150, i32* %5, align 4, !dbg !494
  br label %268, !dbg !494

; <label>:151:                                    ; preds = %127, %123
  %152 = load i32, i32* %6, align 4, !dbg !495
  %153 = sitofp i32 %152 to double, !dbg !495
  %154 = fcmp ogt double %153, 1.000000e+07, !dbg !497
  %155 = call i1 @fCmpInstHandler(double %153, double 1.000000e+07, i1 %154, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978964512, i32 286, i32 13), !dbg !498
  br i1 %155, label %156, label %181, !dbg !498

; <label>:156:                                    ; preds = %151
  %157 = load double, double* %8, align 8, !dbg !499
  %158 = fcmp ogt double %157, 0.000000e+00, !dbg !501
  %159 = call i1 @fCmpInstHandler(double %157, double 0.000000e+00, i1 %158, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978965936, i32 286, i32 28), !dbg !502
  br i1 %159, label %160, label %181, !dbg !502

; <label>:160:                                    ; preds = %156
  %161 = load double, double* %7, align 8, !dbg !503
  %162 = fcmp ogt double %161, -1.000000e+00, !dbg !505
  %163 = call i1 @fCmpInstHandler(double %161, double -1.000000e+00, i1 %162, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978967280, i32 286, i32 39), !dbg !506
  br i1 %163, label %164, label %181, !dbg !506

; <label>:164:                                    ; preds = %160
  %165 = load double, double* %8, align 8, !dbg !507
  %166 = load double, double* %7, align 8, !dbg !509
  %167 = fadd double %166, 1.000000e+00, !dbg !510
  call void @fAddHandler(double %166, double 1.000000e+00, double %167, i64 94379978968536, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978968976, i32 286, i32 59), !dbg !511
  %168 = fmul double 2.000000e+00, %167, !dbg !511
  call void @fMulHandler(double 2.000000e+00, double %167, double %168, i64 0, i64 94379978968976, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978969392, i32 286, i32 56), !dbg !512
  %169 = load i32, i32* %6, align 4, !dbg !512
  %170 = sitofp i32 %169 to double, !dbg !512
  %171 = fmul double 4.000000e+00, %170, !dbg !513
  call void @fMulHandler(double 4.000000e+00, double %170, double %171, i64 0, i64 94379978970136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978971904, i32 286, i32 68), !dbg !514
  %172 = fadd double %168, %171, !dbg !514
  call void @fAddHandler(double %168, double %171, double %172, i64 94379978969392, i64 94379978971904, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978972288, i32 286, i32 64), !dbg !515
  %173 = fcmp olt double %165, %172, !dbg !515
  %174 = call i1 @fCmpInstHandler(double %165, double %172, i1 %173, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978972704, i32 286, i32 51), !dbg !516
  br i1 %174, label %175, label %181, !dbg !516

; <label>:175:                                    ; preds = %164
  %176 = load i32, i32* %6, align 4, !dbg !517
  %177 = load double, double* %7, align 8, !dbg !519
  %178 = load double, double* %8, align 8, !dbg !520
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !521
  %180 = call i32 @laguerre_large_n(i32 %176, double %177, double %178, %struct.gsl_sf_result_struct* %179), !dbg !522
  store i32 %180, i32* %5, align 4, !dbg !523
  br label %268, !dbg !523

; <label>:181:                                    ; preds = %164, %160, %156, %151
  %182 = load double, double* %7, align 8, !dbg !524
  %183 = fcmp oge double %182, 0.000000e+00, !dbg !526
  %184 = call i1 @fCmpInstHandler(double %182, double 0.000000e+00, i1 %183, i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978978528, i32 289, i32 13), !dbg !527
  br i1 %184, label %197, label %185, !dbg !527

; <label>:185:                                    ; preds = %181
  %186 = load double, double* %8, align 8, !dbg !528
  %187 = fcmp ogt double %186, 0.000000e+00, !dbg !530
  %188 = call i1 @fCmpInstHandler(double %186, double 0.000000e+00, i1 %187, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978979984, i32 289, i32 26), !dbg !531
  br i1 %188, label %189, label %262, !dbg !531

; <label>:189:                                    ; preds = %185
  %190 = load double, double* %7, align 8, !dbg !532
  %191 = load i32, i32* %6, align 4, !dbg !534
  %192 = sub nsw i32 0, %191, !dbg !535
  %193 = sub nsw i32 %192, 1, !dbg !536
  %194 = sitofp i32 %193 to double, !dbg !535
  %195 = fcmp olt double %190, %194, !dbg !537
  %196 = call i1 @fCmpInstHandler(double %190, double %194, i1 %195, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978984304, i32 289, i32 37), !dbg !538
  br i1 %196, label %197, label %262, !dbg !538

; <label>:197:                                    ; preds = %189, %181
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !539, metadata !60), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %13, metadata !542, metadata !60), !dbg !543
  %198 = load double, double* %7, align 8, !dbg !544
  %199 = load double, double* %8, align 8, !dbg !545
  %200 = call i32 @gsl_sf_laguerre_2_e(double %198, double %199, %struct.gsl_sf_result_struct* %12), !dbg !546
  store i32 %200, i32* %13, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata double* %14, metadata !547, metadata !60), !dbg !548
  %201 = load double, double* %7, align 8, !dbg !549
  %202 = fadd double 1.000000e+00, %201, !dbg !550
  call void @fAddHandler(double 1.000000e+00, double %201, double %202, i64 0, i64 94379978993480, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978993888, i32 292, i32 23), !dbg !551
  %203 = load double, double* %8, align 8, !dbg !551
  %204 = fsub double %202, %203, !dbg !552
  call void @fSubHandler(double %202, double %203, double %204, i64 94379978993888, i64 94379978994248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379978994656, i32 292, i32 27), !dbg !548
  store double %204, double* %14, align 8, !dbg !548
  call void @llvm.dbg.declare(metadata double* %15, metadata !553, metadata !60), !dbg !554
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !555
  %206 = load double, double* %205, align 8, !dbg !555
  store double %206, double* %15, align 8, !dbg !554
  call void @llvm.dbg.declare(metadata double* %16, metadata !556, metadata !60), !dbg !557
  call void @llvm.dbg.declare(metadata i32* %17, metadata !558, metadata !60), !dbg !559
  store i32 2, i32* %17, align 4, !dbg !560
  br label %207, !dbg !562

; <label>:207:                                    ; preds = %239, %197
  %208 = load i32, i32* %17, align 4, !dbg !563
  %209 = load i32, i32* %6, align 4, !dbg !566
  %210 = icmp slt i32 %208, %209, !dbg !567
  %211 = sext i32 %208 to i64, !dbg !568
  %212 = sext i32 %209 to i64, !dbg !568
  %213 = call i1 @iCmpInstHandler(i64 %211, i64 %212, i1 %210, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979005440, i32 297, i32 15), !dbg !568
  br i1 %213, label %214, label %242, !dbg !568

; <label>:214:                                    ; preds = %207
  %215 = load i32, i32* %17, align 4, !dbg !569
  %216 = sitofp i32 %215 to double, !dbg !569
  %217 = load double, double* %7, align 8, !dbg !571
  %218 = fadd double %216, %217, !dbg !572
  call void @fAddHandler(double %216, double %217, double %218, i64 94379979006872, i64 94379979008520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979008928, i32 298, i32 18), !dbg !573
  %219 = fsub double -0.000000e+00, %218, !dbg !573
  call void @fSubHandler(double -0.000000e+00, double %218, double %219, i64 0, i64 94379979008928, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979009344, i32 298, i32 15), !dbg !574
  %220 = load double, double* %14, align 8, !dbg !574
  %221 = fmul double %219, %220, !dbg !575
  call void @fMulHandler(double %219, double %220, double %221, i64 94379979009344, i64 94379979009736, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979010144, i32 298, i32 21), !dbg !576
  %222 = load i32, i32* %17, align 4, !dbg !576
  %223 = sitofp i32 %222 to double, !dbg !576
  %224 = fmul double 2.000000e+00, %223, !dbg !577
  call void @fMulHandler(double 2.000000e+00, double %223, double %224, i64 0, i64 94379979010920, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979012624, i32 298, i32 33), !dbg !578
  %225 = load double, double* %7, align 8, !dbg !578
  %226 = fadd double %224, %225, !dbg !579
  call void @fAddHandler(double %224, double %225, double %226, i64 94379979012624, i64 94379979012984, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979013392, i32 298, i32 35), !dbg !580
  %227 = fadd double %226, 1.000000e+00, !dbg !580
  call void @fAddHandler(double %226, double 1.000000e+00, double %227, i64 94379979013392, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979013840, i32 298, i32 37), !dbg !581
  %228 = load double, double* %8, align 8, !dbg !581
  %229 = fsub double %227, %228, !dbg !582
  call void @fSubHandler(double %227, double %228, double %229, i64 94379979013840, i64 94379979014200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979014608, i32 298, i32 41), !dbg !583
  %230 = load double, double* %15, align 8, !dbg !583
  %231 = fmul double %229, %230, !dbg !584
  call void @fMulHandler(double %229, double %230, double %231, i64 94379979014608, i64 94379979015000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979015408, i32 298, i32 44), !dbg !585
  %232 = fadd double %221, %231, !dbg !585
  call void @fAddHandler(double %221, double %231, double %232, i64 94379979010144, i64 94379979015408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979015824, i32 298, i32 27), !dbg !586
  %233 = load i32, i32* %17, align 4, !dbg !586
  %234 = sitofp i32 %233 to double, !dbg !586
  %235 = fadd double %234, 1.000000e+00, !dbg !587
  call void @fAddHandler(double %234, double 1.000000e+00, double %235, i64 94379979016600, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979018304, i32 298, i32 51), !dbg !588
  %236 = fdiv double %232, %235, !dbg !588
  call void @fDivHandler(double %232, double %235, double %236, i64 94379979015824, i64 94379979018304, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979018688, i32 298, i32 48), !dbg !589
  store double %236, double* %16, align 8, !dbg !589
  %237 = load double, double* %15, align 8, !dbg !590
  store double %237, double* %14, align 8, !dbg !591
  %238 = load double, double* %16, align 8, !dbg !592
  store double %238, double* %15, align 8, !dbg !593
  br label %239, !dbg !594

; <label>:239:                                    ; preds = %214
  %240 = load i32, i32* %17, align 4, !dbg !595
  %241 = add nsw i32 %240, 1, !dbg !595
  store i32 %241, i32* %17, align 4, !dbg !595
  br label %207, !dbg !597, !llvm.loop !598

; <label>:242:                                    ; preds = %207
  %243 = load double, double* %15, align 8, !dbg !600
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !601
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 0, !dbg !602
  store double %243, double* %245, align 8, !dbg !603
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !604
  %247 = load double, double* %246, align 8, !dbg !604
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !605
  %249 = load double, double* %248, align 8, !dbg !605
  %250 = fdiv double %247, %249, !dbg !606
  call void @fDivHandler(double %247, double %249, double %250, i64 94379979026440, i64 94379979028536, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979030208, i32 303, i32 32), !dbg !607
  %251 = call double @fabs(double %250) #1, !dbg !607
  %252 = fadd double %251, 0x3CB0000000000000, !dbg !608
  call void @fAddHandler(double %251, double 0x3CB0000000000000, double %252, i64 94379979030688, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979031168, i32 303, i32 42), !dbg !609
  %253 = load i32, i32* %6, align 4, !dbg !609
  %254 = sitofp i32 %253 to double, !dbg !609
  %255 = fmul double %252, %254, !dbg !610
  call void @fMulHandler(double %252, double %254, double %255, i64 94379979031168, i64 94379979031944, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979033616, i32 303, i32 61), !dbg !611
  %256 = load double, double* %15, align 8, !dbg !611
  %257 = call double @fabs(double %256) #1, !dbg !612
  %258 = fmul double %255, %257, !dbg !614
  call void @fMulHandler(double %255, double %257, double %258, i64 94379979033616, i64 94379979034480, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94379979034960, i32 303, i32 65), !dbg !615
  %259 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !615
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %259, i32 0, i32 1, !dbg !616
  store double %258, double* %260, align 8, !dbg !617
  %261 = load i32, i32* %13, align 4, !dbg !618
  store i32 %261, i32* %5, align 4, !dbg !619
  br label %268, !dbg !619

; <label>:262:                                    ; preds = %189, %185
  %263 = load i32, i32* %6, align 4, !dbg !620
  %264 = load double, double* %7, align 8, !dbg !622
  %265 = load double, double* %8, align 8, !dbg !623
  %266 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !624
  %267 = call i32 @laguerre_n_poly_safe(i32 %263, double %264, double %265, %struct.gsl_sf_result_struct* %266), !dbg !625
  store i32 %267, i32* %5, align 4, !dbg !626
  br label %268, !dbg !626

; <label>:268:                                    ; preds = %262, %242, %175, %145, %144, %112, %89, %46, %36, %30, %28
  %269 = load i32, i32* %5, align 4, !dbg !627
  ret i32 %269, !dbg !627
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @laguerre_n_cp(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !628 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !629, metadata !60), !dbg !630
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !631, metadata !60), !dbg !632
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !633, metadata !60), !dbg !634
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !635, metadata !60), !dbg !636
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !637, metadata !60), !dbg !638
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !639, metadata !60), !dbg !640
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !641, metadata !60), !dbg !642
  call void @llvm.dbg.declare(metadata double* %13, metadata !643, metadata !60), !dbg !644
  call void @llvm.dbg.declare(metadata double* %14, metadata !645, metadata !60), !dbg !646
  call void @llvm.dbg.declare(metadata i32* %15, metadata !647, metadata !60), !dbg !648
  %26 = load i32, i32* %6, align 4, !dbg !649
  %27 = call i32 @gsl_sf_lnfact_e(i32 %26, %struct.gsl_sf_result_struct* %10), !dbg !650
  store i32 %27, i32* %15, align 4, !dbg !648
  call void @llvm.dbg.declare(metadata i32* %16, metadata !651, metadata !60), !dbg !652
  %28 = load double, double* %7, align 8, !dbg !653
  %29 = fadd double %28, 1.000000e+00, !dbg !654
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94379979061800, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979062208, i32 96, i32 39), !dbg !655
  %30 = load i32, i32* %6, align 4, !dbg !655
  %31 = sitofp i32 %30 to double, !dbg !655
  %32 = fadd double %29, %31, !dbg !656
  call void @fAddHandler(double %29, double %31, double %32, i64 94379979062208, i64 94379979062952, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979064624, i32 96, i32 43), !dbg !657
  %33 = call i32 @gsl_sf_lngamma_sgn_e(double %32, %struct.gsl_sf_result_struct* %11, double* %13), !dbg !657
  store i32 %33, i32* %16, align 4, !dbg !652
  call void @llvm.dbg.declare(metadata i32* %17, metadata !658, metadata !60), !dbg !659
  %34 = load double, double* %7, align 8, !dbg !660
  %35 = fadd double %34, 1.000000e+00, !dbg !661
  call void @fAddHandler(double %34, double 1.000000e+00, double %35, i64 94379979068776, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979069184, i32 97, i32 39), !dbg !662
  %36 = call i32 @gsl_sf_lngamma_sgn_e(double %35, %struct.gsl_sf_result_struct* %12, double* %14), !dbg !662
  store i32 %36, i32* %17, align 4, !dbg !659
  call void @llvm.dbg.declare(metadata double* %18, metadata !663, metadata !60), !dbg !664
  store double 1.000000e+00, double* %18, align 8, !dbg !664
  call void @llvm.dbg.declare(metadata double* %19, metadata !665, metadata !60), !dbg !666
  store double 0.000000e+00, double* %19, align 8, !dbg !666
  call void @llvm.dbg.declare(metadata i32* %20, metadata !667, metadata !60), !dbg !668
  call void @llvm.dbg.declare(metadata i32* %21, metadata !669, metadata !60), !dbg !670
  call void @llvm.dbg.declare(metadata double* %22, metadata !671, metadata !60), !dbg !672
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !673
  %38 = load double, double* %37, align 8, !dbg !673
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !674
  %40 = load double, double* %39, align 8, !dbg !674
  %41 = fsub double %38, %40, !dbg !675
  call void @fSubHandler(double %38, double %40, double %41, i64 94379979081032, i64 94379979083128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979084800, i32 103, i32 31), !dbg !676
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !676
  %43 = load double, double* %42, align 8, !dbg !676
  %44 = fsub double %41, %43, !dbg !677
  call void @fSubHandler(double %41, double %43, double %44, i64 94379979084800, i64 94379979085640, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979087312, i32 103, i32 42), !dbg !672
  store double %44, double* %22, align 8, !dbg !672
  call void @llvm.dbg.declare(metadata double* %23, metadata !678, metadata !60), !dbg !679
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !680
  %46 = load double, double* %45, align 8, !dbg !680
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !681
  %48 = load double, double* %47, align 8, !dbg !681
  %49 = fadd double %46, %48, !dbg !682
  call void @fAddHandler(double %46, double %48, double %49, i64 94379979090920, i64 94379979093016, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979094688, i32 104, i32 30), !dbg !683
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !683
  %51 = load double, double* %50, align 8, !dbg !683
  %52 = fadd double %49, %51, !dbg !684
  call void @fAddHandler(double %49, double %51, double %52, i64 94379979094688, i64 94379979095528, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979097200, i32 104, i32 40), !dbg !685
  %53 = load double, double* %22, align 8, !dbg !685
  %54 = call double @fabs(double %53) #1, !dbg !686
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !687
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94379979098064, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979098544, i32 104, i32 77), !dbg !688
  %56 = fadd double %52, %55, !dbg !688
  call void @fAddHandler(double %52, double %55, double %56, i64 94379979097200, i64 94379979098544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979098960, i32 104, i32 53), !dbg !679
  store double %56, double* %23, align 8, !dbg !679
  %57 = load i32, i32* %6, align 4, !dbg !689
  %58 = sub nsw i32 %57, 1, !dbg !691
  store i32 %58, i32* %21, align 4, !dbg !692
  br label %59, !dbg !693

; <label>:59:                                     ; preds = %111, %4
  %60 = load i32, i32* %21, align 4, !dbg !694
  %61 = icmp sge i32 %60, 0, !dbg !697
  %62 = sext i32 %60 to i64, !dbg !698
  %63 = call i1 @iCmpInstHandler(i64 %62, i64 0, i1 %61, i32 39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979103120, i32 106, i32 15), !dbg !698
  br i1 %63, label %64, label %114, !dbg !698

; <label>:64:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata double* %24, metadata !699, metadata !60), !dbg !701
  %65 = load i32, i32* %6, align 4, !dbg !702
  %66 = sub nsw i32 0, %65, !dbg !703
  %67 = load i32, i32* %21, align 4, !dbg !704
  %68 = add nsw i32 %66, %67, !dbg !705
  %69 = sitofp i32 %68 to double, !dbg !706
  %70 = load double, double* %7, align 8, !dbg !707
  %71 = fadd double %70, 1.000000e+00, !dbg !708
  call void @fAddHandler(double %70, double 1.000000e+00, double %71, i64 94379979111352, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979111792, i32 107, i32 25), !dbg !709
  %72 = load i32, i32* %21, align 4, !dbg !709
  %73 = sitofp i32 %72 to double, !dbg !709
  %74 = fadd double %71, %73, !dbg !710
  call void @fAddHandler(double %71, double %73, double %74, i64 94379979111792, i64 94379979112536, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979114208, i32 107, i32 29), !dbg !711
  %75 = fdiv double %69, %74, !dbg !711
  call void @fDivHandler(double %69, double %74, double %75, i64 94379979110968, i64 94379979114208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979114624, i32 107, i32 22), !dbg !712
  %76 = load double, double* %8, align 8, !dbg !712
  %77 = load i32, i32* %21, align 4, !dbg !713
  %78 = add nsw i32 %77, 1, !dbg !714
  %79 = sitofp i32 %78 to double, !dbg !715
  %80 = fdiv double %76, %79, !dbg !716
  call void @fDivHandler(double %76, double %79, double %80, i64 94379979115016, i64 94379979116200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979116608, i32 107, i32 37), !dbg !717
  %81 = fmul double %75, %80, !dbg !717
  call void @fMulHandler(double %75, double %80, double %81, i64 94379979114624, i64 94379979116608, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979117024, i32 107, i32 33), !dbg !701
  store double %81, double* %24, align 8, !dbg !701
  call void @llvm.dbg.declare(metadata double* %25, metadata !718, metadata !60), !dbg !719
  %82 = load double, double* %24, align 8, !dbg !720
  %83 = load double, double* %18, align 8, !dbg !721
  %84 = fdiv double 1.000000e+00, %83, !dbg !722
  call void @fDivHandler(double 1.000000e+00, double %83, double %84, i64 0, i64 94379979120568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979121008, i32 108, i32 23), !dbg !723
  %85 = fadd double %82, %84, !dbg !723
  call void @fAddHandler(double %82, double %84, double %85, i64 94379979120216, i64 94379979121008, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979121392, i32 108, i32 18), !dbg !719
  store double %85, double* %25, align 8, !dbg !719
  %86 = load double, double* %25, align 8, !dbg !724
  %87 = load double, double* %18, align 8, !dbg !726
  %88 = fdiv double 0x7FECCCCCCCCCCCCC, %87, !dbg !727
  call void @fDivHandler(double 0x7FECCCCCCCCCCCCC, double %87, double %88, i64 0, i64 94379979123848, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979124320, i32 109, i32 27), !dbg !728
  %89 = fcmp ogt double %86, %88, !dbg !728
  %90 = call i1 @fCmpInstHandler(double %86, double %88, i1 %89, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979124736, i32 109, i32 10), !dbg !729
  br i1 %90, label %91, label %98, !dbg !729

; <label>:91:                                     ; preds = %64
  br label %92, !dbg !730, !llvm.loop !732

; <label>:92:                                     ; preds = %91
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !733
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !733
  store double 0x7FF0000000000000, double* %94, align 8, !dbg !733
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !733
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !733
  store double 0x7FF0000000000000, double* %96, align 8, !dbg !733
  store i32 16, i32* %5, align 4, !dbg !733
  br label %157, !dbg !733
                                                  ; No predecessors!
  br label %110, !dbg !736

; <label>:98:                                     ; preds = %64
  %99 = load double, double* %24, align 8, !dbg !737
  %100 = load double, double* %18, align 8, !dbg !739
  %101 = fmul double %99, %100, !dbg !740
  call void @fMulHandler(double %99, double %100, double %101, i64 94379979130248, i64 94379979130568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979130976, i32 115, i32 31), !dbg !741
  %102 = fadd double 1.000000e+00, %101, !dbg !741
  call void @fAddHandler(double 1.000000e+00, double %101, double %102, i64 0, i64 94379979130976, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979131424, i32 115, i32 27), !dbg !742
  store double %102, double* %18, align 8, !dbg !742
  %103 = load double, double* %24, align 8, !dbg !743
  %104 = call double @fabs(double %103) #1, !dbg !744
  %105 = load double, double* %19, align 8, !dbg !745
  %106 = fmul double %104, %105, !dbg !746
  call void @fMulHandler(double %104, double %105, double %106, i64 94379979132672, i64 94379979133128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979133536, i32 116, i32 49), !dbg !747
  %107 = fadd double 0x3CB0000000000000, %106, !dbg !747
  call void @fAddHandler(double 0x3CB0000000000000, double %106, double %107, i64 0, i64 94379979133536, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979133952, i32 116, i32 39), !dbg !748
  %108 = load double, double* %19, align 8, !dbg !748
  %109 = fadd double %108, %107, !dbg !748
  call void @fAddHandler(double %108, double %107, double %109, i64 94379979134344, i64 94379979133952, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979134752, i32 116, i32 20), !dbg !748
  store double %109, double* %19, align 8, !dbg !748
  br label %110

; <label>:110:                                    ; preds = %98, %97
  br label %111, !dbg !749

; <label>:111:                                    ; preds = %110
  %112 = load i32, i32* %21, align 4, !dbg !750
  %113 = add nsw i32 %112, -1, !dbg !750
  store i32 %113, i32* %21, align 4, !dbg !750
  br label %59, !dbg !752, !llvm.loop !753

; <label>:114:                                    ; preds = %59
  %115 = load double, double* %22, align 8, !dbg !755
  %116 = load double, double* %23, align 8, !dbg !756
  %117 = load double, double* %18, align 8, !dbg !757
  %118 = load double, double* %19, align 8, !dbg !758
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !759
  %120 = call i32 @gsl_sf_exp_mult_err_e(double %115, double %116, double %117, double %118, %struct.gsl_sf_result_struct* %119), !dbg !760
  store i32 %120, i32* %20, align 4, !dbg !761
  %121 = load i32, i32* %20, align 4, !dbg !762
  %122 = icmp ne i32 %121, 0, !dbg !762
  %123 = sext i32 %121 to i64, !dbg !762
  %124 = call i1 @iCmpInstHandler(i64 %123, i64 0, i1 %122, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979143600, i32 124, i32 10), !dbg !762
  br i1 %124, label %125, label %127, !dbg !762

; <label>:125:                                    ; preds = %114
  %126 = load i32, i32* %20, align 4, !dbg !763
  br label %155, !dbg !763

; <label>:127:                                    ; preds = %114
  %128 = load i32, i32* %15, align 4, !dbg !765
  %129 = icmp ne i32 %128, 0, !dbg !765
  %130 = sext i32 %128 to i64, !dbg !765
  %131 = call i1 @iCmpInstHandler(i64 %130, i64 0, i1 %129, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979148144, i32 124, i32 10), !dbg !765
  br i1 %131, label %132, label %134, !dbg !765

; <label>:132:                                    ; preds = %127
  %133 = load i32, i32* %15, align 4, !dbg !767
  br label %153, !dbg !767

; <label>:134:                                    ; preds = %127
  %135 = load i32, i32* %16, align 4, !dbg !769
  %136 = icmp ne i32 %135, 0, !dbg !769
  %137 = sext i32 %135 to i64, !dbg !769
  %138 = call i1 @iCmpInstHandler(i64 %137, i64 0, i1 %136, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979154752, i32 124, i32 10), !dbg !769
  br i1 %138, label %139, label %141, !dbg !769

; <label>:139:                                    ; preds = %134
  %140 = load i32, i32* %16, align 4, !dbg !771
  br label %151, !dbg !771

; <label>:141:                                    ; preds = %134
  %142 = load i32, i32* %17, align 4, !dbg !773
  %143 = icmp ne i32 %142, 0, !dbg !773
  %144 = sext i32 %142 to i64, !dbg !773
  %145 = call i1 @iCmpInstHandler(i64 %144, i64 0, i1 %143, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94379979159296, i32 124, i32 10), !dbg !773
  br i1 %145, label %146, label %148, !dbg !773

; <label>:146:                                    ; preds = %141
  %147 = load i32, i32* %17, align 4, !dbg !775
  br label %149, !dbg !775

; <label>:148:                                    ; preds = %141
  br label %149, !dbg !777

; <label>:149:                                    ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ], !dbg !779
  br label %151, !dbg !779

; <label>:151:                                    ; preds = %149, %139
  %152 = phi i32 [ %140, %139 ], [ %150, %149 ], !dbg !781
  br label %153, !dbg !781

; <label>:153:                                    ; preds = %151, %132
  %154 = phi i32 [ %133, %132 ], [ %152, %151 ], !dbg !783
  br label %155, !dbg !783

; <label>:155:                                    ; preds = %153, %125
  %156 = phi i32 [ %126, %125 ], [ %154, %153 ], !dbg !785
  store i32 %156, i32* %5, align 4, !dbg !787
  br label %157, !dbg !787

; <label>:157:                                    ; preds = %155, %92
  %158 = load i32, i32* %5, align 4, !dbg !788
  ret i32 %158, !dbg !788
}

; Function Attrs: nounwind uwtable
define internal i32 @laguerre_n_poly_safe(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !789 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !790, metadata !60), !dbg !791
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !792, metadata !60), !dbg !793
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !794, metadata !60), !dbg !795
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !796, metadata !60), !dbg !797
  call void @llvm.dbg.declare(metadata double* %10, metadata !798, metadata !60), !dbg !799
  %19 = load double, double* %7, align 8, !dbg !800
  %20 = fadd double %19, 1.000000e+00, !dbg !801
  call void @fAddHandler(double %19, double 1.000000e+00, double %20, i64 94379978959720, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979180944, i32 137, i32 22), !dbg !799
  store double %20, double* %10, align 8, !dbg !799
  call void @llvm.dbg.declare(metadata double* %11, metadata !802, metadata !60), !dbg !803
  %21 = load double, double* %8, align 8, !dbg !804
  %22 = fsub double -0.000000e+00, %21, !dbg !805
  call void @fSubHandler(double -0.000000e+00, double %21, double %22, i64 0, i64 94379979184104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979184480, i32 138, i32 21), !dbg !803
  store double %22, double* %11, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata double* %12, metadata !806, metadata !60), !dbg !807
  %23 = load double, double* %8, align 8, !dbg !808
  %24 = fcmp olt double %23, 0.000000e+00, !dbg !809
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979188048, i32 139, i32 28), !dbg !808
  br i1 %25, label %26, label %27, !dbg !808

; <label>:26:                                     ; preds = %4
  br label %34, !dbg !810

; <label>:27:                                     ; preds = %4
  %28 = load i32, i32* %6, align 4, !dbg !812
  %29 = and i32 %28, 1, !dbg !812
  %30 = icmp ne i32 %29, 0, !dbg !812
  %31 = sext i32 %29 to i64, !dbg !812
  %32 = call i1 @iCmpInstHandler(i64 %31, i64 0, i1 %30, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979192912, i32 139, i32 43), !dbg !812
  %33 = select i1 %32, double -1.000000e+00, double 1.000000e+00, !dbg !812
  br label %34, !dbg !814

; <label>:34:                                     ; preds = %27, %26
  %35 = phi double [ 1.000000e+00, %26 ], [ %33, %27 ], !dbg !815
  store double %35, double* %12, align 8, !dbg !817
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !818, metadata !60), !dbg !819
  call void @llvm.dbg.declare(metadata i32* %14, metadata !820, metadata !60), !dbg !821
  %36 = load i32, i32* %6, align 4, !dbg !822
  %37 = load double, double* %8, align 8, !dbg !823
  %38 = call double @fabs(double %37) #1, !dbg !824
  %39 = call i32 @gsl_sf_taylorcoeff_e(i32 %36, double %38, %struct.gsl_sf_result_struct* %13), !dbg !825
  store i32 %39, i32* %14, align 4, !dbg !821
  %40 = load i32, i32* %14, align 4, !dbg !826
  %41 = icmp eq i32 %40, 0, !dbg !828
  %42 = sext i32 %40 to i64, !dbg !829
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979200848, i32 143, i32 14), !dbg !829
  br i1 %43, label %44, label %101, !dbg !829

; <label>:44:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %15, metadata !830, metadata !60), !dbg !832
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !833
  %46 = load double, double* %45, align 8, !dbg !833
  %47 = load double, double* %12, align 8, !dbg !834
  %48 = fmul double %46, %47, !dbg !835
  call void @fMulHandler(double %46, double %47, double %48, i64 94379979203480, i64 94379979205128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979205536, i32 144, i32 26), !dbg !832
  store double %48, double* %15, align 8, !dbg !832
  call void @llvm.dbg.declare(metadata double* %16, metadata !836, metadata !60), !dbg !837
  %49 = load double, double* %15, align 8, !dbg !838
  store double %49, double* %16, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata double* %17, metadata !839, metadata !60), !dbg !840
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !841
  %51 = load double, double* %50, align 8, !dbg !841
  store double %51, double* %17, align 8, !dbg !840
  call void @llvm.dbg.declare(metadata i32* %18, metadata !842, metadata !60), !dbg !843
  %52 = load i32, i32* %6, align 4, !dbg !844
  %53 = sub nsw i32 %52, 1, !dbg !846
  store i32 %53, i32* %18, align 4, !dbg !847
  br label %54, !dbg !848

; <label>:54:                                     ; preds = %85, %44
  %55 = load i32, i32* %18, align 4, !dbg !849
  %56 = icmp sge i32 %55, 0, !dbg !852
  %57 = sext i32 %55 to i64, !dbg !853
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979218800, i32 148, i32 17), !dbg !853
  br i1 %58, label %59, label %88, !dbg !853

; <label>:59:                                     ; preds = %54
  %60 = load double, double* %10, align 8, !dbg !854
  %61 = load i32, i32* %18, align 4, !dbg !856
  %62 = sitofp i32 %61 to double, !dbg !856
  %63 = fadd double %60, %62, !dbg !857
  call void @fAddHandler(double %60, double %62, double %63, i64 94379979219912, i64 94379979220616, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979222288, i32 149, i32 18), !dbg !858
  %64 = load i32, i32* %6, align 4, !dbg !858
  %65 = load i32, i32* %18, align 4, !dbg !859
  %66 = sub nsw i32 %64, %65, !dbg !860
  %67 = sitofp i32 %66 to double, !dbg !861
  %68 = fdiv double %63, %67, !dbg !862
  call void @fDivHandler(double %63, double %67, double %68, i64 94379979222288, i64 94379979223864, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979224272, i32 149, i32 21), !dbg !863
  %69 = load i32, i32* %18, align 4, !dbg !863
  %70 = sitofp i32 %69 to double, !dbg !863
  %71 = fadd double %70, 1.000000e+00, !dbg !864
  call void @fAddHandler(double %70, double 1.000000e+00, double %71, i64 94379979225048, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979226752, i32 149, i32 31), !dbg !865
  %72 = fmul double %68, %71, !dbg !865
  call void @fMulHandler(double %68, double %71, double %72, i64 94379979224272, i64 94379979226752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979227136, i32 149, i32 28), !dbg !866
  %73 = load double, double* %11, align 8, !dbg !866
  %74 = fdiv double %72, %73, !dbg !867
  call void @fDivHandler(double %72, double %73, double %74, i64 94379979227136, i64 94379979227528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979227936, i32 149, i32 36), !dbg !868
  %75 = load double, double* %15, align 8, !dbg !868
  %76 = fmul double %75, %74, !dbg !868
  call void @fMulHandler(double %75, double %74, double %76, i64 94379979228328, i64 94379979227936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979228736, i32 149, i32 12), !dbg !868
  store double %76, double* %15, align 8, !dbg !868
  %77 = load double, double* %15, align 8, !dbg !869
  %78 = load double, double* %16, align 8, !dbg !870
  %79 = fadd double %78, %77, !dbg !870
  call void @fAddHandler(double %78, double %77, double %79, i64 94379979230904, i64 94379979230520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979231312, i32 150, i32 15), !dbg !870
  store double %79, double* %16, align 8, !dbg !870
  %80 = load double, double* %15, align 8, !dbg !871
  %81 = call double @fabs(double %80) #1, !dbg !872
  %82 = fmul double 0x3CD0000000000000, %81, !dbg !873
  call void @fMulHandler(double 0x3CD0000000000000, double %81, double %82, i64 0, i64 94379979233568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979234112, i32 151, i32 40), !dbg !874
  %83 = load double, double* %17, align 8, !dbg !874
  %84 = fadd double %83, %82, !dbg !874
  call void @fAddHandler(double %83, double %82, double %84, i64 94379979234504, i64 94379979234112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979234912, i32 151, i32 15), !dbg !874
  store double %84, double* %17, align 8, !dbg !874
  br label %85, !dbg !875

; <label>:85:                                     ; preds = %59
  %86 = load i32, i32* %18, align 4, !dbg !876
  %87 = add nsw i32 %86, -1, !dbg !876
  store i32 %87, i32* %18, align 4, !dbg !876
  br label %54, !dbg !878, !llvm.loop !879

; <label>:88:                                     ; preds = %54
  %89 = load double, double* %16, align 8, !dbg !881
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !882
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !883
  store double %89, double* %91, align 8, !dbg !884
  %92 = load double, double* %17, align 8, !dbg !885
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !886
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !887
  %95 = load double, double* %94, align 8, !dbg !887
  %96 = call double @fabs(double %95) #1, !dbg !888
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !889
  call void @fMulHandler(double 0x3CC0000000000000, double %96, double %97, i64 0, i64 94379979244544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979245024, i32 154, i32 51), !dbg !890
  %98 = fadd double %92, %97, !dbg !890
  call void @fAddHandler(double %92, double %97, double %98, i64 94379979241592, i64 94379979245024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979245440, i32 154, i32 27), !dbg !891
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !891
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !892
  store double %98, double* %100, align 8, !dbg !893
  store i32 0, i32* %5, align 4, !dbg !894
  br label %118, !dbg !894

; <label>:101:                                    ; preds = %34
  %102 = load i32, i32* %14, align 4, !dbg !895
  %103 = icmp eq i32 %102, 16, !dbg !897
  %104 = sext i32 %102 to i64, !dbg !898
  %105 = call i1 @iCmpInstHandler(i64 %104, i64 16, i1 %103, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94379979249632, i32 157, i32 19), !dbg !898
  br i1 %105, label %106, label %112, !dbg !898

; <label>:106:                                    ; preds = %101
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !899
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !901
  store double 0.000000e+00, double* %108, align 8, !dbg !902
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !903
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !904
  store double 0.000000e+00, double* %110, align 8, !dbg !905
  %111 = load i32, i32* %14, align 4, !dbg !906
  store i32 %111, i32* %5, align 4, !dbg !907
  br label %118, !dbg !907

; <label>:112:                                    ; preds = %101
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !908
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !910
  store double 0.000000e+00, double* %114, align 8, !dbg !911
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !912
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !913
  store double 0.000000e+00, double* %116, align 8, !dbg !914
  %117 = load i32, i32* %14, align 4, !dbg !915
  store i32 %117, i32* %5, align 4, !dbg !916
  br label %118, !dbg !916

; <label>:118:                                    ; preds = %112, %106, %88
  %119 = load i32, i32* %5, align 4, !dbg !917
  ret i32 %119, !dbg !917
}

; Function Attrs: nounwind uwtable
define internal i32 @laguerre_large_n(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !918 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !919, metadata !60), !dbg !920
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !921, metadata !60), !dbg !922
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !923, metadata !60), !dbg !924
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !925, metadata !60), !dbg !926
  call void @llvm.dbg.declare(metadata double* %9, metadata !927, metadata !60), !dbg !928
  %31 = load i32, i32* %5, align 4, !dbg !929
  %32 = sub nsw i32 0, %31, !dbg !930
  %33 = sitofp i32 %32 to double, !dbg !930
  store double %33, double* %9, align 8, !dbg !928
  call void @llvm.dbg.declare(metadata double* %10, metadata !931, metadata !60), !dbg !932
  %34 = load double, double* %6, align 8, !dbg !933
  %35 = fadd double %34, 1.000000e+00, !dbg !934
  call void @fAddHandler(double %34, double 1.000000e+00, double %35, i64 94379979277192, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979277600, i32 52, i32 26), !dbg !932
  store double %35, double* %10, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata double* %11, metadata !935, metadata !60), !dbg !936
  %36 = load double, double* %10, align 8, !dbg !937
  %37 = fmul double 2.000000e+00, %36, !dbg !938
  call void @fMulHandler(double 2.000000e+00, double %36, double %37, i64 0, i64 94379979280760, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979281168, i32 53, i32 28), !dbg !939
  %38 = load double, double* %9, align 8, !dbg !939
  %39 = fmul double 4.000000e+00, %38, !dbg !940
  call void @fMulHandler(double 4.000000e+00, double %38, double %39, i64 0, i64 94379979281528, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979281968, i32 53, i32 36), !dbg !941
  %40 = fsub double %37, %39, !dbg !941
  call void @fSubHandler(double %37, double %39, double %40, i64 94379979281168, i64 94379979281968, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979282352, i32 53, i32 31), !dbg !936
  store double %40, double* %11, align 8, !dbg !936
  call void @llvm.dbg.declare(metadata double* %12, metadata !942, metadata !60), !dbg !943
  %41 = load double, double* %7, align 8, !dbg !944
  %42 = load double, double* %11, align 8, !dbg !945
  %43 = fdiv double %41, %42, !dbg !946
  call void @fDivHandler(double %41, double %42, double %43, i64 94379979285544, i64 94379979285896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979286304, i32 54, i32 26), !dbg !943
  store double %43, double* %12, align 8, !dbg !943
  call void @llvm.dbg.declare(metadata double* %13, metadata !947, metadata !60), !dbg !948
  %44 = load double, double* %12, align 8, !dbg !949
  %45 = fsub double 1.000000e+00, %44, !dbg !950
  call void @fSubHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94379979289496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979289904, i32 55, i32 29), !dbg !948
  store double %45, double* %13, align 8, !dbg !948
  call void @llvm.dbg.declare(metadata double* %14, metadata !951, metadata !60), !dbg !952
  %46 = load double, double* %12, align 8, !dbg !953
  %47 = call double @sqrt(double %46) #5, !dbg !954
  call void @callOneArgHandler(i32 14, double %46, double %47, i64 94379979293064, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979293776, i32 56, i32 27), !dbg !955
  %48 = call double @asin(double %47) #5, !dbg !955
  call void @callOneArgHandler(i32 4, double %47, double %48, i64 94379979293776, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979294624, i32 56, i32 22), !dbg !952
  store double %48, double* %14, align 8, !dbg !952
  call void @llvm.dbg.declare(metadata double* %15, metadata !957, metadata !60), !dbg !958
  %49 = load double, double* %11, align 8, !dbg !959
  %50 = fmul double 0x4003BD3CC9BE45DE, %49, !dbg !960
  call void @fMulHandler(double 0x4003BD3CC9BE45DE, double %49, double %50, i64 0, i64 94379979298008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979298448, i32 57, i32 39), !dbg !961
  %51 = load double, double* %11, align 8, !dbg !961
  %52 = fmul double %50, %51, !dbg !962
  call void @fMulHandler(double %50, double %51, double %52, i64 94379979298448, i64 94379979298840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979299248, i32 57, i32 43), !dbg !963
  %53 = load double, double* %12, align 8, !dbg !963
  %54 = fmul double %52, %53, !dbg !964
  call void @fMulHandler(double %52, double %53, double %54, i64 94379979299248, i64 94379979299640, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979300048, i32 57, i32 47), !dbg !965
  %55 = load double, double* %13, align 8, !dbg !965
  %56 = fmul double %54, %55, !dbg !966
  call void @fMulHandler(double %54, double %55, double %56, i64 94379979300048, i64 94379979300440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979300848, i32 57, i32 54), !dbg !958
  store double %56, double* %15, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !967, metadata !60), !dbg !968
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !969, metadata !60), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %18, metadata !971, metadata !60), !dbg !972
  %57 = load double, double* %10, align 8, !dbg !973
  %58 = load i32, i32* %5, align 4, !dbg !974
  %59 = sitofp i32 %58 to double, !dbg !974
  %60 = fadd double %57, %59, !dbg !975
  call void @fAddHandler(double %57, double %59, double %60, i64 94379979306216, i64 94379979306952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979308624, i32 60, i32 35), !dbg !976
  %61 = call i32 @gsl_sf_lngamma_e(double %60, %struct.gsl_sf_result_struct* %16), !dbg !976
  store i32 %61, i32* %18, align 4, !dbg !972
  call void @llvm.dbg.declare(metadata i32* %19, metadata !977, metadata !60), !dbg !978
  %62 = load i32, i32* %5, align 4, !dbg !979
  %63 = call i32 @gsl_sf_lnfact_e(i32 %62, %struct.gsl_sf_result_struct* %17), !dbg !980
  store i32 %63, i32* %19, align 4, !dbg !978
  call void @llvm.dbg.declare(metadata double* %20, metadata !981, metadata !60), !dbg !982
  %64 = load double, double* %10, align 8, !dbg !983
  %65 = fsub double 1.000000e+00, %64, !dbg !984
  call void @fSubHandler(double 1.000000e+00, double %64, double %65, i64 0, i64 94379979316424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979316832, i32 62, i32 30), !dbg !985
  %66 = fmul double 5.000000e-01, %65, !dbg !985
  call void @fMulHandler(double 5.000000e-01, double %65, double %66, i64 0, i64 94379979316832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979317248, i32 62, i32 25), !dbg !986
  %67 = load double, double* %7, align 8, !dbg !986
  %68 = fmul double 2.500000e-01, %67, !dbg !987
  call void @fMulHandler(double 2.500000e-01, double %67, double %68, i64 0, i64 94379979317608, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979318112, i32 62, i32 42), !dbg !988
  %69 = load double, double* %11, align 8, !dbg !988
  %70 = fmul double %68, %69, !dbg !989
  call void @fMulHandler(double %68, double %69, double %70, i64 94379979318112, i64 94379979318472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979318880, i32 62, i32 44), !dbg !990
  %71 = call double @log(double %70) #5, !dbg !990
  call void @callOneArgHandler(i32 12, double %70, double %71, i64 94379979318880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979319632, i32 62, i32 34), !dbg !991
  %72 = fmul double %66, %71, !dbg !991
  call void @fMulHandler(double %66, double %71, double %72, i64 94379979317248, i64 94379979319632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979320144, i32 62, i32 33), !dbg !982
  store double %72, double* %20, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata double* %21, metadata !992, metadata !60), !dbg !993
  %73 = load double, double* %15, align 8, !dbg !994
  %74 = call double @log(double %73) #5, !dbg !995
  call void @callOneArgHandler(i32 12, double %73, double %74, i64 94379979323384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979323824, i32 63, i32 27), !dbg !996
  %75 = fmul double 2.500000e-01, %74, !dbg !996
  call void @fMulHandler(double 2.500000e-01, double %74, double %75, i64 0, i64 94379979323824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979324336, i32 63, i32 26), !dbg !993
  store double %75, double* %21, align 8, !dbg !993
  call void @llvm.dbg.declare(metadata double* %22, metadata !997, metadata !60), !dbg !998
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !999
  %77 = load double, double* %76, align 8, !dbg !999
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1000
  %79 = load double, double* %78, align 8, !dbg !1000
  %80 = fsub double %77, %79, !dbg !1001
  call void @fSubHandler(double %77, double %79, double %80, i64 94379979327912, i64 94379979330008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979331680, i32 64, i32 31), !dbg !1002
  %81 = load double, double* %7, align 8, !dbg !1002
  %82 = fmul double 5.000000e-01, %81, !dbg !1003
  call void @fMulHandler(double 5.000000e-01, double %81, double %82, i64 0, i64 94379979332072, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979332512, i32 64, i32 49), !dbg !1004
  %83 = fadd double %80, %82, !dbg !1004
  call void @fAddHandler(double %80, double %82, double %83, i64 94379979331680, i64 94379979332512, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979332896, i32 64, i32 44), !dbg !1005
  %84 = load double, double* %20, align 8, !dbg !1005
  %85 = fadd double %83, %84, !dbg !1006
  call void @fAddHandler(double %83, double %84, double %85, i64 94379979332896, i64 94379979333288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979333696, i32 64, i32 52), !dbg !1007
  %86 = load double, double* %21, align 8, !dbg !1007
  %87 = fsub double %85, %86, !dbg !1008
  call void @fSubHandler(double %85, double %86, double %87, i64 94379979333696, i64 94379979334088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979334496, i32 64, i32 64), !dbg !998
  store double %87, double* %22, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata double* %23, metadata !1009, metadata !60), !dbg !1010
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1011
  %89 = load double, double* %88, align 8, !dbg !1011
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1012
  %91 = load double, double* %90, align 8, !dbg !1012
  %92 = fadd double %89, %91, !dbg !1013
  call void @fAddHandler(double %89, double %91, double %92, i64 94379979338104, i64 94379979340200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979341872, i32 65, i32 31), !dbg !1014
  %93 = load double, double* %20, align 8, !dbg !1014
  %94 = call double @fabs(double %93) #1, !dbg !1015
  %95 = load double, double* %21, align 8, !dbg !1016
  %96 = call double @fabs(double %95) #1, !dbg !1017
  %97 = fadd double %94, %96, !dbg !1018
  call void @fAddHandler(double %94, double %96, double %97, i64 94379979342736, i64 94379979343664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979344144, i32 65, i32 80), !dbg !1019
  %98 = fmul double 0x3CB0000000000000, %97, !dbg !1019
  call void @fMulHandler(double 0x3CB0000000000000, double %97, double %98, i64 0, i64 94379979344144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979344560, i32 65, i32 62), !dbg !1020
  %99 = fadd double %92, %98, !dbg !1020
  call void @fAddHandler(double %92, double %98, double %99, i64 94379979341872, i64 94379979344560, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979344976, i32 65, i32 44), !dbg !1010
  store double %99, double* %23, align 8, !dbg !1010
  call void @llvm.dbg.declare(metadata double* %24, metadata !1021, metadata !60), !dbg !1022
  %100 = load double, double* %11, align 8, !dbg !1023
  %101 = fmul double 2.500000e-01, %100, !dbg !1024
  call void @fMulHandler(double 2.500000e-01, double %100, double %101, i64 0, i64 94379979348168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979348576, i32 67, i32 21), !dbg !1025
  %102 = load double, double* %14, align 8, !dbg !1025
  %103 = fmul double 2.000000e+00, %102, !dbg !1026
  call void @fMulHandler(double 2.000000e+00, double %102, double %103, i64 0, i64 94379979348936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979349376, i32 67, i32 28), !dbg !1027
  %104 = load double, double* %14, align 8, !dbg !1027
  %105 = fmul double 2.000000e+00, %104, !dbg !1028
  call void @fMulHandler(double 2.000000e+00, double %104, double %105, i64 0, i64 94379979349736, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979350176, i32 67, i32 42), !dbg !1029
  %106 = call double @sin(double %105) #5, !dbg !1029
  call void @callOneArgHandler(i32 1, double %105, double %106, i64 94379979350176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979351696, i32 67, i32 35), !dbg !1030
  %107 = fadd double %103, %106, !dbg !1030
  call void @fAddHandler(double %103, double %106, double %107, i64 94379979349376, i64 94379979351696, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979352208, i32 67, i32 33), !dbg !1031
  %108 = fmul double %101, %107, !dbg !1031
  call void @fMulHandler(double %101, double %107, double %108, i64 94379979348576, i64 94379979352208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979352624, i32 67, i32 25), !dbg !1022
  store double %108, double* %24, align 8, !dbg !1022
  call void @llvm.dbg.declare(metadata double* %25, metadata !1032, metadata !60), !dbg !1033
  %109 = load double, double* %24, align 8, !dbg !1034
  %110 = call double @sin(double %109) #5, !dbg !1035
  call void @callOneArgHandler(i32 1, double %109, double %110, i64 94379979355864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979356304, i32 68, i32 23), !dbg !1036
  %111 = fsub double -0.000000e+00, %110, !dbg !1036
  call void @fSubHandler(double -0.000000e+00, double %110, double %111, i64 0, i64 94379979356304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979356784, i32 68, i32 22), !dbg !1033
  store double %111, double* %25, align 8, !dbg !1033
  call void @llvm.dbg.declare(metadata double* %26, metadata !1037, metadata !60), !dbg !1038
  %112 = load double, double* %13, align 8, !dbg !1039
  %113 = fmul double 4.000000e+00, %112, !dbg !1040
  call void @fMulHandler(double 4.000000e+00, double %112, double %113, i64 0, i64 94379979359976, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979360384, i32 70, i32 35), !dbg !1041
  %114 = fdiv double 5.000000e+00, %113, !dbg !1041
  call void @fDivHandler(double 5.000000e+00, double %113, double %114, i64 0, i64 94379979360384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979360864, i32 70, i32 30), !dbg !1042
  %115 = load double, double* %10, align 8, !dbg !1042
  %116 = fmul double 3.000000e+00, %115, !dbg !1043
  call void @fMulHandler(double 3.000000e+00, double %115, double %116, i64 0, i64 94379979361224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979361664, i32 70, i32 48), !dbg !1044
  %117 = load double, double* %10, align 8, !dbg !1044
  %118 = fmul double %116, %117, !dbg !1045
  call void @fMulHandler(double %116, double %117, double %118, i64 94379979361664, i64 94379979362024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979362432, i32 70, i32 50), !dbg !1046
  %119 = load double, double* %10, align 8, !dbg !1046
  %120 = fmul double 6.000000e+00, %119, !dbg !1047
  call void @fMulHandler(double 6.000000e+00, double %119, double %120, i64 0, i64 94379979362824, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979363264, i32 70, i32 56), !dbg !1048
  %121 = fsub double %118, %120, !dbg !1048
  call void @fSubHandler(double %118, double %120, double %121, i64 94379979362432, i64 94379979363264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979363648, i32 70, i32 52), !dbg !1049
  %122 = fadd double %121, 2.000000e+00, !dbg !1049
  call void @fAddHandler(double %121, double 2.000000e+00, double %122, i64 94379979363648, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979364096, i32 70, i32 58), !dbg !1050
  %123 = load double, double* %13, align 8, !dbg !1050
  %124 = fmul double %122, %123, !dbg !1051
  call void @fMulHandler(double %122, double %123, double %124, i64 94379979364096, i64 94379979364456, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979364864, i32 70, i32 63), !dbg !1052
  %125 = fadd double %114, %124, !dbg !1052
  call void @fAddHandler(double %114, double %124, double %125, i64 94379979360864, i64 94379979364864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979365280, i32 70, i32 43), !dbg !1053
  %126 = fsub double %125, 1.000000e+00, !dbg !1053
  call void @fSubHandler(double %125, double 1.000000e+00, double %126, i64 94379979365280, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979365728, i32 70, i32 71), !dbg !1054
  %127 = fmul double 0x3FB5555555555555, %126, !dbg !1054
  call void @fMulHandler(double 0x3FB5555555555555, double %126, double %127, i64 0, i64 94379979365728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979366176, i32 70, i32 25), !dbg !1038
  store double %127, double* %26, align 8, !dbg !1038
  call void @llvm.dbg.declare(metadata double* %27, metadata !1055, metadata !60), !dbg !1056
  %128 = load double, double* %26, align 8, !dbg !1057
  %129 = fsub double -0.000000e+00, %128, !dbg !1058
  call void @fSubHandler(double -0.000000e+00, double %128, double %129, i64 0, i64 94379979369368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979371808, i32 71, i32 22), !dbg !1059
  %130 = load double, double* %24, align 8, !dbg !1059
  %131 = call double @cos(double %130) #5, !dbg !1060
  call void @callOneArgHandler(i32 2, double %130, double %131, i64 94379979372200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979372944, i32 71, i32 28), !dbg !1061
  %132 = fmul double %129, %131, !dbg !1061
  call void @fMulHandler(double %129, double %131, double %132, i64 94379979371808, i64 94379979372944, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979373456, i32 71, i32 26), !dbg !1062
  %133 = load double, double* %11, align 8, !dbg !1062
  %134 = fmul double 2.500000e-01, %133, !dbg !1063
  call void @fMulHandler(double 2.500000e-01, double %133, double %134, i64 0, i64 94379979373848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979374288, i32 71, i32 43), !dbg !1064
  %135 = load double, double* %14, align 8, !dbg !1064
  %136 = fmul double 2.000000e+00, %135, !dbg !1065
  call void @fMulHandler(double 2.000000e+00, double %135, double %136, i64 0, i64 94379979374648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979375088, i32 71, i32 55), !dbg !1066
  %137 = call double @sin(double %136) #5, !dbg !1066
  call void @callOneArgHandler(i32 1, double %136, double %137, i64 94379979375088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979375536, i32 71, i32 48), !dbg !1067
  %138 = fmul double %134, %137, !dbg !1067
  call void @fMulHandler(double %134, double %137, double %138, i64 94379979374288, i64 94379979375536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979376016, i32 71, i32 47), !dbg !1068
  %139 = fdiv double %132, %138, !dbg !1068
  call void @fDivHandler(double %132, double %138, double %139, i64 94379979373456, i64 94379979376016, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979376432, i32 71, i32 37), !dbg !1056
  store double %139, double* %27, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata double* %28, metadata !1069, metadata !60), !dbg !1070
  %140 = load double, double* %25, align 8, !dbg !1071
  %141 = load double, double* %27, align 8, !dbg !1072
  %142 = fadd double %140, %141, !dbg !1073
  call void @fAddHandler(double %140, double %141, double %142, i64 94379979379672, i64 94379979380024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979380432, i32 73, i32 30), !dbg !1070
  store double %142, double* %28, align 8, !dbg !1070
  call void @llvm.dbg.declare(metadata double* %29, metadata !1074, metadata !60), !dbg !1075
  %143 = load double, double* %27, align 8, !dbg !1076
  %144 = load double, double* %27, align 8, !dbg !1077
  %145 = fmul double %143, %144, !dbg !1078
  call void @fMulHandler(double %143, double %144, double %145, i64 94379979383624, i64 94379979383976, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979384384, i32 74, i32 29), !dbg !1079
  %146 = load double, double* %25, align 8, !dbg !1079
  %147 = call double @fabs(double %146) #1, !dbg !1080
  %148 = load double, double* %27, align 8, !dbg !1081
  %149 = call double @fabs(double %148) #1, !dbg !1082
  %150 = fadd double %147, %149, !dbg !1083
  call void @fAddHandler(double %147, double %149, double %150, i64 94379979385248, i64 94379979386176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979386656, i32 74, i32 77), !dbg !1084
  %151 = fmul double 0x3CB0000000000000, %150, !dbg !1084
  call void @fMulHandler(double 0x3CB0000000000000, double %150, double %151, i64 0, i64 94379979386656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979387072, i32 74, i32 58), !dbg !1085
  %152 = fadd double %145, %151, !dbg !1085
  call void @fAddHandler(double %145, double %151, double %152, i64 94379979384384, i64 94379979387072, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979387488, i32 74, i32 40), !dbg !1075
  store double %152, double* %29, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1086, metadata !60), !dbg !1087
  %153 = load double, double* %22, align 8, !dbg !1088
  %154 = load double, double* %23, align 8, !dbg !1089
  %155 = load double, double* %28, align 8, !dbg !1090
  %156 = load double, double* %29, align 8, !dbg !1091
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1092
  %158 = call i32 @gsl_sf_exp_mult_err_e(double %153, double %154, double %155, double %156, %struct.gsl_sf_result_struct* %157), !dbg !1093
  store i32 %158, i32* %30, align 4, !dbg !1087
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1094
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !1095
  %161 = load double, double* %160, align 8, !dbg !1095
  %162 = call double @fabs(double %161) #1, !dbg !1096
  %163 = fmul double 0x3E60000000000000, %162, !dbg !1097
  call void @fMulHandler(double 0x3E60000000000000, double %162, double %163, i64 0, i64 94379979397424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979397968, i32 76, i32 45), !dbg !1098
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1098
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !1099
  %166 = load double, double* %165, align 8, !dbg !1100
  %167 = fadd double %166, %163, !dbg !1100
  call void @fAddHandler(double %166, double %163, double %167, i64 94379979399192, i64 94379979397968, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979399600, i32 76, i32 15), !dbg !1100
  store double %167, double* %165, align 8, !dbg !1100
  %168 = load i32, i32* %30, align 4, !dbg !1101
  %169 = icmp ne i32 %168, 0, !dbg !1101
  %170 = sext i32 %168 to i64, !dbg !1101
  %171 = call i1 @iCmpInstHandler(i64 %170, i64 0, i1 %169, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979401792, i32 77, i32 10), !dbg !1101
  br i1 %171, label %172, label %174, !dbg !1101

; <label>:172:                                    ; preds = %4
  %173 = load i32, i32* %30, align 4, !dbg !1102
  br label %193, !dbg !1102

; <label>:174:                                    ; preds = %4
  %175 = load i32, i32* %19, align 4, !dbg !1103
  %176 = icmp ne i32 %175, 0, !dbg !1103
  %177 = sext i32 %175 to i64, !dbg !1103
  %178 = call i1 @iCmpInstHandler(i64 %177, i64 0, i1 %176, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979406336, i32 77, i32 10), !dbg !1103
  br i1 %178, label %179, label %181, !dbg !1103

; <label>:179:                                    ; preds = %174
  %180 = load i32, i32* %19, align 4, !dbg !1105
  br label %191, !dbg !1105

; <label>:181:                                    ; preds = %174
  %182 = load i32, i32* %18, align 4, !dbg !1107
  %183 = icmp ne i32 %182, 0, !dbg !1107
  %184 = sext i32 %182 to i64, !dbg !1107
  %185 = call i1 @iCmpInstHandler(i64 %184, i64 0, i1 %183, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94379979410880, i32 77, i32 10), !dbg !1107
  br i1 %185, label %186, label %188, !dbg !1107

; <label>:186:                                    ; preds = %181
  %187 = load i32, i32* %18, align 4, !dbg !1109
  br label %189, !dbg !1109

; <label>:188:                                    ; preds = %181
  br label %189, !dbg !1111

; <label>:189:                                    ; preds = %188, %186
  %190 = phi i32 [ %187, %186 ], [ 0, %188 ], !dbg !1113
  br label %191, !dbg !1113

; <label>:191:                                    ; preds = %189, %179
  %192 = phi i32 [ %180, %179 ], [ %190, %189 ], !dbg !1115
  br label %193, !dbg !1115

; <label>:193:                                    ; preds = %191, %172
  %194 = phi i32 [ %173, %172 ], [ %192, %191 ], !dbg !1117
  ret i32 %194, !dbg !1119
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_laguerre_1(double, double) #0 !dbg !1120 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1123, metadata !60), !dbg !1124
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1125, metadata !60), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1127, metadata !60), !dbg !1128
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1129, metadata !60), !dbg !1128
  %8 = load double, double* %4, align 8, !dbg !1128
  %9 = load double, double* %5, align 8, !dbg !1128
  %10 = call i32 @gsl_sf_laguerre_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1128
  store i32 %10, i32* %7, align 4, !dbg !1128
  %11 = load i32, i32* %7, align 4, !dbg !1130
  %12 = icmp ne i32 %11, 0, !dbg !1130
  %13 = sext i32 %11 to i64, !dbg !1128
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94379979426704, i32 319, i32 3), !dbg !1128
  br i1 %14, label %15, label %21, !dbg !1128

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1132, !llvm.loop !1135

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1137
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 319, i32 %17), !dbg !1137
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1137
  %19 = load double, double* %18, align 8, !dbg !1137
  store double %19, double* %3, align 8, !dbg !1137
  br label %24, !dbg !1137
                                                  ; No predecessors!
  br label %21, !dbg !1140

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1142
  %23 = load double, double* %22, align 8, !dbg !1142
  store double %23, double* %3, align 8, !dbg !1142
  br label %24, !dbg !1142

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1144
  ret double %25, !dbg !1144
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_laguerre_2(double, double) #0 !dbg !1145 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1146, metadata !60), !dbg !1147
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1148, metadata !60), !dbg !1149
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1150, metadata !60), !dbg !1151
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1152, metadata !60), !dbg !1151
  %8 = load double, double* %4, align 8, !dbg !1151
  %9 = load double, double* %5, align 8, !dbg !1151
  %10 = call i32 @gsl_sf_laguerre_2_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1151
  store i32 %10, i32* %7, align 4, !dbg !1151
  %11 = load i32, i32* %7, align 4, !dbg !1153
  %12 = icmp ne i32 %11, 0, !dbg !1153
  %13 = sext i32 %11 to i64, !dbg !1151
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94379979106096, i32 324, i32 3), !dbg !1151
  br i1 %14, label %15, label %21, !dbg !1151

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1155, !llvm.loop !1158

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1160
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 324, i32 %17), !dbg !1160
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1160
  %19 = load double, double* %18, align 8, !dbg !1160
  store double %19, double* %3, align 8, !dbg !1160
  br label %24, !dbg !1160
                                                  ; No predecessors!
  br label %21, !dbg !1163

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1165
  %23 = load double, double* %22, align 8, !dbg !1165
  store double %23, double* %3, align 8, !dbg !1165
  br label %24, !dbg !1165

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1167
  ret double %25, !dbg !1167
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_laguerre_3(double, double) #0 !dbg !1168 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1169, metadata !60), !dbg !1170
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1171, metadata !60), !dbg !1172
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1173, metadata !60), !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1175, metadata !60), !dbg !1174
  %8 = load double, double* %4, align 8, !dbg !1174
  %9 = load double, double* %5, align 8, !dbg !1174
  %10 = call i32 @gsl_sf_laguerre_3_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1174
  store i32 %10, i32* %7, align 4, !dbg !1174
  %11 = load i32, i32* %7, align 4, !dbg !1176
  %12 = icmp ne i32 %11, 0, !dbg !1176
  %13 = sext i32 %11 to i64, !dbg !1174
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94379979470496, i32 329, i32 3), !dbg !1174
  br i1 %14, label %15, label %21, !dbg !1174

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1178, !llvm.loop !1181

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1183
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 329, i32 %17), !dbg !1183
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1183
  %19 = load double, double* %18, align 8, !dbg !1183
  store double %19, double* %3, align 8, !dbg !1183
  br label %24, !dbg !1183
                                                  ; No predecessors!
  br label %21, !dbg !1186

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1188
  %23 = load double, double* %22, align 8, !dbg !1188
  store double %23, double* %3, align 8, !dbg !1188
  br label %24, !dbg !1188

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1190
  ret double %25, !dbg !1190
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_laguerre_n(i32, double, double) #0 !dbg !1191 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1194, metadata !60), !dbg !1195
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1196, metadata !60), !dbg !1197
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1198, metadata !60), !dbg !1199
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1200, metadata !60), !dbg !1201
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1202, metadata !60), !dbg !1201
  %10 = load i32, i32* %5, align 4, !dbg !1201
  %11 = load double, double* %6, align 8, !dbg !1201
  %12 = load double, double* %7, align 8, !dbg !1201
  %13 = call i32 @gsl_sf_laguerre_n_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1201
  store i32 %13, i32* %9, align 4, !dbg !1201
  %14 = load i32, i32* %9, align 4, !dbg !1203
  %15 = icmp ne i32 %14, 0, !dbg !1203
  %16 = sext i32 %14 to i64, !dbg !1201
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @21, i32 0, i32 0), i64 94379979490816, i32 334, i32 3), !dbg !1201
  br i1 %17, label %18, label %24, !dbg !1201

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1205, !llvm.loop !1208

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1210
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 334, i32 %20), !dbg !1210
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1210
  %22 = load double, double* %21, align 8, !dbg !1210
  store double %22, double* %4, align 8, !dbg !1210
  br label %27, !dbg !1210
                                                  ; No predecessors!
  br label %24, !dbg !1213

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1215
  %26 = load double, double* %25, align 8, !dbg !1215
  store double %26, double* %4, align 8, !dbg !1215
  br label %27, !dbg !1215

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1217
  ret double %28, !dbg !1217
}

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_taylorcoeff_e(i32, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @asin(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

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
!1 = !DIFile(filename: "laguerre.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_laguerre_1_e", scope: !1, file: !1, line: 174, type: !46, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !51}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 174, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 174, column: 34, scope: !45)
!62 = !DILocalVariable(name: "x", arg: 2, scope: !45, file: !1, line: 174, type: !49)
!63 = !DILocation(line: 174, column: 50, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 174, type: !51)
!65 = !DILocation(line: 174, column: 69, scope: !45)
!66 = !DILocation(line: 179, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 178, column: 3)
!68 = !DILocation(line: 179, column: 23, scope: !67)
!69 = !DILocation(line: 179, column: 29, scope: !67)
!70 = !DILocation(line: 179, column: 27, scope: !67)
!71 = !DILocation(line: 179, column: 5, scope: !67)
!72 = !DILocation(line: 179, column: 13, scope: !67)
!73 = !DILocation(line: 179, column: 17, scope: !67)
!74 = !DILocation(line: 180, column: 55, scope: !67)
!75 = !DILocation(line: 180, column: 50, scope: !67)
!76 = !DILocation(line: 180, column: 48, scope: !67)
!77 = !DILocation(line: 180, column: 65, scope: !67)
!78 = !DILocation(line: 180, column: 60, scope: !79)
!79 = !DILexicalBlockFile(scope: !67, file: !1, discriminator: 1)
!80 = !DILocation(line: 180, column: 58, scope: !67)
!81 = !DILocation(line: 180, column: 41, scope: !67)
!82 = !DILocation(line: 180, column: 5, scope: !67)
!83 = !DILocation(line: 180, column: 13, scope: !67)
!84 = !DILocation(line: 180, column: 17, scope: !67)
!85 = !DILocation(line: 181, column: 5, scope: !67)
!86 = distinct !DISubprogram(name: "gsl_sf_laguerre_2_e", scope: !1, file: !1, line: 186, type: !46, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!87 = !DILocalVariable(name: "a", arg: 1, scope: !86, file: !1, line: 186, type: !49)
!88 = !DILocation(line: 186, column: 34, scope: !86)
!89 = !DILocalVariable(name: "x", arg: 2, scope: !86, file: !1, line: 186, type: !49)
!90 = !DILocation(line: 186, column: 50, scope: !86)
!91 = !DILocalVariable(name: "result", arg: 3, scope: !86, file: !1, line: 186, type: !51)
!92 = !DILocation(line: 186, column: 69, scope: !86)
!93 = !DILocation(line: 190, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 190, column: 6)
!95 = !DILocation(line: 190, column: 8, scope: !94)
!96 = !DILocation(line: 190, column: 6, scope: !86)
!97 = !DILocation(line: 191, column: 23, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 190, column: 17)
!99 = !DILocation(line: 191, column: 22, scope: !98)
!100 = !DILocation(line: 191, column: 25, scope: !98)
!101 = !DILocation(line: 191, column: 24, scope: !98)
!102 = !DILocation(line: 191, column: 5, scope: !98)
!103 = !DILocation(line: 191, column: 13, scope: !98)
!104 = !DILocation(line: 191, column: 17, scope: !98)
!105 = !DILocation(line: 192, column: 48, scope: !98)
!106 = !DILocation(line: 192, column: 56, scope: !98)
!107 = !DILocation(line: 192, column: 43, scope: !98)
!108 = !DILocation(line: 192, column: 41, scope: !98)
!109 = !DILocation(line: 192, column: 5, scope: !98)
!110 = !DILocation(line: 192, column: 13, scope: !98)
!111 = !DILocation(line: 192, column: 17, scope: !98)
!112 = !DILocation(line: 193, column: 5, scope: !98)
!113 = !DILocalVariable(name: "c0", scope: !114, file: !1, line: 196, type: !50)
!114 = distinct !DILexicalBlock(scope: !94, file: !1, line: 195, column: 8)
!115 = !DILocation(line: 196, column: 12, scope: !114)
!116 = !DILocation(line: 196, column: 28, scope: !114)
!117 = !DILocation(line: 196, column: 27, scope: !114)
!118 = !DILocation(line: 196, column: 21, scope: !114)
!119 = !DILocation(line: 196, column: 36, scope: !114)
!120 = !DILocation(line: 196, column: 35, scope: !114)
!121 = !DILocation(line: 196, column: 30, scope: !114)
!122 = !DILocalVariable(name: "c1", scope: !114, file: !1, line: 197, type: !50)
!123 = !DILocation(line: 197, column: 12, scope: !114)
!124 = !DILocation(line: 197, column: 23, scope: !114)
!125 = !DILocation(line: 197, column: 22, scope: !114)
!126 = !DILocation(line: 197, column: 17, scope: !114)
!127 = !DILocalVariable(name: "c2", scope: !114, file: !1, line: 198, type: !50)
!128 = !DILocation(line: 198, column: 12, scope: !114)
!129 = !DILocation(line: 198, column: 27, scope: !114)
!130 = !DILocation(line: 198, column: 26, scope: !114)
!131 = !DILocation(line: 198, column: 21, scope: !114)
!132 = !DILocation(line: 199, column: 20, scope: !114)
!133 = !DILocation(line: 199, column: 25, scope: !114)
!134 = !DILocation(line: 199, column: 28, scope: !114)
!135 = !DILocation(line: 199, column: 27, scope: !114)
!136 = !DILocation(line: 199, column: 37, scope: !114)
!137 = !DILocation(line: 199, column: 40, scope: !114)
!138 = !DILocation(line: 199, column: 39, scope: !114)
!139 = !DILocation(line: 199, column: 35, scope: !114)
!140 = !DILocation(line: 199, column: 29, scope: !114)
!141 = !DILocation(line: 199, column: 23, scope: !114)
!142 = !DILocation(line: 199, column: 5, scope: !114)
!143 = !DILocation(line: 199, column: 13, scope: !114)
!144 = !DILocation(line: 199, column: 18, scope: !114)
!145 = !DILocation(line: 200, column: 50, scope: !114)
!146 = !DILocation(line: 200, column: 45, scope: !114)
!147 = !DILocation(line: 200, column: 67, scope: !114)
!148 = !DILocation(line: 200, column: 70, scope: !114)
!149 = !DILocation(line: 200, column: 69, scope: !114)
!150 = !DILocation(line: 200, column: 62, scope: !151)
!151 = !DILexicalBlockFile(scope: !114, file: !1, discriminator: 1)
!152 = !DILocation(line: 200, column: 60, scope: !114)
!153 = !DILocation(line: 200, column: 93, scope: !114)
!154 = !DILocation(line: 200, column: 96, scope: !114)
!155 = !DILocation(line: 200, column: 95, scope: !114)
!156 = !DILocation(line: 200, column: 88, scope: !157)
!157 = !DILexicalBlockFile(scope: !114, file: !1, discriminator: 2)
!158 = !DILocation(line: 200, column: 86, scope: !114)
!159 = !DILocation(line: 200, column: 80, scope: !114)
!160 = !DILocation(line: 200, column: 73, scope: !114)
!161 = !DILocation(line: 200, column: 54, scope: !114)
!162 = !DILocation(line: 200, column: 42, scope: !114)
!163 = !DILocation(line: 200, column: 5, scope: !114)
!164 = !DILocation(line: 200, column: 13, scope: !114)
!165 = !DILocation(line: 200, column: 18, scope: !114)
!166 = !DILocation(line: 201, column: 49, scope: !114)
!167 = !DILocation(line: 201, column: 57, scope: !114)
!168 = !DILocation(line: 201, column: 44, scope: !114)
!169 = !DILocation(line: 201, column: 42, scope: !114)
!170 = !DILocation(line: 201, column: 5, scope: !114)
!171 = !DILocation(line: 201, column: 13, scope: !114)
!172 = !DILocation(line: 201, column: 17, scope: !114)
!173 = !DILocation(line: 202, column: 5, scope: !114)
!174 = !DILocation(line: 204, column: 1, scope: !86)
!175 = distinct !DISubprogram(name: "gsl_sf_laguerre_3_e", scope: !1, file: !1, line: 207, type: !46, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!176 = !DILocalVariable(name: "a", arg: 1, scope: !175, file: !1, line: 207, type: !49)
!177 = !DILocation(line: 207, column: 34, scope: !175)
!178 = !DILocalVariable(name: "x", arg: 2, scope: !175, file: !1, line: 207, type: !49)
!179 = !DILocation(line: 207, column: 50, scope: !175)
!180 = !DILocalVariable(name: "result", arg: 3, scope: !175, file: !1, line: 207, type: !51)
!181 = !DILocation(line: 207, column: 69, scope: !175)
!182 = !DILocation(line: 211, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !1, line: 211, column: 6)
!184 = !DILocation(line: 211, column: 8, scope: !183)
!185 = !DILocation(line: 211, column: 6, scope: !175)
!186 = !DILocalVariable(name: "x2_6", scope: !187, file: !1, line: 212, type: !50)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 211, column: 17)
!188 = !DILocation(line: 212, column: 12, scope: !187)
!189 = !DILocation(line: 212, column: 20, scope: !187)
!190 = !DILocation(line: 212, column: 22, scope: !187)
!191 = !DILocation(line: 212, column: 21, scope: !187)
!192 = !DILocation(line: 212, column: 23, scope: !187)
!193 = !DILocation(line: 213, column: 20, scope: !187)
!194 = !DILocation(line: 213, column: 34, scope: !187)
!195 = !DILocation(line: 213, column: 32, scope: !187)
!196 = !DILocation(line: 213, column: 25, scope: !187)
!197 = !DILocation(line: 213, column: 5, scope: !187)
!198 = !DILocation(line: 213, column: 13, scope: !187)
!199 = !DILocation(line: 213, column: 18, scope: !187)
!200 = !DILocation(line: 214, column: 20, scope: !187)
!201 = !DILocation(line: 214, column: 39, scope: !187)
!202 = !DILocation(line: 214, column: 34, scope: !187)
!203 = !DILocation(line: 214, column: 32, scope: !187)
!204 = !DILocation(line: 214, column: 25, scope: !187)
!205 = !DILocation(line: 214, column: 43, scope: !187)
!206 = !DILocation(line: 214, column: 49, scope: !187)
!207 = !DILocation(line: 214, column: 5, scope: !187)
!208 = !DILocation(line: 214, column: 13, scope: !187)
!209 = !DILocation(line: 214, column: 18, scope: !187)
!210 = !DILocation(line: 215, column: 49, scope: !187)
!211 = !DILocation(line: 215, column: 57, scope: !187)
!212 = !DILocation(line: 215, column: 44, scope: !187)
!213 = !DILocation(line: 215, column: 42, scope: !187)
!214 = !DILocation(line: 215, column: 5, scope: !187)
!215 = !DILocation(line: 215, column: 13, scope: !187)
!216 = !DILocation(line: 215, column: 17, scope: !187)
!217 = !DILocation(line: 216, column: 5, scope: !187)
!218 = !DILocation(line: 218, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !183, file: !1, line: 218, column: 11)
!220 = !DILocation(line: 218, column: 13, scope: !219)
!221 = !DILocation(line: 218, column: 11, scope: !183)
!222 = !DILocation(line: 219, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 218, column: 22)
!224 = !DILocation(line: 219, column: 19, scope: !223)
!225 = !DILocation(line: 219, column: 22, scope: !223)
!226 = !DILocation(line: 219, column: 21, scope: !223)
!227 = !DILocation(line: 219, column: 23, scope: !223)
!228 = !DILocation(line: 219, column: 5, scope: !223)
!229 = !DILocation(line: 219, column: 13, scope: !223)
!230 = !DILocation(line: 219, column: 17, scope: !223)
!231 = !DILocation(line: 220, column: 48, scope: !223)
!232 = !DILocation(line: 220, column: 56, scope: !223)
!233 = !DILocation(line: 220, column: 43, scope: !223)
!234 = !DILocation(line: 220, column: 41, scope: !223)
!235 = !DILocation(line: 220, column: 5, scope: !223)
!236 = !DILocation(line: 220, column: 13, scope: !223)
!237 = !DILocation(line: 220, column: 17, scope: !223)
!238 = !DILocation(line: 221, column: 5, scope: !223)
!239 = !DILocalVariable(name: "c0", scope: !240, file: !1, line: 224, type: !50)
!240 = distinct !DILexicalBlock(scope: !219, file: !1, line: 223, column: 8)
!241 = !DILocation(line: 224, column: 12, scope: !240)
!242 = !DILocation(line: 224, column: 22, scope: !240)
!243 = !DILocation(line: 224, column: 21, scope: !240)
!244 = !DILocation(line: 224, column: 30, scope: !240)
!245 = !DILocation(line: 224, column: 29, scope: !240)
!246 = !DILocation(line: 224, column: 24, scope: !240)
!247 = !DILocation(line: 224, column: 38, scope: !240)
!248 = !DILocation(line: 224, column: 37, scope: !240)
!249 = !DILocation(line: 224, column: 32, scope: !240)
!250 = !DILocation(line: 224, column: 41, scope: !240)
!251 = !DILocalVariable(name: "c1", scope: !240, file: !1, line: 225, type: !50)
!252 = !DILocation(line: 225, column: 12, scope: !240)
!253 = !DILocation(line: 225, column: 18, scope: !240)
!254 = !DILocation(line: 225, column: 17, scope: !240)
!255 = !DILocation(line: 225, column: 21, scope: !240)
!256 = !DILocation(line: 225, column: 34, scope: !240)
!257 = !DILocation(line: 225, column: 33, scope: !240)
!258 = !DILocation(line: 225, column: 27, scope: !240)
!259 = !DILocalVariable(name: "c2", scope: !240, file: !1, line: 226, type: !50)
!260 = !DILocation(line: 226, column: 12, scope: !240)
!261 = !DILocation(line: 226, column: 27, scope: !240)
!262 = !DILocation(line: 226, column: 26, scope: !240)
!263 = !DILocation(line: 226, column: 21, scope: !240)
!264 = !DILocalVariable(name: "c3", scope: !240, file: !1, line: 227, type: !50)
!265 = !DILocation(line: 227, column: 12, scope: !240)
!266 = !DILocation(line: 227, column: 32, scope: !240)
!267 = !DILocation(line: 227, column: 31, scope: !240)
!268 = !DILocation(line: 227, column: 26, scope: !240)
!269 = !DILocation(line: 227, column: 21, scope: !240)
!270 = !DILocation(line: 228, column: 20, scope: !240)
!271 = !DILocation(line: 228, column: 25, scope: !240)
!272 = !DILocation(line: 228, column: 28, scope: !240)
!273 = !DILocation(line: 228, column: 27, scope: !240)
!274 = !DILocation(line: 228, column: 37, scope: !240)
!275 = !DILocation(line: 228, column: 40, scope: !240)
!276 = !DILocation(line: 228, column: 39, scope: !240)
!277 = !DILocation(line: 228, column: 49, scope: !240)
!278 = !DILocation(line: 228, column: 52, scope: !240)
!279 = !DILocation(line: 228, column: 51, scope: !240)
!280 = !DILocation(line: 228, column: 47, scope: !240)
!281 = !DILocation(line: 228, column: 41, scope: !240)
!282 = !DILocation(line: 228, column: 35, scope: !240)
!283 = !DILocation(line: 228, column: 29, scope: !240)
!284 = !DILocation(line: 228, column: 23, scope: !240)
!285 = !DILocation(line: 228, column: 5, scope: !240)
!286 = !DILocation(line: 228, column: 13, scope: !240)
!287 = !DILocation(line: 228, column: 18, scope: !240)
!288 = !DILocation(line: 229, column: 37, scope: !240)
!289 = !DILocation(line: 229, column: 40, scope: !240)
!290 = !DILocation(line: 229, column: 39, scope: !240)
!291 = !DILocation(line: 229, column: 32, scope: !240)
!292 = !DILocation(line: 229, column: 30, scope: !240)
!293 = !DILocation(line: 229, column: 24, scope: !240)
!294 = !DILocation(line: 229, column: 5, scope: !240)
!295 = !DILocation(line: 229, column: 13, scope: !240)
!296 = !DILocation(line: 229, column: 18, scope: !240)
!297 = !DILocation(line: 230, column: 37, scope: !240)
!298 = !DILocation(line: 230, column: 40, scope: !240)
!299 = !DILocation(line: 230, column: 39, scope: !240)
!300 = !DILocation(line: 230, column: 32, scope: !240)
!301 = !DILocation(line: 230, column: 30, scope: !240)
!302 = !DILocation(line: 230, column: 45, scope: !240)
!303 = !DILocation(line: 230, column: 53, scope: !240)
!304 = !DILocation(line: 230, column: 43, scope: !240)
!305 = !DILocation(line: 230, column: 24, scope: !240)
!306 = !DILocation(line: 230, column: 5, scope: !240)
!307 = !DILocation(line: 230, column: 13, scope: !240)
!308 = !DILocation(line: 230, column: 18, scope: !240)
!309 = !DILocation(line: 231, column: 50, scope: !240)
!310 = !DILocation(line: 231, column: 45, scope: !240)
!311 = !DILocation(line: 231, column: 67, scope: !240)
!312 = !DILocation(line: 231, column: 70, scope: !240)
!313 = !DILocation(line: 231, column: 69, scope: !240)
!314 = !DILocation(line: 231, column: 62, scope: !315)
!315 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 1)
!316 = !DILocation(line: 231, column: 60, scope: !240)
!317 = !DILocation(line: 231, column: 75, scope: !240)
!318 = !DILocation(line: 231, column: 83, scope: !240)
!319 = !DILocation(line: 231, column: 73, scope: !240)
!320 = !DILocation(line: 231, column: 54, scope: !240)
!321 = !DILocation(line: 231, column: 42, scope: !240)
!322 = !DILocation(line: 231, column: 5, scope: !240)
!323 = !DILocation(line: 231, column: 13, scope: !240)
!324 = !DILocation(line: 231, column: 18, scope: !240)
!325 = !DILocation(line: 232, column: 49, scope: !240)
!326 = !DILocation(line: 232, column: 57, scope: !240)
!327 = !DILocation(line: 232, column: 44, scope: !240)
!328 = !DILocation(line: 232, column: 42, scope: !240)
!329 = !DILocation(line: 232, column: 5, scope: !240)
!330 = !DILocation(line: 232, column: 13, scope: !240)
!331 = !DILocation(line: 232, column: 17, scope: !240)
!332 = !DILocation(line: 233, column: 5, scope: !240)
!333 = !DILocation(line: 235, column: 1, scope: !175)
!334 = distinct !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !1, file: !1, line: 238, type: !335, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!335 = !DISubroutineType(types: !336)
!336 = !{!48, !337, !49, !49, !51}
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!338 = !DILocalVariable(name: "n", arg: 1, scope: !334, file: !1, line: 238, type: !337)
!339 = !DILocation(line: 238, column: 35, scope: !334)
!340 = !DILocalVariable(name: "a", arg: 2, scope: !334, file: !1, line: 238, type: !49)
!341 = !DILocation(line: 238, column: 51, scope: !334)
!342 = !DILocalVariable(name: "x", arg: 3, scope: !334, file: !1, line: 238, type: !49)
!343 = !DILocation(line: 238, column: 67, scope: !334)
!344 = !DILocalVariable(name: "result", arg: 4, scope: !334, file: !1, line: 239, type: !51)
!345 = !DILocation(line: 239, column: 44, scope: !334)
!346 = !DILocation(line: 243, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !334, file: !1, line: 243, column: 6)
!348 = !DILocation(line: 243, column: 8, scope: !347)
!349 = !DILocation(line: 243, column: 6, scope: !334)
!350 = !DILocation(line: 244, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 243, column: 13)
!352 = distinct !{!352, !350}
!353 = !DILocation(line: 244, column: 5, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 244, column: 5)
!356 = distinct !{!356, !357}
!357 = !DILocation(line: 244, column: 5, scope: !355)
!358 = !DILocation(line: 244, column: 5, scope: !359)
!359 = !DILexicalBlockFile(scope: !360, file: !1, discriminator: 2)
!360 = distinct !DILexicalBlock(scope: !355, file: !1, line: 244, column: 5)
!361 = !DILocation(line: 244, column: 5, scope: !362)
!362 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 3)
!363 = !DILocation(line: 245, column: 3, scope: !351)
!364 = !DILocation(line: 246, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !347, file: !1, line: 246, column: 11)
!366 = !DILocation(line: 246, column: 13, scope: !365)
!367 = !DILocation(line: 246, column: 11, scope: !347)
!368 = !DILocation(line: 247, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 246, column: 19)
!370 = !DILocation(line: 247, column: 13, scope: !369)
!371 = !DILocation(line: 247, column: 17, scope: !369)
!372 = !DILocation(line: 248, column: 5, scope: !369)
!373 = !DILocation(line: 248, column: 13, scope: !369)
!374 = !DILocation(line: 248, column: 17, scope: !369)
!375 = !DILocation(line: 249, column: 5, scope: !369)
!376 = !DILocation(line: 251, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !365, file: !1, line: 251, column: 11)
!378 = !DILocation(line: 251, column: 13, scope: !377)
!379 = !DILocation(line: 251, column: 11, scope: !365)
!380 = !DILocation(line: 252, column: 25, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 251, column: 19)
!382 = !DILocation(line: 252, column: 23, scope: !381)
!383 = !DILocation(line: 252, column: 29, scope: !381)
!384 = !DILocation(line: 252, column: 27, scope: !381)
!385 = !DILocation(line: 252, column: 5, scope: !381)
!386 = !DILocation(line: 252, column: 13, scope: !381)
!387 = !DILocation(line: 252, column: 17, scope: !381)
!388 = !DILocation(line: 253, column: 55, scope: !381)
!389 = !DILocation(line: 253, column: 50, scope: !381)
!390 = !DILocation(line: 253, column: 48, scope: !381)
!391 = !DILocation(line: 253, column: 65, scope: !381)
!392 = !DILocation(line: 253, column: 60, scope: !393)
!393 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 1)
!394 = !DILocation(line: 253, column: 58, scope: !381)
!395 = !DILocation(line: 253, column: 41, scope: !381)
!396 = !DILocation(line: 253, column: 5, scope: !381)
!397 = !DILocation(line: 253, column: 13, scope: !381)
!398 = !DILocation(line: 253, column: 17, scope: !381)
!399 = !DILocation(line: 254, column: 5, scope: !381)
!400 = !DILocation(line: 256, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !377, file: !1, line: 256, column: 11)
!402 = !DILocation(line: 256, column: 13, scope: !401)
!403 = !DILocation(line: 256, column: 11, scope: !377)
!404 = !DILocalVariable(name: "product", scope: !405, file: !1, line: 257, type: !50)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 256, column: 21)
!406 = !DILocation(line: 257, column: 12, scope: !405)
!407 = !DILocation(line: 257, column: 22, scope: !405)
!408 = !DILocation(line: 257, column: 24, scope: !405)
!409 = !DILocalVariable(name: "k", scope: !405, file: !1, line: 258, type: !48)
!410 = !DILocation(line: 258, column: 9, scope: !405)
!411 = !DILocation(line: 259, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !405, file: !1, line: 259, column: 5)
!413 = !DILocation(line: 259, column: 9, scope: !412)
!414 = !DILocation(line: 259, column: 14, scope: !415)
!415 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 1)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 259, column: 5)
!417 = !DILocation(line: 259, column: 17, scope: !415)
!418 = !DILocation(line: 259, column: 15, scope: !415)
!419 = !DILocation(line: 259, column: 5, scope: !415)
!420 = !DILocation(line: 260, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !1, line: 259, column: 25)
!422 = !DILocation(line: 260, column: 23, scope: !421)
!423 = !DILocation(line: 260, column: 21, scope: !421)
!424 = !DILocation(line: 260, column: 26, scope: !421)
!425 = !DILocation(line: 260, column: 25, scope: !421)
!426 = !DILocation(line: 260, column: 15, scope: !421)
!427 = !DILocation(line: 261, column: 5, scope: !421)
!428 = !DILocation(line: 259, column: 21, scope: !429)
!429 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 2)
!430 = !DILocation(line: 259, column: 5, scope: !429)
!431 = distinct !{!431, !432}
!432 = !DILocation(line: 259, column: 5, scope: !405)
!433 = !DILocation(line: 262, column: 19, scope: !405)
!434 = !DILocation(line: 262, column: 5, scope: !405)
!435 = !DILocation(line: 262, column: 13, scope: !405)
!436 = !DILocation(line: 262, column: 17, scope: !405)
!437 = !DILocation(line: 263, column: 26, scope: !405)
!438 = !DILocation(line: 263, column: 28, scope: !405)
!439 = !DILocation(line: 263, column: 23, scope: !405)
!440 = !DILocation(line: 263, column: 35, scope: !405)
!441 = !DILocation(line: 263, column: 60, scope: !405)
!442 = !DILocation(line: 263, column: 55, scope: !405)
!443 = !DILocation(line: 263, column: 53, scope: !405)
!444 = !DILocation(line: 263, column: 69, scope: !405)
!445 = !DILocation(line: 263, column: 5, scope: !405)
!446 = !DILocation(line: 263, column: 13, scope: !405)
!447 = !DILocation(line: 263, column: 17, scope: !405)
!448 = !DILocation(line: 264, column: 5, scope: !405)
!449 = !DILocation(line: 266, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !401, file: !1, line: 266, column: 11)
!451 = !DILocation(line: 266, column: 13, scope: !450)
!452 = !DILocation(line: 266, column: 19, scope: !450)
!453 = !DILocation(line: 266, column: 22, scope: !454)
!454 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!455 = !DILocation(line: 266, column: 24, scope: !454)
!456 = !DILocation(line: 266, column: 11, scope: !454)
!457 = !DILocation(line: 271, column: 26, scope: !458)
!458 = distinct !DILexicalBlock(scope: !450, file: !1, line: 266, column: 32)
!459 = !DILocation(line: 271, column: 29, scope: !458)
!460 = !DILocation(line: 271, column: 32, scope: !458)
!461 = !DILocation(line: 271, column: 35, scope: !458)
!462 = !DILocation(line: 271, column: 12, scope: !458)
!463 = !DILocation(line: 271, column: 5, scope: !458)
!464 = !DILocation(line: 273, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !450, file: !1, line: 273, column: 11)
!466 = !DILocation(line: 273, column: 13, scope: !465)
!467 = !DILocation(line: 273, column: 17, scope: !465)
!468 = !DILocation(line: 273, column: 21, scope: !469)
!469 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 1)
!470 = !DILocation(line: 273, column: 23, scope: !469)
!471 = !DILocation(line: 273, column: 29, scope: !469)
!472 = !DILocation(line: 273, column: 32, scope: !473)
!473 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 2)
!474 = !DILocation(line: 273, column: 37, scope: !473)
!475 = !DILocation(line: 273, column: 36, scope: !473)
!476 = !DILocation(line: 273, column: 38, scope: !473)
!477 = !DILocation(line: 273, column: 34, scope: !473)
!478 = !DILocation(line: 273, column: 11, scope: !473)
!479 = !DILocation(line: 281, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 281, column: 8)
!481 = distinct !DILexicalBlock(scope: !465, file: !1, line: 273, column: 43)
!482 = !DILocation(line: 281, column: 25, scope: !480)
!483 = !DILocation(line: 281, column: 28, scope: !480)
!484 = !DILocation(line: 281, column: 31, scope: !480)
!485 = !DILocation(line: 281, column: 8, scope: !480)
!486 = !DILocation(line: 281, column: 39, scope: !480)
!487 = !DILocation(line: 281, column: 8, scope: !481)
!488 = !DILocation(line: 282, column: 7, scope: !480)
!489 = !DILocation(line: 284, column: 35, scope: !480)
!490 = !DILocation(line: 284, column: 38, scope: !480)
!491 = !DILocation(line: 284, column: 41, scope: !480)
!492 = !DILocation(line: 284, column: 44, scope: !480)
!493 = !DILocation(line: 284, column: 14, scope: !480)
!494 = !DILocation(line: 284, column: 7, scope: !480)
!495 = !DILocation(line: 286, column: 11, scope: !496)
!496 = distinct !DILexicalBlock(scope: !465, file: !1, line: 286, column: 11)
!497 = !DILocation(line: 286, column: 13, scope: !496)
!498 = !DILocation(line: 286, column: 23, scope: !496)
!499 = !DILocation(line: 286, column: 26, scope: !500)
!500 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 1)
!501 = !DILocation(line: 286, column: 28, scope: !500)
!502 = !DILocation(line: 286, column: 34, scope: !500)
!503 = !DILocation(line: 286, column: 37, scope: !504)
!504 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 2)
!505 = !DILocation(line: 286, column: 39, scope: !504)
!506 = !DILocation(line: 286, column: 46, scope: !504)
!507 = !DILocation(line: 286, column: 49, scope: !508)
!508 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 3)
!509 = !DILocation(line: 286, column: 58, scope: !508)
!510 = !DILocation(line: 286, column: 59, scope: !508)
!511 = !DILocation(line: 286, column: 56, scope: !508)
!512 = !DILocation(line: 286, column: 69, scope: !508)
!513 = !DILocation(line: 286, column: 68, scope: !508)
!514 = !DILocation(line: 286, column: 64, scope: !508)
!515 = !DILocation(line: 286, column: 51, scope: !508)
!516 = !DILocation(line: 286, column: 11, scope: !508)
!517 = !DILocation(line: 287, column: 29, scope: !518)
!518 = distinct !DILexicalBlock(scope: !496, file: !1, line: 286, column: 72)
!519 = !DILocation(line: 287, column: 32, scope: !518)
!520 = !DILocation(line: 287, column: 35, scope: !518)
!521 = !DILocation(line: 287, column: 38, scope: !518)
!522 = !DILocation(line: 287, column: 12, scope: !518)
!523 = !DILocation(line: 287, column: 5, scope: !518)
!524 = !DILocation(line: 289, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !496, file: !1, line: 289, column: 11)
!526 = !DILocation(line: 289, column: 13, scope: !525)
!527 = !DILocation(line: 289, column: 20, scope: !525)
!528 = !DILocation(line: 289, column: 24, scope: !529)
!529 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 1)
!530 = !DILocation(line: 289, column: 26, scope: !529)
!531 = !DILocation(line: 289, column: 32, scope: !529)
!532 = !DILocation(line: 289, column: 35, scope: !533)
!533 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 2)
!534 = !DILocation(line: 289, column: 40, scope: !533)
!535 = !DILocation(line: 289, column: 39, scope: !533)
!536 = !DILocation(line: 289, column: 41, scope: !533)
!537 = !DILocation(line: 289, column: 37, scope: !533)
!538 = !DILocation(line: 289, column: 11, scope: !533)
!539 = !DILocalVariable(name: "lg2", scope: !540, file: !1, line: 290, type: !52)
!540 = distinct !DILexicalBlock(scope: !525, file: !1, line: 289, column: 46)
!541 = !DILocation(line: 290, column: 19, scope: !540)
!542 = !DILocalVariable(name: "stat_lg2", scope: !540, file: !1, line: 291, type: !48)
!543 = !DILocation(line: 291, column: 9, scope: !540)
!544 = !DILocation(line: 291, column: 40, scope: !540)
!545 = !DILocation(line: 291, column: 43, scope: !540)
!546 = !DILocation(line: 291, column: 20, scope: !540)
!547 = !DILocalVariable(name: "Lkm1", scope: !540, file: !1, line: 292, type: !50)
!548 = !DILocation(line: 292, column: 12, scope: !540)
!549 = !DILocation(line: 292, column: 25, scope: !540)
!550 = !DILocation(line: 292, column: 23, scope: !540)
!551 = !DILocation(line: 292, column: 29, scope: !540)
!552 = !DILocation(line: 292, column: 27, scope: !540)
!553 = !DILocalVariable(name: "Lk", scope: !540, file: !1, line: 293, type: !50)
!554 = !DILocation(line: 293, column: 12, scope: !540)
!555 = !DILocation(line: 293, column: 23, scope: !540)
!556 = !DILocalVariable(name: "Lkp1", scope: !540, file: !1, line: 294, type: !50)
!557 = !DILocation(line: 294, column: 12, scope: !540)
!558 = !DILocalVariable(name: "k", scope: !540, file: !1, line: 295, type: !48)
!559 = !DILocation(line: 295, column: 9, scope: !540)
!560 = !DILocation(line: 297, column: 10, scope: !561)
!561 = distinct !DILexicalBlock(scope: !540, file: !1, line: 297, column: 5)
!562 = !DILocation(line: 297, column: 9, scope: !561)
!563 = !DILocation(line: 297, column: 14, scope: !564)
!564 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 1)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 297, column: 5)
!566 = !DILocation(line: 297, column: 16, scope: !564)
!567 = !DILocation(line: 297, column: 15, scope: !564)
!568 = !DILocation(line: 297, column: 5, scope: !564)
!569 = !DILocation(line: 298, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !1, line: 297, column: 24)
!571 = !DILocation(line: 298, column: 19, scope: !570)
!572 = !DILocation(line: 298, column: 18, scope: !570)
!573 = !DILocation(line: 298, column: 15, scope: !570)
!574 = !DILocation(line: 298, column: 22, scope: !570)
!575 = !DILocation(line: 298, column: 21, scope: !570)
!576 = !DILocation(line: 298, column: 34, scope: !570)
!577 = !DILocation(line: 298, column: 33, scope: !570)
!578 = !DILocation(line: 298, column: 36, scope: !570)
!579 = !DILocation(line: 298, column: 35, scope: !570)
!580 = !DILocation(line: 298, column: 37, scope: !570)
!581 = !DILocation(line: 298, column: 42, scope: !570)
!582 = !DILocation(line: 298, column: 41, scope: !570)
!583 = !DILocation(line: 298, column: 45, scope: !570)
!584 = !DILocation(line: 298, column: 44, scope: !570)
!585 = !DILocation(line: 298, column: 27, scope: !570)
!586 = !DILocation(line: 298, column: 50, scope: !570)
!587 = !DILocation(line: 298, column: 51, scope: !570)
!588 = !DILocation(line: 298, column: 48, scope: !570)
!589 = !DILocation(line: 298, column: 12, scope: !570)
!590 = !DILocation(line: 299, column: 14, scope: !570)
!591 = !DILocation(line: 299, column: 12, scope: !570)
!592 = !DILocation(line: 300, column: 14, scope: !570)
!593 = !DILocation(line: 300, column: 12, scope: !570)
!594 = !DILocation(line: 301, column: 5, scope: !570)
!595 = !DILocation(line: 297, column: 20, scope: !596)
!596 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 2)
!597 = !DILocation(line: 297, column: 5, scope: !596)
!598 = distinct !{!598, !599}
!599 = !DILocation(line: 297, column: 5, scope: !540)
!600 = !DILocation(line: 302, column: 19, scope: !540)
!601 = !DILocation(line: 302, column: 5, scope: !540)
!602 = !DILocation(line: 302, column: 13, scope: !540)
!603 = !DILocation(line: 302, column: 17, scope: !540)
!604 = !DILocation(line: 303, column: 29, scope: !540)
!605 = !DILocation(line: 303, column: 37, scope: !540)
!606 = !DILocation(line: 303, column: 32, scope: !540)
!607 = !DILocation(line: 303, column: 20, scope: !540)
!608 = !DILocation(line: 303, column: 42, scope: !540)
!609 = !DILocation(line: 303, column: 63, scope: !540)
!610 = !DILocation(line: 303, column: 61, scope: !540)
!611 = !DILocation(line: 303, column: 72, scope: !540)
!612 = !DILocation(line: 303, column: 67, scope: !613)
!613 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 1)
!614 = !DILocation(line: 303, column: 65, scope: !540)
!615 = !DILocation(line: 303, column: 5, scope: !540)
!616 = !DILocation(line: 303, column: 13, scope: !540)
!617 = !DILocation(line: 303, column: 17, scope: !540)
!618 = !DILocation(line: 304, column: 12, scope: !540)
!619 = !DILocation(line: 304, column: 5, scope: !540)
!620 = !DILocation(line: 308, column: 33, scope: !621)
!621 = distinct !DILexicalBlock(scope: !525, file: !1, line: 306, column: 8)
!622 = !DILocation(line: 308, column: 36, scope: !621)
!623 = !DILocation(line: 308, column: 39, scope: !621)
!624 = !DILocation(line: 308, column: 42, scope: !621)
!625 = !DILocation(line: 308, column: 12, scope: !621)
!626 = !DILocation(line: 308, column: 5, scope: !621)
!627 = !DILocation(line: 310, column: 1, scope: !334)
!628 = distinct !DISubprogram(name: "laguerre_n_cp", scope: !1, file: !1, line: 89, type: !335, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!629 = !DILocalVariable(name: "n", arg: 1, scope: !628, file: !1, line: 89, type: !337)
!630 = !DILocation(line: 89, column: 25, scope: !628)
!631 = !DILocalVariable(name: "a", arg: 2, scope: !628, file: !1, line: 89, type: !49)
!632 = !DILocation(line: 89, column: 41, scope: !628)
!633 = !DILocalVariable(name: "x", arg: 3, scope: !628, file: !1, line: 89, type: !49)
!634 = !DILocation(line: 89, column: 57, scope: !628)
!635 = !DILocalVariable(name: "result", arg: 4, scope: !628, file: !1, line: 89, type: !51)
!636 = !DILocation(line: 89, column: 76, scope: !628)
!637 = !DILocalVariable(name: "lnfact", scope: !628, file: !1, line: 91, type: !52)
!638 = !DILocation(line: 91, column: 17, scope: !628)
!639 = !DILocalVariable(name: "lg1", scope: !628, file: !1, line: 92, type: !52)
!640 = !DILocation(line: 92, column: 17, scope: !628)
!641 = !DILocalVariable(name: "lg2", scope: !628, file: !1, line: 93, type: !52)
!642 = !DILocation(line: 93, column: 17, scope: !628)
!643 = !DILocalVariable(name: "s1", scope: !628, file: !1, line: 94, type: !50)
!644 = !DILocation(line: 94, column: 10, scope: !628)
!645 = !DILocalVariable(name: "s2", scope: !628, file: !1, line: 94, type: !50)
!646 = !DILocation(line: 94, column: 14, scope: !628)
!647 = !DILocalVariable(name: "stat_f", scope: !628, file: !1, line: 95, type: !48)
!648 = !DILocation(line: 95, column: 7, scope: !628)
!649 = !DILocation(line: 95, column: 32, scope: !628)
!650 = !DILocation(line: 95, column: 16, scope: !628)
!651 = !DILocalVariable(name: "stat_g1", scope: !628, file: !1, line: 96, type: !48)
!652 = !DILocation(line: 96, column: 7, scope: !628)
!653 = !DILocation(line: 96, column: 38, scope: !628)
!654 = !DILocation(line: 96, column: 39, scope: !628)
!655 = !DILocation(line: 96, column: 44, scope: !628)
!656 = !DILocation(line: 96, column: 43, scope: !628)
!657 = !DILocation(line: 96, column: 17, scope: !628)
!658 = !DILocalVariable(name: "stat_g2", scope: !628, file: !1, line: 97, type: !48)
!659 = !DILocation(line: 97, column: 7, scope: !628)
!660 = !DILocation(line: 97, column: 38, scope: !628)
!661 = !DILocation(line: 97, column: 39, scope: !628)
!662 = !DILocation(line: 97, column: 17, scope: !628)
!663 = !DILocalVariable(name: "poly_1F1_val", scope: !628, file: !1, line: 98, type: !50)
!664 = !DILocation(line: 98, column: 10, scope: !628)
!665 = !DILocalVariable(name: "poly_1F1_err", scope: !628, file: !1, line: 99, type: !50)
!666 = !DILocation(line: 99, column: 10, scope: !628)
!667 = !DILocalVariable(name: "stat_e", scope: !628, file: !1, line: 100, type: !48)
!668 = !DILocation(line: 100, column: 7, scope: !628)
!669 = !DILocalVariable(name: "k", scope: !628, file: !1, line: 101, type: !48)
!670 = !DILocation(line: 101, column: 7, scope: !628)
!671 = !DILocalVariable(name: "lnpre_val", scope: !628, file: !1, line: 103, type: !50)
!672 = !DILocation(line: 103, column: 10, scope: !628)
!673 = !DILocation(line: 103, column: 27, scope: !628)
!674 = !DILocation(line: 103, column: 37, scope: !628)
!675 = !DILocation(line: 103, column: 31, scope: !628)
!676 = !DILocation(line: 103, column: 51, scope: !628)
!677 = !DILocation(line: 103, column: 42, scope: !628)
!678 = !DILocalVariable(name: "lnpre_err", scope: !628, file: !1, line: 104, type: !50)
!679 = !DILocation(line: 104, column: 10, scope: !628)
!680 = !DILocation(line: 104, column: 26, scope: !628)
!681 = !DILocation(line: 104, column: 36, scope: !628)
!682 = !DILocation(line: 104, column: 30, scope: !628)
!683 = !DILocation(line: 104, column: 49, scope: !628)
!684 = !DILocation(line: 104, column: 40, scope: !628)
!685 = !DILocation(line: 104, column: 84, scope: !628)
!686 = !DILocation(line: 104, column: 79, scope: !628)
!687 = !DILocation(line: 104, column: 77, scope: !628)
!688 = !DILocation(line: 104, column: 53, scope: !628)
!689 = !DILocation(line: 106, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !628, file: !1, line: 106, column: 3)
!691 = !DILocation(line: 106, column: 10, scope: !690)
!692 = !DILocation(line: 106, column: 8, scope: !690)
!693 = !DILocation(line: 106, column: 7, scope: !690)
!694 = !DILocation(line: 106, column: 14, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!696 = distinct !DILexicalBlock(scope: !690, file: !1, line: 106, column: 3)
!697 = !DILocation(line: 106, column: 15, scope: !695)
!698 = !DILocation(line: 106, column: 3, scope: !695)
!699 = !DILocalVariable(name: "t", scope: !700, file: !1, line: 107, type: !50)
!700 = distinct !DILexicalBlock(scope: !696, file: !1, line: 106, column: 25)
!701 = !DILocation(line: 107, column: 12, scope: !700)
!702 = !DILocation(line: 107, column: 18, scope: !700)
!703 = !DILocation(line: 107, column: 17, scope: !700)
!704 = !DILocation(line: 107, column: 20, scope: !700)
!705 = !DILocation(line: 107, column: 19, scope: !700)
!706 = !DILocation(line: 107, column: 16, scope: !700)
!707 = !DILocation(line: 107, column: 24, scope: !700)
!708 = !DILocation(line: 107, column: 25, scope: !700)
!709 = !DILocation(line: 107, column: 30, scope: !700)
!710 = !DILocation(line: 107, column: 29, scope: !700)
!711 = !DILocation(line: 107, column: 22, scope: !700)
!712 = !DILocation(line: 107, column: 36, scope: !700)
!713 = !DILocation(line: 107, column: 39, scope: !700)
!714 = !DILocation(line: 107, column: 40, scope: !700)
!715 = !DILocation(line: 107, column: 38, scope: !700)
!716 = !DILocation(line: 107, column: 37, scope: !700)
!717 = !DILocation(line: 107, column: 33, scope: !700)
!718 = !DILocalVariable(name: "r", scope: !700, file: !1, line: 108, type: !50)
!719 = !DILocation(line: 108, column: 12, scope: !700)
!720 = !DILocation(line: 108, column: 16, scope: !700)
!721 = !DILocation(line: 108, column: 24, scope: !700)
!722 = !DILocation(line: 108, column: 23, scope: !700)
!723 = !DILocation(line: 108, column: 18, scope: !700)
!724 = !DILocation(line: 109, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !700, file: !1, line: 109, column: 8)
!726 = !DILocation(line: 109, column: 28, scope: !725)
!727 = !DILocation(line: 109, column: 27, scope: !725)
!728 = !DILocation(line: 109, column: 10, scope: !725)
!729 = !DILocation(line: 109, column: 8, scope: !700)
!730 = !DILocation(line: 111, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !725, file: !1, line: 109, column: 42)
!732 = distinct !{!732, !730}
!733 = !DILocation(line: 111, column: 7, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 1)
!735 = distinct !DILexicalBlock(scope: !731, file: !1, line: 111, column: 7)
!736 = !DILocation(line: 112, column: 5, scope: !731)
!737 = !DILocation(line: 115, column: 29, scope: !738)
!738 = distinct !DILexicalBlock(scope: !725, file: !1, line: 113, column: 10)
!739 = !DILocation(line: 115, column: 33, scope: !738)
!740 = !DILocation(line: 115, column: 31, scope: !738)
!741 = !DILocation(line: 115, column: 27, scope: !738)
!742 = !DILocation(line: 115, column: 21, scope: !738)
!743 = !DILocation(line: 116, column: 46, scope: !738)
!744 = !DILocation(line: 116, column: 41, scope: !738)
!745 = !DILocation(line: 116, column: 51, scope: !738)
!746 = !DILocation(line: 116, column: 49, scope: !738)
!747 = !DILocation(line: 116, column: 39, scope: !738)
!748 = !DILocation(line: 116, column: 20, scope: !738)
!749 = !DILocation(line: 118, column: 3, scope: !700)
!750 = !DILocation(line: 106, column: 21, scope: !751)
!751 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 2)
!752 = !DILocation(line: 106, column: 3, scope: !751)
!753 = distinct !{!753, !754}
!754 = !DILocation(line: 106, column: 3, scope: !628)
!755 = !DILocation(line: 120, column: 34, scope: !628)
!756 = !DILocation(line: 120, column: 45, scope: !628)
!757 = !DILocation(line: 121, column: 37, scope: !628)
!758 = !DILocation(line: 121, column: 51, scope: !628)
!759 = !DILocation(line: 122, column: 37, scope: !628)
!760 = !DILocation(line: 120, column: 12, scope: !628)
!761 = !DILocation(line: 120, column: 10, scope: !628)
!762 = !DILocation(line: 124, column: 10, scope: !628)
!763 = !DILocation(line: 124, column: 10, scope: !764)
!764 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 1)
!765 = !DILocation(line: 124, column: 10, scope: !766)
!766 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 2)
!767 = !DILocation(line: 124, column: 10, scope: !768)
!768 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 3)
!769 = !DILocation(line: 124, column: 10, scope: !770)
!770 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 4)
!771 = !DILocation(line: 124, column: 10, scope: !772)
!772 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 5)
!773 = !DILocation(line: 124, column: 10, scope: !774)
!774 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 6)
!775 = !DILocation(line: 124, column: 10, scope: !776)
!776 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 7)
!777 = !DILocation(line: 124, column: 10, scope: !778)
!778 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 8)
!779 = !DILocation(line: 124, column: 10, scope: !780)
!780 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 9)
!781 = !DILocation(line: 124, column: 10, scope: !782)
!782 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 10)
!783 = !DILocation(line: 124, column: 10, scope: !784)
!784 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 11)
!785 = !DILocation(line: 124, column: 10, scope: !786)
!786 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 12)
!787 = !DILocation(line: 124, column: 3, scope: !786)
!788 = !DILocation(line: 125, column: 1, scope: !628)
!789 = distinct !DISubprogram(name: "laguerre_n_poly_safe", scope: !1, file: !1, line: 135, type: !335, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!790 = !DILocalVariable(name: "n", arg: 1, scope: !789, file: !1, line: 135, type: !337)
!791 = !DILocation(line: 135, column: 32, scope: !789)
!792 = !DILocalVariable(name: "a", arg: 2, scope: !789, file: !1, line: 135, type: !49)
!793 = !DILocation(line: 135, column: 48, scope: !789)
!794 = !DILocalVariable(name: "x", arg: 3, scope: !789, file: !1, line: 135, type: !49)
!795 = !DILocation(line: 135, column: 64, scope: !789)
!796 = !DILocalVariable(name: "result", arg: 4, scope: !789, file: !1, line: 135, type: !51)
!797 = !DILocation(line: 135, column: 83, scope: !789)
!798 = !DILocalVariable(name: "b", scope: !789, file: !1, line: 137, type: !49)
!799 = !DILocation(line: 137, column: 16, scope: !789)
!800 = !DILocation(line: 137, column: 20, scope: !789)
!801 = !DILocation(line: 137, column: 22, scope: !789)
!802 = !DILocalVariable(name: "mx", scope: !789, file: !1, line: 138, type: !49)
!803 = !DILocation(line: 138, column: 16, scope: !789)
!804 = !DILocation(line: 138, column: 22, scope: !789)
!805 = !DILocation(line: 138, column: 21, scope: !789)
!806 = !DILocalVariable(name: "tc_sgn", scope: !789, file: !1, line: 139, type: !49)
!807 = !DILocation(line: 139, column: 16, scope: !789)
!808 = !DILocation(line: 139, column: 26, scope: !789)
!809 = !DILocation(line: 139, column: 28, scope: !789)
!810 = !DILocation(line: 139, column: 26, scope: !811)
!811 = !DILexicalBlockFile(scope: !789, file: !1, discriminator: 1)
!812 = !DILocation(line: 139, column: 43, scope: !813)
!813 = !DILexicalBlockFile(scope: !789, file: !1, discriminator: 2)
!814 = !DILocation(line: 139, column: 26, scope: !813)
!815 = !DILocation(line: 139, column: 26, scope: !816)
!816 = !DILexicalBlockFile(scope: !789, file: !1, discriminator: 3)
!817 = !DILocation(line: 139, column: 16, scope: !816)
!818 = !DILocalVariable(name: "tc", scope: !789, file: !1, line: 140, type: !52)
!819 = !DILocation(line: 140, column: 17, scope: !789)
!820 = !DILocalVariable(name: "stat_tc", scope: !789, file: !1, line: 141, type: !48)
!821 = !DILocation(line: 141, column: 7, scope: !789)
!822 = !DILocation(line: 141, column: 38, scope: !789)
!823 = !DILocation(line: 141, column: 46, scope: !789)
!824 = !DILocation(line: 141, column: 41, scope: !789)
!825 = !DILocation(line: 141, column: 17, scope: !811)
!826 = !DILocation(line: 143, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !789, file: !1, line: 143, column: 6)
!828 = !DILocation(line: 143, column: 14, scope: !827)
!829 = !DILocation(line: 143, column: 6, scope: !789)
!830 = !DILocalVariable(name: "term", scope: !831, file: !1, line: 144, type: !50)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 143, column: 30)
!832 = !DILocation(line: 144, column: 12, scope: !831)
!833 = !DILocation(line: 144, column: 22, scope: !831)
!834 = !DILocation(line: 144, column: 28, scope: !831)
!835 = !DILocation(line: 144, column: 26, scope: !831)
!836 = !DILocalVariable(name: "sum_val", scope: !831, file: !1, line: 145, type: !50)
!837 = !DILocation(line: 145, column: 12, scope: !831)
!838 = !DILocation(line: 145, column: 22, scope: !831)
!839 = !DILocalVariable(name: "sum_err", scope: !831, file: !1, line: 146, type: !50)
!840 = !DILocation(line: 146, column: 12, scope: !831)
!841 = !DILocation(line: 146, column: 25, scope: !831)
!842 = !DILocalVariable(name: "k", scope: !831, file: !1, line: 147, type: !48)
!843 = !DILocation(line: 147, column: 9, scope: !831)
!844 = !DILocation(line: 148, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !831, file: !1, line: 148, column: 5)
!846 = !DILocation(line: 148, column: 12, scope: !845)
!847 = !DILocation(line: 148, column: 10, scope: !845)
!848 = !DILocation(line: 148, column: 9, scope: !845)
!849 = !DILocation(line: 148, column: 16, scope: !850)
!850 = !DILexicalBlockFile(scope: !851, file: !1, discriminator: 1)
!851 = distinct !DILexicalBlock(scope: !845, file: !1, line: 148, column: 5)
!852 = !DILocation(line: 148, column: 17, scope: !850)
!853 = !DILocation(line: 148, column: 5, scope: !850)
!854 = !DILocation(line: 149, column: 17, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !1, line: 148, column: 27)
!856 = !DILocation(line: 149, column: 19, scope: !855)
!857 = !DILocation(line: 149, column: 18, scope: !855)
!858 = !DILocation(line: 149, column: 23, scope: !855)
!859 = !DILocation(line: 149, column: 25, scope: !855)
!860 = !DILocation(line: 149, column: 24, scope: !855)
!861 = !DILocation(line: 149, column: 22, scope: !855)
!862 = !DILocation(line: 149, column: 21, scope: !855)
!863 = !DILocation(line: 149, column: 30, scope: !855)
!864 = !DILocation(line: 149, column: 31, scope: !855)
!865 = !DILocation(line: 149, column: 28, scope: !855)
!866 = !DILocation(line: 149, column: 37, scope: !855)
!867 = !DILocation(line: 149, column: 36, scope: !855)
!868 = !DILocation(line: 149, column: 12, scope: !855)
!869 = !DILocation(line: 150, column: 18, scope: !855)
!870 = !DILocation(line: 150, column: 15, scope: !855)
!871 = !DILocation(line: 151, column: 47, scope: !855)
!872 = !DILocation(line: 151, column: 42, scope: !855)
!873 = !DILocation(line: 151, column: 40, scope: !855)
!874 = !DILocation(line: 151, column: 15, scope: !855)
!875 = !DILocation(line: 152, column: 5, scope: !855)
!876 = !DILocation(line: 148, column: 23, scope: !877)
!877 = !DILexicalBlockFile(scope: !851, file: !1, discriminator: 2)
!878 = !DILocation(line: 148, column: 5, scope: !877)
!879 = distinct !{!879, !880}
!880 = !DILocation(line: 148, column: 5, scope: !831)
!881 = !DILocation(line: 153, column: 19, scope: !831)
!882 = !DILocation(line: 153, column: 5, scope: !831)
!883 = !DILocation(line: 153, column: 13, scope: !831)
!884 = !DILocation(line: 153, column: 17, scope: !831)
!885 = !DILocation(line: 154, column: 19, scope: !831)
!886 = !DILocation(line: 154, column: 58, scope: !831)
!887 = !DILocation(line: 154, column: 66, scope: !831)
!888 = !DILocation(line: 154, column: 53, scope: !831)
!889 = !DILocation(line: 154, column: 51, scope: !831)
!890 = !DILocation(line: 154, column: 27, scope: !831)
!891 = !DILocation(line: 154, column: 5, scope: !831)
!892 = !DILocation(line: 154, column: 13, scope: !831)
!893 = !DILocation(line: 154, column: 17, scope: !831)
!894 = !DILocation(line: 155, column: 5, scope: !831)
!895 = !DILocation(line: 157, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !827, file: !1, line: 157, column: 11)
!897 = !DILocation(line: 157, column: 19, scope: !896)
!898 = !DILocation(line: 157, column: 11, scope: !827)
!899 = !DILocation(line: 158, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !1, line: 157, column: 35)
!901 = !DILocation(line: 158, column: 13, scope: !900)
!902 = !DILocation(line: 158, column: 17, scope: !900)
!903 = !DILocation(line: 159, column: 5, scope: !900)
!904 = !DILocation(line: 159, column: 13, scope: !900)
!905 = !DILocation(line: 159, column: 17, scope: !900)
!906 = !DILocation(line: 160, column: 12, scope: !900)
!907 = !DILocation(line: 160, column: 5, scope: !900)
!908 = !DILocation(line: 163, column: 5, scope: !909)
!909 = distinct !DILexicalBlock(scope: !896, file: !1, line: 162, column: 8)
!910 = !DILocation(line: 163, column: 13, scope: !909)
!911 = !DILocation(line: 163, column: 17, scope: !909)
!912 = !DILocation(line: 164, column: 5, scope: !909)
!913 = !DILocation(line: 164, column: 13, scope: !909)
!914 = !DILocation(line: 164, column: 17, scope: !909)
!915 = !DILocation(line: 165, column: 12, scope: !909)
!916 = !DILocation(line: 165, column: 5, scope: !909)
!917 = !DILocation(line: 167, column: 1, scope: !789)
!918 = distinct !DISubprogram(name: "laguerre_large_n", scope: !1, file: !1, line: 48, type: !335, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!919 = !DILocalVariable(name: "n", arg: 1, scope: !918, file: !1, line: 48, type: !337)
!920 = !DILocation(line: 48, column: 28, scope: !918)
!921 = !DILocalVariable(name: "alpha", arg: 2, scope: !918, file: !1, line: 48, type: !49)
!922 = !DILocation(line: 48, column: 44, scope: !918)
!923 = !DILocalVariable(name: "x", arg: 3, scope: !918, file: !1, line: 48, type: !49)
!924 = !DILocation(line: 48, column: 64, scope: !918)
!925 = !DILocalVariable(name: "result", arg: 4, scope: !918, file: !1, line: 49, type: !51)
!926 = !DILocation(line: 49, column: 34, scope: !918)
!927 = !DILocalVariable(name: "a", scope: !918, file: !1, line: 51, type: !49)
!928 = !DILocation(line: 51, column: 16, scope: !918)
!929 = !DILocation(line: 51, column: 21, scope: !918)
!930 = !DILocation(line: 51, column: 20, scope: !918)
!931 = !DILocalVariable(name: "b", scope: !918, file: !1, line: 52, type: !49)
!932 = !DILocation(line: 52, column: 16, scope: !918)
!933 = !DILocation(line: 52, column: 20, scope: !918)
!934 = !DILocation(line: 52, column: 26, scope: !918)
!935 = !DILocalVariable(name: "eta", scope: !918, file: !1, line: 53, type: !49)
!936 = !DILocation(line: 53, column: 16, scope: !918)
!937 = !DILocation(line: 53, column: 29, scope: !918)
!938 = !DILocation(line: 53, column: 28, scope: !918)
!939 = !DILocation(line: 53, column: 37, scope: !918)
!940 = !DILocation(line: 53, column: 36, scope: !918)
!941 = !DILocation(line: 53, column: 31, scope: !918)
!942 = !DILocalVariable(name: "cos2th", scope: !918, file: !1, line: 54, type: !49)
!943 = !DILocation(line: 54, column: 16, scope: !918)
!944 = !DILocation(line: 54, column: 25, scope: !918)
!945 = !DILocation(line: 54, column: 27, scope: !918)
!946 = !DILocation(line: 54, column: 26, scope: !918)
!947 = !DILocalVariable(name: "sin2th", scope: !918, file: !1, line: 55, type: !49)
!948 = !DILocation(line: 55, column: 16, scope: !918)
!949 = !DILocation(line: 55, column: 31, scope: !918)
!950 = !DILocation(line: 55, column: 29, scope: !918)
!951 = !DILocalVariable(name: "eps", scope: !918, file: !1, line: 56, type: !49)
!952 = !DILocation(line: 56, column: 16, scope: !918)
!953 = !DILocation(line: 56, column: 32, scope: !918)
!954 = !DILocation(line: 56, column: 27, scope: !918)
!955 = !DILocation(line: 56, column: 22, scope: !956)
!956 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!957 = !DILocalVariable(name: "pre_h", scope: !918, file: !1, line: 57, type: !49)
!958 = !DILocation(line: 57, column: 16, scope: !918)
!959 = !DILocation(line: 57, column: 40, scope: !918)
!960 = !DILocation(line: 57, column: 39, scope: !918)
!961 = !DILocation(line: 57, column: 44, scope: !918)
!962 = !DILocation(line: 57, column: 43, scope: !918)
!963 = !DILocation(line: 57, column: 48, scope: !918)
!964 = !DILocation(line: 57, column: 47, scope: !918)
!965 = !DILocation(line: 57, column: 55, scope: !918)
!966 = !DILocation(line: 57, column: 54, scope: !918)
!967 = !DILocalVariable(name: "lg_b", scope: !918, file: !1, line: 58, type: !52)
!968 = !DILocation(line: 58, column: 17, scope: !918)
!969 = !DILocalVariable(name: "lnfact", scope: !918, file: !1, line: 59, type: !52)
!970 = !DILocation(line: 59, column: 17, scope: !918)
!971 = !DILocalVariable(name: "stat_lg", scope: !918, file: !1, line: 60, type: !48)
!972 = !DILocation(line: 60, column: 7, scope: !918)
!973 = !DILocation(line: 60, column: 34, scope: !918)
!974 = !DILocation(line: 60, column: 36, scope: !918)
!975 = !DILocation(line: 60, column: 35, scope: !918)
!976 = !DILocation(line: 60, column: 17, scope: !918)
!977 = !DILocalVariable(name: "stat_lf", scope: !918, file: !1, line: 61, type: !48)
!978 = !DILocation(line: 61, column: 7, scope: !918)
!979 = !DILocation(line: 61, column: 33, scope: !918)
!980 = !DILocation(line: 61, column: 17, scope: !918)
!981 = !DILocalVariable(name: "pre_term1", scope: !918, file: !1, line: 62, type: !50)
!982 = !DILocation(line: 62, column: 10, scope: !918)
!983 = !DILocation(line: 62, column: 31, scope: !918)
!984 = !DILocation(line: 62, column: 30, scope: !918)
!985 = !DILocation(line: 62, column: 25, scope: !918)
!986 = !DILocation(line: 62, column: 43, scope: !918)
!987 = !DILocation(line: 62, column: 42, scope: !918)
!988 = !DILocation(line: 62, column: 45, scope: !918)
!989 = !DILocation(line: 62, column: 44, scope: !918)
!990 = !DILocation(line: 62, column: 34, scope: !918)
!991 = !DILocation(line: 62, column: 33, scope: !918)
!992 = !DILocalVariable(name: "pre_term2", scope: !918, file: !1, line: 63, type: !50)
!993 = !DILocation(line: 63, column: 10, scope: !918)
!994 = !DILocation(line: 63, column: 31, scope: !918)
!995 = !DILocation(line: 63, column: 27, scope: !918)
!996 = !DILocation(line: 63, column: 26, scope: !918)
!997 = !DILocalVariable(name: "lnpre_val", scope: !918, file: !1, line: 64, type: !50)
!998 = !DILocation(line: 64, column: 10, scope: !918)
!999 = !DILocation(line: 64, column: 27, scope: !918)
!1000 = !DILocation(line: 64, column: 40, scope: !918)
!1001 = !DILocation(line: 64, column: 31, scope: !918)
!1002 = !DILocation(line: 64, column: 50, scope: !918)
!1003 = !DILocation(line: 64, column: 49, scope: !918)
!1004 = !DILocation(line: 64, column: 44, scope: !918)
!1005 = !DILocation(line: 64, column: 54, scope: !918)
!1006 = !DILocation(line: 64, column: 52, scope: !918)
!1007 = !DILocation(line: 64, column: 66, scope: !918)
!1008 = !DILocation(line: 64, column: 64, scope: !918)
!1009 = !DILocalVariable(name: "lnpre_err", scope: !918, file: !1, line: 65, type: !50)
!1010 = !DILocation(line: 65, column: 10, scope: !918)
!1011 = !DILocation(line: 65, column: 27, scope: !918)
!1012 = !DILocation(line: 65, column: 40, scope: !918)
!1013 = !DILocation(line: 65, column: 31, scope: !918)
!1014 = !DILocation(line: 65, column: 70, scope: !918)
!1015 = !DILocation(line: 65, column: 65, scope: !918)
!1016 = !DILocation(line: 65, column: 86, scope: !918)
!1017 = !DILocation(line: 65, column: 81, scope: !956)
!1018 = !DILocation(line: 65, column: 80, scope: !918)
!1019 = !DILocation(line: 65, column: 62, scope: !918)
!1020 = !DILocation(line: 65, column: 44, scope: !918)
!1021 = !DILocalVariable(name: "phi1", scope: !918, file: !1, line: 67, type: !50)
!1022 = !DILocation(line: 67, column: 10, scope: !918)
!1023 = !DILocation(line: 67, column: 22, scope: !918)
!1024 = !DILocation(line: 67, column: 21, scope: !918)
!1025 = !DILocation(line: 67, column: 29, scope: !918)
!1026 = !DILocation(line: 67, column: 28, scope: !918)
!1027 = !DILocation(line: 67, column: 43, scope: !918)
!1028 = !DILocation(line: 67, column: 42, scope: !918)
!1029 = !DILocation(line: 67, column: 35, scope: !918)
!1030 = !DILocation(line: 67, column: 33, scope: !918)
!1031 = !DILocation(line: 67, column: 25, scope: !918)
!1032 = !DILocalVariable(name: "ser_term1", scope: !918, file: !1, line: 68, type: !50)
!1033 = !DILocation(line: 68, column: 10, scope: !918)
!1034 = !DILocation(line: 68, column: 27, scope: !918)
!1035 = !DILocation(line: 68, column: 23, scope: !918)
!1036 = !DILocation(line: 68, column: 22, scope: !918)
!1037 = !DILocalVariable(name: "A1", scope: !918, file: !1, line: 70, type: !50)
!1038 = !DILocation(line: 70, column: 10, scope: !918)
!1039 = !DILocation(line: 70, column: 36, scope: !918)
!1040 = !DILocation(line: 70, column: 35, scope: !918)
!1041 = !DILocation(line: 70, column: 30, scope: !918)
!1042 = !DILocation(line: 70, column: 49, scope: !918)
!1043 = !DILocation(line: 70, column: 48, scope: !918)
!1044 = !DILocation(line: 70, column: 51, scope: !918)
!1045 = !DILocation(line: 70, column: 50, scope: !918)
!1046 = !DILocation(line: 70, column: 57, scope: !918)
!1047 = !DILocation(line: 70, column: 56, scope: !918)
!1048 = !DILocation(line: 70, column: 52, scope: !918)
!1049 = !DILocation(line: 70, column: 58, scope: !918)
!1050 = !DILocation(line: 70, column: 64, scope: !918)
!1051 = !DILocation(line: 70, column: 63, scope: !918)
!1052 = !DILocation(line: 70, column: 43, scope: !918)
!1053 = !DILocation(line: 70, column: 71, scope: !918)
!1054 = !DILocation(line: 70, column: 25, scope: !918)
!1055 = !DILocalVariable(name: "ser_term2", scope: !918, file: !1, line: 71, type: !50)
!1056 = !DILocation(line: 71, column: 10, scope: !918)
!1057 = !DILocation(line: 71, column: 23, scope: !918)
!1058 = !DILocation(line: 71, column: 22, scope: !918)
!1059 = !DILocation(line: 71, column: 32, scope: !918)
!1060 = !DILocation(line: 71, column: 28, scope: !918)
!1061 = !DILocation(line: 71, column: 26, scope: !918)
!1062 = !DILocation(line: 71, column: 44, scope: !918)
!1063 = !DILocation(line: 71, column: 43, scope: !918)
!1064 = !DILocation(line: 71, column: 56, scope: !918)
!1065 = !DILocation(line: 71, column: 55, scope: !918)
!1066 = !DILocation(line: 71, column: 48, scope: !956)
!1067 = !DILocation(line: 71, column: 47, scope: !918)
!1068 = !DILocation(line: 71, column: 37, scope: !918)
!1069 = !DILocalVariable(name: "ser_val", scope: !918, file: !1, line: 73, type: !50)
!1070 = !DILocation(line: 73, column: 10, scope: !918)
!1071 = !DILocation(line: 73, column: 20, scope: !918)
!1072 = !DILocation(line: 73, column: 32, scope: !918)
!1073 = !DILocation(line: 73, column: 30, scope: !918)
!1074 = !DILocalVariable(name: "ser_err", scope: !918, file: !1, line: 74, type: !50)
!1075 = !DILocation(line: 74, column: 10, scope: !918)
!1076 = !DILocation(line: 74, column: 20, scope: !918)
!1077 = !DILocation(line: 74, column: 30, scope: !918)
!1078 = !DILocation(line: 74, column: 29, scope: !918)
!1079 = !DILocation(line: 74, column: 66, scope: !918)
!1080 = !DILocation(line: 74, column: 61, scope: !918)
!1081 = !DILocation(line: 74, column: 84, scope: !918)
!1082 = !DILocation(line: 74, column: 79, scope: !956)
!1083 = !DILocation(line: 74, column: 77, scope: !918)
!1084 = !DILocation(line: 74, column: 58, scope: !918)
!1085 = !DILocation(line: 74, column: 40, scope: !918)
!1086 = !DILocalVariable(name: "stat_e", scope: !918, file: !1, line: 75, type: !48)
!1087 = !DILocation(line: 75, column: 7, scope: !918)
!1088 = !DILocation(line: 75, column: 38, scope: !918)
!1089 = !DILocation(line: 75, column: 49, scope: !918)
!1090 = !DILocation(line: 75, column: 60, scope: !918)
!1091 = !DILocation(line: 75, column: 69, scope: !918)
!1092 = !DILocation(line: 75, column: 78, scope: !918)
!1093 = !DILocation(line: 75, column: 16, scope: !918)
!1094 = !DILocation(line: 76, column: 52, scope: !918)
!1095 = !DILocation(line: 76, column: 60, scope: !918)
!1096 = !DILocation(line: 76, column: 47, scope: !918)
!1097 = !DILocation(line: 76, column: 45, scope: !918)
!1098 = !DILocation(line: 76, column: 3, scope: !918)
!1099 = !DILocation(line: 76, column: 11, scope: !918)
!1100 = !DILocation(line: 76, column: 15, scope: !918)
!1101 = !DILocation(line: 77, column: 10, scope: !918)
!1102 = !DILocation(line: 77, column: 10, scope: !956)
!1103 = !DILocation(line: 77, column: 10, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 2)
!1105 = !DILocation(line: 77, column: 10, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 3)
!1107 = !DILocation(line: 77, column: 10, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 4)
!1109 = !DILocation(line: 77, column: 10, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 5)
!1111 = !DILocation(line: 77, column: 10, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 6)
!1113 = !DILocation(line: 77, column: 10, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 7)
!1115 = !DILocation(line: 77, column: 10, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 8)
!1117 = !DILocation(line: 77, column: 10, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 9)
!1119 = !DILocation(line: 77, column: 3, scope: !1118)
!1120 = distinct !DISubprogram(name: "gsl_sf_laguerre_1", scope: !1, file: !1, line: 317, type: !1121, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!50, !50, !50}
!1123 = !DILocalVariable(name: "a", arg: 1, scope: !1120, file: !1, line: 317, type: !50)
!1124 = !DILocation(line: 317, column: 33, scope: !1120)
!1125 = !DILocalVariable(name: "x", arg: 2, scope: !1120, file: !1, line: 317, type: !50)
!1126 = !DILocation(line: 317, column: 43, scope: !1120)
!1127 = !DILocalVariable(name: "result", scope: !1120, file: !1, line: 319, type: !52)
!1128 = !DILocation(line: 319, column: 3, scope: !1120)
!1129 = !DILocalVariable(name: "status", scope: !1120, file: !1, line: 319, type: !48)
!1130 = !DILocation(line: 319, column: 3, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 319, column: 3)
!1132 = !DILocation(line: 319, column: 3, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1134, file: !1, discriminator: 1)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 319, column: 3)
!1135 = distinct !{!1135, !1136}
!1136 = !DILocation(line: 319, column: 3, scope: !1134)
!1137 = !DILocation(line: 319, column: 3, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !1, discriminator: 2)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 319, column: 3)
!1140 = !DILocation(line: 319, column: 3, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1134, file: !1, discriminator: 3)
!1142 = !DILocation(line: 319, column: 3, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1120, file: !1, discriminator: 4)
!1144 = !DILocation(line: 320, column: 1, scope: !1120)
!1145 = distinct !DISubprogram(name: "gsl_sf_laguerre_2", scope: !1, file: !1, line: 322, type: !1121, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1146 = !DILocalVariable(name: "a", arg: 1, scope: !1145, file: !1, line: 322, type: !50)
!1147 = !DILocation(line: 322, column: 33, scope: !1145)
!1148 = !DILocalVariable(name: "x", arg: 2, scope: !1145, file: !1, line: 322, type: !50)
!1149 = !DILocation(line: 322, column: 43, scope: !1145)
!1150 = !DILocalVariable(name: "result", scope: !1145, file: !1, line: 324, type: !52)
!1151 = !DILocation(line: 324, column: 3, scope: !1145)
!1152 = !DILocalVariable(name: "status", scope: !1145, file: !1, line: 324, type: !48)
!1153 = !DILocation(line: 324, column: 3, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 324, column: 3)
!1155 = !DILocation(line: 324, column: 3, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 1)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 324, column: 3)
!1158 = distinct !{!1158, !1159}
!1159 = !DILocation(line: 324, column: 3, scope: !1157)
!1160 = !DILocation(line: 324, column: 3, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 2)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 324, column: 3)
!1163 = !DILocation(line: 324, column: 3, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1157, file: !1, discriminator: 3)
!1165 = !DILocation(line: 324, column: 3, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1145, file: !1, discriminator: 4)
!1167 = !DILocation(line: 325, column: 1, scope: !1145)
!1168 = distinct !DISubprogram(name: "gsl_sf_laguerre_3", scope: !1, file: !1, line: 327, type: !1121, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1169 = !DILocalVariable(name: "a", arg: 1, scope: !1168, file: !1, line: 327, type: !50)
!1170 = !DILocation(line: 327, column: 33, scope: !1168)
!1171 = !DILocalVariable(name: "x", arg: 2, scope: !1168, file: !1, line: 327, type: !50)
!1172 = !DILocation(line: 327, column: 43, scope: !1168)
!1173 = !DILocalVariable(name: "result", scope: !1168, file: !1, line: 329, type: !52)
!1174 = !DILocation(line: 329, column: 3, scope: !1168)
!1175 = !DILocalVariable(name: "status", scope: !1168, file: !1, line: 329, type: !48)
!1176 = !DILocation(line: 329, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 329, column: 3)
!1178 = !DILocation(line: 329, column: 3, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 1)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 329, column: 3)
!1181 = distinct !{!1181, !1182}
!1182 = !DILocation(line: 329, column: 3, scope: !1180)
!1183 = !DILocation(line: 329, column: 3, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 2)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 329, column: 3)
!1186 = !DILocation(line: 329, column: 3, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 3)
!1188 = !DILocation(line: 329, column: 3, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1168, file: !1, discriminator: 4)
!1190 = !DILocation(line: 330, column: 1, scope: !1168)
!1191 = distinct !DISubprogram(name: "gsl_sf_laguerre_n", scope: !1, file: !1, line: 332, type: !1192, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!50, !48, !50, !50}
!1194 = !DILocalVariable(name: "n", arg: 1, scope: !1191, file: !1, line: 332, type: !48)
!1195 = !DILocation(line: 332, column: 30, scope: !1191)
!1196 = !DILocalVariable(name: "a", arg: 2, scope: !1191, file: !1, line: 332, type: !50)
!1197 = !DILocation(line: 332, column: 40, scope: !1191)
!1198 = !DILocalVariable(name: "x", arg: 3, scope: !1191, file: !1, line: 332, type: !50)
!1199 = !DILocation(line: 332, column: 50, scope: !1191)
!1200 = !DILocalVariable(name: "result", scope: !1191, file: !1, line: 334, type: !52)
!1201 = !DILocation(line: 334, column: 3, scope: !1191)
!1202 = !DILocalVariable(name: "status", scope: !1191, file: !1, line: 334, type: !48)
!1203 = !DILocation(line: 334, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 334, column: 3)
!1205 = !DILocation(line: 334, column: 3, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !1, discriminator: 1)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 334, column: 3)
!1208 = distinct !{!1208, !1209}
!1209 = !DILocation(line: 334, column: 3, scope: !1207)
!1210 = !DILocation(line: 334, column: 3, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1212, file: !1, discriminator: 2)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 334, column: 3)
!1213 = !DILocation(line: 334, column: 3, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1207, file: !1, discriminator: 3)
!1215 = !DILocation(line: 334, column: 3, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1191, file: !1, discriminator: 4)
!1217 = !DILocation(line: 335, column: 1, scope: !1191)
